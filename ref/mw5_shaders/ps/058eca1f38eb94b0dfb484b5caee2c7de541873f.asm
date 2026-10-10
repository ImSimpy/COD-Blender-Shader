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
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b0587b10d52ced99881db111b0f2d42c
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
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
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %66, %60
  %68 = fmul fast float %66, %61
  %69 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %70 = bitcast float %69 to i32
  %71 = ashr i32 %70, 1
  %72 = sub nsw i32 1597250115, %71
  %73 = bitcast i32 %72 to float
  %74 = fmul fast float %73, %52
  %75 = fmul fast float %73, %53
  %76 = fmul fast float %73, %54
  %77 = fmul fast float %53, %50
  %78 = fmul fast float %54, %49
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %54, %48
  %81 = fmul fast float %52, %50
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %52, %49
  %84 = fmul fast float %53, %48
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %79, %51
  %87 = fmul fast float %82, %51
  %88 = fmul fast float %85, %51
  %89 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = bitcast float %89 to i32
  %91 = ashr i32 %90, 1
  %92 = sub nsw i32 1597250115, %91
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %93, %41
  %95 = fmul fast float %93, %42
  %96 = fmul fast float %93, %43
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 3
  %100 = fmul fast float %67, 2.000000e+00
  %101 = fmul fast float %100, %98
  %102 = fmul fast float %68, 2.000000e+00
  %103 = fmul fast float %102, %99
  %104 = fsub fast float 1.000000e+00, %101
  %105 = fsub fast float 1.000000e+00, %103
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %104, %107
  %111 = fmul fast float %104, %108
  %112 = fmul fast float %104, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %105, %114
  %118 = fmul fast float %105, %115
  %119 = fmul fast float %105, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fadd fast float %117, %121
  %125 = fadd fast float %124, %110
  %126 = fadd fast float %118, %122
  %127 = fadd fast float %126, %111
  %128 = fadd fast float %119, %123
  %129 = fadd fast float %128, %112
  %130 = fmul fast float %125, %62
  %131 = fmul fast float %127, %62
  %132 = fmul fast float %129, %62
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %136 = fmul fast float %134, %67
  %137 = fmul fast float %135, %68
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = and i32 %139, 114688
  %141 = icmp ne i32 %140, 0
  %142 = select i1 %141, float %136, float 0.000000e+00
  %143 = select i1 %141, float %137, float 0.000000e+00
  %144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %142, float %143, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %145 = extractvalue %dx.types.ResRet.f32 %144, 0
  %146 = fmul fast float %145, 2.550000e+02
  %147 = fptoui float %146 to i32
  %148 = select i1 %141, i32 %147, i32 0
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.i32 %150, 3
  %152 = and i32 %151, 3
  %153 = icmp ne i32 %152, 0
  %154 = and i32 %151, 4
  %155 = icmp ne i32 %154, 0
  %156 = and i1 %153, %155
  br i1 %156, label %157, label %168

; <label>:157                                     ; preds = %0
  %158 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %159 = fmul fast float %158, %68
  %160 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %161 = fmul fast float %160, %67
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %161, float %159, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = fsub fast float 1.000000e+00, %163
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = fcmp fast olt float %164, %166
  br label %171

; <label>:168                                     ; preds = %0
  %169 = icmp eq i32 %154, 0
  %170 = and i1 %153, %169
  br label %171

; <label>:171                                     ; preds = %168, %157
  %172 = phi i1 [ %167, %157 ], [ %170, %168 ]
  %173 = add i32 %33, 156
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = shl i32 %175, 4
  %177 = and i32 %176, 32752
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = lshr i32 %175, 7
  %180 = and i32 %179, 32752
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = lshr i32 %175, 22
  %183 = shl nuw nsw i32 %182, 5
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = add i32 %33, 216
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, 255
  %189 = uitofp i32 %188 to float
  %190 = fmul fast float %189, 0x3F70101020000000
  %191 = lshr i32 %187, 8
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %187, 16
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = add i32 %33, 36
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 65535
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %201, 16
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = add i32 %33, 288
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = and i32 %208, 65535
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %208, 16
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = fmul fast float %210, 0x3F50624DE0000000
  %214 = fmul fast float %212, 0x3F50624DE0000000
  %215 = add i32 %33, 172
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = shl i32 %217, 4
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %217, 7
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %217, 22
  %225 = shl nuw nsw i32 %224, 5
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = add i32 %33, 232
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = lshr i32 %229, 8
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = lshr i32 %229, 16
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = add i32 %33, 52
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 65535
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %243, 16
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = add i32 %33, 304
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = fmul fast float %252, 0x3F50624DE0000000
  %256 = fmul fast float %254, 0x3F50624DE0000000
  %257 = add i32 %33, 188
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = shl i32 %259, 4
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %259, 7
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 22
  %267 = shl nuw nsw i32 %266, 5
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = add i32 %33, 248
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = lshr i32 %271, 8
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %271, 16
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = add i32 %33, 68
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 65535
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %285, 16
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = add i32 %33, 320
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = and i32 %292, 65535
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %292, 16
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = fmul fast float %294, 0x3F50624DE0000000
  %298 = fmul fast float %296, 0x3F50624DE0000000
  %299 = add i32 %33, 204
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = shl i32 %301, 4
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %301, 7
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %301, 22
  %309 = shl nuw nsw i32 %308, 5
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = add i32 %33, 264
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = lshr i32 %313, 8
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %313, 16
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = add i32 %33, 84
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %327, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = add i32 %33, 336
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = fmul fast float %336, 0x3F50624DE0000000
  %340 = fmul fast float %338, 0x3F50624DE0000000
  %341 = add i32 %33, 348
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 32
  %345 = icmp eq i32 %344, 0
  %346 = and i32 %343, 64
  %347 = icmp eq i32 %346, 0
  %348 = and i32 %343, 128
  %349 = icmp eq i32 %348, 0
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 2
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %367, label %354

; <label>:354                                     ; preds = %171
  %355 = add i32 %33, 472
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = add i32 %357, 0
  %359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %358, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %359, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = extractvalue %dx.types.ResRet.f32 %360, 1
  %363 = extractvalue %dx.types.ResRet.f32 %360, 2
  %364 = fmul fast float %361, %57
  %365 = fmul fast float %362, %58
  %366 = fmul fast float %363, %59
  br label %367

; <label>:367                                     ; preds = %354, %171
  %368 = phi float [ %59, %171 ], [ %366, %354 ]
  %369 = phi float [ %58, %171 ], [ %365, %354 ]
  %370 = phi float [ %57, %171 ], [ %364, %354 ]
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %341, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 2
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %394, label %375

; <label>:375                                     ; preds = %367
  %376 = add i32 %33, 44
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 1
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %380, float %370, float 1.000000e+00
  %382 = add i32 %33, 60
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = and i32 %384, 1
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %386, float %369, float 1.000000e+00
  %388 = add i32 %33, 76
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 1
  %392 = icmp ne i32 %391, 0
  %393 = select i1 %392, float %368, float 1.000000e+00
  br label %394

; <label>:394                                     ; preds = %375, %367
  %395 = phi float [ %368, %367 ], [ %393, %375 ]
  %396 = phi float [ %369, %367 ], [ %387, %375 ]
  %397 = phi float [ %370, %367 ], [ %381, %375 ]
  %398 = lshr i32 %372, 20
  %399 = and i32 %398, 3
  %400 = add nuw nsw i32 %399, 1
  %401 = add i32 %33, 24
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = add i32 %33, 28
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = or i32 %406, %403
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %867, label %409

; <label>:409                                     ; preds = %394
  %410 = and i32 %403, 262144
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %35, float 1.000000e+00
  %413 = select i1 %411, float %36, float 0.000000e+00
  %414 = select i1 %411, float %37, float 0.000000e+00
  %415 = select i1 %411, float %38, float 1.000000e+00
  %416 = select i1 %411, float %39, float %55
  %417 = select i1 %411, float %40, float %56
  %418 = add i32 %33, 284
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = lshr i32 %420, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = fmul fast float %422, 0x3F50624DE0000000
  %424 = add i32 %33, 88
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = lshr i32 %426, 16
  %428 = and i32 %427, 255
  %429 = lshr i32 %426, 24
  %430 = add i32 %33, 292
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 65535
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %432, 16
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = add i32 %33, 32
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = lshr i32 %439, 22
  %441 = shl nuw nsw i32 %440, 5
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = shl i32 %439, 4
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %439, 7
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %450 = extractvalue %dx.types.CBufRet.f32 %449, 3
  %451 = fmul fast float %450, 1.000000e+03
  %452 = fmul fast float %213, %451
  %453 = call float @dx.op.unary.f32(i32 22, float %452)  ; Frc(value)
  %454 = fadd fast float %453, %203
  %455 = fmul fast float %214, %451
  %456 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %457 = fadd fast float %456, %205
  %458 = fmul fast float %423, %451
  %459 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %460 = fmul fast float %459, 0x401921FB60000000
  %461 = fadd fast float %460, %442
  %462 = call float @dx.op.unary.f32(i32 13, float %461)  ; Sin(value)
  %463 = call float @dx.op.unary.f32(i32 12, float %461)  ; Cos(value)
  %464 = fsub fast float -0.000000e+00, %462
  %465 = fadd fast float %416, -5.000000e-01
  %466 = fadd fast float %417, -5.000000e-01
  %467 = fmul fast float %434, %465
  %468 = fmul fast float %436, %466
  %469 = fadd fast float %467, 5.000000e-01
  %470 = fadd fast float %468, 5.000000e-01
  %471 = fmul fast float %445, %469
  %472 = fmul fast float %448, %470
  %473 = fmul fast float %463, %471
  %474 = call float @dx.op.tertiary.f32(i32 46, float %464, float %472, float %473)  ; FMad(a,b,c)
  %475 = fmul fast float %462, %471
  %476 = call float @dx.op.tertiary.f32(i32 46, float %463, float %472, float %475)  ; FMad(a,b,c)
  %477 = fadd fast float %454, %474
  %478 = fadd fast float %457, %476
  %479 = icmp ugt i32 %428, 1
  %480 = icmp ugt i32 %426, 33554431
  %481 = or i1 %480, %479
  br i1 %481, label %482, label %507

; <label>:482                                     ; preds = %409
  %483 = add i32 %33, 228
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = lshr i32 %485, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = fmul fast float %450, %487
  %489 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %490 = mul nuw nsw i32 %428, %429
  %491 = uitofp i32 %490 to float
  %492 = fmul fast float %489, %491
  %493 = call float @dx.op.unary.f32(i32 27, float %492)  ; Round_ni(value)
  %494 = fptoui float %493 to i32
  %495 = urem i32 %494, %428
  %496 = udiv i32 %494, %429
  %497 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %498 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %499 = uitofp i32 %495 to float
  %500 = uitofp i32 %496 to float
  %501 = fadd fast float %497, %499
  %502 = fadd fast float %498, %500
  %503 = uitofp i32 %428 to float
  %504 = uitofp i32 %429 to float
  %505 = fdiv fast float %501, %503
  %506 = fdiv fast float %502, %504
  br label %507

; <label>:507                                     ; preds = %482, %409
  %508 = phi float [ %505, %482 ], [ %477, %409 ]
  %509 = phi float [ %506, %482 ], [ %478, %409 ]
  %510 = and i32 %403, 16
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %708, label %512

; <label>:512                                     ; preds = %507
  %513 = add i32 %33, 360
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = add i32 %515, 0
  %517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %517, %dx.types.Handle %63, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = extractvalue %dx.types.ResRet.f32 %518, 2
  %522 = extractvalue %dx.types.ResRet.f32 %518, 3
  %523 = and i32 %426, 255
  %524 = uitofp i32 %523 to float
  %525 = lshr i32 %426, 8
  %526 = and i32 %525, 255
  %527 = uitofp i32 %526 to float
  %528 = fmul fast float %522, %524
  %529 = fadd fast float %528, %527
  %530 = fmul fast float %529, 0x3F70101000000000
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = and i32 %532, 512
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %543, label %535

; <label>:535                                     ; preds = %512
  %536 = add i32 %33, 440
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %540, %dx.types.Handle %64, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  br label %543

; <label>:543                                     ; preds = %535, %512
  %544 = phi float [ %542, %535 ], [ 1.000000e+00, %512 ]
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = and i32 %546, 33554432
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %655, label %549

; <label>:549                                     ; preds = %543
  %550 = add i32 %33, 224
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 65535
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %552, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = add i32 %33, 228
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 65535
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %185, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = lshr i32 %563, 24
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %565, 0x3F70101020000000
  %567 = and i32 %563, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = lshr i32 %563, 8
  %571 = and i32 %570, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = lshr i32 %563, 16
  %575 = and i32 %574, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = add i32 %33, 220
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = lshr i32 %580, 24
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, 0x3F70101020000000
  %584 = and i32 %580, 255
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = lshr i32 %580, 8
  %588 = and i32 %587, 255
  %589 = uitofp i32 %588 to float
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = lshr i32 %580, 16
  %592 = and i32 %591, 255
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = bitcast float %519 to i32
  %596 = ashr i32 %595, 1
  %597 = sub nsw i32 1597463174, %596
  %598 = bitcast i32 %597 to float
  %599 = fmul fast float %519, 5.000000e-01
  %600 = fmul fast float %598, %598
  %601 = fmul fast float %600, %599
  %602 = fsub fast float 1.500000e+00, %601
  %603 = fmul fast float %598, %519
  %604 = fmul fast float %603, %602
  %605 = bitcast float %520 to i32
  %606 = ashr i32 %605, 1
  %607 = sub nsw i32 1597463174, %606
  %608 = bitcast i32 %607 to float
  %609 = fmul fast float %520, 5.000000e-01
  %610 = fmul fast float %608, %608
  %611 = fmul fast float %610, %609
  %612 = fsub fast float 1.500000e+00, %611
  %613 = fmul fast float %608, %520
  %614 = fmul fast float %613, %612
  %615 = bitcast float %521 to i32
  %616 = ashr i32 %615, 1
  %617 = sub nsw i32 1597463174, %616
  %618 = bitcast i32 %617 to float
  %619 = fmul fast float %521, 5.000000e-01
  %620 = fmul fast float %618, %618
  %621 = fmul fast float %620, %619
  %622 = fsub fast float 1.500000e+00, %621
  %623 = fmul fast float %618, %521
  %624 = fmul fast float %623, %622
  %625 = fsub fast float %604, %586
  %626 = fsub fast float %614, %590
  %627 = fsub fast float %624, %594
  %628 = fmul fast float %625, %554
  %629 = fmul fast float %626, %556
  %630 = fmul fast float %627, %561
  %631 = fadd fast float %628, %569
  %632 = fadd fast float %629, %573
  %633 = fadd fast float %630, %577
  %634 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %635 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %636 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  %637 = fmul fast float %634, %634
  %638 = fmul fast float %635, %635
  %639 = fmul fast float %636, %636
  %640 = fsub fast float %637, %519
  %641 = fsub fast float %638, %520
  %642 = fsub fast float %639, %521
  %643 = fmul fast float %640, %544
  %644 = fmul fast float %641, %544
  %645 = fmul fast float %642, %544
  %646 = fadd fast float %643, %519
  %647 = fadd fast float %644, %520
  %648 = fadd fast float %645, %521
  %649 = fadd fast float %566, %530
  %650 = fsub fast float %649, %583
  %651 = call float @dx.op.unary.f32(i32 7, float %650)  ; Saturate(value)
  %652 = fsub fast float %651, %530
  %653 = fmul fast float %652, %544
  %654 = fadd fast float %653, %530
  br label %708

; <label>:655                                     ; preds = %543
  %656 = and i32 %546, 134217728
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %692, label %658

; <label>:658                                     ; preds = %655
  %659 = call float @dx.op.unary.f32(i32 24, float %190)  ; Sqrt(value)
  %660 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %661 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %662 = fadd fast float %659, -5.000000e-01
  %663 = fadd fast float %660, -5.000000e-01
  %664 = fadd fast float %661, -5.000000e-01
  %665 = fmul fast float %662, %544
  %666 = fmul fast float %663, %544
  %667 = fmul fast float %664, %544
  %668 = fadd fast float %665, 5.000000e-01
  %669 = fadd fast float %666, 5.000000e-01
  %670 = fadd fast float %667, 5.000000e-01
  %671 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %672 = call float @dx.op.unary.f32(i32 24, float %520)  ; Sqrt(value)
  %673 = call float @dx.op.unary.f32(i32 24, float %521)  ; Sqrt(value)
  %674 = fmul fast float %668, 2.000000e+00
  %675 = fsub fast float 1.000000e+00, %674
  %676 = fmul fast float %675, %671
  %677 = fadd fast float %676, %674
  %678 = fmul fast float %677, %671
  %679 = fmul fast float %669, 2.000000e+00
  %680 = fsub fast float 1.000000e+00, %679
  %681 = fmul fast float %680, %672
  %682 = fadd fast float %681, %679
  %683 = fmul fast float %682, %672
  %684 = fmul fast float %670, 2.000000e+00
  %685 = fsub fast float 1.000000e+00, %684
  %686 = fmul fast float %685, %673
  %687 = fadd fast float %686, %684
  %688 = fmul fast float %687, %673
  %689 = fmul fast float %678, %678
  %690 = fmul fast float %683, %683
  %691 = fmul fast float %688, %688
  br label %708

; <label>:692                                     ; preds = %655
  %693 = fmul fast float %190, %190
  %694 = fmul fast float %194, %194
  %695 = fmul fast float %198, %198
  %696 = fadd fast float %693, -1.000000e+00
  %697 = fadd fast float %694, -1.000000e+00
  %698 = fadd fast float %695, -1.000000e+00
  %699 = fmul fast float %544, %696
  %700 = fmul fast float %544, %697
  %701 = fmul fast float %544, %698
  %702 = fadd fast float %699, 1.000000e+00
  %703 = fadd fast float %700, 1.000000e+00
  %704 = fadd fast float %701, 1.000000e+00
  %705 = fmul fast float %702, %519
  %706 = fmul fast float %703, %520
  %707 = fmul fast float %704, %521
  br label %708

; <label>:708                                     ; preds = %692, %658, %549, %507
  %709 = phi float [ %654, %549 ], [ %530, %658 ], [ %530, %692 ], [ 0x3FA23C0BE0000000, %507 ]
  %710 = phi float [ %646, %549 ], [ %689, %658 ], [ %705, %692 ], [ 1.000000e+00, %507 ]
  %711 = phi float [ %647, %549 ], [ %690, %658 ], [ %706, %692 ], [ 1.000000e+00, %507 ]
  %712 = phi float [ %648, %549 ], [ %691, %658 ], [ %707, %692 ], [ 1.000000e+00, %507 ]
  %713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %714 = extractvalue %dx.types.CBufRet.i32 %713, 1
  %715 = and i32 %714, 1
  %716 = icmp ne i32 %715, 0
  %717 = add i32 %33, 356
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 32
  %721 = icmp ne i32 %720, 0
  %722 = and i1 %716, %721
  %723 = select i1 %722, float 1.000000e+00, float %710
  %724 = select i1 %722, float 0x3FD3333340000000, float %711
  %725 = select i1 %722, float 0x3FD3333340000000, float %712
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 32
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %802, label %730

; <label>:730                                     ; preds = %708
  %731 = add i32 %33, 92
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %33, 376
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %736, 0
  %738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %738, %dx.types.Handle %63, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  %741 = extractvalue %dx.types.ResRet.f32 %739, 1
  %742 = extractvalue %dx.types.ResRet.f32 %739, 2
  %743 = extractvalue %dx.types.ResRet.f32 %739, 3
  %744 = and i32 %733, 255
  %745 = uitofp i32 %744 to float
  %746 = lshr i32 %733, 8
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = lshr i32 %733, 16
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = fmul fast float %751, 0x3F70101000000000
  %753 = fmul fast float %740, %745
  %754 = fadd fast float %753, %748
  %755 = fmul fast float %754, 0x3F70101000000000
  %756 = fadd fast float %741, -5.000000e-01
  %757 = fadd fast float %743, -5.000000e-01
  %758 = fmul fast float %756, %752
  %759 = fmul fast float %757, %752
  %760 = fadd fast float %758, 5.000000e-01
  %761 = fadd fast float %759, 5.000000e-01
  %762 = fmul fast float %760, 2.000000e+00
  %763 = fadd fast float %762, -1.000000e+00
  %764 = fmul fast float %761, 2.000000e+00
  %765 = fadd fast float %764, -1.000000e+00
  %766 = fadd fast float %763, %765
  %767 = fmul fast float %766, 5.000000e-01
  %768 = fsub fast float %763, %765
  %769 = fmul fast float %768, 5.000000e-01
  %770 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %771 = fsub fast float 1.000000e+00, %770
  %772 = call float @dx.op.unary.f32(i32 6, float %769)  ; FAbs(value)
  %773 = fsub fast float %771, %772
  %774 = call float @dx.op.dot3.f32(i32 55, float %767, float %769, float %773, float %767, float %769, float %773)  ; Dot3(ax,ay,az,bx,by,bz)
  %775 = call float @dx.op.unary.f32(i32 25, float %774)  ; Rsqrt(value)
  %776 = fmul fast float %767, %775
  %777 = fmul fast float %769, %775
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 67108864
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %798, label %782

; <label>:782                                     ; preds = %730
  %783 = add i32 %33, 280
  %784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %783, i32 undef)  ; BufferLoad(srv,index,wot)
  %785 = extractvalue %dx.types.ResRet.i32 %784, 0
  %786 = and i32 %785, 65535
  %787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %786)  ; LegacyF16ToF32(value)
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 65535
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = lshr i32 %785, 16
  %793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %792)  ; LegacyF16ToF32(value)
  %794 = fsub fast float %755, %793
  %795 = fmul fast float %794, %787
  %796 = fadd fast float %795, %791
  %797 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  br label %798

; <label>:798                                     ; preds = %782, %730
  %799 = phi float [ %797, %782 ], [ %755, %730 ]
  %800 = call float @dx.op.dot2.f32(i32 54, float %776, float %777, float %412, float %413)  ; Dot2(ax,ay,bx,by)
  %801 = call float @dx.op.dot2.f32(i32 54, float %776, float %777, float %414, float %415)  ; Dot2(ax,ay,bx,by)
  br label %802

; <label>:802                                     ; preds = %798, %708
  %803 = phi float [ %799, %798 ], [ 0x3FD6666660000000, %708 ]
  %804 = phi float [ %800, %798 ], [ 0.000000e+00, %708 ]
  %805 = phi float [ %801, %798 ], [ 0.000000e+00, %708 ]
  %806 = phi float [ %742, %798 ], [ 1.000000e+00, %708 ]
  %807 = add i32 %33, 160
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = lshr i32 %809, 22
  %811 = shl nuw nsw i32 %810, 5
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 64
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %850, label %817

; <label>:817                                     ; preds = %802
  %818 = add i32 %33, 392
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = add i32 %820, 0
  %822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 131072
  %826 = icmp eq i32 %825, 0
  %827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %822, %dx.types.Handle %63, float %508, float %509, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  %831 = fmul fast float %828, %178
  %832 = fmul fast float %829, %181
  %833 = fmul fast float %830, %184
  br i1 %826, label %840, label %834

; <label>:834                                     ; preds = %817
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 0
  %837 = fmul fast float %836, %831
  %838 = fmul fast float %836, %832
  %839 = fmul fast float %836, %833
  br label %840

; <label>:840                                     ; preds = %834, %817
  %841 = phi float [ %837, %834 ], [ %831, %817 ]
  %842 = phi float [ %838, %834 ], [ %832, %817 ]
  %843 = phi float [ %839, %834 ], [ %833, %817 ]
  %844 = fmul fast float %841, %812
  %845 = select i1 %172, float %844, float %841
  %846 = call float @dx.op.dot3.f32(i32 55, float %845, float %842, float %843, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %847 = select i1 %172, float 0.000000e+00, float %841
  %848 = select i1 %172, float %846, float %842
  %849 = select i1 %172, float 0.000000e+00, float %843
  br label %850

; <label>:850                                     ; preds = %840, %802
  %851 = phi float [ %847, %840 ], [ 0.000000e+00, %802 ]
  %852 = phi float [ %848, %840 ], [ 0.000000e+00, %802 ]
  %853 = phi float [ %849, %840 ], [ 0.000000e+00, %802 ]
  %854 = add i32 %33, 96
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = and i32 %856, 255
  %858 = uitofp i32 %857 to float
  %859 = lshr i32 %856, 8
  %860 = and i32 %859, 255
  %861 = uitofp i32 %860 to float
  %862 = call float @dx.op.dot3.f32(i32 55, float %723, float %724, float %725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = fmul fast float %861, %862
  %864 = fadd fast float %863, %858
  %865 = fmul fast float %864, 0x3F70101020000000
  %866 = call float @dx.op.unary.f32(i32 7, float %865)  ; Saturate(value)
  br label %867

; <label>:867                                     ; preds = %850, %394
  %868 = phi float [ 0.000000e+00, %394 ], [ %804, %850 ]
  %869 = phi float [ 0.000000e+00, %394 ], [ %805, %850 ]
  %870 = phi float [ 0.000000e+00, %394 ], [ %723, %850 ]
  %871 = phi float [ 0.000000e+00, %394 ], [ %724, %850 ]
  %872 = phi float [ 0.000000e+00, %394 ], [ %725, %850 ]
  %873 = phi float [ 0.000000e+00, %394 ], [ %851, %850 ]
  %874 = phi float [ 0.000000e+00, %394 ], [ %852, %850 ]
  %875 = phi float [ 0.000000e+00, %394 ], [ %853, %850 ]
  %876 = phi float [ 0.000000e+00, %394 ], [ %709, %850 ]
  %877 = phi float [ 0.000000e+00, %394 ], [ 1.000000e+00, %850 ]
  %878 = phi float [ 0.000000e+00, %394 ], [ %803, %850 ]
  %879 = phi float [ 0.000000e+00, %394 ], [ %806, %850 ]
  %880 = phi float [ 0.000000e+00, %394 ], [ %866, %850 ]
  br i1 %345, label %1722, label %881

; <label>:881                                     ; preds = %867
  %882 = icmp ult i32 %400, 2
  %883 = add i32 %33, 40
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = add i32 %33, 44
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = or i32 %888, %885
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %1722, label %891

; <label>:891                                     ; preds = %881
  %892 = and i32 %885, 262144
  %893 = icmp ne i32 %892, 0
  %894 = select i1 %893, float %35, float 1.000000e+00
  %895 = select i1 %893, float %36, float 0.000000e+00
  %896 = select i1 %893, float %37, float 0.000000e+00
  %897 = select i1 %893, float %38, float 1.000000e+00
  %898 = select i1 %893, float %39, float %55
  %899 = select i1 %893, float %40, float %56
  %900 = add i32 %33, 300
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = lshr i32 %902, 16
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = fmul fast float %904, 0x3F50624DE0000000
  %906 = add i32 %33, 104
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = lshr i32 %908, 16
  %910 = and i32 %909, 255
  %911 = lshr i32 %908, 24
  %912 = add i32 %33, 308
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 65535
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = lshr i32 %914, 16
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = add i32 %33, 48
  %920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %919, i32 undef)  ; BufferLoad(srv,index,wot)
  %921 = extractvalue %dx.types.ResRet.i32 %920, 0
  %922 = lshr i32 %921, 22
  %923 = shl nuw nsw i32 %922, 5
  %924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %923)  ; LegacyF16ToF32(value)
  %925 = shl i32 %921, 4
  %926 = and i32 %925, 32752
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = lshr i32 %921, 7
  %929 = and i32 %928, 32752
  %930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %929)  ; LegacyF16ToF32(value)
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 3
  %933 = fmul fast float %932, 1.000000e+03
  %934 = fmul fast float %255, %933
  %935 = call float @dx.op.unary.f32(i32 22, float %934)  ; Frc(value)
  %936 = fadd fast float %935, %245
  %937 = fmul fast float %256, %933
  %938 = call float @dx.op.unary.f32(i32 22, float %937)  ; Frc(value)
  %939 = fadd fast float %938, %247
  %940 = fmul fast float %905, %933
  %941 = call float @dx.op.unary.f32(i32 22, float %940)  ; Frc(value)
  %942 = fmul fast float %941, 0x401921FB60000000
  %943 = fadd fast float %942, %924
  %944 = call float @dx.op.unary.f32(i32 13, float %943)  ; Sin(value)
  %945 = call float @dx.op.unary.f32(i32 12, float %943)  ; Cos(value)
  %946 = fsub fast float -0.000000e+00, %944
  %947 = fadd fast float %898, -5.000000e-01
  %948 = fadd fast float %899, -5.000000e-01
  %949 = fmul fast float %916, %947
  %950 = fmul fast float %918, %948
  %951 = fadd fast float %949, 5.000000e-01
  %952 = fadd fast float %950, 5.000000e-01
  %953 = fmul fast float %927, %951
  %954 = fmul fast float %930, %952
  %955 = fmul fast float %945, %953
  %956 = call float @dx.op.tertiary.f32(i32 46, float %946, float %954, float %955)  ; FMad(a,b,c)
  %957 = fmul fast float %944, %953
  %958 = call float @dx.op.tertiary.f32(i32 46, float %945, float %954, float %957)  ; FMad(a,b,c)
  %959 = fadd fast float %936, %956
  %960 = fadd fast float %939, %958
  %961 = icmp ugt i32 %910, 1
  %962 = icmp ugt i32 %908, 33554431
  %963 = or i1 %962, %961
  br i1 %963, label %964, label %989

; <label>:964                                     ; preds = %891
  %965 = add i32 %33, 244
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = lshr i32 %967, 16
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = fmul fast float %932, %969
  %971 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %972 = mul nuw nsw i32 %910, %911
  %973 = uitofp i32 %972 to float
  %974 = fmul fast float %971, %973
  %975 = call float @dx.op.unary.f32(i32 27, float %974)  ; Round_ni(value)
  %976 = fptoui float %975 to i32
  %977 = urem i32 %976, %910
  %978 = udiv i32 %976, %911
  %979 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %980 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %981 = uitofp i32 %977 to float
  %982 = uitofp i32 %978 to float
  %983 = fadd fast float %979, %981
  %984 = fadd fast float %980, %982
  %985 = uitofp i32 %910 to float
  %986 = uitofp i32 %911 to float
  %987 = fdiv fast float %983, %985
  %988 = fdiv fast float %984, %986
  br label %989

; <label>:989                                     ; preds = %964, %891
  %990 = phi float [ %987, %964 ], [ %959, %891 ]
  %991 = phi float [ %988, %964 ], [ %960, %891 ]
  %992 = and i32 %885, 16777216
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1103, label %994

; <label>:994                                     ; preds = %989
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %998 = extractvalue %dx.types.CBufRet.f32 %995, 2
  %999 = fadd fast float %996, %130
  %1000 = fadd fast float %997, %131
  %1001 = fadd fast float %998, %132
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  %1005 = icmp eq i32 %34, 65535
  br i1 %1005, label %1100, label %1006

; <label>:1006                                    ; preds = %994
  %1007 = lshr i32 %34, 1
  %1008 = shl i32 %1007, 2
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %34, 1
  %1012 = icmp ne i32 %1011, 0
  %1013 = lshr i32 %1010, 16
  %1014 = and i32 %1010, 65535
  %1015 = select i1 %1012, i32 %1013, i32 %1014
  %1016 = icmp eq i32 %1015, 65535
  br i1 %1016, label %1096, label %1017

; <label>:1017                                    ; preds = %1006
  %1018 = mul nuw nsw i32 %1015, 40
  %1019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  %1023 = add nuw nsw i32 %1018, 12
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = add nuw nsw i32 %1018, 24
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = add nuw nsw i32 %1018, 36
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = fsub fast float %999, %1020
  %1037 = fsub fast float %1000, %1021
  %1038 = fsub fast float %1001, %1022
  %1039 = fmul fast float %1035, %1036
  %1040 = fmul fast float %1035, %1037
  %1041 = fmul fast float %1035, %1038
  %1042 = call float @dx.op.unary.f32(i32 27, float %1039)  ; Round_ni(value)
  %1043 = call float @dx.op.unary.f32(i32 27, float %1040)  ; Round_ni(value)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1045 = fadd fast float %1042, 5.000000e-01
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = fmul fast float %1045, %1025
  %1049 = fmul fast float %1046, %1026
  %1050 = fmul fast float %1047, %1027
  %1051 = shl i32 %34, 2
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = add i32 %1053, 0
  %1055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1056 = call float @dx.op.unary.f32(i32 22, float %1048)  ; Frc(value)
  %1057 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1058 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1055, %dx.types.Handle %30, float %1056, float %1057, float %1058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = fmul fast float %1060, 1.023000e+03
  %1064 = fmul fast float %1061, 1.023000e+03
  %1065 = fmul fast float %1062, 1.023000e+03
  %1066 = fadd fast float %1063, 5.000000e-01
  %1067 = fadd fast float %1064, 5.000000e-01
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = fsub fast float %1039, %1042
  %1073 = fsub fast float %1040, %1043
  %1074 = fsub fast float %1041, %1044
  %1075 = fmul fast float %1072, 7.500000e-01
  %1076 = fmul fast float %1073, 7.500000e-01
  %1077 = fmul fast float %1074, 7.500000e-01
  %1078 = fadd fast float %1042, 1.250000e-01
  %1079 = fadd fast float %1078, %1075
  %1080 = fadd fast float %1079, %1069
  %1081 = fadd fast float %1043, 1.250000e-01
  %1082 = fadd fast float %1081, %1076
  %1083 = fadd fast float %1082, %1070
  %1084 = fadd fast float %1044, 1.250000e-01
  %1085 = fadd fast float %1084, %1077
  %1086 = fadd fast float %1085, %1071
  %1087 = fmul fast float %1080, %1030
  %1088 = fmul fast float %1083, %1031
  %1089 = fmul fast float %1086, %1032
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = add i32 %1091, 0
  %1093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1093, %dx.types.Handle %28, float %1087, float %1088, float %1089, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  br label %1096

; <label>:1096                                    ; preds = %1017, %1006
  %1097 = phi float [ %1095, %1017 ], [ -1.000000e+00, %1006 ]
  %1098 = fadd fast float %1097, %1004
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  br label %1100

; <label>:1100                                    ; preds = %1096, %994
  %1101 = phi float [ %1099, %1096 ], [ %1004, %994 ]
  %1102 = fmul fast float %1101, %397
  br label %1103

; <label>:1103                                    ; preds = %1100, %989
  %1104 = phi float [ %1102, %1100 ], [ %397, %989 ]
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = and i32 %1106, 256
  %1108 = icmp eq i32 %1107, 0
  br i1 %1108, label %1155, label %1109

; <label>:1109                                    ; preds = %1103
  %1110 = add i32 %33, 428
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1114, %dx.types.Handle %64, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = add i32 %33, 116
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = shl i32 %1119, 4
  %1121 = and i32 %1120, 32752
  %1122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1121)  ; LegacyF16ToF32(value)
  %1123 = lshr i32 %1119, 7
  %1124 = and i32 %1123, 32752
  %1125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1124)  ; LegacyF16ToF32(value)
  %1126 = fsub fast float 1.000000e+00, %1104
  %1127 = call float @dx.op.binary.f32(i32 35, float %1126, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1128 = bitcast float %1104 to i32
  %1129 = sitofp i32 %1128 to float
  %1130 = fadd fast float %1129, 0xC1CFBF8940000000
  %1131 = fmul fast float %1125, %1130
  %1132 = fadd fast float %1131, 0x41CFBF8940000000
  %1133 = fptosi float %1132 to i32
  %1134 = bitcast i32 %1133 to float
  %1135 = bitcast float %1127 to i32
  %1136 = sitofp i32 %1135 to float
  %1137 = fadd fast float %1136, 0xC1CFBF8940000000
  %1138 = fmul fast float %1137, %1125
  %1139 = fadd fast float %1138, 0x41CFBF8940000000
  %1140 = fptosi float %1139 to i32
  %1141 = bitcast i32 %1140 to float
  %1142 = fmul fast float %1134, %1122
  %1143 = fmul fast float %1141, %1122
  %1144 = fsub fast float %1127, %1142
  %1145 = fadd fast float %1143, %1127
  %1146 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  %1147 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1148 = fsub fast float %1116, %1146
  %1149 = fsub fast float %1147, %1146
  %1150 = bitcast float %1149 to i32
  %1151 = sub nsw i32 2129859010, %1150
  %1152 = bitcast i32 %1151 to float
  %1153 = fmul fast float %1152, %1148
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  br label %1155

; <label>:1155                                    ; preds = %1109, %1103
  %1156 = phi float [ %1154, %1109 ], [ %1104, %1103 ]
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 128
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1177, label %1161

; <label>:1161                                    ; preds = %1155
  %1162 = add i32 %33, 412
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = add i32 %1164, 0
  %1166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1166, %dx.types.Handle %64, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 524288
  %1172 = icmp ne i32 %1171, 0
  %1173 = fcmp fast ogt float %1168, 0x3FE0101020000000
  %1174 = select i1 %1173, float 1.000000e+00, float 0.000000e+00
  %1175 = select i1 %1172, float %1174, float %1168
  %1176 = fmul fast float %1175, %1156
  br label %1177

; <label>:1177                                    ; preds = %1161, %1155
  %1178 = phi float [ %1176, %1161 ], [ %1156, %1155 ]
  %1179 = fcmp fast ult float %1178, 0x3F70101020000000
  br i1 %1179, label %1722, label %1180

; <label>:1180                                    ; preds = %1177
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 16
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1383, label %1185

; <label>:1185                                    ; preds = %1180
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = add i32 %33, 364
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %1190, 0
  %1192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1192, %dx.types.Handle %63, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1194 = extractvalue %dx.types.ResRet.f32 %1193, 0
  %1195 = extractvalue %dx.types.ResRet.f32 %1193, 1
  %1196 = extractvalue %dx.types.ResRet.f32 %1193, 2
  %1197 = extractvalue %dx.types.ResRet.f32 %1193, 3
  %1198 = and i32 %1187, 255
  %1199 = uitofp i32 %1198 to float
  %1200 = lshr i32 %1187, 8
  %1201 = and i32 %1200, 255
  %1202 = uitofp i32 %1201 to float
  %1203 = fmul fast float %1197, %1199
  %1204 = fadd fast float %1203, %1202
  %1205 = fmul fast float %1204, 0x3F70101000000000
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 512
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1218, label %1210

; <label>:1210                                    ; preds = %1185
  %1211 = add i32 %33, 444
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %1213, 0
  %1215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1215, %dx.types.Handle %64, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  br label %1218

; <label>:1218                                    ; preds = %1210, %1185
  %1219 = phi float [ %1217, %1210 ], [ 1.000000e+00, %1185 ]
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = and i32 %1221, 33554432
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1330, label %1224

; <label>:1224                                    ; preds = %1218
  %1225 = add i32 %33, 240
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = and i32 %1227, 65535
  %1229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1228)  ; LegacyF16ToF32(value)
  %1230 = lshr i32 %1227, 16
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = add i32 %33, 244
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 65535
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = lshr i32 %1238, 24
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = and i32 %1238, 255
  %1243 = uitofp i32 %1242 to float
  %1244 = fmul fast float %1243, 0x3F70101020000000
  %1245 = lshr i32 %1238, 8
  %1246 = and i32 %1245, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F70101020000000
  %1249 = lshr i32 %1238, 16
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1251, 0x3F70101020000000
  %1253 = add i32 %33, 236
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = lshr i32 %1255, 24
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1257, 0x3F70101020000000
  %1259 = and i32 %1255, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1260, 0x3F70101020000000
  %1262 = lshr i32 %1255, 8
  %1263 = and i32 %1262, 255
  %1264 = uitofp i32 %1263 to float
  %1265 = fmul fast float %1264, 0x3F70101020000000
  %1266 = lshr i32 %1255, 16
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101020000000
  %1270 = bitcast float %1194 to i32
  %1271 = ashr i32 %1270, 1
  %1272 = sub nsw i32 1597463174, %1271
  %1273 = bitcast i32 %1272 to float
  %1274 = fmul fast float %1194, 5.000000e-01
  %1275 = fmul fast float %1273, %1273
  %1276 = fmul fast float %1275, %1274
  %1277 = fsub fast float 1.500000e+00, %1276
  %1278 = fmul fast float %1273, %1194
  %1279 = fmul fast float %1278, %1277
  %1280 = bitcast float %1195 to i32
  %1281 = ashr i32 %1280, 1
  %1282 = sub nsw i32 1597463174, %1281
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1195, 5.000000e-01
  %1285 = fmul fast float %1283, %1283
  %1286 = fmul fast float %1285, %1284
  %1287 = fsub fast float 1.500000e+00, %1286
  %1288 = fmul fast float %1283, %1195
  %1289 = fmul fast float %1288, %1287
  %1290 = bitcast float %1196 to i32
  %1291 = ashr i32 %1290, 1
  %1292 = sub nsw i32 1597463174, %1291
  %1293 = bitcast i32 %1292 to float
  %1294 = fmul fast float %1196, 5.000000e-01
  %1295 = fmul fast float %1293, %1293
  %1296 = fmul fast float %1295, %1294
  %1297 = fsub fast float 1.500000e+00, %1296
  %1298 = fmul fast float %1293, %1196
  %1299 = fmul fast float %1298, %1297
  %1300 = fsub fast float %1279, %1261
  %1301 = fsub fast float %1289, %1265
  %1302 = fsub fast float %1299, %1269
  %1303 = fmul fast float %1300, %1229
  %1304 = fmul fast float %1301, %1231
  %1305 = fmul fast float %1302, %1236
  %1306 = fadd fast float %1303, %1244
  %1307 = fadd fast float %1304, %1248
  %1308 = fadd fast float %1305, %1252
  %1309 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = fmul fast float %1309, %1309
  %1313 = fmul fast float %1310, %1310
  %1314 = fmul fast float %1311, %1311
  %1315 = fsub fast float %1312, %1194
  %1316 = fsub fast float %1313, %1195
  %1317 = fsub fast float %1314, %1196
  %1318 = fmul fast float %1315, %1219
  %1319 = fmul fast float %1316, %1219
  %1320 = fmul fast float %1317, %1219
  %1321 = fadd fast float %1318, %1194
  %1322 = fadd fast float %1319, %1195
  %1323 = fadd fast float %1320, %1196
  %1324 = fadd fast float %1241, %1205
  %1325 = fsub fast float %1324, %1258
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fsub fast float %1326, %1205
  %1328 = fmul fast float %1327, %1219
  %1329 = fadd fast float %1328, %1205
  br label %1383

; <label>:1330                                    ; preds = %1218
  %1331 = and i32 %1221, 134217728
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1367, label %1333

; <label>:1333                                    ; preds = %1330
  %1334 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %1335 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1337 = fadd fast float %1334, -5.000000e-01
  %1338 = fadd fast float %1335, -5.000000e-01
  %1339 = fadd fast float %1336, -5.000000e-01
  %1340 = fmul fast float %1337, %1219
  %1341 = fmul fast float %1338, %1219
  %1342 = fmul fast float %1339, %1219
  %1343 = fadd fast float %1340, 5.000000e-01
  %1344 = fadd fast float %1341, 5.000000e-01
  %1345 = fadd fast float %1342, 5.000000e-01
  %1346 = call float @dx.op.unary.f32(i32 24, float %1194)  ; Sqrt(value)
  %1347 = call float @dx.op.unary.f32(i32 24, float %1195)  ; Sqrt(value)
  %1348 = call float @dx.op.unary.f32(i32 24, float %1196)  ; Sqrt(value)
  %1349 = fmul fast float %1343, 2.000000e+00
  %1350 = fsub fast float 1.000000e+00, %1349
  %1351 = fmul fast float %1350, %1346
  %1352 = fadd fast float %1351, %1349
  %1353 = fmul fast float %1352, %1346
  %1354 = fmul fast float %1344, 2.000000e+00
  %1355 = fsub fast float 1.000000e+00, %1354
  %1356 = fmul fast float %1355, %1347
  %1357 = fadd fast float %1356, %1354
  %1358 = fmul fast float %1357, %1347
  %1359 = fmul fast float %1345, 2.000000e+00
  %1360 = fsub fast float 1.000000e+00, %1359
  %1361 = fmul fast float %1360, %1348
  %1362 = fadd fast float %1361, %1359
  %1363 = fmul fast float %1362, %1348
  %1364 = fmul fast float %1353, %1353
  %1365 = fmul fast float %1358, %1358
  %1366 = fmul fast float %1363, %1363
  br label %1383

; <label>:1367                                    ; preds = %1330
  %1368 = fmul fast float %232, %232
  %1369 = fmul fast float %236, %236
  %1370 = fmul fast float %240, %240
  %1371 = fadd fast float %1368, -1.000000e+00
  %1372 = fadd fast float %1369, -1.000000e+00
  %1373 = fadd fast float %1370, -1.000000e+00
  %1374 = fmul fast float %1219, %1371
  %1375 = fmul fast float %1219, %1372
  %1376 = fmul fast float %1219, %1373
  %1377 = fadd fast float %1374, 1.000000e+00
  %1378 = fadd fast float %1375, 1.000000e+00
  %1379 = fadd fast float %1376, 1.000000e+00
  %1380 = fmul fast float %1377, %1194
  %1381 = fmul fast float %1378, %1195
  %1382 = fmul fast float %1379, %1196
  br label %1383

; <label>:1383                                    ; preds = %1367, %1333, %1224, %1180
  %1384 = phi float [ %1329, %1224 ], [ %1205, %1333 ], [ %1205, %1367 ], [ 0x3FA23C0BE0000000, %1180 ]
  %1385 = phi float [ %1321, %1224 ], [ %1364, %1333 ], [ %1380, %1367 ], [ 1.000000e+00, %1180 ]
  %1386 = phi float [ %1322, %1224 ], [ %1365, %1333 ], [ %1381, %1367 ], [ 1.000000e+00, %1180 ]
  %1387 = phi float [ %1323, %1224 ], [ %1366, %1333 ], [ %1382, %1367 ], [ 1.000000e+00, %1180 ]
  %1388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.i32 %1388, 1
  %1390 = and i32 %1389, 1
  %1391 = icmp ne i32 %1390, 0
  %1392 = add i32 %33, 356
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 32
  %1396 = icmp ne i32 %1395, 0
  %1397 = and i1 %1391, %1396
  %1398 = select i1 %1397, float 1.000000e+00, float %1385
  %1399 = select i1 %1397, float 0x3FD3333340000000, float %1386
  %1400 = select i1 %1397, float 0x3FD3333340000000, float %1387
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = and i32 %1402, 32
  %1404 = icmp eq i32 %1403, 0
  br i1 %1404, label %1477, label %1405

; <label>:1405                                    ; preds = %1383
  %1406 = add i32 %33, 108
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1406, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = add i32 %33, 380
  %1410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1409, i32 undef)  ; BufferLoad(srv,index,wot)
  %1411 = extractvalue %dx.types.ResRet.i32 %1410, 0
  %1412 = add i32 %1411, 0
  %1413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1413, %dx.types.Handle %63, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1415 = extractvalue %dx.types.ResRet.f32 %1414, 0
  %1416 = extractvalue %dx.types.ResRet.f32 %1414, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1414, 2
  %1418 = extractvalue %dx.types.ResRet.f32 %1414, 3
  %1419 = and i32 %1408, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = lshr i32 %1408, 8
  %1422 = and i32 %1421, 255
  %1423 = uitofp i32 %1422 to float
  %1424 = lshr i32 %1408, 16
  %1425 = and i32 %1424, 255
  %1426 = uitofp i32 %1425 to float
  %1427 = fmul fast float %1426, 0x3F70101000000000
  %1428 = fmul fast float %1415, %1420
  %1429 = fadd fast float %1428, %1423
  %1430 = fmul fast float %1429, 0x3F70101000000000
  %1431 = fadd fast float %1416, -5.000000e-01
  %1432 = fadd fast float %1418, -5.000000e-01
  %1433 = fmul fast float %1431, %1427
  %1434 = fmul fast float %1432, %1427
  %1435 = fadd fast float %1433, 5.000000e-01
  %1436 = fadd fast float %1434, 5.000000e-01
  %1437 = fmul fast float %1435, 2.000000e+00
  %1438 = fadd fast float %1437, -1.000000e+00
  %1439 = fmul fast float %1436, 2.000000e+00
  %1440 = fadd fast float %1439, -1.000000e+00
  %1441 = fadd fast float %1438, %1440
  %1442 = fmul fast float %1441, 5.000000e-01
  %1443 = fsub fast float %1438, %1440
  %1444 = fmul fast float %1443, 5.000000e-01
  %1445 = call float @dx.op.unary.f32(i32 6, float %1442)  ; FAbs(value)
  %1446 = fsub fast float 1.000000e+00, %1445
  %1447 = call float @dx.op.unary.f32(i32 6, float %1444)  ; FAbs(value)
  %1448 = fsub fast float %1446, %1447
  %1449 = call float @dx.op.dot3.f32(i32 55, float %1442, float %1444, float %1448, float %1442, float %1444, float %1448)  ; Dot3(ax,ay,az,bx,by,bz)
  %1450 = call float @dx.op.unary.f32(i32 25, float %1449)  ; Rsqrt(value)
  %1451 = fmul fast float %1442, %1450
  %1452 = fmul fast float %1444, %1450
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 67108864
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %1473, label %1457

; <label>:1457                                    ; preds = %1405
  %1458 = add i32 %33, 296
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 65535
  %1462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1461)  ; LegacyF16ToF32(value)
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 65535
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = lshr i32 %1460, 16
  %1468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1467)  ; LegacyF16ToF32(value)
  %1469 = fsub fast float %1430, %1468
  %1470 = fmul fast float %1469, %1462
  %1471 = fadd fast float %1470, %1466
  %1472 = call float @dx.op.unary.f32(i32 7, float %1471)  ; Saturate(value)
  br label %1473

; <label>:1473                                    ; preds = %1457, %1405
  %1474 = phi float [ %1472, %1457 ], [ %1430, %1405 ]
  %1475 = call float @dx.op.dot2.f32(i32 54, float %1451, float %1452, float %894, float %895)  ; Dot2(ax,ay,bx,by)
  %1476 = call float @dx.op.dot2.f32(i32 54, float %1451, float %1452, float %896, float %897)  ; Dot2(ax,ay,bx,by)
  br label %1477

; <label>:1477                                    ; preds = %1473, %1383
  %1478 = phi float [ %1474, %1473 ], [ 0x3FD6666660000000, %1383 ]
  %1479 = phi float [ %1475, %1473 ], [ 0.000000e+00, %1383 ]
  %1480 = phi float [ %1476, %1473 ], [ 0.000000e+00, %1383 ]
  %1481 = phi float [ %1417, %1473 ], [ 1.000000e+00, %1383 ]
  %1482 = add i32 %33, 176
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = lshr i32 %1484, 22
  %1486 = shl nuw nsw i32 %1485, 5
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 64
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1525, label %1492

; <label>:1492                                    ; preds = %1477
  %1493 = add i32 %33, 396
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %1495, 0
  %1497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 131072
  %1501 = icmp eq i32 %1500, 0
  %1502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1497, %dx.types.Handle %63, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.ResRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.ResRet.f32 %1502, 2
  %1506 = fmul fast float %1503, %220
  %1507 = fmul fast float %1504, %223
  %1508 = fmul fast float %1505, %226
  br i1 %1501, label %1515, label %1509

; <label>:1509                                    ; preds = %1492
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 0
  %1512 = fmul fast float %1511, %1506
  %1513 = fmul fast float %1511, %1507
  %1514 = fmul fast float %1511, %1508
  br label %1515

; <label>:1515                                    ; preds = %1509, %1492
  %1516 = phi float [ %1512, %1509 ], [ %1506, %1492 ]
  %1517 = phi float [ %1513, %1509 ], [ %1507, %1492 ]
  %1518 = phi float [ %1514, %1509 ], [ %1508, %1492 ]
  %1519 = fmul fast float %1516, %1487
  %1520 = select i1 %172, float %1519, float %1516
  %1521 = call float @dx.op.dot3.f32(i32 55, float %1520, float %1517, float %1518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1522 = select i1 %172, float 0.000000e+00, float %1516
  %1523 = select i1 %172, float %1521, float %1517
  %1524 = select i1 %172, float 0.000000e+00, float %1518
  br label %1525

; <label>:1525                                    ; preds = %1515, %1477
  %1526 = phi float [ %1522, %1515 ], [ 0.000000e+00, %1477 ]
  %1527 = phi float [ %1523, %1515 ], [ 0.000000e+00, %1477 ]
  %1528 = phi float [ %1524, %1515 ], [ 0.000000e+00, %1477 ]
  %1529 = add i32 %33, 112
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 255
  %1533 = uitofp i32 %1532 to float
  %1534 = lshr i32 %1531, 8
  %1535 = and i32 %1534, 255
  %1536 = uitofp i32 %1535 to float
  %1537 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1538 = fmul fast float %1536, %1537
  %1539 = fadd fast float %1538, %1533
  %1540 = fmul fast float %1539, 0x3F70101020000000
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  br i1 %882, label %1542, label %1550

; <label>:1542                                    ; preds = %1525
  %1543 = fsub fast float 1.000000e+00, %1178
  %1544 = fmul fast float %1543, %870
  %1545 = fmul fast float %1543, %871
  %1546 = fmul fast float %1543, %872
  %1547 = fmul fast float %1543, %873
  %1548 = fmul fast float %1543, %874
  %1549 = fmul fast float %1543, %875
  br label %1550

; <label>:1550                                    ; preds = %1542, %1525
  %1551 = phi float [ %1544, %1542 ], [ %870, %1525 ]
  %1552 = phi float [ %1545, %1542 ], [ %871, %1525 ]
  %1553 = phi float [ %1546, %1542 ], [ %872, %1525 ]
  %1554 = phi float [ %1547, %1542 ], [ %873, %1525 ]
  %1555 = phi float [ %1548, %1542 ], [ %874, %1525 ]
  %1556 = phi float [ %1549, %1542 ], [ %875, %1525 ]
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 3
  %1560 = icmp eq i32 %1559, 3
  br i1 %1560, label %1639, label %1561

; <label>:1561                                    ; preds = %1550
  %1562 = and i32 %1558, 16
  %1563 = icmp ne i32 %1562, 0
  %1564 = select i1 %1563, float %1178, float 0.000000e+00
  %1565 = icmp eq i32 %1559, 0
  br i1 %1565, label %1566, label %1594

; <label>:1566                                    ; preds = %1561
  %1567 = and i32 %1558, 64
  %1568 = icmp ne i32 %1567, 0
  %1569 = select i1 %1568, float %1178, float 0.000000e+00
  %1570 = fsub fast float %1398, %1551
  %1571 = fsub fast float %1399, %1552
  %1572 = fsub fast float %1400, %1553
  %1573 = fmul fast float %1564, %1570
  %1574 = fmul fast float %1564, %1571
  %1575 = fmul fast float %1564, %1572
  %1576 = fadd fast float %1573, %1551
  %1577 = fadd fast float %1574, %1552
  %1578 = fadd fast float %1575, %1553
  %1579 = fsub fast float %1384, %876
  %1580 = fmul fast float %1564, %1579
  %1581 = fadd fast float %1580, %876
  %1582 = fsub fast float %1526, %1554
  %1583 = fsub fast float %1527, %1555
  %1584 = fsub fast float %1528, %1556
  %1585 = fmul fast float %1569, %1582
  %1586 = fmul fast float %1569, %1583
  %1587 = fmul fast float %1569, %1584
  %1588 = fadd fast float %1585, %1554
  %1589 = fadd fast float %1586, %1555
  %1590 = fadd fast float %1587, %1556
  %1591 = fsub fast float %1541, %880
  %1592 = fmul fast float %1564, %1591
  %1593 = fadd fast float %1592, %880
  br label %1639

; <label>:1594                                    ; preds = %1561
  %1595 = icmp eq i32 %1559, 1
  br i1 %1595, label %1596, label %1609

; <label>:1596                                    ; preds = %1594
  %1597 = fadd fast float %1398, -1.000000e+00
  %1598 = fadd fast float %1399, -1.000000e+00
  %1599 = fadd fast float %1400, -1.000000e+00
  %1600 = fmul fast float %1564, %1597
  %1601 = fmul fast float %1564, %1598
  %1602 = fmul fast float %1564, %1599
  %1603 = fadd fast float %1600, 1.000000e+00
  %1604 = fadd fast float %1601, 1.000000e+00
  %1605 = fadd fast float %1602, 1.000000e+00
  %1606 = fmul fast float %1603, %1551
  %1607 = fmul fast float %1604, %1552
  %1608 = fmul fast float %1605, %1553
  br label %1639

; <label>:1609                                    ; preds = %1594
  %1610 = icmp eq i32 %1559, 2
  br i1 %1610, label %1611, label %1639

; <label>:1611                                    ; preds = %1609
  %1612 = call float @dx.op.unary.f32(i32 24, float %1398)  ; Sqrt(value)
  %1613 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1615 = fadd fast float %1612, -5.000000e-01
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fmul fast float %1615, %1564
  %1619 = fmul fast float %1616, %1564
  %1620 = fmul fast float %1617, %1564
  %1621 = fadd fast float %1618, 5.000000e-01
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = fmul fast float %1621, 2.000000e+00
  %1625 = fsub fast float 1.000000e+00, %1624
  %1626 = fmul fast float %1625, %1551
  %1627 = fadd fast float %1626, %1624
  %1628 = fmul fast float %1627, %1551
  %1629 = fmul fast float %1622, 2.000000e+00
  %1630 = fsub fast float 1.000000e+00, %1629
  %1631 = fmul fast float %1630, %1552
  %1632 = fadd fast float %1631, %1629
  %1633 = fmul fast float %1632, %1552
  %1634 = fmul fast float %1623, 2.000000e+00
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1635, %1553
  %1637 = fadd fast float %1636, %1634
  %1638 = fmul fast float %1637, %1553
  br label %1639

; <label>:1639                                    ; preds = %1611, %1609, %1596, %1566, %1550
  %1640 = phi float [ %1551, %1550 ], [ %1628, %1611 ], [ %1551, %1609 ], [ %1606, %1596 ], [ %1576, %1566 ]
  %1641 = phi float [ %1552, %1550 ], [ %1633, %1611 ], [ %1552, %1609 ], [ %1607, %1596 ], [ %1577, %1566 ]
  %1642 = phi float [ %1553, %1550 ], [ %1638, %1611 ], [ %1553, %1609 ], [ %1608, %1596 ], [ %1578, %1566 ]
  %1643 = phi float [ %1554, %1550 ], [ %1554, %1611 ], [ %1554, %1609 ], [ %1554, %1596 ], [ %1588, %1566 ]
  %1644 = phi float [ %1555, %1550 ], [ %1555, %1611 ], [ %1555, %1609 ], [ %1555, %1596 ], [ %1589, %1566 ]
  %1645 = phi float [ %1556, %1550 ], [ %1556, %1611 ], [ %1556, %1609 ], [ %1556, %1596 ], [ %1590, %1566 ]
  %1646 = phi float [ %876, %1550 ], [ %876, %1611 ], [ %876, %1609 ], [ %876, %1596 ], [ %1581, %1566 ]
  %1647 = phi float [ %880, %1550 ], [ %880, %1611 ], [ %880, %1609 ], [ %880, %1596 ], [ %1593, %1566 ]
  %1648 = and i32 %1558, 12
  %1649 = icmp eq i32 %1648, 12
  br i1 %1649, label %1722, label %1650

; <label>:1650                                    ; preds = %1639
  %1651 = and i32 %1558, 2097184
  %1652 = icmp eq i32 %1651, 2097184
  %1653 = select i1 %1652, float %1178, float 0.000000e+00
  %1654 = and i32 %1558, 4194336
  %1655 = icmp eq i32 %1654, 4194336
  %1656 = select i1 %1655, float %1178, float 0.000000e+00
  %1657 = and i32 %1558, 8388640
  %1658 = icmp eq i32 %1657, 8388640
  %1659 = select i1 %1658, float %1178, float 0.000000e+00
  %1660 = icmp eq i32 %1648, 0
  br i1 %1660, label %1661, label %1674

; <label>:1661                                    ; preds = %1650
  %1662 = fsub fast float %1479, %868
  %1663 = fsub fast float %1480, %869
  %1664 = fmul fast float %1653, %1662
  %1665 = fmul fast float %1653, %1663
  %1666 = fadd fast float %1664, %868
  %1667 = fadd fast float %1665, %869
  %1668 = fsub fast float %1481, %879
  %1669 = fmul fast float %1656, %1668
  %1670 = fadd fast float %1669, %879
  %1671 = fsub fast float %1478, %878
  %1672 = fmul fast float %1659, %1671
  %1673 = fadd fast float %1672, %878
  br label %1722

; <label>:1674                                    ; preds = %1650
  %1675 = icmp eq i32 %1648, 4
  br i1 %1675, label %1676, label %1708

; <label>:1676                                    ; preds = %1674
  %1677 = fmul fast float %1653, %1479
  %1678 = fmul fast float %1653, %1480
  %1679 = fadd fast float %1677, %868
  %1680 = fadd fast float %1678, %869
  %1681 = call float @dx.op.binary.f32(i32 36, float %879, float %1481)  ; FMin(a,b)
  %1682 = fsub fast float %1681, %879
  %1683 = fmul fast float %1682, %1656
  %1684 = fadd fast float %1683, %879
  %1685 = fadd fast float %1478, %878
  %1686 = fmul fast float %1685, 0x3FF337FAE0000000
  %1687 = fmul fast float %878, %878
  %1688 = fmul fast float %1478, %1478
  %1689 = fadd fast float %1688, %1687
  %1690 = fmul fast float %1689, 0x3FE5152B00000000
  %1691 = fmul fast float %878, 0xBFCC1F85E0000000
  %1692 = fmul fast float %1691, %1478
  %1693 = fadd fast float %1692, 0xBFE1363700000000
  %1694 = fadd fast float %1693, %1686
  %1695 = fsub fast float %1694, %1690
  %1696 = fmul fast float %1685, 0x3FBA6F0D00000000
  %1697 = fmul fast float %1689, 0x3FD0432880000000
  %1698 = fmul fast float %878, 0xBFEF110800000000
  %1699 = fmul fast float %1698, %1478
  %1700 = fadd fast float %1699, 1.000000e+00
  %1701 = fsub fast float %1700, %1696
  %1702 = fadd fast float %1701, %1697
  %1703 = fdiv fast float %1695, %1702
  %1704 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1705 = fsub fast float %1704, %878
  %1706 = fmul fast float %1705, %1659
  %1707 = fadd fast float %1706, %878
  br label %1722

; <label>:1708                                    ; preds = %1674
  %1709 = icmp eq i32 %1648, 8
  br i1 %1709, label %1710, label %1722

; <label>:1710                                    ; preds = %1708
  %1711 = fmul fast float %1653, %1479
  %1712 = fmul fast float %1653, %1480
  %1713 = fadd fast float %1711, %868
  %1714 = fadd fast float %1712, %869
  %1715 = call float @dx.op.binary.f32(i32 36, float %879, float %1481)  ; FMin(a,b)
  %1716 = fsub fast float %1715, %879
  %1717 = fmul fast float %1716, %1656
  %1718 = fadd fast float %1717, %879
  %1719 = fsub fast float %1478, %878
  %1720 = fmul fast float %1659, %1719
  %1721 = fadd fast float %1720, %878
  br label %1722

; <label>:1722                                    ; preds = %1710, %1708, %1676, %1661, %1639, %1177, %881, %867
  %1723 = phi float [ %868, %1639 ], [ %868, %1177 ], [ %868, %867 ], [ %1713, %1710 ], [ %868, %1708 ], [ %1679, %1676 ], [ %1666, %1661 ], [ %868, %881 ]
  %1724 = phi float [ %869, %1639 ], [ %869, %1177 ], [ %869, %867 ], [ %1714, %1710 ], [ %869, %1708 ], [ %1680, %1676 ], [ %1667, %1661 ], [ %869, %881 ]
  %1725 = phi float [ %1640, %1639 ], [ %870, %1177 ], [ %870, %867 ], [ %1640, %1710 ], [ %1640, %1708 ], [ %1640, %1676 ], [ %1640, %1661 ], [ %870, %881 ]
  %1726 = phi float [ %1641, %1639 ], [ %871, %1177 ], [ %871, %867 ], [ %1641, %1710 ], [ %1641, %1708 ], [ %1641, %1676 ], [ %1641, %1661 ], [ %871, %881 ]
  %1727 = phi float [ %1642, %1639 ], [ %872, %1177 ], [ %872, %867 ], [ %1642, %1710 ], [ %1642, %1708 ], [ %1642, %1676 ], [ %1642, %1661 ], [ %872, %881 ]
  %1728 = phi float [ %1643, %1639 ], [ %873, %1177 ], [ %873, %867 ], [ %1643, %1710 ], [ %1643, %1708 ], [ %1643, %1676 ], [ %1643, %1661 ], [ %873, %881 ]
  %1729 = phi float [ %1644, %1639 ], [ %874, %1177 ], [ %874, %867 ], [ %1644, %1710 ], [ %1644, %1708 ], [ %1644, %1676 ], [ %1644, %1661 ], [ %874, %881 ]
  %1730 = phi float [ %1645, %1639 ], [ %875, %1177 ], [ %875, %867 ], [ %1645, %1710 ], [ %1645, %1708 ], [ %1645, %1676 ], [ %1645, %1661 ], [ %875, %881 ]
  %1731 = phi float [ %1646, %1639 ], [ %876, %1177 ], [ %876, %867 ], [ %1646, %1710 ], [ %1646, %1708 ], [ %1646, %1676 ], [ %1646, %1661 ], [ %876, %881 ]
  %1732 = phi float [ %878, %1639 ], [ %878, %1177 ], [ %878, %867 ], [ %1721, %1710 ], [ %878, %1708 ], [ %1707, %1676 ], [ %1673, %1661 ], [ %878, %881 ]
  %1733 = phi float [ %879, %1639 ], [ %879, %1177 ], [ %879, %867 ], [ %1718, %1710 ], [ %879, %1708 ], [ %1684, %1676 ], [ %1670, %1661 ], [ %879, %881 ]
  %1734 = phi float [ %1647, %1639 ], [ %880, %1177 ], [ %880, %867 ], [ %1647, %1710 ], [ %1647, %1708 ], [ %1647, %1676 ], [ %1647, %1661 ], [ %880, %881 ]
  br i1 %347, label %2576, label %1735

; <label>:1735                                    ; preds = %1722
  %1736 = icmp ult i32 %400, 3
  %1737 = add i32 %33, 56
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = add i32 %33, 60
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1740, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = or i32 %1742, %1739
  %1744 = icmp eq i32 %1743, 0
  br i1 %1744, label %2576, label %1745

; <label>:1745                                    ; preds = %1735
  %1746 = and i32 %1739, 262144
  %1747 = icmp ne i32 %1746, 0
  %1748 = select i1 %1747, float %35, float 1.000000e+00
  %1749 = select i1 %1747, float %36, float 0.000000e+00
  %1750 = select i1 %1747, float %37, float 0.000000e+00
  %1751 = select i1 %1747, float %38, float 1.000000e+00
  %1752 = select i1 %1747, float %39, float %55
  %1753 = select i1 %1747, float %40, float %56
  %1754 = add i32 %33, 316
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = lshr i32 %1756, 16
  %1758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1757)  ; LegacyF16ToF32(value)
  %1759 = fmul fast float %1758, 0x3F50624DE0000000
  %1760 = add i32 %33, 120
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = lshr i32 %1762, 16
  %1764 = and i32 %1763, 255
  %1765 = lshr i32 %1762, 24
  %1766 = add i32 %33, 324
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = and i32 %1768, 65535
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = lshr i32 %1768, 16
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = add i32 %33, 64
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = lshr i32 %1775, 22
  %1777 = shl nuw nsw i32 %1776, 5
  %1778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1777)  ; LegacyF16ToF32(value)
  %1779 = shl i32 %1775, 4
  %1780 = and i32 %1779, 32752
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = lshr i32 %1775, 7
  %1783 = and i32 %1782, 32752
  %1784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1783)  ; LegacyF16ToF32(value)
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 3
  %1787 = fmul fast float %1786, 1.000000e+03
  %1788 = fmul fast float %297, %1787
  %1789 = call float @dx.op.unary.f32(i32 22, float %1788)  ; Frc(value)
  %1790 = fadd fast float %1789, %287
  %1791 = fmul fast float %298, %1787
  %1792 = call float @dx.op.unary.f32(i32 22, float %1791)  ; Frc(value)
  %1793 = fadd fast float %1792, %289
  %1794 = fmul fast float %1759, %1787
  %1795 = call float @dx.op.unary.f32(i32 22, float %1794)  ; Frc(value)
  %1796 = fmul fast float %1795, 0x401921FB60000000
  %1797 = fadd fast float %1796, %1778
  %1798 = call float @dx.op.unary.f32(i32 13, float %1797)  ; Sin(value)
  %1799 = call float @dx.op.unary.f32(i32 12, float %1797)  ; Cos(value)
  %1800 = fsub fast float -0.000000e+00, %1798
  %1801 = fadd fast float %1752, -5.000000e-01
  %1802 = fadd fast float %1753, -5.000000e-01
  %1803 = fmul fast float %1770, %1801
  %1804 = fmul fast float %1772, %1802
  %1805 = fadd fast float %1803, 5.000000e-01
  %1806 = fadd fast float %1804, 5.000000e-01
  %1807 = fmul fast float %1781, %1805
  %1808 = fmul fast float %1784, %1806
  %1809 = fmul fast float %1799, %1807
  %1810 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1808, float %1809)  ; FMad(a,b,c)
  %1811 = fmul fast float %1798, %1807
  %1812 = call float @dx.op.tertiary.f32(i32 46, float %1799, float %1808, float %1811)  ; FMad(a,b,c)
  %1813 = fadd fast float %1790, %1810
  %1814 = fadd fast float %1793, %1812
  %1815 = icmp ugt i32 %1764, 1
  %1816 = icmp ugt i32 %1762, 33554431
  %1817 = or i1 %1816, %1815
  br i1 %1817, label %1818, label %1843

; <label>:1818                                    ; preds = %1745
  %1819 = add i32 %33, 260
  %1820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1819, i32 undef)  ; BufferLoad(srv,index,wot)
  %1821 = extractvalue %dx.types.ResRet.i32 %1820, 0
  %1822 = lshr i32 %1821, 16
  %1823 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1822)  ; LegacyF16ToF32(value)
  %1824 = fmul fast float %1786, %1823
  %1825 = call float @dx.op.unary.f32(i32 22, float %1824)  ; Frc(value)
  %1826 = mul nuw nsw i32 %1764, %1765
  %1827 = uitofp i32 %1826 to float
  %1828 = fmul fast float %1825, %1827
  %1829 = call float @dx.op.unary.f32(i32 27, float %1828)  ; Round_ni(value)
  %1830 = fptoui float %1829 to i32
  %1831 = urem i32 %1830, %1764
  %1832 = udiv i32 %1830, %1765
  %1833 = call float @dx.op.unary.f32(i32 22, float %1813)  ; Frc(value)
  %1834 = call float @dx.op.unary.f32(i32 22, float %1814)  ; Frc(value)
  %1835 = uitofp i32 %1831 to float
  %1836 = uitofp i32 %1832 to float
  %1837 = fadd fast float %1833, %1835
  %1838 = fadd fast float %1834, %1836
  %1839 = uitofp i32 %1764 to float
  %1840 = uitofp i32 %1765 to float
  %1841 = fdiv fast float %1837, %1839
  %1842 = fdiv fast float %1838, %1840
  br label %1843

; <label>:1843                                    ; preds = %1818, %1745
  %1844 = phi float [ %1841, %1818 ], [ %1813, %1745 ]
  %1845 = phi float [ %1842, %1818 ], [ %1814, %1745 ]
  %1846 = and i32 %1739, 16777216
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1957, label %1848

; <label>:1848                                    ; preds = %1843
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.CBufRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.CBufRet.f32 %1849, 2
  %1853 = fadd fast float %1850, %130
  %1854 = fadd fast float %1851, %131
  %1855 = fadd fast float %1852, %132
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1858 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1859 = icmp eq i32 %34, 65535
  br i1 %1859, label %1954, label %1860

; <label>:1860                                    ; preds = %1848
  %1861 = lshr i32 %34, 1
  %1862 = shl i32 %1861, 2
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = and i32 %34, 1
  %1866 = icmp ne i32 %1865, 0
  %1867 = lshr i32 %1864, 16
  %1868 = and i32 %1864, 65535
  %1869 = select i1 %1866, i32 %1867, i32 %1868
  %1870 = icmp eq i32 %1869, 65535
  br i1 %1870, label %1950, label %1871

; <label>:1871                                    ; preds = %1860
  %1872 = mul nuw nsw i32 %1869, 40
  %1873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = add nuw nsw i32 %1872, 12
  %1878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = add nuw nsw i32 %1872, 24
  %1883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.ResRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.ResRet.f32 %1883, 2
  %1887 = add nuw nsw i32 %1872, 36
  %1888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = fsub fast float %1853, %1874
  %1891 = fsub fast float %1854, %1875
  %1892 = fsub fast float %1855, %1876
  %1893 = fmul fast float %1889, %1890
  %1894 = fmul fast float %1889, %1891
  %1895 = fmul fast float %1889, %1892
  %1896 = call float @dx.op.unary.f32(i32 27, float %1893)  ; Round_ni(value)
  %1897 = call float @dx.op.unary.f32(i32 27, float %1894)  ; Round_ni(value)
  %1898 = call float @dx.op.unary.f32(i32 27, float %1895)  ; Round_ni(value)
  %1899 = fadd fast float %1896, 5.000000e-01
  %1900 = fadd fast float %1897, 5.000000e-01
  %1901 = fadd fast float %1898, 5.000000e-01
  %1902 = fmul fast float %1899, %1879
  %1903 = fmul fast float %1900, %1880
  %1904 = fmul fast float %1901, %1881
  %1905 = shl i32 %34, 2
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = add i32 %1907, 0
  %1909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1908, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1910 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1911 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1912 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1909, %dx.types.Handle %30, float %1910, float %1911, float %1912, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  %1915 = extractvalue %dx.types.ResRet.f32 %1913, 1
  %1916 = extractvalue %dx.types.ResRet.f32 %1913, 2
  %1917 = fmul fast float %1914, 1.023000e+03
  %1918 = fmul fast float %1915, 1.023000e+03
  %1919 = fmul fast float %1916, 1.023000e+03
  %1920 = fadd fast float %1917, 5.000000e-01
  %1921 = fadd fast float %1918, 5.000000e-01
  %1922 = fadd fast float %1919, 5.000000e-01
  %1923 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = fsub fast float %1893, %1896
  %1927 = fsub fast float %1894, %1897
  %1928 = fsub fast float %1895, %1898
  %1929 = fmul fast float %1926, 7.500000e-01
  %1930 = fmul fast float %1927, 7.500000e-01
  %1931 = fmul fast float %1928, 7.500000e-01
  %1932 = fadd fast float %1896, 1.250000e-01
  %1933 = fadd fast float %1932, %1929
  %1934 = fadd fast float %1933, %1923
  %1935 = fadd fast float %1897, 1.250000e-01
  %1936 = fadd fast float %1935, %1930
  %1937 = fadd fast float %1936, %1924
  %1938 = fadd fast float %1898, 1.250000e-01
  %1939 = fadd fast float %1938, %1931
  %1940 = fadd fast float %1939, %1925
  %1941 = fmul fast float %1934, %1884
  %1942 = fmul fast float %1937, %1885
  %1943 = fmul fast float %1940, %1886
  %1944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.i32 %1944, 0
  %1946 = add i32 %1945, 0
  %1947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1946, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1947, %dx.types.Handle %28, float %1941, float %1942, float %1943, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1949 = extractvalue %dx.types.ResRet.f32 %1948, 0
  br label %1950

; <label>:1950                                    ; preds = %1871, %1860
  %1951 = phi float [ %1949, %1871 ], [ -1.000000e+00, %1860 ]
  %1952 = fadd fast float %1951, %1858
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  br label %1954

; <label>:1954                                    ; preds = %1950, %1848
  %1955 = phi float [ %1953, %1950 ], [ %1858, %1848 ]
  %1956 = fmul fast float %1955, %396
  br label %1957

; <label>:1957                                    ; preds = %1954, %1843
  %1958 = phi float [ %1956, %1954 ], [ %396, %1843 ]
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = and i32 %1960, 256
  %1962 = icmp eq i32 %1961, 0
  br i1 %1962, label %2009, label %1963

; <label>:1963                                    ; preds = %1957
  %1964 = add i32 %33, 432
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = add i32 %1966, 0
  %1968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1967, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1969 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1968, %dx.types.Handle %64, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = add i32 %33, 132
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = shl i32 %1973, 4
  %1975 = and i32 %1974, 32752
  %1976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1975)  ; LegacyF16ToF32(value)
  %1977 = lshr i32 %1973, 7
  %1978 = and i32 %1977, 32752
  %1979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1978)  ; LegacyF16ToF32(value)
  %1980 = fsub fast float 1.000000e+00, %1958
  %1981 = call float @dx.op.binary.f32(i32 35, float %1980, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1982 = bitcast float %1958 to i32
  %1983 = sitofp i32 %1982 to float
  %1984 = fadd fast float %1983, 0xC1CFBF8940000000
  %1985 = fmul fast float %1979, %1984
  %1986 = fadd fast float %1985, 0x41CFBF8940000000
  %1987 = fptosi float %1986 to i32
  %1988 = bitcast i32 %1987 to float
  %1989 = bitcast float %1981 to i32
  %1990 = sitofp i32 %1989 to float
  %1991 = fadd fast float %1990, 0xC1CFBF8940000000
  %1992 = fmul fast float %1991, %1979
  %1993 = fadd fast float %1992, 0x41CFBF8940000000
  %1994 = fptosi float %1993 to i32
  %1995 = bitcast i32 %1994 to float
  %1996 = fmul fast float %1988, %1976
  %1997 = fmul fast float %1995, %1976
  %1998 = fsub fast float %1981, %1996
  %1999 = fadd fast float %1997, %1981
  %2000 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  %2001 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2002 = fsub fast float %1970, %2000
  %2003 = fsub fast float %2001, %2000
  %2004 = bitcast float %2003 to i32
  %2005 = sub nsw i32 2129859010, %2004
  %2006 = bitcast i32 %2005 to float
  %2007 = fmul fast float %2006, %2002
  %2008 = call float @dx.op.unary.f32(i32 7, float %2007)  ; Saturate(value)
  br label %2009

; <label>:2009                                    ; preds = %1963, %1957
  %2010 = phi float [ %2008, %1963 ], [ %1958, %1957 ]
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = and i32 %2012, 128
  %2014 = icmp eq i32 %2013, 0
  br i1 %2014, label %2031, label %2015

; <label>:2015                                    ; preds = %2009
  %2016 = add i32 %33, 416
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = add i32 %2018, 0
  %2020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2021 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2020, %dx.types.Handle %64, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 524288
  %2026 = icmp ne i32 %2025, 0
  %2027 = fcmp fast ogt float %2022, 0x3FE0101020000000
  %2028 = select i1 %2027, float 1.000000e+00, float 0.000000e+00
  %2029 = select i1 %2026, float %2028, float %2022
  %2030 = fmul fast float %2029, %2010
  br label %2031

; <label>:2031                                    ; preds = %2015, %2009
  %2032 = phi float [ %2030, %2015 ], [ %2010, %2009 ]
  %2033 = fcmp fast ult float %2032, 0x3F70101020000000
  br i1 %2033, label %2576, label %2034

; <label>:2034                                    ; preds = %2031
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 16
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2237, label %2039

; <label>:2039                                    ; preds = %2034
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = add i32 %33, 368
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = add i32 %2044, 0
  %2046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2046, %dx.types.Handle %63, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2048 = extractvalue %dx.types.ResRet.f32 %2047, 0
  %2049 = extractvalue %dx.types.ResRet.f32 %2047, 1
  %2050 = extractvalue %dx.types.ResRet.f32 %2047, 2
  %2051 = extractvalue %dx.types.ResRet.f32 %2047, 3
  %2052 = and i32 %2041, 255
  %2053 = uitofp i32 %2052 to float
  %2054 = lshr i32 %2041, 8
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2051, %2053
  %2058 = fadd fast float %2057, %2056
  %2059 = fmul fast float %2058, 0x3F70101000000000
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 512
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2072, label %2064

; <label>:2064                                    ; preds = %2039
  %2065 = add i32 %33, 448
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = add i32 %2067, 0
  %2069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2070 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2069, %dx.types.Handle %64, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  br label %2072

; <label>:2072                                    ; preds = %2064, %2039
  %2073 = phi float [ %2071, %2064 ], [ 1.000000e+00, %2039 ]
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = and i32 %2075, 33554432
  %2077 = icmp eq i32 %2076, 0
  br i1 %2077, label %2184, label %2078

; <label>:2078                                    ; preds = %2072
  %2079 = add i32 %33, 256
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = and i32 %2081, 65535
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = lshr i32 %2081, 16
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = add i32 %33, 260
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 65535
  %2090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2089)  ; LegacyF16ToF32(value)
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = lshr i32 %2092, 24
  %2094 = uitofp i32 %2093 to float
  %2095 = fmul fast float %2094, 0x3F70101020000000
  %2096 = and i32 %2092, 255
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101020000000
  %2099 = lshr i32 %2092, 8
  %2100 = and i32 %2099, 255
  %2101 = uitofp i32 %2100 to float
  %2102 = fmul fast float %2101, 0x3F70101020000000
  %2103 = lshr i32 %2092, 16
  %2104 = and i32 %2103, 255
  %2105 = uitofp i32 %2104 to float
  %2106 = fmul fast float %2105, 0x3F70101020000000
  %2107 = add i32 %33, 252
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = lshr i32 %2109, 24
  %2111 = uitofp i32 %2110 to float
  %2112 = fmul fast float %2111, 0x3F70101020000000
  %2113 = and i32 %2109, 255
  %2114 = uitofp i32 %2113 to float
  %2115 = fmul fast float %2114, 0x3F70101020000000
  %2116 = lshr i32 %2109, 8
  %2117 = and i32 %2116, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = lshr i32 %2109, 16
  %2121 = and i32 %2120, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = bitcast float %2048 to i32
  %2125 = ashr i32 %2124, 1
  %2126 = sub nsw i32 1597463174, %2125
  %2127 = bitcast i32 %2126 to float
  %2128 = fmul fast float %2048, 5.000000e-01
  %2129 = fmul fast float %2127, %2127
  %2130 = fmul fast float %2129, %2128
  %2131 = fsub fast float 1.500000e+00, %2130
  %2132 = fmul fast float %2127, %2048
  %2133 = fmul fast float %2132, %2131
  %2134 = bitcast float %2049 to i32
  %2135 = ashr i32 %2134, 1
  %2136 = sub nsw i32 1597463174, %2135
  %2137 = bitcast i32 %2136 to float
  %2138 = fmul fast float %2049, 5.000000e-01
  %2139 = fmul fast float %2137, %2137
  %2140 = fmul fast float %2139, %2138
  %2141 = fsub fast float 1.500000e+00, %2140
  %2142 = fmul fast float %2137, %2049
  %2143 = fmul fast float %2142, %2141
  %2144 = bitcast float %2050 to i32
  %2145 = ashr i32 %2144, 1
  %2146 = sub nsw i32 1597463174, %2145
  %2147 = bitcast i32 %2146 to float
  %2148 = fmul fast float %2050, 5.000000e-01
  %2149 = fmul fast float %2147, %2147
  %2150 = fmul fast float %2149, %2148
  %2151 = fsub fast float 1.500000e+00, %2150
  %2152 = fmul fast float %2147, %2050
  %2153 = fmul fast float %2152, %2151
  %2154 = fsub fast float %2133, %2115
  %2155 = fsub fast float %2143, %2119
  %2156 = fsub fast float %2153, %2123
  %2157 = fmul fast float %2154, %2083
  %2158 = fmul fast float %2155, %2085
  %2159 = fmul fast float %2156, %2090
  %2160 = fadd fast float %2157, %2098
  %2161 = fadd fast float %2158, %2102
  %2162 = fadd fast float %2159, %2106
  %2163 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2164 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2165 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2166 = fmul fast float %2163, %2163
  %2167 = fmul fast float %2164, %2164
  %2168 = fmul fast float %2165, %2165
  %2169 = fsub fast float %2166, %2048
  %2170 = fsub fast float %2167, %2049
  %2171 = fsub fast float %2168, %2050
  %2172 = fmul fast float %2169, %2073
  %2173 = fmul fast float %2170, %2073
  %2174 = fmul fast float %2171, %2073
  %2175 = fadd fast float %2172, %2048
  %2176 = fadd fast float %2173, %2049
  %2177 = fadd fast float %2174, %2050
  %2178 = fadd fast float %2095, %2059
  %2179 = fsub fast float %2178, %2112
  %2180 = call float @dx.op.unary.f32(i32 7, float %2179)  ; Saturate(value)
  %2181 = fsub fast float %2180, %2059
  %2182 = fmul fast float %2181, %2073
  %2183 = fadd fast float %2182, %2059
  br label %2237

; <label>:2184                                    ; preds = %2072
  %2185 = and i32 %2075, 134217728
  %2186 = icmp eq i32 %2185, 0
  br i1 %2186, label %2221, label %2187

; <label>:2187                                    ; preds = %2184
  %2188 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %2189 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2190 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2191 = fadd fast float %2188, -5.000000e-01
  %2192 = fadd fast float %2189, -5.000000e-01
  %2193 = fadd fast float %2190, -5.000000e-01
  %2194 = fmul fast float %2191, %2073
  %2195 = fmul fast float %2192, %2073
  %2196 = fmul fast float %2193, %2073
  %2197 = fadd fast float %2194, 5.000000e-01
  %2198 = fadd fast float %2195, 5.000000e-01
  %2199 = fadd fast float %2196, 5.000000e-01
  %2200 = call float @dx.op.unary.f32(i32 24, float %2048)  ; Sqrt(value)
  %2201 = call float @dx.op.unary.f32(i32 24, float %2049)  ; Sqrt(value)
  %2202 = call float @dx.op.unary.f32(i32 24, float %2050)  ; Sqrt(value)
  %2203 = fmul fast float %2197, 2.000000e+00
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fmul fast float %2204, %2200
  %2206 = fadd fast float %2205, %2203
  %2207 = fmul fast float %2206, %2200
  %2208 = fmul fast float %2198, 2.000000e+00
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2209, %2201
  %2211 = fadd fast float %2210, %2208
  %2212 = fmul fast float %2211, %2201
  %2213 = fmul fast float %2199, 2.000000e+00
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = fmul fast float %2214, %2202
  %2216 = fadd fast float %2215, %2213
  %2217 = fmul fast float %2216, %2202
  %2218 = fmul fast float %2207, %2207
  %2219 = fmul fast float %2212, %2212
  %2220 = fmul fast float %2217, %2217
  br label %2237

; <label>:2221                                    ; preds = %2184
  %2222 = fmul fast float %274, %274
  %2223 = fmul fast float %278, %278
  %2224 = fmul fast float %282, %282
  %2225 = fadd fast float %2222, -1.000000e+00
  %2226 = fadd fast float %2223, -1.000000e+00
  %2227 = fadd fast float %2224, -1.000000e+00
  %2228 = fmul fast float %2073, %2225
  %2229 = fmul fast float %2073, %2226
  %2230 = fmul fast float %2073, %2227
  %2231 = fadd fast float %2228, 1.000000e+00
  %2232 = fadd fast float %2229, 1.000000e+00
  %2233 = fadd fast float %2230, 1.000000e+00
  %2234 = fmul fast float %2231, %2048
  %2235 = fmul fast float %2232, %2049
  %2236 = fmul fast float %2233, %2050
  br label %2237

; <label>:2237                                    ; preds = %2221, %2187, %2078, %2034
  %2238 = phi float [ %2183, %2078 ], [ %2059, %2187 ], [ %2059, %2221 ], [ 0x3FA23C0BE0000000, %2034 ]
  %2239 = phi float [ %2175, %2078 ], [ %2218, %2187 ], [ %2234, %2221 ], [ 1.000000e+00, %2034 ]
  %2240 = phi float [ %2176, %2078 ], [ %2219, %2187 ], [ %2235, %2221 ], [ 1.000000e+00, %2034 ]
  %2241 = phi float [ %2177, %2078 ], [ %2220, %2187 ], [ %2236, %2221 ], [ 1.000000e+00, %2034 ]
  %2242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2243 = extractvalue %dx.types.CBufRet.i32 %2242, 1
  %2244 = and i32 %2243, 1
  %2245 = icmp ne i32 %2244, 0
  %2246 = add i32 %33, 356
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = and i32 %2248, 32
  %2250 = icmp ne i32 %2249, 0
  %2251 = and i1 %2245, %2250
  %2252 = select i1 %2251, float 1.000000e+00, float %2239
  %2253 = select i1 %2251, float 0x3FD3333340000000, float %2240
  %2254 = select i1 %2251, float 0x3FD3333340000000, float %2241
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 32
  %2258 = icmp eq i32 %2257, 0
  br i1 %2258, label %2331, label %2259

; <label>:2259                                    ; preds = %2237
  %2260 = add i32 %33, 124
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = add i32 %33, 384
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = add i32 %2265, 0
  %2267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2267, %dx.types.Handle %63, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2269 = extractvalue %dx.types.ResRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.ResRet.f32 %2268, 1
  %2271 = extractvalue %dx.types.ResRet.f32 %2268, 2
  %2272 = extractvalue %dx.types.ResRet.f32 %2268, 3
  %2273 = and i32 %2262, 255
  %2274 = uitofp i32 %2273 to float
  %2275 = lshr i32 %2262, 8
  %2276 = and i32 %2275, 255
  %2277 = uitofp i32 %2276 to float
  %2278 = lshr i32 %2262, 16
  %2279 = and i32 %2278, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2280, 0x3F70101000000000
  %2282 = fmul fast float %2269, %2274
  %2283 = fadd fast float %2282, %2277
  %2284 = fmul fast float %2283, 0x3F70101000000000
  %2285 = fadd fast float %2270, -5.000000e-01
  %2286 = fadd fast float %2272, -5.000000e-01
  %2287 = fmul fast float %2285, %2281
  %2288 = fmul fast float %2286, %2281
  %2289 = fadd fast float %2287, 5.000000e-01
  %2290 = fadd fast float %2288, 5.000000e-01
  %2291 = fmul fast float %2289, 2.000000e+00
  %2292 = fadd fast float %2291, -1.000000e+00
  %2293 = fmul fast float %2290, 2.000000e+00
  %2294 = fadd fast float %2293, -1.000000e+00
  %2295 = fadd fast float %2292, %2294
  %2296 = fmul fast float %2295, 5.000000e-01
  %2297 = fsub fast float %2292, %2294
  %2298 = fmul fast float %2297, 5.000000e-01
  %2299 = call float @dx.op.unary.f32(i32 6, float %2296)  ; FAbs(value)
  %2300 = fsub fast float 1.000000e+00, %2299
  %2301 = call float @dx.op.unary.f32(i32 6, float %2298)  ; FAbs(value)
  %2302 = fsub fast float %2300, %2301
  %2303 = call float @dx.op.dot3.f32(i32 55, float %2296, float %2298, float %2302, float %2296, float %2298, float %2302)  ; Dot3(ax,ay,az,bx,by,bz)
  %2304 = call float @dx.op.unary.f32(i32 25, float %2303)  ; Rsqrt(value)
  %2305 = fmul fast float %2296, %2304
  %2306 = fmul fast float %2298, %2304
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 67108864
  %2310 = icmp eq i32 %2309, 0
  br i1 %2310, label %2327, label %2311

; <label>:2311                                    ; preds = %2259
  %2312 = add i32 %33, 312
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = and i32 %2314, 65535
  %2316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2315)  ; LegacyF16ToF32(value)
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 65535
  %2320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2319)  ; LegacyF16ToF32(value)
  %2321 = lshr i32 %2314, 16
  %2322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2321)  ; LegacyF16ToF32(value)
  %2323 = fsub fast float %2284, %2322
  %2324 = fmul fast float %2323, %2316
  %2325 = fadd fast float %2324, %2320
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  br label %2327

; <label>:2327                                    ; preds = %2311, %2259
  %2328 = phi float [ %2326, %2311 ], [ %2284, %2259 ]
  %2329 = call float @dx.op.dot2.f32(i32 54, float %2305, float %2306, float %1748, float %1749)  ; Dot2(ax,ay,bx,by)
  %2330 = call float @dx.op.dot2.f32(i32 54, float %2305, float %2306, float %1750, float %1751)  ; Dot2(ax,ay,bx,by)
  br label %2331

; <label>:2331                                    ; preds = %2327, %2237
  %2332 = phi float [ %2328, %2327 ], [ 0x3FD6666660000000, %2237 ]
  %2333 = phi float [ %2329, %2327 ], [ 0.000000e+00, %2237 ]
  %2334 = phi float [ %2330, %2327 ], [ 0.000000e+00, %2237 ]
  %2335 = phi float [ %2271, %2327 ], [ 1.000000e+00, %2237 ]
  %2336 = add i32 %33, 192
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = lshr i32 %2338, 22
  %2340 = shl nuw nsw i32 %2339, 5
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 64
  %2345 = icmp eq i32 %2344, 0
  br i1 %2345, label %2379, label %2346

; <label>:2346                                    ; preds = %2331
  %2347 = add i32 %33, 400
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = add i32 %2349, 0
  %2351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 131072
  %2355 = icmp eq i32 %2354, 0
  %2356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2351, %dx.types.Handle %63, float %1844, float %1845, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2357 = extractvalue %dx.types.ResRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.ResRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.ResRet.f32 %2356, 2
  %2360 = fmul fast float %2357, %262
  %2361 = fmul fast float %2358, %265
  %2362 = fmul fast float %2359, %268
  br i1 %2355, label %2369, label %2363

; <label>:2363                                    ; preds = %2346
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 0
  %2366 = fmul fast float %2365, %2360
  %2367 = fmul fast float %2365, %2361
  %2368 = fmul fast float %2365, %2362
  br label %2369

; <label>:2369                                    ; preds = %2363, %2346
  %2370 = phi float [ %2366, %2363 ], [ %2360, %2346 ]
  %2371 = phi float [ %2367, %2363 ], [ %2361, %2346 ]
  %2372 = phi float [ %2368, %2363 ], [ %2362, %2346 ]
  %2373 = fmul fast float %2370, %2341
  %2374 = select i1 %172, float %2373, float %2370
  %2375 = call float @dx.op.dot3.f32(i32 55, float %2374, float %2371, float %2372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2376 = select i1 %172, float 0.000000e+00, float %2370
  %2377 = select i1 %172, float %2375, float %2371
  %2378 = select i1 %172, float 0.000000e+00, float %2372
  br label %2379

; <label>:2379                                    ; preds = %2369, %2331
  %2380 = phi float [ %2376, %2369 ], [ 0.000000e+00, %2331 ]
  %2381 = phi float [ %2377, %2369 ], [ 0.000000e+00, %2331 ]
  %2382 = phi float [ %2378, %2369 ], [ 0.000000e+00, %2331 ]
  %2383 = add i32 %33, 128
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = and i32 %2385, 255
  %2387 = uitofp i32 %2386 to float
  %2388 = lshr i32 %2385, 8
  %2389 = and i32 %2388, 255
  %2390 = uitofp i32 %2389 to float
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2252, float %2253, float %2254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = fmul fast float %2390, %2391
  %2393 = fadd fast float %2392, %2387
  %2394 = fmul fast float %2393, 0x3F70101020000000
  %2395 = call float @dx.op.unary.f32(i32 7, float %2394)  ; Saturate(value)
  br i1 %1736, label %2396, label %2404

; <label>:2396                                    ; preds = %2379
  %2397 = fsub fast float 1.000000e+00, %2032
  %2398 = fmul fast float %2397, %1725
  %2399 = fmul fast float %2397, %1726
  %2400 = fmul fast float %2397, %1727
  %2401 = fmul fast float %2397, %1728
  %2402 = fmul fast float %2397, %1729
  %2403 = fmul fast float %2397, %1730
  br label %2404

; <label>:2404                                    ; preds = %2396, %2379
  %2405 = phi float [ %2398, %2396 ], [ %1725, %2379 ]
  %2406 = phi float [ %2399, %2396 ], [ %1726, %2379 ]
  %2407 = phi float [ %2400, %2396 ], [ %1727, %2379 ]
  %2408 = phi float [ %2401, %2396 ], [ %1728, %2379 ]
  %2409 = phi float [ %2402, %2396 ], [ %1729, %2379 ]
  %2410 = phi float [ %2403, %2396 ], [ %1730, %2379 ]
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 3
  %2414 = icmp eq i32 %2413, 3
  br i1 %2414, label %2493, label %2415

; <label>:2415                                    ; preds = %2404
  %2416 = and i32 %2412, 16
  %2417 = icmp ne i32 %2416, 0
  %2418 = select i1 %2417, float %2032, float 0.000000e+00
  %2419 = icmp eq i32 %2413, 0
  br i1 %2419, label %2420, label %2448

; <label>:2420                                    ; preds = %2415
  %2421 = and i32 %2412, 64
  %2422 = icmp ne i32 %2421, 0
  %2423 = select i1 %2422, float %2032, float 0.000000e+00
  %2424 = fsub fast float %2252, %2405
  %2425 = fsub fast float %2253, %2406
  %2426 = fsub fast float %2254, %2407
  %2427 = fmul fast float %2418, %2424
  %2428 = fmul fast float %2418, %2425
  %2429 = fmul fast float %2418, %2426
  %2430 = fadd fast float %2427, %2405
  %2431 = fadd fast float %2428, %2406
  %2432 = fadd fast float %2429, %2407
  %2433 = fsub fast float %2238, %1731
  %2434 = fmul fast float %2418, %2433
  %2435 = fadd fast float %2434, %1731
  %2436 = fsub fast float %2380, %2408
  %2437 = fsub fast float %2381, %2409
  %2438 = fsub fast float %2382, %2410
  %2439 = fmul fast float %2423, %2436
  %2440 = fmul fast float %2423, %2437
  %2441 = fmul fast float %2423, %2438
  %2442 = fadd fast float %2439, %2408
  %2443 = fadd fast float %2440, %2409
  %2444 = fadd fast float %2441, %2410
  %2445 = fsub fast float %2395, %1734
  %2446 = fmul fast float %2418, %2445
  %2447 = fadd fast float %2446, %1734
  br label %2493

; <label>:2448                                    ; preds = %2415
  %2449 = icmp eq i32 %2413, 1
  br i1 %2449, label %2450, label %2463

; <label>:2450                                    ; preds = %2448
  %2451 = fadd fast float %2252, -1.000000e+00
  %2452 = fadd fast float %2253, -1.000000e+00
  %2453 = fadd fast float %2254, -1.000000e+00
  %2454 = fmul fast float %2418, %2451
  %2455 = fmul fast float %2418, %2452
  %2456 = fmul fast float %2418, %2453
  %2457 = fadd fast float %2454, 1.000000e+00
  %2458 = fadd fast float %2455, 1.000000e+00
  %2459 = fadd fast float %2456, 1.000000e+00
  %2460 = fmul fast float %2457, %2405
  %2461 = fmul fast float %2458, %2406
  %2462 = fmul fast float %2459, %2407
  br label %2493

; <label>:2463                                    ; preds = %2448
  %2464 = icmp eq i32 %2413, 2
  br i1 %2464, label %2465, label %2493

; <label>:2465                                    ; preds = %2463
  %2466 = call float @dx.op.unary.f32(i32 24, float %2252)  ; Sqrt(value)
  %2467 = call float @dx.op.unary.f32(i32 24, float %2253)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2469 = fadd fast float %2466, -5.000000e-01
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fadd fast float %2468, -5.000000e-01
  %2472 = fmul fast float %2469, %2418
  %2473 = fmul fast float %2470, %2418
  %2474 = fmul fast float %2471, %2418
  %2475 = fadd fast float %2472, 5.000000e-01
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fmul fast float %2475, 2.000000e+00
  %2479 = fsub fast float 1.000000e+00, %2478
  %2480 = fmul fast float %2479, %2405
  %2481 = fadd fast float %2480, %2478
  %2482 = fmul fast float %2481, %2405
  %2483 = fmul fast float %2476, 2.000000e+00
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2484, %2406
  %2486 = fadd fast float %2485, %2483
  %2487 = fmul fast float %2486, %2406
  %2488 = fmul fast float %2477, 2.000000e+00
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = fmul fast float %2489, %2407
  %2491 = fadd fast float %2490, %2488
  %2492 = fmul fast float %2491, %2407
  br label %2493

; <label>:2493                                    ; preds = %2465, %2463, %2450, %2420, %2404
  %2494 = phi float [ %2405, %2404 ], [ %2482, %2465 ], [ %2405, %2463 ], [ %2460, %2450 ], [ %2430, %2420 ]
  %2495 = phi float [ %2406, %2404 ], [ %2487, %2465 ], [ %2406, %2463 ], [ %2461, %2450 ], [ %2431, %2420 ]
  %2496 = phi float [ %2407, %2404 ], [ %2492, %2465 ], [ %2407, %2463 ], [ %2462, %2450 ], [ %2432, %2420 ]
  %2497 = phi float [ %2408, %2404 ], [ %2408, %2465 ], [ %2408, %2463 ], [ %2408, %2450 ], [ %2442, %2420 ]
  %2498 = phi float [ %2409, %2404 ], [ %2409, %2465 ], [ %2409, %2463 ], [ %2409, %2450 ], [ %2443, %2420 ]
  %2499 = phi float [ %2410, %2404 ], [ %2410, %2465 ], [ %2410, %2463 ], [ %2410, %2450 ], [ %2444, %2420 ]
  %2500 = phi float [ %1731, %2404 ], [ %1731, %2465 ], [ %1731, %2463 ], [ %1731, %2450 ], [ %2435, %2420 ]
  %2501 = phi float [ %1734, %2404 ], [ %1734, %2465 ], [ %1734, %2463 ], [ %1734, %2450 ], [ %2447, %2420 ]
  %2502 = and i32 %2412, 12
  %2503 = icmp eq i32 %2502, 12
  br i1 %2503, label %2576, label %2504

; <label>:2504                                    ; preds = %2493
  %2505 = and i32 %2412, 2097184
  %2506 = icmp eq i32 %2505, 2097184
  %2507 = select i1 %2506, float %2032, float 0.000000e+00
  %2508 = and i32 %2412, 4194336
  %2509 = icmp eq i32 %2508, 4194336
  %2510 = select i1 %2509, float %2032, float 0.000000e+00
  %2511 = and i32 %2412, 8388640
  %2512 = icmp eq i32 %2511, 8388640
  %2513 = select i1 %2512, float %2032, float 0.000000e+00
  %2514 = icmp eq i32 %2502, 0
  br i1 %2514, label %2515, label %2528

; <label>:2515                                    ; preds = %2504
  %2516 = fsub fast float %2333, %1723
  %2517 = fsub fast float %2334, %1724
  %2518 = fmul fast float %2507, %2516
  %2519 = fmul fast float %2507, %2517
  %2520 = fadd fast float %2518, %1723
  %2521 = fadd fast float %2519, %1724
  %2522 = fsub fast float %2335, %1733
  %2523 = fmul fast float %2510, %2522
  %2524 = fadd fast float %2523, %1733
  %2525 = fsub fast float %2332, %1732
  %2526 = fmul fast float %2513, %2525
  %2527 = fadd fast float %2526, %1732
  br label %2576

; <label>:2528                                    ; preds = %2504
  %2529 = icmp eq i32 %2502, 4
  br i1 %2529, label %2530, label %2562

; <label>:2530                                    ; preds = %2528
  %2531 = fmul fast float %2507, %2333
  %2532 = fmul fast float %2507, %2334
  %2533 = fadd fast float %2531, %1723
  %2534 = fadd fast float %2532, %1724
  %2535 = call float @dx.op.binary.f32(i32 36, float %1733, float %2335)  ; FMin(a,b)
  %2536 = fsub fast float %2535, %1733
  %2537 = fmul fast float %2536, %2510
  %2538 = fadd fast float %2537, %1733
  %2539 = fadd fast float %2332, %1732
  %2540 = fmul fast float %2539, 0x3FF337FAE0000000
  %2541 = fmul fast float %1732, %1732
  %2542 = fmul fast float %2332, %2332
  %2543 = fadd fast float %2542, %2541
  %2544 = fmul fast float %2543, 0x3FE5152B00000000
  %2545 = fmul fast float %1732, 0xBFCC1F85E0000000
  %2546 = fmul fast float %2545, %2332
  %2547 = fadd fast float %2546, 0xBFE1363700000000
  %2548 = fadd fast float %2547, %2540
  %2549 = fsub fast float %2548, %2544
  %2550 = fmul fast float %2539, 0x3FBA6F0D00000000
  %2551 = fmul fast float %2543, 0x3FD0432880000000
  %2552 = fmul fast float %1732, 0xBFEF110800000000
  %2553 = fmul fast float %2552, %2332
  %2554 = fadd fast float %2553, 1.000000e+00
  %2555 = fsub fast float %2554, %2550
  %2556 = fadd fast float %2555, %2551
  %2557 = fdiv fast float %2549, %2556
  %2558 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  %2559 = fsub fast float %2558, %1732
  %2560 = fmul fast float %2559, %2513
  %2561 = fadd fast float %2560, %1732
  br label %2576

; <label>:2562                                    ; preds = %2528
  %2563 = icmp eq i32 %2502, 8
  br i1 %2563, label %2564, label %2576

; <label>:2564                                    ; preds = %2562
  %2565 = fmul fast float %2507, %2333
  %2566 = fmul fast float %2507, %2334
  %2567 = fadd fast float %2565, %1723
  %2568 = fadd fast float %2566, %1724
  %2569 = call float @dx.op.binary.f32(i32 36, float %1733, float %2335)  ; FMin(a,b)
  %2570 = fsub fast float %2569, %1733
  %2571 = fmul fast float %2570, %2510
  %2572 = fadd fast float %2571, %1733
  %2573 = fsub fast float %2332, %1732
  %2574 = fmul fast float %2513, %2573
  %2575 = fadd fast float %2574, %1732
  br label %2576

; <label>:2576                                    ; preds = %2564, %2562, %2530, %2515, %2493, %2031, %1735, %1722
  %2577 = phi float [ %1723, %2493 ], [ %1723, %2031 ], [ %1723, %1722 ], [ %2567, %2564 ], [ %1723, %2562 ], [ %2533, %2530 ], [ %2520, %2515 ], [ %1723, %1735 ]
  %2578 = phi float [ %1724, %2493 ], [ %1724, %2031 ], [ %1724, %1722 ], [ %2568, %2564 ], [ %1724, %2562 ], [ %2534, %2530 ], [ %2521, %2515 ], [ %1724, %1735 ]
  %2579 = phi float [ %2494, %2493 ], [ %1725, %2031 ], [ %1725, %1722 ], [ %2494, %2564 ], [ %2494, %2562 ], [ %2494, %2530 ], [ %2494, %2515 ], [ %1725, %1735 ]
  %2580 = phi float [ %2495, %2493 ], [ %1726, %2031 ], [ %1726, %1722 ], [ %2495, %2564 ], [ %2495, %2562 ], [ %2495, %2530 ], [ %2495, %2515 ], [ %1726, %1735 ]
  %2581 = phi float [ %2496, %2493 ], [ %1727, %2031 ], [ %1727, %1722 ], [ %2496, %2564 ], [ %2496, %2562 ], [ %2496, %2530 ], [ %2496, %2515 ], [ %1727, %1735 ]
  %2582 = phi float [ %2497, %2493 ], [ %1728, %2031 ], [ %1728, %1722 ], [ %2497, %2564 ], [ %2497, %2562 ], [ %2497, %2530 ], [ %2497, %2515 ], [ %1728, %1735 ]
  %2583 = phi float [ %2498, %2493 ], [ %1729, %2031 ], [ %1729, %1722 ], [ %2498, %2564 ], [ %2498, %2562 ], [ %2498, %2530 ], [ %2498, %2515 ], [ %1729, %1735 ]
  %2584 = phi float [ %2499, %2493 ], [ %1730, %2031 ], [ %1730, %1722 ], [ %2499, %2564 ], [ %2499, %2562 ], [ %2499, %2530 ], [ %2499, %2515 ], [ %1730, %1735 ]
  %2585 = phi float [ %2500, %2493 ], [ %1731, %2031 ], [ %1731, %1722 ], [ %2500, %2564 ], [ %2500, %2562 ], [ %2500, %2530 ], [ %2500, %2515 ], [ %1731, %1735 ]
  %2586 = phi float [ %1732, %2493 ], [ %1732, %2031 ], [ %1732, %1722 ], [ %2575, %2564 ], [ %1732, %2562 ], [ %2561, %2530 ], [ %2527, %2515 ], [ %1732, %1735 ]
  %2587 = phi float [ %1733, %2493 ], [ %1733, %2031 ], [ %1733, %1722 ], [ %2572, %2564 ], [ %1733, %2562 ], [ %2538, %2530 ], [ %2524, %2515 ], [ %1733, %1735 ]
  %2588 = phi float [ %2501, %2493 ], [ %1734, %2031 ], [ %1734, %1722 ], [ %2501, %2564 ], [ %2501, %2562 ], [ %2501, %2530 ], [ %2501, %2515 ], [ %1734, %1735 ]
  br i1 %349, label %3430, label %2589

; <label>:2589                                    ; preds = %2576
  %2590 = icmp ult i32 %400, 4
  %2591 = add i32 %33, 72
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = add i32 %33, 76
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = or i32 %2596, %2593
  %2598 = icmp eq i32 %2597, 0
  br i1 %2598, label %3430, label %2599

; <label>:2599                                    ; preds = %2589
  %2600 = and i32 %2593, 262144
  %2601 = icmp ne i32 %2600, 0
  %2602 = select i1 %2601, float %35, float 1.000000e+00
  %2603 = select i1 %2601, float %36, float 0.000000e+00
  %2604 = select i1 %2601, float %37, float 0.000000e+00
  %2605 = select i1 %2601, float %38, float 1.000000e+00
  %2606 = select i1 %2601, float %39, float %55
  %2607 = select i1 %2601, float %40, float %56
  %2608 = add i32 %33, 332
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = lshr i32 %2610, 16
  %2612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2611)  ; LegacyF16ToF32(value)
  %2613 = fmul fast float %2612, 0x3F50624DE0000000
  %2614 = add i32 %33, 136
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = lshr i32 %2616, 16
  %2618 = and i32 %2617, 255
  %2619 = lshr i32 %2616, 24
  %2620 = add i32 %33, 340
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 65535
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = lshr i32 %2622, 16
  %2626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2625)  ; LegacyF16ToF32(value)
  %2627 = add i32 %33, 80
  %2628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2627, i32 undef)  ; BufferLoad(srv,index,wot)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = lshr i32 %2629, 22
  %2631 = shl nuw nsw i32 %2630, 5
  %2632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2631)  ; LegacyF16ToF32(value)
  %2633 = shl i32 %2629, 4
  %2634 = and i32 %2633, 32752
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = lshr i32 %2629, 7
  %2637 = and i32 %2636, 32752
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.f32 %2639, 3
  %2641 = fmul fast float %2640, 1.000000e+03
  %2642 = fmul fast float %339, %2641
  %2643 = call float @dx.op.unary.f32(i32 22, float %2642)  ; Frc(value)
  %2644 = fadd fast float %2643, %329
  %2645 = fmul fast float %340, %2641
  %2646 = call float @dx.op.unary.f32(i32 22, float %2645)  ; Frc(value)
  %2647 = fadd fast float %2646, %331
  %2648 = fmul fast float %2613, %2641
  %2649 = call float @dx.op.unary.f32(i32 22, float %2648)  ; Frc(value)
  %2650 = fmul fast float %2649, 0x401921FB60000000
  %2651 = fadd fast float %2650, %2632
  %2652 = call float @dx.op.unary.f32(i32 13, float %2651)  ; Sin(value)
  %2653 = call float @dx.op.unary.f32(i32 12, float %2651)  ; Cos(value)
  %2654 = fsub fast float -0.000000e+00, %2652
  %2655 = fadd fast float %2606, -5.000000e-01
  %2656 = fadd fast float %2607, -5.000000e-01
  %2657 = fmul fast float %2624, %2655
  %2658 = fmul fast float %2626, %2656
  %2659 = fadd fast float %2657, 5.000000e-01
  %2660 = fadd fast float %2658, 5.000000e-01
  %2661 = fmul fast float %2635, %2659
  %2662 = fmul fast float %2638, %2660
  %2663 = fmul fast float %2653, %2661
  %2664 = call float @dx.op.tertiary.f32(i32 46, float %2654, float %2662, float %2663)  ; FMad(a,b,c)
  %2665 = fmul fast float %2652, %2661
  %2666 = call float @dx.op.tertiary.f32(i32 46, float %2653, float %2662, float %2665)  ; FMad(a,b,c)
  %2667 = fadd fast float %2644, %2664
  %2668 = fadd fast float %2647, %2666
  %2669 = icmp ugt i32 %2618, 1
  %2670 = icmp ugt i32 %2616, 33554431
  %2671 = or i1 %2670, %2669
  br i1 %2671, label %2672, label %2697

; <label>:2672                                    ; preds = %2599
  %2673 = add i32 %33, 276
  %2674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.i32 %2674, 0
  %2676 = lshr i32 %2675, 16
  %2677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2676)  ; LegacyF16ToF32(value)
  %2678 = fmul fast float %2640, %2677
  %2679 = call float @dx.op.unary.f32(i32 22, float %2678)  ; Frc(value)
  %2680 = mul nuw nsw i32 %2618, %2619
  %2681 = uitofp i32 %2680 to float
  %2682 = fmul fast float %2679, %2681
  %2683 = call float @dx.op.unary.f32(i32 27, float %2682)  ; Round_ni(value)
  %2684 = fptoui float %2683 to i32
  %2685 = urem i32 %2684, %2618
  %2686 = udiv i32 %2684, %2619
  %2687 = call float @dx.op.unary.f32(i32 22, float %2667)  ; Frc(value)
  %2688 = call float @dx.op.unary.f32(i32 22, float %2668)  ; Frc(value)
  %2689 = uitofp i32 %2685 to float
  %2690 = uitofp i32 %2686 to float
  %2691 = fadd fast float %2687, %2689
  %2692 = fadd fast float %2688, %2690
  %2693 = uitofp i32 %2618 to float
  %2694 = uitofp i32 %2619 to float
  %2695 = fdiv fast float %2691, %2693
  %2696 = fdiv fast float %2692, %2694
  br label %2697

; <label>:2697                                    ; preds = %2672, %2599
  %2698 = phi float [ %2695, %2672 ], [ %2667, %2599 ]
  %2699 = phi float [ %2696, %2672 ], [ %2668, %2599 ]
  %2700 = and i32 %2593, 16777216
  %2701 = icmp eq i32 %2700, 0
  br i1 %2701, label %2811, label %2702

; <label>:2702                                    ; preds = %2697
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2705 = extractvalue %dx.types.CBufRet.f32 %2703, 1
  %2706 = extractvalue %dx.types.CBufRet.f32 %2703, 2
  %2707 = fadd fast float %2704, %130
  %2708 = fadd fast float %2705, %131
  %2709 = fadd fast float %2706, %132
  %2710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2711 = extractvalue %dx.types.CBufRet.f32 %2710, 0
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = icmp eq i32 %34, 65535
  br i1 %2713, label %2808, label %2714

; <label>:2714                                    ; preds = %2702
  %2715 = lshr i32 %34, 1
  %2716 = shl i32 %2715, 2
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2716, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %34, 1
  %2720 = icmp ne i32 %2719, 0
  %2721 = lshr i32 %2718, 16
  %2722 = and i32 %2718, 65535
  %2723 = select i1 %2720, i32 %2721, i32 %2722
  %2724 = icmp eq i32 %2723, 65535
  br i1 %2724, label %2804, label %2725

; <label>:2725                                    ; preds = %2714
  %2726 = mul nuw nsw i32 %2723, 40
  %2727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.ResRet.f32 %2727, 2
  %2731 = add nuw nsw i32 %2726, 12
  %2732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.ResRet.f32 %2732, 1
  %2735 = extractvalue %dx.types.ResRet.f32 %2732, 2
  %2736 = add nuw nsw i32 %2726, 24
  %2737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.ResRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.ResRet.f32 %2737, 2
  %2741 = add nuw nsw i32 %2726, 36
  %2742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.f32 %2742, 0
  %2744 = fsub fast float %2707, %2728
  %2745 = fsub fast float %2708, %2729
  %2746 = fsub fast float %2709, %2730
  %2747 = fmul fast float %2743, %2744
  %2748 = fmul fast float %2743, %2745
  %2749 = fmul fast float %2743, %2746
  %2750 = call float @dx.op.unary.f32(i32 27, float %2747)  ; Round_ni(value)
  %2751 = call float @dx.op.unary.f32(i32 27, float %2748)  ; Round_ni(value)
  %2752 = call float @dx.op.unary.f32(i32 27, float %2749)  ; Round_ni(value)
  %2753 = fadd fast float %2750, 5.000000e-01
  %2754 = fadd fast float %2751, 5.000000e-01
  %2755 = fadd fast float %2752, 5.000000e-01
  %2756 = fmul fast float %2753, %2733
  %2757 = fmul fast float %2754, %2734
  %2758 = fmul fast float %2755, %2735
  %2759 = shl i32 %34, 2
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = add i32 %2761, 0
  %2763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2764 = call float @dx.op.unary.f32(i32 22, float %2756)  ; Frc(value)
  %2765 = call float @dx.op.unary.f32(i32 22, float %2757)  ; Frc(value)
  %2766 = call float @dx.op.unary.f32(i32 22, float %2758)  ; Frc(value)
  %2767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2763, %dx.types.Handle %30, float %2764, float %2765, float %2766, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2768 = extractvalue %dx.types.ResRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.ResRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.ResRet.f32 %2767, 2
  %2771 = fmul fast float %2768, 1.023000e+03
  %2772 = fmul fast float %2769, 1.023000e+03
  %2773 = fmul fast float %2770, 1.023000e+03
  %2774 = fadd fast float %2771, 5.000000e-01
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = call float @dx.op.unary.f32(i32 27, float %2774)  ; Round_ni(value)
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = fsub fast float %2747, %2750
  %2781 = fsub fast float %2748, %2751
  %2782 = fsub fast float %2749, %2752
  %2783 = fmul fast float %2780, 7.500000e-01
  %2784 = fmul fast float %2781, 7.500000e-01
  %2785 = fmul fast float %2782, 7.500000e-01
  %2786 = fadd fast float %2750, 1.250000e-01
  %2787 = fadd fast float %2786, %2783
  %2788 = fadd fast float %2787, %2777
  %2789 = fadd fast float %2751, 1.250000e-01
  %2790 = fadd fast float %2789, %2784
  %2791 = fadd fast float %2790, %2778
  %2792 = fadd fast float %2752, 1.250000e-01
  %2793 = fadd fast float %2792, %2785
  %2794 = fadd fast float %2793, %2779
  %2795 = fmul fast float %2788, %2738
  %2796 = fmul fast float %2791, %2739
  %2797 = fmul fast float %2794, %2740
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = add i32 %2799, 0
  %2801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2800, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2801, %dx.types.Handle %28, float %2795, float %2796, float %2797, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 0
  br label %2804

; <label>:2804                                    ; preds = %2725, %2714
  %2805 = phi float [ %2803, %2725 ], [ -1.000000e+00, %2714 ]
  %2806 = fadd fast float %2805, %2712
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  br label %2808

; <label>:2808                                    ; preds = %2804, %2702
  %2809 = phi float [ %2807, %2804 ], [ %2712, %2702 ]
  %2810 = fmul fast float %2809, %395
  br label %2811

; <label>:2811                                    ; preds = %2808, %2697
  %2812 = phi float [ %2810, %2808 ], [ %395, %2697 ]
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = and i32 %2814, 256
  %2816 = icmp eq i32 %2815, 0
  br i1 %2816, label %2863, label %2817

; <label>:2817                                    ; preds = %2811
  %2818 = add i32 %33, 436
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = add i32 %2820, 0
  %2822 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2821, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2822, %dx.types.Handle %64, float %2698, float %2699, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 0
  %2825 = add i32 %33, 148
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = shl i32 %2827, 4
  %2829 = and i32 %2828, 32752
  %2830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2829)  ; LegacyF16ToF32(value)
  %2831 = lshr i32 %2827, 7
  %2832 = and i32 %2831, 32752
  %2833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2832)  ; LegacyF16ToF32(value)
  %2834 = fsub fast float 1.000000e+00, %2812
  %2835 = call float @dx.op.binary.f32(i32 35, float %2834, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2836 = bitcast float %2812 to i32
  %2837 = sitofp i32 %2836 to float
  %2838 = fadd fast float %2837, 0xC1CFBF8940000000
  %2839 = fmul fast float %2833, %2838
  %2840 = fadd fast float %2839, 0x41CFBF8940000000
  %2841 = fptosi float %2840 to i32
  %2842 = bitcast i32 %2841 to float
  %2843 = bitcast float %2835 to i32
  %2844 = sitofp i32 %2843 to float
  %2845 = fadd fast float %2844, 0xC1CFBF8940000000
  %2846 = fmul fast float %2845, %2833
  %2847 = fadd fast float %2846, 0x41CFBF8940000000
  %2848 = fptosi float %2847 to i32
  %2849 = bitcast i32 %2848 to float
  %2850 = fmul fast float %2842, %2830
  %2851 = fmul fast float %2849, %2830
  %2852 = fsub fast float %2835, %2850
  %2853 = fadd fast float %2851, %2835
  %2854 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2855 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  %2856 = fsub fast float %2824, %2854
  %2857 = fsub fast float %2855, %2854
  %2858 = bitcast float %2857 to i32
  %2859 = sub nsw i32 2129859010, %2858
  %2860 = bitcast i32 %2859 to float
  %2861 = fmul fast float %2860, %2856
  %2862 = call float @dx.op.unary.f32(i32 7, float %2861)  ; Saturate(value)
  br label %2863

; <label>:2863                                    ; preds = %2817, %2811
  %2864 = phi float [ %2862, %2817 ], [ %2812, %2811 ]
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = and i32 %2866, 128
  %2868 = icmp eq i32 %2867, 0
  br i1 %2868, label %2885, label %2869

; <label>:2869                                    ; preds = %2863
  %2870 = add i32 %33, 420
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = add i32 %2872, 0
  %2874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2874, %dx.types.Handle %64, float %2698, float %2699, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 524288
  %2880 = icmp ne i32 %2879, 0
  %2881 = fcmp fast ogt float %2876, 0x3FE0101020000000
  %2882 = select i1 %2881, float 1.000000e+00, float 0.000000e+00
  %2883 = select i1 %2880, float %2882, float %2876
  %2884 = fmul fast float %2883, %2864
  br label %2885

; <label>:2885                                    ; preds = %2869, %2863
  %2886 = phi float [ %2884, %2869 ], [ %2864, %2863 ]
  %2887 = fcmp fast ult float %2886, 0x3F70101020000000
  br i1 %2887, label %3430, label %2888

; <label>:2888                                    ; preds = %2885
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 16
  %2892 = icmp eq i32 %2891, 0
  br i1 %2892, label %3091, label %2893

; <label>:2893                                    ; preds = %2888
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = add i32 %33, 372
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = add i32 %2898, 0
  %2900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2901 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2900, %dx.types.Handle %63, float %2698, float %2699, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2902 = extractvalue %dx.types.ResRet.f32 %2901, 0
  %2903 = extractvalue %dx.types.ResRet.f32 %2901, 1
  %2904 = extractvalue %dx.types.ResRet.f32 %2901, 2
  %2905 = extractvalue %dx.types.ResRet.f32 %2901, 3
  %2906 = and i32 %2895, 255
  %2907 = uitofp i32 %2906 to float
  %2908 = lshr i32 %2895, 8
  %2909 = and i32 %2908, 255
  %2910 = uitofp i32 %2909 to float
  %2911 = fmul fast float %2905, %2907
  %2912 = fadd fast float %2911, %2910
  %2913 = fmul fast float %2912, 0x3F70101000000000
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 512
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2926, label %2918

; <label>:2918                                    ; preds = %2893
  %2919 = add i32 %33, 452
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %64, float %2698, float %2699, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  br label %2926

; <label>:2926                                    ; preds = %2918, %2893
  %2927 = phi float [ %2925, %2918 ], [ 1.000000e+00, %2893 ]
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 33554432
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %3038, label %2932

; <label>:2932                                    ; preds = %2926
  %2933 = add i32 %33, 272
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = and i32 %2935, 65535
  %2937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2936)  ; LegacyF16ToF32(value)
  %2938 = lshr i32 %2935, 16
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = add i32 %33, 276
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 65535
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = lshr i32 %2946, 24
  %2948 = uitofp i32 %2947 to float
  %2949 = fmul fast float %2948, 0x3F70101020000000
  %2950 = and i32 %2946, 255
  %2951 = uitofp i32 %2950 to float
  %2952 = fmul fast float %2951, 0x3F70101020000000
  %2953 = lshr i32 %2946, 8
  %2954 = and i32 %2953, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = fmul fast float %2955, 0x3F70101020000000
  %2957 = lshr i32 %2946, 16
  %2958 = and i32 %2957, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = fmul fast float %2959, 0x3F70101020000000
  %2961 = add i32 %33, 268
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = lshr i32 %2963, 24
  %2965 = uitofp i32 %2964 to float
  %2966 = fmul fast float %2965, 0x3F70101020000000
  %2967 = and i32 %2963, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = lshr i32 %2963, 8
  %2971 = and i32 %2970, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = lshr i32 %2963, 16
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = bitcast float %2902 to i32
  %2979 = ashr i32 %2978, 1
  %2980 = sub nsw i32 1597463174, %2979
  %2981 = bitcast i32 %2980 to float
  %2982 = fmul fast float %2902, 5.000000e-01
  %2983 = fmul fast float %2981, %2981
  %2984 = fmul fast float %2983, %2982
  %2985 = fsub fast float 1.500000e+00, %2984
  %2986 = fmul fast float %2981, %2902
  %2987 = fmul fast float %2986, %2985
  %2988 = bitcast float %2903 to i32
  %2989 = ashr i32 %2988, 1
  %2990 = sub nsw i32 1597463174, %2989
  %2991 = bitcast i32 %2990 to float
  %2992 = fmul fast float %2903, 5.000000e-01
  %2993 = fmul fast float %2991, %2991
  %2994 = fmul fast float %2993, %2992
  %2995 = fsub fast float 1.500000e+00, %2994
  %2996 = fmul fast float %2991, %2903
  %2997 = fmul fast float %2996, %2995
  %2998 = bitcast float %2904 to i32
  %2999 = ashr i32 %2998, 1
  %3000 = sub nsw i32 1597463174, %2999
  %3001 = bitcast i32 %3000 to float
  %3002 = fmul fast float %2904, 5.000000e-01
  %3003 = fmul fast float %3001, %3001
  %3004 = fmul fast float %3003, %3002
  %3005 = fsub fast float 1.500000e+00, %3004
  %3006 = fmul fast float %3001, %2904
  %3007 = fmul fast float %3006, %3005
  %3008 = fsub fast float %2987, %2969
  %3009 = fsub fast float %2997, %2973
  %3010 = fsub fast float %3007, %2977
  %3011 = fmul fast float %3008, %2937
  %3012 = fmul fast float %3009, %2939
  %3013 = fmul fast float %3010, %2944
  %3014 = fadd fast float %3011, %2952
  %3015 = fadd fast float %3012, %2956
  %3016 = fadd fast float %3013, %2960
  %3017 = call float @dx.op.unary.f32(i32 7, float %3014)  ; Saturate(value)
  %3018 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3019 = call float @dx.op.unary.f32(i32 7, float %3016)  ; Saturate(value)
  %3020 = fmul fast float %3017, %3017
  %3021 = fmul fast float %3018, %3018
  %3022 = fmul fast float %3019, %3019
  %3023 = fsub fast float %3020, %2902
  %3024 = fsub fast float %3021, %2903
  %3025 = fsub fast float %3022, %2904
  %3026 = fmul fast float %3023, %2927
  %3027 = fmul fast float %3024, %2927
  %3028 = fmul fast float %3025, %2927
  %3029 = fadd fast float %3026, %2902
  %3030 = fadd fast float %3027, %2903
  %3031 = fadd fast float %3028, %2904
  %3032 = fadd fast float %2949, %2913
  %3033 = fsub fast float %3032, %2966
  %3034 = call float @dx.op.unary.f32(i32 7, float %3033)  ; Saturate(value)
  %3035 = fsub fast float %3034, %2913
  %3036 = fmul fast float %3035, %2927
  %3037 = fadd fast float %3036, %2913
  br label %3091

; <label>:3038                                    ; preds = %2926
  %3039 = and i32 %2929, 134217728
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3075, label %3041

; <label>:3041                                    ; preds = %3038
  %3042 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %3043 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3044 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3045 = fadd fast float %3042, -5.000000e-01
  %3046 = fadd fast float %3043, -5.000000e-01
  %3047 = fadd fast float %3044, -5.000000e-01
  %3048 = fmul fast float %3045, %2927
  %3049 = fmul fast float %3046, %2927
  %3050 = fmul fast float %3047, %2927
  %3051 = fadd fast float %3048, 5.000000e-01
  %3052 = fadd fast float %3049, 5.000000e-01
  %3053 = fadd fast float %3050, 5.000000e-01
  %3054 = call float @dx.op.unary.f32(i32 24, float %2902)  ; Sqrt(value)
  %3055 = call float @dx.op.unary.f32(i32 24, float %2903)  ; Sqrt(value)
  %3056 = call float @dx.op.unary.f32(i32 24, float %2904)  ; Sqrt(value)
  %3057 = fmul fast float %3051, 2.000000e+00
  %3058 = fsub fast float 1.000000e+00, %3057
  %3059 = fmul fast float %3058, %3054
  %3060 = fadd fast float %3059, %3057
  %3061 = fmul fast float %3060, %3054
  %3062 = fmul fast float %3052, 2.000000e+00
  %3063 = fsub fast float 1.000000e+00, %3062
  %3064 = fmul fast float %3063, %3055
  %3065 = fadd fast float %3064, %3062
  %3066 = fmul fast float %3065, %3055
  %3067 = fmul fast float %3053, 2.000000e+00
  %3068 = fsub fast float 1.000000e+00, %3067
  %3069 = fmul fast float %3068, %3056
  %3070 = fadd fast float %3069, %3067
  %3071 = fmul fast float %3070, %3056
  %3072 = fmul fast float %3061, %3061
  %3073 = fmul fast float %3066, %3066
  %3074 = fmul fast float %3071, %3071
  br label %3091

; <label>:3075                                    ; preds = %3038
  %3076 = fmul fast float %316, %316
  %3077 = fmul fast float %320, %320
  %3078 = fmul fast float %324, %324
  %3079 = fadd fast float %3076, -1.000000e+00
  %3080 = fadd fast float %3077, -1.000000e+00
  %3081 = fadd fast float %3078, -1.000000e+00
  %3082 = fmul fast float %2927, %3079
  %3083 = fmul fast float %2927, %3080
  %3084 = fmul fast float %2927, %3081
  %3085 = fadd fast float %3082, 1.000000e+00
  %3086 = fadd fast float %3083, 1.000000e+00
  %3087 = fadd fast float %3084, 1.000000e+00
  %3088 = fmul fast float %3085, %2902
  %3089 = fmul fast float %3086, %2903
  %3090 = fmul fast float %3087, %2904
  br label %3091

; <label>:3091                                    ; preds = %3075, %3041, %2932, %2888
  %3092 = phi float [ %3037, %2932 ], [ %2913, %3041 ], [ %2913, %3075 ], [ 0x3FA23C0BE0000000, %2888 ]
  %3093 = phi float [ %3029, %2932 ], [ %3072, %3041 ], [ %3088, %3075 ], [ 1.000000e+00, %2888 ]
  %3094 = phi float [ %3030, %2932 ], [ %3073, %3041 ], [ %3089, %3075 ], [ 1.000000e+00, %2888 ]
  %3095 = phi float [ %3031, %2932 ], [ %3074, %3041 ], [ %3090, %3075 ], [ 1.000000e+00, %2888 ]
  %3096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3097 = extractvalue %dx.types.CBufRet.i32 %3096, 1
  %3098 = and i32 %3097, 1
  %3099 = icmp ne i32 %3098, 0
  %3100 = add i32 %33, 356
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 32
  %3104 = icmp ne i32 %3103, 0
  %3105 = and i1 %3099, %3104
  %3106 = select i1 %3105, float 1.000000e+00, float %3093
  %3107 = select i1 %3105, float 0x3FD3333340000000, float %3094
  %3108 = select i1 %3105, float 0x3FD3333340000000, float %3095
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = and i32 %3110, 32
  %3112 = icmp eq i32 %3111, 0
  br i1 %3112, label %3185, label %3113

; <label>:3113                                    ; preds = %3091
  %3114 = add i32 %33, 140
  %3115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.i32 %3115, 0
  %3117 = add i32 %33, 388
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %3119, 0
  %3121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3121, %dx.types.Handle %63, float %2698, float %2699, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3123 = extractvalue %dx.types.ResRet.f32 %3122, 0
  %3124 = extractvalue %dx.types.ResRet.f32 %3122, 1
  %3125 = extractvalue %dx.types.ResRet.f32 %3122, 2
  %3126 = extractvalue %dx.types.ResRet.f32 %3122, 3
  %3127 = and i32 %3116, 255
  %3128 = uitofp i32 %3127 to float
  %3129 = lshr i32 %3116, 8
  %3130 = and i32 %3129, 255
  %3131 = uitofp i32 %3130 to float
  %3132 = lshr i32 %3116, 16
  %3133 = and i32 %3132, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = fmul fast float %3134, 0x3F70101000000000
  %3136 = fmul fast float %3123, %3128
  %3137 = fadd fast float %3136, %3131
  %3138 = fmul fast float %3137, 0x3F70101000000000
  %3139 = fadd fast float %3124, -5.000000e-01
  %3140 = fadd fast float %3126, -5.000000e-01
  %3141 = fmul fast float %3139, %3135
  %3142 = fmul fast float %3140, %3135
  %3143 = fadd fast float %3141, 5.000000e-01
  %3144 = fadd fast float %3142, 5.000000e-01
  %3145 = fmul fast float %3143, 2.000000e+00
  %3146 = fadd fast float %3145, -1.000000e+00
  %3147 = fmul fast float %3144, 2.000000e+00
  %3148 = fadd fast float %3147, -1.000000e+00
  %3149 = fadd fast float %3146, %3148
  %3150 = fmul fast float %3149, 5.000000e-01
  %3151 = fsub fast float %3146, %3148
  %3152 = fmul fast float %3151, 5.000000e-01
  %3153 = call float @dx.op.unary.f32(i32 6, float %3150)  ; FAbs(value)
  %3154 = fsub fast float 1.000000e+00, %3153
  %3155 = call float @dx.op.unary.f32(i32 6, float %3152)  ; FAbs(value)
  %3156 = fsub fast float %3154, %3155
  %3157 = call float @dx.op.dot3.f32(i32 55, float %3150, float %3152, float %3156, float %3150, float %3152, float %3156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3158 = call float @dx.op.unary.f32(i32 25, float %3157)  ; Rsqrt(value)
  %3159 = fmul fast float %3150, %3158
  %3160 = fmul fast float %3152, %3158
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, 67108864
  %3164 = icmp eq i32 %3163, 0
  br i1 %3164, label %3181, label %3165

; <label>:3165                                    ; preds = %3113
  %3166 = add i32 %33, 328
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 65535
  %3170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3169)  ; LegacyF16ToF32(value)
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 65535
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = lshr i32 %3168, 16
  %3176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3175)  ; LegacyF16ToF32(value)
  %3177 = fsub fast float %3138, %3176
  %3178 = fmul fast float %3177, %3170
  %3179 = fadd fast float %3178, %3174
  %3180 = call float @dx.op.unary.f32(i32 7, float %3179)  ; Saturate(value)
  br label %3181

; <label>:3181                                    ; preds = %3165, %3113
  %3182 = phi float [ %3180, %3165 ], [ %3138, %3113 ]
  %3183 = call float @dx.op.dot2.f32(i32 54, float %3159, float %3160, float %2602, float %2603)  ; Dot2(ax,ay,bx,by)
  %3184 = call float @dx.op.dot2.f32(i32 54, float %3159, float %3160, float %2604, float %2605)  ; Dot2(ax,ay,bx,by)
  br label %3185

; <label>:3185                                    ; preds = %3181, %3091
  %3186 = phi float [ %3182, %3181 ], [ 0x3FD6666660000000, %3091 ]
  %3187 = phi float [ %3183, %3181 ], [ 0.000000e+00, %3091 ]
  %3188 = phi float [ %3184, %3181 ], [ 0.000000e+00, %3091 ]
  %3189 = phi float [ %3125, %3181 ], [ 1.000000e+00, %3091 ]
  %3190 = add i32 %33, 208
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = lshr i32 %3192, 22
  %3194 = shl nuw nsw i32 %3193, 5
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 64
  %3199 = icmp eq i32 %3198, 0
  br i1 %3199, label %3233, label %3200

; <label>:3200                                    ; preds = %3185
  %3201 = add i32 %33, 404
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = add i32 %3203, 0
  %3205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = and i32 %3207, 131072
  %3209 = icmp eq i32 %3208, 0
  %3210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3205, %dx.types.Handle %63, float %2698, float %2699, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3211 = extractvalue %dx.types.ResRet.f32 %3210, 0
  %3212 = extractvalue %dx.types.ResRet.f32 %3210, 1
  %3213 = extractvalue %dx.types.ResRet.f32 %3210, 2
  %3214 = fmul fast float %3211, %304
  %3215 = fmul fast float %3212, %307
  %3216 = fmul fast float %3213, %310
  br i1 %3209, label %3223, label %3217

; <label>:3217                                    ; preds = %3200
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = fmul fast float %3219, %3214
  %3221 = fmul fast float %3219, %3215
  %3222 = fmul fast float %3219, %3216
  br label %3223

; <label>:3223                                    ; preds = %3217, %3200
  %3224 = phi float [ %3220, %3217 ], [ %3214, %3200 ]
  %3225 = phi float [ %3221, %3217 ], [ %3215, %3200 ]
  %3226 = phi float [ %3222, %3217 ], [ %3216, %3200 ]
  %3227 = fmul fast float %3224, %3195
  %3228 = select i1 %172, float %3227, float %3224
  %3229 = call float @dx.op.dot3.f32(i32 55, float %3228, float %3225, float %3226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3230 = select i1 %172, float 0.000000e+00, float %3224
  %3231 = select i1 %172, float %3229, float %3225
  %3232 = select i1 %172, float 0.000000e+00, float %3226
  br label %3233

; <label>:3233                                    ; preds = %3223, %3185
  %3234 = phi float [ %3230, %3223 ], [ 0.000000e+00, %3185 ]
  %3235 = phi float [ %3231, %3223 ], [ 0.000000e+00, %3185 ]
  %3236 = phi float [ %3232, %3223 ], [ 0.000000e+00, %3185 ]
  %3237 = add i32 %33, 144
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 255
  %3241 = uitofp i32 %3240 to float
  %3242 = lshr i32 %3239, 8
  %3243 = and i32 %3242, 255
  %3244 = uitofp i32 %3243 to float
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3106, float %3107, float %3108, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = fmul fast float %3244, %3245
  %3247 = fadd fast float %3246, %3241
  %3248 = fmul fast float %3247, 0x3F70101020000000
  %3249 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  br i1 %2590, label %3250, label %3258

; <label>:3250                                    ; preds = %3233
  %3251 = fsub fast float 1.000000e+00, %2886
  %3252 = fmul fast float %3251, %2579
  %3253 = fmul fast float %3251, %2580
  %3254 = fmul fast float %3251, %2581
  %3255 = fmul fast float %3251, %2582
  %3256 = fmul fast float %3251, %2583
  %3257 = fmul fast float %3251, %2584
  br label %3258

; <label>:3258                                    ; preds = %3250, %3233
  %3259 = phi float [ %3252, %3250 ], [ %2579, %3233 ]
  %3260 = phi float [ %3253, %3250 ], [ %2580, %3233 ]
  %3261 = phi float [ %3254, %3250 ], [ %2581, %3233 ]
  %3262 = phi float [ %3255, %3250 ], [ %2582, %3233 ]
  %3263 = phi float [ %3256, %3250 ], [ %2583, %3233 ]
  %3264 = phi float [ %3257, %3250 ], [ %2584, %3233 ]
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 3
  %3268 = icmp eq i32 %3267, 3
  br i1 %3268, label %3347, label %3269

; <label>:3269                                    ; preds = %3258
  %3270 = and i32 %3266, 16
  %3271 = icmp ne i32 %3270, 0
  %3272 = select i1 %3271, float %2886, float 0.000000e+00
  %3273 = icmp eq i32 %3267, 0
  br i1 %3273, label %3274, label %3302

; <label>:3274                                    ; preds = %3269
  %3275 = and i32 %3266, 64
  %3276 = icmp ne i32 %3275, 0
  %3277 = select i1 %3276, float %2886, float 0.000000e+00
  %3278 = fsub fast float %3106, %3259
  %3279 = fsub fast float %3107, %3260
  %3280 = fsub fast float %3108, %3261
  %3281 = fmul fast float %3272, %3278
  %3282 = fmul fast float %3272, %3279
  %3283 = fmul fast float %3272, %3280
  %3284 = fadd fast float %3281, %3259
  %3285 = fadd fast float %3282, %3260
  %3286 = fadd fast float %3283, %3261
  %3287 = fsub fast float %3092, %2585
  %3288 = fmul fast float %3272, %3287
  %3289 = fadd fast float %3288, %2585
  %3290 = fsub fast float %3234, %3262
  %3291 = fsub fast float %3235, %3263
  %3292 = fsub fast float %3236, %3264
  %3293 = fmul fast float %3277, %3290
  %3294 = fmul fast float %3277, %3291
  %3295 = fmul fast float %3277, %3292
  %3296 = fadd fast float %3293, %3262
  %3297 = fadd fast float %3294, %3263
  %3298 = fadd fast float %3295, %3264
  %3299 = fsub fast float %3249, %2588
  %3300 = fmul fast float %3272, %3299
  %3301 = fadd fast float %3300, %2588
  br label %3347

; <label>:3302                                    ; preds = %3269
  %3303 = icmp eq i32 %3267, 1
  br i1 %3303, label %3304, label %3317

; <label>:3304                                    ; preds = %3302
  %3305 = fadd fast float %3106, -1.000000e+00
  %3306 = fadd fast float %3107, -1.000000e+00
  %3307 = fadd fast float %3108, -1.000000e+00
  %3308 = fmul fast float %3272, %3305
  %3309 = fmul fast float %3272, %3306
  %3310 = fmul fast float %3272, %3307
  %3311 = fadd fast float %3308, 1.000000e+00
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fmul fast float %3311, %3259
  %3315 = fmul fast float %3312, %3260
  %3316 = fmul fast float %3313, %3261
  br label %3347

; <label>:3317                                    ; preds = %3302
  %3318 = icmp eq i32 %3267, 2
  br i1 %3318, label %3319, label %3347

; <label>:3319                                    ; preds = %3317
  %3320 = call float @dx.op.unary.f32(i32 24, float %3106)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %3107)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3323 = fadd fast float %3320, -5.000000e-01
  %3324 = fadd fast float %3321, -5.000000e-01
  %3325 = fadd fast float %3322, -5.000000e-01
  %3326 = fmul fast float %3323, %3272
  %3327 = fmul fast float %3324, %3272
  %3328 = fmul fast float %3325, %3272
  %3329 = fadd fast float %3326, 5.000000e-01
  %3330 = fadd fast float %3327, 5.000000e-01
  %3331 = fadd fast float %3328, 5.000000e-01
  %3332 = fmul fast float %3329, 2.000000e+00
  %3333 = fsub fast float 1.000000e+00, %3332
  %3334 = fmul fast float %3333, %3259
  %3335 = fadd fast float %3334, %3332
  %3336 = fmul fast float %3335, %3259
  %3337 = fmul fast float %3330, 2.000000e+00
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = fmul fast float %3338, %3260
  %3340 = fadd fast float %3339, %3337
  %3341 = fmul fast float %3340, %3260
  %3342 = fmul fast float %3331, 2.000000e+00
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = fmul fast float %3343, %3261
  %3345 = fadd fast float %3344, %3342
  %3346 = fmul fast float %3345, %3261
  br label %3347

; <label>:3347                                    ; preds = %3319, %3317, %3304, %3274, %3258
  %3348 = phi float [ %3259, %3258 ], [ %3336, %3319 ], [ %3259, %3317 ], [ %3314, %3304 ], [ %3284, %3274 ]
  %3349 = phi float [ %3260, %3258 ], [ %3341, %3319 ], [ %3260, %3317 ], [ %3315, %3304 ], [ %3285, %3274 ]
  %3350 = phi float [ %3261, %3258 ], [ %3346, %3319 ], [ %3261, %3317 ], [ %3316, %3304 ], [ %3286, %3274 ]
  %3351 = phi float [ %3262, %3258 ], [ %3262, %3319 ], [ %3262, %3317 ], [ %3262, %3304 ], [ %3296, %3274 ]
  %3352 = phi float [ %3263, %3258 ], [ %3263, %3319 ], [ %3263, %3317 ], [ %3263, %3304 ], [ %3297, %3274 ]
  %3353 = phi float [ %3264, %3258 ], [ %3264, %3319 ], [ %3264, %3317 ], [ %3264, %3304 ], [ %3298, %3274 ]
  %3354 = phi float [ %2585, %3258 ], [ %2585, %3319 ], [ %2585, %3317 ], [ %2585, %3304 ], [ %3289, %3274 ]
  %3355 = phi float [ %2588, %3258 ], [ %2588, %3319 ], [ %2588, %3317 ], [ %2588, %3304 ], [ %3301, %3274 ]
  %3356 = and i32 %3266, 12
  %3357 = icmp eq i32 %3356, 12
  br i1 %3357, label %3430, label %3358

; <label>:3358                                    ; preds = %3347
  %3359 = and i32 %3266, 2097184
  %3360 = icmp eq i32 %3359, 2097184
  %3361 = select i1 %3360, float %2886, float 0.000000e+00
  %3362 = and i32 %3266, 4194336
  %3363 = icmp eq i32 %3362, 4194336
  %3364 = select i1 %3363, float %2886, float 0.000000e+00
  %3365 = and i32 %3266, 8388640
  %3366 = icmp eq i32 %3365, 8388640
  %3367 = select i1 %3366, float %2886, float 0.000000e+00
  %3368 = icmp eq i32 %3356, 0
  br i1 %3368, label %3369, label %3382

; <label>:3369                                    ; preds = %3358
  %3370 = fsub fast float %3187, %2577
  %3371 = fsub fast float %3188, %2578
  %3372 = fmul fast float %3361, %3370
  %3373 = fmul fast float %3361, %3371
  %3374 = fadd fast float %3372, %2577
  %3375 = fadd fast float %3373, %2578
  %3376 = fsub fast float %3189, %2587
  %3377 = fmul fast float %3364, %3376
  %3378 = fadd fast float %3377, %2587
  %3379 = fsub fast float %3186, %2586
  %3380 = fmul fast float %3367, %3379
  %3381 = fadd fast float %3380, %2586
  br label %3430

; <label>:3382                                    ; preds = %3358
  %3383 = icmp eq i32 %3356, 4
  br i1 %3383, label %3384, label %3416

; <label>:3384                                    ; preds = %3382
  %3385 = fmul fast float %3361, %3187
  %3386 = fmul fast float %3361, %3188
  %3387 = fadd fast float %3385, %2577
  %3388 = fadd fast float %3386, %2578
  %3389 = call float @dx.op.binary.f32(i32 36, float %2587, float %3189)  ; FMin(a,b)
  %3390 = fsub fast float %3389, %2587
  %3391 = fmul fast float %3390, %3364
  %3392 = fadd fast float %3391, %2587
  %3393 = fadd fast float %3186, %2586
  %3394 = fmul fast float %3393, 0x3FF337FAE0000000
  %3395 = fmul fast float %2586, %2586
  %3396 = fmul fast float %3186, %3186
  %3397 = fadd fast float %3396, %3395
  %3398 = fmul fast float %3397, 0x3FE5152B00000000
  %3399 = fmul fast float %2586, 0xBFCC1F85E0000000
  %3400 = fmul fast float %3399, %3186
  %3401 = fadd fast float %3400, 0xBFE1363700000000
  %3402 = fadd fast float %3401, %3394
  %3403 = fsub fast float %3402, %3398
  %3404 = fmul fast float %3393, 0x3FBA6F0D00000000
  %3405 = fmul fast float %3397, 0x3FD0432880000000
  %3406 = fmul fast float %2586, 0xBFEF110800000000
  %3407 = fmul fast float %3406, %3186
  %3408 = fadd fast float %3407, 1.000000e+00
  %3409 = fsub fast float %3408, %3404
  %3410 = fadd fast float %3409, %3405
  %3411 = fdiv fast float %3403, %3410
  %3412 = call float @dx.op.unary.f32(i32 7, float %3411)  ; Saturate(value)
  %3413 = fsub fast float %3412, %2586
  %3414 = fmul fast float %3413, %3367
  %3415 = fadd fast float %3414, %2586
  br label %3430

; <label>:3416                                    ; preds = %3382
  %3417 = icmp eq i32 %3356, 8
  br i1 %3417, label %3418, label %3430

; <label>:3418                                    ; preds = %3416
  %3419 = fmul fast float %3361, %3187
  %3420 = fmul fast float %3361, %3188
  %3421 = fadd fast float %3419, %2577
  %3422 = fadd fast float %3420, %2578
  %3423 = call float @dx.op.binary.f32(i32 36, float %2587, float %3189)  ; FMin(a,b)
  %3424 = fsub fast float %3423, %2587
  %3425 = fmul fast float %3424, %3364
  %3426 = fadd fast float %3425, %2587
  %3427 = fsub fast float %3186, %2586
  %3428 = fmul fast float %3367, %3427
  %3429 = fadd fast float %3428, %2586
  br label %3430

; <label>:3430                                    ; preds = %3418, %3416, %3384, %3369, %3347, %2885, %2589, %2576
  %3431 = phi float [ %2577, %3347 ], [ %2577, %2885 ], [ %2577, %2576 ], [ %2577, %2589 ], [ %3374, %3369 ], [ %3387, %3384 ], [ %2577, %3416 ], [ %3421, %3418 ]
  %3432 = phi float [ %2578, %3347 ], [ %2578, %2885 ], [ %2578, %2576 ], [ %2578, %2589 ], [ %3375, %3369 ], [ %3388, %3384 ], [ %2578, %3416 ], [ %3422, %3418 ]
  %3433 = phi float [ %3348, %3347 ], [ %2579, %2885 ], [ %2579, %2576 ], [ %2579, %2589 ], [ %3348, %3369 ], [ %3348, %3384 ], [ %3348, %3416 ], [ %3348, %3418 ]
  %3434 = phi float [ %3349, %3347 ], [ %2580, %2885 ], [ %2580, %2576 ], [ %2580, %2589 ], [ %3349, %3369 ], [ %3349, %3384 ], [ %3349, %3416 ], [ %3349, %3418 ]
  %3435 = phi float [ %3350, %3347 ], [ %2581, %2885 ], [ %2581, %2576 ], [ %2581, %2589 ], [ %3350, %3369 ], [ %3350, %3384 ], [ %3350, %3416 ], [ %3350, %3418 ]
  %3436 = phi float [ %3351, %3347 ], [ %2582, %2885 ], [ %2582, %2576 ], [ %2582, %2589 ], [ %3351, %3369 ], [ %3351, %3384 ], [ %3351, %3416 ], [ %3351, %3418 ]
  %3437 = phi float [ %3352, %3347 ], [ %2583, %2885 ], [ %2583, %2576 ], [ %2583, %2589 ], [ %3352, %3369 ], [ %3352, %3384 ], [ %3352, %3416 ], [ %3352, %3418 ]
  %3438 = phi float [ %3353, %3347 ], [ %2584, %2885 ], [ %2584, %2576 ], [ %2584, %2589 ], [ %3353, %3369 ], [ %3353, %3384 ], [ %3353, %3416 ], [ %3353, %3418 ]
  %3439 = phi float [ %3354, %3347 ], [ %2585, %2885 ], [ %2585, %2576 ], [ %2585, %2589 ], [ %3354, %3369 ], [ %3354, %3384 ], [ %3354, %3416 ], [ %3354, %3418 ]
  %3440 = phi float [ %2586, %3347 ], [ %2586, %2885 ], [ %2586, %2576 ], [ %2586, %2589 ], [ %3381, %3369 ], [ %3415, %3384 ], [ %2586, %3416 ], [ %3429, %3418 ]
  %3441 = phi float [ %2587, %3347 ], [ %2587, %2885 ], [ %2587, %2576 ], [ %2587, %2589 ], [ %3378, %3369 ], [ %3392, %3384 ], [ %2587, %3416 ], [ %3426, %3418 ]
  %3442 = phi float [ %3355, %3347 ], [ %2588, %2885 ], [ %2588, %2576 ], [ %2588, %2589 ], [ %3355, %3369 ], [ %3355, %3384 ], [ %3355, %3416 ], [ %3355, %3418 ]
  %3443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3444 = extractvalue %dx.types.CBufRet.f32 %3443, 0
  %3445 = call float @dx.op.dot2.f32(i32 54, float %3431, float %3432, float %3431, float %3432)  ; Dot2(ax,ay,bx,by)
  %3446 = fmul fast float %3445, 0x3FE3333340000000
  %3447 = fsub fast float 1.000000e+00, %3446
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3431, float %3432, float %3447, float %3431, float %3432, float %3447)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = call float @dx.op.unary.f32(i32 25, float %3448)  ; Rsqrt(value)
  %3450 = fmul fast float %3449, %3431
  %3451 = fmul fast float %3449, %3432
  %3452 = fmul fast float %3447, %3449
  %3453 = fmul fast float %3452, %74
  %3454 = fmul fast float %3452, %75
  %3455 = fmul fast float %3452, %76
  %3456 = fmul fast float %3450, %48
  %3457 = fmul fast float %3450, %49
  %3458 = fmul fast float %3450, %50
  %3459 = fadd fast float %3453, %3456
  %3460 = fadd fast float %3454, %3457
  %3461 = fadd fast float %3455, %3458
  %3462 = fmul fast float %86, %3451
  %3463 = fmul fast float %87, %3451
  %3464 = fmul fast float %88, %3451
  %3465 = fadd fast float %3459, %3462
  %3466 = fadd fast float %3460, %3463
  %3467 = fadd fast float %3461, %3464
  %3468 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3466, float %3467, float %3465, float %3466, float %3467)  ; Dot3(ax,ay,az,bx,by,bz)
  %3469 = call float @dx.op.unary.f32(i32 25, float %3468)  ; Rsqrt(value)
  %3470 = fmul fast float %3465, %3469
  %3471 = fmul fast float %3466, %3469
  %3472 = fmul fast float %3467, %3469
  %3473 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3474 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3475 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3476 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3477 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3478 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3479 = fadd fast float %3473, %130
  %3480 = fadd fast float %3474, %131
  %3481 = fadd fast float %3475, %132
  %3482 = fadd fast float %3476, %130
  %3483 = fadd fast float %3477, %131
  %3484 = fadd fast float %3478, %132
  %3485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3485, 0
  %3487 = extractvalue %dx.types.CBufRet.f32 %3485, 1
  %3488 = extractvalue %dx.types.CBufRet.f32 %3485, 2
  %3489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.f32 %3489, 2
  %3491 = extractvalue %dx.types.CBufRet.f32 %3489, 3
  %3492 = fmul fast float %3486, %67
  %3493 = fmul fast float %3492, %3490
  %3494 = fmul fast float %3487, %68
  %3495 = fmul fast float %3494, %3491
  %3496 = fptoui float %3493 to i32
  %3497 = fptoui float %3495 to i32
  %3498 = fadd fast float %3486, -1.000000e+00
  %3499 = fadd fast float %3487, -1.000000e+00
  %3500 = fptoui float %3498 to i32
  %3501 = fptoui float %3499 to i32
  %3502 = call i32 @dx.op.binary.i32(i32 40, i32 %3496, i32 %3500)  ; UMin(a,b)
  %3503 = call i32 @dx.op.binary.i32(i32 40, i32 %3497, i32 %3501)  ; UMin(a,b)
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3506 = extractvalue %dx.types.CBufRet.f32 %3504, 3
  %3507 = fmul fast float %3505, %62
  %3508 = fsub fast float %3507, %3506
  %3509 = fadd fast float %3488, -1.000000e+00
  %3510 = call float @dx.op.binary.f32(i32 36, float %3508, float %3509)  ; FMin(a,b)
  %3511 = fptoui float %3510 to i32
  %3512 = fptoui float %3486 to i32
  %3513 = fptoui float %3487 to i32
  %3514 = mul i32 %3511, %3513
  %3515 = add i32 %3514, %3503
  %3516 = mul i32 %3515, %3512
  %3517 = add i32 %3516, %3502
  %3518 = shl i32 %3517, 2
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = and i32 %3520, 1023
  %3522 = lshr i32 %3520, 10
  %3523 = icmp eq i32 %3521, 0
  br i1 %3523, label %3949, label %3524

; <label>:3524                                    ; preds = %3430
  %3525 = and i32 %3520, 1023
  br label %3526

; <label>:3526                                    ; preds = %3652, %3524
  %3527 = phi i32 [ %3602, %3652 ], [ 0, %3524 ]
  %3528 = phi float [ %3653, %3652 ], [ 0.000000e+00, %3524 ]
  %3529 = phi float [ %3654, %3652 ], [ %3444, %3524 ]
  %3530 = phi float [ %3655, %3652 ], [ %3442, %3524 ]
  %3531 = phi float [ %3656, %3652 ], [ 0.000000e+00, %3524 ]
  %3532 = phi float [ %3657, %3652 ], [ 0.000000e+00, %3524 ]
  %3533 = phi float [ %3658, %3652 ], [ %3436, %3524 ]
  %3534 = phi float [ %3659, %3652 ], [ %3437, %3524 ]
  %3535 = phi float [ %3660, %3652 ], [ %3438, %3524 ]
  %3536 = phi float [ %3661, %3652 ], [ %3470, %3524 ]
  %3537 = phi float [ %3662, %3652 ], [ %3471, %3524 ]
  %3538 = phi float [ %3663, %3652 ], [ %3472, %3524 ]
  %3539 = phi float [ %3664, %3652 ], [ %3441, %3524 ]
  %3540 = phi float [ %3665, %3652 ], [ %3440, %3524 ]
  %3541 = phi float [ %3666, %3652 ], [ 0.000000e+00, %3524 ]
  %3542 = phi float [ %3667, %3652 ], [ %3439, %3524 ]
  %3543 = phi float [ %3668, %3652 ], [ %3433, %3524 ]
  %3544 = phi float [ %3669, %3652 ], [ %3434, %3524 ]
  %3545 = phi float [ %3670, %3652 ], [ %3435, %3524 ]
  %3546 = add nuw nsw i32 %3527, %3522
  %3547 = shl i32 %3546, 2
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = shl i32 %3549, 8
  %3551 = or i32 %3550, 48
  %3552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.f32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.f32 %3552, 1
  %3555 = extractvalue %dx.types.ResRet.f32 %3552, 2
  %3556 = extractvalue %dx.types.ResRet.f32 %3552, 3
  %3557 = or i32 %3550, 64
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = extractvalue %dx.types.ResRet.i32 %3558, 1
  %3561 = or i32 %3550, 80
  %3562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 2
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 3
  %3565 = or i32 %3550, 96
  %3566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.f32 %3566, 0
  %3568 = extractvalue %dx.types.ResRet.f32 %3566, 1
  %3569 = extractvalue %dx.types.ResRet.f32 %3566, 2
  %3570 = extractvalue %dx.types.ResRet.f32 %3566, 3
  %3571 = or i32 %3550, 112
  %3572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 2
  %3574 = or i32 %3550, 128
  %3575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3578 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3579 = extractvalue %dx.types.ResRet.f32 %3575, 3
  %3580 = or i32 %3550, 144
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3585 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3586 = or i32 %3550, 160
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = extractvalue %dx.types.ResRet.f32 %3587, 3
  %3592 = or i32 %3550, 192
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = or i32 %3550, 208
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = or i32 %3550, 248
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = add nuw nsw i32 %3527, 1
  %3603 = bitcast float %3556 to i32
  %3604 = and i32 %3603, 512
  %3605 = icmp eq i32 %3604, 0
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3550, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = call float @dx.op.dot4.f32(i32 56, float %3607, float %3608, float %3609, float %3610, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3612 = or i32 %3550, 16
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = call float @dx.op.dot4.f32(i32 56, float %3614, float %3615, float %3616, float %3617, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3619 = or i32 %3550, 32
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3625 = call float @dx.op.dot4.f32(i32 56, float %3621, float %3622, float %3623, float %3624, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3626 = call float @dx.op.unary.f32(i32 27, float %3611)  ; Round_ni(value)
  %3627 = call float @dx.op.unary.f32(i32 6, float %3626)  ; FAbs(value)
  %3628 = call float @dx.op.unary.f32(i32 27, float %3618)  ; Round_ni(value)
  %3629 = call float @dx.op.unary.f32(i32 6, float %3628)  ; FAbs(value)
  %3630 = call float @dx.op.unary.f32(i32 6, float %3625)  ; FAbs(value)
  %3631 = call float @dx.op.unary.f32(i32 27, float %3630)  ; Round_ni(value)
  %3632 = fadd fast float %3629, %3627
  %3633 = fadd fast float %3632, %3631
  %3634 = fcmp fast oeq float %3633, 0.000000e+00
  %3635 = call float @dx.op.dot4.f32(i32 56, float %3607, float %3608, float %3609, float %3610, float %3479, float %3480, float %3481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3636 = call float @dx.op.dot4.f32(i32 56, float %3614, float %3615, float %3616, float %3617, float %3479, float %3480, float %3481, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3637 = call float @dx.op.dot4.f32(i32 56, float %3607, float %3608, float %3609, float %3610, float %3482, float %3483, float %3484, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3638 = call float @dx.op.dot4.f32(i32 56, float %3614, float %3615, float %3616, float %3617, float %3482, float %3483, float %3484, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3639 = fsub fast float %3635, %3611
  %3640 = fsub fast float %3637, %3611
  %3641 = fsub fast float %3636, %3618
  %3642 = fsub fast float %3638, %3618
  %3643 = call float @dx.op.dot3.f32(i32 55, float %3553, float %3554, float %3555, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 2
  %3646 = fadd fast float %3645, %3643
  %3647 = call float @dx.op.unary.f32(i32 7, float %3646)  ; Saturate(value)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3644, 0
  %3649 = fcmp fast ogt float %3647, %3648
  %3650 = and i1 %3634, %3649
  %3651 = and i1 %3605, %3650
  br i1 %3651, label %3672, label %3652

; <label>:3652                                    ; preds = %3935, %3753, %3672, %3526
  %3653 = phi float [ %3528, %3672 ], [ %3756, %3753 ], [ %3756, %3935 ], [ %3528, %3526 ]
  %3654 = phi float [ %3529, %3672 ], [ %3529, %3753 ], [ %3910, %3935 ], [ %3529, %3526 ]
  %3655 = phi float [ %3530, %3672 ], [ %3530, %3753 ], [ %3908, %3935 ], [ %3530, %3526 ]
  %3656 = phi float [ %3531, %3672 ], [ %3531, %3753 ], [ %3880, %3935 ], [ %3531, %3526 ]
  %3657 = phi float [ %3532, %3672 ], [ %3532, %3753 ], [ %3878, %3935 ], [ %3532, %3526 ]
  %3658 = phi float [ %3533, %3672 ], [ %3533, %3753 ], [ %3945, %3935 ], [ %3533, %3526 ]
  %3659 = phi float [ %3534, %3672 ], [ %3534, %3753 ], [ %3946, %3935 ], [ %3534, %3526 ]
  %3660 = phi float [ %3535, %3672 ], [ %3535, %3753 ], [ %3947, %3935 ], [ %3535, %3526 ]
  %3661 = phi float [ %3536, %3672 ], [ %3536, %3753 ], [ %3859, %3935 ], [ %3536, %3526 ]
  %3662 = phi float [ %3537, %3672 ], [ %3537, %3753 ], [ %3860, %3935 ], [ %3537, %3526 ]
  %3663 = phi float [ %3538, %3672 ], [ %3538, %3753 ], [ %3861, %3935 ], [ %3538, %3526 ]
  %3664 = phi float [ %3539, %3672 ], [ %3539, %3753 ], [ %3888, %3935 ], [ %3539, %3526 ]
  %3665 = phi float [ %3540, %3672 ], [ %3540, %3753 ], [ %3885, %3935 ], [ %3540, %3526 ]
  %3666 = phi float [ %3541, %3672 ], [ %3541, %3753 ], [ %3882, %3935 ], [ %3541, %3526 ]
  %3667 = phi float [ %3542, %3672 ], [ %3542, %3753 ], [ %3876, %3935 ], [ %3542, %3526 ]
  %3668 = phi float [ %3543, %3672 ], [ %3543, %3753 ], [ %3871, %3935 ], [ %3543, %3526 ]
  %3669 = phi float [ %3544, %3672 ], [ %3544, %3753 ], [ %3872, %3935 ], [ %3544, %3526 ]
  %3670 = phi float [ %3545, %3672 ], [ %3545, %3753 ], [ %3873, %3935 ], [ %3545, %3526 ]
  %3671 = icmp eq i32 %3602, %3525
  br i1 %3671, label %3948, label %3526

; <label>:3672                                    ; preds = %3526
  %3673 = extractvalue %dx.types.ResRet.f32 %3572, 3
  %3674 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3675 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3676 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3677 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3678 = extractvalue %dx.types.ResRet.i32 %3558, 3
  %3679 = extractvalue %dx.types.ResRet.i32 %3558, 2
  %3680 = add i32 %3678, 0
  %3681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3680, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3683 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3681, %dx.types.Handle %3682, float %3611, float %3618, float undef, float undef, i32 0, i32 0, i32 undef, float %3639, float %3641, float undef, float %3640, float %3642, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = fmul fast float %3684, %3677
  %3686 = fadd fast float %3685, %3676
  %3687 = call float @dx.op.unary.f32(i32 7, float %3686)  ; Saturate(value)
  %3688 = fmul fast float %3611, %3567
  %3689 = call float @dx.op.tertiary.f32(i32 46, float %3568, float %3618, float %3688)  ; FMad(a,b,c)
  %3690 = fadd fast float %3689, %3675
  %3691 = fmul fast float %3611, %3569
  %3692 = call float @dx.op.tertiary.f32(i32 46, float %3570, float %3618, float %3691)  ; FMad(a,b,c)
  %3693 = fadd fast float %3692, %3674
  %3694 = fmul fast float %3639, %3567
  %3695 = call float @dx.op.tertiary.f32(i32 46, float %3568, float %3641, float %3694)  ; FMad(a,b,c)
  %3696 = fmul fast float %3639, %3569
  %3697 = call float @dx.op.tertiary.f32(i32 46, float %3570, float %3641, float %3696)  ; FMad(a,b,c)
  %3698 = fmul fast float %3640, %3567
  %3699 = call float @dx.op.tertiary.f32(i32 46, float %3568, float %3642, float %3698)  ; FMad(a,b,c)
  %3700 = fmul fast float %3640, %3569
  %3701 = call float @dx.op.tertiary.f32(i32 46, float %3570, float %3642, float %3700)  ; FMad(a,b,c)
  %3702 = add i32 %3679, 0
  %3703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3702, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3704 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3703, %dx.types.Handle %3682, float %3690, float %3693, float undef, float undef, i32 0, i32 0, i32 undef, float %3695, float %3697, float undef, float %3699, float %3701, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = and i32 %3603, 1024
  %3707 = icmp ne i32 %3706, 0
  %3708 = fcmp fast ogt float %3705, 0x3FE0101020000000
  %3709 = uitofp i1 %3708 to float
  %3710 = select i1 %3707, float %3709, float %3705
  %3711 = and i32 %3603, 8192
  %3712 = icmp ne i32 %3711, 0
  %3713 = select i1 %3712, float %3673, float 1.000000e+00
  %3714 = fmul fast float %3611, 2.000000e+00
  %3715 = fadd fast float %3714, -1.000000e+00
  %3716 = call float @dx.op.unary.f32(i32 6, float %3715)  ; FAbs(value)
  %3717 = fmul fast float %3716, %3600
  %3718 = fsub fast float %3717, %3600
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = fmul fast float %3618, 2.000000e+00
  %3721 = fadd fast float %3720, -1.000000e+00
  %3722 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3723 = fmul fast float %3722, %3601
  %3724 = fsub fast float %3723, %3601
  %3725 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3726 = fmul fast float %3630, %3563
  %3727 = fsub fast float %3726, %3563
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = fmul fast float %3687, %3713
  %3730 = fmul fast float %3729, %3684
  %3731 = fmul fast float %3730, %3719
  %3732 = fmul fast float %3731, %3710
  %3733 = fmul fast float %3732, %3725
  %3734 = fmul fast float %3733, %3728
  %3735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3736 = extractvalue %dx.types.CBufRet.f32 %3735, 1
  %3737 = extractvalue %dx.types.CBufRet.f32 %3735, 0
  %3738 = fsub fast float %3647, %3737
  %3739 = fmul fast float %3738, %3736
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = fmul fast float %3734, %3564
  %3742 = fadd fast float %3734, %3564
  %3743 = fmul fast float %3742, %3573
  %3744 = fsub fast float %3743, %3573
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = and i32 %3603, 128
  %3747 = icmp ne i32 %3746, 0
  %3748 = select i1 %3747, float %3745, float %3741
  %3749 = fmul fast float %3748, %3740
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = fcmp fast ugt float %3749, %3751
  br i1 %3752, label %3753, label %3652

; <label>:3753                                    ; preds = %3672
  %3754 = select i1 %3712, float %3749, float 0.000000e+00
  %3755 = fadd fast float %3754, %3528
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  br i1 %3712, label %3652, label %3757

; <label>:3757                                    ; preds = %3753
  %3758 = and i32 %3603, 4
  %3759 = and i32 %3603, 8
  %3760 = add i32 %3559, 0
  %3761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3760, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3763 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3761, %dx.types.Handle %3762, float %3690, float %3693, float undef, float undef, i32 0, i32 0, i32 undef, float %3695, float %3697, float undef, float %3699, float %3701, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3764 = extractvalue %dx.types.ResRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.ResRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.ResRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.ResRet.f32 %3763, 3
  %3768 = bitcast float %3585 to i32
  %3769 = and i32 %3768, 255
  %3770 = uitofp i32 %3769 to float
  %3771 = lshr i32 %3768, 8
  %3772 = and i32 %3771, 255
  %3773 = uitofp i32 %3772 to float
  %3774 = fmul fast float %3767, %3770
  %3775 = fadd fast float %3774, %3773
  %3776 = fmul fast float %3775, 0x3F70101000000000
  %3777 = add i32 %3560, 0
  %3778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3777, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3779 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3778, %dx.types.Handle %3762, float %3690, float %3693, float undef, float undef, i32 0, i32 0, i32 undef, float %3695, float %3697, float undef, float %3699, float %3701, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = extractvalue %dx.types.ResRet.f32 %3779, 1
  %3782 = extractvalue %dx.types.ResRet.f32 %3779, 2
  %3783 = extractvalue %dx.types.ResRet.f32 %3779, 3
  %3784 = bitcast float %3579 to i32
  %3785 = and i32 %3784, 255
  %3786 = uitofp i32 %3785 to float
  %3787 = lshr i32 %3784, 8
  %3788 = and i32 %3787, 255
  %3789 = uitofp i32 %3788 to float
  %3790 = lshr i32 %3784, 16
  %3791 = and i32 %3790, 255
  %3792 = uitofp i32 %3791 to float
  %3793 = fmul fast float %3792, 0x3F70101000000000
  %3794 = fmul fast float %3780, %3786
  %3795 = fadd fast float %3794, %3789
  %3796 = fmul fast float %3795, 0x3F70101000000000
  %3797 = fadd fast float %3781, -5.000000e-01
  %3798 = fadd fast float %3783, -5.000000e-01
  %3799 = fmul fast float %3797, %3793
  %3800 = fmul fast float %3798, %3793
  %3801 = fadd fast float %3799, 5.000000e-01
  %3802 = fadd fast float %3800, 5.000000e-01
  %3803 = fmul fast float %3764, %3588
  %3804 = fmul fast float %3765, %3589
  %3805 = fmul fast float %3766, %3590
  %3806 = fmul fast float %3801, 2.000000e+00
  %3807 = fadd fast float %3806, -1.000000e+00
  %3808 = fmul fast float %3802, 2.000000e+00
  %3809 = fadd fast float %3808, -1.000000e+00
  %3810 = fadd fast float %3807, %3809
  %3811 = fmul fast float %3810, 5.000000e-01
  %3812 = fsub fast float %3807, %3809
  %3813 = fmul fast float %3812, 5.000000e-01
  %3814 = call float @dx.op.unary.f32(i32 6, float %3811)  ; FAbs(value)
  %3815 = fsub fast float 1.000000e+00, %3814
  %3816 = call float @dx.op.unary.f32(i32 6, float %3813)  ; FAbs(value)
  %3817 = fsub fast float %3815, %3816
  %3818 = call float @dx.op.dot3.f32(i32 55, float %3811, float %3813, float %3817, float %3811, float %3813, float %3817)  ; Dot3(ax,ay,az,bx,by,bz)
  %3819 = call float @dx.op.unary.f32(i32 25, float %3818)  ; Rsqrt(value)
  %3820 = fmul fast float %3811, %3819
  %3821 = fmul fast float %3813, %3819
  %3822 = fmul fast float %3819, %3817
  %3823 = fmul fast float %3822, %3553
  %3824 = fmul fast float %3822, %3554
  %3825 = fmul fast float %3822, %3555
  %3826 = fmul fast float %3820, %3576
  %3827 = fmul fast float %3820, %3577
  %3828 = fmul fast float %3820, %3578
  %3829 = fadd fast float %3826, %3823
  %3830 = fadd fast float %3827, %3824
  %3831 = fadd fast float %3828, %3825
  %3832 = fmul fast float %3821, %3582
  %3833 = fmul fast float %3821, %3583
  %3834 = fmul fast float %3821, %3584
  %3835 = fadd fast float %3829, %3832
  %3836 = fadd fast float %3830, %3833
  %3837 = fadd fast float %3831, %3834
  %3838 = call float @dx.op.dot3.f32(i32 55, float %3835, float %3836, float %3837, float %3835, float %3836, float %3837)  ; Dot3(ax,ay,az,bx,by,bz)
  %3839 = call float @dx.op.unary.f32(i32 25, float %3838)  ; Rsqrt(value)
  %3840 = fmul fast float %3835, %3839
  %3841 = fmul fast float %3836, %3839
  %3842 = fmul fast float %3837, %3839
  %3843 = icmp ne i32 %3759, 0
  %3844 = select i1 %3843, float 1.000000e+00, float 0.000000e+00
  %3845 = fmul fast float %3749, %3844
  %3846 = and i32 %3603, 1
  %3847 = icmp eq i32 %3846, 0
  br i1 %3847, label %3848, label %3852

; <label>:3848                                    ; preds = %3757
  %3849 = fsub fast float %3840, %3536
  %3850 = fsub fast float %3841, %3537
  %3851 = fsub fast float %3842, %3538
  br label %3852

; <label>:3852                                    ; preds = %3848, %3757
  %3853 = phi float [ %3849, %3848 ], [ %3840, %3757 ]
  %3854 = phi float [ %3850, %3848 ], [ %3841, %3757 ]
  %3855 = phi float [ %3851, %3848 ], [ %3842, %3757 ]
  %3856 = fmul float %3855, %3845
  %3857 = fmul float %3854, %3845
  %3858 = fmul float %3853, %3845
  %3859 = fadd fast float %3858, %3536
  %3860 = fadd fast float %3857, %3537
  %3861 = fadd fast float %3856, %3538
  %3862 = icmp ne i32 %3758, 0
  %3863 = select i1 %3862, float 1.000000e+00, float 0.000000e+00
  %3864 = fmul fast float %3749, %3863
  %3865 = fsub fast float %3803, %3543
  %3866 = fsub fast float %3804, %3544
  %3867 = fsub fast float %3805, %3545
  %3868 = fmul fast float %3865, %3864
  %3869 = fmul fast float %3866, %3864
  %3870 = fmul fast float %3867, %3864
  %3871 = fadd fast float %3868, %3543
  %3872 = fadd fast float %3869, %3544
  %3873 = fadd fast float %3870, %3545
  %3874 = fsub fast float %3776, %3542
  %3875 = fmul fast float %3874, %3864
  %3876 = fadd fast float %3875, %3542
  %3877 = fmul fast float %3864, %3532
  %3878 = fsub fast float %3532, %3877
  %3879 = fmul fast float %3864, %3531
  %3880 = fsub fast float %3531, %3879
  %3881 = fadd fast float %3749, %3541
  %3882 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3883 = fsub fast float %3796, %3540
  %3884 = fmul fast float %3883, %3845
  %3885 = fadd fast float %3884, %3540
  %3886 = fsub fast float %3782, %3539
  %3887 = fmul fast float %3886, %3845
  %3888 = fadd fast float %3887, %3539
  %3889 = call float @dx.op.dot3.f32(i32 55, float %3803, float %3804, float %3805, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.CBufRet.f32 %3890, 1
  %3893 = fmul fast float %3892, %3889
  %3894 = fadd fast float %3893, %3891
  %3895 = call float @dx.op.unary.f32(i32 7, float %3894)  ; Saturate(value)
  %3896 = bitcast float %3591 to i32
  %3897 = and i32 %3896, 65535
  %3898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3897)  ; LegacyF16ToF32(value)
  %3899 = lshr i32 %3896, 16
  %3900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3899)  ; LegacyF16ToF32(value)
  %3901 = fcmp fast oge float %3898, 0.000000e+00
  %3902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3903 = extractvalue %dx.types.CBufRet.f32 %3902, 0
  %3904 = select i1 %3901, float %3898, float %3903
  %3905 = fadd fast float %3904, %3900
  %3906 = fsub fast float %3895, %3530
  %3907 = fmul fast float %3906, %3749
  %3908 = fadd fast float %3907, %3530
  %3909 = fmul fast float %3905, %3749
  %3910 = call float @dx.op.binary.f32(i32 35, float %3529, float %3909)  ; FMax(a,b)
  %3911 = and i32 %3603, 16
  %3912 = icmp eq i32 %3911, 0
  br i1 %3912, label %3935, label %3913

; <label>:3913                                    ; preds = %3852
  %3914 = bitcast float %3597 to i32
  %3915 = add i32 %3594, 0
  %3916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3915, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3916, %dx.types.Handle %3762, float %3690, float %3693, float undef, float undef, i32 0, i32 0, i32 undef, float %3695, float %3697, float undef, float %3699, float %3701, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = and i32 %3914, 65535
  %3922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3921)  ; LegacyF16ToF32(value)
  %3923 = fmul fast float %3918, %3588
  %3924 = fmul fast float %3919, %3589
  %3925 = fmul fast float %3920, %3590
  %3926 = and i32 %3603, 16384
  %3927 = icmp ne i32 %3926, 0
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 0
  %3930 = select i1 %3927, float %3929, float 1.000000e+00
  %3931 = fmul fast float %3930, %3922
  %3932 = fmul fast float %3923, %3931
  %3933 = fmul fast float %3924, %3931
  %3934 = fmul fast float %3925, %3931
  br label %3935

; <label>:3935                                    ; preds = %3913, %3852
  %3936 = phi float [ %3932, %3913 ], [ 0.000000e+00, %3852 ]
  %3937 = phi float [ %3933, %3913 ], [ 0.000000e+00, %3852 ]
  %3938 = phi float [ %3934, %3913 ], [ 0.000000e+00, %3852 ]
  %3939 = fsub fast float %3936, %3533
  %3940 = fsub fast float %3937, %3534
  %3941 = fsub fast float %3938, %3535
  %3942 = fmul fast float %3939, %3749
  %3943 = fmul fast float %3940, %3749
  %3944 = fmul fast float %3941, %3749
  %3945 = fadd fast float %3942, %3533
  %3946 = fadd fast float %3943, %3534
  %3947 = fadd fast float %3944, %3535
  br label %3652

; <label>:3948                                    ; preds = %3652
  br label %3949

; <label>:3949                                    ; preds = %3948, %3430
  %3950 = phi float [ 0.000000e+00, %3430 ], [ %3653, %3948 ]
  %3951 = phi float [ %3444, %3430 ], [ %3654, %3948 ]
  %3952 = phi float [ %3442, %3430 ], [ %3655, %3948 ]
  %3953 = phi float [ 0.000000e+00, %3430 ], [ %3656, %3948 ]
  %3954 = phi float [ 0.000000e+00, %3430 ], [ %3657, %3948 ]
  %3955 = phi float [ %3436, %3430 ], [ %3658, %3948 ]
  %3956 = phi float [ %3437, %3430 ], [ %3659, %3948 ]
  %3957 = phi float [ %3438, %3430 ], [ %3660, %3948 ]
  %3958 = phi float [ %3470, %3430 ], [ %3661, %3948 ]
  %3959 = phi float [ %3471, %3430 ], [ %3662, %3948 ]
  %3960 = phi float [ %3472, %3430 ], [ %3663, %3948 ]
  %3961 = phi float [ %3441, %3430 ], [ %3664, %3948 ]
  %3962 = phi float [ %3440, %3430 ], [ %3665, %3948 ]
  %3963 = phi float [ 0.000000e+00, %3430 ], [ %3666, %3948 ]
  %3964 = phi float [ %3439, %3430 ], [ %3667, %3948 ]
  %3965 = phi float [ %3433, %3430 ], [ %3668, %3948 ]
  %3966 = phi float [ %3434, %3430 ], [ %3669, %3948 ]
  %3967 = phi float [ %3435, %3430 ], [ %3670, %3948 ]
  %3968 = call float @dx.op.dot3.f32(i32 55, float %3958, float %3959, float %3960, float %3958, float %3959, float %3960)  ; Dot3(ax,ay,az,bx,by,bz)
  %3969 = call float @dx.op.unary.f32(i32 25, float %3968)  ; Rsqrt(value)
  %3970 = fmul fast float %3969, %3958
  %3971 = fmul fast float %3969, %3959
  %3972 = fmul fast float %3969, %3960
  %3973 = fadd fast float %3963, %877
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = call float @dx.op.dot3.f32(i32 55, float %3970, float %3971, float %3972, float %3970, float %3971, float %3972)  ; Dot3(ax,ay,az,bx,by,bz)
  %3976 = call float @dx.op.unary.f32(i32 25, float %3975)  ; Rsqrt(value)
  %3977 = fmul fast float %3976, %3970
  %3978 = fmul fast float %3976, %3971
  %3979 = fmul fast float %3976, %3972
  %3980 = fadd fast float %3964, 0xBFB99999A0000000
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3982 = fmul fast float %3981, 0x3FF1C71C80000000
  %3983 = call float @dx.op.binary.f32(i32 36, float %3964, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3984 = fsub fast float 1.000000e+00, %3982
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = fmul fast float %3985, %3965
  %3987 = fmul fast float %3985, %3966
  %3988 = fmul fast float %3985, %3967
  %3989 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3990 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3991 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3992 = fmul fast float %3982, %3965
  %3993 = fmul fast float %3982, %3966
  %3994 = fmul fast float %3982, %3967
  %3995 = fadd fast float %3992, %3983
  %3996 = fadd fast float %3993, %3983
  %3997 = fadd fast float %3994, %3983
  %3998 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3999 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %4000 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %4001 = call float @dx.op.unary.f32(i32 7, float %3962)  ; Saturate(value)
  %4002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.i32 %4002, 3
  %4004 = and i32 %4003, 8
  %4005 = icmp ne i32 %4004, 0
  %4006 = call float @dx.op.binary.f32(i32 35, float %3989, float %3965)  ; FMax(a,b)
  %4007 = call float @dx.op.binary.f32(i32 35, float %3990, float %3965)  ; FMax(a,b)
  %4008 = call float @dx.op.binary.f32(i32 35, float %3991, float %3965)  ; FMax(a,b)
  %4009 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = select i1 %172, float %3965, float %3989
  %4011 = select i1 %172, float %4009, float %3990
  %4012 = select i1 %172, float 1.000000e+00, float %3991
  %4013 = select i1 %4005, float %4006, float %4010
  %4014 = select i1 %4005, float %4007, float %4011
  %4015 = select i1 %4005, float %4008, float %4012
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4019 = extractvalue %dx.types.CBufRet.f32 %4016, 2
  %4020 = fadd fast float %4017, %130
  %4021 = fadd fast float %4018, %131
  %4022 = fadd fast float %4019, %132
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4026 = fsub fast float %4020, %4024
  %4027 = fsub fast float %4021, %4025
  %4028 = fmul fast float %4026, %4026
  %4029 = fmul fast float %4027, %4027
  %4030 = fadd fast float %4028, %4029
  %4031 = call float @dx.op.unary.f32(i32 24, float %4030)  ; Sqrt(value)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4023, 2
  %4033 = fcmp fast olt float %4031, %4032
  br i1 %4033, label %4034, label %4101

; <label>:4034                                    ; preds = %3949
  %4035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4036 = extractvalue %dx.types.CBufRet.f32 %4035, 0
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4040 = extractvalue %dx.types.CBufRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.CBufRet.f32 %4035, 1
  %4042 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4043 = extractvalue %dx.types.CBufRet.f32 %4039, 1
  %4044 = extractvalue %dx.types.CBufRet.f32 %4035, 3
  %4045 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4046 = extractvalue %dx.types.CBufRet.f32 %4039, 3
  %4047 = fadd fast float %4044, %4020
  %4048 = fadd fast float %4045, %4021
  %4049 = fadd fast float %4046, %4022
  %4050 = fmul fast float %4047, %4036
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4038, float %4050)  ; FMad(a,b,c)
  %4052 = call float @dx.op.tertiary.f32(i32 46, float %4049, float %4040, float %4051)  ; FMad(a,b,c)
  %4053 = fmul fast float %4047, %4041
  %4054 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4042, float %4053)  ; FMad(a,b,c)
  %4055 = call float @dx.op.tertiary.f32(i32 46, float %4049, float %4043, float %4054)  ; FMad(a,b,c)
  %4056 = fsub fast float %4052, %4044
  %4057 = fsub fast float %4055, %4045
  %4058 = fsub fast float %4056, %4024
  %4059 = fadd fast float %4058, %4032
  %4060 = fsub fast float %4057, %4025
  %4061 = fadd fast float %4060, %4032
  %4062 = extractvalue %dx.types.CBufRet.f32 %4023, 3
  %4063 = fmul fast float %4059, %4062
  %4064 = fmul fast float %4061, %4062
  %4065 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4066 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4067 = fsub fast float 1.000000e+00, %4065
  %4068 = fsub fast float 1.000000e+00, %4066
  %4069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4067, float %4068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = fcmp fast ugt float %4070, 0.000000e+00
  br i1 %4071, label %4072, label %4375

; <label>:4072                                    ; preds = %4034
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 2
  %4075 = fmul fast float %4074, %4070
  %4076 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4077 = fadd fast float %4076, %4075
  %4078 = extractvalue %dx.types.CBufRet.f32 %4039, 2
  %4079 = fadd fast float %4077, %4046
  %4080 = fmul fast float %4052, %4040
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4055, float %4043, float %4080)  ; FMad(a,b,c)
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4078, float %4081)  ; FMad(a,b,c)
  %4083 = fsub fast float %4082, %4046
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 2
  %4086 = fsub fast float %4083, %4085
  %4087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4067, float %4068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4088 = extractvalue %dx.types.ResRet.f32 %4087, 0
  %4089 = extractvalue %dx.types.ResRet.f32 %4087, 1
  %4090 = extractvalue %dx.types.ResRet.f32 %4087, 2
  %4091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4067, float %4068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4092 = extractvalue %dx.types.ResRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.ResRet.f32 %4091, 1
  %4094 = extractvalue %dx.types.ResRet.f32 %4091, 2
  %4095 = fadd fast float %4092, %4088
  %4096 = fmul fast float %4095, 0x3F847AE140000000
  %4097 = fadd fast float %4093, %4089
  %4098 = fmul fast float %4097, 0x3F847AE140000000
  %4099 = fadd fast float %4094, %4090
  %4100 = fmul fast float %4099, 0x3F847AE140000000
  br label %4375

; <label>:4101                                    ; preds = %3949
  %4102 = and i32 %148, 1
  %4103 = icmp eq i32 %4102, 0
  br i1 %4103, label %4375, label %4104

; <label>:4104                                    ; preds = %4101
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 0
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.CBufRet.f32 %4105, 1
  %4112 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4113 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4114 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4115 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4116 = extractvalue %dx.types.CBufRet.f32 %4109, 3
  %4117 = fadd fast float %4114, %4020
  %4118 = fadd fast float %4115, %4021
  %4119 = fadd fast float %4116, %4022
  %4120 = fmul fast float %4117, %4106
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %4118, float %4108, float %4120)  ; FMad(a,b,c)
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %4119, float %4110, float %4121)  ; FMad(a,b,c)
  %4123 = fmul fast float %4117, %4111
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4118, float %4112, float %4123)  ; FMad(a,b,c)
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %4119, float %4113, float %4124)  ; FMad(a,b,c)
  %4126 = fsub fast float %4122, %4114
  %4127 = fsub fast float %4125, %4115
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.CBufRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4132 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 3
  %4135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.i32 %4135, 0
  %4137 = extractvalue %dx.types.CBufRet.i32 %4135, 1
  %4138 = udiv i32 %4137, %4136
  %4139 = fsub fast float %4126, %4129
  %4140 = fsub fast float %4127, %4130
  %4141 = call float @dx.op.binary.f32(i32 35, float %4139, float 0.000000e+00)  ; FMax(a,b)
  %4142 = call float @dx.op.binary.f32(i32 35, float %4140, float 0.000000e+00)  ; FMax(a,b)
  %4143 = call float @dx.op.binary.f32(i32 36, float %4141, float %4131)  ; FMin(a,b)
  %4144 = call float @dx.op.binary.f32(i32 36, float %4142, float %4132)  ; FMin(a,b)
  %4145 = add i32 %4136, -1
  %4146 = add i32 %4138, -1
  %4147 = fmul fast float %4143, %4134
  %4148 = fmul fast float %4144, %4134
  %4149 = fptoui float %4147 to i32
  %4150 = fptoui float %4148 to i32
  %4151 = call i32 @dx.op.binary.i32(i32 40, i32 %4149, i32 %4145)  ; UMin(a,b)
  %4152 = call i32 @dx.op.binary.i32(i32 40, i32 %4150, i32 %4146)  ; UMin(a,b)
  %4153 = mul i32 %4152, %4136
  %4154 = add i32 %4153, %4151
  %4155 = shl i32 %4154, 2
  %4156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4155, i32 undef)  ; BufferLoad(srv,index,wot)
  %4157 = extractvalue %dx.types.ResRet.i32 %4156, 0
  %4158 = icmp eq i32 %4157, -1
  br i1 %4158, label %4375, label %4159

; <label>:4159                                    ; preds = %4104
  %4160 = mul i32 %4157, 148
  %4161 = add i32 %4160, 4
  %4162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4161, i32 undef)  ; BufferLoad(srv,index,wot)
  %4163 = extractvalue %dx.types.ResRet.f32 %4162, 0
  %4164 = add i32 %4160, 8
  %4165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = add i32 %4160, 36
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = add i32 %4160, 60
  %4171 = add i32 %4160, 92
  %4172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.i32 %4172, 0
  %4174 = add i32 %4160, 116
  %4175 = fsub fast float %4126, %4163
  %4176 = fsub fast float %4127, %4166
  %4177 = fmul fast float %4134, %4175
  %4178 = fmul fast float %4134, %4176
  %4179 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4180 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4181 = fsub fast float 1.000000e+00, %4180
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 2
  %4184 = call float @dx.op.unary.f32(i32 83, float %4179)  ; DerivCoarseX(value)
  %4185 = call float @dx.op.unary.f32(i32 83, float %4181)  ; DerivCoarseX(value)
  %4186 = call float @dx.op.unary.f32(i32 84, float %4179)  ; DerivCoarseY(value)
  %4187 = call float @dx.op.unary.f32(i32 84, float %4181)  ; DerivCoarseY(value)
  %4188 = fmul fast float %4184, %4183
  %4189 = fmul fast float %4185, %4183
  %4190 = fmul fast float %4186, %4183
  %4191 = fmul fast float %4187, %4183
  %4192 = call float @dx.op.dot2.f32(i32 54, float %4190, float %4191, float %4190, float %4191)  ; Dot2(ax,ay,bx,by)
  %4193 = call float @dx.op.dot2.f32(i32 54, float %4188, float %4189, float %4188, float %4189)  ; Dot2(ax,ay,bx,by)
  %4194 = call float @dx.op.binary.f32(i32 35, float %4193, float %4192)  ; FMax(a,b)
  %4195 = call float @dx.op.unary.f32(i32 23, float %4194)  ; Log(value)
  %4196 = fmul fast float %4195, 5.000000e-01
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 1
  %4199 = fadd fast float %4198, %4196
  %4200 = call float @dx.op.binary.f32(i32 35, float %4199, float 0.000000e+00)  ; FMax(a,b)
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 3
  %4203 = fadd fast float %4202, %4200
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 3
  %4206 = fadd fast float %4203, %4205
  %4207 = add i32 %4173, 0
  %4208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4207, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4209 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4208, i32 0)  ; GetDimensions(handle,mipLevel)
  %4210 = extractvalue %dx.types.Dimensions %4209, 0
  %4211 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4210)  ; FirstbitLo(value)
  %4212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.i32 %4212, 1
  %4214 = sub nsw i32 %4213, %4211
  %4215 = sitofp i32 %4214 to float
  %4216 = fsub fast float %4206, %4215
  %4217 = call float @dx.op.binary.f32(i32 35, float %4216, float 0.000000e+00)  ; FMax(a,b)
  %4218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4208, %dx.types.Handle %27, float %4179, float %4181, float %4169, float undef, i32 0, i32 0, i32 undef, float %4217)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = fcmp ule float %4219, 0x3FE0101020000000
  %4221 = extractvalue %dx.types.CBufRet.i32 %4212, 0
  %4222 = and i32 %4221, 128
  %4223 = icmp ne i32 %4222, 0
  %4224 = and i1 %4220, %4223
  br i1 %4224, label %4375, label %4225

; <label>:4225                                    ; preds = %4159
  %4226 = add i32 %4160, 20
  %4227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.f32 %4227, 0
  %4229 = add i32 %4160, 24
  %4230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4232 = add i32 %4160, 40
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = add i32 %4160, 96
  %4236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4235, i32 undef)  ; BufferLoad(srv,index,wot)
  %4237 = extractvalue %dx.types.ResRet.i32 %4236, 0
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4240 = fmul fast float %4239, %4179
  %4241 = fmul fast float %4239, %4181
  %4242 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4243 = fadd fast float %4240, %4242
  %4244 = fadd fast float %4241, %4242
  %4245 = add i32 %4237, 0
  %4246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4245, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4246, i32 0)  ; GetDimensions(handle,mipLevel)
  %4248 = extractvalue %dx.types.Dimensions %4247, 0
  %4249 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4248)  ; FirstbitLo(value)
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 1
  %4252 = sub nsw i32 %4251, %4249
  %4253 = sitofp i32 %4252 to float
  %4254 = fsub fast float %4203, %4253
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float 0.000000e+00)  ; FMax(a,b)
  %4256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4246, %dx.types.Handle %27, float %4243, float %4244, float %4234, float undef, i32 0, i32 0, i32 undef, float %4255)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = fmul fast float %4257, %4228
  %4259 = fadd fast float %4258, %4231
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.CBufRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.CBufRet.f32 %4260, 2
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 3
  %4266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4267 = extractvalue %dx.types.CBufRet.f32 %4266, 3
  %4268 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4269 = fadd fast float %4265, %4126
  %4270 = fadd fast float %4267, %4127
  %4271 = fadd fast float %4259, %4268
  %4272 = fmul fast float %4269, %4261
  %4273 = call float @dx.op.tertiary.f32(i32 46, float %4270, float %4262, float %4272)  ; FMad(a,b,c)
  %4274 = call float @dx.op.tertiary.f32(i32 46, float %4271, float %4263, float %4273)  ; FMad(a,b,c)
  %4275 = fsub fast float %4274, %4268
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4278 = fsub fast float %4275, %4277
  %4279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.i32 %4279, 0
  %4281 = call i32 @dx.op.binary.i32(i32 40, i32 %4157, i32 %4280)  ; UMin(a,b)
  %4282 = mul i32 %4281, 36
  %4283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.i32 %4283, 0
  %4285 = add i32 %4282, 4
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = fmul fast float %4287, %4179
  %4289 = fmul fast float %4287, %4181
  %4290 = extractvalue %dx.types.CBufRet.f32 %4286, 1
  %4291 = fadd fast float %4288, %4290
  %4292 = fadd fast float %4289, %4290
  %4293 = icmp eq i32 %4284, 0
  br i1 %4293, label %4362, label %4294

; <label>:4294                                    ; preds = %4225
  br label %4295

; <label>:4295                                    ; preds = %4352, %4294
  %4296 = phi float [ %4353, %4352 ], [ 0.000000e+00, %4294 ]
  %4297 = phi float [ %4354, %4352 ], [ 0.000000e+00, %4294 ]
  %4298 = phi float [ %4355, %4352 ], [ 0.000000e+00, %4294 ]
  %4299 = phi float [ %4356, %4352 ], [ 0.000000e+00, %4294 ]
  %4300 = phi float [ %4357, %4352 ], [ 0.000000e+00, %4294 ]
  %4301 = phi float [ %4358, %4352 ], [ 0.000000e+00, %4294 ]
  %4302 = phi i32 [ %4359, %4352 ], [ 0, %4294 ]
  %4303 = shl i32 %4302, 2
  %4304 = add i32 %4170, %4303
  %4305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = add i32 %4174, %4303
  %4308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4307, i32 undef)  ; BufferLoad(srv,index,wot)
  %4309 = extractvalue %dx.types.ResRet.i32 %4308, 0
  %4310 = add i32 %4309, 0
  %4311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4310, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4312 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4311, i32 0)  ; GetDimensions(handle,mipLevel)
  %4313 = extractvalue %dx.types.Dimensions %4312, 0
  %4314 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4313)  ; FirstbitLo(value)
  %4315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.i32 %4315, 1
  %4317 = sub nsw i32 %4316, %4314
  %4318 = sitofp i32 %4317 to float
  %4319 = fsub fast float %4203, %4318
  %4320 = call float @dx.op.binary.f32(i32 35, float %4319, float 0.000000e+00)  ; FMax(a,b)
  %4321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4311, %dx.types.Handle %27, float %4291, float %4292, float %4306, float undef, i32 0, i32 0, i32 undef, float %4320)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = fcmp fast ogt float %4322, 0.000000e+00
  br i1 %4323, label %4324, label %4352

; <label>:4324                                    ; preds = %4295
  %4325 = add i32 %4285, %4303
  %4326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4325, i32 undef)  ; BufferLoad(srv,index,wot)
  %4327 = extractvalue %dx.types.ResRet.i32 %4326, 0
  %4328 = and i32 %4327, 32767
  %4329 = mul nuw nsw i32 %4328, 928
  %4330 = add nuw nsw i32 %4329, 48
  %4331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.ResRet.f32 %4331, 1
  %4334 = extractvalue %dx.types.ResRet.f32 %4331, 2
  %4335 = add nuw nsw i32 %4329, 60
  %4336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = extractvalue %dx.types.ResRet.f32 %4336, 1
  %4339 = extractvalue %dx.types.ResRet.f32 %4336, 2
  %4340 = fmul fast float %4332, %4322
  %4341 = fmul fast float %4333, %4322
  %4342 = fmul fast float %4334, %4322
  %4343 = fadd fast float %4340, %4296
  %4344 = fadd fast float %4341, %4297
  %4345 = fadd fast float %4342, %4298
  %4346 = fmul fast float %4337, %4322
  %4347 = fmul fast float %4338, %4322
  %4348 = fmul fast float %4339, %4322
  %4349 = fadd fast float %4346, %4299
  %4350 = fadd fast float %4347, %4300
  %4351 = fadd fast float %4348, %4301
  br label %4352

; <label>:4352                                    ; preds = %4324, %4295
  %4353 = phi float [ %4343, %4324 ], [ %4296, %4295 ]
  %4354 = phi float [ %4344, %4324 ], [ %4297, %4295 ]
  %4355 = phi float [ %4345, %4324 ], [ %4298, %4295 ]
  %4356 = phi float [ %4349, %4324 ], [ %4299, %4295 ]
  %4357 = phi float [ %4350, %4324 ], [ %4300, %4295 ]
  %4358 = phi float [ %4351, %4324 ], [ %4301, %4295 ]
  %4359 = add nuw i32 %4302, 1
  %4360 = icmp eq i32 %4359, %4284
  br i1 %4360, label %4361, label %4295

; <label>:4361                                    ; preds = %4352
  br label %4362

; <label>:4362                                    ; preds = %4361, %4225
  %4363 = phi float [ 0.000000e+00, %4225 ], [ %4353, %4361 ]
  %4364 = phi float [ 0.000000e+00, %4225 ], [ %4354, %4361 ]
  %4365 = phi float [ 0.000000e+00, %4225 ], [ %4355, %4361 ]
  %4366 = phi float [ 0.000000e+00, %4225 ], [ %4356, %4361 ]
  %4367 = phi float [ 0.000000e+00, %4225 ], [ %4357, %4361 ]
  %4368 = phi float [ 0.000000e+00, %4225 ], [ %4358, %4361 ]
  %4369 = fadd fast float %4366, %4363
  %4370 = fmul fast float %4369, 0x3F847AE140000000
  %4371 = fadd fast float %4367, %4364
  %4372 = fmul fast float %4371, 0x3F847AE140000000
  %4373 = fadd fast float %4368, %4365
  %4374 = fmul fast float %4373, 0x3F847AE140000000
  br label %4375

; <label>:4375                                    ; preds = %4362, %4159, %4104, %4101, %4072, %4034
  %4376 = phi float [ %4086, %4072 ], [ -1.310720e+05, %4034 ], [ %4278, %4362 ], [ -1.310720e+05, %4104 ], [ -1.310720e+05, %4159 ], [ -1.310720e+05, %4101 ]
  %4377 = phi float [ %4096, %4072 ], [ 0.000000e+00, %4034 ], [ %4370, %4362 ], [ 0.000000e+00, %4104 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4101 ]
  %4378 = phi float [ %4098, %4072 ], [ 0.000000e+00, %4034 ], [ %4372, %4362 ], [ 0.000000e+00, %4104 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4101 ]
  %4379 = phi float [ %4100, %4072 ], [ 0.000000e+00, %4034 ], [ %4374, %4362 ], [ 0.000000e+00, %4104 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4101 ]
  %4380 = phi i1 [ true, %4072 ], [ false, %4034 ], [ true, %4362 ], [ false, %4104 ], [ false, %4159 ], [ false, %4101 ]
  %4381 = and i32 %148, 3
  %4382 = icmp eq i32 %4381, 1
  %4383 = select i1 %4382, float 1.000000e+00, float 0.000000e+00
  %4384 = fsub fast float %4376, %132
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = select i1 %4380, float %4385, float 1.000000e+00
  %4387 = fmul fast float %4386, %4383
  %4388 = icmp eq i32 %4381, 3
  %4389 = select i1 %4388, float 1.000000e+00, float %4387
  %4390 = call float @dx.op.binary.f32(i32 35, float %3950, float %4389)  ; FMax(a,b)
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = fcmp fast une float %4391, 0.000000e+00
  %4393 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4394 = call float @dx.op.unary.f32(i32 25, float %4393)  ; Rsqrt(value)
  br i1 %4392, label %4402, label %4395

; <label>:4395                                    ; preds = %4375
  %4396 = fmul fast float %4394, %130
  %4397 = fmul fast float %4394, %131
  %4398 = fmul fast float %4394, %132
  %4399 = fsub fast float -0.000000e+00, %4396
  %4400 = fsub fast float -0.000000e+00, %4397
  %4401 = fsub fast float -0.000000e+00, %4398
  br label %4570

; <label>:4402                                    ; preds = %4375
  %4403 = fmul fast float %130, %4394
  %4404 = fsub fast float -0.000000e+00, %4403
  %4405 = fmul fast float %131, %4394
  %4406 = fsub fast float -0.000000e+00, %4405
  %4407 = fmul fast float %132, %4394
  %4408 = fsub fast float -0.000000e+00, %4407
  %4409 = call float @dx.op.dot3.f32(i32 55, float %4404, float %4406, float %4408, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4410 = fmul fast float %4391, 2.500000e+00
  %4411 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4412 = fmul fast float %4391, 0x4013FFFFE0000000
  %4413 = fadd fast float %4412, 0xBFFFFFFFE0000000
  %4414 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4415 = fmul fast float %4391, 0x4004000020000000
  %4416 = fadd fast float %4415, 0xBFF8000040000000
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4419 = fmul fast float %3980, 1.000000e+01
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fmul fast float %4420, 2.000000e+00
  %4422 = fsub fast float 3.000000e+00, %4421
  %4423 = fmul fast float %4420, %4420
  %4424 = fmul fast float %4423, %4422
  %4425 = fsub fast float 1.000000e+00, %4424
  %4426 = fsub fast float 0x3FE3333340000000, %4001
  %4427 = fmul fast float %4426, 0x400AAAAAA0000000
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = fmul fast float %4425, %4428
  %4430 = fmul fast float %4013, 0x3FEA2B8620000000
  %4431 = fmul fast float %4014, 0x3FEA2B8620000000
  %4432 = fmul fast float %4015, 0x3FEA2B8620000000
  %4433 = fadd fast float %4430, 0x3FC81DFBA0000000
  %4434 = fmul fast float %4433, %4013
  %4435 = fadd fast float %4434, 0x3F910E6020000000
  %4436 = fadd fast float %4431, 0x3FC81DFBA0000000
  %4437 = fmul fast float %4436, %4014
  %4438 = fadd fast float %4437, 0x3F910E6020000000
  %4439 = fadd fast float %4432, 0x3FC81DFBA0000000
  %4440 = fmul fast float %4439, %4015
  %4441 = fadd fast float %4440, 0x3F910E6020000000
  %4442 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4443 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4444 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4445 = fsub fast float %4442, %4013
  %4446 = fsub fast float %4443, %4014
  %4447 = fsub fast float %4444, %4015
  %4448 = fmul fast float %4445, %4418
  %4449 = fmul fast float %4448, %4429
  %4450 = fmul fast float %4446, %4418
  %4451 = fmul fast float %4450, %4429
  %4452 = fmul fast float %4447, %4418
  %4453 = fmul fast float %4452, %4429
  %4454 = fadd fast float %4449, %4013
  %4455 = fadd fast float %4451, %4014
  %4456 = fadd fast float %4453, %4015
  %4457 = fmul fast float %3961, %3961
  %4458 = fmul fast float %4457, %4457
  %4459 = fadd fast float %4414, 1.000000e+00
  %4460 = fsub fast float %4459, %4429
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4464 = fsub fast float 1.000000e+00, %4458
  %4465 = call float @dx.op.binary.f32(i32 36, float %4461, float %4464)  ; FMin(a,b)
  %4466 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4467 = call float @dx.op.binary.f32(i32 35, float %4465, float %4466)  ; FMax(a,b)
  %4468 = fadd fast float %4463, 0xBFE4CCCCC0000000
  %4469 = fmul fast float %4468, 0x4006DB6DA0000000
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = fmul fast float %4470, 2.000000e+00
  %4472 = fsub fast float 3.000000e+00, %4471
  %4473 = bitcast float %3998 to i32
  %4474 = ashr i32 %4473, 1
  %4475 = add nsw i32 %4474, 532487669
  %4476 = bitcast i32 %4475 to float
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = bitcast float %4477 to i32
  %4479 = sub nsw i32 2129859010, %4478
  %4480 = bitcast i32 %4479 to float
  %4481 = fmul fast float %4480, 2.000000e+00
  %4482 = bitcast float %3999 to i32
  %4483 = ashr i32 %4482, 1
  %4484 = add nsw i32 %4483, 532487669
  %4485 = bitcast i32 %4484 to float
  %4486 = fsub fast float 1.000000e+00, %4485
  %4487 = bitcast float %4486 to i32
  %4488 = sub nsw i32 2129859010, %4487
  %4489 = bitcast i32 %4488 to float
  %4490 = fmul fast float %4489, 2.000000e+00
  %4491 = bitcast float %4000 to i32
  %4492 = ashr i32 %4491, 1
  %4493 = add nsw i32 %4492, 532487669
  %4494 = bitcast i32 %4493 to float
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = bitcast float %4495 to i32
  %4497 = sub nsw i32 2129859010, %4496
  %4498 = bitcast i32 %4497 to float
  %4499 = fmul fast float %4498, 2.000000e+00
  %4500 = fsub fast float 0x4002A9FBE0000000, %4481
  %4501 = fadd fast float %4481, 0x3FD54FDF00000000
  %4502 = bitcast float %4501 to i32
  %4503 = sub nsw i32 2129859010, %4502
  %4504 = bitcast i32 %4503 to float
  %4505 = fmul fast float %4504, %4500
  %4506 = fmul fast float %4505, %4505
  %4507 = fsub fast float 0x4002A9FBE0000000, %4490
  %4508 = fadd fast float %4490, 0x3FD54FDF00000000
  %4509 = bitcast float %4508 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = fmul fast float %4511, %4507
  %4513 = fmul fast float %4512, %4512
  %4514 = fsub fast float 0x4002A9FBE0000000, %4499
  %4515 = fadd fast float %4499, 0x3FD54FDF00000000
  %4516 = bitcast float %4515 to i32
  %4517 = sub nsw i32 2129859010, %4516
  %4518 = bitcast i32 %4517 to float
  %4519 = fmul fast float %4518, %4514
  %4520 = fmul fast float %4519, %4519
  %4521 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4506)  ; FMax(a,b)
  %4522 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4513)  ; FMax(a,b)
  %4523 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4520)  ; FMax(a,b)
  %4524 = fsub fast float 1.000000e+00, %4409
  %4525 = fadd fast float %4524, %4425
  %4526 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4527 = fsub fast float 1.000000e+00, %4389
  %4528 = fmul fast float %4467, %4527
  %4529 = fmul fast float %4470, %4470
  %4530 = fmul fast float %4529, %4528
  %4531 = fmul fast float %4530, %4472
  %4532 = fmul fast float %4527, 0xBFE99999A0000000
  %4533 = fmul fast float %4532, %4418
  %4534 = fmul fast float %4533, %4429
  %4535 = fadd fast float %4534, 1.000000e+00
  %4536 = fadd fast float %4001, -1.000000e+00
  %4537 = fmul fast float %4535, %4536
  %4538 = fadd fast float %4537, 1.000000e+00
  %4539 = fsub fast float %4521, %3998
  %4540 = fsub fast float %4522, %3999
  %4541 = fsub fast float %4523, %4000
  %4542 = fmul fast float %4531, %4539
  %4543 = fmul fast float %4531, %4540
  %4544 = fmul fast float %4531, %4541
  %4545 = fadd fast float %4542, %3998
  %4546 = fadd fast float %4543, %3999
  %4547 = fadd fast float %4544, %4000
  %4548 = fsub fast float %74, %3977
  %4549 = fsub fast float %75, %3978
  %4550 = fsub fast float %76, %3979
  %4551 = fmul fast float %4531, %4548
  %4552 = fmul fast float %4531, %4549
  %4553 = fmul fast float %4531, %4550
  %4554 = fadd fast float %4551, %3977
  %4555 = fadd fast float %4552, %3978
  %4556 = fadd fast float %4553, %3979
  %4557 = fmul fast float %4531, %4526
  %4558 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4559 = fsub fast float 1.000000e+00, %4558
  %4560 = fmul fast float %4557, %4559
  %4561 = fadd fast float %4560, %4558
  %4562 = fsub fast float 1.000000e+00, %3961
  %4563 = fmul fast float %4531, %4562
  %4564 = fadd fast float %4563, %3961
  %4565 = call float @dx.op.dot3.f32(i32 55, float %4554, float %4555, float %4556, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4566 = call float @dx.op.unary.f32(i32 25, float %4565)  ; Rsqrt(value)
  %4567 = fmul fast float %4554, %4566
  %4568 = fmul fast float %4555, %4566
  %4569 = fmul fast float %4556, %4566
  br label %4570

; <label>:4570                                    ; preds = %4402, %4395
  %4571 = phi float [ %4401, %4395 ], [ %4408, %4402 ]
  %4572 = phi float [ %4400, %4395 ], [ %4406, %4402 ]
  %4573 = phi float [ %4399, %4395 ], [ %4404, %4402 ]
  %4574 = phi float [ %4398, %4395 ], [ %4407, %4402 ]
  %4575 = phi float [ %4397, %4395 ], [ %4405, %4402 ]
  %4576 = phi float [ %4396, %4395 ], [ %4403, %4402 ]
  %4577 = phi float [ %3977, %4395 ], [ %4567, %4402 ]
  %4578 = phi float [ %3978, %4395 ], [ %4568, %4402 ]
  %4579 = phi float [ %3979, %4395 ], [ %4569, %4402 ]
  %4580 = phi float [ %3998, %4395 ], [ %4545, %4402 ]
  %4581 = phi float [ %3999, %4395 ], [ %4546, %4402 ]
  %4582 = phi float [ %4000, %4395 ], [ %4547, %4402 ]
  %4583 = phi float [ %4013, %4395 ], [ %4454, %4402 ]
  %4584 = phi float [ %4014, %4395 ], [ %4455, %4402 ]
  %4585 = phi float [ %4015, %4395 ], [ %4456, %4402 ]
  %4586 = phi float [ %4001, %4395 ], [ %4561, %4402 ]
  %4587 = phi float [ %3961, %4395 ], [ %4564, %4402 ]
  %4588 = select i1 %172, float 0.000000e+00, float %4582
  %4589 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %4573, float %4572, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = call float @dx.op.dot3.f32(i32 55, float %4576, float %4575, float %4574, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = fmul fast float %4591, 2.000000e+00
  %4593 = fmul fast float %4592, %4577
  %4594 = fmul fast float %4592, %4578
  %4595 = fmul fast float %4592, %4579
  %4596 = fsub fast float %4576, %4593
  %4597 = fsub fast float %4575, %4594
  %4598 = fsub fast float %4574, %4595
  %4599 = call float @dx.op.binary.f32(i32 36, float %4587, float 1.000000e+00)  ; FMin(a,b)
  %4600 = fsub fast float 1.000000e+00, %4587
  %4601 = bitcast float %4600 to i32
  %4602 = sub nsw i32 2129859010, %4601
  %4603 = fsub fast float 1.000000e+00, %44
  %4604 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call float @dx.op.binary.f32(i32 35, float %4604, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4606 = fdiv fast float %4603, %4605
  %4607 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = fmul fast float %4608, 5.000000e-01
  %4610 = fadd fast float %4609, 5.000000e-01
  %4611 = fmul fast float %4610, %44
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4614 = fmul fast float %4613, %4606
  %4615 = fadd fast float %4611, %4614
  %4616 = fsub fast float 5.000000e-01, %4609
  %4617 = fmul fast float %4616, %4583
  %4618 = fmul fast float %4616, %4584
  %4619 = fmul fast float %4616, %4585
  %4620 = fadd fast float %4615, %4617
  %4621 = fadd fast float %4615, %4618
  %4622 = fadd fast float %4615, %4619
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4596, float %4597, float %4598, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = fmul fast float %4624, 5.000000e-01
  %4626 = fadd fast float %4625, 5.000000e-01
  %4627 = fmul fast float %4626, %44
  %4628 = call float @dx.op.dot3.f32(i32 55, float %4596, float %4597, float %4598, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = fmul fast float %4629, %4606
  %4631 = fadd fast float %4627, %4630
  %4632 = fsub fast float 5.000000e-01, %4625
  %4633 = fmul fast float %4632, %4583
  %4634 = fmul fast float %4632, %4584
  %4635 = fmul fast float %4632, %4585
  %4636 = fadd fast float %4631, %4633
  %4637 = fadd fast float %4631, %4634
  %4638 = fadd fast float %4631, %4635
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4641 = call float @dx.op.binary.f32(i32 36, float %4583, float %4640)  ; FMin(a,b)
  %4642 = fsub fast float 1.000000e+00, %4599
  %4643 = fmul fast float %4641, %4642
  %4644 = fsub fast float 1.000000e+00, %4643
  %4645 = bitcast float %4644 to i32
  %4646 = sub nsw i32 2129859010, %4645
  %4647 = bitcast i32 %4646 to float
  %4648 = call float @dx.op.binary.f32(i32 36, float %4584, float %4640)  ; FMin(a,b)
  %4649 = fmul fast float %4648, %4642
  %4650 = fsub fast float 1.000000e+00, %4649
  %4651 = bitcast float %4650 to i32
  %4652 = sub nsw i32 2129859010, %4651
  %4653 = bitcast i32 %4652 to float
  %4654 = call float @dx.op.binary.f32(i32 36, float %4585, float %4640)  ; FMin(a,b)
  %4655 = fmul fast float %4654, %4642
  %4656 = fsub fast float 1.000000e+00, %4655
  %4657 = bitcast float %4656 to i32
  %4658 = sub nsw i32 2129859010, %4657
  %4659 = bitcast i32 %4658 to float
  %4660 = fmul fast float %4599, %45
  %4661 = fmul fast float %4660, %4620
  %4662 = fmul fast float %4661, %4647
  %4663 = fmul fast float %4599, %46
  %4664 = fmul fast float %4663, %4621
  %4665 = fmul fast float %4664, %4653
  %4666 = fmul fast float %4599, %47
  %4667 = fmul fast float %4666, %4622
  %4668 = fmul fast float %4667, %4659
  %4669 = call float @dx.op.binary.f32(i32 36, float %4580, float %4640)  ; FMin(a,b)
  %4670 = fmul fast float %4669, %4642
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = bitcast float %4671 to i32
  %4673 = sub nsw i32 2129859010, %4672
  %4674 = bitcast i32 %4673 to float
  %4675 = call float @dx.op.binary.f32(i32 36, float %4581, float %4640)  ; FMin(a,b)
  %4676 = fmul fast float %4675, %4642
  %4677 = fsub fast float 1.000000e+00, %4676
  %4678 = bitcast float %4677 to i32
  %4679 = sub nsw i32 2129859010, %4678
  %4680 = bitcast i32 %4679 to float
  %4681 = call float @dx.op.binary.f32(i32 36, float %4588, float %4640)  ; FMin(a,b)
  %4682 = fmul fast float %4681, %4642
  %4683 = fsub fast float 1.000000e+00, %4682
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = fmul fast float %4660, %4636
  %4688 = fmul fast float %4687, %4674
  %4689 = fmul fast float %4663, %4637
  %4690 = fmul fast float %4689, %4680
  %4691 = fmul fast float %4666, %4638
  %4692 = fmul fast float %4691, %4686
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4662, float %4665, float %4668, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = select i1 %172, float 0.000000e+00, float %4662
  %4695 = select i1 %172, float %4693, float %4665
  %4696 = select i1 %172, float 0.000000e+00, float %4668
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4690, float %4692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = select i1 %172, float 0.000000e+00, float %4688
  %4699 = select i1 %172, float %4697, float %4690
  %4700 = select i1 %172, float 0.000000e+00, float %4692
  %4701 = fmul fast float %4590, 9.843750e-01
  %4702 = fmul fast float %4586, 9.843750e-01
  %4703 = fadd fast float %4701, 7.812500e-03
  %4704 = fadd fast float %4702, 7.812500e-03
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4703, float %4704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 2
  %4707 = extractvalue %dx.types.ResRet.f32 %4705, 3
  %4708 = fmul fast float %4706, %4580
  %4709 = fmul fast float %4706, %4581
  %4710 = fmul fast float %4706, %4588
  %4711 = fadd fast float %4708, %4707
  %4712 = fadd fast float %4709, %4707
  %4713 = fadd fast float %4710, %4707
  %4714 = fcmp fast ogt float %3954, 0.000000e+00
  br i1 %4714, label %4715, label %4741

; <label>:4715                                    ; preds = %4570
  %4716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3954, float %4590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4717 = extractvalue %dx.types.ResRet.f32 %4716, 0
  %4718 = extractvalue %dx.types.ResRet.f32 %4716, 1
  %4719 = extractvalue %dx.types.ResRet.f32 %4716, 2
  %4720 = fadd fast float %4717, -5.000000e-01
  %4721 = fadd fast float %4718, -5.000000e-01
  %4722 = fadd fast float %4719, -5.000000e-01
  %4723 = fsub fast float 1.000000e+00, %4580
  %4724 = fsub fast float 1.000000e+00, %4581
  %4725 = fsub fast float 1.000000e+00, %4588
  %4726 = fmul fast float %4580, 4.000000e+00
  %4727 = fmul fast float %4726, %4723
  %4728 = fmul fast float %4727, %4720
  %4729 = fmul fast float %4581, 4.000000e+00
  %4730 = fmul fast float %4729, %4724
  %4731 = fmul fast float %4730, %4721
  %4732 = fmul fast float %4588, 4.000000e+00
  %4733 = fmul fast float %4732, %4725
  %4734 = fmul fast float %4733, %4722
  %4735 = fadd fast float %4728, %4711
  %4736 = fadd fast float %4731, %4712
  %4737 = fadd fast float %4734, %4713
  %4738 = call float @dx.op.unary.f32(i32 7, float %4735)  ; Saturate(value)
  %4739 = call float @dx.op.unary.f32(i32 7, float %4736)  ; Saturate(value)
  %4740 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  br label %4741

; <label>:4741                                    ; preds = %4715, %4570
  %4742 = phi float [ %4738, %4715 ], [ %4711, %4570 ]
  %4743 = phi float [ %4739, %4715 ], [ %4712, %4570 ]
  %4744 = phi float [ %4740, %4715 ], [ %4713, %4570 ]
  %4745 = call float @dx.op.binary.f32(i32 35, float %4743, float %4744)  ; FMax(a,b)
  %4746 = call float @dx.op.binary.f32(i32 35, float %4742, float %4745)  ; FMax(a,b)
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = fmul fast float %4747, %4694
  %4749 = fmul fast float %4747, %4695
  %4750 = fmul fast float %4747, %4696
  %4751 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = fcmp fast ogt float %4751, 0x3E7FF19E20000000
  %4753 = fdiv fast float 1.000000e+00, %4751
  %4754 = select i1 %4752, float %4753, float 0.000000e+00
  %4755 = fmul fast float %4754, %4583
  %4756 = fmul fast float %4754, %4584
  %4757 = fmul fast float %4754, %4585
  %4758 = fadd fast float %4755, -1.000000e+00
  %4759 = fadd fast float %4756, -1.000000e+00
  %4760 = fadd fast float %4757, -1.000000e+00
  %4761 = fmul fast float %4758, 5.000000e-01
  %4762 = fmul fast float %4759, 5.000000e-01
  %4763 = fmul fast float %4760, 5.000000e-01
  %4764 = fadd fast float %4761, 1.000000e+00
  %4765 = fadd fast float %4762, 1.000000e+00
  %4766 = fadd fast float %4763, 1.000000e+00
  %4767 = fmul fast float %4742, %4698
  %4768 = fmul fast float %4743, %4699
  %4769 = fmul fast float %4744, %4700
  %4770 = fsub fast float 1.000000e+00, %4590
  %4771 = bitcast float %4770 to i32
  %4772 = sitofp i32 %4771 to float
  %4773 = fmul fast float %4772, 5.000000e+00
  %4774 = fadd fast float %4773, 0xC1EFBF8940000000
  %4775 = fptosi float %4774 to i32
  %4776 = bitcast i32 %4775 to float
  %4777 = fmul fast float %4776, %3953
  %4778 = fmul fast float %4694, %4777
  %4779 = fmul fast float %4778, %4747
  %4780 = fmul fast float %4779, %4764
  %4781 = fmul fast float %4695, %4777
  %4782 = fmul fast float %4781, %4747
  %4783 = fmul fast float %4782, %4765
  %4784 = fmul fast float %4696, %4777
  %4785 = fmul fast float %4784, %4747
  %4786 = fmul fast float %4785, %4766
  %4787 = fmul fast float %4748, %3974
  %4788 = fmul fast float %4749, %3974
  %4789 = fmul fast float %4750, %3974
  %4790 = fadd fast float %4767, %3955
  %4791 = fadd fast float %4790, %4780
  %4792 = fmul fast float %4791, %3974
  %4793 = fadd fast float %4768, %3956
  %4794 = fadd fast float %4793, %4783
  %4795 = fmul fast float %4794, %3974
  %4796 = fadd fast float %4769, %3957
  %4797 = fadd fast float %4796, %4786
  %4798 = fmul fast float %4797, %3974
  %4799 = bitcast i32 %4602 to float
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4802 = fcmp fast oeq float %4801, 0.000000e+00
  br i1 %4802, label %5030, label %4803

; <label>:4803                                    ; preds = %4741
  %4804 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4805 = extractvalue %dx.types.CBufRet.f32 %4800, 1
  %4806 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.CBufRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.CBufRet.f32 %4807, 2
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  %4813 = extractvalue %dx.types.CBufRet.f32 %4811, 1
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4808, float %4809, float %4810, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = select i1 %172, float %4812, float %4808
  %4816 = select i1 %172, float %4814, float %4809
  %4817 = select i1 %172, float %4813, float %4810
  %4818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4818, 1
  %4820 = fcmp fast une float %4819, 0.000000e+00
  br i1 %4820, label %4821, label %4838

; <label>:4821                                    ; preds = %4803
  %4822 = fptoui float %67 to i32
  %4823 = fptoui float %68 to i32
  %4824 = lshr i32 %4822, 4
  %4825 = lshr i32 %4823, 4
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = fptoui float %4827 to i32
  %4829 = add i32 %4828, 15
  %4830 = lshr i32 %4829, 4
  %4831 = mul i32 %4830, %4825
  %4832 = add i32 %4831, %4824
  %4833 = shl i32 %4832, 3
  %4834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4833, i32 undef)  ; BufferLoad(srv,index,wot)
  %4835 = extractvalue %dx.types.ResRet.i32 %4834, 0
  %4836 = and i32 %4835, -268435456
  %4837 = icmp eq i32 %4836, -1342177280
  br i1 %4837, label %4848, label %4838

; <label>:4838                                    ; preds = %4821, %4803
  %4839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4840 = extractvalue %dx.types.CBufRet.f32 %4839, 2
  %4841 = extractvalue %dx.types.CBufRet.f32 %4839, 3
  %4842 = fmul fast float %4840, %67
  %4843 = fmul fast float %4841, %68
  %4844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4842, float %4843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4845 = extractvalue %dx.types.ResRet.f32 %4844, 0
  %4846 = extractvalue %dx.types.ResRet.f32 %4844, 1
  %4847 = extractvalue %dx.types.ResRet.f32 %4844, 2
  br label %4848

; <label>:4848                                    ; preds = %4838, %4821
  %4849 = phi float [ %4845, %4838 ], [ 0.000000e+00, %4821 ]
  %4850 = phi float [ %4846, %4838 ], [ 0.000000e+00, %4821 ]
  %4851 = phi float [ %4847, %4838 ], [ 0.000000e+00, %4821 ]
  %4852 = call float @dx.op.binary.f32(i32 36, float %4850, float %4851)  ; FMin(a,b)
  %4853 = call float @dx.op.binary.f32(i32 36, float %4849, float %4852)  ; FMin(a,b)
  %4854 = fcmp fast ogt float %4853, 0.000000e+00
  br i1 %4854, label %4855, label %5030, !dx.controlflow.hints !72

; <label>:4855                                    ; preds = %4848
  %4856 = fmul fast float %4849, %4815
  %4857 = fmul fast float %4850, %4816
  %4858 = fmul fast float %4851, %4817
  %4859 = fsub fast float %4804, %4576
  %4860 = fsub fast float %4805, %4575
  %4861 = fsub fast float %4806, %4574
  %4862 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float %4859, float %4860, float %4861)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = call float @dx.op.unary.f32(i32 25, float %4862)  ; Rsqrt(value)
  %4864 = fmul fast float %4863, %4859
  %4865 = fmul fast float %4863, %4860
  %4866 = fmul fast float %4863, %4861
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4804, float %4805, float %4806, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = call float @dx.op.dot3.f32(i32 55, float %4573, float %4572, float %4571, float %4864, float %4865, float %4866)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = call float @dx.op.unary.f32(i32 7, float %4867)  ; Saturate(value)
  %4870 = fmul fast float %4869, %4869
  %4871 = fmul fast float %4870, %4799
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4872, %4869
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %4864, float %4865, float %4866)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = fmul fast float %4874, %4874
  %4876 = call float @dx.op.unary.f32(i32 6, float %4867)  ; FAbs(value)
  %4877 = fsub fast float 1.000000e+00, %4586
  %4878 = call float @dx.op.binary.f32(i32 35, float %4877, float 0x3F847AE140000000)  ; FMax(a,b)
  %4879 = fmul fast float %4878, %4878
  %4880 = fmul fast float %4879, %4879
  %4881 = fsub fast float 1.000000e+00, %4880
  %4882 = fmul fast float %4590, %4590
  %4883 = fmul fast float %4882, %4881
  %4884 = fadd fast float %4883, %4880
  %4885 = bitcast float %4884 to i32
  %4886 = ashr i32 %4885, 1
  %4887 = add nsw i32 %4886, 532487669
  %4888 = bitcast i32 %4887 to float
  %4889 = fadd fast float %4888, %4590
  %4890 = fmul fast float %4880, %4875
  %4891 = fsub fast float 1.000000e+00, %4875
  %4892 = fadd fast float %4891, %4890
  %4893 = fmul fast float %4876, %4876
  %4894 = fmul fast float %4893, %4881
  %4895 = fadd fast float %4894, %4880
  %4896 = bitcast float %4895 to i32
  %4897 = ashr i32 %4896, 1
  %4898 = add nsw i32 %4897, 532487669
  %4899 = bitcast i32 %4898 to float
  %4900 = fadd fast float %4899, %4876
  %4901 = fmul fast float %4892, %4892
  %4902 = fmul fast float %4901, %4889
  %4903 = fmul fast float %4902, %4900
  %4904 = fdiv fast float 0x3FF0A00000000000, %4903
  %4905 = fmul fast float %4904, %4880
  %4906 = call float @dx.op.unary.f32(i32 6, float %4868)  ; FAbs(value)
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = bitcast float %4907 to i32
  %4909 = sitofp i32 %4908 to float
  %4910 = fmul fast float %4909, 5.000000e+00
  %4911 = fadd fast float %4910, 0xC1EFBF8940000000
  %4912 = fptosi float %4911 to i32
  %4913 = bitcast i32 %4912 to float
  %4914 = fsub fast float 1.000000e+00, %4580
  %4915 = fsub fast float 1.000000e+00, %4581
  %4916 = fsub fast float 1.000000e+00, %4588
  %4917 = fmul fast float %4913, %4914
  %4918 = fmul fast float %4913, %4915
  %4919 = fmul fast float %4913, %4916
  %4920 = fadd fast float %4917, %4580
  %4921 = fadd fast float %4918, %4581
  %4922 = fadd fast float %4919, %4588
  br i1 %4714, label %4923, label %4946

; <label>:4923                                    ; preds = %4855
  %4924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3954, float %4906, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.ResRet.f32 %4924, 1
  %4927 = extractvalue %dx.types.ResRet.f32 %4924, 2
  %4928 = fadd fast float %4925, -5.000000e-01
  %4929 = fadd fast float %4926, -5.000000e-01
  %4930 = fadd fast float %4927, -5.000000e-01
  %4931 = fmul fast float %4580, 4.000000e+00
  %4932 = fmul fast float %4931, %4914
  %4933 = fmul fast float %4932, %4928
  %4934 = fmul fast float %4581, 4.000000e+00
  %4935 = fmul fast float %4934, %4915
  %4936 = fmul fast float %4935, %4929
  %4937 = fmul fast float %4588, 4.000000e+00
  %4938 = fmul fast float %4937, %4916
  %4939 = fmul fast float %4938, %4930
  %4940 = fadd fast float %4933, %4920
  %4941 = fadd fast float %4936, %4921
  %4942 = fadd fast float %4939, %4922
  %4943 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  br label %4946

; <label>:4946                                    ; preds = %4923, %4855
  %4947 = phi float [ %4943, %4923 ], [ %4920, %4855 ]
  %4948 = phi float [ %4944, %4923 ], [ %4921, %4855 ]
  %4949 = phi float [ %4945, %4923 ], [ %4922, %4855 ]
  %4950 = fmul fast float %4867, 9.843750e-01
  %4951 = fadd fast float %4950, 7.812500e-03
  %4952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4951, float %4704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 2
  %4954 = extractvalue %dx.types.ResRet.f32 %4952, 3
  %4955 = fmul fast float %4953, %4580
  %4956 = fmul fast float %4953, %4581
  %4957 = fmul fast float %4953, %4588
  %4958 = fadd fast float %4955, %4954
  %4959 = fadd fast float %4956, %4954
  %4960 = fadd fast float %4957, %4954
  br i1 %4714, label %4961, label %4984

; <label>:4961                                    ; preds = %4946
  %4962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3954, float %4867, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.ResRet.f32 %4962, 1
  %4965 = extractvalue %dx.types.ResRet.f32 %4962, 2
  %4966 = fadd fast float %4963, -5.000000e-01
  %4967 = fadd fast float %4964, -5.000000e-01
  %4968 = fadd fast float %4965, -5.000000e-01
  %4969 = fmul fast float %4580, 4.000000e+00
  %4970 = fmul fast float %4969, %4914
  %4971 = fmul fast float %4970, %4966
  %4972 = fmul fast float %4581, 4.000000e+00
  %4973 = fmul fast float %4972, %4915
  %4974 = fmul fast float %4973, %4967
  %4975 = fmul fast float %4588, 4.000000e+00
  %4976 = fmul fast float %4975, %4916
  %4977 = fmul fast float %4976, %4968
  %4978 = fadd fast float %4971, %4958
  %4979 = fadd fast float %4974, %4959
  %4980 = fadd fast float %4977, %4960
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  br label %4984

; <label>:4984                                    ; preds = %4961, %4946
  %4985 = phi float [ %4981, %4961 ], [ %4958, %4946 ]
  %4986 = phi float [ %4982, %4961 ], [ %4959, %4946 ]
  %4987 = phi float [ %4983, %4961 ], [ %4960, %4946 ]
  %4988 = call float @dx.op.binary.f32(i32 35, float %4986, float %4987)  ; FMax(a,b)
  %4989 = call float @dx.op.binary.f32(i32 35, float %4985, float %4988)  ; FMax(a,b)
  %4990 = fsub fast float 1.000000e+00, %4989
  %4991 = fmul fast float %4947, %4905
  %4992 = fmul fast float %4948, %4905
  %4993 = fmul fast float %4949, %4905
  %4994 = fsub fast float 1.000000e+00, %4868
  %4995 = bitcast float %4994 to i32
  %4996 = sitofp i32 %4995 to float
  %4997 = fmul fast float %4996, 5.000000e+00
  %4998 = fadd fast float %4997, 0xC1EFBF8940000000
  %4999 = fptosi float %4998 to i32
  %5000 = bitcast i32 %4999 to float
  %5001 = fmul fast float %5000, %3953
  %5002 = fmul fast float %4990, %5001
  %5003 = fmul fast float %5002, %4764
  %5004 = fmul fast float %5002, %4765
  %5005 = fmul fast float %5002, %4766
  %5006 = fadd fast float %5003, %4991
  %5007 = fadd fast float %5004, %4992
  %5008 = fadd fast float %5005, %4993
  %5009 = fmul fast float %4873, %4856
  %5010 = fmul fast float %5009, %4990
  %5011 = fmul fast float %4873, %4857
  %5012 = fmul fast float %5011, %4990
  %5013 = fmul fast float %4873, %4858
  %5014 = fmul fast float %5013, %4990
  %5015 = fmul fast float %5009, %5006
  %5016 = fmul fast float %5011, %5007
  %5017 = fmul fast float %5013, %5008
  %5018 = fadd fast float %5010, %4748
  %5019 = fmul fast float %5018, %3974
  %5020 = fadd fast float %5012, %4749
  %5021 = fmul fast float %5020, %3974
  %5022 = fadd fast float %5014, %4750
  %5023 = fmul fast float %5022, %3974
  %5024 = fadd fast float %5015, %4791
  %5025 = fmul fast float %5024, %3974
  %5026 = fadd fast float %5016, %4794
  %5027 = fmul fast float %5026, %3974
  %5028 = fadd fast float %5017, %4797
  %5029 = fmul fast float %5028, %3974
  br label %5030

; <label>:5030                                    ; preds = %4984, %4848, %4741
  %5031 = phi float [ %4792, %4741 ], [ %4792, %4848 ], [ %5025, %4984 ]
  %5032 = phi float [ %4795, %4741 ], [ %4795, %4848 ], [ %5027, %4984 ]
  %5033 = phi float [ %4798, %4741 ], [ %4798, %4848 ], [ %5029, %4984 ]
  %5034 = phi float [ %4787, %4741 ], [ %4787, %4848 ], [ %5019, %4984 ]
  %5035 = phi float [ %4788, %4741 ], [ %4788, %4848 ], [ %5021, %4984 ]
  %5036 = phi float [ %4789, %4741 ], [ %4789, %4848 ], [ %5023, %4984 ]
  %5037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5038 = extractvalue %dx.types.CBufRet.i32 %5037, 0
  %5039 = icmp eq i32 %5038, 0
  br i1 %5039, label %5474, label %5040

; <label>:5040                                    ; preds = %5030
  %5041 = fptoui float %67 to i32
  %5042 = fptoui float %68 to i32
  %5043 = lshr i32 %5041, 4
  %5044 = lshr i32 %5042, 4
  %5045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5046 = extractvalue %dx.types.CBufRet.i32 %5045, 0
  %5047 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5044, i32 %5046, i32 %5043)  ; UMad(a,b,c)
  %5048 = add nsw i32 %5038, -1
  %5049 = call i32 @dx.op.binary.i32(i32 37, i32 %5048, i32 0)  ; IMax(a,b)
  %5050 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %5051 = fptoui float %5050 to i32
  %5052 = lshr i32 %5051, 5
  %5053 = call i32 @dx.op.binary.i32(i32 40, i32 %5052, i32 8191)  ; UMin(a,b)
  %5054 = shl i32 %5053, 2
  %5055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5054, i32 undef)  ; BufferLoad(srv,index,wot)
  %5056 = extractvalue %dx.types.ResRet.i32 %5055, 0
  %5057 = lshr i32 %5056, 16
  %5058 = and i32 %5056, 65535
  %5059 = lshr i32 %5056, 21
  %5060 = lshr i32 %5058, 5
  %5061 = call i32 @dx.op.binary.i32(i32 40, i32 %5060, i32 %5049)  ; UMin(a,b)
  %5062 = icmp ugt i32 %5059, %5061
  br i1 %5062, label %5474, label %5063

; <label>:5063                                    ; preds = %5040
  br label %5064

; <label>:5064                                    ; preds = %5464, %5063
  %5065 = phi i32 [ %5471, %5464 ], [ %5059, %5063 ]
  %5066 = phi float [ %5465, %5464 ], [ %5031, %5063 ]
  %5067 = phi float [ %5466, %5464 ], [ %5032, %5063 ]
  %5068 = phi float [ %5467, %5464 ], [ %5033, %5063 ]
  %5069 = phi float [ %5468, %5464 ], [ %5034, %5063 ]
  %5070 = phi float [ %5469, %5464 ], [ %5035, %5063 ]
  %5071 = phi float [ %5470, %5464 ], [ %5036, %5063 ]
  %5072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5073 = extractvalue %dx.types.CBufRet.i32 %5072, 0
  %5074 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5047, i32 %5073, i32 %5065)  ; UMad(a,b,c)
  %5075 = shl i32 %5074, 2
  %5076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5075, i32 undef)  ; BufferLoad(srv,index,wot)
  %5077 = extractvalue %dx.types.ResRet.i32 %5076, 0
  %5078 = shl i32 %5065, 5
  %5079 = sub nsw i32 %5057, %5078
  %5080 = call i32 @dx.op.binary.i32(i32 37, i32 %5079, i32 0)  ; IMax(a,b)
  %5081 = call i32 @dx.op.binary.i32(i32 38, i32 %5080, i32 31)  ; IMin(a,b)
  %5082 = sub nsw i32 1, %5057
  %5083 = add nsw i32 %5082, %5058
  %5084 = call i32 @dx.op.binary.i32(i32 37, i32 %5083, i32 0)  ; IMax(a,b)
  %5085 = call i32 @dx.op.binary.i32(i32 38, i32 %5084, i32 32)  ; IMin(a,b)
  %5086 = and i32 %5085, 31
  %5087 = shl i32 -1, %5086
  %5088 = xor i32 %5087, -1
  %5089 = and i32 %5081, 31
  %5090 = shl i32 %5088, %5089
  %5091 = icmp eq i32 %5085, 32
  %5092 = select i1 %5091, i32 -1, i32 %5090
  %5093 = and i32 %5092, %5077
  %5094 = icmp eq i32 %5093, 0
  br i1 %5094, label %5464, label %5095

; <label>:5095                                    ; preds = %5064
  br label %5096

; <label>:5096                                    ; preds = %5176, %5095
  %5097 = phi i32 [ %5108, %5176 ], [ %5093, %5095 ]
  %5098 = phi float [ %5177, %5176 ], [ %5066, %5095 ]
  %5099 = phi float [ %5178, %5176 ], [ %5067, %5095 ]
  %5100 = phi float [ %5179, %5176 ], [ %5068, %5095 ]
  %5101 = phi float [ %5180, %5176 ], [ %5069, %5095 ]
  %5102 = phi float [ %5181, %5176 ], [ %5070, %5095 ]
  %5103 = phi float [ %5182, %5176 ], [ %5071, %5095 ]
  %5104 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5097)  ; FirstbitLo(value)
  %5105 = add i32 %5104, %5078
  %5106 = and i32 %5104, 31
  %5107 = shl i32 1, %5106
  %5108 = xor i32 %5107, %5097
  %5109 = mul i32 %5105, 112
  %5110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5109, i32 undef)  ; BufferLoad(srv,index,wot)
  %5111 = extractvalue %dx.types.ResRet.f32 %5110, 0
  %5112 = extractvalue %dx.types.ResRet.f32 %5110, 1
  %5113 = extractvalue %dx.types.ResRet.f32 %5110, 2
  %5114 = or i32 %5109, 12
  %5115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5114, i32 undef)  ; BufferLoad(srv,index,wot)
  %5116 = extractvalue %dx.types.ResRet.f32 %5115, 0
  %5117 = add i32 %5109, 44
  %5118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5117, i32 undef)  ; BufferLoad(srv,index,wot)
  %5119 = extractvalue %dx.types.ResRet.f32 %5118, 0
  %5120 = add i32 %5109, 48
  %5121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5120, i32 undef)  ; BufferLoad(srv,index,wot)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = extractvalue %dx.types.ResRet.f32 %5121, 1
  %5124 = extractvalue %dx.types.ResRet.f32 %5121, 2
  %5125 = add i32 %5109, 80
  %5126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5125, i32 undef)  ; BufferLoad(srv,index,wot)
  %5127 = extractvalue %dx.types.ResRet.f32 %5126, 1
  %5128 = extractvalue %dx.types.ResRet.f32 %5126, 2
  %5129 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5130 = select i1 %172, float %5127, float %5111
  %5131 = select i1 %172, float %5129, float %5112
  %5132 = select i1 %172, float %5128, float %5113
  %5133 = fsub fast float %5122, %130
  %5134 = fsub fast float %5123, %131
  %5135 = fsub fast float %5124, %132
  %5136 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5135, float %5133, float %5134, float %5135)  ; Dot3(ax,ay,az,bx,by,bz)
  %5137 = call float @dx.op.unary.f32(i32 24, float %5136)  ; Sqrt(value)
  %5138 = fdiv fast float 1.000000e+00, %5137
  %5139 = fmul fast float %5138, %5133
  %5140 = fmul fast float %5138, %5134
  %5141 = fmul fast float %5138, %5135
  %5142 = fadd fast float %5137, %5116
  %5143 = fdiv fast float 1.000000e+00, %5142
  %5144 = fmul float %5119, %5143
  %5145 = fmul float %5144, %5144
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = and i32 %5107, %5093
  %5148 = icmp eq i32 %5147, 0
  br i1 %5148, label %5171, label %5149, !dx.controlflow.hints !73

; <label>:5149                                    ; preds = %5096
  %5150 = lshr i32 %5041, 5
  %5151 = lshr i32 %5042, 5
  %5152 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5150, i32 %5151, i32 %5105, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5153 = extractvalue %dx.types.ResRet.i32 %5152, 0
  %5154 = and i32 %5153, 3
  %5155 = icmp eq i32 %5154, 0
  %5156 = select i1 %5155, float 1.000000e+00, float 0.000000e+00
  %5157 = icmp eq i32 %5154, 3
  br i1 %5157, label %5158, label %5171

; <label>:5158                                    ; preds = %5149
  %5159 = lshr i32 %5153, 10
  %5160 = and i32 %5159, 8160
  %5161 = and i32 %5042, 31
  %5162 = or i32 %5160, %5161
  %5163 = lshr i32 %5153, 1
  %5164 = and i32 %5163, 16352
  %5165 = and i32 %5041, 31
  %5166 = or i32 %5164, %5165
  %5167 = lshr i32 %5153, 23
  %5168 = and i32 %5167, 255
  %5169 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5166, i32 %5162, i32 %5168, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5170 = extractvalue %dx.types.ResRet.f32 %5169, 0
  br label %5171

; <label>:5171                                    ; preds = %5158, %5149, %5096
  %5172 = phi float [ %5170, %5158 ], [ %5156, %5149 ], [ 0.000000e+00, %5096 ]
  %5173 = call float @dx.op.binary.f32(i32 36, float %5172, float %5172)  ; FMin(a,b)
  %5174 = call float @dx.op.binary.f32(i32 36, float %5172, float %5173)  ; FMin(a,b)
  %5175 = fcmp fast ogt float %5174, 0.000000e+00
  br i1 %5175, label %5184, label %5176, !dx.controlflow.hints !74

; <label>:5176                                    ; preds = %5420, %5171
  %5177 = phi float [ %5098, %5171 ], [ %5460, %5420 ]
  %5178 = phi float [ %5099, %5171 ], [ %5461, %5420 ]
  %5179 = phi float [ %5100, %5171 ], [ %5462, %5420 ]
  %5180 = phi float [ %5101, %5171 ], [ %5454, %5420 ]
  %5181 = phi float [ %5102, %5171 ], [ %5455, %5420 ]
  %5182 = phi float [ %5103, %5171 ], [ %5456, %5420 ]
  %5183 = icmp eq i32 %5097, %5107
  br i1 %5183, label %5463, label %5096

; <label>:5184                                    ; preds = %5171
  %5185 = fmul fast float %5172, %5130
  %5186 = fmul fast float %5172, %5131
  %5187 = fmul fast float %5172, %5132
  %5188 = fsub fast float %5124, %4376
  %5189 = fcmp fast ogt float %5188, 0.000000e+00
  %5190 = fsub fast float %132, %4376
  %5191 = fcmp fast ogt float %5190, 0.000000e+00
  %5192 = xor i1 %5191, %5189
  %5193 = fsub fast float %4376, %5124
  %5194 = fmul fast float %5193, 2.000000e+00
  %5195 = fadd fast float %5194, %5124
  %5196 = select i1 %5192, float %5124, float %5195
  %5197 = fsub fast float %5196, %132
  %5198 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5197, float %5133, float %5134, float %5197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = call float @dx.op.unary.f32(i32 25, float %5198)  ; Rsqrt(value)
  %5200 = fmul fast float %5199, %5133
  %5201 = fmul fast float %5199, %5134
  %5202 = fmul fast float %5199, %5197
  %5203 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4384)  ; Dot3(ax,ay,az,bx,by,bz)
  %5204 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5200, float %5201, float %5202)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = fdiv fast float 1.000000e+00, %5204
  %5206 = fmul fast float %5205, %5203
  %5207 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5190, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = fcmp fast ogt float %5207, 0.000000e+00
  %5209 = fcmp fast olt float %5207, 0.000000e+00
  %5210 = zext i1 %5208 to i32
  %5211 = zext i1 %5209 to i32
  %5212 = sub nsw i32 %5210, %5211
  %5213 = sitofp i32 %5212 to float
  %5214 = fsub fast float %5196, %4376
  %5215 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5134, float %5214, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = fcmp fast ogt float %5215, 0.000000e+00
  %5217 = fcmp fast olt float %5215, 0.000000e+00
  %5218 = zext i1 %5216 to i32
  %5219 = zext i1 %5217 to i32
  %5220 = sub nsw i32 %5218, %5219
  %5221 = sitofp i32 %5220 to float
  %5222 = fcmp fast une float %5213, %5221
  br i1 %5222, label %5223, label %5233

; <label>:5223                                    ; preds = %5184
  %5224 = fmul fast float %5206, %5202
  %5225 = fmul fast float %5206, %5201
  %5226 = fmul fast float %5206, %5200
  %5227 = fmul fast float %5226, %5226
  %5228 = fmul fast float %5225, %5225
  %5229 = fadd fast float %5227, %5228
  %5230 = fmul fast float %5224, %5224
  %5231 = fadd fast float %5229, %5230
  %5232 = call float @dx.op.unary.f32(i32 24, float %5231)  ; Sqrt(value)
  br label %5245

; <label>:5233                                    ; preds = %5184
  %5234 = icmp slt i32 %5212, 0
  br i1 %5234, label %5235, label %5245

; <label>:5235                                    ; preds = %5233
  %5236 = fsub fast float %130, %5122
  %5237 = fsub fast float %131, %5123
  %5238 = fsub fast float %132, %5196
  %5239 = fmul fast float %5236, %5236
  %5240 = fmul fast float %5237, %5237
  %5241 = fadd fast float %5239, %5240
  %5242 = fmul fast float %5238, %5238
  %5243 = fadd fast float %5241, %5242
  %5244 = call float @dx.op.unary.f32(i32 24, float %5243)  ; Sqrt(value)
  br label %5245

; <label>:5245                                    ; preds = %5235, %5233, %5223
  %5246 = phi float [ %5232, %5223 ], [ %5244, %5235 ], [ 0.000000e+00, %5233 ]
  %5247 = and i1 %5191, %5189
  %5248 = fsub fast float -0.000000e+00, %5246
  %5249 = select i1 %5247, float -0.000000e+00, float %5248
  %5250 = fmul fast float %4377, 0x3FF7154760000000
  %5251 = fmul fast float %5250, %5249
  %5252 = fmul fast float %4378, 0x3FF7154760000000
  %5253 = fmul fast float %5252, %5249
  %5254 = fmul fast float %4379, 0x3FF7154760000000
  %5255 = fmul fast float %5254, %5249
  %5256 = call float @dx.op.unary.f32(i32 21, float %5251)  ; Exp(value)
  %5257 = call float @dx.op.unary.f32(i32 21, float %5253)  ; Exp(value)
  %5258 = call float @dx.op.unary.f32(i32 21, float %5255)  ; Exp(value)
  %5259 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5260 = call float @dx.op.unary.f32(i32 7, float %5257)  ; Saturate(value)
  %5261 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5262 = fmul fast float %5185, %5259
  %5263 = fmul fast float %5186, %5260
  %5264 = fmul fast float %5187, %5261
  %5265 = fsub fast float %5139, %4576
  %5266 = fsub fast float %5140, %4575
  %5267 = fsub fast float %5141, %4574
  %5268 = call float @dx.op.dot3.f32(i32 55, float %5265, float %5266, float %5267, float %5265, float %5266, float %5267)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = call float @dx.op.unary.f32(i32 25, float %5268)  ; Rsqrt(value)
  %5270 = fmul fast float %5269, %5265
  %5271 = fmul fast float %5269, %5266
  %5272 = fmul fast float %5269, %5267
  %5273 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %5141, float %4577, float %4578, float %4579)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = call float @dx.op.dot3.f32(i32 55, float %4573, float %4572, float %4571, float %5270, float %5271, float %5272)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5276 = fmul fast float %5275, %5146
  %5277 = fmul fast float %5275, %5275
  %5278 = fmul fast float %5277, %4799
  %5279 = call float @dx.op.unary.f32(i32 7, float %5278)  ; Saturate(value)
  %5280 = fmul fast float %5276, %5279
  %5281 = bitcast float %5136 to i32
  %5282 = ashr i32 %5281, 1
  %5283 = sub nsw i32 1597463007, %5282
  %5284 = bitcast i32 %5283 to float
  %5285 = fmul fast float %5284, %5133
  %5286 = fmul fast float %5284, %5134
  %5287 = fmul fast float %5284, %5135
  %5288 = fsub fast float %5285, %4576
  %5289 = fsub fast float %5286, %4575
  %5290 = fsub fast float %5287, %4574
  %5291 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %5290, float %5288, float %5289, float %5290)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = call float @dx.op.unary.f32(i32 25, float %5291)  ; Rsqrt(value)
  %5293 = fmul fast float %5288, %5292
  %5294 = fmul fast float %5289, %5292
  %5295 = fmul fast float %5290, %5292
  %5296 = call float @dx.op.dot3.f32(i32 55, float %4577, float %4578, float %4579, float %5293, float %5294, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = fmul fast float %5296, %5296
  %5298 = call float @dx.op.unary.f32(i32 6, float %5273)  ; FAbs(value)
  %5299 = fsub fast float 1.000000e+00, %4586
  %5300 = call float @dx.op.binary.f32(i32 35, float %5299, float 0x3F847AE140000000)  ; FMax(a,b)
  %5301 = fmul fast float %5300, %5300
  %5302 = fmul fast float %5301, %5301
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = fmul fast float %4590, %4590
  %5305 = fmul fast float %5304, %5303
  %5306 = fadd fast float %5305, %5302
  %5307 = bitcast float %5306 to i32
  %5308 = ashr i32 %5307, 1
  %5309 = add nsw i32 %5308, 532487669
  %5310 = bitcast i32 %5309 to float
  %5311 = fadd fast float %5310, %4590
  %5312 = fmul fast float %5302, %5297
  %5313 = fsub fast float 1.000000e+00, %5297
  %5314 = fadd fast float %5313, %5312
  %5315 = fmul fast float %5298, %5298
  %5316 = fmul fast float %5315, %5303
  %5317 = fadd fast float %5316, %5302
  %5318 = bitcast float %5317 to i32
  %5319 = ashr i32 %5318, 1
  %5320 = add nsw i32 %5319, 532487669
  %5321 = bitcast i32 %5320 to float
  %5322 = fadd fast float %5321, %5298
  %5323 = fmul fast float %5314, %5314
  %5324 = fmul fast float %5323, %5311
  %5325 = fmul fast float %5324, %5322
  %5326 = fdiv fast float 1.000000e+00, %5325
  %5327 = bitcast float %5302 to i32
  %5328 = sitofp i32 %5327 to float
  %5329 = fmul fast float %5328, 0x3FE7F73180000000
  %5330 = fadd fast float %5329, 0x41AFE27C40000000
  %5331 = fptosi float %5330 to i32
  %5332 = bitcast i32 %5331 to float
  %5333 = fmul fast float %5119, 0x3FD80E9D60000000
  %5334 = fmul fast float %5333, %5284
  %5335 = fadd fast float %5332, %5334
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = fmul fast float %5302, %5326
  %5340 = fmul fast float %5339, %5332
  %5341 = fmul fast float %5340, %5338
  %5342 = call float @dx.op.unary.f32(i32 6, float %5274)  ; FAbs(value)
  %5343 = fsub fast float 1.000000e+00, %5342
  %5344 = bitcast float %5343 to i32
  %5345 = sitofp i32 %5344 to float
  %5346 = fmul fast float %5345, 5.000000e+00
  %5347 = fadd fast float %5346, 0xC1EFBF8940000000
  %5348 = fptosi float %5347 to i32
  %5349 = bitcast i32 %5348 to float
  %5350 = fsub fast float 1.000000e+00, %4580
  %5351 = fsub fast float 1.000000e+00, %4581
  %5352 = fsub fast float 1.000000e+00, %4588
  %5353 = fmul fast float %5349, %5350
  %5354 = fmul fast float %5349, %5351
  %5355 = fmul fast float %5349, %5352
  %5356 = fadd fast float %5353, %4580
  %5357 = fadd fast float %5354, %4581
  %5358 = fadd fast float %5355, %4588
  br i1 %4714, label %5359, label %5382

; <label>:5359                                    ; preds = %5245
  %5360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3954, float %5342, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5361 = extractvalue %dx.types.ResRet.f32 %5360, 0
  %5362 = extractvalue %dx.types.ResRet.f32 %5360, 1
  %5363 = extractvalue %dx.types.ResRet.f32 %5360, 2
  %5364 = fadd fast float %5361, -5.000000e-01
  %5365 = fadd fast float %5362, -5.000000e-01
  %5366 = fadd fast float %5363, -5.000000e-01
  %5367 = fmul fast float %4580, 4.000000e+00
  %5368 = fmul fast float %5367, %5350
  %5369 = fmul fast float %5368, %5364
  %5370 = fmul fast float %4581, 4.000000e+00
  %5371 = fmul fast float %5370, %5351
  %5372 = fmul fast float %5371, %5365
  %5373 = fmul fast float %4588, 4.000000e+00
  %5374 = fmul fast float %5373, %5352
  %5375 = fmul fast float %5374, %5366
  %5376 = fadd fast float %5369, %5356
  %5377 = fadd fast float %5372, %5357
  %5378 = fadd fast float %5375, %5358
  %5379 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5380 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5381 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  br label %5382

; <label>:5382                                    ; preds = %5359, %5245
  %5383 = phi float [ %5379, %5359 ], [ %5356, %5245 ]
  %5384 = phi float [ %5380, %5359 ], [ %5357, %5245 ]
  %5385 = phi float [ %5381, %5359 ], [ %5358, %5245 ]
  %5386 = fmul fast float %5273, 9.843750e-01
  %5387 = fadd fast float %5386, 7.812500e-03
  %5388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5387, float %4704, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 2
  %5390 = extractvalue %dx.types.ResRet.f32 %5388, 3
  %5391 = fmul fast float %5389, %4580
  %5392 = fmul fast float %5389, %4581
  %5393 = fmul fast float %5389, %4588
  %5394 = fadd fast float %5391, %5390
  %5395 = fadd fast float %5392, %5390
  %5396 = fadd fast float %5393, %5390
  br i1 %4714, label %5397, label %5420

; <label>:5397                                    ; preds = %5382
  %5398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3954, float %5273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.ResRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.ResRet.f32 %5398, 2
  %5402 = fadd fast float %5399, -5.000000e-01
  %5403 = fadd fast float %5400, -5.000000e-01
  %5404 = fadd fast float %5401, -5.000000e-01
  %5405 = fmul fast float %4580, 4.000000e+00
  %5406 = fmul fast float %5405, %5350
  %5407 = fmul fast float %5406, %5402
  %5408 = fmul fast float %4581, 4.000000e+00
  %5409 = fmul fast float %5408, %5351
  %5410 = fmul fast float %5409, %5403
  %5411 = fmul fast float %4588, 4.000000e+00
  %5412 = fmul fast float %5411, %5352
  %5413 = fmul fast float %5412, %5404
  %5414 = fadd fast float %5407, %5394
  %5415 = fadd fast float %5410, %5395
  %5416 = fadd fast float %5413, %5396
  %5417 = call float @dx.op.unary.f32(i32 7, float %5414)  ; Saturate(value)
  %5418 = call float @dx.op.unary.f32(i32 7, float %5415)  ; Saturate(value)
  %5419 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  br label %5420

; <label>:5420                                    ; preds = %5397, %5382
  %5421 = phi float [ %5417, %5397 ], [ %5394, %5382 ]
  %5422 = phi float [ %5418, %5397 ], [ %5395, %5382 ]
  %5423 = phi float [ %5419, %5397 ], [ %5396, %5382 ]
  %5424 = call float @dx.op.binary.f32(i32 35, float %5422, float %5423)  ; FMax(a,b)
  %5425 = call float @dx.op.binary.f32(i32 35, float %5421, float %5424)  ; FMax(a,b)
  %5426 = fsub fast float 1.000000e+00, %5425
  %5427 = fmul fast float %5383, %5341
  %5428 = fmul fast float %5384, %5341
  %5429 = fmul fast float %5385, %5341
  %5430 = fsub fast float 1.000000e+00, %5274
  %5431 = bitcast float %5430 to i32
  %5432 = sitofp i32 %5431 to float
  %5433 = fmul fast float %5432, 5.000000e+00
  %5434 = fadd fast float %5433, 0xC1EFBF8940000000
  %5435 = fptosi float %5434 to i32
  %5436 = bitcast i32 %5435 to float
  %5437 = fmul fast float %5436, %3953
  %5438 = fmul fast float %5426, %5437
  %5439 = fmul fast float %5438, %4764
  %5440 = fmul fast float %5438, %4765
  %5441 = fmul fast float %5438, %4766
  %5442 = fadd fast float %5439, %5427
  %5443 = fadd fast float %5440, %5428
  %5444 = fadd fast float %5441, %5429
  %5445 = fmul fast float %5262, %3974
  %5446 = fmul fast float %5445, %5280
  %5447 = fmul fast float %5446, %5426
  %5448 = fmul fast float %5263, %3974
  %5449 = fmul fast float %5448, %5280
  %5450 = fmul fast float %5449, %5426
  %5451 = fmul fast float %5264, %3974
  %5452 = fmul fast float %5451, %5280
  %5453 = fmul fast float %5452, %5426
  %5454 = fadd fast float %5447, %5101
  %5455 = fadd fast float %5450, %5102
  %5456 = fadd fast float %5453, %5103
  %5457 = fmul fast float %5446, %5442
  %5458 = fmul fast float %5449, %5443
  %5459 = fmul fast float %5452, %5444
  %5460 = fadd fast float %5457, %5098
  %5461 = fadd fast float %5458, %5099
  %5462 = fadd fast float %5459, %5100
  br label %5176

; <label>:5463                                    ; preds = %5176
  br label %5464

; <label>:5464                                    ; preds = %5463, %5064
  %5465 = phi float [ %5066, %5064 ], [ %5177, %5463 ]
  %5466 = phi float [ %5067, %5064 ], [ %5178, %5463 ]
  %5467 = phi float [ %5068, %5064 ], [ %5179, %5463 ]
  %5468 = phi float [ %5069, %5064 ], [ %5180, %5463 ]
  %5469 = phi float [ %5070, %5064 ], [ %5181, %5463 ]
  %5470 = phi float [ %5071, %5064 ], [ %5182, %5463 ]
  %5471 = add i32 %5065, 1
  %5472 = icmp ugt i32 %5471, %5061
  br i1 %5472, label %5473, label %5064

; <label>:5473                                    ; preds = %5464
  br label %5474

; <label>:5474                                    ; preds = %5473, %5040, %5030
  %5475 = phi float [ %5031, %5030 ], [ %5031, %5040 ], [ %5465, %5473 ]
  %5476 = phi float [ %5032, %5030 ], [ %5032, %5040 ], [ %5466, %5473 ]
  %5477 = phi float [ %5033, %5030 ], [ %5033, %5040 ], [ %5467, %5473 ]
  %5478 = phi float [ %5034, %5030 ], [ %5034, %5040 ], [ %5468, %5473 ]
  %5479 = phi float [ %5035, %5030 ], [ %5035, %5040 ], [ %5469, %5473 ]
  %5480 = phi float [ %5036, %5030 ], [ %5036, %5040 ], [ %5470, %5473 ]
  %5481 = call float @dx.op.unary.f32(i32 24, float %4583)  ; Sqrt(value)
  %5482 = call float @dx.op.unary.f32(i32 24, float %4584)  ; Sqrt(value)
  %5483 = call float @dx.op.unary.f32(i32 24, float %4585)  ; Sqrt(value)
  %5484 = fmul fast float %5481, %5478
  %5485 = fmul fast float %5482, %5479
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  br i1 %172, label %5488, label %5508

; <label>:5488                                    ; preds = %5474
  %5489 = fadd fast float %5480, %3951
  %5490 = fmul fast float %5489, %3952
  %5491 = fsub fast float 1.000000e+00, %3952
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 3
  %5495 = fmul fast float %5494, %5492
  %5496 = fadd fast float %5495, %5490
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5499 = fmul fast float %5498, %4770
  %5500 = fsub fast float %5496, %5499
  %5501 = fadd fast float %5485, %5484
  %5502 = fmul fast float %5487, %5501
  %5503 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5504 = fsub fast float %5500, %5503
  %5505 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5506 = fmul fast float %5504, %5505
  %5507 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  br label %5524

; <label>:5508                                    ; preds = %5474
  %5509 = fmul fast float %5483, %5480
  %5510 = fmul fast float %5487, %5484
  %5511 = fmul fast float %5487, %5485
  %5512 = fmul fast float %5509, %5487
  %5513 = add i32 %33, 356
  %5514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5513, i32 undef)  ; BufferLoad(srv,index,wot)
  %5515 = extractvalue %dx.types.ResRet.i32 %5514, 0
  %5516 = and i32 %5515, 32
  %5517 = icmp eq i32 %5516, 0
  br i1 %5517, label %5524, label %5518

; <label>:5518                                    ; preds = %5508
  %5519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.f32 %5519, 0
  %5521 = fmul fast float %5520, 0x3FE99999A0000000
  %5522 = fadd fast float %5520, %5510
  %5523 = fadd fast float %5521, %5512
  br label %5524

; <label>:5524                                    ; preds = %5518, %5508, %5488
  %5525 = phi float [ %5502, %5488 ], [ %5522, %5518 ], [ %5510, %5508 ]
  %5526 = phi float [ %5507, %5488 ], [ %5511, %5518 ], [ %5511, %5508 ]
  %5527 = phi float [ 1.000000e+00, %5488 ], [ %5523, %5518 ], [ %5512, %5508 ]
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5530 = fmul fast float %5529, %5476
  %5531 = fmul fast float %5529, %5477
  %5532 = fadd fast float %5476, %5475
  %5533 = select i1 %172, float %5532, float %5475
  %5534 = fmul float %5533, %5529
  %5535 = select i1 %172, float 0.000000e+00, float %5530
  %5536 = select i1 %172, float 0.000000e+00, float %5531
  %5537 = fmul fast float %5525, %5481
  %5538 = fmul fast float %5526, %5482
  %5539 = fmul fast float %5527, %5483
  %5540 = fadd fast float %5534, %5537
  %5541 = fadd fast float %5535, %5538
  %5542 = fadd fast float %5536, %5539
  %5543 = select i1 %172, float %5526, float %5541
  %5544 = select i1 %172, float %5527, float %5542
  %5545 = call float @dx.op.binary.f32(i32 36, float %5540, float 3.225500e+04)  ; FMin(a,b)
  %5546 = call float @dx.op.binary.f32(i32 36, float %5543, float 3.225500e+04)  ; FMin(a,b)
  %5547 = call float @dx.op.binary.f32(i32 36, float %5544, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5545)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
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
!67 = !{i32 3, i32 5}
!68 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!69 = !{!70}
!70 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!71 = !{i32 0, i64 24}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}

