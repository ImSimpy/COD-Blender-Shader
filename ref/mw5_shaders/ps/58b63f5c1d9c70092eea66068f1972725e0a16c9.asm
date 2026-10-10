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
; shader hash: 4ce7a492aae70234df2c53251c265916
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
  %388 = add i32 %33, 520
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
  %1997 = add i32 %33, 480
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
  %2049 = add i32 %33, 464
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
  %2075 = add i32 %33, 416
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
  %2098 = add i32 %33, 496
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
  %2296 = add i32 %33, 432
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
  %2380 = add i32 %33, 448
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
  %2851 = add i32 %33, 484
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
  %2903 = add i32 %33, 468
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
  %2929 = add i32 %33, 420
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
  %2952 = add i32 %33, 500
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
  %3150 = add i32 %33, 436
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
  %3234 = add i32 %33, 452
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
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = call float @dx.op.dot2.f32(i32 54, float %3464, float %3465, float %3464, float %3465)  ; Dot2(ax,ay,bx,by)
  %3479 = fmul fast float %3478, 0x3FE3333340000000
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = call float @dx.op.dot3.f32(i32 55, float %3464, float %3465, float %3480, float %3464, float %3465, float %3480)  ; Dot3(ax,ay,az,bx,by,bz)
  %3482 = call float @dx.op.unary.f32(i32 25, float %3481)  ; Rsqrt(value)
  %3483 = fmul fast float %3482, %3464
  %3484 = fmul fast float %3482, %3465
  %3485 = fmul fast float %3480, %3482
  %3486 = fmul fast float %3485, %75
  %3487 = fmul fast float %3485, %76
  %3488 = fmul fast float %3485, %77
  %3489 = fmul fast float %3483, %49
  %3490 = fmul fast float %3483, %50
  %3491 = fmul fast float %3483, %51
  %3492 = fadd fast float %3486, %3489
  %3493 = fadd fast float %3487, %3490
  %3494 = fadd fast float %3488, %3491
  %3495 = fmul fast float %87, %3484
  %3496 = fmul fast float %88, %3484
  %3497 = fmul fast float %89, %3484
  %3498 = fadd fast float %3492, %3495
  %3499 = fadd fast float %3493, %3496
  %3500 = fadd fast float %3494, %3497
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3498, float %3499, float %3500, float %3498, float %3499, float %3500)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = call float @dx.op.unary.f32(i32 25, float %3501)  ; Rsqrt(value)
  %3503 = fmul fast float %3498, %3502
  %3504 = fmul fast float %3499, %3502
  %3505 = fmul fast float %3500, %3502
  %3506 = and i32 %35, 1
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3508, label %4020

; <label>:3508                                    ; preds = %3463
  %3509 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3510 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3511 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3512 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3513 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3514 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3515 = fadd fast float %3509, %131
  %3516 = fadd fast float %3510, %132
  %3517 = fadd fast float %3511, %133
  %3518 = fadd fast float %3512, %131
  %3519 = fadd fast float %3513, %132
  %3520 = fadd fast float %3514, %133
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3521, 2
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 2
  %3527 = extractvalue %dx.types.CBufRet.f32 %3525, 3
  %3528 = fmul fast float %3522, %68
  %3529 = fmul fast float %3528, %3526
  %3530 = fmul fast float %3523, %69
  %3531 = fmul fast float %3530, %3527
  %3532 = fptoui float %3529 to i32
  %3533 = fptoui float %3531 to i32
  %3534 = fadd fast float %3522, -1.000000e+00
  %3535 = fadd fast float %3523, -1.000000e+00
  %3536 = fptoui float %3534 to i32
  %3537 = fptoui float %3535 to i32
  %3538 = call i32 @dx.op.binary.i32(i32 40, i32 %3532, i32 %3536)  ; UMin(a,b)
  %3539 = call i32 @dx.op.binary.i32(i32 40, i32 %3533, i32 %3537)  ; UMin(a,b)
  %3540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3541 = extractvalue %dx.types.CBufRet.f32 %3540, 2
  %3542 = extractvalue %dx.types.CBufRet.f32 %3540, 3
  %3543 = fmul fast float %3541, %63
  %3544 = fsub fast float %3543, %3542
  %3545 = fadd fast float %3524, -1.000000e+00
  %3546 = call float @dx.op.binary.f32(i32 36, float %3544, float %3545)  ; FMin(a,b)
  %3547 = fptoui float %3546 to i32
  %3548 = fptoui float %3522 to i32
  %3549 = fptoui float %3523 to i32
  %3550 = mul i32 %3547, %3549
  %3551 = add i32 %3550, %3539
  %3552 = mul i32 %3551, %3548
  %3553 = add i32 %3552, %3538
  %3554 = shl i32 %3553, 2
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 1023
  %3558 = lshr i32 %3556, 10
  %3559 = icmp eq i32 %3557, 0
  br i1 %3559, label %3988, label %3560

; <label>:3560                                    ; preds = %3508
  %3561 = and i32 %3556, 1023
  br label %3562

; <label>:3562                                    ; preds = %3689, %3560
  %3563 = phi i32 [ %3639, %3689 ], [ 0, %3560 ]
  %3564 = phi float [ %3690, %3689 ], [ 0.000000e+00, %3560 ]
  %3565 = phi float [ %3691, %3689 ], [ %910, %3560 ]
  %3566 = phi float [ %3692, %3689 ], [ %3477, %3560 ]
  %3567 = phi float [ %3693, %3689 ], [ %3475, %3560 ]
  %3568 = phi float [ %3694, %3689 ], [ 0.000000e+00, %3560 ]
  %3569 = phi float [ %3695, %3689 ], [ 0.000000e+00, %3560 ]
  %3570 = phi float [ %3696, %3689 ], [ %3469, %3560 ]
  %3571 = phi float [ %3697, %3689 ], [ %3470, %3560 ]
  %3572 = phi float [ %3698, %3689 ], [ %3471, %3560 ]
  %3573 = phi float [ %3699, %3689 ], [ %3503, %3560 ]
  %3574 = phi float [ %3700, %3689 ], [ %3504, %3560 ]
  %3575 = phi float [ %3701, %3689 ], [ %3505, %3560 ]
  %3576 = phi float [ %3702, %3689 ], [ %3474, %3560 ]
  %3577 = phi float [ %3703, %3689 ], [ %3473, %3560 ]
  %3578 = phi float [ %3704, %3689 ], [ 0.000000e+00, %3560 ]
  %3579 = phi float [ %3705, %3689 ], [ %3472, %3560 ]
  %3580 = phi float [ %3706, %3689 ], [ %3466, %3560 ]
  %3581 = phi float [ %3707, %3689 ], [ %3467, %3560 ]
  %3582 = phi float [ %3708, %3689 ], [ %3468, %3560 ]
  %3583 = add nuw nsw i32 %3563, %3558
  %3584 = shl i32 %3583, 2
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = shl i32 %3586, 8
  %3588 = or i32 %3587, 48
  %3589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = extractvalue %dx.types.ResRet.f32 %3589, 1
  %3592 = extractvalue %dx.types.ResRet.f32 %3589, 2
  %3593 = extractvalue %dx.types.ResRet.f32 %3589, 3
  %3594 = or i32 %3587, 64
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.i32 %3595, 1
  %3598 = or i32 %3587, 80
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3602 = or i32 %3587, 96
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = extractvalue %dx.types.ResRet.f32 %3603, 3
  %3608 = or i32 %3587, 112
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3611 = or i32 %3587, 128
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = or i32 %3587, 144
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = or i32 %3587, 160
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = extractvalue %dx.types.ResRet.f32 %3624, 3
  %3629 = or i32 %3587, 192
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = or i32 %3587, 208
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = or i32 %3587, 248
  %3636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = add nuw nsw i32 %3563, 1
  %3640 = bitcast float %3593 to i32
  %3641 = and i32 %3640, 512
  %3642 = icmp eq i32 %3641, 0
  %3643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = extractvalue %dx.types.ResRet.f32 %3643, 3
  %3648 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3649 = or i32 %3587, 16
  %3650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3655 = call float @dx.op.dot4.f32(i32 56, float %3651, float %3652, float %3653, float %3654, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3656 = or i32 %3587, 32
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = extractvalue %dx.types.ResRet.f32 %3657, 3
  %3662 = call float @dx.op.dot4.f32(i32 56, float %3658, float %3659, float %3660, float %3661, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3663 = call float @dx.op.unary.f32(i32 27, float %3648)  ; Round_ni(value)
  %3664 = call float @dx.op.unary.f32(i32 6, float %3663)  ; FAbs(value)
  %3665 = call float @dx.op.unary.f32(i32 27, float %3655)  ; Round_ni(value)
  %3666 = call float @dx.op.unary.f32(i32 6, float %3665)  ; FAbs(value)
  %3667 = call float @dx.op.unary.f32(i32 6, float %3662)  ; FAbs(value)
  %3668 = call float @dx.op.unary.f32(i32 27, float %3667)  ; Round_ni(value)
  %3669 = fadd fast float %3666, %3664
  %3670 = fadd fast float %3669, %3668
  %3671 = fcmp fast oeq float %3670, 0.000000e+00
  %3672 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %3515, float %3516, float %3517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3673 = call float @dx.op.dot4.f32(i32 56, float %3651, float %3652, float %3653, float %3654, float %3515, float %3516, float %3517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3674 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %3518, float %3519, float %3520, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3675 = call float @dx.op.dot4.f32(i32 56, float %3651, float %3652, float %3653, float %3654, float %3518, float %3519, float %3520, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3676 = fsub fast float %3672, %3648
  %3677 = fsub fast float %3674, %3648
  %3678 = fsub fast float %3673, %3655
  %3679 = fsub fast float %3675, %3655
  %3680 = call float @dx.op.dot3.f32(i32 55, float %3590, float %3591, float %3592, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3683 = fadd fast float %3682, %3680
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3686 = fcmp fast ogt float %3684, %3685
  %3687 = and i1 %3671, %3686
  %3688 = and i1 %3642, %3687
  br i1 %3688, label %3710, label %3689

; <label>:3689                                    ; preds = %3974, %3791, %3710, %3562
  %3690 = phi float [ %3564, %3710 ], [ %3794, %3791 ], [ %3794, %3974 ], [ %3564, %3562 ]
  %3691 = phi float [ %3565, %3710 ], [ %3565, %3791 ], [ %3949, %3974 ], [ %3565, %3562 ]
  %3692 = phi float [ %3566, %3710 ], [ %3566, %3791 ], [ %3948, %3974 ], [ %3566, %3562 ]
  %3693 = phi float [ %3567, %3710 ], [ %3567, %3791 ], [ %3946, %3974 ], [ %3567, %3562 ]
  %3694 = phi float [ %3568, %3710 ], [ %3568, %3791 ], [ %3918, %3974 ], [ %3568, %3562 ]
  %3695 = phi float [ %3569, %3710 ], [ %3569, %3791 ], [ %3916, %3974 ], [ %3569, %3562 ]
  %3696 = phi float [ %3570, %3710 ], [ %3570, %3791 ], [ %3984, %3974 ], [ %3570, %3562 ]
  %3697 = phi float [ %3571, %3710 ], [ %3571, %3791 ], [ %3985, %3974 ], [ %3571, %3562 ]
  %3698 = phi float [ %3572, %3710 ], [ %3572, %3791 ], [ %3986, %3974 ], [ %3572, %3562 ]
  %3699 = phi float [ %3573, %3710 ], [ %3573, %3791 ], [ %3897, %3974 ], [ %3573, %3562 ]
  %3700 = phi float [ %3574, %3710 ], [ %3574, %3791 ], [ %3898, %3974 ], [ %3574, %3562 ]
  %3701 = phi float [ %3575, %3710 ], [ %3575, %3791 ], [ %3899, %3974 ], [ %3575, %3562 ]
  %3702 = phi float [ %3576, %3710 ], [ %3576, %3791 ], [ %3926, %3974 ], [ %3576, %3562 ]
  %3703 = phi float [ %3577, %3710 ], [ %3577, %3791 ], [ %3923, %3974 ], [ %3577, %3562 ]
  %3704 = phi float [ %3578, %3710 ], [ %3578, %3791 ], [ %3920, %3974 ], [ %3578, %3562 ]
  %3705 = phi float [ %3579, %3710 ], [ %3579, %3791 ], [ %3914, %3974 ], [ %3579, %3562 ]
  %3706 = phi float [ %3580, %3710 ], [ %3580, %3791 ], [ %3909, %3974 ], [ %3580, %3562 ]
  %3707 = phi float [ %3581, %3710 ], [ %3581, %3791 ], [ %3910, %3974 ], [ %3581, %3562 ]
  %3708 = phi float [ %3582, %3710 ], [ %3582, %3791 ], [ %3911, %3974 ], [ %3582, %3562 ]
  %3709 = icmp eq i32 %3639, %3561
  br i1 %3709, label %3987, label %3562

; <label>:3710                                    ; preds = %3562
  %3711 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3712 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3716 = extractvalue %dx.types.ResRet.i32 %3595, 3
  %3717 = extractvalue %dx.types.ResRet.i32 %3595, 2
  %3718 = add i32 %3716, 0
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3718, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3721 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3719, %dx.types.Handle %3720, float %3648, float %3655, float undef, float undef, i32 0, i32 0, i32 undef, float %3676, float %3678, float undef, float %3677, float %3679, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3722 = extractvalue %dx.types.ResRet.f32 %3721, 0
  %3723 = fmul fast float %3722, %3715
  %3724 = fadd fast float %3723, %3714
  %3725 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3726 = fmul fast float %3648, %3604
  %3727 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3655, float %3726)  ; FMad(a,b,c)
  %3728 = fadd fast float %3727, %3713
  %3729 = fmul fast float %3648, %3606
  %3730 = call float @dx.op.tertiary.f32(i32 46, float %3607, float %3655, float %3729)  ; FMad(a,b,c)
  %3731 = fadd fast float %3730, %3712
  %3732 = fmul fast float %3676, %3604
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3678, float %3732)  ; FMad(a,b,c)
  %3734 = fmul fast float %3676, %3606
  %3735 = call float @dx.op.tertiary.f32(i32 46, float %3607, float %3678, float %3734)  ; FMad(a,b,c)
  %3736 = fmul fast float %3677, %3604
  %3737 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3679, float %3736)  ; FMad(a,b,c)
  %3738 = fmul fast float %3677, %3606
  %3739 = call float @dx.op.tertiary.f32(i32 46, float %3607, float %3679, float %3738)  ; FMad(a,b,c)
  %3740 = add i32 %3717, 0
  %3741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3740, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3742 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3741, %dx.types.Handle %3720, float %3728, float %3731, float undef, float undef, i32 0, i32 0, i32 undef, float %3733, float %3735, float undef, float %3737, float %3739, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = and i32 %3640, 1024
  %3745 = icmp ne i32 %3744, 0
  %3746 = fcmp fast ogt float %3743, 0x3FE0101020000000
  %3747 = uitofp i1 %3746 to float
  %3748 = select i1 %3745, float %3747, float %3743
  %3749 = and i32 %3640, 8192
  %3750 = icmp ne i32 %3749, 0
  %3751 = select i1 %3750, float %3711, float 1.000000e+00
  %3752 = fmul fast float %3648, 2.000000e+00
  %3753 = fadd fast float %3752, -1.000000e+00
  %3754 = call float @dx.op.unary.f32(i32 6, float %3753)  ; FAbs(value)
  %3755 = fmul fast float %3754, %3637
  %3756 = fsub fast float %3755, %3637
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3758 = fmul fast float %3655, 2.000000e+00
  %3759 = fadd fast float %3758, -1.000000e+00
  %3760 = call float @dx.op.unary.f32(i32 6, float %3759)  ; FAbs(value)
  %3761 = fmul fast float %3760, %3638
  %3762 = fsub fast float %3761, %3638
  %3763 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3764 = fmul fast float %3667, %3600
  %3765 = fsub fast float %3764, %3600
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fmul fast float %3725, %3751
  %3768 = fmul fast float %3767, %3722
  %3769 = fmul fast float %3768, %3757
  %3770 = fmul fast float %3769, %3748
  %3771 = fmul fast float %3770, %3763
  %3772 = fmul fast float %3771, %3766
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3775 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3776 = fsub fast float %3684, %3775
  %3777 = fmul fast float %3776, %3774
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = fmul fast float %3772, %3601
  %3780 = fadd fast float %3772, %3601
  %3781 = fmul fast float %3780, %3610
  %3782 = fsub fast float %3781, %3610
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = and i32 %3640, 128
  %3785 = icmp ne i32 %3784, 0
  %3786 = select i1 %3785, float %3783, float %3779
  %3787 = fmul fast float %3786, %3778
  %3788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.f32 %3788, 0
  %3790 = fcmp fast ugt float %3787, %3789
  br i1 %3790, label %3791, label %3689

; <label>:3791                                    ; preds = %3710
  %3792 = select i1 %3750, float %3787, float 0.000000e+00
  %3793 = fadd fast float %3792, %3564
  %3794 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  br i1 %3750, label %3689, label %3795

; <label>:3795                                    ; preds = %3791
  %3796 = and i32 %3640, 4
  %3797 = and i32 %3640, 8
  %3798 = add i32 %3596, 0
  %3799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3798, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3801 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3799, %dx.types.Handle %3800, float %3728, float %3731, float undef, float undef, i32 0, i32 0, i32 undef, float %3733, float %3735, float undef, float %3737, float %3739, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 0
  %3803 = extractvalue %dx.types.ResRet.f32 %3801, 1
  %3804 = extractvalue %dx.types.ResRet.f32 %3801, 2
  %3805 = extractvalue %dx.types.ResRet.f32 %3801, 3
  %3806 = bitcast float %3622 to i32
  %3807 = and i32 %3806, 255
  %3808 = uitofp i32 %3807 to float
  %3809 = lshr i32 %3806, 8
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = fmul fast float %3805, %3808
  %3813 = fadd fast float %3812, %3811
  %3814 = fmul fast float %3813, 0x3F70101000000000
  %3815 = add i32 %3597, 0
  %3816 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3815, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3817 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3816, %dx.types.Handle %3800, float %3728, float %3731, float undef, float undef, i32 0, i32 0, i32 undef, float %3733, float %3735, float undef, float %3737, float %3739, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3822 = bitcast float %3616 to i32
  %3823 = and i32 %3822, 255
  %3824 = uitofp i32 %3823 to float
  %3825 = lshr i32 %3822, 8
  %3826 = and i32 %3825, 255
  %3827 = uitofp i32 %3826 to float
  %3828 = lshr i32 %3822, 16
  %3829 = and i32 %3828, 255
  %3830 = uitofp i32 %3829 to float
  %3831 = fmul fast float %3830, 0x3F70101000000000
  %3832 = fmul fast float %3818, %3824
  %3833 = fadd fast float %3832, %3827
  %3834 = fmul fast float %3833, 0x3F70101000000000
  %3835 = fadd fast float %3819, -5.000000e-01
  %3836 = fadd fast float %3821, -5.000000e-01
  %3837 = fmul fast float %3835, %3831
  %3838 = fmul fast float %3836, %3831
  %3839 = fadd fast float %3837, 5.000000e-01
  %3840 = fadd fast float %3838, 5.000000e-01
  %3841 = fmul fast float %3802, %3625
  %3842 = fmul fast float %3803, %3626
  %3843 = fmul fast float %3804, %3627
  %3844 = fmul fast float %3839, 2.000000e+00
  %3845 = fadd fast float %3844, -1.000000e+00
  %3846 = fmul fast float %3840, 2.000000e+00
  %3847 = fadd fast float %3846, -1.000000e+00
  %3848 = fadd fast float %3845, %3847
  %3849 = fmul fast float %3848, 5.000000e-01
  %3850 = fsub fast float %3845, %3847
  %3851 = fmul fast float %3850, 5.000000e-01
  %3852 = call float @dx.op.unary.f32(i32 6, float %3849)  ; FAbs(value)
  %3853 = fsub fast float 1.000000e+00, %3852
  %3854 = call float @dx.op.unary.f32(i32 6, float %3851)  ; FAbs(value)
  %3855 = fsub fast float %3853, %3854
  %3856 = call float @dx.op.dot3.f32(i32 55, float %3849, float %3851, float %3855, float %3849, float %3851, float %3855)  ; Dot3(ax,ay,az,bx,by,bz)
  %3857 = call float @dx.op.unary.f32(i32 25, float %3856)  ; Rsqrt(value)
  %3858 = fmul fast float %3849, %3857
  %3859 = fmul fast float %3851, %3857
  %3860 = fmul fast float %3857, %3855
  %3861 = fmul fast float %3860, %3590
  %3862 = fmul fast float %3860, %3591
  %3863 = fmul fast float %3860, %3592
  %3864 = fmul fast float %3858, %3613
  %3865 = fmul fast float %3858, %3614
  %3866 = fmul fast float %3858, %3615
  %3867 = fadd fast float %3864, %3861
  %3868 = fadd fast float %3865, %3862
  %3869 = fadd fast float %3866, %3863
  %3870 = fmul fast float %3859, %3619
  %3871 = fmul fast float %3859, %3620
  %3872 = fmul fast float %3859, %3621
  %3873 = fadd fast float %3867, %3870
  %3874 = fadd fast float %3868, %3871
  %3875 = fadd fast float %3869, %3872
  %3876 = call float @dx.op.dot3.f32(i32 55, float %3873, float %3874, float %3875, float %3873, float %3874, float %3875)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = call float @dx.op.unary.f32(i32 25, float %3876)  ; Rsqrt(value)
  %3878 = fmul fast float %3873, %3877
  %3879 = fmul fast float %3874, %3877
  %3880 = fmul fast float %3875, %3877
  %3881 = icmp ne i32 %3797, 0
  %3882 = select i1 %3881, float 1.000000e+00, float 0.000000e+00
  %3883 = fmul fast float %3787, %3882
  %3884 = and i32 %3640, 1
  %3885 = icmp eq i32 %3884, 0
  br i1 %3885, label %3886, label %3890

; <label>:3886                                    ; preds = %3795
  %3887 = fsub fast float %3878, %3573
  %3888 = fsub fast float %3879, %3574
  %3889 = fsub fast float %3880, %3575
  br label %3890

; <label>:3890                                    ; preds = %3886, %3795
  %3891 = phi float [ %3887, %3886 ], [ %3878, %3795 ]
  %3892 = phi float [ %3888, %3886 ], [ %3879, %3795 ]
  %3893 = phi float [ %3889, %3886 ], [ %3880, %3795 ]
  %3894 = fmul float %3893, %3883
  %3895 = fmul float %3892, %3883
  %3896 = fmul float %3891, %3883
  %3897 = fadd fast float %3896, %3573
  %3898 = fadd fast float %3895, %3574
  %3899 = fadd fast float %3894, %3575
  %3900 = icmp ne i32 %3796, 0
  %3901 = select i1 %3900, float 1.000000e+00, float 0.000000e+00
  %3902 = fmul fast float %3787, %3901
  %3903 = fsub fast float %3841, %3580
  %3904 = fsub fast float %3842, %3581
  %3905 = fsub fast float %3843, %3582
  %3906 = fmul fast float %3903, %3902
  %3907 = fmul fast float %3904, %3902
  %3908 = fmul fast float %3905, %3902
  %3909 = fadd fast float %3906, %3580
  %3910 = fadd fast float %3907, %3581
  %3911 = fadd fast float %3908, %3582
  %3912 = fsub fast float %3814, %3579
  %3913 = fmul fast float %3912, %3902
  %3914 = fadd fast float %3913, %3579
  %3915 = fmul fast float %3902, %3569
  %3916 = fsub fast float %3569, %3915
  %3917 = fmul fast float %3902, %3568
  %3918 = fsub fast float %3568, %3917
  %3919 = fadd fast float %3787, %3578
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = fsub fast float %3834, %3577
  %3922 = fmul fast float %3921, %3883
  %3923 = fadd fast float %3922, %3577
  %3924 = fsub fast float %3820, %3576
  %3925 = fmul fast float %3924, %3883
  %3926 = fadd fast float %3925, %3576
  %3927 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.CBufRet.f32 %3928, 1
  %3931 = fmul fast float %3930, %3927
  %3932 = fadd fast float %3931, %3929
  %3933 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3934 = bitcast float %3628 to i32
  %3935 = and i32 %3934, 65535
  %3936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3935)  ; LegacyF16ToF32(value)
  %3937 = lshr i32 %3934, 16
  %3938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3937)  ; LegacyF16ToF32(value)
  %3939 = fcmp fast oge float %3936, 0.000000e+00
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 0
  %3942 = select i1 %3939, float %3936, float %3941
  %3943 = fadd fast float %3942, %3938
  %3944 = fsub fast float %3933, %3567
  %3945 = fmul fast float %3944, %3787
  %3946 = fadd fast float %3945, %3567
  %3947 = fmul fast float %3943, %3787
  %3948 = call float @dx.op.binary.f32(i32 35, float %3566, float %3947)  ; FMax(a,b)
  %3949 = call float @dx.op.binary.f32(i32 35, float %3565, float %3787)  ; FMax(a,b)
  %3950 = and i32 %3640, 16
  %3951 = icmp eq i32 %3950, 0
  br i1 %3951, label %3974, label %3952

; <label>:3952                                    ; preds = %3890
  %3953 = bitcast float %3634 to i32
  %3954 = add i32 %3631, 0
  %3955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3954, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3956 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3955, %dx.types.Handle %3800, float %3728, float %3731, float undef, float undef, i32 0, i32 0, i32 undef, float %3733, float %3735, float undef, float %3737, float %3739, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.ResRet.f32 %3956, 1
  %3959 = extractvalue %dx.types.ResRet.f32 %3956, 2
  %3960 = and i32 %3953, 65535
  %3961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3960)  ; LegacyF16ToF32(value)
  %3962 = fmul fast float %3957, %3625
  %3963 = fmul fast float %3958, %3626
  %3964 = fmul fast float %3959, %3627
  %3965 = and i32 %3640, 16384
  %3966 = icmp ne i32 %3965, 0
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 0
  %3969 = select i1 %3966, float %3968, float 1.000000e+00
  %3970 = fmul fast float %3969, %3961
  %3971 = fmul fast float %3962, %3970
  %3972 = fmul fast float %3963, %3970
  %3973 = fmul fast float %3964, %3970
  br label %3974

; <label>:3974                                    ; preds = %3952, %3890
  %3975 = phi float [ %3971, %3952 ], [ 0.000000e+00, %3890 ]
  %3976 = phi float [ %3972, %3952 ], [ 0.000000e+00, %3890 ]
  %3977 = phi float [ %3973, %3952 ], [ 0.000000e+00, %3890 ]
  %3978 = fsub fast float %3975, %3570
  %3979 = fsub fast float %3976, %3571
  %3980 = fsub fast float %3977, %3572
  %3981 = fmul fast float %3978, %3787
  %3982 = fmul fast float %3979, %3787
  %3983 = fmul fast float %3980, %3787
  %3984 = fadd fast float %3981, %3570
  %3985 = fadd fast float %3982, %3571
  %3986 = fadd fast float %3983, %3572
  br label %3689

; <label>:3987                                    ; preds = %3689
  br label %3988

; <label>:3988                                    ; preds = %3987, %3508
  %3989 = phi float [ 0.000000e+00, %3508 ], [ %3690, %3987 ]
  %3990 = phi float [ %910, %3508 ], [ %3691, %3987 ]
  %3991 = phi float [ %3477, %3508 ], [ %3692, %3987 ]
  %3992 = phi float [ %3475, %3508 ], [ %3693, %3987 ]
  %3993 = phi float [ 0.000000e+00, %3508 ], [ %3694, %3987 ]
  %3994 = phi float [ 0.000000e+00, %3508 ], [ %3695, %3987 ]
  %3995 = phi float [ %3469, %3508 ], [ %3696, %3987 ]
  %3996 = phi float [ %3470, %3508 ], [ %3697, %3987 ]
  %3997 = phi float [ %3471, %3508 ], [ %3698, %3987 ]
  %3998 = phi float [ %3503, %3508 ], [ %3699, %3987 ]
  %3999 = phi float [ %3504, %3508 ], [ %3700, %3987 ]
  %4000 = phi float [ %3505, %3508 ], [ %3701, %3987 ]
  %4001 = phi float [ %3474, %3508 ], [ %3702, %3987 ]
  %4002 = phi float [ %3473, %3508 ], [ %3703, %3987 ]
  %4003 = phi float [ 0.000000e+00, %3508 ], [ %3704, %3987 ]
  %4004 = phi float [ %3472, %3508 ], [ %3705, %3987 ]
  %4005 = phi float [ %3466, %3508 ], [ %3706, %3987 ]
  %4006 = phi float [ %3467, %3508 ], [ %3707, %3987 ]
  %4007 = phi float [ %3468, %3508 ], [ %3708, %3987 ]
  %4008 = call float @dx.op.dot3.f32(i32 55, float %3998, float %3999, float %4000, float %3998, float %3999, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4009 = call float @dx.op.unary.f32(i32 25, float %4008)  ; Rsqrt(value)
  %4010 = fmul fast float %4009, %3998
  %4011 = fmul fast float %4009, %3999
  %4012 = fmul fast float %4009, %4000
  %4013 = fadd fast float %4003, %910
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4015 = call float @dx.op.dot3.f32(i32 55, float %4010, float %4011, float %4012, float %4010, float %4011, float %4012)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = call float @dx.op.unary.f32(i32 25, float %4015)  ; Rsqrt(value)
  %4017 = fmul fast float %4016, %4010
  %4018 = fmul fast float %4016, %4011
  %4019 = fmul fast float %4016, %4012
  br label %4020

; <label>:4020                                    ; preds = %3988, %3463
  %4021 = phi float [ %4017, %3988 ], [ %3503, %3463 ]
  %4022 = phi float [ %4018, %3988 ], [ %3504, %3463 ]
  %4023 = phi float [ %4019, %3988 ], [ %3505, %3463 ]
  %4024 = phi float [ %4005, %3988 ], [ %3466, %3463 ]
  %4025 = phi float [ %4006, %3988 ], [ %3467, %3463 ]
  %4026 = phi float [ %4007, %3988 ], [ %3468, %3463 ]
  %4027 = phi float [ %3995, %3988 ], [ %3469, %3463 ]
  %4028 = phi float [ %3996, %3988 ], [ %3470, %3463 ]
  %4029 = phi float [ %3997, %3988 ], [ %3471, %3463 ]
  %4030 = phi float [ %4004, %3988 ], [ %3472, %3463 ]
  %4031 = phi float [ %4014, %3988 ], [ %910, %3463 ]
  %4032 = phi float [ %4002, %3988 ], [ %3473, %3463 ]
  %4033 = phi float [ %4001, %3988 ], [ %3474, %3463 ]
  %4034 = phi float [ %3994, %3988 ], [ 0.000000e+00, %3463 ]
  %4035 = phi float [ %3993, %3988 ], [ 0.000000e+00, %3463 ]
  %4036 = phi float [ %3989, %3988 ], [ 0.000000e+00, %3463 ]
  %4037 = phi float [ %3991, %3988 ], [ %3477, %3463 ]
  %4038 = phi float [ %3990, %3988 ], [ %910, %3463 ]
  %4039 = phi float [ %3992, %3988 ], [ %3475, %3463 ]
  %4040 = add i32 %33, 392
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.i32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.i32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.i32 %4041, 3
  %4046 = bitcast i32 %4042 to float
  %4047 = bitcast i32 %4043 to float
  %4048 = bitcast i32 %4044 to float
  %4049 = bitcast i32 %4045 to float
  %4050 = fsub fast float %4024, %4046
  %4051 = fsub fast float %4025, %4047
  %4052 = fsub fast float %4026, %4048
  %4053 = fmul fast float %4050, %165
  %4054 = fmul fast float %4051, %165
  %4055 = fmul fast float %4052, %165
  %4056 = fadd fast float %4053, %4046
  %4057 = fadd fast float %4054, %4047
  %4058 = fadd fast float %4055, %4048
  %4059 = fsub fast float %4031, %4049
  %4060 = fmul fast float %4059, %165
  %4061 = fadd fast float %4060, %4049
  %4062 = fadd fast float %4030, 0xBFB99999A0000000
  %4063 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4064 = fmul fast float %4063, 0x3FF1C71C80000000
  %4065 = call float @dx.op.binary.f32(i32 36, float %4030, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4066 = fsub fast float 1.000000e+00, %4064
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = fmul fast float %4056, %4067
  %4069 = fmul fast float %4057, %4067
  %4070 = fmul fast float %4058, %4067
  %4071 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4072 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4073 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4074 = fmul fast float %4056, %4064
  %4075 = fmul fast float %4057, %4064
  %4076 = fmul fast float %4058, %4064
  %4077 = fadd fast float %4074, %4065
  %4078 = fadd fast float %4075, %4065
  %4079 = fadd fast float %4076, %4065
  %4080 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4081 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4083 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.i32 %4084, 3
  %4086 = and i32 %4085, 8
  %4087 = icmp ne i32 %4086, 0
  %4088 = call float @dx.op.binary.f32(i32 35, float %4071, float %4056)  ; FMax(a,b)
  %4089 = call float @dx.op.binary.f32(i32 35, float %4072, float %4056)  ; FMax(a,b)
  %4090 = call float @dx.op.binary.f32(i32 35, float %4073, float %4056)  ; FMax(a,b)
  %4091 = call float @dx.op.dot3.f32(i32 55, float %4071, float %4072, float %4073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4092 = select i1 %205, float %4056, float %4071
  %4093 = select i1 %205, float %4091, float %4072
  %4094 = select i1 %205, float 1.000000e+00, float %4073
  %4095 = select i1 %4087, float %4088, float %4092
  %4096 = select i1 %4087, float %4089, float %4093
  %4097 = select i1 %4087, float %4090, float %4094
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4102 = fadd fast float %4099, %131
  %4103 = fadd fast float %4100, %132
  %4104 = fadd fast float %4101, %133
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.CBufRet.f32 %4105, 1
  %4108 = fsub fast float %4102, %4106
  %4109 = fsub fast float %4103, %4107
  %4110 = fmul fast float %4108, %4108
  %4111 = fmul fast float %4109, %4109
  %4112 = fadd fast float %4110, %4111
  %4113 = call float @dx.op.unary.f32(i32 24, float %4112)  ; Sqrt(value)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4105, 2
  %4115 = fcmp fast olt float %4113, %4114
  br i1 %4115, label %4116, label %4183

; <label>:4116                                    ; preds = %4020
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 0
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.CBufRet.f32 %4117, 1
  %4124 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4125 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4127 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4128 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4129 = fadd fast float %4126, %4102
  %4130 = fadd fast float %4127, %4103
  %4131 = fadd fast float %4128, %4104
  %4132 = fmul fast float %4129, %4118
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4120, float %4132)  ; FMad(a,b,c)
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4122, float %4133)  ; FMad(a,b,c)
  %4135 = fmul fast float %4129, %4123
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4124, float %4135)  ; FMad(a,b,c)
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4125, float %4136)  ; FMad(a,b,c)
  %4138 = fsub fast float %4134, %4126
  %4139 = fsub fast float %4137, %4127
  %4140 = fsub fast float %4138, %4106
  %4141 = fadd fast float %4140, %4114
  %4142 = fsub fast float %4139, %4107
  %4143 = fadd fast float %4142, %4114
  %4144 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4145 = fmul fast float %4141, %4144
  %4146 = fmul fast float %4143, %4144
  %4147 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4149 = fsub fast float 1.000000e+00, %4147
  %4150 = fsub fast float 1.000000e+00, %4148
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = fcmp fast ugt float %4152, 0.000000e+00
  br i1 %4153, label %4154, label %4457

; <label>:4154                                    ; preds = %4116
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4157 = fmul fast float %4156, %4152
  %4158 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4159 = fadd fast float %4158, %4157
  %4160 = extractvalue %dx.types.CBufRet.f32 %4121, 2
  %4161 = fadd fast float %4159, %4128
  %4162 = fmul fast float %4134, %4122
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4125, float %4162)  ; FMad(a,b,c)
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4160, float %4163)  ; FMad(a,b,c)
  %4165 = fsub fast float %4164, %4128
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4168 = fsub fast float %4165, %4167
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = fadd fast float %4174, %4170
  %4178 = fmul fast float %4177, 0x3F847AE140000000
  %4179 = fadd fast float %4175, %4171
  %4180 = fmul fast float %4179, 0x3F847AE140000000
  %4181 = fadd fast float %4176, %4172
  %4182 = fmul fast float %4181, 0x3F847AE140000000
  br label %4457

; <label>:4183                                    ; preds = %4020
  %4184 = and i32 %181, 1
  %4185 = icmp eq i32 %4184, 0
  br i1 %4185, label %4457, label %4186

; <label>:4186                                    ; preds = %4183
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.f32 %4187, 1
  %4194 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4196 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4197 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4198 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4199 = fadd fast float %4196, %4102
  %4200 = fadd fast float %4197, %4103
  %4201 = fadd fast float %4198, %4104
  %4202 = fmul fast float %4199, %4188
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4190, float %4202)  ; FMad(a,b,c)
  %4204 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4192, float %4203)  ; FMad(a,b,c)
  %4205 = fmul fast float %4199, %4193
  %4206 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4194, float %4205)  ; FMad(a,b,c)
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4195, float %4206)  ; FMad(a,b,c)
  %4208 = fsub fast float %4204, %4196
  %4209 = fsub fast float %4207, %4197
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4214 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.i32 %4217, 0
  %4219 = extractvalue %dx.types.CBufRet.i32 %4217, 1
  %4220 = udiv i32 %4219, %4218
  %4221 = fsub fast float %4208, %4211
  %4222 = fsub fast float %4209, %4212
  %4223 = call float @dx.op.binary.f32(i32 35, float %4221, float 0.000000e+00)  ; FMax(a,b)
  %4224 = call float @dx.op.binary.f32(i32 35, float %4222, float 0.000000e+00)  ; FMax(a,b)
  %4225 = call float @dx.op.binary.f32(i32 36, float %4223, float %4213)  ; FMin(a,b)
  %4226 = call float @dx.op.binary.f32(i32 36, float %4224, float %4214)  ; FMin(a,b)
  %4227 = add i32 %4218, -1
  %4228 = add i32 %4220, -1
  %4229 = fmul fast float %4225, %4216
  %4230 = fmul fast float %4226, %4216
  %4231 = fptoui float %4229 to i32
  %4232 = fptoui float %4230 to i32
  %4233 = call i32 @dx.op.binary.i32(i32 40, i32 %4231, i32 %4227)  ; UMin(a,b)
  %4234 = call i32 @dx.op.binary.i32(i32 40, i32 %4232, i32 %4228)  ; UMin(a,b)
  %4235 = mul i32 %4234, %4218
  %4236 = add i32 %4235, %4233
  %4237 = shl i32 %4236, 2
  %4238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.i32 %4238, 0
  %4240 = icmp eq i32 %4239, -1
  br i1 %4240, label %4457, label %4241

; <label>:4241                                    ; preds = %4186
  %4242 = mul i32 %4239, 148
  %4243 = add i32 %4242, 4
  %4244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = add i32 %4242, 8
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = add i32 %4242, 36
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = add i32 %4242, 60
  %4253 = add i32 %4242, 92
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = add i32 %4242, 116
  %4257 = fsub fast float %4208, %4245
  %4258 = fsub fast float %4209, %4248
  %4259 = fmul fast float %4216, %4257
  %4260 = fmul fast float %4216, %4258
  %4261 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4263 = fsub fast float 1.000000e+00, %4262
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4266 = call float @dx.op.unary.f32(i32 83, float %4261)  ; DerivCoarseX(value)
  %4267 = call float @dx.op.unary.f32(i32 83, float %4263)  ; DerivCoarseX(value)
  %4268 = call float @dx.op.unary.f32(i32 84, float %4261)  ; DerivCoarseY(value)
  %4269 = call float @dx.op.unary.f32(i32 84, float %4263)  ; DerivCoarseY(value)
  %4270 = fmul fast float %4266, %4265
  %4271 = fmul fast float %4267, %4265
  %4272 = fmul fast float %4268, %4265
  %4273 = fmul fast float %4269, %4265
  %4274 = call float @dx.op.dot2.f32(i32 54, float %4272, float %4273, float %4272, float %4273)  ; Dot2(ax,ay,bx,by)
  %4275 = call float @dx.op.dot2.f32(i32 54, float %4270, float %4271, float %4270, float %4271)  ; Dot2(ax,ay,bx,by)
  %4276 = call float @dx.op.binary.f32(i32 35, float %4275, float %4274)  ; FMax(a,b)
  %4277 = call float @dx.op.unary.f32(i32 23, float %4276)  ; Log(value)
  %4278 = fmul fast float %4277, 5.000000e-01
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4281 = fadd fast float %4280, %4278
  %4282 = call float @dx.op.binary.f32(i32 35, float %4281, float 0.000000e+00)  ; FMax(a,b)
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 3
  %4285 = fadd fast float %4284, %4282
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4288 = fadd fast float %4285, %4287
  %4289 = add i32 %4255, 0
  %4290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4289, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4291 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4290, i32 0)  ; GetDimensions(handle,mipLevel)
  %4292 = extractvalue %dx.types.Dimensions %4291, 0
  %4293 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4292)  ; FirstbitLo(value)
  %4294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.i32 %4294, 1
  %4296 = sub nsw i32 %4295, %4293
  %4297 = sitofp i32 %4296 to float
  %4298 = fsub fast float %4288, %4297
  %4299 = call float @dx.op.binary.f32(i32 35, float %4298, float 0.000000e+00)  ; FMax(a,b)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4290, %dx.types.Handle %27, float %4261, float %4263, float %4251, float undef, i32 0, i32 0, i32 undef, float %4299)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = fcmp ule float %4301, 0x3FE0101020000000
  %4303 = extractvalue %dx.types.CBufRet.i32 %4294, 0
  %4304 = and i32 %4303, 128
  %4305 = icmp ne i32 %4304, 0
  %4306 = and i1 %4302, %4305
  br i1 %4306, label %4457, label %4307

; <label>:4307                                    ; preds = %4241
  %4308 = add i32 %4242, 20
  %4309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4308, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = add i32 %4242, 24
  %4312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = add i32 %4242, 40
  %4315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = add i32 %4242, 96
  %4318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.i32 %4318, 0
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4322 = fmul fast float %4321, %4261
  %4323 = fmul fast float %4321, %4263
  %4324 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4325 = fadd fast float %4322, %4324
  %4326 = fadd fast float %4323, %4324
  %4327 = add i32 %4319, 0
  %4328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4329 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4328, i32 0)  ; GetDimensions(handle,mipLevel)
  %4330 = extractvalue %dx.types.Dimensions %4329, 0
  %4331 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4330)  ; FirstbitLo(value)
  %4332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.i32 %4332, 1
  %4334 = sub nsw i32 %4333, %4331
  %4335 = sitofp i32 %4334 to float
  %4336 = fsub fast float %4285, %4335
  %4337 = call float @dx.op.binary.f32(i32 35, float %4336, float 0.000000e+00)  ; FMax(a,b)
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4328, %dx.types.Handle %27, float %4325, float %4326, float %4316, float undef, i32 0, i32 0, i32 undef, float %4337)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = fmul fast float %4339, %4310
  %4341 = fadd fast float %4340, %4313
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4350 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4351 = fadd fast float %4347, %4208
  %4352 = fadd fast float %4349, %4209
  %4353 = fadd fast float %4341, %4350
  %4354 = fmul fast float %4351, %4343
  %4355 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4344, float %4354)  ; FMad(a,b,c)
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4345, float %4355)  ; FMad(a,b,c)
  %4357 = fsub fast float %4356, %4350
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 2
  %4360 = fsub fast float %4357, %4359
  %4361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.i32 %4361, 0
  %4363 = call i32 @dx.op.binary.i32(i32 40, i32 %4239, i32 %4362)  ; UMin(a,b)
  %4364 = mul i32 %4363, 36
  %4365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.i32 %4365, 0
  %4367 = add i32 %4364, 4
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = fmul fast float %4369, %4261
  %4371 = fmul fast float %4369, %4263
  %4372 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4373 = fadd fast float %4370, %4372
  %4374 = fadd fast float %4371, %4372
  %4375 = icmp eq i32 %4366, 0
  br i1 %4375, label %4444, label %4376

; <label>:4376                                    ; preds = %4307
  br label %4377

; <label>:4377                                    ; preds = %4434, %4376
  %4378 = phi float [ %4435, %4434 ], [ 0.000000e+00, %4376 ]
  %4379 = phi float [ %4436, %4434 ], [ 0.000000e+00, %4376 ]
  %4380 = phi float [ %4437, %4434 ], [ 0.000000e+00, %4376 ]
  %4381 = phi float [ %4438, %4434 ], [ 0.000000e+00, %4376 ]
  %4382 = phi float [ %4439, %4434 ], [ 0.000000e+00, %4376 ]
  %4383 = phi float [ %4440, %4434 ], [ 0.000000e+00, %4376 ]
  %4384 = phi i32 [ %4441, %4434 ], [ 0, %4376 ]
  %4385 = shl i32 %4384, 2
  %4386 = add i32 %4252, %4385
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = add i32 %4256, %4385
  %4390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.i32 %4390, 0
  %4392 = add i32 %4391, 0
  %4393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4394 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4393, i32 0)  ; GetDimensions(handle,mipLevel)
  %4395 = extractvalue %dx.types.Dimensions %4394, 0
  %4396 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4395)  ; FirstbitLo(value)
  %4397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.i32 %4397, 1
  %4399 = sub nsw i32 %4398, %4396
  %4400 = sitofp i32 %4399 to float
  %4401 = fsub fast float %4285, %4400
  %4402 = call float @dx.op.binary.f32(i32 35, float %4401, float 0.000000e+00)  ; FMax(a,b)
  %4403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4393, %dx.types.Handle %27, float %4373, float %4374, float %4388, float undef, i32 0, i32 0, i32 undef, float %4402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = fcmp fast ogt float %4404, 0.000000e+00
  br i1 %4405, label %4406, label %4434

; <label>:4406                                    ; preds = %4377
  %4407 = add i32 %4367, %4385
  %4408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.i32 %4408, 0
  %4410 = and i32 %4409, 32767
  %4411 = mul nuw nsw i32 %4410, 928
  %4412 = add nuw nsw i32 %4411, 48
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = add nuw nsw i32 %4411, 60
  %4418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = fmul fast float %4414, %4404
  %4423 = fmul fast float %4415, %4404
  %4424 = fmul fast float %4416, %4404
  %4425 = fadd fast float %4422, %4378
  %4426 = fadd fast float %4423, %4379
  %4427 = fadd fast float %4424, %4380
  %4428 = fmul fast float %4419, %4404
  %4429 = fmul fast float %4420, %4404
  %4430 = fmul fast float %4421, %4404
  %4431 = fadd fast float %4428, %4381
  %4432 = fadd fast float %4429, %4382
  %4433 = fadd fast float %4430, %4383
  br label %4434

; <label>:4434                                    ; preds = %4406, %4377
  %4435 = phi float [ %4425, %4406 ], [ %4378, %4377 ]
  %4436 = phi float [ %4426, %4406 ], [ %4379, %4377 ]
  %4437 = phi float [ %4427, %4406 ], [ %4380, %4377 ]
  %4438 = phi float [ %4431, %4406 ], [ %4381, %4377 ]
  %4439 = phi float [ %4432, %4406 ], [ %4382, %4377 ]
  %4440 = phi float [ %4433, %4406 ], [ %4383, %4377 ]
  %4441 = add nuw i32 %4384, 1
  %4442 = icmp eq i32 %4441, %4366
  br i1 %4442, label %4443, label %4377

; <label>:4443                                    ; preds = %4434
  br label %4444

; <label>:4444                                    ; preds = %4443, %4307
  %4445 = phi float [ 0.000000e+00, %4307 ], [ %4435, %4443 ]
  %4446 = phi float [ 0.000000e+00, %4307 ], [ %4436, %4443 ]
  %4447 = phi float [ 0.000000e+00, %4307 ], [ %4437, %4443 ]
  %4448 = phi float [ 0.000000e+00, %4307 ], [ %4438, %4443 ]
  %4449 = phi float [ 0.000000e+00, %4307 ], [ %4439, %4443 ]
  %4450 = phi float [ 0.000000e+00, %4307 ], [ %4440, %4443 ]
  %4451 = fadd fast float %4448, %4445
  %4452 = fmul fast float %4451, 0x3F847AE140000000
  %4453 = fadd fast float %4449, %4446
  %4454 = fmul fast float %4453, 0x3F847AE140000000
  %4455 = fadd fast float %4450, %4447
  %4456 = fmul fast float %4455, 0x3F847AE140000000
  br label %4457

; <label>:4457                                    ; preds = %4444, %4241, %4186, %4183, %4154, %4116
  %4458 = phi float [ %4168, %4154 ], [ -1.310720e+05, %4116 ], [ %4360, %4444 ], [ -1.310720e+05, %4186 ], [ -1.310720e+05, %4241 ], [ -1.310720e+05, %4183 ]
  %4459 = phi float [ %4178, %4154 ], [ 0.000000e+00, %4116 ], [ %4452, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4460 = phi float [ %4180, %4154 ], [ 0.000000e+00, %4116 ], [ %4454, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4461 = phi float [ %4182, %4154 ], [ 0.000000e+00, %4116 ], [ %4456, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4462 = phi i1 [ true, %4154 ], [ false, %4116 ], [ true, %4444 ], [ false, %4186 ], [ false, %4241 ], [ false, %4183 ]
  %4463 = and i32 %181, 3
  %4464 = icmp eq i32 %4463, 1
  %4465 = select i1 %4464, float 1.000000e+00, float 0.000000e+00
  %4466 = fsub fast float %4458, %133
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = select i1 %4462, float %4467, float 1.000000e+00
  %4469 = fmul fast float %4468, %4465
  %4470 = icmp eq i32 %4463, 3
  %4471 = select i1 %4470, float 1.000000e+00, float %4469
  %4472 = call float @dx.op.binary.f32(i32 35, float %4036, float %4471)  ; FMax(a,b)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = fcmp fast une float %4473, 0.000000e+00
  %4475 = fsub fast float -0.000000e+00, %151
  %4476 = fsub fast float -0.000000e+00, %152
  %4477 = fsub fast float -0.000000e+00, %153
  br i1 %4474, label %4478, label %4640

; <label>:4478                                    ; preds = %4457
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4476, float %4477, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = fmul fast float %4473, 2.500000e+00
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4473, 0x4013FFFFE0000000
  %4483 = fadd fast float %4482, 0xBFFFFFFFE0000000
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fmul fast float %4473, 0x4004000020000000
  %4486 = fadd fast float %4485, 0xBFF8000040000000
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4489 = fmul fast float %4062, 1.000000e+01
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %4490, 2.000000e+00
  %4492 = fsub fast float 3.000000e+00, %4491
  %4493 = fmul fast float %4490, %4490
  %4494 = fmul fast float %4493, %4492
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = fsub fast float 0x3FE3333340000000, %4083
  %4497 = fmul fast float %4496, 0x400AAAAAA0000000
  %4498 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4499 = fmul fast float %4495, %4498
  %4500 = fmul fast float %4095, 0x3FEA2B8620000000
  %4501 = fmul fast float %4096, 0x3FEA2B8620000000
  %4502 = fmul fast float %4097, 0x3FEA2B8620000000
  %4503 = fadd fast float %4500, 0x3FC81DFBA0000000
  %4504 = fmul fast float %4503, %4095
  %4505 = fadd fast float %4504, 0x3F910E6020000000
  %4506 = fadd fast float %4501, 0x3FC81DFBA0000000
  %4507 = fmul fast float %4506, %4096
  %4508 = fadd fast float %4507, 0x3F910E6020000000
  %4509 = fadd fast float %4502, 0x3FC81DFBA0000000
  %4510 = fmul fast float %4509, %4097
  %4511 = fadd fast float %4510, 0x3F910E6020000000
  %4512 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = fsub fast float %4512, %4095
  %4516 = fsub fast float %4513, %4096
  %4517 = fsub fast float %4514, %4097
  %4518 = fmul fast float %4515, %4488
  %4519 = fmul fast float %4518, %4499
  %4520 = fmul fast float %4516, %4488
  %4521 = fmul fast float %4520, %4499
  %4522 = fmul fast float %4517, %4488
  %4523 = fmul fast float %4522, %4499
  %4524 = fadd fast float %4519, %4095
  %4525 = fadd fast float %4521, %4096
  %4526 = fadd fast float %4523, %4097
  %4527 = fmul fast float %4033, %4033
  %4528 = fmul fast float %4527, %4527
  %4529 = fadd fast float %4484, 1.000000e+00
  %4530 = fsub fast float %4529, %4499
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4534 = fsub fast float 1.000000e+00, %4528
  %4535 = call float @dx.op.binary.f32(i32 36, float %4531, float %4534)  ; FMin(a,b)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4537 = call float @dx.op.binary.f32(i32 35, float %4535, float %4536)  ; FMax(a,b)
  %4538 = fadd fast float %4533, 0xBFE4CCCCC0000000
  %4539 = fmul fast float %4538, 0x4006DB6DA0000000
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fmul fast float %4540, 2.000000e+00
  %4542 = fsub fast float 3.000000e+00, %4541
  %4543 = bitcast float %4080 to i32
  %4544 = ashr i32 %4543, 1
  %4545 = add nsw i32 %4544, 532487669
  %4546 = bitcast i32 %4545 to float
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = bitcast float %4547 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = fmul fast float %4550, 2.000000e+00
  %4552 = bitcast float %4081 to i32
  %4553 = ashr i32 %4552, 1
  %4554 = add nsw i32 %4553, 532487669
  %4555 = bitcast i32 %4554 to float
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, 2.000000e+00
  %4561 = bitcast float %4082 to i32
  %4562 = ashr i32 %4561, 1
  %4563 = add nsw i32 %4562, 532487669
  %4564 = bitcast i32 %4563 to float
  %4565 = fsub fast float 1.000000e+00, %4564
  %4566 = bitcast float %4565 to i32
  %4567 = sub nsw i32 2129859010, %4566
  %4568 = bitcast i32 %4567 to float
  %4569 = fmul fast float %4568, 2.000000e+00
  %4570 = fsub fast float 0x4002A9FBE0000000, %4551
  %4571 = fadd fast float %4551, 0x3FD54FDF00000000
  %4572 = bitcast float %4571 to i32
  %4573 = sub nsw i32 2129859010, %4572
  %4574 = bitcast i32 %4573 to float
  %4575 = fmul fast float %4574, %4570
  %4576 = fmul fast float %4575, %4575
  %4577 = fsub fast float 0x4002A9FBE0000000, %4560
  %4578 = fadd fast float %4560, 0x3FD54FDF00000000
  %4579 = bitcast float %4578 to i32
  %4580 = sub nsw i32 2129859010, %4579
  %4581 = bitcast i32 %4580 to float
  %4582 = fmul fast float %4581, %4577
  %4583 = fmul fast float %4582, %4582
  %4584 = fsub fast float 0x4002A9FBE0000000, %4569
  %4585 = fadd fast float %4569, 0x3FD54FDF00000000
  %4586 = bitcast float %4585 to i32
  %4587 = sub nsw i32 2129859010, %4586
  %4588 = bitcast i32 %4587 to float
  %4589 = fmul fast float %4588, %4584
  %4590 = fmul fast float %4589, %4589
  %4591 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4576)  ; FMax(a,b)
  %4592 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4583)  ; FMax(a,b)
  %4593 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4590)  ; FMax(a,b)
  %4594 = fsub fast float 1.000000e+00, %4479
  %4595 = fadd fast float %4594, %4495
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fsub fast float 1.000000e+00, %4471
  %4598 = fmul fast float %4537, %4597
  %4599 = fmul fast float %4540, %4540
  %4600 = fmul fast float %4599, %4598
  %4601 = fmul fast float %4600, %4542
  %4602 = fmul fast float %4597, 0xBFE99999A0000000
  %4603 = fmul fast float %4602, %4488
  %4604 = fmul fast float %4603, %4499
  %4605 = fadd fast float %4604, 1.000000e+00
  %4606 = fadd fast float %4083, -1.000000e+00
  %4607 = fmul fast float %4605, %4606
  %4608 = fadd fast float %4607, 1.000000e+00
  %4609 = fsub fast float %4591, %4080
  %4610 = fsub fast float %4592, %4081
  %4611 = fsub fast float %4593, %4082
  %4612 = fmul fast float %4601, %4609
  %4613 = fmul fast float %4601, %4610
  %4614 = fmul fast float %4601, %4611
  %4615 = fadd fast float %4612, %4080
  %4616 = fadd fast float %4613, %4081
  %4617 = fadd fast float %4614, %4082
  %4618 = fsub fast float %75, %4021
  %4619 = fsub fast float %76, %4022
  %4620 = fsub fast float %77, %4023
  %4621 = fmul fast float %4601, %4618
  %4622 = fmul fast float %4601, %4619
  %4623 = fmul fast float %4601, %4620
  %4624 = fadd fast float %4621, %4021
  %4625 = fadd fast float %4622, %4022
  %4626 = fadd fast float %4623, %4023
  %4627 = fmul fast float %4601, %4596
  %4628 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4629 = fsub fast float 1.000000e+00, %4628
  %4630 = fmul fast float %4627, %4629
  %4631 = fadd fast float %4630, %4628
  %4632 = fsub fast float 1.000000e+00, %4033
  %4633 = fmul fast float %4601, %4632
  %4634 = fadd fast float %4633, %4033
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call float @dx.op.unary.f32(i32 25, float %4635)  ; Rsqrt(value)
  %4637 = fmul fast float %4624, %4636
  %4638 = fmul fast float %4625, %4636
  %4639 = fmul fast float %4626, %4636
  br label %4640

; <label>:4640                                    ; preds = %4478, %4457
  %4641 = phi float [ %4615, %4478 ], [ %4080, %4457 ]
  %4642 = phi float [ %4616, %4478 ], [ %4081, %4457 ]
  %4643 = phi float [ %4617, %4478 ], [ %4082, %4457 ]
  %4644 = phi float [ %4524, %4478 ], [ %4095, %4457 ]
  %4645 = phi float [ %4525, %4478 ], [ %4096, %4457 ]
  %4646 = phi float [ %4526, %4478 ], [ %4097, %4457 ]
  %4647 = phi float [ %4637, %4478 ], [ %4021, %4457 ]
  %4648 = phi float [ %4638, %4478 ], [ %4022, %4457 ]
  %4649 = phi float [ %4639, %4478 ], [ %4023, %4457 ]
  %4650 = phi float [ %4631, %4478 ], [ %4083, %4457 ]
  %4651 = phi float [ %4634, %4478 ], [ %4033, %4457 ]
  %4652 = select i1 %205, float 0.000000e+00, float %4643
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %4475, float %4476, float %4477)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %4647, float %4648, float %4649)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = fmul fast float %4655, 2.000000e+00
  %4657 = fmul fast float %4656, %4647
  %4658 = fmul fast float %4656, %4648
  %4659 = fmul fast float %4656, %4649
  %4660 = fsub fast float %151, %4657
  %4661 = fsub fast float %152, %4658
  %4662 = fsub fast float %153, %4659
  %4663 = call float @dx.op.binary.f32(i32 36, float %4651, float 1.000000e+00)  ; FMin(a,b)
  %4664 = fsub fast float 1.000000e+00, %4651
  %4665 = bitcast float %4664 to i32
  %4666 = sub nsw i32 2129859010, %4665
  %4667 = fsub fast float 1.000000e+00, %45
  %4668 = call float @dx.op.dot3.f32(i32 55, float %95, float %96, float %97, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.binary.f32(i32 35, float %4668, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4670 = fdiv fast float %4667, %4669
  %4671 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4673 = fmul fast float %4672, 5.000000e-01
  %4674 = fadd fast float %4673, 5.000000e-01
  %4675 = fmul fast float %4674, %45
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4678 = fmul fast float %4677, %4670
  %4679 = fadd fast float %4675, %4678
  %4680 = fsub fast float 5.000000e-01, %4673
  %4681 = fmul fast float %4680, %4644
  %4682 = fmul fast float %4680, %4645
  %4683 = fmul fast float %4680, %4646
  %4684 = fadd fast float %4679, %4681
  %4685 = fadd fast float %4679, %4682
  %4686 = fadd fast float %4679, %4683
  %4687 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4689 = fmul fast float %4688, 5.000000e-01
  %4690 = fadd fast float %4689, 5.000000e-01
  %4691 = fmul fast float %4690, %45
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float %95, float %96, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, %4670
  %4695 = fadd fast float %4691, %4694
  %4696 = fsub fast float 5.000000e-01, %4689
  %4697 = fmul fast float %4696, %4644
  %4698 = fmul fast float %4696, %4645
  %4699 = fmul fast float %4696, %4646
  %4700 = fadd fast float %4695, %4697
  %4701 = fadd fast float %4695, %4698
  %4702 = fadd fast float %4695, %4699
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = call float @dx.op.binary.f32(i32 36, float %4644, float %4704)  ; FMin(a,b)
  %4706 = fsub fast float 1.000000e+00, %4663
  %4707 = fmul fast float %4705, %4706
  %4708 = fsub fast float 1.000000e+00, %4707
  %4709 = bitcast float %4708 to i32
  %4710 = sub nsw i32 2129859010, %4709
  %4711 = bitcast i32 %4710 to float
  %4712 = call float @dx.op.binary.f32(i32 36, float %4645, float %4704)  ; FMin(a,b)
  %4713 = fmul fast float %4712, %4706
  %4714 = fsub fast float 1.000000e+00, %4713
  %4715 = bitcast float %4714 to i32
  %4716 = sub nsw i32 2129859010, %4715
  %4717 = bitcast i32 %4716 to float
  %4718 = call float @dx.op.binary.f32(i32 36, float %4646, float %4704)  ; FMin(a,b)
  %4719 = fmul fast float %4718, %4706
  %4720 = fsub fast float 1.000000e+00, %4719
  %4721 = bitcast float %4720 to i32
  %4722 = sub nsw i32 2129859010, %4721
  %4723 = bitcast i32 %4722 to float
  %4724 = fmul fast float %4663, %46
  %4725 = fmul fast float %4724, %4684
  %4726 = fmul fast float %4725, %4711
  %4727 = fmul fast float %4663, %47
  %4728 = fmul fast float %4727, %4685
  %4729 = fmul fast float %4728, %4717
  %4730 = fmul fast float %4663, %48
  %4731 = fmul fast float %4730, %4686
  %4732 = fmul fast float %4731, %4723
  %4733 = call float @dx.op.binary.f32(i32 36, float %4641, float %4704)  ; FMin(a,b)
  %4734 = fmul fast float %4733, %4706
  %4735 = fsub fast float 1.000000e+00, %4734
  %4736 = bitcast float %4735 to i32
  %4737 = sub nsw i32 2129859010, %4736
  %4738 = bitcast i32 %4737 to float
  %4739 = call float @dx.op.binary.f32(i32 36, float %4642, float %4704)  ; FMin(a,b)
  %4740 = fmul fast float %4739, %4706
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = bitcast float %4741 to i32
  %4743 = sub nsw i32 2129859010, %4742
  %4744 = bitcast i32 %4743 to float
  %4745 = call float @dx.op.binary.f32(i32 36, float %4652, float %4704)  ; FMin(a,b)
  %4746 = fmul fast float %4745, %4706
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = bitcast float %4747 to i32
  %4749 = sub nsw i32 2129859010, %4748
  %4750 = bitcast i32 %4749 to float
  %4751 = fmul fast float %4724, %4700
  %4752 = fmul fast float %4751, %4738
  %4753 = fmul fast float %4727, %4701
  %4754 = fmul fast float %4753, %4744
  %4755 = fmul fast float %4730, %4702
  %4756 = fmul fast float %4755, %4750
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4729, float %4732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = select i1 %205, float 0.000000e+00, float %4726
  %4759 = select i1 %205, float %4757, float %4729
  %4760 = select i1 %205, float 0.000000e+00, float %4732
  %4761 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4754, float %4756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4762 = select i1 %205, float 0.000000e+00, float %4752
  %4763 = select i1 %205, float %4761, float %4754
  %4764 = select i1 %205, float 0.000000e+00, float %4756
  %4765 = fmul fast float %4654, 9.843750e-01
  %4766 = fmul fast float %4650, 9.843750e-01
  %4767 = fadd fast float %4765, 7.812500e-03
  %4768 = fadd fast float %4766, 7.812500e-03
  %4769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4767, float %4768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4770 = extractvalue %dx.types.ResRet.f32 %4769, 2
  %4771 = extractvalue %dx.types.ResRet.f32 %4769, 3
  %4772 = fmul fast float %4770, %4641
  %4773 = fmul fast float %4770, %4642
  %4774 = fmul fast float %4770, %4652
  %4775 = fadd fast float %4772, %4771
  %4776 = fadd fast float %4773, %4771
  %4777 = fadd fast float %4774, %4771
  %4778 = fcmp fast ogt float %4034, 0.000000e+00
  br i1 %4778, label %4779, label %4805

; <label>:4779                                    ; preds = %4640
  %4780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4034, float %4654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4781 = extractvalue %dx.types.ResRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.ResRet.f32 %4780, 1
  %4783 = extractvalue %dx.types.ResRet.f32 %4780, 2
  %4784 = fadd fast float %4781, -5.000000e-01
  %4785 = fadd fast float %4782, -5.000000e-01
  %4786 = fadd fast float %4783, -5.000000e-01
  %4787 = fsub fast float 1.000000e+00, %4641
  %4788 = fsub fast float 1.000000e+00, %4642
  %4789 = fsub fast float 1.000000e+00, %4652
  %4790 = fmul fast float %4641, 4.000000e+00
  %4791 = fmul fast float %4790, %4787
  %4792 = fmul fast float %4791, %4784
  %4793 = fmul fast float %4642, 4.000000e+00
  %4794 = fmul fast float %4793, %4788
  %4795 = fmul fast float %4794, %4785
  %4796 = fmul fast float %4652, 4.000000e+00
  %4797 = fmul fast float %4796, %4789
  %4798 = fmul fast float %4797, %4786
  %4799 = fadd fast float %4792, %4775
  %4800 = fadd fast float %4795, %4776
  %4801 = fadd fast float %4798, %4777
  %4802 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4803 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  br label %4805

; <label>:4805                                    ; preds = %4779, %4640
  %4806 = phi float [ %4802, %4779 ], [ %4775, %4640 ]
  %4807 = phi float [ %4803, %4779 ], [ %4776, %4640 ]
  %4808 = phi float [ %4804, %4779 ], [ %4777, %4640 ]
  %4809 = call float @dx.op.binary.f32(i32 35, float %4807, float %4808)  ; FMax(a,b)
  %4810 = call float @dx.op.binary.f32(i32 35, float %4806, float %4809)  ; FMax(a,b)
  %4811 = fsub fast float 1.000000e+00, %4810
  %4812 = fmul fast float %4811, %4758
  %4813 = fmul fast float %4811, %4759
  %4814 = fmul fast float %4811, %4760
  %4815 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4816 = fcmp fast ogt float %4815, 0x3E7FF19E20000000
  %4817 = fdiv fast float 1.000000e+00, %4815
  %4818 = select i1 %4816, float %4817, float 0.000000e+00
  %4819 = fmul fast float %4818, %4644
  %4820 = fmul fast float %4818, %4645
  %4821 = fmul fast float %4818, %4646
  %4822 = fadd fast float %4819, -1.000000e+00
  %4823 = fadd fast float %4820, -1.000000e+00
  %4824 = fadd fast float %4821, -1.000000e+00
  %4825 = fmul fast float %4822, 5.000000e-01
  %4826 = fmul fast float %4823, 5.000000e-01
  %4827 = fmul fast float %4824, 5.000000e-01
  %4828 = fadd fast float %4825, 1.000000e+00
  %4829 = fadd fast float %4826, 1.000000e+00
  %4830 = fadd fast float %4827, 1.000000e+00
  %4831 = fmul fast float %4806, %4762
  %4832 = fmul fast float %4807, %4763
  %4833 = fmul fast float %4808, %4764
  %4834 = fsub fast float 1.000000e+00, %4654
  %4835 = bitcast float %4834 to i32
  %4836 = sitofp i32 %4835 to float
  %4837 = fmul fast float %4836, 5.000000e+00
  %4838 = fadd fast float %4837, 0xC1EFBF8940000000
  %4839 = fptosi float %4838 to i32
  %4840 = bitcast i32 %4839 to float
  %4841 = fmul fast float %4840, %4035
  %4842 = fmul fast float %4758, %4841
  %4843 = fmul fast float %4842, %4811
  %4844 = fmul fast float %4843, %4828
  %4845 = fmul fast float %4759, %4841
  %4846 = fmul fast float %4845, %4811
  %4847 = fmul fast float %4846, %4829
  %4848 = fmul fast float %4760, %4841
  %4849 = fmul fast float %4848, %4811
  %4850 = fmul fast float %4849, %4830
  %4851 = fmul fast float %4812, %4061
  %4852 = fmul fast float %4813, %4061
  %4853 = fmul fast float %4814, %4061
  %4854 = fadd fast float %4831, %4027
  %4855 = fadd fast float %4854, %4844
  %4856 = fmul fast float %4855, %4061
  %4857 = fadd fast float %4832, %4028
  %4858 = fadd fast float %4857, %4847
  %4859 = fmul fast float %4858, %4061
  %4860 = fadd fast float %4833, %4029
  %4861 = fadd fast float %4860, %4850
  %4862 = fmul fast float %4861, %4061
  %4863 = bitcast i32 %4666 to float
  %4864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4865 = extractvalue %dx.types.CBufRet.f32 %4864, 3
  %4866 = fcmp fast oeq float %4865, 0.000000e+00
  br i1 %4866, label %5094, label %4867

; <label>:4867                                    ; preds = %4805
  %4868 = extractvalue %dx.types.CBufRet.f32 %4864, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4864, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4864, 2
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.CBufRet.f32 %4875, 1
  %4878 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = select i1 %205, float %4876, float %4872
  %4880 = select i1 %205, float %4878, float %4873
  %4881 = select i1 %205, float %4877, float %4874
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4884 = fcmp fast une float %4883, 0.000000e+00
  br i1 %4884, label %4885, label %4902

; <label>:4885                                    ; preds = %4867
  %4886 = fptoui float %68 to i32
  %4887 = fptoui float %69 to i32
  %4888 = lshr i32 %4886, 4
  %4889 = lshr i32 %4887, 4
  %4890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4891 = extractvalue %dx.types.CBufRet.f32 %4890, 0
  %4892 = fptoui float %4891 to i32
  %4893 = add i32 %4892, 15
  %4894 = lshr i32 %4893, 4
  %4895 = mul i32 %4894, %4889
  %4896 = add i32 %4895, %4888
  %4897 = shl i32 %4896, 3
  %4898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4897, i32 undef)  ; BufferLoad(srv,index,wot)
  %4899 = extractvalue %dx.types.ResRet.i32 %4898, 0
  %4900 = and i32 %4899, -268435456
  %4901 = icmp eq i32 %4900, -1342177280
  br i1 %4901, label %4912, label %4902

; <label>:4902                                    ; preds = %4885, %4867
  %4903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4904 = extractvalue %dx.types.CBufRet.f32 %4903, 2
  %4905 = extractvalue %dx.types.CBufRet.f32 %4903, 3
  %4906 = fmul fast float %4904, %68
  %4907 = fmul fast float %4905, %69
  %4908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4906, float %4907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4909 = extractvalue %dx.types.ResRet.f32 %4908, 0
  %4910 = extractvalue %dx.types.ResRet.f32 %4908, 1
  %4911 = extractvalue %dx.types.ResRet.f32 %4908, 2
  br label %4912

; <label>:4912                                    ; preds = %4902, %4885
  %4913 = phi float [ %4909, %4902 ], [ 0.000000e+00, %4885 ]
  %4914 = phi float [ %4910, %4902 ], [ 0.000000e+00, %4885 ]
  %4915 = phi float [ %4911, %4902 ], [ 0.000000e+00, %4885 ]
  %4916 = call float @dx.op.binary.f32(i32 36, float %4914, float %4915)  ; FMin(a,b)
  %4917 = call float @dx.op.binary.f32(i32 36, float %4913, float %4916)  ; FMin(a,b)
  %4918 = fcmp fast ogt float %4917, 0.000000e+00
  br i1 %4918, label %4919, label %5094, !dx.controlflow.hints !72

; <label>:4919                                    ; preds = %4912
  %4920 = fmul fast float %4913, %4879
  %4921 = fmul fast float %4914, %4880
  %4922 = fmul fast float %4915, %4881
  %4923 = fsub fast float %4868, %151
  %4924 = fsub fast float %4869, %152
  %4925 = fsub fast float %4870, %153
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4923, float %4924, float %4925, float %4923, float %4924, float %4925)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = call float @dx.op.unary.f32(i32 25, float %4926)  ; Rsqrt(value)
  %4928 = fmul fast float %4927, %4923
  %4929 = fmul fast float %4927, %4924
  %4930 = fmul fast float %4927, %4925
  %4931 = call float @dx.op.dot3.f32(i32 55, float %4868, float %4869, float %4870, float %4647, float %4648, float %4649)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4476, float %4477, float %4928, float %4929, float %4930)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4934 = fmul fast float %4933, %4933
  %4935 = fmul fast float %4934, %4863
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = fmul fast float %4936, %4933
  %4938 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %4928, float %4929, float %4930)  ; Dot3(ax,ay,az,bx,by,bz)
  %4939 = fmul fast float %4938, %4938
  %4940 = call float @dx.op.unary.f32(i32 6, float %4931)  ; FAbs(value)
  %4941 = fsub fast float 1.000000e+00, %4650
  %4942 = call float @dx.op.binary.f32(i32 35, float %4941, float 0x3F847AE140000000)  ; FMax(a,b)
  %4943 = fmul fast float %4942, %4942
  %4944 = fmul fast float %4943, %4943
  %4945 = fsub fast float 1.000000e+00, %4944
  %4946 = fmul fast float %4654, %4654
  %4947 = fmul fast float %4946, %4945
  %4948 = fadd fast float %4947, %4944
  %4949 = bitcast float %4948 to i32
  %4950 = ashr i32 %4949, 1
  %4951 = add nsw i32 %4950, 532487669
  %4952 = bitcast i32 %4951 to float
  %4953 = fadd fast float %4952, %4654
  %4954 = fmul fast float %4944, %4939
  %4955 = fsub fast float 1.000000e+00, %4939
  %4956 = fadd fast float %4955, %4954
  %4957 = fmul fast float %4940, %4940
  %4958 = fmul fast float %4957, %4945
  %4959 = fadd fast float %4958, %4944
  %4960 = bitcast float %4959 to i32
  %4961 = ashr i32 %4960, 1
  %4962 = add nsw i32 %4961, 532487669
  %4963 = bitcast i32 %4962 to float
  %4964 = fadd fast float %4963, %4940
  %4965 = fmul fast float %4956, %4956
  %4966 = fmul fast float %4965, %4953
  %4967 = fmul fast float %4966, %4964
  %4968 = fdiv fast float 0x3FF0A00000000000, %4967
  %4969 = fmul fast float %4968, %4944
  %4970 = call float @dx.op.unary.f32(i32 6, float %4932)  ; FAbs(value)
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sitofp i32 %4972 to float
  %4974 = fmul fast float %4973, 5.000000e+00
  %4975 = fadd fast float %4974, 0xC1EFBF8940000000
  %4976 = fptosi float %4975 to i32
  %4977 = bitcast i32 %4976 to float
  %4978 = fsub fast float 1.000000e+00, %4641
  %4979 = fsub fast float 1.000000e+00, %4642
  %4980 = fsub fast float 1.000000e+00, %4652
  %4981 = fmul fast float %4977, %4978
  %4982 = fmul fast float %4977, %4979
  %4983 = fmul fast float %4977, %4980
  %4984 = fadd fast float %4981, %4641
  %4985 = fadd fast float %4982, %4642
  %4986 = fadd fast float %4983, %4652
  br i1 %4778, label %4987, label %5010

; <label>:4987                                    ; preds = %4919
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4034, float %4970, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4992 = fadd fast float %4989, -5.000000e-01
  %4993 = fadd fast float %4990, -5.000000e-01
  %4994 = fadd fast float %4991, -5.000000e-01
  %4995 = fmul fast float %4641, 4.000000e+00
  %4996 = fmul fast float %4995, %4978
  %4997 = fmul fast float %4996, %4992
  %4998 = fmul fast float %4642, 4.000000e+00
  %4999 = fmul fast float %4998, %4979
  %5000 = fmul fast float %4999, %4993
  %5001 = fmul fast float %4652, 4.000000e+00
  %5002 = fmul fast float %5001, %4980
  %5003 = fmul fast float %5002, %4994
  %5004 = fadd fast float %4997, %4984
  %5005 = fadd fast float %5000, %4985
  %5006 = fadd fast float %5003, %4986
  %5007 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5008 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5009 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  br label %5010

; <label>:5010                                    ; preds = %4987, %4919
  %5011 = phi float [ %5007, %4987 ], [ %4984, %4919 ]
  %5012 = phi float [ %5008, %4987 ], [ %4985, %4919 ]
  %5013 = phi float [ %5009, %4987 ], [ %4986, %4919 ]
  %5014 = fmul fast float %4931, 9.843750e-01
  %5015 = fadd fast float %5014, 7.812500e-03
  %5016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5015, float %4768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5017 = extractvalue %dx.types.ResRet.f32 %5016, 2
  %5018 = extractvalue %dx.types.ResRet.f32 %5016, 3
  %5019 = fmul fast float %5017, %4641
  %5020 = fmul fast float %5017, %4642
  %5021 = fmul fast float %5017, %4652
  %5022 = fadd fast float %5019, %5018
  %5023 = fadd fast float %5020, %5018
  %5024 = fadd fast float %5021, %5018
  br i1 %4778, label %5025, label %5048

; <label>:5025                                    ; preds = %5010
  %5026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4034, float %4931, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5027 = extractvalue %dx.types.ResRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.ResRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.ResRet.f32 %5026, 2
  %5030 = fadd fast float %5027, -5.000000e-01
  %5031 = fadd fast float %5028, -5.000000e-01
  %5032 = fadd fast float %5029, -5.000000e-01
  %5033 = fmul fast float %4641, 4.000000e+00
  %5034 = fmul fast float %5033, %4978
  %5035 = fmul fast float %5034, %5030
  %5036 = fmul fast float %4642, 4.000000e+00
  %5037 = fmul fast float %5036, %4979
  %5038 = fmul fast float %5037, %5031
  %5039 = fmul fast float %4652, 4.000000e+00
  %5040 = fmul fast float %5039, %4980
  %5041 = fmul fast float %5040, %5032
  %5042 = fadd fast float %5035, %5022
  %5043 = fadd fast float %5038, %5023
  %5044 = fadd fast float %5041, %5024
  %5045 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5046 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5047 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  br label %5048

; <label>:5048                                    ; preds = %5025, %5010
  %5049 = phi float [ %5045, %5025 ], [ %5022, %5010 ]
  %5050 = phi float [ %5046, %5025 ], [ %5023, %5010 ]
  %5051 = phi float [ %5047, %5025 ], [ %5024, %5010 ]
  %5052 = call float @dx.op.binary.f32(i32 35, float %5050, float %5051)  ; FMax(a,b)
  %5053 = call float @dx.op.binary.f32(i32 35, float %5049, float %5052)  ; FMax(a,b)
  %5054 = fsub fast float 1.000000e+00, %5053
  %5055 = fmul fast float %5011, %4969
  %5056 = fmul fast float %5012, %4969
  %5057 = fmul fast float %5013, %4969
  %5058 = fsub fast float 1.000000e+00, %4932
  %5059 = bitcast float %5058 to i32
  %5060 = sitofp i32 %5059 to float
  %5061 = fmul fast float %5060, 5.000000e+00
  %5062 = fadd fast float %5061, 0xC1EFBF8940000000
  %5063 = fptosi float %5062 to i32
  %5064 = bitcast i32 %5063 to float
  %5065 = fmul fast float %5064, %4035
  %5066 = fmul fast float %5054, %5065
  %5067 = fmul fast float %5066, %4828
  %5068 = fmul fast float %5066, %4829
  %5069 = fmul fast float %5066, %4830
  %5070 = fadd fast float %5067, %5055
  %5071 = fadd fast float %5068, %5056
  %5072 = fadd fast float %5069, %5057
  %5073 = fmul fast float %4937, %4920
  %5074 = fmul fast float %5073, %5054
  %5075 = fmul fast float %4937, %4921
  %5076 = fmul fast float %5075, %5054
  %5077 = fmul fast float %4937, %4922
  %5078 = fmul fast float %5077, %5054
  %5079 = fmul fast float %5073, %5070
  %5080 = fmul fast float %5075, %5071
  %5081 = fmul fast float %5077, %5072
  %5082 = fadd fast float %5074, %4812
  %5083 = fmul fast float %5082, %4061
  %5084 = fadd fast float %5076, %4813
  %5085 = fmul fast float %5084, %4061
  %5086 = fadd fast float %5078, %4814
  %5087 = fmul fast float %5086, %4061
  %5088 = fadd fast float %5079, %4855
  %5089 = fmul fast float %5088, %4061
  %5090 = fadd fast float %5080, %4858
  %5091 = fmul fast float %5090, %4061
  %5092 = fadd fast float %5081, %4861
  %5093 = fmul fast float %5092, %4061
  br label %5094

; <label>:5094                                    ; preds = %5048, %4912, %4805
  %5095 = phi float [ %4856, %4805 ], [ %4856, %4912 ], [ %5089, %5048 ]
  %5096 = phi float [ %4859, %4805 ], [ %4859, %4912 ], [ %5091, %5048 ]
  %5097 = phi float [ %4862, %4805 ], [ %4862, %4912 ], [ %5093, %5048 ]
  %5098 = phi float [ %4851, %4805 ], [ %4851, %4912 ], [ %5083, %5048 ]
  %5099 = phi float [ %4852, %4805 ], [ %4852, %4912 ], [ %5085, %5048 ]
  %5100 = phi float [ %4853, %4805 ], [ %4853, %4912 ], [ %5087, %5048 ]
  %5101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.i32 %5101, 0
  %5103 = icmp eq i32 %5102, 0
  br i1 %5103, label %5538, label %5104

; <label>:5104                                    ; preds = %5094
  %5105 = fptoui float %68 to i32
  %5106 = fptoui float %69 to i32
  %5107 = lshr i32 %5105, 4
  %5108 = lshr i32 %5106, 4
  %5109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5110 = extractvalue %dx.types.CBufRet.i32 %5109, 0
  %5111 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5108, i32 %5110, i32 %5107)  ; UMad(a,b,c)
  %5112 = add nsw i32 %5102, -1
  %5113 = call i32 @dx.op.binary.i32(i32 37, i32 %5112, i32 0)  ; IMax(a,b)
  %5114 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5115 = fptoui float %5114 to i32
  %5116 = lshr i32 %5115, 5
  %5117 = call i32 @dx.op.binary.i32(i32 40, i32 %5116, i32 8191)  ; UMin(a,b)
  %5118 = shl i32 %5117, 2
  %5119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5118, i32 undef)  ; BufferLoad(srv,index,wot)
  %5120 = extractvalue %dx.types.ResRet.i32 %5119, 0
  %5121 = lshr i32 %5120, 16
  %5122 = and i32 %5120, 65535
  %5123 = lshr i32 %5120, 21
  %5124 = lshr i32 %5122, 5
  %5125 = call i32 @dx.op.binary.i32(i32 40, i32 %5124, i32 %5113)  ; UMin(a,b)
  %5126 = icmp ugt i32 %5123, %5125
  br i1 %5126, label %5538, label %5127

; <label>:5127                                    ; preds = %5104
  br label %5128

; <label>:5128                                    ; preds = %5528, %5127
  %5129 = phi i32 [ %5535, %5528 ], [ %5123, %5127 ]
  %5130 = phi float [ %5529, %5528 ], [ %5095, %5127 ]
  %5131 = phi float [ %5530, %5528 ], [ %5096, %5127 ]
  %5132 = phi float [ %5531, %5528 ], [ %5097, %5127 ]
  %5133 = phi float [ %5532, %5528 ], [ %5098, %5127 ]
  %5134 = phi float [ %5533, %5528 ], [ %5099, %5127 ]
  %5135 = phi float [ %5534, %5528 ], [ %5100, %5127 ]
  %5136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.i32 %5136, 0
  %5138 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5111, i32 %5137, i32 %5129)  ; UMad(a,b,c)
  %5139 = shl i32 %5138, 2
  %5140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5139, i32 undef)  ; BufferLoad(srv,index,wot)
  %5141 = extractvalue %dx.types.ResRet.i32 %5140, 0
  %5142 = shl i32 %5129, 5
  %5143 = sub nsw i32 %5121, %5142
  %5144 = call i32 @dx.op.binary.i32(i32 37, i32 %5143, i32 0)  ; IMax(a,b)
  %5145 = call i32 @dx.op.binary.i32(i32 38, i32 %5144, i32 31)  ; IMin(a,b)
  %5146 = sub nsw i32 1, %5121
  %5147 = add nsw i32 %5146, %5122
  %5148 = call i32 @dx.op.binary.i32(i32 37, i32 %5147, i32 0)  ; IMax(a,b)
  %5149 = call i32 @dx.op.binary.i32(i32 38, i32 %5148, i32 32)  ; IMin(a,b)
  %5150 = and i32 %5149, 31
  %5151 = shl i32 -1, %5150
  %5152 = xor i32 %5151, -1
  %5153 = and i32 %5145, 31
  %5154 = shl i32 %5152, %5153
  %5155 = icmp eq i32 %5149, 32
  %5156 = select i1 %5155, i32 -1, i32 %5154
  %5157 = and i32 %5156, %5141
  %5158 = icmp eq i32 %5157, 0
  br i1 %5158, label %5528, label %5159

; <label>:5159                                    ; preds = %5128
  br label %5160

; <label>:5160                                    ; preds = %5240, %5159
  %5161 = phi i32 [ %5172, %5240 ], [ %5157, %5159 ]
  %5162 = phi float [ %5241, %5240 ], [ %5130, %5159 ]
  %5163 = phi float [ %5242, %5240 ], [ %5131, %5159 ]
  %5164 = phi float [ %5243, %5240 ], [ %5132, %5159 ]
  %5165 = phi float [ %5244, %5240 ], [ %5133, %5159 ]
  %5166 = phi float [ %5245, %5240 ], [ %5134, %5159 ]
  %5167 = phi float [ %5246, %5240 ], [ %5135, %5159 ]
  %5168 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5161)  ; FirstbitLo(value)
  %5169 = add i32 %5168, %5142
  %5170 = and i32 %5168, 31
  %5171 = shl i32 1, %5170
  %5172 = xor i32 %5171, %5161
  %5173 = mul i32 %5169, 112
  %5174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5173, i32 undef)  ; BufferLoad(srv,index,wot)
  %5175 = extractvalue %dx.types.ResRet.f32 %5174, 0
  %5176 = extractvalue %dx.types.ResRet.f32 %5174, 1
  %5177 = extractvalue %dx.types.ResRet.f32 %5174, 2
  %5178 = or i32 %5173, 12
  %5179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5178, i32 undef)  ; BufferLoad(srv,index,wot)
  %5180 = extractvalue %dx.types.ResRet.f32 %5179, 0
  %5181 = add i32 %5173, 44
  %5182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5181, i32 undef)  ; BufferLoad(srv,index,wot)
  %5183 = extractvalue %dx.types.ResRet.f32 %5182, 0
  %5184 = add i32 %5173, 48
  %5185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5184, i32 undef)  ; BufferLoad(srv,index,wot)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = add i32 %5173, 80
  %5190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5189, i32 undef)  ; BufferLoad(srv,index,wot)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5193 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5194 = select i1 %205, float %5191, float %5175
  %5195 = select i1 %205, float %5193, float %5176
  %5196 = select i1 %205, float %5192, float %5177
  %5197 = fsub fast float %5186, %131
  %5198 = fsub fast float %5187, %132
  %5199 = fsub fast float %5188, %133
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5198, float %5199, float %5197, float %5198, float %5199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = call float @dx.op.unary.f32(i32 24, float %5200)  ; Sqrt(value)
  %5202 = fdiv fast float 1.000000e+00, %5201
  %5203 = fmul fast float %5202, %5197
  %5204 = fmul fast float %5202, %5198
  %5205 = fmul fast float %5202, %5199
  %5206 = fadd fast float %5201, %5180
  %5207 = fdiv fast float 1.000000e+00, %5206
  %5208 = fmul float %5183, %5207
  %5209 = fmul float %5208, %5208
  %5210 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5211 = and i32 %5171, %5157
  %5212 = icmp eq i32 %5211, 0
  br i1 %5212, label %5235, label %5213, !dx.controlflow.hints !73

; <label>:5213                                    ; preds = %5160
  %5214 = lshr i32 %5105, 5
  %5215 = lshr i32 %5106, 5
  %5216 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5214, i32 %5215, i32 %5169, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5217 = extractvalue %dx.types.ResRet.i32 %5216, 0
  %5218 = and i32 %5217, 3
  %5219 = icmp eq i32 %5218, 0
  %5220 = select i1 %5219, float 1.000000e+00, float 0.000000e+00
  %5221 = icmp eq i32 %5218, 3
  br i1 %5221, label %5222, label %5235

; <label>:5222                                    ; preds = %5213
  %5223 = lshr i32 %5217, 10
  %5224 = and i32 %5223, 8160
  %5225 = and i32 %5106, 31
  %5226 = or i32 %5224, %5225
  %5227 = lshr i32 %5217, 1
  %5228 = and i32 %5227, 16352
  %5229 = and i32 %5105, 31
  %5230 = or i32 %5228, %5229
  %5231 = lshr i32 %5217, 23
  %5232 = and i32 %5231, 255
  %5233 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5230, i32 %5226, i32 %5232, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5234 = extractvalue %dx.types.ResRet.f32 %5233, 0
  br label %5235

; <label>:5235                                    ; preds = %5222, %5213, %5160
  %5236 = phi float [ %5234, %5222 ], [ %5220, %5213 ], [ 0.000000e+00, %5160 ]
  %5237 = call float @dx.op.binary.f32(i32 36, float %5236, float %5236)  ; FMin(a,b)
  %5238 = call float @dx.op.binary.f32(i32 36, float %5236, float %5237)  ; FMin(a,b)
  %5239 = fcmp fast ogt float %5238, 0.000000e+00
  br i1 %5239, label %5248, label %5240, !dx.controlflow.hints !74

; <label>:5240                                    ; preds = %5484, %5235
  %5241 = phi float [ %5162, %5235 ], [ %5524, %5484 ]
  %5242 = phi float [ %5163, %5235 ], [ %5525, %5484 ]
  %5243 = phi float [ %5164, %5235 ], [ %5526, %5484 ]
  %5244 = phi float [ %5165, %5235 ], [ %5518, %5484 ]
  %5245 = phi float [ %5166, %5235 ], [ %5519, %5484 ]
  %5246 = phi float [ %5167, %5235 ], [ %5520, %5484 ]
  %5247 = icmp eq i32 %5161, %5171
  br i1 %5247, label %5527, label %5160

; <label>:5248                                    ; preds = %5235
  %5249 = fmul fast float %5236, %5194
  %5250 = fmul fast float %5236, %5195
  %5251 = fmul fast float %5236, %5196
  %5252 = fsub fast float %5188, %4458
  %5253 = fcmp fast ogt float %5252, 0.000000e+00
  %5254 = fsub fast float %133, %4458
  %5255 = fcmp fast ogt float %5254, 0.000000e+00
  %5256 = xor i1 %5255, %5253
  %5257 = fsub fast float %4458, %5188
  %5258 = fmul fast float %5257, 2.000000e+00
  %5259 = fadd fast float %5258, %5188
  %5260 = select i1 %5256, float %5188, float %5259
  %5261 = fsub fast float %5260, %133
  %5262 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5198, float %5261, float %5197, float %5198, float %5261)  ; Dot3(ax,ay,az,bx,by,bz)
  %5263 = call float @dx.op.unary.f32(i32 25, float %5262)  ; Rsqrt(value)
  %5264 = fmul fast float %5263, %5197
  %5265 = fmul fast float %5263, %5198
  %5266 = fmul fast float %5263, %5261
  %5267 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5264, float %5265, float %5266)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = fdiv fast float 1.000000e+00, %5268
  %5270 = fmul fast float %5269, %5267
  %5271 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5254, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = fcmp fast ogt float %5271, 0.000000e+00
  %5273 = fcmp fast olt float %5271, 0.000000e+00
  %5274 = zext i1 %5272 to i32
  %5275 = zext i1 %5273 to i32
  %5276 = sub nsw i32 %5274, %5275
  %5277 = sitofp i32 %5276 to float
  %5278 = fsub fast float %5260, %4458
  %5279 = call float @dx.op.dot3.f32(i32 55, float %5197, float %5198, float %5278, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5280 = fcmp fast ogt float %5279, 0.000000e+00
  %5281 = fcmp fast olt float %5279, 0.000000e+00
  %5282 = zext i1 %5280 to i32
  %5283 = zext i1 %5281 to i32
  %5284 = sub nsw i32 %5282, %5283
  %5285 = sitofp i32 %5284 to float
  %5286 = fcmp fast une float %5277, %5285
  br i1 %5286, label %5287, label %5297

; <label>:5287                                    ; preds = %5248
  %5288 = fmul fast float %5270, %5266
  %5289 = fmul fast float %5270, %5265
  %5290 = fmul fast float %5270, %5264
  %5291 = fmul fast float %5290, %5290
  %5292 = fmul fast float %5289, %5289
  %5293 = fadd fast float %5291, %5292
  %5294 = fmul fast float %5288, %5288
  %5295 = fadd fast float %5293, %5294
  %5296 = call float @dx.op.unary.f32(i32 24, float %5295)  ; Sqrt(value)
  br label %5309

; <label>:5297                                    ; preds = %5248
  %5298 = icmp slt i32 %5276, 0
  br i1 %5298, label %5299, label %5309

; <label>:5299                                    ; preds = %5297
  %5300 = fsub fast float %131, %5186
  %5301 = fsub fast float %132, %5187
  %5302 = fsub fast float %133, %5260
  %5303 = fmul fast float %5300, %5300
  %5304 = fmul fast float %5301, %5301
  %5305 = fadd fast float %5303, %5304
  %5306 = fmul fast float %5302, %5302
  %5307 = fadd fast float %5305, %5306
  %5308 = call float @dx.op.unary.f32(i32 24, float %5307)  ; Sqrt(value)
  br label %5309

; <label>:5309                                    ; preds = %5299, %5297, %5287
  %5310 = phi float [ %5296, %5287 ], [ %5308, %5299 ], [ 0.000000e+00, %5297 ]
  %5311 = and i1 %5255, %5253
  %5312 = fsub fast float -0.000000e+00, %5310
  %5313 = select i1 %5311, float -0.000000e+00, float %5312
  %5314 = fmul fast float %4459, 0x3FF7154760000000
  %5315 = fmul fast float %5314, %5313
  %5316 = fmul fast float %4460, 0x3FF7154760000000
  %5317 = fmul fast float %5316, %5313
  %5318 = fmul fast float %4461, 0x3FF7154760000000
  %5319 = fmul fast float %5318, %5313
  %5320 = call float @dx.op.unary.f32(i32 21, float %5315)  ; Exp(value)
  %5321 = call float @dx.op.unary.f32(i32 21, float %5317)  ; Exp(value)
  %5322 = call float @dx.op.unary.f32(i32 21, float %5319)  ; Exp(value)
  %5323 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5324 = call float @dx.op.unary.f32(i32 7, float %5321)  ; Saturate(value)
  %5325 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5326 = fmul fast float %5249, %5323
  %5327 = fmul fast float %5250, %5324
  %5328 = fmul fast float %5251, %5325
  %5329 = fsub fast float %5203, %151
  %5330 = fsub fast float %5204, %152
  %5331 = fsub fast float %5205, %153
  %5332 = call float @dx.op.dot3.f32(i32 55, float %5329, float %5330, float %5331, float %5329, float %5330, float %5331)  ; Dot3(ax,ay,az,bx,by,bz)
  %5333 = call float @dx.op.unary.f32(i32 25, float %5332)  ; Rsqrt(value)
  %5334 = fmul fast float %5333, %5329
  %5335 = fmul fast float %5333, %5330
  %5336 = fmul fast float %5333, %5331
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5205, float %4647, float %4648, float %4649)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4476, float %4477, float %5334, float %5335, float %5336)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5340 = fmul fast float %5339, %5210
  %5341 = fmul fast float %5339, %5339
  %5342 = fmul fast float %5341, %4863
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5340, %5343
  %5345 = bitcast float %5200 to i32
  %5346 = ashr i32 %5345, 1
  %5347 = sub nsw i32 1597463007, %5346
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %5348, %5197
  %5350 = fmul fast float %5348, %5198
  %5351 = fmul fast float %5348, %5199
  %5352 = fsub fast float %5349, %151
  %5353 = fsub fast float %5350, %152
  %5354 = fsub fast float %5351, %153
  %5355 = call float @dx.op.dot3.f32(i32 55, float %5352, float %5353, float %5354, float %5352, float %5353, float %5354)  ; Dot3(ax,ay,az,bx,by,bz)
  %5356 = call float @dx.op.unary.f32(i32 25, float %5355)  ; Rsqrt(value)
  %5357 = fmul fast float %5352, %5356
  %5358 = fmul fast float %5353, %5356
  %5359 = fmul fast float %5354, %5356
  %5360 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float %5357, float %5358, float %5359)  ; Dot3(ax,ay,az,bx,by,bz)
  %5361 = fmul fast float %5360, %5360
  %5362 = call float @dx.op.unary.f32(i32 6, float %5337)  ; FAbs(value)
  %5363 = fsub fast float 1.000000e+00, %4650
  %5364 = call float @dx.op.binary.f32(i32 35, float %5363, float 0x3F847AE140000000)  ; FMax(a,b)
  %5365 = fmul fast float %5364, %5364
  %5366 = fmul fast float %5365, %5365
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = fmul fast float %4654, %4654
  %5369 = fmul fast float %5368, %5367
  %5370 = fadd fast float %5369, %5366
  %5371 = bitcast float %5370 to i32
  %5372 = ashr i32 %5371, 1
  %5373 = add nsw i32 %5372, 532487669
  %5374 = bitcast i32 %5373 to float
  %5375 = fadd fast float %5374, %4654
  %5376 = fmul fast float %5366, %5361
  %5377 = fsub fast float 1.000000e+00, %5361
  %5378 = fadd fast float %5377, %5376
  %5379 = fmul fast float %5362, %5362
  %5380 = fmul fast float %5379, %5367
  %5381 = fadd fast float %5380, %5366
  %5382 = bitcast float %5381 to i32
  %5383 = ashr i32 %5382, 1
  %5384 = add nsw i32 %5383, 532487669
  %5385 = bitcast i32 %5384 to float
  %5386 = fadd fast float %5385, %5362
  %5387 = fmul fast float %5378, %5378
  %5388 = fmul fast float %5387, %5375
  %5389 = fmul fast float %5388, %5386
  %5390 = fdiv fast float 1.000000e+00, %5389
  %5391 = bitcast float %5366 to i32
  %5392 = sitofp i32 %5391 to float
  %5393 = fmul fast float %5392, 0x3FE7F73180000000
  %5394 = fadd fast float %5393, 0x41AFE27C40000000
  %5395 = fptosi float %5394 to i32
  %5396 = bitcast i32 %5395 to float
  %5397 = fmul fast float %5183, 0x3FD80E9D60000000
  %5398 = fmul fast float %5397, %5348
  %5399 = fadd fast float %5396, %5398
  %5400 = bitcast float %5399 to i32
  %5401 = sub nsw i32 2129859010, %5400
  %5402 = bitcast i32 %5401 to float
  %5403 = fmul fast float %5366, %5390
  %5404 = fmul fast float %5403, %5396
  %5405 = fmul fast float %5404, %5402
  %5406 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5407 = fsub fast float 1.000000e+00, %5406
  %5408 = bitcast float %5407 to i32
  %5409 = sitofp i32 %5408 to float
  %5410 = fmul fast float %5409, 5.000000e+00
  %5411 = fadd fast float %5410, 0xC1EFBF8940000000
  %5412 = fptosi float %5411 to i32
  %5413 = bitcast i32 %5412 to float
  %5414 = fsub fast float 1.000000e+00, %4641
  %5415 = fsub fast float 1.000000e+00, %4642
  %5416 = fsub fast float 1.000000e+00, %4652
  %5417 = fmul fast float %5413, %5414
  %5418 = fmul fast float %5413, %5415
  %5419 = fmul fast float %5413, %5416
  %5420 = fadd fast float %5417, %4641
  %5421 = fadd fast float %5418, %4642
  %5422 = fadd fast float %5419, %4652
  br i1 %4778, label %5423, label %5446

; <label>:5423                                    ; preds = %5309
  %5424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4034, float %5406, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.ResRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.ResRet.f32 %5424, 2
  %5428 = fadd fast float %5425, -5.000000e-01
  %5429 = fadd fast float %5426, -5.000000e-01
  %5430 = fadd fast float %5427, -5.000000e-01
  %5431 = fmul fast float %4641, 4.000000e+00
  %5432 = fmul fast float %5431, %5414
  %5433 = fmul fast float %5432, %5428
  %5434 = fmul fast float %4642, 4.000000e+00
  %5435 = fmul fast float %5434, %5415
  %5436 = fmul fast float %5435, %5429
  %5437 = fmul fast float %4652, 4.000000e+00
  %5438 = fmul fast float %5437, %5416
  %5439 = fmul fast float %5438, %5430
  %5440 = fadd fast float %5433, %5420
  %5441 = fadd fast float %5436, %5421
  %5442 = fadd fast float %5439, %5422
  %5443 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5444 = call float @dx.op.unary.f32(i32 7, float %5441)  ; Saturate(value)
  %5445 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  br label %5446

; <label>:5446                                    ; preds = %5423, %5309
  %5447 = phi float [ %5443, %5423 ], [ %5420, %5309 ]
  %5448 = phi float [ %5444, %5423 ], [ %5421, %5309 ]
  %5449 = phi float [ %5445, %5423 ], [ %5422, %5309 ]
  %5450 = fmul fast float %5337, 9.843750e-01
  %5451 = fadd fast float %5450, 7.812500e-03
  %5452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5451, float %4768, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 3
  %5455 = fmul fast float %5453, %4641
  %5456 = fmul fast float %5453, %4642
  %5457 = fmul fast float %5453, %4652
  %5458 = fadd fast float %5455, %5454
  %5459 = fadd fast float %5456, %5454
  %5460 = fadd fast float %5457, %5454
  br i1 %4778, label %5461, label %5484

; <label>:5461                                    ; preds = %5446
  %5462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4034, float %5337, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.ResRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.ResRet.f32 %5462, 2
  %5466 = fadd fast float %5463, -5.000000e-01
  %5467 = fadd fast float %5464, -5.000000e-01
  %5468 = fadd fast float %5465, -5.000000e-01
  %5469 = fmul fast float %4641, 4.000000e+00
  %5470 = fmul fast float %5469, %5414
  %5471 = fmul fast float %5470, %5466
  %5472 = fmul fast float %4642, 4.000000e+00
  %5473 = fmul fast float %5472, %5415
  %5474 = fmul fast float %5473, %5467
  %5475 = fmul fast float %4652, 4.000000e+00
  %5476 = fmul fast float %5475, %5416
  %5477 = fmul fast float %5476, %5468
  %5478 = fadd fast float %5471, %5458
  %5479 = fadd fast float %5474, %5459
  %5480 = fadd fast float %5477, %5460
  %5481 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5483 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  br label %5484

; <label>:5484                                    ; preds = %5461, %5446
  %5485 = phi float [ %5481, %5461 ], [ %5458, %5446 ]
  %5486 = phi float [ %5482, %5461 ], [ %5459, %5446 ]
  %5487 = phi float [ %5483, %5461 ], [ %5460, %5446 ]
  %5488 = call float @dx.op.binary.f32(i32 35, float %5486, float %5487)  ; FMax(a,b)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5485, float %5488)  ; FMax(a,b)
  %5490 = fsub fast float 1.000000e+00, %5489
  %5491 = fmul fast float %5447, %5405
  %5492 = fmul fast float %5448, %5405
  %5493 = fmul fast float %5449, %5405
  %5494 = fsub fast float 1.000000e+00, %5338
  %5495 = bitcast float %5494 to i32
  %5496 = sitofp i32 %5495 to float
  %5497 = fmul fast float %5496, 5.000000e+00
  %5498 = fadd fast float %5497, 0xC1EFBF8940000000
  %5499 = fptosi float %5498 to i32
  %5500 = bitcast i32 %5499 to float
  %5501 = fmul fast float %5500, %4035
  %5502 = fmul fast float %5490, %5501
  %5503 = fmul fast float %5502, %4828
  %5504 = fmul fast float %5502, %4829
  %5505 = fmul fast float %5502, %4830
  %5506 = fadd fast float %5503, %5491
  %5507 = fadd fast float %5504, %5492
  %5508 = fadd fast float %5505, %5493
  %5509 = fmul fast float %5326, %4061
  %5510 = fmul fast float %5509, %5344
  %5511 = fmul fast float %5510, %5490
  %5512 = fmul fast float %5327, %4061
  %5513 = fmul fast float %5512, %5344
  %5514 = fmul fast float %5513, %5490
  %5515 = fmul fast float %5328, %4061
  %5516 = fmul fast float %5515, %5344
  %5517 = fmul fast float %5516, %5490
  %5518 = fadd fast float %5511, %5165
  %5519 = fadd fast float %5514, %5166
  %5520 = fadd fast float %5517, %5167
  %5521 = fmul fast float %5510, %5506
  %5522 = fmul fast float %5513, %5507
  %5523 = fmul fast float %5516, %5508
  %5524 = fadd fast float %5521, %5162
  %5525 = fadd fast float %5522, %5163
  %5526 = fadd fast float %5523, %5164
  br label %5240

; <label>:5527                                    ; preds = %5240
  br label %5528

; <label>:5528                                    ; preds = %5527, %5128
  %5529 = phi float [ %5130, %5128 ], [ %5241, %5527 ]
  %5530 = phi float [ %5131, %5128 ], [ %5242, %5527 ]
  %5531 = phi float [ %5132, %5128 ], [ %5243, %5527 ]
  %5532 = phi float [ %5133, %5128 ], [ %5244, %5527 ]
  %5533 = phi float [ %5134, %5128 ], [ %5245, %5527 ]
  %5534 = phi float [ %5135, %5128 ], [ %5246, %5527 ]
  %5535 = add i32 %5129, 1
  %5536 = icmp ugt i32 %5535, %5125
  br i1 %5536, label %5537, label %5128

; <label>:5537                                    ; preds = %5528
  br label %5538

; <label>:5538                                    ; preds = %5537, %5104, %5094
  %5539 = phi float [ %5095, %5094 ], [ %5095, %5104 ], [ %5529, %5537 ]
  %5540 = phi float [ %5096, %5094 ], [ %5096, %5104 ], [ %5530, %5537 ]
  %5541 = phi float [ %5097, %5094 ], [ %5097, %5104 ], [ %5531, %5537 ]
  %5542 = phi float [ %5098, %5094 ], [ %5098, %5104 ], [ %5532, %5537 ]
  %5543 = phi float [ %5099, %5094 ], [ %5099, %5104 ], [ %5533, %5537 ]
  %5544 = phi float [ %5100, %5094 ], [ %5100, %5104 ], [ %5534, %5537 ]
  %5545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %5546 = extractvalue %dx.types.ResRet.i32 %5545, 3
  %5547 = bitcast i32 %5546 to float
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = fmul fast float %5548, %165
  %5550 = fadd fast float %5549, %5547
  %5551 = call float @dx.op.unary.f32(i32 24, float %4644)  ; Sqrt(value)
  %5552 = call float @dx.op.unary.f32(i32 24, float %4645)  ; Sqrt(value)
  %5553 = call float @dx.op.unary.f32(i32 24, float %4646)  ; Sqrt(value)
  %5554 = fmul fast float %5551, %5542
  %5555 = fmul fast float %5552, %5543
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  br i1 %205, label %5558, label %5587

; <label>:5558                                    ; preds = %5538
  %5559 = fadd fast float %5544, %4037
  %5560 = fmul fast float %5559, %4039
  %5561 = fsub fast float 1.000000e+00, %4039
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 3
  %5565 = fmul fast float %5564, %5562
  %5566 = fadd fast float %5565, %5560
  %5567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5568 = extractvalue %dx.types.CBufRet.f32 %5567, 0
  %5569 = fmul fast float %5568, %4834
  %5570 = fsub fast float %5566, %5569
  %5571 = fadd fast float %5555, %5554
  %5572 = fmul fast float %5557, %5571
  %5573 = extractvalue %dx.types.CBufRet.f32 %5563, 1
  %5574 = fsub fast float %5570, %5573
  %5575 = extractvalue %dx.types.CBufRet.f32 %5563, 2
  %5576 = fmul fast float %5574, %5575
  %5577 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = fsub fast float %5577, %5579
  %5581 = fmul fast float %5580, 1.000000e+01
  %5582 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5583 = fsub fast float %4038, %5550
  %5584 = fmul fast float %5582, %5583
  %5585 = fadd fast float %5584, %5550
  %5586 = fmul fast float %5585, %5577
  br label %5603

; <label>:5587                                    ; preds = %5538
  %5588 = fmul fast float %5553, %5544
  %5589 = fmul fast float %5557, %5554
  %5590 = fmul fast float %5557, %5555
  %5591 = fmul fast float %5588, %5557
  %5592 = add i32 %33, 356
  %5593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5592, i32 undef)  ; BufferLoad(srv,index,wot)
  %5594 = extractvalue %dx.types.ResRet.i32 %5593, 0
  %5595 = and i32 %5594, 32
  %5596 = icmp eq i32 %5595, 0
  br i1 %5596, label %5603, label %5597

; <label>:5597                                    ; preds = %5587
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = fmul fast float %5599, 0x3FE99999A0000000
  %5601 = fadd fast float %5599, %5589
  %5602 = fadd fast float %5600, %5591
  br label %5603

; <label>:5603                                    ; preds = %5597, %5587, %5558
  %5604 = phi float [ %5572, %5558 ], [ %5601, %5597 ], [ %5589, %5587 ]
  %5605 = phi float [ %5586, %5558 ], [ %5590, %5597 ], [ %5590, %5587 ]
  %5606 = phi float [ %5585, %5558 ], [ %5602, %5597 ], [ %5591, %5587 ]
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5609 = fmul fast float %5608, %5540
  %5610 = fmul fast float %5608, %5541
  %5611 = fadd fast float %5540, %5539
  %5612 = select i1 %205, float %5611, float %5539
  %5613 = fmul float %5612, %5608
  %5614 = select i1 %205, float 0.000000e+00, float %5609
  %5615 = select i1 %205, float 0.000000e+00, float %5610
  %5616 = fmul fast float %5604, %5551
  %5617 = fmul fast float %5605, %5552
  %5618 = fmul fast float %5606, %5553
  %5619 = fadd fast float %5613, %5616
  %5620 = fadd fast float %5614, %5617
  %5621 = fadd fast float %5615, %5618
  %5622 = select i1 %205, float %5605, float %5620
  %5623 = select i1 %205, float %5606, float %5621
  %5624 = call float @dx.op.binary.f32(i32 36, float %5619, float 3.225500e+04)  ; FMin(a,b)
  %5625 = call float @dx.op.binary.f32(i32 36, float %5622, float 3.225500e+04)  ; FMin(a,b)
  %5626 = call float @dx.op.binary.f32(i32 36, float %5623, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5624)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5625)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5626)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

