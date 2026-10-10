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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b502f6933cf441c56863a2c00569c983
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
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = icmp ne i32 %33, 0
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = fmul fast float %74, %68
  %76 = fmul fast float %74, %69
  %77 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %78 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = bitcast float %78 to i32
  %80 = ashr i32 %79, 1
  %81 = sub nsw i32 1597250115, %80
  %82 = bitcast i32 %81 to float
  %83 = fmul fast float %60, %77
  %84 = fmul fast float %83, %82
  %85 = fmul fast float %61, %77
  %86 = fmul fast float %85, %82
  %87 = fmul fast float %62, %77
  %88 = fmul fast float %87, %82
  %89 = fmul fast float %61, %58
  %90 = fmul fast float %62, %57
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %62, %56
  %93 = fmul fast float %60, %58
  %94 = fsub fast float %92, %93
  %95 = fmul fast float %60, %57
  %96 = fmul fast float %61, %56
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %91, %59
  %99 = fmul fast float %94, %59
  %100 = fmul fast float %97, %59
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 3
  %104 = fmul fast float %75, 2.000000e+00
  %105 = fmul fast float %104, %102
  %106 = fmul fast float %76, 2.000000e+00
  %107 = fmul fast float %106, %103
  %108 = fsub fast float 1.000000e+00, %105
  %109 = fsub fast float 1.000000e+00, %107
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %108, %111
  %115 = fmul fast float %108, %112
  %116 = fmul fast float %108, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %109, %118
  %122 = fmul fast float %109, %119
  %123 = fmul fast float %109, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fadd fast float %121, %125
  %129 = fadd fast float %128, %114
  %130 = fadd fast float %122, %126
  %131 = fadd fast float %130, %115
  %132 = fadd fast float %123, %127
  %133 = fadd fast float %132, %116
  %134 = fmul fast float %129, %70
  %135 = fmul fast float %131, %70
  %136 = fmul fast float %133, %70
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %75
  %141 = fmul fast float %139, %76
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %143, 114688
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float %140, float 0.000000e+00
  %147 = select i1 %145, float %141, float 0.000000e+00
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fptoui float %150 to i32
  %152 = select i1 %145, i32 %151, i32 0
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = and i32 %155, 3
  %157 = icmp ne i32 %156, 0
  %158 = and i32 %155, 4
  %159 = icmp ne i32 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %172

; <label>:161                                     ; preds = %0
  %162 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %163 = fmul fast float %162, %76
  %164 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %165 = fmul fast float %164, %75
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %165, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float 1.000000e+00, %167
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fcmp fast olt float %168, %170
  br label %175

; <label>:172                                     ; preds = %0
  %173 = icmp eq i32 %158, 0
  %174 = and i1 %157, %173
  br label %175

; <label>:175                                     ; preds = %172, %161
  %176 = phi i1 [ %171, %161 ], [ %174, %172 ]
  %177 = add i32 %35, 156
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = shl i32 %179, 4
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %179, 7
  %184 = and i32 %183, 32752
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %179, 22
  %187 = shl nuw nsw i32 %186, 5
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = add i32 %35, 216
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %191, 8
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = lshr i32 %191, 16
  %200 = and i32 %199, 255
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F70101020000000
  %203 = add i32 %35, 36
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = and i32 %205, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %205, 16
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = add i32 %35, 288
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, 65535
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %212, 16
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = fmul fast float %214, 0x3F50624DE0000000
  %218 = fmul fast float %216, 0x3F50624DE0000000
  %219 = add i32 %35, 172
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = shl i32 %221, 4
  %223 = and i32 %222, 32752
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = lshr i32 %221, 7
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %221, 22
  %229 = shl nuw nsw i32 %228, 5
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = add i32 %35, 232
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 255
  %235 = uitofp i32 %234 to float
  %236 = fmul fast float %235, 0x3F70101020000000
  %237 = lshr i32 %233, 8
  %238 = and i32 %237, 255
  %239 = uitofp i32 %238 to float
  %240 = fmul fast float %239, 0x3F70101020000000
  %241 = lshr i32 %233, 16
  %242 = and i32 %241, 255
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F70101020000000
  %245 = add i32 %35, 52
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = add i32 %35, 304
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %254, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = fmul fast float %256, 0x3F50624DE0000000
  %260 = fmul fast float %258, 0x3F50624DE0000000
  %261 = add i32 %35, 188
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = shl i32 %263, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %263, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %263, 22
  %271 = shl nuw nsw i32 %270, 5
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %35, 248
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %275, 8
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %275, 16
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = add i32 %35, 68
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %35, 320
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = fmul fast float %298, 0x3F50624DE0000000
  %302 = fmul fast float %300, 0x3F50624DE0000000
  %303 = add i32 %35, 204
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = shl i32 %305, 4
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %305, 7
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %305, 22
  %313 = shl nuw nsw i32 %312, 5
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %35, 264
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %317, 8
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %317, 16
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = add i32 %35, 84
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %35, 336
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %340, 0x3F50624DE0000000
  %344 = fmul fast float %342, 0x3F50624DE0000000
  %345 = add i32 %35, 348
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 32
  %349 = icmp eq i32 %348, 0
  %350 = and i32 %347, 64
  %351 = icmp eq i32 %350, 0
  %352 = and i32 %347, 128
  %353 = icmp eq i32 %352, 0
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 2
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %371, label %358

; <label>:358                                     ; preds = %175
  %359 = add i32 %35, 568
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = add i32 %361, 0
  %363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %363, %dx.types.Handle %72, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = fmul fast float %365, %65
  %369 = fmul fast float %366, %66
  %370 = fmul fast float %367, %67
  br label %371

; <label>:371                                     ; preds = %358, %175
  %372 = phi float [ %67, %175 ], [ %370, %358 ]
  %373 = phi float [ %66, %175 ], [ %369, %358 ]
  %374 = phi float [ %65, %175 ], [ %368, %358 ]
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %398, label %379

; <label>:379                                     ; preds = %371
  %380 = add i32 %35, 44
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 1
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %384, float %374, float 1.000000e+00
  %386 = add i32 %35, 60
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 1
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %390, float %373, float 1.000000e+00
  %392 = add i32 %35, 76
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %372, float 1.000000e+00
  br label %398

; <label>:398                                     ; preds = %379, %371
  %399 = phi float [ %372, %371 ], [ %397, %379 ]
  %400 = phi float [ %373, %371 ], [ %391, %379 ]
  %401 = phi float [ %374, %371 ], [ %385, %379 ]
  %402 = lshr i32 %376, 20
  %403 = and i32 %402, 3
  %404 = add nuw nsw i32 %403, 1
  %405 = add i32 %35, 24
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = add i32 %35, 28
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = or i32 %410, %407
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %982, label %413

; <label>:413                                     ; preds = %398
  %414 = and i32 %407, 262144
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %38, float 1.000000e+00
  %417 = select i1 %415, float %39, float 0.000000e+00
  %418 = select i1 %415, float %40, float 0.000000e+00
  %419 = select i1 %415, float %41, float 1.000000e+00
  %420 = select i1 %415, float %42, float %63
  %421 = select i1 %415, float %43, float %64
  %422 = add i32 %35, 284
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = lshr i32 %424, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = fmul fast float %426, 0x3F50624DE0000000
  %428 = add i32 %35, 88
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = lshr i32 %430, 16
  %432 = and i32 %431, 255
  %433 = lshr i32 %430, 24
  %434 = add i32 %35, 292
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 65535
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %436, 16
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = add i32 %35, 32
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = lshr i32 %443, 22
  %445 = shl nuw nsw i32 %444, 5
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = shl i32 %443, 4
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %443, 7
  %451 = and i32 %450, 32752
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 3
  %455 = fmul fast float %454, 1.000000e+03
  %456 = fmul fast float %217, %455
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fadd fast float %457, %207
  %459 = fmul fast float %218, %455
  %460 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %461 = fadd fast float %460, %209
  %462 = fmul fast float %427, %455
  %463 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %464 = fmul fast float %463, 0x401921FB60000000
  %465 = fadd fast float %464, %446
  %466 = call float @dx.op.unary.f32(i32 13, float %465)  ; Sin(value)
  %467 = call float @dx.op.unary.f32(i32 12, float %465)  ; Cos(value)
  %468 = fsub fast float -0.000000e+00, %466
  %469 = fadd fast float %420, -5.000000e-01
  %470 = fadd fast float %421, -5.000000e-01
  %471 = fmul fast float %438, %469
  %472 = fmul fast float %440, %470
  %473 = fadd fast float %471, 5.000000e-01
  %474 = fadd fast float %472, 5.000000e-01
  %475 = fmul fast float %449, %473
  %476 = fmul fast float %452, %474
  %477 = fmul fast float %467, %475
  %478 = call float @dx.op.tertiary.f32(i32 46, float %468, float %476, float %477)  ; FMad(a,b,c)
  %479 = fmul fast float %466, %475
  %480 = call float @dx.op.tertiary.f32(i32 46, float %467, float %476, float %479)  ; FMad(a,b,c)
  %481 = fadd fast float %458, %478
  %482 = fadd fast float %461, %480
  %483 = icmp ugt i32 %432, 1
  %484 = icmp ugt i32 %430, 33554431
  %485 = or i1 %484, %483
  br i1 %485, label %486, label %511

; <label>:486                                     ; preds = %413
  %487 = add i32 %35, 228
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %487, i32 undef)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = lshr i32 %489, 16
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = fmul fast float %454, %491
  %493 = call float @dx.op.unary.f32(i32 22, float %492)  ; Frc(value)
  %494 = mul nuw nsw i32 %432, %433
  %495 = uitofp i32 %494 to float
  %496 = fmul fast float %493, %495
  %497 = call float @dx.op.unary.f32(i32 27, float %496)  ; Round_ni(value)
  %498 = fptoui float %497 to i32
  %499 = urem i32 %498, %432
  %500 = udiv i32 %498, %433
  %501 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %502 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %503 = uitofp i32 %499 to float
  %504 = uitofp i32 %500 to float
  %505 = fadd fast float %501, %503
  %506 = fadd fast float %502, %504
  %507 = uitofp i32 %432 to float
  %508 = uitofp i32 %433 to float
  %509 = fdiv fast float %505, %507
  %510 = fdiv fast float %506, %508
  br label %511

; <label>:511                                     ; preds = %486, %413
  %512 = phi float [ %509, %486 ], [ %481, %413 ]
  %513 = phi float [ %510, %486 ], [ %482, %413 ]
  %514 = and i32 %407, 16
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %712, label %516

; <label>:516                                     ; preds = %511
  %517 = add i32 %35, 440
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = add i32 %519, 0
  %521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %521, %dx.types.Handle %71, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  %527 = and i32 %430, 255
  %528 = uitofp i32 %527 to float
  %529 = lshr i32 %430, 8
  %530 = and i32 %529, 255
  %531 = uitofp i32 %530 to float
  %532 = fmul fast float %526, %528
  %533 = fadd fast float %532, %531
  %534 = fmul fast float %533, 0x3F70101000000000
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 512
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %547, label %539

; <label>:539                                     ; preds = %516
  %540 = add i32 %35, 520
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %542, 0
  %544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %544, %dx.types.Handle %72, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  br label %547

; <label>:547                                     ; preds = %539, %516
  %548 = phi float [ %546, %539 ], [ 1.000000e+00, %516 ]
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 33554432
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %659, label %553

; <label>:553                                     ; preds = %547
  %554 = add i32 %35, 224
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 65535
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %556, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = add i32 %35, 228
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = and i32 %563, 65535
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = lshr i32 %567, 24
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = and i32 %567, 255
  %572 = uitofp i32 %571 to float
  %573 = fmul fast float %572, 0x3F70101020000000
  %574 = lshr i32 %567, 8
  %575 = and i32 %574, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = lshr i32 %567, 16
  %579 = and i32 %578, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = add i32 %35, 220
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = lshr i32 %584, 24
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = and i32 %584, 255
  %589 = uitofp i32 %588 to float
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = lshr i32 %584, 8
  %592 = and i32 %591, 255
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = lshr i32 %584, 16
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = bitcast float %523 to i32
  %600 = ashr i32 %599, 1
  %601 = sub nsw i32 1597463174, %600
  %602 = bitcast i32 %601 to float
  %603 = fmul fast float %523, 5.000000e-01
  %604 = fmul fast float %602, %602
  %605 = fmul fast float %604, %603
  %606 = fsub fast float 1.500000e+00, %605
  %607 = fmul fast float %602, %523
  %608 = fmul fast float %607, %606
  %609 = bitcast float %524 to i32
  %610 = ashr i32 %609, 1
  %611 = sub nsw i32 1597463174, %610
  %612 = bitcast i32 %611 to float
  %613 = fmul fast float %524, 5.000000e-01
  %614 = fmul fast float %612, %612
  %615 = fmul fast float %614, %613
  %616 = fsub fast float 1.500000e+00, %615
  %617 = fmul fast float %612, %524
  %618 = fmul fast float %617, %616
  %619 = bitcast float %525 to i32
  %620 = ashr i32 %619, 1
  %621 = sub nsw i32 1597463174, %620
  %622 = bitcast i32 %621 to float
  %623 = fmul fast float %525, 5.000000e-01
  %624 = fmul fast float %622, %622
  %625 = fmul fast float %624, %623
  %626 = fsub fast float 1.500000e+00, %625
  %627 = fmul fast float %622, %525
  %628 = fmul fast float %627, %626
  %629 = fsub fast float %608, %590
  %630 = fsub fast float %618, %594
  %631 = fsub fast float %628, %598
  %632 = fmul fast float %629, %558
  %633 = fmul fast float %630, %560
  %634 = fmul fast float %631, %565
  %635 = fadd fast float %632, %573
  %636 = fadd fast float %633, %577
  %637 = fadd fast float %634, %581
  %638 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %640 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %641 = fmul fast float %638, %638
  %642 = fmul fast float %639, %639
  %643 = fmul fast float %640, %640
  %644 = fsub fast float %641, %523
  %645 = fsub fast float %642, %524
  %646 = fsub fast float %643, %525
  %647 = fmul fast float %644, %548
  %648 = fmul fast float %645, %548
  %649 = fmul fast float %646, %548
  %650 = fadd fast float %647, %523
  %651 = fadd fast float %648, %524
  %652 = fadd fast float %649, %525
  %653 = fadd fast float %570, %534
  %654 = fsub fast float %653, %587
  %655 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %656 = fsub fast float %655, %534
  %657 = fmul fast float %656, %548
  %658 = fadd fast float %657, %534
  br label %712

; <label>:659                                     ; preds = %547
  %660 = and i32 %550, 134217728
  %661 = icmp eq i32 %660, 0
  br i1 %661, label %696, label %662

; <label>:662                                     ; preds = %659
  %663 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %664 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %665 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %666 = fadd fast float %663, -5.000000e-01
  %667 = fadd fast float %664, -5.000000e-01
  %668 = fadd fast float %665, -5.000000e-01
  %669 = fmul fast float %666, %548
  %670 = fmul fast float %667, %548
  %671 = fmul fast float %668, %548
  %672 = fadd fast float %669, 5.000000e-01
  %673 = fadd fast float %670, 5.000000e-01
  %674 = fadd fast float %671, 5.000000e-01
  %675 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %676 = call float @dx.op.unary.f32(i32 24, float %524)  ; Sqrt(value)
  %677 = call float @dx.op.unary.f32(i32 24, float %525)  ; Sqrt(value)
  %678 = fmul fast float %672, 2.000000e+00
  %679 = fsub fast float 1.000000e+00, %678
  %680 = fmul fast float %679, %675
  %681 = fadd fast float %680, %678
  %682 = fmul fast float %681, %675
  %683 = fmul fast float %673, 2.000000e+00
  %684 = fsub fast float 1.000000e+00, %683
  %685 = fmul fast float %684, %676
  %686 = fadd fast float %685, %683
  %687 = fmul fast float %686, %676
  %688 = fmul fast float %674, 2.000000e+00
  %689 = fsub fast float 1.000000e+00, %688
  %690 = fmul fast float %689, %677
  %691 = fadd fast float %690, %688
  %692 = fmul fast float %691, %677
  %693 = fmul fast float %682, %682
  %694 = fmul fast float %687, %687
  %695 = fmul fast float %692, %692
  br label %712

; <label>:696                                     ; preds = %659
  %697 = fmul fast float %194, %194
  %698 = fmul fast float %198, %198
  %699 = fmul fast float %202, %202
  %700 = fadd fast float %697, -1.000000e+00
  %701 = fadd fast float %698, -1.000000e+00
  %702 = fadd fast float %699, -1.000000e+00
  %703 = fmul fast float %548, %700
  %704 = fmul fast float %548, %701
  %705 = fmul fast float %548, %702
  %706 = fadd fast float %703, 1.000000e+00
  %707 = fadd fast float %704, 1.000000e+00
  %708 = fadd fast float %705, 1.000000e+00
  %709 = fmul fast float %706, %523
  %710 = fmul fast float %707, %524
  %711 = fmul fast float %708, %525
  br label %712

; <label>:712                                     ; preds = %696, %662, %553, %511
  %713 = phi float [ %658, %553 ], [ %534, %662 ], [ %534, %696 ], [ 0x3FA23C0BE0000000, %511 ]
  %714 = phi float [ %650, %553 ], [ %693, %662 ], [ %709, %696 ], [ 1.000000e+00, %511 ]
  %715 = phi float [ %651, %553 ], [ %694, %662 ], [ %710, %696 ], [ 1.000000e+00, %511 ]
  %716 = phi float [ %652, %553 ], [ %695, %662 ], [ %711, %696 ], [ 1.000000e+00, %511 ]
  %717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %718 = extractvalue %dx.types.CBufRet.i32 %717, 1
  %719 = and i32 %718, 1
  %720 = icmp ne i32 %719, 0
  %721 = add i32 %35, 356
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %721, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = and i32 %723, 32
  %725 = icmp ne i32 %724, 0
  %726 = and i1 %720, %725
  %727 = select i1 %726, float 1.000000e+00, float %714
  %728 = select i1 %726, float 0x3FD3333340000000, float %715
  %729 = select i1 %726, float 0x3FD3333340000000, float %716
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 32
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %806, label %734

; <label>:734                                     ; preds = %712
  %735 = add i32 %35, 92
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %35, 456
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %71, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = extractvalue %dx.types.ResRet.f32 %743, 3
  %748 = and i32 %737, 255
  %749 = uitofp i32 %748 to float
  %750 = lshr i32 %737, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = lshr i32 %737, 16
  %754 = and i32 %753, 255
  %755 = uitofp i32 %754 to float
  %756 = fmul fast float %755, 0x3F70101000000000
  %757 = fmul fast float %744, %749
  %758 = fadd fast float %757, %752
  %759 = fmul fast float %758, 0x3F70101000000000
  %760 = fadd fast float %745, -5.000000e-01
  %761 = fadd fast float %747, -5.000000e-01
  %762 = fmul fast float %760, %756
  %763 = fmul fast float %761, %756
  %764 = fadd fast float %762, 5.000000e-01
  %765 = fadd fast float %763, 5.000000e-01
  %766 = fmul fast float %764, 2.000000e+00
  %767 = fadd fast float %766, -1.000000e+00
  %768 = fmul fast float %765, 2.000000e+00
  %769 = fadd fast float %768, -1.000000e+00
  %770 = fadd fast float %767, %769
  %771 = fmul fast float %770, 5.000000e-01
  %772 = fsub fast float %767, %769
  %773 = fmul fast float %772, 5.000000e-01
  %774 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %775 = fsub fast float 1.000000e+00, %774
  %776 = call float @dx.op.unary.f32(i32 6, float %773)  ; FAbs(value)
  %777 = fsub fast float %775, %776
  %778 = call float @dx.op.dot3.f32(i32 55, float %771, float %773, float %777, float %771, float %773, float %777)  ; Dot3(ax,ay,az,bx,by,bz)
  %779 = call float @dx.op.unary.f32(i32 25, float %778)  ; Rsqrt(value)
  %780 = fmul fast float %771, %779
  %781 = fmul fast float %773, %779
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 67108864
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %802, label %786

; <label>:786                                     ; preds = %734
  %787 = add i32 %35, 280
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 65535
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = and i32 %793, 65535
  %795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %794)  ; LegacyF16ToF32(value)
  %796 = lshr i32 %789, 16
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = fsub fast float %759, %797
  %799 = fmul fast float %798, %791
  %800 = fadd fast float %799, %795
  %801 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  br label %802

; <label>:802                                     ; preds = %786, %734
  %803 = phi float [ %801, %786 ], [ %759, %734 ]
  %804 = call float @dx.op.dot2.f32(i32 54, float %780, float %781, float %416, float %417)  ; Dot2(ax,ay,bx,by)
  %805 = call float @dx.op.dot2.f32(i32 54, float %780, float %781, float %418, float %419)  ; Dot2(ax,ay,bx,by)
  br label %806

; <label>:806                                     ; preds = %802, %712
  %807 = phi float [ %803, %802 ], [ 0x3FD6666660000000, %712 ]
  %808 = phi float [ %804, %802 ], [ 0.000000e+00, %712 ]
  %809 = phi float [ %805, %802 ], [ 0.000000e+00, %712 ]
  %810 = phi float [ %746, %802 ], [ 1.000000e+00, %712 ]
  %811 = add i32 %35, 160
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = lshr i32 %813, 22
  %815 = shl nuw nsw i32 %814, 5
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 64
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %854, label %821

; <label>:821                                     ; preds = %806
  %822 = add i32 %35, 472
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = add i32 %824, 0
  %826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = and i32 %828, 131072
  %830 = icmp eq i32 %829, 0
  %831 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %826, %dx.types.Handle %71, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = fmul fast float %832, %182
  %836 = fmul fast float %833, %185
  %837 = fmul fast float %834, %188
  br i1 %830, label %844, label %838

; <label>:838                                     ; preds = %821
  %839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %840 = extractvalue %dx.types.CBufRet.f32 %839, 0
  %841 = fmul fast float %840, %835
  %842 = fmul fast float %840, %836
  %843 = fmul fast float %840, %837
  br label %844

; <label>:844                                     ; preds = %838, %821
  %845 = phi float [ %841, %838 ], [ %835, %821 ]
  %846 = phi float [ %842, %838 ], [ %836, %821 ]
  %847 = phi float [ %843, %838 ], [ %837, %821 ]
  %848 = fmul fast float %845, %816
  %849 = select i1 %176, float %848, float %845
  %850 = call float @dx.op.dot3.f32(i32 55, float %849, float %846, float %847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = select i1 %176, float 0.000000e+00, float %845
  %852 = select i1 %176, float %850, float %846
  %853 = select i1 %176, float 0.000000e+00, float %847
  br label %854

; <label>:854                                     ; preds = %844, %806
  %855 = phi float [ %851, %844 ], [ 0.000000e+00, %806 ]
  %856 = phi float [ %852, %844 ], [ 0.000000e+00, %806 ]
  %857 = phi float [ %853, %844 ], [ 0.000000e+00, %806 ]
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 1024
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %892, label %862

; <label>:862                                     ; preds = %854
  %863 = add i32 %35, 152
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = and i32 %865, 255
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %867, 0x3F70101020000000
  %869 = lshr i32 %865, 8
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = fmul fast float %871, 0x3F70101020000000
  %873 = lshr i32 %865, 16
  %874 = and i32 %873, 255
  %875 = uitofp i32 %874 to float
  %876 = fmul fast float %875, 0x3F70101020000000
  %877 = fmul fast float %868, %868
  %878 = fmul fast float %872, %872
  %879 = fmul fast float %876, %876
  %880 = add i32 %35, 536
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = add i32 %882, 0
  %884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %883, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %884, %dx.types.Handle %72, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = fmul fast float %877, %886
  %890 = fmul fast float %878, %887
  %891 = fmul fast float %879, %888
  br label %892

; <label>:892                                     ; preds = %862, %854
  %893 = phi float [ %889, %862 ], [ 0.000000e+00, %854 ]
  %894 = phi float [ %890, %862 ], [ 0.000000e+00, %854 ]
  %895 = phi float [ %891, %862 ], [ 0.000000e+00, %854 ]
  %896 = fcmp fast ogt float %893, 0.000000e+00
  %897 = fcmp fast ogt float %894, 0.000000e+00
  %898 = fcmp fast ogt float %895, 0.000000e+00
  %899 = call float @dx.op.unary.f32(i32 23, float %893)  ; Log(value)
  %900 = call float @dx.op.unary.f32(i32 23, float %894)  ; Log(value)
  %901 = call float @dx.op.unary.f32(i32 23, float %895)  ; Log(value)
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = lshr i32 %903, 7
  %905 = and i32 %904, 32752
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = fmul fast float %899, 0xBFE62E4300000000
  %908 = fmul fast float %907, %906
  %909 = fmul fast float %900, 0xBFE62E4300000000
  %910 = fmul fast float %909, %906
  %911 = fmul fast float %901, 0xBFE62E4300000000
  %912 = fmul fast float %911, %906
  %913 = select i1 %896, float %908, float 1.270000e+02
  %914 = select i1 %897, float %910, float 1.270000e+02
  %915 = select i1 %898, float %912, float 1.270000e+02
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 10240
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %964, label %920

; <label>:920                                     ; preds = %892
  %921 = add i32 %35, 552
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = add i32 %923, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %72, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 1
  %928 = extractvalue %dx.types.ResRet.f32 %926, 3
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 1048576
  %932 = icmp ne i32 %931, 0
  %933 = and i32 %930, 8192
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %950, label %935

; <label>:935                                     ; preds = %920
  %936 = extractvalue %dx.types.ResRet.f32 %926, 2
  %937 = select i1 %932, float %936, float %927
  %938 = extractvalue %dx.types.ResRet.f32 %926, 0
  %939 = select i1 %932, float %938, float %927
  %940 = add i32 %35, 96
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = lshr i32 %942, 16
  %944 = and i32 %943, 255
  %945 = uitofp i32 %944 to float
  %946 = fmul fast float %945, 0x3F80101020000000
  %947 = fmul fast float %946, %939
  %948 = fmul fast float %946, %927
  %949 = fmul fast float %946, %937
  br label %950

; <label>:950                                     ; preds = %935, %920
  %951 = phi float [ %947, %935 ], [ 0.000000e+00, %920 ]
  %952 = phi float [ %948, %935 ], [ 0.000000e+00, %920 ]
  %953 = phi float [ %949, %935 ], [ 0.000000e+00, %920 ]
  %954 = and i32 %930, 2048
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %964, label %956

; <label>:956                                     ; preds = %950
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = shl i32 %958, 4
  %960 = and i32 %959, 32752
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = fmul fast float %961, %928
  %963 = call float @dx.op.binary.f32(i32 35, float %962, float 0x3F70101020000000)  ; FMax(a,b)
  br label %964

; <label>:964                                     ; preds = %956, %950, %892
  %965 = phi float [ %951, %956 ], [ %951, %950 ], [ 0.000000e+00, %892 ]
  %966 = phi float [ %952, %956 ], [ %952, %950 ], [ 0.000000e+00, %892 ]
  %967 = phi float [ %953, %956 ], [ %953, %950 ], [ 0.000000e+00, %892 ]
  %968 = phi float [ %963, %956 ], [ 0x3F70101020000000, %950 ], [ 0x3F70101020000000, %892 ]
  %969 = add i32 %35, 96
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 255
  %973 = uitofp i32 %972 to float
  %974 = lshr i32 %971, 8
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %978 = fmul fast float %976, %977
  %979 = fadd fast float %978, %973
  %980 = fmul fast float %979, 0x3F70101020000000
  %981 = call float @dx.op.unary.f32(i32 7, float %980)  ; Saturate(value)
  br label %982

; <label>:982                                     ; preds = %964, %398
  %983 = phi float [ 0.000000e+00, %398 ], [ %808, %964 ]
  %984 = phi float [ 0.000000e+00, %398 ], [ %809, %964 ]
  %985 = phi float [ 0.000000e+00, %398 ], [ %727, %964 ]
  %986 = phi float [ 0.000000e+00, %398 ], [ %728, %964 ]
  %987 = phi float [ 0.000000e+00, %398 ], [ %729, %964 ]
  %988 = phi float [ 0.000000e+00, %398 ], [ %913, %964 ]
  %989 = phi float [ 0.000000e+00, %398 ], [ %914, %964 ]
  %990 = phi float [ 0.000000e+00, %398 ], [ %915, %964 ]
  %991 = phi float [ 0.000000e+00, %398 ], [ %965, %964 ]
  %992 = phi float [ 0.000000e+00, %398 ], [ %966, %964 ]
  %993 = phi float [ 0.000000e+00, %398 ], [ %967, %964 ]
  %994 = phi float [ 0.000000e+00, %398 ], [ %855, %964 ]
  %995 = phi float [ 0.000000e+00, %398 ], [ %856, %964 ]
  %996 = phi float [ 0.000000e+00, %398 ], [ %857, %964 ]
  %997 = phi float [ 0.000000e+00, %398 ], [ %713, %964 ]
  %998 = phi float [ 0.000000e+00, %398 ], [ 1.000000e+00, %964 ]
  %999 = phi float [ 0.000000e+00, %398 ], [ %807, %964 ]
  %1000 = phi float [ 0.000000e+00, %398 ], [ %810, %964 ]
  %1001 = phi float [ 0.000000e+00, %398 ], [ %968, %964 ]
  %1002 = phi float [ 0.000000e+00, %398 ], [ %981, %964 ]
  br i1 %349, label %2040, label %1003

; <label>:1003                                    ; preds = %982
  %1004 = icmp ult i32 %404, 2
  %1005 = add i32 %35, 40
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = add i32 %35, 44
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = or i32 %1010, %1007
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %2040, label %1013

; <label>:1013                                    ; preds = %1003
  %1014 = and i32 %1007, 262144
  %1015 = icmp ne i32 %1014, 0
  %1016 = select i1 %1015, float %38, float 1.000000e+00
  %1017 = select i1 %1015, float %39, float 0.000000e+00
  %1018 = select i1 %1015, float %40, float 0.000000e+00
  %1019 = select i1 %1015, float %41, float 1.000000e+00
  %1020 = select i1 %1015, float %42, float %63
  %1021 = select i1 %1015, float %43, float %64
  %1022 = add i32 %35, 300
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = lshr i32 %1024, 16
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = fmul fast float %1026, 0x3F50624DE0000000
  %1028 = add i32 %35, 104
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = lshr i32 %1030, 16
  %1032 = and i32 %1031, 255
  %1033 = lshr i32 %1030, 24
  %1034 = add i32 %35, 308
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 65535
  %1038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1037)  ; LegacyF16ToF32(value)
  %1039 = lshr i32 %1036, 16
  %1040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1039)  ; LegacyF16ToF32(value)
  %1041 = add i32 %35, 48
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = lshr i32 %1043, 22
  %1045 = shl nuw nsw i32 %1044, 5
  %1046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1045)  ; LegacyF16ToF32(value)
  %1047 = shl i32 %1043, 4
  %1048 = and i32 %1047, 32752
  %1049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1048)  ; LegacyF16ToF32(value)
  %1050 = lshr i32 %1043, 7
  %1051 = and i32 %1050, 32752
  %1052 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1051)  ; LegacyF16ToF32(value)
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 3
  %1055 = fmul fast float %1054, 1.000000e+03
  %1056 = fmul fast float %259, %1055
  %1057 = call float @dx.op.unary.f32(i32 22, float %1056)  ; Frc(value)
  %1058 = fadd fast float %1057, %249
  %1059 = fmul fast float %260, %1055
  %1060 = call float @dx.op.unary.f32(i32 22, float %1059)  ; Frc(value)
  %1061 = fadd fast float %1060, %251
  %1062 = fmul fast float %1027, %1055
  %1063 = call float @dx.op.unary.f32(i32 22, float %1062)  ; Frc(value)
  %1064 = fmul fast float %1063, 0x401921FB60000000
  %1065 = fadd fast float %1064, %1046
  %1066 = call float @dx.op.unary.f32(i32 13, float %1065)  ; Sin(value)
  %1067 = call float @dx.op.unary.f32(i32 12, float %1065)  ; Cos(value)
  %1068 = fsub fast float -0.000000e+00, %1066
  %1069 = fadd fast float %1020, -5.000000e-01
  %1070 = fadd fast float %1021, -5.000000e-01
  %1071 = fmul fast float %1038, %1069
  %1072 = fmul fast float %1040, %1070
  %1073 = fadd fast float %1071, 5.000000e-01
  %1074 = fadd fast float %1072, 5.000000e-01
  %1075 = fmul fast float %1049, %1073
  %1076 = fmul fast float %1052, %1074
  %1077 = fmul fast float %1067, %1075
  %1078 = call float @dx.op.tertiary.f32(i32 46, float %1068, float %1076, float %1077)  ; FMad(a,b,c)
  %1079 = fmul fast float %1066, %1075
  %1080 = call float @dx.op.tertiary.f32(i32 46, float %1067, float %1076, float %1079)  ; FMad(a,b,c)
  %1081 = fadd fast float %1058, %1078
  %1082 = fadd fast float %1061, %1080
  %1083 = icmp ugt i32 %1032, 1
  %1084 = icmp ugt i32 %1030, 33554431
  %1085 = or i1 %1084, %1083
  br i1 %1085, label %1086, label %1111

; <label>:1086                                    ; preds = %1013
  %1087 = add i32 %35, 244
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = lshr i32 %1089, 16
  %1091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1090)  ; LegacyF16ToF32(value)
  %1092 = fmul fast float %1054, %1091
  %1093 = call float @dx.op.unary.f32(i32 22, float %1092)  ; Frc(value)
  %1094 = mul nuw nsw i32 %1032, %1033
  %1095 = uitofp i32 %1094 to float
  %1096 = fmul fast float %1093, %1095
  %1097 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1098 = fptoui float %1097 to i32
  %1099 = urem i32 %1098, %1032
  %1100 = udiv i32 %1098, %1033
  %1101 = call float @dx.op.unary.f32(i32 22, float %1081)  ; Frc(value)
  %1102 = call float @dx.op.unary.f32(i32 22, float %1082)  ; Frc(value)
  %1103 = uitofp i32 %1099 to float
  %1104 = uitofp i32 %1100 to float
  %1105 = fadd fast float %1101, %1103
  %1106 = fadd fast float %1102, %1104
  %1107 = uitofp i32 %1032 to float
  %1108 = uitofp i32 %1033 to float
  %1109 = fdiv fast float %1105, %1107
  %1110 = fdiv fast float %1106, %1108
  br label %1111

; <label>:1111                                    ; preds = %1086, %1013
  %1112 = phi float [ %1109, %1086 ], [ %1081, %1013 ]
  %1113 = phi float [ %1110, %1086 ], [ %1082, %1013 ]
  %1114 = and i32 %1007, 16777216
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1225, label %1116

; <label>:1116                                    ; preds = %1111
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = fadd fast float %1118, %134
  %1122 = fadd fast float %1119, %135
  %1123 = fadd fast float %1120, %136
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  %1127 = icmp eq i32 %36, 65535
  br i1 %1127, label %1222, label %1128

; <label>:1128                                    ; preds = %1116
  %1129 = lshr i32 %36, 1
  %1130 = shl i32 %1129, 2
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = and i32 %36, 1
  %1134 = icmp ne i32 %1133, 0
  %1135 = lshr i32 %1132, 16
  %1136 = and i32 %1132, 65535
  %1137 = select i1 %1134, i32 %1135, i32 %1136
  %1138 = icmp eq i32 %1137, 65535
  br i1 %1138, label %1218, label %1139

; <label>:1139                                    ; preds = %1128
  %1140 = mul nuw nsw i32 %1137, 40
  %1141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = add nuw nsw i32 %1140, 12
  %1146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  %1148 = extractvalue %dx.types.ResRet.f32 %1146, 1
  %1149 = extractvalue %dx.types.ResRet.f32 %1146, 2
  %1150 = add nuw nsw i32 %1140, 24
  %1151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = extractvalue %dx.types.ResRet.f32 %1151, 1
  %1154 = extractvalue %dx.types.ResRet.f32 %1151, 2
  %1155 = add nuw nsw i32 %1140, 36
  %1156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = fsub fast float %1121, %1142
  %1159 = fsub fast float %1122, %1143
  %1160 = fsub fast float %1123, %1144
  %1161 = fmul fast float %1157, %1158
  %1162 = fmul fast float %1157, %1159
  %1163 = fmul fast float %1157, %1160
  %1164 = call float @dx.op.unary.f32(i32 27, float %1161)  ; Round_ni(value)
  %1165 = call float @dx.op.unary.f32(i32 27, float %1162)  ; Round_ni(value)
  %1166 = call float @dx.op.unary.f32(i32 27, float %1163)  ; Round_ni(value)
  %1167 = fadd fast float %1164, 5.000000e-01
  %1168 = fadd fast float %1165, 5.000000e-01
  %1169 = fadd fast float %1166, 5.000000e-01
  %1170 = fmul fast float %1167, %1147
  %1171 = fmul fast float %1168, %1148
  %1172 = fmul fast float %1169, %1149
  %1173 = shl i32 %36, 2
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call float @dx.op.unary.f32(i32 22, float %1170)  ; Frc(value)
  %1179 = call float @dx.op.unary.f32(i32 22, float %1171)  ; Frc(value)
  %1180 = call float @dx.op.unary.f32(i32 22, float %1172)  ; Frc(value)
  %1181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1177, %dx.types.Handle %30, float %1178, float %1179, float %1180, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1181, 2
  %1185 = fmul fast float %1182, 1.023000e+03
  %1186 = fmul fast float %1183, 1.023000e+03
  %1187 = fmul fast float %1184, 1.023000e+03
  %1188 = fadd fast float %1185, 5.000000e-01
  %1189 = fadd fast float %1186, 5.000000e-01
  %1190 = fadd fast float %1187, 5.000000e-01
  %1191 = call float @dx.op.unary.f32(i32 27, float %1188)  ; Round_ni(value)
  %1192 = call float @dx.op.unary.f32(i32 27, float %1189)  ; Round_ni(value)
  %1193 = call float @dx.op.unary.f32(i32 27, float %1190)  ; Round_ni(value)
  %1194 = fsub fast float %1161, %1164
  %1195 = fsub fast float %1162, %1165
  %1196 = fsub fast float %1163, %1166
  %1197 = fmul fast float %1194, 7.500000e-01
  %1198 = fmul fast float %1195, 7.500000e-01
  %1199 = fmul fast float %1196, 7.500000e-01
  %1200 = fadd fast float %1164, 1.250000e-01
  %1201 = fadd fast float %1200, %1197
  %1202 = fadd fast float %1201, %1191
  %1203 = fadd fast float %1165, 1.250000e-01
  %1204 = fadd fast float %1203, %1198
  %1205 = fadd fast float %1204, %1192
  %1206 = fadd fast float %1166, 1.250000e-01
  %1207 = fadd fast float %1206, %1199
  %1208 = fadd fast float %1207, %1193
  %1209 = fmul fast float %1202, %1152
  %1210 = fmul fast float %1205, %1153
  %1211 = fmul fast float %1208, %1154
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %1213, 0
  %1215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1215, %dx.types.Handle %28, float %1209, float %1210, float %1211, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  br label %1218

; <label>:1218                                    ; preds = %1139, %1128
  %1219 = phi float [ %1217, %1139 ], [ -1.000000e+00, %1128 ]
  %1220 = fadd fast float %1219, %1126
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  br label %1222

; <label>:1222                                    ; preds = %1218, %1116
  %1223 = phi float [ %1221, %1218 ], [ %1126, %1116 ]
  %1224 = fmul fast float %1223, %401
  br label %1225

; <label>:1225                                    ; preds = %1222, %1111
  %1226 = phi float [ %1224, %1222 ], [ %401, %1111 ]
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 256
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1277, label %1231

; <label>:1231                                    ; preds = %1225
  %1232 = add i32 %35, 508
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = add i32 %1234, 0
  %1236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1236, %dx.types.Handle %72, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = add i32 %35, 116
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = shl i32 %1241, 4
  %1243 = and i32 %1242, 32752
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = lshr i32 %1241, 7
  %1246 = and i32 %1245, 32752
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = fsub fast float 1.000000e+00, %1226
  %1249 = call float @dx.op.binary.f32(i32 35, float %1248, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1250 = bitcast float %1226 to i32
  %1251 = sitofp i32 %1250 to float
  %1252 = fadd fast float %1251, 0xC1CFBF8940000000
  %1253 = fmul fast float %1247, %1252
  %1254 = fadd fast float %1253, 0x41CFBF8940000000
  %1255 = fptosi float %1254 to i32
  %1256 = bitcast i32 %1255 to float
  %1257 = bitcast float %1249 to i32
  %1258 = sitofp i32 %1257 to float
  %1259 = fadd fast float %1258, 0xC1CFBF8940000000
  %1260 = fmul fast float %1259, %1247
  %1261 = fadd fast float %1260, 0x41CFBF8940000000
  %1262 = fptosi float %1261 to i32
  %1263 = bitcast i32 %1262 to float
  %1264 = fmul fast float %1256, %1244
  %1265 = fmul fast float %1263, %1244
  %1266 = fsub fast float %1249, %1264
  %1267 = fadd fast float %1265, %1249
  %1268 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1269 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1270 = fsub fast float %1238, %1268
  %1271 = fsub fast float %1269, %1268
  %1272 = bitcast float %1271 to i32
  %1273 = sub nsw i32 2129859010, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1274, %1270
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  br label %1277

; <label>:1277                                    ; preds = %1231, %1225
  %1278 = phi float [ %1276, %1231 ], [ %1226, %1225 ]
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 128
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1299, label %1283

; <label>:1283                                    ; preds = %1277
  %1284 = add i32 %35, 492
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = add i32 %1286, 0
  %1288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1288, %dx.types.Handle %72, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 524288
  %1294 = icmp ne i32 %1293, 0
  %1295 = fcmp fast ogt float %1290, 0x3FE0101020000000
  %1296 = select i1 %1295, float 1.000000e+00, float 0.000000e+00
  %1297 = select i1 %1294, float %1296, float %1290
  %1298 = fmul fast float %1297, %1278
  br label %1299

; <label>:1299                                    ; preds = %1283, %1277
  %1300 = phi float [ %1298, %1283 ], [ %1278, %1277 ]
  %1301 = fcmp fast ult float %1300, 0x3F70101020000000
  br i1 %1301, label %2040, label %1302

; <label>:1302                                    ; preds = %1299
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 16
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1505, label %1307

; <label>:1307                                    ; preds = %1302
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = add i32 %35, 444
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = add i32 %1312, 0
  %1314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1314, %dx.types.Handle %71, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.ResRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.ResRet.f32 %1315, 2
  %1319 = extractvalue %dx.types.ResRet.f32 %1315, 3
  %1320 = and i32 %1309, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = lshr i32 %1309, 8
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1319, %1321
  %1326 = fadd fast float %1325, %1324
  %1327 = fmul fast float %1326, 0x3F70101000000000
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 512
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1340, label %1332

; <label>:1332                                    ; preds = %1307
  %1333 = add i32 %35, 524
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = add i32 %1335, 0
  %1337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1337, %dx.types.Handle %72, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  br label %1340

; <label>:1340                                    ; preds = %1332, %1307
  %1341 = phi float [ %1339, %1332 ], [ 1.000000e+00, %1307 ]
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 33554432
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1452, label %1346

; <label>:1346                                    ; preds = %1340
  %1347 = add i32 %35, 240
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = and i32 %1349, 65535
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = lshr i32 %1349, 16
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = add i32 %35, 244
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = and i32 %1356, 65535
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = lshr i32 %1360, 24
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1362, 0x3F70101020000000
  %1364 = and i32 %1360, 255
  %1365 = uitofp i32 %1364 to float
  %1366 = fmul fast float %1365, 0x3F70101020000000
  %1367 = lshr i32 %1360, 8
  %1368 = and i32 %1367, 255
  %1369 = uitofp i32 %1368 to float
  %1370 = fmul fast float %1369, 0x3F70101020000000
  %1371 = lshr i32 %1360, 16
  %1372 = and i32 %1371, 255
  %1373 = uitofp i32 %1372 to float
  %1374 = fmul fast float %1373, 0x3F70101020000000
  %1375 = add i32 %35, 236
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = lshr i32 %1377, 24
  %1379 = uitofp i32 %1378 to float
  %1380 = fmul fast float %1379, 0x3F70101020000000
  %1381 = and i32 %1377, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = fmul fast float %1382, 0x3F70101020000000
  %1384 = lshr i32 %1377, 8
  %1385 = and i32 %1384, 255
  %1386 = uitofp i32 %1385 to float
  %1387 = fmul fast float %1386, 0x3F70101020000000
  %1388 = lshr i32 %1377, 16
  %1389 = and i32 %1388, 255
  %1390 = uitofp i32 %1389 to float
  %1391 = fmul fast float %1390, 0x3F70101020000000
  %1392 = bitcast float %1316 to i32
  %1393 = ashr i32 %1392, 1
  %1394 = sub nsw i32 1597463174, %1393
  %1395 = bitcast i32 %1394 to float
  %1396 = fmul fast float %1316, 5.000000e-01
  %1397 = fmul fast float %1395, %1395
  %1398 = fmul fast float %1397, %1396
  %1399 = fsub fast float 1.500000e+00, %1398
  %1400 = fmul fast float %1395, %1316
  %1401 = fmul fast float %1400, %1399
  %1402 = bitcast float %1317 to i32
  %1403 = ashr i32 %1402, 1
  %1404 = sub nsw i32 1597463174, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1317, 5.000000e-01
  %1407 = fmul fast float %1405, %1405
  %1408 = fmul fast float %1407, %1406
  %1409 = fsub fast float 1.500000e+00, %1408
  %1410 = fmul fast float %1405, %1317
  %1411 = fmul fast float %1410, %1409
  %1412 = bitcast float %1318 to i32
  %1413 = ashr i32 %1412, 1
  %1414 = sub nsw i32 1597463174, %1413
  %1415 = bitcast i32 %1414 to float
  %1416 = fmul fast float %1318, 5.000000e-01
  %1417 = fmul fast float %1415, %1415
  %1418 = fmul fast float %1417, %1416
  %1419 = fsub fast float 1.500000e+00, %1418
  %1420 = fmul fast float %1415, %1318
  %1421 = fmul fast float %1420, %1419
  %1422 = fsub fast float %1401, %1383
  %1423 = fsub fast float %1411, %1387
  %1424 = fsub fast float %1421, %1391
  %1425 = fmul fast float %1422, %1351
  %1426 = fmul fast float %1423, %1353
  %1427 = fmul fast float %1424, %1358
  %1428 = fadd fast float %1425, %1366
  %1429 = fadd fast float %1426, %1370
  %1430 = fadd fast float %1427, %1374
  %1431 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1432 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1433 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1434 = fmul fast float %1431, %1431
  %1435 = fmul fast float %1432, %1432
  %1436 = fmul fast float %1433, %1433
  %1437 = fsub fast float %1434, %1316
  %1438 = fsub fast float %1435, %1317
  %1439 = fsub fast float %1436, %1318
  %1440 = fmul fast float %1437, %1341
  %1441 = fmul fast float %1438, %1341
  %1442 = fmul fast float %1439, %1341
  %1443 = fadd fast float %1440, %1316
  %1444 = fadd fast float %1441, %1317
  %1445 = fadd fast float %1442, %1318
  %1446 = fadd fast float %1363, %1327
  %1447 = fsub fast float %1446, %1380
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = fsub fast float %1448, %1327
  %1450 = fmul fast float %1449, %1341
  %1451 = fadd fast float %1450, %1327
  br label %1505

; <label>:1452                                    ; preds = %1340
  %1453 = and i32 %1343, 134217728
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1489, label %1455

; <label>:1455                                    ; preds = %1452
  %1456 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1457 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1458 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1459 = fadd fast float %1456, -5.000000e-01
  %1460 = fadd fast float %1457, -5.000000e-01
  %1461 = fadd fast float %1458, -5.000000e-01
  %1462 = fmul fast float %1459, %1341
  %1463 = fmul fast float %1460, %1341
  %1464 = fmul fast float %1461, %1341
  %1465 = fadd fast float %1462, 5.000000e-01
  %1466 = fadd fast float %1463, 5.000000e-01
  %1467 = fadd fast float %1464, 5.000000e-01
  %1468 = call float @dx.op.unary.f32(i32 24, float %1316)  ; Sqrt(value)
  %1469 = call float @dx.op.unary.f32(i32 24, float %1317)  ; Sqrt(value)
  %1470 = call float @dx.op.unary.f32(i32 24, float %1318)  ; Sqrt(value)
  %1471 = fmul fast float %1465, 2.000000e+00
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = fmul fast float %1472, %1468
  %1474 = fadd fast float %1473, %1471
  %1475 = fmul fast float %1474, %1468
  %1476 = fmul fast float %1466, 2.000000e+00
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = fmul fast float %1477, %1469
  %1479 = fadd fast float %1478, %1476
  %1480 = fmul fast float %1479, %1469
  %1481 = fmul fast float %1467, 2.000000e+00
  %1482 = fsub fast float 1.000000e+00, %1481
  %1483 = fmul fast float %1482, %1470
  %1484 = fadd fast float %1483, %1481
  %1485 = fmul fast float %1484, %1470
  %1486 = fmul fast float %1475, %1475
  %1487 = fmul fast float %1480, %1480
  %1488 = fmul fast float %1485, %1485
  br label %1505

; <label>:1489                                    ; preds = %1452
  %1490 = fmul fast float %236, %236
  %1491 = fmul fast float %240, %240
  %1492 = fmul fast float %244, %244
  %1493 = fadd fast float %1490, -1.000000e+00
  %1494 = fadd fast float %1491, -1.000000e+00
  %1495 = fadd fast float %1492, -1.000000e+00
  %1496 = fmul fast float %1341, %1493
  %1497 = fmul fast float %1341, %1494
  %1498 = fmul fast float %1341, %1495
  %1499 = fadd fast float %1496, 1.000000e+00
  %1500 = fadd fast float %1497, 1.000000e+00
  %1501 = fadd fast float %1498, 1.000000e+00
  %1502 = fmul fast float %1499, %1316
  %1503 = fmul fast float %1500, %1317
  %1504 = fmul fast float %1501, %1318
  br label %1505

; <label>:1505                                    ; preds = %1489, %1455, %1346, %1302
  %1506 = phi float [ %1451, %1346 ], [ %1327, %1455 ], [ %1327, %1489 ], [ 0x3FA23C0BE0000000, %1302 ]
  %1507 = phi float [ %1443, %1346 ], [ %1486, %1455 ], [ %1502, %1489 ], [ 1.000000e+00, %1302 ]
  %1508 = phi float [ %1444, %1346 ], [ %1487, %1455 ], [ %1503, %1489 ], [ 1.000000e+00, %1302 ]
  %1509 = phi float [ %1445, %1346 ], [ %1488, %1455 ], [ %1504, %1489 ], [ 1.000000e+00, %1302 ]
  %1510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.i32 %1510, 1
  %1512 = and i32 %1511, 1
  %1513 = icmp ne i32 %1512, 0
  %1514 = add i32 %35, 356
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 32
  %1518 = icmp ne i32 %1517, 0
  %1519 = and i1 %1513, %1518
  %1520 = select i1 %1519, float 1.000000e+00, float %1507
  %1521 = select i1 %1519, float 0x3FD3333340000000, float %1508
  %1522 = select i1 %1519, float 0x3FD3333340000000, float %1509
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 32
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1599, label %1527

; <label>:1527                                    ; preds = %1505
  %1528 = add i32 %35, 108
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = add i32 %35, 460
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1535, %dx.types.Handle %71, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.ResRet.f32 %1536, 2
  %1540 = extractvalue %dx.types.ResRet.f32 %1536, 3
  %1541 = and i32 %1530, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = lshr i32 %1530, 8
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = lshr i32 %1530, 16
  %1547 = and i32 %1546, 255
  %1548 = uitofp i32 %1547 to float
  %1549 = fmul fast float %1548, 0x3F70101000000000
  %1550 = fmul fast float %1537, %1542
  %1551 = fadd fast float %1550, %1545
  %1552 = fmul fast float %1551, 0x3F70101000000000
  %1553 = fadd fast float %1538, -5.000000e-01
  %1554 = fadd fast float %1540, -5.000000e-01
  %1555 = fmul fast float %1553, %1549
  %1556 = fmul fast float %1554, %1549
  %1557 = fadd fast float %1555, 5.000000e-01
  %1558 = fadd fast float %1556, 5.000000e-01
  %1559 = fmul fast float %1557, 2.000000e+00
  %1560 = fadd fast float %1559, -1.000000e+00
  %1561 = fmul fast float %1558, 2.000000e+00
  %1562 = fadd fast float %1561, -1.000000e+00
  %1563 = fadd fast float %1560, %1562
  %1564 = fmul fast float %1563, 5.000000e-01
  %1565 = fsub fast float %1560, %1562
  %1566 = fmul fast float %1565, 5.000000e-01
  %1567 = call float @dx.op.unary.f32(i32 6, float %1564)  ; FAbs(value)
  %1568 = fsub fast float 1.000000e+00, %1567
  %1569 = call float @dx.op.unary.f32(i32 6, float %1566)  ; FAbs(value)
  %1570 = fsub fast float %1568, %1569
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1564, float %1566, float %1570, float %1564, float %1566, float %1570)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = call float @dx.op.unary.f32(i32 25, float %1571)  ; Rsqrt(value)
  %1573 = fmul fast float %1564, %1572
  %1574 = fmul fast float %1566, %1572
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 67108864
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1595, label %1579

; <label>:1579                                    ; preds = %1527
  %1580 = add i32 %35, 296
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 65535
  %1584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1583)  ; LegacyF16ToF32(value)
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = and i32 %1586, 65535
  %1588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1587)  ; LegacyF16ToF32(value)
  %1589 = lshr i32 %1582, 16
  %1590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1589)  ; LegacyF16ToF32(value)
  %1591 = fsub fast float %1552, %1590
  %1592 = fmul fast float %1591, %1584
  %1593 = fadd fast float %1592, %1588
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  br label %1595

; <label>:1595                                    ; preds = %1579, %1527
  %1596 = phi float [ %1594, %1579 ], [ %1552, %1527 ]
  %1597 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1016, float %1017)  ; Dot2(ax,ay,bx,by)
  %1598 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1018, float %1019)  ; Dot2(ax,ay,bx,by)
  br label %1599

; <label>:1599                                    ; preds = %1595, %1505
  %1600 = phi float [ %1596, %1595 ], [ 0x3FD6666660000000, %1505 ]
  %1601 = phi float [ %1597, %1595 ], [ 0.000000e+00, %1505 ]
  %1602 = phi float [ %1598, %1595 ], [ 0.000000e+00, %1505 ]
  %1603 = phi float [ %1539, %1595 ], [ 1.000000e+00, %1505 ]
  %1604 = add i32 %35, 176
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = lshr i32 %1606, 22
  %1608 = shl nuw nsw i32 %1607, 5
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 64
  %1613 = icmp eq i32 %1612, 0
  br i1 %1613, label %1647, label %1614

; <label>:1614                                    ; preds = %1599
  %1615 = add i32 %35, 476
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = add i32 %1617, 0
  %1619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 131072
  %1623 = icmp eq i32 %1622, 0
  %1624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1619, %dx.types.Handle %71, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.ResRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.ResRet.f32 %1624, 2
  %1628 = fmul fast float %1625, %224
  %1629 = fmul fast float %1626, %227
  %1630 = fmul fast float %1627, %230
  br i1 %1623, label %1637, label %1631

; <label>:1631                                    ; preds = %1614
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = fmul fast float %1633, %1628
  %1635 = fmul fast float %1633, %1629
  %1636 = fmul fast float %1633, %1630
  br label %1637

; <label>:1637                                    ; preds = %1631, %1614
  %1638 = phi float [ %1634, %1631 ], [ %1628, %1614 ]
  %1639 = phi float [ %1635, %1631 ], [ %1629, %1614 ]
  %1640 = phi float [ %1636, %1631 ], [ %1630, %1614 ]
  %1641 = fmul fast float %1638, %1609
  %1642 = select i1 %176, float %1641, float %1638
  %1643 = call float @dx.op.dot3.f32(i32 55, float %1642, float %1639, float %1640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1644 = select i1 %176, float 0.000000e+00, float %1638
  %1645 = select i1 %176, float %1643, float %1639
  %1646 = select i1 %176, float 0.000000e+00, float %1640
  br label %1647

; <label>:1647                                    ; preds = %1637, %1599
  %1648 = phi float [ %1644, %1637 ], [ 0.000000e+00, %1599 ]
  %1649 = phi float [ %1645, %1637 ], [ 0.000000e+00, %1599 ]
  %1650 = phi float [ %1646, %1637 ], [ 0.000000e+00, %1599 ]
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = and i32 %1652, 1024
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1685, label %1655

; <label>:1655                                    ; preds = %1647
  %1656 = add i32 %35, 168
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 255
  %1660 = uitofp i32 %1659 to float
  %1661 = fmul fast float %1660, 0x3F70101020000000
  %1662 = lshr i32 %1658, 8
  %1663 = and i32 %1662, 255
  %1664 = uitofp i32 %1663 to float
  %1665 = fmul fast float %1664, 0x3F70101020000000
  %1666 = lshr i32 %1658, 16
  %1667 = and i32 %1666, 255
  %1668 = uitofp i32 %1667 to float
  %1669 = fmul fast float %1668, 0x3F70101020000000
  %1670 = fmul fast float %1661, %1661
  %1671 = fmul fast float %1665, %1665
  %1672 = fmul fast float %1669, %1669
  %1673 = add i32 %35, 540
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = add i32 %1675, 0
  %1677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1676, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1677, %dx.types.Handle %72, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = fmul fast float %1670, %1679
  %1683 = fmul fast float %1671, %1680
  %1684 = fmul fast float %1672, %1681
  br label %1685

; <label>:1685                                    ; preds = %1655, %1647
  %1686 = phi float [ %1682, %1655 ], [ 0.000000e+00, %1647 ]
  %1687 = phi float [ %1683, %1655 ], [ 0.000000e+00, %1647 ]
  %1688 = phi float [ %1684, %1655 ], [ 0.000000e+00, %1647 ]
  %1689 = fcmp fast ogt float %1686, 0.000000e+00
  %1690 = fcmp fast ogt float %1687, 0.000000e+00
  %1691 = fcmp fast ogt float %1688, 0.000000e+00
  %1692 = call float @dx.op.unary.f32(i32 23, float %1686)  ; Log(value)
  %1693 = call float @dx.op.unary.f32(i32 23, float %1687)  ; Log(value)
  %1694 = call float @dx.op.unary.f32(i32 23, float %1688)  ; Log(value)
  %1695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1696 = extractvalue %dx.types.ResRet.i32 %1695, 0
  %1697 = lshr i32 %1696, 7
  %1698 = and i32 %1697, 32752
  %1699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1698)  ; LegacyF16ToF32(value)
  %1700 = fmul fast float %1692, 0xBFE62E4300000000
  %1701 = fmul fast float %1700, %1699
  %1702 = fmul fast float %1693, 0xBFE62E4300000000
  %1703 = fmul fast float %1702, %1699
  %1704 = fmul fast float %1694, 0xBFE62E4300000000
  %1705 = fmul fast float %1704, %1699
  %1706 = select i1 %1689, float %1701, float 1.270000e+02
  %1707 = select i1 %1690, float %1703, float 1.270000e+02
  %1708 = select i1 %1691, float %1705, float 1.270000e+02
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = and i32 %1710, 10240
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %1757, label %1713

; <label>:1713                                    ; preds = %1685
  %1714 = add i32 %35, 556
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = add i32 %1716, 0
  %1718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1718, %dx.types.Handle %72, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1719, 3
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 1048576
  %1725 = icmp ne i32 %1724, 0
  %1726 = and i32 %1723, 8192
  %1727 = icmp eq i32 %1726, 0
  br i1 %1727, label %1743, label %1728

; <label>:1728                                    ; preds = %1713
  %1729 = extractvalue %dx.types.ResRet.f32 %1719, 2
  %1730 = select i1 %1725, float %1729, float %1720
  %1731 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1732 = select i1 %1725, float %1731, float %1720
  %1733 = add i32 %35, 112
  %1734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1733, i32 undef)  ; BufferLoad(srv,index,wot)
  %1735 = extractvalue %dx.types.ResRet.i32 %1734, 0
  %1736 = lshr i32 %1735, 16
  %1737 = and i32 %1736, 255
  %1738 = uitofp i32 %1737 to float
  %1739 = fmul fast float %1738, 0x3F80101020000000
  %1740 = fmul fast float %1739, %1732
  %1741 = fmul fast float %1739, %1720
  %1742 = fmul fast float %1739, %1730
  br label %1743

; <label>:1743                                    ; preds = %1728, %1713
  %1744 = phi float [ %1740, %1728 ], [ 0.000000e+00, %1713 ]
  %1745 = phi float [ %1741, %1728 ], [ 0.000000e+00, %1713 ]
  %1746 = phi float [ %1742, %1728 ], [ 0.000000e+00, %1713 ]
  %1747 = and i32 %1723, 2048
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %1757, label %1749

; <label>:1749                                    ; preds = %1743
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = shl i32 %1751, 4
  %1753 = and i32 %1752, 32752
  %1754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1753)  ; LegacyF16ToF32(value)
  %1755 = fmul fast float %1754, %1721
  %1756 = call float @dx.op.binary.f32(i32 35, float %1755, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1757

; <label>:1757                                    ; preds = %1749, %1743, %1685
  %1758 = phi float [ %1744, %1749 ], [ %1744, %1743 ], [ 0.000000e+00, %1685 ]
  %1759 = phi float [ %1745, %1749 ], [ %1745, %1743 ], [ 0.000000e+00, %1685 ]
  %1760 = phi float [ %1746, %1749 ], [ %1746, %1743 ], [ 0.000000e+00, %1685 ]
  %1761 = phi float [ %1756, %1749 ], [ 0x3F70101020000000, %1743 ], [ 0x3F70101020000000, %1685 ]
  %1762 = add i32 %35, 112
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = and i32 %1764, 255
  %1766 = uitofp i32 %1765 to float
  %1767 = lshr i32 %1764, 8
  %1768 = and i32 %1767, 255
  %1769 = uitofp i32 %1768 to float
  %1770 = call float @dx.op.dot3.f32(i32 55, float %1520, float %1521, float %1522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1771 = fmul fast float %1769, %1770
  %1772 = fadd fast float %1771, %1766
  %1773 = fmul fast float %1772, 0x3F70101020000000
  %1774 = call float @dx.op.unary.f32(i32 7, float %1773)  ; Saturate(value)
  br i1 %1004, label %1775, label %1810

; <label>:1775                                    ; preds = %1757
  %1776 = fmul fast float %1761, 2.000000e+00
  %1777 = fcmp fast olt float %1706, 1.270000e+02
  %1778 = fcmp fast olt float %1707, 1.270000e+02
  %1779 = fcmp fast olt float %1708, 1.270000e+02
  %1780 = fmul fast float %1706, 0xBFF7154760000000
  %1781 = fmul fast float %1780, %1776
  %1782 = fmul fast float %1707, 0xBFF7154760000000
  %1783 = fmul fast float %1782, %1776
  %1784 = fmul fast float %1708, 0xBFF7154760000000
  %1785 = fmul fast float %1784, %1776
  %1786 = call float @dx.op.unary.f32(i32 21, float %1781)  ; Exp(value)
  %1787 = call float @dx.op.unary.f32(i32 21, float %1783)  ; Exp(value)
  %1788 = call float @dx.op.unary.f32(i32 21, float %1785)  ; Exp(value)
  %1789 = call float @dx.op.unary.f32(i32 7, float %1786)  ; Saturate(value)
  %1790 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1791 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1792 = fadd fast float %1789, -1.000000e+00
  %1793 = select i1 %1777, float %1792, float -1.000000e+00
  %1794 = fadd fast float %1790, -1.000000e+00
  %1795 = select i1 %1778, float %1794, float -1.000000e+00
  %1796 = fadd fast float %1791, -1.000000e+00
  %1797 = select i1 %1779, float %1796, float -1.000000e+00
  %1798 = fmul fast float %1793, %1300
  %1799 = fmul fast float %1795, %1300
  %1800 = fmul fast float %1797, %1300
  %1801 = fadd fast float %1798, 1.000000e+00
  %1802 = fadd fast float %1799, 1.000000e+00
  %1803 = fadd fast float %1800, 1.000000e+00
  %1804 = fmul fast float %1801, %985
  %1805 = fmul fast float %1802, %986
  %1806 = fmul fast float %1803, %987
  %1807 = fmul fast float %1801, %994
  %1808 = fmul fast float %1802, %995
  %1809 = fmul fast float %1803, %996
  br label %1810

; <label>:1810                                    ; preds = %1775, %1757
  %1811 = phi float [ %1804, %1775 ], [ %985, %1757 ]
  %1812 = phi float [ %1805, %1775 ], [ %986, %1757 ]
  %1813 = phi float [ %1806, %1775 ], [ %987, %1757 ]
  %1814 = phi float [ %1807, %1775 ], [ %994, %1757 ]
  %1815 = phi float [ %1808, %1775 ], [ %995, %1757 ]
  %1816 = phi float [ %1809, %1775 ], [ %996, %1757 ]
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = and i32 %1818, 3
  %1820 = icmp eq i32 %1819, 3
  br i1 %1820, label %1899, label %1821

; <label>:1821                                    ; preds = %1810
  %1822 = and i32 %1818, 16
  %1823 = icmp ne i32 %1822, 0
  %1824 = select i1 %1823, float %1300, float 0.000000e+00
  %1825 = icmp eq i32 %1819, 0
  br i1 %1825, label %1826, label %1854

; <label>:1826                                    ; preds = %1821
  %1827 = and i32 %1818, 64
  %1828 = icmp ne i32 %1827, 0
  %1829 = select i1 %1828, float %1300, float 0.000000e+00
  %1830 = fsub fast float %1520, %1811
  %1831 = fsub fast float %1521, %1812
  %1832 = fsub fast float %1522, %1813
  %1833 = fmul fast float %1824, %1830
  %1834 = fmul fast float %1824, %1831
  %1835 = fmul fast float %1824, %1832
  %1836 = fadd fast float %1833, %1811
  %1837 = fadd fast float %1834, %1812
  %1838 = fadd fast float %1835, %1813
  %1839 = fsub fast float %1506, %997
  %1840 = fmul fast float %1824, %1839
  %1841 = fadd fast float %1840, %997
  %1842 = fsub fast float %1648, %1814
  %1843 = fsub fast float %1649, %1815
  %1844 = fsub fast float %1650, %1816
  %1845 = fmul fast float %1829, %1842
  %1846 = fmul fast float %1829, %1843
  %1847 = fmul fast float %1829, %1844
  %1848 = fadd fast float %1845, %1814
  %1849 = fadd fast float %1846, %1815
  %1850 = fadd fast float %1847, %1816
  %1851 = fsub fast float %1774, %1002
  %1852 = fmul fast float %1824, %1851
  %1853 = fadd fast float %1852, %1002
  br label %1899

; <label>:1854                                    ; preds = %1821
  %1855 = icmp eq i32 %1819, 1
  br i1 %1855, label %1856, label %1869

; <label>:1856                                    ; preds = %1854
  %1857 = fadd fast float %1520, -1.000000e+00
  %1858 = fadd fast float %1521, -1.000000e+00
  %1859 = fadd fast float %1522, -1.000000e+00
  %1860 = fmul fast float %1824, %1857
  %1861 = fmul fast float %1824, %1858
  %1862 = fmul fast float %1824, %1859
  %1863 = fadd fast float %1860, 1.000000e+00
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fmul fast float %1863, %1811
  %1867 = fmul fast float %1864, %1812
  %1868 = fmul fast float %1865, %1813
  br label %1899

; <label>:1869                                    ; preds = %1854
  %1870 = icmp eq i32 %1819, 2
  br i1 %1870, label %1871, label %1899

; <label>:1871                                    ; preds = %1869
  %1872 = call float @dx.op.unary.f32(i32 24, float %1520)  ; Sqrt(value)
  %1873 = call float @dx.op.unary.f32(i32 24, float %1521)  ; Sqrt(value)
  %1874 = call float @dx.op.unary.f32(i32 24, float %1522)  ; Sqrt(value)
  %1875 = fadd fast float %1872, -5.000000e-01
  %1876 = fadd fast float %1873, -5.000000e-01
  %1877 = fadd fast float %1874, -5.000000e-01
  %1878 = fmul fast float %1875, %1824
  %1879 = fmul fast float %1876, %1824
  %1880 = fmul fast float %1877, %1824
  %1881 = fadd fast float %1878, 5.000000e-01
  %1882 = fadd fast float %1879, 5.000000e-01
  %1883 = fadd fast float %1880, 5.000000e-01
  %1884 = fmul fast float %1881, 2.000000e+00
  %1885 = fsub fast float 1.000000e+00, %1884
  %1886 = fmul fast float %1885, %1811
  %1887 = fadd fast float %1886, %1884
  %1888 = fmul fast float %1887, %1811
  %1889 = fmul fast float %1882, 2.000000e+00
  %1890 = fsub fast float 1.000000e+00, %1889
  %1891 = fmul fast float %1890, %1812
  %1892 = fadd fast float %1891, %1889
  %1893 = fmul fast float %1892, %1812
  %1894 = fmul fast float %1883, 2.000000e+00
  %1895 = fsub fast float 1.000000e+00, %1894
  %1896 = fmul fast float %1895, %1813
  %1897 = fadd fast float %1896, %1894
  %1898 = fmul fast float %1897, %1813
  br label %1899

; <label>:1899                                    ; preds = %1871, %1869, %1856, %1826, %1810
  %1900 = phi float [ %1811, %1810 ], [ %1888, %1871 ], [ %1811, %1869 ], [ %1866, %1856 ], [ %1836, %1826 ]
  %1901 = phi float [ %1812, %1810 ], [ %1893, %1871 ], [ %1812, %1869 ], [ %1867, %1856 ], [ %1837, %1826 ]
  %1902 = phi float [ %1813, %1810 ], [ %1898, %1871 ], [ %1813, %1869 ], [ %1868, %1856 ], [ %1838, %1826 ]
  %1903 = phi float [ %1814, %1810 ], [ %1814, %1871 ], [ %1814, %1869 ], [ %1814, %1856 ], [ %1848, %1826 ]
  %1904 = phi float [ %1815, %1810 ], [ %1815, %1871 ], [ %1815, %1869 ], [ %1815, %1856 ], [ %1849, %1826 ]
  %1905 = phi float [ %1816, %1810 ], [ %1816, %1871 ], [ %1816, %1869 ], [ %1816, %1856 ], [ %1850, %1826 ]
  %1906 = phi float [ %997, %1810 ], [ %997, %1871 ], [ %997, %1869 ], [ %997, %1856 ], [ %1841, %1826 ]
  %1907 = phi float [ %1002, %1810 ], [ %1002, %1871 ], [ %1002, %1869 ], [ %1002, %1856 ], [ %1853, %1826 ]
  %1908 = and i32 %1818, 12
  %1909 = icmp eq i32 %1908, 12
  br i1 %1909, label %2040, label %1910

; <label>:1910                                    ; preds = %1899
  %1911 = and i32 %1818, 2097184
  %1912 = icmp eq i32 %1911, 2097184
  %1913 = select i1 %1912, float %1300, float 0.000000e+00
  %1914 = and i32 %1818, 4194336
  %1915 = icmp eq i32 %1914, 4194336
  %1916 = select i1 %1915, float %1300, float 0.000000e+00
  %1917 = and i32 %1818, 8388640
  %1918 = icmp eq i32 %1917, 8388640
  %1919 = select i1 %1918, float %1300, float 0.000000e+00
  %1920 = and i32 %1818, 1024
  %1921 = icmp ne i32 %1920, 0
  %1922 = select i1 %1921, float %1300, float 0.000000e+00
  %1923 = and i32 %1818, 2048
  %1924 = icmp ne i32 %1923, 0
  %1925 = select i1 %1924, float %1300, float 0.000000e+00
  %1926 = and i32 %1818, 8192
  %1927 = icmp ne i32 %1926, 0
  %1928 = select i1 %1927, float %1300, float 0.000000e+00
  %1929 = icmp eq i32 %1908, 0
  br i1 %1929, label %1930, label %1964

; <label>:1930                                    ; preds = %1910
  %1931 = fsub fast float %1601, %983
  %1932 = fsub fast float %1602, %984
  %1933 = fmul fast float %1913, %1931
  %1934 = fmul fast float %1913, %1932
  %1935 = fadd fast float %1933, %983
  %1936 = fadd fast float %1934, %984
  %1937 = fsub fast float %1603, %1000
  %1938 = fmul fast float %1916, %1937
  %1939 = fadd fast float %1938, %1000
  %1940 = fsub fast float %1600, %999
  %1941 = fmul fast float %1919, %1940
  %1942 = fadd fast float %1941, %999
  %1943 = fsub fast float %1706, %988
  %1944 = fsub fast float %1707, %989
  %1945 = fsub fast float %1708, %990
  %1946 = fmul fast float %1922, %1943
  %1947 = fmul fast float %1922, %1944
  %1948 = fmul fast float %1922, %1945
  %1949 = fadd fast float %1946, %988
  %1950 = fadd fast float %1947, %989
  %1951 = fadd fast float %1948, %990
  %1952 = fsub fast float %1761, %1001
  %1953 = fmul fast float %1925, %1952
  %1954 = fadd fast float %1953, %1001
  %1955 = fsub fast float %1758, %991
  %1956 = fsub fast float %1759, %992
  %1957 = fsub fast float %1760, %993
  %1958 = fmul fast float %1928, %1955
  %1959 = fmul fast float %1928, %1956
  %1960 = fmul fast float %1928, %1957
  %1961 = fadd fast float %1958, %991
  %1962 = fadd fast float %1959, %992
  %1963 = fadd fast float %1960, %993
  br label %2040

; <label>:1964                                    ; preds = %1910
  %1965 = icmp eq i32 %1908, 4
  br i1 %1965, label %1966, label %2012

; <label>:1966                                    ; preds = %1964
  %1967 = fmul fast float %1913, %1601
  %1968 = fmul fast float %1913, %1602
  %1969 = fadd fast float %1967, %983
  %1970 = fadd fast float %1968, %984
  %1971 = call float @dx.op.binary.f32(i32 36, float %1000, float %1603)  ; FMin(a,b)
  %1972 = fsub fast float %1971, %1000
  %1973 = fmul fast float %1972, %1916
  %1974 = fadd fast float %1973, %1000
  %1975 = fadd fast float %1600, %999
  %1976 = fmul fast float %1975, 0x3FF337FAE0000000
  %1977 = fmul fast float %999, %999
  %1978 = fmul fast float %1600, %1600
  %1979 = fadd fast float %1978, %1977
  %1980 = fmul fast float %1979, 0x3FE5152B00000000
  %1981 = fmul fast float %999, 0xBFCC1F85E0000000
  %1982 = fmul fast float %1981, %1600
  %1983 = fadd fast float %1982, 0xBFE1363700000000
  %1984 = fadd fast float %1983, %1976
  %1985 = fsub fast float %1984, %1980
  %1986 = fmul fast float %1975, 0x3FBA6F0D00000000
  %1987 = fmul fast float %1979, 0x3FD0432880000000
  %1988 = fmul fast float %999, 0xBFEF110800000000
  %1989 = fmul fast float %1988, %1600
  %1990 = fadd fast float %1989, 1.000000e+00
  %1991 = fsub fast float %1990, %1986
  %1992 = fadd fast float %1991, %1987
  %1993 = fdiv fast float %1985, %1992
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fsub fast float %1994, %999
  %1996 = fmul fast float %1995, %1919
  %1997 = fadd fast float %1996, %999
  %1998 = fmul fast float %1922, %1706
  %1999 = fmul fast float %1922, %1707
  %2000 = fmul fast float %1922, %1708
  %2001 = fadd fast float %1998, %988
  %2002 = fadd fast float %1999, %989
  %2003 = fadd fast float %2000, %990
  %2004 = fmul fast float %1925, %1761
  %2005 = fadd fast float %2004, %1001
  %2006 = fmul fast float %1928, %1758
  %2007 = fmul fast float %1928, %1759
  %2008 = fmul fast float %1928, %1760
  %2009 = fadd fast float %2006, %991
  %2010 = fadd fast float %2007, %992
  %2011 = fadd fast float %2008, %993
  br label %2040

; <label>:2012                                    ; preds = %1964
  %2013 = icmp eq i32 %1908, 8
  br i1 %2013, label %2014, label %2040

; <label>:2014                                    ; preds = %2012
  %2015 = fmul fast float %1913, %1601
  %2016 = fmul fast float %1913, %1602
  %2017 = fadd fast float %2015, %983
  %2018 = fadd fast float %2016, %984
  %2019 = call float @dx.op.binary.f32(i32 36, float %1000, float %1603)  ; FMin(a,b)
  %2020 = fsub fast float %2019, %1000
  %2021 = fmul fast float %2020, %1916
  %2022 = fadd fast float %2021, %1000
  %2023 = fsub fast float %1600, %999
  %2024 = fmul fast float %1919, %2023
  %2025 = fadd fast float %2024, %999
  %2026 = fmul fast float %1922, %1706
  %2027 = fmul fast float %1922, %1707
  %2028 = fmul fast float %1922, %1708
  %2029 = fadd fast float %2026, %988
  %2030 = fadd fast float %2027, %989
  %2031 = fadd fast float %2028, %990
  %2032 = fmul fast float %1925, %1761
  %2033 = fadd fast float %2032, %1001
  %2034 = fmul fast float %1928, %1758
  %2035 = fmul fast float %1928, %1759
  %2036 = fmul fast float %1928, %1760
  %2037 = fadd fast float %2034, %991
  %2038 = fadd fast float %2035, %992
  %2039 = fadd fast float %2036, %993
  br label %2040

; <label>:2040                                    ; preds = %2014, %2012, %1966, %1930, %1899, %1299, %1003, %982
  %2041 = phi float [ %983, %1899 ], [ %983, %1299 ], [ %983, %982 ], [ %2017, %2014 ], [ %983, %2012 ], [ %1969, %1966 ], [ %1935, %1930 ], [ %983, %1003 ]
  %2042 = phi float [ %984, %1899 ], [ %984, %1299 ], [ %984, %982 ], [ %2018, %2014 ], [ %984, %2012 ], [ %1970, %1966 ], [ %1936, %1930 ], [ %984, %1003 ]
  %2043 = phi float [ %1900, %1899 ], [ %985, %1299 ], [ %985, %982 ], [ %1900, %2014 ], [ %1900, %2012 ], [ %1900, %1966 ], [ %1900, %1930 ], [ %985, %1003 ]
  %2044 = phi float [ %1901, %1899 ], [ %986, %1299 ], [ %986, %982 ], [ %1901, %2014 ], [ %1901, %2012 ], [ %1901, %1966 ], [ %1901, %1930 ], [ %986, %1003 ]
  %2045 = phi float [ %1902, %1899 ], [ %987, %1299 ], [ %987, %982 ], [ %1902, %2014 ], [ %1902, %2012 ], [ %1902, %1966 ], [ %1902, %1930 ], [ %987, %1003 ]
  %2046 = phi float [ %988, %1899 ], [ %988, %1299 ], [ %988, %982 ], [ %2029, %2014 ], [ %988, %2012 ], [ %2001, %1966 ], [ %1949, %1930 ], [ %988, %1003 ]
  %2047 = phi float [ %989, %1899 ], [ %989, %1299 ], [ %989, %982 ], [ %2030, %2014 ], [ %989, %2012 ], [ %2002, %1966 ], [ %1950, %1930 ], [ %989, %1003 ]
  %2048 = phi float [ %990, %1899 ], [ %990, %1299 ], [ %990, %982 ], [ %2031, %2014 ], [ %990, %2012 ], [ %2003, %1966 ], [ %1951, %1930 ], [ %990, %1003 ]
  %2049 = phi float [ %991, %1899 ], [ %991, %1299 ], [ %991, %982 ], [ %2037, %2014 ], [ %991, %2012 ], [ %2009, %1966 ], [ %1961, %1930 ], [ %991, %1003 ]
  %2050 = phi float [ %992, %1899 ], [ %992, %1299 ], [ %992, %982 ], [ %2038, %2014 ], [ %992, %2012 ], [ %2010, %1966 ], [ %1962, %1930 ], [ %992, %1003 ]
  %2051 = phi float [ %993, %1899 ], [ %993, %1299 ], [ %993, %982 ], [ %2039, %2014 ], [ %993, %2012 ], [ %2011, %1966 ], [ %1963, %1930 ], [ %993, %1003 ]
  %2052 = phi float [ %1903, %1899 ], [ %994, %1299 ], [ %994, %982 ], [ %1903, %2014 ], [ %1903, %2012 ], [ %1903, %1966 ], [ %1903, %1930 ], [ %994, %1003 ]
  %2053 = phi float [ %1904, %1899 ], [ %995, %1299 ], [ %995, %982 ], [ %1904, %2014 ], [ %1904, %2012 ], [ %1904, %1966 ], [ %1904, %1930 ], [ %995, %1003 ]
  %2054 = phi float [ %1905, %1899 ], [ %996, %1299 ], [ %996, %982 ], [ %1905, %2014 ], [ %1905, %2012 ], [ %1905, %1966 ], [ %1905, %1930 ], [ %996, %1003 ]
  %2055 = phi float [ %1906, %1899 ], [ %997, %1299 ], [ %997, %982 ], [ %1906, %2014 ], [ %1906, %2012 ], [ %1906, %1966 ], [ %1906, %1930 ], [ %997, %1003 ]
  %2056 = phi float [ %999, %1899 ], [ %999, %1299 ], [ %999, %982 ], [ %2025, %2014 ], [ %999, %2012 ], [ %1997, %1966 ], [ %1942, %1930 ], [ %999, %1003 ]
  %2057 = phi float [ %1000, %1899 ], [ %1000, %1299 ], [ %1000, %982 ], [ %2022, %2014 ], [ %1000, %2012 ], [ %1974, %1966 ], [ %1939, %1930 ], [ %1000, %1003 ]
  %2058 = phi float [ %1001, %1899 ], [ %1001, %1299 ], [ %1001, %982 ], [ %2033, %2014 ], [ %1001, %2012 ], [ %2005, %1966 ], [ %1954, %1930 ], [ %1001, %1003 ]
  %2059 = phi float [ %1907, %1899 ], [ %1002, %1299 ], [ %1002, %982 ], [ %1907, %2014 ], [ %1907, %2012 ], [ %1907, %1966 ], [ %1907, %1930 ], [ %1002, %1003 ]
  br i1 %351, label %3097, label %2060

; <label>:2060                                    ; preds = %2040
  %2061 = icmp ult i32 %404, 3
  %2062 = add i32 %35, 56
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = add i32 %35, 60
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = or i32 %2067, %2064
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %3097, label %2070

; <label>:2070                                    ; preds = %2060
  %2071 = and i32 %2064, 262144
  %2072 = icmp ne i32 %2071, 0
  %2073 = select i1 %2072, float %38, float 1.000000e+00
  %2074 = select i1 %2072, float %39, float 0.000000e+00
  %2075 = select i1 %2072, float %40, float 0.000000e+00
  %2076 = select i1 %2072, float %41, float 1.000000e+00
  %2077 = select i1 %2072, float %42, float %63
  %2078 = select i1 %2072, float %43, float %64
  %2079 = add i32 %35, 316
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = lshr i32 %2081, 16
  %2083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2082)  ; LegacyF16ToF32(value)
  %2084 = fmul fast float %2083, 0x3F50624DE0000000
  %2085 = add i32 %35, 120
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = lshr i32 %2087, 16
  %2089 = and i32 %2088, 255
  %2090 = lshr i32 %2087, 24
  %2091 = add i32 %35, 324
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 65535
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = lshr i32 %2093, 16
  %2097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2096)  ; LegacyF16ToF32(value)
  %2098 = add i32 %35, 64
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = lshr i32 %2100, 22
  %2102 = shl nuw nsw i32 %2101, 5
  %2103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2102)  ; LegacyF16ToF32(value)
  %2104 = shl i32 %2100, 4
  %2105 = and i32 %2104, 32752
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = lshr i32 %2100, 7
  %2108 = and i32 %2107, 32752
  %2109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2108)  ; LegacyF16ToF32(value)
  %2110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2111 = extractvalue %dx.types.CBufRet.f32 %2110, 3
  %2112 = fmul fast float %2111, 1.000000e+03
  %2113 = fmul fast float %301, %2112
  %2114 = call float @dx.op.unary.f32(i32 22, float %2113)  ; Frc(value)
  %2115 = fadd fast float %2114, %291
  %2116 = fmul fast float %302, %2112
  %2117 = call float @dx.op.unary.f32(i32 22, float %2116)  ; Frc(value)
  %2118 = fadd fast float %2117, %293
  %2119 = fmul fast float %2084, %2112
  %2120 = call float @dx.op.unary.f32(i32 22, float %2119)  ; Frc(value)
  %2121 = fmul fast float %2120, 0x401921FB60000000
  %2122 = fadd fast float %2121, %2103
  %2123 = call float @dx.op.unary.f32(i32 13, float %2122)  ; Sin(value)
  %2124 = call float @dx.op.unary.f32(i32 12, float %2122)  ; Cos(value)
  %2125 = fsub fast float -0.000000e+00, %2123
  %2126 = fadd fast float %2077, -5.000000e-01
  %2127 = fadd fast float %2078, -5.000000e-01
  %2128 = fmul fast float %2095, %2126
  %2129 = fmul fast float %2097, %2127
  %2130 = fadd fast float %2128, 5.000000e-01
  %2131 = fadd fast float %2129, 5.000000e-01
  %2132 = fmul fast float %2106, %2130
  %2133 = fmul fast float %2109, %2131
  %2134 = fmul fast float %2124, %2132
  %2135 = call float @dx.op.tertiary.f32(i32 46, float %2125, float %2133, float %2134)  ; FMad(a,b,c)
  %2136 = fmul fast float %2123, %2132
  %2137 = call float @dx.op.tertiary.f32(i32 46, float %2124, float %2133, float %2136)  ; FMad(a,b,c)
  %2138 = fadd fast float %2115, %2135
  %2139 = fadd fast float %2118, %2137
  %2140 = icmp ugt i32 %2089, 1
  %2141 = icmp ugt i32 %2087, 33554431
  %2142 = or i1 %2141, %2140
  br i1 %2142, label %2143, label %2168

; <label>:2143                                    ; preds = %2070
  %2144 = add i32 %35, 260
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = lshr i32 %2146, 16
  %2148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2147)  ; LegacyF16ToF32(value)
  %2149 = fmul fast float %2111, %2148
  %2150 = call float @dx.op.unary.f32(i32 22, float %2149)  ; Frc(value)
  %2151 = mul nuw nsw i32 %2089, %2090
  %2152 = uitofp i32 %2151 to float
  %2153 = fmul fast float %2150, %2152
  %2154 = call float @dx.op.unary.f32(i32 27, float %2153)  ; Round_ni(value)
  %2155 = fptoui float %2154 to i32
  %2156 = urem i32 %2155, %2089
  %2157 = udiv i32 %2155, %2090
  %2158 = call float @dx.op.unary.f32(i32 22, float %2138)  ; Frc(value)
  %2159 = call float @dx.op.unary.f32(i32 22, float %2139)  ; Frc(value)
  %2160 = uitofp i32 %2156 to float
  %2161 = uitofp i32 %2157 to float
  %2162 = fadd fast float %2158, %2160
  %2163 = fadd fast float %2159, %2161
  %2164 = uitofp i32 %2089 to float
  %2165 = uitofp i32 %2090 to float
  %2166 = fdiv fast float %2162, %2164
  %2167 = fdiv fast float %2163, %2165
  br label %2168

; <label>:2168                                    ; preds = %2143, %2070
  %2169 = phi float [ %2166, %2143 ], [ %2138, %2070 ]
  %2170 = phi float [ %2167, %2143 ], [ %2139, %2070 ]
  %2171 = and i32 %2064, 16777216
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2282, label %2173

; <label>:2173                                    ; preds = %2168
  %2174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2175 = extractvalue %dx.types.CBufRet.f32 %2174, 0
  %2176 = extractvalue %dx.types.CBufRet.f32 %2174, 1
  %2177 = extractvalue %dx.types.CBufRet.f32 %2174, 2
  %2178 = fadd fast float %2175, %134
  %2179 = fadd fast float %2176, %135
  %2180 = fadd fast float %2177, %136
  %2181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2182 = extractvalue %dx.types.CBufRet.f32 %2181, 0
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = icmp eq i32 %36, 65535
  br i1 %2184, label %2279, label %2185

; <label>:2185                                    ; preds = %2173
  %2186 = lshr i32 %36, 1
  %2187 = shl i32 %2186, 2
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %36, 1
  %2191 = icmp ne i32 %2190, 0
  %2192 = lshr i32 %2189, 16
  %2193 = and i32 %2189, 65535
  %2194 = select i1 %2191, i32 %2192, i32 %2193
  %2195 = icmp eq i32 %2194, 65535
  br i1 %2195, label %2275, label %2196

; <label>:2196                                    ; preds = %2185
  %2197 = mul nuw nsw i32 %2194, 40
  %2198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2197, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = add nuw nsw i32 %2197, 12
  %2203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.ResRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.ResRet.f32 %2203, 2
  %2207 = add nuw nsw i32 %2197, 24
  %2208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.ResRet.f32 %2208, 1
  %2211 = extractvalue %dx.types.ResRet.f32 %2208, 2
  %2212 = add nuw nsw i32 %2197, 36
  %2213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  %2215 = fsub fast float %2178, %2199
  %2216 = fsub fast float %2179, %2200
  %2217 = fsub fast float %2180, %2201
  %2218 = fmul fast float %2214, %2215
  %2219 = fmul fast float %2214, %2216
  %2220 = fmul fast float %2214, %2217
  %2221 = call float @dx.op.unary.f32(i32 27, float %2218)  ; Round_ni(value)
  %2222 = call float @dx.op.unary.f32(i32 27, float %2219)  ; Round_ni(value)
  %2223 = call float @dx.op.unary.f32(i32 27, float %2220)  ; Round_ni(value)
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = fadd fast float %2222, 5.000000e-01
  %2226 = fadd fast float %2223, 5.000000e-01
  %2227 = fmul fast float %2224, %2204
  %2228 = fmul fast float %2225, %2205
  %2229 = fmul fast float %2226, %2206
  %2230 = shl i32 %36, 2
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = add i32 %2232, 0
  %2234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2235 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2236 = call float @dx.op.unary.f32(i32 22, float %2228)  ; Frc(value)
  %2237 = call float @dx.op.unary.f32(i32 22, float %2229)  ; Frc(value)
  %2238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2234, %dx.types.Handle %30, float %2235, float %2236, float %2237, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.ResRet.f32 %2238, 1
  %2241 = extractvalue %dx.types.ResRet.f32 %2238, 2
  %2242 = fmul fast float %2239, 1.023000e+03
  %2243 = fmul fast float %2240, 1.023000e+03
  %2244 = fmul fast float %2241, 1.023000e+03
  %2245 = fadd fast float %2242, 5.000000e-01
  %2246 = fadd fast float %2243, 5.000000e-01
  %2247 = fadd fast float %2244, 5.000000e-01
  %2248 = call float @dx.op.unary.f32(i32 27, float %2245)  ; Round_ni(value)
  %2249 = call float @dx.op.unary.f32(i32 27, float %2246)  ; Round_ni(value)
  %2250 = call float @dx.op.unary.f32(i32 27, float %2247)  ; Round_ni(value)
  %2251 = fsub fast float %2218, %2221
  %2252 = fsub fast float %2219, %2222
  %2253 = fsub fast float %2220, %2223
  %2254 = fmul fast float %2251, 7.500000e-01
  %2255 = fmul fast float %2252, 7.500000e-01
  %2256 = fmul fast float %2253, 7.500000e-01
  %2257 = fadd fast float %2221, 1.250000e-01
  %2258 = fadd fast float %2257, %2254
  %2259 = fadd fast float %2258, %2248
  %2260 = fadd fast float %2222, 1.250000e-01
  %2261 = fadd fast float %2260, %2255
  %2262 = fadd fast float %2261, %2249
  %2263 = fadd fast float %2223, 1.250000e-01
  %2264 = fadd fast float %2263, %2256
  %2265 = fadd fast float %2264, %2250
  %2266 = fmul fast float %2259, %2209
  %2267 = fmul fast float %2262, %2210
  %2268 = fmul fast float %2265, %2211
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = add i32 %2270, 0
  %2272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2272, %dx.types.Handle %28, float %2266, float %2267, float %2268, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2274 = extractvalue %dx.types.ResRet.f32 %2273, 0
  br label %2275

; <label>:2275                                    ; preds = %2196, %2185
  %2276 = phi float [ %2274, %2196 ], [ -1.000000e+00, %2185 ]
  %2277 = fadd fast float %2276, %2183
  %2278 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  br label %2279

; <label>:2279                                    ; preds = %2275, %2173
  %2280 = phi float [ %2278, %2275 ], [ %2183, %2173 ]
  %2281 = fmul fast float %2280, %400
  br label %2282

; <label>:2282                                    ; preds = %2279, %2168
  %2283 = phi float [ %2281, %2279 ], [ %400, %2168 ]
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 256
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2334, label %2288

; <label>:2288                                    ; preds = %2282
  %2289 = add i32 %35, 512
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = add i32 %2291, 0
  %2293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2293, %dx.types.Handle %72, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = add i32 %35, 132
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = shl i32 %2298, 4
  %2300 = and i32 %2299, 32752
  %2301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2300)  ; LegacyF16ToF32(value)
  %2302 = lshr i32 %2298, 7
  %2303 = and i32 %2302, 32752
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = fsub fast float 1.000000e+00, %2283
  %2306 = call float @dx.op.binary.f32(i32 35, float %2305, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2307 = bitcast float %2283 to i32
  %2308 = sitofp i32 %2307 to float
  %2309 = fadd fast float %2308, 0xC1CFBF8940000000
  %2310 = fmul fast float %2304, %2309
  %2311 = fadd fast float %2310, 0x41CFBF8940000000
  %2312 = fptosi float %2311 to i32
  %2313 = bitcast i32 %2312 to float
  %2314 = bitcast float %2306 to i32
  %2315 = sitofp i32 %2314 to float
  %2316 = fadd fast float %2315, 0xC1CFBF8940000000
  %2317 = fmul fast float %2316, %2304
  %2318 = fadd fast float %2317, 0x41CFBF8940000000
  %2319 = fptosi float %2318 to i32
  %2320 = bitcast i32 %2319 to float
  %2321 = fmul fast float %2313, %2301
  %2322 = fmul fast float %2320, %2301
  %2323 = fsub fast float %2306, %2321
  %2324 = fadd fast float %2322, %2306
  %2325 = call float @dx.op.unary.f32(i32 7, float %2323)  ; Saturate(value)
  %2326 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2327 = fsub fast float %2295, %2325
  %2328 = fsub fast float %2326, %2325
  %2329 = bitcast float %2328 to i32
  %2330 = sub nsw i32 2129859010, %2329
  %2331 = bitcast i32 %2330 to float
  %2332 = fmul fast float %2331, %2327
  %2333 = call float @dx.op.unary.f32(i32 7, float %2332)  ; Saturate(value)
  br label %2334

; <label>:2334                                    ; preds = %2288, %2282
  %2335 = phi float [ %2333, %2288 ], [ %2283, %2282 ]
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 128
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2356, label %2340

; <label>:2340                                    ; preds = %2334
  %2341 = add i32 %35, 496
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = add i32 %2343, 0
  %2345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2345, %dx.types.Handle %72, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2347 = extractvalue %dx.types.ResRet.f32 %2346, 0
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 524288
  %2351 = icmp ne i32 %2350, 0
  %2352 = fcmp fast ogt float %2347, 0x3FE0101020000000
  %2353 = select i1 %2352, float 1.000000e+00, float 0.000000e+00
  %2354 = select i1 %2351, float %2353, float %2347
  %2355 = fmul fast float %2354, %2335
  br label %2356

; <label>:2356                                    ; preds = %2340, %2334
  %2357 = phi float [ %2355, %2340 ], [ %2335, %2334 ]
  %2358 = fcmp fast ult float %2357, 0x3F70101020000000
  br i1 %2358, label %3097, label %2359

; <label>:2359                                    ; preds = %2356
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = and i32 %2361, 16
  %2363 = icmp eq i32 %2362, 0
  br i1 %2363, label %2562, label %2364

; <label>:2364                                    ; preds = %2359
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2085, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = add i32 %35, 448
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = add i32 %2369, 0
  %2371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2370, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2372 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2371, %dx.types.Handle %71, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.ResRet.f32 %2372, 2
  %2376 = extractvalue %dx.types.ResRet.f32 %2372, 3
  %2377 = and i32 %2366, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = lshr i32 %2366, 8
  %2380 = and i32 %2379, 255
  %2381 = uitofp i32 %2380 to float
  %2382 = fmul fast float %2376, %2378
  %2383 = fadd fast float %2382, %2381
  %2384 = fmul fast float %2383, 0x3F70101000000000
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 512
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2397, label %2389

; <label>:2389                                    ; preds = %2364
  %2390 = add i32 %35, 528
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = add i32 %2392, 0
  %2394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2394, %dx.types.Handle %72, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  br label %2397

; <label>:2397                                    ; preds = %2389, %2364
  %2398 = phi float [ %2396, %2389 ], [ 1.000000e+00, %2364 ]
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 33554432
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2509, label %2403

; <label>:2403                                    ; preds = %2397
  %2404 = add i32 %35, 256
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 65535
  %2408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2407)  ; LegacyF16ToF32(value)
  %2409 = lshr i32 %2406, 16
  %2410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2409)  ; LegacyF16ToF32(value)
  %2411 = add i32 %35, 260
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 65535
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = lshr i32 %2417, 24
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = and i32 %2417, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2422, 0x3F70101020000000
  %2424 = lshr i32 %2417, 8
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F70101020000000
  %2428 = lshr i32 %2417, 16
  %2429 = and i32 %2428, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = fmul fast float %2430, 0x3F70101020000000
  %2432 = add i32 %35, 252
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = lshr i32 %2434, 24
  %2436 = uitofp i32 %2435 to float
  %2437 = fmul fast float %2436, 0x3F70101020000000
  %2438 = and i32 %2434, 255
  %2439 = uitofp i32 %2438 to float
  %2440 = fmul fast float %2439, 0x3F70101020000000
  %2441 = lshr i32 %2434, 8
  %2442 = and i32 %2441, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = fmul fast float %2443, 0x3F70101020000000
  %2445 = lshr i32 %2434, 16
  %2446 = and i32 %2445, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = fmul fast float %2447, 0x3F70101020000000
  %2449 = bitcast float %2373 to i32
  %2450 = ashr i32 %2449, 1
  %2451 = sub nsw i32 1597463174, %2450
  %2452 = bitcast i32 %2451 to float
  %2453 = fmul fast float %2373, 5.000000e-01
  %2454 = fmul fast float %2452, %2452
  %2455 = fmul fast float %2454, %2453
  %2456 = fsub fast float 1.500000e+00, %2455
  %2457 = fmul fast float %2452, %2373
  %2458 = fmul fast float %2457, %2456
  %2459 = bitcast float %2374 to i32
  %2460 = ashr i32 %2459, 1
  %2461 = sub nsw i32 1597463174, %2460
  %2462 = bitcast i32 %2461 to float
  %2463 = fmul fast float %2374, 5.000000e-01
  %2464 = fmul fast float %2462, %2462
  %2465 = fmul fast float %2464, %2463
  %2466 = fsub fast float 1.500000e+00, %2465
  %2467 = fmul fast float %2462, %2374
  %2468 = fmul fast float %2467, %2466
  %2469 = bitcast float %2375 to i32
  %2470 = ashr i32 %2469, 1
  %2471 = sub nsw i32 1597463174, %2470
  %2472 = bitcast i32 %2471 to float
  %2473 = fmul fast float %2375, 5.000000e-01
  %2474 = fmul fast float %2472, %2472
  %2475 = fmul fast float %2474, %2473
  %2476 = fsub fast float 1.500000e+00, %2475
  %2477 = fmul fast float %2472, %2375
  %2478 = fmul fast float %2477, %2476
  %2479 = fsub fast float %2458, %2440
  %2480 = fsub fast float %2468, %2444
  %2481 = fsub fast float %2478, %2448
  %2482 = fmul fast float %2479, %2408
  %2483 = fmul fast float %2480, %2410
  %2484 = fmul fast float %2481, %2415
  %2485 = fadd fast float %2482, %2423
  %2486 = fadd fast float %2483, %2427
  %2487 = fadd fast float %2484, %2431
  %2488 = call float @dx.op.unary.f32(i32 7, float %2485)  ; Saturate(value)
  %2489 = call float @dx.op.unary.f32(i32 7, float %2486)  ; Saturate(value)
  %2490 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  %2491 = fmul fast float %2488, %2488
  %2492 = fmul fast float %2489, %2489
  %2493 = fmul fast float %2490, %2490
  %2494 = fsub fast float %2491, %2373
  %2495 = fsub fast float %2492, %2374
  %2496 = fsub fast float %2493, %2375
  %2497 = fmul fast float %2494, %2398
  %2498 = fmul fast float %2495, %2398
  %2499 = fmul fast float %2496, %2398
  %2500 = fadd fast float %2497, %2373
  %2501 = fadd fast float %2498, %2374
  %2502 = fadd fast float %2499, %2375
  %2503 = fadd fast float %2420, %2384
  %2504 = fsub fast float %2503, %2437
  %2505 = call float @dx.op.unary.f32(i32 7, float %2504)  ; Saturate(value)
  %2506 = fsub fast float %2505, %2384
  %2507 = fmul fast float %2506, %2398
  %2508 = fadd fast float %2507, %2384
  br label %2562

; <label>:2509                                    ; preds = %2397
  %2510 = and i32 %2400, 134217728
  %2511 = icmp eq i32 %2510, 0
  br i1 %2511, label %2546, label %2512

; <label>:2512                                    ; preds = %2509
  %2513 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2514 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2515 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2516 = fadd fast float %2513, -5.000000e-01
  %2517 = fadd fast float %2514, -5.000000e-01
  %2518 = fadd fast float %2515, -5.000000e-01
  %2519 = fmul fast float %2516, %2398
  %2520 = fmul fast float %2517, %2398
  %2521 = fmul fast float %2518, %2398
  %2522 = fadd fast float %2519, 5.000000e-01
  %2523 = fadd fast float %2520, 5.000000e-01
  %2524 = fadd fast float %2521, 5.000000e-01
  %2525 = call float @dx.op.unary.f32(i32 24, float %2373)  ; Sqrt(value)
  %2526 = call float @dx.op.unary.f32(i32 24, float %2374)  ; Sqrt(value)
  %2527 = call float @dx.op.unary.f32(i32 24, float %2375)  ; Sqrt(value)
  %2528 = fmul fast float %2522, 2.000000e+00
  %2529 = fsub fast float 1.000000e+00, %2528
  %2530 = fmul fast float %2529, %2525
  %2531 = fadd fast float %2530, %2528
  %2532 = fmul fast float %2531, %2525
  %2533 = fmul fast float %2523, 2.000000e+00
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = fmul fast float %2534, %2526
  %2536 = fadd fast float %2535, %2533
  %2537 = fmul fast float %2536, %2526
  %2538 = fmul fast float %2524, 2.000000e+00
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2539, %2527
  %2541 = fadd fast float %2540, %2538
  %2542 = fmul fast float %2541, %2527
  %2543 = fmul fast float %2532, %2532
  %2544 = fmul fast float %2537, %2537
  %2545 = fmul fast float %2542, %2542
  br label %2562

; <label>:2546                                    ; preds = %2509
  %2547 = fmul fast float %278, %278
  %2548 = fmul fast float %282, %282
  %2549 = fmul fast float %286, %286
  %2550 = fadd fast float %2547, -1.000000e+00
  %2551 = fadd fast float %2548, -1.000000e+00
  %2552 = fadd fast float %2549, -1.000000e+00
  %2553 = fmul fast float %2398, %2550
  %2554 = fmul fast float %2398, %2551
  %2555 = fmul fast float %2398, %2552
  %2556 = fadd fast float %2553, 1.000000e+00
  %2557 = fadd fast float %2554, 1.000000e+00
  %2558 = fadd fast float %2555, 1.000000e+00
  %2559 = fmul fast float %2556, %2373
  %2560 = fmul fast float %2557, %2374
  %2561 = fmul fast float %2558, %2375
  br label %2562

; <label>:2562                                    ; preds = %2546, %2512, %2403, %2359
  %2563 = phi float [ %2508, %2403 ], [ %2384, %2512 ], [ %2384, %2546 ], [ 0x3FA23C0BE0000000, %2359 ]
  %2564 = phi float [ %2500, %2403 ], [ %2543, %2512 ], [ %2559, %2546 ], [ 1.000000e+00, %2359 ]
  %2565 = phi float [ %2501, %2403 ], [ %2544, %2512 ], [ %2560, %2546 ], [ 1.000000e+00, %2359 ]
  %2566 = phi float [ %2502, %2403 ], [ %2545, %2512 ], [ %2561, %2546 ], [ 1.000000e+00, %2359 ]
  %2567 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.i32 %2567, 1
  %2569 = and i32 %2568, 1
  %2570 = icmp ne i32 %2569, 0
  %2571 = add i32 %35, 356
  %2572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2571, i32 undef)  ; BufferLoad(srv,index,wot)
  %2573 = extractvalue %dx.types.ResRet.i32 %2572, 0
  %2574 = and i32 %2573, 32
  %2575 = icmp ne i32 %2574, 0
  %2576 = and i1 %2570, %2575
  %2577 = select i1 %2576, float 1.000000e+00, float %2564
  %2578 = select i1 %2576, float 0x3FD3333340000000, float %2565
  %2579 = select i1 %2576, float 0x3FD3333340000000, float %2566
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 32
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2656, label %2584

; <label>:2584                                    ; preds = %2562
  %2585 = add i32 %35, 124
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = add i32 %35, 464
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = add i32 %2590, 0
  %2592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2592, %dx.types.Handle %71, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2594 = extractvalue %dx.types.ResRet.f32 %2593, 0
  %2595 = extractvalue %dx.types.ResRet.f32 %2593, 1
  %2596 = extractvalue %dx.types.ResRet.f32 %2593, 2
  %2597 = extractvalue %dx.types.ResRet.f32 %2593, 3
  %2598 = and i32 %2587, 255
  %2599 = uitofp i32 %2598 to float
  %2600 = lshr i32 %2587, 8
  %2601 = and i32 %2600, 255
  %2602 = uitofp i32 %2601 to float
  %2603 = lshr i32 %2587, 16
  %2604 = and i32 %2603, 255
  %2605 = uitofp i32 %2604 to float
  %2606 = fmul fast float %2605, 0x3F70101000000000
  %2607 = fmul fast float %2594, %2599
  %2608 = fadd fast float %2607, %2602
  %2609 = fmul fast float %2608, 0x3F70101000000000
  %2610 = fadd fast float %2595, -5.000000e-01
  %2611 = fadd fast float %2597, -5.000000e-01
  %2612 = fmul fast float %2610, %2606
  %2613 = fmul fast float %2611, %2606
  %2614 = fadd fast float %2612, 5.000000e-01
  %2615 = fadd fast float %2613, 5.000000e-01
  %2616 = fmul fast float %2614, 2.000000e+00
  %2617 = fadd fast float %2616, -1.000000e+00
  %2618 = fmul fast float %2615, 2.000000e+00
  %2619 = fadd fast float %2618, -1.000000e+00
  %2620 = fadd fast float %2617, %2619
  %2621 = fmul fast float %2620, 5.000000e-01
  %2622 = fsub fast float %2617, %2619
  %2623 = fmul fast float %2622, 5.000000e-01
  %2624 = call float @dx.op.unary.f32(i32 6, float %2621)  ; FAbs(value)
  %2625 = fsub fast float 1.000000e+00, %2624
  %2626 = call float @dx.op.unary.f32(i32 6, float %2623)  ; FAbs(value)
  %2627 = fsub fast float %2625, %2626
  %2628 = call float @dx.op.dot3.f32(i32 55, float %2621, float %2623, float %2627, float %2621, float %2623, float %2627)  ; Dot3(ax,ay,az,bx,by,bz)
  %2629 = call float @dx.op.unary.f32(i32 25, float %2628)  ; Rsqrt(value)
  %2630 = fmul fast float %2621, %2629
  %2631 = fmul fast float %2623, %2629
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 67108864
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2652, label %2636

; <label>:2636                                    ; preds = %2584
  %2637 = add i32 %35, 312
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 65535
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = and i32 %2643, 65535
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = lshr i32 %2639, 16
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = fsub fast float %2609, %2647
  %2649 = fmul fast float %2648, %2641
  %2650 = fadd fast float %2649, %2645
  %2651 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  br label %2652

; <label>:2652                                    ; preds = %2636, %2584
  %2653 = phi float [ %2651, %2636 ], [ %2609, %2584 ]
  %2654 = call float @dx.op.dot2.f32(i32 54, float %2630, float %2631, float %2073, float %2074)  ; Dot2(ax,ay,bx,by)
  %2655 = call float @dx.op.dot2.f32(i32 54, float %2630, float %2631, float %2075, float %2076)  ; Dot2(ax,ay,bx,by)
  br label %2656

; <label>:2656                                    ; preds = %2652, %2562
  %2657 = phi float [ %2653, %2652 ], [ 0x3FD6666660000000, %2562 ]
  %2658 = phi float [ %2654, %2652 ], [ 0.000000e+00, %2562 ]
  %2659 = phi float [ %2655, %2652 ], [ 0.000000e+00, %2562 ]
  %2660 = phi float [ %2596, %2652 ], [ 1.000000e+00, %2562 ]
  %2661 = add i32 %35, 192
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = lshr i32 %2663, 22
  %2665 = shl nuw nsw i32 %2664, 5
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 64
  %2670 = icmp eq i32 %2669, 0
  br i1 %2670, label %2704, label %2671

; <label>:2671                                    ; preds = %2656
  %2672 = add i32 %35, 480
  %2673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2672, i32 undef)  ; BufferLoad(srv,index,wot)
  %2674 = extractvalue %dx.types.ResRet.i32 %2673, 0
  %2675 = add i32 %2674, 0
  %2676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2675, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 131072
  %2680 = icmp eq i32 %2679, 0
  %2681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2676, %dx.types.Handle %71, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2682 = extractvalue %dx.types.ResRet.f32 %2681, 0
  %2683 = extractvalue %dx.types.ResRet.f32 %2681, 1
  %2684 = extractvalue %dx.types.ResRet.f32 %2681, 2
  %2685 = fmul fast float %2682, %266
  %2686 = fmul fast float %2683, %269
  %2687 = fmul fast float %2684, %272
  br i1 %2680, label %2694, label %2688

; <label>:2688                                    ; preds = %2671
  %2689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2690 = extractvalue %dx.types.CBufRet.f32 %2689, 0
  %2691 = fmul fast float %2690, %2685
  %2692 = fmul fast float %2690, %2686
  %2693 = fmul fast float %2690, %2687
  br label %2694

; <label>:2694                                    ; preds = %2688, %2671
  %2695 = phi float [ %2691, %2688 ], [ %2685, %2671 ]
  %2696 = phi float [ %2692, %2688 ], [ %2686, %2671 ]
  %2697 = phi float [ %2693, %2688 ], [ %2687, %2671 ]
  %2698 = fmul fast float %2695, %2666
  %2699 = select i1 %176, float %2698, float %2695
  %2700 = call float @dx.op.dot3.f32(i32 55, float %2699, float %2696, float %2697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2701 = select i1 %176, float 0.000000e+00, float %2695
  %2702 = select i1 %176, float %2700, float %2696
  %2703 = select i1 %176, float 0.000000e+00, float %2697
  br label %2704

; <label>:2704                                    ; preds = %2694, %2656
  %2705 = phi float [ %2701, %2694 ], [ 0.000000e+00, %2656 ]
  %2706 = phi float [ %2702, %2694 ], [ 0.000000e+00, %2656 ]
  %2707 = phi float [ %2703, %2694 ], [ 0.000000e+00, %2656 ]
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 1024
  %2711 = icmp eq i32 %2710, 0
  br i1 %2711, label %2742, label %2712

; <label>:2712                                    ; preds = %2704
  %2713 = add i32 %35, 184
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = and i32 %2715, 255
  %2717 = uitofp i32 %2716 to float
  %2718 = fmul fast float %2717, 0x3F70101020000000
  %2719 = lshr i32 %2715, 8
  %2720 = and i32 %2719, 255
  %2721 = uitofp i32 %2720 to float
  %2722 = fmul fast float %2721, 0x3F70101020000000
  %2723 = lshr i32 %2715, 16
  %2724 = and i32 %2723, 255
  %2725 = uitofp i32 %2724 to float
  %2726 = fmul fast float %2725, 0x3F70101020000000
  %2727 = fmul fast float %2718, %2718
  %2728 = fmul fast float %2722, %2722
  %2729 = fmul fast float %2726, %2726
  %2730 = add i32 %35, 544
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = add i32 %2732, 0
  %2734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2735 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2734, %dx.types.Handle %72, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.ResRet.f32 %2735, 1
  %2738 = extractvalue %dx.types.ResRet.f32 %2735, 2
  %2739 = fmul fast float %2727, %2736
  %2740 = fmul fast float %2728, %2737
  %2741 = fmul fast float %2729, %2738
  br label %2742

; <label>:2742                                    ; preds = %2712, %2704
  %2743 = phi float [ %2739, %2712 ], [ 0.000000e+00, %2704 ]
  %2744 = phi float [ %2740, %2712 ], [ 0.000000e+00, %2704 ]
  %2745 = phi float [ %2741, %2712 ], [ 0.000000e+00, %2704 ]
  %2746 = fcmp fast ogt float %2743, 0.000000e+00
  %2747 = fcmp fast ogt float %2744, 0.000000e+00
  %2748 = fcmp fast ogt float %2745, 0.000000e+00
  %2749 = call float @dx.op.unary.f32(i32 23, float %2743)  ; Log(value)
  %2750 = call float @dx.op.unary.f32(i32 23, float %2744)  ; Log(value)
  %2751 = call float @dx.op.unary.f32(i32 23, float %2745)  ; Log(value)
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = lshr i32 %2753, 7
  %2755 = and i32 %2754, 32752
  %2756 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2755)  ; LegacyF16ToF32(value)
  %2757 = fmul fast float %2749, 0xBFE62E4300000000
  %2758 = fmul fast float %2757, %2756
  %2759 = fmul fast float %2750, 0xBFE62E4300000000
  %2760 = fmul fast float %2759, %2756
  %2761 = fmul fast float %2751, 0xBFE62E4300000000
  %2762 = fmul fast float %2761, %2756
  %2763 = select i1 %2746, float %2758, float 1.270000e+02
  %2764 = select i1 %2747, float %2760, float 1.270000e+02
  %2765 = select i1 %2748, float %2762, float 1.270000e+02
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = and i32 %2767, 10240
  %2769 = icmp eq i32 %2768, 0
  br i1 %2769, label %2814, label %2770

; <label>:2770                                    ; preds = %2742
  %2771 = add i32 %35, 560
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2771, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = add i32 %2773, 0
  %2775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2775, %dx.types.Handle %72, float %2169, float %2170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 1
  %2778 = extractvalue %dx.types.ResRet.f32 %2776, 3
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = and i32 %2780, 1048576
  %2782 = icmp ne i32 %2781, 0
  %2783 = and i32 %2780, 8192
  %2784 = icmp eq i32 %2783, 0
  br i1 %2784, label %2800, label %2785

; <label>:2785                                    ; preds = %2770
  %2786 = extractvalue %dx.types.ResRet.f32 %2776, 2
  %2787 = select i1 %2782, float %2786, float %2777
  %2788 = extractvalue %dx.types.ResRet.f32 %2776, 0
  %2789 = select i1 %2782, float %2788, float %2777
  %2790 = add i32 %35, 128
  %2791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2790, i32 undef)  ; BufferLoad(srv,index,wot)
  %2792 = extractvalue %dx.types.ResRet.i32 %2791, 0
  %2793 = lshr i32 %2792, 16
  %2794 = and i32 %2793, 255
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2795, 0x3F80101020000000
  %2797 = fmul fast float %2796, %2789
  %2798 = fmul fast float %2796, %2777
  %2799 = fmul fast float %2796, %2787
  br label %2800

; <label>:2800                                    ; preds = %2785, %2770
  %2801 = phi float [ %2797, %2785 ], [ 0.000000e+00, %2770 ]
  %2802 = phi float [ %2798, %2785 ], [ 0.000000e+00, %2770 ]
  %2803 = phi float [ %2799, %2785 ], [ 0.000000e+00, %2770 ]
  %2804 = and i32 %2780, 2048
  %2805 = icmp eq i32 %2804, 0
  br i1 %2805, label %2814, label %2806

; <label>:2806                                    ; preds = %2800
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = shl i32 %2808, 4
  %2810 = and i32 %2809, 32752
  %2811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2810)  ; LegacyF16ToF32(value)
  %2812 = fmul fast float %2811, %2778
  %2813 = call float @dx.op.binary.f32(i32 35, float %2812, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2814

; <label>:2814                                    ; preds = %2806, %2800, %2742
  %2815 = phi float [ %2801, %2806 ], [ %2801, %2800 ], [ 0.000000e+00, %2742 ]
  %2816 = phi float [ %2802, %2806 ], [ %2802, %2800 ], [ 0.000000e+00, %2742 ]
  %2817 = phi float [ %2803, %2806 ], [ %2803, %2800 ], [ 0.000000e+00, %2742 ]
  %2818 = phi float [ %2813, %2806 ], [ 0x3F70101020000000, %2800 ], [ 0x3F70101020000000, %2742 ]
  %2819 = add i32 %35, 128
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = and i32 %2821, 255
  %2823 = uitofp i32 %2822 to float
  %2824 = lshr i32 %2821, 8
  %2825 = and i32 %2824, 255
  %2826 = uitofp i32 %2825 to float
  %2827 = call float @dx.op.dot3.f32(i32 55, float %2577, float %2578, float %2579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2828 = fmul fast float %2826, %2827
  %2829 = fadd fast float %2828, %2823
  %2830 = fmul fast float %2829, 0x3F70101020000000
  %2831 = call float @dx.op.unary.f32(i32 7, float %2830)  ; Saturate(value)
  br i1 %2061, label %2832, label %2867

; <label>:2832                                    ; preds = %2814
  %2833 = fmul fast float %2818, 2.000000e+00
  %2834 = fcmp fast olt float %2763, 1.270000e+02
  %2835 = fcmp fast olt float %2764, 1.270000e+02
  %2836 = fcmp fast olt float %2765, 1.270000e+02
  %2837 = fmul fast float %2763, 0xBFF7154760000000
  %2838 = fmul fast float %2837, %2833
  %2839 = fmul fast float %2764, 0xBFF7154760000000
  %2840 = fmul fast float %2839, %2833
  %2841 = fmul fast float %2765, 0xBFF7154760000000
  %2842 = fmul fast float %2841, %2833
  %2843 = call float @dx.op.unary.f32(i32 21, float %2838)  ; Exp(value)
  %2844 = call float @dx.op.unary.f32(i32 21, float %2840)  ; Exp(value)
  %2845 = call float @dx.op.unary.f32(i32 21, float %2842)  ; Exp(value)
  %2846 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2847 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2848 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2849 = fadd fast float %2846, -1.000000e+00
  %2850 = select i1 %2834, float %2849, float -1.000000e+00
  %2851 = fadd fast float %2847, -1.000000e+00
  %2852 = select i1 %2835, float %2851, float -1.000000e+00
  %2853 = fadd fast float %2848, -1.000000e+00
  %2854 = select i1 %2836, float %2853, float -1.000000e+00
  %2855 = fmul fast float %2850, %2357
  %2856 = fmul fast float %2852, %2357
  %2857 = fmul fast float %2854, %2357
  %2858 = fadd fast float %2855, 1.000000e+00
  %2859 = fadd fast float %2856, 1.000000e+00
  %2860 = fadd fast float %2857, 1.000000e+00
  %2861 = fmul fast float %2858, %2043
  %2862 = fmul fast float %2859, %2044
  %2863 = fmul fast float %2860, %2045
  %2864 = fmul fast float %2858, %2052
  %2865 = fmul fast float %2859, %2053
  %2866 = fmul fast float %2860, %2054
  br label %2867

; <label>:2867                                    ; preds = %2832, %2814
  %2868 = phi float [ %2861, %2832 ], [ %2043, %2814 ]
  %2869 = phi float [ %2862, %2832 ], [ %2044, %2814 ]
  %2870 = phi float [ %2863, %2832 ], [ %2045, %2814 ]
  %2871 = phi float [ %2864, %2832 ], [ %2052, %2814 ]
  %2872 = phi float [ %2865, %2832 ], [ %2053, %2814 ]
  %2873 = phi float [ %2866, %2832 ], [ %2054, %2814 ]
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 3
  %2877 = icmp eq i32 %2876, 3
  br i1 %2877, label %2956, label %2878

; <label>:2878                                    ; preds = %2867
  %2879 = and i32 %2875, 16
  %2880 = icmp ne i32 %2879, 0
  %2881 = select i1 %2880, float %2357, float 0.000000e+00
  %2882 = icmp eq i32 %2876, 0
  br i1 %2882, label %2883, label %2911

; <label>:2883                                    ; preds = %2878
  %2884 = and i32 %2875, 64
  %2885 = icmp ne i32 %2884, 0
  %2886 = select i1 %2885, float %2357, float 0.000000e+00
  %2887 = fsub fast float %2577, %2868
  %2888 = fsub fast float %2578, %2869
  %2889 = fsub fast float %2579, %2870
  %2890 = fmul fast float %2881, %2887
  %2891 = fmul fast float %2881, %2888
  %2892 = fmul fast float %2881, %2889
  %2893 = fadd fast float %2890, %2868
  %2894 = fadd fast float %2891, %2869
  %2895 = fadd fast float %2892, %2870
  %2896 = fsub fast float %2563, %2055
  %2897 = fmul fast float %2881, %2896
  %2898 = fadd fast float %2897, %2055
  %2899 = fsub fast float %2705, %2871
  %2900 = fsub fast float %2706, %2872
  %2901 = fsub fast float %2707, %2873
  %2902 = fmul fast float %2886, %2899
  %2903 = fmul fast float %2886, %2900
  %2904 = fmul fast float %2886, %2901
  %2905 = fadd fast float %2902, %2871
  %2906 = fadd fast float %2903, %2872
  %2907 = fadd fast float %2904, %2873
  %2908 = fsub fast float %2831, %2059
  %2909 = fmul fast float %2881, %2908
  %2910 = fadd fast float %2909, %2059
  br label %2956

; <label>:2911                                    ; preds = %2878
  %2912 = icmp eq i32 %2876, 1
  br i1 %2912, label %2913, label %2926

; <label>:2913                                    ; preds = %2911
  %2914 = fadd fast float %2577, -1.000000e+00
  %2915 = fadd fast float %2578, -1.000000e+00
  %2916 = fadd fast float %2579, -1.000000e+00
  %2917 = fmul fast float %2881, %2914
  %2918 = fmul fast float %2881, %2915
  %2919 = fmul fast float %2881, %2916
  %2920 = fadd fast float %2917, 1.000000e+00
  %2921 = fadd fast float %2918, 1.000000e+00
  %2922 = fadd fast float %2919, 1.000000e+00
  %2923 = fmul fast float %2920, %2868
  %2924 = fmul fast float %2921, %2869
  %2925 = fmul fast float %2922, %2870
  br label %2956

; <label>:2926                                    ; preds = %2911
  %2927 = icmp eq i32 %2876, 2
  br i1 %2927, label %2928, label %2956

; <label>:2928                                    ; preds = %2926
  %2929 = call float @dx.op.unary.f32(i32 24, float %2577)  ; Sqrt(value)
  %2930 = call float @dx.op.unary.f32(i32 24, float %2578)  ; Sqrt(value)
  %2931 = call float @dx.op.unary.f32(i32 24, float %2579)  ; Sqrt(value)
  %2932 = fadd fast float %2929, -5.000000e-01
  %2933 = fadd fast float %2930, -5.000000e-01
  %2934 = fadd fast float %2931, -5.000000e-01
  %2935 = fmul fast float %2932, %2881
  %2936 = fmul fast float %2933, %2881
  %2937 = fmul fast float %2934, %2881
  %2938 = fadd fast float %2935, 5.000000e-01
  %2939 = fadd fast float %2936, 5.000000e-01
  %2940 = fadd fast float %2937, 5.000000e-01
  %2941 = fmul fast float %2938, 2.000000e+00
  %2942 = fsub fast float 1.000000e+00, %2941
  %2943 = fmul fast float %2942, %2868
  %2944 = fadd fast float %2943, %2941
  %2945 = fmul fast float %2944, %2868
  %2946 = fmul fast float %2939, 2.000000e+00
  %2947 = fsub fast float 1.000000e+00, %2946
  %2948 = fmul fast float %2947, %2869
  %2949 = fadd fast float %2948, %2946
  %2950 = fmul fast float %2949, %2869
  %2951 = fmul fast float %2940, 2.000000e+00
  %2952 = fsub fast float 1.000000e+00, %2951
  %2953 = fmul fast float %2952, %2870
  %2954 = fadd fast float %2953, %2951
  %2955 = fmul fast float %2954, %2870
  br label %2956

; <label>:2956                                    ; preds = %2928, %2926, %2913, %2883, %2867
  %2957 = phi float [ %2868, %2867 ], [ %2945, %2928 ], [ %2868, %2926 ], [ %2923, %2913 ], [ %2893, %2883 ]
  %2958 = phi float [ %2869, %2867 ], [ %2950, %2928 ], [ %2869, %2926 ], [ %2924, %2913 ], [ %2894, %2883 ]
  %2959 = phi float [ %2870, %2867 ], [ %2955, %2928 ], [ %2870, %2926 ], [ %2925, %2913 ], [ %2895, %2883 ]
  %2960 = phi float [ %2871, %2867 ], [ %2871, %2928 ], [ %2871, %2926 ], [ %2871, %2913 ], [ %2905, %2883 ]
  %2961 = phi float [ %2872, %2867 ], [ %2872, %2928 ], [ %2872, %2926 ], [ %2872, %2913 ], [ %2906, %2883 ]
  %2962 = phi float [ %2873, %2867 ], [ %2873, %2928 ], [ %2873, %2926 ], [ %2873, %2913 ], [ %2907, %2883 ]
  %2963 = phi float [ %2055, %2867 ], [ %2055, %2928 ], [ %2055, %2926 ], [ %2055, %2913 ], [ %2898, %2883 ]
  %2964 = phi float [ %2059, %2867 ], [ %2059, %2928 ], [ %2059, %2926 ], [ %2059, %2913 ], [ %2910, %2883 ]
  %2965 = and i32 %2875, 12
  %2966 = icmp eq i32 %2965, 12
  br i1 %2966, label %3097, label %2967

; <label>:2967                                    ; preds = %2956
  %2968 = and i32 %2875, 2097184
  %2969 = icmp eq i32 %2968, 2097184
  %2970 = select i1 %2969, float %2357, float 0.000000e+00
  %2971 = and i32 %2875, 4194336
  %2972 = icmp eq i32 %2971, 4194336
  %2973 = select i1 %2972, float %2357, float 0.000000e+00
  %2974 = and i32 %2875, 8388640
  %2975 = icmp eq i32 %2974, 8388640
  %2976 = select i1 %2975, float %2357, float 0.000000e+00
  %2977 = and i32 %2875, 1024
  %2978 = icmp ne i32 %2977, 0
  %2979 = select i1 %2978, float %2357, float 0.000000e+00
  %2980 = and i32 %2875, 2048
  %2981 = icmp ne i32 %2980, 0
  %2982 = select i1 %2981, float %2357, float 0.000000e+00
  %2983 = and i32 %2875, 8192
  %2984 = icmp ne i32 %2983, 0
  %2985 = select i1 %2984, float %2357, float 0.000000e+00
  %2986 = icmp eq i32 %2965, 0
  br i1 %2986, label %2987, label %3021

; <label>:2987                                    ; preds = %2967
  %2988 = fsub fast float %2658, %2041
  %2989 = fsub fast float %2659, %2042
  %2990 = fmul fast float %2970, %2988
  %2991 = fmul fast float %2970, %2989
  %2992 = fadd fast float %2990, %2041
  %2993 = fadd fast float %2991, %2042
  %2994 = fsub fast float %2660, %2057
  %2995 = fmul fast float %2973, %2994
  %2996 = fadd fast float %2995, %2057
  %2997 = fsub fast float %2657, %2056
  %2998 = fmul fast float %2976, %2997
  %2999 = fadd fast float %2998, %2056
  %3000 = fsub fast float %2763, %2046
  %3001 = fsub fast float %2764, %2047
  %3002 = fsub fast float %2765, %2048
  %3003 = fmul fast float %2979, %3000
  %3004 = fmul fast float %2979, %3001
  %3005 = fmul fast float %2979, %3002
  %3006 = fadd fast float %3003, %2046
  %3007 = fadd fast float %3004, %2047
  %3008 = fadd fast float %3005, %2048
  %3009 = fsub fast float %2818, %2058
  %3010 = fmul fast float %2982, %3009
  %3011 = fadd fast float %3010, %2058
  %3012 = fsub fast float %2815, %2049
  %3013 = fsub fast float %2816, %2050
  %3014 = fsub fast float %2817, %2051
  %3015 = fmul fast float %2985, %3012
  %3016 = fmul fast float %2985, %3013
  %3017 = fmul fast float %2985, %3014
  %3018 = fadd fast float %3015, %2049
  %3019 = fadd fast float %3016, %2050
  %3020 = fadd fast float %3017, %2051
  br label %3097

; <label>:3021                                    ; preds = %2967
  %3022 = icmp eq i32 %2965, 4
  br i1 %3022, label %3023, label %3069

; <label>:3023                                    ; preds = %3021
  %3024 = fmul fast float %2970, %2658
  %3025 = fmul fast float %2970, %2659
  %3026 = fadd fast float %3024, %2041
  %3027 = fadd fast float %3025, %2042
  %3028 = call float @dx.op.binary.f32(i32 36, float %2057, float %2660)  ; FMin(a,b)
  %3029 = fsub fast float %3028, %2057
  %3030 = fmul fast float %3029, %2973
  %3031 = fadd fast float %3030, %2057
  %3032 = fadd fast float %2657, %2056
  %3033 = fmul fast float %3032, 0x3FF337FAE0000000
  %3034 = fmul fast float %2056, %2056
  %3035 = fmul fast float %2657, %2657
  %3036 = fadd fast float %3035, %3034
  %3037 = fmul fast float %3036, 0x3FE5152B00000000
  %3038 = fmul fast float %2056, 0xBFCC1F85E0000000
  %3039 = fmul fast float %3038, %2657
  %3040 = fadd fast float %3039, 0xBFE1363700000000
  %3041 = fadd fast float %3040, %3033
  %3042 = fsub fast float %3041, %3037
  %3043 = fmul fast float %3032, 0x3FBA6F0D00000000
  %3044 = fmul fast float %3036, 0x3FD0432880000000
  %3045 = fmul fast float %2056, 0xBFEF110800000000
  %3046 = fmul fast float %3045, %2657
  %3047 = fadd fast float %3046, 1.000000e+00
  %3048 = fsub fast float %3047, %3043
  %3049 = fadd fast float %3048, %3044
  %3050 = fdiv fast float %3042, %3049
  %3051 = call float @dx.op.unary.f32(i32 7, float %3050)  ; Saturate(value)
  %3052 = fsub fast float %3051, %2056
  %3053 = fmul fast float %3052, %2976
  %3054 = fadd fast float %3053, %2056
  %3055 = fmul fast float %2979, %2763
  %3056 = fmul fast float %2979, %2764
  %3057 = fmul fast float %2979, %2765
  %3058 = fadd fast float %3055, %2046
  %3059 = fadd fast float %3056, %2047
  %3060 = fadd fast float %3057, %2048
  %3061 = fmul fast float %2982, %2818
  %3062 = fadd fast float %3061, %2058
  %3063 = fmul fast float %2985, %2815
  %3064 = fmul fast float %2985, %2816
  %3065 = fmul fast float %2985, %2817
  %3066 = fadd fast float %3063, %2049
  %3067 = fadd fast float %3064, %2050
  %3068 = fadd fast float %3065, %2051
  br label %3097

; <label>:3069                                    ; preds = %3021
  %3070 = icmp eq i32 %2965, 8
  br i1 %3070, label %3071, label %3097

; <label>:3071                                    ; preds = %3069
  %3072 = fmul fast float %2970, %2658
  %3073 = fmul fast float %2970, %2659
  %3074 = fadd fast float %3072, %2041
  %3075 = fadd fast float %3073, %2042
  %3076 = call float @dx.op.binary.f32(i32 36, float %2057, float %2660)  ; FMin(a,b)
  %3077 = fsub fast float %3076, %2057
  %3078 = fmul fast float %3077, %2973
  %3079 = fadd fast float %3078, %2057
  %3080 = fsub fast float %2657, %2056
  %3081 = fmul fast float %2976, %3080
  %3082 = fadd fast float %3081, %2056
  %3083 = fmul fast float %2979, %2763
  %3084 = fmul fast float %2979, %2764
  %3085 = fmul fast float %2979, %2765
  %3086 = fadd fast float %3083, %2046
  %3087 = fadd fast float %3084, %2047
  %3088 = fadd fast float %3085, %2048
  %3089 = fmul fast float %2982, %2818
  %3090 = fadd fast float %3089, %2058
  %3091 = fmul fast float %2985, %2815
  %3092 = fmul fast float %2985, %2816
  %3093 = fmul fast float %2985, %2817
  %3094 = fadd fast float %3091, %2049
  %3095 = fadd fast float %3092, %2050
  %3096 = fadd fast float %3093, %2051
  br label %3097

; <label>:3097                                    ; preds = %3071, %3069, %3023, %2987, %2956, %2356, %2060, %2040
  %3098 = phi float [ %2041, %2956 ], [ %2041, %2356 ], [ %2041, %2040 ], [ %3074, %3071 ], [ %2041, %3069 ], [ %3026, %3023 ], [ %2992, %2987 ], [ %2041, %2060 ]
  %3099 = phi float [ %2042, %2956 ], [ %2042, %2356 ], [ %2042, %2040 ], [ %3075, %3071 ], [ %2042, %3069 ], [ %3027, %3023 ], [ %2993, %2987 ], [ %2042, %2060 ]
  %3100 = phi float [ %2957, %2956 ], [ %2043, %2356 ], [ %2043, %2040 ], [ %2957, %3071 ], [ %2957, %3069 ], [ %2957, %3023 ], [ %2957, %2987 ], [ %2043, %2060 ]
  %3101 = phi float [ %2958, %2956 ], [ %2044, %2356 ], [ %2044, %2040 ], [ %2958, %3071 ], [ %2958, %3069 ], [ %2958, %3023 ], [ %2958, %2987 ], [ %2044, %2060 ]
  %3102 = phi float [ %2959, %2956 ], [ %2045, %2356 ], [ %2045, %2040 ], [ %2959, %3071 ], [ %2959, %3069 ], [ %2959, %3023 ], [ %2959, %2987 ], [ %2045, %2060 ]
  %3103 = phi float [ %2046, %2956 ], [ %2046, %2356 ], [ %2046, %2040 ], [ %3086, %3071 ], [ %2046, %3069 ], [ %3058, %3023 ], [ %3006, %2987 ], [ %2046, %2060 ]
  %3104 = phi float [ %2047, %2956 ], [ %2047, %2356 ], [ %2047, %2040 ], [ %3087, %3071 ], [ %2047, %3069 ], [ %3059, %3023 ], [ %3007, %2987 ], [ %2047, %2060 ]
  %3105 = phi float [ %2048, %2956 ], [ %2048, %2356 ], [ %2048, %2040 ], [ %3088, %3071 ], [ %2048, %3069 ], [ %3060, %3023 ], [ %3008, %2987 ], [ %2048, %2060 ]
  %3106 = phi float [ %2049, %2956 ], [ %2049, %2356 ], [ %2049, %2040 ], [ %3094, %3071 ], [ %2049, %3069 ], [ %3066, %3023 ], [ %3018, %2987 ], [ %2049, %2060 ]
  %3107 = phi float [ %2050, %2956 ], [ %2050, %2356 ], [ %2050, %2040 ], [ %3095, %3071 ], [ %2050, %3069 ], [ %3067, %3023 ], [ %3019, %2987 ], [ %2050, %2060 ]
  %3108 = phi float [ %2051, %2956 ], [ %2051, %2356 ], [ %2051, %2040 ], [ %3096, %3071 ], [ %2051, %3069 ], [ %3068, %3023 ], [ %3020, %2987 ], [ %2051, %2060 ]
  %3109 = phi float [ %2960, %2956 ], [ %2052, %2356 ], [ %2052, %2040 ], [ %2960, %3071 ], [ %2960, %3069 ], [ %2960, %3023 ], [ %2960, %2987 ], [ %2052, %2060 ]
  %3110 = phi float [ %2961, %2956 ], [ %2053, %2356 ], [ %2053, %2040 ], [ %2961, %3071 ], [ %2961, %3069 ], [ %2961, %3023 ], [ %2961, %2987 ], [ %2053, %2060 ]
  %3111 = phi float [ %2962, %2956 ], [ %2054, %2356 ], [ %2054, %2040 ], [ %2962, %3071 ], [ %2962, %3069 ], [ %2962, %3023 ], [ %2962, %2987 ], [ %2054, %2060 ]
  %3112 = phi float [ %2963, %2956 ], [ %2055, %2356 ], [ %2055, %2040 ], [ %2963, %3071 ], [ %2963, %3069 ], [ %2963, %3023 ], [ %2963, %2987 ], [ %2055, %2060 ]
  %3113 = phi float [ %2056, %2956 ], [ %2056, %2356 ], [ %2056, %2040 ], [ %3082, %3071 ], [ %2056, %3069 ], [ %3054, %3023 ], [ %2999, %2987 ], [ %2056, %2060 ]
  %3114 = phi float [ %2057, %2956 ], [ %2057, %2356 ], [ %2057, %2040 ], [ %3079, %3071 ], [ %2057, %3069 ], [ %3031, %3023 ], [ %2996, %2987 ], [ %2057, %2060 ]
  %3115 = phi float [ %2058, %2956 ], [ %2058, %2356 ], [ %2058, %2040 ], [ %3090, %3071 ], [ %2058, %3069 ], [ %3062, %3023 ], [ %3011, %2987 ], [ %2058, %2060 ]
  %3116 = phi float [ %2964, %2956 ], [ %2059, %2356 ], [ %2059, %2040 ], [ %2964, %3071 ], [ %2964, %3069 ], [ %2964, %3023 ], [ %2964, %2987 ], [ %2059, %2060 ]
  br i1 %353, label %4154, label %3117

; <label>:3117                                    ; preds = %3097
  %3118 = icmp ult i32 %404, 4
  %3119 = add i32 %35, 72
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %35, 76
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = or i32 %3124, %3121
  %3126 = icmp eq i32 %3125, 0
  br i1 %3126, label %4154, label %3127

; <label>:3127                                    ; preds = %3117
  %3128 = and i32 %3121, 262144
  %3129 = icmp ne i32 %3128, 0
  %3130 = select i1 %3129, float %38, float 1.000000e+00
  %3131 = select i1 %3129, float %39, float 0.000000e+00
  %3132 = select i1 %3129, float %40, float 0.000000e+00
  %3133 = select i1 %3129, float %41, float 1.000000e+00
  %3134 = select i1 %3129, float %42, float %63
  %3135 = select i1 %3129, float %43, float %64
  %3136 = add i32 %35, 332
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = lshr i32 %3138, 16
  %3140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3139)  ; LegacyF16ToF32(value)
  %3141 = fmul fast float %3140, 0x3F50624DE0000000
  %3142 = add i32 %35, 136
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = lshr i32 %3144, 16
  %3146 = and i32 %3145, 255
  %3147 = lshr i32 %3144, 24
  %3148 = add i32 %35, 340
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 65535
  %3152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3151)  ; LegacyF16ToF32(value)
  %3153 = lshr i32 %3150, 16
  %3154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3153)  ; LegacyF16ToF32(value)
  %3155 = add i32 %35, 80
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = lshr i32 %3157, 22
  %3159 = shl nuw nsw i32 %3158, 5
  %3160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3159)  ; LegacyF16ToF32(value)
  %3161 = shl i32 %3157, 4
  %3162 = and i32 %3161, 32752
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = lshr i32 %3157, 7
  %3165 = and i32 %3164, 32752
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 3
  %3169 = fmul fast float %3168, 1.000000e+03
  %3170 = fmul fast float %343, %3169
  %3171 = call float @dx.op.unary.f32(i32 22, float %3170)  ; Frc(value)
  %3172 = fadd fast float %3171, %333
  %3173 = fmul fast float %344, %3169
  %3174 = call float @dx.op.unary.f32(i32 22, float %3173)  ; Frc(value)
  %3175 = fadd fast float %3174, %335
  %3176 = fmul fast float %3141, %3169
  %3177 = call float @dx.op.unary.f32(i32 22, float %3176)  ; Frc(value)
  %3178 = fmul fast float %3177, 0x401921FB60000000
  %3179 = fadd fast float %3178, %3160
  %3180 = call float @dx.op.unary.f32(i32 13, float %3179)  ; Sin(value)
  %3181 = call float @dx.op.unary.f32(i32 12, float %3179)  ; Cos(value)
  %3182 = fsub fast float -0.000000e+00, %3180
  %3183 = fadd fast float %3134, -5.000000e-01
  %3184 = fadd fast float %3135, -5.000000e-01
  %3185 = fmul fast float %3152, %3183
  %3186 = fmul fast float %3154, %3184
  %3187 = fadd fast float %3185, 5.000000e-01
  %3188 = fadd fast float %3186, 5.000000e-01
  %3189 = fmul fast float %3163, %3187
  %3190 = fmul fast float %3166, %3188
  %3191 = fmul fast float %3181, %3189
  %3192 = call float @dx.op.tertiary.f32(i32 46, float %3182, float %3190, float %3191)  ; FMad(a,b,c)
  %3193 = fmul fast float %3180, %3189
  %3194 = call float @dx.op.tertiary.f32(i32 46, float %3181, float %3190, float %3193)  ; FMad(a,b,c)
  %3195 = fadd fast float %3172, %3192
  %3196 = fadd fast float %3175, %3194
  %3197 = icmp ugt i32 %3146, 1
  %3198 = icmp ugt i32 %3144, 33554431
  %3199 = or i1 %3198, %3197
  br i1 %3199, label %3200, label %3225

; <label>:3200                                    ; preds = %3127
  %3201 = add i32 %35, 276
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = lshr i32 %3203, 16
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = fmul fast float %3168, %3205
  %3207 = call float @dx.op.unary.f32(i32 22, float %3206)  ; Frc(value)
  %3208 = mul nuw nsw i32 %3146, %3147
  %3209 = uitofp i32 %3208 to float
  %3210 = fmul fast float %3207, %3209
  %3211 = call float @dx.op.unary.f32(i32 27, float %3210)  ; Round_ni(value)
  %3212 = fptoui float %3211 to i32
  %3213 = urem i32 %3212, %3146
  %3214 = udiv i32 %3212, %3147
  %3215 = call float @dx.op.unary.f32(i32 22, float %3195)  ; Frc(value)
  %3216 = call float @dx.op.unary.f32(i32 22, float %3196)  ; Frc(value)
  %3217 = uitofp i32 %3213 to float
  %3218 = uitofp i32 %3214 to float
  %3219 = fadd fast float %3215, %3217
  %3220 = fadd fast float %3216, %3218
  %3221 = uitofp i32 %3146 to float
  %3222 = uitofp i32 %3147 to float
  %3223 = fdiv fast float %3219, %3221
  %3224 = fdiv fast float %3220, %3222
  br label %3225

; <label>:3225                                    ; preds = %3200, %3127
  %3226 = phi float [ %3223, %3200 ], [ %3195, %3127 ]
  %3227 = phi float [ %3224, %3200 ], [ %3196, %3127 ]
  %3228 = and i32 %3121, 16777216
  %3229 = icmp eq i32 %3228, 0
  br i1 %3229, label %3339, label %3230

; <label>:3230                                    ; preds = %3225
  %3231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.f32 %3231, 0
  %3233 = extractvalue %dx.types.CBufRet.f32 %3231, 1
  %3234 = extractvalue %dx.types.CBufRet.f32 %3231, 2
  %3235 = fadd fast float %3232, %134
  %3236 = fadd fast float %3233, %135
  %3237 = fadd fast float %3234, %136
  %3238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3239 = extractvalue %dx.types.CBufRet.f32 %3238, 0
  %3240 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3241 = icmp eq i32 %36, 65535
  br i1 %3241, label %3336, label %3242

; <label>:3242                                    ; preds = %3230
  %3243 = lshr i32 %36, 1
  %3244 = shl i32 %3243, 2
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3244, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = and i32 %36, 1
  %3248 = icmp ne i32 %3247, 0
  %3249 = lshr i32 %3246, 16
  %3250 = and i32 %3246, 65535
  %3251 = select i1 %3248, i32 %3249, i32 %3250
  %3252 = icmp eq i32 %3251, 65535
  br i1 %3252, label %3332, label %3253

; <label>:3253                                    ; preds = %3242
  %3254 = mul nuw nsw i32 %3251, 40
  %3255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.f32 %3255, 0
  %3257 = extractvalue %dx.types.ResRet.f32 %3255, 1
  %3258 = extractvalue %dx.types.ResRet.f32 %3255, 2
  %3259 = add nuw nsw i32 %3254, 12
  %3260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = extractvalue %dx.types.ResRet.f32 %3260, 1
  %3263 = extractvalue %dx.types.ResRet.f32 %3260, 2
  %3264 = add nuw nsw i32 %3254, 24
  %3265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.ResRet.f32 %3265, 1
  %3268 = extractvalue %dx.types.ResRet.f32 %3265, 2
  %3269 = add nuw nsw i32 %3254, 36
  %3270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3272 = fsub fast float %3235, %3256
  %3273 = fsub fast float %3236, %3257
  %3274 = fsub fast float %3237, %3258
  %3275 = fmul fast float %3271, %3272
  %3276 = fmul fast float %3271, %3273
  %3277 = fmul fast float %3271, %3274
  %3278 = call float @dx.op.unary.f32(i32 27, float %3275)  ; Round_ni(value)
  %3279 = call float @dx.op.unary.f32(i32 27, float %3276)  ; Round_ni(value)
  %3280 = call float @dx.op.unary.f32(i32 27, float %3277)  ; Round_ni(value)
  %3281 = fadd fast float %3278, 5.000000e-01
  %3282 = fadd fast float %3279, 5.000000e-01
  %3283 = fadd fast float %3280, 5.000000e-01
  %3284 = fmul fast float %3281, %3261
  %3285 = fmul fast float %3282, %3262
  %3286 = fmul fast float %3283, %3263
  %3287 = shl i32 %36, 2
  %3288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3289 = extractvalue %dx.types.ResRet.i32 %3288, 0
  %3290 = add i32 %3289, 0
  %3291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3292 = call float @dx.op.unary.f32(i32 22, float %3284)  ; Frc(value)
  %3293 = call float @dx.op.unary.f32(i32 22, float %3285)  ; Frc(value)
  %3294 = call float @dx.op.unary.f32(i32 22, float %3286)  ; Frc(value)
  %3295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3291, %dx.types.Handle %30, float %3292, float %3293, float %3294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3296 = extractvalue %dx.types.ResRet.f32 %3295, 0
  %3297 = extractvalue %dx.types.ResRet.f32 %3295, 1
  %3298 = extractvalue %dx.types.ResRet.f32 %3295, 2
  %3299 = fmul fast float %3296, 1.023000e+03
  %3300 = fmul fast float %3297, 1.023000e+03
  %3301 = fmul fast float %3298, 1.023000e+03
  %3302 = fadd fast float %3299, 5.000000e-01
  %3303 = fadd fast float %3300, 5.000000e-01
  %3304 = fadd fast float %3301, 5.000000e-01
  %3305 = call float @dx.op.unary.f32(i32 27, float %3302)  ; Round_ni(value)
  %3306 = call float @dx.op.unary.f32(i32 27, float %3303)  ; Round_ni(value)
  %3307 = call float @dx.op.unary.f32(i32 27, float %3304)  ; Round_ni(value)
  %3308 = fsub fast float %3275, %3278
  %3309 = fsub fast float %3276, %3279
  %3310 = fsub fast float %3277, %3280
  %3311 = fmul fast float %3308, 7.500000e-01
  %3312 = fmul fast float %3309, 7.500000e-01
  %3313 = fmul fast float %3310, 7.500000e-01
  %3314 = fadd fast float %3278, 1.250000e-01
  %3315 = fadd fast float %3314, %3311
  %3316 = fadd fast float %3315, %3305
  %3317 = fadd fast float %3279, 1.250000e-01
  %3318 = fadd fast float %3317, %3312
  %3319 = fadd fast float %3318, %3306
  %3320 = fadd fast float %3280, 1.250000e-01
  %3321 = fadd fast float %3320, %3313
  %3322 = fadd fast float %3321, %3307
  %3323 = fmul fast float %3316, %3266
  %3324 = fmul fast float %3319, %3267
  %3325 = fmul fast float %3322, %3268
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3287, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = add i32 %3327, 0
  %3329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3330 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3329, %dx.types.Handle %28, float %3323, float %3324, float %3325, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  br label %3332

; <label>:3332                                    ; preds = %3253, %3242
  %3333 = phi float [ %3331, %3253 ], [ -1.000000e+00, %3242 ]
  %3334 = fadd fast float %3333, %3240
  %3335 = call float @dx.op.unary.f32(i32 7, float %3334)  ; Saturate(value)
  br label %3336

; <label>:3336                                    ; preds = %3332, %3230
  %3337 = phi float [ %3335, %3332 ], [ %3240, %3230 ]
  %3338 = fmul fast float %3337, %399
  br label %3339

; <label>:3339                                    ; preds = %3336, %3225
  %3340 = phi float [ %3338, %3336 ], [ %399, %3225 ]
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = and i32 %3342, 256
  %3344 = icmp eq i32 %3343, 0
  br i1 %3344, label %3391, label %3345

; <label>:3345                                    ; preds = %3339
  %3346 = add i32 %35, 516
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = add i32 %3348, 0
  %3350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3350, %dx.types.Handle %72, float %3226, float %3227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3352 = extractvalue %dx.types.ResRet.f32 %3351, 0
  %3353 = add i32 %35, 148
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = shl i32 %3355, 4
  %3357 = and i32 %3356, 32752
  %3358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3357)  ; LegacyF16ToF32(value)
  %3359 = lshr i32 %3355, 7
  %3360 = and i32 %3359, 32752
  %3361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3360)  ; LegacyF16ToF32(value)
  %3362 = fsub fast float 1.000000e+00, %3340
  %3363 = call float @dx.op.binary.f32(i32 35, float %3362, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3364 = bitcast float %3340 to i32
  %3365 = sitofp i32 %3364 to float
  %3366 = fadd fast float %3365, 0xC1CFBF8940000000
  %3367 = fmul fast float %3361, %3366
  %3368 = fadd fast float %3367, 0x41CFBF8940000000
  %3369 = fptosi float %3368 to i32
  %3370 = bitcast i32 %3369 to float
  %3371 = bitcast float %3363 to i32
  %3372 = sitofp i32 %3371 to float
  %3373 = fadd fast float %3372, 0xC1CFBF8940000000
  %3374 = fmul fast float %3373, %3361
  %3375 = fadd fast float %3374, 0x41CFBF8940000000
  %3376 = fptosi float %3375 to i32
  %3377 = bitcast i32 %3376 to float
  %3378 = fmul fast float %3370, %3358
  %3379 = fmul fast float %3377, %3358
  %3380 = fsub fast float %3363, %3378
  %3381 = fadd fast float %3379, %3363
  %3382 = call float @dx.op.unary.f32(i32 7, float %3380)  ; Saturate(value)
  %3383 = call float @dx.op.unary.f32(i32 7, float %3381)  ; Saturate(value)
  %3384 = fsub fast float %3352, %3382
  %3385 = fsub fast float %3383, %3382
  %3386 = bitcast float %3385 to i32
  %3387 = sub nsw i32 2129859010, %3386
  %3388 = bitcast i32 %3387 to float
  %3389 = fmul fast float %3388, %3384
  %3390 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  br label %3391

; <label>:3391                                    ; preds = %3345, %3339
  %3392 = phi float [ %3390, %3345 ], [ %3340, %3339 ]
  %3393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3394 = extractvalue %dx.types.ResRet.i32 %3393, 0
  %3395 = and i32 %3394, 128
  %3396 = icmp eq i32 %3395, 0
  br i1 %3396, label %3413, label %3397

; <label>:3397                                    ; preds = %3391
  %3398 = add i32 %35, 500
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = add i32 %3400, 0
  %3402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3402, %dx.types.Handle %72, float %3226, float %3227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3404 = extractvalue %dx.types.ResRet.f32 %3403, 0
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 524288
  %3408 = icmp ne i32 %3407, 0
  %3409 = fcmp fast ogt float %3404, 0x3FE0101020000000
  %3410 = select i1 %3409, float 1.000000e+00, float 0.000000e+00
  %3411 = select i1 %3408, float %3410, float %3404
  %3412 = fmul fast float %3411, %3392
  br label %3413

; <label>:3413                                    ; preds = %3397, %3391
  %3414 = phi float [ %3412, %3397 ], [ %3392, %3391 ]
  %3415 = fcmp fast ult float %3414, 0x3F70101020000000
  br i1 %3415, label %4154, label %3416

; <label>:3416                                    ; preds = %3413
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = and i32 %3418, 16
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %3619, label %3421

; <label>:3421                                    ; preds = %3416
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = add i32 %35, 452
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = add i32 %3426, 0
  %3428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3428, %dx.types.Handle %71, float %3226, float %3227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3430 = extractvalue %dx.types.ResRet.f32 %3429, 0
  %3431 = extractvalue %dx.types.ResRet.f32 %3429, 1
  %3432 = extractvalue %dx.types.ResRet.f32 %3429, 2
  %3433 = extractvalue %dx.types.ResRet.f32 %3429, 3
  %3434 = and i32 %3423, 255
  %3435 = uitofp i32 %3434 to float
  %3436 = lshr i32 %3423, 8
  %3437 = and i32 %3436, 255
  %3438 = uitofp i32 %3437 to float
  %3439 = fmul fast float %3433, %3435
  %3440 = fadd fast float %3439, %3438
  %3441 = fmul fast float %3440, 0x3F70101000000000
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = and i32 %3443, 512
  %3445 = icmp eq i32 %3444, 0
  br i1 %3445, label %3454, label %3446

; <label>:3446                                    ; preds = %3421
  %3447 = add i32 %35, 532
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = add i32 %3449, 0
  %3451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3450, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3451, %dx.types.Handle %72, float %3226, float %3227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 0
  br label %3454

; <label>:3454                                    ; preds = %3446, %3421
  %3455 = phi float [ %3453, %3446 ], [ 1.000000e+00, %3421 ]
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = and i32 %3457, 33554432
  %3459 = icmp eq i32 %3458, 0
  br i1 %3459, label %3566, label %3460

; <label>:3460                                    ; preds = %3454
  %3461 = add i32 %35, 272
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 65535
  %3465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3464)  ; LegacyF16ToF32(value)
  %3466 = lshr i32 %3463, 16
  %3467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3466)  ; LegacyF16ToF32(value)
  %3468 = add i32 %35, 276
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, 65535
  %3472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3471)  ; LegacyF16ToF32(value)
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = lshr i32 %3474, 24
  %3476 = uitofp i32 %3475 to float
  %3477 = fmul fast float %3476, 0x3F70101020000000
  %3478 = and i32 %3474, 255
  %3479 = uitofp i32 %3478 to float
  %3480 = fmul fast float %3479, 0x3F70101020000000
  %3481 = lshr i32 %3474, 8
  %3482 = and i32 %3481, 255
  %3483 = uitofp i32 %3482 to float
  %3484 = fmul fast float %3483, 0x3F70101020000000
  %3485 = lshr i32 %3474, 16
  %3486 = and i32 %3485, 255
  %3487 = uitofp i32 %3486 to float
  %3488 = fmul fast float %3487, 0x3F70101020000000
  %3489 = add i32 %35, 268
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = lshr i32 %3491, 24
  %3493 = uitofp i32 %3492 to float
  %3494 = fmul fast float %3493, 0x3F70101020000000
  %3495 = and i32 %3491, 255
  %3496 = uitofp i32 %3495 to float
  %3497 = fmul fast float %3496, 0x3F70101020000000
  %3498 = lshr i32 %3491, 8
  %3499 = and i32 %3498, 255
  %3500 = uitofp i32 %3499 to float
  %3501 = fmul fast float %3500, 0x3F70101020000000
  %3502 = lshr i32 %3491, 16
  %3503 = and i32 %3502, 255
  %3504 = uitofp i32 %3503 to float
  %3505 = fmul fast float %3504, 0x3F70101020000000
  %3506 = bitcast float %3430 to i32
  %3507 = ashr i32 %3506, 1
  %3508 = sub nsw i32 1597463174, %3507
  %3509 = bitcast i32 %3508 to float
  %3510 = fmul fast float %3430, 5.000000e-01
  %3511 = fmul fast float %3509, %3509
  %3512 = fmul fast float %3511, %3510
  %3513 = fsub fast float 1.500000e+00, %3512
  %3514 = fmul fast float %3509, %3430
  %3515 = fmul fast float %3514, %3513
  %3516 = bitcast float %3431 to i32
  %3517 = ashr i32 %3516, 1
  %3518 = sub nsw i32 1597463174, %3517
  %3519 = bitcast i32 %3518 to float
  %3520 = fmul fast float %3431, 5.000000e-01
  %3521 = fmul fast float %3519, %3519
  %3522 = fmul fast float %3521, %3520
  %3523 = fsub fast float 1.500000e+00, %3522
  %3524 = fmul fast float %3519, %3431
  %3525 = fmul fast float %3524, %3523
  %3526 = bitcast float %3432 to i32
  %3527 = ashr i32 %3526, 1
  %3528 = sub nsw i32 1597463174, %3527
  %3529 = bitcast i32 %3528 to float
  %3530 = fmul fast float %3432, 5.000000e-01
  %3531 = fmul fast float %3529, %3529
  %3532 = fmul fast float %3531, %3530
  %3533 = fsub fast float 1.500000e+00, %3532
  %3534 = fmul fast float %3529, %3432
  %3535 = fmul fast float %3534, %3533
  %3536 = fsub fast float %3515, %3497
  %3537 = fsub fast float %3525, %3501
  %3538 = fsub fast float %3535, %3505
  %3539 = fmul fast float %3536, %3465
  %3540 = fmul fast float %3537, %3467
  %3541 = fmul fast float %3538, %3472
  %3542 = fadd fast float %3539, %3480
  %3543 = fadd fast float %3540, %3484
  %3544 = fadd fast float %3541, %3488
  %3545 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  %3546 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  %3547 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  %3548 = fmul fast float %3545, %3545
  %3549 = fmul fast float %3546, %3546
  %3550 = fmul fast float %3547, %3547
  %3551 = fsub fast float %3548, %3430
  %3552 = fsub fast float %3549, %3431
  %3553 = fsub fast float %3550, %3432
  %3554 = fmul fast float %3551, %3455
  %3555 = fmul fast float %3552, %3455
  %3556 = fmul fast float %3553, %3455
  %3557 = fadd fast float %3554, %3430
  %3558 = fadd fast float %3555, %3431
  %3559 = fadd fast float %3556, %3432
  %3560 = fadd fast float %3477, %3441
  %3561 = fsub fast float %3560, %3494
  %3562 = call float @dx.op.unary.f32(i32 7, float %3561)  ; Saturate(value)
  %3563 = fsub fast float %3562, %3441
  %3564 = fmul fast float %3563, %3455
  %3565 = fadd fast float %3564, %3441
  br label %3619

; <label>:3566                                    ; preds = %3454
  %3567 = and i32 %3457, 134217728
  %3568 = icmp eq i32 %3567, 0
  br i1 %3568, label %3603, label %3569

; <label>:3569                                    ; preds = %3566
  %3570 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3571 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3572 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3573 = fadd fast float %3570, -5.000000e-01
  %3574 = fadd fast float %3571, -5.000000e-01
  %3575 = fadd fast float %3572, -5.000000e-01
  %3576 = fmul fast float %3573, %3455
  %3577 = fmul fast float %3574, %3455
  %3578 = fmul fast float %3575, %3455
  %3579 = fadd fast float %3576, 5.000000e-01
  %3580 = fadd fast float %3577, 5.000000e-01
  %3581 = fadd fast float %3578, 5.000000e-01
  %3582 = call float @dx.op.unary.f32(i32 24, float %3430)  ; Sqrt(value)
  %3583 = call float @dx.op.unary.f32(i32 24, float %3431)  ; Sqrt(value)
  %3584 = call float @dx.op.unary.f32(i32 24, float %3432)  ; Sqrt(value)
  %3585 = fmul fast float %3579, 2.000000e+00
  %3586 = fsub fast float 1.000000e+00, %3585
  %3587 = fmul fast float %3586, %3582
  %3588 = fadd fast float %3587, %3585
  %3589 = fmul fast float %3588, %3582
  %3590 = fmul fast float %3580, 2.000000e+00
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = fmul fast float %3591, %3583
  %3593 = fadd fast float %3592, %3590
  %3594 = fmul fast float %3593, %3583
  %3595 = fmul fast float %3581, 2.000000e+00
  %3596 = fsub fast float 1.000000e+00, %3595
  %3597 = fmul fast float %3596, %3584
  %3598 = fadd fast float %3597, %3595
  %3599 = fmul fast float %3598, %3584
  %3600 = fmul fast float %3589, %3589
  %3601 = fmul fast float %3594, %3594
  %3602 = fmul fast float %3599, %3599
  br label %3619

; <label>:3603                                    ; preds = %3566
  %3604 = fmul fast float %320, %320
  %3605 = fmul fast float %324, %324
  %3606 = fmul fast float %328, %328
  %3607 = fadd fast float %3604, -1.000000e+00
  %3608 = fadd fast float %3605, -1.000000e+00
  %3609 = fadd fast float %3606, -1.000000e+00
  %3610 = fmul fast float %3455, %3607
  %3611 = fmul fast float %3455, %3608
  %3612 = fmul fast float %3455, %3609
  %3613 = fadd fast float %3610, 1.000000e+00
  %3614 = fadd fast float %3611, 1.000000e+00
  %3615 = fadd fast float %3612, 1.000000e+00
  %3616 = fmul fast float %3613, %3430
  %3617 = fmul fast float %3614, %3431
  %3618 = fmul fast float %3615, %3432
  br label %3619

; <label>:3619                                    ; preds = %3603, %3569, %3460, %3416
  %3620 = phi float [ %3565, %3460 ], [ %3441, %3569 ], [ %3441, %3603 ], [ 0x3FA23C0BE0000000, %3416 ]
  %3621 = phi float [ %3557, %3460 ], [ %3600, %3569 ], [ %3616, %3603 ], [ 1.000000e+00, %3416 ]
  %3622 = phi float [ %3558, %3460 ], [ %3601, %3569 ], [ %3617, %3603 ], [ 1.000000e+00, %3416 ]
  %3623 = phi float [ %3559, %3460 ], [ %3602, %3569 ], [ %3618, %3603 ], [ 1.000000e+00, %3416 ]
  %3624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3625 = extractvalue %dx.types.CBufRet.i32 %3624, 1
  %3626 = and i32 %3625, 1
  %3627 = icmp ne i32 %3626, 0
  %3628 = add i32 %35, 356
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, 32
  %3632 = icmp ne i32 %3631, 0
  %3633 = and i1 %3627, %3632
  %3634 = select i1 %3633, float 1.000000e+00, float %3621
  %3635 = select i1 %3633, float 0x3FD3333340000000, float %3622
  %3636 = select i1 %3633, float 0x3FD3333340000000, float %3623
  %3637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.i32 %3637, 0
  %3639 = and i32 %3638, 32
  %3640 = icmp eq i32 %3639, 0
  br i1 %3640, label %3713, label %3641

; <label>:3641                                    ; preds = %3619
  %3642 = add i32 %35, 140
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = add i32 %35, 468
  %3646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.i32 %3646, 0
  %3648 = add i32 %3647, 0
  %3649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3650 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3649, %dx.types.Handle %71, float %3226, float %3227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3655 = and i32 %3644, 255
  %3656 = uitofp i32 %3655 to float
  %3657 = lshr i32 %3644, 8
  %3658 = and i32 %3657, 255
  %3659 = uitofp i32 %3658 to float
  %3660 = lshr i32 %3644, 16
  %3661 = and i32 %3660, 255
  %3662 = uitofp i32 %3661 to float
  %3663 = fmul fast float %3662, 0x3F70101000000000
  %3664 = fmul fast float %3651, %3656
  %3665 = fadd fast float %3664, %3659
  %3666 = fmul fast float %3665, 0x3F70101000000000
  %3667 = fadd fast float %3652, -5.000000e-01
  %3668 = fadd fast float %3654, -5.000000e-01
  %3669 = fmul fast float %3667, %3663
  %3670 = fmul fast float %3668, %3663
  %3671 = fadd fast float %3669, 5.000000e-01
  %3672 = fadd fast float %3670, 5.000000e-01
  %3673 = fmul fast float %3671, 2.000000e+00
  %3674 = fadd fast float %3673, -1.000000e+00
  %3675 = fmul fast float %3672, 2.000000e+00
  %3676 = fadd fast float %3675, -1.000000e+00
  %3677 = fadd fast float %3674, %3676
  %3678 = fmul fast float %3677, 5.000000e-01
  %3679 = fsub fast float %3674, %3676
  %3680 = fmul fast float %3679, 5.000000e-01
  %3681 = call float @dx.op.unary.f32(i32 6, float %3678)  ; FAbs(value)
  %3682 = fsub fast float 1.000000e+00, %3681
  %3683 = call float @dx.op.unary.f32(i32 6, float %3680)  ; FAbs(value)
  %3684 = fsub fast float %3682, %3683
  %3685 = call float @dx.op.dot3.f32(i32 55, float %3678, float %3680, float %3684, float %3678, float %3680, float %3684)  ; Dot3(ax,ay,az,bx,by,bz)
  %3686 = call float @dx.op.unary.f32(i32 25, float %3685)  ; Rsqrt(value)
  %3687 = fmul fast float %3678, %3686
  %3688 = fmul fast float %3680, %3686
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = and i32 %3690, 67108864
  %3692 = icmp eq i32 %3691, 0
  br i1 %3692, label %3709, label %3693

; <label>:3693                                    ; preds = %3641
  %3694 = add i32 %35, 328
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = and i32 %3696, 65535
  %3698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3697)  ; LegacyF16ToF32(value)
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = and i32 %3700, 65535
  %3702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3701)  ; LegacyF16ToF32(value)
  %3703 = lshr i32 %3696, 16
  %3704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3703)  ; LegacyF16ToF32(value)
  %3705 = fsub fast float %3666, %3704
  %3706 = fmul fast float %3705, %3698
  %3707 = fadd fast float %3706, %3702
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  br label %3709

; <label>:3709                                    ; preds = %3693, %3641
  %3710 = phi float [ %3708, %3693 ], [ %3666, %3641 ]
  %3711 = call float @dx.op.dot2.f32(i32 54, float %3687, float %3688, float %3130, float %3131)  ; Dot2(ax,ay,bx,by)
  %3712 = call float @dx.op.dot2.f32(i32 54, float %3687, float %3688, float %3132, float %3133)  ; Dot2(ax,ay,bx,by)
  br label %3713

; <label>:3713                                    ; preds = %3709, %3619
  %3714 = phi float [ %3710, %3709 ], [ 0x3FD6666660000000, %3619 ]
  %3715 = phi float [ %3711, %3709 ], [ 0.000000e+00, %3619 ]
  %3716 = phi float [ %3712, %3709 ], [ 0.000000e+00, %3619 ]
  %3717 = phi float [ %3653, %3709 ], [ 1.000000e+00, %3619 ]
  %3718 = add i32 %35, 208
  %3719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.i32 %3719, 0
  %3721 = lshr i32 %3720, 22
  %3722 = shl nuw nsw i32 %3721, 5
  %3723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3722)  ; LegacyF16ToF32(value)
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = and i32 %3725, 64
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %3761, label %3728

; <label>:3728                                    ; preds = %3713
  %3729 = add i32 %35, 484
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = add i32 %3731, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = and i32 %3735, 131072
  %3737 = icmp eq i32 %3736, 0
  %3738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3733, %dx.types.Handle %71, float %3226, float %3227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.ResRet.f32 %3738, 2
  %3742 = fmul fast float %3739, %308
  %3743 = fmul fast float %3740, %311
  %3744 = fmul fast float %3741, %314
  br i1 %3737, label %3751, label %3745

; <label>:3745                                    ; preds = %3728
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 0
  %3748 = fmul fast float %3747, %3742
  %3749 = fmul fast float %3747, %3743
  %3750 = fmul fast float %3747, %3744
  br label %3751

; <label>:3751                                    ; preds = %3745, %3728
  %3752 = phi float [ %3748, %3745 ], [ %3742, %3728 ]
  %3753 = phi float [ %3749, %3745 ], [ %3743, %3728 ]
  %3754 = phi float [ %3750, %3745 ], [ %3744, %3728 ]
  %3755 = fmul fast float %3752, %3723
  %3756 = select i1 %176, float %3755, float %3752
  %3757 = call float @dx.op.dot3.f32(i32 55, float %3756, float %3753, float %3754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3758 = select i1 %176, float 0.000000e+00, float %3752
  %3759 = select i1 %176, float %3757, float %3753
  %3760 = select i1 %176, float 0.000000e+00, float %3754
  br label %3761

; <label>:3761                                    ; preds = %3751, %3713
  %3762 = phi float [ %3758, %3751 ], [ 0.000000e+00, %3713 ]
  %3763 = phi float [ %3759, %3751 ], [ 0.000000e+00, %3713 ]
  %3764 = phi float [ %3760, %3751 ], [ 0.000000e+00, %3713 ]
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = and i32 %3766, 1024
  %3768 = icmp eq i32 %3767, 0
  br i1 %3768, label %3799, label %3769

; <label>:3769                                    ; preds = %3761
  %3770 = add i32 %35, 200
  %3771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.i32 %3771, 0
  %3773 = and i32 %3772, 255
  %3774 = uitofp i32 %3773 to float
  %3775 = fmul fast float %3774, 0x3F70101020000000
  %3776 = lshr i32 %3772, 8
  %3777 = and i32 %3776, 255
  %3778 = uitofp i32 %3777 to float
  %3779 = fmul fast float %3778, 0x3F70101020000000
  %3780 = lshr i32 %3772, 16
  %3781 = and i32 %3780, 255
  %3782 = uitofp i32 %3781 to float
  %3783 = fmul fast float %3782, 0x3F70101020000000
  %3784 = fmul fast float %3775, %3775
  %3785 = fmul fast float %3779, %3779
  %3786 = fmul fast float %3783, %3783
  %3787 = add i32 %35, 548
  %3788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3787, i32 undef)  ; BufferLoad(srv,index,wot)
  %3789 = extractvalue %dx.types.ResRet.i32 %3788, 0
  %3790 = add i32 %3789, 0
  %3791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3792 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3791, %dx.types.Handle %72, float %3226, float %3227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3793 = extractvalue %dx.types.ResRet.f32 %3792, 0
  %3794 = extractvalue %dx.types.ResRet.f32 %3792, 1
  %3795 = extractvalue %dx.types.ResRet.f32 %3792, 2
  %3796 = fmul fast float %3784, %3793
  %3797 = fmul fast float %3785, %3794
  %3798 = fmul fast float %3786, %3795
  br label %3799

; <label>:3799                                    ; preds = %3769, %3761
  %3800 = phi float [ %3796, %3769 ], [ 0.000000e+00, %3761 ]
  %3801 = phi float [ %3797, %3769 ], [ 0.000000e+00, %3761 ]
  %3802 = phi float [ %3798, %3769 ], [ 0.000000e+00, %3761 ]
  %3803 = fcmp fast ogt float %3800, 0.000000e+00
  %3804 = fcmp fast ogt float %3801, 0.000000e+00
  %3805 = fcmp fast ogt float %3802, 0.000000e+00
  %3806 = call float @dx.op.unary.f32(i32 23, float %3800)  ; Log(value)
  %3807 = call float @dx.op.unary.f32(i32 23, float %3801)  ; Log(value)
  %3808 = call float @dx.op.unary.f32(i32 23, float %3802)  ; Log(value)
  %3809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.i32 %3809, 0
  %3811 = lshr i32 %3810, 7
  %3812 = and i32 %3811, 32752
  %3813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3812)  ; LegacyF16ToF32(value)
  %3814 = fmul fast float %3806, 0xBFE62E4300000000
  %3815 = fmul fast float %3814, %3813
  %3816 = fmul fast float %3807, 0xBFE62E4300000000
  %3817 = fmul fast float %3816, %3813
  %3818 = fmul fast float %3808, 0xBFE62E4300000000
  %3819 = fmul fast float %3818, %3813
  %3820 = select i1 %3803, float %3815, float 1.270000e+02
  %3821 = select i1 %3804, float %3817, float 1.270000e+02
  %3822 = select i1 %3805, float %3819, float 1.270000e+02
  %3823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.i32 %3823, 0
  %3825 = and i32 %3824, 10240
  %3826 = icmp eq i32 %3825, 0
  br i1 %3826, label %3871, label %3827

; <label>:3827                                    ; preds = %3799
  %3828 = add i32 %35, 564
  %3829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.i32 %3829, 0
  %3831 = add i32 %3830, 0
  %3832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3832, %dx.types.Handle %72, float %3226, float %3227, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.i32 %3836, 0
  %3838 = and i32 %3837, 1048576
  %3839 = icmp ne i32 %3838, 0
  %3840 = and i32 %3837, 8192
  %3841 = icmp eq i32 %3840, 0
  br i1 %3841, label %3857, label %3842

; <label>:3842                                    ; preds = %3827
  %3843 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3844 = select i1 %3839, float %3843, float %3834
  %3845 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3846 = select i1 %3839, float %3845, float %3834
  %3847 = add i32 %35, 144
  %3848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.i32 %3848, 0
  %3850 = lshr i32 %3849, 16
  %3851 = and i32 %3850, 255
  %3852 = uitofp i32 %3851 to float
  %3853 = fmul fast float %3852, 0x3F80101020000000
  %3854 = fmul fast float %3853, %3846
  %3855 = fmul fast float %3853, %3834
  %3856 = fmul fast float %3853, %3844
  br label %3857

; <label>:3857                                    ; preds = %3842, %3827
  %3858 = phi float [ %3854, %3842 ], [ 0.000000e+00, %3827 ]
  %3859 = phi float [ %3855, %3842 ], [ 0.000000e+00, %3827 ]
  %3860 = phi float [ %3856, %3842 ], [ 0.000000e+00, %3827 ]
  %3861 = and i32 %3837, 2048
  %3862 = icmp eq i32 %3861, 0
  br i1 %3862, label %3871, label %3863

; <label>:3863                                    ; preds = %3857
  %3864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3865 = extractvalue %dx.types.ResRet.i32 %3864, 0
  %3866 = shl i32 %3865, 4
  %3867 = and i32 %3866, 32752
  %3868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3867)  ; LegacyF16ToF32(value)
  %3869 = fmul fast float %3868, %3835
  %3870 = call float @dx.op.binary.f32(i32 35, float %3869, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3871

; <label>:3871                                    ; preds = %3863, %3857, %3799
  %3872 = phi float [ %3858, %3863 ], [ %3858, %3857 ], [ 0.000000e+00, %3799 ]
  %3873 = phi float [ %3859, %3863 ], [ %3859, %3857 ], [ 0.000000e+00, %3799 ]
  %3874 = phi float [ %3860, %3863 ], [ %3860, %3857 ], [ 0.000000e+00, %3799 ]
  %3875 = phi float [ %3870, %3863 ], [ 0x3F70101020000000, %3857 ], [ 0x3F70101020000000, %3799 ]
  %3876 = add i32 %35, 144
  %3877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.i32 %3877, 0
  %3879 = and i32 %3878, 255
  %3880 = uitofp i32 %3879 to float
  %3881 = lshr i32 %3878, 8
  %3882 = and i32 %3881, 255
  %3883 = uitofp i32 %3882 to float
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3634, float %3635, float %3636, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = fmul fast float %3883, %3884
  %3886 = fadd fast float %3885, %3880
  %3887 = fmul fast float %3886, 0x3F70101020000000
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  br i1 %3118, label %3889, label %3924

; <label>:3889                                    ; preds = %3871
  %3890 = fmul fast float %3875, 2.000000e+00
  %3891 = fcmp fast olt float %3820, 1.270000e+02
  %3892 = fcmp fast olt float %3821, 1.270000e+02
  %3893 = fcmp fast olt float %3822, 1.270000e+02
  %3894 = fmul fast float %3820, 0xBFF7154760000000
  %3895 = fmul fast float %3894, %3890
  %3896 = fmul fast float %3821, 0xBFF7154760000000
  %3897 = fmul fast float %3896, %3890
  %3898 = fmul fast float %3822, 0xBFF7154760000000
  %3899 = fmul fast float %3898, %3890
  %3900 = call float @dx.op.unary.f32(i32 21, float %3895)  ; Exp(value)
  %3901 = call float @dx.op.unary.f32(i32 21, float %3897)  ; Exp(value)
  %3902 = call float @dx.op.unary.f32(i32 21, float %3899)  ; Exp(value)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3904 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3906 = fadd fast float %3903, -1.000000e+00
  %3907 = select i1 %3891, float %3906, float -1.000000e+00
  %3908 = fadd fast float %3904, -1.000000e+00
  %3909 = select i1 %3892, float %3908, float -1.000000e+00
  %3910 = fadd fast float %3905, -1.000000e+00
  %3911 = select i1 %3893, float %3910, float -1.000000e+00
  %3912 = fmul fast float %3907, %3414
  %3913 = fmul fast float %3909, %3414
  %3914 = fmul fast float %3911, %3414
  %3915 = fadd fast float %3912, 1.000000e+00
  %3916 = fadd fast float %3913, 1.000000e+00
  %3917 = fadd fast float %3914, 1.000000e+00
  %3918 = fmul fast float %3915, %3100
  %3919 = fmul fast float %3916, %3101
  %3920 = fmul fast float %3917, %3102
  %3921 = fmul fast float %3915, %3109
  %3922 = fmul fast float %3916, %3110
  %3923 = fmul fast float %3917, %3111
  br label %3924

; <label>:3924                                    ; preds = %3889, %3871
  %3925 = phi float [ %3918, %3889 ], [ %3100, %3871 ]
  %3926 = phi float [ %3919, %3889 ], [ %3101, %3871 ]
  %3927 = phi float [ %3920, %3889 ], [ %3102, %3871 ]
  %3928 = phi float [ %3921, %3889 ], [ %3109, %3871 ]
  %3929 = phi float [ %3922, %3889 ], [ %3110, %3871 ]
  %3930 = phi float [ %3923, %3889 ], [ %3111, %3871 ]
  %3931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.i32 %3931, 0
  %3933 = and i32 %3932, 3
  %3934 = icmp eq i32 %3933, 3
  br i1 %3934, label %4013, label %3935

; <label>:3935                                    ; preds = %3924
  %3936 = and i32 %3932, 16
  %3937 = icmp ne i32 %3936, 0
  %3938 = select i1 %3937, float %3414, float 0.000000e+00
  %3939 = icmp eq i32 %3933, 0
  br i1 %3939, label %3940, label %3968

; <label>:3940                                    ; preds = %3935
  %3941 = and i32 %3932, 64
  %3942 = icmp ne i32 %3941, 0
  %3943 = select i1 %3942, float %3414, float 0.000000e+00
  %3944 = fsub fast float %3634, %3925
  %3945 = fsub fast float %3635, %3926
  %3946 = fsub fast float %3636, %3927
  %3947 = fmul fast float %3938, %3944
  %3948 = fmul fast float %3938, %3945
  %3949 = fmul fast float %3938, %3946
  %3950 = fadd fast float %3947, %3925
  %3951 = fadd fast float %3948, %3926
  %3952 = fadd fast float %3949, %3927
  %3953 = fsub fast float %3620, %3112
  %3954 = fmul fast float %3938, %3953
  %3955 = fadd fast float %3954, %3112
  %3956 = fsub fast float %3762, %3928
  %3957 = fsub fast float %3763, %3929
  %3958 = fsub fast float %3764, %3930
  %3959 = fmul fast float %3943, %3956
  %3960 = fmul fast float %3943, %3957
  %3961 = fmul fast float %3943, %3958
  %3962 = fadd fast float %3959, %3928
  %3963 = fadd fast float %3960, %3929
  %3964 = fadd fast float %3961, %3930
  %3965 = fsub fast float %3888, %3116
  %3966 = fmul fast float %3938, %3965
  %3967 = fadd fast float %3966, %3116
  br label %4013

; <label>:3968                                    ; preds = %3935
  %3969 = icmp eq i32 %3933, 1
  br i1 %3969, label %3970, label %3983

; <label>:3970                                    ; preds = %3968
  %3971 = fadd fast float %3634, -1.000000e+00
  %3972 = fadd fast float %3635, -1.000000e+00
  %3973 = fadd fast float %3636, -1.000000e+00
  %3974 = fmul fast float %3938, %3971
  %3975 = fmul fast float %3938, %3972
  %3976 = fmul fast float %3938, %3973
  %3977 = fadd fast float %3974, 1.000000e+00
  %3978 = fadd fast float %3975, 1.000000e+00
  %3979 = fadd fast float %3976, 1.000000e+00
  %3980 = fmul fast float %3977, %3925
  %3981 = fmul fast float %3978, %3926
  %3982 = fmul fast float %3979, %3927
  br label %4013

; <label>:3983                                    ; preds = %3968
  %3984 = icmp eq i32 %3933, 2
  br i1 %3984, label %3985, label %4013

; <label>:3985                                    ; preds = %3983
  %3986 = call float @dx.op.unary.f32(i32 24, float %3634)  ; Sqrt(value)
  %3987 = call float @dx.op.unary.f32(i32 24, float %3635)  ; Sqrt(value)
  %3988 = call float @dx.op.unary.f32(i32 24, float %3636)  ; Sqrt(value)
  %3989 = fadd fast float %3986, -5.000000e-01
  %3990 = fadd fast float %3987, -5.000000e-01
  %3991 = fadd fast float %3988, -5.000000e-01
  %3992 = fmul fast float %3989, %3938
  %3993 = fmul fast float %3990, %3938
  %3994 = fmul fast float %3991, %3938
  %3995 = fadd fast float %3992, 5.000000e-01
  %3996 = fadd fast float %3993, 5.000000e-01
  %3997 = fadd fast float %3994, 5.000000e-01
  %3998 = fmul fast float %3995, 2.000000e+00
  %3999 = fsub fast float 1.000000e+00, %3998
  %4000 = fmul fast float %3999, %3925
  %4001 = fadd fast float %4000, %3998
  %4002 = fmul fast float %4001, %3925
  %4003 = fmul fast float %3996, 2.000000e+00
  %4004 = fsub fast float 1.000000e+00, %4003
  %4005 = fmul fast float %4004, %3926
  %4006 = fadd fast float %4005, %4003
  %4007 = fmul fast float %4006, %3926
  %4008 = fmul fast float %3997, 2.000000e+00
  %4009 = fsub fast float 1.000000e+00, %4008
  %4010 = fmul fast float %4009, %3927
  %4011 = fadd fast float %4010, %4008
  %4012 = fmul fast float %4011, %3927
  br label %4013

; <label>:4013                                    ; preds = %3985, %3983, %3970, %3940, %3924
  %4014 = phi float [ %3925, %3924 ], [ %4002, %3985 ], [ %3925, %3983 ], [ %3980, %3970 ], [ %3950, %3940 ]
  %4015 = phi float [ %3926, %3924 ], [ %4007, %3985 ], [ %3926, %3983 ], [ %3981, %3970 ], [ %3951, %3940 ]
  %4016 = phi float [ %3927, %3924 ], [ %4012, %3985 ], [ %3927, %3983 ], [ %3982, %3970 ], [ %3952, %3940 ]
  %4017 = phi float [ %3928, %3924 ], [ %3928, %3985 ], [ %3928, %3983 ], [ %3928, %3970 ], [ %3962, %3940 ]
  %4018 = phi float [ %3929, %3924 ], [ %3929, %3985 ], [ %3929, %3983 ], [ %3929, %3970 ], [ %3963, %3940 ]
  %4019 = phi float [ %3930, %3924 ], [ %3930, %3985 ], [ %3930, %3983 ], [ %3930, %3970 ], [ %3964, %3940 ]
  %4020 = phi float [ %3112, %3924 ], [ %3112, %3985 ], [ %3112, %3983 ], [ %3112, %3970 ], [ %3955, %3940 ]
  %4021 = phi float [ %3116, %3924 ], [ %3116, %3985 ], [ %3116, %3983 ], [ %3116, %3970 ], [ %3967, %3940 ]
  %4022 = and i32 %3932, 12
  %4023 = icmp eq i32 %4022, 12
  br i1 %4023, label %4154, label %4024

; <label>:4024                                    ; preds = %4013
  %4025 = and i32 %3932, 2097184
  %4026 = icmp eq i32 %4025, 2097184
  %4027 = select i1 %4026, float %3414, float 0.000000e+00
  %4028 = and i32 %3932, 4194336
  %4029 = icmp eq i32 %4028, 4194336
  %4030 = select i1 %4029, float %3414, float 0.000000e+00
  %4031 = and i32 %3932, 8388640
  %4032 = icmp eq i32 %4031, 8388640
  %4033 = select i1 %4032, float %3414, float 0.000000e+00
  %4034 = and i32 %3932, 1024
  %4035 = icmp ne i32 %4034, 0
  %4036 = select i1 %4035, float %3414, float 0.000000e+00
  %4037 = and i32 %3932, 2048
  %4038 = icmp ne i32 %4037, 0
  %4039 = select i1 %4038, float %3414, float 0.000000e+00
  %4040 = and i32 %3932, 8192
  %4041 = icmp ne i32 %4040, 0
  %4042 = select i1 %4041, float %3414, float 0.000000e+00
  %4043 = icmp eq i32 %4022, 0
  br i1 %4043, label %4044, label %4078

; <label>:4044                                    ; preds = %4024
  %4045 = fsub fast float %3715, %3098
  %4046 = fsub fast float %3716, %3099
  %4047 = fmul fast float %4027, %4045
  %4048 = fmul fast float %4027, %4046
  %4049 = fadd fast float %4047, %3098
  %4050 = fadd fast float %4048, %3099
  %4051 = fsub fast float %3717, %3114
  %4052 = fmul fast float %4030, %4051
  %4053 = fadd fast float %4052, %3114
  %4054 = fsub fast float %3714, %3113
  %4055 = fmul fast float %4033, %4054
  %4056 = fadd fast float %4055, %3113
  %4057 = fsub fast float %3820, %3103
  %4058 = fsub fast float %3821, %3104
  %4059 = fsub fast float %3822, %3105
  %4060 = fmul fast float %4036, %4057
  %4061 = fmul fast float %4036, %4058
  %4062 = fmul fast float %4036, %4059
  %4063 = fadd fast float %4060, %3103
  %4064 = fadd fast float %4061, %3104
  %4065 = fadd fast float %4062, %3105
  %4066 = fsub fast float %3875, %3115
  %4067 = fmul fast float %4039, %4066
  %4068 = fadd fast float %4067, %3115
  %4069 = fsub fast float %3872, %3106
  %4070 = fsub fast float %3873, %3107
  %4071 = fsub fast float %3874, %3108
  %4072 = fmul fast float %4042, %4069
  %4073 = fmul fast float %4042, %4070
  %4074 = fmul fast float %4042, %4071
  %4075 = fadd fast float %4072, %3106
  %4076 = fadd fast float %4073, %3107
  %4077 = fadd fast float %4074, %3108
  br label %4154

; <label>:4078                                    ; preds = %4024
  %4079 = icmp eq i32 %4022, 4
  br i1 %4079, label %4080, label %4126

; <label>:4080                                    ; preds = %4078
  %4081 = fmul fast float %4027, %3715
  %4082 = fmul fast float %4027, %3716
  %4083 = fadd fast float %4081, %3098
  %4084 = fadd fast float %4082, %3099
  %4085 = call float @dx.op.binary.f32(i32 36, float %3114, float %3717)  ; FMin(a,b)
  %4086 = fsub fast float %4085, %3114
  %4087 = fmul fast float %4086, %4030
  %4088 = fadd fast float %4087, %3114
  %4089 = fadd fast float %3714, %3113
  %4090 = fmul fast float %4089, 0x3FF337FAE0000000
  %4091 = fmul fast float %3113, %3113
  %4092 = fmul fast float %3714, %3714
  %4093 = fadd fast float %4092, %4091
  %4094 = fmul fast float %4093, 0x3FE5152B00000000
  %4095 = fmul fast float %3113, 0xBFCC1F85E0000000
  %4096 = fmul fast float %4095, %3714
  %4097 = fadd fast float %4096, 0xBFE1363700000000
  %4098 = fadd fast float %4097, %4090
  %4099 = fsub fast float %4098, %4094
  %4100 = fmul fast float %4089, 0x3FBA6F0D00000000
  %4101 = fmul fast float %4093, 0x3FD0432880000000
  %4102 = fmul fast float %3113, 0xBFEF110800000000
  %4103 = fmul fast float %4102, %3714
  %4104 = fadd fast float %4103, 1.000000e+00
  %4105 = fsub fast float %4104, %4100
  %4106 = fadd fast float %4105, %4101
  %4107 = fdiv fast float %4099, %4106
  %4108 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4109 = fsub fast float %4108, %3113
  %4110 = fmul fast float %4109, %4033
  %4111 = fadd fast float %4110, %3113
  %4112 = fmul fast float %4036, %3820
  %4113 = fmul fast float %4036, %3821
  %4114 = fmul fast float %4036, %3822
  %4115 = fadd fast float %4112, %3103
  %4116 = fadd fast float %4113, %3104
  %4117 = fadd fast float %4114, %3105
  %4118 = fmul fast float %4039, %3875
  %4119 = fadd fast float %4118, %3115
  %4120 = fmul fast float %4042, %3872
  %4121 = fmul fast float %4042, %3873
  %4122 = fmul fast float %4042, %3874
  %4123 = fadd fast float %4120, %3106
  %4124 = fadd fast float %4121, %3107
  %4125 = fadd fast float %4122, %3108
  br label %4154

; <label>:4126                                    ; preds = %4078
  %4127 = icmp eq i32 %4022, 8
  br i1 %4127, label %4128, label %4154

; <label>:4128                                    ; preds = %4126
  %4129 = fmul fast float %4027, %3715
  %4130 = fmul fast float %4027, %3716
  %4131 = fadd fast float %4129, %3098
  %4132 = fadd fast float %4130, %3099
  %4133 = call float @dx.op.binary.f32(i32 36, float %3114, float %3717)  ; FMin(a,b)
  %4134 = fsub fast float %4133, %3114
  %4135 = fmul fast float %4134, %4030
  %4136 = fadd fast float %4135, %3114
  %4137 = fsub fast float %3714, %3113
  %4138 = fmul fast float %4033, %4137
  %4139 = fadd fast float %4138, %3113
  %4140 = fmul fast float %4036, %3820
  %4141 = fmul fast float %4036, %3821
  %4142 = fmul fast float %4036, %3822
  %4143 = fadd fast float %4140, %3103
  %4144 = fadd fast float %4141, %3104
  %4145 = fadd fast float %4142, %3105
  %4146 = fmul fast float %4039, %3875
  %4147 = fadd fast float %4146, %3115
  %4148 = fmul fast float %4042, %3872
  %4149 = fmul fast float %4042, %3873
  %4150 = fmul fast float %4042, %3874
  %4151 = fadd fast float %4148, %3106
  %4152 = fadd fast float %4149, %3107
  %4153 = fadd fast float %4150, %3108
  br label %4154

; <label>:4154                                    ; preds = %4128, %4126, %4080, %4044, %4013, %3413, %3117, %3097
  %4155 = phi float [ %3098, %4013 ], [ %3098, %3413 ], [ %3098, %3097 ], [ %3098, %3117 ], [ %4049, %4044 ], [ %4083, %4080 ], [ %3098, %4126 ], [ %4131, %4128 ]
  %4156 = phi float [ %3099, %4013 ], [ %3099, %3413 ], [ %3099, %3097 ], [ %3099, %3117 ], [ %4050, %4044 ], [ %4084, %4080 ], [ %3099, %4126 ], [ %4132, %4128 ]
  %4157 = phi float [ %4014, %4013 ], [ %3100, %3413 ], [ %3100, %3097 ], [ %3100, %3117 ], [ %4014, %4044 ], [ %4014, %4080 ], [ %4014, %4126 ], [ %4014, %4128 ]
  %4158 = phi float [ %4015, %4013 ], [ %3101, %3413 ], [ %3101, %3097 ], [ %3101, %3117 ], [ %4015, %4044 ], [ %4015, %4080 ], [ %4015, %4126 ], [ %4015, %4128 ]
  %4159 = phi float [ %4016, %4013 ], [ %3102, %3413 ], [ %3102, %3097 ], [ %3102, %3117 ], [ %4016, %4044 ], [ %4016, %4080 ], [ %4016, %4126 ], [ %4016, %4128 ]
  %4160 = phi float [ %3103, %4013 ], [ %3103, %3413 ], [ %3103, %3097 ], [ %3103, %3117 ], [ %4063, %4044 ], [ %4115, %4080 ], [ %3103, %4126 ], [ %4143, %4128 ]
  %4161 = phi float [ %3104, %4013 ], [ %3104, %3413 ], [ %3104, %3097 ], [ %3104, %3117 ], [ %4064, %4044 ], [ %4116, %4080 ], [ %3104, %4126 ], [ %4144, %4128 ]
  %4162 = phi float [ %3105, %4013 ], [ %3105, %3413 ], [ %3105, %3097 ], [ %3105, %3117 ], [ %4065, %4044 ], [ %4117, %4080 ], [ %3105, %4126 ], [ %4145, %4128 ]
  %4163 = phi float [ %3106, %4013 ], [ %3106, %3413 ], [ %3106, %3097 ], [ %3106, %3117 ], [ %4075, %4044 ], [ %4123, %4080 ], [ %3106, %4126 ], [ %4151, %4128 ]
  %4164 = phi float [ %3107, %4013 ], [ %3107, %3413 ], [ %3107, %3097 ], [ %3107, %3117 ], [ %4076, %4044 ], [ %4124, %4080 ], [ %3107, %4126 ], [ %4152, %4128 ]
  %4165 = phi float [ %3108, %4013 ], [ %3108, %3413 ], [ %3108, %3097 ], [ %3108, %3117 ], [ %4077, %4044 ], [ %4125, %4080 ], [ %3108, %4126 ], [ %4153, %4128 ]
  %4166 = phi float [ %4017, %4013 ], [ %3109, %3413 ], [ %3109, %3097 ], [ %3109, %3117 ], [ %4017, %4044 ], [ %4017, %4080 ], [ %4017, %4126 ], [ %4017, %4128 ]
  %4167 = phi float [ %4018, %4013 ], [ %3110, %3413 ], [ %3110, %3097 ], [ %3110, %3117 ], [ %4018, %4044 ], [ %4018, %4080 ], [ %4018, %4126 ], [ %4018, %4128 ]
  %4168 = phi float [ %4019, %4013 ], [ %3111, %3413 ], [ %3111, %3097 ], [ %3111, %3117 ], [ %4019, %4044 ], [ %4019, %4080 ], [ %4019, %4126 ], [ %4019, %4128 ]
  %4169 = phi float [ %4020, %4013 ], [ %3112, %3413 ], [ %3112, %3097 ], [ %3112, %3117 ], [ %4020, %4044 ], [ %4020, %4080 ], [ %4020, %4126 ], [ %4020, %4128 ]
  %4170 = phi float [ %3113, %4013 ], [ %3113, %3413 ], [ %3113, %3097 ], [ %3113, %3117 ], [ %4056, %4044 ], [ %4111, %4080 ], [ %3113, %4126 ], [ %4139, %4128 ]
  %4171 = phi float [ %3114, %4013 ], [ %3114, %3413 ], [ %3114, %3097 ], [ %3114, %3117 ], [ %4053, %4044 ], [ %4088, %4080 ], [ %3114, %4126 ], [ %4136, %4128 ]
  %4172 = phi float [ %3115, %4013 ], [ %3115, %3413 ], [ %3115, %3097 ], [ %3115, %3117 ], [ %4068, %4044 ], [ %4119, %4080 ], [ %3115, %4126 ], [ %4147, %4128 ]
  %4173 = phi float [ %4021, %4013 ], [ %3116, %3413 ], [ %3116, %3097 ], [ %3116, %3117 ], [ %4021, %4044 ], [ %4021, %4080 ], [ %4021, %4126 ], [ %4021, %4128 ]
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4176 = call float @dx.op.dot2.f32(i32 54, float %4155, float %4156, float %4155, float %4156)  ; Dot2(ax,ay,bx,by)
  %4177 = fmul fast float %4176, 0x3FE3333340000000
  %4178 = fsub fast float 1.000000e+00, %4177
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4155, float %4156, float %4178, float %4155, float %4156, float %4178)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call float @dx.op.unary.f32(i32 25, float %4179)  ; Rsqrt(value)
  %4181 = fmul fast float %4180, %4155
  %4182 = fmul fast float %4180, %4156
  %4183 = fmul fast float %4178, %4180
  %4184 = fmul fast float %4183, %84
  %4185 = fmul fast float %4183, %86
  %4186 = fmul fast float %4183, %88
  %4187 = fmul fast float %4181, %56
  %4188 = fmul fast float %4181, %57
  %4189 = fmul fast float %4181, %58
  %4190 = fadd fast float %4184, %4187
  %4191 = fadd fast float %4185, %4188
  %4192 = fadd fast float %4186, %4189
  %4193 = fmul fast float %98, %4182
  %4194 = fmul fast float %99, %4182
  %4195 = fmul fast float %100, %4182
  %4196 = fadd fast float %4190, %4193
  %4197 = fadd fast float %4191, %4194
  %4198 = fadd fast float %4192, %4195
  %4199 = call float @dx.op.dot3.f32(i32 55, float %4196, float %4197, float %4198, float %4196, float %4197, float %4198)  ; Dot3(ax,ay,az,bx,by,bz)
  %4200 = call float @dx.op.unary.f32(i32 25, float %4199)  ; Rsqrt(value)
  %4201 = fmul fast float %4196, %4200
  %4202 = fmul fast float %4197, %4200
  %4203 = fmul fast float %4198, %4200
  %4204 = and i32 %37, 1
  %4205 = icmp eq i32 %4204, 0
  br i1 %4205, label %4206, label %4798

; <label>:4206                                    ; preds = %4154
  %4207 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %4208 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %4209 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %4210 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %4211 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %4212 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %4213 = fadd fast float %4207, %134
  %4214 = fadd fast float %4208, %135
  %4215 = fadd fast float %4209, %136
  %4216 = fadd fast float %4210, %134
  %4217 = fadd fast float %4211, %135
  %4218 = fadd fast float %4212, %136
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 2
  %4225 = extractvalue %dx.types.CBufRet.f32 %4223, 3
  %4226 = fmul fast float %4220, %75
  %4227 = fmul fast float %4226, %4224
  %4228 = fmul fast float %4221, %76
  %4229 = fmul fast float %4228, %4225
  %4230 = fptoui float %4227 to i32
  %4231 = fptoui float %4229 to i32
  %4232 = fadd fast float %4220, -1.000000e+00
  %4233 = fadd fast float %4221, -1.000000e+00
  %4234 = fptoui float %4232 to i32
  %4235 = fptoui float %4233 to i32
  %4236 = call i32 @dx.op.binary.i32(i32 40, i32 %4230, i32 %4234)  ; UMin(a,b)
  %4237 = call i32 @dx.op.binary.i32(i32 40, i32 %4231, i32 %4235)  ; UMin(a,b)
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4240 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4241 = fmul fast float %4239, %70
  %4242 = fsub fast float %4241, %4240
  %4243 = fadd fast float %4222, -1.000000e+00
  %4244 = call float @dx.op.binary.f32(i32 36, float %4242, float %4243)  ; FMin(a,b)
  %4245 = fptoui float %4244 to i32
  %4246 = fptoui float %4220 to i32
  %4247 = fptoui float %4221 to i32
  %4248 = mul i32 %4245, %4247
  %4249 = add i32 %4248, %4237
  %4250 = mul i32 %4249, %4246
  %4251 = add i32 %4250, %4236
  %4252 = shl i32 %4251, 2
  %4253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.i32 %4253, 0
  %4255 = and i32 %4254, 1023
  %4256 = lshr i32 %4254, 10
  %4257 = icmp eq i32 %4255, 0
  br i1 %4257, label %4761, label %4258

; <label>:4258                                    ; preds = %4206
  %4259 = and i32 %4254, 1023
  br label %4260

; <label>:4260                                    ; preds = %4392, %4258
  %4261 = phi i32 [ %4342, %4392 ], [ 0, %4258 ]
  %4262 = phi float [ %4393, %4392 ], [ 0.000000e+00, %4258 ]
  %4263 = phi float [ %4394, %4392 ], [ %4175, %4258 ]
  %4264 = phi float [ %4395, %4392 ], [ %4173, %4258 ]
  %4265 = phi float [ %4396, %4392 ], [ %4160, %4258 ]
  %4266 = phi float [ %4397, %4392 ], [ %4161, %4258 ]
  %4267 = phi float [ %4398, %4392 ], [ %4162, %4258 ]
  %4268 = phi float [ %4399, %4392 ], [ 0.000000e+00, %4258 ]
  %4269 = phi float [ %4400, %4392 ], [ 0.000000e+00, %4258 ]
  %4270 = phi float [ %4401, %4392 ], [ %4163, %4258 ]
  %4271 = phi float [ %4402, %4392 ], [ %4164, %4258 ]
  %4272 = phi float [ %4403, %4392 ], [ %4165, %4258 ]
  %4273 = phi float [ %4404, %4392 ], [ %4166, %4258 ]
  %4274 = phi float [ %4405, %4392 ], [ %4167, %4258 ]
  %4275 = phi float [ %4406, %4392 ], [ %4168, %4258 ]
  %4276 = phi float [ %4407, %4392 ], [ %4201, %4258 ]
  %4277 = phi float [ %4408, %4392 ], [ %4202, %4258 ]
  %4278 = phi float [ %4409, %4392 ], [ %4203, %4258 ]
  %4279 = phi float [ %4410, %4392 ], [ %4171, %4258 ]
  %4280 = phi float [ %4411, %4392 ], [ %4170, %4258 ]
  %4281 = phi float [ %4412, %4392 ], [ 0.000000e+00, %4258 ]
  %4282 = phi float [ %4413, %4392 ], [ %4169, %4258 ]
  %4283 = phi float [ %4414, %4392 ], [ %4157, %4258 ]
  %4284 = phi float [ %4415, %4392 ], [ %4158, %4258 ]
  %4285 = phi float [ %4416, %4392 ], [ %4159, %4258 ]
  %4286 = add nuw nsw i32 %4261, %4256
  %4287 = shl i32 %4286, 2
  %4288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.i32 %4288, 0
  %4290 = shl i32 %4289, 8
  %4291 = or i32 %4290, 48
  %4292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.f32 %4292, 1
  %4295 = extractvalue %dx.types.ResRet.f32 %4292, 2
  %4296 = extractvalue %dx.types.ResRet.f32 %4292, 3
  %4297 = or i32 %4290, 64
  %4298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4297, i32 undef)  ; BufferLoad(srv,index,wot)
  %4299 = extractvalue %dx.types.ResRet.i32 %4298, 0
  %4300 = extractvalue %dx.types.ResRet.i32 %4298, 1
  %4301 = or i32 %4290, 80
  %4302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.f32 %4302, 2
  %4304 = extractvalue %dx.types.ResRet.f32 %4302, 3
  %4305 = or i32 %4290, 96
  %4306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = extractvalue %dx.types.ResRet.f32 %4306, 1
  %4309 = extractvalue %dx.types.ResRet.f32 %4306, 2
  %4310 = extractvalue %dx.types.ResRet.f32 %4306, 3
  %4311 = or i32 %4290, 112
  %4312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 2
  %4314 = or i32 %4290, 128
  %4315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.ResRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.ResRet.f32 %4315, 2
  %4319 = extractvalue %dx.types.ResRet.f32 %4315, 3
  %4320 = or i32 %4290, 144
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.ResRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.ResRet.f32 %4321, 2
  %4325 = extractvalue %dx.types.ResRet.f32 %4321, 3
  %4326 = or i32 %4290, 160
  %4327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.ResRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.ResRet.f32 %4327, 2
  %4331 = extractvalue %dx.types.ResRet.f32 %4327, 3
  %4332 = or i32 %4290, 192
  %4333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.i32 %4333, 0
  %4335 = or i32 %4290, 208
  %4336 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4335, i32 undef)  ; BufferLoad(srv,index,wot)
  %4337 = extractvalue %dx.types.ResRet.f32 %4336, 0
  %4338 = or i32 %4290, 248
  %4339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.f32 %4339, 0
  %4341 = extractvalue %dx.types.ResRet.f32 %4339, 1
  %4342 = add nuw nsw i32 %4261, 1
  %4343 = bitcast float %4296 to i32
  %4344 = and i32 %4343, 512
  %4345 = icmp eq i32 %4344, 0
  %4346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = extractvalue %dx.types.ResRet.f32 %4346, 3
  %4351 = call float @dx.op.dot4.f32(i32 56, float %4347, float %4348, float %4349, float %4350, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4352 = or i32 %4290, 16
  %4353 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.f32 %4353, 0
  %4355 = extractvalue %dx.types.ResRet.f32 %4353, 1
  %4356 = extractvalue %dx.types.ResRet.f32 %4353, 2
  %4357 = extractvalue %dx.types.ResRet.f32 %4353, 3
  %4358 = call float @dx.op.dot4.f32(i32 56, float %4354, float %4355, float %4356, float %4357, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4359 = or i32 %4290, 32
  %4360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.ResRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.ResRet.f32 %4360, 2
  %4364 = extractvalue %dx.types.ResRet.f32 %4360, 3
  %4365 = call float @dx.op.dot4.f32(i32 56, float %4361, float %4362, float %4363, float %4364, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4366 = call float @dx.op.unary.f32(i32 27, float %4351)  ; Round_ni(value)
  %4367 = call float @dx.op.unary.f32(i32 6, float %4366)  ; FAbs(value)
  %4368 = call float @dx.op.unary.f32(i32 27, float %4358)  ; Round_ni(value)
  %4369 = call float @dx.op.unary.f32(i32 6, float %4368)  ; FAbs(value)
  %4370 = call float @dx.op.unary.f32(i32 6, float %4365)  ; FAbs(value)
  %4371 = call float @dx.op.unary.f32(i32 27, float %4370)  ; Round_ni(value)
  %4372 = fadd fast float %4369, %4367
  %4373 = fadd fast float %4372, %4371
  %4374 = fcmp fast oeq float %4373, 0.000000e+00
  %4375 = call float @dx.op.dot4.f32(i32 56, float %4347, float %4348, float %4349, float %4350, float %4213, float %4214, float %4215, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4376 = call float @dx.op.dot4.f32(i32 56, float %4354, float %4355, float %4356, float %4357, float %4213, float %4214, float %4215, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4377 = call float @dx.op.dot4.f32(i32 56, float %4347, float %4348, float %4349, float %4350, float %4216, float %4217, float %4218, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4378 = call float @dx.op.dot4.f32(i32 56, float %4354, float %4355, float %4356, float %4357, float %4216, float %4217, float %4218, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4379 = fsub fast float %4375, %4351
  %4380 = fsub fast float %4377, %4351
  %4381 = fsub fast float %4376, %4358
  %4382 = fsub fast float %4378, %4358
  %4383 = call float @dx.op.dot3.f32(i32 55, float %4293, float %4294, float %4295, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4386 = fadd fast float %4385, %4383
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4389 = fcmp fast ogt float %4387, %4388
  %4390 = and i1 %4374, %4389
  %4391 = and i1 %4345, %4390
  br i1 %4391, label %4418, label %4392

; <label>:4392                                    ; preds = %4747, %4499, %4418, %4260
  %4393 = phi float [ %4262, %4418 ], [ %4502, %4499 ], [ %4502, %4747 ], [ %4262, %4260 ]
  %4394 = phi float [ %4263, %4418 ], [ %4263, %4499 ], [ %4723, %4747 ], [ %4263, %4260 ]
  %4395 = phi float [ %4264, %4418 ], [ %4264, %4499 ], [ %4721, %4747 ], [ %4264, %4260 ]
  %4396 = phi float [ %4265, %4418 ], [ %4265, %4499 ], [ %4699, %4747 ], [ %4265, %4260 ]
  %4397 = phi float [ %4266, %4418 ], [ %4266, %4499 ], [ %4700, %4747 ], [ %4266, %4260 ]
  %4398 = phi float [ %4267, %4418 ], [ %4267, %4499 ], [ %4701, %4747 ], [ %4267, %4260 ]
  %4399 = phi float [ %4268, %4418 ], [ %4268, %4499 ], [ %4626, %4747 ], [ %4268, %4260 ]
  %4400 = phi float [ %4269, %4418 ], [ %4269, %4499 ], [ %4624, %4747 ], [ %4269, %4260 ]
  %4401 = phi float [ %4270, %4418 ], [ %4270, %4499 ], [ %4669, %4747 ], [ %4270, %4260 ]
  %4402 = phi float [ %4271, %4418 ], [ %4271, %4499 ], [ %4670, %4747 ], [ %4271, %4260 ]
  %4403 = phi float [ %4272, %4418 ], [ %4272, %4499 ], [ %4671, %4747 ], [ %4272, %4260 ]
  %4404 = phi float [ %4273, %4418 ], [ %4273, %4499 ], [ %4757, %4747 ], [ %4273, %4260 ]
  %4405 = phi float [ %4274, %4418 ], [ %4274, %4499 ], [ %4758, %4747 ], [ %4274, %4260 ]
  %4406 = phi float [ %4275, %4418 ], [ %4275, %4499 ], [ %4759, %4747 ], [ %4275, %4260 ]
  %4407 = phi float [ %4276, %4418 ], [ %4276, %4499 ], [ %4605, %4747 ], [ %4276, %4260 ]
  %4408 = phi float [ %4277, %4418 ], [ %4277, %4499 ], [ %4606, %4747 ], [ %4277, %4260 ]
  %4409 = phi float [ %4278, %4418 ], [ %4278, %4499 ], [ %4607, %4747 ], [ %4278, %4260 ]
  %4410 = phi float [ %4279, %4418 ], [ %4279, %4499 ], [ %4679, %4747 ], [ %4279, %4260 ]
  %4411 = phi float [ %4280, %4418 ], [ %4280, %4499 ], [ %4676, %4747 ], [ %4280, %4260 ]
  %4412 = phi float [ %4281, %4418 ], [ %4281, %4499 ], [ %4673, %4747 ], [ %4281, %4260 ]
  %4413 = phi float [ %4282, %4418 ], [ %4282, %4499 ], [ %4622, %4747 ], [ %4282, %4260 ]
  %4414 = phi float [ %4283, %4418 ], [ %4283, %4499 ], [ %4617, %4747 ], [ %4283, %4260 ]
  %4415 = phi float [ %4284, %4418 ], [ %4284, %4499 ], [ %4618, %4747 ], [ %4284, %4260 ]
  %4416 = phi float [ %4285, %4418 ], [ %4285, %4499 ], [ %4619, %4747 ], [ %4285, %4260 ]
  %4417 = icmp eq i32 %4342, %4259
  br i1 %4417, label %4760, label %4260

; <label>:4418                                    ; preds = %4260
  %4419 = extractvalue %dx.types.ResRet.f32 %4312, 3
  %4420 = extractvalue %dx.types.ResRet.f32 %4312, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4422 = extractvalue %dx.types.ResRet.f32 %4302, 1
  %4423 = extractvalue %dx.types.ResRet.f32 %4302, 0
  %4424 = extractvalue %dx.types.ResRet.i32 %4298, 3
  %4425 = extractvalue %dx.types.ResRet.i32 %4298, 2
  %4426 = add i32 %4424, 0
  %4427 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4426, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4429 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4427, %dx.types.Handle %4428, float %4351, float %4358, float undef, float undef, i32 0, i32 0, i32 undef, float %4379, float %4381, float undef, float %4380, float %4382, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = fmul fast float %4430, %4423
  %4432 = fadd fast float %4431, %4422
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fmul fast float %4351, %4307
  %4435 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4358, float %4434)  ; FMad(a,b,c)
  %4436 = fadd fast float %4435, %4421
  %4437 = fmul fast float %4351, %4309
  %4438 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4358, float %4437)  ; FMad(a,b,c)
  %4439 = fadd fast float %4438, %4420
  %4440 = fmul fast float %4379, %4307
  %4441 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4381, float %4440)  ; FMad(a,b,c)
  %4442 = fmul fast float %4379, %4309
  %4443 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4381, float %4442)  ; FMad(a,b,c)
  %4444 = fmul fast float %4380, %4307
  %4445 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4382, float %4444)  ; FMad(a,b,c)
  %4446 = fmul fast float %4380, %4309
  %4447 = call float @dx.op.tertiary.f32(i32 46, float %4310, float %4382, float %4446)  ; FMad(a,b,c)
  %4448 = add i32 %4425, 0
  %4449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4448, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4450 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4449, %dx.types.Handle %4428, float %4436, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4441, float %4443, float undef, float %4445, float %4447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = and i32 %4343, 1024
  %4453 = icmp ne i32 %4452, 0
  %4454 = fcmp fast ogt float %4451, 0x3FE0101020000000
  %4455 = uitofp i1 %4454 to float
  %4456 = select i1 %4453, float %4455, float %4451
  %4457 = and i32 %4343, 8192
  %4458 = icmp ne i32 %4457, 0
  %4459 = select i1 %4458, float %4419, float 1.000000e+00
  %4460 = fmul fast float %4351, 2.000000e+00
  %4461 = fadd fast float %4460, -1.000000e+00
  %4462 = call float @dx.op.unary.f32(i32 6, float %4461)  ; FAbs(value)
  %4463 = fmul fast float %4462, %4340
  %4464 = fsub fast float %4463, %4340
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = fmul fast float %4358, 2.000000e+00
  %4467 = fadd fast float %4466, -1.000000e+00
  %4468 = call float @dx.op.unary.f32(i32 6, float %4467)  ; FAbs(value)
  %4469 = fmul fast float %4468, %4341
  %4470 = fsub fast float %4469, %4341
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fmul fast float %4370, %4303
  %4473 = fsub fast float %4472, %4303
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = fmul fast float %4433, %4459
  %4476 = fmul fast float %4475, %4430
  %4477 = fmul fast float %4476, %4465
  %4478 = fmul fast float %4477, %4456
  %4479 = fmul fast float %4478, %4471
  %4480 = fmul fast float %4479, %4474
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4483 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4484 = fsub fast float %4387, %4483
  %4485 = fmul fast float %4484, %4482
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4480, %4304
  %4488 = fadd fast float %4480, %4304
  %4489 = fmul fast float %4488, %4313
  %4490 = fsub fast float %4489, %4313
  %4491 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4492 = and i32 %4343, 128
  %4493 = icmp ne i32 %4492, 0
  %4494 = select i1 %4493, float %4491, float %4487
  %4495 = fmul fast float %4494, %4486
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 0
  %4498 = fcmp fast ugt float %4495, %4497
  br i1 %4498, label %4499, label %4392

; <label>:4499                                    ; preds = %4418
  %4500 = select i1 %4458, float %4495, float 0.000000e+00
  %4501 = fadd fast float %4500, %4262
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  br i1 %4458, label %4392, label %4503

; <label>:4503                                    ; preds = %4499
  %4504 = and i32 %4343, 4
  %4505 = and i32 %4343, 8
  %4506 = add i32 %4299, 0
  %4507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4506, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4507, %dx.types.Handle %4508, float %4436, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4441, float %4443, float undef, float %4445, float %4447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = extractvalue %dx.types.ResRet.f32 %4509, 3
  %4514 = bitcast float %4325 to i32
  %4515 = and i32 %4514, 255
  %4516 = uitofp i32 %4515 to float
  %4517 = lshr i32 %4514, 8
  %4518 = and i32 %4517, 255
  %4519 = uitofp i32 %4518 to float
  %4520 = fmul fast float %4513, %4516
  %4521 = fadd fast float %4520, %4519
  %4522 = fmul fast float %4521, 0x3F70101000000000
  %4523 = add i32 %4300, 0
  %4524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4523, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4525 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4524, %dx.types.Handle %4508, float %4436, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4441, float %4443, float undef, float %4445, float %4447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4526 = extractvalue %dx.types.ResRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.ResRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.ResRet.f32 %4525, 2
  %4529 = extractvalue %dx.types.ResRet.f32 %4525, 3
  %4530 = bitcast float %4319 to i32
  %4531 = and i32 %4530, 255
  %4532 = uitofp i32 %4531 to float
  %4533 = lshr i32 %4530, 8
  %4534 = and i32 %4533, 255
  %4535 = uitofp i32 %4534 to float
  %4536 = lshr i32 %4530, 16
  %4537 = and i32 %4536, 255
  %4538 = uitofp i32 %4537 to float
  %4539 = fmul fast float %4538, 0x3F70101000000000
  %4540 = fmul fast float %4526, %4532
  %4541 = fadd fast float %4540, %4535
  %4542 = fmul fast float %4541, 0x3F70101000000000
  %4543 = fadd fast float %4527, -5.000000e-01
  %4544 = fadd fast float %4529, -5.000000e-01
  %4545 = fmul fast float %4543, %4539
  %4546 = fmul fast float %4544, %4539
  %4547 = fadd fast float %4545, 5.000000e-01
  %4548 = fadd fast float %4546, 5.000000e-01
  %4549 = fmul fast float %4510, %4328
  %4550 = fmul fast float %4511, %4329
  %4551 = fmul fast float %4512, %4330
  %4552 = fmul fast float %4547, 2.000000e+00
  %4553 = fadd fast float %4552, -1.000000e+00
  %4554 = fmul fast float %4548, 2.000000e+00
  %4555 = fadd fast float %4554, -1.000000e+00
  %4556 = fadd fast float %4553, %4555
  %4557 = fmul fast float %4556, 5.000000e-01
  %4558 = fsub fast float %4553, %4555
  %4559 = fmul fast float %4558, 5.000000e-01
  %4560 = call float @dx.op.unary.f32(i32 6, float %4557)  ; FAbs(value)
  %4561 = fsub fast float 1.000000e+00, %4560
  %4562 = call float @dx.op.unary.f32(i32 6, float %4559)  ; FAbs(value)
  %4563 = fsub fast float %4561, %4562
  %4564 = call float @dx.op.dot3.f32(i32 55, float %4557, float %4559, float %4563, float %4557, float %4559, float %4563)  ; Dot3(ax,ay,az,bx,by,bz)
  %4565 = call float @dx.op.unary.f32(i32 25, float %4564)  ; Rsqrt(value)
  %4566 = fmul fast float %4557, %4565
  %4567 = fmul fast float %4559, %4565
  %4568 = fmul fast float %4565, %4563
  %4569 = fmul fast float %4568, %4293
  %4570 = fmul fast float %4568, %4294
  %4571 = fmul fast float %4568, %4295
  %4572 = fmul fast float %4566, %4316
  %4573 = fmul fast float %4566, %4317
  %4574 = fmul fast float %4566, %4318
  %4575 = fadd fast float %4572, %4569
  %4576 = fadd fast float %4573, %4570
  %4577 = fadd fast float %4574, %4571
  %4578 = fmul fast float %4567, %4322
  %4579 = fmul fast float %4567, %4323
  %4580 = fmul fast float %4567, %4324
  %4581 = fadd fast float %4575, %4578
  %4582 = fadd fast float %4576, %4579
  %4583 = fadd fast float %4577, %4580
  %4584 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %4581, float %4582, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = call float @dx.op.unary.f32(i32 25, float %4584)  ; Rsqrt(value)
  %4586 = fmul fast float %4581, %4585
  %4587 = fmul fast float %4582, %4585
  %4588 = fmul fast float %4583, %4585
  %4589 = icmp ne i32 %4505, 0
  %4590 = select i1 %4589, float 1.000000e+00, float 0.000000e+00
  %4591 = fmul fast float %4495, %4590
  %4592 = and i32 %4343, 1
  %4593 = icmp eq i32 %4592, 0
  br i1 %4593, label %4594, label %4598

; <label>:4594                                    ; preds = %4503
  %4595 = fsub fast float %4586, %4276
  %4596 = fsub fast float %4587, %4277
  %4597 = fsub fast float %4588, %4278
  br label %4598

; <label>:4598                                    ; preds = %4594, %4503
  %4599 = phi float [ %4595, %4594 ], [ %4586, %4503 ]
  %4600 = phi float [ %4596, %4594 ], [ %4587, %4503 ]
  %4601 = phi float [ %4597, %4594 ], [ %4588, %4503 ]
  %4602 = fmul float %4601, %4591
  %4603 = fmul float %4600, %4591
  %4604 = fmul float %4599, %4591
  %4605 = fadd fast float %4604, %4276
  %4606 = fadd fast float %4603, %4277
  %4607 = fadd fast float %4602, %4278
  %4608 = icmp ne i32 %4504, 0
  %4609 = select i1 %4608, float 1.000000e+00, float 0.000000e+00
  %4610 = fmul fast float %4495, %4609
  %4611 = fsub fast float %4549, %4283
  %4612 = fsub fast float %4550, %4284
  %4613 = fsub fast float %4551, %4285
  %4614 = fmul fast float %4611, %4610
  %4615 = fmul fast float %4612, %4610
  %4616 = fmul fast float %4613, %4610
  %4617 = fadd fast float %4614, %4283
  %4618 = fadd fast float %4615, %4284
  %4619 = fadd fast float %4616, %4285
  %4620 = fsub fast float %4522, %4282
  %4621 = fmul fast float %4620, %4610
  %4622 = fadd fast float %4621, %4282
  %4623 = fmul fast float %4610, %4269
  %4624 = fsub fast float %4269, %4623
  %4625 = fmul fast float %4610, %4268
  %4626 = fsub fast float %4268, %4625
  %4627 = bitcast float %4337 to i32
  %4628 = lshr i32 %4627, 16
  %4629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4628)  ; LegacyF16ToF32(value)
  %4630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.i32 %4630, 0
  %4632 = and i32 %4631, 1
  %4633 = icmp eq i32 %4632, 0
  br i1 %4633, label %4634, label %4659

; <label>:4634                                    ; preds = %4598
  %4635 = fadd fast float %4522, 0xBFB99999A0000000
  %4636 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4637 = fmul fast float %4636, 0x3FF1C71C80000000
  %4638 = fsub fast float 1.000000e+00, %4637
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = fmul fast float %4639, %4549
  %4641 = fmul fast float %4639, %4550
  %4642 = fmul fast float %4639, %4551
  %4643 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4644 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = call float @dx.op.binary.f32(i32 35, float %4644, float %4645)  ; FMax(a,b)
  %4647 = call float @dx.op.binary.f32(i32 35, float %4643, float %4646)  ; FMax(a,b)
  %4648 = fcmp fast ogt float %4647, 0.000000e+00
  %4649 = bitcast float %4647 to i32
  %4650 = sub nsw i32 2129859010, %4649
  %4651 = bitcast i32 %4650 to float
  %4652 = select i1 %4648, float %4651, float 0.000000e+00
  %4653 = fmul fast float %4643, %4629
  %4654 = fmul fast float %4644, %4629
  %4655 = fmul fast float %4645, %4629
  %4656 = fmul fast float %4653, %4652
  %4657 = fmul fast float %4654, %4652
  %4658 = fmul fast float %4655, %4652
  br label %4659

; <label>:4659                                    ; preds = %4634, %4598
  %4660 = phi float [ %4629, %4598 ], [ %4656, %4634 ]
  %4661 = phi float [ %4629, %4598 ], [ %4657, %4634 ]
  %4662 = phi float [ %4629, %4598 ], [ %4658, %4634 ]
  %4663 = fsub fast float %4660, %4270
  %4664 = fsub fast float %4661, %4271
  %4665 = fsub fast float %4662, %4272
  %4666 = fmul fast float %4663, %4610
  %4667 = fmul fast float %4664, %4610
  %4668 = fmul fast float %4665, %4610
  %4669 = fadd fast float %4666, %4270
  %4670 = fadd fast float %4667, %4271
  %4671 = fadd fast float %4668, %4272
  %4672 = fadd fast float %4495, %4281
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = fsub fast float %4542, %4280
  %4675 = fmul fast float %4674, %4591
  %4676 = fadd fast float %4675, %4280
  %4677 = fsub fast float %4528, %4279
  %4678 = fmul fast float %4677, %4591
  %4679 = fadd fast float %4678, %4279
  br i1 %4593, label %4688, label %4680

; <label>:4680                                    ; preds = %4659
  %4681 = and i32 %4343, 32768
  %4682 = icmp eq i32 %4681, 0
  br i1 %4682, label %4698, label %4683

; <label>:4683                                    ; preds = %4680
  %4684 = fmul fast float %4591, 1.270000e+02
  %4685 = fadd fast float %4684, %4265
  %4686 = fadd fast float %4684, %4266
  %4687 = fadd fast float %4684, %4267
  br label %4698

; <label>:4688                                    ; preds = %4659
  %4689 = fsub fast float 1.270000e+02, %4265
  %4690 = fsub fast float 1.270000e+02, %4266
  %4691 = fsub fast float 1.270000e+02, %4267
  %4692 = fmul fast float %4591, %4689
  %4693 = fmul fast float %4591, %4690
  %4694 = fmul fast float %4591, %4691
  %4695 = fadd fast float %4692, %4265
  %4696 = fadd fast float %4693, %4266
  %4697 = fadd fast float %4694, %4267
  br label %4698

; <label>:4698                                    ; preds = %4688, %4683, %4680
  %4699 = phi float [ %4685, %4683 ], [ %4265, %4680 ], [ %4695, %4688 ]
  %4700 = phi float [ %4686, %4683 ], [ %4266, %4680 ], [ %4696, %4688 ]
  %4701 = phi float [ %4687, %4683 ], [ %4267, %4680 ], [ %4697, %4688 ]
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 1
  %4706 = fmul fast float %4705, %4702
  %4707 = fadd fast float %4706, %4704
  %4708 = call float @dx.op.unary.f32(i32 7, float %4707)  ; Saturate(value)
  %4709 = bitcast float %4331 to i32
  %4710 = and i32 %4709, 65535
  %4711 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4710)  ; LegacyF16ToF32(value)
  %4712 = lshr i32 %4709, 16
  %4713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4712)  ; LegacyF16ToF32(value)
  %4714 = fcmp fast oge float %4711, 0.000000e+00
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4717 = select i1 %4714, float %4711, float %4716
  %4718 = fadd fast float %4717, %4713
  %4719 = fsub fast float %4708, %4264
  %4720 = fmul fast float %4719, %4495
  %4721 = fadd fast float %4720, %4264
  %4722 = fmul fast float %4718, %4495
  %4723 = call float @dx.op.binary.f32(i32 35, float %4263, float %4722)  ; FMax(a,b)
  %4724 = and i32 %4343, 16
  %4725 = icmp eq i32 %4724, 0
  br i1 %4725, label %4747, label %4726

; <label>:4726                                    ; preds = %4698
  %4727 = add i32 %4334, 0
  %4728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4729 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4728, %dx.types.Handle %4508, float %4436, float %4439, float undef, float undef, i32 0, i32 0, i32 undef, float %4441, float %4443, float undef, float %4445, float %4447, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = extractvalue %dx.types.ResRet.f32 %4729, 1
  %4732 = extractvalue %dx.types.ResRet.f32 %4729, 2
  %4733 = and i32 %4627, 65535
  %4734 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4733)  ; LegacyF16ToF32(value)
  %4735 = fmul fast float %4730, %4328
  %4736 = fmul fast float %4731, %4329
  %4737 = fmul fast float %4732, %4330
  %4738 = and i32 %4343, 16384
  %4739 = icmp ne i32 %4738, 0
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4742 = select i1 %4739, float %4741, float 1.000000e+00
  %4743 = fmul fast float %4742, %4734
  %4744 = fmul fast float %4735, %4743
  %4745 = fmul fast float %4736, %4743
  %4746 = fmul fast float %4737, %4743
  br label %4747

; <label>:4747                                    ; preds = %4726, %4698
  %4748 = phi float [ %4744, %4726 ], [ 0.000000e+00, %4698 ]
  %4749 = phi float [ %4745, %4726 ], [ 0.000000e+00, %4698 ]
  %4750 = phi float [ %4746, %4726 ], [ 0.000000e+00, %4698 ]
  %4751 = fsub fast float %4748, %4273
  %4752 = fsub fast float %4749, %4274
  %4753 = fsub fast float %4750, %4275
  %4754 = fmul fast float %4751, %4495
  %4755 = fmul fast float %4752, %4495
  %4756 = fmul fast float %4753, %4495
  %4757 = fadd fast float %4754, %4273
  %4758 = fadd fast float %4755, %4274
  %4759 = fadd fast float %4756, %4275
  br label %4392

; <label>:4760                                    ; preds = %4392
  br label %4761

; <label>:4761                                    ; preds = %4760, %4206
  %4762 = phi float [ 0.000000e+00, %4206 ], [ %4393, %4760 ]
  %4763 = phi float [ %4175, %4206 ], [ %4394, %4760 ]
  %4764 = phi float [ %4173, %4206 ], [ %4395, %4760 ]
  %4765 = phi float [ %4160, %4206 ], [ %4396, %4760 ]
  %4766 = phi float [ %4161, %4206 ], [ %4397, %4760 ]
  %4767 = phi float [ %4162, %4206 ], [ %4398, %4760 ]
  %4768 = phi float [ 0.000000e+00, %4206 ], [ %4399, %4760 ]
  %4769 = phi float [ 0.000000e+00, %4206 ], [ %4400, %4760 ]
  %4770 = phi float [ %4163, %4206 ], [ %4401, %4760 ]
  %4771 = phi float [ %4164, %4206 ], [ %4402, %4760 ]
  %4772 = phi float [ %4165, %4206 ], [ %4403, %4760 ]
  %4773 = phi float [ %4166, %4206 ], [ %4404, %4760 ]
  %4774 = phi float [ %4167, %4206 ], [ %4405, %4760 ]
  %4775 = phi float [ %4168, %4206 ], [ %4406, %4760 ]
  %4776 = phi float [ %4201, %4206 ], [ %4407, %4760 ]
  %4777 = phi float [ %4202, %4206 ], [ %4408, %4760 ]
  %4778 = phi float [ %4203, %4206 ], [ %4409, %4760 ]
  %4779 = phi float [ %4171, %4206 ], [ %4410, %4760 ]
  %4780 = phi float [ %4170, %4206 ], [ %4411, %4760 ]
  %4781 = phi float [ 0.000000e+00, %4206 ], [ %4412, %4760 ]
  %4782 = phi float [ %4169, %4206 ], [ %4413, %4760 ]
  %4783 = phi float [ %4157, %4206 ], [ %4414, %4760 ]
  %4784 = phi float [ %4158, %4206 ], [ %4415, %4760 ]
  %4785 = phi float [ %4159, %4206 ], [ %4416, %4760 ]
  %4786 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %4778, float %4776, float %4777, float %4778)  ; Dot3(ax,ay,az,bx,by,bz)
  %4787 = call float @dx.op.unary.f32(i32 25, float %4786)  ; Rsqrt(value)
  %4788 = fmul fast float %4787, %4776
  %4789 = fmul fast float %4787, %4777
  %4790 = fmul fast float %4787, %4778
  %4791 = fadd fast float %4781, %998
  %4792 = call float @dx.op.unary.f32(i32 7, float %4791)  ; Saturate(value)
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4789, float %4790, float %4788, float %4789, float %4790)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 25, float %4793)  ; Rsqrt(value)
  %4795 = fmul fast float %4794, %4788
  %4796 = fmul fast float %4794, %4789
  %4797 = fmul fast float %4794, %4790
  br label %4798

; <label>:4798                                    ; preds = %4761, %4154
  %4799 = phi float [ %4795, %4761 ], [ %4201, %4154 ]
  %4800 = phi float [ %4796, %4761 ], [ %4202, %4154 ]
  %4801 = phi float [ %4797, %4761 ], [ %4203, %4154 ]
  %4802 = phi float [ %4783, %4761 ], [ %4157, %4154 ]
  %4803 = phi float [ %4784, %4761 ], [ %4158, %4154 ]
  %4804 = phi float [ %4785, %4761 ], [ %4159, %4154 ]
  %4805 = phi float [ %4773, %4761 ], [ %4166, %4154 ]
  %4806 = phi float [ %4774, %4761 ], [ %4167, %4154 ]
  %4807 = phi float [ %4775, %4761 ], [ %4168, %4154 ]
  %4808 = phi float [ %4770, %4761 ], [ %4163, %4154 ]
  %4809 = phi float [ %4771, %4761 ], [ %4164, %4154 ]
  %4810 = phi float [ %4772, %4761 ], [ %4165, %4154 ]
  %4811 = phi float [ %4765, %4761 ], [ %4160, %4154 ]
  %4812 = phi float [ %4766, %4761 ], [ %4161, %4154 ]
  %4813 = phi float [ %4767, %4761 ], [ %4162, %4154 ]
  %4814 = phi float [ %4782, %4761 ], [ %4169, %4154 ]
  %4815 = phi float [ %4792, %4761 ], [ %998, %4154 ]
  %4816 = phi float [ %4780, %4761 ], [ %4170, %4154 ]
  %4817 = phi float [ %4779, %4761 ], [ %4171, %4154 ]
  %4818 = phi float [ %4769, %4761 ], [ 0.000000e+00, %4154 ]
  %4819 = phi float [ %4768, %4761 ], [ 0.000000e+00, %4154 ]
  %4820 = phi float [ %4762, %4761 ], [ 0.000000e+00, %4154 ]
  %4821 = phi float [ %4763, %4761 ], [ %4175, %4154 ]
  %4822 = phi float [ %4764, %4761 ], [ %4173, %4154 ]
  %4823 = fadd fast float %4814, 0xBFB99999A0000000
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fmul fast float %4824, 0x3FF1C71C80000000
  %4826 = call float @dx.op.binary.f32(i32 36, float %4814, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4827 = fsub fast float 1.000000e+00, %4825
  %4828 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4829 = fmul fast float %4828, %4802
  %4830 = fmul fast float %4828, %4803
  %4831 = fmul fast float %4828, %4804
  %4832 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  %4833 = call float @dx.op.unary.f32(i32 7, float %4830)  ; Saturate(value)
  %4834 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4835 = fmul fast float %4825, %4802
  %4836 = fmul fast float %4825, %4803
  %4837 = fmul fast float %4825, %4804
  %4838 = fadd fast float %4835, %4826
  %4839 = fadd fast float %4836, %4826
  %4840 = fadd fast float %4837, %4826
  %4841 = call float @dx.op.unary.f32(i32 7, float %4838)  ; Saturate(value)
  %4842 = call float @dx.op.unary.f32(i32 7, float %4839)  ; Saturate(value)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4846 = extractvalue %dx.types.ResRet.i32 %4845, 0
  %4847 = and i32 %4846, 1
  %4848 = icmp eq i32 %4847, 0
  br i1 %4848, label %4863, label %4849

; <label>:4849                                    ; preds = %4798
  %4850 = call float @dx.op.binary.f32(i32 35, float %4833, float %4834)  ; FMax(a,b)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4832, float %4850)  ; FMax(a,b)
  %4852 = fcmp fast ogt float %4851, 0.000000e+00
  %4853 = bitcast float %4851 to i32
  %4854 = sub nsw i32 2129859010, %4853
  %4855 = bitcast i32 %4854 to float
  %4856 = select i1 %4852, float %4855, float 0.000000e+00
  %4857 = fmul fast float %4832, %4808
  %4858 = fmul fast float %4833, %4809
  %4859 = fmul fast float %4834, %4810
  %4860 = fmul fast float %4857, %4856
  %4861 = fmul fast float %4858, %4856
  %4862 = fmul fast float %4859, %4856
  br label %4863

; <label>:4863                                    ; preds = %4849, %4798
  %4864 = phi float [ %4860, %4849 ], [ %4808, %4798 ]
  %4865 = phi float [ %4861, %4849 ], [ %4809, %4798 ]
  %4866 = phi float [ %4862, %4849 ], [ %4810, %4798 ]
  %4867 = call float @dx.op.binary.f32(i32 36, float %4811, float 1.270000e+02)  ; FMin(a,b)
  %4868 = call float @dx.op.binary.f32(i32 36, float %4812, float 1.270000e+02)  ; FMin(a,b)
  %4869 = call float @dx.op.binary.f32(i32 36, float %4813, float 1.270000e+02)  ; FMin(a,b)
  %4870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.i32 %4870, 3
  %4872 = and i32 %4871, 8
  %4873 = icmp ne i32 %4872, 0
  %4874 = call float @dx.op.binary.f32(i32 35, float %4832, float %4802)  ; FMax(a,b)
  %4875 = call float @dx.op.binary.f32(i32 35, float %4833, float %4802)  ; FMax(a,b)
  %4876 = call float @dx.op.binary.f32(i32 35, float %4834, float %4802)  ; FMax(a,b)
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4832, float %4833, float %4834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = select i1 %176, float %4802, float %4832
  %4879 = select i1 %176, float %4877, float %4833
  %4880 = select i1 %176, float 1.000000e+00, float %4834
  %4881 = select i1 %4873, float %4874, float %4878
  %4882 = select i1 %4873, float %4875, float %4879
  %4883 = select i1 %4873, float %4876, float %4880
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4864, float %4865, float %4866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = select i1 %176, float %4884, float %4864
  %4886 = select i1 %176, float %4884, float %4865
  %4887 = select i1 %176, float %4884, float %4866
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4892 = fadd fast float %4889, %134
  %4893 = fadd fast float %4890, %135
  %4894 = fadd fast float %4891, %136
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.CBufRet.f32 %4895, 1
  %4898 = fsub fast float %4892, %4896
  %4899 = fsub fast float %4893, %4897
  %4900 = fmul fast float %4898, %4898
  %4901 = fmul fast float %4899, %4899
  %4902 = fadd fast float %4900, %4901
  %4903 = call float @dx.op.unary.f32(i32 24, float %4902)  ; Sqrt(value)
  %4904 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %4905 = fcmp fast olt float %4903, %4904
  br i1 %4905, label %4906, label %4973

; <label>:4906                                    ; preds = %4863
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4914 = extractvalue %dx.types.CBufRet.f32 %4909, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4911, 1
  %4916 = extractvalue %dx.types.CBufRet.f32 %4907, 3
  %4917 = extractvalue %dx.types.CBufRet.f32 %4909, 3
  %4918 = extractvalue %dx.types.CBufRet.f32 %4911, 3
  %4919 = fadd fast float %4916, %4892
  %4920 = fadd fast float %4917, %4893
  %4921 = fadd fast float %4918, %4894
  %4922 = fmul fast float %4919, %4908
  %4923 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4910, float %4922)  ; FMad(a,b,c)
  %4924 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4912, float %4923)  ; FMad(a,b,c)
  %4925 = fmul fast float %4919, %4913
  %4926 = call float @dx.op.tertiary.f32(i32 46, float %4920, float %4914, float %4925)  ; FMad(a,b,c)
  %4927 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4915, float %4926)  ; FMad(a,b,c)
  %4928 = fsub fast float %4924, %4916
  %4929 = fsub fast float %4927, %4917
  %4930 = fsub fast float %4928, %4896
  %4931 = fadd fast float %4930, %4904
  %4932 = fsub fast float %4929, %4897
  %4933 = fadd fast float %4932, %4904
  %4934 = extractvalue %dx.types.CBufRet.f32 %4895, 3
  %4935 = fmul fast float %4931, %4934
  %4936 = fmul fast float %4933, %4934
  %4937 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4939 = fsub fast float 1.000000e+00, %4937
  %4940 = fsub fast float 1.000000e+00, %4938
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = fcmp fast ugt float %4942, 0.000000e+00
  br i1 %4943, label %4944, label %5247

; <label>:4944                                    ; preds = %4906
  %4945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.f32 %4945, 2
  %4947 = fmul fast float %4946, %4942
  %4948 = extractvalue %dx.types.CBufRet.f32 %4945, 3
  %4949 = fadd fast float %4948, %4947
  %4950 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4951 = fadd fast float %4949, %4918
  %4952 = fmul fast float %4924, %4912
  %4953 = call float @dx.op.tertiary.f32(i32 46, float %4927, float %4915, float %4952)  ; FMad(a,b,c)
  %4954 = call float @dx.op.tertiary.f32(i32 46, float %4951, float %4950, float %4953)  ; FMad(a,b,c)
  %4955 = fsub fast float %4954, %4918
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 2
  %4958 = fsub fast float %4955, %4957
  %4959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4960 = extractvalue %dx.types.ResRet.f32 %4959, 0
  %4961 = extractvalue %dx.types.ResRet.f32 %4959, 1
  %4962 = extractvalue %dx.types.ResRet.f32 %4959, 2
  %4963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4939, float %4940, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4964 = extractvalue %dx.types.ResRet.f32 %4963, 0
  %4965 = extractvalue %dx.types.ResRet.f32 %4963, 1
  %4966 = extractvalue %dx.types.ResRet.f32 %4963, 2
  %4967 = fadd fast float %4964, %4960
  %4968 = fmul fast float %4967, 0x3F847AE140000000
  %4969 = fadd fast float %4965, %4961
  %4970 = fmul fast float %4969, 0x3F847AE140000000
  %4971 = fadd fast float %4966, %4962
  %4972 = fmul fast float %4971, 0x3F847AE140000000
  br label %5247

; <label>:4973                                    ; preds = %4863
  %4974 = and i32 %152, 1
  %4975 = icmp eq i32 %4974, 0
  br i1 %4975, label %5247, label %4976

; <label>:4976                                    ; preds = %4973
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4984 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4985 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4986 = extractvalue %dx.types.CBufRet.f32 %4977, 3
  %4987 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4988 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4989 = fadd fast float %4986, %4892
  %4990 = fadd fast float %4987, %4893
  %4991 = fadd fast float %4988, %4894
  %4992 = fmul fast float %4989, %4978
  %4993 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4980, float %4992)  ; FMad(a,b,c)
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4982, float %4993)  ; FMad(a,b,c)
  %4995 = fmul fast float %4989, %4983
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4984, float %4995)  ; FMad(a,b,c)
  %4997 = call float @dx.op.tertiary.f32(i32 46, float %4991, float %4985, float %4996)  ; FMad(a,b,c)
  %4998 = fsub fast float %4994, %4986
  %4999 = fsub fast float %4997, %4987
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5004 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.i32 %5007, 0
  %5009 = extractvalue %dx.types.CBufRet.i32 %5007, 1
  %5010 = udiv i32 %5009, %5008
  %5011 = fsub fast float %4998, %5001
  %5012 = fsub fast float %4999, %5002
  %5013 = call float @dx.op.binary.f32(i32 35, float %5011, float 0.000000e+00)  ; FMax(a,b)
  %5014 = call float @dx.op.binary.f32(i32 35, float %5012, float 0.000000e+00)  ; FMax(a,b)
  %5015 = call float @dx.op.binary.f32(i32 36, float %5013, float %5003)  ; FMin(a,b)
  %5016 = call float @dx.op.binary.f32(i32 36, float %5014, float %5004)  ; FMin(a,b)
  %5017 = add i32 %5008, -1
  %5018 = add i32 %5010, -1
  %5019 = fmul fast float %5015, %5006
  %5020 = fmul fast float %5016, %5006
  %5021 = fptoui float %5019 to i32
  %5022 = fptoui float %5020 to i32
  %5023 = call i32 @dx.op.binary.i32(i32 40, i32 %5021, i32 %5017)  ; UMin(a,b)
  %5024 = call i32 @dx.op.binary.i32(i32 40, i32 %5022, i32 %5018)  ; UMin(a,b)
  %5025 = mul i32 %5024, %5008
  %5026 = add i32 %5025, %5023
  %5027 = shl i32 %5026, 2
  %5028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5027, i32 undef)  ; BufferLoad(srv,index,wot)
  %5029 = extractvalue %dx.types.ResRet.i32 %5028, 0
  %5030 = icmp eq i32 %5029, -1
  br i1 %5030, label %5247, label %5031

; <label>:5031                                    ; preds = %4976
  %5032 = mul i32 %5029, 148
  %5033 = add i32 %5032, 4
  %5034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5033, i32 undef)  ; BufferLoad(srv,index,wot)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = add i32 %5032, 8
  %5037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5036, i32 undef)  ; BufferLoad(srv,index,wot)
  %5038 = extractvalue %dx.types.ResRet.f32 %5037, 0
  %5039 = add i32 %5032, 36
  %5040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5039, i32 undef)  ; BufferLoad(srv,index,wot)
  %5041 = extractvalue %dx.types.ResRet.f32 %5040, 0
  %5042 = add i32 %5032, 60
  %5043 = add i32 %5032, 92
  %5044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5043, i32 undef)  ; BufferLoad(srv,index,wot)
  %5045 = extractvalue %dx.types.ResRet.i32 %5044, 0
  %5046 = add i32 %5032, 116
  %5047 = fsub fast float %4998, %5035
  %5048 = fsub fast float %4999, %5038
  %5049 = fmul fast float %5006, %5047
  %5050 = fmul fast float %5006, %5048
  %5051 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5056 = call float @dx.op.unary.f32(i32 83, float %5051)  ; DerivCoarseX(value)
  %5057 = call float @dx.op.unary.f32(i32 83, float %5053)  ; DerivCoarseX(value)
  %5058 = call float @dx.op.unary.f32(i32 84, float %5051)  ; DerivCoarseY(value)
  %5059 = call float @dx.op.unary.f32(i32 84, float %5053)  ; DerivCoarseY(value)
  %5060 = fmul fast float %5056, %5055
  %5061 = fmul fast float %5057, %5055
  %5062 = fmul fast float %5058, %5055
  %5063 = fmul fast float %5059, %5055
  %5064 = call float @dx.op.dot2.f32(i32 54, float %5062, float %5063, float %5062, float %5063)  ; Dot2(ax,ay,bx,by)
  %5065 = call float @dx.op.dot2.f32(i32 54, float %5060, float %5061, float %5060, float %5061)  ; Dot2(ax,ay,bx,by)
  %5066 = call float @dx.op.binary.f32(i32 35, float %5065, float %5064)  ; FMax(a,b)
  %5067 = call float @dx.op.unary.f32(i32 23, float %5066)  ; Log(value)
  %5068 = fmul fast float %5067, 5.000000e-01
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5071 = fadd fast float %5070, %5068
  %5072 = call float @dx.op.binary.f32(i32 35, float %5071, float 0.000000e+00)  ; FMax(a,b)
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 3
  %5075 = fadd fast float %5074, %5072
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 3
  %5078 = fadd fast float %5075, %5077
  %5079 = add i32 %5045, 0
  %5080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5079, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5081 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5080, i32 0)  ; GetDimensions(handle,mipLevel)
  %5082 = extractvalue %dx.types.Dimensions %5081, 0
  %5083 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5082)  ; FirstbitLo(value)
  %5084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.i32 %5084, 1
  %5086 = sub nsw i32 %5085, %5083
  %5087 = sitofp i32 %5086 to float
  %5088 = fsub fast float %5078, %5087
  %5089 = call float @dx.op.binary.f32(i32 35, float %5088, float 0.000000e+00)  ; FMax(a,b)
  %5090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5080, %dx.types.Handle %27, float %5051, float %5053, float %5041, float undef, i32 0, i32 0, i32 undef, float %5089)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = fcmp ule float %5091, 0x3FE0101020000000
  %5093 = extractvalue %dx.types.CBufRet.i32 %5084, 0
  %5094 = and i32 %5093, 128
  %5095 = icmp ne i32 %5094, 0
  %5096 = and i1 %5092, %5095
  br i1 %5096, label %5247, label %5097

; <label>:5097                                    ; preds = %5031
  %5098 = add i32 %5032, 20
  %5099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5098, i32 undef)  ; BufferLoad(srv,index,wot)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = add i32 %5032, 24
  %5102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5101, i32 undef)  ; BufferLoad(srv,index,wot)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 0
  %5104 = add i32 %5032, 40
  %5105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5104, i32 undef)  ; BufferLoad(srv,index,wot)
  %5106 = extractvalue %dx.types.ResRet.f32 %5105, 0
  %5107 = add i32 %5032, 96
  %5108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5107, i32 undef)  ; BufferLoad(srv,index,wot)
  %5109 = extractvalue %dx.types.ResRet.i32 %5108, 0
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5112 = fmul fast float %5111, %5051
  %5113 = fmul fast float %5111, %5053
  %5114 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5115 = fadd fast float %5112, %5114
  %5116 = fadd fast float %5113, %5114
  %5117 = add i32 %5109, 0
  %5118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5119 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5118, i32 0)  ; GetDimensions(handle,mipLevel)
  %5120 = extractvalue %dx.types.Dimensions %5119, 0
  %5121 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5120)  ; FirstbitLo(value)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 1
  %5124 = sub nsw i32 %5123, %5121
  %5125 = sitofp i32 %5124 to float
  %5126 = fsub fast float %5075, %5125
  %5127 = call float @dx.op.binary.f32(i32 35, float %5126, float 0.000000e+00)  ; FMax(a,b)
  %5128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5118, %dx.types.Handle %27, float %5115, float %5116, float %5106, float undef, i32 0, i32 0, i32 undef, float %5127)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5129 = extractvalue %dx.types.ResRet.f32 %5128, 0
  %5130 = fmul fast float %5129, %5100
  %5131 = fadd fast float %5130, %5103
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.CBufRet.f32 %5132, 1
  %5135 = extractvalue %dx.types.CBufRet.f32 %5132, 2
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 3
  %5140 = extractvalue %dx.types.CBufRet.f32 %5132, 3
  %5141 = fadd fast float %5137, %4998
  %5142 = fadd fast float %5139, %4999
  %5143 = fadd fast float %5131, %5140
  %5144 = fmul fast float %5141, %5133
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %5142, float %5134, float %5144)  ; FMad(a,b,c)
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %5143, float %5135, float %5145)  ; FMad(a,b,c)
  %5147 = fsub fast float %5146, %5140
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5150 = fsub fast float %5147, %5149
  %5151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.i32 %5151, 0
  %5153 = call i32 @dx.op.binary.i32(i32 40, i32 %5029, i32 %5152)  ; UMin(a,b)
  %5154 = mul i32 %5153, 36
  %5155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5154, i32 undef)  ; BufferLoad(srv,index,wot)
  %5156 = extractvalue %dx.types.ResRet.i32 %5155, 0
  %5157 = add i32 %5154, 4
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 0
  %5160 = fmul fast float %5159, %5051
  %5161 = fmul fast float %5159, %5053
  %5162 = extractvalue %dx.types.CBufRet.f32 %5158, 1
  %5163 = fadd fast float %5160, %5162
  %5164 = fadd fast float %5161, %5162
  %5165 = icmp eq i32 %5156, 0
  br i1 %5165, label %5234, label %5166

; <label>:5166                                    ; preds = %5097
  br label %5167

; <label>:5167                                    ; preds = %5224, %5166
  %5168 = phi float [ %5225, %5224 ], [ 0.000000e+00, %5166 ]
  %5169 = phi float [ %5226, %5224 ], [ 0.000000e+00, %5166 ]
  %5170 = phi float [ %5227, %5224 ], [ 0.000000e+00, %5166 ]
  %5171 = phi float [ %5228, %5224 ], [ 0.000000e+00, %5166 ]
  %5172 = phi float [ %5229, %5224 ], [ 0.000000e+00, %5166 ]
  %5173 = phi float [ %5230, %5224 ], [ 0.000000e+00, %5166 ]
  %5174 = phi i32 [ %5231, %5224 ], [ 0, %5166 ]
  %5175 = shl i32 %5174, 2
  %5176 = add i32 %5042, %5175
  %5177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5176, i32 undef)  ; BufferLoad(srv,index,wot)
  %5178 = extractvalue %dx.types.ResRet.f32 %5177, 0
  %5179 = add i32 %5046, %5175
  %5180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = add i32 %5181, 0
  %5183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5182, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5184 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5183, i32 0)  ; GetDimensions(handle,mipLevel)
  %5185 = extractvalue %dx.types.Dimensions %5184, 0
  %5186 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5185)  ; FirstbitLo(value)
  %5187 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.i32 %5187, 1
  %5189 = sub nsw i32 %5188, %5186
  %5190 = sitofp i32 %5189 to float
  %5191 = fsub fast float %5075, %5190
  %5192 = call float @dx.op.binary.f32(i32 35, float %5191, float 0.000000e+00)  ; FMax(a,b)
  %5193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5183, %dx.types.Handle %27, float %5163, float %5164, float %5178, float undef, i32 0, i32 0, i32 undef, float %5192)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5194 = extractvalue %dx.types.ResRet.f32 %5193, 0
  %5195 = fcmp fast ogt float %5194, 0.000000e+00
  br i1 %5195, label %5196, label %5224

; <label>:5196                                    ; preds = %5167
  %5197 = add i32 %5157, %5175
  %5198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5197, i32 undef)  ; BufferLoad(srv,index,wot)
  %5199 = extractvalue %dx.types.ResRet.i32 %5198, 0
  %5200 = and i32 %5199, 32767
  %5201 = mul nuw nsw i32 %5200, 928
  %5202 = add nuw nsw i32 %5201, 48
  %5203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5202, i32 undef)  ; BufferLoad(srv,index,wot)
  %5204 = extractvalue %dx.types.ResRet.f32 %5203, 0
  %5205 = extractvalue %dx.types.ResRet.f32 %5203, 1
  %5206 = extractvalue %dx.types.ResRet.f32 %5203, 2
  %5207 = add nuw nsw i32 %5201, 60
  %5208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5207, i32 undef)  ; BufferLoad(srv,index,wot)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = fmul fast float %5204, %5194
  %5213 = fmul fast float %5205, %5194
  %5214 = fmul fast float %5206, %5194
  %5215 = fadd fast float %5212, %5168
  %5216 = fadd fast float %5213, %5169
  %5217 = fadd fast float %5214, %5170
  %5218 = fmul fast float %5209, %5194
  %5219 = fmul fast float %5210, %5194
  %5220 = fmul fast float %5211, %5194
  %5221 = fadd fast float %5218, %5171
  %5222 = fadd fast float %5219, %5172
  %5223 = fadd fast float %5220, %5173
  br label %5224

; <label>:5224                                    ; preds = %5196, %5167
  %5225 = phi float [ %5215, %5196 ], [ %5168, %5167 ]
  %5226 = phi float [ %5216, %5196 ], [ %5169, %5167 ]
  %5227 = phi float [ %5217, %5196 ], [ %5170, %5167 ]
  %5228 = phi float [ %5221, %5196 ], [ %5171, %5167 ]
  %5229 = phi float [ %5222, %5196 ], [ %5172, %5167 ]
  %5230 = phi float [ %5223, %5196 ], [ %5173, %5167 ]
  %5231 = add nuw i32 %5174, 1
  %5232 = icmp eq i32 %5231, %5156
  br i1 %5232, label %5233, label %5167

; <label>:5233                                    ; preds = %5224
  br label %5234

; <label>:5234                                    ; preds = %5233, %5097
  %5235 = phi float [ 0.000000e+00, %5097 ], [ %5225, %5233 ]
  %5236 = phi float [ 0.000000e+00, %5097 ], [ %5226, %5233 ]
  %5237 = phi float [ 0.000000e+00, %5097 ], [ %5227, %5233 ]
  %5238 = phi float [ 0.000000e+00, %5097 ], [ %5228, %5233 ]
  %5239 = phi float [ 0.000000e+00, %5097 ], [ %5229, %5233 ]
  %5240 = phi float [ 0.000000e+00, %5097 ], [ %5230, %5233 ]
  %5241 = fadd fast float %5238, %5235
  %5242 = fmul fast float %5241, 0x3F847AE140000000
  %5243 = fadd fast float %5239, %5236
  %5244 = fmul fast float %5243, 0x3F847AE140000000
  %5245 = fadd fast float %5240, %5237
  %5246 = fmul fast float %5245, 0x3F847AE140000000
  br label %5247

; <label>:5247                                    ; preds = %5234, %5031, %4976, %4973, %4944, %4906
  %5248 = phi float [ %4958, %4944 ], [ -1.310720e+05, %4906 ], [ %5150, %5234 ], [ -1.310720e+05, %4976 ], [ -1.310720e+05, %5031 ], [ -1.310720e+05, %4973 ]
  %5249 = phi float [ %4968, %4944 ], [ 0.000000e+00, %4906 ], [ %5242, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5250 = phi float [ %4970, %4944 ], [ 0.000000e+00, %4906 ], [ %5244, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5251 = phi float [ %4972, %4944 ], [ 0.000000e+00, %4906 ], [ %5246, %5234 ], [ 0.000000e+00, %4976 ], [ 0.000000e+00, %5031 ], [ 0.000000e+00, %4973 ]
  %5252 = phi i1 [ true, %4944 ], [ false, %4906 ], [ true, %5234 ], [ false, %4976 ], [ false, %5031 ], [ false, %4973 ]
  %5253 = and i32 %152, 3
  %5254 = icmp eq i32 %5253, 1
  %5255 = select i1 %5254, float 1.000000e+00, float 0.000000e+00
  %5256 = fsub fast float %5248, %136
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = select i1 %5252, float %5257, float 1.000000e+00
  %5259 = fmul fast float %5258, %5255
  %5260 = icmp eq i32 %5253, 3
  %5261 = select i1 %5260, float 1.000000e+00, float %5259
  %5262 = call float @dx.op.binary.f32(i32 35, float %4820, float %5261)  ; FMax(a,b)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fcmp fast une float %5263, 0.000000e+00
  %5265 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = call float @dx.op.unary.f32(i32 25, float %5265)  ; Rsqrt(value)
  br i1 %5264, label %5274, label %5267

; <label>:5267                                    ; preds = %5247
  %5268 = fmul fast float %5266, %134
  %5269 = fmul fast float %5266, %135
  %5270 = fmul fast float %5266, %136
  %5271 = fsub fast float -0.000000e+00, %5268
  %5272 = fsub fast float -0.000000e+00, %5269
  %5273 = fsub fast float -0.000000e+00, %5270
  br label %5442

; <label>:5274                                    ; preds = %5247
  %5275 = fmul fast float %134, %5266
  %5276 = fsub fast float -0.000000e+00, %5275
  %5277 = fmul fast float %135, %5266
  %5278 = fsub fast float -0.000000e+00, %5277
  %5279 = fmul fast float %136, %5266
  %5280 = fsub fast float -0.000000e+00, %5279
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5278, float %5280, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = fmul fast float %5263, 2.500000e+00
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = fmul fast float %5263, 0x4013FFFFE0000000
  %5285 = fadd fast float %5284, 0xBFFFFFFFE0000000
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = fmul fast float %5263, 0x4004000020000000
  %5288 = fadd fast float %5287, 0xBFF8000040000000
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = call float @dx.op.unary.f32(i32 7, float %5283)  ; Saturate(value)
  %5291 = fmul fast float %4823, 1.000000e+01
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = fmul fast float %5292, 2.000000e+00
  %5294 = fsub fast float 3.000000e+00, %5293
  %5295 = fmul fast float %5292, %5292
  %5296 = fmul fast float %5295, %5294
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = fsub fast float 0x3FE3333340000000, %4844
  %5299 = fmul fast float %5298, 0x400AAAAAA0000000
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fmul fast float %5297, %5300
  %5302 = fmul fast float %4881, 0x3FEA2B8620000000
  %5303 = fmul fast float %4882, 0x3FEA2B8620000000
  %5304 = fmul fast float %4883, 0x3FEA2B8620000000
  %5305 = fadd fast float %5302, 0x3FC81DFBA0000000
  %5306 = fmul fast float %5305, %4881
  %5307 = fadd fast float %5306, 0x3F910E6020000000
  %5308 = fadd fast float %5303, 0x3FC81DFBA0000000
  %5309 = fmul fast float %5308, %4882
  %5310 = fadd fast float %5309, 0x3F910E6020000000
  %5311 = fadd fast float %5304, 0x3FC81DFBA0000000
  %5312 = fmul fast float %5311, %4883
  %5313 = fadd fast float %5312, 0x3F910E6020000000
  %5314 = call float @dx.op.unary.f32(i32 7, float %5307)  ; Saturate(value)
  %5315 = call float @dx.op.unary.f32(i32 7, float %5310)  ; Saturate(value)
  %5316 = call float @dx.op.unary.f32(i32 7, float %5313)  ; Saturate(value)
  %5317 = fsub fast float %5314, %4881
  %5318 = fsub fast float %5315, %4882
  %5319 = fsub fast float %5316, %4883
  %5320 = fmul fast float %5317, %5290
  %5321 = fmul fast float %5320, %5301
  %5322 = fmul fast float %5318, %5290
  %5323 = fmul fast float %5322, %5301
  %5324 = fmul fast float %5319, %5290
  %5325 = fmul fast float %5324, %5301
  %5326 = fadd fast float %5321, %4881
  %5327 = fadd fast float %5323, %4882
  %5328 = fadd fast float %5325, %4883
  %5329 = fmul fast float %4817, %4817
  %5330 = fmul fast float %5329, %5329
  %5331 = fadd fast float %5286, 1.000000e+00
  %5332 = fsub fast float %5331, %5301
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fsub fast float 1.000000e+00, %5330
  %5337 = call float @dx.op.binary.f32(i32 36, float %5333, float %5336)  ; FMin(a,b)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5339 = call float @dx.op.binary.f32(i32 35, float %5337, float %5338)  ; FMax(a,b)
  %5340 = fadd fast float %5335, 0xBFE4CCCCC0000000
  %5341 = fmul fast float %5340, 0x4006DB6DA0000000
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = fmul fast float %5342, 2.000000e+00
  %5344 = fsub fast float 3.000000e+00, %5343
  %5345 = bitcast float %4841 to i32
  %5346 = ashr i32 %5345, 1
  %5347 = add nsw i32 %5346, 532487669
  %5348 = bitcast i32 %5347 to float
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = bitcast float %4842 to i32
  %5355 = ashr i32 %5354, 1
  %5356 = add nsw i32 %5355, 532487669
  %5357 = bitcast i32 %5356 to float
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = bitcast float %5358 to i32
  %5360 = sub nsw i32 2129859010, %5359
  %5361 = bitcast i32 %5360 to float
  %5362 = fmul fast float %5361, 2.000000e+00
  %5363 = bitcast float %4843 to i32
  %5364 = ashr i32 %5363, 1
  %5365 = add nsw i32 %5364, 532487669
  %5366 = bitcast i32 %5365 to float
  %5367 = fsub fast float 1.000000e+00, %5366
  %5368 = bitcast float %5367 to i32
  %5369 = sub nsw i32 2129859010, %5368
  %5370 = bitcast i32 %5369 to float
  %5371 = fmul fast float %5370, 2.000000e+00
  %5372 = fsub fast float 0x4002A9FBE0000000, %5353
  %5373 = fadd fast float %5353, 0x3FD54FDF00000000
  %5374 = bitcast float %5373 to i32
  %5375 = sub nsw i32 2129859010, %5374
  %5376 = bitcast i32 %5375 to float
  %5377 = fmul fast float %5376, %5372
  %5378 = fmul fast float %5377, %5377
  %5379 = fsub fast float 0x4002A9FBE0000000, %5362
  %5380 = fadd fast float %5362, 0x3FD54FDF00000000
  %5381 = bitcast float %5380 to i32
  %5382 = sub nsw i32 2129859010, %5381
  %5383 = bitcast i32 %5382 to float
  %5384 = fmul fast float %5383, %5379
  %5385 = fmul fast float %5384, %5384
  %5386 = fsub fast float 0x4002A9FBE0000000, %5371
  %5387 = fadd fast float %5371, 0x3FD54FDF00000000
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = fmul fast float %5390, %5386
  %5392 = fmul fast float %5391, %5391
  %5393 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5378)  ; FMax(a,b)
  %5394 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5385)  ; FMax(a,b)
  %5395 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5392)  ; FMax(a,b)
  %5396 = fsub fast float 1.000000e+00, %5281
  %5397 = fadd fast float %5396, %5297
  %5398 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5399 = fsub fast float 1.000000e+00, %5261
  %5400 = fmul fast float %5339, %5399
  %5401 = fmul fast float %5342, %5342
  %5402 = fmul fast float %5401, %5400
  %5403 = fmul fast float %5402, %5344
  %5404 = fmul fast float %5399, 0xBFE99999A0000000
  %5405 = fmul fast float %5404, %5290
  %5406 = fmul fast float %5405, %5301
  %5407 = fadd fast float %5406, 1.000000e+00
  %5408 = fadd fast float %4844, -1.000000e+00
  %5409 = fmul fast float %5407, %5408
  %5410 = fadd fast float %5409, 1.000000e+00
  %5411 = fsub fast float %5393, %4841
  %5412 = fsub fast float %5394, %4842
  %5413 = fsub fast float %5395, %4843
  %5414 = fmul fast float %5403, %5411
  %5415 = fmul fast float %5403, %5412
  %5416 = fmul fast float %5403, %5413
  %5417 = fadd fast float %5414, %4841
  %5418 = fadd fast float %5415, %4842
  %5419 = fadd fast float %5416, %4843
  %5420 = fsub fast float %84, %4799
  %5421 = fsub fast float %86, %4800
  %5422 = fsub fast float %88, %4801
  %5423 = fmul fast float %5403, %5420
  %5424 = fmul fast float %5403, %5421
  %5425 = fmul fast float %5403, %5422
  %5426 = fadd fast float %5423, %4799
  %5427 = fadd fast float %5424, %4800
  %5428 = fadd fast float %5425, %4801
  %5429 = fmul fast float %5403, %5398
  %5430 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5431 = fsub fast float 1.000000e+00, %5430
  %5432 = fmul fast float %5429, %5431
  %5433 = fadd fast float %5432, %5430
  %5434 = fsub fast float 1.000000e+00, %4817
  %5435 = fmul fast float %5403, %5434
  %5436 = fadd fast float %5435, %4817
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5426, float %5427, float %5428)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = call float @dx.op.unary.f32(i32 25, float %5437)  ; Rsqrt(value)
  %5439 = fmul fast float %5426, %5438
  %5440 = fmul fast float %5427, %5438
  %5441 = fmul fast float %5428, %5438
  br label %5442

; <label>:5442                                    ; preds = %5274, %5267
  %5443 = phi float [ %5273, %5267 ], [ %5280, %5274 ]
  %5444 = phi float [ %5272, %5267 ], [ %5278, %5274 ]
  %5445 = phi float [ %5271, %5267 ], [ %5276, %5274 ]
  %5446 = phi float [ %5270, %5267 ], [ %5279, %5274 ]
  %5447 = phi float [ %5269, %5267 ], [ %5277, %5274 ]
  %5448 = phi float [ %5268, %5267 ], [ %5275, %5274 ]
  %5449 = phi float [ %4841, %5267 ], [ %5417, %5274 ]
  %5450 = phi float [ %4842, %5267 ], [ %5418, %5274 ]
  %5451 = phi float [ %4843, %5267 ], [ %5419, %5274 ]
  %5452 = phi float [ %4881, %5267 ], [ %5326, %5274 ]
  %5453 = phi float [ %4882, %5267 ], [ %5327, %5274 ]
  %5454 = phi float [ %4883, %5267 ], [ %5328, %5274 ]
  %5455 = phi float [ %4799, %5267 ], [ %5439, %5274 ]
  %5456 = phi float [ %4800, %5267 ], [ %5440, %5274 ]
  %5457 = phi float [ %4801, %5267 ], [ %5441, %5274 ]
  %5458 = phi float [ %4844, %5267 ], [ %5433, %5274 ]
  %5459 = phi float [ %4817, %5267 ], [ %5436, %5274 ]
  %5460 = select i1 %176, float 0.000000e+00, float %5451
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5445, float %5444, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5447, float %5446, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = fmul fast float %5463, 2.000000e+00
  %5465 = fmul fast float %5464, %5455
  %5466 = fmul fast float %5464, %5456
  %5467 = fmul fast float %5464, %5457
  %5468 = fsub fast float %5448, %5465
  %5469 = fsub fast float %5447, %5466
  %5470 = fsub fast float %5446, %5467
  %5471 = call float @dx.op.binary.f32(i32 36, float %5459, float 1.000000e+00)  ; FMin(a,b)
  %5472 = fsub fast float 1.000000e+00, %5459
  %5473 = bitcast float %5472 to i32
  %5474 = sub nsw i32 2129859010, %5473
  %5475 = bitcast i32 %5474 to float
  %5476 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5477 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = fcmp fast oeq float %5477, 0.000000e+00
  %5479 = fcmp fast oeq float %5476, 0.000000e+00
  %5480 = or i1 %5479, %5478
  br i1 %5480, label %5510, label %5481

; <label>:5481                                    ; preds = %5442
  %5482 = fsub fast float -0.000000e+00, %55
  %5483 = fsub fast float -0.000000e+00, %53
  %5484 = call float @dx.op.unary.f32(i32 24, float %5477)  ; Sqrt(value)
  %5485 = fdiv fast float %5484, %5476
  %5486 = fcmp fast ogt float %5485, 0x3FFB6F8900000000
  %5487 = select i1 %5486, float 0x3FFB6F8900000000, float %5485
  %5488 = fmul fast float %5487, 0x3FE8A23460000000
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  %5490 = call float @dx.op.binary.f32(i32 35, float %5487, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5491 = fmul fast float %5489, %5476
  %5492 = fmul fast float %5490, 0x3FF279A740000000
  %5493 = fadd fast float %5492, -1.000000e+00
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5483, float %54, float %5482, float %5483, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = call float @dx.op.unary.f32(i32 25, float %5494)  ; Rsqrt(value)
  %5496 = fmul fast float %5495, %5482
  %5497 = fmul fast float %5495, %5483
  %5498 = fmul fast float %5495, %54
  %5499 = fmul fast float %5493, %5493
  %5500 = fsub fast float 1.000000e+00, %5499
  %5501 = fmul fast float %5490, 0x40005F8BE0000000
  %5502 = fsub fast float 0x400C5BF8A0000000, %5501
  %5503 = fdiv fast float %5491, %5502
  %5504 = fmul fast float %5503, 0x3FEE31C3C0000000
  %5505 = fmul fast float %5504, %5500
  %5506 = fmul fast float %5490, 0x3FDACB7480000000
  %5507 = fadd fast float %5506, 0xBFD7347680000000
  %5508 = fmul fast float %5507, %5503
  %5509 = fmul fast float %5508, %5500
  br label %5510

; <label>:5510                                    ; preds = %5481, %5442
  %5511 = phi float [ %5496, %5481 ], [ 0.000000e+00, %5442 ]
  %5512 = phi float [ %5497, %5481 ], [ 0.000000e+00, %5442 ]
  %5513 = phi float [ %5498, %5481 ], [ 0.000000e+00, %5442 ]
  %5514 = phi float [ %5505, %5481 ], [ 0.000000e+00, %5442 ]
  %5515 = phi float [ %5509, %5481 ], [ 0.000000e+00, %5442 ]
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = fmul fast float %5516, 0x3FDF454380000000
  %5518 = fmul fast float %5516, %5516
  %5519 = fmul fast float %5518, 0x3FEE471020000000
  %5520 = fadd fast float %5519, 0xBFD42F6020000000
  %5521 = fmul fast float %5476, 0x3FD20DD760000000
  %5522 = fmul fast float %5520, %5515
  %5523 = fadd fast float %5522, %5521
  %5524 = fmul fast float %5517, %5514
  %5525 = fadd fast float %5523, %5524
  %5526 = fsub fast float %5523, %5524
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5511, float %5512, float %5513, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = fmul fast float %5527, 0x3FDF454380000000
  %5529 = fmul fast float %5527, %5527
  %5530 = fmul fast float %5529, 0x3FEE471020000000
  %5531 = fadd fast float %5530, 0xBFD42F6020000000
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5476, float %5514, float %5515, float 0x3FD20DD760000000, float %5528, float %5531)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %5534 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = fcmp fast oeq float %5534, 0.000000e+00
  %5536 = fcmp fast oeq float %5533, 0.000000e+00
  %5537 = or i1 %5536, %5535
  br i1 %5537, label %5567, label %5538

; <label>:5538                                    ; preds = %5510
  %5539 = fsub fast float -0.000000e+00, %51
  %5540 = fsub fast float -0.000000e+00, %49
  %5541 = call float @dx.op.unary.f32(i32 24, float %5534)  ; Sqrt(value)
  %5542 = fdiv fast float %5541, %5533
  %5543 = fcmp fast ogt float %5542, 0x3FFB6F8900000000
  %5544 = select i1 %5543, float 0x3FFB6F8900000000, float %5542
  %5545 = fmul fast float %5544, 0x3FE8A23460000000
  %5546 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5547 = call float @dx.op.binary.f32(i32 35, float %5544, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5548 = fmul fast float %5546, %5533
  %5549 = fmul fast float %5547, 0x3FF279A740000000
  %5550 = fadd fast float %5549, -1.000000e+00
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %50, float %5539, float %5540, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call float @dx.op.unary.f32(i32 25, float %5551)  ; Rsqrt(value)
  %5553 = fmul fast float %5552, %5539
  %5554 = fmul fast float %5552, %5540
  %5555 = fmul fast float %5552, %50
  %5556 = fmul fast float %5550, %5550
  %5557 = fsub fast float 1.000000e+00, %5556
  %5558 = fmul fast float %5547, 0x40005F8BE0000000
  %5559 = fsub fast float 0x400C5BF8A0000000, %5558
  %5560 = fdiv fast float %5548, %5559
  %5561 = fmul fast float %5560, 0x3FEE31C3C0000000
  %5562 = fmul fast float %5561, %5557
  %5563 = fmul fast float %5547, 0x3FDACB7480000000
  %5564 = fadd fast float %5563, 0xBFD7347680000000
  %5565 = fmul fast float %5564, %5560
  %5566 = fmul fast float %5565, %5557
  br label %5567

; <label>:5567                                    ; preds = %5538, %5510
  %5568 = phi float [ %5553, %5538 ], [ 0.000000e+00, %5510 ]
  %5569 = phi float [ %5554, %5538 ], [ 0.000000e+00, %5510 ]
  %5570 = phi float [ %5555, %5538 ], [ 0.000000e+00, %5510 ]
  %5571 = phi float [ %5562, %5538 ], [ 0.000000e+00, %5510 ]
  %5572 = phi float [ %5566, %5538 ], [ 0.000000e+00, %5510 ]
  %5573 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5574 = fmul fast float %5573, 0x3FDF454380000000
  %5575 = fmul fast float %5573, %5573
  %5576 = fmul fast float %5575, 0x3FEE471020000000
  %5577 = fadd fast float %5576, 0xBFD42F6020000000
  %5578 = fmul fast float %5533, 0x3FD20DD760000000
  %5579 = fmul fast float %5577, %5572
  %5580 = fadd fast float %5579, %5578
  %5581 = fmul fast float %5574, %5571
  %5582 = fadd fast float %5580, %5581
  %5583 = fsub fast float %5580, %5581
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5568, float %5569, float %5570, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = fmul fast float %5584, 0x3FDF454380000000
  %5586 = fmul fast float %5584, %5584
  %5587 = fmul fast float %5586, 0x3FEE471020000000
  %5588 = fadd fast float %5587, 0xBFD42F6020000000
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5533, float %5571, float %5572, float 0x3FD20DD760000000, float %5585, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %5591 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = fcmp fast oeq float %5591, 0.000000e+00
  %5593 = fcmp fast oeq float %5590, 0.000000e+00
  %5594 = or i1 %5593, %5592
  br i1 %5594, label %5624, label %5595

; <label>:5595                                    ; preds = %5567
  %5596 = fsub fast float -0.000000e+00, %47
  %5597 = fsub fast float -0.000000e+00, %45
  %5598 = call float @dx.op.unary.f32(i32 24, float %5591)  ; Sqrt(value)
  %5599 = fdiv fast float %5598, %5590
  %5600 = fcmp fast ogt float %5599, 0x3FFB6F8900000000
  %5601 = select i1 %5600, float 0x3FFB6F8900000000, float %5599
  %5602 = fmul fast float %5601, 0x3FE8A23460000000
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5601, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5605 = fmul fast float %5603, %5590
  %5606 = fmul fast float %5604, 0x3FF279A740000000
  %5607 = fadd fast float %5606, -1.000000e+00
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %46, float %5596, float %5597, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = call float @dx.op.unary.f32(i32 25, float %5608)  ; Rsqrt(value)
  %5610 = fmul fast float %5609, %5596
  %5611 = fmul fast float %5609, %5597
  %5612 = fmul fast float %5609, %46
  %5613 = fmul fast float %5607, %5607
  %5614 = fsub fast float 1.000000e+00, %5613
  %5615 = fmul fast float %5604, 0x40005F8BE0000000
  %5616 = fsub fast float 0x400C5BF8A0000000, %5615
  %5617 = fdiv fast float %5605, %5616
  %5618 = fmul fast float %5617, 0x3FEE31C3C0000000
  %5619 = fmul fast float %5618, %5614
  %5620 = fmul fast float %5604, 0x3FDACB7480000000
  %5621 = fadd fast float %5620, 0xBFD7347680000000
  %5622 = fmul fast float %5621, %5617
  %5623 = fmul fast float %5622, %5614
  br label %5624

; <label>:5624                                    ; preds = %5595, %5567
  %5625 = phi float [ %5610, %5595 ], [ 0.000000e+00, %5567 ]
  %5626 = phi float [ %5611, %5595 ], [ 0.000000e+00, %5567 ]
  %5627 = phi float [ %5612, %5595 ], [ 0.000000e+00, %5567 ]
  %5628 = phi float [ %5619, %5595 ], [ 0.000000e+00, %5567 ]
  %5629 = phi float [ %5623, %5595 ], [ 0.000000e+00, %5567 ]
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5626, float %5627, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = fmul fast float %5630, 0x3FDF454380000000
  %5632 = fmul fast float %5630, %5630
  %5633 = fmul fast float %5632, 0x3FEE471020000000
  %5634 = fadd fast float %5633, 0xBFD42F6020000000
  %5635 = fmul fast float %5590, 0x3FD20DD760000000
  %5636 = fmul fast float %5634, %5629
  %5637 = fadd fast float %5636, %5635
  %5638 = fmul fast float %5631, %5628
  %5639 = fadd fast float %5637, %5638
  %5640 = fsub fast float %5637, %5638
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5625, float %5626, float %5627, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = fmul fast float %5641, 0x3FDF454380000000
  %5643 = fmul fast float %5641, %5641
  %5644 = fmul fast float %5643, 0x3FEE471020000000
  %5645 = fadd fast float %5644, 0xBFD42F6020000000
  %5646 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5628, float %5629, float 0x3FD20DD760000000, float %5642, float %5645)  ; Dot3(ax,ay,az,bx,by,bz)
  %5647 = call float @dx.op.binary.f32(i32 35, float %5525, float 0.000000e+00)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5582, float 0.000000e+00)  ; FMax(a,b)
  %5649 = call float @dx.op.binary.f32(i32 35, float %5639, float 0.000000e+00)  ; FMax(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5526, float 0.000000e+00)  ; FMax(a,b)
  %5651 = call float @dx.op.binary.f32(i32 35, float %5583, float 0.000000e+00)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5640, float 0.000000e+00)  ; FMax(a,b)
  %5653 = call float @dx.op.binary.f32(i32 35, float %5532, float 0.000000e+00)  ; FMax(a,b)
  %5654 = call float @dx.op.binary.f32(i32 35, float %5589, float 0.000000e+00)  ; FMax(a,b)
  %5655 = call float @dx.op.binary.f32(i32 35, float %5646, float 0.000000e+00)  ; FMax(a,b)
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 0
  %5658 = call float @dx.op.binary.f32(i32 36, float %5452, float %5657)  ; FMin(a,b)
  %5659 = fsub fast float 1.000000e+00, %5471
  %5660 = fmul fast float %5658, %5659
  %5661 = fsub fast float 1.000000e+00, %5660
  %5662 = bitcast float %5661 to i32
  %5663 = sub nsw i32 2129859010, %5662
  %5664 = bitcast i32 %5663 to float
  %5665 = call float @dx.op.binary.f32(i32 36, float %5453, float %5657)  ; FMin(a,b)
  %5666 = fmul fast float %5665, %5659
  %5667 = fsub fast float 1.000000e+00, %5666
  %5668 = bitcast float %5667 to i32
  %5669 = sub nsw i32 2129859010, %5668
  %5670 = bitcast i32 %5669 to float
  %5671 = call float @dx.op.binary.f32(i32 36, float %5454, float %5657)  ; FMin(a,b)
  %5672 = fmul fast float %5671, %5659
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = fmul fast float %5647, %5471
  %5678 = fmul fast float %5677, %5664
  %5679 = fmul fast float %5648, %5471
  %5680 = fmul fast float %5679, %5670
  %5681 = fmul fast float %5649, %5471
  %5682 = fmul fast float %5681, %5676
  %5683 = call float @dx.op.binary.f32(i32 36, float %5449, float %5657)  ; FMin(a,b)
  %5684 = fmul fast float %5683, %5659
  %5685 = fsub fast float 1.000000e+00, %5684
  %5686 = bitcast float %5685 to i32
  %5687 = sub nsw i32 2129859010, %5686
  %5688 = bitcast i32 %5687 to float
  %5689 = call float @dx.op.binary.f32(i32 36, float %5450, float %5657)  ; FMin(a,b)
  %5690 = fmul fast float %5689, %5659
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = bitcast float %5691 to i32
  %5693 = sub nsw i32 2129859010, %5692
  %5694 = bitcast i32 %5693 to float
  %5695 = call float @dx.op.binary.f32(i32 36, float %5460, float %5657)  ; FMin(a,b)
  %5696 = fmul fast float %5695, %5659
  %5697 = fsub fast float 1.000000e+00, %5696
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = bitcast i32 %5699 to float
  %5701 = fmul fast float %5653, %5471
  %5702 = fmul fast float %5701, %5688
  %5703 = fmul fast float %5654, %5471
  %5704 = fmul fast float %5703, %5694
  %5705 = fmul fast float %5655, %5471
  %5706 = fmul fast float %5705, %5700
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5680, float %5682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = select i1 %176, float 0.000000e+00, float %5678
  %5709 = select i1 %176, float %5707, float %5680
  %5710 = select i1 %176, float 0.000000e+00, float %5682
  %5711 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %5652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5712 = select i1 %176, float 0.000000e+00, float %5650
  %5713 = select i1 %176, float %5711, float %5651
  %5714 = select i1 %176, float 0.000000e+00, float %5652
  %5715 = call float @dx.op.dot3.f32(i32 55, float %5702, float %5704, float %5706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = select i1 %176, float 0.000000e+00, float %5702
  %5717 = select i1 %176, float %5715, float %5704
  %5718 = select i1 %176, float 0.000000e+00, float %5706
  %5719 = fmul fast float %5462, 9.843750e-01
  %5720 = fmul fast float %5458, 9.843750e-01
  %5721 = fadd fast float %5719, 7.812500e-03
  %5722 = fadd fast float %5720, 7.812500e-03
  %5723 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5721, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5724 = extractvalue %dx.types.ResRet.f32 %5723, 2
  %5725 = extractvalue %dx.types.ResRet.f32 %5723, 3
  %5726 = fmul fast float %5724, %5449
  %5727 = fmul fast float %5724, %5450
  %5728 = fmul fast float %5724, %5460
  %5729 = fadd fast float %5726, %5725
  %5730 = fadd fast float %5727, %5725
  %5731 = fadd fast float %5728, %5725
  %5732 = fcmp fast ogt float %4818, 0.000000e+00
  br i1 %5732, label %5733, label %5759

; <label>:5733                                    ; preds = %5624
  %5734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %5462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5735 = extractvalue %dx.types.ResRet.f32 %5734, 0
  %5736 = extractvalue %dx.types.ResRet.f32 %5734, 1
  %5737 = extractvalue %dx.types.ResRet.f32 %5734, 2
  %5738 = fadd fast float %5735, -5.000000e-01
  %5739 = fadd fast float %5736, -5.000000e-01
  %5740 = fadd fast float %5737, -5.000000e-01
  %5741 = fsub fast float 1.000000e+00, %5449
  %5742 = fsub fast float 1.000000e+00, %5450
  %5743 = fsub fast float 1.000000e+00, %5460
  %5744 = fmul fast float %5449, 4.000000e+00
  %5745 = fmul fast float %5744, %5741
  %5746 = fmul fast float %5745, %5738
  %5747 = fmul fast float %5450, 4.000000e+00
  %5748 = fmul fast float %5747, %5742
  %5749 = fmul fast float %5748, %5739
  %5750 = fmul fast float %5460, 4.000000e+00
  %5751 = fmul fast float %5750, %5743
  %5752 = fmul fast float %5751, %5740
  %5753 = fadd fast float %5746, %5729
  %5754 = fadd fast float %5749, %5730
  %5755 = fadd fast float %5752, %5731
  %5756 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5757 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5758 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  br label %5759

; <label>:5759                                    ; preds = %5733, %5624
  %5760 = phi float [ %5756, %5733 ], [ %5729, %5624 ]
  %5761 = phi float [ %5757, %5733 ], [ %5730, %5624 ]
  %5762 = phi float [ %5758, %5733 ], [ %5731, %5624 ]
  %5763 = call float @dx.op.binary.f32(i32 35, float %5761, float %5762)  ; FMax(a,b)
  %5764 = call float @dx.op.binary.f32(i32 35, float %5760, float %5763)  ; FMax(a,b)
  %5765 = fsub fast float 1.000000e+00, %5764
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = fcmp fast ogt float %5766, 0x3E7FF19E20000000
  %5768 = fdiv fast float 1.000000e+00, %5766
  %5769 = select i1 %5767, float %5768, float 0.000000e+00
  %5770 = fmul fast float %5769, %5452
  %5771 = fmul fast float %5769, %5453
  %5772 = fmul fast float %5769, %5454
  %5773 = fadd fast float %5770, -1.000000e+00
  %5774 = fadd fast float %5771, -1.000000e+00
  %5775 = fadd fast float %5772, -1.000000e+00
  %5776 = fmul fast float %5773, 5.000000e-01
  %5777 = fmul fast float %5774, 5.000000e-01
  %5778 = fmul fast float %5775, 5.000000e-01
  %5779 = fadd fast float %5776, 1.000000e+00
  %5780 = fadd fast float %5777, 1.000000e+00
  %5781 = fadd fast float %5778, 1.000000e+00
  %5782 = call float @dx.op.binary.f32(i32 35, float %5462, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5783 = fdiv fast float %4172, %5782
  %5784 = fmul fast float %5760, %5716
  %5785 = fmul fast float %5761, %5717
  %5786 = fmul fast float %5762, %5718
  %5787 = fsub fast float 1.000000e+00, %5462
  %5788 = bitcast float %5787 to i32
  %5789 = sitofp i32 %5788 to float
  %5790 = fmul fast float %5789, 5.000000e+00
  %5791 = fadd fast float %5790, 0xC1EFBF8940000000
  %5792 = fptosi float %5791 to i32
  %5793 = bitcast i32 %5792 to float
  %5794 = fmul fast float %5793, %4819
  %5795 = fmul fast float %5708, %5794
  %5796 = fmul fast float %5795, %5765
  %5797 = fmul fast float %5796, %5779
  %5798 = fmul fast float %5709, %5794
  %5799 = fmul fast float %5798, %5765
  %5800 = fmul fast float %5799, %5780
  %5801 = fmul fast float %5710, %5794
  %5802 = fmul fast float %5801, %5765
  %5803 = fmul fast float %5802, %5781
  %5804 = fadd fast float %5784, %4805
  %5805 = fadd fast float %5804, %5797
  %5806 = fmul fast float %5805, %4815
  %5807 = fadd fast float %5785, %4806
  %5808 = fadd fast float %5807, %5800
  %5809 = fmul fast float %5808, %4815
  %5810 = fadd fast float %5786, %4807
  %5811 = fadd fast float %5810, %5803
  %5812 = fmul fast float %5811, %4815
  %5813 = fmul fast float %5450, 0x4012D0A400000000
  %5814 = fmul fast float %5765, %5710
  %5815 = fmul fast float %5765, %5709
  %5816 = fmul fast float %5765, %5708
  %5817 = fsub fast float 1.000000e+00, %5458
  %5818 = fmul fast float %5817, %4815
  %5819 = fsub fast float 1.000000e+00, %5818
  %5820 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = fadd fast float %5813, 0x3FDB6377A0000000
  %5823 = fmul fast float %5821, %5822
  %5824 = call float @dx.op.dot3.f32(i32 55, float %4885, float %4886, float %4887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = fadd fast float %5823, %5824
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = fcmp fast olt float %4869, 1.270000e+02
  %5828 = fmul fast float %4869, 0xBFF7154760000000
  %5829 = fmul fast float %5828, %5783
  %5830 = call float @dx.op.unary.f32(i32 21, float %5829)  ; Exp(value)
  %5831 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5832 = select i1 %5827, float %5831, float 0.000000e+00
  %5833 = fmul fast float %5832, %5765
  %5834 = fadd fast float %5833, -1.000000e+00
  %5835 = fmul fast float %5834, %4815
  %5836 = fadd fast float %5835, 1.000000e+00
  %5837 = fcmp fast olt float %4868, 1.270000e+02
  %5838 = fmul fast float %4868, 0xBFF7154760000000
  %5839 = fmul fast float %5838, %5783
  %5840 = call float @dx.op.unary.f32(i32 21, float %5839)  ; Exp(value)
  %5841 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5842 = select i1 %5837, float %5841, float 0.000000e+00
  %5843 = fmul fast float %5842, %5765
  %5844 = fadd fast float %5843, -1.000000e+00
  %5845 = fmul fast float %5844, %4815
  %5846 = fadd fast float %5845, 1.000000e+00
  %5847 = fcmp fast olt float %4867, 1.270000e+02
  %5848 = fmul fast float %4867, 0xBFF7154760000000
  %5849 = fmul fast float %5848, %5783
  %5850 = call float @dx.op.unary.f32(i32 21, float %5849)  ; Exp(value)
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = select i1 %5847, float %5851, float 0.000000e+00
  %5853 = fmul fast float %5852, %5765
  %5854 = fadd fast float %5853, -1.000000e+00
  %5855 = fmul fast float %5854, %4815
  %5856 = fadd fast float %5855, 1.000000e+00
  %5857 = call float @dx.op.binary.f32(i32 35, float %5826, float 0x3F847AE140000000)  ; FMax(a,b)
  %5858 = fmul fast float %5857, %5857
  %5859 = fmul fast float %5858, %5858
  %5860 = fmul fast float %5859, 0xC00A935000000000
  %5861 = call float @dx.op.unary.f32(i32 21, float %5860)  ; Exp(value)
  %5862 = fsub fast float 1.000000e+00, %5861
  %5863 = fmul fast float %5862, %5712
  %5864 = fmul fast float %5863, %5856
  %5865 = fmul fast float %5846, %5713
  %5866 = fmul fast float %5865, %5862
  %5867 = fmul fast float %5836, %5714
  %5868 = fmul fast float %5867, %5862
  %5869 = fadd fast float %5864, %5816
  %5870 = fmul fast float %5869, %4815
  %5871 = fadd fast float %5866, %5815
  %5872 = fmul fast float %5871, %4815
  %5873 = fadd fast float %5868, %5814
  %5874 = fmul fast float %5873, %4815
  %5875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5876 = extractvalue %dx.types.CBufRet.f32 %5875, 3
  %5877 = fcmp fast oeq float %5876, 0.000000e+00
  br i1 %5877, label %6220, label %5878

; <label>:5878                                    ; preds = %5759
  %5879 = extractvalue %dx.types.CBufRet.f32 %5875, 0
  %5880 = extractvalue %dx.types.CBufRet.f32 %5875, 1
  %5881 = extractvalue %dx.types.CBufRet.f32 %5875, 2
  %5882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5883 = extractvalue %dx.types.CBufRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.CBufRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.CBufRet.f32 %5882, 2
  %5886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5887 = extractvalue %dx.types.CBufRet.f32 %5886, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %5886, 1
  %5889 = call float @dx.op.dot3.f32(i32 55, float %5883, float %5884, float %5885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = select i1 %176, float %5887, float %5883
  %5891 = select i1 %176, float %5889, float %5884
  %5892 = select i1 %176, float %5888, float %5885
  %5893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5894 = extractvalue %dx.types.CBufRet.f32 %5893, 1
  %5895 = fcmp fast une float %5894, 0.000000e+00
  br i1 %5895, label %5896, label %5913

; <label>:5896                                    ; preds = %5878
  %5897 = fptoui float %75 to i32
  %5898 = fptoui float %76 to i32
  %5899 = lshr i32 %5897, 4
  %5900 = lshr i32 %5898, 4
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = fptoui float %5902 to i32
  %5904 = add i32 %5903, 15
  %5905 = lshr i32 %5904, 4
  %5906 = mul i32 %5905, %5900
  %5907 = add i32 %5906, %5899
  %5908 = shl i32 %5907, 3
  %5909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5908, i32 undef)  ; BufferLoad(srv,index,wot)
  %5910 = extractvalue %dx.types.ResRet.i32 %5909, 0
  %5911 = and i32 %5910, -268435456
  %5912 = icmp eq i32 %5911, -1342177280
  br i1 %5912, label %5923, label %5913

; <label>:5913                                    ; preds = %5896, %5878
  %5914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5915 = extractvalue %dx.types.CBufRet.f32 %5914, 2
  %5916 = extractvalue %dx.types.CBufRet.f32 %5914, 3
  %5917 = fmul fast float %5915, %75
  %5918 = fmul fast float %5916, %76
  %5919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5917, float %5918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5920 = extractvalue %dx.types.ResRet.f32 %5919, 0
  %5921 = extractvalue %dx.types.ResRet.f32 %5919, 1
  %5922 = extractvalue %dx.types.ResRet.f32 %5919, 2
  br label %5923

; <label>:5923                                    ; preds = %5913, %5896
  %5924 = phi float [ %5920, %5913 ], [ 0.000000e+00, %5896 ]
  %5925 = phi float [ %5921, %5913 ], [ 0.000000e+00, %5896 ]
  %5926 = phi float [ %5922, %5913 ], [ 0.000000e+00, %5896 ]
  %5927 = call float @dx.op.binary.f32(i32 36, float %5925, float %5926)  ; FMin(a,b)
  %5928 = call float @dx.op.binary.f32(i32 36, float %5924, float %5927)  ; FMin(a,b)
  %5929 = fcmp fast ogt float %5928, 0.000000e+00
  br i1 %5929, label %5930, label %6220, !dx.controlflow.hints !75

; <label>:5930                                    ; preds = %5923
  %5931 = fmul fast float %5924, %5890
  %5932 = fmul fast float %5925, %5891
  %5933 = fmul fast float %5926, %5892
  %5934 = fsub fast float %5879, %5448
  %5935 = fsub fast float %5880, %5447
  %5936 = fsub fast float %5881, %5446
  %5937 = call float @dx.op.dot3.f32(i32 55, float %5934, float %5935, float %5936, float %5934, float %5935, float %5936)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = call float @dx.op.unary.f32(i32 25, float %5937)  ; Rsqrt(value)
  %5939 = fmul fast float %5938, %5934
  %5940 = fmul fast float %5938, %5935
  %5941 = fmul fast float %5938, %5936
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5879, float %5880, float %5881, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5444, float %5443, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5944 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5945 = fmul fast float %5944, %5944
  %5946 = fmul fast float %5945, %5475
  %5947 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5948 = fmul fast float %5947, %5944
  %5949 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5950 = fmul fast float %5949, %5949
  %5951 = call float @dx.op.unary.f32(i32 6, float %5942)  ; FAbs(value)
  %5952 = call float @dx.op.binary.f32(i32 35, float %5817, float 0x3F847AE140000000)  ; FMax(a,b)
  %5953 = fmul fast float %5952, %5952
  %5954 = fmul fast float %5953, %5953
  %5955 = fsub fast float 1.000000e+00, %5954
  %5956 = fmul fast float %5462, %5462
  %5957 = fmul fast float %5956, %5955
  %5958 = fadd fast float %5957, %5954
  %5959 = bitcast float %5958 to i32
  %5960 = ashr i32 %5959, 1
  %5961 = add nsw i32 %5960, 532487669
  %5962 = bitcast i32 %5961 to float
  %5963 = fadd fast float %5962, %5462
  %5964 = fmul fast float %5954, %5950
  %5965 = fsub fast float 1.000000e+00, %5950
  %5966 = fadd fast float %5965, %5964
  %5967 = fmul fast float %5951, %5951
  %5968 = fmul fast float %5967, %5955
  %5969 = fadd fast float %5968, %5954
  %5970 = bitcast float %5969 to i32
  %5971 = ashr i32 %5970, 1
  %5972 = add nsw i32 %5971, 532487669
  %5973 = bitcast i32 %5972 to float
  %5974 = fadd fast float %5973, %5951
  %5975 = fmul fast float %5966, %5966
  %5976 = fmul fast float %5975, %5963
  %5977 = fmul fast float %5976, %5974
  %5978 = fdiv fast float 0x3FF0A00000000000, %5977
  %5979 = fmul fast float %5978, %5954
  %5980 = call float @dx.op.unary.f32(i32 6, float %5943)  ; FAbs(value)
  %5981 = fsub fast float 1.000000e+00, %5980
  %5982 = bitcast float %5981 to i32
  %5983 = sitofp i32 %5982 to float
  %5984 = fmul fast float %5983, 5.000000e+00
  %5985 = fadd fast float %5984, 0xC1EFBF8940000000
  %5986 = fptosi float %5985 to i32
  %5987 = bitcast i32 %5986 to float
  %5988 = fsub fast float 1.000000e+00, %5449
  %5989 = fsub fast float 1.000000e+00, %5450
  %5990 = fsub fast float 1.000000e+00, %5460
  %5991 = fmul fast float %5987, %5988
  %5992 = fmul fast float %5987, %5989
  %5993 = fmul fast float %5987, %5990
  %5994 = fadd fast float %5991, %5449
  %5995 = fadd fast float %5992, %5450
  %5996 = fadd fast float %5993, %5460
  br i1 %5732, label %5997, label %6020

; <label>:5997                                    ; preds = %5930
  %5998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %5980, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.ResRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.ResRet.f32 %5998, 2
  %6002 = fadd fast float %5999, -5.000000e-01
  %6003 = fadd fast float %6000, -5.000000e-01
  %6004 = fadd fast float %6001, -5.000000e-01
  %6005 = fmul fast float %5449, 4.000000e+00
  %6006 = fmul fast float %6005, %5988
  %6007 = fmul fast float %6006, %6002
  %6008 = fmul fast float %5450, 4.000000e+00
  %6009 = fmul fast float %6008, %5989
  %6010 = fmul fast float %6009, %6003
  %6011 = fmul fast float %5460, 4.000000e+00
  %6012 = fmul fast float %6011, %5990
  %6013 = fmul fast float %6012, %6004
  %6014 = fadd fast float %6007, %5994
  %6015 = fadd fast float %6010, %5995
  %6016 = fadd fast float %6013, %5996
  %6017 = call float @dx.op.unary.f32(i32 7, float %6014)  ; Saturate(value)
  %6018 = call float @dx.op.unary.f32(i32 7, float %6015)  ; Saturate(value)
  %6019 = call float @dx.op.unary.f32(i32 7, float %6016)  ; Saturate(value)
  br label %6020

; <label>:6020                                    ; preds = %5997, %5930
  %6021 = phi float [ %6017, %5997 ], [ %5994, %5930 ]
  %6022 = phi float [ %6018, %5997 ], [ %5995, %5930 ]
  %6023 = phi float [ %6019, %5997 ], [ %5996, %5930 ]
  %6024 = fmul fast float %5942, 9.843750e-01
  %6025 = fadd fast float %6024, 7.812500e-03
  %6026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6025, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6027 = extractvalue %dx.types.ResRet.f32 %6026, 2
  %6028 = extractvalue %dx.types.ResRet.f32 %6026, 3
  %6029 = fmul fast float %6027, %5449
  %6030 = fmul fast float %6027, %5450
  %6031 = fmul fast float %6027, %5460
  %6032 = fadd fast float %6029, %6028
  %6033 = fadd fast float %6030, %6028
  %6034 = fadd fast float %6031, %6028
  br i1 %5732, label %6035, label %6058

; <label>:6035                                    ; preds = %6020
  %6036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6037 = extractvalue %dx.types.ResRet.f32 %6036, 0
  %6038 = extractvalue %dx.types.ResRet.f32 %6036, 1
  %6039 = extractvalue %dx.types.ResRet.f32 %6036, 2
  %6040 = fadd fast float %6037, -5.000000e-01
  %6041 = fadd fast float %6038, -5.000000e-01
  %6042 = fadd fast float %6039, -5.000000e-01
  %6043 = fmul fast float %5449, 4.000000e+00
  %6044 = fmul fast float %6043, %5988
  %6045 = fmul fast float %6044, %6040
  %6046 = fmul fast float %5450, 4.000000e+00
  %6047 = fmul fast float %6046, %5989
  %6048 = fmul fast float %6047, %6041
  %6049 = fmul fast float %5460, 4.000000e+00
  %6050 = fmul fast float %6049, %5990
  %6051 = fmul fast float %6050, %6042
  %6052 = fadd fast float %6045, %6032
  %6053 = fadd fast float %6048, %6033
  %6054 = fadd fast float %6051, %6034
  %6055 = call float @dx.op.unary.f32(i32 7, float %6052)  ; Saturate(value)
  %6056 = call float @dx.op.unary.f32(i32 7, float %6053)  ; Saturate(value)
  %6057 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  br label %6058

; <label>:6058                                    ; preds = %6035, %6020
  %6059 = phi float [ %6055, %6035 ], [ %6032, %6020 ]
  %6060 = phi float [ %6056, %6035 ], [ %6033, %6020 ]
  %6061 = phi float [ %6057, %6035 ], [ %6034, %6020 ]
  %6062 = call float @dx.op.binary.f32(i32 35, float %6060, float %6061)  ; FMax(a,b)
  %6063 = call float @dx.op.binary.f32(i32 35, float %6059, float %6062)  ; FMax(a,b)
  %6064 = fsub fast float 1.000000e+00, %6063
  %6065 = call float @dx.op.binary.f32(i32 35, float %5951, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6066 = fdiv fast float %4172, %6065
  %6067 = fmul fast float %5848, %6066
  %6068 = fmul fast float %5838, %6066
  %6069 = fmul fast float %5828, %6066
  %6070 = call float @dx.op.unary.f32(i32 21, float %6067)  ; Exp(value)
  %6071 = call float @dx.op.unary.f32(i32 21, float %6068)  ; Exp(value)
  %6072 = call float @dx.op.unary.f32(i32 21, float %6069)  ; Exp(value)
  %6073 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6074 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6075 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6076 = select i1 %5847, float %6073, float 0.000000e+00
  %6077 = select i1 %5837, float %6074, float 0.000000e+00
  %6078 = select i1 %5827, float %6075, float 0.000000e+00
  %6079 = fsub fast float -0.000000e+00, %5455
  %6080 = fsub fast float -0.000000e+00, %5456
  %6081 = fsub fast float -0.000000e+00, %5457
  %6082 = call float @dx.op.dot3.f32(i32 55, float %5879, float %5880, float %5881, float %6079, float %6080, float %6081)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = call float @dx.op.unary.f32(i32 7, float %6082)  ; Saturate(value)
  %6084 = fmul fast float %6083, 9.843750e-01
  %6085 = fadd fast float %6084, 7.812500e-03
  %6086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6085, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6087 = extractvalue %dx.types.ResRet.f32 %6086, 2
  %6088 = extractvalue %dx.types.ResRet.f32 %6086, 3
  %6089 = fmul fast float %6087, %5449
  %6090 = fmul fast float %6087, %5450
  %6091 = fmul fast float %6087, %5460
  %6092 = fadd fast float %6089, %6088
  %6093 = fadd fast float %6090, %6088
  %6094 = fadd fast float %6091, %6088
  br i1 %5732, label %6095, label %6118

; <label>:6095                                    ; preds = %6058
  %6096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %6083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6097 = extractvalue %dx.types.ResRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.ResRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.ResRet.f32 %6096, 2
  %6100 = fadd fast float %6097, -5.000000e-01
  %6101 = fadd fast float %6098, -5.000000e-01
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fmul fast float %5449, 4.000000e+00
  %6104 = fmul fast float %6103, %5988
  %6105 = fmul fast float %6104, %6100
  %6106 = fmul fast float %5450, 4.000000e+00
  %6107 = fmul fast float %6106, %5989
  %6108 = fmul fast float %6107, %6101
  %6109 = fmul fast float %5460, 4.000000e+00
  %6110 = fmul fast float %6109, %5990
  %6111 = fmul fast float %6110, %6102
  %6112 = fadd fast float %6105, %6092
  %6113 = fadd fast float %6108, %6093
  %6114 = fadd fast float %6111, %6094
  %6115 = call float @dx.op.unary.f32(i32 7, float %6112)  ; Saturate(value)
  %6116 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  br label %6118

; <label>:6118                                    ; preds = %6095, %6058
  %6119 = phi float [ %6115, %6095 ], [ %6092, %6058 ]
  %6120 = phi float [ %6116, %6095 ], [ %6093, %6058 ]
  %6121 = phi float [ %6117, %6095 ], [ %6094, %6058 ]
  %6122 = call float @dx.op.binary.f32(i32 35, float %6120, float %6121)  ; FMax(a,b)
  %6123 = call float @dx.op.binary.f32(i32 35, float %6119, float %6122)  ; FMax(a,b)
  %6124 = fsub fast float 1.000000e+00, %6123
  %6125 = fmul fast float %5817, %5822
  %6126 = fadd fast float %5824, %6125
  %6127 = call float @dx.op.unary.f32(i32 7, float %6126)  ; Saturate(value)
  %6128 = fsub fast float %5879, %5468
  %6129 = fsub fast float %5880, %5469
  %6130 = fsub fast float %5881, %5470
  %6131 = call float @dx.op.dot3.f32(i32 55, float %6128, float %6129, float %6130, float %6128, float %6129, float %6130)  ; Dot3(ax,ay,az,bx,by,bz)
  %6132 = call float @dx.op.unary.f32(i32 25, float %6131)  ; Rsqrt(value)
  %6133 = fmul fast float %6132, %6128
  %6134 = fmul fast float %6132, %6129
  %6135 = fmul fast float %6132, %6130
  %6136 = call float @dx.op.dot3.f32(i32 55, float %6079, float %6080, float %6081, float %6133, float %6134, float %6135)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = fmul fast float %6136, %6136
  %6138 = call float @dx.op.unary.f32(i32 6, float %6083)  ; FAbs(value)
  %6139 = call float @dx.op.binary.f32(i32 35, float %6127, float 0x3F847AE140000000)  ; FMax(a,b)
  %6140 = fmul fast float %6139, %6139
  %6141 = fmul fast float %6140, %6140
  %6142 = fsub fast float 1.000000e+00, %6141
  %6143 = fmul fast float %5956, %6142
  %6144 = fadd fast float %6143, %6141
  %6145 = bitcast float %6144 to i32
  %6146 = ashr i32 %6145, 1
  %6147 = add nsw i32 %6146, 532487669
  %6148 = bitcast i32 %6147 to float
  %6149 = fadd fast float %6148, %5462
  %6150 = fmul fast float %6141, %6137
  %6151 = fsub fast float 1.000000e+00, %6137
  %6152 = fadd fast float %6151, %6150
  %6153 = fmul fast float %6138, %6138
  %6154 = fmul fast float %6153, %6142
  %6155 = fadd fast float %6154, %6141
  %6156 = bitcast float %6155 to i32
  %6157 = ashr i32 %6156, 1
  %6158 = add nsw i32 %6157, 532487669
  %6159 = bitcast i32 %6158 to float
  %6160 = fadd fast float %6159, %6138
  %6161 = fmul fast float %6152, %6152
  %6162 = fmul fast float %6161, %6149
  %6163 = fmul fast float %6162, %6160
  %6164 = fdiv fast float 0x3FF0A00000000000, %6163
  %6165 = fmul fast float %6164, %6141
  %6166 = fmul fast float %6083, %6076
  %6167 = fmul fast float %6083, %6077
  %6168 = fmul fast float %6083, %6078
  %6169 = fmul fast float %6166, %6124
  %6170 = fmul fast float %6169, %6165
  %6171 = fmul fast float %6167, %6124
  %6172 = fmul fast float %6171, %6165
  %6173 = fmul fast float %6168, %6124
  %6174 = fmul fast float %6173, %6165
  %6175 = fmul fast float %6021, %5979
  %6176 = fmul fast float %6022, %5979
  %6177 = fmul fast float %6023, %5979
  %6178 = fsub fast float 1.000000e+00, %5943
  %6179 = bitcast float %6178 to i32
  %6180 = sitofp i32 %6179 to float
  %6181 = fmul fast float %6180, 5.000000e+00
  %6182 = fadd fast float %6181, 0xC1EFBF8940000000
  %6183 = fptosi float %6182 to i32
  %6184 = bitcast i32 %6183 to float
  %6185 = fmul fast float %6184, %4819
  %6186 = fmul fast float %6064, %6185
  %6187 = fmul fast float %6186, %5779
  %6188 = fmul fast float %6186, %5780
  %6189 = fmul fast float %6186, %5781
  %6190 = fadd fast float %6187, %6175
  %6191 = fadd fast float %6188, %6176
  %6192 = fadd fast float %6189, %6177
  %6193 = fmul fast float %6190, %5948
  %6194 = fmul fast float %6191, %5948
  %6195 = fmul fast float %6192, %5948
  %6196 = fmul fast float %5948, %5931
  %6197 = fmul fast float %6196, %6064
  %6198 = fmul fast float %5948, %5932
  %6199 = fmul fast float %6198, %6064
  %6200 = fmul fast float %5948, %5933
  %6201 = fmul fast float %6200, %6064
  %6202 = fadd fast float %6193, %6170
  %6203 = fadd fast float %6194, %6172
  %6204 = fadd fast float %6195, %6174
  %6205 = fmul fast float %6202, %5931
  %6206 = fmul fast float %6203, %5932
  %6207 = fmul fast float %6204, %5933
  %6208 = fadd fast float %6197, %5869
  %6209 = fmul fast float %6208, %4815
  %6210 = fadd fast float %6199, %5871
  %6211 = fmul fast float %6210, %4815
  %6212 = fadd fast float %6201, %5873
  %6213 = fmul fast float %6212, %4815
  %6214 = fadd fast float %6205, %5805
  %6215 = fmul fast float %6214, %4815
  %6216 = fadd fast float %6206, %5808
  %6217 = fmul fast float %6216, %4815
  %6218 = fadd fast float %6207, %5811
  %6219 = fmul fast float %6218, %4815
  br label %6220

; <label>:6220                                    ; preds = %6118, %5923, %5759
  %6221 = phi float [ %5806, %5759 ], [ %5806, %5923 ], [ %6215, %6118 ]
  %6222 = phi float [ %5809, %5759 ], [ %5809, %5923 ], [ %6217, %6118 ]
  %6223 = phi float [ %5812, %5759 ], [ %5812, %5923 ], [ %6219, %6118 ]
  %6224 = phi float [ %5870, %5759 ], [ %5870, %5923 ], [ %6209, %6118 ]
  %6225 = phi float [ %5872, %5759 ], [ %5872, %5923 ], [ %6211, %6118 ]
  %6226 = phi float [ %5874, %5759 ], [ %5874, %5923 ], [ %6213, %6118 ]
  %6227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.i32 %6227, 0
  %6229 = icmp eq i32 %6228, 0
  br i1 %6229, label %6801, label %6230

; <label>:6230                                    ; preds = %6220
  %6231 = fptoui float %75 to i32
  %6232 = fptoui float %76 to i32
  %6233 = lshr i32 %6231, 4
  %6234 = lshr i32 %6232, 4
  %6235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.i32 %6235, 0
  %6237 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6234, i32 %6236, i32 %6233)  ; UMad(a,b,c)
  %6238 = add nsw i32 %6228, -1
  %6239 = call i32 @dx.op.binary.i32(i32 37, i32 %6238, i32 0)  ; IMax(a,b)
  %6240 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %6241 = fptoui float %6240 to i32
  %6242 = lshr i32 %6241, 5
  %6243 = call i32 @dx.op.binary.i32(i32 40, i32 %6242, i32 8191)  ; UMin(a,b)
  %6244 = shl i32 %6243, 2
  %6245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6244, i32 undef)  ; BufferLoad(srv,index,wot)
  %6246 = extractvalue %dx.types.ResRet.i32 %6245, 0
  %6247 = lshr i32 %6246, 16
  %6248 = and i32 %6246, 65535
  %6249 = lshr i32 %6246, 21
  %6250 = lshr i32 %6248, 5
  %6251 = call i32 @dx.op.binary.i32(i32 40, i32 %6250, i32 %6239)  ; UMin(a,b)
  %6252 = icmp ugt i32 %6249, %6251
  br i1 %6252, label %6801, label %6253

; <label>:6253                                    ; preds = %6230
  br label %6254

; <label>:6254                                    ; preds = %6791, %6253
  %6255 = phi i32 [ %6798, %6791 ], [ %6249, %6253 ]
  %6256 = phi float [ %6792, %6791 ], [ %6221, %6253 ]
  %6257 = phi float [ %6793, %6791 ], [ %6222, %6253 ]
  %6258 = phi float [ %6794, %6791 ], [ %6223, %6253 ]
  %6259 = phi float [ %6795, %6791 ], [ %6224, %6253 ]
  %6260 = phi float [ %6796, %6791 ], [ %6225, %6253 ]
  %6261 = phi float [ %6797, %6791 ], [ %6226, %6253 ]
  %6262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6263 = extractvalue %dx.types.CBufRet.i32 %6262, 0
  %6264 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6237, i32 %6263, i32 %6255)  ; UMad(a,b,c)
  %6265 = shl i32 %6264, 2
  %6266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6265, i32 undef)  ; BufferLoad(srv,index,wot)
  %6267 = extractvalue %dx.types.ResRet.i32 %6266, 0
  %6268 = shl i32 %6255, 5
  %6269 = sub nsw i32 %6247, %6268
  %6270 = call i32 @dx.op.binary.i32(i32 37, i32 %6269, i32 0)  ; IMax(a,b)
  %6271 = call i32 @dx.op.binary.i32(i32 38, i32 %6270, i32 31)  ; IMin(a,b)
  %6272 = sub nsw i32 1, %6247
  %6273 = add nsw i32 %6272, %6248
  %6274 = call i32 @dx.op.binary.i32(i32 37, i32 %6273, i32 0)  ; IMax(a,b)
  %6275 = call i32 @dx.op.binary.i32(i32 38, i32 %6274, i32 32)  ; IMin(a,b)
  %6276 = and i32 %6275, 31
  %6277 = shl i32 -1, %6276
  %6278 = xor i32 %6277, -1
  %6279 = and i32 %6271, 31
  %6280 = shl i32 %6278, %6279
  %6281 = icmp eq i32 %6275, 32
  %6282 = select i1 %6281, i32 -1, i32 %6280
  %6283 = and i32 %6282, %6267
  %6284 = icmp eq i32 %6283, 0
  br i1 %6284, label %6791, label %6285

; <label>:6285                                    ; preds = %6254
  br label %6286

; <label>:6286                                    ; preds = %6370, %6285
  %6287 = phi i32 [ %6298, %6370 ], [ %6283, %6285 ]
  %6288 = phi float [ %6371, %6370 ], [ %6256, %6285 ]
  %6289 = phi float [ %6372, %6370 ], [ %6257, %6285 ]
  %6290 = phi float [ %6373, %6370 ], [ %6258, %6285 ]
  %6291 = phi float [ %6374, %6370 ], [ %6259, %6285 ]
  %6292 = phi float [ %6375, %6370 ], [ %6260, %6285 ]
  %6293 = phi float [ %6376, %6370 ], [ %6261, %6285 ]
  %6294 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6287)  ; FirstbitLo(value)
  %6295 = add i32 %6294, %6268
  %6296 = and i32 %6294, 31
  %6297 = shl i32 1, %6296
  %6298 = xor i32 %6297, %6287
  %6299 = mul i32 %6295, 112
  %6300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6299, i32 undef)  ; BufferLoad(srv,index,wot)
  %6301 = extractvalue %dx.types.ResRet.f32 %6300, 0
  %6302 = extractvalue %dx.types.ResRet.f32 %6300, 1
  %6303 = extractvalue %dx.types.ResRet.f32 %6300, 2
  %6304 = or i32 %6299, 12
  %6305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6304, i32 undef)  ; BufferLoad(srv,index,wot)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  %6307 = add i32 %6299, 28
  %6308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6307, i32 undef)  ; BufferLoad(srv,index,wot)
  %6309 = extractvalue %dx.types.ResRet.i32 %6308, 0
  %6310 = add i32 %6299, 44
  %6311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6310, i32 undef)  ; BufferLoad(srv,index,wot)
  %6312 = extractvalue %dx.types.ResRet.f32 %6311, 0
  %6313 = add i32 %6299, 48
  %6314 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6313, i32 undef)  ; BufferLoad(srv,index,wot)
  %6315 = extractvalue %dx.types.ResRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.ResRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.ResRet.f32 %6314, 2
  %6318 = add i32 %6299, 80
  %6319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6318, i32 undef)  ; BufferLoad(srv,index,wot)
  %6320 = extractvalue %dx.types.ResRet.f32 %6319, 1
  %6321 = extractvalue %dx.types.ResRet.f32 %6319, 2
  %6322 = call float @dx.op.dot3.f32(i32 55, float %6301, float %6302, float %6303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6323 = select i1 %176, float %6320, float %6301
  %6324 = select i1 %176, float %6322, float %6302
  %6325 = select i1 %176, float %6321, float %6303
  %6326 = icmp slt i32 %6309, 0
  %6327 = fsub fast float %6315, %134
  %6328 = fsub fast float %6316, %135
  %6329 = fsub fast float %6317, %136
  %6330 = call float @dx.op.dot3.f32(i32 55, float %6327, float %6328, float %6329, float %6327, float %6328, float %6329)  ; Dot3(ax,ay,az,bx,by,bz)
  %6331 = call float @dx.op.unary.f32(i32 24, float %6330)  ; Sqrt(value)
  %6332 = fdiv fast float 1.000000e+00, %6331
  %6333 = fmul fast float %6332, %6327
  %6334 = fmul fast float %6332, %6328
  %6335 = fmul fast float %6332, %6329
  %6336 = fadd fast float %6331, %6306
  %6337 = fdiv fast float 1.000000e+00, %6336
  %6338 = fmul float %6312, %6337
  %6339 = fmul float %6338, %6338
  %6340 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6341 = and i32 %6297, %6283
  %6342 = icmp eq i32 %6341, 0
  br i1 %6342, label %6365, label %6343, !dx.controlflow.hints !76

; <label>:6343                                    ; preds = %6286
  %6344 = lshr i32 %6231, 5
  %6345 = lshr i32 %6232, 5
  %6346 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %6344, i32 %6345, i32 %6295, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6347 = extractvalue %dx.types.ResRet.i32 %6346, 0
  %6348 = and i32 %6347, 3
  %6349 = icmp eq i32 %6348, 0
  %6350 = select i1 %6349, float 1.000000e+00, float 0.000000e+00
  %6351 = icmp eq i32 %6348, 3
  br i1 %6351, label %6352, label %6365

; <label>:6352                                    ; preds = %6343
  %6353 = lshr i32 %6347, 10
  %6354 = and i32 %6353, 8160
  %6355 = and i32 %6232, 31
  %6356 = or i32 %6354, %6355
  %6357 = lshr i32 %6347, 1
  %6358 = and i32 %6357, 16352
  %6359 = and i32 %6231, 31
  %6360 = or i32 %6358, %6359
  %6361 = lshr i32 %6347, 23
  %6362 = and i32 %6361, 255
  %6363 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %6360, i32 %6356, i32 %6362, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6364 = extractvalue %dx.types.ResRet.f32 %6363, 0
  br label %6365

; <label>:6365                                    ; preds = %6352, %6343, %6286
  %6366 = phi float [ %6364, %6352 ], [ %6350, %6343 ], [ 0.000000e+00, %6286 ]
  %6367 = call float @dx.op.binary.f32(i32 36, float %6366, float %6366)  ; FMin(a,b)
  %6368 = call float @dx.op.binary.f32(i32 36, float %6366, float %6367)  ; FMin(a,b)
  %6369 = fcmp fast ogt float %6368, 0.000000e+00
  br i1 %6369, label %6378, label %6370, !dx.controlflow.hints !77

; <label>:6370                                    ; preds = %6744, %6365
  %6371 = phi float [ %6288, %6365 ], [ %6787, %6744 ]
  %6372 = phi float [ %6289, %6365 ], [ %6788, %6744 ]
  %6373 = phi float [ %6290, %6365 ], [ %6789, %6744 ]
  %6374 = phi float [ %6291, %6365 ], [ %6781, %6744 ]
  %6375 = phi float [ %6292, %6365 ], [ %6782, %6744 ]
  %6376 = phi float [ %6293, %6365 ], [ %6783, %6744 ]
  %6377 = icmp eq i32 %6287, %6297
  br i1 %6377, label %6790, label %6286

; <label>:6378                                    ; preds = %6365
  %6379 = fmul fast float %6366, %6323
  %6380 = fmul fast float %6366, %6324
  %6381 = fmul fast float %6366, %6325
  %6382 = fsub fast float %6317, %5248
  %6383 = fcmp fast ogt float %6382, 0.000000e+00
  %6384 = fsub fast float %136, %5248
  %6385 = fcmp fast ogt float %6384, 0.000000e+00
  %6386 = xor i1 %6385, %6383
  %6387 = fsub fast float %5248, %6317
  %6388 = fmul fast float %6387, 2.000000e+00
  %6389 = fadd fast float %6388, %6317
  %6390 = select i1 %6386, float %6317, float %6389
  %6391 = fsub fast float %6390, %136
  %6392 = call float @dx.op.dot3.f32(i32 55, float %6327, float %6328, float %6391, float %6327, float %6328, float %6391)  ; Dot3(ax,ay,az,bx,by,bz)
  %6393 = call float @dx.op.unary.f32(i32 25, float %6392)  ; Rsqrt(value)
  %6394 = fmul fast float %6393, %6327
  %6395 = fmul fast float %6393, %6328
  %6396 = fmul fast float %6393, %6391
  %6397 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5256)  ; Dot3(ax,ay,az,bx,by,bz)
  %6398 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6394, float %6395, float %6396)  ; Dot3(ax,ay,az,bx,by,bz)
  %6399 = fdiv fast float 1.000000e+00, %6398
  %6400 = fmul fast float %6399, %6397
  %6401 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6384, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = fcmp fast ogt float %6401, 0.000000e+00
  %6403 = fcmp fast olt float %6401, 0.000000e+00
  %6404 = zext i1 %6402 to i32
  %6405 = zext i1 %6403 to i32
  %6406 = sub nsw i32 %6404, %6405
  %6407 = sitofp i32 %6406 to float
  %6408 = fsub fast float %6390, %5248
  %6409 = call float @dx.op.dot3.f32(i32 55, float %6327, float %6328, float %6408, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6410 = fcmp fast ogt float %6409, 0.000000e+00
  %6411 = fcmp fast olt float %6409, 0.000000e+00
  %6412 = zext i1 %6410 to i32
  %6413 = zext i1 %6411 to i32
  %6414 = sub nsw i32 %6412, %6413
  %6415 = sitofp i32 %6414 to float
  %6416 = fcmp fast une float %6407, %6415
  br i1 %6416, label %6417, label %6427

; <label>:6417                                    ; preds = %6378
  %6418 = fmul fast float %6400, %6396
  %6419 = fmul fast float %6400, %6395
  %6420 = fmul fast float %6400, %6394
  %6421 = fmul fast float %6420, %6420
  %6422 = fmul fast float %6419, %6419
  %6423 = fadd fast float %6421, %6422
  %6424 = fmul fast float %6418, %6418
  %6425 = fadd fast float %6423, %6424
  %6426 = call float @dx.op.unary.f32(i32 24, float %6425)  ; Sqrt(value)
  br label %6439

; <label>:6427                                    ; preds = %6378
  %6428 = icmp slt i32 %6406, 0
  br i1 %6428, label %6429, label %6439

; <label>:6429                                    ; preds = %6427
  %6430 = fsub fast float %134, %6315
  %6431 = fsub fast float %135, %6316
  %6432 = fsub fast float %136, %6390
  %6433 = fmul fast float %6430, %6430
  %6434 = fmul fast float %6431, %6431
  %6435 = fadd fast float %6433, %6434
  %6436 = fmul fast float %6432, %6432
  %6437 = fadd fast float %6435, %6436
  %6438 = call float @dx.op.unary.f32(i32 24, float %6437)  ; Sqrt(value)
  br label %6439

; <label>:6439                                    ; preds = %6429, %6427, %6417
  %6440 = phi float [ %6426, %6417 ], [ %6438, %6429 ], [ 0.000000e+00, %6427 ]
  %6441 = and i1 %6385, %6383
  %6442 = fsub fast float -0.000000e+00, %6440
  %6443 = select i1 %6441, float -0.000000e+00, float %6442
  %6444 = fmul fast float %5249, 0x3FF7154760000000
  %6445 = fmul fast float %6444, %6443
  %6446 = fmul fast float %5250, 0x3FF7154760000000
  %6447 = fmul fast float %6446, %6443
  %6448 = fmul fast float %5251, 0x3FF7154760000000
  %6449 = fmul fast float %6448, %6443
  %6450 = call float @dx.op.unary.f32(i32 21, float %6445)  ; Exp(value)
  %6451 = call float @dx.op.unary.f32(i32 21, float %6447)  ; Exp(value)
  %6452 = call float @dx.op.unary.f32(i32 21, float %6449)  ; Exp(value)
  %6453 = call float @dx.op.unary.f32(i32 7, float %6450)  ; Saturate(value)
  %6454 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6455 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6456 = fmul fast float %6379, %6453
  %6457 = fmul fast float %6380, %6454
  %6458 = fmul fast float %6381, %6455
  %6459 = fsub fast float %6333, %5448
  %6460 = fsub fast float %6334, %5447
  %6461 = fsub fast float %6335, %5446
  %6462 = call float @dx.op.dot3.f32(i32 55, float %6459, float %6460, float %6461, float %6459, float %6460, float %6461)  ; Dot3(ax,ay,az,bx,by,bz)
  %6463 = call float @dx.op.unary.f32(i32 25, float %6462)  ; Rsqrt(value)
  %6464 = fmul fast float %6463, %6459
  %6465 = fmul fast float %6463, %6460
  %6466 = fmul fast float %6463, %6461
  %6467 = call float @dx.op.dot3.f32(i32 55, float %6333, float %6334, float %6335, float %5455, float %5456, float %5457)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5444, float %5443, float %6464, float %6465, float %6466)  ; Dot3(ax,ay,az,bx,by,bz)
  %6469 = call float @dx.op.unary.f32(i32 7, float %6467)  ; Saturate(value)
  %6470 = fmul fast float %6469, %6340
  %6471 = fmul fast float %6469, %6469
  %6472 = fmul fast float %6471, %5475
  %6473 = call float @dx.op.unary.f32(i32 7, float %6472)  ; Saturate(value)
  %6474 = fmul fast float %6470, %6473
  %6475 = bitcast float %6330 to i32
  %6476 = ashr i32 %6475, 1
  %6477 = sub nsw i32 1597463007, %6476
  %6478 = bitcast i32 %6477 to float
  %6479 = fmul fast float %6478, %6327
  %6480 = fmul fast float %6478, %6328
  %6481 = fmul fast float %6478, %6329
  %6482 = fsub fast float %6479, %5448
  %6483 = fsub fast float %6480, %5447
  %6484 = fsub fast float %6481, %5446
  %6485 = call float @dx.op.dot3.f32(i32 55, float %6482, float %6483, float %6484, float %6482, float %6483, float %6484)  ; Dot3(ax,ay,az,bx,by,bz)
  %6486 = call float @dx.op.unary.f32(i32 25, float %6485)  ; Rsqrt(value)
  %6487 = fmul fast float %6482, %6486
  %6488 = fmul fast float %6483, %6486
  %6489 = fmul fast float %6484, %6486
  %6490 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %6487, float %6488, float %6489)  ; Dot3(ax,ay,az,bx,by,bz)
  %6491 = fmul fast float %6490, %6490
  %6492 = call float @dx.op.unary.f32(i32 6, float %6467)  ; FAbs(value)
  %6493 = call float @dx.op.binary.f32(i32 35, float %5817, float 0x3F847AE140000000)  ; FMax(a,b)
  %6494 = fmul fast float %6493, %6493
  %6495 = fmul fast float %6494, %6494
  %6496 = fsub fast float 1.000000e+00, %6495
  %6497 = fmul fast float %5462, %5462
  %6498 = fmul fast float %6497, %6496
  %6499 = fadd fast float %6498, %6495
  %6500 = bitcast float %6499 to i32
  %6501 = ashr i32 %6500, 1
  %6502 = add nsw i32 %6501, 532487669
  %6503 = bitcast i32 %6502 to float
  %6504 = fadd fast float %6503, %5462
  %6505 = fmul fast float %6495, %6491
  %6506 = fsub fast float 1.000000e+00, %6491
  %6507 = fadd fast float %6506, %6505
  %6508 = fmul fast float %6492, %6492
  %6509 = fmul fast float %6508, %6496
  %6510 = fadd fast float %6509, %6495
  %6511 = bitcast float %6510 to i32
  %6512 = ashr i32 %6511, 1
  %6513 = add nsw i32 %6512, 532487669
  %6514 = bitcast i32 %6513 to float
  %6515 = fadd fast float %6514, %6492
  %6516 = fmul fast float %6507, %6507
  %6517 = fmul fast float %6516, %6504
  %6518 = fmul fast float %6517, %6515
  %6519 = fdiv fast float 1.000000e+00, %6518
  %6520 = bitcast float %6495 to i32
  %6521 = sitofp i32 %6520 to float
  %6522 = fmul fast float %6521, 0x3FE7F73180000000
  %6523 = fadd fast float %6522, 0x41AFE27C40000000
  %6524 = fptosi float %6523 to i32
  %6525 = bitcast i32 %6524 to float
  %6526 = fmul fast float %6312, 0x3FD80E9D60000000
  %6527 = fmul fast float %6526, %6478
  %6528 = fadd fast float %6525, %6527
  %6529 = bitcast float %6528 to i32
  %6530 = sub nsw i32 2129859010, %6529
  %6531 = bitcast i32 %6530 to float
  %6532 = fmul fast float %6495, %6519
  %6533 = fmul fast float %6532, %6525
  %6534 = fmul fast float %6533, %6531
  %6535 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6536 = fsub fast float 1.000000e+00, %6535
  %6537 = bitcast float %6536 to i32
  %6538 = sitofp i32 %6537 to float
  %6539 = fmul fast float %6538, 5.000000e+00
  %6540 = fadd fast float %6539, 0xC1EFBF8940000000
  %6541 = fptosi float %6540 to i32
  %6542 = bitcast i32 %6541 to float
  %6543 = fsub fast float 1.000000e+00, %5449
  %6544 = fsub fast float 1.000000e+00, %5450
  %6545 = fsub fast float 1.000000e+00, %5460
  %6546 = fmul fast float %6542, %6543
  %6547 = fmul fast float %6542, %6544
  %6548 = fmul fast float %6542, %6545
  %6549 = fadd fast float %6546, %5449
  %6550 = fadd fast float %6547, %5450
  %6551 = fadd fast float %6548, %5460
  br i1 %5732, label %6552, label %6575

; <label>:6552                                    ; preds = %6439
  %6553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %6535, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6554 = extractvalue %dx.types.ResRet.f32 %6553, 0
  %6555 = extractvalue %dx.types.ResRet.f32 %6553, 1
  %6556 = extractvalue %dx.types.ResRet.f32 %6553, 2
  %6557 = fadd fast float %6554, -5.000000e-01
  %6558 = fadd fast float %6555, -5.000000e-01
  %6559 = fadd fast float %6556, -5.000000e-01
  %6560 = fmul fast float %5449, 4.000000e+00
  %6561 = fmul fast float %6560, %6543
  %6562 = fmul fast float %6561, %6557
  %6563 = fmul fast float %5450, 4.000000e+00
  %6564 = fmul fast float %6563, %6544
  %6565 = fmul fast float %6564, %6558
  %6566 = fmul fast float %5460, 4.000000e+00
  %6567 = fmul fast float %6566, %6545
  %6568 = fmul fast float %6567, %6559
  %6569 = fadd fast float %6562, %6549
  %6570 = fadd fast float %6565, %6550
  %6571 = fadd fast float %6568, %6551
  %6572 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  %6573 = call float @dx.op.unary.f32(i32 7, float %6570)  ; Saturate(value)
  %6574 = call float @dx.op.unary.f32(i32 7, float %6571)  ; Saturate(value)
  br label %6575

; <label>:6575                                    ; preds = %6552, %6439
  %6576 = phi float [ %6572, %6552 ], [ %6549, %6439 ]
  %6577 = phi float [ %6573, %6552 ], [ %6550, %6439 ]
  %6578 = phi float [ %6574, %6552 ], [ %6551, %6439 ]
  %6579 = fmul fast float %6467, 9.843750e-01
  %6580 = fadd fast float %6579, 7.812500e-03
  %6581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6580, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6582 = extractvalue %dx.types.ResRet.f32 %6581, 2
  %6583 = extractvalue %dx.types.ResRet.f32 %6581, 3
  %6584 = fmul fast float %6582, %5449
  %6585 = fmul fast float %6582, %5450
  %6586 = fmul fast float %6582, %5460
  %6587 = fadd fast float %6584, %6583
  %6588 = fadd fast float %6585, %6583
  %6589 = fadd fast float %6586, %6583
  br i1 %5732, label %6590, label %6613

; <label>:6590                                    ; preds = %6575
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %6467, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = extractvalue %dx.types.ResRet.f32 %6591, 1
  %6594 = extractvalue %dx.types.ResRet.f32 %6591, 2
  %6595 = fadd fast float %6592, -5.000000e-01
  %6596 = fadd fast float %6593, -5.000000e-01
  %6597 = fadd fast float %6594, -5.000000e-01
  %6598 = fmul fast float %5449, 4.000000e+00
  %6599 = fmul fast float %6598, %6543
  %6600 = fmul fast float %6599, %6595
  %6601 = fmul fast float %5450, 4.000000e+00
  %6602 = fmul fast float %6601, %6544
  %6603 = fmul fast float %6602, %6596
  %6604 = fmul fast float %5460, 4.000000e+00
  %6605 = fmul fast float %6604, %6545
  %6606 = fmul fast float %6605, %6597
  %6607 = fadd fast float %6600, %6587
  %6608 = fadd fast float %6603, %6588
  %6609 = fadd fast float %6606, %6589
  %6610 = call float @dx.op.unary.f32(i32 7, float %6607)  ; Saturate(value)
  %6611 = call float @dx.op.unary.f32(i32 7, float %6608)  ; Saturate(value)
  %6612 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  br label %6613

; <label>:6613                                    ; preds = %6590, %6575
  %6614 = phi float [ %6610, %6590 ], [ %6587, %6575 ]
  %6615 = phi float [ %6611, %6590 ], [ %6588, %6575 ]
  %6616 = phi float [ %6612, %6590 ], [ %6589, %6575 ]
  %6617 = call float @dx.op.binary.f32(i32 35, float %6615, float %6616)  ; FMax(a,b)
  %6618 = call float @dx.op.binary.f32(i32 35, float %6614, float %6617)  ; FMax(a,b)
  %6619 = fsub fast float 1.000000e+00, %6618
  %6620 = call float @dx.op.binary.f32(i32 35, float %6492, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6621 = fdiv fast float %4172, %6620
  %6622 = fmul fast float %5848, %6621
  %6623 = fmul fast float %5838, %6621
  %6624 = fmul fast float %5828, %6621
  %6625 = call float @dx.op.unary.f32(i32 21, float %6622)  ; Exp(value)
  %6626 = call float @dx.op.unary.f32(i32 21, float %6623)  ; Exp(value)
  %6627 = call float @dx.op.unary.f32(i32 21, float %6624)  ; Exp(value)
  %6628 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6629 = call float @dx.op.unary.f32(i32 7, float %6626)  ; Saturate(value)
  %6630 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6631 = select i1 %5847, float %6628, float 0.000000e+00
  %6632 = select i1 %5837, float %6629, float 0.000000e+00
  %6633 = select i1 %5827, float %6630, float 0.000000e+00
  %6634 = fsub fast float -0.000000e+00, %5455
  %6635 = fsub fast float -0.000000e+00, %5456
  %6636 = fsub fast float -0.000000e+00, %5457
  %6637 = call float @dx.op.dot3.f32(i32 55, float %6333, float %6334, float %6335, float %6634, float %6635, float %6636)  ; Dot3(ax,ay,az,bx,by,bz)
  %6638 = call float @dx.op.unary.f32(i32 7, float %6637)  ; Saturate(value)
  %6639 = fmul fast float %6638, %6340
  %6640 = fmul fast float %6638, 9.843750e-01
  %6641 = fadd fast float %6640, 7.812500e-03
  %6642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6641, float %5722, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 2
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 3
  %6645 = fmul fast float %6643, %5449
  %6646 = fmul fast float %6643, %5450
  %6647 = fmul fast float %6643, %5460
  %6648 = fadd fast float %6645, %6644
  %6649 = fadd fast float %6646, %6644
  %6650 = fadd fast float %6647, %6644
  br i1 %5732, label %6651, label %6674

; <label>:6651                                    ; preds = %6613
  %6652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4818, float %6638, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6653 = extractvalue %dx.types.ResRet.f32 %6652, 0
  %6654 = extractvalue %dx.types.ResRet.f32 %6652, 1
  %6655 = extractvalue %dx.types.ResRet.f32 %6652, 2
  %6656 = fadd fast float %6653, -5.000000e-01
  %6657 = fadd fast float %6654, -5.000000e-01
  %6658 = fadd fast float %6655, -5.000000e-01
  %6659 = fmul fast float %5449, 4.000000e+00
  %6660 = fmul fast float %6659, %6543
  %6661 = fmul fast float %6660, %6656
  %6662 = fmul fast float %5450, 4.000000e+00
  %6663 = fmul fast float %6662, %6544
  %6664 = fmul fast float %6663, %6657
  %6665 = fmul fast float %5460, 4.000000e+00
  %6666 = fmul fast float %6665, %6545
  %6667 = fmul fast float %6666, %6658
  %6668 = fadd fast float %6661, %6648
  %6669 = fadd fast float %6664, %6649
  %6670 = fadd fast float %6667, %6650
  %6671 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6672 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6673 = call float @dx.op.unary.f32(i32 7, float %6670)  ; Saturate(value)
  br label %6674

; <label>:6674                                    ; preds = %6651, %6613
  %6675 = phi float [ %6671, %6651 ], [ %6648, %6613 ]
  %6676 = phi float [ %6672, %6651 ], [ %6649, %6613 ]
  %6677 = phi float [ %6673, %6651 ], [ %6650, %6613 ]
  %6678 = call float @dx.op.binary.f32(i32 35, float %6676, float %6677)  ; FMax(a,b)
  %6679 = call float @dx.op.binary.f32(i32 35, float %6675, float %6678)  ; FMax(a,b)
  %6680 = fsub fast float 1.000000e+00, %6679
  %6681 = fmul fast float %5817, %5822
  %6682 = fadd fast float %5824, %6681
  %6683 = call float @dx.op.unary.f32(i32 7, float %6682)  ; Saturate(value)
  %6684 = fsub fast float %6479, %5468
  %6685 = fsub fast float %6480, %5469
  %6686 = fsub fast float %6481, %5470
  %6687 = call float @dx.op.dot3.f32(i32 55, float %6684, float %6685, float %6686, float %6684, float %6685, float %6686)  ; Dot3(ax,ay,az,bx,by,bz)
  %6688 = call float @dx.op.unary.f32(i32 25, float %6687)  ; Rsqrt(value)
  %6689 = fmul fast float %6684, %6688
  %6690 = fmul fast float %6685, %6688
  %6691 = fmul fast float %6686, %6688
  %6692 = call float @dx.op.dot3.f32(i32 55, float %6634, float %6635, float %6636, float %6689, float %6690, float %6691)  ; Dot3(ax,ay,az,bx,by,bz)
  %6693 = fmul fast float %6692, %6692
  %6694 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6695 = call float @dx.op.binary.f32(i32 35, float %6683, float 0x3F847AE140000000)  ; FMax(a,b)
  %6696 = fmul fast float %6695, %6695
  %6697 = fmul fast float %6696, %6696
  %6698 = fsub fast float 1.000000e+00, %6697
  %6699 = fmul fast float %6497, %6698
  %6700 = fadd fast float %6699, %6697
  %6701 = bitcast float %6700 to i32
  %6702 = ashr i32 %6701, 1
  %6703 = add nsw i32 %6702, 532487669
  %6704 = bitcast i32 %6703 to float
  %6705 = fadd fast float %6704, %5462
  %6706 = fmul fast float %6697, %6693
  %6707 = fsub fast float 1.000000e+00, %6693
  %6708 = fadd fast float %6707, %6706
  %6709 = fmul fast float %6694, %6694
  %6710 = fmul fast float %6709, %6698
  %6711 = fadd fast float %6710, %6697
  %6712 = bitcast float %6711 to i32
  %6713 = ashr i32 %6712, 1
  %6714 = add nsw i32 %6713, 532487669
  %6715 = bitcast i32 %6714 to float
  %6716 = fadd fast float %6715, %6694
  %6717 = fmul fast float %6708, %6708
  %6718 = fmul fast float %6717, %6705
  %6719 = fmul fast float %6718, %6716
  %6720 = fdiv fast float 1.000000e+00, %6719
  %6721 = bitcast float %6697 to i32
  %6722 = sitofp i32 %6721 to float
  %6723 = fmul fast float %6722, 0x3FE7F73180000000
  %6724 = fadd fast float %6723, 0x41AFE27C40000000
  %6725 = fptosi float %6724 to i32
  %6726 = bitcast i32 %6725 to float
  %6727 = fadd fast float %6726, %6527
  %6728 = bitcast float %6727 to i32
  %6729 = sub nsw i32 2129859010, %6728
  %6730 = bitcast i32 %6729 to float
  %6731 = fmul fast float %6697, %6720
  %6732 = fmul fast float %6731, %6726
  %6733 = fmul fast float %6732, %6730
  br i1 %6326, label %6734, label %6744

; <label>:6734                                    ; preds = %6674
  %6735 = fmul fast float %6639, %6631
  %6736 = fmul fast float %6639, %6632
  %6737 = fmul fast float %6639, %6633
  %6738 = fmul fast float %6735, %6680
  %6739 = fmul fast float %6738, %6733
  %6740 = fmul fast float %6736, %6680
  %6741 = fmul fast float %6740, %6733
  %6742 = fmul fast float %6737, %6680
  %6743 = fmul fast float %6742, %6733
  br label %6744

; <label>:6744                                    ; preds = %6734, %6674
  %6745 = phi float [ %6739, %6734 ], [ 0.000000e+00, %6674 ]
  %6746 = phi float [ %6741, %6734 ], [ 0.000000e+00, %6674 ]
  %6747 = phi float [ %6743, %6734 ], [ 0.000000e+00, %6674 ]
  %6748 = fmul fast float %6576, %6534
  %6749 = fmul fast float %6577, %6534
  %6750 = fmul fast float %6578, %6534
  %6751 = fsub fast float 1.000000e+00, %6468
  %6752 = bitcast float %6751 to i32
  %6753 = sitofp i32 %6752 to float
  %6754 = fmul fast float %6753, 5.000000e+00
  %6755 = fadd fast float %6754, 0xC1EFBF8940000000
  %6756 = fptosi float %6755 to i32
  %6757 = bitcast i32 %6756 to float
  %6758 = fmul fast float %6757, %4819
  %6759 = fmul fast float %6619, %6758
  %6760 = fmul fast float %6759, %5779
  %6761 = fmul fast float %6759, %5780
  %6762 = fmul fast float %6759, %5781
  %6763 = fadd fast float %6760, %6748
  %6764 = fadd fast float %6761, %6749
  %6765 = fadd fast float %6762, %6750
  %6766 = fmul fast float %6763, %6474
  %6767 = fmul fast float %6764, %6474
  %6768 = fmul fast float %6765, %6474
  %6769 = fadd fast float %6766, %6745
  %6770 = fadd fast float %6767, %6746
  %6771 = fadd fast float %6768, %6747
  %6772 = fmul fast float %6456, %4815
  %6773 = fmul fast float %6772, %6474
  %6774 = fmul fast float %6773, %6619
  %6775 = fmul fast float %6457, %4815
  %6776 = fmul fast float %6775, %6474
  %6777 = fmul fast float %6776, %6619
  %6778 = fmul fast float %6458, %4815
  %6779 = fmul fast float %6778, %6474
  %6780 = fmul fast float %6779, %6619
  %6781 = fadd fast float %6774, %6291
  %6782 = fadd fast float %6777, %6292
  %6783 = fadd fast float %6780, %6293
  %6784 = fmul fast float %6772, %6769
  %6785 = fmul fast float %6775, %6770
  %6786 = fmul fast float %6778, %6771
  %6787 = fadd fast float %6784, %6288
  %6788 = fadd fast float %6785, %6289
  %6789 = fadd fast float %6786, %6290
  br label %6370

; <label>:6790                                    ; preds = %6370
  br label %6791

; <label>:6791                                    ; preds = %6790, %6254
  %6792 = phi float [ %6256, %6254 ], [ %6371, %6790 ]
  %6793 = phi float [ %6257, %6254 ], [ %6372, %6790 ]
  %6794 = phi float [ %6258, %6254 ], [ %6373, %6790 ]
  %6795 = phi float [ %6259, %6254 ], [ %6374, %6790 ]
  %6796 = phi float [ %6260, %6254 ], [ %6375, %6790 ]
  %6797 = phi float [ %6261, %6254 ], [ %6376, %6790 ]
  %6798 = add i32 %6255, 1
  %6799 = icmp ugt i32 %6798, %6251
  br i1 %6799, label %6800, label %6254

; <label>:6800                                    ; preds = %6791
  br label %6801

; <label>:6801                                    ; preds = %6800, %6230, %6220
  %6802 = phi float [ %6221, %6220 ], [ %6221, %6230 ], [ %6792, %6800 ]
  %6803 = phi float [ %6222, %6220 ], [ %6222, %6230 ], [ %6793, %6800 ]
  %6804 = phi float [ %6223, %6220 ], [ %6223, %6230 ], [ %6794, %6800 ]
  %6805 = phi float [ %6224, %6220 ], [ %6224, %6230 ], [ %6795, %6800 ]
  %6806 = phi float [ %6225, %6220 ], [ %6225, %6230 ], [ %6796, %6800 ]
  %6807 = phi float [ %6226, %6220 ], [ %6226, %6230 ], [ %6797, %6800 ]
  %6808 = call float @dx.op.unary.f32(i32 24, float %5452)  ; Sqrt(value)
  %6809 = call float @dx.op.unary.f32(i32 24, float %5453)  ; Sqrt(value)
  %6810 = call float @dx.op.unary.f32(i32 24, float %5454)  ; Sqrt(value)
  %6811 = fmul fast float %6808, %6805
  %6812 = fmul fast float %6809, %6806
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  br i1 %176, label %6815, label %6835

; <label>:6815                                    ; preds = %6801
  %6816 = fadd fast float %6807, %4821
  %6817 = fmul fast float %6816, %4822
  %6818 = fsub fast float 1.000000e+00, %4822
  %6819 = call float @dx.op.unary.f32(i32 7, float %6818)  ; Saturate(value)
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 3
  %6822 = fmul fast float %6821, %6819
  %6823 = fadd fast float %6822, %6817
  %6824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6825 = extractvalue %dx.types.CBufRet.f32 %6824, 0
  %6826 = fmul fast float %6825, %5787
  %6827 = fsub fast float %6823, %6826
  %6828 = fadd fast float %6812, %6811
  %6829 = fmul fast float %6814, %6828
  %6830 = extractvalue %dx.types.CBufRet.f32 %6820, 1
  %6831 = fsub fast float %6827, %6830
  %6832 = extractvalue %dx.types.CBufRet.f32 %6820, 2
  %6833 = fmul fast float %6831, %6832
  %6834 = call float @dx.op.unary.f32(i32 7, float %6833)  ; Saturate(value)
  br label %6851

; <label>:6835                                    ; preds = %6801
  %6836 = fmul fast float %6810, %6807
  %6837 = fmul fast float %6814, %6811
  %6838 = fmul fast float %6814, %6812
  %6839 = fmul fast float %6836, %6814
  %6840 = add i32 %35, 356
  %6841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6840, i32 undef)  ; BufferLoad(srv,index,wot)
  %6842 = extractvalue %dx.types.ResRet.i32 %6841, 0
  %6843 = and i32 %6842, 32
  %6844 = icmp eq i32 %6843, 0
  br i1 %6844, label %6851, label %6845

; <label>:6845                                    ; preds = %6835
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 0
  %6848 = fmul fast float %6847, 0x3FE99999A0000000
  %6849 = fadd fast float %6847, %6837
  %6850 = fadd fast float %6848, %6839
  br label %6851

; <label>:6851                                    ; preds = %6845, %6835, %6815
  %6852 = phi float [ %6829, %6815 ], [ %6849, %6845 ], [ %6837, %6835 ]
  %6853 = phi float [ %6834, %6815 ], [ %6838, %6845 ], [ %6838, %6835 ]
  %6854 = phi float [ 1.000000e+00, %6815 ], [ %6850, %6845 ], [ %6839, %6835 ]
  %6855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6856 = extractvalue %dx.types.CBufRet.f32 %6855, 0
  %6857 = fmul fast float %6856, %6803
  %6858 = fmul fast float %6856, %6804
  %6859 = fadd fast float %6803, %6802
  %6860 = select i1 %176, float %6859, float %6802
  %6861 = fmul float %6860, %6856
  %6862 = select i1 %176, float 0.000000e+00, float %6857
  %6863 = select i1 %176, float 0.000000e+00, float %6858
  %6864 = fmul fast float %6852, %6808
  %6865 = fmul fast float %6853, %6809
  %6866 = fmul fast float %6854, %6810
  %6867 = fadd fast float %6861, %6864
  %6868 = fadd fast float %6862, %6865
  %6869 = fadd fast float %6863, %6866
  %6870 = select i1 %176, float %6853, float %6868
  %6871 = select i1 %176, float %6854, float %6869
  %6872 = call float @dx.op.binary.f32(i32 36, float %6867, float 3.225500e+04)  ; FMin(a,b)
  %6873 = call float @dx.op.binary.f32(i32 36, float %6870, float 3.225500e+04)  ; FMin(a,b)
  %6874 = call float @dx.op.binary.f32(i32 36, float %6871, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6872)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6873)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6874)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !74}
!49 = !{!50, !72, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69, !71}
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
!67 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !52, i8 1, i32 1, i8 4, i32 10, i8 0, !68}
!68 = !{i32 3, i32 13}
!69 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !52, i8 1, i32 1, i8 1, i32 11, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

