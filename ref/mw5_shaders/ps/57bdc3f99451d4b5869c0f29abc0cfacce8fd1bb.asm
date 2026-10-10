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
; shader hash: 7f6a92a9dc036173f0c83f1dc3976fed
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
  %359 = add i32 %35, 552
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
  br i1 %412, label %938, label %413

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
  %860 = and i32 %859, 26624
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %919, label %862

; <label>:862                                     ; preds = %854
  %863 = add i32 %35, 536
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = add i32 %865, 0
  %867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %866, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %868 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %867, %dx.types.Handle %72, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %869 = extractvalue %dx.types.ResRet.f32 %868, 0
  %870 = extractvalue %dx.types.ResRet.f32 %868, 1
  %871 = extractvalue %dx.types.ResRet.f32 %868, 3
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = and i32 %873, 1048576
  %875 = icmp ne i32 %874, 0
  %876 = and i32 %873, 8192
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %892, label %878

; <label>:878                                     ; preds = %862
  %879 = extractvalue %dx.types.ResRet.f32 %868, 2
  %880 = select i1 %875, float %879, float %870
  %881 = select i1 %875, float %869, float %870
  %882 = add i32 %35, 96
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = lshr i32 %884, 16
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = fmul fast float %887, 0x3F80101020000000
  %889 = fmul fast float %888, %881
  %890 = fmul fast float %888, %870
  %891 = fmul fast float %888, %880
  br label %892

; <label>:892                                     ; preds = %878, %862
  %893 = phi float [ %889, %878 ], [ 0.000000e+00, %862 ]
  %894 = phi float [ %890, %878 ], [ 0.000000e+00, %862 ]
  %895 = phi float [ %891, %878 ], [ 0.000000e+00, %862 ]
  %896 = and i32 %873, 2048
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %906, label %898

; <label>:898                                     ; preds = %892
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = shl i32 %900, 4
  %902 = and i32 %901, 32752
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = fmul fast float %903, %871
  %905 = call float @dx.op.binary.f32(i32 35, float %904, float 0x3F70101020000000)  ; FMax(a,b)
  br label %906

; <label>:906                                     ; preds = %898, %892
  %907 = phi float [ %905, %898 ], [ 0x3F70101020000000, %892 ]
  %908 = and i32 %873, 16384
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %919, label %910

; <label>:910                                     ; preds = %906
  %911 = add i32 %35, 96
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = lshr i32 %913, 24
  %915 = uitofp i32 %914 to float
  %916 = fmul fast float %869, 0x3F70101020000000
  %917 = select i1 %875, float 0x3F70101020000000, float %916
  %918 = fmul fast float %917, %915
  br label %919

; <label>:919                                     ; preds = %910, %906, %854
  %920 = phi float [ %893, %910 ], [ %893, %906 ], [ 0.000000e+00, %854 ]
  %921 = phi float [ %894, %910 ], [ %894, %906 ], [ 0.000000e+00, %854 ]
  %922 = phi float [ %895, %910 ], [ %895, %906 ], [ 0.000000e+00, %854 ]
  %923 = phi float [ %907, %910 ], [ %907, %906 ], [ 0x3F70101020000000, %854 ]
  %924 = phi float [ %918, %910 ], [ 0.000000e+00, %906 ], [ 0.000000e+00, %854 ]
  %925 = add i32 %35, 96
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = and i32 %927, 255
  %929 = uitofp i32 %928 to float
  %930 = lshr i32 %927, 8
  %931 = and i32 %930, 255
  %932 = uitofp i32 %931 to float
  %933 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %934 = fmul fast float %932, %933
  %935 = fadd fast float %934, %929
  %936 = fmul fast float %935, 0x3F70101020000000
  %937 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  br label %938

; <label>:938                                     ; preds = %919, %398
  %939 = phi float [ 0.000000e+00, %398 ], [ %808, %919 ]
  %940 = phi float [ 0.000000e+00, %398 ], [ %809, %919 ]
  %941 = phi float [ 0.000000e+00, %398 ], [ %727, %919 ]
  %942 = phi float [ 0.000000e+00, %398 ], [ %728, %919 ]
  %943 = phi float [ 0.000000e+00, %398 ], [ %729, %919 ]
  %944 = phi float [ 0.000000e+00, %398 ], [ %855, %919 ]
  %945 = phi float [ 0.000000e+00, %398 ], [ %856, %919 ]
  %946 = phi float [ 0.000000e+00, %398 ], [ %857, %919 ]
  %947 = phi float [ 0.000000e+00, %398 ], [ %920, %919 ]
  %948 = phi float [ 0.000000e+00, %398 ], [ %921, %919 ]
  %949 = phi float [ 0.000000e+00, %398 ], [ %922, %919 ]
  %950 = phi float [ 0.000000e+00, %398 ], [ %713, %919 ]
  %951 = phi float [ 0.000000e+00, %398 ], [ 1.000000e+00, %919 ]
  %952 = phi float [ 0.000000e+00, %398 ], [ %807, %919 ]
  %953 = phi float [ 0.000000e+00, %398 ], [ %810, %919 ]
  %954 = phi float [ 0.000000e+00, %398 ], [ %923, %919 ]
  %955 = phi float [ 0.000000e+00, %398 ], [ %924, %919 ]
  %956 = phi float [ 0.000000e+00, %398 ], [ %937, %919 ]
  br i1 %349, label %1909, label %957

; <label>:957                                     ; preds = %938
  %958 = icmp ult i32 %404, 2
  %959 = add i32 %35, 40
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = add i32 %35, 44
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = or i32 %964, %961
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %1909, label %967

; <label>:967                                     ; preds = %957
  %968 = and i32 %961, 262144
  %969 = icmp ne i32 %968, 0
  %970 = select i1 %969, float %38, float 1.000000e+00
  %971 = select i1 %969, float %39, float 0.000000e+00
  %972 = select i1 %969, float %40, float 0.000000e+00
  %973 = select i1 %969, float %41, float 1.000000e+00
  %974 = select i1 %969, float %42, float %63
  %975 = select i1 %969, float %43, float %64
  %976 = add i32 %35, 300
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = lshr i32 %978, 16
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = fmul fast float %980, 0x3F50624DE0000000
  %982 = add i32 %35, 104
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = lshr i32 %984, 16
  %986 = and i32 %985, 255
  %987 = lshr i32 %984, 24
  %988 = add i32 %35, 308
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = and i32 %990, 65535
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = lshr i32 %990, 16
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = add i32 %35, 48
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = lshr i32 %997, 22
  %999 = shl nuw nsw i32 %998, 5
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = shl i32 %997, 4
  %1002 = and i32 %1001, 32752
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = lshr i32 %997, 7
  %1005 = and i32 %1004, 32752
  %1006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1005)  ; LegacyF16ToF32(value)
  %1007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1008 = extractvalue %dx.types.CBufRet.f32 %1007, 3
  %1009 = fmul fast float %1008, 1.000000e+03
  %1010 = fmul fast float %259, %1009
  %1011 = call float @dx.op.unary.f32(i32 22, float %1010)  ; Frc(value)
  %1012 = fadd fast float %1011, %249
  %1013 = fmul fast float %260, %1009
  %1014 = call float @dx.op.unary.f32(i32 22, float %1013)  ; Frc(value)
  %1015 = fadd fast float %1014, %251
  %1016 = fmul fast float %981, %1009
  %1017 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1018 = fmul fast float %1017, 0x401921FB60000000
  %1019 = fadd fast float %1018, %1000
  %1020 = call float @dx.op.unary.f32(i32 13, float %1019)  ; Sin(value)
  %1021 = call float @dx.op.unary.f32(i32 12, float %1019)  ; Cos(value)
  %1022 = fsub fast float -0.000000e+00, %1020
  %1023 = fadd fast float %974, -5.000000e-01
  %1024 = fadd fast float %975, -5.000000e-01
  %1025 = fmul fast float %992, %1023
  %1026 = fmul fast float %994, %1024
  %1027 = fadd fast float %1025, 5.000000e-01
  %1028 = fadd fast float %1026, 5.000000e-01
  %1029 = fmul fast float %1003, %1027
  %1030 = fmul fast float %1006, %1028
  %1031 = fmul fast float %1021, %1029
  %1032 = call float @dx.op.tertiary.f32(i32 46, float %1022, float %1030, float %1031)  ; FMad(a,b,c)
  %1033 = fmul fast float %1020, %1029
  %1034 = call float @dx.op.tertiary.f32(i32 46, float %1021, float %1030, float %1033)  ; FMad(a,b,c)
  %1035 = fadd fast float %1012, %1032
  %1036 = fadd fast float %1015, %1034
  %1037 = icmp ugt i32 %986, 1
  %1038 = icmp ugt i32 %984, 33554431
  %1039 = or i1 %1038, %1037
  br i1 %1039, label %1040, label %1065

; <label>:1040                                    ; preds = %967
  %1041 = add i32 %35, 244
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = lshr i32 %1043, 16
  %1045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1044)  ; LegacyF16ToF32(value)
  %1046 = fmul fast float %1008, %1045
  %1047 = call float @dx.op.unary.f32(i32 22, float %1046)  ; Frc(value)
  %1048 = mul nuw nsw i32 %986, %987
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1047, %1049
  %1051 = call float @dx.op.unary.f32(i32 27, float %1050)  ; Round_ni(value)
  %1052 = fptoui float %1051 to i32
  %1053 = urem i32 %1052, %986
  %1054 = udiv i32 %1052, %987
  %1055 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1056 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1057 = uitofp i32 %1053 to float
  %1058 = uitofp i32 %1054 to float
  %1059 = fadd fast float %1055, %1057
  %1060 = fadd fast float %1056, %1058
  %1061 = uitofp i32 %986 to float
  %1062 = uitofp i32 %987 to float
  %1063 = fdiv fast float %1059, %1061
  %1064 = fdiv fast float %1060, %1062
  br label %1065

; <label>:1065                                    ; preds = %1040, %967
  %1066 = phi float [ %1063, %1040 ], [ %1035, %967 ]
  %1067 = phi float [ %1064, %1040 ], [ %1036, %967 ]
  %1068 = and i32 %961, 16777216
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1179, label %1070

; <label>:1070                                    ; preds = %1065
  %1071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1072 = extractvalue %dx.types.CBufRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.CBufRet.f32 %1071, 2
  %1075 = fadd fast float %1072, %134
  %1076 = fadd fast float %1073, %135
  %1077 = fadd fast float %1074, %136
  %1078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1079 = extractvalue %dx.types.CBufRet.f32 %1078, 0
  %1080 = call float @dx.op.unary.f32(i32 7, float %1079)  ; Saturate(value)
  %1081 = icmp eq i32 %36, 65535
  br i1 %1081, label %1176, label %1082

; <label>:1082                                    ; preds = %1070
  %1083 = lshr i32 %36, 1
  %1084 = shl i32 %1083, 2
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = and i32 %36, 1
  %1088 = icmp ne i32 %1087, 0
  %1089 = lshr i32 %1086, 16
  %1090 = and i32 %1086, 65535
  %1091 = select i1 %1088, i32 %1089, i32 %1090
  %1092 = icmp eq i32 %1091, 65535
  br i1 %1092, label %1172, label %1093

; <label>:1093                                    ; preds = %1082
  %1094 = mul nuw nsw i32 %1091, 40
  %1095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1094, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.ResRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.ResRet.f32 %1095, 2
  %1099 = add nuw nsw i32 %1094, 12
  %1100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.f32 %1100, 0
  %1102 = extractvalue %dx.types.ResRet.f32 %1100, 1
  %1103 = extractvalue %dx.types.ResRet.f32 %1100, 2
  %1104 = add nuw nsw i32 %1094, 24
  %1105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = add nuw nsw i32 %1094, 36
  %1110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = fsub fast float %1075, %1096
  %1113 = fsub fast float %1076, %1097
  %1114 = fsub fast float %1077, %1098
  %1115 = fmul fast float %1111, %1112
  %1116 = fmul fast float %1111, %1113
  %1117 = fmul fast float %1111, %1114
  %1118 = call float @dx.op.unary.f32(i32 27, float %1115)  ; Round_ni(value)
  %1119 = call float @dx.op.unary.f32(i32 27, float %1116)  ; Round_ni(value)
  %1120 = call float @dx.op.unary.f32(i32 27, float %1117)  ; Round_ni(value)
  %1121 = fadd fast float %1118, 5.000000e-01
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = fmul fast float %1121, %1101
  %1125 = fmul fast float %1122, %1102
  %1126 = fmul fast float %1123, %1103
  %1127 = shl i32 %36, 2
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1129, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call float @dx.op.unary.f32(i32 22, float %1124)  ; Frc(value)
  %1133 = call float @dx.op.unary.f32(i32 22, float %1125)  ; Frc(value)
  %1134 = call float @dx.op.unary.f32(i32 22, float %1126)  ; Frc(value)
  %1135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1131, %dx.types.Handle %30, float %1132, float %1133, float %1134, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1136 = extractvalue %dx.types.ResRet.f32 %1135, 0
  %1137 = extractvalue %dx.types.ResRet.f32 %1135, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1135, 2
  %1139 = fmul fast float %1136, 1.023000e+03
  %1140 = fmul fast float %1137, 1.023000e+03
  %1141 = fmul fast float %1138, 1.023000e+03
  %1142 = fadd fast float %1139, 5.000000e-01
  %1143 = fadd fast float %1140, 5.000000e-01
  %1144 = fadd fast float %1141, 5.000000e-01
  %1145 = call float @dx.op.unary.f32(i32 27, float %1142)  ; Round_ni(value)
  %1146 = call float @dx.op.unary.f32(i32 27, float %1143)  ; Round_ni(value)
  %1147 = call float @dx.op.unary.f32(i32 27, float %1144)  ; Round_ni(value)
  %1148 = fsub fast float %1115, %1118
  %1149 = fsub fast float %1116, %1119
  %1150 = fsub fast float %1117, %1120
  %1151 = fmul fast float %1148, 7.500000e-01
  %1152 = fmul fast float %1149, 7.500000e-01
  %1153 = fmul fast float %1150, 7.500000e-01
  %1154 = fadd fast float %1118, 1.250000e-01
  %1155 = fadd fast float %1154, %1151
  %1156 = fadd fast float %1155, %1145
  %1157 = fadd fast float %1119, 1.250000e-01
  %1158 = fadd fast float %1157, %1152
  %1159 = fadd fast float %1158, %1146
  %1160 = fadd fast float %1120, 1.250000e-01
  %1161 = fadd fast float %1160, %1153
  %1162 = fadd fast float %1161, %1147
  %1163 = fmul fast float %1156, %1106
  %1164 = fmul fast float %1159, %1107
  %1165 = fmul fast float %1162, %1108
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %1167, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1169, %dx.types.Handle %28, float %1163, float %1164, float %1165, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  br label %1172

; <label>:1172                                    ; preds = %1093, %1082
  %1173 = phi float [ %1171, %1093 ], [ -1.000000e+00, %1082 ]
  %1174 = fadd fast float %1173, %1080
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  br label %1176

; <label>:1176                                    ; preds = %1172, %1070
  %1177 = phi float [ %1175, %1172 ], [ %1080, %1070 ]
  %1178 = fmul fast float %1177, %401
  br label %1179

; <label>:1179                                    ; preds = %1176, %1065
  %1180 = phi float [ %1178, %1176 ], [ %401, %1065 ]
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 256
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1231, label %1185

; <label>:1185                                    ; preds = %1179
  %1186 = add i32 %35, 508
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %1188, 0
  %1190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1190, %dx.types.Handle %72, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = add i32 %35, 116
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1193, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = shl i32 %1195, 4
  %1197 = and i32 %1196, 32752
  %1198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1197)  ; LegacyF16ToF32(value)
  %1199 = lshr i32 %1195, 7
  %1200 = and i32 %1199, 32752
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = fsub fast float 1.000000e+00, %1180
  %1203 = call float @dx.op.binary.f32(i32 35, float %1202, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1204 = bitcast float %1180 to i32
  %1205 = sitofp i32 %1204 to float
  %1206 = fadd fast float %1205, 0xC1CFBF8940000000
  %1207 = fmul fast float %1201, %1206
  %1208 = fadd fast float %1207, 0x41CFBF8940000000
  %1209 = fptosi float %1208 to i32
  %1210 = bitcast i32 %1209 to float
  %1211 = bitcast float %1203 to i32
  %1212 = sitofp i32 %1211 to float
  %1213 = fadd fast float %1212, 0xC1CFBF8940000000
  %1214 = fmul fast float %1213, %1201
  %1215 = fadd fast float %1214, 0x41CFBF8940000000
  %1216 = fptosi float %1215 to i32
  %1217 = bitcast i32 %1216 to float
  %1218 = fmul fast float %1210, %1198
  %1219 = fmul fast float %1217, %1198
  %1220 = fsub fast float %1203, %1218
  %1221 = fadd fast float %1219, %1203
  %1222 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1223 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1224 = fsub fast float %1192, %1222
  %1225 = fsub fast float %1223, %1222
  %1226 = bitcast float %1225 to i32
  %1227 = sub nsw i32 2129859010, %1226
  %1228 = bitcast i32 %1227 to float
  %1229 = fmul fast float %1228, %1224
  %1230 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  br label %1231

; <label>:1231                                    ; preds = %1185, %1179
  %1232 = phi float [ %1230, %1185 ], [ %1180, %1179 ]
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 128
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1253, label %1237

; <label>:1237                                    ; preds = %1231
  %1238 = add i32 %35, 492
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %1240, 0
  %1242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1242, %dx.types.Handle %72, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 524288
  %1248 = icmp ne i32 %1247, 0
  %1249 = fcmp fast ogt float %1244, 0x3FE0101020000000
  %1250 = select i1 %1249, float 1.000000e+00, float 0.000000e+00
  %1251 = select i1 %1248, float %1250, float %1244
  %1252 = fmul fast float %1251, %1232
  br label %1253

; <label>:1253                                    ; preds = %1237, %1231
  %1254 = phi float [ %1252, %1237 ], [ %1232, %1231 ]
  %1255 = fcmp fast ult float %1254, 0x3F70101020000000
  br i1 %1255, label %1909, label %1256

; <label>:1256                                    ; preds = %1253
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 16
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1459, label %1261

; <label>:1261                                    ; preds = %1256
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = add i32 %35, 444
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %71, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = extractvalue %dx.types.ResRet.f32 %1269, 1
  %1272 = extractvalue %dx.types.ResRet.f32 %1269, 2
  %1273 = extractvalue %dx.types.ResRet.f32 %1269, 3
  %1274 = and i32 %1263, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = lshr i32 %1263, 8
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1273, %1275
  %1280 = fadd fast float %1279, %1278
  %1281 = fmul fast float %1280, 0x3F70101000000000
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 512
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1294, label %1286

; <label>:1286                                    ; preds = %1261
  %1287 = add i32 %35, 524
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = add i32 %1289, 0
  %1291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1291, %dx.types.Handle %72, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  br label %1294

; <label>:1294                                    ; preds = %1286, %1261
  %1295 = phi float [ %1293, %1286 ], [ 1.000000e+00, %1261 ]
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = and i32 %1297, 33554432
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1406, label %1300

; <label>:1300                                    ; preds = %1294
  %1301 = add i32 %35, 240
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = and i32 %1303, 65535
  %1305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1304)  ; LegacyF16ToF32(value)
  %1306 = lshr i32 %1303, 16
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = add i32 %35, 244
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = and i32 %1310, 65535
  %1312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1311)  ; LegacyF16ToF32(value)
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = lshr i32 %1314, 24
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = and i32 %1314, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1314, 8
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = lshr i32 %1314, 16
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = add i32 %35, 236
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1329, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = lshr i32 %1331, 24
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1333, 0x3F70101020000000
  %1335 = and i32 %1331, 255
  %1336 = uitofp i32 %1335 to float
  %1337 = fmul fast float %1336, 0x3F70101020000000
  %1338 = lshr i32 %1331, 8
  %1339 = and i32 %1338, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = lshr i32 %1331, 16
  %1343 = and i32 %1342, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1344, 0x3F70101020000000
  %1346 = bitcast float %1270 to i32
  %1347 = ashr i32 %1346, 1
  %1348 = sub nsw i32 1597463174, %1347
  %1349 = bitcast i32 %1348 to float
  %1350 = fmul fast float %1270, 5.000000e-01
  %1351 = fmul fast float %1349, %1349
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float 1.500000e+00, %1352
  %1354 = fmul fast float %1349, %1270
  %1355 = fmul fast float %1354, %1353
  %1356 = bitcast float %1271 to i32
  %1357 = ashr i32 %1356, 1
  %1358 = sub nsw i32 1597463174, %1357
  %1359 = bitcast i32 %1358 to float
  %1360 = fmul fast float %1271, 5.000000e-01
  %1361 = fmul fast float %1359, %1359
  %1362 = fmul fast float %1361, %1360
  %1363 = fsub fast float 1.500000e+00, %1362
  %1364 = fmul fast float %1359, %1271
  %1365 = fmul fast float %1364, %1363
  %1366 = bitcast float %1272 to i32
  %1367 = ashr i32 %1366, 1
  %1368 = sub nsw i32 1597463174, %1367
  %1369 = bitcast i32 %1368 to float
  %1370 = fmul fast float %1272, 5.000000e-01
  %1371 = fmul fast float %1369, %1369
  %1372 = fmul fast float %1371, %1370
  %1373 = fsub fast float 1.500000e+00, %1372
  %1374 = fmul fast float %1369, %1272
  %1375 = fmul fast float %1374, %1373
  %1376 = fsub fast float %1355, %1337
  %1377 = fsub fast float %1365, %1341
  %1378 = fsub fast float %1375, %1345
  %1379 = fmul fast float %1376, %1305
  %1380 = fmul fast float %1377, %1307
  %1381 = fmul fast float %1378, %1312
  %1382 = fadd fast float %1379, %1320
  %1383 = fadd fast float %1380, %1324
  %1384 = fadd fast float %1381, %1328
  %1385 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1386 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1387 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1388 = fmul fast float %1385, %1385
  %1389 = fmul fast float %1386, %1386
  %1390 = fmul fast float %1387, %1387
  %1391 = fsub fast float %1388, %1270
  %1392 = fsub fast float %1389, %1271
  %1393 = fsub fast float %1390, %1272
  %1394 = fmul fast float %1391, %1295
  %1395 = fmul fast float %1392, %1295
  %1396 = fmul fast float %1393, %1295
  %1397 = fadd fast float %1394, %1270
  %1398 = fadd fast float %1395, %1271
  %1399 = fadd fast float %1396, %1272
  %1400 = fadd fast float %1317, %1281
  %1401 = fsub fast float %1400, %1334
  %1402 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1403 = fsub fast float %1402, %1281
  %1404 = fmul fast float %1403, %1295
  %1405 = fadd fast float %1404, %1281
  br label %1459

; <label>:1406                                    ; preds = %1294
  %1407 = and i32 %1297, 134217728
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1443, label %1409

; <label>:1409                                    ; preds = %1406
  %1410 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1411 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1412 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1413 = fadd fast float %1410, -5.000000e-01
  %1414 = fadd fast float %1411, -5.000000e-01
  %1415 = fadd fast float %1412, -5.000000e-01
  %1416 = fmul fast float %1413, %1295
  %1417 = fmul fast float %1414, %1295
  %1418 = fmul fast float %1415, %1295
  %1419 = fadd fast float %1416, 5.000000e-01
  %1420 = fadd fast float %1417, 5.000000e-01
  %1421 = fadd fast float %1418, 5.000000e-01
  %1422 = call float @dx.op.unary.f32(i32 24, float %1270)  ; Sqrt(value)
  %1423 = call float @dx.op.unary.f32(i32 24, float %1271)  ; Sqrt(value)
  %1424 = call float @dx.op.unary.f32(i32 24, float %1272)  ; Sqrt(value)
  %1425 = fmul fast float %1419, 2.000000e+00
  %1426 = fsub fast float 1.000000e+00, %1425
  %1427 = fmul fast float %1426, %1422
  %1428 = fadd fast float %1427, %1425
  %1429 = fmul fast float %1428, %1422
  %1430 = fmul fast float %1420, 2.000000e+00
  %1431 = fsub fast float 1.000000e+00, %1430
  %1432 = fmul fast float %1431, %1423
  %1433 = fadd fast float %1432, %1430
  %1434 = fmul fast float %1433, %1423
  %1435 = fmul fast float %1421, 2.000000e+00
  %1436 = fsub fast float 1.000000e+00, %1435
  %1437 = fmul fast float %1436, %1424
  %1438 = fadd fast float %1437, %1435
  %1439 = fmul fast float %1438, %1424
  %1440 = fmul fast float %1429, %1429
  %1441 = fmul fast float %1434, %1434
  %1442 = fmul fast float %1439, %1439
  br label %1459

; <label>:1443                                    ; preds = %1406
  %1444 = fmul fast float %236, %236
  %1445 = fmul fast float %240, %240
  %1446 = fmul fast float %244, %244
  %1447 = fadd fast float %1444, -1.000000e+00
  %1448 = fadd fast float %1445, -1.000000e+00
  %1449 = fadd fast float %1446, -1.000000e+00
  %1450 = fmul fast float %1295, %1447
  %1451 = fmul fast float %1295, %1448
  %1452 = fmul fast float %1295, %1449
  %1453 = fadd fast float %1450, 1.000000e+00
  %1454 = fadd fast float %1451, 1.000000e+00
  %1455 = fadd fast float %1452, 1.000000e+00
  %1456 = fmul fast float %1453, %1270
  %1457 = fmul fast float %1454, %1271
  %1458 = fmul fast float %1455, %1272
  br label %1459

; <label>:1459                                    ; preds = %1443, %1409, %1300, %1256
  %1460 = phi float [ %1405, %1300 ], [ %1281, %1409 ], [ %1281, %1443 ], [ 0x3FA23C0BE0000000, %1256 ]
  %1461 = phi float [ %1397, %1300 ], [ %1440, %1409 ], [ %1456, %1443 ], [ 1.000000e+00, %1256 ]
  %1462 = phi float [ %1398, %1300 ], [ %1441, %1409 ], [ %1457, %1443 ], [ 1.000000e+00, %1256 ]
  %1463 = phi float [ %1399, %1300 ], [ %1442, %1409 ], [ %1458, %1443 ], [ 1.000000e+00, %1256 ]
  %1464 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.i32 %1464, 1
  %1466 = and i32 %1465, 1
  %1467 = icmp ne i32 %1466, 0
  %1468 = add i32 %35, 356
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 32
  %1472 = icmp ne i32 %1471, 0
  %1473 = and i1 %1467, %1472
  %1474 = select i1 %1473, float 1.000000e+00, float %1461
  %1475 = select i1 %1473, float 0x3FD3333340000000, float %1462
  %1476 = select i1 %1473, float 0x3FD3333340000000, float %1463
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 32
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1553, label %1481

; <label>:1481                                    ; preds = %1459
  %1482 = add i32 %35, 108
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = add i32 %35, 460
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %71, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.ResRet.f32 %1490, 2
  %1494 = extractvalue %dx.types.ResRet.f32 %1490, 3
  %1495 = and i32 %1484, 255
  %1496 = uitofp i32 %1495 to float
  %1497 = lshr i32 %1484, 8
  %1498 = and i32 %1497, 255
  %1499 = uitofp i32 %1498 to float
  %1500 = lshr i32 %1484, 16
  %1501 = and i32 %1500, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1502, 0x3F70101000000000
  %1504 = fmul fast float %1491, %1496
  %1505 = fadd fast float %1504, %1499
  %1506 = fmul fast float %1505, 0x3F70101000000000
  %1507 = fadd fast float %1492, -5.000000e-01
  %1508 = fadd fast float %1494, -5.000000e-01
  %1509 = fmul fast float %1507, %1503
  %1510 = fmul fast float %1508, %1503
  %1511 = fadd fast float %1509, 5.000000e-01
  %1512 = fadd fast float %1510, 5.000000e-01
  %1513 = fmul fast float %1511, 2.000000e+00
  %1514 = fadd fast float %1513, -1.000000e+00
  %1515 = fmul fast float %1512, 2.000000e+00
  %1516 = fadd fast float %1515, -1.000000e+00
  %1517 = fadd fast float %1514, %1516
  %1518 = fmul fast float %1517, 5.000000e-01
  %1519 = fsub fast float %1514, %1516
  %1520 = fmul fast float %1519, 5.000000e-01
  %1521 = call float @dx.op.unary.f32(i32 6, float %1518)  ; FAbs(value)
  %1522 = fsub fast float 1.000000e+00, %1521
  %1523 = call float @dx.op.unary.f32(i32 6, float %1520)  ; FAbs(value)
  %1524 = fsub fast float %1522, %1523
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1520, float %1524, float %1518, float %1520, float %1524)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = call float @dx.op.unary.f32(i32 25, float %1525)  ; Rsqrt(value)
  %1527 = fmul fast float %1518, %1526
  %1528 = fmul fast float %1520, %1526
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = and i32 %1530, 67108864
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1549, label %1533

; <label>:1533                                    ; preds = %1481
  %1534 = add i32 %35, 296
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = and i32 %1536, 65535
  %1538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1537)  ; LegacyF16ToF32(value)
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = and i32 %1540, 65535
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = lshr i32 %1536, 16
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = fsub fast float %1506, %1544
  %1546 = fmul fast float %1545, %1538
  %1547 = fadd fast float %1546, %1542
  %1548 = call float @dx.op.unary.f32(i32 7, float %1547)  ; Saturate(value)
  br label %1549

; <label>:1549                                    ; preds = %1533, %1481
  %1550 = phi float [ %1548, %1533 ], [ %1506, %1481 ]
  %1551 = call float @dx.op.dot2.f32(i32 54, float %1527, float %1528, float %970, float %971)  ; Dot2(ax,ay,bx,by)
  %1552 = call float @dx.op.dot2.f32(i32 54, float %1527, float %1528, float %972, float %973)  ; Dot2(ax,ay,bx,by)
  br label %1553

; <label>:1553                                    ; preds = %1549, %1459
  %1554 = phi float [ %1550, %1549 ], [ 0x3FD6666660000000, %1459 ]
  %1555 = phi float [ %1551, %1549 ], [ 0.000000e+00, %1459 ]
  %1556 = phi float [ %1552, %1549 ], [ 0.000000e+00, %1459 ]
  %1557 = phi float [ %1493, %1549 ], [ 1.000000e+00, %1459 ]
  %1558 = add i32 %35, 176
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = lshr i32 %1560, 22
  %1562 = shl nuw nsw i32 %1561, 5
  %1563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1562)  ; LegacyF16ToF32(value)
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = and i32 %1565, 64
  %1567 = icmp eq i32 %1566, 0
  br i1 %1567, label %1601, label %1568

; <label>:1568                                    ; preds = %1553
  %1569 = add i32 %35, 476
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = add i32 %1571, 0
  %1573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1575 = extractvalue %dx.types.ResRet.i32 %1574, 0
  %1576 = and i32 %1575, 131072
  %1577 = icmp eq i32 %1576, 0
  %1578 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1573, %dx.types.Handle %71, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1579 = extractvalue %dx.types.ResRet.f32 %1578, 0
  %1580 = extractvalue %dx.types.ResRet.f32 %1578, 1
  %1581 = extractvalue %dx.types.ResRet.f32 %1578, 2
  %1582 = fmul fast float %1579, %224
  %1583 = fmul fast float %1580, %227
  %1584 = fmul fast float %1581, %230
  br i1 %1577, label %1591, label %1585

; <label>:1585                                    ; preds = %1568
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 0
  %1588 = fmul fast float %1587, %1582
  %1589 = fmul fast float %1587, %1583
  %1590 = fmul fast float %1587, %1584
  br label %1591

; <label>:1591                                    ; preds = %1585, %1568
  %1592 = phi float [ %1588, %1585 ], [ %1582, %1568 ]
  %1593 = phi float [ %1589, %1585 ], [ %1583, %1568 ]
  %1594 = phi float [ %1590, %1585 ], [ %1584, %1568 ]
  %1595 = fmul fast float %1592, %1563
  %1596 = select i1 %176, float %1595, float %1592
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1596, float %1593, float %1594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = select i1 %176, float 0.000000e+00, float %1592
  %1599 = select i1 %176, float %1597, float %1593
  %1600 = select i1 %176, float 0.000000e+00, float %1594
  br label %1601

; <label>:1601                                    ; preds = %1591, %1553
  %1602 = phi float [ %1598, %1591 ], [ 0.000000e+00, %1553 ]
  %1603 = phi float [ %1599, %1591 ], [ 0.000000e+00, %1553 ]
  %1604 = phi float [ %1600, %1591 ], [ 0.000000e+00, %1553 ]
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 26624
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1666, label %1609

; <label>:1609                                    ; preds = %1601
  %1610 = add i32 %35, 540
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = add i32 %1612, 0
  %1614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1613, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1615 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1614, %dx.types.Handle %72, float %1066, float %1067, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  %1617 = extractvalue %dx.types.ResRet.f32 %1615, 1
  %1618 = extractvalue %dx.types.ResRet.f32 %1615, 3
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = and i32 %1620, 1048576
  %1622 = icmp ne i32 %1621, 0
  %1623 = and i32 %1620, 8192
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1639, label %1625

; <label>:1625                                    ; preds = %1609
  %1626 = extractvalue %dx.types.ResRet.f32 %1615, 2
  %1627 = select i1 %1622, float %1626, float %1617
  %1628 = select i1 %1622, float %1616, float %1617
  %1629 = add i32 %35, 112
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1629, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = lshr i32 %1631, 16
  %1633 = and i32 %1632, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = fmul fast float %1634, 0x3F80101020000000
  %1636 = fmul fast float %1635, %1628
  %1637 = fmul fast float %1635, %1617
  %1638 = fmul fast float %1635, %1627
  br label %1639

; <label>:1639                                    ; preds = %1625, %1609
  %1640 = phi float [ %1636, %1625 ], [ 0.000000e+00, %1609 ]
  %1641 = phi float [ %1637, %1625 ], [ 0.000000e+00, %1609 ]
  %1642 = phi float [ %1638, %1625 ], [ 0.000000e+00, %1609 ]
  %1643 = and i32 %1620, 2048
  %1644 = icmp eq i32 %1643, 0
  br i1 %1644, label %1653, label %1645

; <label>:1645                                    ; preds = %1639
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = shl i32 %1647, 4
  %1649 = and i32 %1648, 32752
  %1650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1649)  ; LegacyF16ToF32(value)
  %1651 = fmul fast float %1650, %1618
  %1652 = call float @dx.op.binary.f32(i32 35, float %1651, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1653

; <label>:1653                                    ; preds = %1645, %1639
  %1654 = phi float [ %1652, %1645 ], [ 0x3F70101020000000, %1639 ]
  %1655 = and i32 %1620, 16384
  %1656 = icmp eq i32 %1655, 0
  br i1 %1656, label %1666, label %1657

; <label>:1657                                    ; preds = %1653
  %1658 = add i32 %35, 112
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1658, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = lshr i32 %1660, 24
  %1662 = uitofp i32 %1661 to float
  %1663 = fmul fast float %1616, 0x3F70101020000000
  %1664 = select i1 %1622, float 0x3F70101020000000, float %1663
  %1665 = fmul fast float %1664, %1662
  br label %1666

; <label>:1666                                    ; preds = %1657, %1653, %1601
  %1667 = phi float [ %1640, %1657 ], [ %1640, %1653 ], [ 0.000000e+00, %1601 ]
  %1668 = phi float [ %1641, %1657 ], [ %1641, %1653 ], [ 0.000000e+00, %1601 ]
  %1669 = phi float [ %1642, %1657 ], [ %1642, %1653 ], [ 0.000000e+00, %1601 ]
  %1670 = phi float [ %1654, %1657 ], [ %1654, %1653 ], [ 0x3F70101020000000, %1601 ]
  %1671 = phi float [ %1665, %1657 ], [ 0.000000e+00, %1653 ], [ 0.000000e+00, %1601 ]
  %1672 = add i32 %35, 112
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 255
  %1676 = uitofp i32 %1675 to float
  %1677 = lshr i32 %1674, 8
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = call float @dx.op.dot3.f32(i32 55, float %1474, float %1475, float %1476, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1681 = fmul fast float %1679, %1680
  %1682 = fadd fast float %1681, %1676
  %1683 = fmul fast float %1682, 0x3F70101020000000
  %1684 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  br i1 %958, label %1685, label %1693

; <label>:1685                                    ; preds = %1666
  %1686 = fsub fast float 1.000000e+00, %1254
  %1687 = fmul fast float %1686, %941
  %1688 = fmul fast float %1686, %942
  %1689 = fmul fast float %1686, %943
  %1690 = fmul fast float %1686, %944
  %1691 = fmul fast float %1686, %945
  %1692 = fmul fast float %1686, %946
  br label %1693

; <label>:1693                                    ; preds = %1685, %1666
  %1694 = phi float [ %1687, %1685 ], [ %941, %1666 ]
  %1695 = phi float [ %1688, %1685 ], [ %942, %1666 ]
  %1696 = phi float [ %1689, %1685 ], [ %943, %1666 ]
  %1697 = phi float [ %1690, %1685 ], [ %944, %1666 ]
  %1698 = phi float [ %1691, %1685 ], [ %945, %1666 ]
  %1699 = phi float [ %1692, %1685 ], [ %946, %1666 ]
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = and i32 %1701, 3
  %1703 = icmp eq i32 %1702, 3
  br i1 %1703, label %1782, label %1704

; <label>:1704                                    ; preds = %1693
  %1705 = and i32 %1701, 16
  %1706 = icmp ne i32 %1705, 0
  %1707 = select i1 %1706, float %1254, float 0.000000e+00
  %1708 = icmp eq i32 %1702, 0
  br i1 %1708, label %1709, label %1737

; <label>:1709                                    ; preds = %1704
  %1710 = and i32 %1701, 64
  %1711 = icmp ne i32 %1710, 0
  %1712 = select i1 %1711, float %1254, float 0.000000e+00
  %1713 = fsub fast float %1474, %1694
  %1714 = fsub fast float %1475, %1695
  %1715 = fsub fast float %1476, %1696
  %1716 = fmul fast float %1707, %1713
  %1717 = fmul fast float %1707, %1714
  %1718 = fmul fast float %1707, %1715
  %1719 = fadd fast float %1716, %1694
  %1720 = fadd fast float %1717, %1695
  %1721 = fadd fast float %1718, %1696
  %1722 = fsub fast float %1460, %950
  %1723 = fmul fast float %1707, %1722
  %1724 = fadd fast float %1723, %950
  %1725 = fsub fast float %1602, %1697
  %1726 = fsub fast float %1603, %1698
  %1727 = fsub fast float %1604, %1699
  %1728 = fmul fast float %1712, %1725
  %1729 = fmul fast float %1712, %1726
  %1730 = fmul fast float %1712, %1727
  %1731 = fadd fast float %1728, %1697
  %1732 = fadd fast float %1729, %1698
  %1733 = fadd fast float %1730, %1699
  %1734 = fsub fast float %1684, %956
  %1735 = fmul fast float %1707, %1734
  %1736 = fadd fast float %1735, %956
  br label %1782

; <label>:1737                                    ; preds = %1704
  %1738 = icmp eq i32 %1702, 1
  br i1 %1738, label %1739, label %1752

; <label>:1739                                    ; preds = %1737
  %1740 = fadd fast float %1474, -1.000000e+00
  %1741 = fadd fast float %1475, -1.000000e+00
  %1742 = fadd fast float %1476, -1.000000e+00
  %1743 = fmul fast float %1707, %1740
  %1744 = fmul fast float %1707, %1741
  %1745 = fmul fast float %1707, %1742
  %1746 = fadd fast float %1743, 1.000000e+00
  %1747 = fadd fast float %1744, 1.000000e+00
  %1748 = fadd fast float %1745, 1.000000e+00
  %1749 = fmul fast float %1746, %1694
  %1750 = fmul fast float %1747, %1695
  %1751 = fmul fast float %1748, %1696
  br label %1782

; <label>:1752                                    ; preds = %1737
  %1753 = icmp eq i32 %1702, 2
  br i1 %1753, label %1754, label %1782

; <label>:1754                                    ; preds = %1752
  %1755 = call float @dx.op.unary.f32(i32 24, float %1474)  ; Sqrt(value)
  %1756 = call float @dx.op.unary.f32(i32 24, float %1475)  ; Sqrt(value)
  %1757 = call float @dx.op.unary.f32(i32 24, float %1476)  ; Sqrt(value)
  %1758 = fadd fast float %1755, -5.000000e-01
  %1759 = fadd fast float %1756, -5.000000e-01
  %1760 = fadd fast float %1757, -5.000000e-01
  %1761 = fmul fast float %1758, %1707
  %1762 = fmul fast float %1759, %1707
  %1763 = fmul fast float %1760, %1707
  %1764 = fadd fast float %1761, 5.000000e-01
  %1765 = fadd fast float %1762, 5.000000e-01
  %1766 = fadd fast float %1763, 5.000000e-01
  %1767 = fmul fast float %1764, 2.000000e+00
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = fmul fast float %1768, %1694
  %1770 = fadd fast float %1769, %1767
  %1771 = fmul fast float %1770, %1694
  %1772 = fmul fast float %1765, 2.000000e+00
  %1773 = fsub fast float 1.000000e+00, %1772
  %1774 = fmul fast float %1773, %1695
  %1775 = fadd fast float %1774, %1772
  %1776 = fmul fast float %1775, %1695
  %1777 = fmul fast float %1766, 2.000000e+00
  %1778 = fsub fast float 1.000000e+00, %1777
  %1779 = fmul fast float %1778, %1696
  %1780 = fadd fast float %1779, %1777
  %1781 = fmul fast float %1780, %1696
  br label %1782

; <label>:1782                                    ; preds = %1754, %1752, %1739, %1709, %1693
  %1783 = phi float [ %1694, %1693 ], [ %1771, %1754 ], [ %1694, %1752 ], [ %1749, %1739 ], [ %1719, %1709 ]
  %1784 = phi float [ %1695, %1693 ], [ %1776, %1754 ], [ %1695, %1752 ], [ %1750, %1739 ], [ %1720, %1709 ]
  %1785 = phi float [ %1696, %1693 ], [ %1781, %1754 ], [ %1696, %1752 ], [ %1751, %1739 ], [ %1721, %1709 ]
  %1786 = phi float [ %1697, %1693 ], [ %1697, %1754 ], [ %1697, %1752 ], [ %1697, %1739 ], [ %1731, %1709 ]
  %1787 = phi float [ %1698, %1693 ], [ %1698, %1754 ], [ %1698, %1752 ], [ %1698, %1739 ], [ %1732, %1709 ]
  %1788 = phi float [ %1699, %1693 ], [ %1699, %1754 ], [ %1699, %1752 ], [ %1699, %1739 ], [ %1733, %1709 ]
  %1789 = phi float [ %950, %1693 ], [ %950, %1754 ], [ %950, %1752 ], [ %950, %1739 ], [ %1724, %1709 ]
  %1790 = phi float [ %956, %1693 ], [ %956, %1754 ], [ %956, %1752 ], [ %956, %1739 ], [ %1736, %1709 ]
  %1791 = and i32 %1701, 12
  %1792 = icmp eq i32 %1791, 12
  br i1 %1792, label %1909, label %1793

; <label>:1793                                    ; preds = %1782
  %1794 = and i32 %1701, 2097184
  %1795 = icmp eq i32 %1794, 2097184
  %1796 = select i1 %1795, float %1254, float 0.000000e+00
  %1797 = and i32 %1701, 4194336
  %1798 = icmp eq i32 %1797, 4194336
  %1799 = select i1 %1798, float %1254, float 0.000000e+00
  %1800 = and i32 %1701, 8388640
  %1801 = icmp eq i32 %1800, 8388640
  %1802 = select i1 %1801, float %1254, float 0.000000e+00
  %1803 = and i32 %1701, 2048
  %1804 = icmp ne i32 %1803, 0
  %1805 = select i1 %1804, float %1254, float 0.000000e+00
  %1806 = and i32 %1701, 8192
  %1807 = icmp ne i32 %1806, 0
  %1808 = select i1 %1807, float %1254, float 0.000000e+00
  %1809 = and i32 %1701, 16384
  %1810 = icmp ne i32 %1809, 0
  %1811 = select i1 %1810, float %1254, float 0.000000e+00
  %1812 = icmp eq i32 %1791, 0
  br i1 %1812, label %1813, label %1841

; <label>:1813                                    ; preds = %1793
  %1814 = fsub fast float %1555, %939
  %1815 = fsub fast float %1556, %940
  %1816 = fmul fast float %1796, %1814
  %1817 = fmul fast float %1796, %1815
  %1818 = fadd fast float %1816, %939
  %1819 = fadd fast float %1817, %940
  %1820 = fsub fast float %1557, %953
  %1821 = fmul fast float %1799, %1820
  %1822 = fadd fast float %1821, %953
  %1823 = fsub fast float %1554, %952
  %1824 = fmul fast float %1802, %1823
  %1825 = fadd fast float %1824, %952
  %1826 = fsub fast float %1670, %954
  %1827 = fmul fast float %1805, %1826
  %1828 = fadd fast float %1827, %954
  %1829 = fsub fast float %1667, %947
  %1830 = fsub fast float %1668, %948
  %1831 = fsub fast float %1669, %949
  %1832 = fmul fast float %1808, %1829
  %1833 = fmul fast float %1808, %1830
  %1834 = fmul fast float %1808, %1831
  %1835 = fadd fast float %1832, %947
  %1836 = fadd fast float %1833, %948
  %1837 = fadd fast float %1834, %949
  %1838 = fsub fast float %1671, %955
  %1839 = fmul fast float %1811, %1838
  %1840 = fadd fast float %1839, %955
  br label %1909

; <label>:1841                                    ; preds = %1793
  %1842 = icmp eq i32 %1791, 4
  br i1 %1842, label %1843, label %1885

; <label>:1843                                    ; preds = %1841
  %1844 = fmul fast float %1796, %1555
  %1845 = fmul fast float %1796, %1556
  %1846 = fadd fast float %1844, %939
  %1847 = fadd fast float %1845, %940
  %1848 = call float @dx.op.binary.f32(i32 36, float %953, float %1557)  ; FMin(a,b)
  %1849 = fsub fast float %1848, %953
  %1850 = fmul fast float %1849, %1799
  %1851 = fadd fast float %1850, %953
  %1852 = fadd fast float %1554, %952
  %1853 = fmul fast float %1852, 0x3FF337FAE0000000
  %1854 = fmul fast float %952, %952
  %1855 = fmul fast float %1554, %1554
  %1856 = fadd fast float %1855, %1854
  %1857 = fmul fast float %1856, 0x3FE5152B00000000
  %1858 = fmul fast float %952, 0xBFCC1F85E0000000
  %1859 = fmul fast float %1858, %1554
  %1860 = fadd fast float %1859, 0xBFE1363700000000
  %1861 = fadd fast float %1860, %1853
  %1862 = fsub fast float %1861, %1857
  %1863 = fmul fast float %1852, 0x3FBA6F0D00000000
  %1864 = fmul fast float %1856, 0x3FD0432880000000
  %1865 = fmul fast float %952, 0xBFEF110800000000
  %1866 = fmul fast float %1865, %1554
  %1867 = fadd fast float %1866, 1.000000e+00
  %1868 = fsub fast float %1867, %1863
  %1869 = fadd fast float %1868, %1864
  %1870 = fdiv fast float %1862, %1869
  %1871 = call float @dx.op.unary.f32(i32 7, float %1870)  ; Saturate(value)
  %1872 = fsub fast float %1871, %952
  %1873 = fmul fast float %1872, %1802
  %1874 = fadd fast float %1873, %952
  %1875 = fmul fast float %1805, %1670
  %1876 = fadd fast float %1875, %954
  %1877 = fmul fast float %1808, %1667
  %1878 = fmul fast float %1808, %1668
  %1879 = fmul fast float %1808, %1669
  %1880 = fadd fast float %1877, %947
  %1881 = fadd fast float %1878, %948
  %1882 = fadd fast float %1879, %949
  %1883 = fmul fast float %1811, %1671
  %1884 = fadd fast float %1883, %955
  br label %1909

; <label>:1885                                    ; preds = %1841
  %1886 = icmp eq i32 %1791, 8
  br i1 %1886, label %1887, label %1909

; <label>:1887                                    ; preds = %1885
  %1888 = fmul fast float %1796, %1555
  %1889 = fmul fast float %1796, %1556
  %1890 = fadd fast float %1888, %939
  %1891 = fadd fast float %1889, %940
  %1892 = call float @dx.op.binary.f32(i32 36, float %953, float %1557)  ; FMin(a,b)
  %1893 = fsub fast float %1892, %953
  %1894 = fmul fast float %1893, %1799
  %1895 = fadd fast float %1894, %953
  %1896 = fsub fast float %1554, %952
  %1897 = fmul fast float %1802, %1896
  %1898 = fadd fast float %1897, %952
  %1899 = fmul fast float %1805, %1670
  %1900 = fadd fast float %1899, %954
  %1901 = fmul fast float %1808, %1667
  %1902 = fmul fast float %1808, %1668
  %1903 = fmul fast float %1808, %1669
  %1904 = fadd fast float %1901, %947
  %1905 = fadd fast float %1902, %948
  %1906 = fadd fast float %1903, %949
  %1907 = fmul fast float %1811, %1671
  %1908 = fadd fast float %1907, %955
  br label %1909

; <label>:1909                                    ; preds = %1887, %1885, %1843, %1813, %1782, %1253, %957, %938
  %1910 = phi float [ %939, %1782 ], [ %939, %1253 ], [ %939, %938 ], [ %1890, %1887 ], [ %939, %1885 ], [ %1846, %1843 ], [ %1818, %1813 ], [ %939, %957 ]
  %1911 = phi float [ %940, %1782 ], [ %940, %1253 ], [ %940, %938 ], [ %1891, %1887 ], [ %940, %1885 ], [ %1847, %1843 ], [ %1819, %1813 ], [ %940, %957 ]
  %1912 = phi float [ %1783, %1782 ], [ %941, %1253 ], [ %941, %938 ], [ %1783, %1887 ], [ %1783, %1885 ], [ %1783, %1843 ], [ %1783, %1813 ], [ %941, %957 ]
  %1913 = phi float [ %1784, %1782 ], [ %942, %1253 ], [ %942, %938 ], [ %1784, %1887 ], [ %1784, %1885 ], [ %1784, %1843 ], [ %1784, %1813 ], [ %942, %957 ]
  %1914 = phi float [ %1785, %1782 ], [ %943, %1253 ], [ %943, %938 ], [ %1785, %1887 ], [ %1785, %1885 ], [ %1785, %1843 ], [ %1785, %1813 ], [ %943, %957 ]
  %1915 = phi float [ %1786, %1782 ], [ %944, %1253 ], [ %944, %938 ], [ %1786, %1887 ], [ %1786, %1885 ], [ %1786, %1843 ], [ %1786, %1813 ], [ %944, %957 ]
  %1916 = phi float [ %1787, %1782 ], [ %945, %1253 ], [ %945, %938 ], [ %1787, %1887 ], [ %1787, %1885 ], [ %1787, %1843 ], [ %1787, %1813 ], [ %945, %957 ]
  %1917 = phi float [ %1788, %1782 ], [ %946, %1253 ], [ %946, %938 ], [ %1788, %1887 ], [ %1788, %1885 ], [ %1788, %1843 ], [ %1788, %1813 ], [ %946, %957 ]
  %1918 = phi float [ %947, %1782 ], [ %947, %1253 ], [ %947, %938 ], [ %1904, %1887 ], [ %947, %1885 ], [ %1880, %1843 ], [ %1835, %1813 ], [ %947, %957 ]
  %1919 = phi float [ %948, %1782 ], [ %948, %1253 ], [ %948, %938 ], [ %1905, %1887 ], [ %948, %1885 ], [ %1881, %1843 ], [ %1836, %1813 ], [ %948, %957 ]
  %1920 = phi float [ %949, %1782 ], [ %949, %1253 ], [ %949, %938 ], [ %1906, %1887 ], [ %949, %1885 ], [ %1882, %1843 ], [ %1837, %1813 ], [ %949, %957 ]
  %1921 = phi float [ %1789, %1782 ], [ %950, %1253 ], [ %950, %938 ], [ %1789, %1887 ], [ %1789, %1885 ], [ %1789, %1843 ], [ %1789, %1813 ], [ %950, %957 ]
  %1922 = phi float [ %952, %1782 ], [ %952, %1253 ], [ %952, %938 ], [ %1898, %1887 ], [ %952, %1885 ], [ %1874, %1843 ], [ %1825, %1813 ], [ %952, %957 ]
  %1923 = phi float [ %953, %1782 ], [ %953, %1253 ], [ %953, %938 ], [ %1895, %1887 ], [ %953, %1885 ], [ %1851, %1843 ], [ %1822, %1813 ], [ %953, %957 ]
  %1924 = phi float [ %954, %1782 ], [ %954, %1253 ], [ %954, %938 ], [ %1900, %1887 ], [ %954, %1885 ], [ %1876, %1843 ], [ %1828, %1813 ], [ %954, %957 ]
  %1925 = phi float [ %955, %1782 ], [ %955, %1253 ], [ %955, %938 ], [ %1908, %1887 ], [ %955, %1885 ], [ %1884, %1843 ], [ %1840, %1813 ], [ %955, %957 ]
  %1926 = phi float [ %1790, %1782 ], [ %956, %1253 ], [ %956, %938 ], [ %1790, %1887 ], [ %1790, %1885 ], [ %1790, %1843 ], [ %1790, %1813 ], [ %956, %957 ]
  br i1 %351, label %2879, label %1927

; <label>:1927                                    ; preds = %1909
  %1928 = icmp ult i32 %404, 3
  %1929 = add i32 %35, 56
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %35, 60
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = or i32 %1934, %1931
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %2879, label %1937

; <label>:1937                                    ; preds = %1927
  %1938 = and i32 %1931, 262144
  %1939 = icmp ne i32 %1938, 0
  %1940 = select i1 %1939, float %38, float 1.000000e+00
  %1941 = select i1 %1939, float %39, float 0.000000e+00
  %1942 = select i1 %1939, float %40, float 0.000000e+00
  %1943 = select i1 %1939, float %41, float 1.000000e+00
  %1944 = select i1 %1939, float %42, float %63
  %1945 = select i1 %1939, float %43, float %64
  %1946 = add i32 %35, 316
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = lshr i32 %1948, 16
  %1950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1949)  ; LegacyF16ToF32(value)
  %1951 = fmul fast float %1950, 0x3F50624DE0000000
  %1952 = add i32 %35, 120
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = lshr i32 %1954, 16
  %1956 = and i32 %1955, 255
  %1957 = lshr i32 %1954, 24
  %1958 = add i32 %35, 324
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = and i32 %1960, 65535
  %1962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1961)  ; LegacyF16ToF32(value)
  %1963 = lshr i32 %1960, 16
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = add i32 %35, 64
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = lshr i32 %1967, 22
  %1969 = shl nuw nsw i32 %1968, 5
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = shl i32 %1967, 4
  %1972 = and i32 %1971, 32752
  %1973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1972)  ; LegacyF16ToF32(value)
  %1974 = lshr i32 %1967, 7
  %1975 = and i32 %1974, 32752
  %1976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1975)  ; LegacyF16ToF32(value)
  %1977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1978 = extractvalue %dx.types.CBufRet.f32 %1977, 3
  %1979 = fmul fast float %1978, 1.000000e+03
  %1980 = fmul fast float %301, %1979
  %1981 = call float @dx.op.unary.f32(i32 22, float %1980)  ; Frc(value)
  %1982 = fadd fast float %1981, %291
  %1983 = fmul fast float %302, %1979
  %1984 = call float @dx.op.unary.f32(i32 22, float %1983)  ; Frc(value)
  %1985 = fadd fast float %1984, %293
  %1986 = fmul fast float %1951, %1979
  %1987 = call float @dx.op.unary.f32(i32 22, float %1986)  ; Frc(value)
  %1988 = fmul fast float %1987, 0x401921FB60000000
  %1989 = fadd fast float %1988, %1970
  %1990 = call float @dx.op.unary.f32(i32 13, float %1989)  ; Sin(value)
  %1991 = call float @dx.op.unary.f32(i32 12, float %1989)  ; Cos(value)
  %1992 = fsub fast float -0.000000e+00, %1990
  %1993 = fadd fast float %1944, -5.000000e-01
  %1994 = fadd fast float %1945, -5.000000e-01
  %1995 = fmul fast float %1962, %1993
  %1996 = fmul fast float %1964, %1994
  %1997 = fadd fast float %1995, 5.000000e-01
  %1998 = fadd fast float %1996, 5.000000e-01
  %1999 = fmul fast float %1973, %1997
  %2000 = fmul fast float %1976, %1998
  %2001 = fmul fast float %1991, %1999
  %2002 = call float @dx.op.tertiary.f32(i32 46, float %1992, float %2000, float %2001)  ; FMad(a,b,c)
  %2003 = fmul fast float %1990, %1999
  %2004 = call float @dx.op.tertiary.f32(i32 46, float %1991, float %2000, float %2003)  ; FMad(a,b,c)
  %2005 = fadd fast float %1982, %2002
  %2006 = fadd fast float %1985, %2004
  %2007 = icmp ugt i32 %1956, 1
  %2008 = icmp ugt i32 %1954, 33554431
  %2009 = or i1 %2008, %2007
  br i1 %2009, label %2010, label %2035

; <label>:2010                                    ; preds = %1937
  %2011 = add i32 %35, 260
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = lshr i32 %2013, 16
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = fmul fast float %1978, %2015
  %2017 = call float @dx.op.unary.f32(i32 22, float %2016)  ; Frc(value)
  %2018 = mul nuw nsw i32 %1956, %1957
  %2019 = uitofp i32 %2018 to float
  %2020 = fmul fast float %2017, %2019
  %2021 = call float @dx.op.unary.f32(i32 27, float %2020)  ; Round_ni(value)
  %2022 = fptoui float %2021 to i32
  %2023 = urem i32 %2022, %1956
  %2024 = udiv i32 %2022, %1957
  %2025 = call float @dx.op.unary.f32(i32 22, float %2005)  ; Frc(value)
  %2026 = call float @dx.op.unary.f32(i32 22, float %2006)  ; Frc(value)
  %2027 = uitofp i32 %2023 to float
  %2028 = uitofp i32 %2024 to float
  %2029 = fadd fast float %2025, %2027
  %2030 = fadd fast float %2026, %2028
  %2031 = uitofp i32 %1956 to float
  %2032 = uitofp i32 %1957 to float
  %2033 = fdiv fast float %2029, %2031
  %2034 = fdiv fast float %2030, %2032
  br label %2035

; <label>:2035                                    ; preds = %2010, %1937
  %2036 = phi float [ %2033, %2010 ], [ %2005, %1937 ]
  %2037 = phi float [ %2034, %2010 ], [ %2006, %1937 ]
  %2038 = and i32 %1931, 16777216
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2149, label %2040

; <label>:2040                                    ; preds = %2035
  %2041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2042 = extractvalue %dx.types.CBufRet.f32 %2041, 0
  %2043 = extractvalue %dx.types.CBufRet.f32 %2041, 1
  %2044 = extractvalue %dx.types.CBufRet.f32 %2041, 2
  %2045 = fadd fast float %2042, %134
  %2046 = fadd fast float %2043, %135
  %2047 = fadd fast float %2044, %136
  %2048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2049 = extractvalue %dx.types.CBufRet.f32 %2048, 0
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2051 = icmp eq i32 %36, 65535
  br i1 %2051, label %2146, label %2052

; <label>:2052                                    ; preds = %2040
  %2053 = lshr i32 %36, 1
  %2054 = shl i32 %2053, 2
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %36, 1
  %2058 = icmp ne i32 %2057, 0
  %2059 = lshr i32 %2056, 16
  %2060 = and i32 %2056, 65535
  %2061 = select i1 %2058, i32 %2059, i32 %2060
  %2062 = icmp eq i32 %2061, 65535
  br i1 %2062, label %2142, label %2063

; <label>:2063                                    ; preds = %2052
  %2064 = mul nuw nsw i32 %2061, 40
  %2065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.ResRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.ResRet.f32 %2065, 2
  %2069 = add nuw nsw i32 %2064, 12
  %2070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = extractvalue %dx.types.ResRet.f32 %2070, 1
  %2073 = extractvalue %dx.types.ResRet.f32 %2070, 2
  %2074 = add nuw nsw i32 %2064, 24
  %2075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.ResRet.f32 %2075, 1
  %2078 = extractvalue %dx.types.ResRet.f32 %2075, 2
  %2079 = add nuw nsw i32 %2064, 36
  %2080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = fsub fast float %2045, %2066
  %2083 = fsub fast float %2046, %2067
  %2084 = fsub fast float %2047, %2068
  %2085 = fmul fast float %2081, %2082
  %2086 = fmul fast float %2081, %2083
  %2087 = fmul fast float %2081, %2084
  %2088 = call float @dx.op.unary.f32(i32 27, float %2085)  ; Round_ni(value)
  %2089 = call float @dx.op.unary.f32(i32 27, float %2086)  ; Round_ni(value)
  %2090 = call float @dx.op.unary.f32(i32 27, float %2087)  ; Round_ni(value)
  %2091 = fadd fast float %2088, 5.000000e-01
  %2092 = fadd fast float %2089, 5.000000e-01
  %2093 = fadd fast float %2090, 5.000000e-01
  %2094 = fmul fast float %2091, %2071
  %2095 = fmul fast float %2092, %2072
  %2096 = fmul fast float %2093, %2073
  %2097 = shl i32 %36, 2
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = add i32 %2099, 0
  %2101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2102 = call float @dx.op.unary.f32(i32 22, float %2094)  ; Frc(value)
  %2103 = call float @dx.op.unary.f32(i32 22, float %2095)  ; Frc(value)
  %2104 = call float @dx.op.unary.f32(i32 22, float %2096)  ; Frc(value)
  %2105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2101, %dx.types.Handle %30, float %2102, float %2103, float %2104, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2106 = extractvalue %dx.types.ResRet.f32 %2105, 0
  %2107 = extractvalue %dx.types.ResRet.f32 %2105, 1
  %2108 = extractvalue %dx.types.ResRet.f32 %2105, 2
  %2109 = fmul fast float %2106, 1.023000e+03
  %2110 = fmul fast float %2107, 1.023000e+03
  %2111 = fmul fast float %2108, 1.023000e+03
  %2112 = fadd fast float %2109, 5.000000e-01
  %2113 = fadd fast float %2110, 5.000000e-01
  %2114 = fadd fast float %2111, 5.000000e-01
  %2115 = call float @dx.op.unary.f32(i32 27, float %2112)  ; Round_ni(value)
  %2116 = call float @dx.op.unary.f32(i32 27, float %2113)  ; Round_ni(value)
  %2117 = call float @dx.op.unary.f32(i32 27, float %2114)  ; Round_ni(value)
  %2118 = fsub fast float %2085, %2088
  %2119 = fsub fast float %2086, %2089
  %2120 = fsub fast float %2087, %2090
  %2121 = fmul fast float %2118, 7.500000e-01
  %2122 = fmul fast float %2119, 7.500000e-01
  %2123 = fmul fast float %2120, 7.500000e-01
  %2124 = fadd fast float %2088, 1.250000e-01
  %2125 = fadd fast float %2124, %2121
  %2126 = fadd fast float %2125, %2115
  %2127 = fadd fast float %2089, 1.250000e-01
  %2128 = fadd fast float %2127, %2122
  %2129 = fadd fast float %2128, %2116
  %2130 = fadd fast float %2090, 1.250000e-01
  %2131 = fadd fast float %2130, %2123
  %2132 = fadd fast float %2131, %2117
  %2133 = fmul fast float %2126, %2076
  %2134 = fmul fast float %2129, %2077
  %2135 = fmul fast float %2132, %2078
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = add i32 %2137, 0
  %2139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2139, %dx.types.Handle %28, float %2133, float %2134, float %2135, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  br label %2142

; <label>:2142                                    ; preds = %2063, %2052
  %2143 = phi float [ %2141, %2063 ], [ -1.000000e+00, %2052 ]
  %2144 = fadd fast float %2143, %2050
  %2145 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  br label %2146

; <label>:2146                                    ; preds = %2142, %2040
  %2147 = phi float [ %2145, %2142 ], [ %2050, %2040 ]
  %2148 = fmul fast float %2147, %400
  br label %2149

; <label>:2149                                    ; preds = %2146, %2035
  %2150 = phi float [ %2148, %2146 ], [ %400, %2035 ]
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = and i32 %2152, 256
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2201, label %2155

; <label>:2155                                    ; preds = %2149
  %2156 = add i32 %35, 512
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = add i32 %2158, 0
  %2160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2160, %dx.types.Handle %72, float %2036, float %2037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2162 = extractvalue %dx.types.ResRet.f32 %2161, 0
  %2163 = add i32 %35, 132
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = shl i32 %2165, 4
  %2167 = and i32 %2166, 32752
  %2168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2167)  ; LegacyF16ToF32(value)
  %2169 = lshr i32 %2165, 7
  %2170 = and i32 %2169, 32752
  %2171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2170)  ; LegacyF16ToF32(value)
  %2172 = fsub fast float 1.000000e+00, %2150
  %2173 = call float @dx.op.binary.f32(i32 35, float %2172, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2174 = bitcast float %2150 to i32
  %2175 = sitofp i32 %2174 to float
  %2176 = fadd fast float %2175, 0xC1CFBF8940000000
  %2177 = fmul fast float %2171, %2176
  %2178 = fadd fast float %2177, 0x41CFBF8940000000
  %2179 = fptosi float %2178 to i32
  %2180 = bitcast i32 %2179 to float
  %2181 = bitcast float %2173 to i32
  %2182 = sitofp i32 %2181 to float
  %2183 = fadd fast float %2182, 0xC1CFBF8940000000
  %2184 = fmul fast float %2183, %2171
  %2185 = fadd fast float %2184, 0x41CFBF8940000000
  %2186 = fptosi float %2185 to i32
  %2187 = bitcast i32 %2186 to float
  %2188 = fmul fast float %2180, %2168
  %2189 = fmul fast float %2187, %2168
  %2190 = fsub fast float %2173, %2188
  %2191 = fadd fast float %2189, %2173
  %2192 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2193 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2194 = fsub fast float %2162, %2192
  %2195 = fsub fast float %2193, %2192
  %2196 = bitcast float %2195 to i32
  %2197 = sub nsw i32 2129859010, %2196
  %2198 = bitcast i32 %2197 to float
  %2199 = fmul fast float %2198, %2194
  %2200 = call float @dx.op.unary.f32(i32 7, float %2199)  ; Saturate(value)
  br label %2201

; <label>:2201                                    ; preds = %2155, %2149
  %2202 = phi float [ %2200, %2155 ], [ %2150, %2149 ]
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 128
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2223, label %2207

; <label>:2207                                    ; preds = %2201
  %2208 = add i32 %35, 496
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = add i32 %2210, 0
  %2212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2212, %dx.types.Handle %72, float %2036, float %2037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 524288
  %2218 = icmp ne i32 %2217, 0
  %2219 = fcmp fast ogt float %2214, 0x3FE0101020000000
  %2220 = select i1 %2219, float 1.000000e+00, float 0.000000e+00
  %2221 = select i1 %2218, float %2220, float %2214
  %2222 = fmul fast float %2221, %2202
  br label %2223

; <label>:2223                                    ; preds = %2207, %2201
  %2224 = phi float [ %2222, %2207 ], [ %2202, %2201 ]
  %2225 = fcmp fast ult float %2224, 0x3F70101020000000
  br i1 %2225, label %2879, label %2226

; <label>:2226                                    ; preds = %2223
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = and i32 %2228, 16
  %2230 = icmp eq i32 %2229, 0
  br i1 %2230, label %2429, label %2231

; <label>:2231                                    ; preds = %2226
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = add i32 %35, 448
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = add i32 %2236, 0
  %2238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2238, %dx.types.Handle %71, float %2036, float %2037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2240 = extractvalue %dx.types.ResRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.ResRet.f32 %2239, 1
  %2242 = extractvalue %dx.types.ResRet.f32 %2239, 2
  %2243 = extractvalue %dx.types.ResRet.f32 %2239, 3
  %2244 = and i32 %2233, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = lshr i32 %2233, 8
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2243, %2245
  %2250 = fadd fast float %2249, %2248
  %2251 = fmul fast float %2250, 0x3F70101000000000
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = and i32 %2253, 512
  %2255 = icmp eq i32 %2254, 0
  br i1 %2255, label %2264, label %2256

; <label>:2256                                    ; preds = %2231
  %2257 = add i32 %35, 528
  %2258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2259 = extractvalue %dx.types.ResRet.i32 %2258, 0
  %2260 = add i32 %2259, 0
  %2261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2261, %dx.types.Handle %72, float %2036, float %2037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2263 = extractvalue %dx.types.ResRet.f32 %2262, 0
  br label %2264

; <label>:2264                                    ; preds = %2256, %2231
  %2265 = phi float [ %2263, %2256 ], [ 1.000000e+00, %2231 ]
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = and i32 %2267, 33554432
  %2269 = icmp eq i32 %2268, 0
  br i1 %2269, label %2376, label %2270

; <label>:2270                                    ; preds = %2264
  %2271 = add i32 %35, 256
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = lshr i32 %2273, 16
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = add i32 %35, 260
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 65535
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 24
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = and i32 %2284, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = fmul fast float %2289, 0x3F70101020000000
  %2291 = lshr i32 %2284, 8
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101020000000
  %2295 = lshr i32 %2284, 16
  %2296 = and i32 %2295, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = fmul fast float %2297, 0x3F70101020000000
  %2299 = add i32 %35, 252
  %2300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.i32 %2300, 0
  %2302 = lshr i32 %2301, 24
  %2303 = uitofp i32 %2302 to float
  %2304 = fmul fast float %2303, 0x3F70101020000000
  %2305 = and i32 %2301, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = fmul fast float %2306, 0x3F70101020000000
  %2308 = lshr i32 %2301, 8
  %2309 = and i32 %2308, 255
  %2310 = uitofp i32 %2309 to float
  %2311 = fmul fast float %2310, 0x3F70101020000000
  %2312 = lshr i32 %2301, 16
  %2313 = and i32 %2312, 255
  %2314 = uitofp i32 %2313 to float
  %2315 = fmul fast float %2314, 0x3F70101020000000
  %2316 = bitcast float %2240 to i32
  %2317 = ashr i32 %2316, 1
  %2318 = sub nsw i32 1597463174, %2317
  %2319 = bitcast i32 %2318 to float
  %2320 = fmul fast float %2240, 5.000000e-01
  %2321 = fmul fast float %2319, %2319
  %2322 = fmul fast float %2321, %2320
  %2323 = fsub fast float 1.500000e+00, %2322
  %2324 = fmul fast float %2319, %2240
  %2325 = fmul fast float %2324, %2323
  %2326 = bitcast float %2241 to i32
  %2327 = ashr i32 %2326, 1
  %2328 = sub nsw i32 1597463174, %2327
  %2329 = bitcast i32 %2328 to float
  %2330 = fmul fast float %2241, 5.000000e-01
  %2331 = fmul fast float %2329, %2329
  %2332 = fmul fast float %2331, %2330
  %2333 = fsub fast float 1.500000e+00, %2332
  %2334 = fmul fast float %2329, %2241
  %2335 = fmul fast float %2334, %2333
  %2336 = bitcast float %2242 to i32
  %2337 = ashr i32 %2336, 1
  %2338 = sub nsw i32 1597463174, %2337
  %2339 = bitcast i32 %2338 to float
  %2340 = fmul fast float %2242, 5.000000e-01
  %2341 = fmul fast float %2339, %2339
  %2342 = fmul fast float %2341, %2340
  %2343 = fsub fast float 1.500000e+00, %2342
  %2344 = fmul fast float %2339, %2242
  %2345 = fmul fast float %2344, %2343
  %2346 = fsub fast float %2325, %2307
  %2347 = fsub fast float %2335, %2311
  %2348 = fsub fast float %2345, %2315
  %2349 = fmul fast float %2346, %2275
  %2350 = fmul fast float %2347, %2277
  %2351 = fmul fast float %2348, %2282
  %2352 = fadd fast float %2349, %2290
  %2353 = fadd fast float %2350, %2294
  %2354 = fadd fast float %2351, %2298
  %2355 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2356 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  %2357 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2358 = fmul fast float %2355, %2355
  %2359 = fmul fast float %2356, %2356
  %2360 = fmul fast float %2357, %2357
  %2361 = fsub fast float %2358, %2240
  %2362 = fsub fast float %2359, %2241
  %2363 = fsub fast float %2360, %2242
  %2364 = fmul fast float %2361, %2265
  %2365 = fmul fast float %2362, %2265
  %2366 = fmul fast float %2363, %2265
  %2367 = fadd fast float %2364, %2240
  %2368 = fadd fast float %2365, %2241
  %2369 = fadd fast float %2366, %2242
  %2370 = fadd fast float %2287, %2251
  %2371 = fsub fast float %2370, %2304
  %2372 = call float @dx.op.unary.f32(i32 7, float %2371)  ; Saturate(value)
  %2373 = fsub fast float %2372, %2251
  %2374 = fmul fast float %2373, %2265
  %2375 = fadd fast float %2374, %2251
  br label %2429

; <label>:2376                                    ; preds = %2264
  %2377 = and i32 %2267, 134217728
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2413, label %2379

; <label>:2379                                    ; preds = %2376
  %2380 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2381 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2382 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2383 = fadd fast float %2380, -5.000000e-01
  %2384 = fadd fast float %2381, -5.000000e-01
  %2385 = fadd fast float %2382, -5.000000e-01
  %2386 = fmul fast float %2383, %2265
  %2387 = fmul fast float %2384, %2265
  %2388 = fmul fast float %2385, %2265
  %2389 = fadd fast float %2386, 5.000000e-01
  %2390 = fadd fast float %2387, 5.000000e-01
  %2391 = fadd fast float %2388, 5.000000e-01
  %2392 = call float @dx.op.unary.f32(i32 24, float %2240)  ; Sqrt(value)
  %2393 = call float @dx.op.unary.f32(i32 24, float %2241)  ; Sqrt(value)
  %2394 = call float @dx.op.unary.f32(i32 24, float %2242)  ; Sqrt(value)
  %2395 = fmul fast float %2389, 2.000000e+00
  %2396 = fsub fast float 1.000000e+00, %2395
  %2397 = fmul fast float %2396, %2392
  %2398 = fadd fast float %2397, %2395
  %2399 = fmul fast float %2398, %2392
  %2400 = fmul fast float %2390, 2.000000e+00
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = fmul fast float %2401, %2393
  %2403 = fadd fast float %2402, %2400
  %2404 = fmul fast float %2403, %2393
  %2405 = fmul fast float %2391, 2.000000e+00
  %2406 = fsub fast float 1.000000e+00, %2405
  %2407 = fmul fast float %2406, %2394
  %2408 = fadd fast float %2407, %2405
  %2409 = fmul fast float %2408, %2394
  %2410 = fmul fast float %2399, %2399
  %2411 = fmul fast float %2404, %2404
  %2412 = fmul fast float %2409, %2409
  br label %2429

; <label>:2413                                    ; preds = %2376
  %2414 = fmul fast float %278, %278
  %2415 = fmul fast float %282, %282
  %2416 = fmul fast float %286, %286
  %2417 = fadd fast float %2414, -1.000000e+00
  %2418 = fadd fast float %2415, -1.000000e+00
  %2419 = fadd fast float %2416, -1.000000e+00
  %2420 = fmul fast float %2265, %2417
  %2421 = fmul fast float %2265, %2418
  %2422 = fmul fast float %2265, %2419
  %2423 = fadd fast float %2420, 1.000000e+00
  %2424 = fadd fast float %2421, 1.000000e+00
  %2425 = fadd fast float %2422, 1.000000e+00
  %2426 = fmul fast float %2423, %2240
  %2427 = fmul fast float %2424, %2241
  %2428 = fmul fast float %2425, %2242
  br label %2429

; <label>:2429                                    ; preds = %2413, %2379, %2270, %2226
  %2430 = phi float [ %2375, %2270 ], [ %2251, %2379 ], [ %2251, %2413 ], [ 0x3FA23C0BE0000000, %2226 ]
  %2431 = phi float [ %2367, %2270 ], [ %2410, %2379 ], [ %2426, %2413 ], [ 1.000000e+00, %2226 ]
  %2432 = phi float [ %2368, %2270 ], [ %2411, %2379 ], [ %2427, %2413 ], [ 1.000000e+00, %2226 ]
  %2433 = phi float [ %2369, %2270 ], [ %2412, %2379 ], [ %2428, %2413 ], [ 1.000000e+00, %2226 ]
  %2434 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2435 = extractvalue %dx.types.CBufRet.i32 %2434, 1
  %2436 = and i32 %2435, 1
  %2437 = icmp ne i32 %2436, 0
  %2438 = add i32 %35, 356
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 32
  %2442 = icmp ne i32 %2441, 0
  %2443 = and i1 %2437, %2442
  %2444 = select i1 %2443, float 1.000000e+00, float %2431
  %2445 = select i1 %2443, float 0x3FD3333340000000, float %2432
  %2446 = select i1 %2443, float 0x3FD3333340000000, float %2433
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 32
  %2450 = icmp eq i32 %2449, 0
  br i1 %2450, label %2523, label %2451

; <label>:2451                                    ; preds = %2429
  %2452 = add i32 %35, 124
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2452, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = add i32 %35, 464
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = add i32 %2457, 0
  %2459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2460 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2459, %dx.types.Handle %71, float %2036, float %2037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2461 = extractvalue %dx.types.ResRet.f32 %2460, 0
  %2462 = extractvalue %dx.types.ResRet.f32 %2460, 1
  %2463 = extractvalue %dx.types.ResRet.f32 %2460, 2
  %2464 = extractvalue %dx.types.ResRet.f32 %2460, 3
  %2465 = and i32 %2454, 255
  %2466 = uitofp i32 %2465 to float
  %2467 = lshr i32 %2454, 8
  %2468 = and i32 %2467, 255
  %2469 = uitofp i32 %2468 to float
  %2470 = lshr i32 %2454, 16
  %2471 = and i32 %2470, 255
  %2472 = uitofp i32 %2471 to float
  %2473 = fmul fast float %2472, 0x3F70101000000000
  %2474 = fmul fast float %2461, %2466
  %2475 = fadd fast float %2474, %2469
  %2476 = fmul fast float %2475, 0x3F70101000000000
  %2477 = fadd fast float %2462, -5.000000e-01
  %2478 = fadd fast float %2464, -5.000000e-01
  %2479 = fmul fast float %2477, %2473
  %2480 = fmul fast float %2478, %2473
  %2481 = fadd fast float %2479, 5.000000e-01
  %2482 = fadd fast float %2480, 5.000000e-01
  %2483 = fmul fast float %2481, 2.000000e+00
  %2484 = fadd fast float %2483, -1.000000e+00
  %2485 = fmul fast float %2482, 2.000000e+00
  %2486 = fadd fast float %2485, -1.000000e+00
  %2487 = fadd fast float %2484, %2486
  %2488 = fmul fast float %2487, 5.000000e-01
  %2489 = fsub fast float %2484, %2486
  %2490 = fmul fast float %2489, 5.000000e-01
  %2491 = call float @dx.op.unary.f32(i32 6, float %2488)  ; FAbs(value)
  %2492 = fsub fast float 1.000000e+00, %2491
  %2493 = call float @dx.op.unary.f32(i32 6, float %2490)  ; FAbs(value)
  %2494 = fsub fast float %2492, %2493
  %2495 = call float @dx.op.dot3.f32(i32 55, float %2488, float %2490, float %2494, float %2488, float %2490, float %2494)  ; Dot3(ax,ay,az,bx,by,bz)
  %2496 = call float @dx.op.unary.f32(i32 25, float %2495)  ; Rsqrt(value)
  %2497 = fmul fast float %2488, %2496
  %2498 = fmul fast float %2490, %2496
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = and i32 %2500, 67108864
  %2502 = icmp eq i32 %2501, 0
  br i1 %2502, label %2519, label %2503

; <label>:2503                                    ; preds = %2451
  %2504 = add i32 %35, 312
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = and i32 %2506, 65535
  %2508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2507)  ; LegacyF16ToF32(value)
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = and i32 %2510, 65535
  %2512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2511)  ; LegacyF16ToF32(value)
  %2513 = lshr i32 %2506, 16
  %2514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2513)  ; LegacyF16ToF32(value)
  %2515 = fsub fast float %2476, %2514
  %2516 = fmul fast float %2515, %2508
  %2517 = fadd fast float %2516, %2512
  %2518 = call float @dx.op.unary.f32(i32 7, float %2517)  ; Saturate(value)
  br label %2519

; <label>:2519                                    ; preds = %2503, %2451
  %2520 = phi float [ %2518, %2503 ], [ %2476, %2451 ]
  %2521 = call float @dx.op.dot2.f32(i32 54, float %2497, float %2498, float %1940, float %1941)  ; Dot2(ax,ay,bx,by)
  %2522 = call float @dx.op.dot2.f32(i32 54, float %2497, float %2498, float %1942, float %1943)  ; Dot2(ax,ay,bx,by)
  br label %2523

; <label>:2523                                    ; preds = %2519, %2429
  %2524 = phi float [ %2520, %2519 ], [ 0x3FD6666660000000, %2429 ]
  %2525 = phi float [ %2521, %2519 ], [ 0.000000e+00, %2429 ]
  %2526 = phi float [ %2522, %2519 ], [ 0.000000e+00, %2429 ]
  %2527 = phi float [ %2463, %2519 ], [ 1.000000e+00, %2429 ]
  %2528 = add i32 %35, 192
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = lshr i32 %2530, 22
  %2532 = shl nuw nsw i32 %2531, 5
  %2533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2532)  ; LegacyF16ToF32(value)
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = and i32 %2535, 64
  %2537 = icmp eq i32 %2536, 0
  br i1 %2537, label %2571, label %2538

; <label>:2538                                    ; preds = %2523
  %2539 = add i32 %35, 480
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = add i32 %2541, 0
  %2543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = and i32 %2545, 131072
  %2547 = icmp eq i32 %2546, 0
  %2548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2543, %dx.types.Handle %71, float %2036, float %2037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2549 = extractvalue %dx.types.ResRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.ResRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.ResRet.f32 %2548, 2
  %2552 = fmul fast float %2549, %266
  %2553 = fmul fast float %2550, %269
  %2554 = fmul fast float %2551, %272
  br i1 %2547, label %2561, label %2555

; <label>:2555                                    ; preds = %2538
  %2556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2557 = extractvalue %dx.types.CBufRet.f32 %2556, 0
  %2558 = fmul fast float %2557, %2552
  %2559 = fmul fast float %2557, %2553
  %2560 = fmul fast float %2557, %2554
  br label %2561

; <label>:2561                                    ; preds = %2555, %2538
  %2562 = phi float [ %2558, %2555 ], [ %2552, %2538 ]
  %2563 = phi float [ %2559, %2555 ], [ %2553, %2538 ]
  %2564 = phi float [ %2560, %2555 ], [ %2554, %2538 ]
  %2565 = fmul fast float %2562, %2533
  %2566 = select i1 %176, float %2565, float %2562
  %2567 = call float @dx.op.dot3.f32(i32 55, float %2566, float %2563, float %2564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2568 = select i1 %176, float 0.000000e+00, float %2562
  %2569 = select i1 %176, float %2567, float %2563
  %2570 = select i1 %176, float 0.000000e+00, float %2564
  br label %2571

; <label>:2571                                    ; preds = %2561, %2523
  %2572 = phi float [ %2568, %2561 ], [ 0.000000e+00, %2523 ]
  %2573 = phi float [ %2569, %2561 ], [ 0.000000e+00, %2523 ]
  %2574 = phi float [ %2570, %2561 ], [ 0.000000e+00, %2523 ]
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, 26624
  %2578 = icmp eq i32 %2577, 0
  br i1 %2578, label %2636, label %2579

; <label>:2579                                    ; preds = %2571
  %2580 = add i32 %35, 544
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = add i32 %2582, 0
  %2584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2584, %dx.types.Handle %72, float %2036, float %2037, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2586 = extractvalue %dx.types.ResRet.f32 %2585, 0
  %2587 = extractvalue %dx.types.ResRet.f32 %2585, 1
  %2588 = extractvalue %dx.types.ResRet.f32 %2585, 3
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = and i32 %2590, 1048576
  %2592 = icmp ne i32 %2591, 0
  %2593 = and i32 %2590, 8192
  %2594 = icmp eq i32 %2593, 0
  br i1 %2594, label %2609, label %2595

; <label>:2595                                    ; preds = %2579
  %2596 = extractvalue %dx.types.ResRet.f32 %2585, 2
  %2597 = select i1 %2592, float %2596, float %2587
  %2598 = select i1 %2592, float %2586, float %2587
  %2599 = add i32 %35, 128
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = lshr i32 %2601, 16
  %2603 = and i32 %2602, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = fmul fast float %2604, 0x3F80101020000000
  %2606 = fmul fast float %2605, %2598
  %2607 = fmul fast float %2605, %2587
  %2608 = fmul fast float %2605, %2597
  br label %2609

; <label>:2609                                    ; preds = %2595, %2579
  %2610 = phi float [ %2606, %2595 ], [ 0.000000e+00, %2579 ]
  %2611 = phi float [ %2607, %2595 ], [ 0.000000e+00, %2579 ]
  %2612 = phi float [ %2608, %2595 ], [ 0.000000e+00, %2579 ]
  %2613 = and i32 %2590, 2048
  %2614 = icmp eq i32 %2613, 0
  br i1 %2614, label %2623, label %2615

; <label>:2615                                    ; preds = %2609
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = shl i32 %2617, 4
  %2619 = and i32 %2618, 32752
  %2620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2619)  ; LegacyF16ToF32(value)
  %2621 = fmul fast float %2620, %2588
  %2622 = call float @dx.op.binary.f32(i32 35, float %2621, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2623

; <label>:2623                                    ; preds = %2615, %2609
  %2624 = phi float [ %2622, %2615 ], [ 0x3F70101020000000, %2609 ]
  %2625 = and i32 %2590, 16384
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %2636, label %2627

; <label>:2627                                    ; preds = %2623
  %2628 = add i32 %35, 128
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = lshr i32 %2630, 24
  %2632 = uitofp i32 %2631 to float
  %2633 = fmul fast float %2586, 0x3F70101020000000
  %2634 = select i1 %2592, float 0x3F70101020000000, float %2633
  %2635 = fmul fast float %2634, %2632
  br label %2636

; <label>:2636                                    ; preds = %2627, %2623, %2571
  %2637 = phi float [ %2610, %2627 ], [ %2610, %2623 ], [ 0.000000e+00, %2571 ]
  %2638 = phi float [ %2611, %2627 ], [ %2611, %2623 ], [ 0.000000e+00, %2571 ]
  %2639 = phi float [ %2612, %2627 ], [ %2612, %2623 ], [ 0.000000e+00, %2571 ]
  %2640 = phi float [ %2624, %2627 ], [ %2624, %2623 ], [ 0x3F70101020000000, %2571 ]
  %2641 = phi float [ %2635, %2627 ], [ 0.000000e+00, %2623 ], [ 0.000000e+00, %2571 ]
  %2642 = add i32 %35, 128
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 255
  %2646 = uitofp i32 %2645 to float
  %2647 = lshr i32 %2644, 8
  %2648 = and i32 %2647, 255
  %2649 = uitofp i32 %2648 to float
  %2650 = call float @dx.op.dot3.f32(i32 55, float %2444, float %2445, float %2446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2651 = fmul fast float %2649, %2650
  %2652 = fadd fast float %2651, %2646
  %2653 = fmul fast float %2652, 0x3F70101020000000
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  br i1 %1928, label %2655, label %2663

; <label>:2655                                    ; preds = %2636
  %2656 = fsub fast float 1.000000e+00, %2224
  %2657 = fmul fast float %2656, %1912
  %2658 = fmul fast float %2656, %1913
  %2659 = fmul fast float %2656, %1914
  %2660 = fmul fast float %2656, %1915
  %2661 = fmul fast float %2656, %1916
  %2662 = fmul fast float %2656, %1917
  br label %2663

; <label>:2663                                    ; preds = %2655, %2636
  %2664 = phi float [ %2657, %2655 ], [ %1912, %2636 ]
  %2665 = phi float [ %2658, %2655 ], [ %1913, %2636 ]
  %2666 = phi float [ %2659, %2655 ], [ %1914, %2636 ]
  %2667 = phi float [ %2660, %2655 ], [ %1915, %2636 ]
  %2668 = phi float [ %2661, %2655 ], [ %1916, %2636 ]
  %2669 = phi float [ %2662, %2655 ], [ %1917, %2636 ]
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = and i32 %2671, 3
  %2673 = icmp eq i32 %2672, 3
  br i1 %2673, label %2752, label %2674

; <label>:2674                                    ; preds = %2663
  %2675 = and i32 %2671, 16
  %2676 = icmp ne i32 %2675, 0
  %2677 = select i1 %2676, float %2224, float 0.000000e+00
  %2678 = icmp eq i32 %2672, 0
  br i1 %2678, label %2679, label %2707

; <label>:2679                                    ; preds = %2674
  %2680 = and i32 %2671, 64
  %2681 = icmp ne i32 %2680, 0
  %2682 = select i1 %2681, float %2224, float 0.000000e+00
  %2683 = fsub fast float %2444, %2664
  %2684 = fsub fast float %2445, %2665
  %2685 = fsub fast float %2446, %2666
  %2686 = fmul fast float %2677, %2683
  %2687 = fmul fast float %2677, %2684
  %2688 = fmul fast float %2677, %2685
  %2689 = fadd fast float %2686, %2664
  %2690 = fadd fast float %2687, %2665
  %2691 = fadd fast float %2688, %2666
  %2692 = fsub fast float %2430, %1921
  %2693 = fmul fast float %2677, %2692
  %2694 = fadd fast float %2693, %1921
  %2695 = fsub fast float %2572, %2667
  %2696 = fsub fast float %2573, %2668
  %2697 = fsub fast float %2574, %2669
  %2698 = fmul fast float %2682, %2695
  %2699 = fmul fast float %2682, %2696
  %2700 = fmul fast float %2682, %2697
  %2701 = fadd fast float %2698, %2667
  %2702 = fadd fast float %2699, %2668
  %2703 = fadd fast float %2700, %2669
  %2704 = fsub fast float %2654, %1926
  %2705 = fmul fast float %2677, %2704
  %2706 = fadd fast float %2705, %1926
  br label %2752

; <label>:2707                                    ; preds = %2674
  %2708 = icmp eq i32 %2672, 1
  br i1 %2708, label %2709, label %2722

; <label>:2709                                    ; preds = %2707
  %2710 = fadd fast float %2444, -1.000000e+00
  %2711 = fadd fast float %2445, -1.000000e+00
  %2712 = fadd fast float %2446, -1.000000e+00
  %2713 = fmul fast float %2677, %2710
  %2714 = fmul fast float %2677, %2711
  %2715 = fmul fast float %2677, %2712
  %2716 = fadd fast float %2713, 1.000000e+00
  %2717 = fadd fast float %2714, 1.000000e+00
  %2718 = fadd fast float %2715, 1.000000e+00
  %2719 = fmul fast float %2716, %2664
  %2720 = fmul fast float %2717, %2665
  %2721 = fmul fast float %2718, %2666
  br label %2752

; <label>:2722                                    ; preds = %2707
  %2723 = icmp eq i32 %2672, 2
  br i1 %2723, label %2724, label %2752

; <label>:2724                                    ; preds = %2722
  %2725 = call float @dx.op.unary.f32(i32 24, float %2444)  ; Sqrt(value)
  %2726 = call float @dx.op.unary.f32(i32 24, float %2445)  ; Sqrt(value)
  %2727 = call float @dx.op.unary.f32(i32 24, float %2446)  ; Sqrt(value)
  %2728 = fadd fast float %2725, -5.000000e-01
  %2729 = fadd fast float %2726, -5.000000e-01
  %2730 = fadd fast float %2727, -5.000000e-01
  %2731 = fmul fast float %2728, %2677
  %2732 = fmul fast float %2729, %2677
  %2733 = fmul fast float %2730, %2677
  %2734 = fadd fast float %2731, 5.000000e-01
  %2735 = fadd fast float %2732, 5.000000e-01
  %2736 = fadd fast float %2733, 5.000000e-01
  %2737 = fmul fast float %2734, 2.000000e+00
  %2738 = fsub fast float 1.000000e+00, %2737
  %2739 = fmul fast float %2738, %2664
  %2740 = fadd fast float %2739, %2737
  %2741 = fmul fast float %2740, %2664
  %2742 = fmul fast float %2735, 2.000000e+00
  %2743 = fsub fast float 1.000000e+00, %2742
  %2744 = fmul fast float %2743, %2665
  %2745 = fadd fast float %2744, %2742
  %2746 = fmul fast float %2745, %2665
  %2747 = fmul fast float %2736, 2.000000e+00
  %2748 = fsub fast float 1.000000e+00, %2747
  %2749 = fmul fast float %2748, %2666
  %2750 = fadd fast float %2749, %2747
  %2751 = fmul fast float %2750, %2666
  br label %2752

; <label>:2752                                    ; preds = %2724, %2722, %2709, %2679, %2663
  %2753 = phi float [ %2664, %2663 ], [ %2741, %2724 ], [ %2664, %2722 ], [ %2719, %2709 ], [ %2689, %2679 ]
  %2754 = phi float [ %2665, %2663 ], [ %2746, %2724 ], [ %2665, %2722 ], [ %2720, %2709 ], [ %2690, %2679 ]
  %2755 = phi float [ %2666, %2663 ], [ %2751, %2724 ], [ %2666, %2722 ], [ %2721, %2709 ], [ %2691, %2679 ]
  %2756 = phi float [ %2667, %2663 ], [ %2667, %2724 ], [ %2667, %2722 ], [ %2667, %2709 ], [ %2701, %2679 ]
  %2757 = phi float [ %2668, %2663 ], [ %2668, %2724 ], [ %2668, %2722 ], [ %2668, %2709 ], [ %2702, %2679 ]
  %2758 = phi float [ %2669, %2663 ], [ %2669, %2724 ], [ %2669, %2722 ], [ %2669, %2709 ], [ %2703, %2679 ]
  %2759 = phi float [ %1921, %2663 ], [ %1921, %2724 ], [ %1921, %2722 ], [ %1921, %2709 ], [ %2694, %2679 ]
  %2760 = phi float [ %1926, %2663 ], [ %1926, %2724 ], [ %1926, %2722 ], [ %1926, %2709 ], [ %2706, %2679 ]
  %2761 = and i32 %2671, 12
  %2762 = icmp eq i32 %2761, 12
  br i1 %2762, label %2879, label %2763

; <label>:2763                                    ; preds = %2752
  %2764 = and i32 %2671, 2097184
  %2765 = icmp eq i32 %2764, 2097184
  %2766 = select i1 %2765, float %2224, float 0.000000e+00
  %2767 = and i32 %2671, 4194336
  %2768 = icmp eq i32 %2767, 4194336
  %2769 = select i1 %2768, float %2224, float 0.000000e+00
  %2770 = and i32 %2671, 8388640
  %2771 = icmp eq i32 %2770, 8388640
  %2772 = select i1 %2771, float %2224, float 0.000000e+00
  %2773 = and i32 %2671, 2048
  %2774 = icmp ne i32 %2773, 0
  %2775 = select i1 %2774, float %2224, float 0.000000e+00
  %2776 = and i32 %2671, 8192
  %2777 = icmp ne i32 %2776, 0
  %2778 = select i1 %2777, float %2224, float 0.000000e+00
  %2779 = and i32 %2671, 16384
  %2780 = icmp ne i32 %2779, 0
  %2781 = select i1 %2780, float %2224, float 0.000000e+00
  %2782 = icmp eq i32 %2761, 0
  br i1 %2782, label %2783, label %2811

; <label>:2783                                    ; preds = %2763
  %2784 = fsub fast float %2525, %1910
  %2785 = fsub fast float %2526, %1911
  %2786 = fmul fast float %2766, %2784
  %2787 = fmul fast float %2766, %2785
  %2788 = fadd fast float %2786, %1910
  %2789 = fadd fast float %2787, %1911
  %2790 = fsub fast float %2527, %1923
  %2791 = fmul fast float %2769, %2790
  %2792 = fadd fast float %2791, %1923
  %2793 = fsub fast float %2524, %1922
  %2794 = fmul fast float %2772, %2793
  %2795 = fadd fast float %2794, %1922
  %2796 = fsub fast float %2640, %1924
  %2797 = fmul fast float %2775, %2796
  %2798 = fadd fast float %2797, %1924
  %2799 = fsub fast float %2637, %1918
  %2800 = fsub fast float %2638, %1919
  %2801 = fsub fast float %2639, %1920
  %2802 = fmul fast float %2778, %2799
  %2803 = fmul fast float %2778, %2800
  %2804 = fmul fast float %2778, %2801
  %2805 = fadd fast float %2802, %1918
  %2806 = fadd fast float %2803, %1919
  %2807 = fadd fast float %2804, %1920
  %2808 = fsub fast float %2641, %1925
  %2809 = fmul fast float %2781, %2808
  %2810 = fadd fast float %2809, %1925
  br label %2879

; <label>:2811                                    ; preds = %2763
  %2812 = icmp eq i32 %2761, 4
  br i1 %2812, label %2813, label %2855

; <label>:2813                                    ; preds = %2811
  %2814 = fmul fast float %2766, %2525
  %2815 = fmul fast float %2766, %2526
  %2816 = fadd fast float %2814, %1910
  %2817 = fadd fast float %2815, %1911
  %2818 = call float @dx.op.binary.f32(i32 36, float %1923, float %2527)  ; FMin(a,b)
  %2819 = fsub fast float %2818, %1923
  %2820 = fmul fast float %2819, %2769
  %2821 = fadd fast float %2820, %1923
  %2822 = fadd fast float %2524, %1922
  %2823 = fmul fast float %2822, 0x3FF337FAE0000000
  %2824 = fmul fast float %1922, %1922
  %2825 = fmul fast float %2524, %2524
  %2826 = fadd fast float %2825, %2824
  %2827 = fmul fast float %2826, 0x3FE5152B00000000
  %2828 = fmul fast float %1922, 0xBFCC1F85E0000000
  %2829 = fmul fast float %2828, %2524
  %2830 = fadd fast float %2829, 0xBFE1363700000000
  %2831 = fadd fast float %2830, %2823
  %2832 = fsub fast float %2831, %2827
  %2833 = fmul fast float %2822, 0x3FBA6F0D00000000
  %2834 = fmul fast float %2826, 0x3FD0432880000000
  %2835 = fmul fast float %1922, 0xBFEF110800000000
  %2836 = fmul fast float %2835, %2524
  %2837 = fadd fast float %2836, 1.000000e+00
  %2838 = fsub fast float %2837, %2833
  %2839 = fadd fast float %2838, %2834
  %2840 = fdiv fast float %2832, %2839
  %2841 = call float @dx.op.unary.f32(i32 7, float %2840)  ; Saturate(value)
  %2842 = fsub fast float %2841, %1922
  %2843 = fmul fast float %2842, %2772
  %2844 = fadd fast float %2843, %1922
  %2845 = fmul fast float %2775, %2640
  %2846 = fadd fast float %2845, %1924
  %2847 = fmul fast float %2778, %2637
  %2848 = fmul fast float %2778, %2638
  %2849 = fmul fast float %2778, %2639
  %2850 = fadd fast float %2847, %1918
  %2851 = fadd fast float %2848, %1919
  %2852 = fadd fast float %2849, %1920
  %2853 = fmul fast float %2781, %2641
  %2854 = fadd fast float %2853, %1925
  br label %2879

; <label>:2855                                    ; preds = %2811
  %2856 = icmp eq i32 %2761, 8
  br i1 %2856, label %2857, label %2879

; <label>:2857                                    ; preds = %2855
  %2858 = fmul fast float %2766, %2525
  %2859 = fmul fast float %2766, %2526
  %2860 = fadd fast float %2858, %1910
  %2861 = fadd fast float %2859, %1911
  %2862 = call float @dx.op.binary.f32(i32 36, float %1923, float %2527)  ; FMin(a,b)
  %2863 = fsub fast float %2862, %1923
  %2864 = fmul fast float %2863, %2769
  %2865 = fadd fast float %2864, %1923
  %2866 = fsub fast float %2524, %1922
  %2867 = fmul fast float %2772, %2866
  %2868 = fadd fast float %2867, %1922
  %2869 = fmul fast float %2775, %2640
  %2870 = fadd fast float %2869, %1924
  %2871 = fmul fast float %2778, %2637
  %2872 = fmul fast float %2778, %2638
  %2873 = fmul fast float %2778, %2639
  %2874 = fadd fast float %2871, %1918
  %2875 = fadd fast float %2872, %1919
  %2876 = fadd fast float %2873, %1920
  %2877 = fmul fast float %2781, %2641
  %2878 = fadd fast float %2877, %1925
  br label %2879

; <label>:2879                                    ; preds = %2857, %2855, %2813, %2783, %2752, %2223, %1927, %1909
  %2880 = phi float [ %1910, %2752 ], [ %1910, %2223 ], [ %1910, %1909 ], [ %2860, %2857 ], [ %1910, %2855 ], [ %2816, %2813 ], [ %2788, %2783 ], [ %1910, %1927 ]
  %2881 = phi float [ %1911, %2752 ], [ %1911, %2223 ], [ %1911, %1909 ], [ %2861, %2857 ], [ %1911, %2855 ], [ %2817, %2813 ], [ %2789, %2783 ], [ %1911, %1927 ]
  %2882 = phi float [ %2753, %2752 ], [ %1912, %2223 ], [ %1912, %1909 ], [ %2753, %2857 ], [ %2753, %2855 ], [ %2753, %2813 ], [ %2753, %2783 ], [ %1912, %1927 ]
  %2883 = phi float [ %2754, %2752 ], [ %1913, %2223 ], [ %1913, %1909 ], [ %2754, %2857 ], [ %2754, %2855 ], [ %2754, %2813 ], [ %2754, %2783 ], [ %1913, %1927 ]
  %2884 = phi float [ %2755, %2752 ], [ %1914, %2223 ], [ %1914, %1909 ], [ %2755, %2857 ], [ %2755, %2855 ], [ %2755, %2813 ], [ %2755, %2783 ], [ %1914, %1927 ]
  %2885 = phi float [ %2756, %2752 ], [ %1915, %2223 ], [ %1915, %1909 ], [ %2756, %2857 ], [ %2756, %2855 ], [ %2756, %2813 ], [ %2756, %2783 ], [ %1915, %1927 ]
  %2886 = phi float [ %2757, %2752 ], [ %1916, %2223 ], [ %1916, %1909 ], [ %2757, %2857 ], [ %2757, %2855 ], [ %2757, %2813 ], [ %2757, %2783 ], [ %1916, %1927 ]
  %2887 = phi float [ %2758, %2752 ], [ %1917, %2223 ], [ %1917, %1909 ], [ %2758, %2857 ], [ %2758, %2855 ], [ %2758, %2813 ], [ %2758, %2783 ], [ %1917, %1927 ]
  %2888 = phi float [ %1918, %2752 ], [ %1918, %2223 ], [ %1918, %1909 ], [ %2874, %2857 ], [ %1918, %2855 ], [ %2850, %2813 ], [ %2805, %2783 ], [ %1918, %1927 ]
  %2889 = phi float [ %1919, %2752 ], [ %1919, %2223 ], [ %1919, %1909 ], [ %2875, %2857 ], [ %1919, %2855 ], [ %2851, %2813 ], [ %2806, %2783 ], [ %1919, %1927 ]
  %2890 = phi float [ %1920, %2752 ], [ %1920, %2223 ], [ %1920, %1909 ], [ %2876, %2857 ], [ %1920, %2855 ], [ %2852, %2813 ], [ %2807, %2783 ], [ %1920, %1927 ]
  %2891 = phi float [ %2759, %2752 ], [ %1921, %2223 ], [ %1921, %1909 ], [ %2759, %2857 ], [ %2759, %2855 ], [ %2759, %2813 ], [ %2759, %2783 ], [ %1921, %1927 ]
  %2892 = phi float [ %1922, %2752 ], [ %1922, %2223 ], [ %1922, %1909 ], [ %2868, %2857 ], [ %1922, %2855 ], [ %2844, %2813 ], [ %2795, %2783 ], [ %1922, %1927 ]
  %2893 = phi float [ %1923, %2752 ], [ %1923, %2223 ], [ %1923, %1909 ], [ %2865, %2857 ], [ %1923, %2855 ], [ %2821, %2813 ], [ %2792, %2783 ], [ %1923, %1927 ]
  %2894 = phi float [ %1924, %2752 ], [ %1924, %2223 ], [ %1924, %1909 ], [ %2870, %2857 ], [ %1924, %2855 ], [ %2846, %2813 ], [ %2798, %2783 ], [ %1924, %1927 ]
  %2895 = phi float [ %1925, %2752 ], [ %1925, %2223 ], [ %1925, %1909 ], [ %2878, %2857 ], [ %1925, %2855 ], [ %2854, %2813 ], [ %2810, %2783 ], [ %1925, %1927 ]
  %2896 = phi float [ %2760, %2752 ], [ %1926, %2223 ], [ %1926, %1909 ], [ %2760, %2857 ], [ %2760, %2855 ], [ %2760, %2813 ], [ %2760, %2783 ], [ %1926, %1927 ]
  br i1 %353, label %3849, label %2897

; <label>:2897                                    ; preds = %2879
  %2898 = icmp ult i32 %404, 4
  %2899 = add i32 %35, 72
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = add i32 %35, 76
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2902, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = or i32 %2904, %2901
  %2906 = icmp eq i32 %2905, 0
  br i1 %2906, label %3849, label %2907

; <label>:2907                                    ; preds = %2897
  %2908 = and i32 %2901, 262144
  %2909 = icmp ne i32 %2908, 0
  %2910 = select i1 %2909, float %38, float 1.000000e+00
  %2911 = select i1 %2909, float %39, float 0.000000e+00
  %2912 = select i1 %2909, float %40, float 0.000000e+00
  %2913 = select i1 %2909, float %41, float 1.000000e+00
  %2914 = select i1 %2909, float %42, float %63
  %2915 = select i1 %2909, float %43, float %64
  %2916 = add i32 %35, 332
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = lshr i32 %2918, 16
  %2920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2919)  ; LegacyF16ToF32(value)
  %2921 = fmul fast float %2920, 0x3F50624DE0000000
  %2922 = add i32 %35, 136
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = lshr i32 %2924, 16
  %2926 = and i32 %2925, 255
  %2927 = lshr i32 %2924, 24
  %2928 = add i32 %35, 340
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 65535
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = lshr i32 %2930, 16
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = add i32 %35, 80
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = lshr i32 %2937, 22
  %2939 = shl nuw nsw i32 %2938, 5
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = shl i32 %2937, 4
  %2942 = and i32 %2941, 32752
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = lshr i32 %2937, 7
  %2945 = and i32 %2944, 32752
  %2946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2945)  ; LegacyF16ToF32(value)
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 3
  %2949 = fmul fast float %2948, 1.000000e+03
  %2950 = fmul fast float %343, %2949
  %2951 = call float @dx.op.unary.f32(i32 22, float %2950)  ; Frc(value)
  %2952 = fadd fast float %2951, %333
  %2953 = fmul fast float %344, %2949
  %2954 = call float @dx.op.unary.f32(i32 22, float %2953)  ; Frc(value)
  %2955 = fadd fast float %2954, %335
  %2956 = fmul fast float %2921, %2949
  %2957 = call float @dx.op.unary.f32(i32 22, float %2956)  ; Frc(value)
  %2958 = fmul fast float %2957, 0x401921FB60000000
  %2959 = fadd fast float %2958, %2940
  %2960 = call float @dx.op.unary.f32(i32 13, float %2959)  ; Sin(value)
  %2961 = call float @dx.op.unary.f32(i32 12, float %2959)  ; Cos(value)
  %2962 = fsub fast float -0.000000e+00, %2960
  %2963 = fadd fast float %2914, -5.000000e-01
  %2964 = fadd fast float %2915, -5.000000e-01
  %2965 = fmul fast float %2932, %2963
  %2966 = fmul fast float %2934, %2964
  %2967 = fadd fast float %2965, 5.000000e-01
  %2968 = fadd fast float %2966, 5.000000e-01
  %2969 = fmul fast float %2943, %2967
  %2970 = fmul fast float %2946, %2968
  %2971 = fmul fast float %2961, %2969
  %2972 = call float @dx.op.tertiary.f32(i32 46, float %2962, float %2970, float %2971)  ; FMad(a,b,c)
  %2973 = fmul fast float %2960, %2969
  %2974 = call float @dx.op.tertiary.f32(i32 46, float %2961, float %2970, float %2973)  ; FMad(a,b,c)
  %2975 = fadd fast float %2952, %2972
  %2976 = fadd fast float %2955, %2974
  %2977 = icmp ugt i32 %2926, 1
  %2978 = icmp ugt i32 %2924, 33554431
  %2979 = or i1 %2978, %2977
  br i1 %2979, label %2980, label %3005

; <label>:2980                                    ; preds = %2907
  %2981 = add i32 %35, 276
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2981, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = lshr i32 %2983, 16
  %2985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2984)  ; LegacyF16ToF32(value)
  %2986 = fmul fast float %2948, %2985
  %2987 = call float @dx.op.unary.f32(i32 22, float %2986)  ; Frc(value)
  %2988 = mul nuw nsw i32 %2926, %2927
  %2989 = uitofp i32 %2988 to float
  %2990 = fmul fast float %2987, %2989
  %2991 = call float @dx.op.unary.f32(i32 27, float %2990)  ; Round_ni(value)
  %2992 = fptoui float %2991 to i32
  %2993 = urem i32 %2992, %2926
  %2994 = udiv i32 %2992, %2927
  %2995 = call float @dx.op.unary.f32(i32 22, float %2975)  ; Frc(value)
  %2996 = call float @dx.op.unary.f32(i32 22, float %2976)  ; Frc(value)
  %2997 = uitofp i32 %2993 to float
  %2998 = uitofp i32 %2994 to float
  %2999 = fadd fast float %2995, %2997
  %3000 = fadd fast float %2996, %2998
  %3001 = uitofp i32 %2926 to float
  %3002 = uitofp i32 %2927 to float
  %3003 = fdiv fast float %2999, %3001
  %3004 = fdiv fast float %3000, %3002
  br label %3005

; <label>:3005                                    ; preds = %2980, %2907
  %3006 = phi float [ %3003, %2980 ], [ %2975, %2907 ]
  %3007 = phi float [ %3004, %2980 ], [ %2976, %2907 ]
  %3008 = and i32 %2901, 16777216
  %3009 = icmp eq i32 %3008, 0
  br i1 %3009, label %3119, label %3010

; <label>:3010                                    ; preds = %3005
  %3011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3012 = extractvalue %dx.types.CBufRet.f32 %3011, 0
  %3013 = extractvalue %dx.types.CBufRet.f32 %3011, 1
  %3014 = extractvalue %dx.types.CBufRet.f32 %3011, 2
  %3015 = fadd fast float %3012, %134
  %3016 = fadd fast float %3013, %135
  %3017 = fadd fast float %3014, %136
  %3018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3019 = extractvalue %dx.types.CBufRet.f32 %3018, 0
  %3020 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3021 = icmp eq i32 %36, 65535
  br i1 %3021, label %3116, label %3022

; <label>:3022                                    ; preds = %3010
  %3023 = lshr i32 %36, 1
  %3024 = shl i32 %3023, 2
  %3025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3024, i32 undef)  ; BufferLoad(srv,index,wot)
  %3026 = extractvalue %dx.types.ResRet.i32 %3025, 0
  %3027 = and i32 %36, 1
  %3028 = icmp ne i32 %3027, 0
  %3029 = lshr i32 %3026, 16
  %3030 = and i32 %3026, 65535
  %3031 = select i1 %3028, i32 %3029, i32 %3030
  %3032 = icmp eq i32 %3031, 65535
  br i1 %3032, label %3112, label %3033

; <label>:3033                                    ; preds = %3022
  %3034 = mul nuw nsw i32 %3031, 40
  %3035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.f32 %3035, 0
  %3037 = extractvalue %dx.types.ResRet.f32 %3035, 1
  %3038 = extractvalue %dx.types.ResRet.f32 %3035, 2
  %3039 = add nuw nsw i32 %3034, 12
  %3040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.ResRet.f32 %3040, 1
  %3043 = extractvalue %dx.types.ResRet.f32 %3040, 2
  %3044 = add nuw nsw i32 %3034, 24
  %3045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.f32 %3045, 0
  %3047 = extractvalue %dx.types.ResRet.f32 %3045, 1
  %3048 = extractvalue %dx.types.ResRet.f32 %3045, 2
  %3049 = add nuw nsw i32 %3034, 36
  %3050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 0
  %3052 = fsub fast float %3015, %3036
  %3053 = fsub fast float %3016, %3037
  %3054 = fsub fast float %3017, %3038
  %3055 = fmul fast float %3051, %3052
  %3056 = fmul fast float %3051, %3053
  %3057 = fmul fast float %3051, %3054
  %3058 = call float @dx.op.unary.f32(i32 27, float %3055)  ; Round_ni(value)
  %3059 = call float @dx.op.unary.f32(i32 27, float %3056)  ; Round_ni(value)
  %3060 = call float @dx.op.unary.f32(i32 27, float %3057)  ; Round_ni(value)
  %3061 = fadd fast float %3058, 5.000000e-01
  %3062 = fadd fast float %3059, 5.000000e-01
  %3063 = fadd fast float %3060, 5.000000e-01
  %3064 = fmul fast float %3061, %3041
  %3065 = fmul fast float %3062, %3042
  %3066 = fmul fast float %3063, %3043
  %3067 = shl i32 %36, 2
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = add i32 %3069, 0
  %3071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3072 = call float @dx.op.unary.f32(i32 22, float %3064)  ; Frc(value)
  %3073 = call float @dx.op.unary.f32(i32 22, float %3065)  ; Frc(value)
  %3074 = call float @dx.op.unary.f32(i32 22, float %3066)  ; Frc(value)
  %3075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3071, %dx.types.Handle %30, float %3072, float %3073, float %3074, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3076 = extractvalue %dx.types.ResRet.f32 %3075, 0
  %3077 = extractvalue %dx.types.ResRet.f32 %3075, 1
  %3078 = extractvalue %dx.types.ResRet.f32 %3075, 2
  %3079 = fmul fast float %3076, 1.023000e+03
  %3080 = fmul fast float %3077, 1.023000e+03
  %3081 = fmul fast float %3078, 1.023000e+03
  %3082 = fadd fast float %3079, 5.000000e-01
  %3083 = fadd fast float %3080, 5.000000e-01
  %3084 = fadd fast float %3081, 5.000000e-01
  %3085 = call float @dx.op.unary.f32(i32 27, float %3082)  ; Round_ni(value)
  %3086 = call float @dx.op.unary.f32(i32 27, float %3083)  ; Round_ni(value)
  %3087 = call float @dx.op.unary.f32(i32 27, float %3084)  ; Round_ni(value)
  %3088 = fsub fast float %3055, %3058
  %3089 = fsub fast float %3056, %3059
  %3090 = fsub fast float %3057, %3060
  %3091 = fmul fast float %3088, 7.500000e-01
  %3092 = fmul fast float %3089, 7.500000e-01
  %3093 = fmul fast float %3090, 7.500000e-01
  %3094 = fadd fast float %3058, 1.250000e-01
  %3095 = fadd fast float %3094, %3091
  %3096 = fadd fast float %3095, %3085
  %3097 = fadd fast float %3059, 1.250000e-01
  %3098 = fadd fast float %3097, %3092
  %3099 = fadd fast float %3098, %3086
  %3100 = fadd fast float %3060, 1.250000e-01
  %3101 = fadd fast float %3100, %3093
  %3102 = fadd fast float %3101, %3087
  %3103 = fmul fast float %3096, %3046
  %3104 = fmul fast float %3099, %3047
  %3105 = fmul fast float %3102, %3048
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = add i32 %3107, 0
  %3109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3109, %dx.types.Handle %28, float %3103, float %3104, float %3105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  br label %3112

; <label>:3112                                    ; preds = %3033, %3022
  %3113 = phi float [ %3111, %3033 ], [ -1.000000e+00, %3022 ]
  %3114 = fadd fast float %3113, %3020
  %3115 = call float @dx.op.unary.f32(i32 7, float %3114)  ; Saturate(value)
  br label %3116

; <label>:3116                                    ; preds = %3112, %3010
  %3117 = phi float [ %3115, %3112 ], [ %3020, %3010 ]
  %3118 = fmul fast float %3117, %399
  br label %3119

; <label>:3119                                    ; preds = %3116, %3005
  %3120 = phi float [ %3118, %3116 ], [ %399, %3005 ]
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 256
  %3124 = icmp eq i32 %3123, 0
  br i1 %3124, label %3171, label %3125

; <label>:3125                                    ; preds = %3119
  %3126 = add i32 %35, 516
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = add i32 %3128, 0
  %3130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3130, %dx.types.Handle %72, float %3006, float %3007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = add i32 %35, 148
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = shl i32 %3135, 4
  %3137 = and i32 %3136, 32752
  %3138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3137)  ; LegacyF16ToF32(value)
  %3139 = lshr i32 %3135, 7
  %3140 = and i32 %3139, 32752
  %3141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3140)  ; LegacyF16ToF32(value)
  %3142 = fsub fast float 1.000000e+00, %3120
  %3143 = call float @dx.op.binary.f32(i32 35, float %3142, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3144 = bitcast float %3120 to i32
  %3145 = sitofp i32 %3144 to float
  %3146 = fadd fast float %3145, 0xC1CFBF8940000000
  %3147 = fmul fast float %3141, %3146
  %3148 = fadd fast float %3147, 0x41CFBF8940000000
  %3149 = fptosi float %3148 to i32
  %3150 = bitcast i32 %3149 to float
  %3151 = bitcast float %3143 to i32
  %3152 = sitofp i32 %3151 to float
  %3153 = fadd fast float %3152, 0xC1CFBF8940000000
  %3154 = fmul fast float %3153, %3141
  %3155 = fadd fast float %3154, 0x41CFBF8940000000
  %3156 = fptosi float %3155 to i32
  %3157 = bitcast i32 %3156 to float
  %3158 = fmul fast float %3150, %3138
  %3159 = fmul fast float %3157, %3138
  %3160 = fsub fast float %3143, %3158
  %3161 = fadd fast float %3159, %3143
  %3162 = call float @dx.op.unary.f32(i32 7, float %3160)  ; Saturate(value)
  %3163 = call float @dx.op.unary.f32(i32 7, float %3161)  ; Saturate(value)
  %3164 = fsub fast float %3132, %3162
  %3165 = fsub fast float %3163, %3162
  %3166 = bitcast float %3165 to i32
  %3167 = sub nsw i32 2129859010, %3166
  %3168 = bitcast i32 %3167 to float
  %3169 = fmul fast float %3168, %3164
  %3170 = call float @dx.op.unary.f32(i32 7, float %3169)  ; Saturate(value)
  br label %3171

; <label>:3171                                    ; preds = %3125, %3119
  %3172 = phi float [ %3170, %3125 ], [ %3120, %3119 ]
  %3173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3174 = extractvalue %dx.types.ResRet.i32 %3173, 0
  %3175 = and i32 %3174, 128
  %3176 = icmp eq i32 %3175, 0
  br i1 %3176, label %3193, label %3177

; <label>:3177                                    ; preds = %3171
  %3178 = add i32 %35, 500
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = add i32 %3180, 0
  %3182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3182, %dx.types.Handle %72, float %3006, float %3007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3184 = extractvalue %dx.types.ResRet.f32 %3183, 0
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %3186, 524288
  %3188 = icmp ne i32 %3187, 0
  %3189 = fcmp fast ogt float %3184, 0x3FE0101020000000
  %3190 = select i1 %3189, float 1.000000e+00, float 0.000000e+00
  %3191 = select i1 %3188, float %3190, float %3184
  %3192 = fmul fast float %3191, %3172
  br label %3193

; <label>:3193                                    ; preds = %3177, %3171
  %3194 = phi float [ %3192, %3177 ], [ %3172, %3171 ]
  %3195 = fcmp fast ult float %3194, 0x3F70101020000000
  br i1 %3195, label %3849, label %3196

; <label>:3196                                    ; preds = %3193
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 16
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3399, label %3201

; <label>:3201                                    ; preds = %3196
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = add i32 %35, 452
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = add i32 %3206, 0
  %3208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3208, %dx.types.Handle %71, float %3006, float %3007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = extractvalue %dx.types.ResRet.f32 %3209, 1
  %3212 = extractvalue %dx.types.ResRet.f32 %3209, 2
  %3213 = extractvalue %dx.types.ResRet.f32 %3209, 3
  %3214 = and i32 %3203, 255
  %3215 = uitofp i32 %3214 to float
  %3216 = lshr i32 %3203, 8
  %3217 = and i32 %3216, 255
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3213, %3215
  %3220 = fadd fast float %3219, %3218
  %3221 = fmul fast float %3220, 0x3F70101000000000
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = and i32 %3223, 512
  %3225 = icmp eq i32 %3224, 0
  br i1 %3225, label %3234, label %3226

; <label>:3226                                    ; preds = %3201
  %3227 = add i32 %35, 532
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = add i32 %3229, 0
  %3231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3232 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3231, %dx.types.Handle %72, float %3006, float %3007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3233 = extractvalue %dx.types.ResRet.f32 %3232, 0
  br label %3234

; <label>:3234                                    ; preds = %3226, %3201
  %3235 = phi float [ %3233, %3226 ], [ 1.000000e+00, %3201 ]
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 33554432
  %3239 = icmp eq i32 %3238, 0
  br i1 %3239, label %3346, label %3240

; <label>:3240                                    ; preds = %3234
  %3241 = add i32 %35, 272
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 65535
  %3245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3244)  ; LegacyF16ToF32(value)
  %3246 = lshr i32 %3243, 16
  %3247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3246)  ; LegacyF16ToF32(value)
  %3248 = add i32 %35, 276
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = and i32 %3250, 65535
  %3252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3251)  ; LegacyF16ToF32(value)
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = lshr i32 %3254, 24
  %3256 = uitofp i32 %3255 to float
  %3257 = fmul fast float %3256, 0x3F70101020000000
  %3258 = and i32 %3254, 255
  %3259 = uitofp i32 %3258 to float
  %3260 = fmul fast float %3259, 0x3F70101020000000
  %3261 = lshr i32 %3254, 8
  %3262 = and i32 %3261, 255
  %3263 = uitofp i32 %3262 to float
  %3264 = fmul fast float %3263, 0x3F70101020000000
  %3265 = lshr i32 %3254, 16
  %3266 = and i32 %3265, 255
  %3267 = uitofp i32 %3266 to float
  %3268 = fmul fast float %3267, 0x3F70101020000000
  %3269 = add i32 %35, 268
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = lshr i32 %3271, 24
  %3273 = uitofp i32 %3272 to float
  %3274 = fmul fast float %3273, 0x3F70101020000000
  %3275 = and i32 %3271, 255
  %3276 = uitofp i32 %3275 to float
  %3277 = fmul fast float %3276, 0x3F70101020000000
  %3278 = lshr i32 %3271, 8
  %3279 = and i32 %3278, 255
  %3280 = uitofp i32 %3279 to float
  %3281 = fmul fast float %3280, 0x3F70101020000000
  %3282 = lshr i32 %3271, 16
  %3283 = and i32 %3282, 255
  %3284 = uitofp i32 %3283 to float
  %3285 = fmul fast float %3284, 0x3F70101020000000
  %3286 = bitcast float %3210 to i32
  %3287 = ashr i32 %3286, 1
  %3288 = sub nsw i32 1597463174, %3287
  %3289 = bitcast i32 %3288 to float
  %3290 = fmul fast float %3210, 5.000000e-01
  %3291 = fmul fast float %3289, %3289
  %3292 = fmul fast float %3291, %3290
  %3293 = fsub fast float 1.500000e+00, %3292
  %3294 = fmul fast float %3289, %3210
  %3295 = fmul fast float %3294, %3293
  %3296 = bitcast float %3211 to i32
  %3297 = ashr i32 %3296, 1
  %3298 = sub nsw i32 1597463174, %3297
  %3299 = bitcast i32 %3298 to float
  %3300 = fmul fast float %3211, 5.000000e-01
  %3301 = fmul fast float %3299, %3299
  %3302 = fmul fast float %3301, %3300
  %3303 = fsub fast float 1.500000e+00, %3302
  %3304 = fmul fast float %3299, %3211
  %3305 = fmul fast float %3304, %3303
  %3306 = bitcast float %3212 to i32
  %3307 = ashr i32 %3306, 1
  %3308 = sub nsw i32 1597463174, %3307
  %3309 = bitcast i32 %3308 to float
  %3310 = fmul fast float %3212, 5.000000e-01
  %3311 = fmul fast float %3309, %3309
  %3312 = fmul fast float %3311, %3310
  %3313 = fsub fast float 1.500000e+00, %3312
  %3314 = fmul fast float %3309, %3212
  %3315 = fmul fast float %3314, %3313
  %3316 = fsub fast float %3295, %3277
  %3317 = fsub fast float %3305, %3281
  %3318 = fsub fast float %3315, %3285
  %3319 = fmul fast float %3316, %3245
  %3320 = fmul fast float %3317, %3247
  %3321 = fmul fast float %3318, %3252
  %3322 = fadd fast float %3319, %3260
  %3323 = fadd fast float %3320, %3264
  %3324 = fadd fast float %3321, %3268
  %3325 = call float @dx.op.unary.f32(i32 7, float %3322)  ; Saturate(value)
  %3326 = call float @dx.op.unary.f32(i32 7, float %3323)  ; Saturate(value)
  %3327 = call float @dx.op.unary.f32(i32 7, float %3324)  ; Saturate(value)
  %3328 = fmul fast float %3325, %3325
  %3329 = fmul fast float %3326, %3326
  %3330 = fmul fast float %3327, %3327
  %3331 = fsub fast float %3328, %3210
  %3332 = fsub fast float %3329, %3211
  %3333 = fsub fast float %3330, %3212
  %3334 = fmul fast float %3331, %3235
  %3335 = fmul fast float %3332, %3235
  %3336 = fmul fast float %3333, %3235
  %3337 = fadd fast float %3334, %3210
  %3338 = fadd fast float %3335, %3211
  %3339 = fadd fast float %3336, %3212
  %3340 = fadd fast float %3257, %3221
  %3341 = fsub fast float %3340, %3274
  %3342 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  %3343 = fsub fast float %3342, %3221
  %3344 = fmul fast float %3343, %3235
  %3345 = fadd fast float %3344, %3221
  br label %3399

; <label>:3346                                    ; preds = %3234
  %3347 = and i32 %3237, 134217728
  %3348 = icmp eq i32 %3347, 0
  br i1 %3348, label %3383, label %3349

; <label>:3349                                    ; preds = %3346
  %3350 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3351 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3352 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3353 = fadd fast float %3350, -5.000000e-01
  %3354 = fadd fast float %3351, -5.000000e-01
  %3355 = fadd fast float %3352, -5.000000e-01
  %3356 = fmul fast float %3353, %3235
  %3357 = fmul fast float %3354, %3235
  %3358 = fmul fast float %3355, %3235
  %3359 = fadd fast float %3356, 5.000000e-01
  %3360 = fadd fast float %3357, 5.000000e-01
  %3361 = fadd fast float %3358, 5.000000e-01
  %3362 = call float @dx.op.unary.f32(i32 24, float %3210)  ; Sqrt(value)
  %3363 = call float @dx.op.unary.f32(i32 24, float %3211)  ; Sqrt(value)
  %3364 = call float @dx.op.unary.f32(i32 24, float %3212)  ; Sqrt(value)
  %3365 = fmul fast float %3359, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3362
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3362
  %3370 = fmul fast float %3360, 2.000000e+00
  %3371 = fsub fast float 1.000000e+00, %3370
  %3372 = fmul fast float %3371, %3363
  %3373 = fadd fast float %3372, %3370
  %3374 = fmul fast float %3373, %3363
  %3375 = fmul fast float %3361, 2.000000e+00
  %3376 = fsub fast float 1.000000e+00, %3375
  %3377 = fmul fast float %3376, %3364
  %3378 = fadd fast float %3377, %3375
  %3379 = fmul fast float %3378, %3364
  %3380 = fmul fast float %3369, %3369
  %3381 = fmul fast float %3374, %3374
  %3382 = fmul fast float %3379, %3379
  br label %3399

; <label>:3383                                    ; preds = %3346
  %3384 = fmul fast float %320, %320
  %3385 = fmul fast float %324, %324
  %3386 = fmul fast float %328, %328
  %3387 = fadd fast float %3384, -1.000000e+00
  %3388 = fadd fast float %3385, -1.000000e+00
  %3389 = fadd fast float %3386, -1.000000e+00
  %3390 = fmul fast float %3235, %3387
  %3391 = fmul fast float %3235, %3388
  %3392 = fmul fast float %3235, %3389
  %3393 = fadd fast float %3390, 1.000000e+00
  %3394 = fadd fast float %3391, 1.000000e+00
  %3395 = fadd fast float %3392, 1.000000e+00
  %3396 = fmul fast float %3393, %3210
  %3397 = fmul fast float %3394, %3211
  %3398 = fmul fast float %3395, %3212
  br label %3399

; <label>:3399                                    ; preds = %3383, %3349, %3240, %3196
  %3400 = phi float [ %3345, %3240 ], [ %3221, %3349 ], [ %3221, %3383 ], [ 0x3FA23C0BE0000000, %3196 ]
  %3401 = phi float [ %3337, %3240 ], [ %3380, %3349 ], [ %3396, %3383 ], [ 1.000000e+00, %3196 ]
  %3402 = phi float [ %3338, %3240 ], [ %3381, %3349 ], [ %3397, %3383 ], [ 1.000000e+00, %3196 ]
  %3403 = phi float [ %3339, %3240 ], [ %3382, %3349 ], [ %3398, %3383 ], [ 1.000000e+00, %3196 ]
  %3404 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3405 = extractvalue %dx.types.CBufRet.i32 %3404, 1
  %3406 = and i32 %3405, 1
  %3407 = icmp ne i32 %3406, 0
  %3408 = add i32 %35, 356
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = and i32 %3410, 32
  %3412 = icmp ne i32 %3411, 0
  %3413 = and i1 %3407, %3412
  %3414 = select i1 %3413, float 1.000000e+00, float %3401
  %3415 = select i1 %3413, float 0x3FD3333340000000, float %3402
  %3416 = select i1 %3413, float 0x3FD3333340000000, float %3403
  %3417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3418 = extractvalue %dx.types.ResRet.i32 %3417, 0
  %3419 = and i32 %3418, 32
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %3493, label %3421

; <label>:3421                                    ; preds = %3399
  %3422 = add i32 %35, 140
  %3423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3422, i32 undef)  ; BufferLoad(srv,index,wot)
  %3424 = extractvalue %dx.types.ResRet.i32 %3423, 0
  %3425 = add i32 %35, 468
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = add i32 %3427, 0
  %3429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3429, %dx.types.Handle %71, float %3006, float %3007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 0
  %3432 = extractvalue %dx.types.ResRet.f32 %3430, 1
  %3433 = extractvalue %dx.types.ResRet.f32 %3430, 2
  %3434 = extractvalue %dx.types.ResRet.f32 %3430, 3
  %3435 = and i32 %3424, 255
  %3436 = uitofp i32 %3435 to float
  %3437 = lshr i32 %3424, 8
  %3438 = and i32 %3437, 255
  %3439 = uitofp i32 %3438 to float
  %3440 = lshr i32 %3424, 16
  %3441 = and i32 %3440, 255
  %3442 = uitofp i32 %3441 to float
  %3443 = fmul fast float %3442, 0x3F70101000000000
  %3444 = fmul fast float %3431, %3436
  %3445 = fadd fast float %3444, %3439
  %3446 = fmul fast float %3445, 0x3F70101000000000
  %3447 = fadd fast float %3432, -5.000000e-01
  %3448 = fadd fast float %3434, -5.000000e-01
  %3449 = fmul fast float %3447, %3443
  %3450 = fmul fast float %3448, %3443
  %3451 = fadd fast float %3449, 5.000000e-01
  %3452 = fadd fast float %3450, 5.000000e-01
  %3453 = fmul fast float %3451, 2.000000e+00
  %3454 = fadd fast float %3453, -1.000000e+00
  %3455 = fmul fast float %3452, 2.000000e+00
  %3456 = fadd fast float %3455, -1.000000e+00
  %3457 = fadd fast float %3454, %3456
  %3458 = fmul fast float %3457, 5.000000e-01
  %3459 = fsub fast float %3454, %3456
  %3460 = fmul fast float %3459, 5.000000e-01
  %3461 = call float @dx.op.unary.f32(i32 6, float %3458)  ; FAbs(value)
  %3462 = fsub fast float 1.000000e+00, %3461
  %3463 = call float @dx.op.unary.f32(i32 6, float %3460)  ; FAbs(value)
  %3464 = fsub fast float %3462, %3463
  %3465 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3460, float %3464, float %3458, float %3460, float %3464)  ; Dot3(ax,ay,az,bx,by,bz)
  %3466 = call float @dx.op.unary.f32(i32 25, float %3465)  ; Rsqrt(value)
  %3467 = fmul fast float %3458, %3466
  %3468 = fmul fast float %3460, %3466
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = and i32 %3470, 67108864
  %3472 = icmp eq i32 %3471, 0
  br i1 %3472, label %3489, label %3473

; <label>:3473                                    ; preds = %3421
  %3474 = add i32 %35, 328
  %3475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3474, i32 undef)  ; BufferLoad(srv,index,wot)
  %3476 = extractvalue %dx.types.ResRet.i32 %3475, 0
  %3477 = and i32 %3476, 65535
  %3478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3477)  ; LegacyF16ToF32(value)
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, 65535
  %3482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3481)  ; LegacyF16ToF32(value)
  %3483 = lshr i32 %3476, 16
  %3484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3483)  ; LegacyF16ToF32(value)
  %3485 = fsub fast float %3446, %3484
  %3486 = fmul fast float %3485, %3478
  %3487 = fadd fast float %3486, %3482
  %3488 = call float @dx.op.unary.f32(i32 7, float %3487)  ; Saturate(value)
  br label %3489

; <label>:3489                                    ; preds = %3473, %3421
  %3490 = phi float [ %3488, %3473 ], [ %3446, %3421 ]
  %3491 = call float @dx.op.dot2.f32(i32 54, float %3467, float %3468, float %2910, float %2911)  ; Dot2(ax,ay,bx,by)
  %3492 = call float @dx.op.dot2.f32(i32 54, float %3467, float %3468, float %2912, float %2913)  ; Dot2(ax,ay,bx,by)
  br label %3493

; <label>:3493                                    ; preds = %3489, %3399
  %3494 = phi float [ %3490, %3489 ], [ 0x3FD6666660000000, %3399 ]
  %3495 = phi float [ %3491, %3489 ], [ 0.000000e+00, %3399 ]
  %3496 = phi float [ %3492, %3489 ], [ 0.000000e+00, %3399 ]
  %3497 = phi float [ %3433, %3489 ], [ 1.000000e+00, %3399 ]
  %3498 = add i32 %35, 208
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = lshr i32 %3500, 22
  %3502 = shl nuw nsw i32 %3501, 5
  %3503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3502)  ; LegacyF16ToF32(value)
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = and i32 %3505, 64
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3541, label %3508

; <label>:3508                                    ; preds = %3493
  %3509 = add i32 %35, 484
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = add i32 %3511, 0
  %3513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 131072
  %3517 = icmp eq i32 %3516, 0
  %3518 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3513, %dx.types.Handle %71, float %3006, float %3007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3519 = extractvalue %dx.types.ResRet.f32 %3518, 0
  %3520 = extractvalue %dx.types.ResRet.f32 %3518, 1
  %3521 = extractvalue %dx.types.ResRet.f32 %3518, 2
  %3522 = fmul fast float %3519, %308
  %3523 = fmul fast float %3520, %311
  %3524 = fmul fast float %3521, %314
  br i1 %3517, label %3531, label %3525

; <label>:3525                                    ; preds = %3508
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3528 = fmul fast float %3527, %3522
  %3529 = fmul fast float %3527, %3523
  %3530 = fmul fast float %3527, %3524
  br label %3531

; <label>:3531                                    ; preds = %3525, %3508
  %3532 = phi float [ %3528, %3525 ], [ %3522, %3508 ]
  %3533 = phi float [ %3529, %3525 ], [ %3523, %3508 ]
  %3534 = phi float [ %3530, %3525 ], [ %3524, %3508 ]
  %3535 = fmul fast float %3532, %3503
  %3536 = select i1 %176, float %3535, float %3532
  %3537 = call float @dx.op.dot3.f32(i32 55, float %3536, float %3533, float %3534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3538 = select i1 %176, float 0.000000e+00, float %3532
  %3539 = select i1 %176, float %3537, float %3533
  %3540 = select i1 %176, float 0.000000e+00, float %3534
  br label %3541

; <label>:3541                                    ; preds = %3531, %3493
  %3542 = phi float [ %3538, %3531 ], [ 0.000000e+00, %3493 ]
  %3543 = phi float [ %3539, %3531 ], [ 0.000000e+00, %3493 ]
  %3544 = phi float [ %3540, %3531 ], [ 0.000000e+00, %3493 ]
  %3545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.i32 %3545, 0
  %3547 = and i32 %3546, 26624
  %3548 = icmp eq i32 %3547, 0
  br i1 %3548, label %3606, label %3549

; <label>:3549                                    ; preds = %3541
  %3550 = add i32 %35, 548
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3550, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = add i32 %3552, 0
  %3554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3554, %dx.types.Handle %72, float %3006, float %3007, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.ResRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.ResRet.f32 %3555, 3
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = and i32 %3560, 1048576
  %3562 = icmp ne i32 %3561, 0
  %3563 = and i32 %3560, 8192
  %3564 = icmp eq i32 %3563, 0
  br i1 %3564, label %3579, label %3565

; <label>:3565                                    ; preds = %3549
  %3566 = extractvalue %dx.types.ResRet.f32 %3555, 2
  %3567 = select i1 %3562, float %3566, float %3557
  %3568 = select i1 %3562, float %3556, float %3557
  %3569 = add i32 %35, 144
  %3570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.i32 %3570, 0
  %3572 = lshr i32 %3571, 16
  %3573 = and i32 %3572, 255
  %3574 = uitofp i32 %3573 to float
  %3575 = fmul fast float %3574, 0x3F80101020000000
  %3576 = fmul fast float %3575, %3568
  %3577 = fmul fast float %3575, %3557
  %3578 = fmul fast float %3575, %3567
  br label %3579

; <label>:3579                                    ; preds = %3565, %3549
  %3580 = phi float [ %3576, %3565 ], [ 0.000000e+00, %3549 ]
  %3581 = phi float [ %3577, %3565 ], [ 0.000000e+00, %3549 ]
  %3582 = phi float [ %3578, %3565 ], [ 0.000000e+00, %3549 ]
  %3583 = and i32 %3560, 2048
  %3584 = icmp eq i32 %3583, 0
  br i1 %3584, label %3593, label %3585

; <label>:3585                                    ; preds = %3579
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = shl i32 %3587, 4
  %3589 = and i32 %3588, 32752
  %3590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3589)  ; LegacyF16ToF32(value)
  %3591 = fmul fast float %3590, %3558
  %3592 = call float @dx.op.binary.f32(i32 35, float %3591, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3593

; <label>:3593                                    ; preds = %3585, %3579
  %3594 = phi float [ %3592, %3585 ], [ 0x3F70101020000000, %3579 ]
  %3595 = and i32 %3560, 16384
  %3596 = icmp eq i32 %3595, 0
  br i1 %3596, label %3606, label %3597

; <label>:3597                                    ; preds = %3593
  %3598 = add i32 %35, 144
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = lshr i32 %3600, 24
  %3602 = uitofp i32 %3601 to float
  %3603 = fmul fast float %3556, 0x3F70101020000000
  %3604 = select i1 %3562, float 0x3F70101020000000, float %3603
  %3605 = fmul fast float %3604, %3602
  br label %3606

; <label>:3606                                    ; preds = %3597, %3593, %3541
  %3607 = phi float [ %3580, %3597 ], [ %3580, %3593 ], [ 0.000000e+00, %3541 ]
  %3608 = phi float [ %3581, %3597 ], [ %3581, %3593 ], [ 0.000000e+00, %3541 ]
  %3609 = phi float [ %3582, %3597 ], [ %3582, %3593 ], [ 0.000000e+00, %3541 ]
  %3610 = phi float [ %3594, %3597 ], [ %3594, %3593 ], [ 0x3F70101020000000, %3541 ]
  %3611 = phi float [ %3605, %3597 ], [ 0.000000e+00, %3593 ], [ 0.000000e+00, %3541 ]
  %3612 = add i32 %35, 144
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = and i32 %3614, 255
  %3616 = uitofp i32 %3615 to float
  %3617 = lshr i32 %3614, 8
  %3618 = and i32 %3617, 255
  %3619 = uitofp i32 %3618 to float
  %3620 = call float @dx.op.dot3.f32(i32 55, float %3414, float %3415, float %3416, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3621 = fmul fast float %3619, %3620
  %3622 = fadd fast float %3621, %3616
  %3623 = fmul fast float %3622, 0x3F70101020000000
  %3624 = call float @dx.op.unary.f32(i32 7, float %3623)  ; Saturate(value)
  br i1 %2898, label %3625, label %3633

; <label>:3625                                    ; preds = %3606
  %3626 = fsub fast float 1.000000e+00, %3194
  %3627 = fmul fast float %3626, %2882
  %3628 = fmul fast float %3626, %2883
  %3629 = fmul fast float %3626, %2884
  %3630 = fmul fast float %3626, %2885
  %3631 = fmul fast float %3626, %2886
  %3632 = fmul fast float %3626, %2887
  br label %3633

; <label>:3633                                    ; preds = %3625, %3606
  %3634 = phi float [ %3627, %3625 ], [ %2882, %3606 ]
  %3635 = phi float [ %3628, %3625 ], [ %2883, %3606 ]
  %3636 = phi float [ %3629, %3625 ], [ %2884, %3606 ]
  %3637 = phi float [ %3630, %3625 ], [ %2885, %3606 ]
  %3638 = phi float [ %3631, %3625 ], [ %2886, %3606 ]
  %3639 = phi float [ %3632, %3625 ], [ %2887, %3606 ]
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = and i32 %3641, 3
  %3643 = icmp eq i32 %3642, 3
  br i1 %3643, label %3722, label %3644

; <label>:3644                                    ; preds = %3633
  %3645 = and i32 %3641, 16
  %3646 = icmp ne i32 %3645, 0
  %3647 = select i1 %3646, float %3194, float 0.000000e+00
  %3648 = icmp eq i32 %3642, 0
  br i1 %3648, label %3649, label %3677

; <label>:3649                                    ; preds = %3644
  %3650 = and i32 %3641, 64
  %3651 = icmp ne i32 %3650, 0
  %3652 = select i1 %3651, float %3194, float 0.000000e+00
  %3653 = fsub fast float %3414, %3634
  %3654 = fsub fast float %3415, %3635
  %3655 = fsub fast float %3416, %3636
  %3656 = fmul fast float %3647, %3653
  %3657 = fmul fast float %3647, %3654
  %3658 = fmul fast float %3647, %3655
  %3659 = fadd fast float %3656, %3634
  %3660 = fadd fast float %3657, %3635
  %3661 = fadd fast float %3658, %3636
  %3662 = fsub fast float %3400, %2891
  %3663 = fmul fast float %3647, %3662
  %3664 = fadd fast float %3663, %2891
  %3665 = fsub fast float %3542, %3637
  %3666 = fsub fast float %3543, %3638
  %3667 = fsub fast float %3544, %3639
  %3668 = fmul fast float %3652, %3665
  %3669 = fmul fast float %3652, %3666
  %3670 = fmul fast float %3652, %3667
  %3671 = fadd fast float %3668, %3637
  %3672 = fadd fast float %3669, %3638
  %3673 = fadd fast float %3670, %3639
  %3674 = fsub fast float %3624, %2896
  %3675 = fmul fast float %3647, %3674
  %3676 = fadd fast float %3675, %2896
  br label %3722

; <label>:3677                                    ; preds = %3644
  %3678 = icmp eq i32 %3642, 1
  br i1 %3678, label %3679, label %3692

; <label>:3679                                    ; preds = %3677
  %3680 = fadd fast float %3414, -1.000000e+00
  %3681 = fadd fast float %3415, -1.000000e+00
  %3682 = fadd fast float %3416, -1.000000e+00
  %3683 = fmul fast float %3647, %3680
  %3684 = fmul fast float %3647, %3681
  %3685 = fmul fast float %3647, %3682
  %3686 = fadd fast float %3683, 1.000000e+00
  %3687 = fadd fast float %3684, 1.000000e+00
  %3688 = fadd fast float %3685, 1.000000e+00
  %3689 = fmul fast float %3686, %3634
  %3690 = fmul fast float %3687, %3635
  %3691 = fmul fast float %3688, %3636
  br label %3722

; <label>:3692                                    ; preds = %3677
  %3693 = icmp eq i32 %3642, 2
  br i1 %3693, label %3694, label %3722

; <label>:3694                                    ; preds = %3692
  %3695 = call float @dx.op.unary.f32(i32 24, float %3414)  ; Sqrt(value)
  %3696 = call float @dx.op.unary.f32(i32 24, float %3415)  ; Sqrt(value)
  %3697 = call float @dx.op.unary.f32(i32 24, float %3416)  ; Sqrt(value)
  %3698 = fadd fast float %3695, -5.000000e-01
  %3699 = fadd fast float %3696, -5.000000e-01
  %3700 = fadd fast float %3697, -5.000000e-01
  %3701 = fmul fast float %3698, %3647
  %3702 = fmul fast float %3699, %3647
  %3703 = fmul fast float %3700, %3647
  %3704 = fadd fast float %3701, 5.000000e-01
  %3705 = fadd fast float %3702, 5.000000e-01
  %3706 = fadd fast float %3703, 5.000000e-01
  %3707 = fmul fast float %3704, 2.000000e+00
  %3708 = fsub fast float 1.000000e+00, %3707
  %3709 = fmul fast float %3708, %3634
  %3710 = fadd fast float %3709, %3707
  %3711 = fmul fast float %3710, %3634
  %3712 = fmul fast float %3705, 2.000000e+00
  %3713 = fsub fast float 1.000000e+00, %3712
  %3714 = fmul fast float %3713, %3635
  %3715 = fadd fast float %3714, %3712
  %3716 = fmul fast float %3715, %3635
  %3717 = fmul fast float %3706, 2.000000e+00
  %3718 = fsub fast float 1.000000e+00, %3717
  %3719 = fmul fast float %3718, %3636
  %3720 = fadd fast float %3719, %3717
  %3721 = fmul fast float %3720, %3636
  br label %3722

; <label>:3722                                    ; preds = %3694, %3692, %3679, %3649, %3633
  %3723 = phi float [ %3634, %3633 ], [ %3711, %3694 ], [ %3634, %3692 ], [ %3689, %3679 ], [ %3659, %3649 ]
  %3724 = phi float [ %3635, %3633 ], [ %3716, %3694 ], [ %3635, %3692 ], [ %3690, %3679 ], [ %3660, %3649 ]
  %3725 = phi float [ %3636, %3633 ], [ %3721, %3694 ], [ %3636, %3692 ], [ %3691, %3679 ], [ %3661, %3649 ]
  %3726 = phi float [ %3637, %3633 ], [ %3637, %3694 ], [ %3637, %3692 ], [ %3637, %3679 ], [ %3671, %3649 ]
  %3727 = phi float [ %3638, %3633 ], [ %3638, %3694 ], [ %3638, %3692 ], [ %3638, %3679 ], [ %3672, %3649 ]
  %3728 = phi float [ %3639, %3633 ], [ %3639, %3694 ], [ %3639, %3692 ], [ %3639, %3679 ], [ %3673, %3649 ]
  %3729 = phi float [ %2891, %3633 ], [ %2891, %3694 ], [ %2891, %3692 ], [ %2891, %3679 ], [ %3664, %3649 ]
  %3730 = phi float [ %2896, %3633 ], [ %2896, %3694 ], [ %2896, %3692 ], [ %2896, %3679 ], [ %3676, %3649 ]
  %3731 = and i32 %3641, 12
  %3732 = icmp eq i32 %3731, 12
  br i1 %3732, label %3849, label %3733

; <label>:3733                                    ; preds = %3722
  %3734 = and i32 %3641, 2097184
  %3735 = icmp eq i32 %3734, 2097184
  %3736 = select i1 %3735, float %3194, float 0.000000e+00
  %3737 = and i32 %3641, 4194336
  %3738 = icmp eq i32 %3737, 4194336
  %3739 = select i1 %3738, float %3194, float 0.000000e+00
  %3740 = and i32 %3641, 8388640
  %3741 = icmp eq i32 %3740, 8388640
  %3742 = select i1 %3741, float %3194, float 0.000000e+00
  %3743 = and i32 %3641, 2048
  %3744 = icmp ne i32 %3743, 0
  %3745 = select i1 %3744, float %3194, float 0.000000e+00
  %3746 = and i32 %3641, 8192
  %3747 = icmp ne i32 %3746, 0
  %3748 = select i1 %3747, float %3194, float 0.000000e+00
  %3749 = and i32 %3641, 16384
  %3750 = icmp ne i32 %3749, 0
  %3751 = select i1 %3750, float %3194, float 0.000000e+00
  %3752 = icmp eq i32 %3731, 0
  br i1 %3752, label %3753, label %3781

; <label>:3753                                    ; preds = %3733
  %3754 = fsub fast float %3495, %2880
  %3755 = fsub fast float %3496, %2881
  %3756 = fmul fast float %3736, %3754
  %3757 = fmul fast float %3736, %3755
  %3758 = fadd fast float %3756, %2880
  %3759 = fadd fast float %3757, %2881
  %3760 = fsub fast float %3497, %2893
  %3761 = fmul fast float %3739, %3760
  %3762 = fadd fast float %3761, %2893
  %3763 = fsub fast float %3494, %2892
  %3764 = fmul fast float %3742, %3763
  %3765 = fadd fast float %3764, %2892
  %3766 = fsub fast float %3610, %2894
  %3767 = fmul fast float %3745, %3766
  %3768 = fadd fast float %3767, %2894
  %3769 = fsub fast float %3607, %2888
  %3770 = fsub fast float %3608, %2889
  %3771 = fsub fast float %3609, %2890
  %3772 = fmul fast float %3748, %3769
  %3773 = fmul fast float %3748, %3770
  %3774 = fmul fast float %3748, %3771
  %3775 = fadd fast float %3772, %2888
  %3776 = fadd fast float %3773, %2889
  %3777 = fadd fast float %3774, %2890
  %3778 = fsub fast float %3611, %2895
  %3779 = fmul fast float %3751, %3778
  %3780 = fadd fast float %3779, %2895
  br label %3849

; <label>:3781                                    ; preds = %3733
  %3782 = icmp eq i32 %3731, 4
  br i1 %3782, label %3783, label %3825

; <label>:3783                                    ; preds = %3781
  %3784 = fmul fast float %3736, %3495
  %3785 = fmul fast float %3736, %3496
  %3786 = fadd fast float %3784, %2880
  %3787 = fadd fast float %3785, %2881
  %3788 = call float @dx.op.binary.f32(i32 36, float %2893, float %3497)  ; FMin(a,b)
  %3789 = fsub fast float %3788, %2893
  %3790 = fmul fast float %3789, %3739
  %3791 = fadd fast float %3790, %2893
  %3792 = fadd fast float %3494, %2892
  %3793 = fmul fast float %3792, 0x3FF337FAE0000000
  %3794 = fmul fast float %2892, %2892
  %3795 = fmul fast float %3494, %3494
  %3796 = fadd fast float %3795, %3794
  %3797 = fmul fast float %3796, 0x3FE5152B00000000
  %3798 = fmul fast float %2892, 0xBFCC1F85E0000000
  %3799 = fmul fast float %3798, %3494
  %3800 = fadd fast float %3799, 0xBFE1363700000000
  %3801 = fadd fast float %3800, %3793
  %3802 = fsub fast float %3801, %3797
  %3803 = fmul fast float %3792, 0x3FBA6F0D00000000
  %3804 = fmul fast float %3796, 0x3FD0432880000000
  %3805 = fmul fast float %2892, 0xBFEF110800000000
  %3806 = fmul fast float %3805, %3494
  %3807 = fadd fast float %3806, 1.000000e+00
  %3808 = fsub fast float %3807, %3803
  %3809 = fadd fast float %3808, %3804
  %3810 = fdiv fast float %3802, %3809
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fsub fast float %3811, %2892
  %3813 = fmul fast float %3812, %3742
  %3814 = fadd fast float %3813, %2892
  %3815 = fmul fast float %3745, %3610
  %3816 = fadd fast float %3815, %2894
  %3817 = fmul fast float %3748, %3607
  %3818 = fmul fast float %3748, %3608
  %3819 = fmul fast float %3748, %3609
  %3820 = fadd fast float %3817, %2888
  %3821 = fadd fast float %3818, %2889
  %3822 = fadd fast float %3819, %2890
  %3823 = fmul fast float %3751, %3611
  %3824 = fadd fast float %3823, %2895
  br label %3849

; <label>:3825                                    ; preds = %3781
  %3826 = icmp eq i32 %3731, 8
  br i1 %3826, label %3827, label %3849

; <label>:3827                                    ; preds = %3825
  %3828 = fmul fast float %3736, %3495
  %3829 = fmul fast float %3736, %3496
  %3830 = fadd fast float %3828, %2880
  %3831 = fadd fast float %3829, %2881
  %3832 = call float @dx.op.binary.f32(i32 36, float %2893, float %3497)  ; FMin(a,b)
  %3833 = fsub fast float %3832, %2893
  %3834 = fmul fast float %3833, %3739
  %3835 = fadd fast float %3834, %2893
  %3836 = fsub fast float %3494, %2892
  %3837 = fmul fast float %3742, %3836
  %3838 = fadd fast float %3837, %2892
  %3839 = fmul fast float %3745, %3610
  %3840 = fadd fast float %3839, %2894
  %3841 = fmul fast float %3748, %3607
  %3842 = fmul fast float %3748, %3608
  %3843 = fmul fast float %3748, %3609
  %3844 = fadd fast float %3841, %2888
  %3845 = fadd fast float %3842, %2889
  %3846 = fadd fast float %3843, %2890
  %3847 = fmul fast float %3751, %3611
  %3848 = fadd fast float %3847, %2895
  br label %3849

; <label>:3849                                    ; preds = %3827, %3825, %3783, %3753, %3722, %3193, %2897, %2879
  %3850 = phi float [ %2880, %3722 ], [ %2880, %3193 ], [ %2880, %2879 ], [ %2880, %2897 ], [ %3758, %3753 ], [ %3786, %3783 ], [ %2880, %3825 ], [ %3830, %3827 ]
  %3851 = phi float [ %2881, %3722 ], [ %2881, %3193 ], [ %2881, %2879 ], [ %2881, %2897 ], [ %3759, %3753 ], [ %3787, %3783 ], [ %2881, %3825 ], [ %3831, %3827 ]
  %3852 = phi float [ %3723, %3722 ], [ %2882, %3193 ], [ %2882, %2879 ], [ %2882, %2897 ], [ %3723, %3753 ], [ %3723, %3783 ], [ %3723, %3825 ], [ %3723, %3827 ]
  %3853 = phi float [ %3724, %3722 ], [ %2883, %3193 ], [ %2883, %2879 ], [ %2883, %2897 ], [ %3724, %3753 ], [ %3724, %3783 ], [ %3724, %3825 ], [ %3724, %3827 ]
  %3854 = phi float [ %3725, %3722 ], [ %2884, %3193 ], [ %2884, %2879 ], [ %2884, %2897 ], [ %3725, %3753 ], [ %3725, %3783 ], [ %3725, %3825 ], [ %3725, %3827 ]
  %3855 = phi float [ %3726, %3722 ], [ %2885, %3193 ], [ %2885, %2879 ], [ %2885, %2897 ], [ %3726, %3753 ], [ %3726, %3783 ], [ %3726, %3825 ], [ %3726, %3827 ]
  %3856 = phi float [ %3727, %3722 ], [ %2886, %3193 ], [ %2886, %2879 ], [ %2886, %2897 ], [ %3727, %3753 ], [ %3727, %3783 ], [ %3727, %3825 ], [ %3727, %3827 ]
  %3857 = phi float [ %3728, %3722 ], [ %2887, %3193 ], [ %2887, %2879 ], [ %2887, %2897 ], [ %3728, %3753 ], [ %3728, %3783 ], [ %3728, %3825 ], [ %3728, %3827 ]
  %3858 = phi float [ %2888, %3722 ], [ %2888, %3193 ], [ %2888, %2879 ], [ %2888, %2897 ], [ %3775, %3753 ], [ %3820, %3783 ], [ %2888, %3825 ], [ %3844, %3827 ]
  %3859 = phi float [ %2889, %3722 ], [ %2889, %3193 ], [ %2889, %2879 ], [ %2889, %2897 ], [ %3776, %3753 ], [ %3821, %3783 ], [ %2889, %3825 ], [ %3845, %3827 ]
  %3860 = phi float [ %2890, %3722 ], [ %2890, %3193 ], [ %2890, %2879 ], [ %2890, %2897 ], [ %3777, %3753 ], [ %3822, %3783 ], [ %2890, %3825 ], [ %3846, %3827 ]
  %3861 = phi float [ %3729, %3722 ], [ %2891, %3193 ], [ %2891, %2879 ], [ %2891, %2897 ], [ %3729, %3753 ], [ %3729, %3783 ], [ %3729, %3825 ], [ %3729, %3827 ]
  %3862 = phi float [ %2892, %3722 ], [ %2892, %3193 ], [ %2892, %2879 ], [ %2892, %2897 ], [ %3765, %3753 ], [ %3814, %3783 ], [ %2892, %3825 ], [ %3838, %3827 ]
  %3863 = phi float [ %2893, %3722 ], [ %2893, %3193 ], [ %2893, %2879 ], [ %2893, %2897 ], [ %3762, %3753 ], [ %3791, %3783 ], [ %2893, %3825 ], [ %3835, %3827 ]
  %3864 = phi float [ %2894, %3722 ], [ %2894, %3193 ], [ %2894, %2879 ], [ %2894, %2897 ], [ %3768, %3753 ], [ %3816, %3783 ], [ %2894, %3825 ], [ %3840, %3827 ]
  %3865 = phi float [ %2895, %3722 ], [ %2895, %3193 ], [ %2895, %2879 ], [ %2895, %2897 ], [ %3780, %3753 ], [ %3824, %3783 ], [ %2895, %3825 ], [ %3848, %3827 ]
  %3866 = phi float [ %3730, %3722 ], [ %2896, %3193 ], [ %2896, %2879 ], [ %2896, %2897 ], [ %3730, %3753 ], [ %3730, %3783 ], [ %3730, %3825 ], [ %3730, %3827 ]
  %3867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3867, 0
  %3869 = call float @dx.op.dot2.f32(i32 54, float %3850, float %3851, float %3850, float %3851)  ; Dot2(ax,ay,bx,by)
  %3870 = fmul fast float %3869, 0x3FE3333340000000
  %3871 = fsub fast float 1.000000e+00, %3870
  %3872 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3851, float %3871, float %3850, float %3851, float %3871)  ; Dot3(ax,ay,az,bx,by,bz)
  %3873 = call float @dx.op.unary.f32(i32 25, float %3872)  ; Rsqrt(value)
  %3874 = fmul fast float %3873, %3850
  %3875 = fmul fast float %3873, %3851
  %3876 = fmul fast float %3871, %3873
  %3877 = fmul fast float %3876, %84
  %3878 = fmul fast float %3876, %86
  %3879 = fmul fast float %3876, %88
  %3880 = fmul fast float %3874, %56
  %3881 = fmul fast float %3874, %57
  %3882 = fmul fast float %3874, %58
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = fadd fast float %3879, %3882
  %3886 = fmul fast float %98, %3875
  %3887 = fmul fast float %99, %3875
  %3888 = fmul fast float %100, %3875
  %3889 = fadd fast float %3883, %3886
  %3890 = fadd fast float %3884, %3887
  %3891 = fadd fast float %3885, %3888
  %3892 = call float @dx.op.dot3.f32(i32 55, float %3889, float %3890, float %3891, float %3889, float %3890, float %3891)  ; Dot3(ax,ay,az,bx,by,bz)
  %3893 = call float @dx.op.unary.f32(i32 25, float %3892)  ; Rsqrt(value)
  %3894 = fmul fast float %3889, %3893
  %3895 = fmul fast float %3890, %3893
  %3896 = fmul fast float %3891, %3893
  %3897 = and i32 %37, 1
  %3898 = icmp eq i32 %3897, 0
  br i1 %3898, label %3899, label %4460

; <label>:3899                                    ; preds = %3849
  %3900 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3901 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3902 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3903 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3904 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3905 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3906 = fadd fast float %3900, %134
  %3907 = fadd fast float %3901, %135
  %3908 = fadd fast float %3902, %136
  %3909 = fadd fast float %3903, %134
  %3910 = fadd fast float %3904, %135
  %3911 = fadd fast float %3905, %136
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.CBufRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.CBufRet.f32 %3912, 2
  %3916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3917 = extractvalue %dx.types.CBufRet.f32 %3916, 2
  %3918 = extractvalue %dx.types.CBufRet.f32 %3916, 3
  %3919 = fmul fast float %3913, %75
  %3920 = fmul fast float %3919, %3917
  %3921 = fmul fast float %3914, %76
  %3922 = fmul fast float %3921, %3918
  %3923 = fptoui float %3920 to i32
  %3924 = fptoui float %3922 to i32
  %3925 = fadd fast float %3913, -1.000000e+00
  %3926 = fadd fast float %3914, -1.000000e+00
  %3927 = fptoui float %3925 to i32
  %3928 = fptoui float %3926 to i32
  %3929 = call i32 @dx.op.binary.i32(i32 40, i32 %3923, i32 %3927)  ; UMin(a,b)
  %3930 = call i32 @dx.op.binary.i32(i32 40, i32 %3924, i32 %3928)  ; UMin(a,b)
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 2
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 3
  %3934 = fmul fast float %3932, %70
  %3935 = fsub fast float %3934, %3933
  %3936 = fadd fast float %3915, -1.000000e+00
  %3937 = call float @dx.op.binary.f32(i32 36, float %3935, float %3936)  ; FMin(a,b)
  %3938 = fptoui float %3937 to i32
  %3939 = fptoui float %3913 to i32
  %3940 = fptoui float %3914 to i32
  %3941 = mul i32 %3938, %3940
  %3942 = add i32 %3941, %3930
  %3943 = mul i32 %3942, %3939
  %3944 = add i32 %3943, %3929
  %3945 = shl i32 %3944, 2
  %3946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.i32 %3946, 0
  %3948 = and i32 %3947, 1023
  %3949 = lshr i32 %3947, 10
  %3950 = icmp eq i32 %3948, 0
  br i1 %3950, label %4426, label %3951

; <label>:3951                                    ; preds = %3899
  %3952 = and i32 %3947, 1023
  br label %3953

; <label>:3953                                    ; preds = %4082, %3951
  %3954 = phi i32 [ %4032, %4082 ], [ 0, %3951 ]
  %3955 = phi float [ %4083, %4082 ], [ 0.000000e+00, %3951 ]
  %3956 = phi float [ %4084, %4082 ], [ %3868, %3951 ]
  %3957 = phi float [ %4085, %4082 ], [ %3866, %3951 ]
  %3958 = phi float [ %4086, %4082 ], [ %3865, %3951 ]
  %3959 = phi float [ %4087, %4082 ], [ 0.000000e+00, %3951 ]
  %3960 = phi float [ %4088, %4082 ], [ %3858, %3951 ]
  %3961 = phi float [ %4089, %4082 ], [ %3859, %3951 ]
  %3962 = phi float [ %4090, %4082 ], [ %3860, %3951 ]
  %3963 = phi float [ %4091, %4082 ], [ %3855, %3951 ]
  %3964 = phi float [ %4092, %4082 ], [ %3856, %3951 ]
  %3965 = phi float [ %4093, %4082 ], [ %3857, %3951 ]
  %3966 = phi float [ %4094, %4082 ], [ %3894, %3951 ]
  %3967 = phi float [ %4095, %4082 ], [ %3895, %3951 ]
  %3968 = phi float [ %4096, %4082 ], [ %3896, %3951 ]
  %3969 = phi float [ %4097, %4082 ], [ %3863, %3951 ]
  %3970 = phi float [ %4098, %4082 ], [ %3862, %3951 ]
  %3971 = phi float [ %4099, %4082 ], [ 0.000000e+00, %3951 ]
  %3972 = phi float [ %4100, %4082 ], [ %3861, %3951 ]
  %3973 = phi float [ %4101, %4082 ], [ %3852, %3951 ]
  %3974 = phi float [ %4102, %4082 ], [ %3853, %3951 ]
  %3975 = phi float [ %4103, %4082 ], [ %3854, %3951 ]
  %3976 = add nuw nsw i32 %3954, %3949
  %3977 = shl i32 %3976, 2
  %3978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3977, i32 undef)  ; BufferLoad(srv,index,wot)
  %3979 = extractvalue %dx.types.ResRet.i32 %3978, 0
  %3980 = shl i32 %3979, 8
  %3981 = or i32 %3980, 48
  %3982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3981, i32 undef)  ; BufferLoad(srv,index,wot)
  %3983 = extractvalue %dx.types.ResRet.f32 %3982, 0
  %3984 = extractvalue %dx.types.ResRet.f32 %3982, 1
  %3985 = extractvalue %dx.types.ResRet.f32 %3982, 2
  %3986 = extractvalue %dx.types.ResRet.f32 %3982, 3
  %3987 = or i32 %3980, 64
  %3988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3987, i32 undef)  ; BufferLoad(srv,index,wot)
  %3989 = extractvalue %dx.types.ResRet.i32 %3988, 0
  %3990 = extractvalue %dx.types.ResRet.i32 %3988, 1
  %3991 = or i32 %3980, 80
  %3992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3991, i32 undef)  ; BufferLoad(srv,index,wot)
  %3993 = extractvalue %dx.types.ResRet.f32 %3992, 2
  %3994 = extractvalue %dx.types.ResRet.f32 %3992, 3
  %3995 = or i32 %3980, 96
  %3996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3997 = extractvalue %dx.types.ResRet.f32 %3996, 0
  %3998 = extractvalue %dx.types.ResRet.f32 %3996, 1
  %3999 = extractvalue %dx.types.ResRet.f32 %3996, 2
  %4000 = extractvalue %dx.types.ResRet.f32 %3996, 3
  %4001 = or i32 %3980, 112
  %4002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 2
  %4004 = or i32 %3980, 128
  %4005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4004, i32 undef)  ; BufferLoad(srv,index,wot)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4009 = extractvalue %dx.types.ResRet.f32 %4005, 3
  %4010 = or i32 %3980, 144
  %4011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.f32 %4011, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %4011, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %4011, 2
  %4015 = extractvalue %dx.types.ResRet.f32 %4011, 3
  %4016 = or i32 %3980, 160
  %4017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4016, i32 undef)  ; BufferLoad(srv,index,wot)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = extractvalue %dx.types.ResRet.f32 %4017, 1
  %4020 = extractvalue %dx.types.ResRet.f32 %4017, 2
  %4021 = extractvalue %dx.types.ResRet.f32 %4017, 3
  %4022 = or i32 %3980, 192
  %4023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.i32 %4023, 0
  %4025 = or i32 %3980, 208
  %4026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4028 = or i32 %3980, 248
  %4029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = add nuw nsw i32 %3954, 1
  %4033 = bitcast float %3986 to i32
  %4034 = and i32 %4033, 512
  %4035 = icmp eq i32 %4034, 0
  %4036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3980, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4036, 2
  %4040 = extractvalue %dx.types.ResRet.f32 %4036, 3
  %4041 = call float @dx.op.dot4.f32(i32 56, float %4037, float %4038, float %4039, float %4040, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4042 = or i32 %3980, 16
  %4043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4042, i32 undef)  ; BufferLoad(srv,index,wot)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.ResRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.ResRet.f32 %4043, 2
  %4047 = extractvalue %dx.types.ResRet.f32 %4043, 3
  %4048 = call float @dx.op.dot4.f32(i32 56, float %4044, float %4045, float %4046, float %4047, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4049 = or i32 %3980, 32
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = extractvalue %dx.types.ResRet.f32 %4050, 2
  %4054 = extractvalue %dx.types.ResRet.f32 %4050, 3
  %4055 = call float @dx.op.dot4.f32(i32 56, float %4051, float %4052, float %4053, float %4054, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4056 = call float @dx.op.unary.f32(i32 27, float %4041)  ; Round_ni(value)
  %4057 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4058 = call float @dx.op.unary.f32(i32 27, float %4048)  ; Round_ni(value)
  %4059 = call float @dx.op.unary.f32(i32 6, float %4058)  ; FAbs(value)
  %4060 = call float @dx.op.unary.f32(i32 6, float %4055)  ; FAbs(value)
  %4061 = call float @dx.op.unary.f32(i32 27, float %4060)  ; Round_ni(value)
  %4062 = fadd fast float %4059, %4057
  %4063 = fadd fast float %4062, %4061
  %4064 = fcmp fast oeq float %4063, 0.000000e+00
  %4065 = call float @dx.op.dot4.f32(i32 56, float %4037, float %4038, float %4039, float %4040, float %3906, float %3907, float %3908, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4066 = call float @dx.op.dot4.f32(i32 56, float %4044, float %4045, float %4046, float %4047, float %3906, float %3907, float %3908, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4067 = call float @dx.op.dot4.f32(i32 56, float %4037, float %4038, float %4039, float %4040, float %3909, float %3910, float %3911, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4068 = call float @dx.op.dot4.f32(i32 56, float %4044, float %4045, float %4046, float %4047, float %3909, float %3910, float %3911, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4069 = fsub fast float %4065, %4041
  %4070 = fsub fast float %4067, %4041
  %4071 = fsub fast float %4066, %4048
  %4072 = fsub fast float %4068, %4048
  %4073 = call float @dx.op.dot3.f32(i32 55, float %3983, float %3984, float %3985, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4076 = fadd fast float %4075, %4073
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4079 = fcmp fast ogt float %4077, %4078
  %4080 = and i1 %4064, %4079
  %4081 = and i1 %4035, %4080
  br i1 %4081, label %4105, label %4082

; <label>:4082                                    ; preds = %4412, %4186, %4105, %3953
  %4083 = phi float [ %3955, %4105 ], [ %4189, %4186 ], [ %4189, %4412 ], [ %3955, %3953 ]
  %4084 = phi float [ %3956, %4105 ], [ %3956, %4186 ], [ %4388, %4412 ], [ %3956, %3953 ]
  %4085 = phi float [ %3957, %4105 ], [ %3957, %4186 ], [ %4386, %4412 ], [ %3957, %3953 ]
  %4086 = phi float [ %3958, %4105 ], [ %3958, %4186 ], [ %4313, %4412 ], [ %3958, %3953 ]
  %4087 = phi float [ %3959, %4105 ], [ %3959, %4186 ], [ %4311, %4412 ], [ %3959, %3953 ]
  %4088 = phi float [ %3960, %4105 ], [ %3960, %4186 ], [ %4356, %4412 ], [ %3960, %3953 ]
  %4089 = phi float [ %3961, %4105 ], [ %3961, %4186 ], [ %4357, %4412 ], [ %3961, %3953 ]
  %4090 = phi float [ %3962, %4105 ], [ %3962, %4186 ], [ %4358, %4412 ], [ %3962, %3953 ]
  %4091 = phi float [ %3963, %4105 ], [ %3963, %4186 ], [ %4422, %4412 ], [ %3963, %3953 ]
  %4092 = phi float [ %3964, %4105 ], [ %3964, %4186 ], [ %4423, %4412 ], [ %3964, %3953 ]
  %4093 = phi float [ %3965, %4105 ], [ %3965, %4186 ], [ %4424, %4412 ], [ %3965, %3953 ]
  %4094 = phi float [ %3966, %4105 ], [ %3966, %4186 ], [ %4292, %4412 ], [ %3966, %3953 ]
  %4095 = phi float [ %3967, %4105 ], [ %3967, %4186 ], [ %4293, %4412 ], [ %3967, %3953 ]
  %4096 = phi float [ %3968, %4105 ], [ %3968, %4186 ], [ %4294, %4412 ], [ %3968, %3953 ]
  %4097 = phi float [ %3969, %4105 ], [ %3969, %4186 ], [ %4366, %4412 ], [ %3969, %3953 ]
  %4098 = phi float [ %3970, %4105 ], [ %3970, %4186 ], [ %4363, %4412 ], [ %3970, %3953 ]
  %4099 = phi float [ %3971, %4105 ], [ %3971, %4186 ], [ %4360, %4412 ], [ %3971, %3953 ]
  %4100 = phi float [ %3972, %4105 ], [ %3972, %4186 ], [ %4309, %4412 ], [ %3972, %3953 ]
  %4101 = phi float [ %3973, %4105 ], [ %3973, %4186 ], [ %4304, %4412 ], [ %3973, %3953 ]
  %4102 = phi float [ %3974, %4105 ], [ %3974, %4186 ], [ %4305, %4412 ], [ %3974, %3953 ]
  %4103 = phi float [ %3975, %4105 ], [ %3975, %4186 ], [ %4306, %4412 ], [ %3975, %3953 ]
  %4104 = icmp eq i32 %4032, %3952
  br i1 %4104, label %4425, label %3953

; <label>:4105                                    ; preds = %3953
  %4106 = extractvalue %dx.types.ResRet.f32 %4002, 3
  %4107 = extractvalue %dx.types.ResRet.f32 %4002, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4109 = extractvalue %dx.types.ResRet.f32 %3992, 1
  %4110 = extractvalue %dx.types.ResRet.f32 %3992, 0
  %4111 = extractvalue %dx.types.ResRet.i32 %3988, 3
  %4112 = extractvalue %dx.types.ResRet.i32 %3988, 2
  %4113 = add i32 %4111, 0
  %4114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4113, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4116 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4114, %dx.types.Handle %4115, float %4041, float %4048, float undef, float undef, i32 0, i32 0, i32 undef, float %4069, float %4071, float undef, float %4070, float %4072, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = fmul fast float %4117, %4110
  %4119 = fadd fast float %4118, %4109
  %4120 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4121 = fmul fast float %4041, %3997
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %4048, float %4121)  ; FMad(a,b,c)
  %4123 = fadd fast float %4122, %4108
  %4124 = fmul fast float %4041, %3999
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %4048, float %4124)  ; FMad(a,b,c)
  %4126 = fadd fast float %4125, %4107
  %4127 = fmul fast float %4069, %3997
  %4128 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %4071, float %4127)  ; FMad(a,b,c)
  %4129 = fmul fast float %4069, %3999
  %4130 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %4071, float %4129)  ; FMad(a,b,c)
  %4131 = fmul fast float %4070, %3997
  %4132 = call float @dx.op.tertiary.f32(i32 46, float %3998, float %4072, float %4131)  ; FMad(a,b,c)
  %4133 = fmul fast float %4070, %3999
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4000, float %4072, float %4133)  ; FMad(a,b,c)
  %4135 = add i32 %4112, 0
  %4136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4137 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4136, %dx.types.Handle %4115, float %4123, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float %4128, float %4130, float undef, float %4132, float %4134, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = and i32 %4033, 1024
  %4140 = icmp ne i32 %4139, 0
  %4141 = fcmp fast ogt float %4138, 0x3FE0101020000000
  %4142 = uitofp i1 %4141 to float
  %4143 = select i1 %4140, float %4142, float %4138
  %4144 = and i32 %4033, 8192
  %4145 = icmp ne i32 %4144, 0
  %4146 = select i1 %4145, float %4106, float 1.000000e+00
  %4147 = fmul fast float %4041, 2.000000e+00
  %4148 = fadd fast float %4147, -1.000000e+00
  %4149 = call float @dx.op.unary.f32(i32 6, float %4148)  ; FAbs(value)
  %4150 = fmul fast float %4149, %4030
  %4151 = fsub fast float %4150, %4030
  %4152 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4153 = fmul fast float %4048, 2.000000e+00
  %4154 = fadd fast float %4153, -1.000000e+00
  %4155 = call float @dx.op.unary.f32(i32 6, float %4154)  ; FAbs(value)
  %4156 = fmul fast float %4155, %4031
  %4157 = fsub fast float %4156, %4031
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = fmul fast float %4060, %3993
  %4160 = fsub fast float %4159, %3993
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4120, %4146
  %4163 = fmul fast float %4162, %4117
  %4164 = fmul fast float %4163, %4152
  %4165 = fmul fast float %4164, %4143
  %4166 = fmul fast float %4165, %4158
  %4167 = fmul fast float %4166, %4161
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4168, 0
  %4171 = fsub fast float %4077, %4170
  %4172 = fmul fast float %4171, %4169
  %4173 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4174 = fmul fast float %4167, %3994
  %4175 = fadd fast float %4167, %3994
  %4176 = fmul fast float %4175, %4003
  %4177 = fsub fast float %4176, %4003
  %4178 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4179 = and i32 %4033, 128
  %4180 = icmp ne i32 %4179, 0
  %4181 = select i1 %4180, float %4178, float %4174
  %4182 = fmul fast float %4181, %4173
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = fcmp fast ugt float %4182, %4184
  br i1 %4185, label %4186, label %4082

; <label>:4186                                    ; preds = %4105
  %4187 = select i1 %4145, float %4182, float 0.000000e+00
  %4188 = fadd fast float %4187, %3955
  %4189 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  br i1 %4145, label %4082, label %4190

; <label>:4190                                    ; preds = %4186
  %4191 = and i32 %4033, 4
  %4192 = and i32 %4033, 8
  %4193 = add i32 %3989, 0
  %4194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4193, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4196 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4194, %dx.types.Handle %4195, float %4123, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float %4128, float %4130, float undef, float %4132, float %4134, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = extractvalue %dx.types.ResRet.f32 %4196, 1
  %4199 = extractvalue %dx.types.ResRet.f32 %4196, 2
  %4200 = extractvalue %dx.types.ResRet.f32 %4196, 3
  %4201 = bitcast float %4015 to i32
  %4202 = and i32 %4201, 255
  %4203 = uitofp i32 %4202 to float
  %4204 = lshr i32 %4201, 8
  %4205 = and i32 %4204, 255
  %4206 = uitofp i32 %4205 to float
  %4207 = fmul fast float %4200, %4203
  %4208 = fadd fast float %4207, %4206
  %4209 = fmul fast float %4208, 0x3F70101000000000
  %4210 = add i32 %3990, 0
  %4211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4210, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4212 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4211, %dx.types.Handle %4195, float %4123, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float %4128, float %4130, float undef, float %4132, float %4134, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = extractvalue %dx.types.ResRet.f32 %4212, 2
  %4216 = extractvalue %dx.types.ResRet.f32 %4212, 3
  %4217 = bitcast float %4009 to i32
  %4218 = and i32 %4217, 255
  %4219 = uitofp i32 %4218 to float
  %4220 = lshr i32 %4217, 8
  %4221 = and i32 %4220, 255
  %4222 = uitofp i32 %4221 to float
  %4223 = lshr i32 %4217, 16
  %4224 = and i32 %4223, 255
  %4225 = uitofp i32 %4224 to float
  %4226 = fmul fast float %4225, 0x3F70101000000000
  %4227 = fmul fast float %4213, %4219
  %4228 = fadd fast float %4227, %4222
  %4229 = fmul fast float %4228, 0x3F70101000000000
  %4230 = fadd fast float %4214, -5.000000e-01
  %4231 = fadd fast float %4216, -5.000000e-01
  %4232 = fmul fast float %4230, %4226
  %4233 = fmul fast float %4231, %4226
  %4234 = fadd fast float %4232, 5.000000e-01
  %4235 = fadd fast float %4233, 5.000000e-01
  %4236 = fmul fast float %4197, %4018
  %4237 = fmul fast float %4198, %4019
  %4238 = fmul fast float %4199, %4020
  %4239 = fmul fast float %4234, 2.000000e+00
  %4240 = fadd fast float %4239, -1.000000e+00
  %4241 = fmul fast float %4235, 2.000000e+00
  %4242 = fadd fast float %4241, -1.000000e+00
  %4243 = fadd fast float %4240, %4242
  %4244 = fmul fast float %4243, 5.000000e-01
  %4245 = fsub fast float %4240, %4242
  %4246 = fmul fast float %4245, 5.000000e-01
  %4247 = call float @dx.op.unary.f32(i32 6, float %4244)  ; FAbs(value)
  %4248 = fsub fast float 1.000000e+00, %4247
  %4249 = call float @dx.op.unary.f32(i32 6, float %4246)  ; FAbs(value)
  %4250 = fsub fast float %4248, %4249
  %4251 = call float @dx.op.dot3.f32(i32 55, float %4244, float %4246, float %4250, float %4244, float %4246, float %4250)  ; Dot3(ax,ay,az,bx,by,bz)
  %4252 = call float @dx.op.unary.f32(i32 25, float %4251)  ; Rsqrt(value)
  %4253 = fmul fast float %4244, %4252
  %4254 = fmul fast float %4246, %4252
  %4255 = fmul fast float %4252, %4250
  %4256 = fmul fast float %4255, %3983
  %4257 = fmul fast float %4255, %3984
  %4258 = fmul fast float %4255, %3985
  %4259 = fmul fast float %4253, %4006
  %4260 = fmul fast float %4253, %4007
  %4261 = fmul fast float %4253, %4008
  %4262 = fadd fast float %4259, %4256
  %4263 = fadd fast float %4260, %4257
  %4264 = fadd fast float %4261, %4258
  %4265 = fmul fast float %4254, %4012
  %4266 = fmul fast float %4254, %4013
  %4267 = fmul fast float %4254, %4014
  %4268 = fadd fast float %4262, %4265
  %4269 = fadd fast float %4263, %4266
  %4270 = fadd fast float %4264, %4267
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4268, float %4269, float %4270, float %4268, float %4269, float %4270)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = call float @dx.op.unary.f32(i32 25, float %4271)  ; Rsqrt(value)
  %4273 = fmul fast float %4268, %4272
  %4274 = fmul fast float %4269, %4272
  %4275 = fmul fast float %4270, %4272
  %4276 = icmp ne i32 %4192, 0
  %4277 = select i1 %4276, float 1.000000e+00, float 0.000000e+00
  %4278 = fmul fast float %4182, %4277
  %4279 = and i32 %4033, 1
  %4280 = icmp eq i32 %4279, 0
  br i1 %4280, label %4281, label %4285

; <label>:4281                                    ; preds = %4190
  %4282 = fsub fast float %4273, %3966
  %4283 = fsub fast float %4274, %3967
  %4284 = fsub fast float %4275, %3968
  br label %4285

; <label>:4285                                    ; preds = %4281, %4190
  %4286 = phi float [ %4282, %4281 ], [ %4273, %4190 ]
  %4287 = phi float [ %4283, %4281 ], [ %4274, %4190 ]
  %4288 = phi float [ %4284, %4281 ], [ %4275, %4190 ]
  %4289 = fmul float %4288, %4278
  %4290 = fmul float %4287, %4278
  %4291 = fmul float %4286, %4278
  %4292 = fadd fast float %4291, %3966
  %4293 = fadd fast float %4290, %3967
  %4294 = fadd fast float %4289, %3968
  %4295 = icmp ne i32 %4191, 0
  %4296 = select i1 %4295, float 1.000000e+00, float 0.000000e+00
  %4297 = fmul fast float %4182, %4296
  %4298 = fsub fast float %4236, %3973
  %4299 = fsub fast float %4237, %3974
  %4300 = fsub fast float %4238, %3975
  %4301 = fmul fast float %4298, %4297
  %4302 = fmul fast float %4299, %4297
  %4303 = fmul fast float %4300, %4297
  %4304 = fadd fast float %4301, %3973
  %4305 = fadd fast float %4302, %3974
  %4306 = fadd fast float %4303, %3975
  %4307 = fsub fast float %4209, %3972
  %4308 = fmul fast float %4307, %4297
  %4309 = fadd fast float %4308, %3972
  %4310 = fmul fast float %4297, %3959
  %4311 = fsub fast float %3959, %4310
  %4312 = fmul fast float %4297, %3958
  %4313 = fsub fast float %3958, %4312
  %4314 = bitcast float %4027 to i32
  %4315 = lshr i32 %4314, 16
  %4316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4315)  ; LegacyF16ToF32(value)
  %4317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4318 = extractvalue %dx.types.ResRet.i32 %4317, 0
  %4319 = and i32 %4318, 1
  %4320 = icmp eq i32 %4319, 0
  br i1 %4320, label %4321, label %4346

; <label>:4321                                    ; preds = %4285
  %4322 = fadd fast float %4209, 0xBFB99999A0000000
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = fmul fast float %4323, 0x3FF1C71C80000000
  %4325 = fsub fast float 1.000000e+00, %4324
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = fmul fast float %4326, %4236
  %4328 = fmul fast float %4326, %4237
  %4329 = fmul fast float %4326, %4238
  %4330 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4331 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.binary.f32(i32 35, float %4331, float %4332)  ; FMax(a,b)
  %4334 = call float @dx.op.binary.f32(i32 35, float %4330, float %4333)  ; FMax(a,b)
  %4335 = fcmp fast ogt float %4334, 0.000000e+00
  %4336 = bitcast float %4334 to i32
  %4337 = sub nsw i32 2129859010, %4336
  %4338 = bitcast i32 %4337 to float
  %4339 = select i1 %4335, float %4338, float 0.000000e+00
  %4340 = fmul fast float %4330, %4316
  %4341 = fmul fast float %4331, %4316
  %4342 = fmul fast float %4332, %4316
  %4343 = fmul fast float %4340, %4339
  %4344 = fmul fast float %4341, %4339
  %4345 = fmul fast float %4342, %4339
  br label %4346

; <label>:4346                                    ; preds = %4321, %4285
  %4347 = phi float [ %4316, %4285 ], [ %4343, %4321 ]
  %4348 = phi float [ %4316, %4285 ], [ %4344, %4321 ]
  %4349 = phi float [ %4316, %4285 ], [ %4345, %4321 ]
  %4350 = fsub fast float %4347, %3960
  %4351 = fsub fast float %4348, %3961
  %4352 = fsub fast float %4349, %3962
  %4353 = fmul fast float %4350, %4297
  %4354 = fmul fast float %4351, %4297
  %4355 = fmul fast float %4352, %4297
  %4356 = fadd fast float %4353, %3960
  %4357 = fadd fast float %4354, %3961
  %4358 = fadd fast float %4355, %3962
  %4359 = fadd fast float %4182, %3971
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fsub fast float %4229, %3970
  %4362 = fmul fast float %4361, %4278
  %4363 = fadd fast float %4362, %3970
  %4364 = fsub fast float %4215, %3969
  %4365 = fmul fast float %4364, %4278
  %4366 = fadd fast float %4365, %3969
  %4367 = call float @dx.op.dot3.f32(i32 55, float %4236, float %4237, float %4238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4371 = fmul fast float %4370, %4367
  %4372 = fadd fast float %4371, %4369
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = bitcast float %4021 to i32
  %4375 = and i32 %4374, 65535
  %4376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4375)  ; LegacyF16ToF32(value)
  %4377 = lshr i32 %4374, 16
  %4378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4377)  ; LegacyF16ToF32(value)
  %4379 = fcmp fast oge float %4376, 0.000000e+00
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = select i1 %4379, float %4376, float %4381
  %4383 = fadd fast float %4382, %4378
  %4384 = fsub fast float %4373, %3957
  %4385 = fmul fast float %4384, %4182
  %4386 = fadd fast float %4385, %3957
  %4387 = fmul fast float %4383, %4182
  %4388 = call float @dx.op.binary.f32(i32 35, float %3956, float %4387)  ; FMax(a,b)
  %4389 = and i32 %4033, 16
  %4390 = icmp eq i32 %4389, 0
  br i1 %4390, label %4412, label %4391

; <label>:4391                                    ; preds = %4346
  %4392 = add i32 %4024, 0
  %4393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4394 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4393, %dx.types.Handle %4195, float %4123, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float %4128, float %4130, float undef, float %4132, float %4134, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.ResRet.f32 %4394, 1
  %4397 = extractvalue %dx.types.ResRet.f32 %4394, 2
  %4398 = and i32 %4314, 65535
  %4399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4398)  ; LegacyF16ToF32(value)
  %4400 = fmul fast float %4395, %4018
  %4401 = fmul fast float %4396, %4019
  %4402 = fmul fast float %4397, %4020
  %4403 = and i32 %4033, 16384
  %4404 = icmp ne i32 %4403, 0
  %4405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.f32 %4405, 0
  %4407 = select i1 %4404, float %4406, float 1.000000e+00
  %4408 = fmul fast float %4407, %4399
  %4409 = fmul fast float %4400, %4408
  %4410 = fmul fast float %4401, %4408
  %4411 = fmul fast float %4402, %4408
  br label %4412

; <label>:4412                                    ; preds = %4391, %4346
  %4413 = phi float [ %4409, %4391 ], [ 0.000000e+00, %4346 ]
  %4414 = phi float [ %4410, %4391 ], [ 0.000000e+00, %4346 ]
  %4415 = phi float [ %4411, %4391 ], [ 0.000000e+00, %4346 ]
  %4416 = fsub fast float %4413, %3963
  %4417 = fsub fast float %4414, %3964
  %4418 = fsub fast float %4415, %3965
  %4419 = fmul fast float %4416, %4182
  %4420 = fmul fast float %4417, %4182
  %4421 = fmul fast float %4418, %4182
  %4422 = fadd fast float %4419, %3963
  %4423 = fadd fast float %4420, %3964
  %4424 = fadd fast float %4421, %3965
  br label %4082

; <label>:4425                                    ; preds = %4082
  br label %4426

; <label>:4426                                    ; preds = %4425, %3899
  %4427 = phi float [ 0.000000e+00, %3899 ], [ %4083, %4425 ]
  %4428 = phi float [ %3868, %3899 ], [ %4084, %4425 ]
  %4429 = phi float [ %3866, %3899 ], [ %4085, %4425 ]
  %4430 = phi float [ %3865, %3899 ], [ %4086, %4425 ]
  %4431 = phi float [ 0.000000e+00, %3899 ], [ %4087, %4425 ]
  %4432 = phi float [ %3858, %3899 ], [ %4088, %4425 ]
  %4433 = phi float [ %3859, %3899 ], [ %4089, %4425 ]
  %4434 = phi float [ %3860, %3899 ], [ %4090, %4425 ]
  %4435 = phi float [ %3855, %3899 ], [ %4091, %4425 ]
  %4436 = phi float [ %3856, %3899 ], [ %4092, %4425 ]
  %4437 = phi float [ %3857, %3899 ], [ %4093, %4425 ]
  %4438 = phi float [ %3894, %3899 ], [ %4094, %4425 ]
  %4439 = phi float [ %3895, %3899 ], [ %4095, %4425 ]
  %4440 = phi float [ %3896, %3899 ], [ %4096, %4425 ]
  %4441 = phi float [ %3863, %3899 ], [ %4097, %4425 ]
  %4442 = phi float [ %3862, %3899 ], [ %4098, %4425 ]
  %4443 = phi float [ 0.000000e+00, %3899 ], [ %4099, %4425 ]
  %4444 = phi float [ %3861, %3899 ], [ %4100, %4425 ]
  %4445 = phi float [ %3852, %3899 ], [ %4101, %4425 ]
  %4446 = phi float [ %3853, %3899 ], [ %4102, %4425 ]
  %4447 = phi float [ %3854, %3899 ], [ %4103, %4425 ]
  %4448 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %4438, float %4439, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call float @dx.op.unary.f32(i32 25, float %4448)  ; Rsqrt(value)
  %4450 = fmul fast float %4449, %4438
  %4451 = fmul fast float %4449, %4439
  %4452 = fmul fast float %4449, %4440
  %4453 = fadd fast float %4443, %951
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = call float @dx.op.dot3.f32(i32 55, float %4450, float %4451, float %4452, float %4450, float %4451, float %4452)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = call float @dx.op.unary.f32(i32 25, float %4455)  ; Rsqrt(value)
  %4457 = fmul fast float %4456, %4450
  %4458 = fmul fast float %4456, %4451
  %4459 = fmul fast float %4456, %4452
  br label %4460

; <label>:4460                                    ; preds = %4426, %3849
  %4461 = phi float [ %4457, %4426 ], [ %3894, %3849 ]
  %4462 = phi float [ %4458, %4426 ], [ %3895, %3849 ]
  %4463 = phi float [ %4459, %4426 ], [ %3896, %3849 ]
  %4464 = phi float [ %4445, %4426 ], [ %3852, %3849 ]
  %4465 = phi float [ %4446, %4426 ], [ %3853, %3849 ]
  %4466 = phi float [ %4447, %4426 ], [ %3854, %3849 ]
  %4467 = phi float [ %4435, %4426 ], [ %3855, %3849 ]
  %4468 = phi float [ %4436, %4426 ], [ %3856, %3849 ]
  %4469 = phi float [ %4437, %4426 ], [ %3857, %3849 ]
  %4470 = phi float [ %4432, %4426 ], [ %3858, %3849 ]
  %4471 = phi float [ %4433, %4426 ], [ %3859, %3849 ]
  %4472 = phi float [ %4434, %4426 ], [ %3860, %3849 ]
  %4473 = phi float [ %4444, %4426 ], [ %3861, %3849 ]
  %4474 = phi float [ %4454, %4426 ], [ %951, %3849 ]
  %4475 = phi float [ %4442, %4426 ], [ %3862, %3849 ]
  %4476 = phi float [ %4441, %4426 ], [ %3863, %3849 ]
  %4477 = phi float [ %4431, %4426 ], [ 0.000000e+00, %3849 ]
  %4478 = phi float [ %4430, %4426 ], [ %3865, %3849 ]
  %4479 = phi float [ %4427, %4426 ], [ 0.000000e+00, %3849 ]
  %4480 = phi float [ %4428, %4426 ], [ %3868, %3849 ]
  %4481 = phi float [ %4429, %4426 ], [ %3866, %3849 ]
  %4482 = fadd fast float %4473, 0xBFB99999A0000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4483, 0x3FF1C71C80000000
  %4485 = call float @dx.op.binary.f32(i32 36, float %4473, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4486 = fsub fast float 1.000000e+00, %4484
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %4487, %4464
  %4489 = fmul fast float %4487, %4465
  %4490 = fmul fast float %4487, %4466
  %4491 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4493 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4494 = fmul fast float %4484, %4464
  %4495 = fmul fast float %4484, %4465
  %4496 = fmul fast float %4484, %4466
  %4497 = fadd fast float %4494, %4485
  %4498 = fadd fast float %4495, %4485
  %4499 = fadd fast float %4496, %4485
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4502 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4503 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4505 = extractvalue %dx.types.ResRet.i32 %4504, 0
  %4506 = and i32 %4505, 1
  %4507 = icmp eq i32 %4506, 0
  br i1 %4507, label %4522, label %4508

; <label>:4508                                    ; preds = %4460
  %4509 = call float @dx.op.binary.f32(i32 35, float %4492, float %4493)  ; FMax(a,b)
  %4510 = call float @dx.op.binary.f32(i32 35, float %4491, float %4509)  ; FMax(a,b)
  %4511 = fcmp fast ogt float %4510, 0.000000e+00
  %4512 = bitcast float %4510 to i32
  %4513 = sub nsw i32 2129859010, %4512
  %4514 = bitcast i32 %4513 to float
  %4515 = select i1 %4511, float %4514, float 0.000000e+00
  %4516 = fmul fast float %4491, %4470
  %4517 = fmul fast float %4492, %4471
  %4518 = fmul fast float %4493, %4472
  %4519 = fmul fast float %4516, %4515
  %4520 = fmul fast float %4517, %4515
  %4521 = fmul fast float %4518, %4515
  br label %4522

; <label>:4522                                    ; preds = %4508, %4460
  %4523 = phi float [ %4519, %4508 ], [ %4470, %4460 ]
  %4524 = phi float [ %4520, %4508 ], [ %4471, %4460 ]
  %4525 = phi float [ %4521, %4508 ], [ %4472, %4460 ]
  %4526 = fadd fast float %4491, 0xBFD51EB860000000
  %4527 = fadd fast float %4492, 0xBFD51EB860000000
  %4528 = fadd fast float %4493, 0xBFD51EB860000000
  %4529 = fmul fast float %4526, %4526
  %4530 = fmul fast float %4527, %4527
  %4531 = fmul fast float %4528, %4528
  %4532 = fmul fast float %4529, %4529
  %4533 = fmul fast float %4532, 1.000000e+02
  %4534 = fmul fast float %4530, %4530
  %4535 = fmul fast float %4534, 1.000000e+02
  %4536 = fmul fast float %4531, %4531
  %4537 = fmul fast float %4536, 1.000000e+02
  %4538 = fadd fast float %4533, 3.500000e+00
  %4539 = fadd fast float %4535, 3.500000e+00
  %4540 = fadd fast float %4537, 3.500000e+00
  %4541 = call float @dx.op.binary.f32(i32 35, float %4523, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4542 = call float @dx.op.binary.f32(i32 35, float %4524, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4543 = call float @dx.op.binary.f32(i32 35, float %4525, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4544 = fdiv fast float %4538, %4541
  %4545 = fdiv fast float %4539, %4542
  %4546 = fdiv fast float %4540, %4543
  %4547 = fmul fast float %3864, 0xBFF7154760000000
  %4548 = fmul fast float %4547, %4544
  %4549 = call float @dx.op.unary.f32(i32 21, float %4548)  ; Exp(value)
  %4550 = fmul fast float %4549, 2.500000e-01
  %4551 = fmul fast float %3864, 0xBFDEC709E0000000
  %4552 = fmul fast float %4551, %4544
  %4553 = call float @dx.op.unary.f32(i32 21, float %4552)  ; Exp(value)
  %4554 = fmul fast float %4553, 7.500000e-01
  %4555 = fmul fast float %4547, %4545
  %4556 = call float @dx.op.unary.f32(i32 21, float %4555)  ; Exp(value)
  %4557 = fmul fast float %4556, 2.500000e-01
  %4558 = fmul fast float %4551, %4545
  %4559 = call float @dx.op.unary.f32(i32 21, float %4558)  ; Exp(value)
  %4560 = fmul fast float %4559, 7.500000e-01
  %4561 = fmul fast float %4547, %4546
  %4562 = call float @dx.op.unary.f32(i32 21, float %4561)  ; Exp(value)
  %4563 = fmul fast float %4562, 2.500000e-01
  %4564 = fmul fast float %4551, %4546
  %4565 = call float @dx.op.unary.f32(i32 21, float %4564)  ; Exp(value)
  %4566 = fmul fast float %4565, 7.500000e-01
  %4567 = fadd fast float %4550, %4554
  %4568 = fadd fast float %4557, %4560
  %4569 = fadd fast float %4563, %4566
  %4570 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.i32 %4570, 3
  %4572 = and i32 %4571, 8
  %4573 = icmp ne i32 %4572, 0
  %4574 = call float @dx.op.binary.f32(i32 35, float %4491, float %4464)  ; FMax(a,b)
  %4575 = call float @dx.op.binary.f32(i32 35, float %4492, float %4464)  ; FMax(a,b)
  %4576 = call float @dx.op.binary.f32(i32 35, float %4493, float %4464)  ; FMax(a,b)
  %4577 = call float @dx.op.dot3.f32(i32 55, float %4491, float %4492, float %4493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = select i1 %176, float %4464, float %4491
  %4579 = select i1 %176, float %4577, float %4492
  %4580 = select i1 %176, float 1.000000e+00, float %4493
  %4581 = select i1 %4573, float %4574, float %4578
  %4582 = select i1 %4573, float %4575, float %4579
  %4583 = select i1 %4573, float %4576, float %4580
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.CBufRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.CBufRet.f32 %4584, 2
  %4588 = fadd fast float %4585, %134
  %4589 = fadd fast float %4586, %135
  %4590 = fadd fast float %4587, %136
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.CBufRet.f32 %4591, 1
  %4594 = fsub fast float %4588, %4592
  %4595 = fsub fast float %4589, %4593
  %4596 = fmul fast float %4594, %4594
  %4597 = fmul fast float %4595, %4595
  %4598 = fadd fast float %4596, %4597
  %4599 = call float @dx.op.unary.f32(i32 24, float %4598)  ; Sqrt(value)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4591, 2
  %4601 = fcmp fast olt float %4599, %4600
  br i1 %4601, label %4602, label %4669

; <label>:4602                                    ; preds = %4522
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 0
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.CBufRet.f32 %4603, 1
  %4610 = extractvalue %dx.types.CBufRet.f32 %4605, 1
  %4611 = extractvalue %dx.types.CBufRet.f32 %4607, 1
  %4612 = extractvalue %dx.types.CBufRet.f32 %4603, 3
  %4613 = extractvalue %dx.types.CBufRet.f32 %4605, 3
  %4614 = extractvalue %dx.types.CBufRet.f32 %4607, 3
  %4615 = fadd fast float %4612, %4588
  %4616 = fadd fast float %4613, %4589
  %4617 = fadd fast float %4614, %4590
  %4618 = fmul fast float %4615, %4604
  %4619 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4606, float %4618)  ; FMad(a,b,c)
  %4620 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4608, float %4619)  ; FMad(a,b,c)
  %4621 = fmul fast float %4615, %4609
  %4622 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4610, float %4621)  ; FMad(a,b,c)
  %4623 = call float @dx.op.tertiary.f32(i32 46, float %4617, float %4611, float %4622)  ; FMad(a,b,c)
  %4624 = fsub fast float %4620, %4612
  %4625 = fsub fast float %4623, %4613
  %4626 = fsub fast float %4624, %4592
  %4627 = fadd fast float %4626, %4600
  %4628 = fsub fast float %4625, %4593
  %4629 = fadd fast float %4628, %4600
  %4630 = extractvalue %dx.types.CBufRet.f32 %4591, 3
  %4631 = fmul fast float %4627, %4630
  %4632 = fmul fast float %4629, %4630
  %4633 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4634 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4635 = fsub fast float 1.000000e+00, %4633
  %4636 = fsub fast float 1.000000e+00, %4634
  %4637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4635, float %4636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = fcmp fast ugt float %4638, 0.000000e+00
  br i1 %4639, label %4640, label %4943

; <label>:4640                                    ; preds = %4602
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4643 = fmul fast float %4642, %4638
  %4644 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4645 = fadd fast float %4644, %4643
  %4646 = extractvalue %dx.types.CBufRet.f32 %4607, 2
  %4647 = fadd fast float %4645, %4614
  %4648 = fmul fast float %4620, %4608
  %4649 = call float @dx.op.tertiary.f32(i32 46, float %4623, float %4611, float %4648)  ; FMad(a,b,c)
  %4650 = call float @dx.op.tertiary.f32(i32 46, float %4647, float %4646, float %4649)  ; FMad(a,b,c)
  %4651 = fsub fast float %4650, %4614
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4654 = fsub fast float %4651, %4653
  %4655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4635, float %4636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4656 = extractvalue %dx.types.ResRet.f32 %4655, 0
  %4657 = extractvalue %dx.types.ResRet.f32 %4655, 1
  %4658 = extractvalue %dx.types.ResRet.f32 %4655, 2
  %4659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4635, float %4636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.ResRet.f32 %4659, 1
  %4662 = extractvalue %dx.types.ResRet.f32 %4659, 2
  %4663 = fadd fast float %4660, %4656
  %4664 = fmul fast float %4663, 0x3F847AE140000000
  %4665 = fadd fast float %4661, %4657
  %4666 = fmul fast float %4665, 0x3F847AE140000000
  %4667 = fadd fast float %4662, %4658
  %4668 = fmul fast float %4667, 0x3F847AE140000000
  br label %4943

; <label>:4669                                    ; preds = %4522
  %4670 = and i32 %152, 1
  %4671 = icmp eq i32 %4670, 0
  br i1 %4671, label %4943, label %4672

; <label>:4672                                    ; preds = %4669
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 0
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 0
  %4677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.f32 %4677, 0
  %4679 = extractvalue %dx.types.CBufRet.f32 %4673, 1
  %4680 = extractvalue %dx.types.CBufRet.f32 %4675, 1
  %4681 = extractvalue %dx.types.CBufRet.f32 %4677, 1
  %4682 = extractvalue %dx.types.CBufRet.f32 %4673, 3
  %4683 = extractvalue %dx.types.CBufRet.f32 %4675, 3
  %4684 = extractvalue %dx.types.CBufRet.f32 %4677, 3
  %4685 = fadd fast float %4682, %4588
  %4686 = fadd fast float %4683, %4589
  %4687 = fadd fast float %4684, %4590
  %4688 = fmul fast float %4685, %4674
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %4686, float %4676, float %4688)  ; FMad(a,b,c)
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %4687, float %4678, float %4689)  ; FMad(a,b,c)
  %4691 = fmul fast float %4685, %4679
  %4692 = call float @dx.op.tertiary.f32(i32 46, float %4686, float %4680, float %4691)  ; FMad(a,b,c)
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %4687, float %4681, float %4692)  ; FMad(a,b,c)
  %4694 = fsub fast float %4690, %4682
  %4695 = fsub fast float %4693, %4683
  %4696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4697 = extractvalue %dx.types.CBufRet.f32 %4696, 0
  %4698 = extractvalue %dx.types.CBufRet.f32 %4696, 1
  %4699 = extractvalue %dx.types.CBufRet.f32 %4696, 2
  %4700 = extractvalue %dx.types.CBufRet.f32 %4696, 3
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4703 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.i32 %4703, 0
  %4705 = extractvalue %dx.types.CBufRet.i32 %4703, 1
  %4706 = udiv i32 %4705, %4704
  %4707 = fsub fast float %4694, %4697
  %4708 = fsub fast float %4695, %4698
  %4709 = call float @dx.op.binary.f32(i32 35, float %4707, float 0.000000e+00)  ; FMax(a,b)
  %4710 = call float @dx.op.binary.f32(i32 35, float %4708, float 0.000000e+00)  ; FMax(a,b)
  %4711 = call float @dx.op.binary.f32(i32 36, float %4709, float %4699)  ; FMin(a,b)
  %4712 = call float @dx.op.binary.f32(i32 36, float %4710, float %4700)  ; FMin(a,b)
  %4713 = add i32 %4704, -1
  %4714 = add i32 %4706, -1
  %4715 = fmul fast float %4711, %4702
  %4716 = fmul fast float %4712, %4702
  %4717 = fptoui float %4715 to i32
  %4718 = fptoui float %4716 to i32
  %4719 = call i32 @dx.op.binary.i32(i32 40, i32 %4717, i32 %4713)  ; UMin(a,b)
  %4720 = call i32 @dx.op.binary.i32(i32 40, i32 %4718, i32 %4714)  ; UMin(a,b)
  %4721 = mul i32 %4720, %4704
  %4722 = add i32 %4721, %4719
  %4723 = shl i32 %4722, 2
  %4724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4723, i32 undef)  ; BufferLoad(srv,index,wot)
  %4725 = extractvalue %dx.types.ResRet.i32 %4724, 0
  %4726 = icmp eq i32 %4725, -1
  br i1 %4726, label %4943, label %4727

; <label>:4727                                    ; preds = %4672
  %4728 = mul i32 %4725, 148
  %4729 = add i32 %4728, 4
  %4730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4729, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.f32 %4730, 0
  %4732 = add i32 %4728, 8
  %4733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4732, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = add i32 %4728, 36
  %4736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4735, i32 undef)  ; BufferLoad(srv,index,wot)
  %4737 = extractvalue %dx.types.ResRet.f32 %4736, 0
  %4738 = add i32 %4728, 60
  %4739 = add i32 %4728, 92
  %4740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4739, i32 undef)  ; BufferLoad(srv,index,wot)
  %4741 = extractvalue %dx.types.ResRet.i32 %4740, 0
  %4742 = add i32 %4728, 116
  %4743 = fsub fast float %4694, %4731
  %4744 = fsub fast float %4695, %4734
  %4745 = fmul fast float %4702, %4743
  %4746 = fmul fast float %4702, %4744
  %4747 = call float @dx.op.unary.f32(i32 7, float %4745)  ; Saturate(value)
  %4748 = call float @dx.op.unary.f32(i32 7, float %4746)  ; Saturate(value)
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 2
  %4752 = call float @dx.op.unary.f32(i32 83, float %4747)  ; DerivCoarseX(value)
  %4753 = call float @dx.op.unary.f32(i32 83, float %4749)  ; DerivCoarseX(value)
  %4754 = call float @dx.op.unary.f32(i32 84, float %4747)  ; DerivCoarseY(value)
  %4755 = call float @dx.op.unary.f32(i32 84, float %4749)  ; DerivCoarseY(value)
  %4756 = fmul fast float %4752, %4751
  %4757 = fmul fast float %4753, %4751
  %4758 = fmul fast float %4754, %4751
  %4759 = fmul fast float %4755, %4751
  %4760 = call float @dx.op.dot2.f32(i32 54, float %4758, float %4759, float %4758, float %4759)  ; Dot2(ax,ay,bx,by)
  %4761 = call float @dx.op.dot2.f32(i32 54, float %4756, float %4757, float %4756, float %4757)  ; Dot2(ax,ay,bx,by)
  %4762 = call float @dx.op.binary.f32(i32 35, float %4761, float %4760)  ; FMax(a,b)
  %4763 = call float @dx.op.unary.f32(i32 23, float %4762)  ; Log(value)
  %4764 = fmul fast float %4763, 5.000000e-01
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 1
  %4767 = fadd fast float %4766, %4764
  %4768 = call float @dx.op.binary.f32(i32 35, float %4767, float 0.000000e+00)  ; FMax(a,b)
  %4769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4770 = extractvalue %dx.types.CBufRet.f32 %4769, 3
  %4771 = fadd fast float %4770, %4768
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 3
  %4774 = fadd fast float %4771, %4773
  %4775 = add i32 %4741, 0
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4776, i32 0)  ; GetDimensions(handle,mipLevel)
  %4778 = extractvalue %dx.types.Dimensions %4777, 0
  %4779 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4778)  ; FirstbitLo(value)
  %4780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.i32 %4780, 1
  %4782 = sub nsw i32 %4781, %4779
  %4783 = sitofp i32 %4782 to float
  %4784 = fsub fast float %4774, %4783
  %4785 = call float @dx.op.binary.f32(i32 35, float %4784, float 0.000000e+00)  ; FMax(a,b)
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4776, %dx.types.Handle %27, float %4747, float %4749, float %4737, float undef, i32 0, i32 0, i32 undef, float %4785)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = fcmp ule float %4787, 0x3FE0101020000000
  %4789 = extractvalue %dx.types.CBufRet.i32 %4780, 0
  %4790 = and i32 %4789, 128
  %4791 = icmp ne i32 %4790, 0
  %4792 = and i1 %4788, %4791
  br i1 %4792, label %4943, label %4793

; <label>:4793                                    ; preds = %4727
  %4794 = add i32 %4728, 20
  %4795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4794, i32 undef)  ; BufferLoad(srv,index,wot)
  %4796 = extractvalue %dx.types.ResRet.f32 %4795, 0
  %4797 = add i32 %4728, 24
  %4798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4797, i32 undef)  ; BufferLoad(srv,index,wot)
  %4799 = extractvalue %dx.types.ResRet.f32 %4798, 0
  %4800 = add i32 %4728, 40
  %4801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4800, i32 undef)  ; BufferLoad(srv,index,wot)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = add i32 %4728, 96
  %4804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4803, i32 undef)  ; BufferLoad(srv,index,wot)
  %4805 = extractvalue %dx.types.ResRet.i32 %4804, 0
  %4806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4806, 2
  %4808 = fmul fast float %4807, %4747
  %4809 = fmul fast float %4807, %4749
  %4810 = extractvalue %dx.types.CBufRet.f32 %4806, 3
  %4811 = fadd fast float %4808, %4810
  %4812 = fadd fast float %4809, %4810
  %4813 = add i32 %4805, 0
  %4814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4813, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4815 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4814, i32 0)  ; GetDimensions(handle,mipLevel)
  %4816 = extractvalue %dx.types.Dimensions %4815, 0
  %4817 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4816)  ; FirstbitLo(value)
  %4818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.i32 %4818, 1
  %4820 = sub nsw i32 %4819, %4817
  %4821 = sitofp i32 %4820 to float
  %4822 = fsub fast float %4771, %4821
  %4823 = call float @dx.op.binary.f32(i32 35, float %4822, float 0.000000e+00)  ; FMax(a,b)
  %4824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4814, %dx.types.Handle %27, float %4811, float %4812, float %4802, float undef, i32 0, i32 0, i32 undef, float %4823)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4825 = extractvalue %dx.types.ResRet.f32 %4824, 0
  %4826 = fmul fast float %4825, %4796
  %4827 = fadd fast float %4826, %4799
  %4828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4829 = extractvalue %dx.types.CBufRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.CBufRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.CBufRet.f32 %4828, 2
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 3
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 3
  %4836 = extractvalue %dx.types.CBufRet.f32 %4828, 3
  %4837 = fadd fast float %4833, %4694
  %4838 = fadd fast float %4835, %4695
  %4839 = fadd fast float %4827, %4836
  %4840 = fmul fast float %4837, %4829
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %4838, float %4830, float %4840)  ; FMad(a,b,c)
  %4842 = call float @dx.op.tertiary.f32(i32 46, float %4839, float %4831, float %4841)  ; FMad(a,b,c)
  %4843 = fsub fast float %4842, %4836
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 2
  %4846 = fsub fast float %4843, %4845
  %4847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.i32 %4847, 0
  %4849 = call i32 @dx.op.binary.i32(i32 40, i32 %4725, i32 %4848)  ; UMin(a,b)
  %4850 = mul i32 %4849, 36
  %4851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4850, i32 undef)  ; BufferLoad(srv,index,wot)
  %4852 = extractvalue %dx.types.ResRet.i32 %4851, 0
  %4853 = add i32 %4850, 4
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = fmul fast float %4855, %4747
  %4857 = fmul fast float %4855, %4749
  %4858 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4859 = fadd fast float %4856, %4858
  %4860 = fadd fast float %4857, %4858
  %4861 = icmp eq i32 %4852, 0
  br i1 %4861, label %4930, label %4862

; <label>:4862                                    ; preds = %4793
  br label %4863

; <label>:4863                                    ; preds = %4920, %4862
  %4864 = phi float [ %4921, %4920 ], [ 0.000000e+00, %4862 ]
  %4865 = phi float [ %4922, %4920 ], [ 0.000000e+00, %4862 ]
  %4866 = phi float [ %4923, %4920 ], [ 0.000000e+00, %4862 ]
  %4867 = phi float [ %4924, %4920 ], [ 0.000000e+00, %4862 ]
  %4868 = phi float [ %4925, %4920 ], [ 0.000000e+00, %4862 ]
  %4869 = phi float [ %4926, %4920 ], [ 0.000000e+00, %4862 ]
  %4870 = phi i32 [ %4927, %4920 ], [ 0, %4862 ]
  %4871 = shl i32 %4870, 2
  %4872 = add i32 %4738, %4871
  %4873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4872, i32 undef)  ; BufferLoad(srv,index,wot)
  %4874 = extractvalue %dx.types.ResRet.f32 %4873, 0
  %4875 = add i32 %4742, %4871
  %4876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4875, i32 undef)  ; BufferLoad(srv,index,wot)
  %4877 = extractvalue %dx.types.ResRet.i32 %4876, 0
  %4878 = add i32 %4877, 0
  %4879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4878, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4880 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4879, i32 0)  ; GetDimensions(handle,mipLevel)
  %4881 = extractvalue %dx.types.Dimensions %4880, 0
  %4882 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4881)  ; FirstbitLo(value)
  %4883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.i32 %4883, 1
  %4885 = sub nsw i32 %4884, %4882
  %4886 = sitofp i32 %4885 to float
  %4887 = fsub fast float %4771, %4886
  %4888 = call float @dx.op.binary.f32(i32 35, float %4887, float 0.000000e+00)  ; FMax(a,b)
  %4889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4879, %dx.types.Handle %27, float %4859, float %4860, float %4874, float undef, i32 0, i32 0, i32 undef, float %4888)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4890 = extractvalue %dx.types.ResRet.f32 %4889, 0
  %4891 = fcmp fast ogt float %4890, 0.000000e+00
  br i1 %4891, label %4892, label %4920

; <label>:4892                                    ; preds = %4863
  %4893 = add i32 %4853, %4871
  %4894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4893, i32 undef)  ; BufferLoad(srv,index,wot)
  %4895 = extractvalue %dx.types.ResRet.i32 %4894, 0
  %4896 = and i32 %4895, 32767
  %4897 = mul nuw nsw i32 %4896, 928
  %4898 = add nuw nsw i32 %4897, 48
  %4899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4898, i32 undef)  ; BufferLoad(srv,index,wot)
  %4900 = extractvalue %dx.types.ResRet.f32 %4899, 0
  %4901 = extractvalue %dx.types.ResRet.f32 %4899, 1
  %4902 = extractvalue %dx.types.ResRet.f32 %4899, 2
  %4903 = add nuw nsw i32 %4897, 60
  %4904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4903, i32 undef)  ; BufferLoad(srv,index,wot)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.ResRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.ResRet.f32 %4904, 2
  %4908 = fmul fast float %4900, %4890
  %4909 = fmul fast float %4901, %4890
  %4910 = fmul fast float %4902, %4890
  %4911 = fadd fast float %4908, %4864
  %4912 = fadd fast float %4909, %4865
  %4913 = fadd fast float %4910, %4866
  %4914 = fmul fast float %4905, %4890
  %4915 = fmul fast float %4906, %4890
  %4916 = fmul fast float %4907, %4890
  %4917 = fadd fast float %4914, %4867
  %4918 = fadd fast float %4915, %4868
  %4919 = fadd fast float %4916, %4869
  br label %4920

; <label>:4920                                    ; preds = %4892, %4863
  %4921 = phi float [ %4911, %4892 ], [ %4864, %4863 ]
  %4922 = phi float [ %4912, %4892 ], [ %4865, %4863 ]
  %4923 = phi float [ %4913, %4892 ], [ %4866, %4863 ]
  %4924 = phi float [ %4917, %4892 ], [ %4867, %4863 ]
  %4925 = phi float [ %4918, %4892 ], [ %4868, %4863 ]
  %4926 = phi float [ %4919, %4892 ], [ %4869, %4863 ]
  %4927 = add nuw i32 %4870, 1
  %4928 = icmp eq i32 %4927, %4852
  br i1 %4928, label %4929, label %4863

; <label>:4929                                    ; preds = %4920
  br label %4930

; <label>:4930                                    ; preds = %4929, %4793
  %4931 = phi float [ 0.000000e+00, %4793 ], [ %4921, %4929 ]
  %4932 = phi float [ 0.000000e+00, %4793 ], [ %4922, %4929 ]
  %4933 = phi float [ 0.000000e+00, %4793 ], [ %4923, %4929 ]
  %4934 = phi float [ 0.000000e+00, %4793 ], [ %4924, %4929 ]
  %4935 = phi float [ 0.000000e+00, %4793 ], [ %4925, %4929 ]
  %4936 = phi float [ 0.000000e+00, %4793 ], [ %4926, %4929 ]
  %4937 = fadd fast float %4934, %4931
  %4938 = fmul fast float %4937, 0x3F847AE140000000
  %4939 = fadd fast float %4935, %4932
  %4940 = fmul fast float %4939, 0x3F847AE140000000
  %4941 = fadd fast float %4936, %4933
  %4942 = fmul fast float %4941, 0x3F847AE140000000
  br label %4943

; <label>:4943                                    ; preds = %4930, %4727, %4672, %4669, %4640, %4602
  %4944 = phi float [ %4654, %4640 ], [ -1.310720e+05, %4602 ], [ %4846, %4930 ], [ -1.310720e+05, %4672 ], [ -1.310720e+05, %4727 ], [ -1.310720e+05, %4669 ]
  %4945 = phi float [ %4664, %4640 ], [ 0.000000e+00, %4602 ], [ %4938, %4930 ], [ 0.000000e+00, %4672 ], [ 0.000000e+00, %4727 ], [ 0.000000e+00, %4669 ]
  %4946 = phi float [ %4666, %4640 ], [ 0.000000e+00, %4602 ], [ %4940, %4930 ], [ 0.000000e+00, %4672 ], [ 0.000000e+00, %4727 ], [ 0.000000e+00, %4669 ]
  %4947 = phi float [ %4668, %4640 ], [ 0.000000e+00, %4602 ], [ %4942, %4930 ], [ 0.000000e+00, %4672 ], [ 0.000000e+00, %4727 ], [ 0.000000e+00, %4669 ]
  %4948 = phi i1 [ true, %4640 ], [ false, %4602 ], [ true, %4930 ], [ false, %4672 ], [ false, %4727 ], [ false, %4669 ]
  %4949 = and i32 %152, 3
  %4950 = icmp eq i32 %4949, 1
  %4951 = select i1 %4950, float 1.000000e+00, float 0.000000e+00
  %4952 = fsub fast float %4944, %136
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = select i1 %4948, float %4953, float 1.000000e+00
  %4955 = fmul fast float %4954, %4951
  %4956 = icmp eq i32 %4949, 3
  %4957 = select i1 %4956, float 1.000000e+00, float %4955
  %4958 = call float @dx.op.binary.f32(i32 35, float %4479, float %4957)  ; FMax(a,b)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = fcmp fast une float %4959, 0.000000e+00
  %4961 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4962 = call float @dx.op.unary.f32(i32 25, float %4961)  ; Rsqrt(value)
  br i1 %4960, label %4970, label %4963

; <label>:4963                                    ; preds = %4943
  %4964 = fmul fast float %4962, %134
  %4965 = fmul fast float %4962, %135
  %4966 = fmul fast float %4962, %136
  %4967 = fsub fast float -0.000000e+00, %4964
  %4968 = fsub fast float -0.000000e+00, %4965
  %4969 = fsub fast float -0.000000e+00, %4966
  br label %5138

; <label>:4970                                    ; preds = %4943
  %4971 = fmul fast float %134, %4962
  %4972 = fsub fast float -0.000000e+00, %4971
  %4973 = fmul fast float %135, %4962
  %4974 = fsub fast float -0.000000e+00, %4973
  %4975 = fmul fast float %136, %4962
  %4976 = fsub fast float -0.000000e+00, %4975
  %4977 = call float @dx.op.dot3.f32(i32 55, float %4972, float %4974, float %4976, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4978 = fmul fast float %4959, 2.500000e+00
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fmul fast float %4959, 0x4013FFFFE0000000
  %4981 = fadd fast float %4980, 0xBFFFFFFFE0000000
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4959, 0x4004000020000000
  %4984 = fadd fast float %4983, 0xBFF8000040000000
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4987 = fmul fast float %4482, 1.000000e+01
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4988, 2.000000e+00
  %4990 = fsub fast float 3.000000e+00, %4989
  %4991 = fmul fast float %4988, %4988
  %4992 = fmul fast float %4991, %4990
  %4993 = fsub fast float 1.000000e+00, %4992
  %4994 = fsub fast float 0x3FE3333340000000, %4503
  %4995 = fmul fast float %4994, 0x400AAAAAA0000000
  %4996 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4997 = fmul fast float %4993, %4996
  %4998 = fmul fast float %4581, 0x3FEA2B8620000000
  %4999 = fmul fast float %4582, 0x3FEA2B8620000000
  %5000 = fmul fast float %4583, 0x3FEA2B8620000000
  %5001 = fadd fast float %4998, 0x3FC81DFBA0000000
  %5002 = fmul fast float %5001, %4581
  %5003 = fadd fast float %5002, 0x3F910E6020000000
  %5004 = fadd fast float %4999, 0x3FC81DFBA0000000
  %5005 = fmul fast float %5004, %4582
  %5006 = fadd fast float %5005, 0x3F910E6020000000
  %5007 = fadd fast float %5000, 0x3FC81DFBA0000000
  %5008 = fmul fast float %5007, %4583
  %5009 = fadd fast float %5008, 0x3F910E6020000000
  %5010 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5011 = call float @dx.op.unary.f32(i32 7, float %5006)  ; Saturate(value)
  %5012 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5013 = fsub fast float %5010, %4581
  %5014 = fsub fast float %5011, %4582
  %5015 = fsub fast float %5012, %4583
  %5016 = fmul fast float %5013, %4986
  %5017 = fmul fast float %5016, %4997
  %5018 = fmul fast float %5014, %4986
  %5019 = fmul fast float %5018, %4997
  %5020 = fmul fast float %5015, %4986
  %5021 = fmul fast float %5020, %4997
  %5022 = fadd fast float %5017, %4581
  %5023 = fadd fast float %5019, %4582
  %5024 = fadd fast float %5021, %4583
  %5025 = fmul fast float %4476, %4476
  %5026 = fmul fast float %5025, %5025
  %5027 = fadd fast float %4982, 1.000000e+00
  %5028 = fsub fast float %5027, %4997
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5030 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5032 = fsub fast float 1.000000e+00, %5026
  %5033 = call float @dx.op.binary.f32(i32 36, float %5029, float %5032)  ; FMin(a,b)
  %5034 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %5035 = call float @dx.op.binary.f32(i32 35, float %5033, float %5034)  ; FMax(a,b)
  %5036 = fadd fast float %5031, 0xBFE4CCCCC0000000
  %5037 = fmul fast float %5036, 0x4006DB6DA0000000
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = fmul fast float %5038, 2.000000e+00
  %5040 = fsub fast float 3.000000e+00, %5039
  %5041 = bitcast float %4500 to i32
  %5042 = ashr i32 %5041, 1
  %5043 = add nsw i32 %5042, 532487669
  %5044 = bitcast i32 %5043 to float
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = bitcast float %5045 to i32
  %5047 = sub nsw i32 2129859010, %5046
  %5048 = bitcast i32 %5047 to float
  %5049 = fmul fast float %5048, 2.000000e+00
  %5050 = bitcast float %4501 to i32
  %5051 = ashr i32 %5050, 1
  %5052 = add nsw i32 %5051, 532487669
  %5053 = bitcast i32 %5052 to float
  %5054 = fsub fast float 1.000000e+00, %5053
  %5055 = bitcast float %5054 to i32
  %5056 = sub nsw i32 2129859010, %5055
  %5057 = bitcast i32 %5056 to float
  %5058 = fmul fast float %5057, 2.000000e+00
  %5059 = bitcast float %4502 to i32
  %5060 = ashr i32 %5059, 1
  %5061 = add nsw i32 %5060, 532487669
  %5062 = bitcast i32 %5061 to float
  %5063 = fsub fast float 1.000000e+00, %5062
  %5064 = bitcast float %5063 to i32
  %5065 = sub nsw i32 2129859010, %5064
  %5066 = bitcast i32 %5065 to float
  %5067 = fmul fast float %5066, 2.000000e+00
  %5068 = fsub fast float 0x4002A9FBE0000000, %5049
  %5069 = fadd fast float %5049, 0x3FD54FDF00000000
  %5070 = bitcast float %5069 to i32
  %5071 = sub nsw i32 2129859010, %5070
  %5072 = bitcast i32 %5071 to float
  %5073 = fmul fast float %5072, %5068
  %5074 = fmul fast float %5073, %5073
  %5075 = fsub fast float 0x4002A9FBE0000000, %5058
  %5076 = fadd fast float %5058, 0x3FD54FDF00000000
  %5077 = bitcast float %5076 to i32
  %5078 = sub nsw i32 2129859010, %5077
  %5079 = bitcast i32 %5078 to float
  %5080 = fmul fast float %5079, %5075
  %5081 = fmul fast float %5080, %5080
  %5082 = fsub fast float 0x4002A9FBE0000000, %5067
  %5083 = fadd fast float %5067, 0x3FD54FDF00000000
  %5084 = bitcast float %5083 to i32
  %5085 = sub nsw i32 2129859010, %5084
  %5086 = bitcast i32 %5085 to float
  %5087 = fmul fast float %5086, %5082
  %5088 = fmul fast float %5087, %5087
  %5089 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5074)  ; FMax(a,b)
  %5090 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5081)  ; FMax(a,b)
  %5091 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5088)  ; FMax(a,b)
  %5092 = fsub fast float 1.000000e+00, %4977
  %5093 = fadd fast float %5092, %4993
  %5094 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5095 = fsub fast float 1.000000e+00, %4957
  %5096 = fmul fast float %5035, %5095
  %5097 = fmul fast float %5038, %5038
  %5098 = fmul fast float %5097, %5096
  %5099 = fmul fast float %5098, %5040
  %5100 = fmul fast float %5095, 0xBFE99999A0000000
  %5101 = fmul fast float %5100, %4986
  %5102 = fmul fast float %5101, %4997
  %5103 = fadd fast float %5102, 1.000000e+00
  %5104 = fadd fast float %4503, -1.000000e+00
  %5105 = fmul fast float %5103, %5104
  %5106 = fadd fast float %5105, 1.000000e+00
  %5107 = fsub fast float %5089, %4500
  %5108 = fsub fast float %5090, %4501
  %5109 = fsub fast float %5091, %4502
  %5110 = fmul fast float %5099, %5107
  %5111 = fmul fast float %5099, %5108
  %5112 = fmul fast float %5099, %5109
  %5113 = fadd fast float %5110, %4500
  %5114 = fadd fast float %5111, %4501
  %5115 = fadd fast float %5112, %4502
  %5116 = fsub fast float %84, %4461
  %5117 = fsub fast float %86, %4462
  %5118 = fsub fast float %88, %4463
  %5119 = fmul fast float %5099, %5116
  %5120 = fmul fast float %5099, %5117
  %5121 = fmul fast float %5099, %5118
  %5122 = fadd fast float %5119, %4461
  %5123 = fadd fast float %5120, %4462
  %5124 = fadd fast float %5121, %4463
  %5125 = fmul fast float %5099, %5094
  %5126 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fmul fast float %5125, %5127
  %5129 = fadd fast float %5128, %5126
  %5130 = fsub fast float 1.000000e+00, %4476
  %5131 = fmul fast float %5099, %5130
  %5132 = fadd fast float %5131, %4476
  %5133 = call float @dx.op.dot3.f32(i32 55, float %5122, float %5123, float %5124, float %5122, float %5123, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = call float @dx.op.unary.f32(i32 25, float %5133)  ; Rsqrt(value)
  %5135 = fmul fast float %5122, %5134
  %5136 = fmul fast float %5123, %5134
  %5137 = fmul fast float %5124, %5134
  br label %5138

; <label>:5138                                    ; preds = %4970, %4963
  %5139 = phi float [ %4969, %4963 ], [ %4976, %4970 ]
  %5140 = phi float [ %4968, %4963 ], [ %4974, %4970 ]
  %5141 = phi float [ %4967, %4963 ], [ %4972, %4970 ]
  %5142 = phi float [ %4966, %4963 ], [ %4975, %4970 ]
  %5143 = phi float [ %4965, %4963 ], [ %4973, %4970 ]
  %5144 = phi float [ %4964, %4963 ], [ %4971, %4970 ]
  %5145 = phi float [ %4500, %4963 ], [ %5113, %4970 ]
  %5146 = phi float [ %4501, %4963 ], [ %5114, %4970 ]
  %5147 = phi float [ %4502, %4963 ], [ %5115, %4970 ]
  %5148 = phi float [ %4461, %4963 ], [ %5135, %4970 ]
  %5149 = phi float [ %4462, %4963 ], [ %5136, %4970 ]
  %5150 = phi float [ %4463, %4963 ], [ %5137, %4970 ]
  %5151 = phi float [ %4581, %4963 ], [ %5022, %4970 ]
  %5152 = phi float [ %4582, %4963 ], [ %5023, %4970 ]
  %5153 = phi float [ %4583, %4963 ], [ %5024, %4970 ]
  %5154 = phi float [ %4503, %4963 ], [ %5129, %4970 ]
  %5155 = phi float [ %4476, %4963 ], [ %5132, %4970 ]
  %5156 = select i1 %176, float 0.000000e+00, float %5147
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5141, float %5140, float %5139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = call float @dx.op.dot3.f32(i32 55, float %5144, float %5143, float %5142, float %5148, float %5149, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %5160 = fmul fast float %5159, 2.000000e+00
  %5161 = fmul fast float %5160, %5148
  %5162 = fmul fast float %5160, %5149
  %5163 = fmul fast float %5160, %5150
  %5164 = fsub fast float %5144, %5161
  %5165 = fsub fast float %5143, %5162
  %5166 = fsub fast float %5142, %5163
  %5167 = call float @dx.op.binary.f32(i32 36, float %5155, float 1.000000e+00)  ; FMin(a,b)
  %5168 = fsub fast float 1.000000e+00, %5155
  %5169 = bitcast float %5168 to i32
  %5170 = sub nsw i32 2129859010, %5169
  %5171 = bitcast i32 %5170 to float
  %5172 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5173 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = fcmp fast oeq float %5173, 0.000000e+00
  %5175 = fcmp fast oeq float %5172, 0.000000e+00
  %5176 = or i1 %5175, %5174
  br i1 %5176, label %5206, label %5177

; <label>:5177                                    ; preds = %5138
  %5178 = fsub fast float -0.000000e+00, %55
  %5179 = fsub fast float -0.000000e+00, %53
  %5180 = call float @dx.op.unary.f32(i32 24, float %5173)  ; Sqrt(value)
  %5181 = fdiv fast float %5180, %5172
  %5182 = fcmp fast ogt float %5181, 0x3FFB6F8900000000
  %5183 = select i1 %5182, float 0x3FFB6F8900000000, float %5181
  %5184 = fmul fast float %5183, 0x3FE8A23460000000
  %5185 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5186 = call float @dx.op.binary.f32(i32 35, float %5183, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5187 = fmul fast float %5185, %5172
  %5188 = fmul fast float %5186, 0x3FF279A740000000
  %5189 = fadd fast float %5188, -1.000000e+00
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5178, float %5179, float %54, float %5178, float %5179, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = call float @dx.op.unary.f32(i32 25, float %5190)  ; Rsqrt(value)
  %5192 = fmul fast float %5191, %5178
  %5193 = fmul fast float %5191, %5179
  %5194 = fmul fast float %5191, %54
  %5195 = fmul fast float %5189, %5189
  %5196 = fsub fast float 1.000000e+00, %5195
  %5197 = fmul fast float %5186, 0x40005F8BE0000000
  %5198 = fsub fast float 0x400C5BF8A0000000, %5197
  %5199 = fdiv fast float %5187, %5198
  %5200 = fmul fast float %5199, 0x3FEE31C3C0000000
  %5201 = fmul fast float %5200, %5196
  %5202 = fmul fast float %5186, 0x3FDACB7480000000
  %5203 = fadd fast float %5202, 0xBFD7347680000000
  %5204 = fmul fast float %5203, %5199
  %5205 = fmul fast float %5204, %5196
  br label %5206

; <label>:5206                                    ; preds = %5177, %5138
  %5207 = phi float [ %5192, %5177 ], [ 0.000000e+00, %5138 ]
  %5208 = phi float [ %5193, %5177 ], [ 0.000000e+00, %5138 ]
  %5209 = phi float [ %5194, %5177 ], [ 0.000000e+00, %5138 ]
  %5210 = phi float [ %5201, %5177 ], [ 0.000000e+00, %5138 ]
  %5211 = phi float [ %5205, %5177 ], [ 0.000000e+00, %5138 ]
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5208, float %5209, float %5148, float %5149, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = fmul fast float %5212, 0x3FDF454380000000
  %5214 = fmul fast float %5212, %5212
  %5215 = fmul fast float %5214, 0x3FEE471020000000
  %5216 = fadd fast float %5215, 0xBFD42F6020000000
  %5217 = fmul fast float %5172, 0x3FD20DD760000000
  %5218 = fmul fast float %5216, %5211
  %5219 = fadd fast float %5218, %5217
  %5220 = fmul fast float %5213, %5210
  %5221 = fadd fast float %5219, %5220
  %5222 = fsub fast float %5219, %5220
  %5223 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5208, float %5209, float %5164, float %5165, float %5166)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = fmul fast float %5223, 0x3FDF454380000000
  %5225 = fmul fast float %5223, %5223
  %5226 = fmul fast float %5225, 0x3FEE471020000000
  %5227 = fadd fast float %5226, 0xBFD42F6020000000
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5210, float %5211, float 0x3FD20DD760000000, float %5224, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %5230 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = fcmp fast oeq float %5230, 0.000000e+00
  %5232 = fcmp fast oeq float %5229, 0.000000e+00
  %5233 = or i1 %5232, %5231
  br i1 %5233, label %5263, label %5234

; <label>:5234                                    ; preds = %5206
  %5235 = fsub fast float -0.000000e+00, %51
  %5236 = fsub fast float -0.000000e+00, %49
  %5237 = call float @dx.op.unary.f32(i32 24, float %5230)  ; Sqrt(value)
  %5238 = fdiv fast float %5237, %5229
  %5239 = fcmp fast ogt float %5238, 0x3FFB6F8900000000
  %5240 = select i1 %5239, float 0x3FFB6F8900000000, float %5238
  %5241 = fmul fast float %5240, 0x3FE8A23460000000
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = call float @dx.op.binary.f32(i32 35, float %5240, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5244 = fmul fast float %5242, %5229
  %5245 = fmul fast float %5243, 0x3FF279A740000000
  %5246 = fadd fast float %5245, -1.000000e+00
  %5247 = call float @dx.op.dot3.f32(i32 55, float %5235, float %5236, float %50, float %5235, float %5236, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %5248 = call float @dx.op.unary.f32(i32 25, float %5247)  ; Rsqrt(value)
  %5249 = fmul fast float %5248, %5235
  %5250 = fmul fast float %5248, %5236
  %5251 = fmul fast float %5248, %50
  %5252 = fmul fast float %5246, %5246
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = fmul fast float %5243, 0x40005F8BE0000000
  %5255 = fsub fast float 0x400C5BF8A0000000, %5254
  %5256 = fdiv fast float %5244, %5255
  %5257 = fmul fast float %5256, 0x3FEE31C3C0000000
  %5258 = fmul fast float %5257, %5253
  %5259 = fmul fast float %5243, 0x3FDACB7480000000
  %5260 = fadd fast float %5259, 0xBFD7347680000000
  %5261 = fmul fast float %5260, %5256
  %5262 = fmul fast float %5261, %5253
  br label %5263

; <label>:5263                                    ; preds = %5234, %5206
  %5264 = phi float [ %5249, %5234 ], [ 0.000000e+00, %5206 ]
  %5265 = phi float [ %5250, %5234 ], [ 0.000000e+00, %5206 ]
  %5266 = phi float [ %5251, %5234 ], [ 0.000000e+00, %5206 ]
  %5267 = phi float [ %5258, %5234 ], [ 0.000000e+00, %5206 ]
  %5268 = phi float [ %5262, %5234 ], [ 0.000000e+00, %5206 ]
  %5269 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5148, float %5149, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %5270 = fmul fast float %5269, 0x3FDF454380000000
  %5271 = fmul fast float %5269, %5269
  %5272 = fmul fast float %5271, 0x3FEE471020000000
  %5273 = fadd fast float %5272, 0xBFD42F6020000000
  %5274 = fmul fast float %5229, 0x3FD20DD760000000
  %5275 = fmul fast float %5273, %5268
  %5276 = fadd fast float %5275, %5274
  %5277 = fmul fast float %5270, %5267
  %5278 = fadd fast float %5276, %5277
  %5279 = fsub fast float %5276, %5277
  %5280 = call float @dx.op.dot3.f32(i32 55, float %5264, float %5265, float %5266, float %5164, float %5165, float %5166)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = fmul fast float %5280, 0x3FDF454380000000
  %5282 = fmul fast float %5280, %5280
  %5283 = fmul fast float %5282, 0x3FEE471020000000
  %5284 = fadd fast float %5283, 0xBFD42F6020000000
  %5285 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5267, float %5268, float 0x3FD20DD760000000, float %5281, float %5284)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %5287 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = fcmp fast oeq float %5287, 0.000000e+00
  %5289 = fcmp fast oeq float %5286, 0.000000e+00
  %5290 = or i1 %5289, %5288
  br i1 %5290, label %5320, label %5291

; <label>:5291                                    ; preds = %5263
  %5292 = fsub fast float -0.000000e+00, %47
  %5293 = fsub fast float -0.000000e+00, %45
  %5294 = call float @dx.op.unary.f32(i32 24, float %5287)  ; Sqrt(value)
  %5295 = fdiv fast float %5294, %5286
  %5296 = fcmp fast ogt float %5295, 0x3FFB6F8900000000
  %5297 = select i1 %5296, float 0x3FFB6F8900000000, float %5295
  %5298 = fmul fast float %5297, 0x3FE8A23460000000
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = call float @dx.op.binary.f32(i32 35, float %5297, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5301 = fmul fast float %5299, %5286
  %5302 = fmul fast float %5300, 0x3FF279A740000000
  %5303 = fadd fast float %5302, -1.000000e+00
  %5304 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %46, float %5292, float %5293, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %5305 = call float @dx.op.unary.f32(i32 25, float %5304)  ; Rsqrt(value)
  %5306 = fmul fast float %5305, %5292
  %5307 = fmul fast float %5305, %5293
  %5308 = fmul fast float %5305, %46
  %5309 = fmul fast float %5303, %5303
  %5310 = fsub fast float 1.000000e+00, %5309
  %5311 = fmul fast float %5300, 0x40005F8BE0000000
  %5312 = fsub fast float 0x400C5BF8A0000000, %5311
  %5313 = fdiv fast float %5301, %5312
  %5314 = fmul fast float %5313, 0x3FEE31C3C0000000
  %5315 = fmul fast float %5314, %5310
  %5316 = fmul fast float %5300, 0x3FDACB7480000000
  %5317 = fadd fast float %5316, 0xBFD7347680000000
  %5318 = fmul fast float %5317, %5313
  %5319 = fmul fast float %5318, %5310
  br label %5320

; <label>:5320                                    ; preds = %5291, %5263
  %5321 = phi float [ %5306, %5291 ], [ 0.000000e+00, %5263 ]
  %5322 = phi float [ %5307, %5291 ], [ 0.000000e+00, %5263 ]
  %5323 = phi float [ %5308, %5291 ], [ 0.000000e+00, %5263 ]
  %5324 = phi float [ %5315, %5291 ], [ 0.000000e+00, %5263 ]
  %5325 = phi float [ %5319, %5291 ], [ 0.000000e+00, %5263 ]
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5148, float %5149, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = fmul fast float %5326, 0x3FDF454380000000
  %5328 = fmul fast float %5326, %5326
  %5329 = fmul fast float %5328, 0x3FEE471020000000
  %5330 = fadd fast float %5329, 0xBFD42F6020000000
  %5331 = fmul fast float %5286, 0x3FD20DD760000000
  %5332 = fmul fast float %5330, %5325
  %5333 = fadd fast float %5332, %5331
  %5334 = fmul fast float %5327, %5324
  %5335 = fadd fast float %5333, %5334
  %5336 = fsub fast float %5333, %5334
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5321, float %5322, float %5323, float %5164, float %5165, float %5166)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = fmul fast float %5337, 0x3FDF454380000000
  %5339 = fmul fast float %5337, %5337
  %5340 = fmul fast float %5339, 0x3FEE471020000000
  %5341 = fadd fast float %5340, 0xBFD42F6020000000
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5324, float %5325, float 0x3FD20DD760000000, float %5338, float %5341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.binary.f32(i32 35, float %5221, float 0.000000e+00)  ; FMax(a,b)
  %5344 = call float @dx.op.binary.f32(i32 35, float %5278, float 0.000000e+00)  ; FMax(a,b)
  %5345 = call float @dx.op.binary.f32(i32 35, float %5335, float 0.000000e+00)  ; FMax(a,b)
  %5346 = call float @dx.op.binary.f32(i32 35, float %5222, float 0.000000e+00)  ; FMax(a,b)
  %5347 = call float @dx.op.binary.f32(i32 35, float %5279, float 0.000000e+00)  ; FMax(a,b)
  %5348 = call float @dx.op.binary.f32(i32 35, float %5336, float 0.000000e+00)  ; FMax(a,b)
  %5349 = call float @dx.op.binary.f32(i32 35, float %5228, float 0.000000e+00)  ; FMax(a,b)
  %5350 = call float @dx.op.binary.f32(i32 35, float %5285, float 0.000000e+00)  ; FMax(a,b)
  %5351 = call float @dx.op.binary.f32(i32 35, float %5342, float 0.000000e+00)  ; FMax(a,b)
  %5352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.f32 %5352, 0
  %5354 = call float @dx.op.binary.f32(i32 36, float %5151, float %5353)  ; FMin(a,b)
  %5355 = fsub fast float 1.000000e+00, %5167
  %5356 = fmul fast float %5354, %5355
  %5357 = fsub fast float 1.000000e+00, %5356
  %5358 = bitcast float %5357 to i32
  %5359 = sub nsw i32 2129859010, %5358
  %5360 = bitcast i32 %5359 to float
  %5361 = call float @dx.op.binary.f32(i32 36, float %5152, float %5353)  ; FMin(a,b)
  %5362 = fmul fast float %5361, %5355
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = bitcast float %5363 to i32
  %5365 = sub nsw i32 2129859010, %5364
  %5366 = bitcast i32 %5365 to float
  %5367 = call float @dx.op.binary.f32(i32 36, float %5153, float %5353)  ; FMin(a,b)
  %5368 = fmul fast float %5367, %5355
  %5369 = fsub fast float 1.000000e+00, %5368
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5343, %5167
  %5374 = fmul fast float %5373, %5360
  %5375 = fmul fast float %5344, %5167
  %5376 = fmul fast float %5375, %5366
  %5377 = fmul fast float %5345, %5167
  %5378 = fmul fast float %5377, %5372
  %5379 = call float @dx.op.binary.f32(i32 36, float %5145, float %5353)  ; FMin(a,b)
  %5380 = fmul fast float %5379, %5355
  %5381 = fsub fast float 1.000000e+00, %5380
  %5382 = bitcast float %5381 to i32
  %5383 = sub nsw i32 2129859010, %5382
  %5384 = bitcast i32 %5383 to float
  %5385 = call float @dx.op.binary.f32(i32 36, float %5146, float %5353)  ; FMin(a,b)
  %5386 = fmul fast float %5385, %5355
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = bitcast float %5387 to i32
  %5389 = sub nsw i32 2129859010, %5388
  %5390 = bitcast i32 %5389 to float
  %5391 = call float @dx.op.binary.f32(i32 36, float %5156, float %5353)  ; FMin(a,b)
  %5392 = fmul fast float %5391, %5355
  %5393 = fsub fast float 1.000000e+00, %5392
  %5394 = bitcast float %5393 to i32
  %5395 = sub nsw i32 2129859010, %5394
  %5396 = bitcast i32 %5395 to float
  %5397 = fmul fast float %5349, %5167
  %5398 = fmul fast float %5397, %5384
  %5399 = fmul fast float %5350, %5167
  %5400 = fmul fast float %5399, %5390
  %5401 = fmul fast float %5351, %5167
  %5402 = fmul fast float %5401, %5396
  %5403 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5376, float %5378, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = select i1 %176, float 0.000000e+00, float %5374
  %5405 = select i1 %176, float %5403, float %5376
  %5406 = select i1 %176, float 0.000000e+00, float %5378
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5347, float %5348, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = select i1 %176, float 0.000000e+00, float %5346
  %5409 = select i1 %176, float %5407, float %5347
  %5410 = select i1 %176, float 0.000000e+00, float %5348
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5400, float %5402, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = select i1 %176, float 0.000000e+00, float %5398
  %5413 = select i1 %176, float %5411, float %5400
  %5414 = select i1 %176, float 0.000000e+00, float %5402
  %5415 = fmul fast float %5158, 9.843750e-01
  %5416 = fmul fast float %5154, 9.843750e-01
  %5417 = fadd fast float %5415, 7.812500e-03
  %5418 = fadd fast float %5416, 7.812500e-03
  %5419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5417, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 2
  %5421 = extractvalue %dx.types.ResRet.f32 %5419, 3
  %5422 = fmul fast float %5420, %5145
  %5423 = fmul fast float %5420, %5146
  %5424 = fmul fast float %5420, %5156
  %5425 = fadd fast float %5422, %5421
  %5426 = fadd fast float %5423, %5421
  %5427 = fadd fast float %5424, %5421
  %5428 = fcmp fast ogt float %4477, 0.000000e+00
  br i1 %5428, label %5429, label %5455

; <label>:5429                                    ; preds = %5320
  %5430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4477, float %5158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5431 = extractvalue %dx.types.ResRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.ResRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.ResRet.f32 %5430, 2
  %5434 = fadd fast float %5431, -5.000000e-01
  %5435 = fadd fast float %5432, -5.000000e-01
  %5436 = fadd fast float %5433, -5.000000e-01
  %5437 = fsub fast float 1.000000e+00, %5145
  %5438 = fsub fast float 1.000000e+00, %5146
  %5439 = fsub fast float 1.000000e+00, %5156
  %5440 = fmul fast float %5145, 4.000000e+00
  %5441 = fmul fast float %5440, %5437
  %5442 = fmul fast float %5441, %5434
  %5443 = fmul fast float %5146, 4.000000e+00
  %5444 = fmul fast float %5443, %5438
  %5445 = fmul fast float %5444, %5435
  %5446 = fmul fast float %5156, 4.000000e+00
  %5447 = fmul fast float %5446, %5439
  %5448 = fmul fast float %5447, %5436
  %5449 = fadd fast float %5442, %5425
  %5450 = fadd fast float %5445, %5426
  %5451 = fadd fast float %5448, %5427
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5454 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  br label %5455

; <label>:5455                                    ; preds = %5429, %5320
  %5456 = phi float [ %5452, %5429 ], [ %5425, %5320 ]
  %5457 = phi float [ %5453, %5429 ], [ %5426, %5320 ]
  %5458 = phi float [ %5454, %5429 ], [ %5427, %5320 ]
  %5459 = call float @dx.op.binary.f32(i32 35, float %5457, float %5458)  ; FMax(a,b)
  %5460 = call float @dx.op.binary.f32(i32 35, float %5456, float %5459)  ; FMax(a,b)
  %5461 = fsub fast float 1.000000e+00, %5460
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = fcmp fast ogt float %5462, 0x3E7FF19E20000000
  %5464 = fdiv fast float 1.000000e+00, %5462
  %5465 = select i1 %5463, float %5464, float 0.000000e+00
  %5466 = fmul fast float %5465, %5151
  %5467 = fmul fast float %5465, %5152
  %5468 = fmul fast float %5465, %5153
  %5469 = fadd fast float %5466, -1.000000e+00
  %5470 = fadd fast float %5467, -1.000000e+00
  %5471 = fadd fast float %5468, -1.000000e+00
  %5472 = fmul fast float %5469, 5.000000e-01
  %5473 = fmul fast float %5470, 5.000000e-01
  %5474 = fmul fast float %5471, 5.000000e-01
  %5475 = fadd fast float %5472, 1.000000e+00
  %5476 = fadd fast float %5473, 1.000000e+00
  %5477 = fadd fast float %5474, 1.000000e+00
  %5478 = fmul fast float %5456, %5412
  %5479 = fmul fast float %5457, %5413
  %5480 = fmul fast float %5458, %5414
  %5481 = fsub fast float 1.000000e+00, %5158
  %5482 = bitcast float %5481 to i32
  %5483 = sitofp i32 %5482 to float
  %5484 = fmul fast float %5483, 5.000000e+00
  %5485 = fadd fast float %5484, 0xC1EFBF8940000000
  %5486 = fptosi float %5485 to i32
  %5487 = bitcast i32 %5486 to float
  %5488 = fmul fast float %5487, %4478
  %5489 = fmul fast float %5404, %5488
  %5490 = fmul fast float %5489, %5461
  %5491 = fmul fast float %5490, %5475
  %5492 = fmul fast float %5405, %5488
  %5493 = fmul fast float %5492, %5461
  %5494 = fmul fast float %5493, %5476
  %5495 = fmul fast float %5406, %5488
  %5496 = fmul fast float %5495, %5461
  %5497 = fmul fast float %5496, %5477
  %5498 = fadd fast float %5478, %4467
  %5499 = fadd fast float %5498, %5491
  %5500 = fmul fast float %5499, %4474
  %5501 = fadd fast float %5479, %4468
  %5502 = fadd fast float %5501, %5494
  %5503 = fmul fast float %5502, %4474
  %5504 = fadd fast float %5480, %4469
  %5505 = fadd fast float %5504, %5497
  %5506 = fmul fast float %5505, %4474
  %5507 = fmul fast float %5461, %5406
  %5508 = fmul fast float %5461, %5405
  %5509 = fmul fast float %5461, %5404
  %5510 = fmul fast float %5461, %4569
  %5511 = fadd fast float %5510, -1.000000e+00
  %5512 = fmul fast float %5511, %4474
  %5513 = fadd fast float %5512, 1.000000e+00
  %5514 = fmul fast float %5461, %4568
  %5515 = fadd fast float %5514, -1.000000e+00
  %5516 = fmul fast float %5515, %4474
  %5517 = fadd fast float %5516, 1.000000e+00
  %5518 = fmul fast float %5461, %4567
  %5519 = fadd fast float %5518, -1.000000e+00
  %5520 = fmul fast float %5519, %4474
  %5521 = fadd fast float %5520, 1.000000e+00
  %5522 = fmul fast float %5521, %5408
  %5523 = fmul fast float %5517, %5409
  %5524 = fmul fast float %5513, %5410
  %5525 = fadd fast float %5522, %5509
  %5526 = fmul fast float %5525, %4474
  %5527 = fadd fast float %5523, %5508
  %5528 = fmul fast float %5527, %4474
  %5529 = fadd fast float %5524, %5507
  %5530 = fmul fast float %5529, %4474
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 3
  %5533 = fcmp fast oeq float %5532, 0.000000e+00
  br i1 %5533, label %5815, label %5534

; <label>:5534                                    ; preds = %5455
  %5535 = extractvalue %dx.types.CBufRet.f32 %5531, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5531, 1
  %5537 = extractvalue %dx.types.CBufRet.f32 %5531, 2
  %5538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.CBufRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.CBufRet.f32 %5538, 2
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.CBufRet.f32 %5542, 1
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %5541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = select i1 %176, float %5543, float %5539
  %5547 = select i1 %176, float %5545, float %5540
  %5548 = select i1 %176, float %5544, float %5541
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5551 = fcmp fast une float %5550, 0.000000e+00
  br i1 %5551, label %5552, label %5569

; <label>:5552                                    ; preds = %5534
  %5553 = fptoui float %75 to i32
  %5554 = fptoui float %76 to i32
  %5555 = lshr i32 %5553, 4
  %5556 = lshr i32 %5554, 4
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 0
  %5559 = fptoui float %5558 to i32
  %5560 = add i32 %5559, 15
  %5561 = lshr i32 %5560, 4
  %5562 = mul i32 %5561, %5556
  %5563 = add i32 %5562, %5555
  %5564 = shl i32 %5563, 3
  %5565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5564, i32 undef)  ; BufferLoad(srv,index,wot)
  %5566 = extractvalue %dx.types.ResRet.i32 %5565, 0
  %5567 = and i32 %5566, -268435456
  %5568 = icmp eq i32 %5567, -1342177280
  br i1 %5568, label %5579, label %5569

; <label>:5569                                    ; preds = %5552, %5534
  %5570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.f32 %5570, 2
  %5572 = extractvalue %dx.types.CBufRet.f32 %5570, 3
  %5573 = fmul fast float %5571, %75
  %5574 = fmul fast float %5572, %76
  %5575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5573, float %5574, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5576 = extractvalue %dx.types.ResRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.ResRet.f32 %5575, 1
  %5578 = extractvalue %dx.types.ResRet.f32 %5575, 2
  br label %5579

; <label>:5579                                    ; preds = %5569, %5552
  %5580 = phi float [ %5576, %5569 ], [ 0.000000e+00, %5552 ]
  %5581 = phi float [ %5577, %5569 ], [ 0.000000e+00, %5552 ]
  %5582 = phi float [ %5578, %5569 ], [ 0.000000e+00, %5552 ]
  %5583 = call float @dx.op.binary.f32(i32 36, float %5581, float %5582)  ; FMin(a,b)
  %5584 = call float @dx.op.binary.f32(i32 36, float %5580, float %5583)  ; FMin(a,b)
  %5585 = fcmp fast ogt float %5584, 0.000000e+00
  br i1 %5585, label %5586, label %5815, !dx.controlflow.hints !75

; <label>:5586                                    ; preds = %5579
  %5587 = fmul fast float %5580, %5546
  %5588 = fmul fast float %5581, %5547
  %5589 = fmul fast float %5582, %5548
  %5590 = fsub fast float %5535, %5144
  %5591 = fsub fast float %5536, %5143
  %5592 = fsub fast float %5537, %5142
  %5593 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float %5590, float %5591, float %5592)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = call float @dx.op.unary.f32(i32 25, float %5593)  ; Rsqrt(value)
  %5595 = fmul fast float %5594, %5590
  %5596 = fmul fast float %5594, %5591
  %5597 = fmul fast float %5594, %5592
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5535, float %5536, float %5537, float %5148, float %5149, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5140, float %5139, float %5595, float %5596, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5600 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5601 = fmul fast float %5600, %5600
  %5602 = fmul fast float %5601, %5171
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = fmul fast float %5603, %5600
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5595, float %5596, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = fmul fast float %5605, %5605
  %5607 = call float @dx.op.unary.f32(i32 6, float %5598)  ; FAbs(value)
  %5608 = fsub fast float 1.000000e+00, %5154
  %5609 = call float @dx.op.binary.f32(i32 35, float %5608, float 0x3F847AE140000000)  ; FMax(a,b)
  %5610 = fmul fast float %5609, %5609
  %5611 = fmul fast float %5610, %5610
  %5612 = fsub fast float 1.000000e+00, %5611
  %5613 = fmul fast float %5158, %5158
  %5614 = fmul fast float %5613, %5612
  %5615 = fadd fast float %5614, %5611
  %5616 = bitcast float %5615 to i32
  %5617 = ashr i32 %5616, 1
  %5618 = add nsw i32 %5617, 532487669
  %5619 = bitcast i32 %5618 to float
  %5620 = fadd fast float %5619, %5158
  %5621 = fmul fast float %5611, %5606
  %5622 = fsub fast float 1.000000e+00, %5606
  %5623 = fadd fast float %5622, %5621
  %5624 = fmul fast float %5607, %5607
  %5625 = fmul fast float %5624, %5612
  %5626 = fadd fast float %5625, %5611
  %5627 = bitcast float %5626 to i32
  %5628 = ashr i32 %5627, 1
  %5629 = add nsw i32 %5628, 532487669
  %5630 = bitcast i32 %5629 to float
  %5631 = fadd fast float %5630, %5607
  %5632 = fmul fast float %5623, %5623
  %5633 = fmul fast float %5632, %5620
  %5634 = fmul fast float %5633, %5631
  %5635 = fdiv fast float 0x3FF0A00000000000, %5634
  %5636 = fmul fast float %5635, %5611
  %5637 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5638 = fsub fast float 1.000000e+00, %5637
  %5639 = bitcast float %5638 to i32
  %5640 = sitofp i32 %5639 to float
  %5641 = fmul fast float %5640, 5.000000e+00
  %5642 = fadd fast float %5641, 0xC1EFBF8940000000
  %5643 = fptosi float %5642 to i32
  %5644 = bitcast i32 %5643 to float
  %5645 = fsub fast float 1.000000e+00, %5145
  %5646 = fsub fast float 1.000000e+00, %5146
  %5647 = fsub fast float 1.000000e+00, %5156
  %5648 = fmul fast float %5644, %5645
  %5649 = fmul fast float %5644, %5646
  %5650 = fmul fast float %5644, %5647
  %5651 = fadd fast float %5648, %5145
  %5652 = fadd fast float %5649, %5146
  %5653 = fadd fast float %5650, %5156
  br i1 %5428, label %5654, label %5677

; <label>:5654                                    ; preds = %5586
  %5655 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4477, float %5637, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5656 = extractvalue %dx.types.ResRet.f32 %5655, 0
  %5657 = extractvalue %dx.types.ResRet.f32 %5655, 1
  %5658 = extractvalue %dx.types.ResRet.f32 %5655, 2
  %5659 = fadd fast float %5656, -5.000000e-01
  %5660 = fadd fast float %5657, -5.000000e-01
  %5661 = fadd fast float %5658, -5.000000e-01
  %5662 = fmul fast float %5145, 4.000000e+00
  %5663 = fmul fast float %5662, %5645
  %5664 = fmul fast float %5663, %5659
  %5665 = fmul fast float %5146, 4.000000e+00
  %5666 = fmul fast float %5665, %5646
  %5667 = fmul fast float %5666, %5660
  %5668 = fmul fast float %5156, 4.000000e+00
  %5669 = fmul fast float %5668, %5647
  %5670 = fmul fast float %5669, %5661
  %5671 = fadd fast float %5664, %5651
  %5672 = fadd fast float %5667, %5652
  %5673 = fadd fast float %5670, %5653
  %5674 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5675 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5676 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  br label %5677

; <label>:5677                                    ; preds = %5654, %5586
  %5678 = phi float [ %5674, %5654 ], [ %5651, %5586 ]
  %5679 = phi float [ %5675, %5654 ], [ %5652, %5586 ]
  %5680 = phi float [ %5676, %5654 ], [ %5653, %5586 ]
  %5681 = fmul fast float %5598, 9.843750e-01
  %5682 = fadd fast float %5681, 7.812500e-03
  %5683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5682, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5684 = extractvalue %dx.types.ResRet.f32 %5683, 2
  %5685 = extractvalue %dx.types.ResRet.f32 %5683, 3
  %5686 = fmul fast float %5684, %5145
  %5687 = fmul fast float %5684, %5146
  %5688 = fmul fast float %5684, %5156
  %5689 = fadd fast float %5686, %5685
  %5690 = fadd fast float %5687, %5685
  %5691 = fadd fast float %5688, %5685
  br i1 %5428, label %5692, label %5715

; <label>:5692                                    ; preds = %5677
  %5693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4477, float %5598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5694 = extractvalue %dx.types.ResRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.ResRet.f32 %5693, 1
  %5696 = extractvalue %dx.types.ResRet.f32 %5693, 2
  %5697 = fadd fast float %5694, -5.000000e-01
  %5698 = fadd fast float %5695, -5.000000e-01
  %5699 = fadd fast float %5696, -5.000000e-01
  %5700 = fmul fast float %5145, 4.000000e+00
  %5701 = fmul fast float %5700, %5645
  %5702 = fmul fast float %5701, %5697
  %5703 = fmul fast float %5146, 4.000000e+00
  %5704 = fmul fast float %5703, %5646
  %5705 = fmul fast float %5704, %5698
  %5706 = fmul fast float %5156, 4.000000e+00
  %5707 = fmul fast float %5706, %5647
  %5708 = fmul fast float %5707, %5699
  %5709 = fadd fast float %5702, %5689
  %5710 = fadd fast float %5705, %5690
  %5711 = fadd fast float %5708, %5691
  %5712 = call float @dx.op.unary.f32(i32 7, float %5709)  ; Saturate(value)
  %5713 = call float @dx.op.unary.f32(i32 7, float %5710)  ; Saturate(value)
  %5714 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  br label %5715

; <label>:5715                                    ; preds = %5692, %5677
  %5716 = phi float [ %5712, %5692 ], [ %5689, %5677 ]
  %5717 = phi float [ %5713, %5692 ], [ %5690, %5677 ]
  %5718 = phi float [ %5714, %5692 ], [ %5691, %5677 ]
  %5719 = call float @dx.op.binary.f32(i32 35, float %5717, float %5718)  ; FMax(a,b)
  %5720 = call float @dx.op.binary.f32(i32 35, float %5716, float %5719)  ; FMax(a,b)
  %5721 = fsub fast float 1.000000e+00, %5720
  %5722 = fsub fast float -0.000000e+00, %5148
  %5723 = fsub fast float -0.000000e+00, %5149
  %5724 = fsub fast float -0.000000e+00, %5150
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5535, float %5536, float %5537, float %5722, float %5723, float %5724)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = fmul fast float %5726, 9.843750e-01
  %5728 = fadd fast float %5727, 7.812500e-03
  %5729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5728, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5730 = extractvalue %dx.types.ResRet.f32 %5729, 2
  %5731 = extractvalue %dx.types.ResRet.f32 %5729, 3
  %5732 = fmul fast float %5730, %5145
  %5733 = fmul fast float %5730, %5146
  %5734 = fmul fast float %5730, %5156
  %5735 = fadd fast float %5732, %5731
  %5736 = fadd fast float %5733, %5731
  %5737 = fadd fast float %5734, %5731
  br i1 %5428, label %5738, label %5761

; <label>:5738                                    ; preds = %5715
  %5739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4477, float %5726, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5740 = extractvalue %dx.types.ResRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.ResRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.ResRet.f32 %5739, 2
  %5743 = fadd fast float %5740, -5.000000e-01
  %5744 = fadd fast float %5741, -5.000000e-01
  %5745 = fadd fast float %5742, -5.000000e-01
  %5746 = fmul fast float %5145, 4.000000e+00
  %5747 = fmul fast float %5746, %5645
  %5748 = fmul fast float %5747, %5743
  %5749 = fmul fast float %5146, 4.000000e+00
  %5750 = fmul fast float %5749, %5646
  %5751 = fmul fast float %5750, %5744
  %5752 = fmul fast float %5156, 4.000000e+00
  %5753 = fmul fast float %5752, %5647
  %5754 = fmul fast float %5753, %5745
  %5755 = fadd fast float %5748, %5735
  %5756 = fadd fast float %5751, %5736
  %5757 = fadd fast float %5754, %5737
  %5758 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5759 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5760 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  br label %5761

; <label>:5761                                    ; preds = %5738, %5715
  %5762 = phi float [ %5758, %5738 ], [ %5735, %5715 ]
  %5763 = phi float [ %5759, %5738 ], [ %5736, %5715 ]
  %5764 = phi float [ %5760, %5738 ], [ %5737, %5715 ]
  %5765 = call float @dx.op.binary.f32(i32 35, float %5763, float %5764)  ; FMax(a,b)
  %5766 = call float @dx.op.binary.f32(i32 35, float %5762, float %5765)  ; FMax(a,b)
  %5767 = fsub fast float 1.000000e+00, %5766
  %5768 = fmul fast float %5767, %5726
  %5769 = fmul fast float %5768, %4567
  %5770 = fmul fast float %5768, %4568
  %5771 = fmul fast float %5768, %4569
  %5772 = fmul fast float %5678, %5636
  %5773 = fmul fast float %5679, %5636
  %5774 = fmul fast float %5680, %5636
  %5775 = fsub fast float 1.000000e+00, %5599
  %5776 = bitcast float %5775 to i32
  %5777 = sitofp i32 %5776 to float
  %5778 = fmul fast float %5777, 5.000000e+00
  %5779 = fadd fast float %5778, 0xC1EFBF8940000000
  %5780 = fptosi float %5779 to i32
  %5781 = bitcast i32 %5780 to float
  %5782 = fmul fast float %5781, %4478
  %5783 = fmul fast float %5721, %5782
  %5784 = fmul fast float %5783, %5475
  %5785 = fmul fast float %5783, %5476
  %5786 = fmul fast float %5783, %5477
  %5787 = fmul fast float %5721, %5604
  %5788 = fadd fast float %5784, %5772
  %5789 = fadd fast float %5785, %5773
  %5790 = fadd fast float %5786, %5774
  %5791 = fadd fast float %5769, %5787
  %5792 = fadd fast float %5770, %5787
  %5793 = fadd fast float %5771, %5787
  %5794 = fmul fast float %5791, %5587
  %5795 = fmul fast float %5792, %5588
  %5796 = fmul fast float %5793, %5589
  %5797 = fmul fast float %5604, %5587
  %5798 = fmul fast float %5797, %5788
  %5799 = fmul fast float %5604, %5588
  %5800 = fmul fast float %5799, %5789
  %5801 = fmul fast float %5604, %5589
  %5802 = fmul fast float %5801, %5790
  %5803 = fadd fast float %5794, %5525
  %5804 = fmul fast float %5803, %4474
  %5805 = fadd fast float %5795, %5527
  %5806 = fmul fast float %5805, %4474
  %5807 = fadd fast float %5796, %5529
  %5808 = fmul fast float %5807, %4474
  %5809 = fadd fast float %5798, %5499
  %5810 = fmul fast float %5809, %4474
  %5811 = fadd fast float %5800, %5502
  %5812 = fmul fast float %5811, %4474
  %5813 = fadd fast float %5802, %5505
  %5814 = fmul fast float %5813, %4474
  br label %5815

; <label>:5815                                    ; preds = %5761, %5579, %5455
  %5816 = phi float [ %5500, %5455 ], [ %5500, %5579 ], [ %5810, %5761 ]
  %5817 = phi float [ %5503, %5455 ], [ %5503, %5579 ], [ %5812, %5761 ]
  %5818 = phi float [ %5506, %5455 ], [ %5506, %5579 ], [ %5814, %5761 ]
  %5819 = phi float [ %5526, %5455 ], [ %5526, %5579 ], [ %5804, %5761 ]
  %5820 = phi float [ %5528, %5455 ], [ %5528, %5579 ], [ %5806, %5761 ]
  %5821 = phi float [ %5530, %5455 ], [ %5530, %5579 ], [ %5808, %5761 ]
  %5822 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5823 = extractvalue %dx.types.CBufRet.i32 %5822, 0
  %5824 = icmp eq i32 %5823, 0
  br i1 %5824, label %6314, label %5825

; <label>:5825                                    ; preds = %5815
  %5826 = fptoui float %75 to i32
  %5827 = fptoui float %76 to i32
  %5828 = lshr i32 %5826, 4
  %5829 = lshr i32 %5827, 4
  %5830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.i32 %5830, 0
  %5832 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5829, i32 %5831, i32 %5828)  ; UMad(a,b,c)
  %5833 = add nsw i32 %5823, -1
  %5834 = call i32 @dx.op.binary.i32(i32 37, i32 %5833, i32 0)  ; IMax(a,b)
  %5835 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5836 = fptoui float %5835 to i32
  %5837 = lshr i32 %5836, 5
  %5838 = call i32 @dx.op.binary.i32(i32 40, i32 %5837, i32 8191)  ; UMin(a,b)
  %5839 = shl i32 %5838, 2
  %5840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5839, i32 undef)  ; BufferLoad(srv,index,wot)
  %5841 = extractvalue %dx.types.ResRet.i32 %5840, 0
  %5842 = lshr i32 %5841, 16
  %5843 = and i32 %5841, 65535
  %5844 = lshr i32 %5841, 21
  %5845 = lshr i32 %5843, 5
  %5846 = call i32 @dx.op.binary.i32(i32 40, i32 %5845, i32 %5834)  ; UMin(a,b)
  %5847 = icmp ugt i32 %5844, %5846
  br i1 %5847, label %6314, label %5848

; <label>:5848                                    ; preds = %5825
  br label %5849

; <label>:5849                                    ; preds = %6304, %5848
  %5850 = phi i32 [ %6311, %6304 ], [ %5844, %5848 ]
  %5851 = phi float [ %6305, %6304 ], [ %5816, %5848 ]
  %5852 = phi float [ %6306, %6304 ], [ %5817, %5848 ]
  %5853 = phi float [ %6307, %6304 ], [ %5818, %5848 ]
  %5854 = phi float [ %6308, %6304 ], [ %5819, %5848 ]
  %5855 = phi float [ %6309, %6304 ], [ %5820, %5848 ]
  %5856 = phi float [ %6310, %6304 ], [ %5821, %5848 ]
  %5857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.i32 %5857, 0
  %5859 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5832, i32 %5858, i32 %5850)  ; UMad(a,b,c)
  %5860 = shl i32 %5859, 2
  %5861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5860, i32 undef)  ; BufferLoad(srv,index,wot)
  %5862 = extractvalue %dx.types.ResRet.i32 %5861, 0
  %5863 = shl i32 %5850, 5
  %5864 = sub nsw i32 %5842, %5863
  %5865 = call i32 @dx.op.binary.i32(i32 37, i32 %5864, i32 0)  ; IMax(a,b)
  %5866 = call i32 @dx.op.binary.i32(i32 38, i32 %5865, i32 31)  ; IMin(a,b)
  %5867 = sub nsw i32 1, %5842
  %5868 = add nsw i32 %5867, %5843
  %5869 = call i32 @dx.op.binary.i32(i32 37, i32 %5868, i32 0)  ; IMax(a,b)
  %5870 = call i32 @dx.op.binary.i32(i32 38, i32 %5869, i32 32)  ; IMin(a,b)
  %5871 = and i32 %5870, 31
  %5872 = shl i32 -1, %5871
  %5873 = xor i32 %5872, -1
  %5874 = and i32 %5866, 31
  %5875 = shl i32 %5873, %5874
  %5876 = icmp eq i32 %5870, 32
  %5877 = select i1 %5876, i32 -1, i32 %5875
  %5878 = and i32 %5877, %5862
  %5879 = icmp eq i32 %5878, 0
  br i1 %5879, label %6304, label %5880

; <label>:5880                                    ; preds = %5849
  br label %5881

; <label>:5881                                    ; preds = %5961, %5880
  %5882 = phi i32 [ %5893, %5961 ], [ %5878, %5880 ]
  %5883 = phi float [ %5962, %5961 ], [ %5851, %5880 ]
  %5884 = phi float [ %5963, %5961 ], [ %5852, %5880 ]
  %5885 = phi float [ %5964, %5961 ], [ %5853, %5880 ]
  %5886 = phi float [ %5965, %5961 ], [ %5854, %5880 ]
  %5887 = phi float [ %5966, %5961 ], [ %5855, %5880 ]
  %5888 = phi float [ %5967, %5961 ], [ %5856, %5880 ]
  %5889 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5882)  ; FirstbitLo(value)
  %5890 = add i32 %5889, %5863
  %5891 = and i32 %5889, 31
  %5892 = shl i32 1, %5891
  %5893 = xor i32 %5892, %5882
  %5894 = mul i32 %5890, 112
  %5895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5894, i32 undef)  ; BufferLoad(srv,index,wot)
  %5896 = extractvalue %dx.types.ResRet.f32 %5895, 0
  %5897 = extractvalue %dx.types.ResRet.f32 %5895, 1
  %5898 = extractvalue %dx.types.ResRet.f32 %5895, 2
  %5899 = or i32 %5894, 12
  %5900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5899, i32 undef)  ; BufferLoad(srv,index,wot)
  %5901 = extractvalue %dx.types.ResRet.f32 %5900, 0
  %5902 = add i32 %5894, 44
  %5903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5902, i32 undef)  ; BufferLoad(srv,index,wot)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 0
  %5905 = add i32 %5894, 48
  %5906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5905, i32 undef)  ; BufferLoad(srv,index,wot)
  %5907 = extractvalue %dx.types.ResRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.ResRet.f32 %5906, 1
  %5909 = extractvalue %dx.types.ResRet.f32 %5906, 2
  %5910 = add i32 %5894, 80
  %5911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5910, i32 undef)  ; BufferLoad(srv,index,wot)
  %5912 = extractvalue %dx.types.ResRet.f32 %5911, 1
  %5913 = extractvalue %dx.types.ResRet.f32 %5911, 2
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5897, float %5898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = select i1 %176, float %5912, float %5896
  %5916 = select i1 %176, float %5914, float %5897
  %5917 = select i1 %176, float %5913, float %5898
  %5918 = fsub fast float %5907, %134
  %5919 = fsub fast float %5908, %135
  %5920 = fsub fast float %5909, %136
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5918, float %5919, float %5920, float %5918, float %5919, float %5920)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = call float @dx.op.unary.f32(i32 24, float %5921)  ; Sqrt(value)
  %5923 = fdiv fast float 1.000000e+00, %5922
  %5924 = fmul fast float %5923, %5918
  %5925 = fmul fast float %5923, %5919
  %5926 = fmul fast float %5923, %5920
  %5927 = fadd fast float %5922, %5901
  %5928 = fdiv fast float 1.000000e+00, %5927
  %5929 = fmul float %5904, %5928
  %5930 = fmul float %5929, %5929
  %5931 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5932 = and i32 %5892, %5878
  %5933 = icmp eq i32 %5932, 0
  br i1 %5933, label %5956, label %5934, !dx.controlflow.hints !76

; <label>:5934                                    ; preds = %5881
  %5935 = lshr i32 %5826, 5
  %5936 = lshr i32 %5827, 5
  %5937 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5935, i32 %5936, i32 %5890, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5938 = extractvalue %dx.types.ResRet.i32 %5937, 0
  %5939 = and i32 %5938, 3
  %5940 = icmp eq i32 %5939, 0
  %5941 = select i1 %5940, float 1.000000e+00, float 0.000000e+00
  %5942 = icmp eq i32 %5939, 3
  br i1 %5942, label %5943, label %5956

; <label>:5943                                    ; preds = %5934
  %5944 = lshr i32 %5938, 10
  %5945 = and i32 %5944, 8160
  %5946 = and i32 %5827, 31
  %5947 = or i32 %5945, %5946
  %5948 = lshr i32 %5938, 1
  %5949 = and i32 %5948, 16352
  %5950 = and i32 %5826, 31
  %5951 = or i32 %5949, %5950
  %5952 = lshr i32 %5938, 23
  %5953 = and i32 %5952, 255
  %5954 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5951, i32 %5947, i32 %5953, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 0
  br label %5956

; <label>:5956                                    ; preds = %5943, %5934, %5881
  %5957 = phi float [ %5955, %5943 ], [ %5941, %5934 ], [ 0.000000e+00, %5881 ]
  %5958 = call float @dx.op.binary.f32(i32 36, float %5957, float %5957)  ; FMin(a,b)
  %5959 = call float @dx.op.binary.f32(i32 36, float %5957, float %5958)  ; FMin(a,b)
  %5960 = fcmp fast ogt float %5959, 0.000000e+00
  br i1 %5960, label %5969, label %5961, !dx.controlflow.hints !77

; <label>:5961                                    ; preds = %6252, %5956
  %5962 = phi float [ %5883, %5956 ], [ %6300, %6252 ]
  %5963 = phi float [ %5884, %5956 ], [ %6301, %6252 ]
  %5964 = phi float [ %5885, %5956 ], [ %6302, %6252 ]
  %5965 = phi float [ %5886, %5956 ], [ %6291, %6252 ]
  %5966 = phi float [ %5887, %5956 ], [ %6292, %6252 ]
  %5967 = phi float [ %5888, %5956 ], [ %6293, %6252 ]
  %5968 = icmp eq i32 %5882, %5892
  br i1 %5968, label %6303, label %5881

; <label>:5969                                    ; preds = %5956
  %5970 = fmul fast float %5957, %5915
  %5971 = fmul fast float %5957, %5916
  %5972 = fmul fast float %5957, %5917
  %5973 = fsub fast float %5909, %4944
  %5974 = fcmp fast ogt float %5973, 0.000000e+00
  %5975 = fsub fast float %136, %4944
  %5976 = fcmp fast ogt float %5975, 0.000000e+00
  %5977 = xor i1 %5976, %5974
  %5978 = fsub fast float %4944, %5909
  %5979 = fmul fast float %5978, 2.000000e+00
  %5980 = fadd fast float %5979, %5909
  %5981 = select i1 %5977, float %5909, float %5980
  %5982 = fsub fast float %5981, %136
  %5983 = call float @dx.op.dot3.f32(i32 55, float %5918, float %5919, float %5982, float %5918, float %5919, float %5982)  ; Dot3(ax,ay,az,bx,by,bz)
  %5984 = call float @dx.op.unary.f32(i32 25, float %5983)  ; Rsqrt(value)
  %5985 = fmul fast float %5984, %5918
  %5986 = fmul fast float %5984, %5919
  %5987 = fmul fast float %5984, %5982
  %5988 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4952)  ; Dot3(ax,ay,az,bx,by,bz)
  %5989 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5985, float %5986, float %5987)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = fdiv fast float 1.000000e+00, %5989
  %5991 = fmul fast float %5990, %5988
  %5992 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5975, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5993 = fcmp fast ogt float %5992, 0.000000e+00
  %5994 = fcmp fast olt float %5992, 0.000000e+00
  %5995 = zext i1 %5993 to i32
  %5996 = zext i1 %5994 to i32
  %5997 = sub nsw i32 %5995, %5996
  %5998 = sitofp i32 %5997 to float
  %5999 = fsub fast float %5981, %4944
  %6000 = call float @dx.op.dot3.f32(i32 55, float %5918, float %5919, float %5999, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = fcmp fast ogt float %6000, 0.000000e+00
  %6002 = fcmp fast olt float %6000, 0.000000e+00
  %6003 = zext i1 %6001 to i32
  %6004 = zext i1 %6002 to i32
  %6005 = sub nsw i32 %6003, %6004
  %6006 = sitofp i32 %6005 to float
  %6007 = fcmp fast une float %5998, %6006
  br i1 %6007, label %6008, label %6018

; <label>:6008                                    ; preds = %5969
  %6009 = fmul fast float %5991, %5987
  %6010 = fmul fast float %5991, %5986
  %6011 = fmul fast float %5991, %5985
  %6012 = fmul fast float %6011, %6011
  %6013 = fmul fast float %6010, %6010
  %6014 = fadd fast float %6012, %6013
  %6015 = fmul fast float %6009, %6009
  %6016 = fadd fast float %6014, %6015
  %6017 = call float @dx.op.unary.f32(i32 24, float %6016)  ; Sqrt(value)
  br label %6030

; <label>:6018                                    ; preds = %5969
  %6019 = icmp slt i32 %5997, 0
  br i1 %6019, label %6020, label %6030

; <label>:6020                                    ; preds = %6018
  %6021 = fsub fast float %134, %5907
  %6022 = fsub fast float %135, %5908
  %6023 = fsub fast float %136, %5981
  %6024 = fmul fast float %6021, %6021
  %6025 = fmul fast float %6022, %6022
  %6026 = fadd fast float %6024, %6025
  %6027 = fmul fast float %6023, %6023
  %6028 = fadd fast float %6026, %6027
  %6029 = call float @dx.op.unary.f32(i32 24, float %6028)  ; Sqrt(value)
  br label %6030

; <label>:6030                                    ; preds = %6020, %6018, %6008
  %6031 = phi float [ %6017, %6008 ], [ %6029, %6020 ], [ 0.000000e+00, %6018 ]
  %6032 = and i1 %5976, %5974
  %6033 = fsub fast float -0.000000e+00, %6031
  %6034 = select i1 %6032, float -0.000000e+00, float %6033
  %6035 = fmul fast float %4945, 0x3FF7154760000000
  %6036 = fmul fast float %6035, %6034
  %6037 = fmul fast float %4946, 0x3FF7154760000000
  %6038 = fmul fast float %6037, %6034
  %6039 = fmul fast float %4947, 0x3FF7154760000000
  %6040 = fmul fast float %6039, %6034
  %6041 = call float @dx.op.unary.f32(i32 21, float %6036)  ; Exp(value)
  %6042 = call float @dx.op.unary.f32(i32 21, float %6038)  ; Exp(value)
  %6043 = call float @dx.op.unary.f32(i32 21, float %6040)  ; Exp(value)
  %6044 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6045 = call float @dx.op.unary.f32(i32 7, float %6042)  ; Saturate(value)
  %6046 = call float @dx.op.unary.f32(i32 7, float %6043)  ; Saturate(value)
  %6047 = fmul fast float %5970, %6044
  %6048 = fmul fast float %5971, %6045
  %6049 = fmul fast float %5972, %6046
  %6050 = fsub fast float %5924, %5144
  %6051 = fsub fast float %5925, %5143
  %6052 = fsub fast float %5926, %5142
  %6053 = call float @dx.op.dot3.f32(i32 55, float %6050, float %6051, float %6052, float %6050, float %6051, float %6052)  ; Dot3(ax,ay,az,bx,by,bz)
  %6054 = call float @dx.op.unary.f32(i32 25, float %6053)  ; Rsqrt(value)
  %6055 = fmul fast float %6054, %6050
  %6056 = fmul fast float %6054, %6051
  %6057 = fmul fast float %6054, %6052
  %6058 = call float @dx.op.dot3.f32(i32 55, float %5924, float %5925, float %5926, float %5148, float %5149, float %5150)  ; Dot3(ax,ay,az,bx,by,bz)
  %6059 = call float @dx.op.dot3.f32(i32 55, float %5141, float %5140, float %5139, float %6055, float %6056, float %6057)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6061 = fmul fast float %6060, %5931
  %6062 = fmul fast float %6060, %6060
  %6063 = fmul fast float %6062, %5171
  %6064 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6065 = fmul fast float %6061, %6064
  %6066 = bitcast float %5921 to i32
  %6067 = ashr i32 %6066, 1
  %6068 = sub nsw i32 1597463007, %6067
  %6069 = bitcast i32 %6068 to float
  %6070 = fmul fast float %6069, %5918
  %6071 = fmul fast float %6069, %5919
  %6072 = fmul fast float %6069, %5920
  %6073 = fsub fast float %6070, %5144
  %6074 = fsub fast float %6071, %5143
  %6075 = fsub fast float %6072, %5142
  %6076 = call float @dx.op.dot3.f32(i32 55, float %6073, float %6074, float %6075, float %6073, float %6074, float %6075)  ; Dot3(ax,ay,az,bx,by,bz)
  %6077 = call float @dx.op.unary.f32(i32 25, float %6076)  ; Rsqrt(value)
  %6078 = fmul fast float %6073, %6077
  %6079 = fmul fast float %6074, %6077
  %6080 = fmul fast float %6075, %6077
  %6081 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %6078, float %6079, float %6080)  ; Dot3(ax,ay,az,bx,by,bz)
  %6082 = fmul fast float %6081, %6081
  %6083 = call float @dx.op.unary.f32(i32 6, float %6058)  ; FAbs(value)
  %6084 = fsub fast float 1.000000e+00, %5154
  %6085 = call float @dx.op.binary.f32(i32 35, float %6084, float 0x3F847AE140000000)  ; FMax(a,b)
  %6086 = fmul fast float %6085, %6085
  %6087 = fmul fast float %6086, %6086
  %6088 = fsub fast float 1.000000e+00, %6087
  %6089 = fmul fast float %5158, %5158
  %6090 = fmul fast float %6089, %6088
  %6091 = fadd fast float %6090, %6087
  %6092 = bitcast float %6091 to i32
  %6093 = ashr i32 %6092, 1
  %6094 = add nsw i32 %6093, 532487669
  %6095 = bitcast i32 %6094 to float
  %6096 = fadd fast float %6095, %5158
  %6097 = fmul fast float %6087, %6082
  %6098 = fsub fast float 1.000000e+00, %6082
  %6099 = fadd fast float %6098, %6097
  %6100 = fmul fast float %6083, %6083
  %6101 = fmul fast float %6100, %6088
  %6102 = fadd fast float %6101, %6087
  %6103 = bitcast float %6102 to i32
  %6104 = ashr i32 %6103, 1
  %6105 = add nsw i32 %6104, 532487669
  %6106 = bitcast i32 %6105 to float
  %6107 = fadd fast float %6106, %6083
  %6108 = fmul fast float %6099, %6099
  %6109 = fmul fast float %6108, %6096
  %6110 = fmul fast float %6109, %6107
  %6111 = fdiv fast float 1.000000e+00, %6110
  %6112 = bitcast float %6087 to i32
  %6113 = sitofp i32 %6112 to float
  %6114 = fmul fast float %6113, 0x3FE7F73180000000
  %6115 = fadd fast float %6114, 0x41AFE27C40000000
  %6116 = fptosi float %6115 to i32
  %6117 = bitcast i32 %6116 to float
  %6118 = fmul fast float %5904, 0x3FD80E9D60000000
  %6119 = fmul fast float %6118, %6069
  %6120 = fadd fast float %6117, %6119
  %6121 = bitcast float %6120 to i32
  %6122 = sub nsw i32 2129859010, %6121
  %6123 = bitcast i32 %6122 to float
  %6124 = fmul fast float %6087, %6111
  %6125 = fmul fast float %6124, %6117
  %6126 = fmul fast float %6125, %6123
  %6127 = call float @dx.op.unary.f32(i32 6, float %6059)  ; FAbs(value)
  %6128 = fsub fast float 1.000000e+00, %6127
  %6129 = bitcast float %6128 to i32
  %6130 = sitofp i32 %6129 to float
  %6131 = fmul fast float %6130, 5.000000e+00
  %6132 = fadd fast float %6131, 0xC1EFBF8940000000
  %6133 = fptosi float %6132 to i32
  %6134 = bitcast i32 %6133 to float
  %6135 = fsub fast float 1.000000e+00, %5145
  %6136 = fsub fast float 1.000000e+00, %5146
  %6137 = fsub fast float 1.000000e+00, %5156
  %6138 = fmul fast float %6134, %6135
  %6139 = fmul fast float %6134, %6136
  %6140 = fmul fast float %6134, %6137
  %6141 = fadd fast float %6138, %5145
  %6142 = fadd fast float %6139, %5146
  %6143 = fadd fast float %6140, %5156
  br i1 %5428, label %6144, label %6167

; <label>:6144                                    ; preds = %6030
  %6145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4477, float %6127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6146 = extractvalue %dx.types.ResRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.ResRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.ResRet.f32 %6145, 2
  %6149 = fadd fast float %6146, -5.000000e-01
  %6150 = fadd fast float %6147, -5.000000e-01
  %6151 = fadd fast float %6148, -5.000000e-01
  %6152 = fmul fast float %5145, 4.000000e+00
  %6153 = fmul fast float %6152, %6135
  %6154 = fmul fast float %6153, %6149
  %6155 = fmul fast float %5146, 4.000000e+00
  %6156 = fmul fast float %6155, %6136
  %6157 = fmul fast float %6156, %6150
  %6158 = fmul fast float %5156, 4.000000e+00
  %6159 = fmul fast float %6158, %6137
  %6160 = fmul fast float %6159, %6151
  %6161 = fadd fast float %6154, %6141
  %6162 = fadd fast float %6157, %6142
  %6163 = fadd fast float %6160, %6143
  %6164 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6165 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6166 = call float @dx.op.unary.f32(i32 7, float %6163)  ; Saturate(value)
  br label %6167

; <label>:6167                                    ; preds = %6144, %6030
  %6168 = phi float [ %6164, %6144 ], [ %6141, %6030 ]
  %6169 = phi float [ %6165, %6144 ], [ %6142, %6030 ]
  %6170 = phi float [ %6166, %6144 ], [ %6143, %6030 ]
  %6171 = fmul fast float %6058, 9.843750e-01
  %6172 = fadd fast float %6171, 7.812500e-03
  %6173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6172, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6174 = extractvalue %dx.types.ResRet.f32 %6173, 2
  %6175 = extractvalue %dx.types.ResRet.f32 %6173, 3
  %6176 = fmul fast float %6174, %5145
  %6177 = fmul fast float %6174, %5146
  %6178 = fmul fast float %6174, %5156
  %6179 = fadd fast float %6176, %6175
  %6180 = fadd fast float %6177, %6175
  %6181 = fadd fast float %6178, %6175
  br i1 %5428, label %6182, label %6205

; <label>:6182                                    ; preds = %6167
  %6183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4477, float %6058, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6187 = fadd fast float %6184, -5.000000e-01
  %6188 = fadd fast float %6185, -5.000000e-01
  %6189 = fadd fast float %6186, -5.000000e-01
  %6190 = fmul fast float %5145, 4.000000e+00
  %6191 = fmul fast float %6190, %6135
  %6192 = fmul fast float %6191, %6187
  %6193 = fmul fast float %5146, 4.000000e+00
  %6194 = fmul fast float %6193, %6136
  %6195 = fmul fast float %6194, %6188
  %6196 = fmul fast float %5156, 4.000000e+00
  %6197 = fmul fast float %6196, %6137
  %6198 = fmul fast float %6197, %6189
  %6199 = fadd fast float %6192, %6179
  %6200 = fadd fast float %6195, %6180
  %6201 = fadd fast float %6198, %6181
  %6202 = call float @dx.op.unary.f32(i32 7, float %6199)  ; Saturate(value)
  %6203 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  %6204 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  br label %6205

; <label>:6205                                    ; preds = %6182, %6167
  %6206 = phi float [ %6202, %6182 ], [ %6179, %6167 ]
  %6207 = phi float [ %6203, %6182 ], [ %6180, %6167 ]
  %6208 = phi float [ %6204, %6182 ], [ %6181, %6167 ]
  %6209 = call float @dx.op.binary.f32(i32 35, float %6207, float %6208)  ; FMax(a,b)
  %6210 = call float @dx.op.binary.f32(i32 35, float %6206, float %6209)  ; FMax(a,b)
  %6211 = fsub fast float 1.000000e+00, %6210
  %6212 = fsub fast float -0.000000e+00, %5148
  %6213 = fsub fast float -0.000000e+00, %5149
  %6214 = fsub fast float -0.000000e+00, %5150
  %6215 = call float @dx.op.dot3.f32(i32 55, float %5924, float %5925, float %5926, float %6212, float %6213, float %6214)  ; Dot3(ax,ay,az,bx,by,bz)
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = fmul fast float %6216, %5931
  %6218 = fmul fast float %6216, 9.843750e-01
  %6219 = fadd fast float %6218, 7.812500e-03
  %6220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6219, float %5418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6221 = extractvalue %dx.types.ResRet.f32 %6220, 2
  %6222 = extractvalue %dx.types.ResRet.f32 %6220, 3
  %6223 = fmul fast float %6221, %5145
  %6224 = fmul fast float %6221, %5146
  %6225 = fmul fast float %6221, %5156
  %6226 = fadd fast float %6223, %6222
  %6227 = fadd fast float %6224, %6222
  %6228 = fadd fast float %6225, %6222
  br i1 %5428, label %6229, label %6252

; <label>:6229                                    ; preds = %6205
  %6230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4477, float %6216, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6231 = extractvalue %dx.types.ResRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.ResRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.ResRet.f32 %6230, 2
  %6234 = fadd fast float %6231, -5.000000e-01
  %6235 = fadd fast float %6232, -5.000000e-01
  %6236 = fadd fast float %6233, -5.000000e-01
  %6237 = fmul fast float %5145, 4.000000e+00
  %6238 = fmul fast float %6237, %6135
  %6239 = fmul fast float %6238, %6234
  %6240 = fmul fast float %5146, 4.000000e+00
  %6241 = fmul fast float %6240, %6136
  %6242 = fmul fast float %6241, %6235
  %6243 = fmul fast float %5156, 4.000000e+00
  %6244 = fmul fast float %6243, %6137
  %6245 = fmul fast float %6244, %6236
  %6246 = fadd fast float %6239, %6226
  %6247 = fadd fast float %6242, %6227
  %6248 = fadd fast float %6245, %6228
  %6249 = call float @dx.op.unary.f32(i32 7, float %6246)  ; Saturate(value)
  %6250 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  %6251 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  br label %6252

; <label>:6252                                    ; preds = %6229, %6205
  %6253 = phi float [ %6249, %6229 ], [ %6226, %6205 ]
  %6254 = phi float [ %6250, %6229 ], [ %6227, %6205 ]
  %6255 = phi float [ %6251, %6229 ], [ %6228, %6205 ]
  %6256 = call float @dx.op.binary.f32(i32 35, float %6254, float %6255)  ; FMax(a,b)
  %6257 = call float @dx.op.binary.f32(i32 35, float %6253, float %6256)  ; FMax(a,b)
  %6258 = fsub fast float 1.000000e+00, %6257
  %6259 = fmul fast float %6217, %6258
  %6260 = fmul fast float %6259, %4567
  %6261 = fmul fast float %6259, %4568
  %6262 = fmul fast float %6259, %4569
  %6263 = fmul fast float %6168, %6126
  %6264 = fmul fast float %6169, %6126
  %6265 = fmul fast float %6170, %6126
  %6266 = fsub fast float 1.000000e+00, %6059
  %6267 = bitcast float %6266 to i32
  %6268 = sitofp i32 %6267 to float
  %6269 = fmul fast float %6268, 5.000000e+00
  %6270 = fadd fast float %6269, 0xC1EFBF8940000000
  %6271 = fptosi float %6270 to i32
  %6272 = bitcast i32 %6271 to float
  %6273 = fmul fast float %6272, %4478
  %6274 = fmul fast float %6211, %6273
  %6275 = fmul fast float %6274, %5475
  %6276 = fmul fast float %6274, %5476
  %6277 = fmul fast float %6274, %5477
  %6278 = fmul fast float %6211, %6065
  %6279 = fadd fast float %6275, %6263
  %6280 = fadd fast float %6276, %6264
  %6281 = fadd fast float %6277, %6265
  %6282 = fadd fast float %6260, %6278
  %6283 = fadd fast float %6261, %6278
  %6284 = fadd fast float %6262, %6278
  %6285 = fmul fast float %6047, %4474
  %6286 = fmul fast float %6285, %6282
  %6287 = fmul fast float %6048, %4474
  %6288 = fmul fast float %6287, %6283
  %6289 = fmul fast float %6049, %4474
  %6290 = fmul fast float %6289, %6284
  %6291 = fadd fast float %6286, %5886
  %6292 = fadd fast float %6288, %5887
  %6293 = fadd fast float %6290, %5888
  %6294 = fmul fast float %6285, %6065
  %6295 = fmul fast float %6294, %6279
  %6296 = fmul fast float %6287, %6065
  %6297 = fmul fast float %6296, %6280
  %6298 = fmul fast float %6289, %6065
  %6299 = fmul fast float %6298, %6281
  %6300 = fadd fast float %6295, %5883
  %6301 = fadd fast float %6297, %5884
  %6302 = fadd fast float %6299, %5885
  br label %5961

; <label>:6303                                    ; preds = %5961
  br label %6304

; <label>:6304                                    ; preds = %6303, %5849
  %6305 = phi float [ %5851, %5849 ], [ %5962, %6303 ]
  %6306 = phi float [ %5852, %5849 ], [ %5963, %6303 ]
  %6307 = phi float [ %5853, %5849 ], [ %5964, %6303 ]
  %6308 = phi float [ %5854, %5849 ], [ %5965, %6303 ]
  %6309 = phi float [ %5855, %5849 ], [ %5966, %6303 ]
  %6310 = phi float [ %5856, %5849 ], [ %5967, %6303 ]
  %6311 = add i32 %5850, 1
  %6312 = icmp ugt i32 %6311, %5846
  br i1 %6312, label %6313, label %5849

; <label>:6313                                    ; preds = %6304
  br label %6314

; <label>:6314                                    ; preds = %6313, %5825, %5815
  %6315 = phi float [ %5816, %5815 ], [ %5816, %5825 ], [ %6305, %6313 ]
  %6316 = phi float [ %5817, %5815 ], [ %5817, %5825 ], [ %6306, %6313 ]
  %6317 = phi float [ %5818, %5815 ], [ %5818, %5825 ], [ %6307, %6313 ]
  %6318 = phi float [ %5819, %5815 ], [ %5819, %5825 ], [ %6308, %6313 ]
  %6319 = phi float [ %5820, %5815 ], [ %5820, %5825 ], [ %6309, %6313 ]
  %6320 = phi float [ %5821, %5815 ], [ %5821, %5825 ], [ %6310, %6313 ]
  %6321 = call float @dx.op.unary.f32(i32 24, float %5151)  ; Sqrt(value)
  %6322 = call float @dx.op.unary.f32(i32 24, float %5152)  ; Sqrt(value)
  %6323 = call float @dx.op.unary.f32(i32 24, float %5153)  ; Sqrt(value)
  %6324 = fmul fast float %6321, %6318
  %6325 = fmul fast float %6322, %6319
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  br i1 %176, label %6328, label %6348

; <label>:6328                                    ; preds = %6314
  %6329 = fadd fast float %6320, %4480
  %6330 = fmul fast float %6329, %4481
  %6331 = fsub fast float 1.000000e+00, %4481
  %6332 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  %6333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6334 = extractvalue %dx.types.CBufRet.f32 %6333, 3
  %6335 = fmul fast float %6334, %6332
  %6336 = fadd fast float %6335, %6330
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6339 = fmul fast float %6338, %5481
  %6340 = fsub fast float %6336, %6339
  %6341 = fadd fast float %6325, %6324
  %6342 = fmul fast float %6327, %6341
  %6343 = extractvalue %dx.types.CBufRet.f32 %6333, 1
  %6344 = fsub fast float %6340, %6343
  %6345 = extractvalue %dx.types.CBufRet.f32 %6333, 2
  %6346 = fmul fast float %6344, %6345
  %6347 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  br label %6364

; <label>:6348                                    ; preds = %6314
  %6349 = fmul fast float %6323, %6320
  %6350 = fmul fast float %6327, %6324
  %6351 = fmul fast float %6327, %6325
  %6352 = fmul fast float %6349, %6327
  %6353 = add i32 %35, 356
  %6354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6353, i32 undef)  ; BufferLoad(srv,index,wot)
  %6355 = extractvalue %dx.types.ResRet.i32 %6354, 0
  %6356 = and i32 %6355, 32
  %6357 = icmp eq i32 %6356, 0
  br i1 %6357, label %6364, label %6358

; <label>:6358                                    ; preds = %6348
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 0
  %6361 = fmul fast float %6360, 0x3FE99999A0000000
  %6362 = fadd fast float %6360, %6350
  %6363 = fadd fast float %6361, %6352
  br label %6364

; <label>:6364                                    ; preds = %6358, %6348, %6328
  %6365 = phi float [ %6342, %6328 ], [ %6362, %6358 ], [ %6350, %6348 ]
  %6366 = phi float [ %6347, %6328 ], [ %6351, %6358 ], [ %6351, %6348 ]
  %6367 = phi float [ 1.000000e+00, %6328 ], [ %6363, %6358 ], [ %6352, %6348 ]
  %6368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6369 = extractvalue %dx.types.CBufRet.f32 %6368, 0
  %6370 = fmul fast float %6369, %6316
  %6371 = fmul fast float %6369, %6317
  %6372 = fadd fast float %6316, %6315
  %6373 = select i1 %176, float %6372, float %6315
  %6374 = fmul float %6373, %6369
  %6375 = select i1 %176, float 0.000000e+00, float %6370
  %6376 = select i1 %176, float 0.000000e+00, float %6371
  %6377 = fmul fast float %6365, %6321
  %6378 = fmul fast float %6366, %6322
  %6379 = fmul fast float %6367, %6323
  %6380 = fadd fast float %6374, %6377
  %6381 = fadd fast float %6375, %6378
  %6382 = fadd fast float %6376, %6379
  %6383 = select i1 %176, float %6366, float %6381
  %6384 = select i1 %176, float %6367, float %6382
  %6385 = call float @dx.op.binary.f32(i32 36, float %6380, float 3.225500e+04)  ; FMin(a,b)
  %6386 = call float @dx.op.binary.f32(i32 36, float %6383, float 3.225500e+04)  ; FMin(a,b)
  %6387 = call float @dx.op.binary.f32(i32 36, float %6384, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6385)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6386)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6387)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

