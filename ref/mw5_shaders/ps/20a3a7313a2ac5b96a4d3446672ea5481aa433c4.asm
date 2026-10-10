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
; shader hash: 1fe602144218c4c2f561695dc7d1834d
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
  %356 = add i32 %33, 472
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
  br i1 %409, label %897, label %410

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
  %857 = and i32 %856, 26624
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %882, label %859

; <label>:859                                     ; preds = %851
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 16384
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %882, label %864

; <label>:864                                     ; preds = %859
  %865 = and i32 %861, 1048576
  %866 = icmp ne i32 %865, 0
  %867 = add i32 %33, 456
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = add i32 %869, 0
  %871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %871, %dx.types.Handle %65, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = add i32 %33, 96
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = lshr i32 %876, 24
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %873, 0x3F70101020000000
  %880 = select i1 %866, float 0x3F70101020000000, float %879
  %881 = fmul fast float %880, %878
  br label %882

; <label>:882                                     ; preds = %864, %859, %851
  %883 = phi float [ %881, %864 ], [ 0.000000e+00, %859 ], [ 0.000000e+00, %851 ]
  %884 = add i32 %33, 96
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = lshr i32 %886, 8
  %890 = and i32 %889, 255
  %891 = uitofp i32 %890 to float
  %892 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float %726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %893 = fmul fast float %891, %892
  %894 = fadd fast float %893, %888
  %895 = fmul fast float %894, 0x3F70101020000000
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  br label %897

; <label>:897                                     ; preds = %882, %395
  %898 = phi float [ 0.000000e+00, %395 ], [ %805, %882 ]
  %899 = phi float [ 0.000000e+00, %395 ], [ %806, %882 ]
  %900 = phi float [ 0.000000e+00, %395 ], [ %724, %882 ]
  %901 = phi float [ 0.000000e+00, %395 ], [ %725, %882 ]
  %902 = phi float [ 0.000000e+00, %395 ], [ %726, %882 ]
  %903 = phi float [ 0.000000e+00, %395 ], [ %852, %882 ]
  %904 = phi float [ 0.000000e+00, %395 ], [ %853, %882 ]
  %905 = phi float [ 0.000000e+00, %395 ], [ %854, %882 ]
  %906 = phi float [ 0.000000e+00, %395 ], [ %710, %882 ]
  %907 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %882 ]
  %908 = phi float [ 0.000000e+00, %395 ], [ %804, %882 ]
  %909 = phi float [ 0.000000e+00, %395 ], [ %807, %882 ]
  %910 = phi float [ 0.000000e+00, %395 ], [ %883, %882 ]
  %911 = phi float [ 0.000000e+00, %395 ], [ %896, %882 ]
  br i1 %346, label %1792, label %912

; <label>:912                                     ; preds = %897
  %913 = icmp ult i32 %401, 2
  %914 = add i32 %33, 40
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %33, 44
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = or i32 %919, %916
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %1792, label %922

; <label>:922                                     ; preds = %912
  %923 = and i32 %916, 262144
  %924 = icmp ne i32 %923, 0
  %925 = select i1 %924, float %36, float 1.000000e+00
  %926 = select i1 %924, float %37, float 0.000000e+00
  %927 = select i1 %924, float %38, float 0.000000e+00
  %928 = select i1 %924, float %39, float 1.000000e+00
  %929 = select i1 %924, float %40, float %56
  %930 = select i1 %924, float %41, float %57
  %931 = add i32 %33, 300
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 16
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %934)  ; LegacyF16ToF32(value)
  %936 = fmul fast float %935, 0x3F50624DE0000000
  %937 = add i32 %33, 104
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = lshr i32 %939, 16
  %941 = and i32 %940, 255
  %942 = lshr i32 %939, 24
  %943 = add i32 %33, 308
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = and i32 %945, 65535
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = lshr i32 %945, 16
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = add i32 %33, 48
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = lshr i32 %952, 22
  %954 = shl nuw nsw i32 %953, 5
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = shl i32 %952, 4
  %957 = and i32 %956, 32752
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = lshr i32 %952, 7
  %960 = and i32 %959, 32752
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %963 = extractvalue %dx.types.CBufRet.f32 %962, 3
  %964 = fmul fast float %963, 1.000000e+03
  %965 = fmul fast float %256, %964
  %966 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %967 = fadd fast float %966, %246
  %968 = fmul fast float %257, %964
  %969 = call float @dx.op.unary.f32(i32 22, float %968)  ; Frc(value)
  %970 = fadd fast float %969, %248
  %971 = fmul fast float %936, %964
  %972 = call float @dx.op.unary.f32(i32 22, float %971)  ; Frc(value)
  %973 = fmul fast float %972, 0x401921FB60000000
  %974 = fadd fast float %973, %955
  %975 = call float @dx.op.unary.f32(i32 13, float %974)  ; Sin(value)
  %976 = call float @dx.op.unary.f32(i32 12, float %974)  ; Cos(value)
  %977 = fsub fast float -0.000000e+00, %975
  %978 = fadd fast float %929, -5.000000e-01
  %979 = fadd fast float %930, -5.000000e-01
  %980 = fmul fast float %947, %978
  %981 = fmul fast float %949, %979
  %982 = fadd fast float %980, 5.000000e-01
  %983 = fadd fast float %981, 5.000000e-01
  %984 = fmul fast float %958, %982
  %985 = fmul fast float %961, %983
  %986 = fmul fast float %976, %984
  %987 = call float @dx.op.tertiary.f32(i32 46, float %977, float %985, float %986)  ; FMad(a,b,c)
  %988 = fmul fast float %975, %984
  %989 = call float @dx.op.tertiary.f32(i32 46, float %976, float %985, float %988)  ; FMad(a,b,c)
  %990 = fadd fast float %967, %987
  %991 = fadd fast float %970, %989
  %992 = icmp ugt i32 %941, 1
  %993 = icmp ugt i32 %939, 33554431
  %994 = or i1 %993, %992
  br i1 %994, label %995, label %1020

; <label>:995                                     ; preds = %922
  %996 = add i32 %33, 244
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = lshr i32 %998, 16
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = fmul fast float %963, %1000
  %1002 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1003 = mul nuw nsw i32 %941, %942
  %1004 = uitofp i32 %1003 to float
  %1005 = fmul fast float %1002, %1004
  %1006 = call float @dx.op.unary.f32(i32 27, float %1005)  ; Round_ni(value)
  %1007 = fptoui float %1006 to i32
  %1008 = urem i32 %1007, %941
  %1009 = udiv i32 %1007, %942
  %1010 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %1011 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %1012 = uitofp i32 %1008 to float
  %1013 = uitofp i32 %1009 to float
  %1014 = fadd fast float %1010, %1012
  %1015 = fadd fast float %1011, %1013
  %1016 = uitofp i32 %941 to float
  %1017 = uitofp i32 %942 to float
  %1018 = fdiv fast float %1014, %1016
  %1019 = fdiv fast float %1015, %1017
  br label %1020

; <label>:1020                                    ; preds = %995, %922
  %1021 = phi float [ %1018, %995 ], [ %990, %922 ]
  %1022 = phi float [ %1019, %995 ], [ %991, %922 ]
  %1023 = and i32 %916, 16777216
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1134, label %1025

; <label>:1025                                    ; preds = %1020
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1029 = extractvalue %dx.types.CBufRet.f32 %1026, 2
  %1030 = fadd fast float %1027, %131
  %1031 = fadd fast float %1028, %132
  %1032 = fadd fast float %1029, %133
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = call float @dx.op.unary.f32(i32 7, float %1034)  ; Saturate(value)
  %1036 = icmp eq i32 %34, 65535
  br i1 %1036, label %1131, label %1037

; <label>:1037                                    ; preds = %1025
  %1038 = lshr i32 %34, 1
  %1039 = shl i32 %1038, 2
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = and i32 %34, 1
  %1043 = icmp ne i32 %1042, 0
  %1044 = lshr i32 %1041, 16
  %1045 = and i32 %1041, 65535
  %1046 = select i1 %1043, i32 %1044, i32 %1045
  %1047 = icmp eq i32 %1046, 65535
  br i1 %1047, label %1127, label %1048

; <label>:1048                                    ; preds = %1037
  %1049 = mul nuw nsw i32 %1046, 40
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = add nuw nsw i32 %1049, 12
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.ResRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.ResRet.f32 %1055, 2
  %1059 = add nuw nsw i32 %1049, 24
  %1060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = add nuw nsw i32 %1049, 36
  %1065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = fsub fast float %1030, %1051
  %1068 = fsub fast float %1031, %1052
  %1069 = fsub fast float %1032, %1053
  %1070 = fmul fast float %1066, %1067
  %1071 = fmul fast float %1066, %1068
  %1072 = fmul fast float %1066, %1069
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1076 = fadd fast float %1073, 5.000000e-01
  %1077 = fadd fast float %1074, 5.000000e-01
  %1078 = fadd fast float %1075, 5.000000e-01
  %1079 = fmul fast float %1076, %1056
  %1080 = fmul fast float %1077, %1057
  %1081 = fmul fast float %1078, %1058
  %1082 = shl i32 %34, 2
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call float @dx.op.unary.f32(i32 22, float %1079)  ; Frc(value)
  %1088 = call float @dx.op.unary.f32(i32 22, float %1080)  ; Frc(value)
  %1089 = call float @dx.op.unary.f32(i32 22, float %1081)  ; Frc(value)
  %1090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1086, %dx.types.Handle %30, float %1087, float %1088, float %1089, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = fmul fast float %1091, 1.023000e+03
  %1095 = fmul fast float %1092, 1.023000e+03
  %1096 = fmul fast float %1093, 1.023000e+03
  %1097 = fadd fast float %1094, 5.000000e-01
  %1098 = fadd fast float %1095, 5.000000e-01
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = fsub fast float %1070, %1073
  %1104 = fsub fast float %1071, %1074
  %1105 = fsub fast float %1072, %1075
  %1106 = fmul fast float %1103, 7.500000e-01
  %1107 = fmul fast float %1104, 7.500000e-01
  %1108 = fmul fast float %1105, 7.500000e-01
  %1109 = fadd fast float %1073, 1.250000e-01
  %1110 = fadd fast float %1109, %1106
  %1111 = fadd fast float %1110, %1100
  %1112 = fadd fast float %1074, 1.250000e-01
  %1113 = fadd fast float %1112, %1107
  %1114 = fadd fast float %1113, %1101
  %1115 = fadd fast float %1075, 1.250000e-01
  %1116 = fadd fast float %1115, %1108
  %1117 = fadd fast float %1116, %1102
  %1118 = fmul fast float %1111, %1061
  %1119 = fmul fast float %1114, %1062
  %1120 = fmul fast float %1117, %1063
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1124, %dx.types.Handle %28, float %1118, float %1119, float %1120, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  br label %1127

; <label>:1127                                    ; preds = %1048, %1037
  %1128 = phi float [ %1126, %1048 ], [ -1.000000e+00, %1037 ]
  %1129 = fadd fast float %1128, %1035
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  br label %1131

; <label>:1131                                    ; preds = %1127, %1025
  %1132 = phi float [ %1130, %1127 ], [ %1035, %1025 ]
  %1133 = fmul fast float %1132, %398
  br label %1134

; <label>:1134                                    ; preds = %1131, %1020
  %1135 = phi float [ %1133, %1131 ], [ %398, %1020 ]
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = and i32 %1137, 256
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1186, label %1140

; <label>:1140                                    ; preds = %1134
  %1141 = add i32 %33, 428
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %1143, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1145, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = add i32 %33, 116
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = shl i32 %1150, 4
  %1152 = and i32 %1151, 32752
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = lshr i32 %1150, 7
  %1155 = and i32 %1154, 32752
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = fsub fast float 1.000000e+00, %1135
  %1158 = call float @dx.op.binary.f32(i32 35, float %1157, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1159 = bitcast float %1135 to i32
  %1160 = sitofp i32 %1159 to float
  %1161 = fadd fast float %1160, 0xC1CFBF8940000000
  %1162 = fmul fast float %1156, %1161
  %1163 = fadd fast float %1162, 0x41CFBF8940000000
  %1164 = fptosi float %1163 to i32
  %1165 = bitcast i32 %1164 to float
  %1166 = bitcast float %1158 to i32
  %1167 = sitofp i32 %1166 to float
  %1168 = fadd fast float %1167, 0xC1CFBF8940000000
  %1169 = fmul fast float %1168, %1156
  %1170 = fadd fast float %1169, 0x41CFBF8940000000
  %1171 = fptosi float %1170 to i32
  %1172 = bitcast i32 %1171 to float
  %1173 = fmul fast float %1165, %1153
  %1174 = fmul fast float %1172, %1153
  %1175 = fsub fast float %1158, %1173
  %1176 = fadd fast float %1174, %1158
  %1177 = call float @dx.op.unary.f32(i32 7, float %1175)  ; Saturate(value)
  %1178 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  %1179 = fsub fast float %1147, %1177
  %1180 = fsub fast float %1178, %1177
  %1181 = bitcast float %1180 to i32
  %1182 = sub nsw i32 2129859010, %1181
  %1183 = bitcast i32 %1182 to float
  %1184 = fmul fast float %1183, %1179
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  br label %1186

; <label>:1186                                    ; preds = %1140, %1134
  %1187 = phi float [ %1185, %1140 ], [ %1135, %1134 ]
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = and i32 %1189, 128
  %1191 = icmp eq i32 %1190, 0
  br i1 %1191, label %1208, label %1192

; <label>:1192                                    ; preds = %1186
  %1193 = add i32 %33, 412
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = add i32 %1195, 0
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1197, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = and i32 %1201, 524288
  %1203 = icmp ne i32 %1202, 0
  %1204 = fcmp fast ogt float %1199, 0x3FE0101020000000
  %1205 = select i1 %1204, float 1.000000e+00, float 0.000000e+00
  %1206 = select i1 %1203, float %1205, float %1199
  %1207 = fmul fast float %1206, %1187
  br label %1208

; <label>:1208                                    ; preds = %1192, %1186
  %1209 = phi float [ %1207, %1192 ], [ %1187, %1186 ]
  %1210 = fcmp fast ult float %1209, 0x3F70101020000000
  br i1 %1210, label %1792, label %1211

; <label>:1211                                    ; preds = %1208
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 16
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1414, label %1216

; <label>:1216                                    ; preds = %1211
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %33, 364
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = add i32 %1221, 0
  %1223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1223, %dx.types.Handle %64, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.ResRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.ResRet.f32 %1224, 2
  %1228 = extractvalue %dx.types.ResRet.f32 %1224, 3
  %1229 = and i32 %1218, 255
  %1230 = uitofp i32 %1229 to float
  %1231 = lshr i32 %1218, 8
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1228, %1230
  %1235 = fadd fast float %1234, %1233
  %1236 = fmul fast float %1235, 0x3F70101000000000
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 512
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1249, label %1241

; <label>:1241                                    ; preds = %1216
  %1242 = add i32 %33, 444
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %1244, 0
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1246, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  br label %1249

; <label>:1249                                    ; preds = %1241, %1216
  %1250 = phi float [ %1248, %1241 ], [ 1.000000e+00, %1216 ]
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = and i32 %1252, 33554432
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1361, label %1255

; <label>:1255                                    ; preds = %1249
  %1256 = add i32 %33, 240
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 65535
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = lshr i32 %1258, 16
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = add i32 %33, 244
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 65535
  %1267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1266)  ; LegacyF16ToF32(value)
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = lshr i32 %1269, 24
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F70101020000000
  %1273 = and i32 %1269, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101020000000
  %1276 = lshr i32 %1269, 8
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1278, 0x3F70101020000000
  %1280 = lshr i32 %1269, 16
  %1281 = and i32 %1280, 255
  %1282 = uitofp i32 %1281 to float
  %1283 = fmul fast float %1282, 0x3F70101020000000
  %1284 = add i32 %33, 236
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = lshr i32 %1286, 24
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1288, 0x3F70101020000000
  %1290 = and i32 %1286, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = lshr i32 %1286, 8
  %1294 = and i32 %1293, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = lshr i32 %1286, 16
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = bitcast float %1225 to i32
  %1302 = ashr i32 %1301, 1
  %1303 = sub nsw i32 1597463174, %1302
  %1304 = bitcast i32 %1303 to float
  %1305 = fmul fast float %1225, 5.000000e-01
  %1306 = fmul fast float %1304, %1304
  %1307 = fmul fast float %1306, %1305
  %1308 = fsub fast float 1.500000e+00, %1307
  %1309 = fmul fast float %1304, %1225
  %1310 = fmul fast float %1309, %1308
  %1311 = bitcast float %1226 to i32
  %1312 = ashr i32 %1311, 1
  %1313 = sub nsw i32 1597463174, %1312
  %1314 = bitcast i32 %1313 to float
  %1315 = fmul fast float %1226, 5.000000e-01
  %1316 = fmul fast float %1314, %1314
  %1317 = fmul fast float %1316, %1315
  %1318 = fsub fast float 1.500000e+00, %1317
  %1319 = fmul fast float %1314, %1226
  %1320 = fmul fast float %1319, %1318
  %1321 = bitcast float %1227 to i32
  %1322 = ashr i32 %1321, 1
  %1323 = sub nsw i32 1597463174, %1322
  %1324 = bitcast i32 %1323 to float
  %1325 = fmul fast float %1227, 5.000000e-01
  %1326 = fmul fast float %1324, %1324
  %1327 = fmul fast float %1326, %1325
  %1328 = fsub fast float 1.500000e+00, %1327
  %1329 = fmul fast float %1324, %1227
  %1330 = fmul fast float %1329, %1328
  %1331 = fsub fast float %1310, %1292
  %1332 = fsub fast float %1320, %1296
  %1333 = fsub fast float %1330, %1300
  %1334 = fmul fast float %1331, %1260
  %1335 = fmul fast float %1332, %1262
  %1336 = fmul fast float %1333, %1267
  %1337 = fadd fast float %1334, %1275
  %1338 = fadd fast float %1335, %1279
  %1339 = fadd fast float %1336, %1283
  %1340 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1341 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  %1342 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1343 = fmul fast float %1340, %1340
  %1344 = fmul fast float %1341, %1341
  %1345 = fmul fast float %1342, %1342
  %1346 = fsub fast float %1343, %1225
  %1347 = fsub fast float %1344, %1226
  %1348 = fsub fast float %1345, %1227
  %1349 = fmul fast float %1346, %1250
  %1350 = fmul fast float %1347, %1250
  %1351 = fmul fast float %1348, %1250
  %1352 = fadd fast float %1349, %1225
  %1353 = fadd fast float %1350, %1226
  %1354 = fadd fast float %1351, %1227
  %1355 = fadd fast float %1272, %1236
  %1356 = fsub fast float %1355, %1289
  %1357 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1358 = fsub fast float %1357, %1236
  %1359 = fmul fast float %1358, %1250
  %1360 = fadd fast float %1359, %1236
  br label %1414

; <label>:1361                                    ; preds = %1249
  %1362 = and i32 %1252, 134217728
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1398, label %1364

; <label>:1364                                    ; preds = %1361
  %1365 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1366 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1367 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1368 = fadd fast float %1365, -5.000000e-01
  %1369 = fadd fast float %1366, -5.000000e-01
  %1370 = fadd fast float %1367, -5.000000e-01
  %1371 = fmul fast float %1368, %1250
  %1372 = fmul fast float %1369, %1250
  %1373 = fmul fast float %1370, %1250
  %1374 = fadd fast float %1371, 5.000000e-01
  %1375 = fadd fast float %1372, 5.000000e-01
  %1376 = fadd fast float %1373, 5.000000e-01
  %1377 = call float @dx.op.unary.f32(i32 24, float %1225)  ; Sqrt(value)
  %1378 = call float @dx.op.unary.f32(i32 24, float %1226)  ; Sqrt(value)
  %1379 = call float @dx.op.unary.f32(i32 24, float %1227)  ; Sqrt(value)
  %1380 = fmul fast float %1374, 2.000000e+00
  %1381 = fsub fast float 1.000000e+00, %1380
  %1382 = fmul fast float %1381, %1377
  %1383 = fadd fast float %1382, %1380
  %1384 = fmul fast float %1383, %1377
  %1385 = fmul fast float %1375, 2.000000e+00
  %1386 = fsub fast float 1.000000e+00, %1385
  %1387 = fmul fast float %1386, %1378
  %1388 = fadd fast float %1387, %1385
  %1389 = fmul fast float %1388, %1378
  %1390 = fmul fast float %1376, 2.000000e+00
  %1391 = fsub fast float 1.000000e+00, %1390
  %1392 = fmul fast float %1391, %1379
  %1393 = fadd fast float %1392, %1390
  %1394 = fmul fast float %1393, %1379
  %1395 = fmul fast float %1384, %1384
  %1396 = fmul fast float %1389, %1389
  %1397 = fmul fast float %1394, %1394
  br label %1414

; <label>:1398                                    ; preds = %1361
  %1399 = fmul fast float %233, %233
  %1400 = fmul fast float %237, %237
  %1401 = fmul fast float %241, %241
  %1402 = fadd fast float %1399, -1.000000e+00
  %1403 = fadd fast float %1400, -1.000000e+00
  %1404 = fadd fast float %1401, -1.000000e+00
  %1405 = fmul fast float %1250, %1402
  %1406 = fmul fast float %1250, %1403
  %1407 = fmul fast float %1250, %1404
  %1408 = fadd fast float %1405, 1.000000e+00
  %1409 = fadd fast float %1406, 1.000000e+00
  %1410 = fadd fast float %1407, 1.000000e+00
  %1411 = fmul fast float %1408, %1225
  %1412 = fmul fast float %1409, %1226
  %1413 = fmul fast float %1410, %1227
  br label %1414

; <label>:1414                                    ; preds = %1398, %1364, %1255, %1211
  %1415 = phi float [ %1360, %1255 ], [ %1236, %1364 ], [ %1236, %1398 ], [ 0x3FA23C0BE0000000, %1211 ]
  %1416 = phi float [ %1352, %1255 ], [ %1395, %1364 ], [ %1411, %1398 ], [ 1.000000e+00, %1211 ]
  %1417 = phi float [ %1353, %1255 ], [ %1396, %1364 ], [ %1412, %1398 ], [ 1.000000e+00, %1211 ]
  %1418 = phi float [ %1354, %1255 ], [ %1397, %1364 ], [ %1413, %1398 ], [ 1.000000e+00, %1211 ]
  %1419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1420 = extractvalue %dx.types.CBufRet.i32 %1419, 1
  %1421 = and i32 %1420, 1
  %1422 = icmp ne i32 %1421, 0
  %1423 = add i32 %33, 356
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 32
  %1427 = icmp ne i32 %1426, 0
  %1428 = and i1 %1422, %1427
  %1429 = select i1 %1428, float 1.000000e+00, float %1416
  %1430 = select i1 %1428, float 0x3FD3333340000000, float %1417
  %1431 = select i1 %1428, float 0x3FD3333340000000, float %1418
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 32
  %1435 = icmp eq i32 %1434, 0
  br i1 %1435, label %1508, label %1436

; <label>:1436                                    ; preds = %1414
  %1437 = add i32 %33, 108
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = add i32 %33, 380
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %1442, 0
  %1444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1445 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1444, %dx.types.Handle %64, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = extractvalue %dx.types.ResRet.f32 %1445, 1
  %1448 = extractvalue %dx.types.ResRet.f32 %1445, 2
  %1449 = extractvalue %dx.types.ResRet.f32 %1445, 3
  %1450 = and i32 %1439, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = lshr i32 %1439, 8
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = lshr i32 %1439, 16
  %1456 = and i32 %1455, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1457, 0x3F70101000000000
  %1459 = fmul fast float %1446, %1451
  %1460 = fadd fast float %1459, %1454
  %1461 = fmul fast float %1460, 0x3F70101000000000
  %1462 = fadd fast float %1447, -5.000000e-01
  %1463 = fadd fast float %1449, -5.000000e-01
  %1464 = fmul fast float %1462, %1458
  %1465 = fmul fast float %1463, %1458
  %1466 = fadd fast float %1464, 5.000000e-01
  %1467 = fadd fast float %1465, 5.000000e-01
  %1468 = fmul fast float %1466, 2.000000e+00
  %1469 = fadd fast float %1468, -1.000000e+00
  %1470 = fmul fast float %1467, 2.000000e+00
  %1471 = fadd fast float %1470, -1.000000e+00
  %1472 = fadd fast float %1469, %1471
  %1473 = fmul fast float %1472, 5.000000e-01
  %1474 = fsub fast float %1469, %1471
  %1475 = fmul fast float %1474, 5.000000e-01
  %1476 = call float @dx.op.unary.f32(i32 6, float %1473)  ; FAbs(value)
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = call float @dx.op.unary.f32(i32 6, float %1475)  ; FAbs(value)
  %1479 = fsub fast float %1477, %1478
  %1480 = call float @dx.op.dot3.f32(i32 55, float %1473, float %1475, float %1479, float %1473, float %1475, float %1479)  ; Dot3(ax,ay,az,bx,by,bz)
  %1481 = call float @dx.op.unary.f32(i32 25, float %1480)  ; Rsqrt(value)
  %1482 = fmul fast float %1473, %1481
  %1483 = fmul fast float %1475, %1481
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 67108864
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1504, label %1488

; <label>:1488                                    ; preds = %1436
  %1489 = add i32 %33, 296
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1489, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 65535
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = lshr i32 %1491, 16
  %1499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1498)  ; LegacyF16ToF32(value)
  %1500 = fsub fast float %1461, %1499
  %1501 = fmul fast float %1500, %1493
  %1502 = fadd fast float %1501, %1497
  %1503 = call float @dx.op.unary.f32(i32 7, float %1502)  ; Saturate(value)
  br label %1504

; <label>:1504                                    ; preds = %1488, %1436
  %1505 = phi float [ %1503, %1488 ], [ %1461, %1436 ]
  %1506 = call float @dx.op.dot2.f32(i32 54, float %1482, float %1483, float %925, float %926)  ; Dot2(ax,ay,bx,by)
  %1507 = call float @dx.op.dot2.f32(i32 54, float %1482, float %1483, float %927, float %928)  ; Dot2(ax,ay,bx,by)
  br label %1508

; <label>:1508                                    ; preds = %1504, %1414
  %1509 = phi float [ %1505, %1504 ], [ 0x3FD6666660000000, %1414 ]
  %1510 = phi float [ %1506, %1504 ], [ 0.000000e+00, %1414 ]
  %1511 = phi float [ %1507, %1504 ], [ 0.000000e+00, %1414 ]
  %1512 = phi float [ %1448, %1504 ], [ 1.000000e+00, %1414 ]
  %1513 = add i32 %33, 176
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = lshr i32 %1515, 22
  %1517 = shl nuw nsw i32 %1516, 5
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 64
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1556, label %1523

; <label>:1523                                    ; preds = %1508
  %1524 = add i32 %33, 396
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = add i32 %1526, 0
  %1528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 131072
  %1532 = icmp eq i32 %1531, 0
  %1533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1528, %dx.types.Handle %64, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1534 = extractvalue %dx.types.ResRet.f32 %1533, 0
  %1535 = extractvalue %dx.types.ResRet.f32 %1533, 1
  %1536 = extractvalue %dx.types.ResRet.f32 %1533, 2
  %1537 = fmul fast float %1534, %221
  %1538 = fmul fast float %1535, %224
  %1539 = fmul fast float %1536, %227
  br i1 %1532, label %1546, label %1540

; <label>:1540                                    ; preds = %1523
  %1541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1541, 0
  %1543 = fmul fast float %1542, %1537
  %1544 = fmul fast float %1542, %1538
  %1545 = fmul fast float %1542, %1539
  br label %1546

; <label>:1546                                    ; preds = %1540, %1523
  %1547 = phi float [ %1543, %1540 ], [ %1537, %1523 ]
  %1548 = phi float [ %1544, %1540 ], [ %1538, %1523 ]
  %1549 = phi float [ %1545, %1540 ], [ %1539, %1523 ]
  %1550 = fmul fast float %1547, %1518
  %1551 = select i1 %173, float %1550, float %1547
  %1552 = call float @dx.op.dot3.f32(i32 55, float %1551, float %1548, float %1549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1553 = select i1 %173, float 0.000000e+00, float %1547
  %1554 = select i1 %173, float %1552, float %1548
  %1555 = select i1 %173, float 0.000000e+00, float %1549
  br label %1556

; <label>:1556                                    ; preds = %1546, %1508
  %1557 = phi float [ %1553, %1546 ], [ 0.000000e+00, %1508 ]
  %1558 = phi float [ %1554, %1546 ], [ 0.000000e+00, %1508 ]
  %1559 = phi float [ %1555, %1546 ], [ 0.000000e+00, %1508 ]
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 26624
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1587, label %1564

; <label>:1564                                    ; preds = %1556
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = and i32 %1566, 16384
  %1568 = icmp eq i32 %1567, 0
  br i1 %1568, label %1587, label %1569

; <label>:1569                                    ; preds = %1564
  %1570 = and i32 %1566, 1048576
  %1571 = icmp ne i32 %1570, 0
  %1572 = add i32 %33, 460
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1572, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = add i32 %1574, 0
  %1576 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1575, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1577 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1576, %dx.types.Handle %65, float %1021, float %1022, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1578 = extractvalue %dx.types.ResRet.f32 %1577, 0
  %1579 = add i32 %33, 112
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = lshr i32 %1581, 24
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1578, 0x3F70101020000000
  %1585 = select i1 %1571, float 0x3F70101020000000, float %1584
  %1586 = fmul fast float %1585, %1583
  br label %1587

; <label>:1587                                    ; preds = %1569, %1564, %1556
  %1588 = phi float [ %1586, %1569 ], [ 0.000000e+00, %1564 ], [ 0.000000e+00, %1556 ]
  %1589 = add i32 %33, 112
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = lshr i32 %1591, 8
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1429, float %1430, float %1431, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = fmul fast float %1596, %1597
  %1599 = fadd fast float %1598, %1593
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  br i1 %913, label %1602, label %1610

; <label>:1602                                    ; preds = %1587
  %1603 = fsub fast float 1.000000e+00, %1209
  %1604 = fmul fast float %1603, %900
  %1605 = fmul fast float %1603, %901
  %1606 = fmul fast float %1603, %902
  %1607 = fmul fast float %1603, %903
  %1608 = fmul fast float %1603, %904
  %1609 = fmul fast float %1603, %905
  br label %1610

; <label>:1610                                    ; preds = %1602, %1587
  %1611 = phi float [ %1604, %1602 ], [ %900, %1587 ]
  %1612 = phi float [ %1605, %1602 ], [ %901, %1587 ]
  %1613 = phi float [ %1606, %1602 ], [ %902, %1587 ]
  %1614 = phi float [ %1607, %1602 ], [ %903, %1587 ]
  %1615 = phi float [ %1608, %1602 ], [ %904, %1587 ]
  %1616 = phi float [ %1609, %1602 ], [ %905, %1587 ]
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 3
  %1620 = icmp eq i32 %1619, 3
  br i1 %1620, label %1699, label %1621

; <label>:1621                                    ; preds = %1610
  %1622 = and i32 %1618, 16
  %1623 = icmp ne i32 %1622, 0
  %1624 = select i1 %1623, float %1209, float 0.000000e+00
  %1625 = icmp eq i32 %1619, 0
  br i1 %1625, label %1626, label %1654

; <label>:1626                                    ; preds = %1621
  %1627 = and i32 %1618, 64
  %1628 = icmp ne i32 %1627, 0
  %1629 = select i1 %1628, float %1209, float 0.000000e+00
  %1630 = fsub fast float %1429, %1611
  %1631 = fsub fast float %1430, %1612
  %1632 = fsub fast float %1431, %1613
  %1633 = fmul fast float %1624, %1630
  %1634 = fmul fast float %1624, %1631
  %1635 = fmul fast float %1624, %1632
  %1636 = fadd fast float %1633, %1611
  %1637 = fadd fast float %1634, %1612
  %1638 = fadd fast float %1635, %1613
  %1639 = fsub fast float %1415, %906
  %1640 = fmul fast float %1624, %1639
  %1641 = fadd fast float %1640, %906
  %1642 = fsub fast float %1557, %1614
  %1643 = fsub fast float %1558, %1615
  %1644 = fsub fast float %1559, %1616
  %1645 = fmul fast float %1629, %1642
  %1646 = fmul fast float %1629, %1643
  %1647 = fmul fast float %1629, %1644
  %1648 = fadd fast float %1645, %1614
  %1649 = fadd fast float %1646, %1615
  %1650 = fadd fast float %1647, %1616
  %1651 = fsub fast float %1601, %911
  %1652 = fmul fast float %1624, %1651
  %1653 = fadd fast float %1652, %911
  br label %1699

; <label>:1654                                    ; preds = %1621
  %1655 = icmp eq i32 %1619, 1
  br i1 %1655, label %1656, label %1669

; <label>:1656                                    ; preds = %1654
  %1657 = fadd fast float %1429, -1.000000e+00
  %1658 = fadd fast float %1430, -1.000000e+00
  %1659 = fadd fast float %1431, -1.000000e+00
  %1660 = fmul fast float %1624, %1657
  %1661 = fmul fast float %1624, %1658
  %1662 = fmul fast float %1624, %1659
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fadd fast float %1661, 1.000000e+00
  %1665 = fadd fast float %1662, 1.000000e+00
  %1666 = fmul fast float %1663, %1611
  %1667 = fmul fast float %1664, %1612
  %1668 = fmul fast float %1665, %1613
  br label %1699

; <label>:1669                                    ; preds = %1654
  %1670 = icmp eq i32 %1619, 2
  br i1 %1670, label %1671, label %1699

; <label>:1671                                    ; preds = %1669
  %1672 = call float @dx.op.unary.f32(i32 24, float %1429)  ; Sqrt(value)
  %1673 = call float @dx.op.unary.f32(i32 24, float %1430)  ; Sqrt(value)
  %1674 = call float @dx.op.unary.f32(i32 24, float %1431)  ; Sqrt(value)
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fadd fast float %1673, -5.000000e-01
  %1677 = fadd fast float %1674, -5.000000e-01
  %1678 = fmul fast float %1675, %1624
  %1679 = fmul fast float %1676, %1624
  %1680 = fmul fast float %1677, %1624
  %1681 = fadd fast float %1678, 5.000000e-01
  %1682 = fadd fast float %1679, 5.000000e-01
  %1683 = fadd fast float %1680, 5.000000e-01
  %1684 = fmul fast float %1681, 2.000000e+00
  %1685 = fsub fast float 1.000000e+00, %1684
  %1686 = fmul fast float %1685, %1611
  %1687 = fadd fast float %1686, %1684
  %1688 = fmul fast float %1687, %1611
  %1689 = fmul fast float %1682, 2.000000e+00
  %1690 = fsub fast float 1.000000e+00, %1689
  %1691 = fmul fast float %1690, %1612
  %1692 = fadd fast float %1691, %1689
  %1693 = fmul fast float %1692, %1612
  %1694 = fmul fast float %1683, 2.000000e+00
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = fmul fast float %1695, %1613
  %1697 = fadd fast float %1696, %1694
  %1698 = fmul fast float %1697, %1613
  br label %1699

; <label>:1699                                    ; preds = %1671, %1669, %1656, %1626, %1610
  %1700 = phi float [ %1611, %1610 ], [ %1688, %1671 ], [ %1611, %1669 ], [ %1666, %1656 ], [ %1636, %1626 ]
  %1701 = phi float [ %1612, %1610 ], [ %1693, %1671 ], [ %1612, %1669 ], [ %1667, %1656 ], [ %1637, %1626 ]
  %1702 = phi float [ %1613, %1610 ], [ %1698, %1671 ], [ %1613, %1669 ], [ %1668, %1656 ], [ %1638, %1626 ]
  %1703 = phi float [ %1614, %1610 ], [ %1614, %1671 ], [ %1614, %1669 ], [ %1614, %1656 ], [ %1648, %1626 ]
  %1704 = phi float [ %1615, %1610 ], [ %1615, %1671 ], [ %1615, %1669 ], [ %1615, %1656 ], [ %1649, %1626 ]
  %1705 = phi float [ %1616, %1610 ], [ %1616, %1671 ], [ %1616, %1669 ], [ %1616, %1656 ], [ %1650, %1626 ]
  %1706 = phi float [ %906, %1610 ], [ %906, %1671 ], [ %906, %1669 ], [ %906, %1656 ], [ %1641, %1626 ]
  %1707 = phi float [ %911, %1610 ], [ %911, %1671 ], [ %911, %1669 ], [ %911, %1656 ], [ %1653, %1626 ]
  %1708 = and i32 %1618, 12
  %1709 = icmp eq i32 %1708, 12
  br i1 %1709, label %1792, label %1710

; <label>:1710                                    ; preds = %1699
  %1711 = and i32 %1618, 2097184
  %1712 = icmp eq i32 %1711, 2097184
  %1713 = select i1 %1712, float %1209, float 0.000000e+00
  %1714 = and i32 %1618, 4194336
  %1715 = icmp eq i32 %1714, 4194336
  %1716 = select i1 %1715, float %1209, float 0.000000e+00
  %1717 = and i32 %1618, 8388640
  %1718 = icmp eq i32 %1717, 8388640
  %1719 = select i1 %1718, float %1209, float 0.000000e+00
  %1720 = and i32 %1618, 16384
  %1721 = icmp ne i32 %1720, 0
  %1722 = select i1 %1721, float %1209, float 0.000000e+00
  %1723 = icmp eq i32 %1708, 0
  br i1 %1723, label %1724, label %1740

; <label>:1724                                    ; preds = %1710
  %1725 = fsub fast float %1510, %898
  %1726 = fsub fast float %1511, %899
  %1727 = fmul fast float %1713, %1725
  %1728 = fmul fast float %1713, %1726
  %1729 = fadd fast float %1727, %898
  %1730 = fadd fast float %1728, %899
  %1731 = fsub fast float %1512, %909
  %1732 = fmul fast float %1716, %1731
  %1733 = fadd fast float %1732, %909
  %1734 = fsub fast float %1509, %908
  %1735 = fmul fast float %1719, %1734
  %1736 = fadd fast float %1735, %908
  %1737 = fsub fast float %1588, %910
  %1738 = fmul fast float %1722, %1737
  %1739 = fadd fast float %1738, %910
  br label %1792

; <label>:1740                                    ; preds = %1710
  %1741 = icmp eq i32 %1708, 4
  br i1 %1741, label %1742, label %1776

; <label>:1742                                    ; preds = %1740
  %1743 = fmul fast float %1713, %1510
  %1744 = fmul fast float %1713, %1511
  %1745 = fadd fast float %1743, %898
  %1746 = fadd fast float %1744, %899
  %1747 = call float @dx.op.binary.f32(i32 36, float %909, float %1512)  ; FMin(a,b)
  %1748 = fsub fast float %1747, %909
  %1749 = fmul fast float %1748, %1716
  %1750 = fadd fast float %1749, %909
  %1751 = fadd fast float %1509, %908
  %1752 = fmul fast float %1751, 0x3FF337FAE0000000
  %1753 = fmul fast float %908, %908
  %1754 = fmul fast float %1509, %1509
  %1755 = fadd fast float %1754, %1753
  %1756 = fmul fast float %1755, 0x3FE5152B00000000
  %1757 = fmul fast float %908, 0xBFCC1F85E0000000
  %1758 = fmul fast float %1757, %1509
  %1759 = fadd fast float %1758, 0xBFE1363700000000
  %1760 = fadd fast float %1759, %1752
  %1761 = fsub fast float %1760, %1756
  %1762 = fmul fast float %1751, 0x3FBA6F0D00000000
  %1763 = fmul fast float %1755, 0x3FD0432880000000
  %1764 = fmul fast float %908, 0xBFEF110800000000
  %1765 = fmul fast float %1764, %1509
  %1766 = fadd fast float %1765, 1.000000e+00
  %1767 = fsub fast float %1766, %1762
  %1768 = fadd fast float %1767, %1763
  %1769 = fdiv fast float %1761, %1768
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1771 = fsub fast float %1770, %908
  %1772 = fmul fast float %1771, %1719
  %1773 = fadd fast float %1772, %908
  %1774 = fmul fast float %1722, %1588
  %1775 = fadd fast float %1774, %910
  br label %1792

; <label>:1776                                    ; preds = %1740
  %1777 = icmp eq i32 %1708, 8
  br i1 %1777, label %1778, label %1792

; <label>:1778                                    ; preds = %1776
  %1779 = fmul fast float %1713, %1510
  %1780 = fmul fast float %1713, %1511
  %1781 = fadd fast float %1779, %898
  %1782 = fadd fast float %1780, %899
  %1783 = call float @dx.op.binary.f32(i32 36, float %909, float %1512)  ; FMin(a,b)
  %1784 = fsub fast float %1783, %909
  %1785 = fmul fast float %1784, %1716
  %1786 = fadd fast float %1785, %909
  %1787 = fsub fast float %1509, %908
  %1788 = fmul fast float %1719, %1787
  %1789 = fadd fast float %1788, %908
  %1790 = fmul fast float %1722, %1588
  %1791 = fadd fast float %1790, %910
  br label %1792

; <label>:1792                                    ; preds = %1778, %1776, %1742, %1724, %1699, %1208, %912, %897
  %1793 = phi float [ %898, %1699 ], [ %898, %1208 ], [ %898, %897 ], [ %1781, %1778 ], [ %898, %1776 ], [ %1745, %1742 ], [ %1729, %1724 ], [ %898, %912 ]
  %1794 = phi float [ %899, %1699 ], [ %899, %1208 ], [ %899, %897 ], [ %1782, %1778 ], [ %899, %1776 ], [ %1746, %1742 ], [ %1730, %1724 ], [ %899, %912 ]
  %1795 = phi float [ %1700, %1699 ], [ %900, %1208 ], [ %900, %897 ], [ %1700, %1778 ], [ %1700, %1776 ], [ %1700, %1742 ], [ %1700, %1724 ], [ %900, %912 ]
  %1796 = phi float [ %1701, %1699 ], [ %901, %1208 ], [ %901, %897 ], [ %1701, %1778 ], [ %1701, %1776 ], [ %1701, %1742 ], [ %1701, %1724 ], [ %901, %912 ]
  %1797 = phi float [ %1702, %1699 ], [ %902, %1208 ], [ %902, %897 ], [ %1702, %1778 ], [ %1702, %1776 ], [ %1702, %1742 ], [ %1702, %1724 ], [ %902, %912 ]
  %1798 = phi float [ %1703, %1699 ], [ %903, %1208 ], [ %903, %897 ], [ %1703, %1778 ], [ %1703, %1776 ], [ %1703, %1742 ], [ %1703, %1724 ], [ %903, %912 ]
  %1799 = phi float [ %1704, %1699 ], [ %904, %1208 ], [ %904, %897 ], [ %1704, %1778 ], [ %1704, %1776 ], [ %1704, %1742 ], [ %1704, %1724 ], [ %904, %912 ]
  %1800 = phi float [ %1705, %1699 ], [ %905, %1208 ], [ %905, %897 ], [ %1705, %1778 ], [ %1705, %1776 ], [ %1705, %1742 ], [ %1705, %1724 ], [ %905, %912 ]
  %1801 = phi float [ %1706, %1699 ], [ %906, %1208 ], [ %906, %897 ], [ %1706, %1778 ], [ %1706, %1776 ], [ %1706, %1742 ], [ %1706, %1724 ], [ %906, %912 ]
  %1802 = phi float [ %908, %1699 ], [ %908, %1208 ], [ %908, %897 ], [ %1789, %1778 ], [ %908, %1776 ], [ %1773, %1742 ], [ %1736, %1724 ], [ %908, %912 ]
  %1803 = phi float [ %909, %1699 ], [ %909, %1208 ], [ %909, %897 ], [ %1786, %1778 ], [ %909, %1776 ], [ %1750, %1742 ], [ %1733, %1724 ], [ %909, %912 ]
  %1804 = phi float [ %910, %1699 ], [ %910, %1208 ], [ %910, %897 ], [ %1791, %1778 ], [ %910, %1776 ], [ %1775, %1742 ], [ %1739, %1724 ], [ %910, %912 ]
  %1805 = phi float [ %1707, %1699 ], [ %911, %1208 ], [ %911, %897 ], [ %1707, %1778 ], [ %1707, %1776 ], [ %1707, %1742 ], [ %1707, %1724 ], [ %911, %912 ]
  br i1 %348, label %2686, label %1806

; <label>:1806                                    ; preds = %1792
  %1807 = icmp ult i32 %401, 3
  %1808 = add i32 %33, 56
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = add i32 %33, 60
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = or i32 %1813, %1810
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %2686, label %1816

; <label>:1816                                    ; preds = %1806
  %1817 = and i32 %1810, 262144
  %1818 = icmp ne i32 %1817, 0
  %1819 = select i1 %1818, float %36, float 1.000000e+00
  %1820 = select i1 %1818, float %37, float 0.000000e+00
  %1821 = select i1 %1818, float %38, float 0.000000e+00
  %1822 = select i1 %1818, float %39, float 1.000000e+00
  %1823 = select i1 %1818, float %40, float %56
  %1824 = select i1 %1818, float %41, float %57
  %1825 = add i32 %33, 316
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = lshr i32 %1827, 16
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = fmul fast float %1829, 0x3F50624DE0000000
  %1831 = add i32 %33, 120
  %1832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %1833 = extractvalue %dx.types.ResRet.i32 %1832, 0
  %1834 = lshr i32 %1833, 16
  %1835 = and i32 %1834, 255
  %1836 = lshr i32 %1833, 24
  %1837 = add i32 %33, 324
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 65535
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = lshr i32 %1839, 16
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = add i32 %33, 64
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = lshr i32 %1846, 22
  %1848 = shl nuw nsw i32 %1847, 5
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = shl i32 %1846, 4
  %1851 = and i32 %1850, 32752
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = lshr i32 %1846, 7
  %1854 = and i32 %1853, 32752
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 3
  %1858 = fmul fast float %1857, 1.000000e+03
  %1859 = fmul fast float %298, %1858
  %1860 = call float @dx.op.unary.f32(i32 22, float %1859)  ; Frc(value)
  %1861 = fadd fast float %1860, %288
  %1862 = fmul fast float %299, %1858
  %1863 = call float @dx.op.unary.f32(i32 22, float %1862)  ; Frc(value)
  %1864 = fadd fast float %1863, %290
  %1865 = fmul fast float %1830, %1858
  %1866 = call float @dx.op.unary.f32(i32 22, float %1865)  ; Frc(value)
  %1867 = fmul fast float %1866, 0x401921FB60000000
  %1868 = fadd fast float %1867, %1849
  %1869 = call float @dx.op.unary.f32(i32 13, float %1868)  ; Sin(value)
  %1870 = call float @dx.op.unary.f32(i32 12, float %1868)  ; Cos(value)
  %1871 = fsub fast float -0.000000e+00, %1869
  %1872 = fadd fast float %1823, -5.000000e-01
  %1873 = fadd fast float %1824, -5.000000e-01
  %1874 = fmul fast float %1841, %1872
  %1875 = fmul fast float %1843, %1873
  %1876 = fadd fast float %1874, 5.000000e-01
  %1877 = fadd fast float %1875, 5.000000e-01
  %1878 = fmul fast float %1852, %1876
  %1879 = fmul fast float %1855, %1877
  %1880 = fmul fast float %1870, %1878
  %1881 = call float @dx.op.tertiary.f32(i32 46, float %1871, float %1879, float %1880)  ; FMad(a,b,c)
  %1882 = fmul fast float %1869, %1878
  %1883 = call float @dx.op.tertiary.f32(i32 46, float %1870, float %1879, float %1882)  ; FMad(a,b,c)
  %1884 = fadd fast float %1861, %1881
  %1885 = fadd fast float %1864, %1883
  %1886 = icmp ugt i32 %1835, 1
  %1887 = icmp ugt i32 %1833, 33554431
  %1888 = or i1 %1887, %1886
  br i1 %1888, label %1889, label %1914

; <label>:1889                                    ; preds = %1816
  %1890 = add i32 %33, 260
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = lshr i32 %1892, 16
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = fmul fast float %1857, %1894
  %1896 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1897 = mul nuw nsw i32 %1835, %1836
  %1898 = uitofp i32 %1897 to float
  %1899 = fmul fast float %1896, %1898
  %1900 = call float @dx.op.unary.f32(i32 27, float %1899)  ; Round_ni(value)
  %1901 = fptoui float %1900 to i32
  %1902 = urem i32 %1901, %1835
  %1903 = udiv i32 %1901, %1836
  %1904 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1905 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1906 = uitofp i32 %1902 to float
  %1907 = uitofp i32 %1903 to float
  %1908 = fadd fast float %1904, %1906
  %1909 = fadd fast float %1905, %1907
  %1910 = uitofp i32 %1835 to float
  %1911 = uitofp i32 %1836 to float
  %1912 = fdiv fast float %1908, %1910
  %1913 = fdiv fast float %1909, %1911
  br label %1914

; <label>:1914                                    ; preds = %1889, %1816
  %1915 = phi float [ %1912, %1889 ], [ %1884, %1816 ]
  %1916 = phi float [ %1913, %1889 ], [ %1885, %1816 ]
  %1917 = and i32 %1810, 16777216
  %1918 = icmp eq i32 %1917, 0
  br i1 %1918, label %2028, label %1919

; <label>:1919                                    ; preds = %1914
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 0
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 1
  %1923 = extractvalue %dx.types.CBufRet.f32 %1920, 2
  %1924 = fadd fast float %1921, %131
  %1925 = fadd fast float %1922, %132
  %1926 = fadd fast float %1923, %133
  %1927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1928 = extractvalue %dx.types.CBufRet.f32 %1927, 0
  %1929 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1930 = icmp eq i32 %34, 65535
  br i1 %1930, label %2025, label %1931

; <label>:1931                                    ; preds = %1919
  %1932 = lshr i32 %34, 1
  %1933 = shl i32 %1932, 2
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = and i32 %34, 1
  %1937 = icmp ne i32 %1936, 0
  %1938 = lshr i32 %1935, 16
  %1939 = and i32 %1935, 65535
  %1940 = select i1 %1937, i32 %1938, i32 %1939
  %1941 = icmp eq i32 %1940, 65535
  br i1 %1941, label %2021, label %1942

; <label>:1942                                    ; preds = %1931
  %1943 = mul nuw nsw i32 %1940, 40
  %1944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.ResRet.f32 %1944, 2
  %1948 = add nuw nsw i32 %1943, 12
  %1949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.ResRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.ResRet.f32 %1949, 2
  %1953 = add nuw nsw i32 %1943, 24
  %1954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.f32 %1954, 0
  %1956 = extractvalue %dx.types.ResRet.f32 %1954, 1
  %1957 = extractvalue %dx.types.ResRet.f32 %1954, 2
  %1958 = add nuw nsw i32 %1943, 36
  %1959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.f32 %1959, 0
  %1961 = fsub fast float %1924, %1945
  %1962 = fsub fast float %1925, %1946
  %1963 = fsub fast float %1926, %1947
  %1964 = fmul fast float %1960, %1961
  %1965 = fmul fast float %1960, %1962
  %1966 = fmul fast float %1960, %1963
  %1967 = call float @dx.op.unary.f32(i32 27, float %1964)  ; Round_ni(value)
  %1968 = call float @dx.op.unary.f32(i32 27, float %1965)  ; Round_ni(value)
  %1969 = call float @dx.op.unary.f32(i32 27, float %1966)  ; Round_ni(value)
  %1970 = fadd fast float %1967, 5.000000e-01
  %1971 = fadd fast float %1968, 5.000000e-01
  %1972 = fadd fast float %1969, 5.000000e-01
  %1973 = fmul fast float %1970, %1950
  %1974 = fmul fast float %1971, %1951
  %1975 = fmul fast float %1972, %1952
  %1976 = shl i32 %34, 2
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = add i32 %1978, 0
  %1980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1981 = call float @dx.op.unary.f32(i32 22, float %1973)  ; Frc(value)
  %1982 = call float @dx.op.unary.f32(i32 22, float %1974)  ; Frc(value)
  %1983 = call float @dx.op.unary.f32(i32 22, float %1975)  ; Frc(value)
  %1984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1980, %dx.types.Handle %30, float %1981, float %1982, float %1983, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  %1986 = extractvalue %dx.types.ResRet.f32 %1984, 1
  %1987 = extractvalue %dx.types.ResRet.f32 %1984, 2
  %1988 = fmul fast float %1985, 1.023000e+03
  %1989 = fmul fast float %1986, 1.023000e+03
  %1990 = fmul fast float %1987, 1.023000e+03
  %1991 = fadd fast float %1988, 5.000000e-01
  %1992 = fadd fast float %1989, 5.000000e-01
  %1993 = fadd fast float %1990, 5.000000e-01
  %1994 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = call float @dx.op.unary.f32(i32 27, float %1993)  ; Round_ni(value)
  %1997 = fsub fast float %1964, %1967
  %1998 = fsub fast float %1965, %1968
  %1999 = fsub fast float %1966, %1969
  %2000 = fmul fast float %1997, 7.500000e-01
  %2001 = fmul fast float %1998, 7.500000e-01
  %2002 = fmul fast float %1999, 7.500000e-01
  %2003 = fadd fast float %1967, 1.250000e-01
  %2004 = fadd fast float %2003, %2000
  %2005 = fadd fast float %2004, %1994
  %2006 = fadd fast float %1968, 1.250000e-01
  %2007 = fadd fast float %2006, %2001
  %2008 = fadd fast float %2007, %1995
  %2009 = fadd fast float %1969, 1.250000e-01
  %2010 = fadd fast float %2009, %2002
  %2011 = fadd fast float %2010, %1996
  %2012 = fmul fast float %2005, %1955
  %2013 = fmul fast float %2008, %1956
  %2014 = fmul fast float %2011, %1957
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = add i32 %2016, 0
  %2018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2017, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2018, %dx.types.Handle %28, float %2012, float %2013, float %2014, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  br label %2021

; <label>:2021                                    ; preds = %1942, %1931
  %2022 = phi float [ %2020, %1942 ], [ -1.000000e+00, %1931 ]
  %2023 = fadd fast float %2022, %1929
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  br label %2025

; <label>:2025                                    ; preds = %2021, %1919
  %2026 = phi float [ %2024, %2021 ], [ %1929, %1919 ]
  %2027 = fmul fast float %2026, %397
  br label %2028

; <label>:2028                                    ; preds = %2025, %1914
  %2029 = phi float [ %2027, %2025 ], [ %397, %1914 ]
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 256
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2080, label %2034

; <label>:2034                                    ; preds = %2028
  %2035 = add i32 %33, 432
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = add i32 %2037, 0
  %2039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2040 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2039, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = add i32 %33, 132
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = shl i32 %2044, 4
  %2046 = and i32 %2045, 32752
  %2047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2046)  ; LegacyF16ToF32(value)
  %2048 = lshr i32 %2044, 7
  %2049 = and i32 %2048, 32752
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = fsub fast float 1.000000e+00, %2029
  %2052 = call float @dx.op.binary.f32(i32 35, float %2051, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2053 = bitcast float %2029 to i32
  %2054 = sitofp i32 %2053 to float
  %2055 = fadd fast float %2054, 0xC1CFBF8940000000
  %2056 = fmul fast float %2050, %2055
  %2057 = fadd fast float %2056, 0x41CFBF8940000000
  %2058 = fptosi float %2057 to i32
  %2059 = bitcast i32 %2058 to float
  %2060 = bitcast float %2052 to i32
  %2061 = sitofp i32 %2060 to float
  %2062 = fadd fast float %2061, 0xC1CFBF8940000000
  %2063 = fmul fast float %2062, %2050
  %2064 = fadd fast float %2063, 0x41CFBF8940000000
  %2065 = fptosi float %2064 to i32
  %2066 = bitcast i32 %2065 to float
  %2067 = fmul fast float %2059, %2047
  %2068 = fmul fast float %2066, %2047
  %2069 = fsub fast float %2052, %2067
  %2070 = fadd fast float %2068, %2052
  %2071 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2072 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2073 = fsub fast float %2041, %2071
  %2074 = fsub fast float %2072, %2071
  %2075 = bitcast float %2074 to i32
  %2076 = sub nsw i32 2129859010, %2075
  %2077 = bitcast i32 %2076 to float
  %2078 = fmul fast float %2077, %2073
  %2079 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  br label %2080

; <label>:2080                                    ; preds = %2034, %2028
  %2081 = phi float [ %2079, %2034 ], [ %2029, %2028 ]
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 128
  %2085 = icmp eq i32 %2084, 0
  br i1 %2085, label %2102, label %2086

; <label>:2086                                    ; preds = %2080
  %2087 = add i32 %33, 416
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = add i32 %2089, 0
  %2091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2090, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2092 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2091, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2093 = extractvalue %dx.types.ResRet.f32 %2092, 0
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = and i32 %2095, 524288
  %2097 = icmp ne i32 %2096, 0
  %2098 = fcmp fast ogt float %2093, 0x3FE0101020000000
  %2099 = select i1 %2098, float 1.000000e+00, float 0.000000e+00
  %2100 = select i1 %2097, float %2099, float %2093
  %2101 = fmul fast float %2100, %2081
  br label %2102

; <label>:2102                                    ; preds = %2086, %2080
  %2103 = phi float [ %2101, %2086 ], [ %2081, %2080 ]
  %2104 = fcmp fast ult float %2103, 0x3F70101020000000
  br i1 %2104, label %2686, label %2105

; <label>:2105                                    ; preds = %2102
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = and i32 %2107, 16
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2308, label %2110

; <label>:2110                                    ; preds = %2105
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = add i32 %33, 368
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %2115, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2117, %dx.types.Handle %64, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.ResRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.ResRet.f32 %2118, 2
  %2122 = extractvalue %dx.types.ResRet.f32 %2118, 3
  %2123 = and i32 %2112, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = lshr i32 %2112, 8
  %2126 = and i32 %2125, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2122, %2124
  %2129 = fadd fast float %2128, %2127
  %2130 = fmul fast float %2129, 0x3F70101000000000
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = and i32 %2132, 512
  %2134 = icmp eq i32 %2133, 0
  br i1 %2134, label %2143, label %2135

; <label>:2135                                    ; preds = %2110
  %2136 = add i32 %33, 448
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = add i32 %2138, 0
  %2140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2140, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  br label %2143

; <label>:2143                                    ; preds = %2135, %2110
  %2144 = phi float [ %2142, %2135 ], [ 1.000000e+00, %2110 ]
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = and i32 %2146, 33554432
  %2148 = icmp eq i32 %2147, 0
  br i1 %2148, label %2255, label %2149

; <label>:2149                                    ; preds = %2143
  %2150 = add i32 %33, 256
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = and i32 %2152, 65535
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = lshr i32 %2152, 16
  %2156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2155)  ; LegacyF16ToF32(value)
  %2157 = add i32 %33, 260
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = and i32 %2159, 65535
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = lshr i32 %2163, 24
  %2165 = uitofp i32 %2164 to float
  %2166 = fmul fast float %2165, 0x3F70101020000000
  %2167 = and i32 %2163, 255
  %2168 = uitofp i32 %2167 to float
  %2169 = fmul fast float %2168, 0x3F70101020000000
  %2170 = lshr i32 %2163, 8
  %2171 = and i32 %2170, 255
  %2172 = uitofp i32 %2171 to float
  %2173 = fmul fast float %2172, 0x3F70101020000000
  %2174 = lshr i32 %2163, 16
  %2175 = and i32 %2174, 255
  %2176 = uitofp i32 %2175 to float
  %2177 = fmul fast float %2176, 0x3F70101020000000
  %2178 = add i32 %33, 252
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = lshr i32 %2180, 24
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101020000000
  %2184 = and i32 %2180, 255
  %2185 = uitofp i32 %2184 to float
  %2186 = fmul fast float %2185, 0x3F70101020000000
  %2187 = lshr i32 %2180, 8
  %2188 = and i32 %2187, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = fmul fast float %2189, 0x3F70101020000000
  %2191 = lshr i32 %2180, 16
  %2192 = and i32 %2191, 255
  %2193 = uitofp i32 %2192 to float
  %2194 = fmul fast float %2193, 0x3F70101020000000
  %2195 = bitcast float %2119 to i32
  %2196 = ashr i32 %2195, 1
  %2197 = sub nsw i32 1597463174, %2196
  %2198 = bitcast i32 %2197 to float
  %2199 = fmul fast float %2119, 5.000000e-01
  %2200 = fmul fast float %2198, %2198
  %2201 = fmul fast float %2200, %2199
  %2202 = fsub fast float 1.500000e+00, %2201
  %2203 = fmul fast float %2198, %2119
  %2204 = fmul fast float %2203, %2202
  %2205 = bitcast float %2120 to i32
  %2206 = ashr i32 %2205, 1
  %2207 = sub nsw i32 1597463174, %2206
  %2208 = bitcast i32 %2207 to float
  %2209 = fmul fast float %2120, 5.000000e-01
  %2210 = fmul fast float %2208, %2208
  %2211 = fmul fast float %2210, %2209
  %2212 = fsub fast float 1.500000e+00, %2211
  %2213 = fmul fast float %2208, %2120
  %2214 = fmul fast float %2213, %2212
  %2215 = bitcast float %2121 to i32
  %2216 = ashr i32 %2215, 1
  %2217 = sub nsw i32 1597463174, %2216
  %2218 = bitcast i32 %2217 to float
  %2219 = fmul fast float %2121, 5.000000e-01
  %2220 = fmul fast float %2218, %2218
  %2221 = fmul fast float %2220, %2219
  %2222 = fsub fast float 1.500000e+00, %2221
  %2223 = fmul fast float %2218, %2121
  %2224 = fmul fast float %2223, %2222
  %2225 = fsub fast float %2204, %2186
  %2226 = fsub fast float %2214, %2190
  %2227 = fsub fast float %2224, %2194
  %2228 = fmul fast float %2225, %2154
  %2229 = fmul fast float %2226, %2156
  %2230 = fmul fast float %2227, %2161
  %2231 = fadd fast float %2228, %2169
  %2232 = fadd fast float %2229, %2173
  %2233 = fadd fast float %2230, %2177
  %2234 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2235 = call float @dx.op.unary.f32(i32 7, float %2232)  ; Saturate(value)
  %2236 = call float @dx.op.unary.f32(i32 7, float %2233)  ; Saturate(value)
  %2237 = fmul fast float %2234, %2234
  %2238 = fmul fast float %2235, %2235
  %2239 = fmul fast float %2236, %2236
  %2240 = fsub fast float %2237, %2119
  %2241 = fsub fast float %2238, %2120
  %2242 = fsub fast float %2239, %2121
  %2243 = fmul fast float %2240, %2144
  %2244 = fmul fast float %2241, %2144
  %2245 = fmul fast float %2242, %2144
  %2246 = fadd fast float %2243, %2119
  %2247 = fadd fast float %2244, %2120
  %2248 = fadd fast float %2245, %2121
  %2249 = fadd fast float %2166, %2130
  %2250 = fsub fast float %2249, %2183
  %2251 = call float @dx.op.unary.f32(i32 7, float %2250)  ; Saturate(value)
  %2252 = fsub fast float %2251, %2130
  %2253 = fmul fast float %2252, %2144
  %2254 = fadd fast float %2253, %2130
  br label %2308

; <label>:2255                                    ; preds = %2143
  %2256 = and i32 %2146, 134217728
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2292, label %2258

; <label>:2258                                    ; preds = %2255
  %2259 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2260 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2261 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2262 = fadd fast float %2259, -5.000000e-01
  %2263 = fadd fast float %2260, -5.000000e-01
  %2264 = fadd fast float %2261, -5.000000e-01
  %2265 = fmul fast float %2262, %2144
  %2266 = fmul fast float %2263, %2144
  %2267 = fmul fast float %2264, %2144
  %2268 = fadd fast float %2265, 5.000000e-01
  %2269 = fadd fast float %2266, 5.000000e-01
  %2270 = fadd fast float %2267, 5.000000e-01
  %2271 = call float @dx.op.unary.f32(i32 24, float %2119)  ; Sqrt(value)
  %2272 = call float @dx.op.unary.f32(i32 24, float %2120)  ; Sqrt(value)
  %2273 = call float @dx.op.unary.f32(i32 24, float %2121)  ; Sqrt(value)
  %2274 = fmul fast float %2268, 2.000000e+00
  %2275 = fsub fast float 1.000000e+00, %2274
  %2276 = fmul fast float %2275, %2271
  %2277 = fadd fast float %2276, %2274
  %2278 = fmul fast float %2277, %2271
  %2279 = fmul fast float %2269, 2.000000e+00
  %2280 = fsub fast float 1.000000e+00, %2279
  %2281 = fmul fast float %2280, %2272
  %2282 = fadd fast float %2281, %2279
  %2283 = fmul fast float %2282, %2272
  %2284 = fmul fast float %2270, 2.000000e+00
  %2285 = fsub fast float 1.000000e+00, %2284
  %2286 = fmul fast float %2285, %2273
  %2287 = fadd fast float %2286, %2284
  %2288 = fmul fast float %2287, %2273
  %2289 = fmul fast float %2278, %2278
  %2290 = fmul fast float %2283, %2283
  %2291 = fmul fast float %2288, %2288
  br label %2308

; <label>:2292                                    ; preds = %2255
  %2293 = fmul fast float %275, %275
  %2294 = fmul fast float %279, %279
  %2295 = fmul fast float %283, %283
  %2296 = fadd fast float %2293, -1.000000e+00
  %2297 = fadd fast float %2294, -1.000000e+00
  %2298 = fadd fast float %2295, -1.000000e+00
  %2299 = fmul fast float %2144, %2296
  %2300 = fmul fast float %2144, %2297
  %2301 = fmul fast float %2144, %2298
  %2302 = fadd fast float %2299, 1.000000e+00
  %2303 = fadd fast float %2300, 1.000000e+00
  %2304 = fadd fast float %2301, 1.000000e+00
  %2305 = fmul fast float %2302, %2119
  %2306 = fmul fast float %2303, %2120
  %2307 = fmul fast float %2304, %2121
  br label %2308

; <label>:2308                                    ; preds = %2292, %2258, %2149, %2105
  %2309 = phi float [ %2254, %2149 ], [ %2130, %2258 ], [ %2130, %2292 ], [ 0x3FA23C0BE0000000, %2105 ]
  %2310 = phi float [ %2246, %2149 ], [ %2289, %2258 ], [ %2305, %2292 ], [ 1.000000e+00, %2105 ]
  %2311 = phi float [ %2247, %2149 ], [ %2290, %2258 ], [ %2306, %2292 ], [ 1.000000e+00, %2105 ]
  %2312 = phi float [ %2248, %2149 ], [ %2291, %2258 ], [ %2307, %2292 ], [ 1.000000e+00, %2105 ]
  %2313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.i32 %2313, 1
  %2315 = and i32 %2314, 1
  %2316 = icmp ne i32 %2315, 0
  %2317 = add i32 %33, 356
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 32
  %2321 = icmp ne i32 %2320, 0
  %2322 = and i1 %2316, %2321
  %2323 = select i1 %2322, float 1.000000e+00, float %2310
  %2324 = select i1 %2322, float 0x3FD3333340000000, float %2311
  %2325 = select i1 %2322, float 0x3FD3333340000000, float %2312
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = and i32 %2327, 32
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2402, label %2330

; <label>:2330                                    ; preds = %2308
  %2331 = add i32 %33, 124
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = add i32 %33, 384
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = add i32 %2336, 0
  %2338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2337, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2339 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2338, %dx.types.Handle %64, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2340 = extractvalue %dx.types.ResRet.f32 %2339, 0
  %2341 = extractvalue %dx.types.ResRet.f32 %2339, 1
  %2342 = extractvalue %dx.types.ResRet.f32 %2339, 2
  %2343 = extractvalue %dx.types.ResRet.f32 %2339, 3
  %2344 = and i32 %2333, 255
  %2345 = uitofp i32 %2344 to float
  %2346 = lshr i32 %2333, 8
  %2347 = and i32 %2346, 255
  %2348 = uitofp i32 %2347 to float
  %2349 = lshr i32 %2333, 16
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2351, 0x3F70101000000000
  %2353 = fmul fast float %2340, %2345
  %2354 = fadd fast float %2353, %2348
  %2355 = fmul fast float %2354, 0x3F70101000000000
  %2356 = fadd fast float %2341, -5.000000e-01
  %2357 = fadd fast float %2343, -5.000000e-01
  %2358 = fmul fast float %2356, %2352
  %2359 = fmul fast float %2357, %2352
  %2360 = fadd fast float %2358, 5.000000e-01
  %2361 = fadd fast float %2359, 5.000000e-01
  %2362 = fmul fast float %2360, 2.000000e+00
  %2363 = fadd fast float %2362, -1.000000e+00
  %2364 = fmul fast float %2361, 2.000000e+00
  %2365 = fadd fast float %2364, -1.000000e+00
  %2366 = fadd fast float %2363, %2365
  %2367 = fmul fast float %2366, 5.000000e-01
  %2368 = fsub fast float %2363, %2365
  %2369 = fmul fast float %2368, 5.000000e-01
  %2370 = call float @dx.op.unary.f32(i32 6, float %2367)  ; FAbs(value)
  %2371 = fsub fast float 1.000000e+00, %2370
  %2372 = call float @dx.op.unary.f32(i32 6, float %2369)  ; FAbs(value)
  %2373 = fsub fast float %2371, %2372
  %2374 = call float @dx.op.dot3.f32(i32 55, float %2367, float %2369, float %2373, float %2367, float %2369, float %2373)  ; Dot3(ax,ay,az,bx,by,bz)
  %2375 = call float @dx.op.unary.f32(i32 25, float %2374)  ; Rsqrt(value)
  %2376 = fmul fast float %2367, %2375
  %2377 = fmul fast float %2369, %2375
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 67108864
  %2381 = icmp eq i32 %2380, 0
  br i1 %2381, label %2398, label %2382

; <label>:2382                                    ; preds = %2330
  %2383 = add i32 %33, 312
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 65535
  %2387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2386)  ; LegacyF16ToF32(value)
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 65535
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = lshr i32 %2385, 16
  %2393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2392)  ; LegacyF16ToF32(value)
  %2394 = fsub fast float %2355, %2393
  %2395 = fmul fast float %2394, %2387
  %2396 = fadd fast float %2395, %2391
  %2397 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  br label %2398

; <label>:2398                                    ; preds = %2382, %2330
  %2399 = phi float [ %2397, %2382 ], [ %2355, %2330 ]
  %2400 = call float @dx.op.dot2.f32(i32 54, float %2376, float %2377, float %1819, float %1820)  ; Dot2(ax,ay,bx,by)
  %2401 = call float @dx.op.dot2.f32(i32 54, float %2376, float %2377, float %1821, float %1822)  ; Dot2(ax,ay,bx,by)
  br label %2402

; <label>:2402                                    ; preds = %2398, %2308
  %2403 = phi float [ %2399, %2398 ], [ 0x3FD6666660000000, %2308 ]
  %2404 = phi float [ %2400, %2398 ], [ 0.000000e+00, %2308 ]
  %2405 = phi float [ %2401, %2398 ], [ 0.000000e+00, %2308 ]
  %2406 = phi float [ %2342, %2398 ], [ 1.000000e+00, %2308 ]
  %2407 = add i32 %33, 192
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = lshr i32 %2409, 22
  %2411 = shl nuw nsw i32 %2410, 5
  %2412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2411)  ; LegacyF16ToF32(value)
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 64
  %2416 = icmp eq i32 %2415, 0
  br i1 %2416, label %2450, label %2417

; <label>:2417                                    ; preds = %2402
  %2418 = add i32 %33, 400
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2418, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = add i32 %2420, 0
  %2422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2421, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2424 = extractvalue %dx.types.ResRet.i32 %2423, 0
  %2425 = and i32 %2424, 131072
  %2426 = icmp eq i32 %2425, 0
  %2427 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2422, %dx.types.Handle %64, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2428 = extractvalue %dx.types.ResRet.f32 %2427, 0
  %2429 = extractvalue %dx.types.ResRet.f32 %2427, 1
  %2430 = extractvalue %dx.types.ResRet.f32 %2427, 2
  %2431 = fmul fast float %2428, %263
  %2432 = fmul fast float %2429, %266
  %2433 = fmul fast float %2430, %269
  br i1 %2426, label %2440, label %2434

; <label>:2434                                    ; preds = %2417
  %2435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2436 = extractvalue %dx.types.CBufRet.f32 %2435, 0
  %2437 = fmul fast float %2436, %2431
  %2438 = fmul fast float %2436, %2432
  %2439 = fmul fast float %2436, %2433
  br label %2440

; <label>:2440                                    ; preds = %2434, %2417
  %2441 = phi float [ %2437, %2434 ], [ %2431, %2417 ]
  %2442 = phi float [ %2438, %2434 ], [ %2432, %2417 ]
  %2443 = phi float [ %2439, %2434 ], [ %2433, %2417 ]
  %2444 = fmul fast float %2441, %2412
  %2445 = select i1 %173, float %2444, float %2441
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2445, float %2442, float %2443, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = select i1 %173, float 0.000000e+00, float %2441
  %2448 = select i1 %173, float %2446, float %2442
  %2449 = select i1 %173, float 0.000000e+00, float %2443
  br label %2450

; <label>:2450                                    ; preds = %2440, %2402
  %2451 = phi float [ %2447, %2440 ], [ 0.000000e+00, %2402 ]
  %2452 = phi float [ %2448, %2440 ], [ 0.000000e+00, %2402 ]
  %2453 = phi float [ %2449, %2440 ], [ 0.000000e+00, %2402 ]
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = and i32 %2455, 26624
  %2457 = icmp eq i32 %2456, 0
  br i1 %2457, label %2481, label %2458

; <label>:2458                                    ; preds = %2450
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 16384
  %2462 = icmp eq i32 %2461, 0
  br i1 %2462, label %2481, label %2463

; <label>:2463                                    ; preds = %2458
  %2464 = and i32 %2460, 1048576
  %2465 = icmp ne i32 %2464, 0
  %2466 = add i32 %33, 464
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = add i32 %2468, 0
  %2470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2470, %dx.types.Handle %65, float %1915, float %1916, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2472 = extractvalue %dx.types.ResRet.f32 %2471, 0
  %2473 = add i32 %33, 128
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = lshr i32 %2475, 24
  %2477 = uitofp i32 %2476 to float
  %2478 = fmul fast float %2472, 0x3F70101020000000
  %2479 = select i1 %2465, float 0x3F70101020000000, float %2478
  %2480 = fmul fast float %2479, %2477
  br label %2481

; <label>:2481                                    ; preds = %2463, %2458, %2450
  %2482 = phi float [ %2480, %2463 ], [ 0.000000e+00, %2458 ], [ 0.000000e+00, %2450 ]
  %2483 = add i32 %33, 128
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = and i32 %2485, 255
  %2487 = uitofp i32 %2486 to float
  %2488 = lshr i32 %2485, 8
  %2489 = and i32 %2488, 255
  %2490 = uitofp i32 %2489 to float
  %2491 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2324, float %2325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2492 = fmul fast float %2490, %2491
  %2493 = fadd fast float %2492, %2487
  %2494 = fmul fast float %2493, 0x3F70101020000000
  %2495 = call float @dx.op.unary.f32(i32 7, float %2494)  ; Saturate(value)
  br i1 %1807, label %2496, label %2504

; <label>:2496                                    ; preds = %2481
  %2497 = fsub fast float 1.000000e+00, %2103
  %2498 = fmul fast float %2497, %1795
  %2499 = fmul fast float %2497, %1796
  %2500 = fmul fast float %2497, %1797
  %2501 = fmul fast float %2497, %1798
  %2502 = fmul fast float %2497, %1799
  %2503 = fmul fast float %2497, %1800
  br label %2504

; <label>:2504                                    ; preds = %2496, %2481
  %2505 = phi float [ %2498, %2496 ], [ %1795, %2481 ]
  %2506 = phi float [ %2499, %2496 ], [ %1796, %2481 ]
  %2507 = phi float [ %2500, %2496 ], [ %1797, %2481 ]
  %2508 = phi float [ %2501, %2496 ], [ %1798, %2481 ]
  %2509 = phi float [ %2502, %2496 ], [ %1799, %2481 ]
  %2510 = phi float [ %2503, %2496 ], [ %1800, %2481 ]
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 3
  %2514 = icmp eq i32 %2513, 3
  br i1 %2514, label %2593, label %2515

; <label>:2515                                    ; preds = %2504
  %2516 = and i32 %2512, 16
  %2517 = icmp ne i32 %2516, 0
  %2518 = select i1 %2517, float %2103, float 0.000000e+00
  %2519 = icmp eq i32 %2513, 0
  br i1 %2519, label %2520, label %2548

; <label>:2520                                    ; preds = %2515
  %2521 = and i32 %2512, 64
  %2522 = icmp ne i32 %2521, 0
  %2523 = select i1 %2522, float %2103, float 0.000000e+00
  %2524 = fsub fast float %2323, %2505
  %2525 = fsub fast float %2324, %2506
  %2526 = fsub fast float %2325, %2507
  %2527 = fmul fast float %2518, %2524
  %2528 = fmul fast float %2518, %2525
  %2529 = fmul fast float %2518, %2526
  %2530 = fadd fast float %2527, %2505
  %2531 = fadd fast float %2528, %2506
  %2532 = fadd fast float %2529, %2507
  %2533 = fsub fast float %2309, %1801
  %2534 = fmul fast float %2518, %2533
  %2535 = fadd fast float %2534, %1801
  %2536 = fsub fast float %2451, %2508
  %2537 = fsub fast float %2452, %2509
  %2538 = fsub fast float %2453, %2510
  %2539 = fmul fast float %2523, %2536
  %2540 = fmul fast float %2523, %2537
  %2541 = fmul fast float %2523, %2538
  %2542 = fadd fast float %2539, %2508
  %2543 = fadd fast float %2540, %2509
  %2544 = fadd fast float %2541, %2510
  %2545 = fsub fast float %2495, %1805
  %2546 = fmul fast float %2518, %2545
  %2547 = fadd fast float %2546, %1805
  br label %2593

; <label>:2548                                    ; preds = %2515
  %2549 = icmp eq i32 %2513, 1
  br i1 %2549, label %2550, label %2563

; <label>:2550                                    ; preds = %2548
  %2551 = fadd fast float %2323, -1.000000e+00
  %2552 = fadd fast float %2324, -1.000000e+00
  %2553 = fadd fast float %2325, -1.000000e+00
  %2554 = fmul fast float %2518, %2551
  %2555 = fmul fast float %2518, %2552
  %2556 = fmul fast float %2518, %2553
  %2557 = fadd fast float %2554, 1.000000e+00
  %2558 = fadd fast float %2555, 1.000000e+00
  %2559 = fadd fast float %2556, 1.000000e+00
  %2560 = fmul fast float %2557, %2505
  %2561 = fmul fast float %2558, %2506
  %2562 = fmul fast float %2559, %2507
  br label %2593

; <label>:2563                                    ; preds = %2548
  %2564 = icmp eq i32 %2513, 2
  br i1 %2564, label %2565, label %2593

; <label>:2565                                    ; preds = %2563
  %2566 = call float @dx.op.unary.f32(i32 24, float %2323)  ; Sqrt(value)
  %2567 = call float @dx.op.unary.f32(i32 24, float %2324)  ; Sqrt(value)
  %2568 = call float @dx.op.unary.f32(i32 24, float %2325)  ; Sqrt(value)
  %2569 = fadd fast float %2566, -5.000000e-01
  %2570 = fadd fast float %2567, -5.000000e-01
  %2571 = fadd fast float %2568, -5.000000e-01
  %2572 = fmul fast float %2569, %2518
  %2573 = fmul fast float %2570, %2518
  %2574 = fmul fast float %2571, %2518
  %2575 = fadd fast float %2572, 5.000000e-01
  %2576 = fadd fast float %2573, 5.000000e-01
  %2577 = fadd fast float %2574, 5.000000e-01
  %2578 = fmul fast float %2575, 2.000000e+00
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2579, %2505
  %2581 = fadd fast float %2580, %2578
  %2582 = fmul fast float %2581, %2505
  %2583 = fmul fast float %2576, 2.000000e+00
  %2584 = fsub fast float 1.000000e+00, %2583
  %2585 = fmul fast float %2584, %2506
  %2586 = fadd fast float %2585, %2583
  %2587 = fmul fast float %2586, %2506
  %2588 = fmul fast float %2577, 2.000000e+00
  %2589 = fsub fast float 1.000000e+00, %2588
  %2590 = fmul fast float %2589, %2507
  %2591 = fadd fast float %2590, %2588
  %2592 = fmul fast float %2591, %2507
  br label %2593

; <label>:2593                                    ; preds = %2565, %2563, %2550, %2520, %2504
  %2594 = phi float [ %2505, %2504 ], [ %2582, %2565 ], [ %2505, %2563 ], [ %2560, %2550 ], [ %2530, %2520 ]
  %2595 = phi float [ %2506, %2504 ], [ %2587, %2565 ], [ %2506, %2563 ], [ %2561, %2550 ], [ %2531, %2520 ]
  %2596 = phi float [ %2507, %2504 ], [ %2592, %2565 ], [ %2507, %2563 ], [ %2562, %2550 ], [ %2532, %2520 ]
  %2597 = phi float [ %2508, %2504 ], [ %2508, %2565 ], [ %2508, %2563 ], [ %2508, %2550 ], [ %2542, %2520 ]
  %2598 = phi float [ %2509, %2504 ], [ %2509, %2565 ], [ %2509, %2563 ], [ %2509, %2550 ], [ %2543, %2520 ]
  %2599 = phi float [ %2510, %2504 ], [ %2510, %2565 ], [ %2510, %2563 ], [ %2510, %2550 ], [ %2544, %2520 ]
  %2600 = phi float [ %1801, %2504 ], [ %1801, %2565 ], [ %1801, %2563 ], [ %1801, %2550 ], [ %2535, %2520 ]
  %2601 = phi float [ %1805, %2504 ], [ %1805, %2565 ], [ %1805, %2563 ], [ %1805, %2550 ], [ %2547, %2520 ]
  %2602 = and i32 %2512, 12
  %2603 = icmp eq i32 %2602, 12
  br i1 %2603, label %2686, label %2604

; <label>:2604                                    ; preds = %2593
  %2605 = and i32 %2512, 2097184
  %2606 = icmp eq i32 %2605, 2097184
  %2607 = select i1 %2606, float %2103, float 0.000000e+00
  %2608 = and i32 %2512, 4194336
  %2609 = icmp eq i32 %2608, 4194336
  %2610 = select i1 %2609, float %2103, float 0.000000e+00
  %2611 = and i32 %2512, 8388640
  %2612 = icmp eq i32 %2611, 8388640
  %2613 = select i1 %2612, float %2103, float 0.000000e+00
  %2614 = and i32 %2512, 16384
  %2615 = icmp ne i32 %2614, 0
  %2616 = select i1 %2615, float %2103, float 0.000000e+00
  %2617 = icmp eq i32 %2602, 0
  br i1 %2617, label %2618, label %2634

; <label>:2618                                    ; preds = %2604
  %2619 = fsub fast float %2404, %1793
  %2620 = fsub fast float %2405, %1794
  %2621 = fmul fast float %2607, %2619
  %2622 = fmul fast float %2607, %2620
  %2623 = fadd fast float %2621, %1793
  %2624 = fadd fast float %2622, %1794
  %2625 = fsub fast float %2406, %1803
  %2626 = fmul fast float %2610, %2625
  %2627 = fadd fast float %2626, %1803
  %2628 = fsub fast float %2403, %1802
  %2629 = fmul fast float %2613, %2628
  %2630 = fadd fast float %2629, %1802
  %2631 = fsub fast float %2482, %1804
  %2632 = fmul fast float %2616, %2631
  %2633 = fadd fast float %2632, %1804
  br label %2686

; <label>:2634                                    ; preds = %2604
  %2635 = icmp eq i32 %2602, 4
  br i1 %2635, label %2636, label %2670

; <label>:2636                                    ; preds = %2634
  %2637 = fmul fast float %2607, %2404
  %2638 = fmul fast float %2607, %2405
  %2639 = fadd fast float %2637, %1793
  %2640 = fadd fast float %2638, %1794
  %2641 = call float @dx.op.binary.f32(i32 36, float %1803, float %2406)  ; FMin(a,b)
  %2642 = fsub fast float %2641, %1803
  %2643 = fmul fast float %2642, %2610
  %2644 = fadd fast float %2643, %1803
  %2645 = fadd fast float %2403, %1802
  %2646 = fmul fast float %2645, 0x3FF337FAE0000000
  %2647 = fmul fast float %1802, %1802
  %2648 = fmul fast float %2403, %2403
  %2649 = fadd fast float %2648, %2647
  %2650 = fmul fast float %2649, 0x3FE5152B00000000
  %2651 = fmul fast float %1802, 0xBFCC1F85E0000000
  %2652 = fmul fast float %2651, %2403
  %2653 = fadd fast float %2652, 0xBFE1363700000000
  %2654 = fadd fast float %2653, %2646
  %2655 = fsub fast float %2654, %2650
  %2656 = fmul fast float %2645, 0x3FBA6F0D00000000
  %2657 = fmul fast float %2649, 0x3FD0432880000000
  %2658 = fmul fast float %1802, 0xBFEF110800000000
  %2659 = fmul fast float %2658, %2403
  %2660 = fadd fast float %2659, 1.000000e+00
  %2661 = fsub fast float %2660, %2656
  %2662 = fadd fast float %2661, %2657
  %2663 = fdiv fast float %2655, %2662
  %2664 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  %2665 = fsub fast float %2664, %1802
  %2666 = fmul fast float %2665, %2613
  %2667 = fadd fast float %2666, %1802
  %2668 = fmul fast float %2616, %2482
  %2669 = fadd fast float %2668, %1804
  br label %2686

; <label>:2670                                    ; preds = %2634
  %2671 = icmp eq i32 %2602, 8
  br i1 %2671, label %2672, label %2686

; <label>:2672                                    ; preds = %2670
  %2673 = fmul fast float %2607, %2404
  %2674 = fmul fast float %2607, %2405
  %2675 = fadd fast float %2673, %1793
  %2676 = fadd fast float %2674, %1794
  %2677 = call float @dx.op.binary.f32(i32 36, float %1803, float %2406)  ; FMin(a,b)
  %2678 = fsub fast float %2677, %1803
  %2679 = fmul fast float %2678, %2610
  %2680 = fadd fast float %2679, %1803
  %2681 = fsub fast float %2403, %1802
  %2682 = fmul fast float %2613, %2681
  %2683 = fadd fast float %2682, %1802
  %2684 = fmul fast float %2616, %2482
  %2685 = fadd fast float %2684, %1804
  br label %2686

; <label>:2686                                    ; preds = %2672, %2670, %2636, %2618, %2593, %2102, %1806, %1792
  %2687 = phi float [ %1793, %2593 ], [ %1793, %2102 ], [ %1793, %1792 ], [ %2675, %2672 ], [ %1793, %2670 ], [ %2639, %2636 ], [ %2623, %2618 ], [ %1793, %1806 ]
  %2688 = phi float [ %1794, %2593 ], [ %1794, %2102 ], [ %1794, %1792 ], [ %2676, %2672 ], [ %1794, %2670 ], [ %2640, %2636 ], [ %2624, %2618 ], [ %1794, %1806 ]
  %2689 = phi float [ %2594, %2593 ], [ %1795, %2102 ], [ %1795, %1792 ], [ %2594, %2672 ], [ %2594, %2670 ], [ %2594, %2636 ], [ %2594, %2618 ], [ %1795, %1806 ]
  %2690 = phi float [ %2595, %2593 ], [ %1796, %2102 ], [ %1796, %1792 ], [ %2595, %2672 ], [ %2595, %2670 ], [ %2595, %2636 ], [ %2595, %2618 ], [ %1796, %1806 ]
  %2691 = phi float [ %2596, %2593 ], [ %1797, %2102 ], [ %1797, %1792 ], [ %2596, %2672 ], [ %2596, %2670 ], [ %2596, %2636 ], [ %2596, %2618 ], [ %1797, %1806 ]
  %2692 = phi float [ %2597, %2593 ], [ %1798, %2102 ], [ %1798, %1792 ], [ %2597, %2672 ], [ %2597, %2670 ], [ %2597, %2636 ], [ %2597, %2618 ], [ %1798, %1806 ]
  %2693 = phi float [ %2598, %2593 ], [ %1799, %2102 ], [ %1799, %1792 ], [ %2598, %2672 ], [ %2598, %2670 ], [ %2598, %2636 ], [ %2598, %2618 ], [ %1799, %1806 ]
  %2694 = phi float [ %2599, %2593 ], [ %1800, %2102 ], [ %1800, %1792 ], [ %2599, %2672 ], [ %2599, %2670 ], [ %2599, %2636 ], [ %2599, %2618 ], [ %1800, %1806 ]
  %2695 = phi float [ %2600, %2593 ], [ %1801, %2102 ], [ %1801, %1792 ], [ %2600, %2672 ], [ %2600, %2670 ], [ %2600, %2636 ], [ %2600, %2618 ], [ %1801, %1806 ]
  %2696 = phi float [ %1802, %2593 ], [ %1802, %2102 ], [ %1802, %1792 ], [ %2683, %2672 ], [ %1802, %2670 ], [ %2667, %2636 ], [ %2630, %2618 ], [ %1802, %1806 ]
  %2697 = phi float [ %1803, %2593 ], [ %1803, %2102 ], [ %1803, %1792 ], [ %2680, %2672 ], [ %1803, %2670 ], [ %2644, %2636 ], [ %2627, %2618 ], [ %1803, %1806 ]
  %2698 = phi float [ %1804, %2593 ], [ %1804, %2102 ], [ %1804, %1792 ], [ %2685, %2672 ], [ %1804, %2670 ], [ %2669, %2636 ], [ %2633, %2618 ], [ %1804, %1806 ]
  %2699 = phi float [ %2601, %2593 ], [ %1805, %2102 ], [ %1805, %1792 ], [ %2601, %2672 ], [ %2601, %2670 ], [ %2601, %2636 ], [ %2601, %2618 ], [ %1805, %1806 ]
  br i1 %350, label %3580, label %2700

; <label>:2700                                    ; preds = %2686
  %2701 = icmp ult i32 %401, 4
  %2702 = add i32 %33, 72
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = add i32 %33, 76
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = or i32 %2707, %2704
  %2709 = icmp eq i32 %2708, 0
  br i1 %2709, label %3580, label %2710

; <label>:2710                                    ; preds = %2700
  %2711 = and i32 %2704, 262144
  %2712 = icmp ne i32 %2711, 0
  %2713 = select i1 %2712, float %36, float 1.000000e+00
  %2714 = select i1 %2712, float %37, float 0.000000e+00
  %2715 = select i1 %2712, float %38, float 0.000000e+00
  %2716 = select i1 %2712, float %39, float 1.000000e+00
  %2717 = select i1 %2712, float %40, float %56
  %2718 = select i1 %2712, float %41, float %57
  %2719 = add i32 %33, 332
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = lshr i32 %2721, 16
  %2723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2722)  ; LegacyF16ToF32(value)
  %2724 = fmul fast float %2723, 0x3F50624DE0000000
  %2725 = add i32 %33, 136
  %2726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.i32 %2726, 0
  %2728 = lshr i32 %2727, 16
  %2729 = and i32 %2728, 255
  %2730 = lshr i32 %2727, 24
  %2731 = add i32 %33, 340
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = and i32 %2733, 65535
  %2735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2734)  ; LegacyF16ToF32(value)
  %2736 = lshr i32 %2733, 16
  %2737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2736)  ; LegacyF16ToF32(value)
  %2738 = add i32 %33, 80
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = lshr i32 %2740, 22
  %2742 = shl nuw nsw i32 %2741, 5
  %2743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2742)  ; LegacyF16ToF32(value)
  %2744 = shl i32 %2740, 4
  %2745 = and i32 %2744, 32752
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = lshr i32 %2740, 7
  %2748 = and i32 %2747, 32752
  %2749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2748)  ; LegacyF16ToF32(value)
  %2750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2751 = extractvalue %dx.types.CBufRet.f32 %2750, 3
  %2752 = fmul fast float %2751, 1.000000e+03
  %2753 = fmul fast float %340, %2752
  %2754 = call float @dx.op.unary.f32(i32 22, float %2753)  ; Frc(value)
  %2755 = fadd fast float %2754, %330
  %2756 = fmul fast float %341, %2752
  %2757 = call float @dx.op.unary.f32(i32 22, float %2756)  ; Frc(value)
  %2758 = fadd fast float %2757, %332
  %2759 = fmul fast float %2724, %2752
  %2760 = call float @dx.op.unary.f32(i32 22, float %2759)  ; Frc(value)
  %2761 = fmul fast float %2760, 0x401921FB60000000
  %2762 = fadd fast float %2761, %2743
  %2763 = call float @dx.op.unary.f32(i32 13, float %2762)  ; Sin(value)
  %2764 = call float @dx.op.unary.f32(i32 12, float %2762)  ; Cos(value)
  %2765 = fsub fast float -0.000000e+00, %2763
  %2766 = fadd fast float %2717, -5.000000e-01
  %2767 = fadd fast float %2718, -5.000000e-01
  %2768 = fmul fast float %2735, %2766
  %2769 = fmul fast float %2737, %2767
  %2770 = fadd fast float %2768, 5.000000e-01
  %2771 = fadd fast float %2769, 5.000000e-01
  %2772 = fmul fast float %2746, %2770
  %2773 = fmul fast float %2749, %2771
  %2774 = fmul fast float %2764, %2772
  %2775 = call float @dx.op.tertiary.f32(i32 46, float %2765, float %2773, float %2774)  ; FMad(a,b,c)
  %2776 = fmul fast float %2763, %2772
  %2777 = call float @dx.op.tertiary.f32(i32 46, float %2764, float %2773, float %2776)  ; FMad(a,b,c)
  %2778 = fadd fast float %2755, %2775
  %2779 = fadd fast float %2758, %2777
  %2780 = icmp ugt i32 %2729, 1
  %2781 = icmp ugt i32 %2727, 33554431
  %2782 = or i1 %2781, %2780
  br i1 %2782, label %2783, label %2808

; <label>:2783                                    ; preds = %2710
  %2784 = add i32 %33, 276
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = lshr i32 %2786, 16
  %2788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2787)  ; LegacyF16ToF32(value)
  %2789 = fmul fast float %2751, %2788
  %2790 = call float @dx.op.unary.f32(i32 22, float %2789)  ; Frc(value)
  %2791 = mul nuw nsw i32 %2729, %2730
  %2792 = uitofp i32 %2791 to float
  %2793 = fmul fast float %2790, %2792
  %2794 = call float @dx.op.unary.f32(i32 27, float %2793)  ; Round_ni(value)
  %2795 = fptoui float %2794 to i32
  %2796 = urem i32 %2795, %2729
  %2797 = udiv i32 %2795, %2730
  %2798 = call float @dx.op.unary.f32(i32 22, float %2778)  ; Frc(value)
  %2799 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2800 = uitofp i32 %2796 to float
  %2801 = uitofp i32 %2797 to float
  %2802 = fadd fast float %2798, %2800
  %2803 = fadd fast float %2799, %2801
  %2804 = uitofp i32 %2729 to float
  %2805 = uitofp i32 %2730 to float
  %2806 = fdiv fast float %2802, %2804
  %2807 = fdiv fast float %2803, %2805
  br label %2808

; <label>:2808                                    ; preds = %2783, %2710
  %2809 = phi float [ %2806, %2783 ], [ %2778, %2710 ]
  %2810 = phi float [ %2807, %2783 ], [ %2779, %2710 ]
  %2811 = and i32 %2704, 16777216
  %2812 = icmp eq i32 %2811, 0
  br i1 %2812, label %2922, label %2813

; <label>:2813                                    ; preds = %2808
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2818 = fadd fast float %2815, %131
  %2819 = fadd fast float %2816, %132
  %2820 = fadd fast float %2817, %133
  %2821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2822 = extractvalue %dx.types.CBufRet.f32 %2821, 0
  %2823 = call float @dx.op.unary.f32(i32 7, float %2822)  ; Saturate(value)
  %2824 = icmp eq i32 %34, 65535
  br i1 %2824, label %2919, label %2825

; <label>:2825                                    ; preds = %2813
  %2826 = lshr i32 %34, 1
  %2827 = shl i32 %2826, 2
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = and i32 %34, 1
  %2831 = icmp ne i32 %2830, 0
  %2832 = lshr i32 %2829, 16
  %2833 = and i32 %2829, 65535
  %2834 = select i1 %2831, i32 %2832, i32 %2833
  %2835 = icmp eq i32 %2834, 65535
  br i1 %2835, label %2915, label %2836

; <label>:2836                                    ; preds = %2825
  %2837 = mul nuw nsw i32 %2834, 40
  %2838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = add nuw nsw i32 %2837, 12
  %2843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.f32 %2843, 0
  %2845 = extractvalue %dx.types.ResRet.f32 %2843, 1
  %2846 = extractvalue %dx.types.ResRet.f32 %2843, 2
  %2847 = add nuw nsw i32 %2837, 24
  %2848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = extractvalue %dx.types.ResRet.f32 %2848, 1
  %2851 = extractvalue %dx.types.ResRet.f32 %2848, 2
  %2852 = add nuw nsw i32 %2837, 36
  %2853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.f32 %2853, 0
  %2855 = fsub fast float %2818, %2839
  %2856 = fsub fast float %2819, %2840
  %2857 = fsub fast float %2820, %2841
  %2858 = fmul fast float %2854, %2855
  %2859 = fmul fast float %2854, %2856
  %2860 = fmul fast float %2854, %2857
  %2861 = call float @dx.op.unary.f32(i32 27, float %2858)  ; Round_ni(value)
  %2862 = call float @dx.op.unary.f32(i32 27, float %2859)  ; Round_ni(value)
  %2863 = call float @dx.op.unary.f32(i32 27, float %2860)  ; Round_ni(value)
  %2864 = fadd fast float %2861, 5.000000e-01
  %2865 = fadd fast float %2862, 5.000000e-01
  %2866 = fadd fast float %2863, 5.000000e-01
  %2867 = fmul fast float %2864, %2844
  %2868 = fmul fast float %2865, %2845
  %2869 = fmul fast float %2866, %2846
  %2870 = shl i32 %34, 2
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = add i32 %2872, 0
  %2874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2875 = call float @dx.op.unary.f32(i32 22, float %2867)  ; Frc(value)
  %2876 = call float @dx.op.unary.f32(i32 22, float %2868)  ; Frc(value)
  %2877 = call float @dx.op.unary.f32(i32 22, float %2869)  ; Frc(value)
  %2878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2874, %dx.types.Handle %30, float %2875, float %2876, float %2877, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2879 = extractvalue %dx.types.ResRet.f32 %2878, 0
  %2880 = extractvalue %dx.types.ResRet.f32 %2878, 1
  %2881 = extractvalue %dx.types.ResRet.f32 %2878, 2
  %2882 = fmul fast float %2879, 1.023000e+03
  %2883 = fmul fast float %2880, 1.023000e+03
  %2884 = fmul fast float %2881, 1.023000e+03
  %2885 = fadd fast float %2882, 5.000000e-01
  %2886 = fadd fast float %2883, 5.000000e-01
  %2887 = fadd fast float %2884, 5.000000e-01
  %2888 = call float @dx.op.unary.f32(i32 27, float %2885)  ; Round_ni(value)
  %2889 = call float @dx.op.unary.f32(i32 27, float %2886)  ; Round_ni(value)
  %2890 = call float @dx.op.unary.f32(i32 27, float %2887)  ; Round_ni(value)
  %2891 = fsub fast float %2858, %2861
  %2892 = fsub fast float %2859, %2862
  %2893 = fsub fast float %2860, %2863
  %2894 = fmul fast float %2891, 7.500000e-01
  %2895 = fmul fast float %2892, 7.500000e-01
  %2896 = fmul fast float %2893, 7.500000e-01
  %2897 = fadd fast float %2861, 1.250000e-01
  %2898 = fadd fast float %2897, %2894
  %2899 = fadd fast float %2898, %2888
  %2900 = fadd fast float %2862, 1.250000e-01
  %2901 = fadd fast float %2900, %2895
  %2902 = fadd fast float %2901, %2889
  %2903 = fadd fast float %2863, 1.250000e-01
  %2904 = fadd fast float %2903, %2896
  %2905 = fadd fast float %2904, %2890
  %2906 = fmul fast float %2899, %2849
  %2907 = fmul fast float %2902, %2850
  %2908 = fmul fast float %2905, %2851
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = add i32 %2910, 0
  %2912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2912, %dx.types.Handle %28, float %2906, float %2907, float %2908, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  br label %2915

; <label>:2915                                    ; preds = %2836, %2825
  %2916 = phi float [ %2914, %2836 ], [ -1.000000e+00, %2825 ]
  %2917 = fadd fast float %2916, %2823
  %2918 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  br label %2919

; <label>:2919                                    ; preds = %2915, %2813
  %2920 = phi float [ %2918, %2915 ], [ %2823, %2813 ]
  %2921 = fmul fast float %2920, %396
  br label %2922

; <label>:2922                                    ; preds = %2919, %2808
  %2923 = phi float [ %2921, %2919 ], [ %396, %2808 ]
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 256
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %2974, label %2928

; <label>:2928                                    ; preds = %2922
  %2929 = add i32 %33, 436
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %2931, 0
  %2933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2933, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  %2936 = add i32 %33, 148
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = shl i32 %2938, 4
  %2940 = and i32 %2939, 32752
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = lshr i32 %2938, 7
  %2943 = and i32 %2942, 32752
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = fsub fast float 1.000000e+00, %2923
  %2946 = call float @dx.op.binary.f32(i32 35, float %2945, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2947 = bitcast float %2923 to i32
  %2948 = sitofp i32 %2947 to float
  %2949 = fadd fast float %2948, 0xC1CFBF8940000000
  %2950 = fmul fast float %2944, %2949
  %2951 = fadd fast float %2950, 0x41CFBF8940000000
  %2952 = fptosi float %2951 to i32
  %2953 = bitcast i32 %2952 to float
  %2954 = bitcast float %2946 to i32
  %2955 = sitofp i32 %2954 to float
  %2956 = fadd fast float %2955, 0xC1CFBF8940000000
  %2957 = fmul fast float %2956, %2944
  %2958 = fadd fast float %2957, 0x41CFBF8940000000
  %2959 = fptosi float %2958 to i32
  %2960 = bitcast i32 %2959 to float
  %2961 = fmul fast float %2953, %2941
  %2962 = fmul fast float %2960, %2941
  %2963 = fsub fast float %2946, %2961
  %2964 = fadd fast float %2962, %2946
  %2965 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2966 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2967 = fsub fast float %2935, %2965
  %2968 = fsub fast float %2966, %2965
  %2969 = bitcast float %2968 to i32
  %2970 = sub nsw i32 2129859010, %2969
  %2971 = bitcast i32 %2970 to float
  %2972 = fmul fast float %2971, %2967
  %2973 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  br label %2974

; <label>:2974                                    ; preds = %2928, %2922
  %2975 = phi float [ %2973, %2928 ], [ %2923, %2922 ]
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = and i32 %2977, 128
  %2979 = icmp eq i32 %2978, 0
  br i1 %2979, label %2996, label %2980

; <label>:2980                                    ; preds = %2974
  %2981 = add i32 %33, 420
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = add i32 %2983, 0
  %2985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2986 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2985, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2987 = extractvalue %dx.types.ResRet.f32 %2986, 0
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 524288
  %2991 = icmp ne i32 %2990, 0
  %2992 = fcmp fast ogt float %2987, 0x3FE0101020000000
  %2993 = select i1 %2992, float 1.000000e+00, float 0.000000e+00
  %2994 = select i1 %2991, float %2993, float %2987
  %2995 = fmul fast float %2994, %2975
  br label %2996

; <label>:2996                                    ; preds = %2980, %2974
  %2997 = phi float [ %2995, %2980 ], [ %2975, %2974 ]
  %2998 = fcmp fast ult float %2997, 0x3F70101020000000
  br i1 %2998, label %3580, label %2999

; <label>:2999                                    ; preds = %2996
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 16
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3202, label %3004

; <label>:3004                                    ; preds = %2999
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = add i32 %33, 372
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3011, %dx.types.Handle %64, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.ResRet.f32 %3012, 1
  %3015 = extractvalue %dx.types.ResRet.f32 %3012, 2
  %3016 = extractvalue %dx.types.ResRet.f32 %3012, 3
  %3017 = and i32 %3006, 255
  %3018 = uitofp i32 %3017 to float
  %3019 = lshr i32 %3006, 8
  %3020 = and i32 %3019, 255
  %3021 = uitofp i32 %3020 to float
  %3022 = fmul fast float %3016, %3018
  %3023 = fadd fast float %3022, %3021
  %3024 = fmul fast float %3023, 0x3F70101000000000
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %3026, 512
  %3028 = icmp eq i32 %3027, 0
  br i1 %3028, label %3037, label %3029

; <label>:3029                                    ; preds = %3004
  %3030 = add i32 %33, 452
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3030, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = add i32 %3032, 0
  %3034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3034, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3036 = extractvalue %dx.types.ResRet.f32 %3035, 0
  br label %3037

; <label>:3037                                    ; preds = %3029, %3004
  %3038 = phi float [ %3036, %3029 ], [ 1.000000e+00, %3004 ]
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = and i32 %3040, 33554432
  %3042 = icmp eq i32 %3041, 0
  br i1 %3042, label %3149, label %3043

; <label>:3043                                    ; preds = %3037
  %3044 = add i32 %33, 272
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = and i32 %3046, 65535
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = lshr i32 %3046, 16
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = add i32 %33, 276
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = and i32 %3053, 65535
  %3055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3054)  ; LegacyF16ToF32(value)
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = lshr i32 %3057, 24
  %3059 = uitofp i32 %3058 to float
  %3060 = fmul fast float %3059, 0x3F70101020000000
  %3061 = and i32 %3057, 255
  %3062 = uitofp i32 %3061 to float
  %3063 = fmul fast float %3062, 0x3F70101020000000
  %3064 = lshr i32 %3057, 8
  %3065 = and i32 %3064, 255
  %3066 = uitofp i32 %3065 to float
  %3067 = fmul fast float %3066, 0x3F70101020000000
  %3068 = lshr i32 %3057, 16
  %3069 = and i32 %3068, 255
  %3070 = uitofp i32 %3069 to float
  %3071 = fmul fast float %3070, 0x3F70101020000000
  %3072 = add i32 %33, 268
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = lshr i32 %3074, 24
  %3076 = uitofp i32 %3075 to float
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = and i32 %3074, 255
  %3079 = uitofp i32 %3078 to float
  %3080 = fmul fast float %3079, 0x3F70101020000000
  %3081 = lshr i32 %3074, 8
  %3082 = and i32 %3081, 255
  %3083 = uitofp i32 %3082 to float
  %3084 = fmul fast float %3083, 0x3F70101020000000
  %3085 = lshr i32 %3074, 16
  %3086 = and i32 %3085, 255
  %3087 = uitofp i32 %3086 to float
  %3088 = fmul fast float %3087, 0x3F70101020000000
  %3089 = bitcast float %3013 to i32
  %3090 = ashr i32 %3089, 1
  %3091 = sub nsw i32 1597463174, %3090
  %3092 = bitcast i32 %3091 to float
  %3093 = fmul fast float %3013, 5.000000e-01
  %3094 = fmul fast float %3092, %3092
  %3095 = fmul fast float %3094, %3093
  %3096 = fsub fast float 1.500000e+00, %3095
  %3097 = fmul fast float %3092, %3013
  %3098 = fmul fast float %3097, %3096
  %3099 = bitcast float %3014 to i32
  %3100 = ashr i32 %3099, 1
  %3101 = sub nsw i32 1597463174, %3100
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3014, 5.000000e-01
  %3104 = fmul fast float %3102, %3102
  %3105 = fmul fast float %3104, %3103
  %3106 = fsub fast float 1.500000e+00, %3105
  %3107 = fmul fast float %3102, %3014
  %3108 = fmul fast float %3107, %3106
  %3109 = bitcast float %3015 to i32
  %3110 = ashr i32 %3109, 1
  %3111 = sub nsw i32 1597463174, %3110
  %3112 = bitcast i32 %3111 to float
  %3113 = fmul fast float %3015, 5.000000e-01
  %3114 = fmul fast float %3112, %3112
  %3115 = fmul fast float %3114, %3113
  %3116 = fsub fast float 1.500000e+00, %3115
  %3117 = fmul fast float %3112, %3015
  %3118 = fmul fast float %3117, %3116
  %3119 = fsub fast float %3098, %3080
  %3120 = fsub fast float %3108, %3084
  %3121 = fsub fast float %3118, %3088
  %3122 = fmul fast float %3119, %3048
  %3123 = fmul fast float %3120, %3050
  %3124 = fmul fast float %3121, %3055
  %3125 = fadd fast float %3122, %3063
  %3126 = fadd fast float %3123, %3067
  %3127 = fadd fast float %3124, %3071
  %3128 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  %3129 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3130 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3131 = fmul fast float %3128, %3128
  %3132 = fmul fast float %3129, %3129
  %3133 = fmul fast float %3130, %3130
  %3134 = fsub fast float %3131, %3013
  %3135 = fsub fast float %3132, %3014
  %3136 = fsub fast float %3133, %3015
  %3137 = fmul fast float %3134, %3038
  %3138 = fmul fast float %3135, %3038
  %3139 = fmul fast float %3136, %3038
  %3140 = fadd fast float %3137, %3013
  %3141 = fadd fast float %3138, %3014
  %3142 = fadd fast float %3139, %3015
  %3143 = fadd fast float %3060, %3024
  %3144 = fsub fast float %3143, %3077
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = fsub fast float %3145, %3024
  %3147 = fmul fast float %3146, %3038
  %3148 = fadd fast float %3147, %3024
  br label %3202

; <label>:3149                                    ; preds = %3037
  %3150 = and i32 %3040, 134217728
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3186, label %3152

; <label>:3152                                    ; preds = %3149
  %3153 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3154 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3155 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3156 = fadd fast float %3153, -5.000000e-01
  %3157 = fadd fast float %3154, -5.000000e-01
  %3158 = fadd fast float %3155, -5.000000e-01
  %3159 = fmul fast float %3156, %3038
  %3160 = fmul fast float %3157, %3038
  %3161 = fmul fast float %3158, %3038
  %3162 = fadd fast float %3159, 5.000000e-01
  %3163 = fadd fast float %3160, 5.000000e-01
  %3164 = fadd fast float %3161, 5.000000e-01
  %3165 = call float @dx.op.unary.f32(i32 24, float %3013)  ; Sqrt(value)
  %3166 = call float @dx.op.unary.f32(i32 24, float %3014)  ; Sqrt(value)
  %3167 = call float @dx.op.unary.f32(i32 24, float %3015)  ; Sqrt(value)
  %3168 = fmul fast float %3162, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3165
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3165
  %3173 = fmul fast float %3163, 2.000000e+00
  %3174 = fsub fast float 1.000000e+00, %3173
  %3175 = fmul fast float %3174, %3166
  %3176 = fadd fast float %3175, %3173
  %3177 = fmul fast float %3176, %3166
  %3178 = fmul fast float %3164, 2.000000e+00
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = fmul fast float %3179, %3167
  %3181 = fadd fast float %3180, %3178
  %3182 = fmul fast float %3181, %3167
  %3183 = fmul fast float %3172, %3172
  %3184 = fmul fast float %3177, %3177
  %3185 = fmul fast float %3182, %3182
  br label %3202

; <label>:3186                                    ; preds = %3149
  %3187 = fmul fast float %317, %317
  %3188 = fmul fast float %321, %321
  %3189 = fmul fast float %325, %325
  %3190 = fadd fast float %3187, -1.000000e+00
  %3191 = fadd fast float %3188, -1.000000e+00
  %3192 = fadd fast float %3189, -1.000000e+00
  %3193 = fmul fast float %3038, %3190
  %3194 = fmul fast float %3038, %3191
  %3195 = fmul fast float %3038, %3192
  %3196 = fadd fast float %3193, 1.000000e+00
  %3197 = fadd fast float %3194, 1.000000e+00
  %3198 = fadd fast float %3195, 1.000000e+00
  %3199 = fmul fast float %3196, %3013
  %3200 = fmul fast float %3197, %3014
  %3201 = fmul fast float %3198, %3015
  br label %3202

; <label>:3202                                    ; preds = %3186, %3152, %3043, %2999
  %3203 = phi float [ %3148, %3043 ], [ %3024, %3152 ], [ %3024, %3186 ], [ 0x3FA23C0BE0000000, %2999 ]
  %3204 = phi float [ %3140, %3043 ], [ %3183, %3152 ], [ %3199, %3186 ], [ 1.000000e+00, %2999 ]
  %3205 = phi float [ %3141, %3043 ], [ %3184, %3152 ], [ %3200, %3186 ], [ 1.000000e+00, %2999 ]
  %3206 = phi float [ %3142, %3043 ], [ %3185, %3152 ], [ %3201, %3186 ], [ 1.000000e+00, %2999 ]
  %3207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.i32 %3207, 1
  %3209 = and i32 %3208, 1
  %3210 = icmp ne i32 %3209, 0
  %3211 = add i32 %33, 356
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 32
  %3215 = icmp ne i32 %3214, 0
  %3216 = and i1 %3210, %3215
  %3217 = select i1 %3216, float 1.000000e+00, float %3204
  %3218 = select i1 %3216, float 0x3FD3333340000000, float %3205
  %3219 = select i1 %3216, float 0x3FD3333340000000, float %3206
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = and i32 %3221, 32
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3296, label %3224

; <label>:3224                                    ; preds = %3202
  %3225 = add i32 %33, 140
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = add i32 %33, 388
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %3230, 0
  %3232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3232, %dx.types.Handle %64, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.ResRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.ResRet.f32 %3233, 2
  %3237 = extractvalue %dx.types.ResRet.f32 %3233, 3
  %3238 = and i32 %3227, 255
  %3239 = uitofp i32 %3238 to float
  %3240 = lshr i32 %3227, 8
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = lshr i32 %3227, 16
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3245, 0x3F70101000000000
  %3247 = fmul fast float %3234, %3239
  %3248 = fadd fast float %3247, %3242
  %3249 = fmul fast float %3248, 0x3F70101000000000
  %3250 = fadd fast float %3235, -5.000000e-01
  %3251 = fadd fast float %3237, -5.000000e-01
  %3252 = fmul fast float %3250, %3246
  %3253 = fmul fast float %3251, %3246
  %3254 = fadd fast float %3252, 5.000000e-01
  %3255 = fadd fast float %3253, 5.000000e-01
  %3256 = fmul fast float %3254, 2.000000e+00
  %3257 = fadd fast float %3256, -1.000000e+00
  %3258 = fmul fast float %3255, 2.000000e+00
  %3259 = fadd fast float %3258, -1.000000e+00
  %3260 = fadd fast float %3257, %3259
  %3261 = fmul fast float %3260, 5.000000e-01
  %3262 = fsub fast float %3257, %3259
  %3263 = fmul fast float %3262, 5.000000e-01
  %3264 = call float @dx.op.unary.f32(i32 6, float %3261)  ; FAbs(value)
  %3265 = fsub fast float 1.000000e+00, %3264
  %3266 = call float @dx.op.unary.f32(i32 6, float %3263)  ; FAbs(value)
  %3267 = fsub fast float %3265, %3266
  %3268 = call float @dx.op.dot3.f32(i32 55, float %3261, float %3263, float %3267, float %3261, float %3263, float %3267)  ; Dot3(ax,ay,az,bx,by,bz)
  %3269 = call float @dx.op.unary.f32(i32 25, float %3268)  ; Rsqrt(value)
  %3270 = fmul fast float %3261, %3269
  %3271 = fmul fast float %3263, %3269
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = and i32 %3273, 67108864
  %3275 = icmp eq i32 %3274, 0
  br i1 %3275, label %3292, label %3276

; <label>:3276                                    ; preds = %3224
  %3277 = add i32 %33, 328
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 65535
  %3281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3280)  ; LegacyF16ToF32(value)
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, 65535
  %3285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3284)  ; LegacyF16ToF32(value)
  %3286 = lshr i32 %3279, 16
  %3287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3286)  ; LegacyF16ToF32(value)
  %3288 = fsub fast float %3249, %3287
  %3289 = fmul fast float %3288, %3281
  %3290 = fadd fast float %3289, %3285
  %3291 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  br label %3292

; <label>:3292                                    ; preds = %3276, %3224
  %3293 = phi float [ %3291, %3276 ], [ %3249, %3224 ]
  %3294 = call float @dx.op.dot2.f32(i32 54, float %3270, float %3271, float %2713, float %2714)  ; Dot2(ax,ay,bx,by)
  %3295 = call float @dx.op.dot2.f32(i32 54, float %3270, float %3271, float %2715, float %2716)  ; Dot2(ax,ay,bx,by)
  br label %3296

; <label>:3296                                    ; preds = %3292, %3202
  %3297 = phi float [ %3293, %3292 ], [ 0x3FD6666660000000, %3202 ]
  %3298 = phi float [ %3294, %3292 ], [ 0.000000e+00, %3202 ]
  %3299 = phi float [ %3295, %3292 ], [ 0.000000e+00, %3202 ]
  %3300 = phi float [ %3236, %3292 ], [ 1.000000e+00, %3202 ]
  %3301 = add i32 %33, 208
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = lshr i32 %3303, 22
  %3305 = shl nuw nsw i32 %3304, 5
  %3306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3305)  ; LegacyF16ToF32(value)
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 64
  %3310 = icmp eq i32 %3309, 0
  br i1 %3310, label %3344, label %3311

; <label>:3311                                    ; preds = %3296
  %3312 = add i32 %33, 404
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = add i32 %3314, 0
  %3316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 131072
  %3320 = icmp eq i32 %3319, 0
  %3321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3316, %dx.types.Handle %64, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = fmul fast float %3322, %305
  %3326 = fmul fast float %3323, %308
  %3327 = fmul fast float %3324, %311
  br i1 %3320, label %3334, label %3328

; <label>:3328                                    ; preds = %3311
  %3329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3330 = extractvalue %dx.types.CBufRet.f32 %3329, 0
  %3331 = fmul fast float %3330, %3325
  %3332 = fmul fast float %3330, %3326
  %3333 = fmul fast float %3330, %3327
  br label %3334

; <label>:3334                                    ; preds = %3328, %3311
  %3335 = phi float [ %3331, %3328 ], [ %3325, %3311 ]
  %3336 = phi float [ %3332, %3328 ], [ %3326, %3311 ]
  %3337 = phi float [ %3333, %3328 ], [ %3327, %3311 ]
  %3338 = fmul fast float %3335, %3306
  %3339 = select i1 %173, float %3338, float %3335
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3339, float %3336, float %3337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = select i1 %173, float 0.000000e+00, float %3335
  %3342 = select i1 %173, float %3340, float %3336
  %3343 = select i1 %173, float 0.000000e+00, float %3337
  br label %3344

; <label>:3344                                    ; preds = %3334, %3296
  %3345 = phi float [ %3341, %3334 ], [ 0.000000e+00, %3296 ]
  %3346 = phi float [ %3342, %3334 ], [ 0.000000e+00, %3296 ]
  %3347 = phi float [ %3343, %3334 ], [ 0.000000e+00, %3296 ]
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = and i32 %3349, 26624
  %3351 = icmp eq i32 %3350, 0
  br i1 %3351, label %3375, label %3352

; <label>:3352                                    ; preds = %3344
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = and i32 %3354, 16384
  %3356 = icmp eq i32 %3355, 0
  br i1 %3356, label %3375, label %3357

; <label>:3357                                    ; preds = %3352
  %3358 = and i32 %3354, 1048576
  %3359 = icmp ne i32 %3358, 0
  %3360 = add i32 %33, 468
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = add i32 %3362, 0
  %3364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3364, %dx.types.Handle %65, float %2809, float %2810, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 0
  %3367 = add i32 %33, 144
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = lshr i32 %3369, 24
  %3371 = uitofp i32 %3370 to float
  %3372 = fmul fast float %3366, 0x3F70101020000000
  %3373 = select i1 %3359, float 0x3F70101020000000, float %3372
  %3374 = fmul fast float %3373, %3371
  br label %3375

; <label>:3375                                    ; preds = %3357, %3352, %3344
  %3376 = phi float [ %3374, %3357 ], [ 0.000000e+00, %3352 ], [ 0.000000e+00, %3344 ]
  %3377 = add i32 %33, 144
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = and i32 %3379, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = lshr i32 %3379, 8
  %3383 = and i32 %3382, 255
  %3384 = uitofp i32 %3383 to float
  %3385 = call float @dx.op.dot3.f32(i32 55, float %3217, float %3218, float %3219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3386 = fmul fast float %3384, %3385
  %3387 = fadd fast float %3386, %3381
  %3388 = fmul fast float %3387, 0x3F70101020000000
  %3389 = call float @dx.op.unary.f32(i32 7, float %3388)  ; Saturate(value)
  br i1 %2701, label %3390, label %3398

; <label>:3390                                    ; preds = %3375
  %3391 = fsub fast float 1.000000e+00, %2997
  %3392 = fmul fast float %3391, %2689
  %3393 = fmul fast float %3391, %2690
  %3394 = fmul fast float %3391, %2691
  %3395 = fmul fast float %3391, %2692
  %3396 = fmul fast float %3391, %2693
  %3397 = fmul fast float %3391, %2694
  br label %3398

; <label>:3398                                    ; preds = %3390, %3375
  %3399 = phi float [ %3392, %3390 ], [ %2689, %3375 ]
  %3400 = phi float [ %3393, %3390 ], [ %2690, %3375 ]
  %3401 = phi float [ %3394, %3390 ], [ %2691, %3375 ]
  %3402 = phi float [ %3395, %3390 ], [ %2692, %3375 ]
  %3403 = phi float [ %3396, %3390 ], [ %2693, %3375 ]
  %3404 = phi float [ %3397, %3390 ], [ %2694, %3375 ]
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 3
  %3408 = icmp eq i32 %3407, 3
  br i1 %3408, label %3487, label %3409

; <label>:3409                                    ; preds = %3398
  %3410 = and i32 %3406, 16
  %3411 = icmp ne i32 %3410, 0
  %3412 = select i1 %3411, float %2997, float 0.000000e+00
  %3413 = icmp eq i32 %3407, 0
  br i1 %3413, label %3414, label %3442

; <label>:3414                                    ; preds = %3409
  %3415 = and i32 %3406, 64
  %3416 = icmp ne i32 %3415, 0
  %3417 = select i1 %3416, float %2997, float 0.000000e+00
  %3418 = fsub fast float %3217, %3399
  %3419 = fsub fast float %3218, %3400
  %3420 = fsub fast float %3219, %3401
  %3421 = fmul fast float %3412, %3418
  %3422 = fmul fast float %3412, %3419
  %3423 = fmul fast float %3412, %3420
  %3424 = fadd fast float %3421, %3399
  %3425 = fadd fast float %3422, %3400
  %3426 = fadd fast float %3423, %3401
  %3427 = fsub fast float %3203, %2695
  %3428 = fmul fast float %3412, %3427
  %3429 = fadd fast float %3428, %2695
  %3430 = fsub fast float %3345, %3402
  %3431 = fsub fast float %3346, %3403
  %3432 = fsub fast float %3347, %3404
  %3433 = fmul fast float %3417, %3430
  %3434 = fmul fast float %3417, %3431
  %3435 = fmul fast float %3417, %3432
  %3436 = fadd fast float %3433, %3402
  %3437 = fadd fast float %3434, %3403
  %3438 = fadd fast float %3435, %3404
  %3439 = fsub fast float %3389, %2699
  %3440 = fmul fast float %3412, %3439
  %3441 = fadd fast float %3440, %2699
  br label %3487

; <label>:3442                                    ; preds = %3409
  %3443 = icmp eq i32 %3407, 1
  br i1 %3443, label %3444, label %3457

; <label>:3444                                    ; preds = %3442
  %3445 = fadd fast float %3217, -1.000000e+00
  %3446 = fadd fast float %3218, -1.000000e+00
  %3447 = fadd fast float %3219, -1.000000e+00
  %3448 = fmul fast float %3412, %3445
  %3449 = fmul fast float %3412, %3446
  %3450 = fmul fast float %3412, %3447
  %3451 = fadd fast float %3448, 1.000000e+00
  %3452 = fadd fast float %3449, 1.000000e+00
  %3453 = fadd fast float %3450, 1.000000e+00
  %3454 = fmul fast float %3451, %3399
  %3455 = fmul fast float %3452, %3400
  %3456 = fmul fast float %3453, %3401
  br label %3487

; <label>:3457                                    ; preds = %3442
  %3458 = icmp eq i32 %3407, 2
  br i1 %3458, label %3459, label %3487

; <label>:3459                                    ; preds = %3457
  %3460 = call float @dx.op.unary.f32(i32 24, float %3217)  ; Sqrt(value)
  %3461 = call float @dx.op.unary.f32(i32 24, float %3218)  ; Sqrt(value)
  %3462 = call float @dx.op.unary.f32(i32 24, float %3219)  ; Sqrt(value)
  %3463 = fadd fast float %3460, -5.000000e-01
  %3464 = fadd fast float %3461, -5.000000e-01
  %3465 = fadd fast float %3462, -5.000000e-01
  %3466 = fmul fast float %3463, %3412
  %3467 = fmul fast float %3464, %3412
  %3468 = fmul fast float %3465, %3412
  %3469 = fadd fast float %3466, 5.000000e-01
  %3470 = fadd fast float %3467, 5.000000e-01
  %3471 = fadd fast float %3468, 5.000000e-01
  %3472 = fmul fast float %3469, 2.000000e+00
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fmul fast float %3473, %3399
  %3475 = fadd fast float %3474, %3472
  %3476 = fmul fast float %3475, %3399
  %3477 = fmul fast float %3470, 2.000000e+00
  %3478 = fsub fast float 1.000000e+00, %3477
  %3479 = fmul fast float %3478, %3400
  %3480 = fadd fast float %3479, %3477
  %3481 = fmul fast float %3480, %3400
  %3482 = fmul fast float %3471, 2.000000e+00
  %3483 = fsub fast float 1.000000e+00, %3482
  %3484 = fmul fast float %3483, %3401
  %3485 = fadd fast float %3484, %3482
  %3486 = fmul fast float %3485, %3401
  br label %3487

; <label>:3487                                    ; preds = %3459, %3457, %3444, %3414, %3398
  %3488 = phi float [ %3399, %3398 ], [ %3476, %3459 ], [ %3399, %3457 ], [ %3454, %3444 ], [ %3424, %3414 ]
  %3489 = phi float [ %3400, %3398 ], [ %3481, %3459 ], [ %3400, %3457 ], [ %3455, %3444 ], [ %3425, %3414 ]
  %3490 = phi float [ %3401, %3398 ], [ %3486, %3459 ], [ %3401, %3457 ], [ %3456, %3444 ], [ %3426, %3414 ]
  %3491 = phi float [ %3402, %3398 ], [ %3402, %3459 ], [ %3402, %3457 ], [ %3402, %3444 ], [ %3436, %3414 ]
  %3492 = phi float [ %3403, %3398 ], [ %3403, %3459 ], [ %3403, %3457 ], [ %3403, %3444 ], [ %3437, %3414 ]
  %3493 = phi float [ %3404, %3398 ], [ %3404, %3459 ], [ %3404, %3457 ], [ %3404, %3444 ], [ %3438, %3414 ]
  %3494 = phi float [ %2695, %3398 ], [ %2695, %3459 ], [ %2695, %3457 ], [ %2695, %3444 ], [ %3429, %3414 ]
  %3495 = phi float [ %2699, %3398 ], [ %2699, %3459 ], [ %2699, %3457 ], [ %2699, %3444 ], [ %3441, %3414 ]
  %3496 = and i32 %3406, 12
  %3497 = icmp eq i32 %3496, 12
  br i1 %3497, label %3580, label %3498

; <label>:3498                                    ; preds = %3487
  %3499 = and i32 %3406, 2097184
  %3500 = icmp eq i32 %3499, 2097184
  %3501 = select i1 %3500, float %2997, float 0.000000e+00
  %3502 = and i32 %3406, 4194336
  %3503 = icmp eq i32 %3502, 4194336
  %3504 = select i1 %3503, float %2997, float 0.000000e+00
  %3505 = and i32 %3406, 8388640
  %3506 = icmp eq i32 %3505, 8388640
  %3507 = select i1 %3506, float %2997, float 0.000000e+00
  %3508 = and i32 %3406, 16384
  %3509 = icmp ne i32 %3508, 0
  %3510 = select i1 %3509, float %2997, float 0.000000e+00
  %3511 = icmp eq i32 %3496, 0
  br i1 %3511, label %3512, label %3528

; <label>:3512                                    ; preds = %3498
  %3513 = fsub fast float %3298, %2687
  %3514 = fsub fast float %3299, %2688
  %3515 = fmul fast float %3501, %3513
  %3516 = fmul fast float %3501, %3514
  %3517 = fadd fast float %3515, %2687
  %3518 = fadd fast float %3516, %2688
  %3519 = fsub fast float %3300, %2697
  %3520 = fmul fast float %3504, %3519
  %3521 = fadd fast float %3520, %2697
  %3522 = fsub fast float %3297, %2696
  %3523 = fmul fast float %3507, %3522
  %3524 = fadd fast float %3523, %2696
  %3525 = fsub fast float %3376, %2698
  %3526 = fmul fast float %3510, %3525
  %3527 = fadd fast float %3526, %2698
  br label %3580

; <label>:3528                                    ; preds = %3498
  %3529 = icmp eq i32 %3496, 4
  br i1 %3529, label %3530, label %3564

; <label>:3530                                    ; preds = %3528
  %3531 = fmul fast float %3501, %3298
  %3532 = fmul fast float %3501, %3299
  %3533 = fadd fast float %3531, %2687
  %3534 = fadd fast float %3532, %2688
  %3535 = call float @dx.op.binary.f32(i32 36, float %2697, float %3300)  ; FMin(a,b)
  %3536 = fsub fast float %3535, %2697
  %3537 = fmul fast float %3536, %3504
  %3538 = fadd fast float %3537, %2697
  %3539 = fadd fast float %3297, %2696
  %3540 = fmul fast float %3539, 0x3FF337FAE0000000
  %3541 = fmul fast float %2696, %2696
  %3542 = fmul fast float %3297, %3297
  %3543 = fadd fast float %3542, %3541
  %3544 = fmul fast float %3543, 0x3FE5152B00000000
  %3545 = fmul fast float %2696, 0xBFCC1F85E0000000
  %3546 = fmul fast float %3545, %3297
  %3547 = fadd fast float %3546, 0xBFE1363700000000
  %3548 = fadd fast float %3547, %3540
  %3549 = fsub fast float %3548, %3544
  %3550 = fmul fast float %3539, 0x3FBA6F0D00000000
  %3551 = fmul fast float %3543, 0x3FD0432880000000
  %3552 = fmul fast float %2696, 0xBFEF110800000000
  %3553 = fmul fast float %3552, %3297
  %3554 = fadd fast float %3553, 1.000000e+00
  %3555 = fsub fast float %3554, %3550
  %3556 = fadd fast float %3555, %3551
  %3557 = fdiv fast float %3549, %3556
  %3558 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3559 = fsub fast float %3558, %2696
  %3560 = fmul fast float %3559, %3507
  %3561 = fadd fast float %3560, %2696
  %3562 = fmul fast float %3510, %3376
  %3563 = fadd fast float %3562, %2698
  br label %3580

; <label>:3564                                    ; preds = %3528
  %3565 = icmp eq i32 %3496, 8
  br i1 %3565, label %3566, label %3580

; <label>:3566                                    ; preds = %3564
  %3567 = fmul fast float %3501, %3298
  %3568 = fmul fast float %3501, %3299
  %3569 = fadd fast float %3567, %2687
  %3570 = fadd fast float %3568, %2688
  %3571 = call float @dx.op.binary.f32(i32 36, float %2697, float %3300)  ; FMin(a,b)
  %3572 = fsub fast float %3571, %2697
  %3573 = fmul fast float %3572, %3504
  %3574 = fadd fast float %3573, %2697
  %3575 = fsub fast float %3297, %2696
  %3576 = fmul fast float %3507, %3575
  %3577 = fadd fast float %3576, %2696
  %3578 = fmul fast float %3510, %3376
  %3579 = fadd fast float %3578, %2698
  br label %3580

; <label>:3580                                    ; preds = %3566, %3564, %3530, %3512, %3487, %2996, %2700, %2686
  %3581 = phi float [ %2687, %3487 ], [ %2687, %2996 ], [ %2687, %2686 ], [ %2687, %2700 ], [ %3517, %3512 ], [ %3533, %3530 ], [ %2687, %3564 ], [ %3569, %3566 ]
  %3582 = phi float [ %2688, %3487 ], [ %2688, %2996 ], [ %2688, %2686 ], [ %2688, %2700 ], [ %3518, %3512 ], [ %3534, %3530 ], [ %2688, %3564 ], [ %3570, %3566 ]
  %3583 = phi float [ %3488, %3487 ], [ %2689, %2996 ], [ %2689, %2686 ], [ %2689, %2700 ], [ %3488, %3512 ], [ %3488, %3530 ], [ %3488, %3564 ], [ %3488, %3566 ]
  %3584 = phi float [ %3489, %3487 ], [ %2690, %2996 ], [ %2690, %2686 ], [ %2690, %2700 ], [ %3489, %3512 ], [ %3489, %3530 ], [ %3489, %3564 ], [ %3489, %3566 ]
  %3585 = phi float [ %3490, %3487 ], [ %2691, %2996 ], [ %2691, %2686 ], [ %2691, %2700 ], [ %3490, %3512 ], [ %3490, %3530 ], [ %3490, %3564 ], [ %3490, %3566 ]
  %3586 = phi float [ %3491, %3487 ], [ %2692, %2996 ], [ %2692, %2686 ], [ %2692, %2700 ], [ %3491, %3512 ], [ %3491, %3530 ], [ %3491, %3564 ], [ %3491, %3566 ]
  %3587 = phi float [ %3492, %3487 ], [ %2693, %2996 ], [ %2693, %2686 ], [ %2693, %2700 ], [ %3492, %3512 ], [ %3492, %3530 ], [ %3492, %3564 ], [ %3492, %3566 ]
  %3588 = phi float [ %3493, %3487 ], [ %2694, %2996 ], [ %2694, %2686 ], [ %2694, %2700 ], [ %3493, %3512 ], [ %3493, %3530 ], [ %3493, %3564 ], [ %3493, %3566 ]
  %3589 = phi float [ %3494, %3487 ], [ %2695, %2996 ], [ %2695, %2686 ], [ %2695, %2700 ], [ %3494, %3512 ], [ %3494, %3530 ], [ %3494, %3564 ], [ %3494, %3566 ]
  %3590 = phi float [ %2696, %3487 ], [ %2696, %2996 ], [ %2696, %2686 ], [ %2696, %2700 ], [ %3524, %3512 ], [ %3561, %3530 ], [ %2696, %3564 ], [ %3577, %3566 ]
  %3591 = phi float [ %2697, %3487 ], [ %2697, %2996 ], [ %2697, %2686 ], [ %2697, %2700 ], [ %3521, %3512 ], [ %3538, %3530 ], [ %2697, %3564 ], [ %3574, %3566 ]
  %3592 = phi float [ %2698, %3487 ], [ %2698, %2996 ], [ %2698, %2686 ], [ %2698, %2700 ], [ %3527, %3512 ], [ %3563, %3530 ], [ %2698, %3564 ], [ %3579, %3566 ]
  %3593 = phi float [ %3495, %3487 ], [ %2699, %2996 ], [ %2699, %2686 ], [ %2699, %2700 ], [ %3495, %3512 ], [ %3495, %3530 ], [ %3495, %3564 ], [ %3495, %3566 ]
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = call float @dx.op.dot2.f32(i32 54, float %3581, float %3582, float %3581, float %3582)  ; Dot2(ax,ay,bx,by)
  %3597 = fmul fast float %3596, 0x3FE3333340000000
  %3598 = fsub fast float 1.000000e+00, %3597
  %3599 = call float @dx.op.dot3.f32(i32 55, float %3581, float %3582, float %3598, float %3581, float %3582, float %3598)  ; Dot3(ax,ay,az,bx,by,bz)
  %3600 = call float @dx.op.unary.f32(i32 25, float %3599)  ; Rsqrt(value)
  %3601 = fmul fast float %3600, %3581
  %3602 = fmul fast float %3600, %3582
  %3603 = fmul fast float %3598, %3600
  %3604 = fmul fast float %3603, %75
  %3605 = fmul fast float %3603, %76
  %3606 = fmul fast float %3603, %77
  %3607 = fmul fast float %3601, %49
  %3608 = fmul fast float %3601, %50
  %3609 = fmul fast float %3601, %51
  %3610 = fadd fast float %3604, %3607
  %3611 = fadd fast float %3605, %3608
  %3612 = fadd fast float %3606, %3609
  %3613 = fmul fast float %87, %3602
  %3614 = fmul fast float %88, %3602
  %3615 = fmul fast float %89, %3602
  %3616 = fadd fast float %3610, %3613
  %3617 = fadd fast float %3611, %3614
  %3618 = fadd fast float %3612, %3615
  %3619 = call float @dx.op.dot3.f32(i32 55, float %3616, float %3617, float %3618, float %3616, float %3617, float %3618)  ; Dot3(ax,ay,az,bx,by,bz)
  %3620 = call float @dx.op.unary.f32(i32 25, float %3619)  ; Rsqrt(value)
  %3621 = fmul fast float %3616, %3620
  %3622 = fmul fast float %3617, %3620
  %3623 = fmul fast float %3618, %3620
  %3624 = and i32 %35, 1
  %3625 = icmp eq i32 %3624, 0
  br i1 %3625, label %3626, label %4134

; <label>:3626                                    ; preds = %3580
  %3627 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3628 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3629 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3630 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3631 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3632 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3633 = fadd fast float %3627, %131
  %3634 = fadd fast float %3628, %132
  %3635 = fadd fast float %3629, %133
  %3636 = fadd fast float %3630, %131
  %3637 = fadd fast float %3631, %132
  %3638 = fadd fast float %3632, %133
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.CBufRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.CBufRet.f32 %3639, 2
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 2
  %3645 = extractvalue %dx.types.CBufRet.f32 %3643, 3
  %3646 = fmul fast float %3640, %68
  %3647 = fmul fast float %3646, %3644
  %3648 = fmul fast float %3641, %69
  %3649 = fmul fast float %3648, %3645
  %3650 = fptoui float %3647 to i32
  %3651 = fptoui float %3649 to i32
  %3652 = fadd fast float %3640, -1.000000e+00
  %3653 = fadd fast float %3641, -1.000000e+00
  %3654 = fptoui float %3652 to i32
  %3655 = fptoui float %3653 to i32
  %3656 = call i32 @dx.op.binary.i32(i32 40, i32 %3650, i32 %3654)  ; UMin(a,b)
  %3657 = call i32 @dx.op.binary.i32(i32 40, i32 %3651, i32 %3655)  ; UMin(a,b)
  %3658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3659 = extractvalue %dx.types.CBufRet.f32 %3658, 2
  %3660 = extractvalue %dx.types.CBufRet.f32 %3658, 3
  %3661 = fmul fast float %3659, %63
  %3662 = fsub fast float %3661, %3660
  %3663 = fadd fast float %3642, -1.000000e+00
  %3664 = call float @dx.op.binary.f32(i32 36, float %3662, float %3663)  ; FMin(a,b)
  %3665 = fptoui float %3664 to i32
  %3666 = fptoui float %3640 to i32
  %3667 = fptoui float %3641 to i32
  %3668 = mul i32 %3665, %3667
  %3669 = add i32 %3668, %3657
  %3670 = mul i32 %3669, %3666
  %3671 = add i32 %3670, %3656
  %3672 = shl i32 %3671, 2
  %3673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3672, i32 undef)  ; BufferLoad(srv,index,wot)
  %3674 = extractvalue %dx.types.ResRet.i32 %3673, 0
  %3675 = and i32 %3674, 1023
  %3676 = lshr i32 %3674, 10
  %3677 = icmp eq i32 %3675, 0
  br i1 %3677, label %4103, label %3678

; <label>:3678                                    ; preds = %3626
  %3679 = and i32 %3674, 1023
  br label %3680

; <label>:3680                                    ; preds = %3806, %3678
  %3681 = phi i32 [ %3756, %3806 ], [ 0, %3678 ]
  %3682 = phi float [ %3807, %3806 ], [ 0.000000e+00, %3678 ]
  %3683 = phi float [ %3808, %3806 ], [ %3595, %3678 ]
  %3684 = phi float [ %3809, %3806 ], [ %3593, %3678 ]
  %3685 = phi float [ %3810, %3806 ], [ %3592, %3678 ]
  %3686 = phi float [ %3811, %3806 ], [ 0.000000e+00, %3678 ]
  %3687 = phi float [ %3812, %3806 ], [ %3586, %3678 ]
  %3688 = phi float [ %3813, %3806 ], [ %3587, %3678 ]
  %3689 = phi float [ %3814, %3806 ], [ %3588, %3678 ]
  %3690 = phi float [ %3815, %3806 ], [ %3621, %3678 ]
  %3691 = phi float [ %3816, %3806 ], [ %3622, %3678 ]
  %3692 = phi float [ %3817, %3806 ], [ %3623, %3678 ]
  %3693 = phi float [ %3818, %3806 ], [ %3591, %3678 ]
  %3694 = phi float [ %3819, %3806 ], [ %3590, %3678 ]
  %3695 = phi float [ %3820, %3806 ], [ 0.000000e+00, %3678 ]
  %3696 = phi float [ %3821, %3806 ], [ %3589, %3678 ]
  %3697 = phi float [ %3822, %3806 ], [ %3583, %3678 ]
  %3698 = phi float [ %3823, %3806 ], [ %3584, %3678 ]
  %3699 = phi float [ %3824, %3806 ], [ %3585, %3678 ]
  %3700 = add nuw nsw i32 %3681, %3676
  %3701 = shl i32 %3700, 2
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = shl i32 %3703, 8
  %3705 = or i32 %3704, 48
  %3706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3710 = extractvalue %dx.types.ResRet.f32 %3706, 3
  %3711 = or i32 %3704, 64
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.i32 %3712, 1
  %3715 = or i32 %3704, 80
  %3716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3718 = extractvalue %dx.types.ResRet.f32 %3716, 3
  %3719 = or i32 %3704, 96
  %3720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3719, i32 undef)  ; BufferLoad(srv,index,wot)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = extractvalue %dx.types.ResRet.f32 %3720, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3720, 2
  %3724 = extractvalue %dx.types.ResRet.f32 %3720, 3
  %3725 = or i32 %3704, 112
  %3726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 2
  %3728 = or i32 %3704, 128
  %3729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = extractvalue %dx.types.ResRet.f32 %3729, 1
  %3732 = extractvalue %dx.types.ResRet.f32 %3729, 2
  %3733 = extractvalue %dx.types.ResRet.f32 %3729, 3
  %3734 = or i32 %3704, 144
  %3735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = extractvalue %dx.types.ResRet.f32 %3735, 1
  %3738 = extractvalue %dx.types.ResRet.f32 %3735, 2
  %3739 = extractvalue %dx.types.ResRet.f32 %3735, 3
  %3740 = or i32 %3704, 160
  %3741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3744 = extractvalue %dx.types.ResRet.f32 %3741, 2
  %3745 = extractvalue %dx.types.ResRet.f32 %3741, 3
  %3746 = or i32 %3704, 192
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3746, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = or i32 %3704, 208
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = or i32 %3704, 248
  %3753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.ResRet.f32 %3753, 1
  %3756 = add nuw nsw i32 %3681, 1
  %3757 = bitcast float %3710 to i32
  %3758 = and i32 %3757, 512
  %3759 = icmp eq i32 %3758, 0
  %3760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.f32 %3760, 0
  %3762 = extractvalue %dx.types.ResRet.f32 %3760, 1
  %3763 = extractvalue %dx.types.ResRet.f32 %3760, 2
  %3764 = extractvalue %dx.types.ResRet.f32 %3760, 3
  %3765 = call float @dx.op.dot4.f32(i32 56, float %3761, float %3762, float %3763, float %3764, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3766 = or i32 %3704, 16
  %3767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3767, 2
  %3771 = extractvalue %dx.types.ResRet.f32 %3767, 3
  %3772 = call float @dx.op.dot4.f32(i32 56, float %3768, float %3769, float %3770, float %3771, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3773 = or i32 %3704, 32
  %3774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3778 = extractvalue %dx.types.ResRet.f32 %3774, 3
  %3779 = call float @dx.op.dot4.f32(i32 56, float %3775, float %3776, float %3777, float %3778, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3780 = call float @dx.op.unary.f32(i32 27, float %3765)  ; Round_ni(value)
  %3781 = call float @dx.op.unary.f32(i32 6, float %3780)  ; FAbs(value)
  %3782 = call float @dx.op.unary.f32(i32 27, float %3772)  ; Round_ni(value)
  %3783 = call float @dx.op.unary.f32(i32 6, float %3782)  ; FAbs(value)
  %3784 = call float @dx.op.unary.f32(i32 6, float %3779)  ; FAbs(value)
  %3785 = call float @dx.op.unary.f32(i32 27, float %3784)  ; Round_ni(value)
  %3786 = fadd fast float %3783, %3781
  %3787 = fadd fast float %3786, %3785
  %3788 = fcmp fast oeq float %3787, 0.000000e+00
  %3789 = call float @dx.op.dot4.f32(i32 56, float %3761, float %3762, float %3763, float %3764, float %3633, float %3634, float %3635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3790 = call float @dx.op.dot4.f32(i32 56, float %3768, float %3769, float %3770, float %3771, float %3633, float %3634, float %3635, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3791 = call float @dx.op.dot4.f32(i32 56, float %3761, float %3762, float %3763, float %3764, float %3636, float %3637, float %3638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3792 = call float @dx.op.dot4.f32(i32 56, float %3768, float %3769, float %3770, float %3771, float %3636, float %3637, float %3638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3793 = fsub fast float %3789, %3765
  %3794 = fsub fast float %3791, %3765
  %3795 = fsub fast float %3790, %3772
  %3796 = fsub fast float %3792, %3772
  %3797 = call float @dx.op.dot3.f32(i32 55, float %3707, float %3708, float %3709, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 2
  %3800 = fadd fast float %3799, %3797
  %3801 = call float @dx.op.unary.f32(i32 7, float %3800)  ; Saturate(value)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3803 = fcmp fast ogt float %3801, %3802
  %3804 = and i1 %3788, %3803
  %3805 = and i1 %3759, %3804
  br i1 %3805, label %3826, label %3806

; <label>:3806                                    ; preds = %4089, %3907, %3826, %3680
  %3807 = phi float [ %3682, %3826 ], [ %3910, %3907 ], [ %3910, %4089 ], [ %3682, %3680 ]
  %3808 = phi float [ %3683, %3826 ], [ %3683, %3907 ], [ %4064, %4089 ], [ %3683, %3680 ]
  %3809 = phi float [ %3684, %3826 ], [ %3684, %3907 ], [ %4062, %4089 ], [ %3684, %3680 ]
  %3810 = phi float [ %3685, %3826 ], [ %3685, %3907 ], [ %4034, %4089 ], [ %3685, %3680 ]
  %3811 = phi float [ %3686, %3826 ], [ %3686, %3907 ], [ %4032, %4089 ], [ %3686, %3680 ]
  %3812 = phi float [ %3687, %3826 ], [ %3687, %3907 ], [ %4099, %4089 ], [ %3687, %3680 ]
  %3813 = phi float [ %3688, %3826 ], [ %3688, %3907 ], [ %4100, %4089 ], [ %3688, %3680 ]
  %3814 = phi float [ %3689, %3826 ], [ %3689, %3907 ], [ %4101, %4089 ], [ %3689, %3680 ]
  %3815 = phi float [ %3690, %3826 ], [ %3690, %3907 ], [ %4013, %4089 ], [ %3690, %3680 ]
  %3816 = phi float [ %3691, %3826 ], [ %3691, %3907 ], [ %4014, %4089 ], [ %3691, %3680 ]
  %3817 = phi float [ %3692, %3826 ], [ %3692, %3907 ], [ %4015, %4089 ], [ %3692, %3680 ]
  %3818 = phi float [ %3693, %3826 ], [ %3693, %3907 ], [ %4042, %4089 ], [ %3693, %3680 ]
  %3819 = phi float [ %3694, %3826 ], [ %3694, %3907 ], [ %4039, %4089 ], [ %3694, %3680 ]
  %3820 = phi float [ %3695, %3826 ], [ %3695, %3907 ], [ %4036, %4089 ], [ %3695, %3680 ]
  %3821 = phi float [ %3696, %3826 ], [ %3696, %3907 ], [ %4030, %4089 ], [ %3696, %3680 ]
  %3822 = phi float [ %3697, %3826 ], [ %3697, %3907 ], [ %4025, %4089 ], [ %3697, %3680 ]
  %3823 = phi float [ %3698, %3826 ], [ %3698, %3907 ], [ %4026, %4089 ], [ %3698, %3680 ]
  %3824 = phi float [ %3699, %3826 ], [ %3699, %3907 ], [ %4027, %4089 ], [ %3699, %3680 ]
  %3825 = icmp eq i32 %3756, %3679
  br i1 %3825, label %4102, label %3680

; <label>:3826                                    ; preds = %3680
  %3827 = extractvalue %dx.types.ResRet.f32 %3726, 3
  %3828 = extractvalue %dx.types.ResRet.f32 %3726, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3830 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3831 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3832 = extractvalue %dx.types.ResRet.i32 %3712, 3
  %3833 = extractvalue %dx.types.ResRet.i32 %3712, 2
  %3834 = add i32 %3832, 0
  %3835 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3834, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3837 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3835, %dx.types.Handle %3836, float %3765, float %3772, float undef, float undef, i32 0, i32 0, i32 undef, float %3793, float %3795, float undef, float %3794, float %3796, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = fmul fast float %3838, %3831
  %3840 = fadd fast float %3839, %3830
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = fmul fast float %3765, %3721
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3772, float %3842)  ; FMad(a,b,c)
  %3844 = fadd fast float %3843, %3829
  %3845 = fmul fast float %3765, %3723
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3772, float %3845)  ; FMad(a,b,c)
  %3847 = fadd fast float %3846, %3828
  %3848 = fmul fast float %3793, %3721
  %3849 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3795, float %3848)  ; FMad(a,b,c)
  %3850 = fmul fast float %3793, %3723
  %3851 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3795, float %3850)  ; FMad(a,b,c)
  %3852 = fmul fast float %3794, %3721
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3796, float %3852)  ; FMad(a,b,c)
  %3854 = fmul fast float %3794, %3723
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3724, float %3796, float %3854)  ; FMad(a,b,c)
  %3856 = add i32 %3833, 0
  %3857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3856, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3858 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3857, %dx.types.Handle %3836, float %3844, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3853, float %3855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = and i32 %3757, 1024
  %3861 = icmp ne i32 %3860, 0
  %3862 = fcmp fast ogt float %3859, 0x3FE0101020000000
  %3863 = uitofp i1 %3862 to float
  %3864 = select i1 %3861, float %3863, float %3859
  %3865 = and i32 %3757, 8192
  %3866 = icmp ne i32 %3865, 0
  %3867 = select i1 %3866, float %3827, float 1.000000e+00
  %3868 = fmul fast float %3765, 2.000000e+00
  %3869 = fadd fast float %3868, -1.000000e+00
  %3870 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3871 = fmul fast float %3870, %3754
  %3872 = fsub fast float %3871, %3754
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fmul fast float %3772, 2.000000e+00
  %3875 = fadd fast float %3874, -1.000000e+00
  %3876 = call float @dx.op.unary.f32(i32 6, float %3875)  ; FAbs(value)
  %3877 = fmul fast float %3876, %3755
  %3878 = fsub fast float %3877, %3755
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = fmul fast float %3784, %3717
  %3881 = fsub fast float %3880, %3717
  %3882 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3883 = fmul fast float %3841, %3867
  %3884 = fmul fast float %3883, %3838
  %3885 = fmul fast float %3884, %3873
  %3886 = fmul fast float %3885, %3864
  %3887 = fmul fast float %3886, %3879
  %3888 = fmul fast float %3887, %3882
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 1
  %3891 = extractvalue %dx.types.CBufRet.f32 %3889, 0
  %3892 = fsub fast float %3801, %3891
  %3893 = fmul fast float %3892, %3890
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fmul fast float %3888, %3718
  %3896 = fadd fast float %3888, %3718
  %3897 = fmul fast float %3896, %3727
  %3898 = fsub fast float %3897, %3727
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = and i32 %3757, 128
  %3901 = icmp ne i32 %3900, 0
  %3902 = select i1 %3901, float %3899, float %3895
  %3903 = fmul fast float %3902, %3894
  %3904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3905 = extractvalue %dx.types.CBufRet.f32 %3904, 0
  %3906 = fcmp fast ugt float %3903, %3905
  br i1 %3906, label %3907, label %3806

; <label>:3907                                    ; preds = %3826
  %3908 = select i1 %3866, float %3903, float 0.000000e+00
  %3909 = fadd fast float %3908, %3682
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  br i1 %3866, label %3806, label %3911

; <label>:3911                                    ; preds = %3907
  %3912 = and i32 %3757, 4
  %3913 = and i32 %3757, 8
  %3914 = add i32 %3713, 0
  %3915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3914, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3915, %dx.types.Handle %3916, float %3844, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3853, float %3855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.ResRet.f32 %3917, 3
  %3922 = bitcast float %3739 to i32
  %3923 = and i32 %3922, 255
  %3924 = uitofp i32 %3923 to float
  %3925 = lshr i32 %3922, 8
  %3926 = and i32 %3925, 255
  %3927 = uitofp i32 %3926 to float
  %3928 = fmul fast float %3921, %3924
  %3929 = fadd fast float %3928, %3927
  %3930 = fmul fast float %3929, 0x3F70101000000000
  %3931 = add i32 %3714, 0
  %3932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3931, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3933 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3932, %dx.types.Handle %3916, float %3844, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3853, float %3855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = bitcast float %3733 to i32
  %3939 = and i32 %3938, 255
  %3940 = uitofp i32 %3939 to float
  %3941 = lshr i32 %3938, 8
  %3942 = and i32 %3941, 255
  %3943 = uitofp i32 %3942 to float
  %3944 = lshr i32 %3938, 16
  %3945 = and i32 %3944, 255
  %3946 = uitofp i32 %3945 to float
  %3947 = fmul fast float %3946, 0x3F70101000000000
  %3948 = fmul fast float %3934, %3940
  %3949 = fadd fast float %3948, %3943
  %3950 = fmul fast float %3949, 0x3F70101000000000
  %3951 = fadd fast float %3935, -5.000000e-01
  %3952 = fadd fast float %3937, -5.000000e-01
  %3953 = fmul fast float %3951, %3947
  %3954 = fmul fast float %3952, %3947
  %3955 = fadd fast float %3953, 5.000000e-01
  %3956 = fadd fast float %3954, 5.000000e-01
  %3957 = fmul fast float %3918, %3742
  %3958 = fmul fast float %3919, %3743
  %3959 = fmul fast float %3920, %3744
  %3960 = fmul fast float %3955, 2.000000e+00
  %3961 = fadd fast float %3960, -1.000000e+00
  %3962 = fmul fast float %3956, 2.000000e+00
  %3963 = fadd fast float %3962, -1.000000e+00
  %3964 = fadd fast float %3961, %3963
  %3965 = fmul fast float %3964, 5.000000e-01
  %3966 = fsub fast float %3961, %3963
  %3967 = fmul fast float %3966, 5.000000e-01
  %3968 = call float @dx.op.unary.f32(i32 6, float %3965)  ; FAbs(value)
  %3969 = fsub fast float 1.000000e+00, %3968
  %3970 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3971 = fsub fast float %3969, %3970
  %3972 = call float @dx.op.dot3.f32(i32 55, float %3965, float %3967, float %3971, float %3965, float %3967, float %3971)  ; Dot3(ax,ay,az,bx,by,bz)
  %3973 = call float @dx.op.unary.f32(i32 25, float %3972)  ; Rsqrt(value)
  %3974 = fmul fast float %3965, %3973
  %3975 = fmul fast float %3967, %3973
  %3976 = fmul fast float %3973, %3971
  %3977 = fmul fast float %3976, %3707
  %3978 = fmul fast float %3976, %3708
  %3979 = fmul fast float %3976, %3709
  %3980 = fmul fast float %3974, %3730
  %3981 = fmul fast float %3974, %3731
  %3982 = fmul fast float %3974, %3732
  %3983 = fadd fast float %3980, %3977
  %3984 = fadd fast float %3981, %3978
  %3985 = fadd fast float %3982, %3979
  %3986 = fmul fast float %3975, %3736
  %3987 = fmul fast float %3975, %3737
  %3988 = fmul fast float %3975, %3738
  %3989 = fadd fast float %3983, %3986
  %3990 = fadd fast float %3984, %3987
  %3991 = fadd fast float %3985, %3988
  %3992 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float %3989, float %3990, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %3993 = call float @dx.op.unary.f32(i32 25, float %3992)  ; Rsqrt(value)
  %3994 = fmul fast float %3989, %3993
  %3995 = fmul fast float %3990, %3993
  %3996 = fmul fast float %3991, %3993
  %3997 = icmp ne i32 %3913, 0
  %3998 = select i1 %3997, float 1.000000e+00, float 0.000000e+00
  %3999 = fmul fast float %3903, %3998
  %4000 = and i32 %3757, 1
  %4001 = icmp eq i32 %4000, 0
  br i1 %4001, label %4002, label %4006

; <label>:4002                                    ; preds = %3911
  %4003 = fsub fast float %3994, %3690
  %4004 = fsub fast float %3995, %3691
  %4005 = fsub fast float %3996, %3692
  br label %4006

; <label>:4006                                    ; preds = %4002, %3911
  %4007 = phi float [ %4003, %4002 ], [ %3994, %3911 ]
  %4008 = phi float [ %4004, %4002 ], [ %3995, %3911 ]
  %4009 = phi float [ %4005, %4002 ], [ %3996, %3911 ]
  %4010 = fmul float %4009, %3999
  %4011 = fmul float %4008, %3999
  %4012 = fmul float %4007, %3999
  %4013 = fadd fast float %4012, %3690
  %4014 = fadd fast float %4011, %3691
  %4015 = fadd fast float %4010, %3692
  %4016 = icmp ne i32 %3912, 0
  %4017 = select i1 %4016, float 1.000000e+00, float 0.000000e+00
  %4018 = fmul fast float %3903, %4017
  %4019 = fsub fast float %3957, %3697
  %4020 = fsub fast float %3958, %3698
  %4021 = fsub fast float %3959, %3699
  %4022 = fmul fast float %4019, %4018
  %4023 = fmul fast float %4020, %4018
  %4024 = fmul fast float %4021, %4018
  %4025 = fadd fast float %4022, %3697
  %4026 = fadd fast float %4023, %3698
  %4027 = fadd fast float %4024, %3699
  %4028 = fsub fast float %3930, %3696
  %4029 = fmul fast float %4028, %4018
  %4030 = fadd fast float %4029, %3696
  %4031 = fmul fast float %4018, %3686
  %4032 = fsub fast float %3686, %4031
  %4033 = fmul fast float %4018, %3685
  %4034 = fsub fast float %3685, %4033
  %4035 = fadd fast float %3903, %3695
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fsub fast float %3950, %3694
  %4038 = fmul fast float %4037, %3999
  %4039 = fadd fast float %4038, %3694
  %4040 = fsub fast float %3936, %3693
  %4041 = fmul fast float %4040, %3999
  %4042 = fadd fast float %4041, %3693
  %4043 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.CBufRet.f32 %4044, 1
  %4047 = fmul fast float %4046, %4043
  %4048 = fadd fast float %4047, %4045
  %4049 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4050 = bitcast float %3745 to i32
  %4051 = and i32 %4050, 65535
  %4052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4051)  ; LegacyF16ToF32(value)
  %4053 = lshr i32 %4050, 16
  %4054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4053)  ; LegacyF16ToF32(value)
  %4055 = fcmp fast oge float %4052, 0.000000e+00
  %4056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4057 = extractvalue %dx.types.CBufRet.f32 %4056, 0
  %4058 = select i1 %4055, float %4052, float %4057
  %4059 = fadd fast float %4058, %4054
  %4060 = fsub fast float %4049, %3684
  %4061 = fmul fast float %4060, %3903
  %4062 = fadd fast float %4061, %3684
  %4063 = fmul fast float %4059, %3903
  %4064 = call float @dx.op.binary.f32(i32 35, float %3683, float %4063)  ; FMax(a,b)
  %4065 = and i32 %3757, 16
  %4066 = icmp eq i32 %4065, 0
  br i1 %4066, label %4089, label %4067

; <label>:4067                                    ; preds = %4006
  %4068 = bitcast float %3751 to i32
  %4069 = add i32 %3748, 0
  %4070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4069, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4071 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4070, %dx.types.Handle %3916, float %3844, float %3847, float undef, float undef, i32 0, i32 0, i32 undef, float %3849, float %3851, float undef, float %3853, float %3855, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.ResRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.ResRet.f32 %4071, 2
  %4075 = and i32 %4068, 65535
  %4076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4075)  ; LegacyF16ToF32(value)
  %4077 = fmul fast float %4072, %3742
  %4078 = fmul fast float %4073, %3743
  %4079 = fmul fast float %4074, %3744
  %4080 = and i32 %3757, 16384
  %4081 = icmp ne i32 %4080, 0
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = select i1 %4081, float %4083, float 1.000000e+00
  %4085 = fmul fast float %4084, %4076
  %4086 = fmul fast float %4077, %4085
  %4087 = fmul fast float %4078, %4085
  %4088 = fmul fast float %4079, %4085
  br label %4089

; <label>:4089                                    ; preds = %4067, %4006
  %4090 = phi float [ %4086, %4067 ], [ 0.000000e+00, %4006 ]
  %4091 = phi float [ %4087, %4067 ], [ 0.000000e+00, %4006 ]
  %4092 = phi float [ %4088, %4067 ], [ 0.000000e+00, %4006 ]
  %4093 = fsub fast float %4090, %3687
  %4094 = fsub fast float %4091, %3688
  %4095 = fsub fast float %4092, %3689
  %4096 = fmul fast float %4093, %3903
  %4097 = fmul fast float %4094, %3903
  %4098 = fmul fast float %4095, %3903
  %4099 = fadd fast float %4096, %3687
  %4100 = fadd fast float %4097, %3688
  %4101 = fadd fast float %4098, %3689
  br label %3806

; <label>:4102                                    ; preds = %3806
  br label %4103

; <label>:4103                                    ; preds = %4102, %3626
  %4104 = phi float [ 0.000000e+00, %3626 ], [ %3807, %4102 ]
  %4105 = phi float [ %3595, %3626 ], [ %3808, %4102 ]
  %4106 = phi float [ %3593, %3626 ], [ %3809, %4102 ]
  %4107 = phi float [ %3592, %3626 ], [ %3810, %4102 ]
  %4108 = phi float [ 0.000000e+00, %3626 ], [ %3811, %4102 ]
  %4109 = phi float [ %3586, %3626 ], [ %3812, %4102 ]
  %4110 = phi float [ %3587, %3626 ], [ %3813, %4102 ]
  %4111 = phi float [ %3588, %3626 ], [ %3814, %4102 ]
  %4112 = phi float [ %3621, %3626 ], [ %3815, %4102 ]
  %4113 = phi float [ %3622, %3626 ], [ %3816, %4102 ]
  %4114 = phi float [ %3623, %3626 ], [ %3817, %4102 ]
  %4115 = phi float [ %3591, %3626 ], [ %3818, %4102 ]
  %4116 = phi float [ %3590, %3626 ], [ %3819, %4102 ]
  %4117 = phi float [ 0.000000e+00, %3626 ], [ %3820, %4102 ]
  %4118 = phi float [ %3589, %3626 ], [ %3821, %4102 ]
  %4119 = phi float [ %3583, %3626 ], [ %3822, %4102 ]
  %4120 = phi float [ %3584, %3626 ], [ %3823, %4102 ]
  %4121 = phi float [ %3585, %3626 ], [ %3824, %4102 ]
  %4122 = call float @dx.op.dot3.f32(i32 55, float %4112, float %4113, float %4114, float %4112, float %4113, float %4114)  ; Dot3(ax,ay,az,bx,by,bz)
  %4123 = call float @dx.op.unary.f32(i32 25, float %4122)  ; Rsqrt(value)
  %4124 = fmul fast float %4123, %4112
  %4125 = fmul fast float %4123, %4113
  %4126 = fmul fast float %4123, %4114
  %4127 = fadd fast float %4117, %907
  %4128 = call float @dx.op.unary.f32(i32 7, float %4127)  ; Saturate(value)
  %4129 = call float @dx.op.dot3.f32(i32 55, float %4124, float %4125, float %4126, float %4124, float %4125, float %4126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = call float @dx.op.unary.f32(i32 25, float %4129)  ; Rsqrt(value)
  %4131 = fmul fast float %4130, %4124
  %4132 = fmul fast float %4130, %4125
  %4133 = fmul fast float %4130, %4126
  br label %4134

; <label>:4134                                    ; preds = %4103, %3580
  %4135 = phi float [ %4131, %4103 ], [ %3621, %3580 ]
  %4136 = phi float [ %4132, %4103 ], [ %3622, %3580 ]
  %4137 = phi float [ %4133, %4103 ], [ %3623, %3580 ]
  %4138 = phi float [ %4119, %4103 ], [ %3583, %3580 ]
  %4139 = phi float [ %4120, %4103 ], [ %3584, %3580 ]
  %4140 = phi float [ %4121, %4103 ], [ %3585, %3580 ]
  %4141 = phi float [ %4109, %4103 ], [ %3586, %3580 ]
  %4142 = phi float [ %4110, %4103 ], [ %3587, %3580 ]
  %4143 = phi float [ %4111, %4103 ], [ %3588, %3580 ]
  %4144 = phi float [ %4118, %4103 ], [ %3589, %3580 ]
  %4145 = phi float [ %4128, %4103 ], [ %907, %3580 ]
  %4146 = phi float [ %4116, %4103 ], [ %3590, %3580 ]
  %4147 = phi float [ %4115, %4103 ], [ %3591, %3580 ]
  %4148 = phi float [ %4108, %4103 ], [ 0.000000e+00, %3580 ]
  %4149 = phi float [ %4107, %4103 ], [ %3592, %3580 ]
  %4150 = phi float [ %4104, %4103 ], [ 0.000000e+00, %3580 ]
  %4151 = phi float [ %4105, %4103 ], [ %3595, %3580 ]
  %4152 = phi float [ %4106, %4103 ], [ %3593, %3580 ]
  %4153 = fadd fast float %4144, 0xBFB99999A0000000
  %4154 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4155 = fmul fast float %4154, 0x3FF1C71C80000000
  %4156 = call float @dx.op.binary.f32(i32 36, float %4144, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4157 = fsub fast float 1.000000e+00, %4155
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = fmul fast float %4158, %4138
  %4160 = fmul fast float %4158, %4139
  %4161 = fmul fast float %4158, %4140
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4165 = fmul fast float %4155, %4138
  %4166 = fmul fast float %4155, %4139
  %4167 = fmul fast float %4155, %4140
  %4168 = fadd fast float %4165, %4156
  %4169 = fadd fast float %4166, %4156
  %4170 = fadd fast float %4167, %4156
  %4171 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4169)  ; Saturate(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4174 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4175 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.i32 %4175, 3
  %4177 = and i32 %4176, 8
  %4178 = icmp ne i32 %4177, 0
  %4179 = call float @dx.op.binary.f32(i32 35, float %4162, float %4138)  ; FMax(a,b)
  %4180 = call float @dx.op.binary.f32(i32 35, float %4163, float %4138)  ; FMax(a,b)
  %4181 = call float @dx.op.binary.f32(i32 35, float %4164, float %4138)  ; FMax(a,b)
  %4182 = call float @dx.op.dot3.f32(i32 55, float %4162, float %4163, float %4164, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4183 = select i1 %173, float %4138, float %4162
  %4184 = select i1 %173, float %4182, float %4163
  %4185 = select i1 %173, float 1.000000e+00, float %4164
  %4186 = select i1 %4178, float %4179, float %4183
  %4187 = select i1 %4178, float %4180, float %4184
  %4188 = select i1 %4178, float %4181, float %4185
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4192 = extractvalue %dx.types.CBufRet.f32 %4189, 2
  %4193 = fadd fast float %4190, %131
  %4194 = fadd fast float %4191, %132
  %4195 = fadd fast float %4192, %133
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.CBufRet.f32 %4196, 1
  %4199 = fsub fast float %4193, %4197
  %4200 = fsub fast float %4194, %4198
  %4201 = fmul fast float %4199, %4199
  %4202 = fmul fast float %4200, %4200
  %4203 = fadd fast float %4201, %4202
  %4204 = call float @dx.op.unary.f32(i32 24, float %4203)  ; Sqrt(value)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4196, 2
  %4206 = fcmp fast olt float %4204, %4205
  br i1 %4206, label %4207, label %4274

; <label>:4207                                    ; preds = %4134
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 0
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.CBufRet.f32 %4208, 1
  %4215 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4216 = extractvalue %dx.types.CBufRet.f32 %4212, 1
  %4217 = extractvalue %dx.types.CBufRet.f32 %4208, 3
  %4218 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4219 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4220 = fadd fast float %4217, %4193
  %4221 = fadd fast float %4218, %4194
  %4222 = fadd fast float %4219, %4195
  %4223 = fmul fast float %4220, %4209
  %4224 = call float @dx.op.tertiary.f32(i32 46, float %4221, float %4211, float %4223)  ; FMad(a,b,c)
  %4225 = call float @dx.op.tertiary.f32(i32 46, float %4222, float %4213, float %4224)  ; FMad(a,b,c)
  %4226 = fmul fast float %4220, %4214
  %4227 = call float @dx.op.tertiary.f32(i32 46, float %4221, float %4215, float %4226)  ; FMad(a,b,c)
  %4228 = call float @dx.op.tertiary.f32(i32 46, float %4222, float %4216, float %4227)  ; FMad(a,b,c)
  %4229 = fsub fast float %4225, %4217
  %4230 = fsub fast float %4228, %4218
  %4231 = fsub fast float %4229, %4197
  %4232 = fadd fast float %4231, %4205
  %4233 = fsub fast float %4230, %4198
  %4234 = fadd fast float %4233, %4205
  %4235 = extractvalue %dx.types.CBufRet.f32 %4196, 3
  %4236 = fmul fast float %4232, %4235
  %4237 = fmul fast float %4234, %4235
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4240 = fsub fast float 1.000000e+00, %4238
  %4241 = fsub fast float 1.000000e+00, %4239
  %4242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4240, float %4241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = fcmp fast ugt float %4243, 0.000000e+00
  br i1 %4244, label %4245, label %4548

; <label>:4245                                    ; preds = %4207
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 2
  %4248 = fmul fast float %4247, %4243
  %4249 = extractvalue %dx.types.CBufRet.f32 %4246, 3
  %4250 = fadd fast float %4249, %4248
  %4251 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4252 = fadd fast float %4250, %4219
  %4253 = fmul fast float %4225, %4213
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4216, float %4253)  ; FMad(a,b,c)
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %4252, float %4251, float %4254)  ; FMad(a,b,c)
  %4256 = fsub fast float %4255, %4219
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 2
  %4259 = fsub fast float %4256, %4258
  %4260 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4240, float %4241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4240, float %4241, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4265 = extractvalue %dx.types.ResRet.f32 %4264, 0
  %4266 = extractvalue %dx.types.ResRet.f32 %4264, 1
  %4267 = extractvalue %dx.types.ResRet.f32 %4264, 2
  %4268 = fadd fast float %4265, %4261
  %4269 = fmul fast float %4268, 0x3F847AE140000000
  %4270 = fadd fast float %4266, %4262
  %4271 = fmul fast float %4270, 0x3F847AE140000000
  %4272 = fadd fast float %4267, %4263
  %4273 = fmul fast float %4272, 0x3F847AE140000000
  br label %4548

; <label>:4274                                    ; preds = %4134
  %4275 = and i32 %149, 1
  %4276 = icmp eq i32 %4275, 0
  br i1 %4276, label %4548, label %4277

; <label>:4277                                    ; preds = %4274
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 0
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 0
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4284 = extractvalue %dx.types.CBufRet.f32 %4278, 1
  %4285 = extractvalue %dx.types.CBufRet.f32 %4280, 1
  %4286 = extractvalue %dx.types.CBufRet.f32 %4282, 1
  %4287 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4288 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4289 = extractvalue %dx.types.CBufRet.f32 %4282, 3
  %4290 = fadd fast float %4287, %4193
  %4291 = fadd fast float %4288, %4194
  %4292 = fadd fast float %4289, %4195
  %4293 = fmul fast float %4290, %4279
  %4294 = call float @dx.op.tertiary.f32(i32 46, float %4291, float %4281, float %4293)  ; FMad(a,b,c)
  %4295 = call float @dx.op.tertiary.f32(i32 46, float %4292, float %4283, float %4294)  ; FMad(a,b,c)
  %4296 = fmul fast float %4290, %4284
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4291, float %4285, float %4296)  ; FMad(a,b,c)
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4292, float %4286, float %4297)  ; FMad(a,b,c)
  %4299 = fsub fast float %4295, %4287
  %4300 = fsub fast float %4298, %4288
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4305 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 3
  %4308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.i32 %4308, 0
  %4310 = extractvalue %dx.types.CBufRet.i32 %4308, 1
  %4311 = udiv i32 %4310, %4309
  %4312 = fsub fast float %4299, %4302
  %4313 = fsub fast float %4300, %4303
  %4314 = call float @dx.op.binary.f32(i32 35, float %4312, float 0.000000e+00)  ; FMax(a,b)
  %4315 = call float @dx.op.binary.f32(i32 35, float %4313, float 0.000000e+00)  ; FMax(a,b)
  %4316 = call float @dx.op.binary.f32(i32 36, float %4314, float %4304)  ; FMin(a,b)
  %4317 = call float @dx.op.binary.f32(i32 36, float %4315, float %4305)  ; FMin(a,b)
  %4318 = add i32 %4309, -1
  %4319 = add i32 %4311, -1
  %4320 = fmul fast float %4316, %4307
  %4321 = fmul fast float %4317, %4307
  %4322 = fptoui float %4320 to i32
  %4323 = fptoui float %4321 to i32
  %4324 = call i32 @dx.op.binary.i32(i32 40, i32 %4322, i32 %4318)  ; UMin(a,b)
  %4325 = call i32 @dx.op.binary.i32(i32 40, i32 %4323, i32 %4319)  ; UMin(a,b)
  %4326 = mul i32 %4325, %4309
  %4327 = add i32 %4326, %4324
  %4328 = shl i32 %4327, 2
  %4329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4328, i32 undef)  ; BufferLoad(srv,index,wot)
  %4330 = extractvalue %dx.types.ResRet.i32 %4329, 0
  %4331 = icmp eq i32 %4330, -1
  br i1 %4331, label %4548, label %4332

; <label>:4332                                    ; preds = %4277
  %4333 = mul i32 %4330, 148
  %4334 = add i32 %4333, 4
  %4335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = add i32 %4333, 8
  %4338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = add i32 %4333, 36
  %4341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = add i32 %4333, 60
  %4344 = add i32 %4333, 92
  %4345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.i32 %4345, 0
  %4347 = add i32 %4333, 116
  %4348 = fsub fast float %4299, %4336
  %4349 = fsub fast float %4300, %4339
  %4350 = fmul fast float %4307, %4348
  %4351 = fmul fast float %4307, %4349
  %4352 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4353 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4354 = fsub fast float 1.000000e+00, %4353
  %4355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4356 = extractvalue %dx.types.CBufRet.f32 %4355, 2
  %4357 = call float @dx.op.unary.f32(i32 83, float %4352)  ; DerivCoarseX(value)
  %4358 = call float @dx.op.unary.f32(i32 83, float %4354)  ; DerivCoarseX(value)
  %4359 = call float @dx.op.unary.f32(i32 84, float %4352)  ; DerivCoarseY(value)
  %4360 = call float @dx.op.unary.f32(i32 84, float %4354)  ; DerivCoarseY(value)
  %4361 = fmul fast float %4357, %4356
  %4362 = fmul fast float %4358, %4356
  %4363 = fmul fast float %4359, %4356
  %4364 = fmul fast float %4360, %4356
  %4365 = call float @dx.op.dot2.f32(i32 54, float %4363, float %4364, float %4363, float %4364)  ; Dot2(ax,ay,bx,by)
  %4366 = call float @dx.op.dot2.f32(i32 54, float %4361, float %4362, float %4361, float %4362)  ; Dot2(ax,ay,bx,by)
  %4367 = call float @dx.op.binary.f32(i32 35, float %4366, float %4365)  ; FMax(a,b)
  %4368 = call float @dx.op.unary.f32(i32 23, float %4367)  ; Log(value)
  %4369 = fmul fast float %4368, 5.000000e-01
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4372 = fadd fast float %4371, %4369
  %4373 = call float @dx.op.binary.f32(i32 35, float %4372, float 0.000000e+00)  ; FMax(a,b)
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4376 = fadd fast float %4375, %4373
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4379 = fadd fast float %4376, %4378
  %4380 = add i32 %4346, 0
  %4381 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4380, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4382 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4381, i32 0)  ; GetDimensions(handle,mipLevel)
  %4383 = extractvalue %dx.types.Dimensions %4382, 0
  %4384 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4383)  ; FirstbitLo(value)
  %4385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.i32 %4385, 1
  %4387 = sub nsw i32 %4386, %4384
  %4388 = sitofp i32 %4387 to float
  %4389 = fsub fast float %4379, %4388
  %4390 = call float @dx.op.binary.f32(i32 35, float %4389, float 0.000000e+00)  ; FMax(a,b)
  %4391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4381, %dx.types.Handle %27, float %4352, float %4354, float %4342, float undef, i32 0, i32 0, i32 undef, float %4390)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = fcmp ule float %4392, 0x3FE0101020000000
  %4394 = extractvalue %dx.types.CBufRet.i32 %4385, 0
  %4395 = and i32 %4394, 128
  %4396 = icmp ne i32 %4395, 0
  %4397 = and i1 %4393, %4396
  br i1 %4397, label %4548, label %4398

; <label>:4398                                    ; preds = %4332
  %4399 = add i32 %4333, 20
  %4400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = add i32 %4333, 24
  %4403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = add i32 %4333, 40
  %4406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = add i32 %4333, 96
  %4409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4408, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.i32 %4409, 0
  %4411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.f32 %4411, 2
  %4413 = fmul fast float %4412, %4352
  %4414 = fmul fast float %4412, %4354
  %4415 = extractvalue %dx.types.CBufRet.f32 %4411, 3
  %4416 = fadd fast float %4413, %4415
  %4417 = fadd fast float %4414, %4415
  %4418 = add i32 %4410, 0
  %4419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4418, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4420 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4419, i32 0)  ; GetDimensions(handle,mipLevel)
  %4421 = extractvalue %dx.types.Dimensions %4420, 0
  %4422 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4421)  ; FirstbitLo(value)
  %4423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.i32 %4423, 1
  %4425 = sub nsw i32 %4424, %4422
  %4426 = sitofp i32 %4425 to float
  %4427 = fsub fast float %4376, %4426
  %4428 = call float @dx.op.binary.f32(i32 35, float %4427, float 0.000000e+00)  ; FMax(a,b)
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4419, %dx.types.Handle %27, float %4416, float %4417, float %4407, float undef, i32 0, i32 0, i32 undef, float %4428)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = fmul fast float %4430, %4401
  %4432 = fadd fast float %4431, %4404
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 0
  %4435 = extractvalue %dx.types.CBufRet.f32 %4433, 1
  %4436 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 3
  %4441 = extractvalue %dx.types.CBufRet.f32 %4433, 3
  %4442 = fadd fast float %4438, %4299
  %4443 = fadd fast float %4440, %4300
  %4444 = fadd fast float %4432, %4441
  %4445 = fmul fast float %4442, %4434
  %4446 = call float @dx.op.tertiary.f32(i32 46, float %4443, float %4435, float %4445)  ; FMad(a,b,c)
  %4447 = call float @dx.op.tertiary.f32(i32 46, float %4444, float %4436, float %4446)  ; FMad(a,b,c)
  %4448 = fsub fast float %4447, %4441
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 2
  %4451 = fsub fast float %4448, %4450
  %4452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.i32 %4452, 0
  %4454 = call i32 @dx.op.binary.i32(i32 40, i32 %4330, i32 %4453)  ; UMin(a,b)
  %4455 = mul i32 %4454, 36
  %4456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4455, i32 undef)  ; BufferLoad(srv,index,wot)
  %4457 = extractvalue %dx.types.ResRet.i32 %4456, 0
  %4458 = add i32 %4455, 4
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 0
  %4461 = fmul fast float %4460, %4352
  %4462 = fmul fast float %4460, %4354
  %4463 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4464 = fadd fast float %4461, %4463
  %4465 = fadd fast float %4462, %4463
  %4466 = icmp eq i32 %4457, 0
  br i1 %4466, label %4535, label %4467

; <label>:4467                                    ; preds = %4398
  br label %4468

; <label>:4468                                    ; preds = %4525, %4467
  %4469 = phi float [ %4526, %4525 ], [ 0.000000e+00, %4467 ]
  %4470 = phi float [ %4527, %4525 ], [ 0.000000e+00, %4467 ]
  %4471 = phi float [ %4528, %4525 ], [ 0.000000e+00, %4467 ]
  %4472 = phi float [ %4529, %4525 ], [ 0.000000e+00, %4467 ]
  %4473 = phi float [ %4530, %4525 ], [ 0.000000e+00, %4467 ]
  %4474 = phi float [ %4531, %4525 ], [ 0.000000e+00, %4467 ]
  %4475 = phi i32 [ %4532, %4525 ], [ 0, %4467 ]
  %4476 = shl i32 %4475, 2
  %4477 = add i32 %4343, %4476
  %4478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4477, i32 undef)  ; BufferLoad(srv,index,wot)
  %4479 = extractvalue %dx.types.ResRet.f32 %4478, 0
  %4480 = add i32 %4347, %4476
  %4481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.i32 %4481, 0
  %4483 = add i32 %4482, 0
  %4484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4483, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4485 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4484, i32 0)  ; GetDimensions(handle,mipLevel)
  %4486 = extractvalue %dx.types.Dimensions %4485, 0
  %4487 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4486)  ; FirstbitLo(value)
  %4488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.i32 %4488, 1
  %4490 = sub nsw i32 %4489, %4487
  %4491 = sitofp i32 %4490 to float
  %4492 = fsub fast float %4376, %4491
  %4493 = call float @dx.op.binary.f32(i32 35, float %4492, float 0.000000e+00)  ; FMax(a,b)
  %4494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4484, %dx.types.Handle %27, float %4464, float %4465, float %4479, float undef, i32 0, i32 0, i32 undef, float %4493)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = fcmp fast ogt float %4495, 0.000000e+00
  br i1 %4496, label %4497, label %4525

; <label>:4497                                    ; preds = %4468
  %4498 = add i32 %4458, %4476
  %4499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.i32 %4499, 0
  %4501 = and i32 %4500, 32767
  %4502 = mul nuw nsw i32 %4501, 928
  %4503 = add nuw nsw i32 %4502, 48
  %4504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4503, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.f32 %4504, 0
  %4506 = extractvalue %dx.types.ResRet.f32 %4504, 1
  %4507 = extractvalue %dx.types.ResRet.f32 %4504, 2
  %4508 = add nuw nsw i32 %4502, 60
  %4509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4508, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = fmul fast float %4505, %4495
  %4514 = fmul fast float %4506, %4495
  %4515 = fmul fast float %4507, %4495
  %4516 = fadd fast float %4513, %4469
  %4517 = fadd fast float %4514, %4470
  %4518 = fadd fast float %4515, %4471
  %4519 = fmul fast float %4510, %4495
  %4520 = fmul fast float %4511, %4495
  %4521 = fmul fast float %4512, %4495
  %4522 = fadd fast float %4519, %4472
  %4523 = fadd fast float %4520, %4473
  %4524 = fadd fast float %4521, %4474
  br label %4525

; <label>:4525                                    ; preds = %4497, %4468
  %4526 = phi float [ %4516, %4497 ], [ %4469, %4468 ]
  %4527 = phi float [ %4517, %4497 ], [ %4470, %4468 ]
  %4528 = phi float [ %4518, %4497 ], [ %4471, %4468 ]
  %4529 = phi float [ %4522, %4497 ], [ %4472, %4468 ]
  %4530 = phi float [ %4523, %4497 ], [ %4473, %4468 ]
  %4531 = phi float [ %4524, %4497 ], [ %4474, %4468 ]
  %4532 = add nuw i32 %4475, 1
  %4533 = icmp eq i32 %4532, %4457
  br i1 %4533, label %4534, label %4468

; <label>:4534                                    ; preds = %4525
  br label %4535

; <label>:4535                                    ; preds = %4534, %4398
  %4536 = phi float [ 0.000000e+00, %4398 ], [ %4526, %4534 ]
  %4537 = phi float [ 0.000000e+00, %4398 ], [ %4527, %4534 ]
  %4538 = phi float [ 0.000000e+00, %4398 ], [ %4528, %4534 ]
  %4539 = phi float [ 0.000000e+00, %4398 ], [ %4529, %4534 ]
  %4540 = phi float [ 0.000000e+00, %4398 ], [ %4530, %4534 ]
  %4541 = phi float [ 0.000000e+00, %4398 ], [ %4531, %4534 ]
  %4542 = fadd fast float %4539, %4536
  %4543 = fmul fast float %4542, 0x3F847AE140000000
  %4544 = fadd fast float %4540, %4537
  %4545 = fmul fast float %4544, 0x3F847AE140000000
  %4546 = fadd fast float %4541, %4538
  %4547 = fmul fast float %4546, 0x3F847AE140000000
  br label %4548

; <label>:4548                                    ; preds = %4535, %4332, %4277, %4274, %4245, %4207
  %4549 = phi float [ %4259, %4245 ], [ -1.310720e+05, %4207 ], [ %4451, %4535 ], [ -1.310720e+05, %4277 ], [ -1.310720e+05, %4332 ], [ -1.310720e+05, %4274 ]
  %4550 = phi float [ %4269, %4245 ], [ 0.000000e+00, %4207 ], [ %4543, %4535 ], [ 0.000000e+00, %4277 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4274 ]
  %4551 = phi float [ %4271, %4245 ], [ 0.000000e+00, %4207 ], [ %4545, %4535 ], [ 0.000000e+00, %4277 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4274 ]
  %4552 = phi float [ %4273, %4245 ], [ 0.000000e+00, %4207 ], [ %4547, %4535 ], [ 0.000000e+00, %4277 ], [ 0.000000e+00, %4332 ], [ 0.000000e+00, %4274 ]
  %4553 = phi i1 [ true, %4245 ], [ false, %4207 ], [ true, %4535 ], [ false, %4277 ], [ false, %4332 ], [ false, %4274 ]
  %4554 = and i32 %149, 3
  %4555 = icmp eq i32 %4554, 1
  %4556 = select i1 %4555, float 1.000000e+00, float 0.000000e+00
  %4557 = fsub fast float %4549, %133
  %4558 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4559 = select i1 %4553, float %4558, float 1.000000e+00
  %4560 = fmul fast float %4559, %4556
  %4561 = icmp eq i32 %4554, 3
  %4562 = select i1 %4561, float 1.000000e+00, float %4560
  %4563 = call float @dx.op.binary.f32(i32 35, float %4150, float %4562)  ; FMax(a,b)
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fcmp fast une float %4564, 0.000000e+00
  %4566 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4567 = call float @dx.op.unary.f32(i32 25, float %4566)  ; Rsqrt(value)
  br i1 %4565, label %4575, label %4568

; <label>:4568                                    ; preds = %4548
  %4569 = fmul fast float %4567, %131
  %4570 = fmul fast float %4567, %132
  %4571 = fmul fast float %4567, %133
  %4572 = fsub fast float -0.000000e+00, %4569
  %4573 = fsub fast float -0.000000e+00, %4570
  %4574 = fsub fast float -0.000000e+00, %4571
  br label %4743

; <label>:4575                                    ; preds = %4548
  %4576 = fmul fast float %131, %4567
  %4577 = fsub fast float -0.000000e+00, %4576
  %4578 = fmul fast float %132, %4567
  %4579 = fsub fast float -0.000000e+00, %4578
  %4580 = fmul fast float %133, %4567
  %4581 = fsub fast float -0.000000e+00, %4580
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4579, float %4581, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = fmul fast float %4564, 2.500000e+00
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = fmul fast float %4564, 0x4013FFFFE0000000
  %4586 = fadd fast float %4585, 0xBFFFFFFFE0000000
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4564, 0x4004000020000000
  %4589 = fadd fast float %4588, 0xBFF8000040000000
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4592 = fmul fast float %4153, 1.000000e+01
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fmul fast float %4593, 2.000000e+00
  %4595 = fsub fast float 3.000000e+00, %4594
  %4596 = fmul fast float %4593, %4593
  %4597 = fmul fast float %4596, %4595
  %4598 = fsub fast float 1.000000e+00, %4597
  %4599 = fsub fast float 0x3FE3333340000000, %4174
  %4600 = fmul fast float %4599, 0x400AAAAAA0000000
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4602 = fmul fast float %4598, %4601
  %4603 = fmul fast float %4186, 0x3FEA2B8620000000
  %4604 = fmul fast float %4187, 0x3FEA2B8620000000
  %4605 = fmul fast float %4188, 0x3FEA2B8620000000
  %4606 = fadd fast float %4603, 0x3FC81DFBA0000000
  %4607 = fmul fast float %4606, %4186
  %4608 = fadd fast float %4607, 0x3F910E6020000000
  %4609 = fadd fast float %4604, 0x3FC81DFBA0000000
  %4610 = fmul fast float %4609, %4187
  %4611 = fadd fast float %4610, 0x3F910E6020000000
  %4612 = fadd fast float %4605, 0x3FC81DFBA0000000
  %4613 = fmul fast float %4612, %4188
  %4614 = fadd fast float %4613, 0x3F910E6020000000
  %4615 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4616 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4617 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4618 = fsub fast float %4615, %4186
  %4619 = fsub fast float %4616, %4187
  %4620 = fsub fast float %4617, %4188
  %4621 = fmul fast float %4618, %4591
  %4622 = fmul fast float %4621, %4602
  %4623 = fmul fast float %4619, %4591
  %4624 = fmul fast float %4623, %4602
  %4625 = fmul fast float %4620, %4591
  %4626 = fmul fast float %4625, %4602
  %4627 = fadd fast float %4622, %4186
  %4628 = fadd fast float %4624, %4187
  %4629 = fadd fast float %4626, %4188
  %4630 = fmul fast float %4147, %4147
  %4631 = fmul fast float %4630, %4630
  %4632 = fadd fast float %4587, 1.000000e+00
  %4633 = fsub fast float %4632, %4602
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = fsub fast float 1.000000e+00, %4631
  %4638 = call float @dx.op.binary.f32(i32 36, float %4634, float %4637)  ; FMin(a,b)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4640 = call float @dx.op.binary.f32(i32 35, float %4638, float %4639)  ; FMax(a,b)
  %4641 = fadd fast float %4636, 0xBFE4CCCCC0000000
  %4642 = fmul fast float %4641, 0x4006DB6DA0000000
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = fmul fast float %4643, 2.000000e+00
  %4645 = fsub fast float 3.000000e+00, %4644
  %4646 = bitcast float %4171 to i32
  %4647 = ashr i32 %4646, 1
  %4648 = add nsw i32 %4647, 532487669
  %4649 = bitcast i32 %4648 to float
  %4650 = fsub fast float 1.000000e+00, %4649
  %4651 = bitcast float %4650 to i32
  %4652 = sub nsw i32 2129859010, %4651
  %4653 = bitcast i32 %4652 to float
  %4654 = fmul fast float %4653, 2.000000e+00
  %4655 = bitcast float %4172 to i32
  %4656 = ashr i32 %4655, 1
  %4657 = add nsw i32 %4656, 532487669
  %4658 = bitcast i32 %4657 to float
  %4659 = fsub fast float 1.000000e+00, %4658
  %4660 = bitcast float %4659 to i32
  %4661 = sub nsw i32 2129859010, %4660
  %4662 = bitcast i32 %4661 to float
  %4663 = fmul fast float %4662, 2.000000e+00
  %4664 = bitcast float %4173 to i32
  %4665 = ashr i32 %4664, 1
  %4666 = add nsw i32 %4665, 532487669
  %4667 = bitcast i32 %4666 to float
  %4668 = fsub fast float 1.000000e+00, %4667
  %4669 = bitcast float %4668 to i32
  %4670 = sub nsw i32 2129859010, %4669
  %4671 = bitcast i32 %4670 to float
  %4672 = fmul fast float %4671, 2.000000e+00
  %4673 = fsub fast float 0x4002A9FBE0000000, %4654
  %4674 = fadd fast float %4654, 0x3FD54FDF00000000
  %4675 = bitcast float %4674 to i32
  %4676 = sub nsw i32 2129859010, %4675
  %4677 = bitcast i32 %4676 to float
  %4678 = fmul fast float %4677, %4673
  %4679 = fmul fast float %4678, %4678
  %4680 = fsub fast float 0x4002A9FBE0000000, %4663
  %4681 = fadd fast float %4663, 0x3FD54FDF00000000
  %4682 = bitcast float %4681 to i32
  %4683 = sub nsw i32 2129859010, %4682
  %4684 = bitcast i32 %4683 to float
  %4685 = fmul fast float %4684, %4680
  %4686 = fmul fast float %4685, %4685
  %4687 = fsub fast float 0x4002A9FBE0000000, %4672
  %4688 = fadd fast float %4672, 0x3FD54FDF00000000
  %4689 = bitcast float %4688 to i32
  %4690 = sub nsw i32 2129859010, %4689
  %4691 = bitcast i32 %4690 to float
  %4692 = fmul fast float %4691, %4687
  %4693 = fmul fast float %4692, %4692
  %4694 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4679)  ; FMax(a,b)
  %4695 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4686)  ; FMax(a,b)
  %4696 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4693)  ; FMax(a,b)
  %4697 = fsub fast float 1.000000e+00, %4582
  %4698 = fadd fast float %4697, %4598
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fsub fast float 1.000000e+00, %4562
  %4701 = fmul fast float %4640, %4700
  %4702 = fmul fast float %4643, %4643
  %4703 = fmul fast float %4702, %4701
  %4704 = fmul fast float %4703, %4645
  %4705 = fmul fast float %4700, 0xBFE99999A0000000
  %4706 = fmul fast float %4705, %4591
  %4707 = fmul fast float %4706, %4602
  %4708 = fadd fast float %4707, 1.000000e+00
  %4709 = fadd fast float %4174, -1.000000e+00
  %4710 = fmul fast float %4708, %4709
  %4711 = fadd fast float %4710, 1.000000e+00
  %4712 = fsub fast float %4694, %4171
  %4713 = fsub fast float %4695, %4172
  %4714 = fsub fast float %4696, %4173
  %4715 = fmul fast float %4704, %4712
  %4716 = fmul fast float %4704, %4713
  %4717 = fmul fast float %4704, %4714
  %4718 = fadd fast float %4715, %4171
  %4719 = fadd fast float %4716, %4172
  %4720 = fadd fast float %4717, %4173
  %4721 = fsub fast float %75, %4135
  %4722 = fsub fast float %76, %4136
  %4723 = fsub fast float %77, %4137
  %4724 = fmul fast float %4704, %4721
  %4725 = fmul fast float %4704, %4722
  %4726 = fmul fast float %4704, %4723
  %4727 = fadd fast float %4724, %4135
  %4728 = fadd fast float %4725, %4136
  %4729 = fadd fast float %4726, %4137
  %4730 = fmul fast float %4704, %4699
  %4731 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4732 = fsub fast float 1.000000e+00, %4731
  %4733 = fmul fast float %4730, %4732
  %4734 = fadd fast float %4733, %4731
  %4735 = fsub fast float 1.000000e+00, %4147
  %4736 = fmul fast float %4704, %4735
  %4737 = fadd fast float %4736, %4147
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4727, float %4728, float %4729, float %4727, float %4728, float %4729)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = call float @dx.op.unary.f32(i32 25, float %4738)  ; Rsqrt(value)
  %4740 = fmul fast float %4727, %4739
  %4741 = fmul fast float %4728, %4739
  %4742 = fmul fast float %4729, %4739
  br label %4743

; <label>:4743                                    ; preds = %4575, %4568
  %4744 = phi float [ %4574, %4568 ], [ %4581, %4575 ]
  %4745 = phi float [ %4573, %4568 ], [ %4579, %4575 ]
  %4746 = phi float [ %4572, %4568 ], [ %4577, %4575 ]
  %4747 = phi float [ %4571, %4568 ], [ %4580, %4575 ]
  %4748 = phi float [ %4570, %4568 ], [ %4578, %4575 ]
  %4749 = phi float [ %4569, %4568 ], [ %4576, %4575 ]
  %4750 = phi float [ %4171, %4568 ], [ %4718, %4575 ]
  %4751 = phi float [ %4172, %4568 ], [ %4719, %4575 ]
  %4752 = phi float [ %4173, %4568 ], [ %4720, %4575 ]
  %4753 = phi float [ %4135, %4568 ], [ %4740, %4575 ]
  %4754 = phi float [ %4136, %4568 ], [ %4741, %4575 ]
  %4755 = phi float [ %4137, %4568 ], [ %4742, %4575 ]
  %4756 = phi float [ %4186, %4568 ], [ %4627, %4575 ]
  %4757 = phi float [ %4187, %4568 ], [ %4628, %4575 ]
  %4758 = phi float [ %4188, %4568 ], [ %4629, %4575 ]
  %4759 = phi float [ %4174, %4568 ], [ %4734, %4575 ]
  %4760 = phi float [ %4147, %4568 ], [ %4737, %4575 ]
  %4761 = select i1 %173, float 0.000000e+00, float %4752
  %4762 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %4746, float %4745, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4764 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4748, float %4747, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %4765 = fmul fast float %4764, 2.000000e+00
  %4766 = fmul fast float %4765, %4753
  %4767 = fmul fast float %4765, %4754
  %4768 = fmul fast float %4765, %4755
  %4769 = fsub fast float %4749, %4766
  %4770 = fsub fast float %4748, %4767
  %4771 = fsub fast float %4747, %4768
  %4772 = call float @dx.op.binary.f32(i32 36, float %4760, float 1.000000e+00)  ; FMin(a,b)
  %4773 = fsub fast float 1.000000e+00, %4760
  %4774 = bitcast float %4773 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = fsub fast float 1.000000e+00, %45
  %4778 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = call float @dx.op.binary.f32(i32 35, float %4778, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4780 = fdiv fast float %4777, %4779
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4781)  ; Saturate(value)
  %4783 = fmul fast float %4782, 5.000000e-01
  %4784 = fadd fast float %4783, 5.000000e-01
  %4785 = fmul fast float %4784, %45
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = fmul fast float %4787, %4780
  %4789 = fadd fast float %4785, %4788
  %4790 = fsub fast float 5.000000e-01, %4783
  %4791 = fmul fast float %4790, %4756
  %4792 = fmul fast float %4790, %4757
  %4793 = fmul fast float %4790, %4758
  %4794 = fadd fast float %4789, %4791
  %4795 = fadd fast float %4789, %4792
  %4796 = fadd fast float %4789, %4793
  %4797 = call float @dx.op.dot3.f32(i32 55, float %4769, float %4770, float %4771, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = fmul fast float %4798, 5.000000e-01
  %4800 = fadd fast float %4799, 5.000000e-01
  %4801 = fmul fast float %4800, %45
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4769, float %4770, float %4771, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, %4780
  %4805 = fadd fast float %4801, %4804
  %4806 = fsub fast float 5.000000e-01, %4799
  %4807 = fmul fast float %4806, %4756
  %4808 = fmul fast float %4806, %4757
  %4809 = fmul fast float %4806, %4758
  %4810 = fadd fast float %4805, %4807
  %4811 = fadd fast float %4805, %4808
  %4812 = fadd fast float %4805, %4809
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 0
  %4815 = call float @dx.op.binary.f32(i32 36, float %4756, float %4814)  ; FMin(a,b)
  %4816 = fsub fast float 1.000000e+00, %4772
  %4817 = fmul fast float %4815, %4816
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = bitcast float %4818 to i32
  %4820 = sub nsw i32 2129859010, %4819
  %4821 = bitcast i32 %4820 to float
  %4822 = call float @dx.op.binary.f32(i32 36, float %4757, float %4814)  ; FMin(a,b)
  %4823 = fmul fast float %4822, %4816
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = bitcast float %4824 to i32
  %4826 = sub nsw i32 2129859010, %4825
  %4827 = bitcast i32 %4826 to float
  %4828 = call float @dx.op.binary.f32(i32 36, float %4758, float %4814)  ; FMin(a,b)
  %4829 = fmul fast float %4828, %4816
  %4830 = fsub fast float 1.000000e+00, %4829
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = bitcast i32 %4832 to float
  %4834 = fmul fast float %4772, %46
  %4835 = fmul fast float %4834, %4794
  %4836 = fmul fast float %4835, %4821
  %4837 = fmul fast float %4772, %47
  %4838 = fmul fast float %4837, %4795
  %4839 = fmul fast float %4838, %4827
  %4840 = fmul fast float %4772, %48
  %4841 = fmul fast float %4840, %4796
  %4842 = fmul fast float %4841, %4833
  %4843 = call float @dx.op.binary.f32(i32 36, float %4750, float %4814)  ; FMin(a,b)
  %4844 = fmul fast float %4843, %4816
  %4845 = fsub fast float 1.000000e+00, %4844
  %4846 = bitcast float %4845 to i32
  %4847 = sub nsw i32 2129859010, %4846
  %4848 = bitcast i32 %4847 to float
  %4849 = call float @dx.op.binary.f32(i32 36, float %4751, float %4814)  ; FMin(a,b)
  %4850 = fmul fast float %4849, %4816
  %4851 = fsub fast float 1.000000e+00, %4850
  %4852 = bitcast float %4851 to i32
  %4853 = sub nsw i32 2129859010, %4852
  %4854 = bitcast i32 %4853 to float
  %4855 = call float @dx.op.binary.f32(i32 36, float %4761, float %4814)  ; FMin(a,b)
  %4856 = fmul fast float %4855, %4816
  %4857 = fsub fast float 1.000000e+00, %4856
  %4858 = bitcast float %4857 to i32
  %4859 = sub nsw i32 2129859010, %4858
  %4860 = bitcast i32 %4859 to float
  %4861 = fmul fast float %4834, %4810
  %4862 = fmul fast float %4861, %4848
  %4863 = fmul fast float %4837, %4811
  %4864 = fmul fast float %4863, %4854
  %4865 = fmul fast float %4840, %4812
  %4866 = fmul fast float %4865, %4860
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4839, float %4842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = select i1 %173, float 0.000000e+00, float %4836
  %4869 = select i1 %173, float %4867, float %4839
  %4870 = select i1 %173, float 0.000000e+00, float %4842
  %4871 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4864, float %4866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = select i1 %173, float 0.000000e+00, float %4862
  %4873 = select i1 %173, float %4871, float %4864
  %4874 = select i1 %173, float 0.000000e+00, float %4866
  %4875 = fmul fast float %4763, 9.843750e-01
  %4876 = fmul fast float %4759, 9.843750e-01
  %4877 = fadd fast float %4875, 7.812500e-03
  %4878 = fadd fast float %4876, 7.812500e-03
  %4879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4877, float %4878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4880 = extractvalue %dx.types.ResRet.f32 %4879, 2
  %4881 = extractvalue %dx.types.ResRet.f32 %4879, 3
  %4882 = fmul fast float %4880, %4750
  %4883 = fmul fast float %4880, %4751
  %4884 = fmul fast float %4880, %4761
  %4885 = fadd fast float %4882, %4881
  %4886 = fadd fast float %4883, %4881
  %4887 = fadd fast float %4884, %4881
  %4888 = fcmp fast ogt float %4148, 0.000000e+00
  br i1 %4888, label %4889, label %4915

; <label>:4889                                    ; preds = %4743
  %4890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4148, float %4763, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4891 = extractvalue %dx.types.ResRet.f32 %4890, 0
  %4892 = extractvalue %dx.types.ResRet.f32 %4890, 1
  %4893 = extractvalue %dx.types.ResRet.f32 %4890, 2
  %4894 = fadd fast float %4891, -5.000000e-01
  %4895 = fadd fast float %4892, -5.000000e-01
  %4896 = fadd fast float %4893, -5.000000e-01
  %4897 = fsub fast float 1.000000e+00, %4750
  %4898 = fsub fast float 1.000000e+00, %4751
  %4899 = fsub fast float 1.000000e+00, %4761
  %4900 = fmul fast float %4750, 4.000000e+00
  %4901 = fmul fast float %4900, %4897
  %4902 = fmul fast float %4901, %4894
  %4903 = fmul fast float %4751, 4.000000e+00
  %4904 = fmul fast float %4903, %4898
  %4905 = fmul fast float %4904, %4895
  %4906 = fmul fast float %4761, 4.000000e+00
  %4907 = fmul fast float %4906, %4899
  %4908 = fmul fast float %4907, %4896
  %4909 = fadd fast float %4902, %4885
  %4910 = fadd fast float %4905, %4886
  %4911 = fadd fast float %4908, %4887
  %4912 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4913 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  br label %4915

; <label>:4915                                    ; preds = %4889, %4743
  %4916 = phi float [ %4912, %4889 ], [ %4885, %4743 ]
  %4917 = phi float [ %4913, %4889 ], [ %4886, %4743 ]
  %4918 = phi float [ %4914, %4889 ], [ %4887, %4743 ]
  %4919 = call float @dx.op.binary.f32(i32 35, float %4917, float %4918)  ; FMax(a,b)
  %4920 = call float @dx.op.binary.f32(i32 35, float %4916, float %4919)  ; FMax(a,b)
  %4921 = fsub fast float 1.000000e+00, %4920
  %4922 = fmul fast float %4921, %4868
  %4923 = fmul fast float %4921, %4869
  %4924 = fmul fast float %4921, %4870
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4757, float %4758, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = fcmp fast ogt float %4925, 0x3E7FF19E20000000
  %4927 = fdiv fast float 1.000000e+00, %4925
  %4928 = select i1 %4926, float %4927, float 0.000000e+00
  %4929 = fmul fast float %4928, %4756
  %4930 = fmul fast float %4928, %4757
  %4931 = fmul fast float %4928, %4758
  %4932 = fadd fast float %4929, -1.000000e+00
  %4933 = fadd fast float %4930, -1.000000e+00
  %4934 = fadd fast float %4931, -1.000000e+00
  %4935 = fmul fast float %4932, 5.000000e-01
  %4936 = fmul fast float %4933, 5.000000e-01
  %4937 = fmul fast float %4934, 5.000000e-01
  %4938 = fadd fast float %4935, 1.000000e+00
  %4939 = fadd fast float %4936, 1.000000e+00
  %4940 = fadd fast float %4937, 1.000000e+00
  %4941 = fmul fast float %4916, %4872
  %4942 = fmul fast float %4917, %4873
  %4943 = fmul fast float %4918, %4874
  %4944 = fsub fast float 1.000000e+00, %4763
  %4945 = bitcast float %4944 to i32
  %4946 = sitofp i32 %4945 to float
  %4947 = fmul fast float %4946, 5.000000e+00
  %4948 = fadd fast float %4947, 0xC1EFBF8940000000
  %4949 = fptosi float %4948 to i32
  %4950 = bitcast i32 %4949 to float
  %4951 = fmul fast float %4950, %4149
  %4952 = fmul fast float %4868, %4951
  %4953 = fmul fast float %4952, %4921
  %4954 = fmul fast float %4953, %4938
  %4955 = fmul fast float %4869, %4951
  %4956 = fmul fast float %4955, %4921
  %4957 = fmul fast float %4956, %4939
  %4958 = fmul fast float %4870, %4951
  %4959 = fmul fast float %4958, %4921
  %4960 = fmul fast float %4959, %4940
  %4961 = fmul fast float %4922, %4145
  %4962 = fmul fast float %4923, %4145
  %4963 = fmul fast float %4924, %4145
  %4964 = fadd fast float %4941, %4141
  %4965 = fadd fast float %4964, %4954
  %4966 = fmul fast float %4965, %4145
  %4967 = fadd fast float %4942, %4142
  %4968 = fadd fast float %4967, %4957
  %4969 = fmul fast float %4968, %4145
  %4970 = fadd fast float %4943, %4143
  %4971 = fadd fast float %4970, %4960
  %4972 = fmul fast float %4971, %4145
  %4973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4974 = extractvalue %dx.types.CBufRet.f32 %4973, 3
  %4975 = fcmp fast oeq float %4974, 0.000000e+00
  br i1 %4975, label %5203, label %4976

; <label>:4976                                    ; preds = %4915
  %4977 = extractvalue %dx.types.CBufRet.f32 %4973, 0
  %4978 = extractvalue %dx.types.CBufRet.f32 %4973, 1
  %4979 = extractvalue %dx.types.CBufRet.f32 %4973, 2
  %4980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4981 = extractvalue %dx.types.CBufRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.CBufRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.CBufRet.f32 %4980, 2
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 0
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 1
  %4987 = call float @dx.op.dot3.f32(i32 55, float %4981, float %4982, float %4983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = select i1 %173, float %4985, float %4981
  %4989 = select i1 %173, float %4987, float %4982
  %4990 = select i1 %173, float %4986, float %4983
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %4993 = fcmp fast une float %4992, 0.000000e+00
  br i1 %4993, label %4994, label %5011

; <label>:4994                                    ; preds = %4976
  %4995 = fptoui float %68 to i32
  %4996 = fptoui float %69 to i32
  %4997 = lshr i32 %4995, 4
  %4998 = lshr i32 %4996, 4
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = fptoui float %5000 to i32
  %5002 = add i32 %5001, 15
  %5003 = lshr i32 %5002, 4
  %5004 = mul i32 %5003, %4998
  %5005 = add i32 %5004, %4997
  %5006 = shl i32 %5005, 3
  %5007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5006, i32 undef)  ; BufferLoad(srv,index,wot)
  %5008 = extractvalue %dx.types.ResRet.i32 %5007, 0
  %5009 = and i32 %5008, -268435456
  %5010 = icmp eq i32 %5009, -1342177280
  br i1 %5010, label %5021, label %5011

; <label>:5011                                    ; preds = %4994, %4976
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 3
  %5015 = fmul fast float %5013, %68
  %5016 = fmul fast float %5014, %69
  %5017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5015, float %5016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.ResRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.ResRet.f32 %5017, 2
  br label %5021

; <label>:5021                                    ; preds = %5011, %4994
  %5022 = phi float [ %5018, %5011 ], [ 0.000000e+00, %4994 ]
  %5023 = phi float [ %5019, %5011 ], [ 0.000000e+00, %4994 ]
  %5024 = phi float [ %5020, %5011 ], [ 0.000000e+00, %4994 ]
  %5025 = call float @dx.op.binary.f32(i32 36, float %5023, float %5024)  ; FMin(a,b)
  %5026 = call float @dx.op.binary.f32(i32 36, float %5022, float %5025)  ; FMin(a,b)
  %5027 = fcmp fast ogt float %5026, 0.000000e+00
  br i1 %5027, label %5028, label %5203, !dx.controlflow.hints !72

; <label>:5028                                    ; preds = %5021
  %5029 = fmul fast float %5022, %4988
  %5030 = fmul fast float %5023, %4989
  %5031 = fmul fast float %5024, %4990
  %5032 = fsub fast float %4977, %4749
  %5033 = fsub fast float %4978, %4748
  %5034 = fsub fast float %4979, %4747
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 25, float %5035)  ; Rsqrt(value)
  %5037 = fmul fast float %5036, %5032
  %5038 = fmul fast float %5036, %5033
  %5039 = fmul fast float %5036, %5034
  %5040 = call float @dx.op.dot3.f32(i32 55, float %4977, float %4978, float %4979, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4745, float %4744, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5043 = fmul fast float %5042, %5042
  %5044 = fmul fast float %5043, %4776
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %5045, %5042
  %5047 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = fmul fast float %5047, %5047
  %5049 = call float @dx.op.unary.f32(i32 6, float %5040)  ; FAbs(value)
  %5050 = fsub fast float 1.000000e+00, %4759
  %5051 = call float @dx.op.binary.f32(i32 35, float %5050, float 0x3F847AE140000000)  ; FMax(a,b)
  %5052 = fmul fast float %5051, %5051
  %5053 = fmul fast float %5052, %5052
  %5054 = fsub fast float 1.000000e+00, %5053
  %5055 = fmul fast float %4763, %4763
  %5056 = fmul fast float %5055, %5054
  %5057 = fadd fast float %5056, %5053
  %5058 = bitcast float %5057 to i32
  %5059 = ashr i32 %5058, 1
  %5060 = add nsw i32 %5059, 532487669
  %5061 = bitcast i32 %5060 to float
  %5062 = fadd fast float %5061, %4763
  %5063 = fmul fast float %5053, %5048
  %5064 = fsub fast float 1.000000e+00, %5048
  %5065 = fadd fast float %5064, %5063
  %5066 = fmul fast float %5049, %5049
  %5067 = fmul fast float %5066, %5054
  %5068 = fadd fast float %5067, %5053
  %5069 = bitcast float %5068 to i32
  %5070 = ashr i32 %5069, 1
  %5071 = add nsw i32 %5070, 532487669
  %5072 = bitcast i32 %5071 to float
  %5073 = fadd fast float %5072, %5049
  %5074 = fmul fast float %5065, %5065
  %5075 = fmul fast float %5074, %5062
  %5076 = fmul fast float %5075, %5073
  %5077 = fdiv fast float 0x3FF0A00000000000, %5076
  %5078 = fmul fast float %5077, %5053
  %5079 = call float @dx.op.unary.f32(i32 6, float %5041)  ; FAbs(value)
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = bitcast float %5080 to i32
  %5082 = sitofp i32 %5081 to float
  %5083 = fmul fast float %5082, 5.000000e+00
  %5084 = fadd fast float %5083, 0xC1EFBF8940000000
  %5085 = fptosi float %5084 to i32
  %5086 = bitcast i32 %5085 to float
  %5087 = fsub fast float 1.000000e+00, %4750
  %5088 = fsub fast float 1.000000e+00, %4751
  %5089 = fsub fast float 1.000000e+00, %4761
  %5090 = fmul fast float %5086, %5087
  %5091 = fmul fast float %5086, %5088
  %5092 = fmul fast float %5086, %5089
  %5093 = fadd fast float %5090, %4750
  %5094 = fadd fast float %5091, %4751
  %5095 = fadd fast float %5092, %4761
  br i1 %4888, label %5096, label %5119

; <label>:5096                                    ; preds = %5028
  %5097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4148, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5098 = extractvalue %dx.types.ResRet.f32 %5097, 0
  %5099 = extractvalue %dx.types.ResRet.f32 %5097, 1
  %5100 = extractvalue %dx.types.ResRet.f32 %5097, 2
  %5101 = fadd fast float %5098, -5.000000e-01
  %5102 = fadd fast float %5099, -5.000000e-01
  %5103 = fadd fast float %5100, -5.000000e-01
  %5104 = fmul fast float %4750, 4.000000e+00
  %5105 = fmul fast float %5104, %5087
  %5106 = fmul fast float %5105, %5101
  %5107 = fmul fast float %4751, 4.000000e+00
  %5108 = fmul fast float %5107, %5088
  %5109 = fmul fast float %5108, %5102
  %5110 = fmul fast float %4761, 4.000000e+00
  %5111 = fmul fast float %5110, %5089
  %5112 = fmul fast float %5111, %5103
  %5113 = fadd fast float %5106, %5093
  %5114 = fadd fast float %5109, %5094
  %5115 = fadd fast float %5112, %5095
  %5116 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5117 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5118 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  br label %5119

; <label>:5119                                    ; preds = %5096, %5028
  %5120 = phi float [ %5116, %5096 ], [ %5093, %5028 ]
  %5121 = phi float [ %5117, %5096 ], [ %5094, %5028 ]
  %5122 = phi float [ %5118, %5096 ], [ %5095, %5028 ]
  %5123 = fmul fast float %5040, 9.843750e-01
  %5124 = fadd fast float %5123, 7.812500e-03
  %5125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5124, float %4878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5126 = extractvalue %dx.types.ResRet.f32 %5125, 2
  %5127 = extractvalue %dx.types.ResRet.f32 %5125, 3
  %5128 = fmul fast float %5126, %4750
  %5129 = fmul fast float %5126, %4751
  %5130 = fmul fast float %5126, %4761
  %5131 = fadd fast float %5128, %5127
  %5132 = fadd fast float %5129, %5127
  %5133 = fadd fast float %5130, %5127
  br i1 %4888, label %5134, label %5157

; <label>:5134                                    ; preds = %5119
  %5135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4148, float %5040, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5136 = extractvalue %dx.types.ResRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.ResRet.f32 %5135, 1
  %5138 = extractvalue %dx.types.ResRet.f32 %5135, 2
  %5139 = fadd fast float %5136, -5.000000e-01
  %5140 = fadd fast float %5137, -5.000000e-01
  %5141 = fadd fast float %5138, -5.000000e-01
  %5142 = fmul fast float %4750, 4.000000e+00
  %5143 = fmul fast float %5142, %5087
  %5144 = fmul fast float %5143, %5139
  %5145 = fmul fast float %4751, 4.000000e+00
  %5146 = fmul fast float %5145, %5088
  %5147 = fmul fast float %5146, %5140
  %5148 = fmul fast float %4761, 4.000000e+00
  %5149 = fmul fast float %5148, %5089
  %5150 = fmul fast float %5149, %5141
  %5151 = fadd fast float %5144, %5131
  %5152 = fadd fast float %5147, %5132
  %5153 = fadd fast float %5150, %5133
  %5154 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5155 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5156 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  br label %5157

; <label>:5157                                    ; preds = %5134, %5119
  %5158 = phi float [ %5154, %5134 ], [ %5131, %5119 ]
  %5159 = phi float [ %5155, %5134 ], [ %5132, %5119 ]
  %5160 = phi float [ %5156, %5134 ], [ %5133, %5119 ]
  %5161 = call float @dx.op.binary.f32(i32 35, float %5159, float %5160)  ; FMax(a,b)
  %5162 = call float @dx.op.binary.f32(i32 35, float %5158, float %5161)  ; FMax(a,b)
  %5163 = fsub fast float 1.000000e+00, %5162
  %5164 = fmul fast float %5120, %5078
  %5165 = fmul fast float %5121, %5078
  %5166 = fmul fast float %5122, %5078
  %5167 = fsub fast float 1.000000e+00, %5041
  %5168 = bitcast float %5167 to i32
  %5169 = sitofp i32 %5168 to float
  %5170 = fmul fast float %5169, 5.000000e+00
  %5171 = fadd fast float %5170, 0xC1EFBF8940000000
  %5172 = fptosi float %5171 to i32
  %5173 = bitcast i32 %5172 to float
  %5174 = fmul fast float %5173, %4149
  %5175 = fmul fast float %5163, %5174
  %5176 = fmul fast float %5175, %4938
  %5177 = fmul fast float %5175, %4939
  %5178 = fmul fast float %5175, %4940
  %5179 = fadd fast float %5176, %5164
  %5180 = fadd fast float %5177, %5165
  %5181 = fadd fast float %5178, %5166
  %5182 = fmul fast float %5046, %5029
  %5183 = fmul fast float %5182, %5163
  %5184 = fmul fast float %5046, %5030
  %5185 = fmul fast float %5184, %5163
  %5186 = fmul fast float %5046, %5031
  %5187 = fmul fast float %5186, %5163
  %5188 = fmul fast float %5182, %5179
  %5189 = fmul fast float %5184, %5180
  %5190 = fmul fast float %5186, %5181
  %5191 = fadd fast float %5183, %4922
  %5192 = fmul fast float %5191, %4145
  %5193 = fadd fast float %5185, %4923
  %5194 = fmul fast float %5193, %4145
  %5195 = fadd fast float %5187, %4924
  %5196 = fmul fast float %5195, %4145
  %5197 = fadd fast float %5188, %4965
  %5198 = fmul fast float %5197, %4145
  %5199 = fadd fast float %5189, %4968
  %5200 = fmul fast float %5199, %4145
  %5201 = fadd fast float %5190, %4971
  %5202 = fmul fast float %5201, %4145
  br label %5203

; <label>:5203                                    ; preds = %5157, %5021, %4915
  %5204 = phi float [ %4966, %4915 ], [ %4966, %5021 ], [ %5198, %5157 ]
  %5205 = phi float [ %4969, %4915 ], [ %4969, %5021 ], [ %5200, %5157 ]
  %5206 = phi float [ %4972, %4915 ], [ %4972, %5021 ], [ %5202, %5157 ]
  %5207 = phi float [ %4961, %4915 ], [ %4961, %5021 ], [ %5192, %5157 ]
  %5208 = phi float [ %4962, %4915 ], [ %4962, %5021 ], [ %5194, %5157 ]
  %5209 = phi float [ %4963, %4915 ], [ %4963, %5021 ], [ %5196, %5157 ]
  %5210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.i32 %5210, 0
  %5212 = icmp eq i32 %5211, 0
  br i1 %5212, label %5647, label %5213

; <label>:5213                                    ; preds = %5203
  %5214 = fptoui float %68 to i32
  %5215 = fptoui float %69 to i32
  %5216 = lshr i32 %5214, 4
  %5217 = lshr i32 %5215, 4
  %5218 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5219 = extractvalue %dx.types.CBufRet.i32 %5218, 0
  %5220 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5217, i32 %5219, i32 %5216)  ; UMad(a,b,c)
  %5221 = add nsw i32 %5211, -1
  %5222 = call i32 @dx.op.binary.i32(i32 37, i32 %5221, i32 0)  ; IMax(a,b)
  %5223 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5224 = fptoui float %5223 to i32
  %5225 = lshr i32 %5224, 5
  %5226 = call i32 @dx.op.binary.i32(i32 40, i32 %5225, i32 8191)  ; UMin(a,b)
  %5227 = shl i32 %5226, 2
  %5228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5227, i32 undef)  ; BufferLoad(srv,index,wot)
  %5229 = extractvalue %dx.types.ResRet.i32 %5228, 0
  %5230 = lshr i32 %5229, 16
  %5231 = and i32 %5229, 65535
  %5232 = lshr i32 %5229, 21
  %5233 = lshr i32 %5231, 5
  %5234 = call i32 @dx.op.binary.i32(i32 40, i32 %5233, i32 %5222)  ; UMin(a,b)
  %5235 = icmp ugt i32 %5232, %5234
  br i1 %5235, label %5647, label %5236

; <label>:5236                                    ; preds = %5213
  br label %5237

; <label>:5237                                    ; preds = %5637, %5236
  %5238 = phi i32 [ %5644, %5637 ], [ %5232, %5236 ]
  %5239 = phi float [ %5638, %5637 ], [ %5204, %5236 ]
  %5240 = phi float [ %5639, %5637 ], [ %5205, %5236 ]
  %5241 = phi float [ %5640, %5637 ], [ %5206, %5236 ]
  %5242 = phi float [ %5641, %5637 ], [ %5207, %5236 ]
  %5243 = phi float [ %5642, %5637 ], [ %5208, %5236 ]
  %5244 = phi float [ %5643, %5637 ], [ %5209, %5236 ]
  %5245 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.i32 %5245, 0
  %5247 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5220, i32 %5246, i32 %5238)  ; UMad(a,b,c)
  %5248 = shl i32 %5247, 2
  %5249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5248, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.i32 %5249, 0
  %5251 = shl i32 %5238, 5
  %5252 = sub nsw i32 %5230, %5251
  %5253 = call i32 @dx.op.binary.i32(i32 37, i32 %5252, i32 0)  ; IMax(a,b)
  %5254 = call i32 @dx.op.binary.i32(i32 38, i32 %5253, i32 31)  ; IMin(a,b)
  %5255 = sub nsw i32 1, %5230
  %5256 = add nsw i32 %5255, %5231
  %5257 = call i32 @dx.op.binary.i32(i32 37, i32 %5256, i32 0)  ; IMax(a,b)
  %5258 = call i32 @dx.op.binary.i32(i32 38, i32 %5257, i32 32)  ; IMin(a,b)
  %5259 = and i32 %5258, 31
  %5260 = shl i32 -1, %5259
  %5261 = xor i32 %5260, -1
  %5262 = and i32 %5254, 31
  %5263 = shl i32 %5261, %5262
  %5264 = icmp eq i32 %5258, 32
  %5265 = select i1 %5264, i32 -1, i32 %5263
  %5266 = and i32 %5265, %5250
  %5267 = icmp eq i32 %5266, 0
  br i1 %5267, label %5637, label %5268

; <label>:5268                                    ; preds = %5237
  br label %5269

; <label>:5269                                    ; preds = %5349, %5268
  %5270 = phi i32 [ %5281, %5349 ], [ %5266, %5268 ]
  %5271 = phi float [ %5350, %5349 ], [ %5239, %5268 ]
  %5272 = phi float [ %5351, %5349 ], [ %5240, %5268 ]
  %5273 = phi float [ %5352, %5349 ], [ %5241, %5268 ]
  %5274 = phi float [ %5353, %5349 ], [ %5242, %5268 ]
  %5275 = phi float [ %5354, %5349 ], [ %5243, %5268 ]
  %5276 = phi float [ %5355, %5349 ], [ %5244, %5268 ]
  %5277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5270)  ; FirstbitLo(value)
  %5278 = add i32 %5277, %5251
  %5279 = and i32 %5277, 31
  %5280 = shl i32 1, %5279
  %5281 = xor i32 %5280, %5270
  %5282 = mul i32 %5278, 112
  %5283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5282, i32 undef)  ; BufferLoad(srv,index,wot)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = extractvalue %dx.types.ResRet.f32 %5283, 1
  %5286 = extractvalue %dx.types.ResRet.f32 %5283, 2
  %5287 = or i32 %5282, 12
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = add i32 %5282, 44
  %5291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.f32 %5291, 0
  %5293 = add i32 %5282, 48
  %5294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.f32 %5294, 0
  %5296 = extractvalue %dx.types.ResRet.f32 %5294, 1
  %5297 = extractvalue %dx.types.ResRet.f32 %5294, 2
  %5298 = add i32 %5282, 80
  %5299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5298, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5299, 2
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5284, float %5285, float %5286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = select i1 %173, float %5300, float %5284
  %5304 = select i1 %173, float %5302, float %5285
  %5305 = select i1 %173, float %5301, float %5286
  %5306 = fsub fast float %5295, %131
  %5307 = fsub fast float %5296, %132
  %5308 = fsub fast float %5297, %133
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5307, float %5308, float %5306, float %5307, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.unary.f32(i32 24, float %5309)  ; Sqrt(value)
  %5311 = fdiv fast float 1.000000e+00, %5310
  %5312 = fmul fast float %5311, %5306
  %5313 = fmul fast float %5311, %5307
  %5314 = fmul fast float %5311, %5308
  %5315 = fadd fast float %5310, %5289
  %5316 = fdiv fast float 1.000000e+00, %5315
  %5317 = fmul float %5292, %5316
  %5318 = fmul float %5317, %5317
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = and i32 %5280, %5266
  %5321 = icmp eq i32 %5320, 0
  br i1 %5321, label %5344, label %5322, !dx.controlflow.hints !73

; <label>:5322                                    ; preds = %5269
  %5323 = lshr i32 %5214, 5
  %5324 = lshr i32 %5215, 5
  %5325 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5323, i32 %5324, i32 %5278, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5326 = extractvalue %dx.types.ResRet.i32 %5325, 0
  %5327 = and i32 %5326, 3
  %5328 = icmp eq i32 %5327, 0
  %5329 = select i1 %5328, float 1.000000e+00, float 0.000000e+00
  %5330 = icmp eq i32 %5327, 3
  br i1 %5330, label %5331, label %5344

; <label>:5331                                    ; preds = %5322
  %5332 = lshr i32 %5326, 10
  %5333 = and i32 %5332, 8160
  %5334 = and i32 %5215, 31
  %5335 = or i32 %5333, %5334
  %5336 = lshr i32 %5326, 1
  %5337 = and i32 %5336, 16352
  %5338 = and i32 %5214, 31
  %5339 = or i32 %5337, %5338
  %5340 = lshr i32 %5326, 23
  %5341 = and i32 %5340, 255
  %5342 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5339, i32 %5335, i32 %5341, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5343 = extractvalue %dx.types.ResRet.f32 %5342, 0
  br label %5344

; <label>:5344                                    ; preds = %5331, %5322, %5269
  %5345 = phi float [ %5343, %5331 ], [ %5329, %5322 ], [ 0.000000e+00, %5269 ]
  %5346 = call float @dx.op.binary.f32(i32 36, float %5345, float %5345)  ; FMin(a,b)
  %5347 = call float @dx.op.binary.f32(i32 36, float %5345, float %5346)  ; FMin(a,b)
  %5348 = fcmp fast ogt float %5347, 0.000000e+00
  br i1 %5348, label %5357, label %5349, !dx.controlflow.hints !74

; <label>:5349                                    ; preds = %5593, %5344
  %5350 = phi float [ %5271, %5344 ], [ %5633, %5593 ]
  %5351 = phi float [ %5272, %5344 ], [ %5634, %5593 ]
  %5352 = phi float [ %5273, %5344 ], [ %5635, %5593 ]
  %5353 = phi float [ %5274, %5344 ], [ %5627, %5593 ]
  %5354 = phi float [ %5275, %5344 ], [ %5628, %5593 ]
  %5355 = phi float [ %5276, %5344 ], [ %5629, %5593 ]
  %5356 = icmp eq i32 %5270, %5280
  br i1 %5356, label %5636, label %5269

; <label>:5357                                    ; preds = %5344
  %5358 = fmul fast float %5345, %5303
  %5359 = fmul fast float %5345, %5304
  %5360 = fmul fast float %5345, %5305
  %5361 = fsub fast float %5297, %4549
  %5362 = fcmp fast ogt float %5361, 0.000000e+00
  %5363 = fsub fast float %133, %4549
  %5364 = fcmp fast ogt float %5363, 0.000000e+00
  %5365 = xor i1 %5364, %5362
  %5366 = fsub fast float %4549, %5297
  %5367 = fmul fast float %5366, 2.000000e+00
  %5368 = fadd fast float %5367, %5297
  %5369 = select i1 %5365, float %5297, float %5368
  %5370 = fsub fast float %5369, %133
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5307, float %5370, float %5306, float %5307, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = call float @dx.op.unary.f32(i32 25, float %5371)  ; Rsqrt(value)
  %5373 = fmul fast float %5372, %5306
  %5374 = fmul fast float %5372, %5307
  %5375 = fmul fast float %5372, %5370
  %5376 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4557)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5378 = fdiv fast float 1.000000e+00, %5377
  %5379 = fmul fast float %5378, %5376
  %5380 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5363, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fcmp fast ogt float %5380, 0.000000e+00
  %5382 = fcmp fast olt float %5380, 0.000000e+00
  %5383 = zext i1 %5381 to i32
  %5384 = zext i1 %5382 to i32
  %5385 = sub nsw i32 %5383, %5384
  %5386 = sitofp i32 %5385 to float
  %5387 = fsub fast float %5369, %4549
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5307, float %5387, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = fcmp fast ogt float %5388, 0.000000e+00
  %5390 = fcmp fast olt float %5388, 0.000000e+00
  %5391 = zext i1 %5389 to i32
  %5392 = zext i1 %5390 to i32
  %5393 = sub nsw i32 %5391, %5392
  %5394 = sitofp i32 %5393 to float
  %5395 = fcmp fast une float %5386, %5394
  br i1 %5395, label %5396, label %5406

; <label>:5396                                    ; preds = %5357
  %5397 = fmul fast float %5379, %5375
  %5398 = fmul fast float %5379, %5374
  %5399 = fmul fast float %5379, %5373
  %5400 = fmul fast float %5399, %5399
  %5401 = fmul fast float %5398, %5398
  %5402 = fadd fast float %5400, %5401
  %5403 = fmul fast float %5397, %5397
  %5404 = fadd fast float %5402, %5403
  %5405 = call float @dx.op.unary.f32(i32 24, float %5404)  ; Sqrt(value)
  br label %5418

; <label>:5406                                    ; preds = %5357
  %5407 = icmp slt i32 %5385, 0
  br i1 %5407, label %5408, label %5418

; <label>:5408                                    ; preds = %5406
  %5409 = fsub fast float %131, %5295
  %5410 = fsub fast float %132, %5296
  %5411 = fsub fast float %133, %5369
  %5412 = fmul fast float %5409, %5409
  %5413 = fmul fast float %5410, %5410
  %5414 = fadd fast float %5412, %5413
  %5415 = fmul fast float %5411, %5411
  %5416 = fadd fast float %5414, %5415
  %5417 = call float @dx.op.unary.f32(i32 24, float %5416)  ; Sqrt(value)
  br label %5418

; <label>:5418                                    ; preds = %5408, %5406, %5396
  %5419 = phi float [ %5405, %5396 ], [ %5417, %5408 ], [ 0.000000e+00, %5406 ]
  %5420 = and i1 %5364, %5362
  %5421 = fsub fast float -0.000000e+00, %5419
  %5422 = select i1 %5420, float -0.000000e+00, float %5421
  %5423 = fmul fast float %4550, 0x3FF7154760000000
  %5424 = fmul fast float %5423, %5422
  %5425 = fmul fast float %4551, 0x3FF7154760000000
  %5426 = fmul fast float %5425, %5422
  %5427 = fmul fast float %4552, 0x3FF7154760000000
  %5428 = fmul fast float %5427, %5422
  %5429 = call float @dx.op.unary.f32(i32 21, float %5424)  ; Exp(value)
  %5430 = call float @dx.op.unary.f32(i32 21, float %5426)  ; Exp(value)
  %5431 = call float @dx.op.unary.f32(i32 21, float %5428)  ; Exp(value)
  %5432 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5433 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5434 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5435 = fmul fast float %5358, %5432
  %5436 = fmul fast float %5359, %5433
  %5437 = fmul fast float %5360, %5434
  %5438 = fsub fast float %5312, %4749
  %5439 = fsub fast float %5313, %4748
  %5440 = fsub fast float %5314, %4747
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5438, float %5439, float %5440, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = call float @dx.op.unary.f32(i32 25, float %5441)  ; Rsqrt(value)
  %5443 = fmul fast float %5442, %5438
  %5444 = fmul fast float %5442, %5439
  %5445 = fmul fast float %5442, %5440
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %4753, float %4754, float %4755)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4745, float %4744, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5449 = fmul fast float %5448, %5319
  %5450 = fmul fast float %5448, %5448
  %5451 = fmul fast float %5450, %4776
  %5452 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5453 = fmul fast float %5449, %5452
  %5454 = bitcast float %5309 to i32
  %5455 = ashr i32 %5454, 1
  %5456 = sub nsw i32 1597463007, %5455
  %5457 = bitcast i32 %5456 to float
  %5458 = fmul fast float %5457, %5306
  %5459 = fmul fast float %5457, %5307
  %5460 = fmul fast float %5457, %5308
  %5461 = fsub fast float %5458, %4749
  %5462 = fsub fast float %5459, %4748
  %5463 = fsub fast float %5460, %4747
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = call float @dx.op.unary.f32(i32 25, float %5464)  ; Rsqrt(value)
  %5466 = fmul fast float %5461, %5465
  %5467 = fmul fast float %5462, %5465
  %5468 = fmul fast float %5463, %5465
  %5469 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = fmul fast float %5469, %5469
  %5471 = call float @dx.op.unary.f32(i32 6, float %5446)  ; FAbs(value)
  %5472 = fsub fast float 1.000000e+00, %4759
  %5473 = call float @dx.op.binary.f32(i32 35, float %5472, float 0x3F847AE140000000)  ; FMax(a,b)
  %5474 = fmul fast float %5473, %5473
  %5475 = fmul fast float %5474, %5474
  %5476 = fsub fast float 1.000000e+00, %5475
  %5477 = fmul fast float %4763, %4763
  %5478 = fmul fast float %5477, %5476
  %5479 = fadd fast float %5478, %5475
  %5480 = bitcast float %5479 to i32
  %5481 = ashr i32 %5480, 1
  %5482 = add nsw i32 %5481, 532487669
  %5483 = bitcast i32 %5482 to float
  %5484 = fadd fast float %5483, %4763
  %5485 = fmul fast float %5475, %5470
  %5486 = fsub fast float 1.000000e+00, %5470
  %5487 = fadd fast float %5486, %5485
  %5488 = fmul fast float %5471, %5471
  %5489 = fmul fast float %5488, %5476
  %5490 = fadd fast float %5489, %5475
  %5491 = bitcast float %5490 to i32
  %5492 = ashr i32 %5491, 1
  %5493 = add nsw i32 %5492, 532487669
  %5494 = bitcast i32 %5493 to float
  %5495 = fadd fast float %5494, %5471
  %5496 = fmul fast float %5487, %5487
  %5497 = fmul fast float %5496, %5484
  %5498 = fmul fast float %5497, %5495
  %5499 = fdiv fast float 1.000000e+00, %5498
  %5500 = bitcast float %5475 to i32
  %5501 = sitofp i32 %5500 to float
  %5502 = fmul fast float %5501, 0x3FE7F73180000000
  %5503 = fadd fast float %5502, 0x41AFE27C40000000
  %5504 = fptosi float %5503 to i32
  %5505 = bitcast i32 %5504 to float
  %5506 = fmul fast float %5292, 0x3FD80E9D60000000
  %5507 = fmul fast float %5506, %5457
  %5508 = fadd fast float %5505, %5507
  %5509 = bitcast float %5508 to i32
  %5510 = sub nsw i32 2129859010, %5509
  %5511 = bitcast i32 %5510 to float
  %5512 = fmul fast float %5475, %5499
  %5513 = fmul fast float %5512, %5505
  %5514 = fmul fast float %5513, %5511
  %5515 = call float @dx.op.unary.f32(i32 6, float %5447)  ; FAbs(value)
  %5516 = fsub fast float 1.000000e+00, %5515
  %5517 = bitcast float %5516 to i32
  %5518 = sitofp i32 %5517 to float
  %5519 = fmul fast float %5518, 5.000000e+00
  %5520 = fadd fast float %5519, 0xC1EFBF8940000000
  %5521 = fptosi float %5520 to i32
  %5522 = bitcast i32 %5521 to float
  %5523 = fsub fast float 1.000000e+00, %4750
  %5524 = fsub fast float 1.000000e+00, %4751
  %5525 = fsub fast float 1.000000e+00, %4761
  %5526 = fmul fast float %5522, %5523
  %5527 = fmul fast float %5522, %5524
  %5528 = fmul fast float %5522, %5525
  %5529 = fadd fast float %5526, %4750
  %5530 = fadd fast float %5527, %4751
  %5531 = fadd fast float %5528, %4761
  br i1 %4888, label %5532, label %5555

; <label>:5532                                    ; preds = %5418
  %5533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4148, float %5515, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5534 = extractvalue %dx.types.ResRet.f32 %5533, 0
  %5535 = extractvalue %dx.types.ResRet.f32 %5533, 1
  %5536 = extractvalue %dx.types.ResRet.f32 %5533, 2
  %5537 = fadd fast float %5534, -5.000000e-01
  %5538 = fadd fast float %5535, -5.000000e-01
  %5539 = fadd fast float %5536, -5.000000e-01
  %5540 = fmul fast float %4750, 4.000000e+00
  %5541 = fmul fast float %5540, %5523
  %5542 = fmul fast float %5541, %5537
  %5543 = fmul fast float %4751, 4.000000e+00
  %5544 = fmul fast float %5543, %5524
  %5545 = fmul fast float %5544, %5538
  %5546 = fmul fast float %4761, 4.000000e+00
  %5547 = fmul fast float %5546, %5525
  %5548 = fmul fast float %5547, %5539
  %5549 = fadd fast float %5542, %5529
  %5550 = fadd fast float %5545, %5530
  %5551 = fadd fast float %5548, %5531
  %5552 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5553 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5554 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  br label %5555

; <label>:5555                                    ; preds = %5532, %5418
  %5556 = phi float [ %5552, %5532 ], [ %5529, %5418 ]
  %5557 = phi float [ %5553, %5532 ], [ %5530, %5418 ]
  %5558 = phi float [ %5554, %5532 ], [ %5531, %5418 ]
  %5559 = fmul fast float %5446, 9.843750e-01
  %5560 = fadd fast float %5559, 7.812500e-03
  %5561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5560, float %4878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5562 = extractvalue %dx.types.ResRet.f32 %5561, 2
  %5563 = extractvalue %dx.types.ResRet.f32 %5561, 3
  %5564 = fmul fast float %5562, %4750
  %5565 = fmul fast float %5562, %4751
  %5566 = fmul fast float %5562, %4761
  %5567 = fadd fast float %5564, %5563
  %5568 = fadd fast float %5565, %5563
  %5569 = fadd fast float %5566, %5563
  br i1 %4888, label %5570, label %5593

; <label>:5570                                    ; preds = %5555
  %5571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4148, float %5446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5572 = extractvalue %dx.types.ResRet.f32 %5571, 0
  %5573 = extractvalue %dx.types.ResRet.f32 %5571, 1
  %5574 = extractvalue %dx.types.ResRet.f32 %5571, 2
  %5575 = fadd fast float %5572, -5.000000e-01
  %5576 = fadd fast float %5573, -5.000000e-01
  %5577 = fadd fast float %5574, -5.000000e-01
  %5578 = fmul fast float %4750, 4.000000e+00
  %5579 = fmul fast float %5578, %5523
  %5580 = fmul fast float %5579, %5575
  %5581 = fmul fast float %4751, 4.000000e+00
  %5582 = fmul fast float %5581, %5524
  %5583 = fmul fast float %5582, %5576
  %5584 = fmul fast float %4761, 4.000000e+00
  %5585 = fmul fast float %5584, %5525
  %5586 = fmul fast float %5585, %5577
  %5587 = fadd fast float %5580, %5567
  %5588 = fadd fast float %5583, %5568
  %5589 = fadd fast float %5586, %5569
  %5590 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5591 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  %5592 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  br label %5593

; <label>:5593                                    ; preds = %5570, %5555
  %5594 = phi float [ %5590, %5570 ], [ %5567, %5555 ]
  %5595 = phi float [ %5591, %5570 ], [ %5568, %5555 ]
  %5596 = phi float [ %5592, %5570 ], [ %5569, %5555 ]
  %5597 = call float @dx.op.binary.f32(i32 35, float %5595, float %5596)  ; FMax(a,b)
  %5598 = call float @dx.op.binary.f32(i32 35, float %5594, float %5597)  ; FMax(a,b)
  %5599 = fsub fast float 1.000000e+00, %5598
  %5600 = fmul fast float %5556, %5514
  %5601 = fmul fast float %5557, %5514
  %5602 = fmul fast float %5558, %5514
  %5603 = fsub fast float 1.000000e+00, %5447
  %5604 = bitcast float %5603 to i32
  %5605 = sitofp i32 %5604 to float
  %5606 = fmul fast float %5605, 5.000000e+00
  %5607 = fadd fast float %5606, 0xC1EFBF8940000000
  %5608 = fptosi float %5607 to i32
  %5609 = bitcast i32 %5608 to float
  %5610 = fmul fast float %5609, %4149
  %5611 = fmul fast float %5599, %5610
  %5612 = fmul fast float %5611, %4938
  %5613 = fmul fast float %5611, %4939
  %5614 = fmul fast float %5611, %4940
  %5615 = fadd fast float %5612, %5600
  %5616 = fadd fast float %5613, %5601
  %5617 = fadd fast float %5614, %5602
  %5618 = fmul fast float %5435, %4145
  %5619 = fmul fast float %5618, %5453
  %5620 = fmul fast float %5619, %5599
  %5621 = fmul fast float %5436, %4145
  %5622 = fmul fast float %5621, %5453
  %5623 = fmul fast float %5622, %5599
  %5624 = fmul fast float %5437, %4145
  %5625 = fmul fast float %5624, %5453
  %5626 = fmul fast float %5625, %5599
  %5627 = fadd fast float %5620, %5274
  %5628 = fadd fast float %5623, %5275
  %5629 = fadd fast float %5626, %5276
  %5630 = fmul fast float %5619, %5615
  %5631 = fmul fast float %5622, %5616
  %5632 = fmul fast float %5625, %5617
  %5633 = fadd fast float %5630, %5271
  %5634 = fadd fast float %5631, %5272
  %5635 = fadd fast float %5632, %5273
  br label %5349

; <label>:5636                                    ; preds = %5349
  br label %5637

; <label>:5637                                    ; preds = %5636, %5237
  %5638 = phi float [ %5239, %5237 ], [ %5350, %5636 ]
  %5639 = phi float [ %5240, %5237 ], [ %5351, %5636 ]
  %5640 = phi float [ %5241, %5237 ], [ %5352, %5636 ]
  %5641 = phi float [ %5242, %5237 ], [ %5353, %5636 ]
  %5642 = phi float [ %5243, %5237 ], [ %5354, %5636 ]
  %5643 = phi float [ %5244, %5237 ], [ %5355, %5636 ]
  %5644 = add i32 %5238, 1
  %5645 = icmp ugt i32 %5644, %5234
  br i1 %5645, label %5646, label %5237

; <label>:5646                                    ; preds = %5637
  br label %5647

; <label>:5647                                    ; preds = %5646, %5213, %5203
  %5648 = phi float [ %5204, %5203 ], [ %5204, %5213 ], [ %5638, %5646 ]
  %5649 = phi float [ %5205, %5203 ], [ %5205, %5213 ], [ %5639, %5646 ]
  %5650 = phi float [ %5206, %5203 ], [ %5206, %5213 ], [ %5640, %5646 ]
  %5651 = phi float [ %5207, %5203 ], [ %5207, %5213 ], [ %5641, %5646 ]
  %5652 = phi float [ %5208, %5203 ], [ %5208, %5213 ], [ %5642, %5646 ]
  %5653 = phi float [ %5209, %5203 ], [ %5209, %5213 ], [ %5643, %5646 ]
  %5654 = call float @dx.op.unary.f32(i32 24, float %4756)  ; Sqrt(value)
  %5655 = call float @dx.op.unary.f32(i32 24, float %4757)  ; Sqrt(value)
  %5656 = call float @dx.op.unary.f32(i32 24, float %4758)  ; Sqrt(value)
  %5657 = fmul fast float %5654, %5651
  %5658 = fmul fast float %5655, %5652
  %5659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5660 = extractvalue %dx.types.CBufRet.f32 %5659, 0
  br i1 %173, label %5661, label %5681

; <label>:5661                                    ; preds = %5647
  %5662 = fadd fast float %5653, %4151
  %5663 = fmul fast float %5662, %4152
  %5664 = fsub fast float 1.000000e+00, %4152
  %5665 = call float @dx.op.unary.f32(i32 7, float %5664)  ; Saturate(value)
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5668 = fmul fast float %5667, %5665
  %5669 = fadd fast float %5668, %5663
  %5670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5671 = extractvalue %dx.types.CBufRet.f32 %5670, 0
  %5672 = fmul fast float %5671, %4944
  %5673 = fsub fast float %5669, %5672
  %5674 = fadd fast float %5658, %5657
  %5675 = fmul fast float %5660, %5674
  %5676 = extractvalue %dx.types.CBufRet.f32 %5666, 1
  %5677 = fsub fast float %5673, %5676
  %5678 = extractvalue %dx.types.CBufRet.f32 %5666, 2
  %5679 = fmul fast float %5677, %5678
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  br label %5697

; <label>:5681                                    ; preds = %5647
  %5682 = fmul fast float %5656, %5653
  %5683 = fmul fast float %5660, %5657
  %5684 = fmul fast float %5660, %5658
  %5685 = fmul fast float %5682, %5660
  %5686 = add i32 %33, 356
  %5687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5686, i32 undef)  ; BufferLoad(srv,index,wot)
  %5688 = extractvalue %dx.types.ResRet.i32 %5687, 0
  %5689 = and i32 %5688, 32
  %5690 = icmp eq i32 %5689, 0
  br i1 %5690, label %5697, label %5691

; <label>:5691                                    ; preds = %5681
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 0
  %5694 = fmul fast float %5693, 0x3FE99999A0000000
  %5695 = fadd fast float %5693, %5683
  %5696 = fadd fast float %5694, %5685
  br label %5697

; <label>:5697                                    ; preds = %5691, %5681, %5661
  %5698 = phi float [ %5675, %5661 ], [ %5695, %5691 ], [ %5683, %5681 ]
  %5699 = phi float [ %5680, %5661 ], [ %5684, %5691 ], [ %5684, %5681 ]
  %5700 = phi float [ 1.000000e+00, %5661 ], [ %5696, %5691 ], [ %5685, %5681 ]
  %5701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5702 = extractvalue %dx.types.CBufRet.f32 %5701, 0
  %5703 = fmul fast float %5702, %5649
  %5704 = fmul fast float %5702, %5650
  %5705 = fadd fast float %5649, %5648
  %5706 = select i1 %173, float %5705, float %5648
  %5707 = fmul float %5706, %5702
  %5708 = select i1 %173, float 0.000000e+00, float %5703
  %5709 = select i1 %173, float 0.000000e+00, float %5704
  %5710 = fmul fast float %5698, %5654
  %5711 = fmul fast float %5699, %5655
  %5712 = fmul fast float %5700, %5656
  %5713 = fadd fast float %5707, %5710
  %5714 = fadd fast float %5708, %5711
  %5715 = fadd fast float %5709, %5712
  %5716 = select i1 %173, float %5699, float %5714
  %5717 = select i1 %173, float %5700, float %5715
  %5718 = call float @dx.op.binary.f32(i32 36, float %5713, float 3.225500e+04)  ; FMin(a,b)
  %5719 = call float @dx.op.binary.f32(i32 36, float %5716, float 3.225500e+04)  ; FMin(a,b)
  %5720 = call float @dx.op.binary.f32(i32 36, float %5717, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5718)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5719)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5720)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

