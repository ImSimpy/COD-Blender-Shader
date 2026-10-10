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
; shader hash: 6d2c329e55cac3ce5fec779a85e5930a
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
  %359 = add i32 %35, 492
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
  br i1 %412, label %871, label %413

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
  %517 = add i32 %35, 376
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
  %540 = add i32 %35, 460
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
  %738 = add i32 %35, 392
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
  %822 = add i32 %35, 408
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
  %858 = add i32 %35, 96
  %859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %858, i32 undef)  ; BufferLoad(srv,index,wot)
  %860 = extractvalue %dx.types.ResRet.i32 %859, 0
  %861 = and i32 %860, 255
  %862 = uitofp i32 %861 to float
  %863 = lshr i32 %860, 8
  %864 = and i32 %863, 255
  %865 = uitofp i32 %864 to float
  %866 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %867 = fmul fast float %865, %866
  %868 = fadd fast float %867, %862
  %869 = fmul fast float %868, 0x3F70101020000000
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  br label %871

; <label>:871                                     ; preds = %854, %398
  %872 = phi float [ 0.000000e+00, %398 ], [ %808, %854 ]
  %873 = phi float [ 0.000000e+00, %398 ], [ %809, %854 ]
  %874 = phi float [ 0.000000e+00, %398 ], [ %727, %854 ]
  %875 = phi float [ 0.000000e+00, %398 ], [ %728, %854 ]
  %876 = phi float [ 0.000000e+00, %398 ], [ %729, %854 ]
  %877 = phi float [ 0.000000e+00, %398 ], [ %855, %854 ]
  %878 = phi float [ 0.000000e+00, %398 ], [ %856, %854 ]
  %879 = phi float [ 0.000000e+00, %398 ], [ %857, %854 ]
  %880 = phi float [ 0.000000e+00, %398 ], [ %713, %854 ]
  %881 = phi float [ 0.000000e+00, %398 ], [ 1.000000e+00, %854 ]
  %882 = phi float [ 0.000000e+00, %398 ], [ %807, %854 ]
  %883 = phi float [ 0.000000e+00, %398 ], [ %810, %854 ]
  %884 = phi float [ 0.000000e+00, %398 ], [ %870, %854 ]
  br i1 %349, label %1726, label %885

; <label>:885                                     ; preds = %871
  %886 = icmp ult i32 %404, 2
  %887 = add i32 %35, 40
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = add i32 %35, 44
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %890, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = or i32 %892, %889
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %1726, label %895

; <label>:895                                     ; preds = %885
  %896 = and i32 %889, 262144
  %897 = icmp ne i32 %896, 0
  %898 = select i1 %897, float %38, float 1.000000e+00
  %899 = select i1 %897, float %39, float 0.000000e+00
  %900 = select i1 %897, float %40, float 0.000000e+00
  %901 = select i1 %897, float %41, float 1.000000e+00
  %902 = select i1 %897, float %42, float %63
  %903 = select i1 %897, float %43, float %64
  %904 = add i32 %35, 300
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = lshr i32 %906, 16
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = fmul fast float %908, 0x3F50624DE0000000
  %910 = add i32 %35, 104
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = lshr i32 %912, 16
  %914 = and i32 %913, 255
  %915 = lshr i32 %912, 24
  %916 = add i32 %35, 308
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 65535
  %920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %919)  ; LegacyF16ToF32(value)
  %921 = lshr i32 %918, 16
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = add i32 %35, 48
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = lshr i32 %925, 22
  %927 = shl nuw nsw i32 %926, 5
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = shl i32 %925, 4
  %930 = and i32 %929, 32752
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = lshr i32 %925, 7
  %933 = and i32 %932, 32752
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %936 = extractvalue %dx.types.CBufRet.f32 %935, 3
  %937 = fmul fast float %936, 1.000000e+03
  %938 = fmul fast float %259, %937
  %939 = call float @dx.op.unary.f32(i32 22, float %938)  ; Frc(value)
  %940 = fadd fast float %939, %249
  %941 = fmul fast float %260, %937
  %942 = call float @dx.op.unary.f32(i32 22, float %941)  ; Frc(value)
  %943 = fadd fast float %942, %251
  %944 = fmul fast float %909, %937
  %945 = call float @dx.op.unary.f32(i32 22, float %944)  ; Frc(value)
  %946 = fmul fast float %945, 0x401921FB60000000
  %947 = fadd fast float %946, %928
  %948 = call float @dx.op.unary.f32(i32 13, float %947)  ; Sin(value)
  %949 = call float @dx.op.unary.f32(i32 12, float %947)  ; Cos(value)
  %950 = fsub fast float -0.000000e+00, %948
  %951 = fadd fast float %902, -5.000000e-01
  %952 = fadd fast float %903, -5.000000e-01
  %953 = fmul fast float %920, %951
  %954 = fmul fast float %922, %952
  %955 = fadd fast float %953, 5.000000e-01
  %956 = fadd fast float %954, 5.000000e-01
  %957 = fmul fast float %931, %955
  %958 = fmul fast float %934, %956
  %959 = fmul fast float %949, %957
  %960 = call float @dx.op.tertiary.f32(i32 46, float %950, float %958, float %959)  ; FMad(a,b,c)
  %961 = fmul fast float %948, %957
  %962 = call float @dx.op.tertiary.f32(i32 46, float %949, float %958, float %961)  ; FMad(a,b,c)
  %963 = fadd fast float %940, %960
  %964 = fadd fast float %943, %962
  %965 = icmp ugt i32 %914, 1
  %966 = icmp ugt i32 %912, 33554431
  %967 = or i1 %966, %965
  br i1 %967, label %968, label %993

; <label>:968                                     ; preds = %895
  %969 = add i32 %35, 244
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = lshr i32 %971, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = fmul fast float %936, %973
  %975 = call float @dx.op.unary.f32(i32 22, float %974)  ; Frc(value)
  %976 = mul nuw nsw i32 %914, %915
  %977 = uitofp i32 %976 to float
  %978 = fmul fast float %975, %977
  %979 = call float @dx.op.unary.f32(i32 27, float %978)  ; Round_ni(value)
  %980 = fptoui float %979 to i32
  %981 = urem i32 %980, %914
  %982 = udiv i32 %980, %915
  %983 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %984 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %985 = uitofp i32 %981 to float
  %986 = uitofp i32 %982 to float
  %987 = fadd fast float %983, %985
  %988 = fadd fast float %984, %986
  %989 = uitofp i32 %914 to float
  %990 = uitofp i32 %915 to float
  %991 = fdiv fast float %987, %989
  %992 = fdiv fast float %988, %990
  br label %993

; <label>:993                                     ; preds = %968, %895
  %994 = phi float [ %991, %968 ], [ %963, %895 ]
  %995 = phi float [ %992, %968 ], [ %964, %895 ]
  %996 = and i32 %889, 16777216
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1107, label %998

; <label>:998                                     ; preds = %993
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1002 = extractvalue %dx.types.CBufRet.f32 %999, 2
  %1003 = fadd fast float %1000, %134
  %1004 = fadd fast float %1001, %135
  %1005 = fadd fast float %1002, %136
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = icmp eq i32 %36, 65535
  br i1 %1009, label %1104, label %1010

; <label>:1010                                    ; preds = %998
  %1011 = lshr i32 %36, 1
  %1012 = shl i32 %1011, 2
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %36, 1
  %1016 = icmp ne i32 %1015, 0
  %1017 = lshr i32 %1014, 16
  %1018 = and i32 %1014, 65535
  %1019 = select i1 %1016, i32 %1017, i32 %1018
  %1020 = icmp eq i32 %1019, 65535
  br i1 %1020, label %1100, label %1021

; <label>:1021                                    ; preds = %1010
  %1022 = mul nuw nsw i32 %1019, 40
  %1023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = add nuw nsw i32 %1022, 12
  %1028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = add nuw nsw i32 %1022, 24
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = add nuw nsw i32 %1022, 36
  %1038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.f32 %1038, 0
  %1040 = fsub fast float %1003, %1024
  %1041 = fsub fast float %1004, %1025
  %1042 = fsub fast float %1005, %1026
  %1043 = fmul fast float %1039, %1040
  %1044 = fmul fast float %1039, %1041
  %1045 = fmul fast float %1039, %1042
  %1046 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1047 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1048 = call float @dx.op.unary.f32(i32 27, float %1045)  ; Round_ni(value)
  %1049 = fadd fast float %1046, 5.000000e-01
  %1050 = fadd fast float %1047, 5.000000e-01
  %1051 = fadd fast float %1048, 5.000000e-01
  %1052 = fmul fast float %1049, %1029
  %1053 = fmul fast float %1050, %1030
  %1054 = fmul fast float %1051, %1031
  %1055 = shl i32 %36, 2
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = add i32 %1057, 0
  %1059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1060 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1061 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1062 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1059, %dx.types.Handle %30, float %1060, float %1061, float %1062, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = fmul fast float %1064, 1.023000e+03
  %1068 = fmul fast float %1065, 1.023000e+03
  %1069 = fmul fast float %1066, 1.023000e+03
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = call float @dx.op.unary.f32(i32 27, float %1071)  ; Round_ni(value)
  %1075 = call float @dx.op.unary.f32(i32 27, float %1072)  ; Round_ni(value)
  %1076 = fsub fast float %1043, %1046
  %1077 = fsub fast float %1044, %1047
  %1078 = fsub fast float %1045, %1048
  %1079 = fmul fast float %1076, 7.500000e-01
  %1080 = fmul fast float %1077, 7.500000e-01
  %1081 = fmul fast float %1078, 7.500000e-01
  %1082 = fadd fast float %1046, 1.250000e-01
  %1083 = fadd fast float %1082, %1079
  %1084 = fadd fast float %1083, %1073
  %1085 = fadd fast float %1047, 1.250000e-01
  %1086 = fadd fast float %1085, %1080
  %1087 = fadd fast float %1086, %1074
  %1088 = fadd fast float %1048, 1.250000e-01
  %1089 = fadd fast float %1088, %1081
  %1090 = fadd fast float %1089, %1075
  %1091 = fmul fast float %1084, %1034
  %1092 = fmul fast float %1087, %1035
  %1093 = fmul fast float %1090, %1036
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = add i32 %1095, 0
  %1097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1096, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %28, float %1091, float %1092, float %1093, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1099 = extractvalue %dx.types.ResRet.f32 %1098, 0
  br label %1100

; <label>:1100                                    ; preds = %1021, %1010
  %1101 = phi float [ %1099, %1021 ], [ -1.000000e+00, %1010 ]
  %1102 = fadd fast float %1101, %1008
  %1103 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  br label %1104

; <label>:1104                                    ; preds = %1100, %998
  %1105 = phi float [ %1103, %1100 ], [ %1008, %998 ]
  %1106 = fmul fast float %1105, %401
  br label %1107

; <label>:1107                                    ; preds = %1104, %993
  %1108 = phi float [ %1106, %1104 ], [ %401, %993 ]
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 256
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1159, label %1113

; <label>:1113                                    ; preds = %1107
  %1114 = add i32 %35, 444
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %1116, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1118, %dx.types.Handle %72, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = add i32 %35, 116
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = shl i32 %1123, 4
  %1125 = and i32 %1124, 32752
  %1126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1125)  ; LegacyF16ToF32(value)
  %1127 = lshr i32 %1123, 7
  %1128 = and i32 %1127, 32752
  %1129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1128)  ; LegacyF16ToF32(value)
  %1130 = fsub fast float 1.000000e+00, %1108
  %1131 = call float @dx.op.binary.f32(i32 35, float %1130, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1132 = bitcast float %1108 to i32
  %1133 = sitofp i32 %1132 to float
  %1134 = fadd fast float %1133, 0xC1CFBF8940000000
  %1135 = fmul fast float %1129, %1134
  %1136 = fadd fast float %1135, 0x41CFBF8940000000
  %1137 = fptosi float %1136 to i32
  %1138 = bitcast i32 %1137 to float
  %1139 = bitcast float %1131 to i32
  %1140 = sitofp i32 %1139 to float
  %1141 = fadd fast float %1140, 0xC1CFBF8940000000
  %1142 = fmul fast float %1141, %1129
  %1143 = fadd fast float %1142, 0x41CFBF8940000000
  %1144 = fptosi float %1143 to i32
  %1145 = bitcast i32 %1144 to float
  %1146 = fmul fast float %1138, %1126
  %1147 = fmul fast float %1145, %1126
  %1148 = fsub fast float %1131, %1146
  %1149 = fadd fast float %1147, %1131
  %1150 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  %1151 = call float @dx.op.unary.f32(i32 7, float %1149)  ; Saturate(value)
  %1152 = fsub fast float %1120, %1150
  %1153 = fsub fast float %1151, %1150
  %1154 = bitcast float %1153 to i32
  %1155 = sub nsw i32 2129859010, %1154
  %1156 = bitcast i32 %1155 to float
  %1157 = fmul fast float %1156, %1152
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  br label %1159

; <label>:1159                                    ; preds = %1113, %1107
  %1160 = phi float [ %1158, %1113 ], [ %1108, %1107 ]
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 128
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1181, label %1165

; <label>:1165                                    ; preds = %1159
  %1166 = add i32 %35, 428
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1170, %dx.types.Handle %72, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 524288
  %1176 = icmp ne i32 %1175, 0
  %1177 = fcmp fast ogt float %1172, 0x3FE0101020000000
  %1178 = select i1 %1177, float 1.000000e+00, float 0.000000e+00
  %1179 = select i1 %1176, float %1178, float %1172
  %1180 = fmul fast float %1179, %1160
  br label %1181

; <label>:1181                                    ; preds = %1165, %1159
  %1182 = phi float [ %1180, %1165 ], [ %1160, %1159 ]
  %1183 = fcmp fast ult float %1182, 0x3F70101020000000
  br i1 %1183, label %1726, label %1184

; <label>:1184                                    ; preds = %1181
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 16
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1387, label %1189

; <label>:1189                                    ; preds = %1184
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %35, 380
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = add i32 %1194, 0
  %1196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1197 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1196, %dx.types.Handle %71, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1198 = extractvalue %dx.types.ResRet.f32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.f32 %1197, 1
  %1200 = extractvalue %dx.types.ResRet.f32 %1197, 2
  %1201 = extractvalue %dx.types.ResRet.f32 %1197, 3
  %1202 = and i32 %1191, 255
  %1203 = uitofp i32 %1202 to float
  %1204 = lshr i32 %1191, 8
  %1205 = and i32 %1204, 255
  %1206 = uitofp i32 %1205 to float
  %1207 = fmul fast float %1201, %1203
  %1208 = fadd fast float %1207, %1206
  %1209 = fmul fast float %1208, 0x3F70101000000000
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 512
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1222, label %1214

; <label>:1214                                    ; preds = %1189
  %1215 = add i32 %35, 464
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %1217, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %72, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  br label %1222

; <label>:1222                                    ; preds = %1214, %1189
  %1223 = phi float [ %1221, %1214 ], [ 1.000000e+00, %1189 ]
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 33554432
  %1227 = icmp eq i32 %1226, 0
  br i1 %1227, label %1334, label %1228

; <label>:1228                                    ; preds = %1222
  %1229 = add i32 %35, 240
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = and i32 %1231, 65535
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = lshr i32 %1231, 16
  %1235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1234)  ; LegacyF16ToF32(value)
  %1236 = add i32 %35, 244
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 65535
  %1240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1239)  ; LegacyF16ToF32(value)
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = lshr i32 %1242, 24
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = and i32 %1242, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = fmul fast float %1247, 0x3F70101020000000
  %1249 = lshr i32 %1242, 8
  %1250 = and i32 %1249, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1251, 0x3F70101020000000
  %1253 = lshr i32 %1242, 16
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = add i32 %35, 236
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = lshr i32 %1259, 24
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = and i32 %1259, 255
  %1264 = uitofp i32 %1263 to float
  %1265 = fmul fast float %1264, 0x3F70101020000000
  %1266 = lshr i32 %1259, 8
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101020000000
  %1270 = lshr i32 %1259, 16
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101020000000
  %1274 = bitcast float %1198 to i32
  %1275 = ashr i32 %1274, 1
  %1276 = sub nsw i32 1597463174, %1275
  %1277 = bitcast i32 %1276 to float
  %1278 = fmul fast float %1198, 5.000000e-01
  %1279 = fmul fast float %1277, %1277
  %1280 = fmul fast float %1279, %1278
  %1281 = fsub fast float 1.500000e+00, %1280
  %1282 = fmul fast float %1277, %1198
  %1283 = fmul fast float %1282, %1281
  %1284 = bitcast float %1199 to i32
  %1285 = ashr i32 %1284, 1
  %1286 = sub nsw i32 1597463174, %1285
  %1287 = bitcast i32 %1286 to float
  %1288 = fmul fast float %1199, 5.000000e-01
  %1289 = fmul fast float %1287, %1287
  %1290 = fmul fast float %1289, %1288
  %1291 = fsub fast float 1.500000e+00, %1290
  %1292 = fmul fast float %1287, %1199
  %1293 = fmul fast float %1292, %1291
  %1294 = bitcast float %1200 to i32
  %1295 = ashr i32 %1294, 1
  %1296 = sub nsw i32 1597463174, %1295
  %1297 = bitcast i32 %1296 to float
  %1298 = fmul fast float %1200, 5.000000e-01
  %1299 = fmul fast float %1297, %1297
  %1300 = fmul fast float %1299, %1298
  %1301 = fsub fast float 1.500000e+00, %1300
  %1302 = fmul fast float %1297, %1200
  %1303 = fmul fast float %1302, %1301
  %1304 = fsub fast float %1283, %1265
  %1305 = fsub fast float %1293, %1269
  %1306 = fsub fast float %1303, %1273
  %1307 = fmul fast float %1304, %1233
  %1308 = fmul fast float %1305, %1235
  %1309 = fmul fast float %1306, %1240
  %1310 = fadd fast float %1307, %1248
  %1311 = fadd fast float %1308, %1252
  %1312 = fadd fast float %1309, %1256
  %1313 = call float @dx.op.unary.f32(i32 7, float %1310)  ; Saturate(value)
  %1314 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1315 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1316 = fmul fast float %1313, %1313
  %1317 = fmul fast float %1314, %1314
  %1318 = fmul fast float %1315, %1315
  %1319 = fsub fast float %1316, %1198
  %1320 = fsub fast float %1317, %1199
  %1321 = fsub fast float %1318, %1200
  %1322 = fmul fast float %1319, %1223
  %1323 = fmul fast float %1320, %1223
  %1324 = fmul fast float %1321, %1223
  %1325 = fadd fast float %1322, %1198
  %1326 = fadd fast float %1323, %1199
  %1327 = fadd fast float %1324, %1200
  %1328 = fadd fast float %1245, %1209
  %1329 = fsub fast float %1328, %1262
  %1330 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1331 = fsub fast float %1330, %1209
  %1332 = fmul fast float %1331, %1223
  %1333 = fadd fast float %1332, %1209
  br label %1387

; <label>:1334                                    ; preds = %1222
  %1335 = and i32 %1225, 134217728
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1371, label %1337

; <label>:1337                                    ; preds = %1334
  %1338 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1339 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1340 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1341 = fadd fast float %1338, -5.000000e-01
  %1342 = fadd fast float %1339, -5.000000e-01
  %1343 = fadd fast float %1340, -5.000000e-01
  %1344 = fmul fast float %1341, %1223
  %1345 = fmul fast float %1342, %1223
  %1346 = fmul fast float %1343, %1223
  %1347 = fadd fast float %1344, 5.000000e-01
  %1348 = fadd fast float %1345, 5.000000e-01
  %1349 = fadd fast float %1346, 5.000000e-01
  %1350 = call float @dx.op.unary.f32(i32 24, float %1198)  ; Sqrt(value)
  %1351 = call float @dx.op.unary.f32(i32 24, float %1199)  ; Sqrt(value)
  %1352 = call float @dx.op.unary.f32(i32 24, float %1200)  ; Sqrt(value)
  %1353 = fmul fast float %1347, 2.000000e+00
  %1354 = fsub fast float 1.000000e+00, %1353
  %1355 = fmul fast float %1354, %1350
  %1356 = fadd fast float %1355, %1353
  %1357 = fmul fast float %1356, %1350
  %1358 = fmul fast float %1348, 2.000000e+00
  %1359 = fsub fast float 1.000000e+00, %1358
  %1360 = fmul fast float %1359, %1351
  %1361 = fadd fast float %1360, %1358
  %1362 = fmul fast float %1361, %1351
  %1363 = fmul fast float %1349, 2.000000e+00
  %1364 = fsub fast float 1.000000e+00, %1363
  %1365 = fmul fast float %1364, %1352
  %1366 = fadd fast float %1365, %1363
  %1367 = fmul fast float %1366, %1352
  %1368 = fmul fast float %1357, %1357
  %1369 = fmul fast float %1362, %1362
  %1370 = fmul fast float %1367, %1367
  br label %1387

; <label>:1371                                    ; preds = %1334
  %1372 = fmul fast float %236, %236
  %1373 = fmul fast float %240, %240
  %1374 = fmul fast float %244, %244
  %1375 = fadd fast float %1372, -1.000000e+00
  %1376 = fadd fast float %1373, -1.000000e+00
  %1377 = fadd fast float %1374, -1.000000e+00
  %1378 = fmul fast float %1223, %1375
  %1379 = fmul fast float %1223, %1376
  %1380 = fmul fast float %1223, %1377
  %1381 = fadd fast float %1378, 1.000000e+00
  %1382 = fadd fast float %1379, 1.000000e+00
  %1383 = fadd fast float %1380, 1.000000e+00
  %1384 = fmul fast float %1381, %1198
  %1385 = fmul fast float %1382, %1199
  %1386 = fmul fast float %1383, %1200
  br label %1387

; <label>:1387                                    ; preds = %1371, %1337, %1228, %1184
  %1388 = phi float [ %1333, %1228 ], [ %1209, %1337 ], [ %1209, %1371 ], [ 0x3FA23C0BE0000000, %1184 ]
  %1389 = phi float [ %1325, %1228 ], [ %1368, %1337 ], [ %1384, %1371 ], [ 1.000000e+00, %1184 ]
  %1390 = phi float [ %1326, %1228 ], [ %1369, %1337 ], [ %1385, %1371 ], [ 1.000000e+00, %1184 ]
  %1391 = phi float [ %1327, %1228 ], [ %1370, %1337 ], [ %1386, %1371 ], [ 1.000000e+00, %1184 ]
  %1392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1393 = extractvalue %dx.types.CBufRet.i32 %1392, 1
  %1394 = and i32 %1393, 1
  %1395 = icmp ne i32 %1394, 0
  %1396 = add i32 %35, 356
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = and i32 %1398, 32
  %1400 = icmp ne i32 %1399, 0
  %1401 = and i1 %1395, %1400
  %1402 = select i1 %1401, float 1.000000e+00, float %1389
  %1403 = select i1 %1401, float 0x3FD3333340000000, float %1390
  %1404 = select i1 %1401, float 0x3FD3333340000000, float %1391
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %1406, 32
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1481, label %1409

; <label>:1409                                    ; preds = %1387
  %1410 = add i32 %35, 108
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = add i32 %35, 396
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = add i32 %1415, 0
  %1417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1416, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1417, %dx.types.Handle %71, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = extractvalue %dx.types.ResRet.f32 %1418, 1
  %1421 = extractvalue %dx.types.ResRet.f32 %1418, 2
  %1422 = extractvalue %dx.types.ResRet.f32 %1418, 3
  %1423 = and i32 %1412, 255
  %1424 = uitofp i32 %1423 to float
  %1425 = lshr i32 %1412, 8
  %1426 = and i32 %1425, 255
  %1427 = uitofp i32 %1426 to float
  %1428 = lshr i32 %1412, 16
  %1429 = and i32 %1428, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101000000000
  %1432 = fmul fast float %1419, %1424
  %1433 = fadd fast float %1432, %1427
  %1434 = fmul fast float %1433, 0x3F70101000000000
  %1435 = fadd fast float %1420, -5.000000e-01
  %1436 = fadd fast float %1422, -5.000000e-01
  %1437 = fmul fast float %1435, %1431
  %1438 = fmul fast float %1436, %1431
  %1439 = fadd fast float %1437, 5.000000e-01
  %1440 = fadd fast float %1438, 5.000000e-01
  %1441 = fmul fast float %1439, 2.000000e+00
  %1442 = fadd fast float %1441, -1.000000e+00
  %1443 = fmul fast float %1440, 2.000000e+00
  %1444 = fadd fast float %1443, -1.000000e+00
  %1445 = fadd fast float %1442, %1444
  %1446 = fmul fast float %1445, 5.000000e-01
  %1447 = fsub fast float %1442, %1444
  %1448 = fmul fast float %1447, 5.000000e-01
  %1449 = call float @dx.op.unary.f32(i32 6, float %1446)  ; FAbs(value)
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = call float @dx.op.unary.f32(i32 6, float %1448)  ; FAbs(value)
  %1452 = fsub fast float %1450, %1451
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1448, float %1452, float %1446, float %1448, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = call float @dx.op.unary.f32(i32 25, float %1453)  ; Rsqrt(value)
  %1455 = fmul fast float %1446, %1454
  %1456 = fmul fast float %1448, %1454
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 67108864
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1477, label %1461

; <label>:1461                                    ; preds = %1409
  %1462 = add i32 %35, 296
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 65535
  %1466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1465)  ; LegacyF16ToF32(value)
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 65535
  %1470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1469)  ; LegacyF16ToF32(value)
  %1471 = lshr i32 %1464, 16
  %1472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1471)  ; LegacyF16ToF32(value)
  %1473 = fsub fast float %1434, %1472
  %1474 = fmul fast float %1473, %1466
  %1475 = fadd fast float %1474, %1470
  %1476 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  br label %1477

; <label>:1477                                    ; preds = %1461, %1409
  %1478 = phi float [ %1476, %1461 ], [ %1434, %1409 ]
  %1479 = call float @dx.op.dot2.f32(i32 54, float %1455, float %1456, float %898, float %899)  ; Dot2(ax,ay,bx,by)
  %1480 = call float @dx.op.dot2.f32(i32 54, float %1455, float %1456, float %900, float %901)  ; Dot2(ax,ay,bx,by)
  br label %1481

; <label>:1481                                    ; preds = %1477, %1387
  %1482 = phi float [ %1478, %1477 ], [ 0x3FD6666660000000, %1387 ]
  %1483 = phi float [ %1479, %1477 ], [ 0.000000e+00, %1387 ]
  %1484 = phi float [ %1480, %1477 ], [ 0.000000e+00, %1387 ]
  %1485 = phi float [ %1421, %1477 ], [ 1.000000e+00, %1387 ]
  %1486 = add i32 %35, 176
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = lshr i32 %1488, 22
  %1490 = shl nuw nsw i32 %1489, 5
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 64
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1529, label %1496

; <label>:1496                                    ; preds = %1481
  %1497 = add i32 %35, 412
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = add i32 %1499, 0
  %1501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1503 = extractvalue %dx.types.ResRet.i32 %1502, 0
  %1504 = and i32 %1503, 131072
  %1505 = icmp eq i32 %1504, 0
  %1506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1501, %dx.types.Handle %71, float %994, float %995, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1507 = extractvalue %dx.types.ResRet.f32 %1506, 0
  %1508 = extractvalue %dx.types.ResRet.f32 %1506, 1
  %1509 = extractvalue %dx.types.ResRet.f32 %1506, 2
  %1510 = fmul fast float %1507, %224
  %1511 = fmul fast float %1508, %227
  %1512 = fmul fast float %1509, %230
  br i1 %1505, label %1519, label %1513

; <label>:1513                                    ; preds = %1496
  %1514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1515 = extractvalue %dx.types.CBufRet.f32 %1514, 0
  %1516 = fmul fast float %1515, %1510
  %1517 = fmul fast float %1515, %1511
  %1518 = fmul fast float %1515, %1512
  br label %1519

; <label>:1519                                    ; preds = %1513, %1496
  %1520 = phi float [ %1516, %1513 ], [ %1510, %1496 ]
  %1521 = phi float [ %1517, %1513 ], [ %1511, %1496 ]
  %1522 = phi float [ %1518, %1513 ], [ %1512, %1496 ]
  %1523 = fmul fast float %1520, %1491
  %1524 = select i1 %176, float %1523, float %1520
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1524, float %1521, float %1522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = select i1 %176, float 0.000000e+00, float %1520
  %1527 = select i1 %176, float %1525, float %1521
  %1528 = select i1 %176, float 0.000000e+00, float %1522
  br label %1529

; <label>:1529                                    ; preds = %1519, %1481
  %1530 = phi float [ %1526, %1519 ], [ 0.000000e+00, %1481 ]
  %1531 = phi float [ %1527, %1519 ], [ 0.000000e+00, %1481 ]
  %1532 = phi float [ %1528, %1519 ], [ 0.000000e+00, %1481 ]
  %1533 = add i32 %35, 112
  %1534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1533, i32 undef)  ; BufferLoad(srv,index,wot)
  %1535 = extractvalue %dx.types.ResRet.i32 %1534, 0
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = lshr i32 %1535, 8
  %1539 = and i32 %1538, 255
  %1540 = uitofp i32 %1539 to float
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1402, float %1403, float %1404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = fmul fast float %1540, %1541
  %1543 = fadd fast float %1542, %1537
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  br i1 %886, label %1546, label %1554

; <label>:1546                                    ; preds = %1529
  %1547 = fsub fast float 1.000000e+00, %1182
  %1548 = fmul fast float %1547, %874
  %1549 = fmul fast float %1547, %875
  %1550 = fmul fast float %1547, %876
  %1551 = fmul fast float %1547, %877
  %1552 = fmul fast float %1547, %878
  %1553 = fmul fast float %1547, %879
  br label %1554

; <label>:1554                                    ; preds = %1546, %1529
  %1555 = phi float [ %1548, %1546 ], [ %874, %1529 ]
  %1556 = phi float [ %1549, %1546 ], [ %875, %1529 ]
  %1557 = phi float [ %1550, %1546 ], [ %876, %1529 ]
  %1558 = phi float [ %1551, %1546 ], [ %877, %1529 ]
  %1559 = phi float [ %1552, %1546 ], [ %878, %1529 ]
  %1560 = phi float [ %1553, %1546 ], [ %879, %1529 ]
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 3
  %1564 = icmp eq i32 %1563, 3
  br i1 %1564, label %1643, label %1565

; <label>:1565                                    ; preds = %1554
  %1566 = and i32 %1562, 16
  %1567 = icmp ne i32 %1566, 0
  %1568 = select i1 %1567, float %1182, float 0.000000e+00
  %1569 = icmp eq i32 %1563, 0
  br i1 %1569, label %1570, label %1598

; <label>:1570                                    ; preds = %1565
  %1571 = and i32 %1562, 64
  %1572 = icmp ne i32 %1571, 0
  %1573 = select i1 %1572, float %1182, float 0.000000e+00
  %1574 = fsub fast float %1402, %1555
  %1575 = fsub fast float %1403, %1556
  %1576 = fsub fast float %1404, %1557
  %1577 = fmul fast float %1568, %1574
  %1578 = fmul fast float %1568, %1575
  %1579 = fmul fast float %1568, %1576
  %1580 = fadd fast float %1577, %1555
  %1581 = fadd fast float %1578, %1556
  %1582 = fadd fast float %1579, %1557
  %1583 = fsub fast float %1388, %880
  %1584 = fmul fast float %1568, %1583
  %1585 = fadd fast float %1584, %880
  %1586 = fsub fast float %1530, %1558
  %1587 = fsub fast float %1531, %1559
  %1588 = fsub fast float %1532, %1560
  %1589 = fmul fast float %1573, %1586
  %1590 = fmul fast float %1573, %1587
  %1591 = fmul fast float %1573, %1588
  %1592 = fadd fast float %1589, %1558
  %1593 = fadd fast float %1590, %1559
  %1594 = fadd fast float %1591, %1560
  %1595 = fsub fast float %1545, %884
  %1596 = fmul fast float %1568, %1595
  %1597 = fadd fast float %1596, %884
  br label %1643

; <label>:1598                                    ; preds = %1565
  %1599 = icmp eq i32 %1563, 1
  br i1 %1599, label %1600, label %1613

; <label>:1600                                    ; preds = %1598
  %1601 = fadd fast float %1402, -1.000000e+00
  %1602 = fadd fast float %1403, -1.000000e+00
  %1603 = fadd fast float %1404, -1.000000e+00
  %1604 = fmul fast float %1568, %1601
  %1605 = fmul fast float %1568, %1602
  %1606 = fmul fast float %1568, %1603
  %1607 = fadd fast float %1604, 1.000000e+00
  %1608 = fadd fast float %1605, 1.000000e+00
  %1609 = fadd fast float %1606, 1.000000e+00
  %1610 = fmul fast float %1607, %1555
  %1611 = fmul fast float %1608, %1556
  %1612 = fmul fast float %1609, %1557
  br label %1643

; <label>:1613                                    ; preds = %1598
  %1614 = icmp eq i32 %1563, 2
  br i1 %1614, label %1615, label %1643

; <label>:1615                                    ; preds = %1613
  %1616 = call float @dx.op.unary.f32(i32 24, float %1402)  ; Sqrt(value)
  %1617 = call float @dx.op.unary.f32(i32 24, float %1403)  ; Sqrt(value)
  %1618 = call float @dx.op.unary.f32(i32 24, float %1404)  ; Sqrt(value)
  %1619 = fadd fast float %1616, -5.000000e-01
  %1620 = fadd fast float %1617, -5.000000e-01
  %1621 = fadd fast float %1618, -5.000000e-01
  %1622 = fmul fast float %1619, %1568
  %1623 = fmul fast float %1620, %1568
  %1624 = fmul fast float %1621, %1568
  %1625 = fadd fast float %1622, 5.000000e-01
  %1626 = fadd fast float %1623, 5.000000e-01
  %1627 = fadd fast float %1624, 5.000000e-01
  %1628 = fmul fast float %1625, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1555
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1555
  %1633 = fmul fast float %1626, 2.000000e+00
  %1634 = fsub fast float 1.000000e+00, %1633
  %1635 = fmul fast float %1634, %1556
  %1636 = fadd fast float %1635, %1633
  %1637 = fmul fast float %1636, %1556
  %1638 = fmul fast float %1627, 2.000000e+00
  %1639 = fsub fast float 1.000000e+00, %1638
  %1640 = fmul fast float %1639, %1557
  %1641 = fadd fast float %1640, %1638
  %1642 = fmul fast float %1641, %1557
  br label %1643

; <label>:1643                                    ; preds = %1615, %1613, %1600, %1570, %1554
  %1644 = phi float [ %1555, %1554 ], [ %1632, %1615 ], [ %1555, %1613 ], [ %1610, %1600 ], [ %1580, %1570 ]
  %1645 = phi float [ %1556, %1554 ], [ %1637, %1615 ], [ %1556, %1613 ], [ %1611, %1600 ], [ %1581, %1570 ]
  %1646 = phi float [ %1557, %1554 ], [ %1642, %1615 ], [ %1557, %1613 ], [ %1612, %1600 ], [ %1582, %1570 ]
  %1647 = phi float [ %1558, %1554 ], [ %1558, %1615 ], [ %1558, %1613 ], [ %1558, %1600 ], [ %1592, %1570 ]
  %1648 = phi float [ %1559, %1554 ], [ %1559, %1615 ], [ %1559, %1613 ], [ %1559, %1600 ], [ %1593, %1570 ]
  %1649 = phi float [ %1560, %1554 ], [ %1560, %1615 ], [ %1560, %1613 ], [ %1560, %1600 ], [ %1594, %1570 ]
  %1650 = phi float [ %880, %1554 ], [ %880, %1615 ], [ %880, %1613 ], [ %880, %1600 ], [ %1585, %1570 ]
  %1651 = phi float [ %884, %1554 ], [ %884, %1615 ], [ %884, %1613 ], [ %884, %1600 ], [ %1597, %1570 ]
  %1652 = and i32 %1562, 12
  %1653 = icmp eq i32 %1652, 12
  br i1 %1653, label %1726, label %1654

; <label>:1654                                    ; preds = %1643
  %1655 = and i32 %1562, 2097184
  %1656 = icmp eq i32 %1655, 2097184
  %1657 = select i1 %1656, float %1182, float 0.000000e+00
  %1658 = and i32 %1562, 4194336
  %1659 = icmp eq i32 %1658, 4194336
  %1660 = select i1 %1659, float %1182, float 0.000000e+00
  %1661 = and i32 %1562, 8388640
  %1662 = icmp eq i32 %1661, 8388640
  %1663 = select i1 %1662, float %1182, float 0.000000e+00
  %1664 = icmp eq i32 %1652, 0
  br i1 %1664, label %1665, label %1678

; <label>:1665                                    ; preds = %1654
  %1666 = fsub fast float %1483, %872
  %1667 = fsub fast float %1484, %873
  %1668 = fmul fast float %1657, %1666
  %1669 = fmul fast float %1657, %1667
  %1670 = fadd fast float %1668, %872
  %1671 = fadd fast float %1669, %873
  %1672 = fsub fast float %1485, %883
  %1673 = fmul fast float %1660, %1672
  %1674 = fadd fast float %1673, %883
  %1675 = fsub fast float %1482, %882
  %1676 = fmul fast float %1663, %1675
  %1677 = fadd fast float %1676, %882
  br label %1726

; <label>:1678                                    ; preds = %1654
  %1679 = icmp eq i32 %1652, 4
  br i1 %1679, label %1680, label %1712

; <label>:1680                                    ; preds = %1678
  %1681 = fmul fast float %1657, %1483
  %1682 = fmul fast float %1657, %1484
  %1683 = fadd fast float %1681, %872
  %1684 = fadd fast float %1682, %873
  %1685 = call float @dx.op.binary.f32(i32 36, float %883, float %1485)  ; FMin(a,b)
  %1686 = fsub fast float %1685, %883
  %1687 = fmul fast float %1686, %1660
  %1688 = fadd fast float %1687, %883
  %1689 = fadd fast float %1482, %882
  %1690 = fmul fast float %1689, 0x3FF337FAE0000000
  %1691 = fmul fast float %882, %882
  %1692 = fmul fast float %1482, %1482
  %1693 = fadd fast float %1692, %1691
  %1694 = fmul fast float %1693, 0x3FE5152B00000000
  %1695 = fmul fast float %882, 0xBFCC1F85E0000000
  %1696 = fmul fast float %1695, %1482
  %1697 = fadd fast float %1696, 0xBFE1363700000000
  %1698 = fadd fast float %1697, %1690
  %1699 = fsub fast float %1698, %1694
  %1700 = fmul fast float %1689, 0x3FBA6F0D00000000
  %1701 = fmul fast float %1693, 0x3FD0432880000000
  %1702 = fmul fast float %882, 0xBFEF110800000000
  %1703 = fmul fast float %1702, %1482
  %1704 = fadd fast float %1703, 1.000000e+00
  %1705 = fsub fast float %1704, %1700
  %1706 = fadd fast float %1705, %1701
  %1707 = fdiv fast float %1699, %1706
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1709 = fsub fast float %1708, %882
  %1710 = fmul fast float %1709, %1663
  %1711 = fadd fast float %1710, %882
  br label %1726

; <label>:1712                                    ; preds = %1678
  %1713 = icmp eq i32 %1652, 8
  br i1 %1713, label %1714, label %1726

; <label>:1714                                    ; preds = %1712
  %1715 = fmul fast float %1657, %1483
  %1716 = fmul fast float %1657, %1484
  %1717 = fadd fast float %1715, %872
  %1718 = fadd fast float %1716, %873
  %1719 = call float @dx.op.binary.f32(i32 36, float %883, float %1485)  ; FMin(a,b)
  %1720 = fsub fast float %1719, %883
  %1721 = fmul fast float %1720, %1660
  %1722 = fadd fast float %1721, %883
  %1723 = fsub fast float %1482, %882
  %1724 = fmul fast float %1663, %1723
  %1725 = fadd fast float %1724, %882
  br label %1726

; <label>:1726                                    ; preds = %1714, %1712, %1680, %1665, %1643, %1181, %885, %871
  %1727 = phi float [ %872, %1643 ], [ %872, %1181 ], [ %872, %871 ], [ %1717, %1714 ], [ %872, %1712 ], [ %1683, %1680 ], [ %1670, %1665 ], [ %872, %885 ]
  %1728 = phi float [ %873, %1643 ], [ %873, %1181 ], [ %873, %871 ], [ %1718, %1714 ], [ %873, %1712 ], [ %1684, %1680 ], [ %1671, %1665 ], [ %873, %885 ]
  %1729 = phi float [ %1644, %1643 ], [ %874, %1181 ], [ %874, %871 ], [ %1644, %1714 ], [ %1644, %1712 ], [ %1644, %1680 ], [ %1644, %1665 ], [ %874, %885 ]
  %1730 = phi float [ %1645, %1643 ], [ %875, %1181 ], [ %875, %871 ], [ %1645, %1714 ], [ %1645, %1712 ], [ %1645, %1680 ], [ %1645, %1665 ], [ %875, %885 ]
  %1731 = phi float [ %1646, %1643 ], [ %876, %1181 ], [ %876, %871 ], [ %1646, %1714 ], [ %1646, %1712 ], [ %1646, %1680 ], [ %1646, %1665 ], [ %876, %885 ]
  %1732 = phi float [ %1647, %1643 ], [ %877, %1181 ], [ %877, %871 ], [ %1647, %1714 ], [ %1647, %1712 ], [ %1647, %1680 ], [ %1647, %1665 ], [ %877, %885 ]
  %1733 = phi float [ %1648, %1643 ], [ %878, %1181 ], [ %878, %871 ], [ %1648, %1714 ], [ %1648, %1712 ], [ %1648, %1680 ], [ %1648, %1665 ], [ %878, %885 ]
  %1734 = phi float [ %1649, %1643 ], [ %879, %1181 ], [ %879, %871 ], [ %1649, %1714 ], [ %1649, %1712 ], [ %1649, %1680 ], [ %1649, %1665 ], [ %879, %885 ]
  %1735 = phi float [ %1650, %1643 ], [ %880, %1181 ], [ %880, %871 ], [ %1650, %1714 ], [ %1650, %1712 ], [ %1650, %1680 ], [ %1650, %1665 ], [ %880, %885 ]
  %1736 = phi float [ %882, %1643 ], [ %882, %1181 ], [ %882, %871 ], [ %1725, %1714 ], [ %882, %1712 ], [ %1711, %1680 ], [ %1677, %1665 ], [ %882, %885 ]
  %1737 = phi float [ %883, %1643 ], [ %883, %1181 ], [ %883, %871 ], [ %1722, %1714 ], [ %883, %1712 ], [ %1688, %1680 ], [ %1674, %1665 ], [ %883, %885 ]
  %1738 = phi float [ %1651, %1643 ], [ %884, %1181 ], [ %884, %871 ], [ %1651, %1714 ], [ %1651, %1712 ], [ %1651, %1680 ], [ %1651, %1665 ], [ %884, %885 ]
  br i1 %351, label %2580, label %1739

; <label>:1739                                    ; preds = %1726
  %1740 = icmp ult i32 %404, 3
  %1741 = add i32 %35, 56
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = add i32 %35, 60
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = or i32 %1746, %1743
  %1748 = icmp eq i32 %1747, 0
  br i1 %1748, label %2580, label %1749

; <label>:1749                                    ; preds = %1739
  %1750 = and i32 %1743, 262144
  %1751 = icmp ne i32 %1750, 0
  %1752 = select i1 %1751, float %38, float 1.000000e+00
  %1753 = select i1 %1751, float %39, float 0.000000e+00
  %1754 = select i1 %1751, float %40, float 0.000000e+00
  %1755 = select i1 %1751, float %41, float 1.000000e+00
  %1756 = select i1 %1751, float %42, float %63
  %1757 = select i1 %1751, float %43, float %64
  %1758 = add i32 %35, 316
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = lshr i32 %1760, 16
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = fmul fast float %1762, 0x3F50624DE0000000
  %1764 = add i32 %35, 120
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = lshr i32 %1766, 16
  %1768 = and i32 %1767, 255
  %1769 = lshr i32 %1766, 24
  %1770 = add i32 %35, 324
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = and i32 %1772, 65535
  %1774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1773)  ; LegacyF16ToF32(value)
  %1775 = lshr i32 %1772, 16
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = add i32 %35, 64
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = lshr i32 %1779, 22
  %1781 = shl nuw nsw i32 %1780, 5
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = shl i32 %1779, 4
  %1784 = and i32 %1783, 32752
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = lshr i32 %1779, 7
  %1787 = and i32 %1786, 32752
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1790 = extractvalue %dx.types.CBufRet.f32 %1789, 3
  %1791 = fmul fast float %1790, 1.000000e+03
  %1792 = fmul fast float %301, %1791
  %1793 = call float @dx.op.unary.f32(i32 22, float %1792)  ; Frc(value)
  %1794 = fadd fast float %1793, %291
  %1795 = fmul fast float %302, %1791
  %1796 = call float @dx.op.unary.f32(i32 22, float %1795)  ; Frc(value)
  %1797 = fadd fast float %1796, %293
  %1798 = fmul fast float %1763, %1791
  %1799 = call float @dx.op.unary.f32(i32 22, float %1798)  ; Frc(value)
  %1800 = fmul fast float %1799, 0x401921FB60000000
  %1801 = fadd fast float %1800, %1782
  %1802 = call float @dx.op.unary.f32(i32 13, float %1801)  ; Sin(value)
  %1803 = call float @dx.op.unary.f32(i32 12, float %1801)  ; Cos(value)
  %1804 = fsub fast float -0.000000e+00, %1802
  %1805 = fadd fast float %1756, -5.000000e-01
  %1806 = fadd fast float %1757, -5.000000e-01
  %1807 = fmul fast float %1774, %1805
  %1808 = fmul fast float %1776, %1806
  %1809 = fadd fast float %1807, 5.000000e-01
  %1810 = fadd fast float %1808, 5.000000e-01
  %1811 = fmul fast float %1785, %1809
  %1812 = fmul fast float %1788, %1810
  %1813 = fmul fast float %1803, %1811
  %1814 = call float @dx.op.tertiary.f32(i32 46, float %1804, float %1812, float %1813)  ; FMad(a,b,c)
  %1815 = fmul fast float %1802, %1811
  %1816 = call float @dx.op.tertiary.f32(i32 46, float %1803, float %1812, float %1815)  ; FMad(a,b,c)
  %1817 = fadd fast float %1794, %1814
  %1818 = fadd fast float %1797, %1816
  %1819 = icmp ugt i32 %1768, 1
  %1820 = icmp ugt i32 %1766, 33554431
  %1821 = or i1 %1820, %1819
  br i1 %1821, label %1822, label %1847

; <label>:1822                                    ; preds = %1749
  %1823 = add i32 %35, 260
  %1824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.i32 %1824, 0
  %1826 = lshr i32 %1825, 16
  %1827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1826)  ; LegacyF16ToF32(value)
  %1828 = fmul fast float %1790, %1827
  %1829 = call float @dx.op.unary.f32(i32 22, float %1828)  ; Frc(value)
  %1830 = mul nuw nsw i32 %1768, %1769
  %1831 = uitofp i32 %1830 to float
  %1832 = fmul fast float %1829, %1831
  %1833 = call float @dx.op.unary.f32(i32 27, float %1832)  ; Round_ni(value)
  %1834 = fptoui float %1833 to i32
  %1835 = urem i32 %1834, %1768
  %1836 = udiv i32 %1834, %1769
  %1837 = call float @dx.op.unary.f32(i32 22, float %1817)  ; Frc(value)
  %1838 = call float @dx.op.unary.f32(i32 22, float %1818)  ; Frc(value)
  %1839 = uitofp i32 %1835 to float
  %1840 = uitofp i32 %1836 to float
  %1841 = fadd fast float %1837, %1839
  %1842 = fadd fast float %1838, %1840
  %1843 = uitofp i32 %1768 to float
  %1844 = uitofp i32 %1769 to float
  %1845 = fdiv fast float %1841, %1843
  %1846 = fdiv fast float %1842, %1844
  br label %1847

; <label>:1847                                    ; preds = %1822, %1749
  %1848 = phi float [ %1845, %1822 ], [ %1817, %1749 ]
  %1849 = phi float [ %1846, %1822 ], [ %1818, %1749 ]
  %1850 = and i32 %1743, 16777216
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %1961, label %1852

; <label>:1852                                    ; preds = %1847
  %1853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1854 = extractvalue %dx.types.CBufRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.CBufRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.CBufRet.f32 %1853, 2
  %1857 = fadd fast float %1854, %134
  %1858 = fadd fast float %1855, %135
  %1859 = fadd fast float %1856, %136
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  %1863 = icmp eq i32 %36, 65535
  br i1 %1863, label %1958, label %1864

; <label>:1864                                    ; preds = %1852
  %1865 = lshr i32 %36, 1
  %1866 = shl i32 %1865, 2
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = and i32 %36, 1
  %1870 = icmp ne i32 %1869, 0
  %1871 = lshr i32 %1868, 16
  %1872 = and i32 %1868, 65535
  %1873 = select i1 %1870, i32 %1871, i32 %1872
  %1874 = icmp eq i32 %1873, 65535
  br i1 %1874, label %1954, label %1875

; <label>:1875                                    ; preds = %1864
  %1876 = mul nuw nsw i32 %1873, 40
  %1877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.ResRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.ResRet.f32 %1877, 2
  %1881 = add nuw nsw i32 %1876, 12
  %1882 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1881, i32 undef)  ; BufferLoad(srv,index,wot)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.ResRet.f32 %1882, 1
  %1885 = extractvalue %dx.types.ResRet.f32 %1882, 2
  %1886 = add nuw nsw i32 %1876, 24
  %1887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.f32 %1887, 0
  %1889 = extractvalue %dx.types.ResRet.f32 %1887, 1
  %1890 = extractvalue %dx.types.ResRet.f32 %1887, 2
  %1891 = add nuw nsw i32 %1876, 36
  %1892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.f32 %1892, 0
  %1894 = fsub fast float %1857, %1878
  %1895 = fsub fast float %1858, %1879
  %1896 = fsub fast float %1859, %1880
  %1897 = fmul fast float %1893, %1894
  %1898 = fmul fast float %1893, %1895
  %1899 = fmul fast float %1893, %1896
  %1900 = call float @dx.op.unary.f32(i32 27, float %1897)  ; Round_ni(value)
  %1901 = call float @dx.op.unary.f32(i32 27, float %1898)  ; Round_ni(value)
  %1902 = call float @dx.op.unary.f32(i32 27, float %1899)  ; Round_ni(value)
  %1903 = fadd fast float %1900, 5.000000e-01
  %1904 = fadd fast float %1901, 5.000000e-01
  %1905 = fadd fast float %1902, 5.000000e-01
  %1906 = fmul fast float %1903, %1883
  %1907 = fmul fast float %1904, %1884
  %1908 = fmul fast float %1905, %1885
  %1909 = shl i32 %36, 2
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = add i32 %1911, 0
  %1913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1914 = call float @dx.op.unary.f32(i32 22, float %1906)  ; Frc(value)
  %1915 = call float @dx.op.unary.f32(i32 22, float %1907)  ; Frc(value)
  %1916 = call float @dx.op.unary.f32(i32 22, float %1908)  ; Frc(value)
  %1917 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1913, %dx.types.Handle %30, float %1914, float %1915, float %1916, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = extractvalue %dx.types.ResRet.f32 %1917, 1
  %1920 = extractvalue %dx.types.ResRet.f32 %1917, 2
  %1921 = fmul fast float %1918, 1.023000e+03
  %1922 = fmul fast float %1919, 1.023000e+03
  %1923 = fmul fast float %1920, 1.023000e+03
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = call float @dx.op.unary.f32(i32 27, float %1924)  ; Round_ni(value)
  %1928 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1929 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1930 = fsub fast float %1897, %1900
  %1931 = fsub fast float %1898, %1901
  %1932 = fsub fast float %1899, %1902
  %1933 = fmul fast float %1930, 7.500000e-01
  %1934 = fmul fast float %1931, 7.500000e-01
  %1935 = fmul fast float %1932, 7.500000e-01
  %1936 = fadd fast float %1900, 1.250000e-01
  %1937 = fadd fast float %1936, %1933
  %1938 = fadd fast float %1937, %1927
  %1939 = fadd fast float %1901, 1.250000e-01
  %1940 = fadd fast float %1939, %1934
  %1941 = fadd fast float %1940, %1928
  %1942 = fadd fast float %1902, 1.250000e-01
  %1943 = fadd fast float %1942, %1935
  %1944 = fadd fast float %1943, %1929
  %1945 = fmul fast float %1938, %1888
  %1946 = fmul fast float %1941, %1889
  %1947 = fmul fast float %1944, %1890
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = add i32 %1949, 0
  %1951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1952 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1951, %dx.types.Handle %28, float %1945, float %1946, float %1947, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  br label %1954

; <label>:1954                                    ; preds = %1875, %1864
  %1955 = phi float [ %1953, %1875 ], [ -1.000000e+00, %1864 ]
  %1956 = fadd fast float %1955, %1862
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  br label %1958

; <label>:1958                                    ; preds = %1954, %1852
  %1959 = phi float [ %1957, %1954 ], [ %1862, %1852 ]
  %1960 = fmul fast float %1959, %400
  br label %1961

; <label>:1961                                    ; preds = %1958, %1847
  %1962 = phi float [ %1960, %1958 ], [ %400, %1847 ]
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = and i32 %1964, 256
  %1966 = icmp eq i32 %1965, 0
  br i1 %1966, label %2013, label %1967

; <label>:1967                                    ; preds = %1961
  %1968 = add i32 %35, 448
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = add i32 %1970, 0
  %1972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1973 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1972, %dx.types.Handle %72, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = add i32 %35, 132
  %1976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.i32 %1976, 0
  %1978 = shl i32 %1977, 4
  %1979 = and i32 %1978, 32752
  %1980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1979)  ; LegacyF16ToF32(value)
  %1981 = lshr i32 %1977, 7
  %1982 = and i32 %1981, 32752
  %1983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1982)  ; LegacyF16ToF32(value)
  %1984 = fsub fast float 1.000000e+00, %1962
  %1985 = call float @dx.op.binary.f32(i32 35, float %1984, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1986 = bitcast float %1962 to i32
  %1987 = sitofp i32 %1986 to float
  %1988 = fadd fast float %1987, 0xC1CFBF8940000000
  %1989 = fmul fast float %1983, %1988
  %1990 = fadd fast float %1989, 0x41CFBF8940000000
  %1991 = fptosi float %1990 to i32
  %1992 = bitcast i32 %1991 to float
  %1993 = bitcast float %1985 to i32
  %1994 = sitofp i32 %1993 to float
  %1995 = fadd fast float %1994, 0xC1CFBF8940000000
  %1996 = fmul fast float %1995, %1983
  %1997 = fadd fast float %1996, 0x41CFBF8940000000
  %1998 = fptosi float %1997 to i32
  %1999 = bitcast i32 %1998 to float
  %2000 = fmul fast float %1992, %1980
  %2001 = fmul fast float %1999, %1980
  %2002 = fsub fast float %1985, %2000
  %2003 = fadd fast float %2001, %1985
  %2004 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2005 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2006 = fsub fast float %1974, %2004
  %2007 = fsub fast float %2005, %2004
  %2008 = bitcast float %2007 to i32
  %2009 = sub nsw i32 2129859010, %2008
  %2010 = bitcast i32 %2009 to float
  %2011 = fmul fast float %2010, %2006
  %2012 = call float @dx.op.unary.f32(i32 7, float %2011)  ; Saturate(value)
  br label %2013

; <label>:2013                                    ; preds = %1967, %1961
  %2014 = phi float [ %2012, %1967 ], [ %1962, %1961 ]
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 128
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2035, label %2019

; <label>:2019                                    ; preds = %2013
  %2020 = add i32 %35, 432
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = add i32 %2022, 0
  %2024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2024, %dx.types.Handle %72, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 524288
  %2030 = icmp ne i32 %2029, 0
  %2031 = fcmp fast ogt float %2026, 0x3FE0101020000000
  %2032 = select i1 %2031, float 1.000000e+00, float 0.000000e+00
  %2033 = select i1 %2030, float %2032, float %2026
  %2034 = fmul fast float %2033, %2014
  br label %2035

; <label>:2035                                    ; preds = %2019, %2013
  %2036 = phi float [ %2034, %2019 ], [ %2014, %2013 ]
  %2037 = fcmp fast ult float %2036, 0x3F70101020000000
  br i1 %2037, label %2580, label %2038

; <label>:2038                                    ; preds = %2035
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 16
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2241, label %2043

; <label>:2043                                    ; preds = %2038
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %35, 384
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2046, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = add i32 %2048, 0
  %2050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2051 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2050, %dx.types.Handle %71, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = extractvalue %dx.types.ResRet.f32 %2051, 1
  %2054 = extractvalue %dx.types.ResRet.f32 %2051, 2
  %2055 = extractvalue %dx.types.ResRet.f32 %2051, 3
  %2056 = and i32 %2045, 255
  %2057 = uitofp i32 %2056 to float
  %2058 = lshr i32 %2045, 8
  %2059 = and i32 %2058, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2055, %2057
  %2062 = fadd fast float %2061, %2060
  %2063 = fmul fast float %2062, 0x3F70101000000000
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 512
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2076, label %2068

; <label>:2068                                    ; preds = %2043
  %2069 = add i32 %35, 468
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = add i32 %2071, 0
  %2073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2073, %dx.types.Handle %72, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  br label %2076

; <label>:2076                                    ; preds = %2068, %2043
  %2077 = phi float [ %2075, %2068 ], [ 1.000000e+00, %2043 ]
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = and i32 %2079, 33554432
  %2081 = icmp eq i32 %2080, 0
  br i1 %2081, label %2188, label %2082

; <label>:2082                                    ; preds = %2076
  %2083 = add i32 %35, 256
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 65535
  %2087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2086)  ; LegacyF16ToF32(value)
  %2088 = lshr i32 %2085, 16
  %2089 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2088)  ; LegacyF16ToF32(value)
  %2090 = add i32 %35, 260
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = and i32 %2092, 65535
  %2094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2093)  ; LegacyF16ToF32(value)
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = lshr i32 %2096, 24
  %2098 = uitofp i32 %2097 to float
  %2099 = fmul fast float %2098, 0x3F70101020000000
  %2100 = and i32 %2096, 255
  %2101 = uitofp i32 %2100 to float
  %2102 = fmul fast float %2101, 0x3F70101020000000
  %2103 = lshr i32 %2096, 8
  %2104 = and i32 %2103, 255
  %2105 = uitofp i32 %2104 to float
  %2106 = fmul fast float %2105, 0x3F70101020000000
  %2107 = lshr i32 %2096, 16
  %2108 = and i32 %2107, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101020000000
  %2111 = add i32 %35, 252
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = lshr i32 %2113, 24
  %2115 = uitofp i32 %2114 to float
  %2116 = fmul fast float %2115, 0x3F70101020000000
  %2117 = and i32 %2113, 255
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = lshr i32 %2113, 8
  %2121 = and i32 %2120, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = lshr i32 %2113, 16
  %2125 = and i32 %2124, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = bitcast float %2052 to i32
  %2129 = ashr i32 %2128, 1
  %2130 = sub nsw i32 1597463174, %2129
  %2131 = bitcast i32 %2130 to float
  %2132 = fmul fast float %2052, 5.000000e-01
  %2133 = fmul fast float %2131, %2131
  %2134 = fmul fast float %2133, %2132
  %2135 = fsub fast float 1.500000e+00, %2134
  %2136 = fmul fast float %2131, %2052
  %2137 = fmul fast float %2136, %2135
  %2138 = bitcast float %2053 to i32
  %2139 = ashr i32 %2138, 1
  %2140 = sub nsw i32 1597463174, %2139
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2053, 5.000000e-01
  %2143 = fmul fast float %2141, %2141
  %2144 = fmul fast float %2143, %2142
  %2145 = fsub fast float 1.500000e+00, %2144
  %2146 = fmul fast float %2141, %2053
  %2147 = fmul fast float %2146, %2145
  %2148 = bitcast float %2054 to i32
  %2149 = ashr i32 %2148, 1
  %2150 = sub nsw i32 1597463174, %2149
  %2151 = bitcast i32 %2150 to float
  %2152 = fmul fast float %2054, 5.000000e-01
  %2153 = fmul fast float %2151, %2151
  %2154 = fmul fast float %2153, %2152
  %2155 = fsub fast float 1.500000e+00, %2154
  %2156 = fmul fast float %2151, %2054
  %2157 = fmul fast float %2156, %2155
  %2158 = fsub fast float %2137, %2119
  %2159 = fsub fast float %2147, %2123
  %2160 = fsub fast float %2157, %2127
  %2161 = fmul fast float %2158, %2087
  %2162 = fmul fast float %2159, %2089
  %2163 = fmul fast float %2160, %2094
  %2164 = fadd fast float %2161, %2102
  %2165 = fadd fast float %2162, %2106
  %2166 = fadd fast float %2163, %2110
  %2167 = call float @dx.op.unary.f32(i32 7, float %2164)  ; Saturate(value)
  %2168 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2169 = call float @dx.op.unary.f32(i32 7, float %2166)  ; Saturate(value)
  %2170 = fmul fast float %2167, %2167
  %2171 = fmul fast float %2168, %2168
  %2172 = fmul fast float %2169, %2169
  %2173 = fsub fast float %2170, %2052
  %2174 = fsub fast float %2171, %2053
  %2175 = fsub fast float %2172, %2054
  %2176 = fmul fast float %2173, %2077
  %2177 = fmul fast float %2174, %2077
  %2178 = fmul fast float %2175, %2077
  %2179 = fadd fast float %2176, %2052
  %2180 = fadd fast float %2177, %2053
  %2181 = fadd fast float %2178, %2054
  %2182 = fadd fast float %2099, %2063
  %2183 = fsub fast float %2182, %2116
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2185 = fsub fast float %2184, %2063
  %2186 = fmul fast float %2185, %2077
  %2187 = fadd fast float %2186, %2063
  br label %2241

; <label>:2188                                    ; preds = %2076
  %2189 = and i32 %2079, 134217728
  %2190 = icmp eq i32 %2189, 0
  br i1 %2190, label %2225, label %2191

; <label>:2191                                    ; preds = %2188
  %2192 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2193 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2194 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2195 = fadd fast float %2192, -5.000000e-01
  %2196 = fadd fast float %2193, -5.000000e-01
  %2197 = fadd fast float %2194, -5.000000e-01
  %2198 = fmul fast float %2195, %2077
  %2199 = fmul fast float %2196, %2077
  %2200 = fmul fast float %2197, %2077
  %2201 = fadd fast float %2198, 5.000000e-01
  %2202 = fadd fast float %2199, 5.000000e-01
  %2203 = fadd fast float %2200, 5.000000e-01
  %2204 = call float @dx.op.unary.f32(i32 24, float %2052)  ; Sqrt(value)
  %2205 = call float @dx.op.unary.f32(i32 24, float %2053)  ; Sqrt(value)
  %2206 = call float @dx.op.unary.f32(i32 24, float %2054)  ; Sqrt(value)
  %2207 = fmul fast float %2201, 2.000000e+00
  %2208 = fsub fast float 1.000000e+00, %2207
  %2209 = fmul fast float %2208, %2204
  %2210 = fadd fast float %2209, %2207
  %2211 = fmul fast float %2210, %2204
  %2212 = fmul fast float %2202, 2.000000e+00
  %2213 = fsub fast float 1.000000e+00, %2212
  %2214 = fmul fast float %2213, %2205
  %2215 = fadd fast float %2214, %2212
  %2216 = fmul fast float %2215, %2205
  %2217 = fmul fast float %2203, 2.000000e+00
  %2218 = fsub fast float 1.000000e+00, %2217
  %2219 = fmul fast float %2218, %2206
  %2220 = fadd fast float %2219, %2217
  %2221 = fmul fast float %2220, %2206
  %2222 = fmul fast float %2211, %2211
  %2223 = fmul fast float %2216, %2216
  %2224 = fmul fast float %2221, %2221
  br label %2241

; <label>:2225                                    ; preds = %2188
  %2226 = fmul fast float %278, %278
  %2227 = fmul fast float %282, %282
  %2228 = fmul fast float %286, %286
  %2229 = fadd fast float %2226, -1.000000e+00
  %2230 = fadd fast float %2227, -1.000000e+00
  %2231 = fadd fast float %2228, -1.000000e+00
  %2232 = fmul fast float %2077, %2229
  %2233 = fmul fast float %2077, %2230
  %2234 = fmul fast float %2077, %2231
  %2235 = fadd fast float %2232, 1.000000e+00
  %2236 = fadd fast float %2233, 1.000000e+00
  %2237 = fadd fast float %2234, 1.000000e+00
  %2238 = fmul fast float %2235, %2052
  %2239 = fmul fast float %2236, %2053
  %2240 = fmul fast float %2237, %2054
  br label %2241

; <label>:2241                                    ; preds = %2225, %2191, %2082, %2038
  %2242 = phi float [ %2187, %2082 ], [ %2063, %2191 ], [ %2063, %2225 ], [ 0x3FA23C0BE0000000, %2038 ]
  %2243 = phi float [ %2179, %2082 ], [ %2222, %2191 ], [ %2238, %2225 ], [ 1.000000e+00, %2038 ]
  %2244 = phi float [ %2180, %2082 ], [ %2223, %2191 ], [ %2239, %2225 ], [ 1.000000e+00, %2038 ]
  %2245 = phi float [ %2181, %2082 ], [ %2224, %2191 ], [ %2240, %2225 ], [ 1.000000e+00, %2038 ]
  %2246 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.i32 %2246, 1
  %2248 = and i32 %2247, 1
  %2249 = icmp ne i32 %2248, 0
  %2250 = add i32 %35, 356
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 32
  %2254 = icmp ne i32 %2253, 0
  %2255 = and i1 %2249, %2254
  %2256 = select i1 %2255, float 1.000000e+00, float %2243
  %2257 = select i1 %2255, float 0x3FD3333340000000, float %2244
  %2258 = select i1 %2255, float 0x3FD3333340000000, float %2245
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = and i32 %2260, 32
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2335, label %2263

; <label>:2263                                    ; preds = %2241
  %2264 = add i32 %35, 124
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = add i32 %35, 400
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = add i32 %2269, 0
  %2271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2271, %dx.types.Handle %71, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2273 = extractvalue %dx.types.ResRet.f32 %2272, 0
  %2274 = extractvalue %dx.types.ResRet.f32 %2272, 1
  %2275 = extractvalue %dx.types.ResRet.f32 %2272, 2
  %2276 = extractvalue %dx.types.ResRet.f32 %2272, 3
  %2277 = and i32 %2266, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = lshr i32 %2266, 8
  %2280 = and i32 %2279, 255
  %2281 = uitofp i32 %2280 to float
  %2282 = lshr i32 %2266, 16
  %2283 = and i32 %2282, 255
  %2284 = uitofp i32 %2283 to float
  %2285 = fmul fast float %2284, 0x3F70101000000000
  %2286 = fmul fast float %2273, %2278
  %2287 = fadd fast float %2286, %2281
  %2288 = fmul fast float %2287, 0x3F70101000000000
  %2289 = fadd fast float %2274, -5.000000e-01
  %2290 = fadd fast float %2276, -5.000000e-01
  %2291 = fmul fast float %2289, %2285
  %2292 = fmul fast float %2290, %2285
  %2293 = fadd fast float %2291, 5.000000e-01
  %2294 = fadd fast float %2292, 5.000000e-01
  %2295 = fmul fast float %2293, 2.000000e+00
  %2296 = fadd fast float %2295, -1.000000e+00
  %2297 = fmul fast float %2294, 2.000000e+00
  %2298 = fadd fast float %2297, -1.000000e+00
  %2299 = fadd fast float %2296, %2298
  %2300 = fmul fast float %2299, 5.000000e-01
  %2301 = fsub fast float %2296, %2298
  %2302 = fmul fast float %2301, 5.000000e-01
  %2303 = call float @dx.op.unary.f32(i32 6, float %2300)  ; FAbs(value)
  %2304 = fsub fast float 1.000000e+00, %2303
  %2305 = call float @dx.op.unary.f32(i32 6, float %2302)  ; FAbs(value)
  %2306 = fsub fast float %2304, %2305
  %2307 = call float @dx.op.dot3.f32(i32 55, float %2300, float %2302, float %2306, float %2300, float %2302, float %2306)  ; Dot3(ax,ay,az,bx,by,bz)
  %2308 = call float @dx.op.unary.f32(i32 25, float %2307)  ; Rsqrt(value)
  %2309 = fmul fast float %2300, %2308
  %2310 = fmul fast float %2302, %2308
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 67108864
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %2331, label %2315

; <label>:2315                                    ; preds = %2263
  %2316 = add i32 %35, 312
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 65535
  %2320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2319)  ; LegacyF16ToF32(value)
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 65535
  %2324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2323)  ; LegacyF16ToF32(value)
  %2325 = lshr i32 %2318, 16
  %2326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2325)  ; LegacyF16ToF32(value)
  %2327 = fsub fast float %2288, %2326
  %2328 = fmul fast float %2327, %2320
  %2329 = fadd fast float %2328, %2324
  %2330 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  br label %2331

; <label>:2331                                    ; preds = %2315, %2263
  %2332 = phi float [ %2330, %2315 ], [ %2288, %2263 ]
  %2333 = call float @dx.op.dot2.f32(i32 54, float %2309, float %2310, float %1752, float %1753)  ; Dot2(ax,ay,bx,by)
  %2334 = call float @dx.op.dot2.f32(i32 54, float %2309, float %2310, float %1754, float %1755)  ; Dot2(ax,ay,bx,by)
  br label %2335

; <label>:2335                                    ; preds = %2331, %2241
  %2336 = phi float [ %2332, %2331 ], [ 0x3FD6666660000000, %2241 ]
  %2337 = phi float [ %2333, %2331 ], [ 0.000000e+00, %2241 ]
  %2338 = phi float [ %2334, %2331 ], [ 0.000000e+00, %2241 ]
  %2339 = phi float [ %2275, %2331 ], [ 1.000000e+00, %2241 ]
  %2340 = add i32 %35, 192
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = lshr i32 %2342, 22
  %2344 = shl nuw nsw i32 %2343, 5
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 64
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2383, label %2350

; <label>:2350                                    ; preds = %2335
  %2351 = add i32 %35, 416
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = add i32 %2353, 0
  %2355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = and i32 %2357, 131072
  %2359 = icmp eq i32 %2358, 0
  %2360 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2355, %dx.types.Handle %71, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2361 = extractvalue %dx.types.ResRet.f32 %2360, 0
  %2362 = extractvalue %dx.types.ResRet.f32 %2360, 1
  %2363 = extractvalue %dx.types.ResRet.f32 %2360, 2
  %2364 = fmul fast float %2361, %266
  %2365 = fmul fast float %2362, %269
  %2366 = fmul fast float %2363, %272
  br i1 %2359, label %2373, label %2367

; <label>:2367                                    ; preds = %2350
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = fmul fast float %2369, %2364
  %2371 = fmul fast float %2369, %2365
  %2372 = fmul fast float %2369, %2366
  br label %2373

; <label>:2373                                    ; preds = %2367, %2350
  %2374 = phi float [ %2370, %2367 ], [ %2364, %2350 ]
  %2375 = phi float [ %2371, %2367 ], [ %2365, %2350 ]
  %2376 = phi float [ %2372, %2367 ], [ %2366, %2350 ]
  %2377 = fmul fast float %2374, %2345
  %2378 = select i1 %176, float %2377, float %2374
  %2379 = call float @dx.op.dot3.f32(i32 55, float %2378, float %2375, float %2376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2380 = select i1 %176, float 0.000000e+00, float %2374
  %2381 = select i1 %176, float %2379, float %2375
  %2382 = select i1 %176, float 0.000000e+00, float %2376
  br label %2383

; <label>:2383                                    ; preds = %2373, %2335
  %2384 = phi float [ %2380, %2373 ], [ 0.000000e+00, %2335 ]
  %2385 = phi float [ %2381, %2373 ], [ 0.000000e+00, %2335 ]
  %2386 = phi float [ %2382, %2373 ], [ 0.000000e+00, %2335 ]
  %2387 = add i32 %35, 128
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = lshr i32 %2389, 8
  %2393 = and i32 %2392, 255
  %2394 = uitofp i32 %2393 to float
  %2395 = call float @dx.op.dot3.f32(i32 55, float %2256, float %2257, float %2258, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2396 = fmul fast float %2394, %2395
  %2397 = fadd fast float %2396, %2391
  %2398 = fmul fast float %2397, 0x3F70101020000000
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  br i1 %1740, label %2400, label %2408

; <label>:2400                                    ; preds = %2383
  %2401 = fsub fast float 1.000000e+00, %2036
  %2402 = fmul fast float %2401, %1729
  %2403 = fmul fast float %2401, %1730
  %2404 = fmul fast float %2401, %1731
  %2405 = fmul fast float %2401, %1732
  %2406 = fmul fast float %2401, %1733
  %2407 = fmul fast float %2401, %1734
  br label %2408

; <label>:2408                                    ; preds = %2400, %2383
  %2409 = phi float [ %2402, %2400 ], [ %1729, %2383 ]
  %2410 = phi float [ %2403, %2400 ], [ %1730, %2383 ]
  %2411 = phi float [ %2404, %2400 ], [ %1731, %2383 ]
  %2412 = phi float [ %2405, %2400 ], [ %1732, %2383 ]
  %2413 = phi float [ %2406, %2400 ], [ %1733, %2383 ]
  %2414 = phi float [ %2407, %2400 ], [ %1734, %2383 ]
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 3
  %2418 = icmp eq i32 %2417, 3
  br i1 %2418, label %2497, label %2419

; <label>:2419                                    ; preds = %2408
  %2420 = and i32 %2416, 16
  %2421 = icmp ne i32 %2420, 0
  %2422 = select i1 %2421, float %2036, float 0.000000e+00
  %2423 = icmp eq i32 %2417, 0
  br i1 %2423, label %2424, label %2452

; <label>:2424                                    ; preds = %2419
  %2425 = and i32 %2416, 64
  %2426 = icmp ne i32 %2425, 0
  %2427 = select i1 %2426, float %2036, float 0.000000e+00
  %2428 = fsub fast float %2256, %2409
  %2429 = fsub fast float %2257, %2410
  %2430 = fsub fast float %2258, %2411
  %2431 = fmul fast float %2422, %2428
  %2432 = fmul fast float %2422, %2429
  %2433 = fmul fast float %2422, %2430
  %2434 = fadd fast float %2431, %2409
  %2435 = fadd fast float %2432, %2410
  %2436 = fadd fast float %2433, %2411
  %2437 = fsub fast float %2242, %1735
  %2438 = fmul fast float %2422, %2437
  %2439 = fadd fast float %2438, %1735
  %2440 = fsub fast float %2384, %2412
  %2441 = fsub fast float %2385, %2413
  %2442 = fsub fast float %2386, %2414
  %2443 = fmul fast float %2427, %2440
  %2444 = fmul fast float %2427, %2441
  %2445 = fmul fast float %2427, %2442
  %2446 = fadd fast float %2443, %2412
  %2447 = fadd fast float %2444, %2413
  %2448 = fadd fast float %2445, %2414
  %2449 = fsub fast float %2399, %1738
  %2450 = fmul fast float %2422, %2449
  %2451 = fadd fast float %2450, %1738
  br label %2497

; <label>:2452                                    ; preds = %2419
  %2453 = icmp eq i32 %2417, 1
  br i1 %2453, label %2454, label %2467

; <label>:2454                                    ; preds = %2452
  %2455 = fadd fast float %2256, -1.000000e+00
  %2456 = fadd fast float %2257, -1.000000e+00
  %2457 = fadd fast float %2258, -1.000000e+00
  %2458 = fmul fast float %2422, %2455
  %2459 = fmul fast float %2422, %2456
  %2460 = fmul fast float %2422, %2457
  %2461 = fadd fast float %2458, 1.000000e+00
  %2462 = fadd fast float %2459, 1.000000e+00
  %2463 = fadd fast float %2460, 1.000000e+00
  %2464 = fmul fast float %2461, %2409
  %2465 = fmul fast float %2462, %2410
  %2466 = fmul fast float %2463, %2411
  br label %2497

; <label>:2467                                    ; preds = %2452
  %2468 = icmp eq i32 %2417, 2
  br i1 %2468, label %2469, label %2497

; <label>:2469                                    ; preds = %2467
  %2470 = call float @dx.op.unary.f32(i32 24, float %2256)  ; Sqrt(value)
  %2471 = call float @dx.op.unary.f32(i32 24, float %2257)  ; Sqrt(value)
  %2472 = call float @dx.op.unary.f32(i32 24, float %2258)  ; Sqrt(value)
  %2473 = fadd fast float %2470, -5.000000e-01
  %2474 = fadd fast float %2471, -5.000000e-01
  %2475 = fadd fast float %2472, -5.000000e-01
  %2476 = fmul fast float %2473, %2422
  %2477 = fmul fast float %2474, %2422
  %2478 = fmul fast float %2475, %2422
  %2479 = fadd fast float %2476, 5.000000e-01
  %2480 = fadd fast float %2477, 5.000000e-01
  %2481 = fadd fast float %2478, 5.000000e-01
  %2482 = fmul fast float %2479, 2.000000e+00
  %2483 = fsub fast float 1.000000e+00, %2482
  %2484 = fmul fast float %2483, %2409
  %2485 = fadd fast float %2484, %2482
  %2486 = fmul fast float %2485, %2409
  %2487 = fmul fast float %2480, 2.000000e+00
  %2488 = fsub fast float 1.000000e+00, %2487
  %2489 = fmul fast float %2488, %2410
  %2490 = fadd fast float %2489, %2487
  %2491 = fmul fast float %2490, %2410
  %2492 = fmul fast float %2481, 2.000000e+00
  %2493 = fsub fast float 1.000000e+00, %2492
  %2494 = fmul fast float %2493, %2411
  %2495 = fadd fast float %2494, %2492
  %2496 = fmul fast float %2495, %2411
  br label %2497

; <label>:2497                                    ; preds = %2469, %2467, %2454, %2424, %2408
  %2498 = phi float [ %2409, %2408 ], [ %2486, %2469 ], [ %2409, %2467 ], [ %2464, %2454 ], [ %2434, %2424 ]
  %2499 = phi float [ %2410, %2408 ], [ %2491, %2469 ], [ %2410, %2467 ], [ %2465, %2454 ], [ %2435, %2424 ]
  %2500 = phi float [ %2411, %2408 ], [ %2496, %2469 ], [ %2411, %2467 ], [ %2466, %2454 ], [ %2436, %2424 ]
  %2501 = phi float [ %2412, %2408 ], [ %2412, %2469 ], [ %2412, %2467 ], [ %2412, %2454 ], [ %2446, %2424 ]
  %2502 = phi float [ %2413, %2408 ], [ %2413, %2469 ], [ %2413, %2467 ], [ %2413, %2454 ], [ %2447, %2424 ]
  %2503 = phi float [ %2414, %2408 ], [ %2414, %2469 ], [ %2414, %2467 ], [ %2414, %2454 ], [ %2448, %2424 ]
  %2504 = phi float [ %1735, %2408 ], [ %1735, %2469 ], [ %1735, %2467 ], [ %1735, %2454 ], [ %2439, %2424 ]
  %2505 = phi float [ %1738, %2408 ], [ %1738, %2469 ], [ %1738, %2467 ], [ %1738, %2454 ], [ %2451, %2424 ]
  %2506 = and i32 %2416, 12
  %2507 = icmp eq i32 %2506, 12
  br i1 %2507, label %2580, label %2508

; <label>:2508                                    ; preds = %2497
  %2509 = and i32 %2416, 2097184
  %2510 = icmp eq i32 %2509, 2097184
  %2511 = select i1 %2510, float %2036, float 0.000000e+00
  %2512 = and i32 %2416, 4194336
  %2513 = icmp eq i32 %2512, 4194336
  %2514 = select i1 %2513, float %2036, float 0.000000e+00
  %2515 = and i32 %2416, 8388640
  %2516 = icmp eq i32 %2515, 8388640
  %2517 = select i1 %2516, float %2036, float 0.000000e+00
  %2518 = icmp eq i32 %2506, 0
  br i1 %2518, label %2519, label %2532

; <label>:2519                                    ; preds = %2508
  %2520 = fsub fast float %2337, %1727
  %2521 = fsub fast float %2338, %1728
  %2522 = fmul fast float %2511, %2520
  %2523 = fmul fast float %2511, %2521
  %2524 = fadd fast float %2522, %1727
  %2525 = fadd fast float %2523, %1728
  %2526 = fsub fast float %2339, %1737
  %2527 = fmul fast float %2514, %2526
  %2528 = fadd fast float %2527, %1737
  %2529 = fsub fast float %2336, %1736
  %2530 = fmul fast float %2517, %2529
  %2531 = fadd fast float %2530, %1736
  br label %2580

; <label>:2532                                    ; preds = %2508
  %2533 = icmp eq i32 %2506, 4
  br i1 %2533, label %2534, label %2566

; <label>:2534                                    ; preds = %2532
  %2535 = fmul fast float %2511, %2337
  %2536 = fmul fast float %2511, %2338
  %2537 = fadd fast float %2535, %1727
  %2538 = fadd fast float %2536, %1728
  %2539 = call float @dx.op.binary.f32(i32 36, float %1737, float %2339)  ; FMin(a,b)
  %2540 = fsub fast float %2539, %1737
  %2541 = fmul fast float %2540, %2514
  %2542 = fadd fast float %2541, %1737
  %2543 = fadd fast float %2336, %1736
  %2544 = fmul fast float %2543, 0x3FF337FAE0000000
  %2545 = fmul fast float %1736, %1736
  %2546 = fmul fast float %2336, %2336
  %2547 = fadd fast float %2546, %2545
  %2548 = fmul fast float %2547, 0x3FE5152B00000000
  %2549 = fmul fast float %1736, 0xBFCC1F85E0000000
  %2550 = fmul fast float %2549, %2336
  %2551 = fadd fast float %2550, 0xBFE1363700000000
  %2552 = fadd fast float %2551, %2544
  %2553 = fsub fast float %2552, %2548
  %2554 = fmul fast float %2543, 0x3FBA6F0D00000000
  %2555 = fmul fast float %2547, 0x3FD0432880000000
  %2556 = fmul fast float %1736, 0xBFEF110800000000
  %2557 = fmul fast float %2556, %2336
  %2558 = fadd fast float %2557, 1.000000e+00
  %2559 = fsub fast float %2558, %2554
  %2560 = fadd fast float %2559, %2555
  %2561 = fdiv fast float %2553, %2560
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  %2563 = fsub fast float %2562, %1736
  %2564 = fmul fast float %2563, %2517
  %2565 = fadd fast float %2564, %1736
  br label %2580

; <label>:2566                                    ; preds = %2532
  %2567 = icmp eq i32 %2506, 8
  br i1 %2567, label %2568, label %2580

; <label>:2568                                    ; preds = %2566
  %2569 = fmul fast float %2511, %2337
  %2570 = fmul fast float %2511, %2338
  %2571 = fadd fast float %2569, %1727
  %2572 = fadd fast float %2570, %1728
  %2573 = call float @dx.op.binary.f32(i32 36, float %1737, float %2339)  ; FMin(a,b)
  %2574 = fsub fast float %2573, %1737
  %2575 = fmul fast float %2574, %2514
  %2576 = fadd fast float %2575, %1737
  %2577 = fsub fast float %2336, %1736
  %2578 = fmul fast float %2517, %2577
  %2579 = fadd fast float %2578, %1736
  br label %2580

; <label>:2580                                    ; preds = %2568, %2566, %2534, %2519, %2497, %2035, %1739, %1726
  %2581 = phi float [ %1727, %2497 ], [ %1727, %2035 ], [ %1727, %1726 ], [ %2571, %2568 ], [ %1727, %2566 ], [ %2537, %2534 ], [ %2524, %2519 ], [ %1727, %1739 ]
  %2582 = phi float [ %1728, %2497 ], [ %1728, %2035 ], [ %1728, %1726 ], [ %2572, %2568 ], [ %1728, %2566 ], [ %2538, %2534 ], [ %2525, %2519 ], [ %1728, %1739 ]
  %2583 = phi float [ %2498, %2497 ], [ %1729, %2035 ], [ %1729, %1726 ], [ %2498, %2568 ], [ %2498, %2566 ], [ %2498, %2534 ], [ %2498, %2519 ], [ %1729, %1739 ]
  %2584 = phi float [ %2499, %2497 ], [ %1730, %2035 ], [ %1730, %1726 ], [ %2499, %2568 ], [ %2499, %2566 ], [ %2499, %2534 ], [ %2499, %2519 ], [ %1730, %1739 ]
  %2585 = phi float [ %2500, %2497 ], [ %1731, %2035 ], [ %1731, %1726 ], [ %2500, %2568 ], [ %2500, %2566 ], [ %2500, %2534 ], [ %2500, %2519 ], [ %1731, %1739 ]
  %2586 = phi float [ %2501, %2497 ], [ %1732, %2035 ], [ %1732, %1726 ], [ %2501, %2568 ], [ %2501, %2566 ], [ %2501, %2534 ], [ %2501, %2519 ], [ %1732, %1739 ]
  %2587 = phi float [ %2502, %2497 ], [ %1733, %2035 ], [ %1733, %1726 ], [ %2502, %2568 ], [ %2502, %2566 ], [ %2502, %2534 ], [ %2502, %2519 ], [ %1733, %1739 ]
  %2588 = phi float [ %2503, %2497 ], [ %1734, %2035 ], [ %1734, %1726 ], [ %2503, %2568 ], [ %2503, %2566 ], [ %2503, %2534 ], [ %2503, %2519 ], [ %1734, %1739 ]
  %2589 = phi float [ %2504, %2497 ], [ %1735, %2035 ], [ %1735, %1726 ], [ %2504, %2568 ], [ %2504, %2566 ], [ %2504, %2534 ], [ %2504, %2519 ], [ %1735, %1739 ]
  %2590 = phi float [ %1736, %2497 ], [ %1736, %2035 ], [ %1736, %1726 ], [ %2579, %2568 ], [ %1736, %2566 ], [ %2565, %2534 ], [ %2531, %2519 ], [ %1736, %1739 ]
  %2591 = phi float [ %1737, %2497 ], [ %1737, %2035 ], [ %1737, %1726 ], [ %2576, %2568 ], [ %1737, %2566 ], [ %2542, %2534 ], [ %2528, %2519 ], [ %1737, %1739 ]
  %2592 = phi float [ %2505, %2497 ], [ %1738, %2035 ], [ %1738, %1726 ], [ %2505, %2568 ], [ %2505, %2566 ], [ %2505, %2534 ], [ %2505, %2519 ], [ %1738, %1739 ]
  br i1 %353, label %3434, label %2593

; <label>:2593                                    ; preds = %2580
  %2594 = icmp ult i32 %404, 4
  %2595 = add i32 %35, 72
  %2596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2597 = extractvalue %dx.types.ResRet.i32 %2596, 0
  %2598 = add i32 %35, 76
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = or i32 %2600, %2597
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %3434, label %2603

; <label>:2603                                    ; preds = %2593
  %2604 = and i32 %2597, 262144
  %2605 = icmp ne i32 %2604, 0
  %2606 = select i1 %2605, float %38, float 1.000000e+00
  %2607 = select i1 %2605, float %39, float 0.000000e+00
  %2608 = select i1 %2605, float %40, float 0.000000e+00
  %2609 = select i1 %2605, float %41, float 1.000000e+00
  %2610 = select i1 %2605, float %42, float %63
  %2611 = select i1 %2605, float %43, float %64
  %2612 = add i32 %35, 332
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = lshr i32 %2614, 16
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = fmul fast float %2616, 0x3F50624DE0000000
  %2618 = add i32 %35, 136
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = lshr i32 %2620, 16
  %2622 = and i32 %2621, 255
  %2623 = lshr i32 %2620, 24
  %2624 = add i32 %35, 340
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 65535
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = lshr i32 %2626, 16
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = add i32 %35, 80
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 22
  %2635 = shl nuw nsw i32 %2634, 5
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = shl i32 %2633, 4
  %2638 = and i32 %2637, 32752
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = lshr i32 %2633, 7
  %2641 = and i32 %2640, 32752
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2644 = extractvalue %dx.types.CBufRet.f32 %2643, 3
  %2645 = fmul fast float %2644, 1.000000e+03
  %2646 = fmul fast float %343, %2645
  %2647 = call float @dx.op.unary.f32(i32 22, float %2646)  ; Frc(value)
  %2648 = fadd fast float %2647, %333
  %2649 = fmul fast float %344, %2645
  %2650 = call float @dx.op.unary.f32(i32 22, float %2649)  ; Frc(value)
  %2651 = fadd fast float %2650, %335
  %2652 = fmul fast float %2617, %2645
  %2653 = call float @dx.op.unary.f32(i32 22, float %2652)  ; Frc(value)
  %2654 = fmul fast float %2653, 0x401921FB60000000
  %2655 = fadd fast float %2654, %2636
  %2656 = call float @dx.op.unary.f32(i32 13, float %2655)  ; Sin(value)
  %2657 = call float @dx.op.unary.f32(i32 12, float %2655)  ; Cos(value)
  %2658 = fsub fast float -0.000000e+00, %2656
  %2659 = fadd fast float %2610, -5.000000e-01
  %2660 = fadd fast float %2611, -5.000000e-01
  %2661 = fmul fast float %2628, %2659
  %2662 = fmul fast float %2630, %2660
  %2663 = fadd fast float %2661, 5.000000e-01
  %2664 = fadd fast float %2662, 5.000000e-01
  %2665 = fmul fast float %2639, %2663
  %2666 = fmul fast float %2642, %2664
  %2667 = fmul fast float %2657, %2665
  %2668 = call float @dx.op.tertiary.f32(i32 46, float %2658, float %2666, float %2667)  ; FMad(a,b,c)
  %2669 = fmul fast float %2656, %2665
  %2670 = call float @dx.op.tertiary.f32(i32 46, float %2657, float %2666, float %2669)  ; FMad(a,b,c)
  %2671 = fadd fast float %2648, %2668
  %2672 = fadd fast float %2651, %2670
  %2673 = icmp ugt i32 %2622, 1
  %2674 = icmp ugt i32 %2620, 33554431
  %2675 = or i1 %2674, %2673
  br i1 %2675, label %2676, label %2701

; <label>:2676                                    ; preds = %2603
  %2677 = add i32 %35, 276
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = lshr i32 %2679, 16
  %2681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2680)  ; LegacyF16ToF32(value)
  %2682 = fmul fast float %2644, %2681
  %2683 = call float @dx.op.unary.f32(i32 22, float %2682)  ; Frc(value)
  %2684 = mul nuw nsw i32 %2622, %2623
  %2685 = uitofp i32 %2684 to float
  %2686 = fmul fast float %2683, %2685
  %2687 = call float @dx.op.unary.f32(i32 27, float %2686)  ; Round_ni(value)
  %2688 = fptoui float %2687 to i32
  %2689 = urem i32 %2688, %2622
  %2690 = udiv i32 %2688, %2623
  %2691 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2692 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2693 = uitofp i32 %2689 to float
  %2694 = uitofp i32 %2690 to float
  %2695 = fadd fast float %2691, %2693
  %2696 = fadd fast float %2692, %2694
  %2697 = uitofp i32 %2622 to float
  %2698 = uitofp i32 %2623 to float
  %2699 = fdiv fast float %2695, %2697
  %2700 = fdiv fast float %2696, %2698
  br label %2701

; <label>:2701                                    ; preds = %2676, %2603
  %2702 = phi float [ %2699, %2676 ], [ %2671, %2603 ]
  %2703 = phi float [ %2700, %2676 ], [ %2672, %2603 ]
  %2704 = and i32 %2597, 16777216
  %2705 = icmp eq i32 %2704, 0
  br i1 %2705, label %2815, label %2706

; <label>:2706                                    ; preds = %2701
  %2707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2708 = extractvalue %dx.types.CBufRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.CBufRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.CBufRet.f32 %2707, 2
  %2711 = fadd fast float %2708, %134
  %2712 = fadd fast float %2709, %135
  %2713 = fadd fast float %2710, %136
  %2714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2715 = extractvalue %dx.types.CBufRet.f32 %2714, 0
  %2716 = call float @dx.op.unary.f32(i32 7, float %2715)  ; Saturate(value)
  %2717 = icmp eq i32 %36, 65535
  br i1 %2717, label %2812, label %2718

; <label>:2718                                    ; preds = %2706
  %2719 = lshr i32 %36, 1
  %2720 = shl i32 %2719, 2
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = and i32 %36, 1
  %2724 = icmp ne i32 %2723, 0
  %2725 = lshr i32 %2722, 16
  %2726 = and i32 %2722, 65535
  %2727 = select i1 %2724, i32 %2725, i32 %2726
  %2728 = icmp eq i32 %2727, 65535
  br i1 %2728, label %2808, label %2729

; <label>:2729                                    ; preds = %2718
  %2730 = mul nuw nsw i32 %2727, 40
  %2731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.ResRet.f32 %2731, 2
  %2735 = add nuw nsw i32 %2730, 12
  %2736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2735, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.ResRet.f32 %2736, 1
  %2739 = extractvalue %dx.types.ResRet.f32 %2736, 2
  %2740 = add nuw nsw i32 %2730, 24
  %2741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.ResRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.ResRet.f32 %2741, 2
  %2745 = add nuw nsw i32 %2730, 36
  %2746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.f32 %2746, 0
  %2748 = fsub fast float %2711, %2732
  %2749 = fsub fast float %2712, %2733
  %2750 = fsub fast float %2713, %2734
  %2751 = fmul fast float %2747, %2748
  %2752 = fmul fast float %2747, %2749
  %2753 = fmul fast float %2747, %2750
  %2754 = call float @dx.op.unary.f32(i32 27, float %2751)  ; Round_ni(value)
  %2755 = call float @dx.op.unary.f32(i32 27, float %2752)  ; Round_ni(value)
  %2756 = call float @dx.op.unary.f32(i32 27, float %2753)  ; Round_ni(value)
  %2757 = fadd fast float %2754, 5.000000e-01
  %2758 = fadd fast float %2755, 5.000000e-01
  %2759 = fadd fast float %2756, 5.000000e-01
  %2760 = fmul fast float %2757, %2737
  %2761 = fmul fast float %2758, %2738
  %2762 = fmul fast float %2759, %2739
  %2763 = shl i32 %36, 2
  %2764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.i32 %2764, 0
  %2766 = add i32 %2765, 0
  %2767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2768 = call float @dx.op.unary.f32(i32 22, float %2760)  ; Frc(value)
  %2769 = call float @dx.op.unary.f32(i32 22, float %2761)  ; Frc(value)
  %2770 = call float @dx.op.unary.f32(i32 22, float %2762)  ; Frc(value)
  %2771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2767, %dx.types.Handle %30, float %2768, float %2769, float %2770, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = extractvalue %dx.types.ResRet.f32 %2771, 1
  %2774 = extractvalue %dx.types.ResRet.f32 %2771, 2
  %2775 = fmul fast float %2772, 1.023000e+03
  %2776 = fmul fast float %2773, 1.023000e+03
  %2777 = fmul fast float %2774, 1.023000e+03
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = call float @dx.op.unary.f32(i32 27, float %2778)  ; Round_ni(value)
  %2782 = call float @dx.op.unary.f32(i32 27, float %2779)  ; Round_ni(value)
  %2783 = call float @dx.op.unary.f32(i32 27, float %2780)  ; Round_ni(value)
  %2784 = fsub fast float %2751, %2754
  %2785 = fsub fast float %2752, %2755
  %2786 = fsub fast float %2753, %2756
  %2787 = fmul fast float %2784, 7.500000e-01
  %2788 = fmul fast float %2785, 7.500000e-01
  %2789 = fmul fast float %2786, 7.500000e-01
  %2790 = fadd fast float %2754, 1.250000e-01
  %2791 = fadd fast float %2790, %2787
  %2792 = fadd fast float %2791, %2781
  %2793 = fadd fast float %2755, 1.250000e-01
  %2794 = fadd fast float %2793, %2788
  %2795 = fadd fast float %2794, %2782
  %2796 = fadd fast float %2756, 1.250000e-01
  %2797 = fadd fast float %2796, %2789
  %2798 = fadd fast float %2797, %2783
  %2799 = fmul fast float %2792, %2742
  %2800 = fmul fast float %2795, %2743
  %2801 = fmul fast float %2798, %2744
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = add i32 %2803, 0
  %2805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2804, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2805, %dx.types.Handle %28, float %2799, float %2800, float %2801, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2807 = extractvalue %dx.types.ResRet.f32 %2806, 0
  br label %2808

; <label>:2808                                    ; preds = %2729, %2718
  %2809 = phi float [ %2807, %2729 ], [ -1.000000e+00, %2718 ]
  %2810 = fadd fast float %2809, %2716
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  br label %2812

; <label>:2812                                    ; preds = %2808, %2706
  %2813 = phi float [ %2811, %2808 ], [ %2716, %2706 ]
  %2814 = fmul fast float %2813, %399
  br label %2815

; <label>:2815                                    ; preds = %2812, %2701
  %2816 = phi float [ %2814, %2812 ], [ %399, %2701 ]
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = and i32 %2818, 256
  %2820 = icmp eq i32 %2819, 0
  br i1 %2820, label %2867, label %2821

; <label>:2821                                    ; preds = %2815
  %2822 = add i32 %35, 452
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2822, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = add i32 %2824, 0
  %2826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2827 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2826, %dx.types.Handle %72, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  %2829 = add i32 %35, 148
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = shl i32 %2831, 4
  %2833 = and i32 %2832, 32752
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = lshr i32 %2831, 7
  %2836 = and i32 %2835, 32752
  %2837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2836)  ; LegacyF16ToF32(value)
  %2838 = fsub fast float 1.000000e+00, %2816
  %2839 = call float @dx.op.binary.f32(i32 35, float %2838, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2840 = bitcast float %2816 to i32
  %2841 = sitofp i32 %2840 to float
  %2842 = fadd fast float %2841, 0xC1CFBF8940000000
  %2843 = fmul fast float %2837, %2842
  %2844 = fadd fast float %2843, 0x41CFBF8940000000
  %2845 = fptosi float %2844 to i32
  %2846 = bitcast i32 %2845 to float
  %2847 = bitcast float %2839 to i32
  %2848 = sitofp i32 %2847 to float
  %2849 = fadd fast float %2848, 0xC1CFBF8940000000
  %2850 = fmul fast float %2849, %2837
  %2851 = fadd fast float %2850, 0x41CFBF8940000000
  %2852 = fptosi float %2851 to i32
  %2853 = bitcast i32 %2852 to float
  %2854 = fmul fast float %2846, %2834
  %2855 = fmul fast float %2853, %2834
  %2856 = fsub fast float %2839, %2854
  %2857 = fadd fast float %2855, %2839
  %2858 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2859 = call float @dx.op.unary.f32(i32 7, float %2857)  ; Saturate(value)
  %2860 = fsub fast float %2828, %2858
  %2861 = fsub fast float %2859, %2858
  %2862 = bitcast float %2861 to i32
  %2863 = sub nsw i32 2129859010, %2862
  %2864 = bitcast i32 %2863 to float
  %2865 = fmul fast float %2864, %2860
  %2866 = call float @dx.op.unary.f32(i32 7, float %2865)  ; Saturate(value)
  br label %2867

; <label>:2867                                    ; preds = %2821, %2815
  %2868 = phi float [ %2866, %2821 ], [ %2816, %2815 ]
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = and i32 %2870, 128
  %2872 = icmp eq i32 %2871, 0
  br i1 %2872, label %2889, label %2873

; <label>:2873                                    ; preds = %2867
  %2874 = add i32 %35, 436
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = add i32 %2876, 0
  %2878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2878, %dx.types.Handle %72, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 524288
  %2884 = icmp ne i32 %2883, 0
  %2885 = fcmp fast ogt float %2880, 0x3FE0101020000000
  %2886 = select i1 %2885, float 1.000000e+00, float 0.000000e+00
  %2887 = select i1 %2884, float %2886, float %2880
  %2888 = fmul fast float %2887, %2868
  br label %2889

; <label>:2889                                    ; preds = %2873, %2867
  %2890 = phi float [ %2888, %2873 ], [ %2868, %2867 ]
  %2891 = fcmp fast ult float %2890, 0x3F70101020000000
  br i1 %2891, label %3434, label %2892

; <label>:2892                                    ; preds = %2889
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 16
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %3095, label %2897

; <label>:2897                                    ; preds = %2892
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %35, 388
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = add i32 %2902, 0
  %2904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2905 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2904, %dx.types.Handle %71, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2906 = extractvalue %dx.types.ResRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.ResRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.ResRet.f32 %2905, 2
  %2909 = extractvalue %dx.types.ResRet.f32 %2905, 3
  %2910 = and i32 %2899, 255
  %2911 = uitofp i32 %2910 to float
  %2912 = lshr i32 %2899, 8
  %2913 = and i32 %2912, 255
  %2914 = uitofp i32 %2913 to float
  %2915 = fmul fast float %2909, %2911
  %2916 = fadd fast float %2915, %2914
  %2917 = fmul fast float %2916, 0x3F70101000000000
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 512
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %2930, label %2922

; <label>:2922                                    ; preds = %2897
  %2923 = add i32 %35, 472
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %2925, 0
  %2927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2927, %dx.types.Handle %72, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  br label %2930

; <label>:2930                                    ; preds = %2922, %2897
  %2931 = phi float [ %2929, %2922 ], [ 1.000000e+00, %2897 ]
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, 33554432
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %3042, label %2936

; <label>:2936                                    ; preds = %2930
  %2937 = add i32 %35, 272
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2937, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 65535
  %2941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2940)  ; LegacyF16ToF32(value)
  %2942 = lshr i32 %2939, 16
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = add i32 %35, 276
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 65535
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = lshr i32 %2950, 24
  %2952 = uitofp i32 %2951 to float
  %2953 = fmul fast float %2952, 0x3F70101020000000
  %2954 = and i32 %2950, 255
  %2955 = uitofp i32 %2954 to float
  %2956 = fmul fast float %2955, 0x3F70101020000000
  %2957 = lshr i32 %2950, 8
  %2958 = and i32 %2957, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = fmul fast float %2959, 0x3F70101020000000
  %2961 = lshr i32 %2950, 16
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = add i32 %35, 268
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = lshr i32 %2967, 24
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = and i32 %2967, 255
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = lshr i32 %2967, 8
  %2975 = and i32 %2974, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = lshr i32 %2967, 16
  %2979 = and i32 %2978, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = bitcast float %2906 to i32
  %2983 = ashr i32 %2982, 1
  %2984 = sub nsw i32 1597463174, %2983
  %2985 = bitcast i32 %2984 to float
  %2986 = fmul fast float %2906, 5.000000e-01
  %2987 = fmul fast float %2985, %2985
  %2988 = fmul fast float %2987, %2986
  %2989 = fsub fast float 1.500000e+00, %2988
  %2990 = fmul fast float %2985, %2906
  %2991 = fmul fast float %2990, %2989
  %2992 = bitcast float %2907 to i32
  %2993 = ashr i32 %2992, 1
  %2994 = sub nsw i32 1597463174, %2993
  %2995 = bitcast i32 %2994 to float
  %2996 = fmul fast float %2907, 5.000000e-01
  %2997 = fmul fast float %2995, %2995
  %2998 = fmul fast float %2997, %2996
  %2999 = fsub fast float 1.500000e+00, %2998
  %3000 = fmul fast float %2995, %2907
  %3001 = fmul fast float %3000, %2999
  %3002 = bitcast float %2908 to i32
  %3003 = ashr i32 %3002, 1
  %3004 = sub nsw i32 1597463174, %3003
  %3005 = bitcast i32 %3004 to float
  %3006 = fmul fast float %2908, 5.000000e-01
  %3007 = fmul fast float %3005, %3005
  %3008 = fmul fast float %3007, %3006
  %3009 = fsub fast float 1.500000e+00, %3008
  %3010 = fmul fast float %3005, %2908
  %3011 = fmul fast float %3010, %3009
  %3012 = fsub fast float %2991, %2973
  %3013 = fsub fast float %3001, %2977
  %3014 = fsub fast float %3011, %2981
  %3015 = fmul fast float %3012, %2941
  %3016 = fmul fast float %3013, %2943
  %3017 = fmul fast float %3014, %2948
  %3018 = fadd fast float %3015, %2956
  %3019 = fadd fast float %3016, %2960
  %3020 = fadd fast float %3017, %2964
  %3021 = call float @dx.op.unary.f32(i32 7, float %3018)  ; Saturate(value)
  %3022 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  %3023 = call float @dx.op.unary.f32(i32 7, float %3020)  ; Saturate(value)
  %3024 = fmul fast float %3021, %3021
  %3025 = fmul fast float %3022, %3022
  %3026 = fmul fast float %3023, %3023
  %3027 = fsub fast float %3024, %2906
  %3028 = fsub fast float %3025, %2907
  %3029 = fsub fast float %3026, %2908
  %3030 = fmul fast float %3027, %2931
  %3031 = fmul fast float %3028, %2931
  %3032 = fmul fast float %3029, %2931
  %3033 = fadd fast float %3030, %2906
  %3034 = fadd fast float %3031, %2907
  %3035 = fadd fast float %3032, %2908
  %3036 = fadd fast float %2953, %2917
  %3037 = fsub fast float %3036, %2970
  %3038 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3039 = fsub fast float %3038, %2917
  %3040 = fmul fast float %3039, %2931
  %3041 = fadd fast float %3040, %2917
  br label %3095

; <label>:3042                                    ; preds = %2930
  %3043 = and i32 %2933, 134217728
  %3044 = icmp eq i32 %3043, 0
  br i1 %3044, label %3079, label %3045

; <label>:3045                                    ; preds = %3042
  %3046 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3047 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3048 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3049 = fadd fast float %3046, -5.000000e-01
  %3050 = fadd fast float %3047, -5.000000e-01
  %3051 = fadd fast float %3048, -5.000000e-01
  %3052 = fmul fast float %3049, %2931
  %3053 = fmul fast float %3050, %2931
  %3054 = fmul fast float %3051, %2931
  %3055 = fadd fast float %3052, 5.000000e-01
  %3056 = fadd fast float %3053, 5.000000e-01
  %3057 = fadd fast float %3054, 5.000000e-01
  %3058 = call float @dx.op.unary.f32(i32 24, float %2906)  ; Sqrt(value)
  %3059 = call float @dx.op.unary.f32(i32 24, float %2907)  ; Sqrt(value)
  %3060 = call float @dx.op.unary.f32(i32 24, float %2908)  ; Sqrt(value)
  %3061 = fmul fast float %3055, 2.000000e+00
  %3062 = fsub fast float 1.000000e+00, %3061
  %3063 = fmul fast float %3062, %3058
  %3064 = fadd fast float %3063, %3061
  %3065 = fmul fast float %3064, %3058
  %3066 = fmul fast float %3056, 2.000000e+00
  %3067 = fsub fast float 1.000000e+00, %3066
  %3068 = fmul fast float %3067, %3059
  %3069 = fadd fast float %3068, %3066
  %3070 = fmul fast float %3069, %3059
  %3071 = fmul fast float %3057, 2.000000e+00
  %3072 = fsub fast float 1.000000e+00, %3071
  %3073 = fmul fast float %3072, %3060
  %3074 = fadd fast float %3073, %3071
  %3075 = fmul fast float %3074, %3060
  %3076 = fmul fast float %3065, %3065
  %3077 = fmul fast float %3070, %3070
  %3078 = fmul fast float %3075, %3075
  br label %3095

; <label>:3079                                    ; preds = %3042
  %3080 = fmul fast float %320, %320
  %3081 = fmul fast float %324, %324
  %3082 = fmul fast float %328, %328
  %3083 = fadd fast float %3080, -1.000000e+00
  %3084 = fadd fast float %3081, -1.000000e+00
  %3085 = fadd fast float %3082, -1.000000e+00
  %3086 = fmul fast float %2931, %3083
  %3087 = fmul fast float %2931, %3084
  %3088 = fmul fast float %2931, %3085
  %3089 = fadd fast float %3086, 1.000000e+00
  %3090 = fadd fast float %3087, 1.000000e+00
  %3091 = fadd fast float %3088, 1.000000e+00
  %3092 = fmul fast float %3089, %2906
  %3093 = fmul fast float %3090, %2907
  %3094 = fmul fast float %3091, %2908
  br label %3095

; <label>:3095                                    ; preds = %3079, %3045, %2936, %2892
  %3096 = phi float [ %3041, %2936 ], [ %2917, %3045 ], [ %2917, %3079 ], [ 0x3FA23C0BE0000000, %2892 ]
  %3097 = phi float [ %3033, %2936 ], [ %3076, %3045 ], [ %3092, %3079 ], [ 1.000000e+00, %2892 ]
  %3098 = phi float [ %3034, %2936 ], [ %3077, %3045 ], [ %3093, %3079 ], [ 1.000000e+00, %2892 ]
  %3099 = phi float [ %3035, %2936 ], [ %3078, %3045 ], [ %3094, %3079 ], [ 1.000000e+00, %2892 ]
  %3100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.i32 %3100, 1
  %3102 = and i32 %3101, 1
  %3103 = icmp ne i32 %3102, 0
  %3104 = add i32 %35, 356
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = and i32 %3106, 32
  %3108 = icmp ne i32 %3107, 0
  %3109 = and i1 %3103, %3108
  %3110 = select i1 %3109, float 1.000000e+00, float %3097
  %3111 = select i1 %3109, float 0x3FD3333340000000, float %3098
  %3112 = select i1 %3109, float 0x3FD3333340000000, float %3099
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 32
  %3116 = icmp eq i32 %3115, 0
  br i1 %3116, label %3189, label %3117

; <label>:3117                                    ; preds = %3095
  %3118 = add i32 %35, 140
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = add i32 %35, 404
  %3122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3121, i32 undef)  ; BufferLoad(srv,index,wot)
  %3123 = extractvalue %dx.types.ResRet.i32 %3122, 0
  %3124 = add i32 %3123, 0
  %3125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3125, %dx.types.Handle %71, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3127 = extractvalue %dx.types.ResRet.f32 %3126, 0
  %3128 = extractvalue %dx.types.ResRet.f32 %3126, 1
  %3129 = extractvalue %dx.types.ResRet.f32 %3126, 2
  %3130 = extractvalue %dx.types.ResRet.f32 %3126, 3
  %3131 = and i32 %3120, 255
  %3132 = uitofp i32 %3131 to float
  %3133 = lshr i32 %3120, 8
  %3134 = and i32 %3133, 255
  %3135 = uitofp i32 %3134 to float
  %3136 = lshr i32 %3120, 16
  %3137 = and i32 %3136, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = fmul fast float %3138, 0x3F70101000000000
  %3140 = fmul fast float %3127, %3132
  %3141 = fadd fast float %3140, %3135
  %3142 = fmul fast float %3141, 0x3F70101000000000
  %3143 = fadd fast float %3128, -5.000000e-01
  %3144 = fadd fast float %3130, -5.000000e-01
  %3145 = fmul fast float %3143, %3139
  %3146 = fmul fast float %3144, %3139
  %3147 = fadd fast float %3145, 5.000000e-01
  %3148 = fadd fast float %3146, 5.000000e-01
  %3149 = fmul fast float %3147, 2.000000e+00
  %3150 = fadd fast float %3149, -1.000000e+00
  %3151 = fmul fast float %3148, 2.000000e+00
  %3152 = fadd fast float %3151, -1.000000e+00
  %3153 = fadd fast float %3150, %3152
  %3154 = fmul fast float %3153, 5.000000e-01
  %3155 = fsub fast float %3150, %3152
  %3156 = fmul fast float %3155, 5.000000e-01
  %3157 = call float @dx.op.unary.f32(i32 6, float %3154)  ; FAbs(value)
  %3158 = fsub fast float 1.000000e+00, %3157
  %3159 = call float @dx.op.unary.f32(i32 6, float %3156)  ; FAbs(value)
  %3160 = fsub fast float %3158, %3159
  %3161 = call float @dx.op.dot3.f32(i32 55, float %3154, float %3156, float %3160, float %3154, float %3156, float %3160)  ; Dot3(ax,ay,az,bx,by,bz)
  %3162 = call float @dx.op.unary.f32(i32 25, float %3161)  ; Rsqrt(value)
  %3163 = fmul fast float %3154, %3162
  %3164 = fmul fast float %3156, %3162
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 67108864
  %3168 = icmp eq i32 %3167, 0
  br i1 %3168, label %3185, label %3169

; <label>:3169                                    ; preds = %3117
  %3170 = add i32 %35, 328
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 65535
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 65535
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = lshr i32 %3172, 16
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = fsub fast float %3142, %3180
  %3182 = fmul fast float %3181, %3174
  %3183 = fadd fast float %3182, %3178
  %3184 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  br label %3185

; <label>:3185                                    ; preds = %3169, %3117
  %3186 = phi float [ %3184, %3169 ], [ %3142, %3117 ]
  %3187 = call float @dx.op.dot2.f32(i32 54, float %3163, float %3164, float %2606, float %2607)  ; Dot2(ax,ay,bx,by)
  %3188 = call float @dx.op.dot2.f32(i32 54, float %3163, float %3164, float %2608, float %2609)  ; Dot2(ax,ay,bx,by)
  br label %3189

; <label>:3189                                    ; preds = %3185, %3095
  %3190 = phi float [ %3186, %3185 ], [ 0x3FD6666660000000, %3095 ]
  %3191 = phi float [ %3187, %3185 ], [ 0.000000e+00, %3095 ]
  %3192 = phi float [ %3188, %3185 ], [ 0.000000e+00, %3095 ]
  %3193 = phi float [ %3129, %3185 ], [ 1.000000e+00, %3095 ]
  %3194 = add i32 %35, 208
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = lshr i32 %3196, 22
  %3198 = shl nuw nsw i32 %3197, 5
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 64
  %3203 = icmp eq i32 %3202, 0
  br i1 %3203, label %3237, label %3204

; <label>:3204                                    ; preds = %3189
  %3205 = add i32 %35, 420
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = add i32 %3207, 0
  %3209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = and i32 %3211, 131072
  %3213 = icmp eq i32 %3212, 0
  %3214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3209, %dx.types.Handle %71, float %2702, float %2703, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = extractvalue %dx.types.ResRet.f32 %3214, 1
  %3217 = extractvalue %dx.types.ResRet.f32 %3214, 2
  %3218 = fmul fast float %3215, %308
  %3219 = fmul fast float %3216, %311
  %3220 = fmul fast float %3217, %314
  br i1 %3213, label %3227, label %3221

; <label>:3221                                    ; preds = %3204
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = fmul fast float %3223, %3218
  %3225 = fmul fast float %3223, %3219
  %3226 = fmul fast float %3223, %3220
  br label %3227

; <label>:3227                                    ; preds = %3221, %3204
  %3228 = phi float [ %3224, %3221 ], [ %3218, %3204 ]
  %3229 = phi float [ %3225, %3221 ], [ %3219, %3204 ]
  %3230 = phi float [ %3226, %3221 ], [ %3220, %3204 ]
  %3231 = fmul fast float %3228, %3199
  %3232 = select i1 %176, float %3231, float %3228
  %3233 = call float @dx.op.dot3.f32(i32 55, float %3232, float %3229, float %3230, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3234 = select i1 %176, float 0.000000e+00, float %3228
  %3235 = select i1 %176, float %3233, float %3229
  %3236 = select i1 %176, float 0.000000e+00, float %3230
  br label %3237

; <label>:3237                                    ; preds = %3227, %3189
  %3238 = phi float [ %3234, %3227 ], [ 0.000000e+00, %3189 ]
  %3239 = phi float [ %3235, %3227 ], [ 0.000000e+00, %3189 ]
  %3240 = phi float [ %3236, %3227 ], [ 0.000000e+00, %3189 ]
  %3241 = add i32 %35, 144
  %3242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3241, i32 undef)  ; BufferLoad(srv,index,wot)
  %3243 = extractvalue %dx.types.ResRet.i32 %3242, 0
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = lshr i32 %3243, 8
  %3247 = and i32 %3246, 255
  %3248 = uitofp i32 %3247 to float
  %3249 = call float @dx.op.dot3.f32(i32 55, float %3110, float %3111, float %3112, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = fmul fast float %3248, %3249
  %3251 = fadd fast float %3250, %3245
  %3252 = fmul fast float %3251, 0x3F70101020000000
  %3253 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  br i1 %2594, label %3254, label %3262

; <label>:3254                                    ; preds = %3237
  %3255 = fsub fast float 1.000000e+00, %2890
  %3256 = fmul fast float %3255, %2583
  %3257 = fmul fast float %3255, %2584
  %3258 = fmul fast float %3255, %2585
  %3259 = fmul fast float %3255, %2586
  %3260 = fmul fast float %3255, %2587
  %3261 = fmul fast float %3255, %2588
  br label %3262

; <label>:3262                                    ; preds = %3254, %3237
  %3263 = phi float [ %3256, %3254 ], [ %2583, %3237 ]
  %3264 = phi float [ %3257, %3254 ], [ %2584, %3237 ]
  %3265 = phi float [ %3258, %3254 ], [ %2585, %3237 ]
  %3266 = phi float [ %3259, %3254 ], [ %2586, %3237 ]
  %3267 = phi float [ %3260, %3254 ], [ %2587, %3237 ]
  %3268 = phi float [ %3261, %3254 ], [ %2588, %3237 ]
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, 3
  %3272 = icmp eq i32 %3271, 3
  br i1 %3272, label %3351, label %3273

; <label>:3273                                    ; preds = %3262
  %3274 = and i32 %3270, 16
  %3275 = icmp ne i32 %3274, 0
  %3276 = select i1 %3275, float %2890, float 0.000000e+00
  %3277 = icmp eq i32 %3271, 0
  br i1 %3277, label %3278, label %3306

; <label>:3278                                    ; preds = %3273
  %3279 = and i32 %3270, 64
  %3280 = icmp ne i32 %3279, 0
  %3281 = select i1 %3280, float %2890, float 0.000000e+00
  %3282 = fsub fast float %3110, %3263
  %3283 = fsub fast float %3111, %3264
  %3284 = fsub fast float %3112, %3265
  %3285 = fmul fast float %3276, %3282
  %3286 = fmul fast float %3276, %3283
  %3287 = fmul fast float %3276, %3284
  %3288 = fadd fast float %3285, %3263
  %3289 = fadd fast float %3286, %3264
  %3290 = fadd fast float %3287, %3265
  %3291 = fsub fast float %3096, %2589
  %3292 = fmul fast float %3276, %3291
  %3293 = fadd fast float %3292, %2589
  %3294 = fsub fast float %3238, %3266
  %3295 = fsub fast float %3239, %3267
  %3296 = fsub fast float %3240, %3268
  %3297 = fmul fast float %3281, %3294
  %3298 = fmul fast float %3281, %3295
  %3299 = fmul fast float %3281, %3296
  %3300 = fadd fast float %3297, %3266
  %3301 = fadd fast float %3298, %3267
  %3302 = fadd fast float %3299, %3268
  %3303 = fsub fast float %3253, %2592
  %3304 = fmul fast float %3276, %3303
  %3305 = fadd fast float %3304, %2592
  br label %3351

; <label>:3306                                    ; preds = %3273
  %3307 = icmp eq i32 %3271, 1
  br i1 %3307, label %3308, label %3321

; <label>:3308                                    ; preds = %3306
  %3309 = fadd fast float %3110, -1.000000e+00
  %3310 = fadd fast float %3111, -1.000000e+00
  %3311 = fadd fast float %3112, -1.000000e+00
  %3312 = fmul fast float %3276, %3309
  %3313 = fmul fast float %3276, %3310
  %3314 = fmul fast float %3276, %3311
  %3315 = fadd fast float %3312, 1.000000e+00
  %3316 = fadd fast float %3313, 1.000000e+00
  %3317 = fadd fast float %3314, 1.000000e+00
  %3318 = fmul fast float %3315, %3263
  %3319 = fmul fast float %3316, %3264
  %3320 = fmul fast float %3317, %3265
  br label %3351

; <label>:3321                                    ; preds = %3306
  %3322 = icmp eq i32 %3271, 2
  br i1 %3322, label %3323, label %3351

; <label>:3323                                    ; preds = %3321
  %3324 = call float @dx.op.unary.f32(i32 24, float %3110)  ; Sqrt(value)
  %3325 = call float @dx.op.unary.f32(i32 24, float %3111)  ; Sqrt(value)
  %3326 = call float @dx.op.unary.f32(i32 24, float %3112)  ; Sqrt(value)
  %3327 = fadd fast float %3324, -5.000000e-01
  %3328 = fadd fast float %3325, -5.000000e-01
  %3329 = fadd fast float %3326, -5.000000e-01
  %3330 = fmul fast float %3327, %3276
  %3331 = fmul fast float %3328, %3276
  %3332 = fmul fast float %3329, %3276
  %3333 = fadd fast float %3330, 5.000000e-01
  %3334 = fadd fast float %3331, 5.000000e-01
  %3335 = fadd fast float %3332, 5.000000e-01
  %3336 = fmul fast float %3333, 2.000000e+00
  %3337 = fsub fast float 1.000000e+00, %3336
  %3338 = fmul fast float %3337, %3263
  %3339 = fadd fast float %3338, %3336
  %3340 = fmul fast float %3339, %3263
  %3341 = fmul fast float %3334, 2.000000e+00
  %3342 = fsub fast float 1.000000e+00, %3341
  %3343 = fmul fast float %3342, %3264
  %3344 = fadd fast float %3343, %3341
  %3345 = fmul fast float %3344, %3264
  %3346 = fmul fast float %3335, 2.000000e+00
  %3347 = fsub fast float 1.000000e+00, %3346
  %3348 = fmul fast float %3347, %3265
  %3349 = fadd fast float %3348, %3346
  %3350 = fmul fast float %3349, %3265
  br label %3351

; <label>:3351                                    ; preds = %3323, %3321, %3308, %3278, %3262
  %3352 = phi float [ %3263, %3262 ], [ %3340, %3323 ], [ %3263, %3321 ], [ %3318, %3308 ], [ %3288, %3278 ]
  %3353 = phi float [ %3264, %3262 ], [ %3345, %3323 ], [ %3264, %3321 ], [ %3319, %3308 ], [ %3289, %3278 ]
  %3354 = phi float [ %3265, %3262 ], [ %3350, %3323 ], [ %3265, %3321 ], [ %3320, %3308 ], [ %3290, %3278 ]
  %3355 = phi float [ %3266, %3262 ], [ %3266, %3323 ], [ %3266, %3321 ], [ %3266, %3308 ], [ %3300, %3278 ]
  %3356 = phi float [ %3267, %3262 ], [ %3267, %3323 ], [ %3267, %3321 ], [ %3267, %3308 ], [ %3301, %3278 ]
  %3357 = phi float [ %3268, %3262 ], [ %3268, %3323 ], [ %3268, %3321 ], [ %3268, %3308 ], [ %3302, %3278 ]
  %3358 = phi float [ %2589, %3262 ], [ %2589, %3323 ], [ %2589, %3321 ], [ %2589, %3308 ], [ %3293, %3278 ]
  %3359 = phi float [ %2592, %3262 ], [ %2592, %3323 ], [ %2592, %3321 ], [ %2592, %3308 ], [ %3305, %3278 ]
  %3360 = and i32 %3270, 12
  %3361 = icmp eq i32 %3360, 12
  br i1 %3361, label %3434, label %3362

; <label>:3362                                    ; preds = %3351
  %3363 = and i32 %3270, 2097184
  %3364 = icmp eq i32 %3363, 2097184
  %3365 = select i1 %3364, float %2890, float 0.000000e+00
  %3366 = and i32 %3270, 4194336
  %3367 = icmp eq i32 %3366, 4194336
  %3368 = select i1 %3367, float %2890, float 0.000000e+00
  %3369 = and i32 %3270, 8388640
  %3370 = icmp eq i32 %3369, 8388640
  %3371 = select i1 %3370, float %2890, float 0.000000e+00
  %3372 = icmp eq i32 %3360, 0
  br i1 %3372, label %3373, label %3386

; <label>:3373                                    ; preds = %3362
  %3374 = fsub fast float %3191, %2581
  %3375 = fsub fast float %3192, %2582
  %3376 = fmul fast float %3365, %3374
  %3377 = fmul fast float %3365, %3375
  %3378 = fadd fast float %3376, %2581
  %3379 = fadd fast float %3377, %2582
  %3380 = fsub fast float %3193, %2591
  %3381 = fmul fast float %3368, %3380
  %3382 = fadd fast float %3381, %2591
  %3383 = fsub fast float %3190, %2590
  %3384 = fmul fast float %3371, %3383
  %3385 = fadd fast float %3384, %2590
  br label %3434

; <label>:3386                                    ; preds = %3362
  %3387 = icmp eq i32 %3360, 4
  br i1 %3387, label %3388, label %3420

; <label>:3388                                    ; preds = %3386
  %3389 = fmul fast float %3365, %3191
  %3390 = fmul fast float %3365, %3192
  %3391 = fadd fast float %3389, %2581
  %3392 = fadd fast float %3390, %2582
  %3393 = call float @dx.op.binary.f32(i32 36, float %2591, float %3193)  ; FMin(a,b)
  %3394 = fsub fast float %3393, %2591
  %3395 = fmul fast float %3394, %3368
  %3396 = fadd fast float %3395, %2591
  %3397 = fadd fast float %3190, %2590
  %3398 = fmul fast float %3397, 0x3FF337FAE0000000
  %3399 = fmul fast float %2590, %2590
  %3400 = fmul fast float %3190, %3190
  %3401 = fadd fast float %3400, %3399
  %3402 = fmul fast float %3401, 0x3FE5152B00000000
  %3403 = fmul fast float %2590, 0xBFCC1F85E0000000
  %3404 = fmul fast float %3403, %3190
  %3405 = fadd fast float %3404, 0xBFE1363700000000
  %3406 = fadd fast float %3405, %3398
  %3407 = fsub fast float %3406, %3402
  %3408 = fmul fast float %3397, 0x3FBA6F0D00000000
  %3409 = fmul fast float %3401, 0x3FD0432880000000
  %3410 = fmul fast float %2590, 0xBFEF110800000000
  %3411 = fmul fast float %3410, %3190
  %3412 = fadd fast float %3411, 1.000000e+00
  %3413 = fsub fast float %3412, %3408
  %3414 = fadd fast float %3413, %3409
  %3415 = fdiv fast float %3407, %3414
  %3416 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  %3417 = fsub fast float %3416, %2590
  %3418 = fmul fast float %3417, %3371
  %3419 = fadd fast float %3418, %2590
  br label %3434

; <label>:3420                                    ; preds = %3386
  %3421 = icmp eq i32 %3360, 8
  br i1 %3421, label %3422, label %3434

; <label>:3422                                    ; preds = %3420
  %3423 = fmul fast float %3365, %3191
  %3424 = fmul fast float %3365, %3192
  %3425 = fadd fast float %3423, %2581
  %3426 = fadd fast float %3424, %2582
  %3427 = call float @dx.op.binary.f32(i32 36, float %2591, float %3193)  ; FMin(a,b)
  %3428 = fsub fast float %3427, %2591
  %3429 = fmul fast float %3428, %3368
  %3430 = fadd fast float %3429, %2591
  %3431 = fsub fast float %3190, %2590
  %3432 = fmul fast float %3371, %3431
  %3433 = fadd fast float %3432, %2590
  br label %3434

; <label>:3434                                    ; preds = %3422, %3420, %3388, %3373, %3351, %2889, %2593, %2580
  %3435 = phi float [ %2581, %3351 ], [ %2581, %2889 ], [ %2581, %2580 ], [ %2581, %2593 ], [ %3378, %3373 ], [ %3391, %3388 ], [ %2581, %3420 ], [ %3425, %3422 ]
  %3436 = phi float [ %2582, %3351 ], [ %2582, %2889 ], [ %2582, %2580 ], [ %2582, %2593 ], [ %3379, %3373 ], [ %3392, %3388 ], [ %2582, %3420 ], [ %3426, %3422 ]
  %3437 = phi float [ %3352, %3351 ], [ %2583, %2889 ], [ %2583, %2580 ], [ %2583, %2593 ], [ %3352, %3373 ], [ %3352, %3388 ], [ %3352, %3420 ], [ %3352, %3422 ]
  %3438 = phi float [ %3353, %3351 ], [ %2584, %2889 ], [ %2584, %2580 ], [ %2584, %2593 ], [ %3353, %3373 ], [ %3353, %3388 ], [ %3353, %3420 ], [ %3353, %3422 ]
  %3439 = phi float [ %3354, %3351 ], [ %2585, %2889 ], [ %2585, %2580 ], [ %2585, %2593 ], [ %3354, %3373 ], [ %3354, %3388 ], [ %3354, %3420 ], [ %3354, %3422 ]
  %3440 = phi float [ %3355, %3351 ], [ %2586, %2889 ], [ %2586, %2580 ], [ %2586, %2593 ], [ %3355, %3373 ], [ %3355, %3388 ], [ %3355, %3420 ], [ %3355, %3422 ]
  %3441 = phi float [ %3356, %3351 ], [ %2587, %2889 ], [ %2587, %2580 ], [ %2587, %2593 ], [ %3356, %3373 ], [ %3356, %3388 ], [ %3356, %3420 ], [ %3356, %3422 ]
  %3442 = phi float [ %3357, %3351 ], [ %2588, %2889 ], [ %2588, %2580 ], [ %2588, %2593 ], [ %3357, %3373 ], [ %3357, %3388 ], [ %3357, %3420 ], [ %3357, %3422 ]
  %3443 = phi float [ %3358, %3351 ], [ %2589, %2889 ], [ %2589, %2580 ], [ %2589, %2593 ], [ %3358, %3373 ], [ %3358, %3388 ], [ %3358, %3420 ], [ %3358, %3422 ]
  %3444 = phi float [ %2590, %3351 ], [ %2590, %2889 ], [ %2590, %2580 ], [ %2590, %2593 ], [ %3385, %3373 ], [ %3419, %3388 ], [ %2590, %3420 ], [ %3433, %3422 ]
  %3445 = phi float [ %2591, %3351 ], [ %2591, %2889 ], [ %2591, %2580 ], [ %2591, %2593 ], [ %3382, %3373 ], [ %3396, %3388 ], [ %2591, %3420 ], [ %3430, %3422 ]
  %3446 = phi float [ %3359, %3351 ], [ %2592, %2889 ], [ %2592, %2580 ], [ %2592, %2593 ], [ %3359, %3373 ], [ %3359, %3388 ], [ %3359, %3420 ], [ %3359, %3422 ]
  %3447 = add i32 %35, 360
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = extractvalue %dx.types.ResRet.i32 %3448, 1
  %3451 = bitcast i32 %3449 to float
  %3452 = bitcast i32 %3450 to float
  %3453 = fcmp fast oge float %3451, 0.000000e+00
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3456 = select i1 %3453, float %3451, float %3455
  %3457 = add i32 %35, 456
  %3458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3457, i32 undef)  ; BufferLoad(srv,index,wot)
  %3459 = extractvalue %dx.types.ResRet.i32 %3458, 0
  %3460 = add i32 %3459, 0
  %3461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3461, %dx.types.Handle %72, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3463 = extractvalue %dx.types.ResRet.f32 %3462, 0
  %3464 = fmul fast float %3463, %3452
  %3465 = fadd fast float %3464, %3456
  %3466 = call float @dx.op.dot2.f32(i32 54, float %3435, float %3436, float %3435, float %3436)  ; Dot2(ax,ay,bx,by)
  %3467 = fmul fast float %3466, 0x3FE3333340000000
  %3468 = fsub fast float 1.000000e+00, %3467
  %3469 = call float @dx.op.dot3.f32(i32 55, float %3435, float %3436, float %3468, float %3435, float %3436, float %3468)  ; Dot3(ax,ay,az,bx,by,bz)
  %3470 = call float @dx.op.unary.f32(i32 25, float %3469)  ; Rsqrt(value)
  %3471 = fmul fast float %3470, %3435
  %3472 = fmul fast float %3470, %3436
  %3473 = fmul fast float %3468, %3470
  %3474 = fmul fast float %3473, %84
  %3475 = fmul fast float %3473, %86
  %3476 = fmul fast float %3473, %88
  %3477 = fmul fast float %3471, %56
  %3478 = fmul fast float %3471, %57
  %3479 = fmul fast float %3471, %58
  %3480 = fadd fast float %3474, %3477
  %3481 = fadd fast float %3475, %3478
  %3482 = fadd fast float %3476, %3479
  %3483 = fmul fast float %98, %3472
  %3484 = fmul fast float %99, %3472
  %3485 = fmul fast float %100, %3472
  %3486 = fadd fast float %3480, %3483
  %3487 = fadd fast float %3481, %3484
  %3488 = fadd fast float %3482, %3485
  %3489 = call float @dx.op.dot3.f32(i32 55, float %3486, float %3487, float %3488, float %3486, float %3487, float %3488)  ; Dot3(ax,ay,az,bx,by,bz)
  %3490 = call float @dx.op.unary.f32(i32 25, float %3489)  ; Rsqrt(value)
  %3491 = fmul fast float %3486, %3490
  %3492 = fmul fast float %3487, %3490
  %3493 = fmul fast float %3488, %3490
  %3494 = and i32 %37, 1
  %3495 = icmp eq i32 %3494, 0
  br i1 %3495, label %3496, label %4004

; <label>:3496                                    ; preds = %3434
  %3497 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3498 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3499 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3500 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3501 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3502 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3503 = fadd fast float %3497, %134
  %3504 = fadd fast float %3498, %135
  %3505 = fadd fast float %3499, %136
  %3506 = fadd fast float %3500, %134
  %3507 = fadd fast float %3501, %135
  %3508 = fadd fast float %3502, %136
  %3509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3510 = extractvalue %dx.types.CBufRet.f32 %3509, 0
  %3511 = extractvalue %dx.types.CBufRet.f32 %3509, 1
  %3512 = extractvalue %dx.types.CBufRet.f32 %3509, 2
  %3513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3514 = extractvalue %dx.types.CBufRet.f32 %3513, 2
  %3515 = extractvalue %dx.types.CBufRet.f32 %3513, 3
  %3516 = fmul fast float %3510, %75
  %3517 = fmul fast float %3516, %3514
  %3518 = fmul fast float %3511, %76
  %3519 = fmul fast float %3518, %3515
  %3520 = fptoui float %3517 to i32
  %3521 = fptoui float %3519 to i32
  %3522 = fadd fast float %3510, -1.000000e+00
  %3523 = fadd fast float %3511, -1.000000e+00
  %3524 = fptoui float %3522 to i32
  %3525 = fptoui float %3523 to i32
  %3526 = call i32 @dx.op.binary.i32(i32 40, i32 %3520, i32 %3524)  ; UMin(a,b)
  %3527 = call i32 @dx.op.binary.i32(i32 40, i32 %3521, i32 %3525)  ; UMin(a,b)
  %3528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3529 = extractvalue %dx.types.CBufRet.f32 %3528, 2
  %3530 = extractvalue %dx.types.CBufRet.f32 %3528, 3
  %3531 = fmul fast float %3529, %70
  %3532 = fsub fast float %3531, %3530
  %3533 = fadd fast float %3512, -1.000000e+00
  %3534 = call float @dx.op.binary.f32(i32 36, float %3532, float %3533)  ; FMin(a,b)
  %3535 = fptoui float %3534 to i32
  %3536 = fptoui float %3510 to i32
  %3537 = fptoui float %3511 to i32
  %3538 = mul i32 %3535, %3537
  %3539 = add i32 %3538, %3527
  %3540 = mul i32 %3539, %3536
  %3541 = add i32 %3540, %3526
  %3542 = shl i32 %3541, 2
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = and i32 %3544, 1023
  %3546 = lshr i32 %3544, 10
  %3547 = icmp eq i32 %3545, 0
  br i1 %3547, label %3973, label %3548

; <label>:3548                                    ; preds = %3496
  %3549 = and i32 %3544, 1023
  br label %3550

; <label>:3550                                    ; preds = %3676, %3548
  %3551 = phi i32 [ %3626, %3676 ], [ 0, %3548 ]
  %3552 = phi float [ %3677, %3676 ], [ 0.000000e+00, %3548 ]
  %3553 = phi float [ %3678, %3676 ], [ %3465, %3548 ]
  %3554 = phi float [ %3679, %3676 ], [ %3446, %3548 ]
  %3555 = phi float [ %3680, %3676 ], [ 0.000000e+00, %3548 ]
  %3556 = phi float [ %3681, %3676 ], [ 0.000000e+00, %3548 ]
  %3557 = phi float [ %3682, %3676 ], [ %3440, %3548 ]
  %3558 = phi float [ %3683, %3676 ], [ %3441, %3548 ]
  %3559 = phi float [ %3684, %3676 ], [ %3442, %3548 ]
  %3560 = phi float [ %3685, %3676 ], [ %3491, %3548 ]
  %3561 = phi float [ %3686, %3676 ], [ %3492, %3548 ]
  %3562 = phi float [ %3687, %3676 ], [ %3493, %3548 ]
  %3563 = phi float [ %3688, %3676 ], [ %3445, %3548 ]
  %3564 = phi float [ %3689, %3676 ], [ %3444, %3548 ]
  %3565 = phi float [ %3690, %3676 ], [ 0.000000e+00, %3548 ]
  %3566 = phi float [ %3691, %3676 ], [ %3443, %3548 ]
  %3567 = phi float [ %3692, %3676 ], [ %3437, %3548 ]
  %3568 = phi float [ %3693, %3676 ], [ %3438, %3548 ]
  %3569 = phi float [ %3694, %3676 ], [ %3439, %3548 ]
  %3570 = add nuw nsw i32 %3551, %3546
  %3571 = shl i32 %3570, 2
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = shl i32 %3573, 8
  %3575 = or i32 %3574, 48
  %3576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = extractvalue %dx.types.ResRet.f32 %3576, 3
  %3581 = or i32 %3574, 64
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.i32 %3582, 1
  %3585 = or i32 %3574, 80
  %3586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 3
  %3589 = or i32 %3574, 96
  %3590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.ResRet.f32 %3590, 2
  %3594 = extractvalue %dx.types.ResRet.f32 %3590, 3
  %3595 = or i32 %3574, 112
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3598 = or i32 %3574, 128
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = or i32 %3574, 144
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3609 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3610 = or i32 %3574, 160
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3616 = or i32 %3574, 192
  %3617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.i32 %3617, 0
  %3619 = or i32 %3574, 208
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3622 = or i32 %3574, 248
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = add nuw nsw i32 %3551, 1
  %3627 = bitcast float %3580 to i32
  %3628 = and i32 %3627, 512
  %3629 = icmp eq i32 %3628, 0
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = extractvalue %dx.types.ResRet.f32 %3630, 3
  %3635 = call float @dx.op.dot4.f32(i32 56, float %3631, float %3632, float %3633, float %3634, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3636 = or i32 %3574, 16
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3641 = extractvalue %dx.types.ResRet.f32 %3637, 3
  %3642 = call float @dx.op.dot4.f32(i32 56, float %3638, float %3639, float %3640, float %3641, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3643 = or i32 %3574, 32
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3650 = call float @dx.op.unary.f32(i32 27, float %3635)  ; Round_ni(value)
  %3651 = call float @dx.op.unary.f32(i32 6, float %3650)  ; FAbs(value)
  %3652 = call float @dx.op.unary.f32(i32 27, float %3642)  ; Round_ni(value)
  %3653 = call float @dx.op.unary.f32(i32 6, float %3652)  ; FAbs(value)
  %3654 = call float @dx.op.unary.f32(i32 6, float %3649)  ; FAbs(value)
  %3655 = call float @dx.op.unary.f32(i32 27, float %3654)  ; Round_ni(value)
  %3656 = fadd fast float %3653, %3651
  %3657 = fadd fast float %3656, %3655
  %3658 = fcmp fast oeq float %3657, 0.000000e+00
  %3659 = call float @dx.op.dot4.f32(i32 56, float %3631, float %3632, float %3633, float %3634, float %3503, float %3504, float %3505, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3660 = call float @dx.op.dot4.f32(i32 56, float %3638, float %3639, float %3640, float %3641, float %3503, float %3504, float %3505, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3661 = call float @dx.op.dot4.f32(i32 56, float %3631, float %3632, float %3633, float %3634, float %3506, float %3507, float %3508, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3662 = call float @dx.op.dot4.f32(i32 56, float %3638, float %3639, float %3640, float %3641, float %3506, float %3507, float %3508, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3663 = fsub fast float %3659, %3635
  %3664 = fsub fast float %3661, %3635
  %3665 = fsub fast float %3660, %3642
  %3666 = fsub fast float %3662, %3642
  %3667 = call float @dx.op.dot3.f32(i32 55, float %3577, float %3578, float %3579, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %3670 = fadd fast float %3669, %3667
  %3671 = call float @dx.op.unary.f32(i32 7, float %3670)  ; Saturate(value)
  %3672 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3673 = fcmp fast ogt float %3671, %3672
  %3674 = and i1 %3658, %3673
  %3675 = and i1 %3629, %3674
  br i1 %3675, label %3696, label %3676

; <label>:3676                                    ; preds = %3959, %3777, %3696, %3550
  %3677 = phi float [ %3552, %3696 ], [ %3780, %3777 ], [ %3780, %3959 ], [ %3552, %3550 ]
  %3678 = phi float [ %3553, %3696 ], [ %3553, %3777 ], [ %3934, %3959 ], [ %3553, %3550 ]
  %3679 = phi float [ %3554, %3696 ], [ %3554, %3777 ], [ %3932, %3959 ], [ %3554, %3550 ]
  %3680 = phi float [ %3555, %3696 ], [ %3555, %3777 ], [ %3904, %3959 ], [ %3555, %3550 ]
  %3681 = phi float [ %3556, %3696 ], [ %3556, %3777 ], [ %3902, %3959 ], [ %3556, %3550 ]
  %3682 = phi float [ %3557, %3696 ], [ %3557, %3777 ], [ %3969, %3959 ], [ %3557, %3550 ]
  %3683 = phi float [ %3558, %3696 ], [ %3558, %3777 ], [ %3970, %3959 ], [ %3558, %3550 ]
  %3684 = phi float [ %3559, %3696 ], [ %3559, %3777 ], [ %3971, %3959 ], [ %3559, %3550 ]
  %3685 = phi float [ %3560, %3696 ], [ %3560, %3777 ], [ %3883, %3959 ], [ %3560, %3550 ]
  %3686 = phi float [ %3561, %3696 ], [ %3561, %3777 ], [ %3884, %3959 ], [ %3561, %3550 ]
  %3687 = phi float [ %3562, %3696 ], [ %3562, %3777 ], [ %3885, %3959 ], [ %3562, %3550 ]
  %3688 = phi float [ %3563, %3696 ], [ %3563, %3777 ], [ %3912, %3959 ], [ %3563, %3550 ]
  %3689 = phi float [ %3564, %3696 ], [ %3564, %3777 ], [ %3909, %3959 ], [ %3564, %3550 ]
  %3690 = phi float [ %3565, %3696 ], [ %3565, %3777 ], [ %3906, %3959 ], [ %3565, %3550 ]
  %3691 = phi float [ %3566, %3696 ], [ %3566, %3777 ], [ %3900, %3959 ], [ %3566, %3550 ]
  %3692 = phi float [ %3567, %3696 ], [ %3567, %3777 ], [ %3895, %3959 ], [ %3567, %3550 ]
  %3693 = phi float [ %3568, %3696 ], [ %3568, %3777 ], [ %3896, %3959 ], [ %3568, %3550 ]
  %3694 = phi float [ %3569, %3696 ], [ %3569, %3777 ], [ %3897, %3959 ], [ %3569, %3550 ]
  %3695 = icmp eq i32 %3626, %3549
  br i1 %3695, label %3972, label %3550

; <label>:3696                                    ; preds = %3550
  %3697 = extractvalue %dx.types.ResRet.f32 %3596, 3
  %3698 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3699 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3700 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3701 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3702 = extractvalue %dx.types.ResRet.i32 %3582, 3
  %3703 = extractvalue %dx.types.ResRet.i32 %3582, 2
  %3704 = add i32 %3702, 0
  %3705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3704, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3707 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3705, %dx.types.Handle %3706, float %3635, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float %3663, float %3665, float undef, float %3664, float %3666, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3708 = extractvalue %dx.types.ResRet.f32 %3707, 0
  %3709 = fmul fast float %3708, %3701
  %3710 = fadd fast float %3709, %3700
  %3711 = call float @dx.op.unary.f32(i32 7, float %3710)  ; Saturate(value)
  %3712 = fmul fast float %3635, %3591
  %3713 = call float @dx.op.tertiary.f32(i32 46, float %3592, float %3642, float %3712)  ; FMad(a,b,c)
  %3714 = fadd fast float %3713, %3699
  %3715 = fmul fast float %3635, %3593
  %3716 = call float @dx.op.tertiary.f32(i32 46, float %3594, float %3642, float %3715)  ; FMad(a,b,c)
  %3717 = fadd fast float %3716, %3698
  %3718 = fmul fast float %3663, %3591
  %3719 = call float @dx.op.tertiary.f32(i32 46, float %3592, float %3665, float %3718)  ; FMad(a,b,c)
  %3720 = fmul fast float %3663, %3593
  %3721 = call float @dx.op.tertiary.f32(i32 46, float %3594, float %3665, float %3720)  ; FMad(a,b,c)
  %3722 = fmul fast float %3664, %3591
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3592, float %3666, float %3722)  ; FMad(a,b,c)
  %3724 = fmul fast float %3664, %3593
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3594, float %3666, float %3724)  ; FMad(a,b,c)
  %3726 = add i32 %3703, 0
  %3727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3726, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3728 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3727, %dx.types.Handle %3706, float %3714, float %3717, float undef, float undef, i32 0, i32 0, i32 undef, float %3719, float %3721, float undef, float %3723, float %3725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3730 = and i32 %3627, 1024
  %3731 = icmp ne i32 %3730, 0
  %3732 = fcmp fast ogt float %3729, 0x3FE0101020000000
  %3733 = uitofp i1 %3732 to float
  %3734 = select i1 %3731, float %3733, float %3729
  %3735 = and i32 %3627, 8192
  %3736 = icmp ne i32 %3735, 0
  %3737 = select i1 %3736, float %3697, float 1.000000e+00
  %3738 = fmul fast float %3635, 2.000000e+00
  %3739 = fadd fast float %3738, -1.000000e+00
  %3740 = call float @dx.op.unary.f32(i32 6, float %3739)  ; FAbs(value)
  %3741 = fmul fast float %3740, %3624
  %3742 = fsub fast float %3741, %3624
  %3743 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3744 = fmul fast float %3642, 2.000000e+00
  %3745 = fadd fast float %3744, -1.000000e+00
  %3746 = call float @dx.op.unary.f32(i32 6, float %3745)  ; FAbs(value)
  %3747 = fmul fast float %3746, %3625
  %3748 = fsub fast float %3747, %3625
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fmul fast float %3654, %3587
  %3751 = fsub fast float %3750, %3587
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = fmul fast float %3711, %3737
  %3754 = fmul fast float %3753, %3708
  %3755 = fmul fast float %3754, %3743
  %3756 = fmul fast float %3755, %3734
  %3757 = fmul fast float %3756, %3749
  %3758 = fmul fast float %3757, %3752
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3762 = fsub fast float %3671, %3761
  %3763 = fmul fast float %3762, %3760
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = fmul fast float %3758, %3588
  %3766 = fadd fast float %3758, %3588
  %3767 = fmul fast float %3766, %3597
  %3768 = fsub fast float %3767, %3597
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = and i32 %3627, 128
  %3771 = icmp ne i32 %3770, 0
  %3772 = select i1 %3771, float %3769, float %3765
  %3773 = fmul fast float %3772, %3764
  %3774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3774, 0
  %3776 = fcmp fast ugt float %3773, %3775
  br i1 %3776, label %3777, label %3676

; <label>:3777                                    ; preds = %3696
  %3778 = select i1 %3736, float %3773, float 0.000000e+00
  %3779 = fadd fast float %3778, %3552
  %3780 = call float @dx.op.unary.f32(i32 7, float %3779)  ; Saturate(value)
  br i1 %3736, label %3676, label %3781

; <label>:3781                                    ; preds = %3777
  %3782 = and i32 %3627, 4
  %3783 = and i32 %3627, 8
  %3784 = add i32 %3583, 0
  %3785 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3784, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3787 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3785, %dx.types.Handle %3786, float %3714, float %3717, float undef, float undef, i32 0, i32 0, i32 undef, float %3719, float %3721, float undef, float %3723, float %3725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3788 = extractvalue %dx.types.ResRet.f32 %3787, 0
  %3789 = extractvalue %dx.types.ResRet.f32 %3787, 1
  %3790 = extractvalue %dx.types.ResRet.f32 %3787, 2
  %3791 = extractvalue %dx.types.ResRet.f32 %3787, 3
  %3792 = bitcast float %3609 to i32
  %3793 = and i32 %3792, 255
  %3794 = uitofp i32 %3793 to float
  %3795 = lshr i32 %3792, 8
  %3796 = and i32 %3795, 255
  %3797 = uitofp i32 %3796 to float
  %3798 = fmul fast float %3791, %3794
  %3799 = fadd fast float %3798, %3797
  %3800 = fmul fast float %3799, 0x3F70101000000000
  %3801 = add i32 %3584, 0
  %3802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3801, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3802, %dx.types.Handle %3786, float %3714, float %3717, float undef, float undef, i32 0, i32 0, i32 undef, float %3719, float %3721, float undef, float %3723, float %3725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 1
  %3806 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3807 = extractvalue %dx.types.ResRet.f32 %3803, 3
  %3808 = bitcast float %3603 to i32
  %3809 = and i32 %3808, 255
  %3810 = uitofp i32 %3809 to float
  %3811 = lshr i32 %3808, 8
  %3812 = and i32 %3811, 255
  %3813 = uitofp i32 %3812 to float
  %3814 = lshr i32 %3808, 16
  %3815 = and i32 %3814, 255
  %3816 = uitofp i32 %3815 to float
  %3817 = fmul fast float %3816, 0x3F70101000000000
  %3818 = fmul fast float %3804, %3810
  %3819 = fadd fast float %3818, %3813
  %3820 = fmul fast float %3819, 0x3F70101000000000
  %3821 = fadd fast float %3805, -5.000000e-01
  %3822 = fadd fast float %3807, -5.000000e-01
  %3823 = fmul fast float %3821, %3817
  %3824 = fmul fast float %3822, %3817
  %3825 = fadd fast float %3823, 5.000000e-01
  %3826 = fadd fast float %3824, 5.000000e-01
  %3827 = fmul fast float %3788, %3612
  %3828 = fmul fast float %3789, %3613
  %3829 = fmul fast float %3790, %3614
  %3830 = fmul fast float %3825, 2.000000e+00
  %3831 = fadd fast float %3830, -1.000000e+00
  %3832 = fmul fast float %3826, 2.000000e+00
  %3833 = fadd fast float %3832, -1.000000e+00
  %3834 = fadd fast float %3831, %3833
  %3835 = fmul fast float %3834, 5.000000e-01
  %3836 = fsub fast float %3831, %3833
  %3837 = fmul fast float %3836, 5.000000e-01
  %3838 = call float @dx.op.unary.f32(i32 6, float %3835)  ; FAbs(value)
  %3839 = fsub fast float 1.000000e+00, %3838
  %3840 = call float @dx.op.unary.f32(i32 6, float %3837)  ; FAbs(value)
  %3841 = fsub fast float %3839, %3840
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3835, float %3837, float %3841, float %3835, float %3837, float %3841)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = call float @dx.op.unary.f32(i32 25, float %3842)  ; Rsqrt(value)
  %3844 = fmul fast float %3835, %3843
  %3845 = fmul fast float %3837, %3843
  %3846 = fmul fast float %3843, %3841
  %3847 = fmul fast float %3846, %3577
  %3848 = fmul fast float %3846, %3578
  %3849 = fmul fast float %3846, %3579
  %3850 = fmul fast float %3844, %3600
  %3851 = fmul fast float %3844, %3601
  %3852 = fmul fast float %3844, %3602
  %3853 = fadd fast float %3850, %3847
  %3854 = fadd fast float %3851, %3848
  %3855 = fadd fast float %3852, %3849
  %3856 = fmul fast float %3845, %3606
  %3857 = fmul fast float %3845, %3607
  %3858 = fmul fast float %3845, %3608
  %3859 = fadd fast float %3853, %3856
  %3860 = fadd fast float %3854, %3857
  %3861 = fadd fast float %3855, %3858
  %3862 = call float @dx.op.dot3.f32(i32 55, float %3859, float %3860, float %3861, float %3859, float %3860, float %3861)  ; Dot3(ax,ay,az,bx,by,bz)
  %3863 = call float @dx.op.unary.f32(i32 25, float %3862)  ; Rsqrt(value)
  %3864 = fmul fast float %3859, %3863
  %3865 = fmul fast float %3860, %3863
  %3866 = fmul fast float %3861, %3863
  %3867 = icmp ne i32 %3783, 0
  %3868 = select i1 %3867, float 1.000000e+00, float 0.000000e+00
  %3869 = fmul fast float %3773, %3868
  %3870 = and i32 %3627, 1
  %3871 = icmp eq i32 %3870, 0
  br i1 %3871, label %3872, label %3876

; <label>:3872                                    ; preds = %3781
  %3873 = fsub fast float %3864, %3560
  %3874 = fsub fast float %3865, %3561
  %3875 = fsub fast float %3866, %3562
  br label %3876

; <label>:3876                                    ; preds = %3872, %3781
  %3877 = phi float [ %3873, %3872 ], [ %3864, %3781 ]
  %3878 = phi float [ %3874, %3872 ], [ %3865, %3781 ]
  %3879 = phi float [ %3875, %3872 ], [ %3866, %3781 ]
  %3880 = fmul float %3879, %3869
  %3881 = fmul float %3878, %3869
  %3882 = fmul float %3877, %3869
  %3883 = fadd fast float %3882, %3560
  %3884 = fadd fast float %3881, %3561
  %3885 = fadd fast float %3880, %3562
  %3886 = icmp ne i32 %3782, 0
  %3887 = select i1 %3886, float 1.000000e+00, float 0.000000e+00
  %3888 = fmul fast float %3773, %3887
  %3889 = fsub fast float %3827, %3567
  %3890 = fsub fast float %3828, %3568
  %3891 = fsub fast float %3829, %3569
  %3892 = fmul fast float %3889, %3888
  %3893 = fmul fast float %3890, %3888
  %3894 = fmul fast float %3891, %3888
  %3895 = fadd fast float %3892, %3567
  %3896 = fadd fast float %3893, %3568
  %3897 = fadd fast float %3894, %3569
  %3898 = fsub fast float %3800, %3566
  %3899 = fmul fast float %3898, %3888
  %3900 = fadd fast float %3899, %3566
  %3901 = fmul fast float %3888, %3556
  %3902 = fsub fast float %3556, %3901
  %3903 = fmul fast float %3888, %3555
  %3904 = fsub fast float %3555, %3903
  %3905 = fadd fast float %3773, %3565
  %3906 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3907 = fsub fast float %3820, %3564
  %3908 = fmul fast float %3907, %3869
  %3909 = fadd fast float %3908, %3564
  %3910 = fsub fast float %3806, %3563
  %3911 = fmul fast float %3910, %3869
  %3912 = fadd fast float %3911, %3563
  %3913 = call float @dx.op.dot3.f32(i32 55, float %3827, float %3828, float %3829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.CBufRet.f32 %3914, 1
  %3917 = fmul fast float %3916, %3913
  %3918 = fadd fast float %3917, %3915
  %3919 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3920 = bitcast float %3615 to i32
  %3921 = and i32 %3920, 65535
  %3922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3921)  ; LegacyF16ToF32(value)
  %3923 = lshr i32 %3920, 16
  %3924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3923)  ; LegacyF16ToF32(value)
  %3925 = fcmp fast oge float %3922, 0.000000e+00
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = select i1 %3925, float %3922, float %3927
  %3929 = fadd fast float %3928, %3924
  %3930 = fsub fast float %3919, %3554
  %3931 = fmul fast float %3930, %3773
  %3932 = fadd fast float %3931, %3554
  %3933 = fmul fast float %3929, %3773
  %3934 = call float @dx.op.binary.f32(i32 35, float %3553, float %3933)  ; FMax(a,b)
  %3935 = and i32 %3627, 16
  %3936 = icmp eq i32 %3935, 0
  br i1 %3936, label %3959, label %3937

; <label>:3937                                    ; preds = %3876
  %3938 = bitcast float %3621 to i32
  %3939 = add i32 %3618, 0
  %3940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3939, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3941 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3940, %dx.types.Handle %3786, float %3714, float %3717, float undef, float undef, i32 0, i32 0, i32 undef, float %3719, float %3721, float undef, float %3723, float %3725, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3942 = extractvalue %dx.types.ResRet.f32 %3941, 0
  %3943 = extractvalue %dx.types.ResRet.f32 %3941, 1
  %3944 = extractvalue %dx.types.ResRet.f32 %3941, 2
  %3945 = and i32 %3938, 65535
  %3946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3945)  ; LegacyF16ToF32(value)
  %3947 = fmul fast float %3942, %3612
  %3948 = fmul fast float %3943, %3613
  %3949 = fmul fast float %3944, %3614
  %3950 = and i32 %3627, 16384
  %3951 = icmp ne i32 %3950, 0
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 0
  %3954 = select i1 %3951, float %3953, float 1.000000e+00
  %3955 = fmul fast float %3954, %3946
  %3956 = fmul fast float %3947, %3955
  %3957 = fmul fast float %3948, %3955
  %3958 = fmul fast float %3949, %3955
  br label %3959

; <label>:3959                                    ; preds = %3937, %3876
  %3960 = phi float [ %3956, %3937 ], [ 0.000000e+00, %3876 ]
  %3961 = phi float [ %3957, %3937 ], [ 0.000000e+00, %3876 ]
  %3962 = phi float [ %3958, %3937 ], [ 0.000000e+00, %3876 ]
  %3963 = fsub fast float %3960, %3557
  %3964 = fsub fast float %3961, %3558
  %3965 = fsub fast float %3962, %3559
  %3966 = fmul fast float %3963, %3773
  %3967 = fmul fast float %3964, %3773
  %3968 = fmul fast float %3965, %3773
  %3969 = fadd fast float %3966, %3557
  %3970 = fadd fast float %3967, %3558
  %3971 = fadd fast float %3968, %3559
  br label %3676

; <label>:3972                                    ; preds = %3676
  br label %3973

; <label>:3973                                    ; preds = %3972, %3496
  %3974 = phi float [ 0.000000e+00, %3496 ], [ %3677, %3972 ]
  %3975 = phi float [ %3465, %3496 ], [ %3678, %3972 ]
  %3976 = phi float [ %3446, %3496 ], [ %3679, %3972 ]
  %3977 = phi float [ 0.000000e+00, %3496 ], [ %3680, %3972 ]
  %3978 = phi float [ 0.000000e+00, %3496 ], [ %3681, %3972 ]
  %3979 = phi float [ %3440, %3496 ], [ %3682, %3972 ]
  %3980 = phi float [ %3441, %3496 ], [ %3683, %3972 ]
  %3981 = phi float [ %3442, %3496 ], [ %3684, %3972 ]
  %3982 = phi float [ %3491, %3496 ], [ %3685, %3972 ]
  %3983 = phi float [ %3492, %3496 ], [ %3686, %3972 ]
  %3984 = phi float [ %3493, %3496 ], [ %3687, %3972 ]
  %3985 = phi float [ %3445, %3496 ], [ %3688, %3972 ]
  %3986 = phi float [ %3444, %3496 ], [ %3689, %3972 ]
  %3987 = phi float [ 0.000000e+00, %3496 ], [ %3690, %3972 ]
  %3988 = phi float [ %3443, %3496 ], [ %3691, %3972 ]
  %3989 = phi float [ %3437, %3496 ], [ %3692, %3972 ]
  %3990 = phi float [ %3438, %3496 ], [ %3693, %3972 ]
  %3991 = phi float [ %3439, %3496 ], [ %3694, %3972 ]
  %3992 = call float @dx.op.dot3.f32(i32 55, float %3982, float %3983, float %3984, float %3982, float %3983, float %3984)  ; Dot3(ax,ay,az,bx,by,bz)
  %3993 = call float @dx.op.unary.f32(i32 25, float %3992)  ; Rsqrt(value)
  %3994 = fmul fast float %3993, %3982
  %3995 = fmul fast float %3993, %3983
  %3996 = fmul fast float %3993, %3984
  %3997 = fadd fast float %3987, %881
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = call float @dx.op.dot3.f32(i32 55, float %3994, float %3995, float %3996, float %3994, float %3995, float %3996)  ; Dot3(ax,ay,az,bx,by,bz)
  %4000 = call float @dx.op.unary.f32(i32 25, float %3999)  ; Rsqrt(value)
  %4001 = fmul fast float %4000, %3994
  %4002 = fmul fast float %4000, %3995
  %4003 = fmul fast float %4000, %3996
  br label %4004

; <label>:4004                                    ; preds = %3973, %3434
  %4005 = phi float [ %4001, %3973 ], [ %3491, %3434 ]
  %4006 = phi float [ %4002, %3973 ], [ %3492, %3434 ]
  %4007 = phi float [ %4003, %3973 ], [ %3493, %3434 ]
  %4008 = phi float [ %3979, %3973 ], [ %3440, %3434 ]
  %4009 = phi float [ %3980, %3973 ], [ %3441, %3434 ]
  %4010 = phi float [ %3981, %3973 ], [ %3442, %3434 ]
  %4011 = phi float [ %3989, %3973 ], [ %3437, %3434 ]
  %4012 = phi float [ %3990, %3973 ], [ %3438, %3434 ]
  %4013 = phi float [ %3991, %3973 ], [ %3439, %3434 ]
  %4014 = phi float [ %3988, %3973 ], [ %3443, %3434 ]
  %4015 = phi float [ %3998, %3973 ], [ %881, %3434 ]
  %4016 = phi float [ %3986, %3973 ], [ %3444, %3434 ]
  %4017 = phi float [ %3985, %3973 ], [ %3445, %3434 ]
  %4018 = phi float [ %3978, %3973 ], [ 0.000000e+00, %3434 ]
  %4019 = phi float [ %3977, %3973 ], [ 0.000000e+00, %3434 ]
  %4020 = phi float [ %3974, %3973 ], [ 0.000000e+00, %3434 ]
  %4021 = phi float [ %3975, %3973 ], [ %3465, %3434 ]
  %4022 = phi float [ %3976, %3973 ], [ %3446, %3434 ]
  %4023 = fadd fast float %4014, 0xBFB99999A0000000
  %4024 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4025 = fmul fast float %4024, 0x3FF1C71C80000000
  %4026 = call float @dx.op.binary.f32(i32 36, float %4014, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4027 = fsub fast float 1.000000e+00, %4025
  %4028 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4029 = fmul fast float %4028, %4011
  %4030 = fmul fast float %4028, %4012
  %4031 = fmul fast float %4028, %4013
  %4032 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4033 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4034 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4035 = fmul fast float %4025, %4011
  %4036 = fmul fast float %4025, %4012
  %4037 = fmul fast float %4025, %4013
  %4038 = fadd fast float %4035, %4026
  %4039 = fadd fast float %4036, %4026
  %4040 = fadd fast float %4037, %4026
  %4041 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4042 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4044 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4045 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.i32 %4045, 3
  %4047 = and i32 %4046, 8
  %4048 = icmp ne i32 %4047, 0
  %4049 = call float @dx.op.binary.f32(i32 35, float %4032, float %4011)  ; FMax(a,b)
  %4050 = call float @dx.op.binary.f32(i32 35, float %4033, float %4011)  ; FMax(a,b)
  %4051 = call float @dx.op.binary.f32(i32 35, float %4034, float %4011)  ; FMax(a,b)
  %4052 = call float @dx.op.dot3.f32(i32 55, float %4032, float %4033, float %4034, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4053 = select i1 %176, float %4011, float %4032
  %4054 = select i1 %176, float %4052, float %4033
  %4055 = select i1 %176, float 1.000000e+00, float %4034
  %4056 = select i1 %4048, float %4049, float %4053
  %4057 = select i1 %4048, float %4050, float %4054
  %4058 = select i1 %4048, float %4051, float %4055
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.CBufRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.CBufRet.f32 %4059, 2
  %4063 = fadd fast float %4060, %134
  %4064 = fadd fast float %4061, %135
  %4065 = fadd fast float %4062, %136
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4069 = fsub fast float %4063, %4067
  %4070 = fsub fast float %4064, %4068
  %4071 = fmul fast float %4069, %4069
  %4072 = fmul fast float %4070, %4070
  %4073 = fadd fast float %4071, %4072
  %4074 = call float @dx.op.unary.f32(i32 24, float %4073)  ; Sqrt(value)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4076 = fcmp fast olt float %4074, %4075
  br i1 %4076, label %4077, label %4144

; <label>:4077                                    ; preds = %4004
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 0
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4085 = extractvalue %dx.types.CBufRet.f32 %4080, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4087 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4088 = extractvalue %dx.types.CBufRet.f32 %4080, 3
  %4089 = extractvalue %dx.types.CBufRet.f32 %4082, 3
  %4090 = fadd fast float %4087, %4063
  %4091 = fadd fast float %4088, %4064
  %4092 = fadd fast float %4089, %4065
  %4093 = fmul fast float %4090, %4079
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4091, float %4081, float %4093)  ; FMad(a,b,c)
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4083, float %4094)  ; FMad(a,b,c)
  %4096 = fmul fast float %4090, %4084
  %4097 = call float @dx.op.tertiary.f32(i32 46, float %4091, float %4085, float %4096)  ; FMad(a,b,c)
  %4098 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4086, float %4097)  ; FMad(a,b,c)
  %4099 = fsub fast float %4095, %4087
  %4100 = fsub fast float %4098, %4088
  %4101 = fsub fast float %4099, %4067
  %4102 = fadd fast float %4101, %4075
  %4103 = fsub fast float %4100, %4068
  %4104 = fadd fast float %4103, %4075
  %4105 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4106 = fmul fast float %4102, %4105
  %4107 = fmul fast float %4104, %4105
  %4108 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4109 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4110 = fsub fast float 1.000000e+00, %4108
  %4111 = fsub fast float 1.000000e+00, %4109
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4110, float %4111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = fcmp fast ugt float %4113, 0.000000e+00
  br i1 %4114, label %4115, label %4418

; <label>:4115                                    ; preds = %4077
  %4116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4117 = extractvalue %dx.types.CBufRet.f32 %4116, 2
  %4118 = fmul fast float %4117, %4113
  %4119 = extractvalue %dx.types.CBufRet.f32 %4116, 3
  %4120 = fadd fast float %4119, %4118
  %4121 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4122 = fadd fast float %4120, %4089
  %4123 = fmul fast float %4095, %4083
  %4124 = call float @dx.op.tertiary.f32(i32 46, float %4098, float %4086, float %4123)  ; FMad(a,b,c)
  %4125 = call float @dx.op.tertiary.f32(i32 46, float %4122, float %4121, float %4124)  ; FMad(a,b,c)
  %4126 = fsub fast float %4125, %4089
  %4127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4128 = extractvalue %dx.types.CBufRet.f32 %4127, 2
  %4129 = fsub fast float %4126, %4128
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4110, float %4111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4110, float %4111, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = fadd fast float %4135, %4131
  %4139 = fmul fast float %4138, 0x3F847AE140000000
  %4140 = fadd fast float %4136, %4132
  %4141 = fmul fast float %4140, 0x3F847AE140000000
  %4142 = fadd fast float %4137, %4133
  %4143 = fmul fast float %4142, 0x3F847AE140000000
  br label %4418

; <label>:4144                                    ; preds = %4004
  %4145 = and i32 %152, 1
  %4146 = icmp eq i32 %4145, 0
  br i1 %4146, label %4418, label %4147

; <label>:4147                                    ; preds = %4144
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.CBufRet.f32 %4148, 1
  %4155 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4156 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4158 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4159 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4160 = fadd fast float %4157, %4063
  %4161 = fadd fast float %4158, %4064
  %4162 = fadd fast float %4159, %4065
  %4163 = fmul fast float %4160, %4149
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4151, float %4163)  ; FMad(a,b,c)
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4153, float %4164)  ; FMad(a,b,c)
  %4166 = fmul fast float %4160, %4154
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4155, float %4166)  ; FMad(a,b,c)
  %4168 = call float @dx.op.tertiary.f32(i32 46, float %4162, float %4156, float %4167)  ; FMad(a,b,c)
  %4169 = fsub fast float %4165, %4157
  %4170 = fsub fast float %4168, %4158
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4174 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4175 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.i32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.i32 %4178, 1
  %4181 = udiv i32 %4180, %4179
  %4182 = fsub fast float %4169, %4172
  %4183 = fsub fast float %4170, %4173
  %4184 = call float @dx.op.binary.f32(i32 35, float %4182, float 0.000000e+00)  ; FMax(a,b)
  %4185 = call float @dx.op.binary.f32(i32 35, float %4183, float 0.000000e+00)  ; FMax(a,b)
  %4186 = call float @dx.op.binary.f32(i32 36, float %4184, float %4174)  ; FMin(a,b)
  %4187 = call float @dx.op.binary.f32(i32 36, float %4185, float %4175)  ; FMin(a,b)
  %4188 = add i32 %4179, -1
  %4189 = add i32 %4181, -1
  %4190 = fmul fast float %4186, %4177
  %4191 = fmul fast float %4187, %4177
  %4192 = fptoui float %4190 to i32
  %4193 = fptoui float %4191 to i32
  %4194 = call i32 @dx.op.binary.i32(i32 40, i32 %4192, i32 %4188)  ; UMin(a,b)
  %4195 = call i32 @dx.op.binary.i32(i32 40, i32 %4193, i32 %4189)  ; UMin(a,b)
  %4196 = mul i32 %4195, %4179
  %4197 = add i32 %4196, %4194
  %4198 = shl i32 %4197, 2
  %4199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.i32 %4199, 0
  %4201 = icmp eq i32 %4200, -1
  br i1 %4201, label %4418, label %4202

; <label>:4202                                    ; preds = %4147
  %4203 = mul i32 %4200, 148
  %4204 = add i32 %4203, 4
  %4205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = add i32 %4203, 8
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = add i32 %4203, 36
  %4211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = add i32 %4203, 60
  %4214 = add i32 %4203, 92
  %4215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.i32 %4215, 0
  %4217 = add i32 %4203, 116
  %4218 = fsub fast float %4169, %4206
  %4219 = fsub fast float %4170, %4209
  %4220 = fmul fast float %4177, %4218
  %4221 = fmul fast float %4177, %4219
  %4222 = call float @dx.op.unary.f32(i32 7, float %4220)  ; Saturate(value)
  %4223 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4224 = fsub fast float 1.000000e+00, %4223
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 2
  %4227 = call float @dx.op.unary.f32(i32 83, float %4222)  ; DerivCoarseX(value)
  %4228 = call float @dx.op.unary.f32(i32 83, float %4224)  ; DerivCoarseX(value)
  %4229 = call float @dx.op.unary.f32(i32 84, float %4222)  ; DerivCoarseY(value)
  %4230 = call float @dx.op.unary.f32(i32 84, float %4224)  ; DerivCoarseY(value)
  %4231 = fmul fast float %4227, %4226
  %4232 = fmul fast float %4228, %4226
  %4233 = fmul fast float %4229, %4226
  %4234 = fmul fast float %4230, %4226
  %4235 = call float @dx.op.dot2.f32(i32 54, float %4233, float %4234, float %4233, float %4234)  ; Dot2(ax,ay,bx,by)
  %4236 = call float @dx.op.dot2.f32(i32 54, float %4231, float %4232, float %4231, float %4232)  ; Dot2(ax,ay,bx,by)
  %4237 = call float @dx.op.binary.f32(i32 35, float %4236, float %4235)  ; FMax(a,b)
  %4238 = call float @dx.op.unary.f32(i32 23, float %4237)  ; Log(value)
  %4239 = fmul fast float %4238, 5.000000e-01
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4242 = fadd fast float %4241, %4239
  %4243 = call float @dx.op.binary.f32(i32 35, float %4242, float 0.000000e+00)  ; FMax(a,b)
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 3
  %4246 = fadd fast float %4245, %4243
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 3
  %4249 = fadd fast float %4246, %4248
  %4250 = add i32 %4216, 0
  %4251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4250, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4252 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4251, i32 0)  ; GetDimensions(handle,mipLevel)
  %4253 = extractvalue %dx.types.Dimensions %4252, 0
  %4254 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4253)  ; FirstbitLo(value)
  %4255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.i32 %4255, 1
  %4257 = sub nsw i32 %4256, %4254
  %4258 = sitofp i32 %4257 to float
  %4259 = fsub fast float %4249, %4258
  %4260 = call float @dx.op.binary.f32(i32 35, float %4259, float 0.000000e+00)  ; FMax(a,b)
  %4261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4251, %dx.types.Handle %27, float %4222, float %4224, float %4212, float undef, i32 0, i32 0, i32 undef, float %4260)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4262 = extractvalue %dx.types.ResRet.f32 %4261, 0
  %4263 = fcmp ule float %4262, 0x3FE0101020000000
  %4264 = extractvalue %dx.types.CBufRet.i32 %4255, 0
  %4265 = and i32 %4264, 128
  %4266 = icmp ne i32 %4265, 0
  %4267 = and i1 %4263, %4266
  br i1 %4267, label %4418, label %4268

; <label>:4268                                    ; preds = %4202
  %4269 = add i32 %4203, 20
  %4270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4269, i32 undef)  ; BufferLoad(srv,index,wot)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = add i32 %4203, 24
  %4273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = add i32 %4203, 40
  %4276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = add i32 %4203, 96
  %4279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.i32 %4279, 0
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 2
  %4283 = fmul fast float %4282, %4222
  %4284 = fmul fast float %4282, %4224
  %4285 = extractvalue %dx.types.CBufRet.f32 %4281, 3
  %4286 = fadd fast float %4283, %4285
  %4287 = fadd fast float %4284, %4285
  %4288 = add i32 %4280, 0
  %4289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4288, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4290 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4289, i32 0)  ; GetDimensions(handle,mipLevel)
  %4291 = extractvalue %dx.types.Dimensions %4290, 0
  %4292 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4291)  ; FirstbitLo(value)
  %4293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.i32 %4293, 1
  %4295 = sub nsw i32 %4294, %4292
  %4296 = sitofp i32 %4295 to float
  %4297 = fsub fast float %4246, %4296
  %4298 = call float @dx.op.binary.f32(i32 35, float %4297, float 0.000000e+00)  ; FMax(a,b)
  %4299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4289, %dx.types.Handle %27, float %4286, float %4287, float %4277, float undef, i32 0, i32 0, i32 undef, float %4298)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = fmul fast float %4300, %4271
  %4302 = fadd fast float %4301, %4274
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.CBufRet.f32 %4303, 1
  %4306 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4311 = extractvalue %dx.types.CBufRet.f32 %4303, 3
  %4312 = fadd fast float %4308, %4169
  %4313 = fadd fast float %4310, %4170
  %4314 = fadd fast float %4302, %4311
  %4315 = fmul fast float %4312, %4304
  %4316 = call float @dx.op.tertiary.f32(i32 46, float %4313, float %4305, float %4315)  ; FMad(a,b,c)
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4314, float %4306, float %4316)  ; FMad(a,b,c)
  %4318 = fsub fast float %4317, %4311
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4321 = fsub fast float %4318, %4320
  %4322 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.i32 %4322, 0
  %4324 = call i32 @dx.op.binary.i32(i32 40, i32 %4200, i32 %4323)  ; UMin(a,b)
  %4325 = mul i32 %4324, 36
  %4326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4325, i32 undef)  ; BufferLoad(srv,index,wot)
  %4327 = extractvalue %dx.types.ResRet.i32 %4326, 0
  %4328 = add i32 %4325, 4
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = fmul fast float %4330, %4222
  %4332 = fmul fast float %4330, %4224
  %4333 = extractvalue %dx.types.CBufRet.f32 %4329, 1
  %4334 = fadd fast float %4331, %4333
  %4335 = fadd fast float %4332, %4333
  %4336 = icmp eq i32 %4327, 0
  br i1 %4336, label %4405, label %4337

; <label>:4337                                    ; preds = %4268
  br label %4338

; <label>:4338                                    ; preds = %4395, %4337
  %4339 = phi float [ %4396, %4395 ], [ 0.000000e+00, %4337 ]
  %4340 = phi float [ %4397, %4395 ], [ 0.000000e+00, %4337 ]
  %4341 = phi float [ %4398, %4395 ], [ 0.000000e+00, %4337 ]
  %4342 = phi float [ %4399, %4395 ], [ 0.000000e+00, %4337 ]
  %4343 = phi float [ %4400, %4395 ], [ 0.000000e+00, %4337 ]
  %4344 = phi float [ %4401, %4395 ], [ 0.000000e+00, %4337 ]
  %4345 = phi i32 [ %4402, %4395 ], [ 0, %4337 ]
  %4346 = shl i32 %4345, 2
  %4347 = add i32 %4213, %4346
  %4348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = add i32 %4217, %4346
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = add i32 %4352, 0
  %4354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4353, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4355 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4354, i32 0)  ; GetDimensions(handle,mipLevel)
  %4356 = extractvalue %dx.types.Dimensions %4355, 0
  %4357 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4356)  ; FirstbitLo(value)
  %4358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.i32 %4358, 1
  %4360 = sub nsw i32 %4359, %4357
  %4361 = sitofp i32 %4360 to float
  %4362 = fsub fast float %4246, %4361
  %4363 = call float @dx.op.binary.f32(i32 35, float %4362, float 0.000000e+00)  ; FMax(a,b)
  %4364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4354, %dx.types.Handle %27, float %4334, float %4335, float %4349, float undef, i32 0, i32 0, i32 undef, float %4363)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = fcmp fast ogt float %4365, 0.000000e+00
  br i1 %4366, label %4367, label %4395

; <label>:4367                                    ; preds = %4338
  %4368 = add i32 %4328, %4346
  %4369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.i32 %4369, 0
  %4371 = and i32 %4370, 32767
  %4372 = mul nuw nsw i32 %4371, 928
  %4373 = add nuw nsw i32 %4372, 48
  %4374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.ResRet.f32 %4374, 1
  %4377 = extractvalue %dx.types.ResRet.f32 %4374, 2
  %4378 = add nuw nsw i32 %4372, 60
  %4379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4378, i32 undef)  ; BufferLoad(srv,index,wot)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.ResRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.ResRet.f32 %4379, 2
  %4383 = fmul fast float %4375, %4365
  %4384 = fmul fast float %4376, %4365
  %4385 = fmul fast float %4377, %4365
  %4386 = fadd fast float %4383, %4339
  %4387 = fadd fast float %4384, %4340
  %4388 = fadd fast float %4385, %4341
  %4389 = fmul fast float %4380, %4365
  %4390 = fmul fast float %4381, %4365
  %4391 = fmul fast float %4382, %4365
  %4392 = fadd fast float %4389, %4342
  %4393 = fadd fast float %4390, %4343
  %4394 = fadd fast float %4391, %4344
  br label %4395

; <label>:4395                                    ; preds = %4367, %4338
  %4396 = phi float [ %4386, %4367 ], [ %4339, %4338 ]
  %4397 = phi float [ %4387, %4367 ], [ %4340, %4338 ]
  %4398 = phi float [ %4388, %4367 ], [ %4341, %4338 ]
  %4399 = phi float [ %4392, %4367 ], [ %4342, %4338 ]
  %4400 = phi float [ %4393, %4367 ], [ %4343, %4338 ]
  %4401 = phi float [ %4394, %4367 ], [ %4344, %4338 ]
  %4402 = add nuw i32 %4345, 1
  %4403 = icmp eq i32 %4402, %4327
  br i1 %4403, label %4404, label %4338

; <label>:4404                                    ; preds = %4395
  br label %4405

; <label>:4405                                    ; preds = %4404, %4268
  %4406 = phi float [ 0.000000e+00, %4268 ], [ %4396, %4404 ]
  %4407 = phi float [ 0.000000e+00, %4268 ], [ %4397, %4404 ]
  %4408 = phi float [ 0.000000e+00, %4268 ], [ %4398, %4404 ]
  %4409 = phi float [ 0.000000e+00, %4268 ], [ %4399, %4404 ]
  %4410 = phi float [ 0.000000e+00, %4268 ], [ %4400, %4404 ]
  %4411 = phi float [ 0.000000e+00, %4268 ], [ %4401, %4404 ]
  %4412 = fadd fast float %4409, %4406
  %4413 = fmul fast float %4412, 0x3F847AE140000000
  %4414 = fadd fast float %4410, %4407
  %4415 = fmul fast float %4414, 0x3F847AE140000000
  %4416 = fadd fast float %4411, %4408
  %4417 = fmul fast float %4416, 0x3F847AE140000000
  br label %4418

; <label>:4418                                    ; preds = %4405, %4202, %4147, %4144, %4115, %4077
  %4419 = phi float [ %4129, %4115 ], [ -1.310720e+05, %4077 ], [ %4321, %4405 ], [ -1.310720e+05, %4147 ], [ -1.310720e+05, %4202 ], [ -1.310720e+05, %4144 ]
  %4420 = phi float [ %4139, %4115 ], [ 0.000000e+00, %4077 ], [ %4413, %4405 ], [ 0.000000e+00, %4147 ], [ 0.000000e+00, %4202 ], [ 0.000000e+00, %4144 ]
  %4421 = phi float [ %4141, %4115 ], [ 0.000000e+00, %4077 ], [ %4415, %4405 ], [ 0.000000e+00, %4147 ], [ 0.000000e+00, %4202 ], [ 0.000000e+00, %4144 ]
  %4422 = phi float [ %4143, %4115 ], [ 0.000000e+00, %4077 ], [ %4417, %4405 ], [ 0.000000e+00, %4147 ], [ 0.000000e+00, %4202 ], [ 0.000000e+00, %4144 ]
  %4423 = phi i1 [ true, %4115 ], [ false, %4077 ], [ true, %4405 ], [ false, %4147 ], [ false, %4202 ], [ false, %4144 ]
  %4424 = and i32 %152, 3
  %4425 = icmp eq i32 %4424, 1
  %4426 = select i1 %4425, float 1.000000e+00, float 0.000000e+00
  %4427 = fsub fast float %4419, %136
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = select i1 %4423, float %4428, float 1.000000e+00
  %4430 = fmul fast float %4429, %4426
  %4431 = icmp eq i32 %4424, 3
  %4432 = select i1 %4431, float 1.000000e+00, float %4430
  %4433 = call float @dx.op.binary.f32(i32 35, float %4020, float %4432)  ; FMax(a,b)
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = fcmp fast une float %4434, 0.000000e+00
  %4436 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = call float @dx.op.unary.f32(i32 25, float %4436)  ; Rsqrt(value)
  br i1 %4435, label %4445, label %4438

; <label>:4438                                    ; preds = %4418
  %4439 = fmul fast float %4437, %134
  %4440 = fmul fast float %4437, %135
  %4441 = fmul fast float %4437, %136
  %4442 = fsub fast float -0.000000e+00, %4439
  %4443 = fsub fast float -0.000000e+00, %4440
  %4444 = fsub fast float -0.000000e+00, %4441
  br label %4613

; <label>:4445                                    ; preds = %4418
  %4446 = fmul fast float %134, %4437
  %4447 = fsub fast float -0.000000e+00, %4446
  %4448 = fmul fast float %135, %4437
  %4449 = fsub fast float -0.000000e+00, %4448
  %4450 = fmul fast float %136, %4437
  %4451 = fsub fast float -0.000000e+00, %4450
  %4452 = call float @dx.op.dot3.f32(i32 55, float %4447, float %4449, float %4451, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4453 = fmul fast float %4434, 2.500000e+00
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fmul fast float %4434, 0x4013FFFFE0000000
  %4456 = fadd fast float %4455, 0xBFFFFFFFE0000000
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = fmul fast float %4434, 0x4004000020000000
  %4459 = fadd fast float %4458, 0xBFF8000040000000
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4462 = fmul fast float %4023, 1.000000e+01
  %4463 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4464 = fmul fast float %4463, 2.000000e+00
  %4465 = fsub fast float 3.000000e+00, %4464
  %4466 = fmul fast float %4463, %4463
  %4467 = fmul fast float %4466, %4465
  %4468 = fsub fast float 1.000000e+00, %4467
  %4469 = fsub fast float 0x3FE3333340000000, %4044
  %4470 = fmul fast float %4469, 0x400AAAAAA0000000
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fmul fast float %4468, %4471
  %4473 = fmul fast float %4056, 0x3FEA2B8620000000
  %4474 = fmul fast float %4057, 0x3FEA2B8620000000
  %4475 = fmul fast float %4058, 0x3FEA2B8620000000
  %4476 = fadd fast float %4473, 0x3FC81DFBA0000000
  %4477 = fmul fast float %4476, %4056
  %4478 = fadd fast float %4477, 0x3F910E6020000000
  %4479 = fadd fast float %4474, 0x3FC81DFBA0000000
  %4480 = fmul fast float %4479, %4057
  %4481 = fadd fast float %4480, 0x3F910E6020000000
  %4482 = fadd fast float %4475, 0x3FC81DFBA0000000
  %4483 = fmul fast float %4482, %4058
  %4484 = fadd fast float %4483, 0x3F910E6020000000
  %4485 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4486 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = fsub fast float %4485, %4056
  %4489 = fsub fast float %4486, %4057
  %4490 = fsub fast float %4487, %4058
  %4491 = fmul fast float %4488, %4461
  %4492 = fmul fast float %4491, %4472
  %4493 = fmul fast float %4489, %4461
  %4494 = fmul fast float %4493, %4472
  %4495 = fmul fast float %4490, %4461
  %4496 = fmul fast float %4495, %4472
  %4497 = fadd fast float %4492, %4056
  %4498 = fadd fast float %4494, %4057
  %4499 = fadd fast float %4496, %4058
  %4500 = fmul fast float %4017, %4017
  %4501 = fmul fast float %4500, %4500
  %4502 = fadd fast float %4457, 1.000000e+00
  %4503 = fsub fast float %4502, %4472
  %4504 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4505 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fsub fast float 1.000000e+00, %4501
  %4508 = call float @dx.op.binary.f32(i32 36, float %4504, float %4507)  ; FMin(a,b)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4510 = call float @dx.op.binary.f32(i32 35, float %4508, float %4509)  ; FMax(a,b)
  %4511 = fadd fast float %4506, 0xBFE4CCCCC0000000
  %4512 = fmul fast float %4511, 0x4006DB6DA0000000
  %4513 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4514 = fmul fast float %4513, 2.000000e+00
  %4515 = fsub fast float 3.000000e+00, %4514
  %4516 = bitcast float %4041 to i32
  %4517 = ashr i32 %4516, 1
  %4518 = add nsw i32 %4517, 532487669
  %4519 = bitcast i32 %4518 to float
  %4520 = fsub fast float 1.000000e+00, %4519
  %4521 = bitcast float %4520 to i32
  %4522 = sub nsw i32 2129859010, %4521
  %4523 = bitcast i32 %4522 to float
  %4524 = fmul fast float %4523, 2.000000e+00
  %4525 = bitcast float %4042 to i32
  %4526 = ashr i32 %4525, 1
  %4527 = add nsw i32 %4526, 532487669
  %4528 = bitcast i32 %4527 to float
  %4529 = fsub fast float 1.000000e+00, %4528
  %4530 = bitcast float %4529 to i32
  %4531 = sub nsw i32 2129859010, %4530
  %4532 = bitcast i32 %4531 to float
  %4533 = fmul fast float %4532, 2.000000e+00
  %4534 = bitcast float %4043 to i32
  %4535 = ashr i32 %4534, 1
  %4536 = add nsw i32 %4535, 532487669
  %4537 = bitcast i32 %4536 to float
  %4538 = fsub fast float 1.000000e+00, %4537
  %4539 = bitcast float %4538 to i32
  %4540 = sub nsw i32 2129859010, %4539
  %4541 = bitcast i32 %4540 to float
  %4542 = fmul fast float %4541, 2.000000e+00
  %4543 = fsub fast float 0x4002A9FBE0000000, %4524
  %4544 = fadd fast float %4524, 0x3FD54FDF00000000
  %4545 = bitcast float %4544 to i32
  %4546 = sub nsw i32 2129859010, %4545
  %4547 = bitcast i32 %4546 to float
  %4548 = fmul fast float %4547, %4543
  %4549 = fmul fast float %4548, %4548
  %4550 = fsub fast float 0x4002A9FBE0000000, %4533
  %4551 = fadd fast float %4533, 0x3FD54FDF00000000
  %4552 = bitcast float %4551 to i32
  %4553 = sub nsw i32 2129859010, %4552
  %4554 = bitcast i32 %4553 to float
  %4555 = fmul fast float %4554, %4550
  %4556 = fmul fast float %4555, %4555
  %4557 = fsub fast float 0x4002A9FBE0000000, %4542
  %4558 = fadd fast float %4542, 0x3FD54FDF00000000
  %4559 = bitcast float %4558 to i32
  %4560 = sub nsw i32 2129859010, %4559
  %4561 = bitcast i32 %4560 to float
  %4562 = fmul fast float %4561, %4557
  %4563 = fmul fast float %4562, %4562
  %4564 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4549)  ; FMax(a,b)
  %4565 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4556)  ; FMax(a,b)
  %4566 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4563)  ; FMax(a,b)
  %4567 = fsub fast float 1.000000e+00, %4452
  %4568 = fadd fast float %4567, %4468
  %4569 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4570 = fsub fast float 1.000000e+00, %4432
  %4571 = fmul fast float %4510, %4570
  %4572 = fmul fast float %4513, %4513
  %4573 = fmul fast float %4572, %4571
  %4574 = fmul fast float %4573, %4515
  %4575 = fmul fast float %4570, 0xBFE99999A0000000
  %4576 = fmul fast float %4575, %4461
  %4577 = fmul fast float %4576, %4472
  %4578 = fadd fast float %4577, 1.000000e+00
  %4579 = fadd fast float %4044, -1.000000e+00
  %4580 = fmul fast float %4578, %4579
  %4581 = fadd fast float %4580, 1.000000e+00
  %4582 = fsub fast float %4564, %4041
  %4583 = fsub fast float %4565, %4042
  %4584 = fsub fast float %4566, %4043
  %4585 = fmul fast float %4574, %4582
  %4586 = fmul fast float %4574, %4583
  %4587 = fmul fast float %4574, %4584
  %4588 = fadd fast float %4585, %4041
  %4589 = fadd fast float %4586, %4042
  %4590 = fadd fast float %4587, %4043
  %4591 = fsub fast float %84, %4005
  %4592 = fsub fast float %86, %4006
  %4593 = fsub fast float %88, %4007
  %4594 = fmul fast float %4574, %4591
  %4595 = fmul fast float %4574, %4592
  %4596 = fmul fast float %4574, %4593
  %4597 = fadd fast float %4594, %4005
  %4598 = fadd fast float %4595, %4006
  %4599 = fadd fast float %4596, %4007
  %4600 = fmul fast float %4574, %4569
  %4601 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4602 = fsub fast float 1.000000e+00, %4601
  %4603 = fmul fast float %4600, %4602
  %4604 = fadd fast float %4603, %4601
  %4605 = fsub fast float 1.000000e+00, %4017
  %4606 = fmul fast float %4574, %4605
  %4607 = fadd fast float %4606, %4017
  %4608 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %4597, float %4598, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %4609 = call float @dx.op.unary.f32(i32 25, float %4608)  ; Rsqrt(value)
  %4610 = fmul fast float %4597, %4609
  %4611 = fmul fast float %4598, %4609
  %4612 = fmul fast float %4599, %4609
  br label %4613

; <label>:4613                                    ; preds = %4445, %4438
  %4614 = phi float [ %4444, %4438 ], [ %4451, %4445 ]
  %4615 = phi float [ %4443, %4438 ], [ %4449, %4445 ]
  %4616 = phi float [ %4442, %4438 ], [ %4447, %4445 ]
  %4617 = phi float [ %4441, %4438 ], [ %4450, %4445 ]
  %4618 = phi float [ %4440, %4438 ], [ %4448, %4445 ]
  %4619 = phi float [ %4439, %4438 ], [ %4446, %4445 ]
  %4620 = phi float [ %4056, %4438 ], [ %4497, %4445 ]
  %4621 = phi float [ %4057, %4438 ], [ %4498, %4445 ]
  %4622 = phi float [ %4058, %4438 ], [ %4499, %4445 ]
  %4623 = phi float [ %4005, %4438 ], [ %4610, %4445 ]
  %4624 = phi float [ %4006, %4438 ], [ %4611, %4445 ]
  %4625 = phi float [ %4007, %4438 ], [ %4612, %4445 ]
  %4626 = phi float [ %4041, %4438 ], [ %4588, %4445 ]
  %4627 = phi float [ %4042, %4438 ], [ %4589, %4445 ]
  %4628 = phi float [ %4043, %4438 ], [ %4590, %4445 ]
  %4629 = phi float [ %4044, %4438 ], [ %4604, %4445 ]
  %4630 = phi float [ %4017, %4438 ], [ %4607, %4445 ]
  %4631 = select i1 %176, float 0.000000e+00, float %4628
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4616, float %4615, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4619, float %4618, float %4617, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = fmul fast float %4634, 2.000000e+00
  %4636 = fmul fast float %4635, %4623
  %4637 = fmul fast float %4635, %4624
  %4638 = fmul fast float %4635, %4625
  %4639 = fsub fast float %4619, %4636
  %4640 = fsub fast float %4618, %4637
  %4641 = fsub fast float %4617, %4638
  %4642 = call float @dx.op.binary.f32(i32 36, float %4630, float 1.000000e+00)  ; FMin(a,b)
  %4643 = fsub fast float 1.000000e+00, %4630
  %4644 = bitcast float %4643 to i32
  %4645 = sub nsw i32 2129859010, %4644
  %4646 = bitcast i32 %4645 to float
  %4647 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4648 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4649 = fcmp fast oeq float %4648, 0.000000e+00
  %4650 = fcmp fast oeq float %4647, 0.000000e+00
  %4651 = or i1 %4650, %4649
  br i1 %4651, label %4681, label %4652

; <label>:4652                                    ; preds = %4613
  %4653 = fsub fast float -0.000000e+00, %55
  %4654 = fsub fast float -0.000000e+00, %53
  %4655 = call float @dx.op.unary.f32(i32 24, float %4648)  ; Sqrt(value)
  %4656 = fdiv fast float %4655, %4647
  %4657 = fcmp fast ogt float %4656, 0x3FFB6F8900000000
  %4658 = select i1 %4657, float 0x3FFB6F8900000000, float %4656
  %4659 = fmul fast float %4658, 0x3FE8A23460000000
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = call float @dx.op.binary.f32(i32 35, float %4658, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4662 = fmul fast float %4660, %4647
  %4663 = fmul fast float %4661, 0x3FF279A740000000
  %4664 = fadd fast float %4663, -1.000000e+00
  %4665 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4654, float %54, float %4653, float %4654, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.unary.f32(i32 25, float %4665)  ; Rsqrt(value)
  %4667 = fmul fast float %4666, %4653
  %4668 = fmul fast float %4666, %4654
  %4669 = fmul fast float %4666, %54
  %4670 = fmul fast float %4664, %4664
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = fmul fast float %4661, 0x40005F8BE0000000
  %4673 = fsub fast float 0x400C5BF8A0000000, %4672
  %4674 = fdiv fast float %4662, %4673
  %4675 = fmul fast float %4674, 0x3FEE31C3C0000000
  %4676 = fmul fast float %4675, %4671
  %4677 = fmul fast float %4661, 0x3FDACB7480000000
  %4678 = fadd fast float %4677, 0xBFD7347680000000
  %4679 = fmul fast float %4678, %4674
  %4680 = fmul fast float %4679, %4671
  br label %4681

; <label>:4681                                    ; preds = %4652, %4613
  %4682 = phi float [ %4667, %4652 ], [ 0.000000e+00, %4613 ]
  %4683 = phi float [ %4668, %4652 ], [ 0.000000e+00, %4613 ]
  %4684 = phi float [ %4669, %4652 ], [ 0.000000e+00, %4613 ]
  %4685 = phi float [ %4676, %4652 ], [ 0.000000e+00, %4613 ]
  %4686 = phi float [ %4680, %4652 ], [ 0.000000e+00, %4613 ]
  %4687 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = fmul fast float %4687, %4687
  %4689 = fmul fast float %4688, 0x3FEE471020000000
  %4690 = fadd fast float %4689, 0xBFD42F6020000000
  %4691 = fmul fast float %4647, 0x3FD20DD760000000
  %4692 = fmul fast float %4690, %4686
  %4693 = fmul fast float %4685, 0x3FDF454380000000
  %4694 = fmul fast float %4693, %4687
  %4695 = fadd fast float %4694, %4691
  %4696 = fadd fast float %4695, %4692
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4683, float %4684, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = fmul fast float %4697, 0x3FDF454380000000
  %4699 = fmul fast float %4697, %4697
  %4700 = fmul fast float %4699, 0x3FEE471020000000
  %4701 = fadd fast float %4700, 0xBFD42F6020000000
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4685, float %4686, float 0x3FD20DD760000000, float %4698, float %4701)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4704 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = fcmp fast oeq float %4704, 0.000000e+00
  %4706 = fcmp fast oeq float %4703, 0.000000e+00
  %4707 = or i1 %4706, %4705
  br i1 %4707, label %4737, label %4708

; <label>:4708                                    ; preds = %4681
  %4709 = fsub fast float -0.000000e+00, %51
  %4710 = fsub fast float -0.000000e+00, %49
  %4711 = call float @dx.op.unary.f32(i32 24, float %4704)  ; Sqrt(value)
  %4712 = fdiv fast float %4711, %4703
  %4713 = fcmp fast ogt float %4712, 0x3FFB6F8900000000
  %4714 = select i1 %4713, float 0x3FFB6F8900000000, float %4712
  %4715 = fmul fast float %4714, 0x3FE8A23460000000
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = call float @dx.op.binary.f32(i32 35, float %4714, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4718 = fmul fast float %4716, %4703
  %4719 = fmul fast float %4717, 0x3FF279A740000000
  %4720 = fadd fast float %4719, -1.000000e+00
  %4721 = call float @dx.op.dot3.f32(i32 55, float %4709, float %4710, float %50, float %4709, float %4710, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4722 = call float @dx.op.unary.f32(i32 25, float %4721)  ; Rsqrt(value)
  %4723 = fmul fast float %4722, %4709
  %4724 = fmul fast float %4722, %4710
  %4725 = fmul fast float %4722, %50
  %4726 = fmul fast float %4720, %4720
  %4727 = fsub fast float 1.000000e+00, %4726
  %4728 = fmul fast float %4717, 0x40005F8BE0000000
  %4729 = fsub fast float 0x400C5BF8A0000000, %4728
  %4730 = fdiv fast float %4718, %4729
  %4731 = fmul fast float %4730, 0x3FEE31C3C0000000
  %4732 = fmul fast float %4731, %4727
  %4733 = fmul fast float %4717, 0x3FDACB7480000000
  %4734 = fadd fast float %4733, 0xBFD7347680000000
  %4735 = fmul fast float %4734, %4730
  %4736 = fmul fast float %4735, %4727
  br label %4737

; <label>:4737                                    ; preds = %4708, %4681
  %4738 = phi float [ %4723, %4708 ], [ 0.000000e+00, %4681 ]
  %4739 = phi float [ %4724, %4708 ], [ 0.000000e+00, %4681 ]
  %4740 = phi float [ %4725, %4708 ], [ 0.000000e+00, %4681 ]
  %4741 = phi float [ %4732, %4708 ], [ 0.000000e+00, %4681 ]
  %4742 = phi float [ %4736, %4708 ], [ 0.000000e+00, %4681 ]
  %4743 = call float @dx.op.dot3.f32(i32 55, float %4738, float %4739, float %4740, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = fmul fast float %4743, %4743
  %4745 = fmul fast float %4744, 0x3FEE471020000000
  %4746 = fadd fast float %4745, 0xBFD42F6020000000
  %4747 = fmul fast float %4703, 0x3FD20DD760000000
  %4748 = fmul fast float %4746, %4742
  %4749 = fmul fast float %4741, 0x3FDF454380000000
  %4750 = fmul fast float %4749, %4743
  %4751 = fadd fast float %4750, %4747
  %4752 = fadd fast float %4751, %4748
  %4753 = call float @dx.op.dot3.f32(i32 55, float %4738, float %4739, float %4740, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4754 = fmul fast float %4753, 0x3FDF454380000000
  %4755 = fmul fast float %4753, %4753
  %4756 = fmul fast float %4755, 0x3FEE471020000000
  %4757 = fadd fast float %4756, 0xBFD42F6020000000
  %4758 = call float @dx.op.dot3.f32(i32 55, float %4703, float %4741, float %4742, float 0x3FD20DD760000000, float %4754, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %4759 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4760 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = fcmp fast oeq float %4760, 0.000000e+00
  %4762 = fcmp fast oeq float %4759, 0.000000e+00
  %4763 = or i1 %4762, %4761
  br i1 %4763, label %4793, label %4764

; <label>:4764                                    ; preds = %4737
  %4765 = fsub fast float -0.000000e+00, %47
  %4766 = fsub fast float -0.000000e+00, %45
  %4767 = call float @dx.op.unary.f32(i32 24, float %4760)  ; Sqrt(value)
  %4768 = fdiv fast float %4767, %4759
  %4769 = fcmp fast ogt float %4768, 0x3FFB6F8900000000
  %4770 = select i1 %4769, float 0x3FFB6F8900000000, float %4768
  %4771 = fmul fast float %4770, 0x3FE8A23460000000
  %4772 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4773 = call float @dx.op.binary.f32(i32 35, float %4770, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4774 = fmul fast float %4772, %4759
  %4775 = fmul fast float %4773, 0x3FF279A740000000
  %4776 = fadd fast float %4775, -1.000000e+00
  %4777 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4766, float %46, float %4765, float %4766, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4778 = call float @dx.op.unary.f32(i32 25, float %4777)  ; Rsqrt(value)
  %4779 = fmul fast float %4778, %4765
  %4780 = fmul fast float %4778, %4766
  %4781 = fmul fast float %4778, %46
  %4782 = fmul fast float %4776, %4776
  %4783 = fsub fast float 1.000000e+00, %4782
  %4784 = fmul fast float %4773, 0x40005F8BE0000000
  %4785 = fsub fast float 0x400C5BF8A0000000, %4784
  %4786 = fdiv fast float %4774, %4785
  %4787 = fmul fast float %4786, 0x3FEE31C3C0000000
  %4788 = fmul fast float %4787, %4783
  %4789 = fmul fast float %4773, 0x3FDACB7480000000
  %4790 = fadd fast float %4789, 0xBFD7347680000000
  %4791 = fmul fast float %4790, %4786
  %4792 = fmul fast float %4791, %4783
  br label %4793

; <label>:4793                                    ; preds = %4764, %4737
  %4794 = phi float [ %4779, %4764 ], [ 0.000000e+00, %4737 ]
  %4795 = phi float [ %4780, %4764 ], [ 0.000000e+00, %4737 ]
  %4796 = phi float [ %4781, %4764 ], [ 0.000000e+00, %4737 ]
  %4797 = phi float [ %4788, %4764 ], [ 0.000000e+00, %4737 ]
  %4798 = phi float [ %4792, %4764 ], [ 0.000000e+00, %4737 ]
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4794, float %4795, float %4796, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = fmul fast float %4799, %4799
  %4801 = fmul fast float %4800, 0x3FEE471020000000
  %4802 = fadd fast float %4801, 0xBFD42F6020000000
  %4803 = fmul fast float %4759, 0x3FD20DD760000000
  %4804 = fmul fast float %4802, %4798
  %4805 = fmul fast float %4797, 0x3FDF454380000000
  %4806 = fmul fast float %4805, %4799
  %4807 = fadd fast float %4806, %4803
  %4808 = fadd fast float %4807, %4804
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4794, float %4795, float %4796, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = fmul fast float %4809, 0x3FDF454380000000
  %4811 = fmul fast float %4809, %4809
  %4812 = fmul fast float %4811, 0x3FEE471020000000
  %4813 = fadd fast float %4812, 0xBFD42F6020000000
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4759, float %4797, float %4798, float 0x3FD20DD760000000, float %4810, float %4813)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = call float @dx.op.binary.f32(i32 35, float %4696, float 0.000000e+00)  ; FMax(a,b)
  %4816 = call float @dx.op.binary.f32(i32 35, float %4752, float 0.000000e+00)  ; FMax(a,b)
  %4817 = call float @dx.op.binary.f32(i32 35, float %4808, float 0.000000e+00)  ; FMax(a,b)
  %4818 = call float @dx.op.binary.f32(i32 35, float %4702, float 0.000000e+00)  ; FMax(a,b)
  %4819 = call float @dx.op.binary.f32(i32 35, float %4758, float 0.000000e+00)  ; FMax(a,b)
  %4820 = call float @dx.op.binary.f32(i32 35, float %4814, float 0.000000e+00)  ; FMax(a,b)
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = call float @dx.op.binary.f32(i32 36, float %4620, float %4822)  ; FMin(a,b)
  %4824 = fsub fast float 1.000000e+00, %4642
  %4825 = fmul fast float %4823, %4824
  %4826 = fsub fast float 1.000000e+00, %4825
  %4827 = bitcast float %4826 to i32
  %4828 = sub nsw i32 2129859010, %4827
  %4829 = bitcast i32 %4828 to float
  %4830 = call float @dx.op.binary.f32(i32 36, float %4621, float %4822)  ; FMin(a,b)
  %4831 = fmul fast float %4830, %4824
  %4832 = fsub fast float 1.000000e+00, %4831
  %4833 = bitcast float %4832 to i32
  %4834 = sub nsw i32 2129859010, %4833
  %4835 = bitcast i32 %4834 to float
  %4836 = call float @dx.op.binary.f32(i32 36, float %4622, float %4822)  ; FMin(a,b)
  %4837 = fmul fast float %4836, %4824
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = bitcast float %4838 to i32
  %4840 = sub nsw i32 2129859010, %4839
  %4841 = bitcast i32 %4840 to float
  %4842 = fmul fast float %4815, %4642
  %4843 = fmul fast float %4842, %4829
  %4844 = fmul fast float %4816, %4642
  %4845 = fmul fast float %4844, %4835
  %4846 = fmul fast float %4817, %4642
  %4847 = fmul fast float %4846, %4841
  %4848 = call float @dx.op.binary.f32(i32 36, float %4626, float %4822)  ; FMin(a,b)
  %4849 = fmul fast float %4848, %4824
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = bitcast float %4850 to i32
  %4852 = sub nsw i32 2129859010, %4851
  %4853 = bitcast i32 %4852 to float
  %4854 = call float @dx.op.binary.f32(i32 36, float %4627, float %4822)  ; FMin(a,b)
  %4855 = fmul fast float %4854, %4824
  %4856 = fsub fast float 1.000000e+00, %4855
  %4857 = bitcast float %4856 to i32
  %4858 = sub nsw i32 2129859010, %4857
  %4859 = bitcast i32 %4858 to float
  %4860 = call float @dx.op.binary.f32(i32 36, float %4631, float %4822)  ; FMin(a,b)
  %4861 = fmul fast float %4860, %4824
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = fmul fast float %4818, %4642
  %4867 = fmul fast float %4866, %4853
  %4868 = fmul fast float %4819, %4642
  %4869 = fmul fast float %4868, %4859
  %4870 = fmul fast float %4820, %4642
  %4871 = fmul fast float %4870, %4865
  %4872 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4845, float %4847, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = select i1 %176, float 0.000000e+00, float %4843
  %4874 = select i1 %176, float %4872, float %4845
  %4875 = select i1 %176, float 0.000000e+00, float %4847
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4869, float %4871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = select i1 %176, float 0.000000e+00, float %4867
  %4878 = select i1 %176, float %4876, float %4869
  %4879 = select i1 %176, float 0.000000e+00, float %4871
  %4880 = fmul fast float %4633, 9.843750e-01
  %4881 = fmul fast float %4629, 9.843750e-01
  %4882 = fadd fast float %4880, 7.812500e-03
  %4883 = fadd fast float %4881, 7.812500e-03
  %4884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4882, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4885 = extractvalue %dx.types.ResRet.f32 %4884, 2
  %4886 = extractvalue %dx.types.ResRet.f32 %4884, 3
  %4887 = fmul fast float %4885, %4626
  %4888 = fmul fast float %4885, %4627
  %4889 = fmul fast float %4885, %4631
  %4890 = fadd fast float %4887, %4886
  %4891 = fadd fast float %4888, %4886
  %4892 = fadd fast float %4889, %4886
  %4893 = fcmp fast ogt float %4018, 0.000000e+00
  br i1 %4893, label %4894, label %4920

; <label>:4894                                    ; preds = %4793
  %4895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4018, float %4633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4896 = extractvalue %dx.types.ResRet.f32 %4895, 0
  %4897 = extractvalue %dx.types.ResRet.f32 %4895, 1
  %4898 = extractvalue %dx.types.ResRet.f32 %4895, 2
  %4899 = fadd fast float %4896, -5.000000e-01
  %4900 = fadd fast float %4897, -5.000000e-01
  %4901 = fadd fast float %4898, -5.000000e-01
  %4902 = fsub fast float 1.000000e+00, %4626
  %4903 = fsub fast float 1.000000e+00, %4627
  %4904 = fsub fast float 1.000000e+00, %4631
  %4905 = fmul fast float %4626, 4.000000e+00
  %4906 = fmul fast float %4905, %4902
  %4907 = fmul fast float %4906, %4899
  %4908 = fmul fast float %4627, 4.000000e+00
  %4909 = fmul fast float %4908, %4903
  %4910 = fmul fast float %4909, %4900
  %4911 = fmul fast float %4631, 4.000000e+00
  %4912 = fmul fast float %4911, %4904
  %4913 = fmul fast float %4912, %4901
  %4914 = fadd fast float %4907, %4890
  %4915 = fadd fast float %4910, %4891
  %4916 = fadd fast float %4913, %4892
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4919 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  br label %4920

; <label>:4920                                    ; preds = %4894, %4793
  %4921 = phi float [ %4917, %4894 ], [ %4890, %4793 ]
  %4922 = phi float [ %4918, %4894 ], [ %4891, %4793 ]
  %4923 = phi float [ %4919, %4894 ], [ %4892, %4793 ]
  %4924 = call float @dx.op.binary.f32(i32 35, float %4922, float %4923)  ; FMax(a,b)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4921, float %4924)  ; FMax(a,b)
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = fmul fast float %4926, %4873
  %4928 = fmul fast float %4926, %4874
  %4929 = fmul fast float %4926, %4875
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = fcmp fast ogt float %4930, 0x3E7FF19E20000000
  %4932 = fdiv fast float 1.000000e+00, %4930
  %4933 = select i1 %4931, float %4932, float 0.000000e+00
  %4934 = fmul fast float %4933, %4620
  %4935 = fmul fast float %4933, %4621
  %4936 = fmul fast float %4933, %4622
  %4937 = fadd fast float %4934, -1.000000e+00
  %4938 = fadd fast float %4935, -1.000000e+00
  %4939 = fadd fast float %4936, -1.000000e+00
  %4940 = fmul fast float %4937, 5.000000e-01
  %4941 = fmul fast float %4938, 5.000000e-01
  %4942 = fmul fast float %4939, 5.000000e-01
  %4943 = fadd fast float %4940, 1.000000e+00
  %4944 = fadd fast float %4941, 1.000000e+00
  %4945 = fadd fast float %4942, 1.000000e+00
  %4946 = fmul fast float %4921, %4877
  %4947 = fmul fast float %4922, %4878
  %4948 = fmul fast float %4923, %4879
  %4949 = fsub fast float 1.000000e+00, %4633
  %4950 = bitcast float %4949 to i32
  %4951 = sitofp i32 %4950 to float
  %4952 = fmul fast float %4951, 5.000000e+00
  %4953 = fadd fast float %4952, 0xC1EFBF8940000000
  %4954 = fptosi float %4953 to i32
  %4955 = bitcast i32 %4954 to float
  %4956 = fmul fast float %4955, %4019
  %4957 = fmul fast float %4873, %4956
  %4958 = fmul fast float %4957, %4926
  %4959 = fmul fast float %4958, %4943
  %4960 = fmul fast float %4874, %4956
  %4961 = fmul fast float %4960, %4926
  %4962 = fmul fast float %4961, %4944
  %4963 = fmul fast float %4875, %4956
  %4964 = fmul fast float %4963, %4926
  %4965 = fmul fast float %4964, %4945
  %4966 = fmul fast float %4927, %4015
  %4967 = fmul fast float %4928, %4015
  %4968 = fmul fast float %4929, %4015
  %4969 = fadd fast float %4946, %4008
  %4970 = fadd fast float %4969, %4959
  %4971 = fmul fast float %4970, %4015
  %4972 = fadd fast float %4947, %4009
  %4973 = fadd fast float %4972, %4962
  %4974 = fmul fast float %4973, %4015
  %4975 = fadd fast float %4948, %4010
  %4976 = fadd fast float %4975, %4965
  %4977 = fmul fast float %4976, %4015
  %4978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4978, 3
  %4980 = fcmp fast oeq float %4979, 0.000000e+00
  br i1 %4980, label %5208, label %4981

; <label>:4981                                    ; preds = %4920
  %4982 = extractvalue %dx.types.CBufRet.f32 %4978, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4978, 1
  %4984 = extractvalue %dx.types.CBufRet.f32 %4978, 2
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = extractvalue %dx.types.CBufRet.f32 %4985, 1
  %4988 = extractvalue %dx.types.CBufRet.f32 %4985, 2
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 0
  %4991 = extractvalue %dx.types.CBufRet.f32 %4989, 1
  %4992 = call float @dx.op.dot3.f32(i32 55, float %4986, float %4987, float %4988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = select i1 %176, float %4990, float %4986
  %4994 = select i1 %176, float %4992, float %4987
  %4995 = select i1 %176, float %4991, float %4988
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 1
  %4998 = fcmp fast une float %4997, 0.000000e+00
  br i1 %4998, label %4999, label %5016

; <label>:4999                                    ; preds = %4981
  %5000 = fptoui float %75 to i32
  %5001 = fptoui float %76 to i32
  %5002 = lshr i32 %5000, 4
  %5003 = lshr i32 %5001, 4
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = fptoui float %5005 to i32
  %5007 = add i32 %5006, 15
  %5008 = lshr i32 %5007, 4
  %5009 = mul i32 %5008, %5003
  %5010 = add i32 %5009, %5002
  %5011 = shl i32 %5010, 3
  %5012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5011, i32 undef)  ; BufferLoad(srv,index,wot)
  %5013 = extractvalue %dx.types.ResRet.i32 %5012, 0
  %5014 = and i32 %5013, -268435456
  %5015 = icmp eq i32 %5014, -1342177280
  br i1 %5015, label %5026, label %5016

; <label>:5016                                    ; preds = %4999, %4981
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 2
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 3
  %5020 = fmul fast float %5018, %75
  %5021 = fmul fast float %5019, %76
  %5022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5020, float %5021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5023 = extractvalue %dx.types.ResRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.ResRet.f32 %5022, 1
  %5025 = extractvalue %dx.types.ResRet.f32 %5022, 2
  br label %5026

; <label>:5026                                    ; preds = %5016, %4999
  %5027 = phi float [ %5023, %5016 ], [ 0.000000e+00, %4999 ]
  %5028 = phi float [ %5024, %5016 ], [ 0.000000e+00, %4999 ]
  %5029 = phi float [ %5025, %5016 ], [ 0.000000e+00, %4999 ]
  %5030 = call float @dx.op.binary.f32(i32 36, float %5028, float %5029)  ; FMin(a,b)
  %5031 = call float @dx.op.binary.f32(i32 36, float %5027, float %5030)  ; FMin(a,b)
  %5032 = fcmp fast ogt float %5031, 0.000000e+00
  br i1 %5032, label %5033, label %5208, !dx.controlflow.hints !75

; <label>:5033                                    ; preds = %5026
  %5034 = fmul fast float %5027, %4993
  %5035 = fmul fast float %5028, %4994
  %5036 = fmul fast float %5029, %4995
  %5037 = fsub fast float %4982, %4619
  %5038 = fsub fast float %4983, %4618
  %5039 = fsub fast float %4984, %4617
  %5040 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = call float @dx.op.unary.f32(i32 25, float %5040)  ; Rsqrt(value)
  %5042 = fmul fast float %5041, %5037
  %5043 = fmul fast float %5041, %5038
  %5044 = fmul fast float %5041, %5039
  %5045 = call float @dx.op.dot3.f32(i32 55, float %4982, float %4983, float %4984, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4615, float %4614, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5048 = fmul fast float %5047, %5047
  %5049 = fmul fast float %5048, %4646
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = fmul fast float %5050, %5047
  %5052 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = fmul fast float %5052, %5052
  %5054 = call float @dx.op.unary.f32(i32 6, float %5045)  ; FAbs(value)
  %5055 = fsub fast float 1.000000e+00, %4629
  %5056 = call float @dx.op.binary.f32(i32 35, float %5055, float 0x3F847AE140000000)  ; FMax(a,b)
  %5057 = fmul fast float %5056, %5056
  %5058 = fmul fast float %5057, %5057
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = fmul fast float %4633, %4633
  %5061 = fmul fast float %5060, %5059
  %5062 = fadd fast float %5061, %5058
  %5063 = bitcast float %5062 to i32
  %5064 = ashr i32 %5063, 1
  %5065 = add nsw i32 %5064, 532487669
  %5066 = bitcast i32 %5065 to float
  %5067 = fadd fast float %5066, %4633
  %5068 = fmul fast float %5058, %5053
  %5069 = fsub fast float 1.000000e+00, %5053
  %5070 = fadd fast float %5069, %5068
  %5071 = fmul fast float %5054, %5054
  %5072 = fmul fast float %5071, %5059
  %5073 = fadd fast float %5072, %5058
  %5074 = bitcast float %5073 to i32
  %5075 = ashr i32 %5074, 1
  %5076 = add nsw i32 %5075, 532487669
  %5077 = bitcast i32 %5076 to float
  %5078 = fadd fast float %5077, %5054
  %5079 = fmul fast float %5070, %5070
  %5080 = fmul fast float %5079, %5067
  %5081 = fmul fast float %5080, %5078
  %5082 = fdiv fast float 0x3FF0A00000000000, %5081
  %5083 = fmul fast float %5082, %5058
  %5084 = call float @dx.op.unary.f32(i32 6, float %5046)  ; FAbs(value)
  %5085 = fsub fast float 1.000000e+00, %5084
  %5086 = bitcast float %5085 to i32
  %5087 = sitofp i32 %5086 to float
  %5088 = fmul fast float %5087, 5.000000e+00
  %5089 = fadd fast float %5088, 0xC1EFBF8940000000
  %5090 = fptosi float %5089 to i32
  %5091 = bitcast i32 %5090 to float
  %5092 = fsub fast float 1.000000e+00, %4626
  %5093 = fsub fast float 1.000000e+00, %4627
  %5094 = fsub fast float 1.000000e+00, %4631
  %5095 = fmul fast float %5091, %5092
  %5096 = fmul fast float %5091, %5093
  %5097 = fmul fast float %5091, %5094
  %5098 = fadd fast float %5095, %4626
  %5099 = fadd fast float %5096, %4627
  %5100 = fadd fast float %5097, %4631
  br i1 %4893, label %5101, label %5124

; <label>:5101                                    ; preds = %5033
  %5102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4018, float %5084, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5103 = extractvalue %dx.types.ResRet.f32 %5102, 0
  %5104 = extractvalue %dx.types.ResRet.f32 %5102, 1
  %5105 = extractvalue %dx.types.ResRet.f32 %5102, 2
  %5106 = fadd fast float %5103, -5.000000e-01
  %5107 = fadd fast float %5104, -5.000000e-01
  %5108 = fadd fast float %5105, -5.000000e-01
  %5109 = fmul fast float %4626, 4.000000e+00
  %5110 = fmul fast float %5109, %5092
  %5111 = fmul fast float %5110, %5106
  %5112 = fmul fast float %4627, 4.000000e+00
  %5113 = fmul fast float %5112, %5093
  %5114 = fmul fast float %5113, %5107
  %5115 = fmul fast float %4631, 4.000000e+00
  %5116 = fmul fast float %5115, %5094
  %5117 = fmul fast float %5116, %5108
  %5118 = fadd fast float %5111, %5098
  %5119 = fadd fast float %5114, %5099
  %5120 = fadd fast float %5117, %5100
  %5121 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5123 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  br label %5124

; <label>:5124                                    ; preds = %5101, %5033
  %5125 = phi float [ %5121, %5101 ], [ %5098, %5033 ]
  %5126 = phi float [ %5122, %5101 ], [ %5099, %5033 ]
  %5127 = phi float [ %5123, %5101 ], [ %5100, %5033 ]
  %5128 = fmul fast float %5045, 9.843750e-01
  %5129 = fadd fast float %5128, 7.812500e-03
  %5130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5129, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 2
  %5132 = extractvalue %dx.types.ResRet.f32 %5130, 3
  %5133 = fmul fast float %5131, %4626
  %5134 = fmul fast float %5131, %4627
  %5135 = fmul fast float %5131, %4631
  %5136 = fadd fast float %5133, %5132
  %5137 = fadd fast float %5134, %5132
  %5138 = fadd fast float %5135, %5132
  br i1 %4893, label %5139, label %5162

; <label>:5139                                    ; preds = %5124
  %5140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4018, float %5045, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5141 = extractvalue %dx.types.ResRet.f32 %5140, 0
  %5142 = extractvalue %dx.types.ResRet.f32 %5140, 1
  %5143 = extractvalue %dx.types.ResRet.f32 %5140, 2
  %5144 = fadd fast float %5141, -5.000000e-01
  %5145 = fadd fast float %5142, -5.000000e-01
  %5146 = fadd fast float %5143, -5.000000e-01
  %5147 = fmul fast float %4626, 4.000000e+00
  %5148 = fmul fast float %5147, %5092
  %5149 = fmul fast float %5148, %5144
  %5150 = fmul fast float %4627, 4.000000e+00
  %5151 = fmul fast float %5150, %5093
  %5152 = fmul fast float %5151, %5145
  %5153 = fmul fast float %4631, 4.000000e+00
  %5154 = fmul fast float %5153, %5094
  %5155 = fmul fast float %5154, %5146
  %5156 = fadd fast float %5149, %5136
  %5157 = fadd fast float %5152, %5137
  %5158 = fadd fast float %5155, %5138
  %5159 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5160 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5161 = call float @dx.op.unary.f32(i32 7, float %5158)  ; Saturate(value)
  br label %5162

; <label>:5162                                    ; preds = %5139, %5124
  %5163 = phi float [ %5159, %5139 ], [ %5136, %5124 ]
  %5164 = phi float [ %5160, %5139 ], [ %5137, %5124 ]
  %5165 = phi float [ %5161, %5139 ], [ %5138, %5124 ]
  %5166 = call float @dx.op.binary.f32(i32 35, float %5164, float %5165)  ; FMax(a,b)
  %5167 = call float @dx.op.binary.f32(i32 35, float %5163, float %5166)  ; FMax(a,b)
  %5168 = fsub fast float 1.000000e+00, %5167
  %5169 = fmul fast float %5125, %5083
  %5170 = fmul fast float %5126, %5083
  %5171 = fmul fast float %5127, %5083
  %5172 = fsub fast float 1.000000e+00, %5046
  %5173 = bitcast float %5172 to i32
  %5174 = sitofp i32 %5173 to float
  %5175 = fmul fast float %5174, 5.000000e+00
  %5176 = fadd fast float %5175, 0xC1EFBF8940000000
  %5177 = fptosi float %5176 to i32
  %5178 = bitcast i32 %5177 to float
  %5179 = fmul fast float %5178, %4019
  %5180 = fmul fast float %5168, %5179
  %5181 = fmul fast float %5180, %4943
  %5182 = fmul fast float %5180, %4944
  %5183 = fmul fast float %5180, %4945
  %5184 = fadd fast float %5181, %5169
  %5185 = fadd fast float %5182, %5170
  %5186 = fadd fast float %5183, %5171
  %5187 = fmul fast float %5051, %5034
  %5188 = fmul fast float %5187, %5168
  %5189 = fmul fast float %5051, %5035
  %5190 = fmul fast float %5189, %5168
  %5191 = fmul fast float %5051, %5036
  %5192 = fmul fast float %5191, %5168
  %5193 = fmul fast float %5187, %5184
  %5194 = fmul fast float %5189, %5185
  %5195 = fmul fast float %5191, %5186
  %5196 = fadd fast float %5188, %4927
  %5197 = fmul fast float %5196, %4015
  %5198 = fadd fast float %5190, %4928
  %5199 = fmul fast float %5198, %4015
  %5200 = fadd fast float %5192, %4929
  %5201 = fmul fast float %5200, %4015
  %5202 = fadd fast float %5193, %4970
  %5203 = fmul fast float %5202, %4015
  %5204 = fadd fast float %5194, %4973
  %5205 = fmul fast float %5204, %4015
  %5206 = fadd fast float %5195, %4976
  %5207 = fmul fast float %5206, %4015
  br label %5208

; <label>:5208                                    ; preds = %5162, %5026, %4920
  %5209 = phi float [ %4971, %4920 ], [ %4971, %5026 ], [ %5203, %5162 ]
  %5210 = phi float [ %4974, %4920 ], [ %4974, %5026 ], [ %5205, %5162 ]
  %5211 = phi float [ %4977, %4920 ], [ %4977, %5026 ], [ %5207, %5162 ]
  %5212 = phi float [ %4966, %4920 ], [ %4966, %5026 ], [ %5197, %5162 ]
  %5213 = phi float [ %4967, %4920 ], [ %4967, %5026 ], [ %5199, %5162 ]
  %5214 = phi float [ %4968, %4920 ], [ %4968, %5026 ], [ %5201, %5162 ]
  %5215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.i32 %5215, 0
  %5217 = icmp eq i32 %5216, 0
  br i1 %5217, label %5652, label %5218

; <label>:5218                                    ; preds = %5208
  %5219 = fptoui float %75 to i32
  %5220 = fptoui float %76 to i32
  %5221 = lshr i32 %5219, 4
  %5222 = lshr i32 %5220, 4
  %5223 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.i32 %5223, 0
  %5225 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5222, i32 %5224, i32 %5221)  ; UMad(a,b,c)
  %5226 = add nsw i32 %5216, -1
  %5227 = call i32 @dx.op.binary.i32(i32 37, i32 %5226, i32 0)  ; IMax(a,b)
  %5228 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5229 = fptoui float %5228 to i32
  %5230 = lshr i32 %5229, 5
  %5231 = call i32 @dx.op.binary.i32(i32 40, i32 %5230, i32 8191)  ; UMin(a,b)
  %5232 = shl i32 %5231, 2
  %5233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5232, i32 undef)  ; BufferLoad(srv,index,wot)
  %5234 = extractvalue %dx.types.ResRet.i32 %5233, 0
  %5235 = lshr i32 %5234, 16
  %5236 = and i32 %5234, 65535
  %5237 = lshr i32 %5234, 21
  %5238 = lshr i32 %5236, 5
  %5239 = call i32 @dx.op.binary.i32(i32 40, i32 %5238, i32 %5227)  ; UMin(a,b)
  %5240 = icmp ugt i32 %5237, %5239
  br i1 %5240, label %5652, label %5241

; <label>:5241                                    ; preds = %5218
  br label %5242

; <label>:5242                                    ; preds = %5642, %5241
  %5243 = phi i32 [ %5649, %5642 ], [ %5237, %5241 ]
  %5244 = phi float [ %5643, %5642 ], [ %5209, %5241 ]
  %5245 = phi float [ %5644, %5642 ], [ %5210, %5241 ]
  %5246 = phi float [ %5645, %5642 ], [ %5211, %5241 ]
  %5247 = phi float [ %5646, %5642 ], [ %5212, %5241 ]
  %5248 = phi float [ %5647, %5642 ], [ %5213, %5241 ]
  %5249 = phi float [ %5648, %5642 ], [ %5214, %5241 ]
  %5250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.i32 %5250, 0
  %5252 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5225, i32 %5251, i32 %5243)  ; UMad(a,b,c)
  %5253 = shl i32 %5252, 2
  %5254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.i32 %5254, 0
  %5256 = shl i32 %5243, 5
  %5257 = sub nsw i32 %5235, %5256
  %5258 = call i32 @dx.op.binary.i32(i32 37, i32 %5257, i32 0)  ; IMax(a,b)
  %5259 = call i32 @dx.op.binary.i32(i32 38, i32 %5258, i32 31)  ; IMin(a,b)
  %5260 = sub nsw i32 1, %5235
  %5261 = add nsw i32 %5260, %5236
  %5262 = call i32 @dx.op.binary.i32(i32 37, i32 %5261, i32 0)  ; IMax(a,b)
  %5263 = call i32 @dx.op.binary.i32(i32 38, i32 %5262, i32 32)  ; IMin(a,b)
  %5264 = and i32 %5263, 31
  %5265 = shl i32 -1, %5264
  %5266 = xor i32 %5265, -1
  %5267 = and i32 %5259, 31
  %5268 = shl i32 %5266, %5267
  %5269 = icmp eq i32 %5263, 32
  %5270 = select i1 %5269, i32 -1, i32 %5268
  %5271 = and i32 %5270, %5255
  %5272 = icmp eq i32 %5271, 0
  br i1 %5272, label %5642, label %5273

; <label>:5273                                    ; preds = %5242
  br label %5274

; <label>:5274                                    ; preds = %5354, %5273
  %5275 = phi i32 [ %5286, %5354 ], [ %5271, %5273 ]
  %5276 = phi float [ %5355, %5354 ], [ %5244, %5273 ]
  %5277 = phi float [ %5356, %5354 ], [ %5245, %5273 ]
  %5278 = phi float [ %5357, %5354 ], [ %5246, %5273 ]
  %5279 = phi float [ %5358, %5354 ], [ %5247, %5273 ]
  %5280 = phi float [ %5359, %5354 ], [ %5248, %5273 ]
  %5281 = phi float [ %5360, %5354 ], [ %5249, %5273 ]
  %5282 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5275)  ; FirstbitLo(value)
  %5283 = add i32 %5282, %5256
  %5284 = and i32 %5282, 31
  %5285 = shl i32 1, %5284
  %5286 = xor i32 %5285, %5275
  %5287 = mul i32 %5283, 112
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.ResRet.f32 %5288, 1
  %5291 = extractvalue %dx.types.ResRet.f32 %5288, 2
  %5292 = or i32 %5287, 12
  %5293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5292, i32 undef)  ; BufferLoad(srv,index,wot)
  %5294 = extractvalue %dx.types.ResRet.f32 %5293, 0
  %5295 = add i32 %5287, 44
  %5296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5295, i32 undef)  ; BufferLoad(srv,index,wot)
  %5297 = extractvalue %dx.types.ResRet.f32 %5296, 0
  %5298 = add i32 %5287, 48
  %5299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5298, i32 undef)  ; BufferLoad(srv,index,wot)
  %5300 = extractvalue %dx.types.ResRet.f32 %5299, 0
  %5301 = extractvalue %dx.types.ResRet.f32 %5299, 1
  %5302 = extractvalue %dx.types.ResRet.f32 %5299, 2
  %5303 = add i32 %5287, 80
  %5304 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5303, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.f32 %5304, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5304, 2
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5289, float %5290, float %5291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = select i1 %176, float %5305, float %5289
  %5309 = select i1 %176, float %5307, float %5290
  %5310 = select i1 %176, float %5306, float %5291
  %5311 = fsub fast float %5300, %134
  %5312 = fsub fast float %5301, %135
  %5313 = fsub fast float %5302, %136
  %5314 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5313, float %5311, float %5312, float %5313)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 24, float %5314)  ; Sqrt(value)
  %5316 = fdiv fast float 1.000000e+00, %5315
  %5317 = fmul fast float %5316, %5311
  %5318 = fmul fast float %5316, %5312
  %5319 = fmul fast float %5316, %5313
  %5320 = fadd fast float %5315, %5294
  %5321 = fdiv fast float 1.000000e+00, %5320
  %5322 = fmul float %5297, %5321
  %5323 = fmul float %5322, %5322
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = and i32 %5285, %5271
  %5326 = icmp eq i32 %5325, 0
  br i1 %5326, label %5349, label %5327, !dx.controlflow.hints !76

; <label>:5327                                    ; preds = %5274
  %5328 = lshr i32 %5219, 5
  %5329 = lshr i32 %5220, 5
  %5330 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5328, i32 %5329, i32 %5283, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5331 = extractvalue %dx.types.ResRet.i32 %5330, 0
  %5332 = and i32 %5331, 3
  %5333 = icmp eq i32 %5332, 0
  %5334 = select i1 %5333, float 1.000000e+00, float 0.000000e+00
  %5335 = icmp eq i32 %5332, 3
  br i1 %5335, label %5336, label %5349

; <label>:5336                                    ; preds = %5327
  %5337 = lshr i32 %5331, 10
  %5338 = and i32 %5337, 8160
  %5339 = and i32 %5220, 31
  %5340 = or i32 %5338, %5339
  %5341 = lshr i32 %5331, 1
  %5342 = and i32 %5341, 16352
  %5343 = and i32 %5219, 31
  %5344 = or i32 %5342, %5343
  %5345 = lshr i32 %5331, 23
  %5346 = and i32 %5345, 255
  %5347 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5344, i32 %5340, i32 %5346, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  br label %5349

; <label>:5349                                    ; preds = %5336, %5327, %5274
  %5350 = phi float [ %5348, %5336 ], [ %5334, %5327 ], [ 0.000000e+00, %5274 ]
  %5351 = call float @dx.op.binary.f32(i32 36, float %5350, float %5350)  ; FMin(a,b)
  %5352 = call float @dx.op.binary.f32(i32 36, float %5350, float %5351)  ; FMin(a,b)
  %5353 = fcmp fast ogt float %5352, 0.000000e+00
  br i1 %5353, label %5362, label %5354, !dx.controlflow.hints !77

; <label>:5354                                    ; preds = %5598, %5349
  %5355 = phi float [ %5276, %5349 ], [ %5638, %5598 ]
  %5356 = phi float [ %5277, %5349 ], [ %5639, %5598 ]
  %5357 = phi float [ %5278, %5349 ], [ %5640, %5598 ]
  %5358 = phi float [ %5279, %5349 ], [ %5632, %5598 ]
  %5359 = phi float [ %5280, %5349 ], [ %5633, %5598 ]
  %5360 = phi float [ %5281, %5349 ], [ %5634, %5598 ]
  %5361 = icmp eq i32 %5275, %5285
  br i1 %5361, label %5641, label %5274

; <label>:5362                                    ; preds = %5349
  %5363 = fmul fast float %5350, %5308
  %5364 = fmul fast float %5350, %5309
  %5365 = fmul fast float %5350, %5310
  %5366 = fsub fast float %5302, %4419
  %5367 = fcmp fast ogt float %5366, 0.000000e+00
  %5368 = fsub fast float %136, %4419
  %5369 = fcmp fast ogt float %5368, 0.000000e+00
  %5370 = xor i1 %5369, %5367
  %5371 = fsub fast float %4419, %5302
  %5372 = fmul fast float %5371, 2.000000e+00
  %5373 = fadd fast float %5372, %5302
  %5374 = select i1 %5370, float %5302, float %5373
  %5375 = fsub fast float %5374, %136
  %5376 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5375, float %5311, float %5312, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = call float @dx.op.unary.f32(i32 25, float %5376)  ; Rsqrt(value)
  %5378 = fmul fast float %5377, %5311
  %5379 = fmul fast float %5377, %5312
  %5380 = fmul fast float %5377, %5375
  %5381 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4427)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5378, float %5379, float %5380)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = fdiv fast float 1.000000e+00, %5382
  %5384 = fmul fast float %5383, %5381
  %5385 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5368, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = fcmp fast ogt float %5385, 0.000000e+00
  %5387 = fcmp fast olt float %5385, 0.000000e+00
  %5388 = zext i1 %5386 to i32
  %5389 = zext i1 %5387 to i32
  %5390 = sub nsw i32 %5388, %5389
  %5391 = sitofp i32 %5390 to float
  %5392 = fsub fast float %5374, %4419
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5311, float %5312, float %5392, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = fcmp fast ogt float %5393, 0.000000e+00
  %5395 = fcmp fast olt float %5393, 0.000000e+00
  %5396 = zext i1 %5394 to i32
  %5397 = zext i1 %5395 to i32
  %5398 = sub nsw i32 %5396, %5397
  %5399 = sitofp i32 %5398 to float
  %5400 = fcmp fast une float %5391, %5399
  br i1 %5400, label %5401, label %5411

; <label>:5401                                    ; preds = %5362
  %5402 = fmul fast float %5384, %5380
  %5403 = fmul fast float %5384, %5379
  %5404 = fmul fast float %5384, %5378
  %5405 = fmul fast float %5404, %5404
  %5406 = fmul fast float %5403, %5403
  %5407 = fadd fast float %5405, %5406
  %5408 = fmul fast float %5402, %5402
  %5409 = fadd fast float %5407, %5408
  %5410 = call float @dx.op.unary.f32(i32 24, float %5409)  ; Sqrt(value)
  br label %5423

; <label>:5411                                    ; preds = %5362
  %5412 = icmp slt i32 %5390, 0
  br i1 %5412, label %5413, label %5423

; <label>:5413                                    ; preds = %5411
  %5414 = fsub fast float %134, %5300
  %5415 = fsub fast float %135, %5301
  %5416 = fsub fast float %136, %5374
  %5417 = fmul fast float %5414, %5414
  %5418 = fmul fast float %5415, %5415
  %5419 = fadd fast float %5417, %5418
  %5420 = fmul fast float %5416, %5416
  %5421 = fadd fast float %5419, %5420
  %5422 = call float @dx.op.unary.f32(i32 24, float %5421)  ; Sqrt(value)
  br label %5423

; <label>:5423                                    ; preds = %5413, %5411, %5401
  %5424 = phi float [ %5410, %5401 ], [ %5422, %5413 ], [ 0.000000e+00, %5411 ]
  %5425 = and i1 %5369, %5367
  %5426 = fsub fast float -0.000000e+00, %5424
  %5427 = select i1 %5425, float -0.000000e+00, float %5426
  %5428 = fmul fast float %4420, 0x3FF7154760000000
  %5429 = fmul fast float %5428, %5427
  %5430 = fmul fast float %4421, 0x3FF7154760000000
  %5431 = fmul fast float %5430, %5427
  %5432 = fmul fast float %4422, 0x3FF7154760000000
  %5433 = fmul fast float %5432, %5427
  %5434 = call float @dx.op.unary.f32(i32 21, float %5429)  ; Exp(value)
  %5435 = call float @dx.op.unary.f32(i32 21, float %5431)  ; Exp(value)
  %5436 = call float @dx.op.unary.f32(i32 21, float %5433)  ; Exp(value)
  %5437 = call float @dx.op.unary.f32(i32 7, float %5434)  ; Saturate(value)
  %5438 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5439 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5440 = fmul fast float %5363, %5437
  %5441 = fmul fast float %5364, %5438
  %5442 = fmul fast float %5365, %5439
  %5443 = fsub fast float %5317, %4619
  %5444 = fsub fast float %5318, %4618
  %5445 = fsub fast float %5319, %4617
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float %5443, float %5444, float %5445)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = call float @dx.op.unary.f32(i32 25, float %5446)  ; Rsqrt(value)
  %5448 = fmul fast float %5447, %5443
  %5449 = fmul fast float %5447, %5444
  %5450 = fmul fast float %5447, %5445
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5318, float %5319, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4615, float %4614, float %5448, float %5449, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5454 = fmul fast float %5453, %5324
  %5455 = fmul fast float %5453, %5453
  %5456 = fmul fast float %5455, %4646
  %5457 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5458 = fmul fast float %5454, %5457
  %5459 = bitcast float %5314 to i32
  %5460 = ashr i32 %5459, 1
  %5461 = sub nsw i32 1597463007, %5460
  %5462 = bitcast i32 %5461 to float
  %5463 = fmul fast float %5462, %5311
  %5464 = fmul fast float %5462, %5312
  %5465 = fmul fast float %5462, %5313
  %5466 = fsub fast float %5463, %4619
  %5467 = fsub fast float %5464, %4618
  %5468 = fsub fast float %5465, %4617
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5466, float %5467, float %5468, float %5466, float %5467, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = call float @dx.op.unary.f32(i32 25, float %5469)  ; Rsqrt(value)
  %5471 = fmul fast float %5466, %5470
  %5472 = fmul fast float %5467, %5470
  %5473 = fmul fast float %5468, %5470
  %5474 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %5471, float %5472, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = fmul fast float %5474, %5474
  %5476 = call float @dx.op.unary.f32(i32 6, float %5451)  ; FAbs(value)
  %5477 = fsub fast float 1.000000e+00, %4629
  %5478 = call float @dx.op.binary.f32(i32 35, float %5477, float 0x3F847AE140000000)  ; FMax(a,b)
  %5479 = fmul fast float %5478, %5478
  %5480 = fmul fast float %5479, %5479
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = fmul fast float %4633, %4633
  %5483 = fmul fast float %5482, %5481
  %5484 = fadd fast float %5483, %5480
  %5485 = bitcast float %5484 to i32
  %5486 = ashr i32 %5485, 1
  %5487 = add nsw i32 %5486, 532487669
  %5488 = bitcast i32 %5487 to float
  %5489 = fadd fast float %5488, %4633
  %5490 = fmul fast float %5480, %5475
  %5491 = fsub fast float 1.000000e+00, %5475
  %5492 = fadd fast float %5491, %5490
  %5493 = fmul fast float %5476, %5476
  %5494 = fmul fast float %5493, %5481
  %5495 = fadd fast float %5494, %5480
  %5496 = bitcast float %5495 to i32
  %5497 = ashr i32 %5496, 1
  %5498 = add nsw i32 %5497, 532487669
  %5499 = bitcast i32 %5498 to float
  %5500 = fadd fast float %5499, %5476
  %5501 = fmul fast float %5492, %5492
  %5502 = fmul fast float %5501, %5489
  %5503 = fmul fast float %5502, %5500
  %5504 = fdiv fast float 1.000000e+00, %5503
  %5505 = bitcast float %5480 to i32
  %5506 = sitofp i32 %5505 to float
  %5507 = fmul fast float %5506, 0x3FE7F73180000000
  %5508 = fadd fast float %5507, 0x41AFE27C40000000
  %5509 = fptosi float %5508 to i32
  %5510 = bitcast i32 %5509 to float
  %5511 = fmul fast float %5297, 0x3FD80E9D60000000
  %5512 = fmul fast float %5511, %5462
  %5513 = fadd fast float %5510, %5512
  %5514 = bitcast float %5513 to i32
  %5515 = sub nsw i32 2129859010, %5514
  %5516 = bitcast i32 %5515 to float
  %5517 = fmul fast float %5480, %5504
  %5518 = fmul fast float %5517, %5510
  %5519 = fmul fast float %5518, %5516
  %5520 = call float @dx.op.unary.f32(i32 6, float %5452)  ; FAbs(value)
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = bitcast float %5521 to i32
  %5523 = sitofp i32 %5522 to float
  %5524 = fmul fast float %5523, 5.000000e+00
  %5525 = fadd fast float %5524, 0xC1EFBF8940000000
  %5526 = fptosi float %5525 to i32
  %5527 = bitcast i32 %5526 to float
  %5528 = fsub fast float 1.000000e+00, %4626
  %5529 = fsub fast float 1.000000e+00, %4627
  %5530 = fsub fast float 1.000000e+00, %4631
  %5531 = fmul fast float %5527, %5528
  %5532 = fmul fast float %5527, %5529
  %5533 = fmul fast float %5527, %5530
  %5534 = fadd fast float %5531, %4626
  %5535 = fadd fast float %5532, %4627
  %5536 = fadd fast float %5533, %4631
  br i1 %4893, label %5537, label %5560

; <label>:5537                                    ; preds = %5423
  %5538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4018, float %5520, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5542 = fadd fast float %5539, -5.000000e-01
  %5543 = fadd fast float %5540, -5.000000e-01
  %5544 = fadd fast float %5541, -5.000000e-01
  %5545 = fmul fast float %4626, 4.000000e+00
  %5546 = fmul fast float %5545, %5528
  %5547 = fmul fast float %5546, %5542
  %5548 = fmul fast float %4627, 4.000000e+00
  %5549 = fmul fast float %5548, %5529
  %5550 = fmul fast float %5549, %5543
  %5551 = fmul fast float %4631, 4.000000e+00
  %5552 = fmul fast float %5551, %5530
  %5553 = fmul fast float %5552, %5544
  %5554 = fadd fast float %5547, %5534
  %5555 = fadd fast float %5550, %5535
  %5556 = fadd fast float %5553, %5536
  %5557 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  %5559 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  br label %5560

; <label>:5560                                    ; preds = %5537, %5423
  %5561 = phi float [ %5557, %5537 ], [ %5534, %5423 ]
  %5562 = phi float [ %5558, %5537 ], [ %5535, %5423 ]
  %5563 = phi float [ %5559, %5537 ], [ %5536, %5423 ]
  %5564 = fmul fast float %5451, 9.843750e-01
  %5565 = fadd fast float %5564, 7.812500e-03
  %5566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5565, float %4883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5567 = extractvalue %dx.types.ResRet.f32 %5566, 2
  %5568 = extractvalue %dx.types.ResRet.f32 %5566, 3
  %5569 = fmul fast float %5567, %4626
  %5570 = fmul fast float %5567, %4627
  %5571 = fmul fast float %5567, %4631
  %5572 = fadd fast float %5569, %5568
  %5573 = fadd fast float %5570, %5568
  %5574 = fadd fast float %5571, %5568
  br i1 %4893, label %5575, label %5598

; <label>:5575                                    ; preds = %5560
  %5576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4018, float %5451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5577 = extractvalue %dx.types.ResRet.f32 %5576, 0
  %5578 = extractvalue %dx.types.ResRet.f32 %5576, 1
  %5579 = extractvalue %dx.types.ResRet.f32 %5576, 2
  %5580 = fadd fast float %5577, -5.000000e-01
  %5581 = fadd fast float %5578, -5.000000e-01
  %5582 = fadd fast float %5579, -5.000000e-01
  %5583 = fmul fast float %4626, 4.000000e+00
  %5584 = fmul fast float %5583, %5528
  %5585 = fmul fast float %5584, %5580
  %5586 = fmul fast float %4627, 4.000000e+00
  %5587 = fmul fast float %5586, %5529
  %5588 = fmul fast float %5587, %5581
  %5589 = fmul fast float %4631, 4.000000e+00
  %5590 = fmul fast float %5589, %5530
  %5591 = fmul fast float %5590, %5582
  %5592 = fadd fast float %5585, %5572
  %5593 = fadd fast float %5588, %5573
  %5594 = fadd fast float %5591, %5574
  %5595 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5596 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5597 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  br label %5598

; <label>:5598                                    ; preds = %5575, %5560
  %5599 = phi float [ %5595, %5575 ], [ %5572, %5560 ]
  %5600 = phi float [ %5596, %5575 ], [ %5573, %5560 ]
  %5601 = phi float [ %5597, %5575 ], [ %5574, %5560 ]
  %5602 = call float @dx.op.binary.f32(i32 35, float %5600, float %5601)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5599, float %5602)  ; FMax(a,b)
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = fmul fast float %5561, %5519
  %5606 = fmul fast float %5562, %5519
  %5607 = fmul fast float %5563, %5519
  %5608 = fsub fast float 1.000000e+00, %5452
  %5609 = bitcast float %5608 to i32
  %5610 = sitofp i32 %5609 to float
  %5611 = fmul fast float %5610, 5.000000e+00
  %5612 = fadd fast float %5611, 0xC1EFBF8940000000
  %5613 = fptosi float %5612 to i32
  %5614 = bitcast i32 %5613 to float
  %5615 = fmul fast float %5614, %4019
  %5616 = fmul fast float %5604, %5615
  %5617 = fmul fast float %5616, %4943
  %5618 = fmul fast float %5616, %4944
  %5619 = fmul fast float %5616, %4945
  %5620 = fadd fast float %5617, %5605
  %5621 = fadd fast float %5618, %5606
  %5622 = fadd fast float %5619, %5607
  %5623 = fmul fast float %5440, %4015
  %5624 = fmul fast float %5623, %5458
  %5625 = fmul fast float %5624, %5604
  %5626 = fmul fast float %5441, %4015
  %5627 = fmul fast float %5626, %5458
  %5628 = fmul fast float %5627, %5604
  %5629 = fmul fast float %5442, %4015
  %5630 = fmul fast float %5629, %5458
  %5631 = fmul fast float %5630, %5604
  %5632 = fadd fast float %5625, %5279
  %5633 = fadd fast float %5628, %5280
  %5634 = fadd fast float %5631, %5281
  %5635 = fmul fast float %5624, %5620
  %5636 = fmul fast float %5627, %5621
  %5637 = fmul fast float %5630, %5622
  %5638 = fadd fast float %5635, %5276
  %5639 = fadd fast float %5636, %5277
  %5640 = fadd fast float %5637, %5278
  br label %5354

; <label>:5641                                    ; preds = %5354
  br label %5642

; <label>:5642                                    ; preds = %5641, %5242
  %5643 = phi float [ %5244, %5242 ], [ %5355, %5641 ]
  %5644 = phi float [ %5245, %5242 ], [ %5356, %5641 ]
  %5645 = phi float [ %5246, %5242 ], [ %5357, %5641 ]
  %5646 = phi float [ %5247, %5242 ], [ %5358, %5641 ]
  %5647 = phi float [ %5248, %5242 ], [ %5359, %5641 ]
  %5648 = phi float [ %5249, %5242 ], [ %5360, %5641 ]
  %5649 = add i32 %5243, 1
  %5650 = icmp ugt i32 %5649, %5239
  br i1 %5650, label %5651, label %5242

; <label>:5651                                    ; preds = %5642
  br label %5652

; <label>:5652                                    ; preds = %5651, %5218, %5208
  %5653 = phi float [ %5209, %5208 ], [ %5209, %5218 ], [ %5643, %5651 ]
  %5654 = phi float [ %5210, %5208 ], [ %5210, %5218 ], [ %5644, %5651 ]
  %5655 = phi float [ %5211, %5208 ], [ %5211, %5218 ], [ %5645, %5651 ]
  %5656 = phi float [ %5212, %5208 ], [ %5212, %5218 ], [ %5646, %5651 ]
  %5657 = phi float [ %5213, %5208 ], [ %5213, %5218 ], [ %5647, %5651 ]
  %5658 = phi float [ %5214, %5208 ], [ %5214, %5218 ], [ %5648, %5651 ]
  %5659 = call float @dx.op.unary.f32(i32 24, float %4620)  ; Sqrt(value)
  %5660 = call float @dx.op.unary.f32(i32 24, float %4621)  ; Sqrt(value)
  %5661 = call float @dx.op.unary.f32(i32 24, float %4622)  ; Sqrt(value)
  %5662 = fmul fast float %5659, %5656
  %5663 = fmul fast float %5660, %5657
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 0
  br i1 %176, label %5666, label %5686

; <label>:5666                                    ; preds = %5652
  %5667 = fadd fast float %5658, %4021
  %5668 = fmul fast float %5667, %4022
  %5669 = fsub fast float 1.000000e+00, %4022
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5671, 3
  %5673 = fmul fast float %5672, %5670
  %5674 = fadd fast float %5673, %5668
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  %5677 = fmul fast float %5676, %4949
  %5678 = fsub fast float %5674, %5677
  %5679 = fadd fast float %5663, %5662
  %5680 = fmul fast float %5665, %5679
  %5681 = extractvalue %dx.types.CBufRet.f32 %5671, 1
  %5682 = fsub fast float %5678, %5681
  %5683 = extractvalue %dx.types.CBufRet.f32 %5671, 2
  %5684 = fmul fast float %5682, %5683
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  br label %5702

; <label>:5686                                    ; preds = %5652
  %5687 = fmul fast float %5661, %5658
  %5688 = fmul fast float %5665, %5662
  %5689 = fmul fast float %5665, %5663
  %5690 = fmul fast float %5687, %5665
  %5691 = add i32 %35, 356
  %5692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5691, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.i32 %5692, 0
  %5694 = and i32 %5693, 32
  %5695 = icmp eq i32 %5694, 0
  br i1 %5695, label %5702, label %5696

; <label>:5696                                    ; preds = %5686
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = fmul fast float %5698, 0x3FE99999A0000000
  %5700 = fadd fast float %5698, %5688
  %5701 = fadd fast float %5699, %5690
  br label %5702

; <label>:5702                                    ; preds = %5696, %5686, %5666
  %5703 = phi float [ %5680, %5666 ], [ %5700, %5696 ], [ %5688, %5686 ]
  %5704 = phi float [ %5685, %5666 ], [ %5689, %5696 ], [ %5689, %5686 ]
  %5705 = phi float [ 1.000000e+00, %5666 ], [ %5701, %5696 ], [ %5690, %5686 ]
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %5708 = fmul fast float %5707, %5654
  %5709 = fmul fast float %5707, %5655
  %5710 = fadd fast float %5654, %5653
  %5711 = select i1 %176, float %5710, float %5653
  %5712 = fmul float %5711, %5707
  %5713 = select i1 %176, float 0.000000e+00, float %5708
  %5714 = select i1 %176, float 0.000000e+00, float %5709
  %5715 = fmul fast float %5703, %5659
  %5716 = fmul fast float %5704, %5660
  %5717 = fmul fast float %5705, %5661
  %5718 = fadd fast float %5712, %5715
  %5719 = fadd fast float %5713, %5716
  %5720 = fadd fast float %5714, %5717
  %5721 = select i1 %176, float %5704, float %5719
  %5722 = select i1 %176, float %5705, float %5720
  %5723 = call float @dx.op.binary.f32(i32 36, float %5718, float 3.225500e+04)  ; FMin(a,b)
  %5724 = call float @dx.op.binary.f32(i32 36, float %5721, float 3.225500e+04)  ; FMin(a,b)
  %5725 = call float @dx.op.binary.f32(i32 36, float %5722, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5723)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5724)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5725)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

