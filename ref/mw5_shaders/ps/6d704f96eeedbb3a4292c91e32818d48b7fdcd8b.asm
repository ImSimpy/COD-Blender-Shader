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
; shader hash: 534ad2a3aae201ec9d4e4b142d92d120
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
  %359 = add i32 %35, 488
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
  br i1 %412, label %996, label %413

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
  %880 = add i32 %35, 456
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
  %918 = and i32 %917, 26624
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %977, label %920

; <label>:920                                     ; preds = %892
  %921 = add i32 %35, 472
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = add i32 %923, 0
  %925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %925, %dx.types.Handle %72, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 3
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 1048576
  %933 = icmp ne i32 %932, 0
  %934 = and i32 %931, 8192
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %950, label %936

; <label>:936                                     ; preds = %920
  %937 = extractvalue %dx.types.ResRet.f32 %926, 2
  %938 = select i1 %933, float %937, float %928
  %939 = select i1 %933, float %927, float %928
  %940 = add i32 %35, 96
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = lshr i32 %942, 16
  %944 = and i32 %943, 255
  %945 = uitofp i32 %944 to float
  %946 = fmul fast float %945, 0x3F80101020000000
  %947 = fmul fast float %946, %939
  %948 = fmul fast float %946, %928
  %949 = fmul fast float %946, %938
  br label %950

; <label>:950                                     ; preds = %936, %920
  %951 = phi float [ %947, %936 ], [ 0.000000e+00, %920 ]
  %952 = phi float [ %948, %936 ], [ 0.000000e+00, %920 ]
  %953 = phi float [ %949, %936 ], [ 0.000000e+00, %920 ]
  %954 = and i32 %931, 2048
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %964, label %956

; <label>:956                                     ; preds = %950
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = shl i32 %958, 4
  %960 = and i32 %959, 32752
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = fmul fast float %961, %929
  %963 = call float @dx.op.binary.f32(i32 35, float %962, float 0x3F70101020000000)  ; FMax(a,b)
  br label %964

; <label>:964                                     ; preds = %956, %950
  %965 = phi float [ %963, %956 ], [ 0x3F70101020000000, %950 ]
  %966 = and i32 %931, 16384
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %977, label %968

; <label>:968                                     ; preds = %964
  %969 = add i32 %35, 96
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = lshr i32 %971, 24
  %973 = uitofp i32 %972 to float
  %974 = fmul fast float %927, 0x3F70101020000000
  %975 = select i1 %933, float 0x3F70101020000000, float %974
  %976 = fmul fast float %975, %973
  br label %977

; <label>:977                                     ; preds = %968, %964, %892
  %978 = phi float [ %951, %968 ], [ %951, %964 ], [ 0.000000e+00, %892 ]
  %979 = phi float [ %952, %968 ], [ %952, %964 ], [ 0.000000e+00, %892 ]
  %980 = phi float [ %953, %968 ], [ %953, %964 ], [ 0.000000e+00, %892 ]
  %981 = phi float [ %965, %968 ], [ %965, %964 ], [ 0x3F70101020000000, %892 ]
  %982 = phi float [ %976, %968 ], [ 0.000000e+00, %964 ], [ 0.000000e+00, %892 ]
  %983 = add i32 %35, 96
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = and i32 %985, 255
  %987 = uitofp i32 %986 to float
  %988 = lshr i32 %985, 8
  %989 = and i32 %988, 255
  %990 = uitofp i32 %989 to float
  %991 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %992 = fmul fast float %990, %991
  %993 = fadd fast float %992, %987
  %994 = fmul fast float %993, 0x3F70101020000000
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  br label %996

; <label>:996                                     ; preds = %977, %398
  %997 = phi float [ 0.000000e+00, %398 ], [ %808, %977 ]
  %998 = phi float [ 0.000000e+00, %398 ], [ %809, %977 ]
  %999 = phi float [ 0.000000e+00, %398 ], [ %727, %977 ]
  %1000 = phi float [ 0.000000e+00, %398 ], [ %728, %977 ]
  %1001 = phi float [ 0.000000e+00, %398 ], [ %729, %977 ]
  %1002 = phi float [ 0.000000e+00, %398 ], [ %855, %977 ]
  %1003 = phi float [ 0.000000e+00, %398 ], [ %856, %977 ]
  %1004 = phi float [ 0.000000e+00, %398 ], [ %857, %977 ]
  %1005 = phi float [ 0.000000e+00, %398 ], [ %978, %977 ]
  %1006 = phi float [ 0.000000e+00, %398 ], [ %979, %977 ]
  %1007 = phi float [ 0.000000e+00, %398 ], [ %980, %977 ]
  %1008 = phi float [ 0.000000e+00, %398 ], [ %913, %977 ]
  %1009 = phi float [ 0.000000e+00, %398 ], [ %914, %977 ]
  %1010 = phi float [ 0.000000e+00, %398 ], [ %915, %977 ]
  %1011 = phi float [ 0.000000e+00, %398 ], [ %713, %977 ]
  %1012 = phi float [ 0.000000e+00, %398 ], [ 1.000000e+00, %977 ]
  %1013 = phi float [ 0.000000e+00, %398 ], [ %807, %977 ]
  %1014 = phi float [ 0.000000e+00, %398 ], [ %810, %977 ]
  %1015 = phi float [ 0.000000e+00, %398 ], [ %981, %977 ]
  %1016 = phi float [ 0.000000e+00, %398 ], [ %982, %977 ]
  %1017 = phi float [ 0.000000e+00, %398 ], [ %995, %977 ]
  br i1 %349, label %2079, label %1018

; <label>:1018                                    ; preds = %996
  %1019 = icmp ult i32 %404, 2
  %1020 = add i32 %35, 40
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = add i32 %35, 44
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = or i32 %1025, %1022
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %2079, label %1028

; <label>:1028                                    ; preds = %1018
  %1029 = and i32 %1022, 262144
  %1030 = icmp ne i32 %1029, 0
  %1031 = select i1 %1030, float %38, float 1.000000e+00
  %1032 = select i1 %1030, float %39, float 0.000000e+00
  %1033 = select i1 %1030, float %40, float 0.000000e+00
  %1034 = select i1 %1030, float %41, float 1.000000e+00
  %1035 = select i1 %1030, float %42, float %63
  %1036 = select i1 %1030, float %43, float %64
  %1037 = add i32 %35, 300
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = lshr i32 %1039, 16
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = fmul fast float %1041, 0x3F50624DE0000000
  %1043 = add i32 %35, 104
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = lshr i32 %1045, 16
  %1047 = and i32 %1046, 255
  %1048 = lshr i32 %1045, 24
  %1049 = add i32 %35, 308
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = and i32 %1051, 65535
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = lshr i32 %1051, 16
  %1055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1054)  ; LegacyF16ToF32(value)
  %1056 = add i32 %35, 48
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = lshr i32 %1058, 22
  %1060 = shl nuw nsw i32 %1059, 5
  %1061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1060)  ; LegacyF16ToF32(value)
  %1062 = shl i32 %1058, 4
  %1063 = and i32 %1062, 32752
  %1064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1063)  ; LegacyF16ToF32(value)
  %1065 = lshr i32 %1058, 7
  %1066 = and i32 %1065, 32752
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1069 = extractvalue %dx.types.CBufRet.f32 %1068, 3
  %1070 = fmul fast float %1069, 1.000000e+03
  %1071 = fmul fast float %259, %1070
  %1072 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1073 = fadd fast float %1072, %249
  %1074 = fmul fast float %260, %1070
  %1075 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1076 = fadd fast float %1075, %251
  %1077 = fmul fast float %1042, %1070
  %1078 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1079 = fmul fast float %1078, 0x401921FB60000000
  %1080 = fadd fast float %1079, %1061
  %1081 = call float @dx.op.unary.f32(i32 13, float %1080)  ; Sin(value)
  %1082 = call float @dx.op.unary.f32(i32 12, float %1080)  ; Cos(value)
  %1083 = fsub fast float -0.000000e+00, %1081
  %1084 = fadd fast float %1035, -5.000000e-01
  %1085 = fadd fast float %1036, -5.000000e-01
  %1086 = fmul fast float %1053, %1084
  %1087 = fmul fast float %1055, %1085
  %1088 = fadd fast float %1086, 5.000000e-01
  %1089 = fadd fast float %1087, 5.000000e-01
  %1090 = fmul fast float %1064, %1088
  %1091 = fmul fast float %1067, %1089
  %1092 = fmul fast float %1082, %1090
  %1093 = call float @dx.op.tertiary.f32(i32 46, float %1083, float %1091, float %1092)  ; FMad(a,b,c)
  %1094 = fmul fast float %1081, %1090
  %1095 = call float @dx.op.tertiary.f32(i32 46, float %1082, float %1091, float %1094)  ; FMad(a,b,c)
  %1096 = fadd fast float %1073, %1093
  %1097 = fadd fast float %1076, %1095
  %1098 = icmp ugt i32 %1047, 1
  %1099 = icmp ugt i32 %1045, 33554431
  %1100 = or i1 %1099, %1098
  br i1 %1100, label %1101, label %1126

; <label>:1101                                    ; preds = %1028
  %1102 = add i32 %35, 244
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = lshr i32 %1104, 16
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = fmul fast float %1069, %1106
  %1108 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1109 = mul nuw nsw i32 %1047, %1048
  %1110 = uitofp i32 %1109 to float
  %1111 = fmul fast float %1108, %1110
  %1112 = call float @dx.op.unary.f32(i32 27, float %1111)  ; Round_ni(value)
  %1113 = fptoui float %1112 to i32
  %1114 = urem i32 %1113, %1047
  %1115 = udiv i32 %1113, %1048
  %1116 = call float @dx.op.unary.f32(i32 22, float %1096)  ; Frc(value)
  %1117 = call float @dx.op.unary.f32(i32 22, float %1097)  ; Frc(value)
  %1118 = uitofp i32 %1114 to float
  %1119 = uitofp i32 %1115 to float
  %1120 = fadd fast float %1116, %1118
  %1121 = fadd fast float %1117, %1119
  %1122 = uitofp i32 %1047 to float
  %1123 = uitofp i32 %1048 to float
  %1124 = fdiv fast float %1120, %1122
  %1125 = fdiv fast float %1121, %1123
  br label %1126

; <label>:1126                                    ; preds = %1101, %1028
  %1127 = phi float [ %1124, %1101 ], [ %1096, %1028 ]
  %1128 = phi float [ %1125, %1101 ], [ %1097, %1028 ]
  %1129 = and i32 %1022, 16777216
  %1130 = icmp eq i32 %1129, 0
  br i1 %1130, label %1240, label %1131

; <label>:1131                                    ; preds = %1126
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 0
  %1134 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1135 = extractvalue %dx.types.CBufRet.f32 %1132, 2
  %1136 = fadd fast float %1133, %134
  %1137 = fadd fast float %1134, %135
  %1138 = fadd fast float %1135, %136
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1142 = icmp eq i32 %36, 65535
  br i1 %1142, label %1237, label %1143

; <label>:1143                                    ; preds = %1131
  %1144 = lshr i32 %36, 1
  %1145 = shl i32 %1144, 2
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %36, 1
  %1149 = icmp ne i32 %1148, 0
  %1150 = lshr i32 %1147, 16
  %1151 = and i32 %1147, 65535
  %1152 = select i1 %1149, i32 %1150, i32 %1151
  %1153 = icmp eq i32 %1152, 65535
  br i1 %1153, label %1233, label %1154

; <label>:1154                                    ; preds = %1143
  %1155 = mul nuw nsw i32 %1152, 40
  %1156 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = extractvalue %dx.types.ResRet.f32 %1156, 1
  %1159 = extractvalue %dx.types.ResRet.f32 %1156, 2
  %1160 = add nuw nsw i32 %1155, 12
  %1161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1160, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.f32 %1161, 0
  %1163 = extractvalue %dx.types.ResRet.f32 %1161, 1
  %1164 = extractvalue %dx.types.ResRet.f32 %1161, 2
  %1165 = add nuw nsw i32 %1155, 24
  %1166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = add nuw nsw i32 %1155, 36
  %1171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = fsub fast float %1136, %1157
  %1174 = fsub fast float %1137, %1158
  %1175 = fsub fast float %1138, %1159
  %1176 = fmul fast float %1172, %1173
  %1177 = fmul fast float %1172, %1174
  %1178 = fmul fast float %1172, %1175
  %1179 = call float @dx.op.unary.f32(i32 27, float %1176)  ; Round_ni(value)
  %1180 = call float @dx.op.unary.f32(i32 27, float %1177)  ; Round_ni(value)
  %1181 = call float @dx.op.unary.f32(i32 27, float %1178)  ; Round_ni(value)
  %1182 = fadd fast float %1179, 5.000000e-01
  %1183 = fadd fast float %1180, 5.000000e-01
  %1184 = fadd fast float %1181, 5.000000e-01
  %1185 = fmul fast float %1182, %1162
  %1186 = fmul fast float %1183, %1163
  %1187 = fmul fast float %1184, %1164
  %1188 = shl i32 %36, 2
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = add i32 %1190, 0
  %1192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1193 = call float @dx.op.unary.f32(i32 22, float %1185)  ; Frc(value)
  %1194 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1195 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1192, %dx.types.Handle %30, float %1193, float %1194, float %1195, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1199 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1200 = fmul fast float %1197, 1.023000e+03
  %1201 = fmul fast float %1198, 1.023000e+03
  %1202 = fmul fast float %1199, 1.023000e+03
  %1203 = fadd fast float %1200, 5.000000e-01
  %1204 = fadd fast float %1201, 5.000000e-01
  %1205 = fadd fast float %1202, 5.000000e-01
  %1206 = call float @dx.op.unary.f32(i32 27, float %1203)  ; Round_ni(value)
  %1207 = call float @dx.op.unary.f32(i32 27, float %1204)  ; Round_ni(value)
  %1208 = call float @dx.op.unary.f32(i32 27, float %1205)  ; Round_ni(value)
  %1209 = fsub fast float %1176, %1179
  %1210 = fsub fast float %1177, %1180
  %1211 = fsub fast float %1178, %1181
  %1212 = fmul fast float %1209, 7.500000e-01
  %1213 = fmul fast float %1210, 7.500000e-01
  %1214 = fmul fast float %1211, 7.500000e-01
  %1215 = fadd fast float %1179, 1.250000e-01
  %1216 = fadd fast float %1215, %1212
  %1217 = fadd fast float %1216, %1206
  %1218 = fadd fast float %1180, 1.250000e-01
  %1219 = fadd fast float %1218, %1213
  %1220 = fadd fast float %1219, %1207
  %1221 = fadd fast float %1181, 1.250000e-01
  %1222 = fadd fast float %1221, %1214
  %1223 = fadd fast float %1222, %1208
  %1224 = fmul fast float %1217, %1167
  %1225 = fmul fast float %1220, %1168
  %1226 = fmul fast float %1223, %1169
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = add i32 %1228, 0
  %1230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1230, %dx.types.Handle %28, float %1224, float %1225, float %1226, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1232 = extractvalue %dx.types.ResRet.f32 %1231, 0
  br label %1233

; <label>:1233                                    ; preds = %1154, %1143
  %1234 = phi float [ %1232, %1154 ], [ -1.000000e+00, %1143 ]
  %1235 = fadd fast float %1234, %1141
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  br label %1237

; <label>:1237                                    ; preds = %1233, %1131
  %1238 = phi float [ %1236, %1233 ], [ %1141, %1131 ]
  %1239 = fmul fast float %1238, %401
  br label %1240

; <label>:1240                                    ; preds = %1237, %1126
  %1241 = phi float [ %1239, %1237 ], [ %401, %1126 ]
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = and i32 %1243, 256
  %1245 = icmp eq i32 %1244, 0
  br i1 %1245, label %1292, label %1246

; <label>:1246                                    ; preds = %1240
  %1247 = add i32 %35, 428
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %1249, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1251, %dx.types.Handle %72, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = add i32 %35, 116
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = shl i32 %1256, 4
  %1258 = and i32 %1257, 32752
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = lshr i32 %1256, 7
  %1261 = and i32 %1260, 32752
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = fsub fast float 1.000000e+00, %1241
  %1264 = call float @dx.op.binary.f32(i32 35, float %1263, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1265 = bitcast float %1241 to i32
  %1266 = sitofp i32 %1265 to float
  %1267 = fadd fast float %1266, 0xC1CFBF8940000000
  %1268 = fmul fast float %1262, %1267
  %1269 = fadd fast float %1268, 0x41CFBF8940000000
  %1270 = fptosi float %1269 to i32
  %1271 = bitcast i32 %1270 to float
  %1272 = bitcast float %1264 to i32
  %1273 = sitofp i32 %1272 to float
  %1274 = fadd fast float %1273, 0xC1CFBF8940000000
  %1275 = fmul fast float %1274, %1262
  %1276 = fadd fast float %1275, 0x41CFBF8940000000
  %1277 = fptosi float %1276 to i32
  %1278 = bitcast i32 %1277 to float
  %1279 = fmul fast float %1271, %1259
  %1280 = fmul fast float %1278, %1259
  %1281 = fsub fast float %1264, %1279
  %1282 = fadd fast float %1280, %1264
  %1283 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1284 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1285 = fsub fast float %1253, %1283
  %1286 = fsub fast float %1284, %1283
  %1287 = bitcast float %1286 to i32
  %1288 = sub nsw i32 2129859010, %1287
  %1289 = bitcast i32 %1288 to float
  %1290 = fmul fast float %1289, %1285
  %1291 = call float @dx.op.unary.f32(i32 7, float %1290)  ; Saturate(value)
  br label %1292

; <label>:1292                                    ; preds = %1246, %1240
  %1293 = phi float [ %1291, %1246 ], [ %1241, %1240 ]
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = and i32 %1295, 128
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1314, label %1298

; <label>:1298                                    ; preds = %1292
  %1299 = add i32 %35, 412
  %1300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1299, i32 undef)  ; BufferLoad(srv,index,wot)
  %1301 = extractvalue %dx.types.ResRet.i32 %1300, 0
  %1302 = add i32 %1301, 0
  %1303 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1302, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1304 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1303, %dx.types.Handle %72, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1305 = extractvalue %dx.types.ResRet.f32 %1304, 0
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 524288
  %1309 = icmp ne i32 %1308, 0
  %1310 = fcmp fast ogt float %1305, 0x3FE0101020000000
  %1311 = select i1 %1310, float 1.000000e+00, float 0.000000e+00
  %1312 = select i1 %1309, float %1311, float %1305
  %1313 = fmul fast float %1312, %1293
  br label %1314

; <label>:1314                                    ; preds = %1298, %1292
  %1315 = phi float [ %1313, %1298 ], [ %1293, %1292 ]
  %1316 = fcmp fast ult float %1315, 0x3F70101020000000
  br i1 %1316, label %2079, label %1317

; <label>:1317                                    ; preds = %1314
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = and i32 %1319, 16
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1520, label %1322

; <label>:1322                                    ; preds = %1317
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = add i32 %35, 364
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = add i32 %1327, 0
  %1329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1328, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1330 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1329, %dx.types.Handle %71, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1331 = extractvalue %dx.types.ResRet.f32 %1330, 0
  %1332 = extractvalue %dx.types.ResRet.f32 %1330, 1
  %1333 = extractvalue %dx.types.ResRet.f32 %1330, 2
  %1334 = extractvalue %dx.types.ResRet.f32 %1330, 3
  %1335 = and i32 %1324, 255
  %1336 = uitofp i32 %1335 to float
  %1337 = lshr i32 %1324, 8
  %1338 = and i32 %1337, 255
  %1339 = uitofp i32 %1338 to float
  %1340 = fmul fast float %1334, %1336
  %1341 = fadd fast float %1340, %1339
  %1342 = fmul fast float %1341, 0x3F70101000000000
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = and i32 %1344, 512
  %1346 = icmp eq i32 %1345, 0
  br i1 %1346, label %1355, label %1347

; <label>:1347                                    ; preds = %1322
  %1348 = add i32 %35, 444
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1348, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = add i32 %1350, 0
  %1352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1352, %dx.types.Handle %72, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  br label %1355

; <label>:1355                                    ; preds = %1347, %1322
  %1356 = phi float [ %1354, %1347 ], [ 1.000000e+00, %1322 ]
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 33554432
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1467, label %1361

; <label>:1361                                    ; preds = %1355
  %1362 = add i32 %35, 240
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = and i32 %1364, 65535
  %1366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1365)  ; LegacyF16ToF32(value)
  %1367 = lshr i32 %1364, 16
  %1368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1367)  ; LegacyF16ToF32(value)
  %1369 = add i32 %35, 244
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1369, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 65535
  %1373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1372)  ; LegacyF16ToF32(value)
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = lshr i32 %1375, 24
  %1377 = uitofp i32 %1376 to float
  %1378 = fmul fast float %1377, 0x3F70101020000000
  %1379 = and i32 %1375, 255
  %1380 = uitofp i32 %1379 to float
  %1381 = fmul fast float %1380, 0x3F70101020000000
  %1382 = lshr i32 %1375, 8
  %1383 = and i32 %1382, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = fmul fast float %1384, 0x3F70101020000000
  %1386 = lshr i32 %1375, 16
  %1387 = and i32 %1386, 255
  %1388 = uitofp i32 %1387 to float
  %1389 = fmul fast float %1388, 0x3F70101020000000
  %1390 = add i32 %35, 236
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1390, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = lshr i32 %1392, 24
  %1394 = uitofp i32 %1393 to float
  %1395 = fmul fast float %1394, 0x3F70101020000000
  %1396 = and i32 %1392, 255
  %1397 = uitofp i32 %1396 to float
  %1398 = fmul fast float %1397, 0x3F70101020000000
  %1399 = lshr i32 %1392, 8
  %1400 = and i32 %1399, 255
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1401, 0x3F70101020000000
  %1403 = lshr i32 %1392, 16
  %1404 = and i32 %1403, 255
  %1405 = uitofp i32 %1404 to float
  %1406 = fmul fast float %1405, 0x3F70101020000000
  %1407 = bitcast float %1331 to i32
  %1408 = ashr i32 %1407, 1
  %1409 = sub nsw i32 1597463174, %1408
  %1410 = bitcast i32 %1409 to float
  %1411 = fmul fast float %1331, 5.000000e-01
  %1412 = fmul fast float %1410, %1410
  %1413 = fmul fast float %1412, %1411
  %1414 = fsub fast float 1.500000e+00, %1413
  %1415 = fmul fast float %1410, %1331
  %1416 = fmul fast float %1415, %1414
  %1417 = bitcast float %1332 to i32
  %1418 = ashr i32 %1417, 1
  %1419 = sub nsw i32 1597463174, %1418
  %1420 = bitcast i32 %1419 to float
  %1421 = fmul fast float %1332, 5.000000e-01
  %1422 = fmul fast float %1420, %1420
  %1423 = fmul fast float %1422, %1421
  %1424 = fsub fast float 1.500000e+00, %1423
  %1425 = fmul fast float %1420, %1332
  %1426 = fmul fast float %1425, %1424
  %1427 = bitcast float %1333 to i32
  %1428 = ashr i32 %1427, 1
  %1429 = sub nsw i32 1597463174, %1428
  %1430 = bitcast i32 %1429 to float
  %1431 = fmul fast float %1333, 5.000000e-01
  %1432 = fmul fast float %1430, %1430
  %1433 = fmul fast float %1432, %1431
  %1434 = fsub fast float 1.500000e+00, %1433
  %1435 = fmul fast float %1430, %1333
  %1436 = fmul fast float %1435, %1434
  %1437 = fsub fast float %1416, %1398
  %1438 = fsub fast float %1426, %1402
  %1439 = fsub fast float %1436, %1406
  %1440 = fmul fast float %1437, %1366
  %1441 = fmul fast float %1438, %1368
  %1442 = fmul fast float %1439, %1373
  %1443 = fadd fast float %1440, %1381
  %1444 = fadd fast float %1441, %1385
  %1445 = fadd fast float %1442, %1389
  %1446 = call float @dx.op.unary.f32(i32 7, float %1443)  ; Saturate(value)
  %1447 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  %1448 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  %1449 = fmul fast float %1446, %1446
  %1450 = fmul fast float %1447, %1447
  %1451 = fmul fast float %1448, %1448
  %1452 = fsub fast float %1449, %1331
  %1453 = fsub fast float %1450, %1332
  %1454 = fsub fast float %1451, %1333
  %1455 = fmul fast float %1452, %1356
  %1456 = fmul fast float %1453, %1356
  %1457 = fmul fast float %1454, %1356
  %1458 = fadd fast float %1455, %1331
  %1459 = fadd fast float %1456, %1332
  %1460 = fadd fast float %1457, %1333
  %1461 = fadd fast float %1378, %1342
  %1462 = fsub fast float %1461, %1395
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1464 = fsub fast float %1463, %1342
  %1465 = fmul fast float %1464, %1356
  %1466 = fadd fast float %1465, %1342
  br label %1520

; <label>:1467                                    ; preds = %1355
  %1468 = and i32 %1358, 134217728
  %1469 = icmp eq i32 %1468, 0
  br i1 %1469, label %1504, label %1470

; <label>:1470                                    ; preds = %1467
  %1471 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1472 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1473 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1474 = fadd fast float %1471, -5.000000e-01
  %1475 = fadd fast float %1472, -5.000000e-01
  %1476 = fadd fast float %1473, -5.000000e-01
  %1477 = fmul fast float %1474, %1356
  %1478 = fmul fast float %1475, %1356
  %1479 = fmul fast float %1476, %1356
  %1480 = fadd fast float %1477, 5.000000e-01
  %1481 = fadd fast float %1478, 5.000000e-01
  %1482 = fadd fast float %1479, 5.000000e-01
  %1483 = call float @dx.op.unary.f32(i32 24, float %1331)  ; Sqrt(value)
  %1484 = call float @dx.op.unary.f32(i32 24, float %1332)  ; Sqrt(value)
  %1485 = call float @dx.op.unary.f32(i32 24, float %1333)  ; Sqrt(value)
  %1486 = fmul fast float %1480, 2.000000e+00
  %1487 = fsub fast float 1.000000e+00, %1486
  %1488 = fmul fast float %1487, %1483
  %1489 = fadd fast float %1488, %1486
  %1490 = fmul fast float %1489, %1483
  %1491 = fmul fast float %1481, 2.000000e+00
  %1492 = fsub fast float 1.000000e+00, %1491
  %1493 = fmul fast float %1492, %1484
  %1494 = fadd fast float %1493, %1491
  %1495 = fmul fast float %1494, %1484
  %1496 = fmul fast float %1482, 2.000000e+00
  %1497 = fsub fast float 1.000000e+00, %1496
  %1498 = fmul fast float %1497, %1485
  %1499 = fadd fast float %1498, %1496
  %1500 = fmul fast float %1499, %1485
  %1501 = fmul fast float %1490, %1490
  %1502 = fmul fast float %1495, %1495
  %1503 = fmul fast float %1500, %1500
  br label %1520

; <label>:1504                                    ; preds = %1467
  %1505 = fmul fast float %236, %236
  %1506 = fmul fast float %240, %240
  %1507 = fmul fast float %244, %244
  %1508 = fadd fast float %1505, -1.000000e+00
  %1509 = fadd fast float %1506, -1.000000e+00
  %1510 = fadd fast float %1507, -1.000000e+00
  %1511 = fmul fast float %1356, %1508
  %1512 = fmul fast float %1356, %1509
  %1513 = fmul fast float %1356, %1510
  %1514 = fadd fast float %1511, 1.000000e+00
  %1515 = fadd fast float %1512, 1.000000e+00
  %1516 = fadd fast float %1513, 1.000000e+00
  %1517 = fmul fast float %1514, %1331
  %1518 = fmul fast float %1515, %1332
  %1519 = fmul fast float %1516, %1333
  br label %1520

; <label>:1520                                    ; preds = %1504, %1470, %1361, %1317
  %1521 = phi float [ %1466, %1361 ], [ %1342, %1470 ], [ %1342, %1504 ], [ 0x3FA23C0BE0000000, %1317 ]
  %1522 = phi float [ %1458, %1361 ], [ %1501, %1470 ], [ %1517, %1504 ], [ 1.000000e+00, %1317 ]
  %1523 = phi float [ %1459, %1361 ], [ %1502, %1470 ], [ %1518, %1504 ], [ 1.000000e+00, %1317 ]
  %1524 = phi float [ %1460, %1361 ], [ %1503, %1470 ], [ %1519, %1504 ], [ 1.000000e+00, %1317 ]
  %1525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1526 = extractvalue %dx.types.CBufRet.i32 %1525, 1
  %1527 = and i32 %1526, 1
  %1528 = icmp ne i32 %1527, 0
  %1529 = add i32 %35, 356
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1529, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 32
  %1533 = icmp ne i32 %1532, 0
  %1534 = and i1 %1528, %1533
  %1535 = select i1 %1534, float 1.000000e+00, float %1522
  %1536 = select i1 %1534, float 0x3FD3333340000000, float %1523
  %1537 = select i1 %1534, float 0x3FD3333340000000, float %1524
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 32
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1614, label %1542

; <label>:1542                                    ; preds = %1520
  %1543 = add i32 %35, 108
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = add i32 %35, 380
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = add i32 %1548, 0
  %1550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1550, %dx.types.Handle %71, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = extractvalue %dx.types.ResRet.f32 %1551, 3
  %1556 = and i32 %1545, 255
  %1557 = uitofp i32 %1556 to float
  %1558 = lshr i32 %1545, 8
  %1559 = and i32 %1558, 255
  %1560 = uitofp i32 %1559 to float
  %1561 = lshr i32 %1545, 16
  %1562 = and i32 %1561, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = fmul fast float %1563, 0x3F70101000000000
  %1565 = fmul fast float %1552, %1557
  %1566 = fadd fast float %1565, %1560
  %1567 = fmul fast float %1566, 0x3F70101000000000
  %1568 = fadd fast float %1553, -5.000000e-01
  %1569 = fadd fast float %1555, -5.000000e-01
  %1570 = fmul fast float %1568, %1564
  %1571 = fmul fast float %1569, %1564
  %1572 = fadd fast float %1570, 5.000000e-01
  %1573 = fadd fast float %1571, 5.000000e-01
  %1574 = fmul fast float %1572, 2.000000e+00
  %1575 = fadd fast float %1574, -1.000000e+00
  %1576 = fmul fast float %1573, 2.000000e+00
  %1577 = fadd fast float %1576, -1.000000e+00
  %1578 = fadd fast float %1575, %1577
  %1579 = fmul fast float %1578, 5.000000e-01
  %1580 = fsub fast float %1575, %1577
  %1581 = fmul fast float %1580, 5.000000e-01
  %1582 = call float @dx.op.unary.f32(i32 6, float %1579)  ; FAbs(value)
  %1583 = fsub fast float 1.000000e+00, %1582
  %1584 = call float @dx.op.unary.f32(i32 6, float %1581)  ; FAbs(value)
  %1585 = fsub fast float %1583, %1584
  %1586 = call float @dx.op.dot3.f32(i32 55, float %1579, float %1581, float %1585, float %1579, float %1581, float %1585)  ; Dot3(ax,ay,az,bx,by,bz)
  %1587 = call float @dx.op.unary.f32(i32 25, float %1586)  ; Rsqrt(value)
  %1588 = fmul fast float %1579, %1587
  %1589 = fmul fast float %1581, %1587
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 67108864
  %1593 = icmp eq i32 %1592, 0
  br i1 %1593, label %1610, label %1594

; <label>:1594                                    ; preds = %1542
  %1595 = add i32 %35, 296
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = and i32 %1597, 65535
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1601 = extractvalue %dx.types.ResRet.i32 %1600, 0
  %1602 = and i32 %1601, 65535
  %1603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1602)  ; LegacyF16ToF32(value)
  %1604 = lshr i32 %1597, 16
  %1605 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1604)  ; LegacyF16ToF32(value)
  %1606 = fsub fast float %1567, %1605
  %1607 = fmul fast float %1606, %1599
  %1608 = fadd fast float %1607, %1603
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  br label %1610

; <label>:1610                                    ; preds = %1594, %1542
  %1611 = phi float [ %1609, %1594 ], [ %1567, %1542 ]
  %1612 = call float @dx.op.dot2.f32(i32 54, float %1588, float %1589, float %1031, float %1032)  ; Dot2(ax,ay,bx,by)
  %1613 = call float @dx.op.dot2.f32(i32 54, float %1588, float %1589, float %1033, float %1034)  ; Dot2(ax,ay,bx,by)
  br label %1614

; <label>:1614                                    ; preds = %1610, %1520
  %1615 = phi float [ %1611, %1610 ], [ 0x3FD6666660000000, %1520 ]
  %1616 = phi float [ %1612, %1610 ], [ 0.000000e+00, %1520 ]
  %1617 = phi float [ %1613, %1610 ], [ 0.000000e+00, %1520 ]
  %1618 = phi float [ %1554, %1610 ], [ 1.000000e+00, %1520 ]
  %1619 = add i32 %35, 176
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = lshr i32 %1621, 22
  %1623 = shl nuw nsw i32 %1622, 5
  %1624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1623)  ; LegacyF16ToF32(value)
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 64
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1662, label %1629

; <label>:1629                                    ; preds = %1614
  %1630 = add i32 %35, 396
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = add i32 %1632, 0
  %1634 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1633, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = and i32 %1636, 131072
  %1638 = icmp eq i32 %1637, 0
  %1639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1634, %dx.types.Handle %71, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1640 = extractvalue %dx.types.ResRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.ResRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.ResRet.f32 %1639, 2
  %1643 = fmul fast float %1640, %224
  %1644 = fmul fast float %1641, %227
  %1645 = fmul fast float %1642, %230
  br i1 %1638, label %1652, label %1646

; <label>:1646                                    ; preds = %1629
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 0
  %1649 = fmul fast float %1648, %1643
  %1650 = fmul fast float %1648, %1644
  %1651 = fmul fast float %1648, %1645
  br label %1652

; <label>:1652                                    ; preds = %1646, %1629
  %1653 = phi float [ %1649, %1646 ], [ %1643, %1629 ]
  %1654 = phi float [ %1650, %1646 ], [ %1644, %1629 ]
  %1655 = phi float [ %1651, %1646 ], [ %1645, %1629 ]
  %1656 = fmul fast float %1653, %1624
  %1657 = select i1 %176, float %1656, float %1653
  %1658 = call float @dx.op.dot3.f32(i32 55, float %1657, float %1654, float %1655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1659 = select i1 %176, float 0.000000e+00, float %1653
  %1660 = select i1 %176, float %1658, float %1654
  %1661 = select i1 %176, float 0.000000e+00, float %1655
  br label %1662

; <label>:1662                                    ; preds = %1652, %1614
  %1663 = phi float [ %1659, %1652 ], [ 0.000000e+00, %1614 ]
  %1664 = phi float [ %1660, %1652 ], [ 0.000000e+00, %1614 ]
  %1665 = phi float [ %1661, %1652 ], [ 0.000000e+00, %1614 ]
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 1024
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1700, label %1670

; <label>:1670                                    ; preds = %1662
  %1671 = add i32 %35, 168
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 255
  %1675 = uitofp i32 %1674 to float
  %1676 = fmul fast float %1675, 0x3F70101020000000
  %1677 = lshr i32 %1673, 8
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = fmul fast float %1679, 0x3F70101020000000
  %1681 = lshr i32 %1673, 16
  %1682 = and i32 %1681, 255
  %1683 = uitofp i32 %1682 to float
  %1684 = fmul fast float %1683, 0x3F70101020000000
  %1685 = fmul fast float %1676, %1676
  %1686 = fmul fast float %1680, %1680
  %1687 = fmul fast float %1684, %1684
  %1688 = add i32 %35, 460
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = add i32 %1690, 0
  %1692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1692, %dx.types.Handle %72, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1696 = extractvalue %dx.types.ResRet.f32 %1693, 2
  %1697 = fmul fast float %1685, %1694
  %1698 = fmul fast float %1686, %1695
  %1699 = fmul fast float %1687, %1696
  br label %1700

; <label>:1700                                    ; preds = %1670, %1662
  %1701 = phi float [ %1697, %1670 ], [ 0.000000e+00, %1662 ]
  %1702 = phi float [ %1698, %1670 ], [ 0.000000e+00, %1662 ]
  %1703 = phi float [ %1699, %1670 ], [ 0.000000e+00, %1662 ]
  %1704 = fcmp fast ogt float %1701, 0.000000e+00
  %1705 = fcmp fast ogt float %1702, 0.000000e+00
  %1706 = fcmp fast ogt float %1703, 0.000000e+00
  %1707 = call float @dx.op.unary.f32(i32 23, float %1701)  ; Log(value)
  %1708 = call float @dx.op.unary.f32(i32 23, float %1702)  ; Log(value)
  %1709 = call float @dx.op.unary.f32(i32 23, float %1703)  ; Log(value)
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = lshr i32 %1711, 7
  %1713 = and i32 %1712, 32752
  %1714 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1713)  ; LegacyF16ToF32(value)
  %1715 = fmul fast float %1707, 0xBFE62E4300000000
  %1716 = fmul fast float %1715, %1714
  %1717 = fmul fast float %1708, 0xBFE62E4300000000
  %1718 = fmul fast float %1717, %1714
  %1719 = fmul fast float %1709, 0xBFE62E4300000000
  %1720 = fmul fast float %1719, %1714
  %1721 = select i1 %1704, float %1716, float 1.270000e+02
  %1722 = select i1 %1705, float %1718, float 1.270000e+02
  %1723 = select i1 %1706, float %1720, float 1.270000e+02
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = and i32 %1725, 26624
  %1727 = icmp eq i32 %1726, 0
  br i1 %1727, label %1785, label %1728

; <label>:1728                                    ; preds = %1700
  %1729 = add i32 %35, 476
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = add i32 %1731, 0
  %1733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1733, %dx.types.Handle %72, float %1127, float %1128, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1735 = extractvalue %dx.types.ResRet.f32 %1734, 0
  %1736 = extractvalue %dx.types.ResRet.f32 %1734, 1
  %1737 = extractvalue %dx.types.ResRet.f32 %1734, 3
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = and i32 %1739, 1048576
  %1741 = icmp ne i32 %1740, 0
  %1742 = and i32 %1739, 8192
  %1743 = icmp eq i32 %1742, 0
  br i1 %1743, label %1758, label %1744

; <label>:1744                                    ; preds = %1728
  %1745 = extractvalue %dx.types.ResRet.f32 %1734, 2
  %1746 = select i1 %1741, float %1745, float %1736
  %1747 = select i1 %1741, float %1735, float %1736
  %1748 = add i32 %35, 112
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = lshr i32 %1750, 16
  %1752 = and i32 %1751, 255
  %1753 = uitofp i32 %1752 to float
  %1754 = fmul fast float %1753, 0x3F80101020000000
  %1755 = fmul fast float %1754, %1747
  %1756 = fmul fast float %1754, %1736
  %1757 = fmul fast float %1754, %1746
  br label %1758

; <label>:1758                                    ; preds = %1744, %1728
  %1759 = phi float [ %1755, %1744 ], [ 0.000000e+00, %1728 ]
  %1760 = phi float [ %1756, %1744 ], [ 0.000000e+00, %1728 ]
  %1761 = phi float [ %1757, %1744 ], [ 0.000000e+00, %1728 ]
  %1762 = and i32 %1739, 2048
  %1763 = icmp eq i32 %1762, 0
  br i1 %1763, label %1772, label %1764

; <label>:1764                                    ; preds = %1758
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = shl i32 %1766, 4
  %1768 = and i32 %1767, 32752
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = fmul fast float %1769, %1737
  %1771 = call float @dx.op.binary.f32(i32 35, float %1770, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1772

; <label>:1772                                    ; preds = %1764, %1758
  %1773 = phi float [ %1771, %1764 ], [ 0x3F70101020000000, %1758 ]
  %1774 = and i32 %1739, 16384
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1785, label %1776

; <label>:1776                                    ; preds = %1772
  %1777 = add i32 %35, 112
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = lshr i32 %1779, 24
  %1781 = uitofp i32 %1780 to float
  %1782 = fmul fast float %1735, 0x3F70101020000000
  %1783 = select i1 %1741, float 0x3F70101020000000, float %1782
  %1784 = fmul fast float %1783, %1781
  br label %1785

; <label>:1785                                    ; preds = %1776, %1772, %1700
  %1786 = phi float [ %1759, %1776 ], [ %1759, %1772 ], [ 0.000000e+00, %1700 ]
  %1787 = phi float [ %1760, %1776 ], [ %1760, %1772 ], [ 0.000000e+00, %1700 ]
  %1788 = phi float [ %1761, %1776 ], [ %1761, %1772 ], [ 0.000000e+00, %1700 ]
  %1789 = phi float [ %1773, %1776 ], [ %1773, %1772 ], [ 0x3F70101020000000, %1700 ]
  %1790 = phi float [ %1784, %1776 ], [ 0.000000e+00, %1772 ], [ 0.000000e+00, %1700 ]
  %1791 = add i32 %35, 112
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 255
  %1795 = uitofp i32 %1794 to float
  %1796 = lshr i32 %1793, 8
  %1797 = and i32 %1796, 255
  %1798 = uitofp i32 %1797 to float
  %1799 = call float @dx.op.dot3.f32(i32 55, float %1535, float %1536, float %1537, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1800 = fmul fast float %1798, %1799
  %1801 = fadd fast float %1800, %1795
  %1802 = fmul fast float %1801, 0x3F70101020000000
  %1803 = call float @dx.op.unary.f32(i32 7, float %1802)  ; Saturate(value)
  br i1 %1019, label %1804, label %1839

; <label>:1804                                    ; preds = %1785
  %1805 = fmul fast float %1789, 2.000000e+00
  %1806 = fcmp fast olt float %1721, 1.270000e+02
  %1807 = fcmp fast olt float %1722, 1.270000e+02
  %1808 = fcmp fast olt float %1723, 1.270000e+02
  %1809 = fmul fast float %1721, 0xBFF7154760000000
  %1810 = fmul fast float %1809, %1805
  %1811 = fmul fast float %1722, 0xBFF7154760000000
  %1812 = fmul fast float %1811, %1805
  %1813 = fmul fast float %1723, 0xBFF7154760000000
  %1814 = fmul fast float %1813, %1805
  %1815 = call float @dx.op.unary.f32(i32 21, float %1810)  ; Exp(value)
  %1816 = call float @dx.op.unary.f32(i32 21, float %1812)  ; Exp(value)
  %1817 = call float @dx.op.unary.f32(i32 21, float %1814)  ; Exp(value)
  %1818 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  %1819 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1820 = call float @dx.op.unary.f32(i32 7, float %1817)  ; Saturate(value)
  %1821 = fadd fast float %1818, -1.000000e+00
  %1822 = select i1 %1806, float %1821, float -1.000000e+00
  %1823 = fadd fast float %1819, -1.000000e+00
  %1824 = select i1 %1807, float %1823, float -1.000000e+00
  %1825 = fadd fast float %1820, -1.000000e+00
  %1826 = select i1 %1808, float %1825, float -1.000000e+00
  %1827 = fmul fast float %1822, %1315
  %1828 = fmul fast float %1824, %1315
  %1829 = fmul fast float %1826, %1315
  %1830 = fadd fast float %1827, 1.000000e+00
  %1831 = fadd fast float %1828, 1.000000e+00
  %1832 = fadd fast float %1829, 1.000000e+00
  %1833 = fmul fast float %1830, %999
  %1834 = fmul fast float %1831, %1000
  %1835 = fmul fast float %1832, %1001
  %1836 = fmul fast float %1830, %1002
  %1837 = fmul fast float %1831, %1003
  %1838 = fmul fast float %1832, %1004
  br label %1839

; <label>:1839                                    ; preds = %1804, %1785
  %1840 = phi float [ %1833, %1804 ], [ %999, %1785 ]
  %1841 = phi float [ %1834, %1804 ], [ %1000, %1785 ]
  %1842 = phi float [ %1835, %1804 ], [ %1001, %1785 ]
  %1843 = phi float [ %1836, %1804 ], [ %1002, %1785 ]
  %1844 = phi float [ %1837, %1804 ], [ %1003, %1785 ]
  %1845 = phi float [ %1838, %1804 ], [ %1004, %1785 ]
  %1846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.i32 %1846, 0
  %1848 = and i32 %1847, 3
  %1849 = icmp eq i32 %1848, 3
  br i1 %1849, label %1928, label %1850

; <label>:1850                                    ; preds = %1839
  %1851 = and i32 %1847, 16
  %1852 = icmp ne i32 %1851, 0
  %1853 = select i1 %1852, float %1315, float 0.000000e+00
  %1854 = icmp eq i32 %1848, 0
  br i1 %1854, label %1855, label %1883

; <label>:1855                                    ; preds = %1850
  %1856 = and i32 %1847, 64
  %1857 = icmp ne i32 %1856, 0
  %1858 = select i1 %1857, float %1315, float 0.000000e+00
  %1859 = fsub fast float %1535, %1840
  %1860 = fsub fast float %1536, %1841
  %1861 = fsub fast float %1537, %1842
  %1862 = fmul fast float %1853, %1859
  %1863 = fmul fast float %1853, %1860
  %1864 = fmul fast float %1853, %1861
  %1865 = fadd fast float %1862, %1840
  %1866 = fadd fast float %1863, %1841
  %1867 = fadd fast float %1864, %1842
  %1868 = fsub fast float %1521, %1011
  %1869 = fmul fast float %1853, %1868
  %1870 = fadd fast float %1869, %1011
  %1871 = fsub fast float %1663, %1843
  %1872 = fsub fast float %1664, %1844
  %1873 = fsub fast float %1665, %1845
  %1874 = fmul fast float %1858, %1871
  %1875 = fmul fast float %1858, %1872
  %1876 = fmul fast float %1858, %1873
  %1877 = fadd fast float %1874, %1843
  %1878 = fadd fast float %1875, %1844
  %1879 = fadd fast float %1876, %1845
  %1880 = fsub fast float %1803, %1017
  %1881 = fmul fast float %1853, %1880
  %1882 = fadd fast float %1881, %1017
  br label %1928

; <label>:1883                                    ; preds = %1850
  %1884 = icmp eq i32 %1848, 1
  br i1 %1884, label %1885, label %1898

; <label>:1885                                    ; preds = %1883
  %1886 = fadd fast float %1535, -1.000000e+00
  %1887 = fadd fast float %1536, -1.000000e+00
  %1888 = fadd fast float %1537, -1.000000e+00
  %1889 = fmul fast float %1853, %1886
  %1890 = fmul fast float %1853, %1887
  %1891 = fmul fast float %1853, %1888
  %1892 = fadd fast float %1889, 1.000000e+00
  %1893 = fadd fast float %1890, 1.000000e+00
  %1894 = fadd fast float %1891, 1.000000e+00
  %1895 = fmul fast float %1892, %1840
  %1896 = fmul fast float %1893, %1841
  %1897 = fmul fast float %1894, %1842
  br label %1928

; <label>:1898                                    ; preds = %1883
  %1899 = icmp eq i32 %1848, 2
  br i1 %1899, label %1900, label %1928

; <label>:1900                                    ; preds = %1898
  %1901 = call float @dx.op.unary.f32(i32 24, float %1535)  ; Sqrt(value)
  %1902 = call float @dx.op.unary.f32(i32 24, float %1536)  ; Sqrt(value)
  %1903 = call float @dx.op.unary.f32(i32 24, float %1537)  ; Sqrt(value)
  %1904 = fadd fast float %1901, -5.000000e-01
  %1905 = fadd fast float %1902, -5.000000e-01
  %1906 = fadd fast float %1903, -5.000000e-01
  %1907 = fmul fast float %1904, %1853
  %1908 = fmul fast float %1905, %1853
  %1909 = fmul fast float %1906, %1853
  %1910 = fadd fast float %1907, 5.000000e-01
  %1911 = fadd fast float %1908, 5.000000e-01
  %1912 = fadd fast float %1909, 5.000000e-01
  %1913 = fmul fast float %1910, 2.000000e+00
  %1914 = fsub fast float 1.000000e+00, %1913
  %1915 = fmul fast float %1914, %1840
  %1916 = fadd fast float %1915, %1913
  %1917 = fmul fast float %1916, %1840
  %1918 = fmul fast float %1911, 2.000000e+00
  %1919 = fsub fast float 1.000000e+00, %1918
  %1920 = fmul fast float %1919, %1841
  %1921 = fadd fast float %1920, %1918
  %1922 = fmul fast float %1921, %1841
  %1923 = fmul fast float %1912, 2.000000e+00
  %1924 = fsub fast float 1.000000e+00, %1923
  %1925 = fmul fast float %1924, %1842
  %1926 = fadd fast float %1925, %1923
  %1927 = fmul fast float %1926, %1842
  br label %1928

; <label>:1928                                    ; preds = %1900, %1898, %1885, %1855, %1839
  %1929 = phi float [ %1840, %1839 ], [ %1917, %1900 ], [ %1840, %1898 ], [ %1895, %1885 ], [ %1865, %1855 ]
  %1930 = phi float [ %1841, %1839 ], [ %1922, %1900 ], [ %1841, %1898 ], [ %1896, %1885 ], [ %1866, %1855 ]
  %1931 = phi float [ %1842, %1839 ], [ %1927, %1900 ], [ %1842, %1898 ], [ %1897, %1885 ], [ %1867, %1855 ]
  %1932 = phi float [ %1843, %1839 ], [ %1843, %1900 ], [ %1843, %1898 ], [ %1843, %1885 ], [ %1877, %1855 ]
  %1933 = phi float [ %1844, %1839 ], [ %1844, %1900 ], [ %1844, %1898 ], [ %1844, %1885 ], [ %1878, %1855 ]
  %1934 = phi float [ %1845, %1839 ], [ %1845, %1900 ], [ %1845, %1898 ], [ %1845, %1885 ], [ %1879, %1855 ]
  %1935 = phi float [ %1011, %1839 ], [ %1011, %1900 ], [ %1011, %1898 ], [ %1011, %1885 ], [ %1870, %1855 ]
  %1936 = phi float [ %1017, %1839 ], [ %1017, %1900 ], [ %1017, %1898 ], [ %1017, %1885 ], [ %1882, %1855 ]
  %1937 = and i32 %1847, 12
  %1938 = icmp eq i32 %1937, 12
  br i1 %1938, label %2079, label %1939

; <label>:1939                                    ; preds = %1928
  %1940 = and i32 %1847, 2097184
  %1941 = icmp eq i32 %1940, 2097184
  %1942 = select i1 %1941, float %1315, float 0.000000e+00
  %1943 = and i32 %1847, 4194336
  %1944 = icmp eq i32 %1943, 4194336
  %1945 = select i1 %1944, float %1315, float 0.000000e+00
  %1946 = and i32 %1847, 8388640
  %1947 = icmp eq i32 %1946, 8388640
  %1948 = select i1 %1947, float %1315, float 0.000000e+00
  %1949 = and i32 %1847, 1024
  %1950 = icmp ne i32 %1949, 0
  %1951 = select i1 %1950, float %1315, float 0.000000e+00
  %1952 = and i32 %1847, 2048
  %1953 = icmp ne i32 %1952, 0
  %1954 = select i1 %1953, float %1315, float 0.000000e+00
  %1955 = and i32 %1847, 8192
  %1956 = icmp ne i32 %1955, 0
  %1957 = select i1 %1956, float %1315, float 0.000000e+00
  %1958 = and i32 %1847, 16384
  %1959 = icmp ne i32 %1958, 0
  %1960 = select i1 %1959, float %1315, float 0.000000e+00
  %1961 = icmp eq i32 %1937, 0
  br i1 %1961, label %1962, label %1999

; <label>:1962                                    ; preds = %1939
  %1963 = fsub fast float %1616, %997
  %1964 = fsub fast float %1617, %998
  %1965 = fmul fast float %1942, %1963
  %1966 = fmul fast float %1942, %1964
  %1967 = fadd fast float %1965, %997
  %1968 = fadd fast float %1966, %998
  %1969 = fsub fast float %1618, %1014
  %1970 = fmul fast float %1945, %1969
  %1971 = fadd fast float %1970, %1014
  %1972 = fsub fast float %1615, %1013
  %1973 = fmul fast float %1948, %1972
  %1974 = fadd fast float %1973, %1013
  %1975 = fsub fast float %1721, %1008
  %1976 = fsub fast float %1722, %1009
  %1977 = fsub fast float %1723, %1010
  %1978 = fmul fast float %1951, %1975
  %1979 = fmul fast float %1951, %1976
  %1980 = fmul fast float %1951, %1977
  %1981 = fadd fast float %1978, %1008
  %1982 = fadd fast float %1979, %1009
  %1983 = fadd fast float %1980, %1010
  %1984 = fsub fast float %1789, %1015
  %1985 = fmul fast float %1954, %1984
  %1986 = fadd fast float %1985, %1015
  %1987 = fsub fast float %1786, %1005
  %1988 = fsub fast float %1787, %1006
  %1989 = fsub fast float %1788, %1007
  %1990 = fmul fast float %1957, %1987
  %1991 = fmul fast float %1957, %1988
  %1992 = fmul fast float %1957, %1989
  %1993 = fadd fast float %1990, %1005
  %1994 = fadd fast float %1991, %1006
  %1995 = fadd fast float %1992, %1007
  %1996 = fsub fast float %1790, %1016
  %1997 = fmul fast float %1960, %1996
  %1998 = fadd fast float %1997, %1016
  br label %2079

; <label>:1999                                    ; preds = %1939
  %2000 = icmp eq i32 %1937, 4
  br i1 %2000, label %2001, label %2049

; <label>:2001                                    ; preds = %1999
  %2002 = fmul fast float %1942, %1616
  %2003 = fmul fast float %1942, %1617
  %2004 = fadd fast float %2002, %997
  %2005 = fadd fast float %2003, %998
  %2006 = call float @dx.op.binary.f32(i32 36, float %1014, float %1618)  ; FMin(a,b)
  %2007 = fsub fast float %2006, %1014
  %2008 = fmul fast float %2007, %1945
  %2009 = fadd fast float %2008, %1014
  %2010 = fadd fast float %1615, %1013
  %2011 = fmul fast float %2010, 0x3FF337FAE0000000
  %2012 = fmul fast float %1013, %1013
  %2013 = fmul fast float %1615, %1615
  %2014 = fadd fast float %2013, %2012
  %2015 = fmul fast float %2014, 0x3FE5152B00000000
  %2016 = fmul fast float %1013, 0xBFCC1F85E0000000
  %2017 = fmul fast float %2016, %1615
  %2018 = fadd fast float %2017, 0xBFE1363700000000
  %2019 = fadd fast float %2018, %2011
  %2020 = fsub fast float %2019, %2015
  %2021 = fmul fast float %2010, 0x3FBA6F0D00000000
  %2022 = fmul fast float %2014, 0x3FD0432880000000
  %2023 = fmul fast float %1013, 0xBFEF110800000000
  %2024 = fmul fast float %2023, %1615
  %2025 = fadd fast float %2024, 1.000000e+00
  %2026 = fsub fast float %2025, %2021
  %2027 = fadd fast float %2026, %2022
  %2028 = fdiv fast float %2020, %2027
  %2029 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2030 = fsub fast float %2029, %1013
  %2031 = fmul fast float %2030, %1948
  %2032 = fadd fast float %2031, %1013
  %2033 = fmul fast float %1951, %1721
  %2034 = fmul fast float %1951, %1722
  %2035 = fmul fast float %1951, %1723
  %2036 = fadd fast float %2033, %1008
  %2037 = fadd fast float %2034, %1009
  %2038 = fadd fast float %2035, %1010
  %2039 = fmul fast float %1954, %1789
  %2040 = fadd fast float %2039, %1015
  %2041 = fmul fast float %1957, %1786
  %2042 = fmul fast float %1957, %1787
  %2043 = fmul fast float %1957, %1788
  %2044 = fadd fast float %2041, %1005
  %2045 = fadd fast float %2042, %1006
  %2046 = fadd fast float %2043, %1007
  %2047 = fmul fast float %1960, %1790
  %2048 = fadd fast float %2047, %1016
  br label %2079

; <label>:2049                                    ; preds = %1999
  %2050 = icmp eq i32 %1937, 8
  br i1 %2050, label %2051, label %2079

; <label>:2051                                    ; preds = %2049
  %2052 = fmul fast float %1942, %1616
  %2053 = fmul fast float %1942, %1617
  %2054 = fadd fast float %2052, %997
  %2055 = fadd fast float %2053, %998
  %2056 = call float @dx.op.binary.f32(i32 36, float %1014, float %1618)  ; FMin(a,b)
  %2057 = fsub fast float %2056, %1014
  %2058 = fmul fast float %2057, %1945
  %2059 = fadd fast float %2058, %1014
  %2060 = fsub fast float %1615, %1013
  %2061 = fmul fast float %1948, %2060
  %2062 = fadd fast float %2061, %1013
  %2063 = fmul fast float %1951, %1721
  %2064 = fmul fast float %1951, %1722
  %2065 = fmul fast float %1951, %1723
  %2066 = fadd fast float %2063, %1008
  %2067 = fadd fast float %2064, %1009
  %2068 = fadd fast float %2065, %1010
  %2069 = fmul fast float %1954, %1789
  %2070 = fadd fast float %2069, %1015
  %2071 = fmul fast float %1957, %1786
  %2072 = fmul fast float %1957, %1787
  %2073 = fmul fast float %1957, %1788
  %2074 = fadd fast float %2071, %1005
  %2075 = fadd fast float %2072, %1006
  %2076 = fadd fast float %2073, %1007
  %2077 = fmul fast float %1960, %1790
  %2078 = fadd fast float %2077, %1016
  br label %2079

; <label>:2079                                    ; preds = %2051, %2049, %2001, %1962, %1928, %1314, %1018, %996
  %2080 = phi float [ %997, %1928 ], [ %997, %1314 ], [ %997, %996 ], [ %2054, %2051 ], [ %997, %2049 ], [ %2004, %2001 ], [ %1967, %1962 ], [ %997, %1018 ]
  %2081 = phi float [ %998, %1928 ], [ %998, %1314 ], [ %998, %996 ], [ %2055, %2051 ], [ %998, %2049 ], [ %2005, %2001 ], [ %1968, %1962 ], [ %998, %1018 ]
  %2082 = phi float [ %1929, %1928 ], [ %999, %1314 ], [ %999, %996 ], [ %1929, %2051 ], [ %1929, %2049 ], [ %1929, %2001 ], [ %1929, %1962 ], [ %999, %1018 ]
  %2083 = phi float [ %1930, %1928 ], [ %1000, %1314 ], [ %1000, %996 ], [ %1930, %2051 ], [ %1930, %2049 ], [ %1930, %2001 ], [ %1930, %1962 ], [ %1000, %1018 ]
  %2084 = phi float [ %1931, %1928 ], [ %1001, %1314 ], [ %1001, %996 ], [ %1931, %2051 ], [ %1931, %2049 ], [ %1931, %2001 ], [ %1931, %1962 ], [ %1001, %1018 ]
  %2085 = phi float [ %1932, %1928 ], [ %1002, %1314 ], [ %1002, %996 ], [ %1932, %2051 ], [ %1932, %2049 ], [ %1932, %2001 ], [ %1932, %1962 ], [ %1002, %1018 ]
  %2086 = phi float [ %1933, %1928 ], [ %1003, %1314 ], [ %1003, %996 ], [ %1933, %2051 ], [ %1933, %2049 ], [ %1933, %2001 ], [ %1933, %1962 ], [ %1003, %1018 ]
  %2087 = phi float [ %1934, %1928 ], [ %1004, %1314 ], [ %1004, %996 ], [ %1934, %2051 ], [ %1934, %2049 ], [ %1934, %2001 ], [ %1934, %1962 ], [ %1004, %1018 ]
  %2088 = phi float [ %1005, %1928 ], [ %1005, %1314 ], [ %1005, %996 ], [ %2074, %2051 ], [ %1005, %2049 ], [ %2044, %2001 ], [ %1993, %1962 ], [ %1005, %1018 ]
  %2089 = phi float [ %1006, %1928 ], [ %1006, %1314 ], [ %1006, %996 ], [ %2075, %2051 ], [ %1006, %2049 ], [ %2045, %2001 ], [ %1994, %1962 ], [ %1006, %1018 ]
  %2090 = phi float [ %1007, %1928 ], [ %1007, %1314 ], [ %1007, %996 ], [ %2076, %2051 ], [ %1007, %2049 ], [ %2046, %2001 ], [ %1995, %1962 ], [ %1007, %1018 ]
  %2091 = phi float [ %1008, %1928 ], [ %1008, %1314 ], [ %1008, %996 ], [ %2066, %2051 ], [ %1008, %2049 ], [ %2036, %2001 ], [ %1981, %1962 ], [ %1008, %1018 ]
  %2092 = phi float [ %1009, %1928 ], [ %1009, %1314 ], [ %1009, %996 ], [ %2067, %2051 ], [ %1009, %2049 ], [ %2037, %2001 ], [ %1982, %1962 ], [ %1009, %1018 ]
  %2093 = phi float [ %1010, %1928 ], [ %1010, %1314 ], [ %1010, %996 ], [ %2068, %2051 ], [ %1010, %2049 ], [ %2038, %2001 ], [ %1983, %1962 ], [ %1010, %1018 ]
  %2094 = phi float [ %1935, %1928 ], [ %1011, %1314 ], [ %1011, %996 ], [ %1935, %2051 ], [ %1935, %2049 ], [ %1935, %2001 ], [ %1935, %1962 ], [ %1011, %1018 ]
  %2095 = phi float [ %1013, %1928 ], [ %1013, %1314 ], [ %1013, %996 ], [ %2062, %2051 ], [ %1013, %2049 ], [ %2032, %2001 ], [ %1974, %1962 ], [ %1013, %1018 ]
  %2096 = phi float [ %1014, %1928 ], [ %1014, %1314 ], [ %1014, %996 ], [ %2059, %2051 ], [ %1014, %2049 ], [ %2009, %2001 ], [ %1971, %1962 ], [ %1014, %1018 ]
  %2097 = phi float [ %1015, %1928 ], [ %1015, %1314 ], [ %1015, %996 ], [ %2070, %2051 ], [ %1015, %2049 ], [ %2040, %2001 ], [ %1986, %1962 ], [ %1015, %1018 ]
  %2098 = phi float [ %1016, %1928 ], [ %1016, %1314 ], [ %1016, %996 ], [ %2078, %2051 ], [ %1016, %2049 ], [ %2048, %2001 ], [ %1998, %1962 ], [ %1016, %1018 ]
  %2099 = phi float [ %1936, %1928 ], [ %1017, %1314 ], [ %1017, %996 ], [ %1936, %2051 ], [ %1936, %2049 ], [ %1936, %2001 ], [ %1936, %1962 ], [ %1017, %1018 ]
  br i1 %351, label %3161, label %2100

; <label>:2100                                    ; preds = %2079
  %2101 = icmp ult i32 %404, 3
  %2102 = add i32 %35, 56
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = add i32 %35, 60
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2105, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = or i32 %2107, %2104
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %3161, label %2110

; <label>:2110                                    ; preds = %2100
  %2111 = and i32 %2104, 262144
  %2112 = icmp ne i32 %2111, 0
  %2113 = select i1 %2112, float %38, float 1.000000e+00
  %2114 = select i1 %2112, float %39, float 0.000000e+00
  %2115 = select i1 %2112, float %40, float 0.000000e+00
  %2116 = select i1 %2112, float %41, float 1.000000e+00
  %2117 = select i1 %2112, float %42, float %63
  %2118 = select i1 %2112, float %43, float %64
  %2119 = add i32 %35, 316
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = lshr i32 %2121, 16
  %2123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2122)  ; LegacyF16ToF32(value)
  %2124 = fmul fast float %2123, 0x3F50624DE0000000
  %2125 = add i32 %35, 120
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = lshr i32 %2127, 16
  %2129 = and i32 %2128, 255
  %2130 = lshr i32 %2127, 24
  %2131 = add i32 %35, 324
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = and i32 %2133, 65535
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = lshr i32 %2133, 16
  %2137 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2136)  ; LegacyF16ToF32(value)
  %2138 = add i32 %35, 64
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2138, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = lshr i32 %2140, 22
  %2142 = shl nuw nsw i32 %2141, 5
  %2143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2142)  ; LegacyF16ToF32(value)
  %2144 = shl i32 %2140, 4
  %2145 = and i32 %2144, 32752
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = lshr i32 %2140, 7
  %2148 = and i32 %2147, 32752
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 3
  %2152 = fmul fast float %2151, 1.000000e+03
  %2153 = fmul fast float %301, %2152
  %2154 = call float @dx.op.unary.f32(i32 22, float %2153)  ; Frc(value)
  %2155 = fadd fast float %2154, %291
  %2156 = fmul fast float %302, %2152
  %2157 = call float @dx.op.unary.f32(i32 22, float %2156)  ; Frc(value)
  %2158 = fadd fast float %2157, %293
  %2159 = fmul fast float %2124, %2152
  %2160 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2161 = fmul fast float %2160, 0x401921FB60000000
  %2162 = fadd fast float %2161, %2143
  %2163 = call float @dx.op.unary.f32(i32 13, float %2162)  ; Sin(value)
  %2164 = call float @dx.op.unary.f32(i32 12, float %2162)  ; Cos(value)
  %2165 = fsub fast float -0.000000e+00, %2163
  %2166 = fadd fast float %2117, -5.000000e-01
  %2167 = fadd fast float %2118, -5.000000e-01
  %2168 = fmul fast float %2135, %2166
  %2169 = fmul fast float %2137, %2167
  %2170 = fadd fast float %2168, 5.000000e-01
  %2171 = fadd fast float %2169, 5.000000e-01
  %2172 = fmul fast float %2146, %2170
  %2173 = fmul fast float %2149, %2171
  %2174 = fmul fast float %2164, %2172
  %2175 = call float @dx.op.tertiary.f32(i32 46, float %2165, float %2173, float %2174)  ; FMad(a,b,c)
  %2176 = fmul fast float %2163, %2172
  %2177 = call float @dx.op.tertiary.f32(i32 46, float %2164, float %2173, float %2176)  ; FMad(a,b,c)
  %2178 = fadd fast float %2155, %2175
  %2179 = fadd fast float %2158, %2177
  %2180 = icmp ugt i32 %2129, 1
  %2181 = icmp ugt i32 %2127, 33554431
  %2182 = or i1 %2181, %2180
  br i1 %2182, label %2183, label %2208

; <label>:2183                                    ; preds = %2110
  %2184 = add i32 %35, 260
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = lshr i32 %2186, 16
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = fmul fast float %2151, %2188
  %2190 = call float @dx.op.unary.f32(i32 22, float %2189)  ; Frc(value)
  %2191 = mul nuw nsw i32 %2129, %2130
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2190, %2192
  %2194 = call float @dx.op.unary.f32(i32 27, float %2193)  ; Round_ni(value)
  %2195 = fptoui float %2194 to i32
  %2196 = urem i32 %2195, %2129
  %2197 = udiv i32 %2195, %2130
  %2198 = call float @dx.op.unary.f32(i32 22, float %2178)  ; Frc(value)
  %2199 = call float @dx.op.unary.f32(i32 22, float %2179)  ; Frc(value)
  %2200 = uitofp i32 %2196 to float
  %2201 = uitofp i32 %2197 to float
  %2202 = fadd fast float %2198, %2200
  %2203 = fadd fast float %2199, %2201
  %2204 = uitofp i32 %2129 to float
  %2205 = uitofp i32 %2130 to float
  %2206 = fdiv fast float %2202, %2204
  %2207 = fdiv fast float %2203, %2205
  br label %2208

; <label>:2208                                    ; preds = %2183, %2110
  %2209 = phi float [ %2206, %2183 ], [ %2178, %2110 ]
  %2210 = phi float [ %2207, %2183 ], [ %2179, %2110 ]
  %2211 = and i32 %2104, 16777216
  %2212 = icmp eq i32 %2211, 0
  br i1 %2212, label %2322, label %2213

; <label>:2213                                    ; preds = %2208
  %2214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2215 = extractvalue %dx.types.CBufRet.f32 %2214, 0
  %2216 = extractvalue %dx.types.CBufRet.f32 %2214, 1
  %2217 = extractvalue %dx.types.CBufRet.f32 %2214, 2
  %2218 = fadd fast float %2215, %134
  %2219 = fadd fast float %2216, %135
  %2220 = fadd fast float %2217, %136
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 0
  %2223 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2224 = icmp eq i32 %36, 65535
  br i1 %2224, label %2319, label %2225

; <label>:2225                                    ; preds = %2213
  %2226 = lshr i32 %36, 1
  %2227 = shl i32 %2226, 2
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = and i32 %36, 1
  %2231 = icmp ne i32 %2230, 0
  %2232 = lshr i32 %2229, 16
  %2233 = and i32 %2229, 65535
  %2234 = select i1 %2231, i32 %2232, i32 %2233
  %2235 = icmp eq i32 %2234, 65535
  br i1 %2235, label %2315, label %2236

; <label>:2236                                    ; preds = %2225
  %2237 = mul nuw nsw i32 %2234, 40
  %2238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.ResRet.f32 %2238, 1
  %2241 = extractvalue %dx.types.ResRet.f32 %2238, 2
  %2242 = add nuw nsw i32 %2237, 12
  %2243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2242, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.ResRet.f32 %2243, 1
  %2246 = extractvalue %dx.types.ResRet.f32 %2243, 2
  %2247 = add nuw nsw i32 %2237, 24
  %2248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2247, i32 undef)  ; BufferLoad(srv,index,wot)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.ResRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.ResRet.f32 %2248, 2
  %2252 = add nuw nsw i32 %2237, 36
  %2253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.f32 %2253, 0
  %2255 = fsub fast float %2218, %2239
  %2256 = fsub fast float %2219, %2240
  %2257 = fsub fast float %2220, %2241
  %2258 = fmul fast float %2254, %2255
  %2259 = fmul fast float %2254, %2256
  %2260 = fmul fast float %2254, %2257
  %2261 = call float @dx.op.unary.f32(i32 27, float %2258)  ; Round_ni(value)
  %2262 = call float @dx.op.unary.f32(i32 27, float %2259)  ; Round_ni(value)
  %2263 = call float @dx.op.unary.f32(i32 27, float %2260)  ; Round_ni(value)
  %2264 = fadd fast float %2261, 5.000000e-01
  %2265 = fadd fast float %2262, 5.000000e-01
  %2266 = fadd fast float %2263, 5.000000e-01
  %2267 = fmul fast float %2264, %2244
  %2268 = fmul fast float %2265, %2245
  %2269 = fmul fast float %2266, %2246
  %2270 = shl i32 %36, 2
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = add i32 %2272, 0
  %2274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2275 = call float @dx.op.unary.f32(i32 22, float %2267)  ; Frc(value)
  %2276 = call float @dx.op.unary.f32(i32 22, float %2268)  ; Frc(value)
  %2277 = call float @dx.op.unary.f32(i32 22, float %2269)  ; Frc(value)
  %2278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2274, %dx.types.Handle %30, float %2275, float %2276, float %2277, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.ResRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.ResRet.f32 %2278, 2
  %2282 = fmul fast float %2279, 1.023000e+03
  %2283 = fmul fast float %2280, 1.023000e+03
  %2284 = fmul fast float %2281, 1.023000e+03
  %2285 = fadd fast float %2282, 5.000000e-01
  %2286 = fadd fast float %2283, 5.000000e-01
  %2287 = fadd fast float %2284, 5.000000e-01
  %2288 = call float @dx.op.unary.f32(i32 27, float %2285)  ; Round_ni(value)
  %2289 = call float @dx.op.unary.f32(i32 27, float %2286)  ; Round_ni(value)
  %2290 = call float @dx.op.unary.f32(i32 27, float %2287)  ; Round_ni(value)
  %2291 = fsub fast float %2258, %2261
  %2292 = fsub fast float %2259, %2262
  %2293 = fsub fast float %2260, %2263
  %2294 = fmul fast float %2291, 7.500000e-01
  %2295 = fmul fast float %2292, 7.500000e-01
  %2296 = fmul fast float %2293, 7.500000e-01
  %2297 = fadd fast float %2261, 1.250000e-01
  %2298 = fadd fast float %2297, %2294
  %2299 = fadd fast float %2298, %2288
  %2300 = fadd fast float %2262, 1.250000e-01
  %2301 = fadd fast float %2300, %2295
  %2302 = fadd fast float %2301, %2289
  %2303 = fadd fast float %2263, 1.250000e-01
  %2304 = fadd fast float %2303, %2296
  %2305 = fadd fast float %2304, %2290
  %2306 = fmul fast float %2299, %2249
  %2307 = fmul fast float %2302, %2250
  %2308 = fmul fast float %2305, %2251
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = add i32 %2310, 0
  %2312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2312, %dx.types.Handle %28, float %2306, float %2307, float %2308, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2314 = extractvalue %dx.types.ResRet.f32 %2313, 0
  br label %2315

; <label>:2315                                    ; preds = %2236, %2225
  %2316 = phi float [ %2314, %2236 ], [ -1.000000e+00, %2225 ]
  %2317 = fadd fast float %2316, %2223
  %2318 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  br label %2319

; <label>:2319                                    ; preds = %2315, %2213
  %2320 = phi float [ %2318, %2315 ], [ %2223, %2213 ]
  %2321 = fmul fast float %2320, %400
  br label %2322

; <label>:2322                                    ; preds = %2319, %2208
  %2323 = phi float [ %2321, %2319 ], [ %400, %2208 ]
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 256
  %2327 = icmp eq i32 %2326, 0
  br i1 %2327, label %2374, label %2328

; <label>:2328                                    ; preds = %2322
  %2329 = add i32 %35, 432
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = add i32 %2331, 0
  %2333 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2332, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2334 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2333, %dx.types.Handle %72, float %2209, float %2210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2335 = extractvalue %dx.types.ResRet.f32 %2334, 0
  %2336 = add i32 %35, 132
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = shl i32 %2338, 4
  %2340 = and i32 %2339, 32752
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = lshr i32 %2338, 7
  %2343 = and i32 %2342, 32752
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = fsub fast float 1.000000e+00, %2323
  %2346 = call float @dx.op.binary.f32(i32 35, float %2345, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2347 = bitcast float %2323 to i32
  %2348 = sitofp i32 %2347 to float
  %2349 = fadd fast float %2348, 0xC1CFBF8940000000
  %2350 = fmul fast float %2344, %2349
  %2351 = fadd fast float %2350, 0x41CFBF8940000000
  %2352 = fptosi float %2351 to i32
  %2353 = bitcast i32 %2352 to float
  %2354 = bitcast float %2346 to i32
  %2355 = sitofp i32 %2354 to float
  %2356 = fadd fast float %2355, 0xC1CFBF8940000000
  %2357 = fmul fast float %2356, %2344
  %2358 = fadd fast float %2357, 0x41CFBF8940000000
  %2359 = fptosi float %2358 to i32
  %2360 = bitcast i32 %2359 to float
  %2361 = fmul fast float %2353, %2341
  %2362 = fmul fast float %2360, %2341
  %2363 = fsub fast float %2346, %2361
  %2364 = fadd fast float %2362, %2346
  %2365 = call float @dx.op.unary.f32(i32 7, float %2363)  ; Saturate(value)
  %2366 = call float @dx.op.unary.f32(i32 7, float %2364)  ; Saturate(value)
  %2367 = fsub fast float %2335, %2365
  %2368 = fsub fast float %2366, %2365
  %2369 = bitcast float %2368 to i32
  %2370 = sub nsw i32 2129859010, %2369
  %2371 = bitcast i32 %2370 to float
  %2372 = fmul fast float %2371, %2367
  %2373 = call float @dx.op.unary.f32(i32 7, float %2372)  ; Saturate(value)
  br label %2374

; <label>:2374                                    ; preds = %2328, %2322
  %2375 = phi float [ %2373, %2328 ], [ %2323, %2322 ]
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = and i32 %2377, 128
  %2379 = icmp eq i32 %2378, 0
  br i1 %2379, label %2396, label %2380

; <label>:2380                                    ; preds = %2374
  %2381 = add i32 %35, 416
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = add i32 %2383, 0
  %2385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2385, %dx.types.Handle %72, float %2209, float %2210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2387 = extractvalue %dx.types.ResRet.f32 %2386, 0
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 524288
  %2391 = icmp ne i32 %2390, 0
  %2392 = fcmp fast ogt float %2387, 0x3FE0101020000000
  %2393 = select i1 %2392, float 1.000000e+00, float 0.000000e+00
  %2394 = select i1 %2391, float %2393, float %2387
  %2395 = fmul fast float %2394, %2375
  br label %2396

; <label>:2396                                    ; preds = %2380, %2374
  %2397 = phi float [ %2395, %2380 ], [ %2375, %2374 ]
  %2398 = fcmp fast ult float %2397, 0x3F70101020000000
  br i1 %2398, label %3161, label %2399

; <label>:2399                                    ; preds = %2396
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 16
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2602, label %2404

; <label>:2404                                    ; preds = %2399
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = add i32 %35, 368
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = add i32 %2409, 0
  %2411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2411, %dx.types.Handle %71, float %2209, float %2210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.ResRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.ResRet.f32 %2412, 2
  %2416 = extractvalue %dx.types.ResRet.f32 %2412, 3
  %2417 = and i32 %2406, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = lshr i32 %2406, 8
  %2420 = and i32 %2419, 255
  %2421 = uitofp i32 %2420 to float
  %2422 = fmul fast float %2416, %2418
  %2423 = fadd fast float %2422, %2421
  %2424 = fmul fast float %2423, 0x3F70101000000000
  %2425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2426 = extractvalue %dx.types.ResRet.i32 %2425, 0
  %2427 = and i32 %2426, 512
  %2428 = icmp eq i32 %2427, 0
  br i1 %2428, label %2437, label %2429

; <label>:2429                                    ; preds = %2404
  %2430 = add i32 %35, 448
  %2431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2430, i32 undef)  ; BufferLoad(srv,index,wot)
  %2432 = extractvalue %dx.types.ResRet.i32 %2431, 0
  %2433 = add i32 %2432, 0
  %2434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2434, %dx.types.Handle %72, float %2209, float %2210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  br label %2437

; <label>:2437                                    ; preds = %2429, %2404
  %2438 = phi float [ %2436, %2429 ], [ 1.000000e+00, %2404 ]
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 33554432
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2549, label %2443

; <label>:2443                                    ; preds = %2437
  %2444 = add i32 %35, 256
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 65535
  %2448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2447)  ; LegacyF16ToF32(value)
  %2449 = lshr i32 %2446, 16
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = add i32 %35, 260
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 65535
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = lshr i32 %2457, 24
  %2459 = uitofp i32 %2458 to float
  %2460 = fmul fast float %2459, 0x3F70101020000000
  %2461 = and i32 %2457, 255
  %2462 = uitofp i32 %2461 to float
  %2463 = fmul fast float %2462, 0x3F70101020000000
  %2464 = lshr i32 %2457, 8
  %2465 = and i32 %2464, 255
  %2466 = uitofp i32 %2465 to float
  %2467 = fmul fast float %2466, 0x3F70101020000000
  %2468 = lshr i32 %2457, 16
  %2469 = and i32 %2468, 255
  %2470 = uitofp i32 %2469 to float
  %2471 = fmul fast float %2470, 0x3F70101020000000
  %2472 = add i32 %35, 252
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = lshr i32 %2474, 24
  %2476 = uitofp i32 %2475 to float
  %2477 = fmul fast float %2476, 0x3F70101020000000
  %2478 = and i32 %2474, 255
  %2479 = uitofp i32 %2478 to float
  %2480 = fmul fast float %2479, 0x3F70101020000000
  %2481 = lshr i32 %2474, 8
  %2482 = and i32 %2481, 255
  %2483 = uitofp i32 %2482 to float
  %2484 = fmul fast float %2483, 0x3F70101020000000
  %2485 = lshr i32 %2474, 16
  %2486 = and i32 %2485, 255
  %2487 = uitofp i32 %2486 to float
  %2488 = fmul fast float %2487, 0x3F70101020000000
  %2489 = bitcast float %2413 to i32
  %2490 = ashr i32 %2489, 1
  %2491 = sub nsw i32 1597463174, %2490
  %2492 = bitcast i32 %2491 to float
  %2493 = fmul fast float %2413, 5.000000e-01
  %2494 = fmul fast float %2492, %2492
  %2495 = fmul fast float %2494, %2493
  %2496 = fsub fast float 1.500000e+00, %2495
  %2497 = fmul fast float %2492, %2413
  %2498 = fmul fast float %2497, %2496
  %2499 = bitcast float %2414 to i32
  %2500 = ashr i32 %2499, 1
  %2501 = sub nsw i32 1597463174, %2500
  %2502 = bitcast i32 %2501 to float
  %2503 = fmul fast float %2414, 5.000000e-01
  %2504 = fmul fast float %2502, %2502
  %2505 = fmul fast float %2504, %2503
  %2506 = fsub fast float 1.500000e+00, %2505
  %2507 = fmul fast float %2502, %2414
  %2508 = fmul fast float %2507, %2506
  %2509 = bitcast float %2415 to i32
  %2510 = ashr i32 %2509, 1
  %2511 = sub nsw i32 1597463174, %2510
  %2512 = bitcast i32 %2511 to float
  %2513 = fmul fast float %2415, 5.000000e-01
  %2514 = fmul fast float %2512, %2512
  %2515 = fmul fast float %2514, %2513
  %2516 = fsub fast float 1.500000e+00, %2515
  %2517 = fmul fast float %2512, %2415
  %2518 = fmul fast float %2517, %2516
  %2519 = fsub fast float %2498, %2480
  %2520 = fsub fast float %2508, %2484
  %2521 = fsub fast float %2518, %2488
  %2522 = fmul fast float %2519, %2448
  %2523 = fmul fast float %2520, %2450
  %2524 = fmul fast float %2521, %2455
  %2525 = fadd fast float %2522, %2463
  %2526 = fadd fast float %2523, %2467
  %2527 = fadd fast float %2524, %2471
  %2528 = call float @dx.op.unary.f32(i32 7, float %2525)  ; Saturate(value)
  %2529 = call float @dx.op.unary.f32(i32 7, float %2526)  ; Saturate(value)
  %2530 = call float @dx.op.unary.f32(i32 7, float %2527)  ; Saturate(value)
  %2531 = fmul fast float %2528, %2528
  %2532 = fmul fast float %2529, %2529
  %2533 = fmul fast float %2530, %2530
  %2534 = fsub fast float %2531, %2413
  %2535 = fsub fast float %2532, %2414
  %2536 = fsub fast float %2533, %2415
  %2537 = fmul fast float %2534, %2438
  %2538 = fmul fast float %2535, %2438
  %2539 = fmul fast float %2536, %2438
  %2540 = fadd fast float %2537, %2413
  %2541 = fadd fast float %2538, %2414
  %2542 = fadd fast float %2539, %2415
  %2543 = fadd fast float %2460, %2424
  %2544 = fsub fast float %2543, %2477
  %2545 = call float @dx.op.unary.f32(i32 7, float %2544)  ; Saturate(value)
  %2546 = fsub fast float %2545, %2424
  %2547 = fmul fast float %2546, %2438
  %2548 = fadd fast float %2547, %2424
  br label %2602

; <label>:2549                                    ; preds = %2437
  %2550 = and i32 %2440, 134217728
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2586, label %2552

; <label>:2552                                    ; preds = %2549
  %2553 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2554 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2555 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2556 = fadd fast float %2553, -5.000000e-01
  %2557 = fadd fast float %2554, -5.000000e-01
  %2558 = fadd fast float %2555, -5.000000e-01
  %2559 = fmul fast float %2556, %2438
  %2560 = fmul fast float %2557, %2438
  %2561 = fmul fast float %2558, %2438
  %2562 = fadd fast float %2559, 5.000000e-01
  %2563 = fadd fast float %2560, 5.000000e-01
  %2564 = fadd fast float %2561, 5.000000e-01
  %2565 = call float @dx.op.unary.f32(i32 24, float %2413)  ; Sqrt(value)
  %2566 = call float @dx.op.unary.f32(i32 24, float %2414)  ; Sqrt(value)
  %2567 = call float @dx.op.unary.f32(i32 24, float %2415)  ; Sqrt(value)
  %2568 = fmul fast float %2562, 2.000000e+00
  %2569 = fsub fast float 1.000000e+00, %2568
  %2570 = fmul fast float %2569, %2565
  %2571 = fadd fast float %2570, %2568
  %2572 = fmul fast float %2571, %2565
  %2573 = fmul fast float %2563, 2.000000e+00
  %2574 = fsub fast float 1.000000e+00, %2573
  %2575 = fmul fast float %2574, %2566
  %2576 = fadd fast float %2575, %2573
  %2577 = fmul fast float %2576, %2566
  %2578 = fmul fast float %2564, 2.000000e+00
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2579, %2567
  %2581 = fadd fast float %2580, %2578
  %2582 = fmul fast float %2581, %2567
  %2583 = fmul fast float %2572, %2572
  %2584 = fmul fast float %2577, %2577
  %2585 = fmul fast float %2582, %2582
  br label %2602

; <label>:2586                                    ; preds = %2549
  %2587 = fmul fast float %278, %278
  %2588 = fmul fast float %282, %282
  %2589 = fmul fast float %286, %286
  %2590 = fadd fast float %2587, -1.000000e+00
  %2591 = fadd fast float %2588, -1.000000e+00
  %2592 = fadd fast float %2589, -1.000000e+00
  %2593 = fmul fast float %2438, %2590
  %2594 = fmul fast float %2438, %2591
  %2595 = fmul fast float %2438, %2592
  %2596 = fadd fast float %2593, 1.000000e+00
  %2597 = fadd fast float %2594, 1.000000e+00
  %2598 = fadd fast float %2595, 1.000000e+00
  %2599 = fmul fast float %2596, %2413
  %2600 = fmul fast float %2597, %2414
  %2601 = fmul fast float %2598, %2415
  br label %2602

; <label>:2602                                    ; preds = %2586, %2552, %2443, %2399
  %2603 = phi float [ %2548, %2443 ], [ %2424, %2552 ], [ %2424, %2586 ], [ 0x3FA23C0BE0000000, %2399 ]
  %2604 = phi float [ %2540, %2443 ], [ %2583, %2552 ], [ %2599, %2586 ], [ 1.000000e+00, %2399 ]
  %2605 = phi float [ %2541, %2443 ], [ %2584, %2552 ], [ %2600, %2586 ], [ 1.000000e+00, %2399 ]
  %2606 = phi float [ %2542, %2443 ], [ %2585, %2552 ], [ %2601, %2586 ], [ 1.000000e+00, %2399 ]
  %2607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2608 = extractvalue %dx.types.CBufRet.i32 %2607, 1
  %2609 = and i32 %2608, 1
  %2610 = icmp ne i32 %2609, 0
  %2611 = add i32 %35, 356
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 32
  %2615 = icmp ne i32 %2614, 0
  %2616 = and i1 %2610, %2615
  %2617 = select i1 %2616, float 1.000000e+00, float %2604
  %2618 = select i1 %2616, float 0x3FD3333340000000, float %2605
  %2619 = select i1 %2616, float 0x3FD3333340000000, float %2606
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = and i32 %2621, 32
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %2696, label %2624

; <label>:2624                                    ; preds = %2602
  %2625 = add i32 %35, 124
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2625, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = add i32 %35, 384
  %2629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2628, i32 undef)  ; BufferLoad(srv,index,wot)
  %2630 = extractvalue %dx.types.ResRet.i32 %2629, 0
  %2631 = add i32 %2630, 0
  %2632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2632, %dx.types.Handle %71, float %2209, float %2210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2634 = extractvalue %dx.types.ResRet.f32 %2633, 0
  %2635 = extractvalue %dx.types.ResRet.f32 %2633, 1
  %2636 = extractvalue %dx.types.ResRet.f32 %2633, 2
  %2637 = extractvalue %dx.types.ResRet.f32 %2633, 3
  %2638 = and i32 %2627, 255
  %2639 = uitofp i32 %2638 to float
  %2640 = lshr i32 %2627, 8
  %2641 = and i32 %2640, 255
  %2642 = uitofp i32 %2641 to float
  %2643 = lshr i32 %2627, 16
  %2644 = and i32 %2643, 255
  %2645 = uitofp i32 %2644 to float
  %2646 = fmul fast float %2645, 0x3F70101000000000
  %2647 = fmul fast float %2634, %2639
  %2648 = fadd fast float %2647, %2642
  %2649 = fmul fast float %2648, 0x3F70101000000000
  %2650 = fadd fast float %2635, -5.000000e-01
  %2651 = fadd fast float %2637, -5.000000e-01
  %2652 = fmul fast float %2650, %2646
  %2653 = fmul fast float %2651, %2646
  %2654 = fadd fast float %2652, 5.000000e-01
  %2655 = fadd fast float %2653, 5.000000e-01
  %2656 = fmul fast float %2654, 2.000000e+00
  %2657 = fadd fast float %2656, -1.000000e+00
  %2658 = fmul fast float %2655, 2.000000e+00
  %2659 = fadd fast float %2658, -1.000000e+00
  %2660 = fadd fast float %2657, %2659
  %2661 = fmul fast float %2660, 5.000000e-01
  %2662 = fsub fast float %2657, %2659
  %2663 = fmul fast float %2662, 5.000000e-01
  %2664 = call float @dx.op.unary.f32(i32 6, float %2661)  ; FAbs(value)
  %2665 = fsub fast float 1.000000e+00, %2664
  %2666 = call float @dx.op.unary.f32(i32 6, float %2663)  ; FAbs(value)
  %2667 = fsub fast float %2665, %2666
  %2668 = call float @dx.op.dot3.f32(i32 55, float %2661, float %2663, float %2667, float %2661, float %2663, float %2667)  ; Dot3(ax,ay,az,bx,by,bz)
  %2669 = call float @dx.op.unary.f32(i32 25, float %2668)  ; Rsqrt(value)
  %2670 = fmul fast float %2661, %2669
  %2671 = fmul fast float %2663, %2669
  %2672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.i32 %2672, 0
  %2674 = and i32 %2673, 67108864
  %2675 = icmp eq i32 %2674, 0
  br i1 %2675, label %2692, label %2676

; <label>:2676                                    ; preds = %2624
  %2677 = add i32 %35, 312
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = and i32 %2679, 65535
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = and i32 %2683, 65535
  %2685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2684)  ; LegacyF16ToF32(value)
  %2686 = lshr i32 %2679, 16
  %2687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2686)  ; LegacyF16ToF32(value)
  %2688 = fsub fast float %2649, %2687
  %2689 = fmul fast float %2688, %2681
  %2690 = fadd fast float %2689, %2685
  %2691 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  br label %2692

; <label>:2692                                    ; preds = %2676, %2624
  %2693 = phi float [ %2691, %2676 ], [ %2649, %2624 ]
  %2694 = call float @dx.op.dot2.f32(i32 54, float %2670, float %2671, float %2113, float %2114)  ; Dot2(ax,ay,bx,by)
  %2695 = call float @dx.op.dot2.f32(i32 54, float %2670, float %2671, float %2115, float %2116)  ; Dot2(ax,ay,bx,by)
  br label %2696

; <label>:2696                                    ; preds = %2692, %2602
  %2697 = phi float [ %2693, %2692 ], [ 0x3FD6666660000000, %2602 ]
  %2698 = phi float [ %2694, %2692 ], [ 0.000000e+00, %2602 ]
  %2699 = phi float [ %2695, %2692 ], [ 0.000000e+00, %2602 ]
  %2700 = phi float [ %2636, %2692 ], [ 1.000000e+00, %2602 ]
  %2701 = add i32 %35, 192
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = lshr i32 %2703, 22
  %2705 = shl nuw nsw i32 %2704, 5
  %2706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2705)  ; LegacyF16ToF32(value)
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = and i32 %2708, 64
  %2710 = icmp eq i32 %2709, 0
  br i1 %2710, label %2744, label %2711

; <label>:2711                                    ; preds = %2696
  %2712 = add i32 %35, 400
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2712, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = add i32 %2714, 0
  %2716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2715, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = and i32 %2718, 131072
  %2720 = icmp eq i32 %2719, 0
  %2721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2716, %dx.types.Handle %71, float %2209, float %2210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.ResRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.ResRet.f32 %2721, 2
  %2725 = fmul fast float %2722, %266
  %2726 = fmul fast float %2723, %269
  %2727 = fmul fast float %2724, %272
  br i1 %2720, label %2734, label %2728

; <label>:2728                                    ; preds = %2711
  %2729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2730 = extractvalue %dx.types.CBufRet.f32 %2729, 0
  %2731 = fmul fast float %2730, %2725
  %2732 = fmul fast float %2730, %2726
  %2733 = fmul fast float %2730, %2727
  br label %2734

; <label>:2734                                    ; preds = %2728, %2711
  %2735 = phi float [ %2731, %2728 ], [ %2725, %2711 ]
  %2736 = phi float [ %2732, %2728 ], [ %2726, %2711 ]
  %2737 = phi float [ %2733, %2728 ], [ %2727, %2711 ]
  %2738 = fmul fast float %2735, %2706
  %2739 = select i1 %176, float %2738, float %2735
  %2740 = call float @dx.op.dot3.f32(i32 55, float %2739, float %2736, float %2737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2741 = select i1 %176, float 0.000000e+00, float %2735
  %2742 = select i1 %176, float %2740, float %2736
  %2743 = select i1 %176, float 0.000000e+00, float %2737
  br label %2744

; <label>:2744                                    ; preds = %2734, %2696
  %2745 = phi float [ %2741, %2734 ], [ 0.000000e+00, %2696 ]
  %2746 = phi float [ %2742, %2734 ], [ 0.000000e+00, %2696 ]
  %2747 = phi float [ %2743, %2734 ], [ 0.000000e+00, %2696 ]
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = and i32 %2749, 1024
  %2751 = icmp eq i32 %2750, 0
  br i1 %2751, label %2782, label %2752

; <label>:2752                                    ; preds = %2744
  %2753 = add i32 %35, 184
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = and i32 %2755, 255
  %2757 = uitofp i32 %2756 to float
  %2758 = fmul fast float %2757, 0x3F70101020000000
  %2759 = lshr i32 %2755, 8
  %2760 = and i32 %2759, 255
  %2761 = uitofp i32 %2760 to float
  %2762 = fmul fast float %2761, 0x3F70101020000000
  %2763 = lshr i32 %2755, 16
  %2764 = and i32 %2763, 255
  %2765 = uitofp i32 %2764 to float
  %2766 = fmul fast float %2765, 0x3F70101020000000
  %2767 = fmul fast float %2758, %2758
  %2768 = fmul fast float %2762, %2762
  %2769 = fmul fast float %2766, %2766
  %2770 = add i32 %35, 464
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = add i32 %2772, 0
  %2774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2773, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2775 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2774, %dx.types.Handle %72, float %2209, float %2210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2776 = extractvalue %dx.types.ResRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.ResRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.ResRet.f32 %2775, 2
  %2779 = fmul fast float %2767, %2776
  %2780 = fmul fast float %2768, %2777
  %2781 = fmul fast float %2769, %2778
  br label %2782

; <label>:2782                                    ; preds = %2752, %2744
  %2783 = phi float [ %2779, %2752 ], [ 0.000000e+00, %2744 ]
  %2784 = phi float [ %2780, %2752 ], [ 0.000000e+00, %2744 ]
  %2785 = phi float [ %2781, %2752 ], [ 0.000000e+00, %2744 ]
  %2786 = fcmp fast ogt float %2783, 0.000000e+00
  %2787 = fcmp fast ogt float %2784, 0.000000e+00
  %2788 = fcmp fast ogt float %2785, 0.000000e+00
  %2789 = call float @dx.op.unary.f32(i32 23, float %2783)  ; Log(value)
  %2790 = call float @dx.op.unary.f32(i32 23, float %2784)  ; Log(value)
  %2791 = call float @dx.op.unary.f32(i32 23, float %2785)  ; Log(value)
  %2792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.i32 %2792, 0
  %2794 = lshr i32 %2793, 7
  %2795 = and i32 %2794, 32752
  %2796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2795)  ; LegacyF16ToF32(value)
  %2797 = fmul fast float %2789, 0xBFE62E4300000000
  %2798 = fmul fast float %2797, %2796
  %2799 = fmul fast float %2790, 0xBFE62E4300000000
  %2800 = fmul fast float %2799, %2796
  %2801 = fmul fast float %2791, 0xBFE62E4300000000
  %2802 = fmul fast float %2801, %2796
  %2803 = select i1 %2786, float %2798, float 1.270000e+02
  %2804 = select i1 %2787, float %2800, float 1.270000e+02
  %2805 = select i1 %2788, float %2802, float 1.270000e+02
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = and i32 %2807, 26624
  %2809 = icmp eq i32 %2808, 0
  br i1 %2809, label %2867, label %2810

; <label>:2810                                    ; preds = %2782
  %2811 = add i32 %35, 480
  %2812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2813 = extractvalue %dx.types.ResRet.i32 %2812, 0
  %2814 = add i32 %2813, 0
  %2815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2814, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2816 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2815, %dx.types.Handle %72, float %2209, float %2210, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2817 = extractvalue %dx.types.ResRet.f32 %2816, 0
  %2818 = extractvalue %dx.types.ResRet.f32 %2816, 1
  %2819 = extractvalue %dx.types.ResRet.f32 %2816, 3
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = and i32 %2821, 1048576
  %2823 = icmp ne i32 %2822, 0
  %2824 = and i32 %2821, 8192
  %2825 = icmp eq i32 %2824, 0
  br i1 %2825, label %2840, label %2826

; <label>:2826                                    ; preds = %2810
  %2827 = extractvalue %dx.types.ResRet.f32 %2816, 2
  %2828 = select i1 %2823, float %2827, float %2818
  %2829 = select i1 %2823, float %2817, float %2818
  %2830 = add i32 %35, 128
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = lshr i32 %2832, 16
  %2834 = and i32 %2833, 255
  %2835 = uitofp i32 %2834 to float
  %2836 = fmul fast float %2835, 0x3F80101020000000
  %2837 = fmul fast float %2836, %2829
  %2838 = fmul fast float %2836, %2818
  %2839 = fmul fast float %2836, %2828
  br label %2840

; <label>:2840                                    ; preds = %2826, %2810
  %2841 = phi float [ %2837, %2826 ], [ 0.000000e+00, %2810 ]
  %2842 = phi float [ %2838, %2826 ], [ 0.000000e+00, %2810 ]
  %2843 = phi float [ %2839, %2826 ], [ 0.000000e+00, %2810 ]
  %2844 = and i32 %2821, 2048
  %2845 = icmp eq i32 %2844, 0
  br i1 %2845, label %2854, label %2846

; <label>:2846                                    ; preds = %2840
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = shl i32 %2848, 4
  %2850 = and i32 %2849, 32752
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = fmul fast float %2851, %2819
  %2853 = call float @dx.op.binary.f32(i32 35, float %2852, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2854

; <label>:2854                                    ; preds = %2846, %2840
  %2855 = phi float [ %2853, %2846 ], [ 0x3F70101020000000, %2840 ]
  %2856 = and i32 %2821, 16384
  %2857 = icmp eq i32 %2856, 0
  br i1 %2857, label %2867, label %2858

; <label>:2858                                    ; preds = %2854
  %2859 = add i32 %35, 128
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = lshr i32 %2861, 24
  %2863 = uitofp i32 %2862 to float
  %2864 = fmul fast float %2817, 0x3F70101020000000
  %2865 = select i1 %2823, float 0x3F70101020000000, float %2864
  %2866 = fmul fast float %2865, %2863
  br label %2867

; <label>:2867                                    ; preds = %2858, %2854, %2782
  %2868 = phi float [ %2841, %2858 ], [ %2841, %2854 ], [ 0.000000e+00, %2782 ]
  %2869 = phi float [ %2842, %2858 ], [ %2842, %2854 ], [ 0.000000e+00, %2782 ]
  %2870 = phi float [ %2843, %2858 ], [ %2843, %2854 ], [ 0.000000e+00, %2782 ]
  %2871 = phi float [ %2855, %2858 ], [ %2855, %2854 ], [ 0x3F70101020000000, %2782 ]
  %2872 = phi float [ %2866, %2858 ], [ 0.000000e+00, %2854 ], [ 0.000000e+00, %2782 ]
  %2873 = add i32 %35, 128
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 255
  %2877 = uitofp i32 %2876 to float
  %2878 = lshr i32 %2875, 8
  %2879 = and i32 %2878, 255
  %2880 = uitofp i32 %2879 to float
  %2881 = call float @dx.op.dot3.f32(i32 55, float %2617, float %2618, float %2619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2882 = fmul fast float %2880, %2881
  %2883 = fadd fast float %2882, %2877
  %2884 = fmul fast float %2883, 0x3F70101020000000
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  br i1 %2101, label %2886, label %2921

; <label>:2886                                    ; preds = %2867
  %2887 = fmul fast float %2871, 2.000000e+00
  %2888 = fcmp fast olt float %2803, 1.270000e+02
  %2889 = fcmp fast olt float %2804, 1.270000e+02
  %2890 = fcmp fast olt float %2805, 1.270000e+02
  %2891 = fmul fast float %2803, 0xBFF7154760000000
  %2892 = fmul fast float %2891, %2887
  %2893 = fmul fast float %2804, 0xBFF7154760000000
  %2894 = fmul fast float %2893, %2887
  %2895 = fmul fast float %2805, 0xBFF7154760000000
  %2896 = fmul fast float %2895, %2887
  %2897 = call float @dx.op.unary.f32(i32 21, float %2892)  ; Exp(value)
  %2898 = call float @dx.op.unary.f32(i32 21, float %2894)  ; Exp(value)
  %2899 = call float @dx.op.unary.f32(i32 21, float %2896)  ; Exp(value)
  %2900 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  %2901 = call float @dx.op.unary.f32(i32 7, float %2898)  ; Saturate(value)
  %2902 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  %2903 = fadd fast float %2900, -1.000000e+00
  %2904 = select i1 %2888, float %2903, float -1.000000e+00
  %2905 = fadd fast float %2901, -1.000000e+00
  %2906 = select i1 %2889, float %2905, float -1.000000e+00
  %2907 = fadd fast float %2902, -1.000000e+00
  %2908 = select i1 %2890, float %2907, float -1.000000e+00
  %2909 = fmul fast float %2904, %2397
  %2910 = fmul fast float %2906, %2397
  %2911 = fmul fast float %2908, %2397
  %2912 = fadd fast float %2909, 1.000000e+00
  %2913 = fadd fast float %2910, 1.000000e+00
  %2914 = fadd fast float %2911, 1.000000e+00
  %2915 = fmul fast float %2912, %2082
  %2916 = fmul fast float %2913, %2083
  %2917 = fmul fast float %2914, %2084
  %2918 = fmul fast float %2912, %2085
  %2919 = fmul fast float %2913, %2086
  %2920 = fmul fast float %2914, %2087
  br label %2921

; <label>:2921                                    ; preds = %2886, %2867
  %2922 = phi float [ %2915, %2886 ], [ %2082, %2867 ]
  %2923 = phi float [ %2916, %2886 ], [ %2083, %2867 ]
  %2924 = phi float [ %2917, %2886 ], [ %2084, %2867 ]
  %2925 = phi float [ %2918, %2886 ], [ %2085, %2867 ]
  %2926 = phi float [ %2919, %2886 ], [ %2086, %2867 ]
  %2927 = phi float [ %2920, %2886 ], [ %2087, %2867 ]
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = and i32 %2929, 3
  %2931 = icmp eq i32 %2930, 3
  br i1 %2931, label %3010, label %2932

; <label>:2932                                    ; preds = %2921
  %2933 = and i32 %2929, 16
  %2934 = icmp ne i32 %2933, 0
  %2935 = select i1 %2934, float %2397, float 0.000000e+00
  %2936 = icmp eq i32 %2930, 0
  br i1 %2936, label %2937, label %2965

; <label>:2937                                    ; preds = %2932
  %2938 = and i32 %2929, 64
  %2939 = icmp ne i32 %2938, 0
  %2940 = select i1 %2939, float %2397, float 0.000000e+00
  %2941 = fsub fast float %2617, %2922
  %2942 = fsub fast float %2618, %2923
  %2943 = fsub fast float %2619, %2924
  %2944 = fmul fast float %2935, %2941
  %2945 = fmul fast float %2935, %2942
  %2946 = fmul fast float %2935, %2943
  %2947 = fadd fast float %2944, %2922
  %2948 = fadd fast float %2945, %2923
  %2949 = fadd fast float %2946, %2924
  %2950 = fsub fast float %2603, %2094
  %2951 = fmul fast float %2935, %2950
  %2952 = fadd fast float %2951, %2094
  %2953 = fsub fast float %2745, %2925
  %2954 = fsub fast float %2746, %2926
  %2955 = fsub fast float %2747, %2927
  %2956 = fmul fast float %2940, %2953
  %2957 = fmul fast float %2940, %2954
  %2958 = fmul fast float %2940, %2955
  %2959 = fadd fast float %2956, %2925
  %2960 = fadd fast float %2957, %2926
  %2961 = fadd fast float %2958, %2927
  %2962 = fsub fast float %2885, %2099
  %2963 = fmul fast float %2935, %2962
  %2964 = fadd fast float %2963, %2099
  br label %3010

; <label>:2965                                    ; preds = %2932
  %2966 = icmp eq i32 %2930, 1
  br i1 %2966, label %2967, label %2980

; <label>:2967                                    ; preds = %2965
  %2968 = fadd fast float %2617, -1.000000e+00
  %2969 = fadd fast float %2618, -1.000000e+00
  %2970 = fadd fast float %2619, -1.000000e+00
  %2971 = fmul fast float %2935, %2968
  %2972 = fmul fast float %2935, %2969
  %2973 = fmul fast float %2935, %2970
  %2974 = fadd fast float %2971, 1.000000e+00
  %2975 = fadd fast float %2972, 1.000000e+00
  %2976 = fadd fast float %2973, 1.000000e+00
  %2977 = fmul fast float %2974, %2922
  %2978 = fmul fast float %2975, %2923
  %2979 = fmul fast float %2976, %2924
  br label %3010

; <label>:2980                                    ; preds = %2965
  %2981 = icmp eq i32 %2930, 2
  br i1 %2981, label %2982, label %3010

; <label>:2982                                    ; preds = %2980
  %2983 = call float @dx.op.unary.f32(i32 24, float %2617)  ; Sqrt(value)
  %2984 = call float @dx.op.unary.f32(i32 24, float %2618)  ; Sqrt(value)
  %2985 = call float @dx.op.unary.f32(i32 24, float %2619)  ; Sqrt(value)
  %2986 = fadd fast float %2983, -5.000000e-01
  %2987 = fadd fast float %2984, -5.000000e-01
  %2988 = fadd fast float %2985, -5.000000e-01
  %2989 = fmul fast float %2986, %2935
  %2990 = fmul fast float %2987, %2935
  %2991 = fmul fast float %2988, %2935
  %2992 = fadd fast float %2989, 5.000000e-01
  %2993 = fadd fast float %2990, 5.000000e-01
  %2994 = fadd fast float %2991, 5.000000e-01
  %2995 = fmul fast float %2992, 2.000000e+00
  %2996 = fsub fast float 1.000000e+00, %2995
  %2997 = fmul fast float %2996, %2922
  %2998 = fadd fast float %2997, %2995
  %2999 = fmul fast float %2998, %2922
  %3000 = fmul fast float %2993, 2.000000e+00
  %3001 = fsub fast float 1.000000e+00, %3000
  %3002 = fmul fast float %3001, %2923
  %3003 = fadd fast float %3002, %3000
  %3004 = fmul fast float %3003, %2923
  %3005 = fmul fast float %2994, 2.000000e+00
  %3006 = fsub fast float 1.000000e+00, %3005
  %3007 = fmul fast float %3006, %2924
  %3008 = fadd fast float %3007, %3005
  %3009 = fmul fast float %3008, %2924
  br label %3010

; <label>:3010                                    ; preds = %2982, %2980, %2967, %2937, %2921
  %3011 = phi float [ %2922, %2921 ], [ %2999, %2982 ], [ %2922, %2980 ], [ %2977, %2967 ], [ %2947, %2937 ]
  %3012 = phi float [ %2923, %2921 ], [ %3004, %2982 ], [ %2923, %2980 ], [ %2978, %2967 ], [ %2948, %2937 ]
  %3013 = phi float [ %2924, %2921 ], [ %3009, %2982 ], [ %2924, %2980 ], [ %2979, %2967 ], [ %2949, %2937 ]
  %3014 = phi float [ %2925, %2921 ], [ %2925, %2982 ], [ %2925, %2980 ], [ %2925, %2967 ], [ %2959, %2937 ]
  %3015 = phi float [ %2926, %2921 ], [ %2926, %2982 ], [ %2926, %2980 ], [ %2926, %2967 ], [ %2960, %2937 ]
  %3016 = phi float [ %2927, %2921 ], [ %2927, %2982 ], [ %2927, %2980 ], [ %2927, %2967 ], [ %2961, %2937 ]
  %3017 = phi float [ %2094, %2921 ], [ %2094, %2982 ], [ %2094, %2980 ], [ %2094, %2967 ], [ %2952, %2937 ]
  %3018 = phi float [ %2099, %2921 ], [ %2099, %2982 ], [ %2099, %2980 ], [ %2099, %2967 ], [ %2964, %2937 ]
  %3019 = and i32 %2929, 12
  %3020 = icmp eq i32 %3019, 12
  br i1 %3020, label %3161, label %3021

; <label>:3021                                    ; preds = %3010
  %3022 = and i32 %2929, 2097184
  %3023 = icmp eq i32 %3022, 2097184
  %3024 = select i1 %3023, float %2397, float 0.000000e+00
  %3025 = and i32 %2929, 4194336
  %3026 = icmp eq i32 %3025, 4194336
  %3027 = select i1 %3026, float %2397, float 0.000000e+00
  %3028 = and i32 %2929, 8388640
  %3029 = icmp eq i32 %3028, 8388640
  %3030 = select i1 %3029, float %2397, float 0.000000e+00
  %3031 = and i32 %2929, 1024
  %3032 = icmp ne i32 %3031, 0
  %3033 = select i1 %3032, float %2397, float 0.000000e+00
  %3034 = and i32 %2929, 2048
  %3035 = icmp ne i32 %3034, 0
  %3036 = select i1 %3035, float %2397, float 0.000000e+00
  %3037 = and i32 %2929, 8192
  %3038 = icmp ne i32 %3037, 0
  %3039 = select i1 %3038, float %2397, float 0.000000e+00
  %3040 = and i32 %2929, 16384
  %3041 = icmp ne i32 %3040, 0
  %3042 = select i1 %3041, float %2397, float 0.000000e+00
  %3043 = icmp eq i32 %3019, 0
  br i1 %3043, label %3044, label %3081

; <label>:3044                                    ; preds = %3021
  %3045 = fsub fast float %2698, %2080
  %3046 = fsub fast float %2699, %2081
  %3047 = fmul fast float %3024, %3045
  %3048 = fmul fast float %3024, %3046
  %3049 = fadd fast float %3047, %2080
  %3050 = fadd fast float %3048, %2081
  %3051 = fsub fast float %2700, %2096
  %3052 = fmul fast float %3027, %3051
  %3053 = fadd fast float %3052, %2096
  %3054 = fsub fast float %2697, %2095
  %3055 = fmul fast float %3030, %3054
  %3056 = fadd fast float %3055, %2095
  %3057 = fsub fast float %2803, %2091
  %3058 = fsub fast float %2804, %2092
  %3059 = fsub fast float %2805, %2093
  %3060 = fmul fast float %3033, %3057
  %3061 = fmul fast float %3033, %3058
  %3062 = fmul fast float %3033, %3059
  %3063 = fadd fast float %3060, %2091
  %3064 = fadd fast float %3061, %2092
  %3065 = fadd fast float %3062, %2093
  %3066 = fsub fast float %2871, %2097
  %3067 = fmul fast float %3036, %3066
  %3068 = fadd fast float %3067, %2097
  %3069 = fsub fast float %2868, %2088
  %3070 = fsub fast float %2869, %2089
  %3071 = fsub fast float %2870, %2090
  %3072 = fmul fast float %3039, %3069
  %3073 = fmul fast float %3039, %3070
  %3074 = fmul fast float %3039, %3071
  %3075 = fadd fast float %3072, %2088
  %3076 = fadd fast float %3073, %2089
  %3077 = fadd fast float %3074, %2090
  %3078 = fsub fast float %2872, %2098
  %3079 = fmul fast float %3042, %3078
  %3080 = fadd fast float %3079, %2098
  br label %3161

; <label>:3081                                    ; preds = %3021
  %3082 = icmp eq i32 %3019, 4
  br i1 %3082, label %3083, label %3131

; <label>:3083                                    ; preds = %3081
  %3084 = fmul fast float %3024, %2698
  %3085 = fmul fast float %3024, %2699
  %3086 = fadd fast float %3084, %2080
  %3087 = fadd fast float %3085, %2081
  %3088 = call float @dx.op.binary.f32(i32 36, float %2096, float %2700)  ; FMin(a,b)
  %3089 = fsub fast float %3088, %2096
  %3090 = fmul fast float %3089, %3027
  %3091 = fadd fast float %3090, %2096
  %3092 = fadd fast float %2697, %2095
  %3093 = fmul fast float %3092, 0x3FF337FAE0000000
  %3094 = fmul fast float %2095, %2095
  %3095 = fmul fast float %2697, %2697
  %3096 = fadd fast float %3095, %3094
  %3097 = fmul fast float %3096, 0x3FE5152B00000000
  %3098 = fmul fast float %2095, 0xBFCC1F85E0000000
  %3099 = fmul fast float %3098, %2697
  %3100 = fadd fast float %3099, 0xBFE1363700000000
  %3101 = fadd fast float %3100, %3093
  %3102 = fsub fast float %3101, %3097
  %3103 = fmul fast float %3092, 0x3FBA6F0D00000000
  %3104 = fmul fast float %3096, 0x3FD0432880000000
  %3105 = fmul fast float %2095, 0xBFEF110800000000
  %3106 = fmul fast float %3105, %2697
  %3107 = fadd fast float %3106, 1.000000e+00
  %3108 = fsub fast float %3107, %3103
  %3109 = fadd fast float %3108, %3104
  %3110 = fdiv fast float %3102, %3109
  %3111 = call float @dx.op.unary.f32(i32 7, float %3110)  ; Saturate(value)
  %3112 = fsub fast float %3111, %2095
  %3113 = fmul fast float %3112, %3030
  %3114 = fadd fast float %3113, %2095
  %3115 = fmul fast float %3033, %2803
  %3116 = fmul fast float %3033, %2804
  %3117 = fmul fast float %3033, %2805
  %3118 = fadd fast float %3115, %2091
  %3119 = fadd fast float %3116, %2092
  %3120 = fadd fast float %3117, %2093
  %3121 = fmul fast float %3036, %2871
  %3122 = fadd fast float %3121, %2097
  %3123 = fmul fast float %3039, %2868
  %3124 = fmul fast float %3039, %2869
  %3125 = fmul fast float %3039, %2870
  %3126 = fadd fast float %3123, %2088
  %3127 = fadd fast float %3124, %2089
  %3128 = fadd fast float %3125, %2090
  %3129 = fmul fast float %3042, %2872
  %3130 = fadd fast float %3129, %2098
  br label %3161

; <label>:3131                                    ; preds = %3081
  %3132 = icmp eq i32 %3019, 8
  br i1 %3132, label %3133, label %3161

; <label>:3133                                    ; preds = %3131
  %3134 = fmul fast float %3024, %2698
  %3135 = fmul fast float %3024, %2699
  %3136 = fadd fast float %3134, %2080
  %3137 = fadd fast float %3135, %2081
  %3138 = call float @dx.op.binary.f32(i32 36, float %2096, float %2700)  ; FMin(a,b)
  %3139 = fsub fast float %3138, %2096
  %3140 = fmul fast float %3139, %3027
  %3141 = fadd fast float %3140, %2096
  %3142 = fsub fast float %2697, %2095
  %3143 = fmul fast float %3030, %3142
  %3144 = fadd fast float %3143, %2095
  %3145 = fmul fast float %3033, %2803
  %3146 = fmul fast float %3033, %2804
  %3147 = fmul fast float %3033, %2805
  %3148 = fadd fast float %3145, %2091
  %3149 = fadd fast float %3146, %2092
  %3150 = fadd fast float %3147, %2093
  %3151 = fmul fast float %3036, %2871
  %3152 = fadd fast float %3151, %2097
  %3153 = fmul fast float %3039, %2868
  %3154 = fmul fast float %3039, %2869
  %3155 = fmul fast float %3039, %2870
  %3156 = fadd fast float %3153, %2088
  %3157 = fadd fast float %3154, %2089
  %3158 = fadd fast float %3155, %2090
  %3159 = fmul fast float %3042, %2872
  %3160 = fadd fast float %3159, %2098
  br label %3161

; <label>:3161                                    ; preds = %3133, %3131, %3083, %3044, %3010, %2396, %2100, %2079
  %3162 = phi float [ %2080, %3010 ], [ %2080, %2396 ], [ %2080, %2079 ], [ %3136, %3133 ], [ %2080, %3131 ], [ %3086, %3083 ], [ %3049, %3044 ], [ %2080, %2100 ]
  %3163 = phi float [ %2081, %3010 ], [ %2081, %2396 ], [ %2081, %2079 ], [ %3137, %3133 ], [ %2081, %3131 ], [ %3087, %3083 ], [ %3050, %3044 ], [ %2081, %2100 ]
  %3164 = phi float [ %3011, %3010 ], [ %2082, %2396 ], [ %2082, %2079 ], [ %3011, %3133 ], [ %3011, %3131 ], [ %3011, %3083 ], [ %3011, %3044 ], [ %2082, %2100 ]
  %3165 = phi float [ %3012, %3010 ], [ %2083, %2396 ], [ %2083, %2079 ], [ %3012, %3133 ], [ %3012, %3131 ], [ %3012, %3083 ], [ %3012, %3044 ], [ %2083, %2100 ]
  %3166 = phi float [ %3013, %3010 ], [ %2084, %2396 ], [ %2084, %2079 ], [ %3013, %3133 ], [ %3013, %3131 ], [ %3013, %3083 ], [ %3013, %3044 ], [ %2084, %2100 ]
  %3167 = phi float [ %3014, %3010 ], [ %2085, %2396 ], [ %2085, %2079 ], [ %3014, %3133 ], [ %3014, %3131 ], [ %3014, %3083 ], [ %3014, %3044 ], [ %2085, %2100 ]
  %3168 = phi float [ %3015, %3010 ], [ %2086, %2396 ], [ %2086, %2079 ], [ %3015, %3133 ], [ %3015, %3131 ], [ %3015, %3083 ], [ %3015, %3044 ], [ %2086, %2100 ]
  %3169 = phi float [ %3016, %3010 ], [ %2087, %2396 ], [ %2087, %2079 ], [ %3016, %3133 ], [ %3016, %3131 ], [ %3016, %3083 ], [ %3016, %3044 ], [ %2087, %2100 ]
  %3170 = phi float [ %2088, %3010 ], [ %2088, %2396 ], [ %2088, %2079 ], [ %3156, %3133 ], [ %2088, %3131 ], [ %3126, %3083 ], [ %3075, %3044 ], [ %2088, %2100 ]
  %3171 = phi float [ %2089, %3010 ], [ %2089, %2396 ], [ %2089, %2079 ], [ %3157, %3133 ], [ %2089, %3131 ], [ %3127, %3083 ], [ %3076, %3044 ], [ %2089, %2100 ]
  %3172 = phi float [ %2090, %3010 ], [ %2090, %2396 ], [ %2090, %2079 ], [ %3158, %3133 ], [ %2090, %3131 ], [ %3128, %3083 ], [ %3077, %3044 ], [ %2090, %2100 ]
  %3173 = phi float [ %2091, %3010 ], [ %2091, %2396 ], [ %2091, %2079 ], [ %3148, %3133 ], [ %2091, %3131 ], [ %3118, %3083 ], [ %3063, %3044 ], [ %2091, %2100 ]
  %3174 = phi float [ %2092, %3010 ], [ %2092, %2396 ], [ %2092, %2079 ], [ %3149, %3133 ], [ %2092, %3131 ], [ %3119, %3083 ], [ %3064, %3044 ], [ %2092, %2100 ]
  %3175 = phi float [ %2093, %3010 ], [ %2093, %2396 ], [ %2093, %2079 ], [ %3150, %3133 ], [ %2093, %3131 ], [ %3120, %3083 ], [ %3065, %3044 ], [ %2093, %2100 ]
  %3176 = phi float [ %3017, %3010 ], [ %2094, %2396 ], [ %2094, %2079 ], [ %3017, %3133 ], [ %3017, %3131 ], [ %3017, %3083 ], [ %3017, %3044 ], [ %2094, %2100 ]
  %3177 = phi float [ %2095, %3010 ], [ %2095, %2396 ], [ %2095, %2079 ], [ %3144, %3133 ], [ %2095, %3131 ], [ %3114, %3083 ], [ %3056, %3044 ], [ %2095, %2100 ]
  %3178 = phi float [ %2096, %3010 ], [ %2096, %2396 ], [ %2096, %2079 ], [ %3141, %3133 ], [ %2096, %3131 ], [ %3091, %3083 ], [ %3053, %3044 ], [ %2096, %2100 ]
  %3179 = phi float [ %2097, %3010 ], [ %2097, %2396 ], [ %2097, %2079 ], [ %3152, %3133 ], [ %2097, %3131 ], [ %3122, %3083 ], [ %3068, %3044 ], [ %2097, %2100 ]
  %3180 = phi float [ %2098, %3010 ], [ %2098, %2396 ], [ %2098, %2079 ], [ %3160, %3133 ], [ %2098, %3131 ], [ %3130, %3083 ], [ %3080, %3044 ], [ %2098, %2100 ]
  %3181 = phi float [ %3018, %3010 ], [ %2099, %2396 ], [ %2099, %2079 ], [ %3018, %3133 ], [ %3018, %3131 ], [ %3018, %3083 ], [ %3018, %3044 ], [ %2099, %2100 ]
  br i1 %353, label %4243, label %3182

; <label>:3182                                    ; preds = %3161
  %3183 = icmp ult i32 %404, 4
  %3184 = add i32 %35, 72
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = add i32 %35, 76
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = or i32 %3189, %3186
  %3191 = icmp eq i32 %3190, 0
  br i1 %3191, label %4243, label %3192

; <label>:3192                                    ; preds = %3182
  %3193 = and i32 %3186, 262144
  %3194 = icmp ne i32 %3193, 0
  %3195 = select i1 %3194, float %38, float 1.000000e+00
  %3196 = select i1 %3194, float %39, float 0.000000e+00
  %3197 = select i1 %3194, float %40, float 0.000000e+00
  %3198 = select i1 %3194, float %41, float 1.000000e+00
  %3199 = select i1 %3194, float %42, float %63
  %3200 = select i1 %3194, float %43, float %64
  %3201 = add i32 %35, 332
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = lshr i32 %3203, 16
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = fmul fast float %3205, 0x3F50624DE0000000
  %3207 = add i32 %35, 136
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = lshr i32 %3209, 16
  %3211 = and i32 %3210, 255
  %3212 = lshr i32 %3209, 24
  %3213 = add i32 %35, 340
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = and i32 %3215, 65535
  %3217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3216)  ; LegacyF16ToF32(value)
  %3218 = lshr i32 %3215, 16
  %3219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3218)  ; LegacyF16ToF32(value)
  %3220 = add i32 %35, 80
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = lshr i32 %3222, 22
  %3224 = shl nuw nsw i32 %3223, 5
  %3225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3224)  ; LegacyF16ToF32(value)
  %3226 = shl i32 %3222, 4
  %3227 = and i32 %3226, 32752
  %3228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3227)  ; LegacyF16ToF32(value)
  %3229 = lshr i32 %3222, 7
  %3230 = and i32 %3229, 32752
  %3231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3230)  ; LegacyF16ToF32(value)
  %3232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3233 = extractvalue %dx.types.CBufRet.f32 %3232, 3
  %3234 = fmul fast float %3233, 1.000000e+03
  %3235 = fmul fast float %343, %3234
  %3236 = call float @dx.op.unary.f32(i32 22, float %3235)  ; Frc(value)
  %3237 = fadd fast float %3236, %333
  %3238 = fmul fast float %344, %3234
  %3239 = call float @dx.op.unary.f32(i32 22, float %3238)  ; Frc(value)
  %3240 = fadd fast float %3239, %335
  %3241 = fmul fast float %3206, %3234
  %3242 = call float @dx.op.unary.f32(i32 22, float %3241)  ; Frc(value)
  %3243 = fmul fast float %3242, 0x401921FB60000000
  %3244 = fadd fast float %3243, %3225
  %3245 = call float @dx.op.unary.f32(i32 13, float %3244)  ; Sin(value)
  %3246 = call float @dx.op.unary.f32(i32 12, float %3244)  ; Cos(value)
  %3247 = fsub fast float -0.000000e+00, %3245
  %3248 = fadd fast float %3199, -5.000000e-01
  %3249 = fadd fast float %3200, -5.000000e-01
  %3250 = fmul fast float %3217, %3248
  %3251 = fmul fast float %3219, %3249
  %3252 = fadd fast float %3250, 5.000000e-01
  %3253 = fadd fast float %3251, 5.000000e-01
  %3254 = fmul fast float %3228, %3252
  %3255 = fmul fast float %3231, %3253
  %3256 = fmul fast float %3246, %3254
  %3257 = call float @dx.op.tertiary.f32(i32 46, float %3247, float %3255, float %3256)  ; FMad(a,b,c)
  %3258 = fmul fast float %3245, %3254
  %3259 = call float @dx.op.tertiary.f32(i32 46, float %3246, float %3255, float %3258)  ; FMad(a,b,c)
  %3260 = fadd fast float %3237, %3257
  %3261 = fadd fast float %3240, %3259
  %3262 = icmp ugt i32 %3211, 1
  %3263 = icmp ugt i32 %3209, 33554431
  %3264 = or i1 %3263, %3262
  br i1 %3264, label %3265, label %3290

; <label>:3265                                    ; preds = %3192
  %3266 = add i32 %35, 276
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = lshr i32 %3268, 16
  %3270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3269)  ; LegacyF16ToF32(value)
  %3271 = fmul fast float %3233, %3270
  %3272 = call float @dx.op.unary.f32(i32 22, float %3271)  ; Frc(value)
  %3273 = mul nuw nsw i32 %3211, %3212
  %3274 = uitofp i32 %3273 to float
  %3275 = fmul fast float %3272, %3274
  %3276 = call float @dx.op.unary.f32(i32 27, float %3275)  ; Round_ni(value)
  %3277 = fptoui float %3276 to i32
  %3278 = urem i32 %3277, %3211
  %3279 = udiv i32 %3277, %3212
  %3280 = call float @dx.op.unary.f32(i32 22, float %3260)  ; Frc(value)
  %3281 = call float @dx.op.unary.f32(i32 22, float %3261)  ; Frc(value)
  %3282 = uitofp i32 %3278 to float
  %3283 = uitofp i32 %3279 to float
  %3284 = fadd fast float %3280, %3282
  %3285 = fadd fast float %3281, %3283
  %3286 = uitofp i32 %3211 to float
  %3287 = uitofp i32 %3212 to float
  %3288 = fdiv fast float %3284, %3286
  %3289 = fdiv fast float %3285, %3287
  br label %3290

; <label>:3290                                    ; preds = %3265, %3192
  %3291 = phi float [ %3288, %3265 ], [ %3260, %3192 ]
  %3292 = phi float [ %3289, %3265 ], [ %3261, %3192 ]
  %3293 = and i32 %3186, 16777216
  %3294 = icmp eq i32 %3293, 0
  br i1 %3294, label %3404, label %3295

; <label>:3295                                    ; preds = %3290
  %3296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.CBufRet.f32 %3296, 1
  %3299 = extractvalue %dx.types.CBufRet.f32 %3296, 2
  %3300 = fadd fast float %3297, %134
  %3301 = fadd fast float %3298, %135
  %3302 = fadd fast float %3299, %136
  %3303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3304 = extractvalue %dx.types.CBufRet.f32 %3303, 0
  %3305 = call float @dx.op.unary.f32(i32 7, float %3304)  ; Saturate(value)
  %3306 = icmp eq i32 %36, 65535
  br i1 %3306, label %3401, label %3307

; <label>:3307                                    ; preds = %3295
  %3308 = lshr i32 %36, 1
  %3309 = shl i32 %3308, 2
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %36, 1
  %3313 = icmp ne i32 %3312, 0
  %3314 = lshr i32 %3311, 16
  %3315 = and i32 %3311, 65535
  %3316 = select i1 %3313, i32 %3314, i32 %3315
  %3317 = icmp eq i32 %3316, 65535
  br i1 %3317, label %3397, label %3318

; <label>:3318                                    ; preds = %3307
  %3319 = mul nuw nsw i32 %3316, 40
  %3320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3319, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.f32 %3320, 0
  %3322 = extractvalue %dx.types.ResRet.f32 %3320, 1
  %3323 = extractvalue %dx.types.ResRet.f32 %3320, 2
  %3324 = add nuw nsw i32 %3319, 12
  %3325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.f32 %3325, 0
  %3327 = extractvalue %dx.types.ResRet.f32 %3325, 1
  %3328 = extractvalue %dx.types.ResRet.f32 %3325, 2
  %3329 = add nuw nsw i32 %3319, 24
  %3330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.f32 %3330, 0
  %3332 = extractvalue %dx.types.ResRet.f32 %3330, 1
  %3333 = extractvalue %dx.types.ResRet.f32 %3330, 2
  %3334 = add nuw nsw i32 %3319, 36
  %3335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.f32 %3335, 0
  %3337 = fsub fast float %3300, %3321
  %3338 = fsub fast float %3301, %3322
  %3339 = fsub fast float %3302, %3323
  %3340 = fmul fast float %3336, %3337
  %3341 = fmul fast float %3336, %3338
  %3342 = fmul fast float %3336, %3339
  %3343 = call float @dx.op.unary.f32(i32 27, float %3340)  ; Round_ni(value)
  %3344 = call float @dx.op.unary.f32(i32 27, float %3341)  ; Round_ni(value)
  %3345 = call float @dx.op.unary.f32(i32 27, float %3342)  ; Round_ni(value)
  %3346 = fadd fast float %3343, 5.000000e-01
  %3347 = fadd fast float %3344, 5.000000e-01
  %3348 = fadd fast float %3345, 5.000000e-01
  %3349 = fmul fast float %3346, %3326
  %3350 = fmul fast float %3347, %3327
  %3351 = fmul fast float %3348, %3328
  %3352 = shl i32 %36, 2
  %3353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3354 = extractvalue %dx.types.ResRet.i32 %3353, 0
  %3355 = add i32 %3354, 0
  %3356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3357 = call float @dx.op.unary.f32(i32 22, float %3349)  ; Frc(value)
  %3358 = call float @dx.op.unary.f32(i32 22, float %3350)  ; Frc(value)
  %3359 = call float @dx.op.unary.f32(i32 22, float %3351)  ; Frc(value)
  %3360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3356, %dx.types.Handle %30, float %3357, float %3358, float %3359, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3361 = extractvalue %dx.types.ResRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.ResRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.ResRet.f32 %3360, 2
  %3364 = fmul fast float %3361, 1.023000e+03
  %3365 = fmul fast float %3362, 1.023000e+03
  %3366 = fmul fast float %3363, 1.023000e+03
  %3367 = fadd fast float %3364, 5.000000e-01
  %3368 = fadd fast float %3365, 5.000000e-01
  %3369 = fadd fast float %3366, 5.000000e-01
  %3370 = call float @dx.op.unary.f32(i32 27, float %3367)  ; Round_ni(value)
  %3371 = call float @dx.op.unary.f32(i32 27, float %3368)  ; Round_ni(value)
  %3372 = call float @dx.op.unary.f32(i32 27, float %3369)  ; Round_ni(value)
  %3373 = fsub fast float %3340, %3343
  %3374 = fsub fast float %3341, %3344
  %3375 = fsub fast float %3342, %3345
  %3376 = fmul fast float %3373, 7.500000e-01
  %3377 = fmul fast float %3374, 7.500000e-01
  %3378 = fmul fast float %3375, 7.500000e-01
  %3379 = fadd fast float %3343, 1.250000e-01
  %3380 = fadd fast float %3379, %3376
  %3381 = fadd fast float %3380, %3370
  %3382 = fadd fast float %3344, 1.250000e-01
  %3383 = fadd fast float %3382, %3377
  %3384 = fadd fast float %3383, %3371
  %3385 = fadd fast float %3345, 1.250000e-01
  %3386 = fadd fast float %3385, %3378
  %3387 = fadd fast float %3386, %3372
  %3388 = fmul fast float %3381, %3331
  %3389 = fmul fast float %3384, %3332
  %3390 = fmul fast float %3387, %3333
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3352, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = add i32 %3392, 0
  %3394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3393, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3394, %dx.types.Handle %28, float %3388, float %3389, float %3390, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3396 = extractvalue %dx.types.ResRet.f32 %3395, 0
  br label %3397

; <label>:3397                                    ; preds = %3318, %3307
  %3398 = phi float [ %3396, %3318 ], [ -1.000000e+00, %3307 ]
  %3399 = fadd fast float %3398, %3305
  %3400 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  br label %3401

; <label>:3401                                    ; preds = %3397, %3295
  %3402 = phi float [ %3400, %3397 ], [ %3305, %3295 ]
  %3403 = fmul fast float %3402, %399
  br label %3404

; <label>:3404                                    ; preds = %3401, %3290
  %3405 = phi float [ %3403, %3401 ], [ %399, %3290 ]
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = and i32 %3407, 256
  %3409 = icmp eq i32 %3408, 0
  br i1 %3409, label %3456, label %3410

; <label>:3410                                    ; preds = %3404
  %3411 = add i32 %35, 436
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %3413, 0
  %3415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3415, %dx.types.Handle %72, float %3291, float %3292, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3417 = extractvalue %dx.types.ResRet.f32 %3416, 0
  %3418 = add i32 %35, 148
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3418, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = shl i32 %3420, 4
  %3422 = and i32 %3421, 32752
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = lshr i32 %3420, 7
  %3425 = and i32 %3424, 32752
  %3426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3425)  ; LegacyF16ToF32(value)
  %3427 = fsub fast float 1.000000e+00, %3405
  %3428 = call float @dx.op.binary.f32(i32 35, float %3427, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3429 = bitcast float %3405 to i32
  %3430 = sitofp i32 %3429 to float
  %3431 = fadd fast float %3430, 0xC1CFBF8940000000
  %3432 = fmul fast float %3426, %3431
  %3433 = fadd fast float %3432, 0x41CFBF8940000000
  %3434 = fptosi float %3433 to i32
  %3435 = bitcast i32 %3434 to float
  %3436 = bitcast float %3428 to i32
  %3437 = sitofp i32 %3436 to float
  %3438 = fadd fast float %3437, 0xC1CFBF8940000000
  %3439 = fmul fast float %3438, %3426
  %3440 = fadd fast float %3439, 0x41CFBF8940000000
  %3441 = fptosi float %3440 to i32
  %3442 = bitcast i32 %3441 to float
  %3443 = fmul fast float %3435, %3423
  %3444 = fmul fast float %3442, %3423
  %3445 = fsub fast float %3428, %3443
  %3446 = fadd fast float %3444, %3428
  %3447 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  %3448 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3449 = fsub fast float %3417, %3447
  %3450 = fsub fast float %3448, %3447
  %3451 = bitcast float %3450 to i32
  %3452 = sub nsw i32 2129859010, %3451
  %3453 = bitcast i32 %3452 to float
  %3454 = fmul fast float %3453, %3449
  %3455 = call float @dx.op.unary.f32(i32 7, float %3454)  ; Saturate(value)
  br label %3456

; <label>:3456                                    ; preds = %3410, %3404
  %3457 = phi float [ %3455, %3410 ], [ %3405, %3404 ]
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = and i32 %3459, 128
  %3461 = icmp eq i32 %3460, 0
  br i1 %3461, label %3478, label %3462

; <label>:3462                                    ; preds = %3456
  %3463 = add i32 %35, 420
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = add i32 %3465, 0
  %3467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3467, %dx.types.Handle %72, float %3291, float %3292, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = and i32 %3471, 524288
  %3473 = icmp ne i32 %3472, 0
  %3474 = fcmp fast ogt float %3469, 0x3FE0101020000000
  %3475 = select i1 %3474, float 1.000000e+00, float 0.000000e+00
  %3476 = select i1 %3473, float %3475, float %3469
  %3477 = fmul fast float %3476, %3457
  br label %3478

; <label>:3478                                    ; preds = %3462, %3456
  %3479 = phi float [ %3477, %3462 ], [ %3457, %3456 ]
  %3480 = fcmp fast ult float %3479, 0x3F70101020000000
  br i1 %3480, label %4243, label %3481

; <label>:3481                                    ; preds = %3478
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = and i32 %3483, 16
  %3485 = icmp eq i32 %3484, 0
  br i1 %3485, label %3684, label %3486

; <label>:3486                                    ; preds = %3481
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = add i32 %35, 372
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = add i32 %3491, 0
  %3493 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3492, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3493, %dx.types.Handle %71, float %3291, float %3292, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.f32 %3494, 1
  %3497 = extractvalue %dx.types.ResRet.f32 %3494, 2
  %3498 = extractvalue %dx.types.ResRet.f32 %3494, 3
  %3499 = and i32 %3488, 255
  %3500 = uitofp i32 %3499 to float
  %3501 = lshr i32 %3488, 8
  %3502 = and i32 %3501, 255
  %3503 = uitofp i32 %3502 to float
  %3504 = fmul fast float %3498, %3500
  %3505 = fadd fast float %3504, %3503
  %3506 = fmul fast float %3505, 0x3F70101000000000
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = and i32 %3508, 512
  %3510 = icmp eq i32 %3509, 0
  br i1 %3510, label %3519, label %3511

; <label>:3511                                    ; preds = %3486
  %3512 = add i32 %35, 452
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = add i32 %3514, 0
  %3516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3515, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3517 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3516, %dx.types.Handle %72, float %3291, float %3292, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3518 = extractvalue %dx.types.ResRet.f32 %3517, 0
  br label %3519

; <label>:3519                                    ; preds = %3511, %3486
  %3520 = phi float [ %3518, %3511 ], [ 1.000000e+00, %3486 ]
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 33554432
  %3524 = icmp eq i32 %3523, 0
  br i1 %3524, label %3631, label %3525

; <label>:3525                                    ; preds = %3519
  %3526 = add i32 %35, 272
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 65535
  %3530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3529)  ; LegacyF16ToF32(value)
  %3531 = lshr i32 %3528, 16
  %3532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3531)  ; LegacyF16ToF32(value)
  %3533 = add i32 %35, 276
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = and i32 %3535, 65535
  %3537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3536)  ; LegacyF16ToF32(value)
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = lshr i32 %3539, 24
  %3541 = uitofp i32 %3540 to float
  %3542 = fmul fast float %3541, 0x3F70101020000000
  %3543 = and i32 %3539, 255
  %3544 = uitofp i32 %3543 to float
  %3545 = fmul fast float %3544, 0x3F70101020000000
  %3546 = lshr i32 %3539, 8
  %3547 = and i32 %3546, 255
  %3548 = uitofp i32 %3547 to float
  %3549 = fmul fast float %3548, 0x3F70101020000000
  %3550 = lshr i32 %3539, 16
  %3551 = and i32 %3550, 255
  %3552 = uitofp i32 %3551 to float
  %3553 = fmul fast float %3552, 0x3F70101020000000
  %3554 = add i32 %35, 268
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = lshr i32 %3556, 24
  %3558 = uitofp i32 %3557 to float
  %3559 = fmul fast float %3558, 0x3F70101020000000
  %3560 = and i32 %3556, 255
  %3561 = uitofp i32 %3560 to float
  %3562 = fmul fast float %3561, 0x3F70101020000000
  %3563 = lshr i32 %3556, 8
  %3564 = and i32 %3563, 255
  %3565 = uitofp i32 %3564 to float
  %3566 = fmul fast float %3565, 0x3F70101020000000
  %3567 = lshr i32 %3556, 16
  %3568 = and i32 %3567, 255
  %3569 = uitofp i32 %3568 to float
  %3570 = fmul fast float %3569, 0x3F70101020000000
  %3571 = bitcast float %3495 to i32
  %3572 = ashr i32 %3571, 1
  %3573 = sub nsw i32 1597463174, %3572
  %3574 = bitcast i32 %3573 to float
  %3575 = fmul fast float %3495, 5.000000e-01
  %3576 = fmul fast float %3574, %3574
  %3577 = fmul fast float %3576, %3575
  %3578 = fsub fast float 1.500000e+00, %3577
  %3579 = fmul fast float %3574, %3495
  %3580 = fmul fast float %3579, %3578
  %3581 = bitcast float %3496 to i32
  %3582 = ashr i32 %3581, 1
  %3583 = sub nsw i32 1597463174, %3582
  %3584 = bitcast i32 %3583 to float
  %3585 = fmul fast float %3496, 5.000000e-01
  %3586 = fmul fast float %3584, %3584
  %3587 = fmul fast float %3586, %3585
  %3588 = fsub fast float 1.500000e+00, %3587
  %3589 = fmul fast float %3584, %3496
  %3590 = fmul fast float %3589, %3588
  %3591 = bitcast float %3497 to i32
  %3592 = ashr i32 %3591, 1
  %3593 = sub nsw i32 1597463174, %3592
  %3594 = bitcast i32 %3593 to float
  %3595 = fmul fast float %3497, 5.000000e-01
  %3596 = fmul fast float %3594, %3594
  %3597 = fmul fast float %3596, %3595
  %3598 = fsub fast float 1.500000e+00, %3597
  %3599 = fmul fast float %3594, %3497
  %3600 = fmul fast float %3599, %3598
  %3601 = fsub fast float %3580, %3562
  %3602 = fsub fast float %3590, %3566
  %3603 = fsub fast float %3600, %3570
  %3604 = fmul fast float %3601, %3530
  %3605 = fmul fast float %3602, %3532
  %3606 = fmul fast float %3603, %3537
  %3607 = fadd fast float %3604, %3545
  %3608 = fadd fast float %3605, %3549
  %3609 = fadd fast float %3606, %3553
  %3610 = call float @dx.op.unary.f32(i32 7, float %3607)  ; Saturate(value)
  %3611 = call float @dx.op.unary.f32(i32 7, float %3608)  ; Saturate(value)
  %3612 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3613 = fmul fast float %3610, %3610
  %3614 = fmul fast float %3611, %3611
  %3615 = fmul fast float %3612, %3612
  %3616 = fsub fast float %3613, %3495
  %3617 = fsub fast float %3614, %3496
  %3618 = fsub fast float %3615, %3497
  %3619 = fmul fast float %3616, %3520
  %3620 = fmul fast float %3617, %3520
  %3621 = fmul fast float %3618, %3520
  %3622 = fadd fast float %3619, %3495
  %3623 = fadd fast float %3620, %3496
  %3624 = fadd fast float %3621, %3497
  %3625 = fadd fast float %3542, %3506
  %3626 = fsub fast float %3625, %3559
  %3627 = call float @dx.op.unary.f32(i32 7, float %3626)  ; Saturate(value)
  %3628 = fsub fast float %3627, %3506
  %3629 = fmul fast float %3628, %3520
  %3630 = fadd fast float %3629, %3506
  br label %3684

; <label>:3631                                    ; preds = %3519
  %3632 = and i32 %3522, 134217728
  %3633 = icmp eq i32 %3632, 0
  br i1 %3633, label %3668, label %3634

; <label>:3634                                    ; preds = %3631
  %3635 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3636 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3637 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3638 = fadd fast float %3635, -5.000000e-01
  %3639 = fadd fast float %3636, -5.000000e-01
  %3640 = fadd fast float %3637, -5.000000e-01
  %3641 = fmul fast float %3638, %3520
  %3642 = fmul fast float %3639, %3520
  %3643 = fmul fast float %3640, %3520
  %3644 = fadd fast float %3641, 5.000000e-01
  %3645 = fadd fast float %3642, 5.000000e-01
  %3646 = fadd fast float %3643, 5.000000e-01
  %3647 = call float @dx.op.unary.f32(i32 24, float %3495)  ; Sqrt(value)
  %3648 = call float @dx.op.unary.f32(i32 24, float %3496)  ; Sqrt(value)
  %3649 = call float @dx.op.unary.f32(i32 24, float %3497)  ; Sqrt(value)
  %3650 = fmul fast float %3644, 2.000000e+00
  %3651 = fsub fast float 1.000000e+00, %3650
  %3652 = fmul fast float %3651, %3647
  %3653 = fadd fast float %3652, %3650
  %3654 = fmul fast float %3653, %3647
  %3655 = fmul fast float %3645, 2.000000e+00
  %3656 = fsub fast float 1.000000e+00, %3655
  %3657 = fmul fast float %3656, %3648
  %3658 = fadd fast float %3657, %3655
  %3659 = fmul fast float %3658, %3648
  %3660 = fmul fast float %3646, 2.000000e+00
  %3661 = fsub fast float 1.000000e+00, %3660
  %3662 = fmul fast float %3661, %3649
  %3663 = fadd fast float %3662, %3660
  %3664 = fmul fast float %3663, %3649
  %3665 = fmul fast float %3654, %3654
  %3666 = fmul fast float %3659, %3659
  %3667 = fmul fast float %3664, %3664
  br label %3684

; <label>:3668                                    ; preds = %3631
  %3669 = fmul fast float %320, %320
  %3670 = fmul fast float %324, %324
  %3671 = fmul fast float %328, %328
  %3672 = fadd fast float %3669, -1.000000e+00
  %3673 = fadd fast float %3670, -1.000000e+00
  %3674 = fadd fast float %3671, -1.000000e+00
  %3675 = fmul fast float %3520, %3672
  %3676 = fmul fast float %3520, %3673
  %3677 = fmul fast float %3520, %3674
  %3678 = fadd fast float %3675, 1.000000e+00
  %3679 = fadd fast float %3676, 1.000000e+00
  %3680 = fadd fast float %3677, 1.000000e+00
  %3681 = fmul fast float %3678, %3495
  %3682 = fmul fast float %3679, %3496
  %3683 = fmul fast float %3680, %3497
  br label %3684

; <label>:3684                                    ; preds = %3668, %3634, %3525, %3481
  %3685 = phi float [ %3630, %3525 ], [ %3506, %3634 ], [ %3506, %3668 ], [ 0x3FA23C0BE0000000, %3481 ]
  %3686 = phi float [ %3622, %3525 ], [ %3665, %3634 ], [ %3681, %3668 ], [ 1.000000e+00, %3481 ]
  %3687 = phi float [ %3623, %3525 ], [ %3666, %3634 ], [ %3682, %3668 ], [ 1.000000e+00, %3481 ]
  %3688 = phi float [ %3624, %3525 ], [ %3667, %3634 ], [ %3683, %3668 ], [ 1.000000e+00, %3481 ]
  %3689 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.i32 %3689, 1
  %3691 = and i32 %3690, 1
  %3692 = icmp ne i32 %3691, 0
  %3693 = add i32 %35, 356
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = and i32 %3695, 32
  %3697 = icmp ne i32 %3696, 0
  %3698 = and i1 %3692, %3697
  %3699 = select i1 %3698, float 1.000000e+00, float %3686
  %3700 = select i1 %3698, float 0x3FD3333340000000, float %3687
  %3701 = select i1 %3698, float 0x3FD3333340000000, float %3688
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = and i32 %3703, 32
  %3705 = icmp eq i32 %3704, 0
  br i1 %3705, label %3778, label %3706

; <label>:3706                                    ; preds = %3684
  %3707 = add i32 %35, 140
  %3708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.i32 %3708, 0
  %3710 = add i32 %35, 388
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = add i32 %3712, 0
  %3714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3714, %dx.types.Handle %71, float %3291, float %3292, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3717 = extractvalue %dx.types.ResRet.f32 %3715, 1
  %3718 = extractvalue %dx.types.ResRet.f32 %3715, 2
  %3719 = extractvalue %dx.types.ResRet.f32 %3715, 3
  %3720 = and i32 %3709, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = lshr i32 %3709, 8
  %3723 = and i32 %3722, 255
  %3724 = uitofp i32 %3723 to float
  %3725 = lshr i32 %3709, 16
  %3726 = and i32 %3725, 255
  %3727 = uitofp i32 %3726 to float
  %3728 = fmul fast float %3727, 0x3F70101000000000
  %3729 = fmul fast float %3716, %3721
  %3730 = fadd fast float %3729, %3724
  %3731 = fmul fast float %3730, 0x3F70101000000000
  %3732 = fadd fast float %3717, -5.000000e-01
  %3733 = fadd fast float %3719, -5.000000e-01
  %3734 = fmul fast float %3732, %3728
  %3735 = fmul fast float %3733, %3728
  %3736 = fadd fast float %3734, 5.000000e-01
  %3737 = fadd fast float %3735, 5.000000e-01
  %3738 = fmul fast float %3736, 2.000000e+00
  %3739 = fadd fast float %3738, -1.000000e+00
  %3740 = fmul fast float %3737, 2.000000e+00
  %3741 = fadd fast float %3740, -1.000000e+00
  %3742 = fadd fast float %3739, %3741
  %3743 = fmul fast float %3742, 5.000000e-01
  %3744 = fsub fast float %3739, %3741
  %3745 = fmul fast float %3744, 5.000000e-01
  %3746 = call float @dx.op.unary.f32(i32 6, float %3743)  ; FAbs(value)
  %3747 = fsub fast float 1.000000e+00, %3746
  %3748 = call float @dx.op.unary.f32(i32 6, float %3745)  ; FAbs(value)
  %3749 = fsub fast float %3747, %3748
  %3750 = call float @dx.op.dot3.f32(i32 55, float %3743, float %3745, float %3749, float %3743, float %3745, float %3749)  ; Dot3(ax,ay,az,bx,by,bz)
  %3751 = call float @dx.op.unary.f32(i32 25, float %3750)  ; Rsqrt(value)
  %3752 = fmul fast float %3743, %3751
  %3753 = fmul fast float %3745, %3751
  %3754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.i32 %3754, 0
  %3756 = and i32 %3755, 67108864
  %3757 = icmp eq i32 %3756, 0
  br i1 %3757, label %3774, label %3758

; <label>:3758                                    ; preds = %3706
  %3759 = add i32 %35, 328
  %3760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.i32 %3760, 0
  %3762 = and i32 %3761, 65535
  %3763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3762)  ; LegacyF16ToF32(value)
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = and i32 %3765, 65535
  %3767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3766)  ; LegacyF16ToF32(value)
  %3768 = lshr i32 %3761, 16
  %3769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3768)  ; LegacyF16ToF32(value)
  %3770 = fsub fast float %3731, %3769
  %3771 = fmul fast float %3770, %3763
  %3772 = fadd fast float %3771, %3767
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  br label %3774

; <label>:3774                                    ; preds = %3758, %3706
  %3775 = phi float [ %3773, %3758 ], [ %3731, %3706 ]
  %3776 = call float @dx.op.dot2.f32(i32 54, float %3752, float %3753, float %3195, float %3196)  ; Dot2(ax,ay,bx,by)
  %3777 = call float @dx.op.dot2.f32(i32 54, float %3752, float %3753, float %3197, float %3198)  ; Dot2(ax,ay,bx,by)
  br label %3778

; <label>:3778                                    ; preds = %3774, %3684
  %3779 = phi float [ %3775, %3774 ], [ 0x3FD6666660000000, %3684 ]
  %3780 = phi float [ %3776, %3774 ], [ 0.000000e+00, %3684 ]
  %3781 = phi float [ %3777, %3774 ], [ 0.000000e+00, %3684 ]
  %3782 = phi float [ %3718, %3774 ], [ 1.000000e+00, %3684 ]
  %3783 = add i32 %35, 208
  %3784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3785 = extractvalue %dx.types.ResRet.i32 %3784, 0
  %3786 = lshr i32 %3785, 22
  %3787 = shl nuw nsw i32 %3786, 5
  %3788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3787)  ; LegacyF16ToF32(value)
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = and i32 %3790, 64
  %3792 = icmp eq i32 %3791, 0
  br i1 %3792, label %3826, label %3793

; <label>:3793                                    ; preds = %3778
  %3794 = add i32 %35, 404
  %3795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.i32 %3795, 0
  %3797 = add i32 %3796, 0
  %3798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3797, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = and i32 %3800, 131072
  %3802 = icmp eq i32 %3801, 0
  %3803 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3798, %dx.types.Handle %71, float %3291, float %3292, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3807 = fmul fast float %3804, %308
  %3808 = fmul fast float %3805, %311
  %3809 = fmul fast float %3806, %314
  br i1 %3802, label %3816, label %3810

; <label>:3810                                    ; preds = %3793
  %3811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3812 = extractvalue %dx.types.CBufRet.f32 %3811, 0
  %3813 = fmul fast float %3812, %3807
  %3814 = fmul fast float %3812, %3808
  %3815 = fmul fast float %3812, %3809
  br label %3816

; <label>:3816                                    ; preds = %3810, %3793
  %3817 = phi float [ %3813, %3810 ], [ %3807, %3793 ]
  %3818 = phi float [ %3814, %3810 ], [ %3808, %3793 ]
  %3819 = phi float [ %3815, %3810 ], [ %3809, %3793 ]
  %3820 = fmul fast float %3817, %3788
  %3821 = select i1 %176, float %3820, float %3817
  %3822 = call float @dx.op.dot3.f32(i32 55, float %3821, float %3818, float %3819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = select i1 %176, float 0.000000e+00, float %3817
  %3824 = select i1 %176, float %3822, float %3818
  %3825 = select i1 %176, float 0.000000e+00, float %3819
  br label %3826

; <label>:3826                                    ; preds = %3816, %3778
  %3827 = phi float [ %3823, %3816 ], [ 0.000000e+00, %3778 ]
  %3828 = phi float [ %3824, %3816 ], [ 0.000000e+00, %3778 ]
  %3829 = phi float [ %3825, %3816 ], [ 0.000000e+00, %3778 ]
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = and i32 %3831, 1024
  %3833 = icmp eq i32 %3832, 0
  br i1 %3833, label %3864, label %3834

; <label>:3834                                    ; preds = %3826
  %3835 = add i32 %35, 200
  %3836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.i32 %3836, 0
  %3838 = and i32 %3837, 255
  %3839 = uitofp i32 %3838 to float
  %3840 = fmul fast float %3839, 0x3F70101020000000
  %3841 = lshr i32 %3837, 8
  %3842 = and i32 %3841, 255
  %3843 = uitofp i32 %3842 to float
  %3844 = fmul fast float %3843, 0x3F70101020000000
  %3845 = lshr i32 %3837, 16
  %3846 = and i32 %3845, 255
  %3847 = uitofp i32 %3846 to float
  %3848 = fmul fast float %3847, 0x3F70101020000000
  %3849 = fmul fast float %3840, %3840
  %3850 = fmul fast float %3844, %3844
  %3851 = fmul fast float %3848, %3848
  %3852 = add i32 %35, 468
  %3853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.i32 %3853, 0
  %3855 = add i32 %3854, 0
  %3856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3855, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3857 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3856, %dx.types.Handle %72, float %3291, float %3292, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.ResRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.ResRet.f32 %3857, 2
  %3861 = fmul fast float %3849, %3858
  %3862 = fmul fast float %3850, %3859
  %3863 = fmul fast float %3851, %3860
  br label %3864

; <label>:3864                                    ; preds = %3834, %3826
  %3865 = phi float [ %3861, %3834 ], [ 0.000000e+00, %3826 ]
  %3866 = phi float [ %3862, %3834 ], [ 0.000000e+00, %3826 ]
  %3867 = phi float [ %3863, %3834 ], [ 0.000000e+00, %3826 ]
  %3868 = fcmp fast ogt float %3865, 0.000000e+00
  %3869 = fcmp fast ogt float %3866, 0.000000e+00
  %3870 = fcmp fast ogt float %3867, 0.000000e+00
  %3871 = call float @dx.op.unary.f32(i32 23, float %3865)  ; Log(value)
  %3872 = call float @dx.op.unary.f32(i32 23, float %3866)  ; Log(value)
  %3873 = call float @dx.op.unary.f32(i32 23, float %3867)  ; Log(value)
  %3874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.i32 %3874, 0
  %3876 = lshr i32 %3875, 7
  %3877 = and i32 %3876, 32752
  %3878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3877)  ; LegacyF16ToF32(value)
  %3879 = fmul fast float %3871, 0xBFE62E4300000000
  %3880 = fmul fast float %3879, %3878
  %3881 = fmul fast float %3872, 0xBFE62E4300000000
  %3882 = fmul fast float %3881, %3878
  %3883 = fmul fast float %3873, 0xBFE62E4300000000
  %3884 = fmul fast float %3883, %3878
  %3885 = select i1 %3868, float %3880, float 1.270000e+02
  %3886 = select i1 %3869, float %3882, float 1.270000e+02
  %3887 = select i1 %3870, float %3884, float 1.270000e+02
  %3888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.i32 %3888, 0
  %3890 = and i32 %3889, 26624
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %3949, label %3892

; <label>:3892                                    ; preds = %3864
  %3893 = add i32 %35, 484
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = add i32 %3895, 0
  %3897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3897, %dx.types.Handle %72, float %3291, float %3292, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 0
  %3900 = extractvalue %dx.types.ResRet.f32 %3898, 1
  %3901 = extractvalue %dx.types.ResRet.f32 %3898, 3
  %3902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.i32 %3902, 0
  %3904 = and i32 %3903, 1048576
  %3905 = icmp ne i32 %3904, 0
  %3906 = and i32 %3903, 8192
  %3907 = icmp eq i32 %3906, 0
  br i1 %3907, label %3922, label %3908

; <label>:3908                                    ; preds = %3892
  %3909 = extractvalue %dx.types.ResRet.f32 %3898, 2
  %3910 = select i1 %3905, float %3909, float %3900
  %3911 = select i1 %3905, float %3899, float %3900
  %3912 = add i32 %35, 144
  %3913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.i32 %3913, 0
  %3915 = lshr i32 %3914, 16
  %3916 = and i32 %3915, 255
  %3917 = uitofp i32 %3916 to float
  %3918 = fmul fast float %3917, 0x3F80101020000000
  %3919 = fmul fast float %3918, %3911
  %3920 = fmul fast float %3918, %3900
  %3921 = fmul fast float %3918, %3910
  br label %3922

; <label>:3922                                    ; preds = %3908, %3892
  %3923 = phi float [ %3919, %3908 ], [ 0.000000e+00, %3892 ]
  %3924 = phi float [ %3920, %3908 ], [ 0.000000e+00, %3892 ]
  %3925 = phi float [ %3921, %3908 ], [ 0.000000e+00, %3892 ]
  %3926 = and i32 %3903, 2048
  %3927 = icmp eq i32 %3926, 0
  br i1 %3927, label %3936, label %3928

; <label>:3928                                    ; preds = %3922
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3783, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = shl i32 %3930, 4
  %3932 = and i32 %3931, 32752
  %3933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3932)  ; LegacyF16ToF32(value)
  %3934 = fmul fast float %3933, %3901
  %3935 = call float @dx.op.binary.f32(i32 35, float %3934, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3936

; <label>:3936                                    ; preds = %3928, %3922
  %3937 = phi float [ %3935, %3928 ], [ 0x3F70101020000000, %3922 ]
  %3938 = and i32 %3903, 16384
  %3939 = icmp eq i32 %3938, 0
  br i1 %3939, label %3949, label %3940

; <label>:3940                                    ; preds = %3936
  %3941 = add i32 %35, 144
  %3942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.i32 %3942, 0
  %3944 = lshr i32 %3943, 24
  %3945 = uitofp i32 %3944 to float
  %3946 = fmul fast float %3899, 0x3F70101020000000
  %3947 = select i1 %3905, float 0x3F70101020000000, float %3946
  %3948 = fmul fast float %3947, %3945
  br label %3949

; <label>:3949                                    ; preds = %3940, %3936, %3864
  %3950 = phi float [ %3923, %3940 ], [ %3923, %3936 ], [ 0.000000e+00, %3864 ]
  %3951 = phi float [ %3924, %3940 ], [ %3924, %3936 ], [ 0.000000e+00, %3864 ]
  %3952 = phi float [ %3925, %3940 ], [ %3925, %3936 ], [ 0.000000e+00, %3864 ]
  %3953 = phi float [ %3937, %3940 ], [ %3937, %3936 ], [ 0x3F70101020000000, %3864 ]
  %3954 = phi float [ %3948, %3940 ], [ 0.000000e+00, %3936 ], [ 0.000000e+00, %3864 ]
  %3955 = add i32 %35, 144
  %3956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.i32 %3956, 0
  %3958 = and i32 %3957, 255
  %3959 = uitofp i32 %3958 to float
  %3960 = lshr i32 %3957, 8
  %3961 = and i32 %3960, 255
  %3962 = uitofp i32 %3961 to float
  %3963 = call float @dx.op.dot3.f32(i32 55, float %3699, float %3700, float %3701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3964 = fmul fast float %3962, %3963
  %3965 = fadd fast float %3964, %3959
  %3966 = fmul fast float %3965, 0x3F70101020000000
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  br i1 %3183, label %3968, label %4003

; <label>:3968                                    ; preds = %3949
  %3969 = fmul fast float %3953, 2.000000e+00
  %3970 = fcmp fast olt float %3885, 1.270000e+02
  %3971 = fcmp fast olt float %3886, 1.270000e+02
  %3972 = fcmp fast olt float %3887, 1.270000e+02
  %3973 = fmul fast float %3885, 0xBFF7154760000000
  %3974 = fmul fast float %3973, %3969
  %3975 = fmul fast float %3886, 0xBFF7154760000000
  %3976 = fmul fast float %3975, %3969
  %3977 = fmul fast float %3887, 0xBFF7154760000000
  %3978 = fmul fast float %3977, %3969
  %3979 = call float @dx.op.unary.f32(i32 21, float %3974)  ; Exp(value)
  %3980 = call float @dx.op.unary.f32(i32 21, float %3976)  ; Exp(value)
  %3981 = call float @dx.op.unary.f32(i32 21, float %3978)  ; Exp(value)
  %3982 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3983 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3984 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3985 = fadd fast float %3982, -1.000000e+00
  %3986 = select i1 %3970, float %3985, float -1.000000e+00
  %3987 = fadd fast float %3983, -1.000000e+00
  %3988 = select i1 %3971, float %3987, float -1.000000e+00
  %3989 = fadd fast float %3984, -1.000000e+00
  %3990 = select i1 %3972, float %3989, float -1.000000e+00
  %3991 = fmul fast float %3986, %3479
  %3992 = fmul fast float %3988, %3479
  %3993 = fmul fast float %3990, %3479
  %3994 = fadd fast float %3991, 1.000000e+00
  %3995 = fadd fast float %3992, 1.000000e+00
  %3996 = fadd fast float %3993, 1.000000e+00
  %3997 = fmul fast float %3994, %3164
  %3998 = fmul fast float %3995, %3165
  %3999 = fmul fast float %3996, %3166
  %4000 = fmul fast float %3994, %3167
  %4001 = fmul fast float %3995, %3168
  %4002 = fmul fast float %3996, %3169
  br label %4003

; <label>:4003                                    ; preds = %3968, %3949
  %4004 = phi float [ %3997, %3968 ], [ %3164, %3949 ]
  %4005 = phi float [ %3998, %3968 ], [ %3165, %3949 ]
  %4006 = phi float [ %3999, %3968 ], [ %3166, %3949 ]
  %4007 = phi float [ %4000, %3968 ], [ %3167, %3949 ]
  %4008 = phi float [ %4001, %3968 ], [ %3168, %3949 ]
  %4009 = phi float [ %4002, %3968 ], [ %3169, %3949 ]
  %4010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4011 = extractvalue %dx.types.ResRet.i32 %4010, 0
  %4012 = and i32 %4011, 3
  %4013 = icmp eq i32 %4012, 3
  br i1 %4013, label %4092, label %4014

; <label>:4014                                    ; preds = %4003
  %4015 = and i32 %4011, 16
  %4016 = icmp ne i32 %4015, 0
  %4017 = select i1 %4016, float %3479, float 0.000000e+00
  %4018 = icmp eq i32 %4012, 0
  br i1 %4018, label %4019, label %4047

; <label>:4019                                    ; preds = %4014
  %4020 = and i32 %4011, 64
  %4021 = icmp ne i32 %4020, 0
  %4022 = select i1 %4021, float %3479, float 0.000000e+00
  %4023 = fsub fast float %3699, %4004
  %4024 = fsub fast float %3700, %4005
  %4025 = fsub fast float %3701, %4006
  %4026 = fmul fast float %4017, %4023
  %4027 = fmul fast float %4017, %4024
  %4028 = fmul fast float %4017, %4025
  %4029 = fadd fast float %4026, %4004
  %4030 = fadd fast float %4027, %4005
  %4031 = fadd fast float %4028, %4006
  %4032 = fsub fast float %3685, %3176
  %4033 = fmul fast float %4017, %4032
  %4034 = fadd fast float %4033, %3176
  %4035 = fsub fast float %3827, %4007
  %4036 = fsub fast float %3828, %4008
  %4037 = fsub fast float %3829, %4009
  %4038 = fmul fast float %4022, %4035
  %4039 = fmul fast float %4022, %4036
  %4040 = fmul fast float %4022, %4037
  %4041 = fadd fast float %4038, %4007
  %4042 = fadd fast float %4039, %4008
  %4043 = fadd fast float %4040, %4009
  %4044 = fsub fast float %3967, %3181
  %4045 = fmul fast float %4017, %4044
  %4046 = fadd fast float %4045, %3181
  br label %4092

; <label>:4047                                    ; preds = %4014
  %4048 = icmp eq i32 %4012, 1
  br i1 %4048, label %4049, label %4062

; <label>:4049                                    ; preds = %4047
  %4050 = fadd fast float %3699, -1.000000e+00
  %4051 = fadd fast float %3700, -1.000000e+00
  %4052 = fadd fast float %3701, -1.000000e+00
  %4053 = fmul fast float %4017, %4050
  %4054 = fmul fast float %4017, %4051
  %4055 = fmul fast float %4017, %4052
  %4056 = fadd fast float %4053, 1.000000e+00
  %4057 = fadd fast float %4054, 1.000000e+00
  %4058 = fadd fast float %4055, 1.000000e+00
  %4059 = fmul fast float %4056, %4004
  %4060 = fmul fast float %4057, %4005
  %4061 = fmul fast float %4058, %4006
  br label %4092

; <label>:4062                                    ; preds = %4047
  %4063 = icmp eq i32 %4012, 2
  br i1 %4063, label %4064, label %4092

; <label>:4064                                    ; preds = %4062
  %4065 = call float @dx.op.unary.f32(i32 24, float %3699)  ; Sqrt(value)
  %4066 = call float @dx.op.unary.f32(i32 24, float %3700)  ; Sqrt(value)
  %4067 = call float @dx.op.unary.f32(i32 24, float %3701)  ; Sqrt(value)
  %4068 = fadd fast float %4065, -5.000000e-01
  %4069 = fadd fast float %4066, -5.000000e-01
  %4070 = fadd fast float %4067, -5.000000e-01
  %4071 = fmul fast float %4068, %4017
  %4072 = fmul fast float %4069, %4017
  %4073 = fmul fast float %4070, %4017
  %4074 = fadd fast float %4071, 5.000000e-01
  %4075 = fadd fast float %4072, 5.000000e-01
  %4076 = fadd fast float %4073, 5.000000e-01
  %4077 = fmul fast float %4074, 2.000000e+00
  %4078 = fsub fast float 1.000000e+00, %4077
  %4079 = fmul fast float %4078, %4004
  %4080 = fadd fast float %4079, %4077
  %4081 = fmul fast float %4080, %4004
  %4082 = fmul fast float %4075, 2.000000e+00
  %4083 = fsub fast float 1.000000e+00, %4082
  %4084 = fmul fast float %4083, %4005
  %4085 = fadd fast float %4084, %4082
  %4086 = fmul fast float %4085, %4005
  %4087 = fmul fast float %4076, 2.000000e+00
  %4088 = fsub fast float 1.000000e+00, %4087
  %4089 = fmul fast float %4088, %4006
  %4090 = fadd fast float %4089, %4087
  %4091 = fmul fast float %4090, %4006
  br label %4092

; <label>:4092                                    ; preds = %4064, %4062, %4049, %4019, %4003
  %4093 = phi float [ %4004, %4003 ], [ %4081, %4064 ], [ %4004, %4062 ], [ %4059, %4049 ], [ %4029, %4019 ]
  %4094 = phi float [ %4005, %4003 ], [ %4086, %4064 ], [ %4005, %4062 ], [ %4060, %4049 ], [ %4030, %4019 ]
  %4095 = phi float [ %4006, %4003 ], [ %4091, %4064 ], [ %4006, %4062 ], [ %4061, %4049 ], [ %4031, %4019 ]
  %4096 = phi float [ %4007, %4003 ], [ %4007, %4064 ], [ %4007, %4062 ], [ %4007, %4049 ], [ %4041, %4019 ]
  %4097 = phi float [ %4008, %4003 ], [ %4008, %4064 ], [ %4008, %4062 ], [ %4008, %4049 ], [ %4042, %4019 ]
  %4098 = phi float [ %4009, %4003 ], [ %4009, %4064 ], [ %4009, %4062 ], [ %4009, %4049 ], [ %4043, %4019 ]
  %4099 = phi float [ %3176, %4003 ], [ %3176, %4064 ], [ %3176, %4062 ], [ %3176, %4049 ], [ %4034, %4019 ]
  %4100 = phi float [ %3181, %4003 ], [ %3181, %4064 ], [ %3181, %4062 ], [ %3181, %4049 ], [ %4046, %4019 ]
  %4101 = and i32 %4011, 12
  %4102 = icmp eq i32 %4101, 12
  br i1 %4102, label %4243, label %4103

; <label>:4103                                    ; preds = %4092
  %4104 = and i32 %4011, 2097184
  %4105 = icmp eq i32 %4104, 2097184
  %4106 = select i1 %4105, float %3479, float 0.000000e+00
  %4107 = and i32 %4011, 4194336
  %4108 = icmp eq i32 %4107, 4194336
  %4109 = select i1 %4108, float %3479, float 0.000000e+00
  %4110 = and i32 %4011, 8388640
  %4111 = icmp eq i32 %4110, 8388640
  %4112 = select i1 %4111, float %3479, float 0.000000e+00
  %4113 = and i32 %4011, 1024
  %4114 = icmp ne i32 %4113, 0
  %4115 = select i1 %4114, float %3479, float 0.000000e+00
  %4116 = and i32 %4011, 2048
  %4117 = icmp ne i32 %4116, 0
  %4118 = select i1 %4117, float %3479, float 0.000000e+00
  %4119 = and i32 %4011, 8192
  %4120 = icmp ne i32 %4119, 0
  %4121 = select i1 %4120, float %3479, float 0.000000e+00
  %4122 = and i32 %4011, 16384
  %4123 = icmp ne i32 %4122, 0
  %4124 = select i1 %4123, float %3479, float 0.000000e+00
  %4125 = icmp eq i32 %4101, 0
  br i1 %4125, label %4126, label %4163

; <label>:4126                                    ; preds = %4103
  %4127 = fsub fast float %3780, %3162
  %4128 = fsub fast float %3781, %3163
  %4129 = fmul fast float %4106, %4127
  %4130 = fmul fast float %4106, %4128
  %4131 = fadd fast float %4129, %3162
  %4132 = fadd fast float %4130, %3163
  %4133 = fsub fast float %3782, %3178
  %4134 = fmul fast float %4109, %4133
  %4135 = fadd fast float %4134, %3178
  %4136 = fsub fast float %3779, %3177
  %4137 = fmul fast float %4112, %4136
  %4138 = fadd fast float %4137, %3177
  %4139 = fsub fast float %3885, %3173
  %4140 = fsub fast float %3886, %3174
  %4141 = fsub fast float %3887, %3175
  %4142 = fmul fast float %4115, %4139
  %4143 = fmul fast float %4115, %4140
  %4144 = fmul fast float %4115, %4141
  %4145 = fadd fast float %4142, %3173
  %4146 = fadd fast float %4143, %3174
  %4147 = fadd fast float %4144, %3175
  %4148 = fsub fast float %3953, %3179
  %4149 = fmul fast float %4118, %4148
  %4150 = fadd fast float %4149, %3179
  %4151 = fsub fast float %3950, %3170
  %4152 = fsub fast float %3951, %3171
  %4153 = fsub fast float %3952, %3172
  %4154 = fmul fast float %4121, %4151
  %4155 = fmul fast float %4121, %4152
  %4156 = fmul fast float %4121, %4153
  %4157 = fadd fast float %4154, %3170
  %4158 = fadd fast float %4155, %3171
  %4159 = fadd fast float %4156, %3172
  %4160 = fsub fast float %3954, %3180
  %4161 = fmul fast float %4124, %4160
  %4162 = fadd fast float %4161, %3180
  br label %4243

; <label>:4163                                    ; preds = %4103
  %4164 = icmp eq i32 %4101, 4
  br i1 %4164, label %4165, label %4213

; <label>:4165                                    ; preds = %4163
  %4166 = fmul fast float %4106, %3780
  %4167 = fmul fast float %4106, %3781
  %4168 = fadd fast float %4166, %3162
  %4169 = fadd fast float %4167, %3163
  %4170 = call float @dx.op.binary.f32(i32 36, float %3178, float %3782)  ; FMin(a,b)
  %4171 = fsub fast float %4170, %3178
  %4172 = fmul fast float %4171, %4109
  %4173 = fadd fast float %4172, %3178
  %4174 = fadd fast float %3779, %3177
  %4175 = fmul fast float %4174, 0x3FF337FAE0000000
  %4176 = fmul fast float %3177, %3177
  %4177 = fmul fast float %3779, %3779
  %4178 = fadd fast float %4177, %4176
  %4179 = fmul fast float %4178, 0x3FE5152B00000000
  %4180 = fmul fast float %3177, 0xBFCC1F85E0000000
  %4181 = fmul fast float %4180, %3779
  %4182 = fadd fast float %4181, 0xBFE1363700000000
  %4183 = fadd fast float %4182, %4175
  %4184 = fsub fast float %4183, %4179
  %4185 = fmul fast float %4174, 0x3FBA6F0D00000000
  %4186 = fmul fast float %4178, 0x3FD0432880000000
  %4187 = fmul fast float %3177, 0xBFEF110800000000
  %4188 = fmul fast float %4187, %3779
  %4189 = fadd fast float %4188, 1.000000e+00
  %4190 = fsub fast float %4189, %4185
  %4191 = fadd fast float %4190, %4186
  %4192 = fdiv fast float %4184, %4191
  %4193 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4194 = fsub fast float %4193, %3177
  %4195 = fmul fast float %4194, %4112
  %4196 = fadd fast float %4195, %3177
  %4197 = fmul fast float %4115, %3885
  %4198 = fmul fast float %4115, %3886
  %4199 = fmul fast float %4115, %3887
  %4200 = fadd fast float %4197, %3173
  %4201 = fadd fast float %4198, %3174
  %4202 = fadd fast float %4199, %3175
  %4203 = fmul fast float %4118, %3953
  %4204 = fadd fast float %4203, %3179
  %4205 = fmul fast float %4121, %3950
  %4206 = fmul fast float %4121, %3951
  %4207 = fmul fast float %4121, %3952
  %4208 = fadd fast float %4205, %3170
  %4209 = fadd fast float %4206, %3171
  %4210 = fadd fast float %4207, %3172
  %4211 = fmul fast float %4124, %3954
  %4212 = fadd fast float %4211, %3180
  br label %4243

; <label>:4213                                    ; preds = %4163
  %4214 = icmp eq i32 %4101, 8
  br i1 %4214, label %4215, label %4243

; <label>:4215                                    ; preds = %4213
  %4216 = fmul fast float %4106, %3780
  %4217 = fmul fast float %4106, %3781
  %4218 = fadd fast float %4216, %3162
  %4219 = fadd fast float %4217, %3163
  %4220 = call float @dx.op.binary.f32(i32 36, float %3178, float %3782)  ; FMin(a,b)
  %4221 = fsub fast float %4220, %3178
  %4222 = fmul fast float %4221, %4109
  %4223 = fadd fast float %4222, %3178
  %4224 = fsub fast float %3779, %3177
  %4225 = fmul fast float %4112, %4224
  %4226 = fadd fast float %4225, %3177
  %4227 = fmul fast float %4115, %3885
  %4228 = fmul fast float %4115, %3886
  %4229 = fmul fast float %4115, %3887
  %4230 = fadd fast float %4227, %3173
  %4231 = fadd fast float %4228, %3174
  %4232 = fadd fast float %4229, %3175
  %4233 = fmul fast float %4118, %3953
  %4234 = fadd fast float %4233, %3179
  %4235 = fmul fast float %4121, %3950
  %4236 = fmul fast float %4121, %3951
  %4237 = fmul fast float %4121, %3952
  %4238 = fadd fast float %4235, %3170
  %4239 = fadd fast float %4236, %3171
  %4240 = fadd fast float %4237, %3172
  %4241 = fmul fast float %4124, %3954
  %4242 = fadd fast float %4241, %3180
  br label %4243

; <label>:4243                                    ; preds = %4215, %4213, %4165, %4126, %4092, %3478, %3182, %3161
  %4244 = phi float [ %3162, %4092 ], [ %3162, %3478 ], [ %3162, %3161 ], [ %3162, %3182 ], [ %4131, %4126 ], [ %4168, %4165 ], [ %3162, %4213 ], [ %4218, %4215 ]
  %4245 = phi float [ %3163, %4092 ], [ %3163, %3478 ], [ %3163, %3161 ], [ %3163, %3182 ], [ %4132, %4126 ], [ %4169, %4165 ], [ %3163, %4213 ], [ %4219, %4215 ]
  %4246 = phi float [ %4093, %4092 ], [ %3164, %3478 ], [ %3164, %3161 ], [ %3164, %3182 ], [ %4093, %4126 ], [ %4093, %4165 ], [ %4093, %4213 ], [ %4093, %4215 ]
  %4247 = phi float [ %4094, %4092 ], [ %3165, %3478 ], [ %3165, %3161 ], [ %3165, %3182 ], [ %4094, %4126 ], [ %4094, %4165 ], [ %4094, %4213 ], [ %4094, %4215 ]
  %4248 = phi float [ %4095, %4092 ], [ %3166, %3478 ], [ %3166, %3161 ], [ %3166, %3182 ], [ %4095, %4126 ], [ %4095, %4165 ], [ %4095, %4213 ], [ %4095, %4215 ]
  %4249 = phi float [ %4096, %4092 ], [ %3167, %3478 ], [ %3167, %3161 ], [ %3167, %3182 ], [ %4096, %4126 ], [ %4096, %4165 ], [ %4096, %4213 ], [ %4096, %4215 ]
  %4250 = phi float [ %4097, %4092 ], [ %3168, %3478 ], [ %3168, %3161 ], [ %3168, %3182 ], [ %4097, %4126 ], [ %4097, %4165 ], [ %4097, %4213 ], [ %4097, %4215 ]
  %4251 = phi float [ %4098, %4092 ], [ %3169, %3478 ], [ %3169, %3161 ], [ %3169, %3182 ], [ %4098, %4126 ], [ %4098, %4165 ], [ %4098, %4213 ], [ %4098, %4215 ]
  %4252 = phi float [ %3170, %4092 ], [ %3170, %3478 ], [ %3170, %3161 ], [ %3170, %3182 ], [ %4157, %4126 ], [ %4208, %4165 ], [ %3170, %4213 ], [ %4238, %4215 ]
  %4253 = phi float [ %3171, %4092 ], [ %3171, %3478 ], [ %3171, %3161 ], [ %3171, %3182 ], [ %4158, %4126 ], [ %4209, %4165 ], [ %3171, %4213 ], [ %4239, %4215 ]
  %4254 = phi float [ %3172, %4092 ], [ %3172, %3478 ], [ %3172, %3161 ], [ %3172, %3182 ], [ %4159, %4126 ], [ %4210, %4165 ], [ %3172, %4213 ], [ %4240, %4215 ]
  %4255 = phi float [ %3173, %4092 ], [ %3173, %3478 ], [ %3173, %3161 ], [ %3173, %3182 ], [ %4145, %4126 ], [ %4200, %4165 ], [ %3173, %4213 ], [ %4230, %4215 ]
  %4256 = phi float [ %3174, %4092 ], [ %3174, %3478 ], [ %3174, %3161 ], [ %3174, %3182 ], [ %4146, %4126 ], [ %4201, %4165 ], [ %3174, %4213 ], [ %4231, %4215 ]
  %4257 = phi float [ %3175, %4092 ], [ %3175, %3478 ], [ %3175, %3161 ], [ %3175, %3182 ], [ %4147, %4126 ], [ %4202, %4165 ], [ %3175, %4213 ], [ %4232, %4215 ]
  %4258 = phi float [ %4099, %4092 ], [ %3176, %3478 ], [ %3176, %3161 ], [ %3176, %3182 ], [ %4099, %4126 ], [ %4099, %4165 ], [ %4099, %4213 ], [ %4099, %4215 ]
  %4259 = phi float [ %3177, %4092 ], [ %3177, %3478 ], [ %3177, %3161 ], [ %3177, %3182 ], [ %4138, %4126 ], [ %4196, %4165 ], [ %3177, %4213 ], [ %4226, %4215 ]
  %4260 = phi float [ %3178, %4092 ], [ %3178, %3478 ], [ %3178, %3161 ], [ %3178, %3182 ], [ %4135, %4126 ], [ %4173, %4165 ], [ %3178, %4213 ], [ %4223, %4215 ]
  %4261 = phi float [ %3179, %4092 ], [ %3179, %3478 ], [ %3179, %3161 ], [ %3179, %3182 ], [ %4150, %4126 ], [ %4204, %4165 ], [ %3179, %4213 ], [ %4234, %4215 ]
  %4262 = phi float [ %3180, %4092 ], [ %3180, %3478 ], [ %3180, %3161 ], [ %3180, %3182 ], [ %4162, %4126 ], [ %4212, %4165 ], [ %3180, %4213 ], [ %4242, %4215 ]
  %4263 = phi float [ %4100, %4092 ], [ %3181, %3478 ], [ %3181, %3161 ], [ %3181, %3182 ], [ %4100, %4126 ], [ %4100, %4165 ], [ %4100, %4213 ], [ %4100, %4215 ]
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 0
  %4266 = call float @dx.op.dot2.f32(i32 54, float %4244, float %4245, float %4244, float %4245)  ; Dot2(ax,ay,bx,by)
  %4267 = fmul fast float %4266, 0x3FE3333340000000
  %4268 = fsub fast float 1.000000e+00, %4267
  %4269 = call float @dx.op.dot3.f32(i32 55, float %4244, float %4245, float %4268, float %4244, float %4245, float %4268)  ; Dot3(ax,ay,az,bx,by,bz)
  %4270 = call float @dx.op.unary.f32(i32 25, float %4269)  ; Rsqrt(value)
  %4271 = fmul fast float %4270, %4244
  %4272 = fmul fast float %4270, %4245
  %4273 = fmul fast float %4268, %4270
  %4274 = fmul fast float %4273, %84
  %4275 = fmul fast float %4273, %86
  %4276 = fmul fast float %4273, %88
  %4277 = fmul fast float %4271, %56
  %4278 = fmul fast float %4271, %57
  %4279 = fmul fast float %4271, %58
  %4280 = fadd fast float %4274, %4277
  %4281 = fadd fast float %4275, %4278
  %4282 = fadd fast float %4276, %4279
  %4283 = fmul fast float %98, %4272
  %4284 = fmul fast float %99, %4272
  %4285 = fmul fast float %100, %4272
  %4286 = fadd fast float %4280, %4283
  %4287 = fadd fast float %4281, %4284
  %4288 = fadd fast float %4282, %4285
  %4289 = call float @dx.op.dot3.f32(i32 55, float %4286, float %4287, float %4288, float %4286, float %4287, float %4288)  ; Dot3(ax,ay,az,bx,by,bz)
  %4290 = call float @dx.op.unary.f32(i32 25, float %4289)  ; Rsqrt(value)
  %4291 = fmul fast float %4286, %4290
  %4292 = fmul fast float %4287, %4290
  %4293 = fmul fast float %4288, %4290
  %4294 = and i32 %37, 1
  %4295 = icmp eq i32 %4294, 0
  br i1 %4295, label %4296, label %4888

; <label>:4296                                    ; preds = %4243
  %4297 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %4298 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %4299 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %4300 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %4301 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %4302 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %4303 = fadd fast float %4297, %134
  %4304 = fadd fast float %4298, %135
  %4305 = fadd fast float %4299, %136
  %4306 = fadd fast float %4300, %134
  %4307 = fadd fast float %4301, %135
  %4308 = fadd fast float %4302, %136
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = extractvalue %dx.types.CBufRet.f32 %4309, 1
  %4312 = extractvalue %dx.types.CBufRet.f32 %4309, 2
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 2
  %4315 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4316 = fmul fast float %4310, %75
  %4317 = fmul fast float %4316, %4314
  %4318 = fmul fast float %4311, %76
  %4319 = fmul fast float %4318, %4315
  %4320 = fptoui float %4317 to i32
  %4321 = fptoui float %4319 to i32
  %4322 = fadd fast float %4310, -1.000000e+00
  %4323 = fadd fast float %4311, -1.000000e+00
  %4324 = fptoui float %4322 to i32
  %4325 = fptoui float %4323 to i32
  %4326 = call i32 @dx.op.binary.i32(i32 40, i32 %4320, i32 %4324)  ; UMin(a,b)
  %4327 = call i32 @dx.op.binary.i32(i32 40, i32 %4321, i32 %4325)  ; UMin(a,b)
  %4328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.f32 %4328, 2
  %4330 = extractvalue %dx.types.CBufRet.f32 %4328, 3
  %4331 = fmul fast float %4329, %70
  %4332 = fsub fast float %4331, %4330
  %4333 = fadd fast float %4312, -1.000000e+00
  %4334 = call float @dx.op.binary.f32(i32 36, float %4332, float %4333)  ; FMin(a,b)
  %4335 = fptoui float %4334 to i32
  %4336 = fptoui float %4310 to i32
  %4337 = fptoui float %4311 to i32
  %4338 = mul i32 %4335, %4337
  %4339 = add i32 %4338, %4327
  %4340 = mul i32 %4339, %4336
  %4341 = add i32 %4340, %4326
  %4342 = shl i32 %4341, 2
  %4343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.i32 %4343, 0
  %4345 = and i32 %4344, 1023
  %4346 = lshr i32 %4344, 10
  %4347 = icmp eq i32 %4345, 0
  br i1 %4347, label %4851, label %4348

; <label>:4348                                    ; preds = %4296
  %4349 = and i32 %4344, 1023
  br label %4350

; <label>:4350                                    ; preds = %4482, %4348
  %4351 = phi i32 [ %4432, %4482 ], [ 0, %4348 ]
  %4352 = phi float [ %4483, %4482 ], [ 0.000000e+00, %4348 ]
  %4353 = phi float [ %4484, %4482 ], [ %4265, %4348 ]
  %4354 = phi float [ %4485, %4482 ], [ %4263, %4348 ]
  %4355 = phi float [ %4486, %4482 ], [ %4255, %4348 ]
  %4356 = phi float [ %4487, %4482 ], [ %4256, %4348 ]
  %4357 = phi float [ %4488, %4482 ], [ %4257, %4348 ]
  %4358 = phi float [ %4489, %4482 ], [ %4262, %4348 ]
  %4359 = phi float [ %4490, %4482 ], [ 0.000000e+00, %4348 ]
  %4360 = phi float [ %4491, %4482 ], [ %4252, %4348 ]
  %4361 = phi float [ %4492, %4482 ], [ %4253, %4348 ]
  %4362 = phi float [ %4493, %4482 ], [ %4254, %4348 ]
  %4363 = phi float [ %4494, %4482 ], [ %4249, %4348 ]
  %4364 = phi float [ %4495, %4482 ], [ %4250, %4348 ]
  %4365 = phi float [ %4496, %4482 ], [ %4251, %4348 ]
  %4366 = phi float [ %4497, %4482 ], [ %4291, %4348 ]
  %4367 = phi float [ %4498, %4482 ], [ %4292, %4348 ]
  %4368 = phi float [ %4499, %4482 ], [ %4293, %4348 ]
  %4369 = phi float [ %4500, %4482 ], [ %4260, %4348 ]
  %4370 = phi float [ %4501, %4482 ], [ %4259, %4348 ]
  %4371 = phi float [ %4502, %4482 ], [ 0.000000e+00, %4348 ]
  %4372 = phi float [ %4503, %4482 ], [ %4258, %4348 ]
  %4373 = phi float [ %4504, %4482 ], [ %4246, %4348 ]
  %4374 = phi float [ %4505, %4482 ], [ %4247, %4348 ]
  %4375 = phi float [ %4506, %4482 ], [ %4248, %4348 ]
  %4376 = add nuw nsw i32 %4351, %4346
  %4377 = shl i32 %4376, 2
  %4378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4377, i32 undef)  ; BufferLoad(srv,index,wot)
  %4379 = extractvalue %dx.types.ResRet.i32 %4378, 0
  %4380 = shl i32 %4379, 8
  %4381 = or i32 %4380, 48
  %4382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = extractvalue %dx.types.ResRet.f32 %4382, 1
  %4385 = extractvalue %dx.types.ResRet.f32 %4382, 2
  %4386 = extractvalue %dx.types.ResRet.f32 %4382, 3
  %4387 = or i32 %4380, 64
  %4388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4387, i32 undef)  ; BufferLoad(srv,index,wot)
  %4389 = extractvalue %dx.types.ResRet.i32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.i32 %4388, 1
  %4391 = or i32 %4380, 80
  %4392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 3
  %4395 = or i32 %4380, 96
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = extractvalue %dx.types.ResRet.f32 %4396, 1
  %4399 = extractvalue %dx.types.ResRet.f32 %4396, 2
  %4400 = extractvalue %dx.types.ResRet.f32 %4396, 3
  %4401 = or i32 %4380, 112
  %4402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.f32 %4402, 2
  %4404 = or i32 %4380, 128
  %4405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.ResRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.ResRet.f32 %4405, 2
  %4409 = extractvalue %dx.types.ResRet.f32 %4405, 3
  %4410 = or i32 %4380, 144
  %4411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4410, i32 undef)  ; BufferLoad(srv,index,wot)
  %4412 = extractvalue %dx.types.ResRet.f32 %4411, 0
  %4413 = extractvalue %dx.types.ResRet.f32 %4411, 1
  %4414 = extractvalue %dx.types.ResRet.f32 %4411, 2
  %4415 = extractvalue %dx.types.ResRet.f32 %4411, 3
  %4416 = or i32 %4380, 160
  %4417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4416, i32 undef)  ; BufferLoad(srv,index,wot)
  %4418 = extractvalue %dx.types.ResRet.f32 %4417, 0
  %4419 = extractvalue %dx.types.ResRet.f32 %4417, 1
  %4420 = extractvalue %dx.types.ResRet.f32 %4417, 2
  %4421 = extractvalue %dx.types.ResRet.f32 %4417, 3
  %4422 = or i32 %4380, 192
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = or i32 %4380, 208
  %4426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = or i32 %4380, 248
  %4429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = extractvalue %dx.types.ResRet.f32 %4429, 1
  %4432 = add nuw nsw i32 %4351, 1
  %4433 = bitcast float %4386 to i32
  %4434 = and i32 %4433, 512
  %4435 = icmp eq i32 %4434, 0
  %4436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = extractvalue %dx.types.ResRet.f32 %4436, 1
  %4439 = extractvalue %dx.types.ResRet.f32 %4436, 2
  %4440 = extractvalue %dx.types.ResRet.f32 %4436, 3
  %4441 = call float @dx.op.dot4.f32(i32 56, float %4437, float %4438, float %4439, float %4440, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4442 = or i32 %4380, 16
  %4443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4444 = extractvalue %dx.types.ResRet.f32 %4443, 0
  %4445 = extractvalue %dx.types.ResRet.f32 %4443, 1
  %4446 = extractvalue %dx.types.ResRet.f32 %4443, 2
  %4447 = extractvalue %dx.types.ResRet.f32 %4443, 3
  %4448 = call float @dx.op.dot4.f32(i32 56, float %4444, float %4445, float %4446, float %4447, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4449 = or i32 %4380, 32
  %4450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4451 = extractvalue %dx.types.ResRet.f32 %4450, 0
  %4452 = extractvalue %dx.types.ResRet.f32 %4450, 1
  %4453 = extractvalue %dx.types.ResRet.f32 %4450, 2
  %4454 = extractvalue %dx.types.ResRet.f32 %4450, 3
  %4455 = call float @dx.op.dot4.f32(i32 56, float %4451, float %4452, float %4453, float %4454, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4456 = call float @dx.op.unary.f32(i32 27, float %4441)  ; Round_ni(value)
  %4457 = call float @dx.op.unary.f32(i32 6, float %4456)  ; FAbs(value)
  %4458 = call float @dx.op.unary.f32(i32 27, float %4448)  ; Round_ni(value)
  %4459 = call float @dx.op.unary.f32(i32 6, float %4458)  ; FAbs(value)
  %4460 = call float @dx.op.unary.f32(i32 6, float %4455)  ; FAbs(value)
  %4461 = call float @dx.op.unary.f32(i32 27, float %4460)  ; Round_ni(value)
  %4462 = fadd fast float %4459, %4457
  %4463 = fadd fast float %4462, %4461
  %4464 = fcmp fast oeq float %4463, 0.000000e+00
  %4465 = call float @dx.op.dot4.f32(i32 56, float %4437, float %4438, float %4439, float %4440, float %4303, float %4304, float %4305, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4466 = call float @dx.op.dot4.f32(i32 56, float %4444, float %4445, float %4446, float %4447, float %4303, float %4304, float %4305, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4467 = call float @dx.op.dot4.f32(i32 56, float %4437, float %4438, float %4439, float %4440, float %4306, float %4307, float %4308, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4468 = call float @dx.op.dot4.f32(i32 56, float %4444, float %4445, float %4446, float %4447, float %4306, float %4307, float %4308, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4469 = fsub fast float %4465, %4441
  %4470 = fsub fast float %4467, %4441
  %4471 = fsub fast float %4466, %4448
  %4472 = fsub fast float %4468, %4448
  %4473 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4476 = fadd fast float %4475, %4473
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4474, 0
  %4479 = fcmp fast ogt float %4477, %4478
  %4480 = and i1 %4464, %4479
  %4481 = and i1 %4435, %4480
  br i1 %4481, label %4508, label %4482

; <label>:4482                                    ; preds = %4837, %4589, %4508, %4350
  %4483 = phi float [ %4352, %4508 ], [ %4592, %4589 ], [ %4592, %4837 ], [ %4352, %4350 ]
  %4484 = phi float [ %4353, %4508 ], [ %4353, %4589 ], [ %4813, %4837 ], [ %4353, %4350 ]
  %4485 = phi float [ %4354, %4508 ], [ %4354, %4589 ], [ %4811, %4837 ], [ %4354, %4350 ]
  %4486 = phi float [ %4355, %4508 ], [ %4355, %4589 ], [ %4789, %4837 ], [ %4355, %4350 ]
  %4487 = phi float [ %4356, %4508 ], [ %4356, %4589 ], [ %4790, %4837 ], [ %4356, %4350 ]
  %4488 = phi float [ %4357, %4508 ], [ %4357, %4589 ], [ %4791, %4837 ], [ %4357, %4350 ]
  %4489 = phi float [ %4358, %4508 ], [ %4358, %4589 ], [ %4716, %4837 ], [ %4358, %4350 ]
  %4490 = phi float [ %4359, %4508 ], [ %4359, %4589 ], [ %4714, %4837 ], [ %4359, %4350 ]
  %4491 = phi float [ %4360, %4508 ], [ %4360, %4589 ], [ %4759, %4837 ], [ %4360, %4350 ]
  %4492 = phi float [ %4361, %4508 ], [ %4361, %4589 ], [ %4760, %4837 ], [ %4361, %4350 ]
  %4493 = phi float [ %4362, %4508 ], [ %4362, %4589 ], [ %4761, %4837 ], [ %4362, %4350 ]
  %4494 = phi float [ %4363, %4508 ], [ %4363, %4589 ], [ %4847, %4837 ], [ %4363, %4350 ]
  %4495 = phi float [ %4364, %4508 ], [ %4364, %4589 ], [ %4848, %4837 ], [ %4364, %4350 ]
  %4496 = phi float [ %4365, %4508 ], [ %4365, %4589 ], [ %4849, %4837 ], [ %4365, %4350 ]
  %4497 = phi float [ %4366, %4508 ], [ %4366, %4589 ], [ %4695, %4837 ], [ %4366, %4350 ]
  %4498 = phi float [ %4367, %4508 ], [ %4367, %4589 ], [ %4696, %4837 ], [ %4367, %4350 ]
  %4499 = phi float [ %4368, %4508 ], [ %4368, %4589 ], [ %4697, %4837 ], [ %4368, %4350 ]
  %4500 = phi float [ %4369, %4508 ], [ %4369, %4589 ], [ %4769, %4837 ], [ %4369, %4350 ]
  %4501 = phi float [ %4370, %4508 ], [ %4370, %4589 ], [ %4766, %4837 ], [ %4370, %4350 ]
  %4502 = phi float [ %4371, %4508 ], [ %4371, %4589 ], [ %4763, %4837 ], [ %4371, %4350 ]
  %4503 = phi float [ %4372, %4508 ], [ %4372, %4589 ], [ %4712, %4837 ], [ %4372, %4350 ]
  %4504 = phi float [ %4373, %4508 ], [ %4373, %4589 ], [ %4707, %4837 ], [ %4373, %4350 ]
  %4505 = phi float [ %4374, %4508 ], [ %4374, %4589 ], [ %4708, %4837 ], [ %4374, %4350 ]
  %4506 = phi float [ %4375, %4508 ], [ %4375, %4589 ], [ %4709, %4837 ], [ %4375, %4350 ]
  %4507 = icmp eq i32 %4432, %4349
  br i1 %4507, label %4850, label %4350

; <label>:4508                                    ; preds = %4350
  %4509 = extractvalue %dx.types.ResRet.f32 %4402, 3
  %4510 = extractvalue %dx.types.ResRet.f32 %4402, 1
  %4511 = extractvalue %dx.types.ResRet.f32 %4402, 0
  %4512 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4513 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4514 = extractvalue %dx.types.ResRet.i32 %4388, 3
  %4515 = extractvalue %dx.types.ResRet.i32 %4388, 2
  %4516 = add i32 %4514, 0
  %4517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4516, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4519 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4517, %dx.types.Handle %4518, float %4441, float %4448, float undef, float undef, i32 0, i32 0, i32 undef, float %4469, float %4471, float undef, float %4470, float %4472, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4520 = extractvalue %dx.types.ResRet.f32 %4519, 0
  %4521 = fmul fast float %4520, %4513
  %4522 = fadd fast float %4521, %4512
  %4523 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4524 = fmul fast float %4441, %4397
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4448, float %4524)  ; FMad(a,b,c)
  %4526 = fadd fast float %4525, %4511
  %4527 = fmul fast float %4441, %4399
  %4528 = call float @dx.op.tertiary.f32(i32 46, float %4400, float %4448, float %4527)  ; FMad(a,b,c)
  %4529 = fadd fast float %4528, %4510
  %4530 = fmul fast float %4469, %4397
  %4531 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4471, float %4530)  ; FMad(a,b,c)
  %4532 = fmul fast float %4469, %4399
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4400, float %4471, float %4532)  ; FMad(a,b,c)
  %4534 = fmul fast float %4470, %4397
  %4535 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4472, float %4534)  ; FMad(a,b,c)
  %4536 = fmul fast float %4470, %4399
  %4537 = call float @dx.op.tertiary.f32(i32 46, float %4400, float %4472, float %4536)  ; FMad(a,b,c)
  %4538 = add i32 %4515, 0
  %4539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4539, %dx.types.Handle %4518, float %4526, float %4529, float undef, float undef, i32 0, i32 0, i32 undef, float %4531, float %4533, float undef, float %4535, float %4537, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = and i32 %4433, 1024
  %4543 = icmp ne i32 %4542, 0
  %4544 = fcmp fast ogt float %4541, 0x3FE0101020000000
  %4545 = uitofp i1 %4544 to float
  %4546 = select i1 %4543, float %4545, float %4541
  %4547 = and i32 %4433, 8192
  %4548 = icmp ne i32 %4547, 0
  %4549 = select i1 %4548, float %4509, float 1.000000e+00
  %4550 = fmul fast float %4441, 2.000000e+00
  %4551 = fadd fast float %4550, -1.000000e+00
  %4552 = call float @dx.op.unary.f32(i32 6, float %4551)  ; FAbs(value)
  %4553 = fmul fast float %4552, %4430
  %4554 = fsub fast float %4553, %4430
  %4555 = call float @dx.op.unary.f32(i32 7, float %4554)  ; Saturate(value)
  %4556 = fmul fast float %4448, 2.000000e+00
  %4557 = fadd fast float %4556, -1.000000e+00
  %4558 = call float @dx.op.unary.f32(i32 6, float %4557)  ; FAbs(value)
  %4559 = fmul fast float %4558, %4431
  %4560 = fsub fast float %4559, %4431
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = fmul fast float %4460, %4393
  %4563 = fsub fast float %4562, %4393
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fmul fast float %4523, %4549
  %4566 = fmul fast float %4565, %4520
  %4567 = fmul fast float %4566, %4555
  %4568 = fmul fast float %4567, %4546
  %4569 = fmul fast float %4568, %4561
  %4570 = fmul fast float %4569, %4564
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4573 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4574 = fsub fast float %4477, %4573
  %4575 = fmul fast float %4574, %4572
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4577 = fmul fast float %4570, %4394
  %4578 = fadd fast float %4570, %4394
  %4579 = fmul fast float %4578, %4403
  %4580 = fsub fast float %4579, %4403
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = and i32 %4433, 128
  %4583 = icmp ne i32 %4582, 0
  %4584 = select i1 %4583, float %4581, float %4577
  %4585 = fmul fast float %4584, %4576
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = fcmp fast ugt float %4585, %4587
  br i1 %4588, label %4589, label %4482

; <label>:4589                                    ; preds = %4508
  %4590 = select i1 %4548, float %4585, float 0.000000e+00
  %4591 = fadd fast float %4590, %4352
  %4592 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  br i1 %4548, label %4482, label %4593

; <label>:4593                                    ; preds = %4589
  %4594 = and i32 %4433, 4
  %4595 = and i32 %4433, 8
  %4596 = add i32 %4389, 0
  %4597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4596, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4599 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4597, %dx.types.Handle %4598, float %4526, float %4529, float undef, float undef, i32 0, i32 0, i32 undef, float %4531, float %4533, float undef, float %4535, float %4537, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = extractvalue %dx.types.ResRet.f32 %4599, 3
  %4604 = bitcast float %4415 to i32
  %4605 = and i32 %4604, 255
  %4606 = uitofp i32 %4605 to float
  %4607 = lshr i32 %4604, 8
  %4608 = and i32 %4607, 255
  %4609 = uitofp i32 %4608 to float
  %4610 = fmul fast float %4603, %4606
  %4611 = fadd fast float %4610, %4609
  %4612 = fmul fast float %4611, 0x3F70101000000000
  %4613 = add i32 %4390, 0
  %4614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4613, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4615 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4614, %dx.types.Handle %4598, float %4526, float %4529, float undef, float undef, i32 0, i32 0, i32 undef, float %4531, float %4533, float undef, float %4535, float %4537, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4616 = extractvalue %dx.types.ResRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.ResRet.f32 %4615, 1
  %4618 = extractvalue %dx.types.ResRet.f32 %4615, 2
  %4619 = extractvalue %dx.types.ResRet.f32 %4615, 3
  %4620 = bitcast float %4409 to i32
  %4621 = and i32 %4620, 255
  %4622 = uitofp i32 %4621 to float
  %4623 = lshr i32 %4620, 8
  %4624 = and i32 %4623, 255
  %4625 = uitofp i32 %4624 to float
  %4626 = lshr i32 %4620, 16
  %4627 = and i32 %4626, 255
  %4628 = uitofp i32 %4627 to float
  %4629 = fmul fast float %4628, 0x3F70101000000000
  %4630 = fmul fast float %4616, %4622
  %4631 = fadd fast float %4630, %4625
  %4632 = fmul fast float %4631, 0x3F70101000000000
  %4633 = fadd fast float %4617, -5.000000e-01
  %4634 = fadd fast float %4619, -5.000000e-01
  %4635 = fmul fast float %4633, %4629
  %4636 = fmul fast float %4634, %4629
  %4637 = fadd fast float %4635, 5.000000e-01
  %4638 = fadd fast float %4636, 5.000000e-01
  %4639 = fmul fast float %4600, %4418
  %4640 = fmul fast float %4601, %4419
  %4641 = fmul fast float %4602, %4420
  %4642 = fmul fast float %4637, 2.000000e+00
  %4643 = fadd fast float %4642, -1.000000e+00
  %4644 = fmul fast float %4638, 2.000000e+00
  %4645 = fadd fast float %4644, -1.000000e+00
  %4646 = fadd fast float %4643, %4645
  %4647 = fmul fast float %4646, 5.000000e-01
  %4648 = fsub fast float %4643, %4645
  %4649 = fmul fast float %4648, 5.000000e-01
  %4650 = call float @dx.op.unary.f32(i32 6, float %4647)  ; FAbs(value)
  %4651 = fsub fast float 1.000000e+00, %4650
  %4652 = call float @dx.op.unary.f32(i32 6, float %4649)  ; FAbs(value)
  %4653 = fsub fast float %4651, %4652
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4649, float %4653, float %4647, float %4649, float %4653)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = call float @dx.op.unary.f32(i32 25, float %4654)  ; Rsqrt(value)
  %4656 = fmul fast float %4647, %4655
  %4657 = fmul fast float %4649, %4655
  %4658 = fmul fast float %4655, %4653
  %4659 = fmul fast float %4658, %4383
  %4660 = fmul fast float %4658, %4384
  %4661 = fmul fast float %4658, %4385
  %4662 = fmul fast float %4656, %4406
  %4663 = fmul fast float %4656, %4407
  %4664 = fmul fast float %4656, %4408
  %4665 = fadd fast float %4662, %4659
  %4666 = fadd fast float %4663, %4660
  %4667 = fadd fast float %4664, %4661
  %4668 = fmul fast float %4657, %4412
  %4669 = fmul fast float %4657, %4413
  %4670 = fmul fast float %4657, %4414
  %4671 = fadd fast float %4665, %4668
  %4672 = fadd fast float %4666, %4669
  %4673 = fadd fast float %4667, %4670
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %4671, float %4672, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 25, float %4674)  ; Rsqrt(value)
  %4676 = fmul fast float %4671, %4675
  %4677 = fmul fast float %4672, %4675
  %4678 = fmul fast float %4673, %4675
  %4679 = icmp ne i32 %4595, 0
  %4680 = select i1 %4679, float 1.000000e+00, float 0.000000e+00
  %4681 = fmul fast float %4585, %4680
  %4682 = and i32 %4433, 1
  %4683 = icmp eq i32 %4682, 0
  br i1 %4683, label %4684, label %4688

; <label>:4684                                    ; preds = %4593
  %4685 = fsub fast float %4676, %4366
  %4686 = fsub fast float %4677, %4367
  %4687 = fsub fast float %4678, %4368
  br label %4688

; <label>:4688                                    ; preds = %4684, %4593
  %4689 = phi float [ %4685, %4684 ], [ %4676, %4593 ]
  %4690 = phi float [ %4686, %4684 ], [ %4677, %4593 ]
  %4691 = phi float [ %4687, %4684 ], [ %4678, %4593 ]
  %4692 = fmul float %4691, %4681
  %4693 = fmul float %4690, %4681
  %4694 = fmul float %4689, %4681
  %4695 = fadd fast float %4694, %4366
  %4696 = fadd fast float %4693, %4367
  %4697 = fadd fast float %4692, %4368
  %4698 = icmp ne i32 %4594, 0
  %4699 = select i1 %4698, float 1.000000e+00, float 0.000000e+00
  %4700 = fmul fast float %4585, %4699
  %4701 = fsub fast float %4639, %4373
  %4702 = fsub fast float %4640, %4374
  %4703 = fsub fast float %4641, %4375
  %4704 = fmul fast float %4701, %4700
  %4705 = fmul fast float %4702, %4700
  %4706 = fmul fast float %4703, %4700
  %4707 = fadd fast float %4704, %4373
  %4708 = fadd fast float %4705, %4374
  %4709 = fadd fast float %4706, %4375
  %4710 = fsub fast float %4612, %4372
  %4711 = fmul fast float %4710, %4700
  %4712 = fadd fast float %4711, %4372
  %4713 = fmul fast float %4700, %4359
  %4714 = fsub fast float %4359, %4713
  %4715 = fmul fast float %4700, %4358
  %4716 = fsub fast float %4358, %4715
  %4717 = bitcast float %4427 to i32
  %4718 = lshr i32 %4717, 16
  %4719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4718)  ; LegacyF16ToF32(value)
  %4720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4721 = extractvalue %dx.types.ResRet.i32 %4720, 0
  %4722 = and i32 %4721, 1
  %4723 = icmp eq i32 %4722, 0
  br i1 %4723, label %4724, label %4749

; <label>:4724                                    ; preds = %4688
  %4725 = fadd fast float %4612, 0xBFB99999A0000000
  %4726 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4727 = fmul fast float %4726, 0x3FF1C71C80000000
  %4728 = fsub fast float 1.000000e+00, %4727
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fmul fast float %4729, %4639
  %4731 = fmul fast float %4729, %4640
  %4732 = fmul fast float %4729, %4641
  %4733 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4735 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4736 = call float @dx.op.binary.f32(i32 35, float %4734, float %4735)  ; FMax(a,b)
  %4737 = call float @dx.op.binary.f32(i32 35, float %4733, float %4736)  ; FMax(a,b)
  %4738 = fcmp fast ogt float %4737, 0.000000e+00
  %4739 = bitcast float %4737 to i32
  %4740 = sub nsw i32 2129859010, %4739
  %4741 = bitcast i32 %4740 to float
  %4742 = select i1 %4738, float %4741, float 0.000000e+00
  %4743 = fmul fast float %4733, %4719
  %4744 = fmul fast float %4734, %4719
  %4745 = fmul fast float %4735, %4719
  %4746 = fmul fast float %4743, %4742
  %4747 = fmul fast float %4744, %4742
  %4748 = fmul fast float %4745, %4742
  br label %4749

; <label>:4749                                    ; preds = %4724, %4688
  %4750 = phi float [ %4719, %4688 ], [ %4746, %4724 ]
  %4751 = phi float [ %4719, %4688 ], [ %4747, %4724 ]
  %4752 = phi float [ %4719, %4688 ], [ %4748, %4724 ]
  %4753 = fsub fast float %4750, %4360
  %4754 = fsub fast float %4751, %4361
  %4755 = fsub fast float %4752, %4362
  %4756 = fmul fast float %4753, %4700
  %4757 = fmul fast float %4754, %4700
  %4758 = fmul fast float %4755, %4700
  %4759 = fadd fast float %4756, %4360
  %4760 = fadd fast float %4757, %4361
  %4761 = fadd fast float %4758, %4362
  %4762 = fadd fast float %4585, %4371
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4764 = fsub fast float %4632, %4370
  %4765 = fmul fast float %4764, %4681
  %4766 = fadd fast float %4765, %4370
  %4767 = fsub fast float %4618, %4369
  %4768 = fmul fast float %4767, %4681
  %4769 = fadd fast float %4768, %4369
  br i1 %4683, label %4778, label %4770

; <label>:4770                                    ; preds = %4749
  %4771 = and i32 %4433, 32768
  %4772 = icmp eq i32 %4771, 0
  br i1 %4772, label %4788, label %4773

; <label>:4773                                    ; preds = %4770
  %4774 = fmul fast float %4681, 1.270000e+02
  %4775 = fadd fast float %4774, %4355
  %4776 = fadd fast float %4774, %4356
  %4777 = fadd fast float %4774, %4357
  br label %4788

; <label>:4778                                    ; preds = %4749
  %4779 = fsub fast float 1.270000e+02, %4355
  %4780 = fsub fast float 1.270000e+02, %4356
  %4781 = fsub fast float 1.270000e+02, %4357
  %4782 = fmul fast float %4681, %4779
  %4783 = fmul fast float %4681, %4780
  %4784 = fmul fast float %4681, %4781
  %4785 = fadd fast float %4782, %4355
  %4786 = fadd fast float %4783, %4356
  %4787 = fadd fast float %4784, %4357
  br label %4788

; <label>:4788                                    ; preds = %4778, %4773, %4770
  %4789 = phi float [ %4775, %4773 ], [ %4355, %4770 ], [ %4785, %4778 ]
  %4790 = phi float [ %4776, %4773 ], [ %4356, %4770 ], [ %4786, %4778 ]
  %4791 = phi float [ %4777, %4773 ], [ %4357, %4770 ], [ %4787, %4778 ]
  %4792 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4640, float %4641, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 0
  %4795 = extractvalue %dx.types.CBufRet.f32 %4793, 1
  %4796 = fmul fast float %4795, %4792
  %4797 = fadd fast float %4796, %4794
  %4798 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4799 = bitcast float %4421 to i32
  %4800 = and i32 %4799, 65535
  %4801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4800)  ; LegacyF16ToF32(value)
  %4802 = lshr i32 %4799, 16
  %4803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4802)  ; LegacyF16ToF32(value)
  %4804 = fcmp fast oge float %4801, 0.000000e+00
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 0
  %4807 = select i1 %4804, float %4801, float %4806
  %4808 = fadd fast float %4807, %4803
  %4809 = fsub fast float %4798, %4354
  %4810 = fmul fast float %4809, %4585
  %4811 = fadd fast float %4810, %4354
  %4812 = fmul fast float %4808, %4585
  %4813 = call float @dx.op.binary.f32(i32 35, float %4353, float %4812)  ; FMax(a,b)
  %4814 = and i32 %4433, 16
  %4815 = icmp eq i32 %4814, 0
  br i1 %4815, label %4837, label %4816

; <label>:4816                                    ; preds = %4788
  %4817 = add i32 %4424, 0
  %4818 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4817, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4819 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4818, %dx.types.Handle %4598, float %4526, float %4529, float undef, float undef, i32 0, i32 0, i32 undef, float %4531, float %4533, float undef, float %4535, float %4537, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4820 = extractvalue %dx.types.ResRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.ResRet.f32 %4819, 1
  %4822 = extractvalue %dx.types.ResRet.f32 %4819, 2
  %4823 = and i32 %4717, 65535
  %4824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4823)  ; LegacyF16ToF32(value)
  %4825 = fmul fast float %4820, %4418
  %4826 = fmul fast float %4821, %4419
  %4827 = fmul fast float %4822, %4420
  %4828 = and i32 %4433, 16384
  %4829 = icmp ne i32 %4828, 0
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4832 = select i1 %4829, float %4831, float 1.000000e+00
  %4833 = fmul fast float %4832, %4824
  %4834 = fmul fast float %4825, %4833
  %4835 = fmul fast float %4826, %4833
  %4836 = fmul fast float %4827, %4833
  br label %4837

; <label>:4837                                    ; preds = %4816, %4788
  %4838 = phi float [ %4834, %4816 ], [ 0.000000e+00, %4788 ]
  %4839 = phi float [ %4835, %4816 ], [ 0.000000e+00, %4788 ]
  %4840 = phi float [ %4836, %4816 ], [ 0.000000e+00, %4788 ]
  %4841 = fsub fast float %4838, %4363
  %4842 = fsub fast float %4839, %4364
  %4843 = fsub fast float %4840, %4365
  %4844 = fmul fast float %4841, %4585
  %4845 = fmul fast float %4842, %4585
  %4846 = fmul fast float %4843, %4585
  %4847 = fadd fast float %4844, %4363
  %4848 = fadd fast float %4845, %4364
  %4849 = fadd fast float %4846, %4365
  br label %4482

; <label>:4850                                    ; preds = %4482
  br label %4851

; <label>:4851                                    ; preds = %4850, %4296
  %4852 = phi float [ 0.000000e+00, %4296 ], [ %4483, %4850 ]
  %4853 = phi float [ %4265, %4296 ], [ %4484, %4850 ]
  %4854 = phi float [ %4263, %4296 ], [ %4485, %4850 ]
  %4855 = phi float [ %4255, %4296 ], [ %4486, %4850 ]
  %4856 = phi float [ %4256, %4296 ], [ %4487, %4850 ]
  %4857 = phi float [ %4257, %4296 ], [ %4488, %4850 ]
  %4858 = phi float [ %4262, %4296 ], [ %4489, %4850 ]
  %4859 = phi float [ 0.000000e+00, %4296 ], [ %4490, %4850 ]
  %4860 = phi float [ %4252, %4296 ], [ %4491, %4850 ]
  %4861 = phi float [ %4253, %4296 ], [ %4492, %4850 ]
  %4862 = phi float [ %4254, %4296 ], [ %4493, %4850 ]
  %4863 = phi float [ %4249, %4296 ], [ %4494, %4850 ]
  %4864 = phi float [ %4250, %4296 ], [ %4495, %4850 ]
  %4865 = phi float [ %4251, %4296 ], [ %4496, %4850 ]
  %4866 = phi float [ %4291, %4296 ], [ %4497, %4850 ]
  %4867 = phi float [ %4292, %4296 ], [ %4498, %4850 ]
  %4868 = phi float [ %4293, %4296 ], [ %4499, %4850 ]
  %4869 = phi float [ %4260, %4296 ], [ %4500, %4850 ]
  %4870 = phi float [ %4259, %4296 ], [ %4501, %4850 ]
  %4871 = phi float [ 0.000000e+00, %4296 ], [ %4502, %4850 ]
  %4872 = phi float [ %4258, %4296 ], [ %4503, %4850 ]
  %4873 = phi float [ %4246, %4296 ], [ %4504, %4850 ]
  %4874 = phi float [ %4247, %4296 ], [ %4505, %4850 ]
  %4875 = phi float [ %4248, %4296 ], [ %4506, %4850 ]
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4866, float %4867, float %4868, float %4866, float %4867, float %4868)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = call float @dx.op.unary.f32(i32 25, float %4876)  ; Rsqrt(value)
  %4878 = fmul fast float %4877, %4866
  %4879 = fmul fast float %4877, %4867
  %4880 = fmul fast float %4877, %4868
  %4881 = fadd fast float %4871, %1012
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %4878, float %4879, float %4880)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = call float @dx.op.unary.f32(i32 25, float %4883)  ; Rsqrt(value)
  %4885 = fmul fast float %4884, %4878
  %4886 = fmul fast float %4884, %4879
  %4887 = fmul fast float %4884, %4880
  br label %4888

; <label>:4888                                    ; preds = %4851, %4243
  %4889 = phi float [ %4885, %4851 ], [ %4291, %4243 ]
  %4890 = phi float [ %4886, %4851 ], [ %4292, %4243 ]
  %4891 = phi float [ %4887, %4851 ], [ %4293, %4243 ]
  %4892 = phi float [ %4873, %4851 ], [ %4246, %4243 ]
  %4893 = phi float [ %4874, %4851 ], [ %4247, %4243 ]
  %4894 = phi float [ %4875, %4851 ], [ %4248, %4243 ]
  %4895 = phi float [ %4855, %4851 ], [ %4255, %4243 ]
  %4896 = phi float [ %4856, %4851 ], [ %4256, %4243 ]
  %4897 = phi float [ %4857, %4851 ], [ %4257, %4243 ]
  %4898 = phi float [ %4860, %4851 ], [ %4252, %4243 ]
  %4899 = phi float [ %4861, %4851 ], [ %4253, %4243 ]
  %4900 = phi float [ %4862, %4851 ], [ %4254, %4243 ]
  %4901 = phi float [ %4863, %4851 ], [ %4249, %4243 ]
  %4902 = phi float [ %4864, %4851 ], [ %4250, %4243 ]
  %4903 = phi float [ %4865, %4851 ], [ %4251, %4243 ]
  %4904 = phi float [ %4872, %4851 ], [ %4258, %4243 ]
  %4905 = phi float [ %4882, %4851 ], [ %1012, %4243 ]
  %4906 = phi float [ %4870, %4851 ], [ %4259, %4243 ]
  %4907 = phi float [ %4869, %4851 ], [ %4260, %4243 ]
  %4908 = phi float [ %4859, %4851 ], [ 0.000000e+00, %4243 ]
  %4909 = phi float [ %4858, %4851 ], [ %4262, %4243 ]
  %4910 = phi float [ %4852, %4851 ], [ 0.000000e+00, %4243 ]
  %4911 = phi float [ %4853, %4851 ], [ %4265, %4243 ]
  %4912 = phi float [ %4854, %4851 ], [ %4263, %4243 ]
  %4913 = fadd fast float %4904, 0xBFB99999A0000000
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = fmul fast float %4914, 0x3FF1C71C80000000
  %4916 = call float @dx.op.binary.f32(i32 36, float %4904, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4917 = fsub fast float 1.000000e+00, %4915
  %4918 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4919 = fmul fast float %4918, %4892
  %4920 = fmul fast float %4918, %4893
  %4921 = fmul fast float %4918, %4894
  %4922 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4924 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4925 = fmul fast float %4915, %4892
  %4926 = fmul fast float %4915, %4893
  %4927 = fmul fast float %4915, %4894
  %4928 = fadd fast float %4925, %4916
  %4929 = fadd fast float %4926, %4916
  %4930 = fadd fast float %4927, %4916
  %4931 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4932 = call float @dx.op.unary.f32(i32 7, float %4929)  ; Saturate(value)
  %4933 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4936 = extractvalue %dx.types.ResRet.i32 %4935, 0
  %4937 = and i32 %4936, 1
  %4938 = icmp eq i32 %4937, 0
  br i1 %4938, label %4953, label %4939

; <label>:4939                                    ; preds = %4888
  %4940 = call float @dx.op.binary.f32(i32 35, float %4923, float %4924)  ; FMax(a,b)
  %4941 = call float @dx.op.binary.f32(i32 35, float %4922, float %4940)  ; FMax(a,b)
  %4942 = fcmp fast ogt float %4941, 0.000000e+00
  %4943 = bitcast float %4941 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = select i1 %4942, float %4945, float 0.000000e+00
  %4947 = fmul fast float %4922, %4898
  %4948 = fmul fast float %4923, %4899
  %4949 = fmul fast float %4924, %4900
  %4950 = fmul fast float %4947, %4946
  %4951 = fmul fast float %4948, %4946
  %4952 = fmul fast float %4949, %4946
  br label %4953

; <label>:4953                                    ; preds = %4939, %4888
  %4954 = phi float [ %4950, %4939 ], [ %4898, %4888 ]
  %4955 = phi float [ %4951, %4939 ], [ %4899, %4888 ]
  %4956 = phi float [ %4952, %4939 ], [ %4900, %4888 ]
  %4957 = call float @dx.op.binary.f32(i32 36, float %4895, float 1.270000e+02)  ; FMin(a,b)
  %4958 = call float @dx.op.binary.f32(i32 36, float %4896, float 1.270000e+02)  ; FMin(a,b)
  %4959 = call float @dx.op.binary.f32(i32 36, float %4897, float 1.270000e+02)  ; FMin(a,b)
  %4960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.i32 %4960, 3
  %4962 = and i32 %4961, 8
  %4963 = icmp ne i32 %4962, 0
  %4964 = call float @dx.op.binary.f32(i32 35, float %4922, float %4892)  ; FMax(a,b)
  %4965 = call float @dx.op.binary.f32(i32 35, float %4923, float %4892)  ; FMax(a,b)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4924, float %4892)  ; FMax(a,b)
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4922, float %4923, float %4924, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = select i1 %176, float %4892, float %4922
  %4969 = select i1 %176, float %4967, float %4923
  %4970 = select i1 %176, float 1.000000e+00, float %4924
  %4971 = select i1 %4963, float %4964, float %4968
  %4972 = select i1 %4963, float %4965, float %4969
  %4973 = select i1 %4963, float %4966, float %4970
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4954, float %4955, float %4956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = select i1 %176, float %4974, float %4954
  %4976 = select i1 %176, float %4974, float %4955
  %4977 = select i1 %176, float %4974, float %4956
  %4978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4978, 0
  %4980 = extractvalue %dx.types.CBufRet.f32 %4978, 1
  %4981 = extractvalue %dx.types.CBufRet.f32 %4978, 2
  %4982 = fadd fast float %4979, %134
  %4983 = fadd fast float %4980, %135
  %4984 = fadd fast float %4981, %136
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = extractvalue %dx.types.CBufRet.f32 %4985, 1
  %4988 = fsub fast float %4982, %4986
  %4989 = fsub fast float %4983, %4987
  %4990 = fmul fast float %4988, %4988
  %4991 = fmul fast float %4989, %4989
  %4992 = fadd fast float %4990, %4991
  %4993 = call float @dx.op.unary.f32(i32 24, float %4992)  ; Sqrt(value)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4985, 2
  %4995 = fcmp fast olt float %4993, %4994
  br i1 %4995, label %4996, label %5063

; <label>:4996                                    ; preds = %4953
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.CBufRet.f32 %4997, 1
  %5004 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5005 = extractvalue %dx.types.CBufRet.f32 %5001, 1
  %5006 = extractvalue %dx.types.CBufRet.f32 %4997, 3
  %5007 = extractvalue %dx.types.CBufRet.f32 %4999, 3
  %5008 = extractvalue %dx.types.CBufRet.f32 %5001, 3
  %5009 = fadd fast float %5006, %4982
  %5010 = fadd fast float %5007, %4983
  %5011 = fadd fast float %5008, %4984
  %5012 = fmul fast float %5009, %4998
  %5013 = call float @dx.op.tertiary.f32(i32 46, float %5010, float %5000, float %5012)  ; FMad(a,b,c)
  %5014 = call float @dx.op.tertiary.f32(i32 46, float %5011, float %5002, float %5013)  ; FMad(a,b,c)
  %5015 = fmul fast float %5009, %5003
  %5016 = call float @dx.op.tertiary.f32(i32 46, float %5010, float %5004, float %5015)  ; FMad(a,b,c)
  %5017 = call float @dx.op.tertiary.f32(i32 46, float %5011, float %5005, float %5016)  ; FMad(a,b,c)
  %5018 = fsub fast float %5014, %5006
  %5019 = fsub fast float %5017, %5007
  %5020 = fsub fast float %5018, %4986
  %5021 = fadd fast float %5020, %4994
  %5022 = fsub fast float %5019, %4987
  %5023 = fadd fast float %5022, %4994
  %5024 = extractvalue %dx.types.CBufRet.f32 %4985, 3
  %5025 = fmul fast float %5021, %5024
  %5026 = fmul fast float %5023, %5024
  %5027 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5028 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5029 = fsub fast float 1.000000e+00, %5027
  %5030 = fsub fast float 1.000000e+00, %5028
  %5031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %5029, float %5030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = fcmp fast ugt float %5032, 0.000000e+00
  br i1 %5033, label %5034, label %5337

; <label>:5034                                    ; preds = %4996
  %5035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.f32 %5035, 2
  %5037 = fmul fast float %5036, %5032
  %5038 = extractvalue %dx.types.CBufRet.f32 %5035, 3
  %5039 = fadd fast float %5038, %5037
  %5040 = extractvalue %dx.types.CBufRet.f32 %5001, 2
  %5041 = fadd fast float %5039, %5008
  %5042 = fmul fast float %5014, %5002
  %5043 = call float @dx.op.tertiary.f32(i32 46, float %5017, float %5005, float %5042)  ; FMad(a,b,c)
  %5044 = call float @dx.op.tertiary.f32(i32 46, float %5041, float %5040, float %5043)  ; FMad(a,b,c)
  %5045 = fsub fast float %5044, %5008
  %5046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.f32 %5046, 2
  %5048 = fsub fast float %5045, %5047
  %5049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %5029, float %5030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5050 = extractvalue %dx.types.ResRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.ResRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.ResRet.f32 %5049, 2
  %5053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %5029, float %5030, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5054 = extractvalue %dx.types.ResRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.ResRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.ResRet.f32 %5053, 2
  %5057 = fadd fast float %5054, %5050
  %5058 = fmul fast float %5057, 0x3F847AE140000000
  %5059 = fadd fast float %5055, %5051
  %5060 = fmul fast float %5059, 0x3F847AE140000000
  %5061 = fadd fast float %5056, %5052
  %5062 = fmul fast float %5061, 0x3F847AE140000000
  br label %5337

; <label>:5063                                    ; preds = %4953
  %5064 = and i32 %152, 1
  %5065 = icmp eq i32 %5064, 0
  br i1 %5065, label %5337, label %5066

; <label>:5066                                    ; preds = %5063
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 0
  %5071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5072 = extractvalue %dx.types.CBufRet.f32 %5071, 0
  %5073 = extractvalue %dx.types.CBufRet.f32 %5067, 1
  %5074 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5075 = extractvalue %dx.types.CBufRet.f32 %5071, 1
  %5076 = extractvalue %dx.types.CBufRet.f32 %5067, 3
  %5077 = extractvalue %dx.types.CBufRet.f32 %5069, 3
  %5078 = extractvalue %dx.types.CBufRet.f32 %5071, 3
  %5079 = fadd fast float %5076, %4982
  %5080 = fadd fast float %5077, %4983
  %5081 = fadd fast float %5078, %4984
  %5082 = fmul fast float %5079, %5068
  %5083 = call float @dx.op.tertiary.f32(i32 46, float %5080, float %5070, float %5082)  ; FMad(a,b,c)
  %5084 = call float @dx.op.tertiary.f32(i32 46, float %5081, float %5072, float %5083)  ; FMad(a,b,c)
  %5085 = fmul fast float %5079, %5073
  %5086 = call float @dx.op.tertiary.f32(i32 46, float %5080, float %5074, float %5085)  ; FMad(a,b,c)
  %5087 = call float @dx.op.tertiary.f32(i32 46, float %5081, float %5075, float %5086)  ; FMad(a,b,c)
  %5088 = fsub fast float %5084, %5076
  %5089 = fsub fast float %5087, %5077
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.CBufRet.f32 %5090, 1
  %5093 = extractvalue %dx.types.CBufRet.f32 %5090, 2
  %5094 = extractvalue %dx.types.CBufRet.f32 %5090, 3
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 3
  %5097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.i32 %5097, 0
  %5099 = extractvalue %dx.types.CBufRet.i32 %5097, 1
  %5100 = udiv i32 %5099, %5098
  %5101 = fsub fast float %5088, %5091
  %5102 = fsub fast float %5089, %5092
  %5103 = call float @dx.op.binary.f32(i32 35, float %5101, float 0.000000e+00)  ; FMax(a,b)
  %5104 = call float @dx.op.binary.f32(i32 35, float %5102, float 0.000000e+00)  ; FMax(a,b)
  %5105 = call float @dx.op.binary.f32(i32 36, float %5103, float %5093)  ; FMin(a,b)
  %5106 = call float @dx.op.binary.f32(i32 36, float %5104, float %5094)  ; FMin(a,b)
  %5107 = add i32 %5098, -1
  %5108 = add i32 %5100, -1
  %5109 = fmul fast float %5105, %5096
  %5110 = fmul fast float %5106, %5096
  %5111 = fptoui float %5109 to i32
  %5112 = fptoui float %5110 to i32
  %5113 = call i32 @dx.op.binary.i32(i32 40, i32 %5111, i32 %5107)  ; UMin(a,b)
  %5114 = call i32 @dx.op.binary.i32(i32 40, i32 %5112, i32 %5108)  ; UMin(a,b)
  %5115 = mul i32 %5114, %5098
  %5116 = add i32 %5115, %5113
  %5117 = shl i32 %5116, 2
  %5118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5117, i32 undef)  ; BufferLoad(srv,index,wot)
  %5119 = extractvalue %dx.types.ResRet.i32 %5118, 0
  %5120 = icmp eq i32 %5119, -1
  br i1 %5120, label %5337, label %5121

; <label>:5121                                    ; preds = %5066
  %5122 = mul i32 %5119, 148
  %5123 = add i32 %5122, 4
  %5124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5123, i32 undef)  ; BufferLoad(srv,index,wot)
  %5125 = extractvalue %dx.types.ResRet.f32 %5124, 0
  %5126 = add i32 %5122, 8
  %5127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5126, i32 undef)  ; BufferLoad(srv,index,wot)
  %5128 = extractvalue %dx.types.ResRet.f32 %5127, 0
  %5129 = add i32 %5122, 36
  %5130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5129, i32 undef)  ; BufferLoad(srv,index,wot)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 0
  %5132 = add i32 %5122, 60
  %5133 = add i32 %5122, 92
  %5134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5133, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.i32 %5134, 0
  %5136 = add i32 %5122, 116
  %5137 = fsub fast float %5088, %5125
  %5138 = fsub fast float %5089, %5128
  %5139 = fmul fast float %5096, %5137
  %5140 = fmul fast float %5096, %5138
  %5141 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5142 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5143 = fsub fast float 1.000000e+00, %5142
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5146 = call float @dx.op.unary.f32(i32 83, float %5141)  ; DerivCoarseX(value)
  %5147 = call float @dx.op.unary.f32(i32 83, float %5143)  ; DerivCoarseX(value)
  %5148 = call float @dx.op.unary.f32(i32 84, float %5141)  ; DerivCoarseY(value)
  %5149 = call float @dx.op.unary.f32(i32 84, float %5143)  ; DerivCoarseY(value)
  %5150 = fmul fast float %5146, %5145
  %5151 = fmul fast float %5147, %5145
  %5152 = fmul fast float %5148, %5145
  %5153 = fmul fast float %5149, %5145
  %5154 = call float @dx.op.dot2.f32(i32 54, float %5152, float %5153, float %5152, float %5153)  ; Dot2(ax,ay,bx,by)
  %5155 = call float @dx.op.dot2.f32(i32 54, float %5150, float %5151, float %5150, float %5151)  ; Dot2(ax,ay,bx,by)
  %5156 = call float @dx.op.binary.f32(i32 35, float %5155, float %5154)  ; FMax(a,b)
  %5157 = call float @dx.op.unary.f32(i32 23, float %5156)  ; Log(value)
  %5158 = fmul fast float %5157, 5.000000e-01
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5161 = fadd fast float %5160, %5158
  %5162 = call float @dx.op.binary.f32(i32 35, float %5161, float 0.000000e+00)  ; FMax(a,b)
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 3
  %5165 = fadd fast float %5164, %5162
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 3
  %5168 = fadd fast float %5165, %5167
  %5169 = add i32 %5135, 0
  %5170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5169, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5171 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5170, i32 0)  ; GetDimensions(handle,mipLevel)
  %5172 = extractvalue %dx.types.Dimensions %5171, 0
  %5173 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5172)  ; FirstbitLo(value)
  %5174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.i32 %5174, 1
  %5176 = sub nsw i32 %5175, %5173
  %5177 = sitofp i32 %5176 to float
  %5178 = fsub fast float %5168, %5177
  %5179 = call float @dx.op.binary.f32(i32 35, float %5178, float 0.000000e+00)  ; FMax(a,b)
  %5180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5170, %dx.types.Handle %27, float %5141, float %5143, float %5131, float undef, i32 0, i32 0, i32 undef, float %5179)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5181 = extractvalue %dx.types.ResRet.f32 %5180, 0
  %5182 = fcmp ule float %5181, 0x3FE0101020000000
  %5183 = extractvalue %dx.types.CBufRet.i32 %5174, 0
  %5184 = and i32 %5183, 128
  %5185 = icmp ne i32 %5184, 0
  %5186 = and i1 %5182, %5185
  br i1 %5186, label %5337, label %5187

; <label>:5187                                    ; preds = %5121
  %5188 = add i32 %5122, 20
  %5189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5188, i32 undef)  ; BufferLoad(srv,index,wot)
  %5190 = extractvalue %dx.types.ResRet.f32 %5189, 0
  %5191 = add i32 %5122, 24
  %5192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5191, i32 undef)  ; BufferLoad(srv,index,wot)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = add i32 %5122, 40
  %5195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5194, i32 undef)  ; BufferLoad(srv,index,wot)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = add i32 %5122, 96
  %5198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5197, i32 undef)  ; BufferLoad(srv,index,wot)
  %5199 = extractvalue %dx.types.ResRet.i32 %5198, 0
  %5200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.f32 %5200, 2
  %5202 = fmul fast float %5201, %5141
  %5203 = fmul fast float %5201, %5143
  %5204 = extractvalue %dx.types.CBufRet.f32 %5200, 3
  %5205 = fadd fast float %5202, %5204
  %5206 = fadd fast float %5203, %5204
  %5207 = add i32 %5199, 0
  %5208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5207, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5209 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5208, i32 0)  ; GetDimensions(handle,mipLevel)
  %5210 = extractvalue %dx.types.Dimensions %5209, 0
  %5211 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5210)  ; FirstbitLo(value)
  %5212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5213 = extractvalue %dx.types.CBufRet.i32 %5212, 1
  %5214 = sub nsw i32 %5213, %5211
  %5215 = sitofp i32 %5214 to float
  %5216 = fsub fast float %5165, %5215
  %5217 = call float @dx.op.binary.f32(i32 35, float %5216, float 0.000000e+00)  ; FMax(a,b)
  %5218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5208, %dx.types.Handle %27, float %5205, float %5206, float %5196, float undef, i32 0, i32 0, i32 undef, float %5217)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5219 = extractvalue %dx.types.ResRet.f32 %5218, 0
  %5220 = fmul fast float %5219, %5190
  %5221 = fadd fast float %5220, %5193
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.CBufRet.f32 %5222, 1
  %5225 = extractvalue %dx.types.CBufRet.f32 %5222, 2
  %5226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5227 = extractvalue %dx.types.CBufRet.f32 %5226, 3
  %5228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5229 = extractvalue %dx.types.CBufRet.f32 %5228, 3
  %5230 = extractvalue %dx.types.CBufRet.f32 %5222, 3
  %5231 = fadd fast float %5227, %5088
  %5232 = fadd fast float %5229, %5089
  %5233 = fadd fast float %5221, %5230
  %5234 = fmul fast float %5231, %5223
  %5235 = call float @dx.op.tertiary.f32(i32 46, float %5232, float %5224, float %5234)  ; FMad(a,b,c)
  %5236 = call float @dx.op.tertiary.f32(i32 46, float %5233, float %5225, float %5235)  ; FMad(a,b,c)
  %5237 = fsub fast float %5236, %5230
  %5238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5239 = extractvalue %dx.types.CBufRet.f32 %5238, 2
  %5240 = fsub fast float %5237, %5239
  %5241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.i32 %5241, 0
  %5243 = call i32 @dx.op.binary.i32(i32 40, i32 %5119, i32 %5242)  ; UMin(a,b)
  %5244 = mul i32 %5243, 36
  %5245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5244, i32 undef)  ; BufferLoad(srv,index,wot)
  %5246 = extractvalue %dx.types.ResRet.i32 %5245, 0
  %5247 = add i32 %5244, 4
  %5248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5249 = extractvalue %dx.types.CBufRet.f32 %5248, 0
  %5250 = fmul fast float %5249, %5141
  %5251 = fmul fast float %5249, %5143
  %5252 = extractvalue %dx.types.CBufRet.f32 %5248, 1
  %5253 = fadd fast float %5250, %5252
  %5254 = fadd fast float %5251, %5252
  %5255 = icmp eq i32 %5246, 0
  br i1 %5255, label %5324, label %5256

; <label>:5256                                    ; preds = %5187
  br label %5257

; <label>:5257                                    ; preds = %5314, %5256
  %5258 = phi float [ %5315, %5314 ], [ 0.000000e+00, %5256 ]
  %5259 = phi float [ %5316, %5314 ], [ 0.000000e+00, %5256 ]
  %5260 = phi float [ %5317, %5314 ], [ 0.000000e+00, %5256 ]
  %5261 = phi float [ %5318, %5314 ], [ 0.000000e+00, %5256 ]
  %5262 = phi float [ %5319, %5314 ], [ 0.000000e+00, %5256 ]
  %5263 = phi float [ %5320, %5314 ], [ 0.000000e+00, %5256 ]
  %5264 = phi i32 [ %5321, %5314 ], [ 0, %5256 ]
  %5265 = shl i32 %5264, 2
  %5266 = add i32 %5132, %5265
  %5267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5266, i32 undef)  ; BufferLoad(srv,index,wot)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = add i32 %5136, %5265
  %5270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5269, i32 undef)  ; BufferLoad(srv,index,wot)
  %5271 = extractvalue %dx.types.ResRet.i32 %5270, 0
  %5272 = add i32 %5271, 0
  %5273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5272, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5274 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5273, i32 0)  ; GetDimensions(handle,mipLevel)
  %5275 = extractvalue %dx.types.Dimensions %5274, 0
  %5276 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5275)  ; FirstbitLo(value)
  %5277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.i32 %5277, 1
  %5279 = sub nsw i32 %5278, %5276
  %5280 = sitofp i32 %5279 to float
  %5281 = fsub fast float %5165, %5280
  %5282 = call float @dx.op.binary.f32(i32 35, float %5281, float 0.000000e+00)  ; FMax(a,b)
  %5283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5273, %dx.types.Handle %27, float %5253, float %5254, float %5268, float undef, i32 0, i32 0, i32 undef, float %5282)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  %5285 = fcmp fast ogt float %5284, 0.000000e+00
  br i1 %5285, label %5286, label %5314

; <label>:5286                                    ; preds = %5257
  %5287 = add i32 %5247, %5265
  %5288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.i32 %5288, 0
  %5290 = and i32 %5289, 32767
  %5291 = mul nuw nsw i32 %5290, 928
  %5292 = add nuw nsw i32 %5291, 48
  %5293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5294 = extractvalue %dx.types.ResRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.ResRet.f32 %5293, 1
  %5296 = extractvalue %dx.types.ResRet.f32 %5293, 2
  %5297 = add nuw nsw i32 %5291, 60
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = fmul fast float %5294, %5284
  %5303 = fmul fast float %5295, %5284
  %5304 = fmul fast float %5296, %5284
  %5305 = fadd fast float %5302, %5258
  %5306 = fadd fast float %5303, %5259
  %5307 = fadd fast float %5304, %5260
  %5308 = fmul fast float %5299, %5284
  %5309 = fmul fast float %5300, %5284
  %5310 = fmul fast float %5301, %5284
  %5311 = fadd fast float %5308, %5261
  %5312 = fadd fast float %5309, %5262
  %5313 = fadd fast float %5310, %5263
  br label %5314

; <label>:5314                                    ; preds = %5286, %5257
  %5315 = phi float [ %5305, %5286 ], [ %5258, %5257 ]
  %5316 = phi float [ %5306, %5286 ], [ %5259, %5257 ]
  %5317 = phi float [ %5307, %5286 ], [ %5260, %5257 ]
  %5318 = phi float [ %5311, %5286 ], [ %5261, %5257 ]
  %5319 = phi float [ %5312, %5286 ], [ %5262, %5257 ]
  %5320 = phi float [ %5313, %5286 ], [ %5263, %5257 ]
  %5321 = add nuw i32 %5264, 1
  %5322 = icmp eq i32 %5321, %5246
  br i1 %5322, label %5323, label %5257

; <label>:5323                                    ; preds = %5314
  br label %5324

; <label>:5324                                    ; preds = %5323, %5187
  %5325 = phi float [ 0.000000e+00, %5187 ], [ %5315, %5323 ]
  %5326 = phi float [ 0.000000e+00, %5187 ], [ %5316, %5323 ]
  %5327 = phi float [ 0.000000e+00, %5187 ], [ %5317, %5323 ]
  %5328 = phi float [ 0.000000e+00, %5187 ], [ %5318, %5323 ]
  %5329 = phi float [ 0.000000e+00, %5187 ], [ %5319, %5323 ]
  %5330 = phi float [ 0.000000e+00, %5187 ], [ %5320, %5323 ]
  %5331 = fadd fast float %5328, %5325
  %5332 = fmul fast float %5331, 0x3F847AE140000000
  %5333 = fadd fast float %5329, %5326
  %5334 = fmul fast float %5333, 0x3F847AE140000000
  %5335 = fadd fast float %5330, %5327
  %5336 = fmul fast float %5335, 0x3F847AE140000000
  br label %5337

; <label>:5337                                    ; preds = %5324, %5121, %5066, %5063, %5034, %4996
  %5338 = phi float [ %5048, %5034 ], [ -1.310720e+05, %4996 ], [ %5240, %5324 ], [ -1.310720e+05, %5066 ], [ -1.310720e+05, %5121 ], [ -1.310720e+05, %5063 ]
  %5339 = phi float [ %5058, %5034 ], [ 0.000000e+00, %4996 ], [ %5332, %5324 ], [ 0.000000e+00, %5066 ], [ 0.000000e+00, %5121 ], [ 0.000000e+00, %5063 ]
  %5340 = phi float [ %5060, %5034 ], [ 0.000000e+00, %4996 ], [ %5334, %5324 ], [ 0.000000e+00, %5066 ], [ 0.000000e+00, %5121 ], [ 0.000000e+00, %5063 ]
  %5341 = phi float [ %5062, %5034 ], [ 0.000000e+00, %4996 ], [ %5336, %5324 ], [ 0.000000e+00, %5066 ], [ 0.000000e+00, %5121 ], [ 0.000000e+00, %5063 ]
  %5342 = phi i1 [ true, %5034 ], [ false, %4996 ], [ true, %5324 ], [ false, %5066 ], [ false, %5121 ], [ false, %5063 ]
  %5343 = and i32 %152, 3
  %5344 = icmp eq i32 %5343, 1
  %5345 = select i1 %5344, float 1.000000e+00, float 0.000000e+00
  %5346 = fsub fast float %5338, %136
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = select i1 %5342, float %5347, float 1.000000e+00
  %5349 = fmul fast float %5348, %5345
  %5350 = icmp eq i32 %5343, 3
  %5351 = select i1 %5350, float 1.000000e+00, float %5349
  %5352 = call float @dx.op.binary.f32(i32 35, float %4910, float %5351)  ; FMax(a,b)
  %5353 = call float @dx.op.unary.f32(i32 7, float %5352)  ; Saturate(value)
  %5354 = fcmp fast une float %5353, 0.000000e+00
  %5355 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %5356 = call float @dx.op.unary.f32(i32 25, float %5355)  ; Rsqrt(value)
  br i1 %5354, label %5364, label %5357

; <label>:5357                                    ; preds = %5337
  %5358 = fmul fast float %5356, %134
  %5359 = fmul fast float %5356, %135
  %5360 = fmul fast float %5356, %136
  %5361 = fsub fast float -0.000000e+00, %5358
  %5362 = fsub fast float -0.000000e+00, %5359
  %5363 = fsub fast float -0.000000e+00, %5360
  br label %5532

; <label>:5364                                    ; preds = %5337
  %5365 = fmul fast float %134, %5356
  %5366 = fsub fast float -0.000000e+00, %5365
  %5367 = fmul fast float %135, %5356
  %5368 = fsub fast float -0.000000e+00, %5367
  %5369 = fmul fast float %136, %5356
  %5370 = fsub fast float -0.000000e+00, %5369
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5366, float %5368, float %5370, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fmul fast float %5353, 2.500000e+00
  %5373 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5374 = fmul fast float %5353, 0x4013FFFFE0000000
  %5375 = fadd fast float %5374, 0xBFFFFFFFE0000000
  %5376 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5377 = fmul fast float %5353, 0x4004000020000000
  %5378 = fadd fast float %5377, 0xBFF8000040000000
  %5379 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5380 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5381 = fmul fast float %4913, 1.000000e+01
  %5382 = call float @dx.op.unary.f32(i32 7, float %5381)  ; Saturate(value)
  %5383 = fmul fast float %5382, 2.000000e+00
  %5384 = fsub fast float 3.000000e+00, %5383
  %5385 = fmul fast float %5382, %5382
  %5386 = fmul fast float %5385, %5384
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fsub fast float 0x3FE3333340000000, %4934
  %5389 = fmul fast float %5388, 0x400AAAAAA0000000
  %5390 = call float @dx.op.unary.f32(i32 7, float %5389)  ; Saturate(value)
  %5391 = fmul fast float %5387, %5390
  %5392 = fmul fast float %4971, 0x3FEA2B8620000000
  %5393 = fmul fast float %4972, 0x3FEA2B8620000000
  %5394 = fmul fast float %4973, 0x3FEA2B8620000000
  %5395 = fadd fast float %5392, 0x3FC81DFBA0000000
  %5396 = fmul fast float %5395, %4971
  %5397 = fadd fast float %5396, 0x3F910E6020000000
  %5398 = fadd fast float %5393, 0x3FC81DFBA0000000
  %5399 = fmul fast float %5398, %4972
  %5400 = fadd fast float %5399, 0x3F910E6020000000
  %5401 = fadd fast float %5394, 0x3FC81DFBA0000000
  %5402 = fmul fast float %5401, %4973
  %5403 = fadd fast float %5402, 0x3F910E6020000000
  %5404 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5405 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5406 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5407 = fsub fast float %5404, %4971
  %5408 = fsub fast float %5405, %4972
  %5409 = fsub fast float %5406, %4973
  %5410 = fmul fast float %5407, %5380
  %5411 = fmul fast float %5410, %5391
  %5412 = fmul fast float %5408, %5380
  %5413 = fmul fast float %5412, %5391
  %5414 = fmul fast float %5409, %5380
  %5415 = fmul fast float %5414, %5391
  %5416 = fadd fast float %5411, %4971
  %5417 = fadd fast float %5413, %4972
  %5418 = fadd fast float %5415, %4973
  %5419 = fmul fast float %4907, %4907
  %5420 = fmul fast float %5419, %5419
  %5421 = fadd fast float %5376, 1.000000e+00
  %5422 = fsub fast float %5421, %5391
  %5423 = call float @dx.op.unary.f32(i32 7, float %5422)  ; Saturate(value)
  %5424 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = fsub fast float 1.000000e+00, %5420
  %5427 = call float @dx.op.binary.f32(i32 36, float %5423, float %5426)  ; FMin(a,b)
  %5428 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5429 = call float @dx.op.binary.f32(i32 35, float %5427, float %5428)  ; FMax(a,b)
  %5430 = fadd fast float %5425, 0xBFE4CCCCC0000000
  %5431 = fmul fast float %5430, 0x4006DB6DA0000000
  %5432 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5433 = fmul fast float %5432, 2.000000e+00
  %5434 = fsub fast float 3.000000e+00, %5433
  %5435 = bitcast float %4931 to i32
  %5436 = ashr i32 %5435, 1
  %5437 = add nsw i32 %5436, 532487669
  %5438 = bitcast i32 %5437 to float
  %5439 = fsub fast float 1.000000e+00, %5438
  %5440 = bitcast float %5439 to i32
  %5441 = sub nsw i32 2129859010, %5440
  %5442 = bitcast i32 %5441 to float
  %5443 = fmul fast float %5442, 2.000000e+00
  %5444 = bitcast float %4932 to i32
  %5445 = ashr i32 %5444, 1
  %5446 = add nsw i32 %5445, 532487669
  %5447 = bitcast i32 %5446 to float
  %5448 = fsub fast float 1.000000e+00, %5447
  %5449 = bitcast float %5448 to i32
  %5450 = sub nsw i32 2129859010, %5449
  %5451 = bitcast i32 %5450 to float
  %5452 = fmul fast float %5451, 2.000000e+00
  %5453 = bitcast float %4933 to i32
  %5454 = ashr i32 %5453, 1
  %5455 = add nsw i32 %5454, 532487669
  %5456 = bitcast i32 %5455 to float
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = bitcast float %5457 to i32
  %5459 = sub nsw i32 2129859010, %5458
  %5460 = bitcast i32 %5459 to float
  %5461 = fmul fast float %5460, 2.000000e+00
  %5462 = fsub fast float 0x4002A9FBE0000000, %5443
  %5463 = fadd fast float %5443, 0x3FD54FDF00000000
  %5464 = bitcast float %5463 to i32
  %5465 = sub nsw i32 2129859010, %5464
  %5466 = bitcast i32 %5465 to float
  %5467 = fmul fast float %5466, %5462
  %5468 = fmul fast float %5467, %5467
  %5469 = fsub fast float 0x4002A9FBE0000000, %5452
  %5470 = fadd fast float %5452, 0x3FD54FDF00000000
  %5471 = bitcast float %5470 to i32
  %5472 = sub nsw i32 2129859010, %5471
  %5473 = bitcast i32 %5472 to float
  %5474 = fmul fast float %5473, %5469
  %5475 = fmul fast float %5474, %5474
  %5476 = fsub fast float 0x4002A9FBE0000000, %5461
  %5477 = fadd fast float %5461, 0x3FD54FDF00000000
  %5478 = bitcast float %5477 to i32
  %5479 = sub nsw i32 2129859010, %5478
  %5480 = bitcast i32 %5479 to float
  %5481 = fmul fast float %5480, %5476
  %5482 = fmul fast float %5481, %5481
  %5483 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5468)  ; FMax(a,b)
  %5484 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5475)  ; FMax(a,b)
  %5485 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5482)  ; FMax(a,b)
  %5486 = fsub fast float 1.000000e+00, %5371
  %5487 = fadd fast float %5486, %5387
  %5488 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5489 = fsub fast float 1.000000e+00, %5351
  %5490 = fmul fast float %5429, %5489
  %5491 = fmul fast float %5432, %5432
  %5492 = fmul fast float %5491, %5490
  %5493 = fmul fast float %5492, %5434
  %5494 = fmul fast float %5489, 0xBFE99999A0000000
  %5495 = fmul fast float %5494, %5380
  %5496 = fmul fast float %5495, %5391
  %5497 = fadd fast float %5496, 1.000000e+00
  %5498 = fadd fast float %4934, -1.000000e+00
  %5499 = fmul fast float %5497, %5498
  %5500 = fadd fast float %5499, 1.000000e+00
  %5501 = fsub fast float %5483, %4931
  %5502 = fsub fast float %5484, %4932
  %5503 = fsub fast float %5485, %4933
  %5504 = fmul fast float %5493, %5501
  %5505 = fmul fast float %5493, %5502
  %5506 = fmul fast float %5493, %5503
  %5507 = fadd fast float %5504, %4931
  %5508 = fadd fast float %5505, %4932
  %5509 = fadd fast float %5506, %4933
  %5510 = fsub fast float %84, %4889
  %5511 = fsub fast float %86, %4890
  %5512 = fsub fast float %88, %4891
  %5513 = fmul fast float %5493, %5510
  %5514 = fmul fast float %5493, %5511
  %5515 = fmul fast float %5493, %5512
  %5516 = fadd fast float %5513, %4889
  %5517 = fadd fast float %5514, %4890
  %5518 = fadd fast float %5515, %4891
  %5519 = fmul fast float %5493, %5488
  %5520 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = fmul fast float %5519, %5521
  %5523 = fadd fast float %5522, %5520
  %5524 = fsub fast float 1.000000e+00, %4907
  %5525 = fmul fast float %5493, %5524
  %5526 = fadd fast float %5525, %4907
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5516, float %5517, float %5518, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = call float @dx.op.unary.f32(i32 25, float %5527)  ; Rsqrt(value)
  %5529 = fmul fast float %5516, %5528
  %5530 = fmul fast float %5517, %5528
  %5531 = fmul fast float %5518, %5528
  br label %5532

; <label>:5532                                    ; preds = %5364, %5357
  %5533 = phi float [ %5363, %5357 ], [ %5370, %5364 ]
  %5534 = phi float [ %5362, %5357 ], [ %5368, %5364 ]
  %5535 = phi float [ %5361, %5357 ], [ %5366, %5364 ]
  %5536 = phi float [ %5360, %5357 ], [ %5369, %5364 ]
  %5537 = phi float [ %5359, %5357 ], [ %5367, %5364 ]
  %5538 = phi float [ %5358, %5357 ], [ %5365, %5364 ]
  %5539 = phi float [ %4931, %5357 ], [ %5507, %5364 ]
  %5540 = phi float [ %4932, %5357 ], [ %5508, %5364 ]
  %5541 = phi float [ %4933, %5357 ], [ %5509, %5364 ]
  %5542 = phi float [ %4971, %5357 ], [ %5416, %5364 ]
  %5543 = phi float [ %4972, %5357 ], [ %5417, %5364 ]
  %5544 = phi float [ %4973, %5357 ], [ %5418, %5364 ]
  %5545 = phi float [ %4889, %5357 ], [ %5529, %5364 ]
  %5546 = phi float [ %4890, %5357 ], [ %5530, %5364 ]
  %5547 = phi float [ %4891, %5357 ], [ %5531, %5364 ]
  %5548 = phi float [ %4934, %5357 ], [ %5523, %5364 ]
  %5549 = phi float [ %4907, %5357 ], [ %5526, %5364 ]
  %5550 = select i1 %176, float 0.000000e+00, float %5541
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5545, float %5546, float %5547, float %5535, float %5534, float %5533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5538, float %5537, float %5536, float %5545, float %5546, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = fmul fast float %5553, 2.000000e+00
  %5555 = fmul fast float %5554, %5545
  %5556 = fmul fast float %5554, %5546
  %5557 = fmul fast float %5554, %5547
  %5558 = fsub fast float %5538, %5555
  %5559 = fsub fast float %5537, %5556
  %5560 = fsub fast float %5536, %5557
  %5561 = call float @dx.op.binary.f32(i32 36, float %5549, float 1.000000e+00)  ; FMin(a,b)
  %5562 = fsub fast float 1.000000e+00, %5549
  %5563 = bitcast float %5562 to i32
  %5564 = sub nsw i32 2129859010, %5563
  %5565 = bitcast i32 %5564 to float
  %5566 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5567 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = fcmp fast oeq float %5567, 0.000000e+00
  %5569 = fcmp fast oeq float %5566, 0.000000e+00
  %5570 = or i1 %5569, %5568
  br i1 %5570, label %5600, label %5571

; <label>:5571                                    ; preds = %5532
  %5572 = fsub fast float -0.000000e+00, %55
  %5573 = fsub fast float -0.000000e+00, %53
  %5574 = call float @dx.op.unary.f32(i32 24, float %5567)  ; Sqrt(value)
  %5575 = fdiv fast float %5574, %5566
  %5576 = fcmp fast ogt float %5575, 0x3FFB6F8900000000
  %5577 = select i1 %5576, float 0x3FFB6F8900000000, float %5575
  %5578 = fmul fast float %5577, 0x3FE8A23460000000
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = call float @dx.op.binary.f32(i32 35, float %5577, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5581 = fmul fast float %5579, %5566
  %5582 = fmul fast float %5580, 0x3FF279A740000000
  %5583 = fadd fast float %5582, -1.000000e+00
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5572, float %5573, float %54, float %5572, float %5573, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = call float @dx.op.unary.f32(i32 25, float %5584)  ; Rsqrt(value)
  %5586 = fmul fast float %5585, %5572
  %5587 = fmul fast float %5585, %5573
  %5588 = fmul fast float %5585, %54
  %5589 = fmul fast float %5583, %5583
  %5590 = fsub fast float 1.000000e+00, %5589
  %5591 = fmul fast float %5580, 0x40005F8BE0000000
  %5592 = fsub fast float 0x400C5BF8A0000000, %5591
  %5593 = fdiv fast float %5581, %5592
  %5594 = fmul fast float %5593, 0x3FEE31C3C0000000
  %5595 = fmul fast float %5594, %5590
  %5596 = fmul fast float %5580, 0x3FDACB7480000000
  %5597 = fadd fast float %5596, 0xBFD7347680000000
  %5598 = fmul fast float %5597, %5593
  %5599 = fmul fast float %5598, %5590
  br label %5600

; <label>:5600                                    ; preds = %5571, %5532
  %5601 = phi float [ %5586, %5571 ], [ 0.000000e+00, %5532 ]
  %5602 = phi float [ %5587, %5571 ], [ 0.000000e+00, %5532 ]
  %5603 = phi float [ %5588, %5571 ], [ 0.000000e+00, %5532 ]
  %5604 = phi float [ %5595, %5571 ], [ 0.000000e+00, %5532 ]
  %5605 = phi float [ %5599, %5571 ], [ 0.000000e+00, %5532 ]
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5601, float %5602, float %5603, float %5545, float %5546, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = fmul fast float %5606, 0x3FDF454380000000
  %5608 = fmul fast float %5606, %5606
  %5609 = fmul fast float %5608, 0x3FEE471020000000
  %5610 = fadd fast float %5609, 0xBFD42F6020000000
  %5611 = fmul fast float %5566, 0x3FD20DD760000000
  %5612 = fmul fast float %5610, %5605
  %5613 = fadd fast float %5612, %5611
  %5614 = fmul fast float %5607, %5604
  %5615 = fadd fast float %5613, %5614
  %5616 = fsub fast float %5613, %5614
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5601, float %5602, float %5603, float %5558, float %5559, float %5560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fmul fast float %5617, 0x3FDF454380000000
  %5619 = fmul fast float %5617, %5617
  %5620 = fmul fast float %5619, 0x3FEE471020000000
  %5621 = fadd fast float %5620, 0xBFD42F6020000000
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5566, float %5604, float %5605, float 0x3FD20DD760000000, float %5618, float %5621)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %5624 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %5625 = fcmp fast oeq float %5624, 0.000000e+00
  %5626 = fcmp fast oeq float %5623, 0.000000e+00
  %5627 = or i1 %5626, %5625
  br i1 %5627, label %5657, label %5628

; <label>:5628                                    ; preds = %5600
  %5629 = fsub fast float -0.000000e+00, %51
  %5630 = fsub fast float -0.000000e+00, %49
  %5631 = call float @dx.op.unary.f32(i32 24, float %5624)  ; Sqrt(value)
  %5632 = fdiv fast float %5631, %5623
  %5633 = fcmp fast ogt float %5632, 0x3FFB6F8900000000
  %5634 = select i1 %5633, float 0x3FFB6F8900000000, float %5632
  %5635 = fmul fast float %5634, 0x3FE8A23460000000
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = call float @dx.op.binary.f32(i32 35, float %5634, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5638 = fmul fast float %5636, %5623
  %5639 = fmul fast float %5637, 0x3FF279A740000000
  %5640 = fadd fast float %5639, -1.000000e+00
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5629, float %5630, float %50, float %5629, float %5630, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = call float @dx.op.unary.f32(i32 25, float %5641)  ; Rsqrt(value)
  %5643 = fmul fast float %5642, %5629
  %5644 = fmul fast float %5642, %5630
  %5645 = fmul fast float %5642, %50
  %5646 = fmul fast float %5640, %5640
  %5647 = fsub fast float 1.000000e+00, %5646
  %5648 = fmul fast float %5637, 0x40005F8BE0000000
  %5649 = fsub fast float 0x400C5BF8A0000000, %5648
  %5650 = fdiv fast float %5638, %5649
  %5651 = fmul fast float %5650, 0x3FEE31C3C0000000
  %5652 = fmul fast float %5651, %5647
  %5653 = fmul fast float %5637, 0x3FDACB7480000000
  %5654 = fadd fast float %5653, 0xBFD7347680000000
  %5655 = fmul fast float %5654, %5650
  %5656 = fmul fast float %5655, %5647
  br label %5657

; <label>:5657                                    ; preds = %5628, %5600
  %5658 = phi float [ %5643, %5628 ], [ 0.000000e+00, %5600 ]
  %5659 = phi float [ %5644, %5628 ], [ 0.000000e+00, %5600 ]
  %5660 = phi float [ %5645, %5628 ], [ 0.000000e+00, %5600 ]
  %5661 = phi float [ %5652, %5628 ], [ 0.000000e+00, %5600 ]
  %5662 = phi float [ %5656, %5628 ], [ 0.000000e+00, %5600 ]
  %5663 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float %5545, float %5546, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5664 = fmul fast float %5663, 0x3FDF454380000000
  %5665 = fmul fast float %5663, %5663
  %5666 = fmul fast float %5665, 0x3FEE471020000000
  %5667 = fadd fast float %5666, 0xBFD42F6020000000
  %5668 = fmul fast float %5623, 0x3FD20DD760000000
  %5669 = fmul fast float %5667, %5662
  %5670 = fadd fast float %5669, %5668
  %5671 = fmul fast float %5664, %5661
  %5672 = fadd fast float %5670, %5671
  %5673 = fsub fast float %5670, %5671
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5658, float %5659, float %5660, float %5558, float %5559, float %5560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fmul fast float %5674, 0x3FDF454380000000
  %5676 = fmul fast float %5674, %5674
  %5677 = fmul fast float %5676, 0x3FEE471020000000
  %5678 = fadd fast float %5677, 0xBFD42F6020000000
  %5679 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5661, float %5662, float 0x3FD20DD760000000, float %5675, float %5678)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %5681 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = fcmp fast oeq float %5681, 0.000000e+00
  %5683 = fcmp fast oeq float %5680, 0.000000e+00
  %5684 = or i1 %5683, %5682
  br i1 %5684, label %5714, label %5685

; <label>:5685                                    ; preds = %5657
  %5686 = fsub fast float -0.000000e+00, %47
  %5687 = fsub fast float -0.000000e+00, %45
  %5688 = call float @dx.op.unary.f32(i32 24, float %5681)  ; Sqrt(value)
  %5689 = fdiv fast float %5688, %5680
  %5690 = fcmp fast ogt float %5689, 0x3FFB6F8900000000
  %5691 = select i1 %5690, float 0x3FFB6F8900000000, float %5689
  %5692 = fmul fast float %5691, 0x3FE8A23460000000
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = call float @dx.op.binary.f32(i32 35, float %5691, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5695 = fmul fast float %5693, %5680
  %5696 = fmul fast float %5694, 0x3FF279A740000000
  %5697 = fadd fast float %5696, -1.000000e+00
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5686, float %5687, float %46, float %5686, float %5687, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = call float @dx.op.unary.f32(i32 25, float %5698)  ; Rsqrt(value)
  %5700 = fmul fast float %5699, %5686
  %5701 = fmul fast float %5699, %5687
  %5702 = fmul fast float %5699, %46
  %5703 = fmul fast float %5697, %5697
  %5704 = fsub fast float 1.000000e+00, %5703
  %5705 = fmul fast float %5694, 0x40005F8BE0000000
  %5706 = fsub fast float 0x400C5BF8A0000000, %5705
  %5707 = fdiv fast float %5695, %5706
  %5708 = fmul fast float %5707, 0x3FEE31C3C0000000
  %5709 = fmul fast float %5708, %5704
  %5710 = fmul fast float %5694, 0x3FDACB7480000000
  %5711 = fadd fast float %5710, 0xBFD7347680000000
  %5712 = fmul fast float %5711, %5707
  %5713 = fmul fast float %5712, %5704
  br label %5714

; <label>:5714                                    ; preds = %5685, %5657
  %5715 = phi float [ %5700, %5685 ], [ 0.000000e+00, %5657 ]
  %5716 = phi float [ %5701, %5685 ], [ 0.000000e+00, %5657 ]
  %5717 = phi float [ %5702, %5685 ], [ 0.000000e+00, %5657 ]
  %5718 = phi float [ %5709, %5685 ], [ 0.000000e+00, %5657 ]
  %5719 = phi float [ %5713, %5685 ], [ 0.000000e+00, %5657 ]
  %5720 = call float @dx.op.dot3.f32(i32 55, float %5715, float %5716, float %5717, float %5545, float %5546, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %5721 = fmul fast float %5720, 0x3FDF454380000000
  %5722 = fmul fast float %5720, %5720
  %5723 = fmul fast float %5722, 0x3FEE471020000000
  %5724 = fadd fast float %5723, 0xBFD42F6020000000
  %5725 = fmul fast float %5680, 0x3FD20DD760000000
  %5726 = fmul fast float %5724, %5719
  %5727 = fadd fast float %5726, %5725
  %5728 = fmul fast float %5721, %5718
  %5729 = fadd fast float %5727, %5728
  %5730 = fsub fast float %5727, %5728
  %5731 = call float @dx.op.dot3.f32(i32 55, float %5715, float %5716, float %5717, float %5558, float %5559, float %5560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5732 = fmul fast float %5731, 0x3FDF454380000000
  %5733 = fmul fast float %5731, %5731
  %5734 = fmul fast float %5733, 0x3FEE471020000000
  %5735 = fadd fast float %5734, 0xBFD42F6020000000
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5680, float %5718, float %5719, float 0x3FD20DD760000000, float %5732, float %5735)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = call float @dx.op.binary.f32(i32 35, float %5615, float 0.000000e+00)  ; FMax(a,b)
  %5738 = call float @dx.op.binary.f32(i32 35, float %5672, float 0.000000e+00)  ; FMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %5729, float 0.000000e+00)  ; FMax(a,b)
  %5740 = call float @dx.op.binary.f32(i32 35, float %5616, float 0.000000e+00)  ; FMax(a,b)
  %5741 = call float @dx.op.binary.f32(i32 35, float %5673, float 0.000000e+00)  ; FMax(a,b)
  %5742 = call float @dx.op.binary.f32(i32 35, float %5730, float 0.000000e+00)  ; FMax(a,b)
  %5743 = call float @dx.op.binary.f32(i32 35, float %5622, float 0.000000e+00)  ; FMax(a,b)
  %5744 = call float @dx.op.binary.f32(i32 35, float %5679, float 0.000000e+00)  ; FMax(a,b)
  %5745 = call float @dx.op.binary.f32(i32 35, float %5736, float 0.000000e+00)  ; FMax(a,b)
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = call float @dx.op.binary.f32(i32 36, float %5542, float %5747)  ; FMin(a,b)
  %5749 = fsub fast float 1.000000e+00, %5561
  %5750 = fmul fast float %5748, %5749
  %5751 = fsub fast float 1.000000e+00, %5750
  %5752 = bitcast float %5751 to i32
  %5753 = sub nsw i32 2129859010, %5752
  %5754 = bitcast i32 %5753 to float
  %5755 = call float @dx.op.binary.f32(i32 36, float %5543, float %5747)  ; FMin(a,b)
  %5756 = fmul fast float %5755, %5749
  %5757 = fsub fast float 1.000000e+00, %5756
  %5758 = bitcast float %5757 to i32
  %5759 = sub nsw i32 2129859010, %5758
  %5760 = bitcast i32 %5759 to float
  %5761 = call float @dx.op.binary.f32(i32 36, float %5544, float %5747)  ; FMin(a,b)
  %5762 = fmul fast float %5761, %5749
  %5763 = fsub fast float 1.000000e+00, %5762
  %5764 = bitcast float %5763 to i32
  %5765 = sub nsw i32 2129859010, %5764
  %5766 = bitcast i32 %5765 to float
  %5767 = fmul fast float %5737, %5561
  %5768 = fmul fast float %5767, %5754
  %5769 = fmul fast float %5738, %5561
  %5770 = fmul fast float %5769, %5760
  %5771 = fmul fast float %5739, %5561
  %5772 = fmul fast float %5771, %5766
  %5773 = call float @dx.op.binary.f32(i32 36, float %5539, float %5747)  ; FMin(a,b)
  %5774 = fmul fast float %5773, %5749
  %5775 = fsub fast float 1.000000e+00, %5774
  %5776 = bitcast float %5775 to i32
  %5777 = sub nsw i32 2129859010, %5776
  %5778 = bitcast i32 %5777 to float
  %5779 = call float @dx.op.binary.f32(i32 36, float %5540, float %5747)  ; FMin(a,b)
  %5780 = fmul fast float %5779, %5749
  %5781 = fsub fast float 1.000000e+00, %5780
  %5782 = bitcast float %5781 to i32
  %5783 = sub nsw i32 2129859010, %5782
  %5784 = bitcast i32 %5783 to float
  %5785 = call float @dx.op.binary.f32(i32 36, float %5550, float %5747)  ; FMin(a,b)
  %5786 = fmul fast float %5785, %5749
  %5787 = fsub fast float 1.000000e+00, %5786
  %5788 = bitcast float %5787 to i32
  %5789 = sub nsw i32 2129859010, %5788
  %5790 = bitcast i32 %5789 to float
  %5791 = fmul fast float %5743, %5561
  %5792 = fmul fast float %5791, %5778
  %5793 = fmul fast float %5744, %5561
  %5794 = fmul fast float %5793, %5784
  %5795 = fmul fast float %5745, %5561
  %5796 = fmul fast float %5795, %5790
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5770, float %5772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = select i1 %176, float 0.000000e+00, float %5768
  %5799 = select i1 %176, float %5797, float %5770
  %5800 = select i1 %176, float 0.000000e+00, float %5772
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = select i1 %176, float 0.000000e+00, float %5740
  %5803 = select i1 %176, float %5801, float %5741
  %5804 = select i1 %176, float 0.000000e+00, float %5742
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5792, float %5794, float %5796, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = select i1 %176, float 0.000000e+00, float %5792
  %5807 = select i1 %176, float %5805, float %5794
  %5808 = select i1 %176, float 0.000000e+00, float %5796
  %5809 = fmul fast float %5552, 9.843750e-01
  %5810 = fmul fast float %5548, 9.843750e-01
  %5811 = fadd fast float %5809, 7.812500e-03
  %5812 = fadd fast float %5810, 7.812500e-03
  %5813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5811, float %5812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 2
  %5815 = extractvalue %dx.types.ResRet.f32 %5813, 3
  %5816 = fmul fast float %5814, %5539
  %5817 = fmul fast float %5814, %5540
  %5818 = fmul fast float %5814, %5550
  %5819 = fadd fast float %5816, %5815
  %5820 = fadd fast float %5817, %5815
  %5821 = fadd fast float %5818, %5815
  %5822 = fcmp fast ogt float %4908, 0.000000e+00
  br i1 %5822, label %5823, label %5849

; <label>:5823                                    ; preds = %5714
  %5824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4908, float %5552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5825 = extractvalue %dx.types.ResRet.f32 %5824, 0
  %5826 = extractvalue %dx.types.ResRet.f32 %5824, 1
  %5827 = extractvalue %dx.types.ResRet.f32 %5824, 2
  %5828 = fadd fast float %5825, -5.000000e-01
  %5829 = fadd fast float %5826, -5.000000e-01
  %5830 = fadd fast float %5827, -5.000000e-01
  %5831 = fsub fast float 1.000000e+00, %5539
  %5832 = fsub fast float 1.000000e+00, %5540
  %5833 = fsub fast float 1.000000e+00, %5550
  %5834 = fmul fast float %5539, 4.000000e+00
  %5835 = fmul fast float %5834, %5831
  %5836 = fmul fast float %5835, %5828
  %5837 = fmul fast float %5540, 4.000000e+00
  %5838 = fmul fast float %5837, %5832
  %5839 = fmul fast float %5838, %5829
  %5840 = fmul fast float %5550, 4.000000e+00
  %5841 = fmul fast float %5840, %5833
  %5842 = fmul fast float %5841, %5830
  %5843 = fadd fast float %5836, %5819
  %5844 = fadd fast float %5839, %5820
  %5845 = fadd fast float %5842, %5821
  %5846 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5847 = call float @dx.op.unary.f32(i32 7, float %5844)  ; Saturate(value)
  %5848 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  br label %5849

; <label>:5849                                    ; preds = %5823, %5714
  %5850 = phi float [ %5846, %5823 ], [ %5819, %5714 ]
  %5851 = phi float [ %5847, %5823 ], [ %5820, %5714 ]
  %5852 = phi float [ %5848, %5823 ], [ %5821, %5714 ]
  %5853 = call float @dx.op.binary.f32(i32 35, float %5851, float %5852)  ; FMax(a,b)
  %5854 = call float @dx.op.binary.f32(i32 35, float %5850, float %5853)  ; FMax(a,b)
  %5855 = fsub fast float 1.000000e+00, %5854
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5542, float %5543, float %5544, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = fcmp fast ogt float %5856, 0x3E7FF19E20000000
  %5858 = fdiv fast float 1.000000e+00, %5856
  %5859 = select i1 %5857, float %5858, float 0.000000e+00
  %5860 = fmul fast float %5859, %5542
  %5861 = fmul fast float %5859, %5543
  %5862 = fmul fast float %5859, %5544
  %5863 = fadd fast float %5860, -1.000000e+00
  %5864 = fadd fast float %5861, -1.000000e+00
  %5865 = fadd fast float %5862, -1.000000e+00
  %5866 = fmul fast float %5863, 5.000000e-01
  %5867 = fmul fast float %5864, 5.000000e-01
  %5868 = fmul fast float %5865, 5.000000e-01
  %5869 = fadd fast float %5866, 1.000000e+00
  %5870 = fadd fast float %5867, 1.000000e+00
  %5871 = fadd fast float %5868, 1.000000e+00
  %5872 = call float @dx.op.binary.f32(i32 35, float %5552, float 0x3F50624DE0000000)  ; FMax(a,b)
  %5873 = fdiv fast float %4261, %5872
  %5874 = fmul fast float %5850, %5806
  %5875 = fmul fast float %5851, %5807
  %5876 = fmul fast float %5852, %5808
  %5877 = fsub fast float 1.000000e+00, %5552
  %5878 = bitcast float %5877 to i32
  %5879 = sitofp i32 %5878 to float
  %5880 = fmul fast float %5879, 5.000000e+00
  %5881 = fadd fast float %5880, 0xC1EFBF8940000000
  %5882 = fptosi float %5881 to i32
  %5883 = bitcast i32 %5882 to float
  %5884 = fmul fast float %5883, %4909
  %5885 = fmul fast float %5798, %5884
  %5886 = fmul fast float %5885, %5855
  %5887 = fmul fast float %5886, %5869
  %5888 = fmul fast float %5799, %5884
  %5889 = fmul fast float %5888, %5855
  %5890 = fmul fast float %5889, %5870
  %5891 = fmul fast float %5800, %5884
  %5892 = fmul fast float %5891, %5855
  %5893 = fmul fast float %5892, %5871
  %5894 = fadd fast float %5874, %4901
  %5895 = fadd fast float %5894, %5887
  %5896 = fmul fast float %5895, %4905
  %5897 = fadd fast float %5875, %4902
  %5898 = fadd fast float %5897, %5890
  %5899 = fmul fast float %5898, %4905
  %5900 = fadd fast float %5876, %4903
  %5901 = fadd fast float %5900, %5893
  %5902 = fmul fast float %5901, %4905
  %5903 = fmul fast float %5540, 0x4012D0A400000000
  %5904 = fmul fast float %5855, %5800
  %5905 = fmul fast float %5855, %5799
  %5906 = fmul fast float %5855, %5798
  %5907 = fsub fast float 1.000000e+00, %5548
  %5908 = fmul fast float %5907, %4905
  %5909 = fsub fast float 1.000000e+00, %5908
  %5910 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5911 = fsub fast float 1.000000e+00, %5910
  %5912 = fadd fast float %5903, 0x3FDB6377A0000000
  %5913 = fmul fast float %5911, %5912
  %5914 = call float @dx.op.dot3.f32(i32 55, float %4975, float %4976, float %4977, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = fadd fast float %5913, %5914
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = fcmp fast olt float %4959, 1.270000e+02
  %5918 = fmul fast float %4959, 0xBFF7154760000000
  %5919 = fmul fast float %5918, %5873
  %5920 = call float @dx.op.unary.f32(i32 21, float %5919)  ; Exp(value)
  %5921 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  %5922 = select i1 %5917, float %5921, float 0.000000e+00
  %5923 = fmul fast float %5922, %5855
  %5924 = fadd fast float %5923, -1.000000e+00
  %5925 = fmul fast float %5924, %4905
  %5926 = fadd fast float %5925, 1.000000e+00
  %5927 = fcmp fast olt float %4958, 1.270000e+02
  %5928 = fmul fast float %4958, 0xBFF7154760000000
  %5929 = fmul fast float %5928, %5873
  %5930 = call float @dx.op.unary.f32(i32 21, float %5929)  ; Exp(value)
  %5931 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5932 = select i1 %5927, float %5931, float 0.000000e+00
  %5933 = fmul fast float %5932, %5855
  %5934 = fadd fast float %5933, -1.000000e+00
  %5935 = fmul fast float %5934, %4905
  %5936 = fadd fast float %5935, 1.000000e+00
  %5937 = fcmp fast olt float %4957, 1.270000e+02
  %5938 = fmul fast float %4957, 0xBFF7154760000000
  %5939 = fmul fast float %5938, %5873
  %5940 = call float @dx.op.unary.f32(i32 21, float %5939)  ; Exp(value)
  %5941 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  %5942 = select i1 %5937, float %5941, float 0.000000e+00
  %5943 = fmul fast float %5942, %5855
  %5944 = fadd fast float %5943, -1.000000e+00
  %5945 = fmul fast float %5944, %4905
  %5946 = fadd fast float %5945, 1.000000e+00
  %5947 = call float @dx.op.binary.f32(i32 35, float %5916, float 0x3F847AE140000000)  ; FMax(a,b)
  %5948 = fmul fast float %5947, %5947
  %5949 = fmul fast float %5948, %5948
  %5950 = fmul fast float %5949, 0xC00A935000000000
  %5951 = call float @dx.op.unary.f32(i32 21, float %5950)  ; Exp(value)
  %5952 = fsub fast float 1.000000e+00, %5951
  %5953 = fmul fast float %5952, %5802
  %5954 = fmul fast float %5953, %5946
  %5955 = fmul fast float %5936, %5803
  %5956 = fmul fast float %5955, %5952
  %5957 = fmul fast float %5926, %5804
  %5958 = fmul fast float %5957, %5952
  %5959 = fadd fast float %5954, %5906
  %5960 = fmul fast float %5959, %4905
  %5961 = fadd fast float %5956, %5905
  %5962 = fmul fast float %5961, %4905
  %5963 = fadd fast float %5958, %5904
  %5964 = fmul fast float %5963, %4905
  %5965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5965, 3
  %5967 = fcmp fast oeq float %5966, 0.000000e+00
  br i1 %5967, label %6310, label %5968

; <label>:5968                                    ; preds = %5849
  %5969 = extractvalue %dx.types.CBufRet.f32 %5965, 0
  %5970 = extractvalue %dx.types.CBufRet.f32 %5965, 1
  %5971 = extractvalue %dx.types.CBufRet.f32 %5965, 2
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = extractvalue %dx.types.CBufRet.f32 %5972, 1
  %5975 = extractvalue %dx.types.CBufRet.f32 %5972, 2
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5973, float %5974, float %5975, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = select i1 %176, float %5977, float %5973
  %5981 = select i1 %176, float %5979, float %5974
  %5982 = select i1 %176, float %5978, float %5975
  %5983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5984 = extractvalue %dx.types.CBufRet.f32 %5983, 1
  %5985 = fcmp fast une float %5984, 0.000000e+00
  br i1 %5985, label %5986, label %6003

; <label>:5986                                    ; preds = %5968
  %5987 = fptoui float %75 to i32
  %5988 = fptoui float %76 to i32
  %5989 = lshr i32 %5987, 4
  %5990 = lshr i32 %5988, 4
  %5991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.f32 %5991, 0
  %5993 = fptoui float %5992 to i32
  %5994 = add i32 %5993, 15
  %5995 = lshr i32 %5994, 4
  %5996 = mul i32 %5995, %5990
  %5997 = add i32 %5996, %5989
  %5998 = shl i32 %5997, 3
  %5999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5998, i32 undef)  ; BufferLoad(srv,index,wot)
  %6000 = extractvalue %dx.types.ResRet.i32 %5999, 0
  %6001 = and i32 %6000, -268435456
  %6002 = icmp eq i32 %6001, -1342177280
  br i1 %6002, label %6013, label %6003

; <label>:6003                                    ; preds = %5986, %5968
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 2
  %6006 = extractvalue %dx.types.CBufRet.f32 %6004, 3
  %6007 = fmul fast float %6005, %75
  %6008 = fmul fast float %6006, %76
  %6009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %6007, float %6008, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.ResRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.ResRet.f32 %6009, 2
  br label %6013

; <label>:6013                                    ; preds = %6003, %5986
  %6014 = phi float [ %6010, %6003 ], [ 0.000000e+00, %5986 ]
  %6015 = phi float [ %6011, %6003 ], [ 0.000000e+00, %5986 ]
  %6016 = phi float [ %6012, %6003 ], [ 0.000000e+00, %5986 ]
  %6017 = call float @dx.op.binary.f32(i32 36, float %6015, float %6016)  ; FMin(a,b)
  %6018 = call float @dx.op.binary.f32(i32 36, float %6014, float %6017)  ; FMin(a,b)
  %6019 = fcmp fast ogt float %6018, 0.000000e+00
  br i1 %6019, label %6020, label %6310, !dx.controlflow.hints !75

; <label>:6020                                    ; preds = %6013
  %6021 = fmul fast float %6014, %5980
  %6022 = fmul fast float %6015, %5981
  %6023 = fmul fast float %6016, %5982
  %6024 = fsub fast float %5969, %5538
  %6025 = fsub fast float %5970, %5537
  %6026 = fsub fast float %5971, %5536
  %6027 = call float @dx.op.dot3.f32(i32 55, float %6024, float %6025, float %6026, float %6024, float %6025, float %6026)  ; Dot3(ax,ay,az,bx,by,bz)
  %6028 = call float @dx.op.unary.f32(i32 25, float %6027)  ; Rsqrt(value)
  %6029 = fmul fast float %6028, %6024
  %6030 = fmul fast float %6028, %6025
  %6031 = fmul fast float %6028, %6026
  %6032 = call float @dx.op.dot3.f32(i32 55, float %5969, float %5970, float %5971, float %5545, float %5546, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %6033 = call float @dx.op.dot3.f32(i32 55, float %5535, float %5534, float %5533, float %6029, float %6030, float %6031)  ; Dot3(ax,ay,az,bx,by,bz)
  %6034 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6035 = fmul fast float %6034, %6034
  %6036 = fmul fast float %6035, %5565
  %6037 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6038 = fmul fast float %6037, %6034
  %6039 = call float @dx.op.dot3.f32(i32 55, float %5545, float %5546, float %5547, float %6029, float %6030, float %6031)  ; Dot3(ax,ay,az,bx,by,bz)
  %6040 = fmul fast float %6039, %6039
  %6041 = call float @dx.op.unary.f32(i32 6, float %6032)  ; FAbs(value)
  %6042 = call float @dx.op.binary.f32(i32 35, float %5907, float 0x3F847AE140000000)  ; FMax(a,b)
  %6043 = fmul fast float %6042, %6042
  %6044 = fmul fast float %6043, %6043
  %6045 = fsub fast float 1.000000e+00, %6044
  %6046 = fmul fast float %5552, %5552
  %6047 = fmul fast float %6046, %6045
  %6048 = fadd fast float %6047, %6044
  %6049 = bitcast float %6048 to i32
  %6050 = ashr i32 %6049, 1
  %6051 = add nsw i32 %6050, 532487669
  %6052 = bitcast i32 %6051 to float
  %6053 = fadd fast float %6052, %5552
  %6054 = fmul fast float %6044, %6040
  %6055 = fsub fast float 1.000000e+00, %6040
  %6056 = fadd fast float %6055, %6054
  %6057 = fmul fast float %6041, %6041
  %6058 = fmul fast float %6057, %6045
  %6059 = fadd fast float %6058, %6044
  %6060 = bitcast float %6059 to i32
  %6061 = ashr i32 %6060, 1
  %6062 = add nsw i32 %6061, 532487669
  %6063 = bitcast i32 %6062 to float
  %6064 = fadd fast float %6063, %6041
  %6065 = fmul fast float %6056, %6056
  %6066 = fmul fast float %6065, %6053
  %6067 = fmul fast float %6066, %6064
  %6068 = fdiv fast float 0x3FF0A00000000000, %6067
  %6069 = fmul fast float %6068, %6044
  %6070 = call float @dx.op.unary.f32(i32 6, float %6033)  ; FAbs(value)
  %6071 = fsub fast float 1.000000e+00, %6070
  %6072 = bitcast float %6071 to i32
  %6073 = sitofp i32 %6072 to float
  %6074 = fmul fast float %6073, 5.000000e+00
  %6075 = fadd fast float %6074, 0xC1EFBF8940000000
  %6076 = fptosi float %6075 to i32
  %6077 = bitcast i32 %6076 to float
  %6078 = fsub fast float 1.000000e+00, %5539
  %6079 = fsub fast float 1.000000e+00, %5540
  %6080 = fsub fast float 1.000000e+00, %5550
  %6081 = fmul fast float %6077, %6078
  %6082 = fmul fast float %6077, %6079
  %6083 = fmul fast float %6077, %6080
  %6084 = fadd fast float %6081, %5539
  %6085 = fadd fast float %6082, %5540
  %6086 = fadd fast float %6083, %5550
  br i1 %5822, label %6087, label %6110

; <label>:6087                                    ; preds = %6020
  %6088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4908, float %6070, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6089 = extractvalue %dx.types.ResRet.f32 %6088, 0
  %6090 = extractvalue %dx.types.ResRet.f32 %6088, 1
  %6091 = extractvalue %dx.types.ResRet.f32 %6088, 2
  %6092 = fadd fast float %6089, -5.000000e-01
  %6093 = fadd fast float %6090, -5.000000e-01
  %6094 = fadd fast float %6091, -5.000000e-01
  %6095 = fmul fast float %5539, 4.000000e+00
  %6096 = fmul fast float %6095, %6078
  %6097 = fmul fast float %6096, %6092
  %6098 = fmul fast float %5540, 4.000000e+00
  %6099 = fmul fast float %6098, %6079
  %6100 = fmul fast float %6099, %6093
  %6101 = fmul fast float %5550, 4.000000e+00
  %6102 = fmul fast float %6101, %6080
  %6103 = fmul fast float %6102, %6094
  %6104 = fadd fast float %6097, %6084
  %6105 = fadd fast float %6100, %6085
  %6106 = fadd fast float %6103, %6086
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6108 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6109 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  br label %6110

; <label>:6110                                    ; preds = %6087, %6020
  %6111 = phi float [ %6107, %6087 ], [ %6084, %6020 ]
  %6112 = phi float [ %6108, %6087 ], [ %6085, %6020 ]
  %6113 = phi float [ %6109, %6087 ], [ %6086, %6020 ]
  %6114 = fmul fast float %6032, 9.843750e-01
  %6115 = fadd fast float %6114, 7.812500e-03
  %6116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6115, float %5812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 2
  %6118 = extractvalue %dx.types.ResRet.f32 %6116, 3
  %6119 = fmul fast float %6117, %5539
  %6120 = fmul fast float %6117, %5540
  %6121 = fmul fast float %6117, %5550
  %6122 = fadd fast float %6119, %6118
  %6123 = fadd fast float %6120, %6118
  %6124 = fadd fast float %6121, %6118
  br i1 %5822, label %6125, label %6148

; <label>:6125                                    ; preds = %6110
  %6126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4908, float %6032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.ResRet.f32 %6126, 2
  %6130 = fadd fast float %6127, -5.000000e-01
  %6131 = fadd fast float %6128, -5.000000e-01
  %6132 = fadd fast float %6129, -5.000000e-01
  %6133 = fmul fast float %5539, 4.000000e+00
  %6134 = fmul fast float %6133, %6078
  %6135 = fmul fast float %6134, %6130
  %6136 = fmul fast float %5540, 4.000000e+00
  %6137 = fmul fast float %6136, %6079
  %6138 = fmul fast float %6137, %6131
  %6139 = fmul fast float %5550, 4.000000e+00
  %6140 = fmul fast float %6139, %6080
  %6141 = fmul fast float %6140, %6132
  %6142 = fadd fast float %6135, %6122
  %6143 = fadd fast float %6138, %6123
  %6144 = fadd fast float %6141, %6124
  %6145 = call float @dx.op.unary.f32(i32 7, float %6142)  ; Saturate(value)
  %6146 = call float @dx.op.unary.f32(i32 7, float %6143)  ; Saturate(value)
  %6147 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  br label %6148

; <label>:6148                                    ; preds = %6125, %6110
  %6149 = phi float [ %6145, %6125 ], [ %6122, %6110 ]
  %6150 = phi float [ %6146, %6125 ], [ %6123, %6110 ]
  %6151 = phi float [ %6147, %6125 ], [ %6124, %6110 ]
  %6152 = call float @dx.op.binary.f32(i32 35, float %6150, float %6151)  ; FMax(a,b)
  %6153 = call float @dx.op.binary.f32(i32 35, float %6149, float %6152)  ; FMax(a,b)
  %6154 = fsub fast float 1.000000e+00, %6153
  %6155 = call float @dx.op.binary.f32(i32 35, float %6041, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6156 = fdiv fast float %4261, %6155
  %6157 = fmul fast float %5938, %6156
  %6158 = fmul fast float %5928, %6156
  %6159 = fmul fast float %5918, %6156
  %6160 = call float @dx.op.unary.f32(i32 21, float %6157)  ; Exp(value)
  %6161 = call float @dx.op.unary.f32(i32 21, float %6158)  ; Exp(value)
  %6162 = call float @dx.op.unary.f32(i32 21, float %6159)  ; Exp(value)
  %6163 = call float @dx.op.unary.f32(i32 7, float %6160)  ; Saturate(value)
  %6164 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6165 = call float @dx.op.unary.f32(i32 7, float %6162)  ; Saturate(value)
  %6166 = select i1 %5937, float %6163, float 0.000000e+00
  %6167 = select i1 %5927, float %6164, float 0.000000e+00
  %6168 = select i1 %5917, float %6165, float 0.000000e+00
  %6169 = fsub fast float -0.000000e+00, %5545
  %6170 = fsub fast float -0.000000e+00, %5546
  %6171 = fsub fast float -0.000000e+00, %5547
  %6172 = call float @dx.op.dot3.f32(i32 55, float %5969, float %5970, float %5971, float %6169, float %6170, float %6171)  ; Dot3(ax,ay,az,bx,by,bz)
  %6173 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6174 = fmul fast float %6173, 9.843750e-01
  %6175 = fadd fast float %6174, 7.812500e-03
  %6176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6175, float %5812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6177 = extractvalue %dx.types.ResRet.f32 %6176, 2
  %6178 = extractvalue %dx.types.ResRet.f32 %6176, 3
  %6179 = fmul fast float %6177, %5539
  %6180 = fmul fast float %6177, %5540
  %6181 = fmul fast float %6177, %5550
  %6182 = fadd fast float %6179, %6178
  %6183 = fadd fast float %6180, %6178
  %6184 = fadd fast float %6181, %6178
  br i1 %5822, label %6185, label %6208

; <label>:6185                                    ; preds = %6148
  %6186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4908, float %6173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6187 = extractvalue %dx.types.ResRet.f32 %6186, 0
  %6188 = extractvalue %dx.types.ResRet.f32 %6186, 1
  %6189 = extractvalue %dx.types.ResRet.f32 %6186, 2
  %6190 = fadd fast float %6187, -5.000000e-01
  %6191 = fadd fast float %6188, -5.000000e-01
  %6192 = fadd fast float %6189, -5.000000e-01
  %6193 = fmul fast float %5539, 4.000000e+00
  %6194 = fmul fast float %6193, %6078
  %6195 = fmul fast float %6194, %6190
  %6196 = fmul fast float %5540, 4.000000e+00
  %6197 = fmul fast float %6196, %6079
  %6198 = fmul fast float %6197, %6191
  %6199 = fmul fast float %5550, 4.000000e+00
  %6200 = fmul fast float %6199, %6080
  %6201 = fmul fast float %6200, %6192
  %6202 = fadd fast float %6195, %6182
  %6203 = fadd fast float %6198, %6183
  %6204 = fadd fast float %6201, %6184
  %6205 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6206 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6207 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  br label %6208

; <label>:6208                                    ; preds = %6185, %6148
  %6209 = phi float [ %6205, %6185 ], [ %6182, %6148 ]
  %6210 = phi float [ %6206, %6185 ], [ %6183, %6148 ]
  %6211 = phi float [ %6207, %6185 ], [ %6184, %6148 ]
  %6212 = call float @dx.op.binary.f32(i32 35, float %6210, float %6211)  ; FMax(a,b)
  %6213 = call float @dx.op.binary.f32(i32 35, float %6209, float %6212)  ; FMax(a,b)
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = fmul fast float %5907, %5912
  %6216 = fadd fast float %5914, %6215
  %6217 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6218 = fsub fast float %5969, %5558
  %6219 = fsub fast float %5970, %5559
  %6220 = fsub fast float %5971, %5560
  %6221 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6220, float %6218, float %6219, float %6220)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = call float @dx.op.unary.f32(i32 25, float %6221)  ; Rsqrt(value)
  %6223 = fmul fast float %6222, %6218
  %6224 = fmul fast float %6222, %6219
  %6225 = fmul fast float %6222, %6220
  %6226 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %6171, float %6223, float %6224, float %6225)  ; Dot3(ax,ay,az,bx,by,bz)
  %6227 = fmul fast float %6226, %6226
  %6228 = call float @dx.op.unary.f32(i32 6, float %6173)  ; FAbs(value)
  %6229 = call float @dx.op.binary.f32(i32 35, float %6217, float 0x3F847AE140000000)  ; FMax(a,b)
  %6230 = fmul fast float %6229, %6229
  %6231 = fmul fast float %6230, %6230
  %6232 = fsub fast float 1.000000e+00, %6231
  %6233 = fmul fast float %6046, %6232
  %6234 = fadd fast float %6233, %6231
  %6235 = bitcast float %6234 to i32
  %6236 = ashr i32 %6235, 1
  %6237 = add nsw i32 %6236, 532487669
  %6238 = bitcast i32 %6237 to float
  %6239 = fadd fast float %6238, %5552
  %6240 = fmul fast float %6231, %6227
  %6241 = fsub fast float 1.000000e+00, %6227
  %6242 = fadd fast float %6241, %6240
  %6243 = fmul fast float %6228, %6228
  %6244 = fmul fast float %6243, %6232
  %6245 = fadd fast float %6244, %6231
  %6246 = bitcast float %6245 to i32
  %6247 = ashr i32 %6246, 1
  %6248 = add nsw i32 %6247, 532487669
  %6249 = bitcast i32 %6248 to float
  %6250 = fadd fast float %6249, %6228
  %6251 = fmul fast float %6242, %6242
  %6252 = fmul fast float %6251, %6239
  %6253 = fmul fast float %6252, %6250
  %6254 = fdiv fast float 0x3FF0A00000000000, %6253
  %6255 = fmul fast float %6254, %6231
  %6256 = fmul fast float %6173, %6166
  %6257 = fmul fast float %6173, %6167
  %6258 = fmul fast float %6173, %6168
  %6259 = fmul fast float %6256, %6214
  %6260 = fmul fast float %6259, %6255
  %6261 = fmul fast float %6257, %6214
  %6262 = fmul fast float %6261, %6255
  %6263 = fmul fast float %6258, %6214
  %6264 = fmul fast float %6263, %6255
  %6265 = fmul fast float %6111, %6069
  %6266 = fmul fast float %6112, %6069
  %6267 = fmul fast float %6113, %6069
  %6268 = fsub fast float 1.000000e+00, %6033
  %6269 = bitcast float %6268 to i32
  %6270 = sitofp i32 %6269 to float
  %6271 = fmul fast float %6270, 5.000000e+00
  %6272 = fadd fast float %6271, 0xC1EFBF8940000000
  %6273 = fptosi float %6272 to i32
  %6274 = bitcast i32 %6273 to float
  %6275 = fmul fast float %6274, %4909
  %6276 = fmul fast float %6154, %6275
  %6277 = fmul fast float %6276, %5869
  %6278 = fmul fast float %6276, %5870
  %6279 = fmul fast float %6276, %5871
  %6280 = fadd fast float %6277, %6265
  %6281 = fadd fast float %6278, %6266
  %6282 = fadd fast float %6279, %6267
  %6283 = fmul fast float %6280, %6038
  %6284 = fmul fast float %6281, %6038
  %6285 = fmul fast float %6282, %6038
  %6286 = fmul fast float %6038, %6021
  %6287 = fmul fast float %6286, %6154
  %6288 = fmul fast float %6038, %6022
  %6289 = fmul fast float %6288, %6154
  %6290 = fmul fast float %6038, %6023
  %6291 = fmul fast float %6290, %6154
  %6292 = fadd fast float %6283, %6260
  %6293 = fadd fast float %6284, %6262
  %6294 = fadd fast float %6285, %6264
  %6295 = fmul fast float %6292, %6021
  %6296 = fmul fast float %6293, %6022
  %6297 = fmul fast float %6294, %6023
  %6298 = fadd fast float %6287, %5959
  %6299 = fmul fast float %6298, %4905
  %6300 = fadd fast float %6289, %5961
  %6301 = fmul fast float %6300, %4905
  %6302 = fadd fast float %6291, %5963
  %6303 = fmul fast float %6302, %4905
  %6304 = fadd fast float %6295, %5895
  %6305 = fmul fast float %6304, %4905
  %6306 = fadd fast float %6296, %5898
  %6307 = fmul fast float %6306, %4905
  %6308 = fadd fast float %6297, %5901
  %6309 = fmul fast float %6308, %4905
  br label %6310

; <label>:6310                                    ; preds = %6208, %6013, %5849
  %6311 = phi float [ %5896, %5849 ], [ %5896, %6013 ], [ %6305, %6208 ]
  %6312 = phi float [ %5899, %5849 ], [ %5899, %6013 ], [ %6307, %6208 ]
  %6313 = phi float [ %5902, %5849 ], [ %5902, %6013 ], [ %6309, %6208 ]
  %6314 = phi float [ %5960, %5849 ], [ %5960, %6013 ], [ %6299, %6208 ]
  %6315 = phi float [ %5962, %5849 ], [ %5962, %6013 ], [ %6301, %6208 ]
  %6316 = phi float [ %5964, %5849 ], [ %5964, %6013 ], [ %6303, %6208 ]
  %6317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.i32 %6317, 0
  %6319 = icmp eq i32 %6318, 0
  br i1 %6319, label %6891, label %6320

; <label>:6320                                    ; preds = %6310
  %6321 = fptoui float %75 to i32
  %6322 = fptoui float %76 to i32
  %6323 = lshr i32 %6321, 4
  %6324 = lshr i32 %6322, 4
  %6325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.i32 %6325, 0
  %6327 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6324, i32 %6326, i32 %6323)  ; UMad(a,b,c)
  %6328 = add nsw i32 %6318, -1
  %6329 = call i32 @dx.op.binary.i32(i32 37, i32 %6328, i32 0)  ; IMax(a,b)
  %6330 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %6331 = fptoui float %6330 to i32
  %6332 = lshr i32 %6331, 5
  %6333 = call i32 @dx.op.binary.i32(i32 40, i32 %6332, i32 8191)  ; UMin(a,b)
  %6334 = shl i32 %6333, 2
  %6335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6334, i32 undef)  ; BufferLoad(srv,index,wot)
  %6336 = extractvalue %dx.types.ResRet.i32 %6335, 0
  %6337 = lshr i32 %6336, 16
  %6338 = and i32 %6336, 65535
  %6339 = lshr i32 %6336, 21
  %6340 = lshr i32 %6338, 5
  %6341 = call i32 @dx.op.binary.i32(i32 40, i32 %6340, i32 %6329)  ; UMin(a,b)
  %6342 = icmp ugt i32 %6339, %6341
  br i1 %6342, label %6891, label %6343

; <label>:6343                                    ; preds = %6320
  br label %6344

; <label>:6344                                    ; preds = %6881, %6343
  %6345 = phi i32 [ %6888, %6881 ], [ %6339, %6343 ]
  %6346 = phi float [ %6882, %6881 ], [ %6311, %6343 ]
  %6347 = phi float [ %6883, %6881 ], [ %6312, %6343 ]
  %6348 = phi float [ %6884, %6881 ], [ %6313, %6343 ]
  %6349 = phi float [ %6885, %6881 ], [ %6314, %6343 ]
  %6350 = phi float [ %6886, %6881 ], [ %6315, %6343 ]
  %6351 = phi float [ %6887, %6881 ], [ %6316, %6343 ]
  %6352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.i32 %6352, 0
  %6354 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6327, i32 %6353, i32 %6345)  ; UMad(a,b,c)
  %6355 = shl i32 %6354, 2
  %6356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6355, i32 undef)  ; BufferLoad(srv,index,wot)
  %6357 = extractvalue %dx.types.ResRet.i32 %6356, 0
  %6358 = shl i32 %6345, 5
  %6359 = sub nsw i32 %6337, %6358
  %6360 = call i32 @dx.op.binary.i32(i32 37, i32 %6359, i32 0)  ; IMax(a,b)
  %6361 = call i32 @dx.op.binary.i32(i32 38, i32 %6360, i32 31)  ; IMin(a,b)
  %6362 = sub nsw i32 1, %6337
  %6363 = add nsw i32 %6362, %6338
  %6364 = call i32 @dx.op.binary.i32(i32 37, i32 %6363, i32 0)  ; IMax(a,b)
  %6365 = call i32 @dx.op.binary.i32(i32 38, i32 %6364, i32 32)  ; IMin(a,b)
  %6366 = and i32 %6365, 31
  %6367 = shl i32 -1, %6366
  %6368 = xor i32 %6367, -1
  %6369 = and i32 %6361, 31
  %6370 = shl i32 %6368, %6369
  %6371 = icmp eq i32 %6365, 32
  %6372 = select i1 %6371, i32 -1, i32 %6370
  %6373 = and i32 %6372, %6357
  %6374 = icmp eq i32 %6373, 0
  br i1 %6374, label %6881, label %6375

; <label>:6375                                    ; preds = %6344
  br label %6376

; <label>:6376                                    ; preds = %6460, %6375
  %6377 = phi i32 [ %6388, %6460 ], [ %6373, %6375 ]
  %6378 = phi float [ %6461, %6460 ], [ %6346, %6375 ]
  %6379 = phi float [ %6462, %6460 ], [ %6347, %6375 ]
  %6380 = phi float [ %6463, %6460 ], [ %6348, %6375 ]
  %6381 = phi float [ %6464, %6460 ], [ %6349, %6375 ]
  %6382 = phi float [ %6465, %6460 ], [ %6350, %6375 ]
  %6383 = phi float [ %6466, %6460 ], [ %6351, %6375 ]
  %6384 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6377)  ; FirstbitLo(value)
  %6385 = add i32 %6384, %6358
  %6386 = and i32 %6384, 31
  %6387 = shl i32 1, %6386
  %6388 = xor i32 %6387, %6377
  %6389 = mul i32 %6385, 112
  %6390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6389, i32 undef)  ; BufferLoad(srv,index,wot)
  %6391 = extractvalue %dx.types.ResRet.f32 %6390, 0
  %6392 = extractvalue %dx.types.ResRet.f32 %6390, 1
  %6393 = extractvalue %dx.types.ResRet.f32 %6390, 2
  %6394 = or i32 %6389, 12
  %6395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6394, i32 undef)  ; BufferLoad(srv,index,wot)
  %6396 = extractvalue %dx.types.ResRet.f32 %6395, 0
  %6397 = add i32 %6389, 28
  %6398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6397, i32 undef)  ; BufferLoad(srv,index,wot)
  %6399 = extractvalue %dx.types.ResRet.i32 %6398, 0
  %6400 = add i32 %6389, 44
  %6401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6400, i32 undef)  ; BufferLoad(srv,index,wot)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = add i32 %6389, 48
  %6404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6403, i32 undef)  ; BufferLoad(srv,index,wot)
  %6405 = extractvalue %dx.types.ResRet.f32 %6404, 0
  %6406 = extractvalue %dx.types.ResRet.f32 %6404, 1
  %6407 = extractvalue %dx.types.ResRet.f32 %6404, 2
  %6408 = add i32 %6389, 80
  %6409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6408, i32 undef)  ; BufferLoad(srv,index,wot)
  %6410 = extractvalue %dx.types.ResRet.f32 %6409, 1
  %6411 = extractvalue %dx.types.ResRet.f32 %6409, 2
  %6412 = call float @dx.op.dot3.f32(i32 55, float %6391, float %6392, float %6393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6413 = select i1 %176, float %6410, float %6391
  %6414 = select i1 %176, float %6412, float %6392
  %6415 = select i1 %176, float %6411, float %6393
  %6416 = icmp slt i32 %6399, 0
  %6417 = fsub fast float %6405, %134
  %6418 = fsub fast float %6406, %135
  %6419 = fsub fast float %6407, %136
  %6420 = call float @dx.op.dot3.f32(i32 55, float %6417, float %6418, float %6419, float %6417, float %6418, float %6419)  ; Dot3(ax,ay,az,bx,by,bz)
  %6421 = call float @dx.op.unary.f32(i32 24, float %6420)  ; Sqrt(value)
  %6422 = fdiv fast float 1.000000e+00, %6421
  %6423 = fmul fast float %6422, %6417
  %6424 = fmul fast float %6422, %6418
  %6425 = fmul fast float %6422, %6419
  %6426 = fadd fast float %6421, %6396
  %6427 = fdiv fast float 1.000000e+00, %6426
  %6428 = fmul float %6402, %6427
  %6429 = fmul float %6428, %6428
  %6430 = call float @dx.op.unary.f32(i32 7, float %6429)  ; Saturate(value)
  %6431 = and i32 %6387, %6373
  %6432 = icmp eq i32 %6431, 0
  br i1 %6432, label %6455, label %6433, !dx.controlflow.hints !76

; <label>:6433                                    ; preds = %6376
  %6434 = lshr i32 %6321, 5
  %6435 = lshr i32 %6322, 5
  %6436 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %6434, i32 %6435, i32 %6385, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6437 = extractvalue %dx.types.ResRet.i32 %6436, 0
  %6438 = and i32 %6437, 3
  %6439 = icmp eq i32 %6438, 0
  %6440 = select i1 %6439, float 1.000000e+00, float 0.000000e+00
  %6441 = icmp eq i32 %6438, 3
  br i1 %6441, label %6442, label %6455

; <label>:6442                                    ; preds = %6433
  %6443 = lshr i32 %6437, 10
  %6444 = and i32 %6443, 8160
  %6445 = and i32 %6322, 31
  %6446 = or i32 %6444, %6445
  %6447 = lshr i32 %6437, 1
  %6448 = and i32 %6447, 16352
  %6449 = and i32 %6321, 31
  %6450 = or i32 %6448, %6449
  %6451 = lshr i32 %6437, 23
  %6452 = and i32 %6451, 255
  %6453 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %6450, i32 %6446, i32 %6452, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  br label %6455

; <label>:6455                                    ; preds = %6442, %6433, %6376
  %6456 = phi float [ %6454, %6442 ], [ %6440, %6433 ], [ 0.000000e+00, %6376 ]
  %6457 = call float @dx.op.binary.f32(i32 36, float %6456, float %6456)  ; FMin(a,b)
  %6458 = call float @dx.op.binary.f32(i32 36, float %6456, float %6457)  ; FMin(a,b)
  %6459 = fcmp fast ogt float %6458, 0.000000e+00
  br i1 %6459, label %6468, label %6460, !dx.controlflow.hints !77

; <label>:6460                                    ; preds = %6834, %6455
  %6461 = phi float [ %6378, %6455 ], [ %6877, %6834 ]
  %6462 = phi float [ %6379, %6455 ], [ %6878, %6834 ]
  %6463 = phi float [ %6380, %6455 ], [ %6879, %6834 ]
  %6464 = phi float [ %6381, %6455 ], [ %6871, %6834 ]
  %6465 = phi float [ %6382, %6455 ], [ %6872, %6834 ]
  %6466 = phi float [ %6383, %6455 ], [ %6873, %6834 ]
  %6467 = icmp eq i32 %6377, %6387
  br i1 %6467, label %6880, label %6376

; <label>:6468                                    ; preds = %6455
  %6469 = fmul fast float %6456, %6413
  %6470 = fmul fast float %6456, %6414
  %6471 = fmul fast float %6456, %6415
  %6472 = fsub fast float %6407, %5338
  %6473 = fcmp fast ogt float %6472, 0.000000e+00
  %6474 = fsub fast float %136, %5338
  %6475 = fcmp fast ogt float %6474, 0.000000e+00
  %6476 = xor i1 %6475, %6473
  %6477 = fsub fast float %5338, %6407
  %6478 = fmul fast float %6477, 2.000000e+00
  %6479 = fadd fast float %6478, %6407
  %6480 = select i1 %6476, float %6407, float %6479
  %6481 = fsub fast float %6480, %136
  %6482 = call float @dx.op.dot3.f32(i32 55, float %6417, float %6418, float %6481, float %6417, float %6418, float %6481)  ; Dot3(ax,ay,az,bx,by,bz)
  %6483 = call float @dx.op.unary.f32(i32 25, float %6482)  ; Rsqrt(value)
  %6484 = fmul fast float %6483, %6417
  %6485 = fmul fast float %6483, %6418
  %6486 = fmul fast float %6483, %6481
  %6487 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5346)  ; Dot3(ax,ay,az,bx,by,bz)
  %6488 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6484, float %6485, float %6486)  ; Dot3(ax,ay,az,bx,by,bz)
  %6489 = fdiv fast float 1.000000e+00, %6488
  %6490 = fmul fast float %6489, %6487
  %6491 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6474, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6492 = fcmp fast ogt float %6491, 0.000000e+00
  %6493 = fcmp fast olt float %6491, 0.000000e+00
  %6494 = zext i1 %6492 to i32
  %6495 = zext i1 %6493 to i32
  %6496 = sub nsw i32 %6494, %6495
  %6497 = sitofp i32 %6496 to float
  %6498 = fsub fast float %6480, %5338
  %6499 = call float @dx.op.dot3.f32(i32 55, float %6417, float %6418, float %6498, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6500 = fcmp fast ogt float %6499, 0.000000e+00
  %6501 = fcmp fast olt float %6499, 0.000000e+00
  %6502 = zext i1 %6500 to i32
  %6503 = zext i1 %6501 to i32
  %6504 = sub nsw i32 %6502, %6503
  %6505 = sitofp i32 %6504 to float
  %6506 = fcmp fast une float %6497, %6505
  br i1 %6506, label %6507, label %6517

; <label>:6507                                    ; preds = %6468
  %6508 = fmul fast float %6490, %6486
  %6509 = fmul fast float %6490, %6485
  %6510 = fmul fast float %6490, %6484
  %6511 = fmul fast float %6510, %6510
  %6512 = fmul fast float %6509, %6509
  %6513 = fadd fast float %6511, %6512
  %6514 = fmul fast float %6508, %6508
  %6515 = fadd fast float %6513, %6514
  %6516 = call float @dx.op.unary.f32(i32 24, float %6515)  ; Sqrt(value)
  br label %6529

; <label>:6517                                    ; preds = %6468
  %6518 = icmp slt i32 %6496, 0
  br i1 %6518, label %6519, label %6529

; <label>:6519                                    ; preds = %6517
  %6520 = fsub fast float %134, %6405
  %6521 = fsub fast float %135, %6406
  %6522 = fsub fast float %136, %6480
  %6523 = fmul fast float %6520, %6520
  %6524 = fmul fast float %6521, %6521
  %6525 = fadd fast float %6523, %6524
  %6526 = fmul fast float %6522, %6522
  %6527 = fadd fast float %6525, %6526
  %6528 = call float @dx.op.unary.f32(i32 24, float %6527)  ; Sqrt(value)
  br label %6529

; <label>:6529                                    ; preds = %6519, %6517, %6507
  %6530 = phi float [ %6516, %6507 ], [ %6528, %6519 ], [ 0.000000e+00, %6517 ]
  %6531 = and i1 %6475, %6473
  %6532 = fsub fast float -0.000000e+00, %6530
  %6533 = select i1 %6531, float -0.000000e+00, float %6532
  %6534 = fmul fast float %5339, 0x3FF7154760000000
  %6535 = fmul fast float %6534, %6533
  %6536 = fmul fast float %5340, 0x3FF7154760000000
  %6537 = fmul fast float %6536, %6533
  %6538 = fmul fast float %5341, 0x3FF7154760000000
  %6539 = fmul fast float %6538, %6533
  %6540 = call float @dx.op.unary.f32(i32 21, float %6535)  ; Exp(value)
  %6541 = call float @dx.op.unary.f32(i32 21, float %6537)  ; Exp(value)
  %6542 = call float @dx.op.unary.f32(i32 21, float %6539)  ; Exp(value)
  %6543 = call float @dx.op.unary.f32(i32 7, float %6540)  ; Saturate(value)
  %6544 = call float @dx.op.unary.f32(i32 7, float %6541)  ; Saturate(value)
  %6545 = call float @dx.op.unary.f32(i32 7, float %6542)  ; Saturate(value)
  %6546 = fmul fast float %6469, %6543
  %6547 = fmul fast float %6470, %6544
  %6548 = fmul fast float %6471, %6545
  %6549 = fsub fast float %6423, %5538
  %6550 = fsub fast float %6424, %5537
  %6551 = fsub fast float %6425, %5536
  %6552 = call float @dx.op.dot3.f32(i32 55, float %6549, float %6550, float %6551, float %6549, float %6550, float %6551)  ; Dot3(ax,ay,az,bx,by,bz)
  %6553 = call float @dx.op.unary.f32(i32 25, float %6552)  ; Rsqrt(value)
  %6554 = fmul fast float %6553, %6549
  %6555 = fmul fast float %6553, %6550
  %6556 = fmul fast float %6553, %6551
  %6557 = call float @dx.op.dot3.f32(i32 55, float %6423, float %6424, float %6425, float %5545, float %5546, float %5547)  ; Dot3(ax,ay,az,bx,by,bz)
  %6558 = call float @dx.op.dot3.f32(i32 55, float %5535, float %5534, float %5533, float %6554, float %6555, float %6556)  ; Dot3(ax,ay,az,bx,by,bz)
  %6559 = call float @dx.op.unary.f32(i32 7, float %6557)  ; Saturate(value)
  %6560 = fmul fast float %6559, %6430
  %6561 = fmul fast float %6559, %6559
  %6562 = fmul fast float %6561, %5565
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fmul fast float %6560, %6563
  %6565 = bitcast float %6420 to i32
  %6566 = ashr i32 %6565, 1
  %6567 = sub nsw i32 1597463007, %6566
  %6568 = bitcast i32 %6567 to float
  %6569 = fmul fast float %6568, %6417
  %6570 = fmul fast float %6568, %6418
  %6571 = fmul fast float %6568, %6419
  %6572 = fsub fast float %6569, %5538
  %6573 = fsub fast float %6570, %5537
  %6574 = fsub fast float %6571, %5536
  %6575 = call float @dx.op.dot3.f32(i32 55, float %6572, float %6573, float %6574, float %6572, float %6573, float %6574)  ; Dot3(ax,ay,az,bx,by,bz)
  %6576 = call float @dx.op.unary.f32(i32 25, float %6575)  ; Rsqrt(value)
  %6577 = fmul fast float %6572, %6576
  %6578 = fmul fast float %6573, %6576
  %6579 = fmul fast float %6574, %6576
  %6580 = call float @dx.op.dot3.f32(i32 55, float %5545, float %5546, float %5547, float %6577, float %6578, float %6579)  ; Dot3(ax,ay,az,bx,by,bz)
  %6581 = fmul fast float %6580, %6580
  %6582 = call float @dx.op.unary.f32(i32 6, float %6557)  ; FAbs(value)
  %6583 = call float @dx.op.binary.f32(i32 35, float %5907, float 0x3F847AE140000000)  ; FMax(a,b)
  %6584 = fmul fast float %6583, %6583
  %6585 = fmul fast float %6584, %6584
  %6586 = fsub fast float 1.000000e+00, %6585
  %6587 = fmul fast float %5552, %5552
  %6588 = fmul fast float %6587, %6586
  %6589 = fadd fast float %6588, %6585
  %6590 = bitcast float %6589 to i32
  %6591 = ashr i32 %6590, 1
  %6592 = add nsw i32 %6591, 532487669
  %6593 = bitcast i32 %6592 to float
  %6594 = fadd fast float %6593, %5552
  %6595 = fmul fast float %6585, %6581
  %6596 = fsub fast float 1.000000e+00, %6581
  %6597 = fadd fast float %6596, %6595
  %6598 = fmul fast float %6582, %6582
  %6599 = fmul fast float %6598, %6586
  %6600 = fadd fast float %6599, %6585
  %6601 = bitcast float %6600 to i32
  %6602 = ashr i32 %6601, 1
  %6603 = add nsw i32 %6602, 532487669
  %6604 = bitcast i32 %6603 to float
  %6605 = fadd fast float %6604, %6582
  %6606 = fmul fast float %6597, %6597
  %6607 = fmul fast float %6606, %6594
  %6608 = fmul fast float %6607, %6605
  %6609 = fdiv fast float 1.000000e+00, %6608
  %6610 = bitcast float %6585 to i32
  %6611 = sitofp i32 %6610 to float
  %6612 = fmul fast float %6611, 0x3FE7F73180000000
  %6613 = fadd fast float %6612, 0x41AFE27C40000000
  %6614 = fptosi float %6613 to i32
  %6615 = bitcast i32 %6614 to float
  %6616 = fmul fast float %6402, 0x3FD80E9D60000000
  %6617 = fmul fast float %6616, %6568
  %6618 = fadd fast float %6615, %6617
  %6619 = bitcast float %6618 to i32
  %6620 = sub nsw i32 2129859010, %6619
  %6621 = bitcast i32 %6620 to float
  %6622 = fmul fast float %6585, %6609
  %6623 = fmul fast float %6622, %6615
  %6624 = fmul fast float %6623, %6621
  %6625 = call float @dx.op.unary.f32(i32 6, float %6558)  ; FAbs(value)
  %6626 = fsub fast float 1.000000e+00, %6625
  %6627 = bitcast float %6626 to i32
  %6628 = sitofp i32 %6627 to float
  %6629 = fmul fast float %6628, 5.000000e+00
  %6630 = fadd fast float %6629, 0xC1EFBF8940000000
  %6631 = fptosi float %6630 to i32
  %6632 = bitcast i32 %6631 to float
  %6633 = fsub fast float 1.000000e+00, %5539
  %6634 = fsub fast float 1.000000e+00, %5540
  %6635 = fsub fast float 1.000000e+00, %5550
  %6636 = fmul fast float %6632, %6633
  %6637 = fmul fast float %6632, %6634
  %6638 = fmul fast float %6632, %6635
  %6639 = fadd fast float %6636, %5539
  %6640 = fadd fast float %6637, %5540
  %6641 = fadd fast float %6638, %5550
  br i1 %5822, label %6642, label %6665

; <label>:6642                                    ; preds = %6529
  %6643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4908, float %6625, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6644 = extractvalue %dx.types.ResRet.f32 %6643, 0
  %6645 = extractvalue %dx.types.ResRet.f32 %6643, 1
  %6646 = extractvalue %dx.types.ResRet.f32 %6643, 2
  %6647 = fadd fast float %6644, -5.000000e-01
  %6648 = fadd fast float %6645, -5.000000e-01
  %6649 = fadd fast float %6646, -5.000000e-01
  %6650 = fmul fast float %5539, 4.000000e+00
  %6651 = fmul fast float %6650, %6633
  %6652 = fmul fast float %6651, %6647
  %6653 = fmul fast float %5540, 4.000000e+00
  %6654 = fmul fast float %6653, %6634
  %6655 = fmul fast float %6654, %6648
  %6656 = fmul fast float %5550, 4.000000e+00
  %6657 = fmul fast float %6656, %6635
  %6658 = fmul fast float %6657, %6649
  %6659 = fadd fast float %6652, %6639
  %6660 = fadd fast float %6655, %6640
  %6661 = fadd fast float %6658, %6641
  %6662 = call float @dx.op.unary.f32(i32 7, float %6659)  ; Saturate(value)
  %6663 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  %6664 = call float @dx.op.unary.f32(i32 7, float %6661)  ; Saturate(value)
  br label %6665

; <label>:6665                                    ; preds = %6642, %6529
  %6666 = phi float [ %6662, %6642 ], [ %6639, %6529 ]
  %6667 = phi float [ %6663, %6642 ], [ %6640, %6529 ]
  %6668 = phi float [ %6664, %6642 ], [ %6641, %6529 ]
  %6669 = fmul fast float %6557, 9.843750e-01
  %6670 = fadd fast float %6669, 7.812500e-03
  %6671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6670, float %5812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6672 = extractvalue %dx.types.ResRet.f32 %6671, 2
  %6673 = extractvalue %dx.types.ResRet.f32 %6671, 3
  %6674 = fmul fast float %6672, %5539
  %6675 = fmul fast float %6672, %5540
  %6676 = fmul fast float %6672, %5550
  %6677 = fadd fast float %6674, %6673
  %6678 = fadd fast float %6675, %6673
  %6679 = fadd fast float %6676, %6673
  br i1 %5822, label %6680, label %6703

; <label>:6680                                    ; preds = %6665
  %6681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4908, float %6557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6682 = extractvalue %dx.types.ResRet.f32 %6681, 0
  %6683 = extractvalue %dx.types.ResRet.f32 %6681, 1
  %6684 = extractvalue %dx.types.ResRet.f32 %6681, 2
  %6685 = fadd fast float %6682, -5.000000e-01
  %6686 = fadd fast float %6683, -5.000000e-01
  %6687 = fadd fast float %6684, -5.000000e-01
  %6688 = fmul fast float %5539, 4.000000e+00
  %6689 = fmul fast float %6688, %6633
  %6690 = fmul fast float %6689, %6685
  %6691 = fmul fast float %5540, 4.000000e+00
  %6692 = fmul fast float %6691, %6634
  %6693 = fmul fast float %6692, %6686
  %6694 = fmul fast float %5550, 4.000000e+00
  %6695 = fmul fast float %6694, %6635
  %6696 = fmul fast float %6695, %6687
  %6697 = fadd fast float %6690, %6677
  %6698 = fadd fast float %6693, %6678
  %6699 = fadd fast float %6696, %6679
  %6700 = call float @dx.op.unary.f32(i32 7, float %6697)  ; Saturate(value)
  %6701 = call float @dx.op.unary.f32(i32 7, float %6698)  ; Saturate(value)
  %6702 = call float @dx.op.unary.f32(i32 7, float %6699)  ; Saturate(value)
  br label %6703

; <label>:6703                                    ; preds = %6680, %6665
  %6704 = phi float [ %6700, %6680 ], [ %6677, %6665 ]
  %6705 = phi float [ %6701, %6680 ], [ %6678, %6665 ]
  %6706 = phi float [ %6702, %6680 ], [ %6679, %6665 ]
  %6707 = call float @dx.op.binary.f32(i32 35, float %6705, float %6706)  ; FMax(a,b)
  %6708 = call float @dx.op.binary.f32(i32 35, float %6704, float %6707)  ; FMax(a,b)
  %6709 = fsub fast float 1.000000e+00, %6708
  %6710 = call float @dx.op.binary.f32(i32 35, float %6582, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6711 = fdiv fast float %4261, %6710
  %6712 = fmul fast float %5938, %6711
  %6713 = fmul fast float %5928, %6711
  %6714 = fmul fast float %5918, %6711
  %6715 = call float @dx.op.unary.f32(i32 21, float %6712)  ; Exp(value)
  %6716 = call float @dx.op.unary.f32(i32 21, float %6713)  ; Exp(value)
  %6717 = call float @dx.op.unary.f32(i32 21, float %6714)  ; Exp(value)
  %6718 = call float @dx.op.unary.f32(i32 7, float %6715)  ; Saturate(value)
  %6719 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6720 = call float @dx.op.unary.f32(i32 7, float %6717)  ; Saturate(value)
  %6721 = select i1 %5937, float %6718, float 0.000000e+00
  %6722 = select i1 %5927, float %6719, float 0.000000e+00
  %6723 = select i1 %5917, float %6720, float 0.000000e+00
  %6724 = fsub fast float -0.000000e+00, %5545
  %6725 = fsub fast float -0.000000e+00, %5546
  %6726 = fsub fast float -0.000000e+00, %5547
  %6727 = call float @dx.op.dot3.f32(i32 55, float %6423, float %6424, float %6425, float %6724, float %6725, float %6726)  ; Dot3(ax,ay,az,bx,by,bz)
  %6728 = call float @dx.op.unary.f32(i32 7, float %6727)  ; Saturate(value)
  %6729 = fmul fast float %6728, %6430
  %6730 = fmul fast float %6728, 9.843750e-01
  %6731 = fadd fast float %6730, 7.812500e-03
  %6732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6731, float %5812, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6733 = extractvalue %dx.types.ResRet.f32 %6732, 2
  %6734 = extractvalue %dx.types.ResRet.f32 %6732, 3
  %6735 = fmul fast float %6733, %5539
  %6736 = fmul fast float %6733, %5540
  %6737 = fmul fast float %6733, %5550
  %6738 = fadd fast float %6735, %6734
  %6739 = fadd fast float %6736, %6734
  %6740 = fadd fast float %6737, %6734
  br i1 %5822, label %6741, label %6764

; <label>:6741                                    ; preds = %6703
  %6742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4908, float %6728, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6743 = extractvalue %dx.types.ResRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.ResRet.f32 %6742, 1
  %6745 = extractvalue %dx.types.ResRet.f32 %6742, 2
  %6746 = fadd fast float %6743, -5.000000e-01
  %6747 = fadd fast float %6744, -5.000000e-01
  %6748 = fadd fast float %6745, -5.000000e-01
  %6749 = fmul fast float %5539, 4.000000e+00
  %6750 = fmul fast float %6749, %6633
  %6751 = fmul fast float %6750, %6746
  %6752 = fmul fast float %5540, 4.000000e+00
  %6753 = fmul fast float %6752, %6634
  %6754 = fmul fast float %6753, %6747
  %6755 = fmul fast float %5550, 4.000000e+00
  %6756 = fmul fast float %6755, %6635
  %6757 = fmul fast float %6756, %6748
  %6758 = fadd fast float %6751, %6738
  %6759 = fadd fast float %6754, %6739
  %6760 = fadd fast float %6757, %6740
  %6761 = call float @dx.op.unary.f32(i32 7, float %6758)  ; Saturate(value)
  %6762 = call float @dx.op.unary.f32(i32 7, float %6759)  ; Saturate(value)
  %6763 = call float @dx.op.unary.f32(i32 7, float %6760)  ; Saturate(value)
  br label %6764

; <label>:6764                                    ; preds = %6741, %6703
  %6765 = phi float [ %6761, %6741 ], [ %6738, %6703 ]
  %6766 = phi float [ %6762, %6741 ], [ %6739, %6703 ]
  %6767 = phi float [ %6763, %6741 ], [ %6740, %6703 ]
  %6768 = call float @dx.op.binary.f32(i32 35, float %6766, float %6767)  ; FMax(a,b)
  %6769 = call float @dx.op.binary.f32(i32 35, float %6765, float %6768)  ; FMax(a,b)
  %6770 = fsub fast float 1.000000e+00, %6769
  %6771 = fmul fast float %5907, %5912
  %6772 = fadd fast float %5914, %6771
  %6773 = call float @dx.op.unary.f32(i32 7, float %6772)  ; Saturate(value)
  %6774 = fsub fast float %6569, %5558
  %6775 = fsub fast float %6570, %5559
  %6776 = fsub fast float %6571, %5560
  %6777 = call float @dx.op.dot3.f32(i32 55, float %6774, float %6775, float %6776, float %6774, float %6775, float %6776)  ; Dot3(ax,ay,az,bx,by,bz)
  %6778 = call float @dx.op.unary.f32(i32 25, float %6777)  ; Rsqrt(value)
  %6779 = fmul fast float %6774, %6778
  %6780 = fmul fast float %6775, %6778
  %6781 = fmul fast float %6776, %6778
  %6782 = call float @dx.op.dot3.f32(i32 55, float %6724, float %6725, float %6726, float %6779, float %6780, float %6781)  ; Dot3(ax,ay,az,bx,by,bz)
  %6783 = fmul fast float %6782, %6782
  %6784 = call float @dx.op.unary.f32(i32 6, float %6728)  ; FAbs(value)
  %6785 = call float @dx.op.binary.f32(i32 35, float %6773, float 0x3F847AE140000000)  ; FMax(a,b)
  %6786 = fmul fast float %6785, %6785
  %6787 = fmul fast float %6786, %6786
  %6788 = fsub fast float 1.000000e+00, %6787
  %6789 = fmul fast float %6587, %6788
  %6790 = fadd fast float %6789, %6787
  %6791 = bitcast float %6790 to i32
  %6792 = ashr i32 %6791, 1
  %6793 = add nsw i32 %6792, 532487669
  %6794 = bitcast i32 %6793 to float
  %6795 = fadd fast float %6794, %5552
  %6796 = fmul fast float %6787, %6783
  %6797 = fsub fast float 1.000000e+00, %6783
  %6798 = fadd fast float %6797, %6796
  %6799 = fmul fast float %6784, %6784
  %6800 = fmul fast float %6799, %6788
  %6801 = fadd fast float %6800, %6787
  %6802 = bitcast float %6801 to i32
  %6803 = ashr i32 %6802, 1
  %6804 = add nsw i32 %6803, 532487669
  %6805 = bitcast i32 %6804 to float
  %6806 = fadd fast float %6805, %6784
  %6807 = fmul fast float %6798, %6798
  %6808 = fmul fast float %6807, %6795
  %6809 = fmul fast float %6808, %6806
  %6810 = fdiv fast float 1.000000e+00, %6809
  %6811 = bitcast float %6787 to i32
  %6812 = sitofp i32 %6811 to float
  %6813 = fmul fast float %6812, 0x3FE7F73180000000
  %6814 = fadd fast float %6813, 0x41AFE27C40000000
  %6815 = fptosi float %6814 to i32
  %6816 = bitcast i32 %6815 to float
  %6817 = fadd fast float %6816, %6617
  %6818 = bitcast float %6817 to i32
  %6819 = sub nsw i32 2129859010, %6818
  %6820 = bitcast i32 %6819 to float
  %6821 = fmul fast float %6787, %6810
  %6822 = fmul fast float %6821, %6816
  %6823 = fmul fast float %6822, %6820
  br i1 %6416, label %6824, label %6834

; <label>:6824                                    ; preds = %6764
  %6825 = fmul fast float %6729, %6721
  %6826 = fmul fast float %6729, %6722
  %6827 = fmul fast float %6729, %6723
  %6828 = fmul fast float %6825, %6770
  %6829 = fmul fast float %6828, %6823
  %6830 = fmul fast float %6826, %6770
  %6831 = fmul fast float %6830, %6823
  %6832 = fmul fast float %6827, %6770
  %6833 = fmul fast float %6832, %6823
  br label %6834

; <label>:6834                                    ; preds = %6824, %6764
  %6835 = phi float [ %6829, %6824 ], [ 0.000000e+00, %6764 ]
  %6836 = phi float [ %6831, %6824 ], [ 0.000000e+00, %6764 ]
  %6837 = phi float [ %6833, %6824 ], [ 0.000000e+00, %6764 ]
  %6838 = fmul fast float %6666, %6624
  %6839 = fmul fast float %6667, %6624
  %6840 = fmul fast float %6668, %6624
  %6841 = fsub fast float 1.000000e+00, %6558
  %6842 = bitcast float %6841 to i32
  %6843 = sitofp i32 %6842 to float
  %6844 = fmul fast float %6843, 5.000000e+00
  %6845 = fadd fast float %6844, 0xC1EFBF8940000000
  %6846 = fptosi float %6845 to i32
  %6847 = bitcast i32 %6846 to float
  %6848 = fmul fast float %6847, %4909
  %6849 = fmul fast float %6709, %6848
  %6850 = fmul fast float %6849, %5869
  %6851 = fmul fast float %6849, %5870
  %6852 = fmul fast float %6849, %5871
  %6853 = fadd fast float %6850, %6838
  %6854 = fadd fast float %6851, %6839
  %6855 = fadd fast float %6852, %6840
  %6856 = fmul fast float %6853, %6564
  %6857 = fmul fast float %6854, %6564
  %6858 = fmul fast float %6855, %6564
  %6859 = fadd fast float %6856, %6835
  %6860 = fadd fast float %6857, %6836
  %6861 = fadd fast float %6858, %6837
  %6862 = fmul fast float %6546, %4905
  %6863 = fmul fast float %6862, %6564
  %6864 = fmul fast float %6863, %6709
  %6865 = fmul fast float %6547, %4905
  %6866 = fmul fast float %6865, %6564
  %6867 = fmul fast float %6866, %6709
  %6868 = fmul fast float %6548, %4905
  %6869 = fmul fast float %6868, %6564
  %6870 = fmul fast float %6869, %6709
  %6871 = fadd fast float %6864, %6381
  %6872 = fadd fast float %6867, %6382
  %6873 = fadd fast float %6870, %6383
  %6874 = fmul fast float %6862, %6859
  %6875 = fmul fast float %6865, %6860
  %6876 = fmul fast float %6868, %6861
  %6877 = fadd fast float %6874, %6378
  %6878 = fadd fast float %6875, %6379
  %6879 = fadd fast float %6876, %6380
  br label %6460

; <label>:6880                                    ; preds = %6460
  br label %6881

; <label>:6881                                    ; preds = %6880, %6344
  %6882 = phi float [ %6346, %6344 ], [ %6461, %6880 ]
  %6883 = phi float [ %6347, %6344 ], [ %6462, %6880 ]
  %6884 = phi float [ %6348, %6344 ], [ %6463, %6880 ]
  %6885 = phi float [ %6349, %6344 ], [ %6464, %6880 ]
  %6886 = phi float [ %6350, %6344 ], [ %6465, %6880 ]
  %6887 = phi float [ %6351, %6344 ], [ %6466, %6880 ]
  %6888 = add i32 %6345, 1
  %6889 = icmp ugt i32 %6888, %6341
  br i1 %6889, label %6890, label %6344

; <label>:6890                                    ; preds = %6881
  br label %6891

; <label>:6891                                    ; preds = %6890, %6320, %6310
  %6892 = phi float [ %6311, %6310 ], [ %6311, %6320 ], [ %6882, %6890 ]
  %6893 = phi float [ %6312, %6310 ], [ %6312, %6320 ], [ %6883, %6890 ]
  %6894 = phi float [ %6313, %6310 ], [ %6313, %6320 ], [ %6884, %6890 ]
  %6895 = phi float [ %6314, %6310 ], [ %6314, %6320 ], [ %6885, %6890 ]
  %6896 = phi float [ %6315, %6310 ], [ %6315, %6320 ], [ %6886, %6890 ]
  %6897 = phi float [ %6316, %6310 ], [ %6316, %6320 ], [ %6887, %6890 ]
  %6898 = call float @dx.op.unary.f32(i32 24, float %5542)  ; Sqrt(value)
  %6899 = call float @dx.op.unary.f32(i32 24, float %5543)  ; Sqrt(value)
  %6900 = call float @dx.op.unary.f32(i32 24, float %5544)  ; Sqrt(value)
  %6901 = fmul fast float %6898, %6895
  %6902 = fmul fast float %6899, %6896
  %6903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6904 = extractvalue %dx.types.CBufRet.f32 %6903, 0
  br i1 %176, label %6905, label %6925

; <label>:6905                                    ; preds = %6891
  %6906 = fadd fast float %6897, %4911
  %6907 = fmul fast float %6906, %4912
  %6908 = fsub fast float 1.000000e+00, %4912
  %6909 = call float @dx.op.unary.f32(i32 7, float %6908)  ; Saturate(value)
  %6910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6911 = extractvalue %dx.types.CBufRet.f32 %6910, 3
  %6912 = fmul fast float %6911, %6909
  %6913 = fadd fast float %6912, %6907
  %6914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6915 = extractvalue %dx.types.CBufRet.f32 %6914, 0
  %6916 = fmul fast float %6915, %5877
  %6917 = fsub fast float %6913, %6916
  %6918 = fadd fast float %6902, %6901
  %6919 = fmul fast float %6904, %6918
  %6920 = extractvalue %dx.types.CBufRet.f32 %6910, 1
  %6921 = fsub fast float %6917, %6920
  %6922 = extractvalue %dx.types.CBufRet.f32 %6910, 2
  %6923 = fmul fast float %6921, %6922
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  br label %6941

; <label>:6925                                    ; preds = %6891
  %6926 = fmul fast float %6900, %6897
  %6927 = fmul fast float %6904, %6901
  %6928 = fmul fast float %6904, %6902
  %6929 = fmul fast float %6926, %6904
  %6930 = add i32 %35, 356
  %6931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6930, i32 undef)  ; BufferLoad(srv,index,wot)
  %6932 = extractvalue %dx.types.ResRet.i32 %6931, 0
  %6933 = and i32 %6932, 32
  %6934 = icmp eq i32 %6933, 0
  br i1 %6934, label %6941, label %6935

; <label>:6935                                    ; preds = %6925
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 0
  %6938 = fmul fast float %6937, 0x3FE99999A0000000
  %6939 = fadd fast float %6937, %6927
  %6940 = fadd fast float %6938, %6929
  br label %6941

; <label>:6941                                    ; preds = %6935, %6925, %6905
  %6942 = phi float [ %6919, %6905 ], [ %6939, %6935 ], [ %6927, %6925 ]
  %6943 = phi float [ %6924, %6905 ], [ %6928, %6935 ], [ %6928, %6925 ]
  %6944 = phi float [ 1.000000e+00, %6905 ], [ %6940, %6935 ], [ %6929, %6925 ]
  %6945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6946 = extractvalue %dx.types.CBufRet.f32 %6945, 0
  %6947 = fmul fast float %6946, %6893
  %6948 = fmul fast float %6946, %6894
  %6949 = fadd fast float %6893, %6892
  %6950 = select i1 %176, float %6949, float %6892
  %6951 = fmul float %6950, %6946
  %6952 = select i1 %176, float 0.000000e+00, float %6947
  %6953 = select i1 %176, float 0.000000e+00, float %6948
  %6954 = fmul fast float %6942, %6898
  %6955 = fmul fast float %6943, %6899
  %6956 = fmul fast float %6944, %6900
  %6957 = fadd fast float %6951, %6954
  %6958 = fadd fast float %6952, %6955
  %6959 = fadd fast float %6953, %6956
  %6960 = select i1 %176, float %6943, float %6958
  %6961 = select i1 %176, float %6944, float %6959
  %6962 = call float @dx.op.binary.f32(i32 36, float %6957, float 3.225500e+04)  ; FMin(a,b)
  %6963 = call float @dx.op.binary.f32(i32 36, float %6960, float 3.225500e+04)  ; FMin(a,b)
  %6964 = call float @dx.op.binary.f32(i32 36, float %6961, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6962)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6963)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6964)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

