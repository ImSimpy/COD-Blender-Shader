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
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x z 
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
; shader hash: 9f8cb6c28ce7e10d64649fd08aaecb6d
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
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
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %67
  %75 = fmul fast float %73, %68
  %76 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %77 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %78 = bitcast float %77 to i32
  %79 = ashr i32 %78, 1
  %80 = sub nsw i32 1597250115, %79
  %81 = bitcast i32 %80 to float
  %82 = fmul fast float %59, %76
  %83 = fmul fast float %82, %81
  %84 = fmul fast float %60, %76
  %85 = fmul fast float %84, %81
  %86 = fmul fast float %61, %76
  %87 = fmul fast float %86, %81
  %88 = fmul fast float %60, %57
  %89 = fmul fast float %61, %56
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %61, %55
  %92 = fmul fast float %59, %57
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %59, %56
  %95 = fmul fast float %60, %55
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %58
  %98 = fmul fast float %93, %58
  %99 = fmul fast float %96, %58
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 3
  %103 = fmul fast float %74, 2.000000e+00
  %104 = fmul fast float %103, %101
  %105 = fmul fast float %75, 2.000000e+00
  %106 = fmul fast float %105, %102
  %107 = fsub fast float 1.000000e+00, %104
  %108 = fsub fast float 1.000000e+00, %106
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fmul fast float %107, %110
  %114 = fmul fast float %107, %111
  %115 = fmul fast float %107, %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %108, %117
  %121 = fmul fast float %108, %118
  %122 = fmul fast float %108, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fadd fast float %120, %124
  %128 = fadd fast float %127, %113
  %129 = fadd fast float %121, %125
  %130 = fadd fast float %129, %114
  %131 = fadd fast float %122, %126
  %132 = fadd fast float %131, %115
  %133 = fmul fast float %128, %69
  %134 = fmul fast float %130, %69
  %135 = fmul fast float %132, %69
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %137, %74
  %140 = fmul fast float %138, %75
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 114688
  %144 = icmp ne i32 %143, 0
  %145 = select i1 %144, float %139, float 0.000000e+00
  %146 = select i1 %144, float %140, float 0.000000e+00
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %145, float %146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fmul fast float %148, 2.550000e+02
  %150 = fptoui float %149 to i32
  %151 = select i1 %144, i32 %150, i32 0
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 3
  %155 = and i32 %154, 3
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %154, 4
  %158 = icmp ne i32 %157, 0
  %159 = and i1 %156, %158
  br i1 %159, label %160, label %171

; <label>:160                                     ; preds = %0
  %161 = extractvalue %dx.types.CBufRet.f32 %152, 3
  %162 = fmul fast float %161, %75
  %163 = extractvalue %dx.types.CBufRet.f32 %152, 2
  %164 = fmul fast float %163, %74
  %165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %164, float %162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %166 = extractvalue %dx.types.ResRet.f32 %165, 0
  %167 = fsub fast float 1.000000e+00, %166
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = fcmp fast olt float %167, %169
  br label %174

; <label>:171                                     ; preds = %0
  %172 = icmp eq i32 %157, 0
  %173 = and i1 %156, %172
  br label %174

; <label>:174                                     ; preds = %171, %160
  %175 = phi i1 [ %170, %160 ], [ %173, %171 ]
  %176 = add i32 %35, 156
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = shl i32 %178, 4
  %180 = and i32 %179, 32752
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = lshr i32 %178, 7
  %183 = and i32 %182, 32752
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = lshr i32 %178, 22
  %186 = shl nuw nsw i32 %185, 5
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186)  ; LegacyF16ToF32(value)
  %188 = add i32 %35, 216
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = lshr i32 %190, 8
  %195 = and i32 %194, 255
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F70101020000000
  %198 = lshr i32 %190, 16
  %199 = and i32 %198, 255
  %200 = uitofp i32 %199 to float
  %201 = fmul fast float %200, 0x3F70101020000000
  %202 = add i32 %35, 36
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 65535
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %204, 16
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = add i32 %35, 288
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 65535
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %211, 16
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = fmul fast float %213, 0x3F50624DE0000000
  %217 = fmul fast float %215, 0x3F50624DE0000000
  %218 = add i32 %35, 172
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = shl i32 %220, 4
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %220, 7
  %225 = and i32 %224, 32752
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %220, 22
  %228 = shl nuw nsw i32 %227, 5
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = add i32 %35, 232
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = lshr i32 %232, 8
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %232, 16
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = add i32 %35, 52
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 65535
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %246, 16
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = add i32 %35, 304
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = fmul fast float %255, 0x3F50624DE0000000
  %259 = fmul fast float %257, 0x3F50624DE0000000
  %260 = add i32 %35, 188
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = shl i32 %262, 4
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %262, 7
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %262, 22
  %270 = shl nuw nsw i32 %269, 5
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = add i32 %35, 248
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = lshr i32 %274, 8
  %279 = and i32 %278, 255
  %280 = uitofp i32 %279 to float
  %281 = fmul fast float %280, 0x3F70101020000000
  %282 = lshr i32 %274, 16
  %283 = and i32 %282, 255
  %284 = uitofp i32 %283 to float
  %285 = fmul fast float %284, 0x3F70101020000000
  %286 = add i32 %35, 68
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = and i32 %288, 65535
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %288, 16
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %35, 320
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = fmul fast float %297, 0x3F50624DE0000000
  %301 = fmul fast float %299, 0x3F50624DE0000000
  %302 = add i32 %35, 204
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = shl i32 %304, 4
  %306 = and i32 %305, 32752
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = lshr i32 %304, 7
  %309 = and i32 %308, 32752
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %304, 22
  %312 = shl nuw nsw i32 %311, 5
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %35, 264
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = lshr i32 %316, 8
  %321 = and i32 %320, 255
  %322 = uitofp i32 %321 to float
  %323 = fmul fast float %322, 0x3F70101020000000
  %324 = lshr i32 %316, 16
  %325 = and i32 %324, 255
  %326 = uitofp i32 %325 to float
  %327 = fmul fast float %326, 0x3F70101020000000
  %328 = add i32 %35, 84
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = and i32 %330, 65535
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %330, 16
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %35, 336
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = fmul fast float %339, 0x3F50624DE0000000
  %343 = fmul fast float %341, 0x3F50624DE0000000
  %344 = add i32 %35, 348
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 32
  %348 = icmp eq i32 %347, 0
  %349 = and i32 %346, 64
  %350 = icmp eq i32 %349, 0
  %351 = and i32 %346, 128
  %352 = icmp eq i32 %351, 0
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 2
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %370, label %357

; <label>:357                                     ; preds = %174
  %358 = add i32 %35, 472
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = add i32 %360, 0
  %362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %362, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %364 = extractvalue %dx.types.ResRet.f32 %363, 0
  %365 = extractvalue %dx.types.ResRet.f32 %363, 1
  %366 = extractvalue %dx.types.ResRet.f32 %363, 2
  %367 = fmul fast float %364, %64
  %368 = fmul fast float %365, %65
  %369 = fmul fast float %366, %66
  br label %370

; <label>:370                                     ; preds = %357, %174
  %371 = phi float [ %66, %174 ], [ %369, %357 ]
  %372 = phi float [ %65, %174 ], [ %368, %357 ]
  %373 = phi float [ %64, %174 ], [ %367, %357 ]
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 2
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %397, label %378

; <label>:378                                     ; preds = %370
  %379 = add i32 %35, 44
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 1
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %383, float %373, float 1.000000e+00
  %385 = add i32 %35, 60
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 1
  %389 = icmp ne i32 %388, 0
  %390 = select i1 %389, float %372, float 1.000000e+00
  %391 = add i32 %35, 76
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 1
  %395 = icmp ne i32 %394, 0
  %396 = select i1 %395, float %371, float 1.000000e+00
  br label %397

; <label>:397                                     ; preds = %378, %370
  %398 = phi float [ %371, %370 ], [ %396, %378 ]
  %399 = phi float [ %372, %370 ], [ %390, %378 ]
  %400 = phi float [ %373, %370 ], [ %384, %378 ]
  %401 = lshr i32 %375, 20
  %402 = and i32 %401, 3
  %403 = add nuw nsw i32 %402, 1
  %404 = add i32 %35, 24
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = add i32 %35, 28
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = or i32 %409, %406
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %923, label %412

; <label>:412                                     ; preds = %397
  %413 = and i32 %406, 262144
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %37, float 1.000000e+00
  %416 = select i1 %414, float %38, float 0.000000e+00
  %417 = select i1 %414, float %39, float 0.000000e+00
  %418 = select i1 %414, float %40, float 1.000000e+00
  %419 = select i1 %414, float %41, float %62
  %420 = select i1 %414, float %42, float %63
  %421 = add i32 %35, 284
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = lshr i32 %423, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = fmul fast float %425, 0x3F50624DE0000000
  %427 = add i32 %35, 88
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = lshr i32 %429, 16
  %431 = and i32 %430, 255
  %432 = lshr i32 %429, 24
  %433 = add i32 %35, 292
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 65535
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %435, 16
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = add i32 %35, 32
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = lshr i32 %442, 22
  %444 = shl nuw nsw i32 %443, 5
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = shl i32 %442, 4
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %442, 7
  %450 = and i32 %449, 32752
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %453 = extractvalue %dx.types.CBufRet.f32 %452, 3
  %454 = fmul fast float %453, 1.000000e+03
  %455 = fmul fast float %216, %454
  %456 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %457 = fadd fast float %456, %206
  %458 = fmul fast float %217, %454
  %459 = call float @dx.op.unary.f32(i32 22, float %458)  ; Frc(value)
  %460 = fadd fast float %459, %208
  %461 = fmul fast float %426, %454
  %462 = call float @dx.op.unary.f32(i32 22, float %461)  ; Frc(value)
  %463 = fmul fast float %462, 0x401921FB60000000
  %464 = fadd fast float %463, %445
  %465 = call float @dx.op.unary.f32(i32 13, float %464)  ; Sin(value)
  %466 = call float @dx.op.unary.f32(i32 12, float %464)  ; Cos(value)
  %467 = fsub fast float -0.000000e+00, %465
  %468 = fadd fast float %419, -5.000000e-01
  %469 = fadd fast float %420, -5.000000e-01
  %470 = fmul fast float %437, %468
  %471 = fmul fast float %439, %469
  %472 = fadd fast float %470, 5.000000e-01
  %473 = fadd fast float %471, 5.000000e-01
  %474 = fmul fast float %448, %472
  %475 = fmul fast float %451, %473
  %476 = fmul fast float %466, %474
  %477 = call float @dx.op.tertiary.f32(i32 46, float %467, float %475, float %476)  ; FMad(a,b,c)
  %478 = fmul fast float %465, %474
  %479 = call float @dx.op.tertiary.f32(i32 46, float %466, float %475, float %478)  ; FMad(a,b,c)
  %480 = fadd fast float %457, %477
  %481 = fadd fast float %460, %479
  %482 = icmp ugt i32 %431, 1
  %483 = icmp ugt i32 %429, 33554431
  %484 = or i1 %483, %482
  br i1 %484, label %485, label %510

; <label>:485                                     ; preds = %412
  %486 = add i32 %35, 228
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = lshr i32 %488, 16
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = fmul fast float %453, %490
  %492 = call float @dx.op.unary.f32(i32 22, float %491)  ; Frc(value)
  %493 = mul nuw nsw i32 %431, %432
  %494 = uitofp i32 %493 to float
  %495 = fmul fast float %492, %494
  %496 = call float @dx.op.unary.f32(i32 27, float %495)  ; Round_ni(value)
  %497 = fptoui float %496 to i32
  %498 = urem i32 %497, %431
  %499 = udiv i32 %497, %432
  %500 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %501 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %502 = uitofp i32 %498 to float
  %503 = uitofp i32 %499 to float
  %504 = fadd fast float %500, %502
  %505 = fadd fast float %501, %503
  %506 = uitofp i32 %431 to float
  %507 = uitofp i32 %432 to float
  %508 = fdiv fast float %504, %506
  %509 = fdiv fast float %505, %507
  br label %510

; <label>:510                                     ; preds = %485, %412
  %511 = phi float [ %508, %485 ], [ %480, %412 ]
  %512 = phi float [ %509, %485 ], [ %481, %412 ]
  %513 = and i32 %406, 16
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %711, label %515

; <label>:515                                     ; preds = %510
  %516 = add i32 %35, 360
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add i32 %518, 0
  %520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %520, %dx.types.Handle %70, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = extractvalue %dx.types.ResRet.f32 %521, 1
  %524 = extractvalue %dx.types.ResRet.f32 %521, 2
  %525 = extractvalue %dx.types.ResRet.f32 %521, 3
  %526 = and i32 %429, 255
  %527 = uitofp i32 %526 to float
  %528 = lshr i32 %429, 8
  %529 = and i32 %528, 255
  %530 = uitofp i32 %529 to float
  %531 = fmul fast float %525, %527
  %532 = fadd fast float %531, %530
  %533 = fmul fast float %532, 0x3F70101000000000
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 512
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %546, label %538

; <label>:538                                     ; preds = %515
  %539 = add i32 %35, 440
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = add i32 %541, 0
  %543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %543, %dx.types.Handle %71, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  br label %546

; <label>:546                                     ; preds = %538, %515
  %547 = phi float [ %545, %538 ], [ 1.000000e+00, %515 ]
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 33554432
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %658, label %552

; <label>:552                                     ; preds = %546
  %553 = add i32 %35, 224
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 65535
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = lshr i32 %555, 16
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = add i32 %35, 228
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = lshr i32 %566, 24
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = and i32 %566, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %566, 8
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = lshr i32 %566, 16
  %578 = and i32 %577, 255
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %579, 0x3F70101020000000
  %581 = add i32 %35, 220
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = lshr i32 %583, 24
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = and i32 %583, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = lshr i32 %583, 8
  %591 = and i32 %590, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = lshr i32 %583, 16
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = bitcast float %522 to i32
  %599 = ashr i32 %598, 1
  %600 = sub nsw i32 1597463174, %599
  %601 = bitcast i32 %600 to float
  %602 = fmul fast float %522, 5.000000e-01
  %603 = fmul fast float %601, %601
  %604 = fmul fast float %603, %602
  %605 = fsub fast float 1.500000e+00, %604
  %606 = fmul fast float %601, %522
  %607 = fmul fast float %606, %605
  %608 = bitcast float %523 to i32
  %609 = ashr i32 %608, 1
  %610 = sub nsw i32 1597463174, %609
  %611 = bitcast i32 %610 to float
  %612 = fmul fast float %523, 5.000000e-01
  %613 = fmul fast float %611, %611
  %614 = fmul fast float %613, %612
  %615 = fsub fast float 1.500000e+00, %614
  %616 = fmul fast float %611, %523
  %617 = fmul fast float %616, %615
  %618 = bitcast float %524 to i32
  %619 = ashr i32 %618, 1
  %620 = sub nsw i32 1597463174, %619
  %621 = bitcast i32 %620 to float
  %622 = fmul fast float %524, 5.000000e-01
  %623 = fmul fast float %621, %621
  %624 = fmul fast float %623, %622
  %625 = fsub fast float 1.500000e+00, %624
  %626 = fmul fast float %621, %524
  %627 = fmul fast float %626, %625
  %628 = fsub fast float %607, %589
  %629 = fsub fast float %617, %593
  %630 = fsub fast float %627, %597
  %631 = fmul fast float %628, %557
  %632 = fmul fast float %629, %559
  %633 = fmul fast float %630, %564
  %634 = fadd fast float %631, %572
  %635 = fadd fast float %632, %576
  %636 = fadd fast float %633, %580
  %637 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %638 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %640 = fmul fast float %637, %637
  %641 = fmul fast float %638, %638
  %642 = fmul fast float %639, %639
  %643 = fsub fast float %640, %522
  %644 = fsub fast float %641, %523
  %645 = fsub fast float %642, %524
  %646 = fmul fast float %643, %547
  %647 = fmul fast float %644, %547
  %648 = fmul fast float %645, %547
  %649 = fadd fast float %646, %522
  %650 = fadd fast float %647, %523
  %651 = fadd fast float %648, %524
  %652 = fadd fast float %569, %533
  %653 = fsub fast float %652, %586
  %654 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %655 = fsub fast float %654, %533
  %656 = fmul fast float %655, %547
  %657 = fadd fast float %656, %533
  br label %711

; <label>:658                                     ; preds = %546
  %659 = and i32 %549, 134217728
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %695, label %661

; <label>:661                                     ; preds = %658
  %662 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %663 = call float @dx.op.unary.f32(i32 24, float %197)  ; Sqrt(value)
  %664 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %665 = fadd fast float %662, -5.000000e-01
  %666 = fadd fast float %663, -5.000000e-01
  %667 = fadd fast float %664, -5.000000e-01
  %668 = fmul fast float %665, %547
  %669 = fmul fast float %666, %547
  %670 = fmul fast float %667, %547
  %671 = fadd fast float %668, 5.000000e-01
  %672 = fadd fast float %669, 5.000000e-01
  %673 = fadd fast float %670, 5.000000e-01
  %674 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %675 = call float @dx.op.unary.f32(i32 24, float %523)  ; Sqrt(value)
  %676 = call float @dx.op.unary.f32(i32 24, float %524)  ; Sqrt(value)
  %677 = fmul fast float %671, 2.000000e+00
  %678 = fsub fast float 1.000000e+00, %677
  %679 = fmul fast float %678, %674
  %680 = fadd fast float %679, %677
  %681 = fmul fast float %680, %674
  %682 = fmul fast float %672, 2.000000e+00
  %683 = fsub fast float 1.000000e+00, %682
  %684 = fmul fast float %683, %675
  %685 = fadd fast float %684, %682
  %686 = fmul fast float %685, %675
  %687 = fmul fast float %673, 2.000000e+00
  %688 = fsub fast float 1.000000e+00, %687
  %689 = fmul fast float %688, %676
  %690 = fadd fast float %689, %687
  %691 = fmul fast float %690, %676
  %692 = fmul fast float %681, %681
  %693 = fmul fast float %686, %686
  %694 = fmul fast float %691, %691
  br label %711

; <label>:695                                     ; preds = %658
  %696 = fmul fast float %193, %193
  %697 = fmul fast float %197, %197
  %698 = fmul fast float %201, %201
  %699 = fadd fast float %696, -1.000000e+00
  %700 = fadd fast float %697, -1.000000e+00
  %701 = fadd fast float %698, -1.000000e+00
  %702 = fmul fast float %547, %699
  %703 = fmul fast float %547, %700
  %704 = fmul fast float %547, %701
  %705 = fadd fast float %702, 1.000000e+00
  %706 = fadd fast float %703, 1.000000e+00
  %707 = fadd fast float %704, 1.000000e+00
  %708 = fmul fast float %705, %522
  %709 = fmul fast float %706, %523
  %710 = fmul fast float %707, %524
  br label %711

; <label>:711                                     ; preds = %695, %661, %552, %510
  %712 = phi float [ %657, %552 ], [ %533, %661 ], [ %533, %695 ], [ 0x3FA23C0BE0000000, %510 ]
  %713 = phi float [ %649, %552 ], [ %692, %661 ], [ %708, %695 ], [ 1.000000e+00, %510 ]
  %714 = phi float [ %650, %552 ], [ %693, %661 ], [ %709, %695 ], [ 1.000000e+00, %510 ]
  %715 = phi float [ %651, %552 ], [ %694, %661 ], [ %710, %695 ], [ 1.000000e+00, %510 ]
  %716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %717 = extractvalue %dx.types.CBufRet.i32 %716, 1
  %718 = and i32 %717, 1
  %719 = icmp ne i32 %718, 0
  %720 = add i32 %35, 356
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 32
  %724 = icmp ne i32 %723, 0
  %725 = and i1 %719, %724
  %726 = select i1 %725, float 1.000000e+00, float %713
  %727 = select i1 %725, float 0x3FD3333340000000, float %714
  %728 = select i1 %725, float 0x3FD3333340000000, float %715
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 32
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %805, label %733

; <label>:733                                     ; preds = %711
  %734 = add i32 %35, 92
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %35, 376
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = add i32 %739, 0
  %741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %741, %dx.types.Handle %70, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = extractvalue %dx.types.ResRet.f32 %742, 1
  %745 = extractvalue %dx.types.ResRet.f32 %742, 2
  %746 = extractvalue %dx.types.ResRet.f32 %742, 3
  %747 = and i32 %736, 255
  %748 = uitofp i32 %747 to float
  %749 = lshr i32 %736, 8
  %750 = and i32 %749, 255
  %751 = uitofp i32 %750 to float
  %752 = lshr i32 %736, 16
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101000000000
  %756 = fmul fast float %743, %748
  %757 = fadd fast float %756, %751
  %758 = fmul fast float %757, 0x3F70101000000000
  %759 = fadd fast float %744, -5.000000e-01
  %760 = fadd fast float %746, -5.000000e-01
  %761 = fmul fast float %759, %755
  %762 = fmul fast float %760, %755
  %763 = fadd fast float %761, 5.000000e-01
  %764 = fadd fast float %762, 5.000000e-01
  %765 = fmul fast float %763, 2.000000e+00
  %766 = fadd fast float %765, -1.000000e+00
  %767 = fmul fast float %764, 2.000000e+00
  %768 = fadd fast float %767, -1.000000e+00
  %769 = fadd fast float %766, %768
  %770 = fmul fast float %769, 5.000000e-01
  %771 = fsub fast float %766, %768
  %772 = fmul fast float %771, 5.000000e-01
  %773 = call float @dx.op.unary.f32(i32 6, float %770)  ; FAbs(value)
  %774 = fsub fast float 1.000000e+00, %773
  %775 = call float @dx.op.unary.f32(i32 6, float %772)  ; FAbs(value)
  %776 = fsub fast float %774, %775
  %777 = call float @dx.op.dot3.f32(i32 55, float %770, float %772, float %776, float %770, float %772, float %776)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = call float @dx.op.unary.f32(i32 25, float %777)  ; Rsqrt(value)
  %779 = fmul fast float %770, %778
  %780 = fmul fast float %772, %778
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 67108864
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %801, label %785

; <label>:785                                     ; preds = %733
  %786 = add i32 %35, 280
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 65535
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = and i32 %792, 65535
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = lshr i32 %788, 16
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = fsub fast float %758, %796
  %798 = fmul fast float %797, %790
  %799 = fadd fast float %798, %794
  %800 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  br label %801

; <label>:801                                     ; preds = %785, %733
  %802 = phi float [ %800, %785 ], [ %758, %733 ]
  %803 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %415, float %416)  ; Dot2(ax,ay,bx,by)
  %804 = call float @dx.op.dot2.f32(i32 54, float %779, float %780, float %417, float %418)  ; Dot2(ax,ay,bx,by)
  br label %805

; <label>:805                                     ; preds = %801, %711
  %806 = phi float [ %802, %801 ], [ 0x3FD6666660000000, %711 ]
  %807 = phi float [ %803, %801 ], [ 0.000000e+00, %711 ]
  %808 = phi float [ %804, %801 ], [ 0.000000e+00, %711 ]
  %809 = phi float [ %745, %801 ], [ 1.000000e+00, %711 ]
  %810 = add i32 %35, 160
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = lshr i32 %812, 22
  %814 = shl nuw nsw i32 %813, 5
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 64
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %853, label %820

; <label>:820                                     ; preds = %805
  %821 = add i32 %35, 392
  %822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.i32 %822, 0
  %824 = add i32 %823, 0
  %825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.i32 %826, 0
  %828 = and i32 %827, 131072
  %829 = icmp eq i32 %828, 0
  %830 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %825, %dx.types.Handle %70, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = extractvalue %dx.types.ResRet.f32 %830, 2
  %834 = fmul fast float %831, %181
  %835 = fmul fast float %832, %184
  %836 = fmul fast float %833, %187
  br i1 %829, label %843, label %837

; <label>:837                                     ; preds = %820
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 0
  %840 = fmul fast float %839, %834
  %841 = fmul fast float %839, %835
  %842 = fmul fast float %839, %836
  br label %843

; <label>:843                                     ; preds = %837, %820
  %844 = phi float [ %840, %837 ], [ %834, %820 ]
  %845 = phi float [ %841, %837 ], [ %835, %820 ]
  %846 = phi float [ %842, %837 ], [ %836, %820 ]
  %847 = fmul fast float %844, %815
  %848 = select i1 %175, float %847, float %844
  %849 = call float @dx.op.dot3.f32(i32 55, float %848, float %845, float %846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %850 = select i1 %175, float 0.000000e+00, float %844
  %851 = select i1 %175, float %849, float %845
  %852 = select i1 %175, float 0.000000e+00, float %846
  br label %853

; <label>:853                                     ; preds = %843, %805
  %854 = phi float [ %850, %843 ], [ 0.000000e+00, %805 ]
  %855 = phi float [ %851, %843 ], [ 0.000000e+00, %805 ]
  %856 = phi float [ %852, %843 ], [ 0.000000e+00, %805 ]
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 10240
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %905, label %861

; <label>:861                                     ; preds = %853
  %862 = add i32 %35, 456
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = add i32 %864, 0
  %866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %866, %dx.types.Handle %71, float %511, float %512, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 1
  %869 = extractvalue %dx.types.ResRet.f32 %867, 3
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = and i32 %871, 1048576
  %873 = icmp ne i32 %872, 0
  %874 = and i32 %871, 8192
  %875 = icmp eq i32 %874, 0
  br i1 %875, label %891, label %876

; <label>:876                                     ; preds = %861
  %877 = extractvalue %dx.types.ResRet.f32 %867, 2
  %878 = select i1 %873, float %877, float %868
  %879 = extractvalue %dx.types.ResRet.f32 %867, 0
  %880 = select i1 %873, float %879, float %868
  %881 = add i32 %35, 96
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = lshr i32 %883, 16
  %885 = and i32 %884, 255
  %886 = uitofp i32 %885 to float
  %887 = fmul fast float %886, 0x3F80101020000000
  %888 = fmul fast float %887, %880
  %889 = fmul fast float %887, %868
  %890 = fmul fast float %887, %878
  br label %891

; <label>:891                                     ; preds = %876, %861
  %892 = phi float [ %888, %876 ], [ 0.000000e+00, %861 ]
  %893 = phi float [ %889, %876 ], [ 0.000000e+00, %861 ]
  %894 = phi float [ %890, %876 ], [ 0.000000e+00, %861 ]
  %895 = and i32 %871, 2048
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %905, label %897

; <label>:897                                     ; preds = %891
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = shl i32 %899, 4
  %901 = and i32 %900, 32752
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = fmul fast float %902, %869
  %904 = call float @dx.op.binary.f32(i32 35, float %903, float 0x3F70101020000000)  ; FMax(a,b)
  br label %905

; <label>:905                                     ; preds = %897, %891, %853
  %906 = phi float [ %892, %897 ], [ %892, %891 ], [ 0.000000e+00, %853 ]
  %907 = phi float [ %893, %897 ], [ %893, %891 ], [ 0.000000e+00, %853 ]
  %908 = phi float [ %894, %897 ], [ %894, %891 ], [ 0.000000e+00, %853 ]
  %909 = phi float [ %904, %897 ], [ 0x3F70101020000000, %891 ], [ 0x3F70101020000000, %853 ]
  %910 = add i32 %35, 96
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %912, 8
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = call float @dx.op.dot3.f32(i32 55, float %726, float %727, float %728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = fmul fast float %917, %918
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %920, 0x3F70101020000000
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  br label %923

; <label>:923                                     ; preds = %905, %397
  %924 = phi float [ 0.000000e+00, %397 ], [ %807, %905 ]
  %925 = phi float [ 0.000000e+00, %397 ], [ %808, %905 ]
  %926 = phi float [ 0.000000e+00, %397 ], [ %726, %905 ]
  %927 = phi float [ 0.000000e+00, %397 ], [ %727, %905 ]
  %928 = phi float [ 0.000000e+00, %397 ], [ %728, %905 ]
  %929 = phi float [ 0.000000e+00, %397 ], [ %854, %905 ]
  %930 = phi float [ 0.000000e+00, %397 ], [ %855, %905 ]
  %931 = phi float [ 0.000000e+00, %397 ], [ %856, %905 ]
  %932 = phi float [ 0.000000e+00, %397 ], [ %906, %905 ]
  %933 = phi float [ 0.000000e+00, %397 ], [ %907, %905 ]
  %934 = phi float [ 0.000000e+00, %397 ], [ %908, %905 ]
  %935 = phi float [ 0.000000e+00, %397 ], [ %712, %905 ]
  %936 = phi float [ 0.000000e+00, %397 ], [ 1.000000e+00, %905 ]
  %937 = phi float [ 0.000000e+00, %397 ], [ %806, %905 ]
  %938 = phi float [ 0.000000e+00, %397 ], [ %809, %905 ]
  %939 = phi float [ 0.000000e+00, %397 ], [ %909, %905 ]
  %940 = phi float [ 0.000000e+00, %397 ], [ %922, %905 ]
  br i1 %348, label %1869, label %941

; <label>:941                                     ; preds = %923
  %942 = icmp ult i32 %403, 2
  %943 = add i32 %35, 40
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = add i32 %35, 44
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = or i32 %948, %945
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %1869, label %951

; <label>:951                                     ; preds = %941
  %952 = and i32 %945, 262144
  %953 = icmp ne i32 %952, 0
  %954 = select i1 %953, float %37, float 1.000000e+00
  %955 = select i1 %953, float %38, float 0.000000e+00
  %956 = select i1 %953, float %39, float 0.000000e+00
  %957 = select i1 %953, float %40, float 1.000000e+00
  %958 = select i1 %953, float %41, float %62
  %959 = select i1 %953, float %42, float %63
  %960 = add i32 %35, 300
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = lshr i32 %962, 16
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = fmul fast float %964, 0x3F50624DE0000000
  %966 = add i32 %35, 104
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 16
  %970 = and i32 %969, 255
  %971 = lshr i32 %968, 24
  %972 = add i32 %35, 308
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 65535
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = lshr i32 %974, 16
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = add i32 %35, 48
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = lshr i32 %981, 22
  %983 = shl nuw nsw i32 %982, 5
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = shl i32 %981, 4
  %986 = and i32 %985, 32752
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = lshr i32 %981, 7
  %989 = and i32 %988, 32752
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %993 = fmul fast float %992, 1.000000e+03
  %994 = fmul fast float %258, %993
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = fadd fast float %995, %248
  %997 = fmul fast float %259, %993
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = fadd fast float %998, %250
  %1000 = fmul fast float %965, %993
  %1001 = call float @dx.op.unary.f32(i32 22, float %1000)  ; Frc(value)
  %1002 = fmul fast float %1001, 0x401921FB60000000
  %1003 = fadd fast float %1002, %984
  %1004 = call float @dx.op.unary.f32(i32 13, float %1003)  ; Sin(value)
  %1005 = call float @dx.op.unary.f32(i32 12, float %1003)  ; Cos(value)
  %1006 = fsub fast float -0.000000e+00, %1004
  %1007 = fadd fast float %958, -5.000000e-01
  %1008 = fadd fast float %959, -5.000000e-01
  %1009 = fmul fast float %976, %1007
  %1010 = fmul fast float %978, %1008
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fadd fast float %1010, 5.000000e-01
  %1013 = fmul fast float %987, %1011
  %1014 = fmul fast float %990, %1012
  %1015 = fmul fast float %1005, %1013
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %1006, float %1014, float %1015)  ; FMad(a,b,c)
  %1017 = fmul fast float %1004, %1013
  %1018 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %1014, float %1017)  ; FMad(a,b,c)
  %1019 = fadd fast float %996, %1016
  %1020 = fadd fast float %999, %1018
  %1021 = icmp ugt i32 %970, 1
  %1022 = icmp ugt i32 %968, 33554431
  %1023 = or i1 %1022, %1021
  br i1 %1023, label %1024, label %1049

; <label>:1024                                    ; preds = %951
  %1025 = add i32 %35, 244
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = lshr i32 %1027, 16
  %1029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1028)  ; LegacyF16ToF32(value)
  %1030 = fmul fast float %992, %1029
  %1031 = call float @dx.op.unary.f32(i32 22, float %1030)  ; Frc(value)
  %1032 = mul nuw nsw i32 %970, %971
  %1033 = uitofp i32 %1032 to float
  %1034 = fmul fast float %1031, %1033
  %1035 = call float @dx.op.unary.f32(i32 27, float %1034)  ; Round_ni(value)
  %1036 = fptoui float %1035 to i32
  %1037 = urem i32 %1036, %970
  %1038 = udiv i32 %1036, %971
  %1039 = call float @dx.op.unary.f32(i32 22, float %1019)  ; Frc(value)
  %1040 = call float @dx.op.unary.f32(i32 22, float %1020)  ; Frc(value)
  %1041 = uitofp i32 %1037 to float
  %1042 = uitofp i32 %1038 to float
  %1043 = fadd fast float %1039, %1041
  %1044 = fadd fast float %1040, %1042
  %1045 = uitofp i32 %970 to float
  %1046 = uitofp i32 %971 to float
  %1047 = fdiv fast float %1043, %1045
  %1048 = fdiv fast float %1044, %1046
  br label %1049

; <label>:1049                                    ; preds = %1024, %951
  %1050 = phi float [ %1047, %1024 ], [ %1019, %951 ]
  %1051 = phi float [ %1048, %1024 ], [ %1020, %951 ]
  %1052 = and i32 %945, 16777216
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1163, label %1054

; <label>:1054                                    ; preds = %1049
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.CBufRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.CBufRet.f32 %1055, 2
  %1059 = fadd fast float %1056, %133
  %1060 = fadd fast float %1057, %134
  %1061 = fadd fast float %1058, %135
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = call float @dx.op.unary.f32(i32 7, float %1063)  ; Saturate(value)
  %1065 = icmp eq i32 %36, 65535
  br i1 %1065, label %1160, label %1066

; <label>:1066                                    ; preds = %1054
  %1067 = lshr i32 %36, 1
  %1068 = shl i32 %1067, 2
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %36, 1
  %1072 = icmp ne i32 %1071, 0
  %1073 = lshr i32 %1070, 16
  %1074 = and i32 %1070, 65535
  %1075 = select i1 %1072, i32 %1073, i32 %1074
  %1076 = icmp eq i32 %1075, 65535
  br i1 %1076, label %1156, label %1077

; <label>:1077                                    ; preds = %1066
  %1078 = mul nuw nsw i32 %1075, 40
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = add nuw nsw i32 %1078, 12
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = add nuw nsw i32 %1078, 24
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = add nuw nsw i32 %1078, 36
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.f32 %1094, 0
  %1096 = fsub fast float %1059, %1080
  %1097 = fsub fast float %1060, %1081
  %1098 = fsub fast float %1061, %1082
  %1099 = fmul fast float %1095, %1096
  %1100 = fmul fast float %1095, %1097
  %1101 = fmul fast float %1095, %1098
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1105 = fadd fast float %1102, 5.000000e-01
  %1106 = fadd fast float %1103, 5.000000e-01
  %1107 = fadd fast float %1104, 5.000000e-01
  %1108 = fmul fast float %1105, %1085
  %1109 = fmul fast float %1106, %1086
  %1110 = fmul fast float %1107, %1087
  %1111 = shl i32 %36, 2
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1117 = call float @dx.op.unary.f32(i32 22, float %1109)  ; Frc(value)
  %1118 = call float @dx.op.unary.f32(i32 22, float %1110)  ; Frc(value)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1115, %dx.types.Handle %30, float %1116, float %1117, float %1118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = fmul fast float %1120, 1.023000e+03
  %1124 = fmul fast float %1121, 1.023000e+03
  %1125 = fmul fast float %1122, 1.023000e+03
  %1126 = fadd fast float %1123, 5.000000e-01
  %1127 = fadd fast float %1124, 5.000000e-01
  %1128 = fadd fast float %1125, 5.000000e-01
  %1129 = call float @dx.op.unary.f32(i32 27, float %1126)  ; Round_ni(value)
  %1130 = call float @dx.op.unary.f32(i32 27, float %1127)  ; Round_ni(value)
  %1131 = call float @dx.op.unary.f32(i32 27, float %1128)  ; Round_ni(value)
  %1132 = fsub fast float %1099, %1102
  %1133 = fsub fast float %1100, %1103
  %1134 = fsub fast float %1101, %1104
  %1135 = fmul fast float %1132, 7.500000e-01
  %1136 = fmul fast float %1133, 7.500000e-01
  %1137 = fmul fast float %1134, 7.500000e-01
  %1138 = fadd fast float %1102, 1.250000e-01
  %1139 = fadd fast float %1138, %1135
  %1140 = fadd fast float %1139, %1129
  %1141 = fadd fast float %1103, 1.250000e-01
  %1142 = fadd fast float %1141, %1136
  %1143 = fadd fast float %1142, %1130
  %1144 = fadd fast float %1104, 1.250000e-01
  %1145 = fadd fast float %1144, %1137
  %1146 = fadd fast float %1145, %1131
  %1147 = fmul fast float %1140, %1090
  %1148 = fmul fast float %1143, %1091
  %1149 = fmul fast float %1146, %1092
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = add i32 %1151, 0
  %1153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1153, %dx.types.Handle %28, float %1147, float %1148, float %1149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  br label %1156

; <label>:1156                                    ; preds = %1077, %1066
  %1157 = phi float [ %1155, %1077 ], [ -1.000000e+00, %1066 ]
  %1158 = fadd fast float %1157, %1064
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  br label %1160

; <label>:1160                                    ; preds = %1156, %1054
  %1161 = phi float [ %1159, %1156 ], [ %1064, %1054 ]
  %1162 = fmul fast float %1161, %400
  br label %1163

; <label>:1163                                    ; preds = %1160, %1049
  %1164 = phi float [ %1162, %1160 ], [ %400, %1049 ]
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 256
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1215, label %1169

; <label>:1169                                    ; preds = %1163
  %1170 = add i32 %35, 428
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = add i32 %1172, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1174, %dx.types.Handle %71, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = add i32 %35, 116
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = shl i32 %1179, 4
  %1181 = and i32 %1180, 32752
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1179, 7
  %1184 = and i32 %1183, 32752
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = fsub fast float 1.000000e+00, %1164
  %1187 = call float @dx.op.binary.f32(i32 35, float %1186, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1188 = bitcast float %1164 to i32
  %1189 = sitofp i32 %1188 to float
  %1190 = fadd fast float %1189, 0xC1CFBF8940000000
  %1191 = fmul fast float %1185, %1190
  %1192 = fadd fast float %1191, 0x41CFBF8940000000
  %1193 = fptosi float %1192 to i32
  %1194 = bitcast i32 %1193 to float
  %1195 = bitcast float %1187 to i32
  %1196 = sitofp i32 %1195 to float
  %1197 = fadd fast float %1196, 0xC1CFBF8940000000
  %1198 = fmul fast float %1197, %1185
  %1199 = fadd fast float %1198, 0x41CFBF8940000000
  %1200 = fptosi float %1199 to i32
  %1201 = bitcast i32 %1200 to float
  %1202 = fmul fast float %1194, %1182
  %1203 = fmul fast float %1201, %1182
  %1204 = fsub fast float %1187, %1202
  %1205 = fadd fast float %1203, %1187
  %1206 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1207 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  %1208 = fsub fast float %1176, %1206
  %1209 = fsub fast float %1207, %1206
  %1210 = bitcast float %1209 to i32
  %1211 = sub nsw i32 2129859010, %1210
  %1212 = bitcast i32 %1211 to float
  %1213 = fmul fast float %1212, %1208
  %1214 = call float @dx.op.unary.f32(i32 7, float %1213)  ; Saturate(value)
  br label %1215

; <label>:1215                                    ; preds = %1169, %1163
  %1216 = phi float [ %1214, %1169 ], [ %1164, %1163 ]
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 128
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1237, label %1221

; <label>:1221                                    ; preds = %1215
  %1222 = add i32 %35, 412
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = add i32 %1224, 0
  %1226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1226, %dx.types.Handle %71, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 524288
  %1232 = icmp ne i32 %1231, 0
  %1233 = fcmp fast ogt float %1228, 0x3FE0101020000000
  %1234 = select i1 %1233, float 1.000000e+00, float 0.000000e+00
  %1235 = select i1 %1232, float %1234, float %1228
  %1236 = fmul fast float %1235, %1216
  br label %1237

; <label>:1237                                    ; preds = %1221, %1215
  %1238 = phi float [ %1236, %1221 ], [ %1216, %1215 ]
  %1239 = fcmp fast ult float %1238, 0x3F70101020000000
  br i1 %1239, label %1869, label %1240

; <label>:1240                                    ; preds = %1237
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 16
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1443, label %1245

; <label>:1245                                    ; preds = %1240
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = add i32 %35, 364
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = add i32 %1250, 0
  %1252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1253 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1252, %dx.types.Handle %70, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.f32 %1253, 3
  %1258 = and i32 %1247, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = lshr i32 %1247, 8
  %1261 = and i32 %1260, 255
  %1262 = uitofp i32 %1261 to float
  %1263 = fmul fast float %1257, %1259
  %1264 = fadd fast float %1263, %1262
  %1265 = fmul fast float %1264, 0x3F70101000000000
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 512
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1278, label %1270

; <label>:1270                                    ; preds = %1245
  %1271 = add i32 %35, 444
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = add i32 %1273, 0
  %1275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1275, %dx.types.Handle %71, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  br label %1278

; <label>:1278                                    ; preds = %1270, %1245
  %1279 = phi float [ %1277, %1270 ], [ 1.000000e+00, %1245 ]
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 33554432
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1390, label %1284

; <label>:1284                                    ; preds = %1278
  %1285 = add i32 %35, 240
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 65535
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = lshr i32 %1287, 16
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = add i32 %35, 244
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 65535
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1298 = extractvalue %dx.types.ResRet.i32 %1297, 0
  %1299 = lshr i32 %1298, 24
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = and i32 %1298, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = lshr i32 %1298, 8
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F70101020000000
  %1309 = lshr i32 %1298, 16
  %1310 = and i32 %1309, 255
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101020000000
  %1313 = add i32 %35, 236
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
  %1315 = extractvalue %dx.types.ResRet.i32 %1314, 0
  %1316 = lshr i32 %1315, 24
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = and i32 %1315, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = lshr i32 %1315, 8
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = lshr i32 %1315, 16
  %1327 = and i32 %1326, 255
  %1328 = uitofp i32 %1327 to float
  %1329 = fmul fast float %1328, 0x3F70101020000000
  %1330 = bitcast float %1254 to i32
  %1331 = ashr i32 %1330, 1
  %1332 = sub nsw i32 1597463174, %1331
  %1333 = bitcast i32 %1332 to float
  %1334 = fmul fast float %1254, 5.000000e-01
  %1335 = fmul fast float %1333, %1333
  %1336 = fmul fast float %1335, %1334
  %1337 = fsub fast float 1.500000e+00, %1336
  %1338 = fmul fast float %1333, %1254
  %1339 = fmul fast float %1338, %1337
  %1340 = bitcast float %1255 to i32
  %1341 = ashr i32 %1340, 1
  %1342 = sub nsw i32 1597463174, %1341
  %1343 = bitcast i32 %1342 to float
  %1344 = fmul fast float %1255, 5.000000e-01
  %1345 = fmul fast float %1343, %1343
  %1346 = fmul fast float %1345, %1344
  %1347 = fsub fast float 1.500000e+00, %1346
  %1348 = fmul fast float %1343, %1255
  %1349 = fmul fast float %1348, %1347
  %1350 = bitcast float %1256 to i32
  %1351 = ashr i32 %1350, 1
  %1352 = sub nsw i32 1597463174, %1351
  %1353 = bitcast i32 %1352 to float
  %1354 = fmul fast float %1256, 5.000000e-01
  %1355 = fmul fast float %1353, %1353
  %1356 = fmul fast float %1355, %1354
  %1357 = fsub fast float 1.500000e+00, %1356
  %1358 = fmul fast float %1353, %1256
  %1359 = fmul fast float %1358, %1357
  %1360 = fsub fast float %1339, %1321
  %1361 = fsub fast float %1349, %1325
  %1362 = fsub fast float %1359, %1329
  %1363 = fmul fast float %1360, %1289
  %1364 = fmul fast float %1361, %1291
  %1365 = fmul fast float %1362, %1296
  %1366 = fadd fast float %1363, %1304
  %1367 = fadd fast float %1364, %1308
  %1368 = fadd fast float %1365, %1312
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1370 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1371 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1372 = fmul fast float %1369, %1369
  %1373 = fmul fast float %1370, %1370
  %1374 = fmul fast float %1371, %1371
  %1375 = fsub fast float %1372, %1254
  %1376 = fsub fast float %1373, %1255
  %1377 = fsub fast float %1374, %1256
  %1378 = fmul fast float %1375, %1279
  %1379 = fmul fast float %1376, %1279
  %1380 = fmul fast float %1377, %1279
  %1381 = fadd fast float %1378, %1254
  %1382 = fadd fast float %1379, %1255
  %1383 = fadd fast float %1380, %1256
  %1384 = fadd fast float %1301, %1265
  %1385 = fsub fast float %1384, %1318
  %1386 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1387 = fsub fast float %1386, %1265
  %1388 = fmul fast float %1387, %1279
  %1389 = fadd fast float %1388, %1265
  br label %1443

; <label>:1390                                    ; preds = %1278
  %1391 = and i32 %1281, 134217728
  %1392 = icmp eq i32 %1391, 0
  br i1 %1392, label %1427, label %1393

; <label>:1393                                    ; preds = %1390
  %1394 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1395 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1396 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1397 = fadd fast float %1394, -5.000000e-01
  %1398 = fadd fast float %1395, -5.000000e-01
  %1399 = fadd fast float %1396, -5.000000e-01
  %1400 = fmul fast float %1397, %1279
  %1401 = fmul fast float %1398, %1279
  %1402 = fmul fast float %1399, %1279
  %1403 = fadd fast float %1400, 5.000000e-01
  %1404 = fadd fast float %1401, 5.000000e-01
  %1405 = fadd fast float %1402, 5.000000e-01
  %1406 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1407 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1408 = call float @dx.op.unary.f32(i32 24, float %1256)  ; Sqrt(value)
  %1409 = fmul fast float %1403, 2.000000e+00
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = fmul fast float %1410, %1406
  %1412 = fadd fast float %1411, %1409
  %1413 = fmul fast float %1412, %1406
  %1414 = fmul fast float %1404, 2.000000e+00
  %1415 = fsub fast float 1.000000e+00, %1414
  %1416 = fmul fast float %1415, %1407
  %1417 = fadd fast float %1416, %1414
  %1418 = fmul fast float %1417, %1407
  %1419 = fmul fast float %1405, 2.000000e+00
  %1420 = fsub fast float 1.000000e+00, %1419
  %1421 = fmul fast float %1420, %1408
  %1422 = fadd fast float %1421, %1419
  %1423 = fmul fast float %1422, %1408
  %1424 = fmul fast float %1413, %1413
  %1425 = fmul fast float %1418, %1418
  %1426 = fmul fast float %1423, %1423
  br label %1443

; <label>:1427                                    ; preds = %1390
  %1428 = fmul fast float %235, %235
  %1429 = fmul fast float %239, %239
  %1430 = fmul fast float %243, %243
  %1431 = fadd fast float %1428, -1.000000e+00
  %1432 = fadd fast float %1429, -1.000000e+00
  %1433 = fadd fast float %1430, -1.000000e+00
  %1434 = fmul fast float %1279, %1431
  %1435 = fmul fast float %1279, %1432
  %1436 = fmul fast float %1279, %1433
  %1437 = fadd fast float %1434, 1.000000e+00
  %1438 = fadd fast float %1435, 1.000000e+00
  %1439 = fadd fast float %1436, 1.000000e+00
  %1440 = fmul fast float %1437, %1254
  %1441 = fmul fast float %1438, %1255
  %1442 = fmul fast float %1439, %1256
  br label %1443

; <label>:1443                                    ; preds = %1427, %1393, %1284, %1240
  %1444 = phi float [ %1389, %1284 ], [ %1265, %1393 ], [ %1265, %1427 ], [ 0x3FA23C0BE0000000, %1240 ]
  %1445 = phi float [ %1381, %1284 ], [ %1424, %1393 ], [ %1440, %1427 ], [ 1.000000e+00, %1240 ]
  %1446 = phi float [ %1382, %1284 ], [ %1425, %1393 ], [ %1441, %1427 ], [ 1.000000e+00, %1240 ]
  %1447 = phi float [ %1383, %1284 ], [ %1426, %1393 ], [ %1442, %1427 ], [ 1.000000e+00, %1240 ]
  %1448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.i32 %1448, 1
  %1450 = and i32 %1449, 1
  %1451 = icmp ne i32 %1450, 0
  %1452 = add i32 %35, 356
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 32
  %1456 = icmp ne i32 %1455, 0
  %1457 = and i1 %1451, %1456
  %1458 = select i1 %1457, float 1.000000e+00, float %1445
  %1459 = select i1 %1457, float 0x3FD3333340000000, float %1446
  %1460 = select i1 %1457, float 0x3FD3333340000000, float %1447
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 32
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1537, label %1465

; <label>:1465                                    ; preds = %1443
  %1466 = add i32 %35, 108
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %35, 380
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = add i32 %1471, 0
  %1473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1473, %dx.types.Handle %70, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1475 = extractvalue %dx.types.ResRet.f32 %1474, 0
  %1476 = extractvalue %dx.types.ResRet.f32 %1474, 1
  %1477 = extractvalue %dx.types.ResRet.f32 %1474, 2
  %1478 = extractvalue %dx.types.ResRet.f32 %1474, 3
  %1479 = and i32 %1468, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = lshr i32 %1468, 8
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = lshr i32 %1468, 16
  %1485 = and i32 %1484, 255
  %1486 = uitofp i32 %1485 to float
  %1487 = fmul fast float %1486, 0x3F70101000000000
  %1488 = fmul fast float %1475, %1480
  %1489 = fadd fast float %1488, %1483
  %1490 = fmul fast float %1489, 0x3F70101000000000
  %1491 = fadd fast float %1476, -5.000000e-01
  %1492 = fadd fast float %1478, -5.000000e-01
  %1493 = fmul fast float %1491, %1487
  %1494 = fmul fast float %1492, %1487
  %1495 = fadd fast float %1493, 5.000000e-01
  %1496 = fadd fast float %1494, 5.000000e-01
  %1497 = fmul fast float %1495, 2.000000e+00
  %1498 = fadd fast float %1497, -1.000000e+00
  %1499 = fmul fast float %1496, 2.000000e+00
  %1500 = fadd fast float %1499, -1.000000e+00
  %1501 = fadd fast float %1498, %1500
  %1502 = fmul fast float %1501, 5.000000e-01
  %1503 = fsub fast float %1498, %1500
  %1504 = fmul fast float %1503, 5.000000e-01
  %1505 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1506 = fsub fast float 1.000000e+00, %1505
  %1507 = call float @dx.op.unary.f32(i32 6, float %1504)  ; FAbs(value)
  %1508 = fsub fast float %1506, %1507
  %1509 = call float @dx.op.dot3.f32(i32 55, float %1502, float %1504, float %1508, float %1502, float %1504, float %1508)  ; Dot3(ax,ay,az,bx,by,bz)
  %1510 = call float @dx.op.unary.f32(i32 25, float %1509)  ; Rsqrt(value)
  %1511 = fmul fast float %1502, %1510
  %1512 = fmul fast float %1504, %1510
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 67108864
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1533, label %1517

; <label>:1517                                    ; preds = %1465
  %1518 = add i32 %35, 296
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 65535
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 65535
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = lshr i32 %1520, 16
  %1528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1527)  ; LegacyF16ToF32(value)
  %1529 = fsub fast float %1490, %1528
  %1530 = fmul fast float %1529, %1522
  %1531 = fadd fast float %1530, %1526
  %1532 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  br label %1533

; <label>:1533                                    ; preds = %1517, %1465
  %1534 = phi float [ %1532, %1517 ], [ %1490, %1465 ]
  %1535 = call float @dx.op.dot2.f32(i32 54, float %1511, float %1512, float %954, float %955)  ; Dot2(ax,ay,bx,by)
  %1536 = call float @dx.op.dot2.f32(i32 54, float %1511, float %1512, float %956, float %957)  ; Dot2(ax,ay,bx,by)
  br label %1537

; <label>:1537                                    ; preds = %1533, %1443
  %1538 = phi float [ %1534, %1533 ], [ 0x3FD6666660000000, %1443 ]
  %1539 = phi float [ %1535, %1533 ], [ 0.000000e+00, %1443 ]
  %1540 = phi float [ %1536, %1533 ], [ 0.000000e+00, %1443 ]
  %1541 = phi float [ %1477, %1533 ], [ 1.000000e+00, %1443 ]
  %1542 = add i32 %35, 176
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = lshr i32 %1544, 22
  %1546 = shl nuw nsw i32 %1545, 5
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 64
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1585, label %1552

; <label>:1552                                    ; preds = %1537
  %1553 = add i32 %35, 396
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = add i32 %1555, 0
  %1557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 131072
  %1561 = icmp eq i32 %1560, 0
  %1562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1557, %dx.types.Handle %70, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1563 = extractvalue %dx.types.ResRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.ResRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.ResRet.f32 %1562, 2
  %1566 = fmul fast float %1563, %223
  %1567 = fmul fast float %1564, %226
  %1568 = fmul fast float %1565, %229
  br i1 %1561, label %1575, label %1569

; <label>:1569                                    ; preds = %1552
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1571 = extractvalue %dx.types.CBufRet.f32 %1570, 0
  %1572 = fmul fast float %1571, %1566
  %1573 = fmul fast float %1571, %1567
  %1574 = fmul fast float %1571, %1568
  br label %1575

; <label>:1575                                    ; preds = %1569, %1552
  %1576 = phi float [ %1572, %1569 ], [ %1566, %1552 ]
  %1577 = phi float [ %1573, %1569 ], [ %1567, %1552 ]
  %1578 = phi float [ %1574, %1569 ], [ %1568, %1552 ]
  %1579 = fmul fast float %1576, %1547
  %1580 = select i1 %175, float %1579, float %1576
  %1581 = call float @dx.op.dot3.f32(i32 55, float %1580, float %1577, float %1578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1582 = select i1 %175, float 0.000000e+00, float %1576
  %1583 = select i1 %175, float %1581, float %1577
  %1584 = select i1 %175, float 0.000000e+00, float %1578
  br label %1585

; <label>:1585                                    ; preds = %1575, %1537
  %1586 = phi float [ %1582, %1575 ], [ 0.000000e+00, %1537 ]
  %1587 = phi float [ %1583, %1575 ], [ 0.000000e+00, %1537 ]
  %1588 = phi float [ %1584, %1575 ], [ 0.000000e+00, %1537 ]
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 10240
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1637, label %1593

; <label>:1593                                    ; preds = %1585
  %1594 = add i32 %35, 460
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = add i32 %1596, 0
  %1598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1598, %dx.types.Handle %71, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 1
  %1601 = extractvalue %dx.types.ResRet.f32 %1599, 3
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 1048576
  %1605 = icmp ne i32 %1604, 0
  %1606 = and i32 %1603, 8192
  %1607 = icmp eq i32 %1606, 0
  br i1 %1607, label %1623, label %1608

; <label>:1608                                    ; preds = %1593
  %1609 = extractvalue %dx.types.ResRet.f32 %1599, 2
  %1610 = select i1 %1605, float %1609, float %1600
  %1611 = extractvalue %dx.types.ResRet.f32 %1599, 0
  %1612 = select i1 %1605, float %1611, float %1600
  %1613 = add i32 %35, 112
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = lshr i32 %1615, 16
  %1617 = and i32 %1616, 255
  %1618 = uitofp i32 %1617 to float
  %1619 = fmul fast float %1618, 0x3F80101020000000
  %1620 = fmul fast float %1619, %1612
  %1621 = fmul fast float %1619, %1600
  %1622 = fmul fast float %1619, %1610
  br label %1623

; <label>:1623                                    ; preds = %1608, %1593
  %1624 = phi float [ %1620, %1608 ], [ 0.000000e+00, %1593 ]
  %1625 = phi float [ %1621, %1608 ], [ 0.000000e+00, %1593 ]
  %1626 = phi float [ %1622, %1608 ], [ 0.000000e+00, %1593 ]
  %1627 = and i32 %1603, 2048
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1637, label %1629

; <label>:1629                                    ; preds = %1623
  %1630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1631 = extractvalue %dx.types.ResRet.i32 %1630, 0
  %1632 = shl i32 %1631, 4
  %1633 = and i32 %1632, 32752
  %1634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1633)  ; LegacyF16ToF32(value)
  %1635 = fmul fast float %1634, %1601
  %1636 = call float @dx.op.binary.f32(i32 35, float %1635, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1637

; <label>:1637                                    ; preds = %1629, %1623, %1585
  %1638 = phi float [ %1624, %1629 ], [ %1624, %1623 ], [ 0.000000e+00, %1585 ]
  %1639 = phi float [ %1625, %1629 ], [ %1625, %1623 ], [ 0.000000e+00, %1585 ]
  %1640 = phi float [ %1626, %1629 ], [ %1626, %1623 ], [ 0.000000e+00, %1585 ]
  %1641 = phi float [ %1636, %1629 ], [ 0x3F70101020000000, %1623 ], [ 0x3F70101020000000, %1585 ]
  %1642 = add i32 %35, 112
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1642, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = and i32 %1644, 255
  %1646 = uitofp i32 %1645 to float
  %1647 = lshr i32 %1644, 8
  %1648 = and i32 %1647, 255
  %1649 = uitofp i32 %1648 to float
  %1650 = call float @dx.op.dot3.f32(i32 55, float %1458, float %1459, float %1460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1651 = fmul fast float %1649, %1650
  %1652 = fadd fast float %1651, %1646
  %1653 = fmul fast float %1652, 0x3F70101020000000
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  br i1 %942, label %1655, label %1663

; <label>:1655                                    ; preds = %1637
  %1656 = fsub fast float 1.000000e+00, %1238
  %1657 = fmul fast float %1656, %926
  %1658 = fmul fast float %1656, %927
  %1659 = fmul fast float %1656, %928
  %1660 = fmul fast float %1656, %929
  %1661 = fmul fast float %1656, %930
  %1662 = fmul fast float %1656, %931
  br label %1663

; <label>:1663                                    ; preds = %1655, %1637
  %1664 = phi float [ %1657, %1655 ], [ %926, %1637 ]
  %1665 = phi float [ %1658, %1655 ], [ %927, %1637 ]
  %1666 = phi float [ %1659, %1655 ], [ %928, %1637 ]
  %1667 = phi float [ %1660, %1655 ], [ %929, %1637 ]
  %1668 = phi float [ %1661, %1655 ], [ %930, %1637 ]
  %1669 = phi float [ %1662, %1655 ], [ %931, %1637 ]
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = and i32 %1671, 3
  %1673 = icmp eq i32 %1672, 3
  br i1 %1673, label %1752, label %1674

; <label>:1674                                    ; preds = %1663
  %1675 = and i32 %1671, 16
  %1676 = icmp ne i32 %1675, 0
  %1677 = select i1 %1676, float %1238, float 0.000000e+00
  %1678 = icmp eq i32 %1672, 0
  br i1 %1678, label %1679, label %1707

; <label>:1679                                    ; preds = %1674
  %1680 = and i32 %1671, 64
  %1681 = icmp ne i32 %1680, 0
  %1682 = select i1 %1681, float %1238, float 0.000000e+00
  %1683 = fsub fast float %1458, %1664
  %1684 = fsub fast float %1459, %1665
  %1685 = fsub fast float %1460, %1666
  %1686 = fmul fast float %1677, %1683
  %1687 = fmul fast float %1677, %1684
  %1688 = fmul fast float %1677, %1685
  %1689 = fadd fast float %1686, %1664
  %1690 = fadd fast float %1687, %1665
  %1691 = fadd fast float %1688, %1666
  %1692 = fsub fast float %1444, %935
  %1693 = fmul fast float %1677, %1692
  %1694 = fadd fast float %1693, %935
  %1695 = fsub fast float %1586, %1667
  %1696 = fsub fast float %1587, %1668
  %1697 = fsub fast float %1588, %1669
  %1698 = fmul fast float %1682, %1695
  %1699 = fmul fast float %1682, %1696
  %1700 = fmul fast float %1682, %1697
  %1701 = fadd fast float %1698, %1667
  %1702 = fadd fast float %1699, %1668
  %1703 = fadd fast float %1700, %1669
  %1704 = fsub fast float %1654, %940
  %1705 = fmul fast float %1677, %1704
  %1706 = fadd fast float %1705, %940
  br label %1752

; <label>:1707                                    ; preds = %1674
  %1708 = icmp eq i32 %1672, 1
  br i1 %1708, label %1709, label %1722

; <label>:1709                                    ; preds = %1707
  %1710 = fadd fast float %1458, -1.000000e+00
  %1711 = fadd fast float %1459, -1.000000e+00
  %1712 = fadd fast float %1460, -1.000000e+00
  %1713 = fmul fast float %1677, %1710
  %1714 = fmul fast float %1677, %1711
  %1715 = fmul fast float %1677, %1712
  %1716 = fadd fast float %1713, 1.000000e+00
  %1717 = fadd fast float %1714, 1.000000e+00
  %1718 = fadd fast float %1715, 1.000000e+00
  %1719 = fmul fast float %1716, %1664
  %1720 = fmul fast float %1717, %1665
  %1721 = fmul fast float %1718, %1666
  br label %1752

; <label>:1722                                    ; preds = %1707
  %1723 = icmp eq i32 %1672, 2
  br i1 %1723, label %1724, label %1752

; <label>:1724                                    ; preds = %1722
  %1725 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1726 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1727 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1728 = fadd fast float %1725, -5.000000e-01
  %1729 = fadd fast float %1726, -5.000000e-01
  %1730 = fadd fast float %1727, -5.000000e-01
  %1731 = fmul fast float %1728, %1677
  %1732 = fmul fast float %1729, %1677
  %1733 = fmul fast float %1730, %1677
  %1734 = fadd fast float %1731, 5.000000e-01
  %1735 = fadd fast float %1732, 5.000000e-01
  %1736 = fadd fast float %1733, 5.000000e-01
  %1737 = fmul fast float %1734, 2.000000e+00
  %1738 = fsub fast float 1.000000e+00, %1737
  %1739 = fmul fast float %1738, %1664
  %1740 = fadd fast float %1739, %1737
  %1741 = fmul fast float %1740, %1664
  %1742 = fmul fast float %1735, 2.000000e+00
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = fmul fast float %1743, %1665
  %1745 = fadd fast float %1744, %1742
  %1746 = fmul fast float %1745, %1665
  %1747 = fmul fast float %1736, 2.000000e+00
  %1748 = fsub fast float 1.000000e+00, %1747
  %1749 = fmul fast float %1748, %1666
  %1750 = fadd fast float %1749, %1747
  %1751 = fmul fast float %1750, %1666
  br label %1752

; <label>:1752                                    ; preds = %1724, %1722, %1709, %1679, %1663
  %1753 = phi float [ %1664, %1663 ], [ %1741, %1724 ], [ %1664, %1722 ], [ %1719, %1709 ], [ %1689, %1679 ]
  %1754 = phi float [ %1665, %1663 ], [ %1746, %1724 ], [ %1665, %1722 ], [ %1720, %1709 ], [ %1690, %1679 ]
  %1755 = phi float [ %1666, %1663 ], [ %1751, %1724 ], [ %1666, %1722 ], [ %1721, %1709 ], [ %1691, %1679 ]
  %1756 = phi float [ %1667, %1663 ], [ %1667, %1724 ], [ %1667, %1722 ], [ %1667, %1709 ], [ %1701, %1679 ]
  %1757 = phi float [ %1668, %1663 ], [ %1668, %1724 ], [ %1668, %1722 ], [ %1668, %1709 ], [ %1702, %1679 ]
  %1758 = phi float [ %1669, %1663 ], [ %1669, %1724 ], [ %1669, %1722 ], [ %1669, %1709 ], [ %1703, %1679 ]
  %1759 = phi float [ %935, %1663 ], [ %935, %1724 ], [ %935, %1722 ], [ %935, %1709 ], [ %1694, %1679 ]
  %1760 = phi float [ %940, %1663 ], [ %940, %1724 ], [ %940, %1722 ], [ %940, %1709 ], [ %1706, %1679 ]
  %1761 = and i32 %1671, 12
  %1762 = icmp eq i32 %1761, 12
  br i1 %1762, label %1869, label %1763

; <label>:1763                                    ; preds = %1752
  %1764 = and i32 %1671, 2097184
  %1765 = icmp eq i32 %1764, 2097184
  %1766 = select i1 %1765, float %1238, float 0.000000e+00
  %1767 = and i32 %1671, 4194336
  %1768 = icmp eq i32 %1767, 4194336
  %1769 = select i1 %1768, float %1238, float 0.000000e+00
  %1770 = and i32 %1671, 8388640
  %1771 = icmp eq i32 %1770, 8388640
  %1772 = select i1 %1771, float %1238, float 0.000000e+00
  %1773 = and i32 %1671, 2048
  %1774 = icmp ne i32 %1773, 0
  %1775 = select i1 %1774, float %1238, float 0.000000e+00
  %1776 = and i32 %1671, 8192
  %1777 = icmp ne i32 %1776, 0
  %1778 = select i1 %1777, float %1238, float 0.000000e+00
  %1779 = icmp eq i32 %1761, 0
  br i1 %1779, label %1780, label %1805

; <label>:1780                                    ; preds = %1763
  %1781 = fsub fast float %1539, %924
  %1782 = fsub fast float %1540, %925
  %1783 = fmul fast float %1766, %1781
  %1784 = fmul fast float %1766, %1782
  %1785 = fadd fast float %1783, %924
  %1786 = fadd fast float %1784, %925
  %1787 = fsub fast float %1541, %938
  %1788 = fmul fast float %1769, %1787
  %1789 = fadd fast float %1788, %938
  %1790 = fsub fast float %1538, %937
  %1791 = fmul fast float %1772, %1790
  %1792 = fadd fast float %1791, %937
  %1793 = fsub fast float %1641, %939
  %1794 = fmul fast float %1775, %1793
  %1795 = fadd fast float %1794, %939
  %1796 = fsub fast float %1638, %932
  %1797 = fsub fast float %1639, %933
  %1798 = fsub fast float %1640, %934
  %1799 = fmul fast float %1778, %1796
  %1800 = fmul fast float %1778, %1797
  %1801 = fmul fast float %1778, %1798
  %1802 = fadd fast float %1799, %932
  %1803 = fadd fast float %1800, %933
  %1804 = fadd fast float %1801, %934
  br label %1869

; <label>:1805                                    ; preds = %1763
  %1806 = icmp eq i32 %1761, 4
  br i1 %1806, label %1807, label %1847

; <label>:1807                                    ; preds = %1805
  %1808 = fmul fast float %1766, %1539
  %1809 = fmul fast float %1766, %1540
  %1810 = fadd fast float %1808, %924
  %1811 = fadd fast float %1809, %925
  %1812 = call float @dx.op.binary.f32(i32 36, float %938, float %1541)  ; FMin(a,b)
  %1813 = fsub fast float %1812, %938
  %1814 = fmul fast float %1813, %1769
  %1815 = fadd fast float %1814, %938
  %1816 = fadd fast float %1538, %937
  %1817 = fmul fast float %1816, 0x3FF337FAE0000000
  %1818 = fmul fast float %937, %937
  %1819 = fmul fast float %1538, %1538
  %1820 = fadd fast float %1819, %1818
  %1821 = fmul fast float %1820, 0x3FE5152B00000000
  %1822 = fmul fast float %937, 0xBFCC1F85E0000000
  %1823 = fmul fast float %1822, %1538
  %1824 = fadd fast float %1823, 0xBFE1363700000000
  %1825 = fadd fast float %1824, %1817
  %1826 = fsub fast float %1825, %1821
  %1827 = fmul fast float %1816, 0x3FBA6F0D00000000
  %1828 = fmul fast float %1820, 0x3FD0432880000000
  %1829 = fmul fast float %937, 0xBFEF110800000000
  %1830 = fmul fast float %1829, %1538
  %1831 = fadd fast float %1830, 1.000000e+00
  %1832 = fsub fast float %1831, %1827
  %1833 = fadd fast float %1832, %1828
  %1834 = fdiv fast float %1826, %1833
  %1835 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1836 = fsub fast float %1835, %937
  %1837 = fmul fast float %1836, %1772
  %1838 = fadd fast float %1837, %937
  %1839 = fmul fast float %1775, %1641
  %1840 = fadd fast float %1839, %939
  %1841 = fmul fast float %1778, %1638
  %1842 = fmul fast float %1778, %1639
  %1843 = fmul fast float %1778, %1640
  %1844 = fadd fast float %1841, %932
  %1845 = fadd fast float %1842, %933
  %1846 = fadd fast float %1843, %934
  br label %1869

; <label>:1847                                    ; preds = %1805
  %1848 = icmp eq i32 %1761, 8
  br i1 %1848, label %1849, label %1869

; <label>:1849                                    ; preds = %1847
  %1850 = fmul fast float %1766, %1539
  %1851 = fmul fast float %1766, %1540
  %1852 = fadd fast float %1850, %924
  %1853 = fadd fast float %1851, %925
  %1854 = call float @dx.op.binary.f32(i32 36, float %938, float %1541)  ; FMin(a,b)
  %1855 = fsub fast float %1854, %938
  %1856 = fmul fast float %1855, %1769
  %1857 = fadd fast float %1856, %938
  %1858 = fsub fast float %1538, %937
  %1859 = fmul fast float %1772, %1858
  %1860 = fadd fast float %1859, %937
  %1861 = fmul fast float %1775, %1641
  %1862 = fadd fast float %1861, %939
  %1863 = fmul fast float %1778, %1638
  %1864 = fmul fast float %1778, %1639
  %1865 = fmul fast float %1778, %1640
  %1866 = fadd fast float %1863, %932
  %1867 = fadd fast float %1864, %933
  %1868 = fadd fast float %1865, %934
  br label %1869

; <label>:1869                                    ; preds = %1849, %1847, %1807, %1780, %1752, %1237, %941, %923
  %1870 = phi float [ %924, %1752 ], [ %924, %1237 ], [ %924, %923 ], [ %1852, %1849 ], [ %924, %1847 ], [ %1810, %1807 ], [ %1785, %1780 ], [ %924, %941 ]
  %1871 = phi float [ %925, %1752 ], [ %925, %1237 ], [ %925, %923 ], [ %1853, %1849 ], [ %925, %1847 ], [ %1811, %1807 ], [ %1786, %1780 ], [ %925, %941 ]
  %1872 = phi float [ %1753, %1752 ], [ %926, %1237 ], [ %926, %923 ], [ %1753, %1849 ], [ %1753, %1847 ], [ %1753, %1807 ], [ %1753, %1780 ], [ %926, %941 ]
  %1873 = phi float [ %1754, %1752 ], [ %927, %1237 ], [ %927, %923 ], [ %1754, %1849 ], [ %1754, %1847 ], [ %1754, %1807 ], [ %1754, %1780 ], [ %927, %941 ]
  %1874 = phi float [ %1755, %1752 ], [ %928, %1237 ], [ %928, %923 ], [ %1755, %1849 ], [ %1755, %1847 ], [ %1755, %1807 ], [ %1755, %1780 ], [ %928, %941 ]
  %1875 = phi float [ %1756, %1752 ], [ %929, %1237 ], [ %929, %923 ], [ %1756, %1849 ], [ %1756, %1847 ], [ %1756, %1807 ], [ %1756, %1780 ], [ %929, %941 ]
  %1876 = phi float [ %1757, %1752 ], [ %930, %1237 ], [ %930, %923 ], [ %1757, %1849 ], [ %1757, %1847 ], [ %1757, %1807 ], [ %1757, %1780 ], [ %930, %941 ]
  %1877 = phi float [ %1758, %1752 ], [ %931, %1237 ], [ %931, %923 ], [ %1758, %1849 ], [ %1758, %1847 ], [ %1758, %1807 ], [ %1758, %1780 ], [ %931, %941 ]
  %1878 = phi float [ %932, %1752 ], [ %932, %1237 ], [ %932, %923 ], [ %1866, %1849 ], [ %932, %1847 ], [ %1844, %1807 ], [ %1802, %1780 ], [ %932, %941 ]
  %1879 = phi float [ %933, %1752 ], [ %933, %1237 ], [ %933, %923 ], [ %1867, %1849 ], [ %933, %1847 ], [ %1845, %1807 ], [ %1803, %1780 ], [ %933, %941 ]
  %1880 = phi float [ %934, %1752 ], [ %934, %1237 ], [ %934, %923 ], [ %1868, %1849 ], [ %934, %1847 ], [ %1846, %1807 ], [ %1804, %1780 ], [ %934, %941 ]
  %1881 = phi float [ %1759, %1752 ], [ %935, %1237 ], [ %935, %923 ], [ %1759, %1849 ], [ %1759, %1847 ], [ %1759, %1807 ], [ %1759, %1780 ], [ %935, %941 ]
  %1882 = phi float [ %937, %1752 ], [ %937, %1237 ], [ %937, %923 ], [ %1860, %1849 ], [ %937, %1847 ], [ %1838, %1807 ], [ %1792, %1780 ], [ %937, %941 ]
  %1883 = phi float [ %938, %1752 ], [ %938, %1237 ], [ %938, %923 ], [ %1857, %1849 ], [ %938, %1847 ], [ %1815, %1807 ], [ %1789, %1780 ], [ %938, %941 ]
  %1884 = phi float [ %939, %1752 ], [ %939, %1237 ], [ %939, %923 ], [ %1862, %1849 ], [ %939, %1847 ], [ %1840, %1807 ], [ %1795, %1780 ], [ %939, %941 ]
  %1885 = phi float [ %1760, %1752 ], [ %940, %1237 ], [ %940, %923 ], [ %1760, %1849 ], [ %1760, %1847 ], [ %1760, %1807 ], [ %1760, %1780 ], [ %940, %941 ]
  br i1 %350, label %2814, label %1886

; <label>:1886                                    ; preds = %1869
  %1887 = icmp ult i32 %403, 3
  %1888 = add i32 %35, 56
  %1889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = add i32 %35, 60
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = or i32 %1893, %1890
  %1895 = icmp eq i32 %1894, 0
  br i1 %1895, label %2814, label %1896

; <label>:1896                                    ; preds = %1886
  %1897 = and i32 %1890, 262144
  %1898 = icmp ne i32 %1897, 0
  %1899 = select i1 %1898, float %37, float 1.000000e+00
  %1900 = select i1 %1898, float %38, float 0.000000e+00
  %1901 = select i1 %1898, float %39, float 0.000000e+00
  %1902 = select i1 %1898, float %40, float 1.000000e+00
  %1903 = select i1 %1898, float %41, float %62
  %1904 = select i1 %1898, float %42, float %63
  %1905 = add i32 %35, 316
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = lshr i32 %1907, 16
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = fmul fast float %1909, 0x3F50624DE0000000
  %1911 = add i32 %35, 120
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = lshr i32 %1913, 16
  %1915 = and i32 %1914, 255
  %1916 = lshr i32 %1913, 24
  %1917 = add i32 %35, 324
  %1918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.i32 %1918, 0
  %1920 = and i32 %1919, 65535
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = lshr i32 %1919, 16
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = add i32 %35, 64
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = lshr i32 %1926, 22
  %1928 = shl nuw nsw i32 %1927, 5
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = shl i32 %1926, 4
  %1931 = and i32 %1930, 32752
  %1932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1931)  ; LegacyF16ToF32(value)
  %1933 = lshr i32 %1926, 7
  %1934 = and i32 %1933, 32752
  %1935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1934)  ; LegacyF16ToF32(value)
  %1936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1937 = extractvalue %dx.types.CBufRet.f32 %1936, 3
  %1938 = fmul fast float %1937, 1.000000e+03
  %1939 = fmul fast float %300, %1938
  %1940 = call float @dx.op.unary.f32(i32 22, float %1939)  ; Frc(value)
  %1941 = fadd fast float %1940, %290
  %1942 = fmul fast float %301, %1938
  %1943 = call float @dx.op.unary.f32(i32 22, float %1942)  ; Frc(value)
  %1944 = fadd fast float %1943, %292
  %1945 = fmul fast float %1910, %1938
  %1946 = call float @dx.op.unary.f32(i32 22, float %1945)  ; Frc(value)
  %1947 = fmul fast float %1946, 0x401921FB60000000
  %1948 = fadd fast float %1947, %1929
  %1949 = call float @dx.op.unary.f32(i32 13, float %1948)  ; Sin(value)
  %1950 = call float @dx.op.unary.f32(i32 12, float %1948)  ; Cos(value)
  %1951 = fsub fast float -0.000000e+00, %1949
  %1952 = fadd fast float %1903, -5.000000e-01
  %1953 = fadd fast float %1904, -5.000000e-01
  %1954 = fmul fast float %1921, %1952
  %1955 = fmul fast float %1923, %1953
  %1956 = fadd fast float %1954, 5.000000e-01
  %1957 = fadd fast float %1955, 5.000000e-01
  %1958 = fmul fast float %1932, %1956
  %1959 = fmul fast float %1935, %1957
  %1960 = fmul fast float %1950, %1958
  %1961 = call float @dx.op.tertiary.f32(i32 46, float %1951, float %1959, float %1960)  ; FMad(a,b,c)
  %1962 = fmul fast float %1949, %1958
  %1963 = call float @dx.op.tertiary.f32(i32 46, float %1950, float %1959, float %1962)  ; FMad(a,b,c)
  %1964 = fadd fast float %1941, %1961
  %1965 = fadd fast float %1944, %1963
  %1966 = icmp ugt i32 %1915, 1
  %1967 = icmp ugt i32 %1913, 33554431
  %1968 = or i1 %1967, %1966
  br i1 %1968, label %1969, label %1994

; <label>:1969                                    ; preds = %1896
  %1970 = add i32 %35, 260
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = lshr i32 %1972, 16
  %1974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1973)  ; LegacyF16ToF32(value)
  %1975 = fmul fast float %1937, %1974
  %1976 = call float @dx.op.unary.f32(i32 22, float %1975)  ; Frc(value)
  %1977 = mul nuw nsw i32 %1915, %1916
  %1978 = uitofp i32 %1977 to float
  %1979 = fmul fast float %1976, %1978
  %1980 = call float @dx.op.unary.f32(i32 27, float %1979)  ; Round_ni(value)
  %1981 = fptoui float %1980 to i32
  %1982 = urem i32 %1981, %1915
  %1983 = udiv i32 %1981, %1916
  %1984 = call float @dx.op.unary.f32(i32 22, float %1964)  ; Frc(value)
  %1985 = call float @dx.op.unary.f32(i32 22, float %1965)  ; Frc(value)
  %1986 = uitofp i32 %1982 to float
  %1987 = uitofp i32 %1983 to float
  %1988 = fadd fast float %1984, %1986
  %1989 = fadd fast float %1985, %1987
  %1990 = uitofp i32 %1915 to float
  %1991 = uitofp i32 %1916 to float
  %1992 = fdiv fast float %1988, %1990
  %1993 = fdiv fast float %1989, %1991
  br label %1994

; <label>:1994                                    ; preds = %1969, %1896
  %1995 = phi float [ %1992, %1969 ], [ %1964, %1896 ]
  %1996 = phi float [ %1993, %1969 ], [ %1965, %1896 ]
  %1997 = and i32 %1890, 16777216
  %1998 = icmp eq i32 %1997, 0
  br i1 %1998, label %2108, label %1999

; <label>:1999                                    ; preds = %1994
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.CBufRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.CBufRet.f32 %2000, 2
  %2004 = fadd fast float %2001, %133
  %2005 = fadd fast float %2002, %134
  %2006 = fadd fast float %2003, %135
  %2007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2008 = extractvalue %dx.types.CBufRet.f32 %2007, 0
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2010 = icmp eq i32 %36, 65535
  br i1 %2010, label %2105, label %2011

; <label>:2011                                    ; preds = %1999
  %2012 = lshr i32 %36, 1
  %2013 = shl i32 %2012, 2
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %36, 1
  %2017 = icmp ne i32 %2016, 0
  %2018 = lshr i32 %2015, 16
  %2019 = and i32 %2015, 65535
  %2020 = select i1 %2017, i32 %2018, i32 %2019
  %2021 = icmp eq i32 %2020, 65535
  br i1 %2021, label %2101, label %2022

; <label>:2022                                    ; preds = %2011
  %2023 = mul nuw nsw i32 %2020, 40
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.ResRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.ResRet.f32 %2024, 2
  %2028 = add nuw nsw i32 %2023, 12
  %2029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.ResRet.f32 %2029, 1
  %2032 = extractvalue %dx.types.ResRet.f32 %2029, 2
  %2033 = add nuw nsw i32 %2023, 24
  %2034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 0
  %2036 = extractvalue %dx.types.ResRet.f32 %2034, 1
  %2037 = extractvalue %dx.types.ResRet.f32 %2034, 2
  %2038 = add nuw nsw i32 %2023, 36
  %2039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = fsub fast float %2004, %2025
  %2042 = fsub fast float %2005, %2026
  %2043 = fsub fast float %2006, %2027
  %2044 = fmul fast float %2040, %2041
  %2045 = fmul fast float %2040, %2042
  %2046 = fmul fast float %2040, %2043
  %2047 = call float @dx.op.unary.f32(i32 27, float %2044)  ; Round_ni(value)
  %2048 = call float @dx.op.unary.f32(i32 27, float %2045)  ; Round_ni(value)
  %2049 = call float @dx.op.unary.f32(i32 27, float %2046)  ; Round_ni(value)
  %2050 = fadd fast float %2047, 5.000000e-01
  %2051 = fadd fast float %2048, 5.000000e-01
  %2052 = fadd fast float %2049, 5.000000e-01
  %2053 = fmul fast float %2050, %2030
  %2054 = fmul fast float %2051, %2031
  %2055 = fmul fast float %2052, %2032
  %2056 = shl i32 %36, 2
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = add i32 %2058, 0
  %2060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2061 = call float @dx.op.unary.f32(i32 22, float %2053)  ; Frc(value)
  %2062 = call float @dx.op.unary.f32(i32 22, float %2054)  ; Frc(value)
  %2063 = call float @dx.op.unary.f32(i32 22, float %2055)  ; Frc(value)
  %2064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2060, %dx.types.Handle %30, float %2061, float %2062, float %2063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.ResRet.f32 %2064, 1
  %2067 = extractvalue %dx.types.ResRet.f32 %2064, 2
  %2068 = fmul fast float %2065, 1.023000e+03
  %2069 = fmul fast float %2066, 1.023000e+03
  %2070 = fmul fast float %2067, 1.023000e+03
  %2071 = fadd fast float %2068, 5.000000e-01
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = fadd fast float %2070, 5.000000e-01
  %2074 = call float @dx.op.unary.f32(i32 27, float %2071)  ; Round_ni(value)
  %2075 = call float @dx.op.unary.f32(i32 27, float %2072)  ; Round_ni(value)
  %2076 = call float @dx.op.unary.f32(i32 27, float %2073)  ; Round_ni(value)
  %2077 = fsub fast float %2044, %2047
  %2078 = fsub fast float %2045, %2048
  %2079 = fsub fast float %2046, %2049
  %2080 = fmul fast float %2077, 7.500000e-01
  %2081 = fmul fast float %2078, 7.500000e-01
  %2082 = fmul fast float %2079, 7.500000e-01
  %2083 = fadd fast float %2047, 1.250000e-01
  %2084 = fadd fast float %2083, %2080
  %2085 = fadd fast float %2084, %2074
  %2086 = fadd fast float %2048, 1.250000e-01
  %2087 = fadd fast float %2086, %2081
  %2088 = fadd fast float %2087, %2075
  %2089 = fadd fast float %2049, 1.250000e-01
  %2090 = fadd fast float %2089, %2082
  %2091 = fadd fast float %2090, %2076
  %2092 = fmul fast float %2085, %2035
  %2093 = fmul fast float %2088, %2036
  %2094 = fmul fast float %2091, %2037
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = add i32 %2096, 0
  %2098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2098, %dx.types.Handle %28, float %2092, float %2093, float %2094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  br label %2101

; <label>:2101                                    ; preds = %2022, %2011
  %2102 = phi float [ %2100, %2022 ], [ -1.000000e+00, %2011 ]
  %2103 = fadd fast float %2102, %2009
  %2104 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  br label %2105

; <label>:2105                                    ; preds = %2101, %1999
  %2106 = phi float [ %2104, %2101 ], [ %2009, %1999 ]
  %2107 = fmul fast float %2106, %399
  br label %2108

; <label>:2108                                    ; preds = %2105, %1994
  %2109 = phi float [ %2107, %2105 ], [ %399, %1994 ]
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = and i32 %2111, 256
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2160, label %2114

; <label>:2114                                    ; preds = %2108
  %2115 = add i32 %35, 432
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = add i32 %2117, 0
  %2119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2119, %dx.types.Handle %71, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = add i32 %35, 132
  %2123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2122, i32 undef)  ; BufferLoad(srv,index,wot)
  %2124 = extractvalue %dx.types.ResRet.i32 %2123, 0
  %2125 = shl i32 %2124, 4
  %2126 = and i32 %2125, 32752
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = lshr i32 %2124, 7
  %2129 = and i32 %2128, 32752
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = fsub fast float 1.000000e+00, %2109
  %2132 = call float @dx.op.binary.f32(i32 35, float %2131, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2133 = bitcast float %2109 to i32
  %2134 = sitofp i32 %2133 to float
  %2135 = fadd fast float %2134, 0xC1CFBF8940000000
  %2136 = fmul fast float %2130, %2135
  %2137 = fadd fast float %2136, 0x41CFBF8940000000
  %2138 = fptosi float %2137 to i32
  %2139 = bitcast i32 %2138 to float
  %2140 = bitcast float %2132 to i32
  %2141 = sitofp i32 %2140 to float
  %2142 = fadd fast float %2141, 0xC1CFBF8940000000
  %2143 = fmul fast float %2142, %2130
  %2144 = fadd fast float %2143, 0x41CFBF8940000000
  %2145 = fptosi float %2144 to i32
  %2146 = bitcast i32 %2145 to float
  %2147 = fmul fast float %2139, %2127
  %2148 = fmul fast float %2146, %2127
  %2149 = fsub fast float %2132, %2147
  %2150 = fadd fast float %2148, %2132
  %2151 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2152 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2153 = fsub fast float %2121, %2151
  %2154 = fsub fast float %2152, %2151
  %2155 = bitcast float %2154 to i32
  %2156 = sub nsw i32 2129859010, %2155
  %2157 = bitcast i32 %2156 to float
  %2158 = fmul fast float %2157, %2153
  %2159 = call float @dx.op.unary.f32(i32 7, float %2158)  ; Saturate(value)
  br label %2160

; <label>:2160                                    ; preds = %2114, %2108
  %2161 = phi float [ %2159, %2114 ], [ %2109, %2108 ]
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 128
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2182, label %2166

; <label>:2166                                    ; preds = %2160
  %2167 = add i32 %35, 416
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %2169, 0
  %2171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2171, %dx.types.Handle %71, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = and i32 %2175, 524288
  %2177 = icmp ne i32 %2176, 0
  %2178 = fcmp fast ogt float %2173, 0x3FE0101020000000
  %2179 = select i1 %2178, float 1.000000e+00, float 0.000000e+00
  %2180 = select i1 %2177, float %2179, float %2173
  %2181 = fmul fast float %2180, %2161
  br label %2182

; <label>:2182                                    ; preds = %2166, %2160
  %2183 = phi float [ %2181, %2166 ], [ %2161, %2160 ]
  %2184 = fcmp fast ult float %2183, 0x3F70101020000000
  br i1 %2184, label %2814, label %2185

; <label>:2185                                    ; preds = %2182
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 16
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2388, label %2190

; <label>:2190                                    ; preds = %2185
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = add i32 %35, 368
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = add i32 %2195, 0
  %2197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2197, %dx.types.Handle %70, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  %2200 = extractvalue %dx.types.ResRet.f32 %2198, 1
  %2201 = extractvalue %dx.types.ResRet.f32 %2198, 2
  %2202 = extractvalue %dx.types.ResRet.f32 %2198, 3
  %2203 = and i32 %2192, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = lshr i32 %2192, 8
  %2206 = and i32 %2205, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = fmul fast float %2202, %2204
  %2209 = fadd fast float %2208, %2207
  %2210 = fmul fast float %2209, 0x3F70101000000000
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = and i32 %2212, 512
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2223, label %2215

; <label>:2215                                    ; preds = %2190
  %2216 = add i32 %35, 448
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = add i32 %2218, 0
  %2220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2220, %dx.types.Handle %71, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2222 = extractvalue %dx.types.ResRet.f32 %2221, 0
  br label %2223

; <label>:2223                                    ; preds = %2215, %2190
  %2224 = phi float [ %2222, %2215 ], [ 1.000000e+00, %2190 ]
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 33554432
  %2228 = icmp eq i32 %2227, 0
  br i1 %2228, label %2335, label %2229

; <label>:2229                                    ; preds = %2223
  %2230 = add i32 %35, 256
  %2231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2230, i32 undef)  ; BufferLoad(srv,index,wot)
  %2232 = extractvalue %dx.types.ResRet.i32 %2231, 0
  %2233 = and i32 %2232, 65535
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = lshr i32 %2232, 16
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = add i32 %35, 260
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 65535
  %2241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2240)  ; LegacyF16ToF32(value)
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = lshr i32 %2243, 24
  %2245 = uitofp i32 %2244 to float
  %2246 = fmul fast float %2245, 0x3F70101020000000
  %2247 = and i32 %2243, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = lshr i32 %2243, 8
  %2251 = and i32 %2250, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = lshr i32 %2243, 16
  %2255 = and i32 %2254, 255
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = add i32 %35, 252
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = lshr i32 %2260, 24
  %2262 = uitofp i32 %2261 to float
  %2263 = fmul fast float %2262, 0x3F70101020000000
  %2264 = and i32 %2260, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = lshr i32 %2260, 8
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = lshr i32 %2260, 16
  %2272 = and i32 %2271, 255
  %2273 = uitofp i32 %2272 to float
  %2274 = fmul fast float %2273, 0x3F70101020000000
  %2275 = bitcast float %2199 to i32
  %2276 = ashr i32 %2275, 1
  %2277 = sub nsw i32 1597463174, %2276
  %2278 = bitcast i32 %2277 to float
  %2279 = fmul fast float %2199, 5.000000e-01
  %2280 = fmul fast float %2278, %2278
  %2281 = fmul fast float %2280, %2279
  %2282 = fsub fast float 1.500000e+00, %2281
  %2283 = fmul fast float %2278, %2199
  %2284 = fmul fast float %2283, %2282
  %2285 = bitcast float %2200 to i32
  %2286 = ashr i32 %2285, 1
  %2287 = sub nsw i32 1597463174, %2286
  %2288 = bitcast i32 %2287 to float
  %2289 = fmul fast float %2200, 5.000000e-01
  %2290 = fmul fast float %2288, %2288
  %2291 = fmul fast float %2290, %2289
  %2292 = fsub fast float 1.500000e+00, %2291
  %2293 = fmul fast float %2288, %2200
  %2294 = fmul fast float %2293, %2292
  %2295 = bitcast float %2201 to i32
  %2296 = ashr i32 %2295, 1
  %2297 = sub nsw i32 1597463174, %2296
  %2298 = bitcast i32 %2297 to float
  %2299 = fmul fast float %2201, 5.000000e-01
  %2300 = fmul fast float %2298, %2298
  %2301 = fmul fast float %2300, %2299
  %2302 = fsub fast float 1.500000e+00, %2301
  %2303 = fmul fast float %2298, %2201
  %2304 = fmul fast float %2303, %2302
  %2305 = fsub fast float %2284, %2266
  %2306 = fsub fast float %2294, %2270
  %2307 = fsub fast float %2304, %2274
  %2308 = fmul fast float %2305, %2234
  %2309 = fmul fast float %2306, %2236
  %2310 = fmul fast float %2307, %2241
  %2311 = fadd fast float %2308, %2249
  %2312 = fadd fast float %2309, %2253
  %2313 = fadd fast float %2310, %2257
  %2314 = call float @dx.op.unary.f32(i32 7, float %2311)  ; Saturate(value)
  %2315 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2316 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  %2317 = fmul fast float %2314, %2314
  %2318 = fmul fast float %2315, %2315
  %2319 = fmul fast float %2316, %2316
  %2320 = fsub fast float %2317, %2199
  %2321 = fsub fast float %2318, %2200
  %2322 = fsub fast float %2319, %2201
  %2323 = fmul fast float %2320, %2224
  %2324 = fmul fast float %2321, %2224
  %2325 = fmul fast float %2322, %2224
  %2326 = fadd fast float %2323, %2199
  %2327 = fadd fast float %2324, %2200
  %2328 = fadd fast float %2325, %2201
  %2329 = fadd fast float %2246, %2210
  %2330 = fsub fast float %2329, %2263
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fsub fast float %2331, %2210
  %2333 = fmul fast float %2332, %2224
  %2334 = fadd fast float %2333, %2210
  br label %2388

; <label>:2335                                    ; preds = %2223
  %2336 = and i32 %2226, 134217728
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2372, label %2338

; <label>:2338                                    ; preds = %2335
  %2339 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2340 = call float @dx.op.unary.f32(i32 24, float %281)  ; Sqrt(value)
  %2341 = call float @dx.op.unary.f32(i32 24, float %285)  ; Sqrt(value)
  %2342 = fadd fast float %2339, -5.000000e-01
  %2343 = fadd fast float %2340, -5.000000e-01
  %2344 = fadd fast float %2341, -5.000000e-01
  %2345 = fmul fast float %2342, %2224
  %2346 = fmul fast float %2343, %2224
  %2347 = fmul fast float %2344, %2224
  %2348 = fadd fast float %2345, 5.000000e-01
  %2349 = fadd fast float %2346, 5.000000e-01
  %2350 = fadd fast float %2347, 5.000000e-01
  %2351 = call float @dx.op.unary.f32(i32 24, float %2199)  ; Sqrt(value)
  %2352 = call float @dx.op.unary.f32(i32 24, float %2200)  ; Sqrt(value)
  %2353 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2354 = fmul fast float %2348, 2.000000e+00
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2355, %2351
  %2357 = fadd fast float %2356, %2354
  %2358 = fmul fast float %2357, %2351
  %2359 = fmul fast float %2349, 2.000000e+00
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = fmul fast float %2360, %2352
  %2362 = fadd fast float %2361, %2359
  %2363 = fmul fast float %2362, %2352
  %2364 = fmul fast float %2350, 2.000000e+00
  %2365 = fsub fast float 1.000000e+00, %2364
  %2366 = fmul fast float %2365, %2353
  %2367 = fadd fast float %2366, %2364
  %2368 = fmul fast float %2367, %2353
  %2369 = fmul fast float %2358, %2358
  %2370 = fmul fast float %2363, %2363
  %2371 = fmul fast float %2368, %2368
  br label %2388

; <label>:2372                                    ; preds = %2335
  %2373 = fmul fast float %277, %277
  %2374 = fmul fast float %281, %281
  %2375 = fmul fast float %285, %285
  %2376 = fadd fast float %2373, -1.000000e+00
  %2377 = fadd fast float %2374, -1.000000e+00
  %2378 = fadd fast float %2375, -1.000000e+00
  %2379 = fmul fast float %2224, %2376
  %2380 = fmul fast float %2224, %2377
  %2381 = fmul fast float %2224, %2378
  %2382 = fadd fast float %2379, 1.000000e+00
  %2383 = fadd fast float %2380, 1.000000e+00
  %2384 = fadd fast float %2381, 1.000000e+00
  %2385 = fmul fast float %2382, %2199
  %2386 = fmul fast float %2383, %2200
  %2387 = fmul fast float %2384, %2201
  br label %2388

; <label>:2388                                    ; preds = %2372, %2338, %2229, %2185
  %2389 = phi float [ %2334, %2229 ], [ %2210, %2338 ], [ %2210, %2372 ], [ 0x3FA23C0BE0000000, %2185 ]
  %2390 = phi float [ %2326, %2229 ], [ %2369, %2338 ], [ %2385, %2372 ], [ 1.000000e+00, %2185 ]
  %2391 = phi float [ %2327, %2229 ], [ %2370, %2338 ], [ %2386, %2372 ], [ 1.000000e+00, %2185 ]
  %2392 = phi float [ %2328, %2229 ], [ %2371, %2338 ], [ %2387, %2372 ], [ 1.000000e+00, %2185 ]
  %2393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.i32 %2393, 1
  %2395 = and i32 %2394, 1
  %2396 = icmp ne i32 %2395, 0
  %2397 = add i32 %35, 356
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 32
  %2401 = icmp ne i32 %2400, 0
  %2402 = and i1 %2396, %2401
  %2403 = select i1 %2402, float 1.000000e+00, float %2390
  %2404 = select i1 %2402, float 0x3FD3333340000000, float %2391
  %2405 = select i1 %2402, float 0x3FD3333340000000, float %2392
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 32
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2482, label %2410

; <label>:2410                                    ; preds = %2388
  %2411 = add i32 %35, 124
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = add i32 %35, 384
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = add i32 %2416, 0
  %2418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2419 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2418, %dx.types.Handle %70, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 1
  %2422 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2423 = extractvalue %dx.types.ResRet.f32 %2419, 3
  %2424 = and i32 %2413, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = lshr i32 %2413, 8
  %2427 = and i32 %2426, 255
  %2428 = uitofp i32 %2427 to float
  %2429 = lshr i32 %2413, 16
  %2430 = and i32 %2429, 255
  %2431 = uitofp i32 %2430 to float
  %2432 = fmul fast float %2431, 0x3F70101000000000
  %2433 = fmul fast float %2420, %2425
  %2434 = fadd fast float %2433, %2428
  %2435 = fmul fast float %2434, 0x3F70101000000000
  %2436 = fadd fast float %2421, -5.000000e-01
  %2437 = fadd fast float %2423, -5.000000e-01
  %2438 = fmul fast float %2436, %2432
  %2439 = fmul fast float %2437, %2432
  %2440 = fadd fast float %2438, 5.000000e-01
  %2441 = fadd fast float %2439, 5.000000e-01
  %2442 = fmul fast float %2440, 2.000000e+00
  %2443 = fadd fast float %2442, -1.000000e+00
  %2444 = fmul fast float %2441, 2.000000e+00
  %2445 = fadd fast float %2444, -1.000000e+00
  %2446 = fadd fast float %2443, %2445
  %2447 = fmul fast float %2446, 5.000000e-01
  %2448 = fsub fast float %2443, %2445
  %2449 = fmul fast float %2448, 5.000000e-01
  %2450 = call float @dx.op.unary.f32(i32 6, float %2447)  ; FAbs(value)
  %2451 = fsub fast float 1.000000e+00, %2450
  %2452 = call float @dx.op.unary.f32(i32 6, float %2449)  ; FAbs(value)
  %2453 = fsub fast float %2451, %2452
  %2454 = call float @dx.op.dot3.f32(i32 55, float %2447, float %2449, float %2453, float %2447, float %2449, float %2453)  ; Dot3(ax,ay,az,bx,by,bz)
  %2455 = call float @dx.op.unary.f32(i32 25, float %2454)  ; Rsqrt(value)
  %2456 = fmul fast float %2447, %2455
  %2457 = fmul fast float %2449, %2455
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 67108864
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2478, label %2462

; <label>:2462                                    ; preds = %2410
  %2463 = add i32 %35, 312
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 65535
  %2467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2466)  ; LegacyF16ToF32(value)
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 65535
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = lshr i32 %2465, 16
  %2473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2472)  ; LegacyF16ToF32(value)
  %2474 = fsub fast float %2435, %2473
  %2475 = fmul fast float %2474, %2467
  %2476 = fadd fast float %2475, %2471
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  br label %2478

; <label>:2478                                    ; preds = %2462, %2410
  %2479 = phi float [ %2477, %2462 ], [ %2435, %2410 ]
  %2480 = call float @dx.op.dot2.f32(i32 54, float %2456, float %2457, float %1899, float %1900)  ; Dot2(ax,ay,bx,by)
  %2481 = call float @dx.op.dot2.f32(i32 54, float %2456, float %2457, float %1901, float %1902)  ; Dot2(ax,ay,bx,by)
  br label %2482

; <label>:2482                                    ; preds = %2478, %2388
  %2483 = phi float [ %2479, %2478 ], [ 0x3FD6666660000000, %2388 ]
  %2484 = phi float [ %2480, %2478 ], [ 0.000000e+00, %2388 ]
  %2485 = phi float [ %2481, %2478 ], [ 0.000000e+00, %2388 ]
  %2486 = phi float [ %2422, %2478 ], [ 1.000000e+00, %2388 ]
  %2487 = add i32 %35, 192
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = lshr i32 %2489, 22
  %2491 = shl nuw nsw i32 %2490, 5
  %2492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2491)  ; LegacyF16ToF32(value)
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = and i32 %2494, 64
  %2496 = icmp eq i32 %2495, 0
  br i1 %2496, label %2530, label %2497

; <label>:2497                                    ; preds = %2482
  %2498 = add i32 %35, 400
  %2499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2500 = extractvalue %dx.types.ResRet.i32 %2499, 0
  %2501 = add i32 %2500, 0
  %2502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 131072
  %2506 = icmp eq i32 %2505, 0
  %2507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2502, %dx.types.Handle %70, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2508 = extractvalue %dx.types.ResRet.f32 %2507, 0
  %2509 = extractvalue %dx.types.ResRet.f32 %2507, 1
  %2510 = extractvalue %dx.types.ResRet.f32 %2507, 2
  %2511 = fmul fast float %2508, %265
  %2512 = fmul fast float %2509, %268
  %2513 = fmul fast float %2510, %271
  br i1 %2506, label %2520, label %2514

; <label>:2514                                    ; preds = %2497
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = fmul fast float %2516, %2511
  %2518 = fmul fast float %2516, %2512
  %2519 = fmul fast float %2516, %2513
  br label %2520

; <label>:2520                                    ; preds = %2514, %2497
  %2521 = phi float [ %2517, %2514 ], [ %2511, %2497 ]
  %2522 = phi float [ %2518, %2514 ], [ %2512, %2497 ]
  %2523 = phi float [ %2519, %2514 ], [ %2513, %2497 ]
  %2524 = fmul fast float %2521, %2492
  %2525 = select i1 %175, float %2524, float %2521
  %2526 = call float @dx.op.dot3.f32(i32 55, float %2525, float %2522, float %2523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2527 = select i1 %175, float 0.000000e+00, float %2521
  %2528 = select i1 %175, float %2526, float %2522
  %2529 = select i1 %175, float 0.000000e+00, float %2523
  br label %2530

; <label>:2530                                    ; preds = %2520, %2482
  %2531 = phi float [ %2527, %2520 ], [ 0.000000e+00, %2482 ]
  %2532 = phi float [ %2528, %2520 ], [ 0.000000e+00, %2482 ]
  %2533 = phi float [ %2529, %2520 ], [ 0.000000e+00, %2482 ]
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = and i32 %2535, 10240
  %2537 = icmp eq i32 %2536, 0
  br i1 %2537, label %2582, label %2538

; <label>:2538                                    ; preds = %2530
  %2539 = add i32 %35, 464
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2539, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = add i32 %2541, 0
  %2543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2543, %dx.types.Handle %71, float %1995, float %1996, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2545 = extractvalue %dx.types.ResRet.f32 %2544, 1
  %2546 = extractvalue %dx.types.ResRet.f32 %2544, 3
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = and i32 %2548, 1048576
  %2550 = icmp ne i32 %2549, 0
  %2551 = and i32 %2548, 8192
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2568, label %2553

; <label>:2553                                    ; preds = %2538
  %2554 = extractvalue %dx.types.ResRet.f32 %2544, 2
  %2555 = select i1 %2550, float %2554, float %2545
  %2556 = extractvalue %dx.types.ResRet.f32 %2544, 0
  %2557 = select i1 %2550, float %2556, float %2545
  %2558 = add i32 %35, 128
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = lshr i32 %2560, 16
  %2562 = and i32 %2561, 255
  %2563 = uitofp i32 %2562 to float
  %2564 = fmul fast float %2563, 0x3F80101020000000
  %2565 = fmul fast float %2564, %2557
  %2566 = fmul fast float %2564, %2545
  %2567 = fmul fast float %2564, %2555
  br label %2568

; <label>:2568                                    ; preds = %2553, %2538
  %2569 = phi float [ %2565, %2553 ], [ 0.000000e+00, %2538 ]
  %2570 = phi float [ %2566, %2553 ], [ 0.000000e+00, %2538 ]
  %2571 = phi float [ %2567, %2553 ], [ 0.000000e+00, %2538 ]
  %2572 = and i32 %2548, 2048
  %2573 = icmp eq i32 %2572, 0
  br i1 %2573, label %2582, label %2574

; <label>:2574                                    ; preds = %2568
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = shl i32 %2576, 4
  %2578 = and i32 %2577, 32752
  %2579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2578)  ; LegacyF16ToF32(value)
  %2580 = fmul fast float %2579, %2546
  %2581 = call float @dx.op.binary.f32(i32 35, float %2580, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2582

; <label>:2582                                    ; preds = %2574, %2568, %2530
  %2583 = phi float [ %2569, %2574 ], [ %2569, %2568 ], [ 0.000000e+00, %2530 ]
  %2584 = phi float [ %2570, %2574 ], [ %2570, %2568 ], [ 0.000000e+00, %2530 ]
  %2585 = phi float [ %2571, %2574 ], [ %2571, %2568 ], [ 0.000000e+00, %2530 ]
  %2586 = phi float [ %2581, %2574 ], [ 0x3F70101020000000, %2568 ], [ 0x3F70101020000000, %2530 ]
  %2587 = add i32 %35, 128
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = and i32 %2589, 255
  %2591 = uitofp i32 %2590 to float
  %2592 = lshr i32 %2589, 8
  %2593 = and i32 %2592, 255
  %2594 = uitofp i32 %2593 to float
  %2595 = call float @dx.op.dot3.f32(i32 55, float %2403, float %2404, float %2405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2596 = fmul fast float %2594, %2595
  %2597 = fadd fast float %2596, %2591
  %2598 = fmul fast float %2597, 0x3F70101020000000
  %2599 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  br i1 %1887, label %2600, label %2608

; <label>:2600                                    ; preds = %2582
  %2601 = fsub fast float 1.000000e+00, %2183
  %2602 = fmul fast float %2601, %1872
  %2603 = fmul fast float %2601, %1873
  %2604 = fmul fast float %2601, %1874
  %2605 = fmul fast float %2601, %1875
  %2606 = fmul fast float %2601, %1876
  %2607 = fmul fast float %2601, %1877
  br label %2608

; <label>:2608                                    ; preds = %2600, %2582
  %2609 = phi float [ %2602, %2600 ], [ %1872, %2582 ]
  %2610 = phi float [ %2603, %2600 ], [ %1873, %2582 ]
  %2611 = phi float [ %2604, %2600 ], [ %1874, %2582 ]
  %2612 = phi float [ %2605, %2600 ], [ %1875, %2582 ]
  %2613 = phi float [ %2606, %2600 ], [ %1876, %2582 ]
  %2614 = phi float [ %2607, %2600 ], [ %1877, %2582 ]
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 3
  %2618 = icmp eq i32 %2617, 3
  br i1 %2618, label %2697, label %2619

; <label>:2619                                    ; preds = %2608
  %2620 = and i32 %2616, 16
  %2621 = icmp ne i32 %2620, 0
  %2622 = select i1 %2621, float %2183, float 0.000000e+00
  %2623 = icmp eq i32 %2617, 0
  br i1 %2623, label %2624, label %2652

; <label>:2624                                    ; preds = %2619
  %2625 = and i32 %2616, 64
  %2626 = icmp ne i32 %2625, 0
  %2627 = select i1 %2626, float %2183, float 0.000000e+00
  %2628 = fsub fast float %2403, %2609
  %2629 = fsub fast float %2404, %2610
  %2630 = fsub fast float %2405, %2611
  %2631 = fmul fast float %2622, %2628
  %2632 = fmul fast float %2622, %2629
  %2633 = fmul fast float %2622, %2630
  %2634 = fadd fast float %2631, %2609
  %2635 = fadd fast float %2632, %2610
  %2636 = fadd fast float %2633, %2611
  %2637 = fsub fast float %2389, %1881
  %2638 = fmul fast float %2622, %2637
  %2639 = fadd fast float %2638, %1881
  %2640 = fsub fast float %2531, %2612
  %2641 = fsub fast float %2532, %2613
  %2642 = fsub fast float %2533, %2614
  %2643 = fmul fast float %2627, %2640
  %2644 = fmul fast float %2627, %2641
  %2645 = fmul fast float %2627, %2642
  %2646 = fadd fast float %2643, %2612
  %2647 = fadd fast float %2644, %2613
  %2648 = fadd fast float %2645, %2614
  %2649 = fsub fast float %2599, %1885
  %2650 = fmul fast float %2622, %2649
  %2651 = fadd fast float %2650, %1885
  br label %2697

; <label>:2652                                    ; preds = %2619
  %2653 = icmp eq i32 %2617, 1
  br i1 %2653, label %2654, label %2667

; <label>:2654                                    ; preds = %2652
  %2655 = fadd fast float %2403, -1.000000e+00
  %2656 = fadd fast float %2404, -1.000000e+00
  %2657 = fadd fast float %2405, -1.000000e+00
  %2658 = fmul fast float %2622, %2655
  %2659 = fmul fast float %2622, %2656
  %2660 = fmul fast float %2622, %2657
  %2661 = fadd fast float %2658, 1.000000e+00
  %2662 = fadd fast float %2659, 1.000000e+00
  %2663 = fadd fast float %2660, 1.000000e+00
  %2664 = fmul fast float %2661, %2609
  %2665 = fmul fast float %2662, %2610
  %2666 = fmul fast float %2663, %2611
  br label %2697

; <label>:2667                                    ; preds = %2652
  %2668 = icmp eq i32 %2617, 2
  br i1 %2668, label %2669, label %2697

; <label>:2669                                    ; preds = %2667
  %2670 = call float @dx.op.unary.f32(i32 24, float %2403)  ; Sqrt(value)
  %2671 = call float @dx.op.unary.f32(i32 24, float %2404)  ; Sqrt(value)
  %2672 = call float @dx.op.unary.f32(i32 24, float %2405)  ; Sqrt(value)
  %2673 = fadd fast float %2670, -5.000000e-01
  %2674 = fadd fast float %2671, -5.000000e-01
  %2675 = fadd fast float %2672, -5.000000e-01
  %2676 = fmul fast float %2673, %2622
  %2677 = fmul fast float %2674, %2622
  %2678 = fmul fast float %2675, %2622
  %2679 = fadd fast float %2676, 5.000000e-01
  %2680 = fadd fast float %2677, 5.000000e-01
  %2681 = fadd fast float %2678, 5.000000e-01
  %2682 = fmul fast float %2679, 2.000000e+00
  %2683 = fsub fast float 1.000000e+00, %2682
  %2684 = fmul fast float %2683, %2609
  %2685 = fadd fast float %2684, %2682
  %2686 = fmul fast float %2685, %2609
  %2687 = fmul fast float %2680, 2.000000e+00
  %2688 = fsub fast float 1.000000e+00, %2687
  %2689 = fmul fast float %2688, %2610
  %2690 = fadd fast float %2689, %2687
  %2691 = fmul fast float %2690, %2610
  %2692 = fmul fast float %2681, 2.000000e+00
  %2693 = fsub fast float 1.000000e+00, %2692
  %2694 = fmul fast float %2693, %2611
  %2695 = fadd fast float %2694, %2692
  %2696 = fmul fast float %2695, %2611
  br label %2697

; <label>:2697                                    ; preds = %2669, %2667, %2654, %2624, %2608
  %2698 = phi float [ %2609, %2608 ], [ %2686, %2669 ], [ %2609, %2667 ], [ %2664, %2654 ], [ %2634, %2624 ]
  %2699 = phi float [ %2610, %2608 ], [ %2691, %2669 ], [ %2610, %2667 ], [ %2665, %2654 ], [ %2635, %2624 ]
  %2700 = phi float [ %2611, %2608 ], [ %2696, %2669 ], [ %2611, %2667 ], [ %2666, %2654 ], [ %2636, %2624 ]
  %2701 = phi float [ %2612, %2608 ], [ %2612, %2669 ], [ %2612, %2667 ], [ %2612, %2654 ], [ %2646, %2624 ]
  %2702 = phi float [ %2613, %2608 ], [ %2613, %2669 ], [ %2613, %2667 ], [ %2613, %2654 ], [ %2647, %2624 ]
  %2703 = phi float [ %2614, %2608 ], [ %2614, %2669 ], [ %2614, %2667 ], [ %2614, %2654 ], [ %2648, %2624 ]
  %2704 = phi float [ %1881, %2608 ], [ %1881, %2669 ], [ %1881, %2667 ], [ %1881, %2654 ], [ %2639, %2624 ]
  %2705 = phi float [ %1885, %2608 ], [ %1885, %2669 ], [ %1885, %2667 ], [ %1885, %2654 ], [ %2651, %2624 ]
  %2706 = and i32 %2616, 12
  %2707 = icmp eq i32 %2706, 12
  br i1 %2707, label %2814, label %2708

; <label>:2708                                    ; preds = %2697
  %2709 = and i32 %2616, 2097184
  %2710 = icmp eq i32 %2709, 2097184
  %2711 = select i1 %2710, float %2183, float 0.000000e+00
  %2712 = and i32 %2616, 4194336
  %2713 = icmp eq i32 %2712, 4194336
  %2714 = select i1 %2713, float %2183, float 0.000000e+00
  %2715 = and i32 %2616, 8388640
  %2716 = icmp eq i32 %2715, 8388640
  %2717 = select i1 %2716, float %2183, float 0.000000e+00
  %2718 = and i32 %2616, 2048
  %2719 = icmp ne i32 %2718, 0
  %2720 = select i1 %2719, float %2183, float 0.000000e+00
  %2721 = and i32 %2616, 8192
  %2722 = icmp ne i32 %2721, 0
  %2723 = select i1 %2722, float %2183, float 0.000000e+00
  %2724 = icmp eq i32 %2706, 0
  br i1 %2724, label %2725, label %2750

; <label>:2725                                    ; preds = %2708
  %2726 = fsub fast float %2484, %1870
  %2727 = fsub fast float %2485, %1871
  %2728 = fmul fast float %2711, %2726
  %2729 = fmul fast float %2711, %2727
  %2730 = fadd fast float %2728, %1870
  %2731 = fadd fast float %2729, %1871
  %2732 = fsub fast float %2486, %1883
  %2733 = fmul fast float %2714, %2732
  %2734 = fadd fast float %2733, %1883
  %2735 = fsub fast float %2483, %1882
  %2736 = fmul fast float %2717, %2735
  %2737 = fadd fast float %2736, %1882
  %2738 = fsub fast float %2586, %1884
  %2739 = fmul fast float %2720, %2738
  %2740 = fadd fast float %2739, %1884
  %2741 = fsub fast float %2583, %1878
  %2742 = fsub fast float %2584, %1879
  %2743 = fsub fast float %2585, %1880
  %2744 = fmul fast float %2723, %2741
  %2745 = fmul fast float %2723, %2742
  %2746 = fmul fast float %2723, %2743
  %2747 = fadd fast float %2744, %1878
  %2748 = fadd fast float %2745, %1879
  %2749 = fadd fast float %2746, %1880
  br label %2814

; <label>:2750                                    ; preds = %2708
  %2751 = icmp eq i32 %2706, 4
  br i1 %2751, label %2752, label %2792

; <label>:2752                                    ; preds = %2750
  %2753 = fmul fast float %2711, %2484
  %2754 = fmul fast float %2711, %2485
  %2755 = fadd fast float %2753, %1870
  %2756 = fadd fast float %2754, %1871
  %2757 = call float @dx.op.binary.f32(i32 36, float %1883, float %2486)  ; FMin(a,b)
  %2758 = fsub fast float %2757, %1883
  %2759 = fmul fast float %2758, %2714
  %2760 = fadd fast float %2759, %1883
  %2761 = fadd fast float %2483, %1882
  %2762 = fmul fast float %2761, 0x3FF337FAE0000000
  %2763 = fmul fast float %1882, %1882
  %2764 = fmul fast float %2483, %2483
  %2765 = fadd fast float %2764, %2763
  %2766 = fmul fast float %2765, 0x3FE5152B00000000
  %2767 = fmul fast float %1882, 0xBFCC1F85E0000000
  %2768 = fmul fast float %2767, %2483
  %2769 = fadd fast float %2768, 0xBFE1363700000000
  %2770 = fadd fast float %2769, %2762
  %2771 = fsub fast float %2770, %2766
  %2772 = fmul fast float %2761, 0x3FBA6F0D00000000
  %2773 = fmul fast float %2765, 0x3FD0432880000000
  %2774 = fmul fast float %1882, 0xBFEF110800000000
  %2775 = fmul fast float %2774, %2483
  %2776 = fadd fast float %2775, 1.000000e+00
  %2777 = fsub fast float %2776, %2772
  %2778 = fadd fast float %2777, %2773
  %2779 = fdiv fast float %2771, %2778
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2781 = fsub fast float %2780, %1882
  %2782 = fmul fast float %2781, %2717
  %2783 = fadd fast float %2782, %1882
  %2784 = fmul fast float %2720, %2586
  %2785 = fadd fast float %2784, %1884
  %2786 = fmul fast float %2723, %2583
  %2787 = fmul fast float %2723, %2584
  %2788 = fmul fast float %2723, %2585
  %2789 = fadd fast float %2786, %1878
  %2790 = fadd fast float %2787, %1879
  %2791 = fadd fast float %2788, %1880
  br label %2814

; <label>:2792                                    ; preds = %2750
  %2793 = icmp eq i32 %2706, 8
  br i1 %2793, label %2794, label %2814

; <label>:2794                                    ; preds = %2792
  %2795 = fmul fast float %2711, %2484
  %2796 = fmul fast float %2711, %2485
  %2797 = fadd fast float %2795, %1870
  %2798 = fadd fast float %2796, %1871
  %2799 = call float @dx.op.binary.f32(i32 36, float %1883, float %2486)  ; FMin(a,b)
  %2800 = fsub fast float %2799, %1883
  %2801 = fmul fast float %2800, %2714
  %2802 = fadd fast float %2801, %1883
  %2803 = fsub fast float %2483, %1882
  %2804 = fmul fast float %2717, %2803
  %2805 = fadd fast float %2804, %1882
  %2806 = fmul fast float %2720, %2586
  %2807 = fadd fast float %2806, %1884
  %2808 = fmul fast float %2723, %2583
  %2809 = fmul fast float %2723, %2584
  %2810 = fmul fast float %2723, %2585
  %2811 = fadd fast float %2808, %1878
  %2812 = fadd fast float %2809, %1879
  %2813 = fadd fast float %2810, %1880
  br label %2814

; <label>:2814                                    ; preds = %2794, %2792, %2752, %2725, %2697, %2182, %1886, %1869
  %2815 = phi float [ %1870, %2697 ], [ %1870, %2182 ], [ %1870, %1869 ], [ %2797, %2794 ], [ %1870, %2792 ], [ %2755, %2752 ], [ %2730, %2725 ], [ %1870, %1886 ]
  %2816 = phi float [ %1871, %2697 ], [ %1871, %2182 ], [ %1871, %1869 ], [ %2798, %2794 ], [ %1871, %2792 ], [ %2756, %2752 ], [ %2731, %2725 ], [ %1871, %1886 ]
  %2817 = phi float [ %2698, %2697 ], [ %1872, %2182 ], [ %1872, %1869 ], [ %2698, %2794 ], [ %2698, %2792 ], [ %2698, %2752 ], [ %2698, %2725 ], [ %1872, %1886 ]
  %2818 = phi float [ %2699, %2697 ], [ %1873, %2182 ], [ %1873, %1869 ], [ %2699, %2794 ], [ %2699, %2792 ], [ %2699, %2752 ], [ %2699, %2725 ], [ %1873, %1886 ]
  %2819 = phi float [ %2700, %2697 ], [ %1874, %2182 ], [ %1874, %1869 ], [ %2700, %2794 ], [ %2700, %2792 ], [ %2700, %2752 ], [ %2700, %2725 ], [ %1874, %1886 ]
  %2820 = phi float [ %2701, %2697 ], [ %1875, %2182 ], [ %1875, %1869 ], [ %2701, %2794 ], [ %2701, %2792 ], [ %2701, %2752 ], [ %2701, %2725 ], [ %1875, %1886 ]
  %2821 = phi float [ %2702, %2697 ], [ %1876, %2182 ], [ %1876, %1869 ], [ %2702, %2794 ], [ %2702, %2792 ], [ %2702, %2752 ], [ %2702, %2725 ], [ %1876, %1886 ]
  %2822 = phi float [ %2703, %2697 ], [ %1877, %2182 ], [ %1877, %1869 ], [ %2703, %2794 ], [ %2703, %2792 ], [ %2703, %2752 ], [ %2703, %2725 ], [ %1877, %1886 ]
  %2823 = phi float [ %1878, %2697 ], [ %1878, %2182 ], [ %1878, %1869 ], [ %2811, %2794 ], [ %1878, %2792 ], [ %2789, %2752 ], [ %2747, %2725 ], [ %1878, %1886 ]
  %2824 = phi float [ %1879, %2697 ], [ %1879, %2182 ], [ %1879, %1869 ], [ %2812, %2794 ], [ %1879, %2792 ], [ %2790, %2752 ], [ %2748, %2725 ], [ %1879, %1886 ]
  %2825 = phi float [ %1880, %2697 ], [ %1880, %2182 ], [ %1880, %1869 ], [ %2813, %2794 ], [ %1880, %2792 ], [ %2791, %2752 ], [ %2749, %2725 ], [ %1880, %1886 ]
  %2826 = phi float [ %2704, %2697 ], [ %1881, %2182 ], [ %1881, %1869 ], [ %2704, %2794 ], [ %2704, %2792 ], [ %2704, %2752 ], [ %2704, %2725 ], [ %1881, %1886 ]
  %2827 = phi float [ %1882, %2697 ], [ %1882, %2182 ], [ %1882, %1869 ], [ %2805, %2794 ], [ %1882, %2792 ], [ %2783, %2752 ], [ %2737, %2725 ], [ %1882, %1886 ]
  %2828 = phi float [ %1883, %2697 ], [ %1883, %2182 ], [ %1883, %1869 ], [ %2802, %2794 ], [ %1883, %2792 ], [ %2760, %2752 ], [ %2734, %2725 ], [ %1883, %1886 ]
  %2829 = phi float [ %1884, %2697 ], [ %1884, %2182 ], [ %1884, %1869 ], [ %2807, %2794 ], [ %1884, %2792 ], [ %2785, %2752 ], [ %2740, %2725 ], [ %1884, %1886 ]
  %2830 = phi float [ %2705, %2697 ], [ %1885, %2182 ], [ %1885, %1869 ], [ %2705, %2794 ], [ %2705, %2792 ], [ %2705, %2752 ], [ %2705, %2725 ], [ %1885, %1886 ]
  br i1 %352, label %3759, label %2831

; <label>:2831                                    ; preds = %2814
  %2832 = icmp ult i32 %403, 4
  %2833 = add i32 %35, 72
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = add i32 %35, 76
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = or i32 %2838, %2835
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %3759, label %2841

; <label>:2841                                    ; preds = %2831
  %2842 = and i32 %2835, 262144
  %2843 = icmp ne i32 %2842, 0
  %2844 = select i1 %2843, float %37, float 1.000000e+00
  %2845 = select i1 %2843, float %38, float 0.000000e+00
  %2846 = select i1 %2843, float %39, float 0.000000e+00
  %2847 = select i1 %2843, float %40, float 1.000000e+00
  %2848 = select i1 %2843, float %41, float %62
  %2849 = select i1 %2843, float %42, float %63
  %2850 = add i32 %35, 332
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = lshr i32 %2852, 16
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = fmul fast float %2854, 0x3F50624DE0000000
  %2856 = add i32 %35, 136
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = lshr i32 %2858, 16
  %2860 = and i32 %2859, 255
  %2861 = lshr i32 %2858, 24
  %2862 = add i32 %35, 340
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 65535
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = lshr i32 %2864, 16
  %2868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2867)  ; LegacyF16ToF32(value)
  %2869 = add i32 %35, 80
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = lshr i32 %2871, 22
  %2873 = shl nuw nsw i32 %2872, 5
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = shl i32 %2871, 4
  %2876 = and i32 %2875, 32752
  %2877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2876)  ; LegacyF16ToF32(value)
  %2878 = lshr i32 %2871, 7
  %2879 = and i32 %2878, 32752
  %2880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2879)  ; LegacyF16ToF32(value)
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 3
  %2883 = fmul fast float %2882, 1.000000e+03
  %2884 = fmul fast float %342, %2883
  %2885 = call float @dx.op.unary.f32(i32 22, float %2884)  ; Frc(value)
  %2886 = fadd fast float %2885, %332
  %2887 = fmul fast float %343, %2883
  %2888 = call float @dx.op.unary.f32(i32 22, float %2887)  ; Frc(value)
  %2889 = fadd fast float %2888, %334
  %2890 = fmul fast float %2855, %2883
  %2891 = call float @dx.op.unary.f32(i32 22, float %2890)  ; Frc(value)
  %2892 = fmul fast float %2891, 0x401921FB60000000
  %2893 = fadd fast float %2892, %2874
  %2894 = call float @dx.op.unary.f32(i32 13, float %2893)  ; Sin(value)
  %2895 = call float @dx.op.unary.f32(i32 12, float %2893)  ; Cos(value)
  %2896 = fsub fast float -0.000000e+00, %2894
  %2897 = fadd fast float %2848, -5.000000e-01
  %2898 = fadd fast float %2849, -5.000000e-01
  %2899 = fmul fast float %2866, %2897
  %2900 = fmul fast float %2868, %2898
  %2901 = fadd fast float %2899, 5.000000e-01
  %2902 = fadd fast float %2900, 5.000000e-01
  %2903 = fmul fast float %2877, %2901
  %2904 = fmul fast float %2880, %2902
  %2905 = fmul fast float %2895, %2903
  %2906 = call float @dx.op.tertiary.f32(i32 46, float %2896, float %2904, float %2905)  ; FMad(a,b,c)
  %2907 = fmul fast float %2894, %2903
  %2908 = call float @dx.op.tertiary.f32(i32 46, float %2895, float %2904, float %2907)  ; FMad(a,b,c)
  %2909 = fadd fast float %2886, %2906
  %2910 = fadd fast float %2889, %2908
  %2911 = icmp ugt i32 %2860, 1
  %2912 = icmp ugt i32 %2858, 33554431
  %2913 = or i1 %2912, %2911
  br i1 %2913, label %2914, label %2939

; <label>:2914                                    ; preds = %2841
  %2915 = add i32 %35, 276
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = lshr i32 %2917, 16
  %2919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2918)  ; LegacyF16ToF32(value)
  %2920 = fmul fast float %2882, %2919
  %2921 = call float @dx.op.unary.f32(i32 22, float %2920)  ; Frc(value)
  %2922 = mul nuw nsw i32 %2860, %2861
  %2923 = uitofp i32 %2922 to float
  %2924 = fmul fast float %2921, %2923
  %2925 = call float @dx.op.unary.f32(i32 27, float %2924)  ; Round_ni(value)
  %2926 = fptoui float %2925 to i32
  %2927 = urem i32 %2926, %2860
  %2928 = udiv i32 %2926, %2861
  %2929 = call float @dx.op.unary.f32(i32 22, float %2909)  ; Frc(value)
  %2930 = call float @dx.op.unary.f32(i32 22, float %2910)  ; Frc(value)
  %2931 = uitofp i32 %2927 to float
  %2932 = uitofp i32 %2928 to float
  %2933 = fadd fast float %2929, %2931
  %2934 = fadd fast float %2930, %2932
  %2935 = uitofp i32 %2860 to float
  %2936 = uitofp i32 %2861 to float
  %2937 = fdiv fast float %2933, %2935
  %2938 = fdiv fast float %2934, %2936
  br label %2939

; <label>:2939                                    ; preds = %2914, %2841
  %2940 = phi float [ %2937, %2914 ], [ %2909, %2841 ]
  %2941 = phi float [ %2938, %2914 ], [ %2910, %2841 ]
  %2942 = and i32 %2835, 16777216
  %2943 = icmp eq i32 %2942, 0
  br i1 %2943, label %3053, label %2944

; <label>:2944                                    ; preds = %2939
  %2945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2946 = extractvalue %dx.types.CBufRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.CBufRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.CBufRet.f32 %2945, 2
  %2949 = fadd fast float %2946, %133
  %2950 = fadd fast float %2947, %134
  %2951 = fadd fast float %2948, %135
  %2952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2953 = extractvalue %dx.types.CBufRet.f32 %2952, 0
  %2954 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2955 = icmp eq i32 %36, 65535
  br i1 %2955, label %3050, label %2956

; <label>:2956                                    ; preds = %2944
  %2957 = lshr i32 %36, 1
  %2958 = shl i32 %2957, 2
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %36, 1
  %2962 = icmp ne i32 %2961, 0
  %2963 = lshr i32 %2960, 16
  %2964 = and i32 %2960, 65535
  %2965 = select i1 %2962, i32 %2963, i32 %2964
  %2966 = icmp eq i32 %2965, 65535
  br i1 %2966, label %3046, label %2967

; <label>:2967                                    ; preds = %2956
  %2968 = mul nuw nsw i32 %2965, 40
  %2969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.ResRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.ResRet.f32 %2969, 2
  %2973 = add nuw nsw i32 %2968, 12
  %2974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.f32 %2974, 0
  %2976 = extractvalue %dx.types.ResRet.f32 %2974, 1
  %2977 = extractvalue %dx.types.ResRet.f32 %2974, 2
  %2978 = add nuw nsw i32 %2968, 24
  %2979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.ResRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.ResRet.f32 %2979, 2
  %2983 = add nuw nsw i32 %2968, 36
  %2984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  %2986 = fsub fast float %2949, %2970
  %2987 = fsub fast float %2950, %2971
  %2988 = fsub fast float %2951, %2972
  %2989 = fmul fast float %2985, %2986
  %2990 = fmul fast float %2985, %2987
  %2991 = fmul fast float %2985, %2988
  %2992 = call float @dx.op.unary.f32(i32 27, float %2989)  ; Round_ni(value)
  %2993 = call float @dx.op.unary.f32(i32 27, float %2990)  ; Round_ni(value)
  %2994 = call float @dx.op.unary.f32(i32 27, float %2991)  ; Round_ni(value)
  %2995 = fadd fast float %2992, 5.000000e-01
  %2996 = fadd fast float %2993, 5.000000e-01
  %2997 = fadd fast float %2994, 5.000000e-01
  %2998 = fmul fast float %2995, %2975
  %2999 = fmul fast float %2996, %2976
  %3000 = fmul fast float %2997, %2977
  %3001 = shl i32 %36, 2
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = add i32 %3003, 0
  %3005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3004, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3006 = call float @dx.op.unary.f32(i32 22, float %2998)  ; Frc(value)
  %3007 = call float @dx.op.unary.f32(i32 22, float %2999)  ; Frc(value)
  %3008 = call float @dx.op.unary.f32(i32 22, float %3000)  ; Frc(value)
  %3009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3005, %dx.types.Handle %30, float %3006, float %3007, float %3008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3010 = extractvalue %dx.types.ResRet.f32 %3009, 0
  %3011 = extractvalue %dx.types.ResRet.f32 %3009, 1
  %3012 = extractvalue %dx.types.ResRet.f32 %3009, 2
  %3013 = fmul fast float %3010, 1.023000e+03
  %3014 = fmul fast float %3011, 1.023000e+03
  %3015 = fmul fast float %3012, 1.023000e+03
  %3016 = fadd fast float %3013, 5.000000e-01
  %3017 = fadd fast float %3014, 5.000000e-01
  %3018 = fadd fast float %3015, 5.000000e-01
  %3019 = call float @dx.op.unary.f32(i32 27, float %3016)  ; Round_ni(value)
  %3020 = call float @dx.op.unary.f32(i32 27, float %3017)  ; Round_ni(value)
  %3021 = call float @dx.op.unary.f32(i32 27, float %3018)  ; Round_ni(value)
  %3022 = fsub fast float %2989, %2992
  %3023 = fsub fast float %2990, %2993
  %3024 = fsub fast float %2991, %2994
  %3025 = fmul fast float %3022, 7.500000e-01
  %3026 = fmul fast float %3023, 7.500000e-01
  %3027 = fmul fast float %3024, 7.500000e-01
  %3028 = fadd fast float %2992, 1.250000e-01
  %3029 = fadd fast float %3028, %3025
  %3030 = fadd fast float %3029, %3019
  %3031 = fadd fast float %2993, 1.250000e-01
  %3032 = fadd fast float %3031, %3026
  %3033 = fadd fast float %3032, %3020
  %3034 = fadd fast float %2994, 1.250000e-01
  %3035 = fadd fast float %3034, %3027
  %3036 = fadd fast float %3035, %3021
  %3037 = fmul fast float %3030, %2980
  %3038 = fmul fast float %3033, %2981
  %3039 = fmul fast float %3036, %2982
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3001, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = add i32 %3041, 0
  %3043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3043, %dx.types.Handle %28, float %3037, float %3038, float %3039, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  br label %3046

; <label>:3046                                    ; preds = %2967, %2956
  %3047 = phi float [ %3045, %2967 ], [ -1.000000e+00, %2956 ]
  %3048 = fadd fast float %3047, %2954
  %3049 = call float @dx.op.unary.f32(i32 7, float %3048)  ; Saturate(value)
  br label %3050

; <label>:3050                                    ; preds = %3046, %2944
  %3051 = phi float [ %3049, %3046 ], [ %2954, %2944 ]
  %3052 = fmul fast float %3051, %398
  br label %3053

; <label>:3053                                    ; preds = %3050, %2939
  %3054 = phi float [ %3052, %3050 ], [ %398, %2939 ]
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = and i32 %3056, 256
  %3058 = icmp eq i32 %3057, 0
  br i1 %3058, label %3105, label %3059

; <label>:3059                                    ; preds = %3053
  %3060 = add i32 %35, 436
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = add i32 %3062, 0
  %3064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3064, %dx.types.Handle %71, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3066 = extractvalue %dx.types.ResRet.f32 %3065, 0
  %3067 = add i32 %35, 148
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = shl i32 %3069, 4
  %3071 = and i32 %3070, 32752
  %3072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3071)  ; LegacyF16ToF32(value)
  %3073 = lshr i32 %3069, 7
  %3074 = and i32 %3073, 32752
  %3075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3074)  ; LegacyF16ToF32(value)
  %3076 = fsub fast float 1.000000e+00, %3054
  %3077 = call float @dx.op.binary.f32(i32 35, float %3076, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3078 = bitcast float %3054 to i32
  %3079 = sitofp i32 %3078 to float
  %3080 = fadd fast float %3079, 0xC1CFBF8940000000
  %3081 = fmul fast float %3075, %3080
  %3082 = fadd fast float %3081, 0x41CFBF8940000000
  %3083 = fptosi float %3082 to i32
  %3084 = bitcast i32 %3083 to float
  %3085 = bitcast float %3077 to i32
  %3086 = sitofp i32 %3085 to float
  %3087 = fadd fast float %3086, 0xC1CFBF8940000000
  %3088 = fmul fast float %3087, %3075
  %3089 = fadd fast float %3088, 0x41CFBF8940000000
  %3090 = fptosi float %3089 to i32
  %3091 = bitcast i32 %3090 to float
  %3092 = fmul fast float %3084, %3072
  %3093 = fmul fast float %3091, %3072
  %3094 = fsub fast float %3077, %3092
  %3095 = fadd fast float %3093, %3077
  %3096 = call float @dx.op.unary.f32(i32 7, float %3094)  ; Saturate(value)
  %3097 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  %3098 = fsub fast float %3066, %3096
  %3099 = fsub fast float %3097, %3096
  %3100 = bitcast float %3099 to i32
  %3101 = sub nsw i32 2129859010, %3100
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3102, %3098
  %3104 = call float @dx.op.unary.f32(i32 7, float %3103)  ; Saturate(value)
  br label %3105

; <label>:3105                                    ; preds = %3059, %3053
  %3106 = phi float [ %3104, %3059 ], [ %3054, %3053 ]
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 128
  %3110 = icmp eq i32 %3109, 0
  br i1 %3110, label %3127, label %3111

; <label>:3111                                    ; preds = %3105
  %3112 = add i32 %35, 420
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = add i32 %3114, 0
  %3116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3116, %dx.types.Handle %71, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = and i32 %3120, 524288
  %3122 = icmp ne i32 %3121, 0
  %3123 = fcmp fast ogt float %3118, 0x3FE0101020000000
  %3124 = select i1 %3123, float 1.000000e+00, float 0.000000e+00
  %3125 = select i1 %3122, float %3124, float %3118
  %3126 = fmul fast float %3125, %3106
  br label %3127

; <label>:3127                                    ; preds = %3111, %3105
  %3128 = phi float [ %3126, %3111 ], [ %3106, %3105 ]
  %3129 = fcmp fast ult float %3128, 0x3F70101020000000
  br i1 %3129, label %3759, label %3130

; <label>:3130                                    ; preds = %3127
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = and i32 %3132, 16
  %3134 = icmp eq i32 %3133, 0
  br i1 %3134, label %3333, label %3135

; <label>:3135                                    ; preds = %3130
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = add i32 %35, 372
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %3140, 0
  %3142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3142, %dx.types.Handle %70, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3144 = extractvalue %dx.types.ResRet.f32 %3143, 0
  %3145 = extractvalue %dx.types.ResRet.f32 %3143, 1
  %3146 = extractvalue %dx.types.ResRet.f32 %3143, 2
  %3147 = extractvalue %dx.types.ResRet.f32 %3143, 3
  %3148 = and i32 %3137, 255
  %3149 = uitofp i32 %3148 to float
  %3150 = lshr i32 %3137, 8
  %3151 = and i32 %3150, 255
  %3152 = uitofp i32 %3151 to float
  %3153 = fmul fast float %3147, %3149
  %3154 = fadd fast float %3153, %3152
  %3155 = fmul fast float %3154, 0x3F70101000000000
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 512
  %3159 = icmp eq i32 %3158, 0
  br i1 %3159, label %3168, label %3160

; <label>:3160                                    ; preds = %3135
  %3161 = add i32 %35, 452
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = add i32 %3163, 0
  %3165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3165, %dx.types.Handle %71, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3167 = extractvalue %dx.types.ResRet.f32 %3166, 0
  br label %3168

; <label>:3168                                    ; preds = %3160, %3135
  %3169 = phi float [ %3167, %3160 ], [ 1.000000e+00, %3135 ]
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 33554432
  %3173 = icmp eq i32 %3172, 0
  br i1 %3173, label %3280, label %3174

; <label>:3174                                    ; preds = %3168
  %3175 = add i32 %35, 272
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3175, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = and i32 %3177, 65535
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = lshr i32 %3177, 16
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = add i32 %35, 276
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 65535
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = lshr i32 %3188, 24
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101020000000
  %3192 = and i32 %3188, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = lshr i32 %3188, 8
  %3196 = and i32 %3195, 255
  %3197 = uitofp i32 %3196 to float
  %3198 = fmul fast float %3197, 0x3F70101020000000
  %3199 = lshr i32 %3188, 16
  %3200 = and i32 %3199, 255
  %3201 = uitofp i32 %3200 to float
  %3202 = fmul fast float %3201, 0x3F70101020000000
  %3203 = add i32 %35, 268
  %3204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3203, i32 undef)  ; BufferLoad(srv,index,wot)
  %3205 = extractvalue %dx.types.ResRet.i32 %3204, 0
  %3206 = lshr i32 %3205, 24
  %3207 = uitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = and i32 %3205, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = lshr i32 %3205, 8
  %3213 = and i32 %3212, 255
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = lshr i32 %3205, 16
  %3217 = and i32 %3216, 255
  %3218 = uitofp i32 %3217 to float
  %3219 = fmul fast float %3218, 0x3F70101020000000
  %3220 = bitcast float %3144 to i32
  %3221 = ashr i32 %3220, 1
  %3222 = sub nsw i32 1597463174, %3221
  %3223 = bitcast i32 %3222 to float
  %3224 = fmul fast float %3144, 5.000000e-01
  %3225 = fmul fast float %3223, %3223
  %3226 = fmul fast float %3225, %3224
  %3227 = fsub fast float 1.500000e+00, %3226
  %3228 = fmul fast float %3223, %3144
  %3229 = fmul fast float %3228, %3227
  %3230 = bitcast float %3145 to i32
  %3231 = ashr i32 %3230, 1
  %3232 = sub nsw i32 1597463174, %3231
  %3233 = bitcast i32 %3232 to float
  %3234 = fmul fast float %3145, 5.000000e-01
  %3235 = fmul fast float %3233, %3233
  %3236 = fmul fast float %3235, %3234
  %3237 = fsub fast float 1.500000e+00, %3236
  %3238 = fmul fast float %3233, %3145
  %3239 = fmul fast float %3238, %3237
  %3240 = bitcast float %3146 to i32
  %3241 = ashr i32 %3240, 1
  %3242 = sub nsw i32 1597463174, %3241
  %3243 = bitcast i32 %3242 to float
  %3244 = fmul fast float %3146, 5.000000e-01
  %3245 = fmul fast float %3243, %3243
  %3246 = fmul fast float %3245, %3244
  %3247 = fsub fast float 1.500000e+00, %3246
  %3248 = fmul fast float %3243, %3146
  %3249 = fmul fast float %3248, %3247
  %3250 = fsub fast float %3229, %3211
  %3251 = fsub fast float %3239, %3215
  %3252 = fsub fast float %3249, %3219
  %3253 = fmul fast float %3250, %3179
  %3254 = fmul fast float %3251, %3181
  %3255 = fmul fast float %3252, %3186
  %3256 = fadd fast float %3253, %3194
  %3257 = fadd fast float %3254, %3198
  %3258 = fadd fast float %3255, %3202
  %3259 = call float @dx.op.unary.f32(i32 7, float %3256)  ; Saturate(value)
  %3260 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  %3261 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3262 = fmul fast float %3259, %3259
  %3263 = fmul fast float %3260, %3260
  %3264 = fmul fast float %3261, %3261
  %3265 = fsub fast float %3262, %3144
  %3266 = fsub fast float %3263, %3145
  %3267 = fsub fast float %3264, %3146
  %3268 = fmul fast float %3265, %3169
  %3269 = fmul fast float %3266, %3169
  %3270 = fmul fast float %3267, %3169
  %3271 = fadd fast float %3268, %3144
  %3272 = fadd fast float %3269, %3145
  %3273 = fadd fast float %3270, %3146
  %3274 = fadd fast float %3191, %3155
  %3275 = fsub fast float %3274, %3208
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  %3277 = fsub fast float %3276, %3155
  %3278 = fmul fast float %3277, %3169
  %3279 = fadd fast float %3278, %3155
  br label %3333

; <label>:3280                                    ; preds = %3168
  %3281 = and i32 %3171, 134217728
  %3282 = icmp eq i32 %3281, 0
  br i1 %3282, label %3317, label %3283

; <label>:3283                                    ; preds = %3280
  %3284 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3285 = call float @dx.op.unary.f32(i32 24, float %323)  ; Sqrt(value)
  %3286 = call float @dx.op.unary.f32(i32 24, float %327)  ; Sqrt(value)
  %3287 = fadd fast float %3284, -5.000000e-01
  %3288 = fadd fast float %3285, -5.000000e-01
  %3289 = fadd fast float %3286, -5.000000e-01
  %3290 = fmul fast float %3287, %3169
  %3291 = fmul fast float %3288, %3169
  %3292 = fmul fast float %3289, %3169
  %3293 = fadd fast float %3290, 5.000000e-01
  %3294 = fadd fast float %3291, 5.000000e-01
  %3295 = fadd fast float %3292, 5.000000e-01
  %3296 = call float @dx.op.unary.f32(i32 24, float %3144)  ; Sqrt(value)
  %3297 = call float @dx.op.unary.f32(i32 24, float %3145)  ; Sqrt(value)
  %3298 = call float @dx.op.unary.f32(i32 24, float %3146)  ; Sqrt(value)
  %3299 = fmul fast float %3293, 2.000000e+00
  %3300 = fsub fast float 1.000000e+00, %3299
  %3301 = fmul fast float %3300, %3296
  %3302 = fadd fast float %3301, %3299
  %3303 = fmul fast float %3302, %3296
  %3304 = fmul fast float %3294, 2.000000e+00
  %3305 = fsub fast float 1.000000e+00, %3304
  %3306 = fmul fast float %3305, %3297
  %3307 = fadd fast float %3306, %3304
  %3308 = fmul fast float %3307, %3297
  %3309 = fmul fast float %3295, 2.000000e+00
  %3310 = fsub fast float 1.000000e+00, %3309
  %3311 = fmul fast float %3310, %3298
  %3312 = fadd fast float %3311, %3309
  %3313 = fmul fast float %3312, %3298
  %3314 = fmul fast float %3303, %3303
  %3315 = fmul fast float %3308, %3308
  %3316 = fmul fast float %3313, %3313
  br label %3333

; <label>:3317                                    ; preds = %3280
  %3318 = fmul fast float %319, %319
  %3319 = fmul fast float %323, %323
  %3320 = fmul fast float %327, %327
  %3321 = fadd fast float %3318, -1.000000e+00
  %3322 = fadd fast float %3319, -1.000000e+00
  %3323 = fadd fast float %3320, -1.000000e+00
  %3324 = fmul fast float %3169, %3321
  %3325 = fmul fast float %3169, %3322
  %3326 = fmul fast float %3169, %3323
  %3327 = fadd fast float %3324, 1.000000e+00
  %3328 = fadd fast float %3325, 1.000000e+00
  %3329 = fadd fast float %3326, 1.000000e+00
  %3330 = fmul fast float %3327, %3144
  %3331 = fmul fast float %3328, %3145
  %3332 = fmul fast float %3329, %3146
  br label %3333

; <label>:3333                                    ; preds = %3317, %3283, %3174, %3130
  %3334 = phi float [ %3279, %3174 ], [ %3155, %3283 ], [ %3155, %3317 ], [ 0x3FA23C0BE0000000, %3130 ]
  %3335 = phi float [ %3271, %3174 ], [ %3314, %3283 ], [ %3330, %3317 ], [ 1.000000e+00, %3130 ]
  %3336 = phi float [ %3272, %3174 ], [ %3315, %3283 ], [ %3331, %3317 ], [ 1.000000e+00, %3130 ]
  %3337 = phi float [ %3273, %3174 ], [ %3316, %3283 ], [ %3332, %3317 ], [ 1.000000e+00, %3130 ]
  %3338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.i32 %3338, 1
  %3340 = and i32 %3339, 1
  %3341 = icmp ne i32 %3340, 0
  %3342 = add i32 %35, 356
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 32
  %3346 = icmp ne i32 %3345, 0
  %3347 = and i1 %3341, %3346
  %3348 = select i1 %3347, float 1.000000e+00, float %3335
  %3349 = select i1 %3347, float 0x3FD3333340000000, float %3336
  %3350 = select i1 %3347, float 0x3FD3333340000000, float %3337
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = and i32 %3352, 32
  %3354 = icmp eq i32 %3353, 0
  br i1 %3354, label %3427, label %3355

; <label>:3355                                    ; preds = %3333
  %3356 = add i32 %35, 140
  %3357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3356, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.i32 %3357, 0
  %3359 = add i32 %35, 388
  %3360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3359, i32 undef)  ; BufferLoad(srv,index,wot)
  %3361 = extractvalue %dx.types.ResRet.i32 %3360, 0
  %3362 = add i32 %3361, 0
  %3363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3362, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3364 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3363, %dx.types.Handle %70, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3365 = extractvalue %dx.types.ResRet.f32 %3364, 0
  %3366 = extractvalue %dx.types.ResRet.f32 %3364, 1
  %3367 = extractvalue %dx.types.ResRet.f32 %3364, 2
  %3368 = extractvalue %dx.types.ResRet.f32 %3364, 3
  %3369 = and i32 %3358, 255
  %3370 = uitofp i32 %3369 to float
  %3371 = lshr i32 %3358, 8
  %3372 = and i32 %3371, 255
  %3373 = uitofp i32 %3372 to float
  %3374 = lshr i32 %3358, 16
  %3375 = and i32 %3374, 255
  %3376 = uitofp i32 %3375 to float
  %3377 = fmul fast float %3376, 0x3F70101000000000
  %3378 = fmul fast float %3365, %3370
  %3379 = fadd fast float %3378, %3373
  %3380 = fmul fast float %3379, 0x3F70101000000000
  %3381 = fadd fast float %3366, -5.000000e-01
  %3382 = fadd fast float %3368, -5.000000e-01
  %3383 = fmul fast float %3381, %3377
  %3384 = fmul fast float %3382, %3377
  %3385 = fadd fast float %3383, 5.000000e-01
  %3386 = fadd fast float %3384, 5.000000e-01
  %3387 = fmul fast float %3385, 2.000000e+00
  %3388 = fadd fast float %3387, -1.000000e+00
  %3389 = fmul fast float %3386, 2.000000e+00
  %3390 = fadd fast float %3389, -1.000000e+00
  %3391 = fadd fast float %3388, %3390
  %3392 = fmul fast float %3391, 5.000000e-01
  %3393 = fsub fast float %3388, %3390
  %3394 = fmul fast float %3393, 5.000000e-01
  %3395 = call float @dx.op.unary.f32(i32 6, float %3392)  ; FAbs(value)
  %3396 = fsub fast float 1.000000e+00, %3395
  %3397 = call float @dx.op.unary.f32(i32 6, float %3394)  ; FAbs(value)
  %3398 = fsub fast float %3396, %3397
  %3399 = call float @dx.op.dot3.f32(i32 55, float %3392, float %3394, float %3398, float %3392, float %3394, float %3398)  ; Dot3(ax,ay,az,bx,by,bz)
  %3400 = call float @dx.op.unary.f32(i32 25, float %3399)  ; Rsqrt(value)
  %3401 = fmul fast float %3392, %3400
  %3402 = fmul fast float %3394, %3400
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, 67108864
  %3406 = icmp eq i32 %3405, 0
  br i1 %3406, label %3423, label %3407

; <label>:3407                                    ; preds = %3355
  %3408 = add i32 %35, 328
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = and i32 %3410, 65535
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = and i32 %3414, 65535
  %3416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3415)  ; LegacyF16ToF32(value)
  %3417 = lshr i32 %3410, 16
  %3418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3417)  ; LegacyF16ToF32(value)
  %3419 = fsub fast float %3380, %3418
  %3420 = fmul fast float %3419, %3412
  %3421 = fadd fast float %3420, %3416
  %3422 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  br label %3423

; <label>:3423                                    ; preds = %3407, %3355
  %3424 = phi float [ %3422, %3407 ], [ %3380, %3355 ]
  %3425 = call float @dx.op.dot2.f32(i32 54, float %3401, float %3402, float %2844, float %2845)  ; Dot2(ax,ay,bx,by)
  %3426 = call float @dx.op.dot2.f32(i32 54, float %3401, float %3402, float %2846, float %2847)  ; Dot2(ax,ay,bx,by)
  br label %3427

; <label>:3427                                    ; preds = %3423, %3333
  %3428 = phi float [ %3424, %3423 ], [ 0x3FD6666660000000, %3333 ]
  %3429 = phi float [ %3425, %3423 ], [ 0.000000e+00, %3333 ]
  %3430 = phi float [ %3426, %3423 ], [ 0.000000e+00, %3333 ]
  %3431 = phi float [ %3367, %3423 ], [ 1.000000e+00, %3333 ]
  %3432 = add i32 %35, 208
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = lshr i32 %3434, 22
  %3436 = shl nuw nsw i32 %3435, 5
  %3437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3436)  ; LegacyF16ToF32(value)
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = and i32 %3439, 64
  %3441 = icmp eq i32 %3440, 0
  br i1 %3441, label %3475, label %3442

; <label>:3442                                    ; preds = %3427
  %3443 = add i32 %35, 404
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3443, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = add i32 %3445, 0
  %3447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = and i32 %3449, 131072
  %3451 = icmp eq i32 %3450, 0
  %3452 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3447, %dx.types.Handle %70, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3453 = extractvalue %dx.types.ResRet.f32 %3452, 0
  %3454 = extractvalue %dx.types.ResRet.f32 %3452, 1
  %3455 = extractvalue %dx.types.ResRet.f32 %3452, 2
  %3456 = fmul fast float %3453, %307
  %3457 = fmul fast float %3454, %310
  %3458 = fmul fast float %3455, %313
  br i1 %3451, label %3465, label %3459

; <label>:3459                                    ; preds = %3442
  %3460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.f32 %3460, 0
  %3462 = fmul fast float %3461, %3456
  %3463 = fmul fast float %3461, %3457
  %3464 = fmul fast float %3461, %3458
  br label %3465

; <label>:3465                                    ; preds = %3459, %3442
  %3466 = phi float [ %3462, %3459 ], [ %3456, %3442 ]
  %3467 = phi float [ %3463, %3459 ], [ %3457, %3442 ]
  %3468 = phi float [ %3464, %3459 ], [ %3458, %3442 ]
  %3469 = fmul fast float %3466, %3437
  %3470 = select i1 %175, float %3469, float %3466
  %3471 = call float @dx.op.dot3.f32(i32 55, float %3470, float %3467, float %3468, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3472 = select i1 %175, float 0.000000e+00, float %3466
  %3473 = select i1 %175, float %3471, float %3467
  %3474 = select i1 %175, float 0.000000e+00, float %3468
  br label %3475

; <label>:3475                                    ; preds = %3465, %3427
  %3476 = phi float [ %3472, %3465 ], [ 0.000000e+00, %3427 ]
  %3477 = phi float [ %3473, %3465 ], [ 0.000000e+00, %3427 ]
  %3478 = phi float [ %3474, %3465 ], [ 0.000000e+00, %3427 ]
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, 10240
  %3482 = icmp eq i32 %3481, 0
  br i1 %3482, label %3527, label %3483

; <label>:3483                                    ; preds = %3475
  %3484 = add i32 %35, 468
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3484, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = add i32 %3486, 0
  %3488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3488, %dx.types.Handle %71, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3490 = extractvalue %dx.types.ResRet.f32 %3489, 1
  %3491 = extractvalue %dx.types.ResRet.f32 %3489, 3
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %3493, 1048576
  %3495 = icmp ne i32 %3494, 0
  %3496 = and i32 %3493, 8192
  %3497 = icmp eq i32 %3496, 0
  br i1 %3497, label %3513, label %3498

; <label>:3498                                    ; preds = %3483
  %3499 = extractvalue %dx.types.ResRet.f32 %3489, 2
  %3500 = select i1 %3495, float %3499, float %3490
  %3501 = extractvalue %dx.types.ResRet.f32 %3489, 0
  %3502 = select i1 %3495, float %3501, float %3490
  %3503 = add i32 %35, 144
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = lshr i32 %3505, 16
  %3507 = and i32 %3506, 255
  %3508 = uitofp i32 %3507 to float
  %3509 = fmul fast float %3508, 0x3F80101020000000
  %3510 = fmul fast float %3509, %3502
  %3511 = fmul fast float %3509, %3490
  %3512 = fmul fast float %3509, %3500
  br label %3513

; <label>:3513                                    ; preds = %3498, %3483
  %3514 = phi float [ %3510, %3498 ], [ 0.000000e+00, %3483 ]
  %3515 = phi float [ %3511, %3498 ], [ 0.000000e+00, %3483 ]
  %3516 = phi float [ %3512, %3498 ], [ 0.000000e+00, %3483 ]
  %3517 = and i32 %3493, 2048
  %3518 = icmp eq i32 %3517, 0
  br i1 %3518, label %3527, label %3519

; <label>:3519                                    ; preds = %3513
  %3520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3521 = extractvalue %dx.types.ResRet.i32 %3520, 0
  %3522 = shl i32 %3521, 4
  %3523 = and i32 %3522, 32752
  %3524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3523)  ; LegacyF16ToF32(value)
  %3525 = fmul fast float %3524, %3491
  %3526 = call float @dx.op.binary.f32(i32 35, float %3525, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3527

; <label>:3527                                    ; preds = %3519, %3513, %3475
  %3528 = phi float [ %3514, %3519 ], [ %3514, %3513 ], [ 0.000000e+00, %3475 ]
  %3529 = phi float [ %3515, %3519 ], [ %3515, %3513 ], [ 0.000000e+00, %3475 ]
  %3530 = phi float [ %3516, %3519 ], [ %3516, %3513 ], [ 0.000000e+00, %3475 ]
  %3531 = phi float [ %3526, %3519 ], [ 0x3F70101020000000, %3513 ], [ 0x3F70101020000000, %3475 ]
  %3532 = add i32 %35, 144
  %3533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.i32 %3533, 0
  %3535 = and i32 %3534, 255
  %3536 = uitofp i32 %3535 to float
  %3537 = lshr i32 %3534, 8
  %3538 = and i32 %3537, 255
  %3539 = uitofp i32 %3538 to float
  %3540 = call float @dx.op.dot3.f32(i32 55, float %3348, float %3349, float %3350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3541 = fmul fast float %3539, %3540
  %3542 = fadd fast float %3541, %3536
  %3543 = fmul fast float %3542, 0x3F70101020000000
  %3544 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  br i1 %2832, label %3545, label %3553

; <label>:3545                                    ; preds = %3527
  %3546 = fsub fast float 1.000000e+00, %3128
  %3547 = fmul fast float %3546, %2817
  %3548 = fmul fast float %3546, %2818
  %3549 = fmul fast float %3546, %2819
  %3550 = fmul fast float %3546, %2820
  %3551 = fmul fast float %3546, %2821
  %3552 = fmul fast float %3546, %2822
  br label %3553

; <label>:3553                                    ; preds = %3545, %3527
  %3554 = phi float [ %3547, %3545 ], [ %2817, %3527 ]
  %3555 = phi float [ %3548, %3545 ], [ %2818, %3527 ]
  %3556 = phi float [ %3549, %3545 ], [ %2819, %3527 ]
  %3557 = phi float [ %3550, %3545 ], [ %2820, %3527 ]
  %3558 = phi float [ %3551, %3545 ], [ %2821, %3527 ]
  %3559 = phi float [ %3552, %3545 ], [ %2822, %3527 ]
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 3
  %3563 = icmp eq i32 %3562, 3
  br i1 %3563, label %3642, label %3564

; <label>:3564                                    ; preds = %3553
  %3565 = and i32 %3561, 16
  %3566 = icmp ne i32 %3565, 0
  %3567 = select i1 %3566, float %3128, float 0.000000e+00
  %3568 = icmp eq i32 %3562, 0
  br i1 %3568, label %3569, label %3597

; <label>:3569                                    ; preds = %3564
  %3570 = and i32 %3561, 64
  %3571 = icmp ne i32 %3570, 0
  %3572 = select i1 %3571, float %3128, float 0.000000e+00
  %3573 = fsub fast float %3348, %3554
  %3574 = fsub fast float %3349, %3555
  %3575 = fsub fast float %3350, %3556
  %3576 = fmul fast float %3567, %3573
  %3577 = fmul fast float %3567, %3574
  %3578 = fmul fast float %3567, %3575
  %3579 = fadd fast float %3576, %3554
  %3580 = fadd fast float %3577, %3555
  %3581 = fadd fast float %3578, %3556
  %3582 = fsub fast float %3334, %2826
  %3583 = fmul fast float %3567, %3582
  %3584 = fadd fast float %3583, %2826
  %3585 = fsub fast float %3476, %3557
  %3586 = fsub fast float %3477, %3558
  %3587 = fsub fast float %3478, %3559
  %3588 = fmul fast float %3572, %3585
  %3589 = fmul fast float %3572, %3586
  %3590 = fmul fast float %3572, %3587
  %3591 = fadd fast float %3588, %3557
  %3592 = fadd fast float %3589, %3558
  %3593 = fadd fast float %3590, %3559
  %3594 = fsub fast float %3544, %2830
  %3595 = fmul fast float %3567, %3594
  %3596 = fadd fast float %3595, %2830
  br label %3642

; <label>:3597                                    ; preds = %3564
  %3598 = icmp eq i32 %3562, 1
  br i1 %3598, label %3599, label %3612

; <label>:3599                                    ; preds = %3597
  %3600 = fadd fast float %3348, -1.000000e+00
  %3601 = fadd fast float %3349, -1.000000e+00
  %3602 = fadd fast float %3350, -1.000000e+00
  %3603 = fmul fast float %3567, %3600
  %3604 = fmul fast float %3567, %3601
  %3605 = fmul fast float %3567, %3602
  %3606 = fadd fast float %3603, 1.000000e+00
  %3607 = fadd fast float %3604, 1.000000e+00
  %3608 = fadd fast float %3605, 1.000000e+00
  %3609 = fmul fast float %3606, %3554
  %3610 = fmul fast float %3607, %3555
  %3611 = fmul fast float %3608, %3556
  br label %3642

; <label>:3612                                    ; preds = %3597
  %3613 = icmp eq i32 %3562, 2
  br i1 %3613, label %3614, label %3642

; <label>:3614                                    ; preds = %3612
  %3615 = call float @dx.op.unary.f32(i32 24, float %3348)  ; Sqrt(value)
  %3616 = call float @dx.op.unary.f32(i32 24, float %3349)  ; Sqrt(value)
  %3617 = call float @dx.op.unary.f32(i32 24, float %3350)  ; Sqrt(value)
  %3618 = fadd fast float %3615, -5.000000e-01
  %3619 = fadd fast float %3616, -5.000000e-01
  %3620 = fadd fast float %3617, -5.000000e-01
  %3621 = fmul fast float %3618, %3567
  %3622 = fmul fast float %3619, %3567
  %3623 = fmul fast float %3620, %3567
  %3624 = fadd fast float %3621, 5.000000e-01
  %3625 = fadd fast float %3622, 5.000000e-01
  %3626 = fadd fast float %3623, 5.000000e-01
  %3627 = fmul fast float %3624, 2.000000e+00
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3628, %3554
  %3630 = fadd fast float %3629, %3627
  %3631 = fmul fast float %3630, %3554
  %3632 = fmul fast float %3625, 2.000000e+00
  %3633 = fsub fast float 1.000000e+00, %3632
  %3634 = fmul fast float %3633, %3555
  %3635 = fadd fast float %3634, %3632
  %3636 = fmul fast float %3635, %3555
  %3637 = fmul fast float %3626, 2.000000e+00
  %3638 = fsub fast float 1.000000e+00, %3637
  %3639 = fmul fast float %3638, %3556
  %3640 = fadd fast float %3639, %3637
  %3641 = fmul fast float %3640, %3556
  br label %3642

; <label>:3642                                    ; preds = %3614, %3612, %3599, %3569, %3553
  %3643 = phi float [ %3554, %3553 ], [ %3631, %3614 ], [ %3554, %3612 ], [ %3609, %3599 ], [ %3579, %3569 ]
  %3644 = phi float [ %3555, %3553 ], [ %3636, %3614 ], [ %3555, %3612 ], [ %3610, %3599 ], [ %3580, %3569 ]
  %3645 = phi float [ %3556, %3553 ], [ %3641, %3614 ], [ %3556, %3612 ], [ %3611, %3599 ], [ %3581, %3569 ]
  %3646 = phi float [ %3557, %3553 ], [ %3557, %3614 ], [ %3557, %3612 ], [ %3557, %3599 ], [ %3591, %3569 ]
  %3647 = phi float [ %3558, %3553 ], [ %3558, %3614 ], [ %3558, %3612 ], [ %3558, %3599 ], [ %3592, %3569 ]
  %3648 = phi float [ %3559, %3553 ], [ %3559, %3614 ], [ %3559, %3612 ], [ %3559, %3599 ], [ %3593, %3569 ]
  %3649 = phi float [ %2826, %3553 ], [ %2826, %3614 ], [ %2826, %3612 ], [ %2826, %3599 ], [ %3584, %3569 ]
  %3650 = phi float [ %2830, %3553 ], [ %2830, %3614 ], [ %2830, %3612 ], [ %2830, %3599 ], [ %3596, %3569 ]
  %3651 = and i32 %3561, 12
  %3652 = icmp eq i32 %3651, 12
  br i1 %3652, label %3759, label %3653

; <label>:3653                                    ; preds = %3642
  %3654 = and i32 %3561, 2097184
  %3655 = icmp eq i32 %3654, 2097184
  %3656 = select i1 %3655, float %3128, float 0.000000e+00
  %3657 = and i32 %3561, 4194336
  %3658 = icmp eq i32 %3657, 4194336
  %3659 = select i1 %3658, float %3128, float 0.000000e+00
  %3660 = and i32 %3561, 8388640
  %3661 = icmp eq i32 %3660, 8388640
  %3662 = select i1 %3661, float %3128, float 0.000000e+00
  %3663 = and i32 %3561, 2048
  %3664 = icmp ne i32 %3663, 0
  %3665 = select i1 %3664, float %3128, float 0.000000e+00
  %3666 = and i32 %3561, 8192
  %3667 = icmp ne i32 %3666, 0
  %3668 = select i1 %3667, float %3128, float 0.000000e+00
  %3669 = icmp eq i32 %3651, 0
  br i1 %3669, label %3670, label %3695

; <label>:3670                                    ; preds = %3653
  %3671 = fsub fast float %3429, %2815
  %3672 = fsub fast float %3430, %2816
  %3673 = fmul fast float %3656, %3671
  %3674 = fmul fast float %3656, %3672
  %3675 = fadd fast float %3673, %2815
  %3676 = fadd fast float %3674, %2816
  %3677 = fsub fast float %3431, %2828
  %3678 = fmul fast float %3659, %3677
  %3679 = fadd fast float %3678, %2828
  %3680 = fsub fast float %3428, %2827
  %3681 = fmul fast float %3662, %3680
  %3682 = fadd fast float %3681, %2827
  %3683 = fsub fast float %3531, %2829
  %3684 = fmul fast float %3665, %3683
  %3685 = fadd fast float %3684, %2829
  %3686 = fsub fast float %3528, %2823
  %3687 = fsub fast float %3529, %2824
  %3688 = fsub fast float %3530, %2825
  %3689 = fmul fast float %3668, %3686
  %3690 = fmul fast float %3668, %3687
  %3691 = fmul fast float %3668, %3688
  %3692 = fadd fast float %3689, %2823
  %3693 = fadd fast float %3690, %2824
  %3694 = fadd fast float %3691, %2825
  br label %3759

; <label>:3695                                    ; preds = %3653
  %3696 = icmp eq i32 %3651, 4
  br i1 %3696, label %3697, label %3737

; <label>:3697                                    ; preds = %3695
  %3698 = fmul fast float %3656, %3429
  %3699 = fmul fast float %3656, %3430
  %3700 = fadd fast float %3698, %2815
  %3701 = fadd fast float %3699, %2816
  %3702 = call float @dx.op.binary.f32(i32 36, float %2828, float %3431)  ; FMin(a,b)
  %3703 = fsub fast float %3702, %2828
  %3704 = fmul fast float %3703, %3659
  %3705 = fadd fast float %3704, %2828
  %3706 = fadd fast float %3428, %2827
  %3707 = fmul fast float %3706, 0x3FF337FAE0000000
  %3708 = fmul fast float %2827, %2827
  %3709 = fmul fast float %3428, %3428
  %3710 = fadd fast float %3709, %3708
  %3711 = fmul fast float %3710, 0x3FE5152B00000000
  %3712 = fmul fast float %2827, 0xBFCC1F85E0000000
  %3713 = fmul fast float %3712, %3428
  %3714 = fadd fast float %3713, 0xBFE1363700000000
  %3715 = fadd fast float %3714, %3707
  %3716 = fsub fast float %3715, %3711
  %3717 = fmul fast float %3706, 0x3FBA6F0D00000000
  %3718 = fmul fast float %3710, 0x3FD0432880000000
  %3719 = fmul fast float %2827, 0xBFEF110800000000
  %3720 = fmul fast float %3719, %3428
  %3721 = fadd fast float %3720, 1.000000e+00
  %3722 = fsub fast float %3721, %3717
  %3723 = fadd fast float %3722, %3718
  %3724 = fdiv fast float %3716, %3723
  %3725 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3726 = fsub fast float %3725, %2827
  %3727 = fmul fast float %3726, %3662
  %3728 = fadd fast float %3727, %2827
  %3729 = fmul fast float %3665, %3531
  %3730 = fadd fast float %3729, %2829
  %3731 = fmul fast float %3668, %3528
  %3732 = fmul fast float %3668, %3529
  %3733 = fmul fast float %3668, %3530
  %3734 = fadd fast float %3731, %2823
  %3735 = fadd fast float %3732, %2824
  %3736 = fadd fast float %3733, %2825
  br label %3759

; <label>:3737                                    ; preds = %3695
  %3738 = icmp eq i32 %3651, 8
  br i1 %3738, label %3739, label %3759

; <label>:3739                                    ; preds = %3737
  %3740 = fmul fast float %3656, %3429
  %3741 = fmul fast float %3656, %3430
  %3742 = fadd fast float %3740, %2815
  %3743 = fadd fast float %3741, %2816
  %3744 = call float @dx.op.binary.f32(i32 36, float %2828, float %3431)  ; FMin(a,b)
  %3745 = fsub fast float %3744, %2828
  %3746 = fmul fast float %3745, %3659
  %3747 = fadd fast float %3746, %2828
  %3748 = fsub fast float %3428, %2827
  %3749 = fmul fast float %3662, %3748
  %3750 = fadd fast float %3749, %2827
  %3751 = fmul fast float %3665, %3531
  %3752 = fadd fast float %3751, %2829
  %3753 = fmul fast float %3668, %3528
  %3754 = fmul fast float %3668, %3529
  %3755 = fmul fast float %3668, %3530
  %3756 = fadd fast float %3753, %2823
  %3757 = fadd fast float %3754, %2824
  %3758 = fadd fast float %3755, %2825
  br label %3759

; <label>:3759                                    ; preds = %3739, %3737, %3697, %3670, %3642, %3127, %2831, %2814
  %3760 = phi float [ %2815, %3642 ], [ %2815, %3127 ], [ %2815, %2814 ], [ %2815, %2831 ], [ %3675, %3670 ], [ %3700, %3697 ], [ %2815, %3737 ], [ %3742, %3739 ]
  %3761 = phi float [ %2816, %3642 ], [ %2816, %3127 ], [ %2816, %2814 ], [ %2816, %2831 ], [ %3676, %3670 ], [ %3701, %3697 ], [ %2816, %3737 ], [ %3743, %3739 ]
  %3762 = phi float [ %3643, %3642 ], [ %2817, %3127 ], [ %2817, %2814 ], [ %2817, %2831 ], [ %3643, %3670 ], [ %3643, %3697 ], [ %3643, %3737 ], [ %3643, %3739 ]
  %3763 = phi float [ %3644, %3642 ], [ %2818, %3127 ], [ %2818, %2814 ], [ %2818, %2831 ], [ %3644, %3670 ], [ %3644, %3697 ], [ %3644, %3737 ], [ %3644, %3739 ]
  %3764 = phi float [ %3645, %3642 ], [ %2819, %3127 ], [ %2819, %2814 ], [ %2819, %2831 ], [ %3645, %3670 ], [ %3645, %3697 ], [ %3645, %3737 ], [ %3645, %3739 ]
  %3765 = phi float [ %3646, %3642 ], [ %2820, %3127 ], [ %2820, %2814 ], [ %2820, %2831 ], [ %3646, %3670 ], [ %3646, %3697 ], [ %3646, %3737 ], [ %3646, %3739 ]
  %3766 = phi float [ %3647, %3642 ], [ %2821, %3127 ], [ %2821, %2814 ], [ %2821, %2831 ], [ %3647, %3670 ], [ %3647, %3697 ], [ %3647, %3737 ], [ %3647, %3739 ]
  %3767 = phi float [ %3648, %3642 ], [ %2822, %3127 ], [ %2822, %2814 ], [ %2822, %2831 ], [ %3648, %3670 ], [ %3648, %3697 ], [ %3648, %3737 ], [ %3648, %3739 ]
  %3768 = phi float [ %2823, %3642 ], [ %2823, %3127 ], [ %2823, %2814 ], [ %2823, %2831 ], [ %3692, %3670 ], [ %3734, %3697 ], [ %2823, %3737 ], [ %3756, %3739 ]
  %3769 = phi float [ %2824, %3642 ], [ %2824, %3127 ], [ %2824, %2814 ], [ %2824, %2831 ], [ %3693, %3670 ], [ %3735, %3697 ], [ %2824, %3737 ], [ %3757, %3739 ]
  %3770 = phi float [ %2825, %3642 ], [ %2825, %3127 ], [ %2825, %2814 ], [ %2825, %2831 ], [ %3694, %3670 ], [ %3736, %3697 ], [ %2825, %3737 ], [ %3758, %3739 ]
  %3771 = phi float [ %3649, %3642 ], [ %2826, %3127 ], [ %2826, %2814 ], [ %2826, %2831 ], [ %3649, %3670 ], [ %3649, %3697 ], [ %3649, %3737 ], [ %3649, %3739 ]
  %3772 = phi float [ %2827, %3642 ], [ %2827, %3127 ], [ %2827, %2814 ], [ %2827, %2831 ], [ %3682, %3670 ], [ %3728, %3697 ], [ %2827, %3737 ], [ %3750, %3739 ]
  %3773 = phi float [ %2828, %3642 ], [ %2828, %3127 ], [ %2828, %2814 ], [ %2828, %2831 ], [ %3679, %3670 ], [ %3705, %3697 ], [ %2828, %3737 ], [ %3747, %3739 ]
  %3774 = phi float [ %2829, %3642 ], [ %2829, %3127 ], [ %2829, %2814 ], [ %2829, %2831 ], [ %3685, %3670 ], [ %3730, %3697 ], [ %2829, %3737 ], [ %3752, %3739 ]
  %3775 = phi float [ %3650, %3642 ], [ %2830, %3127 ], [ %2830, %2814 ], [ %2830, %2831 ], [ %3650, %3670 ], [ %3650, %3697 ], [ %3650, %3737 ], [ %3650, %3739 ]
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3778 = call float @dx.op.dot2.f32(i32 54, float %3760, float %3761, float %3760, float %3761)  ; Dot2(ax,ay,bx,by)
  %3779 = fmul fast float %3778, 0x3FE3333340000000
  %3780 = fsub fast float 1.000000e+00, %3779
  %3781 = call float @dx.op.dot3.f32(i32 55, float %3760, float %3761, float %3780, float %3760, float %3761, float %3780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3782 = call float @dx.op.unary.f32(i32 25, float %3781)  ; Rsqrt(value)
  %3783 = fmul fast float %3782, %3760
  %3784 = fmul fast float %3782, %3761
  %3785 = fmul fast float %3780, %3782
  %3786 = fmul fast float %3785, %83
  %3787 = fmul fast float %3785, %85
  %3788 = fmul fast float %3785, %87
  %3789 = fmul fast float %3783, %55
  %3790 = fmul fast float %3783, %56
  %3791 = fmul fast float %3783, %57
  %3792 = fadd fast float %3786, %3789
  %3793 = fadd fast float %3787, %3790
  %3794 = fadd fast float %3788, %3791
  %3795 = fmul fast float %97, %3784
  %3796 = fmul fast float %98, %3784
  %3797 = fmul fast float %99, %3784
  %3798 = fadd fast float %3792, %3795
  %3799 = fadd fast float %3793, %3796
  %3800 = fadd fast float %3794, %3797
  %3801 = call float @dx.op.dot3.f32(i32 55, float %3798, float %3799, float %3800, float %3798, float %3799, float %3800)  ; Dot3(ax,ay,az,bx,by,bz)
  %3802 = call float @dx.op.unary.f32(i32 25, float %3801)  ; Rsqrt(value)
  %3803 = fmul fast float %3798, %3802
  %3804 = fmul fast float %3799, %3802
  %3805 = fmul fast float %3800, %3802
  %3806 = call float @dx.op.unary.f32(i32 83, float %133)  ; DerivCoarseX(value)
  %3807 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3808 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3809 = call float @dx.op.unary.f32(i32 84, float %133)  ; DerivCoarseY(value)
  %3810 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3811 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3812 = fadd fast float %3806, %133
  %3813 = fadd fast float %3807, %134
  %3814 = fadd fast float %3808, %135
  %3815 = fadd fast float %3809, %133
  %3816 = fadd fast float %3810, %134
  %3817 = fadd fast float %3811, %135
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.CBufRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.CBufRet.f32 %3818, 2
  %3822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3823 = extractvalue %dx.types.CBufRet.f32 %3822, 2
  %3824 = extractvalue %dx.types.CBufRet.f32 %3822, 3
  %3825 = fmul fast float %3819, %74
  %3826 = fmul fast float %3825, %3823
  %3827 = fmul fast float %3820, %75
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
  %3840 = fmul fast float %3838, %69
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
  br i1 %3856, label %4332, label %3857

; <label>:3857                                    ; preds = %3759
  %3858 = and i32 %3853, 1023
  br label %3859

; <label>:3859                                    ; preds = %3988, %3857
  %3860 = phi i32 [ %3938, %3988 ], [ 0, %3857 ]
  %3861 = phi float [ %3989, %3988 ], [ 0.000000e+00, %3857 ]
  %3862 = phi float [ %3990, %3988 ], [ %3777, %3857 ]
  %3863 = phi float [ %3991, %3988 ], [ %3775, %3857 ]
  %3864 = phi float [ %3992, %3988 ], [ 0.000000e+00, %3857 ]
  %3865 = phi float [ %3993, %3988 ], [ 0.000000e+00, %3857 ]
  %3866 = phi float [ %3994, %3988 ], [ %3768, %3857 ]
  %3867 = phi float [ %3995, %3988 ], [ %3769, %3857 ]
  %3868 = phi float [ %3996, %3988 ], [ %3770, %3857 ]
  %3869 = phi float [ %3997, %3988 ], [ %3765, %3857 ]
  %3870 = phi float [ %3998, %3988 ], [ %3766, %3857 ]
  %3871 = phi float [ %3999, %3988 ], [ %3767, %3857 ]
  %3872 = phi float [ %4000, %3988 ], [ %3803, %3857 ]
  %3873 = phi float [ %4001, %3988 ], [ %3804, %3857 ]
  %3874 = phi float [ %4002, %3988 ], [ %3805, %3857 ]
  %3875 = phi float [ %4003, %3988 ], [ %3773, %3857 ]
  %3876 = phi float [ %4004, %3988 ], [ %3772, %3857 ]
  %3877 = phi float [ %4005, %3988 ], [ 0.000000e+00, %3857 ]
  %3878 = phi float [ %4006, %3988 ], [ %3771, %3857 ]
  %3879 = phi float [ %4007, %3988 ], [ %3762, %3857 ]
  %3880 = phi float [ %4008, %3988 ], [ %3763, %3857 ]
  %3881 = phi float [ %4009, %3988 ], [ %3764, %3857 ]
  %3882 = add nuw nsw i32 %3860, %3855
  %3883 = shl i32 %3882, 2
  %3884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3885 = extractvalue %dx.types.ResRet.i32 %3884, 0
  %3886 = shl i32 %3885, 8
  %3887 = or i32 %3886, 48
  %3888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3887, i32 undef)  ; BufferLoad(srv,index,wot)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3888, 2
  %3892 = extractvalue %dx.types.ResRet.f32 %3888, 3
  %3893 = or i32 %3886, 64
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3893, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = extractvalue %dx.types.ResRet.i32 %3894, 1
  %3897 = or i32 %3886, 80
  %3898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3897, i32 undef)  ; BufferLoad(srv,index,wot)
  %3899 = extractvalue %dx.types.ResRet.f32 %3898, 2
  %3900 = extractvalue %dx.types.ResRet.f32 %3898, 3
  %3901 = or i32 %3886, 96
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = or i32 %3886, 112
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3910 = or i32 %3886, 128
  %3911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3910, i32 undef)  ; BufferLoad(srv,index,wot)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = extractvalue %dx.types.ResRet.f32 %3911, 3
  %3916 = or i32 %3886, 144
  %3917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3916, i32 undef)  ; BufferLoad(srv,index,wot)
  %3918 = extractvalue %dx.types.ResRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3917, 2
  %3921 = extractvalue %dx.types.ResRet.f32 %3917, 3
  %3922 = or i32 %3886, 160
  %3923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.ResRet.f32 %3923, 1
  %3926 = extractvalue %dx.types.ResRet.f32 %3923, 2
  %3927 = extractvalue %dx.types.ResRet.f32 %3923, 3
  %3928 = or i32 %3886, 192
  %3929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.i32 %3929, 0
  %3931 = or i32 %3886, 208
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = or i32 %3886, 248
  %3935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3934, i32 undef)  ; BufferLoad(srv,index,wot)
  %3936 = extractvalue %dx.types.ResRet.f32 %3935, 0
  %3937 = extractvalue %dx.types.ResRet.f32 %3935, 1
  %3938 = add nuw nsw i32 %3860, 1
  %3939 = bitcast float %3892 to i32
  %3940 = and i32 %3939, 512
  %3941 = icmp eq i32 %3940, 0
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = extractvalue %dx.types.ResRet.f32 %3942, 3
  %3947 = call float @dx.op.dot4.f32(i32 56, float %3943, float %3944, float %3945, float %3946, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3948 = or i32 %3886, 16
  %3949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3954 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3955 = or i32 %3886, 32
  %3956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3955, i32 undef)  ; BufferLoad(srv,index,wot)
  %3957 = extractvalue %dx.types.ResRet.f32 %3956, 0
  %3958 = extractvalue %dx.types.ResRet.f32 %3956, 1
  %3959 = extractvalue %dx.types.ResRet.f32 %3956, 2
  %3960 = extractvalue %dx.types.ResRet.f32 %3956, 3
  %3961 = call float @dx.op.dot4.f32(i32 56, float %3957, float %3958, float %3959, float %3960, float %133, float %134, float %135, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3962 = call float @dx.op.unary.f32(i32 27, float %3947)  ; Round_ni(value)
  %3963 = call float @dx.op.unary.f32(i32 6, float %3962)  ; FAbs(value)
  %3964 = call float @dx.op.unary.f32(i32 27, float %3954)  ; Round_ni(value)
  %3965 = call float @dx.op.unary.f32(i32 6, float %3964)  ; FAbs(value)
  %3966 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3967 = call float @dx.op.unary.f32(i32 27, float %3966)  ; Round_ni(value)
  %3968 = fadd fast float %3965, %3963
  %3969 = fadd fast float %3968, %3967
  %3970 = fcmp fast oeq float %3969, 0.000000e+00
  %3971 = call float @dx.op.dot4.f32(i32 56, float %3943, float %3944, float %3945, float %3946, float %3812, float %3813, float %3814, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3972 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %3812, float %3813, float %3814, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3973 = call float @dx.op.dot4.f32(i32 56, float %3943, float %3944, float %3945, float %3946, float %3815, float %3816, float %3817, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3974 = call float @dx.op.dot4.f32(i32 56, float %3950, float %3951, float %3952, float %3953, float %3815, float %3816, float %3817, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3975 = fsub fast float %3971, %3947
  %3976 = fsub fast float %3973, %3947
  %3977 = fsub fast float %3972, %3954
  %3978 = fsub fast float %3974, %3954
  %3979 = call float @dx.op.dot3.f32(i32 55, float %3889, float %3890, float %3891, float %83, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3980, 2
  %3982 = fadd fast float %3981, %3979
  %3983 = call float @dx.op.unary.f32(i32 7, float %3982)  ; Saturate(value)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3980, 0
  %3985 = fcmp fast ogt float %3983, %3984
  %3986 = and i1 %3970, %3985
  %3987 = and i1 %3941, %3986
  br i1 %3987, label %4011, label %3988

; <label>:3988                                    ; preds = %4318, %4092, %4011, %3859
  %3989 = phi float [ %3861, %4011 ], [ %4095, %4092 ], [ %4095, %4318 ], [ %3861, %3859 ]
  %3990 = phi float [ %3862, %4011 ], [ %3862, %4092 ], [ %4294, %4318 ], [ %3862, %3859 ]
  %3991 = phi float [ %3863, %4011 ], [ %3863, %4092 ], [ %4292, %4318 ], [ %3863, %3859 ]
  %3992 = phi float [ %3864, %4011 ], [ %3864, %4092 ], [ %4219, %4318 ], [ %3864, %3859 ]
  %3993 = phi float [ %3865, %4011 ], [ %3865, %4092 ], [ %4217, %4318 ], [ %3865, %3859 ]
  %3994 = phi float [ %3866, %4011 ], [ %3866, %4092 ], [ %4262, %4318 ], [ %3866, %3859 ]
  %3995 = phi float [ %3867, %4011 ], [ %3867, %4092 ], [ %4263, %4318 ], [ %3867, %3859 ]
  %3996 = phi float [ %3868, %4011 ], [ %3868, %4092 ], [ %4264, %4318 ], [ %3868, %3859 ]
  %3997 = phi float [ %3869, %4011 ], [ %3869, %4092 ], [ %4328, %4318 ], [ %3869, %3859 ]
  %3998 = phi float [ %3870, %4011 ], [ %3870, %4092 ], [ %4329, %4318 ], [ %3870, %3859 ]
  %3999 = phi float [ %3871, %4011 ], [ %3871, %4092 ], [ %4330, %4318 ], [ %3871, %3859 ]
  %4000 = phi float [ %3872, %4011 ], [ %3872, %4092 ], [ %4198, %4318 ], [ %3872, %3859 ]
  %4001 = phi float [ %3873, %4011 ], [ %3873, %4092 ], [ %4199, %4318 ], [ %3873, %3859 ]
  %4002 = phi float [ %3874, %4011 ], [ %3874, %4092 ], [ %4200, %4318 ], [ %3874, %3859 ]
  %4003 = phi float [ %3875, %4011 ], [ %3875, %4092 ], [ %4272, %4318 ], [ %3875, %3859 ]
  %4004 = phi float [ %3876, %4011 ], [ %3876, %4092 ], [ %4269, %4318 ], [ %3876, %3859 ]
  %4005 = phi float [ %3877, %4011 ], [ %3877, %4092 ], [ %4266, %4318 ], [ %3877, %3859 ]
  %4006 = phi float [ %3878, %4011 ], [ %3878, %4092 ], [ %4215, %4318 ], [ %3878, %3859 ]
  %4007 = phi float [ %3879, %4011 ], [ %3879, %4092 ], [ %4210, %4318 ], [ %3879, %3859 ]
  %4008 = phi float [ %3880, %4011 ], [ %3880, %4092 ], [ %4211, %4318 ], [ %3880, %3859 ]
  %4009 = phi float [ %3881, %4011 ], [ %3881, %4092 ], [ %4212, %4318 ], [ %3881, %3859 ]
  %4010 = icmp eq i32 %3938, %3858
  br i1 %4010, label %4331, label %3859

; <label>:4011                                    ; preds = %3859
  %4012 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %4013 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %3898, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %3898, 0
  %4017 = extractvalue %dx.types.ResRet.i32 %3894, 3
  %4018 = extractvalue %dx.types.ResRet.i32 %3894, 2
  %4019 = add i32 %4017, 0
  %4020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4019, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4022 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4020, %dx.types.Handle %4021, float %3947, float %3954, float undef, float undef, i32 0, i32 0, i32 undef, float %3975, float %3977, float undef, float %3976, float %3978, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4023 = extractvalue %dx.types.ResRet.f32 %4022, 0
  %4024 = fmul fast float %4023, %4016
  %4025 = fadd fast float %4024, %4015
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = fmul fast float %3947, %3903
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3954, float %4027)  ; FMad(a,b,c)
  %4029 = fadd fast float %4028, %4014
  %4030 = fmul fast float %3947, %3905
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3954, float %4030)  ; FMad(a,b,c)
  %4032 = fadd fast float %4031, %4013
  %4033 = fmul fast float %3975, %3903
  %4034 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3977, float %4033)  ; FMad(a,b,c)
  %4035 = fmul fast float %3975, %3905
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3977, float %4035)  ; FMad(a,b,c)
  %4037 = fmul fast float %3976, %3903
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3978, float %4037)  ; FMad(a,b,c)
  %4039 = fmul fast float %3976, %3905
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3978, float %4039)  ; FMad(a,b,c)
  %4041 = add i32 %4018, 0
  %4042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4041, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4043 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4042, %dx.types.Handle %4021, float %4029, float %4032, float undef, float undef, i32 0, i32 0, i32 undef, float %4034, float %4036, float undef, float %4038, float %4040, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4044 = extractvalue %dx.types.ResRet.f32 %4043, 0
  %4045 = and i32 %3939, 1024
  %4046 = icmp ne i32 %4045, 0
  %4047 = fcmp fast ogt float %4044, 0x3FE0101020000000
  %4048 = uitofp i1 %4047 to float
  %4049 = select i1 %4046, float %4048, float %4044
  %4050 = and i32 %3939, 8192
  %4051 = icmp ne i32 %4050, 0
  %4052 = select i1 %4051, float %4012, float 1.000000e+00
  %4053 = fmul fast float %3947, 2.000000e+00
  %4054 = fadd fast float %4053, -1.000000e+00
  %4055 = call float @dx.op.unary.f32(i32 6, float %4054)  ; FAbs(value)
  %4056 = fmul fast float %4055, %3936
  %4057 = fsub fast float %4056, %3936
  %4058 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4059 = fmul fast float %3954, 2.000000e+00
  %4060 = fadd fast float %4059, -1.000000e+00
  %4061 = call float @dx.op.unary.f32(i32 6, float %4060)  ; FAbs(value)
  %4062 = fmul fast float %4061, %3937
  %4063 = fsub fast float %4062, %3937
  %4064 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4065 = fmul fast float %3966, %3899
  %4066 = fsub fast float %4065, %3899
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = fmul fast float %4026, %4052
  %4069 = fmul fast float %4068, %4023
  %4070 = fmul fast float %4069, %4058
  %4071 = fmul fast float %4070, %4049
  %4072 = fmul fast float %4071, %4064
  %4073 = fmul fast float %4072, %4067
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4077 = fsub fast float %3983, %4076
  %4078 = fmul fast float %4077, %4075
  %4079 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4080 = fmul fast float %4073, %3900
  %4081 = fadd fast float %4073, %3900
  %4082 = fmul fast float %4081, %3909
  %4083 = fsub fast float %4082, %3909
  %4084 = call float @dx.op.unary.f32(i32 7, float %4083)  ; Saturate(value)
  %4085 = and i32 %3939, 128
  %4086 = icmp ne i32 %4085, 0
  %4087 = select i1 %4086, float %4084, float %4080
  %4088 = fmul fast float %4087, %4079
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = fcmp fast ugt float %4088, %4090
  br i1 %4091, label %4092, label %3988

; <label>:4092                                    ; preds = %4011
  %4093 = select i1 %4051, float %4088, float 0.000000e+00
  %4094 = fadd fast float %4093, %3861
  %4095 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  br i1 %4051, label %3988, label %4096

; <label>:4096                                    ; preds = %4092
  %4097 = and i32 %3939, 4
  %4098 = and i32 %3939, 8
  %4099 = add i32 %3895, 0
  %4100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4099, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4102 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4100, %dx.types.Handle %4101, float %4029, float %4032, float undef, float undef, i32 0, i32 0, i32 undef, float %4034, float %4036, float undef, float %4038, float %4040, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4103 = extractvalue %dx.types.ResRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.ResRet.f32 %4102, 1
  %4105 = extractvalue %dx.types.ResRet.f32 %4102, 2
  %4106 = extractvalue %dx.types.ResRet.f32 %4102, 3
  %4107 = bitcast float %3921 to i32
  %4108 = and i32 %4107, 255
  %4109 = uitofp i32 %4108 to float
  %4110 = lshr i32 %4107, 8
  %4111 = and i32 %4110, 255
  %4112 = uitofp i32 %4111 to float
  %4113 = fmul fast float %4106, %4109
  %4114 = fadd fast float %4113, %4112
  %4115 = fmul fast float %4114, 0x3F70101000000000
  %4116 = add i32 %3896, 0
  %4117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4116, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4117, %dx.types.Handle %4101, float %4029, float %4032, float undef, float undef, i32 0, i32 0, i32 undef, float %4034, float %4036, float undef, float %4038, float %4040, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = extractvalue %dx.types.ResRet.f32 %4118, 3
  %4123 = bitcast float %3915 to i32
  %4124 = and i32 %4123, 255
  %4125 = uitofp i32 %4124 to float
  %4126 = lshr i32 %4123, 8
  %4127 = and i32 %4126, 255
  %4128 = uitofp i32 %4127 to float
  %4129 = lshr i32 %4123, 16
  %4130 = and i32 %4129, 255
  %4131 = uitofp i32 %4130 to float
  %4132 = fmul fast float %4131, 0x3F70101000000000
  %4133 = fmul fast float %4119, %4125
  %4134 = fadd fast float %4133, %4128
  %4135 = fmul fast float %4134, 0x3F70101000000000
  %4136 = fadd fast float %4120, -5.000000e-01
  %4137 = fadd fast float %4122, -5.000000e-01
  %4138 = fmul fast float %4136, %4132
  %4139 = fmul fast float %4137, %4132
  %4140 = fadd fast float %4138, 5.000000e-01
  %4141 = fadd fast float %4139, 5.000000e-01
  %4142 = fmul fast float %4103, %3924
  %4143 = fmul fast float %4104, %3925
  %4144 = fmul fast float %4105, %3926
  %4145 = fmul fast float %4140, 2.000000e+00
  %4146 = fadd fast float %4145, -1.000000e+00
  %4147 = fmul fast float %4141, 2.000000e+00
  %4148 = fadd fast float %4147, -1.000000e+00
  %4149 = fadd fast float %4146, %4148
  %4150 = fmul fast float %4149, 5.000000e-01
  %4151 = fsub fast float %4146, %4148
  %4152 = fmul fast float %4151, 5.000000e-01
  %4153 = call float @dx.op.unary.f32(i32 6, float %4150)  ; FAbs(value)
  %4154 = fsub fast float 1.000000e+00, %4153
  %4155 = call float @dx.op.unary.f32(i32 6, float %4152)  ; FAbs(value)
  %4156 = fsub fast float %4154, %4155
  %4157 = call float @dx.op.dot3.f32(i32 55, float %4150, float %4152, float %4156, float %4150, float %4152, float %4156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = call float @dx.op.unary.f32(i32 25, float %4157)  ; Rsqrt(value)
  %4159 = fmul fast float %4150, %4158
  %4160 = fmul fast float %4152, %4158
  %4161 = fmul fast float %4158, %4156
  %4162 = fmul fast float %4161, %3889
  %4163 = fmul fast float %4161, %3890
  %4164 = fmul fast float %4161, %3891
  %4165 = fmul fast float %4159, %3912
  %4166 = fmul fast float %4159, %3913
  %4167 = fmul fast float %4159, %3914
  %4168 = fadd fast float %4165, %4162
  %4169 = fadd fast float %4166, %4163
  %4170 = fadd fast float %4167, %4164
  %4171 = fmul fast float %4160, %3918
  %4172 = fmul fast float %4160, %3919
  %4173 = fmul fast float %4160, %3920
  %4174 = fadd fast float %4168, %4171
  %4175 = fadd fast float %4169, %4172
  %4176 = fadd fast float %4170, %4173
  %4177 = call float @dx.op.dot3.f32(i32 55, float %4174, float %4175, float %4176, float %4174, float %4175, float %4176)  ; Dot3(ax,ay,az,bx,by,bz)
  %4178 = call float @dx.op.unary.f32(i32 25, float %4177)  ; Rsqrt(value)
  %4179 = fmul fast float %4174, %4178
  %4180 = fmul fast float %4175, %4178
  %4181 = fmul fast float %4176, %4178
  %4182 = icmp ne i32 %4098, 0
  %4183 = select i1 %4182, float 1.000000e+00, float 0.000000e+00
  %4184 = fmul fast float %4088, %4183
  %4185 = and i32 %3939, 1
  %4186 = icmp eq i32 %4185, 0
  br i1 %4186, label %4187, label %4191

; <label>:4187                                    ; preds = %4096
  %4188 = fsub fast float %4179, %3872
  %4189 = fsub fast float %4180, %3873
  %4190 = fsub fast float %4181, %3874
  br label %4191

; <label>:4191                                    ; preds = %4187, %4096
  %4192 = phi float [ %4188, %4187 ], [ %4179, %4096 ]
  %4193 = phi float [ %4189, %4187 ], [ %4180, %4096 ]
  %4194 = phi float [ %4190, %4187 ], [ %4181, %4096 ]
  %4195 = fmul float %4194, %4184
  %4196 = fmul float %4193, %4184
  %4197 = fmul float %4192, %4184
  %4198 = fadd fast float %4197, %3872
  %4199 = fadd fast float %4196, %3873
  %4200 = fadd fast float %4195, %3874
  %4201 = icmp ne i32 %4097, 0
  %4202 = select i1 %4201, float 1.000000e+00, float 0.000000e+00
  %4203 = fmul fast float %4088, %4202
  %4204 = fsub fast float %4142, %3879
  %4205 = fsub fast float %4143, %3880
  %4206 = fsub fast float %4144, %3881
  %4207 = fmul fast float %4204, %4203
  %4208 = fmul fast float %4205, %4203
  %4209 = fmul fast float %4206, %4203
  %4210 = fadd fast float %4207, %3879
  %4211 = fadd fast float %4208, %3880
  %4212 = fadd fast float %4209, %3881
  %4213 = fsub fast float %4115, %3878
  %4214 = fmul fast float %4213, %4203
  %4215 = fadd fast float %4214, %3878
  %4216 = fmul fast float %4203, %3865
  %4217 = fsub fast float %3865, %4216
  %4218 = fmul fast float %4203, %3864
  %4219 = fsub fast float %3864, %4218
  %4220 = bitcast float %3933 to i32
  %4221 = lshr i32 %4220, 16
  %4222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4221)  ; LegacyF16ToF32(value)
  %4223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.i32 %4223, 0
  %4225 = and i32 %4224, 1
  %4226 = icmp eq i32 %4225, 0
  br i1 %4226, label %4227, label %4252

; <label>:4227                                    ; preds = %4191
  %4228 = fadd fast float %4115, 0xBFB99999A0000000
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = fmul fast float %4229, 0x3FF1C71C80000000
  %4231 = fsub fast float 1.000000e+00, %4230
  %4232 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4233 = fmul fast float %4232, %4142
  %4234 = fmul fast float %4232, %4143
  %4235 = fmul fast float %4232, %4144
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4239 = call float @dx.op.binary.f32(i32 35, float %4237, float %4238)  ; FMax(a,b)
  %4240 = call float @dx.op.binary.f32(i32 35, float %4236, float %4239)  ; FMax(a,b)
  %4241 = fcmp fast ogt float %4240, 0.000000e+00
  %4242 = bitcast float %4240 to i32
  %4243 = sub nsw i32 2129859010, %4242
  %4244 = bitcast i32 %4243 to float
  %4245 = select i1 %4241, float %4244, float 0.000000e+00
  %4246 = fmul fast float %4236, %4222
  %4247 = fmul fast float %4237, %4222
  %4248 = fmul fast float %4238, %4222
  %4249 = fmul fast float %4246, %4245
  %4250 = fmul fast float %4247, %4245
  %4251 = fmul fast float %4248, %4245
  br label %4252

; <label>:4252                                    ; preds = %4227, %4191
  %4253 = phi float [ %4222, %4191 ], [ %4249, %4227 ]
  %4254 = phi float [ %4222, %4191 ], [ %4250, %4227 ]
  %4255 = phi float [ %4222, %4191 ], [ %4251, %4227 ]
  %4256 = fsub fast float %4253, %3866
  %4257 = fsub fast float %4254, %3867
  %4258 = fsub fast float %4255, %3868
  %4259 = fmul fast float %4256, %4203
  %4260 = fmul fast float %4257, %4203
  %4261 = fmul fast float %4258, %4203
  %4262 = fadd fast float %4259, %3866
  %4263 = fadd fast float %4260, %3867
  %4264 = fadd fast float %4261, %3868
  %4265 = fadd fast float %4088, %3877
  %4266 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4267 = fsub fast float %4135, %3876
  %4268 = fmul fast float %4267, %4184
  %4269 = fadd fast float %4268, %3876
  %4270 = fsub fast float %4121, %3875
  %4271 = fmul fast float %4270, %4184
  %4272 = fadd fast float %4271, %3875
  %4273 = call float @dx.op.dot3.f32(i32 55, float %4142, float %4143, float %4144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.CBufRet.f32 %4274, 1
  %4277 = fmul fast float %4276, %4273
  %4278 = fadd fast float %4277, %4275
  %4279 = call float @dx.op.unary.f32(i32 7, float %4278)  ; Saturate(value)
  %4280 = bitcast float %3927 to i32
  %4281 = and i32 %4280, 65535
  %4282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4281)  ; LegacyF16ToF32(value)
  %4283 = lshr i32 %4280, 16
  %4284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4283)  ; LegacyF16ToF32(value)
  %4285 = fcmp fast oge float %4282, 0.000000e+00
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 0
  %4288 = select i1 %4285, float %4282, float %4287
  %4289 = fadd fast float %4288, %4284
  %4290 = fsub fast float %4279, %3863
  %4291 = fmul fast float %4290, %4088
  %4292 = fadd fast float %4291, %3863
  %4293 = fmul fast float %4289, %4088
  %4294 = call float @dx.op.binary.f32(i32 35, float %3862, float %4293)  ; FMax(a,b)
  %4295 = and i32 %3939, 16
  %4296 = icmp eq i32 %4295, 0
  br i1 %4296, label %4318, label %4297

; <label>:4297                                    ; preds = %4252
  %4298 = add i32 %3930, 0
  %4299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4298, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4299, %dx.types.Handle %4101, float %4029, float %4032, float undef, float undef, i32 0, i32 0, i32 undef, float %4034, float %4036, float undef, float %4038, float %4040, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4300, 2
  %4304 = and i32 %4220, 65535
  %4305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4304)  ; LegacyF16ToF32(value)
  %4306 = fmul fast float %4301, %3924
  %4307 = fmul fast float %4302, %3925
  %4308 = fmul fast float %4303, %3926
  %4309 = and i32 %3939, 16384
  %4310 = icmp ne i32 %4309, 0
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 0
  %4313 = select i1 %4310, float %4312, float 1.000000e+00
  %4314 = fmul fast float %4313, %4305
  %4315 = fmul fast float %4306, %4314
  %4316 = fmul fast float %4307, %4314
  %4317 = fmul fast float %4308, %4314
  br label %4318

; <label>:4318                                    ; preds = %4297, %4252
  %4319 = phi float [ %4315, %4297 ], [ 0.000000e+00, %4252 ]
  %4320 = phi float [ %4316, %4297 ], [ 0.000000e+00, %4252 ]
  %4321 = phi float [ %4317, %4297 ], [ 0.000000e+00, %4252 ]
  %4322 = fsub fast float %4319, %3869
  %4323 = fsub fast float %4320, %3870
  %4324 = fsub fast float %4321, %3871
  %4325 = fmul fast float %4322, %4088
  %4326 = fmul fast float %4323, %4088
  %4327 = fmul fast float %4324, %4088
  %4328 = fadd fast float %4325, %3869
  %4329 = fadd fast float %4326, %3870
  %4330 = fadd fast float %4327, %3871
  br label %3988

; <label>:4331                                    ; preds = %3988
  br label %4332

; <label>:4332                                    ; preds = %4331, %3759
  %4333 = phi float [ 0.000000e+00, %3759 ], [ %3989, %4331 ]
  %4334 = phi float [ %3777, %3759 ], [ %3990, %4331 ]
  %4335 = phi float [ %3775, %3759 ], [ %3991, %4331 ]
  %4336 = phi float [ 0.000000e+00, %3759 ], [ %3992, %4331 ]
  %4337 = phi float [ 0.000000e+00, %3759 ], [ %3993, %4331 ]
  %4338 = phi float [ %3768, %3759 ], [ %3994, %4331 ]
  %4339 = phi float [ %3769, %3759 ], [ %3995, %4331 ]
  %4340 = phi float [ %3770, %3759 ], [ %3996, %4331 ]
  %4341 = phi float [ %3765, %3759 ], [ %3997, %4331 ]
  %4342 = phi float [ %3766, %3759 ], [ %3998, %4331 ]
  %4343 = phi float [ %3767, %3759 ], [ %3999, %4331 ]
  %4344 = phi float [ %3803, %3759 ], [ %4000, %4331 ]
  %4345 = phi float [ %3804, %3759 ], [ %4001, %4331 ]
  %4346 = phi float [ %3805, %3759 ], [ %4002, %4331 ]
  %4347 = phi float [ %3773, %3759 ], [ %4003, %4331 ]
  %4348 = phi float [ %3772, %3759 ], [ %4004, %4331 ]
  %4349 = phi float [ 0.000000e+00, %3759 ], [ %4005, %4331 ]
  %4350 = phi float [ %3771, %3759 ], [ %4006, %4331 ]
  %4351 = phi float [ %3762, %3759 ], [ %4007, %4331 ]
  %4352 = phi float [ %3763, %3759 ], [ %4008, %4331 ]
  %4353 = phi float [ %3764, %3759 ], [ %4009, %4331 ]
  %4354 = call float @dx.op.dot3.f32(i32 55, float %4344, float %4345, float %4346, float %4344, float %4345, float %4346)  ; Dot3(ax,ay,az,bx,by,bz)
  %4355 = call float @dx.op.unary.f32(i32 25, float %4354)  ; Rsqrt(value)
  %4356 = fmul fast float %4355, %4344
  %4357 = fmul fast float %4355, %4345
  %4358 = fmul fast float %4355, %4346
  %4359 = fadd fast float %4349, %936
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = call float @dx.op.dot3.f32(i32 55, float %4356, float %4357, float %4358, float %4356, float %4357, float %4358)  ; Dot3(ax,ay,az,bx,by,bz)
  %4362 = call float @dx.op.unary.f32(i32 25, float %4361)  ; Rsqrt(value)
  %4363 = fmul fast float %4362, %4356
  %4364 = fmul fast float %4362, %4357
  %4365 = fmul fast float %4362, %4358
  %4366 = fadd fast float %4350, 0xBFB99999A0000000
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = fmul fast float %4367, 0x3FF1C71C80000000
  %4369 = call float @dx.op.binary.f32(i32 36, float %4350, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4370 = fsub fast float 1.000000e+00, %4368
  %4371 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4372 = fmul fast float %4371, %4351
  %4373 = fmul fast float %4371, %4352
  %4374 = fmul fast float %4371, %4353
  %4375 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4377 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4378 = fmul fast float %4368, %4351
  %4379 = fmul fast float %4368, %4352
  %4380 = fmul fast float %4368, %4353
  %4381 = fadd fast float %4378, %4369
  %4382 = fadd fast float %4379, %4369
  %4383 = fadd fast float %4380, %4369
  %4384 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4385 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4386 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4387 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4389 = extractvalue %dx.types.ResRet.i32 %4388, 0
  %4390 = and i32 %4389, 1
  %4391 = icmp eq i32 %4390, 0
  br i1 %4391, label %4406, label %4392

; <label>:4392                                    ; preds = %4332
  %4393 = call float @dx.op.binary.f32(i32 35, float %4376, float %4377)  ; FMax(a,b)
  %4394 = call float @dx.op.binary.f32(i32 35, float %4375, float %4393)  ; FMax(a,b)
  %4395 = fcmp fast ogt float %4394, 0.000000e+00
  %4396 = bitcast float %4394 to i32
  %4397 = sub nsw i32 2129859010, %4396
  %4398 = bitcast i32 %4397 to float
  %4399 = select i1 %4395, float %4398, float 0.000000e+00
  %4400 = fmul fast float %4375, %4338
  %4401 = fmul fast float %4376, %4339
  %4402 = fmul fast float %4377, %4340
  %4403 = fmul fast float %4400, %4399
  %4404 = fmul fast float %4401, %4399
  %4405 = fmul fast float %4402, %4399
  br label %4406

; <label>:4406                                    ; preds = %4392, %4332
  %4407 = phi float [ %4403, %4392 ], [ %4338, %4332 ]
  %4408 = phi float [ %4404, %4392 ], [ %4339, %4332 ]
  %4409 = phi float [ %4405, %4392 ], [ %4340, %4332 ]
  %4410 = fadd fast float %4375, 0xBFD51EB860000000
  %4411 = fadd fast float %4376, 0xBFD51EB860000000
  %4412 = fadd fast float %4377, 0xBFD51EB860000000
  %4413 = fmul fast float %4410, %4410
  %4414 = fmul fast float %4411, %4411
  %4415 = fmul fast float %4412, %4412
  %4416 = fmul fast float %4413, %4413
  %4417 = fmul fast float %4416, 1.000000e+02
  %4418 = fmul fast float %4414, %4414
  %4419 = fmul fast float %4418, 1.000000e+02
  %4420 = fmul fast float %4415, %4415
  %4421 = fmul fast float %4420, 1.000000e+02
  %4422 = fadd fast float %4417, 3.500000e+00
  %4423 = fadd fast float %4419, 3.500000e+00
  %4424 = fadd fast float %4421, 3.500000e+00
  %4425 = call float @dx.op.binary.f32(i32 35, float %4407, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4426 = call float @dx.op.binary.f32(i32 35, float %4408, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4427 = call float @dx.op.binary.f32(i32 35, float %4409, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4428 = fdiv fast float %4422, %4425
  %4429 = fdiv fast float %4423, %4426
  %4430 = fdiv fast float %4424, %4427
  %4431 = fmul fast float %3774, 0xBFF7154760000000
  %4432 = fmul fast float %4431, %4428
  %4433 = call float @dx.op.unary.f32(i32 21, float %4432)  ; Exp(value)
  %4434 = fmul fast float %4433, 2.500000e-01
  %4435 = fmul fast float %3774, 0xBFDEC709E0000000
  %4436 = fmul fast float %4435, %4428
  %4437 = call float @dx.op.unary.f32(i32 21, float %4436)  ; Exp(value)
  %4438 = fmul fast float %4437, 7.500000e-01
  %4439 = fmul fast float %4431, %4429
  %4440 = call float @dx.op.unary.f32(i32 21, float %4439)  ; Exp(value)
  %4441 = fmul fast float %4440, 2.500000e-01
  %4442 = fmul fast float %4435, %4429
  %4443 = call float @dx.op.unary.f32(i32 21, float %4442)  ; Exp(value)
  %4444 = fmul fast float %4443, 7.500000e-01
  %4445 = fmul fast float %4431, %4430
  %4446 = call float @dx.op.unary.f32(i32 21, float %4445)  ; Exp(value)
  %4447 = fmul fast float %4446, 2.500000e-01
  %4448 = fmul fast float %4435, %4430
  %4449 = call float @dx.op.unary.f32(i32 21, float %4448)  ; Exp(value)
  %4450 = fmul fast float %4449, 7.500000e-01
  %4451 = fadd fast float %4434, %4438
  %4452 = fadd fast float %4441, %4444
  %4453 = fadd fast float %4447, %4450
  %4454 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.i32 %4454, 3
  %4456 = and i32 %4455, 8
  %4457 = icmp ne i32 %4456, 0
  %4458 = call float @dx.op.binary.f32(i32 35, float %4375, float %4351)  ; FMax(a,b)
  %4459 = call float @dx.op.binary.f32(i32 35, float %4376, float %4351)  ; FMax(a,b)
  %4460 = call float @dx.op.binary.f32(i32 35, float %4377, float %4351)  ; FMax(a,b)
  %4461 = call float @dx.op.dot3.f32(i32 55, float %4375, float %4376, float %4377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4462 = select i1 %175, float %4351, float %4375
  %4463 = select i1 %175, float %4461, float %4376
  %4464 = select i1 %175, float 1.000000e+00, float %4377
  %4465 = select i1 %4457, float %4458, float %4462
  %4466 = select i1 %4457, float %4459, float %4463
  %4467 = select i1 %4457, float %4460, float %4464
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 0
  %4470 = extractvalue %dx.types.CBufRet.f32 %4468, 1
  %4471 = extractvalue %dx.types.CBufRet.f32 %4468, 2
  %4472 = fadd fast float %4469, %133
  %4473 = fadd fast float %4470, %134
  %4474 = fadd fast float %4471, %135
  %4475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.f32 %4475, 0
  %4477 = extractvalue %dx.types.CBufRet.f32 %4475, 1
  %4478 = fsub fast float %4472, %4476
  %4479 = fsub fast float %4473, %4477
  %4480 = fmul fast float %4478, %4478
  %4481 = fmul fast float %4479, %4479
  %4482 = fadd fast float %4480, %4481
  %4483 = call float @dx.op.unary.f32(i32 24, float %4482)  ; Sqrt(value)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4475, 2
  %4485 = fcmp fast olt float %4483, %4484
  br i1 %4485, label %4486, label %4553

; <label>:4486                                    ; preds = %4406
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.CBufRet.f32 %4487, 1
  %4494 = extractvalue %dx.types.CBufRet.f32 %4489, 1
  %4495 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4496 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4497 = extractvalue %dx.types.CBufRet.f32 %4489, 3
  %4498 = extractvalue %dx.types.CBufRet.f32 %4491, 3
  %4499 = fadd fast float %4496, %4472
  %4500 = fadd fast float %4497, %4473
  %4501 = fadd fast float %4498, %4474
  %4502 = fmul fast float %4499, %4488
  %4503 = call float @dx.op.tertiary.f32(i32 46, float %4500, float %4490, float %4502)  ; FMad(a,b,c)
  %4504 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4492, float %4503)  ; FMad(a,b,c)
  %4505 = fmul fast float %4499, %4493
  %4506 = call float @dx.op.tertiary.f32(i32 46, float %4500, float %4494, float %4505)  ; FMad(a,b,c)
  %4507 = call float @dx.op.tertiary.f32(i32 46, float %4501, float %4495, float %4506)  ; FMad(a,b,c)
  %4508 = fsub fast float %4504, %4496
  %4509 = fsub fast float %4507, %4497
  %4510 = fsub fast float %4508, %4476
  %4511 = fadd fast float %4510, %4484
  %4512 = fsub fast float %4509, %4477
  %4513 = fadd fast float %4512, %4484
  %4514 = extractvalue %dx.types.CBufRet.f32 %4475, 3
  %4515 = fmul fast float %4511, %4514
  %4516 = fmul fast float %4513, %4514
  %4517 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4519 = fsub fast float 1.000000e+00, %4517
  %4520 = fsub fast float 1.000000e+00, %4518
  %4521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4519, float %4520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4522 = extractvalue %dx.types.ResRet.f32 %4521, 0
  %4523 = fcmp fast ugt float %4522, 0.000000e+00
  br i1 %4523, label %4524, label %4827

; <label>:4524                                    ; preds = %4486
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 2
  %4527 = fmul fast float %4526, %4522
  %4528 = extractvalue %dx.types.CBufRet.f32 %4525, 3
  %4529 = fadd fast float %4528, %4527
  %4530 = extractvalue %dx.types.CBufRet.f32 %4491, 2
  %4531 = fadd fast float %4529, %4498
  %4532 = fmul fast float %4504, %4492
  %4533 = call float @dx.op.tertiary.f32(i32 46, float %4507, float %4495, float %4532)  ; FMad(a,b,c)
  %4534 = call float @dx.op.tertiary.f32(i32 46, float %4531, float %4530, float %4533)  ; FMad(a,b,c)
  %4535 = fsub fast float %4534, %4498
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 2
  %4538 = fsub fast float %4535, %4537
  %4539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4519, float %4520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.ResRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.ResRet.f32 %4539, 2
  %4543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4519, float %4520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = fadd fast float %4544, %4540
  %4548 = fmul fast float %4547, 0x3F847AE140000000
  %4549 = fadd fast float %4545, %4541
  %4550 = fmul fast float %4549, 0x3F847AE140000000
  %4551 = fadd fast float %4546, %4542
  %4552 = fmul fast float %4551, 0x3F847AE140000000
  br label %4827

; <label>:4553                                    ; preds = %4406
  %4554 = and i32 %151, 1
  %4555 = icmp eq i32 %4554, 0
  br i1 %4555, label %4827, label %4556

; <label>:4556                                    ; preds = %4553
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 0
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.CBufRet.f32 %4557, 1
  %4564 = extractvalue %dx.types.CBufRet.f32 %4559, 1
  %4565 = extractvalue %dx.types.CBufRet.f32 %4561, 1
  %4566 = extractvalue %dx.types.CBufRet.f32 %4557, 3
  %4567 = extractvalue %dx.types.CBufRet.f32 %4559, 3
  %4568 = extractvalue %dx.types.CBufRet.f32 %4561, 3
  %4569 = fadd fast float %4566, %4472
  %4570 = fadd fast float %4567, %4473
  %4571 = fadd fast float %4568, %4474
  %4572 = fmul fast float %4569, %4558
  %4573 = call float @dx.op.tertiary.f32(i32 46, float %4570, float %4560, float %4572)  ; FMad(a,b,c)
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4562, float %4573)  ; FMad(a,b,c)
  %4575 = fmul fast float %4569, %4563
  %4576 = call float @dx.op.tertiary.f32(i32 46, float %4570, float %4564, float %4575)  ; FMad(a,b,c)
  %4577 = call float @dx.op.tertiary.f32(i32 46, float %4571, float %4565, float %4576)  ; FMad(a,b,c)
  %4578 = fsub fast float %4574, %4566
  %4579 = fsub fast float %4577, %4567
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.CBufRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.CBufRet.f32 %4580, 2
  %4584 = extractvalue %dx.types.CBufRet.f32 %4580, 3
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 3
  %4587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.i32 %4587, 0
  %4589 = extractvalue %dx.types.CBufRet.i32 %4587, 1
  %4590 = udiv i32 %4589, %4588
  %4591 = fsub fast float %4578, %4581
  %4592 = fsub fast float %4579, %4582
  %4593 = call float @dx.op.binary.f32(i32 35, float %4591, float 0.000000e+00)  ; FMax(a,b)
  %4594 = call float @dx.op.binary.f32(i32 35, float %4592, float 0.000000e+00)  ; FMax(a,b)
  %4595 = call float @dx.op.binary.f32(i32 36, float %4593, float %4583)  ; FMin(a,b)
  %4596 = call float @dx.op.binary.f32(i32 36, float %4594, float %4584)  ; FMin(a,b)
  %4597 = add i32 %4588, -1
  %4598 = add i32 %4590, -1
  %4599 = fmul fast float %4595, %4586
  %4600 = fmul fast float %4596, %4586
  %4601 = fptoui float %4599 to i32
  %4602 = fptoui float %4600 to i32
  %4603 = call i32 @dx.op.binary.i32(i32 40, i32 %4601, i32 %4597)  ; UMin(a,b)
  %4604 = call i32 @dx.op.binary.i32(i32 40, i32 %4602, i32 %4598)  ; UMin(a,b)
  %4605 = mul i32 %4604, %4588
  %4606 = add i32 %4605, %4603
  %4607 = shl i32 %4606, 2
  %4608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4607, i32 undef)  ; BufferLoad(srv,index,wot)
  %4609 = extractvalue %dx.types.ResRet.i32 %4608, 0
  %4610 = icmp eq i32 %4609, -1
  br i1 %4610, label %4827, label %4611

; <label>:4611                                    ; preds = %4556
  %4612 = mul i32 %4609, 148
  %4613 = add i32 %4612, 4
  %4614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4613, i32 undef)  ; BufferLoad(srv,index,wot)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = add i32 %4612, 8
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = add i32 %4612, 36
  %4620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4619, i32 undef)  ; BufferLoad(srv,index,wot)
  %4621 = extractvalue %dx.types.ResRet.f32 %4620, 0
  %4622 = add i32 %4612, 60
  %4623 = add i32 %4612, 92
  %4624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.i32 %4624, 0
  %4626 = add i32 %4612, 116
  %4627 = fsub fast float %4578, %4615
  %4628 = fsub fast float %4579, %4618
  %4629 = fmul fast float %4586, %4627
  %4630 = fmul fast float %4586, %4628
  %4631 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4632 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4633 = fsub fast float 1.000000e+00, %4632
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 2
  %4636 = call float @dx.op.unary.f32(i32 83, float %4631)  ; DerivCoarseX(value)
  %4637 = call float @dx.op.unary.f32(i32 83, float %4633)  ; DerivCoarseX(value)
  %4638 = call float @dx.op.unary.f32(i32 84, float %4631)  ; DerivCoarseY(value)
  %4639 = call float @dx.op.unary.f32(i32 84, float %4633)  ; DerivCoarseY(value)
  %4640 = fmul fast float %4636, %4635
  %4641 = fmul fast float %4637, %4635
  %4642 = fmul fast float %4638, %4635
  %4643 = fmul fast float %4639, %4635
  %4644 = call float @dx.op.dot2.f32(i32 54, float %4642, float %4643, float %4642, float %4643)  ; Dot2(ax,ay,bx,by)
  %4645 = call float @dx.op.dot2.f32(i32 54, float %4640, float %4641, float %4640, float %4641)  ; Dot2(ax,ay,bx,by)
  %4646 = call float @dx.op.binary.f32(i32 35, float %4645, float %4644)  ; FMax(a,b)
  %4647 = call float @dx.op.unary.f32(i32 23, float %4646)  ; Log(value)
  %4648 = fmul fast float %4647, 5.000000e-01
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 1
  %4651 = fadd fast float %4650, %4648
  %4652 = call float @dx.op.binary.f32(i32 35, float %4651, float 0.000000e+00)  ; FMax(a,b)
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 3
  %4655 = fadd fast float %4654, %4652
  %4656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4657 = extractvalue %dx.types.CBufRet.f32 %4656, 3
  %4658 = fadd fast float %4655, %4657
  %4659 = add i32 %4625, 0
  %4660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4659, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4661 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4660, i32 0)  ; GetDimensions(handle,mipLevel)
  %4662 = extractvalue %dx.types.Dimensions %4661, 0
  %4663 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4662)  ; FirstbitLo(value)
  %4664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4665 = extractvalue %dx.types.CBufRet.i32 %4664, 1
  %4666 = sub nsw i32 %4665, %4663
  %4667 = sitofp i32 %4666 to float
  %4668 = fsub fast float %4658, %4667
  %4669 = call float @dx.op.binary.f32(i32 35, float %4668, float 0.000000e+00)  ; FMax(a,b)
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4660, %dx.types.Handle %27, float %4631, float %4633, float %4621, float undef, i32 0, i32 0, i32 undef, float %4669)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = fcmp ule float %4671, 0x3FE0101020000000
  %4673 = extractvalue %dx.types.CBufRet.i32 %4664, 0
  %4674 = and i32 %4673, 128
  %4675 = icmp ne i32 %4674, 0
  %4676 = and i1 %4672, %4675
  br i1 %4676, label %4827, label %4677

; <label>:4677                                    ; preds = %4611
  %4678 = add i32 %4612, 20
  %4679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4678, i32 undef)  ; BufferLoad(srv,index,wot)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = add i32 %4612, 24
  %4682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4681, i32 undef)  ; BufferLoad(srv,index,wot)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = add i32 %4612, 40
  %4685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4684, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4687 = add i32 %4612, 96
  %4688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4687, i32 undef)  ; BufferLoad(srv,index,wot)
  %4689 = extractvalue %dx.types.ResRet.i32 %4688, 0
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 2
  %4692 = fmul fast float %4691, %4631
  %4693 = fmul fast float %4691, %4633
  %4694 = extractvalue %dx.types.CBufRet.f32 %4690, 3
  %4695 = fadd fast float %4692, %4694
  %4696 = fadd fast float %4693, %4694
  %4697 = add i32 %4689, 0
  %4698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4697, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4699 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4698, i32 0)  ; GetDimensions(handle,mipLevel)
  %4700 = extractvalue %dx.types.Dimensions %4699, 0
  %4701 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4700)  ; FirstbitLo(value)
  %4702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.i32 %4702, 1
  %4704 = sub nsw i32 %4703, %4701
  %4705 = sitofp i32 %4704 to float
  %4706 = fsub fast float %4655, %4705
  %4707 = call float @dx.op.binary.f32(i32 35, float %4706, float 0.000000e+00)  ; FMax(a,b)
  %4708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4698, %dx.types.Handle %27, float %4695, float %4696, float %4686, float undef, i32 0, i32 0, i32 undef, float %4707)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = fmul fast float %4709, %4680
  %4711 = fadd fast float %4710, %4683
  %4712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.CBufRet.f32 %4712, 1
  %4715 = extractvalue %dx.types.CBufRet.f32 %4712, 2
  %4716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4717 = extractvalue %dx.types.CBufRet.f32 %4716, 3
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 3
  %4720 = extractvalue %dx.types.CBufRet.f32 %4712, 3
  %4721 = fadd fast float %4717, %4578
  %4722 = fadd fast float %4719, %4579
  %4723 = fadd fast float %4711, %4720
  %4724 = fmul fast float %4721, %4713
  %4725 = call float @dx.op.tertiary.f32(i32 46, float %4722, float %4714, float %4724)  ; FMad(a,b,c)
  %4726 = call float @dx.op.tertiary.f32(i32 46, float %4723, float %4715, float %4725)  ; FMad(a,b,c)
  %4727 = fsub fast float %4726, %4720
  %4728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4728, 2
  %4730 = fsub fast float %4727, %4729
  %4731 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.i32 %4731, 0
  %4733 = call i32 @dx.op.binary.i32(i32 40, i32 %4609, i32 %4732)  ; UMin(a,b)
  %4734 = mul i32 %4733, 36
  %4735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4734, i32 undef)  ; BufferLoad(srv,index,wot)
  %4736 = extractvalue %dx.types.ResRet.i32 %4735, 0
  %4737 = add i32 %4734, 4
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = fmul fast float %4739, %4631
  %4741 = fmul fast float %4739, %4633
  %4742 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4743 = fadd fast float %4740, %4742
  %4744 = fadd fast float %4741, %4742
  %4745 = icmp eq i32 %4736, 0
  br i1 %4745, label %4814, label %4746

; <label>:4746                                    ; preds = %4677
  br label %4747

; <label>:4747                                    ; preds = %4804, %4746
  %4748 = phi float [ %4805, %4804 ], [ 0.000000e+00, %4746 ]
  %4749 = phi float [ %4806, %4804 ], [ 0.000000e+00, %4746 ]
  %4750 = phi float [ %4807, %4804 ], [ 0.000000e+00, %4746 ]
  %4751 = phi float [ %4808, %4804 ], [ 0.000000e+00, %4746 ]
  %4752 = phi float [ %4809, %4804 ], [ 0.000000e+00, %4746 ]
  %4753 = phi float [ %4810, %4804 ], [ 0.000000e+00, %4746 ]
  %4754 = phi i32 [ %4811, %4804 ], [ 0, %4746 ]
  %4755 = shl i32 %4754, 2
  %4756 = add i32 %4622, %4755
  %4757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4756, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = add i32 %4626, %4755
  %4760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4759, i32 undef)  ; BufferLoad(srv,index,wot)
  %4761 = extractvalue %dx.types.ResRet.i32 %4760, 0
  %4762 = add i32 %4761, 0
  %4763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4762, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4764 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4763, i32 0)  ; GetDimensions(handle,mipLevel)
  %4765 = extractvalue %dx.types.Dimensions %4764, 0
  %4766 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4765)  ; FirstbitLo(value)
  %4767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.i32 %4767, 1
  %4769 = sub nsw i32 %4768, %4766
  %4770 = sitofp i32 %4769 to float
  %4771 = fsub fast float %4655, %4770
  %4772 = call float @dx.op.binary.f32(i32 35, float %4771, float 0.000000e+00)  ; FMax(a,b)
  %4773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4763, %dx.types.Handle %27, float %4743, float %4744, float %4758, float undef, i32 0, i32 0, i32 undef, float %4772)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4774 = extractvalue %dx.types.ResRet.f32 %4773, 0
  %4775 = fcmp fast ogt float %4774, 0.000000e+00
  br i1 %4775, label %4776, label %4804

; <label>:4776                                    ; preds = %4747
  %4777 = add i32 %4737, %4755
  %4778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.i32 %4778, 0
  %4780 = and i32 %4779, 32767
  %4781 = mul nuw nsw i32 %4780, 928
  %4782 = add nuw nsw i32 %4781, 48
  %4783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4782, i32 undef)  ; BufferLoad(srv,index,wot)
  %4784 = extractvalue %dx.types.ResRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.ResRet.f32 %4783, 1
  %4786 = extractvalue %dx.types.ResRet.f32 %4783, 2
  %4787 = add nuw nsw i32 %4781, 60
  %4788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4787, i32 undef)  ; BufferLoad(srv,index,wot)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.ResRet.f32 %4788, 1
  %4791 = extractvalue %dx.types.ResRet.f32 %4788, 2
  %4792 = fmul fast float %4784, %4774
  %4793 = fmul fast float %4785, %4774
  %4794 = fmul fast float %4786, %4774
  %4795 = fadd fast float %4792, %4748
  %4796 = fadd fast float %4793, %4749
  %4797 = fadd fast float %4794, %4750
  %4798 = fmul fast float %4789, %4774
  %4799 = fmul fast float %4790, %4774
  %4800 = fmul fast float %4791, %4774
  %4801 = fadd fast float %4798, %4751
  %4802 = fadd fast float %4799, %4752
  %4803 = fadd fast float %4800, %4753
  br label %4804

; <label>:4804                                    ; preds = %4776, %4747
  %4805 = phi float [ %4795, %4776 ], [ %4748, %4747 ]
  %4806 = phi float [ %4796, %4776 ], [ %4749, %4747 ]
  %4807 = phi float [ %4797, %4776 ], [ %4750, %4747 ]
  %4808 = phi float [ %4801, %4776 ], [ %4751, %4747 ]
  %4809 = phi float [ %4802, %4776 ], [ %4752, %4747 ]
  %4810 = phi float [ %4803, %4776 ], [ %4753, %4747 ]
  %4811 = add nuw i32 %4754, 1
  %4812 = icmp eq i32 %4811, %4736
  br i1 %4812, label %4813, label %4747

; <label>:4813                                    ; preds = %4804
  br label %4814

; <label>:4814                                    ; preds = %4813, %4677
  %4815 = phi float [ 0.000000e+00, %4677 ], [ %4805, %4813 ]
  %4816 = phi float [ 0.000000e+00, %4677 ], [ %4806, %4813 ]
  %4817 = phi float [ 0.000000e+00, %4677 ], [ %4807, %4813 ]
  %4818 = phi float [ 0.000000e+00, %4677 ], [ %4808, %4813 ]
  %4819 = phi float [ 0.000000e+00, %4677 ], [ %4809, %4813 ]
  %4820 = phi float [ 0.000000e+00, %4677 ], [ %4810, %4813 ]
  %4821 = fadd fast float %4818, %4815
  %4822 = fmul fast float %4821, 0x3F847AE140000000
  %4823 = fadd fast float %4819, %4816
  %4824 = fmul fast float %4823, 0x3F847AE140000000
  %4825 = fadd fast float %4820, %4817
  %4826 = fmul fast float %4825, 0x3F847AE140000000
  br label %4827

; <label>:4827                                    ; preds = %4814, %4611, %4556, %4553, %4524, %4486
  %4828 = phi float [ %4538, %4524 ], [ -1.310720e+05, %4486 ], [ %4730, %4814 ], [ -1.310720e+05, %4556 ], [ -1.310720e+05, %4611 ], [ -1.310720e+05, %4553 ]
  %4829 = phi float [ %4548, %4524 ], [ 0.000000e+00, %4486 ], [ %4822, %4814 ], [ 0.000000e+00, %4556 ], [ 0.000000e+00, %4611 ], [ 0.000000e+00, %4553 ]
  %4830 = phi float [ %4550, %4524 ], [ 0.000000e+00, %4486 ], [ %4824, %4814 ], [ 0.000000e+00, %4556 ], [ 0.000000e+00, %4611 ], [ 0.000000e+00, %4553 ]
  %4831 = phi float [ %4552, %4524 ], [ 0.000000e+00, %4486 ], [ %4826, %4814 ], [ 0.000000e+00, %4556 ], [ 0.000000e+00, %4611 ], [ 0.000000e+00, %4553 ]
  %4832 = phi i1 [ true, %4524 ], [ false, %4486 ], [ true, %4814 ], [ false, %4556 ], [ false, %4611 ], [ false, %4553 ]
  %4833 = and i32 %151, 3
  %4834 = icmp eq i32 %4833, 1
  %4835 = select i1 %4834, float 1.000000e+00, float 0.000000e+00
  %4836 = fsub fast float %4828, %135
  %4837 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4838 = select i1 %4832, float %4837, float 1.000000e+00
  %4839 = fmul fast float %4838, %4835
  %4840 = icmp eq i32 %4833, 3
  %4841 = select i1 %4840, float 1.000000e+00, float %4839
  %4842 = call float @dx.op.binary.f32(i32 35, float %4333, float %4841)  ; FMax(a,b)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = fcmp fast une float %4843, 0.000000e+00
  %4845 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float %133, float %134, float %135)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 25, float %4845)  ; Rsqrt(value)
  br i1 %4844, label %4854, label %4847

; <label>:4847                                    ; preds = %4827
  %4848 = fmul fast float %4846, %133
  %4849 = fmul fast float %4846, %134
  %4850 = fmul fast float %4846, %135
  %4851 = fsub fast float -0.000000e+00, %4848
  %4852 = fsub fast float -0.000000e+00, %4849
  %4853 = fsub fast float -0.000000e+00, %4850
  br label %5022

; <label>:4854                                    ; preds = %4827
  %4855 = fmul fast float %133, %4846
  %4856 = fsub fast float -0.000000e+00, %4855
  %4857 = fmul fast float %134, %4846
  %4858 = fsub fast float -0.000000e+00, %4857
  %4859 = fmul fast float %135, %4846
  %4860 = fsub fast float -0.000000e+00, %4859
  %4861 = call float @dx.op.dot3.f32(i32 55, float %4856, float %4858, float %4860, float %83, float %85, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = fmul fast float %4843, 2.500000e+00
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = fmul fast float %4843, 0x4013FFFFE0000000
  %4865 = fadd fast float %4864, 0xBFFFFFFFE0000000
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = fmul fast float %4843, 0x4004000020000000
  %4868 = fadd fast float %4867, 0xBFF8000040000000
  %4869 = call float @dx.op.unary.f32(i32 7, float %4868)  ; Saturate(value)
  %4870 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4871 = fmul fast float %4366, 1.000000e+01
  %4872 = call float @dx.op.unary.f32(i32 7, float %4871)  ; Saturate(value)
  %4873 = fmul fast float %4872, 2.000000e+00
  %4874 = fsub fast float 3.000000e+00, %4873
  %4875 = fmul fast float %4872, %4872
  %4876 = fmul fast float %4875, %4874
  %4877 = fsub fast float 1.000000e+00, %4876
  %4878 = fsub fast float 0x3FE3333340000000, %4387
  %4879 = fmul fast float %4878, 0x400AAAAAA0000000
  %4880 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4881 = fmul fast float %4877, %4880
  %4882 = fmul fast float %4465, 0x3FEA2B8620000000
  %4883 = fmul fast float %4466, 0x3FEA2B8620000000
  %4884 = fmul fast float %4467, 0x3FEA2B8620000000
  %4885 = fadd fast float %4882, 0x3FC81DFBA0000000
  %4886 = fmul fast float %4885, %4465
  %4887 = fadd fast float %4886, 0x3F910E6020000000
  %4888 = fadd fast float %4883, 0x3FC81DFBA0000000
  %4889 = fmul fast float %4888, %4466
  %4890 = fadd fast float %4889, 0x3F910E6020000000
  %4891 = fadd fast float %4884, 0x3FC81DFBA0000000
  %4892 = fmul fast float %4891, %4467
  %4893 = fadd fast float %4892, 0x3F910E6020000000
  %4894 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4895 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = fsub fast float %4894, %4465
  %4898 = fsub fast float %4895, %4466
  %4899 = fsub fast float %4896, %4467
  %4900 = fmul fast float %4897, %4870
  %4901 = fmul fast float %4900, %4881
  %4902 = fmul fast float %4898, %4870
  %4903 = fmul fast float %4902, %4881
  %4904 = fmul fast float %4899, %4870
  %4905 = fmul fast float %4904, %4881
  %4906 = fadd fast float %4901, %4465
  %4907 = fadd fast float %4903, %4466
  %4908 = fadd fast float %4905, %4467
  %4909 = fmul fast float %4347, %4347
  %4910 = fmul fast float %4909, %4909
  %4911 = fadd fast float %4866, 1.000000e+00
  %4912 = fsub fast float %4911, %4881
  %4913 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4914 = call float @dx.op.dot3.f32(i32 55, float %83, float %85, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fsub fast float 1.000000e+00, %4910
  %4917 = call float @dx.op.binary.f32(i32 36, float %4913, float %4916)  ; FMin(a,b)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4869)  ; Saturate(value)
  %4919 = call float @dx.op.binary.f32(i32 35, float %4917, float %4918)  ; FMax(a,b)
  %4920 = fadd fast float %4915, 0xBFE4CCCCC0000000
  %4921 = fmul fast float %4920, 0x4006DB6DA0000000
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4922, 2.000000e+00
  %4924 = fsub fast float 3.000000e+00, %4923
  %4925 = bitcast float %4384 to i32
  %4926 = ashr i32 %4925, 1
  %4927 = add nsw i32 %4926, 532487669
  %4928 = bitcast i32 %4927 to float
  %4929 = fsub fast float 1.000000e+00, %4928
  %4930 = bitcast float %4929 to i32
  %4931 = sub nsw i32 2129859010, %4930
  %4932 = bitcast i32 %4931 to float
  %4933 = fmul fast float %4932, 2.000000e+00
  %4934 = bitcast float %4385 to i32
  %4935 = ashr i32 %4934, 1
  %4936 = add nsw i32 %4935, 532487669
  %4937 = bitcast i32 %4936 to float
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = bitcast float %4938 to i32
  %4940 = sub nsw i32 2129859010, %4939
  %4941 = bitcast i32 %4940 to float
  %4942 = fmul fast float %4941, 2.000000e+00
  %4943 = bitcast float %4386 to i32
  %4944 = ashr i32 %4943, 1
  %4945 = add nsw i32 %4944, 532487669
  %4946 = bitcast i32 %4945 to float
  %4947 = fsub fast float 1.000000e+00, %4946
  %4948 = bitcast float %4947 to i32
  %4949 = sub nsw i32 2129859010, %4948
  %4950 = bitcast i32 %4949 to float
  %4951 = fmul fast float %4950, 2.000000e+00
  %4952 = fsub fast float 0x4002A9FBE0000000, %4933
  %4953 = fadd fast float %4933, 0x3FD54FDF00000000
  %4954 = bitcast float %4953 to i32
  %4955 = sub nsw i32 2129859010, %4954
  %4956 = bitcast i32 %4955 to float
  %4957 = fmul fast float %4956, %4952
  %4958 = fmul fast float %4957, %4957
  %4959 = fsub fast float 0x4002A9FBE0000000, %4942
  %4960 = fadd fast float %4942, 0x3FD54FDF00000000
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, %4959
  %4965 = fmul fast float %4964, %4964
  %4966 = fsub fast float 0x4002A9FBE0000000, %4951
  %4967 = fadd fast float %4951, 0x3FD54FDF00000000
  %4968 = bitcast float %4967 to i32
  %4969 = sub nsw i32 2129859010, %4968
  %4970 = bitcast i32 %4969 to float
  %4971 = fmul fast float %4970, %4966
  %4972 = fmul fast float %4971, %4971
  %4973 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4958)  ; FMax(a,b)
  %4974 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4965)  ; FMax(a,b)
  %4975 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4972)  ; FMax(a,b)
  %4976 = fsub fast float 1.000000e+00, %4861
  %4977 = fadd fast float %4976, %4877
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fsub fast float 1.000000e+00, %4841
  %4980 = fmul fast float %4919, %4979
  %4981 = fmul fast float %4922, %4922
  %4982 = fmul fast float %4981, %4980
  %4983 = fmul fast float %4982, %4924
  %4984 = fmul fast float %4979, 0xBFE99999A0000000
  %4985 = fmul fast float %4984, %4870
  %4986 = fmul fast float %4985, %4881
  %4987 = fadd fast float %4986, 1.000000e+00
  %4988 = fadd fast float %4387, -1.000000e+00
  %4989 = fmul fast float %4987, %4988
  %4990 = fadd fast float %4989, 1.000000e+00
  %4991 = fsub fast float %4973, %4384
  %4992 = fsub fast float %4974, %4385
  %4993 = fsub fast float %4975, %4386
  %4994 = fmul fast float %4983, %4991
  %4995 = fmul fast float %4983, %4992
  %4996 = fmul fast float %4983, %4993
  %4997 = fadd fast float %4994, %4384
  %4998 = fadd fast float %4995, %4385
  %4999 = fadd fast float %4996, %4386
  %5000 = fsub fast float %83, %4363
  %5001 = fsub fast float %85, %4364
  %5002 = fsub fast float %87, %4365
  %5003 = fmul fast float %4983, %5000
  %5004 = fmul fast float %4983, %5001
  %5005 = fmul fast float %4983, %5002
  %5006 = fadd fast float %5003, %4363
  %5007 = fadd fast float %5004, %4364
  %5008 = fadd fast float %5005, %4365
  %5009 = fmul fast float %4983, %4978
  %5010 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = fmul fast float %5009, %5011
  %5013 = fadd fast float %5012, %5010
  %5014 = fsub fast float 1.000000e+00, %4347
  %5015 = fmul fast float %4983, %5014
  %5016 = fadd fast float %5015, %4347
  %5017 = call float @dx.op.dot3.f32(i32 55, float %5006, float %5007, float %5008, float %5006, float %5007, float %5008)  ; Dot3(ax,ay,az,bx,by,bz)
  %5018 = call float @dx.op.unary.f32(i32 25, float %5017)  ; Rsqrt(value)
  %5019 = fmul fast float %5006, %5018
  %5020 = fmul fast float %5007, %5018
  %5021 = fmul fast float %5008, %5018
  br label %5022

; <label>:5022                                    ; preds = %4854, %4847
  %5023 = phi float [ %4853, %4847 ], [ %4860, %4854 ]
  %5024 = phi float [ %4852, %4847 ], [ %4858, %4854 ]
  %5025 = phi float [ %4851, %4847 ], [ %4856, %4854 ]
  %5026 = phi float [ %4850, %4847 ], [ %4859, %4854 ]
  %5027 = phi float [ %4849, %4847 ], [ %4857, %4854 ]
  %5028 = phi float [ %4848, %4847 ], [ %4855, %4854 ]
  %5029 = phi float [ %4465, %4847 ], [ %4906, %4854 ]
  %5030 = phi float [ %4466, %4847 ], [ %4907, %4854 ]
  %5031 = phi float [ %4467, %4847 ], [ %4908, %4854 ]
  %5032 = phi float [ %4363, %4847 ], [ %5019, %4854 ]
  %5033 = phi float [ %4364, %4847 ], [ %5020, %4854 ]
  %5034 = phi float [ %4365, %4847 ], [ %5021, %4854 ]
  %5035 = phi float [ %4384, %4847 ], [ %4997, %4854 ]
  %5036 = phi float [ %4385, %4847 ], [ %4998, %4854 ]
  %5037 = phi float [ %4386, %4847 ], [ %4999, %4854 ]
  %5038 = phi float [ %4387, %4847 ], [ %5013, %4854 ]
  %5039 = phi float [ %4347, %4847 ], [ %5016, %4854 ]
  %5040 = select i1 %175, float 0.000000e+00, float %5037
  %5041 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %5025, float %5024, float %5023)  ; Dot3(ax,ay,az,bx,by,bz)
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = call float @dx.op.dot3.f32(i32 55, float %5028, float %5027, float %5026, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = fmul fast float %5043, 2.000000e+00
  %5045 = fmul fast float %5044, %5032
  %5046 = fmul fast float %5044, %5033
  %5047 = fmul fast float %5044, %5034
  %5048 = fsub fast float %5028, %5045
  %5049 = fsub fast float %5027, %5046
  %5050 = fsub fast float %5026, %5047
  %5051 = call float @dx.op.binary.f32(i32 36, float %5039, float 1.000000e+00)  ; FMin(a,b)
  %5052 = fsub fast float 1.000000e+00, %5039
  %5053 = bitcast float %5052 to i32
  %5054 = sub nsw i32 2129859010, %5053
  %5055 = bitcast i32 %5054 to float
  %5056 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %51)  ; FMax(a,b)
  %5057 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = fcmp fast oeq float %5057, 0.000000e+00
  %5059 = fcmp fast oeq float %5056, 0.000000e+00
  %5060 = or i1 %5059, %5058
  br i1 %5060, label %5090, label %5061

; <label>:5061                                    ; preds = %5022
  %5062 = fsub fast float -0.000000e+00, %54
  %5063 = fsub fast float -0.000000e+00, %52
  %5064 = call float @dx.op.unary.f32(i32 24, float %5057)  ; Sqrt(value)
  %5065 = fdiv fast float %5064, %5056
  %5066 = fcmp fast ogt float %5065, 0x3FFB6F8900000000
  %5067 = select i1 %5066, float 0x3FFB6F8900000000, float %5065
  %5068 = fmul fast float %5067, 0x3FE8A23460000000
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = call float @dx.op.binary.f32(i32 35, float %5067, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5071 = fmul fast float %5069, %5056
  %5072 = fmul fast float %5070, 0x3FF279A740000000
  %5073 = fadd fast float %5072, -1.000000e+00
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5063, float %53, float %5062, float %5063, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.unary.f32(i32 25, float %5074)  ; Rsqrt(value)
  %5076 = fmul fast float %5075, %5062
  %5077 = fmul fast float %5075, %5063
  %5078 = fmul fast float %5075, %53
  %5079 = fmul fast float %5073, %5073
  %5080 = fsub fast float 1.000000e+00, %5079
  %5081 = fmul fast float %5070, 0x40005F8BE0000000
  %5082 = fsub fast float 0x400C5BF8A0000000, %5081
  %5083 = fdiv fast float %5071, %5082
  %5084 = fmul fast float %5083, 0x3FEE31C3C0000000
  %5085 = fmul fast float %5084, %5080
  %5086 = fmul fast float %5070, 0x3FDACB7480000000
  %5087 = fadd fast float %5086, 0xBFD7347680000000
  %5088 = fmul fast float %5087, %5083
  %5089 = fmul fast float %5088, %5080
  br label %5090

; <label>:5090                                    ; preds = %5061, %5022
  %5091 = phi float [ %5076, %5061 ], [ 0.000000e+00, %5022 ]
  %5092 = phi float [ %5077, %5061 ], [ 0.000000e+00, %5022 ]
  %5093 = phi float [ %5078, %5061 ], [ 0.000000e+00, %5022 ]
  %5094 = phi float [ %5085, %5061 ], [ 0.000000e+00, %5022 ]
  %5095 = phi float [ %5089, %5061 ], [ 0.000000e+00, %5022 ]
  %5096 = call float @dx.op.dot3.f32(i32 55, float %5091, float %5092, float %5093, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5097 = fmul fast float %5096, 0x3FDF454380000000
  %5098 = fmul fast float %5096, %5096
  %5099 = fmul fast float %5098, 0x3FEE471020000000
  %5100 = fadd fast float %5099, 0xBFD42F6020000000
  %5101 = fmul fast float %5056, 0x3FD20DD760000000
  %5102 = fmul fast float %5100, %5095
  %5103 = fadd fast float %5102, %5101
  %5104 = fmul fast float %5097, %5094
  %5105 = fadd fast float %5103, %5104
  %5106 = fsub fast float %5103, %5104
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5091, float %5092, float %5093, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = fmul fast float %5107, 0x3FDF454380000000
  %5109 = fmul fast float %5107, %5107
  %5110 = fmul fast float %5109, 0x3FEE471020000000
  %5111 = fadd fast float %5110, 0xBFD42F6020000000
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5094, float %5095, float 0x3FD20DD760000000, float %5108, float %5111)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %47)  ; FMax(a,b)
  %5114 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = fcmp fast oeq float %5114, 0.000000e+00
  %5116 = fcmp fast oeq float %5113, 0.000000e+00
  %5117 = or i1 %5116, %5115
  br i1 %5117, label %5147, label %5118

; <label>:5118                                    ; preds = %5090
  %5119 = fsub fast float -0.000000e+00, %50
  %5120 = fsub fast float -0.000000e+00, %48
  %5121 = call float @dx.op.unary.f32(i32 24, float %5114)  ; Sqrt(value)
  %5122 = fdiv fast float %5121, %5113
  %5123 = fcmp fast ogt float %5122, 0x3FFB6F8900000000
  %5124 = select i1 %5123, float 0x3FFB6F8900000000, float %5122
  %5125 = fmul fast float %5124, 0x3FE8A23460000000
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5124, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5128 = fmul fast float %5126, %5113
  %5129 = fmul fast float %5127, 0x3FF279A740000000
  %5130 = fadd fast float %5129, -1.000000e+00
  %5131 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5120, float %49, float %5119, float %5120, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = call float @dx.op.unary.f32(i32 25, float %5131)  ; Rsqrt(value)
  %5133 = fmul fast float %5132, %5119
  %5134 = fmul fast float %5132, %5120
  %5135 = fmul fast float %5132, %49
  %5136 = fmul fast float %5130, %5130
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = fmul fast float %5127, 0x40005F8BE0000000
  %5139 = fsub fast float 0x400C5BF8A0000000, %5138
  %5140 = fdiv fast float %5128, %5139
  %5141 = fmul fast float %5140, 0x3FEE31C3C0000000
  %5142 = fmul fast float %5141, %5137
  %5143 = fmul fast float %5127, 0x3FDACB7480000000
  %5144 = fadd fast float %5143, 0xBFD7347680000000
  %5145 = fmul fast float %5144, %5140
  %5146 = fmul fast float %5145, %5137
  br label %5147

; <label>:5147                                    ; preds = %5118, %5090
  %5148 = phi float [ %5133, %5118 ], [ 0.000000e+00, %5090 ]
  %5149 = phi float [ %5134, %5118 ], [ 0.000000e+00, %5090 ]
  %5150 = phi float [ %5135, %5118 ], [ 0.000000e+00, %5090 ]
  %5151 = phi float [ %5142, %5118 ], [ 0.000000e+00, %5090 ]
  %5152 = phi float [ %5146, %5118 ], [ 0.000000e+00, %5090 ]
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = fmul fast float %5153, 0x3FDF454380000000
  %5155 = fmul fast float %5153, %5153
  %5156 = fmul fast float %5155, 0x3FEE471020000000
  %5157 = fadd fast float %5156, 0xBFD42F6020000000
  %5158 = fmul fast float %5113, 0x3FD20DD760000000
  %5159 = fmul fast float %5157, %5152
  %5160 = fadd fast float %5159, %5158
  %5161 = fmul fast float %5154, %5151
  %5162 = fadd fast float %5160, %5161
  %5163 = fsub fast float %5160, %5161
  %5164 = call float @dx.op.dot3.f32(i32 55, float %5148, float %5149, float %5150, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = fmul fast float %5164, 0x3FDF454380000000
  %5166 = fmul fast float %5164, %5164
  %5167 = fmul fast float %5166, 0x3FEE471020000000
  %5168 = fadd fast float %5167, 0xBFD42F6020000000
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5113, float %5151, float %5152, float 0x3FD20DD760000000, float %5165, float %5168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %43)  ; FMax(a,b)
  %5171 = call float @dx.op.dot3.f32(i32 55, float %44, float %45, float %46, float %44, float %45, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %5172 = fcmp fast oeq float %5171, 0.000000e+00
  %5173 = fcmp fast oeq float %5170, 0.000000e+00
  %5174 = or i1 %5173, %5172
  br i1 %5174, label %5204, label %5175

; <label>:5175                                    ; preds = %5147
  %5176 = fsub fast float -0.000000e+00, %46
  %5177 = fsub fast float -0.000000e+00, %44
  %5178 = call float @dx.op.unary.f32(i32 24, float %5171)  ; Sqrt(value)
  %5179 = fdiv fast float %5178, %5170
  %5180 = fcmp fast ogt float %5179, 0x3FFB6F8900000000
  %5181 = select i1 %5180, float 0x3FFB6F8900000000, float %5179
  %5182 = fmul fast float %5181, 0x3FE8A23460000000
  %5183 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5184 = call float @dx.op.binary.f32(i32 35, float %5181, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5185 = fmul fast float %5183, %5170
  %5186 = fmul fast float %5184, 0x3FF279A740000000
  %5187 = fadd fast float %5186, -1.000000e+00
  %5188 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %45, float %5176, float %5177, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %5189 = call float @dx.op.unary.f32(i32 25, float %5188)  ; Rsqrt(value)
  %5190 = fmul fast float %5189, %5176
  %5191 = fmul fast float %5189, %5177
  %5192 = fmul fast float %5189, %45
  %5193 = fmul fast float %5187, %5187
  %5194 = fsub fast float 1.000000e+00, %5193
  %5195 = fmul fast float %5184, 0x40005F8BE0000000
  %5196 = fsub fast float 0x400C5BF8A0000000, %5195
  %5197 = fdiv fast float %5185, %5196
  %5198 = fmul fast float %5197, 0x3FEE31C3C0000000
  %5199 = fmul fast float %5198, %5194
  %5200 = fmul fast float %5184, 0x3FDACB7480000000
  %5201 = fadd fast float %5200, 0xBFD7347680000000
  %5202 = fmul fast float %5201, %5197
  %5203 = fmul fast float %5202, %5194
  br label %5204

; <label>:5204                                    ; preds = %5175, %5147
  %5205 = phi float [ %5190, %5175 ], [ 0.000000e+00, %5147 ]
  %5206 = phi float [ %5191, %5175 ], [ 0.000000e+00, %5147 ]
  %5207 = phi float [ %5192, %5175 ], [ 0.000000e+00, %5147 ]
  %5208 = phi float [ %5199, %5175 ], [ 0.000000e+00, %5147 ]
  %5209 = phi float [ %5203, %5175 ], [ 0.000000e+00, %5147 ]
  %5210 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = fmul fast float %5210, 0x3FDF454380000000
  %5212 = fmul fast float %5210, %5210
  %5213 = fmul fast float %5212, 0x3FEE471020000000
  %5214 = fadd fast float %5213, 0xBFD42F6020000000
  %5215 = fmul fast float %5170, 0x3FD20DD760000000
  %5216 = fmul fast float %5214, %5209
  %5217 = fadd fast float %5216, %5215
  %5218 = fmul fast float %5211, %5208
  %5219 = fadd fast float %5217, %5218
  %5220 = fsub fast float %5217, %5218
  %5221 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = fmul fast float %5221, 0x3FDF454380000000
  %5223 = fmul fast float %5221, %5221
  %5224 = fmul fast float %5223, 0x3FEE471020000000
  %5225 = fadd fast float %5224, 0xBFD42F6020000000
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5208, float %5209, float 0x3FD20DD760000000, float %5222, float %5225)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = call float @dx.op.binary.f32(i32 35, float %5105, float 0.000000e+00)  ; FMax(a,b)
  %5228 = call float @dx.op.binary.f32(i32 35, float %5162, float 0.000000e+00)  ; FMax(a,b)
  %5229 = call float @dx.op.binary.f32(i32 35, float %5219, float 0.000000e+00)  ; FMax(a,b)
  %5230 = call float @dx.op.binary.f32(i32 35, float %5106, float 0.000000e+00)  ; FMax(a,b)
  %5231 = call float @dx.op.binary.f32(i32 35, float %5163, float 0.000000e+00)  ; FMax(a,b)
  %5232 = call float @dx.op.binary.f32(i32 35, float %5220, float 0.000000e+00)  ; FMax(a,b)
  %5233 = call float @dx.op.binary.f32(i32 35, float %5112, float 0.000000e+00)  ; FMax(a,b)
  %5234 = call float @dx.op.binary.f32(i32 35, float %5169, float 0.000000e+00)  ; FMax(a,b)
  %5235 = call float @dx.op.binary.f32(i32 35, float %5226, float 0.000000e+00)  ; FMax(a,b)
  %5236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.f32 %5236, 0
  %5238 = call float @dx.op.binary.f32(i32 36, float %5029, float %5237)  ; FMin(a,b)
  %5239 = fsub fast float 1.000000e+00, %5051
  %5240 = fmul fast float %5238, %5239
  %5241 = fsub fast float 1.000000e+00, %5240
  %5242 = bitcast float %5241 to i32
  %5243 = sub nsw i32 2129859010, %5242
  %5244 = bitcast i32 %5243 to float
  %5245 = call float @dx.op.binary.f32(i32 36, float %5030, float %5237)  ; FMin(a,b)
  %5246 = fmul fast float %5245, %5239
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = bitcast float %5247 to i32
  %5249 = sub nsw i32 2129859010, %5248
  %5250 = bitcast i32 %5249 to float
  %5251 = call float @dx.op.binary.f32(i32 36, float %5031, float %5237)  ; FMin(a,b)
  %5252 = fmul fast float %5251, %5239
  %5253 = fsub fast float 1.000000e+00, %5252
  %5254 = bitcast float %5253 to i32
  %5255 = sub nsw i32 2129859010, %5254
  %5256 = bitcast i32 %5255 to float
  %5257 = fmul fast float %5227, %5051
  %5258 = fmul fast float %5257, %5244
  %5259 = fmul fast float %5228, %5051
  %5260 = fmul fast float %5259, %5250
  %5261 = fmul fast float %5229, %5051
  %5262 = fmul fast float %5261, %5256
  %5263 = call float @dx.op.binary.f32(i32 36, float %5035, float %5237)  ; FMin(a,b)
  %5264 = fmul fast float %5263, %5239
  %5265 = fsub fast float 1.000000e+00, %5264
  %5266 = bitcast float %5265 to i32
  %5267 = sub nsw i32 2129859010, %5266
  %5268 = bitcast i32 %5267 to float
  %5269 = call float @dx.op.binary.f32(i32 36, float %5036, float %5237)  ; FMin(a,b)
  %5270 = fmul fast float %5269, %5239
  %5271 = fsub fast float 1.000000e+00, %5270
  %5272 = bitcast float %5271 to i32
  %5273 = sub nsw i32 2129859010, %5272
  %5274 = bitcast i32 %5273 to float
  %5275 = call float @dx.op.binary.f32(i32 36, float %5040, float %5237)  ; FMin(a,b)
  %5276 = fmul fast float %5275, %5239
  %5277 = fsub fast float 1.000000e+00, %5276
  %5278 = bitcast float %5277 to i32
  %5279 = sub nsw i32 2129859010, %5278
  %5280 = bitcast i32 %5279 to float
  %5281 = fmul fast float %5233, %5051
  %5282 = fmul fast float %5281, %5268
  %5283 = fmul fast float %5234, %5051
  %5284 = fmul fast float %5283, %5274
  %5285 = fmul fast float %5235, %5051
  %5286 = fmul fast float %5285, %5280
  %5287 = call float @dx.op.dot3.f32(i32 55, float %5258, float %5260, float %5262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = select i1 %175, float 0.000000e+00, float %5258
  %5289 = select i1 %175, float %5287, float %5260
  %5290 = select i1 %175, float 0.000000e+00, float %5262
  %5291 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5231, float %5232, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = select i1 %175, float 0.000000e+00, float %5230
  %5293 = select i1 %175, float %5291, float %5231
  %5294 = select i1 %175, float 0.000000e+00, float %5232
  %5295 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5284, float %5286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = select i1 %175, float 0.000000e+00, float %5282
  %5297 = select i1 %175, float %5295, float %5284
  %5298 = select i1 %175, float 0.000000e+00, float %5286
  %5299 = fmul fast float %5042, 9.843750e-01
  %5300 = fmul fast float %5038, 9.843750e-01
  %5301 = fadd fast float %5299, 7.812500e-03
  %5302 = fadd fast float %5300, 7.812500e-03
  %5303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5301, float %5302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 3
  %5306 = fmul fast float %5304, %5035
  %5307 = fmul fast float %5304, %5036
  %5308 = fmul fast float %5304, %5040
  %5309 = fadd fast float %5306, %5305
  %5310 = fadd fast float %5307, %5305
  %5311 = fadd fast float %5308, %5305
  %5312 = fcmp fast ogt float %4337, 0.000000e+00
  br i1 %5312, label %5313, label %5339

; <label>:5313                                    ; preds = %5204
  %5314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5315 = extractvalue %dx.types.ResRet.f32 %5314, 0
  %5316 = extractvalue %dx.types.ResRet.f32 %5314, 1
  %5317 = extractvalue %dx.types.ResRet.f32 %5314, 2
  %5318 = fadd fast float %5315, -5.000000e-01
  %5319 = fadd fast float %5316, -5.000000e-01
  %5320 = fadd fast float %5317, -5.000000e-01
  %5321 = fsub fast float 1.000000e+00, %5035
  %5322 = fsub fast float 1.000000e+00, %5036
  %5323 = fsub fast float 1.000000e+00, %5040
  %5324 = fmul fast float %5035, 4.000000e+00
  %5325 = fmul fast float %5324, %5321
  %5326 = fmul fast float %5325, %5318
  %5327 = fmul fast float %5036, 4.000000e+00
  %5328 = fmul fast float %5327, %5322
  %5329 = fmul fast float %5328, %5319
  %5330 = fmul fast float %5040, 4.000000e+00
  %5331 = fmul fast float %5330, %5323
  %5332 = fmul fast float %5331, %5320
  %5333 = fadd fast float %5326, %5309
  %5334 = fadd fast float %5329, %5310
  %5335 = fadd fast float %5332, %5311
  %5336 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5337 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5338 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  br label %5339

; <label>:5339                                    ; preds = %5313, %5204
  %5340 = phi float [ %5336, %5313 ], [ %5309, %5204 ]
  %5341 = phi float [ %5337, %5313 ], [ %5310, %5204 ]
  %5342 = phi float [ %5338, %5313 ], [ %5311, %5204 ]
  %5343 = call float @dx.op.binary.f32(i32 35, float %5341, float %5342)  ; FMax(a,b)
  %5344 = call float @dx.op.binary.f32(i32 35, float %5340, float %5343)  ; FMax(a,b)
  %5345 = fsub fast float 1.000000e+00, %5344
  %5346 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5030, float %5031, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = fcmp fast ogt float %5346, 0x3E7FF19E20000000
  %5348 = fdiv fast float 1.000000e+00, %5346
  %5349 = select i1 %5347, float %5348, float 0.000000e+00
  %5350 = fmul fast float %5349, %5029
  %5351 = fmul fast float %5349, %5030
  %5352 = fmul fast float %5349, %5031
  %5353 = fadd fast float %5350, -1.000000e+00
  %5354 = fadd fast float %5351, -1.000000e+00
  %5355 = fadd fast float %5352, -1.000000e+00
  %5356 = fmul fast float %5353, 5.000000e-01
  %5357 = fmul fast float %5354, 5.000000e-01
  %5358 = fmul fast float %5355, 5.000000e-01
  %5359 = fadd fast float %5356, 1.000000e+00
  %5360 = fadd fast float %5357, 1.000000e+00
  %5361 = fadd fast float %5358, 1.000000e+00
  %5362 = fmul fast float %5340, %5296
  %5363 = fmul fast float %5341, %5297
  %5364 = fmul fast float %5342, %5298
  %5365 = fsub fast float 1.000000e+00, %5042
  %5366 = bitcast float %5365 to i32
  %5367 = sitofp i32 %5366 to float
  %5368 = fmul fast float %5367, 5.000000e+00
  %5369 = fadd fast float %5368, 0xC1EFBF8940000000
  %5370 = fptosi float %5369 to i32
  %5371 = bitcast i32 %5370 to float
  %5372 = fmul fast float %5371, %4336
  %5373 = fmul fast float %5288, %5372
  %5374 = fmul fast float %5373, %5345
  %5375 = fmul fast float %5374, %5359
  %5376 = fmul fast float %5289, %5372
  %5377 = fmul fast float %5376, %5345
  %5378 = fmul fast float %5377, %5360
  %5379 = fmul fast float %5290, %5372
  %5380 = fmul fast float %5379, %5345
  %5381 = fmul fast float %5380, %5361
  %5382 = fadd fast float %5362, %4341
  %5383 = fadd fast float %5382, %5375
  %5384 = fmul fast float %5383, %4360
  %5385 = fadd fast float %5363, %4342
  %5386 = fadd fast float %5385, %5378
  %5387 = fmul fast float %5386, %4360
  %5388 = fadd fast float %5364, %4343
  %5389 = fadd fast float %5388, %5381
  %5390 = fmul fast float %5389, %4360
  %5391 = fmul fast float %5345, %5290
  %5392 = fmul fast float %5345, %5289
  %5393 = fmul fast float %5345, %5288
  %5394 = fmul fast float %5345, %4453
  %5395 = fadd fast float %5394, -1.000000e+00
  %5396 = fmul fast float %5395, %4360
  %5397 = fadd fast float %5396, 1.000000e+00
  %5398 = fmul fast float %5345, %4452
  %5399 = fadd fast float %5398, -1.000000e+00
  %5400 = fmul fast float %5399, %4360
  %5401 = fadd fast float %5400, 1.000000e+00
  %5402 = fmul fast float %5345, %4451
  %5403 = fadd fast float %5402, -1.000000e+00
  %5404 = fmul fast float %5403, %4360
  %5405 = fadd fast float %5404, 1.000000e+00
  %5406 = fmul fast float %5405, %5292
  %5407 = fmul fast float %5401, %5293
  %5408 = fmul fast float %5397, %5294
  %5409 = fadd fast float %5406, %5393
  %5410 = fmul fast float %5409, %4360
  %5411 = fadd fast float %5407, %5392
  %5412 = fmul fast float %5411, %4360
  %5413 = fadd fast float %5408, %5391
  %5414 = fmul fast float %5413, %4360
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 3
  %5417 = fcmp fast oeq float %5416, 0.000000e+00
  br i1 %5417, label %5699, label %5418

; <label>:5418                                    ; preds = %5339
  %5419 = extractvalue %dx.types.CBufRet.f32 %5415, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5415, 1
  %5421 = extractvalue %dx.types.CBufRet.f32 %5415, 2
  %5422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.f32 %5422, 0
  %5424 = extractvalue %dx.types.CBufRet.f32 %5422, 1
  %5425 = extractvalue %dx.types.CBufRet.f32 %5422, 2
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 0
  %5428 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5423, float %5424, float %5425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = select i1 %175, float %5427, float %5423
  %5431 = select i1 %175, float %5429, float %5424
  %5432 = select i1 %175, float %5428, float %5425
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 1
  %5435 = fcmp fast une float %5434, 0.000000e+00
  br i1 %5435, label %5436, label %5453

; <label>:5436                                    ; preds = %5418
  %5437 = fptoui float %74 to i32
  %5438 = fptoui float %75 to i32
  %5439 = lshr i32 %5437, 4
  %5440 = lshr i32 %5438, 4
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = fptoui float %5442 to i32
  %5444 = add i32 %5443, 15
  %5445 = lshr i32 %5444, 4
  %5446 = mul i32 %5445, %5440
  %5447 = add i32 %5446, %5439
  %5448 = shl i32 %5447, 3
  %5449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.i32 %5449, 0
  %5451 = and i32 %5450, -268435456
  %5452 = icmp eq i32 %5451, -1342177280
  br i1 %5452, label %5463, label %5453

; <label>:5453                                    ; preds = %5436, %5418
  %5454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5455 = extractvalue %dx.types.CBufRet.f32 %5454, 2
  %5456 = extractvalue %dx.types.CBufRet.f32 %5454, 3
  %5457 = fmul fast float %5455, %74
  %5458 = fmul fast float %5456, %75
  %5459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5457, float %5458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5460 = extractvalue %dx.types.ResRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.ResRet.f32 %5459, 1
  %5462 = extractvalue %dx.types.ResRet.f32 %5459, 2
  br label %5463

; <label>:5463                                    ; preds = %5453, %5436
  %5464 = phi float [ %5460, %5453 ], [ 0.000000e+00, %5436 ]
  %5465 = phi float [ %5461, %5453 ], [ 0.000000e+00, %5436 ]
  %5466 = phi float [ %5462, %5453 ], [ 0.000000e+00, %5436 ]
  %5467 = call float @dx.op.binary.f32(i32 36, float %5465, float %5466)  ; FMin(a,b)
  %5468 = call float @dx.op.binary.f32(i32 36, float %5464, float %5467)  ; FMin(a,b)
  %5469 = fcmp fast ogt float %5468, 0.000000e+00
  br i1 %5469, label %5470, label %5699, !dx.controlflow.hints !75

; <label>:5470                                    ; preds = %5463
  %5471 = fmul fast float %5464, %5430
  %5472 = fmul fast float %5465, %5431
  %5473 = fmul fast float %5466, %5432
  %5474 = fsub fast float %5419, %5028
  %5475 = fsub fast float %5420, %5027
  %5476 = fsub fast float %5421, %5026
  %5477 = call float @dx.op.dot3.f32(i32 55, float %5474, float %5475, float %5476, float %5474, float %5475, float %5476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = call float @dx.op.unary.f32(i32 25, float %5477)  ; Rsqrt(value)
  %5479 = fmul fast float %5478, %5474
  %5480 = fmul fast float %5478, %5475
  %5481 = fmul fast float %5478, %5476
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5024, float %5023, float %5479, float %5480, float %5481)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5485 = fmul fast float %5484, %5484
  %5486 = fmul fast float %5485, %5055
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5488 = fmul fast float %5487, %5484
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %5479, float %5480, float %5481)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = fmul fast float %5489, %5489
  %5491 = call float @dx.op.unary.f32(i32 6, float %5482)  ; FAbs(value)
  %5492 = fsub fast float 1.000000e+00, %5038
  %5493 = call float @dx.op.binary.f32(i32 35, float %5492, float 0x3F847AE140000000)  ; FMax(a,b)
  %5494 = fmul fast float %5493, %5493
  %5495 = fmul fast float %5494, %5494
  %5496 = fsub fast float 1.000000e+00, %5495
  %5497 = fmul fast float %5042, %5042
  %5498 = fmul fast float %5497, %5496
  %5499 = fadd fast float %5498, %5495
  %5500 = bitcast float %5499 to i32
  %5501 = ashr i32 %5500, 1
  %5502 = add nsw i32 %5501, 532487669
  %5503 = bitcast i32 %5502 to float
  %5504 = fadd fast float %5503, %5042
  %5505 = fmul fast float %5495, %5490
  %5506 = fsub fast float 1.000000e+00, %5490
  %5507 = fadd fast float %5506, %5505
  %5508 = fmul fast float %5491, %5491
  %5509 = fmul fast float %5508, %5496
  %5510 = fadd fast float %5509, %5495
  %5511 = bitcast float %5510 to i32
  %5512 = ashr i32 %5511, 1
  %5513 = add nsw i32 %5512, 532487669
  %5514 = bitcast i32 %5513 to float
  %5515 = fadd fast float %5514, %5491
  %5516 = fmul fast float %5507, %5507
  %5517 = fmul fast float %5516, %5504
  %5518 = fmul fast float %5517, %5515
  %5519 = fdiv fast float 0x3FF0A00000000000, %5518
  %5520 = fmul fast float %5519, %5495
  %5521 = call float @dx.op.unary.f32(i32 6, float %5483)  ; FAbs(value)
  %5522 = fsub fast float 1.000000e+00, %5521
  %5523 = bitcast float %5522 to i32
  %5524 = sitofp i32 %5523 to float
  %5525 = fmul fast float %5524, 5.000000e+00
  %5526 = fadd fast float %5525, 0xC1EFBF8940000000
  %5527 = fptosi float %5526 to i32
  %5528 = bitcast i32 %5527 to float
  %5529 = fsub fast float 1.000000e+00, %5035
  %5530 = fsub fast float 1.000000e+00, %5036
  %5531 = fsub fast float 1.000000e+00, %5040
  %5532 = fmul fast float %5528, %5529
  %5533 = fmul fast float %5528, %5530
  %5534 = fmul fast float %5528, %5531
  %5535 = fadd fast float %5532, %5035
  %5536 = fadd fast float %5533, %5036
  %5537 = fadd fast float %5534, %5040
  br i1 %5312, label %5538, label %5561

; <label>:5538                                    ; preds = %5470
  %5539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5540 = extractvalue %dx.types.ResRet.f32 %5539, 0
  %5541 = extractvalue %dx.types.ResRet.f32 %5539, 1
  %5542 = extractvalue %dx.types.ResRet.f32 %5539, 2
  %5543 = fadd fast float %5540, -5.000000e-01
  %5544 = fadd fast float %5541, -5.000000e-01
  %5545 = fadd fast float %5542, -5.000000e-01
  %5546 = fmul fast float %5035, 4.000000e+00
  %5547 = fmul fast float %5546, %5529
  %5548 = fmul fast float %5547, %5543
  %5549 = fmul fast float %5036, 4.000000e+00
  %5550 = fmul fast float %5549, %5530
  %5551 = fmul fast float %5550, %5544
  %5552 = fmul fast float %5040, 4.000000e+00
  %5553 = fmul fast float %5552, %5531
  %5554 = fmul fast float %5553, %5545
  %5555 = fadd fast float %5548, %5535
  %5556 = fadd fast float %5551, %5536
  %5557 = fadd fast float %5554, %5537
  %5558 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5560 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  br label %5561

; <label>:5561                                    ; preds = %5538, %5470
  %5562 = phi float [ %5558, %5538 ], [ %5535, %5470 ]
  %5563 = phi float [ %5559, %5538 ], [ %5536, %5470 ]
  %5564 = phi float [ %5560, %5538 ], [ %5537, %5470 ]
  %5565 = fmul fast float %5482, 9.843750e-01
  %5566 = fadd fast float %5565, 7.812500e-03
  %5567 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5566, float %5302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5568 = extractvalue %dx.types.ResRet.f32 %5567, 2
  %5569 = extractvalue %dx.types.ResRet.f32 %5567, 3
  %5570 = fmul fast float %5568, %5035
  %5571 = fmul fast float %5568, %5036
  %5572 = fmul fast float %5568, %5040
  %5573 = fadd fast float %5570, %5569
  %5574 = fadd fast float %5571, %5569
  %5575 = fadd fast float %5572, %5569
  br i1 %5312, label %5576, label %5599

; <label>:5576                                    ; preds = %5561
  %5577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5482, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5578 = extractvalue %dx.types.ResRet.f32 %5577, 0
  %5579 = extractvalue %dx.types.ResRet.f32 %5577, 1
  %5580 = extractvalue %dx.types.ResRet.f32 %5577, 2
  %5581 = fadd fast float %5578, -5.000000e-01
  %5582 = fadd fast float %5579, -5.000000e-01
  %5583 = fadd fast float %5580, -5.000000e-01
  %5584 = fmul fast float %5035, 4.000000e+00
  %5585 = fmul fast float %5584, %5529
  %5586 = fmul fast float %5585, %5581
  %5587 = fmul fast float %5036, 4.000000e+00
  %5588 = fmul fast float %5587, %5530
  %5589 = fmul fast float %5588, %5582
  %5590 = fmul fast float %5040, 4.000000e+00
  %5591 = fmul fast float %5590, %5531
  %5592 = fmul fast float %5591, %5583
  %5593 = fadd fast float %5586, %5573
  %5594 = fadd fast float %5589, %5574
  %5595 = fadd fast float %5592, %5575
  %5596 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5598 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  br label %5599

; <label>:5599                                    ; preds = %5576, %5561
  %5600 = phi float [ %5596, %5576 ], [ %5573, %5561 ]
  %5601 = phi float [ %5597, %5576 ], [ %5574, %5561 ]
  %5602 = phi float [ %5598, %5576 ], [ %5575, %5561 ]
  %5603 = call float @dx.op.binary.f32(i32 35, float %5601, float %5602)  ; FMax(a,b)
  %5604 = call float @dx.op.binary.f32(i32 35, float %5600, float %5603)  ; FMax(a,b)
  %5605 = fsub fast float 1.000000e+00, %5604
  %5606 = fsub fast float -0.000000e+00, %5032
  %5607 = fsub fast float -0.000000e+00, %5033
  %5608 = fsub fast float -0.000000e+00, %5034
  %5609 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %5421, float %5606, float %5607, float %5608)  ; Dot3(ax,ay,az,bx,by,bz)
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fmul fast float %5610, 9.843750e-01
  %5612 = fadd fast float %5611, 7.812500e-03
  %5613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5612, float %5302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5614 = extractvalue %dx.types.ResRet.f32 %5613, 2
  %5615 = extractvalue %dx.types.ResRet.f32 %5613, 3
  %5616 = fmul fast float %5614, %5035
  %5617 = fmul fast float %5614, %5036
  %5618 = fmul fast float %5614, %5040
  %5619 = fadd fast float %5616, %5615
  %5620 = fadd fast float %5617, %5615
  %5621 = fadd fast float %5618, %5615
  br i1 %5312, label %5622, label %5645

; <label>:5622                                    ; preds = %5599
  %5623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5624 = extractvalue %dx.types.ResRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.ResRet.f32 %5623, 1
  %5626 = extractvalue %dx.types.ResRet.f32 %5623, 2
  %5627 = fadd fast float %5624, -5.000000e-01
  %5628 = fadd fast float %5625, -5.000000e-01
  %5629 = fadd fast float %5626, -5.000000e-01
  %5630 = fmul fast float %5035, 4.000000e+00
  %5631 = fmul fast float %5630, %5529
  %5632 = fmul fast float %5631, %5627
  %5633 = fmul fast float %5036, 4.000000e+00
  %5634 = fmul fast float %5633, %5530
  %5635 = fmul fast float %5634, %5628
  %5636 = fmul fast float %5040, 4.000000e+00
  %5637 = fmul fast float %5636, %5531
  %5638 = fmul fast float %5637, %5629
  %5639 = fadd fast float %5632, %5619
  %5640 = fadd fast float %5635, %5620
  %5641 = fadd fast float %5638, %5621
  %5642 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5643 = call float @dx.op.unary.f32(i32 7, float %5640)  ; Saturate(value)
  %5644 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  br label %5645

; <label>:5645                                    ; preds = %5622, %5599
  %5646 = phi float [ %5642, %5622 ], [ %5619, %5599 ]
  %5647 = phi float [ %5643, %5622 ], [ %5620, %5599 ]
  %5648 = phi float [ %5644, %5622 ], [ %5621, %5599 ]
  %5649 = call float @dx.op.binary.f32(i32 35, float %5647, float %5648)  ; FMax(a,b)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5646, float %5649)  ; FMax(a,b)
  %5651 = fsub fast float 1.000000e+00, %5650
  %5652 = fmul fast float %5651, %5610
  %5653 = fmul fast float %5652, %4451
  %5654 = fmul fast float %5652, %4452
  %5655 = fmul fast float %5652, %4453
  %5656 = fmul fast float %5562, %5520
  %5657 = fmul fast float %5563, %5520
  %5658 = fmul fast float %5564, %5520
  %5659 = fsub fast float 1.000000e+00, %5483
  %5660 = bitcast float %5659 to i32
  %5661 = sitofp i32 %5660 to float
  %5662 = fmul fast float %5661, 5.000000e+00
  %5663 = fadd fast float %5662, 0xC1EFBF8940000000
  %5664 = fptosi float %5663 to i32
  %5665 = bitcast i32 %5664 to float
  %5666 = fmul fast float %5665, %4336
  %5667 = fmul fast float %5605, %5666
  %5668 = fmul fast float %5667, %5359
  %5669 = fmul fast float %5667, %5360
  %5670 = fmul fast float %5667, %5361
  %5671 = fmul fast float %5605, %5488
  %5672 = fadd fast float %5668, %5656
  %5673 = fadd fast float %5669, %5657
  %5674 = fadd fast float %5670, %5658
  %5675 = fadd fast float %5653, %5671
  %5676 = fadd fast float %5654, %5671
  %5677 = fadd fast float %5655, %5671
  %5678 = fmul fast float %5675, %5471
  %5679 = fmul fast float %5676, %5472
  %5680 = fmul fast float %5677, %5473
  %5681 = fmul fast float %5488, %5471
  %5682 = fmul fast float %5681, %5672
  %5683 = fmul fast float %5488, %5472
  %5684 = fmul fast float %5683, %5673
  %5685 = fmul fast float %5488, %5473
  %5686 = fmul fast float %5685, %5674
  %5687 = fadd fast float %5678, %5409
  %5688 = fmul fast float %5687, %4360
  %5689 = fadd fast float %5679, %5411
  %5690 = fmul fast float %5689, %4360
  %5691 = fadd fast float %5680, %5413
  %5692 = fmul fast float %5691, %4360
  %5693 = fadd fast float %5682, %5383
  %5694 = fmul fast float %5693, %4360
  %5695 = fadd fast float %5684, %5386
  %5696 = fmul fast float %5695, %4360
  %5697 = fadd fast float %5686, %5389
  %5698 = fmul fast float %5697, %4360
  br label %5699

; <label>:5699                                    ; preds = %5645, %5463, %5339
  %5700 = phi float [ %5384, %5339 ], [ %5384, %5463 ], [ %5694, %5645 ]
  %5701 = phi float [ %5387, %5339 ], [ %5387, %5463 ], [ %5696, %5645 ]
  %5702 = phi float [ %5390, %5339 ], [ %5390, %5463 ], [ %5698, %5645 ]
  %5703 = phi float [ %5410, %5339 ], [ %5410, %5463 ], [ %5688, %5645 ]
  %5704 = phi float [ %5412, %5339 ], [ %5412, %5463 ], [ %5690, %5645 ]
  %5705 = phi float [ %5414, %5339 ], [ %5414, %5463 ], [ %5692, %5645 ]
  %5706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.i32 %5706, 0
  %5708 = icmp eq i32 %5707, 0
  br i1 %5708, label %6198, label %5709

; <label>:5709                                    ; preds = %5699
  %5710 = fptoui float %74 to i32
  %5711 = fptoui float %75 to i32
  %5712 = lshr i32 %5710, 4
  %5713 = lshr i32 %5711, 4
  %5714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.i32 %5714, 0
  %5716 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5713, i32 %5715, i32 %5712)  ; UMad(a,b,c)
  %5717 = add nsw i32 %5707, -1
  %5718 = call i32 @dx.op.binary.i32(i32 37, i32 %5717, i32 0)  ; IMax(a,b)
  %5719 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %5720 = fptoui float %5719 to i32
  %5721 = lshr i32 %5720, 5
  %5722 = call i32 @dx.op.binary.i32(i32 40, i32 %5721, i32 8191)  ; UMin(a,b)
  %5723 = shl i32 %5722, 2
  %5724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5723, i32 undef)  ; BufferLoad(srv,index,wot)
  %5725 = extractvalue %dx.types.ResRet.i32 %5724, 0
  %5726 = lshr i32 %5725, 16
  %5727 = and i32 %5725, 65535
  %5728 = lshr i32 %5725, 21
  %5729 = lshr i32 %5727, 5
  %5730 = call i32 @dx.op.binary.i32(i32 40, i32 %5729, i32 %5718)  ; UMin(a,b)
  %5731 = icmp ugt i32 %5728, %5730
  br i1 %5731, label %6198, label %5732

; <label>:5732                                    ; preds = %5709
  br label %5733

; <label>:5733                                    ; preds = %6188, %5732
  %5734 = phi i32 [ %6195, %6188 ], [ %5728, %5732 ]
  %5735 = phi float [ %6189, %6188 ], [ %5700, %5732 ]
  %5736 = phi float [ %6190, %6188 ], [ %5701, %5732 ]
  %5737 = phi float [ %6191, %6188 ], [ %5702, %5732 ]
  %5738 = phi float [ %6192, %6188 ], [ %5703, %5732 ]
  %5739 = phi float [ %6193, %6188 ], [ %5704, %5732 ]
  %5740 = phi float [ %6194, %6188 ], [ %5705, %5732 ]
  %5741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.i32 %5741, 0
  %5743 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5716, i32 %5742, i32 %5734)  ; UMad(a,b,c)
  %5744 = shl i32 %5743, 2
  %5745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5744, i32 undef)  ; BufferLoad(srv,index,wot)
  %5746 = extractvalue %dx.types.ResRet.i32 %5745, 0
  %5747 = shl i32 %5734, 5
  %5748 = sub nsw i32 %5726, %5747
  %5749 = call i32 @dx.op.binary.i32(i32 37, i32 %5748, i32 0)  ; IMax(a,b)
  %5750 = call i32 @dx.op.binary.i32(i32 38, i32 %5749, i32 31)  ; IMin(a,b)
  %5751 = sub nsw i32 1, %5726
  %5752 = add nsw i32 %5751, %5727
  %5753 = call i32 @dx.op.binary.i32(i32 37, i32 %5752, i32 0)  ; IMax(a,b)
  %5754 = call i32 @dx.op.binary.i32(i32 38, i32 %5753, i32 32)  ; IMin(a,b)
  %5755 = and i32 %5754, 31
  %5756 = shl i32 -1, %5755
  %5757 = xor i32 %5756, -1
  %5758 = and i32 %5750, 31
  %5759 = shl i32 %5757, %5758
  %5760 = icmp eq i32 %5754, 32
  %5761 = select i1 %5760, i32 -1, i32 %5759
  %5762 = and i32 %5761, %5746
  %5763 = icmp eq i32 %5762, 0
  br i1 %5763, label %6188, label %5764

; <label>:5764                                    ; preds = %5733
  br label %5765

; <label>:5765                                    ; preds = %5845, %5764
  %5766 = phi i32 [ %5777, %5845 ], [ %5762, %5764 ]
  %5767 = phi float [ %5846, %5845 ], [ %5735, %5764 ]
  %5768 = phi float [ %5847, %5845 ], [ %5736, %5764 ]
  %5769 = phi float [ %5848, %5845 ], [ %5737, %5764 ]
  %5770 = phi float [ %5849, %5845 ], [ %5738, %5764 ]
  %5771 = phi float [ %5850, %5845 ], [ %5739, %5764 ]
  %5772 = phi float [ %5851, %5845 ], [ %5740, %5764 ]
  %5773 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5766)  ; FirstbitLo(value)
  %5774 = add i32 %5773, %5747
  %5775 = and i32 %5773, 31
  %5776 = shl i32 1, %5775
  %5777 = xor i32 %5776, %5766
  %5778 = mul i32 %5774, 112
  %5779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5778, i32 undef)  ; BufferLoad(srv,index,wot)
  %5780 = extractvalue %dx.types.ResRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.ResRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.ResRet.f32 %5779, 2
  %5783 = or i32 %5778, 12
  %5784 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5783, i32 undef)  ; BufferLoad(srv,index,wot)
  %5785 = extractvalue %dx.types.ResRet.f32 %5784, 0
  %5786 = add i32 %5778, 44
  %5787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5786, i32 undef)  ; BufferLoad(srv,index,wot)
  %5788 = extractvalue %dx.types.ResRet.f32 %5787, 0
  %5789 = add i32 %5778, 48
  %5790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5789, i32 undef)  ; BufferLoad(srv,index,wot)
  %5791 = extractvalue %dx.types.ResRet.f32 %5790, 0
  %5792 = extractvalue %dx.types.ResRet.f32 %5790, 1
  %5793 = extractvalue %dx.types.ResRet.f32 %5790, 2
  %5794 = add i32 %5778, 80
  %5795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5794, i32 undef)  ; BufferLoad(srv,index,wot)
  %5796 = extractvalue %dx.types.ResRet.f32 %5795, 1
  %5797 = extractvalue %dx.types.ResRet.f32 %5795, 2
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5780, float %5781, float %5782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = select i1 %175, float %5796, float %5780
  %5800 = select i1 %175, float %5798, float %5781
  %5801 = select i1 %175, float %5797, float %5782
  %5802 = fsub fast float %5791, %133
  %5803 = fsub fast float %5792, %134
  %5804 = fsub fast float %5793, %135
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5803, float %5804, float %5802, float %5803, float %5804)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = call float @dx.op.unary.f32(i32 24, float %5805)  ; Sqrt(value)
  %5807 = fdiv fast float 1.000000e+00, %5806
  %5808 = fmul fast float %5807, %5802
  %5809 = fmul fast float %5807, %5803
  %5810 = fmul fast float %5807, %5804
  %5811 = fadd fast float %5806, %5785
  %5812 = fdiv fast float 1.000000e+00, %5811
  %5813 = fmul float %5788, %5812
  %5814 = fmul float %5813, %5813
  %5815 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5816 = and i32 %5776, %5762
  %5817 = icmp eq i32 %5816, 0
  br i1 %5817, label %5840, label %5818, !dx.controlflow.hints !76

; <label>:5818                                    ; preds = %5765
  %5819 = lshr i32 %5710, 5
  %5820 = lshr i32 %5711, 5
  %5821 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5819, i32 %5820, i32 %5774, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5822 = extractvalue %dx.types.ResRet.i32 %5821, 0
  %5823 = and i32 %5822, 3
  %5824 = icmp eq i32 %5823, 0
  %5825 = select i1 %5824, float 1.000000e+00, float 0.000000e+00
  %5826 = icmp eq i32 %5823, 3
  br i1 %5826, label %5827, label %5840

; <label>:5827                                    ; preds = %5818
  %5828 = lshr i32 %5822, 10
  %5829 = and i32 %5828, 8160
  %5830 = and i32 %5711, 31
  %5831 = or i32 %5829, %5830
  %5832 = lshr i32 %5822, 1
  %5833 = and i32 %5832, 16352
  %5834 = and i32 %5710, 31
  %5835 = or i32 %5833, %5834
  %5836 = lshr i32 %5822, 23
  %5837 = and i32 %5836, 255
  %5838 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5835, i32 %5831, i32 %5837, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5839 = extractvalue %dx.types.ResRet.f32 %5838, 0
  br label %5840

; <label>:5840                                    ; preds = %5827, %5818, %5765
  %5841 = phi float [ %5839, %5827 ], [ %5825, %5818 ], [ 0.000000e+00, %5765 ]
  %5842 = call float @dx.op.binary.f32(i32 36, float %5841, float %5841)  ; FMin(a,b)
  %5843 = call float @dx.op.binary.f32(i32 36, float %5841, float %5842)  ; FMin(a,b)
  %5844 = fcmp fast ogt float %5843, 0.000000e+00
  br i1 %5844, label %5853, label %5845, !dx.controlflow.hints !77

; <label>:5845                                    ; preds = %6136, %5840
  %5846 = phi float [ %5767, %5840 ], [ %6184, %6136 ]
  %5847 = phi float [ %5768, %5840 ], [ %6185, %6136 ]
  %5848 = phi float [ %5769, %5840 ], [ %6186, %6136 ]
  %5849 = phi float [ %5770, %5840 ], [ %6175, %6136 ]
  %5850 = phi float [ %5771, %5840 ], [ %6176, %6136 ]
  %5851 = phi float [ %5772, %5840 ], [ %6177, %6136 ]
  %5852 = icmp eq i32 %5766, %5776
  br i1 %5852, label %6187, label %5765

; <label>:5853                                    ; preds = %5840
  %5854 = fmul fast float %5841, %5799
  %5855 = fmul fast float %5841, %5800
  %5856 = fmul fast float %5841, %5801
  %5857 = fsub fast float %5793, %4828
  %5858 = fcmp fast ogt float %5857, 0.000000e+00
  %5859 = fsub fast float %135, %4828
  %5860 = fcmp fast ogt float %5859, 0.000000e+00
  %5861 = xor i1 %5860, %5858
  %5862 = fsub fast float %4828, %5793
  %5863 = fmul fast float %5862, 2.000000e+00
  %5864 = fadd fast float %5863, %5793
  %5865 = select i1 %5861, float %5793, float %5864
  %5866 = fsub fast float %5865, %135
  %5867 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5803, float %5866, float %5802, float %5803, float %5866)  ; Dot3(ax,ay,az,bx,by,bz)
  %5868 = call float @dx.op.unary.f32(i32 25, float %5867)  ; Rsqrt(value)
  %5869 = fmul fast float %5868, %5802
  %5870 = fmul fast float %5868, %5803
  %5871 = fmul fast float %5868, %5866
  %5872 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4836)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5869, float %5870, float %5871)  ; Dot3(ax,ay,az,bx,by,bz)
  %5874 = fdiv fast float 1.000000e+00, %5873
  %5875 = fmul fast float %5874, %5872
  %5876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5859, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = fcmp fast ogt float %5876, 0.000000e+00
  %5878 = fcmp fast olt float %5876, 0.000000e+00
  %5879 = zext i1 %5877 to i32
  %5880 = zext i1 %5878 to i32
  %5881 = sub nsw i32 %5879, %5880
  %5882 = sitofp i32 %5881 to float
  %5883 = fsub fast float %5865, %4828
  %5884 = call float @dx.op.dot3.f32(i32 55, float %5802, float %5803, float %5883, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5885 = fcmp fast ogt float %5884, 0.000000e+00
  %5886 = fcmp fast olt float %5884, 0.000000e+00
  %5887 = zext i1 %5885 to i32
  %5888 = zext i1 %5886 to i32
  %5889 = sub nsw i32 %5887, %5888
  %5890 = sitofp i32 %5889 to float
  %5891 = fcmp fast une float %5882, %5890
  br i1 %5891, label %5892, label %5902

; <label>:5892                                    ; preds = %5853
  %5893 = fmul fast float %5875, %5871
  %5894 = fmul fast float %5875, %5870
  %5895 = fmul fast float %5875, %5869
  %5896 = fmul fast float %5895, %5895
  %5897 = fmul fast float %5894, %5894
  %5898 = fadd fast float %5896, %5897
  %5899 = fmul fast float %5893, %5893
  %5900 = fadd fast float %5898, %5899
  %5901 = call float @dx.op.unary.f32(i32 24, float %5900)  ; Sqrt(value)
  br label %5914

; <label>:5902                                    ; preds = %5853
  %5903 = icmp slt i32 %5881, 0
  br i1 %5903, label %5904, label %5914

; <label>:5904                                    ; preds = %5902
  %5905 = fsub fast float %133, %5791
  %5906 = fsub fast float %134, %5792
  %5907 = fsub fast float %135, %5865
  %5908 = fmul fast float %5905, %5905
  %5909 = fmul fast float %5906, %5906
  %5910 = fadd fast float %5908, %5909
  %5911 = fmul fast float %5907, %5907
  %5912 = fadd fast float %5910, %5911
  %5913 = call float @dx.op.unary.f32(i32 24, float %5912)  ; Sqrt(value)
  br label %5914

; <label>:5914                                    ; preds = %5904, %5902, %5892
  %5915 = phi float [ %5901, %5892 ], [ %5913, %5904 ], [ 0.000000e+00, %5902 ]
  %5916 = and i1 %5860, %5858
  %5917 = fsub fast float -0.000000e+00, %5915
  %5918 = select i1 %5916, float -0.000000e+00, float %5917
  %5919 = fmul fast float %4829, 0x3FF7154760000000
  %5920 = fmul fast float %5919, %5918
  %5921 = fmul fast float %4830, 0x3FF7154760000000
  %5922 = fmul fast float %5921, %5918
  %5923 = fmul fast float %4831, 0x3FF7154760000000
  %5924 = fmul fast float %5923, %5918
  %5925 = call float @dx.op.unary.f32(i32 21, float %5920)  ; Exp(value)
  %5926 = call float @dx.op.unary.f32(i32 21, float %5922)  ; Exp(value)
  %5927 = call float @dx.op.unary.f32(i32 21, float %5924)  ; Exp(value)
  %5928 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5929 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5930 = call float @dx.op.unary.f32(i32 7, float %5927)  ; Saturate(value)
  %5931 = fmul fast float %5854, %5928
  %5932 = fmul fast float %5855, %5929
  %5933 = fmul fast float %5856, %5930
  %5934 = fsub fast float %5808, %5028
  %5935 = fsub fast float %5809, %5027
  %5936 = fsub fast float %5810, %5026
  %5937 = call float @dx.op.dot3.f32(i32 55, float %5934, float %5935, float %5936, float %5934, float %5935, float %5936)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = call float @dx.op.unary.f32(i32 25, float %5937)  ; Rsqrt(value)
  %5939 = fmul fast float %5938, %5934
  %5940 = fmul fast float %5938, %5935
  %5941 = fmul fast float %5938, %5936
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5809, float %5810, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5024, float %5023, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5944 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5945 = fmul fast float %5944, %5815
  %5946 = fmul fast float %5944, %5944
  %5947 = fmul fast float %5946, %5055
  %5948 = call float @dx.op.unary.f32(i32 7, float %5947)  ; Saturate(value)
  %5949 = fmul fast float %5945, %5948
  %5950 = bitcast float %5805 to i32
  %5951 = ashr i32 %5950, 1
  %5952 = sub nsw i32 1597463007, %5951
  %5953 = bitcast i32 %5952 to float
  %5954 = fmul fast float %5953, %5802
  %5955 = fmul fast float %5953, %5803
  %5956 = fmul fast float %5953, %5804
  %5957 = fsub fast float %5954, %5028
  %5958 = fsub fast float %5955, %5027
  %5959 = fsub fast float %5956, %5026
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5957, float %5958, float %5959, float %5957, float %5958, float %5959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = call float @dx.op.unary.f32(i32 25, float %5960)  ; Rsqrt(value)
  %5962 = fmul fast float %5957, %5961
  %5963 = fmul fast float %5958, %5961
  %5964 = fmul fast float %5959, %5961
  %5965 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %5962, float %5963, float %5964)  ; Dot3(ax,ay,az,bx,by,bz)
  %5966 = fmul fast float %5965, %5965
  %5967 = call float @dx.op.unary.f32(i32 6, float %5942)  ; FAbs(value)
  %5968 = fsub fast float 1.000000e+00, %5038
  %5969 = call float @dx.op.binary.f32(i32 35, float %5968, float 0x3F847AE140000000)  ; FMax(a,b)
  %5970 = fmul fast float %5969, %5969
  %5971 = fmul fast float %5970, %5970
  %5972 = fsub fast float 1.000000e+00, %5971
  %5973 = fmul fast float %5042, %5042
  %5974 = fmul fast float %5973, %5972
  %5975 = fadd fast float %5974, %5971
  %5976 = bitcast float %5975 to i32
  %5977 = ashr i32 %5976, 1
  %5978 = add nsw i32 %5977, 532487669
  %5979 = bitcast i32 %5978 to float
  %5980 = fadd fast float %5979, %5042
  %5981 = fmul fast float %5971, %5966
  %5982 = fsub fast float 1.000000e+00, %5966
  %5983 = fadd fast float %5982, %5981
  %5984 = fmul fast float %5967, %5967
  %5985 = fmul fast float %5984, %5972
  %5986 = fadd fast float %5985, %5971
  %5987 = bitcast float %5986 to i32
  %5988 = ashr i32 %5987, 1
  %5989 = add nsw i32 %5988, 532487669
  %5990 = bitcast i32 %5989 to float
  %5991 = fadd fast float %5990, %5967
  %5992 = fmul fast float %5983, %5983
  %5993 = fmul fast float %5992, %5980
  %5994 = fmul fast float %5993, %5991
  %5995 = fdiv fast float 1.000000e+00, %5994
  %5996 = bitcast float %5971 to i32
  %5997 = sitofp i32 %5996 to float
  %5998 = fmul fast float %5997, 0x3FE7F73180000000
  %5999 = fadd fast float %5998, 0x41AFE27C40000000
  %6000 = fptosi float %5999 to i32
  %6001 = bitcast i32 %6000 to float
  %6002 = fmul fast float %5788, 0x3FD80E9D60000000
  %6003 = fmul fast float %6002, %5953
  %6004 = fadd fast float %6001, %6003
  %6005 = bitcast float %6004 to i32
  %6006 = sub nsw i32 2129859010, %6005
  %6007 = bitcast i32 %6006 to float
  %6008 = fmul fast float %5971, %5995
  %6009 = fmul fast float %6008, %6001
  %6010 = fmul fast float %6009, %6007
  %6011 = call float @dx.op.unary.f32(i32 6, float %5943)  ; FAbs(value)
  %6012 = fsub fast float 1.000000e+00, %6011
  %6013 = bitcast float %6012 to i32
  %6014 = sitofp i32 %6013 to float
  %6015 = fmul fast float %6014, 5.000000e+00
  %6016 = fadd fast float %6015, 0xC1EFBF8940000000
  %6017 = fptosi float %6016 to i32
  %6018 = bitcast i32 %6017 to float
  %6019 = fsub fast float 1.000000e+00, %5035
  %6020 = fsub fast float 1.000000e+00, %5036
  %6021 = fsub fast float 1.000000e+00, %5040
  %6022 = fmul fast float %6018, %6019
  %6023 = fmul fast float %6018, %6020
  %6024 = fmul fast float %6018, %6021
  %6025 = fadd fast float %6022, %5035
  %6026 = fadd fast float %6023, %5036
  %6027 = fadd fast float %6024, %5040
  br i1 %5312, label %6028, label %6051

; <label>:6028                                    ; preds = %5914
  %6029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %6011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6030 = extractvalue %dx.types.ResRet.f32 %6029, 0
  %6031 = extractvalue %dx.types.ResRet.f32 %6029, 1
  %6032 = extractvalue %dx.types.ResRet.f32 %6029, 2
  %6033 = fadd fast float %6030, -5.000000e-01
  %6034 = fadd fast float %6031, -5.000000e-01
  %6035 = fadd fast float %6032, -5.000000e-01
  %6036 = fmul fast float %5035, 4.000000e+00
  %6037 = fmul fast float %6036, %6019
  %6038 = fmul fast float %6037, %6033
  %6039 = fmul fast float %5036, 4.000000e+00
  %6040 = fmul fast float %6039, %6020
  %6041 = fmul fast float %6040, %6034
  %6042 = fmul fast float %5040, 4.000000e+00
  %6043 = fmul fast float %6042, %6021
  %6044 = fmul fast float %6043, %6035
  %6045 = fadd fast float %6038, %6025
  %6046 = fadd fast float %6041, %6026
  %6047 = fadd fast float %6044, %6027
  %6048 = call float @dx.op.unary.f32(i32 7, float %6045)  ; Saturate(value)
  %6049 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  %6050 = call float @dx.op.unary.f32(i32 7, float %6047)  ; Saturate(value)
  br label %6051

; <label>:6051                                    ; preds = %6028, %5914
  %6052 = phi float [ %6048, %6028 ], [ %6025, %5914 ]
  %6053 = phi float [ %6049, %6028 ], [ %6026, %5914 ]
  %6054 = phi float [ %6050, %6028 ], [ %6027, %5914 ]
  %6055 = fmul fast float %5942, 9.843750e-01
  %6056 = fadd fast float %6055, 7.812500e-03
  %6057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6056, float %5302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6058 = extractvalue %dx.types.ResRet.f32 %6057, 2
  %6059 = extractvalue %dx.types.ResRet.f32 %6057, 3
  %6060 = fmul fast float %6058, %5035
  %6061 = fmul fast float %6058, %5036
  %6062 = fmul fast float %6058, %5040
  %6063 = fadd fast float %6060, %6059
  %6064 = fadd fast float %6061, %6059
  %6065 = fadd fast float %6062, %6059
  br i1 %5312, label %6066, label %6089

; <label>:6066                                    ; preds = %6051
  %6067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6068 = extractvalue %dx.types.ResRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.ResRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.ResRet.f32 %6067, 2
  %6071 = fadd fast float %6068, -5.000000e-01
  %6072 = fadd fast float %6069, -5.000000e-01
  %6073 = fadd fast float %6070, -5.000000e-01
  %6074 = fmul fast float %5035, 4.000000e+00
  %6075 = fmul fast float %6074, %6019
  %6076 = fmul fast float %6075, %6071
  %6077 = fmul fast float %5036, 4.000000e+00
  %6078 = fmul fast float %6077, %6020
  %6079 = fmul fast float %6078, %6072
  %6080 = fmul fast float %5040, 4.000000e+00
  %6081 = fmul fast float %6080, %6021
  %6082 = fmul fast float %6081, %6073
  %6083 = fadd fast float %6076, %6063
  %6084 = fadd fast float %6079, %6064
  %6085 = fadd fast float %6082, %6065
  %6086 = call float @dx.op.unary.f32(i32 7, float %6083)  ; Saturate(value)
  %6087 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6088 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  br label %6089

; <label>:6089                                    ; preds = %6066, %6051
  %6090 = phi float [ %6086, %6066 ], [ %6063, %6051 ]
  %6091 = phi float [ %6087, %6066 ], [ %6064, %6051 ]
  %6092 = phi float [ %6088, %6066 ], [ %6065, %6051 ]
  %6093 = call float @dx.op.binary.f32(i32 35, float %6091, float %6092)  ; FMax(a,b)
  %6094 = call float @dx.op.binary.f32(i32 35, float %6090, float %6093)  ; FMax(a,b)
  %6095 = fsub fast float 1.000000e+00, %6094
  %6096 = fsub fast float -0.000000e+00, %5032
  %6097 = fsub fast float -0.000000e+00, %5033
  %6098 = fsub fast float -0.000000e+00, %5034
  %6099 = call float @dx.op.dot3.f32(i32 55, float %5808, float %5809, float %5810, float %6096, float %6097, float %6098)  ; Dot3(ax,ay,az,bx,by,bz)
  %6100 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6101 = fmul fast float %6100, %5815
  %6102 = fmul fast float %6100, 9.843750e-01
  %6103 = fadd fast float %6102, 7.812500e-03
  %6104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6103, float %5302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 2
  %6106 = extractvalue %dx.types.ResRet.f32 %6104, 3
  %6107 = fmul fast float %6105, %5035
  %6108 = fmul fast float %6105, %5036
  %6109 = fmul fast float %6105, %5040
  %6110 = fadd fast float %6107, %6106
  %6111 = fadd fast float %6108, %6106
  %6112 = fadd fast float %6109, %6106
  br i1 %5312, label %6113, label %6136

; <label>:6113                                    ; preds = %6089
  %6114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4337, float %6100, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6115 = extractvalue %dx.types.ResRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.ResRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.ResRet.f32 %6114, 2
  %6118 = fadd fast float %6115, -5.000000e-01
  %6119 = fadd fast float %6116, -5.000000e-01
  %6120 = fadd fast float %6117, -5.000000e-01
  %6121 = fmul fast float %5035, 4.000000e+00
  %6122 = fmul fast float %6121, %6019
  %6123 = fmul fast float %6122, %6118
  %6124 = fmul fast float %5036, 4.000000e+00
  %6125 = fmul fast float %6124, %6020
  %6126 = fmul fast float %6125, %6119
  %6127 = fmul fast float %5040, 4.000000e+00
  %6128 = fmul fast float %6127, %6021
  %6129 = fmul fast float %6128, %6120
  %6130 = fadd fast float %6123, %6110
  %6131 = fadd fast float %6126, %6111
  %6132 = fadd fast float %6129, %6112
  %6133 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  %6134 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6135 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  br label %6136

; <label>:6136                                    ; preds = %6113, %6089
  %6137 = phi float [ %6133, %6113 ], [ %6110, %6089 ]
  %6138 = phi float [ %6134, %6113 ], [ %6111, %6089 ]
  %6139 = phi float [ %6135, %6113 ], [ %6112, %6089 ]
  %6140 = call float @dx.op.binary.f32(i32 35, float %6138, float %6139)  ; FMax(a,b)
  %6141 = call float @dx.op.binary.f32(i32 35, float %6137, float %6140)  ; FMax(a,b)
  %6142 = fsub fast float 1.000000e+00, %6141
  %6143 = fmul fast float %6101, %6142
  %6144 = fmul fast float %6143, %4451
  %6145 = fmul fast float %6143, %4452
  %6146 = fmul fast float %6143, %4453
  %6147 = fmul fast float %6052, %6010
  %6148 = fmul fast float %6053, %6010
  %6149 = fmul fast float %6054, %6010
  %6150 = fsub fast float 1.000000e+00, %5943
  %6151 = bitcast float %6150 to i32
  %6152 = sitofp i32 %6151 to float
  %6153 = fmul fast float %6152, 5.000000e+00
  %6154 = fadd fast float %6153, 0xC1EFBF8940000000
  %6155 = fptosi float %6154 to i32
  %6156 = bitcast i32 %6155 to float
  %6157 = fmul fast float %6156, %4336
  %6158 = fmul fast float %6095, %6157
  %6159 = fmul fast float %6158, %5359
  %6160 = fmul fast float %6158, %5360
  %6161 = fmul fast float %6158, %5361
  %6162 = fmul fast float %6095, %5949
  %6163 = fadd fast float %6159, %6147
  %6164 = fadd fast float %6160, %6148
  %6165 = fadd fast float %6161, %6149
  %6166 = fadd fast float %6144, %6162
  %6167 = fadd fast float %6145, %6162
  %6168 = fadd fast float %6146, %6162
  %6169 = fmul fast float %5931, %4360
  %6170 = fmul fast float %6169, %6166
  %6171 = fmul fast float %5932, %4360
  %6172 = fmul fast float %6171, %6167
  %6173 = fmul fast float %5933, %4360
  %6174 = fmul fast float %6173, %6168
  %6175 = fadd fast float %6170, %5770
  %6176 = fadd fast float %6172, %5771
  %6177 = fadd fast float %6174, %5772
  %6178 = fmul fast float %6169, %5949
  %6179 = fmul fast float %6178, %6163
  %6180 = fmul fast float %6171, %5949
  %6181 = fmul fast float %6180, %6164
  %6182 = fmul fast float %6173, %5949
  %6183 = fmul fast float %6182, %6165
  %6184 = fadd fast float %6179, %5767
  %6185 = fadd fast float %6181, %5768
  %6186 = fadd fast float %6183, %5769
  br label %5845

; <label>:6187                                    ; preds = %5845
  br label %6188

; <label>:6188                                    ; preds = %6187, %5733
  %6189 = phi float [ %5735, %5733 ], [ %5846, %6187 ]
  %6190 = phi float [ %5736, %5733 ], [ %5847, %6187 ]
  %6191 = phi float [ %5737, %5733 ], [ %5848, %6187 ]
  %6192 = phi float [ %5738, %5733 ], [ %5849, %6187 ]
  %6193 = phi float [ %5739, %5733 ], [ %5850, %6187 ]
  %6194 = phi float [ %5740, %5733 ], [ %5851, %6187 ]
  %6195 = add i32 %5734, 1
  %6196 = icmp ugt i32 %6195, %5730
  br i1 %6196, label %6197, label %5733

; <label>:6197                                    ; preds = %6188
  br label %6198

; <label>:6198                                    ; preds = %6197, %5709, %5699
  %6199 = phi float [ %5700, %5699 ], [ %5700, %5709 ], [ %6189, %6197 ]
  %6200 = phi float [ %5701, %5699 ], [ %5701, %5709 ], [ %6190, %6197 ]
  %6201 = phi float [ %5702, %5699 ], [ %5702, %5709 ], [ %6191, %6197 ]
  %6202 = phi float [ %5703, %5699 ], [ %5703, %5709 ], [ %6192, %6197 ]
  %6203 = phi float [ %5704, %5699 ], [ %5704, %5709 ], [ %6193, %6197 ]
  %6204 = phi float [ %5705, %5699 ], [ %5705, %5709 ], [ %6194, %6197 ]
  %6205 = call float @dx.op.unary.f32(i32 24, float %5029)  ; Sqrt(value)
  %6206 = call float @dx.op.unary.f32(i32 24, float %5030)  ; Sqrt(value)
  %6207 = call float @dx.op.unary.f32(i32 24, float %5031)  ; Sqrt(value)
  %6208 = fmul fast float %6205, %6202
  %6209 = fmul fast float %6206, %6203
  %6210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6211 = extractvalue %dx.types.CBufRet.f32 %6210, 0
  br i1 %175, label %6212, label %6232

; <label>:6212                                    ; preds = %6198
  %6213 = fadd fast float %6204, %4334
  %6214 = fmul fast float %6213, %4335
  %6215 = fsub fast float 1.000000e+00, %4335
  %6216 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 3
  %6219 = fmul fast float %6218, %6216
  %6220 = fadd fast float %6219, %6214
  %6221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6222 = extractvalue %dx.types.CBufRet.f32 %6221, 0
  %6223 = fmul fast float %6222, %5365
  %6224 = fsub fast float %6220, %6223
  %6225 = fadd fast float %6209, %6208
  %6226 = fmul fast float %6211, %6225
  %6227 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6228 = fsub fast float %6224, %6227
  %6229 = extractvalue %dx.types.CBufRet.f32 %6217, 2
  %6230 = fmul fast float %6228, %6229
  %6231 = call float @dx.op.unary.f32(i32 7, float %6230)  ; Saturate(value)
  br label %6248

; <label>:6232                                    ; preds = %6198
  %6233 = fmul fast float %6207, %6204
  %6234 = fmul fast float %6211, %6208
  %6235 = fmul fast float %6211, %6209
  %6236 = fmul fast float %6233, %6211
  %6237 = add i32 %35, 356
  %6238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6237, i32 undef)  ; BufferLoad(srv,index,wot)
  %6239 = extractvalue %dx.types.ResRet.i32 %6238, 0
  %6240 = and i32 %6239, 32
  %6241 = icmp eq i32 %6240, 0
  br i1 %6241, label %6248, label %6242

; <label>:6242                                    ; preds = %6232
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 0
  %6245 = fmul fast float %6244, 0x3FE99999A0000000
  %6246 = fadd fast float %6244, %6234
  %6247 = fadd fast float %6245, %6236
  br label %6248

; <label>:6248                                    ; preds = %6242, %6232, %6212
  %6249 = phi float [ %6226, %6212 ], [ %6246, %6242 ], [ %6234, %6232 ]
  %6250 = phi float [ %6231, %6212 ], [ %6235, %6242 ], [ %6235, %6232 ]
  %6251 = phi float [ 1.000000e+00, %6212 ], [ %6247, %6242 ], [ %6236, %6232 ]
  %6252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6253 = extractvalue %dx.types.CBufRet.f32 %6252, 0
  %6254 = fmul fast float %6253, %6200
  %6255 = fmul fast float %6253, %6201
  %6256 = fadd fast float %6200, %6199
  %6257 = select i1 %175, float %6256, float %6199
  %6258 = fmul float %6257, %6253
  %6259 = select i1 %175, float 0.000000e+00, float %6254
  %6260 = select i1 %175, float 0.000000e+00, float %6255
  %6261 = fmul fast float %6249, %6205
  %6262 = fmul fast float %6250, %6206
  %6263 = fmul fast float %6251, %6207
  %6264 = fadd fast float %6258, %6261
  %6265 = fadd fast float %6259, %6262
  %6266 = fadd fast float %6260, %6263
  %6267 = select i1 %175, float %6250, float %6265
  %6268 = select i1 %175, float %6251, float %6266
  %6269 = call float @dx.op.binary.f32(i32 36, float %6264, float 3.225500e+04)  ; FMin(a,b)
  %6270 = call float @dx.op.binary.f32(i32 36, float %6267, float 3.225500e+04)  ; FMin(a,b)
  %6271 = call float @dx.op.binary.f32(i32 36, float %6268, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6269)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6270)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6271)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
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
!68 = !{i32 3, i32 5}
!69 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !52, i8 1, i32 1, i8 1, i32 11, i8 0, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

