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
; shader hash: b8a057b5ab8467c9cc0c536f67355099
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
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %101 = fmul fast float %75, 2.000000e+00
  %102 = fmul fast float %101, %99
  %103 = fmul fast float %76, 2.000000e+00
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
  %131 = fmul fast float %126, %70
  %132 = fmul fast float %128, %70
  %133 = fmul fast float %130, %70
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %135, %75
  %138 = fmul fast float %136, %76
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
  %160 = fmul fast float %159, %76
  %161 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %162 = fmul fast float %161, %75
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
  %174 = add i32 %35, 156
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
  %186 = add i32 %35, 216
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
  %200 = add i32 %35, 36
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = and i32 %202, 65535
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %202, 16
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = add i32 %35, 288
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = and i32 %209, 65535
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %209, 16
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = fmul fast float %211, 0x3F50624DE0000000
  %215 = fmul fast float %213, 0x3F50624DE0000000
  %216 = add i32 %35, 172
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
  %228 = add i32 %35, 232
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
  %242 = add i32 %35, 52
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = and i32 %244, 65535
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %244, 16
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = add i32 %35, 304
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 65535
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %251, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = fmul fast float %253, 0x3F50624DE0000000
  %257 = fmul fast float %255, 0x3F50624DE0000000
  %258 = add i32 %35, 188
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
  %270 = add i32 %35, 248
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
  %284 = add i32 %35, 68
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = and i32 %286, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %286, 16
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = add i32 %35, 320
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = and i32 %293, 65535
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %293, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %295, 0x3F50624DE0000000
  %299 = fmul fast float %297, 0x3F50624DE0000000
  %300 = add i32 %35, 204
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
  %312 = add i32 %35, 264
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
  %326 = add i32 %35, 84
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %328, 16
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = add i32 %35, 336
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 65535
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = lshr i32 %335, 16
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = fmul fast float %337, 0x3F50624DE0000000
  %341 = fmul fast float %339, 0x3F50624DE0000000
  %342 = add i32 %35, 348
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
  %356 = add i32 %35, 472
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, 0
  %360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %360, %dx.types.Handle %72, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = fmul fast float %362, %65
  %366 = fmul fast float %363, %66
  %367 = fmul fast float %364, %67
  br label %368

; <label>:368                                     ; preds = %355, %172
  %369 = phi float [ %67, %172 ], [ %367, %355 ]
  %370 = phi float [ %66, %172 ], [ %366, %355 ]
  %371 = phi float [ %65, %172 ], [ %365, %355 ]
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 2
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %395, label %376

; <label>:376                                     ; preds = %368
  %377 = add i32 %35, 44
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %381, float %371, float 1.000000e+00
  %383 = add i32 %35, 60
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 1
  %387 = icmp ne i32 %386, 0
  %388 = select i1 %387, float %370, float 1.000000e+00
  %389 = add i32 %35, 76
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
  %402 = add i32 %35, 24
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = add i32 %35, 28
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = or i32 %407, %404
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %868, label %410

; <label>:410                                     ; preds = %395
  %411 = and i32 %404, 262144
  %412 = icmp ne i32 %411, 0
  %413 = select i1 %412, float %38, float 1.000000e+00
  %414 = select i1 %412, float %39, float 0.000000e+00
  %415 = select i1 %412, float %40, float 0.000000e+00
  %416 = select i1 %412, float %41, float 1.000000e+00
  %417 = select i1 %412, float %42, float %63
  %418 = select i1 %412, float %43, float %64
  %419 = add i32 %35, 284
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 16
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = fmul fast float %423, 0x3F50624DE0000000
  %425 = add i32 %35, 88
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  %430 = lshr i32 %427, 24
  %431 = add i32 %35, 292
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = add i32 %35, 32
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
  %484 = add i32 %35, 228
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
  %514 = add i32 %35, 360
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = add i32 %516, 0
  %518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %519 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %518, %dx.types.Handle %71, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %537 = add i32 %35, 440
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %539, 0
  %541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %72, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %551 = add i32 %35, 224
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %35, 228
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
  %579 = add i32 %35, 220
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
  %718 = add i32 %35, 356
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
  %732 = add i32 %35, 92
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %35, 376
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = add i32 %737, 0
  %739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %738, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %740 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %739, %dx.types.Handle %71, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %784 = add i32 %35, 280
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
  %808 = add i32 %35, 160
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
  %819 = add i32 %35, 392
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = add i32 %821, 0
  %823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.i32 %824, 0
  %826 = and i32 %825, 131072
  %827 = icmp eq i32 %826, 0
  %828 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %823, %dx.types.Handle %71, float %509, float %510, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %855 = add i32 %35, 96
  %856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.i32 %856, 0
  %858 = and i32 %857, 255
  %859 = uitofp i32 %858 to float
  %860 = lshr i32 %857, 8
  %861 = and i32 %860, 255
  %862 = uitofp i32 %861 to float
  %863 = call float @dx.op.dot3.f32(i32 55, float %724, float %725, float %726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %864 = fmul fast float %862, %863
  %865 = fadd fast float %864, %859
  %866 = fmul fast float %865, 0x3F70101020000000
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  br label %868

; <label>:868                                     ; preds = %851, %395
  %869 = phi float [ 0.000000e+00, %395 ], [ %805, %851 ]
  %870 = phi float [ 0.000000e+00, %395 ], [ %806, %851 ]
  %871 = phi float [ 0.000000e+00, %395 ], [ %724, %851 ]
  %872 = phi float [ 0.000000e+00, %395 ], [ %725, %851 ]
  %873 = phi float [ 0.000000e+00, %395 ], [ %726, %851 ]
  %874 = phi float [ 0.000000e+00, %395 ], [ %852, %851 ]
  %875 = phi float [ 0.000000e+00, %395 ], [ %853, %851 ]
  %876 = phi float [ 0.000000e+00, %395 ], [ %854, %851 ]
  %877 = phi float [ 0.000000e+00, %395 ], [ %710, %851 ]
  %878 = phi float [ 0.000000e+00, %395 ], [ 1.000000e+00, %851 ]
  %879 = phi float [ 0.000000e+00, %395 ], [ %804, %851 ]
  %880 = phi float [ 0.000000e+00, %395 ], [ %807, %851 ]
  %881 = phi float [ 0.000000e+00, %395 ], [ %867, %851 ]
  br i1 %346, label %1723, label %882

; <label>:882                                     ; preds = %868
  %883 = icmp ult i32 %401, 2
  %884 = add i32 %35, 40
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = add i32 %35, 44
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = or i32 %889, %886
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %1723, label %892

; <label>:892                                     ; preds = %882
  %893 = and i32 %886, 262144
  %894 = icmp ne i32 %893, 0
  %895 = select i1 %894, float %38, float 1.000000e+00
  %896 = select i1 %894, float %39, float 0.000000e+00
  %897 = select i1 %894, float %40, float 0.000000e+00
  %898 = select i1 %894, float %41, float 1.000000e+00
  %899 = select i1 %894, float %42, float %63
  %900 = select i1 %894, float %43, float %64
  %901 = add i32 %35, 300
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = lshr i32 %903, 16
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = fmul fast float %905, 0x3F50624DE0000000
  %907 = add i32 %35, 104
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = lshr i32 %909, 16
  %911 = and i32 %910, 255
  %912 = lshr i32 %909, 24
  %913 = add i32 %35, 308
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = and i32 %915, 65535
  %917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %916)  ; LegacyF16ToF32(value)
  %918 = lshr i32 %915, 16
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = add i32 %35, 48
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = lshr i32 %922, 22
  %924 = shl nuw nsw i32 %923, 5
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = shl i32 %922, 4
  %927 = and i32 %926, 32752
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = lshr i32 %922, 7
  %930 = and i32 %929, 32752
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %933 = extractvalue %dx.types.CBufRet.f32 %932, 3
  %934 = fmul fast float %933, 1.000000e+03
  %935 = fmul fast float %256, %934
  %936 = call float @dx.op.unary.f32(i32 22, float %935)  ; Frc(value)
  %937 = fadd fast float %936, %246
  %938 = fmul fast float %257, %934
  %939 = call float @dx.op.unary.f32(i32 22, float %938)  ; Frc(value)
  %940 = fadd fast float %939, %248
  %941 = fmul fast float %906, %934
  %942 = call float @dx.op.unary.f32(i32 22, float %941)  ; Frc(value)
  %943 = fmul fast float %942, 0x401921FB60000000
  %944 = fadd fast float %943, %925
  %945 = call float @dx.op.unary.f32(i32 13, float %944)  ; Sin(value)
  %946 = call float @dx.op.unary.f32(i32 12, float %944)  ; Cos(value)
  %947 = fsub fast float -0.000000e+00, %945
  %948 = fadd fast float %899, -5.000000e-01
  %949 = fadd fast float %900, -5.000000e-01
  %950 = fmul fast float %917, %948
  %951 = fmul fast float %919, %949
  %952 = fadd fast float %950, 5.000000e-01
  %953 = fadd fast float %951, 5.000000e-01
  %954 = fmul fast float %928, %952
  %955 = fmul fast float %931, %953
  %956 = fmul fast float %946, %954
  %957 = call float @dx.op.tertiary.f32(i32 46, float %947, float %955, float %956)  ; FMad(a,b,c)
  %958 = fmul fast float %945, %954
  %959 = call float @dx.op.tertiary.f32(i32 46, float %946, float %955, float %958)  ; FMad(a,b,c)
  %960 = fadd fast float %937, %957
  %961 = fadd fast float %940, %959
  %962 = icmp ugt i32 %911, 1
  %963 = icmp ugt i32 %909, 33554431
  %964 = or i1 %963, %962
  br i1 %964, label %965, label %990

; <label>:965                                     ; preds = %892
  %966 = add i32 %35, 244
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = fmul fast float %933, %970
  %972 = call float @dx.op.unary.f32(i32 22, float %971)  ; Frc(value)
  %973 = mul nuw nsw i32 %911, %912
  %974 = uitofp i32 %973 to float
  %975 = fmul fast float %972, %974
  %976 = call float @dx.op.unary.f32(i32 27, float %975)  ; Round_ni(value)
  %977 = fptoui float %976 to i32
  %978 = urem i32 %977, %911
  %979 = udiv i32 %977, %912
  %980 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %981 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %982 = uitofp i32 %978 to float
  %983 = uitofp i32 %979 to float
  %984 = fadd fast float %980, %982
  %985 = fadd fast float %981, %983
  %986 = uitofp i32 %911 to float
  %987 = uitofp i32 %912 to float
  %988 = fdiv fast float %984, %986
  %989 = fdiv fast float %985, %987
  br label %990

; <label>:990                                     ; preds = %965, %892
  %991 = phi float [ %988, %965 ], [ %960, %892 ]
  %992 = phi float [ %989, %965 ], [ %961, %892 ]
  %993 = and i32 %886, 16777216
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %1104, label %995

; <label>:995                                     ; preds = %990
  %996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %997 = extractvalue %dx.types.CBufRet.f32 %996, 0
  %998 = extractvalue %dx.types.CBufRet.f32 %996, 1
  %999 = extractvalue %dx.types.CBufRet.f32 %996, 2
  %1000 = fadd fast float %997, %131
  %1001 = fadd fast float %998, %132
  %1002 = fadd fast float %999, %133
  %1003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1004 = extractvalue %dx.types.CBufRet.f32 %1003, 0
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = icmp eq i32 %36, 65535
  br i1 %1006, label %1101, label %1007

; <label>:1007                                    ; preds = %995
  %1008 = lshr i32 %36, 1
  %1009 = shl i32 %1008, 2
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = and i32 %36, 1
  %1013 = icmp ne i32 %1012, 0
  %1014 = lshr i32 %1011, 16
  %1015 = and i32 %1011, 65535
  %1016 = select i1 %1013, i32 %1014, i32 %1015
  %1017 = icmp eq i32 %1016, 65535
  br i1 %1017, label %1097, label %1018

; <label>:1018                                    ; preds = %1007
  %1019 = mul nuw nsw i32 %1016, 40
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = add nuw nsw i32 %1019, 12
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = add nuw nsw i32 %1019, 24
  %1030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.f32 %1030, 0
  %1032 = extractvalue %dx.types.ResRet.f32 %1030, 1
  %1033 = extractvalue %dx.types.ResRet.f32 %1030, 2
  %1034 = add nuw nsw i32 %1019, 36
  %1035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1034, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = fsub fast float %1000, %1021
  %1038 = fsub fast float %1001, %1022
  %1039 = fsub fast float %1002, %1023
  %1040 = fmul fast float %1036, %1037
  %1041 = fmul fast float %1036, %1038
  %1042 = fmul fast float %1036, %1039
  %1043 = call float @dx.op.unary.f32(i32 27, float %1040)  ; Round_ni(value)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1045 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = fmul fast float %1046, %1026
  %1050 = fmul fast float %1047, %1027
  %1051 = fmul fast float %1048, %1028
  %1052 = shl i32 %36, 2
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = add i32 %1054, 0
  %1056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1057 = call float @dx.op.unary.f32(i32 22, float %1049)  ; Frc(value)
  %1058 = call float @dx.op.unary.f32(i32 22, float %1050)  ; Frc(value)
  %1059 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1056, %dx.types.Handle %30, float %1057, float %1058, float %1059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = fmul fast float %1061, 1.023000e+03
  %1065 = fmul fast float %1062, 1.023000e+03
  %1066 = fmul fast float %1063, 1.023000e+03
  %1067 = fadd fast float %1064, 5.000000e-01
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = fsub fast float %1040, %1043
  %1074 = fsub fast float %1041, %1044
  %1075 = fsub fast float %1042, %1045
  %1076 = fmul fast float %1073, 7.500000e-01
  %1077 = fmul fast float %1074, 7.500000e-01
  %1078 = fmul fast float %1075, 7.500000e-01
  %1079 = fadd fast float %1043, 1.250000e-01
  %1080 = fadd fast float %1079, %1076
  %1081 = fadd fast float %1080, %1070
  %1082 = fadd fast float %1044, 1.250000e-01
  %1083 = fadd fast float %1082, %1077
  %1084 = fadd fast float %1083, %1071
  %1085 = fadd fast float %1045, 1.250000e-01
  %1086 = fadd fast float %1085, %1078
  %1087 = fadd fast float %1086, %1072
  %1088 = fmul fast float %1081, %1031
  %1089 = fmul fast float %1084, %1032
  %1090 = fmul fast float %1087, %1033
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1092, 0
  %1094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1094, %dx.types.Handle %28, float %1088, float %1089, float %1090, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  br label %1097

; <label>:1097                                    ; preds = %1018, %1007
  %1098 = phi float [ %1096, %1018 ], [ -1.000000e+00, %1007 ]
  %1099 = fadd fast float %1098, %1005
  %1100 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  br label %1101

; <label>:1101                                    ; preds = %1097, %995
  %1102 = phi float [ %1100, %1097 ], [ %1005, %995 ]
  %1103 = fmul fast float %1102, %398
  br label %1104

; <label>:1104                                    ; preds = %1101, %990
  %1105 = phi float [ %1103, %1101 ], [ %398, %990 ]
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 256
  %1109 = icmp eq i32 %1108, 0
  br i1 %1109, label %1156, label %1110

; <label>:1110                                    ; preds = %1104
  %1111 = add i32 %35, 428
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1115, %dx.types.Handle %72, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = add i32 %35, 116
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = shl i32 %1120, 4
  %1122 = and i32 %1121, 32752
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1120, 7
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = fsub fast float 1.000000e+00, %1105
  %1128 = call float @dx.op.binary.f32(i32 35, float %1127, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1129 = bitcast float %1105 to i32
  %1130 = sitofp i32 %1129 to float
  %1131 = fadd fast float %1130, 0xC1CFBF8940000000
  %1132 = fmul fast float %1126, %1131
  %1133 = fadd fast float %1132, 0x41CFBF8940000000
  %1134 = fptosi float %1133 to i32
  %1135 = bitcast i32 %1134 to float
  %1136 = bitcast float %1128 to i32
  %1137 = sitofp i32 %1136 to float
  %1138 = fadd fast float %1137, 0xC1CFBF8940000000
  %1139 = fmul fast float %1138, %1126
  %1140 = fadd fast float %1139, 0x41CFBF8940000000
  %1141 = fptosi float %1140 to i32
  %1142 = bitcast i32 %1141 to float
  %1143 = fmul fast float %1135, %1123
  %1144 = fmul fast float %1142, %1123
  %1145 = fsub fast float %1128, %1143
  %1146 = fadd fast float %1144, %1128
  %1147 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1148 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  %1149 = fsub fast float %1117, %1147
  %1150 = fsub fast float %1148, %1147
  %1151 = bitcast float %1150 to i32
  %1152 = sub nsw i32 2129859010, %1151
  %1153 = bitcast i32 %1152 to float
  %1154 = fmul fast float %1153, %1149
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  br label %1156

; <label>:1156                                    ; preds = %1110, %1104
  %1157 = phi float [ %1155, %1110 ], [ %1105, %1104 ]
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 128
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1178, label %1162

; <label>:1162                                    ; preds = %1156
  %1163 = add i32 %35, 412
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = add i32 %1165, 0
  %1167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1167, %dx.types.Handle %72, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1169 = extractvalue %dx.types.ResRet.f32 %1168, 0
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 524288
  %1173 = icmp ne i32 %1172, 0
  %1174 = fcmp fast ogt float %1169, 0x3FE0101020000000
  %1175 = select i1 %1174, float 1.000000e+00, float 0.000000e+00
  %1176 = select i1 %1173, float %1175, float %1169
  %1177 = fmul fast float %1176, %1157
  br label %1178

; <label>:1178                                    ; preds = %1162, %1156
  %1179 = phi float [ %1177, %1162 ], [ %1157, %1156 ]
  %1180 = fcmp fast ult float %1179, 0x3F70101020000000
  br i1 %1180, label %1723, label %1181

; <label>:1181                                    ; preds = %1178
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 16
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1384, label %1186

; <label>:1186                                    ; preds = %1181
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %35, 364
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %1191, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1193, %dx.types.Handle %71, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = extractvalue %dx.types.ResRet.f32 %1194, 1
  %1197 = extractvalue %dx.types.ResRet.f32 %1194, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1194, 3
  %1199 = and i32 %1188, 255
  %1200 = uitofp i32 %1199 to float
  %1201 = lshr i32 %1188, 8
  %1202 = and i32 %1201, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = fmul fast float %1198, %1200
  %1205 = fadd fast float %1204, %1203
  %1206 = fmul fast float %1205, 0x3F70101000000000
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 512
  %1210 = icmp eq i32 %1209, 0
  br i1 %1210, label %1219, label %1211

; <label>:1211                                    ; preds = %1186
  %1212 = add i32 %35, 444
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %1214, 0
  %1216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1216, %dx.types.Handle %72, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  br label %1219

; <label>:1219                                    ; preds = %1211, %1186
  %1220 = phi float [ %1218, %1211 ], [ 1.000000e+00, %1186 ]
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 33554432
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1331, label %1225

; <label>:1225                                    ; preds = %1219
  %1226 = add i32 %35, 240
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 65535
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = lshr i32 %1228, 16
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = add i32 %35, 244
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1233, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 65535
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = lshr i32 %1239, 24
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101020000000
  %1243 = and i32 %1239, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = lshr i32 %1239, 8
  %1247 = and i32 %1246, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = lshr i32 %1239, 16
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = add i32 %35, 236
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = lshr i32 %1256, 24
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1258, 0x3F70101020000000
  %1260 = and i32 %1256, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = lshr i32 %1256, 8
  %1264 = and i32 %1263, 255
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101020000000
  %1267 = lshr i32 %1256, 16
  %1268 = and i32 %1267, 255
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = bitcast float %1195 to i32
  %1272 = ashr i32 %1271, 1
  %1273 = sub nsw i32 1597463174, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1195, 5.000000e-01
  %1276 = fmul fast float %1274, %1274
  %1277 = fmul fast float %1276, %1275
  %1278 = fsub fast float 1.500000e+00, %1277
  %1279 = fmul fast float %1274, %1195
  %1280 = fmul fast float %1279, %1278
  %1281 = bitcast float %1196 to i32
  %1282 = ashr i32 %1281, 1
  %1283 = sub nsw i32 1597463174, %1282
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1196, 5.000000e-01
  %1286 = fmul fast float %1284, %1284
  %1287 = fmul fast float %1286, %1285
  %1288 = fsub fast float 1.500000e+00, %1287
  %1289 = fmul fast float %1284, %1196
  %1290 = fmul fast float %1289, %1288
  %1291 = bitcast float %1197 to i32
  %1292 = ashr i32 %1291, 1
  %1293 = sub nsw i32 1597463174, %1292
  %1294 = bitcast i32 %1293 to float
  %1295 = fmul fast float %1197, 5.000000e-01
  %1296 = fmul fast float %1294, %1294
  %1297 = fmul fast float %1296, %1295
  %1298 = fsub fast float 1.500000e+00, %1297
  %1299 = fmul fast float %1294, %1197
  %1300 = fmul fast float %1299, %1298
  %1301 = fsub fast float %1280, %1262
  %1302 = fsub fast float %1290, %1266
  %1303 = fsub fast float %1300, %1270
  %1304 = fmul fast float %1301, %1230
  %1305 = fmul fast float %1302, %1232
  %1306 = fmul fast float %1303, %1237
  %1307 = fadd fast float %1304, %1245
  %1308 = fadd fast float %1305, %1249
  %1309 = fadd fast float %1306, %1253
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = call float @dx.op.unary.f32(i32 7, float %1309)  ; Saturate(value)
  %1313 = fmul fast float %1310, %1310
  %1314 = fmul fast float %1311, %1311
  %1315 = fmul fast float %1312, %1312
  %1316 = fsub fast float %1313, %1195
  %1317 = fsub fast float %1314, %1196
  %1318 = fsub fast float %1315, %1197
  %1319 = fmul fast float %1316, %1220
  %1320 = fmul fast float %1317, %1220
  %1321 = fmul fast float %1318, %1220
  %1322 = fadd fast float %1319, %1195
  %1323 = fadd fast float %1320, %1196
  %1324 = fadd fast float %1321, %1197
  %1325 = fadd fast float %1242, %1206
  %1326 = fsub fast float %1325, %1259
  %1327 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1328 = fsub fast float %1327, %1206
  %1329 = fmul fast float %1328, %1220
  %1330 = fadd fast float %1329, %1206
  br label %1384

; <label>:1331                                    ; preds = %1219
  %1332 = and i32 %1222, 134217728
  %1333 = icmp eq i32 %1332, 0
  br i1 %1333, label %1368, label %1334

; <label>:1334                                    ; preds = %1331
  %1335 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %241)  ; Sqrt(value)
  %1338 = fadd fast float %1335, -5.000000e-01
  %1339 = fadd fast float %1336, -5.000000e-01
  %1340 = fadd fast float %1337, -5.000000e-01
  %1341 = fmul fast float %1338, %1220
  %1342 = fmul fast float %1339, %1220
  %1343 = fmul fast float %1340, %1220
  %1344 = fadd fast float %1341, 5.000000e-01
  %1345 = fadd fast float %1342, 5.000000e-01
  %1346 = fadd fast float %1343, 5.000000e-01
  %1347 = call float @dx.op.unary.f32(i32 24, float %1195)  ; Sqrt(value)
  %1348 = call float @dx.op.unary.f32(i32 24, float %1196)  ; Sqrt(value)
  %1349 = call float @dx.op.unary.f32(i32 24, float %1197)  ; Sqrt(value)
  %1350 = fmul fast float %1344, 2.000000e+00
  %1351 = fsub fast float 1.000000e+00, %1350
  %1352 = fmul fast float %1351, %1347
  %1353 = fadd fast float %1352, %1350
  %1354 = fmul fast float %1353, %1347
  %1355 = fmul fast float %1345, 2.000000e+00
  %1356 = fsub fast float 1.000000e+00, %1355
  %1357 = fmul fast float %1356, %1348
  %1358 = fadd fast float %1357, %1355
  %1359 = fmul fast float %1358, %1348
  %1360 = fmul fast float %1346, 2.000000e+00
  %1361 = fsub fast float 1.000000e+00, %1360
  %1362 = fmul fast float %1361, %1349
  %1363 = fadd fast float %1362, %1360
  %1364 = fmul fast float %1363, %1349
  %1365 = fmul fast float %1354, %1354
  %1366 = fmul fast float %1359, %1359
  %1367 = fmul fast float %1364, %1364
  br label %1384

; <label>:1368                                    ; preds = %1331
  %1369 = fmul fast float %233, %233
  %1370 = fmul fast float %237, %237
  %1371 = fmul fast float %241, %241
  %1372 = fadd fast float %1369, -1.000000e+00
  %1373 = fadd fast float %1370, -1.000000e+00
  %1374 = fadd fast float %1371, -1.000000e+00
  %1375 = fmul fast float %1220, %1372
  %1376 = fmul fast float %1220, %1373
  %1377 = fmul fast float %1220, %1374
  %1378 = fadd fast float %1375, 1.000000e+00
  %1379 = fadd fast float %1376, 1.000000e+00
  %1380 = fadd fast float %1377, 1.000000e+00
  %1381 = fmul fast float %1378, %1195
  %1382 = fmul fast float %1379, %1196
  %1383 = fmul fast float %1380, %1197
  br label %1384

; <label>:1384                                    ; preds = %1368, %1334, %1225, %1181
  %1385 = phi float [ %1330, %1225 ], [ %1206, %1334 ], [ %1206, %1368 ], [ 0x3FA23C0BE0000000, %1181 ]
  %1386 = phi float [ %1322, %1225 ], [ %1365, %1334 ], [ %1381, %1368 ], [ 1.000000e+00, %1181 ]
  %1387 = phi float [ %1323, %1225 ], [ %1366, %1334 ], [ %1382, %1368 ], [ 1.000000e+00, %1181 ]
  %1388 = phi float [ %1324, %1225 ], [ %1367, %1334 ], [ %1383, %1368 ], [ 1.000000e+00, %1181 ]
  %1389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.i32 %1389, 1
  %1391 = and i32 %1390, 1
  %1392 = icmp ne i32 %1391, 0
  %1393 = add i32 %35, 356
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 32
  %1397 = icmp ne i32 %1396, 0
  %1398 = and i1 %1392, %1397
  %1399 = select i1 %1398, float 1.000000e+00, float %1386
  %1400 = select i1 %1398, float 0x3FD3333340000000, float %1387
  %1401 = select i1 %1398, float 0x3FD3333340000000, float %1388
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = and i32 %1403, 32
  %1405 = icmp eq i32 %1404, 0
  br i1 %1405, label %1478, label %1406

; <label>:1406                                    ; preds = %1384
  %1407 = add i32 %35, 108
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = add i32 %35, 380
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %1412, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1413, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1414, %dx.types.Handle %71, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1415, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1415, 2
  %1419 = extractvalue %dx.types.ResRet.f32 %1415, 3
  %1420 = and i32 %1409, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = lshr i32 %1409, 8
  %1423 = and i32 %1422, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = lshr i32 %1409, 16
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101000000000
  %1429 = fmul fast float %1416, %1421
  %1430 = fadd fast float %1429, %1424
  %1431 = fmul fast float %1430, 0x3F70101000000000
  %1432 = fadd fast float %1417, -5.000000e-01
  %1433 = fadd fast float %1419, -5.000000e-01
  %1434 = fmul fast float %1432, %1428
  %1435 = fmul fast float %1433, %1428
  %1436 = fadd fast float %1434, 5.000000e-01
  %1437 = fadd fast float %1435, 5.000000e-01
  %1438 = fmul fast float %1436, 2.000000e+00
  %1439 = fadd fast float %1438, -1.000000e+00
  %1440 = fmul fast float %1437, 2.000000e+00
  %1441 = fadd fast float %1440, -1.000000e+00
  %1442 = fadd fast float %1439, %1441
  %1443 = fmul fast float %1442, 5.000000e-01
  %1444 = fsub fast float %1439, %1441
  %1445 = fmul fast float %1444, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 6, float %1443)  ; FAbs(value)
  %1447 = fsub fast float 1.000000e+00, %1446
  %1448 = call float @dx.op.unary.f32(i32 6, float %1445)  ; FAbs(value)
  %1449 = fsub fast float %1447, %1448
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1443, float %1445, float %1449, float %1443, float %1445, float %1449)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.unary.f32(i32 25, float %1450)  ; Rsqrt(value)
  %1452 = fmul fast float %1443, %1451
  %1453 = fmul fast float %1445, %1451
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 67108864
  %1457 = icmp eq i32 %1456, 0
  br i1 %1457, label %1474, label %1458

; <label>:1458                                    ; preds = %1406
  %1459 = add i32 %35, 296
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 65535
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 65535
  %1467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1466)  ; LegacyF16ToF32(value)
  %1468 = lshr i32 %1461, 16
  %1469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1468)  ; LegacyF16ToF32(value)
  %1470 = fsub fast float %1431, %1469
  %1471 = fmul fast float %1470, %1463
  %1472 = fadd fast float %1471, %1467
  %1473 = call float @dx.op.unary.f32(i32 7, float %1472)  ; Saturate(value)
  br label %1474

; <label>:1474                                    ; preds = %1458, %1406
  %1475 = phi float [ %1473, %1458 ], [ %1431, %1406 ]
  %1476 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %895, float %896)  ; Dot2(ax,ay,bx,by)
  %1477 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %897, float %898)  ; Dot2(ax,ay,bx,by)
  br label %1478

; <label>:1478                                    ; preds = %1474, %1384
  %1479 = phi float [ %1475, %1474 ], [ 0x3FD6666660000000, %1384 ]
  %1480 = phi float [ %1476, %1474 ], [ 0.000000e+00, %1384 ]
  %1481 = phi float [ %1477, %1474 ], [ 0.000000e+00, %1384 ]
  %1482 = phi float [ %1418, %1474 ], [ 1.000000e+00, %1384 ]
  %1483 = add i32 %35, 176
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = lshr i32 %1485, 22
  %1487 = shl nuw nsw i32 %1486, 5
  %1488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1487)  ; LegacyF16ToF32(value)
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 64
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1526, label %1493

; <label>:1493                                    ; preds = %1478
  %1494 = add i32 %35, 396
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = add i32 %1496, 0
  %1498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = and i32 %1500, 131072
  %1502 = icmp eq i32 %1501, 0
  %1503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1498, %dx.types.Handle %71, float %991, float %992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1504 = extractvalue %dx.types.ResRet.f32 %1503, 0
  %1505 = extractvalue %dx.types.ResRet.f32 %1503, 1
  %1506 = extractvalue %dx.types.ResRet.f32 %1503, 2
  %1507 = fmul fast float %1504, %221
  %1508 = fmul fast float %1505, %224
  %1509 = fmul fast float %1506, %227
  br i1 %1502, label %1516, label %1510

; <label>:1510                                    ; preds = %1493
  %1511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1512 = extractvalue %dx.types.CBufRet.f32 %1511, 0
  %1513 = fmul fast float %1512, %1507
  %1514 = fmul fast float %1512, %1508
  %1515 = fmul fast float %1512, %1509
  br label %1516

; <label>:1516                                    ; preds = %1510, %1493
  %1517 = phi float [ %1513, %1510 ], [ %1507, %1493 ]
  %1518 = phi float [ %1514, %1510 ], [ %1508, %1493 ]
  %1519 = phi float [ %1515, %1510 ], [ %1509, %1493 ]
  %1520 = fmul fast float %1517, %1488
  %1521 = select i1 %173, float %1520, float %1517
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1518, float %1519, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = select i1 %173, float 0.000000e+00, float %1517
  %1524 = select i1 %173, float %1522, float %1518
  %1525 = select i1 %173, float 0.000000e+00, float %1519
  br label %1526

; <label>:1526                                    ; preds = %1516, %1478
  %1527 = phi float [ %1523, %1516 ], [ 0.000000e+00, %1478 ]
  %1528 = phi float [ %1524, %1516 ], [ 0.000000e+00, %1478 ]
  %1529 = phi float [ %1525, %1516 ], [ 0.000000e+00, %1478 ]
  %1530 = add i32 %35, 112
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = lshr i32 %1532, 8
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = call float @dx.op.dot3.f32(i32 55, float %1399, float %1400, float %1401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1539 = fmul fast float %1537, %1538
  %1540 = fadd fast float %1539, %1534
  %1541 = fmul fast float %1540, 0x3F70101020000000
  %1542 = call float @dx.op.unary.f32(i32 7, float %1541)  ; Saturate(value)
  br i1 %883, label %1543, label %1551

; <label>:1543                                    ; preds = %1526
  %1544 = fsub fast float 1.000000e+00, %1179
  %1545 = fmul fast float %1544, %871
  %1546 = fmul fast float %1544, %872
  %1547 = fmul fast float %1544, %873
  %1548 = fmul fast float %1544, %874
  %1549 = fmul fast float %1544, %875
  %1550 = fmul fast float %1544, %876
  br label %1551

; <label>:1551                                    ; preds = %1543, %1526
  %1552 = phi float [ %1545, %1543 ], [ %871, %1526 ]
  %1553 = phi float [ %1546, %1543 ], [ %872, %1526 ]
  %1554 = phi float [ %1547, %1543 ], [ %873, %1526 ]
  %1555 = phi float [ %1548, %1543 ], [ %874, %1526 ]
  %1556 = phi float [ %1549, %1543 ], [ %875, %1526 ]
  %1557 = phi float [ %1550, %1543 ], [ %876, %1526 ]
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 3
  %1561 = icmp eq i32 %1560, 3
  br i1 %1561, label %1640, label %1562

; <label>:1562                                    ; preds = %1551
  %1563 = and i32 %1559, 16
  %1564 = icmp ne i32 %1563, 0
  %1565 = select i1 %1564, float %1179, float 0.000000e+00
  %1566 = icmp eq i32 %1560, 0
  br i1 %1566, label %1567, label %1595

; <label>:1567                                    ; preds = %1562
  %1568 = and i32 %1559, 64
  %1569 = icmp ne i32 %1568, 0
  %1570 = select i1 %1569, float %1179, float 0.000000e+00
  %1571 = fsub fast float %1399, %1552
  %1572 = fsub fast float %1400, %1553
  %1573 = fsub fast float %1401, %1554
  %1574 = fmul fast float %1565, %1571
  %1575 = fmul fast float %1565, %1572
  %1576 = fmul fast float %1565, %1573
  %1577 = fadd fast float %1574, %1552
  %1578 = fadd fast float %1575, %1553
  %1579 = fadd fast float %1576, %1554
  %1580 = fsub fast float %1385, %877
  %1581 = fmul fast float %1565, %1580
  %1582 = fadd fast float %1581, %877
  %1583 = fsub fast float %1527, %1555
  %1584 = fsub fast float %1528, %1556
  %1585 = fsub fast float %1529, %1557
  %1586 = fmul fast float %1570, %1583
  %1587 = fmul fast float %1570, %1584
  %1588 = fmul fast float %1570, %1585
  %1589 = fadd fast float %1586, %1555
  %1590 = fadd fast float %1587, %1556
  %1591 = fadd fast float %1588, %1557
  %1592 = fsub fast float %1542, %881
  %1593 = fmul fast float %1565, %1592
  %1594 = fadd fast float %1593, %881
  br label %1640

; <label>:1595                                    ; preds = %1562
  %1596 = icmp eq i32 %1560, 1
  br i1 %1596, label %1597, label %1610

; <label>:1597                                    ; preds = %1595
  %1598 = fadd fast float %1399, -1.000000e+00
  %1599 = fadd fast float %1400, -1.000000e+00
  %1600 = fadd fast float %1401, -1.000000e+00
  %1601 = fmul fast float %1565, %1598
  %1602 = fmul fast float %1565, %1599
  %1603 = fmul fast float %1565, %1600
  %1604 = fadd fast float %1601, 1.000000e+00
  %1605 = fadd fast float %1602, 1.000000e+00
  %1606 = fadd fast float %1603, 1.000000e+00
  %1607 = fmul fast float %1604, %1552
  %1608 = fmul fast float %1605, %1553
  %1609 = fmul fast float %1606, %1554
  br label %1640

; <label>:1610                                    ; preds = %1595
  %1611 = icmp eq i32 %1560, 2
  br i1 %1611, label %1612, label %1640

; <label>:1612                                    ; preds = %1610
  %1613 = call float @dx.op.unary.f32(i32 24, float %1399)  ; Sqrt(value)
  %1614 = call float @dx.op.unary.f32(i32 24, float %1400)  ; Sqrt(value)
  %1615 = call float @dx.op.unary.f32(i32 24, float %1401)  ; Sqrt(value)
  %1616 = fadd fast float %1613, -5.000000e-01
  %1617 = fadd fast float %1614, -5.000000e-01
  %1618 = fadd fast float %1615, -5.000000e-01
  %1619 = fmul fast float %1616, %1565
  %1620 = fmul fast float %1617, %1565
  %1621 = fmul fast float %1618, %1565
  %1622 = fadd fast float %1619, 5.000000e-01
  %1623 = fadd fast float %1620, 5.000000e-01
  %1624 = fadd fast float %1621, 5.000000e-01
  %1625 = fmul fast float %1622, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1552
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1552
  %1630 = fmul fast float %1623, 2.000000e+00
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = fmul fast float %1631, %1553
  %1633 = fadd fast float %1632, %1630
  %1634 = fmul fast float %1633, %1553
  %1635 = fmul fast float %1624, 2.000000e+00
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = fmul fast float %1636, %1554
  %1638 = fadd fast float %1637, %1635
  %1639 = fmul fast float %1638, %1554
  br label %1640

; <label>:1640                                    ; preds = %1612, %1610, %1597, %1567, %1551
  %1641 = phi float [ %1552, %1551 ], [ %1629, %1612 ], [ %1552, %1610 ], [ %1607, %1597 ], [ %1577, %1567 ]
  %1642 = phi float [ %1553, %1551 ], [ %1634, %1612 ], [ %1553, %1610 ], [ %1608, %1597 ], [ %1578, %1567 ]
  %1643 = phi float [ %1554, %1551 ], [ %1639, %1612 ], [ %1554, %1610 ], [ %1609, %1597 ], [ %1579, %1567 ]
  %1644 = phi float [ %1555, %1551 ], [ %1555, %1612 ], [ %1555, %1610 ], [ %1555, %1597 ], [ %1589, %1567 ]
  %1645 = phi float [ %1556, %1551 ], [ %1556, %1612 ], [ %1556, %1610 ], [ %1556, %1597 ], [ %1590, %1567 ]
  %1646 = phi float [ %1557, %1551 ], [ %1557, %1612 ], [ %1557, %1610 ], [ %1557, %1597 ], [ %1591, %1567 ]
  %1647 = phi float [ %877, %1551 ], [ %877, %1612 ], [ %877, %1610 ], [ %877, %1597 ], [ %1582, %1567 ]
  %1648 = phi float [ %881, %1551 ], [ %881, %1612 ], [ %881, %1610 ], [ %881, %1597 ], [ %1594, %1567 ]
  %1649 = and i32 %1559, 12
  %1650 = icmp eq i32 %1649, 12
  br i1 %1650, label %1723, label %1651

; <label>:1651                                    ; preds = %1640
  %1652 = and i32 %1559, 2097184
  %1653 = icmp eq i32 %1652, 2097184
  %1654 = select i1 %1653, float %1179, float 0.000000e+00
  %1655 = and i32 %1559, 4194336
  %1656 = icmp eq i32 %1655, 4194336
  %1657 = select i1 %1656, float %1179, float 0.000000e+00
  %1658 = and i32 %1559, 8388640
  %1659 = icmp eq i32 %1658, 8388640
  %1660 = select i1 %1659, float %1179, float 0.000000e+00
  %1661 = icmp eq i32 %1649, 0
  br i1 %1661, label %1662, label %1675

; <label>:1662                                    ; preds = %1651
  %1663 = fsub fast float %1480, %869
  %1664 = fsub fast float %1481, %870
  %1665 = fmul fast float %1654, %1663
  %1666 = fmul fast float %1654, %1664
  %1667 = fadd fast float %1665, %869
  %1668 = fadd fast float %1666, %870
  %1669 = fsub fast float %1482, %880
  %1670 = fmul fast float %1657, %1669
  %1671 = fadd fast float %1670, %880
  %1672 = fsub fast float %1479, %879
  %1673 = fmul fast float %1660, %1672
  %1674 = fadd fast float %1673, %879
  br label %1723

; <label>:1675                                    ; preds = %1651
  %1676 = icmp eq i32 %1649, 4
  br i1 %1676, label %1677, label %1709

; <label>:1677                                    ; preds = %1675
  %1678 = fmul fast float %1654, %1480
  %1679 = fmul fast float %1654, %1481
  %1680 = fadd fast float %1678, %869
  %1681 = fadd fast float %1679, %870
  %1682 = call float @dx.op.binary.f32(i32 36, float %880, float %1482)  ; FMin(a,b)
  %1683 = fsub fast float %1682, %880
  %1684 = fmul fast float %1683, %1657
  %1685 = fadd fast float %1684, %880
  %1686 = fadd fast float %1479, %879
  %1687 = fmul fast float %1686, 0x3FF337FAE0000000
  %1688 = fmul fast float %879, %879
  %1689 = fmul fast float %1479, %1479
  %1690 = fadd fast float %1689, %1688
  %1691 = fmul fast float %1690, 0x3FE5152B00000000
  %1692 = fmul fast float %879, 0xBFCC1F85E0000000
  %1693 = fmul fast float %1692, %1479
  %1694 = fadd fast float %1693, 0xBFE1363700000000
  %1695 = fadd fast float %1694, %1687
  %1696 = fsub fast float %1695, %1691
  %1697 = fmul fast float %1686, 0x3FBA6F0D00000000
  %1698 = fmul fast float %1690, 0x3FD0432880000000
  %1699 = fmul fast float %879, 0xBFEF110800000000
  %1700 = fmul fast float %1699, %1479
  %1701 = fadd fast float %1700, 1.000000e+00
  %1702 = fsub fast float %1701, %1697
  %1703 = fadd fast float %1702, %1698
  %1704 = fdiv fast float %1696, %1703
  %1705 = call float @dx.op.unary.f32(i32 7, float %1704)  ; Saturate(value)
  %1706 = fsub fast float %1705, %879
  %1707 = fmul fast float %1706, %1660
  %1708 = fadd fast float %1707, %879
  br label %1723

; <label>:1709                                    ; preds = %1675
  %1710 = icmp eq i32 %1649, 8
  br i1 %1710, label %1711, label %1723

; <label>:1711                                    ; preds = %1709
  %1712 = fmul fast float %1654, %1480
  %1713 = fmul fast float %1654, %1481
  %1714 = fadd fast float %1712, %869
  %1715 = fadd fast float %1713, %870
  %1716 = call float @dx.op.binary.f32(i32 36, float %880, float %1482)  ; FMin(a,b)
  %1717 = fsub fast float %1716, %880
  %1718 = fmul fast float %1717, %1657
  %1719 = fadd fast float %1718, %880
  %1720 = fsub fast float %1479, %879
  %1721 = fmul fast float %1660, %1720
  %1722 = fadd fast float %1721, %879
  br label %1723

; <label>:1723                                    ; preds = %1711, %1709, %1677, %1662, %1640, %1178, %882, %868
  %1724 = phi float [ %869, %1640 ], [ %869, %1178 ], [ %869, %868 ], [ %1714, %1711 ], [ %869, %1709 ], [ %1680, %1677 ], [ %1667, %1662 ], [ %869, %882 ]
  %1725 = phi float [ %870, %1640 ], [ %870, %1178 ], [ %870, %868 ], [ %1715, %1711 ], [ %870, %1709 ], [ %1681, %1677 ], [ %1668, %1662 ], [ %870, %882 ]
  %1726 = phi float [ %1641, %1640 ], [ %871, %1178 ], [ %871, %868 ], [ %1641, %1711 ], [ %1641, %1709 ], [ %1641, %1677 ], [ %1641, %1662 ], [ %871, %882 ]
  %1727 = phi float [ %1642, %1640 ], [ %872, %1178 ], [ %872, %868 ], [ %1642, %1711 ], [ %1642, %1709 ], [ %1642, %1677 ], [ %1642, %1662 ], [ %872, %882 ]
  %1728 = phi float [ %1643, %1640 ], [ %873, %1178 ], [ %873, %868 ], [ %1643, %1711 ], [ %1643, %1709 ], [ %1643, %1677 ], [ %1643, %1662 ], [ %873, %882 ]
  %1729 = phi float [ %1644, %1640 ], [ %874, %1178 ], [ %874, %868 ], [ %1644, %1711 ], [ %1644, %1709 ], [ %1644, %1677 ], [ %1644, %1662 ], [ %874, %882 ]
  %1730 = phi float [ %1645, %1640 ], [ %875, %1178 ], [ %875, %868 ], [ %1645, %1711 ], [ %1645, %1709 ], [ %1645, %1677 ], [ %1645, %1662 ], [ %875, %882 ]
  %1731 = phi float [ %1646, %1640 ], [ %876, %1178 ], [ %876, %868 ], [ %1646, %1711 ], [ %1646, %1709 ], [ %1646, %1677 ], [ %1646, %1662 ], [ %876, %882 ]
  %1732 = phi float [ %1647, %1640 ], [ %877, %1178 ], [ %877, %868 ], [ %1647, %1711 ], [ %1647, %1709 ], [ %1647, %1677 ], [ %1647, %1662 ], [ %877, %882 ]
  %1733 = phi float [ %879, %1640 ], [ %879, %1178 ], [ %879, %868 ], [ %1722, %1711 ], [ %879, %1709 ], [ %1708, %1677 ], [ %1674, %1662 ], [ %879, %882 ]
  %1734 = phi float [ %880, %1640 ], [ %880, %1178 ], [ %880, %868 ], [ %1719, %1711 ], [ %880, %1709 ], [ %1685, %1677 ], [ %1671, %1662 ], [ %880, %882 ]
  %1735 = phi float [ %1648, %1640 ], [ %881, %1178 ], [ %881, %868 ], [ %1648, %1711 ], [ %1648, %1709 ], [ %1648, %1677 ], [ %1648, %1662 ], [ %881, %882 ]
  br i1 %348, label %2577, label %1736

; <label>:1736                                    ; preds = %1723
  %1737 = icmp ult i32 %401, 3
  %1738 = add i32 %35, 56
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = add i32 %35, 60
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = or i32 %1743, %1740
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %2577, label %1746

; <label>:1746                                    ; preds = %1736
  %1747 = and i32 %1740, 262144
  %1748 = icmp ne i32 %1747, 0
  %1749 = select i1 %1748, float %38, float 1.000000e+00
  %1750 = select i1 %1748, float %39, float 0.000000e+00
  %1751 = select i1 %1748, float %40, float 0.000000e+00
  %1752 = select i1 %1748, float %41, float 1.000000e+00
  %1753 = select i1 %1748, float %42, float %63
  %1754 = select i1 %1748, float %43, float %64
  %1755 = add i32 %35, 316
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = lshr i32 %1757, 16
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = fmul fast float %1759, 0x3F50624DE0000000
  %1761 = add i32 %35, 120
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = lshr i32 %1763, 16
  %1765 = and i32 %1764, 255
  %1766 = lshr i32 %1763, 24
  %1767 = add i32 %35, 324
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 65535
  %1771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1770)  ; LegacyF16ToF32(value)
  %1772 = lshr i32 %1769, 16
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = add i32 %35, 64
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = lshr i32 %1776, 22
  %1778 = shl nuw nsw i32 %1777, 5
  %1779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1778)  ; LegacyF16ToF32(value)
  %1780 = shl i32 %1776, 4
  %1781 = and i32 %1780, 32752
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = lshr i32 %1776, 7
  %1784 = and i32 %1783, 32752
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1787 = extractvalue %dx.types.CBufRet.f32 %1786, 3
  %1788 = fmul fast float %1787, 1.000000e+03
  %1789 = fmul fast float %298, %1788
  %1790 = call float @dx.op.unary.f32(i32 22, float %1789)  ; Frc(value)
  %1791 = fadd fast float %1790, %288
  %1792 = fmul fast float %299, %1788
  %1793 = call float @dx.op.unary.f32(i32 22, float %1792)  ; Frc(value)
  %1794 = fadd fast float %1793, %290
  %1795 = fmul fast float %1760, %1788
  %1796 = call float @dx.op.unary.f32(i32 22, float %1795)  ; Frc(value)
  %1797 = fmul fast float %1796, 0x401921FB60000000
  %1798 = fadd fast float %1797, %1779
  %1799 = call float @dx.op.unary.f32(i32 13, float %1798)  ; Sin(value)
  %1800 = call float @dx.op.unary.f32(i32 12, float %1798)  ; Cos(value)
  %1801 = fsub fast float -0.000000e+00, %1799
  %1802 = fadd fast float %1753, -5.000000e-01
  %1803 = fadd fast float %1754, -5.000000e-01
  %1804 = fmul fast float %1771, %1802
  %1805 = fmul fast float %1773, %1803
  %1806 = fadd fast float %1804, 5.000000e-01
  %1807 = fadd fast float %1805, 5.000000e-01
  %1808 = fmul fast float %1782, %1806
  %1809 = fmul fast float %1785, %1807
  %1810 = fmul fast float %1800, %1808
  %1811 = call float @dx.op.tertiary.f32(i32 46, float %1801, float %1809, float %1810)  ; FMad(a,b,c)
  %1812 = fmul fast float %1799, %1808
  %1813 = call float @dx.op.tertiary.f32(i32 46, float %1800, float %1809, float %1812)  ; FMad(a,b,c)
  %1814 = fadd fast float %1791, %1811
  %1815 = fadd fast float %1794, %1813
  %1816 = icmp ugt i32 %1765, 1
  %1817 = icmp ugt i32 %1763, 33554431
  %1818 = or i1 %1817, %1816
  br i1 %1818, label %1819, label %1844

; <label>:1819                                    ; preds = %1746
  %1820 = add i32 %35, 260
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = lshr i32 %1822, 16
  %1824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1823)  ; LegacyF16ToF32(value)
  %1825 = fmul fast float %1787, %1824
  %1826 = call float @dx.op.unary.f32(i32 22, float %1825)  ; Frc(value)
  %1827 = mul nuw nsw i32 %1765, %1766
  %1828 = uitofp i32 %1827 to float
  %1829 = fmul fast float %1826, %1828
  %1830 = call float @dx.op.unary.f32(i32 27, float %1829)  ; Round_ni(value)
  %1831 = fptoui float %1830 to i32
  %1832 = urem i32 %1831, %1765
  %1833 = udiv i32 %1831, %1766
  %1834 = call float @dx.op.unary.f32(i32 22, float %1814)  ; Frc(value)
  %1835 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1836 = uitofp i32 %1832 to float
  %1837 = uitofp i32 %1833 to float
  %1838 = fadd fast float %1834, %1836
  %1839 = fadd fast float %1835, %1837
  %1840 = uitofp i32 %1765 to float
  %1841 = uitofp i32 %1766 to float
  %1842 = fdiv fast float %1838, %1840
  %1843 = fdiv fast float %1839, %1841
  br label %1844

; <label>:1844                                    ; preds = %1819, %1746
  %1845 = phi float [ %1842, %1819 ], [ %1814, %1746 ]
  %1846 = phi float [ %1843, %1819 ], [ %1815, %1746 ]
  %1847 = and i32 %1740, 16777216
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1958, label %1849

; <label>:1849                                    ; preds = %1844
  %1850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1851 = extractvalue %dx.types.CBufRet.f32 %1850, 0
  %1852 = extractvalue %dx.types.CBufRet.f32 %1850, 1
  %1853 = extractvalue %dx.types.CBufRet.f32 %1850, 2
  %1854 = fadd fast float %1851, %131
  %1855 = fadd fast float %1852, %132
  %1856 = fadd fast float %1853, %133
  %1857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1858 = extractvalue %dx.types.CBufRet.f32 %1857, 0
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = icmp eq i32 %36, 65535
  br i1 %1860, label %1955, label %1861

; <label>:1861                                    ; preds = %1849
  %1862 = lshr i32 %36, 1
  %1863 = shl i32 %1862, 2
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %36, 1
  %1867 = icmp ne i32 %1866, 0
  %1868 = lshr i32 %1865, 16
  %1869 = and i32 %1865, 65535
  %1870 = select i1 %1867, i32 %1868, i32 %1869
  %1871 = icmp eq i32 %1870, 65535
  br i1 %1871, label %1951, label %1872

; <label>:1872                                    ; preds = %1861
  %1873 = mul nuw nsw i32 %1870, 40
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.ResRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.ResRet.f32 %1874, 2
  %1878 = add nuw nsw i32 %1873, 12
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = add nuw nsw i32 %1873, 24
  %1884 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = extractvalue %dx.types.ResRet.f32 %1884, 1
  %1887 = extractvalue %dx.types.ResRet.f32 %1884, 2
  %1888 = add nuw nsw i32 %1873, 36
  %1889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.f32 %1889, 0
  %1891 = fsub fast float %1854, %1875
  %1892 = fsub fast float %1855, %1876
  %1893 = fsub fast float %1856, %1877
  %1894 = fmul fast float %1890, %1891
  %1895 = fmul fast float %1890, %1892
  %1896 = fmul fast float %1890, %1893
  %1897 = call float @dx.op.unary.f32(i32 27, float %1894)  ; Round_ni(value)
  %1898 = call float @dx.op.unary.f32(i32 27, float %1895)  ; Round_ni(value)
  %1899 = call float @dx.op.unary.f32(i32 27, float %1896)  ; Round_ni(value)
  %1900 = fadd fast float %1897, 5.000000e-01
  %1901 = fadd fast float %1898, 5.000000e-01
  %1902 = fadd fast float %1899, 5.000000e-01
  %1903 = fmul fast float %1900, %1880
  %1904 = fmul fast float %1901, %1881
  %1905 = fmul fast float %1902, %1882
  %1906 = shl i32 %36, 2
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = add i32 %1908, 0
  %1910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1911 = call float @dx.op.unary.f32(i32 22, float %1903)  ; Frc(value)
  %1912 = call float @dx.op.unary.f32(i32 22, float %1904)  ; Frc(value)
  %1913 = call float @dx.op.unary.f32(i32 22, float %1905)  ; Frc(value)
  %1914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1910, %dx.types.Handle %30, float %1911, float %1912, float %1913, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = fmul fast float %1915, 1.023000e+03
  %1919 = fmul fast float %1916, 1.023000e+03
  %1920 = fmul fast float %1917, 1.023000e+03
  %1921 = fadd fast float %1918, 5.000000e-01
  %1922 = fadd fast float %1919, 5.000000e-01
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1927 = fsub fast float %1894, %1897
  %1928 = fsub fast float %1895, %1898
  %1929 = fsub fast float %1896, %1899
  %1930 = fmul fast float %1927, 7.500000e-01
  %1931 = fmul fast float %1928, 7.500000e-01
  %1932 = fmul fast float %1929, 7.500000e-01
  %1933 = fadd fast float %1897, 1.250000e-01
  %1934 = fadd fast float %1933, %1930
  %1935 = fadd fast float %1934, %1924
  %1936 = fadd fast float %1898, 1.250000e-01
  %1937 = fadd fast float %1936, %1931
  %1938 = fadd fast float %1937, %1925
  %1939 = fadd fast float %1899, 1.250000e-01
  %1940 = fadd fast float %1939, %1932
  %1941 = fadd fast float %1940, %1926
  %1942 = fmul fast float %1935, %1885
  %1943 = fmul fast float %1938, %1886
  %1944 = fmul fast float %1941, %1887
  %1945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1946 = extractvalue %dx.types.ResRet.i32 %1945, 0
  %1947 = add i32 %1946, 0
  %1948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1948, %dx.types.Handle %28, float %1942, float %1943, float %1944, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  br label %1951

; <label>:1951                                    ; preds = %1872, %1861
  %1952 = phi float [ %1950, %1872 ], [ -1.000000e+00, %1861 ]
  %1953 = fadd fast float %1952, %1859
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  br label %1955

; <label>:1955                                    ; preds = %1951, %1849
  %1956 = phi float [ %1954, %1951 ], [ %1859, %1849 ]
  %1957 = fmul fast float %1956, %397
  br label %1958

; <label>:1958                                    ; preds = %1955, %1844
  %1959 = phi float [ %1957, %1955 ], [ %397, %1844 ]
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %1961, 256
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %2010, label %1964

; <label>:1964                                    ; preds = %1958
  %1965 = add i32 %35, 432
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %1967, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1969, %dx.types.Handle %72, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = add i32 %35, 132
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = shl i32 %1974, 4
  %1976 = and i32 %1975, 32752
  %1977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1976)  ; LegacyF16ToF32(value)
  %1978 = lshr i32 %1974, 7
  %1979 = and i32 %1978, 32752
  %1980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1979)  ; LegacyF16ToF32(value)
  %1981 = fsub fast float 1.000000e+00, %1959
  %1982 = call float @dx.op.binary.f32(i32 35, float %1981, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1983 = bitcast float %1959 to i32
  %1984 = sitofp i32 %1983 to float
  %1985 = fadd fast float %1984, 0xC1CFBF8940000000
  %1986 = fmul fast float %1980, %1985
  %1987 = fadd fast float %1986, 0x41CFBF8940000000
  %1988 = fptosi float %1987 to i32
  %1989 = bitcast i32 %1988 to float
  %1990 = bitcast float %1982 to i32
  %1991 = sitofp i32 %1990 to float
  %1992 = fadd fast float %1991, 0xC1CFBF8940000000
  %1993 = fmul fast float %1992, %1980
  %1994 = fadd fast float %1993, 0x41CFBF8940000000
  %1995 = fptosi float %1994 to i32
  %1996 = bitcast i32 %1995 to float
  %1997 = fmul fast float %1989, %1977
  %1998 = fmul fast float %1996, %1977
  %1999 = fsub fast float %1982, %1997
  %2000 = fadd fast float %1998, %1982
  %2001 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2002 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2003 = fsub fast float %1971, %2001
  %2004 = fsub fast float %2002, %2001
  %2005 = bitcast float %2004 to i32
  %2006 = sub nsw i32 2129859010, %2005
  %2007 = bitcast i32 %2006 to float
  %2008 = fmul fast float %2007, %2003
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  br label %2010

; <label>:2010                                    ; preds = %1964, %1958
  %2011 = phi float [ %2009, %1964 ], [ %1959, %1958 ]
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 128
  %2015 = icmp eq i32 %2014, 0
  br i1 %2015, label %2032, label %2016

; <label>:2016                                    ; preds = %2010
  %2017 = add i32 %35, 416
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = add i32 %2019, 0
  %2021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2022 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2021, %dx.types.Handle %72, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 524288
  %2027 = icmp ne i32 %2026, 0
  %2028 = fcmp fast ogt float %2023, 0x3FE0101020000000
  %2029 = select i1 %2028, float 1.000000e+00, float 0.000000e+00
  %2030 = select i1 %2027, float %2029, float %2023
  %2031 = fmul fast float %2030, %2011
  br label %2032

; <label>:2032                                    ; preds = %2016, %2010
  %2033 = phi float [ %2031, %2016 ], [ %2011, %2010 ]
  %2034 = fcmp fast ult float %2033, 0x3F70101020000000
  br i1 %2034, label %2577, label %2035

; <label>:2035                                    ; preds = %2032
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 16
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2238, label %2040

; <label>:2040                                    ; preds = %2035
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = add i32 %35, 368
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %2045, 0
  %2047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2047, %dx.types.Handle %71, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.ResRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.ResRet.f32 %2048, 2
  %2052 = extractvalue %dx.types.ResRet.f32 %2048, 3
  %2053 = and i32 %2042, 255
  %2054 = uitofp i32 %2053 to float
  %2055 = lshr i32 %2042, 8
  %2056 = and i32 %2055, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = fmul fast float %2052, %2054
  %2059 = fadd fast float %2058, %2057
  %2060 = fmul fast float %2059, 0x3F70101000000000
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 512
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2073, label %2065

; <label>:2065                                    ; preds = %2040
  %2066 = add i32 %35, 448
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %2068, 0
  %2070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2070, %dx.types.Handle %72, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  br label %2073

; <label>:2073                                    ; preds = %2065, %2040
  %2074 = phi float [ %2072, %2065 ], [ 1.000000e+00, %2040 ]
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 33554432
  %2078 = icmp eq i32 %2077, 0
  br i1 %2078, label %2185, label %2079

; <label>:2079                                    ; preds = %2073
  %2080 = add i32 %35, 256
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = and i32 %2082, 65535
  %2084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2083)  ; LegacyF16ToF32(value)
  %2085 = lshr i32 %2082, 16
  %2086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2085)  ; LegacyF16ToF32(value)
  %2087 = add i32 %35, 260
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2087, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = and i32 %2089, 65535
  %2091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2090)  ; LegacyF16ToF32(value)
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = lshr i32 %2093, 24
  %2095 = uitofp i32 %2094 to float
  %2096 = fmul fast float %2095, 0x3F70101020000000
  %2097 = and i32 %2093, 255
  %2098 = uitofp i32 %2097 to float
  %2099 = fmul fast float %2098, 0x3F70101020000000
  %2100 = lshr i32 %2093, 8
  %2101 = and i32 %2100, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, 0x3F70101020000000
  %2104 = lshr i32 %2093, 16
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = add i32 %35, 252
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = lshr i32 %2110, 24
  %2112 = uitofp i32 %2111 to float
  %2113 = fmul fast float %2112, 0x3F70101020000000
  %2114 = and i32 %2110, 255
  %2115 = uitofp i32 %2114 to float
  %2116 = fmul fast float %2115, 0x3F70101020000000
  %2117 = lshr i32 %2110, 8
  %2118 = and i32 %2117, 255
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = lshr i32 %2110, 16
  %2122 = and i32 %2121, 255
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = bitcast float %2049 to i32
  %2126 = ashr i32 %2125, 1
  %2127 = sub nsw i32 1597463174, %2126
  %2128 = bitcast i32 %2127 to float
  %2129 = fmul fast float %2049, 5.000000e-01
  %2130 = fmul fast float %2128, %2128
  %2131 = fmul fast float %2130, %2129
  %2132 = fsub fast float 1.500000e+00, %2131
  %2133 = fmul fast float %2128, %2049
  %2134 = fmul fast float %2133, %2132
  %2135 = bitcast float %2050 to i32
  %2136 = ashr i32 %2135, 1
  %2137 = sub nsw i32 1597463174, %2136
  %2138 = bitcast i32 %2137 to float
  %2139 = fmul fast float %2050, 5.000000e-01
  %2140 = fmul fast float %2138, %2138
  %2141 = fmul fast float %2140, %2139
  %2142 = fsub fast float 1.500000e+00, %2141
  %2143 = fmul fast float %2138, %2050
  %2144 = fmul fast float %2143, %2142
  %2145 = bitcast float %2051 to i32
  %2146 = ashr i32 %2145, 1
  %2147 = sub nsw i32 1597463174, %2146
  %2148 = bitcast i32 %2147 to float
  %2149 = fmul fast float %2051, 5.000000e-01
  %2150 = fmul fast float %2148, %2148
  %2151 = fmul fast float %2150, %2149
  %2152 = fsub fast float 1.500000e+00, %2151
  %2153 = fmul fast float %2148, %2051
  %2154 = fmul fast float %2153, %2152
  %2155 = fsub fast float %2134, %2116
  %2156 = fsub fast float %2144, %2120
  %2157 = fsub fast float %2154, %2124
  %2158 = fmul fast float %2155, %2084
  %2159 = fmul fast float %2156, %2086
  %2160 = fmul fast float %2157, %2091
  %2161 = fadd fast float %2158, %2099
  %2162 = fadd fast float %2159, %2103
  %2163 = fadd fast float %2160, %2107
  %2164 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2165 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2166 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2167 = fmul fast float %2164, %2164
  %2168 = fmul fast float %2165, %2165
  %2169 = fmul fast float %2166, %2166
  %2170 = fsub fast float %2167, %2049
  %2171 = fsub fast float %2168, %2050
  %2172 = fsub fast float %2169, %2051
  %2173 = fmul fast float %2170, %2074
  %2174 = fmul fast float %2171, %2074
  %2175 = fmul fast float %2172, %2074
  %2176 = fadd fast float %2173, %2049
  %2177 = fadd fast float %2174, %2050
  %2178 = fadd fast float %2175, %2051
  %2179 = fadd fast float %2096, %2060
  %2180 = fsub fast float %2179, %2113
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = fsub fast float %2181, %2060
  %2183 = fmul fast float %2182, %2074
  %2184 = fadd fast float %2183, %2060
  br label %2238

; <label>:2185                                    ; preds = %2073
  %2186 = and i32 %2076, 134217728
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2222, label %2188

; <label>:2188                                    ; preds = %2185
  %2189 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2190 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2191 = call float @dx.op.unary.f32(i32 24, float %283)  ; Sqrt(value)
  %2192 = fadd fast float %2189, -5.000000e-01
  %2193 = fadd fast float %2190, -5.000000e-01
  %2194 = fadd fast float %2191, -5.000000e-01
  %2195 = fmul fast float %2192, %2074
  %2196 = fmul fast float %2193, %2074
  %2197 = fmul fast float %2194, %2074
  %2198 = fadd fast float %2195, 5.000000e-01
  %2199 = fadd fast float %2196, 5.000000e-01
  %2200 = fadd fast float %2197, 5.000000e-01
  %2201 = call float @dx.op.unary.f32(i32 24, float %2049)  ; Sqrt(value)
  %2202 = call float @dx.op.unary.f32(i32 24, float %2050)  ; Sqrt(value)
  %2203 = call float @dx.op.unary.f32(i32 24, float %2051)  ; Sqrt(value)
  %2204 = fmul fast float %2198, 2.000000e+00
  %2205 = fsub fast float 1.000000e+00, %2204
  %2206 = fmul fast float %2205, %2201
  %2207 = fadd fast float %2206, %2204
  %2208 = fmul fast float %2207, %2201
  %2209 = fmul fast float %2199, 2.000000e+00
  %2210 = fsub fast float 1.000000e+00, %2209
  %2211 = fmul fast float %2210, %2202
  %2212 = fadd fast float %2211, %2209
  %2213 = fmul fast float %2212, %2202
  %2214 = fmul fast float %2200, 2.000000e+00
  %2215 = fsub fast float 1.000000e+00, %2214
  %2216 = fmul fast float %2215, %2203
  %2217 = fadd fast float %2216, %2214
  %2218 = fmul fast float %2217, %2203
  %2219 = fmul fast float %2208, %2208
  %2220 = fmul fast float %2213, %2213
  %2221 = fmul fast float %2218, %2218
  br label %2238

; <label>:2222                                    ; preds = %2185
  %2223 = fmul fast float %275, %275
  %2224 = fmul fast float %279, %279
  %2225 = fmul fast float %283, %283
  %2226 = fadd fast float %2223, -1.000000e+00
  %2227 = fadd fast float %2224, -1.000000e+00
  %2228 = fadd fast float %2225, -1.000000e+00
  %2229 = fmul fast float %2074, %2226
  %2230 = fmul fast float %2074, %2227
  %2231 = fmul fast float %2074, %2228
  %2232 = fadd fast float %2229, 1.000000e+00
  %2233 = fadd fast float %2230, 1.000000e+00
  %2234 = fadd fast float %2231, 1.000000e+00
  %2235 = fmul fast float %2232, %2049
  %2236 = fmul fast float %2233, %2050
  %2237 = fmul fast float %2234, %2051
  br label %2238

; <label>:2238                                    ; preds = %2222, %2188, %2079, %2035
  %2239 = phi float [ %2184, %2079 ], [ %2060, %2188 ], [ %2060, %2222 ], [ 0x3FA23C0BE0000000, %2035 ]
  %2240 = phi float [ %2176, %2079 ], [ %2219, %2188 ], [ %2235, %2222 ], [ 1.000000e+00, %2035 ]
  %2241 = phi float [ %2177, %2079 ], [ %2220, %2188 ], [ %2236, %2222 ], [ 1.000000e+00, %2035 ]
  %2242 = phi float [ %2178, %2079 ], [ %2221, %2188 ], [ %2237, %2222 ], [ 1.000000e+00, %2035 ]
  %2243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.i32 %2243, 1
  %2245 = and i32 %2244, 1
  %2246 = icmp ne i32 %2245, 0
  %2247 = add i32 %35, 356
  %2248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.i32 %2248, 0
  %2250 = and i32 %2249, 32
  %2251 = icmp ne i32 %2250, 0
  %2252 = and i1 %2246, %2251
  %2253 = select i1 %2252, float 1.000000e+00, float %2240
  %2254 = select i1 %2252, float 0x3FD3333340000000, float %2241
  %2255 = select i1 %2252, float 0x3FD3333340000000, float %2242
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = and i32 %2257, 32
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2332, label %2260

; <label>:2260                                    ; preds = %2238
  %2261 = add i32 %35, 124
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = add i32 %35, 384
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = add i32 %2266, 0
  %2268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2268, %dx.types.Handle %71, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.ResRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.ResRet.f32 %2269, 2
  %2273 = extractvalue %dx.types.ResRet.f32 %2269, 3
  %2274 = and i32 %2263, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = lshr i32 %2263, 8
  %2277 = and i32 %2276, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = lshr i32 %2263, 16
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = fmul fast float %2281, 0x3F70101000000000
  %2283 = fmul fast float %2270, %2275
  %2284 = fadd fast float %2283, %2278
  %2285 = fmul fast float %2284, 0x3F70101000000000
  %2286 = fadd fast float %2271, -5.000000e-01
  %2287 = fadd fast float %2273, -5.000000e-01
  %2288 = fmul fast float %2286, %2282
  %2289 = fmul fast float %2287, %2282
  %2290 = fadd fast float %2288, 5.000000e-01
  %2291 = fadd fast float %2289, 5.000000e-01
  %2292 = fmul fast float %2290, 2.000000e+00
  %2293 = fadd fast float %2292, -1.000000e+00
  %2294 = fmul fast float %2291, 2.000000e+00
  %2295 = fadd fast float %2294, -1.000000e+00
  %2296 = fadd fast float %2293, %2295
  %2297 = fmul fast float %2296, 5.000000e-01
  %2298 = fsub fast float %2293, %2295
  %2299 = fmul fast float %2298, 5.000000e-01
  %2300 = call float @dx.op.unary.f32(i32 6, float %2297)  ; FAbs(value)
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = call float @dx.op.unary.f32(i32 6, float %2299)  ; FAbs(value)
  %2303 = fsub fast float %2301, %2302
  %2304 = call float @dx.op.dot3.f32(i32 55, float %2297, float %2299, float %2303, float %2297, float %2299, float %2303)  ; Dot3(ax,ay,az,bx,by,bz)
  %2305 = call float @dx.op.unary.f32(i32 25, float %2304)  ; Rsqrt(value)
  %2306 = fmul fast float %2297, %2305
  %2307 = fmul fast float %2299, %2305
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 67108864
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2328, label %2312

; <label>:2312                                    ; preds = %2260
  %2313 = add i32 %35, 312
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = and i32 %2315, 65535
  %2317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2316)  ; LegacyF16ToF32(value)
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 65535
  %2321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2320)  ; LegacyF16ToF32(value)
  %2322 = lshr i32 %2315, 16
  %2323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2322)  ; LegacyF16ToF32(value)
  %2324 = fsub fast float %2285, %2323
  %2325 = fmul fast float %2324, %2317
  %2326 = fadd fast float %2325, %2321
  %2327 = call float @dx.op.unary.f32(i32 7, float %2326)  ; Saturate(value)
  br label %2328

; <label>:2328                                    ; preds = %2312, %2260
  %2329 = phi float [ %2327, %2312 ], [ %2285, %2260 ]
  %2330 = call float @dx.op.dot2.f32(i32 54, float %2306, float %2307, float %1749, float %1750)  ; Dot2(ax,ay,bx,by)
  %2331 = call float @dx.op.dot2.f32(i32 54, float %2306, float %2307, float %1751, float %1752)  ; Dot2(ax,ay,bx,by)
  br label %2332

; <label>:2332                                    ; preds = %2328, %2238
  %2333 = phi float [ %2329, %2328 ], [ 0x3FD6666660000000, %2238 ]
  %2334 = phi float [ %2330, %2328 ], [ 0.000000e+00, %2238 ]
  %2335 = phi float [ %2331, %2328 ], [ 0.000000e+00, %2238 ]
  %2336 = phi float [ %2272, %2328 ], [ 1.000000e+00, %2238 ]
  %2337 = add i32 %35, 192
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = lshr i32 %2339, 22
  %2341 = shl nuw nsw i32 %2340, 5
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 64
  %2346 = icmp eq i32 %2345, 0
  br i1 %2346, label %2380, label %2347

; <label>:2347                                    ; preds = %2332
  %2348 = add i32 %35, 400
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = add i32 %2350, 0
  %2352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 131072
  %2356 = icmp eq i32 %2355, 0
  %2357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2352, %dx.types.Handle %71, float %1845, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2358 = extractvalue %dx.types.ResRet.f32 %2357, 0
  %2359 = extractvalue %dx.types.ResRet.f32 %2357, 1
  %2360 = extractvalue %dx.types.ResRet.f32 %2357, 2
  %2361 = fmul fast float %2358, %263
  %2362 = fmul fast float %2359, %266
  %2363 = fmul fast float %2360, %269
  br i1 %2356, label %2370, label %2364

; <label>:2364                                    ; preds = %2347
  %2365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2366 = extractvalue %dx.types.CBufRet.f32 %2365, 0
  %2367 = fmul fast float %2366, %2361
  %2368 = fmul fast float %2366, %2362
  %2369 = fmul fast float %2366, %2363
  br label %2370

; <label>:2370                                    ; preds = %2364, %2347
  %2371 = phi float [ %2367, %2364 ], [ %2361, %2347 ]
  %2372 = phi float [ %2368, %2364 ], [ %2362, %2347 ]
  %2373 = phi float [ %2369, %2364 ], [ %2363, %2347 ]
  %2374 = fmul fast float %2371, %2342
  %2375 = select i1 %173, float %2374, float %2371
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2375, float %2372, float %2373, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = select i1 %173, float 0.000000e+00, float %2371
  %2378 = select i1 %173, float %2376, float %2372
  %2379 = select i1 %173, float 0.000000e+00, float %2373
  br label %2380

; <label>:2380                                    ; preds = %2370, %2332
  %2381 = phi float [ %2377, %2370 ], [ 0.000000e+00, %2332 ]
  %2382 = phi float [ %2378, %2370 ], [ 0.000000e+00, %2332 ]
  %2383 = phi float [ %2379, %2370 ], [ 0.000000e+00, %2332 ]
  %2384 = add i32 %35, 128
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 255
  %2388 = uitofp i32 %2387 to float
  %2389 = lshr i32 %2386, 8
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = call float @dx.op.dot3.f32(i32 55, float %2253, float %2254, float %2255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2393 = fmul fast float %2391, %2392
  %2394 = fadd fast float %2393, %2388
  %2395 = fmul fast float %2394, 0x3F70101020000000
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  br i1 %1737, label %2397, label %2405

; <label>:2397                                    ; preds = %2380
  %2398 = fsub fast float 1.000000e+00, %2033
  %2399 = fmul fast float %2398, %1726
  %2400 = fmul fast float %2398, %1727
  %2401 = fmul fast float %2398, %1728
  %2402 = fmul fast float %2398, %1729
  %2403 = fmul fast float %2398, %1730
  %2404 = fmul fast float %2398, %1731
  br label %2405

; <label>:2405                                    ; preds = %2397, %2380
  %2406 = phi float [ %2399, %2397 ], [ %1726, %2380 ]
  %2407 = phi float [ %2400, %2397 ], [ %1727, %2380 ]
  %2408 = phi float [ %2401, %2397 ], [ %1728, %2380 ]
  %2409 = phi float [ %2402, %2397 ], [ %1729, %2380 ]
  %2410 = phi float [ %2403, %2397 ], [ %1730, %2380 ]
  %2411 = phi float [ %2404, %2397 ], [ %1731, %2380 ]
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 3
  %2415 = icmp eq i32 %2414, 3
  br i1 %2415, label %2494, label %2416

; <label>:2416                                    ; preds = %2405
  %2417 = and i32 %2413, 16
  %2418 = icmp ne i32 %2417, 0
  %2419 = select i1 %2418, float %2033, float 0.000000e+00
  %2420 = icmp eq i32 %2414, 0
  br i1 %2420, label %2421, label %2449

; <label>:2421                                    ; preds = %2416
  %2422 = and i32 %2413, 64
  %2423 = icmp ne i32 %2422, 0
  %2424 = select i1 %2423, float %2033, float 0.000000e+00
  %2425 = fsub fast float %2253, %2406
  %2426 = fsub fast float %2254, %2407
  %2427 = fsub fast float %2255, %2408
  %2428 = fmul fast float %2419, %2425
  %2429 = fmul fast float %2419, %2426
  %2430 = fmul fast float %2419, %2427
  %2431 = fadd fast float %2428, %2406
  %2432 = fadd fast float %2429, %2407
  %2433 = fadd fast float %2430, %2408
  %2434 = fsub fast float %2239, %1732
  %2435 = fmul fast float %2419, %2434
  %2436 = fadd fast float %2435, %1732
  %2437 = fsub fast float %2381, %2409
  %2438 = fsub fast float %2382, %2410
  %2439 = fsub fast float %2383, %2411
  %2440 = fmul fast float %2424, %2437
  %2441 = fmul fast float %2424, %2438
  %2442 = fmul fast float %2424, %2439
  %2443 = fadd fast float %2440, %2409
  %2444 = fadd fast float %2441, %2410
  %2445 = fadd fast float %2442, %2411
  %2446 = fsub fast float %2396, %1735
  %2447 = fmul fast float %2419, %2446
  %2448 = fadd fast float %2447, %1735
  br label %2494

; <label>:2449                                    ; preds = %2416
  %2450 = icmp eq i32 %2414, 1
  br i1 %2450, label %2451, label %2464

; <label>:2451                                    ; preds = %2449
  %2452 = fadd fast float %2253, -1.000000e+00
  %2453 = fadd fast float %2254, -1.000000e+00
  %2454 = fadd fast float %2255, -1.000000e+00
  %2455 = fmul fast float %2419, %2452
  %2456 = fmul fast float %2419, %2453
  %2457 = fmul fast float %2419, %2454
  %2458 = fadd fast float %2455, 1.000000e+00
  %2459 = fadd fast float %2456, 1.000000e+00
  %2460 = fadd fast float %2457, 1.000000e+00
  %2461 = fmul fast float %2458, %2406
  %2462 = fmul fast float %2459, %2407
  %2463 = fmul fast float %2460, %2408
  br label %2494

; <label>:2464                                    ; preds = %2449
  %2465 = icmp eq i32 %2414, 2
  br i1 %2465, label %2466, label %2494

; <label>:2466                                    ; preds = %2464
  %2467 = call float @dx.op.unary.f32(i32 24, float %2253)  ; Sqrt(value)
  %2468 = call float @dx.op.unary.f32(i32 24, float %2254)  ; Sqrt(value)
  %2469 = call float @dx.op.unary.f32(i32 24, float %2255)  ; Sqrt(value)
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fadd fast float %2468, -5.000000e-01
  %2472 = fadd fast float %2469, -5.000000e-01
  %2473 = fmul fast float %2470, %2419
  %2474 = fmul fast float %2471, %2419
  %2475 = fmul fast float %2472, %2419
  %2476 = fadd fast float %2473, 5.000000e-01
  %2477 = fadd fast float %2474, 5.000000e-01
  %2478 = fadd fast float %2475, 5.000000e-01
  %2479 = fmul fast float %2476, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2406
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2406
  %2484 = fmul fast float %2477, 2.000000e+00
  %2485 = fsub fast float 1.000000e+00, %2484
  %2486 = fmul fast float %2485, %2407
  %2487 = fadd fast float %2486, %2484
  %2488 = fmul fast float %2487, %2407
  %2489 = fmul fast float %2478, 2.000000e+00
  %2490 = fsub fast float 1.000000e+00, %2489
  %2491 = fmul fast float %2490, %2408
  %2492 = fadd fast float %2491, %2489
  %2493 = fmul fast float %2492, %2408
  br label %2494

; <label>:2494                                    ; preds = %2466, %2464, %2451, %2421, %2405
  %2495 = phi float [ %2406, %2405 ], [ %2483, %2466 ], [ %2406, %2464 ], [ %2461, %2451 ], [ %2431, %2421 ]
  %2496 = phi float [ %2407, %2405 ], [ %2488, %2466 ], [ %2407, %2464 ], [ %2462, %2451 ], [ %2432, %2421 ]
  %2497 = phi float [ %2408, %2405 ], [ %2493, %2466 ], [ %2408, %2464 ], [ %2463, %2451 ], [ %2433, %2421 ]
  %2498 = phi float [ %2409, %2405 ], [ %2409, %2466 ], [ %2409, %2464 ], [ %2409, %2451 ], [ %2443, %2421 ]
  %2499 = phi float [ %2410, %2405 ], [ %2410, %2466 ], [ %2410, %2464 ], [ %2410, %2451 ], [ %2444, %2421 ]
  %2500 = phi float [ %2411, %2405 ], [ %2411, %2466 ], [ %2411, %2464 ], [ %2411, %2451 ], [ %2445, %2421 ]
  %2501 = phi float [ %1732, %2405 ], [ %1732, %2466 ], [ %1732, %2464 ], [ %1732, %2451 ], [ %2436, %2421 ]
  %2502 = phi float [ %1735, %2405 ], [ %1735, %2466 ], [ %1735, %2464 ], [ %1735, %2451 ], [ %2448, %2421 ]
  %2503 = and i32 %2413, 12
  %2504 = icmp eq i32 %2503, 12
  br i1 %2504, label %2577, label %2505

; <label>:2505                                    ; preds = %2494
  %2506 = and i32 %2413, 2097184
  %2507 = icmp eq i32 %2506, 2097184
  %2508 = select i1 %2507, float %2033, float 0.000000e+00
  %2509 = and i32 %2413, 4194336
  %2510 = icmp eq i32 %2509, 4194336
  %2511 = select i1 %2510, float %2033, float 0.000000e+00
  %2512 = and i32 %2413, 8388640
  %2513 = icmp eq i32 %2512, 8388640
  %2514 = select i1 %2513, float %2033, float 0.000000e+00
  %2515 = icmp eq i32 %2503, 0
  br i1 %2515, label %2516, label %2529

; <label>:2516                                    ; preds = %2505
  %2517 = fsub fast float %2334, %1724
  %2518 = fsub fast float %2335, %1725
  %2519 = fmul fast float %2508, %2517
  %2520 = fmul fast float %2508, %2518
  %2521 = fadd fast float %2519, %1724
  %2522 = fadd fast float %2520, %1725
  %2523 = fsub fast float %2336, %1734
  %2524 = fmul fast float %2511, %2523
  %2525 = fadd fast float %2524, %1734
  %2526 = fsub fast float %2333, %1733
  %2527 = fmul fast float %2514, %2526
  %2528 = fadd fast float %2527, %1733
  br label %2577

; <label>:2529                                    ; preds = %2505
  %2530 = icmp eq i32 %2503, 4
  br i1 %2530, label %2531, label %2563

; <label>:2531                                    ; preds = %2529
  %2532 = fmul fast float %2508, %2334
  %2533 = fmul fast float %2508, %2335
  %2534 = fadd fast float %2532, %1724
  %2535 = fadd fast float %2533, %1725
  %2536 = call float @dx.op.binary.f32(i32 36, float %1734, float %2336)  ; FMin(a,b)
  %2537 = fsub fast float %2536, %1734
  %2538 = fmul fast float %2537, %2511
  %2539 = fadd fast float %2538, %1734
  %2540 = fadd fast float %2333, %1733
  %2541 = fmul fast float %2540, 0x3FF337FAE0000000
  %2542 = fmul fast float %1733, %1733
  %2543 = fmul fast float %2333, %2333
  %2544 = fadd fast float %2543, %2542
  %2545 = fmul fast float %2544, 0x3FE5152B00000000
  %2546 = fmul fast float %1733, 0xBFCC1F85E0000000
  %2547 = fmul fast float %2546, %2333
  %2548 = fadd fast float %2547, 0xBFE1363700000000
  %2549 = fadd fast float %2548, %2541
  %2550 = fsub fast float %2549, %2545
  %2551 = fmul fast float %2540, 0x3FBA6F0D00000000
  %2552 = fmul fast float %2544, 0x3FD0432880000000
  %2553 = fmul fast float %1733, 0xBFEF110800000000
  %2554 = fmul fast float %2553, %2333
  %2555 = fadd fast float %2554, 1.000000e+00
  %2556 = fsub fast float %2555, %2551
  %2557 = fadd fast float %2556, %2552
  %2558 = fdiv fast float %2550, %2557
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2560 = fsub fast float %2559, %1733
  %2561 = fmul fast float %2560, %2514
  %2562 = fadd fast float %2561, %1733
  br label %2577

; <label>:2563                                    ; preds = %2529
  %2564 = icmp eq i32 %2503, 8
  br i1 %2564, label %2565, label %2577

; <label>:2565                                    ; preds = %2563
  %2566 = fmul fast float %2508, %2334
  %2567 = fmul fast float %2508, %2335
  %2568 = fadd fast float %2566, %1724
  %2569 = fadd fast float %2567, %1725
  %2570 = call float @dx.op.binary.f32(i32 36, float %1734, float %2336)  ; FMin(a,b)
  %2571 = fsub fast float %2570, %1734
  %2572 = fmul fast float %2571, %2511
  %2573 = fadd fast float %2572, %1734
  %2574 = fsub fast float %2333, %1733
  %2575 = fmul fast float %2514, %2574
  %2576 = fadd fast float %2575, %1733
  br label %2577

; <label>:2577                                    ; preds = %2565, %2563, %2531, %2516, %2494, %2032, %1736, %1723
  %2578 = phi float [ %1724, %2494 ], [ %1724, %2032 ], [ %1724, %1723 ], [ %2568, %2565 ], [ %1724, %2563 ], [ %2534, %2531 ], [ %2521, %2516 ], [ %1724, %1736 ]
  %2579 = phi float [ %1725, %2494 ], [ %1725, %2032 ], [ %1725, %1723 ], [ %2569, %2565 ], [ %1725, %2563 ], [ %2535, %2531 ], [ %2522, %2516 ], [ %1725, %1736 ]
  %2580 = phi float [ %2495, %2494 ], [ %1726, %2032 ], [ %1726, %1723 ], [ %2495, %2565 ], [ %2495, %2563 ], [ %2495, %2531 ], [ %2495, %2516 ], [ %1726, %1736 ]
  %2581 = phi float [ %2496, %2494 ], [ %1727, %2032 ], [ %1727, %1723 ], [ %2496, %2565 ], [ %2496, %2563 ], [ %2496, %2531 ], [ %2496, %2516 ], [ %1727, %1736 ]
  %2582 = phi float [ %2497, %2494 ], [ %1728, %2032 ], [ %1728, %1723 ], [ %2497, %2565 ], [ %2497, %2563 ], [ %2497, %2531 ], [ %2497, %2516 ], [ %1728, %1736 ]
  %2583 = phi float [ %2498, %2494 ], [ %1729, %2032 ], [ %1729, %1723 ], [ %2498, %2565 ], [ %2498, %2563 ], [ %2498, %2531 ], [ %2498, %2516 ], [ %1729, %1736 ]
  %2584 = phi float [ %2499, %2494 ], [ %1730, %2032 ], [ %1730, %1723 ], [ %2499, %2565 ], [ %2499, %2563 ], [ %2499, %2531 ], [ %2499, %2516 ], [ %1730, %1736 ]
  %2585 = phi float [ %2500, %2494 ], [ %1731, %2032 ], [ %1731, %1723 ], [ %2500, %2565 ], [ %2500, %2563 ], [ %2500, %2531 ], [ %2500, %2516 ], [ %1731, %1736 ]
  %2586 = phi float [ %2501, %2494 ], [ %1732, %2032 ], [ %1732, %1723 ], [ %2501, %2565 ], [ %2501, %2563 ], [ %2501, %2531 ], [ %2501, %2516 ], [ %1732, %1736 ]
  %2587 = phi float [ %1733, %2494 ], [ %1733, %2032 ], [ %1733, %1723 ], [ %2576, %2565 ], [ %1733, %2563 ], [ %2562, %2531 ], [ %2528, %2516 ], [ %1733, %1736 ]
  %2588 = phi float [ %1734, %2494 ], [ %1734, %2032 ], [ %1734, %1723 ], [ %2573, %2565 ], [ %1734, %2563 ], [ %2539, %2531 ], [ %2525, %2516 ], [ %1734, %1736 ]
  %2589 = phi float [ %2502, %2494 ], [ %1735, %2032 ], [ %1735, %1723 ], [ %2502, %2565 ], [ %2502, %2563 ], [ %2502, %2531 ], [ %2502, %2516 ], [ %1735, %1736 ]
  br i1 %350, label %3431, label %2590

; <label>:2590                                    ; preds = %2577
  %2591 = icmp ult i32 %401, 4
  %2592 = add i32 %35, 72
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = add i32 %35, 76
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = or i32 %2597, %2594
  %2599 = icmp eq i32 %2598, 0
  br i1 %2599, label %3431, label %2600

; <label>:2600                                    ; preds = %2590
  %2601 = and i32 %2594, 262144
  %2602 = icmp ne i32 %2601, 0
  %2603 = select i1 %2602, float %38, float 1.000000e+00
  %2604 = select i1 %2602, float %39, float 0.000000e+00
  %2605 = select i1 %2602, float %40, float 0.000000e+00
  %2606 = select i1 %2602, float %41, float 1.000000e+00
  %2607 = select i1 %2602, float %42, float %63
  %2608 = select i1 %2602, float %43, float %64
  %2609 = add i32 %35, 332
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = lshr i32 %2611, 16
  %2613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2612)  ; LegacyF16ToF32(value)
  %2614 = fmul fast float %2613, 0x3F50624DE0000000
  %2615 = add i32 %35, 136
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = lshr i32 %2617, 16
  %2619 = and i32 %2618, 255
  %2620 = lshr i32 %2617, 24
  %2621 = add i32 %35, 340
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = and i32 %2623, 65535
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = lshr i32 %2623, 16
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = add i32 %35, 80
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = lshr i32 %2630, 22
  %2632 = shl nuw nsw i32 %2631, 5
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = shl i32 %2630, 4
  %2635 = and i32 %2634, 32752
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = lshr i32 %2630, 7
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 3
  %2642 = fmul fast float %2641, 1.000000e+03
  %2643 = fmul fast float %340, %2642
  %2644 = call float @dx.op.unary.f32(i32 22, float %2643)  ; Frc(value)
  %2645 = fadd fast float %2644, %330
  %2646 = fmul fast float %341, %2642
  %2647 = call float @dx.op.unary.f32(i32 22, float %2646)  ; Frc(value)
  %2648 = fadd fast float %2647, %332
  %2649 = fmul fast float %2614, %2642
  %2650 = call float @dx.op.unary.f32(i32 22, float %2649)  ; Frc(value)
  %2651 = fmul fast float %2650, 0x401921FB60000000
  %2652 = fadd fast float %2651, %2633
  %2653 = call float @dx.op.unary.f32(i32 13, float %2652)  ; Sin(value)
  %2654 = call float @dx.op.unary.f32(i32 12, float %2652)  ; Cos(value)
  %2655 = fsub fast float -0.000000e+00, %2653
  %2656 = fadd fast float %2607, -5.000000e-01
  %2657 = fadd fast float %2608, -5.000000e-01
  %2658 = fmul fast float %2625, %2656
  %2659 = fmul fast float %2627, %2657
  %2660 = fadd fast float %2658, 5.000000e-01
  %2661 = fadd fast float %2659, 5.000000e-01
  %2662 = fmul fast float %2636, %2660
  %2663 = fmul fast float %2639, %2661
  %2664 = fmul fast float %2654, %2662
  %2665 = call float @dx.op.tertiary.f32(i32 46, float %2655, float %2663, float %2664)  ; FMad(a,b,c)
  %2666 = fmul fast float %2653, %2662
  %2667 = call float @dx.op.tertiary.f32(i32 46, float %2654, float %2663, float %2666)  ; FMad(a,b,c)
  %2668 = fadd fast float %2645, %2665
  %2669 = fadd fast float %2648, %2667
  %2670 = icmp ugt i32 %2619, 1
  %2671 = icmp ugt i32 %2617, 33554431
  %2672 = or i1 %2671, %2670
  br i1 %2672, label %2673, label %2698

; <label>:2673                                    ; preds = %2600
  %2674 = add i32 %35, 276
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = lshr i32 %2676, 16
  %2678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2677)  ; LegacyF16ToF32(value)
  %2679 = fmul fast float %2641, %2678
  %2680 = call float @dx.op.unary.f32(i32 22, float %2679)  ; Frc(value)
  %2681 = mul nuw nsw i32 %2619, %2620
  %2682 = uitofp i32 %2681 to float
  %2683 = fmul fast float %2680, %2682
  %2684 = call float @dx.op.unary.f32(i32 27, float %2683)  ; Round_ni(value)
  %2685 = fptoui float %2684 to i32
  %2686 = urem i32 %2685, %2619
  %2687 = udiv i32 %2685, %2620
  %2688 = call float @dx.op.unary.f32(i32 22, float %2668)  ; Frc(value)
  %2689 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2690 = uitofp i32 %2686 to float
  %2691 = uitofp i32 %2687 to float
  %2692 = fadd fast float %2688, %2690
  %2693 = fadd fast float %2689, %2691
  %2694 = uitofp i32 %2619 to float
  %2695 = uitofp i32 %2620 to float
  %2696 = fdiv fast float %2692, %2694
  %2697 = fdiv fast float %2693, %2695
  br label %2698

; <label>:2698                                    ; preds = %2673, %2600
  %2699 = phi float [ %2696, %2673 ], [ %2668, %2600 ]
  %2700 = phi float [ %2697, %2673 ], [ %2669, %2600 ]
  %2701 = and i32 %2594, 16777216
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2812, label %2703

; <label>:2703                                    ; preds = %2698
  %2704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2705 = extractvalue %dx.types.CBufRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.CBufRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.CBufRet.f32 %2704, 2
  %2708 = fadd fast float %2705, %131
  %2709 = fadd fast float %2706, %132
  %2710 = fadd fast float %2707, %133
  %2711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.f32 %2711, 0
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = icmp eq i32 %36, 65535
  br i1 %2714, label %2809, label %2715

; <label>:2715                                    ; preds = %2703
  %2716 = lshr i32 %36, 1
  %2717 = shl i32 %2716, 2
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = and i32 %36, 1
  %2721 = icmp ne i32 %2720, 0
  %2722 = lshr i32 %2719, 16
  %2723 = and i32 %2719, 65535
  %2724 = select i1 %2721, i32 %2722, i32 %2723
  %2725 = icmp eq i32 %2724, 65535
  br i1 %2725, label %2805, label %2726

; <label>:2726                                    ; preds = %2715
  %2727 = mul nuw nsw i32 %2724, 40
  %2728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.ResRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2728, 2
  %2732 = add nuw nsw i32 %2727, 12
  %2733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.ResRet.f32 %2733, 2
  %2737 = add nuw nsw i32 %2727, 24
  %2738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2737, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.f32 %2738, 0
  %2740 = extractvalue %dx.types.ResRet.f32 %2738, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2738, 2
  %2742 = add nuw nsw i32 %2727, 36
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = fsub fast float %2708, %2729
  %2746 = fsub fast float %2709, %2730
  %2747 = fsub fast float %2710, %2731
  %2748 = fmul fast float %2744, %2745
  %2749 = fmul fast float %2744, %2746
  %2750 = fmul fast float %2744, %2747
  %2751 = call float @dx.op.unary.f32(i32 27, float %2748)  ; Round_ni(value)
  %2752 = call float @dx.op.unary.f32(i32 27, float %2749)  ; Round_ni(value)
  %2753 = call float @dx.op.unary.f32(i32 27, float %2750)  ; Round_ni(value)
  %2754 = fadd fast float %2751, 5.000000e-01
  %2755 = fadd fast float %2752, 5.000000e-01
  %2756 = fadd fast float %2753, 5.000000e-01
  %2757 = fmul fast float %2754, %2734
  %2758 = fmul fast float %2755, %2735
  %2759 = fmul fast float %2756, %2736
  %2760 = shl i32 %36, 2
  %2761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.i32 %2761, 0
  %2763 = add i32 %2762, 0
  %2764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2765 = call float @dx.op.unary.f32(i32 22, float %2757)  ; Frc(value)
  %2766 = call float @dx.op.unary.f32(i32 22, float %2758)  ; Frc(value)
  %2767 = call float @dx.op.unary.f32(i32 22, float %2759)  ; Frc(value)
  %2768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2764, %dx.types.Handle %30, float %2765, float %2766, float %2767, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2769 = extractvalue %dx.types.ResRet.f32 %2768, 0
  %2770 = extractvalue %dx.types.ResRet.f32 %2768, 1
  %2771 = extractvalue %dx.types.ResRet.f32 %2768, 2
  %2772 = fmul fast float %2769, 1.023000e+03
  %2773 = fmul fast float %2770, 1.023000e+03
  %2774 = fmul fast float %2771, 1.023000e+03
  %2775 = fadd fast float %2772, 5.000000e-01
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2781 = fsub fast float %2748, %2751
  %2782 = fsub fast float %2749, %2752
  %2783 = fsub fast float %2750, %2753
  %2784 = fmul fast float %2781, 7.500000e-01
  %2785 = fmul fast float %2782, 7.500000e-01
  %2786 = fmul fast float %2783, 7.500000e-01
  %2787 = fadd fast float %2751, 1.250000e-01
  %2788 = fadd fast float %2787, %2784
  %2789 = fadd fast float %2788, %2778
  %2790 = fadd fast float %2752, 1.250000e-01
  %2791 = fadd fast float %2790, %2785
  %2792 = fadd fast float %2791, %2779
  %2793 = fadd fast float %2753, 1.250000e-01
  %2794 = fadd fast float %2793, %2786
  %2795 = fadd fast float %2794, %2780
  %2796 = fmul fast float %2789, %2739
  %2797 = fmul fast float %2792, %2740
  %2798 = fmul fast float %2795, %2741
  %2799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2800 = extractvalue %dx.types.ResRet.i32 %2799, 0
  %2801 = add i32 %2800, 0
  %2802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2801, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2802, %dx.types.Handle %28, float %2796, float %2797, float %2798, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2804 = extractvalue %dx.types.ResRet.f32 %2803, 0
  br label %2805

; <label>:2805                                    ; preds = %2726, %2715
  %2806 = phi float [ %2804, %2726 ], [ -1.000000e+00, %2715 ]
  %2807 = fadd fast float %2806, %2713
  %2808 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  br label %2809

; <label>:2809                                    ; preds = %2805, %2703
  %2810 = phi float [ %2808, %2805 ], [ %2713, %2703 ]
  %2811 = fmul fast float %2810, %396
  br label %2812

; <label>:2812                                    ; preds = %2809, %2698
  %2813 = phi float [ %2811, %2809 ], [ %396, %2698 ]
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 256
  %2817 = icmp eq i32 %2816, 0
  br i1 %2817, label %2864, label %2818

; <label>:2818                                    ; preds = %2812
  %2819 = add i32 %35, 436
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = add i32 %2821, 0
  %2823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2823, %dx.types.Handle %72, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2825 = extractvalue %dx.types.ResRet.f32 %2824, 0
  %2826 = add i32 %35, 148
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2826, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = shl i32 %2828, 4
  %2830 = and i32 %2829, 32752
  %2831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2830)  ; LegacyF16ToF32(value)
  %2832 = lshr i32 %2828, 7
  %2833 = and i32 %2832, 32752
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = fsub fast float 1.000000e+00, %2813
  %2836 = call float @dx.op.binary.f32(i32 35, float %2835, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2837 = bitcast float %2813 to i32
  %2838 = sitofp i32 %2837 to float
  %2839 = fadd fast float %2838, 0xC1CFBF8940000000
  %2840 = fmul fast float %2834, %2839
  %2841 = fadd fast float %2840, 0x41CFBF8940000000
  %2842 = fptosi float %2841 to i32
  %2843 = bitcast i32 %2842 to float
  %2844 = bitcast float %2836 to i32
  %2845 = sitofp i32 %2844 to float
  %2846 = fadd fast float %2845, 0xC1CFBF8940000000
  %2847 = fmul fast float %2846, %2834
  %2848 = fadd fast float %2847, 0x41CFBF8940000000
  %2849 = fptosi float %2848 to i32
  %2850 = bitcast i32 %2849 to float
  %2851 = fmul fast float %2843, %2831
  %2852 = fmul fast float %2850, %2831
  %2853 = fsub fast float %2836, %2851
  %2854 = fadd fast float %2852, %2836
  %2855 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  %2856 = call float @dx.op.unary.f32(i32 7, float %2854)  ; Saturate(value)
  %2857 = fsub fast float %2825, %2855
  %2858 = fsub fast float %2856, %2855
  %2859 = bitcast float %2858 to i32
  %2860 = sub nsw i32 2129859010, %2859
  %2861 = bitcast i32 %2860 to float
  %2862 = fmul fast float %2861, %2857
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  br label %2864

; <label>:2864                                    ; preds = %2818, %2812
  %2865 = phi float [ %2863, %2818 ], [ %2813, %2812 ]
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, 128
  %2869 = icmp eq i32 %2868, 0
  br i1 %2869, label %2886, label %2870

; <label>:2870                                    ; preds = %2864
  %2871 = add i32 %35, 420
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = add i32 %2873, 0
  %2875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2876 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2875, %dx.types.Handle %72, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 524288
  %2881 = icmp ne i32 %2880, 0
  %2882 = fcmp fast ogt float %2877, 0x3FE0101020000000
  %2883 = select i1 %2882, float 1.000000e+00, float 0.000000e+00
  %2884 = select i1 %2881, float %2883, float %2877
  %2885 = fmul fast float %2884, %2865
  br label %2886

; <label>:2886                                    ; preds = %2870, %2864
  %2887 = phi float [ %2885, %2870 ], [ %2865, %2864 ]
  %2888 = fcmp fast ult float %2887, 0x3F70101020000000
  br i1 %2888, label %3431, label %2889

; <label>:2889                                    ; preds = %2886
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 16
  %2893 = icmp eq i32 %2892, 0
  br i1 %2893, label %3092, label %2894

; <label>:2894                                    ; preds = %2889
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = add i32 %35, 372
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2901, %dx.types.Handle %71, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.ResRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.ResRet.f32 %2902, 2
  %2906 = extractvalue %dx.types.ResRet.f32 %2902, 3
  %2907 = and i32 %2896, 255
  %2908 = uitofp i32 %2907 to float
  %2909 = lshr i32 %2896, 8
  %2910 = and i32 %2909, 255
  %2911 = uitofp i32 %2910 to float
  %2912 = fmul fast float %2906, %2908
  %2913 = fadd fast float %2912, %2911
  %2914 = fmul fast float %2913, 0x3F70101000000000
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 512
  %2918 = icmp eq i32 %2917, 0
  br i1 %2918, label %2927, label %2919

; <label>:2919                                    ; preds = %2894
  %2920 = add i32 %35, 452
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %2922, 0
  %2924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2924, %dx.types.Handle %72, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  br label %2927

; <label>:2927                                    ; preds = %2919, %2894
  %2928 = phi float [ %2926, %2919 ], [ 1.000000e+00, %2894 ]
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 33554432
  %2932 = icmp eq i32 %2931, 0
  br i1 %2932, label %3039, label %2933

; <label>:2933                                    ; preds = %2927
  %2934 = add i32 %35, 272
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = and i32 %2936, 65535
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = lshr i32 %2936, 16
  %2940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2939)  ; LegacyF16ToF32(value)
  %2941 = add i32 %35, 276
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 65535
  %2945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2944)  ; LegacyF16ToF32(value)
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = lshr i32 %2947, 24
  %2949 = uitofp i32 %2948 to float
  %2950 = fmul fast float %2949, 0x3F70101020000000
  %2951 = and i32 %2947, 255
  %2952 = uitofp i32 %2951 to float
  %2953 = fmul fast float %2952, 0x3F70101020000000
  %2954 = lshr i32 %2947, 8
  %2955 = and i32 %2954, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = lshr i32 %2947, 16
  %2959 = and i32 %2958, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = add i32 %35, 268
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 24
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2966, 0x3F70101020000000
  %2968 = and i32 %2964, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = lshr i32 %2964, 8
  %2972 = and i32 %2971, 255
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = lshr i32 %2964, 16
  %2976 = and i32 %2975, 255
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = bitcast float %2903 to i32
  %2980 = ashr i32 %2979, 1
  %2981 = sub nsw i32 1597463174, %2980
  %2982 = bitcast i32 %2981 to float
  %2983 = fmul fast float %2903, 5.000000e-01
  %2984 = fmul fast float %2982, %2982
  %2985 = fmul fast float %2984, %2983
  %2986 = fsub fast float 1.500000e+00, %2985
  %2987 = fmul fast float %2982, %2903
  %2988 = fmul fast float %2987, %2986
  %2989 = bitcast float %2904 to i32
  %2990 = ashr i32 %2989, 1
  %2991 = sub nsw i32 1597463174, %2990
  %2992 = bitcast i32 %2991 to float
  %2993 = fmul fast float %2904, 5.000000e-01
  %2994 = fmul fast float %2992, %2992
  %2995 = fmul fast float %2994, %2993
  %2996 = fsub fast float 1.500000e+00, %2995
  %2997 = fmul fast float %2992, %2904
  %2998 = fmul fast float %2997, %2996
  %2999 = bitcast float %2905 to i32
  %3000 = ashr i32 %2999, 1
  %3001 = sub nsw i32 1597463174, %3000
  %3002 = bitcast i32 %3001 to float
  %3003 = fmul fast float %2905, 5.000000e-01
  %3004 = fmul fast float %3002, %3002
  %3005 = fmul fast float %3004, %3003
  %3006 = fsub fast float 1.500000e+00, %3005
  %3007 = fmul fast float %3002, %2905
  %3008 = fmul fast float %3007, %3006
  %3009 = fsub fast float %2988, %2970
  %3010 = fsub fast float %2998, %2974
  %3011 = fsub fast float %3008, %2978
  %3012 = fmul fast float %3009, %2938
  %3013 = fmul fast float %3010, %2940
  %3014 = fmul fast float %3011, %2945
  %3015 = fadd fast float %3012, %2953
  %3016 = fadd fast float %3013, %2957
  %3017 = fadd fast float %3014, %2961
  %3018 = call float @dx.op.unary.f32(i32 7, float %3015)  ; Saturate(value)
  %3019 = call float @dx.op.unary.f32(i32 7, float %3016)  ; Saturate(value)
  %3020 = call float @dx.op.unary.f32(i32 7, float %3017)  ; Saturate(value)
  %3021 = fmul fast float %3018, %3018
  %3022 = fmul fast float %3019, %3019
  %3023 = fmul fast float %3020, %3020
  %3024 = fsub fast float %3021, %2903
  %3025 = fsub fast float %3022, %2904
  %3026 = fsub fast float %3023, %2905
  %3027 = fmul fast float %3024, %2928
  %3028 = fmul fast float %3025, %2928
  %3029 = fmul fast float %3026, %2928
  %3030 = fadd fast float %3027, %2903
  %3031 = fadd fast float %3028, %2904
  %3032 = fadd fast float %3029, %2905
  %3033 = fadd fast float %2950, %2914
  %3034 = fsub fast float %3033, %2967
  %3035 = call float @dx.op.unary.f32(i32 7, float %3034)  ; Saturate(value)
  %3036 = fsub fast float %3035, %2914
  %3037 = fmul fast float %3036, %2928
  %3038 = fadd fast float %3037, %2914
  br label %3092

; <label>:3039                                    ; preds = %2927
  %3040 = and i32 %2930, 134217728
  %3041 = icmp eq i32 %3040, 0
  br i1 %3041, label %3076, label %3042

; <label>:3042                                    ; preds = %3039
  %3043 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3044 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3045 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %3046 = fadd fast float %3043, -5.000000e-01
  %3047 = fadd fast float %3044, -5.000000e-01
  %3048 = fadd fast float %3045, -5.000000e-01
  %3049 = fmul fast float %3046, %2928
  %3050 = fmul fast float %3047, %2928
  %3051 = fmul fast float %3048, %2928
  %3052 = fadd fast float %3049, 5.000000e-01
  %3053 = fadd fast float %3050, 5.000000e-01
  %3054 = fadd fast float %3051, 5.000000e-01
  %3055 = call float @dx.op.unary.f32(i32 24, float %2903)  ; Sqrt(value)
  %3056 = call float @dx.op.unary.f32(i32 24, float %2904)  ; Sqrt(value)
  %3057 = call float @dx.op.unary.f32(i32 24, float %2905)  ; Sqrt(value)
  %3058 = fmul fast float %3052, 2.000000e+00
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = fmul fast float %3059, %3055
  %3061 = fadd fast float %3060, %3058
  %3062 = fmul fast float %3061, %3055
  %3063 = fmul fast float %3053, 2.000000e+00
  %3064 = fsub fast float 1.000000e+00, %3063
  %3065 = fmul fast float %3064, %3056
  %3066 = fadd fast float %3065, %3063
  %3067 = fmul fast float %3066, %3056
  %3068 = fmul fast float %3054, 2.000000e+00
  %3069 = fsub fast float 1.000000e+00, %3068
  %3070 = fmul fast float %3069, %3057
  %3071 = fadd fast float %3070, %3068
  %3072 = fmul fast float %3071, %3057
  %3073 = fmul fast float %3062, %3062
  %3074 = fmul fast float %3067, %3067
  %3075 = fmul fast float %3072, %3072
  br label %3092

; <label>:3076                                    ; preds = %3039
  %3077 = fmul fast float %317, %317
  %3078 = fmul fast float %321, %321
  %3079 = fmul fast float %325, %325
  %3080 = fadd fast float %3077, -1.000000e+00
  %3081 = fadd fast float %3078, -1.000000e+00
  %3082 = fadd fast float %3079, -1.000000e+00
  %3083 = fmul fast float %2928, %3080
  %3084 = fmul fast float %2928, %3081
  %3085 = fmul fast float %2928, %3082
  %3086 = fadd fast float %3083, 1.000000e+00
  %3087 = fadd fast float %3084, 1.000000e+00
  %3088 = fadd fast float %3085, 1.000000e+00
  %3089 = fmul fast float %3086, %2903
  %3090 = fmul fast float %3087, %2904
  %3091 = fmul fast float %3088, %2905
  br label %3092

; <label>:3092                                    ; preds = %3076, %3042, %2933, %2889
  %3093 = phi float [ %3038, %2933 ], [ %2914, %3042 ], [ %2914, %3076 ], [ 0x3FA23C0BE0000000, %2889 ]
  %3094 = phi float [ %3030, %2933 ], [ %3073, %3042 ], [ %3089, %3076 ], [ 1.000000e+00, %2889 ]
  %3095 = phi float [ %3031, %2933 ], [ %3074, %3042 ], [ %3090, %3076 ], [ 1.000000e+00, %2889 ]
  %3096 = phi float [ %3032, %2933 ], [ %3075, %3042 ], [ %3091, %3076 ], [ 1.000000e+00, %2889 ]
  %3097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.i32 %3097, 1
  %3099 = and i32 %3098, 1
  %3100 = icmp ne i32 %3099, 0
  %3101 = add i32 %35, 356
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 32
  %3105 = icmp ne i32 %3104, 0
  %3106 = and i1 %3100, %3105
  %3107 = select i1 %3106, float 1.000000e+00, float %3094
  %3108 = select i1 %3106, float 0x3FD3333340000000, float %3095
  %3109 = select i1 %3106, float 0x3FD3333340000000, float %3096
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = and i32 %3111, 32
  %3113 = icmp eq i32 %3112, 0
  br i1 %3113, label %3186, label %3114

; <label>:3114                                    ; preds = %3092
  %3115 = add i32 %35, 140
  %3116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3115, i32 undef)  ; BufferLoad(srv,index,wot)
  %3117 = extractvalue %dx.types.ResRet.i32 %3116, 0
  %3118 = add i32 %35, 388
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = add i32 %3120, 0
  %3122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3122, %dx.types.Handle %71, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 1
  %3126 = extractvalue %dx.types.ResRet.f32 %3123, 2
  %3127 = extractvalue %dx.types.ResRet.f32 %3123, 3
  %3128 = and i32 %3117, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = lshr i32 %3117, 8
  %3131 = and i32 %3130, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = lshr i32 %3117, 16
  %3134 = and i32 %3133, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = fmul fast float %3135, 0x3F70101000000000
  %3137 = fmul fast float %3124, %3129
  %3138 = fadd fast float %3137, %3132
  %3139 = fmul fast float %3138, 0x3F70101000000000
  %3140 = fadd fast float %3125, -5.000000e-01
  %3141 = fadd fast float %3127, -5.000000e-01
  %3142 = fmul fast float %3140, %3136
  %3143 = fmul fast float %3141, %3136
  %3144 = fadd fast float %3142, 5.000000e-01
  %3145 = fadd fast float %3143, 5.000000e-01
  %3146 = fmul fast float %3144, 2.000000e+00
  %3147 = fadd fast float %3146, -1.000000e+00
  %3148 = fmul fast float %3145, 2.000000e+00
  %3149 = fadd fast float %3148, -1.000000e+00
  %3150 = fadd fast float %3147, %3149
  %3151 = fmul fast float %3150, 5.000000e-01
  %3152 = fsub fast float %3147, %3149
  %3153 = fmul fast float %3152, 5.000000e-01
  %3154 = call float @dx.op.unary.f32(i32 6, float %3151)  ; FAbs(value)
  %3155 = fsub fast float 1.000000e+00, %3154
  %3156 = call float @dx.op.unary.f32(i32 6, float %3153)  ; FAbs(value)
  %3157 = fsub fast float %3155, %3156
  %3158 = call float @dx.op.dot3.f32(i32 55, float %3151, float %3153, float %3157, float %3151, float %3153, float %3157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3159 = call float @dx.op.unary.f32(i32 25, float %3158)  ; Rsqrt(value)
  %3160 = fmul fast float %3151, %3159
  %3161 = fmul fast float %3153, %3159
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 67108864
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3182, label %3166

; <label>:3166                                    ; preds = %3114
  %3167 = add i32 %35, 328
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = and i32 %3173, 65535
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = lshr i32 %3169, 16
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = fsub fast float %3139, %3177
  %3179 = fmul fast float %3178, %3171
  %3180 = fadd fast float %3179, %3175
  %3181 = call float @dx.op.unary.f32(i32 7, float %3180)  ; Saturate(value)
  br label %3182

; <label>:3182                                    ; preds = %3166, %3114
  %3183 = phi float [ %3181, %3166 ], [ %3139, %3114 ]
  %3184 = call float @dx.op.dot2.f32(i32 54, float %3160, float %3161, float %2603, float %2604)  ; Dot2(ax,ay,bx,by)
  %3185 = call float @dx.op.dot2.f32(i32 54, float %3160, float %3161, float %2605, float %2606)  ; Dot2(ax,ay,bx,by)
  br label %3186

; <label>:3186                                    ; preds = %3182, %3092
  %3187 = phi float [ %3183, %3182 ], [ 0x3FD6666660000000, %3092 ]
  %3188 = phi float [ %3184, %3182 ], [ 0.000000e+00, %3092 ]
  %3189 = phi float [ %3185, %3182 ], [ 0.000000e+00, %3092 ]
  %3190 = phi float [ %3126, %3182 ], [ 1.000000e+00, %3092 ]
  %3191 = add i32 %35, 208
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = lshr i32 %3193, 22
  %3195 = shl nuw nsw i32 %3194, 5
  %3196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3195)  ; LegacyF16ToF32(value)
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 64
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3234, label %3201

; <label>:3201                                    ; preds = %3186
  %3202 = add i32 %35, 404
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = add i32 %3204, 0
  %3206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 131072
  %3210 = icmp eq i32 %3209, 0
  %3211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3206, %dx.types.Handle %71, float %2699, float %2700, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.ResRet.f32 %3211, 1
  %3214 = extractvalue %dx.types.ResRet.f32 %3211, 2
  %3215 = fmul fast float %3212, %305
  %3216 = fmul fast float %3213, %308
  %3217 = fmul fast float %3214, %311
  br i1 %3210, label %3224, label %3218

; <label>:3218                                    ; preds = %3201
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3221 = fmul fast float %3220, %3215
  %3222 = fmul fast float %3220, %3216
  %3223 = fmul fast float %3220, %3217
  br label %3224

; <label>:3224                                    ; preds = %3218, %3201
  %3225 = phi float [ %3221, %3218 ], [ %3215, %3201 ]
  %3226 = phi float [ %3222, %3218 ], [ %3216, %3201 ]
  %3227 = phi float [ %3223, %3218 ], [ %3217, %3201 ]
  %3228 = fmul fast float %3225, %3196
  %3229 = select i1 %173, float %3228, float %3225
  %3230 = call float @dx.op.dot3.f32(i32 55, float %3229, float %3226, float %3227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3231 = select i1 %173, float 0.000000e+00, float %3225
  %3232 = select i1 %173, float %3230, float %3226
  %3233 = select i1 %173, float 0.000000e+00, float %3227
  br label %3234

; <label>:3234                                    ; preds = %3224, %3186
  %3235 = phi float [ %3231, %3224 ], [ 0.000000e+00, %3186 ]
  %3236 = phi float [ %3232, %3224 ], [ 0.000000e+00, %3186 ]
  %3237 = phi float [ %3233, %3224 ], [ 0.000000e+00, %3186 ]
  %3238 = add i32 %35, 144
  %3239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3238, i32 undef)  ; BufferLoad(srv,index,wot)
  %3240 = extractvalue %dx.types.ResRet.i32 %3239, 0
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = lshr i32 %3240, 8
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = call float @dx.op.dot3.f32(i32 55, float %3107, float %3108, float %3109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3247 = fmul fast float %3245, %3246
  %3248 = fadd fast float %3247, %3242
  %3249 = fmul fast float %3248, 0x3F70101020000000
  %3250 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  br i1 %2591, label %3251, label %3259

; <label>:3251                                    ; preds = %3234
  %3252 = fsub fast float 1.000000e+00, %2887
  %3253 = fmul fast float %3252, %2580
  %3254 = fmul fast float %3252, %2581
  %3255 = fmul fast float %3252, %2582
  %3256 = fmul fast float %3252, %2583
  %3257 = fmul fast float %3252, %2584
  %3258 = fmul fast float %3252, %2585
  br label %3259

; <label>:3259                                    ; preds = %3251, %3234
  %3260 = phi float [ %3253, %3251 ], [ %2580, %3234 ]
  %3261 = phi float [ %3254, %3251 ], [ %2581, %3234 ]
  %3262 = phi float [ %3255, %3251 ], [ %2582, %3234 ]
  %3263 = phi float [ %3256, %3251 ], [ %2583, %3234 ]
  %3264 = phi float [ %3257, %3251 ], [ %2584, %3234 ]
  %3265 = phi float [ %3258, %3251 ], [ %2585, %3234 ]
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 3
  %3269 = icmp eq i32 %3268, 3
  br i1 %3269, label %3348, label %3270

; <label>:3270                                    ; preds = %3259
  %3271 = and i32 %3267, 16
  %3272 = icmp ne i32 %3271, 0
  %3273 = select i1 %3272, float %2887, float 0.000000e+00
  %3274 = icmp eq i32 %3268, 0
  br i1 %3274, label %3275, label %3303

; <label>:3275                                    ; preds = %3270
  %3276 = and i32 %3267, 64
  %3277 = icmp ne i32 %3276, 0
  %3278 = select i1 %3277, float %2887, float 0.000000e+00
  %3279 = fsub fast float %3107, %3260
  %3280 = fsub fast float %3108, %3261
  %3281 = fsub fast float %3109, %3262
  %3282 = fmul fast float %3273, %3279
  %3283 = fmul fast float %3273, %3280
  %3284 = fmul fast float %3273, %3281
  %3285 = fadd fast float %3282, %3260
  %3286 = fadd fast float %3283, %3261
  %3287 = fadd fast float %3284, %3262
  %3288 = fsub fast float %3093, %2586
  %3289 = fmul fast float %3273, %3288
  %3290 = fadd fast float %3289, %2586
  %3291 = fsub fast float %3235, %3263
  %3292 = fsub fast float %3236, %3264
  %3293 = fsub fast float %3237, %3265
  %3294 = fmul fast float %3278, %3291
  %3295 = fmul fast float %3278, %3292
  %3296 = fmul fast float %3278, %3293
  %3297 = fadd fast float %3294, %3263
  %3298 = fadd fast float %3295, %3264
  %3299 = fadd fast float %3296, %3265
  %3300 = fsub fast float %3250, %2589
  %3301 = fmul fast float %3273, %3300
  %3302 = fadd fast float %3301, %2589
  br label %3348

; <label>:3303                                    ; preds = %3270
  %3304 = icmp eq i32 %3268, 1
  br i1 %3304, label %3305, label %3318

; <label>:3305                                    ; preds = %3303
  %3306 = fadd fast float %3107, -1.000000e+00
  %3307 = fadd fast float %3108, -1.000000e+00
  %3308 = fadd fast float %3109, -1.000000e+00
  %3309 = fmul fast float %3273, %3306
  %3310 = fmul fast float %3273, %3307
  %3311 = fmul fast float %3273, %3308
  %3312 = fadd fast float %3309, 1.000000e+00
  %3313 = fadd fast float %3310, 1.000000e+00
  %3314 = fadd fast float %3311, 1.000000e+00
  %3315 = fmul fast float %3312, %3260
  %3316 = fmul fast float %3313, %3261
  %3317 = fmul fast float %3314, %3262
  br label %3348

; <label>:3318                                    ; preds = %3303
  %3319 = icmp eq i32 %3268, 2
  br i1 %3319, label %3320, label %3348

; <label>:3320                                    ; preds = %3318
  %3321 = call float @dx.op.unary.f32(i32 24, float %3107)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3108)  ; Sqrt(value)
  %3323 = call float @dx.op.unary.f32(i32 24, float %3109)  ; Sqrt(value)
  %3324 = fadd fast float %3321, -5.000000e-01
  %3325 = fadd fast float %3322, -5.000000e-01
  %3326 = fadd fast float %3323, -5.000000e-01
  %3327 = fmul fast float %3324, %3273
  %3328 = fmul fast float %3325, %3273
  %3329 = fmul fast float %3326, %3273
  %3330 = fadd fast float %3327, 5.000000e-01
  %3331 = fadd fast float %3328, 5.000000e-01
  %3332 = fadd fast float %3329, 5.000000e-01
  %3333 = fmul fast float %3330, 2.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, %3260
  %3336 = fadd fast float %3335, %3333
  %3337 = fmul fast float %3336, %3260
  %3338 = fmul fast float %3331, 2.000000e+00
  %3339 = fsub fast float 1.000000e+00, %3338
  %3340 = fmul fast float %3339, %3261
  %3341 = fadd fast float %3340, %3338
  %3342 = fmul fast float %3341, %3261
  %3343 = fmul fast float %3332, 2.000000e+00
  %3344 = fsub fast float 1.000000e+00, %3343
  %3345 = fmul fast float %3344, %3262
  %3346 = fadd fast float %3345, %3343
  %3347 = fmul fast float %3346, %3262
  br label %3348

; <label>:3348                                    ; preds = %3320, %3318, %3305, %3275, %3259
  %3349 = phi float [ %3260, %3259 ], [ %3337, %3320 ], [ %3260, %3318 ], [ %3315, %3305 ], [ %3285, %3275 ]
  %3350 = phi float [ %3261, %3259 ], [ %3342, %3320 ], [ %3261, %3318 ], [ %3316, %3305 ], [ %3286, %3275 ]
  %3351 = phi float [ %3262, %3259 ], [ %3347, %3320 ], [ %3262, %3318 ], [ %3317, %3305 ], [ %3287, %3275 ]
  %3352 = phi float [ %3263, %3259 ], [ %3263, %3320 ], [ %3263, %3318 ], [ %3263, %3305 ], [ %3297, %3275 ]
  %3353 = phi float [ %3264, %3259 ], [ %3264, %3320 ], [ %3264, %3318 ], [ %3264, %3305 ], [ %3298, %3275 ]
  %3354 = phi float [ %3265, %3259 ], [ %3265, %3320 ], [ %3265, %3318 ], [ %3265, %3305 ], [ %3299, %3275 ]
  %3355 = phi float [ %2586, %3259 ], [ %2586, %3320 ], [ %2586, %3318 ], [ %2586, %3305 ], [ %3290, %3275 ]
  %3356 = phi float [ %2589, %3259 ], [ %2589, %3320 ], [ %2589, %3318 ], [ %2589, %3305 ], [ %3302, %3275 ]
  %3357 = and i32 %3267, 12
  %3358 = icmp eq i32 %3357, 12
  br i1 %3358, label %3431, label %3359

; <label>:3359                                    ; preds = %3348
  %3360 = and i32 %3267, 2097184
  %3361 = icmp eq i32 %3360, 2097184
  %3362 = select i1 %3361, float %2887, float 0.000000e+00
  %3363 = and i32 %3267, 4194336
  %3364 = icmp eq i32 %3363, 4194336
  %3365 = select i1 %3364, float %2887, float 0.000000e+00
  %3366 = and i32 %3267, 8388640
  %3367 = icmp eq i32 %3366, 8388640
  %3368 = select i1 %3367, float %2887, float 0.000000e+00
  %3369 = icmp eq i32 %3357, 0
  br i1 %3369, label %3370, label %3383

; <label>:3370                                    ; preds = %3359
  %3371 = fsub fast float %3188, %2578
  %3372 = fsub fast float %3189, %2579
  %3373 = fmul fast float %3362, %3371
  %3374 = fmul fast float %3362, %3372
  %3375 = fadd fast float %3373, %2578
  %3376 = fadd fast float %3374, %2579
  %3377 = fsub fast float %3190, %2588
  %3378 = fmul fast float %3365, %3377
  %3379 = fadd fast float %3378, %2588
  %3380 = fsub fast float %3187, %2587
  %3381 = fmul fast float %3368, %3380
  %3382 = fadd fast float %3381, %2587
  br label %3431

; <label>:3383                                    ; preds = %3359
  %3384 = icmp eq i32 %3357, 4
  br i1 %3384, label %3385, label %3417

; <label>:3385                                    ; preds = %3383
  %3386 = fmul fast float %3362, %3188
  %3387 = fmul fast float %3362, %3189
  %3388 = fadd fast float %3386, %2578
  %3389 = fadd fast float %3387, %2579
  %3390 = call float @dx.op.binary.f32(i32 36, float %2588, float %3190)  ; FMin(a,b)
  %3391 = fsub fast float %3390, %2588
  %3392 = fmul fast float %3391, %3365
  %3393 = fadd fast float %3392, %2588
  %3394 = fadd fast float %3187, %2587
  %3395 = fmul fast float %3394, 0x3FF337FAE0000000
  %3396 = fmul fast float %2587, %2587
  %3397 = fmul fast float %3187, %3187
  %3398 = fadd fast float %3397, %3396
  %3399 = fmul fast float %3398, 0x3FE5152B00000000
  %3400 = fmul fast float %2587, 0xBFCC1F85E0000000
  %3401 = fmul fast float %3400, %3187
  %3402 = fadd fast float %3401, 0xBFE1363700000000
  %3403 = fadd fast float %3402, %3395
  %3404 = fsub fast float %3403, %3399
  %3405 = fmul fast float %3394, 0x3FBA6F0D00000000
  %3406 = fmul fast float %3398, 0x3FD0432880000000
  %3407 = fmul fast float %2587, 0xBFEF110800000000
  %3408 = fmul fast float %3407, %3187
  %3409 = fadd fast float %3408, 1.000000e+00
  %3410 = fsub fast float %3409, %3405
  %3411 = fadd fast float %3410, %3406
  %3412 = fdiv fast float %3404, %3411
  %3413 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  %3414 = fsub fast float %3413, %2587
  %3415 = fmul fast float %3414, %3368
  %3416 = fadd fast float %3415, %2587
  br label %3431

; <label>:3417                                    ; preds = %3383
  %3418 = icmp eq i32 %3357, 8
  br i1 %3418, label %3419, label %3431

; <label>:3419                                    ; preds = %3417
  %3420 = fmul fast float %3362, %3188
  %3421 = fmul fast float %3362, %3189
  %3422 = fadd fast float %3420, %2578
  %3423 = fadd fast float %3421, %2579
  %3424 = call float @dx.op.binary.f32(i32 36, float %2588, float %3190)  ; FMin(a,b)
  %3425 = fsub fast float %3424, %2588
  %3426 = fmul fast float %3425, %3365
  %3427 = fadd fast float %3426, %2588
  %3428 = fsub fast float %3187, %2587
  %3429 = fmul fast float %3368, %3428
  %3430 = fadd fast float %3429, %2587
  br label %3431

; <label>:3431                                    ; preds = %3419, %3417, %3385, %3370, %3348, %2886, %2590, %2577
  %3432 = phi float [ %2578, %3348 ], [ %2578, %2886 ], [ %2578, %2577 ], [ %2578, %2590 ], [ %3375, %3370 ], [ %3388, %3385 ], [ %2578, %3417 ], [ %3422, %3419 ]
  %3433 = phi float [ %2579, %3348 ], [ %2579, %2886 ], [ %2579, %2577 ], [ %2579, %2590 ], [ %3376, %3370 ], [ %3389, %3385 ], [ %2579, %3417 ], [ %3423, %3419 ]
  %3434 = phi float [ %3349, %3348 ], [ %2580, %2886 ], [ %2580, %2577 ], [ %2580, %2590 ], [ %3349, %3370 ], [ %3349, %3385 ], [ %3349, %3417 ], [ %3349, %3419 ]
  %3435 = phi float [ %3350, %3348 ], [ %2581, %2886 ], [ %2581, %2577 ], [ %2581, %2590 ], [ %3350, %3370 ], [ %3350, %3385 ], [ %3350, %3417 ], [ %3350, %3419 ]
  %3436 = phi float [ %3351, %3348 ], [ %2582, %2886 ], [ %2582, %2577 ], [ %2582, %2590 ], [ %3351, %3370 ], [ %3351, %3385 ], [ %3351, %3417 ], [ %3351, %3419 ]
  %3437 = phi float [ %3352, %3348 ], [ %2583, %2886 ], [ %2583, %2577 ], [ %2583, %2590 ], [ %3352, %3370 ], [ %3352, %3385 ], [ %3352, %3417 ], [ %3352, %3419 ]
  %3438 = phi float [ %3353, %3348 ], [ %2584, %2886 ], [ %2584, %2577 ], [ %2584, %2590 ], [ %3353, %3370 ], [ %3353, %3385 ], [ %3353, %3417 ], [ %3353, %3419 ]
  %3439 = phi float [ %3354, %3348 ], [ %2585, %2886 ], [ %2585, %2577 ], [ %2585, %2590 ], [ %3354, %3370 ], [ %3354, %3385 ], [ %3354, %3417 ], [ %3354, %3419 ]
  %3440 = phi float [ %3355, %3348 ], [ %2586, %2886 ], [ %2586, %2577 ], [ %2586, %2590 ], [ %3355, %3370 ], [ %3355, %3385 ], [ %3355, %3417 ], [ %3355, %3419 ]
  %3441 = phi float [ %2587, %3348 ], [ %2587, %2886 ], [ %2587, %2577 ], [ %2587, %2590 ], [ %3382, %3370 ], [ %3416, %3385 ], [ %2587, %3417 ], [ %3430, %3419 ]
  %3442 = phi float [ %2588, %3348 ], [ %2588, %2886 ], [ %2588, %2577 ], [ %2588, %2590 ], [ %3379, %3370 ], [ %3393, %3385 ], [ %2588, %3417 ], [ %3427, %3419 ]
  %3443 = phi float [ %3356, %3348 ], [ %2589, %2886 ], [ %2589, %2577 ], [ %2589, %2590 ], [ %3356, %3370 ], [ %3356, %3385 ], [ %3356, %3417 ], [ %3356, %3419 ]
  %3444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3445 = extractvalue %dx.types.CBufRet.f32 %3444, 0
  %3446 = call float @dx.op.dot2.f32(i32 54, float %3432, float %3433, float %3432, float %3433)  ; Dot2(ax,ay,bx,by)
  %3447 = fmul fast float %3446, 0x3FE3333340000000
  %3448 = fsub fast float 1.000000e+00, %3447
  %3449 = call float @dx.op.dot3.f32(i32 55, float %3432, float %3433, float %3448, float %3432, float %3433, float %3448)  ; Dot3(ax,ay,az,bx,by,bz)
  %3450 = call float @dx.op.unary.f32(i32 25, float %3449)  ; Rsqrt(value)
  %3451 = fmul fast float %3450, %3432
  %3452 = fmul fast float %3450, %3433
  %3453 = fmul fast float %3448, %3450
  %3454 = fmul fast float %3453, %84
  %3455 = fmul fast float %3453, %86
  %3456 = fmul fast float %3453, %88
  %3457 = fmul fast float %3451, %56
  %3458 = fmul fast float %3451, %57
  %3459 = fmul fast float %3451, %58
  %3460 = fmul fast float %91, %59
  %3461 = fmul fast float %3460, %3452
  %3462 = fmul fast float %94, %59
  %3463 = fmul fast float %3462, %3452
  %3464 = fmul fast float %97, %59
  %3465 = fmul fast float %3464, %3452
  %3466 = fadd fast float %3461, %3457
  %3467 = fmul fast float %3466, %77
  %3468 = fadd fast float %3467, %3454
  %3469 = fadd fast float %3463, %3458
  %3470 = fmul fast float %3469, %77
  %3471 = fadd fast float %3470, %3455
  %3472 = fadd fast float %3465, %3459
  %3473 = fmul fast float %3472, %77
  %3474 = fadd fast float %3473, %3456
  %3475 = call float @dx.op.dot3.f32(i32 55, float %3468, float %3471, float %3474, float %3468, float %3471, float %3474)  ; Dot3(ax,ay,az,bx,by,bz)
  %3476 = call float @dx.op.unary.f32(i32 25, float %3475)  ; Rsqrt(value)
  %3477 = fmul fast float %3468, %3476
  %3478 = fmul fast float %3471, %3476
  %3479 = fmul fast float %3474, %3476
  %3480 = and i32 %37, 1
  %3481 = icmp eq i32 %3480, 0
  br i1 %3481, label %3482, label %3990

; <label>:3482                                    ; preds = %3431
  %3483 = call float @dx.op.unary.f32(i32 83, float %131)  ; DerivCoarseX(value)
  %3484 = call float @dx.op.unary.f32(i32 83, float %132)  ; DerivCoarseX(value)
  %3485 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3486 = call float @dx.op.unary.f32(i32 84, float %131)  ; DerivCoarseY(value)
  %3487 = call float @dx.op.unary.f32(i32 84, float %132)  ; DerivCoarseY(value)
  %3488 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3489 = fadd fast float %3483, %131
  %3490 = fadd fast float %3484, %132
  %3491 = fadd fast float %3485, %133
  %3492 = fadd fast float %3486, %131
  %3493 = fadd fast float %3487, %132
  %3494 = fadd fast float %3488, %133
  %3495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3496 = extractvalue %dx.types.CBufRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.CBufRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.CBufRet.f32 %3495, 2
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 2
  %3501 = extractvalue %dx.types.CBufRet.f32 %3499, 3
  %3502 = fmul fast float %3496, %75
  %3503 = fmul fast float %3502, %3500
  %3504 = fmul fast float %3497, %76
  %3505 = fmul fast float %3504, %3501
  %3506 = fptoui float %3503 to i32
  %3507 = fptoui float %3505 to i32
  %3508 = fadd fast float %3496, -1.000000e+00
  %3509 = fadd fast float %3497, -1.000000e+00
  %3510 = fptoui float %3508 to i32
  %3511 = fptoui float %3509 to i32
  %3512 = call i32 @dx.op.binary.i32(i32 40, i32 %3506, i32 %3510)  ; UMin(a,b)
  %3513 = call i32 @dx.op.binary.i32(i32 40, i32 %3507, i32 %3511)  ; UMin(a,b)
  %3514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3515 = extractvalue %dx.types.CBufRet.f32 %3514, 2
  %3516 = extractvalue %dx.types.CBufRet.f32 %3514, 3
  %3517 = fmul fast float %3515, %70
  %3518 = fsub fast float %3517, %3516
  %3519 = fadd fast float %3498, -1.000000e+00
  %3520 = call float @dx.op.binary.f32(i32 36, float %3518, float %3519)  ; FMin(a,b)
  %3521 = fptoui float %3520 to i32
  %3522 = fptoui float %3496 to i32
  %3523 = fptoui float %3497 to i32
  %3524 = mul i32 %3521, %3523
  %3525 = add i32 %3524, %3513
  %3526 = mul i32 %3525, %3522
  %3527 = add i32 %3526, %3512
  %3528 = shl i32 %3527, 2
  %3529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.i32 %3529, 0
  %3531 = and i32 %3530, 1023
  %3532 = lshr i32 %3530, 10
  %3533 = icmp eq i32 %3531, 0
  br i1 %3533, label %3959, label %3534

; <label>:3534                                    ; preds = %3482
  %3535 = and i32 %3530, 1023
  br label %3536

; <label>:3536                                    ; preds = %3662, %3534
  %3537 = phi i32 [ %3612, %3662 ], [ 0, %3534 ]
  %3538 = phi float [ %3663, %3662 ], [ 0.000000e+00, %3534 ]
  %3539 = phi float [ %3664, %3662 ], [ %3445, %3534 ]
  %3540 = phi float [ %3665, %3662 ], [ %3443, %3534 ]
  %3541 = phi float [ %3666, %3662 ], [ 0.000000e+00, %3534 ]
  %3542 = phi float [ %3667, %3662 ], [ 0.000000e+00, %3534 ]
  %3543 = phi float [ %3668, %3662 ], [ %3437, %3534 ]
  %3544 = phi float [ %3669, %3662 ], [ %3438, %3534 ]
  %3545 = phi float [ %3670, %3662 ], [ %3439, %3534 ]
  %3546 = phi float [ %3671, %3662 ], [ %3477, %3534 ]
  %3547 = phi float [ %3672, %3662 ], [ %3478, %3534 ]
  %3548 = phi float [ %3673, %3662 ], [ %3479, %3534 ]
  %3549 = phi float [ %3674, %3662 ], [ %3442, %3534 ]
  %3550 = phi float [ %3675, %3662 ], [ %3441, %3534 ]
  %3551 = phi float [ %3676, %3662 ], [ 0.000000e+00, %3534 ]
  %3552 = phi float [ %3677, %3662 ], [ %3440, %3534 ]
  %3553 = phi float [ %3678, %3662 ], [ %3434, %3534 ]
  %3554 = phi float [ %3679, %3662 ], [ %3435, %3534 ]
  %3555 = phi float [ %3680, %3662 ], [ %3436, %3534 ]
  %3556 = add nuw nsw i32 %3537, %3532
  %3557 = shl i32 %3556, 2
  %3558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3559 = extractvalue %dx.types.ResRet.i32 %3558, 0
  %3560 = shl i32 %3559, 8
  %3561 = or i32 %3560, 48
  %3562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.ResRet.f32 %3562, 2
  %3566 = extractvalue %dx.types.ResRet.f32 %3562, 3
  %3567 = or i32 %3560, 64
  %3568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3567, i32 undef)  ; BufferLoad(srv,index,wot)
  %3569 = extractvalue %dx.types.ResRet.i32 %3568, 0
  %3570 = extractvalue %dx.types.ResRet.i32 %3568, 1
  %3571 = or i32 %3560, 80
  %3572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 2
  %3574 = extractvalue %dx.types.ResRet.f32 %3572, 3
  %3575 = or i32 %3560, 96
  %3576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = extractvalue %dx.types.ResRet.f32 %3576, 3
  %3581 = or i32 %3560, 112
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3584 = or i32 %3560, 128
  %3585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3590 = or i32 %3560, 144
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3594 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3595 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3596 = or i32 %3560, 160
  %3597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = extractvalue %dx.types.ResRet.f32 %3597, 3
  %3602 = or i32 %3560, 192
  %3603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.i32 %3603, 0
  %3605 = or i32 %3560, 208
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = or i32 %3560, 248
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = add nuw nsw i32 %3537, 1
  %3613 = bitcast float %3566 to i32
  %3614 = and i32 %3613, 512
  %3615 = icmp eq i32 %3614, 0
  %3616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.ResRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.ResRet.f32 %3616, 2
  %3620 = extractvalue %dx.types.ResRet.f32 %3616, 3
  %3621 = call float @dx.op.dot4.f32(i32 56, float %3617, float %3618, float %3619, float %3620, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3622 = or i32 %3560, 16
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = call float @dx.op.dot4.f32(i32 56, float %3624, float %3625, float %3626, float %3627, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3629 = or i32 %3560, 32
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = extractvalue %dx.types.ResRet.f32 %3630, 3
  %3635 = call float @dx.op.dot4.f32(i32 56, float %3631, float %3632, float %3633, float %3634, float %131, float %132, float %133, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3636 = call float @dx.op.unary.f32(i32 27, float %3621)  ; Round_ni(value)
  %3637 = call float @dx.op.unary.f32(i32 6, float %3636)  ; FAbs(value)
  %3638 = call float @dx.op.unary.f32(i32 27, float %3628)  ; Round_ni(value)
  %3639 = call float @dx.op.unary.f32(i32 6, float %3638)  ; FAbs(value)
  %3640 = call float @dx.op.unary.f32(i32 6, float %3635)  ; FAbs(value)
  %3641 = call float @dx.op.unary.f32(i32 27, float %3640)  ; Round_ni(value)
  %3642 = fadd fast float %3639, %3637
  %3643 = fadd fast float %3642, %3641
  %3644 = fcmp fast oeq float %3643, 0.000000e+00
  %3645 = call float @dx.op.dot4.f32(i32 56, float %3617, float %3618, float %3619, float %3620, float %3489, float %3490, float %3491, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3646 = call float @dx.op.dot4.f32(i32 56, float %3624, float %3625, float %3626, float %3627, float %3489, float %3490, float %3491, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3647 = call float @dx.op.dot4.f32(i32 56, float %3617, float %3618, float %3619, float %3620, float %3492, float %3493, float %3494, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3648 = call float @dx.op.dot4.f32(i32 56, float %3624, float %3625, float %3626, float %3627, float %3492, float %3493, float %3494, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3649 = fsub fast float %3645, %3621
  %3650 = fsub fast float %3647, %3621
  %3651 = fsub fast float %3646, %3628
  %3652 = fsub fast float %3648, %3628
  %3653 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3564, float %3565, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3655 = extractvalue %dx.types.CBufRet.f32 %3654, 2
  %3656 = fadd fast float %3655, %3653
  %3657 = call float @dx.op.unary.f32(i32 7, float %3656)  ; Saturate(value)
  %3658 = extractvalue %dx.types.CBufRet.f32 %3654, 0
  %3659 = fcmp fast ogt float %3657, %3658
  %3660 = and i1 %3644, %3659
  %3661 = and i1 %3615, %3660
  br i1 %3661, label %3682, label %3662

; <label>:3662                                    ; preds = %3945, %3763, %3682, %3536
  %3663 = phi float [ %3538, %3682 ], [ %3766, %3763 ], [ %3766, %3945 ], [ %3538, %3536 ]
  %3664 = phi float [ %3539, %3682 ], [ %3539, %3763 ], [ %3920, %3945 ], [ %3539, %3536 ]
  %3665 = phi float [ %3540, %3682 ], [ %3540, %3763 ], [ %3918, %3945 ], [ %3540, %3536 ]
  %3666 = phi float [ %3541, %3682 ], [ %3541, %3763 ], [ %3890, %3945 ], [ %3541, %3536 ]
  %3667 = phi float [ %3542, %3682 ], [ %3542, %3763 ], [ %3888, %3945 ], [ %3542, %3536 ]
  %3668 = phi float [ %3543, %3682 ], [ %3543, %3763 ], [ %3955, %3945 ], [ %3543, %3536 ]
  %3669 = phi float [ %3544, %3682 ], [ %3544, %3763 ], [ %3956, %3945 ], [ %3544, %3536 ]
  %3670 = phi float [ %3545, %3682 ], [ %3545, %3763 ], [ %3957, %3945 ], [ %3545, %3536 ]
  %3671 = phi float [ %3546, %3682 ], [ %3546, %3763 ], [ %3869, %3945 ], [ %3546, %3536 ]
  %3672 = phi float [ %3547, %3682 ], [ %3547, %3763 ], [ %3870, %3945 ], [ %3547, %3536 ]
  %3673 = phi float [ %3548, %3682 ], [ %3548, %3763 ], [ %3871, %3945 ], [ %3548, %3536 ]
  %3674 = phi float [ %3549, %3682 ], [ %3549, %3763 ], [ %3898, %3945 ], [ %3549, %3536 ]
  %3675 = phi float [ %3550, %3682 ], [ %3550, %3763 ], [ %3895, %3945 ], [ %3550, %3536 ]
  %3676 = phi float [ %3551, %3682 ], [ %3551, %3763 ], [ %3892, %3945 ], [ %3551, %3536 ]
  %3677 = phi float [ %3552, %3682 ], [ %3552, %3763 ], [ %3886, %3945 ], [ %3552, %3536 ]
  %3678 = phi float [ %3553, %3682 ], [ %3553, %3763 ], [ %3881, %3945 ], [ %3553, %3536 ]
  %3679 = phi float [ %3554, %3682 ], [ %3554, %3763 ], [ %3882, %3945 ], [ %3554, %3536 ]
  %3680 = phi float [ %3555, %3682 ], [ %3555, %3763 ], [ %3883, %3945 ], [ %3555, %3536 ]
  %3681 = icmp eq i32 %3612, %3535
  br i1 %3681, label %3958, label %3536

; <label>:3682                                    ; preds = %3536
  %3683 = extractvalue %dx.types.ResRet.f32 %3582, 3
  %3684 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3686 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3687 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3688 = extractvalue %dx.types.ResRet.i32 %3568, 3
  %3689 = extractvalue %dx.types.ResRet.i32 %3568, 2
  %3690 = add i32 %3688, 0
  %3691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3690, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3693 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3691, %dx.types.Handle %3692, float %3621, float %3628, float undef, float undef, i32 0, i32 0, i32 undef, float %3649, float %3651, float undef, float %3650, float %3652, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3694 = extractvalue %dx.types.ResRet.f32 %3693, 0
  %3695 = fmul fast float %3694, %3687
  %3696 = fadd fast float %3695, %3686
  %3697 = call float @dx.op.unary.f32(i32 7, float %3696)  ; Saturate(value)
  %3698 = fmul fast float %3621, %3577
  %3699 = call float @dx.op.tertiary.f32(i32 46, float %3578, float %3628, float %3698)  ; FMad(a,b,c)
  %3700 = fadd fast float %3699, %3685
  %3701 = fmul fast float %3621, %3579
  %3702 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3628, float %3701)  ; FMad(a,b,c)
  %3703 = fadd fast float %3702, %3684
  %3704 = fmul fast float %3649, %3577
  %3705 = call float @dx.op.tertiary.f32(i32 46, float %3578, float %3651, float %3704)  ; FMad(a,b,c)
  %3706 = fmul fast float %3649, %3579
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3651, float %3706)  ; FMad(a,b,c)
  %3708 = fmul fast float %3650, %3577
  %3709 = call float @dx.op.tertiary.f32(i32 46, float %3578, float %3652, float %3708)  ; FMad(a,b,c)
  %3710 = fmul fast float %3650, %3579
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3580, float %3652, float %3710)  ; FMad(a,b,c)
  %3712 = add i32 %3689, 0
  %3713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3712, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3713, %dx.types.Handle %3692, float %3700, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3707, float undef, float %3709, float %3711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = and i32 %3613, 1024
  %3717 = icmp ne i32 %3716, 0
  %3718 = fcmp fast ogt float %3715, 0x3FE0101020000000
  %3719 = uitofp i1 %3718 to float
  %3720 = select i1 %3717, float %3719, float %3715
  %3721 = and i32 %3613, 8192
  %3722 = icmp ne i32 %3721, 0
  %3723 = select i1 %3722, float %3683, float 1.000000e+00
  %3724 = fmul fast float %3621, 2.000000e+00
  %3725 = fadd fast float %3724, -1.000000e+00
  %3726 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3727 = fmul fast float %3726, %3610
  %3728 = fsub fast float %3727, %3610
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = fmul fast float %3628, 2.000000e+00
  %3731 = fadd fast float %3730, -1.000000e+00
  %3732 = call float @dx.op.unary.f32(i32 6, float %3731)  ; FAbs(value)
  %3733 = fmul fast float %3732, %3611
  %3734 = fsub fast float %3733, %3611
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = fmul fast float %3640, %3573
  %3737 = fsub fast float %3736, %3573
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = fmul fast float %3697, %3723
  %3740 = fmul fast float %3739, %3694
  %3741 = fmul fast float %3740, %3729
  %3742 = fmul fast float %3741, %3720
  %3743 = fmul fast float %3742, %3735
  %3744 = fmul fast float %3743, %3738
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 1
  %3747 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3748 = fsub fast float %3657, %3747
  %3749 = fmul fast float %3748, %3746
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fmul fast float %3744, %3574
  %3752 = fadd fast float %3744, %3574
  %3753 = fmul fast float %3752, %3583
  %3754 = fsub fast float %3753, %3583
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = and i32 %3613, 128
  %3757 = icmp ne i32 %3756, 0
  %3758 = select i1 %3757, float %3755, float %3751
  %3759 = fmul fast float %3758, %3750
  %3760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3761 = extractvalue %dx.types.CBufRet.f32 %3760, 0
  %3762 = fcmp fast ugt float %3759, %3761
  br i1 %3762, label %3763, label %3662

; <label>:3763                                    ; preds = %3682
  %3764 = select i1 %3722, float %3759, float 0.000000e+00
  %3765 = fadd fast float %3764, %3538
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  br i1 %3722, label %3662, label %3767

; <label>:3767                                    ; preds = %3763
  %3768 = and i32 %3613, 4
  %3769 = and i32 %3613, 8
  %3770 = add i32 %3569, 0
  %3771 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3770, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3773 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3771, %dx.types.Handle %3772, float %3700, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3707, float undef, float %3709, float %3711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3778 = bitcast float %3595 to i32
  %3779 = and i32 %3778, 255
  %3780 = uitofp i32 %3779 to float
  %3781 = lshr i32 %3778, 8
  %3782 = and i32 %3781, 255
  %3783 = uitofp i32 %3782 to float
  %3784 = fmul fast float %3777, %3780
  %3785 = fadd fast float %3784, %3783
  %3786 = fmul fast float %3785, 0x3F70101000000000
  %3787 = add i32 %3570, 0
  %3788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3787, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3789 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3788, %dx.types.Handle %3772, float %3700, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3707, float undef, float %3709, float %3711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3790 = extractvalue %dx.types.ResRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.ResRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.ResRet.f32 %3789, 2
  %3793 = extractvalue %dx.types.ResRet.f32 %3789, 3
  %3794 = bitcast float %3589 to i32
  %3795 = and i32 %3794, 255
  %3796 = uitofp i32 %3795 to float
  %3797 = lshr i32 %3794, 8
  %3798 = and i32 %3797, 255
  %3799 = uitofp i32 %3798 to float
  %3800 = lshr i32 %3794, 16
  %3801 = and i32 %3800, 255
  %3802 = uitofp i32 %3801 to float
  %3803 = fmul fast float %3802, 0x3F70101000000000
  %3804 = fmul fast float %3790, %3796
  %3805 = fadd fast float %3804, %3799
  %3806 = fmul fast float %3805, 0x3F70101000000000
  %3807 = fadd fast float %3791, -5.000000e-01
  %3808 = fadd fast float %3793, -5.000000e-01
  %3809 = fmul fast float %3807, %3803
  %3810 = fmul fast float %3808, %3803
  %3811 = fadd fast float %3809, 5.000000e-01
  %3812 = fadd fast float %3810, 5.000000e-01
  %3813 = fmul fast float %3774, %3598
  %3814 = fmul fast float %3775, %3599
  %3815 = fmul fast float %3776, %3600
  %3816 = fmul fast float %3811, 2.000000e+00
  %3817 = fadd fast float %3816, -1.000000e+00
  %3818 = fmul fast float %3812, 2.000000e+00
  %3819 = fadd fast float %3818, -1.000000e+00
  %3820 = fadd fast float %3817, %3819
  %3821 = fmul fast float %3820, 5.000000e-01
  %3822 = fsub fast float %3817, %3819
  %3823 = fmul fast float %3822, 5.000000e-01
  %3824 = call float @dx.op.unary.f32(i32 6, float %3821)  ; FAbs(value)
  %3825 = fsub fast float 1.000000e+00, %3824
  %3826 = call float @dx.op.unary.f32(i32 6, float %3823)  ; FAbs(value)
  %3827 = fsub fast float %3825, %3826
  %3828 = call float @dx.op.dot3.f32(i32 55, float %3821, float %3823, float %3827, float %3821, float %3823, float %3827)  ; Dot3(ax,ay,az,bx,by,bz)
  %3829 = call float @dx.op.unary.f32(i32 25, float %3828)  ; Rsqrt(value)
  %3830 = fmul fast float %3821, %3829
  %3831 = fmul fast float %3823, %3829
  %3832 = fmul fast float %3829, %3827
  %3833 = fmul fast float %3832, %3563
  %3834 = fmul fast float %3832, %3564
  %3835 = fmul fast float %3832, %3565
  %3836 = fmul fast float %3830, %3586
  %3837 = fmul fast float %3830, %3587
  %3838 = fmul fast float %3830, %3588
  %3839 = fadd fast float %3836, %3833
  %3840 = fadd fast float %3837, %3834
  %3841 = fadd fast float %3838, %3835
  %3842 = fmul fast float %3831, %3592
  %3843 = fmul fast float %3831, %3593
  %3844 = fmul fast float %3831, %3594
  %3845 = fadd fast float %3839, %3842
  %3846 = fadd fast float %3840, %3843
  %3847 = fadd fast float %3841, %3844
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3845, float %3846, float %3847, float %3845, float %3846, float %3847)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = call float @dx.op.unary.f32(i32 25, float %3848)  ; Rsqrt(value)
  %3850 = fmul fast float %3845, %3849
  %3851 = fmul fast float %3846, %3849
  %3852 = fmul fast float %3847, %3849
  %3853 = icmp ne i32 %3769, 0
  %3854 = select i1 %3853, float 1.000000e+00, float 0.000000e+00
  %3855 = fmul fast float %3759, %3854
  %3856 = and i32 %3613, 1
  %3857 = icmp eq i32 %3856, 0
  br i1 %3857, label %3858, label %3862

; <label>:3858                                    ; preds = %3767
  %3859 = fsub fast float %3850, %3546
  %3860 = fsub fast float %3851, %3547
  %3861 = fsub fast float %3852, %3548
  br label %3862

; <label>:3862                                    ; preds = %3858, %3767
  %3863 = phi float [ %3859, %3858 ], [ %3850, %3767 ]
  %3864 = phi float [ %3860, %3858 ], [ %3851, %3767 ]
  %3865 = phi float [ %3861, %3858 ], [ %3852, %3767 ]
  %3866 = fmul float %3865, %3855
  %3867 = fmul float %3864, %3855
  %3868 = fmul float %3863, %3855
  %3869 = fadd fast float %3868, %3546
  %3870 = fadd fast float %3867, %3547
  %3871 = fadd fast float %3866, %3548
  %3872 = icmp ne i32 %3768, 0
  %3873 = select i1 %3872, float 1.000000e+00, float 0.000000e+00
  %3874 = fmul fast float %3759, %3873
  %3875 = fsub fast float %3813, %3553
  %3876 = fsub fast float %3814, %3554
  %3877 = fsub fast float %3815, %3555
  %3878 = fmul fast float %3875, %3874
  %3879 = fmul fast float %3876, %3874
  %3880 = fmul fast float %3877, %3874
  %3881 = fadd fast float %3878, %3553
  %3882 = fadd fast float %3879, %3554
  %3883 = fadd fast float %3880, %3555
  %3884 = fsub fast float %3786, %3552
  %3885 = fmul fast float %3884, %3874
  %3886 = fadd fast float %3885, %3552
  %3887 = fmul fast float %3874, %3542
  %3888 = fsub fast float %3542, %3887
  %3889 = fmul fast float %3874, %3541
  %3890 = fsub fast float %3541, %3889
  %3891 = fadd fast float %3759, %3551
  %3892 = call float @dx.op.unary.f32(i32 7, float %3891)  ; Saturate(value)
  %3893 = fsub fast float %3806, %3550
  %3894 = fmul fast float %3893, %3855
  %3895 = fadd fast float %3894, %3550
  %3896 = fsub fast float %3792, %3549
  %3897 = fmul fast float %3896, %3855
  %3898 = fadd fast float %3897, %3549
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3813, float %3814, float %3815, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3903 = fmul fast float %3902, %3899
  %3904 = fadd fast float %3903, %3901
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = bitcast float %3601 to i32
  %3907 = and i32 %3906, 65535
  %3908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3907)  ; LegacyF16ToF32(value)
  %3909 = lshr i32 %3906, 16
  %3910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3909)  ; LegacyF16ToF32(value)
  %3911 = fcmp fast oge float %3908, 0.000000e+00
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 0
  %3914 = select i1 %3911, float %3908, float %3913
  %3915 = fadd fast float %3914, %3910
  %3916 = fsub fast float %3905, %3540
  %3917 = fmul fast float %3916, %3759
  %3918 = fadd fast float %3917, %3540
  %3919 = fmul fast float %3915, %3759
  %3920 = call float @dx.op.binary.f32(i32 35, float %3539, float %3919)  ; FMax(a,b)
  %3921 = and i32 %3613, 16
  %3922 = icmp eq i32 %3921, 0
  br i1 %3922, label %3945, label %3923

; <label>:3923                                    ; preds = %3862
  %3924 = bitcast float %3607 to i32
  %3925 = add i32 %3604, 0
  %3926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3925, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3926, %dx.types.Handle %3772, float %3700, float %3703, float undef, float undef, i32 0, i32 0, i32 undef, float %3705, float %3707, float undef, float %3709, float %3711, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.ResRet.f32 %3927, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3927, 2
  %3931 = and i32 %3924, 65535
  %3932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3931)  ; LegacyF16ToF32(value)
  %3933 = fmul fast float %3928, %3598
  %3934 = fmul fast float %3929, %3599
  %3935 = fmul fast float %3930, %3600
  %3936 = and i32 %3613, 16384
  %3937 = icmp ne i32 %3936, 0
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = select i1 %3937, float %3939, float 1.000000e+00
  %3941 = fmul fast float %3940, %3932
  %3942 = fmul fast float %3933, %3941
  %3943 = fmul fast float %3934, %3941
  %3944 = fmul fast float %3935, %3941
  br label %3945

; <label>:3945                                    ; preds = %3923, %3862
  %3946 = phi float [ %3942, %3923 ], [ 0.000000e+00, %3862 ]
  %3947 = phi float [ %3943, %3923 ], [ 0.000000e+00, %3862 ]
  %3948 = phi float [ %3944, %3923 ], [ 0.000000e+00, %3862 ]
  %3949 = fsub fast float %3946, %3543
  %3950 = fsub fast float %3947, %3544
  %3951 = fsub fast float %3948, %3545
  %3952 = fmul fast float %3949, %3759
  %3953 = fmul fast float %3950, %3759
  %3954 = fmul fast float %3951, %3759
  %3955 = fadd fast float %3952, %3543
  %3956 = fadd fast float %3953, %3544
  %3957 = fadd fast float %3954, %3545
  br label %3662

; <label>:3958                                    ; preds = %3662
  br label %3959

; <label>:3959                                    ; preds = %3958, %3482
  %3960 = phi float [ 0.000000e+00, %3482 ], [ %3663, %3958 ]
  %3961 = phi float [ %3445, %3482 ], [ %3664, %3958 ]
  %3962 = phi float [ %3443, %3482 ], [ %3665, %3958 ]
  %3963 = phi float [ 0.000000e+00, %3482 ], [ %3666, %3958 ]
  %3964 = phi float [ 0.000000e+00, %3482 ], [ %3667, %3958 ]
  %3965 = phi float [ %3437, %3482 ], [ %3668, %3958 ]
  %3966 = phi float [ %3438, %3482 ], [ %3669, %3958 ]
  %3967 = phi float [ %3439, %3482 ], [ %3670, %3958 ]
  %3968 = phi float [ %3477, %3482 ], [ %3671, %3958 ]
  %3969 = phi float [ %3478, %3482 ], [ %3672, %3958 ]
  %3970 = phi float [ %3479, %3482 ], [ %3673, %3958 ]
  %3971 = phi float [ %3442, %3482 ], [ %3674, %3958 ]
  %3972 = phi float [ %3441, %3482 ], [ %3675, %3958 ]
  %3973 = phi float [ 0.000000e+00, %3482 ], [ %3676, %3958 ]
  %3974 = phi float [ %3440, %3482 ], [ %3677, %3958 ]
  %3975 = phi float [ %3434, %3482 ], [ %3678, %3958 ]
  %3976 = phi float [ %3435, %3482 ], [ %3679, %3958 ]
  %3977 = phi float [ %3436, %3482 ], [ %3680, %3958 ]
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3968, float %3969, float %3970, float %3968, float %3969, float %3970)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = call float @dx.op.unary.f32(i32 25, float %3978)  ; Rsqrt(value)
  %3980 = fmul fast float %3979, %3968
  %3981 = fmul fast float %3979, %3969
  %3982 = fmul fast float %3979, %3970
  %3983 = fadd fast float %3973, %878
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = call float @dx.op.dot3.f32(i32 55, float %3980, float %3981, float %3982, float %3980, float %3981, float %3982)  ; Dot3(ax,ay,az,bx,by,bz)
  %3986 = call float @dx.op.unary.f32(i32 25, float %3985)  ; Rsqrt(value)
  %3987 = fmul fast float %3986, %3980
  %3988 = fmul fast float %3986, %3981
  %3989 = fmul fast float %3986, %3982
  br label %3990

; <label>:3990                                    ; preds = %3959, %3431
  %3991 = phi float [ %3987, %3959 ], [ %3477, %3431 ]
  %3992 = phi float [ %3988, %3959 ], [ %3478, %3431 ]
  %3993 = phi float [ %3989, %3959 ], [ %3479, %3431 ]
  %3994 = phi float [ %3975, %3959 ], [ %3434, %3431 ]
  %3995 = phi float [ %3976, %3959 ], [ %3435, %3431 ]
  %3996 = phi float [ %3977, %3959 ], [ %3436, %3431 ]
  %3997 = phi float [ %3965, %3959 ], [ %3437, %3431 ]
  %3998 = phi float [ %3966, %3959 ], [ %3438, %3431 ]
  %3999 = phi float [ %3967, %3959 ], [ %3439, %3431 ]
  %4000 = phi float [ %3974, %3959 ], [ %3440, %3431 ]
  %4001 = phi float [ %3984, %3959 ], [ %878, %3431 ]
  %4002 = phi float [ %3972, %3959 ], [ %3441, %3431 ]
  %4003 = phi float [ %3971, %3959 ], [ %3442, %3431 ]
  %4004 = phi float [ %3964, %3959 ], [ 0.000000e+00, %3431 ]
  %4005 = phi float [ %3963, %3959 ], [ 0.000000e+00, %3431 ]
  %4006 = phi float [ %3960, %3959 ], [ 0.000000e+00, %3431 ]
  %4007 = phi float [ %3961, %3959 ], [ %3445, %3431 ]
  %4008 = phi float [ %3962, %3959 ], [ %3443, %3431 ]
  %4009 = fadd fast float %4000, 0xBFB99999A0000000
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = fmul fast float %4010, 0x3FF1C71C80000000
  %4012 = call float @dx.op.binary.f32(i32 36, float %4000, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4013 = fsub fast float 1.000000e+00, %4011
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4015 = fmul fast float %4014, %3994
  %4016 = fmul fast float %4014, %3995
  %4017 = fmul fast float %4014, %3996
  %4018 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4019 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4020 = call float @dx.op.unary.f32(i32 7, float %4017)  ; Saturate(value)
  %4021 = fmul fast float %4011, %3994
  %4022 = fmul fast float %4011, %3995
  %4023 = fmul fast float %4011, %3996
  %4024 = fadd fast float %4021, %4012
  %4025 = fadd fast float %4022, %4012
  %4026 = fadd fast float %4023, %4012
  %4027 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4028 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4031 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.i32 %4031, 3
  %4033 = and i32 %4032, 8
  %4034 = icmp ne i32 %4033, 0
  %4035 = call float @dx.op.binary.f32(i32 35, float %4018, float %3994)  ; FMax(a,b)
  %4036 = call float @dx.op.binary.f32(i32 35, float %4019, float %3994)  ; FMax(a,b)
  %4037 = call float @dx.op.binary.f32(i32 35, float %4020, float %3994)  ; FMax(a,b)
  %4038 = call float @dx.op.dot3.f32(i32 55, float %4018, float %4019, float %4020, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4039 = select i1 %173, float %3994, float %4018
  %4040 = select i1 %173, float %4038, float %4019
  %4041 = select i1 %173, float 1.000000e+00, float %4020
  %4042 = select i1 %4034, float %4035, float %4039
  %4043 = select i1 %4034, float %4036, float %4040
  %4044 = select i1 %4034, float %4037, float %4041
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.CBufRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.CBufRet.f32 %4045, 2
  %4049 = fadd fast float %4046, %131
  %4050 = fadd fast float %4047, %132
  %4051 = fadd fast float %4048, %133
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4055 = fsub fast float %4049, %4053
  %4056 = fsub fast float %4050, %4054
  %4057 = fmul fast float %4055, %4055
  %4058 = fmul fast float %4056, %4056
  %4059 = fadd fast float %4057, %4058
  %4060 = call float @dx.op.unary.f32(i32 24, float %4059)  ; Sqrt(value)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4062 = fcmp fast olt float %4060, %4061
  br i1 %4062, label %4063, label %4130

; <label>:4063                                    ; preds = %3990
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.f32 %4064, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4072 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4073 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4074 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4075 = extractvalue %dx.types.CBufRet.f32 %4068, 3
  %4076 = fadd fast float %4073, %4049
  %4077 = fadd fast float %4074, %4050
  %4078 = fadd fast float %4075, %4051
  %4079 = fmul fast float %4076, %4065
  %4080 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4067, float %4079)  ; FMad(a,b,c)
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4078, float %4069, float %4080)  ; FMad(a,b,c)
  %4082 = fmul fast float %4076, %4070
  %4083 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4071, float %4082)  ; FMad(a,b,c)
  %4084 = call float @dx.op.tertiary.f32(i32 46, float %4078, float %4072, float %4083)  ; FMad(a,b,c)
  %4085 = fsub fast float %4081, %4073
  %4086 = fsub fast float %4084, %4074
  %4087 = fsub fast float %4085, %4053
  %4088 = fadd fast float %4087, %4061
  %4089 = fsub fast float %4086, %4054
  %4090 = fadd fast float %4089, %4061
  %4091 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4092 = fmul fast float %4088, %4091
  %4093 = fmul fast float %4090, %4091
  %4094 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  %4095 = call float @dx.op.unary.f32(i32 7, float %4093)  ; Saturate(value)
  %4096 = fsub fast float 1.000000e+00, %4094
  %4097 = fsub fast float 1.000000e+00, %4095
  %4098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4096, float %4097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = fcmp fast ugt float %4099, 0.000000e+00
  br i1 %4100, label %4101, label %4404

; <label>:4101                                    ; preds = %4063
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 2
  %4104 = fmul fast float %4103, %4099
  %4105 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4106 = fadd fast float %4105, %4104
  %4107 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4108 = fadd fast float %4106, %4075
  %4109 = fmul fast float %4081, %4069
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4084, float %4072, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4108, float %4107, float %4110)  ; FMad(a,b,c)
  %4112 = fsub fast float %4111, %4075
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 2
  %4115 = fsub fast float %4112, %4114
  %4116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4096, float %4097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.ResRet.f32 %4116, 2
  %4120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4096, float %4097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.ResRet.f32 %4120, 2
  %4124 = fadd fast float %4121, %4117
  %4125 = fmul fast float %4124, 0x3F847AE140000000
  %4126 = fadd fast float %4122, %4118
  %4127 = fmul fast float %4126, 0x3F847AE140000000
  %4128 = fadd fast float %4123, %4119
  %4129 = fmul fast float %4128, 0x3F847AE140000000
  br label %4404

; <label>:4130                                    ; preds = %3990
  %4131 = and i32 %149, 1
  %4132 = icmp eq i32 %4131, 0
  br i1 %4132, label %4404, label %4133

; <label>:4133                                    ; preds = %4130
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 0
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4134, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4142 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4143 = extractvalue %dx.types.CBufRet.f32 %4134, 3
  %4144 = extractvalue %dx.types.CBufRet.f32 %4136, 3
  %4145 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4146 = fadd fast float %4143, %4049
  %4147 = fadd fast float %4144, %4050
  %4148 = fadd fast float %4145, %4051
  %4149 = fmul fast float %4146, %4135
  %4150 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4137, float %4149)  ; FMad(a,b,c)
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %4148, float %4139, float %4150)  ; FMad(a,b,c)
  %4152 = fmul fast float %4146, %4140
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4147, float %4141, float %4152)  ; FMad(a,b,c)
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4148, float %4142, float %4153)  ; FMad(a,b,c)
  %4155 = fsub fast float %4151, %4143
  %4156 = fsub fast float %4154, %4144
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.CBufRet.f32 %4157, 2
  %4161 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 3
  %4164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.i32 %4164, 0
  %4166 = extractvalue %dx.types.CBufRet.i32 %4164, 1
  %4167 = udiv i32 %4166, %4165
  %4168 = fsub fast float %4155, %4158
  %4169 = fsub fast float %4156, %4159
  %4170 = call float @dx.op.binary.f32(i32 35, float %4168, float 0.000000e+00)  ; FMax(a,b)
  %4171 = call float @dx.op.binary.f32(i32 35, float %4169, float 0.000000e+00)  ; FMax(a,b)
  %4172 = call float @dx.op.binary.f32(i32 36, float %4170, float %4160)  ; FMin(a,b)
  %4173 = call float @dx.op.binary.f32(i32 36, float %4171, float %4161)  ; FMin(a,b)
  %4174 = add i32 %4165, -1
  %4175 = add i32 %4167, -1
  %4176 = fmul fast float %4172, %4163
  %4177 = fmul fast float %4173, %4163
  %4178 = fptoui float %4176 to i32
  %4179 = fptoui float %4177 to i32
  %4180 = call i32 @dx.op.binary.i32(i32 40, i32 %4178, i32 %4174)  ; UMin(a,b)
  %4181 = call i32 @dx.op.binary.i32(i32 40, i32 %4179, i32 %4175)  ; UMin(a,b)
  %4182 = mul i32 %4181, %4165
  %4183 = add i32 %4182, %4180
  %4184 = shl i32 %4183, 2
  %4185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.i32 %4185, 0
  %4187 = icmp eq i32 %4186, -1
  br i1 %4187, label %4404, label %4188

; <label>:4188                                    ; preds = %4133
  %4189 = mul i32 %4186, 148
  %4190 = add i32 %4189, 4
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = add i32 %4189, 8
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = add i32 %4189, 36
  %4197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.f32 %4197, 0
  %4199 = add i32 %4189, 60
  %4200 = add i32 %4189, 92
  %4201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.i32 %4201, 0
  %4203 = add i32 %4189, 116
  %4204 = fsub fast float %4155, %4192
  %4205 = fsub fast float %4156, %4195
  %4206 = fmul fast float %4163, %4204
  %4207 = fmul fast float %4163, %4205
  %4208 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4209 = call float @dx.op.unary.f32(i32 7, float %4207)  ; Saturate(value)
  %4210 = fsub fast float 1.000000e+00, %4209
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 2
  %4213 = call float @dx.op.unary.f32(i32 83, float %4208)  ; DerivCoarseX(value)
  %4214 = call float @dx.op.unary.f32(i32 83, float %4210)  ; DerivCoarseX(value)
  %4215 = call float @dx.op.unary.f32(i32 84, float %4208)  ; DerivCoarseY(value)
  %4216 = call float @dx.op.unary.f32(i32 84, float %4210)  ; DerivCoarseY(value)
  %4217 = fmul fast float %4213, %4212
  %4218 = fmul fast float %4214, %4212
  %4219 = fmul fast float %4215, %4212
  %4220 = fmul fast float %4216, %4212
  %4221 = call float @dx.op.dot2.f32(i32 54, float %4219, float %4220, float %4219, float %4220)  ; Dot2(ax,ay,bx,by)
  %4222 = call float @dx.op.dot2.f32(i32 54, float %4217, float %4218, float %4217, float %4218)  ; Dot2(ax,ay,bx,by)
  %4223 = call float @dx.op.binary.f32(i32 35, float %4222, float %4221)  ; FMax(a,b)
  %4224 = call float @dx.op.unary.f32(i32 23, float %4223)  ; Log(value)
  %4225 = fmul fast float %4224, 5.000000e-01
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4228 = fadd fast float %4227, %4225
  %4229 = call float @dx.op.binary.f32(i32 35, float %4228, float 0.000000e+00)  ; FMax(a,b)
  %4230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4231 = extractvalue %dx.types.CBufRet.f32 %4230, 3
  %4232 = fadd fast float %4231, %4229
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 3
  %4235 = fadd fast float %4232, %4234
  %4236 = add i32 %4202, 0
  %4237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4236, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4238 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4237, i32 0)  ; GetDimensions(handle,mipLevel)
  %4239 = extractvalue %dx.types.Dimensions %4238, 0
  %4240 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4239)  ; FirstbitLo(value)
  %4241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.i32 %4241, 1
  %4243 = sub nsw i32 %4242, %4240
  %4244 = sitofp i32 %4243 to float
  %4245 = fsub fast float %4235, %4244
  %4246 = call float @dx.op.binary.f32(i32 35, float %4245, float 0.000000e+00)  ; FMax(a,b)
  %4247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4237, %dx.types.Handle %27, float %4208, float %4210, float %4198, float undef, i32 0, i32 0, i32 undef, float %4246)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = fcmp ule float %4248, 0x3FE0101020000000
  %4250 = extractvalue %dx.types.CBufRet.i32 %4241, 0
  %4251 = and i32 %4250, 128
  %4252 = icmp ne i32 %4251, 0
  %4253 = and i1 %4249, %4252
  br i1 %4253, label %4404, label %4254

; <label>:4254                                    ; preds = %4188
  %4255 = add i32 %4189, 20
  %4256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = add i32 %4189, 24
  %4259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4258, i32 undef)  ; BufferLoad(srv,index,wot)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = add i32 %4189, 40
  %4262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = add i32 %4189, 96
  %4265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4266 = extractvalue %dx.types.ResRet.i32 %4265, 0
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 2
  %4269 = fmul fast float %4268, %4208
  %4270 = fmul fast float %4268, %4210
  %4271 = extractvalue %dx.types.CBufRet.f32 %4267, 3
  %4272 = fadd fast float %4269, %4271
  %4273 = fadd fast float %4270, %4271
  %4274 = add i32 %4266, 0
  %4275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4274, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4276 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4275, i32 0)  ; GetDimensions(handle,mipLevel)
  %4277 = extractvalue %dx.types.Dimensions %4276, 0
  %4278 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4277)  ; FirstbitLo(value)
  %4279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.i32 %4279, 1
  %4281 = sub nsw i32 %4280, %4278
  %4282 = sitofp i32 %4281 to float
  %4283 = fsub fast float %4232, %4282
  %4284 = call float @dx.op.binary.f32(i32 35, float %4283, float 0.000000e+00)  ; FMax(a,b)
  %4285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4275, %dx.types.Handle %27, float %4272, float %4273, float %4263, float undef, i32 0, i32 0, i32 undef, float %4284)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = fmul fast float %4286, %4257
  %4288 = fadd fast float %4287, %4260
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 3
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 3
  %4297 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4298 = fadd fast float %4294, %4155
  %4299 = fadd fast float %4296, %4156
  %4300 = fadd fast float %4288, %4297
  %4301 = fmul fast float %4298, %4290
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4299, float %4291, float %4301)  ; FMad(a,b,c)
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4300, float %4292, float %4302)  ; FMad(a,b,c)
  %4304 = fsub fast float %4303, %4297
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4307 = fsub fast float %4304, %4306
  %4308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.i32 %4308, 0
  %4310 = call i32 @dx.op.binary.i32(i32 40, i32 %4186, i32 %4309)  ; UMin(a,b)
  %4311 = mul i32 %4310, 36
  %4312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.i32 %4312, 0
  %4314 = add i32 %4311, 4
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = fmul fast float %4316, %4208
  %4318 = fmul fast float %4316, %4210
  %4319 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4320 = fadd fast float %4317, %4319
  %4321 = fadd fast float %4318, %4319
  %4322 = icmp eq i32 %4313, 0
  br i1 %4322, label %4391, label %4323

; <label>:4323                                    ; preds = %4254
  br label %4324

; <label>:4324                                    ; preds = %4381, %4323
  %4325 = phi float [ %4382, %4381 ], [ 0.000000e+00, %4323 ]
  %4326 = phi float [ %4383, %4381 ], [ 0.000000e+00, %4323 ]
  %4327 = phi float [ %4384, %4381 ], [ 0.000000e+00, %4323 ]
  %4328 = phi float [ %4385, %4381 ], [ 0.000000e+00, %4323 ]
  %4329 = phi float [ %4386, %4381 ], [ 0.000000e+00, %4323 ]
  %4330 = phi float [ %4387, %4381 ], [ 0.000000e+00, %4323 ]
  %4331 = phi i32 [ %4388, %4381 ], [ 0, %4323 ]
  %4332 = shl i32 %4331, 2
  %4333 = add i32 %4199, %4332
  %4334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4333, i32 undef)  ; BufferLoad(srv,index,wot)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = add i32 %4203, %4332
  %4337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4336, i32 undef)  ; BufferLoad(srv,index,wot)
  %4338 = extractvalue %dx.types.ResRet.i32 %4337, 0
  %4339 = add i32 %4338, 0
  %4340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4339, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4341 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4340, i32 0)  ; GetDimensions(handle,mipLevel)
  %4342 = extractvalue %dx.types.Dimensions %4341, 0
  %4343 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4342)  ; FirstbitLo(value)
  %4344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.i32 %4344, 1
  %4346 = sub nsw i32 %4345, %4343
  %4347 = sitofp i32 %4346 to float
  %4348 = fsub fast float %4232, %4347
  %4349 = call float @dx.op.binary.f32(i32 35, float %4348, float 0.000000e+00)  ; FMax(a,b)
  %4350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4340, %dx.types.Handle %27, float %4320, float %4321, float %4335, float undef, i32 0, i32 0, i32 undef, float %4349)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = fcmp fast ogt float %4351, 0.000000e+00
  br i1 %4352, label %4353, label %4381

; <label>:4353                                    ; preds = %4324
  %4354 = add i32 %4314, %4332
  %4355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.i32 %4355, 0
  %4357 = and i32 %4356, 32767
  %4358 = mul nuw nsw i32 %4357, 928
  %4359 = add nuw nsw i32 %4358, 48
  %4360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = extractvalue %dx.types.ResRet.f32 %4360, 1
  %4363 = extractvalue %dx.types.ResRet.f32 %4360, 2
  %4364 = add nuw nsw i32 %4358, 60
  %4365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.ResRet.f32 %4365, 1
  %4368 = extractvalue %dx.types.ResRet.f32 %4365, 2
  %4369 = fmul fast float %4361, %4351
  %4370 = fmul fast float %4362, %4351
  %4371 = fmul fast float %4363, %4351
  %4372 = fadd fast float %4369, %4325
  %4373 = fadd fast float %4370, %4326
  %4374 = fadd fast float %4371, %4327
  %4375 = fmul fast float %4366, %4351
  %4376 = fmul fast float %4367, %4351
  %4377 = fmul fast float %4368, %4351
  %4378 = fadd fast float %4375, %4328
  %4379 = fadd fast float %4376, %4329
  %4380 = fadd fast float %4377, %4330
  br label %4381

; <label>:4381                                    ; preds = %4353, %4324
  %4382 = phi float [ %4372, %4353 ], [ %4325, %4324 ]
  %4383 = phi float [ %4373, %4353 ], [ %4326, %4324 ]
  %4384 = phi float [ %4374, %4353 ], [ %4327, %4324 ]
  %4385 = phi float [ %4378, %4353 ], [ %4328, %4324 ]
  %4386 = phi float [ %4379, %4353 ], [ %4329, %4324 ]
  %4387 = phi float [ %4380, %4353 ], [ %4330, %4324 ]
  %4388 = add nuw i32 %4331, 1
  %4389 = icmp eq i32 %4388, %4313
  br i1 %4389, label %4390, label %4324

; <label>:4390                                    ; preds = %4381
  br label %4391

; <label>:4391                                    ; preds = %4390, %4254
  %4392 = phi float [ 0.000000e+00, %4254 ], [ %4382, %4390 ]
  %4393 = phi float [ 0.000000e+00, %4254 ], [ %4383, %4390 ]
  %4394 = phi float [ 0.000000e+00, %4254 ], [ %4384, %4390 ]
  %4395 = phi float [ 0.000000e+00, %4254 ], [ %4385, %4390 ]
  %4396 = phi float [ 0.000000e+00, %4254 ], [ %4386, %4390 ]
  %4397 = phi float [ 0.000000e+00, %4254 ], [ %4387, %4390 ]
  %4398 = fadd fast float %4395, %4392
  %4399 = fmul fast float %4398, 0x3F847AE140000000
  %4400 = fadd fast float %4396, %4393
  %4401 = fmul fast float %4400, 0x3F847AE140000000
  %4402 = fadd fast float %4397, %4394
  %4403 = fmul fast float %4402, 0x3F847AE140000000
  br label %4404

; <label>:4404                                    ; preds = %4391, %4188, %4133, %4130, %4101, %4063
  %4405 = phi float [ %4115, %4101 ], [ -1.310720e+05, %4063 ], [ %4307, %4391 ], [ -1.310720e+05, %4133 ], [ -1.310720e+05, %4188 ], [ -1.310720e+05, %4130 ]
  %4406 = phi float [ %4125, %4101 ], [ 0.000000e+00, %4063 ], [ %4399, %4391 ], [ 0.000000e+00, %4133 ], [ 0.000000e+00, %4188 ], [ 0.000000e+00, %4130 ]
  %4407 = phi float [ %4127, %4101 ], [ 0.000000e+00, %4063 ], [ %4401, %4391 ], [ 0.000000e+00, %4133 ], [ 0.000000e+00, %4188 ], [ 0.000000e+00, %4130 ]
  %4408 = phi float [ %4129, %4101 ], [ 0.000000e+00, %4063 ], [ %4403, %4391 ], [ 0.000000e+00, %4133 ], [ 0.000000e+00, %4188 ], [ 0.000000e+00, %4130 ]
  %4409 = phi i1 [ true, %4101 ], [ false, %4063 ], [ true, %4391 ], [ false, %4133 ], [ false, %4188 ], [ false, %4130 ]
  %4410 = and i32 %149, 3
  %4411 = icmp eq i32 %4410, 1
  %4412 = select i1 %4411, float 1.000000e+00, float 0.000000e+00
  %4413 = fsub fast float %4405, %133
  %4414 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4415 = select i1 %4409, float %4414, float 1.000000e+00
  %4416 = fmul fast float %4415, %4412
  %4417 = icmp eq i32 %4410, 3
  %4418 = select i1 %4417, float 1.000000e+00, float %4416
  %4419 = call float @dx.op.binary.f32(i32 35, float %4006, float %4418)  ; FMax(a,b)
  %4420 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4421 = fcmp fast une float %4420, 0.000000e+00
  %4422 = call float @dx.op.dot3.f32(i32 55, float %131, float %132, float %133, float %131, float %132, float %133)  ; Dot3(ax,ay,az,bx,by,bz)
  %4423 = call float @dx.op.unary.f32(i32 25, float %4422)  ; Rsqrt(value)
  br i1 %4421, label %4431, label %4424

; <label>:4424                                    ; preds = %4404
  %4425 = fmul fast float %4423, %131
  %4426 = fmul fast float %4423, %132
  %4427 = fmul fast float %4423, %133
  %4428 = fsub fast float -0.000000e+00, %4425
  %4429 = fsub fast float -0.000000e+00, %4426
  %4430 = fsub fast float -0.000000e+00, %4427
  br label %4599

; <label>:4431                                    ; preds = %4404
  %4432 = fmul fast float %131, %4423
  %4433 = fsub fast float -0.000000e+00, %4432
  %4434 = fmul fast float %132, %4423
  %4435 = fsub fast float -0.000000e+00, %4434
  %4436 = fmul fast float %133, %4423
  %4437 = fsub fast float -0.000000e+00, %4436
  %4438 = call float @dx.op.dot3.f32(i32 55, float %4433, float %4435, float %4437, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4439 = fmul fast float %4420, 2.500000e+00
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fmul fast float %4420, 0x4013FFFFE0000000
  %4442 = fadd fast float %4441, 0xBFFFFFFFE0000000
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = fmul fast float %4420, 0x4004000020000000
  %4445 = fadd fast float %4444, 0xBFF8000040000000
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4448 = fmul fast float %4009, 1.000000e+01
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = fmul fast float %4449, 2.000000e+00
  %4451 = fsub fast float 3.000000e+00, %4450
  %4452 = fmul fast float %4449, %4449
  %4453 = fmul fast float %4452, %4451
  %4454 = fsub fast float 1.000000e+00, %4453
  %4455 = fsub fast float 0x3FE3333340000000, %4030
  %4456 = fmul fast float %4455, 0x400AAAAAA0000000
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = fmul fast float %4454, %4457
  %4459 = fmul fast float %4042, 0x3FEA2B8620000000
  %4460 = fmul fast float %4043, 0x3FEA2B8620000000
  %4461 = fmul fast float %4044, 0x3FEA2B8620000000
  %4462 = fadd fast float %4459, 0x3FC81DFBA0000000
  %4463 = fmul fast float %4462, %4042
  %4464 = fadd fast float %4463, 0x3F910E6020000000
  %4465 = fadd fast float %4460, 0x3FC81DFBA0000000
  %4466 = fmul fast float %4465, %4043
  %4467 = fadd fast float %4466, 0x3F910E6020000000
  %4468 = fadd fast float %4461, 0x3FC81DFBA0000000
  %4469 = fmul fast float %4468, %4044
  %4470 = fadd fast float %4469, 0x3F910E6020000000
  %4471 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4474 = fsub fast float %4471, %4042
  %4475 = fsub fast float %4472, %4043
  %4476 = fsub fast float %4473, %4044
  %4477 = fmul fast float %4474, %4447
  %4478 = fmul fast float %4477, %4458
  %4479 = fmul fast float %4475, %4447
  %4480 = fmul fast float %4479, %4458
  %4481 = fmul fast float %4476, %4447
  %4482 = fmul fast float %4481, %4458
  %4483 = fadd fast float %4478, %4042
  %4484 = fadd fast float %4480, %4043
  %4485 = fadd fast float %4482, %4044
  %4486 = fmul fast float %4003, %4003
  %4487 = fmul fast float %4486, %4486
  %4488 = fadd fast float %4443, 1.000000e+00
  %4489 = fsub fast float %4488, %4458
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = fsub fast float 1.000000e+00, %4487
  %4494 = call float @dx.op.binary.f32(i32 36, float %4490, float %4493)  ; FMin(a,b)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4496 = call float @dx.op.binary.f32(i32 35, float %4494, float %4495)  ; FMax(a,b)
  %4497 = fadd fast float %4492, 0xBFE4CCCCC0000000
  %4498 = fmul fast float %4497, 0x4006DB6DA0000000
  %4499 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4500 = fmul fast float %4499, 2.000000e+00
  %4501 = fsub fast float 3.000000e+00, %4500
  %4502 = bitcast float %4027 to i32
  %4503 = ashr i32 %4502, 1
  %4504 = add nsw i32 %4503, 532487669
  %4505 = bitcast i32 %4504 to float
  %4506 = fsub fast float 1.000000e+00, %4505
  %4507 = bitcast float %4506 to i32
  %4508 = sub nsw i32 2129859010, %4507
  %4509 = bitcast i32 %4508 to float
  %4510 = fmul fast float %4509, 2.000000e+00
  %4511 = bitcast float %4028 to i32
  %4512 = ashr i32 %4511, 1
  %4513 = add nsw i32 %4512, 532487669
  %4514 = bitcast i32 %4513 to float
  %4515 = fsub fast float 1.000000e+00, %4514
  %4516 = bitcast float %4515 to i32
  %4517 = sub nsw i32 2129859010, %4516
  %4518 = bitcast i32 %4517 to float
  %4519 = fmul fast float %4518, 2.000000e+00
  %4520 = bitcast float %4029 to i32
  %4521 = ashr i32 %4520, 1
  %4522 = add nsw i32 %4521, 532487669
  %4523 = bitcast i32 %4522 to float
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = bitcast float %4524 to i32
  %4526 = sub nsw i32 2129859010, %4525
  %4527 = bitcast i32 %4526 to float
  %4528 = fmul fast float %4527, 2.000000e+00
  %4529 = fsub fast float 0x4002A9FBE0000000, %4510
  %4530 = fadd fast float %4510, 0x3FD54FDF00000000
  %4531 = bitcast float %4530 to i32
  %4532 = sub nsw i32 2129859010, %4531
  %4533 = bitcast i32 %4532 to float
  %4534 = fmul fast float %4533, %4529
  %4535 = fmul fast float %4534, %4534
  %4536 = fsub fast float 0x4002A9FBE0000000, %4519
  %4537 = fadd fast float %4519, 0x3FD54FDF00000000
  %4538 = bitcast float %4537 to i32
  %4539 = sub nsw i32 2129859010, %4538
  %4540 = bitcast i32 %4539 to float
  %4541 = fmul fast float %4540, %4536
  %4542 = fmul fast float %4541, %4541
  %4543 = fsub fast float 0x4002A9FBE0000000, %4528
  %4544 = fadd fast float %4528, 0x3FD54FDF00000000
  %4545 = bitcast float %4544 to i32
  %4546 = sub nsw i32 2129859010, %4545
  %4547 = bitcast i32 %4546 to float
  %4548 = fmul fast float %4547, %4543
  %4549 = fmul fast float %4548, %4548
  %4550 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4535)  ; FMax(a,b)
  %4551 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4542)  ; FMax(a,b)
  %4552 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4549)  ; FMax(a,b)
  %4553 = fsub fast float 1.000000e+00, %4438
  %4554 = fadd fast float %4553, %4454
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = fsub fast float 1.000000e+00, %4418
  %4557 = fmul fast float %4496, %4556
  %4558 = fmul fast float %4499, %4499
  %4559 = fmul fast float %4558, %4557
  %4560 = fmul fast float %4559, %4501
  %4561 = fmul fast float %4556, 0xBFE99999A0000000
  %4562 = fmul fast float %4561, %4447
  %4563 = fmul fast float %4562, %4458
  %4564 = fadd fast float %4563, 1.000000e+00
  %4565 = fadd fast float %4030, -1.000000e+00
  %4566 = fmul fast float %4564, %4565
  %4567 = fadd fast float %4566, 1.000000e+00
  %4568 = fsub fast float %4550, %4027
  %4569 = fsub fast float %4551, %4028
  %4570 = fsub fast float %4552, %4029
  %4571 = fmul fast float %4560, %4568
  %4572 = fmul fast float %4560, %4569
  %4573 = fmul fast float %4560, %4570
  %4574 = fadd fast float %4571, %4027
  %4575 = fadd fast float %4572, %4028
  %4576 = fadd fast float %4573, %4029
  %4577 = fsub fast float %84, %3991
  %4578 = fsub fast float %86, %3992
  %4579 = fsub fast float %88, %3993
  %4580 = fmul fast float %4560, %4577
  %4581 = fmul fast float %4560, %4578
  %4582 = fmul fast float %4560, %4579
  %4583 = fadd fast float %4580, %3991
  %4584 = fadd fast float %4581, %3992
  %4585 = fadd fast float %4582, %3993
  %4586 = fmul fast float %4560, %4555
  %4587 = call float @dx.op.unary.f32(i32 7, float %4567)  ; Saturate(value)
  %4588 = fsub fast float 1.000000e+00, %4587
  %4589 = fmul fast float %4586, %4588
  %4590 = fadd fast float %4589, %4587
  %4591 = fsub fast float 1.000000e+00, %4003
  %4592 = fmul fast float %4560, %4591
  %4593 = fadd fast float %4592, %4003
  %4594 = call float @dx.op.dot3.f32(i32 55, float %4583, float %4584, float %4585, float %4583, float %4584, float %4585)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = call float @dx.op.unary.f32(i32 25, float %4594)  ; Rsqrt(value)
  %4596 = fmul fast float %4583, %4595
  %4597 = fmul fast float %4584, %4595
  %4598 = fmul fast float %4585, %4595
  br label %4599

; <label>:4599                                    ; preds = %4431, %4424
  %4600 = phi float [ %4430, %4424 ], [ %4437, %4431 ]
  %4601 = phi float [ %4429, %4424 ], [ %4435, %4431 ]
  %4602 = phi float [ %4428, %4424 ], [ %4433, %4431 ]
  %4603 = phi float [ %4427, %4424 ], [ %4436, %4431 ]
  %4604 = phi float [ %4426, %4424 ], [ %4434, %4431 ]
  %4605 = phi float [ %4425, %4424 ], [ %4432, %4431 ]
  %4606 = phi float [ %4042, %4424 ], [ %4483, %4431 ]
  %4607 = phi float [ %4043, %4424 ], [ %4484, %4431 ]
  %4608 = phi float [ %4044, %4424 ], [ %4485, %4431 ]
  %4609 = phi float [ %3991, %4424 ], [ %4596, %4431 ]
  %4610 = phi float [ %3992, %4424 ], [ %4597, %4431 ]
  %4611 = phi float [ %3993, %4424 ], [ %4598, %4431 ]
  %4612 = phi float [ %4027, %4424 ], [ %4574, %4431 ]
  %4613 = phi float [ %4028, %4424 ], [ %4575, %4431 ]
  %4614 = phi float [ %4029, %4424 ], [ %4576, %4431 ]
  %4615 = phi float [ %4030, %4424 ], [ %4590, %4431 ]
  %4616 = phi float [ %4003, %4424 ], [ %4593, %4431 ]
  %4617 = select i1 %173, float 0.000000e+00, float %4614
  %4618 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %4602, float %4601, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4605, float %4604, float %4603, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = fmul fast float %4620, 2.000000e+00
  %4622 = fmul fast float %4621, %4609
  %4623 = fmul fast float %4621, %4610
  %4624 = fmul fast float %4621, %4611
  %4625 = fsub fast float %4605, %4622
  %4626 = fsub fast float %4604, %4623
  %4627 = fsub fast float %4603, %4624
  %4628 = call float @dx.op.binary.f32(i32 36, float %4616, float 1.000000e+00)  ; FMin(a,b)
  %4629 = fsub fast float 1.000000e+00, %4616
  %4630 = bitcast float %4629 to i32
  %4631 = sub nsw i32 2129859010, %4630
  %4632 = bitcast i32 %4631 to float
  %4633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4634 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = fcmp fast oeq float %4634, 0.000000e+00
  %4636 = fcmp fast oeq float %4633, 0.000000e+00
  %4637 = or i1 %4636, %4635
  br i1 %4637, label %4667, label %4638

; <label>:4638                                    ; preds = %4599
  %4639 = fsub fast float -0.000000e+00, %55
  %4640 = fsub fast float -0.000000e+00, %53
  %4641 = call float @dx.op.unary.f32(i32 24, float %4634)  ; Sqrt(value)
  %4642 = fdiv fast float %4641, %4633
  %4643 = fcmp fast ogt float %4642, 0x3FFB6F8900000000
  %4644 = select i1 %4643, float 0x3FFB6F8900000000, float %4642
  %4645 = fmul fast float %4644, 0x3FE8A23460000000
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = call float @dx.op.binary.f32(i32 35, float %4644, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4648 = fmul fast float %4646, %4633
  %4649 = fmul fast float %4647, 0x3FF279A740000000
  %4650 = fadd fast float %4649, -1.000000e+00
  %4651 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4640, float %54, float %4639, float %4640, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4652 = call float @dx.op.unary.f32(i32 25, float %4651)  ; Rsqrt(value)
  %4653 = fmul fast float %4652, %4639
  %4654 = fmul fast float %4652, %4640
  %4655 = fmul fast float %4652, %54
  %4656 = fmul fast float %4650, %4650
  %4657 = fsub fast float 1.000000e+00, %4656
  %4658 = fmul fast float %4647, 0x40005F8BE0000000
  %4659 = fsub fast float 0x400C5BF8A0000000, %4658
  %4660 = fdiv fast float %4648, %4659
  %4661 = fmul fast float %4660, 0x3FEE31C3C0000000
  %4662 = fmul fast float %4661, %4657
  %4663 = fmul fast float %4647, 0x3FDACB7480000000
  %4664 = fadd fast float %4663, 0xBFD7347680000000
  %4665 = fmul fast float %4664, %4660
  %4666 = fmul fast float %4665, %4657
  br label %4667

; <label>:4667                                    ; preds = %4638, %4599
  %4668 = phi float [ %4653, %4638 ], [ 0.000000e+00, %4599 ]
  %4669 = phi float [ %4654, %4638 ], [ 0.000000e+00, %4599 ]
  %4670 = phi float [ %4655, %4638 ], [ 0.000000e+00, %4599 ]
  %4671 = phi float [ %4662, %4638 ], [ 0.000000e+00, %4599 ]
  %4672 = phi float [ %4666, %4638 ], [ 0.000000e+00, %4599 ]
  %4673 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = fmul fast float %4673, %4673
  %4675 = fmul fast float %4674, 0x3FEE471020000000
  %4676 = fadd fast float %4675, 0xBFD42F6020000000
  %4677 = fmul fast float %4633, 0x3FD20DD760000000
  %4678 = fmul fast float %4676, %4672
  %4679 = fmul fast float %4671, 0x3FDF454380000000
  %4680 = fmul fast float %4679, %4673
  %4681 = fadd fast float %4680, %4677
  %4682 = fadd fast float %4681, %4678
  %4683 = call float @dx.op.dot3.f32(i32 55, float %4668, float %4669, float %4670, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = fmul fast float %4683, 0x3FDF454380000000
  %4685 = fmul fast float %4683, %4683
  %4686 = fmul fast float %4685, 0x3FEE471020000000
  %4687 = fadd fast float %4686, 0xBFD42F6020000000
  %4688 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4671, float %4672, float 0x3FD20DD760000000, float %4684, float %4687)  ; Dot3(ax,ay,az,bx,by,bz)
  %4689 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4690 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = fcmp fast oeq float %4690, 0.000000e+00
  %4692 = fcmp fast oeq float %4689, 0.000000e+00
  %4693 = or i1 %4692, %4691
  br i1 %4693, label %4723, label %4694

; <label>:4694                                    ; preds = %4667
  %4695 = fsub fast float -0.000000e+00, %51
  %4696 = fsub fast float -0.000000e+00, %49
  %4697 = call float @dx.op.unary.f32(i32 24, float %4690)  ; Sqrt(value)
  %4698 = fdiv fast float %4697, %4689
  %4699 = fcmp fast ogt float %4698, 0x3FFB6F8900000000
  %4700 = select i1 %4699, float 0x3FFB6F8900000000, float %4698
  %4701 = fmul fast float %4700, 0x3FE8A23460000000
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = call float @dx.op.binary.f32(i32 35, float %4700, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4704 = fmul fast float %4702, %4689
  %4705 = fmul fast float %4703, 0x3FF279A740000000
  %4706 = fadd fast float %4705, -1.000000e+00
  %4707 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %50, float %4695, float %4696, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4708 = call float @dx.op.unary.f32(i32 25, float %4707)  ; Rsqrt(value)
  %4709 = fmul fast float %4708, %4695
  %4710 = fmul fast float %4708, %4696
  %4711 = fmul fast float %4708, %50
  %4712 = fmul fast float %4706, %4706
  %4713 = fsub fast float 1.000000e+00, %4712
  %4714 = fmul fast float %4703, 0x40005F8BE0000000
  %4715 = fsub fast float 0x400C5BF8A0000000, %4714
  %4716 = fdiv fast float %4704, %4715
  %4717 = fmul fast float %4716, 0x3FEE31C3C0000000
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %4703, 0x3FDACB7480000000
  %4720 = fadd fast float %4719, 0xBFD7347680000000
  %4721 = fmul fast float %4720, %4716
  %4722 = fmul fast float %4721, %4713
  br label %4723

; <label>:4723                                    ; preds = %4694, %4667
  %4724 = phi float [ %4709, %4694 ], [ 0.000000e+00, %4667 ]
  %4725 = phi float [ %4710, %4694 ], [ 0.000000e+00, %4667 ]
  %4726 = phi float [ %4711, %4694 ], [ 0.000000e+00, %4667 ]
  %4727 = phi float [ %4718, %4694 ], [ 0.000000e+00, %4667 ]
  %4728 = phi float [ %4722, %4694 ], [ 0.000000e+00, %4667 ]
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4725, float %4726, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = fmul fast float %4729, %4729
  %4731 = fmul fast float %4730, 0x3FEE471020000000
  %4732 = fadd fast float %4731, 0xBFD42F6020000000
  %4733 = fmul fast float %4689, 0x3FD20DD760000000
  %4734 = fmul fast float %4732, %4728
  %4735 = fmul fast float %4727, 0x3FDF454380000000
  %4736 = fmul fast float %4735, %4729
  %4737 = fadd fast float %4736, %4733
  %4738 = fadd fast float %4737, %4734
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4725, float %4726, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = fmul fast float %4739, 0x3FDF454380000000
  %4741 = fmul fast float %4739, %4739
  %4742 = fmul fast float %4741, 0x3FEE471020000000
  %4743 = fadd fast float %4742, 0xBFD42F6020000000
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4727, float %4728, float 0x3FD20DD760000000, float %4740, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4746 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4747 = fcmp fast oeq float %4746, 0.000000e+00
  %4748 = fcmp fast oeq float %4745, 0.000000e+00
  %4749 = or i1 %4748, %4747
  br i1 %4749, label %4779, label %4750

; <label>:4750                                    ; preds = %4723
  %4751 = fsub fast float -0.000000e+00, %47
  %4752 = fsub fast float -0.000000e+00, %45
  %4753 = call float @dx.op.unary.f32(i32 24, float %4746)  ; Sqrt(value)
  %4754 = fdiv fast float %4753, %4745
  %4755 = fcmp fast ogt float %4754, 0x3FFB6F8900000000
  %4756 = select i1 %4755, float 0x3FFB6F8900000000, float %4754
  %4757 = fmul fast float %4756, 0x3FE8A23460000000
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = call float @dx.op.binary.f32(i32 35, float %4756, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4760 = fmul fast float %4758, %4745
  %4761 = fmul fast float %4759, 0x3FF279A740000000
  %4762 = fadd fast float %4761, -1.000000e+00
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %46, float %4751, float %4752, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = call float @dx.op.unary.f32(i32 25, float %4763)  ; Rsqrt(value)
  %4765 = fmul fast float %4764, %4751
  %4766 = fmul fast float %4764, %4752
  %4767 = fmul fast float %4764, %46
  %4768 = fmul fast float %4762, %4762
  %4769 = fsub fast float 1.000000e+00, %4768
  %4770 = fmul fast float %4759, 0x40005F8BE0000000
  %4771 = fsub fast float 0x400C5BF8A0000000, %4770
  %4772 = fdiv fast float %4760, %4771
  %4773 = fmul fast float %4772, 0x3FEE31C3C0000000
  %4774 = fmul fast float %4773, %4769
  %4775 = fmul fast float %4759, 0x3FDACB7480000000
  %4776 = fadd fast float %4775, 0xBFD7347680000000
  %4777 = fmul fast float %4776, %4772
  %4778 = fmul fast float %4777, %4769
  br label %4779

; <label>:4779                                    ; preds = %4750, %4723
  %4780 = phi float [ %4765, %4750 ], [ 0.000000e+00, %4723 ]
  %4781 = phi float [ %4766, %4750 ], [ 0.000000e+00, %4723 ]
  %4782 = phi float [ %4767, %4750 ], [ 0.000000e+00, %4723 ]
  %4783 = phi float [ %4774, %4750 ], [ 0.000000e+00, %4723 ]
  %4784 = phi float [ %4778, %4750 ], [ 0.000000e+00, %4723 ]
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4781, float %4782, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = fmul fast float %4785, %4785
  %4787 = fmul fast float %4786, 0x3FEE471020000000
  %4788 = fadd fast float %4787, 0xBFD42F6020000000
  %4789 = fmul fast float %4745, 0x3FD20DD760000000
  %4790 = fmul fast float %4788, %4784
  %4791 = fmul fast float %4783, 0x3FDF454380000000
  %4792 = fmul fast float %4791, %4785
  %4793 = fadd fast float %4792, %4789
  %4794 = fadd fast float %4793, %4790
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4781, float %4782, float %4625, float %4626, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = fmul fast float %4795, 0x3FDF454380000000
  %4797 = fmul fast float %4795, %4795
  %4798 = fmul fast float %4797, 0x3FEE471020000000
  %4799 = fadd fast float %4798, 0xBFD42F6020000000
  %4800 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4783, float %4784, float 0x3FD20DD760000000, float %4796, float %4799)  ; Dot3(ax,ay,az,bx,by,bz)
  %4801 = call float @dx.op.binary.f32(i32 35, float %4682, float 0.000000e+00)  ; FMax(a,b)
  %4802 = call float @dx.op.binary.f32(i32 35, float %4738, float 0.000000e+00)  ; FMax(a,b)
  %4803 = call float @dx.op.binary.f32(i32 35, float %4794, float 0.000000e+00)  ; FMax(a,b)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4688, float 0.000000e+00)  ; FMax(a,b)
  %4805 = call float @dx.op.binary.f32(i32 35, float %4744, float 0.000000e+00)  ; FMax(a,b)
  %4806 = call float @dx.op.binary.f32(i32 35, float %4800, float 0.000000e+00)  ; FMax(a,b)
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4809 = call float @dx.op.binary.f32(i32 36, float %4606, float %4808)  ; FMin(a,b)
  %4810 = fsub fast float 1.000000e+00, %4628
  %4811 = fmul fast float %4809, %4810
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = bitcast float %4812 to i32
  %4814 = sub nsw i32 2129859010, %4813
  %4815 = bitcast i32 %4814 to float
  %4816 = call float @dx.op.binary.f32(i32 36, float %4607, float %4808)  ; FMin(a,b)
  %4817 = fmul fast float %4816, %4810
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = bitcast float %4818 to i32
  %4820 = sub nsw i32 2129859010, %4819
  %4821 = bitcast i32 %4820 to float
  %4822 = call float @dx.op.binary.f32(i32 36, float %4608, float %4808)  ; FMin(a,b)
  %4823 = fmul fast float %4822, %4810
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = bitcast float %4824 to i32
  %4826 = sub nsw i32 2129859010, %4825
  %4827 = bitcast i32 %4826 to float
  %4828 = fmul fast float %4801, %4628
  %4829 = fmul fast float %4828, %4815
  %4830 = fmul fast float %4802, %4628
  %4831 = fmul fast float %4830, %4821
  %4832 = fmul fast float %4803, %4628
  %4833 = fmul fast float %4832, %4827
  %4834 = call float @dx.op.binary.f32(i32 36, float %4612, float %4808)  ; FMin(a,b)
  %4835 = fmul fast float %4834, %4810
  %4836 = fsub fast float 1.000000e+00, %4835
  %4837 = bitcast float %4836 to i32
  %4838 = sub nsw i32 2129859010, %4837
  %4839 = bitcast i32 %4838 to float
  %4840 = call float @dx.op.binary.f32(i32 36, float %4613, float %4808)  ; FMin(a,b)
  %4841 = fmul fast float %4840, %4810
  %4842 = fsub fast float 1.000000e+00, %4841
  %4843 = bitcast float %4842 to i32
  %4844 = sub nsw i32 2129859010, %4843
  %4845 = bitcast i32 %4844 to float
  %4846 = call float @dx.op.binary.f32(i32 36, float %4617, float %4808)  ; FMin(a,b)
  %4847 = fmul fast float %4846, %4810
  %4848 = fsub fast float 1.000000e+00, %4847
  %4849 = bitcast float %4848 to i32
  %4850 = sub nsw i32 2129859010, %4849
  %4851 = bitcast i32 %4850 to float
  %4852 = fmul fast float %4804, %4628
  %4853 = fmul fast float %4852, %4839
  %4854 = fmul fast float %4805, %4628
  %4855 = fmul fast float %4854, %4845
  %4856 = fmul fast float %4806, %4628
  %4857 = fmul fast float %4856, %4851
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4829, float %4831, float %4833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = select i1 %173, float 0.000000e+00, float %4829
  %4860 = select i1 %173, float %4858, float %4831
  %4861 = select i1 %173, float 0.000000e+00, float %4833
  %4862 = call float @dx.op.dot3.f32(i32 55, float %4853, float %4855, float %4857, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = select i1 %173, float 0.000000e+00, float %4853
  %4864 = select i1 %173, float %4862, float %4855
  %4865 = select i1 %173, float 0.000000e+00, float %4857
  %4866 = fmul fast float %4619, 9.843750e-01
  %4867 = fmul fast float %4615, 9.843750e-01
  %4868 = fadd fast float %4866, 7.812500e-03
  %4869 = fadd fast float %4867, 7.812500e-03
  %4870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4868, float %4869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4871 = extractvalue %dx.types.ResRet.f32 %4870, 2
  %4872 = extractvalue %dx.types.ResRet.f32 %4870, 3
  %4873 = fmul fast float %4871, %4612
  %4874 = fmul fast float %4871, %4613
  %4875 = fmul fast float %4871, %4617
  %4876 = fadd fast float %4873, %4872
  %4877 = fadd fast float %4874, %4872
  %4878 = fadd fast float %4875, %4872
  %4879 = fcmp fast ogt float %4004, 0.000000e+00
  br i1 %4879, label %4880, label %4906

; <label>:4880                                    ; preds = %4779
  %4881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4004, float %4619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4882 = extractvalue %dx.types.ResRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.ResRet.f32 %4881, 1
  %4884 = extractvalue %dx.types.ResRet.f32 %4881, 2
  %4885 = fadd fast float %4882, -5.000000e-01
  %4886 = fadd fast float %4883, -5.000000e-01
  %4887 = fadd fast float %4884, -5.000000e-01
  %4888 = fsub fast float 1.000000e+00, %4612
  %4889 = fsub fast float 1.000000e+00, %4613
  %4890 = fsub fast float 1.000000e+00, %4617
  %4891 = fmul fast float %4612, 4.000000e+00
  %4892 = fmul fast float %4891, %4888
  %4893 = fmul fast float %4892, %4885
  %4894 = fmul fast float %4613, 4.000000e+00
  %4895 = fmul fast float %4894, %4889
  %4896 = fmul fast float %4895, %4886
  %4897 = fmul fast float %4617, 4.000000e+00
  %4898 = fmul fast float %4897, %4890
  %4899 = fmul fast float %4898, %4887
  %4900 = fadd fast float %4893, %4876
  %4901 = fadd fast float %4896, %4877
  %4902 = fadd fast float %4899, %4878
  %4903 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4904 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4905 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  br label %4906

; <label>:4906                                    ; preds = %4880, %4779
  %4907 = phi float [ %4903, %4880 ], [ %4876, %4779 ]
  %4908 = phi float [ %4904, %4880 ], [ %4877, %4779 ]
  %4909 = phi float [ %4905, %4880 ], [ %4878, %4779 ]
  %4910 = call float @dx.op.binary.f32(i32 35, float %4908, float %4909)  ; FMax(a,b)
  %4911 = call float @dx.op.binary.f32(i32 35, float %4907, float %4910)  ; FMax(a,b)
  %4912 = fsub fast float 1.000000e+00, %4911
  %4913 = fmul fast float %4912, %4859
  %4914 = fmul fast float %4912, %4860
  %4915 = fmul fast float %4912, %4861
  %4916 = call float @dx.op.dot3.f32(i32 55, float %4606, float %4607, float %4608, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = fcmp fast ogt float %4916, 0x3E7FF19E20000000
  %4918 = fdiv fast float 1.000000e+00, %4916
  %4919 = select i1 %4917, float %4918, float 0.000000e+00
  %4920 = fmul fast float %4919, %4606
  %4921 = fmul fast float %4919, %4607
  %4922 = fmul fast float %4919, %4608
  %4923 = fadd fast float %4920, -1.000000e+00
  %4924 = fadd fast float %4921, -1.000000e+00
  %4925 = fadd fast float %4922, -1.000000e+00
  %4926 = fmul fast float %4923, 5.000000e-01
  %4927 = fmul fast float %4924, 5.000000e-01
  %4928 = fmul fast float %4925, 5.000000e-01
  %4929 = fadd fast float %4926, 1.000000e+00
  %4930 = fadd fast float %4927, 1.000000e+00
  %4931 = fadd fast float %4928, 1.000000e+00
  %4932 = fmul fast float %4907, %4863
  %4933 = fmul fast float %4908, %4864
  %4934 = fmul fast float %4909, %4865
  %4935 = fsub fast float 1.000000e+00, %4619
  %4936 = bitcast float %4935 to i32
  %4937 = sitofp i32 %4936 to float
  %4938 = fmul fast float %4937, 5.000000e+00
  %4939 = fadd fast float %4938, 0xC1EFBF8940000000
  %4940 = fptosi float %4939 to i32
  %4941 = bitcast i32 %4940 to float
  %4942 = fmul fast float %4941, %4005
  %4943 = fmul fast float %4859, %4942
  %4944 = fmul fast float %4943, %4912
  %4945 = fmul fast float %4944, %4929
  %4946 = fmul fast float %4860, %4942
  %4947 = fmul fast float %4946, %4912
  %4948 = fmul fast float %4947, %4930
  %4949 = fmul fast float %4861, %4942
  %4950 = fmul fast float %4949, %4912
  %4951 = fmul fast float %4950, %4931
  %4952 = fmul fast float %4913, %4001
  %4953 = fmul fast float %4914, %4001
  %4954 = fmul fast float %4915, %4001
  %4955 = fadd fast float %4932, %3997
  %4956 = fadd fast float %4955, %4945
  %4957 = fmul fast float %4956, %4001
  %4958 = fadd fast float %4933, %3998
  %4959 = fadd fast float %4958, %4948
  %4960 = fmul fast float %4959, %4001
  %4961 = fadd fast float %4934, %3999
  %4962 = fadd fast float %4961, %4951
  %4963 = fmul fast float %4962, %4001
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 3
  %4966 = fcmp fast oeq float %4965, 0.000000e+00
  br i1 %4966, label %5194, label %4967

; <label>:4967                                    ; preds = %4906
  %4968 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4969 = extractvalue %dx.types.CBufRet.f32 %4964, 1
  %4970 = extractvalue %dx.types.CBufRet.f32 %4964, 2
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.CBufRet.f32 %4971, 2
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 0
  %4977 = extractvalue %dx.types.CBufRet.f32 %4975, 1
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4972, float %4973, float %4974, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = select i1 %173, float %4976, float %4972
  %4980 = select i1 %173, float %4978, float %4973
  %4981 = select i1 %173, float %4977, float %4974
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 1
  %4984 = fcmp fast une float %4983, 0.000000e+00
  br i1 %4984, label %4985, label %5002

; <label>:4985                                    ; preds = %4967
  %4986 = fptoui float %75 to i32
  %4987 = fptoui float %76 to i32
  %4988 = lshr i32 %4986, 4
  %4989 = lshr i32 %4987, 4
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = fptoui float %4991 to i32
  %4993 = add i32 %4992, 15
  %4994 = lshr i32 %4993, 4
  %4995 = mul i32 %4994, %4989
  %4996 = add i32 %4995, %4988
  %4997 = shl i32 %4996, 3
  %4998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4997, i32 undef)  ; BufferLoad(srv,index,wot)
  %4999 = extractvalue %dx.types.ResRet.i32 %4998, 0
  %5000 = and i32 %4999, -268435456
  %5001 = icmp eq i32 %5000, -1342177280
  br i1 %5001, label %5012, label %5002

; <label>:5002                                    ; preds = %4985, %4967
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 2
  %5005 = extractvalue %dx.types.CBufRet.f32 %5003, 3
  %5006 = fmul fast float %5004, %75
  %5007 = fmul fast float %5005, %76
  %5008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5006, float %5007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5009 = extractvalue %dx.types.ResRet.f32 %5008, 0
  %5010 = extractvalue %dx.types.ResRet.f32 %5008, 1
  %5011 = extractvalue %dx.types.ResRet.f32 %5008, 2
  br label %5012

; <label>:5012                                    ; preds = %5002, %4985
  %5013 = phi float [ %5009, %5002 ], [ 0.000000e+00, %4985 ]
  %5014 = phi float [ %5010, %5002 ], [ 0.000000e+00, %4985 ]
  %5015 = phi float [ %5011, %5002 ], [ 0.000000e+00, %4985 ]
  %5016 = call float @dx.op.binary.f32(i32 36, float %5014, float %5015)  ; FMin(a,b)
  %5017 = call float @dx.op.binary.f32(i32 36, float %5013, float %5016)  ; FMin(a,b)
  %5018 = fcmp fast ogt float %5017, 0.000000e+00
  br i1 %5018, label %5019, label %5194, !dx.controlflow.hints !75

; <label>:5019                                    ; preds = %5012
  %5020 = fmul fast float %5013, %4979
  %5021 = fmul fast float %5014, %4980
  %5022 = fmul fast float %5015, %4981
  %5023 = fsub fast float %4968, %4605
  %5024 = fsub fast float %4969, %4604
  %5025 = fsub fast float %4970, %4603
  %5026 = call float @dx.op.dot3.f32(i32 55, float %5023, float %5024, float %5025, float %5023, float %5024, float %5025)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = call float @dx.op.unary.f32(i32 25, float %5026)  ; Rsqrt(value)
  %5028 = fmul fast float %5027, %5023
  %5029 = fmul fast float %5027, %5024
  %5030 = fmul fast float %5027, %5025
  %5031 = call float @dx.op.dot3.f32(i32 55, float %4968, float %4969, float %4970, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5032 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4601, float %4600, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5033 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5034 = fmul fast float %5033, %5033
  %5035 = fmul fast float %5034, %4632
  %5036 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5037 = fmul fast float %5036, %5033
  %5038 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %5028, float %5029, float %5030)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = fmul fast float %5038, %5038
  %5040 = call float @dx.op.unary.f32(i32 6, float %5031)  ; FAbs(value)
  %5041 = fsub fast float 1.000000e+00, %4615
  %5042 = call float @dx.op.binary.f32(i32 35, float %5041, float 0x3F847AE140000000)  ; FMax(a,b)
  %5043 = fmul fast float %5042, %5042
  %5044 = fmul fast float %5043, %5043
  %5045 = fsub fast float 1.000000e+00, %5044
  %5046 = fmul fast float %4619, %4619
  %5047 = fmul fast float %5046, %5045
  %5048 = fadd fast float %5047, %5044
  %5049 = bitcast float %5048 to i32
  %5050 = ashr i32 %5049, 1
  %5051 = add nsw i32 %5050, 532487669
  %5052 = bitcast i32 %5051 to float
  %5053 = fadd fast float %5052, %4619
  %5054 = fmul fast float %5044, %5039
  %5055 = fsub fast float 1.000000e+00, %5039
  %5056 = fadd fast float %5055, %5054
  %5057 = fmul fast float %5040, %5040
  %5058 = fmul fast float %5057, %5045
  %5059 = fadd fast float %5058, %5044
  %5060 = bitcast float %5059 to i32
  %5061 = ashr i32 %5060, 1
  %5062 = add nsw i32 %5061, 532487669
  %5063 = bitcast i32 %5062 to float
  %5064 = fadd fast float %5063, %5040
  %5065 = fmul fast float %5056, %5056
  %5066 = fmul fast float %5065, %5053
  %5067 = fmul fast float %5066, %5064
  %5068 = fdiv fast float 0x3FF0A00000000000, %5067
  %5069 = fmul fast float %5068, %5044
  %5070 = call float @dx.op.unary.f32(i32 6, float %5032)  ; FAbs(value)
  %5071 = fsub fast float 1.000000e+00, %5070
  %5072 = bitcast float %5071 to i32
  %5073 = sitofp i32 %5072 to float
  %5074 = fmul fast float %5073, 5.000000e+00
  %5075 = fadd fast float %5074, 0xC1EFBF8940000000
  %5076 = fptosi float %5075 to i32
  %5077 = bitcast i32 %5076 to float
  %5078 = fsub fast float 1.000000e+00, %4612
  %5079 = fsub fast float 1.000000e+00, %4613
  %5080 = fsub fast float 1.000000e+00, %4617
  %5081 = fmul fast float %5077, %5078
  %5082 = fmul fast float %5077, %5079
  %5083 = fmul fast float %5077, %5080
  %5084 = fadd fast float %5081, %4612
  %5085 = fadd fast float %5082, %4613
  %5086 = fadd fast float %5083, %4617
  br i1 %4879, label %5087, label %5110

; <label>:5087                                    ; preds = %5019
  %5088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4004, float %5070, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5089 = extractvalue %dx.types.ResRet.f32 %5088, 0
  %5090 = extractvalue %dx.types.ResRet.f32 %5088, 1
  %5091 = extractvalue %dx.types.ResRet.f32 %5088, 2
  %5092 = fadd fast float %5089, -5.000000e-01
  %5093 = fadd fast float %5090, -5.000000e-01
  %5094 = fadd fast float %5091, -5.000000e-01
  %5095 = fmul fast float %4612, 4.000000e+00
  %5096 = fmul fast float %5095, %5078
  %5097 = fmul fast float %5096, %5092
  %5098 = fmul fast float %4613, 4.000000e+00
  %5099 = fmul fast float %5098, %5079
  %5100 = fmul fast float %5099, %5093
  %5101 = fmul fast float %4617, 4.000000e+00
  %5102 = fmul fast float %5101, %5080
  %5103 = fmul fast float %5102, %5094
  %5104 = fadd fast float %5097, %5084
  %5105 = fadd fast float %5100, %5085
  %5106 = fadd fast float %5103, %5086
  %5107 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5108 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5109 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  br label %5110

; <label>:5110                                    ; preds = %5087, %5019
  %5111 = phi float [ %5107, %5087 ], [ %5084, %5019 ]
  %5112 = phi float [ %5108, %5087 ], [ %5085, %5019 ]
  %5113 = phi float [ %5109, %5087 ], [ %5086, %5019 ]
  %5114 = fmul fast float %5031, 9.843750e-01
  %5115 = fadd fast float %5114, 7.812500e-03
  %5116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5115, float %4869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5117 = extractvalue %dx.types.ResRet.f32 %5116, 2
  %5118 = extractvalue %dx.types.ResRet.f32 %5116, 3
  %5119 = fmul fast float %5117, %4612
  %5120 = fmul fast float %5117, %4613
  %5121 = fmul fast float %5117, %4617
  %5122 = fadd fast float %5119, %5118
  %5123 = fadd fast float %5120, %5118
  %5124 = fadd fast float %5121, %5118
  br i1 %4879, label %5125, label %5148

; <label>:5125                                    ; preds = %5110
  %5126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4004, float %5031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5127 = extractvalue %dx.types.ResRet.f32 %5126, 0
  %5128 = extractvalue %dx.types.ResRet.f32 %5126, 1
  %5129 = extractvalue %dx.types.ResRet.f32 %5126, 2
  %5130 = fadd fast float %5127, -5.000000e-01
  %5131 = fadd fast float %5128, -5.000000e-01
  %5132 = fadd fast float %5129, -5.000000e-01
  %5133 = fmul fast float %4612, 4.000000e+00
  %5134 = fmul fast float %5133, %5078
  %5135 = fmul fast float %5134, %5130
  %5136 = fmul fast float %4613, 4.000000e+00
  %5137 = fmul fast float %5136, %5079
  %5138 = fmul fast float %5137, %5131
  %5139 = fmul fast float %4617, 4.000000e+00
  %5140 = fmul fast float %5139, %5080
  %5141 = fmul fast float %5140, %5132
  %5142 = fadd fast float %5135, %5122
  %5143 = fadd fast float %5138, %5123
  %5144 = fadd fast float %5141, %5124
  %5145 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  br label %5148

; <label>:5148                                    ; preds = %5125, %5110
  %5149 = phi float [ %5145, %5125 ], [ %5122, %5110 ]
  %5150 = phi float [ %5146, %5125 ], [ %5123, %5110 ]
  %5151 = phi float [ %5147, %5125 ], [ %5124, %5110 ]
  %5152 = call float @dx.op.binary.f32(i32 35, float %5150, float %5151)  ; FMax(a,b)
  %5153 = call float @dx.op.binary.f32(i32 35, float %5149, float %5152)  ; FMax(a,b)
  %5154 = fsub fast float 1.000000e+00, %5153
  %5155 = fmul fast float %5111, %5069
  %5156 = fmul fast float %5112, %5069
  %5157 = fmul fast float %5113, %5069
  %5158 = fsub fast float 1.000000e+00, %5032
  %5159 = bitcast float %5158 to i32
  %5160 = sitofp i32 %5159 to float
  %5161 = fmul fast float %5160, 5.000000e+00
  %5162 = fadd fast float %5161, 0xC1EFBF8940000000
  %5163 = fptosi float %5162 to i32
  %5164 = bitcast i32 %5163 to float
  %5165 = fmul fast float %5164, %4005
  %5166 = fmul fast float %5154, %5165
  %5167 = fmul fast float %5166, %4929
  %5168 = fmul fast float %5166, %4930
  %5169 = fmul fast float %5166, %4931
  %5170 = fadd fast float %5167, %5155
  %5171 = fadd fast float %5168, %5156
  %5172 = fadd fast float %5169, %5157
  %5173 = fmul fast float %5037, %5020
  %5174 = fmul fast float %5173, %5154
  %5175 = fmul fast float %5037, %5021
  %5176 = fmul fast float %5175, %5154
  %5177 = fmul fast float %5037, %5022
  %5178 = fmul fast float %5177, %5154
  %5179 = fmul fast float %5173, %5170
  %5180 = fmul fast float %5175, %5171
  %5181 = fmul fast float %5177, %5172
  %5182 = fadd fast float %5174, %4913
  %5183 = fmul fast float %5182, %4001
  %5184 = fadd fast float %5176, %4914
  %5185 = fmul fast float %5184, %4001
  %5186 = fadd fast float %5178, %4915
  %5187 = fmul fast float %5186, %4001
  %5188 = fadd fast float %5179, %4956
  %5189 = fmul fast float %5188, %4001
  %5190 = fadd fast float %5180, %4959
  %5191 = fmul fast float %5190, %4001
  %5192 = fadd fast float %5181, %4962
  %5193 = fmul fast float %5192, %4001
  br label %5194

; <label>:5194                                    ; preds = %5148, %5012, %4906
  %5195 = phi float [ %4957, %4906 ], [ %4957, %5012 ], [ %5189, %5148 ]
  %5196 = phi float [ %4960, %4906 ], [ %4960, %5012 ], [ %5191, %5148 ]
  %5197 = phi float [ %4963, %4906 ], [ %4963, %5012 ], [ %5193, %5148 ]
  %5198 = phi float [ %4952, %4906 ], [ %4952, %5012 ], [ %5183, %5148 ]
  %5199 = phi float [ %4953, %4906 ], [ %4953, %5012 ], [ %5185, %5148 ]
  %5200 = phi float [ %4954, %4906 ], [ %4954, %5012 ], [ %5187, %5148 ]
  %5201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.i32 %5201, 0
  %5203 = icmp eq i32 %5202, 0
  br i1 %5203, label %5638, label %5204

; <label>:5204                                    ; preds = %5194
  %5205 = fptoui float %75 to i32
  %5206 = fptoui float %76 to i32
  %5207 = lshr i32 %5205, 4
  %5208 = lshr i32 %5206, 4
  %5209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5210 = extractvalue %dx.types.CBufRet.i32 %5209, 0
  %5211 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5208, i32 %5210, i32 %5207)  ; UMad(a,b,c)
  %5212 = add nsw i32 %5202, -1
  %5213 = call i32 @dx.op.binary.i32(i32 37, i32 %5212, i32 0)  ; IMax(a,b)
  %5214 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5215 = fptoui float %5214 to i32
  %5216 = lshr i32 %5215, 5
  %5217 = call i32 @dx.op.binary.i32(i32 40, i32 %5216, i32 8191)  ; UMin(a,b)
  %5218 = shl i32 %5217, 2
  %5219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5218, i32 undef)  ; BufferLoad(srv,index,wot)
  %5220 = extractvalue %dx.types.ResRet.i32 %5219, 0
  %5221 = lshr i32 %5220, 16
  %5222 = and i32 %5220, 65535
  %5223 = lshr i32 %5220, 21
  %5224 = lshr i32 %5222, 5
  %5225 = call i32 @dx.op.binary.i32(i32 40, i32 %5224, i32 %5213)  ; UMin(a,b)
  %5226 = icmp ugt i32 %5223, %5225
  br i1 %5226, label %5638, label %5227

; <label>:5227                                    ; preds = %5204
  br label %5228

; <label>:5228                                    ; preds = %5628, %5227
  %5229 = phi i32 [ %5635, %5628 ], [ %5223, %5227 ]
  %5230 = phi float [ %5629, %5628 ], [ %5195, %5227 ]
  %5231 = phi float [ %5630, %5628 ], [ %5196, %5227 ]
  %5232 = phi float [ %5631, %5628 ], [ %5197, %5227 ]
  %5233 = phi float [ %5632, %5628 ], [ %5198, %5227 ]
  %5234 = phi float [ %5633, %5628 ], [ %5199, %5227 ]
  %5235 = phi float [ %5634, %5628 ], [ %5200, %5227 ]
  %5236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.i32 %5236, 0
  %5238 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5211, i32 %5237, i32 %5229)  ; UMad(a,b,c)
  %5239 = shl i32 %5238, 2
  %5240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5239, i32 undef)  ; BufferLoad(srv,index,wot)
  %5241 = extractvalue %dx.types.ResRet.i32 %5240, 0
  %5242 = shl i32 %5229, 5
  %5243 = sub nsw i32 %5221, %5242
  %5244 = call i32 @dx.op.binary.i32(i32 37, i32 %5243, i32 0)  ; IMax(a,b)
  %5245 = call i32 @dx.op.binary.i32(i32 38, i32 %5244, i32 31)  ; IMin(a,b)
  %5246 = sub nsw i32 1, %5221
  %5247 = add nsw i32 %5246, %5222
  %5248 = call i32 @dx.op.binary.i32(i32 37, i32 %5247, i32 0)  ; IMax(a,b)
  %5249 = call i32 @dx.op.binary.i32(i32 38, i32 %5248, i32 32)  ; IMin(a,b)
  %5250 = and i32 %5249, 31
  %5251 = shl i32 -1, %5250
  %5252 = xor i32 %5251, -1
  %5253 = and i32 %5245, 31
  %5254 = shl i32 %5252, %5253
  %5255 = icmp eq i32 %5249, 32
  %5256 = select i1 %5255, i32 -1, i32 %5254
  %5257 = and i32 %5256, %5241
  %5258 = icmp eq i32 %5257, 0
  br i1 %5258, label %5628, label %5259

; <label>:5259                                    ; preds = %5228
  br label %5260

; <label>:5260                                    ; preds = %5340, %5259
  %5261 = phi i32 [ %5272, %5340 ], [ %5257, %5259 ]
  %5262 = phi float [ %5341, %5340 ], [ %5230, %5259 ]
  %5263 = phi float [ %5342, %5340 ], [ %5231, %5259 ]
  %5264 = phi float [ %5343, %5340 ], [ %5232, %5259 ]
  %5265 = phi float [ %5344, %5340 ], [ %5233, %5259 ]
  %5266 = phi float [ %5345, %5340 ], [ %5234, %5259 ]
  %5267 = phi float [ %5346, %5340 ], [ %5235, %5259 ]
  %5268 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5261)  ; FirstbitLo(value)
  %5269 = add i32 %5268, %5242
  %5270 = and i32 %5268, 31
  %5271 = shl i32 1, %5270
  %5272 = xor i32 %5271, %5261
  %5273 = mul i32 %5269, 112
  %5274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.ResRet.f32 %5274, 2
  %5278 = or i32 %5273, 12
  %5279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = add i32 %5273, 44
  %5282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = add i32 %5273, 48
  %5285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5284, i32 undef)  ; BufferLoad(srv,index,wot)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = add i32 %5273, 80
  %5290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5289, i32 undef)  ; BufferLoad(srv,index,wot)
  %5291 = extractvalue %dx.types.ResRet.f32 %5290, 1
  %5292 = extractvalue %dx.types.ResRet.f32 %5290, 2
  %5293 = call float @dx.op.dot3.f32(i32 55, float %5275, float %5276, float %5277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5294 = select i1 %173, float %5291, float %5275
  %5295 = select i1 %173, float %5293, float %5276
  %5296 = select i1 %173, float %5292, float %5277
  %5297 = fsub fast float %5286, %131
  %5298 = fsub fast float %5287, %132
  %5299 = fsub fast float %5288, %133
  %5300 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5298, float %5299, float %5297, float %5298, float %5299)  ; Dot3(ax,ay,az,bx,by,bz)
  %5301 = call float @dx.op.unary.f32(i32 24, float %5300)  ; Sqrt(value)
  %5302 = fdiv fast float 1.000000e+00, %5301
  %5303 = fmul fast float %5302, %5297
  %5304 = fmul fast float %5302, %5298
  %5305 = fmul fast float %5302, %5299
  %5306 = fadd fast float %5301, %5280
  %5307 = fdiv fast float 1.000000e+00, %5306
  %5308 = fmul float %5283, %5307
  %5309 = fmul float %5308, %5308
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = and i32 %5271, %5257
  %5312 = icmp eq i32 %5311, 0
  br i1 %5312, label %5335, label %5313, !dx.controlflow.hints !76

; <label>:5313                                    ; preds = %5260
  %5314 = lshr i32 %5205, 5
  %5315 = lshr i32 %5206, 5
  %5316 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5314, i32 %5315, i32 %5269, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5317 = extractvalue %dx.types.ResRet.i32 %5316, 0
  %5318 = and i32 %5317, 3
  %5319 = icmp eq i32 %5318, 0
  %5320 = select i1 %5319, float 1.000000e+00, float 0.000000e+00
  %5321 = icmp eq i32 %5318, 3
  br i1 %5321, label %5322, label %5335

; <label>:5322                                    ; preds = %5313
  %5323 = lshr i32 %5317, 10
  %5324 = and i32 %5323, 8160
  %5325 = and i32 %5206, 31
  %5326 = or i32 %5324, %5325
  %5327 = lshr i32 %5317, 1
  %5328 = and i32 %5327, 16352
  %5329 = and i32 %5205, 31
  %5330 = or i32 %5328, %5329
  %5331 = lshr i32 %5317, 23
  %5332 = and i32 %5331, 255
  %5333 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5330, i32 %5326, i32 %5332, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  br label %5335

; <label>:5335                                    ; preds = %5322, %5313, %5260
  %5336 = phi float [ %5334, %5322 ], [ %5320, %5313 ], [ 0.000000e+00, %5260 ]
  %5337 = call float @dx.op.binary.f32(i32 36, float %5336, float %5336)  ; FMin(a,b)
  %5338 = call float @dx.op.binary.f32(i32 36, float %5336, float %5337)  ; FMin(a,b)
  %5339 = fcmp fast ogt float %5338, 0.000000e+00
  br i1 %5339, label %5348, label %5340, !dx.controlflow.hints !77

; <label>:5340                                    ; preds = %5584, %5335
  %5341 = phi float [ %5262, %5335 ], [ %5624, %5584 ]
  %5342 = phi float [ %5263, %5335 ], [ %5625, %5584 ]
  %5343 = phi float [ %5264, %5335 ], [ %5626, %5584 ]
  %5344 = phi float [ %5265, %5335 ], [ %5618, %5584 ]
  %5345 = phi float [ %5266, %5335 ], [ %5619, %5584 ]
  %5346 = phi float [ %5267, %5335 ], [ %5620, %5584 ]
  %5347 = icmp eq i32 %5261, %5271
  br i1 %5347, label %5627, label %5260

; <label>:5348                                    ; preds = %5335
  %5349 = fmul fast float %5336, %5294
  %5350 = fmul fast float %5336, %5295
  %5351 = fmul fast float %5336, %5296
  %5352 = fsub fast float %5288, %4405
  %5353 = fcmp fast ogt float %5352, 0.000000e+00
  %5354 = fsub fast float %133, %4405
  %5355 = fcmp fast ogt float %5354, 0.000000e+00
  %5356 = xor i1 %5355, %5353
  %5357 = fsub fast float %4405, %5288
  %5358 = fmul fast float %5357, 2.000000e+00
  %5359 = fadd fast float %5358, %5288
  %5360 = select i1 %5356, float %5288, float %5359
  %5361 = fsub fast float %5360, %133
  %5362 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5298, float %5361, float %5297, float %5298, float %5361)  ; Dot3(ax,ay,az,bx,by,bz)
  %5363 = call float @dx.op.unary.f32(i32 25, float %5362)  ; Rsqrt(value)
  %5364 = fmul fast float %5363, %5297
  %5365 = fmul fast float %5363, %5298
  %5366 = fmul fast float %5363, %5361
  %5367 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4413)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = fdiv fast float 1.000000e+00, %5368
  %5370 = fmul fast float %5369, %5367
  %5371 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5354, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fcmp fast ogt float %5371, 0.000000e+00
  %5373 = fcmp fast olt float %5371, 0.000000e+00
  %5374 = zext i1 %5372 to i32
  %5375 = zext i1 %5373 to i32
  %5376 = sub nsw i32 %5374, %5375
  %5377 = sitofp i32 %5376 to float
  %5378 = fsub fast float %5360, %4405
  %5379 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5298, float %5378, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = fcmp fast ogt float %5379, 0.000000e+00
  %5381 = fcmp fast olt float %5379, 0.000000e+00
  %5382 = zext i1 %5380 to i32
  %5383 = zext i1 %5381 to i32
  %5384 = sub nsw i32 %5382, %5383
  %5385 = sitofp i32 %5384 to float
  %5386 = fcmp fast une float %5377, %5385
  br i1 %5386, label %5387, label %5397

; <label>:5387                                    ; preds = %5348
  %5388 = fmul fast float %5370, %5366
  %5389 = fmul fast float %5370, %5365
  %5390 = fmul fast float %5370, %5364
  %5391 = fmul fast float %5390, %5390
  %5392 = fmul fast float %5389, %5389
  %5393 = fadd fast float %5391, %5392
  %5394 = fmul fast float %5388, %5388
  %5395 = fadd fast float %5393, %5394
  %5396 = call float @dx.op.unary.f32(i32 24, float %5395)  ; Sqrt(value)
  br label %5409

; <label>:5397                                    ; preds = %5348
  %5398 = icmp slt i32 %5376, 0
  br i1 %5398, label %5399, label %5409

; <label>:5399                                    ; preds = %5397
  %5400 = fsub fast float %131, %5286
  %5401 = fsub fast float %132, %5287
  %5402 = fsub fast float %133, %5360
  %5403 = fmul fast float %5400, %5400
  %5404 = fmul fast float %5401, %5401
  %5405 = fadd fast float %5403, %5404
  %5406 = fmul fast float %5402, %5402
  %5407 = fadd fast float %5405, %5406
  %5408 = call float @dx.op.unary.f32(i32 24, float %5407)  ; Sqrt(value)
  br label %5409

; <label>:5409                                    ; preds = %5399, %5397, %5387
  %5410 = phi float [ %5396, %5387 ], [ %5408, %5399 ], [ 0.000000e+00, %5397 ]
  %5411 = and i1 %5355, %5353
  %5412 = fsub fast float -0.000000e+00, %5410
  %5413 = select i1 %5411, float -0.000000e+00, float %5412
  %5414 = fmul fast float %4406, 0x3FF7154760000000
  %5415 = fmul fast float %5414, %5413
  %5416 = fmul fast float %4407, 0x3FF7154760000000
  %5417 = fmul fast float %5416, %5413
  %5418 = fmul fast float %4408, 0x3FF7154760000000
  %5419 = fmul fast float %5418, %5413
  %5420 = call float @dx.op.unary.f32(i32 21, float %5415)  ; Exp(value)
  %5421 = call float @dx.op.unary.f32(i32 21, float %5417)  ; Exp(value)
  %5422 = call float @dx.op.unary.f32(i32 21, float %5419)  ; Exp(value)
  %5423 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5424 = call float @dx.op.unary.f32(i32 7, float %5421)  ; Saturate(value)
  %5425 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5426 = fmul fast float %5349, %5423
  %5427 = fmul fast float %5350, %5424
  %5428 = fmul fast float %5351, %5425
  %5429 = fsub fast float %5303, %4605
  %5430 = fsub fast float %5304, %4604
  %5431 = fsub fast float %5305, %4603
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.unary.f32(i32 25, float %5432)  ; Rsqrt(value)
  %5434 = fmul fast float %5433, %5429
  %5435 = fmul fast float %5433, %5430
  %5436 = fmul fast float %5433, %5431
  %5437 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5305, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5438 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4601, float %4600, float %5434, float %5435, float %5436)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = call float @dx.op.unary.f32(i32 7, float %5437)  ; Saturate(value)
  %5440 = fmul fast float %5439, %5310
  %5441 = fmul fast float %5439, %5439
  %5442 = fmul fast float %5441, %4632
  %5443 = call float @dx.op.unary.f32(i32 7, float %5442)  ; Saturate(value)
  %5444 = fmul fast float %5440, %5443
  %5445 = bitcast float %5300 to i32
  %5446 = ashr i32 %5445, 1
  %5447 = sub nsw i32 1597463007, %5446
  %5448 = bitcast i32 %5447 to float
  %5449 = fmul fast float %5448, %5297
  %5450 = fmul fast float %5448, %5298
  %5451 = fmul fast float %5448, %5299
  %5452 = fsub fast float %5449, %4605
  %5453 = fsub fast float %5450, %4604
  %5454 = fsub fast float %5451, %4603
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = call float @dx.op.unary.f32(i32 25, float %5455)  ; Rsqrt(value)
  %5457 = fmul fast float %5452, %5456
  %5458 = fmul fast float %5453, %5456
  %5459 = fmul fast float %5454, %5456
  %5460 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %5457, float %5458, float %5459)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = fmul fast float %5460, %5460
  %5462 = call float @dx.op.unary.f32(i32 6, float %5437)  ; FAbs(value)
  %5463 = fsub fast float 1.000000e+00, %4615
  %5464 = call float @dx.op.binary.f32(i32 35, float %5463, float 0x3F847AE140000000)  ; FMax(a,b)
  %5465 = fmul fast float %5464, %5464
  %5466 = fmul fast float %5465, %5465
  %5467 = fsub fast float 1.000000e+00, %5466
  %5468 = fmul fast float %4619, %4619
  %5469 = fmul fast float %5468, %5467
  %5470 = fadd fast float %5469, %5466
  %5471 = bitcast float %5470 to i32
  %5472 = ashr i32 %5471, 1
  %5473 = add nsw i32 %5472, 532487669
  %5474 = bitcast i32 %5473 to float
  %5475 = fadd fast float %5474, %4619
  %5476 = fmul fast float %5466, %5461
  %5477 = fsub fast float 1.000000e+00, %5461
  %5478 = fadd fast float %5477, %5476
  %5479 = fmul fast float %5462, %5462
  %5480 = fmul fast float %5479, %5467
  %5481 = fadd fast float %5480, %5466
  %5482 = bitcast float %5481 to i32
  %5483 = ashr i32 %5482, 1
  %5484 = add nsw i32 %5483, 532487669
  %5485 = bitcast i32 %5484 to float
  %5486 = fadd fast float %5485, %5462
  %5487 = fmul fast float %5478, %5478
  %5488 = fmul fast float %5487, %5475
  %5489 = fmul fast float %5488, %5486
  %5490 = fdiv fast float 1.000000e+00, %5489
  %5491 = bitcast float %5466 to i32
  %5492 = sitofp i32 %5491 to float
  %5493 = fmul fast float %5492, 0x3FE7F73180000000
  %5494 = fadd fast float %5493, 0x41AFE27C40000000
  %5495 = fptosi float %5494 to i32
  %5496 = bitcast i32 %5495 to float
  %5497 = fmul fast float %5283, 0x3FD80E9D60000000
  %5498 = fmul fast float %5497, %5448
  %5499 = fadd fast float %5496, %5498
  %5500 = bitcast float %5499 to i32
  %5501 = sub nsw i32 2129859010, %5500
  %5502 = bitcast i32 %5501 to float
  %5503 = fmul fast float %5466, %5490
  %5504 = fmul fast float %5503, %5496
  %5505 = fmul fast float %5504, %5502
  %5506 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = bitcast float %5507 to i32
  %5509 = sitofp i32 %5508 to float
  %5510 = fmul fast float %5509, 5.000000e+00
  %5511 = fadd fast float %5510, 0xC1EFBF8940000000
  %5512 = fptosi float %5511 to i32
  %5513 = bitcast i32 %5512 to float
  %5514 = fsub fast float 1.000000e+00, %4612
  %5515 = fsub fast float 1.000000e+00, %4613
  %5516 = fsub fast float 1.000000e+00, %4617
  %5517 = fmul fast float %5513, %5514
  %5518 = fmul fast float %5513, %5515
  %5519 = fmul fast float %5513, %5516
  %5520 = fadd fast float %5517, %4612
  %5521 = fadd fast float %5518, %4613
  %5522 = fadd fast float %5519, %4617
  br i1 %4879, label %5523, label %5546

; <label>:5523                                    ; preds = %5409
  %5524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4004, float %5506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.ResRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.ResRet.f32 %5524, 2
  %5528 = fadd fast float %5525, -5.000000e-01
  %5529 = fadd fast float %5526, -5.000000e-01
  %5530 = fadd fast float %5527, -5.000000e-01
  %5531 = fmul fast float %4612, 4.000000e+00
  %5532 = fmul fast float %5531, %5514
  %5533 = fmul fast float %5532, %5528
  %5534 = fmul fast float %4613, 4.000000e+00
  %5535 = fmul fast float %5534, %5515
  %5536 = fmul fast float %5535, %5529
  %5537 = fmul fast float %4617, 4.000000e+00
  %5538 = fmul fast float %5537, %5516
  %5539 = fmul fast float %5538, %5530
  %5540 = fadd fast float %5533, %5520
  %5541 = fadd fast float %5536, %5521
  %5542 = fadd fast float %5539, %5522
  %5543 = call float @dx.op.unary.f32(i32 7, float %5540)  ; Saturate(value)
  %5544 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5545 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  br label %5546

; <label>:5546                                    ; preds = %5523, %5409
  %5547 = phi float [ %5543, %5523 ], [ %5520, %5409 ]
  %5548 = phi float [ %5544, %5523 ], [ %5521, %5409 ]
  %5549 = phi float [ %5545, %5523 ], [ %5522, %5409 ]
  %5550 = fmul fast float %5437, 9.843750e-01
  %5551 = fadd fast float %5550, 7.812500e-03
  %5552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5551, float %4869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5553 = extractvalue %dx.types.ResRet.f32 %5552, 2
  %5554 = extractvalue %dx.types.ResRet.f32 %5552, 3
  %5555 = fmul fast float %5553, %4612
  %5556 = fmul fast float %5553, %4613
  %5557 = fmul fast float %5553, %4617
  %5558 = fadd fast float %5555, %5554
  %5559 = fadd fast float %5556, %5554
  %5560 = fadd fast float %5557, %5554
  br i1 %4879, label %5561, label %5584

; <label>:5561                                    ; preds = %5546
  %5562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4004, float %5437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5563 = extractvalue %dx.types.ResRet.f32 %5562, 0
  %5564 = extractvalue %dx.types.ResRet.f32 %5562, 1
  %5565 = extractvalue %dx.types.ResRet.f32 %5562, 2
  %5566 = fadd fast float %5563, -5.000000e-01
  %5567 = fadd fast float %5564, -5.000000e-01
  %5568 = fadd fast float %5565, -5.000000e-01
  %5569 = fmul fast float %4612, 4.000000e+00
  %5570 = fmul fast float %5569, %5514
  %5571 = fmul fast float %5570, %5566
  %5572 = fmul fast float %4613, 4.000000e+00
  %5573 = fmul fast float %5572, %5515
  %5574 = fmul fast float %5573, %5567
  %5575 = fmul fast float %4617, 4.000000e+00
  %5576 = fmul fast float %5575, %5516
  %5577 = fmul fast float %5576, %5568
  %5578 = fadd fast float %5571, %5558
  %5579 = fadd fast float %5574, %5559
  %5580 = fadd fast float %5577, %5560
  %5581 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5582 = call float @dx.op.unary.f32(i32 7, float %5579)  ; Saturate(value)
  %5583 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  br label %5584

; <label>:5584                                    ; preds = %5561, %5546
  %5585 = phi float [ %5581, %5561 ], [ %5558, %5546 ]
  %5586 = phi float [ %5582, %5561 ], [ %5559, %5546 ]
  %5587 = phi float [ %5583, %5561 ], [ %5560, %5546 ]
  %5588 = call float @dx.op.binary.f32(i32 35, float %5586, float %5587)  ; FMax(a,b)
  %5589 = call float @dx.op.binary.f32(i32 35, float %5585, float %5588)  ; FMax(a,b)
  %5590 = fsub fast float 1.000000e+00, %5589
  %5591 = fmul fast float %5547, %5505
  %5592 = fmul fast float %5548, %5505
  %5593 = fmul fast float %5549, %5505
  %5594 = fsub fast float 1.000000e+00, %5438
  %5595 = bitcast float %5594 to i32
  %5596 = sitofp i32 %5595 to float
  %5597 = fmul fast float %5596, 5.000000e+00
  %5598 = fadd fast float %5597, 0xC1EFBF8940000000
  %5599 = fptosi float %5598 to i32
  %5600 = bitcast i32 %5599 to float
  %5601 = fmul fast float %5600, %4005
  %5602 = fmul fast float %5590, %5601
  %5603 = fmul fast float %5602, %4929
  %5604 = fmul fast float %5602, %4930
  %5605 = fmul fast float %5602, %4931
  %5606 = fadd fast float %5603, %5591
  %5607 = fadd fast float %5604, %5592
  %5608 = fadd fast float %5605, %5593
  %5609 = fmul fast float %5426, %4001
  %5610 = fmul fast float %5609, %5444
  %5611 = fmul fast float %5610, %5590
  %5612 = fmul fast float %5427, %4001
  %5613 = fmul fast float %5612, %5444
  %5614 = fmul fast float %5613, %5590
  %5615 = fmul fast float %5428, %4001
  %5616 = fmul fast float %5615, %5444
  %5617 = fmul fast float %5616, %5590
  %5618 = fadd fast float %5611, %5265
  %5619 = fadd fast float %5614, %5266
  %5620 = fadd fast float %5617, %5267
  %5621 = fmul fast float %5610, %5606
  %5622 = fmul fast float %5613, %5607
  %5623 = fmul fast float %5616, %5608
  %5624 = fadd fast float %5621, %5262
  %5625 = fadd fast float %5622, %5263
  %5626 = fadd fast float %5623, %5264
  br label %5340

; <label>:5627                                    ; preds = %5340
  br label %5628

; <label>:5628                                    ; preds = %5627, %5228
  %5629 = phi float [ %5230, %5228 ], [ %5341, %5627 ]
  %5630 = phi float [ %5231, %5228 ], [ %5342, %5627 ]
  %5631 = phi float [ %5232, %5228 ], [ %5343, %5627 ]
  %5632 = phi float [ %5233, %5228 ], [ %5344, %5627 ]
  %5633 = phi float [ %5234, %5228 ], [ %5345, %5627 ]
  %5634 = phi float [ %5235, %5228 ], [ %5346, %5627 ]
  %5635 = add i32 %5229, 1
  %5636 = icmp ugt i32 %5635, %5225
  br i1 %5636, label %5637, label %5228

; <label>:5637                                    ; preds = %5628
  br label %5638

; <label>:5638                                    ; preds = %5637, %5204, %5194
  %5639 = phi float [ %5195, %5194 ], [ %5195, %5204 ], [ %5629, %5637 ]
  %5640 = phi float [ %5196, %5194 ], [ %5196, %5204 ], [ %5630, %5637 ]
  %5641 = phi float [ %5197, %5194 ], [ %5197, %5204 ], [ %5631, %5637 ]
  %5642 = phi float [ %5198, %5194 ], [ %5198, %5204 ], [ %5632, %5637 ]
  %5643 = phi float [ %5199, %5194 ], [ %5199, %5204 ], [ %5633, %5637 ]
  %5644 = phi float [ %5200, %5194 ], [ %5200, %5204 ], [ %5634, %5637 ]
  %5645 = call float @dx.op.unary.f32(i32 24, float %4606)  ; Sqrt(value)
  %5646 = call float @dx.op.unary.f32(i32 24, float %4607)  ; Sqrt(value)
  %5647 = call float @dx.op.unary.f32(i32 24, float %4608)  ; Sqrt(value)
  %5648 = fmul fast float %5645, %5642
  %5649 = fmul fast float %5646, %5643
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 0
  br i1 %173, label %5652, label %5672

; <label>:5652                                    ; preds = %5638
  %5653 = fadd fast float %5644, %4007
  %5654 = fmul fast float %5653, %4008
  %5655 = fsub fast float 1.000000e+00, %4008
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5658 = extractvalue %dx.types.CBufRet.f32 %5657, 3
  %5659 = fmul fast float %5658, %5656
  %5660 = fadd fast float %5659, %5654
  %5661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5662 = extractvalue %dx.types.CBufRet.f32 %5661, 0
  %5663 = fmul fast float %5662, %4935
  %5664 = fsub fast float %5660, %5663
  %5665 = fadd fast float %5649, %5648
  %5666 = fmul fast float %5651, %5665
  %5667 = extractvalue %dx.types.CBufRet.f32 %5657, 1
  %5668 = fsub fast float %5664, %5667
  %5669 = extractvalue %dx.types.CBufRet.f32 %5657, 2
  %5670 = fmul fast float %5668, %5669
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  br label %5688

; <label>:5672                                    ; preds = %5638
  %5673 = fmul fast float %5647, %5644
  %5674 = fmul fast float %5651, %5648
  %5675 = fmul fast float %5651, %5649
  %5676 = fmul fast float %5673, %5651
  %5677 = add i32 %35, 356
  %5678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5677, i32 undef)  ; BufferLoad(srv,index,wot)
  %5679 = extractvalue %dx.types.ResRet.i32 %5678, 0
  %5680 = and i32 %5679, 32
  %5681 = icmp eq i32 %5680, 0
  br i1 %5681, label %5688, label %5682

; <label>:5682                                    ; preds = %5672
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5685 = fmul fast float %5684, 0x3FE99999A0000000
  %5686 = fadd fast float %5684, %5674
  %5687 = fadd fast float %5685, %5676
  br label %5688

; <label>:5688                                    ; preds = %5682, %5672, %5652
  %5689 = phi float [ %5666, %5652 ], [ %5686, %5682 ], [ %5674, %5672 ]
  %5690 = phi float [ %5671, %5652 ], [ %5675, %5682 ], [ %5675, %5672 ]
  %5691 = phi float [ 1.000000e+00, %5652 ], [ %5687, %5682 ], [ %5676, %5672 ]
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 0
  %5694 = fmul fast float %5693, %5640
  %5695 = fmul fast float %5693, %5641
  %5696 = fadd fast float %5640, %5639
  %5697 = select i1 %173, float %5696, float %5639
  %5698 = fmul float %5697, %5693
  %5699 = select i1 %173, float 0.000000e+00, float %5694
  %5700 = select i1 %173, float 0.000000e+00, float %5695
  %5701 = fmul fast float %5689, %5645
  %5702 = fmul fast float %5690, %5646
  %5703 = fmul fast float %5691, %5647
  %5704 = fadd fast float %5698, %5701
  %5705 = fadd fast float %5699, %5702
  %5706 = fadd fast float %5700, %5703
  %5707 = select i1 %173, float %5690, float %5705
  %5708 = select i1 %173, float %5691, float %5706
  %5709 = call float @dx.op.binary.f32(i32 36, float %5704, float 3.225500e+04)  ; FMin(a,b)
  %5710 = call float @dx.op.binary.f32(i32 36, float %5707, float 3.225500e+04)  ; FMin(a,b)
  %5711 = call float @dx.op.binary.f32(i32 36, float %5708, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5709)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5710)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5711)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

