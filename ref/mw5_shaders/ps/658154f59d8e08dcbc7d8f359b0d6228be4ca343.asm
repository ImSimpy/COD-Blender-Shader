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
; shader hash: 8acad44c646913683b4a308fb0cf8428
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
  %359 = add i32 %35, 472
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
  br i1 %412, label %924, label %413

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
  %517 = add i32 %35, 360
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
  %540 = add i32 %35, 440
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
  %738 = add i32 %35, 376
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
  %822 = add i32 %35, 392
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
  %860 = and i32 %859, 10240
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %906, label %862

; <label>:862                                     ; preds = %854
  %863 = add i32 %35, 456
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = add i32 %865, 0
  %867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %866, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %868 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %867, %dx.types.Handle %72, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 1
  %870 = extractvalue %dx.types.ResRet.f32 %868, 3
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = and i32 %872, 1048576
  %874 = icmp ne i32 %873, 0
  %875 = and i32 %872, 8192
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %892, label %877

; <label>:877                                     ; preds = %862
  %878 = extractvalue %dx.types.ResRet.f32 %868, 2
  %879 = select i1 %874, float %878, float %869
  %880 = extractvalue %dx.types.ResRet.f32 %868, 0
  %881 = select i1 %874, float %880, float %869
  %882 = add i32 %35, 96
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = lshr i32 %884, 16
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = fmul fast float %887, 0x3F80101020000000
  %889 = fmul fast float %888, %881
  %890 = fmul fast float %888, %869
  %891 = fmul fast float %888, %879
  br label %892

; <label>:892                                     ; preds = %877, %862
  %893 = phi float [ %889, %877 ], [ 0.000000e+00, %862 ]
  %894 = phi float [ %890, %877 ], [ 0.000000e+00, %862 ]
  %895 = phi float [ %891, %877 ], [ 0.000000e+00, %862 ]
  %896 = and i32 %872, 2048
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %906, label %898

; <label>:898                                     ; preds = %892
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = shl i32 %900, 4
  %902 = and i32 %901, 32752
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = fmul fast float %903, %870
  %905 = call float @dx.op.binary.f32(i32 35, float %904, float 0x3F70101020000000)  ; FMax(a,b)
  br label %906

; <label>:906                                     ; preds = %898, %892, %854
  %907 = phi float [ %893, %898 ], [ %893, %892 ], [ 0.000000e+00, %854 ]
  %908 = phi float [ %894, %898 ], [ %894, %892 ], [ 0.000000e+00, %854 ]
  %909 = phi float [ %895, %898 ], [ %895, %892 ], [ 0.000000e+00, %854 ]
  %910 = phi float [ %905, %898 ], [ 0x3F70101020000000, %892 ], [ 0x3F70101020000000, %854 ]
  %911 = add i32 %35, 96
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %913, 8
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %920 = fmul fast float %918, %919
  %921 = fadd fast float %920, %915
  %922 = fmul fast float %921, 0x3F70101020000000
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  br label %924

; <label>:924                                     ; preds = %906, %398
  %925 = phi float [ 0.000000e+00, %398 ], [ %808, %906 ]
  %926 = phi float [ 0.000000e+00, %398 ], [ %809, %906 ]
  %927 = phi float [ 0.000000e+00, %398 ], [ %727, %906 ]
  %928 = phi float [ 0.000000e+00, %398 ], [ %728, %906 ]
  %929 = phi float [ 0.000000e+00, %398 ], [ %729, %906 ]
  %930 = phi float [ 0.000000e+00, %398 ], [ %855, %906 ]
  %931 = phi float [ 0.000000e+00, %398 ], [ %856, %906 ]
  %932 = phi float [ 0.000000e+00, %398 ], [ %857, %906 ]
  %933 = phi float [ 0.000000e+00, %398 ], [ %907, %906 ]
  %934 = phi float [ 0.000000e+00, %398 ], [ %908, %906 ]
  %935 = phi float [ 0.000000e+00, %398 ], [ %909, %906 ]
  %936 = phi float [ 0.000000e+00, %398 ], [ %713, %906 ]
  %937 = phi float [ 0.000000e+00, %398 ], [ 1.000000e+00, %906 ]
  %938 = phi float [ 0.000000e+00, %398 ], [ %807, %906 ]
  %939 = phi float [ 0.000000e+00, %398 ], [ %810, %906 ]
  %940 = phi float [ 0.000000e+00, %398 ], [ %910, %906 ]
  %941 = phi float [ 0.000000e+00, %398 ], [ %923, %906 ]
  br i1 %349, label %1870, label %942

; <label>:942                                     ; preds = %924
  %943 = icmp ult i32 %404, 2
  %944 = add i32 %35, 40
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = add i32 %35, 44
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = or i32 %949, %946
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %1870, label %952

; <label>:952                                     ; preds = %942
  %953 = and i32 %946, 262144
  %954 = icmp ne i32 %953, 0
  %955 = select i1 %954, float %38, float 1.000000e+00
  %956 = select i1 %954, float %39, float 0.000000e+00
  %957 = select i1 %954, float %40, float 0.000000e+00
  %958 = select i1 %954, float %41, float 1.000000e+00
  %959 = select i1 %954, float %42, float %63
  %960 = select i1 %954, float %43, float %64
  %961 = add i32 %35, 300
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 16
  %965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %964)  ; LegacyF16ToF32(value)
  %966 = fmul fast float %965, 0x3F50624DE0000000
  %967 = add i32 %35, 104
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = lshr i32 %969, 16
  %971 = and i32 %970, 255
  %972 = lshr i32 %969, 24
  %973 = add i32 %35, 308
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = and i32 %975, 65535
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = lshr i32 %975, 16
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = add i32 %35, 48
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = lshr i32 %982, 22
  %984 = shl nuw nsw i32 %983, 5
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = shl i32 %982, 4
  %987 = and i32 %986, 32752
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = lshr i32 %982, 7
  %990 = and i32 %989, 32752
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %994 = fmul fast float %993, 1.000000e+03
  %995 = fmul fast float %259, %994
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = fadd fast float %996, %249
  %998 = fmul fast float %260, %994
  %999 = call float @dx.op.unary.f32(i32 22, float %998)  ; Frc(value)
  %1000 = fadd fast float %999, %251
  %1001 = fmul fast float %966, %994
  %1002 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1003 = fmul fast float %1002, 0x401921FB60000000
  %1004 = fadd fast float %1003, %985
  %1005 = call float @dx.op.unary.f32(i32 13, float %1004)  ; Sin(value)
  %1006 = call float @dx.op.unary.f32(i32 12, float %1004)  ; Cos(value)
  %1007 = fsub fast float -0.000000e+00, %1005
  %1008 = fadd fast float %959, -5.000000e-01
  %1009 = fadd fast float %960, -5.000000e-01
  %1010 = fmul fast float %977, %1008
  %1011 = fmul fast float %979, %1009
  %1012 = fadd fast float %1010, 5.000000e-01
  %1013 = fadd fast float %1011, 5.000000e-01
  %1014 = fmul fast float %988, %1012
  %1015 = fmul fast float %991, %1013
  %1016 = fmul fast float %1006, %1014
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %1007, float %1015, float %1016)  ; FMad(a,b,c)
  %1018 = fmul fast float %1005, %1014
  %1019 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %1015, float %1018)  ; FMad(a,b,c)
  %1020 = fadd fast float %997, %1017
  %1021 = fadd fast float %1000, %1019
  %1022 = icmp ugt i32 %971, 1
  %1023 = icmp ugt i32 %969, 33554431
  %1024 = or i1 %1023, %1022
  br i1 %1024, label %1025, label %1050

; <label>:1025                                    ; preds = %952
  %1026 = add i32 %35, 244
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = lshr i32 %1028, 16
  %1030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1029)  ; LegacyF16ToF32(value)
  %1031 = fmul fast float %993, %1030
  %1032 = call float @dx.op.unary.f32(i32 22, float %1031)  ; Frc(value)
  %1033 = mul nuw nsw i32 %971, %972
  %1034 = uitofp i32 %1033 to float
  %1035 = fmul fast float %1032, %1034
  %1036 = call float @dx.op.unary.f32(i32 27, float %1035)  ; Round_ni(value)
  %1037 = fptoui float %1036 to i32
  %1038 = urem i32 %1037, %971
  %1039 = udiv i32 %1037, %972
  %1040 = call float @dx.op.unary.f32(i32 22, float %1020)  ; Frc(value)
  %1041 = call float @dx.op.unary.f32(i32 22, float %1021)  ; Frc(value)
  %1042 = uitofp i32 %1038 to float
  %1043 = uitofp i32 %1039 to float
  %1044 = fadd fast float %1040, %1042
  %1045 = fadd fast float %1041, %1043
  %1046 = uitofp i32 %971 to float
  %1047 = uitofp i32 %972 to float
  %1048 = fdiv fast float %1044, %1046
  %1049 = fdiv fast float %1045, %1047
  br label %1050

; <label>:1050                                    ; preds = %1025, %952
  %1051 = phi float [ %1048, %1025 ], [ %1020, %952 ]
  %1052 = phi float [ %1049, %1025 ], [ %1021, %952 ]
  %1053 = and i32 %946, 16777216
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1164, label %1055

; <label>:1055                                    ; preds = %1050
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.CBufRet.f32 %1056, 2
  %1060 = fadd fast float %1057, %134
  %1061 = fadd fast float %1058, %135
  %1062 = fadd fast float %1059, %136
  %1063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1064 = extractvalue %dx.types.CBufRet.f32 %1063, 0
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = icmp eq i32 %36, 65535
  br i1 %1066, label %1161, label %1067

; <label>:1067                                    ; preds = %1055
  %1068 = lshr i32 %36, 1
  %1069 = shl i32 %1068, 2
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %36, 1
  %1073 = icmp ne i32 %1072, 0
  %1074 = lshr i32 %1071, 16
  %1075 = and i32 %1071, 65535
  %1076 = select i1 %1073, i32 %1074, i32 %1075
  %1077 = icmp eq i32 %1076, 65535
  br i1 %1077, label %1157, label %1078

; <label>:1078                                    ; preds = %1067
  %1079 = mul nuw nsw i32 %1076, 40
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = add nuw nsw i32 %1079, 12
  %1085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = add nuw nsw i32 %1079, 24
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.ResRet.f32 %1090, 1
  %1093 = extractvalue %dx.types.ResRet.f32 %1090, 2
  %1094 = add nuw nsw i32 %1079, 36
  %1095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = fsub fast float %1060, %1081
  %1098 = fsub fast float %1061, %1082
  %1099 = fsub fast float %1062, %1083
  %1100 = fmul fast float %1096, %1097
  %1101 = fmul fast float %1096, %1098
  %1102 = fmul fast float %1096, %1099
  %1103 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1105 = call float @dx.op.unary.f32(i32 27, float %1102)  ; Round_ni(value)
  %1106 = fadd fast float %1103, 5.000000e-01
  %1107 = fadd fast float %1104, 5.000000e-01
  %1108 = fadd fast float %1105, 5.000000e-01
  %1109 = fmul fast float %1106, %1086
  %1110 = fmul fast float %1107, %1087
  %1111 = fmul fast float %1108, %1088
  %1112 = shl i32 %36, 2
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call float @dx.op.unary.f32(i32 22, float %1109)  ; Frc(value)
  %1118 = call float @dx.op.unary.f32(i32 22, float %1110)  ; Frc(value)
  %1119 = call float @dx.op.unary.f32(i32 22, float %1111)  ; Frc(value)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1116, %dx.types.Handle %30, float %1117, float %1118, float %1119, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = fmul fast float %1121, 1.023000e+03
  %1125 = fmul fast float %1122, 1.023000e+03
  %1126 = fmul fast float %1123, 1.023000e+03
  %1127 = fadd fast float %1124, 5.000000e-01
  %1128 = fadd fast float %1125, 5.000000e-01
  %1129 = fadd fast float %1126, 5.000000e-01
  %1130 = call float @dx.op.unary.f32(i32 27, float %1127)  ; Round_ni(value)
  %1131 = call float @dx.op.unary.f32(i32 27, float %1128)  ; Round_ni(value)
  %1132 = call float @dx.op.unary.f32(i32 27, float %1129)  ; Round_ni(value)
  %1133 = fsub fast float %1100, %1103
  %1134 = fsub fast float %1101, %1104
  %1135 = fsub fast float %1102, %1105
  %1136 = fmul fast float %1133, 7.500000e-01
  %1137 = fmul fast float %1134, 7.500000e-01
  %1138 = fmul fast float %1135, 7.500000e-01
  %1139 = fadd fast float %1103, 1.250000e-01
  %1140 = fadd fast float %1139, %1136
  %1141 = fadd fast float %1140, %1130
  %1142 = fadd fast float %1104, 1.250000e-01
  %1143 = fadd fast float %1142, %1137
  %1144 = fadd fast float %1143, %1131
  %1145 = fadd fast float %1105, 1.250000e-01
  %1146 = fadd fast float %1145, %1138
  %1147 = fadd fast float %1146, %1132
  %1148 = fmul fast float %1141, %1091
  %1149 = fmul fast float %1144, %1092
  %1150 = fmul fast float %1147, %1093
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1152, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1154, %dx.types.Handle %28, float %1148, float %1149, float %1150, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  br label %1157

; <label>:1157                                    ; preds = %1078, %1067
  %1158 = phi float [ %1156, %1078 ], [ -1.000000e+00, %1067 ]
  %1159 = fadd fast float %1158, %1065
  %1160 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  br label %1161

; <label>:1161                                    ; preds = %1157, %1055
  %1162 = phi float [ %1160, %1157 ], [ %1065, %1055 ]
  %1163 = fmul fast float %1162, %401
  br label %1164

; <label>:1164                                    ; preds = %1161, %1050
  %1165 = phi float [ %1163, %1161 ], [ %401, %1050 ]
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 256
  %1169 = icmp eq i32 %1168, 0
  br i1 %1169, label %1216, label %1170

; <label>:1170                                    ; preds = %1164
  %1171 = add i32 %35, 428
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %1173, 0
  %1175 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1174, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1176 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1175, %dx.types.Handle %72, float %1051, float %1052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1177 = extractvalue %dx.types.ResRet.f32 %1176, 0
  %1178 = add i32 %35, 116
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1178, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = shl i32 %1180, 4
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = lshr i32 %1180, 7
  %1185 = and i32 %1184, 32752
  %1186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1185)  ; LegacyF16ToF32(value)
  %1187 = fsub fast float 1.000000e+00, %1165
  %1188 = call float @dx.op.binary.f32(i32 35, float %1187, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1189 = bitcast float %1165 to i32
  %1190 = sitofp i32 %1189 to float
  %1191 = fadd fast float %1190, 0xC1CFBF8940000000
  %1192 = fmul fast float %1186, %1191
  %1193 = fadd fast float %1192, 0x41CFBF8940000000
  %1194 = fptosi float %1193 to i32
  %1195 = bitcast i32 %1194 to float
  %1196 = bitcast float %1188 to i32
  %1197 = sitofp i32 %1196 to float
  %1198 = fadd fast float %1197, 0xC1CFBF8940000000
  %1199 = fmul fast float %1198, %1186
  %1200 = fadd fast float %1199, 0x41CFBF8940000000
  %1201 = fptosi float %1200 to i32
  %1202 = bitcast i32 %1201 to float
  %1203 = fmul fast float %1195, %1183
  %1204 = fmul fast float %1202, %1183
  %1205 = fsub fast float %1188, %1203
  %1206 = fadd fast float %1204, %1188
  %1207 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1208 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1209 = fsub fast float %1177, %1207
  %1210 = fsub fast float %1208, %1207
  %1211 = bitcast float %1210 to i32
  %1212 = sub nsw i32 2129859010, %1211
  %1213 = bitcast i32 %1212 to float
  %1214 = fmul fast float %1213, %1209
  %1215 = call float @dx.op.unary.f32(i32 7, float %1214)  ; Saturate(value)
  br label %1216

; <label>:1216                                    ; preds = %1170, %1164
  %1217 = phi float [ %1215, %1170 ], [ %1165, %1164 ]
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 128
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1238, label %1222

; <label>:1222                                    ; preds = %1216
  %1223 = add i32 %35, 412
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = add i32 %1225, 0
  %1227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1227, %dx.types.Handle %72, float %1051, float %1052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1229 = extractvalue %dx.types.ResRet.f32 %1228, 0
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = and i32 %1231, 524288
  %1233 = icmp ne i32 %1232, 0
  %1234 = fcmp fast ogt float %1229, 0x3FE0101020000000
  %1235 = select i1 %1234, float 1.000000e+00, float 0.000000e+00
  %1236 = select i1 %1233, float %1235, float %1229
  %1237 = fmul fast float %1236, %1217
  br label %1238

; <label>:1238                                    ; preds = %1222, %1216
  %1239 = phi float [ %1237, %1222 ], [ %1217, %1216 ]
  %1240 = fcmp fast ult float %1239, 0x3F70101020000000
  br i1 %1240, label %1870, label %1241

; <label>:1241                                    ; preds = %1238
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 16
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1444, label %1246

; <label>:1246                                    ; preds = %1241
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = add i32 %35, 364
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = add i32 %1251, 0
  %1253 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1252, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1254 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1253, %dx.types.Handle %71, float %1051, float %1052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1255 = extractvalue %dx.types.ResRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.ResRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.ResRet.f32 %1254, 2
  %1258 = extractvalue %dx.types.ResRet.f32 %1254, 3
  %1259 = and i32 %1248, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = lshr i32 %1248, 8
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1258, %1260
  %1265 = fadd fast float %1264, %1263
  %1266 = fmul fast float %1265, 0x3F70101000000000
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = and i32 %1268, 512
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1279, label %1271

; <label>:1271                                    ; preds = %1246
  %1272 = add i32 %35, 444
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = add i32 %1274, 0
  %1276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1276, %dx.types.Handle %72, float %1051, float %1052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  br label %1279

; <label>:1279                                    ; preds = %1271, %1246
  %1280 = phi float [ %1278, %1271 ], [ 1.000000e+00, %1246 ]
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 33554432
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1391, label %1285

; <label>:1285                                    ; preds = %1279
  %1286 = add i32 %35, 240
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 65535
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = lshr i32 %1288, 16
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = add i32 %35, 244
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %1295, 65535
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = lshr i32 %1299, 24
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F70101020000000
  %1303 = and i32 %1299, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3F70101020000000
  %1306 = lshr i32 %1299, 8
  %1307 = and i32 %1306, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = fmul fast float %1308, 0x3F70101020000000
  %1310 = lshr i32 %1299, 16
  %1311 = and i32 %1310, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = add i32 %35, 236
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = lshr i32 %1316, 24
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = and i32 %1316, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = lshr i32 %1316, 8
  %1324 = and i32 %1323, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, 0x3F70101020000000
  %1327 = lshr i32 %1316, 16
  %1328 = and i32 %1327, 255
  %1329 = uitofp i32 %1328 to float
  %1330 = fmul fast float %1329, 0x3F70101020000000
  %1331 = bitcast float %1255 to i32
  %1332 = ashr i32 %1331, 1
  %1333 = sub nsw i32 1597463174, %1332
  %1334 = bitcast i32 %1333 to float
  %1335 = fmul fast float %1255, 5.000000e-01
  %1336 = fmul fast float %1334, %1334
  %1337 = fmul fast float %1336, %1335
  %1338 = fsub fast float 1.500000e+00, %1337
  %1339 = fmul fast float %1334, %1255
  %1340 = fmul fast float %1339, %1338
  %1341 = bitcast float %1256 to i32
  %1342 = ashr i32 %1341, 1
  %1343 = sub nsw i32 1597463174, %1342
  %1344 = bitcast i32 %1343 to float
  %1345 = fmul fast float %1256, 5.000000e-01
  %1346 = fmul fast float %1344, %1344
  %1347 = fmul fast float %1346, %1345
  %1348 = fsub fast float 1.500000e+00, %1347
  %1349 = fmul fast float %1344, %1256
  %1350 = fmul fast float %1349, %1348
  %1351 = bitcast float %1257 to i32
  %1352 = ashr i32 %1351, 1
  %1353 = sub nsw i32 1597463174, %1352
  %1354 = bitcast i32 %1353 to float
  %1355 = fmul fast float %1257, 5.000000e-01
  %1356 = fmul fast float %1354, %1354
  %1357 = fmul fast float %1356, %1355
  %1358 = fsub fast float 1.500000e+00, %1357
  %1359 = fmul fast float %1354, %1257
  %1360 = fmul fast float %1359, %1358
  %1361 = fsub fast float %1340, %1322
  %1362 = fsub fast float %1350, %1326
  %1363 = fsub fast float %1360, %1330
  %1364 = fmul fast float %1361, %1290
  %1365 = fmul fast float %1362, %1292
  %1366 = fmul fast float %1363, %1297
  %1367 = fadd fast float %1364, %1305
  %1368 = fadd fast float %1365, %1309
  %1369 = fadd fast float %1366, %1313
  %1370 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1371 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 7, float %1369)  ; Saturate(value)
  %1373 = fmul fast float %1370, %1370
  %1374 = fmul fast float %1371, %1371
  %1375 = fmul fast float %1372, %1372
  %1376 = fsub fast float %1373, %1255
  %1377 = fsub fast float %1374, %1256
  %1378 = fsub fast float %1375, %1257
  %1379 = fmul fast float %1376, %1280
  %1380 = fmul fast float %1377, %1280
  %1381 = fmul fast float %1378, %1280
  %1382 = fadd fast float %1379, %1255
  %1383 = fadd fast float %1380, %1256
  %1384 = fadd fast float %1381, %1257
  %1385 = fadd fast float %1302, %1266
  %1386 = fsub fast float %1385, %1319
  %1387 = call float @dx.op.unary.f32(i32 7, float %1386)  ; Saturate(value)
  %1388 = fsub fast float %1387, %1266
  %1389 = fmul fast float %1388, %1280
  %1390 = fadd fast float %1389, %1266
  br label %1444

; <label>:1391                                    ; preds = %1279
  %1392 = and i32 %1282, 134217728
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1428, label %1394

; <label>:1394                                    ; preds = %1391
  %1395 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1396 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1397 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1398 = fadd fast float %1395, -5.000000e-01
  %1399 = fadd fast float %1396, -5.000000e-01
  %1400 = fadd fast float %1397, -5.000000e-01
  %1401 = fmul fast float %1398, %1280
  %1402 = fmul fast float %1399, %1280
  %1403 = fmul fast float %1400, %1280
  %1404 = fadd fast float %1401, 5.000000e-01
  %1405 = fadd fast float %1402, 5.000000e-01
  %1406 = fadd fast float %1403, 5.000000e-01
  %1407 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1408 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1409 = call float @dx.op.unary.f32(i32 24, float %1257)  ; Sqrt(value)
  %1410 = fmul fast float %1404, 2.000000e+00
  %1411 = fsub fast float 1.000000e+00, %1410
  %1412 = fmul fast float %1411, %1407
  %1413 = fadd fast float %1412, %1410
  %1414 = fmul fast float %1413, %1407
  %1415 = fmul fast float %1405, 2.000000e+00
  %1416 = fsub fast float 1.000000e+00, %1415
  %1417 = fmul fast float %1416, %1408
  %1418 = fadd fast float %1417, %1415
  %1419 = fmul fast float %1418, %1408
  %1420 = fmul fast float %1406, 2.000000e+00
  %1421 = fsub fast float 1.000000e+00, %1420
  %1422 = fmul fast float %1421, %1409
  %1423 = fadd fast float %1422, %1420
  %1424 = fmul fast float %1423, %1409
  %1425 = fmul fast float %1414, %1414
  %1426 = fmul fast float %1419, %1419
  %1427 = fmul fast float %1424, %1424
  br label %1444

; <label>:1428                                    ; preds = %1391
  %1429 = fmul fast float %236, %236
  %1430 = fmul fast float %240, %240
  %1431 = fmul fast float %244, %244
  %1432 = fadd fast float %1429, -1.000000e+00
  %1433 = fadd fast float %1430, -1.000000e+00
  %1434 = fadd fast float %1431, -1.000000e+00
  %1435 = fmul fast float %1280, %1432
  %1436 = fmul fast float %1280, %1433
  %1437 = fmul fast float %1280, %1434
  %1438 = fadd fast float %1435, 1.000000e+00
  %1439 = fadd fast float %1436, 1.000000e+00
  %1440 = fadd fast float %1437, 1.000000e+00
  %1441 = fmul fast float %1438, %1255
  %1442 = fmul fast float %1439, %1256
  %1443 = fmul fast float %1440, %1257
  br label %1444

; <label>:1444                                    ; preds = %1428, %1394, %1285, %1241
  %1445 = phi float [ %1390, %1285 ], [ %1266, %1394 ], [ %1266, %1428 ], [ 0x3FA23C0BE0000000, %1241 ]
  %1446 = phi float [ %1382, %1285 ], [ %1425, %1394 ], [ %1441, %1428 ], [ 1.000000e+00, %1241 ]
  %1447 = phi float [ %1383, %1285 ], [ %1426, %1394 ], [ %1442, %1428 ], [ 1.000000e+00, %1241 ]
  %1448 = phi float [ %1384, %1285 ], [ %1427, %1394 ], [ %1443, %1428 ], [ 1.000000e+00, %1241 ]
  %1449 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.i32 %1449, 1
  %1451 = and i32 %1450, 1
  %1452 = icmp ne i32 %1451, 0
  %1453 = add i32 %35, 356
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 32
  %1457 = icmp ne i32 %1456, 0
  %1458 = and i1 %1452, %1457
  %1459 = select i1 %1458, float 1.000000e+00, float %1446
  %1460 = select i1 %1458, float 0x3FD3333340000000, float %1447
  %1461 = select i1 %1458, float 0x3FD3333340000000, float %1448
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 32
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1538, label %1466

; <label>:1466                                    ; preds = %1444
  %1467 = add i32 %35, 108
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %35, 380
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = add i32 %1472, 0
  %1474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1473, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1474, %dx.types.Handle %71, float %1051, float %1052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.ResRet.f32 %1475, 2
  %1479 = extractvalue %dx.types.ResRet.f32 %1475, 3
  %1480 = and i32 %1469, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = lshr i32 %1469, 8
  %1483 = and i32 %1482, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = lshr i32 %1469, 16
  %1486 = and i32 %1485, 255
  %1487 = uitofp i32 %1486 to float
  %1488 = fmul fast float %1487, 0x3F70101000000000
  %1489 = fmul fast float %1476, %1481
  %1490 = fadd fast float %1489, %1484
  %1491 = fmul fast float %1490, 0x3F70101000000000
  %1492 = fadd fast float %1477, -5.000000e-01
  %1493 = fadd fast float %1479, -5.000000e-01
  %1494 = fmul fast float %1492, %1488
  %1495 = fmul fast float %1493, %1488
  %1496 = fadd fast float %1494, 5.000000e-01
  %1497 = fadd fast float %1495, 5.000000e-01
  %1498 = fmul fast float %1496, 2.000000e+00
  %1499 = fadd fast float %1498, -1.000000e+00
  %1500 = fmul fast float %1497, 2.000000e+00
  %1501 = fadd fast float %1500, -1.000000e+00
  %1502 = fadd fast float %1499, %1501
  %1503 = fmul fast float %1502, 5.000000e-01
  %1504 = fsub fast float %1499, %1501
  %1505 = fmul fast float %1504, 5.000000e-01
  %1506 = call float @dx.op.unary.f32(i32 6, float %1503)  ; FAbs(value)
  %1507 = fsub fast float 1.000000e+00, %1506
  %1508 = call float @dx.op.unary.f32(i32 6, float %1505)  ; FAbs(value)
  %1509 = fsub fast float %1507, %1508
  %1510 = call float @dx.op.dot3.f32(i32 55, float %1503, float %1505, float %1509, float %1503, float %1505, float %1509)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = call float @dx.op.unary.f32(i32 25, float %1510)  ; Rsqrt(value)
  %1512 = fmul fast float %1503, %1511
  %1513 = fmul fast float %1505, %1511
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 67108864
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1534, label %1518

; <label>:1518                                    ; preds = %1466
  %1519 = add i32 %35, 296
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1519, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 65535
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = and i32 %1525, 65535
  %1527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1526)  ; LegacyF16ToF32(value)
  %1528 = lshr i32 %1521, 16
  %1529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1528)  ; LegacyF16ToF32(value)
  %1530 = fsub fast float %1491, %1529
  %1531 = fmul fast float %1530, %1523
  %1532 = fadd fast float %1531, %1527
  %1533 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  br label %1534

; <label>:1534                                    ; preds = %1518, %1466
  %1535 = phi float [ %1533, %1518 ], [ %1491, %1466 ]
  %1536 = call float @dx.op.dot2.f32(i32 54, float %1512, float %1513, float %955, float %956)  ; Dot2(ax,ay,bx,by)
  %1537 = call float @dx.op.dot2.f32(i32 54, float %1512, float %1513, float %957, float %958)  ; Dot2(ax,ay,bx,by)
  br label %1538

; <label>:1538                                    ; preds = %1534, %1444
  %1539 = phi float [ %1535, %1534 ], [ 0x3FD6666660000000, %1444 ]
  %1540 = phi float [ %1536, %1534 ], [ 0.000000e+00, %1444 ]
  %1541 = phi float [ %1537, %1534 ], [ 0.000000e+00, %1444 ]
  %1542 = phi float [ %1478, %1534 ], [ 1.000000e+00, %1444 ]
  %1543 = add i32 %35, 176
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = lshr i32 %1545, 22
  %1547 = shl nuw nsw i32 %1546, 5
  %1548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1547)  ; LegacyF16ToF32(value)
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 64
  %1552 = icmp eq i32 %1551, 0
  br i1 %1552, label %1586, label %1553

; <label>:1553                                    ; preds = %1538
  %1554 = add i32 %35, 396
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = add i32 %1556, 0
  %1558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 131072
  %1562 = icmp eq i32 %1561, 0
  %1563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1558, %dx.types.Handle %71, float %1051, float %1052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1564 = extractvalue %dx.types.ResRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.ResRet.f32 %1563, 1
  %1566 = extractvalue %dx.types.ResRet.f32 %1563, 2
  %1567 = fmul fast float %1564, %224
  %1568 = fmul fast float %1565, %227
  %1569 = fmul fast float %1566, %230
  br i1 %1562, label %1576, label %1570

; <label>:1570                                    ; preds = %1553
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 0
  %1573 = fmul fast float %1572, %1567
  %1574 = fmul fast float %1572, %1568
  %1575 = fmul fast float %1572, %1569
  br label %1576

; <label>:1576                                    ; preds = %1570, %1553
  %1577 = phi float [ %1573, %1570 ], [ %1567, %1553 ]
  %1578 = phi float [ %1574, %1570 ], [ %1568, %1553 ]
  %1579 = phi float [ %1575, %1570 ], [ %1569, %1553 ]
  %1580 = fmul fast float %1577, %1548
  %1581 = select i1 %176, float %1580, float %1577
  %1582 = call float @dx.op.dot3.f32(i32 55, float %1581, float %1578, float %1579, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1583 = select i1 %176, float 0.000000e+00, float %1577
  %1584 = select i1 %176, float %1582, float %1578
  %1585 = select i1 %176, float 0.000000e+00, float %1579
  br label %1586

; <label>:1586                                    ; preds = %1576, %1538
  %1587 = phi float [ %1583, %1576 ], [ 0.000000e+00, %1538 ]
  %1588 = phi float [ %1584, %1576 ], [ 0.000000e+00, %1538 ]
  %1589 = phi float [ %1585, %1576 ], [ 0.000000e+00, %1538 ]
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 10240
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1638, label %1594

; <label>:1594                                    ; preds = %1586
  %1595 = add i32 %35, 460
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = add i32 %1597, 0
  %1599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1599, %dx.types.Handle %72, float %1051, float %1052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1601 = extractvalue %dx.types.ResRet.f32 %1600, 1
  %1602 = extractvalue %dx.types.ResRet.f32 %1600, 3
  %1603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1604 = extractvalue %dx.types.ResRet.i32 %1603, 0
  %1605 = and i32 %1604, 1048576
  %1606 = icmp ne i32 %1605, 0
  %1607 = and i32 %1604, 8192
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1624, label %1609

; <label>:1609                                    ; preds = %1594
  %1610 = extractvalue %dx.types.ResRet.f32 %1600, 2
  %1611 = select i1 %1606, float %1610, float %1601
  %1612 = extractvalue %dx.types.ResRet.f32 %1600, 0
  %1613 = select i1 %1606, float %1612, float %1601
  %1614 = add i32 %35, 112
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = lshr i32 %1616, 16
  %1618 = and i32 %1617, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = fmul fast float %1619, 0x3F80101020000000
  %1621 = fmul fast float %1620, %1613
  %1622 = fmul fast float %1620, %1601
  %1623 = fmul fast float %1620, %1611
  br label %1624

; <label>:1624                                    ; preds = %1609, %1594
  %1625 = phi float [ %1621, %1609 ], [ 0.000000e+00, %1594 ]
  %1626 = phi float [ %1622, %1609 ], [ 0.000000e+00, %1594 ]
  %1627 = phi float [ %1623, %1609 ], [ 0.000000e+00, %1594 ]
  %1628 = and i32 %1604, 2048
  %1629 = icmp eq i32 %1628, 0
  br i1 %1629, label %1638, label %1630

; <label>:1630                                    ; preds = %1624
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = shl i32 %1632, 4
  %1634 = and i32 %1633, 32752
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = fmul fast float %1635, %1602
  %1637 = call float @dx.op.binary.f32(i32 35, float %1636, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1638

; <label>:1638                                    ; preds = %1630, %1624, %1586
  %1639 = phi float [ %1625, %1630 ], [ %1625, %1624 ], [ 0.000000e+00, %1586 ]
  %1640 = phi float [ %1626, %1630 ], [ %1626, %1624 ], [ 0.000000e+00, %1586 ]
  %1641 = phi float [ %1627, %1630 ], [ %1627, %1624 ], [ 0.000000e+00, %1586 ]
  %1642 = phi float [ %1637, %1630 ], [ 0x3F70101020000000, %1624 ], [ 0x3F70101020000000, %1586 ]
  %1643 = add i32 %35, 112
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 255
  %1647 = uitofp i32 %1646 to float
  %1648 = lshr i32 %1645, 8
  %1649 = and i32 %1648, 255
  %1650 = uitofp i32 %1649 to float
  %1651 = call float @dx.op.dot3.f32(i32 55, float %1459, float %1460, float %1461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1652 = fmul fast float %1650, %1651
  %1653 = fadd fast float %1652, %1647
  %1654 = fmul fast float %1653, 0x3F70101020000000
  %1655 = call float @dx.op.unary.f32(i32 7, float %1654)  ; Saturate(value)
  br i1 %943, label %1656, label %1664

; <label>:1656                                    ; preds = %1638
  %1657 = fsub fast float 1.000000e+00, %1239
  %1658 = fmul fast float %1657, %927
  %1659 = fmul fast float %1657, %928
  %1660 = fmul fast float %1657, %929
  %1661 = fmul fast float %1657, %930
  %1662 = fmul fast float %1657, %931
  %1663 = fmul fast float %1657, %932
  br label %1664

; <label>:1664                                    ; preds = %1656, %1638
  %1665 = phi float [ %1658, %1656 ], [ %927, %1638 ]
  %1666 = phi float [ %1659, %1656 ], [ %928, %1638 ]
  %1667 = phi float [ %1660, %1656 ], [ %929, %1638 ]
  %1668 = phi float [ %1661, %1656 ], [ %930, %1638 ]
  %1669 = phi float [ %1662, %1656 ], [ %931, %1638 ]
  %1670 = phi float [ %1663, %1656 ], [ %932, %1638 ]
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = and i32 %1672, 3
  %1674 = icmp eq i32 %1673, 3
  br i1 %1674, label %1753, label %1675

; <label>:1675                                    ; preds = %1664
  %1676 = and i32 %1672, 16
  %1677 = icmp ne i32 %1676, 0
  %1678 = select i1 %1677, float %1239, float 0.000000e+00
  %1679 = icmp eq i32 %1673, 0
  br i1 %1679, label %1680, label %1708

; <label>:1680                                    ; preds = %1675
  %1681 = and i32 %1672, 64
  %1682 = icmp ne i32 %1681, 0
  %1683 = select i1 %1682, float %1239, float 0.000000e+00
  %1684 = fsub fast float %1459, %1665
  %1685 = fsub fast float %1460, %1666
  %1686 = fsub fast float %1461, %1667
  %1687 = fmul fast float %1678, %1684
  %1688 = fmul fast float %1678, %1685
  %1689 = fmul fast float %1678, %1686
  %1690 = fadd fast float %1687, %1665
  %1691 = fadd fast float %1688, %1666
  %1692 = fadd fast float %1689, %1667
  %1693 = fsub fast float %1445, %936
  %1694 = fmul fast float %1678, %1693
  %1695 = fadd fast float %1694, %936
  %1696 = fsub fast float %1587, %1668
  %1697 = fsub fast float %1588, %1669
  %1698 = fsub fast float %1589, %1670
  %1699 = fmul fast float %1683, %1696
  %1700 = fmul fast float %1683, %1697
  %1701 = fmul fast float %1683, %1698
  %1702 = fadd fast float %1699, %1668
  %1703 = fadd fast float %1700, %1669
  %1704 = fadd fast float %1701, %1670
  %1705 = fsub fast float %1655, %941
  %1706 = fmul fast float %1678, %1705
  %1707 = fadd fast float %1706, %941
  br label %1753

; <label>:1708                                    ; preds = %1675
  %1709 = icmp eq i32 %1673, 1
  br i1 %1709, label %1710, label %1723

; <label>:1710                                    ; preds = %1708
  %1711 = fadd fast float %1459, -1.000000e+00
  %1712 = fadd fast float %1460, -1.000000e+00
  %1713 = fadd fast float %1461, -1.000000e+00
  %1714 = fmul fast float %1678, %1711
  %1715 = fmul fast float %1678, %1712
  %1716 = fmul fast float %1678, %1713
  %1717 = fadd fast float %1714, 1.000000e+00
  %1718 = fadd fast float %1715, 1.000000e+00
  %1719 = fadd fast float %1716, 1.000000e+00
  %1720 = fmul fast float %1717, %1665
  %1721 = fmul fast float %1718, %1666
  %1722 = fmul fast float %1719, %1667
  br label %1753

; <label>:1723                                    ; preds = %1708
  %1724 = icmp eq i32 %1673, 2
  br i1 %1724, label %1725, label %1753

; <label>:1725                                    ; preds = %1723
  %1726 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1727 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1728 = call float @dx.op.unary.f32(i32 24, float %1461)  ; Sqrt(value)
  %1729 = fadd fast float %1726, -5.000000e-01
  %1730 = fadd fast float %1727, -5.000000e-01
  %1731 = fadd fast float %1728, -5.000000e-01
  %1732 = fmul fast float %1729, %1678
  %1733 = fmul fast float %1730, %1678
  %1734 = fmul fast float %1731, %1678
  %1735 = fadd fast float %1732, 5.000000e-01
  %1736 = fadd fast float %1733, 5.000000e-01
  %1737 = fadd fast float %1734, 5.000000e-01
  %1738 = fmul fast float %1735, 2.000000e+00
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = fmul fast float %1739, %1665
  %1741 = fadd fast float %1740, %1738
  %1742 = fmul fast float %1741, %1665
  %1743 = fmul fast float %1736, 2.000000e+00
  %1744 = fsub fast float 1.000000e+00, %1743
  %1745 = fmul fast float %1744, %1666
  %1746 = fadd fast float %1745, %1743
  %1747 = fmul fast float %1746, %1666
  %1748 = fmul fast float %1737, 2.000000e+00
  %1749 = fsub fast float 1.000000e+00, %1748
  %1750 = fmul fast float %1749, %1667
  %1751 = fadd fast float %1750, %1748
  %1752 = fmul fast float %1751, %1667
  br label %1753

; <label>:1753                                    ; preds = %1725, %1723, %1710, %1680, %1664
  %1754 = phi float [ %1665, %1664 ], [ %1742, %1725 ], [ %1665, %1723 ], [ %1720, %1710 ], [ %1690, %1680 ]
  %1755 = phi float [ %1666, %1664 ], [ %1747, %1725 ], [ %1666, %1723 ], [ %1721, %1710 ], [ %1691, %1680 ]
  %1756 = phi float [ %1667, %1664 ], [ %1752, %1725 ], [ %1667, %1723 ], [ %1722, %1710 ], [ %1692, %1680 ]
  %1757 = phi float [ %1668, %1664 ], [ %1668, %1725 ], [ %1668, %1723 ], [ %1668, %1710 ], [ %1702, %1680 ]
  %1758 = phi float [ %1669, %1664 ], [ %1669, %1725 ], [ %1669, %1723 ], [ %1669, %1710 ], [ %1703, %1680 ]
  %1759 = phi float [ %1670, %1664 ], [ %1670, %1725 ], [ %1670, %1723 ], [ %1670, %1710 ], [ %1704, %1680 ]
  %1760 = phi float [ %936, %1664 ], [ %936, %1725 ], [ %936, %1723 ], [ %936, %1710 ], [ %1695, %1680 ]
  %1761 = phi float [ %941, %1664 ], [ %941, %1725 ], [ %941, %1723 ], [ %941, %1710 ], [ %1707, %1680 ]
  %1762 = and i32 %1672, 12
  %1763 = icmp eq i32 %1762, 12
  br i1 %1763, label %1870, label %1764

; <label>:1764                                    ; preds = %1753
  %1765 = and i32 %1672, 2097184
  %1766 = icmp eq i32 %1765, 2097184
  %1767 = select i1 %1766, float %1239, float 0.000000e+00
  %1768 = and i32 %1672, 4194336
  %1769 = icmp eq i32 %1768, 4194336
  %1770 = select i1 %1769, float %1239, float 0.000000e+00
  %1771 = and i32 %1672, 8388640
  %1772 = icmp eq i32 %1771, 8388640
  %1773 = select i1 %1772, float %1239, float 0.000000e+00
  %1774 = and i32 %1672, 2048
  %1775 = icmp ne i32 %1774, 0
  %1776 = select i1 %1775, float %1239, float 0.000000e+00
  %1777 = and i32 %1672, 8192
  %1778 = icmp ne i32 %1777, 0
  %1779 = select i1 %1778, float %1239, float 0.000000e+00
  %1780 = icmp eq i32 %1762, 0
  br i1 %1780, label %1781, label %1806

; <label>:1781                                    ; preds = %1764
  %1782 = fsub fast float %1540, %925
  %1783 = fsub fast float %1541, %926
  %1784 = fmul fast float %1767, %1782
  %1785 = fmul fast float %1767, %1783
  %1786 = fadd fast float %1784, %925
  %1787 = fadd fast float %1785, %926
  %1788 = fsub fast float %1542, %939
  %1789 = fmul fast float %1770, %1788
  %1790 = fadd fast float %1789, %939
  %1791 = fsub fast float %1539, %938
  %1792 = fmul fast float %1773, %1791
  %1793 = fadd fast float %1792, %938
  %1794 = fsub fast float %1642, %940
  %1795 = fmul fast float %1776, %1794
  %1796 = fadd fast float %1795, %940
  %1797 = fsub fast float %1639, %933
  %1798 = fsub fast float %1640, %934
  %1799 = fsub fast float %1641, %935
  %1800 = fmul fast float %1779, %1797
  %1801 = fmul fast float %1779, %1798
  %1802 = fmul fast float %1779, %1799
  %1803 = fadd fast float %1800, %933
  %1804 = fadd fast float %1801, %934
  %1805 = fadd fast float %1802, %935
  br label %1870

; <label>:1806                                    ; preds = %1764
  %1807 = icmp eq i32 %1762, 4
  br i1 %1807, label %1808, label %1848

; <label>:1808                                    ; preds = %1806
  %1809 = fmul fast float %1767, %1540
  %1810 = fmul fast float %1767, %1541
  %1811 = fadd fast float %1809, %925
  %1812 = fadd fast float %1810, %926
  %1813 = call float @dx.op.binary.f32(i32 36, float %939, float %1542)  ; FMin(a,b)
  %1814 = fsub fast float %1813, %939
  %1815 = fmul fast float %1814, %1770
  %1816 = fadd fast float %1815, %939
  %1817 = fadd fast float %1539, %938
  %1818 = fmul fast float %1817, 0x3FF337FAE0000000
  %1819 = fmul fast float %938, %938
  %1820 = fmul fast float %1539, %1539
  %1821 = fadd fast float %1820, %1819
  %1822 = fmul fast float %1821, 0x3FE5152B00000000
  %1823 = fmul fast float %938, 0xBFCC1F85E0000000
  %1824 = fmul fast float %1823, %1539
  %1825 = fadd fast float %1824, 0xBFE1363700000000
  %1826 = fadd fast float %1825, %1818
  %1827 = fsub fast float %1826, %1822
  %1828 = fmul fast float %1817, 0x3FBA6F0D00000000
  %1829 = fmul fast float %1821, 0x3FD0432880000000
  %1830 = fmul fast float %938, 0xBFEF110800000000
  %1831 = fmul fast float %1830, %1539
  %1832 = fadd fast float %1831, 1.000000e+00
  %1833 = fsub fast float %1832, %1828
  %1834 = fadd fast float %1833, %1829
  %1835 = fdiv fast float %1827, %1834
  %1836 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1837 = fsub fast float %1836, %938
  %1838 = fmul fast float %1837, %1773
  %1839 = fadd fast float %1838, %938
  %1840 = fmul fast float %1776, %1642
  %1841 = fadd fast float %1840, %940
  %1842 = fmul fast float %1779, %1639
  %1843 = fmul fast float %1779, %1640
  %1844 = fmul fast float %1779, %1641
  %1845 = fadd fast float %1842, %933
  %1846 = fadd fast float %1843, %934
  %1847 = fadd fast float %1844, %935
  br label %1870

; <label>:1848                                    ; preds = %1806
  %1849 = icmp eq i32 %1762, 8
  br i1 %1849, label %1850, label %1870

; <label>:1850                                    ; preds = %1848
  %1851 = fmul fast float %1767, %1540
  %1852 = fmul fast float %1767, %1541
  %1853 = fadd fast float %1851, %925
  %1854 = fadd fast float %1852, %926
  %1855 = call float @dx.op.binary.f32(i32 36, float %939, float %1542)  ; FMin(a,b)
  %1856 = fsub fast float %1855, %939
  %1857 = fmul fast float %1856, %1770
  %1858 = fadd fast float %1857, %939
  %1859 = fsub fast float %1539, %938
  %1860 = fmul fast float %1773, %1859
  %1861 = fadd fast float %1860, %938
  %1862 = fmul fast float %1776, %1642
  %1863 = fadd fast float %1862, %940
  %1864 = fmul fast float %1779, %1639
  %1865 = fmul fast float %1779, %1640
  %1866 = fmul fast float %1779, %1641
  %1867 = fadd fast float %1864, %933
  %1868 = fadd fast float %1865, %934
  %1869 = fadd fast float %1866, %935
  br label %1870

; <label>:1870                                    ; preds = %1850, %1848, %1808, %1781, %1753, %1238, %942, %924
  %1871 = phi float [ %925, %1753 ], [ %925, %1238 ], [ %925, %924 ], [ %1853, %1850 ], [ %925, %1848 ], [ %1811, %1808 ], [ %1786, %1781 ], [ %925, %942 ]
  %1872 = phi float [ %926, %1753 ], [ %926, %1238 ], [ %926, %924 ], [ %1854, %1850 ], [ %926, %1848 ], [ %1812, %1808 ], [ %1787, %1781 ], [ %926, %942 ]
  %1873 = phi float [ %1754, %1753 ], [ %927, %1238 ], [ %927, %924 ], [ %1754, %1850 ], [ %1754, %1848 ], [ %1754, %1808 ], [ %1754, %1781 ], [ %927, %942 ]
  %1874 = phi float [ %1755, %1753 ], [ %928, %1238 ], [ %928, %924 ], [ %1755, %1850 ], [ %1755, %1848 ], [ %1755, %1808 ], [ %1755, %1781 ], [ %928, %942 ]
  %1875 = phi float [ %1756, %1753 ], [ %929, %1238 ], [ %929, %924 ], [ %1756, %1850 ], [ %1756, %1848 ], [ %1756, %1808 ], [ %1756, %1781 ], [ %929, %942 ]
  %1876 = phi float [ %1757, %1753 ], [ %930, %1238 ], [ %930, %924 ], [ %1757, %1850 ], [ %1757, %1848 ], [ %1757, %1808 ], [ %1757, %1781 ], [ %930, %942 ]
  %1877 = phi float [ %1758, %1753 ], [ %931, %1238 ], [ %931, %924 ], [ %1758, %1850 ], [ %1758, %1848 ], [ %1758, %1808 ], [ %1758, %1781 ], [ %931, %942 ]
  %1878 = phi float [ %1759, %1753 ], [ %932, %1238 ], [ %932, %924 ], [ %1759, %1850 ], [ %1759, %1848 ], [ %1759, %1808 ], [ %1759, %1781 ], [ %932, %942 ]
  %1879 = phi float [ %933, %1753 ], [ %933, %1238 ], [ %933, %924 ], [ %1867, %1850 ], [ %933, %1848 ], [ %1845, %1808 ], [ %1803, %1781 ], [ %933, %942 ]
  %1880 = phi float [ %934, %1753 ], [ %934, %1238 ], [ %934, %924 ], [ %1868, %1850 ], [ %934, %1848 ], [ %1846, %1808 ], [ %1804, %1781 ], [ %934, %942 ]
  %1881 = phi float [ %935, %1753 ], [ %935, %1238 ], [ %935, %924 ], [ %1869, %1850 ], [ %935, %1848 ], [ %1847, %1808 ], [ %1805, %1781 ], [ %935, %942 ]
  %1882 = phi float [ %1760, %1753 ], [ %936, %1238 ], [ %936, %924 ], [ %1760, %1850 ], [ %1760, %1848 ], [ %1760, %1808 ], [ %1760, %1781 ], [ %936, %942 ]
  %1883 = phi float [ %938, %1753 ], [ %938, %1238 ], [ %938, %924 ], [ %1861, %1850 ], [ %938, %1848 ], [ %1839, %1808 ], [ %1793, %1781 ], [ %938, %942 ]
  %1884 = phi float [ %939, %1753 ], [ %939, %1238 ], [ %939, %924 ], [ %1858, %1850 ], [ %939, %1848 ], [ %1816, %1808 ], [ %1790, %1781 ], [ %939, %942 ]
  %1885 = phi float [ %940, %1753 ], [ %940, %1238 ], [ %940, %924 ], [ %1863, %1850 ], [ %940, %1848 ], [ %1841, %1808 ], [ %1796, %1781 ], [ %940, %942 ]
  %1886 = phi float [ %1761, %1753 ], [ %941, %1238 ], [ %941, %924 ], [ %1761, %1850 ], [ %1761, %1848 ], [ %1761, %1808 ], [ %1761, %1781 ], [ %941, %942 ]
  br i1 %351, label %2815, label %1887

; <label>:1887                                    ; preds = %1870
  %1888 = icmp ult i32 %404, 3
  %1889 = add i32 %35, 56
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = add i32 %35, 60
  %1893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.i32 %1893, 0
  %1895 = or i32 %1894, %1891
  %1896 = icmp eq i32 %1895, 0
  br i1 %1896, label %2815, label %1897

; <label>:1897                                    ; preds = %1887
  %1898 = and i32 %1891, 262144
  %1899 = icmp ne i32 %1898, 0
  %1900 = select i1 %1899, float %38, float 1.000000e+00
  %1901 = select i1 %1899, float %39, float 0.000000e+00
  %1902 = select i1 %1899, float %40, float 0.000000e+00
  %1903 = select i1 %1899, float %41, float 1.000000e+00
  %1904 = select i1 %1899, float %42, float %63
  %1905 = select i1 %1899, float %43, float %64
  %1906 = add i32 %35, 316
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = lshr i32 %1908, 16
  %1910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1909)  ; LegacyF16ToF32(value)
  %1911 = fmul fast float %1910, 0x3F50624DE0000000
  %1912 = add i32 %35, 120
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = lshr i32 %1914, 16
  %1916 = and i32 %1915, 255
  %1917 = lshr i32 %1914, 24
  %1918 = add i32 %35, 324
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = and i32 %1920, 65535
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = lshr i32 %1920, 16
  %1924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1923)  ; LegacyF16ToF32(value)
  %1925 = add i32 %35, 64
  %1926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1927 = extractvalue %dx.types.ResRet.i32 %1926, 0
  %1928 = lshr i32 %1927, 22
  %1929 = shl nuw nsw i32 %1928, 5
  %1930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1929)  ; LegacyF16ToF32(value)
  %1931 = shl i32 %1927, 4
  %1932 = and i32 %1931, 32752
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = lshr i32 %1927, 7
  %1935 = and i32 %1934, 32752
  %1936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1935)  ; LegacyF16ToF32(value)
  %1937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1938 = extractvalue %dx.types.CBufRet.f32 %1937, 3
  %1939 = fmul fast float %1938, 1.000000e+03
  %1940 = fmul fast float %301, %1939
  %1941 = call float @dx.op.unary.f32(i32 22, float %1940)  ; Frc(value)
  %1942 = fadd fast float %1941, %291
  %1943 = fmul fast float %302, %1939
  %1944 = call float @dx.op.unary.f32(i32 22, float %1943)  ; Frc(value)
  %1945 = fadd fast float %1944, %293
  %1946 = fmul fast float %1911, %1939
  %1947 = call float @dx.op.unary.f32(i32 22, float %1946)  ; Frc(value)
  %1948 = fmul fast float %1947, 0x401921FB60000000
  %1949 = fadd fast float %1948, %1930
  %1950 = call float @dx.op.unary.f32(i32 13, float %1949)  ; Sin(value)
  %1951 = call float @dx.op.unary.f32(i32 12, float %1949)  ; Cos(value)
  %1952 = fsub fast float -0.000000e+00, %1950
  %1953 = fadd fast float %1904, -5.000000e-01
  %1954 = fadd fast float %1905, -5.000000e-01
  %1955 = fmul fast float %1922, %1953
  %1956 = fmul fast float %1924, %1954
  %1957 = fadd fast float %1955, 5.000000e-01
  %1958 = fadd fast float %1956, 5.000000e-01
  %1959 = fmul fast float %1933, %1957
  %1960 = fmul fast float %1936, %1958
  %1961 = fmul fast float %1951, %1959
  %1962 = call float @dx.op.tertiary.f32(i32 46, float %1952, float %1960, float %1961)  ; FMad(a,b,c)
  %1963 = fmul fast float %1950, %1959
  %1964 = call float @dx.op.tertiary.f32(i32 46, float %1951, float %1960, float %1963)  ; FMad(a,b,c)
  %1965 = fadd fast float %1942, %1962
  %1966 = fadd fast float %1945, %1964
  %1967 = icmp ugt i32 %1916, 1
  %1968 = icmp ugt i32 %1914, 33554431
  %1969 = or i1 %1968, %1967
  br i1 %1969, label %1970, label %1995

; <label>:1970                                    ; preds = %1897
  %1971 = add i32 %35, 260
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = lshr i32 %1973, 16
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = fmul fast float %1938, %1975
  %1977 = call float @dx.op.unary.f32(i32 22, float %1976)  ; Frc(value)
  %1978 = mul nuw nsw i32 %1916, %1917
  %1979 = uitofp i32 %1978 to float
  %1980 = fmul fast float %1977, %1979
  %1981 = call float @dx.op.unary.f32(i32 27, float %1980)  ; Round_ni(value)
  %1982 = fptoui float %1981 to i32
  %1983 = urem i32 %1982, %1916
  %1984 = udiv i32 %1982, %1917
  %1985 = call float @dx.op.unary.f32(i32 22, float %1965)  ; Frc(value)
  %1986 = call float @dx.op.unary.f32(i32 22, float %1966)  ; Frc(value)
  %1987 = uitofp i32 %1983 to float
  %1988 = uitofp i32 %1984 to float
  %1989 = fadd fast float %1985, %1987
  %1990 = fadd fast float %1986, %1988
  %1991 = uitofp i32 %1916 to float
  %1992 = uitofp i32 %1917 to float
  %1993 = fdiv fast float %1989, %1991
  %1994 = fdiv fast float %1990, %1992
  br label %1995

; <label>:1995                                    ; preds = %1970, %1897
  %1996 = phi float [ %1993, %1970 ], [ %1965, %1897 ]
  %1997 = phi float [ %1994, %1970 ], [ %1966, %1897 ]
  %1998 = and i32 %1891, 16777216
  %1999 = icmp eq i32 %1998, 0
  br i1 %1999, label %2109, label %2000

; <label>:2000                                    ; preds = %1995
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = extractvalue %dx.types.CBufRet.f32 %2001, 1
  %2004 = extractvalue %dx.types.CBufRet.f32 %2001, 2
  %2005 = fadd fast float %2002, %134
  %2006 = fadd fast float %2003, %135
  %2007 = fadd fast float %2004, %136
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2010 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2011 = icmp eq i32 %36, 65535
  br i1 %2011, label %2106, label %2012

; <label>:2012                                    ; preds = %2000
  %2013 = lshr i32 %36, 1
  %2014 = shl i32 %2013, 2
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %36, 1
  %2018 = icmp ne i32 %2017, 0
  %2019 = lshr i32 %2016, 16
  %2020 = and i32 %2016, 65535
  %2021 = select i1 %2018, i32 %2019, i32 %2020
  %2022 = icmp eq i32 %2021, 65535
  br i1 %2022, label %2102, label %2023

; <label>:2023                                    ; preds = %2012
  %2024 = mul nuw nsw i32 %2021, 40
  %2025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = extractvalue %dx.types.ResRet.f32 %2025, 1
  %2028 = extractvalue %dx.types.ResRet.f32 %2025, 2
  %2029 = add nuw nsw i32 %2024, 12
  %2030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2029, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = extractvalue %dx.types.ResRet.f32 %2030, 1
  %2033 = extractvalue %dx.types.ResRet.f32 %2030, 2
  %2034 = add nuw nsw i32 %2024, 24
  %2035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.ResRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.ResRet.f32 %2035, 2
  %2039 = add nuw nsw i32 %2024, 36
  %2040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = fsub fast float %2005, %2026
  %2043 = fsub fast float %2006, %2027
  %2044 = fsub fast float %2007, %2028
  %2045 = fmul fast float %2041, %2042
  %2046 = fmul fast float %2041, %2043
  %2047 = fmul fast float %2041, %2044
  %2048 = call float @dx.op.unary.f32(i32 27, float %2045)  ; Round_ni(value)
  %2049 = call float @dx.op.unary.f32(i32 27, float %2046)  ; Round_ni(value)
  %2050 = call float @dx.op.unary.f32(i32 27, float %2047)  ; Round_ni(value)
  %2051 = fadd fast float %2048, 5.000000e-01
  %2052 = fadd fast float %2049, 5.000000e-01
  %2053 = fadd fast float %2050, 5.000000e-01
  %2054 = fmul fast float %2051, %2031
  %2055 = fmul fast float %2052, %2032
  %2056 = fmul fast float %2053, %2033
  %2057 = shl i32 %36, 2
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = add i32 %2059, 0
  %2061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2062 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2063 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2064 = call float @dx.op.unary.f32(i32 22, float %2056)  ; Frc(value)
  %2065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2061, %dx.types.Handle %30, float %2062, float %2063, float %2064, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.ResRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.ResRet.f32 %2065, 2
  %2069 = fmul fast float %2066, 1.023000e+03
  %2070 = fmul fast float %2067, 1.023000e+03
  %2071 = fmul fast float %2068, 1.023000e+03
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = fadd fast float %2070, 5.000000e-01
  %2074 = fadd fast float %2071, 5.000000e-01
  %2075 = call float @dx.op.unary.f32(i32 27, float %2072)  ; Round_ni(value)
  %2076 = call float @dx.op.unary.f32(i32 27, float %2073)  ; Round_ni(value)
  %2077 = call float @dx.op.unary.f32(i32 27, float %2074)  ; Round_ni(value)
  %2078 = fsub fast float %2045, %2048
  %2079 = fsub fast float %2046, %2049
  %2080 = fsub fast float %2047, %2050
  %2081 = fmul fast float %2078, 7.500000e-01
  %2082 = fmul fast float %2079, 7.500000e-01
  %2083 = fmul fast float %2080, 7.500000e-01
  %2084 = fadd fast float %2048, 1.250000e-01
  %2085 = fadd fast float %2084, %2081
  %2086 = fadd fast float %2085, %2075
  %2087 = fadd fast float %2049, 1.250000e-01
  %2088 = fadd fast float %2087, %2082
  %2089 = fadd fast float %2088, %2076
  %2090 = fadd fast float %2050, 1.250000e-01
  %2091 = fadd fast float %2090, %2083
  %2092 = fadd fast float %2091, %2077
  %2093 = fmul fast float %2086, %2036
  %2094 = fmul fast float %2089, %2037
  %2095 = fmul fast float %2092, %2038
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = add i32 %2097, 0
  %2099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2099, %dx.types.Handle %28, float %2093, float %2094, float %2095, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2101 = extractvalue %dx.types.ResRet.f32 %2100, 0
  br label %2102

; <label>:2102                                    ; preds = %2023, %2012
  %2103 = phi float [ %2101, %2023 ], [ -1.000000e+00, %2012 ]
  %2104 = fadd fast float %2103, %2010
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  br label %2106

; <label>:2106                                    ; preds = %2102, %2000
  %2107 = phi float [ %2105, %2102 ], [ %2010, %2000 ]
  %2108 = fmul fast float %2107, %400
  br label %2109

; <label>:2109                                    ; preds = %2106, %1995
  %2110 = phi float [ %2108, %2106 ], [ %400, %1995 ]
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = and i32 %2112, 256
  %2114 = icmp eq i32 %2113, 0
  br i1 %2114, label %2161, label %2115

; <label>:2115                                    ; preds = %2109
  %2116 = add i32 %35, 432
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = add i32 %2118, 0
  %2120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2120, %dx.types.Handle %72, float %1996, float %1997, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2122 = extractvalue %dx.types.ResRet.f32 %2121, 0
  %2123 = add i32 %35, 132
  %2124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2123, i32 undef)  ; BufferLoad(srv,index,wot)
  %2125 = extractvalue %dx.types.ResRet.i32 %2124, 0
  %2126 = shl i32 %2125, 4
  %2127 = and i32 %2126, 32752
  %2128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2127)  ; LegacyF16ToF32(value)
  %2129 = lshr i32 %2125, 7
  %2130 = and i32 %2129, 32752
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = fsub fast float 1.000000e+00, %2110
  %2133 = call float @dx.op.binary.f32(i32 35, float %2132, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2134 = bitcast float %2110 to i32
  %2135 = sitofp i32 %2134 to float
  %2136 = fadd fast float %2135, 0xC1CFBF8940000000
  %2137 = fmul fast float %2131, %2136
  %2138 = fadd fast float %2137, 0x41CFBF8940000000
  %2139 = fptosi float %2138 to i32
  %2140 = bitcast i32 %2139 to float
  %2141 = bitcast float %2133 to i32
  %2142 = sitofp i32 %2141 to float
  %2143 = fadd fast float %2142, 0xC1CFBF8940000000
  %2144 = fmul fast float %2143, %2131
  %2145 = fadd fast float %2144, 0x41CFBF8940000000
  %2146 = fptosi float %2145 to i32
  %2147 = bitcast i32 %2146 to float
  %2148 = fmul fast float %2140, %2128
  %2149 = fmul fast float %2147, %2128
  %2150 = fsub fast float %2133, %2148
  %2151 = fadd fast float %2149, %2133
  %2152 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2153 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2154 = fsub fast float %2122, %2152
  %2155 = fsub fast float %2153, %2152
  %2156 = bitcast float %2155 to i32
  %2157 = sub nsw i32 2129859010, %2156
  %2158 = bitcast i32 %2157 to float
  %2159 = fmul fast float %2158, %2154
  %2160 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  br label %2161

; <label>:2161                                    ; preds = %2115, %2109
  %2162 = phi float [ %2160, %2115 ], [ %2110, %2109 ]
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = and i32 %2164, 128
  %2166 = icmp eq i32 %2165, 0
  br i1 %2166, label %2183, label %2167

; <label>:2167                                    ; preds = %2161
  %2168 = add i32 %35, 416
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = add i32 %2170, 0
  %2172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2172, %dx.types.Handle %72, float %1996, float %1997, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2174 = extractvalue %dx.types.ResRet.f32 %2173, 0
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 524288
  %2178 = icmp ne i32 %2177, 0
  %2179 = fcmp fast ogt float %2174, 0x3FE0101020000000
  %2180 = select i1 %2179, float 1.000000e+00, float 0.000000e+00
  %2181 = select i1 %2178, float %2180, float %2174
  %2182 = fmul fast float %2181, %2162
  br label %2183

; <label>:2183                                    ; preds = %2167, %2161
  %2184 = phi float [ %2182, %2167 ], [ %2162, %2161 ]
  %2185 = fcmp fast ult float %2184, 0x3F70101020000000
  br i1 %2185, label %2815, label %2186

; <label>:2186                                    ; preds = %2183
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = and i32 %2188, 16
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2389, label %2191

; <label>:2191                                    ; preds = %2186
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = add i32 %35, 368
  %2195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2194, i32 undef)  ; BufferLoad(srv,index,wot)
  %2196 = extractvalue %dx.types.ResRet.i32 %2195, 0
  %2197 = add i32 %2196, 0
  %2198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2198, %dx.types.Handle %71, float %1996, float %1997, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2200 = extractvalue %dx.types.ResRet.f32 %2199, 0
  %2201 = extractvalue %dx.types.ResRet.f32 %2199, 1
  %2202 = extractvalue %dx.types.ResRet.f32 %2199, 2
  %2203 = extractvalue %dx.types.ResRet.f32 %2199, 3
  %2204 = and i32 %2193, 255
  %2205 = uitofp i32 %2204 to float
  %2206 = lshr i32 %2193, 8
  %2207 = and i32 %2206, 255
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2203, %2205
  %2210 = fadd fast float %2209, %2208
  %2211 = fmul fast float %2210, 0x3F70101000000000
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = and i32 %2213, 512
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2224, label %2216

; <label>:2216                                    ; preds = %2191
  %2217 = add i32 %35, 448
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %72, float %1996, float %1997, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  br label %2224

; <label>:2224                                    ; preds = %2216, %2191
  %2225 = phi float [ %2223, %2216 ], [ 1.000000e+00, %2191 ]
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 33554432
  %2229 = icmp eq i32 %2228, 0
  br i1 %2229, label %2336, label %2230

; <label>:2230                                    ; preds = %2224
  %2231 = add i32 %35, 256
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 65535
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = lshr i32 %2233, 16
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = add i32 %35, 260
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 65535
  %2242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2241)  ; LegacyF16ToF32(value)
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = lshr i32 %2244, 24
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101020000000
  %2248 = and i32 %2244, 255
  %2249 = uitofp i32 %2248 to float
  %2250 = fmul fast float %2249, 0x3F70101020000000
  %2251 = lshr i32 %2244, 8
  %2252 = and i32 %2251, 255
  %2253 = uitofp i32 %2252 to float
  %2254 = fmul fast float %2253, 0x3F70101020000000
  %2255 = lshr i32 %2244, 16
  %2256 = and i32 %2255, 255
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = add i32 %35, 252
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = lshr i32 %2261, 24
  %2263 = uitofp i32 %2262 to float
  %2264 = fmul fast float %2263, 0x3F70101020000000
  %2265 = and i32 %2261, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = fmul fast float %2266, 0x3F70101020000000
  %2268 = lshr i32 %2261, 8
  %2269 = and i32 %2268, 255
  %2270 = uitofp i32 %2269 to float
  %2271 = fmul fast float %2270, 0x3F70101020000000
  %2272 = lshr i32 %2261, 16
  %2273 = and i32 %2272, 255
  %2274 = uitofp i32 %2273 to float
  %2275 = fmul fast float %2274, 0x3F70101020000000
  %2276 = bitcast float %2200 to i32
  %2277 = ashr i32 %2276, 1
  %2278 = sub nsw i32 1597463174, %2277
  %2279 = bitcast i32 %2278 to float
  %2280 = fmul fast float %2200, 5.000000e-01
  %2281 = fmul fast float %2279, %2279
  %2282 = fmul fast float %2281, %2280
  %2283 = fsub fast float 1.500000e+00, %2282
  %2284 = fmul fast float %2279, %2200
  %2285 = fmul fast float %2284, %2283
  %2286 = bitcast float %2201 to i32
  %2287 = ashr i32 %2286, 1
  %2288 = sub nsw i32 1597463174, %2287
  %2289 = bitcast i32 %2288 to float
  %2290 = fmul fast float %2201, 5.000000e-01
  %2291 = fmul fast float %2289, %2289
  %2292 = fmul fast float %2291, %2290
  %2293 = fsub fast float 1.500000e+00, %2292
  %2294 = fmul fast float %2289, %2201
  %2295 = fmul fast float %2294, %2293
  %2296 = bitcast float %2202 to i32
  %2297 = ashr i32 %2296, 1
  %2298 = sub nsw i32 1597463174, %2297
  %2299 = bitcast i32 %2298 to float
  %2300 = fmul fast float %2202, 5.000000e-01
  %2301 = fmul fast float %2299, %2299
  %2302 = fmul fast float %2301, %2300
  %2303 = fsub fast float 1.500000e+00, %2302
  %2304 = fmul fast float %2299, %2202
  %2305 = fmul fast float %2304, %2303
  %2306 = fsub fast float %2285, %2267
  %2307 = fsub fast float %2295, %2271
  %2308 = fsub fast float %2305, %2275
  %2309 = fmul fast float %2306, %2235
  %2310 = fmul fast float %2307, %2237
  %2311 = fmul fast float %2308, %2242
  %2312 = fadd fast float %2309, %2250
  %2313 = fadd fast float %2310, %2254
  %2314 = fadd fast float %2311, %2258
  %2315 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2316 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2317 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  %2318 = fmul fast float %2315, %2315
  %2319 = fmul fast float %2316, %2316
  %2320 = fmul fast float %2317, %2317
  %2321 = fsub fast float %2318, %2200
  %2322 = fsub fast float %2319, %2201
  %2323 = fsub fast float %2320, %2202
  %2324 = fmul fast float %2321, %2225
  %2325 = fmul fast float %2322, %2225
  %2326 = fmul fast float %2323, %2225
  %2327 = fadd fast float %2324, %2200
  %2328 = fadd fast float %2325, %2201
  %2329 = fadd fast float %2326, %2202
  %2330 = fadd fast float %2247, %2211
  %2331 = fsub fast float %2330, %2264
  %2332 = call float @dx.op.unary.f32(i32 7, float %2331)  ; Saturate(value)
  %2333 = fsub fast float %2332, %2211
  %2334 = fmul fast float %2333, %2225
  %2335 = fadd fast float %2334, %2211
  br label %2389

; <label>:2336                                    ; preds = %2224
  %2337 = and i32 %2227, 134217728
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2373, label %2339

; <label>:2339                                    ; preds = %2336
  %2340 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2341 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2342 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2343 = fadd fast float %2340, -5.000000e-01
  %2344 = fadd fast float %2341, -5.000000e-01
  %2345 = fadd fast float %2342, -5.000000e-01
  %2346 = fmul fast float %2343, %2225
  %2347 = fmul fast float %2344, %2225
  %2348 = fmul fast float %2345, %2225
  %2349 = fadd fast float %2346, 5.000000e-01
  %2350 = fadd fast float %2347, 5.000000e-01
  %2351 = fadd fast float %2348, 5.000000e-01
  %2352 = call float @dx.op.unary.f32(i32 24, float %2200)  ; Sqrt(value)
  %2353 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2354 = call float @dx.op.unary.f32(i32 24, float %2202)  ; Sqrt(value)
  %2355 = fmul fast float %2349, 2.000000e+00
  %2356 = fsub fast float 1.000000e+00, %2355
  %2357 = fmul fast float %2356, %2352
  %2358 = fadd fast float %2357, %2355
  %2359 = fmul fast float %2358, %2352
  %2360 = fmul fast float %2350, 2.000000e+00
  %2361 = fsub fast float 1.000000e+00, %2360
  %2362 = fmul fast float %2361, %2353
  %2363 = fadd fast float %2362, %2360
  %2364 = fmul fast float %2363, %2353
  %2365 = fmul fast float %2351, 2.000000e+00
  %2366 = fsub fast float 1.000000e+00, %2365
  %2367 = fmul fast float %2366, %2354
  %2368 = fadd fast float %2367, %2365
  %2369 = fmul fast float %2368, %2354
  %2370 = fmul fast float %2359, %2359
  %2371 = fmul fast float %2364, %2364
  %2372 = fmul fast float %2369, %2369
  br label %2389

; <label>:2373                                    ; preds = %2336
  %2374 = fmul fast float %278, %278
  %2375 = fmul fast float %282, %282
  %2376 = fmul fast float %286, %286
  %2377 = fadd fast float %2374, -1.000000e+00
  %2378 = fadd fast float %2375, -1.000000e+00
  %2379 = fadd fast float %2376, -1.000000e+00
  %2380 = fmul fast float %2225, %2377
  %2381 = fmul fast float %2225, %2378
  %2382 = fmul fast float %2225, %2379
  %2383 = fadd fast float %2380, 1.000000e+00
  %2384 = fadd fast float %2381, 1.000000e+00
  %2385 = fadd fast float %2382, 1.000000e+00
  %2386 = fmul fast float %2383, %2200
  %2387 = fmul fast float %2384, %2201
  %2388 = fmul fast float %2385, %2202
  br label %2389

; <label>:2389                                    ; preds = %2373, %2339, %2230, %2186
  %2390 = phi float [ %2335, %2230 ], [ %2211, %2339 ], [ %2211, %2373 ], [ 0x3FA23C0BE0000000, %2186 ]
  %2391 = phi float [ %2327, %2230 ], [ %2370, %2339 ], [ %2386, %2373 ], [ 1.000000e+00, %2186 ]
  %2392 = phi float [ %2328, %2230 ], [ %2371, %2339 ], [ %2387, %2373 ], [ 1.000000e+00, %2186 ]
  %2393 = phi float [ %2329, %2230 ], [ %2372, %2339 ], [ %2388, %2373 ], [ 1.000000e+00, %2186 ]
  %2394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.i32 %2394, 1
  %2396 = and i32 %2395, 1
  %2397 = icmp ne i32 %2396, 0
  %2398 = add i32 %35, 356
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2398, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 32
  %2402 = icmp ne i32 %2401, 0
  %2403 = and i1 %2397, %2402
  %2404 = select i1 %2403, float 1.000000e+00, float %2391
  %2405 = select i1 %2403, float 0x3FD3333340000000, float %2392
  %2406 = select i1 %2403, float 0x3FD3333340000000, float %2393
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = and i32 %2408, 32
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2483, label %2411

; <label>:2411                                    ; preds = %2389
  %2412 = add i32 %35, 124
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2412, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = add i32 %35, 384
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2415, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = add i32 %2417, 0
  %2419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2419, %dx.types.Handle %71, float %1996, float %1997, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2421 = extractvalue %dx.types.ResRet.f32 %2420, 0
  %2422 = extractvalue %dx.types.ResRet.f32 %2420, 1
  %2423 = extractvalue %dx.types.ResRet.f32 %2420, 2
  %2424 = extractvalue %dx.types.ResRet.f32 %2420, 3
  %2425 = and i32 %2414, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = lshr i32 %2414, 8
  %2428 = and i32 %2427, 255
  %2429 = uitofp i32 %2428 to float
  %2430 = lshr i32 %2414, 16
  %2431 = and i32 %2430, 255
  %2432 = uitofp i32 %2431 to float
  %2433 = fmul fast float %2432, 0x3F70101000000000
  %2434 = fmul fast float %2421, %2426
  %2435 = fadd fast float %2434, %2429
  %2436 = fmul fast float %2435, 0x3F70101000000000
  %2437 = fadd fast float %2422, -5.000000e-01
  %2438 = fadd fast float %2424, -5.000000e-01
  %2439 = fmul fast float %2437, %2433
  %2440 = fmul fast float %2438, %2433
  %2441 = fadd fast float %2439, 5.000000e-01
  %2442 = fadd fast float %2440, 5.000000e-01
  %2443 = fmul fast float %2441, 2.000000e+00
  %2444 = fadd fast float %2443, -1.000000e+00
  %2445 = fmul fast float %2442, 2.000000e+00
  %2446 = fadd fast float %2445, -1.000000e+00
  %2447 = fadd fast float %2444, %2446
  %2448 = fmul fast float %2447, 5.000000e-01
  %2449 = fsub fast float %2444, %2446
  %2450 = fmul fast float %2449, 5.000000e-01
  %2451 = call float @dx.op.unary.f32(i32 6, float %2448)  ; FAbs(value)
  %2452 = fsub fast float 1.000000e+00, %2451
  %2453 = call float @dx.op.unary.f32(i32 6, float %2450)  ; FAbs(value)
  %2454 = fsub fast float %2452, %2453
  %2455 = call float @dx.op.dot3.f32(i32 55, float %2448, float %2450, float %2454, float %2448, float %2450, float %2454)  ; Dot3(ax,ay,az,bx,by,bz)
  %2456 = call float @dx.op.unary.f32(i32 25, float %2455)  ; Rsqrt(value)
  %2457 = fmul fast float %2448, %2456
  %2458 = fmul fast float %2450, %2456
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 67108864
  %2462 = icmp eq i32 %2461, 0
  br i1 %2462, label %2479, label %2463

; <label>:2463                                    ; preds = %2411
  %2464 = add i32 %35, 312
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = and i32 %2466, 65535
  %2468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2467)  ; LegacyF16ToF32(value)
  %2469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2470 = extractvalue %dx.types.ResRet.i32 %2469, 0
  %2471 = and i32 %2470, 65535
  %2472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2471)  ; LegacyF16ToF32(value)
  %2473 = lshr i32 %2466, 16
  %2474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2473)  ; LegacyF16ToF32(value)
  %2475 = fsub fast float %2436, %2474
  %2476 = fmul fast float %2475, %2468
  %2477 = fadd fast float %2476, %2472
  %2478 = call float @dx.op.unary.f32(i32 7, float %2477)  ; Saturate(value)
  br label %2479

; <label>:2479                                    ; preds = %2463, %2411
  %2480 = phi float [ %2478, %2463 ], [ %2436, %2411 ]
  %2481 = call float @dx.op.dot2.f32(i32 54, float %2457, float %2458, float %1900, float %1901)  ; Dot2(ax,ay,bx,by)
  %2482 = call float @dx.op.dot2.f32(i32 54, float %2457, float %2458, float %1902, float %1903)  ; Dot2(ax,ay,bx,by)
  br label %2483

; <label>:2483                                    ; preds = %2479, %2389
  %2484 = phi float [ %2480, %2479 ], [ 0x3FD6666660000000, %2389 ]
  %2485 = phi float [ %2481, %2479 ], [ 0.000000e+00, %2389 ]
  %2486 = phi float [ %2482, %2479 ], [ 0.000000e+00, %2389 ]
  %2487 = phi float [ %2423, %2479 ], [ 1.000000e+00, %2389 ]
  %2488 = add i32 %35, 192
  %2489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2490 = extractvalue %dx.types.ResRet.i32 %2489, 0
  %2491 = lshr i32 %2490, 22
  %2492 = shl nuw nsw i32 %2491, 5
  %2493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2492)  ; LegacyF16ToF32(value)
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 64
  %2497 = icmp eq i32 %2496, 0
  br i1 %2497, label %2531, label %2498

; <label>:2498                                    ; preds = %2483
  %2499 = add i32 %35, 400
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = add i32 %2501, 0
  %2503 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2502, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 131072
  %2507 = icmp eq i32 %2506, 0
  %2508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2503, %dx.types.Handle %71, float %1996, float %1997, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2509 = extractvalue %dx.types.ResRet.f32 %2508, 0
  %2510 = extractvalue %dx.types.ResRet.f32 %2508, 1
  %2511 = extractvalue %dx.types.ResRet.f32 %2508, 2
  %2512 = fmul fast float %2509, %266
  %2513 = fmul fast float %2510, %269
  %2514 = fmul fast float %2511, %272
  br i1 %2507, label %2521, label %2515

; <label>:2515                                    ; preds = %2498
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 0
  %2518 = fmul fast float %2517, %2512
  %2519 = fmul fast float %2517, %2513
  %2520 = fmul fast float %2517, %2514
  br label %2521

; <label>:2521                                    ; preds = %2515, %2498
  %2522 = phi float [ %2518, %2515 ], [ %2512, %2498 ]
  %2523 = phi float [ %2519, %2515 ], [ %2513, %2498 ]
  %2524 = phi float [ %2520, %2515 ], [ %2514, %2498 ]
  %2525 = fmul fast float %2522, %2493
  %2526 = select i1 %176, float %2525, float %2522
  %2527 = call float @dx.op.dot3.f32(i32 55, float %2526, float %2523, float %2524, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2528 = select i1 %176, float 0.000000e+00, float %2522
  %2529 = select i1 %176, float %2527, float %2523
  %2530 = select i1 %176, float 0.000000e+00, float %2524
  br label %2531

; <label>:2531                                    ; preds = %2521, %2483
  %2532 = phi float [ %2528, %2521 ], [ 0.000000e+00, %2483 ]
  %2533 = phi float [ %2529, %2521 ], [ 0.000000e+00, %2483 ]
  %2534 = phi float [ %2530, %2521 ], [ 0.000000e+00, %2483 ]
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 10240
  %2538 = icmp eq i32 %2537, 0
  br i1 %2538, label %2583, label %2539

; <label>:2539                                    ; preds = %2531
  %2540 = add i32 %35, 464
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = add i32 %2542, 0
  %2544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2544, %dx.types.Handle %72, float %1996, float %1997, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2546 = extractvalue %dx.types.ResRet.f32 %2545, 1
  %2547 = extractvalue %dx.types.ResRet.f32 %2545, 3
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 1048576
  %2551 = icmp ne i32 %2550, 0
  %2552 = and i32 %2549, 8192
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %2569, label %2554

; <label>:2554                                    ; preds = %2539
  %2555 = extractvalue %dx.types.ResRet.f32 %2545, 2
  %2556 = select i1 %2551, float %2555, float %2546
  %2557 = extractvalue %dx.types.ResRet.f32 %2545, 0
  %2558 = select i1 %2551, float %2557, float %2546
  %2559 = add i32 %35, 128
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = lshr i32 %2561, 16
  %2563 = and i32 %2562, 255
  %2564 = uitofp i32 %2563 to float
  %2565 = fmul fast float %2564, 0x3F80101020000000
  %2566 = fmul fast float %2565, %2558
  %2567 = fmul fast float %2565, %2546
  %2568 = fmul fast float %2565, %2556
  br label %2569

; <label>:2569                                    ; preds = %2554, %2539
  %2570 = phi float [ %2566, %2554 ], [ 0.000000e+00, %2539 ]
  %2571 = phi float [ %2567, %2554 ], [ 0.000000e+00, %2539 ]
  %2572 = phi float [ %2568, %2554 ], [ 0.000000e+00, %2539 ]
  %2573 = and i32 %2549, 2048
  %2574 = icmp eq i32 %2573, 0
  br i1 %2574, label %2583, label %2575

; <label>:2575                                    ; preds = %2569
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2488, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = shl i32 %2577, 4
  %2579 = and i32 %2578, 32752
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = fmul fast float %2580, %2547
  %2582 = call float @dx.op.binary.f32(i32 35, float %2581, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2583

; <label>:2583                                    ; preds = %2575, %2569, %2531
  %2584 = phi float [ %2570, %2575 ], [ %2570, %2569 ], [ 0.000000e+00, %2531 ]
  %2585 = phi float [ %2571, %2575 ], [ %2571, %2569 ], [ 0.000000e+00, %2531 ]
  %2586 = phi float [ %2572, %2575 ], [ %2572, %2569 ], [ 0.000000e+00, %2531 ]
  %2587 = phi float [ %2582, %2575 ], [ 0x3F70101020000000, %2569 ], [ 0x3F70101020000000, %2531 ]
  %2588 = add i32 %35, 128
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 255
  %2592 = uitofp i32 %2591 to float
  %2593 = lshr i32 %2590, 8
  %2594 = and i32 %2593, 255
  %2595 = uitofp i32 %2594 to float
  %2596 = call float @dx.op.dot3.f32(i32 55, float %2404, float %2405, float %2406, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2597 = fmul fast float %2595, %2596
  %2598 = fadd fast float %2597, %2592
  %2599 = fmul fast float %2598, 0x3F70101020000000
  %2600 = call float @dx.op.unary.f32(i32 7, float %2599)  ; Saturate(value)
  br i1 %1888, label %2601, label %2609

; <label>:2601                                    ; preds = %2583
  %2602 = fsub fast float 1.000000e+00, %2184
  %2603 = fmul fast float %2602, %1873
  %2604 = fmul fast float %2602, %1874
  %2605 = fmul fast float %2602, %1875
  %2606 = fmul fast float %2602, %1876
  %2607 = fmul fast float %2602, %1877
  %2608 = fmul fast float %2602, %1878
  br label %2609

; <label>:2609                                    ; preds = %2601, %2583
  %2610 = phi float [ %2603, %2601 ], [ %1873, %2583 ]
  %2611 = phi float [ %2604, %2601 ], [ %1874, %2583 ]
  %2612 = phi float [ %2605, %2601 ], [ %1875, %2583 ]
  %2613 = phi float [ %2606, %2601 ], [ %1876, %2583 ]
  %2614 = phi float [ %2607, %2601 ], [ %1877, %2583 ]
  %2615 = phi float [ %2608, %2601 ], [ %1878, %2583 ]
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 3
  %2619 = icmp eq i32 %2618, 3
  br i1 %2619, label %2698, label %2620

; <label>:2620                                    ; preds = %2609
  %2621 = and i32 %2617, 16
  %2622 = icmp ne i32 %2621, 0
  %2623 = select i1 %2622, float %2184, float 0.000000e+00
  %2624 = icmp eq i32 %2618, 0
  br i1 %2624, label %2625, label %2653

; <label>:2625                                    ; preds = %2620
  %2626 = and i32 %2617, 64
  %2627 = icmp ne i32 %2626, 0
  %2628 = select i1 %2627, float %2184, float 0.000000e+00
  %2629 = fsub fast float %2404, %2610
  %2630 = fsub fast float %2405, %2611
  %2631 = fsub fast float %2406, %2612
  %2632 = fmul fast float %2623, %2629
  %2633 = fmul fast float %2623, %2630
  %2634 = fmul fast float %2623, %2631
  %2635 = fadd fast float %2632, %2610
  %2636 = fadd fast float %2633, %2611
  %2637 = fadd fast float %2634, %2612
  %2638 = fsub fast float %2390, %1882
  %2639 = fmul fast float %2623, %2638
  %2640 = fadd fast float %2639, %1882
  %2641 = fsub fast float %2532, %2613
  %2642 = fsub fast float %2533, %2614
  %2643 = fsub fast float %2534, %2615
  %2644 = fmul fast float %2628, %2641
  %2645 = fmul fast float %2628, %2642
  %2646 = fmul fast float %2628, %2643
  %2647 = fadd fast float %2644, %2613
  %2648 = fadd fast float %2645, %2614
  %2649 = fadd fast float %2646, %2615
  %2650 = fsub fast float %2600, %1886
  %2651 = fmul fast float %2623, %2650
  %2652 = fadd fast float %2651, %1886
  br label %2698

; <label>:2653                                    ; preds = %2620
  %2654 = icmp eq i32 %2618, 1
  br i1 %2654, label %2655, label %2668

; <label>:2655                                    ; preds = %2653
  %2656 = fadd fast float %2404, -1.000000e+00
  %2657 = fadd fast float %2405, -1.000000e+00
  %2658 = fadd fast float %2406, -1.000000e+00
  %2659 = fmul fast float %2623, %2656
  %2660 = fmul fast float %2623, %2657
  %2661 = fmul fast float %2623, %2658
  %2662 = fadd fast float %2659, 1.000000e+00
  %2663 = fadd fast float %2660, 1.000000e+00
  %2664 = fadd fast float %2661, 1.000000e+00
  %2665 = fmul fast float %2662, %2610
  %2666 = fmul fast float %2663, %2611
  %2667 = fmul fast float %2664, %2612
  br label %2698

; <label>:2668                                    ; preds = %2653
  %2669 = icmp eq i32 %2618, 2
  br i1 %2669, label %2670, label %2698

; <label>:2670                                    ; preds = %2668
  %2671 = call float @dx.op.unary.f32(i32 24, float %2404)  ; Sqrt(value)
  %2672 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2673 = call float @dx.op.unary.f32(i32 24, float %2406)  ; Sqrt(value)
  %2674 = fadd fast float %2671, -5.000000e-01
  %2675 = fadd fast float %2672, -5.000000e-01
  %2676 = fadd fast float %2673, -5.000000e-01
  %2677 = fmul fast float %2674, %2623
  %2678 = fmul fast float %2675, %2623
  %2679 = fmul fast float %2676, %2623
  %2680 = fadd fast float %2677, 5.000000e-01
  %2681 = fadd fast float %2678, 5.000000e-01
  %2682 = fadd fast float %2679, 5.000000e-01
  %2683 = fmul fast float %2680, 2.000000e+00
  %2684 = fsub fast float 1.000000e+00, %2683
  %2685 = fmul fast float %2684, %2610
  %2686 = fadd fast float %2685, %2683
  %2687 = fmul fast float %2686, %2610
  %2688 = fmul fast float %2681, 2.000000e+00
  %2689 = fsub fast float 1.000000e+00, %2688
  %2690 = fmul fast float %2689, %2611
  %2691 = fadd fast float %2690, %2688
  %2692 = fmul fast float %2691, %2611
  %2693 = fmul fast float %2682, 2.000000e+00
  %2694 = fsub fast float 1.000000e+00, %2693
  %2695 = fmul fast float %2694, %2612
  %2696 = fadd fast float %2695, %2693
  %2697 = fmul fast float %2696, %2612
  br label %2698

; <label>:2698                                    ; preds = %2670, %2668, %2655, %2625, %2609
  %2699 = phi float [ %2610, %2609 ], [ %2687, %2670 ], [ %2610, %2668 ], [ %2665, %2655 ], [ %2635, %2625 ]
  %2700 = phi float [ %2611, %2609 ], [ %2692, %2670 ], [ %2611, %2668 ], [ %2666, %2655 ], [ %2636, %2625 ]
  %2701 = phi float [ %2612, %2609 ], [ %2697, %2670 ], [ %2612, %2668 ], [ %2667, %2655 ], [ %2637, %2625 ]
  %2702 = phi float [ %2613, %2609 ], [ %2613, %2670 ], [ %2613, %2668 ], [ %2613, %2655 ], [ %2647, %2625 ]
  %2703 = phi float [ %2614, %2609 ], [ %2614, %2670 ], [ %2614, %2668 ], [ %2614, %2655 ], [ %2648, %2625 ]
  %2704 = phi float [ %2615, %2609 ], [ %2615, %2670 ], [ %2615, %2668 ], [ %2615, %2655 ], [ %2649, %2625 ]
  %2705 = phi float [ %1882, %2609 ], [ %1882, %2670 ], [ %1882, %2668 ], [ %1882, %2655 ], [ %2640, %2625 ]
  %2706 = phi float [ %1886, %2609 ], [ %1886, %2670 ], [ %1886, %2668 ], [ %1886, %2655 ], [ %2652, %2625 ]
  %2707 = and i32 %2617, 12
  %2708 = icmp eq i32 %2707, 12
  br i1 %2708, label %2815, label %2709

; <label>:2709                                    ; preds = %2698
  %2710 = and i32 %2617, 2097184
  %2711 = icmp eq i32 %2710, 2097184
  %2712 = select i1 %2711, float %2184, float 0.000000e+00
  %2713 = and i32 %2617, 4194336
  %2714 = icmp eq i32 %2713, 4194336
  %2715 = select i1 %2714, float %2184, float 0.000000e+00
  %2716 = and i32 %2617, 8388640
  %2717 = icmp eq i32 %2716, 8388640
  %2718 = select i1 %2717, float %2184, float 0.000000e+00
  %2719 = and i32 %2617, 2048
  %2720 = icmp ne i32 %2719, 0
  %2721 = select i1 %2720, float %2184, float 0.000000e+00
  %2722 = and i32 %2617, 8192
  %2723 = icmp ne i32 %2722, 0
  %2724 = select i1 %2723, float %2184, float 0.000000e+00
  %2725 = icmp eq i32 %2707, 0
  br i1 %2725, label %2726, label %2751

; <label>:2726                                    ; preds = %2709
  %2727 = fsub fast float %2485, %1871
  %2728 = fsub fast float %2486, %1872
  %2729 = fmul fast float %2712, %2727
  %2730 = fmul fast float %2712, %2728
  %2731 = fadd fast float %2729, %1871
  %2732 = fadd fast float %2730, %1872
  %2733 = fsub fast float %2487, %1884
  %2734 = fmul fast float %2715, %2733
  %2735 = fadd fast float %2734, %1884
  %2736 = fsub fast float %2484, %1883
  %2737 = fmul fast float %2718, %2736
  %2738 = fadd fast float %2737, %1883
  %2739 = fsub fast float %2587, %1885
  %2740 = fmul fast float %2721, %2739
  %2741 = fadd fast float %2740, %1885
  %2742 = fsub fast float %2584, %1879
  %2743 = fsub fast float %2585, %1880
  %2744 = fsub fast float %2586, %1881
  %2745 = fmul fast float %2724, %2742
  %2746 = fmul fast float %2724, %2743
  %2747 = fmul fast float %2724, %2744
  %2748 = fadd fast float %2745, %1879
  %2749 = fadd fast float %2746, %1880
  %2750 = fadd fast float %2747, %1881
  br label %2815

; <label>:2751                                    ; preds = %2709
  %2752 = icmp eq i32 %2707, 4
  br i1 %2752, label %2753, label %2793

; <label>:2753                                    ; preds = %2751
  %2754 = fmul fast float %2712, %2485
  %2755 = fmul fast float %2712, %2486
  %2756 = fadd fast float %2754, %1871
  %2757 = fadd fast float %2755, %1872
  %2758 = call float @dx.op.binary.f32(i32 36, float %1884, float %2487)  ; FMin(a,b)
  %2759 = fsub fast float %2758, %1884
  %2760 = fmul fast float %2759, %2715
  %2761 = fadd fast float %2760, %1884
  %2762 = fadd fast float %2484, %1883
  %2763 = fmul fast float %2762, 0x3FF337FAE0000000
  %2764 = fmul fast float %1883, %1883
  %2765 = fmul fast float %2484, %2484
  %2766 = fadd fast float %2765, %2764
  %2767 = fmul fast float %2766, 0x3FE5152B00000000
  %2768 = fmul fast float %1883, 0xBFCC1F85E0000000
  %2769 = fmul fast float %2768, %2484
  %2770 = fadd fast float %2769, 0xBFE1363700000000
  %2771 = fadd fast float %2770, %2763
  %2772 = fsub fast float %2771, %2767
  %2773 = fmul fast float %2762, 0x3FBA6F0D00000000
  %2774 = fmul fast float %2766, 0x3FD0432880000000
  %2775 = fmul fast float %1883, 0xBFEF110800000000
  %2776 = fmul fast float %2775, %2484
  %2777 = fadd fast float %2776, 1.000000e+00
  %2778 = fsub fast float %2777, %2773
  %2779 = fadd fast float %2778, %2774
  %2780 = fdiv fast float %2772, %2779
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2782 = fsub fast float %2781, %1883
  %2783 = fmul fast float %2782, %2718
  %2784 = fadd fast float %2783, %1883
  %2785 = fmul fast float %2721, %2587
  %2786 = fadd fast float %2785, %1885
  %2787 = fmul fast float %2724, %2584
  %2788 = fmul fast float %2724, %2585
  %2789 = fmul fast float %2724, %2586
  %2790 = fadd fast float %2787, %1879
  %2791 = fadd fast float %2788, %1880
  %2792 = fadd fast float %2789, %1881
  br label %2815

; <label>:2793                                    ; preds = %2751
  %2794 = icmp eq i32 %2707, 8
  br i1 %2794, label %2795, label %2815

; <label>:2795                                    ; preds = %2793
  %2796 = fmul fast float %2712, %2485
  %2797 = fmul fast float %2712, %2486
  %2798 = fadd fast float %2796, %1871
  %2799 = fadd fast float %2797, %1872
  %2800 = call float @dx.op.binary.f32(i32 36, float %1884, float %2487)  ; FMin(a,b)
  %2801 = fsub fast float %2800, %1884
  %2802 = fmul fast float %2801, %2715
  %2803 = fadd fast float %2802, %1884
  %2804 = fsub fast float %2484, %1883
  %2805 = fmul fast float %2718, %2804
  %2806 = fadd fast float %2805, %1883
  %2807 = fmul fast float %2721, %2587
  %2808 = fadd fast float %2807, %1885
  %2809 = fmul fast float %2724, %2584
  %2810 = fmul fast float %2724, %2585
  %2811 = fmul fast float %2724, %2586
  %2812 = fadd fast float %2809, %1879
  %2813 = fadd fast float %2810, %1880
  %2814 = fadd fast float %2811, %1881
  br label %2815

; <label>:2815                                    ; preds = %2795, %2793, %2753, %2726, %2698, %2183, %1887, %1870
  %2816 = phi float [ %1871, %2698 ], [ %1871, %2183 ], [ %1871, %1870 ], [ %2798, %2795 ], [ %1871, %2793 ], [ %2756, %2753 ], [ %2731, %2726 ], [ %1871, %1887 ]
  %2817 = phi float [ %1872, %2698 ], [ %1872, %2183 ], [ %1872, %1870 ], [ %2799, %2795 ], [ %1872, %2793 ], [ %2757, %2753 ], [ %2732, %2726 ], [ %1872, %1887 ]
  %2818 = phi float [ %2699, %2698 ], [ %1873, %2183 ], [ %1873, %1870 ], [ %2699, %2795 ], [ %2699, %2793 ], [ %2699, %2753 ], [ %2699, %2726 ], [ %1873, %1887 ]
  %2819 = phi float [ %2700, %2698 ], [ %1874, %2183 ], [ %1874, %1870 ], [ %2700, %2795 ], [ %2700, %2793 ], [ %2700, %2753 ], [ %2700, %2726 ], [ %1874, %1887 ]
  %2820 = phi float [ %2701, %2698 ], [ %1875, %2183 ], [ %1875, %1870 ], [ %2701, %2795 ], [ %2701, %2793 ], [ %2701, %2753 ], [ %2701, %2726 ], [ %1875, %1887 ]
  %2821 = phi float [ %2702, %2698 ], [ %1876, %2183 ], [ %1876, %1870 ], [ %2702, %2795 ], [ %2702, %2793 ], [ %2702, %2753 ], [ %2702, %2726 ], [ %1876, %1887 ]
  %2822 = phi float [ %2703, %2698 ], [ %1877, %2183 ], [ %1877, %1870 ], [ %2703, %2795 ], [ %2703, %2793 ], [ %2703, %2753 ], [ %2703, %2726 ], [ %1877, %1887 ]
  %2823 = phi float [ %2704, %2698 ], [ %1878, %2183 ], [ %1878, %1870 ], [ %2704, %2795 ], [ %2704, %2793 ], [ %2704, %2753 ], [ %2704, %2726 ], [ %1878, %1887 ]
  %2824 = phi float [ %1879, %2698 ], [ %1879, %2183 ], [ %1879, %1870 ], [ %2812, %2795 ], [ %1879, %2793 ], [ %2790, %2753 ], [ %2748, %2726 ], [ %1879, %1887 ]
  %2825 = phi float [ %1880, %2698 ], [ %1880, %2183 ], [ %1880, %1870 ], [ %2813, %2795 ], [ %1880, %2793 ], [ %2791, %2753 ], [ %2749, %2726 ], [ %1880, %1887 ]
  %2826 = phi float [ %1881, %2698 ], [ %1881, %2183 ], [ %1881, %1870 ], [ %2814, %2795 ], [ %1881, %2793 ], [ %2792, %2753 ], [ %2750, %2726 ], [ %1881, %1887 ]
  %2827 = phi float [ %2705, %2698 ], [ %1882, %2183 ], [ %1882, %1870 ], [ %2705, %2795 ], [ %2705, %2793 ], [ %2705, %2753 ], [ %2705, %2726 ], [ %1882, %1887 ]
  %2828 = phi float [ %1883, %2698 ], [ %1883, %2183 ], [ %1883, %1870 ], [ %2806, %2795 ], [ %1883, %2793 ], [ %2784, %2753 ], [ %2738, %2726 ], [ %1883, %1887 ]
  %2829 = phi float [ %1884, %2698 ], [ %1884, %2183 ], [ %1884, %1870 ], [ %2803, %2795 ], [ %1884, %2793 ], [ %2761, %2753 ], [ %2735, %2726 ], [ %1884, %1887 ]
  %2830 = phi float [ %1885, %2698 ], [ %1885, %2183 ], [ %1885, %1870 ], [ %2808, %2795 ], [ %1885, %2793 ], [ %2786, %2753 ], [ %2741, %2726 ], [ %1885, %1887 ]
  %2831 = phi float [ %2706, %2698 ], [ %1886, %2183 ], [ %1886, %1870 ], [ %2706, %2795 ], [ %2706, %2793 ], [ %2706, %2753 ], [ %2706, %2726 ], [ %1886, %1887 ]
  br i1 %353, label %3760, label %2832

; <label>:2832                                    ; preds = %2815
  %2833 = icmp ult i32 %404, 4
  %2834 = add i32 %35, 72
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = add i32 %35, 76
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = or i32 %2839, %2836
  %2841 = icmp eq i32 %2840, 0
  br i1 %2841, label %3760, label %2842

; <label>:2842                                    ; preds = %2832
  %2843 = and i32 %2836, 262144
  %2844 = icmp ne i32 %2843, 0
  %2845 = select i1 %2844, float %38, float 1.000000e+00
  %2846 = select i1 %2844, float %39, float 0.000000e+00
  %2847 = select i1 %2844, float %40, float 0.000000e+00
  %2848 = select i1 %2844, float %41, float 1.000000e+00
  %2849 = select i1 %2844, float %42, float %63
  %2850 = select i1 %2844, float %43, float %64
  %2851 = add i32 %35, 332
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = lshr i32 %2853, 16
  %2855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2854)  ; LegacyF16ToF32(value)
  %2856 = fmul fast float %2855, 0x3F50624DE0000000
  %2857 = add i32 %35, 136
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = lshr i32 %2859, 16
  %2861 = and i32 %2860, 255
  %2862 = lshr i32 %2859, 24
  %2863 = add i32 %35, 340
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 65535
  %2867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2866)  ; LegacyF16ToF32(value)
  %2868 = lshr i32 %2865, 16
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = add i32 %35, 80
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = lshr i32 %2872, 22
  %2874 = shl nuw nsw i32 %2873, 5
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = shl i32 %2872, 4
  %2877 = and i32 %2876, 32752
  %2878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2877)  ; LegacyF16ToF32(value)
  %2879 = lshr i32 %2872, 7
  %2880 = and i32 %2879, 32752
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2883 = extractvalue %dx.types.CBufRet.f32 %2882, 3
  %2884 = fmul fast float %2883, 1.000000e+03
  %2885 = fmul fast float %343, %2884
  %2886 = call float @dx.op.unary.f32(i32 22, float %2885)  ; Frc(value)
  %2887 = fadd fast float %2886, %333
  %2888 = fmul fast float %344, %2884
  %2889 = call float @dx.op.unary.f32(i32 22, float %2888)  ; Frc(value)
  %2890 = fadd fast float %2889, %335
  %2891 = fmul fast float %2856, %2884
  %2892 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2893 = fmul fast float %2892, 0x401921FB60000000
  %2894 = fadd fast float %2893, %2875
  %2895 = call float @dx.op.unary.f32(i32 13, float %2894)  ; Sin(value)
  %2896 = call float @dx.op.unary.f32(i32 12, float %2894)  ; Cos(value)
  %2897 = fsub fast float -0.000000e+00, %2895
  %2898 = fadd fast float %2849, -5.000000e-01
  %2899 = fadd fast float %2850, -5.000000e-01
  %2900 = fmul fast float %2867, %2898
  %2901 = fmul fast float %2869, %2899
  %2902 = fadd fast float %2900, 5.000000e-01
  %2903 = fadd fast float %2901, 5.000000e-01
  %2904 = fmul fast float %2878, %2902
  %2905 = fmul fast float %2881, %2903
  %2906 = fmul fast float %2896, %2904
  %2907 = call float @dx.op.tertiary.f32(i32 46, float %2897, float %2905, float %2906)  ; FMad(a,b,c)
  %2908 = fmul fast float %2895, %2904
  %2909 = call float @dx.op.tertiary.f32(i32 46, float %2896, float %2905, float %2908)  ; FMad(a,b,c)
  %2910 = fadd fast float %2887, %2907
  %2911 = fadd fast float %2890, %2909
  %2912 = icmp ugt i32 %2861, 1
  %2913 = icmp ugt i32 %2859, 33554431
  %2914 = or i1 %2913, %2912
  br i1 %2914, label %2915, label %2940

; <label>:2915                                    ; preds = %2842
  %2916 = add i32 %35, 276
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = lshr i32 %2918, 16
  %2920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2919)  ; LegacyF16ToF32(value)
  %2921 = fmul fast float %2883, %2920
  %2922 = call float @dx.op.unary.f32(i32 22, float %2921)  ; Frc(value)
  %2923 = mul nuw nsw i32 %2861, %2862
  %2924 = uitofp i32 %2923 to float
  %2925 = fmul fast float %2922, %2924
  %2926 = call float @dx.op.unary.f32(i32 27, float %2925)  ; Round_ni(value)
  %2927 = fptoui float %2926 to i32
  %2928 = urem i32 %2927, %2861
  %2929 = udiv i32 %2927, %2862
  %2930 = call float @dx.op.unary.f32(i32 22, float %2910)  ; Frc(value)
  %2931 = call float @dx.op.unary.f32(i32 22, float %2911)  ; Frc(value)
  %2932 = uitofp i32 %2928 to float
  %2933 = uitofp i32 %2929 to float
  %2934 = fadd fast float %2930, %2932
  %2935 = fadd fast float %2931, %2933
  %2936 = uitofp i32 %2861 to float
  %2937 = uitofp i32 %2862 to float
  %2938 = fdiv fast float %2934, %2936
  %2939 = fdiv fast float %2935, %2937
  br label %2940

; <label>:2940                                    ; preds = %2915, %2842
  %2941 = phi float [ %2938, %2915 ], [ %2910, %2842 ]
  %2942 = phi float [ %2939, %2915 ], [ %2911, %2842 ]
  %2943 = and i32 %2836, 16777216
  %2944 = icmp eq i32 %2943, 0
  br i1 %2944, label %3054, label %2945

; <label>:2945                                    ; preds = %2940
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.CBufRet.f32 %2946, 1
  %2949 = extractvalue %dx.types.CBufRet.f32 %2946, 2
  %2950 = fadd fast float %2947, %134
  %2951 = fadd fast float %2948, %135
  %2952 = fadd fast float %2949, %136
  %2953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2954 = extractvalue %dx.types.CBufRet.f32 %2953, 0
  %2955 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  %2956 = icmp eq i32 %36, 65535
  br i1 %2956, label %3051, label %2957

; <label>:2957                                    ; preds = %2945
  %2958 = lshr i32 %36, 1
  %2959 = shl i32 %2958, 2
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = and i32 %36, 1
  %2963 = icmp ne i32 %2962, 0
  %2964 = lshr i32 %2961, 16
  %2965 = and i32 %2961, 65535
  %2966 = select i1 %2963, i32 %2964, i32 %2965
  %2967 = icmp eq i32 %2966, 65535
  br i1 %2967, label %3047, label %2968

; <label>:2968                                    ; preds = %2957
  %2969 = mul nuw nsw i32 %2966, 40
  %2970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.f32 %2970, 0
  %2972 = extractvalue %dx.types.ResRet.f32 %2970, 1
  %2973 = extractvalue %dx.types.ResRet.f32 %2970, 2
  %2974 = add nuw nsw i32 %2969, 12
  %2975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.ResRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2979 = add nuw nsw i32 %2969, 24
  %2980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = add nuw nsw i32 %2969, 36
  %2985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.f32 %2985, 0
  %2987 = fsub fast float %2950, %2971
  %2988 = fsub fast float %2951, %2972
  %2989 = fsub fast float %2952, %2973
  %2990 = fmul fast float %2986, %2987
  %2991 = fmul fast float %2986, %2988
  %2992 = fmul fast float %2986, %2989
  %2993 = call float @dx.op.unary.f32(i32 27, float %2990)  ; Round_ni(value)
  %2994 = call float @dx.op.unary.f32(i32 27, float %2991)  ; Round_ni(value)
  %2995 = call float @dx.op.unary.f32(i32 27, float %2992)  ; Round_ni(value)
  %2996 = fadd fast float %2993, 5.000000e-01
  %2997 = fadd fast float %2994, 5.000000e-01
  %2998 = fadd fast float %2995, 5.000000e-01
  %2999 = fmul fast float %2996, %2976
  %3000 = fmul fast float %2997, %2977
  %3001 = fmul fast float %2998, %2978
  %3002 = shl i32 %36, 2
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = add i32 %3004, 0
  %3006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3007 = call float @dx.op.unary.f32(i32 22, float %2999)  ; Frc(value)
  %3008 = call float @dx.op.unary.f32(i32 22, float %3000)  ; Frc(value)
  %3009 = call float @dx.op.unary.f32(i32 22, float %3001)  ; Frc(value)
  %3010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3006, %dx.types.Handle %30, float %3007, float %3008, float %3009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3011 = extractvalue %dx.types.ResRet.f32 %3010, 0
  %3012 = extractvalue %dx.types.ResRet.f32 %3010, 1
  %3013 = extractvalue %dx.types.ResRet.f32 %3010, 2
  %3014 = fmul fast float %3011, 1.023000e+03
  %3015 = fmul fast float %3012, 1.023000e+03
  %3016 = fmul fast float %3013, 1.023000e+03
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fadd fast float %3015, 5.000000e-01
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = call float @dx.op.unary.f32(i32 27, float %3017)  ; Round_ni(value)
  %3021 = call float @dx.op.unary.f32(i32 27, float %3018)  ; Round_ni(value)
  %3022 = call float @dx.op.unary.f32(i32 27, float %3019)  ; Round_ni(value)
  %3023 = fsub fast float %2990, %2993
  %3024 = fsub fast float %2991, %2994
  %3025 = fsub fast float %2992, %2995
  %3026 = fmul fast float %3023, 7.500000e-01
  %3027 = fmul fast float %3024, 7.500000e-01
  %3028 = fmul fast float %3025, 7.500000e-01
  %3029 = fadd fast float %2993, 1.250000e-01
  %3030 = fadd fast float %3029, %3026
  %3031 = fadd fast float %3030, %3020
  %3032 = fadd fast float %2994, 1.250000e-01
  %3033 = fadd fast float %3032, %3027
  %3034 = fadd fast float %3033, %3021
  %3035 = fadd fast float %2995, 1.250000e-01
  %3036 = fadd fast float %3035, %3028
  %3037 = fadd fast float %3036, %3022
  %3038 = fmul fast float %3031, %2981
  %3039 = fmul fast float %3034, %2982
  %3040 = fmul fast float %3037, %2983
  %3041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = add i32 %3042, 0
  %3044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3044, %dx.types.Handle %28, float %3038, float %3039, float %3040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3046 = extractvalue %dx.types.ResRet.f32 %3045, 0
  br label %3047

; <label>:3047                                    ; preds = %2968, %2957
  %3048 = phi float [ %3046, %2968 ], [ -1.000000e+00, %2957 ]
  %3049 = fadd fast float %3048, %2955
  %3050 = call float @dx.op.unary.f32(i32 7, float %3049)  ; Saturate(value)
  br label %3051

; <label>:3051                                    ; preds = %3047, %2945
  %3052 = phi float [ %3050, %3047 ], [ %2955, %2945 ]
  %3053 = fmul fast float %3052, %399
  br label %3054

; <label>:3054                                    ; preds = %3051, %2940
  %3055 = phi float [ %3053, %3051 ], [ %399, %2940 ]
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = and i32 %3057, 256
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3106, label %3060

; <label>:3060                                    ; preds = %3054
  %3061 = add i32 %35, 436
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = add i32 %3063, 0
  %3065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3065, %dx.types.Handle %72, float %2941, float %2942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  %3068 = add i32 %35, 148
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = shl i32 %3070, 4
  %3072 = and i32 %3071, 32752
  %3073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3072)  ; LegacyF16ToF32(value)
  %3074 = lshr i32 %3070, 7
  %3075 = and i32 %3074, 32752
  %3076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3075)  ; LegacyF16ToF32(value)
  %3077 = fsub fast float 1.000000e+00, %3055
  %3078 = call float @dx.op.binary.f32(i32 35, float %3077, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3079 = bitcast float %3055 to i32
  %3080 = sitofp i32 %3079 to float
  %3081 = fadd fast float %3080, 0xC1CFBF8940000000
  %3082 = fmul fast float %3076, %3081
  %3083 = fadd fast float %3082, 0x41CFBF8940000000
  %3084 = fptosi float %3083 to i32
  %3085 = bitcast i32 %3084 to float
  %3086 = bitcast float %3078 to i32
  %3087 = sitofp i32 %3086 to float
  %3088 = fadd fast float %3087, 0xC1CFBF8940000000
  %3089 = fmul fast float %3088, %3076
  %3090 = fadd fast float %3089, 0x41CFBF8940000000
  %3091 = fptosi float %3090 to i32
  %3092 = bitcast i32 %3091 to float
  %3093 = fmul fast float %3085, %3073
  %3094 = fmul fast float %3092, %3073
  %3095 = fsub fast float %3078, %3093
  %3096 = fadd fast float %3094, %3078
  %3097 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3098 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3099 = fsub fast float %3067, %3097
  %3100 = fsub fast float %3098, %3097
  %3101 = bitcast float %3100 to i32
  %3102 = sub nsw i32 2129859010, %3101
  %3103 = bitcast i32 %3102 to float
  %3104 = fmul fast float %3103, %3099
  %3105 = call float @dx.op.unary.f32(i32 7, float %3104)  ; Saturate(value)
  br label %3106

; <label>:3106                                    ; preds = %3060, %3054
  %3107 = phi float [ %3105, %3060 ], [ %3055, %3054 ]
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 128
  %3111 = icmp eq i32 %3110, 0
  br i1 %3111, label %3128, label %3112

; <label>:3112                                    ; preds = %3106
  %3113 = add i32 %35, 420
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3113, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = add i32 %3115, 0
  %3117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3117, %dx.types.Handle %72, float %2941, float %2942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3119 = extractvalue %dx.types.ResRet.f32 %3118, 0
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = and i32 %3121, 524288
  %3123 = icmp ne i32 %3122, 0
  %3124 = fcmp fast ogt float %3119, 0x3FE0101020000000
  %3125 = select i1 %3124, float 1.000000e+00, float 0.000000e+00
  %3126 = select i1 %3123, float %3125, float %3119
  %3127 = fmul fast float %3126, %3107
  br label %3128

; <label>:3128                                    ; preds = %3112, %3106
  %3129 = phi float [ %3127, %3112 ], [ %3107, %3106 ]
  %3130 = fcmp fast ult float %3129, 0x3F70101020000000
  br i1 %3130, label %3760, label %3131

; <label>:3131                                    ; preds = %3128
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 16
  %3135 = icmp eq i32 %3134, 0
  br i1 %3135, label %3334, label %3136

; <label>:3136                                    ; preds = %3131
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = add i32 %35, 372
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = add i32 %3141, 0
  %3143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3143, %dx.types.Handle %71, float %2941, float %2942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3145 = extractvalue %dx.types.ResRet.f32 %3144, 0
  %3146 = extractvalue %dx.types.ResRet.f32 %3144, 1
  %3147 = extractvalue %dx.types.ResRet.f32 %3144, 2
  %3148 = extractvalue %dx.types.ResRet.f32 %3144, 3
  %3149 = and i32 %3138, 255
  %3150 = uitofp i32 %3149 to float
  %3151 = lshr i32 %3138, 8
  %3152 = and i32 %3151, 255
  %3153 = uitofp i32 %3152 to float
  %3154 = fmul fast float %3148, %3150
  %3155 = fadd fast float %3154, %3153
  %3156 = fmul fast float %3155, 0x3F70101000000000
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = and i32 %3158, 512
  %3160 = icmp eq i32 %3159, 0
  br i1 %3160, label %3169, label %3161

; <label>:3161                                    ; preds = %3136
  %3162 = add i32 %35, 452
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = add i32 %3164, 0
  %3166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3166, %dx.types.Handle %72, float %2941, float %2942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  br label %3169

; <label>:3169                                    ; preds = %3161, %3136
  %3170 = phi float [ %3168, %3161 ], [ 1.000000e+00, %3136 ]
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 33554432
  %3174 = icmp eq i32 %3173, 0
  br i1 %3174, label %3281, label %3175

; <label>:3175                                    ; preds = %3169
  %3176 = add i32 %35, 272
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3176, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 65535
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = lshr i32 %3178, 16
  %3182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3181)  ; LegacyF16ToF32(value)
  %3183 = add i32 %35, 276
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3183, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = and i32 %3185, 65535
  %3187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3186)  ; LegacyF16ToF32(value)
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = lshr i32 %3189, 24
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3191, 0x3F70101020000000
  %3193 = and i32 %3189, 255
  %3194 = uitofp i32 %3193 to float
  %3195 = fmul fast float %3194, 0x3F70101020000000
  %3196 = lshr i32 %3189, 8
  %3197 = and i32 %3196, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F70101020000000
  %3200 = lshr i32 %3189, 16
  %3201 = and i32 %3200, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = add i32 %35, 268
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = lshr i32 %3206, 24
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = and i32 %3206, 255
  %3211 = uitofp i32 %3210 to float
  %3212 = fmul fast float %3211, 0x3F70101020000000
  %3213 = lshr i32 %3206, 8
  %3214 = and i32 %3213, 255
  %3215 = uitofp i32 %3214 to float
  %3216 = fmul fast float %3215, 0x3F70101020000000
  %3217 = lshr i32 %3206, 16
  %3218 = and i32 %3217, 255
  %3219 = uitofp i32 %3218 to float
  %3220 = fmul fast float %3219, 0x3F70101020000000
  %3221 = bitcast float %3145 to i32
  %3222 = ashr i32 %3221, 1
  %3223 = sub nsw i32 1597463174, %3222
  %3224 = bitcast i32 %3223 to float
  %3225 = fmul fast float %3145, 5.000000e-01
  %3226 = fmul fast float %3224, %3224
  %3227 = fmul fast float %3226, %3225
  %3228 = fsub fast float 1.500000e+00, %3227
  %3229 = fmul fast float %3224, %3145
  %3230 = fmul fast float %3229, %3228
  %3231 = bitcast float %3146 to i32
  %3232 = ashr i32 %3231, 1
  %3233 = sub nsw i32 1597463174, %3232
  %3234 = bitcast i32 %3233 to float
  %3235 = fmul fast float %3146, 5.000000e-01
  %3236 = fmul fast float %3234, %3234
  %3237 = fmul fast float %3236, %3235
  %3238 = fsub fast float 1.500000e+00, %3237
  %3239 = fmul fast float %3234, %3146
  %3240 = fmul fast float %3239, %3238
  %3241 = bitcast float %3147 to i32
  %3242 = ashr i32 %3241, 1
  %3243 = sub nsw i32 1597463174, %3242
  %3244 = bitcast i32 %3243 to float
  %3245 = fmul fast float %3147, 5.000000e-01
  %3246 = fmul fast float %3244, %3244
  %3247 = fmul fast float %3246, %3245
  %3248 = fsub fast float 1.500000e+00, %3247
  %3249 = fmul fast float %3244, %3147
  %3250 = fmul fast float %3249, %3248
  %3251 = fsub fast float %3230, %3212
  %3252 = fsub fast float %3240, %3216
  %3253 = fsub fast float %3250, %3220
  %3254 = fmul fast float %3251, %3180
  %3255 = fmul fast float %3252, %3182
  %3256 = fmul fast float %3253, %3187
  %3257 = fadd fast float %3254, %3195
  %3258 = fadd fast float %3255, %3199
  %3259 = fadd fast float %3256, %3203
  %3260 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  %3261 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3262 = call float @dx.op.unary.f32(i32 7, float %3259)  ; Saturate(value)
  %3263 = fmul fast float %3260, %3260
  %3264 = fmul fast float %3261, %3261
  %3265 = fmul fast float %3262, %3262
  %3266 = fsub fast float %3263, %3145
  %3267 = fsub fast float %3264, %3146
  %3268 = fsub fast float %3265, %3147
  %3269 = fmul fast float %3266, %3170
  %3270 = fmul fast float %3267, %3170
  %3271 = fmul fast float %3268, %3170
  %3272 = fadd fast float %3269, %3145
  %3273 = fadd fast float %3270, %3146
  %3274 = fadd fast float %3271, %3147
  %3275 = fadd fast float %3192, %3156
  %3276 = fsub fast float %3275, %3209
  %3277 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  %3278 = fsub fast float %3277, %3156
  %3279 = fmul fast float %3278, %3170
  %3280 = fadd fast float %3279, %3156
  br label %3334

; <label>:3281                                    ; preds = %3169
  %3282 = and i32 %3172, 134217728
  %3283 = icmp eq i32 %3282, 0
  br i1 %3283, label %3318, label %3284

; <label>:3284                                    ; preds = %3281
  %3285 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3286 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3287 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3288 = fadd fast float %3285, -5.000000e-01
  %3289 = fadd fast float %3286, -5.000000e-01
  %3290 = fadd fast float %3287, -5.000000e-01
  %3291 = fmul fast float %3288, %3170
  %3292 = fmul fast float %3289, %3170
  %3293 = fmul fast float %3290, %3170
  %3294 = fadd fast float %3291, 5.000000e-01
  %3295 = fadd fast float %3292, 5.000000e-01
  %3296 = fadd fast float %3293, 5.000000e-01
  %3297 = call float @dx.op.unary.f32(i32 24, float %3145)  ; Sqrt(value)
  %3298 = call float @dx.op.unary.f32(i32 24, float %3146)  ; Sqrt(value)
  %3299 = call float @dx.op.unary.f32(i32 24, float %3147)  ; Sqrt(value)
  %3300 = fmul fast float %3294, 2.000000e+00
  %3301 = fsub fast float 1.000000e+00, %3300
  %3302 = fmul fast float %3301, %3297
  %3303 = fadd fast float %3302, %3300
  %3304 = fmul fast float %3303, %3297
  %3305 = fmul fast float %3295, 2.000000e+00
  %3306 = fsub fast float 1.000000e+00, %3305
  %3307 = fmul fast float %3306, %3298
  %3308 = fadd fast float %3307, %3305
  %3309 = fmul fast float %3308, %3298
  %3310 = fmul fast float %3296, 2.000000e+00
  %3311 = fsub fast float 1.000000e+00, %3310
  %3312 = fmul fast float %3311, %3299
  %3313 = fadd fast float %3312, %3310
  %3314 = fmul fast float %3313, %3299
  %3315 = fmul fast float %3304, %3304
  %3316 = fmul fast float %3309, %3309
  %3317 = fmul fast float %3314, %3314
  br label %3334

; <label>:3318                                    ; preds = %3281
  %3319 = fmul fast float %320, %320
  %3320 = fmul fast float %324, %324
  %3321 = fmul fast float %328, %328
  %3322 = fadd fast float %3319, -1.000000e+00
  %3323 = fadd fast float %3320, -1.000000e+00
  %3324 = fadd fast float %3321, -1.000000e+00
  %3325 = fmul fast float %3170, %3322
  %3326 = fmul fast float %3170, %3323
  %3327 = fmul fast float %3170, %3324
  %3328 = fadd fast float %3325, 1.000000e+00
  %3329 = fadd fast float %3326, 1.000000e+00
  %3330 = fadd fast float %3327, 1.000000e+00
  %3331 = fmul fast float %3328, %3145
  %3332 = fmul fast float %3329, %3146
  %3333 = fmul fast float %3330, %3147
  br label %3334

; <label>:3334                                    ; preds = %3318, %3284, %3175, %3131
  %3335 = phi float [ %3280, %3175 ], [ %3156, %3284 ], [ %3156, %3318 ], [ 0x3FA23C0BE0000000, %3131 ]
  %3336 = phi float [ %3272, %3175 ], [ %3315, %3284 ], [ %3331, %3318 ], [ 1.000000e+00, %3131 ]
  %3337 = phi float [ %3273, %3175 ], [ %3316, %3284 ], [ %3332, %3318 ], [ 1.000000e+00, %3131 ]
  %3338 = phi float [ %3274, %3175 ], [ %3317, %3284 ], [ %3333, %3318 ], [ 1.000000e+00, %3131 ]
  %3339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.i32 %3339, 1
  %3341 = and i32 %3340, 1
  %3342 = icmp ne i32 %3341, 0
  %3343 = add i32 %35, 356
  %3344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3343, i32 undef)  ; BufferLoad(srv,index,wot)
  %3345 = extractvalue %dx.types.ResRet.i32 %3344, 0
  %3346 = and i32 %3345, 32
  %3347 = icmp ne i32 %3346, 0
  %3348 = and i1 %3342, %3347
  %3349 = select i1 %3348, float 1.000000e+00, float %3336
  %3350 = select i1 %3348, float 0x3FD3333340000000, float %3337
  %3351 = select i1 %3348, float 0x3FD3333340000000, float %3338
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = and i32 %3353, 32
  %3355 = icmp eq i32 %3354, 0
  br i1 %3355, label %3428, label %3356

; <label>:3356                                    ; preds = %3334
  %3357 = add i32 %35, 140
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = add i32 %35, 388
  %3361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3360, i32 undef)  ; BufferLoad(srv,index,wot)
  %3362 = extractvalue %dx.types.ResRet.i32 %3361, 0
  %3363 = add i32 %3362, 0
  %3364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3364, %dx.types.Handle %71, float %2941, float %2942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3366 = extractvalue %dx.types.ResRet.f32 %3365, 0
  %3367 = extractvalue %dx.types.ResRet.f32 %3365, 1
  %3368 = extractvalue %dx.types.ResRet.f32 %3365, 2
  %3369 = extractvalue %dx.types.ResRet.f32 %3365, 3
  %3370 = and i32 %3359, 255
  %3371 = uitofp i32 %3370 to float
  %3372 = lshr i32 %3359, 8
  %3373 = and i32 %3372, 255
  %3374 = uitofp i32 %3373 to float
  %3375 = lshr i32 %3359, 16
  %3376 = and i32 %3375, 255
  %3377 = uitofp i32 %3376 to float
  %3378 = fmul fast float %3377, 0x3F70101000000000
  %3379 = fmul fast float %3366, %3371
  %3380 = fadd fast float %3379, %3374
  %3381 = fmul fast float %3380, 0x3F70101000000000
  %3382 = fadd fast float %3367, -5.000000e-01
  %3383 = fadd fast float %3369, -5.000000e-01
  %3384 = fmul fast float %3382, %3378
  %3385 = fmul fast float %3383, %3378
  %3386 = fadd fast float %3384, 5.000000e-01
  %3387 = fadd fast float %3385, 5.000000e-01
  %3388 = fmul fast float %3386, 2.000000e+00
  %3389 = fadd fast float %3388, -1.000000e+00
  %3390 = fmul fast float %3387, 2.000000e+00
  %3391 = fadd fast float %3390, -1.000000e+00
  %3392 = fadd fast float %3389, %3391
  %3393 = fmul fast float %3392, 5.000000e-01
  %3394 = fsub fast float %3389, %3391
  %3395 = fmul fast float %3394, 5.000000e-01
  %3396 = call float @dx.op.unary.f32(i32 6, float %3393)  ; FAbs(value)
  %3397 = fsub fast float 1.000000e+00, %3396
  %3398 = call float @dx.op.unary.f32(i32 6, float %3395)  ; FAbs(value)
  %3399 = fsub fast float %3397, %3398
  %3400 = call float @dx.op.dot3.f32(i32 55, float %3393, float %3395, float %3399, float %3393, float %3395, float %3399)  ; Dot3(ax,ay,az,bx,by,bz)
  %3401 = call float @dx.op.unary.f32(i32 25, float %3400)  ; Rsqrt(value)
  %3402 = fmul fast float %3393, %3401
  %3403 = fmul fast float %3395, %3401
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 67108864
  %3407 = icmp eq i32 %3406, 0
  br i1 %3407, label %3424, label %3408

; <label>:3408                                    ; preds = %3356
  %3409 = add i32 %35, 328
  %3410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3409, i32 undef)  ; BufferLoad(srv,index,wot)
  %3411 = extractvalue %dx.types.ResRet.i32 %3410, 0
  %3412 = and i32 %3411, 65535
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = and i32 %3415, 65535
  %3417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3416)  ; LegacyF16ToF32(value)
  %3418 = lshr i32 %3411, 16
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = fsub fast float %3381, %3419
  %3421 = fmul fast float %3420, %3413
  %3422 = fadd fast float %3421, %3417
  %3423 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  br label %3424

; <label>:3424                                    ; preds = %3408, %3356
  %3425 = phi float [ %3423, %3408 ], [ %3381, %3356 ]
  %3426 = call float @dx.op.dot2.f32(i32 54, float %3402, float %3403, float %2845, float %2846)  ; Dot2(ax,ay,bx,by)
  %3427 = call float @dx.op.dot2.f32(i32 54, float %3402, float %3403, float %2847, float %2848)  ; Dot2(ax,ay,bx,by)
  br label %3428

; <label>:3428                                    ; preds = %3424, %3334
  %3429 = phi float [ %3425, %3424 ], [ 0x3FD6666660000000, %3334 ]
  %3430 = phi float [ %3426, %3424 ], [ 0.000000e+00, %3334 ]
  %3431 = phi float [ %3427, %3424 ], [ 0.000000e+00, %3334 ]
  %3432 = phi float [ %3368, %3424 ], [ 1.000000e+00, %3334 ]
  %3433 = add i32 %35, 208
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = lshr i32 %3435, 22
  %3437 = shl nuw nsw i32 %3436, 5
  %3438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3437)  ; LegacyF16ToF32(value)
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = and i32 %3440, 64
  %3442 = icmp eq i32 %3441, 0
  br i1 %3442, label %3476, label %3443

; <label>:3443                                    ; preds = %3428
  %3444 = add i32 %35, 404
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = add i32 %3446, 0
  %3448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = and i32 %3450, 131072
  %3452 = icmp eq i32 %3451, 0
  %3453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3448, %dx.types.Handle %71, float %2941, float %2942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3454 = extractvalue %dx.types.ResRet.f32 %3453, 0
  %3455 = extractvalue %dx.types.ResRet.f32 %3453, 1
  %3456 = extractvalue %dx.types.ResRet.f32 %3453, 2
  %3457 = fmul fast float %3454, %308
  %3458 = fmul fast float %3455, %311
  %3459 = fmul fast float %3456, %314
  br i1 %3452, label %3466, label %3460

; <label>:3460                                    ; preds = %3443
  %3461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3462 = extractvalue %dx.types.CBufRet.f32 %3461, 0
  %3463 = fmul fast float %3462, %3457
  %3464 = fmul fast float %3462, %3458
  %3465 = fmul fast float %3462, %3459
  br label %3466

; <label>:3466                                    ; preds = %3460, %3443
  %3467 = phi float [ %3463, %3460 ], [ %3457, %3443 ]
  %3468 = phi float [ %3464, %3460 ], [ %3458, %3443 ]
  %3469 = phi float [ %3465, %3460 ], [ %3459, %3443 ]
  %3470 = fmul fast float %3467, %3438
  %3471 = select i1 %176, float %3470, float %3467
  %3472 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3468, float %3469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3473 = select i1 %176, float 0.000000e+00, float %3467
  %3474 = select i1 %176, float %3472, float %3468
  %3475 = select i1 %176, float 0.000000e+00, float %3469
  br label %3476

; <label>:3476                                    ; preds = %3466, %3428
  %3477 = phi float [ %3473, %3466 ], [ 0.000000e+00, %3428 ]
  %3478 = phi float [ %3474, %3466 ], [ 0.000000e+00, %3428 ]
  %3479 = phi float [ %3475, %3466 ], [ 0.000000e+00, %3428 ]
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = and i32 %3481, 10240
  %3483 = icmp eq i32 %3482, 0
  br i1 %3483, label %3528, label %3484

; <label>:3484                                    ; preds = %3476
  %3485 = add i32 %35, 468
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = add i32 %3487, 0
  %3489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3489, %dx.types.Handle %72, float %2941, float %2942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3491 = extractvalue %dx.types.ResRet.f32 %3490, 1
  %3492 = extractvalue %dx.types.ResRet.f32 %3490, 3
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = and i32 %3494, 1048576
  %3496 = icmp ne i32 %3495, 0
  %3497 = and i32 %3494, 8192
  %3498 = icmp eq i32 %3497, 0
  br i1 %3498, label %3514, label %3499

; <label>:3499                                    ; preds = %3484
  %3500 = extractvalue %dx.types.ResRet.f32 %3490, 2
  %3501 = select i1 %3496, float %3500, float %3491
  %3502 = extractvalue %dx.types.ResRet.f32 %3490, 0
  %3503 = select i1 %3496, float %3502, float %3491
  %3504 = add i32 %35, 144
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3504, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = lshr i32 %3506, 16
  %3508 = and i32 %3507, 255
  %3509 = uitofp i32 %3508 to float
  %3510 = fmul fast float %3509, 0x3F80101020000000
  %3511 = fmul fast float %3510, %3503
  %3512 = fmul fast float %3510, %3491
  %3513 = fmul fast float %3510, %3501
  br label %3514

; <label>:3514                                    ; preds = %3499, %3484
  %3515 = phi float [ %3511, %3499 ], [ 0.000000e+00, %3484 ]
  %3516 = phi float [ %3512, %3499 ], [ 0.000000e+00, %3484 ]
  %3517 = phi float [ %3513, %3499 ], [ 0.000000e+00, %3484 ]
  %3518 = and i32 %3494, 2048
  %3519 = icmp eq i32 %3518, 0
  br i1 %3519, label %3528, label %3520

; <label>:3520                                    ; preds = %3514
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3433, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = shl i32 %3522, 4
  %3524 = and i32 %3523, 32752
  %3525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3524)  ; LegacyF16ToF32(value)
  %3526 = fmul fast float %3525, %3492
  %3527 = call float @dx.op.binary.f32(i32 35, float %3526, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3528

; <label>:3528                                    ; preds = %3520, %3514, %3476
  %3529 = phi float [ %3515, %3520 ], [ %3515, %3514 ], [ 0.000000e+00, %3476 ]
  %3530 = phi float [ %3516, %3520 ], [ %3516, %3514 ], [ 0.000000e+00, %3476 ]
  %3531 = phi float [ %3517, %3520 ], [ %3517, %3514 ], [ 0.000000e+00, %3476 ]
  %3532 = phi float [ %3527, %3520 ], [ 0x3F70101020000000, %3514 ], [ 0x3F70101020000000, %3476 ]
  %3533 = add i32 %35, 144
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = and i32 %3535, 255
  %3537 = uitofp i32 %3536 to float
  %3538 = lshr i32 %3535, 8
  %3539 = and i32 %3538, 255
  %3540 = uitofp i32 %3539 to float
  %3541 = call float @dx.op.dot3.f32(i32 55, float %3349, float %3350, float %3351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3542 = fmul fast float %3540, %3541
  %3543 = fadd fast float %3542, %3537
  %3544 = fmul fast float %3543, 0x3F70101020000000
  %3545 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  br i1 %2833, label %3546, label %3554

; <label>:3546                                    ; preds = %3528
  %3547 = fsub fast float 1.000000e+00, %3129
  %3548 = fmul fast float %3547, %2818
  %3549 = fmul fast float %3547, %2819
  %3550 = fmul fast float %3547, %2820
  %3551 = fmul fast float %3547, %2821
  %3552 = fmul fast float %3547, %2822
  %3553 = fmul fast float %3547, %2823
  br label %3554

; <label>:3554                                    ; preds = %3546, %3528
  %3555 = phi float [ %3548, %3546 ], [ %2818, %3528 ]
  %3556 = phi float [ %3549, %3546 ], [ %2819, %3528 ]
  %3557 = phi float [ %3550, %3546 ], [ %2820, %3528 ]
  %3558 = phi float [ %3551, %3546 ], [ %2821, %3528 ]
  %3559 = phi float [ %3552, %3546 ], [ %2822, %3528 ]
  %3560 = phi float [ %3553, %3546 ], [ %2823, %3528 ]
  %3561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.i32 %3561, 0
  %3563 = and i32 %3562, 3
  %3564 = icmp eq i32 %3563, 3
  br i1 %3564, label %3643, label %3565

; <label>:3565                                    ; preds = %3554
  %3566 = and i32 %3562, 16
  %3567 = icmp ne i32 %3566, 0
  %3568 = select i1 %3567, float %3129, float 0.000000e+00
  %3569 = icmp eq i32 %3563, 0
  br i1 %3569, label %3570, label %3598

; <label>:3570                                    ; preds = %3565
  %3571 = and i32 %3562, 64
  %3572 = icmp ne i32 %3571, 0
  %3573 = select i1 %3572, float %3129, float 0.000000e+00
  %3574 = fsub fast float %3349, %3555
  %3575 = fsub fast float %3350, %3556
  %3576 = fsub fast float %3351, %3557
  %3577 = fmul fast float %3568, %3574
  %3578 = fmul fast float %3568, %3575
  %3579 = fmul fast float %3568, %3576
  %3580 = fadd fast float %3577, %3555
  %3581 = fadd fast float %3578, %3556
  %3582 = fadd fast float %3579, %3557
  %3583 = fsub fast float %3335, %2827
  %3584 = fmul fast float %3568, %3583
  %3585 = fadd fast float %3584, %2827
  %3586 = fsub fast float %3477, %3558
  %3587 = fsub fast float %3478, %3559
  %3588 = fsub fast float %3479, %3560
  %3589 = fmul fast float %3573, %3586
  %3590 = fmul fast float %3573, %3587
  %3591 = fmul fast float %3573, %3588
  %3592 = fadd fast float %3589, %3558
  %3593 = fadd fast float %3590, %3559
  %3594 = fadd fast float %3591, %3560
  %3595 = fsub fast float %3545, %2831
  %3596 = fmul fast float %3568, %3595
  %3597 = fadd fast float %3596, %2831
  br label %3643

; <label>:3598                                    ; preds = %3565
  %3599 = icmp eq i32 %3563, 1
  br i1 %3599, label %3600, label %3613

; <label>:3600                                    ; preds = %3598
  %3601 = fadd fast float %3349, -1.000000e+00
  %3602 = fadd fast float %3350, -1.000000e+00
  %3603 = fadd fast float %3351, -1.000000e+00
  %3604 = fmul fast float %3568, %3601
  %3605 = fmul fast float %3568, %3602
  %3606 = fmul fast float %3568, %3603
  %3607 = fadd fast float %3604, 1.000000e+00
  %3608 = fadd fast float %3605, 1.000000e+00
  %3609 = fadd fast float %3606, 1.000000e+00
  %3610 = fmul fast float %3607, %3555
  %3611 = fmul fast float %3608, %3556
  %3612 = fmul fast float %3609, %3557
  br label %3643

; <label>:3613                                    ; preds = %3598
  %3614 = icmp eq i32 %3563, 2
  br i1 %3614, label %3615, label %3643

; <label>:3615                                    ; preds = %3613
  %3616 = call float @dx.op.unary.f32(i32 24, float %3349)  ; Sqrt(value)
  %3617 = call float @dx.op.unary.f32(i32 24, float %3350)  ; Sqrt(value)
  %3618 = call float @dx.op.unary.f32(i32 24, float %3351)  ; Sqrt(value)
  %3619 = fadd fast float %3616, -5.000000e-01
  %3620 = fadd fast float %3617, -5.000000e-01
  %3621 = fadd fast float %3618, -5.000000e-01
  %3622 = fmul fast float %3619, %3568
  %3623 = fmul fast float %3620, %3568
  %3624 = fmul fast float %3621, %3568
  %3625 = fadd fast float %3622, 5.000000e-01
  %3626 = fadd fast float %3623, 5.000000e-01
  %3627 = fadd fast float %3624, 5.000000e-01
  %3628 = fmul fast float %3625, 2.000000e+00
  %3629 = fsub fast float 1.000000e+00, %3628
  %3630 = fmul fast float %3629, %3555
  %3631 = fadd fast float %3630, %3628
  %3632 = fmul fast float %3631, %3555
  %3633 = fmul fast float %3626, 2.000000e+00
  %3634 = fsub fast float 1.000000e+00, %3633
  %3635 = fmul fast float %3634, %3556
  %3636 = fadd fast float %3635, %3633
  %3637 = fmul fast float %3636, %3556
  %3638 = fmul fast float %3627, 2.000000e+00
  %3639 = fsub fast float 1.000000e+00, %3638
  %3640 = fmul fast float %3639, %3557
  %3641 = fadd fast float %3640, %3638
  %3642 = fmul fast float %3641, %3557
  br label %3643

; <label>:3643                                    ; preds = %3615, %3613, %3600, %3570, %3554
  %3644 = phi float [ %3555, %3554 ], [ %3632, %3615 ], [ %3555, %3613 ], [ %3610, %3600 ], [ %3580, %3570 ]
  %3645 = phi float [ %3556, %3554 ], [ %3637, %3615 ], [ %3556, %3613 ], [ %3611, %3600 ], [ %3581, %3570 ]
  %3646 = phi float [ %3557, %3554 ], [ %3642, %3615 ], [ %3557, %3613 ], [ %3612, %3600 ], [ %3582, %3570 ]
  %3647 = phi float [ %3558, %3554 ], [ %3558, %3615 ], [ %3558, %3613 ], [ %3558, %3600 ], [ %3592, %3570 ]
  %3648 = phi float [ %3559, %3554 ], [ %3559, %3615 ], [ %3559, %3613 ], [ %3559, %3600 ], [ %3593, %3570 ]
  %3649 = phi float [ %3560, %3554 ], [ %3560, %3615 ], [ %3560, %3613 ], [ %3560, %3600 ], [ %3594, %3570 ]
  %3650 = phi float [ %2827, %3554 ], [ %2827, %3615 ], [ %2827, %3613 ], [ %2827, %3600 ], [ %3585, %3570 ]
  %3651 = phi float [ %2831, %3554 ], [ %2831, %3615 ], [ %2831, %3613 ], [ %2831, %3600 ], [ %3597, %3570 ]
  %3652 = and i32 %3562, 12
  %3653 = icmp eq i32 %3652, 12
  br i1 %3653, label %3760, label %3654

; <label>:3654                                    ; preds = %3643
  %3655 = and i32 %3562, 2097184
  %3656 = icmp eq i32 %3655, 2097184
  %3657 = select i1 %3656, float %3129, float 0.000000e+00
  %3658 = and i32 %3562, 4194336
  %3659 = icmp eq i32 %3658, 4194336
  %3660 = select i1 %3659, float %3129, float 0.000000e+00
  %3661 = and i32 %3562, 8388640
  %3662 = icmp eq i32 %3661, 8388640
  %3663 = select i1 %3662, float %3129, float 0.000000e+00
  %3664 = and i32 %3562, 2048
  %3665 = icmp ne i32 %3664, 0
  %3666 = select i1 %3665, float %3129, float 0.000000e+00
  %3667 = and i32 %3562, 8192
  %3668 = icmp ne i32 %3667, 0
  %3669 = select i1 %3668, float %3129, float 0.000000e+00
  %3670 = icmp eq i32 %3652, 0
  br i1 %3670, label %3671, label %3696

; <label>:3671                                    ; preds = %3654
  %3672 = fsub fast float %3430, %2816
  %3673 = fsub fast float %3431, %2817
  %3674 = fmul fast float %3657, %3672
  %3675 = fmul fast float %3657, %3673
  %3676 = fadd fast float %3674, %2816
  %3677 = fadd fast float %3675, %2817
  %3678 = fsub fast float %3432, %2829
  %3679 = fmul fast float %3660, %3678
  %3680 = fadd fast float %3679, %2829
  %3681 = fsub fast float %3429, %2828
  %3682 = fmul fast float %3663, %3681
  %3683 = fadd fast float %3682, %2828
  %3684 = fsub fast float %3532, %2830
  %3685 = fmul fast float %3666, %3684
  %3686 = fadd fast float %3685, %2830
  %3687 = fsub fast float %3529, %2824
  %3688 = fsub fast float %3530, %2825
  %3689 = fsub fast float %3531, %2826
  %3690 = fmul fast float %3669, %3687
  %3691 = fmul fast float %3669, %3688
  %3692 = fmul fast float %3669, %3689
  %3693 = fadd fast float %3690, %2824
  %3694 = fadd fast float %3691, %2825
  %3695 = fadd fast float %3692, %2826
  br label %3760

; <label>:3696                                    ; preds = %3654
  %3697 = icmp eq i32 %3652, 4
  br i1 %3697, label %3698, label %3738

; <label>:3698                                    ; preds = %3696
  %3699 = fmul fast float %3657, %3430
  %3700 = fmul fast float %3657, %3431
  %3701 = fadd fast float %3699, %2816
  %3702 = fadd fast float %3700, %2817
  %3703 = call float @dx.op.binary.f32(i32 36, float %2829, float %3432)  ; FMin(a,b)
  %3704 = fsub fast float %3703, %2829
  %3705 = fmul fast float %3704, %3660
  %3706 = fadd fast float %3705, %2829
  %3707 = fadd fast float %3429, %2828
  %3708 = fmul fast float %3707, 0x3FF337FAE0000000
  %3709 = fmul fast float %2828, %2828
  %3710 = fmul fast float %3429, %3429
  %3711 = fadd fast float %3710, %3709
  %3712 = fmul fast float %3711, 0x3FE5152B00000000
  %3713 = fmul fast float %2828, 0xBFCC1F85E0000000
  %3714 = fmul fast float %3713, %3429
  %3715 = fadd fast float %3714, 0xBFE1363700000000
  %3716 = fadd fast float %3715, %3708
  %3717 = fsub fast float %3716, %3712
  %3718 = fmul fast float %3707, 0x3FBA6F0D00000000
  %3719 = fmul fast float %3711, 0x3FD0432880000000
  %3720 = fmul fast float %2828, 0xBFEF110800000000
  %3721 = fmul fast float %3720, %3429
  %3722 = fadd fast float %3721, 1.000000e+00
  %3723 = fsub fast float %3722, %3718
  %3724 = fadd fast float %3723, %3719
  %3725 = fdiv fast float %3717, %3724
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fsub fast float %3726, %2828
  %3728 = fmul fast float %3727, %3663
  %3729 = fadd fast float %3728, %2828
  %3730 = fmul fast float %3666, %3532
  %3731 = fadd fast float %3730, %2830
  %3732 = fmul fast float %3669, %3529
  %3733 = fmul fast float %3669, %3530
  %3734 = fmul fast float %3669, %3531
  %3735 = fadd fast float %3732, %2824
  %3736 = fadd fast float %3733, %2825
  %3737 = fadd fast float %3734, %2826
  br label %3760

; <label>:3738                                    ; preds = %3696
  %3739 = icmp eq i32 %3652, 8
  br i1 %3739, label %3740, label %3760

; <label>:3740                                    ; preds = %3738
  %3741 = fmul fast float %3657, %3430
  %3742 = fmul fast float %3657, %3431
  %3743 = fadd fast float %3741, %2816
  %3744 = fadd fast float %3742, %2817
  %3745 = call float @dx.op.binary.f32(i32 36, float %2829, float %3432)  ; FMin(a,b)
  %3746 = fsub fast float %3745, %2829
  %3747 = fmul fast float %3746, %3660
  %3748 = fadd fast float %3747, %2829
  %3749 = fsub fast float %3429, %2828
  %3750 = fmul fast float %3663, %3749
  %3751 = fadd fast float %3750, %2828
  %3752 = fmul fast float %3666, %3532
  %3753 = fadd fast float %3752, %2830
  %3754 = fmul fast float %3669, %3529
  %3755 = fmul fast float %3669, %3530
  %3756 = fmul fast float %3669, %3531
  %3757 = fadd fast float %3754, %2824
  %3758 = fadd fast float %3755, %2825
  %3759 = fadd fast float %3756, %2826
  br label %3760

; <label>:3760                                    ; preds = %3740, %3738, %3698, %3671, %3643, %3128, %2832, %2815
  %3761 = phi float [ %2816, %3643 ], [ %2816, %3128 ], [ %2816, %2815 ], [ %2816, %2832 ], [ %3676, %3671 ], [ %3701, %3698 ], [ %2816, %3738 ], [ %3743, %3740 ]
  %3762 = phi float [ %2817, %3643 ], [ %2817, %3128 ], [ %2817, %2815 ], [ %2817, %2832 ], [ %3677, %3671 ], [ %3702, %3698 ], [ %2817, %3738 ], [ %3744, %3740 ]
  %3763 = phi float [ %3644, %3643 ], [ %2818, %3128 ], [ %2818, %2815 ], [ %2818, %2832 ], [ %3644, %3671 ], [ %3644, %3698 ], [ %3644, %3738 ], [ %3644, %3740 ]
  %3764 = phi float [ %3645, %3643 ], [ %2819, %3128 ], [ %2819, %2815 ], [ %2819, %2832 ], [ %3645, %3671 ], [ %3645, %3698 ], [ %3645, %3738 ], [ %3645, %3740 ]
  %3765 = phi float [ %3646, %3643 ], [ %2820, %3128 ], [ %2820, %2815 ], [ %2820, %2832 ], [ %3646, %3671 ], [ %3646, %3698 ], [ %3646, %3738 ], [ %3646, %3740 ]
  %3766 = phi float [ %3647, %3643 ], [ %2821, %3128 ], [ %2821, %2815 ], [ %2821, %2832 ], [ %3647, %3671 ], [ %3647, %3698 ], [ %3647, %3738 ], [ %3647, %3740 ]
  %3767 = phi float [ %3648, %3643 ], [ %2822, %3128 ], [ %2822, %2815 ], [ %2822, %2832 ], [ %3648, %3671 ], [ %3648, %3698 ], [ %3648, %3738 ], [ %3648, %3740 ]
  %3768 = phi float [ %3649, %3643 ], [ %2823, %3128 ], [ %2823, %2815 ], [ %2823, %2832 ], [ %3649, %3671 ], [ %3649, %3698 ], [ %3649, %3738 ], [ %3649, %3740 ]
  %3769 = phi float [ %2824, %3643 ], [ %2824, %3128 ], [ %2824, %2815 ], [ %2824, %2832 ], [ %3693, %3671 ], [ %3735, %3698 ], [ %2824, %3738 ], [ %3757, %3740 ]
  %3770 = phi float [ %2825, %3643 ], [ %2825, %3128 ], [ %2825, %2815 ], [ %2825, %2832 ], [ %3694, %3671 ], [ %3736, %3698 ], [ %2825, %3738 ], [ %3758, %3740 ]
  %3771 = phi float [ %2826, %3643 ], [ %2826, %3128 ], [ %2826, %2815 ], [ %2826, %2832 ], [ %3695, %3671 ], [ %3737, %3698 ], [ %2826, %3738 ], [ %3759, %3740 ]
  %3772 = phi float [ %3650, %3643 ], [ %2827, %3128 ], [ %2827, %2815 ], [ %2827, %2832 ], [ %3650, %3671 ], [ %3650, %3698 ], [ %3650, %3738 ], [ %3650, %3740 ]
  %3773 = phi float [ %2828, %3643 ], [ %2828, %3128 ], [ %2828, %2815 ], [ %2828, %2832 ], [ %3683, %3671 ], [ %3729, %3698 ], [ %2828, %3738 ], [ %3751, %3740 ]
  %3774 = phi float [ %2829, %3643 ], [ %2829, %3128 ], [ %2829, %2815 ], [ %2829, %2832 ], [ %3680, %3671 ], [ %3706, %3698 ], [ %2829, %3738 ], [ %3748, %3740 ]
  %3775 = phi float [ %2830, %3643 ], [ %2830, %3128 ], [ %2830, %2815 ], [ %2830, %2832 ], [ %3686, %3671 ], [ %3731, %3698 ], [ %2830, %3738 ], [ %3753, %3740 ]
  %3776 = phi float [ %3651, %3643 ], [ %2831, %3128 ], [ %2831, %2815 ], [ %2831, %2832 ], [ %3651, %3671 ], [ %3651, %3698 ], [ %3651, %3738 ], [ %3651, %3740 ]
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 0
  %3779 = call float @dx.op.dot2.f32(i32 54, float %3761, float %3762, float %3761, float %3762)  ; Dot2(ax,ay,bx,by)
  %3780 = fmul fast float %3779, 0x3FE3333340000000
  %3781 = fsub fast float 1.000000e+00, %3780
  %3782 = call float @dx.op.dot3.f32(i32 55, float %3761, float %3762, float %3781, float %3761, float %3762, float %3781)  ; Dot3(ax,ay,az,bx,by,bz)
  %3783 = call float @dx.op.unary.f32(i32 25, float %3782)  ; Rsqrt(value)
  %3784 = fmul fast float %3783, %3761
  %3785 = fmul fast float %3783, %3762
  %3786 = fmul fast float %3781, %3783
  %3787 = fmul fast float %3786, %84
  %3788 = fmul fast float %3786, %86
  %3789 = fmul fast float %3786, %88
  %3790 = fmul fast float %3784, %56
  %3791 = fmul fast float %3784, %57
  %3792 = fmul fast float %3784, %58
  %3793 = fadd fast float %3787, %3790
  %3794 = fadd fast float %3788, %3791
  %3795 = fadd fast float %3789, %3792
  %3796 = fmul fast float %98, %3785
  %3797 = fmul fast float %99, %3785
  %3798 = fmul fast float %100, %3785
  %3799 = fadd fast float %3793, %3796
  %3800 = fadd fast float %3794, %3797
  %3801 = fadd fast float %3795, %3798
  %3802 = call float @dx.op.dot3.f32(i32 55, float %3799, float %3800, float %3801, float %3799, float %3800, float %3801)  ; Dot3(ax,ay,az,bx,by,bz)
  %3803 = call float @dx.op.unary.f32(i32 25, float %3802)  ; Rsqrt(value)
  %3804 = fmul fast float %3799, %3803
  %3805 = fmul fast float %3800, %3803
  %3806 = fmul fast float %3801, %3803
  %3807 = and i32 %37, 1
  %3808 = icmp eq i32 %3807, 0
  br i1 %3808, label %3809, label %4370

; <label>:3809                                    ; preds = %3760
  %3810 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3811 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3812 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3813 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3814 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3815 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3816 = fadd fast float %3810, %134
  %3817 = fadd fast float %3811, %135
  %3818 = fadd fast float %3812, %136
  %3819 = fadd fast float %3813, %134
  %3820 = fadd fast float %3814, %135
  %3821 = fadd fast float %3815, %136
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.CBufRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.CBufRet.f32 %3822, 2
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 2
  %3828 = extractvalue %dx.types.CBufRet.f32 %3826, 3
  %3829 = fmul fast float %3823, %75
  %3830 = fmul fast float %3829, %3827
  %3831 = fmul fast float %3824, %76
  %3832 = fmul fast float %3831, %3828
  %3833 = fptoui float %3830 to i32
  %3834 = fptoui float %3832 to i32
  %3835 = fadd fast float %3823, -1.000000e+00
  %3836 = fadd fast float %3824, -1.000000e+00
  %3837 = fptoui float %3835 to i32
  %3838 = fptoui float %3836 to i32
  %3839 = call i32 @dx.op.binary.i32(i32 40, i32 %3833, i32 %3837)  ; UMin(a,b)
  %3840 = call i32 @dx.op.binary.i32(i32 40, i32 %3834, i32 %3838)  ; UMin(a,b)
  %3841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3842 = extractvalue %dx.types.CBufRet.f32 %3841, 2
  %3843 = extractvalue %dx.types.CBufRet.f32 %3841, 3
  %3844 = fmul fast float %3842, %70
  %3845 = fsub fast float %3844, %3843
  %3846 = fadd fast float %3825, -1.000000e+00
  %3847 = call float @dx.op.binary.f32(i32 36, float %3845, float %3846)  ; FMin(a,b)
  %3848 = fptoui float %3847 to i32
  %3849 = fptoui float %3823 to i32
  %3850 = fptoui float %3824 to i32
  %3851 = mul i32 %3848, %3850
  %3852 = add i32 %3851, %3840
  %3853 = mul i32 %3852, %3849
  %3854 = add i32 %3853, %3839
  %3855 = shl i32 %3854, 2
  %3856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3857 = extractvalue %dx.types.ResRet.i32 %3856, 0
  %3858 = and i32 %3857, 1023
  %3859 = lshr i32 %3857, 10
  %3860 = icmp eq i32 %3858, 0
  br i1 %3860, label %4336, label %3861

; <label>:3861                                    ; preds = %3809
  %3862 = and i32 %3857, 1023
  br label %3863

; <label>:3863                                    ; preds = %3992, %3861
  %3864 = phi i32 [ %3942, %3992 ], [ 0, %3861 ]
  %3865 = phi float [ %3993, %3992 ], [ 0.000000e+00, %3861 ]
  %3866 = phi float [ %3994, %3992 ], [ %3778, %3861 ]
  %3867 = phi float [ %3995, %3992 ], [ %3776, %3861 ]
  %3868 = phi float [ %3996, %3992 ], [ 0.000000e+00, %3861 ]
  %3869 = phi float [ %3997, %3992 ], [ 0.000000e+00, %3861 ]
  %3870 = phi float [ %3998, %3992 ], [ %3769, %3861 ]
  %3871 = phi float [ %3999, %3992 ], [ %3770, %3861 ]
  %3872 = phi float [ %4000, %3992 ], [ %3771, %3861 ]
  %3873 = phi float [ %4001, %3992 ], [ %3766, %3861 ]
  %3874 = phi float [ %4002, %3992 ], [ %3767, %3861 ]
  %3875 = phi float [ %4003, %3992 ], [ %3768, %3861 ]
  %3876 = phi float [ %4004, %3992 ], [ %3804, %3861 ]
  %3877 = phi float [ %4005, %3992 ], [ %3805, %3861 ]
  %3878 = phi float [ %4006, %3992 ], [ %3806, %3861 ]
  %3879 = phi float [ %4007, %3992 ], [ %3774, %3861 ]
  %3880 = phi float [ %4008, %3992 ], [ %3773, %3861 ]
  %3881 = phi float [ %4009, %3992 ], [ 0.000000e+00, %3861 ]
  %3882 = phi float [ %4010, %3992 ], [ %3772, %3861 ]
  %3883 = phi float [ %4011, %3992 ], [ %3763, %3861 ]
  %3884 = phi float [ %4012, %3992 ], [ %3764, %3861 ]
  %3885 = phi float [ %4013, %3992 ], [ %3765, %3861 ]
  %3886 = add nuw nsw i32 %3864, %3859
  %3887 = shl i32 %3886, 2
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = shl i32 %3889, 8
  %3891 = or i32 %3890, 48
  %3892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.f32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.f32 %3892, 1
  %3895 = extractvalue %dx.types.ResRet.f32 %3892, 2
  %3896 = extractvalue %dx.types.ResRet.f32 %3892, 3
  %3897 = or i32 %3890, 64
  %3898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.i32 %3898, 0
  %3900 = extractvalue %dx.types.ResRet.i32 %3898, 1
  %3901 = or i32 %3890, 80
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3905 = or i32 %3890, 96
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = extractvalue %dx.types.ResRet.f32 %3906, 3
  %3911 = or i32 %3890, 112
  %3912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3914 = or i32 %3890, 128
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = extractvalue %dx.types.ResRet.f32 %3915, 3
  %3920 = or i32 %3890, 144
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = or i32 %3890, 160
  %3927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3927, 3
  %3932 = or i32 %3890, 192
  %3933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.i32 %3933, 0
  %3935 = or i32 %3890, 208
  %3936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3935, i32 undef)  ; BufferLoad(srv,index,wot)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = or i32 %3890, 248
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.ResRet.f32 %3939, 1
  %3942 = add nuw nsw i32 %3864, 1
  %3943 = bitcast float %3896 to i32
  %3944 = and i32 %3943, 512
  %3945 = icmp eq i32 %3944, 0
  %3946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.ResRet.f32 %3946, 1
  %3949 = extractvalue %dx.types.ResRet.f32 %3946, 2
  %3950 = extractvalue %dx.types.ResRet.f32 %3946, 3
  %3951 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3952 = or i32 %3890, 16
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = call float @dx.op.dot4.f32(i32 56, float %3954, float %3955, float %3956, float %3957, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3959 = or i32 %3890, 32
  %3960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = extractvalue %dx.types.ResRet.f32 %3960, 1
  %3963 = extractvalue %dx.types.ResRet.f32 %3960, 2
  %3964 = extractvalue %dx.types.ResRet.f32 %3960, 3
  %3965 = call float @dx.op.dot4.f32(i32 56, float %3961, float %3962, float %3963, float %3964, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3966 = call float @dx.op.unary.f32(i32 27, float %3951)  ; Round_ni(value)
  %3967 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3968 = call float @dx.op.unary.f32(i32 27, float %3958)  ; Round_ni(value)
  %3969 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3970 = call float @dx.op.unary.f32(i32 6, float %3965)  ; FAbs(value)
  %3971 = call float @dx.op.unary.f32(i32 27, float %3970)  ; Round_ni(value)
  %3972 = fadd fast float %3969, %3967
  %3973 = fadd fast float %3972, %3971
  %3974 = fcmp fast oeq float %3973, 0.000000e+00
  %3975 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %3816, float %3817, float %3818, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3976 = call float @dx.op.dot4.f32(i32 56, float %3954, float %3955, float %3956, float %3957, float %3816, float %3817, float %3818, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3977 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %3819, float %3820, float %3821, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3978 = call float @dx.op.dot4.f32(i32 56, float %3954, float %3955, float %3956, float %3957, float %3819, float %3820, float %3821, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3979 = fsub fast float %3975, %3951
  %3980 = fsub fast float %3977, %3951
  %3981 = fsub fast float %3976, %3958
  %3982 = fsub fast float %3978, %3958
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %3986 = fadd fast float %3985, %3983
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3989 = fcmp fast ogt float %3987, %3988
  %3990 = and i1 %3974, %3989
  %3991 = and i1 %3945, %3990
  br i1 %3991, label %4015, label %3992

; <label>:3992                                    ; preds = %4322, %4096, %4015, %3863
  %3993 = phi float [ %3865, %4015 ], [ %4099, %4096 ], [ %4099, %4322 ], [ %3865, %3863 ]
  %3994 = phi float [ %3866, %4015 ], [ %3866, %4096 ], [ %4298, %4322 ], [ %3866, %3863 ]
  %3995 = phi float [ %3867, %4015 ], [ %3867, %4096 ], [ %4296, %4322 ], [ %3867, %3863 ]
  %3996 = phi float [ %3868, %4015 ], [ %3868, %4096 ], [ %4223, %4322 ], [ %3868, %3863 ]
  %3997 = phi float [ %3869, %4015 ], [ %3869, %4096 ], [ %4221, %4322 ], [ %3869, %3863 ]
  %3998 = phi float [ %3870, %4015 ], [ %3870, %4096 ], [ %4266, %4322 ], [ %3870, %3863 ]
  %3999 = phi float [ %3871, %4015 ], [ %3871, %4096 ], [ %4267, %4322 ], [ %3871, %3863 ]
  %4000 = phi float [ %3872, %4015 ], [ %3872, %4096 ], [ %4268, %4322 ], [ %3872, %3863 ]
  %4001 = phi float [ %3873, %4015 ], [ %3873, %4096 ], [ %4332, %4322 ], [ %3873, %3863 ]
  %4002 = phi float [ %3874, %4015 ], [ %3874, %4096 ], [ %4333, %4322 ], [ %3874, %3863 ]
  %4003 = phi float [ %3875, %4015 ], [ %3875, %4096 ], [ %4334, %4322 ], [ %3875, %3863 ]
  %4004 = phi float [ %3876, %4015 ], [ %3876, %4096 ], [ %4202, %4322 ], [ %3876, %3863 ]
  %4005 = phi float [ %3877, %4015 ], [ %3877, %4096 ], [ %4203, %4322 ], [ %3877, %3863 ]
  %4006 = phi float [ %3878, %4015 ], [ %3878, %4096 ], [ %4204, %4322 ], [ %3878, %3863 ]
  %4007 = phi float [ %3879, %4015 ], [ %3879, %4096 ], [ %4276, %4322 ], [ %3879, %3863 ]
  %4008 = phi float [ %3880, %4015 ], [ %3880, %4096 ], [ %4273, %4322 ], [ %3880, %3863 ]
  %4009 = phi float [ %3881, %4015 ], [ %3881, %4096 ], [ %4270, %4322 ], [ %3881, %3863 ]
  %4010 = phi float [ %3882, %4015 ], [ %3882, %4096 ], [ %4219, %4322 ], [ %3882, %3863 ]
  %4011 = phi float [ %3883, %4015 ], [ %3883, %4096 ], [ %4214, %4322 ], [ %3883, %3863 ]
  %4012 = phi float [ %3884, %4015 ], [ %3884, %4096 ], [ %4215, %4322 ], [ %3884, %3863 ]
  %4013 = phi float [ %3885, %4015 ], [ %3885, %4096 ], [ %4216, %4322 ], [ %3885, %3863 ]
  %4014 = icmp eq i32 %3942, %3862
  br i1 %4014, label %4335, label %3863

; <label>:4015                                    ; preds = %3863
  %4016 = extractvalue %dx.types.ResRet.f32 %3912, 3
  %4017 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %4021 = extractvalue %dx.types.ResRet.i32 %3898, 3
  %4022 = extractvalue %dx.types.ResRet.i32 %3898, 2
  %4023 = add i32 %4021, 0
  %4024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4023, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4026 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4024, %dx.types.Handle %4025, float %3951, float %3958, float undef, float undef, i32 0, i32 0, i32 undef, float %3979, float %3981, float undef, float %3980, float %3982, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = fmul fast float %4027, %4020
  %4029 = fadd fast float %4028, %4019
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fmul fast float %3951, %3907
  %4032 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3958, float %4031)  ; FMad(a,b,c)
  %4033 = fadd fast float %4032, %4018
  %4034 = fmul fast float %3951, %3909
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3958, float %4034)  ; FMad(a,b,c)
  %4036 = fadd fast float %4035, %4017
  %4037 = fmul fast float %3979, %3907
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3981, float %4037)  ; FMad(a,b,c)
  %4039 = fmul fast float %3979, %3909
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3981, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %3980, %3907
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3982, float %4041)  ; FMad(a,b,c)
  %4043 = fmul fast float %3980, %3909
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %3910, float %3982, float %4043)  ; FMad(a,b,c)
  %4045 = add i32 %4022, 0
  %4046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4045, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4046, %dx.types.Handle %4025, float %4033, float %4036, float undef, float undef, i32 0, i32 0, i32 undef, float %4038, float %4040, float undef, float %4042, float %4044, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = and i32 %3943, 1024
  %4050 = icmp ne i32 %4049, 0
  %4051 = fcmp fast ogt float %4048, 0x3FE0101020000000
  %4052 = uitofp i1 %4051 to float
  %4053 = select i1 %4050, float %4052, float %4048
  %4054 = and i32 %3943, 8192
  %4055 = icmp ne i32 %4054, 0
  %4056 = select i1 %4055, float %4016, float 1.000000e+00
  %4057 = fmul fast float %3951, 2.000000e+00
  %4058 = fadd fast float %4057, -1.000000e+00
  %4059 = call float @dx.op.unary.f32(i32 6, float %4058)  ; FAbs(value)
  %4060 = fmul fast float %4059, %3940
  %4061 = fsub fast float %4060, %3940
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fmul fast float %3958, 2.000000e+00
  %4064 = fadd fast float %4063, -1.000000e+00
  %4065 = call float @dx.op.unary.f32(i32 6, float %4064)  ; FAbs(value)
  %4066 = fmul fast float %4065, %3941
  %4067 = fsub fast float %4066, %3941
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = fmul fast float %3970, %3903
  %4070 = fsub fast float %4069, %3903
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = fmul fast float %4030, %4056
  %4073 = fmul fast float %4072, %4027
  %4074 = fmul fast float %4073, %4062
  %4075 = fmul fast float %4074, %4053
  %4076 = fmul fast float %4075, %4068
  %4077 = fmul fast float %4076, %4071
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4080 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4081 = fsub fast float %3987, %4080
  %4082 = fmul fast float %4081, %4079
  %4083 = call float @dx.op.unary.f32(i32 7, float %4082)  ; Saturate(value)
  %4084 = fmul fast float %4077, %3904
  %4085 = fadd fast float %4077, %3904
  %4086 = fmul fast float %4085, %3913
  %4087 = fsub fast float %4086, %3913
  %4088 = call float @dx.op.unary.f32(i32 7, float %4087)  ; Saturate(value)
  %4089 = and i32 %3943, 128
  %4090 = icmp ne i32 %4089, 0
  %4091 = select i1 %4090, float %4088, float %4084
  %4092 = fmul fast float %4091, %4083
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = fcmp fast ugt float %4092, %4094
  br i1 %4095, label %4096, label %3992

; <label>:4096                                    ; preds = %4015
  %4097 = select i1 %4055, float %4092, float 0.000000e+00
  %4098 = fadd fast float %4097, %3865
  %4099 = call float @dx.op.unary.f32(i32 7, float %4098)  ; Saturate(value)
  br i1 %4055, label %3992, label %4100

; <label>:4100                                    ; preds = %4096
  %4101 = and i32 %3943, 4
  %4102 = and i32 %3943, 8
  %4103 = add i32 %3899, 0
  %4104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4103, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4106 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4104, %dx.types.Handle %4105, float %4033, float %4036, float undef, float undef, i32 0, i32 0, i32 undef, float %4038, float %4040, float undef, float %4042, float %4044, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.ResRet.f32 %4106, 3
  %4111 = bitcast float %3925 to i32
  %4112 = and i32 %4111, 255
  %4113 = uitofp i32 %4112 to float
  %4114 = lshr i32 %4111, 8
  %4115 = and i32 %4114, 255
  %4116 = uitofp i32 %4115 to float
  %4117 = fmul fast float %4110, %4113
  %4118 = fadd fast float %4117, %4116
  %4119 = fmul fast float %4118, 0x3F70101000000000
  %4120 = add i32 %3900, 0
  %4121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4120, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4121, %dx.types.Handle %4105, float %4033, float %4036, float undef, float undef, i32 0, i32 0, i32 undef, float %4038, float %4040, float undef, float %4042, float %4044, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = extractvalue %dx.types.ResRet.f32 %4122, 2
  %4126 = extractvalue %dx.types.ResRet.f32 %4122, 3
  %4127 = bitcast float %3919 to i32
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = lshr i32 %4127, 8
  %4131 = and i32 %4130, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = lshr i32 %4127, 16
  %4134 = and i32 %4133, 255
  %4135 = uitofp i32 %4134 to float
  %4136 = fmul fast float %4135, 0x3F70101000000000
  %4137 = fmul fast float %4123, %4129
  %4138 = fadd fast float %4137, %4132
  %4139 = fmul fast float %4138, 0x3F70101000000000
  %4140 = fadd fast float %4124, -5.000000e-01
  %4141 = fadd fast float %4126, -5.000000e-01
  %4142 = fmul fast float %4140, %4136
  %4143 = fmul fast float %4141, %4136
  %4144 = fadd fast float %4142, 5.000000e-01
  %4145 = fadd fast float %4143, 5.000000e-01
  %4146 = fmul fast float %4107, %3928
  %4147 = fmul fast float %4108, %3929
  %4148 = fmul fast float %4109, %3930
  %4149 = fmul fast float %4144, 2.000000e+00
  %4150 = fadd fast float %4149, -1.000000e+00
  %4151 = fmul fast float %4145, 2.000000e+00
  %4152 = fadd fast float %4151, -1.000000e+00
  %4153 = fadd fast float %4150, %4152
  %4154 = fmul fast float %4153, 5.000000e-01
  %4155 = fsub fast float %4150, %4152
  %4156 = fmul fast float %4155, 5.000000e-01
  %4157 = call float @dx.op.unary.f32(i32 6, float %4154)  ; FAbs(value)
  %4158 = fsub fast float 1.000000e+00, %4157
  %4159 = call float @dx.op.unary.f32(i32 6, float %4156)  ; FAbs(value)
  %4160 = fsub fast float %4158, %4159
  %4161 = call float @dx.op.dot3.f32(i32 55, float %4154, float %4156, float %4160, float %4154, float %4156, float %4160)  ; Dot3(ax,ay,az,bx,by,bz)
  %4162 = call float @dx.op.unary.f32(i32 25, float %4161)  ; Rsqrt(value)
  %4163 = fmul fast float %4154, %4162
  %4164 = fmul fast float %4156, %4162
  %4165 = fmul fast float %4162, %4160
  %4166 = fmul fast float %4165, %3893
  %4167 = fmul fast float %4165, %3894
  %4168 = fmul fast float %4165, %3895
  %4169 = fmul fast float %4163, %3916
  %4170 = fmul fast float %4163, %3917
  %4171 = fmul fast float %4163, %3918
  %4172 = fadd fast float %4169, %4166
  %4173 = fadd fast float %4170, %4167
  %4174 = fadd fast float %4171, %4168
  %4175 = fmul fast float %4164, %3922
  %4176 = fmul fast float %4164, %3923
  %4177 = fmul fast float %4164, %3924
  %4178 = fadd fast float %4172, %4175
  %4179 = fadd fast float %4173, %4176
  %4180 = fadd fast float %4174, %4177
  %4181 = call float @dx.op.dot3.f32(i32 55, float %4178, float %4179, float %4180, float %4178, float %4179, float %4180)  ; Dot3(ax,ay,az,bx,by,bz)
  %4182 = call float @dx.op.unary.f32(i32 25, float %4181)  ; Rsqrt(value)
  %4183 = fmul fast float %4178, %4182
  %4184 = fmul fast float %4179, %4182
  %4185 = fmul fast float %4180, %4182
  %4186 = icmp ne i32 %4102, 0
  %4187 = select i1 %4186, float 1.000000e+00, float 0.000000e+00
  %4188 = fmul fast float %4092, %4187
  %4189 = and i32 %3943, 1
  %4190 = icmp eq i32 %4189, 0
  br i1 %4190, label %4191, label %4195

; <label>:4191                                    ; preds = %4100
  %4192 = fsub fast float %4183, %3876
  %4193 = fsub fast float %4184, %3877
  %4194 = fsub fast float %4185, %3878
  br label %4195

; <label>:4195                                    ; preds = %4191, %4100
  %4196 = phi float [ %4192, %4191 ], [ %4183, %4100 ]
  %4197 = phi float [ %4193, %4191 ], [ %4184, %4100 ]
  %4198 = phi float [ %4194, %4191 ], [ %4185, %4100 ]
  %4199 = fmul float %4198, %4188
  %4200 = fmul float %4197, %4188
  %4201 = fmul float %4196, %4188
  %4202 = fadd fast float %4201, %3876
  %4203 = fadd fast float %4200, %3877
  %4204 = fadd fast float %4199, %3878
  %4205 = icmp ne i32 %4101, 0
  %4206 = select i1 %4205, float 1.000000e+00, float 0.000000e+00
  %4207 = fmul fast float %4092, %4206
  %4208 = fsub fast float %4146, %3883
  %4209 = fsub fast float %4147, %3884
  %4210 = fsub fast float %4148, %3885
  %4211 = fmul fast float %4208, %4207
  %4212 = fmul fast float %4209, %4207
  %4213 = fmul fast float %4210, %4207
  %4214 = fadd fast float %4211, %3883
  %4215 = fadd fast float %4212, %3884
  %4216 = fadd fast float %4213, %3885
  %4217 = fsub fast float %4119, %3882
  %4218 = fmul fast float %4217, %4207
  %4219 = fadd fast float %4218, %3882
  %4220 = fmul fast float %4207, %3869
  %4221 = fsub fast float %3869, %4220
  %4222 = fmul fast float %4207, %3868
  %4223 = fsub fast float %3868, %4222
  %4224 = bitcast float %3937 to i32
  %4225 = lshr i32 %4224, 16
  %4226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4225)  ; LegacyF16ToF32(value)
  %4227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.i32 %4227, 0
  %4229 = and i32 %4228, 1
  %4230 = icmp eq i32 %4229, 0
  br i1 %4230, label %4231, label %4256

; <label>:4231                                    ; preds = %4195
  %4232 = fadd fast float %4119, 0xBFB99999A0000000
  %4233 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4234 = fmul fast float %4233, 0x3FF1C71C80000000
  %4235 = fsub fast float 1.000000e+00, %4234
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = fmul fast float %4236, %4146
  %4238 = fmul fast float %4236, %4147
  %4239 = fmul fast float %4236, %4148
  %4240 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4241 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4242 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4243 = call float @dx.op.binary.f32(i32 35, float %4241, float %4242)  ; FMax(a,b)
  %4244 = call float @dx.op.binary.f32(i32 35, float %4240, float %4243)  ; FMax(a,b)
  %4245 = fcmp fast ogt float %4244, 0.000000e+00
  %4246 = bitcast float %4244 to i32
  %4247 = sub nsw i32 2129859010, %4246
  %4248 = bitcast i32 %4247 to float
  %4249 = select i1 %4245, float %4248, float 0.000000e+00
  %4250 = fmul fast float %4240, %4226
  %4251 = fmul fast float %4241, %4226
  %4252 = fmul fast float %4242, %4226
  %4253 = fmul fast float %4250, %4249
  %4254 = fmul fast float %4251, %4249
  %4255 = fmul fast float %4252, %4249
  br label %4256

; <label>:4256                                    ; preds = %4231, %4195
  %4257 = phi float [ %4226, %4195 ], [ %4253, %4231 ]
  %4258 = phi float [ %4226, %4195 ], [ %4254, %4231 ]
  %4259 = phi float [ %4226, %4195 ], [ %4255, %4231 ]
  %4260 = fsub fast float %4257, %3870
  %4261 = fsub fast float %4258, %3871
  %4262 = fsub fast float %4259, %3872
  %4263 = fmul fast float %4260, %4207
  %4264 = fmul fast float %4261, %4207
  %4265 = fmul fast float %4262, %4207
  %4266 = fadd fast float %4263, %3870
  %4267 = fadd fast float %4264, %3871
  %4268 = fadd fast float %4265, %3872
  %4269 = fadd fast float %4092, %3881
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4271 = fsub fast float %4139, %3880
  %4272 = fmul fast float %4271, %4188
  %4273 = fadd fast float %4272, %3880
  %4274 = fsub fast float %4125, %3879
  %4275 = fmul fast float %4274, %4188
  %4276 = fadd fast float %4275, %3879
  %4277 = call float @dx.op.dot3.f32(i32 55, float %4146, float %4147, float %4148, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.CBufRet.f32 %4278, 1
  %4281 = fmul fast float %4280, %4277
  %4282 = fadd fast float %4281, %4279
  %4283 = call float @dx.op.unary.f32(i32 7, float %4282)  ; Saturate(value)
  %4284 = bitcast float %3931 to i32
  %4285 = and i32 %4284, 65535
  %4286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4285)  ; LegacyF16ToF32(value)
  %4287 = lshr i32 %4284, 16
  %4288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4287)  ; LegacyF16ToF32(value)
  %4289 = fcmp fast oge float %4286, 0.000000e+00
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 0
  %4292 = select i1 %4289, float %4286, float %4291
  %4293 = fadd fast float %4292, %4288
  %4294 = fsub fast float %4283, %3867
  %4295 = fmul fast float %4294, %4092
  %4296 = fadd fast float %4295, %3867
  %4297 = fmul fast float %4293, %4092
  %4298 = call float @dx.op.binary.f32(i32 35, float %3866, float %4297)  ; FMax(a,b)
  %4299 = and i32 %3943, 16
  %4300 = icmp eq i32 %4299, 0
  br i1 %4300, label %4322, label %4301

; <label>:4301                                    ; preds = %4256
  %4302 = add i32 %3934, 0
  %4303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4302, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4304 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4303, %dx.types.Handle %4105, float %4033, float %4036, float undef, float undef, i32 0, i32 0, i32 undef, float %4038, float %4040, float undef, float %4042, float %4044, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4305 = extractvalue %dx.types.ResRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.ResRet.f32 %4304, 1
  %4307 = extractvalue %dx.types.ResRet.f32 %4304, 2
  %4308 = and i32 %4224, 65535
  %4309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4308)  ; LegacyF16ToF32(value)
  %4310 = fmul fast float %4305, %3928
  %4311 = fmul fast float %4306, %3929
  %4312 = fmul fast float %4307, %3930
  %4313 = and i32 %3943, 16384
  %4314 = icmp ne i32 %4313, 0
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = select i1 %4314, float %4316, float 1.000000e+00
  %4318 = fmul fast float %4317, %4309
  %4319 = fmul fast float %4310, %4318
  %4320 = fmul fast float %4311, %4318
  %4321 = fmul fast float %4312, %4318
  br label %4322

; <label>:4322                                    ; preds = %4301, %4256
  %4323 = phi float [ %4319, %4301 ], [ 0.000000e+00, %4256 ]
  %4324 = phi float [ %4320, %4301 ], [ 0.000000e+00, %4256 ]
  %4325 = phi float [ %4321, %4301 ], [ 0.000000e+00, %4256 ]
  %4326 = fsub fast float %4323, %3873
  %4327 = fsub fast float %4324, %3874
  %4328 = fsub fast float %4325, %3875
  %4329 = fmul fast float %4326, %4092
  %4330 = fmul fast float %4327, %4092
  %4331 = fmul fast float %4328, %4092
  %4332 = fadd fast float %4329, %3873
  %4333 = fadd fast float %4330, %3874
  %4334 = fadd fast float %4331, %3875
  br label %3992

; <label>:4335                                    ; preds = %3992
  br label %4336

; <label>:4336                                    ; preds = %4335, %3809
  %4337 = phi float [ 0.000000e+00, %3809 ], [ %3993, %4335 ]
  %4338 = phi float [ %3778, %3809 ], [ %3994, %4335 ]
  %4339 = phi float [ %3776, %3809 ], [ %3995, %4335 ]
  %4340 = phi float [ 0.000000e+00, %3809 ], [ %3996, %4335 ]
  %4341 = phi float [ 0.000000e+00, %3809 ], [ %3997, %4335 ]
  %4342 = phi float [ %3769, %3809 ], [ %3998, %4335 ]
  %4343 = phi float [ %3770, %3809 ], [ %3999, %4335 ]
  %4344 = phi float [ %3771, %3809 ], [ %4000, %4335 ]
  %4345 = phi float [ %3766, %3809 ], [ %4001, %4335 ]
  %4346 = phi float [ %3767, %3809 ], [ %4002, %4335 ]
  %4347 = phi float [ %3768, %3809 ], [ %4003, %4335 ]
  %4348 = phi float [ %3804, %3809 ], [ %4004, %4335 ]
  %4349 = phi float [ %3805, %3809 ], [ %4005, %4335 ]
  %4350 = phi float [ %3806, %3809 ], [ %4006, %4335 ]
  %4351 = phi float [ %3774, %3809 ], [ %4007, %4335 ]
  %4352 = phi float [ %3773, %3809 ], [ %4008, %4335 ]
  %4353 = phi float [ 0.000000e+00, %3809 ], [ %4009, %4335 ]
  %4354 = phi float [ %3772, %3809 ], [ %4010, %4335 ]
  %4355 = phi float [ %3763, %3809 ], [ %4011, %4335 ]
  %4356 = phi float [ %3764, %3809 ], [ %4012, %4335 ]
  %4357 = phi float [ %3765, %3809 ], [ %4013, %4335 ]
  %4358 = call float @dx.op.dot3.f32(i32 55, float %4348, float %4349, float %4350, float %4348, float %4349, float %4350)  ; Dot3(ax,ay,az,bx,by,bz)
  %4359 = call float @dx.op.unary.f32(i32 25, float %4358)  ; Rsqrt(value)
  %4360 = fmul fast float %4359, %4348
  %4361 = fmul fast float %4359, %4349
  %4362 = fmul fast float %4359, %4350
  %4363 = fadd fast float %4353, %937
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4360, float %4361, float %4362, float %4360, float %4361, float %4362)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = call float @dx.op.unary.f32(i32 25, float %4365)  ; Rsqrt(value)
  %4367 = fmul fast float %4366, %4360
  %4368 = fmul fast float %4366, %4361
  %4369 = fmul fast float %4366, %4362
  br label %4370

; <label>:4370                                    ; preds = %4336, %3760
  %4371 = phi float [ %4367, %4336 ], [ %3804, %3760 ]
  %4372 = phi float [ %4368, %4336 ], [ %3805, %3760 ]
  %4373 = phi float [ %4369, %4336 ], [ %3806, %3760 ]
  %4374 = phi float [ %4345, %4336 ], [ %3766, %3760 ]
  %4375 = phi float [ %4346, %4336 ], [ %3767, %3760 ]
  %4376 = phi float [ %4347, %4336 ], [ %3768, %3760 ]
  %4377 = phi float [ %4355, %4336 ], [ %3763, %3760 ]
  %4378 = phi float [ %4356, %4336 ], [ %3764, %3760 ]
  %4379 = phi float [ %4357, %4336 ], [ %3765, %3760 ]
  %4380 = phi float [ %4342, %4336 ], [ %3769, %3760 ]
  %4381 = phi float [ %4343, %4336 ], [ %3770, %3760 ]
  %4382 = phi float [ %4344, %4336 ], [ %3771, %3760 ]
  %4383 = phi float [ %4354, %4336 ], [ %3772, %3760 ]
  %4384 = phi float [ %4364, %4336 ], [ %937, %3760 ]
  %4385 = phi float [ %4352, %4336 ], [ %3773, %3760 ]
  %4386 = phi float [ %4351, %4336 ], [ %3774, %3760 ]
  %4387 = phi float [ %4341, %4336 ], [ 0.000000e+00, %3760 ]
  %4388 = phi float [ %4340, %4336 ], [ 0.000000e+00, %3760 ]
  %4389 = phi float [ %4337, %4336 ], [ 0.000000e+00, %3760 ]
  %4390 = phi float [ %4338, %4336 ], [ %3778, %3760 ]
  %4391 = phi float [ %4339, %4336 ], [ %3776, %3760 ]
  %4392 = fadd fast float %4383, 0xBFB99999A0000000
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = fmul fast float %4393, 0x3FF1C71C80000000
  %4395 = call float @dx.op.binary.f32(i32 36, float %4383, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4396 = fsub fast float 1.000000e+00, %4394
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = fmul fast float %4397, %4377
  %4399 = fmul fast float %4397, %4378
  %4400 = fmul fast float %4397, %4379
  %4401 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4402 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4403 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4404 = fmul fast float %4394, %4377
  %4405 = fmul fast float %4394, %4378
  %4406 = fmul fast float %4394, %4379
  %4407 = fadd fast float %4404, %4395
  %4408 = fadd fast float %4405, %4395
  %4409 = fadd fast float %4406, %4395
  %4410 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4411 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4412 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4415 = extractvalue %dx.types.ResRet.i32 %4414, 0
  %4416 = and i32 %4415, 1
  %4417 = icmp eq i32 %4416, 0
  br i1 %4417, label %4432, label %4418

; <label>:4418                                    ; preds = %4370
  %4419 = call float @dx.op.binary.f32(i32 35, float %4402, float %4403)  ; FMax(a,b)
  %4420 = call float @dx.op.binary.f32(i32 35, float %4401, float %4419)  ; FMax(a,b)
  %4421 = fcmp fast ogt float %4420, 0.000000e+00
  %4422 = bitcast float %4420 to i32
  %4423 = sub nsw i32 2129859010, %4422
  %4424 = bitcast i32 %4423 to float
  %4425 = select i1 %4421, float %4424, float 0.000000e+00
  %4426 = fmul fast float %4401, %4380
  %4427 = fmul fast float %4402, %4381
  %4428 = fmul fast float %4403, %4382
  %4429 = fmul fast float %4426, %4425
  %4430 = fmul fast float %4427, %4425
  %4431 = fmul fast float %4428, %4425
  br label %4432

; <label>:4432                                    ; preds = %4418, %4370
  %4433 = phi float [ %4429, %4418 ], [ %4380, %4370 ]
  %4434 = phi float [ %4430, %4418 ], [ %4381, %4370 ]
  %4435 = phi float [ %4431, %4418 ], [ %4382, %4370 ]
  %4436 = fadd fast float %4401, 0xBFD51EB860000000
  %4437 = fadd fast float %4402, 0xBFD51EB860000000
  %4438 = fadd fast float %4403, 0xBFD51EB860000000
  %4439 = fmul fast float %4436, %4436
  %4440 = fmul fast float %4437, %4437
  %4441 = fmul fast float %4438, %4438
  %4442 = fmul fast float %4439, %4439
  %4443 = fmul fast float %4442, 1.000000e+02
  %4444 = fmul fast float %4440, %4440
  %4445 = fmul fast float %4444, 1.000000e+02
  %4446 = fmul fast float %4441, %4441
  %4447 = fmul fast float %4446, 1.000000e+02
  %4448 = fadd fast float %4443, 3.500000e+00
  %4449 = fadd fast float %4445, 3.500000e+00
  %4450 = fadd fast float %4447, 3.500000e+00
  %4451 = call float @dx.op.binary.f32(i32 35, float %4433, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4452 = call float @dx.op.binary.f32(i32 35, float %4434, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4453 = call float @dx.op.binary.f32(i32 35, float %4435, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4454 = fdiv fast float %4448, %4451
  %4455 = fdiv fast float %4449, %4452
  %4456 = fdiv fast float %4450, %4453
  %4457 = fmul fast float %3775, 0xBFF7154760000000
  %4458 = fmul fast float %4457, %4454
  %4459 = call float @dx.op.unary.f32(i32 21, float %4458)  ; Exp(value)
  %4460 = fmul fast float %4459, 2.500000e-01
  %4461 = fmul fast float %3775, 0xBFDEC709E0000000
  %4462 = fmul fast float %4461, %4454
  %4463 = call float @dx.op.unary.f32(i32 21, float %4462)  ; Exp(value)
  %4464 = fmul fast float %4463, 7.500000e-01
  %4465 = fmul fast float %4457, %4455
  %4466 = call float @dx.op.unary.f32(i32 21, float %4465)  ; Exp(value)
  %4467 = fmul fast float %4466, 2.500000e-01
  %4468 = fmul fast float %4461, %4455
  %4469 = call float @dx.op.unary.f32(i32 21, float %4468)  ; Exp(value)
  %4470 = fmul fast float %4469, 7.500000e-01
  %4471 = fmul fast float %4457, %4456
  %4472 = call float @dx.op.unary.f32(i32 21, float %4471)  ; Exp(value)
  %4473 = fmul fast float %4472, 2.500000e-01
  %4474 = fmul fast float %4461, %4456
  %4475 = call float @dx.op.unary.f32(i32 21, float %4474)  ; Exp(value)
  %4476 = fmul fast float %4475, 7.500000e-01
  %4477 = fadd fast float %4460, %4464
  %4478 = fadd fast float %4467, %4470
  %4479 = fadd fast float %4473, %4476
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 3
  %4482 = and i32 %4481, 8
  %4483 = icmp ne i32 %4482, 0
  %4484 = call float @dx.op.binary.f32(i32 35, float %4401, float %4377)  ; FMax(a,b)
  %4485 = call float @dx.op.binary.f32(i32 35, float %4402, float %4377)  ; FMax(a,b)
  %4486 = call float @dx.op.binary.f32(i32 35, float %4403, float %4377)  ; FMax(a,b)
  %4487 = call float @dx.op.dot3.f32(i32 55, float %4401, float %4402, float %4403, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4488 = select i1 %176, float %4377, float %4401
  %4489 = select i1 %176, float %4487, float %4402
  %4490 = select i1 %176, float 1.000000e+00, float %4403
  %4491 = select i1 %4483, float %4484, float %4488
  %4492 = select i1 %4483, float %4485, float %4489
  %4493 = select i1 %4483, float %4486, float %4490
  %4494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.f32 %4494, 0
  %4496 = extractvalue %dx.types.CBufRet.f32 %4494, 1
  %4497 = extractvalue %dx.types.CBufRet.f32 %4494, 2
  %4498 = fadd fast float %4495, %134
  %4499 = fadd fast float %4496, %135
  %4500 = fadd fast float %4497, %136
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 0
  %4503 = extractvalue %dx.types.CBufRet.f32 %4501, 1
  %4504 = fsub fast float %4498, %4502
  %4505 = fsub fast float %4499, %4503
  %4506 = fmul fast float %4504, %4504
  %4507 = fmul fast float %4505, %4505
  %4508 = fadd fast float %4506, %4507
  %4509 = call float @dx.op.unary.f32(i32 24, float %4508)  ; Sqrt(value)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4501, 2
  %4511 = fcmp fast olt float %4509, %4510
  br i1 %4511, label %4512, label %4579

; <label>:4512                                    ; preds = %4432
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 0
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.CBufRet.f32 %4513, 1
  %4520 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4521 = extractvalue %dx.types.CBufRet.f32 %4517, 1
  %4522 = extractvalue %dx.types.CBufRet.f32 %4513, 3
  %4523 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4524 = extractvalue %dx.types.CBufRet.f32 %4517, 3
  %4525 = fadd fast float %4522, %4498
  %4526 = fadd fast float %4523, %4499
  %4527 = fadd fast float %4524, %4500
  %4528 = fmul fast float %4525, %4514
  %4529 = call float @dx.op.tertiary.f32(i32 46, float %4526, float %4516, float %4528)  ; FMad(a,b,c)
  %4530 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4518, float %4529)  ; FMad(a,b,c)
  %4531 = fmul fast float %4525, %4519
  %4532 = call float @dx.op.tertiary.f32(i32 46, float %4526, float %4520, float %4531)  ; FMad(a,b,c)
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4521, float %4532)  ; FMad(a,b,c)
  %4534 = fsub fast float %4530, %4522
  %4535 = fsub fast float %4533, %4523
  %4536 = fsub fast float %4534, %4502
  %4537 = fadd fast float %4536, %4510
  %4538 = fsub fast float %4535, %4503
  %4539 = fadd fast float %4538, %4510
  %4540 = extractvalue %dx.types.CBufRet.f32 %4501, 3
  %4541 = fmul fast float %4537, %4540
  %4542 = fmul fast float %4539, %4540
  %4543 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4544 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4545 = fsub fast float 1.000000e+00, %4543
  %4546 = fsub fast float 1.000000e+00, %4544
  %4547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4545, float %4546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4548 = extractvalue %dx.types.ResRet.f32 %4547, 0
  %4549 = fcmp fast ugt float %4548, 0.000000e+00
  br i1 %4549, label %4550, label %4853

; <label>:4550                                    ; preds = %4512
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 2
  %4553 = fmul fast float %4552, %4548
  %4554 = extractvalue %dx.types.CBufRet.f32 %4551, 3
  %4555 = fadd fast float %4554, %4553
  %4556 = extractvalue %dx.types.CBufRet.f32 %4517, 2
  %4557 = fadd fast float %4555, %4524
  %4558 = fmul fast float %4530, %4518
  %4559 = call float @dx.op.tertiary.f32(i32 46, float %4533, float %4521, float %4558)  ; FMad(a,b,c)
  %4560 = call float @dx.op.tertiary.f32(i32 46, float %4557, float %4556, float %4559)  ; FMad(a,b,c)
  %4561 = fsub fast float %4560, %4524
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 2
  %4564 = fsub fast float %4561, %4563
  %4565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4545, float %4546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4566 = extractvalue %dx.types.ResRet.f32 %4565, 0
  %4567 = extractvalue %dx.types.ResRet.f32 %4565, 1
  %4568 = extractvalue %dx.types.ResRet.f32 %4565, 2
  %4569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4545, float %4546, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = fadd fast float %4570, %4566
  %4574 = fmul fast float %4573, 0x3F847AE140000000
  %4575 = fadd fast float %4571, %4567
  %4576 = fmul fast float %4575, 0x3F847AE140000000
  %4577 = fadd fast float %4572, %4568
  %4578 = fmul fast float %4577, 0x3F847AE140000000
  br label %4853

; <label>:4579                                    ; preds = %4432
  %4580 = and i32 %152, 1
  %4581 = icmp eq i32 %4580, 0
  br i1 %4581, label %4853, label %4582

; <label>:4582                                    ; preds = %4579
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 0
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.CBufRet.f32 %4583, 1
  %4590 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4591 = extractvalue %dx.types.CBufRet.f32 %4587, 1
  %4592 = extractvalue %dx.types.CBufRet.f32 %4583, 3
  %4593 = extractvalue %dx.types.CBufRet.f32 %4585, 3
  %4594 = extractvalue %dx.types.CBufRet.f32 %4587, 3
  %4595 = fadd fast float %4592, %4498
  %4596 = fadd fast float %4593, %4499
  %4597 = fadd fast float %4594, %4500
  %4598 = fmul fast float %4595, %4584
  %4599 = call float @dx.op.tertiary.f32(i32 46, float %4596, float %4586, float %4598)  ; FMad(a,b,c)
  %4600 = call float @dx.op.tertiary.f32(i32 46, float %4597, float %4588, float %4599)  ; FMad(a,b,c)
  %4601 = fmul fast float %4595, %4589
  %4602 = call float @dx.op.tertiary.f32(i32 46, float %4596, float %4590, float %4601)  ; FMad(a,b,c)
  %4603 = call float @dx.op.tertiary.f32(i32 46, float %4597, float %4591, float %4602)  ; FMad(a,b,c)
  %4604 = fsub fast float %4600, %4592
  %4605 = fsub fast float %4603, %4593
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4609 = extractvalue %dx.types.CBufRet.f32 %4606, 2
  %4610 = extractvalue %dx.types.CBufRet.f32 %4606, 3
  %4611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.f32 %4611, 3
  %4613 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4614 = extractvalue %dx.types.CBufRet.i32 %4613, 0
  %4615 = extractvalue %dx.types.CBufRet.i32 %4613, 1
  %4616 = udiv i32 %4615, %4614
  %4617 = fsub fast float %4604, %4607
  %4618 = fsub fast float %4605, %4608
  %4619 = call float @dx.op.binary.f32(i32 35, float %4617, float 0.000000e+00)  ; FMax(a,b)
  %4620 = call float @dx.op.binary.f32(i32 35, float %4618, float 0.000000e+00)  ; FMax(a,b)
  %4621 = call float @dx.op.binary.f32(i32 36, float %4619, float %4609)  ; FMin(a,b)
  %4622 = call float @dx.op.binary.f32(i32 36, float %4620, float %4610)  ; FMin(a,b)
  %4623 = add i32 %4614, -1
  %4624 = add i32 %4616, -1
  %4625 = fmul fast float %4621, %4612
  %4626 = fmul fast float %4622, %4612
  %4627 = fptoui float %4625 to i32
  %4628 = fptoui float %4626 to i32
  %4629 = call i32 @dx.op.binary.i32(i32 40, i32 %4627, i32 %4623)  ; UMin(a,b)
  %4630 = call i32 @dx.op.binary.i32(i32 40, i32 %4628, i32 %4624)  ; UMin(a,b)
  %4631 = mul i32 %4630, %4614
  %4632 = add i32 %4631, %4629
  %4633 = shl i32 %4632, 2
  %4634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.i32 %4634, 0
  %4636 = icmp eq i32 %4635, -1
  br i1 %4636, label %4853, label %4637

; <label>:4637                                    ; preds = %4582
  %4638 = mul i32 %4635, 148
  %4639 = add i32 %4638, 4
  %4640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = add i32 %4638, 8
  %4643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.f32 %4643, 0
  %4645 = add i32 %4638, 36
  %4646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = add i32 %4638, 60
  %4649 = add i32 %4638, 92
  %4650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4649, i32 undef)  ; BufferLoad(srv,index,wot)
  %4651 = extractvalue %dx.types.ResRet.i32 %4650, 0
  %4652 = add i32 %4638, 116
  %4653 = fsub fast float %4604, %4641
  %4654 = fsub fast float %4605, %4644
  %4655 = fmul fast float %4612, %4653
  %4656 = fmul fast float %4612, %4654
  %4657 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4659 = fsub fast float 1.000000e+00, %4658
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4662 = call float @dx.op.unary.f32(i32 83, float %4657)  ; DerivCoarseX(value)
  %4663 = call float @dx.op.unary.f32(i32 83, float %4659)  ; DerivCoarseX(value)
  %4664 = call float @dx.op.unary.f32(i32 84, float %4657)  ; DerivCoarseY(value)
  %4665 = call float @dx.op.unary.f32(i32 84, float %4659)  ; DerivCoarseY(value)
  %4666 = fmul fast float %4662, %4661
  %4667 = fmul fast float %4663, %4661
  %4668 = fmul fast float %4664, %4661
  %4669 = fmul fast float %4665, %4661
  %4670 = call float @dx.op.dot2.f32(i32 54, float %4668, float %4669, float %4668, float %4669)  ; Dot2(ax,ay,bx,by)
  %4671 = call float @dx.op.dot2.f32(i32 54, float %4666, float %4667, float %4666, float %4667)  ; Dot2(ax,ay,bx,by)
  %4672 = call float @dx.op.binary.f32(i32 35, float %4671, float %4670)  ; FMax(a,b)
  %4673 = call float @dx.op.unary.f32(i32 23, float %4672)  ; Log(value)
  %4674 = fmul fast float %4673, 5.000000e-01
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4677 = fadd fast float %4676, %4674
  %4678 = call float @dx.op.binary.f32(i32 35, float %4677, float 0.000000e+00)  ; FMax(a,b)
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 3
  %4681 = fadd fast float %4680, %4678
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 3
  %4684 = fadd fast float %4681, %4683
  %4685 = add i32 %4651, 0
  %4686 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4685, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4687 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4686, i32 0)  ; GetDimensions(handle,mipLevel)
  %4688 = extractvalue %dx.types.Dimensions %4687, 0
  %4689 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4688)  ; FirstbitLo(value)
  %4690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.i32 %4690, 1
  %4692 = sub nsw i32 %4691, %4689
  %4693 = sitofp i32 %4692 to float
  %4694 = fsub fast float %4684, %4693
  %4695 = call float @dx.op.binary.f32(i32 35, float %4694, float 0.000000e+00)  ; FMax(a,b)
  %4696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4686, %dx.types.Handle %27, float %4657, float %4659, float %4647, float undef, i32 0, i32 0, i32 undef, float %4695)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  %4698 = fcmp ule float %4697, 0x3FE0101020000000
  %4699 = extractvalue %dx.types.CBufRet.i32 %4690, 0
  %4700 = and i32 %4699, 128
  %4701 = icmp ne i32 %4700, 0
  %4702 = and i1 %4698, %4701
  br i1 %4702, label %4853, label %4703

; <label>:4703                                    ; preds = %4637
  %4704 = add i32 %4638, 20
  %4705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4704, i32 undef)  ; BufferLoad(srv,index,wot)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = add i32 %4638, 24
  %4708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4707, i32 undef)  ; BufferLoad(srv,index,wot)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = add i32 %4638, 40
  %4711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4710, i32 undef)  ; BufferLoad(srv,index,wot)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = add i32 %4638, 96
  %4714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4713, i32 undef)  ; BufferLoad(srv,index,wot)
  %4715 = extractvalue %dx.types.ResRet.i32 %4714, 0
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 2
  %4718 = fmul fast float %4717, %4657
  %4719 = fmul fast float %4717, %4659
  %4720 = extractvalue %dx.types.CBufRet.f32 %4716, 3
  %4721 = fadd fast float %4718, %4720
  %4722 = fadd fast float %4719, %4720
  %4723 = add i32 %4715, 0
  %4724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4723, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4725 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4724, i32 0)  ; GetDimensions(handle,mipLevel)
  %4726 = extractvalue %dx.types.Dimensions %4725, 0
  %4727 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4726)  ; FirstbitLo(value)
  %4728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.i32 %4728, 1
  %4730 = sub nsw i32 %4729, %4727
  %4731 = sitofp i32 %4730 to float
  %4732 = fsub fast float %4681, %4731
  %4733 = call float @dx.op.binary.f32(i32 35, float %4732, float 0.000000e+00)  ; FMax(a,b)
  %4734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4724, %dx.types.Handle %27, float %4721, float %4722, float %4712, float undef, i32 0, i32 0, i32 undef, float %4733)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4735 = extractvalue %dx.types.ResRet.f32 %4734, 0
  %4736 = fmul fast float %4735, %4706
  %4737 = fadd fast float %4736, %4709
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4741 = extractvalue %dx.types.CBufRet.f32 %4738, 2
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 3
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 3
  %4746 = extractvalue %dx.types.CBufRet.f32 %4738, 3
  %4747 = fadd fast float %4743, %4604
  %4748 = fadd fast float %4745, %4605
  %4749 = fadd fast float %4737, %4746
  %4750 = fmul fast float %4747, %4739
  %4751 = call float @dx.op.tertiary.f32(i32 46, float %4748, float %4740, float %4750)  ; FMad(a,b,c)
  %4752 = call float @dx.op.tertiary.f32(i32 46, float %4749, float %4741, float %4751)  ; FMad(a,b,c)
  %4753 = fsub fast float %4752, %4746
  %4754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4755 = extractvalue %dx.types.CBufRet.f32 %4754, 2
  %4756 = fsub fast float %4753, %4755
  %4757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.i32 %4757, 0
  %4759 = call i32 @dx.op.binary.i32(i32 40, i32 %4635, i32 %4758)  ; UMin(a,b)
  %4760 = mul i32 %4759, 36
  %4761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4760, i32 undef)  ; BufferLoad(srv,index,wot)
  %4762 = extractvalue %dx.types.ResRet.i32 %4761, 0
  %4763 = add i32 %4760, 4
  %4764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4765 = extractvalue %dx.types.CBufRet.f32 %4764, 0
  %4766 = fmul fast float %4765, %4657
  %4767 = fmul fast float %4765, %4659
  %4768 = extractvalue %dx.types.CBufRet.f32 %4764, 1
  %4769 = fadd fast float %4766, %4768
  %4770 = fadd fast float %4767, %4768
  %4771 = icmp eq i32 %4762, 0
  br i1 %4771, label %4840, label %4772

; <label>:4772                                    ; preds = %4703
  br label %4773

; <label>:4773                                    ; preds = %4830, %4772
  %4774 = phi float [ %4831, %4830 ], [ 0.000000e+00, %4772 ]
  %4775 = phi float [ %4832, %4830 ], [ 0.000000e+00, %4772 ]
  %4776 = phi float [ %4833, %4830 ], [ 0.000000e+00, %4772 ]
  %4777 = phi float [ %4834, %4830 ], [ 0.000000e+00, %4772 ]
  %4778 = phi float [ %4835, %4830 ], [ 0.000000e+00, %4772 ]
  %4779 = phi float [ %4836, %4830 ], [ 0.000000e+00, %4772 ]
  %4780 = phi i32 [ %4837, %4830 ], [ 0, %4772 ]
  %4781 = shl i32 %4780, 2
  %4782 = add i32 %4648, %4781
  %4783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4782, i32 undef)  ; BufferLoad(srv,index,wot)
  %4784 = extractvalue %dx.types.ResRet.f32 %4783, 0
  %4785 = add i32 %4652, %4781
  %4786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4785, i32 undef)  ; BufferLoad(srv,index,wot)
  %4787 = extractvalue %dx.types.ResRet.i32 %4786, 0
  %4788 = add i32 %4787, 0
  %4789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4788, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4790 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4789, i32 0)  ; GetDimensions(handle,mipLevel)
  %4791 = extractvalue %dx.types.Dimensions %4790, 0
  %4792 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4791)  ; FirstbitLo(value)
  %4793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.i32 %4793, 1
  %4795 = sub nsw i32 %4794, %4792
  %4796 = sitofp i32 %4795 to float
  %4797 = fsub fast float %4681, %4796
  %4798 = call float @dx.op.binary.f32(i32 35, float %4797, float 0.000000e+00)  ; FMax(a,b)
  %4799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4789, %dx.types.Handle %27, float %4769, float %4770, float %4784, float undef, i32 0, i32 0, i32 undef, float %4798)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = fcmp fast ogt float %4800, 0.000000e+00
  br i1 %4801, label %4802, label %4830

; <label>:4802                                    ; preds = %4773
  %4803 = add i32 %4763, %4781
  %4804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4803, i32 undef)  ; BufferLoad(srv,index,wot)
  %4805 = extractvalue %dx.types.ResRet.i32 %4804, 0
  %4806 = and i32 %4805, 32767
  %4807 = mul nuw nsw i32 %4806, 928
  %4808 = add nuw nsw i32 %4807, 48
  %4809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4808, i32 undef)  ; BufferLoad(srv,index,wot)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.ResRet.f32 %4809, 1
  %4812 = extractvalue %dx.types.ResRet.f32 %4809, 2
  %4813 = add nuw nsw i32 %4807, 60
  %4814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4813, i32 undef)  ; BufferLoad(srv,index,wot)
  %4815 = extractvalue %dx.types.ResRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.ResRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.ResRet.f32 %4814, 2
  %4818 = fmul fast float %4810, %4800
  %4819 = fmul fast float %4811, %4800
  %4820 = fmul fast float %4812, %4800
  %4821 = fadd fast float %4818, %4774
  %4822 = fadd fast float %4819, %4775
  %4823 = fadd fast float %4820, %4776
  %4824 = fmul fast float %4815, %4800
  %4825 = fmul fast float %4816, %4800
  %4826 = fmul fast float %4817, %4800
  %4827 = fadd fast float %4824, %4777
  %4828 = fadd fast float %4825, %4778
  %4829 = fadd fast float %4826, %4779
  br label %4830

; <label>:4830                                    ; preds = %4802, %4773
  %4831 = phi float [ %4821, %4802 ], [ %4774, %4773 ]
  %4832 = phi float [ %4822, %4802 ], [ %4775, %4773 ]
  %4833 = phi float [ %4823, %4802 ], [ %4776, %4773 ]
  %4834 = phi float [ %4827, %4802 ], [ %4777, %4773 ]
  %4835 = phi float [ %4828, %4802 ], [ %4778, %4773 ]
  %4836 = phi float [ %4829, %4802 ], [ %4779, %4773 ]
  %4837 = add nuw i32 %4780, 1
  %4838 = icmp eq i32 %4837, %4762
  br i1 %4838, label %4839, label %4773

; <label>:4839                                    ; preds = %4830
  br label %4840

; <label>:4840                                    ; preds = %4839, %4703
  %4841 = phi float [ 0.000000e+00, %4703 ], [ %4831, %4839 ]
  %4842 = phi float [ 0.000000e+00, %4703 ], [ %4832, %4839 ]
  %4843 = phi float [ 0.000000e+00, %4703 ], [ %4833, %4839 ]
  %4844 = phi float [ 0.000000e+00, %4703 ], [ %4834, %4839 ]
  %4845 = phi float [ 0.000000e+00, %4703 ], [ %4835, %4839 ]
  %4846 = phi float [ 0.000000e+00, %4703 ], [ %4836, %4839 ]
  %4847 = fadd fast float %4844, %4841
  %4848 = fmul fast float %4847, 0x3F847AE140000000
  %4849 = fadd fast float %4845, %4842
  %4850 = fmul fast float %4849, 0x3F847AE140000000
  %4851 = fadd fast float %4846, %4843
  %4852 = fmul fast float %4851, 0x3F847AE140000000
  br label %4853

; <label>:4853                                    ; preds = %4840, %4637, %4582, %4579, %4550, %4512
  %4854 = phi float [ %4564, %4550 ], [ -1.310720e+05, %4512 ], [ %4756, %4840 ], [ -1.310720e+05, %4582 ], [ -1.310720e+05, %4637 ], [ -1.310720e+05, %4579 ]
  %4855 = phi float [ %4574, %4550 ], [ 0.000000e+00, %4512 ], [ %4848, %4840 ], [ 0.000000e+00, %4582 ], [ 0.000000e+00, %4637 ], [ 0.000000e+00, %4579 ]
  %4856 = phi float [ %4576, %4550 ], [ 0.000000e+00, %4512 ], [ %4850, %4840 ], [ 0.000000e+00, %4582 ], [ 0.000000e+00, %4637 ], [ 0.000000e+00, %4579 ]
  %4857 = phi float [ %4578, %4550 ], [ 0.000000e+00, %4512 ], [ %4852, %4840 ], [ 0.000000e+00, %4582 ], [ 0.000000e+00, %4637 ], [ 0.000000e+00, %4579 ]
  %4858 = phi i1 [ true, %4550 ], [ false, %4512 ], [ true, %4840 ], [ false, %4582 ], [ false, %4637 ], [ false, %4579 ]
  %4859 = and i32 %152, 3
  %4860 = icmp eq i32 %4859, 1
  %4861 = select i1 %4860, float 1.000000e+00, float 0.000000e+00
  %4862 = fsub fast float %4854, %136
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = select i1 %4858, float %4863, float 1.000000e+00
  %4865 = fmul fast float %4864, %4861
  %4866 = icmp eq i32 %4859, 3
  %4867 = select i1 %4866, float 1.000000e+00, float %4865
  %4868 = call float @dx.op.binary.f32(i32 35, float %4389, float %4867)  ; FMax(a,b)
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = fcmp fast une float %4869, 0.000000e+00
  %4871 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = call float @dx.op.unary.f32(i32 25, float %4871)  ; Rsqrt(value)
  br i1 %4870, label %4880, label %4873

; <label>:4873                                    ; preds = %4853
  %4874 = fmul fast float %4872, %134
  %4875 = fmul fast float %4872, %135
  %4876 = fmul fast float %4872, %136
  %4877 = fsub fast float -0.000000e+00, %4874
  %4878 = fsub fast float -0.000000e+00, %4875
  %4879 = fsub fast float -0.000000e+00, %4876
  br label %5048

; <label>:4880                                    ; preds = %4853
  %4881 = fmul fast float %134, %4872
  %4882 = fsub fast float -0.000000e+00, %4881
  %4883 = fmul fast float %135, %4872
  %4884 = fsub fast float -0.000000e+00, %4883
  %4885 = fmul fast float %136, %4872
  %4886 = fsub fast float -0.000000e+00, %4885
  %4887 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4884, float %4886, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = fmul fast float %4869, 2.500000e+00
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fmul fast float %4869, 0x4013FFFFE0000000
  %4891 = fadd fast float %4890, 0xBFFFFFFFE0000000
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4869, 0x4004000020000000
  %4894 = fadd fast float %4893, 0xBFF8000040000000
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4897 = fmul fast float %4392, 1.000000e+01
  %4898 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4899 = fmul fast float %4898, 2.000000e+00
  %4900 = fsub fast float 3.000000e+00, %4899
  %4901 = fmul fast float %4898, %4898
  %4902 = fmul fast float %4901, %4900
  %4903 = fsub fast float 1.000000e+00, %4902
  %4904 = fsub fast float 0x3FE3333340000000, %4413
  %4905 = fmul fast float %4904, 0x400AAAAAA0000000
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fmul fast float %4903, %4906
  %4908 = fmul fast float %4491, 0x3FEA2B8620000000
  %4909 = fmul fast float %4492, 0x3FEA2B8620000000
  %4910 = fmul fast float %4493, 0x3FEA2B8620000000
  %4911 = fadd fast float %4908, 0x3FC81DFBA0000000
  %4912 = fmul fast float %4911, %4491
  %4913 = fadd fast float %4912, 0x3F910E6020000000
  %4914 = fadd fast float %4909, 0x3FC81DFBA0000000
  %4915 = fmul fast float %4914, %4492
  %4916 = fadd fast float %4915, 0x3F910E6020000000
  %4917 = fadd fast float %4910, 0x3FC81DFBA0000000
  %4918 = fmul fast float %4917, %4493
  %4919 = fadd fast float %4918, 0x3F910E6020000000
  %4920 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4921 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4923 = fsub fast float %4920, %4491
  %4924 = fsub fast float %4921, %4492
  %4925 = fsub fast float %4922, %4493
  %4926 = fmul fast float %4923, %4896
  %4927 = fmul fast float %4926, %4907
  %4928 = fmul fast float %4924, %4896
  %4929 = fmul fast float %4928, %4907
  %4930 = fmul fast float %4925, %4896
  %4931 = fmul fast float %4930, %4907
  %4932 = fadd fast float %4927, %4491
  %4933 = fadd fast float %4929, %4492
  %4934 = fadd fast float %4931, %4493
  %4935 = fmul fast float %4386, %4386
  %4936 = fmul fast float %4935, %4935
  %4937 = fadd fast float %4892, 1.000000e+00
  %4938 = fsub fast float %4937, %4907
  %4939 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4940 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fsub fast float 1.000000e+00, %4936
  %4943 = call float @dx.op.binary.f32(i32 36, float %4939, float %4942)  ; FMin(a,b)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4945 = call float @dx.op.binary.f32(i32 35, float %4943, float %4944)  ; FMax(a,b)
  %4946 = fadd fast float %4941, 0xBFE4CCCCC0000000
  %4947 = fmul fast float %4946, 0x4006DB6DA0000000
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fmul fast float %4948, 2.000000e+00
  %4950 = fsub fast float 3.000000e+00, %4949
  %4951 = bitcast float %4410 to i32
  %4952 = ashr i32 %4951, 1
  %4953 = add nsw i32 %4952, 532487669
  %4954 = bitcast i32 %4953 to float
  %4955 = fsub fast float 1.000000e+00, %4954
  %4956 = bitcast float %4955 to i32
  %4957 = sub nsw i32 2129859010, %4956
  %4958 = bitcast i32 %4957 to float
  %4959 = fmul fast float %4958, 2.000000e+00
  %4960 = bitcast float %4411 to i32
  %4961 = ashr i32 %4960, 1
  %4962 = add nsw i32 %4961, 532487669
  %4963 = bitcast i32 %4962 to float
  %4964 = fsub fast float 1.000000e+00, %4963
  %4965 = bitcast float %4964 to i32
  %4966 = sub nsw i32 2129859010, %4965
  %4967 = bitcast i32 %4966 to float
  %4968 = fmul fast float %4967, 2.000000e+00
  %4969 = bitcast float %4412 to i32
  %4970 = ashr i32 %4969, 1
  %4971 = add nsw i32 %4970, 532487669
  %4972 = bitcast i32 %4971 to float
  %4973 = fsub fast float 1.000000e+00, %4972
  %4974 = bitcast float %4973 to i32
  %4975 = sub nsw i32 2129859010, %4974
  %4976 = bitcast i32 %4975 to float
  %4977 = fmul fast float %4976, 2.000000e+00
  %4978 = fsub fast float 0x4002A9FBE0000000, %4959
  %4979 = fadd fast float %4959, 0x3FD54FDF00000000
  %4980 = bitcast float %4979 to i32
  %4981 = sub nsw i32 2129859010, %4980
  %4982 = bitcast i32 %4981 to float
  %4983 = fmul fast float %4982, %4978
  %4984 = fmul fast float %4983, %4983
  %4985 = fsub fast float 0x4002A9FBE0000000, %4968
  %4986 = fadd fast float %4968, 0x3FD54FDF00000000
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = fmul fast float %4989, %4985
  %4991 = fmul fast float %4990, %4990
  %4992 = fsub fast float 0x4002A9FBE0000000, %4977
  %4993 = fadd fast float %4977, 0x3FD54FDF00000000
  %4994 = bitcast float %4993 to i32
  %4995 = sub nsw i32 2129859010, %4994
  %4996 = bitcast i32 %4995 to float
  %4997 = fmul fast float %4996, %4992
  %4998 = fmul fast float %4997, %4997
  %4999 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4984)  ; FMax(a,b)
  %5000 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4991)  ; FMax(a,b)
  %5001 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4998)  ; FMax(a,b)
  %5002 = fsub fast float 1.000000e+00, %4887
  %5003 = fadd fast float %5002, %4903
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = fsub fast float 1.000000e+00, %4867
  %5006 = fmul fast float %4945, %5005
  %5007 = fmul fast float %4948, %4948
  %5008 = fmul fast float %5007, %5006
  %5009 = fmul fast float %5008, %4950
  %5010 = fmul fast float %5005, 0xBFE99999A0000000
  %5011 = fmul fast float %5010, %4896
  %5012 = fmul fast float %5011, %4907
  %5013 = fadd fast float %5012, 1.000000e+00
  %5014 = fadd fast float %4413, -1.000000e+00
  %5015 = fmul fast float %5013, %5014
  %5016 = fadd fast float %5015, 1.000000e+00
  %5017 = fsub fast float %4999, %4410
  %5018 = fsub fast float %5000, %4411
  %5019 = fsub fast float %5001, %4412
  %5020 = fmul fast float %5009, %5017
  %5021 = fmul fast float %5009, %5018
  %5022 = fmul fast float %5009, %5019
  %5023 = fadd fast float %5020, %4410
  %5024 = fadd fast float %5021, %4411
  %5025 = fadd fast float %5022, %4412
  %5026 = fsub fast float %84, %4371
  %5027 = fsub fast float %86, %4372
  %5028 = fsub fast float %88, %4373
  %5029 = fmul fast float %5009, %5026
  %5030 = fmul fast float %5009, %5027
  %5031 = fmul fast float %5009, %5028
  %5032 = fadd fast float %5029, %4371
  %5033 = fadd fast float %5030, %4372
  %5034 = fadd fast float %5031, %4373
  %5035 = fmul fast float %5009, %5004
  %5036 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5037 = fsub fast float 1.000000e+00, %5036
  %5038 = fmul fast float %5035, %5037
  %5039 = fadd fast float %5038, %5036
  %5040 = fsub fast float 1.000000e+00, %4386
  %5041 = fmul fast float %5009, %5040
  %5042 = fadd fast float %5041, %4386
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.unary.f32(i32 25, float %5043)  ; Rsqrt(value)
  %5045 = fmul fast float %5032, %5044
  %5046 = fmul fast float %5033, %5044
  %5047 = fmul fast float %5034, %5044
  br label %5048

; <label>:5048                                    ; preds = %4880, %4873
  %5049 = phi float [ %4879, %4873 ], [ %4886, %4880 ]
  %5050 = phi float [ %4878, %4873 ], [ %4884, %4880 ]
  %5051 = phi float [ %4877, %4873 ], [ %4882, %4880 ]
  %5052 = phi float [ %4876, %4873 ], [ %4885, %4880 ]
  %5053 = phi float [ %4875, %4873 ], [ %4883, %4880 ]
  %5054 = phi float [ %4874, %4873 ], [ %4881, %4880 ]
  %5055 = phi float [ %4491, %4873 ], [ %4932, %4880 ]
  %5056 = phi float [ %4492, %4873 ], [ %4933, %4880 ]
  %5057 = phi float [ %4493, %4873 ], [ %4934, %4880 ]
  %5058 = phi float [ %4410, %4873 ], [ %5023, %4880 ]
  %5059 = phi float [ %4411, %4873 ], [ %5024, %4880 ]
  %5060 = phi float [ %4412, %4873 ], [ %5025, %4880 ]
  %5061 = phi float [ %4371, %4873 ], [ %5045, %4880 ]
  %5062 = phi float [ %4372, %4873 ], [ %5046, %4880 ]
  %5063 = phi float [ %4373, %4873 ], [ %5047, %4880 ]
  %5064 = phi float [ %4413, %4873 ], [ %5039, %4880 ]
  %5065 = phi float [ %4386, %4873 ], [ %5042, %4880 ]
  %5066 = select i1 %176, float 0.000000e+00, float %5060
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %5051, float %5050, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5053, float %5052, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = fmul fast float %5069, 2.000000e+00
  %5071 = fmul fast float %5070, %5061
  %5072 = fmul fast float %5070, %5062
  %5073 = fmul fast float %5070, %5063
  %5074 = fsub fast float %5054, %5071
  %5075 = fsub fast float %5053, %5072
  %5076 = fsub fast float %5052, %5073
  %5077 = call float @dx.op.binary.f32(i32 36, float %5065, float 1.000000e+00)  ; FMin(a,b)
  %5078 = fsub fast float 1.000000e+00, %5065
  %5079 = bitcast float %5078 to i32
  %5080 = sub nsw i32 2129859010, %5079
  %5081 = bitcast i32 %5080 to float
  %5082 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5083 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5084 = fcmp fast oeq float %5083, 0.000000e+00
  %5085 = fcmp fast oeq float %5082, 0.000000e+00
  %5086 = or i1 %5085, %5084
  br i1 %5086, label %5116, label %5087

; <label>:5087                                    ; preds = %5048
  %5088 = fsub fast float -0.000000e+00, %55
  %5089 = fsub fast float -0.000000e+00, %53
  %5090 = call float @dx.op.unary.f32(i32 24, float %5083)  ; Sqrt(value)
  %5091 = fdiv fast float %5090, %5082
  %5092 = fcmp fast ogt float %5091, 0x3FFB6F8900000000
  %5093 = select i1 %5092, float 0x3FFB6F8900000000, float %5091
  %5094 = fmul fast float %5093, 0x3FE8A23460000000
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = call float @dx.op.binary.f32(i32 35, float %5093, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5097 = fmul fast float %5095, %5082
  %5098 = fmul fast float %5096, 0x3FF279A740000000
  %5099 = fadd fast float %5098, -1.000000e+00
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5088, float %5089, float %54, float %5088, float %5089, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 25, float %5100)  ; Rsqrt(value)
  %5102 = fmul fast float %5101, %5088
  %5103 = fmul fast float %5101, %5089
  %5104 = fmul fast float %5101, %54
  %5105 = fmul fast float %5099, %5099
  %5106 = fsub fast float 1.000000e+00, %5105
  %5107 = fmul fast float %5096, 0x40005F8BE0000000
  %5108 = fsub fast float 0x400C5BF8A0000000, %5107
  %5109 = fdiv fast float %5097, %5108
  %5110 = fmul fast float %5109, 0x3FEE31C3C0000000
  %5111 = fmul fast float %5110, %5106
  %5112 = fmul fast float %5096, 0x3FDACB7480000000
  %5113 = fadd fast float %5112, 0xBFD7347680000000
  %5114 = fmul fast float %5113, %5109
  %5115 = fmul fast float %5114, %5106
  br label %5116

; <label>:5116                                    ; preds = %5087, %5048
  %5117 = phi float [ %5102, %5087 ], [ 0.000000e+00, %5048 ]
  %5118 = phi float [ %5103, %5087 ], [ 0.000000e+00, %5048 ]
  %5119 = phi float [ %5104, %5087 ], [ 0.000000e+00, %5048 ]
  %5120 = phi float [ %5111, %5087 ], [ 0.000000e+00, %5048 ]
  %5121 = phi float [ %5115, %5087 ], [ 0.000000e+00, %5048 ]
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5119, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = fmul fast float %5122, 0x3FDF454380000000
  %5124 = fmul fast float %5122, %5122
  %5125 = fmul fast float %5124, 0x3FEE471020000000
  %5126 = fadd fast float %5125, 0xBFD42F6020000000
  %5127 = fmul fast float %5082, 0x3FD20DD760000000
  %5128 = fmul fast float %5126, %5121
  %5129 = fadd fast float %5128, %5127
  %5130 = fmul fast float %5123, %5120
  %5131 = fadd fast float %5129, %5130
  %5132 = fsub fast float %5129, %5130
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5117, float %5118, float %5119, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = fmul fast float %5133, 0x3FDF454380000000
  %5135 = fmul fast float %5133, %5133
  %5136 = fmul fast float %5135, 0x3FEE471020000000
  %5137 = fadd fast float %5136, 0xBFD42F6020000000
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5082, float %5120, float %5121, float 0x3FD20DD760000000, float %5134, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %5140 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = fcmp fast oeq float %5140, 0.000000e+00
  %5142 = fcmp fast oeq float %5139, 0.000000e+00
  %5143 = or i1 %5142, %5141
  br i1 %5143, label %5173, label %5144

; <label>:5144                                    ; preds = %5116
  %5145 = fsub fast float -0.000000e+00, %51
  %5146 = fsub fast float -0.000000e+00, %49
  %5147 = call float @dx.op.unary.f32(i32 24, float %5140)  ; Sqrt(value)
  %5148 = fdiv fast float %5147, %5139
  %5149 = fcmp fast ogt float %5148, 0x3FFB6F8900000000
  %5150 = select i1 %5149, float 0x3FFB6F8900000000, float %5148
  %5151 = fmul fast float %5150, 0x3FE8A23460000000
  %5152 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  %5153 = call float @dx.op.binary.f32(i32 35, float %5150, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5154 = fmul fast float %5152, %5139
  %5155 = fmul fast float %5153, 0x3FF279A740000000
  %5156 = fadd fast float %5155, -1.000000e+00
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5145, float %5146, float %50, float %5145, float %5146, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 25, float %5157)  ; Rsqrt(value)
  %5159 = fmul fast float %5158, %5145
  %5160 = fmul fast float %5158, %5146
  %5161 = fmul fast float %5158, %50
  %5162 = fmul fast float %5156, %5156
  %5163 = fsub fast float 1.000000e+00, %5162
  %5164 = fmul fast float %5153, 0x40005F8BE0000000
  %5165 = fsub fast float 0x400C5BF8A0000000, %5164
  %5166 = fdiv fast float %5154, %5165
  %5167 = fmul fast float %5166, 0x3FEE31C3C0000000
  %5168 = fmul fast float %5167, %5163
  %5169 = fmul fast float %5153, 0x3FDACB7480000000
  %5170 = fadd fast float %5169, 0xBFD7347680000000
  %5171 = fmul fast float %5170, %5166
  %5172 = fmul fast float %5171, %5163
  br label %5173

; <label>:5173                                    ; preds = %5144, %5116
  %5174 = phi float [ %5159, %5144 ], [ 0.000000e+00, %5116 ]
  %5175 = phi float [ %5160, %5144 ], [ 0.000000e+00, %5116 ]
  %5176 = phi float [ %5161, %5144 ], [ 0.000000e+00, %5116 ]
  %5177 = phi float [ %5168, %5144 ], [ 0.000000e+00, %5116 ]
  %5178 = phi float [ %5172, %5144 ], [ 0.000000e+00, %5116 ]
  %5179 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = fmul fast float %5179, 0x3FDF454380000000
  %5181 = fmul fast float %5179, %5179
  %5182 = fmul fast float %5181, 0x3FEE471020000000
  %5183 = fadd fast float %5182, 0xBFD42F6020000000
  %5184 = fmul fast float %5139, 0x3FD20DD760000000
  %5185 = fmul fast float %5183, %5178
  %5186 = fadd fast float %5185, %5184
  %5187 = fmul fast float %5180, %5177
  %5188 = fadd fast float %5186, %5187
  %5189 = fsub fast float %5186, %5187
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5174, float %5175, float %5176, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = fmul fast float %5190, 0x3FDF454380000000
  %5192 = fmul fast float %5190, %5190
  %5193 = fmul fast float %5192, 0x3FEE471020000000
  %5194 = fadd fast float %5193, 0xBFD42F6020000000
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5177, float %5178, float 0x3FD20DD760000000, float %5191, float %5194)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %5197 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %5198 = fcmp fast oeq float %5197, 0.000000e+00
  %5199 = fcmp fast oeq float %5196, 0.000000e+00
  %5200 = or i1 %5199, %5198
  br i1 %5200, label %5230, label %5201

; <label>:5201                                    ; preds = %5173
  %5202 = fsub fast float -0.000000e+00, %47
  %5203 = fsub fast float -0.000000e+00, %45
  %5204 = call float @dx.op.unary.f32(i32 24, float %5197)  ; Sqrt(value)
  %5205 = fdiv fast float %5204, %5196
  %5206 = fcmp fast ogt float %5205, 0x3FFB6F8900000000
  %5207 = select i1 %5206, float 0x3FFB6F8900000000, float %5205
  %5208 = fmul fast float %5207, 0x3FE8A23460000000
  %5209 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5210 = call float @dx.op.binary.f32(i32 35, float %5207, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5211 = fmul fast float %5209, %5196
  %5212 = fmul fast float %5210, 0x3FF279A740000000
  %5213 = fadd fast float %5212, -1.000000e+00
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5202, float %5203, float %46, float %5202, float %5203, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = call float @dx.op.unary.f32(i32 25, float %5214)  ; Rsqrt(value)
  %5216 = fmul fast float %5215, %5202
  %5217 = fmul fast float %5215, %5203
  %5218 = fmul fast float %5215, %46
  %5219 = fmul fast float %5213, %5213
  %5220 = fsub fast float 1.000000e+00, %5219
  %5221 = fmul fast float %5210, 0x40005F8BE0000000
  %5222 = fsub fast float 0x400C5BF8A0000000, %5221
  %5223 = fdiv fast float %5211, %5222
  %5224 = fmul fast float %5223, 0x3FEE31C3C0000000
  %5225 = fmul fast float %5224, %5220
  %5226 = fmul fast float %5210, 0x3FDACB7480000000
  %5227 = fadd fast float %5226, 0xBFD7347680000000
  %5228 = fmul fast float %5227, %5223
  %5229 = fmul fast float %5228, %5220
  br label %5230

; <label>:5230                                    ; preds = %5201, %5173
  %5231 = phi float [ %5216, %5201 ], [ 0.000000e+00, %5173 ]
  %5232 = phi float [ %5217, %5201 ], [ 0.000000e+00, %5173 ]
  %5233 = phi float [ %5218, %5201 ], [ 0.000000e+00, %5173 ]
  %5234 = phi float [ %5225, %5201 ], [ 0.000000e+00, %5173 ]
  %5235 = phi float [ %5229, %5201 ], [ 0.000000e+00, %5173 ]
  %5236 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5237 = fmul fast float %5236, 0x3FDF454380000000
  %5238 = fmul fast float %5236, %5236
  %5239 = fmul fast float %5238, 0x3FEE471020000000
  %5240 = fadd fast float %5239, 0xBFD42F6020000000
  %5241 = fmul fast float %5196, 0x3FD20DD760000000
  %5242 = fmul fast float %5240, %5235
  %5243 = fadd fast float %5242, %5241
  %5244 = fmul fast float %5237, %5234
  %5245 = fadd fast float %5243, %5244
  %5246 = fsub fast float %5243, %5244
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = fmul fast float %5247, 0x3FDF454380000000
  %5249 = fmul fast float %5247, %5247
  %5250 = fmul fast float %5249, 0x3FEE471020000000
  %5251 = fadd fast float %5250, 0xBFD42F6020000000
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5196, float %5234, float %5235, float 0x3FD20DD760000000, float %5248, float %5251)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.binary.f32(i32 35, float %5131, float 0.000000e+00)  ; FMax(a,b)
  %5254 = call float @dx.op.binary.f32(i32 35, float %5188, float 0.000000e+00)  ; FMax(a,b)
  %5255 = call float @dx.op.binary.f32(i32 35, float %5245, float 0.000000e+00)  ; FMax(a,b)
  %5256 = call float @dx.op.binary.f32(i32 35, float %5132, float 0.000000e+00)  ; FMax(a,b)
  %5257 = call float @dx.op.binary.f32(i32 35, float %5189, float 0.000000e+00)  ; FMax(a,b)
  %5258 = call float @dx.op.binary.f32(i32 35, float %5246, float 0.000000e+00)  ; FMax(a,b)
  %5259 = call float @dx.op.binary.f32(i32 35, float %5138, float 0.000000e+00)  ; FMax(a,b)
  %5260 = call float @dx.op.binary.f32(i32 35, float %5195, float 0.000000e+00)  ; FMax(a,b)
  %5261 = call float @dx.op.binary.f32(i32 35, float %5252, float 0.000000e+00)  ; FMax(a,b)
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5264 = call float @dx.op.binary.f32(i32 36, float %5055, float %5263)  ; FMin(a,b)
  %5265 = fsub fast float 1.000000e+00, %5077
  %5266 = fmul fast float %5264, %5265
  %5267 = fsub fast float 1.000000e+00, %5266
  %5268 = bitcast float %5267 to i32
  %5269 = sub nsw i32 2129859010, %5268
  %5270 = bitcast i32 %5269 to float
  %5271 = call float @dx.op.binary.f32(i32 36, float %5056, float %5263)  ; FMin(a,b)
  %5272 = fmul fast float %5271, %5265
  %5273 = fsub fast float 1.000000e+00, %5272
  %5274 = bitcast float %5273 to i32
  %5275 = sub nsw i32 2129859010, %5274
  %5276 = bitcast i32 %5275 to float
  %5277 = call float @dx.op.binary.f32(i32 36, float %5057, float %5263)  ; FMin(a,b)
  %5278 = fmul fast float %5277, %5265
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = bitcast float %5279 to i32
  %5281 = sub nsw i32 2129859010, %5280
  %5282 = bitcast i32 %5281 to float
  %5283 = fmul fast float %5253, %5077
  %5284 = fmul fast float %5283, %5270
  %5285 = fmul fast float %5254, %5077
  %5286 = fmul fast float %5285, %5276
  %5287 = fmul fast float %5255, %5077
  %5288 = fmul fast float %5287, %5282
  %5289 = call float @dx.op.binary.f32(i32 36, float %5058, float %5263)  ; FMin(a,b)
  %5290 = fmul fast float %5289, %5265
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = bitcast float %5291 to i32
  %5293 = sub nsw i32 2129859010, %5292
  %5294 = bitcast i32 %5293 to float
  %5295 = call float @dx.op.binary.f32(i32 36, float %5059, float %5263)  ; FMin(a,b)
  %5296 = fmul fast float %5295, %5265
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = bitcast float %5297 to i32
  %5299 = sub nsw i32 2129859010, %5298
  %5300 = bitcast i32 %5299 to float
  %5301 = call float @dx.op.binary.f32(i32 36, float %5066, float %5263)  ; FMin(a,b)
  %5302 = fmul fast float %5301, %5265
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = bitcast float %5303 to i32
  %5305 = sub nsw i32 2129859010, %5304
  %5306 = bitcast i32 %5305 to float
  %5307 = fmul fast float %5259, %5077
  %5308 = fmul fast float %5307, %5294
  %5309 = fmul fast float %5260, %5077
  %5310 = fmul fast float %5309, %5300
  %5311 = fmul fast float %5261, %5077
  %5312 = fmul fast float %5311, %5306
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5284, float %5286, float %5288, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = select i1 %176, float 0.000000e+00, float %5284
  %5315 = select i1 %176, float %5313, float %5286
  %5316 = select i1 %176, float 0.000000e+00, float %5288
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = select i1 %176, float 0.000000e+00, float %5256
  %5319 = select i1 %176, float %5317, float %5257
  %5320 = select i1 %176, float 0.000000e+00, float %5258
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5308, float %5310, float %5312, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = select i1 %176, float 0.000000e+00, float %5308
  %5323 = select i1 %176, float %5321, float %5310
  %5324 = select i1 %176, float 0.000000e+00, float %5312
  %5325 = fmul fast float %5068, 9.843750e-01
  %5326 = fmul fast float %5064, 9.843750e-01
  %5327 = fadd fast float %5325, 7.812500e-03
  %5328 = fadd fast float %5326, 7.812500e-03
  %5329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5327, float %5328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5330 = extractvalue %dx.types.ResRet.f32 %5329, 2
  %5331 = extractvalue %dx.types.ResRet.f32 %5329, 3
  %5332 = fmul fast float %5330, %5058
  %5333 = fmul fast float %5330, %5059
  %5334 = fmul fast float %5330, %5066
  %5335 = fadd fast float %5332, %5331
  %5336 = fadd fast float %5333, %5331
  %5337 = fadd fast float %5334, %5331
  %5338 = fcmp fast ogt float %4387, 0.000000e+00
  br i1 %5338, label %5339, label %5365

; <label>:5339                                    ; preds = %5230
  %5340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4387, float %5068, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5341 = extractvalue %dx.types.ResRet.f32 %5340, 0
  %5342 = extractvalue %dx.types.ResRet.f32 %5340, 1
  %5343 = extractvalue %dx.types.ResRet.f32 %5340, 2
  %5344 = fadd fast float %5341, -5.000000e-01
  %5345 = fadd fast float %5342, -5.000000e-01
  %5346 = fadd fast float %5343, -5.000000e-01
  %5347 = fsub fast float 1.000000e+00, %5058
  %5348 = fsub fast float 1.000000e+00, %5059
  %5349 = fsub fast float 1.000000e+00, %5066
  %5350 = fmul fast float %5058, 4.000000e+00
  %5351 = fmul fast float %5350, %5347
  %5352 = fmul fast float %5351, %5344
  %5353 = fmul fast float %5059, 4.000000e+00
  %5354 = fmul fast float %5353, %5348
  %5355 = fmul fast float %5354, %5345
  %5356 = fmul fast float %5066, 4.000000e+00
  %5357 = fmul fast float %5356, %5349
  %5358 = fmul fast float %5357, %5346
  %5359 = fadd fast float %5352, %5335
  %5360 = fadd fast float %5355, %5336
  %5361 = fadd fast float %5358, %5337
  %5362 = call float @dx.op.unary.f32(i32 7, float %5359)  ; Saturate(value)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  br label %5365

; <label>:5365                                    ; preds = %5339, %5230
  %5366 = phi float [ %5362, %5339 ], [ %5335, %5230 ]
  %5367 = phi float [ %5363, %5339 ], [ %5336, %5230 ]
  %5368 = phi float [ %5364, %5339 ], [ %5337, %5230 ]
  %5369 = call float @dx.op.binary.f32(i32 35, float %5367, float %5368)  ; FMax(a,b)
  %5370 = call float @dx.op.binary.f32(i32 35, float %5366, float %5369)  ; FMax(a,b)
  %5371 = fsub fast float 1.000000e+00, %5370
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = fcmp fast ogt float %5372, 0x3E7FF19E20000000
  %5374 = fdiv fast float 1.000000e+00, %5372
  %5375 = select i1 %5373, float %5374, float 0.000000e+00
  %5376 = fmul fast float %5375, %5055
  %5377 = fmul fast float %5375, %5056
  %5378 = fmul fast float %5375, %5057
  %5379 = fadd fast float %5376, -1.000000e+00
  %5380 = fadd fast float %5377, -1.000000e+00
  %5381 = fadd fast float %5378, -1.000000e+00
  %5382 = fmul fast float %5379, 5.000000e-01
  %5383 = fmul fast float %5380, 5.000000e-01
  %5384 = fmul fast float %5381, 5.000000e-01
  %5385 = fadd fast float %5382, 1.000000e+00
  %5386 = fadd fast float %5383, 1.000000e+00
  %5387 = fadd fast float %5384, 1.000000e+00
  %5388 = fmul fast float %5366, %5322
  %5389 = fmul fast float %5367, %5323
  %5390 = fmul fast float %5368, %5324
  %5391 = fsub fast float 1.000000e+00, %5068
  %5392 = bitcast float %5391 to i32
  %5393 = sitofp i32 %5392 to float
  %5394 = fmul fast float %5393, 5.000000e+00
  %5395 = fadd fast float %5394, 0xC1EFBF8940000000
  %5396 = fptosi float %5395 to i32
  %5397 = bitcast i32 %5396 to float
  %5398 = fmul fast float %5397, %4388
  %5399 = fmul fast float %5314, %5398
  %5400 = fmul fast float %5399, %5371
  %5401 = fmul fast float %5400, %5385
  %5402 = fmul fast float %5315, %5398
  %5403 = fmul fast float %5402, %5371
  %5404 = fmul fast float %5403, %5386
  %5405 = fmul fast float %5316, %5398
  %5406 = fmul fast float %5405, %5371
  %5407 = fmul fast float %5406, %5387
  %5408 = fadd fast float %5388, %4374
  %5409 = fadd fast float %5408, %5401
  %5410 = fmul fast float %5409, %4384
  %5411 = fadd fast float %5389, %4375
  %5412 = fadd fast float %5411, %5404
  %5413 = fmul fast float %5412, %4384
  %5414 = fadd fast float %5390, %4376
  %5415 = fadd fast float %5414, %5407
  %5416 = fmul fast float %5415, %4384
  %5417 = fmul fast float %5371, %5316
  %5418 = fmul fast float %5371, %5315
  %5419 = fmul fast float %5371, %5314
  %5420 = fmul fast float %5371, %4479
  %5421 = fadd fast float %5420, -1.000000e+00
  %5422 = fmul fast float %5421, %4384
  %5423 = fadd fast float %5422, 1.000000e+00
  %5424 = fmul fast float %5371, %4478
  %5425 = fadd fast float %5424, -1.000000e+00
  %5426 = fmul fast float %5425, %4384
  %5427 = fadd fast float %5426, 1.000000e+00
  %5428 = fmul fast float %5371, %4477
  %5429 = fadd fast float %5428, -1.000000e+00
  %5430 = fmul fast float %5429, %4384
  %5431 = fadd fast float %5430, 1.000000e+00
  %5432 = fmul fast float %5431, %5318
  %5433 = fmul fast float %5427, %5319
  %5434 = fmul fast float %5423, %5320
  %5435 = fadd fast float %5432, %5419
  %5436 = fmul fast float %5435, %4384
  %5437 = fadd fast float %5433, %5418
  %5438 = fmul fast float %5437, %4384
  %5439 = fadd fast float %5434, %5417
  %5440 = fmul fast float %5439, %4384
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 3
  %5443 = fcmp fast oeq float %5442, 0.000000e+00
  br i1 %5443, label %5725, label %5444

; <label>:5444                                    ; preds = %5365
  %5445 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5446 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5447 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5449, float %5450, float %5451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = select i1 %176, float %5453, float %5449
  %5457 = select i1 %176, float %5455, float %5450
  %5458 = select i1 %176, float %5454, float %5451
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5461 = fcmp fast une float %5460, 0.000000e+00
  br i1 %5461, label %5462, label %5479

; <label>:5462                                    ; preds = %5444
  %5463 = fptoui float %75 to i32
  %5464 = fptoui float %76 to i32
  %5465 = lshr i32 %5463, 4
  %5466 = lshr i32 %5464, 4
  %5467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.f32 %5467, 0
  %5469 = fptoui float %5468 to i32
  %5470 = add i32 %5469, 15
  %5471 = lshr i32 %5470, 4
  %5472 = mul i32 %5471, %5466
  %5473 = add i32 %5472, %5465
  %5474 = shl i32 %5473, 3
  %5475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5474, i32 undef)  ; BufferLoad(srv,index,wot)
  %5476 = extractvalue %dx.types.ResRet.i32 %5475, 0
  %5477 = and i32 %5476, -268435456
  %5478 = icmp eq i32 %5477, -1342177280
  br i1 %5478, label %5489, label %5479

; <label>:5479                                    ; preds = %5462, %5444
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 2
  %5482 = extractvalue %dx.types.CBufRet.f32 %5480, 3
  %5483 = fmul fast float %5481, %75
  %5484 = fmul fast float %5482, %76
  %5485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5483, float %5484, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5486 = extractvalue %dx.types.ResRet.f32 %5485, 0
  %5487 = extractvalue %dx.types.ResRet.f32 %5485, 1
  %5488 = extractvalue %dx.types.ResRet.f32 %5485, 2
  br label %5489

; <label>:5489                                    ; preds = %5479, %5462
  %5490 = phi float [ %5486, %5479 ], [ 0.000000e+00, %5462 ]
  %5491 = phi float [ %5487, %5479 ], [ 0.000000e+00, %5462 ]
  %5492 = phi float [ %5488, %5479 ], [ 0.000000e+00, %5462 ]
  %5493 = call float @dx.op.binary.f32(i32 36, float %5491, float %5492)  ; FMin(a,b)
  %5494 = call float @dx.op.binary.f32(i32 36, float %5490, float %5493)  ; FMin(a,b)
  %5495 = fcmp fast ogt float %5494, 0.000000e+00
  br i1 %5495, label %5496, label %5725, !dx.controlflow.hints !75

; <label>:5496                                    ; preds = %5489
  %5497 = fmul fast float %5490, %5456
  %5498 = fmul fast float %5491, %5457
  %5499 = fmul fast float %5492, %5458
  %5500 = fsub fast float %5445, %5054
  %5501 = fsub fast float %5446, %5053
  %5502 = fsub fast float %5447, %5052
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5500, float %5501, float %5502, float %5500, float %5501, float %5502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = call float @dx.op.unary.f32(i32 25, float %5503)  ; Rsqrt(value)
  %5505 = fmul fast float %5504, %5500
  %5506 = fmul fast float %5504, %5501
  %5507 = fmul fast float %5504, %5502
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5446, float %5447, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5050, float %5049, float %5505, float %5506, float %5507)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5511 = fmul fast float %5510, %5510
  %5512 = fmul fast float %5511, %5081
  %5513 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5514 = fmul fast float %5513, %5510
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %5505, float %5506, float %5507)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fmul fast float %5515, %5515
  %5517 = call float @dx.op.unary.f32(i32 6, float %5508)  ; FAbs(value)
  %5518 = fsub fast float 1.000000e+00, %5064
  %5519 = call float @dx.op.binary.f32(i32 35, float %5518, float 0x3F847AE140000000)  ; FMax(a,b)
  %5520 = fmul fast float %5519, %5519
  %5521 = fmul fast float %5520, %5520
  %5522 = fsub fast float 1.000000e+00, %5521
  %5523 = fmul fast float %5068, %5068
  %5524 = fmul fast float %5523, %5522
  %5525 = fadd fast float %5524, %5521
  %5526 = bitcast float %5525 to i32
  %5527 = ashr i32 %5526, 1
  %5528 = add nsw i32 %5527, 532487669
  %5529 = bitcast i32 %5528 to float
  %5530 = fadd fast float %5529, %5068
  %5531 = fmul fast float %5521, %5516
  %5532 = fsub fast float 1.000000e+00, %5516
  %5533 = fadd fast float %5532, %5531
  %5534 = fmul fast float %5517, %5517
  %5535 = fmul fast float %5534, %5522
  %5536 = fadd fast float %5535, %5521
  %5537 = bitcast float %5536 to i32
  %5538 = ashr i32 %5537, 1
  %5539 = add nsw i32 %5538, 532487669
  %5540 = bitcast i32 %5539 to float
  %5541 = fadd fast float %5540, %5517
  %5542 = fmul fast float %5533, %5533
  %5543 = fmul fast float %5542, %5530
  %5544 = fmul fast float %5543, %5541
  %5545 = fdiv fast float 0x3FF0A00000000000, %5544
  %5546 = fmul fast float %5545, %5521
  %5547 = call float @dx.op.unary.f32(i32 6, float %5509)  ; FAbs(value)
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = bitcast float %5548 to i32
  %5550 = sitofp i32 %5549 to float
  %5551 = fmul fast float %5550, 5.000000e+00
  %5552 = fadd fast float %5551, 0xC1EFBF8940000000
  %5553 = fptosi float %5552 to i32
  %5554 = bitcast i32 %5553 to float
  %5555 = fsub fast float 1.000000e+00, %5058
  %5556 = fsub fast float 1.000000e+00, %5059
  %5557 = fsub fast float 1.000000e+00, %5066
  %5558 = fmul fast float %5554, %5555
  %5559 = fmul fast float %5554, %5556
  %5560 = fmul fast float %5554, %5557
  %5561 = fadd fast float %5558, %5058
  %5562 = fadd fast float %5559, %5059
  %5563 = fadd fast float %5560, %5066
  br i1 %5338, label %5564, label %5587

; <label>:5564                                    ; preds = %5496
  %5565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4387, float %5547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5566 = extractvalue %dx.types.ResRet.f32 %5565, 0
  %5567 = extractvalue %dx.types.ResRet.f32 %5565, 1
  %5568 = extractvalue %dx.types.ResRet.f32 %5565, 2
  %5569 = fadd fast float %5566, -5.000000e-01
  %5570 = fadd fast float %5567, -5.000000e-01
  %5571 = fadd fast float %5568, -5.000000e-01
  %5572 = fmul fast float %5058, 4.000000e+00
  %5573 = fmul fast float %5572, %5555
  %5574 = fmul fast float %5573, %5569
  %5575 = fmul fast float %5059, 4.000000e+00
  %5576 = fmul fast float %5575, %5556
  %5577 = fmul fast float %5576, %5570
  %5578 = fmul fast float %5066, 4.000000e+00
  %5579 = fmul fast float %5578, %5557
  %5580 = fmul fast float %5579, %5571
  %5581 = fadd fast float %5574, %5561
  %5582 = fadd fast float %5577, %5562
  %5583 = fadd fast float %5580, %5563
  %5584 = call float @dx.op.unary.f32(i32 7, float %5581)  ; Saturate(value)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5582)  ; Saturate(value)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  br label %5587

; <label>:5587                                    ; preds = %5564, %5496
  %5588 = phi float [ %5584, %5564 ], [ %5561, %5496 ]
  %5589 = phi float [ %5585, %5564 ], [ %5562, %5496 ]
  %5590 = phi float [ %5586, %5564 ], [ %5563, %5496 ]
  %5591 = fmul fast float %5508, 9.843750e-01
  %5592 = fadd fast float %5591, 7.812500e-03
  %5593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5592, float %5328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5594 = extractvalue %dx.types.ResRet.f32 %5593, 2
  %5595 = extractvalue %dx.types.ResRet.f32 %5593, 3
  %5596 = fmul fast float %5594, %5058
  %5597 = fmul fast float %5594, %5059
  %5598 = fmul fast float %5594, %5066
  %5599 = fadd fast float %5596, %5595
  %5600 = fadd fast float %5597, %5595
  %5601 = fadd fast float %5598, %5595
  br i1 %5338, label %5602, label %5625

; <label>:5602                                    ; preds = %5587
  %5603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4387, float %5508, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5604 = extractvalue %dx.types.ResRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.ResRet.f32 %5603, 1
  %5606 = extractvalue %dx.types.ResRet.f32 %5603, 2
  %5607 = fadd fast float %5604, -5.000000e-01
  %5608 = fadd fast float %5605, -5.000000e-01
  %5609 = fadd fast float %5606, -5.000000e-01
  %5610 = fmul fast float %5058, 4.000000e+00
  %5611 = fmul fast float %5610, %5555
  %5612 = fmul fast float %5611, %5607
  %5613 = fmul fast float %5059, 4.000000e+00
  %5614 = fmul fast float %5613, %5556
  %5615 = fmul fast float %5614, %5608
  %5616 = fmul fast float %5066, 4.000000e+00
  %5617 = fmul fast float %5616, %5557
  %5618 = fmul fast float %5617, %5609
  %5619 = fadd fast float %5612, %5599
  %5620 = fadd fast float %5615, %5600
  %5621 = fadd fast float %5618, %5601
  %5622 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5623 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5624 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  br label %5625

; <label>:5625                                    ; preds = %5602, %5587
  %5626 = phi float [ %5622, %5602 ], [ %5599, %5587 ]
  %5627 = phi float [ %5623, %5602 ], [ %5600, %5587 ]
  %5628 = phi float [ %5624, %5602 ], [ %5601, %5587 ]
  %5629 = call float @dx.op.binary.f32(i32 35, float %5627, float %5628)  ; FMax(a,b)
  %5630 = call float @dx.op.binary.f32(i32 35, float %5626, float %5629)  ; FMax(a,b)
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = fsub fast float -0.000000e+00, %5061
  %5633 = fsub fast float -0.000000e+00, %5062
  %5634 = fsub fast float -0.000000e+00, %5063
  %5635 = call float @dx.op.dot3.f32(i32 55, float %5445, float %5446, float %5447, float %5632, float %5633, float %5634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = fmul fast float %5636, 9.843750e-01
  %5638 = fadd fast float %5637, 7.812500e-03
  %5639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5638, float %5328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5640 = extractvalue %dx.types.ResRet.f32 %5639, 2
  %5641 = extractvalue %dx.types.ResRet.f32 %5639, 3
  %5642 = fmul fast float %5640, %5058
  %5643 = fmul fast float %5640, %5059
  %5644 = fmul fast float %5640, %5066
  %5645 = fadd fast float %5642, %5641
  %5646 = fadd fast float %5643, %5641
  %5647 = fadd fast float %5644, %5641
  br i1 %5338, label %5648, label %5671

; <label>:5648                                    ; preds = %5625
  %5649 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4387, float %5636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5650 = extractvalue %dx.types.ResRet.f32 %5649, 0
  %5651 = extractvalue %dx.types.ResRet.f32 %5649, 1
  %5652 = extractvalue %dx.types.ResRet.f32 %5649, 2
  %5653 = fadd fast float %5650, -5.000000e-01
  %5654 = fadd fast float %5651, -5.000000e-01
  %5655 = fadd fast float %5652, -5.000000e-01
  %5656 = fmul fast float %5058, 4.000000e+00
  %5657 = fmul fast float %5656, %5555
  %5658 = fmul fast float %5657, %5653
  %5659 = fmul fast float %5059, 4.000000e+00
  %5660 = fmul fast float %5659, %5556
  %5661 = fmul fast float %5660, %5654
  %5662 = fmul fast float %5066, 4.000000e+00
  %5663 = fmul fast float %5662, %5557
  %5664 = fmul fast float %5663, %5655
  %5665 = fadd fast float %5658, %5645
  %5666 = fadd fast float %5661, %5646
  %5667 = fadd fast float %5664, %5647
  %5668 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5669 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5670 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  br label %5671

; <label>:5671                                    ; preds = %5648, %5625
  %5672 = phi float [ %5668, %5648 ], [ %5645, %5625 ]
  %5673 = phi float [ %5669, %5648 ], [ %5646, %5625 ]
  %5674 = phi float [ %5670, %5648 ], [ %5647, %5625 ]
  %5675 = call float @dx.op.binary.f32(i32 35, float %5673, float %5674)  ; FMax(a,b)
  %5676 = call float @dx.op.binary.f32(i32 35, float %5672, float %5675)  ; FMax(a,b)
  %5677 = fsub fast float 1.000000e+00, %5676
  %5678 = fmul fast float %5677, %5636
  %5679 = fmul fast float %5678, %4477
  %5680 = fmul fast float %5678, %4478
  %5681 = fmul fast float %5678, %4479
  %5682 = fmul fast float %5588, %5546
  %5683 = fmul fast float %5589, %5546
  %5684 = fmul fast float %5590, %5546
  %5685 = fsub fast float 1.000000e+00, %5509
  %5686 = bitcast float %5685 to i32
  %5687 = sitofp i32 %5686 to float
  %5688 = fmul fast float %5687, 5.000000e+00
  %5689 = fadd fast float %5688, 0xC1EFBF8940000000
  %5690 = fptosi float %5689 to i32
  %5691 = bitcast i32 %5690 to float
  %5692 = fmul fast float %5691, %4388
  %5693 = fmul fast float %5631, %5692
  %5694 = fmul fast float %5693, %5385
  %5695 = fmul fast float %5693, %5386
  %5696 = fmul fast float %5693, %5387
  %5697 = fmul fast float %5631, %5514
  %5698 = fadd fast float %5694, %5682
  %5699 = fadd fast float %5695, %5683
  %5700 = fadd fast float %5696, %5684
  %5701 = fadd fast float %5679, %5697
  %5702 = fadd fast float %5680, %5697
  %5703 = fadd fast float %5681, %5697
  %5704 = fmul fast float %5701, %5497
  %5705 = fmul fast float %5702, %5498
  %5706 = fmul fast float %5703, %5499
  %5707 = fmul fast float %5514, %5497
  %5708 = fmul fast float %5707, %5698
  %5709 = fmul fast float %5514, %5498
  %5710 = fmul fast float %5709, %5699
  %5711 = fmul fast float %5514, %5499
  %5712 = fmul fast float %5711, %5700
  %5713 = fadd fast float %5704, %5435
  %5714 = fmul fast float %5713, %4384
  %5715 = fadd fast float %5705, %5437
  %5716 = fmul fast float %5715, %4384
  %5717 = fadd fast float %5706, %5439
  %5718 = fmul fast float %5717, %4384
  %5719 = fadd fast float %5708, %5409
  %5720 = fmul fast float %5719, %4384
  %5721 = fadd fast float %5710, %5412
  %5722 = fmul fast float %5721, %4384
  %5723 = fadd fast float %5712, %5415
  %5724 = fmul fast float %5723, %4384
  br label %5725

; <label>:5725                                    ; preds = %5671, %5489, %5365
  %5726 = phi float [ %5410, %5365 ], [ %5410, %5489 ], [ %5720, %5671 ]
  %5727 = phi float [ %5413, %5365 ], [ %5413, %5489 ], [ %5722, %5671 ]
  %5728 = phi float [ %5416, %5365 ], [ %5416, %5489 ], [ %5724, %5671 ]
  %5729 = phi float [ %5436, %5365 ], [ %5436, %5489 ], [ %5714, %5671 ]
  %5730 = phi float [ %5438, %5365 ], [ %5438, %5489 ], [ %5716, %5671 ]
  %5731 = phi float [ %5440, %5365 ], [ %5440, %5489 ], [ %5718, %5671 ]
  %5732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.i32 %5732, 0
  %5734 = icmp eq i32 %5733, 0
  br i1 %5734, label %6224, label %5735

; <label>:5735                                    ; preds = %5725
  %5736 = fptoui float %75 to i32
  %5737 = fptoui float %76 to i32
  %5738 = lshr i32 %5736, 4
  %5739 = lshr i32 %5737, 4
  %5740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.i32 %5740, 0
  %5742 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5739, i32 %5741, i32 %5738)  ; UMad(a,b,c)
  %5743 = add nsw i32 %5733, -1
  %5744 = call i32 @dx.op.binary.i32(i32 37, i32 %5743, i32 0)  ; IMax(a,b)
  %5745 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5746 = fptoui float %5745 to i32
  %5747 = lshr i32 %5746, 5
  %5748 = call i32 @dx.op.binary.i32(i32 40, i32 %5747, i32 8191)  ; UMin(a,b)
  %5749 = shl i32 %5748, 2
  %5750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5749, i32 undef)  ; BufferLoad(srv,index,wot)
  %5751 = extractvalue %dx.types.ResRet.i32 %5750, 0
  %5752 = lshr i32 %5751, 16
  %5753 = and i32 %5751, 65535
  %5754 = lshr i32 %5751, 21
  %5755 = lshr i32 %5753, 5
  %5756 = call i32 @dx.op.binary.i32(i32 40, i32 %5755, i32 %5744)  ; UMin(a,b)
  %5757 = icmp ugt i32 %5754, %5756
  br i1 %5757, label %6224, label %5758

; <label>:5758                                    ; preds = %5735
  br label %5759

; <label>:5759                                    ; preds = %6214, %5758
  %5760 = phi i32 [ %6221, %6214 ], [ %5754, %5758 ]
  %5761 = phi float [ %6215, %6214 ], [ %5726, %5758 ]
  %5762 = phi float [ %6216, %6214 ], [ %5727, %5758 ]
  %5763 = phi float [ %6217, %6214 ], [ %5728, %5758 ]
  %5764 = phi float [ %6218, %6214 ], [ %5729, %5758 ]
  %5765 = phi float [ %6219, %6214 ], [ %5730, %5758 ]
  %5766 = phi float [ %6220, %6214 ], [ %5731, %5758 ]
  %5767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.i32 %5767, 0
  %5769 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5742, i32 %5768, i32 %5760)  ; UMad(a,b,c)
  %5770 = shl i32 %5769, 2
  %5771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5770, i32 undef)  ; BufferLoad(srv,index,wot)
  %5772 = extractvalue %dx.types.ResRet.i32 %5771, 0
  %5773 = shl i32 %5760, 5
  %5774 = sub nsw i32 %5752, %5773
  %5775 = call i32 @dx.op.binary.i32(i32 37, i32 %5774, i32 0)  ; IMax(a,b)
  %5776 = call i32 @dx.op.binary.i32(i32 38, i32 %5775, i32 31)  ; IMin(a,b)
  %5777 = sub nsw i32 1, %5752
  %5778 = add nsw i32 %5777, %5753
  %5779 = call i32 @dx.op.binary.i32(i32 37, i32 %5778, i32 0)  ; IMax(a,b)
  %5780 = call i32 @dx.op.binary.i32(i32 38, i32 %5779, i32 32)  ; IMin(a,b)
  %5781 = and i32 %5780, 31
  %5782 = shl i32 -1, %5781
  %5783 = xor i32 %5782, -1
  %5784 = and i32 %5776, 31
  %5785 = shl i32 %5783, %5784
  %5786 = icmp eq i32 %5780, 32
  %5787 = select i1 %5786, i32 -1, i32 %5785
  %5788 = and i32 %5787, %5772
  %5789 = icmp eq i32 %5788, 0
  br i1 %5789, label %6214, label %5790

; <label>:5790                                    ; preds = %5759
  br label %5791

; <label>:5791                                    ; preds = %5871, %5790
  %5792 = phi i32 [ %5803, %5871 ], [ %5788, %5790 ]
  %5793 = phi float [ %5872, %5871 ], [ %5761, %5790 ]
  %5794 = phi float [ %5873, %5871 ], [ %5762, %5790 ]
  %5795 = phi float [ %5874, %5871 ], [ %5763, %5790 ]
  %5796 = phi float [ %5875, %5871 ], [ %5764, %5790 ]
  %5797 = phi float [ %5876, %5871 ], [ %5765, %5790 ]
  %5798 = phi float [ %5877, %5871 ], [ %5766, %5790 ]
  %5799 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5792)  ; FirstbitLo(value)
  %5800 = add i32 %5799, %5773
  %5801 = and i32 %5799, 31
  %5802 = shl i32 1, %5801
  %5803 = xor i32 %5802, %5792
  %5804 = mul i32 %5800, 112
  %5805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5804, i32 undef)  ; BufferLoad(srv,index,wot)
  %5806 = extractvalue %dx.types.ResRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.ResRet.f32 %5805, 1
  %5808 = extractvalue %dx.types.ResRet.f32 %5805, 2
  %5809 = or i32 %5804, 12
  %5810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5809, i32 undef)  ; BufferLoad(srv,index,wot)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = add i32 %5804, 44
  %5813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5812, i32 undef)  ; BufferLoad(srv,index,wot)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 0
  %5815 = add i32 %5804, 48
  %5816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5815, i32 undef)  ; BufferLoad(srv,index,wot)
  %5817 = extractvalue %dx.types.ResRet.f32 %5816, 0
  %5818 = extractvalue %dx.types.ResRet.f32 %5816, 1
  %5819 = extractvalue %dx.types.ResRet.f32 %5816, 2
  %5820 = add i32 %5804, 80
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 2
  %5824 = call float @dx.op.dot3.f32(i32 55, float %5806, float %5807, float %5808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = select i1 %176, float %5822, float %5806
  %5826 = select i1 %176, float %5824, float %5807
  %5827 = select i1 %176, float %5823, float %5808
  %5828 = fsub fast float %5817, %134
  %5829 = fsub fast float %5818, %135
  %5830 = fsub fast float %5819, %136
  %5831 = call float @dx.op.dot3.f32(i32 55, float %5828, float %5829, float %5830, float %5828, float %5829, float %5830)  ; Dot3(ax,ay,az,bx,by,bz)
  %5832 = call float @dx.op.unary.f32(i32 24, float %5831)  ; Sqrt(value)
  %5833 = fdiv fast float 1.000000e+00, %5832
  %5834 = fmul fast float %5833, %5828
  %5835 = fmul fast float %5833, %5829
  %5836 = fmul fast float %5833, %5830
  %5837 = fadd fast float %5832, %5811
  %5838 = fdiv fast float 1.000000e+00, %5837
  %5839 = fmul float %5814, %5838
  %5840 = fmul float %5839, %5839
  %5841 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5842 = and i32 %5802, %5788
  %5843 = icmp eq i32 %5842, 0
  br i1 %5843, label %5866, label %5844, !dx.controlflow.hints !76

; <label>:5844                                    ; preds = %5791
  %5845 = lshr i32 %5736, 5
  %5846 = lshr i32 %5737, 5
  %5847 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5845, i32 %5846, i32 %5800, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5848 = extractvalue %dx.types.ResRet.i32 %5847, 0
  %5849 = and i32 %5848, 3
  %5850 = icmp eq i32 %5849, 0
  %5851 = select i1 %5850, float 1.000000e+00, float 0.000000e+00
  %5852 = icmp eq i32 %5849, 3
  br i1 %5852, label %5853, label %5866

; <label>:5853                                    ; preds = %5844
  %5854 = lshr i32 %5848, 10
  %5855 = and i32 %5854, 8160
  %5856 = and i32 %5737, 31
  %5857 = or i32 %5855, %5856
  %5858 = lshr i32 %5848, 1
  %5859 = and i32 %5858, 16352
  %5860 = and i32 %5736, 31
  %5861 = or i32 %5859, %5860
  %5862 = lshr i32 %5848, 23
  %5863 = and i32 %5862, 255
  %5864 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5861, i32 %5857, i32 %5863, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5865 = extractvalue %dx.types.ResRet.f32 %5864, 0
  br label %5866

; <label>:5866                                    ; preds = %5853, %5844, %5791
  %5867 = phi float [ %5865, %5853 ], [ %5851, %5844 ], [ 0.000000e+00, %5791 ]
  %5868 = call float @dx.op.binary.f32(i32 36, float %5867, float %5867)  ; FMin(a,b)
  %5869 = call float @dx.op.binary.f32(i32 36, float %5867, float %5868)  ; FMin(a,b)
  %5870 = fcmp fast ogt float %5869, 0.000000e+00
  br i1 %5870, label %5879, label %5871, !dx.controlflow.hints !77

; <label>:5871                                    ; preds = %6162, %5866
  %5872 = phi float [ %5793, %5866 ], [ %6210, %6162 ]
  %5873 = phi float [ %5794, %5866 ], [ %6211, %6162 ]
  %5874 = phi float [ %5795, %5866 ], [ %6212, %6162 ]
  %5875 = phi float [ %5796, %5866 ], [ %6201, %6162 ]
  %5876 = phi float [ %5797, %5866 ], [ %6202, %6162 ]
  %5877 = phi float [ %5798, %5866 ], [ %6203, %6162 ]
  %5878 = icmp eq i32 %5792, %5802
  br i1 %5878, label %6213, label %5791

; <label>:5879                                    ; preds = %5866
  %5880 = fmul fast float %5867, %5825
  %5881 = fmul fast float %5867, %5826
  %5882 = fmul fast float %5867, %5827
  %5883 = fsub fast float %5819, %4854
  %5884 = fcmp fast ogt float %5883, 0.000000e+00
  %5885 = fsub fast float %136, %4854
  %5886 = fcmp fast ogt float %5885, 0.000000e+00
  %5887 = xor i1 %5886, %5884
  %5888 = fsub fast float %4854, %5819
  %5889 = fmul fast float %5888, 2.000000e+00
  %5890 = fadd fast float %5889, %5819
  %5891 = select i1 %5887, float %5819, float %5890
  %5892 = fsub fast float %5891, %136
  %5893 = call float @dx.op.dot3.f32(i32 55, float %5828, float %5829, float %5892, float %5828, float %5829, float %5892)  ; Dot3(ax,ay,az,bx,by,bz)
  %5894 = call float @dx.op.unary.f32(i32 25, float %5893)  ; Rsqrt(value)
  %5895 = fmul fast float %5894, %5828
  %5896 = fmul fast float %5894, %5829
  %5897 = fmul fast float %5894, %5892
  %5898 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4862)  ; Dot3(ax,ay,az,bx,by,bz)
  %5899 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5895, float %5896, float %5897)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = fdiv fast float 1.000000e+00, %5899
  %5901 = fmul fast float %5900, %5898
  %5902 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5885, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5903 = fcmp fast ogt float %5902, 0.000000e+00
  %5904 = fcmp fast olt float %5902, 0.000000e+00
  %5905 = zext i1 %5903 to i32
  %5906 = zext i1 %5904 to i32
  %5907 = sub nsw i32 %5905, %5906
  %5908 = sitofp i32 %5907 to float
  %5909 = fsub fast float %5891, %4854
  %5910 = call float @dx.op.dot3.f32(i32 55, float %5828, float %5829, float %5909, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = fcmp fast ogt float %5910, 0.000000e+00
  %5912 = fcmp fast olt float %5910, 0.000000e+00
  %5913 = zext i1 %5911 to i32
  %5914 = zext i1 %5912 to i32
  %5915 = sub nsw i32 %5913, %5914
  %5916 = sitofp i32 %5915 to float
  %5917 = fcmp fast une float %5908, %5916
  br i1 %5917, label %5918, label %5928

; <label>:5918                                    ; preds = %5879
  %5919 = fmul fast float %5901, %5897
  %5920 = fmul fast float %5901, %5896
  %5921 = fmul fast float %5901, %5895
  %5922 = fmul fast float %5921, %5921
  %5923 = fmul fast float %5920, %5920
  %5924 = fadd fast float %5922, %5923
  %5925 = fmul fast float %5919, %5919
  %5926 = fadd fast float %5924, %5925
  %5927 = call float @dx.op.unary.f32(i32 24, float %5926)  ; Sqrt(value)
  br label %5940

; <label>:5928                                    ; preds = %5879
  %5929 = icmp slt i32 %5907, 0
  br i1 %5929, label %5930, label %5940

; <label>:5930                                    ; preds = %5928
  %5931 = fsub fast float %134, %5817
  %5932 = fsub fast float %135, %5818
  %5933 = fsub fast float %136, %5891
  %5934 = fmul fast float %5931, %5931
  %5935 = fmul fast float %5932, %5932
  %5936 = fadd fast float %5934, %5935
  %5937 = fmul fast float %5933, %5933
  %5938 = fadd fast float %5936, %5937
  %5939 = call float @dx.op.unary.f32(i32 24, float %5938)  ; Sqrt(value)
  br label %5940

; <label>:5940                                    ; preds = %5930, %5928, %5918
  %5941 = phi float [ %5927, %5918 ], [ %5939, %5930 ], [ 0.000000e+00, %5928 ]
  %5942 = and i1 %5886, %5884
  %5943 = fsub fast float -0.000000e+00, %5941
  %5944 = select i1 %5942, float -0.000000e+00, float %5943
  %5945 = fmul fast float %4855, 0x3FF7154760000000
  %5946 = fmul fast float %5945, %5944
  %5947 = fmul fast float %4856, 0x3FF7154760000000
  %5948 = fmul fast float %5947, %5944
  %5949 = fmul fast float %4857, 0x3FF7154760000000
  %5950 = fmul fast float %5949, %5944
  %5951 = call float @dx.op.unary.f32(i32 21, float %5946)  ; Exp(value)
  %5952 = call float @dx.op.unary.f32(i32 21, float %5948)  ; Exp(value)
  %5953 = call float @dx.op.unary.f32(i32 21, float %5950)  ; Exp(value)
  %5954 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5955 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5956 = call float @dx.op.unary.f32(i32 7, float %5953)  ; Saturate(value)
  %5957 = fmul fast float %5880, %5954
  %5958 = fmul fast float %5881, %5955
  %5959 = fmul fast float %5882, %5956
  %5960 = fsub fast float %5834, %5054
  %5961 = fsub fast float %5835, %5053
  %5962 = fsub fast float %5836, %5052
  %5963 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5961, float %5962, float %5960, float %5961, float %5962)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = call float @dx.op.unary.f32(i32 25, float %5963)  ; Rsqrt(value)
  %5965 = fmul fast float %5964, %5960
  %5966 = fmul fast float %5964, %5961
  %5967 = fmul fast float %5964, %5962
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5834, float %5835, float %5836, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5050, float %5049, float %5965, float %5966, float %5967)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  %5971 = fmul fast float %5970, %5841
  %5972 = fmul fast float %5970, %5970
  %5973 = fmul fast float %5972, %5081
  %5974 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5975 = fmul fast float %5971, %5974
  %5976 = bitcast float %5831 to i32
  %5977 = ashr i32 %5976, 1
  %5978 = sub nsw i32 1597463007, %5977
  %5979 = bitcast i32 %5978 to float
  %5980 = fmul fast float %5979, %5828
  %5981 = fmul fast float %5979, %5829
  %5982 = fmul fast float %5979, %5830
  %5983 = fsub fast float %5980, %5054
  %5984 = fsub fast float %5981, %5053
  %5985 = fsub fast float %5982, %5052
  %5986 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float %5983, float %5984, float %5985)  ; Dot3(ax,ay,az,bx,by,bz)
  %5987 = call float @dx.op.unary.f32(i32 25, float %5986)  ; Rsqrt(value)
  %5988 = fmul fast float %5983, %5987
  %5989 = fmul fast float %5984, %5987
  %5990 = fmul fast float %5985, %5987
  %5991 = call float @dx.op.dot3.f32(i32 55, float %5061, float %5062, float %5063, float %5988, float %5989, float %5990)  ; Dot3(ax,ay,az,bx,by,bz)
  %5992 = fmul fast float %5991, %5991
  %5993 = call float @dx.op.unary.f32(i32 6, float %5968)  ; FAbs(value)
  %5994 = fsub fast float 1.000000e+00, %5064
  %5995 = call float @dx.op.binary.f32(i32 35, float %5994, float 0x3F847AE140000000)  ; FMax(a,b)
  %5996 = fmul fast float %5995, %5995
  %5997 = fmul fast float %5996, %5996
  %5998 = fsub fast float 1.000000e+00, %5997
  %5999 = fmul fast float %5068, %5068
  %6000 = fmul fast float %5999, %5998
  %6001 = fadd fast float %6000, %5997
  %6002 = bitcast float %6001 to i32
  %6003 = ashr i32 %6002, 1
  %6004 = add nsw i32 %6003, 532487669
  %6005 = bitcast i32 %6004 to float
  %6006 = fadd fast float %6005, %5068
  %6007 = fmul fast float %5997, %5992
  %6008 = fsub fast float 1.000000e+00, %5992
  %6009 = fadd fast float %6008, %6007
  %6010 = fmul fast float %5993, %5993
  %6011 = fmul fast float %6010, %5998
  %6012 = fadd fast float %6011, %5997
  %6013 = bitcast float %6012 to i32
  %6014 = ashr i32 %6013, 1
  %6015 = add nsw i32 %6014, 532487669
  %6016 = bitcast i32 %6015 to float
  %6017 = fadd fast float %6016, %5993
  %6018 = fmul fast float %6009, %6009
  %6019 = fmul fast float %6018, %6006
  %6020 = fmul fast float %6019, %6017
  %6021 = fdiv fast float 1.000000e+00, %6020
  %6022 = bitcast float %5997 to i32
  %6023 = sitofp i32 %6022 to float
  %6024 = fmul fast float %6023, 0x3FE7F73180000000
  %6025 = fadd fast float %6024, 0x41AFE27C40000000
  %6026 = fptosi float %6025 to i32
  %6027 = bitcast i32 %6026 to float
  %6028 = fmul fast float %5814, 0x3FD80E9D60000000
  %6029 = fmul fast float %6028, %5979
  %6030 = fadd fast float %6027, %6029
  %6031 = bitcast float %6030 to i32
  %6032 = sub nsw i32 2129859010, %6031
  %6033 = bitcast i32 %6032 to float
  %6034 = fmul fast float %5997, %6021
  %6035 = fmul fast float %6034, %6027
  %6036 = fmul fast float %6035, %6033
  %6037 = call float @dx.op.unary.f32(i32 6, float %5969)  ; FAbs(value)
  %6038 = fsub fast float 1.000000e+00, %6037
  %6039 = bitcast float %6038 to i32
  %6040 = sitofp i32 %6039 to float
  %6041 = fmul fast float %6040, 5.000000e+00
  %6042 = fadd fast float %6041, 0xC1EFBF8940000000
  %6043 = fptosi float %6042 to i32
  %6044 = bitcast i32 %6043 to float
  %6045 = fsub fast float 1.000000e+00, %5058
  %6046 = fsub fast float 1.000000e+00, %5059
  %6047 = fsub fast float 1.000000e+00, %5066
  %6048 = fmul fast float %6044, %6045
  %6049 = fmul fast float %6044, %6046
  %6050 = fmul fast float %6044, %6047
  %6051 = fadd fast float %6048, %5058
  %6052 = fadd fast float %6049, %5059
  %6053 = fadd fast float %6050, %5066
  br i1 %5338, label %6054, label %6077

; <label>:6054                                    ; preds = %5940
  %6055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4387, float %6037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6056 = extractvalue %dx.types.ResRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.ResRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.ResRet.f32 %6055, 2
  %6059 = fadd fast float %6056, -5.000000e-01
  %6060 = fadd fast float %6057, -5.000000e-01
  %6061 = fadd fast float %6058, -5.000000e-01
  %6062 = fmul fast float %5058, 4.000000e+00
  %6063 = fmul fast float %6062, %6045
  %6064 = fmul fast float %6063, %6059
  %6065 = fmul fast float %5059, 4.000000e+00
  %6066 = fmul fast float %6065, %6046
  %6067 = fmul fast float %6066, %6060
  %6068 = fmul fast float %5066, 4.000000e+00
  %6069 = fmul fast float %6068, %6047
  %6070 = fmul fast float %6069, %6061
  %6071 = fadd fast float %6064, %6051
  %6072 = fadd fast float %6067, %6052
  %6073 = fadd fast float %6070, %6053
  %6074 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  %6075 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6076 = call float @dx.op.unary.f32(i32 7, float %6073)  ; Saturate(value)
  br label %6077

; <label>:6077                                    ; preds = %6054, %5940
  %6078 = phi float [ %6074, %6054 ], [ %6051, %5940 ]
  %6079 = phi float [ %6075, %6054 ], [ %6052, %5940 ]
  %6080 = phi float [ %6076, %6054 ], [ %6053, %5940 ]
  %6081 = fmul fast float %5968, 9.843750e-01
  %6082 = fadd fast float %6081, 7.812500e-03
  %6083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6082, float %5328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6084 = extractvalue %dx.types.ResRet.f32 %6083, 2
  %6085 = extractvalue %dx.types.ResRet.f32 %6083, 3
  %6086 = fmul fast float %6084, %5058
  %6087 = fmul fast float %6084, %5059
  %6088 = fmul fast float %6084, %5066
  %6089 = fadd fast float %6086, %6085
  %6090 = fadd fast float %6087, %6085
  %6091 = fadd fast float %6088, %6085
  br i1 %5338, label %6092, label %6115

; <label>:6092                                    ; preds = %6077
  %6093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4387, float %5968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.ResRet.f32 %6093, 2
  %6097 = fadd fast float %6094, -5.000000e-01
  %6098 = fadd fast float %6095, -5.000000e-01
  %6099 = fadd fast float %6096, -5.000000e-01
  %6100 = fmul fast float %5058, 4.000000e+00
  %6101 = fmul fast float %6100, %6045
  %6102 = fmul fast float %6101, %6097
  %6103 = fmul fast float %5059, 4.000000e+00
  %6104 = fmul fast float %6103, %6046
  %6105 = fmul fast float %6104, %6098
  %6106 = fmul fast float %5066, 4.000000e+00
  %6107 = fmul fast float %6106, %6047
  %6108 = fmul fast float %6107, %6099
  %6109 = fadd fast float %6102, %6089
  %6110 = fadd fast float %6105, %6090
  %6111 = fadd fast float %6108, %6091
  %6112 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6113 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6114 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  br label %6115

; <label>:6115                                    ; preds = %6092, %6077
  %6116 = phi float [ %6112, %6092 ], [ %6089, %6077 ]
  %6117 = phi float [ %6113, %6092 ], [ %6090, %6077 ]
  %6118 = phi float [ %6114, %6092 ], [ %6091, %6077 ]
  %6119 = call float @dx.op.binary.f32(i32 35, float %6117, float %6118)  ; FMax(a,b)
  %6120 = call float @dx.op.binary.f32(i32 35, float %6116, float %6119)  ; FMax(a,b)
  %6121 = fsub fast float 1.000000e+00, %6120
  %6122 = fsub fast float -0.000000e+00, %5061
  %6123 = fsub fast float -0.000000e+00, %5062
  %6124 = fsub fast float -0.000000e+00, %5063
  %6125 = call float @dx.op.dot3.f32(i32 55, float %5834, float %5835, float %5836, float %6122, float %6123, float %6124)  ; Dot3(ax,ay,az,bx,by,bz)
  %6126 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6127 = fmul fast float %6126, %5841
  %6128 = fmul fast float %6126, 9.843750e-01
  %6129 = fadd fast float %6128, 7.812500e-03
  %6130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6129, float %5328, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6131 = extractvalue %dx.types.ResRet.f32 %6130, 2
  %6132 = extractvalue %dx.types.ResRet.f32 %6130, 3
  %6133 = fmul fast float %6131, %5058
  %6134 = fmul fast float %6131, %5059
  %6135 = fmul fast float %6131, %5066
  %6136 = fadd fast float %6133, %6132
  %6137 = fadd fast float %6134, %6132
  %6138 = fadd fast float %6135, %6132
  br i1 %5338, label %6139, label %6162

; <label>:6139                                    ; preds = %6115
  %6140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4387, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6141 = extractvalue %dx.types.ResRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.ResRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.ResRet.f32 %6140, 2
  %6144 = fadd fast float %6141, -5.000000e-01
  %6145 = fadd fast float %6142, -5.000000e-01
  %6146 = fadd fast float %6143, -5.000000e-01
  %6147 = fmul fast float %5058, 4.000000e+00
  %6148 = fmul fast float %6147, %6045
  %6149 = fmul fast float %6148, %6144
  %6150 = fmul fast float %5059, 4.000000e+00
  %6151 = fmul fast float %6150, %6046
  %6152 = fmul fast float %6151, %6145
  %6153 = fmul fast float %5066, 4.000000e+00
  %6154 = fmul fast float %6153, %6047
  %6155 = fmul fast float %6154, %6146
  %6156 = fadd fast float %6149, %6136
  %6157 = fadd fast float %6152, %6137
  %6158 = fadd fast float %6155, %6138
  %6159 = call float @dx.op.unary.f32(i32 7, float %6156)  ; Saturate(value)
  %6160 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6161 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  br label %6162

; <label>:6162                                    ; preds = %6139, %6115
  %6163 = phi float [ %6159, %6139 ], [ %6136, %6115 ]
  %6164 = phi float [ %6160, %6139 ], [ %6137, %6115 ]
  %6165 = phi float [ %6161, %6139 ], [ %6138, %6115 ]
  %6166 = call float @dx.op.binary.f32(i32 35, float %6164, float %6165)  ; FMax(a,b)
  %6167 = call float @dx.op.binary.f32(i32 35, float %6163, float %6166)  ; FMax(a,b)
  %6168 = fsub fast float 1.000000e+00, %6167
  %6169 = fmul fast float %6127, %6168
  %6170 = fmul fast float %6169, %4477
  %6171 = fmul fast float %6169, %4478
  %6172 = fmul fast float %6169, %4479
  %6173 = fmul fast float %6078, %6036
  %6174 = fmul fast float %6079, %6036
  %6175 = fmul fast float %6080, %6036
  %6176 = fsub fast float 1.000000e+00, %5969
  %6177 = bitcast float %6176 to i32
  %6178 = sitofp i32 %6177 to float
  %6179 = fmul fast float %6178, 5.000000e+00
  %6180 = fadd fast float %6179, 0xC1EFBF8940000000
  %6181 = fptosi float %6180 to i32
  %6182 = bitcast i32 %6181 to float
  %6183 = fmul fast float %6182, %4388
  %6184 = fmul fast float %6121, %6183
  %6185 = fmul fast float %6184, %5385
  %6186 = fmul fast float %6184, %5386
  %6187 = fmul fast float %6184, %5387
  %6188 = fmul fast float %6121, %5975
  %6189 = fadd fast float %6185, %6173
  %6190 = fadd fast float %6186, %6174
  %6191 = fadd fast float %6187, %6175
  %6192 = fadd fast float %6170, %6188
  %6193 = fadd fast float %6171, %6188
  %6194 = fadd fast float %6172, %6188
  %6195 = fmul fast float %5957, %4384
  %6196 = fmul fast float %6195, %6192
  %6197 = fmul fast float %5958, %4384
  %6198 = fmul fast float %6197, %6193
  %6199 = fmul fast float %5959, %4384
  %6200 = fmul fast float %6199, %6194
  %6201 = fadd fast float %6196, %5796
  %6202 = fadd fast float %6198, %5797
  %6203 = fadd fast float %6200, %5798
  %6204 = fmul fast float %6195, %5975
  %6205 = fmul fast float %6204, %6189
  %6206 = fmul fast float %6197, %5975
  %6207 = fmul fast float %6206, %6190
  %6208 = fmul fast float %6199, %5975
  %6209 = fmul fast float %6208, %6191
  %6210 = fadd fast float %6205, %5793
  %6211 = fadd fast float %6207, %5794
  %6212 = fadd fast float %6209, %5795
  br label %5871

; <label>:6213                                    ; preds = %5871
  br label %6214

; <label>:6214                                    ; preds = %6213, %5759
  %6215 = phi float [ %5761, %5759 ], [ %5872, %6213 ]
  %6216 = phi float [ %5762, %5759 ], [ %5873, %6213 ]
  %6217 = phi float [ %5763, %5759 ], [ %5874, %6213 ]
  %6218 = phi float [ %5764, %5759 ], [ %5875, %6213 ]
  %6219 = phi float [ %5765, %5759 ], [ %5876, %6213 ]
  %6220 = phi float [ %5766, %5759 ], [ %5877, %6213 ]
  %6221 = add i32 %5760, 1
  %6222 = icmp ugt i32 %6221, %5756
  br i1 %6222, label %6223, label %5759

; <label>:6223                                    ; preds = %6214
  br label %6224

; <label>:6224                                    ; preds = %6223, %5735, %5725
  %6225 = phi float [ %5726, %5725 ], [ %5726, %5735 ], [ %6215, %6223 ]
  %6226 = phi float [ %5727, %5725 ], [ %5727, %5735 ], [ %6216, %6223 ]
  %6227 = phi float [ %5728, %5725 ], [ %5728, %5735 ], [ %6217, %6223 ]
  %6228 = phi float [ %5729, %5725 ], [ %5729, %5735 ], [ %6218, %6223 ]
  %6229 = phi float [ %5730, %5725 ], [ %5730, %5735 ], [ %6219, %6223 ]
  %6230 = phi float [ %5731, %5725 ], [ %5731, %5735 ], [ %6220, %6223 ]
  %6231 = call float @dx.op.unary.f32(i32 24, float %5055)  ; Sqrt(value)
  %6232 = call float @dx.op.unary.f32(i32 24, float %5056)  ; Sqrt(value)
  %6233 = call float @dx.op.unary.f32(i32 24, float %5057)  ; Sqrt(value)
  %6234 = fmul fast float %6231, %6228
  %6235 = fmul fast float %6232, %6229
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  br i1 %176, label %6238, label %6258

; <label>:6238                                    ; preds = %6224
  %6239 = fadd fast float %6230, %4390
  %6240 = fmul fast float %6239, %4391
  %6241 = fsub fast float 1.000000e+00, %4391
  %6242 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 3
  %6245 = fmul fast float %6244, %6242
  %6246 = fadd fast float %6245, %6240
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6249 = fmul fast float %6248, %5391
  %6250 = fsub fast float %6246, %6249
  %6251 = fadd fast float %6235, %6234
  %6252 = fmul fast float %6237, %6251
  %6253 = extractvalue %dx.types.CBufRet.f32 %6243, 1
  %6254 = fsub fast float %6250, %6253
  %6255 = extractvalue %dx.types.CBufRet.f32 %6243, 2
  %6256 = fmul fast float %6254, %6255
  %6257 = call float @dx.op.unary.f32(i32 7, float %6256)  ; Saturate(value)
  br label %6274

; <label>:6258                                    ; preds = %6224
  %6259 = fmul fast float %6233, %6230
  %6260 = fmul fast float %6237, %6234
  %6261 = fmul fast float %6237, %6235
  %6262 = fmul fast float %6259, %6237
  %6263 = add i32 %35, 356
  %6264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6263, i32 undef)  ; BufferLoad(srv,index,wot)
  %6265 = extractvalue %dx.types.ResRet.i32 %6264, 0
  %6266 = and i32 %6265, 32
  %6267 = icmp eq i32 %6266, 0
  br i1 %6267, label %6274, label %6268

; <label>:6268                                    ; preds = %6258
  %6269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6270 = extractvalue %dx.types.CBufRet.f32 %6269, 0
  %6271 = fmul fast float %6270, 0x3FE99999A0000000
  %6272 = fadd fast float %6270, %6260
  %6273 = fadd fast float %6271, %6262
  br label %6274

; <label>:6274                                    ; preds = %6268, %6258, %6238
  %6275 = phi float [ %6252, %6238 ], [ %6272, %6268 ], [ %6260, %6258 ]
  %6276 = phi float [ %6257, %6238 ], [ %6261, %6268 ], [ %6261, %6258 ]
  %6277 = phi float [ 1.000000e+00, %6238 ], [ %6273, %6268 ], [ %6262, %6258 ]
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 0
  %6280 = fmul fast float %6279, %6226
  %6281 = fmul fast float %6279, %6227
  %6282 = fadd fast float %6226, %6225
  %6283 = select i1 %176, float %6282, float %6225
  %6284 = fmul float %6283, %6279
  %6285 = select i1 %176, float 0.000000e+00, float %6280
  %6286 = select i1 %176, float 0.000000e+00, float %6281
  %6287 = fmul fast float %6275, %6231
  %6288 = fmul fast float %6276, %6232
  %6289 = fmul fast float %6277, %6233
  %6290 = fadd fast float %6284, %6287
  %6291 = fadd fast float %6285, %6288
  %6292 = fadd fast float %6286, %6289
  %6293 = select i1 %176, float %6276, float %6291
  %6294 = select i1 %176, float %6277, float %6292
  %6295 = call float @dx.op.binary.f32(i32 36, float %6290, float 3.225500e+04)  ; FMin(a,b)
  %6296 = call float @dx.op.binary.f32(i32 36, float %6293, float 3.225500e+04)  ; FMin(a,b)
  %6297 = call float @dx.op.binary.f32(i32 36, float %6294, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6295)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6296)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6297)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

