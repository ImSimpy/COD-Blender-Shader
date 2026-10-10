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
; shader hash: f27f624bc1cafbf4f1b957fb1764b175
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
  %355 = add i32 %33, 488
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
  br i1 %345, label %1833, label %881

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
  br i1 %890, label %1833, label %891

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
  br i1 %1179, label %1833, label %1180

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
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 1024
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1563, label %1533

; <label>:1533                                    ; preds = %1525
  %1534 = add i32 %33, 168
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = fmul fast float %1538, 0x3F70101020000000
  %1540 = lshr i32 %1536, 8
  %1541 = and i32 %1540, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = fmul fast float %1542, 0x3F70101020000000
  %1544 = lshr i32 %1536, 16
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1546, 0x3F70101020000000
  %1548 = fmul fast float %1539, %1539
  %1549 = fmul fast float %1543, %1543
  %1550 = fmul fast float %1547, %1547
  %1551 = add i32 %33, 460
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1553, 0
  %1555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1555, %dx.types.Handle %64, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.ResRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.ResRet.f32 %1556, 2
  %1560 = fmul fast float %1548, %1557
  %1561 = fmul fast float %1549, %1558
  %1562 = fmul fast float %1550, %1559
  br label %1563

; <label>:1563                                    ; preds = %1533, %1525
  %1564 = phi float [ %1560, %1533 ], [ 0.000000e+00, %1525 ]
  %1565 = phi float [ %1561, %1533 ], [ 0.000000e+00, %1525 ]
  %1566 = phi float [ %1562, %1533 ], [ 0.000000e+00, %1525 ]
  %1567 = fcmp fast ogt float %1564, 0.000000e+00
  %1568 = fcmp fast ogt float %1565, 0.000000e+00
  %1569 = fcmp fast ogt float %1566, 0.000000e+00
  %1570 = call float @dx.op.unary.f32(i32 23, float %1564)  ; Log(value)
  %1571 = call float @dx.op.unary.f32(i32 23, float %1565)  ; Log(value)
  %1572 = call float @dx.op.unary.f32(i32 23, float %1566)  ; Log(value)
  %1573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1574 = extractvalue %dx.types.ResRet.i32 %1573, 0
  %1575 = lshr i32 %1574, 7
  %1576 = and i32 %1575, 32752
  %1577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1576)  ; LegacyF16ToF32(value)
  %1578 = fmul fast float %1570, 0xBFE62E4300000000
  %1579 = fmul fast float %1578, %1577
  %1580 = fmul fast float %1571, 0xBFE62E4300000000
  %1581 = fmul fast float %1580, %1577
  %1582 = fmul fast float %1572, 0xBFE62E4300000000
  %1583 = fmul fast float %1582, %1577
  %1584 = select i1 %1567, float %1579, float 1.270000e+02
  %1585 = select i1 %1568, float %1581, float 1.270000e+02
  %1586 = select i1 %1569, float %1583, float 1.270000e+02
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 10240
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1611, label %1591

; <label>:1591                                    ; preds = %1563
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = and i32 %1593, 2048
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1611, label %1596

; <label>:1596                                    ; preds = %1591
  %1597 = add i32 %33, 476
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = add i32 %1599, 0
  %1601 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1600, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1601, %dx.types.Handle %64, float %990, float %991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 3
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = shl i32 %1605, 4
  %1607 = and i32 %1606, 32752
  %1608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1607)  ; LegacyF16ToF32(value)
  %1609 = fmul fast float %1608, %1603
  %1610 = call float @dx.op.binary.f32(i32 35, float %1609, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1611

; <label>:1611                                    ; preds = %1596, %1591, %1563
  %1612 = phi float [ %1610, %1596 ], [ 0x3F70101020000000, %1591 ], [ 0x3F70101020000000, %1563 ]
  %1613 = add i32 %33, 112
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = lshr i32 %1615, 8
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1398, float %1399, float %1400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = fmul fast float %1620, %1621
  %1623 = fadd fast float %1622, %1617
  %1624 = fmul fast float %1623, 0x3F70101020000000
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  br i1 %882, label %1626, label %1661

; <label>:1626                                    ; preds = %1611
  %1627 = fmul fast float %1612, 2.000000e+00
  %1628 = fcmp fast olt float %1584, 1.270000e+02
  %1629 = fcmp fast olt float %1585, 1.270000e+02
  %1630 = fcmp fast olt float %1586, 1.270000e+02
  %1631 = fmul fast float %1584, 0xBFF7154760000000
  %1632 = fmul fast float %1631, %1627
  %1633 = fmul fast float %1585, 0xBFF7154760000000
  %1634 = fmul fast float %1633, %1627
  %1635 = fmul fast float %1586, 0xBFF7154760000000
  %1636 = fmul fast float %1635, %1627
  %1637 = call float @dx.op.unary.f32(i32 21, float %1632)  ; Exp(value)
  %1638 = call float @dx.op.unary.f32(i32 21, float %1634)  ; Exp(value)
  %1639 = call float @dx.op.unary.f32(i32 21, float %1636)  ; Exp(value)
  %1640 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1641 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1642 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  %1643 = fadd fast float %1640, -1.000000e+00
  %1644 = select i1 %1628, float %1643, float -1.000000e+00
  %1645 = fadd fast float %1641, -1.000000e+00
  %1646 = select i1 %1629, float %1645, float -1.000000e+00
  %1647 = fadd fast float %1642, -1.000000e+00
  %1648 = select i1 %1630, float %1647, float -1.000000e+00
  %1649 = fmul fast float %1644, %1178
  %1650 = fmul fast float %1646, %1178
  %1651 = fmul fast float %1648, %1178
  %1652 = fadd fast float %1649, 1.000000e+00
  %1653 = fadd fast float %1650, 1.000000e+00
  %1654 = fadd fast float %1651, 1.000000e+00
  %1655 = fmul fast float %1652, %870
  %1656 = fmul fast float %1653, %871
  %1657 = fmul fast float %1654, %872
  %1658 = fmul fast float %1652, %873
  %1659 = fmul fast float %1653, %874
  %1660 = fmul fast float %1654, %875
  br label %1661

; <label>:1661                                    ; preds = %1626, %1611
  %1662 = phi float [ %1655, %1626 ], [ %870, %1611 ]
  %1663 = phi float [ %1656, %1626 ], [ %871, %1611 ]
  %1664 = phi float [ %1657, %1626 ], [ %872, %1611 ]
  %1665 = phi float [ %1658, %1626 ], [ %873, %1611 ]
  %1666 = phi float [ %1659, %1626 ], [ %874, %1611 ]
  %1667 = phi float [ %1660, %1626 ], [ %875, %1611 ]
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = and i32 %1669, 3
  %1671 = icmp eq i32 %1670, 3
  br i1 %1671, label %1750, label %1672

; <label>:1672                                    ; preds = %1661
  %1673 = and i32 %1669, 16
  %1674 = icmp ne i32 %1673, 0
  %1675 = select i1 %1674, float %1178, float 0.000000e+00
  %1676 = icmp eq i32 %1670, 0
  br i1 %1676, label %1677, label %1705

; <label>:1677                                    ; preds = %1672
  %1678 = and i32 %1669, 64
  %1679 = icmp ne i32 %1678, 0
  %1680 = select i1 %1679, float %1178, float 0.000000e+00
  %1681 = fsub fast float %1398, %1662
  %1682 = fsub fast float %1399, %1663
  %1683 = fsub fast float %1400, %1664
  %1684 = fmul fast float %1675, %1681
  %1685 = fmul fast float %1675, %1682
  %1686 = fmul fast float %1675, %1683
  %1687 = fadd fast float %1684, %1662
  %1688 = fadd fast float %1685, %1663
  %1689 = fadd fast float %1686, %1664
  %1690 = fsub fast float %1384, %876
  %1691 = fmul fast float %1675, %1690
  %1692 = fadd fast float %1691, %876
  %1693 = fsub fast float %1526, %1665
  %1694 = fsub fast float %1527, %1666
  %1695 = fsub fast float %1528, %1667
  %1696 = fmul fast float %1680, %1693
  %1697 = fmul fast float %1680, %1694
  %1698 = fmul fast float %1680, %1695
  %1699 = fadd fast float %1696, %1665
  %1700 = fadd fast float %1697, %1666
  %1701 = fadd fast float %1698, %1667
  %1702 = fsub fast float %1625, %880
  %1703 = fmul fast float %1675, %1702
  %1704 = fadd fast float %1703, %880
  br label %1750

; <label>:1705                                    ; preds = %1672
  %1706 = icmp eq i32 %1670, 1
  br i1 %1706, label %1707, label %1720

; <label>:1707                                    ; preds = %1705
  %1708 = fadd fast float %1398, -1.000000e+00
  %1709 = fadd fast float %1399, -1.000000e+00
  %1710 = fadd fast float %1400, -1.000000e+00
  %1711 = fmul fast float %1675, %1708
  %1712 = fmul fast float %1675, %1709
  %1713 = fmul fast float %1675, %1710
  %1714 = fadd fast float %1711, 1.000000e+00
  %1715 = fadd fast float %1712, 1.000000e+00
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fmul fast float %1714, %1662
  %1718 = fmul fast float %1715, %1663
  %1719 = fmul fast float %1716, %1664
  br label %1750

; <label>:1720                                    ; preds = %1705
  %1721 = icmp eq i32 %1670, 2
  br i1 %1721, label %1722, label %1750

; <label>:1722                                    ; preds = %1720
  %1723 = call float @dx.op.unary.f32(i32 24, float %1398)  ; Sqrt(value)
  %1724 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1725 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1726 = fadd fast float %1723, -5.000000e-01
  %1727 = fadd fast float %1724, -5.000000e-01
  %1728 = fadd fast float %1725, -5.000000e-01
  %1729 = fmul fast float %1726, %1675
  %1730 = fmul fast float %1727, %1675
  %1731 = fmul fast float %1728, %1675
  %1732 = fadd fast float %1729, 5.000000e-01
  %1733 = fadd fast float %1730, 5.000000e-01
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = fmul fast float %1732, 2.000000e+00
  %1736 = fsub fast float 1.000000e+00, %1735
  %1737 = fmul fast float %1736, %1662
  %1738 = fadd fast float %1737, %1735
  %1739 = fmul fast float %1738, %1662
  %1740 = fmul fast float %1733, 2.000000e+00
  %1741 = fsub fast float 1.000000e+00, %1740
  %1742 = fmul fast float %1741, %1663
  %1743 = fadd fast float %1742, %1740
  %1744 = fmul fast float %1743, %1663
  %1745 = fmul fast float %1734, 2.000000e+00
  %1746 = fsub fast float 1.000000e+00, %1745
  %1747 = fmul fast float %1746, %1664
  %1748 = fadd fast float %1747, %1745
  %1749 = fmul fast float %1748, %1664
  br label %1750

; <label>:1750                                    ; preds = %1722, %1720, %1707, %1677, %1661
  %1751 = phi float [ %1662, %1661 ], [ %1739, %1722 ], [ %1662, %1720 ], [ %1717, %1707 ], [ %1687, %1677 ]
  %1752 = phi float [ %1663, %1661 ], [ %1744, %1722 ], [ %1663, %1720 ], [ %1718, %1707 ], [ %1688, %1677 ]
  %1753 = phi float [ %1664, %1661 ], [ %1749, %1722 ], [ %1664, %1720 ], [ %1719, %1707 ], [ %1689, %1677 ]
  %1754 = phi float [ %1665, %1661 ], [ %1665, %1722 ], [ %1665, %1720 ], [ %1665, %1707 ], [ %1699, %1677 ]
  %1755 = phi float [ %1666, %1661 ], [ %1666, %1722 ], [ %1666, %1720 ], [ %1666, %1707 ], [ %1700, %1677 ]
  %1756 = phi float [ %1667, %1661 ], [ %1667, %1722 ], [ %1667, %1720 ], [ %1667, %1707 ], [ %1701, %1677 ]
  %1757 = phi float [ %876, %1661 ], [ %876, %1722 ], [ %876, %1720 ], [ %876, %1707 ], [ %1692, %1677 ]
  %1758 = phi float [ %880, %1661 ], [ %880, %1722 ], [ %880, %1720 ], [ %880, %1707 ], [ %1704, %1677 ]
  %1759 = and i32 %1669, 12
  %1760 = icmp eq i32 %1759, 12
  br i1 %1760, label %1833, label %1761

; <label>:1761                                    ; preds = %1750
  %1762 = and i32 %1669, 2097184
  %1763 = icmp eq i32 %1762, 2097184
  %1764 = select i1 %1763, float %1178, float 0.000000e+00
  %1765 = and i32 %1669, 4194336
  %1766 = icmp eq i32 %1765, 4194336
  %1767 = select i1 %1766, float %1178, float 0.000000e+00
  %1768 = and i32 %1669, 8388640
  %1769 = icmp eq i32 %1768, 8388640
  %1770 = select i1 %1769, float %1178, float 0.000000e+00
  %1771 = icmp eq i32 %1759, 0
  br i1 %1771, label %1772, label %1785

; <label>:1772                                    ; preds = %1761
  %1773 = fsub fast float %1479, %868
  %1774 = fsub fast float %1480, %869
  %1775 = fmul fast float %1764, %1773
  %1776 = fmul fast float %1764, %1774
  %1777 = fadd fast float %1775, %868
  %1778 = fadd fast float %1776, %869
  %1779 = fsub fast float %1481, %879
  %1780 = fmul fast float %1767, %1779
  %1781 = fadd fast float %1780, %879
  %1782 = fsub fast float %1478, %878
  %1783 = fmul fast float %1770, %1782
  %1784 = fadd fast float %1783, %878
  br label %1833

; <label>:1785                                    ; preds = %1761
  %1786 = icmp eq i32 %1759, 4
  br i1 %1786, label %1787, label %1819

; <label>:1787                                    ; preds = %1785
  %1788 = fmul fast float %1764, %1479
  %1789 = fmul fast float %1764, %1480
  %1790 = fadd fast float %1788, %868
  %1791 = fadd fast float %1789, %869
  %1792 = call float @dx.op.binary.f32(i32 36, float %879, float %1481)  ; FMin(a,b)
  %1793 = fsub fast float %1792, %879
  %1794 = fmul fast float %1793, %1767
  %1795 = fadd fast float %1794, %879
  %1796 = fadd fast float %1478, %878
  %1797 = fmul fast float %1796, 0x3FF337FAE0000000
  %1798 = fmul fast float %878, %878
  %1799 = fmul fast float %1478, %1478
  %1800 = fadd fast float %1799, %1798
  %1801 = fmul fast float %1800, 0x3FE5152B00000000
  %1802 = fmul fast float %878, 0xBFCC1F85E0000000
  %1803 = fmul fast float %1802, %1478
  %1804 = fadd fast float %1803, 0xBFE1363700000000
  %1805 = fadd fast float %1804, %1797
  %1806 = fsub fast float %1805, %1801
  %1807 = fmul fast float %1796, 0x3FBA6F0D00000000
  %1808 = fmul fast float %1800, 0x3FD0432880000000
  %1809 = fmul fast float %878, 0xBFEF110800000000
  %1810 = fmul fast float %1809, %1478
  %1811 = fadd fast float %1810, 1.000000e+00
  %1812 = fsub fast float %1811, %1807
  %1813 = fadd fast float %1812, %1808
  %1814 = fdiv fast float %1806, %1813
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  %1816 = fsub fast float %1815, %878
  %1817 = fmul fast float %1816, %1770
  %1818 = fadd fast float %1817, %878
  br label %1833

; <label>:1819                                    ; preds = %1785
  %1820 = icmp eq i32 %1759, 8
  br i1 %1820, label %1821, label %1833

; <label>:1821                                    ; preds = %1819
  %1822 = fmul fast float %1764, %1479
  %1823 = fmul fast float %1764, %1480
  %1824 = fadd fast float %1822, %868
  %1825 = fadd fast float %1823, %869
  %1826 = call float @dx.op.binary.f32(i32 36, float %879, float %1481)  ; FMin(a,b)
  %1827 = fsub fast float %1826, %879
  %1828 = fmul fast float %1827, %1767
  %1829 = fadd fast float %1828, %879
  %1830 = fsub fast float %1478, %878
  %1831 = fmul fast float %1770, %1830
  %1832 = fadd fast float %1831, %878
  br label %1833

; <label>:1833                                    ; preds = %1821, %1819, %1787, %1772, %1750, %1177, %881, %867
  %1834 = phi float [ %868, %1750 ], [ %868, %1177 ], [ %868, %867 ], [ %1824, %1821 ], [ %868, %1819 ], [ %1790, %1787 ], [ %1777, %1772 ], [ %868, %881 ]
  %1835 = phi float [ %869, %1750 ], [ %869, %1177 ], [ %869, %867 ], [ %1825, %1821 ], [ %869, %1819 ], [ %1791, %1787 ], [ %1778, %1772 ], [ %869, %881 ]
  %1836 = phi float [ %1751, %1750 ], [ %870, %1177 ], [ %870, %867 ], [ %1751, %1821 ], [ %1751, %1819 ], [ %1751, %1787 ], [ %1751, %1772 ], [ %870, %881 ]
  %1837 = phi float [ %1752, %1750 ], [ %871, %1177 ], [ %871, %867 ], [ %1752, %1821 ], [ %1752, %1819 ], [ %1752, %1787 ], [ %1752, %1772 ], [ %871, %881 ]
  %1838 = phi float [ %1753, %1750 ], [ %872, %1177 ], [ %872, %867 ], [ %1753, %1821 ], [ %1753, %1819 ], [ %1753, %1787 ], [ %1753, %1772 ], [ %872, %881 ]
  %1839 = phi float [ %1754, %1750 ], [ %873, %1177 ], [ %873, %867 ], [ %1754, %1821 ], [ %1754, %1819 ], [ %1754, %1787 ], [ %1754, %1772 ], [ %873, %881 ]
  %1840 = phi float [ %1755, %1750 ], [ %874, %1177 ], [ %874, %867 ], [ %1755, %1821 ], [ %1755, %1819 ], [ %1755, %1787 ], [ %1755, %1772 ], [ %874, %881 ]
  %1841 = phi float [ %1756, %1750 ], [ %875, %1177 ], [ %875, %867 ], [ %1756, %1821 ], [ %1756, %1819 ], [ %1756, %1787 ], [ %1756, %1772 ], [ %875, %881 ]
  %1842 = phi float [ %1757, %1750 ], [ %876, %1177 ], [ %876, %867 ], [ %1757, %1821 ], [ %1757, %1819 ], [ %1757, %1787 ], [ %1757, %1772 ], [ %876, %881 ]
  %1843 = phi float [ %878, %1750 ], [ %878, %1177 ], [ %878, %867 ], [ %1832, %1821 ], [ %878, %1819 ], [ %1818, %1787 ], [ %1784, %1772 ], [ %878, %881 ]
  %1844 = phi float [ %879, %1750 ], [ %879, %1177 ], [ %879, %867 ], [ %1829, %1821 ], [ %879, %1819 ], [ %1795, %1787 ], [ %1781, %1772 ], [ %879, %881 ]
  %1845 = phi float [ %1758, %1750 ], [ %880, %1177 ], [ %880, %867 ], [ %1758, %1821 ], [ %1758, %1819 ], [ %1758, %1787 ], [ %1758, %1772 ], [ %880, %881 ]
  br i1 %347, label %2798, label %1846

; <label>:1846                                    ; preds = %1833
  %1847 = icmp ult i32 %400, 3
  %1848 = add i32 %33, 56
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = add i32 %33, 60
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = or i32 %1853, %1850
  %1855 = icmp eq i32 %1854, 0
  br i1 %1855, label %2798, label %1856

; <label>:1856                                    ; preds = %1846
  %1857 = and i32 %1850, 262144
  %1858 = icmp ne i32 %1857, 0
  %1859 = select i1 %1858, float %35, float 1.000000e+00
  %1860 = select i1 %1858, float %36, float 0.000000e+00
  %1861 = select i1 %1858, float %37, float 0.000000e+00
  %1862 = select i1 %1858, float %38, float 1.000000e+00
  %1863 = select i1 %1858, float %39, float %55
  %1864 = select i1 %1858, float %40, float %56
  %1865 = add i32 %33, 316
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = lshr i32 %1867, 16
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = fmul fast float %1869, 0x3F50624DE0000000
  %1871 = add i32 %33, 120
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = lshr i32 %1873, 16
  %1875 = and i32 %1874, 255
  %1876 = lshr i32 %1873, 24
  %1877 = add i32 %33, 324
  %1878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.i32 %1878, 0
  %1880 = and i32 %1879, 65535
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = lshr i32 %1879, 16
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = add i32 %33, 64
  %1885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.i32 %1885, 0
  %1887 = lshr i32 %1886, 22
  %1888 = shl nuw nsw i32 %1887, 5
  %1889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1888)  ; LegacyF16ToF32(value)
  %1890 = shl i32 %1886, 4
  %1891 = and i32 %1890, 32752
  %1892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1891)  ; LegacyF16ToF32(value)
  %1893 = lshr i32 %1886, 7
  %1894 = and i32 %1893, 32752
  %1895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1894)  ; LegacyF16ToF32(value)
  %1896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1897 = extractvalue %dx.types.CBufRet.f32 %1896, 3
  %1898 = fmul fast float %1897, 1.000000e+03
  %1899 = fmul fast float %297, %1898
  %1900 = call float @dx.op.unary.f32(i32 22, float %1899)  ; Frc(value)
  %1901 = fadd fast float %1900, %287
  %1902 = fmul fast float %298, %1898
  %1903 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1904 = fadd fast float %1903, %289
  %1905 = fmul fast float %1870, %1898
  %1906 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1907 = fmul fast float %1906, 0x401921FB60000000
  %1908 = fadd fast float %1907, %1889
  %1909 = call float @dx.op.unary.f32(i32 13, float %1908)  ; Sin(value)
  %1910 = call float @dx.op.unary.f32(i32 12, float %1908)  ; Cos(value)
  %1911 = fsub fast float -0.000000e+00, %1909
  %1912 = fadd fast float %1863, -5.000000e-01
  %1913 = fadd fast float %1864, -5.000000e-01
  %1914 = fmul fast float %1881, %1912
  %1915 = fmul fast float %1883, %1913
  %1916 = fadd fast float %1914, 5.000000e-01
  %1917 = fadd fast float %1915, 5.000000e-01
  %1918 = fmul fast float %1892, %1916
  %1919 = fmul fast float %1895, %1917
  %1920 = fmul fast float %1910, %1918
  %1921 = call float @dx.op.tertiary.f32(i32 46, float %1911, float %1919, float %1920)  ; FMad(a,b,c)
  %1922 = fmul fast float %1909, %1918
  %1923 = call float @dx.op.tertiary.f32(i32 46, float %1910, float %1919, float %1922)  ; FMad(a,b,c)
  %1924 = fadd fast float %1901, %1921
  %1925 = fadd fast float %1904, %1923
  %1926 = icmp ugt i32 %1875, 1
  %1927 = icmp ugt i32 %1873, 33554431
  %1928 = or i1 %1927, %1926
  br i1 %1928, label %1929, label %1954

; <label>:1929                                    ; preds = %1856
  %1930 = add i32 %33, 260
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = lshr i32 %1932, 16
  %1934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1933)  ; LegacyF16ToF32(value)
  %1935 = fmul fast float %1897, %1934
  %1936 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1937 = mul nuw nsw i32 %1875, %1876
  %1938 = uitofp i32 %1937 to float
  %1939 = fmul fast float %1936, %1938
  %1940 = call float @dx.op.unary.f32(i32 27, float %1939)  ; Round_ni(value)
  %1941 = fptoui float %1940 to i32
  %1942 = urem i32 %1941, %1875
  %1943 = udiv i32 %1941, %1876
  %1944 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1945 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1946 = uitofp i32 %1942 to float
  %1947 = uitofp i32 %1943 to float
  %1948 = fadd fast float %1944, %1946
  %1949 = fadd fast float %1945, %1947
  %1950 = uitofp i32 %1875 to float
  %1951 = uitofp i32 %1876 to float
  %1952 = fdiv fast float %1948, %1950
  %1953 = fdiv fast float %1949, %1951
  br label %1954

; <label>:1954                                    ; preds = %1929, %1856
  %1955 = phi float [ %1952, %1929 ], [ %1924, %1856 ]
  %1956 = phi float [ %1953, %1929 ], [ %1925, %1856 ]
  %1957 = and i32 %1850, 16777216
  %1958 = icmp eq i32 %1957, 0
  br i1 %1958, label %2068, label %1959

; <label>:1959                                    ; preds = %1954
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 0
  %1962 = extractvalue %dx.types.CBufRet.f32 %1960, 1
  %1963 = extractvalue %dx.types.CBufRet.f32 %1960, 2
  %1964 = fadd fast float %1961, %130
  %1965 = fadd fast float %1962, %131
  %1966 = fadd fast float %1963, %132
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1970 = icmp eq i32 %34, 65535
  br i1 %1970, label %2065, label %1971

; <label>:1971                                    ; preds = %1959
  %1972 = lshr i32 %34, 1
  %1973 = shl i32 %1972, 2
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = and i32 %34, 1
  %1977 = icmp ne i32 %1976, 0
  %1978 = lshr i32 %1975, 16
  %1979 = and i32 %1975, 65535
  %1980 = select i1 %1977, i32 %1978, i32 %1979
  %1981 = icmp eq i32 %1980, 65535
  br i1 %1981, label %2061, label %1982

; <label>:1982                                    ; preds = %1971
  %1983 = mul nuw nsw i32 %1980, 40
  %1984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.f32 %1984, 0
  %1986 = extractvalue %dx.types.ResRet.f32 %1984, 1
  %1987 = extractvalue %dx.types.ResRet.f32 %1984, 2
  %1988 = add nuw nsw i32 %1983, 12
  %1989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.ResRet.f32 %1989, 1
  %1992 = extractvalue %dx.types.ResRet.f32 %1989, 2
  %1993 = add nuw nsw i32 %1983, 24
  %1994 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.ResRet.f32 %1994, 1
  %1997 = extractvalue %dx.types.ResRet.f32 %1994, 2
  %1998 = add nuw nsw i32 %1983, 36
  %1999 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.f32 %1999, 0
  %2001 = fsub fast float %1964, %1985
  %2002 = fsub fast float %1965, %1986
  %2003 = fsub fast float %1966, %1987
  %2004 = fmul fast float %2000, %2001
  %2005 = fmul fast float %2000, %2002
  %2006 = fmul fast float %2000, %2003
  %2007 = call float @dx.op.unary.f32(i32 27, float %2004)  ; Round_ni(value)
  %2008 = call float @dx.op.unary.f32(i32 27, float %2005)  ; Round_ni(value)
  %2009 = call float @dx.op.unary.f32(i32 27, float %2006)  ; Round_ni(value)
  %2010 = fadd fast float %2007, 5.000000e-01
  %2011 = fadd fast float %2008, 5.000000e-01
  %2012 = fadd fast float %2009, 5.000000e-01
  %2013 = fmul fast float %2010, %1990
  %2014 = fmul fast float %2011, %1991
  %2015 = fmul fast float %2012, %1992
  %2016 = shl i32 %34, 2
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = add i32 %2018, 0
  %2020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2021 = call float @dx.op.unary.f32(i32 22, float %2013)  ; Frc(value)
  %2022 = call float @dx.op.unary.f32(i32 22, float %2014)  ; Frc(value)
  %2023 = call float @dx.op.unary.f32(i32 22, float %2015)  ; Frc(value)
  %2024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2020, %dx.types.Handle %30, float %2021, float %2022, float %2023, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.ResRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.ResRet.f32 %2024, 2
  %2028 = fmul fast float %2025, 1.023000e+03
  %2029 = fmul fast float %2026, 1.023000e+03
  %2030 = fmul fast float %2027, 1.023000e+03
  %2031 = fadd fast float %2028, 5.000000e-01
  %2032 = fadd fast float %2029, 5.000000e-01
  %2033 = fadd fast float %2030, 5.000000e-01
  %2034 = call float @dx.op.unary.f32(i32 27, float %2031)  ; Round_ni(value)
  %2035 = call float @dx.op.unary.f32(i32 27, float %2032)  ; Round_ni(value)
  %2036 = call float @dx.op.unary.f32(i32 27, float %2033)  ; Round_ni(value)
  %2037 = fsub fast float %2004, %2007
  %2038 = fsub fast float %2005, %2008
  %2039 = fsub fast float %2006, %2009
  %2040 = fmul fast float %2037, 7.500000e-01
  %2041 = fmul fast float %2038, 7.500000e-01
  %2042 = fmul fast float %2039, 7.500000e-01
  %2043 = fadd fast float %2007, 1.250000e-01
  %2044 = fadd fast float %2043, %2040
  %2045 = fadd fast float %2044, %2034
  %2046 = fadd fast float %2008, 1.250000e-01
  %2047 = fadd fast float %2046, %2041
  %2048 = fadd fast float %2047, %2035
  %2049 = fadd fast float %2009, 1.250000e-01
  %2050 = fadd fast float %2049, %2042
  %2051 = fadd fast float %2050, %2036
  %2052 = fmul fast float %2045, %1995
  %2053 = fmul fast float %2048, %1996
  %2054 = fmul fast float %2051, %1997
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = add i32 %2056, 0
  %2058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2058, %dx.types.Handle %28, float %2052, float %2053, float %2054, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  br label %2061

; <label>:2061                                    ; preds = %1982, %1971
  %2062 = phi float [ %2060, %1982 ], [ -1.000000e+00, %1971 ]
  %2063 = fadd fast float %2062, %1969
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  br label %2065

; <label>:2065                                    ; preds = %2061, %1959
  %2066 = phi float [ %2064, %2061 ], [ %1969, %1959 ]
  %2067 = fmul fast float %2066, %396
  br label %2068

; <label>:2068                                    ; preds = %2065, %1954
  %2069 = phi float [ %2067, %2065 ], [ %396, %1954 ]
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 256
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2120, label %2074

; <label>:2074                                    ; preds = %2068
  %2075 = add i32 %33, 432
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = add i32 %2077, 0
  %2079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2079, %dx.types.Handle %64, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = add i32 %33, 132
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = shl i32 %2084, 4
  %2086 = and i32 %2085, 32752
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = lshr i32 %2084, 7
  %2089 = and i32 %2088, 32752
  %2090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2089)  ; LegacyF16ToF32(value)
  %2091 = fsub fast float 1.000000e+00, %2069
  %2092 = call float @dx.op.binary.f32(i32 35, float %2091, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2093 = bitcast float %2069 to i32
  %2094 = sitofp i32 %2093 to float
  %2095 = fadd fast float %2094, 0xC1CFBF8940000000
  %2096 = fmul fast float %2090, %2095
  %2097 = fadd fast float %2096, 0x41CFBF8940000000
  %2098 = fptosi float %2097 to i32
  %2099 = bitcast i32 %2098 to float
  %2100 = bitcast float %2092 to i32
  %2101 = sitofp i32 %2100 to float
  %2102 = fadd fast float %2101, 0xC1CFBF8940000000
  %2103 = fmul fast float %2102, %2090
  %2104 = fadd fast float %2103, 0x41CFBF8940000000
  %2105 = fptosi float %2104 to i32
  %2106 = bitcast i32 %2105 to float
  %2107 = fmul fast float %2099, %2087
  %2108 = fmul fast float %2106, %2087
  %2109 = fsub fast float %2092, %2107
  %2110 = fadd fast float %2108, %2092
  %2111 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2112 = call float @dx.op.unary.f32(i32 7, float %2110)  ; Saturate(value)
  %2113 = fsub fast float %2081, %2111
  %2114 = fsub fast float %2112, %2111
  %2115 = bitcast float %2114 to i32
  %2116 = sub nsw i32 2129859010, %2115
  %2117 = bitcast i32 %2116 to float
  %2118 = fmul fast float %2117, %2113
  %2119 = call float @dx.op.unary.f32(i32 7, float %2118)  ; Saturate(value)
  br label %2120

; <label>:2120                                    ; preds = %2074, %2068
  %2121 = phi float [ %2119, %2074 ], [ %2069, %2068 ]
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = and i32 %2123, 128
  %2125 = icmp eq i32 %2124, 0
  br i1 %2125, label %2142, label %2126

; <label>:2126                                    ; preds = %2120
  %2127 = add i32 %33, 416
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = add i32 %2129, 0
  %2131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2131, %dx.types.Handle %64, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2133 = extractvalue %dx.types.ResRet.f32 %2132, 0
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 524288
  %2137 = icmp ne i32 %2136, 0
  %2138 = fcmp fast ogt float %2133, 0x3FE0101020000000
  %2139 = select i1 %2138, float 1.000000e+00, float 0.000000e+00
  %2140 = select i1 %2137, float %2139, float %2133
  %2141 = fmul fast float %2140, %2121
  br label %2142

; <label>:2142                                    ; preds = %2126, %2120
  %2143 = phi float [ %2141, %2126 ], [ %2121, %2120 ]
  %2144 = fcmp fast ult float %2143, 0x3F70101020000000
  br i1 %2144, label %2798, label %2145

; <label>:2145                                    ; preds = %2142
  %2146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.i32 %2146, 0
  %2148 = and i32 %2147, 16
  %2149 = icmp eq i32 %2148, 0
  br i1 %2149, label %2348, label %2150

; <label>:2150                                    ; preds = %2145
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = add i32 %33, 368
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = add i32 %2155, 0
  %2157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2157, %dx.types.Handle %63, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 1
  %2161 = extractvalue %dx.types.ResRet.f32 %2158, 2
  %2162 = extractvalue %dx.types.ResRet.f32 %2158, 3
  %2163 = and i32 %2152, 255
  %2164 = uitofp i32 %2163 to float
  %2165 = lshr i32 %2152, 8
  %2166 = and i32 %2165, 255
  %2167 = uitofp i32 %2166 to float
  %2168 = fmul fast float %2162, %2164
  %2169 = fadd fast float %2168, %2167
  %2170 = fmul fast float %2169, 0x3F70101000000000
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 512
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2183, label %2175

; <label>:2175                                    ; preds = %2150
  %2176 = add i32 %33, 448
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = add i32 %2178, 0
  %2180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2180, %dx.types.Handle %64, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2182 = extractvalue %dx.types.ResRet.f32 %2181, 0
  br label %2183

; <label>:2183                                    ; preds = %2175, %2150
  %2184 = phi float [ %2182, %2175 ], [ 1.000000e+00, %2150 ]
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 33554432
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2295, label %2189

; <label>:2189                                    ; preds = %2183
  %2190 = add i32 %33, 256
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = and i32 %2192, 65535
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = lshr i32 %2192, 16
  %2196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2195)  ; LegacyF16ToF32(value)
  %2197 = add i32 %33, 260
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 65535
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = lshr i32 %2203, 24
  %2205 = uitofp i32 %2204 to float
  %2206 = fmul fast float %2205, 0x3F70101020000000
  %2207 = and i32 %2203, 255
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2208, 0x3F70101020000000
  %2210 = lshr i32 %2203, 8
  %2211 = and i32 %2210, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = fmul fast float %2212, 0x3F70101020000000
  %2214 = lshr i32 %2203, 16
  %2215 = and i32 %2214, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = fmul fast float %2216, 0x3F70101020000000
  %2218 = add i32 %33, 252
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = lshr i32 %2220, 24
  %2222 = uitofp i32 %2221 to float
  %2223 = fmul fast float %2222, 0x3F70101020000000
  %2224 = and i32 %2220, 255
  %2225 = uitofp i32 %2224 to float
  %2226 = fmul fast float %2225, 0x3F70101020000000
  %2227 = lshr i32 %2220, 8
  %2228 = and i32 %2227, 255
  %2229 = uitofp i32 %2228 to float
  %2230 = fmul fast float %2229, 0x3F70101020000000
  %2231 = lshr i32 %2220, 16
  %2232 = and i32 %2231, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101020000000
  %2235 = bitcast float %2159 to i32
  %2236 = ashr i32 %2235, 1
  %2237 = sub nsw i32 1597463174, %2236
  %2238 = bitcast i32 %2237 to float
  %2239 = fmul fast float %2159, 5.000000e-01
  %2240 = fmul fast float %2238, %2238
  %2241 = fmul fast float %2240, %2239
  %2242 = fsub fast float 1.500000e+00, %2241
  %2243 = fmul fast float %2238, %2159
  %2244 = fmul fast float %2243, %2242
  %2245 = bitcast float %2160 to i32
  %2246 = ashr i32 %2245, 1
  %2247 = sub nsw i32 1597463174, %2246
  %2248 = bitcast i32 %2247 to float
  %2249 = fmul fast float %2160, 5.000000e-01
  %2250 = fmul fast float %2248, %2248
  %2251 = fmul fast float %2250, %2249
  %2252 = fsub fast float 1.500000e+00, %2251
  %2253 = fmul fast float %2248, %2160
  %2254 = fmul fast float %2253, %2252
  %2255 = bitcast float %2161 to i32
  %2256 = ashr i32 %2255, 1
  %2257 = sub nsw i32 1597463174, %2256
  %2258 = bitcast i32 %2257 to float
  %2259 = fmul fast float %2161, 5.000000e-01
  %2260 = fmul fast float %2258, %2258
  %2261 = fmul fast float %2260, %2259
  %2262 = fsub fast float 1.500000e+00, %2261
  %2263 = fmul fast float %2258, %2161
  %2264 = fmul fast float %2263, %2262
  %2265 = fsub fast float %2244, %2226
  %2266 = fsub fast float %2254, %2230
  %2267 = fsub fast float %2264, %2234
  %2268 = fmul fast float %2265, %2194
  %2269 = fmul fast float %2266, %2196
  %2270 = fmul fast float %2267, %2201
  %2271 = fadd fast float %2268, %2209
  %2272 = fadd fast float %2269, %2213
  %2273 = fadd fast float %2270, %2217
  %2274 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  %2275 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  %2276 = call float @dx.op.unary.f32(i32 7, float %2273)  ; Saturate(value)
  %2277 = fmul fast float %2274, %2274
  %2278 = fmul fast float %2275, %2275
  %2279 = fmul fast float %2276, %2276
  %2280 = fsub fast float %2277, %2159
  %2281 = fsub fast float %2278, %2160
  %2282 = fsub fast float %2279, %2161
  %2283 = fmul fast float %2280, %2184
  %2284 = fmul fast float %2281, %2184
  %2285 = fmul fast float %2282, %2184
  %2286 = fadd fast float %2283, %2159
  %2287 = fadd fast float %2284, %2160
  %2288 = fadd fast float %2285, %2161
  %2289 = fadd fast float %2206, %2170
  %2290 = fsub fast float %2289, %2223
  %2291 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2292 = fsub fast float %2291, %2170
  %2293 = fmul fast float %2292, %2184
  %2294 = fadd fast float %2293, %2170
  br label %2348

; <label>:2295                                    ; preds = %2183
  %2296 = and i32 %2186, 134217728
  %2297 = icmp eq i32 %2296, 0
  br i1 %2297, label %2332, label %2298

; <label>:2298                                    ; preds = %2295
  %2299 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %2300 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2301 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2302 = fadd fast float %2299, -5.000000e-01
  %2303 = fadd fast float %2300, -5.000000e-01
  %2304 = fadd fast float %2301, -5.000000e-01
  %2305 = fmul fast float %2302, %2184
  %2306 = fmul fast float %2303, %2184
  %2307 = fmul fast float %2304, %2184
  %2308 = fadd fast float %2305, 5.000000e-01
  %2309 = fadd fast float %2306, 5.000000e-01
  %2310 = fadd fast float %2307, 5.000000e-01
  %2311 = call float @dx.op.unary.f32(i32 24, float %2159)  ; Sqrt(value)
  %2312 = call float @dx.op.unary.f32(i32 24, float %2160)  ; Sqrt(value)
  %2313 = call float @dx.op.unary.f32(i32 24, float %2161)  ; Sqrt(value)
  %2314 = fmul fast float %2308, 2.000000e+00
  %2315 = fsub fast float 1.000000e+00, %2314
  %2316 = fmul fast float %2315, %2311
  %2317 = fadd fast float %2316, %2314
  %2318 = fmul fast float %2317, %2311
  %2319 = fmul fast float %2309, 2.000000e+00
  %2320 = fsub fast float 1.000000e+00, %2319
  %2321 = fmul fast float %2320, %2312
  %2322 = fadd fast float %2321, %2319
  %2323 = fmul fast float %2322, %2312
  %2324 = fmul fast float %2310, 2.000000e+00
  %2325 = fsub fast float 1.000000e+00, %2324
  %2326 = fmul fast float %2325, %2313
  %2327 = fadd fast float %2326, %2324
  %2328 = fmul fast float %2327, %2313
  %2329 = fmul fast float %2318, %2318
  %2330 = fmul fast float %2323, %2323
  %2331 = fmul fast float %2328, %2328
  br label %2348

; <label>:2332                                    ; preds = %2295
  %2333 = fmul fast float %274, %274
  %2334 = fmul fast float %278, %278
  %2335 = fmul fast float %282, %282
  %2336 = fadd fast float %2333, -1.000000e+00
  %2337 = fadd fast float %2334, -1.000000e+00
  %2338 = fadd fast float %2335, -1.000000e+00
  %2339 = fmul fast float %2184, %2336
  %2340 = fmul fast float %2184, %2337
  %2341 = fmul fast float %2184, %2338
  %2342 = fadd fast float %2339, 1.000000e+00
  %2343 = fadd fast float %2340, 1.000000e+00
  %2344 = fadd fast float %2341, 1.000000e+00
  %2345 = fmul fast float %2342, %2159
  %2346 = fmul fast float %2343, %2160
  %2347 = fmul fast float %2344, %2161
  br label %2348

; <label>:2348                                    ; preds = %2332, %2298, %2189, %2145
  %2349 = phi float [ %2294, %2189 ], [ %2170, %2298 ], [ %2170, %2332 ], [ 0x3FA23C0BE0000000, %2145 ]
  %2350 = phi float [ %2286, %2189 ], [ %2329, %2298 ], [ %2345, %2332 ], [ 1.000000e+00, %2145 ]
  %2351 = phi float [ %2287, %2189 ], [ %2330, %2298 ], [ %2346, %2332 ], [ 1.000000e+00, %2145 ]
  %2352 = phi float [ %2288, %2189 ], [ %2331, %2298 ], [ %2347, %2332 ], [ 1.000000e+00, %2145 ]
  %2353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.i32 %2353, 1
  %2355 = and i32 %2354, 1
  %2356 = icmp ne i32 %2355, 0
  %2357 = add i32 %33, 356
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 32
  %2361 = icmp ne i32 %2360, 0
  %2362 = and i1 %2356, %2361
  %2363 = select i1 %2362, float 1.000000e+00, float %2350
  %2364 = select i1 %2362, float 0x3FD3333340000000, float %2351
  %2365 = select i1 %2362, float 0x3FD3333340000000, float %2352
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 32
  %2369 = icmp eq i32 %2368, 0
  br i1 %2369, label %2442, label %2370

; <label>:2370                                    ; preds = %2348
  %2371 = add i32 %33, 124
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = add i32 %33, 384
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = add i32 %2376, 0
  %2378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2378, %dx.types.Handle %63, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2380 = extractvalue %dx.types.ResRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.ResRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.ResRet.f32 %2379, 2
  %2383 = extractvalue %dx.types.ResRet.f32 %2379, 3
  %2384 = and i32 %2373, 255
  %2385 = uitofp i32 %2384 to float
  %2386 = lshr i32 %2373, 8
  %2387 = and i32 %2386, 255
  %2388 = uitofp i32 %2387 to float
  %2389 = lshr i32 %2373, 16
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = fmul fast float %2391, 0x3F70101000000000
  %2393 = fmul fast float %2380, %2385
  %2394 = fadd fast float %2393, %2388
  %2395 = fmul fast float %2394, 0x3F70101000000000
  %2396 = fadd fast float %2381, -5.000000e-01
  %2397 = fadd fast float %2383, -5.000000e-01
  %2398 = fmul fast float %2396, %2392
  %2399 = fmul fast float %2397, %2392
  %2400 = fadd fast float %2398, 5.000000e-01
  %2401 = fadd fast float %2399, 5.000000e-01
  %2402 = fmul fast float %2400, 2.000000e+00
  %2403 = fadd fast float %2402, -1.000000e+00
  %2404 = fmul fast float %2401, 2.000000e+00
  %2405 = fadd fast float %2404, -1.000000e+00
  %2406 = fadd fast float %2403, %2405
  %2407 = fmul fast float %2406, 5.000000e-01
  %2408 = fsub fast float %2403, %2405
  %2409 = fmul fast float %2408, 5.000000e-01
  %2410 = call float @dx.op.unary.f32(i32 6, float %2407)  ; FAbs(value)
  %2411 = fsub fast float 1.000000e+00, %2410
  %2412 = call float @dx.op.unary.f32(i32 6, float %2409)  ; FAbs(value)
  %2413 = fsub fast float %2411, %2412
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2407, float %2409, float %2413, float %2407, float %2409, float %2413)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = call float @dx.op.unary.f32(i32 25, float %2414)  ; Rsqrt(value)
  %2416 = fmul fast float %2407, %2415
  %2417 = fmul fast float %2409, %2415
  %2418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2419 = extractvalue %dx.types.ResRet.i32 %2418, 0
  %2420 = and i32 %2419, 67108864
  %2421 = icmp eq i32 %2420, 0
  br i1 %2421, label %2438, label %2422

; <label>:2422                                    ; preds = %2370
  %2423 = add i32 %33, 312
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 65535
  %2427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2426)  ; LegacyF16ToF32(value)
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = and i32 %2429, 65535
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = lshr i32 %2425, 16
  %2433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2432)  ; LegacyF16ToF32(value)
  %2434 = fsub fast float %2395, %2433
  %2435 = fmul fast float %2434, %2427
  %2436 = fadd fast float %2435, %2431
  %2437 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  br label %2438

; <label>:2438                                    ; preds = %2422, %2370
  %2439 = phi float [ %2437, %2422 ], [ %2395, %2370 ]
  %2440 = call float @dx.op.dot2.f32(i32 54, float %2416, float %2417, float %1859, float %1860)  ; Dot2(ax,ay,bx,by)
  %2441 = call float @dx.op.dot2.f32(i32 54, float %2416, float %2417, float %1861, float %1862)  ; Dot2(ax,ay,bx,by)
  br label %2442

; <label>:2442                                    ; preds = %2438, %2348
  %2443 = phi float [ %2439, %2438 ], [ 0x3FD6666660000000, %2348 ]
  %2444 = phi float [ %2440, %2438 ], [ 0.000000e+00, %2348 ]
  %2445 = phi float [ %2441, %2438 ], [ 0.000000e+00, %2348 ]
  %2446 = phi float [ %2382, %2438 ], [ 1.000000e+00, %2348 ]
  %2447 = add i32 %33, 192
  %2448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2449 = extractvalue %dx.types.ResRet.i32 %2448, 0
  %2450 = lshr i32 %2449, 22
  %2451 = shl nuw nsw i32 %2450, 5
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 64
  %2456 = icmp eq i32 %2455, 0
  br i1 %2456, label %2490, label %2457

; <label>:2457                                    ; preds = %2442
  %2458 = add i32 %33, 400
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = add i32 %2460, 0
  %2462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 131072
  %2466 = icmp eq i32 %2465, 0
  %2467 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2462, %dx.types.Handle %63, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2468 = extractvalue %dx.types.ResRet.f32 %2467, 0
  %2469 = extractvalue %dx.types.ResRet.f32 %2467, 1
  %2470 = extractvalue %dx.types.ResRet.f32 %2467, 2
  %2471 = fmul fast float %2468, %262
  %2472 = fmul fast float %2469, %265
  %2473 = fmul fast float %2470, %268
  br i1 %2466, label %2480, label %2474

; <label>:2474                                    ; preds = %2457
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 0
  %2477 = fmul fast float %2476, %2471
  %2478 = fmul fast float %2476, %2472
  %2479 = fmul fast float %2476, %2473
  br label %2480

; <label>:2480                                    ; preds = %2474, %2457
  %2481 = phi float [ %2477, %2474 ], [ %2471, %2457 ]
  %2482 = phi float [ %2478, %2474 ], [ %2472, %2457 ]
  %2483 = phi float [ %2479, %2474 ], [ %2473, %2457 ]
  %2484 = fmul fast float %2481, %2452
  %2485 = select i1 %172, float %2484, float %2481
  %2486 = call float @dx.op.dot3.f32(i32 55, float %2485, float %2482, float %2483, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2487 = select i1 %172, float 0.000000e+00, float %2481
  %2488 = select i1 %172, float %2486, float %2482
  %2489 = select i1 %172, float 0.000000e+00, float %2483
  br label %2490

; <label>:2490                                    ; preds = %2480, %2442
  %2491 = phi float [ %2487, %2480 ], [ 0.000000e+00, %2442 ]
  %2492 = phi float [ %2488, %2480 ], [ 0.000000e+00, %2442 ]
  %2493 = phi float [ %2489, %2480 ], [ 0.000000e+00, %2442 ]
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 1024
  %2497 = icmp eq i32 %2496, 0
  br i1 %2497, label %2528, label %2498

; <label>:2498                                    ; preds = %2490
  %2499 = add i32 %33, 184
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = and i32 %2501, 255
  %2503 = uitofp i32 %2502 to float
  %2504 = fmul fast float %2503, 0x3F70101020000000
  %2505 = lshr i32 %2501, 8
  %2506 = and i32 %2505, 255
  %2507 = uitofp i32 %2506 to float
  %2508 = fmul fast float %2507, 0x3F70101020000000
  %2509 = lshr i32 %2501, 16
  %2510 = and i32 %2509, 255
  %2511 = uitofp i32 %2510 to float
  %2512 = fmul fast float %2511, 0x3F70101020000000
  %2513 = fmul fast float %2504, %2504
  %2514 = fmul fast float %2508, %2508
  %2515 = fmul fast float %2512, %2512
  %2516 = add i32 %33, 464
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %2518, 0
  %2520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2520, %dx.types.Handle %64, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2524 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2525 = fmul fast float %2513, %2522
  %2526 = fmul fast float %2514, %2523
  %2527 = fmul fast float %2515, %2524
  br label %2528

; <label>:2528                                    ; preds = %2498, %2490
  %2529 = phi float [ %2525, %2498 ], [ 0.000000e+00, %2490 ]
  %2530 = phi float [ %2526, %2498 ], [ 0.000000e+00, %2490 ]
  %2531 = phi float [ %2527, %2498 ], [ 0.000000e+00, %2490 ]
  %2532 = fcmp fast ogt float %2529, 0.000000e+00
  %2533 = fcmp fast ogt float %2530, 0.000000e+00
  %2534 = fcmp fast ogt float %2531, 0.000000e+00
  %2535 = call float @dx.op.unary.f32(i32 23, float %2529)  ; Log(value)
  %2536 = call float @dx.op.unary.f32(i32 23, float %2530)  ; Log(value)
  %2537 = call float @dx.op.unary.f32(i32 23, float %2531)  ; Log(value)
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = lshr i32 %2539, 7
  %2541 = and i32 %2540, 32752
  %2542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2541)  ; LegacyF16ToF32(value)
  %2543 = fmul fast float %2535, 0xBFE62E4300000000
  %2544 = fmul fast float %2543, %2542
  %2545 = fmul fast float %2536, 0xBFE62E4300000000
  %2546 = fmul fast float %2545, %2542
  %2547 = fmul fast float %2537, 0xBFE62E4300000000
  %2548 = fmul fast float %2547, %2542
  %2549 = select i1 %2532, float %2544, float 1.270000e+02
  %2550 = select i1 %2533, float %2546, float 1.270000e+02
  %2551 = select i1 %2534, float %2548, float 1.270000e+02
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 10240
  %2555 = icmp eq i32 %2554, 0
  br i1 %2555, label %2576, label %2556

; <label>:2556                                    ; preds = %2528
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = and i32 %2558, 2048
  %2560 = icmp eq i32 %2559, 0
  br i1 %2560, label %2576, label %2561

; <label>:2561                                    ; preds = %2556
  %2562 = add i32 %33, 480
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = add i32 %2564, 0
  %2566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2566, %dx.types.Handle %64, float %1955, float %1956, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2568 = extractvalue %dx.types.ResRet.f32 %2567, 3
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2447, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = shl i32 %2570, 4
  %2572 = and i32 %2571, 32752
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = fmul fast float %2573, %2568
  %2575 = call float @dx.op.binary.f32(i32 35, float %2574, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2576

; <label>:2576                                    ; preds = %2561, %2556, %2528
  %2577 = phi float [ %2575, %2561 ], [ 0x3F70101020000000, %2556 ], [ 0x3F70101020000000, %2528 ]
  %2578 = add i32 %33, 128
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 255
  %2582 = uitofp i32 %2581 to float
  %2583 = lshr i32 %2580, 8
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = call float @dx.op.dot3.f32(i32 55, float %2363, float %2364, float %2365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2587 = fmul fast float %2585, %2586
  %2588 = fadd fast float %2587, %2582
  %2589 = fmul fast float %2588, 0x3F70101020000000
  %2590 = call float @dx.op.unary.f32(i32 7, float %2589)  ; Saturate(value)
  br i1 %1847, label %2591, label %2626

; <label>:2591                                    ; preds = %2576
  %2592 = fmul fast float %2577, 2.000000e+00
  %2593 = fcmp fast olt float %2549, 1.270000e+02
  %2594 = fcmp fast olt float %2550, 1.270000e+02
  %2595 = fcmp fast olt float %2551, 1.270000e+02
  %2596 = fmul fast float %2549, 0xBFF7154760000000
  %2597 = fmul fast float %2596, %2592
  %2598 = fmul fast float %2550, 0xBFF7154760000000
  %2599 = fmul fast float %2598, %2592
  %2600 = fmul fast float %2551, 0xBFF7154760000000
  %2601 = fmul fast float %2600, %2592
  %2602 = call float @dx.op.unary.f32(i32 21, float %2597)  ; Exp(value)
  %2603 = call float @dx.op.unary.f32(i32 21, float %2599)  ; Exp(value)
  %2604 = call float @dx.op.unary.f32(i32 21, float %2601)  ; Exp(value)
  %2605 = call float @dx.op.unary.f32(i32 7, float %2602)  ; Saturate(value)
  %2606 = call float @dx.op.unary.f32(i32 7, float %2603)  ; Saturate(value)
  %2607 = call float @dx.op.unary.f32(i32 7, float %2604)  ; Saturate(value)
  %2608 = fadd fast float %2605, -1.000000e+00
  %2609 = select i1 %2593, float %2608, float -1.000000e+00
  %2610 = fadd fast float %2606, -1.000000e+00
  %2611 = select i1 %2594, float %2610, float -1.000000e+00
  %2612 = fadd fast float %2607, -1.000000e+00
  %2613 = select i1 %2595, float %2612, float -1.000000e+00
  %2614 = fmul fast float %2609, %2143
  %2615 = fmul fast float %2611, %2143
  %2616 = fmul fast float %2613, %2143
  %2617 = fadd fast float %2614, 1.000000e+00
  %2618 = fadd fast float %2615, 1.000000e+00
  %2619 = fadd fast float %2616, 1.000000e+00
  %2620 = fmul fast float %2617, %1836
  %2621 = fmul fast float %2618, %1837
  %2622 = fmul fast float %2619, %1838
  %2623 = fmul fast float %2617, %1839
  %2624 = fmul fast float %2618, %1840
  %2625 = fmul fast float %2619, %1841
  br label %2626

; <label>:2626                                    ; preds = %2591, %2576
  %2627 = phi float [ %2620, %2591 ], [ %1836, %2576 ]
  %2628 = phi float [ %2621, %2591 ], [ %1837, %2576 ]
  %2629 = phi float [ %2622, %2591 ], [ %1838, %2576 ]
  %2630 = phi float [ %2623, %2591 ], [ %1839, %2576 ]
  %2631 = phi float [ %2624, %2591 ], [ %1840, %2576 ]
  %2632 = phi float [ %2625, %2591 ], [ %1841, %2576 ]
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = and i32 %2634, 3
  %2636 = icmp eq i32 %2635, 3
  br i1 %2636, label %2715, label %2637

; <label>:2637                                    ; preds = %2626
  %2638 = and i32 %2634, 16
  %2639 = icmp ne i32 %2638, 0
  %2640 = select i1 %2639, float %2143, float 0.000000e+00
  %2641 = icmp eq i32 %2635, 0
  br i1 %2641, label %2642, label %2670

; <label>:2642                                    ; preds = %2637
  %2643 = and i32 %2634, 64
  %2644 = icmp ne i32 %2643, 0
  %2645 = select i1 %2644, float %2143, float 0.000000e+00
  %2646 = fsub fast float %2363, %2627
  %2647 = fsub fast float %2364, %2628
  %2648 = fsub fast float %2365, %2629
  %2649 = fmul fast float %2640, %2646
  %2650 = fmul fast float %2640, %2647
  %2651 = fmul fast float %2640, %2648
  %2652 = fadd fast float %2649, %2627
  %2653 = fadd fast float %2650, %2628
  %2654 = fadd fast float %2651, %2629
  %2655 = fsub fast float %2349, %1842
  %2656 = fmul fast float %2640, %2655
  %2657 = fadd fast float %2656, %1842
  %2658 = fsub fast float %2491, %2630
  %2659 = fsub fast float %2492, %2631
  %2660 = fsub fast float %2493, %2632
  %2661 = fmul fast float %2645, %2658
  %2662 = fmul fast float %2645, %2659
  %2663 = fmul fast float %2645, %2660
  %2664 = fadd fast float %2661, %2630
  %2665 = fadd fast float %2662, %2631
  %2666 = fadd fast float %2663, %2632
  %2667 = fsub fast float %2590, %1845
  %2668 = fmul fast float %2640, %2667
  %2669 = fadd fast float %2668, %1845
  br label %2715

; <label>:2670                                    ; preds = %2637
  %2671 = icmp eq i32 %2635, 1
  br i1 %2671, label %2672, label %2685

; <label>:2672                                    ; preds = %2670
  %2673 = fadd fast float %2363, -1.000000e+00
  %2674 = fadd fast float %2364, -1.000000e+00
  %2675 = fadd fast float %2365, -1.000000e+00
  %2676 = fmul fast float %2640, %2673
  %2677 = fmul fast float %2640, %2674
  %2678 = fmul fast float %2640, %2675
  %2679 = fadd fast float %2676, 1.000000e+00
  %2680 = fadd fast float %2677, 1.000000e+00
  %2681 = fadd fast float %2678, 1.000000e+00
  %2682 = fmul fast float %2679, %2627
  %2683 = fmul fast float %2680, %2628
  %2684 = fmul fast float %2681, %2629
  br label %2715

; <label>:2685                                    ; preds = %2670
  %2686 = icmp eq i32 %2635, 2
  br i1 %2686, label %2687, label %2715

; <label>:2687                                    ; preds = %2685
  %2688 = call float @dx.op.unary.f32(i32 24, float %2363)  ; Sqrt(value)
  %2689 = call float @dx.op.unary.f32(i32 24, float %2364)  ; Sqrt(value)
  %2690 = call float @dx.op.unary.f32(i32 24, float %2365)  ; Sqrt(value)
  %2691 = fadd fast float %2688, -5.000000e-01
  %2692 = fadd fast float %2689, -5.000000e-01
  %2693 = fadd fast float %2690, -5.000000e-01
  %2694 = fmul fast float %2691, %2640
  %2695 = fmul fast float %2692, %2640
  %2696 = fmul fast float %2693, %2640
  %2697 = fadd fast float %2694, 5.000000e-01
  %2698 = fadd fast float %2695, 5.000000e-01
  %2699 = fadd fast float %2696, 5.000000e-01
  %2700 = fmul fast float %2697, 2.000000e+00
  %2701 = fsub fast float 1.000000e+00, %2700
  %2702 = fmul fast float %2701, %2627
  %2703 = fadd fast float %2702, %2700
  %2704 = fmul fast float %2703, %2627
  %2705 = fmul fast float %2698, 2.000000e+00
  %2706 = fsub fast float 1.000000e+00, %2705
  %2707 = fmul fast float %2706, %2628
  %2708 = fadd fast float %2707, %2705
  %2709 = fmul fast float %2708, %2628
  %2710 = fmul fast float %2699, 2.000000e+00
  %2711 = fsub fast float 1.000000e+00, %2710
  %2712 = fmul fast float %2711, %2629
  %2713 = fadd fast float %2712, %2710
  %2714 = fmul fast float %2713, %2629
  br label %2715

; <label>:2715                                    ; preds = %2687, %2685, %2672, %2642, %2626
  %2716 = phi float [ %2627, %2626 ], [ %2704, %2687 ], [ %2627, %2685 ], [ %2682, %2672 ], [ %2652, %2642 ]
  %2717 = phi float [ %2628, %2626 ], [ %2709, %2687 ], [ %2628, %2685 ], [ %2683, %2672 ], [ %2653, %2642 ]
  %2718 = phi float [ %2629, %2626 ], [ %2714, %2687 ], [ %2629, %2685 ], [ %2684, %2672 ], [ %2654, %2642 ]
  %2719 = phi float [ %2630, %2626 ], [ %2630, %2687 ], [ %2630, %2685 ], [ %2630, %2672 ], [ %2664, %2642 ]
  %2720 = phi float [ %2631, %2626 ], [ %2631, %2687 ], [ %2631, %2685 ], [ %2631, %2672 ], [ %2665, %2642 ]
  %2721 = phi float [ %2632, %2626 ], [ %2632, %2687 ], [ %2632, %2685 ], [ %2632, %2672 ], [ %2666, %2642 ]
  %2722 = phi float [ %1842, %2626 ], [ %1842, %2687 ], [ %1842, %2685 ], [ %1842, %2672 ], [ %2657, %2642 ]
  %2723 = phi float [ %1845, %2626 ], [ %1845, %2687 ], [ %1845, %2685 ], [ %1845, %2672 ], [ %2669, %2642 ]
  %2724 = and i32 %2634, 12
  %2725 = icmp eq i32 %2724, 12
  br i1 %2725, label %2798, label %2726

; <label>:2726                                    ; preds = %2715
  %2727 = and i32 %2634, 2097184
  %2728 = icmp eq i32 %2727, 2097184
  %2729 = select i1 %2728, float %2143, float 0.000000e+00
  %2730 = and i32 %2634, 4194336
  %2731 = icmp eq i32 %2730, 4194336
  %2732 = select i1 %2731, float %2143, float 0.000000e+00
  %2733 = and i32 %2634, 8388640
  %2734 = icmp eq i32 %2733, 8388640
  %2735 = select i1 %2734, float %2143, float 0.000000e+00
  %2736 = icmp eq i32 %2724, 0
  br i1 %2736, label %2737, label %2750

; <label>:2737                                    ; preds = %2726
  %2738 = fsub fast float %2444, %1834
  %2739 = fsub fast float %2445, %1835
  %2740 = fmul fast float %2729, %2738
  %2741 = fmul fast float %2729, %2739
  %2742 = fadd fast float %2740, %1834
  %2743 = fadd fast float %2741, %1835
  %2744 = fsub fast float %2446, %1844
  %2745 = fmul fast float %2732, %2744
  %2746 = fadd fast float %2745, %1844
  %2747 = fsub fast float %2443, %1843
  %2748 = fmul fast float %2735, %2747
  %2749 = fadd fast float %2748, %1843
  br label %2798

; <label>:2750                                    ; preds = %2726
  %2751 = icmp eq i32 %2724, 4
  br i1 %2751, label %2752, label %2784

; <label>:2752                                    ; preds = %2750
  %2753 = fmul fast float %2729, %2444
  %2754 = fmul fast float %2729, %2445
  %2755 = fadd fast float %2753, %1834
  %2756 = fadd fast float %2754, %1835
  %2757 = call float @dx.op.binary.f32(i32 36, float %1844, float %2446)  ; FMin(a,b)
  %2758 = fsub fast float %2757, %1844
  %2759 = fmul fast float %2758, %2732
  %2760 = fadd fast float %2759, %1844
  %2761 = fadd fast float %2443, %1843
  %2762 = fmul fast float %2761, 0x3FF337FAE0000000
  %2763 = fmul fast float %1843, %1843
  %2764 = fmul fast float %2443, %2443
  %2765 = fadd fast float %2764, %2763
  %2766 = fmul fast float %2765, 0x3FE5152B00000000
  %2767 = fmul fast float %1843, 0xBFCC1F85E0000000
  %2768 = fmul fast float %2767, %2443
  %2769 = fadd fast float %2768, 0xBFE1363700000000
  %2770 = fadd fast float %2769, %2762
  %2771 = fsub fast float %2770, %2766
  %2772 = fmul fast float %2761, 0x3FBA6F0D00000000
  %2773 = fmul fast float %2765, 0x3FD0432880000000
  %2774 = fmul fast float %1843, 0xBFEF110800000000
  %2775 = fmul fast float %2774, %2443
  %2776 = fadd fast float %2775, 1.000000e+00
  %2777 = fsub fast float %2776, %2772
  %2778 = fadd fast float %2777, %2773
  %2779 = fdiv fast float %2771, %2778
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2781 = fsub fast float %2780, %1843
  %2782 = fmul fast float %2781, %2735
  %2783 = fadd fast float %2782, %1843
  br label %2798

; <label>:2784                                    ; preds = %2750
  %2785 = icmp eq i32 %2724, 8
  br i1 %2785, label %2786, label %2798

; <label>:2786                                    ; preds = %2784
  %2787 = fmul fast float %2729, %2444
  %2788 = fmul fast float %2729, %2445
  %2789 = fadd fast float %2787, %1834
  %2790 = fadd fast float %2788, %1835
  %2791 = call float @dx.op.binary.f32(i32 36, float %1844, float %2446)  ; FMin(a,b)
  %2792 = fsub fast float %2791, %1844
  %2793 = fmul fast float %2792, %2732
  %2794 = fadd fast float %2793, %1844
  %2795 = fsub fast float %2443, %1843
  %2796 = fmul fast float %2735, %2795
  %2797 = fadd fast float %2796, %1843
  br label %2798

; <label>:2798                                    ; preds = %2786, %2784, %2752, %2737, %2715, %2142, %1846, %1833
  %2799 = phi float [ %1834, %2715 ], [ %1834, %2142 ], [ %1834, %1833 ], [ %2789, %2786 ], [ %1834, %2784 ], [ %2755, %2752 ], [ %2742, %2737 ], [ %1834, %1846 ]
  %2800 = phi float [ %1835, %2715 ], [ %1835, %2142 ], [ %1835, %1833 ], [ %2790, %2786 ], [ %1835, %2784 ], [ %2756, %2752 ], [ %2743, %2737 ], [ %1835, %1846 ]
  %2801 = phi float [ %2716, %2715 ], [ %1836, %2142 ], [ %1836, %1833 ], [ %2716, %2786 ], [ %2716, %2784 ], [ %2716, %2752 ], [ %2716, %2737 ], [ %1836, %1846 ]
  %2802 = phi float [ %2717, %2715 ], [ %1837, %2142 ], [ %1837, %1833 ], [ %2717, %2786 ], [ %2717, %2784 ], [ %2717, %2752 ], [ %2717, %2737 ], [ %1837, %1846 ]
  %2803 = phi float [ %2718, %2715 ], [ %1838, %2142 ], [ %1838, %1833 ], [ %2718, %2786 ], [ %2718, %2784 ], [ %2718, %2752 ], [ %2718, %2737 ], [ %1838, %1846 ]
  %2804 = phi float [ %2719, %2715 ], [ %1839, %2142 ], [ %1839, %1833 ], [ %2719, %2786 ], [ %2719, %2784 ], [ %2719, %2752 ], [ %2719, %2737 ], [ %1839, %1846 ]
  %2805 = phi float [ %2720, %2715 ], [ %1840, %2142 ], [ %1840, %1833 ], [ %2720, %2786 ], [ %2720, %2784 ], [ %2720, %2752 ], [ %2720, %2737 ], [ %1840, %1846 ]
  %2806 = phi float [ %2721, %2715 ], [ %1841, %2142 ], [ %1841, %1833 ], [ %2721, %2786 ], [ %2721, %2784 ], [ %2721, %2752 ], [ %2721, %2737 ], [ %1841, %1846 ]
  %2807 = phi float [ %2722, %2715 ], [ %1842, %2142 ], [ %1842, %1833 ], [ %2722, %2786 ], [ %2722, %2784 ], [ %2722, %2752 ], [ %2722, %2737 ], [ %1842, %1846 ]
  %2808 = phi float [ %1843, %2715 ], [ %1843, %2142 ], [ %1843, %1833 ], [ %2797, %2786 ], [ %1843, %2784 ], [ %2783, %2752 ], [ %2749, %2737 ], [ %1843, %1846 ]
  %2809 = phi float [ %1844, %2715 ], [ %1844, %2142 ], [ %1844, %1833 ], [ %2794, %2786 ], [ %1844, %2784 ], [ %2760, %2752 ], [ %2746, %2737 ], [ %1844, %1846 ]
  %2810 = phi float [ %2723, %2715 ], [ %1845, %2142 ], [ %1845, %1833 ], [ %2723, %2786 ], [ %2723, %2784 ], [ %2723, %2752 ], [ %2723, %2737 ], [ %1845, %1846 ]
  br i1 %349, label %3763, label %2811

; <label>:2811                                    ; preds = %2798
  %2812 = icmp ult i32 %400, 4
  %2813 = add i32 %33, 72
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = add i32 %33, 76
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = or i32 %2818, %2815
  %2820 = icmp eq i32 %2819, 0
  br i1 %2820, label %3763, label %2821

; <label>:2821                                    ; preds = %2811
  %2822 = and i32 %2815, 262144
  %2823 = icmp ne i32 %2822, 0
  %2824 = select i1 %2823, float %35, float 1.000000e+00
  %2825 = select i1 %2823, float %36, float 0.000000e+00
  %2826 = select i1 %2823, float %37, float 0.000000e+00
  %2827 = select i1 %2823, float %38, float 1.000000e+00
  %2828 = select i1 %2823, float %39, float %55
  %2829 = select i1 %2823, float %40, float %56
  %2830 = add i32 %33, 332
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = lshr i32 %2832, 16
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = fmul fast float %2834, 0x3F50624DE0000000
  %2836 = add i32 %33, 136
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = lshr i32 %2838, 16
  %2840 = and i32 %2839, 255
  %2841 = lshr i32 %2838, 24
  %2842 = add i32 %33, 340
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = and i32 %2844, 65535
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = lshr i32 %2844, 16
  %2848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2847)  ; LegacyF16ToF32(value)
  %2849 = add i32 %33, 80
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = lshr i32 %2851, 22
  %2853 = shl nuw nsw i32 %2852, 5
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = shl i32 %2851, 4
  %2856 = and i32 %2855, 32752
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = lshr i32 %2851, 7
  %2859 = and i32 %2858, 32752
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2862 = extractvalue %dx.types.CBufRet.f32 %2861, 3
  %2863 = fmul fast float %2862, 1.000000e+03
  %2864 = fmul fast float %339, %2863
  %2865 = call float @dx.op.unary.f32(i32 22, float %2864)  ; Frc(value)
  %2866 = fadd fast float %2865, %329
  %2867 = fmul fast float %340, %2863
  %2868 = call float @dx.op.unary.f32(i32 22, float %2867)  ; Frc(value)
  %2869 = fadd fast float %2868, %331
  %2870 = fmul fast float %2835, %2863
  %2871 = call float @dx.op.unary.f32(i32 22, float %2870)  ; Frc(value)
  %2872 = fmul fast float %2871, 0x401921FB60000000
  %2873 = fadd fast float %2872, %2854
  %2874 = call float @dx.op.unary.f32(i32 13, float %2873)  ; Sin(value)
  %2875 = call float @dx.op.unary.f32(i32 12, float %2873)  ; Cos(value)
  %2876 = fsub fast float -0.000000e+00, %2874
  %2877 = fadd fast float %2828, -5.000000e-01
  %2878 = fadd fast float %2829, -5.000000e-01
  %2879 = fmul fast float %2846, %2877
  %2880 = fmul fast float %2848, %2878
  %2881 = fadd fast float %2879, 5.000000e-01
  %2882 = fadd fast float %2880, 5.000000e-01
  %2883 = fmul fast float %2857, %2881
  %2884 = fmul fast float %2860, %2882
  %2885 = fmul fast float %2875, %2883
  %2886 = call float @dx.op.tertiary.f32(i32 46, float %2876, float %2884, float %2885)  ; FMad(a,b,c)
  %2887 = fmul fast float %2874, %2883
  %2888 = call float @dx.op.tertiary.f32(i32 46, float %2875, float %2884, float %2887)  ; FMad(a,b,c)
  %2889 = fadd fast float %2866, %2886
  %2890 = fadd fast float %2869, %2888
  %2891 = icmp ugt i32 %2840, 1
  %2892 = icmp ugt i32 %2838, 33554431
  %2893 = or i1 %2892, %2891
  br i1 %2893, label %2894, label %2919

; <label>:2894                                    ; preds = %2821
  %2895 = add i32 %33, 276
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = lshr i32 %2897, 16
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = fmul fast float %2862, %2899
  %2901 = call float @dx.op.unary.f32(i32 22, float %2900)  ; Frc(value)
  %2902 = mul nuw nsw i32 %2840, %2841
  %2903 = uitofp i32 %2902 to float
  %2904 = fmul fast float %2901, %2903
  %2905 = call float @dx.op.unary.f32(i32 27, float %2904)  ; Round_ni(value)
  %2906 = fptoui float %2905 to i32
  %2907 = urem i32 %2906, %2840
  %2908 = udiv i32 %2906, %2841
  %2909 = call float @dx.op.unary.f32(i32 22, float %2889)  ; Frc(value)
  %2910 = call float @dx.op.unary.f32(i32 22, float %2890)  ; Frc(value)
  %2911 = uitofp i32 %2907 to float
  %2912 = uitofp i32 %2908 to float
  %2913 = fadd fast float %2909, %2911
  %2914 = fadd fast float %2910, %2912
  %2915 = uitofp i32 %2840 to float
  %2916 = uitofp i32 %2841 to float
  %2917 = fdiv fast float %2913, %2915
  %2918 = fdiv fast float %2914, %2916
  br label %2919

; <label>:2919                                    ; preds = %2894, %2821
  %2920 = phi float [ %2917, %2894 ], [ %2889, %2821 ]
  %2921 = phi float [ %2918, %2894 ], [ %2890, %2821 ]
  %2922 = and i32 %2815, 16777216
  %2923 = icmp eq i32 %2922, 0
  br i1 %2923, label %3033, label %2924

; <label>:2924                                    ; preds = %2919
  %2925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2926 = extractvalue %dx.types.CBufRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.CBufRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.CBufRet.f32 %2925, 2
  %2929 = fadd fast float %2926, %130
  %2930 = fadd fast float %2927, %131
  %2931 = fadd fast float %2928, %132
  %2932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2933 = extractvalue %dx.types.CBufRet.f32 %2932, 0
  %2934 = call float @dx.op.unary.f32(i32 7, float %2933)  ; Saturate(value)
  %2935 = icmp eq i32 %34, 65535
  br i1 %2935, label %3030, label %2936

; <label>:2936                                    ; preds = %2924
  %2937 = lshr i32 %34, 1
  %2938 = shl i32 %2937, 2
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %34, 1
  %2942 = icmp ne i32 %2941, 0
  %2943 = lshr i32 %2940, 16
  %2944 = and i32 %2940, 65535
  %2945 = select i1 %2942, i32 %2943, i32 %2944
  %2946 = icmp eq i32 %2945, 65535
  br i1 %2946, label %3026, label %2947

; <label>:2947                                    ; preds = %2936
  %2948 = mul nuw nsw i32 %2945, 40
  %2949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 0
  %2951 = extractvalue %dx.types.ResRet.f32 %2949, 1
  %2952 = extractvalue %dx.types.ResRet.f32 %2949, 2
  %2953 = add nuw nsw i32 %2948, 12
  %2954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.f32 %2954, 0
  %2956 = extractvalue %dx.types.ResRet.f32 %2954, 1
  %2957 = extractvalue %dx.types.ResRet.f32 %2954, 2
  %2958 = add nuw nsw i32 %2948, 24
  %2959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.ResRet.f32 %2959, 1
  %2962 = extractvalue %dx.types.ResRet.f32 %2959, 2
  %2963 = add nuw nsw i32 %2948, 36
  %2964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = fsub fast float %2929, %2950
  %2967 = fsub fast float %2930, %2951
  %2968 = fsub fast float %2931, %2952
  %2969 = fmul fast float %2965, %2966
  %2970 = fmul fast float %2965, %2967
  %2971 = fmul fast float %2965, %2968
  %2972 = call float @dx.op.unary.f32(i32 27, float %2969)  ; Round_ni(value)
  %2973 = call float @dx.op.unary.f32(i32 27, float %2970)  ; Round_ni(value)
  %2974 = call float @dx.op.unary.f32(i32 27, float %2971)  ; Round_ni(value)
  %2975 = fadd fast float %2972, 5.000000e-01
  %2976 = fadd fast float %2973, 5.000000e-01
  %2977 = fadd fast float %2974, 5.000000e-01
  %2978 = fmul fast float %2975, %2955
  %2979 = fmul fast float %2976, %2956
  %2980 = fmul fast float %2977, %2957
  %2981 = shl i32 %34, 2
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = add i32 %2983, 0
  %2985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2984, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2986 = call float @dx.op.unary.f32(i32 22, float %2978)  ; Frc(value)
  %2987 = call float @dx.op.unary.f32(i32 22, float %2979)  ; Frc(value)
  %2988 = call float @dx.op.unary.f32(i32 22, float %2980)  ; Frc(value)
  %2989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2985, %dx.types.Handle %30, float %2986, float %2987, float %2988, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = extractvalue %dx.types.ResRet.f32 %2989, 1
  %2992 = extractvalue %dx.types.ResRet.f32 %2989, 2
  %2993 = fmul fast float %2990, 1.023000e+03
  %2994 = fmul fast float %2991, 1.023000e+03
  %2995 = fmul fast float %2992, 1.023000e+03
  %2996 = fadd fast float %2993, 5.000000e-01
  %2997 = fadd fast float %2994, 5.000000e-01
  %2998 = fadd fast float %2995, 5.000000e-01
  %2999 = call float @dx.op.unary.f32(i32 27, float %2996)  ; Round_ni(value)
  %3000 = call float @dx.op.unary.f32(i32 27, float %2997)  ; Round_ni(value)
  %3001 = call float @dx.op.unary.f32(i32 27, float %2998)  ; Round_ni(value)
  %3002 = fsub fast float %2969, %2972
  %3003 = fsub fast float %2970, %2973
  %3004 = fsub fast float %2971, %2974
  %3005 = fmul fast float %3002, 7.500000e-01
  %3006 = fmul fast float %3003, 7.500000e-01
  %3007 = fmul fast float %3004, 7.500000e-01
  %3008 = fadd fast float %2972, 1.250000e-01
  %3009 = fadd fast float %3008, %3005
  %3010 = fadd fast float %3009, %2999
  %3011 = fadd fast float %2973, 1.250000e-01
  %3012 = fadd fast float %3011, %3006
  %3013 = fadd fast float %3012, %3000
  %3014 = fadd fast float %2974, 1.250000e-01
  %3015 = fadd fast float %3014, %3007
  %3016 = fadd fast float %3015, %3001
  %3017 = fmul fast float %3010, %2960
  %3018 = fmul fast float %3013, %2961
  %3019 = fmul fast float %3016, %2962
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = add i32 %3021, 0
  %3023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3022, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3023, %dx.types.Handle %28, float %3017, float %3018, float %3019, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3025 = extractvalue %dx.types.ResRet.f32 %3024, 0
  br label %3026

; <label>:3026                                    ; preds = %2947, %2936
  %3027 = phi float [ %3025, %2947 ], [ -1.000000e+00, %2936 ]
  %3028 = fadd fast float %3027, %2934
  %3029 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  br label %3030

; <label>:3030                                    ; preds = %3026, %2924
  %3031 = phi float [ %3029, %3026 ], [ %2934, %2924 ]
  %3032 = fmul fast float %3031, %395
  br label %3033

; <label>:3033                                    ; preds = %3030, %2919
  %3034 = phi float [ %3032, %3030 ], [ %395, %2919 ]
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = and i32 %3036, 256
  %3038 = icmp eq i32 %3037, 0
  br i1 %3038, label %3085, label %3039

; <label>:3039                                    ; preds = %3033
  %3040 = add i32 %33, 436
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3040, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = add i32 %3042, 0
  %3044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3045 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3044, %dx.types.Handle %64, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3046 = extractvalue %dx.types.ResRet.f32 %3045, 0
  %3047 = add i32 %33, 148
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3047, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = shl i32 %3049, 4
  %3051 = and i32 %3050, 32752
  %3052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3051)  ; LegacyF16ToF32(value)
  %3053 = lshr i32 %3049, 7
  %3054 = and i32 %3053, 32752
  %3055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3054)  ; LegacyF16ToF32(value)
  %3056 = fsub fast float 1.000000e+00, %3034
  %3057 = call float @dx.op.binary.f32(i32 35, float %3056, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3058 = bitcast float %3034 to i32
  %3059 = sitofp i32 %3058 to float
  %3060 = fadd fast float %3059, 0xC1CFBF8940000000
  %3061 = fmul fast float %3055, %3060
  %3062 = fadd fast float %3061, 0x41CFBF8940000000
  %3063 = fptosi float %3062 to i32
  %3064 = bitcast i32 %3063 to float
  %3065 = bitcast float %3057 to i32
  %3066 = sitofp i32 %3065 to float
  %3067 = fadd fast float %3066, 0xC1CFBF8940000000
  %3068 = fmul fast float %3067, %3055
  %3069 = fadd fast float %3068, 0x41CFBF8940000000
  %3070 = fptosi float %3069 to i32
  %3071 = bitcast i32 %3070 to float
  %3072 = fmul fast float %3064, %3052
  %3073 = fmul fast float %3071, %3052
  %3074 = fsub fast float %3057, %3072
  %3075 = fadd fast float %3073, %3057
  %3076 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3077 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3078 = fsub fast float %3046, %3076
  %3079 = fsub fast float %3077, %3076
  %3080 = bitcast float %3079 to i32
  %3081 = sub nsw i32 2129859010, %3080
  %3082 = bitcast i32 %3081 to float
  %3083 = fmul fast float %3082, %3078
  %3084 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  br label %3085

; <label>:3085                                    ; preds = %3039, %3033
  %3086 = phi float [ %3084, %3039 ], [ %3034, %3033 ]
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = and i32 %3088, 128
  %3090 = icmp eq i32 %3089, 0
  br i1 %3090, label %3107, label %3091

; <label>:3091                                    ; preds = %3085
  %3092 = add i32 %33, 420
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = add i32 %3094, 0
  %3096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3096, %dx.types.Handle %64, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3098 = extractvalue %dx.types.ResRet.f32 %3097, 0
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 524288
  %3102 = icmp ne i32 %3101, 0
  %3103 = fcmp fast ogt float %3098, 0x3FE0101020000000
  %3104 = select i1 %3103, float 1.000000e+00, float 0.000000e+00
  %3105 = select i1 %3102, float %3104, float %3098
  %3106 = fmul fast float %3105, %3086
  br label %3107

; <label>:3107                                    ; preds = %3091, %3085
  %3108 = phi float [ %3106, %3091 ], [ %3086, %3085 ]
  %3109 = fcmp fast ult float %3108, 0x3F70101020000000
  br i1 %3109, label %3763, label %3110

; <label>:3110                                    ; preds = %3107
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 16
  %3114 = icmp eq i32 %3113, 0
  br i1 %3114, label %3313, label %3115

; <label>:3115                                    ; preds = %3110
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %33, 372
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = add i32 %3120, 0
  %3122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3122, %dx.types.Handle %63, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 1
  %3126 = extractvalue %dx.types.ResRet.f32 %3123, 2
  %3127 = extractvalue %dx.types.ResRet.f32 %3123, 3
  %3128 = and i32 %3117, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = lshr i32 %3117, 8
  %3131 = and i32 %3130, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = fmul fast float %3127, %3129
  %3134 = fadd fast float %3133, %3132
  %3135 = fmul fast float %3134, 0x3F70101000000000
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 512
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3148, label %3140

; <label>:3140                                    ; preds = %3115
  %3141 = add i32 %33, 452
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = add i32 %3143, 0
  %3145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3145, %dx.types.Handle %64, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  br label %3148

; <label>:3148                                    ; preds = %3140, %3115
  %3149 = phi float [ %3147, %3140 ], [ 1.000000e+00, %3115 ]
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 33554432
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3260, label %3154

; <label>:3154                                    ; preds = %3148
  %3155 = add i32 %33, 272
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 65535
  %3159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3158)  ; LegacyF16ToF32(value)
  %3160 = lshr i32 %3157, 16
  %3161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3160)  ; LegacyF16ToF32(value)
  %3162 = add i32 %33, 276
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 65535
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = lshr i32 %3168, 24
  %3170 = uitofp i32 %3169 to float
  %3171 = fmul fast float %3170, 0x3F70101020000000
  %3172 = and i32 %3168, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = fmul fast float %3173, 0x3F70101020000000
  %3175 = lshr i32 %3168, 8
  %3176 = and i32 %3175, 255
  %3177 = uitofp i32 %3176 to float
  %3178 = fmul fast float %3177, 0x3F70101020000000
  %3179 = lshr i32 %3168, 16
  %3180 = and i32 %3179, 255
  %3181 = uitofp i32 %3180 to float
  %3182 = fmul fast float %3181, 0x3F70101020000000
  %3183 = add i32 %33, 268
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = lshr i32 %3185, 24
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101020000000
  %3189 = and i32 %3185, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101020000000
  %3192 = lshr i32 %3185, 8
  %3193 = and i32 %3192, 255
  %3194 = uitofp i32 %3193 to float
  %3195 = fmul fast float %3194, 0x3F70101020000000
  %3196 = lshr i32 %3185, 16
  %3197 = and i32 %3196, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F70101020000000
  %3200 = bitcast float %3124 to i32
  %3201 = ashr i32 %3200, 1
  %3202 = sub nsw i32 1597463174, %3201
  %3203 = bitcast i32 %3202 to float
  %3204 = fmul fast float %3124, 5.000000e-01
  %3205 = fmul fast float %3203, %3203
  %3206 = fmul fast float %3205, %3204
  %3207 = fsub fast float 1.500000e+00, %3206
  %3208 = fmul fast float %3203, %3124
  %3209 = fmul fast float %3208, %3207
  %3210 = bitcast float %3125 to i32
  %3211 = ashr i32 %3210, 1
  %3212 = sub nsw i32 1597463174, %3211
  %3213 = bitcast i32 %3212 to float
  %3214 = fmul fast float %3125, 5.000000e-01
  %3215 = fmul fast float %3213, %3213
  %3216 = fmul fast float %3215, %3214
  %3217 = fsub fast float 1.500000e+00, %3216
  %3218 = fmul fast float %3213, %3125
  %3219 = fmul fast float %3218, %3217
  %3220 = bitcast float %3126 to i32
  %3221 = ashr i32 %3220, 1
  %3222 = sub nsw i32 1597463174, %3221
  %3223 = bitcast i32 %3222 to float
  %3224 = fmul fast float %3126, 5.000000e-01
  %3225 = fmul fast float %3223, %3223
  %3226 = fmul fast float %3225, %3224
  %3227 = fsub fast float 1.500000e+00, %3226
  %3228 = fmul fast float %3223, %3126
  %3229 = fmul fast float %3228, %3227
  %3230 = fsub fast float %3209, %3191
  %3231 = fsub fast float %3219, %3195
  %3232 = fsub fast float %3229, %3199
  %3233 = fmul fast float %3230, %3159
  %3234 = fmul fast float %3231, %3161
  %3235 = fmul fast float %3232, %3166
  %3236 = fadd fast float %3233, %3174
  %3237 = fadd fast float %3234, %3178
  %3238 = fadd fast float %3235, %3182
  %3239 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  %3240 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  %3241 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3242 = fmul fast float %3239, %3239
  %3243 = fmul fast float %3240, %3240
  %3244 = fmul fast float %3241, %3241
  %3245 = fsub fast float %3242, %3124
  %3246 = fsub fast float %3243, %3125
  %3247 = fsub fast float %3244, %3126
  %3248 = fmul fast float %3245, %3149
  %3249 = fmul fast float %3246, %3149
  %3250 = fmul fast float %3247, %3149
  %3251 = fadd fast float %3248, %3124
  %3252 = fadd fast float %3249, %3125
  %3253 = fadd fast float %3250, %3126
  %3254 = fadd fast float %3171, %3135
  %3255 = fsub fast float %3254, %3188
  %3256 = call float @dx.op.unary.f32(i32 7, float %3255)  ; Saturate(value)
  %3257 = fsub fast float %3256, %3135
  %3258 = fmul fast float %3257, %3149
  %3259 = fadd fast float %3258, %3135
  br label %3313

; <label>:3260                                    ; preds = %3148
  %3261 = and i32 %3151, 134217728
  %3262 = icmp eq i32 %3261, 0
  br i1 %3262, label %3297, label %3263

; <label>:3263                                    ; preds = %3260
  %3264 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %3265 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3266 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3267 = fadd fast float %3264, -5.000000e-01
  %3268 = fadd fast float %3265, -5.000000e-01
  %3269 = fadd fast float %3266, -5.000000e-01
  %3270 = fmul fast float %3267, %3149
  %3271 = fmul fast float %3268, %3149
  %3272 = fmul fast float %3269, %3149
  %3273 = fadd fast float %3270, 5.000000e-01
  %3274 = fadd fast float %3271, 5.000000e-01
  %3275 = fadd fast float %3272, 5.000000e-01
  %3276 = call float @dx.op.unary.f32(i32 24, float %3124)  ; Sqrt(value)
  %3277 = call float @dx.op.unary.f32(i32 24, float %3125)  ; Sqrt(value)
  %3278 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3279 = fmul fast float %3273, 2.000000e+00
  %3280 = fsub fast float 1.000000e+00, %3279
  %3281 = fmul fast float %3280, %3276
  %3282 = fadd fast float %3281, %3279
  %3283 = fmul fast float %3282, %3276
  %3284 = fmul fast float %3274, 2.000000e+00
  %3285 = fsub fast float 1.000000e+00, %3284
  %3286 = fmul fast float %3285, %3277
  %3287 = fadd fast float %3286, %3284
  %3288 = fmul fast float %3287, %3277
  %3289 = fmul fast float %3275, 2.000000e+00
  %3290 = fsub fast float 1.000000e+00, %3289
  %3291 = fmul fast float %3290, %3278
  %3292 = fadd fast float %3291, %3289
  %3293 = fmul fast float %3292, %3278
  %3294 = fmul fast float %3283, %3283
  %3295 = fmul fast float %3288, %3288
  %3296 = fmul fast float %3293, %3293
  br label %3313

; <label>:3297                                    ; preds = %3260
  %3298 = fmul fast float %316, %316
  %3299 = fmul fast float %320, %320
  %3300 = fmul fast float %324, %324
  %3301 = fadd fast float %3298, -1.000000e+00
  %3302 = fadd fast float %3299, -1.000000e+00
  %3303 = fadd fast float %3300, -1.000000e+00
  %3304 = fmul fast float %3149, %3301
  %3305 = fmul fast float %3149, %3302
  %3306 = fmul fast float %3149, %3303
  %3307 = fadd fast float %3304, 1.000000e+00
  %3308 = fadd fast float %3305, 1.000000e+00
  %3309 = fadd fast float %3306, 1.000000e+00
  %3310 = fmul fast float %3307, %3124
  %3311 = fmul fast float %3308, %3125
  %3312 = fmul fast float %3309, %3126
  br label %3313

; <label>:3313                                    ; preds = %3297, %3263, %3154, %3110
  %3314 = phi float [ %3259, %3154 ], [ %3135, %3263 ], [ %3135, %3297 ], [ 0x3FA23C0BE0000000, %3110 ]
  %3315 = phi float [ %3251, %3154 ], [ %3294, %3263 ], [ %3310, %3297 ], [ 1.000000e+00, %3110 ]
  %3316 = phi float [ %3252, %3154 ], [ %3295, %3263 ], [ %3311, %3297 ], [ 1.000000e+00, %3110 ]
  %3317 = phi float [ %3253, %3154 ], [ %3296, %3263 ], [ %3312, %3297 ], [ 1.000000e+00, %3110 ]
  %3318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3319 = extractvalue %dx.types.CBufRet.i32 %3318, 1
  %3320 = and i32 %3319, 1
  %3321 = icmp ne i32 %3320, 0
  %3322 = add i32 %33, 356
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = and i32 %3324, 32
  %3326 = icmp ne i32 %3325, 0
  %3327 = and i1 %3321, %3326
  %3328 = select i1 %3327, float 1.000000e+00, float %3315
  %3329 = select i1 %3327, float 0x3FD3333340000000, float %3316
  %3330 = select i1 %3327, float 0x3FD3333340000000, float %3317
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %3332, 32
  %3334 = icmp eq i32 %3333, 0
  br i1 %3334, label %3407, label %3335

; <label>:3335                                    ; preds = %3313
  %3336 = add i32 %33, 140
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = add i32 %33, 388
  %3340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3341 = extractvalue %dx.types.ResRet.i32 %3340, 0
  %3342 = add i32 %3341, 0
  %3343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3343, %dx.types.Handle %63, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3345 = extractvalue %dx.types.ResRet.f32 %3344, 0
  %3346 = extractvalue %dx.types.ResRet.f32 %3344, 1
  %3347 = extractvalue %dx.types.ResRet.f32 %3344, 2
  %3348 = extractvalue %dx.types.ResRet.f32 %3344, 3
  %3349 = and i32 %3338, 255
  %3350 = uitofp i32 %3349 to float
  %3351 = lshr i32 %3338, 8
  %3352 = and i32 %3351, 255
  %3353 = uitofp i32 %3352 to float
  %3354 = lshr i32 %3338, 16
  %3355 = and i32 %3354, 255
  %3356 = uitofp i32 %3355 to float
  %3357 = fmul fast float %3356, 0x3F70101000000000
  %3358 = fmul fast float %3345, %3350
  %3359 = fadd fast float %3358, %3353
  %3360 = fmul fast float %3359, 0x3F70101000000000
  %3361 = fadd fast float %3346, -5.000000e-01
  %3362 = fadd fast float %3348, -5.000000e-01
  %3363 = fmul fast float %3361, %3357
  %3364 = fmul fast float %3362, %3357
  %3365 = fadd fast float %3363, 5.000000e-01
  %3366 = fadd fast float %3364, 5.000000e-01
  %3367 = fmul fast float %3365, 2.000000e+00
  %3368 = fadd fast float %3367, -1.000000e+00
  %3369 = fmul fast float %3366, 2.000000e+00
  %3370 = fadd fast float %3369, -1.000000e+00
  %3371 = fadd fast float %3368, %3370
  %3372 = fmul fast float %3371, 5.000000e-01
  %3373 = fsub fast float %3368, %3370
  %3374 = fmul fast float %3373, 5.000000e-01
  %3375 = call float @dx.op.unary.f32(i32 6, float %3372)  ; FAbs(value)
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = call float @dx.op.unary.f32(i32 6, float %3374)  ; FAbs(value)
  %3378 = fsub fast float %3376, %3377
  %3379 = call float @dx.op.dot3.f32(i32 55, float %3372, float %3374, float %3378, float %3372, float %3374, float %3378)  ; Dot3(ax,ay,az,bx,by,bz)
  %3380 = call float @dx.op.unary.f32(i32 25, float %3379)  ; Rsqrt(value)
  %3381 = fmul fast float %3372, %3380
  %3382 = fmul fast float %3374, %3380
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = and i32 %3384, 67108864
  %3386 = icmp eq i32 %3385, 0
  br i1 %3386, label %3403, label %3387

; <label>:3387                                    ; preds = %3335
  %3388 = add i32 %33, 328
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = and i32 %3390, 65535
  %3392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3391)  ; LegacyF16ToF32(value)
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = and i32 %3394, 65535
  %3396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3395)  ; LegacyF16ToF32(value)
  %3397 = lshr i32 %3390, 16
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = fsub fast float %3360, %3398
  %3400 = fmul fast float %3399, %3392
  %3401 = fadd fast float %3400, %3396
  %3402 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  br label %3403

; <label>:3403                                    ; preds = %3387, %3335
  %3404 = phi float [ %3402, %3387 ], [ %3360, %3335 ]
  %3405 = call float @dx.op.dot2.f32(i32 54, float %3381, float %3382, float %2824, float %2825)  ; Dot2(ax,ay,bx,by)
  %3406 = call float @dx.op.dot2.f32(i32 54, float %3381, float %3382, float %2826, float %2827)  ; Dot2(ax,ay,bx,by)
  br label %3407

; <label>:3407                                    ; preds = %3403, %3313
  %3408 = phi float [ %3404, %3403 ], [ 0x3FD6666660000000, %3313 ]
  %3409 = phi float [ %3405, %3403 ], [ 0.000000e+00, %3313 ]
  %3410 = phi float [ %3406, %3403 ], [ 0.000000e+00, %3313 ]
  %3411 = phi float [ %3347, %3403 ], [ 1.000000e+00, %3313 ]
  %3412 = add i32 %33, 208
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = lshr i32 %3414, 22
  %3416 = shl nuw nsw i32 %3415, 5
  %3417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3416)  ; LegacyF16ToF32(value)
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 64
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3455, label %3422

; <label>:3422                                    ; preds = %3407
  %3423 = add i32 %33, 404
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3423, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = add i32 %3425, 0
  %3427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3426, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = and i32 %3429, 131072
  %3431 = icmp eq i32 %3430, 0
  %3432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3427, %dx.types.Handle %63, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.f32 %3432, 1
  %3435 = extractvalue %dx.types.ResRet.f32 %3432, 2
  %3436 = fmul fast float %3433, %304
  %3437 = fmul fast float %3434, %307
  %3438 = fmul fast float %3435, %310
  br i1 %3431, label %3445, label %3439

; <label>:3439                                    ; preds = %3422
  %3440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3441 = extractvalue %dx.types.CBufRet.f32 %3440, 0
  %3442 = fmul fast float %3441, %3436
  %3443 = fmul fast float %3441, %3437
  %3444 = fmul fast float %3441, %3438
  br label %3445

; <label>:3445                                    ; preds = %3439, %3422
  %3446 = phi float [ %3442, %3439 ], [ %3436, %3422 ]
  %3447 = phi float [ %3443, %3439 ], [ %3437, %3422 ]
  %3448 = phi float [ %3444, %3439 ], [ %3438, %3422 ]
  %3449 = fmul fast float %3446, %3417
  %3450 = select i1 %172, float %3449, float %3446
  %3451 = call float @dx.op.dot3.f32(i32 55, float %3450, float %3447, float %3448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3452 = select i1 %172, float 0.000000e+00, float %3446
  %3453 = select i1 %172, float %3451, float %3447
  %3454 = select i1 %172, float 0.000000e+00, float %3448
  br label %3455

; <label>:3455                                    ; preds = %3445, %3407
  %3456 = phi float [ %3452, %3445 ], [ 0.000000e+00, %3407 ]
  %3457 = phi float [ %3453, %3445 ], [ 0.000000e+00, %3407 ]
  %3458 = phi float [ %3454, %3445 ], [ 0.000000e+00, %3407 ]
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = and i32 %3460, 1024
  %3462 = icmp eq i32 %3461, 0
  br i1 %3462, label %3493, label %3463

; <label>:3463                                    ; preds = %3455
  %3464 = add i32 %33, 200
  %3465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3464, i32 undef)  ; BufferLoad(srv,index,wot)
  %3466 = extractvalue %dx.types.ResRet.i32 %3465, 0
  %3467 = and i32 %3466, 255
  %3468 = uitofp i32 %3467 to float
  %3469 = fmul fast float %3468, 0x3F70101020000000
  %3470 = lshr i32 %3466, 8
  %3471 = and i32 %3470, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = fmul fast float %3472, 0x3F70101020000000
  %3474 = lshr i32 %3466, 16
  %3475 = and i32 %3474, 255
  %3476 = uitofp i32 %3475 to float
  %3477 = fmul fast float %3476, 0x3F70101020000000
  %3478 = fmul fast float %3469, %3469
  %3479 = fmul fast float %3473, %3473
  %3480 = fmul fast float %3477, %3477
  %3481 = add i32 %33, 468
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = add i32 %3483, 0
  %3485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3485, %dx.types.Handle %64, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = fmul fast float %3478, %3487
  %3491 = fmul fast float %3479, %3488
  %3492 = fmul fast float %3480, %3489
  br label %3493

; <label>:3493                                    ; preds = %3463, %3455
  %3494 = phi float [ %3490, %3463 ], [ 0.000000e+00, %3455 ]
  %3495 = phi float [ %3491, %3463 ], [ 0.000000e+00, %3455 ]
  %3496 = phi float [ %3492, %3463 ], [ 0.000000e+00, %3455 ]
  %3497 = fcmp fast ogt float %3494, 0.000000e+00
  %3498 = fcmp fast ogt float %3495, 0.000000e+00
  %3499 = fcmp fast ogt float %3496, 0.000000e+00
  %3500 = call float @dx.op.unary.f32(i32 23, float %3494)  ; Log(value)
  %3501 = call float @dx.op.unary.f32(i32 23, float %3495)  ; Log(value)
  %3502 = call float @dx.op.unary.f32(i32 23, float %3496)  ; Log(value)
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = lshr i32 %3504, 7
  %3506 = and i32 %3505, 32752
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = fmul fast float %3500, 0xBFE62E4300000000
  %3509 = fmul fast float %3508, %3507
  %3510 = fmul fast float %3501, 0xBFE62E4300000000
  %3511 = fmul fast float %3510, %3507
  %3512 = fmul fast float %3502, 0xBFE62E4300000000
  %3513 = fmul fast float %3512, %3507
  %3514 = select i1 %3497, float %3509, float 1.270000e+02
  %3515 = select i1 %3498, float %3511, float 1.270000e+02
  %3516 = select i1 %3499, float %3513, float 1.270000e+02
  %3517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.i32 %3517, 0
  %3519 = and i32 %3518, 10240
  %3520 = icmp eq i32 %3519, 0
  br i1 %3520, label %3541, label %3521

; <label>:3521                                    ; preds = %3493
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = and i32 %3523, 2048
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3541, label %3526

; <label>:3526                                    ; preds = %3521
  %3527 = add i32 %33, 484
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = add i32 %3529, 0
  %3531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3531, %dx.types.Handle %64, float %2920, float %2921, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3533 = extractvalue %dx.types.ResRet.f32 %3532, 3
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = shl i32 %3535, 4
  %3537 = and i32 %3536, 32752
  %3538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3537)  ; LegacyF16ToF32(value)
  %3539 = fmul fast float %3538, %3533
  %3540 = call float @dx.op.binary.f32(i32 35, float %3539, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3541

; <label>:3541                                    ; preds = %3526, %3521, %3493
  %3542 = phi float [ %3540, %3526 ], [ 0x3F70101020000000, %3521 ], [ 0x3F70101020000000, %3493 ]
  %3543 = add i32 %33, 144
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = and i32 %3545, 255
  %3547 = uitofp i32 %3546 to float
  %3548 = lshr i32 %3545, 8
  %3549 = and i32 %3548, 255
  %3550 = uitofp i32 %3549 to float
  %3551 = call float @dx.op.dot3.f32(i32 55, float %3328, float %3329, float %3330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3552 = fmul fast float %3550, %3551
  %3553 = fadd fast float %3552, %3547
  %3554 = fmul fast float %3553, 0x3F70101020000000
  %3555 = call float @dx.op.unary.f32(i32 7, float %3554)  ; Saturate(value)
  br i1 %2812, label %3556, label %3591

; <label>:3556                                    ; preds = %3541
  %3557 = fmul fast float %3542, 2.000000e+00
  %3558 = fcmp fast olt float %3514, 1.270000e+02
  %3559 = fcmp fast olt float %3515, 1.270000e+02
  %3560 = fcmp fast olt float %3516, 1.270000e+02
  %3561 = fmul fast float %3514, 0xBFF7154760000000
  %3562 = fmul fast float %3561, %3557
  %3563 = fmul fast float %3515, 0xBFF7154760000000
  %3564 = fmul fast float %3563, %3557
  %3565 = fmul fast float %3516, 0xBFF7154760000000
  %3566 = fmul fast float %3565, %3557
  %3567 = call float @dx.op.unary.f32(i32 21, float %3562)  ; Exp(value)
  %3568 = call float @dx.op.unary.f32(i32 21, float %3564)  ; Exp(value)
  %3569 = call float @dx.op.unary.f32(i32 21, float %3566)  ; Exp(value)
  %3570 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  %3571 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  %3572 = call float @dx.op.unary.f32(i32 7, float %3569)  ; Saturate(value)
  %3573 = fadd fast float %3570, -1.000000e+00
  %3574 = select i1 %3558, float %3573, float -1.000000e+00
  %3575 = fadd fast float %3571, -1.000000e+00
  %3576 = select i1 %3559, float %3575, float -1.000000e+00
  %3577 = fadd fast float %3572, -1.000000e+00
  %3578 = select i1 %3560, float %3577, float -1.000000e+00
  %3579 = fmul fast float %3574, %3108
  %3580 = fmul fast float %3576, %3108
  %3581 = fmul fast float %3578, %3108
  %3582 = fadd fast float %3579, 1.000000e+00
  %3583 = fadd fast float %3580, 1.000000e+00
  %3584 = fadd fast float %3581, 1.000000e+00
  %3585 = fmul fast float %3582, %2801
  %3586 = fmul fast float %3583, %2802
  %3587 = fmul fast float %3584, %2803
  %3588 = fmul fast float %3582, %2804
  %3589 = fmul fast float %3583, %2805
  %3590 = fmul fast float %3584, %2806
  br label %3591

; <label>:3591                                    ; preds = %3556, %3541
  %3592 = phi float [ %3585, %3556 ], [ %2801, %3541 ]
  %3593 = phi float [ %3586, %3556 ], [ %2802, %3541 ]
  %3594 = phi float [ %3587, %3556 ], [ %2803, %3541 ]
  %3595 = phi float [ %3588, %3556 ], [ %2804, %3541 ]
  %3596 = phi float [ %3589, %3556 ], [ %2805, %3541 ]
  %3597 = phi float [ %3590, %3556 ], [ %2806, %3541 ]
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = and i32 %3599, 3
  %3601 = icmp eq i32 %3600, 3
  br i1 %3601, label %3680, label %3602

; <label>:3602                                    ; preds = %3591
  %3603 = and i32 %3599, 16
  %3604 = icmp ne i32 %3603, 0
  %3605 = select i1 %3604, float %3108, float 0.000000e+00
  %3606 = icmp eq i32 %3600, 0
  br i1 %3606, label %3607, label %3635

; <label>:3607                                    ; preds = %3602
  %3608 = and i32 %3599, 64
  %3609 = icmp ne i32 %3608, 0
  %3610 = select i1 %3609, float %3108, float 0.000000e+00
  %3611 = fsub fast float %3328, %3592
  %3612 = fsub fast float %3329, %3593
  %3613 = fsub fast float %3330, %3594
  %3614 = fmul fast float %3605, %3611
  %3615 = fmul fast float %3605, %3612
  %3616 = fmul fast float %3605, %3613
  %3617 = fadd fast float %3614, %3592
  %3618 = fadd fast float %3615, %3593
  %3619 = fadd fast float %3616, %3594
  %3620 = fsub fast float %3314, %2807
  %3621 = fmul fast float %3605, %3620
  %3622 = fadd fast float %3621, %2807
  %3623 = fsub fast float %3456, %3595
  %3624 = fsub fast float %3457, %3596
  %3625 = fsub fast float %3458, %3597
  %3626 = fmul fast float %3610, %3623
  %3627 = fmul fast float %3610, %3624
  %3628 = fmul fast float %3610, %3625
  %3629 = fadd fast float %3626, %3595
  %3630 = fadd fast float %3627, %3596
  %3631 = fadd fast float %3628, %3597
  %3632 = fsub fast float %3555, %2810
  %3633 = fmul fast float %3605, %3632
  %3634 = fadd fast float %3633, %2810
  br label %3680

; <label>:3635                                    ; preds = %3602
  %3636 = icmp eq i32 %3600, 1
  br i1 %3636, label %3637, label %3650

; <label>:3637                                    ; preds = %3635
  %3638 = fadd fast float %3328, -1.000000e+00
  %3639 = fadd fast float %3329, -1.000000e+00
  %3640 = fadd fast float %3330, -1.000000e+00
  %3641 = fmul fast float %3605, %3638
  %3642 = fmul fast float %3605, %3639
  %3643 = fmul fast float %3605, %3640
  %3644 = fadd fast float %3641, 1.000000e+00
  %3645 = fadd fast float %3642, 1.000000e+00
  %3646 = fadd fast float %3643, 1.000000e+00
  %3647 = fmul fast float %3644, %3592
  %3648 = fmul fast float %3645, %3593
  %3649 = fmul fast float %3646, %3594
  br label %3680

; <label>:3650                                    ; preds = %3635
  %3651 = icmp eq i32 %3600, 2
  br i1 %3651, label %3652, label %3680

; <label>:3652                                    ; preds = %3650
  %3653 = call float @dx.op.unary.f32(i32 24, float %3328)  ; Sqrt(value)
  %3654 = call float @dx.op.unary.f32(i32 24, float %3329)  ; Sqrt(value)
  %3655 = call float @dx.op.unary.f32(i32 24, float %3330)  ; Sqrt(value)
  %3656 = fadd fast float %3653, -5.000000e-01
  %3657 = fadd fast float %3654, -5.000000e-01
  %3658 = fadd fast float %3655, -5.000000e-01
  %3659 = fmul fast float %3656, %3605
  %3660 = fmul fast float %3657, %3605
  %3661 = fmul fast float %3658, %3605
  %3662 = fadd fast float %3659, 5.000000e-01
  %3663 = fadd fast float %3660, 5.000000e-01
  %3664 = fadd fast float %3661, 5.000000e-01
  %3665 = fmul fast float %3662, 2.000000e+00
  %3666 = fsub fast float 1.000000e+00, %3665
  %3667 = fmul fast float %3666, %3592
  %3668 = fadd fast float %3667, %3665
  %3669 = fmul fast float %3668, %3592
  %3670 = fmul fast float %3663, 2.000000e+00
  %3671 = fsub fast float 1.000000e+00, %3670
  %3672 = fmul fast float %3671, %3593
  %3673 = fadd fast float %3672, %3670
  %3674 = fmul fast float %3673, %3593
  %3675 = fmul fast float %3664, 2.000000e+00
  %3676 = fsub fast float 1.000000e+00, %3675
  %3677 = fmul fast float %3676, %3594
  %3678 = fadd fast float %3677, %3675
  %3679 = fmul fast float %3678, %3594
  br label %3680

; <label>:3680                                    ; preds = %3652, %3650, %3637, %3607, %3591
  %3681 = phi float [ %3592, %3591 ], [ %3669, %3652 ], [ %3592, %3650 ], [ %3647, %3637 ], [ %3617, %3607 ]
  %3682 = phi float [ %3593, %3591 ], [ %3674, %3652 ], [ %3593, %3650 ], [ %3648, %3637 ], [ %3618, %3607 ]
  %3683 = phi float [ %3594, %3591 ], [ %3679, %3652 ], [ %3594, %3650 ], [ %3649, %3637 ], [ %3619, %3607 ]
  %3684 = phi float [ %3595, %3591 ], [ %3595, %3652 ], [ %3595, %3650 ], [ %3595, %3637 ], [ %3629, %3607 ]
  %3685 = phi float [ %3596, %3591 ], [ %3596, %3652 ], [ %3596, %3650 ], [ %3596, %3637 ], [ %3630, %3607 ]
  %3686 = phi float [ %3597, %3591 ], [ %3597, %3652 ], [ %3597, %3650 ], [ %3597, %3637 ], [ %3631, %3607 ]
  %3687 = phi float [ %2807, %3591 ], [ %2807, %3652 ], [ %2807, %3650 ], [ %2807, %3637 ], [ %3622, %3607 ]
  %3688 = phi float [ %2810, %3591 ], [ %2810, %3652 ], [ %2810, %3650 ], [ %2810, %3637 ], [ %3634, %3607 ]
  %3689 = and i32 %3599, 12
  %3690 = icmp eq i32 %3689, 12
  br i1 %3690, label %3763, label %3691

; <label>:3691                                    ; preds = %3680
  %3692 = and i32 %3599, 2097184
  %3693 = icmp eq i32 %3692, 2097184
  %3694 = select i1 %3693, float %3108, float 0.000000e+00
  %3695 = and i32 %3599, 4194336
  %3696 = icmp eq i32 %3695, 4194336
  %3697 = select i1 %3696, float %3108, float 0.000000e+00
  %3698 = and i32 %3599, 8388640
  %3699 = icmp eq i32 %3698, 8388640
  %3700 = select i1 %3699, float %3108, float 0.000000e+00
  %3701 = icmp eq i32 %3689, 0
  br i1 %3701, label %3702, label %3715

; <label>:3702                                    ; preds = %3691
  %3703 = fsub fast float %3409, %2799
  %3704 = fsub fast float %3410, %2800
  %3705 = fmul fast float %3694, %3703
  %3706 = fmul fast float %3694, %3704
  %3707 = fadd fast float %3705, %2799
  %3708 = fadd fast float %3706, %2800
  %3709 = fsub fast float %3411, %2809
  %3710 = fmul fast float %3697, %3709
  %3711 = fadd fast float %3710, %2809
  %3712 = fsub fast float %3408, %2808
  %3713 = fmul fast float %3700, %3712
  %3714 = fadd fast float %3713, %2808
  br label %3763

; <label>:3715                                    ; preds = %3691
  %3716 = icmp eq i32 %3689, 4
  br i1 %3716, label %3717, label %3749

; <label>:3717                                    ; preds = %3715
  %3718 = fmul fast float %3694, %3409
  %3719 = fmul fast float %3694, %3410
  %3720 = fadd fast float %3718, %2799
  %3721 = fadd fast float %3719, %2800
  %3722 = call float @dx.op.binary.f32(i32 36, float %2809, float %3411)  ; FMin(a,b)
  %3723 = fsub fast float %3722, %2809
  %3724 = fmul fast float %3723, %3697
  %3725 = fadd fast float %3724, %2809
  %3726 = fadd fast float %3408, %2808
  %3727 = fmul fast float %3726, 0x3FF337FAE0000000
  %3728 = fmul fast float %2808, %2808
  %3729 = fmul fast float %3408, %3408
  %3730 = fadd fast float %3729, %3728
  %3731 = fmul fast float %3730, 0x3FE5152B00000000
  %3732 = fmul fast float %2808, 0xBFCC1F85E0000000
  %3733 = fmul fast float %3732, %3408
  %3734 = fadd fast float %3733, 0xBFE1363700000000
  %3735 = fadd fast float %3734, %3727
  %3736 = fsub fast float %3735, %3731
  %3737 = fmul fast float %3726, 0x3FBA6F0D00000000
  %3738 = fmul fast float %3730, 0x3FD0432880000000
  %3739 = fmul fast float %2808, 0xBFEF110800000000
  %3740 = fmul fast float %3739, %3408
  %3741 = fadd fast float %3740, 1.000000e+00
  %3742 = fsub fast float %3741, %3737
  %3743 = fadd fast float %3742, %3738
  %3744 = fdiv fast float %3736, %3743
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = fsub fast float %3745, %2808
  %3747 = fmul fast float %3746, %3700
  %3748 = fadd fast float %3747, %2808
  br label %3763

; <label>:3749                                    ; preds = %3715
  %3750 = icmp eq i32 %3689, 8
  br i1 %3750, label %3751, label %3763

; <label>:3751                                    ; preds = %3749
  %3752 = fmul fast float %3694, %3409
  %3753 = fmul fast float %3694, %3410
  %3754 = fadd fast float %3752, %2799
  %3755 = fadd fast float %3753, %2800
  %3756 = call float @dx.op.binary.f32(i32 36, float %2809, float %3411)  ; FMin(a,b)
  %3757 = fsub fast float %3756, %2809
  %3758 = fmul fast float %3757, %3697
  %3759 = fadd fast float %3758, %2809
  %3760 = fsub fast float %3408, %2808
  %3761 = fmul fast float %3700, %3760
  %3762 = fadd fast float %3761, %2808
  br label %3763

; <label>:3763                                    ; preds = %3751, %3749, %3717, %3702, %3680, %3107, %2811, %2798
  %3764 = phi float [ %2799, %3680 ], [ %2799, %3107 ], [ %2799, %2798 ], [ %2799, %2811 ], [ %3707, %3702 ], [ %3720, %3717 ], [ %2799, %3749 ], [ %3754, %3751 ]
  %3765 = phi float [ %2800, %3680 ], [ %2800, %3107 ], [ %2800, %2798 ], [ %2800, %2811 ], [ %3708, %3702 ], [ %3721, %3717 ], [ %2800, %3749 ], [ %3755, %3751 ]
  %3766 = phi float [ %3681, %3680 ], [ %2801, %3107 ], [ %2801, %2798 ], [ %2801, %2811 ], [ %3681, %3702 ], [ %3681, %3717 ], [ %3681, %3749 ], [ %3681, %3751 ]
  %3767 = phi float [ %3682, %3680 ], [ %2802, %3107 ], [ %2802, %2798 ], [ %2802, %2811 ], [ %3682, %3702 ], [ %3682, %3717 ], [ %3682, %3749 ], [ %3682, %3751 ]
  %3768 = phi float [ %3683, %3680 ], [ %2803, %3107 ], [ %2803, %2798 ], [ %2803, %2811 ], [ %3683, %3702 ], [ %3683, %3717 ], [ %3683, %3749 ], [ %3683, %3751 ]
  %3769 = phi float [ %3684, %3680 ], [ %2804, %3107 ], [ %2804, %2798 ], [ %2804, %2811 ], [ %3684, %3702 ], [ %3684, %3717 ], [ %3684, %3749 ], [ %3684, %3751 ]
  %3770 = phi float [ %3685, %3680 ], [ %2805, %3107 ], [ %2805, %2798 ], [ %2805, %2811 ], [ %3685, %3702 ], [ %3685, %3717 ], [ %3685, %3749 ], [ %3685, %3751 ]
  %3771 = phi float [ %3686, %3680 ], [ %2806, %3107 ], [ %2806, %2798 ], [ %2806, %2811 ], [ %3686, %3702 ], [ %3686, %3717 ], [ %3686, %3749 ], [ %3686, %3751 ]
  %3772 = phi float [ %3687, %3680 ], [ %2807, %3107 ], [ %2807, %2798 ], [ %2807, %2811 ], [ %3687, %3702 ], [ %3687, %3717 ], [ %3687, %3749 ], [ %3687, %3751 ]
  %3773 = phi float [ %2808, %3680 ], [ %2808, %3107 ], [ %2808, %2798 ], [ %2808, %2811 ], [ %3714, %3702 ], [ %3748, %3717 ], [ %2808, %3749 ], [ %3762, %3751 ]
  %3774 = phi float [ %2809, %3680 ], [ %2809, %3107 ], [ %2809, %2798 ], [ %2809, %2811 ], [ %3711, %3702 ], [ %3725, %3717 ], [ %2809, %3749 ], [ %3759, %3751 ]
  %3775 = phi float [ %3688, %3680 ], [ %2810, %3107 ], [ %2810, %2798 ], [ %2810, %2811 ], [ %3688, %3702 ], [ %3688, %3717 ], [ %3688, %3749 ], [ %3688, %3751 ]
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3778 = call float @dx.op.dot2.f32(i32 54, float %3764, float %3765, float %3764, float %3765)  ; Dot2(ax,ay,bx,by)
  %3779 = fmul fast float %3778, 0x3FE3333340000000
  %3780 = fsub fast float 1.000000e+00, %3779
  %3781 = call float @dx.op.dot3.f32(i32 55, float %3764, float %3765, float %3780, float %3764, float %3765, float %3780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3782 = call float @dx.op.unary.f32(i32 25, float %3781)  ; Rsqrt(value)
  %3783 = fmul fast float %3782, %3764
  %3784 = fmul fast float %3782, %3765
  %3785 = fmul fast float %3780, %3782
  %3786 = fmul fast float %3785, %74
  %3787 = fmul fast float %3785, %75
  %3788 = fmul fast float %3785, %76
  %3789 = fmul fast float %3783, %48
  %3790 = fmul fast float %3783, %49
  %3791 = fmul fast float %3783, %50
  %3792 = fadd fast float %3786, %3789
  %3793 = fadd fast float %3787, %3790
  %3794 = fadd fast float %3788, %3791
  %3795 = fmul fast float %86, %3784
  %3796 = fmul fast float %87, %3784
  %3797 = fmul fast float %88, %3784
  %3798 = fadd fast float %3792, %3795
  %3799 = fadd fast float %3793, %3796
  %3800 = fadd fast float %3794, %3797
  %3801 = call float @dx.op.dot3.f32(i32 55, float %3798, float %3799, float %3800, float %3798, float %3799, float %3800)  ; Dot3(ax,ay,az,bx,by,bz)
  %3802 = call float @dx.op.unary.f32(i32 25, float %3801)  ; Rsqrt(value)
  %3803 = fmul fast float %3798, %3802
  %3804 = fmul fast float %3799, %3802
  %3805 = fmul fast float %3800, %3802
  %3806 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3807 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3808 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3809 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3810 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3811 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3812 = fadd fast float %3806, %130
  %3813 = fadd fast float %3807, %131
  %3814 = fadd fast float %3808, %132
  %3815 = fadd fast float %3809, %130
  %3816 = fadd fast float %3810, %131
  %3817 = fadd fast float %3811, %132
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.CBufRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.CBufRet.f32 %3818, 2
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 2
  %3824 = extractvalue %dx.types.CBufRet.f32 %3822, 3
  %3825 = fmul fast float %3819, %67
  %3826 = fmul fast float %3825, %3823
  %3827 = fmul fast float %3820, %68
  %3828 = fmul fast float %3827, %3824
  %3829 = fptoui float %3826 to i32
  %3830 = fptoui float %3828 to i32
  %3831 = fadd fast float %3819, -1.000000e+00
  %3832 = fadd fast float %3820, -1.000000e+00
  %3833 = fptoui float %3831 to i32
  %3834 = fptoui float %3832 to i32
  %3835 = call i32 @dx.op.binary.i32(i32 40, i32 %3829, i32 %3833)  ; UMin(a,b)
  %3836 = call i32 @dx.op.binary.i32(i32 40, i32 %3830, i32 %3834)  ; UMin(a,b)
  %3837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3838 = extractvalue %dx.types.CBufRet.f32 %3837, 2
  %3839 = extractvalue %dx.types.CBufRet.f32 %3837, 3
  %3840 = fmul fast float %3838, %62
  %3841 = fsub fast float %3840, %3839
  %3842 = fadd fast float %3821, -1.000000e+00
  %3843 = call float @dx.op.binary.f32(i32 36, float %3841, float %3842)  ; FMin(a,b)
  %3844 = fptoui float %3843 to i32
  %3845 = fptoui float %3819 to i32
  %3846 = fptoui float %3820 to i32
  %3847 = mul i32 %3844, %3846
  %3848 = add i32 %3847, %3836
  %3849 = mul i32 %3848, %3845
  %3850 = add i32 %3849, %3835
  %3851 = shl i32 %3850, 2
  %3852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.i32 %3852, 0
  %3854 = and i32 %3853, 1023
  %3855 = lshr i32 %3853, 10
  %3856 = icmp eq i32 %3854, 0
  br i1 %3856, label %4282, label %3857

; <label>:3857                                    ; preds = %3763
  %3858 = and i32 %3853, 1023
  br label %3859

; <label>:3859                                    ; preds = %3985, %3857
  %3860 = phi i32 [ %3935, %3985 ], [ 0, %3857 ]
  %3861 = phi float [ %3986, %3985 ], [ 0.000000e+00, %3857 ]
  %3862 = phi float [ %3987, %3985 ], [ %3777, %3857 ]
  %3863 = phi float [ %3988, %3985 ], [ %3775, %3857 ]
  %3864 = phi float [ %3989, %3985 ], [ 0.000000e+00, %3857 ]
  %3865 = phi float [ %3990, %3985 ], [ 0.000000e+00, %3857 ]
  %3866 = phi float [ %3991, %3985 ], [ %3769, %3857 ]
  %3867 = phi float [ %3992, %3985 ], [ %3770, %3857 ]
  %3868 = phi float [ %3993, %3985 ], [ %3771, %3857 ]
  %3869 = phi float [ %3994, %3985 ], [ %3803, %3857 ]
  %3870 = phi float [ %3995, %3985 ], [ %3804, %3857 ]
  %3871 = phi float [ %3996, %3985 ], [ %3805, %3857 ]
  %3872 = phi float [ %3997, %3985 ], [ %3774, %3857 ]
  %3873 = phi float [ %3998, %3985 ], [ %3773, %3857 ]
  %3874 = phi float [ %3999, %3985 ], [ 0.000000e+00, %3857 ]
  %3875 = phi float [ %4000, %3985 ], [ %3772, %3857 ]
  %3876 = phi float [ %4001, %3985 ], [ %3766, %3857 ]
  %3877 = phi float [ %4002, %3985 ], [ %3767, %3857 ]
  %3878 = phi float [ %4003, %3985 ], [ %3768, %3857 ]
  %3879 = add nuw nsw i32 %3860, %3855
  %3880 = shl i32 %3879, 2
  %3881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.i32 %3881, 0
  %3883 = shl i32 %3882, 8
  %3884 = or i32 %3883, 48
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.ResRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.ResRet.f32 %3885, 3
  %3890 = or i32 %3883, 64
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = extractvalue %dx.types.ResRet.i32 %3891, 1
  %3894 = or i32 %3883, 80
  %3895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3898 = or i32 %3883, 96
  %3899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3903 = extractvalue %dx.types.ResRet.f32 %3899, 3
  %3904 = or i32 %3883, 112
  %3905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3904, i32 undef)  ; BufferLoad(srv,index,wot)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 2
  %3907 = or i32 %3883, 128
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %3913 = or i32 %3883, 144
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.ResRet.f32 %3914, 3
  %3919 = or i32 %3883, 160
  %3920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = extractvalue %dx.types.ResRet.f32 %3920, 3
  %3925 = or i32 %3883, 192
  %3926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.i32 %3926, 0
  %3928 = or i32 %3883, 208
  %3929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = or i32 %3883, 248
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %3935 = add nuw nsw i32 %3860, 1
  %3936 = bitcast float %3889 to i32
  %3937 = and i32 %3936, 512
  %3938 = icmp eq i32 %3937, 0
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.ResRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.ResRet.f32 %3939, 2
  %3943 = extractvalue %dx.types.ResRet.f32 %3939, 3
  %3944 = call float @dx.op.dot4.f32(i32 56, float %3940, float %3941, float %3942, float %3943, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3945 = or i32 %3883, 16
  %3946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.ResRet.f32 %3946, 1
  %3949 = extractvalue %dx.types.ResRet.f32 %3946, 2
  %3950 = extractvalue %dx.types.ResRet.f32 %3946, 3
  %3951 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3952 = or i32 %3883, 32
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = call float @dx.op.dot4.f32(i32 56, float %3954, float %3955, float %3956, float %3957, float %130, float %131, float %132, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3959 = call float @dx.op.unary.f32(i32 27, float %3944)  ; Round_ni(value)
  %3960 = call float @dx.op.unary.f32(i32 6, float %3959)  ; FAbs(value)
  %3961 = call float @dx.op.unary.f32(i32 27, float %3951)  ; Round_ni(value)
  %3962 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3963 = call float @dx.op.unary.f32(i32 6, float %3958)  ; FAbs(value)
  %3964 = call float @dx.op.unary.f32(i32 27, float %3963)  ; Round_ni(value)
  %3965 = fadd fast float %3962, %3960
  %3966 = fadd fast float %3965, %3964
  %3967 = fcmp fast oeq float %3966, 0.000000e+00
  %3968 = call float @dx.op.dot4.f32(i32 56, float %3940, float %3941, float %3942, float %3943, float %3812, float %3813, float %3814, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3969 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %3812, float %3813, float %3814, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3970 = call float @dx.op.dot4.f32(i32 56, float %3940, float %3941, float %3942, float %3943, float %3815, float %3816, float %3817, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3971 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %3815, float %3816, float %3817, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3972 = fsub fast float %3968, %3944
  %3973 = fsub fast float %3970, %3944
  %3974 = fsub fast float %3969, %3951
  %3975 = fsub fast float %3971, %3951
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3888, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %3979 = fadd fast float %3978, %3976
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3982 = fcmp fast ogt float %3980, %3981
  %3983 = and i1 %3967, %3982
  %3984 = and i1 %3938, %3983
  br i1 %3984, label %4005, label %3985

; <label>:3985                                    ; preds = %4268, %4086, %4005, %3859
  %3986 = phi float [ %3861, %4005 ], [ %4089, %4086 ], [ %4089, %4268 ], [ %3861, %3859 ]
  %3987 = phi float [ %3862, %4005 ], [ %3862, %4086 ], [ %4243, %4268 ], [ %3862, %3859 ]
  %3988 = phi float [ %3863, %4005 ], [ %3863, %4086 ], [ %4241, %4268 ], [ %3863, %3859 ]
  %3989 = phi float [ %3864, %4005 ], [ %3864, %4086 ], [ %4213, %4268 ], [ %3864, %3859 ]
  %3990 = phi float [ %3865, %4005 ], [ %3865, %4086 ], [ %4211, %4268 ], [ %3865, %3859 ]
  %3991 = phi float [ %3866, %4005 ], [ %3866, %4086 ], [ %4278, %4268 ], [ %3866, %3859 ]
  %3992 = phi float [ %3867, %4005 ], [ %3867, %4086 ], [ %4279, %4268 ], [ %3867, %3859 ]
  %3993 = phi float [ %3868, %4005 ], [ %3868, %4086 ], [ %4280, %4268 ], [ %3868, %3859 ]
  %3994 = phi float [ %3869, %4005 ], [ %3869, %4086 ], [ %4192, %4268 ], [ %3869, %3859 ]
  %3995 = phi float [ %3870, %4005 ], [ %3870, %4086 ], [ %4193, %4268 ], [ %3870, %3859 ]
  %3996 = phi float [ %3871, %4005 ], [ %3871, %4086 ], [ %4194, %4268 ], [ %3871, %3859 ]
  %3997 = phi float [ %3872, %4005 ], [ %3872, %4086 ], [ %4221, %4268 ], [ %3872, %3859 ]
  %3998 = phi float [ %3873, %4005 ], [ %3873, %4086 ], [ %4218, %4268 ], [ %3873, %3859 ]
  %3999 = phi float [ %3874, %4005 ], [ %3874, %4086 ], [ %4215, %4268 ], [ %3874, %3859 ]
  %4000 = phi float [ %3875, %4005 ], [ %3875, %4086 ], [ %4209, %4268 ], [ %3875, %3859 ]
  %4001 = phi float [ %3876, %4005 ], [ %3876, %4086 ], [ %4204, %4268 ], [ %3876, %3859 ]
  %4002 = phi float [ %3877, %4005 ], [ %3877, %4086 ], [ %4205, %4268 ], [ %3877, %3859 ]
  %4003 = phi float [ %3878, %4005 ], [ %3878, %4086 ], [ %4206, %4268 ], [ %3878, %3859 ]
  %4004 = icmp eq i32 %3935, %3858
  br i1 %4004, label %4281, label %3859

; <label>:4005                                    ; preds = %3859
  %4006 = extractvalue %dx.types.ResRet.f32 %3905, 3
  %4007 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %4009 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %4010 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %4011 = extractvalue %dx.types.ResRet.i32 %3891, 3
  %4012 = extractvalue %dx.types.ResRet.i32 %3891, 2
  %4013 = add i32 %4011, 0
  %4014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4013, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4016 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4014, %dx.types.Handle %4015, float %3944, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3972, float %3974, float undef, float %3973, float %3975, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4018 = fmul fast float %4017, %4010
  %4019 = fadd fast float %4018, %4009
  %4020 = call float @dx.op.unary.f32(i32 7, float %4019)  ; Saturate(value)
  %4021 = fmul fast float %3944, %3900
  %4022 = call float @dx.op.tertiary.f32(i32 46, float %3901, float %3951, float %4021)  ; FMad(a,b,c)
  %4023 = fadd fast float %4022, %4008
  %4024 = fmul fast float %3944, %3902
  %4025 = call float @dx.op.tertiary.f32(i32 46, float %3903, float %3951, float %4024)  ; FMad(a,b,c)
  %4026 = fadd fast float %4025, %4007
  %4027 = fmul fast float %3972, %3900
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %3901, float %3974, float %4027)  ; FMad(a,b,c)
  %4029 = fmul fast float %3972, %3902
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %3903, float %3974, float %4029)  ; FMad(a,b,c)
  %4031 = fmul fast float %3973, %3900
  %4032 = call float @dx.op.tertiary.f32(i32 46, float %3901, float %3975, float %4031)  ; FMad(a,b,c)
  %4033 = fmul fast float %3973, %3902
  %4034 = call float @dx.op.tertiary.f32(i32 46, float %3903, float %3975, float %4033)  ; FMad(a,b,c)
  %4035 = add i32 %4012, 0
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4035, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4036, %dx.types.Handle %4015, float %4023, float %4026, float undef, float undef, i32 0, i32 0, i32 undef, float %4028, float %4030, float undef, float %4032, float %4034, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = and i32 %3936, 1024
  %4040 = icmp ne i32 %4039, 0
  %4041 = fcmp fast ogt float %4038, 0x3FE0101020000000
  %4042 = uitofp i1 %4041 to float
  %4043 = select i1 %4040, float %4042, float %4038
  %4044 = and i32 %3936, 8192
  %4045 = icmp ne i32 %4044, 0
  %4046 = select i1 %4045, float %4006, float 1.000000e+00
  %4047 = fmul fast float %3944, 2.000000e+00
  %4048 = fadd fast float %4047, -1.000000e+00
  %4049 = call float @dx.op.unary.f32(i32 6, float %4048)  ; FAbs(value)
  %4050 = fmul fast float %4049, %3933
  %4051 = fsub fast float %4050, %3933
  %4052 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4053 = fmul fast float %3951, 2.000000e+00
  %4054 = fadd fast float %4053, -1.000000e+00
  %4055 = call float @dx.op.unary.f32(i32 6, float %4054)  ; FAbs(value)
  %4056 = fmul fast float %4055, %3934
  %4057 = fsub fast float %4056, %3934
  %4058 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4059 = fmul fast float %3963, %3896
  %4060 = fsub fast float %4059, %3896
  %4061 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4062 = fmul fast float %4020, %4046
  %4063 = fmul fast float %4062, %4017
  %4064 = fmul fast float %4063, %4052
  %4065 = fmul fast float %4064, %4043
  %4066 = fmul fast float %4065, %4058
  %4067 = fmul fast float %4066, %4061
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4071 = fsub fast float %3980, %4070
  %4072 = fmul fast float %4071, %4069
  %4073 = call float @dx.op.unary.f32(i32 7, float %4072)  ; Saturate(value)
  %4074 = fmul fast float %4067, %3897
  %4075 = fadd fast float %4067, %3897
  %4076 = fmul fast float %4075, %3906
  %4077 = fsub fast float %4076, %3906
  %4078 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4079 = and i32 %3936, 128
  %4080 = icmp ne i32 %4079, 0
  %4081 = select i1 %4080, float %4078, float %4074
  %4082 = fmul fast float %4081, %4073
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = fcmp fast ugt float %4082, %4084
  br i1 %4085, label %4086, label %3985

; <label>:4086                                    ; preds = %4005
  %4087 = select i1 %4045, float %4082, float 0.000000e+00
  %4088 = fadd fast float %4087, %3861
  %4089 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  br i1 %4045, label %3985, label %4090

; <label>:4090                                    ; preds = %4086
  %4091 = and i32 %3936, 4
  %4092 = and i32 %3936, 8
  %4093 = add i32 %3892, 0
  %4094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4093, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4096 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4094, %dx.types.Handle %4095, float %4023, float %4026, float undef, float undef, i32 0, i32 0, i32 undef, float %4028, float %4030, float undef, float %4032, float %4034, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = extractvalue %dx.types.ResRet.f32 %4096, 1
  %4099 = extractvalue %dx.types.ResRet.f32 %4096, 2
  %4100 = extractvalue %dx.types.ResRet.f32 %4096, 3
  %4101 = bitcast float %3918 to i32
  %4102 = and i32 %4101, 255
  %4103 = uitofp i32 %4102 to float
  %4104 = lshr i32 %4101, 8
  %4105 = and i32 %4104, 255
  %4106 = uitofp i32 %4105 to float
  %4107 = fmul fast float %4100, %4103
  %4108 = fadd fast float %4107, %4106
  %4109 = fmul fast float %4108, 0x3F70101000000000
  %4110 = add i32 %3893, 0
  %4111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4110, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4111, %dx.types.Handle %4095, float %4023, float %4026, float undef, float undef, i32 0, i32 0, i32 undef, float %4028, float %4030, float undef, float %4032, float %4034, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4115 = extractvalue %dx.types.ResRet.f32 %4112, 2
  %4116 = extractvalue %dx.types.ResRet.f32 %4112, 3
  %4117 = bitcast float %3912 to i32
  %4118 = and i32 %4117, 255
  %4119 = uitofp i32 %4118 to float
  %4120 = lshr i32 %4117, 8
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = lshr i32 %4117, 16
  %4124 = and i32 %4123, 255
  %4125 = uitofp i32 %4124 to float
  %4126 = fmul fast float %4125, 0x3F70101000000000
  %4127 = fmul fast float %4113, %4119
  %4128 = fadd fast float %4127, %4122
  %4129 = fmul fast float %4128, 0x3F70101000000000
  %4130 = fadd fast float %4114, -5.000000e-01
  %4131 = fadd fast float %4116, -5.000000e-01
  %4132 = fmul fast float %4130, %4126
  %4133 = fmul fast float %4131, %4126
  %4134 = fadd fast float %4132, 5.000000e-01
  %4135 = fadd fast float %4133, 5.000000e-01
  %4136 = fmul fast float %4097, %3921
  %4137 = fmul fast float %4098, %3922
  %4138 = fmul fast float %4099, %3923
  %4139 = fmul fast float %4134, 2.000000e+00
  %4140 = fadd fast float %4139, -1.000000e+00
  %4141 = fmul fast float %4135, 2.000000e+00
  %4142 = fadd fast float %4141, -1.000000e+00
  %4143 = fadd fast float %4140, %4142
  %4144 = fmul fast float %4143, 5.000000e-01
  %4145 = fsub fast float %4140, %4142
  %4146 = fmul fast float %4145, 5.000000e-01
  %4147 = call float @dx.op.unary.f32(i32 6, float %4144)  ; FAbs(value)
  %4148 = fsub fast float 1.000000e+00, %4147
  %4149 = call float @dx.op.unary.f32(i32 6, float %4146)  ; FAbs(value)
  %4150 = fsub fast float %4148, %4149
  %4151 = call float @dx.op.dot3.f32(i32 55, float %4144, float %4146, float %4150, float %4144, float %4146, float %4150)  ; Dot3(ax,ay,az,bx,by,bz)
  %4152 = call float @dx.op.unary.f32(i32 25, float %4151)  ; Rsqrt(value)
  %4153 = fmul fast float %4144, %4152
  %4154 = fmul fast float %4146, %4152
  %4155 = fmul fast float %4152, %4150
  %4156 = fmul fast float %4155, %3886
  %4157 = fmul fast float %4155, %3887
  %4158 = fmul fast float %4155, %3888
  %4159 = fmul fast float %4153, %3909
  %4160 = fmul fast float %4153, %3910
  %4161 = fmul fast float %4153, %3911
  %4162 = fadd fast float %4159, %4156
  %4163 = fadd fast float %4160, %4157
  %4164 = fadd fast float %4161, %4158
  %4165 = fmul fast float %4154, %3915
  %4166 = fmul fast float %4154, %3916
  %4167 = fmul fast float %4154, %3917
  %4168 = fadd fast float %4162, %4165
  %4169 = fadd fast float %4163, %4166
  %4170 = fadd fast float %4164, %4167
  %4171 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %4168, float %4169, float %4170)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call float @dx.op.unary.f32(i32 25, float %4171)  ; Rsqrt(value)
  %4173 = fmul fast float %4168, %4172
  %4174 = fmul fast float %4169, %4172
  %4175 = fmul fast float %4170, %4172
  %4176 = icmp ne i32 %4092, 0
  %4177 = select i1 %4176, float 1.000000e+00, float 0.000000e+00
  %4178 = fmul fast float %4082, %4177
  %4179 = and i32 %3936, 1
  %4180 = icmp eq i32 %4179, 0
  br i1 %4180, label %4181, label %4185

; <label>:4181                                    ; preds = %4090
  %4182 = fsub fast float %4173, %3869
  %4183 = fsub fast float %4174, %3870
  %4184 = fsub fast float %4175, %3871
  br label %4185

; <label>:4185                                    ; preds = %4181, %4090
  %4186 = phi float [ %4182, %4181 ], [ %4173, %4090 ]
  %4187 = phi float [ %4183, %4181 ], [ %4174, %4090 ]
  %4188 = phi float [ %4184, %4181 ], [ %4175, %4090 ]
  %4189 = fmul float %4188, %4178
  %4190 = fmul float %4187, %4178
  %4191 = fmul float %4186, %4178
  %4192 = fadd fast float %4191, %3869
  %4193 = fadd fast float %4190, %3870
  %4194 = fadd fast float %4189, %3871
  %4195 = icmp ne i32 %4091, 0
  %4196 = select i1 %4195, float 1.000000e+00, float 0.000000e+00
  %4197 = fmul fast float %4082, %4196
  %4198 = fsub fast float %4136, %3876
  %4199 = fsub fast float %4137, %3877
  %4200 = fsub fast float %4138, %3878
  %4201 = fmul fast float %4198, %4197
  %4202 = fmul fast float %4199, %4197
  %4203 = fmul fast float %4200, %4197
  %4204 = fadd fast float %4201, %3876
  %4205 = fadd fast float %4202, %3877
  %4206 = fadd fast float %4203, %3878
  %4207 = fsub fast float %4109, %3875
  %4208 = fmul fast float %4207, %4197
  %4209 = fadd fast float %4208, %3875
  %4210 = fmul fast float %4197, %3865
  %4211 = fsub fast float %3865, %4210
  %4212 = fmul fast float %4197, %3864
  %4213 = fsub fast float %3864, %4212
  %4214 = fadd fast float %4082, %3874
  %4215 = call float @dx.op.unary.f32(i32 7, float %4214)  ; Saturate(value)
  %4216 = fsub fast float %4129, %3873
  %4217 = fmul fast float %4216, %4178
  %4218 = fadd fast float %4217, %3873
  %4219 = fsub fast float %4115, %3872
  %4220 = fmul fast float %4219, %4178
  %4221 = fadd fast float %4220, %3872
  %4222 = call float @dx.op.dot3.f32(i32 55, float %4136, float %4137, float %4138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 0
  %4225 = extractvalue %dx.types.CBufRet.f32 %4223, 1
  %4226 = fmul fast float %4225, %4222
  %4227 = fadd fast float %4226, %4224
  %4228 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4229 = bitcast float %3924 to i32
  %4230 = and i32 %4229, 65535
  %4231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4230)  ; LegacyF16ToF32(value)
  %4232 = lshr i32 %4229, 16
  %4233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4232)  ; LegacyF16ToF32(value)
  %4234 = fcmp fast oge float %4231, 0.000000e+00
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 0
  %4237 = select i1 %4234, float %4231, float %4236
  %4238 = fadd fast float %4237, %4233
  %4239 = fsub fast float %4228, %3863
  %4240 = fmul fast float %4239, %4082
  %4241 = fadd fast float %4240, %3863
  %4242 = fmul fast float %4238, %4082
  %4243 = call float @dx.op.binary.f32(i32 35, float %3862, float %4242)  ; FMax(a,b)
  %4244 = and i32 %3936, 16
  %4245 = icmp eq i32 %4244, 0
  br i1 %4245, label %4268, label %4246

; <label>:4246                                    ; preds = %4185
  %4247 = bitcast float %3930 to i32
  %4248 = add i32 %3927, 0
  %4249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4250 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4249, %dx.types.Handle %4095, float %4023, float %4026, float undef, float undef, i32 0, i32 0, i32 undef, float %4028, float %4030, float undef, float %4032, float %4034, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = and i32 %4247, 65535
  %4255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4254)  ; LegacyF16ToF32(value)
  %4256 = fmul fast float %4251, %3921
  %4257 = fmul fast float %4252, %3922
  %4258 = fmul fast float %4253, %3923
  %4259 = and i32 %3936, 16384
  %4260 = icmp ne i32 %4259, 0
  %4261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.f32 %4261, 0
  %4263 = select i1 %4260, float %4262, float 1.000000e+00
  %4264 = fmul fast float %4263, %4255
  %4265 = fmul fast float %4256, %4264
  %4266 = fmul fast float %4257, %4264
  %4267 = fmul fast float %4258, %4264
  br label %4268

; <label>:4268                                    ; preds = %4246, %4185
  %4269 = phi float [ %4265, %4246 ], [ 0.000000e+00, %4185 ]
  %4270 = phi float [ %4266, %4246 ], [ 0.000000e+00, %4185 ]
  %4271 = phi float [ %4267, %4246 ], [ 0.000000e+00, %4185 ]
  %4272 = fsub fast float %4269, %3866
  %4273 = fsub fast float %4270, %3867
  %4274 = fsub fast float %4271, %3868
  %4275 = fmul fast float %4272, %4082
  %4276 = fmul fast float %4273, %4082
  %4277 = fmul fast float %4274, %4082
  %4278 = fadd fast float %4275, %3866
  %4279 = fadd fast float %4276, %3867
  %4280 = fadd fast float %4277, %3868
  br label %3985

; <label>:4281                                    ; preds = %3985
  br label %4282

; <label>:4282                                    ; preds = %4281, %3763
  %4283 = phi float [ 0.000000e+00, %3763 ], [ %3986, %4281 ]
  %4284 = phi float [ %3777, %3763 ], [ %3987, %4281 ]
  %4285 = phi float [ %3775, %3763 ], [ %3988, %4281 ]
  %4286 = phi float [ 0.000000e+00, %3763 ], [ %3989, %4281 ]
  %4287 = phi float [ 0.000000e+00, %3763 ], [ %3990, %4281 ]
  %4288 = phi float [ %3769, %3763 ], [ %3991, %4281 ]
  %4289 = phi float [ %3770, %3763 ], [ %3992, %4281 ]
  %4290 = phi float [ %3771, %3763 ], [ %3993, %4281 ]
  %4291 = phi float [ %3803, %3763 ], [ %3994, %4281 ]
  %4292 = phi float [ %3804, %3763 ], [ %3995, %4281 ]
  %4293 = phi float [ %3805, %3763 ], [ %3996, %4281 ]
  %4294 = phi float [ %3774, %3763 ], [ %3997, %4281 ]
  %4295 = phi float [ %3773, %3763 ], [ %3998, %4281 ]
  %4296 = phi float [ 0.000000e+00, %3763 ], [ %3999, %4281 ]
  %4297 = phi float [ %3772, %3763 ], [ %4000, %4281 ]
  %4298 = phi float [ %3766, %3763 ], [ %4001, %4281 ]
  %4299 = phi float [ %3767, %3763 ], [ %4002, %4281 ]
  %4300 = phi float [ %3768, %3763 ], [ %4003, %4281 ]
  %4301 = call float @dx.op.dot3.f32(i32 55, float %4291, float %4292, float %4293, float %4291, float %4292, float %4293)  ; Dot3(ax,ay,az,bx,by,bz)
  %4302 = call float @dx.op.unary.f32(i32 25, float %4301)  ; Rsqrt(value)
  %4303 = fmul fast float %4302, %4291
  %4304 = fmul fast float %4302, %4292
  %4305 = fmul fast float %4302, %4293
  %4306 = fadd fast float %4296, %877
  %4307 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4308 = call float @dx.op.dot3.f32(i32 55, float %4303, float %4304, float %4305, float %4303, float %4304, float %4305)  ; Dot3(ax,ay,az,bx,by,bz)
  %4309 = call float @dx.op.unary.f32(i32 25, float %4308)  ; Rsqrt(value)
  %4310 = fmul fast float %4309, %4303
  %4311 = fmul fast float %4309, %4304
  %4312 = fmul fast float %4309, %4305
  %4313 = fadd fast float %4297, 0xBFB99999A0000000
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4314, 0x3FF1C71C80000000
  %4316 = call float @dx.op.binary.f32(i32 36, float %4297, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4317 = fsub fast float 1.000000e+00, %4315
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = fmul fast float %4318, %4298
  %4320 = fmul fast float %4318, %4299
  %4321 = fmul fast float %4318, %4300
  %4322 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = fmul fast float %4315, %4298
  %4326 = fmul fast float %4315, %4299
  %4327 = fmul fast float %4315, %4300
  %4328 = fadd fast float %4325, %4316
  %4329 = fadd fast float %4326, %4316
  %4330 = fadd fast float %4327, %4316
  %4331 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.i32 %4335, 3
  %4337 = and i32 %4336, 8
  %4338 = icmp ne i32 %4337, 0
  %4339 = call float @dx.op.binary.f32(i32 35, float %4322, float %4298)  ; FMax(a,b)
  %4340 = call float @dx.op.binary.f32(i32 35, float %4323, float %4298)  ; FMax(a,b)
  %4341 = call float @dx.op.binary.f32(i32 35, float %4324, float %4298)  ; FMax(a,b)
  %4342 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4323, float %4324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4343 = select i1 %172, float %4298, float %4322
  %4344 = select i1 %172, float %4342, float %4323
  %4345 = select i1 %172, float 1.000000e+00, float %4324
  %4346 = select i1 %4338, float %4339, float %4343
  %4347 = select i1 %4338, float %4340, float %4344
  %4348 = select i1 %4338, float %4341, float %4345
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.CBufRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4353 = fadd fast float %4350, %130
  %4354 = fadd fast float %4351, %131
  %4355 = fadd fast float %4352, %132
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = extractvalue %dx.types.CBufRet.f32 %4356, 1
  %4359 = fsub fast float %4353, %4357
  %4360 = fsub fast float %4354, %4358
  %4361 = fmul fast float %4359, %4359
  %4362 = fmul fast float %4360, %4360
  %4363 = fadd fast float %4361, %4362
  %4364 = call float @dx.op.unary.f32(i32 24, float %4363)  ; Sqrt(value)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4356, 2
  %4366 = fcmp fast olt float %4364, %4365
  br i1 %4366, label %4367, label %4434

; <label>:4367                                    ; preds = %4282
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 0
  %4372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4373 = extractvalue %dx.types.CBufRet.f32 %4372, 0
  %4374 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4375 = extractvalue %dx.types.CBufRet.f32 %4370, 1
  %4376 = extractvalue %dx.types.CBufRet.f32 %4372, 1
  %4377 = extractvalue %dx.types.CBufRet.f32 %4368, 3
  %4378 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4379 = extractvalue %dx.types.CBufRet.f32 %4372, 3
  %4380 = fadd fast float %4377, %4353
  %4381 = fadd fast float %4378, %4354
  %4382 = fadd fast float %4379, %4355
  %4383 = fmul fast float %4380, %4369
  %4384 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4371, float %4383)  ; FMad(a,b,c)
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4373, float %4384)  ; FMad(a,b,c)
  %4386 = fmul fast float %4380, %4374
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %4381, float %4375, float %4386)  ; FMad(a,b,c)
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4376, float %4387)  ; FMad(a,b,c)
  %4389 = fsub fast float %4385, %4377
  %4390 = fsub fast float %4388, %4378
  %4391 = fsub fast float %4389, %4357
  %4392 = fadd fast float %4391, %4365
  %4393 = fsub fast float %4390, %4358
  %4394 = fadd fast float %4393, %4365
  %4395 = extractvalue %dx.types.CBufRet.f32 %4356, 3
  %4396 = fmul fast float %4392, %4395
  %4397 = fmul fast float %4394, %4395
  %4398 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4399 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4400 = fsub fast float 1.000000e+00, %4398
  %4401 = fsub fast float 1.000000e+00, %4399
  %4402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4400, float %4401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4403 = extractvalue %dx.types.ResRet.f32 %4402, 0
  %4404 = fcmp fast ugt float %4403, 0.000000e+00
  br i1 %4404, label %4405, label %4708

; <label>:4405                                    ; preds = %4367
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 2
  %4408 = fmul fast float %4407, %4403
  %4409 = extractvalue %dx.types.CBufRet.f32 %4406, 3
  %4410 = fadd fast float %4409, %4408
  %4411 = extractvalue %dx.types.CBufRet.f32 %4372, 2
  %4412 = fadd fast float %4410, %4379
  %4413 = fmul fast float %4385, %4373
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4388, float %4376, float %4413)  ; FMad(a,b,c)
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4412, float %4411, float %4414)  ; FMad(a,b,c)
  %4416 = fsub fast float %4415, %4379
  %4417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4417, 2
  %4419 = fsub fast float %4416, %4418
  %4420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4400, float %4401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = extractvalue %dx.types.ResRet.f32 %4420, 1
  %4423 = extractvalue %dx.types.ResRet.f32 %4420, 2
  %4424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4400, float %4401, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.ResRet.f32 %4424, 2
  %4428 = fadd fast float %4425, %4421
  %4429 = fmul fast float %4428, 0x3F847AE140000000
  %4430 = fadd fast float %4426, %4422
  %4431 = fmul fast float %4430, 0x3F847AE140000000
  %4432 = fadd fast float %4427, %4423
  %4433 = fmul fast float %4432, 0x3F847AE140000000
  br label %4708

; <label>:4434                                    ; preds = %4282
  %4435 = and i32 %148, 1
  %4436 = icmp eq i32 %4435, 0
  br i1 %4436, label %4708, label %4437

; <label>:4437                                    ; preds = %4434
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4445 = extractvalue %dx.types.CBufRet.f32 %4440, 1
  %4446 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4447 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4448 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4449 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4450 = fadd fast float %4447, %4353
  %4451 = fadd fast float %4448, %4354
  %4452 = fadd fast float %4449, %4355
  %4453 = fmul fast float %4450, %4439
  %4454 = call float @dx.op.tertiary.f32(i32 46, float %4451, float %4441, float %4453)  ; FMad(a,b,c)
  %4455 = call float @dx.op.tertiary.f32(i32 46, float %4452, float %4443, float %4454)  ; FMad(a,b,c)
  %4456 = fmul fast float %4450, %4444
  %4457 = call float @dx.op.tertiary.f32(i32 46, float %4451, float %4445, float %4456)  ; FMad(a,b,c)
  %4458 = call float @dx.op.tertiary.f32(i32 46, float %4452, float %4446, float %4457)  ; FMad(a,b,c)
  %4459 = fsub fast float %4455, %4447
  %4460 = fsub fast float %4458, %4448
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4465 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.i32 %4468, 0
  %4470 = extractvalue %dx.types.CBufRet.i32 %4468, 1
  %4471 = udiv i32 %4470, %4469
  %4472 = fsub fast float %4459, %4462
  %4473 = fsub fast float %4460, %4463
  %4474 = call float @dx.op.binary.f32(i32 35, float %4472, float 0.000000e+00)  ; FMax(a,b)
  %4475 = call float @dx.op.binary.f32(i32 35, float %4473, float 0.000000e+00)  ; FMax(a,b)
  %4476 = call float @dx.op.binary.f32(i32 36, float %4474, float %4464)  ; FMin(a,b)
  %4477 = call float @dx.op.binary.f32(i32 36, float %4475, float %4465)  ; FMin(a,b)
  %4478 = add i32 %4469, -1
  %4479 = add i32 %4471, -1
  %4480 = fmul fast float %4476, %4467
  %4481 = fmul fast float %4477, %4467
  %4482 = fptoui float %4480 to i32
  %4483 = fptoui float %4481 to i32
  %4484 = call i32 @dx.op.binary.i32(i32 40, i32 %4482, i32 %4478)  ; UMin(a,b)
  %4485 = call i32 @dx.op.binary.i32(i32 40, i32 %4483, i32 %4479)  ; UMin(a,b)
  %4486 = mul i32 %4485, %4469
  %4487 = add i32 %4486, %4484
  %4488 = shl i32 %4487, 2
  %4489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.i32 %4489, 0
  %4491 = icmp eq i32 %4490, -1
  br i1 %4491, label %4708, label %4492

; <label>:4492                                    ; preds = %4437
  %4493 = mul i32 %4490, 148
  %4494 = add i32 %4493, 4
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = add i32 %4493, 8
  %4498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.f32 %4498, 0
  %4500 = add i32 %4493, 36
  %4501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4500, i32 undef)  ; BufferLoad(srv,index,wot)
  %4502 = extractvalue %dx.types.ResRet.f32 %4501, 0
  %4503 = add i32 %4493, 60
  %4504 = add i32 %4493, 92
  %4505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4504, i32 undef)  ; BufferLoad(srv,index,wot)
  %4506 = extractvalue %dx.types.ResRet.i32 %4505, 0
  %4507 = add i32 %4493, 116
  %4508 = fsub fast float %4459, %4496
  %4509 = fsub fast float %4460, %4499
  %4510 = fmul fast float %4467, %4508
  %4511 = fmul fast float %4467, %4509
  %4512 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4514 = fsub fast float 1.000000e+00, %4513
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 2
  %4517 = call float @dx.op.unary.f32(i32 83, float %4512)  ; DerivCoarseX(value)
  %4518 = call float @dx.op.unary.f32(i32 83, float %4514)  ; DerivCoarseX(value)
  %4519 = call float @dx.op.unary.f32(i32 84, float %4512)  ; DerivCoarseY(value)
  %4520 = call float @dx.op.unary.f32(i32 84, float %4514)  ; DerivCoarseY(value)
  %4521 = fmul fast float %4517, %4516
  %4522 = fmul fast float %4518, %4516
  %4523 = fmul fast float %4519, %4516
  %4524 = fmul fast float %4520, %4516
  %4525 = call float @dx.op.dot2.f32(i32 54, float %4523, float %4524, float %4523, float %4524)  ; Dot2(ax,ay,bx,by)
  %4526 = call float @dx.op.dot2.f32(i32 54, float %4521, float %4522, float %4521, float %4522)  ; Dot2(ax,ay,bx,by)
  %4527 = call float @dx.op.binary.f32(i32 35, float %4526, float %4525)  ; FMax(a,b)
  %4528 = call float @dx.op.unary.f32(i32 23, float %4527)  ; Log(value)
  %4529 = fmul fast float %4528, 5.000000e-01
  %4530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4531 = extractvalue %dx.types.CBufRet.f32 %4530, 1
  %4532 = fadd fast float %4531, %4529
  %4533 = call float @dx.op.binary.f32(i32 35, float %4532, float 0.000000e+00)  ; FMax(a,b)
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4536 = fadd fast float %4535, %4533
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 3
  %4539 = fadd fast float %4536, %4538
  %4540 = add i32 %4506, 0
  %4541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4540, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4542 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4541, i32 0)  ; GetDimensions(handle,mipLevel)
  %4543 = extractvalue %dx.types.Dimensions %4542, 0
  %4544 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4543)  ; FirstbitLo(value)
  %4545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.i32 %4545, 1
  %4547 = sub nsw i32 %4546, %4544
  %4548 = sitofp i32 %4547 to float
  %4549 = fsub fast float %4539, %4548
  %4550 = call float @dx.op.binary.f32(i32 35, float %4549, float 0.000000e+00)  ; FMax(a,b)
  %4551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4541, %dx.types.Handle %27, float %4512, float %4514, float %4502, float undef, i32 0, i32 0, i32 undef, float %4550)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = fcmp ule float %4552, 0x3FE0101020000000
  %4554 = extractvalue %dx.types.CBufRet.i32 %4545, 0
  %4555 = and i32 %4554, 128
  %4556 = icmp ne i32 %4555, 0
  %4557 = and i1 %4553, %4556
  br i1 %4557, label %4708, label %4558

; <label>:4558                                    ; preds = %4492
  %4559 = add i32 %4493, 20
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = add i32 %4493, 24
  %4563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4562, i32 undef)  ; BufferLoad(srv,index,wot)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = add i32 %4493, 40
  %4566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = add i32 %4493, 96
  %4569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4568, i32 undef)  ; BufferLoad(srv,index,wot)
  %4570 = extractvalue %dx.types.ResRet.i32 %4569, 0
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 2
  %4573 = fmul fast float %4572, %4512
  %4574 = fmul fast float %4572, %4514
  %4575 = extractvalue %dx.types.CBufRet.f32 %4571, 3
  %4576 = fadd fast float %4573, %4575
  %4577 = fadd fast float %4574, %4575
  %4578 = add i32 %4570, 0
  %4579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4578, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4580 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4579, i32 0)  ; GetDimensions(handle,mipLevel)
  %4581 = extractvalue %dx.types.Dimensions %4580, 0
  %4582 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4581)  ; FirstbitLo(value)
  %4583 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.i32 %4583, 1
  %4585 = sub nsw i32 %4584, %4582
  %4586 = sitofp i32 %4585 to float
  %4587 = fsub fast float %4536, %4586
  %4588 = call float @dx.op.binary.f32(i32 35, float %4587, float 0.000000e+00)  ; FMax(a,b)
  %4589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4579, %dx.types.Handle %27, float %4576, float %4577, float %4567, float undef, i32 0, i32 0, i32 undef, float %4588)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = fmul fast float %4590, %4561
  %4592 = fadd fast float %4591, %4564
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.CBufRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.CBufRet.f32 %4593, 2
  %4597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4598 = extractvalue %dx.types.CBufRet.f32 %4597, 3
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 3
  %4601 = extractvalue %dx.types.CBufRet.f32 %4593, 3
  %4602 = fadd fast float %4598, %4459
  %4603 = fadd fast float %4600, %4460
  %4604 = fadd fast float %4592, %4601
  %4605 = fmul fast float %4602, %4594
  %4606 = call float @dx.op.tertiary.f32(i32 46, float %4603, float %4595, float %4605)  ; FMad(a,b,c)
  %4607 = call float @dx.op.tertiary.f32(i32 46, float %4604, float %4596, float %4606)  ; FMad(a,b,c)
  %4608 = fsub fast float %4607, %4601
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 2
  %4611 = fsub fast float %4608, %4610
  %4612 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.i32 %4612, 0
  %4614 = call i32 @dx.op.binary.i32(i32 40, i32 %4490, i32 %4613)  ; UMin(a,b)
  %4615 = mul i32 %4614, 36
  %4616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.i32 %4616, 0
  %4618 = add i32 %4615, 4
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = fmul fast float %4620, %4512
  %4622 = fmul fast float %4620, %4514
  %4623 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4624 = fadd fast float %4621, %4623
  %4625 = fadd fast float %4622, %4623
  %4626 = icmp eq i32 %4617, 0
  br i1 %4626, label %4695, label %4627

; <label>:4627                                    ; preds = %4558
  br label %4628

; <label>:4628                                    ; preds = %4685, %4627
  %4629 = phi float [ %4686, %4685 ], [ 0.000000e+00, %4627 ]
  %4630 = phi float [ %4687, %4685 ], [ 0.000000e+00, %4627 ]
  %4631 = phi float [ %4688, %4685 ], [ 0.000000e+00, %4627 ]
  %4632 = phi float [ %4689, %4685 ], [ 0.000000e+00, %4627 ]
  %4633 = phi float [ %4690, %4685 ], [ 0.000000e+00, %4627 ]
  %4634 = phi float [ %4691, %4685 ], [ 0.000000e+00, %4627 ]
  %4635 = phi i32 [ %4692, %4685 ], [ 0, %4627 ]
  %4636 = shl i32 %4635, 2
  %4637 = add i32 %4503, %4636
  %4638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.f32 %4638, 0
  %4640 = add i32 %4507, %4636
  %4641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.i32 %4641, 0
  %4643 = add i32 %4642, 0
  %4644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4643, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4645 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4644, i32 0)  ; GetDimensions(handle,mipLevel)
  %4646 = extractvalue %dx.types.Dimensions %4645, 0
  %4647 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4646)  ; FirstbitLo(value)
  %4648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.i32 %4648, 1
  %4650 = sub nsw i32 %4649, %4647
  %4651 = sitofp i32 %4650 to float
  %4652 = fsub fast float %4536, %4651
  %4653 = call float @dx.op.binary.f32(i32 35, float %4652, float 0.000000e+00)  ; FMax(a,b)
  %4654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4644, %dx.types.Handle %27, float %4624, float %4625, float %4639, float undef, i32 0, i32 0, i32 undef, float %4653)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4656 = fcmp fast ogt float %4655, 0.000000e+00
  br i1 %4656, label %4657, label %4685

; <label>:4657                                    ; preds = %4628
  %4658 = add i32 %4618, %4636
  %4659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.i32 %4659, 0
  %4661 = and i32 %4660, 32767
  %4662 = mul nuw nsw i32 %4661, 928
  %4663 = add nuw nsw i32 %4662, 48
  %4664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4663, i32 undef)  ; BufferLoad(srv,index,wot)
  %4665 = extractvalue %dx.types.ResRet.f32 %4664, 0
  %4666 = extractvalue %dx.types.ResRet.f32 %4664, 1
  %4667 = extractvalue %dx.types.ResRet.f32 %4664, 2
  %4668 = add nuw nsw i32 %4662, 60
  %4669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.f32 %4669, 0
  %4671 = extractvalue %dx.types.ResRet.f32 %4669, 1
  %4672 = extractvalue %dx.types.ResRet.f32 %4669, 2
  %4673 = fmul fast float %4665, %4655
  %4674 = fmul fast float %4666, %4655
  %4675 = fmul fast float %4667, %4655
  %4676 = fadd fast float %4673, %4629
  %4677 = fadd fast float %4674, %4630
  %4678 = fadd fast float %4675, %4631
  %4679 = fmul fast float %4670, %4655
  %4680 = fmul fast float %4671, %4655
  %4681 = fmul fast float %4672, %4655
  %4682 = fadd fast float %4679, %4632
  %4683 = fadd fast float %4680, %4633
  %4684 = fadd fast float %4681, %4634
  br label %4685

; <label>:4685                                    ; preds = %4657, %4628
  %4686 = phi float [ %4676, %4657 ], [ %4629, %4628 ]
  %4687 = phi float [ %4677, %4657 ], [ %4630, %4628 ]
  %4688 = phi float [ %4678, %4657 ], [ %4631, %4628 ]
  %4689 = phi float [ %4682, %4657 ], [ %4632, %4628 ]
  %4690 = phi float [ %4683, %4657 ], [ %4633, %4628 ]
  %4691 = phi float [ %4684, %4657 ], [ %4634, %4628 ]
  %4692 = add nuw i32 %4635, 1
  %4693 = icmp eq i32 %4692, %4617
  br i1 %4693, label %4694, label %4628

; <label>:4694                                    ; preds = %4685
  br label %4695

; <label>:4695                                    ; preds = %4694, %4558
  %4696 = phi float [ 0.000000e+00, %4558 ], [ %4686, %4694 ]
  %4697 = phi float [ 0.000000e+00, %4558 ], [ %4687, %4694 ]
  %4698 = phi float [ 0.000000e+00, %4558 ], [ %4688, %4694 ]
  %4699 = phi float [ 0.000000e+00, %4558 ], [ %4689, %4694 ]
  %4700 = phi float [ 0.000000e+00, %4558 ], [ %4690, %4694 ]
  %4701 = phi float [ 0.000000e+00, %4558 ], [ %4691, %4694 ]
  %4702 = fadd fast float %4699, %4696
  %4703 = fmul fast float %4702, 0x3F847AE140000000
  %4704 = fadd fast float %4700, %4697
  %4705 = fmul fast float %4704, 0x3F847AE140000000
  %4706 = fadd fast float %4701, %4698
  %4707 = fmul fast float %4706, 0x3F847AE140000000
  br label %4708

; <label>:4708                                    ; preds = %4695, %4492, %4437, %4434, %4405, %4367
  %4709 = phi float [ %4419, %4405 ], [ -1.310720e+05, %4367 ], [ %4611, %4695 ], [ -1.310720e+05, %4437 ], [ -1.310720e+05, %4492 ], [ -1.310720e+05, %4434 ]
  %4710 = phi float [ %4429, %4405 ], [ 0.000000e+00, %4367 ], [ %4703, %4695 ], [ 0.000000e+00, %4437 ], [ 0.000000e+00, %4492 ], [ 0.000000e+00, %4434 ]
  %4711 = phi float [ %4431, %4405 ], [ 0.000000e+00, %4367 ], [ %4705, %4695 ], [ 0.000000e+00, %4437 ], [ 0.000000e+00, %4492 ], [ 0.000000e+00, %4434 ]
  %4712 = phi float [ %4433, %4405 ], [ 0.000000e+00, %4367 ], [ %4707, %4695 ], [ 0.000000e+00, %4437 ], [ 0.000000e+00, %4492 ], [ 0.000000e+00, %4434 ]
  %4713 = phi i1 [ true, %4405 ], [ false, %4367 ], [ true, %4695 ], [ false, %4437 ], [ false, %4492 ], [ false, %4434 ]
  %4714 = and i32 %148, 3
  %4715 = icmp eq i32 %4714, 1
  %4716 = select i1 %4715, float 1.000000e+00, float 0.000000e+00
  %4717 = fsub fast float %4709, %132
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = select i1 %4713, float %4718, float 1.000000e+00
  %4720 = fmul fast float %4719, %4716
  %4721 = icmp eq i32 %4714, 3
  %4722 = select i1 %4721, float 1.000000e+00, float %4720
  %4723 = call float @dx.op.binary.f32(i32 35, float %4283, float %4722)  ; FMax(a,b)
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fcmp fast une float %4724, 0.000000e+00
  %4726 = call float @dx.op.dot3.f32(i32 55, float %130, float %131, float %132, float %130, float %131, float %132)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = call float @dx.op.unary.f32(i32 25, float %4726)  ; Rsqrt(value)
  br i1 %4725, label %4735, label %4728

; <label>:4728                                    ; preds = %4708
  %4729 = fmul fast float %4727, %130
  %4730 = fmul fast float %4727, %131
  %4731 = fmul fast float %4727, %132
  %4732 = fsub fast float -0.000000e+00, %4729
  %4733 = fsub fast float -0.000000e+00, %4730
  %4734 = fsub fast float -0.000000e+00, %4731
  br label %4903

; <label>:4735                                    ; preds = %4708
  %4736 = fmul fast float %130, %4727
  %4737 = fsub fast float -0.000000e+00, %4736
  %4738 = fmul fast float %131, %4727
  %4739 = fsub fast float -0.000000e+00, %4738
  %4740 = fmul fast float %132, %4727
  %4741 = fsub fast float -0.000000e+00, %4740
  %4742 = call float @dx.op.dot3.f32(i32 55, float %4737, float %4739, float %4741, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = fmul fast float %4724, 2.500000e+00
  %4744 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4745 = fmul fast float %4724, 0x4013FFFFE0000000
  %4746 = fadd fast float %4745, 0xBFFFFFFFE0000000
  %4747 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4748 = fmul fast float %4724, 0x4004000020000000
  %4749 = fadd fast float %4748, 0xBFF8000040000000
  %4750 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4752 = fmul fast float %4313, 1.000000e+01
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = fmul fast float %4753, 2.000000e+00
  %4755 = fsub fast float 3.000000e+00, %4754
  %4756 = fmul fast float %4753, %4753
  %4757 = fmul fast float %4756, %4755
  %4758 = fsub fast float 1.000000e+00, %4757
  %4759 = fsub fast float 0x3FE3333340000000, %4334
  %4760 = fmul fast float %4759, 0x400AAAAAA0000000
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fmul fast float %4758, %4761
  %4763 = fmul fast float %4346, 0x3FEA2B8620000000
  %4764 = fmul fast float %4347, 0x3FEA2B8620000000
  %4765 = fmul fast float %4348, 0x3FEA2B8620000000
  %4766 = fadd fast float %4763, 0x3FC81DFBA0000000
  %4767 = fmul fast float %4766, %4346
  %4768 = fadd fast float %4767, 0x3F910E6020000000
  %4769 = fadd fast float %4764, 0x3FC81DFBA0000000
  %4770 = fmul fast float %4769, %4347
  %4771 = fadd fast float %4770, 0x3F910E6020000000
  %4772 = fadd fast float %4765, 0x3FC81DFBA0000000
  %4773 = fmul fast float %4772, %4348
  %4774 = fadd fast float %4773, 0x3F910E6020000000
  %4775 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4776 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4778 = fsub fast float %4775, %4346
  %4779 = fsub fast float %4776, %4347
  %4780 = fsub fast float %4777, %4348
  %4781 = fmul fast float %4778, %4751
  %4782 = fmul fast float %4781, %4762
  %4783 = fmul fast float %4779, %4751
  %4784 = fmul fast float %4783, %4762
  %4785 = fmul fast float %4780, %4751
  %4786 = fmul fast float %4785, %4762
  %4787 = fadd fast float %4782, %4346
  %4788 = fadd fast float %4784, %4347
  %4789 = fadd fast float %4786, %4348
  %4790 = fmul fast float %4294, %4294
  %4791 = fmul fast float %4790, %4790
  %4792 = fadd fast float %4747, 1.000000e+00
  %4793 = fsub fast float %4792, %4762
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = fsub fast float 1.000000e+00, %4791
  %4798 = call float @dx.op.binary.f32(i32 36, float %4794, float %4797)  ; FMin(a,b)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4800 = call float @dx.op.binary.f32(i32 35, float %4798, float %4799)  ; FMax(a,b)
  %4801 = fadd fast float %4796, 0xBFE4CCCCC0000000
  %4802 = fmul fast float %4801, 0x4006DB6DA0000000
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = fmul fast float %4803, 2.000000e+00
  %4805 = fsub fast float 3.000000e+00, %4804
  %4806 = bitcast float %4331 to i32
  %4807 = ashr i32 %4806, 1
  %4808 = add nsw i32 %4807, 532487669
  %4809 = bitcast i32 %4808 to float
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = bitcast float %4810 to i32
  %4812 = sub nsw i32 2129859010, %4811
  %4813 = bitcast i32 %4812 to float
  %4814 = fmul fast float %4813, 2.000000e+00
  %4815 = bitcast float %4332 to i32
  %4816 = ashr i32 %4815, 1
  %4817 = add nsw i32 %4816, 532487669
  %4818 = bitcast i32 %4817 to float
  %4819 = fsub fast float 1.000000e+00, %4818
  %4820 = bitcast float %4819 to i32
  %4821 = sub nsw i32 2129859010, %4820
  %4822 = bitcast i32 %4821 to float
  %4823 = fmul fast float %4822, 2.000000e+00
  %4824 = bitcast float %4333 to i32
  %4825 = ashr i32 %4824, 1
  %4826 = add nsw i32 %4825, 532487669
  %4827 = bitcast i32 %4826 to float
  %4828 = fsub fast float 1.000000e+00, %4827
  %4829 = bitcast float %4828 to i32
  %4830 = sub nsw i32 2129859010, %4829
  %4831 = bitcast i32 %4830 to float
  %4832 = fmul fast float %4831, 2.000000e+00
  %4833 = fsub fast float 0x4002A9FBE0000000, %4814
  %4834 = fadd fast float %4814, 0x3FD54FDF00000000
  %4835 = bitcast float %4834 to i32
  %4836 = sub nsw i32 2129859010, %4835
  %4837 = bitcast i32 %4836 to float
  %4838 = fmul fast float %4837, %4833
  %4839 = fmul fast float %4838, %4838
  %4840 = fsub fast float 0x4002A9FBE0000000, %4823
  %4841 = fadd fast float %4823, 0x3FD54FDF00000000
  %4842 = bitcast float %4841 to i32
  %4843 = sub nsw i32 2129859010, %4842
  %4844 = bitcast i32 %4843 to float
  %4845 = fmul fast float %4844, %4840
  %4846 = fmul fast float %4845, %4845
  %4847 = fsub fast float 0x4002A9FBE0000000, %4832
  %4848 = fadd fast float %4832, 0x3FD54FDF00000000
  %4849 = bitcast float %4848 to i32
  %4850 = sub nsw i32 2129859010, %4849
  %4851 = bitcast i32 %4850 to float
  %4852 = fmul fast float %4851, %4847
  %4853 = fmul fast float %4852, %4852
  %4854 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4839)  ; FMax(a,b)
  %4855 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4846)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4853)  ; FMax(a,b)
  %4857 = fsub fast float 1.000000e+00, %4742
  %4858 = fadd fast float %4857, %4758
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fsub fast float 1.000000e+00, %4722
  %4861 = fmul fast float %4800, %4860
  %4862 = fmul fast float %4803, %4803
  %4863 = fmul fast float %4862, %4861
  %4864 = fmul fast float %4863, %4805
  %4865 = fmul fast float %4860, 0xBFE99999A0000000
  %4866 = fmul fast float %4865, %4751
  %4867 = fmul fast float %4866, %4762
  %4868 = fadd fast float %4867, 1.000000e+00
  %4869 = fadd fast float %4334, -1.000000e+00
  %4870 = fmul fast float %4868, %4869
  %4871 = fadd fast float %4870, 1.000000e+00
  %4872 = fsub fast float %4854, %4331
  %4873 = fsub fast float %4855, %4332
  %4874 = fsub fast float %4856, %4333
  %4875 = fmul fast float %4864, %4872
  %4876 = fmul fast float %4864, %4873
  %4877 = fmul fast float %4864, %4874
  %4878 = fadd fast float %4875, %4331
  %4879 = fadd fast float %4876, %4332
  %4880 = fadd fast float %4877, %4333
  %4881 = fsub fast float %74, %4310
  %4882 = fsub fast float %75, %4311
  %4883 = fsub fast float %76, %4312
  %4884 = fmul fast float %4864, %4881
  %4885 = fmul fast float %4864, %4882
  %4886 = fmul fast float %4864, %4883
  %4887 = fadd fast float %4884, %4310
  %4888 = fadd fast float %4885, %4311
  %4889 = fadd fast float %4886, %4312
  %4890 = fmul fast float %4864, %4859
  %4891 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4892 = fsub fast float 1.000000e+00, %4891
  %4893 = fmul fast float %4890, %4892
  %4894 = fadd fast float %4893, %4891
  %4895 = fsub fast float 1.000000e+00, %4294
  %4896 = fmul fast float %4864, %4895
  %4897 = fadd fast float %4896, %4294
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4887, float %4888, float %4889, float %4887, float %4888, float %4889)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = call float @dx.op.unary.f32(i32 25, float %4898)  ; Rsqrt(value)
  %4900 = fmul fast float %4887, %4899
  %4901 = fmul fast float %4888, %4899
  %4902 = fmul fast float %4889, %4899
  br label %4903

; <label>:4903                                    ; preds = %4735, %4728
  %4904 = phi float [ %4734, %4728 ], [ %4741, %4735 ]
  %4905 = phi float [ %4733, %4728 ], [ %4739, %4735 ]
  %4906 = phi float [ %4732, %4728 ], [ %4737, %4735 ]
  %4907 = phi float [ %4731, %4728 ], [ %4740, %4735 ]
  %4908 = phi float [ %4730, %4728 ], [ %4738, %4735 ]
  %4909 = phi float [ %4729, %4728 ], [ %4736, %4735 ]
  %4910 = phi float [ %4346, %4728 ], [ %4787, %4735 ]
  %4911 = phi float [ %4347, %4728 ], [ %4788, %4735 ]
  %4912 = phi float [ %4348, %4728 ], [ %4789, %4735 ]
  %4913 = phi float [ %4331, %4728 ], [ %4878, %4735 ]
  %4914 = phi float [ %4332, %4728 ], [ %4879, %4735 ]
  %4915 = phi float [ %4333, %4728 ], [ %4880, %4735 ]
  %4916 = phi float [ %4310, %4728 ], [ %4900, %4735 ]
  %4917 = phi float [ %4311, %4728 ], [ %4901, %4735 ]
  %4918 = phi float [ %4312, %4728 ], [ %4902, %4735 ]
  %4919 = phi float [ %4334, %4728 ], [ %4894, %4735 ]
  %4920 = phi float [ %4294, %4728 ], [ %4897, %4735 ]
  %4921 = select i1 %172, float 0.000000e+00, float %4915
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %4906, float %4905, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4922)  ; Saturate(value)
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4908, float %4907, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = fmul fast float %4924, 2.000000e+00
  %4926 = fmul fast float %4925, %4916
  %4927 = fmul fast float %4925, %4917
  %4928 = fmul fast float %4925, %4918
  %4929 = fsub fast float %4909, %4926
  %4930 = fsub fast float %4908, %4927
  %4931 = fsub fast float %4907, %4928
  %4932 = call float @dx.op.binary.f32(i32 36, float %4920, float 1.000000e+00)  ; FMin(a,b)
  %4933 = fsub fast float 1.000000e+00, %4920
  %4934 = bitcast float %4933 to i32
  %4935 = sub nsw i32 2129859010, %4934
  %4936 = fsub fast float 1.000000e+00, %44
  %4937 = call float @dx.op.dot3.f32(i32 55, float %94, float %95, float %96, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call float @dx.op.binary.f32(i32 35, float %4937, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4939 = fdiv fast float %4936, %4938
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fmul fast float %4941, 5.000000e-01
  %4943 = fadd fast float %4942, 5.000000e-01
  %4944 = fmul fast float %4943, %44
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4947 = fmul fast float %4946, %4939
  %4948 = fadd fast float %4944, %4947
  %4949 = fsub fast float 5.000000e-01, %4942
  %4950 = fmul fast float %4949, %4910
  %4951 = fmul fast float %4949, %4911
  %4952 = fmul fast float %4949, %4912
  %4953 = fadd fast float %4948, %4950
  %4954 = fadd fast float %4948, %4951
  %4955 = fadd fast float %4948, %4952
  %4956 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = fmul fast float %4957, 5.000000e-01
  %4959 = fadd fast float %4958, 5.000000e-01
  %4960 = fmul fast float %4959, %44
  %4961 = call float @dx.op.dot3.f32(i32 55, float %4929, float %4930, float %4931, float %94, float %95, float %96)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4963 = fmul fast float %4962, %4939
  %4964 = fadd fast float %4960, %4963
  %4965 = fsub fast float 5.000000e-01, %4958
  %4966 = fmul fast float %4965, %4910
  %4967 = fmul fast float %4965, %4911
  %4968 = fmul fast float %4965, %4912
  %4969 = fadd fast float %4964, %4966
  %4970 = fadd fast float %4964, %4967
  %4971 = fadd fast float %4964, %4968
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = call float @dx.op.binary.f32(i32 36, float %4910, float %4973)  ; FMin(a,b)
  %4975 = fsub fast float 1.000000e+00, %4932
  %4976 = fmul fast float %4974, %4975
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = bitcast float %4977 to i32
  %4979 = sub nsw i32 2129859010, %4978
  %4980 = bitcast i32 %4979 to float
  %4981 = call float @dx.op.binary.f32(i32 36, float %4911, float %4973)  ; FMin(a,b)
  %4982 = fmul fast float %4981, %4975
  %4983 = fsub fast float 1.000000e+00, %4982
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = call float @dx.op.binary.f32(i32 36, float %4912, float %4973)  ; FMin(a,b)
  %4988 = fmul fast float %4987, %4975
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = fmul fast float %4932, %45
  %4994 = fmul fast float %4993, %4953
  %4995 = fmul fast float %4994, %4980
  %4996 = fmul fast float %4932, %46
  %4997 = fmul fast float %4996, %4954
  %4998 = fmul fast float %4997, %4986
  %4999 = fmul fast float %4932, %47
  %5000 = fmul fast float %4999, %4955
  %5001 = fmul fast float %5000, %4992
  %5002 = call float @dx.op.binary.f32(i32 36, float %4913, float %4973)  ; FMin(a,b)
  %5003 = fmul fast float %5002, %4975
  %5004 = fsub fast float 1.000000e+00, %5003
  %5005 = bitcast float %5004 to i32
  %5006 = sub nsw i32 2129859010, %5005
  %5007 = bitcast i32 %5006 to float
  %5008 = call float @dx.op.binary.f32(i32 36, float %4914, float %4973)  ; FMin(a,b)
  %5009 = fmul fast float %5008, %4975
  %5010 = fsub fast float 1.000000e+00, %5009
  %5011 = bitcast float %5010 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = call float @dx.op.binary.f32(i32 36, float %4921, float %4973)  ; FMin(a,b)
  %5015 = fmul fast float %5014, %4975
  %5016 = fsub fast float 1.000000e+00, %5015
  %5017 = bitcast float %5016 to i32
  %5018 = sub nsw i32 2129859010, %5017
  %5019 = bitcast i32 %5018 to float
  %5020 = fmul fast float %4993, %4969
  %5021 = fmul fast float %5020, %5007
  %5022 = fmul fast float %4996, %4970
  %5023 = fmul fast float %5022, %5013
  %5024 = fmul fast float %4999, %4971
  %5025 = fmul fast float %5024, %5019
  %5026 = call float @dx.op.dot3.f32(i32 55, float %4995, float %4998, float %5001, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = select i1 %172, float 0.000000e+00, float %4995
  %5028 = select i1 %172, float %5026, float %4998
  %5029 = select i1 %172, float 0.000000e+00, float %5001
  %5030 = call float @dx.op.dot3.f32(i32 55, float %5021, float %5023, float %5025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = select i1 %172, float 0.000000e+00, float %5021
  %5032 = select i1 %172, float %5030, float %5023
  %5033 = select i1 %172, float 0.000000e+00, float %5025
  %5034 = fmul fast float %4923, 9.843750e-01
  %5035 = fmul fast float %4919, 9.843750e-01
  %5036 = fadd fast float %5034, 7.812500e-03
  %5037 = fadd fast float %5035, 7.812500e-03
  %5038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5036, float %5037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5039 = extractvalue %dx.types.ResRet.f32 %5038, 2
  %5040 = extractvalue %dx.types.ResRet.f32 %5038, 3
  %5041 = fmul fast float %5039, %4913
  %5042 = fmul fast float %5039, %4914
  %5043 = fmul fast float %5039, %4921
  %5044 = fadd fast float %5041, %5040
  %5045 = fadd fast float %5042, %5040
  %5046 = fadd fast float %5043, %5040
  %5047 = fcmp fast ogt float %4287, 0.000000e+00
  br i1 %5047, label %5048, label %5074

; <label>:5048                                    ; preds = %4903
  %5049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4287, float %4923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.ResRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.ResRet.f32 %5049, 2
  %5053 = fadd fast float %5050, -5.000000e-01
  %5054 = fadd fast float %5051, -5.000000e-01
  %5055 = fadd fast float %5052, -5.000000e-01
  %5056 = fsub fast float 1.000000e+00, %4913
  %5057 = fsub fast float 1.000000e+00, %4914
  %5058 = fsub fast float 1.000000e+00, %4921
  %5059 = fmul fast float %4913, 4.000000e+00
  %5060 = fmul fast float %5059, %5056
  %5061 = fmul fast float %5060, %5053
  %5062 = fmul fast float %4914, 4.000000e+00
  %5063 = fmul fast float %5062, %5057
  %5064 = fmul fast float %5063, %5054
  %5065 = fmul fast float %4921, 4.000000e+00
  %5066 = fmul fast float %5065, %5058
  %5067 = fmul fast float %5066, %5055
  %5068 = fadd fast float %5061, %5044
  %5069 = fadd fast float %5064, %5045
  %5070 = fadd fast float %5067, %5046
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5072 = call float @dx.op.unary.f32(i32 7, float %5069)  ; Saturate(value)
  %5073 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  br label %5074

; <label>:5074                                    ; preds = %5048, %4903
  %5075 = phi float [ %5071, %5048 ], [ %5044, %4903 ]
  %5076 = phi float [ %5072, %5048 ], [ %5045, %4903 ]
  %5077 = phi float [ %5073, %5048 ], [ %5046, %4903 ]
  %5078 = call float @dx.op.binary.f32(i32 35, float %5076, float %5077)  ; FMax(a,b)
  %5079 = call float @dx.op.binary.f32(i32 35, float %5075, float %5078)  ; FMax(a,b)
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = fmul fast float %5080, %5027
  %5082 = fmul fast float %5080, %5028
  %5083 = fmul fast float %5080, %5029
  %5084 = call float @dx.op.dot3.f32(i32 55, float %4910, float %4911, float %4912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5085 = fcmp fast ogt float %5084, 0x3E7FF19E20000000
  %5086 = fdiv fast float 1.000000e+00, %5084
  %5087 = select i1 %5085, float %5086, float 0.000000e+00
  %5088 = fmul fast float %5087, %4910
  %5089 = fmul fast float %5087, %4911
  %5090 = fmul fast float %5087, %4912
  %5091 = fadd fast float %5088, -1.000000e+00
  %5092 = fadd fast float %5089, -1.000000e+00
  %5093 = fadd fast float %5090, -1.000000e+00
  %5094 = fmul fast float %5091, 5.000000e-01
  %5095 = fmul fast float %5092, 5.000000e-01
  %5096 = fmul fast float %5093, 5.000000e-01
  %5097 = fadd fast float %5094, 1.000000e+00
  %5098 = fadd fast float %5095, 1.000000e+00
  %5099 = fadd fast float %5096, 1.000000e+00
  %5100 = fmul fast float %5075, %5031
  %5101 = fmul fast float %5076, %5032
  %5102 = fmul fast float %5077, %5033
  %5103 = fsub fast float 1.000000e+00, %4923
  %5104 = bitcast float %5103 to i32
  %5105 = sitofp i32 %5104 to float
  %5106 = fmul fast float %5105, 5.000000e+00
  %5107 = fadd fast float %5106, 0xC1EFBF8940000000
  %5108 = fptosi float %5107 to i32
  %5109 = bitcast i32 %5108 to float
  %5110 = fmul fast float %5109, %4286
  %5111 = fmul fast float %5027, %5110
  %5112 = fmul fast float %5111, %5080
  %5113 = fmul fast float %5112, %5097
  %5114 = fmul fast float %5028, %5110
  %5115 = fmul fast float %5114, %5080
  %5116 = fmul fast float %5115, %5098
  %5117 = fmul fast float %5029, %5110
  %5118 = fmul fast float %5117, %5080
  %5119 = fmul fast float %5118, %5099
  %5120 = fmul fast float %5081, %4307
  %5121 = fmul fast float %5082, %4307
  %5122 = fmul fast float %5083, %4307
  %5123 = fadd fast float %5100, %4288
  %5124 = fadd fast float %5123, %5113
  %5125 = fmul fast float %5124, %4307
  %5126 = fadd fast float %5101, %4289
  %5127 = fadd fast float %5126, %5116
  %5128 = fmul fast float %5127, %4307
  %5129 = fadd fast float %5102, %4290
  %5130 = fadd fast float %5129, %5119
  %5131 = fmul fast float %5130, %4307
  %5132 = bitcast i32 %4935 to float
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 3
  %5135 = fcmp fast oeq float %5134, 0.000000e+00
  br i1 %5135, label %5363, label %5136

; <label>:5136                                    ; preds = %5074
  %5137 = extractvalue %dx.types.CBufRet.f32 %5133, 0
  %5138 = extractvalue %dx.types.CBufRet.f32 %5133, 1
  %5139 = extractvalue %dx.types.CBufRet.f32 %5133, 2
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.CBufRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5147 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5142, float %5143, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = select i1 %172, float %5145, float %5141
  %5149 = select i1 %172, float %5147, float %5142
  %5150 = select i1 %172, float %5146, float %5143
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5153 = fcmp fast une float %5152, 0.000000e+00
  br i1 %5153, label %5154, label %5171

; <label>:5154                                    ; preds = %5136
  %5155 = fptoui float %67 to i32
  %5156 = fptoui float %68 to i32
  %5157 = lshr i32 %5155, 4
  %5158 = lshr i32 %5156, 4
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = fptoui float %5160 to i32
  %5162 = add i32 %5161, 15
  %5163 = lshr i32 %5162, 4
  %5164 = mul i32 %5163, %5158
  %5165 = add i32 %5164, %5157
  %5166 = shl i32 %5165, 3
  %5167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5166, i32 undef)  ; BufferLoad(srv,index,wot)
  %5168 = extractvalue %dx.types.ResRet.i32 %5167, 0
  %5169 = and i32 %5168, -268435456
  %5170 = icmp eq i32 %5169, -1342177280
  br i1 %5170, label %5181, label %5171

; <label>:5171                                    ; preds = %5154, %5136
  %5172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5173 = extractvalue %dx.types.CBufRet.f32 %5172, 2
  %5174 = extractvalue %dx.types.CBufRet.f32 %5172, 3
  %5175 = fmul fast float %5173, %67
  %5176 = fmul fast float %5174, %68
  %5177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5175, float %5176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5178 = extractvalue %dx.types.ResRet.f32 %5177, 0
  %5179 = extractvalue %dx.types.ResRet.f32 %5177, 1
  %5180 = extractvalue %dx.types.ResRet.f32 %5177, 2
  br label %5181

; <label>:5181                                    ; preds = %5171, %5154
  %5182 = phi float [ %5178, %5171 ], [ 0.000000e+00, %5154 ]
  %5183 = phi float [ %5179, %5171 ], [ 0.000000e+00, %5154 ]
  %5184 = phi float [ %5180, %5171 ], [ 0.000000e+00, %5154 ]
  %5185 = call float @dx.op.binary.f32(i32 36, float %5183, float %5184)  ; FMin(a,b)
  %5186 = call float @dx.op.binary.f32(i32 36, float %5182, float %5185)  ; FMin(a,b)
  %5187 = fcmp fast ogt float %5186, 0.000000e+00
  br i1 %5187, label %5188, label %5363, !dx.controlflow.hints !72

; <label>:5188                                    ; preds = %5181
  %5189 = fmul fast float %5182, %5148
  %5190 = fmul fast float %5183, %5149
  %5191 = fmul fast float %5184, %5150
  %5192 = fsub fast float %5137, %4909
  %5193 = fsub fast float %5138, %4908
  %5194 = fsub fast float %5139, %4907
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5192, float %5193, float %5194, float %5192, float %5193, float %5194)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = call float @dx.op.unary.f32(i32 25, float %5195)  ; Rsqrt(value)
  %5197 = fmul fast float %5196, %5192
  %5198 = fmul fast float %5196, %5193
  %5199 = fmul fast float %5196, %5194
  %5200 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5201 = call float @dx.op.dot3.f32(i32 55, float %4906, float %4905, float %4904, float %5197, float %5198, float %5199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5202 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5203 = fmul fast float %5202, %5202
  %5204 = fmul fast float %5203, %5132
  %5205 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5206 = fmul fast float %5205, %5202
  %5207 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %5197, float %5198, float %5199)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = fmul fast float %5207, %5207
  %5209 = call float @dx.op.unary.f32(i32 6, float %5200)  ; FAbs(value)
  %5210 = fsub fast float 1.000000e+00, %4919
  %5211 = call float @dx.op.binary.f32(i32 35, float %5210, float 0x3F847AE140000000)  ; FMax(a,b)
  %5212 = fmul fast float %5211, %5211
  %5213 = fmul fast float %5212, %5212
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = fmul fast float %4923, %4923
  %5216 = fmul fast float %5215, %5214
  %5217 = fadd fast float %5216, %5213
  %5218 = bitcast float %5217 to i32
  %5219 = ashr i32 %5218, 1
  %5220 = add nsw i32 %5219, 532487669
  %5221 = bitcast i32 %5220 to float
  %5222 = fadd fast float %5221, %4923
  %5223 = fmul fast float %5213, %5208
  %5224 = fsub fast float 1.000000e+00, %5208
  %5225 = fadd fast float %5224, %5223
  %5226 = fmul fast float %5209, %5209
  %5227 = fmul fast float %5226, %5214
  %5228 = fadd fast float %5227, %5213
  %5229 = bitcast float %5228 to i32
  %5230 = ashr i32 %5229, 1
  %5231 = add nsw i32 %5230, 532487669
  %5232 = bitcast i32 %5231 to float
  %5233 = fadd fast float %5232, %5209
  %5234 = fmul fast float %5225, %5225
  %5235 = fmul fast float %5234, %5222
  %5236 = fmul fast float %5235, %5233
  %5237 = fdiv fast float 0x3FF0A00000000000, %5236
  %5238 = fmul fast float %5237, %5213
  %5239 = call float @dx.op.unary.f32(i32 6, float %5201)  ; FAbs(value)
  %5240 = fsub fast float 1.000000e+00, %5239
  %5241 = bitcast float %5240 to i32
  %5242 = sitofp i32 %5241 to float
  %5243 = fmul fast float %5242, 5.000000e+00
  %5244 = fadd fast float %5243, 0xC1EFBF8940000000
  %5245 = fptosi float %5244 to i32
  %5246 = bitcast i32 %5245 to float
  %5247 = fsub fast float 1.000000e+00, %4913
  %5248 = fsub fast float 1.000000e+00, %4914
  %5249 = fsub fast float 1.000000e+00, %4921
  %5250 = fmul fast float %5246, %5247
  %5251 = fmul fast float %5246, %5248
  %5252 = fmul fast float %5246, %5249
  %5253 = fadd fast float %5250, %4913
  %5254 = fadd fast float %5251, %4914
  %5255 = fadd fast float %5252, %4921
  br i1 %5047, label %5256, label %5279

; <label>:5256                                    ; preds = %5188
  %5257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4287, float %5239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.ResRet.f32 %5257, 2
  %5261 = fadd fast float %5258, -5.000000e-01
  %5262 = fadd fast float %5259, -5.000000e-01
  %5263 = fadd fast float %5260, -5.000000e-01
  %5264 = fmul fast float %4913, 4.000000e+00
  %5265 = fmul fast float %5264, %5247
  %5266 = fmul fast float %5265, %5261
  %5267 = fmul fast float %4914, 4.000000e+00
  %5268 = fmul fast float %5267, %5248
  %5269 = fmul fast float %5268, %5262
  %5270 = fmul fast float %4921, 4.000000e+00
  %5271 = fmul fast float %5270, %5249
  %5272 = fmul fast float %5271, %5263
  %5273 = fadd fast float %5266, %5253
  %5274 = fadd fast float %5269, %5254
  %5275 = fadd fast float %5272, %5255
  %5276 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5278 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  br label %5279

; <label>:5279                                    ; preds = %5256, %5188
  %5280 = phi float [ %5276, %5256 ], [ %5253, %5188 ]
  %5281 = phi float [ %5277, %5256 ], [ %5254, %5188 ]
  %5282 = phi float [ %5278, %5256 ], [ %5255, %5188 ]
  %5283 = fmul fast float %5200, 9.843750e-01
  %5284 = fadd fast float %5283, 7.812500e-03
  %5285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5284, float %5037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 3
  %5288 = fmul fast float %5286, %4913
  %5289 = fmul fast float %5286, %4914
  %5290 = fmul fast float %5286, %4921
  %5291 = fadd fast float %5288, %5287
  %5292 = fadd fast float %5289, %5287
  %5293 = fadd fast float %5290, %5287
  br i1 %5047, label %5294, label %5317

; <label>:5294                                    ; preds = %5279
  %5295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4287, float %5200, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.ResRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.ResRet.f32 %5295, 2
  %5299 = fadd fast float %5296, -5.000000e-01
  %5300 = fadd fast float %5297, -5.000000e-01
  %5301 = fadd fast float %5298, -5.000000e-01
  %5302 = fmul fast float %4913, 4.000000e+00
  %5303 = fmul fast float %5302, %5247
  %5304 = fmul fast float %5303, %5299
  %5305 = fmul fast float %4914, 4.000000e+00
  %5306 = fmul fast float %5305, %5248
  %5307 = fmul fast float %5306, %5300
  %5308 = fmul fast float %4921, 4.000000e+00
  %5309 = fmul fast float %5308, %5249
  %5310 = fmul fast float %5309, %5301
  %5311 = fadd fast float %5304, %5291
  %5312 = fadd fast float %5307, %5292
  %5313 = fadd fast float %5310, %5293
  %5314 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5312)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  br label %5317

; <label>:5317                                    ; preds = %5294, %5279
  %5318 = phi float [ %5314, %5294 ], [ %5291, %5279 ]
  %5319 = phi float [ %5315, %5294 ], [ %5292, %5279 ]
  %5320 = phi float [ %5316, %5294 ], [ %5293, %5279 ]
  %5321 = call float @dx.op.binary.f32(i32 35, float %5319, float %5320)  ; FMax(a,b)
  %5322 = call float @dx.op.binary.f32(i32 35, float %5318, float %5321)  ; FMax(a,b)
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = fmul fast float %5280, %5238
  %5325 = fmul fast float %5281, %5238
  %5326 = fmul fast float %5282, %5238
  %5327 = fsub fast float 1.000000e+00, %5201
  %5328 = bitcast float %5327 to i32
  %5329 = sitofp i32 %5328 to float
  %5330 = fmul fast float %5329, 5.000000e+00
  %5331 = fadd fast float %5330, 0xC1EFBF8940000000
  %5332 = fptosi float %5331 to i32
  %5333 = bitcast i32 %5332 to float
  %5334 = fmul fast float %5333, %4286
  %5335 = fmul fast float %5323, %5334
  %5336 = fmul fast float %5335, %5097
  %5337 = fmul fast float %5335, %5098
  %5338 = fmul fast float %5335, %5099
  %5339 = fadd fast float %5336, %5324
  %5340 = fadd fast float %5337, %5325
  %5341 = fadd fast float %5338, %5326
  %5342 = fmul fast float %5206, %5189
  %5343 = fmul fast float %5342, %5323
  %5344 = fmul fast float %5206, %5190
  %5345 = fmul fast float %5344, %5323
  %5346 = fmul fast float %5206, %5191
  %5347 = fmul fast float %5346, %5323
  %5348 = fmul fast float %5342, %5339
  %5349 = fmul fast float %5344, %5340
  %5350 = fmul fast float %5346, %5341
  %5351 = fadd fast float %5343, %5081
  %5352 = fmul fast float %5351, %4307
  %5353 = fadd fast float %5345, %5082
  %5354 = fmul fast float %5353, %4307
  %5355 = fadd fast float %5347, %5083
  %5356 = fmul fast float %5355, %4307
  %5357 = fadd fast float %5348, %5124
  %5358 = fmul fast float %5357, %4307
  %5359 = fadd fast float %5349, %5127
  %5360 = fmul fast float %5359, %4307
  %5361 = fadd fast float %5350, %5130
  %5362 = fmul fast float %5361, %4307
  br label %5363

; <label>:5363                                    ; preds = %5317, %5181, %5074
  %5364 = phi float [ %5125, %5074 ], [ %5125, %5181 ], [ %5358, %5317 ]
  %5365 = phi float [ %5128, %5074 ], [ %5128, %5181 ], [ %5360, %5317 ]
  %5366 = phi float [ %5131, %5074 ], [ %5131, %5181 ], [ %5362, %5317 ]
  %5367 = phi float [ %5120, %5074 ], [ %5120, %5181 ], [ %5352, %5317 ]
  %5368 = phi float [ %5121, %5074 ], [ %5121, %5181 ], [ %5354, %5317 ]
  %5369 = phi float [ %5122, %5074 ], [ %5122, %5181 ], [ %5356, %5317 ]
  %5370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.i32 %5370, 0
  %5372 = icmp eq i32 %5371, 0
  br i1 %5372, label %5807, label %5373

; <label>:5373                                    ; preds = %5363
  %5374 = fptoui float %67 to i32
  %5375 = fptoui float %68 to i32
  %5376 = lshr i32 %5374, 4
  %5377 = lshr i32 %5375, 4
  %5378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5379 = extractvalue %dx.types.CBufRet.i32 %5378, 0
  %5380 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5377, i32 %5379, i32 %5376)  ; UMad(a,b,c)
  %5381 = add nsw i32 %5371, -1
  %5382 = call i32 @dx.op.binary.i32(i32 37, i32 %5381, i32 0)  ; IMax(a,b)
  %5383 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %5384 = fptoui float %5383 to i32
  %5385 = lshr i32 %5384, 5
  %5386 = call i32 @dx.op.binary.i32(i32 40, i32 %5385, i32 8191)  ; UMin(a,b)
  %5387 = shl i32 %5386, 2
  %5388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5387, i32 undef)  ; BufferLoad(srv,index,wot)
  %5389 = extractvalue %dx.types.ResRet.i32 %5388, 0
  %5390 = lshr i32 %5389, 16
  %5391 = and i32 %5389, 65535
  %5392 = lshr i32 %5389, 21
  %5393 = lshr i32 %5391, 5
  %5394 = call i32 @dx.op.binary.i32(i32 40, i32 %5393, i32 %5382)  ; UMin(a,b)
  %5395 = icmp ugt i32 %5392, %5394
  br i1 %5395, label %5807, label %5396

; <label>:5396                                    ; preds = %5373
  br label %5397

; <label>:5397                                    ; preds = %5797, %5396
  %5398 = phi i32 [ %5804, %5797 ], [ %5392, %5396 ]
  %5399 = phi float [ %5798, %5797 ], [ %5364, %5396 ]
  %5400 = phi float [ %5799, %5797 ], [ %5365, %5396 ]
  %5401 = phi float [ %5800, %5797 ], [ %5366, %5396 ]
  %5402 = phi float [ %5801, %5797 ], [ %5367, %5396 ]
  %5403 = phi float [ %5802, %5797 ], [ %5368, %5396 ]
  %5404 = phi float [ %5803, %5797 ], [ %5369, %5396 ]
  %5405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.i32 %5405, 0
  %5407 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5380, i32 %5406, i32 %5398)  ; UMad(a,b,c)
  %5408 = shl i32 %5407, 2
  %5409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5408, i32 undef)  ; BufferLoad(srv,index,wot)
  %5410 = extractvalue %dx.types.ResRet.i32 %5409, 0
  %5411 = shl i32 %5398, 5
  %5412 = sub nsw i32 %5390, %5411
  %5413 = call i32 @dx.op.binary.i32(i32 37, i32 %5412, i32 0)  ; IMax(a,b)
  %5414 = call i32 @dx.op.binary.i32(i32 38, i32 %5413, i32 31)  ; IMin(a,b)
  %5415 = sub nsw i32 1, %5390
  %5416 = add nsw i32 %5415, %5391
  %5417 = call i32 @dx.op.binary.i32(i32 37, i32 %5416, i32 0)  ; IMax(a,b)
  %5418 = call i32 @dx.op.binary.i32(i32 38, i32 %5417, i32 32)  ; IMin(a,b)
  %5419 = and i32 %5418, 31
  %5420 = shl i32 -1, %5419
  %5421 = xor i32 %5420, -1
  %5422 = and i32 %5414, 31
  %5423 = shl i32 %5421, %5422
  %5424 = icmp eq i32 %5418, 32
  %5425 = select i1 %5424, i32 -1, i32 %5423
  %5426 = and i32 %5425, %5410
  %5427 = icmp eq i32 %5426, 0
  br i1 %5427, label %5797, label %5428

; <label>:5428                                    ; preds = %5397
  br label %5429

; <label>:5429                                    ; preds = %5509, %5428
  %5430 = phi i32 [ %5441, %5509 ], [ %5426, %5428 ]
  %5431 = phi float [ %5510, %5509 ], [ %5399, %5428 ]
  %5432 = phi float [ %5511, %5509 ], [ %5400, %5428 ]
  %5433 = phi float [ %5512, %5509 ], [ %5401, %5428 ]
  %5434 = phi float [ %5513, %5509 ], [ %5402, %5428 ]
  %5435 = phi float [ %5514, %5509 ], [ %5403, %5428 ]
  %5436 = phi float [ %5515, %5509 ], [ %5404, %5428 ]
  %5437 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5430)  ; FirstbitLo(value)
  %5438 = add i32 %5437, %5411
  %5439 = and i32 %5437, 31
  %5440 = shl i32 1, %5439
  %5441 = xor i32 %5440, %5430
  %5442 = mul i32 %5438, 112
  %5443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5442, i32 undef)  ; BufferLoad(srv,index,wot)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  %5445 = extractvalue %dx.types.ResRet.f32 %5443, 1
  %5446 = extractvalue %dx.types.ResRet.f32 %5443, 2
  %5447 = or i32 %5442, 12
  %5448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5449 = extractvalue %dx.types.ResRet.f32 %5448, 0
  %5450 = add i32 %5442, 44
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5450, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = add i32 %5442, 48
  %5454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5453, i32 undef)  ; BufferLoad(srv,index,wot)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  %5458 = add i32 %5442, 80
  %5459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5458, i32 undef)  ; BufferLoad(srv,index,wot)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 2
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = select i1 %172, float %5460, float %5444
  %5464 = select i1 %172, float %5462, float %5445
  %5465 = select i1 %172, float %5461, float %5446
  %5466 = fsub fast float %5455, %130
  %5467 = fsub fast float %5456, %131
  %5468 = fsub fast float %5457, %132
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = call float @dx.op.unary.f32(i32 24, float %5469)  ; Sqrt(value)
  %5471 = fdiv fast float 1.000000e+00, %5470
  %5472 = fmul fast float %5471, %5466
  %5473 = fmul fast float %5471, %5467
  %5474 = fmul fast float %5471, %5468
  %5475 = fadd fast float %5470, %5449
  %5476 = fdiv fast float 1.000000e+00, %5475
  %5477 = fmul float %5452, %5476
  %5478 = fmul float %5477, %5477
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = and i32 %5440, %5426
  %5481 = icmp eq i32 %5480, 0
  br i1 %5481, label %5504, label %5482, !dx.controlflow.hints !73

; <label>:5482                                    ; preds = %5429
  %5483 = lshr i32 %5374, 5
  %5484 = lshr i32 %5375, 5
  %5485 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5483, i32 %5484, i32 %5438, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5486 = extractvalue %dx.types.ResRet.i32 %5485, 0
  %5487 = and i32 %5486, 3
  %5488 = icmp eq i32 %5487, 0
  %5489 = select i1 %5488, float 1.000000e+00, float 0.000000e+00
  %5490 = icmp eq i32 %5487, 3
  br i1 %5490, label %5491, label %5504

; <label>:5491                                    ; preds = %5482
  %5492 = lshr i32 %5486, 10
  %5493 = and i32 %5492, 8160
  %5494 = and i32 %5375, 31
  %5495 = or i32 %5493, %5494
  %5496 = lshr i32 %5486, 1
  %5497 = and i32 %5496, 16352
  %5498 = and i32 %5374, 31
  %5499 = or i32 %5497, %5498
  %5500 = lshr i32 %5486, 23
  %5501 = and i32 %5500, 255
  %5502 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5499, i32 %5495, i32 %5501, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  br label %5504

; <label>:5504                                    ; preds = %5491, %5482, %5429
  %5505 = phi float [ %5503, %5491 ], [ %5489, %5482 ], [ 0.000000e+00, %5429 ]
  %5506 = call float @dx.op.binary.f32(i32 36, float %5505, float %5505)  ; FMin(a,b)
  %5507 = call float @dx.op.binary.f32(i32 36, float %5505, float %5506)  ; FMin(a,b)
  %5508 = fcmp fast ogt float %5507, 0.000000e+00
  br i1 %5508, label %5517, label %5509, !dx.controlflow.hints !74

; <label>:5509                                    ; preds = %5753, %5504
  %5510 = phi float [ %5431, %5504 ], [ %5793, %5753 ]
  %5511 = phi float [ %5432, %5504 ], [ %5794, %5753 ]
  %5512 = phi float [ %5433, %5504 ], [ %5795, %5753 ]
  %5513 = phi float [ %5434, %5504 ], [ %5787, %5753 ]
  %5514 = phi float [ %5435, %5504 ], [ %5788, %5753 ]
  %5515 = phi float [ %5436, %5504 ], [ %5789, %5753 ]
  %5516 = icmp eq i32 %5430, %5440
  br i1 %5516, label %5796, label %5429

; <label>:5517                                    ; preds = %5504
  %5518 = fmul fast float %5505, %5463
  %5519 = fmul fast float %5505, %5464
  %5520 = fmul fast float %5505, %5465
  %5521 = fsub fast float %5457, %4709
  %5522 = fcmp fast ogt float %5521, 0.000000e+00
  %5523 = fsub fast float %132, %4709
  %5524 = fcmp fast ogt float %5523, 0.000000e+00
  %5525 = xor i1 %5524, %5522
  %5526 = fsub fast float %4709, %5457
  %5527 = fmul fast float %5526, 2.000000e+00
  %5528 = fadd fast float %5527, %5457
  %5529 = select i1 %5525, float %5457, float %5528
  %5530 = fsub fast float %5529, %132
  %5531 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5530, float %5466, float %5467, float %5530)  ; Dot3(ax,ay,az,bx,by,bz)
  %5532 = call float @dx.op.unary.f32(i32 25, float %5531)  ; Rsqrt(value)
  %5533 = fmul fast float %5532, %5466
  %5534 = fmul fast float %5532, %5467
  %5535 = fmul fast float %5532, %5530
  %5536 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4717)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5533, float %5534, float %5535)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = fdiv fast float 1.000000e+00, %5537
  %5539 = fmul fast float %5538, %5536
  %5540 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5523, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = fcmp fast ogt float %5540, 0.000000e+00
  %5542 = fcmp fast olt float %5540, 0.000000e+00
  %5543 = zext i1 %5541 to i32
  %5544 = zext i1 %5542 to i32
  %5545 = sub nsw i32 %5543, %5544
  %5546 = sitofp i32 %5545 to float
  %5547 = fsub fast float %5529, %4709
  %5548 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5547, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = fcmp fast ogt float %5548, 0.000000e+00
  %5550 = fcmp fast olt float %5548, 0.000000e+00
  %5551 = zext i1 %5549 to i32
  %5552 = zext i1 %5550 to i32
  %5553 = sub nsw i32 %5551, %5552
  %5554 = sitofp i32 %5553 to float
  %5555 = fcmp fast une float %5546, %5554
  br i1 %5555, label %5556, label %5566

; <label>:5556                                    ; preds = %5517
  %5557 = fmul fast float %5539, %5535
  %5558 = fmul fast float %5539, %5534
  %5559 = fmul fast float %5539, %5533
  %5560 = fmul fast float %5559, %5559
  %5561 = fmul fast float %5558, %5558
  %5562 = fadd fast float %5560, %5561
  %5563 = fmul fast float %5557, %5557
  %5564 = fadd fast float %5562, %5563
  %5565 = call float @dx.op.unary.f32(i32 24, float %5564)  ; Sqrt(value)
  br label %5578

; <label>:5566                                    ; preds = %5517
  %5567 = icmp slt i32 %5545, 0
  br i1 %5567, label %5568, label %5578

; <label>:5568                                    ; preds = %5566
  %5569 = fsub fast float %130, %5455
  %5570 = fsub fast float %131, %5456
  %5571 = fsub fast float %132, %5529
  %5572 = fmul fast float %5569, %5569
  %5573 = fmul fast float %5570, %5570
  %5574 = fadd fast float %5572, %5573
  %5575 = fmul fast float %5571, %5571
  %5576 = fadd fast float %5574, %5575
  %5577 = call float @dx.op.unary.f32(i32 24, float %5576)  ; Sqrt(value)
  br label %5578

; <label>:5578                                    ; preds = %5568, %5566, %5556
  %5579 = phi float [ %5565, %5556 ], [ %5577, %5568 ], [ 0.000000e+00, %5566 ]
  %5580 = and i1 %5524, %5522
  %5581 = fsub fast float -0.000000e+00, %5579
  %5582 = select i1 %5580, float -0.000000e+00, float %5581
  %5583 = fmul fast float %4710, 0x3FF7154760000000
  %5584 = fmul fast float %5583, %5582
  %5585 = fmul fast float %4711, 0x3FF7154760000000
  %5586 = fmul fast float %5585, %5582
  %5587 = fmul fast float %4712, 0x3FF7154760000000
  %5588 = fmul fast float %5587, %5582
  %5589 = call float @dx.op.unary.f32(i32 21, float %5584)  ; Exp(value)
  %5590 = call float @dx.op.unary.f32(i32 21, float %5586)  ; Exp(value)
  %5591 = call float @dx.op.unary.f32(i32 21, float %5588)  ; Exp(value)
  %5592 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5593 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5594 = call float @dx.op.unary.f32(i32 7, float %5591)  ; Saturate(value)
  %5595 = fmul fast float %5518, %5592
  %5596 = fmul fast float %5519, %5593
  %5597 = fmul fast float %5520, %5594
  %5598 = fsub fast float %5472, %4909
  %5599 = fsub fast float %5473, %4908
  %5600 = fsub fast float %5474, %4907
  %5601 = call float @dx.op.dot3.f32(i32 55, float %5598, float %5599, float %5600, float %5598, float %5599, float %5600)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = call float @dx.op.unary.f32(i32 25, float %5601)  ; Rsqrt(value)
  %5603 = fmul fast float %5602, %5598
  %5604 = fmul fast float %5602, %5599
  %5605 = fmul fast float %5602, %5600
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %4916, float %4917, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.dot3.f32(i32 55, float %4906, float %4905, float %4904, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5609 = fmul fast float %5608, %5479
  %5610 = fmul fast float %5608, %5608
  %5611 = fmul fast float %5610, %5132
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fmul fast float %5609, %5612
  %5614 = bitcast float %5469 to i32
  %5615 = ashr i32 %5614, 1
  %5616 = sub nsw i32 1597463007, %5615
  %5617 = bitcast i32 %5616 to float
  %5618 = fmul fast float %5617, %5466
  %5619 = fmul fast float %5617, %5467
  %5620 = fmul fast float %5617, %5468
  %5621 = fsub fast float %5618, %4909
  %5622 = fsub fast float %5619, %4908
  %5623 = fsub fast float %5620, %4907
  %5624 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5621, float %5622, float %5623)  ; Dot3(ax,ay,az,bx,by,bz)
  %5625 = call float @dx.op.unary.f32(i32 25, float %5624)  ; Rsqrt(value)
  %5626 = fmul fast float %5621, %5625
  %5627 = fmul fast float %5622, %5625
  %5628 = fmul fast float %5623, %5625
  %5629 = call float @dx.op.dot3.f32(i32 55, float %4916, float %4917, float %4918, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = fmul fast float %5629, %5629
  %5631 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5632 = fsub fast float 1.000000e+00, %4919
  %5633 = call float @dx.op.binary.f32(i32 35, float %5632, float 0x3F847AE140000000)  ; FMax(a,b)
  %5634 = fmul fast float %5633, %5633
  %5635 = fmul fast float %5634, %5634
  %5636 = fsub fast float 1.000000e+00, %5635
  %5637 = fmul fast float %4923, %4923
  %5638 = fmul fast float %5637, %5636
  %5639 = fadd fast float %5638, %5635
  %5640 = bitcast float %5639 to i32
  %5641 = ashr i32 %5640, 1
  %5642 = add nsw i32 %5641, 532487669
  %5643 = bitcast i32 %5642 to float
  %5644 = fadd fast float %5643, %4923
  %5645 = fmul fast float %5635, %5630
  %5646 = fsub fast float 1.000000e+00, %5630
  %5647 = fadd fast float %5646, %5645
  %5648 = fmul fast float %5631, %5631
  %5649 = fmul fast float %5648, %5636
  %5650 = fadd fast float %5649, %5635
  %5651 = bitcast float %5650 to i32
  %5652 = ashr i32 %5651, 1
  %5653 = add nsw i32 %5652, 532487669
  %5654 = bitcast i32 %5653 to float
  %5655 = fadd fast float %5654, %5631
  %5656 = fmul fast float %5647, %5647
  %5657 = fmul fast float %5656, %5644
  %5658 = fmul fast float %5657, %5655
  %5659 = fdiv fast float 1.000000e+00, %5658
  %5660 = bitcast float %5635 to i32
  %5661 = sitofp i32 %5660 to float
  %5662 = fmul fast float %5661, 0x3FE7F73180000000
  %5663 = fadd fast float %5662, 0x41AFE27C40000000
  %5664 = fptosi float %5663 to i32
  %5665 = bitcast i32 %5664 to float
  %5666 = fmul fast float %5452, 0x3FD80E9D60000000
  %5667 = fmul fast float %5666, %5617
  %5668 = fadd fast float %5665, %5667
  %5669 = bitcast float %5668 to i32
  %5670 = sub nsw i32 2129859010, %5669
  %5671 = bitcast i32 %5670 to float
  %5672 = fmul fast float %5635, %5659
  %5673 = fmul fast float %5672, %5665
  %5674 = fmul fast float %5673, %5671
  %5675 = call float @dx.op.unary.f32(i32 6, float %5607)  ; FAbs(value)
  %5676 = fsub fast float 1.000000e+00, %5675
  %5677 = bitcast float %5676 to i32
  %5678 = sitofp i32 %5677 to float
  %5679 = fmul fast float %5678, 5.000000e+00
  %5680 = fadd fast float %5679, 0xC1EFBF8940000000
  %5681 = fptosi float %5680 to i32
  %5682 = bitcast i32 %5681 to float
  %5683 = fsub fast float 1.000000e+00, %4913
  %5684 = fsub fast float 1.000000e+00, %4914
  %5685 = fsub fast float 1.000000e+00, %4921
  %5686 = fmul fast float %5682, %5683
  %5687 = fmul fast float %5682, %5684
  %5688 = fmul fast float %5682, %5685
  %5689 = fadd fast float %5686, %4913
  %5690 = fadd fast float %5687, %4914
  %5691 = fadd fast float %5688, %4921
  br i1 %5047, label %5692, label %5715

; <label>:5692                                    ; preds = %5578
  %5693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4287, float %5675, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5694 = extractvalue %dx.types.ResRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.ResRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.ResRet.f32 %5693, 2
  %5697 = fadd fast float %5694, -5.000000e-01
  %5698 = fadd fast float %5695, -5.000000e-01
  %5699 = fadd fast float %5696, -5.000000e-01
  %5700 = fmul fast float %4913, 4.000000e+00
  %5701 = fmul fast float %5700, %5683
  %5702 = fmul fast float %5701, %5697
  %5703 = fmul fast float %4914, 4.000000e+00
  %5704 = fmul fast float %5703, %5684
  %5705 = fmul fast float %5704, %5698
  %5706 = fmul fast float %4921, 4.000000e+00
  %5707 = fmul fast float %5706, %5685
  %5708 = fmul fast float %5707, %5699
  %5709 = fadd fast float %5702, %5689
  %5710 = fadd fast float %5705, %5690
  %5711 = fadd fast float %5708, %5691
  %5712 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5713 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5714 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  br label %5715

; <label>:5715                                    ; preds = %5692, %5578
  %5716 = phi float [ %5712, %5692 ], [ %5689, %5578 ]
  %5717 = phi float [ %5713, %5692 ], [ %5690, %5578 ]
  %5718 = phi float [ %5714, %5692 ], [ %5691, %5578 ]
  %5719 = fmul fast float %5606, 9.843750e-01
  %5720 = fadd fast float %5719, 7.812500e-03
  %5721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5720, float %5037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5722 = extractvalue %dx.types.ResRet.f32 %5721, 2
  %5723 = extractvalue %dx.types.ResRet.f32 %5721, 3
  %5724 = fmul fast float %5722, %4913
  %5725 = fmul fast float %5722, %4914
  %5726 = fmul fast float %5722, %4921
  %5727 = fadd fast float %5724, %5723
  %5728 = fadd fast float %5725, %5723
  %5729 = fadd fast float %5726, %5723
  br i1 %5047, label %5730, label %5753

; <label>:5730                                    ; preds = %5715
  %5731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4287, float %5606, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5732 = extractvalue %dx.types.ResRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.ResRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.ResRet.f32 %5731, 2
  %5735 = fadd fast float %5732, -5.000000e-01
  %5736 = fadd fast float %5733, -5.000000e-01
  %5737 = fadd fast float %5734, -5.000000e-01
  %5738 = fmul fast float %4913, 4.000000e+00
  %5739 = fmul fast float %5738, %5683
  %5740 = fmul fast float %5739, %5735
  %5741 = fmul fast float %4914, 4.000000e+00
  %5742 = fmul fast float %5741, %5684
  %5743 = fmul fast float %5742, %5736
  %5744 = fmul fast float %4921, 4.000000e+00
  %5745 = fmul fast float %5744, %5685
  %5746 = fmul fast float %5745, %5737
  %5747 = fadd fast float %5740, %5727
  %5748 = fadd fast float %5743, %5728
  %5749 = fadd fast float %5746, %5729
  %5750 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5751 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5752 = call float @dx.op.unary.f32(i32 7, float %5749)  ; Saturate(value)
  br label %5753

; <label>:5753                                    ; preds = %5730, %5715
  %5754 = phi float [ %5750, %5730 ], [ %5727, %5715 ]
  %5755 = phi float [ %5751, %5730 ], [ %5728, %5715 ]
  %5756 = phi float [ %5752, %5730 ], [ %5729, %5715 ]
  %5757 = call float @dx.op.binary.f32(i32 35, float %5755, float %5756)  ; FMax(a,b)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5754, float %5757)  ; FMax(a,b)
  %5759 = fsub fast float 1.000000e+00, %5758
  %5760 = fmul fast float %5716, %5674
  %5761 = fmul fast float %5717, %5674
  %5762 = fmul fast float %5718, %5674
  %5763 = fsub fast float 1.000000e+00, %5607
  %5764 = bitcast float %5763 to i32
  %5765 = sitofp i32 %5764 to float
  %5766 = fmul fast float %5765, 5.000000e+00
  %5767 = fadd fast float %5766, 0xC1EFBF8940000000
  %5768 = fptosi float %5767 to i32
  %5769 = bitcast i32 %5768 to float
  %5770 = fmul fast float %5769, %4286
  %5771 = fmul fast float %5759, %5770
  %5772 = fmul fast float %5771, %5097
  %5773 = fmul fast float %5771, %5098
  %5774 = fmul fast float %5771, %5099
  %5775 = fadd fast float %5772, %5760
  %5776 = fadd fast float %5773, %5761
  %5777 = fadd fast float %5774, %5762
  %5778 = fmul fast float %5595, %4307
  %5779 = fmul fast float %5778, %5613
  %5780 = fmul fast float %5779, %5759
  %5781 = fmul fast float %5596, %4307
  %5782 = fmul fast float %5781, %5613
  %5783 = fmul fast float %5782, %5759
  %5784 = fmul fast float %5597, %4307
  %5785 = fmul fast float %5784, %5613
  %5786 = fmul fast float %5785, %5759
  %5787 = fadd fast float %5780, %5434
  %5788 = fadd fast float %5783, %5435
  %5789 = fadd fast float %5786, %5436
  %5790 = fmul fast float %5779, %5775
  %5791 = fmul fast float %5782, %5776
  %5792 = fmul fast float %5785, %5777
  %5793 = fadd fast float %5790, %5431
  %5794 = fadd fast float %5791, %5432
  %5795 = fadd fast float %5792, %5433
  br label %5509

; <label>:5796                                    ; preds = %5509
  br label %5797

; <label>:5797                                    ; preds = %5796, %5397
  %5798 = phi float [ %5399, %5397 ], [ %5510, %5796 ]
  %5799 = phi float [ %5400, %5397 ], [ %5511, %5796 ]
  %5800 = phi float [ %5401, %5397 ], [ %5512, %5796 ]
  %5801 = phi float [ %5402, %5397 ], [ %5513, %5796 ]
  %5802 = phi float [ %5403, %5397 ], [ %5514, %5796 ]
  %5803 = phi float [ %5404, %5397 ], [ %5515, %5796 ]
  %5804 = add i32 %5398, 1
  %5805 = icmp ugt i32 %5804, %5394
  br i1 %5805, label %5806, label %5397

; <label>:5806                                    ; preds = %5797
  br label %5807

; <label>:5807                                    ; preds = %5806, %5373, %5363
  %5808 = phi float [ %5364, %5363 ], [ %5364, %5373 ], [ %5798, %5806 ]
  %5809 = phi float [ %5365, %5363 ], [ %5365, %5373 ], [ %5799, %5806 ]
  %5810 = phi float [ %5366, %5363 ], [ %5366, %5373 ], [ %5800, %5806 ]
  %5811 = phi float [ %5367, %5363 ], [ %5367, %5373 ], [ %5801, %5806 ]
  %5812 = phi float [ %5368, %5363 ], [ %5368, %5373 ], [ %5802, %5806 ]
  %5813 = phi float [ %5369, %5363 ], [ %5369, %5373 ], [ %5803, %5806 ]
  %5814 = call float @dx.op.unary.f32(i32 24, float %4910)  ; Sqrt(value)
  %5815 = call float @dx.op.unary.f32(i32 24, float %4911)  ; Sqrt(value)
  %5816 = call float @dx.op.unary.f32(i32 24, float %4912)  ; Sqrt(value)
  %5817 = fmul fast float %5814, %5811
  %5818 = fmul fast float %5815, %5812
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 0
  br i1 %172, label %5821, label %5841

; <label>:5821                                    ; preds = %5807
  %5822 = fadd fast float %5813, %4284
  %5823 = fmul fast float %5822, %4285
  %5824 = fsub fast float 1.000000e+00, %4285
  %5825 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 3
  %5828 = fmul fast float %5827, %5825
  %5829 = fadd fast float %5828, %5823
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = fmul fast float %5831, %5103
  %5833 = fsub fast float %5829, %5832
  %5834 = fadd fast float %5818, %5817
  %5835 = fmul fast float %5820, %5834
  %5836 = extractvalue %dx.types.CBufRet.f32 %5826, 1
  %5837 = fsub fast float %5833, %5836
  %5838 = extractvalue %dx.types.CBufRet.f32 %5826, 2
  %5839 = fmul fast float %5837, %5838
  %5840 = call float @dx.op.unary.f32(i32 7, float %5839)  ; Saturate(value)
  br label %5857

; <label>:5841                                    ; preds = %5807
  %5842 = fmul fast float %5816, %5813
  %5843 = fmul fast float %5820, %5817
  %5844 = fmul fast float %5820, %5818
  %5845 = fmul fast float %5842, %5820
  %5846 = add i32 %33, 356
  %5847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5846, i32 undef)  ; BufferLoad(srv,index,wot)
  %5848 = extractvalue %dx.types.ResRet.i32 %5847, 0
  %5849 = and i32 %5848, 32
  %5850 = icmp eq i32 %5849, 0
  br i1 %5850, label %5857, label %5851

; <label>:5851                                    ; preds = %5841
  %5852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5853 = extractvalue %dx.types.CBufRet.f32 %5852, 0
  %5854 = fmul fast float %5853, 0x3FE99999A0000000
  %5855 = fadd fast float %5853, %5843
  %5856 = fadd fast float %5854, %5845
  br label %5857

; <label>:5857                                    ; preds = %5851, %5841, %5821
  %5858 = phi float [ %5835, %5821 ], [ %5855, %5851 ], [ %5843, %5841 ]
  %5859 = phi float [ %5840, %5821 ], [ %5844, %5851 ], [ %5844, %5841 ]
  %5860 = phi float [ 1.000000e+00, %5821 ], [ %5856, %5851 ], [ %5845, %5841 ]
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = fmul fast float %5862, %5809
  %5864 = fmul fast float %5862, %5810
  %5865 = fadd fast float %5809, %5808
  %5866 = select i1 %172, float %5865, float %5808
  %5867 = fmul float %5866, %5862
  %5868 = select i1 %172, float 0.000000e+00, float %5863
  %5869 = select i1 %172, float 0.000000e+00, float %5864
  %5870 = fmul fast float %5858, %5814
  %5871 = fmul fast float %5859, %5815
  %5872 = fmul fast float %5860, %5816
  %5873 = fadd fast float %5867, %5870
  %5874 = fadd fast float %5868, %5871
  %5875 = fadd fast float %5869, %5872
  %5876 = select i1 %172, float %5859, float %5874
  %5877 = select i1 %172, float %5860, float %5875
  %5878 = call float @dx.op.binary.f32(i32 36, float %5873, float 3.225500e+04)  ; FMin(a,b)
  %5879 = call float @dx.op.binary.f32(i32 36, float %5876, float 3.225500e+04)  ; FMin(a,b)
  %5880 = call float @dx.op.binary.f32(i32 36, float %5877, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5878)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5879)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5880)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

