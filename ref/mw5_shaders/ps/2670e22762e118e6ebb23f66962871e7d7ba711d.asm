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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw       10     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x zw
; SV_IsFrontFace           0   x          12    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 93e319eedbda2e9c1467d5d86df5f6ef
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
; Number of inputs: 49, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
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
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = icmp ne i32 %33, 0
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = fmul fast float %75, %69
  %77 = fmul fast float %75, %70
  %78 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %79 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = bitcast float %79 to i32
  %81 = ashr i32 %80, 1
  %82 = sub nsw i32 1597250115, %81
  %83 = bitcast i32 %82 to float
  %84 = fmul fast float %61, %78
  %85 = fmul fast float %84, %83
  %86 = fmul fast float %62, %78
  %87 = fmul fast float %86, %83
  %88 = fmul fast float %63, %78
  %89 = fmul fast float %88, %83
  %90 = fmul fast float %62, %59
  %91 = fmul fast float %63, %58
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %63, %57
  %94 = fmul fast float %61, %59
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %61, %58
  %97 = fmul fast float %62, %57
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %92, %60
  %100 = fmul fast float %95, %60
  %101 = fmul fast float %98, %60
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 3
  %105 = fmul fast float %76, 2.000000e+00
  %106 = fmul fast float %105, %103
  %107 = fmul fast float %77, 2.000000e+00
  %108 = fmul fast float %107, %104
  %109 = fsub fast float 1.000000e+00, %106
  %110 = fsub fast float 1.000000e+00, %108
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %109, %112
  %116 = fmul fast float %109, %113
  %117 = fmul fast float %109, %114
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fmul fast float %110, %119
  %123 = fmul fast float %110, %120
  %124 = fmul fast float %110, %121
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 1
  %128 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %129 = fadd fast float %122, %126
  %130 = fadd fast float %129, %115
  %131 = fadd fast float %123, %127
  %132 = fadd fast float %131, %116
  %133 = fadd fast float %124, %128
  %134 = fadd fast float %133, %117
  %135 = fmul fast float %130, %71
  %136 = fmul fast float %132, %71
  %137 = fmul fast float %134, %71
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %141 = fmul fast float %139, %76
  %142 = fmul fast float %140, %77
  %143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %144 = extractvalue %dx.types.ResRet.i32 %143, 0
  %145 = and i32 %144, 114688
  %146 = icmp ne i32 %145, 0
  %147 = select i1 %146, float %141, float 0.000000e+00
  %148 = select i1 %146, float %142, float 0.000000e+00
  %149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %147, float %148, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %150 = extractvalue %dx.types.ResRet.f32 %149, 0
  %151 = fmul fast float %150, 2.550000e+02
  %152 = fptoui float %151 to i32
  %153 = select i1 %146, i32 %152, i32 0
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.i32 %155, 3
  %157 = and i32 %156, 3
  %158 = icmp ne i32 %157, 0
  %159 = and i32 %156, 4
  %160 = icmp ne i32 %159, 0
  %161 = and i1 %158, %160
  br i1 %161, label %162, label %173

; <label>:162                                     ; preds = %0
  %163 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %164 = fmul fast float %163, %77
  %165 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %166 = fmul fast float %165, %76
  %167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %166, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = fsub fast float 1.000000e+00, %168
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 0
  %172 = fcmp fast olt float %169, %171
  br label %176

; <label>:173                                     ; preds = %0
  %174 = icmp eq i32 %159, 0
  %175 = and i1 %158, %174
  br label %176

; <label>:176                                     ; preds = %173, %162
  %177 = phi i1 [ %172, %162 ], [ %175, %173 ]
  %178 = add i32 %35, 156
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = shl i32 %180, 4
  %182 = and i32 %181, 32752
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = lshr i32 %180, 7
  %185 = and i32 %184, 32752
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = lshr i32 %180, 22
  %188 = shl nuw nsw i32 %187, 5
  %189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %188)  ; LegacyF16ToF32(value)
  %190 = add i32 %35, 216
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = and i32 %192, 255
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F70101020000000
  %196 = lshr i32 %192, 8
  %197 = and i32 %196, 255
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F70101020000000
  %200 = lshr i32 %192, 16
  %201 = and i32 %200, 255
  %202 = uitofp i32 %201 to float
  %203 = fmul fast float %202, 0x3F70101020000000
  %204 = add i32 %35, 36
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 65535
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %206, 16
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = add i32 %35, 288
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = and i32 %213, 65535
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %213, 16
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = fmul fast float %215, 0x3F50624DE0000000
  %219 = fmul fast float %217, 0x3F50624DE0000000
  %220 = add i32 %35, 172
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = shl i32 %222, 4
  %224 = and i32 %223, 32752
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = lshr i32 %222, 7
  %227 = and i32 %226, 32752
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %222, 22
  %230 = shl nuw nsw i32 %229, 5
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = add i32 %35, 232
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = lshr i32 %234, 8
  %239 = and i32 %238, 255
  %240 = uitofp i32 %239 to float
  %241 = fmul fast float %240, 0x3F70101020000000
  %242 = lshr i32 %234, 16
  %243 = and i32 %242, 255
  %244 = uitofp i32 %243 to float
  %245 = fmul fast float %244, 0x3F70101020000000
  %246 = add i32 %35, 52
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %248, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = add i32 %35, 304
  %254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.i32 %254, 0
  %256 = and i32 %255, 65535
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %255, 16
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = fmul fast float %257, 0x3F50624DE0000000
  %261 = fmul fast float %259, 0x3F50624DE0000000
  %262 = add i32 %35, 188
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = shl i32 %264, 4
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %264, 7
  %269 = and i32 %268, 32752
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %264, 22
  %272 = shl nuw nsw i32 %271, 5
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = add i32 %35, 248
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = lshr i32 %276, 8
  %281 = and i32 %280, 255
  %282 = uitofp i32 %281 to float
  %283 = fmul fast float %282, 0x3F70101020000000
  %284 = lshr i32 %276, 16
  %285 = and i32 %284, 255
  %286 = uitofp i32 %285 to float
  %287 = fmul fast float %286, 0x3F70101020000000
  %288 = add i32 %35, 68
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = add i32 %35, 320
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = and i32 %297, 65535
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %297, 16
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = fmul fast float %299, 0x3F50624DE0000000
  %303 = fmul fast float %301, 0x3F50624DE0000000
  %304 = add i32 %35, 204
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %35, 264
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %35, 84
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %35, 336
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %35, 348
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 32
  %350 = icmp eq i32 %349, 0
  %351 = and i32 %348, 64
  %352 = icmp eq i32 %351, 0
  %353 = and i32 %348, 128
  %354 = icmp eq i32 %353, 0
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 2
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %372, label %359

; <label>:359                                     ; preds = %176
  %360 = add i32 %35, 524
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = add i32 %362, 0
  %364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %364, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %366 = extractvalue %dx.types.ResRet.f32 %365, 0
  %367 = extractvalue %dx.types.ResRet.f32 %365, 1
  %368 = extractvalue %dx.types.ResRet.f32 %365, 2
  %369 = fmul fast float %366, %66
  %370 = fmul fast float %367, %67
  %371 = fmul fast float %368, %68
  br label %372

; <label>:372                                     ; preds = %359, %176
  %373 = phi float [ %68, %176 ], [ %371, %359 ]
  %374 = phi float [ %67, %176 ], [ %370, %359 ]
  %375 = phi float [ %66, %176 ], [ %369, %359 ]
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = and i32 %377, 2
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %399, label %380

; <label>:380                                     ; preds = %372
  %381 = add i32 %35, 44
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 1
  %385 = icmp ne i32 %384, 0
  %386 = select i1 %385, float %375, float 1.000000e+00
  %387 = add i32 %35, 60
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 1
  %391 = icmp ne i32 %390, 0
  %392 = select i1 %391, float %374, float 1.000000e+00
  %393 = add i32 %35, 76
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 1
  %397 = icmp ne i32 %396, 0
  %398 = select i1 %397, float %373, float 1.000000e+00
  br label %399

; <label>:399                                     ; preds = %380, %372
  %400 = phi float [ %373, %372 ], [ %398, %380 ]
  %401 = phi float [ %374, %372 ], [ %392, %380 ]
  %402 = phi float [ %375, %372 ], [ %386, %380 ]
  %403 = lshr i32 %377, 20
  %404 = and i32 %403, 3
  %405 = add nuw nsw i32 %404, 1
  %406 = add i32 %35, 24
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = add i32 %35, 28
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = or i32 %411, %408
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %872, label %414

; <label>:414                                     ; preds = %399
  %415 = and i32 %408, 262144
  %416 = icmp ne i32 %415, 0
  %417 = select i1 %416, float %39, float 1.000000e+00
  %418 = select i1 %416, float %40, float 0.000000e+00
  %419 = select i1 %416, float %41, float 0.000000e+00
  %420 = select i1 %416, float %42, float 1.000000e+00
  %421 = select i1 %416, float %43, float %64
  %422 = select i1 %416, float %44, float %65
  %423 = add i32 %35, 284
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = lshr i32 %425, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = fmul fast float %427, 0x3F50624DE0000000
  %429 = add i32 %35, 88
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = lshr i32 %431, 16
  %433 = and i32 %432, 255
  %434 = lshr i32 %431, 24
  %435 = add i32 %35, 292
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 65535
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = lshr i32 %437, 16
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = add i32 %35, 32
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = lshr i32 %444, 22
  %446 = shl nuw nsw i32 %445, 5
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = shl i32 %444, 4
  %449 = and i32 %448, 32752
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %444, 7
  %452 = and i32 %451, 32752
  %453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %452)  ; LegacyF16ToF32(value)
  %454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %455 = extractvalue %dx.types.CBufRet.f32 %454, 3
  %456 = fmul fast float %455, 1.000000e+03
  %457 = fmul fast float %218, %456
  %458 = call float @dx.op.unary.f32(i32 22, float %457)  ; Frc(value)
  %459 = fadd fast float %458, %208
  %460 = fmul fast float %219, %456
  %461 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %462 = fadd fast float %461, %210
  %463 = fmul fast float %428, %456
  %464 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %465 = fmul fast float %464, 0x401921FB60000000
  %466 = fadd fast float %465, %447
  %467 = call float @dx.op.unary.f32(i32 13, float %466)  ; Sin(value)
  %468 = call float @dx.op.unary.f32(i32 12, float %466)  ; Cos(value)
  %469 = fsub fast float -0.000000e+00, %467
  %470 = fadd fast float %421, -5.000000e-01
  %471 = fadd fast float %422, -5.000000e-01
  %472 = fmul fast float %439, %470
  %473 = fmul fast float %441, %471
  %474 = fadd fast float %472, 5.000000e-01
  %475 = fadd fast float %473, 5.000000e-01
  %476 = fmul fast float %450, %474
  %477 = fmul fast float %453, %475
  %478 = fmul fast float %468, %476
  %479 = call float @dx.op.tertiary.f32(i32 46, float %469, float %477, float %478)  ; FMad(a,b,c)
  %480 = fmul fast float %467, %476
  %481 = call float @dx.op.tertiary.f32(i32 46, float %468, float %477, float %480)  ; FMad(a,b,c)
  %482 = fadd fast float %459, %479
  %483 = fadd fast float %462, %481
  %484 = icmp ugt i32 %433, 1
  %485 = icmp ugt i32 %431, 33554431
  %486 = or i1 %485, %484
  br i1 %486, label %487, label %512

; <label>:487                                     ; preds = %414
  %488 = add i32 %35, 228
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = lshr i32 %490, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = fmul fast float %455, %492
  %494 = call float @dx.op.unary.f32(i32 22, float %493)  ; Frc(value)
  %495 = mul nuw nsw i32 %433, %434
  %496 = uitofp i32 %495 to float
  %497 = fmul fast float %494, %496
  %498 = call float @dx.op.unary.f32(i32 27, float %497)  ; Round_ni(value)
  %499 = fptoui float %498 to i32
  %500 = urem i32 %499, %433
  %501 = udiv i32 %499, %434
  %502 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %503 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %504 = uitofp i32 %500 to float
  %505 = uitofp i32 %501 to float
  %506 = fadd fast float %502, %504
  %507 = fadd fast float %503, %505
  %508 = uitofp i32 %433 to float
  %509 = uitofp i32 %434 to float
  %510 = fdiv fast float %506, %508
  %511 = fdiv fast float %507, %509
  br label %512

; <label>:512                                     ; preds = %487, %414
  %513 = phi float [ %510, %487 ], [ %482, %414 ]
  %514 = phi float [ %511, %487 ], [ %483, %414 ]
  %515 = and i32 %408, 16
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %713, label %517

; <label>:517                                     ; preds = %512
  %518 = add i32 %35, 408
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = add i32 %520, 0
  %522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %522, %dx.types.Handle %72, float %513, float %514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  %525 = extractvalue %dx.types.ResRet.f32 %523, 1
  %526 = extractvalue %dx.types.ResRet.f32 %523, 2
  %527 = extractvalue %dx.types.ResRet.f32 %523, 3
  %528 = and i32 %431, 255
  %529 = uitofp i32 %528 to float
  %530 = lshr i32 %431, 8
  %531 = and i32 %530, 255
  %532 = uitofp i32 %531 to float
  %533 = fmul fast float %527, %529
  %534 = fadd fast float %533, %532
  %535 = fmul fast float %534, 0x3F70101000000000
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 512
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %548, label %540

; <label>:540                                     ; preds = %517
  %541 = add i32 %35, 492
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %543, 0
  %545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %545, %dx.types.Handle %73, float %513, float %514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  br label %548

; <label>:548                                     ; preds = %540, %517
  %549 = phi float [ %547, %540 ], [ 1.000000e+00, %517 ]
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 33554432
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %660, label %554

; <label>:554                                     ; preds = %548
  %555 = add i32 %35, 224
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 65535
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %557, 16
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = add i32 %35, 228
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 65535
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = lshr i32 %568, 24
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = and i32 %568, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = lshr i32 %568, 8
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = lshr i32 %568, 16
  %580 = and i32 %579, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = add i32 %35, 220
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = lshr i32 %585, 24
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %587, 0x3F70101020000000
  %589 = and i32 %585, 255
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = lshr i32 %585, 8
  %593 = and i32 %592, 255
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = lshr i32 %585, 16
  %597 = and i32 %596, 255
  %598 = uitofp i32 %597 to float
  %599 = fmul fast float %598, 0x3F70101020000000
  %600 = bitcast float %524 to i32
  %601 = ashr i32 %600, 1
  %602 = sub nsw i32 1597463174, %601
  %603 = bitcast i32 %602 to float
  %604 = fmul fast float %524, 5.000000e-01
  %605 = fmul fast float %603, %603
  %606 = fmul fast float %605, %604
  %607 = fsub fast float 1.500000e+00, %606
  %608 = fmul fast float %603, %524
  %609 = fmul fast float %608, %607
  %610 = bitcast float %525 to i32
  %611 = ashr i32 %610, 1
  %612 = sub nsw i32 1597463174, %611
  %613 = bitcast i32 %612 to float
  %614 = fmul fast float %525, 5.000000e-01
  %615 = fmul fast float %613, %613
  %616 = fmul fast float %615, %614
  %617 = fsub fast float 1.500000e+00, %616
  %618 = fmul fast float %613, %525
  %619 = fmul fast float %618, %617
  %620 = bitcast float %526 to i32
  %621 = ashr i32 %620, 1
  %622 = sub nsw i32 1597463174, %621
  %623 = bitcast i32 %622 to float
  %624 = fmul fast float %526, 5.000000e-01
  %625 = fmul fast float %623, %623
  %626 = fmul fast float %625, %624
  %627 = fsub fast float 1.500000e+00, %626
  %628 = fmul fast float %623, %526
  %629 = fmul fast float %628, %627
  %630 = fsub fast float %609, %591
  %631 = fsub fast float %619, %595
  %632 = fsub fast float %629, %599
  %633 = fmul fast float %630, %559
  %634 = fmul fast float %631, %561
  %635 = fmul fast float %632, %566
  %636 = fadd fast float %633, %574
  %637 = fadd fast float %634, %578
  %638 = fadd fast float %635, %582
  %639 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %640 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %641 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %642 = fmul fast float %639, %639
  %643 = fmul fast float %640, %640
  %644 = fmul fast float %641, %641
  %645 = fsub fast float %642, %524
  %646 = fsub fast float %643, %525
  %647 = fsub fast float %644, %526
  %648 = fmul fast float %645, %549
  %649 = fmul fast float %646, %549
  %650 = fmul fast float %647, %549
  %651 = fadd fast float %648, %524
  %652 = fadd fast float %649, %525
  %653 = fadd fast float %650, %526
  %654 = fadd fast float %571, %535
  %655 = fsub fast float %654, %588
  %656 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %657 = fsub fast float %656, %535
  %658 = fmul fast float %657, %549
  %659 = fadd fast float %658, %535
  br label %713

; <label>:660                                     ; preds = %548
  %661 = and i32 %551, 134217728
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %697, label %663

; <label>:663                                     ; preds = %660
  %664 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %665 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %666 = call float @dx.op.unary.f32(i32 24, float %203)  ; Sqrt(value)
  %667 = fadd fast float %664, -5.000000e-01
  %668 = fadd fast float %665, -5.000000e-01
  %669 = fadd fast float %666, -5.000000e-01
  %670 = fmul fast float %667, %549
  %671 = fmul fast float %668, %549
  %672 = fmul fast float %669, %549
  %673 = fadd fast float %670, 5.000000e-01
  %674 = fadd fast float %671, 5.000000e-01
  %675 = fadd fast float %672, 5.000000e-01
  %676 = call float @dx.op.unary.f32(i32 24, float %524)  ; Sqrt(value)
  %677 = call float @dx.op.unary.f32(i32 24, float %525)  ; Sqrt(value)
  %678 = call float @dx.op.unary.f32(i32 24, float %526)  ; Sqrt(value)
  %679 = fmul fast float %673, 2.000000e+00
  %680 = fsub fast float 1.000000e+00, %679
  %681 = fmul fast float %680, %676
  %682 = fadd fast float %681, %679
  %683 = fmul fast float %682, %676
  %684 = fmul fast float %674, 2.000000e+00
  %685 = fsub fast float 1.000000e+00, %684
  %686 = fmul fast float %685, %677
  %687 = fadd fast float %686, %684
  %688 = fmul fast float %687, %677
  %689 = fmul fast float %675, 2.000000e+00
  %690 = fsub fast float 1.000000e+00, %689
  %691 = fmul fast float %690, %678
  %692 = fadd fast float %691, %689
  %693 = fmul fast float %692, %678
  %694 = fmul fast float %683, %683
  %695 = fmul fast float %688, %688
  %696 = fmul fast float %693, %693
  br label %713

; <label>:697                                     ; preds = %660
  %698 = fmul fast float %195, %195
  %699 = fmul fast float %199, %199
  %700 = fmul fast float %203, %203
  %701 = fadd fast float %698, -1.000000e+00
  %702 = fadd fast float %699, -1.000000e+00
  %703 = fadd fast float %700, -1.000000e+00
  %704 = fmul fast float %549, %701
  %705 = fmul fast float %549, %702
  %706 = fmul fast float %549, %703
  %707 = fadd fast float %704, 1.000000e+00
  %708 = fadd fast float %705, 1.000000e+00
  %709 = fadd fast float %706, 1.000000e+00
  %710 = fmul fast float %707, %524
  %711 = fmul fast float %708, %525
  %712 = fmul fast float %709, %526
  br label %713

; <label>:713                                     ; preds = %697, %663, %554, %512
  %714 = phi float [ %659, %554 ], [ %535, %663 ], [ %535, %697 ], [ 0x3FA23C0BE0000000, %512 ]
  %715 = phi float [ %651, %554 ], [ %694, %663 ], [ %710, %697 ], [ 1.000000e+00, %512 ]
  %716 = phi float [ %652, %554 ], [ %695, %663 ], [ %711, %697 ], [ 1.000000e+00, %512 ]
  %717 = phi float [ %653, %554 ], [ %696, %663 ], [ %712, %697 ], [ 1.000000e+00, %512 ]
  %718 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %719 = extractvalue %dx.types.CBufRet.i32 %718, 1
  %720 = and i32 %719, 1
  %721 = icmp ne i32 %720, 0
  %722 = add i32 %35, 356
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 32
  %726 = icmp ne i32 %725, 0
  %727 = and i1 %721, %726
  %728 = select i1 %727, float 1.000000e+00, float %715
  %729 = select i1 %727, float 0x3FD3333340000000, float %716
  %730 = select i1 %727, float 0x3FD3333340000000, float %717
  %731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %732 = extractvalue %dx.types.ResRet.i32 %731, 0
  %733 = and i32 %732, 32
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %807, label %735

; <label>:735                                     ; preds = %713
  %736 = add i32 %35, 92
  %737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %736, i32 undef)  ; BufferLoad(srv,index,wot)
  %738 = extractvalue %dx.types.ResRet.i32 %737, 0
  %739 = add i32 %35, 424
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = add i32 %741, 0
  %743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %742, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %744 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %743, %dx.types.Handle %72, float %513, float %514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %745 = extractvalue %dx.types.ResRet.f32 %744, 0
  %746 = extractvalue %dx.types.ResRet.f32 %744, 1
  %747 = extractvalue %dx.types.ResRet.f32 %744, 2
  %748 = extractvalue %dx.types.ResRet.f32 %744, 3
  %749 = and i32 %738, 255
  %750 = uitofp i32 %749 to float
  %751 = lshr i32 %738, 8
  %752 = and i32 %751, 255
  %753 = uitofp i32 %752 to float
  %754 = lshr i32 %738, 16
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, 0x3F70101000000000
  %758 = fmul fast float %745, %750
  %759 = fadd fast float %758, %753
  %760 = fmul fast float %759, 0x3F70101000000000
  %761 = fadd fast float %746, -5.000000e-01
  %762 = fadd fast float %748, -5.000000e-01
  %763 = fmul fast float %761, %757
  %764 = fmul fast float %762, %757
  %765 = fadd fast float %763, 5.000000e-01
  %766 = fadd fast float %764, 5.000000e-01
  %767 = fmul fast float %765, 2.000000e+00
  %768 = fadd fast float %767, -1.000000e+00
  %769 = fmul fast float %766, 2.000000e+00
  %770 = fadd fast float %769, -1.000000e+00
  %771 = fadd fast float %768, %770
  %772 = fmul fast float %771, 5.000000e-01
  %773 = fsub fast float %768, %770
  %774 = fmul fast float %773, 5.000000e-01
  %775 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %776 = fsub fast float 1.000000e+00, %775
  %777 = call float @dx.op.unary.f32(i32 6, float %774)  ; FAbs(value)
  %778 = fsub fast float %776, %777
  %779 = call float @dx.op.dot3.f32(i32 55, float %772, float %774, float %778, float %772, float %774, float %778)  ; Dot3(ax,ay,az,bx,by,bz)
  %780 = call float @dx.op.unary.f32(i32 25, float %779)  ; Rsqrt(value)
  %781 = fmul fast float %772, %780
  %782 = fmul fast float %774, %780
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 67108864
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %803, label %787

; <label>:787                                     ; preds = %735
  %788 = add i32 %35, 280
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = and i32 %790, 65535
  %792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %791)  ; LegacyF16ToF32(value)
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = and i32 %794, 65535
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = lshr i32 %790, 16
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = fsub fast float %760, %798
  %800 = fmul fast float %799, %792
  %801 = fadd fast float %800, %796
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  br label %803

; <label>:803                                     ; preds = %787, %735
  %804 = phi float [ %802, %787 ], [ %760, %735 ]
  %805 = call float @dx.op.dot2.f32(i32 54, float %781, float %782, float %417, float %418)  ; Dot2(ax,ay,bx,by)
  %806 = call float @dx.op.dot2.f32(i32 54, float %781, float %782, float %419, float %420)  ; Dot2(ax,ay,bx,by)
  br label %807

; <label>:807                                     ; preds = %803, %713
  %808 = phi float [ %804, %803 ], [ 0x3FD6666660000000, %713 ]
  %809 = phi float [ %805, %803 ], [ 0.000000e+00, %713 ]
  %810 = phi float [ %806, %803 ], [ 0.000000e+00, %713 ]
  %811 = phi float [ %747, %803 ], [ 1.000000e+00, %713 ]
  %812 = add i32 %35, 160
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = lshr i32 %814, 22
  %816 = shl nuw nsw i32 %815, 5
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 64
  %821 = icmp eq i32 %820, 0
  br i1 %821, label %855, label %822

; <label>:822                                     ; preds = %807
  %823 = add i32 %35, 440
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = add i32 %825, 0
  %827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = and i32 %829, 131072
  %831 = icmp eq i32 %830, 0
  %832 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %827, %dx.types.Handle %72, float %513, float %514, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %833 = extractvalue %dx.types.ResRet.f32 %832, 0
  %834 = extractvalue %dx.types.ResRet.f32 %832, 1
  %835 = extractvalue %dx.types.ResRet.f32 %832, 2
  %836 = fmul fast float %833, %183
  %837 = fmul fast float %834, %186
  %838 = fmul fast float %835, %189
  br i1 %831, label %845, label %839

; <label>:839                                     ; preds = %822
  %840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %841 = extractvalue %dx.types.CBufRet.f32 %840, 0
  %842 = fmul fast float %841, %836
  %843 = fmul fast float %841, %837
  %844 = fmul fast float %841, %838
  br label %845

; <label>:845                                     ; preds = %839, %822
  %846 = phi float [ %842, %839 ], [ %836, %822 ]
  %847 = phi float [ %843, %839 ], [ %837, %822 ]
  %848 = phi float [ %844, %839 ], [ %838, %822 ]
  %849 = fmul fast float %846, %817
  %850 = select i1 %177, float %849, float %846
  %851 = call float @dx.op.dot3.f32(i32 55, float %850, float %847, float %848, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = select i1 %177, float 0.000000e+00, float %846
  %853 = select i1 %177, float %851, float %847
  %854 = select i1 %177, float 0.000000e+00, float %848
  br label %855

; <label>:855                                     ; preds = %845, %807
  %856 = phi float [ %852, %845 ], [ 0.000000e+00, %807 ]
  %857 = phi float [ %853, %845 ], [ 0.000000e+00, %807 ]
  %858 = phi float [ %854, %845 ], [ 0.000000e+00, %807 ]
  %859 = add i32 %35, 96
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 255
  %863 = uitofp i32 %862 to float
  %864 = lshr i32 %861, 8
  %865 = and i32 %864, 255
  %866 = uitofp i32 %865 to float
  %867 = call float @dx.op.dot3.f32(i32 55, float %728, float %729, float %730, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %868 = fmul fast float %866, %867
  %869 = fadd fast float %868, %863
  %870 = fmul fast float %869, 0x3F70101020000000
  %871 = call float @dx.op.unary.f32(i32 7, float %870)  ; Saturate(value)
  br label %872

; <label>:872                                     ; preds = %855, %399
  %873 = phi float [ 0.000000e+00, %399 ], [ %809, %855 ]
  %874 = phi float [ 0.000000e+00, %399 ], [ %810, %855 ]
  %875 = phi float [ 0.000000e+00, %399 ], [ %728, %855 ]
  %876 = phi float [ 0.000000e+00, %399 ], [ %729, %855 ]
  %877 = phi float [ 0.000000e+00, %399 ], [ %730, %855 ]
  %878 = phi float [ 0.000000e+00, %399 ], [ %856, %855 ]
  %879 = phi float [ 0.000000e+00, %399 ], [ %857, %855 ]
  %880 = phi float [ 0.000000e+00, %399 ], [ %858, %855 ]
  %881 = phi float [ 0.000000e+00, %399 ], [ %714, %855 ]
  %882 = phi float [ 0.000000e+00, %399 ], [ 1.000000e+00, %855 ]
  %883 = phi float [ 0.000000e+00, %399 ], [ %808, %855 ]
  %884 = phi float [ 0.000000e+00, %399 ], [ %811, %855 ]
  %885 = phi float [ 0.000000e+00, %399 ], [ %871, %855 ]
  br i1 %350, label %1727, label %886

; <label>:886                                     ; preds = %872
  %887 = icmp ult i32 %405, 2
  %888 = add i32 %35, 40
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = add i32 %35, 44
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = or i32 %893, %890
  %895 = icmp eq i32 %894, 0
  br i1 %895, label %1727, label %896

; <label>:896                                     ; preds = %886
  %897 = and i32 %890, 262144
  %898 = icmp ne i32 %897, 0
  %899 = select i1 %898, float %39, float 1.000000e+00
  %900 = select i1 %898, float %40, float 0.000000e+00
  %901 = select i1 %898, float %41, float 0.000000e+00
  %902 = select i1 %898, float %42, float 1.000000e+00
  %903 = select i1 %898, float %43, float %64
  %904 = select i1 %898, float %44, float %65
  %905 = add i32 %35, 300
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 16
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = fmul fast float %909, 0x3F50624DE0000000
  %911 = add i32 %35, 104
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = lshr i32 %913, 16
  %915 = and i32 %914, 255
  %916 = lshr i32 %913, 24
  %917 = add i32 %35, 308
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = and i32 %919, 65535
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = lshr i32 %919, 16
  %923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %922)  ; LegacyF16ToF32(value)
  %924 = add i32 %35, 48
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = lshr i32 %926, 22
  %928 = shl nuw nsw i32 %927, 5
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = shl i32 %926, 4
  %931 = and i32 %930, 32752
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %926, 7
  %934 = and i32 %933, 32752
  %935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %934)  ; LegacyF16ToF32(value)
  %936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %937 = extractvalue %dx.types.CBufRet.f32 %936, 3
  %938 = fmul fast float %937, 1.000000e+03
  %939 = fmul fast float %260, %938
  %940 = call float @dx.op.unary.f32(i32 22, float %939)  ; Frc(value)
  %941 = fadd fast float %940, %250
  %942 = fmul fast float %261, %938
  %943 = call float @dx.op.unary.f32(i32 22, float %942)  ; Frc(value)
  %944 = fadd fast float %943, %252
  %945 = fmul fast float %910, %938
  %946 = call float @dx.op.unary.f32(i32 22, float %945)  ; Frc(value)
  %947 = fmul fast float %946, 0x401921FB60000000
  %948 = fadd fast float %947, %929
  %949 = call float @dx.op.unary.f32(i32 13, float %948)  ; Sin(value)
  %950 = call float @dx.op.unary.f32(i32 12, float %948)  ; Cos(value)
  %951 = fsub fast float -0.000000e+00, %949
  %952 = fadd fast float %903, -5.000000e-01
  %953 = fadd fast float %904, -5.000000e-01
  %954 = fmul fast float %921, %952
  %955 = fmul fast float %923, %953
  %956 = fadd fast float %954, 5.000000e-01
  %957 = fadd fast float %955, 5.000000e-01
  %958 = fmul fast float %932, %956
  %959 = fmul fast float %935, %957
  %960 = fmul fast float %950, %958
  %961 = call float @dx.op.tertiary.f32(i32 46, float %951, float %959, float %960)  ; FMad(a,b,c)
  %962 = fmul fast float %949, %958
  %963 = call float @dx.op.tertiary.f32(i32 46, float %950, float %959, float %962)  ; FMad(a,b,c)
  %964 = fadd fast float %941, %961
  %965 = fadd fast float %944, %963
  %966 = icmp ugt i32 %915, 1
  %967 = icmp ugt i32 %913, 33554431
  %968 = or i1 %967, %966
  br i1 %968, label %969, label %994

; <label>:969                                     ; preds = %896
  %970 = add i32 %35, 244
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = lshr i32 %972, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = fmul fast float %937, %974
  %976 = call float @dx.op.unary.f32(i32 22, float %975)  ; Frc(value)
  %977 = mul nuw nsw i32 %915, %916
  %978 = uitofp i32 %977 to float
  %979 = fmul fast float %976, %978
  %980 = call float @dx.op.unary.f32(i32 27, float %979)  ; Round_ni(value)
  %981 = fptoui float %980 to i32
  %982 = urem i32 %981, %915
  %983 = udiv i32 %981, %916
  %984 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %985 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %986 = uitofp i32 %982 to float
  %987 = uitofp i32 %983 to float
  %988 = fadd fast float %984, %986
  %989 = fadd fast float %985, %987
  %990 = uitofp i32 %915 to float
  %991 = uitofp i32 %916 to float
  %992 = fdiv fast float %988, %990
  %993 = fdiv fast float %989, %991
  br label %994

; <label>:994                                     ; preds = %969, %896
  %995 = phi float [ %992, %969 ], [ %964, %896 ]
  %996 = phi float [ %993, %969 ], [ %965, %896 ]
  %997 = and i32 %890, 16777216
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1108, label %999

; <label>:999                                     ; preds = %994
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.CBufRet.f32 %1000, 2
  %1004 = fadd fast float %1001, %135
  %1005 = fadd fast float %1002, %136
  %1006 = fadd fast float %1003, %137
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 0
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = icmp eq i32 %36, 65535
  br i1 %1010, label %1105, label %1011

; <label>:1011                                    ; preds = %999
  %1012 = lshr i32 %36, 1
  %1013 = shl i32 %1012, 2
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = and i32 %36, 1
  %1017 = icmp ne i32 %1016, 0
  %1018 = lshr i32 %1015, 16
  %1019 = and i32 %1015, 65535
  %1020 = select i1 %1017, i32 %1018, i32 %1019
  %1021 = icmp eq i32 %1020, 65535
  br i1 %1021, label %1101, label %1022

; <label>:1022                                    ; preds = %1011
  %1023 = mul nuw nsw i32 %1020, 40
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = add nuw nsw i32 %1023, 12
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = add nuw nsw i32 %1023, 24
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = add nuw nsw i32 %1023, 36
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = fsub fast float %1004, %1025
  %1042 = fsub fast float %1005, %1026
  %1043 = fsub fast float %1006, %1027
  %1044 = fmul fast float %1040, %1041
  %1045 = fmul fast float %1040, %1042
  %1046 = fmul fast float %1040, %1043
  %1047 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1048 = call float @dx.op.unary.f32(i32 27, float %1045)  ; Round_ni(value)
  %1049 = call float @dx.op.unary.f32(i32 27, float %1046)  ; Round_ni(value)
  %1050 = fadd fast float %1047, 5.000000e-01
  %1051 = fadd fast float %1048, 5.000000e-01
  %1052 = fadd fast float %1049, 5.000000e-01
  %1053 = fmul fast float %1050, %1030
  %1054 = fmul fast float %1051, %1031
  %1055 = fmul fast float %1052, %1032
  %1056 = shl i32 %36, 2
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = add i32 %1058, 0
  %1060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1061 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1062 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1063 = call float @dx.op.unary.f32(i32 22, float %1055)  ; Frc(value)
  %1064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1060, %dx.types.Handle %30, float %1061, float %1062, float %1063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1065 = extractvalue %dx.types.ResRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.ResRet.f32 %1064, 1
  %1067 = extractvalue %dx.types.ResRet.f32 %1064, 2
  %1068 = fmul fast float %1065, 1.023000e+03
  %1069 = fmul fast float %1066, 1.023000e+03
  %1070 = fmul fast float %1067, 1.023000e+03
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = fadd fast float %1070, 5.000000e-01
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1076 = call float @dx.op.unary.f32(i32 27, float %1073)  ; Round_ni(value)
  %1077 = fsub fast float %1044, %1047
  %1078 = fsub fast float %1045, %1048
  %1079 = fsub fast float %1046, %1049
  %1080 = fmul fast float %1077, 7.500000e-01
  %1081 = fmul fast float %1078, 7.500000e-01
  %1082 = fmul fast float %1079, 7.500000e-01
  %1083 = fadd fast float %1047, 1.250000e-01
  %1084 = fadd fast float %1083, %1080
  %1085 = fadd fast float %1084, %1074
  %1086 = fadd fast float %1048, 1.250000e-01
  %1087 = fadd fast float %1086, %1081
  %1088 = fadd fast float %1087, %1075
  %1089 = fadd fast float %1049, 1.250000e-01
  %1090 = fadd fast float %1089, %1082
  %1091 = fadd fast float %1090, %1076
  %1092 = fmul fast float %1085, %1035
  %1093 = fmul fast float %1088, %1036
  %1094 = fmul fast float %1091, %1037
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = add i32 %1096, 0
  %1098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1098, %dx.types.Handle %28, float %1092, float %1093, float %1094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1100 = extractvalue %dx.types.ResRet.f32 %1099, 0
  br label %1101

; <label>:1101                                    ; preds = %1022, %1011
  %1102 = phi float [ %1100, %1022 ], [ -1.000000e+00, %1011 ]
  %1103 = fadd fast float %1102, %1009
  %1104 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  br label %1105

; <label>:1105                                    ; preds = %1101, %999
  %1106 = phi float [ %1104, %1101 ], [ %1009, %999 ]
  %1107 = fmul fast float %1106, %402
  br label %1108

; <label>:1108                                    ; preds = %1105, %994
  %1109 = phi float [ %1107, %1105 ], [ %402, %994 ]
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = and i32 %1111, 256
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1160, label %1114

; <label>:1114                                    ; preds = %1108
  %1115 = add i32 %35, 476
  %1116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1115, i32 undef)  ; BufferLoad(srv,index,wot)
  %1117 = extractvalue %dx.types.ResRet.i32 %1116, 0
  %1118 = add i32 %1117, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1119, %dx.types.Handle %73, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = add i32 %35, 116
  %1123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1122, i32 undef)  ; BufferLoad(srv,index,wot)
  %1124 = extractvalue %dx.types.ResRet.i32 %1123, 0
  %1125 = shl i32 %1124, 4
  %1126 = and i32 %1125, 32752
  %1127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1126)  ; LegacyF16ToF32(value)
  %1128 = lshr i32 %1124, 7
  %1129 = and i32 %1128, 32752
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = fsub fast float 1.000000e+00, %1109
  %1132 = call float @dx.op.binary.f32(i32 35, float %1131, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1133 = bitcast float %1109 to i32
  %1134 = sitofp i32 %1133 to float
  %1135 = fadd fast float %1134, 0xC1CFBF8940000000
  %1136 = fmul fast float %1130, %1135
  %1137 = fadd fast float %1136, 0x41CFBF8940000000
  %1138 = fptosi float %1137 to i32
  %1139 = bitcast i32 %1138 to float
  %1140 = bitcast float %1132 to i32
  %1141 = sitofp i32 %1140 to float
  %1142 = fadd fast float %1141, 0xC1CFBF8940000000
  %1143 = fmul fast float %1142, %1130
  %1144 = fadd fast float %1143, 0x41CFBF8940000000
  %1145 = fptosi float %1144 to i32
  %1146 = bitcast i32 %1145 to float
  %1147 = fmul fast float %1139, %1127
  %1148 = fmul fast float %1146, %1127
  %1149 = fsub fast float %1132, %1147
  %1150 = fadd fast float %1148, %1132
  %1151 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1152 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  %1153 = fsub fast float %1121, %1151
  %1154 = fsub fast float %1152, %1151
  %1155 = bitcast float %1154 to i32
  %1156 = sub nsw i32 2129859010, %1155
  %1157 = bitcast i32 %1156 to float
  %1158 = fmul fast float %1157, %1153
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  br label %1160

; <label>:1160                                    ; preds = %1114, %1108
  %1161 = phi float [ %1159, %1114 ], [ %1109, %1108 ]
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 128
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1182, label %1166

; <label>:1166                                    ; preds = %1160
  %1167 = add i32 %35, 460
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %73, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = and i32 %1175, 524288
  %1177 = icmp ne i32 %1176, 0
  %1178 = fcmp fast ogt float %1173, 0x3FE0101020000000
  %1179 = select i1 %1178, float 1.000000e+00, float 0.000000e+00
  %1180 = select i1 %1177, float %1179, float %1173
  %1181 = fmul fast float %1180, %1161
  br label %1182

; <label>:1182                                    ; preds = %1166, %1160
  %1183 = phi float [ %1181, %1166 ], [ %1161, %1160 ]
  %1184 = fcmp fast ult float %1183, 0x3F70101020000000
  br i1 %1184, label %1727, label %1185

; <label>:1185                                    ; preds = %1182
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 16
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1388, label %1190

; <label>:1190                                    ; preds = %1185
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = add i32 %35, 412
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = add i32 %1195, 0
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1197, %dx.types.Handle %72, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = extractvalue %dx.types.ResRet.f32 %1198, 3
  %1203 = and i32 %1192, 255
  %1204 = uitofp i32 %1203 to float
  %1205 = lshr i32 %1192, 8
  %1206 = and i32 %1205, 255
  %1207 = uitofp i32 %1206 to float
  %1208 = fmul fast float %1202, %1204
  %1209 = fadd fast float %1208, %1207
  %1210 = fmul fast float %1209, 0x3F70101000000000
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 512
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1223, label %1215

; <label>:1215                                    ; preds = %1190
  %1216 = add i32 %35, 496
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %1218, 0
  %1220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1220, %dx.types.Handle %73, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  br label %1223

; <label>:1223                                    ; preds = %1215, %1190
  %1224 = phi float [ %1222, %1215 ], [ 1.000000e+00, %1190 ]
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 33554432
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1335, label %1229

; <label>:1229                                    ; preds = %1223
  %1230 = add i32 %35, 240
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = and i32 %1232, 65535
  %1234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1233)  ; LegacyF16ToF32(value)
  %1235 = lshr i32 %1232, 16
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = add i32 %35, 244
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 65535
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = lshr i32 %1243, 24
  %1245 = uitofp i32 %1244 to float
  %1246 = fmul fast float %1245, 0x3F70101020000000
  %1247 = and i32 %1243, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = lshr i32 %1243, 8
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = lshr i32 %1243, 16
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = add i32 %35, 236
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1258, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1275 = bitcast float %1199 to i32
  %1276 = ashr i32 %1275, 1
  %1277 = sub nsw i32 1597463174, %1276
  %1278 = bitcast i32 %1277 to float
  %1279 = fmul fast float %1199, 5.000000e-01
  %1280 = fmul fast float %1278, %1278
  %1281 = fmul fast float %1280, %1279
  %1282 = fsub fast float 1.500000e+00, %1281
  %1283 = fmul fast float %1278, %1199
  %1284 = fmul fast float %1283, %1282
  %1285 = bitcast float %1200 to i32
  %1286 = ashr i32 %1285, 1
  %1287 = sub nsw i32 1597463174, %1286
  %1288 = bitcast i32 %1287 to float
  %1289 = fmul fast float %1200, 5.000000e-01
  %1290 = fmul fast float %1288, %1288
  %1291 = fmul fast float %1290, %1289
  %1292 = fsub fast float 1.500000e+00, %1291
  %1293 = fmul fast float %1288, %1200
  %1294 = fmul fast float %1293, %1292
  %1295 = bitcast float %1201 to i32
  %1296 = ashr i32 %1295, 1
  %1297 = sub nsw i32 1597463174, %1296
  %1298 = bitcast i32 %1297 to float
  %1299 = fmul fast float %1201, 5.000000e-01
  %1300 = fmul fast float %1298, %1298
  %1301 = fmul fast float %1300, %1299
  %1302 = fsub fast float 1.500000e+00, %1301
  %1303 = fmul fast float %1298, %1201
  %1304 = fmul fast float %1303, %1302
  %1305 = fsub fast float %1284, %1266
  %1306 = fsub fast float %1294, %1270
  %1307 = fsub fast float %1304, %1274
  %1308 = fmul fast float %1305, %1234
  %1309 = fmul fast float %1306, %1236
  %1310 = fmul fast float %1307, %1241
  %1311 = fadd fast float %1308, %1249
  %1312 = fadd fast float %1309, %1253
  %1313 = fadd fast float %1310, %1257
  %1314 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1315 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1316 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1317 = fmul fast float %1314, %1314
  %1318 = fmul fast float %1315, %1315
  %1319 = fmul fast float %1316, %1316
  %1320 = fsub fast float %1317, %1199
  %1321 = fsub fast float %1318, %1200
  %1322 = fsub fast float %1319, %1201
  %1323 = fmul fast float %1320, %1224
  %1324 = fmul fast float %1321, %1224
  %1325 = fmul fast float %1322, %1224
  %1326 = fadd fast float %1323, %1199
  %1327 = fadd fast float %1324, %1200
  %1328 = fadd fast float %1325, %1201
  %1329 = fadd fast float %1246, %1210
  %1330 = fsub fast float %1329, %1263
  %1331 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1332 = fsub fast float %1331, %1210
  %1333 = fmul fast float %1332, %1224
  %1334 = fadd fast float %1333, %1210
  br label %1388

; <label>:1335                                    ; preds = %1223
  %1336 = and i32 %1226, 134217728
  %1337 = icmp eq i32 %1336, 0
  br i1 %1337, label %1372, label %1338

; <label>:1338                                    ; preds = %1335
  %1339 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1340 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1341 = call float @dx.op.unary.f32(i32 24, float %245)  ; Sqrt(value)
  %1342 = fadd fast float %1339, -5.000000e-01
  %1343 = fadd fast float %1340, -5.000000e-01
  %1344 = fadd fast float %1341, -5.000000e-01
  %1345 = fmul fast float %1342, %1224
  %1346 = fmul fast float %1343, %1224
  %1347 = fmul fast float %1344, %1224
  %1348 = fadd fast float %1345, 5.000000e-01
  %1349 = fadd fast float %1346, 5.000000e-01
  %1350 = fadd fast float %1347, 5.000000e-01
  %1351 = call float @dx.op.unary.f32(i32 24, float %1199)  ; Sqrt(value)
  %1352 = call float @dx.op.unary.f32(i32 24, float %1200)  ; Sqrt(value)
  %1353 = call float @dx.op.unary.f32(i32 24, float %1201)  ; Sqrt(value)
  %1354 = fmul fast float %1348, 2.000000e+00
  %1355 = fsub fast float 1.000000e+00, %1354
  %1356 = fmul fast float %1355, %1351
  %1357 = fadd fast float %1356, %1354
  %1358 = fmul fast float %1357, %1351
  %1359 = fmul fast float %1349, 2.000000e+00
  %1360 = fsub fast float 1.000000e+00, %1359
  %1361 = fmul fast float %1360, %1352
  %1362 = fadd fast float %1361, %1359
  %1363 = fmul fast float %1362, %1352
  %1364 = fmul fast float %1350, 2.000000e+00
  %1365 = fsub fast float 1.000000e+00, %1364
  %1366 = fmul fast float %1365, %1353
  %1367 = fadd fast float %1366, %1364
  %1368 = fmul fast float %1367, %1353
  %1369 = fmul fast float %1358, %1358
  %1370 = fmul fast float %1363, %1363
  %1371 = fmul fast float %1368, %1368
  br label %1388

; <label>:1372                                    ; preds = %1335
  %1373 = fmul fast float %237, %237
  %1374 = fmul fast float %241, %241
  %1375 = fmul fast float %245, %245
  %1376 = fadd fast float %1373, -1.000000e+00
  %1377 = fadd fast float %1374, -1.000000e+00
  %1378 = fadd fast float %1375, -1.000000e+00
  %1379 = fmul fast float %1224, %1376
  %1380 = fmul fast float %1224, %1377
  %1381 = fmul fast float %1224, %1378
  %1382 = fadd fast float %1379, 1.000000e+00
  %1383 = fadd fast float %1380, 1.000000e+00
  %1384 = fadd fast float %1381, 1.000000e+00
  %1385 = fmul fast float %1382, %1199
  %1386 = fmul fast float %1383, %1200
  %1387 = fmul fast float %1384, %1201
  br label %1388

; <label>:1388                                    ; preds = %1372, %1338, %1229, %1185
  %1389 = phi float [ %1334, %1229 ], [ %1210, %1338 ], [ %1210, %1372 ], [ 0x3FA23C0BE0000000, %1185 ]
  %1390 = phi float [ %1326, %1229 ], [ %1369, %1338 ], [ %1385, %1372 ], [ 1.000000e+00, %1185 ]
  %1391 = phi float [ %1327, %1229 ], [ %1370, %1338 ], [ %1386, %1372 ], [ 1.000000e+00, %1185 ]
  %1392 = phi float [ %1328, %1229 ], [ %1371, %1338 ], [ %1387, %1372 ], [ 1.000000e+00, %1185 ]
  %1393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.i32 %1393, 1
  %1395 = and i32 %1394, 1
  %1396 = icmp ne i32 %1395, 0
  %1397 = add i32 %35, 356
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %1399, 32
  %1401 = icmp ne i32 %1400, 0
  %1402 = and i1 %1396, %1401
  %1403 = select i1 %1402, float 1.000000e+00, float %1390
  %1404 = select i1 %1402, float 0x3FD3333340000000, float %1391
  %1405 = select i1 %1402, float 0x3FD3333340000000, float %1392
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = and i32 %1407, 32
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1482, label %1410

; <label>:1410                                    ; preds = %1388
  %1411 = add i32 %35, 108
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = add i32 %35, 428
  %1415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1414, i32 undef)  ; BufferLoad(srv,index,wot)
  %1416 = extractvalue %dx.types.ResRet.i32 %1415, 0
  %1417 = add i32 %1416, 0
  %1418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1418, %dx.types.Handle %72, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1420 = extractvalue %dx.types.ResRet.f32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.f32 %1419, 1
  %1422 = extractvalue %dx.types.ResRet.f32 %1419, 2
  %1423 = extractvalue %dx.types.ResRet.f32 %1419, 3
  %1424 = and i32 %1413, 255
  %1425 = uitofp i32 %1424 to float
  %1426 = lshr i32 %1413, 8
  %1427 = and i32 %1426, 255
  %1428 = uitofp i32 %1427 to float
  %1429 = lshr i32 %1413, 16
  %1430 = and i32 %1429, 255
  %1431 = uitofp i32 %1430 to float
  %1432 = fmul fast float %1431, 0x3F70101000000000
  %1433 = fmul fast float %1420, %1425
  %1434 = fadd fast float %1433, %1428
  %1435 = fmul fast float %1434, 0x3F70101000000000
  %1436 = fadd fast float %1421, -5.000000e-01
  %1437 = fadd fast float %1423, -5.000000e-01
  %1438 = fmul fast float %1436, %1432
  %1439 = fmul fast float %1437, %1432
  %1440 = fadd fast float %1438, 5.000000e-01
  %1441 = fadd fast float %1439, 5.000000e-01
  %1442 = fmul fast float %1440, 2.000000e+00
  %1443 = fadd fast float %1442, -1.000000e+00
  %1444 = fmul fast float %1441, 2.000000e+00
  %1445 = fadd fast float %1444, -1.000000e+00
  %1446 = fadd fast float %1443, %1445
  %1447 = fmul fast float %1446, 5.000000e-01
  %1448 = fsub fast float %1443, %1445
  %1449 = fmul fast float %1448, 5.000000e-01
  %1450 = call float @dx.op.unary.f32(i32 6, float %1447)  ; FAbs(value)
  %1451 = fsub fast float 1.000000e+00, %1450
  %1452 = call float @dx.op.unary.f32(i32 6, float %1449)  ; FAbs(value)
  %1453 = fsub fast float %1451, %1452
  %1454 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1449, float %1453, float %1447, float %1449, float %1453)  ; Dot3(ax,ay,az,bx,by,bz)
  %1455 = call float @dx.op.unary.f32(i32 25, float %1454)  ; Rsqrt(value)
  %1456 = fmul fast float %1447, %1455
  %1457 = fmul fast float %1449, %1455
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 67108864
  %1461 = icmp eq i32 %1460, 0
  br i1 %1461, label %1478, label %1462

; <label>:1462                                    ; preds = %1410
  %1463 = add i32 %35, 296
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 65535
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = and i32 %1469, 65535
  %1471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1470)  ; LegacyF16ToF32(value)
  %1472 = lshr i32 %1465, 16
  %1473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1472)  ; LegacyF16ToF32(value)
  %1474 = fsub fast float %1435, %1473
  %1475 = fmul fast float %1474, %1467
  %1476 = fadd fast float %1475, %1471
  %1477 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  br label %1478

; <label>:1478                                    ; preds = %1462, %1410
  %1479 = phi float [ %1477, %1462 ], [ %1435, %1410 ]
  %1480 = call float @dx.op.dot2.f32(i32 54, float %1456, float %1457, float %899, float %900)  ; Dot2(ax,ay,bx,by)
  %1481 = call float @dx.op.dot2.f32(i32 54, float %1456, float %1457, float %901, float %902)  ; Dot2(ax,ay,bx,by)
  br label %1482

; <label>:1482                                    ; preds = %1478, %1388
  %1483 = phi float [ %1479, %1478 ], [ 0x3FD6666660000000, %1388 ]
  %1484 = phi float [ %1480, %1478 ], [ 0.000000e+00, %1388 ]
  %1485 = phi float [ %1481, %1478 ], [ 0.000000e+00, %1388 ]
  %1486 = phi float [ %1422, %1478 ], [ 1.000000e+00, %1388 ]
  %1487 = add i32 %35, 176
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = lshr i32 %1489, 22
  %1491 = shl nuw nsw i32 %1490, 5
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 64
  %1496 = icmp eq i32 %1495, 0
  br i1 %1496, label %1530, label %1497

; <label>:1497                                    ; preds = %1482
  %1498 = add i32 %35, 444
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = add i32 %1500, 0
  %1502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = and i32 %1504, 131072
  %1506 = icmp eq i32 %1505, 0
  %1507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1502, %dx.types.Handle %72, float %995, float %996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = fmul fast float %1508, %225
  %1512 = fmul fast float %1509, %228
  %1513 = fmul fast float %1510, %231
  br i1 %1506, label %1520, label %1514

; <label>:1514                                    ; preds = %1497
  %1515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1516 = extractvalue %dx.types.CBufRet.f32 %1515, 0
  %1517 = fmul fast float %1516, %1511
  %1518 = fmul fast float %1516, %1512
  %1519 = fmul fast float %1516, %1513
  br label %1520

; <label>:1520                                    ; preds = %1514, %1497
  %1521 = phi float [ %1517, %1514 ], [ %1511, %1497 ]
  %1522 = phi float [ %1518, %1514 ], [ %1512, %1497 ]
  %1523 = phi float [ %1519, %1514 ], [ %1513, %1497 ]
  %1524 = fmul fast float %1521, %1492
  %1525 = select i1 %177, float %1524, float %1521
  %1526 = call float @dx.op.dot3.f32(i32 55, float %1525, float %1522, float %1523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1527 = select i1 %177, float 0.000000e+00, float %1521
  %1528 = select i1 %177, float %1526, float %1522
  %1529 = select i1 %177, float 0.000000e+00, float %1523
  br label %1530

; <label>:1530                                    ; preds = %1520, %1482
  %1531 = phi float [ %1527, %1520 ], [ 0.000000e+00, %1482 ]
  %1532 = phi float [ %1528, %1520 ], [ 0.000000e+00, %1482 ]
  %1533 = phi float [ %1529, %1520 ], [ 0.000000e+00, %1482 ]
  %1534 = add i32 %35, 112
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 255
  %1538 = uitofp i32 %1537 to float
  %1539 = lshr i32 %1536, 8
  %1540 = and i32 %1539, 255
  %1541 = uitofp i32 %1540 to float
  %1542 = call float @dx.op.dot3.f32(i32 55, float %1403, float %1404, float %1405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1543 = fmul fast float %1541, %1542
  %1544 = fadd fast float %1543, %1538
  %1545 = fmul fast float %1544, 0x3F70101020000000
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  br i1 %887, label %1547, label %1555

; <label>:1547                                    ; preds = %1530
  %1548 = fsub fast float 1.000000e+00, %1183
  %1549 = fmul fast float %1548, %875
  %1550 = fmul fast float %1548, %876
  %1551 = fmul fast float %1548, %877
  %1552 = fmul fast float %1548, %878
  %1553 = fmul fast float %1548, %879
  %1554 = fmul fast float %1548, %880
  br label %1555

; <label>:1555                                    ; preds = %1547, %1530
  %1556 = phi float [ %1549, %1547 ], [ %875, %1530 ]
  %1557 = phi float [ %1550, %1547 ], [ %876, %1530 ]
  %1558 = phi float [ %1551, %1547 ], [ %877, %1530 ]
  %1559 = phi float [ %1552, %1547 ], [ %878, %1530 ]
  %1560 = phi float [ %1553, %1547 ], [ %879, %1530 ]
  %1561 = phi float [ %1554, %1547 ], [ %880, %1530 ]
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 3
  %1565 = icmp eq i32 %1564, 3
  br i1 %1565, label %1644, label %1566

; <label>:1566                                    ; preds = %1555
  %1567 = and i32 %1563, 16
  %1568 = icmp ne i32 %1567, 0
  %1569 = select i1 %1568, float %1183, float 0.000000e+00
  %1570 = icmp eq i32 %1564, 0
  br i1 %1570, label %1571, label %1599

; <label>:1571                                    ; preds = %1566
  %1572 = and i32 %1563, 64
  %1573 = icmp ne i32 %1572, 0
  %1574 = select i1 %1573, float %1183, float 0.000000e+00
  %1575 = fsub fast float %1403, %1556
  %1576 = fsub fast float %1404, %1557
  %1577 = fsub fast float %1405, %1558
  %1578 = fmul fast float %1569, %1575
  %1579 = fmul fast float %1569, %1576
  %1580 = fmul fast float %1569, %1577
  %1581 = fadd fast float %1578, %1556
  %1582 = fadd fast float %1579, %1557
  %1583 = fadd fast float %1580, %1558
  %1584 = fsub fast float %1389, %881
  %1585 = fmul fast float %1569, %1584
  %1586 = fadd fast float %1585, %881
  %1587 = fsub fast float %1531, %1559
  %1588 = fsub fast float %1532, %1560
  %1589 = fsub fast float %1533, %1561
  %1590 = fmul fast float %1574, %1587
  %1591 = fmul fast float %1574, %1588
  %1592 = fmul fast float %1574, %1589
  %1593 = fadd fast float %1590, %1559
  %1594 = fadd fast float %1591, %1560
  %1595 = fadd fast float %1592, %1561
  %1596 = fsub fast float %1546, %885
  %1597 = fmul fast float %1569, %1596
  %1598 = fadd fast float %1597, %885
  br label %1644

; <label>:1599                                    ; preds = %1566
  %1600 = icmp eq i32 %1564, 1
  br i1 %1600, label %1601, label %1614

; <label>:1601                                    ; preds = %1599
  %1602 = fadd fast float %1403, -1.000000e+00
  %1603 = fadd fast float %1404, -1.000000e+00
  %1604 = fadd fast float %1405, -1.000000e+00
  %1605 = fmul fast float %1569, %1602
  %1606 = fmul fast float %1569, %1603
  %1607 = fmul fast float %1569, %1604
  %1608 = fadd fast float %1605, 1.000000e+00
  %1609 = fadd fast float %1606, 1.000000e+00
  %1610 = fadd fast float %1607, 1.000000e+00
  %1611 = fmul fast float %1608, %1556
  %1612 = fmul fast float %1609, %1557
  %1613 = fmul fast float %1610, %1558
  br label %1644

; <label>:1614                                    ; preds = %1599
  %1615 = icmp eq i32 %1564, 2
  br i1 %1615, label %1616, label %1644

; <label>:1616                                    ; preds = %1614
  %1617 = call float @dx.op.unary.f32(i32 24, float %1403)  ; Sqrt(value)
  %1618 = call float @dx.op.unary.f32(i32 24, float %1404)  ; Sqrt(value)
  %1619 = call float @dx.op.unary.f32(i32 24, float %1405)  ; Sqrt(value)
  %1620 = fadd fast float %1617, -5.000000e-01
  %1621 = fadd fast float %1618, -5.000000e-01
  %1622 = fadd fast float %1619, -5.000000e-01
  %1623 = fmul fast float %1620, %1569
  %1624 = fmul fast float %1621, %1569
  %1625 = fmul fast float %1622, %1569
  %1626 = fadd fast float %1623, 5.000000e-01
  %1627 = fadd fast float %1624, 5.000000e-01
  %1628 = fadd fast float %1625, 5.000000e-01
  %1629 = fmul fast float %1626, 2.000000e+00
  %1630 = fsub fast float 1.000000e+00, %1629
  %1631 = fmul fast float %1630, %1556
  %1632 = fadd fast float %1631, %1629
  %1633 = fmul fast float %1632, %1556
  %1634 = fmul fast float %1627, 2.000000e+00
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1635, %1557
  %1637 = fadd fast float %1636, %1634
  %1638 = fmul fast float %1637, %1557
  %1639 = fmul fast float %1628, 2.000000e+00
  %1640 = fsub fast float 1.000000e+00, %1639
  %1641 = fmul fast float %1640, %1558
  %1642 = fadd fast float %1641, %1639
  %1643 = fmul fast float %1642, %1558
  br label %1644

; <label>:1644                                    ; preds = %1616, %1614, %1601, %1571, %1555
  %1645 = phi float [ %1556, %1555 ], [ %1633, %1616 ], [ %1556, %1614 ], [ %1611, %1601 ], [ %1581, %1571 ]
  %1646 = phi float [ %1557, %1555 ], [ %1638, %1616 ], [ %1557, %1614 ], [ %1612, %1601 ], [ %1582, %1571 ]
  %1647 = phi float [ %1558, %1555 ], [ %1643, %1616 ], [ %1558, %1614 ], [ %1613, %1601 ], [ %1583, %1571 ]
  %1648 = phi float [ %1559, %1555 ], [ %1559, %1616 ], [ %1559, %1614 ], [ %1559, %1601 ], [ %1593, %1571 ]
  %1649 = phi float [ %1560, %1555 ], [ %1560, %1616 ], [ %1560, %1614 ], [ %1560, %1601 ], [ %1594, %1571 ]
  %1650 = phi float [ %1561, %1555 ], [ %1561, %1616 ], [ %1561, %1614 ], [ %1561, %1601 ], [ %1595, %1571 ]
  %1651 = phi float [ %881, %1555 ], [ %881, %1616 ], [ %881, %1614 ], [ %881, %1601 ], [ %1586, %1571 ]
  %1652 = phi float [ %885, %1555 ], [ %885, %1616 ], [ %885, %1614 ], [ %885, %1601 ], [ %1598, %1571 ]
  %1653 = and i32 %1563, 12
  %1654 = icmp eq i32 %1653, 12
  br i1 %1654, label %1727, label %1655

; <label>:1655                                    ; preds = %1644
  %1656 = and i32 %1563, 2097184
  %1657 = icmp eq i32 %1656, 2097184
  %1658 = select i1 %1657, float %1183, float 0.000000e+00
  %1659 = and i32 %1563, 4194336
  %1660 = icmp eq i32 %1659, 4194336
  %1661 = select i1 %1660, float %1183, float 0.000000e+00
  %1662 = and i32 %1563, 8388640
  %1663 = icmp eq i32 %1662, 8388640
  %1664 = select i1 %1663, float %1183, float 0.000000e+00
  %1665 = icmp eq i32 %1653, 0
  br i1 %1665, label %1666, label %1679

; <label>:1666                                    ; preds = %1655
  %1667 = fsub fast float %1484, %873
  %1668 = fsub fast float %1485, %874
  %1669 = fmul fast float %1658, %1667
  %1670 = fmul fast float %1658, %1668
  %1671 = fadd fast float %1669, %873
  %1672 = fadd fast float %1670, %874
  %1673 = fsub fast float %1486, %884
  %1674 = fmul fast float %1661, %1673
  %1675 = fadd fast float %1674, %884
  %1676 = fsub fast float %1483, %883
  %1677 = fmul fast float %1664, %1676
  %1678 = fadd fast float %1677, %883
  br label %1727

; <label>:1679                                    ; preds = %1655
  %1680 = icmp eq i32 %1653, 4
  br i1 %1680, label %1681, label %1713

; <label>:1681                                    ; preds = %1679
  %1682 = fmul fast float %1658, %1484
  %1683 = fmul fast float %1658, %1485
  %1684 = fadd fast float %1682, %873
  %1685 = fadd fast float %1683, %874
  %1686 = call float @dx.op.binary.f32(i32 36, float %884, float %1486)  ; FMin(a,b)
  %1687 = fsub fast float %1686, %884
  %1688 = fmul fast float %1687, %1661
  %1689 = fadd fast float %1688, %884
  %1690 = fadd fast float %1483, %883
  %1691 = fmul fast float %1690, 0x3FF337FAE0000000
  %1692 = fmul fast float %883, %883
  %1693 = fmul fast float %1483, %1483
  %1694 = fadd fast float %1693, %1692
  %1695 = fmul fast float %1694, 0x3FE5152B00000000
  %1696 = fmul fast float %883, 0xBFCC1F85E0000000
  %1697 = fmul fast float %1696, %1483
  %1698 = fadd fast float %1697, 0xBFE1363700000000
  %1699 = fadd fast float %1698, %1691
  %1700 = fsub fast float %1699, %1695
  %1701 = fmul fast float %1690, 0x3FBA6F0D00000000
  %1702 = fmul fast float %1694, 0x3FD0432880000000
  %1703 = fmul fast float %883, 0xBFEF110800000000
  %1704 = fmul fast float %1703, %1483
  %1705 = fadd fast float %1704, 1.000000e+00
  %1706 = fsub fast float %1705, %1701
  %1707 = fadd fast float %1706, %1702
  %1708 = fdiv fast float %1700, %1707
  %1709 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1710 = fsub fast float %1709, %883
  %1711 = fmul fast float %1710, %1664
  %1712 = fadd fast float %1711, %883
  br label %1727

; <label>:1713                                    ; preds = %1679
  %1714 = icmp eq i32 %1653, 8
  br i1 %1714, label %1715, label %1727

; <label>:1715                                    ; preds = %1713
  %1716 = fmul fast float %1658, %1484
  %1717 = fmul fast float %1658, %1485
  %1718 = fadd fast float %1716, %873
  %1719 = fadd fast float %1717, %874
  %1720 = call float @dx.op.binary.f32(i32 36, float %884, float %1486)  ; FMin(a,b)
  %1721 = fsub fast float %1720, %884
  %1722 = fmul fast float %1721, %1661
  %1723 = fadd fast float %1722, %884
  %1724 = fsub fast float %1483, %883
  %1725 = fmul fast float %1664, %1724
  %1726 = fadd fast float %1725, %883
  br label %1727

; <label>:1727                                    ; preds = %1715, %1713, %1681, %1666, %1644, %1182, %886, %872
  %1728 = phi float [ %873, %1644 ], [ %873, %1182 ], [ %873, %872 ], [ %1718, %1715 ], [ %873, %1713 ], [ %1684, %1681 ], [ %1671, %1666 ], [ %873, %886 ]
  %1729 = phi float [ %874, %1644 ], [ %874, %1182 ], [ %874, %872 ], [ %1719, %1715 ], [ %874, %1713 ], [ %1685, %1681 ], [ %1672, %1666 ], [ %874, %886 ]
  %1730 = phi float [ %1645, %1644 ], [ %875, %1182 ], [ %875, %872 ], [ %1645, %1715 ], [ %1645, %1713 ], [ %1645, %1681 ], [ %1645, %1666 ], [ %875, %886 ]
  %1731 = phi float [ %1646, %1644 ], [ %876, %1182 ], [ %876, %872 ], [ %1646, %1715 ], [ %1646, %1713 ], [ %1646, %1681 ], [ %1646, %1666 ], [ %876, %886 ]
  %1732 = phi float [ %1647, %1644 ], [ %877, %1182 ], [ %877, %872 ], [ %1647, %1715 ], [ %1647, %1713 ], [ %1647, %1681 ], [ %1647, %1666 ], [ %877, %886 ]
  %1733 = phi float [ %1648, %1644 ], [ %878, %1182 ], [ %878, %872 ], [ %1648, %1715 ], [ %1648, %1713 ], [ %1648, %1681 ], [ %1648, %1666 ], [ %878, %886 ]
  %1734 = phi float [ %1649, %1644 ], [ %879, %1182 ], [ %879, %872 ], [ %1649, %1715 ], [ %1649, %1713 ], [ %1649, %1681 ], [ %1649, %1666 ], [ %879, %886 ]
  %1735 = phi float [ %1650, %1644 ], [ %880, %1182 ], [ %880, %872 ], [ %1650, %1715 ], [ %1650, %1713 ], [ %1650, %1681 ], [ %1650, %1666 ], [ %880, %886 ]
  %1736 = phi float [ %1651, %1644 ], [ %881, %1182 ], [ %881, %872 ], [ %1651, %1715 ], [ %1651, %1713 ], [ %1651, %1681 ], [ %1651, %1666 ], [ %881, %886 ]
  %1737 = phi float [ %883, %1644 ], [ %883, %1182 ], [ %883, %872 ], [ %1726, %1715 ], [ %883, %1713 ], [ %1712, %1681 ], [ %1678, %1666 ], [ %883, %886 ]
  %1738 = phi float [ %884, %1644 ], [ %884, %1182 ], [ %884, %872 ], [ %1723, %1715 ], [ %884, %1713 ], [ %1689, %1681 ], [ %1675, %1666 ], [ %884, %886 ]
  %1739 = phi float [ %1652, %1644 ], [ %885, %1182 ], [ %885, %872 ], [ %1652, %1715 ], [ %1652, %1713 ], [ %1652, %1681 ], [ %1652, %1666 ], [ %885, %886 ]
  br i1 %352, label %2581, label %1740

; <label>:1740                                    ; preds = %1727
  %1741 = icmp ult i32 %405, 3
  %1742 = add i32 %35, 56
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = add i32 %35, 60
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = or i32 %1747, %1744
  %1749 = icmp eq i32 %1748, 0
  br i1 %1749, label %2581, label %1750

; <label>:1750                                    ; preds = %1740
  %1751 = and i32 %1744, 262144
  %1752 = icmp ne i32 %1751, 0
  %1753 = select i1 %1752, float %39, float 1.000000e+00
  %1754 = select i1 %1752, float %40, float 0.000000e+00
  %1755 = select i1 %1752, float %41, float 0.000000e+00
  %1756 = select i1 %1752, float %42, float 1.000000e+00
  %1757 = select i1 %1752, float %43, float %64
  %1758 = select i1 %1752, float %44, float %65
  %1759 = add i32 %35, 316
  %1760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %1761 = extractvalue %dx.types.ResRet.i32 %1760, 0
  %1762 = lshr i32 %1761, 16
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = fmul fast float %1763, 0x3F50624DE0000000
  %1765 = add i32 %35, 120
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = lshr i32 %1767, 16
  %1769 = and i32 %1768, 255
  %1770 = lshr i32 %1767, 24
  %1771 = add i32 %35, 324
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1771, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = and i32 %1773, 65535
  %1775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1774)  ; LegacyF16ToF32(value)
  %1776 = lshr i32 %1773, 16
  %1777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1776)  ; LegacyF16ToF32(value)
  %1778 = add i32 %35, 64
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = lshr i32 %1780, 22
  %1782 = shl nuw nsw i32 %1781, 5
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = shl i32 %1780, 4
  %1785 = and i32 %1784, 32752
  %1786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1785)  ; LegacyF16ToF32(value)
  %1787 = lshr i32 %1780, 7
  %1788 = and i32 %1787, 32752
  %1789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1788)  ; LegacyF16ToF32(value)
  %1790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1791 = extractvalue %dx.types.CBufRet.f32 %1790, 3
  %1792 = fmul fast float %1791, 1.000000e+03
  %1793 = fmul fast float %302, %1792
  %1794 = call float @dx.op.unary.f32(i32 22, float %1793)  ; Frc(value)
  %1795 = fadd fast float %1794, %292
  %1796 = fmul fast float %303, %1792
  %1797 = call float @dx.op.unary.f32(i32 22, float %1796)  ; Frc(value)
  %1798 = fadd fast float %1797, %294
  %1799 = fmul fast float %1764, %1792
  %1800 = call float @dx.op.unary.f32(i32 22, float %1799)  ; Frc(value)
  %1801 = fmul fast float %1800, 0x401921FB60000000
  %1802 = fadd fast float %1801, %1783
  %1803 = call float @dx.op.unary.f32(i32 13, float %1802)  ; Sin(value)
  %1804 = call float @dx.op.unary.f32(i32 12, float %1802)  ; Cos(value)
  %1805 = fsub fast float -0.000000e+00, %1803
  %1806 = fadd fast float %1757, -5.000000e-01
  %1807 = fadd fast float %1758, -5.000000e-01
  %1808 = fmul fast float %1775, %1806
  %1809 = fmul fast float %1777, %1807
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fadd fast float %1809, 5.000000e-01
  %1812 = fmul fast float %1786, %1810
  %1813 = fmul fast float %1789, %1811
  %1814 = fmul fast float %1804, %1812
  %1815 = call float @dx.op.tertiary.f32(i32 46, float %1805, float %1813, float %1814)  ; FMad(a,b,c)
  %1816 = fmul fast float %1803, %1812
  %1817 = call float @dx.op.tertiary.f32(i32 46, float %1804, float %1813, float %1816)  ; FMad(a,b,c)
  %1818 = fadd fast float %1795, %1815
  %1819 = fadd fast float %1798, %1817
  %1820 = icmp ugt i32 %1769, 1
  %1821 = icmp ugt i32 %1767, 33554431
  %1822 = or i1 %1821, %1820
  br i1 %1822, label %1823, label %1848

; <label>:1823                                    ; preds = %1750
  %1824 = add i32 %35, 260
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = lshr i32 %1826, 16
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = fmul fast float %1791, %1828
  %1830 = call float @dx.op.unary.f32(i32 22, float %1829)  ; Frc(value)
  %1831 = mul nuw nsw i32 %1769, %1770
  %1832 = uitofp i32 %1831 to float
  %1833 = fmul fast float %1830, %1832
  %1834 = call float @dx.op.unary.f32(i32 27, float %1833)  ; Round_ni(value)
  %1835 = fptoui float %1834 to i32
  %1836 = urem i32 %1835, %1769
  %1837 = udiv i32 %1835, %1770
  %1838 = call float @dx.op.unary.f32(i32 22, float %1818)  ; Frc(value)
  %1839 = call float @dx.op.unary.f32(i32 22, float %1819)  ; Frc(value)
  %1840 = uitofp i32 %1836 to float
  %1841 = uitofp i32 %1837 to float
  %1842 = fadd fast float %1838, %1840
  %1843 = fadd fast float %1839, %1841
  %1844 = uitofp i32 %1769 to float
  %1845 = uitofp i32 %1770 to float
  %1846 = fdiv fast float %1842, %1844
  %1847 = fdiv fast float %1843, %1845
  br label %1848

; <label>:1848                                    ; preds = %1823, %1750
  %1849 = phi float [ %1846, %1823 ], [ %1818, %1750 ]
  %1850 = phi float [ %1847, %1823 ], [ %1819, %1750 ]
  %1851 = and i32 %1744, 16777216
  %1852 = icmp eq i32 %1851, 0
  br i1 %1852, label %1962, label %1853

; <label>:1853                                    ; preds = %1848
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1856 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1857 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1858 = fadd fast float %1855, %135
  %1859 = fadd fast float %1856, %136
  %1860 = fadd fast float %1857, %137
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 0
  %1863 = call float @dx.op.unary.f32(i32 7, float %1862)  ; Saturate(value)
  %1864 = icmp eq i32 %36, 65535
  br i1 %1864, label %1959, label %1865

; <label>:1865                                    ; preds = %1853
  %1866 = lshr i32 %36, 1
  %1867 = shl i32 %1866, 2
  %1868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.i32 %1868, 0
  %1870 = and i32 %36, 1
  %1871 = icmp ne i32 %1870, 0
  %1872 = lshr i32 %1869, 16
  %1873 = and i32 %1869, 65535
  %1874 = select i1 %1871, i32 %1872, i32 %1873
  %1875 = icmp eq i32 %1874, 65535
  br i1 %1875, label %1955, label %1876

; <label>:1876                                    ; preds = %1865
  %1877 = mul nuw nsw i32 %1874, 40
  %1878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = add nuw nsw i32 %1877, 12
  %1883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.ResRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.ResRet.f32 %1883, 2
  %1887 = add nuw nsw i32 %1877, 24
  %1888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.ResRet.f32 %1888, 2
  %1892 = add nuw nsw i32 %1877, 36
  %1893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.f32 %1893, 0
  %1895 = fsub fast float %1858, %1879
  %1896 = fsub fast float %1859, %1880
  %1897 = fsub fast float %1860, %1881
  %1898 = fmul fast float %1894, %1895
  %1899 = fmul fast float %1894, %1896
  %1900 = fmul fast float %1894, %1897
  %1901 = call float @dx.op.unary.f32(i32 27, float %1898)  ; Round_ni(value)
  %1902 = call float @dx.op.unary.f32(i32 27, float %1899)  ; Round_ni(value)
  %1903 = call float @dx.op.unary.f32(i32 27, float %1900)  ; Round_ni(value)
  %1904 = fadd fast float %1901, 5.000000e-01
  %1905 = fadd fast float %1902, 5.000000e-01
  %1906 = fadd fast float %1903, 5.000000e-01
  %1907 = fmul fast float %1904, %1884
  %1908 = fmul fast float %1905, %1885
  %1909 = fmul fast float %1906, %1886
  %1910 = shl i32 %36, 2
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = add i32 %1912, 0
  %1914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1915 = call float @dx.op.unary.f32(i32 22, float %1907)  ; Frc(value)
  %1916 = call float @dx.op.unary.f32(i32 22, float %1908)  ; Frc(value)
  %1917 = call float @dx.op.unary.f32(i32 22, float %1909)  ; Frc(value)
  %1918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1914, %dx.types.Handle %30, float %1915, float %1916, float %1917, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.ResRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.ResRet.f32 %1918, 2
  %1922 = fmul fast float %1919, 1.023000e+03
  %1923 = fmul fast float %1920, 1.023000e+03
  %1924 = fmul fast float %1921, 1.023000e+03
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = fadd fast float %1924, 5.000000e-01
  %1928 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1929 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1930 = call float @dx.op.unary.f32(i32 27, float %1927)  ; Round_ni(value)
  %1931 = fsub fast float %1898, %1901
  %1932 = fsub fast float %1899, %1902
  %1933 = fsub fast float %1900, %1903
  %1934 = fmul fast float %1931, 7.500000e-01
  %1935 = fmul fast float %1932, 7.500000e-01
  %1936 = fmul fast float %1933, 7.500000e-01
  %1937 = fadd fast float %1901, 1.250000e-01
  %1938 = fadd fast float %1937, %1934
  %1939 = fadd fast float %1938, %1928
  %1940 = fadd fast float %1902, 1.250000e-01
  %1941 = fadd fast float %1940, %1935
  %1942 = fadd fast float %1941, %1929
  %1943 = fadd fast float %1903, 1.250000e-01
  %1944 = fadd fast float %1943, %1936
  %1945 = fadd fast float %1944, %1930
  %1946 = fmul fast float %1939, %1889
  %1947 = fmul fast float %1942, %1890
  %1948 = fmul fast float %1945, %1891
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = add i32 %1950, 0
  %1952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1952, %dx.types.Handle %28, float %1946, float %1947, float %1948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1954 = extractvalue %dx.types.ResRet.f32 %1953, 0
  br label %1955

; <label>:1955                                    ; preds = %1876, %1865
  %1956 = phi float [ %1954, %1876 ], [ -1.000000e+00, %1865 ]
  %1957 = fadd fast float %1956, %1863
  %1958 = call float @dx.op.unary.f32(i32 7, float %1957)  ; Saturate(value)
  br label %1959

; <label>:1959                                    ; preds = %1955, %1853
  %1960 = phi float [ %1958, %1955 ], [ %1863, %1853 ]
  %1961 = fmul fast float %1960, %401
  br label %1962

; <label>:1962                                    ; preds = %1959, %1848
  %1963 = phi float [ %1961, %1959 ], [ %401, %1848 ]
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 256
  %1967 = icmp eq i32 %1966, 0
  br i1 %1967, label %2014, label %1968

; <label>:1968                                    ; preds = %1962
  %1969 = add i32 %35, 480
  %1970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.i32 %1970, 0
  %1972 = add i32 %1971, 0
  %1973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1974 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1973, %dx.types.Handle %73, float %1849, float %1850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = add i32 %35, 132
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = shl i32 %1978, 4
  %1980 = and i32 %1979, 32752
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = lshr i32 %1978, 7
  %1983 = and i32 %1982, 32752
  %1984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1983)  ; LegacyF16ToF32(value)
  %1985 = fsub fast float 1.000000e+00, %1963
  %1986 = call float @dx.op.binary.f32(i32 35, float %1985, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1987 = bitcast float %1963 to i32
  %1988 = sitofp i32 %1987 to float
  %1989 = fadd fast float %1988, 0xC1CFBF8940000000
  %1990 = fmul fast float %1984, %1989
  %1991 = fadd fast float %1990, 0x41CFBF8940000000
  %1992 = fptosi float %1991 to i32
  %1993 = bitcast i32 %1992 to float
  %1994 = bitcast float %1986 to i32
  %1995 = sitofp i32 %1994 to float
  %1996 = fadd fast float %1995, 0xC1CFBF8940000000
  %1997 = fmul fast float %1996, %1984
  %1998 = fadd fast float %1997, 0x41CFBF8940000000
  %1999 = fptosi float %1998 to i32
  %2000 = bitcast i32 %1999 to float
  %2001 = fmul fast float %1993, %1981
  %2002 = fmul fast float %2000, %1981
  %2003 = fsub fast float %1986, %2001
  %2004 = fadd fast float %2002, %1986
  %2005 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2006 = call float @dx.op.unary.f32(i32 7, float %2004)  ; Saturate(value)
  %2007 = fsub fast float %1975, %2005
  %2008 = fsub fast float %2006, %2005
  %2009 = bitcast float %2008 to i32
  %2010 = sub nsw i32 2129859010, %2009
  %2011 = bitcast i32 %2010 to float
  %2012 = fmul fast float %2011, %2007
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  br label %2014

; <label>:2014                                    ; preds = %1968, %1962
  %2015 = phi float [ %2013, %1968 ], [ %1963, %1962 ]
  %2016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.i32 %2016, 0
  %2018 = and i32 %2017, 128
  %2019 = icmp eq i32 %2018, 0
  br i1 %2019, label %2036, label %2020

; <label>:2020                                    ; preds = %2014
  %2021 = add i32 %35, 464
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = add i32 %2023, 0
  %2025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2026 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2025, %dx.types.Handle %73, float %1849, float %1850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 524288
  %2031 = icmp ne i32 %2030, 0
  %2032 = fcmp fast ogt float %2027, 0x3FE0101020000000
  %2033 = select i1 %2032, float 1.000000e+00, float 0.000000e+00
  %2034 = select i1 %2031, float %2033, float %2027
  %2035 = fmul fast float %2034, %2015
  br label %2036

; <label>:2036                                    ; preds = %2020, %2014
  %2037 = phi float [ %2035, %2020 ], [ %2015, %2014 ]
  %2038 = fcmp fast ult float %2037, 0x3F70101020000000
  br i1 %2038, label %2581, label %2039

; <label>:2039                                    ; preds = %2036
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, 16
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2242, label %2044

; <label>:2044                                    ; preds = %2039
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = add i32 %35, 416
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = add i32 %2049, 0
  %2051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2050, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2052 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2051, %dx.types.Handle %72, float %1849, float %1850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = extractvalue %dx.types.ResRet.f32 %2052, 3
  %2057 = and i32 %2046, 255
  %2058 = uitofp i32 %2057 to float
  %2059 = lshr i32 %2046, 8
  %2060 = and i32 %2059, 255
  %2061 = uitofp i32 %2060 to float
  %2062 = fmul fast float %2056, %2058
  %2063 = fadd fast float %2062, %2061
  %2064 = fmul fast float %2063, 0x3F70101000000000
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = and i32 %2066, 512
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2077, label %2069

; <label>:2069                                    ; preds = %2044
  %2070 = add i32 %35, 500
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = add i32 %2072, 0
  %2074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2074, %dx.types.Handle %73, float %1849, float %1850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  br label %2077

; <label>:2077                                    ; preds = %2069, %2044
  %2078 = phi float [ %2076, %2069 ], [ 1.000000e+00, %2044 ]
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %2080, 33554432
  %2082 = icmp eq i32 %2081, 0
  br i1 %2082, label %2189, label %2083

; <label>:2083                                    ; preds = %2077
  %2084 = add i32 %35, 256
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 65535
  %2088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2087)  ; LegacyF16ToF32(value)
  %2089 = lshr i32 %2086, 16
  %2090 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2089)  ; LegacyF16ToF32(value)
  %2091 = add i32 %35, 260
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 65535
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = lshr i32 %2097, 24
  %2099 = uitofp i32 %2098 to float
  %2100 = fmul fast float %2099, 0x3F70101020000000
  %2101 = and i32 %2097, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, 0x3F70101020000000
  %2104 = lshr i32 %2097, 8
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = lshr i32 %2097, 16
  %2109 = and i32 %2108, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = add i32 %35, 252
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = lshr i32 %2114, 24
  %2116 = uitofp i32 %2115 to float
  %2117 = fmul fast float %2116, 0x3F70101020000000
  %2118 = and i32 %2114, 255
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = lshr i32 %2114, 8
  %2122 = and i32 %2121, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = lshr i32 %2114, 16
  %2126 = and i32 %2125, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = fmul fast float %2127, 0x3F70101020000000
  %2129 = bitcast float %2053 to i32
  %2130 = ashr i32 %2129, 1
  %2131 = sub nsw i32 1597463174, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2053, 5.000000e-01
  %2134 = fmul fast float %2132, %2132
  %2135 = fmul fast float %2134, %2133
  %2136 = fsub fast float 1.500000e+00, %2135
  %2137 = fmul fast float %2132, %2053
  %2138 = fmul fast float %2137, %2136
  %2139 = bitcast float %2054 to i32
  %2140 = ashr i32 %2139, 1
  %2141 = sub nsw i32 1597463174, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2054, 5.000000e-01
  %2144 = fmul fast float %2142, %2142
  %2145 = fmul fast float %2144, %2143
  %2146 = fsub fast float 1.500000e+00, %2145
  %2147 = fmul fast float %2142, %2054
  %2148 = fmul fast float %2147, %2146
  %2149 = bitcast float %2055 to i32
  %2150 = ashr i32 %2149, 1
  %2151 = sub nsw i32 1597463174, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2055, 5.000000e-01
  %2154 = fmul fast float %2152, %2152
  %2155 = fmul fast float %2154, %2153
  %2156 = fsub fast float 1.500000e+00, %2155
  %2157 = fmul fast float %2152, %2055
  %2158 = fmul fast float %2157, %2156
  %2159 = fsub fast float %2138, %2120
  %2160 = fsub fast float %2148, %2124
  %2161 = fsub fast float %2158, %2128
  %2162 = fmul fast float %2159, %2088
  %2163 = fmul fast float %2160, %2090
  %2164 = fmul fast float %2161, %2095
  %2165 = fadd fast float %2162, %2103
  %2166 = fadd fast float %2163, %2107
  %2167 = fadd fast float %2164, %2111
  %2168 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2169 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2170 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2171 = fmul fast float %2168, %2168
  %2172 = fmul fast float %2169, %2169
  %2173 = fmul fast float %2170, %2170
  %2174 = fsub fast float %2171, %2053
  %2175 = fsub fast float %2172, %2054
  %2176 = fsub fast float %2173, %2055
  %2177 = fmul fast float %2174, %2078
  %2178 = fmul fast float %2175, %2078
  %2179 = fmul fast float %2176, %2078
  %2180 = fadd fast float %2177, %2053
  %2181 = fadd fast float %2178, %2054
  %2182 = fadd fast float %2179, %2055
  %2183 = fadd fast float %2100, %2064
  %2184 = fsub fast float %2183, %2117
  %2185 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2186 = fsub fast float %2185, %2064
  %2187 = fmul fast float %2186, %2078
  %2188 = fadd fast float %2187, %2064
  br label %2242

; <label>:2189                                    ; preds = %2077
  %2190 = and i32 %2080, 134217728
  %2191 = icmp eq i32 %2190, 0
  br i1 %2191, label %2226, label %2192

; <label>:2192                                    ; preds = %2189
  %2193 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2194 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2195 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %2196 = fadd fast float %2193, -5.000000e-01
  %2197 = fadd fast float %2194, -5.000000e-01
  %2198 = fadd fast float %2195, -5.000000e-01
  %2199 = fmul fast float %2196, %2078
  %2200 = fmul fast float %2197, %2078
  %2201 = fmul fast float %2198, %2078
  %2202 = fadd fast float %2199, 5.000000e-01
  %2203 = fadd fast float %2200, 5.000000e-01
  %2204 = fadd fast float %2201, 5.000000e-01
  %2205 = call float @dx.op.unary.f32(i32 24, float %2053)  ; Sqrt(value)
  %2206 = call float @dx.op.unary.f32(i32 24, float %2054)  ; Sqrt(value)
  %2207 = call float @dx.op.unary.f32(i32 24, float %2055)  ; Sqrt(value)
  %2208 = fmul fast float %2202, 2.000000e+00
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2209, %2205
  %2211 = fadd fast float %2210, %2208
  %2212 = fmul fast float %2211, %2205
  %2213 = fmul fast float %2203, 2.000000e+00
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = fmul fast float %2214, %2206
  %2216 = fadd fast float %2215, %2213
  %2217 = fmul fast float %2216, %2206
  %2218 = fmul fast float %2204, 2.000000e+00
  %2219 = fsub fast float 1.000000e+00, %2218
  %2220 = fmul fast float %2219, %2207
  %2221 = fadd fast float %2220, %2218
  %2222 = fmul fast float %2221, %2207
  %2223 = fmul fast float %2212, %2212
  %2224 = fmul fast float %2217, %2217
  %2225 = fmul fast float %2222, %2222
  br label %2242

; <label>:2226                                    ; preds = %2189
  %2227 = fmul fast float %279, %279
  %2228 = fmul fast float %283, %283
  %2229 = fmul fast float %287, %287
  %2230 = fadd fast float %2227, -1.000000e+00
  %2231 = fadd fast float %2228, -1.000000e+00
  %2232 = fadd fast float %2229, -1.000000e+00
  %2233 = fmul fast float %2078, %2230
  %2234 = fmul fast float %2078, %2231
  %2235 = fmul fast float %2078, %2232
  %2236 = fadd fast float %2233, 1.000000e+00
  %2237 = fadd fast float %2234, 1.000000e+00
  %2238 = fadd fast float %2235, 1.000000e+00
  %2239 = fmul fast float %2236, %2053
  %2240 = fmul fast float %2237, %2054
  %2241 = fmul fast float %2238, %2055
  br label %2242

; <label>:2242                                    ; preds = %2226, %2192, %2083, %2039
  %2243 = phi float [ %2188, %2083 ], [ %2064, %2192 ], [ %2064, %2226 ], [ 0x3FA23C0BE0000000, %2039 ]
  %2244 = phi float [ %2180, %2083 ], [ %2223, %2192 ], [ %2239, %2226 ], [ 1.000000e+00, %2039 ]
  %2245 = phi float [ %2181, %2083 ], [ %2224, %2192 ], [ %2240, %2226 ], [ 1.000000e+00, %2039 ]
  %2246 = phi float [ %2182, %2083 ], [ %2225, %2192 ], [ %2241, %2226 ], [ 1.000000e+00, %2039 ]
  %2247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2248 = extractvalue %dx.types.CBufRet.i32 %2247, 1
  %2249 = and i32 %2248, 1
  %2250 = icmp ne i32 %2249, 0
  %2251 = add i32 %35, 356
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = and i32 %2253, 32
  %2255 = icmp ne i32 %2254, 0
  %2256 = and i1 %2250, %2255
  %2257 = select i1 %2256, float 1.000000e+00, float %2244
  %2258 = select i1 %2256, float 0x3FD3333340000000, float %2245
  %2259 = select i1 %2256, float 0x3FD3333340000000, float %2246
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 32
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2336, label %2264

; <label>:2264                                    ; preds = %2242
  %2265 = add i32 %35, 124
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %35, 432
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2268, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = add i32 %2270, 0
  %2272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2272, %dx.types.Handle %72, float %1849, float %1850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2274 = extractvalue %dx.types.ResRet.f32 %2273, 0
  %2275 = extractvalue %dx.types.ResRet.f32 %2273, 1
  %2276 = extractvalue %dx.types.ResRet.f32 %2273, 2
  %2277 = extractvalue %dx.types.ResRet.f32 %2273, 3
  %2278 = and i32 %2267, 255
  %2279 = uitofp i32 %2278 to float
  %2280 = lshr i32 %2267, 8
  %2281 = and i32 %2280, 255
  %2282 = uitofp i32 %2281 to float
  %2283 = lshr i32 %2267, 16
  %2284 = and i32 %2283, 255
  %2285 = uitofp i32 %2284 to float
  %2286 = fmul fast float %2285, 0x3F70101000000000
  %2287 = fmul fast float %2274, %2279
  %2288 = fadd fast float %2287, %2282
  %2289 = fmul fast float %2288, 0x3F70101000000000
  %2290 = fadd fast float %2275, -5.000000e-01
  %2291 = fadd fast float %2277, -5.000000e-01
  %2292 = fmul fast float %2290, %2286
  %2293 = fmul fast float %2291, %2286
  %2294 = fadd fast float %2292, 5.000000e-01
  %2295 = fadd fast float %2293, 5.000000e-01
  %2296 = fmul fast float %2294, 2.000000e+00
  %2297 = fadd fast float %2296, -1.000000e+00
  %2298 = fmul fast float %2295, 2.000000e+00
  %2299 = fadd fast float %2298, -1.000000e+00
  %2300 = fadd fast float %2297, %2299
  %2301 = fmul fast float %2300, 5.000000e-01
  %2302 = fsub fast float %2297, %2299
  %2303 = fmul fast float %2302, 5.000000e-01
  %2304 = call float @dx.op.unary.f32(i32 6, float %2301)  ; FAbs(value)
  %2305 = fsub fast float 1.000000e+00, %2304
  %2306 = call float @dx.op.unary.f32(i32 6, float %2303)  ; FAbs(value)
  %2307 = fsub fast float %2305, %2306
  %2308 = call float @dx.op.dot3.f32(i32 55, float %2301, float %2303, float %2307, float %2301, float %2303, float %2307)  ; Dot3(ax,ay,az,bx,by,bz)
  %2309 = call float @dx.op.unary.f32(i32 25, float %2308)  ; Rsqrt(value)
  %2310 = fmul fast float %2301, %2309
  %2311 = fmul fast float %2303, %2309
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 67108864
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %2332, label %2316

; <label>:2316                                    ; preds = %2264
  %2317 = add i32 %35, 312
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 65535
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = and i32 %2323, 65535
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = lshr i32 %2319, 16
  %2327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2326)  ; LegacyF16ToF32(value)
  %2328 = fsub fast float %2289, %2327
  %2329 = fmul fast float %2328, %2321
  %2330 = fadd fast float %2329, %2325
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  br label %2332

; <label>:2332                                    ; preds = %2316, %2264
  %2333 = phi float [ %2331, %2316 ], [ %2289, %2264 ]
  %2334 = call float @dx.op.dot2.f32(i32 54, float %2310, float %2311, float %1753, float %1754)  ; Dot2(ax,ay,bx,by)
  %2335 = call float @dx.op.dot2.f32(i32 54, float %2310, float %2311, float %1755, float %1756)  ; Dot2(ax,ay,bx,by)
  br label %2336

; <label>:2336                                    ; preds = %2332, %2242
  %2337 = phi float [ %2333, %2332 ], [ 0x3FD6666660000000, %2242 ]
  %2338 = phi float [ %2334, %2332 ], [ 0.000000e+00, %2242 ]
  %2339 = phi float [ %2335, %2332 ], [ 0.000000e+00, %2242 ]
  %2340 = phi float [ %2276, %2332 ], [ 1.000000e+00, %2242 ]
  %2341 = add i32 %35, 192
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = lshr i32 %2343, 22
  %2345 = shl nuw nsw i32 %2344, 5
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 64
  %2350 = icmp eq i32 %2349, 0
  br i1 %2350, label %2384, label %2351

; <label>:2351                                    ; preds = %2336
  %2352 = add i32 %35, 448
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = add i32 %2354, 0
  %2356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = and i32 %2358, 131072
  %2360 = icmp eq i32 %2359, 0
  %2361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2356, %dx.types.Handle %72, float %1849, float %1850, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.ResRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.ResRet.f32 %2361, 2
  %2365 = fmul fast float %2362, %267
  %2366 = fmul fast float %2363, %270
  %2367 = fmul fast float %2364, %273
  br i1 %2360, label %2374, label %2368

; <label>:2368                                    ; preds = %2351
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 0
  %2371 = fmul fast float %2370, %2365
  %2372 = fmul fast float %2370, %2366
  %2373 = fmul fast float %2370, %2367
  br label %2374

; <label>:2374                                    ; preds = %2368, %2351
  %2375 = phi float [ %2371, %2368 ], [ %2365, %2351 ]
  %2376 = phi float [ %2372, %2368 ], [ %2366, %2351 ]
  %2377 = phi float [ %2373, %2368 ], [ %2367, %2351 ]
  %2378 = fmul fast float %2375, %2346
  %2379 = select i1 %177, float %2378, float %2375
  %2380 = call float @dx.op.dot3.f32(i32 55, float %2379, float %2376, float %2377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2381 = select i1 %177, float 0.000000e+00, float %2375
  %2382 = select i1 %177, float %2380, float %2376
  %2383 = select i1 %177, float 0.000000e+00, float %2377
  br label %2384

; <label>:2384                                    ; preds = %2374, %2336
  %2385 = phi float [ %2381, %2374 ], [ 0.000000e+00, %2336 ]
  %2386 = phi float [ %2382, %2374 ], [ 0.000000e+00, %2336 ]
  %2387 = phi float [ %2383, %2374 ], [ 0.000000e+00, %2336 ]
  %2388 = add i32 %35, 128
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = and i32 %2390, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = lshr i32 %2390, 8
  %2394 = and i32 %2393, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = call float @dx.op.dot3.f32(i32 55, float %2257, float %2258, float %2259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2397 = fmul fast float %2395, %2396
  %2398 = fadd fast float %2397, %2392
  %2399 = fmul fast float %2398, 0x3F70101020000000
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  br i1 %1741, label %2401, label %2409

; <label>:2401                                    ; preds = %2384
  %2402 = fsub fast float 1.000000e+00, %2037
  %2403 = fmul fast float %2402, %1730
  %2404 = fmul fast float %2402, %1731
  %2405 = fmul fast float %2402, %1732
  %2406 = fmul fast float %2402, %1733
  %2407 = fmul fast float %2402, %1734
  %2408 = fmul fast float %2402, %1735
  br label %2409

; <label>:2409                                    ; preds = %2401, %2384
  %2410 = phi float [ %2403, %2401 ], [ %1730, %2384 ]
  %2411 = phi float [ %2404, %2401 ], [ %1731, %2384 ]
  %2412 = phi float [ %2405, %2401 ], [ %1732, %2384 ]
  %2413 = phi float [ %2406, %2401 ], [ %1733, %2384 ]
  %2414 = phi float [ %2407, %2401 ], [ %1734, %2384 ]
  %2415 = phi float [ %2408, %2401 ], [ %1735, %2384 ]
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = and i32 %2417, 3
  %2419 = icmp eq i32 %2418, 3
  br i1 %2419, label %2498, label %2420

; <label>:2420                                    ; preds = %2409
  %2421 = and i32 %2417, 16
  %2422 = icmp ne i32 %2421, 0
  %2423 = select i1 %2422, float %2037, float 0.000000e+00
  %2424 = icmp eq i32 %2418, 0
  br i1 %2424, label %2425, label %2453

; <label>:2425                                    ; preds = %2420
  %2426 = and i32 %2417, 64
  %2427 = icmp ne i32 %2426, 0
  %2428 = select i1 %2427, float %2037, float 0.000000e+00
  %2429 = fsub fast float %2257, %2410
  %2430 = fsub fast float %2258, %2411
  %2431 = fsub fast float %2259, %2412
  %2432 = fmul fast float %2423, %2429
  %2433 = fmul fast float %2423, %2430
  %2434 = fmul fast float %2423, %2431
  %2435 = fadd fast float %2432, %2410
  %2436 = fadd fast float %2433, %2411
  %2437 = fadd fast float %2434, %2412
  %2438 = fsub fast float %2243, %1736
  %2439 = fmul fast float %2423, %2438
  %2440 = fadd fast float %2439, %1736
  %2441 = fsub fast float %2385, %2413
  %2442 = fsub fast float %2386, %2414
  %2443 = fsub fast float %2387, %2415
  %2444 = fmul fast float %2428, %2441
  %2445 = fmul fast float %2428, %2442
  %2446 = fmul fast float %2428, %2443
  %2447 = fadd fast float %2444, %2413
  %2448 = fadd fast float %2445, %2414
  %2449 = fadd fast float %2446, %2415
  %2450 = fsub fast float %2400, %1739
  %2451 = fmul fast float %2423, %2450
  %2452 = fadd fast float %2451, %1739
  br label %2498

; <label>:2453                                    ; preds = %2420
  %2454 = icmp eq i32 %2418, 1
  br i1 %2454, label %2455, label %2468

; <label>:2455                                    ; preds = %2453
  %2456 = fadd fast float %2257, -1.000000e+00
  %2457 = fadd fast float %2258, -1.000000e+00
  %2458 = fadd fast float %2259, -1.000000e+00
  %2459 = fmul fast float %2423, %2456
  %2460 = fmul fast float %2423, %2457
  %2461 = fmul fast float %2423, %2458
  %2462 = fadd fast float %2459, 1.000000e+00
  %2463 = fadd fast float %2460, 1.000000e+00
  %2464 = fadd fast float %2461, 1.000000e+00
  %2465 = fmul fast float %2462, %2410
  %2466 = fmul fast float %2463, %2411
  %2467 = fmul fast float %2464, %2412
  br label %2498

; <label>:2468                                    ; preds = %2453
  %2469 = icmp eq i32 %2418, 2
  br i1 %2469, label %2470, label %2498

; <label>:2470                                    ; preds = %2468
  %2471 = call float @dx.op.unary.f32(i32 24, float %2257)  ; Sqrt(value)
  %2472 = call float @dx.op.unary.f32(i32 24, float %2258)  ; Sqrt(value)
  %2473 = call float @dx.op.unary.f32(i32 24, float %2259)  ; Sqrt(value)
  %2474 = fadd fast float %2471, -5.000000e-01
  %2475 = fadd fast float %2472, -5.000000e-01
  %2476 = fadd fast float %2473, -5.000000e-01
  %2477 = fmul fast float %2474, %2423
  %2478 = fmul fast float %2475, %2423
  %2479 = fmul fast float %2476, %2423
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = fadd fast float %2478, 5.000000e-01
  %2482 = fadd fast float %2479, 5.000000e-01
  %2483 = fmul fast float %2480, 2.000000e+00
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2484, %2410
  %2486 = fadd fast float %2485, %2483
  %2487 = fmul fast float %2486, %2410
  %2488 = fmul fast float %2481, 2.000000e+00
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = fmul fast float %2489, %2411
  %2491 = fadd fast float %2490, %2488
  %2492 = fmul fast float %2491, %2411
  %2493 = fmul fast float %2482, 2.000000e+00
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2494, %2412
  %2496 = fadd fast float %2495, %2493
  %2497 = fmul fast float %2496, %2412
  br label %2498

; <label>:2498                                    ; preds = %2470, %2468, %2455, %2425, %2409
  %2499 = phi float [ %2410, %2409 ], [ %2487, %2470 ], [ %2410, %2468 ], [ %2465, %2455 ], [ %2435, %2425 ]
  %2500 = phi float [ %2411, %2409 ], [ %2492, %2470 ], [ %2411, %2468 ], [ %2466, %2455 ], [ %2436, %2425 ]
  %2501 = phi float [ %2412, %2409 ], [ %2497, %2470 ], [ %2412, %2468 ], [ %2467, %2455 ], [ %2437, %2425 ]
  %2502 = phi float [ %2413, %2409 ], [ %2413, %2470 ], [ %2413, %2468 ], [ %2413, %2455 ], [ %2447, %2425 ]
  %2503 = phi float [ %2414, %2409 ], [ %2414, %2470 ], [ %2414, %2468 ], [ %2414, %2455 ], [ %2448, %2425 ]
  %2504 = phi float [ %2415, %2409 ], [ %2415, %2470 ], [ %2415, %2468 ], [ %2415, %2455 ], [ %2449, %2425 ]
  %2505 = phi float [ %1736, %2409 ], [ %1736, %2470 ], [ %1736, %2468 ], [ %1736, %2455 ], [ %2440, %2425 ]
  %2506 = phi float [ %1739, %2409 ], [ %1739, %2470 ], [ %1739, %2468 ], [ %1739, %2455 ], [ %2452, %2425 ]
  %2507 = and i32 %2417, 12
  %2508 = icmp eq i32 %2507, 12
  br i1 %2508, label %2581, label %2509

; <label>:2509                                    ; preds = %2498
  %2510 = and i32 %2417, 2097184
  %2511 = icmp eq i32 %2510, 2097184
  %2512 = select i1 %2511, float %2037, float 0.000000e+00
  %2513 = and i32 %2417, 4194336
  %2514 = icmp eq i32 %2513, 4194336
  %2515 = select i1 %2514, float %2037, float 0.000000e+00
  %2516 = and i32 %2417, 8388640
  %2517 = icmp eq i32 %2516, 8388640
  %2518 = select i1 %2517, float %2037, float 0.000000e+00
  %2519 = icmp eq i32 %2507, 0
  br i1 %2519, label %2520, label %2533

; <label>:2520                                    ; preds = %2509
  %2521 = fsub fast float %2338, %1728
  %2522 = fsub fast float %2339, %1729
  %2523 = fmul fast float %2512, %2521
  %2524 = fmul fast float %2512, %2522
  %2525 = fadd fast float %2523, %1728
  %2526 = fadd fast float %2524, %1729
  %2527 = fsub fast float %2340, %1738
  %2528 = fmul fast float %2515, %2527
  %2529 = fadd fast float %2528, %1738
  %2530 = fsub fast float %2337, %1737
  %2531 = fmul fast float %2518, %2530
  %2532 = fadd fast float %2531, %1737
  br label %2581

; <label>:2533                                    ; preds = %2509
  %2534 = icmp eq i32 %2507, 4
  br i1 %2534, label %2535, label %2567

; <label>:2535                                    ; preds = %2533
  %2536 = fmul fast float %2512, %2338
  %2537 = fmul fast float %2512, %2339
  %2538 = fadd fast float %2536, %1728
  %2539 = fadd fast float %2537, %1729
  %2540 = call float @dx.op.binary.f32(i32 36, float %1738, float %2340)  ; FMin(a,b)
  %2541 = fsub fast float %2540, %1738
  %2542 = fmul fast float %2541, %2515
  %2543 = fadd fast float %2542, %1738
  %2544 = fadd fast float %2337, %1737
  %2545 = fmul fast float %2544, 0x3FF337FAE0000000
  %2546 = fmul fast float %1737, %1737
  %2547 = fmul fast float %2337, %2337
  %2548 = fadd fast float %2547, %2546
  %2549 = fmul fast float %2548, 0x3FE5152B00000000
  %2550 = fmul fast float %1737, 0xBFCC1F85E0000000
  %2551 = fmul fast float %2550, %2337
  %2552 = fadd fast float %2551, 0xBFE1363700000000
  %2553 = fadd fast float %2552, %2545
  %2554 = fsub fast float %2553, %2549
  %2555 = fmul fast float %2544, 0x3FBA6F0D00000000
  %2556 = fmul fast float %2548, 0x3FD0432880000000
  %2557 = fmul fast float %1737, 0xBFEF110800000000
  %2558 = fmul fast float %2557, %2337
  %2559 = fadd fast float %2558, 1.000000e+00
  %2560 = fsub fast float %2559, %2555
  %2561 = fadd fast float %2560, %2556
  %2562 = fdiv fast float %2554, %2561
  %2563 = call float @dx.op.unary.f32(i32 7, float %2562)  ; Saturate(value)
  %2564 = fsub fast float %2563, %1737
  %2565 = fmul fast float %2564, %2518
  %2566 = fadd fast float %2565, %1737
  br label %2581

; <label>:2567                                    ; preds = %2533
  %2568 = icmp eq i32 %2507, 8
  br i1 %2568, label %2569, label %2581

; <label>:2569                                    ; preds = %2567
  %2570 = fmul fast float %2512, %2338
  %2571 = fmul fast float %2512, %2339
  %2572 = fadd fast float %2570, %1728
  %2573 = fadd fast float %2571, %1729
  %2574 = call float @dx.op.binary.f32(i32 36, float %1738, float %2340)  ; FMin(a,b)
  %2575 = fsub fast float %2574, %1738
  %2576 = fmul fast float %2575, %2515
  %2577 = fadd fast float %2576, %1738
  %2578 = fsub fast float %2337, %1737
  %2579 = fmul fast float %2518, %2578
  %2580 = fadd fast float %2579, %1737
  br label %2581

; <label>:2581                                    ; preds = %2569, %2567, %2535, %2520, %2498, %2036, %1740, %1727
  %2582 = phi float [ %1728, %2498 ], [ %1728, %2036 ], [ %1728, %1727 ], [ %2572, %2569 ], [ %1728, %2567 ], [ %2538, %2535 ], [ %2525, %2520 ], [ %1728, %1740 ]
  %2583 = phi float [ %1729, %2498 ], [ %1729, %2036 ], [ %1729, %1727 ], [ %2573, %2569 ], [ %1729, %2567 ], [ %2539, %2535 ], [ %2526, %2520 ], [ %1729, %1740 ]
  %2584 = phi float [ %2499, %2498 ], [ %1730, %2036 ], [ %1730, %1727 ], [ %2499, %2569 ], [ %2499, %2567 ], [ %2499, %2535 ], [ %2499, %2520 ], [ %1730, %1740 ]
  %2585 = phi float [ %2500, %2498 ], [ %1731, %2036 ], [ %1731, %1727 ], [ %2500, %2569 ], [ %2500, %2567 ], [ %2500, %2535 ], [ %2500, %2520 ], [ %1731, %1740 ]
  %2586 = phi float [ %2501, %2498 ], [ %1732, %2036 ], [ %1732, %1727 ], [ %2501, %2569 ], [ %2501, %2567 ], [ %2501, %2535 ], [ %2501, %2520 ], [ %1732, %1740 ]
  %2587 = phi float [ %2502, %2498 ], [ %1733, %2036 ], [ %1733, %1727 ], [ %2502, %2569 ], [ %2502, %2567 ], [ %2502, %2535 ], [ %2502, %2520 ], [ %1733, %1740 ]
  %2588 = phi float [ %2503, %2498 ], [ %1734, %2036 ], [ %1734, %1727 ], [ %2503, %2569 ], [ %2503, %2567 ], [ %2503, %2535 ], [ %2503, %2520 ], [ %1734, %1740 ]
  %2589 = phi float [ %2504, %2498 ], [ %1735, %2036 ], [ %1735, %1727 ], [ %2504, %2569 ], [ %2504, %2567 ], [ %2504, %2535 ], [ %2504, %2520 ], [ %1735, %1740 ]
  %2590 = phi float [ %2505, %2498 ], [ %1736, %2036 ], [ %1736, %1727 ], [ %2505, %2569 ], [ %2505, %2567 ], [ %2505, %2535 ], [ %2505, %2520 ], [ %1736, %1740 ]
  %2591 = phi float [ %1737, %2498 ], [ %1737, %2036 ], [ %1737, %1727 ], [ %2580, %2569 ], [ %1737, %2567 ], [ %2566, %2535 ], [ %2532, %2520 ], [ %1737, %1740 ]
  %2592 = phi float [ %1738, %2498 ], [ %1738, %2036 ], [ %1738, %1727 ], [ %2577, %2569 ], [ %1738, %2567 ], [ %2543, %2535 ], [ %2529, %2520 ], [ %1738, %1740 ]
  %2593 = phi float [ %2506, %2498 ], [ %1739, %2036 ], [ %1739, %1727 ], [ %2506, %2569 ], [ %2506, %2567 ], [ %2506, %2535 ], [ %2506, %2520 ], [ %1739, %1740 ]
  br i1 %354, label %3435, label %2594

; <label>:2594                                    ; preds = %2581
  %2595 = icmp ult i32 %405, 4
  %2596 = add i32 %35, 72
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = add i32 %35, 76
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = or i32 %2601, %2598
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %3435, label %2604

; <label>:2604                                    ; preds = %2594
  %2605 = and i32 %2598, 262144
  %2606 = icmp ne i32 %2605, 0
  %2607 = select i1 %2606, float %39, float 1.000000e+00
  %2608 = select i1 %2606, float %40, float 0.000000e+00
  %2609 = select i1 %2606, float %41, float 0.000000e+00
  %2610 = select i1 %2606, float %42, float 1.000000e+00
  %2611 = select i1 %2606, float %43, float %64
  %2612 = select i1 %2606, float %44, float %65
  %2613 = add i32 %35, 332
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = lshr i32 %2615, 16
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = fmul fast float %2617, 0x3F50624DE0000000
  %2619 = add i32 %35, 136
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = lshr i32 %2621, 16
  %2623 = and i32 %2622, 255
  %2624 = lshr i32 %2621, 24
  %2625 = add i32 %35, 340
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 65535
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = lshr i32 %2627, 16
  %2631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2630)  ; LegacyF16ToF32(value)
  %2632 = add i32 %35, 80
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = lshr i32 %2634, 22
  %2636 = shl nuw nsw i32 %2635, 5
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = shl i32 %2634, 4
  %2639 = and i32 %2638, 32752
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = lshr i32 %2634, 7
  %2642 = and i32 %2641, 32752
  %2643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2642)  ; LegacyF16ToF32(value)
  %2644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2645 = extractvalue %dx.types.CBufRet.f32 %2644, 3
  %2646 = fmul fast float %2645, 1.000000e+03
  %2647 = fmul fast float %344, %2646
  %2648 = call float @dx.op.unary.f32(i32 22, float %2647)  ; Frc(value)
  %2649 = fadd fast float %2648, %334
  %2650 = fmul fast float %345, %2646
  %2651 = call float @dx.op.unary.f32(i32 22, float %2650)  ; Frc(value)
  %2652 = fadd fast float %2651, %336
  %2653 = fmul fast float %2618, %2646
  %2654 = call float @dx.op.unary.f32(i32 22, float %2653)  ; Frc(value)
  %2655 = fmul fast float %2654, 0x401921FB60000000
  %2656 = fadd fast float %2655, %2637
  %2657 = call float @dx.op.unary.f32(i32 13, float %2656)  ; Sin(value)
  %2658 = call float @dx.op.unary.f32(i32 12, float %2656)  ; Cos(value)
  %2659 = fsub fast float -0.000000e+00, %2657
  %2660 = fadd fast float %2611, -5.000000e-01
  %2661 = fadd fast float %2612, -5.000000e-01
  %2662 = fmul fast float %2629, %2660
  %2663 = fmul fast float %2631, %2661
  %2664 = fadd fast float %2662, 5.000000e-01
  %2665 = fadd fast float %2663, 5.000000e-01
  %2666 = fmul fast float %2640, %2664
  %2667 = fmul fast float %2643, %2665
  %2668 = fmul fast float %2658, %2666
  %2669 = call float @dx.op.tertiary.f32(i32 46, float %2659, float %2667, float %2668)  ; FMad(a,b,c)
  %2670 = fmul fast float %2657, %2666
  %2671 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2667, float %2670)  ; FMad(a,b,c)
  %2672 = fadd fast float %2649, %2669
  %2673 = fadd fast float %2652, %2671
  %2674 = icmp ugt i32 %2623, 1
  %2675 = icmp ugt i32 %2621, 33554431
  %2676 = or i1 %2675, %2674
  br i1 %2676, label %2677, label %2702

; <label>:2677                                    ; preds = %2604
  %2678 = add i32 %35, 276
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = lshr i32 %2680, 16
  %2682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2681)  ; LegacyF16ToF32(value)
  %2683 = fmul fast float %2645, %2682
  %2684 = call float @dx.op.unary.f32(i32 22, float %2683)  ; Frc(value)
  %2685 = mul nuw nsw i32 %2623, %2624
  %2686 = uitofp i32 %2685 to float
  %2687 = fmul fast float %2684, %2686
  %2688 = call float @dx.op.unary.f32(i32 27, float %2687)  ; Round_ni(value)
  %2689 = fptoui float %2688 to i32
  %2690 = urem i32 %2689, %2623
  %2691 = udiv i32 %2689, %2624
  %2692 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2693 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2694 = uitofp i32 %2690 to float
  %2695 = uitofp i32 %2691 to float
  %2696 = fadd fast float %2692, %2694
  %2697 = fadd fast float %2693, %2695
  %2698 = uitofp i32 %2623 to float
  %2699 = uitofp i32 %2624 to float
  %2700 = fdiv fast float %2696, %2698
  %2701 = fdiv fast float %2697, %2699
  br label %2702

; <label>:2702                                    ; preds = %2677, %2604
  %2703 = phi float [ %2700, %2677 ], [ %2672, %2604 ]
  %2704 = phi float [ %2701, %2677 ], [ %2673, %2604 ]
  %2705 = and i32 %2598, 16777216
  %2706 = icmp eq i32 %2705, 0
  br i1 %2706, label %2816, label %2707

; <label>:2707                                    ; preds = %2702
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.CBufRet.f32 %2708, 2
  %2712 = fadd fast float %2709, %135
  %2713 = fadd fast float %2710, %136
  %2714 = fadd fast float %2711, %137
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = call float @dx.op.unary.f32(i32 7, float %2716)  ; Saturate(value)
  %2718 = icmp eq i32 %36, 65535
  br i1 %2718, label %2813, label %2719

; <label>:2719                                    ; preds = %2707
  %2720 = lshr i32 %36, 1
  %2721 = shl i32 %2720, 2
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = and i32 %36, 1
  %2725 = icmp ne i32 %2724, 0
  %2726 = lshr i32 %2723, 16
  %2727 = and i32 %2723, 65535
  %2728 = select i1 %2725, i32 %2726, i32 %2727
  %2729 = icmp eq i32 %2728, 65535
  br i1 %2729, label %2809, label %2730

; <label>:2730                                    ; preds = %2719
  %2731 = mul nuw nsw i32 %2728, 40
  %2732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.ResRet.f32 %2732, 1
  %2735 = extractvalue %dx.types.ResRet.f32 %2732, 2
  %2736 = add nuw nsw i32 %2731, 12
  %2737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.ResRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.ResRet.f32 %2737, 2
  %2741 = add nuw nsw i32 %2731, 24
  %2742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.ResRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.ResRet.f32 %2742, 2
  %2746 = add nuw nsw i32 %2731, 36
  %2747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = fsub fast float %2712, %2733
  %2750 = fsub fast float %2713, %2734
  %2751 = fsub fast float %2714, %2735
  %2752 = fmul fast float %2748, %2749
  %2753 = fmul fast float %2748, %2750
  %2754 = fmul fast float %2748, %2751
  %2755 = call float @dx.op.unary.f32(i32 27, float %2752)  ; Round_ni(value)
  %2756 = call float @dx.op.unary.f32(i32 27, float %2753)  ; Round_ni(value)
  %2757 = call float @dx.op.unary.f32(i32 27, float %2754)  ; Round_ni(value)
  %2758 = fadd fast float %2755, 5.000000e-01
  %2759 = fadd fast float %2756, 5.000000e-01
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fmul fast float %2758, %2738
  %2762 = fmul fast float %2759, %2739
  %2763 = fmul fast float %2760, %2740
  %2764 = shl i32 %36, 2
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = add i32 %2766, 0
  %2768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2769 = call float @dx.op.unary.f32(i32 22, float %2761)  ; Frc(value)
  %2770 = call float @dx.op.unary.f32(i32 22, float %2762)  ; Frc(value)
  %2771 = call float @dx.op.unary.f32(i32 22, float %2763)  ; Frc(value)
  %2772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2768, %dx.types.Handle %30, float %2769, float %2770, float %2771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2773 = extractvalue %dx.types.ResRet.f32 %2772, 0
  %2774 = extractvalue %dx.types.ResRet.f32 %2772, 1
  %2775 = extractvalue %dx.types.ResRet.f32 %2772, 2
  %2776 = fmul fast float %2773, 1.023000e+03
  %2777 = fmul fast float %2774, 1.023000e+03
  %2778 = fmul fast float %2775, 1.023000e+03
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = fadd fast float %2778, 5.000000e-01
  %2782 = call float @dx.op.unary.f32(i32 27, float %2779)  ; Round_ni(value)
  %2783 = call float @dx.op.unary.f32(i32 27, float %2780)  ; Round_ni(value)
  %2784 = call float @dx.op.unary.f32(i32 27, float %2781)  ; Round_ni(value)
  %2785 = fsub fast float %2752, %2755
  %2786 = fsub fast float %2753, %2756
  %2787 = fsub fast float %2754, %2757
  %2788 = fmul fast float %2785, 7.500000e-01
  %2789 = fmul fast float %2786, 7.500000e-01
  %2790 = fmul fast float %2787, 7.500000e-01
  %2791 = fadd fast float %2755, 1.250000e-01
  %2792 = fadd fast float %2791, %2788
  %2793 = fadd fast float %2792, %2782
  %2794 = fadd fast float %2756, 1.250000e-01
  %2795 = fadd fast float %2794, %2789
  %2796 = fadd fast float %2795, %2783
  %2797 = fadd fast float %2757, 1.250000e-01
  %2798 = fadd fast float %2797, %2790
  %2799 = fadd fast float %2798, %2784
  %2800 = fmul fast float %2793, %2743
  %2801 = fmul fast float %2796, %2744
  %2802 = fmul fast float %2799, %2745
  %2803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2804 = extractvalue %dx.types.ResRet.i32 %2803, 0
  %2805 = add i32 %2804, 0
  %2806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2806, %dx.types.Handle %28, float %2800, float %2801, float %2802, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2808 = extractvalue %dx.types.ResRet.f32 %2807, 0
  br label %2809

; <label>:2809                                    ; preds = %2730, %2719
  %2810 = phi float [ %2808, %2730 ], [ -1.000000e+00, %2719 ]
  %2811 = fadd fast float %2810, %2717
  %2812 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  br label %2813

; <label>:2813                                    ; preds = %2809, %2707
  %2814 = phi float [ %2812, %2809 ], [ %2717, %2707 ]
  %2815 = fmul fast float %2814, %400
  br label %2816

; <label>:2816                                    ; preds = %2813, %2702
  %2817 = phi float [ %2815, %2813 ], [ %400, %2702 ]
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %2819, 256
  %2821 = icmp eq i32 %2820, 0
  br i1 %2821, label %2868, label %2822

; <label>:2822                                    ; preds = %2816
  %2823 = add i32 %35, 484
  %2824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2823, i32 undef)  ; BufferLoad(srv,index,wot)
  %2825 = extractvalue %dx.types.ResRet.i32 %2824, 0
  %2826 = add i32 %2825, 0
  %2827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2826, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2827, %dx.types.Handle %73, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = add i32 %35, 148
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = shl i32 %2832, 4
  %2834 = and i32 %2833, 32752
  %2835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2834)  ; LegacyF16ToF32(value)
  %2836 = lshr i32 %2832, 7
  %2837 = and i32 %2836, 32752
  %2838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2837)  ; LegacyF16ToF32(value)
  %2839 = fsub fast float 1.000000e+00, %2817
  %2840 = call float @dx.op.binary.f32(i32 35, float %2839, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2841 = bitcast float %2817 to i32
  %2842 = sitofp i32 %2841 to float
  %2843 = fadd fast float %2842, 0xC1CFBF8940000000
  %2844 = fmul fast float %2838, %2843
  %2845 = fadd fast float %2844, 0x41CFBF8940000000
  %2846 = fptosi float %2845 to i32
  %2847 = bitcast i32 %2846 to float
  %2848 = bitcast float %2840 to i32
  %2849 = sitofp i32 %2848 to float
  %2850 = fadd fast float %2849, 0xC1CFBF8940000000
  %2851 = fmul fast float %2850, %2838
  %2852 = fadd fast float %2851, 0x41CFBF8940000000
  %2853 = fptosi float %2852 to i32
  %2854 = bitcast i32 %2853 to float
  %2855 = fmul fast float %2847, %2835
  %2856 = fmul fast float %2854, %2835
  %2857 = fsub fast float %2840, %2855
  %2858 = fadd fast float %2856, %2840
  %2859 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2860 = call float @dx.op.unary.f32(i32 7, float %2858)  ; Saturate(value)
  %2861 = fsub fast float %2829, %2859
  %2862 = fsub fast float %2860, %2859
  %2863 = bitcast float %2862 to i32
  %2864 = sub nsw i32 2129859010, %2863
  %2865 = bitcast i32 %2864 to float
  %2866 = fmul fast float %2865, %2861
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  br label %2868

; <label>:2868                                    ; preds = %2822, %2816
  %2869 = phi float [ %2867, %2822 ], [ %2817, %2816 ]
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = and i32 %2871, 128
  %2873 = icmp eq i32 %2872, 0
  br i1 %2873, label %2890, label %2874

; <label>:2874                                    ; preds = %2868
  %2875 = add i32 %35, 468
  %2876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.i32 %2876, 0
  %2878 = add i32 %2877, 0
  %2879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2878, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2880 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2879, %dx.types.Handle %73, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = and i32 %2883, 524288
  %2885 = icmp ne i32 %2884, 0
  %2886 = fcmp fast ogt float %2881, 0x3FE0101020000000
  %2887 = select i1 %2886, float 1.000000e+00, float 0.000000e+00
  %2888 = select i1 %2885, float %2887, float %2881
  %2889 = fmul fast float %2888, %2869
  br label %2890

; <label>:2890                                    ; preds = %2874, %2868
  %2891 = phi float [ %2889, %2874 ], [ %2869, %2868 ]
  %2892 = fcmp fast ult float %2891, 0x3F70101020000000
  br i1 %2892, label %3435, label %2893

; <label>:2893                                    ; preds = %2890
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 16
  %2897 = icmp eq i32 %2896, 0
  br i1 %2897, label %3096, label %2898

; <label>:2898                                    ; preds = %2893
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = add i32 %35, 420
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2901, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = add i32 %2903, 0
  %2905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2905, %dx.types.Handle %72, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.ResRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.ResRet.f32 %2906, 2
  %2910 = extractvalue %dx.types.ResRet.f32 %2906, 3
  %2911 = and i32 %2900, 255
  %2912 = uitofp i32 %2911 to float
  %2913 = lshr i32 %2900, 8
  %2914 = and i32 %2913, 255
  %2915 = uitofp i32 %2914 to float
  %2916 = fmul fast float %2910, %2912
  %2917 = fadd fast float %2916, %2915
  %2918 = fmul fast float %2917, 0x3F70101000000000
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = and i32 %2920, 512
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %2931, label %2923

; <label>:2923                                    ; preds = %2898
  %2924 = add i32 %35, 504
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %2926, 0
  %2928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2928, %dx.types.Handle %73, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2930 = extractvalue %dx.types.ResRet.f32 %2929, 0
  br label %2931

; <label>:2931                                    ; preds = %2923, %2898
  %2932 = phi float [ %2930, %2923 ], [ 1.000000e+00, %2898 ]
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 33554432
  %2936 = icmp eq i32 %2935, 0
  br i1 %2936, label %3043, label %2937

; <label>:2937                                    ; preds = %2931
  %2938 = add i32 %35, 272
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2938, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, 65535
  %2942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2941)  ; LegacyF16ToF32(value)
  %2943 = lshr i32 %2940, 16
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = add i32 %35, 276
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2945, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 65535
  %2949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2948)  ; LegacyF16ToF32(value)
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = lshr i32 %2951, 24
  %2953 = uitofp i32 %2952 to float
  %2954 = fmul fast float %2953, 0x3F70101020000000
  %2955 = and i32 %2951, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = lshr i32 %2951, 8
  %2959 = and i32 %2958, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = lshr i32 %2951, 16
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = add i32 %35, 268
  %2967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.i32 %2967, 0
  %2969 = lshr i32 %2968, 24
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2970, 0x3F70101020000000
  %2972 = and i32 %2968, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = lshr i32 %2968, 8
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = lshr i32 %2968, 16
  %2980 = and i32 %2979, 255
  %2981 = uitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 0x3F70101020000000
  %2983 = bitcast float %2907 to i32
  %2984 = ashr i32 %2983, 1
  %2985 = sub nsw i32 1597463174, %2984
  %2986 = bitcast i32 %2985 to float
  %2987 = fmul fast float %2907, 5.000000e-01
  %2988 = fmul fast float %2986, %2986
  %2989 = fmul fast float %2988, %2987
  %2990 = fsub fast float 1.500000e+00, %2989
  %2991 = fmul fast float %2986, %2907
  %2992 = fmul fast float %2991, %2990
  %2993 = bitcast float %2908 to i32
  %2994 = ashr i32 %2993, 1
  %2995 = sub nsw i32 1597463174, %2994
  %2996 = bitcast i32 %2995 to float
  %2997 = fmul fast float %2908, 5.000000e-01
  %2998 = fmul fast float %2996, %2996
  %2999 = fmul fast float %2998, %2997
  %3000 = fsub fast float 1.500000e+00, %2999
  %3001 = fmul fast float %2996, %2908
  %3002 = fmul fast float %3001, %3000
  %3003 = bitcast float %2909 to i32
  %3004 = ashr i32 %3003, 1
  %3005 = sub nsw i32 1597463174, %3004
  %3006 = bitcast i32 %3005 to float
  %3007 = fmul fast float %2909, 5.000000e-01
  %3008 = fmul fast float %3006, %3006
  %3009 = fmul fast float %3008, %3007
  %3010 = fsub fast float 1.500000e+00, %3009
  %3011 = fmul fast float %3006, %2909
  %3012 = fmul fast float %3011, %3010
  %3013 = fsub fast float %2992, %2974
  %3014 = fsub fast float %3002, %2978
  %3015 = fsub fast float %3012, %2982
  %3016 = fmul fast float %3013, %2942
  %3017 = fmul fast float %3014, %2944
  %3018 = fmul fast float %3015, %2949
  %3019 = fadd fast float %3016, %2957
  %3020 = fadd fast float %3017, %2961
  %3021 = fadd fast float %3018, %2965
  %3022 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3023 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3024 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3025 = fmul fast float %3022, %3022
  %3026 = fmul fast float %3023, %3023
  %3027 = fmul fast float %3024, %3024
  %3028 = fsub fast float %3025, %2907
  %3029 = fsub fast float %3026, %2908
  %3030 = fsub fast float %3027, %2909
  %3031 = fmul fast float %3028, %2932
  %3032 = fmul fast float %3029, %2932
  %3033 = fmul fast float %3030, %2932
  %3034 = fadd fast float %3031, %2907
  %3035 = fadd fast float %3032, %2908
  %3036 = fadd fast float %3033, %2909
  %3037 = fadd fast float %2954, %2918
  %3038 = fsub fast float %3037, %2971
  %3039 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3040 = fsub fast float %3039, %2918
  %3041 = fmul fast float %3040, %2932
  %3042 = fadd fast float %3041, %2918
  br label %3096

; <label>:3043                                    ; preds = %2931
  %3044 = and i32 %2934, 134217728
  %3045 = icmp eq i32 %3044, 0
  br i1 %3045, label %3080, label %3046

; <label>:3046                                    ; preds = %3043
  %3047 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3048 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3049 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %3050 = fadd fast float %3047, -5.000000e-01
  %3051 = fadd fast float %3048, -5.000000e-01
  %3052 = fadd fast float %3049, -5.000000e-01
  %3053 = fmul fast float %3050, %2932
  %3054 = fmul fast float %3051, %2932
  %3055 = fmul fast float %3052, %2932
  %3056 = fadd fast float %3053, 5.000000e-01
  %3057 = fadd fast float %3054, 5.000000e-01
  %3058 = fadd fast float %3055, 5.000000e-01
  %3059 = call float @dx.op.unary.f32(i32 24, float %2907)  ; Sqrt(value)
  %3060 = call float @dx.op.unary.f32(i32 24, float %2908)  ; Sqrt(value)
  %3061 = call float @dx.op.unary.f32(i32 24, float %2909)  ; Sqrt(value)
  %3062 = fmul fast float %3056, 2.000000e+00
  %3063 = fsub fast float 1.000000e+00, %3062
  %3064 = fmul fast float %3063, %3059
  %3065 = fadd fast float %3064, %3062
  %3066 = fmul fast float %3065, %3059
  %3067 = fmul fast float %3057, 2.000000e+00
  %3068 = fsub fast float 1.000000e+00, %3067
  %3069 = fmul fast float %3068, %3060
  %3070 = fadd fast float %3069, %3067
  %3071 = fmul fast float %3070, %3060
  %3072 = fmul fast float %3058, 2.000000e+00
  %3073 = fsub fast float 1.000000e+00, %3072
  %3074 = fmul fast float %3073, %3061
  %3075 = fadd fast float %3074, %3072
  %3076 = fmul fast float %3075, %3061
  %3077 = fmul fast float %3066, %3066
  %3078 = fmul fast float %3071, %3071
  %3079 = fmul fast float %3076, %3076
  br label %3096

; <label>:3080                                    ; preds = %3043
  %3081 = fmul fast float %321, %321
  %3082 = fmul fast float %325, %325
  %3083 = fmul fast float %329, %329
  %3084 = fadd fast float %3081, -1.000000e+00
  %3085 = fadd fast float %3082, -1.000000e+00
  %3086 = fadd fast float %3083, -1.000000e+00
  %3087 = fmul fast float %2932, %3084
  %3088 = fmul fast float %2932, %3085
  %3089 = fmul fast float %2932, %3086
  %3090 = fadd fast float %3087, 1.000000e+00
  %3091 = fadd fast float %3088, 1.000000e+00
  %3092 = fadd fast float %3089, 1.000000e+00
  %3093 = fmul fast float %3090, %2907
  %3094 = fmul fast float %3091, %2908
  %3095 = fmul fast float %3092, %2909
  br label %3096

; <label>:3096                                    ; preds = %3080, %3046, %2937, %2893
  %3097 = phi float [ %3042, %2937 ], [ %2918, %3046 ], [ %2918, %3080 ], [ 0x3FA23C0BE0000000, %2893 ]
  %3098 = phi float [ %3034, %2937 ], [ %3077, %3046 ], [ %3093, %3080 ], [ 1.000000e+00, %2893 ]
  %3099 = phi float [ %3035, %2937 ], [ %3078, %3046 ], [ %3094, %3080 ], [ 1.000000e+00, %2893 ]
  %3100 = phi float [ %3036, %2937 ], [ %3079, %3046 ], [ %3095, %3080 ], [ 1.000000e+00, %2893 ]
  %3101 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3102 = extractvalue %dx.types.CBufRet.i32 %3101, 1
  %3103 = and i32 %3102, 1
  %3104 = icmp ne i32 %3103, 0
  %3105 = add i32 %35, 356
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = and i32 %3107, 32
  %3109 = icmp ne i32 %3108, 0
  %3110 = and i1 %3104, %3109
  %3111 = select i1 %3110, float 1.000000e+00, float %3098
  %3112 = select i1 %3110, float 0x3FD3333340000000, float %3099
  %3113 = select i1 %3110, float 0x3FD3333340000000, float %3100
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 32
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3190, label %3118

; <label>:3118                                    ; preds = %3096
  %3119 = add i32 %35, 140
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %35, 436
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = add i32 %3124, 0
  %3126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3125, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3127 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3126, %dx.types.Handle %72, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3128 = extractvalue %dx.types.ResRet.f32 %3127, 0
  %3129 = extractvalue %dx.types.ResRet.f32 %3127, 1
  %3130 = extractvalue %dx.types.ResRet.f32 %3127, 2
  %3131 = extractvalue %dx.types.ResRet.f32 %3127, 3
  %3132 = and i32 %3121, 255
  %3133 = uitofp i32 %3132 to float
  %3134 = lshr i32 %3121, 8
  %3135 = and i32 %3134, 255
  %3136 = uitofp i32 %3135 to float
  %3137 = lshr i32 %3121, 16
  %3138 = and i32 %3137, 255
  %3139 = uitofp i32 %3138 to float
  %3140 = fmul fast float %3139, 0x3F70101000000000
  %3141 = fmul fast float %3128, %3133
  %3142 = fadd fast float %3141, %3136
  %3143 = fmul fast float %3142, 0x3F70101000000000
  %3144 = fadd fast float %3129, -5.000000e-01
  %3145 = fadd fast float %3131, -5.000000e-01
  %3146 = fmul fast float %3144, %3140
  %3147 = fmul fast float %3145, %3140
  %3148 = fadd fast float %3146, 5.000000e-01
  %3149 = fadd fast float %3147, 5.000000e-01
  %3150 = fmul fast float %3148, 2.000000e+00
  %3151 = fadd fast float %3150, -1.000000e+00
  %3152 = fmul fast float %3149, 2.000000e+00
  %3153 = fadd fast float %3152, -1.000000e+00
  %3154 = fadd fast float %3151, %3153
  %3155 = fmul fast float %3154, 5.000000e-01
  %3156 = fsub fast float %3151, %3153
  %3157 = fmul fast float %3156, 5.000000e-01
  %3158 = call float @dx.op.unary.f32(i32 6, float %3155)  ; FAbs(value)
  %3159 = fsub fast float 1.000000e+00, %3158
  %3160 = call float @dx.op.unary.f32(i32 6, float %3157)  ; FAbs(value)
  %3161 = fsub fast float %3159, %3160
  %3162 = call float @dx.op.dot3.f32(i32 55, float %3155, float %3157, float %3161, float %3155, float %3157, float %3161)  ; Dot3(ax,ay,az,bx,by,bz)
  %3163 = call float @dx.op.unary.f32(i32 25, float %3162)  ; Rsqrt(value)
  %3164 = fmul fast float %3155, %3163
  %3165 = fmul fast float %3157, %3163
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 67108864
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3186, label %3170

; <label>:3170                                    ; preds = %3118
  %3171 = add i32 %35, 328
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = and i32 %3173, 65535
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = and i32 %3177, 65535
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = lshr i32 %3173, 16
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = fsub fast float %3143, %3181
  %3183 = fmul fast float %3182, %3175
  %3184 = fadd fast float %3183, %3179
  %3185 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  br label %3186

; <label>:3186                                    ; preds = %3170, %3118
  %3187 = phi float [ %3185, %3170 ], [ %3143, %3118 ]
  %3188 = call float @dx.op.dot2.f32(i32 54, float %3164, float %3165, float %2607, float %2608)  ; Dot2(ax,ay,bx,by)
  %3189 = call float @dx.op.dot2.f32(i32 54, float %3164, float %3165, float %2609, float %2610)  ; Dot2(ax,ay,bx,by)
  br label %3190

; <label>:3190                                    ; preds = %3186, %3096
  %3191 = phi float [ %3187, %3186 ], [ 0x3FD6666660000000, %3096 ]
  %3192 = phi float [ %3188, %3186 ], [ 0.000000e+00, %3096 ]
  %3193 = phi float [ %3189, %3186 ], [ 0.000000e+00, %3096 ]
  %3194 = phi float [ %3130, %3186 ], [ 1.000000e+00, %3096 ]
  %3195 = add i32 %35, 208
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = lshr i32 %3197, 22
  %3199 = shl nuw nsw i32 %3198, 5
  %3200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3199)  ; LegacyF16ToF32(value)
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 64
  %3204 = icmp eq i32 %3203, 0
  br i1 %3204, label %3238, label %3205

; <label>:3205                                    ; preds = %3190
  %3206 = add i32 %35, 452
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = add i32 %3208, 0
  %3210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 131072
  %3214 = icmp eq i32 %3213, 0
  %3215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3210, %dx.types.Handle %72, float %2703, float %2704, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3216 = extractvalue %dx.types.ResRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.ResRet.f32 %3215, 1
  %3218 = extractvalue %dx.types.ResRet.f32 %3215, 2
  %3219 = fmul fast float %3216, %309
  %3220 = fmul fast float %3217, %312
  %3221 = fmul fast float %3218, %315
  br i1 %3214, label %3228, label %3222

; <label>:3222                                    ; preds = %3205
  %3223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3224 = extractvalue %dx.types.CBufRet.f32 %3223, 0
  %3225 = fmul fast float %3224, %3219
  %3226 = fmul fast float %3224, %3220
  %3227 = fmul fast float %3224, %3221
  br label %3228

; <label>:3228                                    ; preds = %3222, %3205
  %3229 = phi float [ %3225, %3222 ], [ %3219, %3205 ]
  %3230 = phi float [ %3226, %3222 ], [ %3220, %3205 ]
  %3231 = phi float [ %3227, %3222 ], [ %3221, %3205 ]
  %3232 = fmul fast float %3229, %3200
  %3233 = select i1 %177, float %3232, float %3229
  %3234 = call float @dx.op.dot3.f32(i32 55, float %3233, float %3230, float %3231, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3235 = select i1 %177, float 0.000000e+00, float %3229
  %3236 = select i1 %177, float %3234, float %3230
  %3237 = select i1 %177, float 0.000000e+00, float %3231
  br label %3238

; <label>:3238                                    ; preds = %3228, %3190
  %3239 = phi float [ %3235, %3228 ], [ 0.000000e+00, %3190 ]
  %3240 = phi float [ %3236, %3228 ], [ 0.000000e+00, %3190 ]
  %3241 = phi float [ %3237, %3228 ], [ 0.000000e+00, %3190 ]
  %3242 = add i32 %35, 144
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = and i32 %3244, 255
  %3246 = uitofp i32 %3245 to float
  %3247 = lshr i32 %3244, 8
  %3248 = and i32 %3247, 255
  %3249 = uitofp i32 %3248 to float
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3111, float %3112, float %3113, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = fmul fast float %3249, %3250
  %3252 = fadd fast float %3251, %3246
  %3253 = fmul fast float %3252, 0x3F70101020000000
  %3254 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  br i1 %2595, label %3255, label %3263

; <label>:3255                                    ; preds = %3238
  %3256 = fsub fast float 1.000000e+00, %2891
  %3257 = fmul fast float %3256, %2584
  %3258 = fmul fast float %3256, %2585
  %3259 = fmul fast float %3256, %2586
  %3260 = fmul fast float %3256, %2587
  %3261 = fmul fast float %3256, %2588
  %3262 = fmul fast float %3256, %2589
  br label %3263

; <label>:3263                                    ; preds = %3255, %3238
  %3264 = phi float [ %3257, %3255 ], [ %2584, %3238 ]
  %3265 = phi float [ %3258, %3255 ], [ %2585, %3238 ]
  %3266 = phi float [ %3259, %3255 ], [ %2586, %3238 ]
  %3267 = phi float [ %3260, %3255 ], [ %2587, %3238 ]
  %3268 = phi float [ %3261, %3255 ], [ %2588, %3238 ]
  %3269 = phi float [ %3262, %3255 ], [ %2589, %3238 ]
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = and i32 %3271, 3
  %3273 = icmp eq i32 %3272, 3
  br i1 %3273, label %3352, label %3274

; <label>:3274                                    ; preds = %3263
  %3275 = and i32 %3271, 16
  %3276 = icmp ne i32 %3275, 0
  %3277 = select i1 %3276, float %2891, float 0.000000e+00
  %3278 = icmp eq i32 %3272, 0
  br i1 %3278, label %3279, label %3307

; <label>:3279                                    ; preds = %3274
  %3280 = and i32 %3271, 64
  %3281 = icmp ne i32 %3280, 0
  %3282 = select i1 %3281, float %2891, float 0.000000e+00
  %3283 = fsub fast float %3111, %3264
  %3284 = fsub fast float %3112, %3265
  %3285 = fsub fast float %3113, %3266
  %3286 = fmul fast float %3277, %3283
  %3287 = fmul fast float %3277, %3284
  %3288 = fmul fast float %3277, %3285
  %3289 = fadd fast float %3286, %3264
  %3290 = fadd fast float %3287, %3265
  %3291 = fadd fast float %3288, %3266
  %3292 = fsub fast float %3097, %2590
  %3293 = fmul fast float %3277, %3292
  %3294 = fadd fast float %3293, %2590
  %3295 = fsub fast float %3239, %3267
  %3296 = fsub fast float %3240, %3268
  %3297 = fsub fast float %3241, %3269
  %3298 = fmul fast float %3282, %3295
  %3299 = fmul fast float %3282, %3296
  %3300 = fmul fast float %3282, %3297
  %3301 = fadd fast float %3298, %3267
  %3302 = fadd fast float %3299, %3268
  %3303 = fadd fast float %3300, %3269
  %3304 = fsub fast float %3254, %2593
  %3305 = fmul fast float %3277, %3304
  %3306 = fadd fast float %3305, %2593
  br label %3352

; <label>:3307                                    ; preds = %3274
  %3308 = icmp eq i32 %3272, 1
  br i1 %3308, label %3309, label %3322

; <label>:3309                                    ; preds = %3307
  %3310 = fadd fast float %3111, -1.000000e+00
  %3311 = fadd fast float %3112, -1.000000e+00
  %3312 = fadd fast float %3113, -1.000000e+00
  %3313 = fmul fast float %3277, %3310
  %3314 = fmul fast float %3277, %3311
  %3315 = fmul fast float %3277, %3312
  %3316 = fadd fast float %3313, 1.000000e+00
  %3317 = fadd fast float %3314, 1.000000e+00
  %3318 = fadd fast float %3315, 1.000000e+00
  %3319 = fmul fast float %3316, %3264
  %3320 = fmul fast float %3317, %3265
  %3321 = fmul fast float %3318, %3266
  br label %3352

; <label>:3322                                    ; preds = %3307
  %3323 = icmp eq i32 %3272, 2
  br i1 %3323, label %3324, label %3352

; <label>:3324                                    ; preds = %3322
  %3325 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3326 = call float @dx.op.unary.f32(i32 24, float %3112)  ; Sqrt(value)
  %3327 = call float @dx.op.unary.f32(i32 24, float %3113)  ; Sqrt(value)
  %3328 = fadd fast float %3325, -5.000000e-01
  %3329 = fadd fast float %3326, -5.000000e-01
  %3330 = fadd fast float %3327, -5.000000e-01
  %3331 = fmul fast float %3328, %3277
  %3332 = fmul fast float %3329, %3277
  %3333 = fmul fast float %3330, %3277
  %3334 = fadd fast float %3331, 5.000000e-01
  %3335 = fadd fast float %3332, 5.000000e-01
  %3336 = fadd fast float %3333, 5.000000e-01
  %3337 = fmul fast float %3334, 2.000000e+00
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = fmul fast float %3338, %3264
  %3340 = fadd fast float %3339, %3337
  %3341 = fmul fast float %3340, %3264
  %3342 = fmul fast float %3335, 2.000000e+00
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = fmul fast float %3343, %3265
  %3345 = fadd fast float %3344, %3342
  %3346 = fmul fast float %3345, %3265
  %3347 = fmul fast float %3336, 2.000000e+00
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = fmul fast float %3348, %3266
  %3350 = fadd fast float %3349, %3347
  %3351 = fmul fast float %3350, %3266
  br label %3352

; <label>:3352                                    ; preds = %3324, %3322, %3309, %3279, %3263
  %3353 = phi float [ %3264, %3263 ], [ %3341, %3324 ], [ %3264, %3322 ], [ %3319, %3309 ], [ %3289, %3279 ]
  %3354 = phi float [ %3265, %3263 ], [ %3346, %3324 ], [ %3265, %3322 ], [ %3320, %3309 ], [ %3290, %3279 ]
  %3355 = phi float [ %3266, %3263 ], [ %3351, %3324 ], [ %3266, %3322 ], [ %3321, %3309 ], [ %3291, %3279 ]
  %3356 = phi float [ %3267, %3263 ], [ %3267, %3324 ], [ %3267, %3322 ], [ %3267, %3309 ], [ %3301, %3279 ]
  %3357 = phi float [ %3268, %3263 ], [ %3268, %3324 ], [ %3268, %3322 ], [ %3268, %3309 ], [ %3302, %3279 ]
  %3358 = phi float [ %3269, %3263 ], [ %3269, %3324 ], [ %3269, %3322 ], [ %3269, %3309 ], [ %3303, %3279 ]
  %3359 = phi float [ %2590, %3263 ], [ %2590, %3324 ], [ %2590, %3322 ], [ %2590, %3309 ], [ %3294, %3279 ]
  %3360 = phi float [ %2593, %3263 ], [ %2593, %3324 ], [ %2593, %3322 ], [ %2593, %3309 ], [ %3306, %3279 ]
  %3361 = and i32 %3271, 12
  %3362 = icmp eq i32 %3361, 12
  br i1 %3362, label %3435, label %3363

; <label>:3363                                    ; preds = %3352
  %3364 = and i32 %3271, 2097184
  %3365 = icmp eq i32 %3364, 2097184
  %3366 = select i1 %3365, float %2891, float 0.000000e+00
  %3367 = and i32 %3271, 4194336
  %3368 = icmp eq i32 %3367, 4194336
  %3369 = select i1 %3368, float %2891, float 0.000000e+00
  %3370 = and i32 %3271, 8388640
  %3371 = icmp eq i32 %3370, 8388640
  %3372 = select i1 %3371, float %2891, float 0.000000e+00
  %3373 = icmp eq i32 %3361, 0
  br i1 %3373, label %3374, label %3387

; <label>:3374                                    ; preds = %3363
  %3375 = fsub fast float %3192, %2582
  %3376 = fsub fast float %3193, %2583
  %3377 = fmul fast float %3366, %3375
  %3378 = fmul fast float %3366, %3376
  %3379 = fadd fast float %3377, %2582
  %3380 = fadd fast float %3378, %2583
  %3381 = fsub fast float %3194, %2592
  %3382 = fmul fast float %3369, %3381
  %3383 = fadd fast float %3382, %2592
  %3384 = fsub fast float %3191, %2591
  %3385 = fmul fast float %3372, %3384
  %3386 = fadd fast float %3385, %2591
  br label %3435

; <label>:3387                                    ; preds = %3363
  %3388 = icmp eq i32 %3361, 4
  br i1 %3388, label %3389, label %3421

; <label>:3389                                    ; preds = %3387
  %3390 = fmul fast float %3366, %3192
  %3391 = fmul fast float %3366, %3193
  %3392 = fadd fast float %3390, %2582
  %3393 = fadd fast float %3391, %2583
  %3394 = call float @dx.op.binary.f32(i32 36, float %2592, float %3194)  ; FMin(a,b)
  %3395 = fsub fast float %3394, %2592
  %3396 = fmul fast float %3395, %3369
  %3397 = fadd fast float %3396, %2592
  %3398 = fadd fast float %3191, %2591
  %3399 = fmul fast float %3398, 0x3FF337FAE0000000
  %3400 = fmul fast float %2591, %2591
  %3401 = fmul fast float %3191, %3191
  %3402 = fadd fast float %3401, %3400
  %3403 = fmul fast float %3402, 0x3FE5152B00000000
  %3404 = fmul fast float %2591, 0xBFCC1F85E0000000
  %3405 = fmul fast float %3404, %3191
  %3406 = fadd fast float %3405, 0xBFE1363700000000
  %3407 = fadd fast float %3406, %3399
  %3408 = fsub fast float %3407, %3403
  %3409 = fmul fast float %3398, 0x3FBA6F0D00000000
  %3410 = fmul fast float %3402, 0x3FD0432880000000
  %3411 = fmul fast float %2591, 0xBFEF110800000000
  %3412 = fmul fast float %3411, %3191
  %3413 = fadd fast float %3412, 1.000000e+00
  %3414 = fsub fast float %3413, %3409
  %3415 = fadd fast float %3414, %3410
  %3416 = fdiv fast float %3408, %3415
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  %3418 = fsub fast float %3417, %2591
  %3419 = fmul fast float %3418, %3372
  %3420 = fadd fast float %3419, %2591
  br label %3435

; <label>:3421                                    ; preds = %3387
  %3422 = icmp eq i32 %3361, 8
  br i1 %3422, label %3423, label %3435

; <label>:3423                                    ; preds = %3421
  %3424 = fmul fast float %3366, %3192
  %3425 = fmul fast float %3366, %3193
  %3426 = fadd fast float %3424, %2582
  %3427 = fadd fast float %3425, %2583
  %3428 = call float @dx.op.binary.f32(i32 36, float %2592, float %3194)  ; FMin(a,b)
  %3429 = fsub fast float %3428, %2592
  %3430 = fmul fast float %3429, %3369
  %3431 = fadd fast float %3430, %2592
  %3432 = fsub fast float %3191, %2591
  %3433 = fmul fast float %3372, %3432
  %3434 = fadd fast float %3433, %2591
  br label %3435

; <label>:3435                                    ; preds = %3423, %3421, %3389, %3374, %3352, %2890, %2594, %2581
  %3436 = phi float [ %2582, %3352 ], [ %2582, %2890 ], [ %2582, %2581 ], [ %2582, %2594 ], [ %3379, %3374 ], [ %3392, %3389 ], [ %2582, %3421 ], [ %3426, %3423 ]
  %3437 = phi float [ %2583, %3352 ], [ %2583, %2890 ], [ %2583, %2581 ], [ %2583, %2594 ], [ %3380, %3374 ], [ %3393, %3389 ], [ %2583, %3421 ], [ %3427, %3423 ]
  %3438 = phi float [ %3353, %3352 ], [ %2584, %2890 ], [ %2584, %2581 ], [ %2584, %2594 ], [ %3353, %3374 ], [ %3353, %3389 ], [ %3353, %3421 ], [ %3353, %3423 ]
  %3439 = phi float [ %3354, %3352 ], [ %2585, %2890 ], [ %2585, %2581 ], [ %2585, %2594 ], [ %3354, %3374 ], [ %3354, %3389 ], [ %3354, %3421 ], [ %3354, %3423 ]
  %3440 = phi float [ %3355, %3352 ], [ %2586, %2890 ], [ %2586, %2581 ], [ %2586, %2594 ], [ %3355, %3374 ], [ %3355, %3389 ], [ %3355, %3421 ], [ %3355, %3423 ]
  %3441 = phi float [ %3356, %3352 ], [ %2587, %2890 ], [ %2587, %2581 ], [ %2587, %2594 ], [ %3356, %3374 ], [ %3356, %3389 ], [ %3356, %3421 ], [ %3356, %3423 ]
  %3442 = phi float [ %3357, %3352 ], [ %2588, %2890 ], [ %2588, %2581 ], [ %2588, %2594 ], [ %3357, %3374 ], [ %3357, %3389 ], [ %3357, %3421 ], [ %3357, %3423 ]
  %3443 = phi float [ %3358, %3352 ], [ %2589, %2890 ], [ %2589, %2581 ], [ %2589, %2594 ], [ %3358, %3374 ], [ %3358, %3389 ], [ %3358, %3421 ], [ %3358, %3423 ]
  %3444 = phi float [ %3359, %3352 ], [ %2590, %2890 ], [ %2590, %2581 ], [ %2590, %2594 ], [ %3359, %3374 ], [ %3359, %3389 ], [ %3359, %3421 ], [ %3359, %3423 ]
  %3445 = phi float [ %2591, %3352 ], [ %2591, %2890 ], [ %2591, %2581 ], [ %2591, %2594 ], [ %3386, %3374 ], [ %3420, %3389 ], [ %2591, %3421 ], [ %3434, %3423 ]
  %3446 = phi float [ %2592, %3352 ], [ %2592, %2890 ], [ %2592, %2581 ], [ %2592, %2594 ], [ %3383, %3374 ], [ %3397, %3389 ], [ %2592, %3421 ], [ %3431, %3423 ]
  %3447 = phi float [ %3360, %3352 ], [ %2593, %2890 ], [ %2593, %2581 ], [ %2593, %2594 ], [ %3360, %3374 ], [ %3360, %3389 ], [ %3360, %3421 ], [ %3360, %3423 ]
  %3448 = add i32 %35, 360
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = extractvalue %dx.types.ResRet.i32 %3449, 1
  %3452 = bitcast i32 %3450 to float
  %3453 = bitcast i32 %3451 to float
  %3454 = fcmp fast oge float %3452, 0.000000e+00
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 0
  %3457 = select i1 %3454, float %3452, float %3456
  %3458 = add i32 %35, 488
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = add i32 %3460, 0
  %3462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3462, %dx.types.Handle %73, float %64, float %65, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3464 = extractvalue %dx.types.ResRet.f32 %3463, 0
  %3465 = fmul fast float %3464, %3453
  %3466 = fadd fast float %3465, %3457
  %3467 = call float @dx.op.dot2.f32(i32 54, float %3436, float %3437, float %3436, float %3437)  ; Dot2(ax,ay,bx,by)
  %3468 = fmul fast float %3467, 0x3FE3333340000000
  %3469 = fsub fast float 1.000000e+00, %3468
  %3470 = call float @dx.op.dot3.f32(i32 55, float %3436, float %3437, float %3469, float %3436, float %3437, float %3469)  ; Dot3(ax,ay,az,bx,by,bz)
  %3471 = call float @dx.op.unary.f32(i32 25, float %3470)  ; Rsqrt(value)
  %3472 = fmul fast float %3471, %3436
  %3473 = fmul fast float %3471, %3437
  %3474 = fmul fast float %3469, %3471
  %3475 = fmul fast float %3474, %85
  %3476 = fmul fast float %3474, %87
  %3477 = fmul fast float %3474, %89
  %3478 = fmul fast float %3472, %57
  %3479 = fmul fast float %3472, %58
  %3480 = fmul fast float %3472, %59
  %3481 = fadd fast float %3475, %3478
  %3482 = fadd fast float %3476, %3479
  %3483 = fadd fast float %3477, %3480
  %3484 = fmul fast float %99, %3473
  %3485 = fmul fast float %100, %3473
  %3486 = fmul fast float %101, %3473
  %3487 = fadd fast float %3481, %3484
  %3488 = fadd fast float %3482, %3485
  %3489 = fadd fast float %3483, %3486
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3488, float %3489, float %3487, float %3488, float %3489)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = call float @dx.op.unary.f32(i32 25, float %3490)  ; Rsqrt(value)
  %3492 = fmul fast float %3487, %3491
  %3493 = fmul fast float %3488, %3491
  %3494 = fmul fast float %3489, %3491
  %3495 = and i32 %37, 1
  %3496 = icmp eq i32 %3495, 0
  br i1 %3496, label %3497, label %4005

; <label>:3497                                    ; preds = %3435
  %3498 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3499 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3500 = call float @dx.op.unary.f32(i32 83, float %137)  ; DerivCoarseX(value)
  %3501 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3502 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3503 = call float @dx.op.unary.f32(i32 84, float %137)  ; DerivCoarseY(value)
  %3504 = fadd fast float %3498, %135
  %3505 = fadd fast float %3499, %136
  %3506 = fadd fast float %3500, %137
  %3507 = fadd fast float %3501, %135
  %3508 = fadd fast float %3502, %136
  %3509 = fadd fast float %3503, %137
  %3510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3511 = extractvalue %dx.types.CBufRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.CBufRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.CBufRet.f32 %3510, 2
  %3514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.f32 %3514, 2
  %3516 = extractvalue %dx.types.CBufRet.f32 %3514, 3
  %3517 = fmul fast float %3511, %76
  %3518 = fmul fast float %3517, %3515
  %3519 = fmul fast float %3512, %77
  %3520 = fmul fast float %3519, %3516
  %3521 = fptoui float %3518 to i32
  %3522 = fptoui float %3520 to i32
  %3523 = fadd fast float %3511, -1.000000e+00
  %3524 = fadd fast float %3512, -1.000000e+00
  %3525 = fptoui float %3523 to i32
  %3526 = fptoui float %3524 to i32
  %3527 = call i32 @dx.op.binary.i32(i32 40, i32 %3521, i32 %3525)  ; UMin(a,b)
  %3528 = call i32 @dx.op.binary.i32(i32 40, i32 %3522, i32 %3526)  ; UMin(a,b)
  %3529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3530 = extractvalue %dx.types.CBufRet.f32 %3529, 2
  %3531 = extractvalue %dx.types.CBufRet.f32 %3529, 3
  %3532 = fmul fast float %3530, %71
  %3533 = fsub fast float %3532, %3531
  %3534 = fadd fast float %3513, -1.000000e+00
  %3535 = call float @dx.op.binary.f32(i32 36, float %3533, float %3534)  ; FMin(a,b)
  %3536 = fptoui float %3535 to i32
  %3537 = fptoui float %3511 to i32
  %3538 = fptoui float %3512 to i32
  %3539 = mul i32 %3536, %3538
  %3540 = add i32 %3539, %3528
  %3541 = mul i32 %3540, %3537
  %3542 = add i32 %3541, %3527
  %3543 = shl i32 %3542, 2
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = and i32 %3545, 1023
  %3547 = lshr i32 %3545, 10
  %3548 = icmp eq i32 %3546, 0
  br i1 %3548, label %3974, label %3549

; <label>:3549                                    ; preds = %3497
  %3550 = and i32 %3545, 1023
  br label %3551

; <label>:3551                                    ; preds = %3677, %3549
  %3552 = phi i32 [ %3627, %3677 ], [ 0, %3549 ]
  %3553 = phi float [ %3678, %3677 ], [ 0.000000e+00, %3549 ]
  %3554 = phi float [ %3679, %3677 ], [ %3466, %3549 ]
  %3555 = phi float [ %3680, %3677 ], [ %3447, %3549 ]
  %3556 = phi float [ %3681, %3677 ], [ 0.000000e+00, %3549 ]
  %3557 = phi float [ %3682, %3677 ], [ 0.000000e+00, %3549 ]
  %3558 = phi float [ %3683, %3677 ], [ %3441, %3549 ]
  %3559 = phi float [ %3684, %3677 ], [ %3442, %3549 ]
  %3560 = phi float [ %3685, %3677 ], [ %3443, %3549 ]
  %3561 = phi float [ %3686, %3677 ], [ %3492, %3549 ]
  %3562 = phi float [ %3687, %3677 ], [ %3493, %3549 ]
  %3563 = phi float [ %3688, %3677 ], [ %3494, %3549 ]
  %3564 = phi float [ %3689, %3677 ], [ %3446, %3549 ]
  %3565 = phi float [ %3690, %3677 ], [ %3445, %3549 ]
  %3566 = phi float [ %3691, %3677 ], [ 0.000000e+00, %3549 ]
  %3567 = phi float [ %3692, %3677 ], [ %3444, %3549 ]
  %3568 = phi float [ %3693, %3677 ], [ %3438, %3549 ]
  %3569 = phi float [ %3694, %3677 ], [ %3439, %3549 ]
  %3570 = phi float [ %3695, %3677 ], [ %3440, %3549 ]
  %3571 = add nuw nsw i32 %3552, %3547
  %3572 = shl i32 %3571, 2
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3572, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = shl i32 %3574, 8
  %3576 = or i32 %3575, 48
  %3577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.f32 %3577, 1
  %3580 = extractvalue %dx.types.ResRet.f32 %3577, 2
  %3581 = extractvalue %dx.types.ResRet.f32 %3577, 3
  %3582 = or i32 %3575, 64
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.i32 %3583, 1
  %3586 = or i32 %3575, 80
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 3
  %3590 = or i32 %3575, 96
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3596 = or i32 %3575, 112
  %3597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3599 = or i32 %3575, 128
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = or i32 %3575, 144
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = or i32 %3575, 160
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = or i32 %3575, 192
  %3618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.i32 %3618, 0
  %3620 = or i32 %3575, 208
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = or i32 %3575, 248
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = add nuw nsw i32 %3552, 1
  %3628 = bitcast float %3581 to i32
  %3629 = and i32 %3628, 512
  %3630 = icmp eq i32 %3629, 0
  %3631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.f32 %3631, 1
  %3634 = extractvalue %dx.types.ResRet.f32 %3631, 2
  %3635 = extractvalue %dx.types.ResRet.f32 %3631, 3
  %3636 = call float @dx.op.dot4.f32(i32 56, float %3632, float %3633, float %3634, float %3635, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3637 = or i32 %3575, 16
  %3638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3637, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.ResRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3638, 2
  %3642 = extractvalue %dx.types.ResRet.f32 %3638, 3
  %3643 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3644 = or i32 %3575, 32
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = extractvalue %dx.types.ResRet.f32 %3645, 3
  %3650 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %135, float %136, float %137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3651 = call float @dx.op.unary.f32(i32 27, float %3636)  ; Round_ni(value)
  %3652 = call float @dx.op.unary.f32(i32 6, float %3651)  ; FAbs(value)
  %3653 = call float @dx.op.unary.f32(i32 27, float %3643)  ; Round_ni(value)
  %3654 = call float @dx.op.unary.f32(i32 6, float %3653)  ; FAbs(value)
  %3655 = call float @dx.op.unary.f32(i32 6, float %3650)  ; FAbs(value)
  %3656 = call float @dx.op.unary.f32(i32 27, float %3655)  ; Round_ni(value)
  %3657 = fadd fast float %3654, %3652
  %3658 = fadd fast float %3657, %3656
  %3659 = fcmp fast oeq float %3658, 0.000000e+00
  %3660 = call float @dx.op.dot4.f32(i32 56, float %3632, float %3633, float %3634, float %3635, float %3504, float %3505, float %3506, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3661 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %3504, float %3505, float %3506, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3662 = call float @dx.op.dot4.f32(i32 56, float %3632, float %3633, float %3634, float %3635, float %3507, float %3508, float %3509, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3663 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %3507, float %3508, float %3509, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3664 = fsub fast float %3660, %3636
  %3665 = fsub fast float %3662, %3636
  %3666 = fsub fast float %3661, %3643
  %3667 = fsub fast float %3663, %3643
  %3668 = call float @dx.op.dot3.f32(i32 55, float %3578, float %3579, float %3580, float %85, float %87, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 2
  %3671 = fadd fast float %3670, %3668
  %3672 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3674 = fcmp fast ogt float %3672, %3673
  %3675 = and i1 %3659, %3674
  %3676 = and i1 %3630, %3675
  br i1 %3676, label %3697, label %3677

; <label>:3677                                    ; preds = %3960, %3778, %3697, %3551
  %3678 = phi float [ %3553, %3697 ], [ %3781, %3778 ], [ %3781, %3960 ], [ %3553, %3551 ]
  %3679 = phi float [ %3554, %3697 ], [ %3554, %3778 ], [ %3935, %3960 ], [ %3554, %3551 ]
  %3680 = phi float [ %3555, %3697 ], [ %3555, %3778 ], [ %3933, %3960 ], [ %3555, %3551 ]
  %3681 = phi float [ %3556, %3697 ], [ %3556, %3778 ], [ %3905, %3960 ], [ %3556, %3551 ]
  %3682 = phi float [ %3557, %3697 ], [ %3557, %3778 ], [ %3903, %3960 ], [ %3557, %3551 ]
  %3683 = phi float [ %3558, %3697 ], [ %3558, %3778 ], [ %3970, %3960 ], [ %3558, %3551 ]
  %3684 = phi float [ %3559, %3697 ], [ %3559, %3778 ], [ %3971, %3960 ], [ %3559, %3551 ]
  %3685 = phi float [ %3560, %3697 ], [ %3560, %3778 ], [ %3972, %3960 ], [ %3560, %3551 ]
  %3686 = phi float [ %3561, %3697 ], [ %3561, %3778 ], [ %3884, %3960 ], [ %3561, %3551 ]
  %3687 = phi float [ %3562, %3697 ], [ %3562, %3778 ], [ %3885, %3960 ], [ %3562, %3551 ]
  %3688 = phi float [ %3563, %3697 ], [ %3563, %3778 ], [ %3886, %3960 ], [ %3563, %3551 ]
  %3689 = phi float [ %3564, %3697 ], [ %3564, %3778 ], [ %3913, %3960 ], [ %3564, %3551 ]
  %3690 = phi float [ %3565, %3697 ], [ %3565, %3778 ], [ %3910, %3960 ], [ %3565, %3551 ]
  %3691 = phi float [ %3566, %3697 ], [ %3566, %3778 ], [ %3907, %3960 ], [ %3566, %3551 ]
  %3692 = phi float [ %3567, %3697 ], [ %3567, %3778 ], [ %3901, %3960 ], [ %3567, %3551 ]
  %3693 = phi float [ %3568, %3697 ], [ %3568, %3778 ], [ %3896, %3960 ], [ %3568, %3551 ]
  %3694 = phi float [ %3569, %3697 ], [ %3569, %3778 ], [ %3897, %3960 ], [ %3569, %3551 ]
  %3695 = phi float [ %3570, %3697 ], [ %3570, %3778 ], [ %3898, %3960 ], [ %3570, %3551 ]
  %3696 = icmp eq i32 %3627, %3550
  br i1 %3696, label %3973, label %3551

; <label>:3697                                    ; preds = %3551
  %3698 = extractvalue %dx.types.ResRet.f32 %3597, 3
  %3699 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3700 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3701 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3702 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3703 = extractvalue %dx.types.ResRet.i32 %3583, 3
  %3704 = extractvalue %dx.types.ResRet.i32 %3583, 2
  %3705 = add i32 %3703, 0
  %3706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3705, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3708 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3706, %dx.types.Handle %3707, float %3636, float %3643, float undef, float undef, i32 0, i32 0, i32 undef, float %3664, float %3666, float undef, float %3665, float %3667, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = fmul fast float %3709, %3702
  %3711 = fadd fast float %3710, %3701
  %3712 = call float @dx.op.unary.f32(i32 7, float %3711)  ; Saturate(value)
  %3713 = fmul fast float %3636, %3592
  %3714 = call float @dx.op.tertiary.f32(i32 46, float %3593, float %3643, float %3713)  ; FMad(a,b,c)
  %3715 = fadd fast float %3714, %3700
  %3716 = fmul fast float %3636, %3594
  %3717 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3643, float %3716)  ; FMad(a,b,c)
  %3718 = fadd fast float %3717, %3699
  %3719 = fmul fast float %3664, %3592
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3593, float %3666, float %3719)  ; FMad(a,b,c)
  %3721 = fmul fast float %3664, %3594
  %3722 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3666, float %3721)  ; FMad(a,b,c)
  %3723 = fmul fast float %3665, %3592
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3593, float %3667, float %3723)  ; FMad(a,b,c)
  %3725 = fmul fast float %3665, %3594
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3667, float %3725)  ; FMad(a,b,c)
  %3727 = add i32 %3704, 0
  %3728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3729 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3728, %dx.types.Handle %3707, float %3715, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float %3720, float %3722, float undef, float %3724, float %3726, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3731 = and i32 %3628, 1024
  %3732 = icmp ne i32 %3731, 0
  %3733 = fcmp fast ogt float %3730, 0x3FE0101020000000
  %3734 = uitofp i1 %3733 to float
  %3735 = select i1 %3732, float %3734, float %3730
  %3736 = and i32 %3628, 8192
  %3737 = icmp ne i32 %3736, 0
  %3738 = select i1 %3737, float %3698, float 1.000000e+00
  %3739 = fmul fast float %3636, 2.000000e+00
  %3740 = fadd fast float %3739, -1.000000e+00
  %3741 = call float @dx.op.unary.f32(i32 6, float %3740)  ; FAbs(value)
  %3742 = fmul fast float %3741, %3625
  %3743 = fsub fast float %3742, %3625
  %3744 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3745 = fmul fast float %3643, 2.000000e+00
  %3746 = fadd fast float %3745, -1.000000e+00
  %3747 = call float @dx.op.unary.f32(i32 6, float %3746)  ; FAbs(value)
  %3748 = fmul fast float %3747, %3626
  %3749 = fsub fast float %3748, %3626
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fmul fast float %3655, %3588
  %3752 = fsub fast float %3751, %3588
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = fmul fast float %3712, %3738
  %3755 = fmul fast float %3754, %3709
  %3756 = fmul fast float %3755, %3744
  %3757 = fmul fast float %3756, %3735
  %3758 = fmul fast float %3757, %3750
  %3759 = fmul fast float %3758, %3753
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 1
  %3762 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3763 = fsub fast float %3672, %3762
  %3764 = fmul fast float %3763, %3761
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fmul fast float %3759, %3589
  %3767 = fadd fast float %3759, %3589
  %3768 = fmul fast float %3767, %3598
  %3769 = fsub fast float %3768, %3598
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = and i32 %3628, 128
  %3772 = icmp ne i32 %3771, 0
  %3773 = select i1 %3772, float %3770, float %3766
  %3774 = fmul fast float %3773, %3765
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = fcmp fast ugt float %3774, %3776
  br i1 %3777, label %3778, label %3677

; <label>:3778                                    ; preds = %3697
  %3779 = select i1 %3737, float %3774, float 0.000000e+00
  %3780 = fadd fast float %3779, %3553
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  br i1 %3737, label %3677, label %3782

; <label>:3782                                    ; preds = %3778
  %3783 = and i32 %3628, 4
  %3784 = and i32 %3628, 8
  %3785 = add i32 %3584, 0
  %3786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3785, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3788 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3786, %dx.types.Handle %3787, float %3715, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float %3720, float %3722, float undef, float %3724, float %3726, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3789 = extractvalue %dx.types.ResRet.f32 %3788, 0
  %3790 = extractvalue %dx.types.ResRet.f32 %3788, 1
  %3791 = extractvalue %dx.types.ResRet.f32 %3788, 2
  %3792 = extractvalue %dx.types.ResRet.f32 %3788, 3
  %3793 = bitcast float %3610 to i32
  %3794 = and i32 %3793, 255
  %3795 = uitofp i32 %3794 to float
  %3796 = lshr i32 %3793, 8
  %3797 = and i32 %3796, 255
  %3798 = uitofp i32 %3797 to float
  %3799 = fmul fast float %3792, %3795
  %3800 = fadd fast float %3799, %3798
  %3801 = fmul fast float %3800, 0x3F70101000000000
  %3802 = add i32 %3585, 0
  %3803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3802, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3804 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3803, %dx.types.Handle %3787, float %3715, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float %3720, float %3722, float undef, float %3724, float %3726, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3808 = extractvalue %dx.types.ResRet.f32 %3804, 3
  %3809 = bitcast float %3604 to i32
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = lshr i32 %3809, 8
  %3813 = and i32 %3812, 255
  %3814 = uitofp i32 %3813 to float
  %3815 = lshr i32 %3809, 16
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = fmul fast float %3817, 0x3F70101000000000
  %3819 = fmul fast float %3805, %3811
  %3820 = fadd fast float %3819, %3814
  %3821 = fmul fast float %3820, 0x3F70101000000000
  %3822 = fadd fast float %3806, -5.000000e-01
  %3823 = fadd fast float %3808, -5.000000e-01
  %3824 = fmul fast float %3822, %3818
  %3825 = fmul fast float %3823, %3818
  %3826 = fadd fast float %3824, 5.000000e-01
  %3827 = fadd fast float %3825, 5.000000e-01
  %3828 = fmul fast float %3789, %3613
  %3829 = fmul fast float %3790, %3614
  %3830 = fmul fast float %3791, %3615
  %3831 = fmul fast float %3826, 2.000000e+00
  %3832 = fadd fast float %3831, -1.000000e+00
  %3833 = fmul fast float %3827, 2.000000e+00
  %3834 = fadd fast float %3833, -1.000000e+00
  %3835 = fadd fast float %3832, %3834
  %3836 = fmul fast float %3835, 5.000000e-01
  %3837 = fsub fast float %3832, %3834
  %3838 = fmul fast float %3837, 5.000000e-01
  %3839 = call float @dx.op.unary.f32(i32 6, float %3836)  ; FAbs(value)
  %3840 = fsub fast float 1.000000e+00, %3839
  %3841 = call float @dx.op.unary.f32(i32 6, float %3838)  ; FAbs(value)
  %3842 = fsub fast float %3840, %3841
  %3843 = call float @dx.op.dot3.f32(i32 55, float %3836, float %3838, float %3842, float %3836, float %3838, float %3842)  ; Dot3(ax,ay,az,bx,by,bz)
  %3844 = call float @dx.op.unary.f32(i32 25, float %3843)  ; Rsqrt(value)
  %3845 = fmul fast float %3836, %3844
  %3846 = fmul fast float %3838, %3844
  %3847 = fmul fast float %3844, %3842
  %3848 = fmul fast float %3847, %3578
  %3849 = fmul fast float %3847, %3579
  %3850 = fmul fast float %3847, %3580
  %3851 = fmul fast float %3845, %3601
  %3852 = fmul fast float %3845, %3602
  %3853 = fmul fast float %3845, %3603
  %3854 = fadd fast float %3851, %3848
  %3855 = fadd fast float %3852, %3849
  %3856 = fadd fast float %3853, %3850
  %3857 = fmul fast float %3846, %3607
  %3858 = fmul fast float %3846, %3608
  %3859 = fmul fast float %3846, %3609
  %3860 = fadd fast float %3854, %3857
  %3861 = fadd fast float %3855, %3858
  %3862 = fadd fast float %3856, %3859
  %3863 = call float @dx.op.dot3.f32(i32 55, float %3860, float %3861, float %3862, float %3860, float %3861, float %3862)  ; Dot3(ax,ay,az,bx,by,bz)
  %3864 = call float @dx.op.unary.f32(i32 25, float %3863)  ; Rsqrt(value)
  %3865 = fmul fast float %3860, %3864
  %3866 = fmul fast float %3861, %3864
  %3867 = fmul fast float %3862, %3864
  %3868 = icmp ne i32 %3784, 0
  %3869 = select i1 %3868, float 1.000000e+00, float 0.000000e+00
  %3870 = fmul fast float %3774, %3869
  %3871 = and i32 %3628, 1
  %3872 = icmp eq i32 %3871, 0
  br i1 %3872, label %3873, label %3877

; <label>:3873                                    ; preds = %3782
  %3874 = fsub fast float %3865, %3561
  %3875 = fsub fast float %3866, %3562
  %3876 = fsub fast float %3867, %3563
  br label %3877

; <label>:3877                                    ; preds = %3873, %3782
  %3878 = phi float [ %3874, %3873 ], [ %3865, %3782 ]
  %3879 = phi float [ %3875, %3873 ], [ %3866, %3782 ]
  %3880 = phi float [ %3876, %3873 ], [ %3867, %3782 ]
  %3881 = fmul float %3880, %3870
  %3882 = fmul float %3879, %3870
  %3883 = fmul float %3878, %3870
  %3884 = fadd fast float %3883, %3561
  %3885 = fadd fast float %3882, %3562
  %3886 = fadd fast float %3881, %3563
  %3887 = icmp ne i32 %3783, 0
  %3888 = select i1 %3887, float 1.000000e+00, float 0.000000e+00
  %3889 = fmul fast float %3774, %3888
  %3890 = fsub fast float %3828, %3568
  %3891 = fsub fast float %3829, %3569
  %3892 = fsub fast float %3830, %3570
  %3893 = fmul fast float %3890, %3889
  %3894 = fmul fast float %3891, %3889
  %3895 = fmul fast float %3892, %3889
  %3896 = fadd fast float %3893, %3568
  %3897 = fadd fast float %3894, %3569
  %3898 = fadd fast float %3895, %3570
  %3899 = fsub fast float %3801, %3567
  %3900 = fmul fast float %3899, %3889
  %3901 = fadd fast float %3900, %3567
  %3902 = fmul fast float %3889, %3557
  %3903 = fsub fast float %3557, %3902
  %3904 = fmul fast float %3889, %3556
  %3905 = fsub fast float %3556, %3904
  %3906 = fadd fast float %3774, %3566
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = fsub fast float %3821, %3565
  %3909 = fmul fast float %3908, %3870
  %3910 = fadd fast float %3909, %3565
  %3911 = fsub fast float %3807, %3564
  %3912 = fmul fast float %3911, %3870
  %3913 = fadd fast float %3912, %3564
  %3914 = call float @dx.op.dot3.f32(i32 55, float %3828, float %3829, float %3830, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3918 = fmul fast float %3917, %3914
  %3919 = fadd fast float %3918, %3916
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = bitcast float %3616 to i32
  %3922 = and i32 %3921, 65535
  %3923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3922)  ; LegacyF16ToF32(value)
  %3924 = lshr i32 %3921, 16
  %3925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3924)  ; LegacyF16ToF32(value)
  %3926 = fcmp fast oge float %3923, 0.000000e+00
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = select i1 %3926, float %3923, float %3928
  %3930 = fadd fast float %3929, %3925
  %3931 = fsub fast float %3920, %3555
  %3932 = fmul fast float %3931, %3774
  %3933 = fadd fast float %3932, %3555
  %3934 = fmul fast float %3930, %3774
  %3935 = call float @dx.op.binary.f32(i32 35, float %3554, float %3934)  ; FMax(a,b)
  %3936 = and i32 %3628, 16
  %3937 = icmp eq i32 %3936, 0
  br i1 %3937, label %3960, label %3938

; <label>:3938                                    ; preds = %3877
  %3939 = bitcast float %3622 to i32
  %3940 = add i32 %3619, 0
  %3941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3940, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3942 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3941, %dx.types.Handle %3787, float %3715, float %3718, float undef, float undef, i32 0, i32 0, i32 undef, float %3720, float %3722, float undef, float %3724, float %3726, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = and i32 %3939, 65535
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = fmul fast float %3943, %3613
  %3949 = fmul fast float %3944, %3614
  %3950 = fmul fast float %3945, %3615
  %3951 = and i32 %3628, 16384
  %3952 = icmp ne i32 %3951, 0
  %3953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3954 = extractvalue %dx.types.CBufRet.f32 %3953, 0
  %3955 = select i1 %3952, float %3954, float 1.000000e+00
  %3956 = fmul fast float %3955, %3947
  %3957 = fmul fast float %3948, %3956
  %3958 = fmul fast float %3949, %3956
  %3959 = fmul fast float %3950, %3956
  br label %3960

; <label>:3960                                    ; preds = %3938, %3877
  %3961 = phi float [ %3957, %3938 ], [ 0.000000e+00, %3877 ]
  %3962 = phi float [ %3958, %3938 ], [ 0.000000e+00, %3877 ]
  %3963 = phi float [ %3959, %3938 ], [ 0.000000e+00, %3877 ]
  %3964 = fsub fast float %3961, %3558
  %3965 = fsub fast float %3962, %3559
  %3966 = fsub fast float %3963, %3560
  %3967 = fmul fast float %3964, %3774
  %3968 = fmul fast float %3965, %3774
  %3969 = fmul fast float %3966, %3774
  %3970 = fadd fast float %3967, %3558
  %3971 = fadd fast float %3968, %3559
  %3972 = fadd fast float %3969, %3560
  br label %3677

; <label>:3973                                    ; preds = %3677
  br label %3974

; <label>:3974                                    ; preds = %3973, %3497
  %3975 = phi float [ 0.000000e+00, %3497 ], [ %3678, %3973 ]
  %3976 = phi float [ %3466, %3497 ], [ %3679, %3973 ]
  %3977 = phi float [ %3447, %3497 ], [ %3680, %3973 ]
  %3978 = phi float [ 0.000000e+00, %3497 ], [ %3681, %3973 ]
  %3979 = phi float [ 0.000000e+00, %3497 ], [ %3682, %3973 ]
  %3980 = phi float [ %3441, %3497 ], [ %3683, %3973 ]
  %3981 = phi float [ %3442, %3497 ], [ %3684, %3973 ]
  %3982 = phi float [ %3443, %3497 ], [ %3685, %3973 ]
  %3983 = phi float [ %3492, %3497 ], [ %3686, %3973 ]
  %3984 = phi float [ %3493, %3497 ], [ %3687, %3973 ]
  %3985 = phi float [ %3494, %3497 ], [ %3688, %3973 ]
  %3986 = phi float [ %3446, %3497 ], [ %3689, %3973 ]
  %3987 = phi float [ %3445, %3497 ], [ %3690, %3973 ]
  %3988 = phi float [ 0.000000e+00, %3497 ], [ %3691, %3973 ]
  %3989 = phi float [ %3444, %3497 ], [ %3692, %3973 ]
  %3990 = phi float [ %3438, %3497 ], [ %3693, %3973 ]
  %3991 = phi float [ %3439, %3497 ], [ %3694, %3973 ]
  %3992 = phi float [ %3440, %3497 ], [ %3695, %3973 ]
  %3993 = call float @dx.op.dot3.f32(i32 55, float %3983, float %3984, float %3985, float %3983, float %3984, float %3985)  ; Dot3(ax,ay,az,bx,by,bz)
  %3994 = call float @dx.op.unary.f32(i32 25, float %3993)  ; Rsqrt(value)
  %3995 = fmul fast float %3994, %3983
  %3996 = fmul fast float %3994, %3984
  %3997 = fmul fast float %3994, %3985
  %3998 = fadd fast float %3988, %882
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3996, float %3997, float %3995, float %3996, float %3997)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = call float @dx.op.unary.f32(i32 25, float %4000)  ; Rsqrt(value)
  %4002 = fmul fast float %4001, %3995
  %4003 = fmul fast float %4001, %3996
  %4004 = fmul fast float %4001, %3997
  br label %4005

; <label>:4005                                    ; preds = %3974, %3435
  %4006 = phi float [ %4002, %3974 ], [ %3492, %3435 ]
  %4007 = phi float [ %4003, %3974 ], [ %3493, %3435 ]
  %4008 = phi float [ %4004, %3974 ], [ %3494, %3435 ]
  %4009 = phi float [ %3990, %3974 ], [ %3438, %3435 ]
  %4010 = phi float [ %3991, %3974 ], [ %3439, %3435 ]
  %4011 = phi float [ %3992, %3974 ], [ %3440, %3435 ]
  %4012 = phi float [ %3980, %3974 ], [ %3441, %3435 ]
  %4013 = phi float [ %3981, %3974 ], [ %3442, %3435 ]
  %4014 = phi float [ %3982, %3974 ], [ %3443, %3435 ]
  %4015 = phi float [ %3989, %3974 ], [ %3444, %3435 ]
  %4016 = phi float [ %3999, %3974 ], [ %882, %3435 ]
  %4017 = phi float [ %3987, %3974 ], [ %3445, %3435 ]
  %4018 = phi float [ %3986, %3974 ], [ %3446, %3435 ]
  %4019 = phi float [ %3979, %3974 ], [ 0.000000e+00, %3435 ]
  %4020 = phi float [ %3978, %3974 ], [ 0.000000e+00, %3435 ]
  %4021 = phi float [ %3975, %3974 ], [ 0.000000e+00, %3435 ]
  %4022 = phi float [ %3976, %3974 ], [ %3466, %3435 ]
  %4023 = phi float [ %3977, %3974 ], [ %3447, %3435 ]
  %4024 = fadd fast float %4015, 0xBFB99999A0000000
  %4025 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4026 = fmul fast float %4025, 0x3FF1C71C80000000
  %4027 = call float @dx.op.binary.f32(i32 36, float %4015, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4028 = fsub fast float 1.000000e+00, %4026
  %4029 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4030 = fmul fast float %4029, %4009
  %4031 = fmul fast float %4029, %4010
  %4032 = fmul fast float %4029, %4011
  %4033 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4034 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4035 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4036 = fmul fast float %4026, %4009
  %4037 = fmul fast float %4026, %4010
  %4038 = fmul fast float %4026, %4011
  %4039 = fadd fast float %4036, %4027
  %4040 = fadd fast float %4037, %4027
  %4041 = fadd fast float %4038, %4027
  %4042 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4044 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4045 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.i32 %4046, 3
  %4048 = and i32 %4047, 8
  %4049 = icmp ne i32 %4048, 0
  %4050 = call float @dx.op.binary.f32(i32 35, float %4033, float %4009)  ; FMax(a,b)
  %4051 = call float @dx.op.binary.f32(i32 35, float %4034, float %4009)  ; FMax(a,b)
  %4052 = call float @dx.op.binary.f32(i32 35, float %4035, float %4009)  ; FMax(a,b)
  %4053 = call float @dx.op.dot3.f32(i32 55, float %4033, float %4034, float %4035, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4054 = select i1 %177, float %4009, float %4033
  %4055 = select i1 %177, float %4053, float %4034
  %4056 = select i1 %177, float 1.000000e+00, float %4035
  %4057 = select i1 %4049, float %4050, float %4054
  %4058 = select i1 %4049, float %4051, float %4055
  %4059 = select i1 %4049, float %4052, float %4056
  %4060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.CBufRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.CBufRet.f32 %4060, 2
  %4064 = fadd fast float %4061, %135
  %4065 = fadd fast float %4062, %136
  %4066 = fadd fast float %4063, %137
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.CBufRet.f32 %4067, 1
  %4070 = fsub fast float %4064, %4068
  %4071 = fsub fast float %4065, %4069
  %4072 = fmul fast float %4070, %4070
  %4073 = fmul fast float %4071, %4071
  %4074 = fadd fast float %4072, %4073
  %4075 = call float @dx.op.unary.f32(i32 24, float %4074)  ; Sqrt(value)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4067, 2
  %4077 = fcmp fast olt float %4075, %4076
  br i1 %4077, label %4078, label %4145

; <label>:4078                                    ; preds = %4005
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4087 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4088 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4089 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4090 = extractvalue %dx.types.CBufRet.f32 %4083, 3
  %4091 = fadd fast float %4088, %4064
  %4092 = fadd fast float %4089, %4065
  %4093 = fadd fast float %4090, %4066
  %4094 = fmul fast float %4091, %4080
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4082, float %4094)  ; FMad(a,b,c)
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4084, float %4095)  ; FMad(a,b,c)
  %4097 = fmul fast float %4091, %4085
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4086, float %4097)  ; FMad(a,b,c)
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4087, float %4098)  ; FMad(a,b,c)
  %4100 = fsub fast float %4096, %4088
  %4101 = fsub fast float %4099, %4089
  %4102 = fsub fast float %4100, %4068
  %4103 = fadd fast float %4102, %4076
  %4104 = fsub fast float %4101, %4069
  %4105 = fadd fast float %4104, %4076
  %4106 = extractvalue %dx.types.CBufRet.f32 %4067, 3
  %4107 = fmul fast float %4103, %4106
  %4108 = fmul fast float %4105, %4106
  %4109 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4110 = call float @dx.op.unary.f32(i32 7, float %4108)  ; Saturate(value)
  %4111 = fsub fast float 1.000000e+00, %4109
  %4112 = fsub fast float 1.000000e+00, %4110
  %4113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4111, float %4112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = fcmp fast ugt float %4114, 0.000000e+00
  br i1 %4115, label %4116, label %4419

; <label>:4116                                    ; preds = %4078
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 2
  %4119 = fmul fast float %4118, %4114
  %4120 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4121 = fadd fast float %4120, %4119
  %4122 = extractvalue %dx.types.CBufRet.f32 %4083, 2
  %4123 = fadd fast float %4121, %4090
  %4124 = fmul fast float %4096, %4084
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %4099, float %4087, float %4124)  ; FMad(a,b,c)
  %4126 = call float @dx.op.tertiary.f32(i32 46, float %4123, float %4122, float %4125)  ; FMad(a,b,c)
  %4127 = fsub fast float %4126, %4090
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4130 = fsub fast float %4127, %4129
  %4131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4111, float %4112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.ResRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.ResRet.f32 %4131, 2
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4111, float %4112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = extractvalue %dx.types.ResRet.f32 %4135, 1
  %4138 = extractvalue %dx.types.ResRet.f32 %4135, 2
  %4139 = fadd fast float %4136, %4132
  %4140 = fmul fast float %4139, 0x3F847AE140000000
  %4141 = fadd fast float %4137, %4133
  %4142 = fmul fast float %4141, 0x3F847AE140000000
  %4143 = fadd fast float %4138, %4134
  %4144 = fmul fast float %4143, 0x3F847AE140000000
  br label %4419

; <label>:4145                                    ; preds = %4005
  %4146 = and i32 %153, 1
  %4147 = icmp eq i32 %4146, 0
  br i1 %4147, label %4419, label %4148

; <label>:4148                                    ; preds = %4145
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 0
  %4153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4154 = extractvalue %dx.types.CBufRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4156 = extractvalue %dx.types.CBufRet.f32 %4151, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4153, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4159 = extractvalue %dx.types.CBufRet.f32 %4151, 3
  %4160 = extractvalue %dx.types.CBufRet.f32 %4153, 3
  %4161 = fadd fast float %4158, %4064
  %4162 = fadd fast float %4159, %4065
  %4163 = fadd fast float %4160, %4066
  %4164 = fmul fast float %4161, %4150
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4152, float %4164)  ; FMad(a,b,c)
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4154, float %4165)  ; FMad(a,b,c)
  %4167 = fmul fast float %4161, %4155
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4156, float %4167)  ; FMad(a,b,c)
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = fsub fast float %4166, %4158
  %4171 = fsub fast float %4169, %4159
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.CBufRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.CBufRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.CBufRet.f32 %4172, 3
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 3
  %4179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.i32 %4179, 0
  %4181 = extractvalue %dx.types.CBufRet.i32 %4179, 1
  %4182 = udiv i32 %4181, %4180
  %4183 = fsub fast float %4170, %4173
  %4184 = fsub fast float %4171, %4174
  %4185 = call float @dx.op.binary.f32(i32 35, float %4183, float 0.000000e+00)  ; FMax(a,b)
  %4186 = call float @dx.op.binary.f32(i32 35, float %4184, float 0.000000e+00)  ; FMax(a,b)
  %4187 = call float @dx.op.binary.f32(i32 36, float %4185, float %4175)  ; FMin(a,b)
  %4188 = call float @dx.op.binary.f32(i32 36, float %4186, float %4176)  ; FMin(a,b)
  %4189 = add i32 %4180, -1
  %4190 = add i32 %4182, -1
  %4191 = fmul fast float %4187, %4178
  %4192 = fmul fast float %4188, %4178
  %4193 = fptoui float %4191 to i32
  %4194 = fptoui float %4192 to i32
  %4195 = call i32 @dx.op.binary.i32(i32 40, i32 %4193, i32 %4189)  ; UMin(a,b)
  %4196 = call i32 @dx.op.binary.i32(i32 40, i32 %4194, i32 %4190)  ; UMin(a,b)
  %4197 = mul i32 %4196, %4180
  %4198 = add i32 %4197, %4195
  %4199 = shl i32 %4198, 2
  %4200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.i32 %4200, 0
  %4202 = icmp eq i32 %4201, -1
  br i1 %4202, label %4419, label %4203

; <label>:4203                                    ; preds = %4148
  %4204 = mul i32 %4201, 148
  %4205 = add i32 %4204, 4
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = add i32 %4204, 8
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = add i32 %4204, 36
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = add i32 %4204, 60
  %4215 = add i32 %4204, 92
  %4216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.i32 %4216, 0
  %4218 = add i32 %4204, 116
  %4219 = fsub fast float %4170, %4207
  %4220 = fsub fast float %4171, %4210
  %4221 = fmul fast float %4178, %4219
  %4222 = fmul fast float %4178, %4220
  %4223 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4224 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4225 = fsub fast float 1.000000e+00, %4224
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 2
  %4228 = call float @dx.op.unary.f32(i32 83, float %4223)  ; DerivCoarseX(value)
  %4229 = call float @dx.op.unary.f32(i32 83, float %4225)  ; DerivCoarseX(value)
  %4230 = call float @dx.op.unary.f32(i32 84, float %4223)  ; DerivCoarseY(value)
  %4231 = call float @dx.op.unary.f32(i32 84, float %4225)  ; DerivCoarseY(value)
  %4232 = fmul fast float %4228, %4227
  %4233 = fmul fast float %4229, %4227
  %4234 = fmul fast float %4230, %4227
  %4235 = fmul fast float %4231, %4227
  %4236 = call float @dx.op.dot2.f32(i32 54, float %4234, float %4235, float %4234, float %4235)  ; Dot2(ax,ay,bx,by)
  %4237 = call float @dx.op.dot2.f32(i32 54, float %4232, float %4233, float %4232, float %4233)  ; Dot2(ax,ay,bx,by)
  %4238 = call float @dx.op.binary.f32(i32 35, float %4237, float %4236)  ; FMax(a,b)
  %4239 = call float @dx.op.unary.f32(i32 23, float %4238)  ; Log(value)
  %4240 = fmul fast float %4239, 5.000000e-01
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 1
  %4243 = fadd fast float %4242, %4240
  %4244 = call float @dx.op.binary.f32(i32 35, float %4243, float 0.000000e+00)  ; FMax(a,b)
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4247 = fadd fast float %4246, %4244
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4250 = fadd fast float %4247, %4249
  %4251 = add i32 %4217, 0
  %4252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4251, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4253 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4252, i32 0)  ; GetDimensions(handle,mipLevel)
  %4254 = extractvalue %dx.types.Dimensions %4253, 0
  %4255 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4254)  ; FirstbitLo(value)
  %4256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.i32 %4256, 1
  %4258 = sub nsw i32 %4257, %4255
  %4259 = sitofp i32 %4258 to float
  %4260 = fsub fast float %4250, %4259
  %4261 = call float @dx.op.binary.f32(i32 35, float %4260, float 0.000000e+00)  ; FMax(a,b)
  %4262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4252, %dx.types.Handle %27, float %4223, float %4225, float %4213, float undef, i32 0, i32 0, i32 undef, float %4261)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = fcmp ule float %4263, 0x3FE0101020000000
  %4265 = extractvalue %dx.types.CBufRet.i32 %4256, 0
  %4266 = and i32 %4265, 128
  %4267 = icmp ne i32 %4266, 0
  %4268 = and i1 %4264, %4267
  br i1 %4268, label %4419, label %4269

; <label>:4269                                    ; preds = %4203
  %4270 = add i32 %4204, 20
  %4271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = add i32 %4204, 24
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = add i32 %4204, 40
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = add i32 %4204, 96
  %4280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.i32 %4280, 0
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 2
  %4284 = fmul fast float %4283, %4223
  %4285 = fmul fast float %4283, %4225
  %4286 = extractvalue %dx.types.CBufRet.f32 %4282, 3
  %4287 = fadd fast float %4284, %4286
  %4288 = fadd fast float %4285, %4286
  %4289 = add i32 %4281, 0
  %4290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4289, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4291 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4290, i32 0)  ; GetDimensions(handle,mipLevel)
  %4292 = extractvalue %dx.types.Dimensions %4291, 0
  %4293 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4292)  ; FirstbitLo(value)
  %4294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.i32 %4294, 1
  %4296 = sub nsw i32 %4295, %4293
  %4297 = sitofp i32 %4296 to float
  %4298 = fsub fast float %4247, %4297
  %4299 = call float @dx.op.binary.f32(i32 35, float %4298, float 0.000000e+00)  ; FMax(a,b)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4290, %dx.types.Handle %27, float %4287, float %4288, float %4278, float undef, i32 0, i32 0, i32 undef, float %4299)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = fmul fast float %4301, %4272
  %4303 = fadd fast float %4302, %4275
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.CBufRet.f32 %4304, 1
  %4307 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4312 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4313 = fadd fast float %4309, %4170
  %4314 = fadd fast float %4311, %4171
  %4315 = fadd fast float %4303, %4312
  %4316 = fmul fast float %4313, %4305
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4306, float %4316)  ; FMad(a,b,c)
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4315, float %4307, float %4317)  ; FMad(a,b,c)
  %4319 = fsub fast float %4318, %4312
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4322 = fsub fast float %4319, %4321
  %4323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4324 = extractvalue %dx.types.CBufRet.i32 %4323, 0
  %4325 = call i32 @dx.op.binary.i32(i32 40, i32 %4201, i32 %4324)  ; UMin(a,b)
  %4326 = mul i32 %4325, 36
  %4327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.i32 %4327, 0
  %4329 = add i32 %4326, 4
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 0
  %4332 = fmul fast float %4331, %4223
  %4333 = fmul fast float %4331, %4225
  %4334 = extractvalue %dx.types.CBufRet.f32 %4330, 1
  %4335 = fadd fast float %4332, %4334
  %4336 = fadd fast float %4333, %4334
  %4337 = icmp eq i32 %4328, 0
  br i1 %4337, label %4406, label %4338

; <label>:4338                                    ; preds = %4269
  br label %4339

; <label>:4339                                    ; preds = %4396, %4338
  %4340 = phi float [ %4397, %4396 ], [ 0.000000e+00, %4338 ]
  %4341 = phi float [ %4398, %4396 ], [ 0.000000e+00, %4338 ]
  %4342 = phi float [ %4399, %4396 ], [ 0.000000e+00, %4338 ]
  %4343 = phi float [ %4400, %4396 ], [ 0.000000e+00, %4338 ]
  %4344 = phi float [ %4401, %4396 ], [ 0.000000e+00, %4338 ]
  %4345 = phi float [ %4402, %4396 ], [ 0.000000e+00, %4338 ]
  %4346 = phi i32 [ %4403, %4396 ], [ 0, %4338 ]
  %4347 = shl i32 %4346, 2
  %4348 = add i32 %4214, %4347
  %4349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4348, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = add i32 %4218, %4347
  %4352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4351, i32 undef)  ; BufferLoad(srv,index,wot)
  %4353 = extractvalue %dx.types.ResRet.i32 %4352, 0
  %4354 = add i32 %4353, 0
  %4355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4354, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4356 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4355, i32 0)  ; GetDimensions(handle,mipLevel)
  %4357 = extractvalue %dx.types.Dimensions %4356, 0
  %4358 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4357)  ; FirstbitLo(value)
  %4359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4360 = extractvalue %dx.types.CBufRet.i32 %4359, 1
  %4361 = sub nsw i32 %4360, %4358
  %4362 = sitofp i32 %4361 to float
  %4363 = fsub fast float %4247, %4362
  %4364 = call float @dx.op.binary.f32(i32 35, float %4363, float 0.000000e+00)  ; FMax(a,b)
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4355, %dx.types.Handle %27, float %4335, float %4336, float %4350, float undef, i32 0, i32 0, i32 undef, float %4364)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = fcmp fast ogt float %4366, 0.000000e+00
  br i1 %4367, label %4368, label %4396

; <label>:4368                                    ; preds = %4339
  %4369 = add i32 %4329, %4347
  %4370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4369, i32 undef)  ; BufferLoad(srv,index,wot)
  %4371 = extractvalue %dx.types.ResRet.i32 %4370, 0
  %4372 = and i32 %4371, 32767
  %4373 = mul nuw nsw i32 %4372, 928
  %4374 = add nuw nsw i32 %4373, 48
  %4375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  %4379 = add nuw nsw i32 %4373, 60
  %4380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.ResRet.f32 %4380, 1
  %4383 = extractvalue %dx.types.ResRet.f32 %4380, 2
  %4384 = fmul fast float %4376, %4366
  %4385 = fmul fast float %4377, %4366
  %4386 = fmul fast float %4378, %4366
  %4387 = fadd fast float %4384, %4340
  %4388 = fadd fast float %4385, %4341
  %4389 = fadd fast float %4386, %4342
  %4390 = fmul fast float %4381, %4366
  %4391 = fmul fast float %4382, %4366
  %4392 = fmul fast float %4383, %4366
  %4393 = fadd fast float %4390, %4343
  %4394 = fadd fast float %4391, %4344
  %4395 = fadd fast float %4392, %4345
  br label %4396

; <label>:4396                                    ; preds = %4368, %4339
  %4397 = phi float [ %4387, %4368 ], [ %4340, %4339 ]
  %4398 = phi float [ %4388, %4368 ], [ %4341, %4339 ]
  %4399 = phi float [ %4389, %4368 ], [ %4342, %4339 ]
  %4400 = phi float [ %4393, %4368 ], [ %4343, %4339 ]
  %4401 = phi float [ %4394, %4368 ], [ %4344, %4339 ]
  %4402 = phi float [ %4395, %4368 ], [ %4345, %4339 ]
  %4403 = add nuw i32 %4346, 1
  %4404 = icmp eq i32 %4403, %4328
  br i1 %4404, label %4405, label %4339

; <label>:4405                                    ; preds = %4396
  br label %4406

; <label>:4406                                    ; preds = %4405, %4269
  %4407 = phi float [ 0.000000e+00, %4269 ], [ %4397, %4405 ]
  %4408 = phi float [ 0.000000e+00, %4269 ], [ %4398, %4405 ]
  %4409 = phi float [ 0.000000e+00, %4269 ], [ %4399, %4405 ]
  %4410 = phi float [ 0.000000e+00, %4269 ], [ %4400, %4405 ]
  %4411 = phi float [ 0.000000e+00, %4269 ], [ %4401, %4405 ]
  %4412 = phi float [ 0.000000e+00, %4269 ], [ %4402, %4405 ]
  %4413 = fadd fast float %4410, %4407
  %4414 = fmul fast float %4413, 0x3F847AE140000000
  %4415 = fadd fast float %4411, %4408
  %4416 = fmul fast float %4415, 0x3F847AE140000000
  %4417 = fadd fast float %4412, %4409
  %4418 = fmul fast float %4417, 0x3F847AE140000000
  br label %4419

; <label>:4419                                    ; preds = %4406, %4203, %4148, %4145, %4116, %4078
  %4420 = phi float [ %4130, %4116 ], [ -1.310720e+05, %4078 ], [ %4322, %4406 ], [ -1.310720e+05, %4148 ], [ -1.310720e+05, %4203 ], [ -1.310720e+05, %4145 ]
  %4421 = phi float [ %4140, %4116 ], [ 0.000000e+00, %4078 ], [ %4414, %4406 ], [ 0.000000e+00, %4148 ], [ 0.000000e+00, %4203 ], [ 0.000000e+00, %4145 ]
  %4422 = phi float [ %4142, %4116 ], [ 0.000000e+00, %4078 ], [ %4416, %4406 ], [ 0.000000e+00, %4148 ], [ 0.000000e+00, %4203 ], [ 0.000000e+00, %4145 ]
  %4423 = phi float [ %4144, %4116 ], [ 0.000000e+00, %4078 ], [ %4418, %4406 ], [ 0.000000e+00, %4148 ], [ 0.000000e+00, %4203 ], [ 0.000000e+00, %4145 ]
  %4424 = phi i1 [ true, %4116 ], [ false, %4078 ], [ true, %4406 ], [ false, %4148 ], [ false, %4203 ], [ false, %4145 ]
  %4425 = and i32 %153, 3
  %4426 = icmp eq i32 %4425, 1
  %4427 = select i1 %4426, float 1.000000e+00, float 0.000000e+00
  %4428 = fsub fast float %4420, %137
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = select i1 %4424, float %4429, float 1.000000e+00
  %4431 = fmul fast float %4430, %4427
  %4432 = icmp eq i32 %4425, 3
  %4433 = select i1 %4432, float 1.000000e+00, float %4431
  %4434 = call float @dx.op.binary.f32(i32 35, float %4021, float %4433)  ; FMax(a,b)
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fcmp fast une float %4435, 0.000000e+00
  %4437 = call float @dx.op.dot3.f32(i32 55, float %135, float %136, float %137, float %135, float %136, float %137)  ; Dot3(ax,ay,az,bx,by,bz)
  %4438 = call float @dx.op.unary.f32(i32 25, float %4437)  ; Rsqrt(value)
  br i1 %4436, label %4446, label %4439

; <label>:4439                                    ; preds = %4419
  %4440 = fmul fast float %4438, %135
  %4441 = fmul fast float %4438, %136
  %4442 = fmul fast float %4438, %137
  %4443 = fsub fast float -0.000000e+00, %4440
  %4444 = fsub fast float -0.000000e+00, %4441
  %4445 = fsub fast float -0.000000e+00, %4442
  br label %4614

; <label>:4446                                    ; preds = %4419
  %4447 = fmul fast float %135, %4438
  %4448 = fsub fast float -0.000000e+00, %4447
  %4449 = fmul fast float %136, %4438
  %4450 = fsub fast float -0.000000e+00, %4449
  %4451 = fmul fast float %137, %4438
  %4452 = fsub fast float -0.000000e+00, %4451
  %4453 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4450, float %4452, float %85, float %87, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4454 = fmul fast float %4435, 2.500000e+00
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = fmul fast float %4435, 0x4013FFFFE0000000
  %4457 = fadd fast float %4456, 0xBFFFFFFFE0000000
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4435, 0x4004000020000000
  %4460 = fadd fast float %4459, 0xBFF8000040000000
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4463 = fmul fast float %4024, 1.000000e+01
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = fmul fast float %4464, 2.000000e+00
  %4466 = fsub fast float 3.000000e+00, %4465
  %4467 = fmul fast float %4464, %4464
  %4468 = fmul fast float %4467, %4466
  %4469 = fsub fast float 1.000000e+00, %4468
  %4470 = fsub fast float 0x3FE3333340000000, %4045
  %4471 = fmul fast float %4470, 0x400AAAAAA0000000
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fmul fast float %4469, %4472
  %4474 = fmul fast float %4057, 0x3FEA2B8620000000
  %4475 = fmul fast float %4058, 0x3FEA2B8620000000
  %4476 = fmul fast float %4059, 0x3FEA2B8620000000
  %4477 = fadd fast float %4474, 0x3FC81DFBA0000000
  %4478 = fmul fast float %4477, %4057
  %4479 = fadd fast float %4478, 0x3F910E6020000000
  %4480 = fadd fast float %4475, 0x3FC81DFBA0000000
  %4481 = fmul fast float %4480, %4058
  %4482 = fadd fast float %4481, 0x3F910E6020000000
  %4483 = fadd fast float %4476, 0x3FC81DFBA0000000
  %4484 = fmul fast float %4483, %4059
  %4485 = fadd fast float %4484, 0x3F910E6020000000
  %4486 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = fsub fast float %4486, %4057
  %4490 = fsub fast float %4487, %4058
  %4491 = fsub fast float %4488, %4059
  %4492 = fmul fast float %4489, %4462
  %4493 = fmul fast float %4492, %4473
  %4494 = fmul fast float %4490, %4462
  %4495 = fmul fast float %4494, %4473
  %4496 = fmul fast float %4491, %4462
  %4497 = fmul fast float %4496, %4473
  %4498 = fadd fast float %4493, %4057
  %4499 = fadd fast float %4495, %4058
  %4500 = fadd fast float %4497, %4059
  %4501 = fmul fast float %4018, %4018
  %4502 = fmul fast float %4501, %4501
  %4503 = fadd fast float %4458, 1.000000e+00
  %4504 = fsub fast float %4503, %4473
  %4505 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4506 = call float @dx.op.dot3.f32(i32 55, float %85, float %87, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4508 = fsub fast float 1.000000e+00, %4502
  %4509 = call float @dx.op.binary.f32(i32 36, float %4505, float %4508)  ; FMin(a,b)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4511 = call float @dx.op.binary.f32(i32 35, float %4509, float %4510)  ; FMax(a,b)
  %4512 = fadd fast float %4507, 0xBFE4CCCCC0000000
  %4513 = fmul fast float %4512, 0x4006DB6DA0000000
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %4514, 2.000000e+00
  %4516 = fsub fast float 3.000000e+00, %4515
  %4517 = bitcast float %4042 to i32
  %4518 = ashr i32 %4517, 1
  %4519 = add nsw i32 %4518, 532487669
  %4520 = bitcast i32 %4519 to float
  %4521 = fsub fast float 1.000000e+00, %4520
  %4522 = bitcast float %4521 to i32
  %4523 = sub nsw i32 2129859010, %4522
  %4524 = bitcast i32 %4523 to float
  %4525 = fmul fast float %4524, 2.000000e+00
  %4526 = bitcast float %4043 to i32
  %4527 = ashr i32 %4526, 1
  %4528 = add nsw i32 %4527, 532487669
  %4529 = bitcast i32 %4528 to float
  %4530 = fsub fast float 1.000000e+00, %4529
  %4531 = bitcast float %4530 to i32
  %4532 = sub nsw i32 2129859010, %4531
  %4533 = bitcast i32 %4532 to float
  %4534 = fmul fast float %4533, 2.000000e+00
  %4535 = bitcast float %4044 to i32
  %4536 = ashr i32 %4535, 1
  %4537 = add nsw i32 %4536, 532487669
  %4538 = bitcast i32 %4537 to float
  %4539 = fsub fast float 1.000000e+00, %4538
  %4540 = bitcast float %4539 to i32
  %4541 = sub nsw i32 2129859010, %4540
  %4542 = bitcast i32 %4541 to float
  %4543 = fmul fast float %4542, 2.000000e+00
  %4544 = fsub fast float 0x4002A9FBE0000000, %4525
  %4545 = fadd fast float %4525, 0x3FD54FDF00000000
  %4546 = bitcast float %4545 to i32
  %4547 = sub nsw i32 2129859010, %4546
  %4548 = bitcast i32 %4547 to float
  %4549 = fmul fast float %4548, %4544
  %4550 = fmul fast float %4549, %4549
  %4551 = fsub fast float 0x4002A9FBE0000000, %4534
  %4552 = fadd fast float %4534, 0x3FD54FDF00000000
  %4553 = bitcast float %4552 to i32
  %4554 = sub nsw i32 2129859010, %4553
  %4555 = bitcast i32 %4554 to float
  %4556 = fmul fast float %4555, %4551
  %4557 = fmul fast float %4556, %4556
  %4558 = fsub fast float 0x4002A9FBE0000000, %4543
  %4559 = fadd fast float %4543, 0x3FD54FDF00000000
  %4560 = bitcast float %4559 to i32
  %4561 = sub nsw i32 2129859010, %4560
  %4562 = bitcast i32 %4561 to float
  %4563 = fmul fast float %4562, %4558
  %4564 = fmul fast float %4563, %4563
  %4565 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4550)  ; FMax(a,b)
  %4566 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4557)  ; FMax(a,b)
  %4567 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4564)  ; FMax(a,b)
  %4568 = fsub fast float 1.000000e+00, %4453
  %4569 = fadd fast float %4568, %4469
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = fsub fast float 1.000000e+00, %4433
  %4572 = fmul fast float %4511, %4571
  %4573 = fmul fast float %4514, %4514
  %4574 = fmul fast float %4573, %4572
  %4575 = fmul fast float %4574, %4516
  %4576 = fmul fast float %4571, 0xBFE99999A0000000
  %4577 = fmul fast float %4576, %4462
  %4578 = fmul fast float %4577, %4473
  %4579 = fadd fast float %4578, 1.000000e+00
  %4580 = fadd fast float %4045, -1.000000e+00
  %4581 = fmul fast float %4579, %4580
  %4582 = fadd fast float %4581, 1.000000e+00
  %4583 = fsub fast float %4565, %4042
  %4584 = fsub fast float %4566, %4043
  %4585 = fsub fast float %4567, %4044
  %4586 = fmul fast float %4575, %4583
  %4587 = fmul fast float %4575, %4584
  %4588 = fmul fast float %4575, %4585
  %4589 = fadd fast float %4586, %4042
  %4590 = fadd fast float %4587, %4043
  %4591 = fadd fast float %4588, %4044
  %4592 = fsub fast float %85, %4006
  %4593 = fsub fast float %87, %4007
  %4594 = fsub fast float %89, %4008
  %4595 = fmul fast float %4575, %4592
  %4596 = fmul fast float %4575, %4593
  %4597 = fmul fast float %4575, %4594
  %4598 = fadd fast float %4595, %4006
  %4599 = fadd fast float %4596, %4007
  %4600 = fadd fast float %4597, %4008
  %4601 = fmul fast float %4575, %4570
  %4602 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4603 = fsub fast float 1.000000e+00, %4602
  %4604 = fmul fast float %4601, %4603
  %4605 = fadd fast float %4604, %4602
  %4606 = fsub fast float 1.000000e+00, %4018
  %4607 = fmul fast float %4575, %4606
  %4608 = fadd fast float %4607, %4018
  %4609 = call float @dx.op.dot3.f32(i32 55, float %4598, float %4599, float %4600, float %4598, float %4599, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = call float @dx.op.unary.f32(i32 25, float %4609)  ; Rsqrt(value)
  %4611 = fmul fast float %4598, %4610
  %4612 = fmul fast float %4599, %4610
  %4613 = fmul fast float %4600, %4610
  br label %4614

; <label>:4614                                    ; preds = %4446, %4439
  %4615 = phi float [ %4445, %4439 ], [ %4452, %4446 ]
  %4616 = phi float [ %4444, %4439 ], [ %4450, %4446 ]
  %4617 = phi float [ %4443, %4439 ], [ %4448, %4446 ]
  %4618 = phi float [ %4442, %4439 ], [ %4451, %4446 ]
  %4619 = phi float [ %4441, %4439 ], [ %4449, %4446 ]
  %4620 = phi float [ %4440, %4439 ], [ %4447, %4446 ]
  %4621 = phi float [ %4057, %4439 ], [ %4498, %4446 ]
  %4622 = phi float [ %4058, %4439 ], [ %4499, %4446 ]
  %4623 = phi float [ %4059, %4439 ], [ %4500, %4446 ]
  %4624 = phi float [ %4006, %4439 ], [ %4611, %4446 ]
  %4625 = phi float [ %4007, %4439 ], [ %4612, %4446 ]
  %4626 = phi float [ %4008, %4439 ], [ %4613, %4446 ]
  %4627 = phi float [ %4042, %4439 ], [ %4589, %4446 ]
  %4628 = phi float [ %4043, %4439 ], [ %4590, %4446 ]
  %4629 = phi float [ %4044, %4439 ], [ %4591, %4446 ]
  %4630 = phi float [ %4045, %4439 ], [ %4605, %4446 ]
  %4631 = phi float [ %4018, %4439 ], [ %4608, %4446 ]
  %4632 = select i1 %177, float 0.000000e+00, float %4629
  %4633 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %4617, float %4616, float %4615)  ; Dot3(ax,ay,az,bx,by,bz)
  %4634 = call float @dx.op.unary.f32(i32 7, float %4633)  ; Saturate(value)
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4619, float %4618, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = fmul fast float %4635, 2.000000e+00
  %4637 = fmul fast float %4636, %4624
  %4638 = fmul fast float %4636, %4625
  %4639 = fmul fast float %4636, %4626
  %4640 = fsub fast float %4620, %4637
  %4641 = fsub fast float %4619, %4638
  %4642 = fsub fast float %4618, %4639
  %4643 = call float @dx.op.binary.f32(i32 36, float %4631, float 1.000000e+00)  ; FMin(a,b)
  %4644 = fsub fast float 1.000000e+00, %4631
  %4645 = bitcast float %4644 to i32
  %4646 = sub nsw i32 2129859010, %4645
  %4647 = call float @dx.op.dot3.f32(i32 55, float %53, float %49, float %45, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = fmul fast float %4647, 0x3FD20DD760000000
  %4649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %53)  ; FMax(a,b)
  %4650 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4651 = fcmp fast oeq float %4650, 0.000000e+00
  %4652 = fcmp fast oeq float %4649, 0.000000e+00
  %4653 = or i1 %4652, %4651
  br i1 %4653, label %4683, label %4654

; <label>:4654                                    ; preds = %4614
  %4655 = fsub fast float -0.000000e+00, %56
  %4656 = fsub fast float -0.000000e+00, %54
  %4657 = call float @dx.op.unary.f32(i32 24, float %4650)  ; Sqrt(value)
  %4658 = fdiv fast float %4657, %4649
  %4659 = fcmp fast ogt float %4658, 0x3FFB6F8900000000
  %4660 = select i1 %4659, float 0x3FFB6F8900000000, float %4658
  %4661 = fmul fast float %4660, 0x3FE8A23460000000
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = call float @dx.op.binary.f32(i32 35, float %4660, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4664 = fmul fast float %4662, %4649
  %4665 = fmul fast float %4663, 0x3FF279A740000000
  %4666 = fadd fast float %4665, -1.000000e+00
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4656, float %55, float %4655, float %4656, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = call float @dx.op.unary.f32(i32 25, float %4667)  ; Rsqrt(value)
  %4669 = fmul fast float %4668, %4655
  %4670 = fmul fast float %4668, %4656
  %4671 = fmul fast float %4668, %55
  %4672 = fmul fast float %4666, %4666
  %4673 = fsub fast float 1.000000e+00, %4672
  %4674 = fmul fast float %4663, 0x40005F8BE0000000
  %4675 = fsub fast float 0x400C5BF8A0000000, %4674
  %4676 = fdiv fast float %4664, %4675
  %4677 = fmul fast float %4676, 0x3FEE31C3C0000000
  %4678 = fmul fast float %4677, %4673
  %4679 = fmul fast float %4663, 0x3FDACB7480000000
  %4680 = fadd fast float %4679, 0xBFD7347680000000
  %4681 = fmul fast float %4680, %4676
  %4682 = fmul fast float %4681, %4673
  br label %4683

; <label>:4683                                    ; preds = %4654, %4614
  %4684 = phi float [ %4669, %4654 ], [ 0.000000e+00, %4614 ]
  %4685 = phi float [ %4670, %4654 ], [ 0.000000e+00, %4614 ]
  %4686 = phi float [ %4671, %4654 ], [ 0.000000e+00, %4614 ]
  %4687 = phi float [ %4678, %4654 ], [ 0.000000e+00, %4614 ]
  %4688 = phi float [ %4682, %4654 ], [ 0.000000e+00, %4614 ]
  %4689 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4685, float %4686, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = fmul fast float %4689, %4689
  %4691 = fmul fast float %4690, 0x3FEE471020000000
  %4692 = fadd fast float %4691, 0xBFD42F6020000000
  %4693 = fmul fast float %4649, 0x3FD20DD760000000
  %4694 = fmul fast float %4692, %4688
  %4695 = fmul fast float %4687, 0x3FDF454380000000
  %4696 = fmul fast float %4695, %4689
  %4697 = fadd fast float %4696, %4693
  %4698 = fadd fast float %4697, %4694
  %4699 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4685, float %4686, float %4640, float %4641, float %4642)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = fmul fast float %4699, 0x3FDF454380000000
  %4701 = fmul fast float %4699, %4699
  %4702 = fmul fast float %4701, 0x3FEE471020000000
  %4703 = fadd fast float %4702, 0xBFD42F6020000000
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4687, float %4688, float 0x3FD20DD760000000, float %4700, float %4703)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %49)  ; FMax(a,b)
  %4706 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = fcmp fast oeq float %4706, 0.000000e+00
  %4708 = fcmp fast oeq float %4705, 0.000000e+00
  %4709 = or i1 %4708, %4707
  br i1 %4709, label %4739, label %4710

; <label>:4710                                    ; preds = %4683
  %4711 = fsub fast float -0.000000e+00, %52
  %4712 = fsub fast float -0.000000e+00, %50
  %4713 = call float @dx.op.unary.f32(i32 24, float %4706)  ; Sqrt(value)
  %4714 = fdiv fast float %4713, %4705
  %4715 = fcmp fast ogt float %4714, 0x3FFB6F8900000000
  %4716 = select i1 %4715, float 0x3FFB6F8900000000, float %4714
  %4717 = fmul fast float %4716, 0x3FE8A23460000000
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = call float @dx.op.binary.f32(i32 35, float %4716, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4720 = fmul fast float %4718, %4705
  %4721 = fmul fast float %4719, 0x3FF279A740000000
  %4722 = fadd fast float %4721, -1.000000e+00
  %4723 = call float @dx.op.dot3.f32(i32 55, float %4711, float %4712, float %51, float %4711, float %4712, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4724 = call float @dx.op.unary.f32(i32 25, float %4723)  ; Rsqrt(value)
  %4725 = fmul fast float %4724, %4711
  %4726 = fmul fast float %4724, %4712
  %4727 = fmul fast float %4724, %51
  %4728 = fmul fast float %4722, %4722
  %4729 = fsub fast float 1.000000e+00, %4728
  %4730 = fmul fast float %4719, 0x40005F8BE0000000
  %4731 = fsub fast float 0x400C5BF8A0000000, %4730
  %4732 = fdiv fast float %4720, %4731
  %4733 = fmul fast float %4732, 0x3FEE31C3C0000000
  %4734 = fmul fast float %4733, %4729
  %4735 = fmul fast float %4719, 0x3FDACB7480000000
  %4736 = fadd fast float %4735, 0xBFD7347680000000
  %4737 = fmul fast float %4736, %4732
  %4738 = fmul fast float %4737, %4729
  br label %4739

; <label>:4739                                    ; preds = %4710, %4683
  %4740 = phi float [ %4725, %4710 ], [ 0.000000e+00, %4683 ]
  %4741 = phi float [ %4726, %4710 ], [ 0.000000e+00, %4683 ]
  %4742 = phi float [ %4727, %4710 ], [ 0.000000e+00, %4683 ]
  %4743 = phi float [ %4734, %4710 ], [ 0.000000e+00, %4683 ]
  %4744 = phi float [ %4738, %4710 ], [ 0.000000e+00, %4683 ]
  %4745 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4746 = fmul fast float %4745, %4745
  %4747 = fmul fast float %4746, 0x3FEE471020000000
  %4748 = fadd fast float %4747, 0xBFD42F6020000000
  %4749 = fmul fast float %4705, 0x3FD20DD760000000
  %4750 = fmul fast float %4748, %4744
  %4751 = fmul fast float %4743, 0x3FDF454380000000
  %4752 = fmul fast float %4751, %4745
  %4753 = fadd fast float %4752, %4749
  %4754 = fadd fast float %4753, %4750
  %4755 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float %4640, float %4641, float %4642)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = fmul fast float %4755, 0x3FDF454380000000
  %4757 = fmul fast float %4755, %4755
  %4758 = fmul fast float %4757, 0x3FEE471020000000
  %4759 = fadd fast float %4758, 0xBFD42F6020000000
  %4760 = call float @dx.op.dot3.f32(i32 55, float %4705, float %4743, float %4744, float 0x3FD20DD760000000, float %4756, float %4759)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %45)  ; FMax(a,b)
  %4762 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = fcmp fast oeq float %4762, 0.000000e+00
  %4764 = fcmp fast oeq float %4761, 0.000000e+00
  %4765 = or i1 %4764, %4763
  br i1 %4765, label %4795, label %4766

; <label>:4766                                    ; preds = %4739
  %4767 = fsub fast float -0.000000e+00, %48
  %4768 = fsub fast float -0.000000e+00, %46
  %4769 = call float @dx.op.unary.f32(i32 24, float %4762)  ; Sqrt(value)
  %4770 = fdiv fast float %4769, %4761
  %4771 = fcmp fast ogt float %4770, 0x3FFB6F8900000000
  %4772 = select i1 %4771, float 0x3FFB6F8900000000, float %4770
  %4773 = fmul fast float %4772, 0x3FE8A23460000000
  %4774 = call float @dx.op.unary.f32(i32 7, float %4773)  ; Saturate(value)
  %4775 = call float @dx.op.binary.f32(i32 35, float %4772, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4776 = fmul fast float %4774, %4761
  %4777 = fmul fast float %4775, 0x3FF279A740000000
  %4778 = fadd fast float %4777, -1.000000e+00
  %4779 = call float @dx.op.dot3.f32(i32 55, float %4767, float %4768, float %47, float %4767, float %4768, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = call float @dx.op.unary.f32(i32 25, float %4779)  ; Rsqrt(value)
  %4781 = fmul fast float %4780, %4767
  %4782 = fmul fast float %4780, %4768
  %4783 = fmul fast float %4780, %47
  %4784 = fmul fast float %4778, %4778
  %4785 = fsub fast float 1.000000e+00, %4784
  %4786 = fmul fast float %4775, 0x40005F8BE0000000
  %4787 = fsub fast float 0x400C5BF8A0000000, %4786
  %4788 = fdiv fast float %4776, %4787
  %4789 = fmul fast float %4788, 0x3FEE31C3C0000000
  %4790 = fmul fast float %4789, %4785
  %4791 = fmul fast float %4775, 0x3FDACB7480000000
  %4792 = fadd fast float %4791, 0xBFD7347680000000
  %4793 = fmul fast float %4792, %4788
  %4794 = fmul fast float %4793, %4785
  br label %4795

; <label>:4795                                    ; preds = %4766, %4739
  %4796 = phi float [ %4781, %4766 ], [ 0.000000e+00, %4739 ]
  %4797 = phi float [ %4782, %4766 ], [ 0.000000e+00, %4739 ]
  %4798 = phi float [ %4783, %4766 ], [ 0.000000e+00, %4739 ]
  %4799 = phi float [ %4790, %4766 ], [ 0.000000e+00, %4739 ]
  %4800 = phi float [ %4794, %4766 ], [ 0.000000e+00, %4739 ]
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %4798, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = fmul fast float %4801, %4801
  %4803 = fmul fast float %4802, 0x3FEE471020000000
  %4804 = fadd fast float %4803, 0xBFD42F6020000000
  %4805 = fmul fast float %4761, 0x3FD20DD760000000
  %4806 = fmul fast float %4804, %4800
  %4807 = fmul fast float %4799, 0x3FDF454380000000
  %4808 = fmul fast float %4807, %4801
  %4809 = fadd fast float %4808, %4805
  %4810 = fadd fast float %4809, %4806
  %4811 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4797, float %4798, float %4640, float %4641, float %4642)  ; Dot3(ax,ay,az,bx,by,bz)
  %4812 = fmul fast float %4811, 0x3FDF454380000000
  %4813 = fmul fast float %4811, %4811
  %4814 = fmul fast float %4813, 0x3FEE471020000000
  %4815 = fadd fast float %4814, 0xBFD42F6020000000
  %4816 = call float @dx.op.dot3.f32(i32 55, float %4761, float %4799, float %4800, float 0x3FD20DD760000000, float %4812, float %4815)  ; Dot3(ax,ay,az,bx,by,bz)
  %4817 = call float @dx.op.binary.f32(i32 35, float %4698, float 0.000000e+00)  ; FMax(a,b)
  %4818 = call float @dx.op.binary.f32(i32 35, float %4754, float 0.000000e+00)  ; FMax(a,b)
  %4819 = call float @dx.op.binary.f32(i32 35, float %4810, float 0.000000e+00)  ; FMax(a,b)
  %4820 = call float @dx.op.binary.f32(i32 35, float %4704, float 0.000000e+00)  ; FMax(a,b)
  %4821 = call float @dx.op.binary.f32(i32 35, float %4760, float 0.000000e+00)  ; FMax(a,b)
  %4822 = call float @dx.op.binary.f32(i32 35, float %4816, float 0.000000e+00)  ; FMax(a,b)
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 0
  %4825 = call float @dx.op.binary.f32(i32 36, float %4621, float %4824)  ; FMin(a,b)
  %4826 = fsub fast float 1.000000e+00, %4643
  %4827 = fmul fast float %4825, %4826
  %4828 = fsub fast float 1.000000e+00, %4827
  %4829 = bitcast float %4828 to i32
  %4830 = sub nsw i32 2129859010, %4829
  %4831 = bitcast i32 %4830 to float
  %4832 = call float @dx.op.binary.f32(i32 36, float %4622, float %4824)  ; FMin(a,b)
  %4833 = fmul fast float %4832, %4826
  %4834 = fsub fast float 1.000000e+00, %4833
  %4835 = bitcast float %4834 to i32
  %4836 = sub nsw i32 2129859010, %4835
  %4837 = bitcast i32 %4836 to float
  %4838 = call float @dx.op.binary.f32(i32 36, float %4623, float %4824)  ; FMin(a,b)
  %4839 = fmul fast float %4838, %4826
  %4840 = fsub fast float 1.000000e+00, %4839
  %4841 = bitcast float %4840 to i32
  %4842 = sub nsw i32 2129859010, %4841
  %4843 = bitcast i32 %4842 to float
  %4844 = fmul fast float %4817, %4643
  %4845 = fmul fast float %4844, %4831
  %4846 = fmul fast float %4818, %4643
  %4847 = fmul fast float %4846, %4837
  %4848 = fmul fast float %4819, %4643
  %4849 = fmul fast float %4848, %4843
  %4850 = call float @dx.op.binary.f32(i32 36, float %4627, float %4824)  ; FMin(a,b)
  %4851 = fmul fast float %4850, %4826
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = bitcast float %4852 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = call float @dx.op.binary.f32(i32 36, float %4628, float %4824)  ; FMin(a,b)
  %4857 = fmul fast float %4856, %4826
  %4858 = fsub fast float 1.000000e+00, %4857
  %4859 = bitcast float %4858 to i32
  %4860 = sub nsw i32 2129859010, %4859
  %4861 = bitcast i32 %4860 to float
  %4862 = call float @dx.op.binary.f32(i32 36, float %4632, float %4824)  ; FMin(a,b)
  %4863 = fmul fast float %4862, %4826
  %4864 = fsub fast float 1.000000e+00, %4863
  %4865 = bitcast float %4864 to i32
  %4866 = sub nsw i32 2129859010, %4865
  %4867 = bitcast i32 %4866 to float
  %4868 = fmul fast float %4820, %4643
  %4869 = fmul fast float %4868, %4855
  %4870 = fmul fast float %4821, %4643
  %4871 = fmul fast float %4870, %4861
  %4872 = fmul fast float %4822, %4643
  %4873 = fmul fast float %4872, %4867
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4845, float %4847, float %4849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = select i1 %177, float 0.000000e+00, float %4845
  %4876 = select i1 %177, float %4874, float %4847
  %4877 = select i1 %177, float 0.000000e+00, float %4849
  %4878 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4871, float %4873, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4879 = select i1 %177, float 0.000000e+00, float %4869
  %4880 = select i1 %177, float %4878, float %4871
  %4881 = select i1 %177, float 0.000000e+00, float %4873
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4884 = fsub fast float %71, %4883
  %4885 = extractvalue %dx.types.CBufRet.f32 %4882, 2
  %4886 = fmul fast float %4884, %4885
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4647, 0x4071A18460000000
  %4889 = fadd fast float %4888, 0x3F0FFB4800000000
  %4890 = call float @dx.op.unary.f32(i32 23, float %4889)  ; Log(value)
  %4891 = fadd fast float %4890, 0x4006B851E0000000
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 1
  %4894 = extractvalue %dx.types.CBufRet.f32 %4892, 3
  %4895 = fsub fast float %4893, %4891
  %4896 = fcmp fast ogt float %4895, 0.000000e+00
  %4897 = fcmp fast olt float %4895, 0.000000e+00
  %4898 = zext i1 %4896 to i32
  %4899 = zext i1 %4897 to i32
  %4900 = sub nsw i32 %4898, %4899
  %4901 = sitofp i32 %4900 to float
  %4902 = call float @dx.op.unary.f32(i32 6, float %4895)  ; FAbs(value)
  %4903 = fsub fast float %4902, %4894
  %4904 = call float @dx.op.binary.f32(i32 35, float %4903, float 0.000000e+00)  ; FMax(a,b)
  %4905 = fmul fast float %4901, %4904
  %4906 = fadd fast float %4890, %4905
  %4907 = call float @dx.op.unary.f32(i32 21, float %4906)  ; Exp(value)
  %4908 = fmul fast float %4907, 0x3F50624DE0000000
  %4909 = fcmp fast oeq float %4648, 0.000000e+00
  %4910 = fdiv fast float 0x400C5BF880000000, %4647
  %4911 = fmul fast float %4908, %4910
  %4912 = select i1 %4909, float 1.000000e+00, float %4911
  %4913 = call float @dx.op.binary.f32(i32 35, float %4912, float 1.000000e+00)  ; FMax(a,b)
  %4914 = fadd fast float %4913, -1.000000e+00
  %4915 = fmul fast float %4914, %4887
  %4916 = fadd fast float %4915, 1.000000e+00
  %4917 = call float @dx.op.unary.f32(i32 6, float %4916)  ; FAbs(value)
  %4918 = fmul fast float %4917, %4875
  %4919 = fmul fast float %4917, %4876
  %4920 = fmul fast float %4917, %4877
  %4921 = fmul fast float %4634, 9.843750e-01
  %4922 = fmul fast float %4630, 9.843750e-01
  %4923 = fadd fast float %4921, 7.812500e-03
  %4924 = fadd fast float %4922, 7.812500e-03
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4923, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 2
  %4927 = extractvalue %dx.types.ResRet.f32 %4925, 3
  %4928 = fmul fast float %4926, %4627
  %4929 = fmul fast float %4926, %4628
  %4930 = fmul fast float %4926, %4632
  %4931 = fadd fast float %4928, %4927
  %4932 = fadd fast float %4929, %4927
  %4933 = fadd fast float %4930, %4927
  %4934 = fcmp fast ogt float %4019, 0.000000e+00
  br i1 %4934, label %4935, label %4961

; <label>:4935                                    ; preds = %4795
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4019, float %4634, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = extractvalue %dx.types.ResRet.f32 %4936, 1
  %4939 = extractvalue %dx.types.ResRet.f32 %4936, 2
  %4940 = fadd fast float %4937, -5.000000e-01
  %4941 = fadd fast float %4938, -5.000000e-01
  %4942 = fadd fast float %4939, -5.000000e-01
  %4943 = fsub fast float 1.000000e+00, %4627
  %4944 = fsub fast float 1.000000e+00, %4628
  %4945 = fsub fast float 1.000000e+00, %4632
  %4946 = fmul fast float %4627, 4.000000e+00
  %4947 = fmul fast float %4946, %4943
  %4948 = fmul fast float %4947, %4940
  %4949 = fmul fast float %4628, 4.000000e+00
  %4950 = fmul fast float %4949, %4944
  %4951 = fmul fast float %4950, %4941
  %4952 = fmul fast float %4632, 4.000000e+00
  %4953 = fmul fast float %4952, %4945
  %4954 = fmul fast float %4953, %4942
  %4955 = fadd fast float %4948, %4931
  %4956 = fadd fast float %4951, %4932
  %4957 = fadd fast float %4954, %4933
  %4958 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  br label %4961

; <label>:4961                                    ; preds = %4935, %4795
  %4962 = phi float [ %4958, %4935 ], [ %4931, %4795 ]
  %4963 = phi float [ %4959, %4935 ], [ %4932, %4795 ]
  %4964 = phi float [ %4960, %4935 ], [ %4933, %4795 ]
  %4965 = call float @dx.op.binary.f32(i32 35, float %4963, float %4964)  ; FMax(a,b)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4962, float %4965)  ; FMax(a,b)
  %4967 = fsub fast float 1.000000e+00, %4966
  %4968 = fmul fast float %135, %135
  %4969 = fmul fast float %136, %136
  %4970 = fadd fast float %4969, %4968
  %4971 = fmul fast float %137, %137
  %4972 = fadd fast float %4970, %4971
  %4973 = call float @dx.op.unary.f32(i32 24, float %4972)  ; Sqrt(value)
  %4974 = fsub fast float %4973, %4883
  %4975 = fmul fast float %4974, %4885
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4978 = extractvalue %dx.types.CBufRet.f32 %4882, 3
  %4979 = fmul fast float %4976, %38
  %4980 = fmul fast float %4979, %4977
  %4981 = fmul fast float %4979, %4978
  %4982 = fadd fast float %4981, 1.000000e+00
  %4983 = fmul fast float %4967, %4918
  %4984 = fmul fast float %4983, %4982
  %4985 = fmul fast float %4967, %4919
  %4986 = fmul fast float %4985, %4982
  %4987 = fmul fast float %4967, %4920
  %4988 = fmul fast float %4987, %4982
  %4989 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4990 = fcmp fast ogt float %4989, 0x3E7FF19E20000000
  %4991 = fdiv fast float 1.000000e+00, %4989
  %4992 = select i1 %4990, float %4991, float 0.000000e+00
  %4993 = fmul fast float %4992, %4621
  %4994 = fmul fast float %4992, %4622
  %4995 = fmul fast float %4992, %4623
  %4996 = fadd fast float %4993, -1.000000e+00
  %4997 = fadd fast float %4994, -1.000000e+00
  %4998 = fadd fast float %4995, -1.000000e+00
  %4999 = fmul fast float %4996, 5.000000e-01
  %5000 = fmul fast float %4997, 5.000000e-01
  %5001 = fmul fast float %4998, 5.000000e-01
  %5002 = fadd fast float %4999, 1.000000e+00
  %5003 = fadd fast float %5000, 1.000000e+00
  %5004 = fadd fast float %5001, 1.000000e+00
  %5005 = fadd fast float %4980, %4020
  %5006 = fmul fast float %4962, %4879
  %5007 = fmul fast float %4963, %4880
  %5008 = fmul fast float %4964, %4881
  %5009 = fsub fast float 1.000000e+00, %4634
  %5010 = bitcast float %5009 to i32
  %5011 = sitofp i32 %5010 to float
  %5012 = fmul fast float %5011, 5.000000e+00
  %5013 = fadd fast float %5012, 0xC1EFBF8940000000
  %5014 = fptosi float %5013 to i32
  %5015 = bitcast i32 %5014 to float
  %5016 = fmul fast float %5005, %5015
  %5017 = fmul fast float %4983, %5016
  %5018 = fmul fast float %5017, %5002
  %5019 = fmul fast float %4985, %5016
  %5020 = fmul fast float %5019, %5003
  %5021 = fmul fast float %4987, %5016
  %5022 = fmul fast float %5021, %5004
  %5023 = fmul fast float %4984, %4016
  %5024 = fmul fast float %4986, %4016
  %5025 = fmul fast float %4988, %4016
  %5026 = fadd fast float %5006, %4012
  %5027 = fadd fast float %5026, %5018
  %5028 = fmul fast float %5027, %4016
  %5029 = fadd fast float %5007, %4013
  %5030 = fadd fast float %5029, %5020
  %5031 = fmul fast float %5030, %4016
  %5032 = fadd fast float %5008, %4014
  %5033 = fadd fast float %5032, %5022
  %5034 = fmul fast float %5033, %4016
  %5035 = bitcast i32 %4646 to float
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 3
  %5038 = fcmp fast oeq float %5037, 0.000000e+00
  br i1 %5038, label %5266, label %5039

; <label>:5039                                    ; preds = %4961
  %5040 = extractvalue %dx.types.CBufRet.f32 %5036, 0
  %5041 = extractvalue %dx.types.CBufRet.f32 %5036, 1
  %5042 = extractvalue %dx.types.CBufRet.f32 %5036, 2
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.CBufRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.CBufRet.f32 %5043, 2
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.CBufRet.f32 %5047, 1
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5045, float %5046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = select i1 %177, float %5048, float %5044
  %5052 = select i1 %177, float %5050, float %5045
  %5053 = select i1 %177, float %5049, float %5046
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 1
  %5056 = fcmp fast une float %5055, 0.000000e+00
  br i1 %5056, label %5057, label %5074

; <label>:5057                                    ; preds = %5039
  %5058 = fptoui float %76 to i32
  %5059 = fptoui float %77 to i32
  %5060 = lshr i32 %5058, 4
  %5061 = lshr i32 %5059, 4
  %5062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5063 = extractvalue %dx.types.CBufRet.f32 %5062, 0
  %5064 = fptoui float %5063 to i32
  %5065 = add i32 %5064, 15
  %5066 = lshr i32 %5065, 4
  %5067 = mul i32 %5066, %5061
  %5068 = add i32 %5067, %5060
  %5069 = shl i32 %5068, 3
  %5070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5069, i32 undef)  ; BufferLoad(srv,index,wot)
  %5071 = extractvalue %dx.types.ResRet.i32 %5070, 0
  %5072 = and i32 %5071, -268435456
  %5073 = icmp eq i32 %5072, -1342177280
  br i1 %5073, label %5084, label %5074

; <label>:5074                                    ; preds = %5057, %5039
  %5075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5076 = extractvalue %dx.types.CBufRet.f32 %5075, 2
  %5077 = extractvalue %dx.types.CBufRet.f32 %5075, 3
  %5078 = fmul fast float %5076, %76
  %5079 = fmul fast float %5077, %77
  %5080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5078, float %5079, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5081 = extractvalue %dx.types.ResRet.f32 %5080, 0
  %5082 = extractvalue %dx.types.ResRet.f32 %5080, 1
  %5083 = extractvalue %dx.types.ResRet.f32 %5080, 2
  br label %5084

; <label>:5084                                    ; preds = %5074, %5057
  %5085 = phi float [ %5081, %5074 ], [ 0.000000e+00, %5057 ]
  %5086 = phi float [ %5082, %5074 ], [ 0.000000e+00, %5057 ]
  %5087 = phi float [ %5083, %5074 ], [ 0.000000e+00, %5057 ]
  %5088 = call float @dx.op.binary.f32(i32 36, float %5086, float %5087)  ; FMin(a,b)
  %5089 = call float @dx.op.binary.f32(i32 36, float %5085, float %5088)  ; FMin(a,b)
  %5090 = fcmp fast ogt float %5089, 0.000000e+00
  br i1 %5090, label %5091, label %5266, !dx.controlflow.hints !77

; <label>:5091                                    ; preds = %5084
  %5092 = fmul fast float %5085, %5051
  %5093 = fmul fast float %5086, %5052
  %5094 = fmul fast float %5087, %5053
  %5095 = fsub fast float %5040, %4620
  %5096 = fsub fast float %5041, %4619
  %5097 = fsub fast float %5042, %4618
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5096, float %5097, float %5095, float %5096, float %5097)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = call float @dx.op.unary.f32(i32 25, float %5098)  ; Rsqrt(value)
  %5100 = fmul fast float %5099, %5095
  %5101 = fmul fast float %5099, %5096
  %5102 = fmul fast float %5099, %5097
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5041, float %5042, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4616, float %4615, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5106 = fmul fast float %5105, %5105
  %5107 = fmul fast float %5106, %5035
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fmul fast float %5108, %5105
  %5110 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %5100, float %5101, float %5102)  ; Dot3(ax,ay,az,bx,by,bz)
  %5111 = fmul fast float %5110, %5110
  %5112 = call float @dx.op.unary.f32(i32 6, float %5103)  ; FAbs(value)
  %5113 = fsub fast float 1.000000e+00, %4630
  %5114 = call float @dx.op.binary.f32(i32 35, float %5113, float 0x3F847AE140000000)  ; FMax(a,b)
  %5115 = fmul fast float %5114, %5114
  %5116 = fmul fast float %5115, %5115
  %5117 = fsub fast float 1.000000e+00, %5116
  %5118 = fmul fast float %4634, %4634
  %5119 = fmul fast float %5118, %5117
  %5120 = fadd fast float %5119, %5116
  %5121 = bitcast float %5120 to i32
  %5122 = ashr i32 %5121, 1
  %5123 = add nsw i32 %5122, 532487669
  %5124 = bitcast i32 %5123 to float
  %5125 = fadd fast float %5124, %4634
  %5126 = fmul fast float %5116, %5111
  %5127 = fsub fast float 1.000000e+00, %5111
  %5128 = fadd fast float %5127, %5126
  %5129 = fmul fast float %5112, %5112
  %5130 = fmul fast float %5129, %5117
  %5131 = fadd fast float %5130, %5116
  %5132 = bitcast float %5131 to i32
  %5133 = ashr i32 %5132, 1
  %5134 = add nsw i32 %5133, 532487669
  %5135 = bitcast i32 %5134 to float
  %5136 = fadd fast float %5135, %5112
  %5137 = fmul fast float %5128, %5128
  %5138 = fmul fast float %5137, %5125
  %5139 = fmul fast float %5138, %5136
  %5140 = fdiv fast float 0x3FF0A00000000000, %5139
  %5141 = fmul fast float %5140, %5116
  %5142 = call float @dx.op.unary.f32(i32 6, float %5104)  ; FAbs(value)
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = bitcast float %5143 to i32
  %5145 = sitofp i32 %5144 to float
  %5146 = fmul fast float %5145, 5.000000e+00
  %5147 = fadd fast float %5146, 0xC1EFBF8940000000
  %5148 = fptosi float %5147 to i32
  %5149 = bitcast i32 %5148 to float
  %5150 = fsub fast float 1.000000e+00, %4627
  %5151 = fsub fast float 1.000000e+00, %4628
  %5152 = fsub fast float 1.000000e+00, %4632
  %5153 = fmul fast float %5149, %5150
  %5154 = fmul fast float %5149, %5151
  %5155 = fmul fast float %5149, %5152
  %5156 = fadd fast float %5153, %4627
  %5157 = fadd fast float %5154, %4628
  %5158 = fadd fast float %5155, %4632
  br i1 %4934, label %5159, label %5182

; <label>:5159                                    ; preds = %5091
  %5160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4019, float %5142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5161 = extractvalue %dx.types.ResRet.f32 %5160, 0
  %5162 = extractvalue %dx.types.ResRet.f32 %5160, 1
  %5163 = extractvalue %dx.types.ResRet.f32 %5160, 2
  %5164 = fadd fast float %5161, -5.000000e-01
  %5165 = fadd fast float %5162, -5.000000e-01
  %5166 = fadd fast float %5163, -5.000000e-01
  %5167 = fmul fast float %4627, 4.000000e+00
  %5168 = fmul fast float %5167, %5150
  %5169 = fmul fast float %5168, %5164
  %5170 = fmul fast float %4628, 4.000000e+00
  %5171 = fmul fast float %5170, %5151
  %5172 = fmul fast float %5171, %5165
  %5173 = fmul fast float %4632, 4.000000e+00
  %5174 = fmul fast float %5173, %5152
  %5175 = fmul fast float %5174, %5166
  %5176 = fadd fast float %5169, %5156
  %5177 = fadd fast float %5172, %5157
  %5178 = fadd fast float %5175, %5158
  %5179 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5180 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5181 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  br label %5182

; <label>:5182                                    ; preds = %5159, %5091
  %5183 = phi float [ %5179, %5159 ], [ %5156, %5091 ]
  %5184 = phi float [ %5180, %5159 ], [ %5157, %5091 ]
  %5185 = phi float [ %5181, %5159 ], [ %5158, %5091 ]
  %5186 = fmul fast float %5103, 9.843750e-01
  %5187 = fadd fast float %5186, 7.812500e-03
  %5188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5187, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5189 = extractvalue %dx.types.ResRet.f32 %5188, 2
  %5190 = extractvalue %dx.types.ResRet.f32 %5188, 3
  %5191 = fmul fast float %5189, %4627
  %5192 = fmul fast float %5189, %4628
  %5193 = fmul fast float %5189, %4632
  %5194 = fadd fast float %5191, %5190
  %5195 = fadd fast float %5192, %5190
  %5196 = fadd fast float %5193, %5190
  br i1 %4934, label %5197, label %5220

; <label>:5197                                    ; preds = %5182
  %5198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4019, float %5103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5199 = extractvalue %dx.types.ResRet.f32 %5198, 0
  %5200 = extractvalue %dx.types.ResRet.f32 %5198, 1
  %5201 = extractvalue %dx.types.ResRet.f32 %5198, 2
  %5202 = fadd fast float %5199, -5.000000e-01
  %5203 = fadd fast float %5200, -5.000000e-01
  %5204 = fadd fast float %5201, -5.000000e-01
  %5205 = fmul fast float %4627, 4.000000e+00
  %5206 = fmul fast float %5205, %5150
  %5207 = fmul fast float %5206, %5202
  %5208 = fmul fast float %4628, 4.000000e+00
  %5209 = fmul fast float %5208, %5151
  %5210 = fmul fast float %5209, %5203
  %5211 = fmul fast float %4632, 4.000000e+00
  %5212 = fmul fast float %5211, %5152
  %5213 = fmul fast float %5212, %5204
  %5214 = fadd fast float %5207, %5194
  %5215 = fadd fast float %5210, %5195
  %5216 = fadd fast float %5213, %5196
  %5217 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5218 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5219 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  br label %5220

; <label>:5220                                    ; preds = %5197, %5182
  %5221 = phi float [ %5217, %5197 ], [ %5194, %5182 ]
  %5222 = phi float [ %5218, %5197 ], [ %5195, %5182 ]
  %5223 = phi float [ %5219, %5197 ], [ %5196, %5182 ]
  %5224 = call float @dx.op.binary.f32(i32 35, float %5222, float %5223)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float %5221, float %5224)  ; FMax(a,b)
  %5226 = fsub fast float 1.000000e+00, %5225
  %5227 = fmul fast float %5183, %5141
  %5228 = fmul fast float %5184, %5141
  %5229 = fmul fast float %5185, %5141
  %5230 = fsub fast float 1.000000e+00, %5104
  %5231 = bitcast float %5230 to i32
  %5232 = sitofp i32 %5231 to float
  %5233 = fmul fast float %5232, 5.000000e+00
  %5234 = fadd fast float %5233, 0xC1EFBF8940000000
  %5235 = fptosi float %5234 to i32
  %5236 = bitcast i32 %5235 to float
  %5237 = fmul fast float %5236, %4020
  %5238 = fmul fast float %5226, %5237
  %5239 = fmul fast float %5238, %5002
  %5240 = fmul fast float %5238, %5003
  %5241 = fmul fast float %5238, %5004
  %5242 = fadd fast float %5239, %5227
  %5243 = fadd fast float %5240, %5228
  %5244 = fadd fast float %5241, %5229
  %5245 = fmul fast float %5109, %5092
  %5246 = fmul fast float %5245, %5226
  %5247 = fmul fast float %5109, %5093
  %5248 = fmul fast float %5247, %5226
  %5249 = fmul fast float %5109, %5094
  %5250 = fmul fast float %5249, %5226
  %5251 = fmul fast float %5245, %5242
  %5252 = fmul fast float %5247, %5243
  %5253 = fmul fast float %5249, %5244
  %5254 = fadd fast float %5246, %4984
  %5255 = fmul fast float %5254, %4016
  %5256 = fadd fast float %5248, %4986
  %5257 = fmul fast float %5256, %4016
  %5258 = fadd fast float %5250, %4988
  %5259 = fmul fast float %5258, %4016
  %5260 = fadd fast float %5251, %5027
  %5261 = fmul fast float %5260, %4016
  %5262 = fadd fast float %5252, %5030
  %5263 = fmul fast float %5262, %4016
  %5264 = fadd fast float %5253, %5033
  %5265 = fmul fast float %5264, %4016
  br label %5266

; <label>:5266                                    ; preds = %5220, %5084, %4961
  %5267 = phi float [ %5028, %4961 ], [ %5028, %5084 ], [ %5261, %5220 ]
  %5268 = phi float [ %5031, %4961 ], [ %5031, %5084 ], [ %5263, %5220 ]
  %5269 = phi float [ %5034, %4961 ], [ %5034, %5084 ], [ %5265, %5220 ]
  %5270 = phi float [ %5023, %4961 ], [ %5023, %5084 ], [ %5255, %5220 ]
  %5271 = phi float [ %5024, %4961 ], [ %5024, %5084 ], [ %5257, %5220 ]
  %5272 = phi float [ %5025, %4961 ], [ %5025, %5084 ], [ %5259, %5220 ]
  %5273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.i32 %5273, 0
  %5275 = icmp eq i32 %5274, 0
  br i1 %5275, label %5710, label %5276

; <label>:5276                                    ; preds = %5266
  %5277 = fptoui float %76 to i32
  %5278 = fptoui float %77 to i32
  %5279 = lshr i32 %5277, 4
  %5280 = lshr i32 %5278, 4
  %5281 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5282 = extractvalue %dx.types.CBufRet.i32 %5281, 0
  %5283 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5280, i32 %5282, i32 %5279)  ; UMad(a,b,c)
  %5284 = add nsw i32 %5274, -1
  %5285 = call i32 @dx.op.binary.i32(i32 37, i32 %5284, i32 0)  ; IMax(a,b)
  %5286 = call float @dx.op.binary.f32(i32 35, float %71, float 0.000000e+00)  ; FMax(a,b)
  %5287 = fptoui float %5286 to i32
  %5288 = lshr i32 %5287, 5
  %5289 = call i32 @dx.op.binary.i32(i32 40, i32 %5288, i32 8191)  ; UMin(a,b)
  %5290 = shl i32 %5289, 2
  %5291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5292 = extractvalue %dx.types.ResRet.i32 %5291, 0
  %5293 = lshr i32 %5292, 16
  %5294 = and i32 %5292, 65535
  %5295 = lshr i32 %5292, 21
  %5296 = lshr i32 %5294, 5
  %5297 = call i32 @dx.op.binary.i32(i32 40, i32 %5296, i32 %5285)  ; UMin(a,b)
  %5298 = icmp ugt i32 %5295, %5297
  br i1 %5298, label %5710, label %5299

; <label>:5299                                    ; preds = %5276
  br label %5300

; <label>:5300                                    ; preds = %5700, %5299
  %5301 = phi i32 [ %5707, %5700 ], [ %5295, %5299 ]
  %5302 = phi float [ %5701, %5700 ], [ %5267, %5299 ]
  %5303 = phi float [ %5702, %5700 ], [ %5268, %5299 ]
  %5304 = phi float [ %5703, %5700 ], [ %5269, %5299 ]
  %5305 = phi float [ %5704, %5700 ], [ %5270, %5299 ]
  %5306 = phi float [ %5705, %5700 ], [ %5271, %5299 ]
  %5307 = phi float [ %5706, %5700 ], [ %5272, %5299 ]
  %5308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.i32 %5308, 0
  %5310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5283, i32 %5309, i32 %5301)  ; UMad(a,b,c)
  %5311 = shl i32 %5310, 2
  %5312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5311, i32 undef)  ; BufferLoad(srv,index,wot)
  %5313 = extractvalue %dx.types.ResRet.i32 %5312, 0
  %5314 = shl i32 %5301, 5
  %5315 = sub nsw i32 %5293, %5314
  %5316 = call i32 @dx.op.binary.i32(i32 37, i32 %5315, i32 0)  ; IMax(a,b)
  %5317 = call i32 @dx.op.binary.i32(i32 38, i32 %5316, i32 31)  ; IMin(a,b)
  %5318 = sub nsw i32 1, %5293
  %5319 = add nsw i32 %5318, %5294
  %5320 = call i32 @dx.op.binary.i32(i32 37, i32 %5319, i32 0)  ; IMax(a,b)
  %5321 = call i32 @dx.op.binary.i32(i32 38, i32 %5320, i32 32)  ; IMin(a,b)
  %5322 = and i32 %5321, 31
  %5323 = shl i32 -1, %5322
  %5324 = xor i32 %5323, -1
  %5325 = and i32 %5317, 31
  %5326 = shl i32 %5324, %5325
  %5327 = icmp eq i32 %5321, 32
  %5328 = select i1 %5327, i32 -1, i32 %5326
  %5329 = and i32 %5328, %5313
  %5330 = icmp eq i32 %5329, 0
  br i1 %5330, label %5700, label %5331

; <label>:5331                                    ; preds = %5300
  br label %5332

; <label>:5332                                    ; preds = %5412, %5331
  %5333 = phi i32 [ %5344, %5412 ], [ %5329, %5331 ]
  %5334 = phi float [ %5413, %5412 ], [ %5302, %5331 ]
  %5335 = phi float [ %5414, %5412 ], [ %5303, %5331 ]
  %5336 = phi float [ %5415, %5412 ], [ %5304, %5331 ]
  %5337 = phi float [ %5416, %5412 ], [ %5305, %5331 ]
  %5338 = phi float [ %5417, %5412 ], [ %5306, %5331 ]
  %5339 = phi float [ %5418, %5412 ], [ %5307, %5331 ]
  %5340 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5333)  ; FirstbitLo(value)
  %5341 = add i32 %5340, %5314
  %5342 = and i32 %5340, 31
  %5343 = shl i32 1, %5342
  %5344 = xor i32 %5343, %5333
  %5345 = mul i32 %5341, 112
  %5346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5345, i32 undef)  ; BufferLoad(srv,index,wot)
  %5347 = extractvalue %dx.types.ResRet.f32 %5346, 0
  %5348 = extractvalue %dx.types.ResRet.f32 %5346, 1
  %5349 = extractvalue %dx.types.ResRet.f32 %5346, 2
  %5350 = or i32 %5345, 12
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = add i32 %5345, 44
  %5354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.f32 %5354, 0
  %5356 = add i32 %5345, 48
  %5357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.ResRet.f32 %5357, 1
  %5360 = extractvalue %dx.types.ResRet.f32 %5357, 2
  %5361 = add i32 %5345, 80
  %5362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5361, i32 undef)  ; BufferLoad(srv,index,wot)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 1
  %5364 = extractvalue %dx.types.ResRet.f32 %5362, 2
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5347, float %5348, float %5349, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = select i1 %177, float %5363, float %5347
  %5367 = select i1 %177, float %5365, float %5348
  %5368 = select i1 %177, float %5364, float %5349
  %5369 = fsub fast float %5358, %135
  %5370 = fsub fast float %5359, %136
  %5371 = fsub fast float %5360, %137
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %5371, float %5369, float %5370, float %5371)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = call float @dx.op.unary.f32(i32 24, float %5372)  ; Sqrt(value)
  %5374 = fdiv fast float 1.000000e+00, %5373
  %5375 = fmul fast float %5374, %5369
  %5376 = fmul fast float %5374, %5370
  %5377 = fmul fast float %5374, %5371
  %5378 = fadd fast float %5373, %5352
  %5379 = fdiv fast float 1.000000e+00, %5378
  %5380 = fmul float %5355, %5379
  %5381 = fmul float %5380, %5380
  %5382 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5383 = and i32 %5343, %5329
  %5384 = icmp eq i32 %5383, 0
  br i1 %5384, label %5407, label %5385, !dx.controlflow.hints !78

; <label>:5385                                    ; preds = %5332
  %5386 = lshr i32 %5277, 5
  %5387 = lshr i32 %5278, 5
  %5388 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5386, i32 %5387, i32 %5341, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5389 = extractvalue %dx.types.ResRet.i32 %5388, 0
  %5390 = and i32 %5389, 3
  %5391 = icmp eq i32 %5390, 0
  %5392 = select i1 %5391, float 1.000000e+00, float 0.000000e+00
  %5393 = icmp eq i32 %5390, 3
  br i1 %5393, label %5394, label %5407

; <label>:5394                                    ; preds = %5385
  %5395 = lshr i32 %5389, 10
  %5396 = and i32 %5395, 8160
  %5397 = and i32 %5278, 31
  %5398 = or i32 %5396, %5397
  %5399 = lshr i32 %5389, 1
  %5400 = and i32 %5399, 16352
  %5401 = and i32 %5277, 31
  %5402 = or i32 %5400, %5401
  %5403 = lshr i32 %5389, 23
  %5404 = and i32 %5403, 255
  %5405 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5402, i32 %5398, i32 %5404, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  br label %5407

; <label>:5407                                    ; preds = %5394, %5385, %5332
  %5408 = phi float [ %5406, %5394 ], [ %5392, %5385 ], [ 0.000000e+00, %5332 ]
  %5409 = call float @dx.op.binary.f32(i32 36, float %5408, float %5408)  ; FMin(a,b)
  %5410 = call float @dx.op.binary.f32(i32 36, float %5408, float %5409)  ; FMin(a,b)
  %5411 = fcmp fast ogt float %5410, 0.000000e+00
  br i1 %5411, label %5420, label %5412, !dx.controlflow.hints !79

; <label>:5412                                    ; preds = %5656, %5407
  %5413 = phi float [ %5334, %5407 ], [ %5696, %5656 ]
  %5414 = phi float [ %5335, %5407 ], [ %5697, %5656 ]
  %5415 = phi float [ %5336, %5407 ], [ %5698, %5656 ]
  %5416 = phi float [ %5337, %5407 ], [ %5690, %5656 ]
  %5417 = phi float [ %5338, %5407 ], [ %5691, %5656 ]
  %5418 = phi float [ %5339, %5407 ], [ %5692, %5656 ]
  %5419 = icmp eq i32 %5333, %5343
  br i1 %5419, label %5699, label %5332

; <label>:5420                                    ; preds = %5407
  %5421 = fmul fast float %5408, %5366
  %5422 = fmul fast float %5408, %5367
  %5423 = fmul fast float %5408, %5368
  %5424 = fsub fast float %5360, %4420
  %5425 = fcmp fast ogt float %5424, 0.000000e+00
  %5426 = fsub fast float %137, %4420
  %5427 = fcmp fast ogt float %5426, 0.000000e+00
  %5428 = xor i1 %5427, %5425
  %5429 = fsub fast float %4420, %5360
  %5430 = fmul fast float %5429, 2.000000e+00
  %5431 = fadd fast float %5430, %5360
  %5432 = select i1 %5428, float %5360, float %5431
  %5433 = fsub fast float %5432, %137
  %5434 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %5433, float %5369, float %5370, float %5433)  ; Dot3(ax,ay,az,bx,by,bz)
  %5435 = call float @dx.op.unary.f32(i32 25, float %5434)  ; Rsqrt(value)
  %5436 = fmul fast float %5435, %5369
  %5437 = fmul fast float %5435, %5370
  %5438 = fmul fast float %5435, %5433
  %5439 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5440 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5436, float %5437, float %5438)  ; Dot3(ax,ay,az,bx,by,bz)
  %5441 = fdiv fast float 1.000000e+00, %5440
  %5442 = fmul fast float %5441, %5439
  %5443 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5426, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = fcmp fast ogt float %5443, 0.000000e+00
  %5445 = fcmp fast olt float %5443, 0.000000e+00
  %5446 = zext i1 %5444 to i32
  %5447 = zext i1 %5445 to i32
  %5448 = sub nsw i32 %5446, %5447
  %5449 = sitofp i32 %5448 to float
  %5450 = fsub fast float %5432, %4420
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %5450, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = fcmp fast ogt float %5451, 0.000000e+00
  %5453 = fcmp fast olt float %5451, 0.000000e+00
  %5454 = zext i1 %5452 to i32
  %5455 = zext i1 %5453 to i32
  %5456 = sub nsw i32 %5454, %5455
  %5457 = sitofp i32 %5456 to float
  %5458 = fcmp fast une float %5449, %5457
  br i1 %5458, label %5459, label %5469

; <label>:5459                                    ; preds = %5420
  %5460 = fmul fast float %5442, %5438
  %5461 = fmul fast float %5442, %5437
  %5462 = fmul fast float %5442, %5436
  %5463 = fmul fast float %5462, %5462
  %5464 = fmul fast float %5461, %5461
  %5465 = fadd fast float %5463, %5464
  %5466 = fmul fast float %5460, %5460
  %5467 = fadd fast float %5465, %5466
  %5468 = call float @dx.op.unary.f32(i32 24, float %5467)  ; Sqrt(value)
  br label %5481

; <label>:5469                                    ; preds = %5420
  %5470 = icmp slt i32 %5448, 0
  br i1 %5470, label %5471, label %5481

; <label>:5471                                    ; preds = %5469
  %5472 = fsub fast float %135, %5358
  %5473 = fsub fast float %136, %5359
  %5474 = fsub fast float %137, %5432
  %5475 = fmul fast float %5472, %5472
  %5476 = fmul fast float %5473, %5473
  %5477 = fadd fast float %5475, %5476
  %5478 = fmul fast float %5474, %5474
  %5479 = fadd fast float %5477, %5478
  %5480 = call float @dx.op.unary.f32(i32 24, float %5479)  ; Sqrt(value)
  br label %5481

; <label>:5481                                    ; preds = %5471, %5469, %5459
  %5482 = phi float [ %5468, %5459 ], [ %5480, %5471 ], [ 0.000000e+00, %5469 ]
  %5483 = and i1 %5427, %5425
  %5484 = fsub fast float -0.000000e+00, %5482
  %5485 = select i1 %5483, float -0.000000e+00, float %5484
  %5486 = fmul fast float %4421, 0x3FF7154760000000
  %5487 = fmul fast float %5486, %5485
  %5488 = fmul fast float %4422, 0x3FF7154760000000
  %5489 = fmul fast float %5488, %5485
  %5490 = fmul fast float %4423, 0x3FF7154760000000
  %5491 = fmul fast float %5490, %5485
  %5492 = call float @dx.op.unary.f32(i32 21, float %5487)  ; Exp(value)
  %5493 = call float @dx.op.unary.f32(i32 21, float %5489)  ; Exp(value)
  %5494 = call float @dx.op.unary.f32(i32 21, float %5491)  ; Exp(value)
  %5495 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5496 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  %5497 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5498 = fmul fast float %5421, %5495
  %5499 = fmul fast float %5422, %5496
  %5500 = fmul fast float %5423, %5497
  %5501 = fsub fast float %5375, %4620
  %5502 = fsub fast float %5376, %4619
  %5503 = fsub fast float %5377, %4618
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = call float @dx.op.unary.f32(i32 25, float %5504)  ; Rsqrt(value)
  %5506 = fmul fast float %5505, %5501
  %5507 = fmul fast float %5505, %5502
  %5508 = fmul fast float %5505, %5503
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5375, float %5376, float %5377, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4616, float %4615, float %5506, float %5507, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = call float @dx.op.unary.f32(i32 7, float %5509)  ; Saturate(value)
  %5512 = fmul fast float %5511, %5382
  %5513 = fmul fast float %5511, %5511
  %5514 = fmul fast float %5513, %5035
  %5515 = call float @dx.op.unary.f32(i32 7, float %5514)  ; Saturate(value)
  %5516 = fmul fast float %5512, %5515
  %5517 = bitcast float %5372 to i32
  %5518 = ashr i32 %5517, 1
  %5519 = sub nsw i32 1597463007, %5518
  %5520 = bitcast i32 %5519 to float
  %5521 = fmul fast float %5520, %5369
  %5522 = fmul fast float %5520, %5370
  %5523 = fmul fast float %5520, %5371
  %5524 = fsub fast float %5521, %4620
  %5525 = fsub fast float %5522, %4619
  %5526 = fsub fast float %5523, %4618
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5525, float %5526, float %5524, float %5525, float %5526)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = call float @dx.op.unary.f32(i32 25, float %5527)  ; Rsqrt(value)
  %5529 = fmul fast float %5524, %5528
  %5530 = fmul fast float %5525, %5528
  %5531 = fmul fast float %5526, %5528
  %5532 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %5529, float %5530, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fmul fast float %5532, %5532
  %5534 = call float @dx.op.unary.f32(i32 6, float %5509)  ; FAbs(value)
  %5535 = fsub fast float 1.000000e+00, %4630
  %5536 = call float @dx.op.binary.f32(i32 35, float %5535, float 0x3F847AE140000000)  ; FMax(a,b)
  %5537 = fmul fast float %5536, %5536
  %5538 = fmul fast float %5537, %5537
  %5539 = fsub fast float 1.000000e+00, %5538
  %5540 = fmul fast float %4634, %4634
  %5541 = fmul fast float %5540, %5539
  %5542 = fadd fast float %5541, %5538
  %5543 = bitcast float %5542 to i32
  %5544 = ashr i32 %5543, 1
  %5545 = add nsw i32 %5544, 532487669
  %5546 = bitcast i32 %5545 to float
  %5547 = fadd fast float %5546, %4634
  %5548 = fmul fast float %5538, %5533
  %5549 = fsub fast float 1.000000e+00, %5533
  %5550 = fadd fast float %5549, %5548
  %5551 = fmul fast float %5534, %5534
  %5552 = fmul fast float %5551, %5539
  %5553 = fadd fast float %5552, %5538
  %5554 = bitcast float %5553 to i32
  %5555 = ashr i32 %5554, 1
  %5556 = add nsw i32 %5555, 532487669
  %5557 = bitcast i32 %5556 to float
  %5558 = fadd fast float %5557, %5534
  %5559 = fmul fast float %5550, %5550
  %5560 = fmul fast float %5559, %5547
  %5561 = fmul fast float %5560, %5558
  %5562 = fdiv fast float 1.000000e+00, %5561
  %5563 = bitcast float %5538 to i32
  %5564 = sitofp i32 %5563 to float
  %5565 = fmul fast float %5564, 0x3FE7F73180000000
  %5566 = fadd fast float %5565, 0x41AFE27C40000000
  %5567 = fptosi float %5566 to i32
  %5568 = bitcast i32 %5567 to float
  %5569 = fmul fast float %5355, 0x3FD80E9D60000000
  %5570 = fmul fast float %5569, %5520
  %5571 = fadd fast float %5568, %5570
  %5572 = bitcast float %5571 to i32
  %5573 = sub nsw i32 2129859010, %5572
  %5574 = bitcast i32 %5573 to float
  %5575 = fmul fast float %5538, %5562
  %5576 = fmul fast float %5575, %5568
  %5577 = fmul fast float %5576, %5574
  %5578 = call float @dx.op.unary.f32(i32 6, float %5510)  ; FAbs(value)
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = bitcast float %5579 to i32
  %5581 = sitofp i32 %5580 to float
  %5582 = fmul fast float %5581, 5.000000e+00
  %5583 = fadd fast float %5582, 0xC1EFBF8940000000
  %5584 = fptosi float %5583 to i32
  %5585 = bitcast i32 %5584 to float
  %5586 = fsub fast float 1.000000e+00, %4627
  %5587 = fsub fast float 1.000000e+00, %4628
  %5588 = fsub fast float 1.000000e+00, %4632
  %5589 = fmul fast float %5585, %5586
  %5590 = fmul fast float %5585, %5587
  %5591 = fmul fast float %5585, %5588
  %5592 = fadd fast float %5589, %4627
  %5593 = fadd fast float %5590, %4628
  %5594 = fadd fast float %5591, %4632
  br i1 %4934, label %5595, label %5618

; <label>:5595                                    ; preds = %5481
  %5596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4019, float %5578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 1
  %5599 = extractvalue %dx.types.ResRet.f32 %5596, 2
  %5600 = fadd fast float %5597, -5.000000e-01
  %5601 = fadd fast float %5598, -5.000000e-01
  %5602 = fadd fast float %5599, -5.000000e-01
  %5603 = fmul fast float %4627, 4.000000e+00
  %5604 = fmul fast float %5603, %5586
  %5605 = fmul fast float %5604, %5600
  %5606 = fmul fast float %4628, 4.000000e+00
  %5607 = fmul fast float %5606, %5587
  %5608 = fmul fast float %5607, %5601
  %5609 = fmul fast float %4632, 4.000000e+00
  %5610 = fmul fast float %5609, %5588
  %5611 = fmul fast float %5610, %5602
  %5612 = fadd fast float %5605, %5592
  %5613 = fadd fast float %5608, %5593
  %5614 = fadd fast float %5611, %5594
  %5615 = call float @dx.op.unary.f32(i32 7, float %5612)  ; Saturate(value)
  %5616 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5617 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  br label %5618

; <label>:5618                                    ; preds = %5595, %5481
  %5619 = phi float [ %5615, %5595 ], [ %5592, %5481 ]
  %5620 = phi float [ %5616, %5595 ], [ %5593, %5481 ]
  %5621 = phi float [ %5617, %5595 ], [ %5594, %5481 ]
  %5622 = fmul fast float %5509, 9.843750e-01
  %5623 = fadd fast float %5622, 7.812500e-03
  %5624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5623, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5625 = extractvalue %dx.types.ResRet.f32 %5624, 2
  %5626 = extractvalue %dx.types.ResRet.f32 %5624, 3
  %5627 = fmul fast float %5625, %4627
  %5628 = fmul fast float %5625, %4628
  %5629 = fmul fast float %5625, %4632
  %5630 = fadd fast float %5627, %5626
  %5631 = fadd fast float %5628, %5626
  %5632 = fadd fast float %5629, %5626
  br i1 %4934, label %5633, label %5656

; <label>:5633                                    ; preds = %5618
  %5634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4019, float %5509, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5635 = extractvalue %dx.types.ResRet.f32 %5634, 0
  %5636 = extractvalue %dx.types.ResRet.f32 %5634, 1
  %5637 = extractvalue %dx.types.ResRet.f32 %5634, 2
  %5638 = fadd fast float %5635, -5.000000e-01
  %5639 = fadd fast float %5636, -5.000000e-01
  %5640 = fadd fast float %5637, -5.000000e-01
  %5641 = fmul fast float %4627, 4.000000e+00
  %5642 = fmul fast float %5641, %5586
  %5643 = fmul fast float %5642, %5638
  %5644 = fmul fast float %4628, 4.000000e+00
  %5645 = fmul fast float %5644, %5587
  %5646 = fmul fast float %5645, %5639
  %5647 = fmul fast float %4632, 4.000000e+00
  %5648 = fmul fast float %5647, %5588
  %5649 = fmul fast float %5648, %5640
  %5650 = fadd fast float %5643, %5630
  %5651 = fadd fast float %5646, %5631
  %5652 = fadd fast float %5649, %5632
  %5653 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5654 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5655 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  br label %5656

; <label>:5656                                    ; preds = %5633, %5618
  %5657 = phi float [ %5653, %5633 ], [ %5630, %5618 ]
  %5658 = phi float [ %5654, %5633 ], [ %5631, %5618 ]
  %5659 = phi float [ %5655, %5633 ], [ %5632, %5618 ]
  %5660 = call float @dx.op.binary.f32(i32 35, float %5658, float %5659)  ; FMax(a,b)
  %5661 = call float @dx.op.binary.f32(i32 35, float %5657, float %5660)  ; FMax(a,b)
  %5662 = fsub fast float 1.000000e+00, %5661
  %5663 = fmul fast float %5619, %5577
  %5664 = fmul fast float %5620, %5577
  %5665 = fmul fast float %5621, %5577
  %5666 = fsub fast float 1.000000e+00, %5510
  %5667 = bitcast float %5666 to i32
  %5668 = sitofp i32 %5667 to float
  %5669 = fmul fast float %5668, 5.000000e+00
  %5670 = fadd fast float %5669, 0xC1EFBF8940000000
  %5671 = fptosi float %5670 to i32
  %5672 = bitcast i32 %5671 to float
  %5673 = fmul fast float %5672, %4020
  %5674 = fmul fast float %5662, %5673
  %5675 = fmul fast float %5674, %5002
  %5676 = fmul fast float %5674, %5003
  %5677 = fmul fast float %5674, %5004
  %5678 = fadd fast float %5675, %5663
  %5679 = fadd fast float %5676, %5664
  %5680 = fadd fast float %5677, %5665
  %5681 = fmul fast float %5498, %4016
  %5682 = fmul fast float %5681, %5516
  %5683 = fmul fast float %5682, %5662
  %5684 = fmul fast float %5499, %4016
  %5685 = fmul fast float %5684, %5516
  %5686 = fmul fast float %5685, %5662
  %5687 = fmul fast float %5500, %4016
  %5688 = fmul fast float %5687, %5516
  %5689 = fmul fast float %5688, %5662
  %5690 = fadd fast float %5683, %5337
  %5691 = fadd fast float %5686, %5338
  %5692 = fadd fast float %5689, %5339
  %5693 = fmul fast float %5682, %5678
  %5694 = fmul fast float %5685, %5679
  %5695 = fmul fast float %5688, %5680
  %5696 = fadd fast float %5693, %5334
  %5697 = fadd fast float %5694, %5335
  %5698 = fadd fast float %5695, %5336
  br label %5412

; <label>:5699                                    ; preds = %5412
  br label %5700

; <label>:5700                                    ; preds = %5699, %5300
  %5701 = phi float [ %5302, %5300 ], [ %5413, %5699 ]
  %5702 = phi float [ %5303, %5300 ], [ %5414, %5699 ]
  %5703 = phi float [ %5304, %5300 ], [ %5415, %5699 ]
  %5704 = phi float [ %5305, %5300 ], [ %5416, %5699 ]
  %5705 = phi float [ %5306, %5300 ], [ %5417, %5699 ]
  %5706 = phi float [ %5307, %5300 ], [ %5418, %5699 ]
  %5707 = add i32 %5301, 1
  %5708 = icmp ugt i32 %5707, %5297
  br i1 %5708, label %5709, label %5300

; <label>:5709                                    ; preds = %5700
  br label %5710

; <label>:5710                                    ; preds = %5709, %5276, %5266
  %5711 = phi float [ %5267, %5266 ], [ %5267, %5276 ], [ %5701, %5709 ]
  %5712 = phi float [ %5268, %5266 ], [ %5268, %5276 ], [ %5702, %5709 ]
  %5713 = phi float [ %5269, %5266 ], [ %5269, %5276 ], [ %5703, %5709 ]
  %5714 = phi float [ %5270, %5266 ], [ %5270, %5276 ], [ %5704, %5709 ]
  %5715 = phi float [ %5271, %5266 ], [ %5271, %5276 ], [ %5705, %5709 ]
  %5716 = phi float [ %5272, %5266 ], [ %5272, %5276 ], [ %5706, %5709 ]
  %5717 = call float @dx.op.unary.f32(i32 24, float %4621)  ; Sqrt(value)
  %5718 = call float @dx.op.unary.f32(i32 24, float %4622)  ; Sqrt(value)
  %5719 = call float @dx.op.unary.f32(i32 24, float %4623)  ; Sqrt(value)
  %5720 = fmul fast float %5717, %5714
  %5721 = fmul fast float %5718, %5715
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 0
  br i1 %177, label %5724, label %5744

; <label>:5724                                    ; preds = %5710
  %5725 = fadd fast float %5716, %4022
  %5726 = fmul fast float %5725, %4023
  %5727 = fsub fast float 1.000000e+00, %4023
  %5728 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5730 = extractvalue %dx.types.CBufRet.f32 %5729, 3
  %5731 = fmul fast float %5730, %5728
  %5732 = fadd fast float %5731, %5726
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = fmul fast float %5734, %5009
  %5736 = fsub fast float %5732, %5735
  %5737 = fadd fast float %5721, %5720
  %5738 = fmul fast float %5723, %5737
  %5739 = extractvalue %dx.types.CBufRet.f32 %5729, 1
  %5740 = fsub fast float %5736, %5739
  %5741 = extractvalue %dx.types.CBufRet.f32 %5729, 2
  %5742 = fmul fast float %5740, %5741
  %5743 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  br label %5760

; <label>:5744                                    ; preds = %5710
  %5745 = fmul fast float %5719, %5716
  %5746 = fmul fast float %5723, %5720
  %5747 = fmul fast float %5723, %5721
  %5748 = fmul fast float %5745, %5723
  %5749 = add i32 %35, 356
  %5750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5749, i32 undef)  ; BufferLoad(srv,index,wot)
  %5751 = extractvalue %dx.types.ResRet.i32 %5750, 0
  %5752 = and i32 %5751, 32
  %5753 = icmp eq i32 %5752, 0
  br i1 %5753, label %5760, label %5754

; <label>:5754                                    ; preds = %5744
  %5755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5755, 0
  %5757 = fmul fast float %5756, 0x3FE99999A0000000
  %5758 = fadd fast float %5756, %5746
  %5759 = fadd fast float %5757, %5748
  br label %5760

; <label>:5760                                    ; preds = %5754, %5744, %5724
  %5761 = phi float [ %5738, %5724 ], [ %5758, %5754 ], [ %5746, %5744 ]
  %5762 = phi float [ %5743, %5724 ], [ %5747, %5754 ], [ %5747, %5744 ]
  %5763 = phi float [ 1.000000e+00, %5724 ], [ %5759, %5754 ], [ %5748, %5744 ]
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5766 = fmul fast float %5765, %5712
  %5767 = fmul fast float %5765, %5713
  %5768 = fadd fast float %5712, %5711
  %5769 = select i1 %177, float %5768, float %5711
  %5770 = fmul float %5769, %5765
  %5771 = select i1 %177, float 0.000000e+00, float %5766
  %5772 = select i1 %177, float 0.000000e+00, float %5767
  %5773 = fmul fast float %5761, %5717
  %5774 = fmul fast float %5762, %5718
  %5775 = fmul fast float %5763, %5719
  %5776 = fadd fast float %5770, %5773
  %5777 = fadd fast float %5771, %5774
  %5778 = fadd fast float %5772, %5775
  %5779 = select i1 %177, float %5762, float %5777
  %5780 = select i1 %177, float %5763, float %5778
  %5781 = call float @dx.op.binary.f32(i32 36, float %5776, float 3.225500e+04)  ; FMin(a,b)
  %5782 = call float @dx.op.binary.f32(i32 36, float %5779, float 3.225500e+04)  ; FMin(a,b)
  %5783 = call float @dx.op.binary.f32(i32 36, float %5780, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5781)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5782)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5783)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!47 = !{[51 x i32] [i32 49, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !76}
!49 = !{!50, !74, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69, !71, !73}
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
!62 = !{i32 5, !"SH_RED", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, !61}
!63 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, !61}
!64 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 7, i8 0, !61}
!65 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !52, i8 2, i32 1, i8 2, i32 8, i8 0, !57}
!66 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 9, i8 0, !61}
!67 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 10, i8 0, !68}
!68 = !{i32 3, i32 8}
!69 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 11, i8 0, !70}
!70 = !{i32 3, i32 13}
!71 = !{i32 12, !"SV_IsFrontFace", i8 5, i8 13, !52, i8 1, i32 1, i8 1, i32 12, i8 0, !72}
!72 = !{i32 3, i32 1}
!73 = !{i32 13, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!76 = !{i32 0, i64 24}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}

