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
; shader hash: 7a78daebc387d6d96882d3de69027635
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
  %359 = add i32 %35, 564
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
  br i1 %412, label %854, label %413

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
  %540 = add i32 %35, 532
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

; <label>:854                                     ; preds = %844, %806, %398
  %855 = phi float [ 0.000000e+00, %398 ], [ %808, %806 ], [ %808, %844 ]
  %856 = phi float [ 0.000000e+00, %398 ], [ %809, %806 ], [ %809, %844 ]
  %857 = phi float [ 0.000000e+00, %398 ], [ %727, %806 ], [ %727, %844 ]
  %858 = phi float [ 0.000000e+00, %398 ], [ %728, %806 ], [ %728, %844 ]
  %859 = phi float [ 0.000000e+00, %398 ], [ %729, %806 ], [ %729, %844 ]
  %860 = phi float [ 0.000000e+00, %398 ], [ 0.000000e+00, %806 ], [ %851, %844 ]
  %861 = phi float [ 0.000000e+00, %398 ], [ 0.000000e+00, %806 ], [ %852, %844 ]
  %862 = phi float [ 0.000000e+00, %398 ], [ 0.000000e+00, %806 ], [ %853, %844 ]
  %863 = phi float [ 0.000000e+00, %398 ], [ %713, %806 ], [ %713, %844 ]
  %864 = phi float [ 0.000000e+00, %398 ], [ 1.000000e+00, %806 ], [ 1.000000e+00, %844 ]
  %865 = phi float [ 0.000000e+00, %398 ], [ %807, %806 ], [ %807, %844 ]
  %866 = phi float [ 0.000000e+00, %398 ], [ %810, %806 ], [ %810, %844 ]
  br i1 %349, label %1691, label %867

; <label>:867                                     ; preds = %854
  %868 = icmp ult i32 %404, 2
  %869 = add i32 %35, 40
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = add i32 %35, 44
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = or i32 %874, %871
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %1691, label %877

; <label>:877                                     ; preds = %867
  %878 = and i32 %871, 262144
  %879 = icmp ne i32 %878, 0
  %880 = select i1 %879, float %38, float 1.000000e+00
  %881 = select i1 %879, float %39, float 0.000000e+00
  %882 = select i1 %879, float %40, float 0.000000e+00
  %883 = select i1 %879, float %41, float 1.000000e+00
  %884 = select i1 %879, float %42, float %63
  %885 = select i1 %879, float %43, float %64
  %886 = add i32 %35, 300
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = lshr i32 %888, 16
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = fmul fast float %890, 0x3F50624DE0000000
  %892 = add i32 %35, 104
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = lshr i32 %894, 16
  %896 = and i32 %895, 255
  %897 = lshr i32 %894, 24
  %898 = add i32 %35, 308
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 65535
  %902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %901)  ; LegacyF16ToF32(value)
  %903 = lshr i32 %900, 16
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = add i32 %35, 48
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 22
  %909 = shl nuw nsw i32 %908, 5
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = shl i32 %907, 4
  %912 = and i32 %911, 32752
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = lshr i32 %907, 7
  %915 = and i32 %914, 32752
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %919 = fmul fast float %918, 1.000000e+03
  %920 = fmul fast float %259, %919
  %921 = call float @dx.op.unary.f32(i32 22, float %920)  ; Frc(value)
  %922 = fadd fast float %921, %249
  %923 = fmul fast float %260, %919
  %924 = call float @dx.op.unary.f32(i32 22, float %923)  ; Frc(value)
  %925 = fadd fast float %924, %251
  %926 = fmul fast float %891, %919
  %927 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %928 = fmul fast float %927, 0x401921FB60000000
  %929 = fadd fast float %928, %910
  %930 = call float @dx.op.unary.f32(i32 13, float %929)  ; Sin(value)
  %931 = call float @dx.op.unary.f32(i32 12, float %929)  ; Cos(value)
  %932 = fsub fast float -0.000000e+00, %930
  %933 = fadd fast float %884, -5.000000e-01
  %934 = fadd fast float %885, -5.000000e-01
  %935 = fmul fast float %902, %933
  %936 = fmul fast float %904, %934
  %937 = fadd fast float %935, 5.000000e-01
  %938 = fadd fast float %936, 5.000000e-01
  %939 = fmul fast float %913, %937
  %940 = fmul fast float %916, %938
  %941 = fmul fast float %931, %939
  %942 = call float @dx.op.tertiary.f32(i32 46, float %932, float %940, float %941)  ; FMad(a,b,c)
  %943 = fmul fast float %930, %939
  %944 = call float @dx.op.tertiary.f32(i32 46, float %931, float %940, float %943)  ; FMad(a,b,c)
  %945 = fadd fast float %922, %942
  %946 = fadd fast float %925, %944
  %947 = icmp ugt i32 %896, 1
  %948 = icmp ugt i32 %894, 33554431
  %949 = or i1 %948, %947
  br i1 %949, label %950, label %975

; <label>:950                                     ; preds = %877
  %951 = add i32 %35, 244
  %952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %951, i32 undef)  ; BufferLoad(srv,index,wot)
  %953 = extractvalue %dx.types.ResRet.i32 %952, 0
  %954 = lshr i32 %953, 16
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = fmul fast float %918, %955
  %957 = call float @dx.op.unary.f32(i32 22, float %956)  ; Frc(value)
  %958 = mul nuw nsw i32 %896, %897
  %959 = uitofp i32 %958 to float
  %960 = fmul fast float %957, %959
  %961 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %962 = fptoui float %961 to i32
  %963 = urem i32 %962, %896
  %964 = udiv i32 %962, %897
  %965 = call float @dx.op.unary.f32(i32 22, float %945)  ; Frc(value)
  %966 = call float @dx.op.unary.f32(i32 22, float %946)  ; Frc(value)
  %967 = uitofp i32 %963 to float
  %968 = uitofp i32 %964 to float
  %969 = fadd fast float %965, %967
  %970 = fadd fast float %966, %968
  %971 = uitofp i32 %896 to float
  %972 = uitofp i32 %897 to float
  %973 = fdiv fast float %969, %971
  %974 = fdiv fast float %970, %972
  br label %975

; <label>:975                                     ; preds = %950, %877
  %976 = phi float [ %973, %950 ], [ %945, %877 ]
  %977 = phi float [ %974, %950 ], [ %946, %877 ]
  %978 = and i32 %871, 16777216
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %1089, label %980

; <label>:980                                     ; preds = %975
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %985 = fadd fast float %982, %134
  %986 = fadd fast float %983, %135
  %987 = fadd fast float %984, %136
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 0
  %990 = call float @dx.op.unary.f32(i32 7, float %989)  ; Saturate(value)
  %991 = icmp eq i32 %36, 65535
  br i1 %991, label %1086, label %992

; <label>:992                                     ; preds = %980
  %993 = lshr i32 %36, 1
  %994 = shl i32 %993, 2
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %36, 1
  %998 = icmp ne i32 %997, 0
  %999 = lshr i32 %996, 16
  %1000 = and i32 %996, 65535
  %1001 = select i1 %998, i32 %999, i32 %1000
  %1002 = icmp eq i32 %1001, 65535
  br i1 %1002, label %1082, label %1003

; <label>:1003                                    ; preds = %992
  %1004 = mul nuw nsw i32 %1001, 40
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = add nuw nsw i32 %1004, 12
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = add nuw nsw i32 %1004, 24
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = add nuw nsw i32 %1004, 36
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = fsub fast float %985, %1006
  %1023 = fsub fast float %986, %1007
  %1024 = fsub fast float %987, %1008
  %1025 = fmul fast float %1021, %1022
  %1026 = fmul fast float %1021, %1023
  %1027 = fmul fast float %1021, %1024
  %1028 = call float @dx.op.unary.f32(i32 27, float %1025)  ; Round_ni(value)
  %1029 = call float @dx.op.unary.f32(i32 27, float %1026)  ; Round_ni(value)
  %1030 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1031 = fadd fast float %1028, 5.000000e-01
  %1032 = fadd fast float %1029, 5.000000e-01
  %1033 = fadd fast float %1030, 5.000000e-01
  %1034 = fmul fast float %1031, %1011
  %1035 = fmul fast float %1032, %1012
  %1036 = fmul fast float %1033, %1013
  %1037 = shl i32 %36, 2
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = add i32 %1039, 0
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1043 = call float @dx.op.unary.f32(i32 22, float %1035)  ; Frc(value)
  %1044 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1041, %dx.types.Handle %30, float %1042, float %1043, float %1044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = fmul fast float %1046, 1.023000e+03
  %1050 = fmul fast float %1047, 1.023000e+03
  %1051 = fmul fast float %1048, 1.023000e+03
  %1052 = fadd fast float %1049, 5.000000e-01
  %1053 = fadd fast float %1050, 5.000000e-01
  %1054 = fadd fast float %1051, 5.000000e-01
  %1055 = call float @dx.op.unary.f32(i32 27, float %1052)  ; Round_ni(value)
  %1056 = call float @dx.op.unary.f32(i32 27, float %1053)  ; Round_ni(value)
  %1057 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1058 = fsub fast float %1025, %1028
  %1059 = fsub fast float %1026, %1029
  %1060 = fsub fast float %1027, %1030
  %1061 = fmul fast float %1058, 7.500000e-01
  %1062 = fmul fast float %1059, 7.500000e-01
  %1063 = fmul fast float %1060, 7.500000e-01
  %1064 = fadd fast float %1028, 1.250000e-01
  %1065 = fadd fast float %1064, %1061
  %1066 = fadd fast float %1065, %1055
  %1067 = fadd fast float %1029, 1.250000e-01
  %1068 = fadd fast float %1067, %1062
  %1069 = fadd fast float %1068, %1056
  %1070 = fadd fast float %1030, 1.250000e-01
  %1071 = fadd fast float %1070, %1063
  %1072 = fadd fast float %1071, %1057
  %1073 = fmul fast float %1066, %1016
  %1074 = fmul fast float %1069, %1017
  %1075 = fmul fast float %1072, %1018
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %1077, 0
  %1079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1079, %dx.types.Handle %28, float %1073, float %1074, float %1075, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  br label %1082

; <label>:1082                                    ; preds = %1003, %992
  %1083 = phi float [ %1081, %1003 ], [ -1.000000e+00, %992 ]
  %1084 = fadd fast float %1083, %990
  %1085 = call float @dx.op.unary.f32(i32 7, float %1084)  ; Saturate(value)
  br label %1086

; <label>:1086                                    ; preds = %1082, %980
  %1087 = phi float [ %1085, %1082 ], [ %990, %980 ]
  %1088 = fmul fast float %1087, %401
  br label %1089

; <label>:1089                                    ; preds = %1086, %975
  %1090 = phi float [ %1088, %1086 ], [ %401, %975 ]
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = and i32 %1092, 256
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1141, label %1095

; <label>:1095                                    ; preds = %1089
  %1096 = add i32 %35, 508
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1096, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = add i32 %1098, 0
  %1100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1099, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1101 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1100, %dx.types.Handle %72, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = add i32 %35, 116
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = shl i32 %1105, 4
  %1107 = and i32 %1106, 32752
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = lshr i32 %1105, 7
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = fsub fast float 1.000000e+00, %1090
  %1113 = call float @dx.op.binary.f32(i32 35, float %1112, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1114 = bitcast float %1090 to i32
  %1115 = sitofp i32 %1114 to float
  %1116 = fadd fast float %1115, 0xC1CFBF8940000000
  %1117 = fmul fast float %1111, %1116
  %1118 = fadd fast float %1117, 0x41CFBF8940000000
  %1119 = fptosi float %1118 to i32
  %1120 = bitcast i32 %1119 to float
  %1121 = bitcast float %1113 to i32
  %1122 = sitofp i32 %1121 to float
  %1123 = fadd fast float %1122, 0xC1CFBF8940000000
  %1124 = fmul fast float %1123, %1111
  %1125 = fadd fast float %1124, 0x41CFBF8940000000
  %1126 = fptosi float %1125 to i32
  %1127 = bitcast i32 %1126 to float
  %1128 = fmul fast float %1120, %1108
  %1129 = fmul fast float %1127, %1108
  %1130 = fsub fast float %1113, %1128
  %1131 = fadd fast float %1129, %1113
  %1132 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  %1133 = call float @dx.op.unary.f32(i32 7, float %1131)  ; Saturate(value)
  %1134 = fsub fast float %1102, %1132
  %1135 = fsub fast float %1133, %1132
  %1136 = bitcast float %1135 to i32
  %1137 = sub nsw i32 2129859010, %1136
  %1138 = bitcast i32 %1137 to float
  %1139 = fmul fast float %1138, %1134
  %1140 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  br label %1141

; <label>:1141                                    ; preds = %1095, %1089
  %1142 = phi float [ %1140, %1095 ], [ %1090, %1089 ]
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = and i32 %1144, 128
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1163, label %1147

; <label>:1147                                    ; preds = %1141
  %1148 = add i32 %35, 492
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1148, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = add i32 %1150, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1152, %dx.types.Handle %72, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 524288
  %1158 = icmp ne i32 %1157, 0
  %1159 = fcmp fast ogt float %1154, 0x3FE0101020000000
  %1160 = select i1 %1159, float 1.000000e+00, float 0.000000e+00
  %1161 = select i1 %1158, float %1160, float %1154
  %1162 = fmul fast float %1161, %1142
  br label %1163

; <label>:1163                                    ; preds = %1147, %1141
  %1164 = phi float [ %1162, %1147 ], [ %1142, %1141 ]
  %1165 = fcmp fast ult float %1164, 0x3F70101020000000
  br i1 %1165, label %1691, label %1166

; <label>:1166                                    ; preds = %1163
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 16
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1369, label %1171

; <label>:1171                                    ; preds = %1166
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = add i32 %35, 444
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %1176, 0
  %1178 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1177, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1179 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1178, %dx.types.Handle %71, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1180 = extractvalue %dx.types.ResRet.f32 %1179, 0
  %1181 = extractvalue %dx.types.ResRet.f32 %1179, 1
  %1182 = extractvalue %dx.types.ResRet.f32 %1179, 2
  %1183 = extractvalue %dx.types.ResRet.f32 %1179, 3
  %1184 = and i32 %1173, 255
  %1185 = uitofp i32 %1184 to float
  %1186 = lshr i32 %1173, 8
  %1187 = and i32 %1186, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = fmul fast float %1183, %1185
  %1190 = fadd fast float %1189, %1188
  %1191 = fmul fast float %1190, 0x3F70101000000000
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 512
  %1195 = icmp eq i32 %1194, 0
  br i1 %1195, label %1204, label %1196

; <label>:1196                                    ; preds = %1171
  %1197 = add i32 %35, 536
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = add i32 %1199, 0
  %1201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1201, %dx.types.Handle %72, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1203 = extractvalue %dx.types.ResRet.f32 %1202, 0
  br label %1204

; <label>:1204                                    ; preds = %1196, %1171
  %1205 = phi float [ %1203, %1196 ], [ 1.000000e+00, %1171 ]
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 33554432
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1316, label %1210

; <label>:1210                                    ; preds = %1204
  %1211 = add i32 %35, 240
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 65535
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = lshr i32 %1213, 16
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = add i32 %35, 244
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = and i32 %1220, 65535
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = lshr i32 %1224, 24
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1226, 0x3F70101020000000
  %1228 = and i32 %1224, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = lshr i32 %1224, 8
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = lshr i32 %1224, 16
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = add i32 %35, 236
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = lshr i32 %1241, 24
  %1243 = uitofp i32 %1242 to float
  %1244 = fmul fast float %1243, 0x3F70101020000000
  %1245 = and i32 %1241, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = lshr i32 %1241, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = lshr i32 %1241, 16
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1254, 0x3F70101020000000
  %1256 = bitcast float %1180 to i32
  %1257 = ashr i32 %1256, 1
  %1258 = sub nsw i32 1597463174, %1257
  %1259 = bitcast i32 %1258 to float
  %1260 = fmul fast float %1180, 5.000000e-01
  %1261 = fmul fast float %1259, %1259
  %1262 = fmul fast float %1261, %1260
  %1263 = fsub fast float 1.500000e+00, %1262
  %1264 = fmul fast float %1259, %1180
  %1265 = fmul fast float %1264, %1263
  %1266 = bitcast float %1181 to i32
  %1267 = ashr i32 %1266, 1
  %1268 = sub nsw i32 1597463174, %1267
  %1269 = bitcast i32 %1268 to float
  %1270 = fmul fast float %1181, 5.000000e-01
  %1271 = fmul fast float %1269, %1269
  %1272 = fmul fast float %1271, %1270
  %1273 = fsub fast float 1.500000e+00, %1272
  %1274 = fmul fast float %1269, %1181
  %1275 = fmul fast float %1274, %1273
  %1276 = bitcast float %1182 to i32
  %1277 = ashr i32 %1276, 1
  %1278 = sub nsw i32 1597463174, %1277
  %1279 = bitcast i32 %1278 to float
  %1280 = fmul fast float %1182, 5.000000e-01
  %1281 = fmul fast float %1279, %1279
  %1282 = fmul fast float %1281, %1280
  %1283 = fsub fast float 1.500000e+00, %1282
  %1284 = fmul fast float %1279, %1182
  %1285 = fmul fast float %1284, %1283
  %1286 = fsub fast float %1265, %1247
  %1287 = fsub fast float %1275, %1251
  %1288 = fsub fast float %1285, %1255
  %1289 = fmul fast float %1286, %1215
  %1290 = fmul fast float %1287, %1217
  %1291 = fmul fast float %1288, %1222
  %1292 = fadd fast float %1289, %1230
  %1293 = fadd fast float %1290, %1234
  %1294 = fadd fast float %1291, %1238
  %1295 = call float @dx.op.unary.f32(i32 7, float %1292)  ; Saturate(value)
  %1296 = call float @dx.op.unary.f32(i32 7, float %1293)  ; Saturate(value)
  %1297 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1298 = fmul fast float %1295, %1295
  %1299 = fmul fast float %1296, %1296
  %1300 = fmul fast float %1297, %1297
  %1301 = fsub fast float %1298, %1180
  %1302 = fsub fast float %1299, %1181
  %1303 = fsub fast float %1300, %1182
  %1304 = fmul fast float %1301, %1205
  %1305 = fmul fast float %1302, %1205
  %1306 = fmul fast float %1303, %1205
  %1307 = fadd fast float %1304, %1180
  %1308 = fadd fast float %1305, %1181
  %1309 = fadd fast float %1306, %1182
  %1310 = fadd fast float %1227, %1191
  %1311 = fsub fast float %1310, %1244
  %1312 = call float @dx.op.unary.f32(i32 7, float %1311)  ; Saturate(value)
  %1313 = fsub fast float %1312, %1191
  %1314 = fmul fast float %1313, %1205
  %1315 = fadd fast float %1314, %1191
  br label %1369

; <label>:1316                                    ; preds = %1204
  %1317 = and i32 %1207, 134217728
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1353, label %1319

; <label>:1319                                    ; preds = %1316
  %1320 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1321 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1322 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1323 = fadd fast float %1320, -5.000000e-01
  %1324 = fadd fast float %1321, -5.000000e-01
  %1325 = fadd fast float %1322, -5.000000e-01
  %1326 = fmul fast float %1323, %1205
  %1327 = fmul fast float %1324, %1205
  %1328 = fmul fast float %1325, %1205
  %1329 = fadd fast float %1326, 5.000000e-01
  %1330 = fadd fast float %1327, 5.000000e-01
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = call float @dx.op.unary.f32(i32 24, float %1180)  ; Sqrt(value)
  %1333 = call float @dx.op.unary.f32(i32 24, float %1181)  ; Sqrt(value)
  %1334 = call float @dx.op.unary.f32(i32 24, float %1182)  ; Sqrt(value)
  %1335 = fmul fast float %1329, 2.000000e+00
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = fmul fast float %1336, %1332
  %1338 = fadd fast float %1337, %1335
  %1339 = fmul fast float %1338, %1332
  %1340 = fmul fast float %1330, 2.000000e+00
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = fmul fast float %1341, %1333
  %1343 = fadd fast float %1342, %1340
  %1344 = fmul fast float %1343, %1333
  %1345 = fmul fast float %1331, 2.000000e+00
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = fmul fast float %1346, %1334
  %1348 = fadd fast float %1347, %1345
  %1349 = fmul fast float %1348, %1334
  %1350 = fmul fast float %1339, %1339
  %1351 = fmul fast float %1344, %1344
  %1352 = fmul fast float %1349, %1349
  br label %1369

; <label>:1353                                    ; preds = %1316
  %1354 = fmul fast float %236, %236
  %1355 = fmul fast float %240, %240
  %1356 = fmul fast float %244, %244
  %1357 = fadd fast float %1354, -1.000000e+00
  %1358 = fadd fast float %1355, -1.000000e+00
  %1359 = fadd fast float %1356, -1.000000e+00
  %1360 = fmul fast float %1205, %1357
  %1361 = fmul fast float %1205, %1358
  %1362 = fmul fast float %1205, %1359
  %1363 = fadd fast float %1360, 1.000000e+00
  %1364 = fadd fast float %1361, 1.000000e+00
  %1365 = fadd fast float %1362, 1.000000e+00
  %1366 = fmul fast float %1363, %1180
  %1367 = fmul fast float %1364, %1181
  %1368 = fmul fast float %1365, %1182
  br label %1369

; <label>:1369                                    ; preds = %1353, %1319, %1210, %1166
  %1370 = phi float [ %1315, %1210 ], [ %1191, %1319 ], [ %1191, %1353 ], [ 0x3FA23C0BE0000000, %1166 ]
  %1371 = phi float [ %1307, %1210 ], [ %1350, %1319 ], [ %1366, %1353 ], [ 1.000000e+00, %1166 ]
  %1372 = phi float [ %1308, %1210 ], [ %1351, %1319 ], [ %1367, %1353 ], [ 1.000000e+00, %1166 ]
  %1373 = phi float [ %1309, %1210 ], [ %1352, %1319 ], [ %1368, %1353 ], [ 1.000000e+00, %1166 ]
  %1374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1375 = extractvalue %dx.types.CBufRet.i32 %1374, 1
  %1376 = and i32 %1375, 1
  %1377 = icmp ne i32 %1376, 0
  %1378 = add i32 %35, 356
  %1379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.i32 %1379, 0
  %1381 = and i32 %1380, 32
  %1382 = icmp ne i32 %1381, 0
  %1383 = and i1 %1377, %1382
  %1384 = select i1 %1383, float 1.000000e+00, float %1371
  %1385 = select i1 %1383, float 0x3FD3333340000000, float %1372
  %1386 = select i1 %1383, float 0x3FD3333340000000, float %1373
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = and i32 %1388, 32
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1463, label %1391

; <label>:1391                                    ; preds = %1369
  %1392 = add i32 %35, 108
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = add i32 %35, 460
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %1397, 0
  %1399 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1398, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1400 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1399, %dx.types.Handle %71, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1401 = extractvalue %dx.types.ResRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.ResRet.f32 %1400, 1
  %1403 = extractvalue %dx.types.ResRet.f32 %1400, 2
  %1404 = extractvalue %dx.types.ResRet.f32 %1400, 3
  %1405 = and i32 %1394, 255
  %1406 = uitofp i32 %1405 to float
  %1407 = lshr i32 %1394, 8
  %1408 = and i32 %1407, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = lshr i32 %1394, 16
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1412, 0x3F70101000000000
  %1414 = fmul fast float %1401, %1406
  %1415 = fadd fast float %1414, %1409
  %1416 = fmul fast float %1415, 0x3F70101000000000
  %1417 = fadd fast float %1402, -5.000000e-01
  %1418 = fadd fast float %1404, -5.000000e-01
  %1419 = fmul fast float %1417, %1413
  %1420 = fmul fast float %1418, %1413
  %1421 = fadd fast float %1419, 5.000000e-01
  %1422 = fadd fast float %1420, 5.000000e-01
  %1423 = fmul fast float %1421, 2.000000e+00
  %1424 = fadd fast float %1423, -1.000000e+00
  %1425 = fmul fast float %1422, 2.000000e+00
  %1426 = fadd fast float %1425, -1.000000e+00
  %1427 = fadd fast float %1424, %1426
  %1428 = fmul fast float %1427, 5.000000e-01
  %1429 = fsub fast float %1424, %1426
  %1430 = fmul fast float %1429, 5.000000e-01
  %1431 = call float @dx.op.unary.f32(i32 6, float %1428)  ; FAbs(value)
  %1432 = fsub fast float 1.000000e+00, %1431
  %1433 = call float @dx.op.unary.f32(i32 6, float %1430)  ; FAbs(value)
  %1434 = fsub fast float %1432, %1433
  %1435 = call float @dx.op.dot3.f32(i32 55, float %1428, float %1430, float %1434, float %1428, float %1430, float %1434)  ; Dot3(ax,ay,az,bx,by,bz)
  %1436 = call float @dx.op.unary.f32(i32 25, float %1435)  ; Rsqrt(value)
  %1437 = fmul fast float %1428, %1436
  %1438 = fmul fast float %1430, %1436
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 67108864
  %1442 = icmp eq i32 %1441, 0
  br i1 %1442, label %1459, label %1443

; <label>:1443                                    ; preds = %1391
  %1444 = add i32 %35, 296
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 65535
  %1448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1447)  ; LegacyF16ToF32(value)
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 65535
  %1452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1451)  ; LegacyF16ToF32(value)
  %1453 = lshr i32 %1446, 16
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = fsub fast float %1416, %1454
  %1456 = fmul fast float %1455, %1448
  %1457 = fadd fast float %1456, %1452
  %1458 = call float @dx.op.unary.f32(i32 7, float %1457)  ; Saturate(value)
  br label %1459

; <label>:1459                                    ; preds = %1443, %1391
  %1460 = phi float [ %1458, %1443 ], [ %1416, %1391 ]
  %1461 = call float @dx.op.dot2.f32(i32 54, float %1437, float %1438, float %880, float %881)  ; Dot2(ax,ay,bx,by)
  %1462 = call float @dx.op.dot2.f32(i32 54, float %1437, float %1438, float %882, float %883)  ; Dot2(ax,ay,bx,by)
  br label %1463

; <label>:1463                                    ; preds = %1459, %1369
  %1464 = phi float [ %1460, %1459 ], [ 0x3FD6666660000000, %1369 ]
  %1465 = phi float [ %1461, %1459 ], [ 0.000000e+00, %1369 ]
  %1466 = phi float [ %1462, %1459 ], [ 0.000000e+00, %1369 ]
  %1467 = phi float [ %1403, %1459 ], [ 1.000000e+00, %1369 ]
  %1468 = add i32 %35, 176
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = lshr i32 %1470, 22
  %1472 = shl nuw nsw i32 %1471, 5
  %1473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1472)  ; LegacyF16ToF32(value)
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 64
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1511, label %1478

; <label>:1478                                    ; preds = %1463
  %1479 = add i32 %35, 476
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = add i32 %1481, 0
  %1483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 131072
  %1487 = icmp eq i32 %1486, 0
  %1488 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1483, %dx.types.Handle %71, float %976, float %977, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1489 = extractvalue %dx.types.ResRet.f32 %1488, 0
  %1490 = extractvalue %dx.types.ResRet.f32 %1488, 1
  %1491 = extractvalue %dx.types.ResRet.f32 %1488, 2
  %1492 = fmul fast float %1489, %224
  %1493 = fmul fast float %1490, %227
  %1494 = fmul fast float %1491, %230
  br i1 %1487, label %1501, label %1495

; <label>:1495                                    ; preds = %1478
  %1496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1497 = extractvalue %dx.types.CBufRet.f32 %1496, 0
  %1498 = fmul fast float %1497, %1492
  %1499 = fmul fast float %1497, %1493
  %1500 = fmul fast float %1497, %1494
  br label %1501

; <label>:1501                                    ; preds = %1495, %1478
  %1502 = phi float [ %1498, %1495 ], [ %1492, %1478 ]
  %1503 = phi float [ %1499, %1495 ], [ %1493, %1478 ]
  %1504 = phi float [ %1500, %1495 ], [ %1494, %1478 ]
  %1505 = fmul fast float %1502, %1473
  %1506 = select i1 %176, float %1505, float %1502
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1506, float %1503, float %1504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = select i1 %176, float 0.000000e+00, float %1502
  %1509 = select i1 %176, float %1507, float %1503
  %1510 = select i1 %176, float 0.000000e+00, float %1504
  br label %1511

; <label>:1511                                    ; preds = %1501, %1463
  %1512 = phi float [ %1508, %1501 ], [ 0.000000e+00, %1463 ]
  %1513 = phi float [ %1509, %1501 ], [ 0.000000e+00, %1463 ]
  %1514 = phi float [ %1510, %1501 ], [ 0.000000e+00, %1463 ]
  br i1 %868, label %1515, label %1523

; <label>:1515                                    ; preds = %1511
  %1516 = fsub fast float 1.000000e+00, %1164
  %1517 = fmul fast float %1516, %857
  %1518 = fmul fast float %1516, %858
  %1519 = fmul fast float %1516, %859
  %1520 = fmul fast float %1516, %860
  %1521 = fmul fast float %1516, %861
  %1522 = fmul fast float %1516, %862
  br label %1523

; <label>:1523                                    ; preds = %1515, %1511
  %1524 = phi float [ %1517, %1515 ], [ %857, %1511 ]
  %1525 = phi float [ %1518, %1515 ], [ %858, %1511 ]
  %1526 = phi float [ %1519, %1515 ], [ %859, %1511 ]
  %1527 = phi float [ %1520, %1515 ], [ %860, %1511 ]
  %1528 = phi float [ %1521, %1515 ], [ %861, %1511 ]
  %1529 = phi float [ %1522, %1515 ], [ %862, %1511 ]
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 3
  %1533 = icmp eq i32 %1532, 3
  br i1 %1533, label %1609, label %1534

; <label>:1534                                    ; preds = %1523
  %1535 = and i32 %1531, 16
  %1536 = icmp ne i32 %1535, 0
  %1537 = select i1 %1536, float %1164, float 0.000000e+00
  %1538 = icmp eq i32 %1532, 0
  br i1 %1538, label %1539, label %1564

; <label>:1539                                    ; preds = %1534
  %1540 = and i32 %1531, 64
  %1541 = icmp ne i32 %1540, 0
  %1542 = select i1 %1541, float %1164, float 0.000000e+00
  %1543 = fsub fast float %1384, %1524
  %1544 = fsub fast float %1385, %1525
  %1545 = fsub fast float %1386, %1526
  %1546 = fmul fast float %1537, %1543
  %1547 = fmul fast float %1537, %1544
  %1548 = fmul fast float %1537, %1545
  %1549 = fadd fast float %1546, %1524
  %1550 = fadd fast float %1547, %1525
  %1551 = fadd fast float %1548, %1526
  %1552 = fsub fast float %1370, %863
  %1553 = fmul fast float %1537, %1552
  %1554 = fadd fast float %1553, %863
  %1555 = fsub fast float %1512, %1527
  %1556 = fsub fast float %1513, %1528
  %1557 = fsub fast float %1514, %1529
  %1558 = fmul fast float %1542, %1555
  %1559 = fmul fast float %1542, %1556
  %1560 = fmul fast float %1542, %1557
  %1561 = fadd fast float %1558, %1527
  %1562 = fadd fast float %1559, %1528
  %1563 = fadd fast float %1560, %1529
  br label %1609

; <label>:1564                                    ; preds = %1534
  %1565 = icmp eq i32 %1532, 1
  br i1 %1565, label %1566, label %1579

; <label>:1566                                    ; preds = %1564
  %1567 = fadd fast float %1384, -1.000000e+00
  %1568 = fadd fast float %1385, -1.000000e+00
  %1569 = fadd fast float %1386, -1.000000e+00
  %1570 = fmul fast float %1537, %1567
  %1571 = fmul fast float %1537, %1568
  %1572 = fmul fast float %1537, %1569
  %1573 = fadd fast float %1570, 1.000000e+00
  %1574 = fadd fast float %1571, 1.000000e+00
  %1575 = fadd fast float %1572, 1.000000e+00
  %1576 = fmul fast float %1573, %1524
  %1577 = fmul fast float %1574, %1525
  %1578 = fmul fast float %1575, %1526
  br label %1609

; <label>:1579                                    ; preds = %1564
  %1580 = icmp eq i32 %1532, 2
  br i1 %1580, label %1581, label %1609

; <label>:1581                                    ; preds = %1579
  %1582 = call float @dx.op.unary.f32(i32 24, float %1384)  ; Sqrt(value)
  %1583 = call float @dx.op.unary.f32(i32 24, float %1385)  ; Sqrt(value)
  %1584 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1585 = fadd fast float %1582, -5.000000e-01
  %1586 = fadd fast float %1583, -5.000000e-01
  %1587 = fadd fast float %1584, -5.000000e-01
  %1588 = fmul fast float %1585, %1537
  %1589 = fmul fast float %1586, %1537
  %1590 = fmul fast float %1587, %1537
  %1591 = fadd fast float %1588, 5.000000e-01
  %1592 = fadd fast float %1589, 5.000000e-01
  %1593 = fadd fast float %1590, 5.000000e-01
  %1594 = fmul fast float %1591, 2.000000e+00
  %1595 = fsub fast float 1.000000e+00, %1594
  %1596 = fmul fast float %1595, %1524
  %1597 = fadd fast float %1596, %1594
  %1598 = fmul fast float %1597, %1524
  %1599 = fmul fast float %1592, 2.000000e+00
  %1600 = fsub fast float 1.000000e+00, %1599
  %1601 = fmul fast float %1600, %1525
  %1602 = fadd fast float %1601, %1599
  %1603 = fmul fast float %1602, %1525
  %1604 = fmul fast float %1593, 2.000000e+00
  %1605 = fsub fast float 1.000000e+00, %1604
  %1606 = fmul fast float %1605, %1526
  %1607 = fadd fast float %1606, %1604
  %1608 = fmul fast float %1607, %1526
  br label %1609

; <label>:1609                                    ; preds = %1581, %1579, %1566, %1539, %1523
  %1610 = phi float [ %1524, %1523 ], [ %1598, %1581 ], [ %1524, %1579 ], [ %1576, %1566 ], [ %1549, %1539 ]
  %1611 = phi float [ %1525, %1523 ], [ %1603, %1581 ], [ %1525, %1579 ], [ %1577, %1566 ], [ %1550, %1539 ]
  %1612 = phi float [ %1526, %1523 ], [ %1608, %1581 ], [ %1526, %1579 ], [ %1578, %1566 ], [ %1551, %1539 ]
  %1613 = phi float [ %1527, %1523 ], [ %1527, %1581 ], [ %1527, %1579 ], [ %1527, %1566 ], [ %1561, %1539 ]
  %1614 = phi float [ %1528, %1523 ], [ %1528, %1581 ], [ %1528, %1579 ], [ %1528, %1566 ], [ %1562, %1539 ]
  %1615 = phi float [ %1529, %1523 ], [ %1529, %1581 ], [ %1529, %1579 ], [ %1529, %1566 ], [ %1563, %1539 ]
  %1616 = phi float [ %863, %1523 ], [ %863, %1581 ], [ %863, %1579 ], [ %863, %1566 ], [ %1554, %1539 ]
  %1617 = and i32 %1531, 12
  %1618 = icmp eq i32 %1617, 12
  br i1 %1618, label %1691, label %1619

; <label>:1619                                    ; preds = %1609
  %1620 = and i32 %1531, 2097184
  %1621 = icmp eq i32 %1620, 2097184
  %1622 = select i1 %1621, float %1164, float 0.000000e+00
  %1623 = and i32 %1531, 4194336
  %1624 = icmp eq i32 %1623, 4194336
  %1625 = select i1 %1624, float %1164, float 0.000000e+00
  %1626 = and i32 %1531, 8388640
  %1627 = icmp eq i32 %1626, 8388640
  %1628 = select i1 %1627, float %1164, float 0.000000e+00
  %1629 = icmp eq i32 %1617, 0
  br i1 %1629, label %1630, label %1643

; <label>:1630                                    ; preds = %1619
  %1631 = fsub fast float %1465, %855
  %1632 = fsub fast float %1466, %856
  %1633 = fmul fast float %1622, %1631
  %1634 = fmul fast float %1622, %1632
  %1635 = fadd fast float %1633, %855
  %1636 = fadd fast float %1634, %856
  %1637 = fsub fast float %1467, %866
  %1638 = fmul fast float %1625, %1637
  %1639 = fadd fast float %1638, %866
  %1640 = fsub fast float %1464, %865
  %1641 = fmul fast float %1628, %1640
  %1642 = fadd fast float %1641, %865
  br label %1691

; <label>:1643                                    ; preds = %1619
  %1644 = icmp eq i32 %1617, 4
  br i1 %1644, label %1645, label %1677

; <label>:1645                                    ; preds = %1643
  %1646 = fmul fast float %1622, %1465
  %1647 = fmul fast float %1622, %1466
  %1648 = fadd fast float %1646, %855
  %1649 = fadd fast float %1647, %856
  %1650 = call float @dx.op.binary.f32(i32 36, float %866, float %1467)  ; FMin(a,b)
  %1651 = fsub fast float %1650, %866
  %1652 = fmul fast float %1651, %1625
  %1653 = fadd fast float %1652, %866
  %1654 = fadd fast float %1464, %865
  %1655 = fmul fast float %1654, 0x3FF337FAE0000000
  %1656 = fmul fast float %865, %865
  %1657 = fmul fast float %1464, %1464
  %1658 = fadd fast float %1657, %1656
  %1659 = fmul fast float %1658, 0x3FE5152B00000000
  %1660 = fmul fast float %865, 0xBFCC1F85E0000000
  %1661 = fmul fast float %1660, %1464
  %1662 = fadd fast float %1661, 0xBFE1363700000000
  %1663 = fadd fast float %1662, %1655
  %1664 = fsub fast float %1663, %1659
  %1665 = fmul fast float %1654, 0x3FBA6F0D00000000
  %1666 = fmul fast float %1658, 0x3FD0432880000000
  %1667 = fmul fast float %865, 0xBFEF110800000000
  %1668 = fmul fast float %1667, %1464
  %1669 = fadd fast float %1668, 1.000000e+00
  %1670 = fsub fast float %1669, %1665
  %1671 = fadd fast float %1670, %1666
  %1672 = fdiv fast float %1664, %1671
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fsub fast float %1673, %865
  %1675 = fmul fast float %1674, %1628
  %1676 = fadd fast float %1675, %865
  br label %1691

; <label>:1677                                    ; preds = %1643
  %1678 = icmp eq i32 %1617, 8
  br i1 %1678, label %1679, label %1691

; <label>:1679                                    ; preds = %1677
  %1680 = fmul fast float %1622, %1465
  %1681 = fmul fast float %1622, %1466
  %1682 = fadd fast float %1680, %855
  %1683 = fadd fast float %1681, %856
  %1684 = call float @dx.op.binary.f32(i32 36, float %866, float %1467)  ; FMin(a,b)
  %1685 = fsub fast float %1684, %866
  %1686 = fmul fast float %1685, %1625
  %1687 = fadd fast float %1686, %866
  %1688 = fsub fast float %1464, %865
  %1689 = fmul fast float %1628, %1688
  %1690 = fadd fast float %1689, %865
  br label %1691

; <label>:1691                                    ; preds = %1679, %1677, %1645, %1630, %1609, %1163, %867, %854
  %1692 = phi float [ %855, %1609 ], [ %855, %1163 ], [ %855, %854 ], [ %1682, %1679 ], [ %855, %1677 ], [ %1648, %1645 ], [ %1635, %1630 ], [ %855, %867 ]
  %1693 = phi float [ %856, %1609 ], [ %856, %1163 ], [ %856, %854 ], [ %1683, %1679 ], [ %856, %1677 ], [ %1649, %1645 ], [ %1636, %1630 ], [ %856, %867 ]
  %1694 = phi float [ %1610, %1609 ], [ %857, %1163 ], [ %857, %854 ], [ %1610, %1679 ], [ %1610, %1677 ], [ %1610, %1645 ], [ %1610, %1630 ], [ %857, %867 ]
  %1695 = phi float [ %1611, %1609 ], [ %858, %1163 ], [ %858, %854 ], [ %1611, %1679 ], [ %1611, %1677 ], [ %1611, %1645 ], [ %1611, %1630 ], [ %858, %867 ]
  %1696 = phi float [ %1612, %1609 ], [ %859, %1163 ], [ %859, %854 ], [ %1612, %1679 ], [ %1612, %1677 ], [ %1612, %1645 ], [ %1612, %1630 ], [ %859, %867 ]
  %1697 = phi float [ %1613, %1609 ], [ %860, %1163 ], [ %860, %854 ], [ %1613, %1679 ], [ %1613, %1677 ], [ %1613, %1645 ], [ %1613, %1630 ], [ %860, %867 ]
  %1698 = phi float [ %1614, %1609 ], [ %861, %1163 ], [ %861, %854 ], [ %1614, %1679 ], [ %1614, %1677 ], [ %1614, %1645 ], [ %1614, %1630 ], [ %861, %867 ]
  %1699 = phi float [ %1615, %1609 ], [ %862, %1163 ], [ %862, %854 ], [ %1615, %1679 ], [ %1615, %1677 ], [ %1615, %1645 ], [ %1615, %1630 ], [ %862, %867 ]
  %1700 = phi float [ %1616, %1609 ], [ %863, %1163 ], [ %863, %854 ], [ %1616, %1679 ], [ %1616, %1677 ], [ %1616, %1645 ], [ %1616, %1630 ], [ %863, %867 ]
  %1701 = phi float [ %865, %1609 ], [ %865, %1163 ], [ %865, %854 ], [ %1690, %1679 ], [ %865, %1677 ], [ %1676, %1645 ], [ %1642, %1630 ], [ %865, %867 ]
  %1702 = phi float [ %866, %1609 ], [ %866, %1163 ], [ %866, %854 ], [ %1687, %1679 ], [ %866, %1677 ], [ %1653, %1645 ], [ %1639, %1630 ], [ %866, %867 ]
  br i1 %351, label %2527, label %1703

; <label>:1703                                    ; preds = %1691
  %1704 = icmp ult i32 %404, 3
  %1705 = add i32 %35, 56
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = add i32 %35, 60
  %1709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1708, i32 undef)  ; BufferLoad(srv,index,wot)
  %1710 = extractvalue %dx.types.ResRet.i32 %1709, 0
  %1711 = or i32 %1710, %1707
  %1712 = icmp eq i32 %1711, 0
  br i1 %1712, label %2527, label %1713

; <label>:1713                                    ; preds = %1703
  %1714 = and i32 %1707, 262144
  %1715 = icmp ne i32 %1714, 0
  %1716 = select i1 %1715, float %38, float 1.000000e+00
  %1717 = select i1 %1715, float %39, float 0.000000e+00
  %1718 = select i1 %1715, float %40, float 0.000000e+00
  %1719 = select i1 %1715, float %41, float 1.000000e+00
  %1720 = select i1 %1715, float %42, float %63
  %1721 = select i1 %1715, float %43, float %64
  %1722 = add i32 %35, 316
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = lshr i32 %1724, 16
  %1726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1725)  ; LegacyF16ToF32(value)
  %1727 = fmul fast float %1726, 0x3F50624DE0000000
  %1728 = add i32 %35, 120
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = lshr i32 %1730, 16
  %1732 = and i32 %1731, 255
  %1733 = lshr i32 %1730, 24
  %1734 = add i32 %35, 324
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = and i32 %1736, 65535
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = lshr i32 %1736, 16
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = add i32 %35, 64
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = lshr i32 %1743, 22
  %1745 = shl nuw nsw i32 %1744, 5
  %1746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1745)  ; LegacyF16ToF32(value)
  %1747 = shl i32 %1743, 4
  %1748 = and i32 %1747, 32752
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = lshr i32 %1743, 7
  %1751 = and i32 %1750, 32752
  %1752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1751)  ; LegacyF16ToF32(value)
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 3
  %1755 = fmul fast float %1754, 1.000000e+03
  %1756 = fmul fast float %301, %1755
  %1757 = call float @dx.op.unary.f32(i32 22, float %1756)  ; Frc(value)
  %1758 = fadd fast float %1757, %291
  %1759 = fmul fast float %302, %1755
  %1760 = call float @dx.op.unary.f32(i32 22, float %1759)  ; Frc(value)
  %1761 = fadd fast float %1760, %293
  %1762 = fmul fast float %1727, %1755
  %1763 = call float @dx.op.unary.f32(i32 22, float %1762)  ; Frc(value)
  %1764 = fmul fast float %1763, 0x401921FB60000000
  %1765 = fadd fast float %1764, %1746
  %1766 = call float @dx.op.unary.f32(i32 13, float %1765)  ; Sin(value)
  %1767 = call float @dx.op.unary.f32(i32 12, float %1765)  ; Cos(value)
  %1768 = fsub fast float -0.000000e+00, %1766
  %1769 = fadd fast float %1720, -5.000000e-01
  %1770 = fadd fast float %1721, -5.000000e-01
  %1771 = fmul fast float %1738, %1769
  %1772 = fmul fast float %1740, %1770
  %1773 = fadd fast float %1771, 5.000000e-01
  %1774 = fadd fast float %1772, 5.000000e-01
  %1775 = fmul fast float %1749, %1773
  %1776 = fmul fast float %1752, %1774
  %1777 = fmul fast float %1767, %1775
  %1778 = call float @dx.op.tertiary.f32(i32 46, float %1768, float %1776, float %1777)  ; FMad(a,b,c)
  %1779 = fmul fast float %1766, %1775
  %1780 = call float @dx.op.tertiary.f32(i32 46, float %1767, float %1776, float %1779)  ; FMad(a,b,c)
  %1781 = fadd fast float %1758, %1778
  %1782 = fadd fast float %1761, %1780
  %1783 = icmp ugt i32 %1732, 1
  %1784 = icmp ugt i32 %1730, 33554431
  %1785 = or i1 %1784, %1783
  br i1 %1785, label %1786, label %1811

; <label>:1786                                    ; preds = %1713
  %1787 = add i32 %35, 260
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 16
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = fmul fast float %1754, %1791
  %1793 = call float @dx.op.unary.f32(i32 22, float %1792)  ; Frc(value)
  %1794 = mul nuw nsw i32 %1732, %1733
  %1795 = uitofp i32 %1794 to float
  %1796 = fmul fast float %1793, %1795
  %1797 = call float @dx.op.unary.f32(i32 27, float %1796)  ; Round_ni(value)
  %1798 = fptoui float %1797 to i32
  %1799 = urem i32 %1798, %1732
  %1800 = udiv i32 %1798, %1733
  %1801 = call float @dx.op.unary.f32(i32 22, float %1781)  ; Frc(value)
  %1802 = call float @dx.op.unary.f32(i32 22, float %1782)  ; Frc(value)
  %1803 = uitofp i32 %1799 to float
  %1804 = uitofp i32 %1800 to float
  %1805 = fadd fast float %1801, %1803
  %1806 = fadd fast float %1802, %1804
  %1807 = uitofp i32 %1732 to float
  %1808 = uitofp i32 %1733 to float
  %1809 = fdiv fast float %1805, %1807
  %1810 = fdiv fast float %1806, %1808
  br label %1811

; <label>:1811                                    ; preds = %1786, %1713
  %1812 = phi float [ %1809, %1786 ], [ %1781, %1713 ]
  %1813 = phi float [ %1810, %1786 ], [ %1782, %1713 ]
  %1814 = and i32 %1707, 16777216
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %1925, label %1816

; <label>:1816                                    ; preds = %1811
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1821 = fadd fast float %1818, %134
  %1822 = fadd fast float %1819, %135
  %1823 = fadd fast float %1820, %136
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1827 = icmp eq i32 %36, 65535
  br i1 %1827, label %1922, label %1828

; <label>:1828                                    ; preds = %1816
  %1829 = lshr i32 %36, 1
  %1830 = shl i32 %1829, 2
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %36, 1
  %1834 = icmp ne i32 %1833, 0
  %1835 = lshr i32 %1832, 16
  %1836 = and i32 %1832, 65535
  %1837 = select i1 %1834, i32 %1835, i32 %1836
  %1838 = icmp eq i32 %1837, 65535
  br i1 %1838, label %1918, label %1839

; <label>:1839                                    ; preds = %1828
  %1840 = mul nuw nsw i32 %1837, 40
  %1841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = add nuw nsw i32 %1840, 12
  %1846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.ResRet.f32 %1846, 1
  %1849 = extractvalue %dx.types.ResRet.f32 %1846, 2
  %1850 = add nuw nsw i32 %1840, 24
  %1851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.ResRet.f32 %1851, 1
  %1854 = extractvalue %dx.types.ResRet.f32 %1851, 2
  %1855 = add nuw nsw i32 %1840, 36
  %1856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.f32 %1856, 0
  %1858 = fsub fast float %1821, %1842
  %1859 = fsub fast float %1822, %1843
  %1860 = fsub fast float %1823, %1844
  %1861 = fmul fast float %1857, %1858
  %1862 = fmul fast float %1857, %1859
  %1863 = fmul fast float %1857, %1860
  %1864 = call float @dx.op.unary.f32(i32 27, float %1861)  ; Round_ni(value)
  %1865 = call float @dx.op.unary.f32(i32 27, float %1862)  ; Round_ni(value)
  %1866 = call float @dx.op.unary.f32(i32 27, float %1863)  ; Round_ni(value)
  %1867 = fadd fast float %1864, 5.000000e-01
  %1868 = fadd fast float %1865, 5.000000e-01
  %1869 = fadd fast float %1866, 5.000000e-01
  %1870 = fmul fast float %1867, %1847
  %1871 = fmul fast float %1868, %1848
  %1872 = fmul fast float %1869, %1849
  %1873 = shl i32 %36, 2
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = add i32 %1875, 0
  %1877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1878 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1879 = call float @dx.op.unary.f32(i32 22, float %1871)  ; Frc(value)
  %1880 = call float @dx.op.unary.f32(i32 22, float %1872)  ; Frc(value)
  %1881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1877, %dx.types.Handle %30, float %1878, float %1879, float %1880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = fmul fast float %1882, 1.023000e+03
  %1886 = fmul fast float %1883, 1.023000e+03
  %1887 = fmul fast float %1884, 1.023000e+03
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fadd fast float %1887, 5.000000e-01
  %1891 = call float @dx.op.unary.f32(i32 27, float %1888)  ; Round_ni(value)
  %1892 = call float @dx.op.unary.f32(i32 27, float %1889)  ; Round_ni(value)
  %1893 = call float @dx.op.unary.f32(i32 27, float %1890)  ; Round_ni(value)
  %1894 = fsub fast float %1861, %1864
  %1895 = fsub fast float %1862, %1865
  %1896 = fsub fast float %1863, %1866
  %1897 = fmul fast float %1894, 7.500000e-01
  %1898 = fmul fast float %1895, 7.500000e-01
  %1899 = fmul fast float %1896, 7.500000e-01
  %1900 = fadd fast float %1864, 1.250000e-01
  %1901 = fadd fast float %1900, %1897
  %1902 = fadd fast float %1901, %1891
  %1903 = fadd fast float %1865, 1.250000e-01
  %1904 = fadd fast float %1903, %1898
  %1905 = fadd fast float %1904, %1892
  %1906 = fadd fast float %1866, 1.250000e-01
  %1907 = fadd fast float %1906, %1899
  %1908 = fadd fast float %1907, %1893
  %1909 = fmul fast float %1902, %1852
  %1910 = fmul fast float %1905, %1853
  %1911 = fmul fast float %1908, %1854
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = add i32 %1913, 0
  %1915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1915, %dx.types.Handle %28, float %1909, float %1910, float %1911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  br label %1918

; <label>:1918                                    ; preds = %1839, %1828
  %1919 = phi float [ %1917, %1839 ], [ -1.000000e+00, %1828 ]
  %1920 = fadd fast float %1919, %1826
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  br label %1922

; <label>:1922                                    ; preds = %1918, %1816
  %1923 = phi float [ %1921, %1918 ], [ %1826, %1816 ]
  %1924 = fmul fast float %1923, %400
  br label %1925

; <label>:1925                                    ; preds = %1922, %1811
  %1926 = phi float [ %1924, %1922 ], [ %400, %1811 ]
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = and i32 %1928, 256
  %1930 = icmp eq i32 %1929, 0
  br i1 %1930, label %1977, label %1931

; <label>:1931                                    ; preds = %1925
  %1932 = add i32 %35, 512
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = add i32 %1934, 0
  %1936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1936, %dx.types.Handle %72, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = add i32 %35, 132
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = shl i32 %1941, 4
  %1943 = and i32 %1942, 32752
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = lshr i32 %1941, 7
  %1946 = and i32 %1945, 32752
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = fsub fast float 1.000000e+00, %1926
  %1949 = call float @dx.op.binary.f32(i32 35, float %1948, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1950 = bitcast float %1926 to i32
  %1951 = sitofp i32 %1950 to float
  %1952 = fadd fast float %1951, 0xC1CFBF8940000000
  %1953 = fmul fast float %1947, %1952
  %1954 = fadd fast float %1953, 0x41CFBF8940000000
  %1955 = fptosi float %1954 to i32
  %1956 = bitcast i32 %1955 to float
  %1957 = bitcast float %1949 to i32
  %1958 = sitofp i32 %1957 to float
  %1959 = fadd fast float %1958, 0xC1CFBF8940000000
  %1960 = fmul fast float %1959, %1947
  %1961 = fadd fast float %1960, 0x41CFBF8940000000
  %1962 = fptosi float %1961 to i32
  %1963 = bitcast i32 %1962 to float
  %1964 = fmul fast float %1956, %1944
  %1965 = fmul fast float %1963, %1944
  %1966 = fsub fast float %1949, %1964
  %1967 = fadd fast float %1965, %1949
  %1968 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1969 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1970 = fsub fast float %1938, %1968
  %1971 = fsub fast float %1969, %1968
  %1972 = bitcast float %1971 to i32
  %1973 = sub nsw i32 2129859010, %1972
  %1974 = bitcast i32 %1973 to float
  %1975 = fmul fast float %1974, %1970
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  br label %1977

; <label>:1977                                    ; preds = %1931, %1925
  %1978 = phi float [ %1976, %1931 ], [ %1926, %1925 ]
  %1979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.i32 %1979, 0
  %1981 = and i32 %1980, 128
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %1999, label %1983

; <label>:1983                                    ; preds = %1977
  %1984 = add i32 %35, 496
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = add i32 %1986, 0
  %1988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1988, %dx.types.Handle %72, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = and i32 %1992, 524288
  %1994 = icmp ne i32 %1993, 0
  %1995 = fcmp fast ogt float %1990, 0x3FE0101020000000
  %1996 = select i1 %1995, float 1.000000e+00, float 0.000000e+00
  %1997 = select i1 %1994, float %1996, float %1990
  %1998 = fmul fast float %1997, %1978
  br label %1999

; <label>:1999                                    ; preds = %1983, %1977
  %2000 = phi float [ %1998, %1983 ], [ %1978, %1977 ]
  %2001 = fcmp fast ult float %2000, 0x3F70101020000000
  br i1 %2001, label %2527, label %2002

; <label>:2002                                    ; preds = %1999
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = and i32 %2004, 16
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2205, label %2007

; <label>:2007                                    ; preds = %2002
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %35, 448
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = add i32 %2012, 0
  %2014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2015 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2014, %dx.types.Handle %71, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.ResRet.f32 %2015, 1
  %2018 = extractvalue %dx.types.ResRet.f32 %2015, 2
  %2019 = extractvalue %dx.types.ResRet.f32 %2015, 3
  %2020 = and i32 %2009, 255
  %2021 = uitofp i32 %2020 to float
  %2022 = lshr i32 %2009, 8
  %2023 = and i32 %2022, 255
  %2024 = uitofp i32 %2023 to float
  %2025 = fmul fast float %2019, %2021
  %2026 = fadd fast float %2025, %2024
  %2027 = fmul fast float %2026, 0x3F70101000000000
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 512
  %2031 = icmp eq i32 %2030, 0
  br i1 %2031, label %2040, label %2032

; <label>:2032                                    ; preds = %2007
  %2033 = add i32 %35, 540
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = add i32 %2035, 0
  %2037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2037, %dx.types.Handle %72, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  br label %2040

; <label>:2040                                    ; preds = %2032, %2007
  %2041 = phi float [ %2039, %2032 ], [ 1.000000e+00, %2007 ]
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = and i32 %2043, 33554432
  %2045 = icmp eq i32 %2044, 0
  br i1 %2045, label %2152, label %2046

; <label>:2046                                    ; preds = %2040
  %2047 = add i32 %35, 256
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 65535
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = lshr i32 %2049, 16
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = add i32 %35, 260
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 65535
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = lshr i32 %2060, 24
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = and i32 %2060, 255
  %2065 = uitofp i32 %2064 to float
  %2066 = fmul fast float %2065, 0x3F70101020000000
  %2067 = lshr i32 %2060, 8
  %2068 = and i32 %2067, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2069, 0x3F70101020000000
  %2071 = lshr i32 %2060, 16
  %2072 = and i32 %2071, 255
  %2073 = uitofp i32 %2072 to float
  %2074 = fmul fast float %2073, 0x3F70101020000000
  %2075 = add i32 %35, 252
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = lshr i32 %2077, 24
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2079, 0x3F70101020000000
  %2081 = and i32 %2077, 255
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2082, 0x3F70101020000000
  %2084 = lshr i32 %2077, 8
  %2085 = and i32 %2084, 255
  %2086 = uitofp i32 %2085 to float
  %2087 = fmul fast float %2086, 0x3F70101020000000
  %2088 = lshr i32 %2077, 16
  %2089 = and i32 %2088, 255
  %2090 = uitofp i32 %2089 to float
  %2091 = fmul fast float %2090, 0x3F70101020000000
  %2092 = bitcast float %2016 to i32
  %2093 = ashr i32 %2092, 1
  %2094 = sub nsw i32 1597463174, %2093
  %2095 = bitcast i32 %2094 to float
  %2096 = fmul fast float %2016, 5.000000e-01
  %2097 = fmul fast float %2095, %2095
  %2098 = fmul fast float %2097, %2096
  %2099 = fsub fast float 1.500000e+00, %2098
  %2100 = fmul fast float %2095, %2016
  %2101 = fmul fast float %2100, %2099
  %2102 = bitcast float %2017 to i32
  %2103 = ashr i32 %2102, 1
  %2104 = sub nsw i32 1597463174, %2103
  %2105 = bitcast i32 %2104 to float
  %2106 = fmul fast float %2017, 5.000000e-01
  %2107 = fmul fast float %2105, %2105
  %2108 = fmul fast float %2107, %2106
  %2109 = fsub fast float 1.500000e+00, %2108
  %2110 = fmul fast float %2105, %2017
  %2111 = fmul fast float %2110, %2109
  %2112 = bitcast float %2018 to i32
  %2113 = ashr i32 %2112, 1
  %2114 = sub nsw i32 1597463174, %2113
  %2115 = bitcast i32 %2114 to float
  %2116 = fmul fast float %2018, 5.000000e-01
  %2117 = fmul fast float %2115, %2115
  %2118 = fmul fast float %2117, %2116
  %2119 = fsub fast float 1.500000e+00, %2118
  %2120 = fmul fast float %2115, %2018
  %2121 = fmul fast float %2120, %2119
  %2122 = fsub fast float %2101, %2083
  %2123 = fsub fast float %2111, %2087
  %2124 = fsub fast float %2121, %2091
  %2125 = fmul fast float %2122, %2051
  %2126 = fmul fast float %2123, %2053
  %2127 = fmul fast float %2124, %2058
  %2128 = fadd fast float %2125, %2066
  %2129 = fadd fast float %2126, %2070
  %2130 = fadd fast float %2127, %2074
  %2131 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2132 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2133 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2134 = fmul fast float %2131, %2131
  %2135 = fmul fast float %2132, %2132
  %2136 = fmul fast float %2133, %2133
  %2137 = fsub fast float %2134, %2016
  %2138 = fsub fast float %2135, %2017
  %2139 = fsub fast float %2136, %2018
  %2140 = fmul fast float %2137, %2041
  %2141 = fmul fast float %2138, %2041
  %2142 = fmul fast float %2139, %2041
  %2143 = fadd fast float %2140, %2016
  %2144 = fadd fast float %2141, %2017
  %2145 = fadd fast float %2142, %2018
  %2146 = fadd fast float %2063, %2027
  %2147 = fsub fast float %2146, %2080
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = fsub fast float %2148, %2027
  %2150 = fmul fast float %2149, %2041
  %2151 = fadd fast float %2150, %2027
  br label %2205

; <label>:2152                                    ; preds = %2040
  %2153 = and i32 %2043, 134217728
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2189, label %2155

; <label>:2155                                    ; preds = %2152
  %2156 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2157 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2158 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2159 = fadd fast float %2156, -5.000000e-01
  %2160 = fadd fast float %2157, -5.000000e-01
  %2161 = fadd fast float %2158, -5.000000e-01
  %2162 = fmul fast float %2159, %2041
  %2163 = fmul fast float %2160, %2041
  %2164 = fmul fast float %2161, %2041
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = fadd fast float %2163, 5.000000e-01
  %2167 = fadd fast float %2164, 5.000000e-01
  %2168 = call float @dx.op.unary.f32(i32 24, float %2016)  ; Sqrt(value)
  %2169 = call float @dx.op.unary.f32(i32 24, float %2017)  ; Sqrt(value)
  %2170 = call float @dx.op.unary.f32(i32 24, float %2018)  ; Sqrt(value)
  %2171 = fmul fast float %2165, 2.000000e+00
  %2172 = fsub fast float 1.000000e+00, %2171
  %2173 = fmul fast float %2172, %2168
  %2174 = fadd fast float %2173, %2171
  %2175 = fmul fast float %2174, %2168
  %2176 = fmul fast float %2166, 2.000000e+00
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2177, %2169
  %2179 = fadd fast float %2178, %2176
  %2180 = fmul fast float %2179, %2169
  %2181 = fmul fast float %2167, 2.000000e+00
  %2182 = fsub fast float 1.000000e+00, %2181
  %2183 = fmul fast float %2182, %2170
  %2184 = fadd fast float %2183, %2181
  %2185 = fmul fast float %2184, %2170
  %2186 = fmul fast float %2175, %2175
  %2187 = fmul fast float %2180, %2180
  %2188 = fmul fast float %2185, %2185
  br label %2205

; <label>:2189                                    ; preds = %2152
  %2190 = fmul fast float %278, %278
  %2191 = fmul fast float %282, %282
  %2192 = fmul fast float %286, %286
  %2193 = fadd fast float %2190, -1.000000e+00
  %2194 = fadd fast float %2191, -1.000000e+00
  %2195 = fadd fast float %2192, -1.000000e+00
  %2196 = fmul fast float %2041, %2193
  %2197 = fmul fast float %2041, %2194
  %2198 = fmul fast float %2041, %2195
  %2199 = fadd fast float %2196, 1.000000e+00
  %2200 = fadd fast float %2197, 1.000000e+00
  %2201 = fadd fast float %2198, 1.000000e+00
  %2202 = fmul fast float %2199, %2016
  %2203 = fmul fast float %2200, %2017
  %2204 = fmul fast float %2201, %2018
  br label %2205

; <label>:2205                                    ; preds = %2189, %2155, %2046, %2002
  %2206 = phi float [ %2151, %2046 ], [ %2027, %2155 ], [ %2027, %2189 ], [ 0x3FA23C0BE0000000, %2002 ]
  %2207 = phi float [ %2143, %2046 ], [ %2186, %2155 ], [ %2202, %2189 ], [ 1.000000e+00, %2002 ]
  %2208 = phi float [ %2144, %2046 ], [ %2187, %2155 ], [ %2203, %2189 ], [ 1.000000e+00, %2002 ]
  %2209 = phi float [ %2145, %2046 ], [ %2188, %2155 ], [ %2204, %2189 ], [ 1.000000e+00, %2002 ]
  %2210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.i32 %2210, 1
  %2212 = and i32 %2211, 1
  %2213 = icmp ne i32 %2212, 0
  %2214 = add i32 %35, 356
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 32
  %2218 = icmp ne i32 %2217, 0
  %2219 = and i1 %2213, %2218
  %2220 = select i1 %2219, float 1.000000e+00, float %2207
  %2221 = select i1 %2219, float 0x3FD3333340000000, float %2208
  %2222 = select i1 %2219, float 0x3FD3333340000000, float %2209
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 32
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2299, label %2227

; <label>:2227                                    ; preds = %2205
  %2228 = add i32 %35, 124
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %35, 464
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = add i32 %2233, 0
  %2235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2235, %dx.types.Handle %71, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2237 = extractvalue %dx.types.ResRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.ResRet.f32 %2236, 1
  %2239 = extractvalue %dx.types.ResRet.f32 %2236, 2
  %2240 = extractvalue %dx.types.ResRet.f32 %2236, 3
  %2241 = and i32 %2230, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = lshr i32 %2230, 8
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = lshr i32 %2230, 16
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101000000000
  %2250 = fmul fast float %2237, %2242
  %2251 = fadd fast float %2250, %2245
  %2252 = fmul fast float %2251, 0x3F70101000000000
  %2253 = fadd fast float %2238, -5.000000e-01
  %2254 = fadd fast float %2240, -5.000000e-01
  %2255 = fmul fast float %2253, %2249
  %2256 = fmul fast float %2254, %2249
  %2257 = fadd fast float %2255, 5.000000e-01
  %2258 = fadd fast float %2256, 5.000000e-01
  %2259 = fmul fast float %2257, 2.000000e+00
  %2260 = fadd fast float %2259, -1.000000e+00
  %2261 = fmul fast float %2258, 2.000000e+00
  %2262 = fadd fast float %2261, -1.000000e+00
  %2263 = fadd fast float %2260, %2262
  %2264 = fmul fast float %2263, 5.000000e-01
  %2265 = fsub fast float %2260, %2262
  %2266 = fmul fast float %2265, 5.000000e-01
  %2267 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2268 = fsub fast float 1.000000e+00, %2267
  %2269 = call float @dx.op.unary.f32(i32 6, float %2266)  ; FAbs(value)
  %2270 = fsub fast float %2268, %2269
  %2271 = call float @dx.op.dot3.f32(i32 55, float %2264, float %2266, float %2270, float %2264, float %2266, float %2270)  ; Dot3(ax,ay,az,bx,by,bz)
  %2272 = call float @dx.op.unary.f32(i32 25, float %2271)  ; Rsqrt(value)
  %2273 = fmul fast float %2264, %2272
  %2274 = fmul fast float %2266, %2272
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = and i32 %2276, 67108864
  %2278 = icmp eq i32 %2277, 0
  br i1 %2278, label %2295, label %2279

; <label>:2279                                    ; preds = %2227
  %2280 = add i32 %35, 312
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = and i32 %2282, 65535
  %2284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2283)  ; LegacyF16ToF32(value)
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = and i32 %2286, 65535
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = lshr i32 %2282, 16
  %2290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2289)  ; LegacyF16ToF32(value)
  %2291 = fsub fast float %2252, %2290
  %2292 = fmul fast float %2291, %2284
  %2293 = fadd fast float %2292, %2288
  %2294 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  br label %2295

; <label>:2295                                    ; preds = %2279, %2227
  %2296 = phi float [ %2294, %2279 ], [ %2252, %2227 ]
  %2297 = call float @dx.op.dot2.f32(i32 54, float %2273, float %2274, float %1716, float %1717)  ; Dot2(ax,ay,bx,by)
  %2298 = call float @dx.op.dot2.f32(i32 54, float %2273, float %2274, float %1718, float %1719)  ; Dot2(ax,ay,bx,by)
  br label %2299

; <label>:2299                                    ; preds = %2295, %2205
  %2300 = phi float [ %2296, %2295 ], [ 0x3FD6666660000000, %2205 ]
  %2301 = phi float [ %2297, %2295 ], [ 0.000000e+00, %2205 ]
  %2302 = phi float [ %2298, %2295 ], [ 0.000000e+00, %2205 ]
  %2303 = phi float [ %2239, %2295 ], [ 1.000000e+00, %2205 ]
  %2304 = add i32 %35, 192
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = lshr i32 %2306, 22
  %2308 = shl nuw nsw i32 %2307, 5
  %2309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2308)  ; LegacyF16ToF32(value)
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = and i32 %2311, 64
  %2313 = icmp eq i32 %2312, 0
  br i1 %2313, label %2347, label %2314

; <label>:2314                                    ; preds = %2299
  %2315 = add i32 %35, 480
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = add i32 %2317, 0
  %2319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 131072
  %2323 = icmp eq i32 %2322, 0
  %2324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2319, %dx.types.Handle %71, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.ResRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.ResRet.f32 %2324, 2
  %2328 = fmul fast float %2325, %266
  %2329 = fmul fast float %2326, %269
  %2330 = fmul fast float %2327, %272
  br i1 %2323, label %2337, label %2331

; <label>:2331                                    ; preds = %2314
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 0
  %2334 = fmul fast float %2333, %2328
  %2335 = fmul fast float %2333, %2329
  %2336 = fmul fast float %2333, %2330
  br label %2337

; <label>:2337                                    ; preds = %2331, %2314
  %2338 = phi float [ %2334, %2331 ], [ %2328, %2314 ]
  %2339 = phi float [ %2335, %2331 ], [ %2329, %2314 ]
  %2340 = phi float [ %2336, %2331 ], [ %2330, %2314 ]
  %2341 = fmul fast float %2338, %2309
  %2342 = select i1 %176, float %2341, float %2338
  %2343 = call float @dx.op.dot3.f32(i32 55, float %2342, float %2339, float %2340, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2344 = select i1 %176, float 0.000000e+00, float %2338
  %2345 = select i1 %176, float %2343, float %2339
  %2346 = select i1 %176, float 0.000000e+00, float %2340
  br label %2347

; <label>:2347                                    ; preds = %2337, %2299
  %2348 = phi float [ %2344, %2337 ], [ 0.000000e+00, %2299 ]
  %2349 = phi float [ %2345, %2337 ], [ 0.000000e+00, %2299 ]
  %2350 = phi float [ %2346, %2337 ], [ 0.000000e+00, %2299 ]
  br i1 %1704, label %2351, label %2359

; <label>:2351                                    ; preds = %2347
  %2352 = fsub fast float 1.000000e+00, %2000
  %2353 = fmul fast float %2352, %1694
  %2354 = fmul fast float %2352, %1695
  %2355 = fmul fast float %2352, %1696
  %2356 = fmul fast float %2352, %1697
  %2357 = fmul fast float %2352, %1698
  %2358 = fmul fast float %2352, %1699
  br label %2359

; <label>:2359                                    ; preds = %2351, %2347
  %2360 = phi float [ %2353, %2351 ], [ %1694, %2347 ]
  %2361 = phi float [ %2354, %2351 ], [ %1695, %2347 ]
  %2362 = phi float [ %2355, %2351 ], [ %1696, %2347 ]
  %2363 = phi float [ %2356, %2351 ], [ %1697, %2347 ]
  %2364 = phi float [ %2357, %2351 ], [ %1698, %2347 ]
  %2365 = phi float [ %2358, %2351 ], [ %1699, %2347 ]
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 3
  %2369 = icmp eq i32 %2368, 3
  br i1 %2369, label %2445, label %2370

; <label>:2370                                    ; preds = %2359
  %2371 = and i32 %2367, 16
  %2372 = icmp ne i32 %2371, 0
  %2373 = select i1 %2372, float %2000, float 0.000000e+00
  %2374 = icmp eq i32 %2368, 0
  br i1 %2374, label %2375, label %2400

; <label>:2375                                    ; preds = %2370
  %2376 = and i32 %2367, 64
  %2377 = icmp ne i32 %2376, 0
  %2378 = select i1 %2377, float %2000, float 0.000000e+00
  %2379 = fsub fast float %2220, %2360
  %2380 = fsub fast float %2221, %2361
  %2381 = fsub fast float %2222, %2362
  %2382 = fmul fast float %2373, %2379
  %2383 = fmul fast float %2373, %2380
  %2384 = fmul fast float %2373, %2381
  %2385 = fadd fast float %2382, %2360
  %2386 = fadd fast float %2383, %2361
  %2387 = fadd fast float %2384, %2362
  %2388 = fsub fast float %2206, %1700
  %2389 = fmul fast float %2373, %2388
  %2390 = fadd fast float %2389, %1700
  %2391 = fsub fast float %2348, %2363
  %2392 = fsub fast float %2349, %2364
  %2393 = fsub fast float %2350, %2365
  %2394 = fmul fast float %2378, %2391
  %2395 = fmul fast float %2378, %2392
  %2396 = fmul fast float %2378, %2393
  %2397 = fadd fast float %2394, %2363
  %2398 = fadd fast float %2395, %2364
  %2399 = fadd fast float %2396, %2365
  br label %2445

; <label>:2400                                    ; preds = %2370
  %2401 = icmp eq i32 %2368, 1
  br i1 %2401, label %2402, label %2415

; <label>:2402                                    ; preds = %2400
  %2403 = fadd fast float %2220, -1.000000e+00
  %2404 = fadd fast float %2221, -1.000000e+00
  %2405 = fadd fast float %2222, -1.000000e+00
  %2406 = fmul fast float %2373, %2403
  %2407 = fmul fast float %2373, %2404
  %2408 = fmul fast float %2373, %2405
  %2409 = fadd fast float %2406, 1.000000e+00
  %2410 = fadd fast float %2407, 1.000000e+00
  %2411 = fadd fast float %2408, 1.000000e+00
  %2412 = fmul fast float %2409, %2360
  %2413 = fmul fast float %2410, %2361
  %2414 = fmul fast float %2411, %2362
  br label %2445

; <label>:2415                                    ; preds = %2400
  %2416 = icmp eq i32 %2368, 2
  br i1 %2416, label %2417, label %2445

; <label>:2417                                    ; preds = %2415
  %2418 = call float @dx.op.unary.f32(i32 24, float %2220)  ; Sqrt(value)
  %2419 = call float @dx.op.unary.f32(i32 24, float %2221)  ; Sqrt(value)
  %2420 = call float @dx.op.unary.f32(i32 24, float %2222)  ; Sqrt(value)
  %2421 = fadd fast float %2418, -5.000000e-01
  %2422 = fadd fast float %2419, -5.000000e-01
  %2423 = fadd fast float %2420, -5.000000e-01
  %2424 = fmul fast float %2421, %2373
  %2425 = fmul fast float %2422, %2373
  %2426 = fmul fast float %2423, %2373
  %2427 = fadd fast float %2424, 5.000000e-01
  %2428 = fadd fast float %2425, 5.000000e-01
  %2429 = fadd fast float %2426, 5.000000e-01
  %2430 = fmul fast float %2427, 2.000000e+00
  %2431 = fsub fast float 1.000000e+00, %2430
  %2432 = fmul fast float %2431, %2360
  %2433 = fadd fast float %2432, %2430
  %2434 = fmul fast float %2433, %2360
  %2435 = fmul fast float %2428, 2.000000e+00
  %2436 = fsub fast float 1.000000e+00, %2435
  %2437 = fmul fast float %2436, %2361
  %2438 = fadd fast float %2437, %2435
  %2439 = fmul fast float %2438, %2361
  %2440 = fmul fast float %2429, 2.000000e+00
  %2441 = fsub fast float 1.000000e+00, %2440
  %2442 = fmul fast float %2441, %2362
  %2443 = fadd fast float %2442, %2440
  %2444 = fmul fast float %2443, %2362
  br label %2445

; <label>:2445                                    ; preds = %2417, %2415, %2402, %2375, %2359
  %2446 = phi float [ %2360, %2359 ], [ %2434, %2417 ], [ %2360, %2415 ], [ %2412, %2402 ], [ %2385, %2375 ]
  %2447 = phi float [ %2361, %2359 ], [ %2439, %2417 ], [ %2361, %2415 ], [ %2413, %2402 ], [ %2386, %2375 ]
  %2448 = phi float [ %2362, %2359 ], [ %2444, %2417 ], [ %2362, %2415 ], [ %2414, %2402 ], [ %2387, %2375 ]
  %2449 = phi float [ %2363, %2359 ], [ %2363, %2417 ], [ %2363, %2415 ], [ %2363, %2402 ], [ %2397, %2375 ]
  %2450 = phi float [ %2364, %2359 ], [ %2364, %2417 ], [ %2364, %2415 ], [ %2364, %2402 ], [ %2398, %2375 ]
  %2451 = phi float [ %2365, %2359 ], [ %2365, %2417 ], [ %2365, %2415 ], [ %2365, %2402 ], [ %2399, %2375 ]
  %2452 = phi float [ %1700, %2359 ], [ %1700, %2417 ], [ %1700, %2415 ], [ %1700, %2402 ], [ %2390, %2375 ]
  %2453 = and i32 %2367, 12
  %2454 = icmp eq i32 %2453, 12
  br i1 %2454, label %2527, label %2455

; <label>:2455                                    ; preds = %2445
  %2456 = and i32 %2367, 2097184
  %2457 = icmp eq i32 %2456, 2097184
  %2458 = select i1 %2457, float %2000, float 0.000000e+00
  %2459 = and i32 %2367, 4194336
  %2460 = icmp eq i32 %2459, 4194336
  %2461 = select i1 %2460, float %2000, float 0.000000e+00
  %2462 = and i32 %2367, 8388640
  %2463 = icmp eq i32 %2462, 8388640
  %2464 = select i1 %2463, float %2000, float 0.000000e+00
  %2465 = icmp eq i32 %2453, 0
  br i1 %2465, label %2466, label %2479

; <label>:2466                                    ; preds = %2455
  %2467 = fsub fast float %2301, %1692
  %2468 = fsub fast float %2302, %1693
  %2469 = fmul fast float %2458, %2467
  %2470 = fmul fast float %2458, %2468
  %2471 = fadd fast float %2469, %1692
  %2472 = fadd fast float %2470, %1693
  %2473 = fsub fast float %2303, %1702
  %2474 = fmul fast float %2461, %2473
  %2475 = fadd fast float %2474, %1702
  %2476 = fsub fast float %2300, %1701
  %2477 = fmul fast float %2464, %2476
  %2478 = fadd fast float %2477, %1701
  br label %2527

; <label>:2479                                    ; preds = %2455
  %2480 = icmp eq i32 %2453, 4
  br i1 %2480, label %2481, label %2513

; <label>:2481                                    ; preds = %2479
  %2482 = fmul fast float %2458, %2301
  %2483 = fmul fast float %2458, %2302
  %2484 = fadd fast float %2482, %1692
  %2485 = fadd fast float %2483, %1693
  %2486 = call float @dx.op.binary.f32(i32 36, float %1702, float %2303)  ; FMin(a,b)
  %2487 = fsub fast float %2486, %1702
  %2488 = fmul fast float %2487, %2461
  %2489 = fadd fast float %2488, %1702
  %2490 = fadd fast float %2300, %1701
  %2491 = fmul fast float %2490, 0x3FF337FAE0000000
  %2492 = fmul fast float %1701, %1701
  %2493 = fmul fast float %2300, %2300
  %2494 = fadd fast float %2493, %2492
  %2495 = fmul fast float %2494, 0x3FE5152B00000000
  %2496 = fmul fast float %1701, 0xBFCC1F85E0000000
  %2497 = fmul fast float %2496, %2300
  %2498 = fadd fast float %2497, 0xBFE1363700000000
  %2499 = fadd fast float %2498, %2491
  %2500 = fsub fast float %2499, %2495
  %2501 = fmul fast float %2490, 0x3FBA6F0D00000000
  %2502 = fmul fast float %2494, 0x3FD0432880000000
  %2503 = fmul fast float %1701, 0xBFEF110800000000
  %2504 = fmul fast float %2503, %2300
  %2505 = fadd fast float %2504, 1.000000e+00
  %2506 = fsub fast float %2505, %2501
  %2507 = fadd fast float %2506, %2502
  %2508 = fdiv fast float %2500, %2507
  %2509 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2510 = fsub fast float %2509, %1701
  %2511 = fmul fast float %2510, %2464
  %2512 = fadd fast float %2511, %1701
  br label %2527

; <label>:2513                                    ; preds = %2479
  %2514 = icmp eq i32 %2453, 8
  br i1 %2514, label %2515, label %2527

; <label>:2515                                    ; preds = %2513
  %2516 = fmul fast float %2458, %2301
  %2517 = fmul fast float %2458, %2302
  %2518 = fadd fast float %2516, %1692
  %2519 = fadd fast float %2517, %1693
  %2520 = call float @dx.op.binary.f32(i32 36, float %1702, float %2303)  ; FMin(a,b)
  %2521 = fsub fast float %2520, %1702
  %2522 = fmul fast float %2521, %2461
  %2523 = fadd fast float %2522, %1702
  %2524 = fsub fast float %2300, %1701
  %2525 = fmul fast float %2464, %2524
  %2526 = fadd fast float %2525, %1701
  br label %2527

; <label>:2527                                    ; preds = %2515, %2513, %2481, %2466, %2445, %1999, %1703, %1691
  %2528 = phi float [ %1692, %2445 ], [ %1692, %1999 ], [ %1692, %1691 ], [ %2518, %2515 ], [ %1692, %2513 ], [ %2484, %2481 ], [ %2471, %2466 ], [ %1692, %1703 ]
  %2529 = phi float [ %1693, %2445 ], [ %1693, %1999 ], [ %1693, %1691 ], [ %2519, %2515 ], [ %1693, %2513 ], [ %2485, %2481 ], [ %2472, %2466 ], [ %1693, %1703 ]
  %2530 = phi float [ %2446, %2445 ], [ %1694, %1999 ], [ %1694, %1691 ], [ %2446, %2515 ], [ %2446, %2513 ], [ %2446, %2481 ], [ %2446, %2466 ], [ %1694, %1703 ]
  %2531 = phi float [ %2447, %2445 ], [ %1695, %1999 ], [ %1695, %1691 ], [ %2447, %2515 ], [ %2447, %2513 ], [ %2447, %2481 ], [ %2447, %2466 ], [ %1695, %1703 ]
  %2532 = phi float [ %2448, %2445 ], [ %1696, %1999 ], [ %1696, %1691 ], [ %2448, %2515 ], [ %2448, %2513 ], [ %2448, %2481 ], [ %2448, %2466 ], [ %1696, %1703 ]
  %2533 = phi float [ %2449, %2445 ], [ %1697, %1999 ], [ %1697, %1691 ], [ %2449, %2515 ], [ %2449, %2513 ], [ %2449, %2481 ], [ %2449, %2466 ], [ %1697, %1703 ]
  %2534 = phi float [ %2450, %2445 ], [ %1698, %1999 ], [ %1698, %1691 ], [ %2450, %2515 ], [ %2450, %2513 ], [ %2450, %2481 ], [ %2450, %2466 ], [ %1698, %1703 ]
  %2535 = phi float [ %2451, %2445 ], [ %1699, %1999 ], [ %1699, %1691 ], [ %2451, %2515 ], [ %2451, %2513 ], [ %2451, %2481 ], [ %2451, %2466 ], [ %1699, %1703 ]
  %2536 = phi float [ %2452, %2445 ], [ %1700, %1999 ], [ %1700, %1691 ], [ %2452, %2515 ], [ %2452, %2513 ], [ %2452, %2481 ], [ %2452, %2466 ], [ %1700, %1703 ]
  %2537 = phi float [ %1701, %2445 ], [ %1701, %1999 ], [ %1701, %1691 ], [ %2526, %2515 ], [ %1701, %2513 ], [ %2512, %2481 ], [ %2478, %2466 ], [ %1701, %1703 ]
  %2538 = phi float [ %1702, %2445 ], [ %1702, %1999 ], [ %1702, %1691 ], [ %2523, %2515 ], [ %1702, %2513 ], [ %2489, %2481 ], [ %2475, %2466 ], [ %1702, %1703 ]
  br i1 %353, label %3363, label %2539

; <label>:2539                                    ; preds = %2527
  %2540 = icmp ult i32 %404, 4
  %2541 = add i32 %35, 72
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %35, 76
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = or i32 %2546, %2543
  %2548 = icmp eq i32 %2547, 0
  br i1 %2548, label %3363, label %2549

; <label>:2549                                    ; preds = %2539
  %2550 = and i32 %2543, 262144
  %2551 = icmp ne i32 %2550, 0
  %2552 = select i1 %2551, float %38, float 1.000000e+00
  %2553 = select i1 %2551, float %39, float 0.000000e+00
  %2554 = select i1 %2551, float %40, float 0.000000e+00
  %2555 = select i1 %2551, float %41, float 1.000000e+00
  %2556 = select i1 %2551, float %42, float %63
  %2557 = select i1 %2551, float %43, float %64
  %2558 = add i32 %35, 332
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = lshr i32 %2560, 16
  %2562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2561)  ; LegacyF16ToF32(value)
  %2563 = fmul fast float %2562, 0x3F50624DE0000000
  %2564 = add i32 %35, 136
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = lshr i32 %2566, 16
  %2568 = and i32 %2567, 255
  %2569 = lshr i32 %2566, 24
  %2570 = add i32 %35, 340
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 65535
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = lshr i32 %2572, 16
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = add i32 %35, 80
  %2578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2577, i32 undef)  ; BufferLoad(srv,index,wot)
  %2579 = extractvalue %dx.types.ResRet.i32 %2578, 0
  %2580 = lshr i32 %2579, 22
  %2581 = shl nuw nsw i32 %2580, 5
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = shl i32 %2579, 4
  %2584 = and i32 %2583, 32752
  %2585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2584)  ; LegacyF16ToF32(value)
  %2586 = lshr i32 %2579, 7
  %2587 = and i32 %2586, 32752
  %2588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2587)  ; LegacyF16ToF32(value)
  %2589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2590 = extractvalue %dx.types.CBufRet.f32 %2589, 3
  %2591 = fmul fast float %2590, 1.000000e+03
  %2592 = fmul fast float %343, %2591
  %2593 = call float @dx.op.unary.f32(i32 22, float %2592)  ; Frc(value)
  %2594 = fadd fast float %2593, %333
  %2595 = fmul fast float %344, %2591
  %2596 = call float @dx.op.unary.f32(i32 22, float %2595)  ; Frc(value)
  %2597 = fadd fast float %2596, %335
  %2598 = fmul fast float %2563, %2591
  %2599 = call float @dx.op.unary.f32(i32 22, float %2598)  ; Frc(value)
  %2600 = fmul fast float %2599, 0x401921FB60000000
  %2601 = fadd fast float %2600, %2582
  %2602 = call float @dx.op.unary.f32(i32 13, float %2601)  ; Sin(value)
  %2603 = call float @dx.op.unary.f32(i32 12, float %2601)  ; Cos(value)
  %2604 = fsub fast float -0.000000e+00, %2602
  %2605 = fadd fast float %2556, -5.000000e-01
  %2606 = fadd fast float %2557, -5.000000e-01
  %2607 = fmul fast float %2574, %2605
  %2608 = fmul fast float %2576, %2606
  %2609 = fadd fast float %2607, 5.000000e-01
  %2610 = fadd fast float %2608, 5.000000e-01
  %2611 = fmul fast float %2585, %2609
  %2612 = fmul fast float %2588, %2610
  %2613 = fmul fast float %2603, %2611
  %2614 = call float @dx.op.tertiary.f32(i32 46, float %2604, float %2612, float %2613)  ; FMad(a,b,c)
  %2615 = fmul fast float %2602, %2611
  %2616 = call float @dx.op.tertiary.f32(i32 46, float %2603, float %2612, float %2615)  ; FMad(a,b,c)
  %2617 = fadd fast float %2594, %2614
  %2618 = fadd fast float %2597, %2616
  %2619 = icmp ugt i32 %2568, 1
  %2620 = icmp ugt i32 %2566, 33554431
  %2621 = or i1 %2620, %2619
  br i1 %2621, label %2622, label %2647

; <label>:2622                                    ; preds = %2549
  %2623 = add i32 %35, 276
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = lshr i32 %2625, 16
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = fmul fast float %2590, %2627
  %2629 = call float @dx.op.unary.f32(i32 22, float %2628)  ; Frc(value)
  %2630 = mul nuw nsw i32 %2568, %2569
  %2631 = uitofp i32 %2630 to float
  %2632 = fmul fast float %2629, %2631
  %2633 = call float @dx.op.unary.f32(i32 27, float %2632)  ; Round_ni(value)
  %2634 = fptoui float %2633 to i32
  %2635 = urem i32 %2634, %2568
  %2636 = udiv i32 %2634, %2569
  %2637 = call float @dx.op.unary.f32(i32 22, float %2617)  ; Frc(value)
  %2638 = call float @dx.op.unary.f32(i32 22, float %2618)  ; Frc(value)
  %2639 = uitofp i32 %2635 to float
  %2640 = uitofp i32 %2636 to float
  %2641 = fadd fast float %2637, %2639
  %2642 = fadd fast float %2638, %2640
  %2643 = uitofp i32 %2568 to float
  %2644 = uitofp i32 %2569 to float
  %2645 = fdiv fast float %2641, %2643
  %2646 = fdiv fast float %2642, %2644
  br label %2647

; <label>:2647                                    ; preds = %2622, %2549
  %2648 = phi float [ %2645, %2622 ], [ %2617, %2549 ]
  %2649 = phi float [ %2646, %2622 ], [ %2618, %2549 ]
  %2650 = and i32 %2543, 16777216
  %2651 = icmp eq i32 %2650, 0
  br i1 %2651, label %2761, label %2652

; <label>:2652                                    ; preds = %2647
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.CBufRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.CBufRet.f32 %2653, 2
  %2657 = fadd fast float %2654, %134
  %2658 = fadd fast float %2655, %135
  %2659 = fadd fast float %2656, %136
  %2660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2661 = extractvalue %dx.types.CBufRet.f32 %2660, 0
  %2662 = call float @dx.op.unary.f32(i32 7, float %2661)  ; Saturate(value)
  %2663 = icmp eq i32 %36, 65535
  br i1 %2663, label %2758, label %2664

; <label>:2664                                    ; preds = %2652
  %2665 = lshr i32 %36, 1
  %2666 = shl i32 %2665, 2
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %36, 1
  %2670 = icmp ne i32 %2669, 0
  %2671 = lshr i32 %2668, 16
  %2672 = and i32 %2668, 65535
  %2673 = select i1 %2670, i32 %2671, i32 %2672
  %2674 = icmp eq i32 %2673, 65535
  br i1 %2674, label %2754, label %2675

; <label>:2675                                    ; preds = %2664
  %2676 = mul nuw nsw i32 %2673, 40
  %2677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.f32 %2677, 0
  %2679 = extractvalue %dx.types.ResRet.f32 %2677, 1
  %2680 = extractvalue %dx.types.ResRet.f32 %2677, 2
  %2681 = add nuw nsw i32 %2676, 12
  %2682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  %2684 = extractvalue %dx.types.ResRet.f32 %2682, 1
  %2685 = extractvalue %dx.types.ResRet.f32 %2682, 2
  %2686 = add nuw nsw i32 %2676, 24
  %2687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2686, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.ResRet.f32 %2687, 1
  %2690 = extractvalue %dx.types.ResRet.f32 %2687, 2
  %2691 = add nuw nsw i32 %2676, 36
  %2692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  %2694 = fsub fast float %2657, %2678
  %2695 = fsub fast float %2658, %2679
  %2696 = fsub fast float %2659, %2680
  %2697 = fmul fast float %2693, %2694
  %2698 = fmul fast float %2693, %2695
  %2699 = fmul fast float %2693, %2696
  %2700 = call float @dx.op.unary.f32(i32 27, float %2697)  ; Round_ni(value)
  %2701 = call float @dx.op.unary.f32(i32 27, float %2698)  ; Round_ni(value)
  %2702 = call float @dx.op.unary.f32(i32 27, float %2699)  ; Round_ni(value)
  %2703 = fadd fast float %2700, 5.000000e-01
  %2704 = fadd fast float %2701, 5.000000e-01
  %2705 = fadd fast float %2702, 5.000000e-01
  %2706 = fmul fast float %2703, %2683
  %2707 = fmul fast float %2704, %2684
  %2708 = fmul fast float %2705, %2685
  %2709 = shl i32 %36, 2
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = add i32 %2711, 0
  %2713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2712, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2714 = call float @dx.op.unary.f32(i32 22, float %2706)  ; Frc(value)
  %2715 = call float @dx.op.unary.f32(i32 22, float %2707)  ; Frc(value)
  %2716 = call float @dx.op.unary.f32(i32 22, float %2708)  ; Frc(value)
  %2717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2713, %dx.types.Handle %30, float %2714, float %2715, float %2716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2718 = extractvalue %dx.types.ResRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.ResRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.ResRet.f32 %2717, 2
  %2721 = fmul fast float %2718, 1.023000e+03
  %2722 = fmul fast float %2719, 1.023000e+03
  %2723 = fmul fast float %2720, 1.023000e+03
  %2724 = fadd fast float %2721, 5.000000e-01
  %2725 = fadd fast float %2722, 5.000000e-01
  %2726 = fadd fast float %2723, 5.000000e-01
  %2727 = call float @dx.op.unary.f32(i32 27, float %2724)  ; Round_ni(value)
  %2728 = call float @dx.op.unary.f32(i32 27, float %2725)  ; Round_ni(value)
  %2729 = call float @dx.op.unary.f32(i32 27, float %2726)  ; Round_ni(value)
  %2730 = fsub fast float %2697, %2700
  %2731 = fsub fast float %2698, %2701
  %2732 = fsub fast float %2699, %2702
  %2733 = fmul fast float %2730, 7.500000e-01
  %2734 = fmul fast float %2731, 7.500000e-01
  %2735 = fmul fast float %2732, 7.500000e-01
  %2736 = fadd fast float %2700, 1.250000e-01
  %2737 = fadd fast float %2736, %2733
  %2738 = fadd fast float %2737, %2727
  %2739 = fadd fast float %2701, 1.250000e-01
  %2740 = fadd fast float %2739, %2734
  %2741 = fadd fast float %2740, %2728
  %2742 = fadd fast float %2702, 1.250000e-01
  %2743 = fadd fast float %2742, %2735
  %2744 = fadd fast float %2743, %2729
  %2745 = fmul fast float %2738, %2688
  %2746 = fmul fast float %2741, %2689
  %2747 = fmul fast float %2744, %2690
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = add i32 %2749, 0
  %2751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2752 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2751, %dx.types.Handle %28, float %2745, float %2746, float %2747, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  br label %2754

; <label>:2754                                    ; preds = %2675, %2664
  %2755 = phi float [ %2753, %2675 ], [ -1.000000e+00, %2664 ]
  %2756 = fadd fast float %2755, %2662
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  br label %2758

; <label>:2758                                    ; preds = %2754, %2652
  %2759 = phi float [ %2757, %2754 ], [ %2662, %2652 ]
  %2760 = fmul fast float %2759, %399
  br label %2761

; <label>:2761                                    ; preds = %2758, %2647
  %2762 = phi float [ %2760, %2758 ], [ %399, %2647 ]
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = and i32 %2764, 256
  %2766 = icmp eq i32 %2765, 0
  br i1 %2766, label %2813, label %2767

; <label>:2767                                    ; preds = %2761
  %2768 = add i32 %35, 516
  %2769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.i32 %2769, 0
  %2771 = add i32 %2770, 0
  %2772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2772, %dx.types.Handle %72, float %2648, float %2649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = add i32 %35, 148
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2775, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = shl i32 %2777, 4
  %2779 = and i32 %2778, 32752
  %2780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2779)  ; LegacyF16ToF32(value)
  %2781 = lshr i32 %2777, 7
  %2782 = and i32 %2781, 32752
  %2783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2782)  ; LegacyF16ToF32(value)
  %2784 = fsub fast float 1.000000e+00, %2762
  %2785 = call float @dx.op.binary.f32(i32 35, float %2784, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2786 = bitcast float %2762 to i32
  %2787 = sitofp i32 %2786 to float
  %2788 = fadd fast float %2787, 0xC1CFBF8940000000
  %2789 = fmul fast float %2783, %2788
  %2790 = fadd fast float %2789, 0x41CFBF8940000000
  %2791 = fptosi float %2790 to i32
  %2792 = bitcast i32 %2791 to float
  %2793 = bitcast float %2785 to i32
  %2794 = sitofp i32 %2793 to float
  %2795 = fadd fast float %2794, 0xC1CFBF8940000000
  %2796 = fmul fast float %2795, %2783
  %2797 = fadd fast float %2796, 0x41CFBF8940000000
  %2798 = fptosi float %2797 to i32
  %2799 = bitcast i32 %2798 to float
  %2800 = fmul fast float %2792, %2780
  %2801 = fmul fast float %2799, %2780
  %2802 = fsub fast float %2785, %2800
  %2803 = fadd fast float %2801, %2785
  %2804 = call float @dx.op.unary.f32(i32 7, float %2802)  ; Saturate(value)
  %2805 = call float @dx.op.unary.f32(i32 7, float %2803)  ; Saturate(value)
  %2806 = fsub fast float %2774, %2804
  %2807 = fsub fast float %2805, %2804
  %2808 = bitcast float %2807 to i32
  %2809 = sub nsw i32 2129859010, %2808
  %2810 = bitcast i32 %2809 to float
  %2811 = fmul fast float %2810, %2806
  %2812 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  br label %2813

; <label>:2813                                    ; preds = %2767, %2761
  %2814 = phi float [ %2812, %2767 ], [ %2762, %2761 ]
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = and i32 %2816, 128
  %2818 = icmp eq i32 %2817, 0
  br i1 %2818, label %2835, label %2819

; <label>:2819                                    ; preds = %2813
  %2820 = add i32 %35, 500
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = add i32 %2822, 0
  %2824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2824, %dx.types.Handle %72, float %2648, float %2649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = and i32 %2828, 524288
  %2830 = icmp ne i32 %2829, 0
  %2831 = fcmp fast ogt float %2826, 0x3FE0101020000000
  %2832 = select i1 %2831, float 1.000000e+00, float 0.000000e+00
  %2833 = select i1 %2830, float %2832, float %2826
  %2834 = fmul fast float %2833, %2814
  br label %2835

; <label>:2835                                    ; preds = %2819, %2813
  %2836 = phi float [ %2834, %2819 ], [ %2814, %2813 ]
  %2837 = fcmp fast ult float %2836, 0x3F70101020000000
  br i1 %2837, label %3363, label %2838

; <label>:2838                                    ; preds = %2835
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = and i32 %2840, 16
  %2842 = icmp eq i32 %2841, 0
  br i1 %2842, label %3041, label %2843

; <label>:2843                                    ; preds = %2838
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = add i32 %35, 452
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = add i32 %2848, 0
  %2850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2851 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2850, %dx.types.Handle %71, float %2648, float %2649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2852 = extractvalue %dx.types.ResRet.f32 %2851, 0
  %2853 = extractvalue %dx.types.ResRet.f32 %2851, 1
  %2854 = extractvalue %dx.types.ResRet.f32 %2851, 2
  %2855 = extractvalue %dx.types.ResRet.f32 %2851, 3
  %2856 = and i32 %2845, 255
  %2857 = uitofp i32 %2856 to float
  %2858 = lshr i32 %2845, 8
  %2859 = and i32 %2858, 255
  %2860 = uitofp i32 %2859 to float
  %2861 = fmul fast float %2855, %2857
  %2862 = fadd fast float %2861, %2860
  %2863 = fmul fast float %2862, 0x3F70101000000000
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = and i32 %2865, 512
  %2867 = icmp eq i32 %2866, 0
  br i1 %2867, label %2876, label %2868

; <label>:2868                                    ; preds = %2843
  %2869 = add i32 %35, 544
  %2870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2869, i32 undef)  ; BufferLoad(srv,index,wot)
  %2871 = extractvalue %dx.types.ResRet.i32 %2870, 0
  %2872 = add i32 %2871, 0
  %2873 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2872, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2874 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2873, %dx.types.Handle %72, float %2648, float %2649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 0
  br label %2876

; <label>:2876                                    ; preds = %2868, %2843
  %2877 = phi float [ %2875, %2868 ], [ 1.000000e+00, %2843 ]
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 33554432
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %2988, label %2882

; <label>:2882                                    ; preds = %2876
  %2883 = add i32 %35, 272
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 65535
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = lshr i32 %2885, 16
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = add i32 %35, 276
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = and i32 %2892, 65535
  %2894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2893)  ; LegacyF16ToF32(value)
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = lshr i32 %2896, 24
  %2898 = uitofp i32 %2897 to float
  %2899 = fmul fast float %2898, 0x3F70101020000000
  %2900 = and i32 %2896, 255
  %2901 = uitofp i32 %2900 to float
  %2902 = fmul fast float %2901, 0x3F70101020000000
  %2903 = lshr i32 %2896, 8
  %2904 = and i32 %2903, 255
  %2905 = uitofp i32 %2904 to float
  %2906 = fmul fast float %2905, 0x3F70101020000000
  %2907 = lshr i32 %2896, 16
  %2908 = and i32 %2907, 255
  %2909 = uitofp i32 %2908 to float
  %2910 = fmul fast float %2909, 0x3F70101020000000
  %2911 = add i32 %35, 268
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = lshr i32 %2913, 24
  %2915 = uitofp i32 %2914 to float
  %2916 = fmul fast float %2915, 0x3F70101020000000
  %2917 = and i32 %2913, 255
  %2918 = uitofp i32 %2917 to float
  %2919 = fmul fast float %2918, 0x3F70101020000000
  %2920 = lshr i32 %2913, 8
  %2921 = and i32 %2920, 255
  %2922 = uitofp i32 %2921 to float
  %2923 = fmul fast float %2922, 0x3F70101020000000
  %2924 = lshr i32 %2913, 16
  %2925 = and i32 %2924, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = fmul fast float %2926, 0x3F70101020000000
  %2928 = bitcast float %2852 to i32
  %2929 = ashr i32 %2928, 1
  %2930 = sub nsw i32 1597463174, %2929
  %2931 = bitcast i32 %2930 to float
  %2932 = fmul fast float %2852, 5.000000e-01
  %2933 = fmul fast float %2931, %2931
  %2934 = fmul fast float %2933, %2932
  %2935 = fsub fast float 1.500000e+00, %2934
  %2936 = fmul fast float %2931, %2852
  %2937 = fmul fast float %2936, %2935
  %2938 = bitcast float %2853 to i32
  %2939 = ashr i32 %2938, 1
  %2940 = sub nsw i32 1597463174, %2939
  %2941 = bitcast i32 %2940 to float
  %2942 = fmul fast float %2853, 5.000000e-01
  %2943 = fmul fast float %2941, %2941
  %2944 = fmul fast float %2943, %2942
  %2945 = fsub fast float 1.500000e+00, %2944
  %2946 = fmul fast float %2941, %2853
  %2947 = fmul fast float %2946, %2945
  %2948 = bitcast float %2854 to i32
  %2949 = ashr i32 %2948, 1
  %2950 = sub nsw i32 1597463174, %2949
  %2951 = bitcast i32 %2950 to float
  %2952 = fmul fast float %2854, 5.000000e-01
  %2953 = fmul fast float %2951, %2951
  %2954 = fmul fast float %2953, %2952
  %2955 = fsub fast float 1.500000e+00, %2954
  %2956 = fmul fast float %2951, %2854
  %2957 = fmul fast float %2956, %2955
  %2958 = fsub fast float %2937, %2919
  %2959 = fsub fast float %2947, %2923
  %2960 = fsub fast float %2957, %2927
  %2961 = fmul fast float %2958, %2887
  %2962 = fmul fast float %2959, %2889
  %2963 = fmul fast float %2960, %2894
  %2964 = fadd fast float %2961, %2902
  %2965 = fadd fast float %2962, %2906
  %2966 = fadd fast float %2963, %2910
  %2967 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2968 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  %2969 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2970 = fmul fast float %2967, %2967
  %2971 = fmul fast float %2968, %2968
  %2972 = fmul fast float %2969, %2969
  %2973 = fsub fast float %2970, %2852
  %2974 = fsub fast float %2971, %2853
  %2975 = fsub fast float %2972, %2854
  %2976 = fmul fast float %2973, %2877
  %2977 = fmul fast float %2974, %2877
  %2978 = fmul fast float %2975, %2877
  %2979 = fadd fast float %2976, %2852
  %2980 = fadd fast float %2977, %2853
  %2981 = fadd fast float %2978, %2854
  %2982 = fadd fast float %2899, %2863
  %2983 = fsub fast float %2982, %2916
  %2984 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2985 = fsub fast float %2984, %2863
  %2986 = fmul fast float %2985, %2877
  %2987 = fadd fast float %2986, %2863
  br label %3041

; <label>:2988                                    ; preds = %2876
  %2989 = and i32 %2879, 134217728
  %2990 = icmp eq i32 %2989, 0
  br i1 %2990, label %3025, label %2991

; <label>:2991                                    ; preds = %2988
  %2992 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %2993 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %2994 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %2995 = fadd fast float %2992, -5.000000e-01
  %2996 = fadd fast float %2993, -5.000000e-01
  %2997 = fadd fast float %2994, -5.000000e-01
  %2998 = fmul fast float %2995, %2877
  %2999 = fmul fast float %2996, %2877
  %3000 = fmul fast float %2997, %2877
  %3001 = fadd fast float %2998, 5.000000e-01
  %3002 = fadd fast float %2999, 5.000000e-01
  %3003 = fadd fast float %3000, 5.000000e-01
  %3004 = call float @dx.op.unary.f32(i32 24, float %2852)  ; Sqrt(value)
  %3005 = call float @dx.op.unary.f32(i32 24, float %2853)  ; Sqrt(value)
  %3006 = call float @dx.op.unary.f32(i32 24, float %2854)  ; Sqrt(value)
  %3007 = fmul fast float %3001, 2.000000e+00
  %3008 = fsub fast float 1.000000e+00, %3007
  %3009 = fmul fast float %3008, %3004
  %3010 = fadd fast float %3009, %3007
  %3011 = fmul fast float %3010, %3004
  %3012 = fmul fast float %3002, 2.000000e+00
  %3013 = fsub fast float 1.000000e+00, %3012
  %3014 = fmul fast float %3013, %3005
  %3015 = fadd fast float %3014, %3012
  %3016 = fmul fast float %3015, %3005
  %3017 = fmul fast float %3003, 2.000000e+00
  %3018 = fsub fast float 1.000000e+00, %3017
  %3019 = fmul fast float %3018, %3006
  %3020 = fadd fast float %3019, %3017
  %3021 = fmul fast float %3020, %3006
  %3022 = fmul fast float %3011, %3011
  %3023 = fmul fast float %3016, %3016
  %3024 = fmul fast float %3021, %3021
  br label %3041

; <label>:3025                                    ; preds = %2988
  %3026 = fmul fast float %320, %320
  %3027 = fmul fast float %324, %324
  %3028 = fmul fast float %328, %328
  %3029 = fadd fast float %3026, -1.000000e+00
  %3030 = fadd fast float %3027, -1.000000e+00
  %3031 = fadd fast float %3028, -1.000000e+00
  %3032 = fmul fast float %2877, %3029
  %3033 = fmul fast float %2877, %3030
  %3034 = fmul fast float %2877, %3031
  %3035 = fadd fast float %3032, 1.000000e+00
  %3036 = fadd fast float %3033, 1.000000e+00
  %3037 = fadd fast float %3034, 1.000000e+00
  %3038 = fmul fast float %3035, %2852
  %3039 = fmul fast float %3036, %2853
  %3040 = fmul fast float %3037, %2854
  br label %3041

; <label>:3041                                    ; preds = %3025, %2991, %2882, %2838
  %3042 = phi float [ %2987, %2882 ], [ %2863, %2991 ], [ %2863, %3025 ], [ 0x3FA23C0BE0000000, %2838 ]
  %3043 = phi float [ %2979, %2882 ], [ %3022, %2991 ], [ %3038, %3025 ], [ 1.000000e+00, %2838 ]
  %3044 = phi float [ %2980, %2882 ], [ %3023, %2991 ], [ %3039, %3025 ], [ 1.000000e+00, %2838 ]
  %3045 = phi float [ %2981, %2882 ], [ %3024, %2991 ], [ %3040, %3025 ], [ 1.000000e+00, %2838 ]
  %3046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.i32 %3046, 1
  %3048 = and i32 %3047, 1
  %3049 = icmp ne i32 %3048, 0
  %3050 = add i32 %35, 356
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 32
  %3054 = icmp ne i32 %3053, 0
  %3055 = and i1 %3049, %3054
  %3056 = select i1 %3055, float 1.000000e+00, float %3043
  %3057 = select i1 %3055, float 0x3FD3333340000000, float %3044
  %3058 = select i1 %3055, float 0x3FD3333340000000, float %3045
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = and i32 %3060, 32
  %3062 = icmp eq i32 %3061, 0
  br i1 %3062, label %3135, label %3063

; <label>:3063                                    ; preds = %3041
  %3064 = add i32 %35, 140
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = add i32 %35, 468
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = add i32 %3069, 0
  %3071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3071, %dx.types.Handle %71, float %2648, float %2649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.ResRet.f32 %3072, 1
  %3075 = extractvalue %dx.types.ResRet.f32 %3072, 2
  %3076 = extractvalue %dx.types.ResRet.f32 %3072, 3
  %3077 = and i32 %3066, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = lshr i32 %3066, 8
  %3080 = and i32 %3079, 255
  %3081 = uitofp i32 %3080 to float
  %3082 = lshr i32 %3066, 16
  %3083 = and i32 %3082, 255
  %3084 = uitofp i32 %3083 to float
  %3085 = fmul fast float %3084, 0x3F70101000000000
  %3086 = fmul fast float %3073, %3078
  %3087 = fadd fast float %3086, %3081
  %3088 = fmul fast float %3087, 0x3F70101000000000
  %3089 = fadd fast float %3074, -5.000000e-01
  %3090 = fadd fast float %3076, -5.000000e-01
  %3091 = fmul fast float %3089, %3085
  %3092 = fmul fast float %3090, %3085
  %3093 = fadd fast float %3091, 5.000000e-01
  %3094 = fadd fast float %3092, 5.000000e-01
  %3095 = fmul fast float %3093, 2.000000e+00
  %3096 = fadd fast float %3095, -1.000000e+00
  %3097 = fmul fast float %3094, 2.000000e+00
  %3098 = fadd fast float %3097, -1.000000e+00
  %3099 = fadd fast float %3096, %3098
  %3100 = fmul fast float %3099, 5.000000e-01
  %3101 = fsub fast float %3096, %3098
  %3102 = fmul fast float %3101, 5.000000e-01
  %3103 = call float @dx.op.unary.f32(i32 6, float %3100)  ; FAbs(value)
  %3104 = fsub fast float 1.000000e+00, %3103
  %3105 = call float @dx.op.unary.f32(i32 6, float %3102)  ; FAbs(value)
  %3106 = fsub fast float %3104, %3105
  %3107 = call float @dx.op.dot3.f32(i32 55, float %3100, float %3102, float %3106, float %3100, float %3102, float %3106)  ; Dot3(ax,ay,az,bx,by,bz)
  %3108 = call float @dx.op.unary.f32(i32 25, float %3107)  ; Rsqrt(value)
  %3109 = fmul fast float %3100, %3108
  %3110 = fmul fast float %3102, %3108
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 67108864
  %3114 = icmp eq i32 %3113, 0
  br i1 %3114, label %3131, label %3115

; <label>:3115                                    ; preds = %3063
  %3116 = add i32 %35, 328
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = and i32 %3118, 65535
  %3120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3119)  ; LegacyF16ToF32(value)
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 65535
  %3124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3123)  ; LegacyF16ToF32(value)
  %3125 = lshr i32 %3118, 16
  %3126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3125)  ; LegacyF16ToF32(value)
  %3127 = fsub fast float %3088, %3126
  %3128 = fmul fast float %3127, %3120
  %3129 = fadd fast float %3128, %3124
  %3130 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  br label %3131

; <label>:3131                                    ; preds = %3115, %3063
  %3132 = phi float [ %3130, %3115 ], [ %3088, %3063 ]
  %3133 = call float @dx.op.dot2.f32(i32 54, float %3109, float %3110, float %2552, float %2553)  ; Dot2(ax,ay,bx,by)
  %3134 = call float @dx.op.dot2.f32(i32 54, float %3109, float %3110, float %2554, float %2555)  ; Dot2(ax,ay,bx,by)
  br label %3135

; <label>:3135                                    ; preds = %3131, %3041
  %3136 = phi float [ %3132, %3131 ], [ 0x3FD6666660000000, %3041 ]
  %3137 = phi float [ %3133, %3131 ], [ 0.000000e+00, %3041 ]
  %3138 = phi float [ %3134, %3131 ], [ 0.000000e+00, %3041 ]
  %3139 = phi float [ %3075, %3131 ], [ 1.000000e+00, %3041 ]
  %3140 = add i32 %35, 208
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = lshr i32 %3142, 22
  %3144 = shl nuw nsw i32 %3143, 5
  %3145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3144)  ; LegacyF16ToF32(value)
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = and i32 %3147, 64
  %3149 = icmp eq i32 %3148, 0
  br i1 %3149, label %3183, label %3150

; <label>:3150                                    ; preds = %3135
  %3151 = add i32 %35, 484
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3151, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = add i32 %3153, 0
  %3155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 131072
  %3159 = icmp eq i32 %3158, 0
  %3160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3155, %dx.types.Handle %71, float %2648, float %2649, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  %3162 = extractvalue %dx.types.ResRet.f32 %3160, 1
  %3163 = extractvalue %dx.types.ResRet.f32 %3160, 2
  %3164 = fmul fast float %3161, %308
  %3165 = fmul fast float %3162, %311
  %3166 = fmul fast float %3163, %314
  br i1 %3159, label %3173, label %3167

; <label>:3167                                    ; preds = %3150
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 0
  %3170 = fmul fast float %3169, %3164
  %3171 = fmul fast float %3169, %3165
  %3172 = fmul fast float %3169, %3166
  br label %3173

; <label>:3173                                    ; preds = %3167, %3150
  %3174 = phi float [ %3170, %3167 ], [ %3164, %3150 ]
  %3175 = phi float [ %3171, %3167 ], [ %3165, %3150 ]
  %3176 = phi float [ %3172, %3167 ], [ %3166, %3150 ]
  %3177 = fmul fast float %3174, %3145
  %3178 = select i1 %176, float %3177, float %3174
  %3179 = call float @dx.op.dot3.f32(i32 55, float %3178, float %3175, float %3176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3180 = select i1 %176, float 0.000000e+00, float %3174
  %3181 = select i1 %176, float %3179, float %3175
  %3182 = select i1 %176, float 0.000000e+00, float %3176
  br label %3183

; <label>:3183                                    ; preds = %3173, %3135
  %3184 = phi float [ %3180, %3173 ], [ 0.000000e+00, %3135 ]
  %3185 = phi float [ %3181, %3173 ], [ 0.000000e+00, %3135 ]
  %3186 = phi float [ %3182, %3173 ], [ 0.000000e+00, %3135 ]
  br i1 %2540, label %3187, label %3195

; <label>:3187                                    ; preds = %3183
  %3188 = fsub fast float 1.000000e+00, %2836
  %3189 = fmul fast float %3188, %2530
  %3190 = fmul fast float %3188, %2531
  %3191 = fmul fast float %3188, %2532
  %3192 = fmul fast float %3188, %2533
  %3193 = fmul fast float %3188, %2534
  %3194 = fmul fast float %3188, %2535
  br label %3195

; <label>:3195                                    ; preds = %3187, %3183
  %3196 = phi float [ %3189, %3187 ], [ %2530, %3183 ]
  %3197 = phi float [ %3190, %3187 ], [ %2531, %3183 ]
  %3198 = phi float [ %3191, %3187 ], [ %2532, %3183 ]
  %3199 = phi float [ %3192, %3187 ], [ %2533, %3183 ]
  %3200 = phi float [ %3193, %3187 ], [ %2534, %3183 ]
  %3201 = phi float [ %3194, %3187 ], [ %2535, %3183 ]
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %3203, 3
  %3205 = icmp eq i32 %3204, 3
  br i1 %3205, label %3281, label %3206

; <label>:3206                                    ; preds = %3195
  %3207 = and i32 %3203, 16
  %3208 = icmp ne i32 %3207, 0
  %3209 = select i1 %3208, float %2836, float 0.000000e+00
  %3210 = icmp eq i32 %3204, 0
  br i1 %3210, label %3211, label %3236

; <label>:3211                                    ; preds = %3206
  %3212 = and i32 %3203, 64
  %3213 = icmp ne i32 %3212, 0
  %3214 = select i1 %3213, float %2836, float 0.000000e+00
  %3215 = fsub fast float %3056, %3196
  %3216 = fsub fast float %3057, %3197
  %3217 = fsub fast float %3058, %3198
  %3218 = fmul fast float %3209, %3215
  %3219 = fmul fast float %3209, %3216
  %3220 = fmul fast float %3209, %3217
  %3221 = fadd fast float %3218, %3196
  %3222 = fadd fast float %3219, %3197
  %3223 = fadd fast float %3220, %3198
  %3224 = fsub fast float %3042, %2536
  %3225 = fmul fast float %3209, %3224
  %3226 = fadd fast float %3225, %2536
  %3227 = fsub fast float %3184, %3199
  %3228 = fsub fast float %3185, %3200
  %3229 = fsub fast float %3186, %3201
  %3230 = fmul fast float %3214, %3227
  %3231 = fmul fast float %3214, %3228
  %3232 = fmul fast float %3214, %3229
  %3233 = fadd fast float %3230, %3199
  %3234 = fadd fast float %3231, %3200
  %3235 = fadd fast float %3232, %3201
  br label %3281

; <label>:3236                                    ; preds = %3206
  %3237 = icmp eq i32 %3204, 1
  br i1 %3237, label %3238, label %3251

; <label>:3238                                    ; preds = %3236
  %3239 = fadd fast float %3056, -1.000000e+00
  %3240 = fadd fast float %3057, -1.000000e+00
  %3241 = fadd fast float %3058, -1.000000e+00
  %3242 = fmul fast float %3209, %3239
  %3243 = fmul fast float %3209, %3240
  %3244 = fmul fast float %3209, %3241
  %3245 = fadd fast float %3242, 1.000000e+00
  %3246 = fadd fast float %3243, 1.000000e+00
  %3247 = fadd fast float %3244, 1.000000e+00
  %3248 = fmul fast float %3245, %3196
  %3249 = fmul fast float %3246, %3197
  %3250 = fmul fast float %3247, %3198
  br label %3281

; <label>:3251                                    ; preds = %3236
  %3252 = icmp eq i32 %3204, 2
  br i1 %3252, label %3253, label %3281

; <label>:3253                                    ; preds = %3251
  %3254 = call float @dx.op.unary.f32(i32 24, float %3056)  ; Sqrt(value)
  %3255 = call float @dx.op.unary.f32(i32 24, float %3057)  ; Sqrt(value)
  %3256 = call float @dx.op.unary.f32(i32 24, float %3058)  ; Sqrt(value)
  %3257 = fadd fast float %3254, -5.000000e-01
  %3258 = fadd fast float %3255, -5.000000e-01
  %3259 = fadd fast float %3256, -5.000000e-01
  %3260 = fmul fast float %3257, %3209
  %3261 = fmul fast float %3258, %3209
  %3262 = fmul fast float %3259, %3209
  %3263 = fadd fast float %3260, 5.000000e-01
  %3264 = fadd fast float %3261, 5.000000e-01
  %3265 = fadd fast float %3262, 5.000000e-01
  %3266 = fmul fast float %3263, 2.000000e+00
  %3267 = fsub fast float 1.000000e+00, %3266
  %3268 = fmul fast float %3267, %3196
  %3269 = fadd fast float %3268, %3266
  %3270 = fmul fast float %3269, %3196
  %3271 = fmul fast float %3264, 2.000000e+00
  %3272 = fsub fast float 1.000000e+00, %3271
  %3273 = fmul fast float %3272, %3197
  %3274 = fadd fast float %3273, %3271
  %3275 = fmul fast float %3274, %3197
  %3276 = fmul fast float %3265, 2.000000e+00
  %3277 = fsub fast float 1.000000e+00, %3276
  %3278 = fmul fast float %3277, %3198
  %3279 = fadd fast float %3278, %3276
  %3280 = fmul fast float %3279, %3198
  br label %3281

; <label>:3281                                    ; preds = %3253, %3251, %3238, %3211, %3195
  %3282 = phi float [ %3196, %3195 ], [ %3270, %3253 ], [ %3196, %3251 ], [ %3248, %3238 ], [ %3221, %3211 ]
  %3283 = phi float [ %3197, %3195 ], [ %3275, %3253 ], [ %3197, %3251 ], [ %3249, %3238 ], [ %3222, %3211 ]
  %3284 = phi float [ %3198, %3195 ], [ %3280, %3253 ], [ %3198, %3251 ], [ %3250, %3238 ], [ %3223, %3211 ]
  %3285 = phi float [ %3199, %3195 ], [ %3199, %3253 ], [ %3199, %3251 ], [ %3199, %3238 ], [ %3233, %3211 ]
  %3286 = phi float [ %3200, %3195 ], [ %3200, %3253 ], [ %3200, %3251 ], [ %3200, %3238 ], [ %3234, %3211 ]
  %3287 = phi float [ %3201, %3195 ], [ %3201, %3253 ], [ %3201, %3251 ], [ %3201, %3238 ], [ %3235, %3211 ]
  %3288 = phi float [ %2536, %3195 ], [ %2536, %3253 ], [ %2536, %3251 ], [ %2536, %3238 ], [ %3226, %3211 ]
  %3289 = and i32 %3203, 12
  %3290 = icmp eq i32 %3289, 12
  br i1 %3290, label %3363, label %3291

; <label>:3291                                    ; preds = %3281
  %3292 = and i32 %3203, 2097184
  %3293 = icmp eq i32 %3292, 2097184
  %3294 = select i1 %3293, float %2836, float 0.000000e+00
  %3295 = and i32 %3203, 4194336
  %3296 = icmp eq i32 %3295, 4194336
  %3297 = select i1 %3296, float %2836, float 0.000000e+00
  %3298 = and i32 %3203, 8388640
  %3299 = icmp eq i32 %3298, 8388640
  %3300 = select i1 %3299, float %2836, float 0.000000e+00
  %3301 = icmp eq i32 %3289, 0
  br i1 %3301, label %3302, label %3315

; <label>:3302                                    ; preds = %3291
  %3303 = fsub fast float %3137, %2528
  %3304 = fsub fast float %3138, %2529
  %3305 = fmul fast float %3294, %3303
  %3306 = fmul fast float %3294, %3304
  %3307 = fadd fast float %3305, %2528
  %3308 = fadd fast float %3306, %2529
  %3309 = fsub fast float %3139, %2538
  %3310 = fmul fast float %3297, %3309
  %3311 = fadd fast float %3310, %2538
  %3312 = fsub fast float %3136, %2537
  %3313 = fmul fast float %3300, %3312
  %3314 = fadd fast float %3313, %2537
  br label %3363

; <label>:3315                                    ; preds = %3291
  %3316 = icmp eq i32 %3289, 4
  br i1 %3316, label %3317, label %3349

; <label>:3317                                    ; preds = %3315
  %3318 = fmul fast float %3294, %3137
  %3319 = fmul fast float %3294, %3138
  %3320 = fadd fast float %3318, %2528
  %3321 = fadd fast float %3319, %2529
  %3322 = call float @dx.op.binary.f32(i32 36, float %2538, float %3139)  ; FMin(a,b)
  %3323 = fsub fast float %3322, %2538
  %3324 = fmul fast float %3323, %3297
  %3325 = fadd fast float %3324, %2538
  %3326 = fadd fast float %3136, %2537
  %3327 = fmul fast float %3326, 0x3FF337FAE0000000
  %3328 = fmul fast float %2537, %2537
  %3329 = fmul fast float %3136, %3136
  %3330 = fadd fast float %3329, %3328
  %3331 = fmul fast float %3330, 0x3FE5152B00000000
  %3332 = fmul fast float %2537, 0xBFCC1F85E0000000
  %3333 = fmul fast float %3332, %3136
  %3334 = fadd fast float %3333, 0xBFE1363700000000
  %3335 = fadd fast float %3334, %3327
  %3336 = fsub fast float %3335, %3331
  %3337 = fmul fast float %3326, 0x3FBA6F0D00000000
  %3338 = fmul fast float %3330, 0x3FD0432880000000
  %3339 = fmul fast float %2537, 0xBFEF110800000000
  %3340 = fmul fast float %3339, %3136
  %3341 = fadd fast float %3340, 1.000000e+00
  %3342 = fsub fast float %3341, %3337
  %3343 = fadd fast float %3342, %3338
  %3344 = fdiv fast float %3336, %3343
  %3345 = call float @dx.op.unary.f32(i32 7, float %3344)  ; Saturate(value)
  %3346 = fsub fast float %3345, %2537
  %3347 = fmul fast float %3346, %3300
  %3348 = fadd fast float %3347, %2537
  br label %3363

; <label>:3349                                    ; preds = %3315
  %3350 = icmp eq i32 %3289, 8
  br i1 %3350, label %3351, label %3363

; <label>:3351                                    ; preds = %3349
  %3352 = fmul fast float %3294, %3137
  %3353 = fmul fast float %3294, %3138
  %3354 = fadd fast float %3352, %2528
  %3355 = fadd fast float %3353, %2529
  %3356 = call float @dx.op.binary.f32(i32 36, float %2538, float %3139)  ; FMin(a,b)
  %3357 = fsub fast float %3356, %2538
  %3358 = fmul fast float %3357, %3297
  %3359 = fadd fast float %3358, %2538
  %3360 = fsub fast float %3136, %2537
  %3361 = fmul fast float %3300, %3360
  %3362 = fadd fast float %3361, %2537
  br label %3363

; <label>:3363                                    ; preds = %3351, %3349, %3317, %3302, %3281, %2835, %2539, %2527
  %3364 = phi float [ %2528, %3281 ], [ %2528, %2835 ], [ %2528, %2527 ], [ %2528, %2539 ], [ %3307, %3302 ], [ %3320, %3317 ], [ %2528, %3349 ], [ %3354, %3351 ]
  %3365 = phi float [ %2529, %3281 ], [ %2529, %2835 ], [ %2529, %2527 ], [ %2529, %2539 ], [ %3308, %3302 ], [ %3321, %3317 ], [ %2529, %3349 ], [ %3355, %3351 ]
  %3366 = phi float [ %3282, %3281 ], [ %2530, %2835 ], [ %2530, %2527 ], [ %2530, %2539 ], [ %3282, %3302 ], [ %3282, %3317 ], [ %3282, %3349 ], [ %3282, %3351 ]
  %3367 = phi float [ %3283, %3281 ], [ %2531, %2835 ], [ %2531, %2527 ], [ %2531, %2539 ], [ %3283, %3302 ], [ %3283, %3317 ], [ %3283, %3349 ], [ %3283, %3351 ]
  %3368 = phi float [ %3284, %3281 ], [ %2532, %2835 ], [ %2532, %2527 ], [ %2532, %2539 ], [ %3284, %3302 ], [ %3284, %3317 ], [ %3284, %3349 ], [ %3284, %3351 ]
  %3369 = phi float [ %3285, %3281 ], [ %2533, %2835 ], [ %2533, %2527 ], [ %2533, %2539 ], [ %3285, %3302 ], [ %3285, %3317 ], [ %3285, %3349 ], [ %3285, %3351 ]
  %3370 = phi float [ %3286, %3281 ], [ %2534, %2835 ], [ %2534, %2527 ], [ %2534, %2539 ], [ %3286, %3302 ], [ %3286, %3317 ], [ %3286, %3349 ], [ %3286, %3351 ]
  %3371 = phi float [ %3287, %3281 ], [ %2535, %2835 ], [ %2535, %2527 ], [ %2535, %2539 ], [ %3287, %3302 ], [ %3287, %3317 ], [ %3287, %3349 ], [ %3287, %3351 ]
  %3372 = phi float [ %3288, %3281 ], [ %2536, %2835 ], [ %2536, %2527 ], [ %2536, %2539 ], [ %3288, %3302 ], [ %3288, %3317 ], [ %3288, %3349 ], [ %3288, %3351 ]
  %3373 = phi float [ %2537, %3281 ], [ %2537, %2835 ], [ %2537, %2527 ], [ %2537, %2539 ], [ %3314, %3302 ], [ %3348, %3317 ], [ %2537, %3349 ], [ %3362, %3351 ]
  %3374 = phi float [ %2538, %3281 ], [ %2538, %2835 ], [ %2538, %2527 ], [ %2538, %2539 ], [ %3311, %3302 ], [ %3325, %3317 ], [ %2538, %3349 ], [ %3359, %3351 ]
  %3375 = add i32 %35, 520
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = add i32 %3377, 0
  %3379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3379, %dx.types.Handle %72, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 0
  %3382 = add i32 %35, 524
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = add i32 %3384, 0
  %3386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3386, %dx.types.Handle %72, float %63, float %64, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 0
  %3389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3390 = extractvalue %dx.types.CBufRet.f32 %3389, 0
  %3391 = call float @dx.op.dot2.f32(i32 54, float %3364, float %3365, float %3364, float %3365)  ; Dot2(ax,ay,bx,by)
  %3392 = fmul fast float %3391, 0x3FE3333340000000
  %3393 = fsub fast float 1.000000e+00, %3392
  %3394 = call float @dx.op.dot3.f32(i32 55, float %3364, float %3365, float %3393, float %3364, float %3365, float %3393)  ; Dot3(ax,ay,az,bx,by,bz)
  %3395 = call float @dx.op.unary.f32(i32 25, float %3394)  ; Rsqrt(value)
  %3396 = fmul fast float %3395, %3364
  %3397 = fmul fast float %3395, %3365
  %3398 = fmul fast float %3393, %3395
  %3399 = fmul fast float %3398, %84
  %3400 = fmul fast float %3398, %86
  %3401 = fmul fast float %3398, %88
  %3402 = fmul fast float %3396, %56
  %3403 = fmul fast float %3396, %57
  %3404 = fmul fast float %3396, %58
  %3405 = fadd fast float %3399, %3402
  %3406 = fadd fast float %3400, %3403
  %3407 = fadd fast float %3401, %3404
  %3408 = fmul fast float %98, %3397
  %3409 = fmul fast float %99, %3397
  %3410 = fmul fast float %100, %3397
  %3411 = fadd fast float %3405, %3408
  %3412 = fadd fast float %3406, %3409
  %3413 = fadd fast float %3407, %3410
  %3414 = call float @dx.op.dot3.f32(i32 55, float %3411, float %3412, float %3413, float %3411, float %3412, float %3413)  ; Dot3(ax,ay,az,bx,by,bz)
  %3415 = call float @dx.op.unary.f32(i32 25, float %3414)  ; Rsqrt(value)
  %3416 = fmul fast float %3411, %3415
  %3417 = fmul fast float %3412, %3415
  %3418 = fmul fast float %3413, %3415
  %3419 = and i32 %37, 1
  %3420 = icmp eq i32 %3419, 0
  br i1 %3420, label %3421, label %3929

; <label>:3421                                    ; preds = %3363
  %3422 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3423 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3424 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3425 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3426 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3427 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3428 = fadd fast float %3422, %134
  %3429 = fadd fast float %3423, %135
  %3430 = fadd fast float %3424, %136
  %3431 = fadd fast float %3425, %134
  %3432 = fadd fast float %3426, %135
  %3433 = fadd fast float %3427, %136
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.CBufRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.CBufRet.f32 %3434, 2
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 2
  %3440 = extractvalue %dx.types.CBufRet.f32 %3438, 3
  %3441 = fmul fast float %3435, %75
  %3442 = fmul fast float %3441, %3439
  %3443 = fmul fast float %3436, %76
  %3444 = fmul fast float %3443, %3440
  %3445 = fptoui float %3442 to i32
  %3446 = fptoui float %3444 to i32
  %3447 = fadd fast float %3435, -1.000000e+00
  %3448 = fadd fast float %3436, -1.000000e+00
  %3449 = fptoui float %3447 to i32
  %3450 = fptoui float %3448 to i32
  %3451 = call i32 @dx.op.binary.i32(i32 40, i32 %3445, i32 %3449)  ; UMin(a,b)
  %3452 = call i32 @dx.op.binary.i32(i32 40, i32 %3446, i32 %3450)  ; UMin(a,b)
  %3453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.f32 %3453, 2
  %3455 = extractvalue %dx.types.CBufRet.f32 %3453, 3
  %3456 = fmul fast float %3454, %70
  %3457 = fsub fast float %3456, %3455
  %3458 = fadd fast float %3437, -1.000000e+00
  %3459 = call float @dx.op.binary.f32(i32 36, float %3457, float %3458)  ; FMin(a,b)
  %3460 = fptoui float %3459 to i32
  %3461 = fptoui float %3435 to i32
  %3462 = fptoui float %3436 to i32
  %3463 = mul i32 %3460, %3462
  %3464 = add i32 %3463, %3452
  %3465 = mul i32 %3464, %3461
  %3466 = add i32 %3465, %3451
  %3467 = shl i32 %3466, 2
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = and i32 %3469, 1023
  %3471 = lshr i32 %3469, 10
  %3472 = icmp eq i32 %3470, 0
  br i1 %3472, label %3898, label %3473

; <label>:3473                                    ; preds = %3421
  %3474 = and i32 %3469, 1023
  br label %3475

; <label>:3475                                    ; preds = %3601, %3473
  %3476 = phi i32 [ %3551, %3601 ], [ 0, %3473 ]
  %3477 = phi float [ %3602, %3601 ], [ 0.000000e+00, %3473 ]
  %3478 = phi float [ %3603, %3601 ], [ %3390, %3473 ]
  %3479 = phi float [ %3604, %3601 ], [ %3388, %3473 ]
  %3480 = phi float [ %3605, %3601 ], [ 0.000000e+00, %3473 ]
  %3481 = phi float [ %3606, %3601 ], [ 0.000000e+00, %3473 ]
  %3482 = phi float [ %3607, %3601 ], [ %3369, %3473 ]
  %3483 = phi float [ %3608, %3601 ], [ %3370, %3473 ]
  %3484 = phi float [ %3609, %3601 ], [ %3371, %3473 ]
  %3485 = phi float [ %3610, %3601 ], [ %3416, %3473 ]
  %3486 = phi float [ %3611, %3601 ], [ %3417, %3473 ]
  %3487 = phi float [ %3612, %3601 ], [ %3418, %3473 ]
  %3488 = phi float [ %3613, %3601 ], [ %3374, %3473 ]
  %3489 = phi float [ %3614, %3601 ], [ %3373, %3473 ]
  %3490 = phi float [ %3615, %3601 ], [ 0.000000e+00, %3473 ]
  %3491 = phi float [ %3616, %3601 ], [ %3372, %3473 ]
  %3492 = phi float [ %3617, %3601 ], [ %3366, %3473 ]
  %3493 = phi float [ %3618, %3601 ], [ %3367, %3473 ]
  %3494 = phi float [ %3619, %3601 ], [ %3368, %3473 ]
  %3495 = add nuw nsw i32 %3476, %3471
  %3496 = shl i32 %3495, 2
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3496, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = shl i32 %3498, 8
  %3500 = or i32 %3499, 48
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3503 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3504 = extractvalue %dx.types.ResRet.f32 %3501, 2
  %3505 = extractvalue %dx.types.ResRet.f32 %3501, 3
  %3506 = or i32 %3499, 64
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.i32 %3507, 1
  %3510 = or i32 %3499, 80
  %3511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 3
  %3514 = or i32 %3499, 96
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = extractvalue %dx.types.ResRet.f32 %3515, 3
  %3520 = or i32 %3499, 112
  %3521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.f32 %3521, 2
  %3523 = or i32 %3499, 128
  %3524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.ResRet.f32 %3524, 2
  %3528 = extractvalue %dx.types.ResRet.f32 %3524, 3
  %3529 = or i32 %3499, 144
  %3530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.f32 %3530, 0
  %3532 = extractvalue %dx.types.ResRet.f32 %3530, 1
  %3533 = extractvalue %dx.types.ResRet.f32 %3530, 2
  %3534 = extractvalue %dx.types.ResRet.f32 %3530, 3
  %3535 = or i32 %3499, 160
  %3536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3536, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3536, 2
  %3540 = extractvalue %dx.types.ResRet.f32 %3536, 3
  %3541 = or i32 %3499, 192
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = or i32 %3499, 208
  %3545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3547 = or i32 %3499, 248
  %3548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.ResRet.f32 %3548, 1
  %3551 = add nuw nsw i32 %3476, 1
  %3552 = bitcast float %3505 to i32
  %3553 = and i32 %3552, 512
  %3554 = icmp eq i32 %3553, 0
  %3555 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3499, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.ResRet.f32 %3555, 1
  %3558 = extractvalue %dx.types.ResRet.f32 %3555, 2
  %3559 = extractvalue %dx.types.ResRet.f32 %3555, 3
  %3560 = call float @dx.op.dot4.f32(i32 56, float %3556, float %3557, float %3558, float %3559, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3561 = or i32 %3499, 16
  %3562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3565 = extractvalue %dx.types.ResRet.f32 %3562, 2
  %3566 = extractvalue %dx.types.ResRet.f32 %3562, 3
  %3567 = call float @dx.op.dot4.f32(i32 56, float %3563, float %3564, float %3565, float %3566, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3568 = or i32 %3499, 32
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = extractvalue %dx.types.ResRet.f32 %3569, 3
  %3574 = call float @dx.op.dot4.f32(i32 56, float %3570, float %3571, float %3572, float %3573, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3575 = call float @dx.op.unary.f32(i32 27, float %3560)  ; Round_ni(value)
  %3576 = call float @dx.op.unary.f32(i32 6, float %3575)  ; FAbs(value)
  %3577 = call float @dx.op.unary.f32(i32 27, float %3567)  ; Round_ni(value)
  %3578 = call float @dx.op.unary.f32(i32 6, float %3577)  ; FAbs(value)
  %3579 = call float @dx.op.unary.f32(i32 6, float %3574)  ; FAbs(value)
  %3580 = call float @dx.op.unary.f32(i32 27, float %3579)  ; Round_ni(value)
  %3581 = fadd fast float %3578, %3576
  %3582 = fadd fast float %3581, %3580
  %3583 = fcmp fast oeq float %3582, 0.000000e+00
  %3584 = call float @dx.op.dot4.f32(i32 56, float %3556, float %3557, float %3558, float %3559, float %3428, float %3429, float %3430, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3585 = call float @dx.op.dot4.f32(i32 56, float %3563, float %3564, float %3565, float %3566, float %3428, float %3429, float %3430, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3586 = call float @dx.op.dot4.f32(i32 56, float %3556, float %3557, float %3558, float %3559, float %3431, float %3432, float %3433, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3587 = call float @dx.op.dot4.f32(i32 56, float %3563, float %3564, float %3565, float %3566, float %3431, float %3432, float %3433, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3588 = fsub fast float %3584, %3560
  %3589 = fsub fast float %3586, %3560
  %3590 = fsub fast float %3585, %3567
  %3591 = fsub fast float %3587, %3567
  %3592 = call float @dx.op.dot3.f32(i32 55, float %3502, float %3503, float %3504, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 2
  %3595 = fadd fast float %3594, %3592
  %3596 = call float @dx.op.unary.f32(i32 7, float %3595)  ; Saturate(value)
  %3597 = extractvalue %dx.types.CBufRet.f32 %3593, 0
  %3598 = fcmp fast ogt float %3596, %3597
  %3599 = and i1 %3583, %3598
  %3600 = and i1 %3554, %3599
  br i1 %3600, label %3621, label %3601

; <label>:3601                                    ; preds = %3884, %3702, %3621, %3475
  %3602 = phi float [ %3477, %3621 ], [ %3705, %3702 ], [ %3705, %3884 ], [ %3477, %3475 ]
  %3603 = phi float [ %3478, %3621 ], [ %3478, %3702 ], [ %3859, %3884 ], [ %3478, %3475 ]
  %3604 = phi float [ %3479, %3621 ], [ %3479, %3702 ], [ %3857, %3884 ], [ %3479, %3475 ]
  %3605 = phi float [ %3480, %3621 ], [ %3480, %3702 ], [ %3829, %3884 ], [ %3480, %3475 ]
  %3606 = phi float [ %3481, %3621 ], [ %3481, %3702 ], [ %3827, %3884 ], [ %3481, %3475 ]
  %3607 = phi float [ %3482, %3621 ], [ %3482, %3702 ], [ %3894, %3884 ], [ %3482, %3475 ]
  %3608 = phi float [ %3483, %3621 ], [ %3483, %3702 ], [ %3895, %3884 ], [ %3483, %3475 ]
  %3609 = phi float [ %3484, %3621 ], [ %3484, %3702 ], [ %3896, %3884 ], [ %3484, %3475 ]
  %3610 = phi float [ %3485, %3621 ], [ %3485, %3702 ], [ %3808, %3884 ], [ %3485, %3475 ]
  %3611 = phi float [ %3486, %3621 ], [ %3486, %3702 ], [ %3809, %3884 ], [ %3486, %3475 ]
  %3612 = phi float [ %3487, %3621 ], [ %3487, %3702 ], [ %3810, %3884 ], [ %3487, %3475 ]
  %3613 = phi float [ %3488, %3621 ], [ %3488, %3702 ], [ %3837, %3884 ], [ %3488, %3475 ]
  %3614 = phi float [ %3489, %3621 ], [ %3489, %3702 ], [ %3834, %3884 ], [ %3489, %3475 ]
  %3615 = phi float [ %3490, %3621 ], [ %3490, %3702 ], [ %3831, %3884 ], [ %3490, %3475 ]
  %3616 = phi float [ %3491, %3621 ], [ %3491, %3702 ], [ %3825, %3884 ], [ %3491, %3475 ]
  %3617 = phi float [ %3492, %3621 ], [ %3492, %3702 ], [ %3820, %3884 ], [ %3492, %3475 ]
  %3618 = phi float [ %3493, %3621 ], [ %3493, %3702 ], [ %3821, %3884 ], [ %3493, %3475 ]
  %3619 = phi float [ %3494, %3621 ], [ %3494, %3702 ], [ %3822, %3884 ], [ %3494, %3475 ]
  %3620 = icmp eq i32 %3551, %3474
  br i1 %3620, label %3897, label %3475

; <label>:3621                                    ; preds = %3475
  %3622 = extractvalue %dx.types.ResRet.f32 %3521, 3
  %3623 = extractvalue %dx.types.ResRet.f32 %3521, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3521, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3627 = extractvalue %dx.types.ResRet.i32 %3507, 3
  %3628 = extractvalue %dx.types.ResRet.i32 %3507, 2
  %3629 = add i32 %3627, 0
  %3630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3629, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3632 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3630, %dx.types.Handle %3631, float %3560, float %3567, float undef, float undef, i32 0, i32 0, i32 undef, float %3588, float %3590, float undef, float %3589, float %3591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = fmul fast float %3633, %3626
  %3635 = fadd fast float %3634, %3625
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3637 = fmul fast float %3560, %3516
  %3638 = call float @dx.op.tertiary.f32(i32 46, float %3517, float %3567, float %3637)  ; FMad(a,b,c)
  %3639 = fadd fast float %3638, %3624
  %3640 = fmul fast float %3560, %3518
  %3641 = call float @dx.op.tertiary.f32(i32 46, float %3519, float %3567, float %3640)  ; FMad(a,b,c)
  %3642 = fadd fast float %3641, %3623
  %3643 = fmul fast float %3588, %3516
  %3644 = call float @dx.op.tertiary.f32(i32 46, float %3517, float %3590, float %3643)  ; FMad(a,b,c)
  %3645 = fmul fast float %3588, %3518
  %3646 = call float @dx.op.tertiary.f32(i32 46, float %3519, float %3590, float %3645)  ; FMad(a,b,c)
  %3647 = fmul fast float %3589, %3516
  %3648 = call float @dx.op.tertiary.f32(i32 46, float %3517, float %3591, float %3647)  ; FMad(a,b,c)
  %3649 = fmul fast float %3589, %3518
  %3650 = call float @dx.op.tertiary.f32(i32 46, float %3519, float %3591, float %3649)  ; FMad(a,b,c)
  %3651 = add i32 %3628, 0
  %3652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3651, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3653 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3652, %dx.types.Handle %3631, float %3639, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float %3644, float %3646, float undef, float %3648, float %3650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = and i32 %3552, 1024
  %3656 = icmp ne i32 %3655, 0
  %3657 = fcmp fast ogt float %3654, 0x3FE0101020000000
  %3658 = uitofp i1 %3657 to float
  %3659 = select i1 %3656, float %3658, float %3654
  %3660 = and i32 %3552, 8192
  %3661 = icmp ne i32 %3660, 0
  %3662 = select i1 %3661, float %3622, float 1.000000e+00
  %3663 = fmul fast float %3560, 2.000000e+00
  %3664 = fadd fast float %3663, -1.000000e+00
  %3665 = call float @dx.op.unary.f32(i32 6, float %3664)  ; FAbs(value)
  %3666 = fmul fast float %3665, %3549
  %3667 = fsub fast float %3666, %3549
  %3668 = call float @dx.op.unary.f32(i32 7, float %3667)  ; Saturate(value)
  %3669 = fmul fast float %3567, 2.000000e+00
  %3670 = fadd fast float %3669, -1.000000e+00
  %3671 = call float @dx.op.unary.f32(i32 6, float %3670)  ; FAbs(value)
  %3672 = fmul fast float %3671, %3550
  %3673 = fsub fast float %3672, %3550
  %3674 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3675 = fmul fast float %3579, %3512
  %3676 = fsub fast float %3675, %3512
  %3677 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3678 = fmul fast float %3636, %3662
  %3679 = fmul fast float %3678, %3633
  %3680 = fmul fast float %3679, %3668
  %3681 = fmul fast float %3680, %3659
  %3682 = fmul fast float %3681, %3674
  %3683 = fmul fast float %3682, %3677
  %3684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3684, 1
  %3686 = extractvalue %dx.types.CBufRet.f32 %3684, 0
  %3687 = fsub fast float %3596, %3686
  %3688 = fmul fast float %3687, %3685
  %3689 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3690 = fmul fast float %3683, %3513
  %3691 = fadd fast float %3683, %3513
  %3692 = fmul fast float %3691, %3522
  %3693 = fsub fast float %3692, %3522
  %3694 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3695 = and i32 %3552, 128
  %3696 = icmp ne i32 %3695, 0
  %3697 = select i1 %3696, float %3694, float %3690
  %3698 = fmul fast float %3697, %3689
  %3699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3700 = extractvalue %dx.types.CBufRet.f32 %3699, 0
  %3701 = fcmp fast ugt float %3698, %3700
  br i1 %3701, label %3702, label %3601

; <label>:3702                                    ; preds = %3621
  %3703 = select i1 %3661, float %3698, float 0.000000e+00
  %3704 = fadd fast float %3703, %3477
  %3705 = call float @dx.op.unary.f32(i32 7, float %3704)  ; Saturate(value)
  br i1 %3661, label %3601, label %3706

; <label>:3706                                    ; preds = %3702
  %3707 = and i32 %3552, 4
  %3708 = and i32 %3552, 8
  %3709 = add i32 %3508, 0
  %3710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3709, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3712 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3710, %dx.types.Handle %3711, float %3639, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float %3644, float %3646, float undef, float %3648, float %3650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3715 = extractvalue %dx.types.ResRet.f32 %3712, 2
  %3716 = extractvalue %dx.types.ResRet.f32 %3712, 3
  %3717 = bitcast float %3534 to i32
  %3718 = and i32 %3717, 255
  %3719 = uitofp i32 %3718 to float
  %3720 = lshr i32 %3717, 8
  %3721 = and i32 %3720, 255
  %3722 = uitofp i32 %3721 to float
  %3723 = fmul fast float %3716, %3719
  %3724 = fadd fast float %3723, %3722
  %3725 = fmul fast float %3724, 0x3F70101000000000
  %3726 = add i32 %3509, 0
  %3727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3726, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3728 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3727, %dx.types.Handle %3711, float %3639, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float %3644, float %3646, float undef, float %3648, float %3650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3730 = extractvalue %dx.types.ResRet.f32 %3728, 1
  %3731 = extractvalue %dx.types.ResRet.f32 %3728, 2
  %3732 = extractvalue %dx.types.ResRet.f32 %3728, 3
  %3733 = bitcast float %3528 to i32
  %3734 = and i32 %3733, 255
  %3735 = uitofp i32 %3734 to float
  %3736 = lshr i32 %3733, 8
  %3737 = and i32 %3736, 255
  %3738 = uitofp i32 %3737 to float
  %3739 = lshr i32 %3733, 16
  %3740 = and i32 %3739, 255
  %3741 = uitofp i32 %3740 to float
  %3742 = fmul fast float %3741, 0x3F70101000000000
  %3743 = fmul fast float %3729, %3735
  %3744 = fadd fast float %3743, %3738
  %3745 = fmul fast float %3744, 0x3F70101000000000
  %3746 = fadd fast float %3730, -5.000000e-01
  %3747 = fadd fast float %3732, -5.000000e-01
  %3748 = fmul fast float %3746, %3742
  %3749 = fmul fast float %3747, %3742
  %3750 = fadd fast float %3748, 5.000000e-01
  %3751 = fadd fast float %3749, 5.000000e-01
  %3752 = fmul fast float %3713, %3537
  %3753 = fmul fast float %3714, %3538
  %3754 = fmul fast float %3715, %3539
  %3755 = fmul fast float %3750, 2.000000e+00
  %3756 = fadd fast float %3755, -1.000000e+00
  %3757 = fmul fast float %3751, 2.000000e+00
  %3758 = fadd fast float %3757, -1.000000e+00
  %3759 = fadd fast float %3756, %3758
  %3760 = fmul fast float %3759, 5.000000e-01
  %3761 = fsub fast float %3756, %3758
  %3762 = fmul fast float %3761, 5.000000e-01
  %3763 = call float @dx.op.unary.f32(i32 6, float %3760)  ; FAbs(value)
  %3764 = fsub fast float 1.000000e+00, %3763
  %3765 = call float @dx.op.unary.f32(i32 6, float %3762)  ; FAbs(value)
  %3766 = fsub fast float %3764, %3765
  %3767 = call float @dx.op.dot3.f32(i32 55, float %3760, float %3762, float %3766, float %3760, float %3762, float %3766)  ; Dot3(ax,ay,az,bx,by,bz)
  %3768 = call float @dx.op.unary.f32(i32 25, float %3767)  ; Rsqrt(value)
  %3769 = fmul fast float %3760, %3768
  %3770 = fmul fast float %3762, %3768
  %3771 = fmul fast float %3768, %3766
  %3772 = fmul fast float %3771, %3502
  %3773 = fmul fast float %3771, %3503
  %3774 = fmul fast float %3771, %3504
  %3775 = fmul fast float %3769, %3525
  %3776 = fmul fast float %3769, %3526
  %3777 = fmul fast float %3769, %3527
  %3778 = fadd fast float %3775, %3772
  %3779 = fadd fast float %3776, %3773
  %3780 = fadd fast float %3777, %3774
  %3781 = fmul fast float %3770, %3531
  %3782 = fmul fast float %3770, %3532
  %3783 = fmul fast float %3770, %3533
  %3784 = fadd fast float %3778, %3781
  %3785 = fadd fast float %3779, %3782
  %3786 = fadd fast float %3780, %3783
  %3787 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3785, float %3786, float %3784, float %3785, float %3786)  ; Dot3(ax,ay,az,bx,by,bz)
  %3788 = call float @dx.op.unary.f32(i32 25, float %3787)  ; Rsqrt(value)
  %3789 = fmul fast float %3784, %3788
  %3790 = fmul fast float %3785, %3788
  %3791 = fmul fast float %3786, %3788
  %3792 = icmp ne i32 %3708, 0
  %3793 = select i1 %3792, float 1.000000e+00, float 0.000000e+00
  %3794 = fmul fast float %3698, %3793
  %3795 = and i32 %3552, 1
  %3796 = icmp eq i32 %3795, 0
  br i1 %3796, label %3797, label %3801

; <label>:3797                                    ; preds = %3706
  %3798 = fsub fast float %3789, %3485
  %3799 = fsub fast float %3790, %3486
  %3800 = fsub fast float %3791, %3487
  br label %3801

; <label>:3801                                    ; preds = %3797, %3706
  %3802 = phi float [ %3798, %3797 ], [ %3789, %3706 ]
  %3803 = phi float [ %3799, %3797 ], [ %3790, %3706 ]
  %3804 = phi float [ %3800, %3797 ], [ %3791, %3706 ]
  %3805 = fmul float %3804, %3794
  %3806 = fmul float %3803, %3794
  %3807 = fmul float %3802, %3794
  %3808 = fadd fast float %3807, %3485
  %3809 = fadd fast float %3806, %3486
  %3810 = fadd fast float %3805, %3487
  %3811 = icmp ne i32 %3707, 0
  %3812 = select i1 %3811, float 1.000000e+00, float 0.000000e+00
  %3813 = fmul fast float %3698, %3812
  %3814 = fsub fast float %3752, %3492
  %3815 = fsub fast float %3753, %3493
  %3816 = fsub fast float %3754, %3494
  %3817 = fmul fast float %3814, %3813
  %3818 = fmul fast float %3815, %3813
  %3819 = fmul fast float %3816, %3813
  %3820 = fadd fast float %3817, %3492
  %3821 = fadd fast float %3818, %3493
  %3822 = fadd fast float %3819, %3494
  %3823 = fsub fast float %3725, %3491
  %3824 = fmul fast float %3823, %3813
  %3825 = fadd fast float %3824, %3491
  %3826 = fmul fast float %3813, %3481
  %3827 = fsub fast float %3481, %3826
  %3828 = fmul fast float %3813, %3480
  %3829 = fsub fast float %3480, %3828
  %3830 = fadd fast float %3698, %3490
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3832 = fsub fast float %3745, %3489
  %3833 = fmul fast float %3832, %3794
  %3834 = fadd fast float %3833, %3489
  %3835 = fsub fast float %3731, %3488
  %3836 = fmul fast float %3835, %3794
  %3837 = fadd fast float %3836, %3488
  %3838 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3753, float %3754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.CBufRet.f32 %3839, 1
  %3842 = fmul fast float %3841, %3838
  %3843 = fadd fast float %3842, %3840
  %3844 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3845 = bitcast float %3540 to i32
  %3846 = and i32 %3845, 65535
  %3847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3846)  ; LegacyF16ToF32(value)
  %3848 = lshr i32 %3845, 16
  %3849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3848)  ; LegacyF16ToF32(value)
  %3850 = fcmp fast oge float %3847, 0.000000e+00
  %3851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.f32 %3851, 0
  %3853 = select i1 %3850, float %3847, float %3852
  %3854 = fadd fast float %3853, %3849
  %3855 = fsub fast float %3844, %3479
  %3856 = fmul fast float %3855, %3698
  %3857 = fadd fast float %3856, %3479
  %3858 = fmul fast float %3854, %3698
  %3859 = call float @dx.op.binary.f32(i32 35, float %3478, float %3858)  ; FMax(a,b)
  %3860 = and i32 %3552, 16
  %3861 = icmp eq i32 %3860, 0
  br i1 %3861, label %3884, label %3862

; <label>:3862                                    ; preds = %3801
  %3863 = bitcast float %3546 to i32
  %3864 = add i32 %3543, 0
  %3865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3864, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3866 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3865, %dx.types.Handle %3711, float %3639, float %3642, float undef, float undef, i32 0, i32 0, i32 undef, float %3644, float %3646, float undef, float %3648, float %3650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3867 = extractvalue %dx.types.ResRet.f32 %3866, 0
  %3868 = extractvalue %dx.types.ResRet.f32 %3866, 1
  %3869 = extractvalue %dx.types.ResRet.f32 %3866, 2
  %3870 = and i32 %3863, 65535
  %3871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3870)  ; LegacyF16ToF32(value)
  %3872 = fmul fast float %3867, %3537
  %3873 = fmul fast float %3868, %3538
  %3874 = fmul fast float %3869, %3539
  %3875 = and i32 %3552, 16384
  %3876 = icmp ne i32 %3875, 0
  %3877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3878 = extractvalue %dx.types.CBufRet.f32 %3877, 0
  %3879 = select i1 %3876, float %3878, float 1.000000e+00
  %3880 = fmul fast float %3879, %3871
  %3881 = fmul fast float %3872, %3880
  %3882 = fmul fast float %3873, %3880
  %3883 = fmul fast float %3874, %3880
  br label %3884

; <label>:3884                                    ; preds = %3862, %3801
  %3885 = phi float [ %3881, %3862 ], [ 0.000000e+00, %3801 ]
  %3886 = phi float [ %3882, %3862 ], [ 0.000000e+00, %3801 ]
  %3887 = phi float [ %3883, %3862 ], [ 0.000000e+00, %3801 ]
  %3888 = fsub fast float %3885, %3482
  %3889 = fsub fast float %3886, %3483
  %3890 = fsub fast float %3887, %3484
  %3891 = fmul fast float %3888, %3698
  %3892 = fmul fast float %3889, %3698
  %3893 = fmul fast float %3890, %3698
  %3894 = fadd fast float %3891, %3482
  %3895 = fadd fast float %3892, %3483
  %3896 = fadd fast float %3893, %3484
  br label %3601

; <label>:3897                                    ; preds = %3601
  br label %3898

; <label>:3898                                    ; preds = %3897, %3421
  %3899 = phi float [ 0.000000e+00, %3421 ], [ %3602, %3897 ]
  %3900 = phi float [ %3390, %3421 ], [ %3603, %3897 ]
  %3901 = phi float [ %3388, %3421 ], [ %3604, %3897 ]
  %3902 = phi float [ 0.000000e+00, %3421 ], [ %3605, %3897 ]
  %3903 = phi float [ 0.000000e+00, %3421 ], [ %3606, %3897 ]
  %3904 = phi float [ %3369, %3421 ], [ %3607, %3897 ]
  %3905 = phi float [ %3370, %3421 ], [ %3608, %3897 ]
  %3906 = phi float [ %3371, %3421 ], [ %3609, %3897 ]
  %3907 = phi float [ %3416, %3421 ], [ %3610, %3897 ]
  %3908 = phi float [ %3417, %3421 ], [ %3611, %3897 ]
  %3909 = phi float [ %3418, %3421 ], [ %3612, %3897 ]
  %3910 = phi float [ %3374, %3421 ], [ %3613, %3897 ]
  %3911 = phi float [ %3373, %3421 ], [ %3614, %3897 ]
  %3912 = phi float [ 0.000000e+00, %3421 ], [ %3615, %3897 ]
  %3913 = phi float [ %3372, %3421 ], [ %3616, %3897 ]
  %3914 = phi float [ %3366, %3421 ], [ %3617, %3897 ]
  %3915 = phi float [ %3367, %3421 ], [ %3618, %3897 ]
  %3916 = phi float [ %3368, %3421 ], [ %3619, %3897 ]
  %3917 = call float @dx.op.dot3.f32(i32 55, float %3907, float %3908, float %3909, float %3907, float %3908, float %3909)  ; Dot3(ax,ay,az,bx,by,bz)
  %3918 = call float @dx.op.unary.f32(i32 25, float %3917)  ; Rsqrt(value)
  %3919 = fmul fast float %3918, %3907
  %3920 = fmul fast float %3918, %3908
  %3921 = fmul fast float %3918, %3909
  %3922 = fadd fast float %3912, %864
  %3923 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3924 = call float @dx.op.dot3.f32(i32 55, float %3919, float %3920, float %3921, float %3919, float %3920, float %3921)  ; Dot3(ax,ay,az,bx,by,bz)
  %3925 = call float @dx.op.unary.f32(i32 25, float %3924)  ; Rsqrt(value)
  %3926 = fmul fast float %3925, %3919
  %3927 = fmul fast float %3925, %3920
  %3928 = fmul fast float %3925, %3921
  br label %3929

; <label>:3929                                    ; preds = %3898, %3363
  %3930 = phi float [ %3926, %3898 ], [ %3416, %3363 ]
  %3931 = phi float [ %3927, %3898 ], [ %3417, %3363 ]
  %3932 = phi float [ %3928, %3898 ], [ %3418, %3363 ]
  %3933 = phi float [ %3904, %3898 ], [ %3369, %3363 ]
  %3934 = phi float [ %3905, %3898 ], [ %3370, %3363 ]
  %3935 = phi float [ %3906, %3898 ], [ %3371, %3363 ]
  %3936 = phi float [ %3914, %3898 ], [ %3366, %3363 ]
  %3937 = phi float [ %3915, %3898 ], [ %3367, %3363 ]
  %3938 = phi float [ %3916, %3898 ], [ %3368, %3363 ]
  %3939 = phi float [ %3913, %3898 ], [ %3372, %3363 ]
  %3940 = phi float [ %3923, %3898 ], [ %864, %3363 ]
  %3941 = phi float [ %3911, %3898 ], [ %3373, %3363 ]
  %3942 = phi float [ %3910, %3898 ], [ %3374, %3363 ]
  %3943 = phi float [ %3903, %3898 ], [ 0.000000e+00, %3363 ]
  %3944 = phi float [ %3902, %3898 ], [ 0.000000e+00, %3363 ]
  %3945 = phi float [ %3899, %3898 ], [ 0.000000e+00, %3363 ]
  %3946 = phi float [ %3900, %3898 ], [ %3390, %3363 ]
  %3947 = phi float [ %3901, %3898 ], [ %3388, %3363 ]
  %3948 = fadd fast float %3939, 0xBFB99999A0000000
  %3949 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3950 = fmul fast float %3949, 0x3FF1C71C80000000
  %3951 = call float @dx.op.binary.f32(i32 36, float %3939, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3952 = fsub fast float 1.000000e+00, %3950
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = fmul fast float %3953, %3936
  %3955 = fmul fast float %3953, %3937
  %3956 = fmul fast float %3953, %3938
  %3957 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3958 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3959 = call float @dx.op.unary.f32(i32 7, float %3956)  ; Saturate(value)
  %3960 = fmul fast float %3950, %3936
  %3961 = fmul fast float %3950, %3937
  %3962 = fmul fast float %3950, %3938
  %3963 = fadd fast float %3960, %3951
  %3964 = fadd fast float %3961, %3951
  %3965 = fadd fast float %3962, %3951
  %3966 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3967 = call float @dx.op.unary.f32(i32 7, float %3964)  ; Saturate(value)
  %3968 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3969 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3970 = fadd fast float %3936, %3381
  %3971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.i32 %3971, 3
  %3973 = and i32 %3972, 8
  %3974 = icmp ne i32 %3973, 0
  %3975 = call float @dx.op.binary.f32(i32 35, float %3957, float %3970)  ; FMax(a,b)
  %3976 = call float @dx.op.binary.f32(i32 35, float %3958, float %3970)  ; FMax(a,b)
  %3977 = call float @dx.op.binary.f32(i32 35, float %3959, float %3970)  ; FMax(a,b)
  %3978 = call float @dx.op.dot3.f32(i32 55, float %3957, float %3958, float %3959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = select i1 %176, float %3970, float %3957
  %3980 = select i1 %176, float %3978, float %3958
  %3981 = select i1 %176, float 1.000000e+00, float %3959
  %3982 = select i1 %3974, float %3975, float %3979
  %3983 = select i1 %3974, float %3976, float %3980
  %3984 = select i1 %3974, float %3977, float %3981
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3988 = extractvalue %dx.types.CBufRet.f32 %3985, 2
  %3989 = fadd fast float %3986, %134
  %3990 = fadd fast float %3987, %135
  %3991 = fadd fast float %3988, %136
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = extractvalue %dx.types.CBufRet.f32 %3992, 1
  %3995 = fsub fast float %3989, %3993
  %3996 = fsub fast float %3990, %3994
  %3997 = fmul fast float %3995, %3995
  %3998 = fmul fast float %3996, %3996
  %3999 = fadd fast float %3997, %3998
  %4000 = call float @dx.op.unary.f32(i32 24, float %3999)  ; Sqrt(value)
  %4001 = extractvalue %dx.types.CBufRet.f32 %3992, 2
  %4002 = fcmp fast olt float %4000, %4001
  br i1 %4002, label %4003, label %4070

; <label>:4003                                    ; preds = %3929
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 0
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4009 = extractvalue %dx.types.CBufRet.f32 %4008, 0
  %4010 = extractvalue %dx.types.CBufRet.f32 %4004, 1
  %4011 = extractvalue %dx.types.CBufRet.f32 %4006, 1
  %4012 = extractvalue %dx.types.CBufRet.f32 %4008, 1
  %4013 = extractvalue %dx.types.CBufRet.f32 %4004, 3
  %4014 = extractvalue %dx.types.CBufRet.f32 %4006, 3
  %4015 = extractvalue %dx.types.CBufRet.f32 %4008, 3
  %4016 = fadd fast float %4013, %3989
  %4017 = fadd fast float %4014, %3990
  %4018 = fadd fast float %4015, %3991
  %4019 = fmul fast float %4016, %4005
  %4020 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %4007, float %4019)  ; FMad(a,b,c)
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4009, float %4020)  ; FMad(a,b,c)
  %4022 = fmul fast float %4016, %4010
  %4023 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %4011, float %4022)  ; FMad(a,b,c)
  %4024 = call float @dx.op.tertiary.f32(i32 46, float %4018, float %4012, float %4023)  ; FMad(a,b,c)
  %4025 = fsub fast float %4021, %4013
  %4026 = fsub fast float %4024, %4014
  %4027 = fsub fast float %4025, %3993
  %4028 = fadd fast float %4027, %4001
  %4029 = fsub fast float %4026, %3994
  %4030 = fadd fast float %4029, %4001
  %4031 = extractvalue %dx.types.CBufRet.f32 %3992, 3
  %4032 = fmul fast float %4028, %4031
  %4033 = fmul fast float %4030, %4031
  %4034 = call float @dx.op.unary.f32(i32 7, float %4032)  ; Saturate(value)
  %4035 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4036 = fsub fast float 1.000000e+00, %4034
  %4037 = fsub fast float 1.000000e+00, %4035
  %4038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4039 = extractvalue %dx.types.ResRet.f32 %4038, 0
  %4040 = fcmp fast ugt float %4039, 0.000000e+00
  br i1 %4040, label %4041, label %4344

; <label>:4041                                    ; preds = %4003
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4044 = fmul fast float %4043, %4039
  %4045 = extractvalue %dx.types.CBufRet.f32 %4042, 3
  %4046 = fadd fast float %4045, %4044
  %4047 = extractvalue %dx.types.CBufRet.f32 %4008, 2
  %4048 = fadd fast float %4046, %4015
  %4049 = fmul fast float %4021, %4009
  %4050 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4012, float %4049)  ; FMad(a,b,c)
  %4051 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4047, float %4050)  ; FMad(a,b,c)
  %4052 = fsub fast float %4051, %4015
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 2
  %4055 = fsub fast float %4052, %4054
  %4056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4036, float %4037, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %4060, 2
  %4064 = fadd fast float %4061, %4057
  %4065 = fmul fast float %4064, 0x3F847AE140000000
  %4066 = fadd fast float %4062, %4058
  %4067 = fmul fast float %4066, 0x3F847AE140000000
  %4068 = fadd fast float %4063, %4059
  %4069 = fmul fast float %4068, 0x3F847AE140000000
  br label %4344

; <label>:4070                                    ; preds = %3929
  %4071 = and i32 %152, 1
  %4072 = icmp eq i32 %4071, 0
  br i1 %4072, label %4344, label %4073

; <label>:4073                                    ; preds = %4070
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4081 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4082 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4083 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4084 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4085 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4086 = fadd fast float %4083, %3989
  %4087 = fadd fast float %4084, %3990
  %4088 = fadd fast float %4085, %3991
  %4089 = fmul fast float %4086, %4075
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4077, float %4089)  ; FMad(a,b,c)
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4079, float %4090)  ; FMad(a,b,c)
  %4092 = fmul fast float %4086, %4080
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4081, float %4092)  ; FMad(a,b,c)
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %4082, float %4093)  ; FMad(a,b,c)
  %4095 = fsub fast float %4091, %4083
  %4096 = fsub fast float %4094, %4084
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4101 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.i32 %4104, 0
  %4106 = extractvalue %dx.types.CBufRet.i32 %4104, 1
  %4107 = udiv i32 %4106, %4105
  %4108 = fsub fast float %4095, %4098
  %4109 = fsub fast float %4096, %4099
  %4110 = call float @dx.op.binary.f32(i32 35, float %4108, float 0.000000e+00)  ; FMax(a,b)
  %4111 = call float @dx.op.binary.f32(i32 35, float %4109, float 0.000000e+00)  ; FMax(a,b)
  %4112 = call float @dx.op.binary.f32(i32 36, float %4110, float %4100)  ; FMin(a,b)
  %4113 = call float @dx.op.binary.f32(i32 36, float %4111, float %4101)  ; FMin(a,b)
  %4114 = add i32 %4105, -1
  %4115 = add i32 %4107, -1
  %4116 = fmul fast float %4112, %4103
  %4117 = fmul fast float %4113, %4103
  %4118 = fptoui float %4116 to i32
  %4119 = fptoui float %4117 to i32
  %4120 = call i32 @dx.op.binary.i32(i32 40, i32 %4118, i32 %4114)  ; UMin(a,b)
  %4121 = call i32 @dx.op.binary.i32(i32 40, i32 %4119, i32 %4115)  ; UMin(a,b)
  %4122 = mul i32 %4121, %4105
  %4123 = add i32 %4122, %4120
  %4124 = shl i32 %4123, 2
  %4125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.i32 %4125, 0
  %4127 = icmp eq i32 %4126, -1
  br i1 %4127, label %4344, label %4128

; <label>:4128                                    ; preds = %4073
  %4129 = mul i32 %4126, 148
  %4130 = add i32 %4129, 4
  %4131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4130, i32 undef)  ; BufferLoad(srv,index,wot)
  %4132 = extractvalue %dx.types.ResRet.f32 %4131, 0
  %4133 = add i32 %4129, 8
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = add i32 %4129, 36
  %4137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4136, i32 undef)  ; BufferLoad(srv,index,wot)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = add i32 %4129, 60
  %4140 = add i32 %4129, 92
  %4141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.i32 %4141, 0
  %4143 = add i32 %4129, 116
  %4144 = fsub fast float %4095, %4132
  %4145 = fsub fast float %4096, %4135
  %4146 = fmul fast float %4103, %4144
  %4147 = fmul fast float %4103, %4145
  %4148 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4149 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4150 = fsub fast float 1.000000e+00, %4149
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4153 = call float @dx.op.unary.f32(i32 83, float %4148)  ; DerivCoarseX(value)
  %4154 = call float @dx.op.unary.f32(i32 83, float %4150)  ; DerivCoarseX(value)
  %4155 = call float @dx.op.unary.f32(i32 84, float %4148)  ; DerivCoarseY(value)
  %4156 = call float @dx.op.unary.f32(i32 84, float %4150)  ; DerivCoarseY(value)
  %4157 = fmul fast float %4153, %4152
  %4158 = fmul fast float %4154, %4152
  %4159 = fmul fast float %4155, %4152
  %4160 = fmul fast float %4156, %4152
  %4161 = call float @dx.op.dot2.f32(i32 54, float %4159, float %4160, float %4159, float %4160)  ; Dot2(ax,ay,bx,by)
  %4162 = call float @dx.op.dot2.f32(i32 54, float %4157, float %4158, float %4157, float %4158)  ; Dot2(ax,ay,bx,by)
  %4163 = call float @dx.op.binary.f32(i32 35, float %4162, float %4161)  ; FMax(a,b)
  %4164 = call float @dx.op.unary.f32(i32 23, float %4163)  ; Log(value)
  %4165 = fmul fast float %4164, 5.000000e-01
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4168 = fadd fast float %4167, %4165
  %4169 = call float @dx.op.binary.f32(i32 35, float %4168, float 0.000000e+00)  ; FMax(a,b)
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 3
  %4172 = fadd fast float %4171, %4169
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4175 = fadd fast float %4172, %4174
  %4176 = add i32 %4142, 0
  %4177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4176, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4178 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4177, i32 0)  ; GetDimensions(handle,mipLevel)
  %4179 = extractvalue %dx.types.Dimensions %4178, 0
  %4180 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4179)  ; FirstbitLo(value)
  %4181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.i32 %4181, 1
  %4183 = sub nsw i32 %4182, %4180
  %4184 = sitofp i32 %4183 to float
  %4185 = fsub fast float %4175, %4184
  %4186 = call float @dx.op.binary.f32(i32 35, float %4185, float 0.000000e+00)  ; FMax(a,b)
  %4187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4177, %dx.types.Handle %27, float %4148, float %4150, float %4138, float undef, i32 0, i32 0, i32 undef, float %4186)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = fcmp ule float %4188, 0x3FE0101020000000
  %4190 = extractvalue %dx.types.CBufRet.i32 %4181, 0
  %4191 = and i32 %4190, 128
  %4192 = icmp ne i32 %4191, 0
  %4193 = and i1 %4189, %4192
  br i1 %4193, label %4344, label %4194

; <label>:4194                                    ; preds = %4128
  %4195 = add i32 %4129, 20
  %4196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4195, i32 undef)  ; BufferLoad(srv,index,wot)
  %4197 = extractvalue %dx.types.ResRet.f32 %4196, 0
  %4198 = add i32 %4129, 24
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = add i32 %4129, 40
  %4202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4201, i32 undef)  ; BufferLoad(srv,index,wot)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = add i32 %4129, 96
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 2
  %4209 = fmul fast float %4208, %4148
  %4210 = fmul fast float %4208, %4150
  %4211 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4212 = fadd fast float %4209, %4211
  %4213 = fadd fast float %4210, %4211
  %4214 = add i32 %4206, 0
  %4215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4216 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4215, i32 0)  ; GetDimensions(handle,mipLevel)
  %4217 = extractvalue %dx.types.Dimensions %4216, 0
  %4218 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4217)  ; FirstbitLo(value)
  %4219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.i32 %4219, 1
  %4221 = sub nsw i32 %4220, %4218
  %4222 = sitofp i32 %4221 to float
  %4223 = fsub fast float %4172, %4222
  %4224 = call float @dx.op.binary.f32(i32 35, float %4223, float 0.000000e+00)  ; FMax(a,b)
  %4225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4215, %dx.types.Handle %27, float %4212, float %4213, float %4203, float undef, i32 0, i32 0, i32 undef, float %4224)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = fmul fast float %4226, %4197
  %4228 = fadd fast float %4227, %4200
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.CBufRet.f32 %4229, 1
  %4232 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 3
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 3
  %4237 = extractvalue %dx.types.CBufRet.f32 %4229, 3
  %4238 = fadd fast float %4234, %4095
  %4239 = fadd fast float %4236, %4096
  %4240 = fadd fast float %4228, %4237
  %4241 = fmul fast float %4238, %4230
  %4242 = call float @dx.op.tertiary.f32(i32 46, float %4239, float %4231, float %4241)  ; FMad(a,b,c)
  %4243 = call float @dx.op.tertiary.f32(i32 46, float %4240, float %4232, float %4242)  ; FMad(a,b,c)
  %4244 = fsub fast float %4243, %4237
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 2
  %4247 = fsub fast float %4244, %4246
  %4248 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.i32 %4248, 0
  %4250 = call i32 @dx.op.binary.i32(i32 40, i32 %4126, i32 %4249)  ; UMin(a,b)
  %4251 = mul i32 %4250, 36
  %4252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4251, i32 undef)  ; BufferLoad(srv,index,wot)
  %4253 = extractvalue %dx.types.ResRet.i32 %4252, 0
  %4254 = add i32 %4251, 4
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = fmul fast float %4256, %4148
  %4258 = fmul fast float %4256, %4150
  %4259 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4260 = fadd fast float %4257, %4259
  %4261 = fadd fast float %4258, %4259
  %4262 = icmp eq i32 %4253, 0
  br i1 %4262, label %4331, label %4263

; <label>:4263                                    ; preds = %4194
  br label %4264

; <label>:4264                                    ; preds = %4321, %4263
  %4265 = phi float [ %4322, %4321 ], [ 0.000000e+00, %4263 ]
  %4266 = phi float [ %4323, %4321 ], [ 0.000000e+00, %4263 ]
  %4267 = phi float [ %4324, %4321 ], [ 0.000000e+00, %4263 ]
  %4268 = phi float [ %4325, %4321 ], [ 0.000000e+00, %4263 ]
  %4269 = phi float [ %4326, %4321 ], [ 0.000000e+00, %4263 ]
  %4270 = phi float [ %4327, %4321 ], [ 0.000000e+00, %4263 ]
  %4271 = phi i32 [ %4328, %4321 ], [ 0, %4263 ]
  %4272 = shl i32 %4271, 2
  %4273 = add i32 %4139, %4272
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = add i32 %4143, %4272
  %4277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.i32 %4277, 0
  %4279 = add i32 %4278, 0
  %4280 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4279, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4281 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4280, i32 0)  ; GetDimensions(handle,mipLevel)
  %4282 = extractvalue %dx.types.Dimensions %4281, 0
  %4283 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4282)  ; FirstbitLo(value)
  %4284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.i32 %4284, 1
  %4286 = sub nsw i32 %4285, %4283
  %4287 = sitofp i32 %4286 to float
  %4288 = fsub fast float %4172, %4287
  %4289 = call float @dx.op.binary.f32(i32 35, float %4288, float 0.000000e+00)  ; FMax(a,b)
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4280, %dx.types.Handle %27, float %4260, float %4261, float %4275, float undef, i32 0, i32 0, i32 undef, float %4289)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = fcmp fast ogt float %4291, 0.000000e+00
  br i1 %4292, label %4293, label %4321

; <label>:4293                                    ; preds = %4264
  %4294 = add i32 %4254, %4272
  %4295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4294, i32 undef)  ; BufferLoad(srv,index,wot)
  %4296 = extractvalue %dx.types.ResRet.i32 %4295, 0
  %4297 = and i32 %4296, 32767
  %4298 = mul nuw nsw i32 %4297, 928
  %4299 = add nuw nsw i32 %4298, 48
  %4300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = extractvalue %dx.types.ResRet.f32 %4300, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4300, 2
  %4304 = add nuw nsw i32 %4298, 60
  %4305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4305, 2
  %4309 = fmul fast float %4301, %4291
  %4310 = fmul fast float %4302, %4291
  %4311 = fmul fast float %4303, %4291
  %4312 = fadd fast float %4309, %4265
  %4313 = fadd fast float %4310, %4266
  %4314 = fadd fast float %4311, %4267
  %4315 = fmul fast float %4306, %4291
  %4316 = fmul fast float %4307, %4291
  %4317 = fmul fast float %4308, %4291
  %4318 = fadd fast float %4315, %4268
  %4319 = fadd fast float %4316, %4269
  %4320 = fadd fast float %4317, %4270
  br label %4321

; <label>:4321                                    ; preds = %4293, %4264
  %4322 = phi float [ %4312, %4293 ], [ %4265, %4264 ]
  %4323 = phi float [ %4313, %4293 ], [ %4266, %4264 ]
  %4324 = phi float [ %4314, %4293 ], [ %4267, %4264 ]
  %4325 = phi float [ %4318, %4293 ], [ %4268, %4264 ]
  %4326 = phi float [ %4319, %4293 ], [ %4269, %4264 ]
  %4327 = phi float [ %4320, %4293 ], [ %4270, %4264 ]
  %4328 = add nuw i32 %4271, 1
  %4329 = icmp eq i32 %4328, %4253
  br i1 %4329, label %4330, label %4264

; <label>:4330                                    ; preds = %4321
  br label %4331

; <label>:4331                                    ; preds = %4330, %4194
  %4332 = phi float [ 0.000000e+00, %4194 ], [ %4322, %4330 ]
  %4333 = phi float [ 0.000000e+00, %4194 ], [ %4323, %4330 ]
  %4334 = phi float [ 0.000000e+00, %4194 ], [ %4324, %4330 ]
  %4335 = phi float [ 0.000000e+00, %4194 ], [ %4325, %4330 ]
  %4336 = phi float [ 0.000000e+00, %4194 ], [ %4326, %4330 ]
  %4337 = phi float [ 0.000000e+00, %4194 ], [ %4327, %4330 ]
  %4338 = fadd fast float %4335, %4332
  %4339 = fmul fast float %4338, 0x3F847AE140000000
  %4340 = fadd fast float %4336, %4333
  %4341 = fmul fast float %4340, 0x3F847AE140000000
  %4342 = fadd fast float %4337, %4334
  %4343 = fmul fast float %4342, 0x3F847AE140000000
  br label %4344

; <label>:4344                                    ; preds = %4331, %4128, %4073, %4070, %4041, %4003
  %4345 = phi float [ %4055, %4041 ], [ -1.310720e+05, %4003 ], [ %4247, %4331 ], [ -1.310720e+05, %4073 ], [ -1.310720e+05, %4128 ], [ -1.310720e+05, %4070 ]
  %4346 = phi float [ %4065, %4041 ], [ 0.000000e+00, %4003 ], [ %4339, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4347 = phi float [ %4067, %4041 ], [ 0.000000e+00, %4003 ], [ %4341, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4348 = phi float [ %4069, %4041 ], [ 0.000000e+00, %4003 ], [ %4343, %4331 ], [ 0.000000e+00, %4073 ], [ 0.000000e+00, %4128 ], [ 0.000000e+00, %4070 ]
  %4349 = phi i1 [ true, %4041 ], [ false, %4003 ], [ true, %4331 ], [ false, %4073 ], [ false, %4128 ], [ false, %4070 ]
  %4350 = and i32 %152, 3
  %4351 = icmp eq i32 %4350, 1
  %4352 = select i1 %4351, float 1.000000e+00, float 0.000000e+00
  %4353 = fsub fast float %4345, %136
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = select i1 %4349, float %4354, float 1.000000e+00
  %4356 = fmul fast float %4355, %4352
  %4357 = icmp eq i32 %4350, 3
  %4358 = select i1 %4357, float 1.000000e+00, float %4356
  %4359 = call float @dx.op.binary.f32(i32 35, float %3945, float %4358)  ; FMax(a,b)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fcmp fast une float %4360, 0.000000e+00
  %4362 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4363 = call float @dx.op.unary.f32(i32 25, float %4362)  ; Rsqrt(value)
  br i1 %4361, label %4371, label %4364

; <label>:4364                                    ; preds = %4344
  %4365 = fmul fast float %4363, %134
  %4366 = fmul fast float %4363, %135
  %4367 = fmul fast float %4363, %136
  %4368 = fsub fast float -0.000000e+00, %4365
  %4369 = fsub fast float -0.000000e+00, %4366
  %4370 = fsub fast float -0.000000e+00, %4367
  br label %4539

; <label>:4371                                    ; preds = %4344
  %4372 = fmul fast float %134, %4363
  %4373 = fsub fast float -0.000000e+00, %4372
  %4374 = fmul fast float %135, %4363
  %4375 = fsub fast float -0.000000e+00, %4374
  %4376 = fmul fast float %136, %4363
  %4377 = fsub fast float -0.000000e+00, %4376
  %4378 = call float @dx.op.dot3.f32(i32 55, float %4373, float %4375, float %4377, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4379 = fmul fast float %4360, 2.500000e+00
  %4380 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4381 = fmul fast float %4360, 0x4013FFFFE0000000
  %4382 = fadd fast float %4381, 0xBFFFFFFFE0000000
  %4383 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4384 = fmul fast float %4360, 0x4004000020000000
  %4385 = fadd fast float %4384, 0xBFF8000040000000
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4387 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4388 = fmul fast float %3948, 1.000000e+01
  %4389 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4390 = fmul fast float %4389, 2.000000e+00
  %4391 = fsub fast float 3.000000e+00, %4390
  %4392 = fmul fast float %4389, %4389
  %4393 = fmul fast float %4392, %4391
  %4394 = fsub fast float 1.000000e+00, %4393
  %4395 = fsub fast float 0x3FE3333340000000, %3969
  %4396 = fmul fast float %4395, 0x400AAAAAA0000000
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = fmul fast float %4394, %4397
  %4399 = fmul fast float %3982, 0x3FEA2B8620000000
  %4400 = fmul fast float %3983, 0x3FEA2B8620000000
  %4401 = fmul fast float %3984, 0x3FEA2B8620000000
  %4402 = fadd fast float %4399, 0x3FC81DFBA0000000
  %4403 = fmul fast float %4402, %3982
  %4404 = fadd fast float %4403, 0x3F910E6020000000
  %4405 = fadd fast float %4400, 0x3FC81DFBA0000000
  %4406 = fmul fast float %4405, %3983
  %4407 = fadd fast float %4406, 0x3F910E6020000000
  %4408 = fadd fast float %4401, 0x3FC81DFBA0000000
  %4409 = fmul fast float %4408, %3984
  %4410 = fadd fast float %4409, 0x3F910E6020000000
  %4411 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4412 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4414 = fsub fast float %4411, %3982
  %4415 = fsub fast float %4412, %3983
  %4416 = fsub fast float %4413, %3984
  %4417 = fmul fast float %4414, %4387
  %4418 = fmul fast float %4417, %4398
  %4419 = fmul fast float %4415, %4387
  %4420 = fmul fast float %4419, %4398
  %4421 = fmul fast float %4416, %4387
  %4422 = fmul fast float %4421, %4398
  %4423 = fadd fast float %4418, %3982
  %4424 = fadd fast float %4420, %3983
  %4425 = fadd fast float %4422, %3984
  %4426 = fmul fast float %3942, %3942
  %4427 = fmul fast float %4426, %4426
  %4428 = fadd fast float %4383, 1.000000e+00
  %4429 = fsub fast float %4428, %4398
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = fsub fast float 1.000000e+00, %4427
  %4434 = call float @dx.op.binary.f32(i32 36, float %4430, float %4433)  ; FMin(a,b)
  %4435 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4436 = call float @dx.op.binary.f32(i32 35, float %4434, float %4435)  ; FMax(a,b)
  %4437 = fadd fast float %4432, 0xBFE4CCCCC0000000
  %4438 = fmul fast float %4437, 0x4006DB6DA0000000
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = fmul fast float %4439, 2.000000e+00
  %4441 = fsub fast float 3.000000e+00, %4440
  %4442 = bitcast float %3966 to i32
  %4443 = ashr i32 %4442, 1
  %4444 = add nsw i32 %4443, 532487669
  %4445 = bitcast i32 %4444 to float
  %4446 = fsub fast float 1.000000e+00, %4445
  %4447 = bitcast float %4446 to i32
  %4448 = sub nsw i32 2129859010, %4447
  %4449 = bitcast i32 %4448 to float
  %4450 = fmul fast float %4449, 2.000000e+00
  %4451 = bitcast float %3967 to i32
  %4452 = ashr i32 %4451, 1
  %4453 = add nsw i32 %4452, 532487669
  %4454 = bitcast i32 %4453 to float
  %4455 = fsub fast float 1.000000e+00, %4454
  %4456 = bitcast float %4455 to i32
  %4457 = sub nsw i32 2129859010, %4456
  %4458 = bitcast i32 %4457 to float
  %4459 = fmul fast float %4458, 2.000000e+00
  %4460 = bitcast float %3968 to i32
  %4461 = ashr i32 %4460, 1
  %4462 = add nsw i32 %4461, 532487669
  %4463 = bitcast i32 %4462 to float
  %4464 = fsub fast float 1.000000e+00, %4463
  %4465 = bitcast float %4464 to i32
  %4466 = sub nsw i32 2129859010, %4465
  %4467 = bitcast i32 %4466 to float
  %4468 = fmul fast float %4467, 2.000000e+00
  %4469 = fsub fast float 0x4002A9FBE0000000, %4450
  %4470 = fadd fast float %4450, 0x3FD54FDF00000000
  %4471 = bitcast float %4470 to i32
  %4472 = sub nsw i32 2129859010, %4471
  %4473 = bitcast i32 %4472 to float
  %4474 = fmul fast float %4473, %4469
  %4475 = fmul fast float %4474, %4474
  %4476 = fsub fast float 0x4002A9FBE0000000, %4459
  %4477 = fadd fast float %4459, 0x3FD54FDF00000000
  %4478 = bitcast float %4477 to i32
  %4479 = sub nsw i32 2129859010, %4478
  %4480 = bitcast i32 %4479 to float
  %4481 = fmul fast float %4480, %4476
  %4482 = fmul fast float %4481, %4481
  %4483 = fsub fast float 0x4002A9FBE0000000, %4468
  %4484 = fadd fast float %4468, 0x3FD54FDF00000000
  %4485 = bitcast float %4484 to i32
  %4486 = sub nsw i32 2129859010, %4485
  %4487 = bitcast i32 %4486 to float
  %4488 = fmul fast float %4487, %4483
  %4489 = fmul fast float %4488, %4488
  %4490 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4475)  ; FMax(a,b)
  %4491 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4482)  ; FMax(a,b)
  %4492 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4489)  ; FMax(a,b)
  %4493 = fsub fast float 1.000000e+00, %4378
  %4494 = fadd fast float %4493, %4394
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = fsub fast float 1.000000e+00, %4358
  %4497 = fmul fast float %4436, %4496
  %4498 = fmul fast float %4439, %4439
  %4499 = fmul fast float %4498, %4497
  %4500 = fmul fast float %4499, %4441
  %4501 = fmul fast float %4496, 0xBFE99999A0000000
  %4502 = fmul fast float %4501, %4387
  %4503 = fmul fast float %4502, %4398
  %4504 = fadd fast float %4503, 1.000000e+00
  %4505 = fadd fast float %3969, -1.000000e+00
  %4506 = fmul fast float %4504, %4505
  %4507 = fadd fast float %4506, 1.000000e+00
  %4508 = fsub fast float %4490, %3966
  %4509 = fsub fast float %4491, %3967
  %4510 = fsub fast float %4492, %3968
  %4511 = fmul fast float %4500, %4508
  %4512 = fmul fast float %4500, %4509
  %4513 = fmul fast float %4500, %4510
  %4514 = fadd fast float %4511, %3966
  %4515 = fadd fast float %4512, %3967
  %4516 = fadd fast float %4513, %3968
  %4517 = fsub fast float %84, %3930
  %4518 = fsub fast float %86, %3931
  %4519 = fsub fast float %88, %3932
  %4520 = fmul fast float %4500, %4517
  %4521 = fmul fast float %4500, %4518
  %4522 = fmul fast float %4500, %4519
  %4523 = fadd fast float %4520, %3930
  %4524 = fadd fast float %4521, %3931
  %4525 = fadd fast float %4522, %3932
  %4526 = fmul fast float %4500, %4495
  %4527 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4528 = fsub fast float 1.000000e+00, %4527
  %4529 = fmul fast float %4526, %4528
  %4530 = fadd fast float %4529, %4527
  %4531 = fsub fast float 1.000000e+00, %3942
  %4532 = fmul fast float %4500, %4531
  %4533 = fadd fast float %4532, %3942
  %4534 = call float @dx.op.dot3.f32(i32 55, float %4523, float %4524, float %4525, float %4523, float %4524, float %4525)  ; Dot3(ax,ay,az,bx,by,bz)
  %4535 = call float @dx.op.unary.f32(i32 25, float %4534)  ; Rsqrt(value)
  %4536 = fmul fast float %4523, %4535
  %4537 = fmul fast float %4524, %4535
  %4538 = fmul fast float %4525, %4535
  br label %4539

; <label>:4539                                    ; preds = %4371, %4364
  %4540 = phi float [ %4370, %4364 ], [ %4377, %4371 ]
  %4541 = phi float [ %4369, %4364 ], [ %4375, %4371 ]
  %4542 = phi float [ %4368, %4364 ], [ %4373, %4371 ]
  %4543 = phi float [ %4367, %4364 ], [ %4376, %4371 ]
  %4544 = phi float [ %4366, %4364 ], [ %4374, %4371 ]
  %4545 = phi float [ %4365, %4364 ], [ %4372, %4371 ]
  %4546 = phi float [ %3982, %4364 ], [ %4423, %4371 ]
  %4547 = phi float [ %3983, %4364 ], [ %4424, %4371 ]
  %4548 = phi float [ %3984, %4364 ], [ %4425, %4371 ]
  %4549 = phi float [ %3930, %4364 ], [ %4536, %4371 ]
  %4550 = phi float [ %3931, %4364 ], [ %4537, %4371 ]
  %4551 = phi float [ %3932, %4364 ], [ %4538, %4371 ]
  %4552 = phi float [ %3966, %4364 ], [ %4514, %4371 ]
  %4553 = phi float [ %3967, %4364 ], [ %4515, %4371 ]
  %4554 = phi float [ %3968, %4364 ], [ %4516, %4371 ]
  %4555 = phi float [ %3969, %4364 ], [ %4530, %4371 ]
  %4556 = phi float [ %3942, %4364 ], [ %4533, %4371 ]
  %4557 = select i1 %176, float 0.000000e+00, float %4554
  %4558 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %4542, float %4541, float %4540)  ; Dot3(ax,ay,az,bx,by,bz)
  %4559 = call float @dx.op.unary.f32(i32 7, float %4558)  ; Saturate(value)
  %4560 = call float @dx.op.dot3.f32(i32 55, float %4545, float %4544, float %4543, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4561 = fmul fast float %4560, 2.000000e+00
  %4562 = fmul fast float %4561, %4549
  %4563 = fmul fast float %4561, %4550
  %4564 = fmul fast float %4561, %4551
  %4565 = fsub fast float %4545, %4562
  %4566 = fsub fast float %4544, %4563
  %4567 = fsub fast float %4543, %4564
  %4568 = call float @dx.op.binary.f32(i32 36, float %4556, float 1.000000e+00)  ; FMin(a,b)
  %4569 = fsub fast float 1.000000e+00, %4556
  %4570 = bitcast float %4569 to i32
  %4571 = sub nsw i32 2129859010, %4570
  %4572 = bitcast i32 %4571 to float
  %4573 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4574 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4575 = fcmp fast oeq float %4574, 0.000000e+00
  %4576 = fcmp fast oeq float %4573, 0.000000e+00
  %4577 = or i1 %4576, %4575
  br i1 %4577, label %4607, label %4578

; <label>:4578                                    ; preds = %4539
  %4579 = fsub fast float -0.000000e+00, %55
  %4580 = fsub fast float -0.000000e+00, %53
  %4581 = call float @dx.op.unary.f32(i32 24, float %4574)  ; Sqrt(value)
  %4582 = fdiv fast float %4581, %4573
  %4583 = fcmp fast ogt float %4582, 0x3FFB6F8900000000
  %4584 = select i1 %4583, float 0x3FFB6F8900000000, float %4582
  %4585 = fmul fast float %4584, 0x3FE8A23460000000
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = call float @dx.op.binary.f32(i32 35, float %4584, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4588 = fmul fast float %4586, %4573
  %4589 = fmul fast float %4587, 0x3FF279A740000000
  %4590 = fadd fast float %4589, -1.000000e+00
  %4591 = call float @dx.op.dot3.f32(i32 55, float %4579, float %4580, float %54, float %4579, float %4580, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = call float @dx.op.unary.f32(i32 25, float %4591)  ; Rsqrt(value)
  %4593 = fmul fast float %4592, %4579
  %4594 = fmul fast float %4592, %4580
  %4595 = fmul fast float %4592, %54
  %4596 = fmul fast float %4590, %4590
  %4597 = fsub fast float 1.000000e+00, %4596
  %4598 = fmul fast float %4587, 0x40005F8BE0000000
  %4599 = fsub fast float 0x400C5BF8A0000000, %4598
  %4600 = fdiv fast float %4588, %4599
  %4601 = fmul fast float %4600, 0x3FEE31C3C0000000
  %4602 = fmul fast float %4601, %4597
  %4603 = fmul fast float %4587, 0x3FDACB7480000000
  %4604 = fadd fast float %4603, 0xBFD7347680000000
  %4605 = fmul fast float %4604, %4600
  %4606 = fmul fast float %4605, %4597
  br label %4607

; <label>:4607                                    ; preds = %4578, %4539
  %4608 = phi float [ %4593, %4578 ], [ 0.000000e+00, %4539 ]
  %4609 = phi float [ %4594, %4578 ], [ 0.000000e+00, %4539 ]
  %4610 = phi float [ %4595, %4578 ], [ 0.000000e+00, %4539 ]
  %4611 = phi float [ %4602, %4578 ], [ 0.000000e+00, %4539 ]
  %4612 = phi float [ %4606, %4578 ], [ 0.000000e+00, %4539 ]
  %4613 = call float @dx.op.dot3.f32(i32 55, float %4608, float %4609, float %4610, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4614 = fmul fast float %4613, %4613
  %4615 = fmul fast float %4614, 0x3FEE471020000000
  %4616 = fadd fast float %4615, 0xBFD42F6020000000
  %4617 = fmul fast float %4573, 0x3FD20DD760000000
  %4618 = fmul fast float %4616, %4612
  %4619 = fmul fast float %4611, 0x3FDF454380000000
  %4620 = fmul fast float %4619, %4613
  %4621 = fadd fast float %4620, %4617
  %4622 = fadd fast float %4621, %4618
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4608, float %4609, float %4610, float %4565, float %4566, float %4567)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = fmul fast float %4623, 0x3FDF454380000000
  %4625 = fmul fast float %4623, %4623
  %4626 = fmul fast float %4625, 0x3FEE471020000000
  %4627 = fadd fast float %4626, 0xBFD42F6020000000
  %4628 = call float @dx.op.dot3.f32(i32 55, float %4573, float %4611, float %4612, float 0x3FD20DD760000000, float %4624, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4630 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4631 = fcmp fast oeq float %4630, 0.000000e+00
  %4632 = fcmp fast oeq float %4629, 0.000000e+00
  %4633 = or i1 %4632, %4631
  br i1 %4633, label %4663, label %4634

; <label>:4634                                    ; preds = %4607
  %4635 = fsub fast float -0.000000e+00, %51
  %4636 = fsub fast float -0.000000e+00, %49
  %4637 = call float @dx.op.unary.f32(i32 24, float %4630)  ; Sqrt(value)
  %4638 = fdiv fast float %4637, %4629
  %4639 = fcmp fast ogt float %4638, 0x3FFB6F8900000000
  %4640 = select i1 %4639, float 0x3FFB6F8900000000, float %4638
  %4641 = fmul fast float %4640, 0x3FE8A23460000000
  %4642 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4643 = call float @dx.op.binary.f32(i32 35, float %4640, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4644 = fmul fast float %4642, %4629
  %4645 = fmul fast float %4643, 0x3FF279A740000000
  %4646 = fadd fast float %4645, -1.000000e+00
  %4647 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %50, float %4635, float %4636, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = call float @dx.op.unary.f32(i32 25, float %4647)  ; Rsqrt(value)
  %4649 = fmul fast float %4648, %4635
  %4650 = fmul fast float %4648, %4636
  %4651 = fmul fast float %4648, %50
  %4652 = fmul fast float %4646, %4646
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = fmul fast float %4643, 0x40005F8BE0000000
  %4655 = fsub fast float 0x400C5BF8A0000000, %4654
  %4656 = fdiv fast float %4644, %4655
  %4657 = fmul fast float %4656, 0x3FEE31C3C0000000
  %4658 = fmul fast float %4657, %4653
  %4659 = fmul fast float %4643, 0x3FDACB7480000000
  %4660 = fadd fast float %4659, 0xBFD7347680000000
  %4661 = fmul fast float %4660, %4656
  %4662 = fmul fast float %4661, %4653
  br label %4663

; <label>:4663                                    ; preds = %4634, %4607
  %4664 = phi float [ %4649, %4634 ], [ 0.000000e+00, %4607 ]
  %4665 = phi float [ %4650, %4634 ], [ 0.000000e+00, %4607 ]
  %4666 = phi float [ %4651, %4634 ], [ 0.000000e+00, %4607 ]
  %4667 = phi float [ %4658, %4634 ], [ 0.000000e+00, %4607 ]
  %4668 = phi float [ %4662, %4634 ], [ 0.000000e+00, %4607 ]
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = fmul fast float %4669, %4669
  %4671 = fmul fast float %4670, 0x3FEE471020000000
  %4672 = fadd fast float %4671, 0xBFD42F6020000000
  %4673 = fmul fast float %4629, 0x3FD20DD760000000
  %4674 = fmul fast float %4672, %4668
  %4675 = fmul fast float %4667, 0x3FDF454380000000
  %4676 = fmul fast float %4675, %4669
  %4677 = fadd fast float %4676, %4673
  %4678 = fadd fast float %4677, %4674
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %4666, float %4565, float %4566, float %4567)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = fmul fast float %4679, 0x3FDF454380000000
  %4681 = fmul fast float %4679, %4679
  %4682 = fmul fast float %4681, 0x3FEE471020000000
  %4683 = fadd fast float %4682, 0xBFD42F6020000000
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4629, float %4667, float %4668, float 0x3FD20DD760000000, float %4680, float %4683)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4686 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = fcmp fast oeq float %4686, 0.000000e+00
  %4688 = fcmp fast oeq float %4685, 0.000000e+00
  %4689 = or i1 %4688, %4687
  br i1 %4689, label %4719, label %4690

; <label>:4690                                    ; preds = %4663
  %4691 = fsub fast float -0.000000e+00, %47
  %4692 = fsub fast float -0.000000e+00, %45
  %4693 = call float @dx.op.unary.f32(i32 24, float %4686)  ; Sqrt(value)
  %4694 = fdiv fast float %4693, %4685
  %4695 = fcmp fast ogt float %4694, 0x3FFB6F8900000000
  %4696 = select i1 %4695, float 0x3FFB6F8900000000, float %4694
  %4697 = fmul fast float %4696, 0x3FE8A23460000000
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = call float @dx.op.binary.f32(i32 35, float %4696, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4700 = fmul fast float %4698, %4685
  %4701 = fmul fast float %4699, 0x3FF279A740000000
  %4702 = fadd fast float %4701, -1.000000e+00
  %4703 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %46, float %4691, float %4692, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = call float @dx.op.unary.f32(i32 25, float %4703)  ; Rsqrt(value)
  %4705 = fmul fast float %4704, %4691
  %4706 = fmul fast float %4704, %4692
  %4707 = fmul fast float %4704, %46
  %4708 = fmul fast float %4702, %4702
  %4709 = fsub fast float 1.000000e+00, %4708
  %4710 = fmul fast float %4699, 0x40005F8BE0000000
  %4711 = fsub fast float 0x400C5BF8A0000000, %4710
  %4712 = fdiv fast float %4700, %4711
  %4713 = fmul fast float %4712, 0x3FEE31C3C0000000
  %4714 = fmul fast float %4713, %4709
  %4715 = fmul fast float %4699, 0x3FDACB7480000000
  %4716 = fadd fast float %4715, 0xBFD7347680000000
  %4717 = fmul fast float %4716, %4712
  %4718 = fmul fast float %4717, %4709
  br label %4719

; <label>:4719                                    ; preds = %4690, %4663
  %4720 = phi float [ %4705, %4690 ], [ 0.000000e+00, %4663 ]
  %4721 = phi float [ %4706, %4690 ], [ 0.000000e+00, %4663 ]
  %4722 = phi float [ %4707, %4690 ], [ 0.000000e+00, %4663 ]
  %4723 = phi float [ %4714, %4690 ], [ 0.000000e+00, %4663 ]
  %4724 = phi float [ %4718, %4690 ], [ 0.000000e+00, %4663 ]
  %4725 = call float @dx.op.dot3.f32(i32 55, float %4720, float %4721, float %4722, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4726 = fmul fast float %4725, %4725
  %4727 = fmul fast float %4726, 0x3FEE471020000000
  %4728 = fadd fast float %4727, 0xBFD42F6020000000
  %4729 = fmul fast float %4685, 0x3FD20DD760000000
  %4730 = fmul fast float %4728, %4724
  %4731 = fmul fast float %4723, 0x3FDF454380000000
  %4732 = fmul fast float %4731, %4725
  %4733 = fadd fast float %4732, %4729
  %4734 = fadd fast float %4733, %4730
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4720, float %4721, float %4722, float %4565, float %4566, float %4567)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = fmul fast float %4735, 0x3FDF454380000000
  %4737 = fmul fast float %4735, %4735
  %4738 = fmul fast float %4737, 0x3FEE471020000000
  %4739 = fadd fast float %4738, 0xBFD42F6020000000
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4685, float %4723, float %4724, float 0x3FD20DD760000000, float %4736, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.binary.f32(i32 35, float %4622, float 0.000000e+00)  ; FMax(a,b)
  %4742 = call float @dx.op.binary.f32(i32 35, float %4678, float 0.000000e+00)  ; FMax(a,b)
  %4743 = call float @dx.op.binary.f32(i32 35, float %4734, float 0.000000e+00)  ; FMax(a,b)
  %4744 = call float @dx.op.binary.f32(i32 35, float %4628, float 0.000000e+00)  ; FMax(a,b)
  %4745 = call float @dx.op.binary.f32(i32 35, float %4684, float 0.000000e+00)  ; FMax(a,b)
  %4746 = call float @dx.op.binary.f32(i32 35, float %4740, float 0.000000e+00)  ; FMax(a,b)
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4749 = call float @dx.op.binary.f32(i32 36, float %4546, float %4748)  ; FMin(a,b)
  %4750 = fsub fast float 1.000000e+00, %4568
  %4751 = fmul fast float %4749, %4750
  %4752 = fsub fast float 1.000000e+00, %4751
  %4753 = bitcast float %4752 to i32
  %4754 = sub nsw i32 2129859010, %4753
  %4755 = bitcast i32 %4754 to float
  %4756 = call float @dx.op.binary.f32(i32 36, float %4547, float %4748)  ; FMin(a,b)
  %4757 = fmul fast float %4756, %4750
  %4758 = fsub fast float 1.000000e+00, %4757
  %4759 = bitcast float %4758 to i32
  %4760 = sub nsw i32 2129859010, %4759
  %4761 = bitcast i32 %4760 to float
  %4762 = call float @dx.op.binary.f32(i32 36, float %4548, float %4748)  ; FMin(a,b)
  %4763 = fmul fast float %4762, %4750
  %4764 = fsub fast float 1.000000e+00, %4763
  %4765 = bitcast float %4764 to i32
  %4766 = sub nsw i32 2129859010, %4765
  %4767 = bitcast i32 %4766 to float
  %4768 = fmul fast float %4741, %4568
  %4769 = fmul fast float %4768, %4755
  %4770 = fmul fast float %4742, %4568
  %4771 = fmul fast float %4770, %4761
  %4772 = fmul fast float %4743, %4568
  %4773 = fmul fast float %4772, %4767
  %4774 = call float @dx.op.binary.f32(i32 36, float %4552, float %4748)  ; FMin(a,b)
  %4775 = fmul fast float %4774, %4750
  %4776 = fsub fast float 1.000000e+00, %4775
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = call float @dx.op.binary.f32(i32 36, float %4553, float %4748)  ; FMin(a,b)
  %4781 = fmul fast float %4780, %4750
  %4782 = fsub fast float 1.000000e+00, %4781
  %4783 = bitcast float %4782 to i32
  %4784 = sub nsw i32 2129859010, %4783
  %4785 = bitcast i32 %4784 to float
  %4786 = call float @dx.op.binary.f32(i32 36, float %4557, float %4748)  ; FMin(a,b)
  %4787 = fmul fast float %4786, %4750
  %4788 = fsub fast float 1.000000e+00, %4787
  %4789 = bitcast float %4788 to i32
  %4790 = sub nsw i32 2129859010, %4789
  %4791 = bitcast i32 %4790 to float
  %4792 = fmul fast float %4744, %4568
  %4793 = fmul fast float %4792, %4779
  %4794 = fmul fast float %4745, %4568
  %4795 = fmul fast float %4794, %4785
  %4796 = fmul fast float %4746, %4568
  %4797 = fmul fast float %4796, %4791
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4769, float %4771, float %4773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = select i1 %176, float 0.000000e+00, float %4769
  %4800 = select i1 %176, float %4798, float %4771
  %4801 = select i1 %176, float 0.000000e+00, float %4773
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4793, float %4795, float %4797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = select i1 %176, float 0.000000e+00, float %4793
  %4804 = select i1 %176, float %4802, float %4795
  %4805 = select i1 %176, float 0.000000e+00, float %4797
  %4806 = fmul fast float %4559, 9.843750e-01
  %4807 = fmul fast float %4555, 9.843750e-01
  %4808 = fadd fast float %4806, 7.812500e-03
  %4809 = fadd fast float %4807, 7.812500e-03
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4808, float %4809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 2
  %4812 = extractvalue %dx.types.ResRet.f32 %4810, 3
  %4813 = fmul fast float %4811, %4552
  %4814 = fmul fast float %4811, %4553
  %4815 = fmul fast float %4811, %4557
  %4816 = fadd fast float %4813, %4812
  %4817 = fadd fast float %4814, %4812
  %4818 = fadd fast float %4815, %4812
  %4819 = fcmp fast ogt float %3943, 0.000000e+00
  br i1 %4819, label %4820, label %4846

; <label>:4820                                    ; preds = %4719
  %4821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3943, float %4559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4822 = extractvalue %dx.types.ResRet.f32 %4821, 0
  %4823 = extractvalue %dx.types.ResRet.f32 %4821, 1
  %4824 = extractvalue %dx.types.ResRet.f32 %4821, 2
  %4825 = fadd fast float %4822, -5.000000e-01
  %4826 = fadd fast float %4823, -5.000000e-01
  %4827 = fadd fast float %4824, -5.000000e-01
  %4828 = fsub fast float 1.000000e+00, %4552
  %4829 = fsub fast float 1.000000e+00, %4553
  %4830 = fsub fast float 1.000000e+00, %4557
  %4831 = fmul fast float %4552, 4.000000e+00
  %4832 = fmul fast float %4831, %4828
  %4833 = fmul fast float %4832, %4825
  %4834 = fmul fast float %4553, 4.000000e+00
  %4835 = fmul fast float %4834, %4829
  %4836 = fmul fast float %4835, %4826
  %4837 = fmul fast float %4557, 4.000000e+00
  %4838 = fmul fast float %4837, %4830
  %4839 = fmul fast float %4838, %4827
  %4840 = fadd fast float %4833, %4816
  %4841 = fadd fast float %4836, %4817
  %4842 = fadd fast float %4839, %4818
  %4843 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4844 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4845 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  br label %4846

; <label>:4846                                    ; preds = %4820, %4719
  %4847 = phi float [ %4843, %4820 ], [ %4816, %4719 ]
  %4848 = phi float [ %4844, %4820 ], [ %4817, %4719 ]
  %4849 = phi float [ %4845, %4820 ], [ %4818, %4719 ]
  %4850 = call float @dx.op.binary.f32(i32 35, float %4848, float %4849)  ; FMax(a,b)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4847, float %4850)  ; FMax(a,b)
  %4852 = fsub fast float 1.000000e+00, %4851
  %4853 = fmul fast float %4852, %4799
  %4854 = fmul fast float %4852, %4800
  %4855 = fmul fast float %4852, %4801
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4546, float %4547, float %4548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = fcmp fast ogt float %4856, 0x3E7FF19E20000000
  %4858 = fdiv fast float 1.000000e+00, %4856
  %4859 = select i1 %4857, float %4858, float 0.000000e+00
  %4860 = fmul fast float %4859, %4546
  %4861 = fmul fast float %4859, %4547
  %4862 = fmul fast float %4859, %4548
  %4863 = fadd fast float %4860, -1.000000e+00
  %4864 = fadd fast float %4861, -1.000000e+00
  %4865 = fadd fast float %4862, -1.000000e+00
  %4866 = fmul fast float %4863, 5.000000e-01
  %4867 = fmul fast float %4864, 5.000000e-01
  %4868 = fmul fast float %4865, 5.000000e-01
  %4869 = fadd fast float %4866, 1.000000e+00
  %4870 = fadd fast float %4867, 1.000000e+00
  %4871 = fadd fast float %4868, 1.000000e+00
  %4872 = fmul fast float %4847, %4803
  %4873 = fmul fast float %4848, %4804
  %4874 = fmul fast float %4849, %4805
  %4875 = fsub fast float 1.000000e+00, %4559
  %4876 = bitcast float %4875 to i32
  %4877 = sitofp i32 %4876 to float
  %4878 = fmul fast float %4877, 5.000000e+00
  %4879 = fadd fast float %4878, 0xC1EFBF8940000000
  %4880 = fptosi float %4879 to i32
  %4881 = bitcast i32 %4880 to float
  %4882 = fmul fast float %4881, %3944
  %4883 = fmul fast float %4799, %4882
  %4884 = fmul fast float %4883, %4852
  %4885 = fmul fast float %4884, %4869
  %4886 = fmul fast float %4800, %4882
  %4887 = fmul fast float %4886, %4852
  %4888 = fmul fast float %4887, %4870
  %4889 = fmul fast float %4801, %4882
  %4890 = fmul fast float %4889, %4852
  %4891 = fmul fast float %4890, %4871
  %4892 = fmul fast float %4853, %3940
  %4893 = fmul fast float %4854, %3940
  %4894 = fmul fast float %4855, %3940
  %4895 = fadd fast float %4872, %3933
  %4896 = fadd fast float %4895, %4885
  %4897 = fmul fast float %4896, %3940
  %4898 = fadd fast float %4873, %3934
  %4899 = fadd fast float %4898, %4888
  %4900 = fmul fast float %4899, %3940
  %4901 = fadd fast float %4874, %3935
  %4902 = fadd fast float %4901, %4891
  %4903 = fmul fast float %4902, %3940
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 3
  %4906 = fcmp fast oeq float %4905, 0.000000e+00
  br i1 %4906, label %5134, label %4907

; <label>:4907                                    ; preds = %4846
  %4908 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4909 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4910 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.CBufRet.f32 %4911, 1
  %4914 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4916 = extractvalue %dx.types.CBufRet.f32 %4915, 0
  %4917 = extractvalue %dx.types.CBufRet.f32 %4915, 1
  %4918 = call float @dx.op.dot3.f32(i32 55, float %4912, float %4913, float %4914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4919 = select i1 %176, float %4916, float %4912
  %4920 = select i1 %176, float %4918, float %4913
  %4921 = select i1 %176, float %4917, float %4914
  %4922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4923 = extractvalue %dx.types.CBufRet.f32 %4922, 1
  %4924 = fcmp fast une float %4923, 0.000000e+00
  br i1 %4924, label %4925, label %4942

; <label>:4925                                    ; preds = %4907
  %4926 = fptoui float %75 to i32
  %4927 = fptoui float %76 to i32
  %4928 = lshr i32 %4926, 4
  %4929 = lshr i32 %4927, 4
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4932 = fptoui float %4931 to i32
  %4933 = add i32 %4932, 15
  %4934 = lshr i32 %4933, 4
  %4935 = mul i32 %4934, %4929
  %4936 = add i32 %4935, %4928
  %4937 = shl i32 %4936, 3
  %4938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4937, i32 undef)  ; BufferLoad(srv,index,wot)
  %4939 = extractvalue %dx.types.ResRet.i32 %4938, 0
  %4940 = and i32 %4939, -268435456
  %4941 = icmp eq i32 %4940, -1342177280
  br i1 %4941, label %4952, label %4942

; <label>:4942                                    ; preds = %4925, %4907
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 2
  %4945 = extractvalue %dx.types.CBufRet.f32 %4943, 3
  %4946 = fmul fast float %4944, %75
  %4947 = fmul fast float %4945, %76
  %4948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4946, float %4947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4949 = extractvalue %dx.types.ResRet.f32 %4948, 0
  %4950 = extractvalue %dx.types.ResRet.f32 %4948, 1
  %4951 = extractvalue %dx.types.ResRet.f32 %4948, 2
  br label %4952

; <label>:4952                                    ; preds = %4942, %4925
  %4953 = phi float [ %4949, %4942 ], [ 0.000000e+00, %4925 ]
  %4954 = phi float [ %4950, %4942 ], [ 0.000000e+00, %4925 ]
  %4955 = phi float [ %4951, %4942 ], [ 0.000000e+00, %4925 ]
  %4956 = call float @dx.op.binary.f32(i32 36, float %4954, float %4955)  ; FMin(a,b)
  %4957 = call float @dx.op.binary.f32(i32 36, float %4953, float %4956)  ; FMin(a,b)
  %4958 = fcmp fast ogt float %4957, 0.000000e+00
  br i1 %4958, label %4959, label %5134, !dx.controlflow.hints !75

; <label>:4959                                    ; preds = %4952
  %4960 = fmul fast float %4953, %4919
  %4961 = fmul fast float %4954, %4920
  %4962 = fmul fast float %4955, %4921
  %4963 = fsub fast float %4908, %4545
  %4964 = fsub fast float %4909, %4544
  %4965 = fsub fast float %4910, %4543
  %4966 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4967 = call float @dx.op.unary.f32(i32 25, float %4966)  ; Rsqrt(value)
  %4968 = fmul fast float %4967, %4963
  %4969 = fmul fast float %4967, %4964
  %4970 = fmul fast float %4967, %4965
  %4971 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4909, float %4910, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %4972 = call float @dx.op.dot3.f32(i32 55, float %4542, float %4541, float %4540, float %4968, float %4969, float %4970)  ; Dot3(ax,ay,az,bx,by,bz)
  %4973 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4974 = fmul fast float %4973, %4973
  %4975 = fmul fast float %4974, %4572
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fmul fast float %4976, %4973
  %4978 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %4968, float %4969, float %4970)  ; Dot3(ax,ay,az,bx,by,bz)
  %4979 = fmul fast float %4978, %4978
  %4980 = call float @dx.op.unary.f32(i32 6, float %4971)  ; FAbs(value)
  %4981 = fsub fast float 1.000000e+00, %4555
  %4982 = call float @dx.op.binary.f32(i32 35, float %4981, float 0x3F847AE140000000)  ; FMax(a,b)
  %4983 = fmul fast float %4982, %4982
  %4984 = fmul fast float %4983, %4983
  %4985 = fsub fast float 1.000000e+00, %4984
  %4986 = fmul fast float %4559, %4559
  %4987 = fmul fast float %4986, %4985
  %4988 = fadd fast float %4987, %4984
  %4989 = bitcast float %4988 to i32
  %4990 = ashr i32 %4989, 1
  %4991 = add nsw i32 %4990, 532487669
  %4992 = bitcast i32 %4991 to float
  %4993 = fadd fast float %4992, %4559
  %4994 = fmul fast float %4984, %4979
  %4995 = fsub fast float 1.000000e+00, %4979
  %4996 = fadd fast float %4995, %4994
  %4997 = fmul fast float %4980, %4980
  %4998 = fmul fast float %4997, %4985
  %4999 = fadd fast float %4998, %4984
  %5000 = bitcast float %4999 to i32
  %5001 = ashr i32 %5000, 1
  %5002 = add nsw i32 %5001, 532487669
  %5003 = bitcast i32 %5002 to float
  %5004 = fadd fast float %5003, %4980
  %5005 = fmul fast float %4996, %4996
  %5006 = fmul fast float %5005, %4993
  %5007 = fmul fast float %5006, %5004
  %5008 = fdiv fast float 0x3FF0A00000000000, %5007
  %5009 = fmul fast float %5008, %4984
  %5010 = call float @dx.op.unary.f32(i32 6, float %4972)  ; FAbs(value)
  %5011 = fsub fast float 1.000000e+00, %5010
  %5012 = bitcast float %5011 to i32
  %5013 = sitofp i32 %5012 to float
  %5014 = fmul fast float %5013, 5.000000e+00
  %5015 = fadd fast float %5014, 0xC1EFBF8940000000
  %5016 = fptosi float %5015 to i32
  %5017 = bitcast i32 %5016 to float
  %5018 = fsub fast float 1.000000e+00, %4552
  %5019 = fsub fast float 1.000000e+00, %4553
  %5020 = fsub fast float 1.000000e+00, %4557
  %5021 = fmul fast float %5017, %5018
  %5022 = fmul fast float %5017, %5019
  %5023 = fmul fast float %5017, %5020
  %5024 = fadd fast float %5021, %4552
  %5025 = fadd fast float %5022, %4553
  %5026 = fadd fast float %5023, %4557
  br i1 %4819, label %5027, label %5050

; <label>:5027                                    ; preds = %4959
  %5028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3943, float %5010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5029 = extractvalue %dx.types.ResRet.f32 %5028, 0
  %5030 = extractvalue %dx.types.ResRet.f32 %5028, 1
  %5031 = extractvalue %dx.types.ResRet.f32 %5028, 2
  %5032 = fadd fast float %5029, -5.000000e-01
  %5033 = fadd fast float %5030, -5.000000e-01
  %5034 = fadd fast float %5031, -5.000000e-01
  %5035 = fmul fast float %4552, 4.000000e+00
  %5036 = fmul fast float %5035, %5018
  %5037 = fmul fast float %5036, %5032
  %5038 = fmul fast float %4553, 4.000000e+00
  %5039 = fmul fast float %5038, %5019
  %5040 = fmul fast float %5039, %5033
  %5041 = fmul fast float %4557, 4.000000e+00
  %5042 = fmul fast float %5041, %5020
  %5043 = fmul fast float %5042, %5034
  %5044 = fadd fast float %5037, %5024
  %5045 = fadd fast float %5040, %5025
  %5046 = fadd fast float %5043, %5026
  %5047 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5048 = call float @dx.op.unary.f32(i32 7, float %5045)  ; Saturate(value)
  %5049 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  br label %5050

; <label>:5050                                    ; preds = %5027, %4959
  %5051 = phi float [ %5047, %5027 ], [ %5024, %4959 ]
  %5052 = phi float [ %5048, %5027 ], [ %5025, %4959 ]
  %5053 = phi float [ %5049, %5027 ], [ %5026, %4959 ]
  %5054 = fmul fast float %4971, 9.843750e-01
  %5055 = fadd fast float %5054, 7.812500e-03
  %5056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5055, float %4809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5057 = extractvalue %dx.types.ResRet.f32 %5056, 2
  %5058 = extractvalue %dx.types.ResRet.f32 %5056, 3
  %5059 = fmul fast float %5057, %4552
  %5060 = fmul fast float %5057, %4553
  %5061 = fmul fast float %5057, %4557
  %5062 = fadd fast float %5059, %5058
  %5063 = fadd fast float %5060, %5058
  %5064 = fadd fast float %5061, %5058
  br i1 %4819, label %5065, label %5088

; <label>:5065                                    ; preds = %5050
  %5066 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3943, float %4971, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5067 = extractvalue %dx.types.ResRet.f32 %5066, 0
  %5068 = extractvalue %dx.types.ResRet.f32 %5066, 1
  %5069 = extractvalue %dx.types.ResRet.f32 %5066, 2
  %5070 = fadd fast float %5067, -5.000000e-01
  %5071 = fadd fast float %5068, -5.000000e-01
  %5072 = fadd fast float %5069, -5.000000e-01
  %5073 = fmul fast float %4552, 4.000000e+00
  %5074 = fmul fast float %5073, %5018
  %5075 = fmul fast float %5074, %5070
  %5076 = fmul fast float %4553, 4.000000e+00
  %5077 = fmul fast float %5076, %5019
  %5078 = fmul fast float %5077, %5071
  %5079 = fmul fast float %4557, 4.000000e+00
  %5080 = fmul fast float %5079, %5020
  %5081 = fmul fast float %5080, %5072
  %5082 = fadd fast float %5075, %5062
  %5083 = fadd fast float %5078, %5063
  %5084 = fadd fast float %5081, %5064
  %5085 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5086 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5087 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  br label %5088

; <label>:5088                                    ; preds = %5065, %5050
  %5089 = phi float [ %5085, %5065 ], [ %5062, %5050 ]
  %5090 = phi float [ %5086, %5065 ], [ %5063, %5050 ]
  %5091 = phi float [ %5087, %5065 ], [ %5064, %5050 ]
  %5092 = call float @dx.op.binary.f32(i32 35, float %5090, float %5091)  ; FMax(a,b)
  %5093 = call float @dx.op.binary.f32(i32 35, float %5089, float %5092)  ; FMax(a,b)
  %5094 = fsub fast float 1.000000e+00, %5093
  %5095 = fmul fast float %5051, %5009
  %5096 = fmul fast float %5052, %5009
  %5097 = fmul fast float %5053, %5009
  %5098 = fsub fast float 1.000000e+00, %4972
  %5099 = bitcast float %5098 to i32
  %5100 = sitofp i32 %5099 to float
  %5101 = fmul fast float %5100, 5.000000e+00
  %5102 = fadd fast float %5101, 0xC1EFBF8940000000
  %5103 = fptosi float %5102 to i32
  %5104 = bitcast i32 %5103 to float
  %5105 = fmul fast float %5104, %3944
  %5106 = fmul fast float %5094, %5105
  %5107 = fmul fast float %5106, %4869
  %5108 = fmul fast float %5106, %4870
  %5109 = fmul fast float %5106, %4871
  %5110 = fadd fast float %5107, %5095
  %5111 = fadd fast float %5108, %5096
  %5112 = fadd fast float %5109, %5097
  %5113 = fmul fast float %4977, %4960
  %5114 = fmul fast float %5113, %5094
  %5115 = fmul fast float %4977, %4961
  %5116 = fmul fast float %5115, %5094
  %5117 = fmul fast float %4977, %4962
  %5118 = fmul fast float %5117, %5094
  %5119 = fmul fast float %5113, %5110
  %5120 = fmul fast float %5115, %5111
  %5121 = fmul fast float %5117, %5112
  %5122 = fadd fast float %5114, %4853
  %5123 = fmul fast float %5122, %3940
  %5124 = fadd fast float %5116, %4854
  %5125 = fmul fast float %5124, %3940
  %5126 = fadd fast float %5118, %4855
  %5127 = fmul fast float %5126, %3940
  %5128 = fadd fast float %5119, %4896
  %5129 = fmul fast float %5128, %3940
  %5130 = fadd fast float %5120, %4899
  %5131 = fmul fast float %5130, %3940
  %5132 = fadd fast float %5121, %4902
  %5133 = fmul fast float %5132, %3940
  br label %5134

; <label>:5134                                    ; preds = %5088, %4952, %4846
  %5135 = phi float [ %4897, %4846 ], [ %4897, %4952 ], [ %5129, %5088 ]
  %5136 = phi float [ %4900, %4846 ], [ %4900, %4952 ], [ %5131, %5088 ]
  %5137 = phi float [ %4903, %4846 ], [ %4903, %4952 ], [ %5133, %5088 ]
  %5138 = phi float [ %4892, %4846 ], [ %4892, %4952 ], [ %5123, %5088 ]
  %5139 = phi float [ %4893, %4846 ], [ %4893, %4952 ], [ %5125, %5088 ]
  %5140 = phi float [ %4894, %4846 ], [ %4894, %4952 ], [ %5127, %5088 ]
  %5141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.i32 %5141, 0
  %5143 = icmp eq i32 %5142, 0
  br i1 %5143, label %5578, label %5144

; <label>:5144                                    ; preds = %5134
  %5145 = fptoui float %75 to i32
  %5146 = fptoui float %76 to i32
  %5147 = lshr i32 %5145, 4
  %5148 = lshr i32 %5146, 4
  %5149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.i32 %5149, 0
  %5151 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5148, i32 %5150, i32 %5147)  ; UMad(a,b,c)
  %5152 = add nsw i32 %5142, -1
  %5153 = call i32 @dx.op.binary.i32(i32 37, i32 %5152, i32 0)  ; IMax(a,b)
  %5154 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5155 = fptoui float %5154 to i32
  %5156 = lshr i32 %5155, 5
  %5157 = call i32 @dx.op.binary.i32(i32 40, i32 %5156, i32 8191)  ; UMin(a,b)
  %5158 = shl i32 %5157, 2
  %5159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5158, i32 undef)  ; BufferLoad(srv,index,wot)
  %5160 = extractvalue %dx.types.ResRet.i32 %5159, 0
  %5161 = lshr i32 %5160, 16
  %5162 = and i32 %5160, 65535
  %5163 = lshr i32 %5160, 21
  %5164 = lshr i32 %5162, 5
  %5165 = call i32 @dx.op.binary.i32(i32 40, i32 %5164, i32 %5153)  ; UMin(a,b)
  %5166 = icmp ugt i32 %5163, %5165
  br i1 %5166, label %5578, label %5167

; <label>:5167                                    ; preds = %5144
  br label %5168

; <label>:5168                                    ; preds = %5568, %5167
  %5169 = phi i32 [ %5575, %5568 ], [ %5163, %5167 ]
  %5170 = phi float [ %5569, %5568 ], [ %5135, %5167 ]
  %5171 = phi float [ %5570, %5568 ], [ %5136, %5167 ]
  %5172 = phi float [ %5571, %5568 ], [ %5137, %5167 ]
  %5173 = phi float [ %5572, %5568 ], [ %5138, %5167 ]
  %5174 = phi float [ %5573, %5568 ], [ %5139, %5167 ]
  %5175 = phi float [ %5574, %5568 ], [ %5140, %5167 ]
  %5176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.i32 %5176, 0
  %5178 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5151, i32 %5177, i32 %5169)  ; UMad(a,b,c)
  %5179 = shl i32 %5178, 2
  %5180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5179, i32 undef)  ; BufferLoad(srv,index,wot)
  %5181 = extractvalue %dx.types.ResRet.i32 %5180, 0
  %5182 = shl i32 %5169, 5
  %5183 = sub nsw i32 %5161, %5182
  %5184 = call i32 @dx.op.binary.i32(i32 37, i32 %5183, i32 0)  ; IMax(a,b)
  %5185 = call i32 @dx.op.binary.i32(i32 38, i32 %5184, i32 31)  ; IMin(a,b)
  %5186 = sub nsw i32 1, %5161
  %5187 = add nsw i32 %5186, %5162
  %5188 = call i32 @dx.op.binary.i32(i32 37, i32 %5187, i32 0)  ; IMax(a,b)
  %5189 = call i32 @dx.op.binary.i32(i32 38, i32 %5188, i32 32)  ; IMin(a,b)
  %5190 = and i32 %5189, 31
  %5191 = shl i32 -1, %5190
  %5192 = xor i32 %5191, -1
  %5193 = and i32 %5185, 31
  %5194 = shl i32 %5192, %5193
  %5195 = icmp eq i32 %5189, 32
  %5196 = select i1 %5195, i32 -1, i32 %5194
  %5197 = and i32 %5196, %5181
  %5198 = icmp eq i32 %5197, 0
  br i1 %5198, label %5568, label %5199

; <label>:5199                                    ; preds = %5168
  br label %5200

; <label>:5200                                    ; preds = %5280, %5199
  %5201 = phi i32 [ %5212, %5280 ], [ %5197, %5199 ]
  %5202 = phi float [ %5281, %5280 ], [ %5170, %5199 ]
  %5203 = phi float [ %5282, %5280 ], [ %5171, %5199 ]
  %5204 = phi float [ %5283, %5280 ], [ %5172, %5199 ]
  %5205 = phi float [ %5284, %5280 ], [ %5173, %5199 ]
  %5206 = phi float [ %5285, %5280 ], [ %5174, %5199 ]
  %5207 = phi float [ %5286, %5280 ], [ %5175, %5199 ]
  %5208 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5201)  ; FirstbitLo(value)
  %5209 = add i32 %5208, %5182
  %5210 = and i32 %5208, 31
  %5211 = shl i32 1, %5210
  %5212 = xor i32 %5211, %5201
  %5213 = mul i32 %5209, 112
  %5214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5213, i32 undef)  ; BufferLoad(srv,index,wot)
  %5215 = extractvalue %dx.types.ResRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.ResRet.f32 %5214, 2
  %5218 = or i32 %5213, 12
  %5219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5218, i32 undef)  ; BufferLoad(srv,index,wot)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = add i32 %5213, 44
  %5222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5221, i32 undef)  ; BufferLoad(srv,index,wot)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = add i32 %5213, 48
  %5225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5224, i32 undef)  ; BufferLoad(srv,index,wot)
  %5226 = extractvalue %dx.types.ResRet.f32 %5225, 0
  %5227 = extractvalue %dx.types.ResRet.f32 %5225, 1
  %5228 = extractvalue %dx.types.ResRet.f32 %5225, 2
  %5229 = add i32 %5213, 80
  %5230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5229, i32 undef)  ; BufferLoad(srv,index,wot)
  %5231 = extractvalue %dx.types.ResRet.f32 %5230, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5230, 2
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5215, float %5216, float %5217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = select i1 %176, float %5231, float %5215
  %5235 = select i1 %176, float %5233, float %5216
  %5236 = select i1 %176, float %5232, float %5217
  %5237 = fsub fast float %5226, %134
  %5238 = fsub fast float %5227, %135
  %5239 = fsub fast float %5228, %136
  %5240 = call float @dx.op.dot3.f32(i32 55, float %5237, float %5238, float %5239, float %5237, float %5238, float %5239)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = call float @dx.op.unary.f32(i32 24, float %5240)  ; Sqrt(value)
  %5242 = fdiv fast float 1.000000e+00, %5241
  %5243 = fmul fast float %5242, %5237
  %5244 = fmul fast float %5242, %5238
  %5245 = fmul fast float %5242, %5239
  %5246 = fadd fast float %5241, %5220
  %5247 = fdiv fast float 1.000000e+00, %5246
  %5248 = fmul float %5223, %5247
  %5249 = fmul float %5248, %5248
  %5250 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5251 = and i32 %5211, %5197
  %5252 = icmp eq i32 %5251, 0
  br i1 %5252, label %5275, label %5253, !dx.controlflow.hints !76

; <label>:5253                                    ; preds = %5200
  %5254 = lshr i32 %5145, 5
  %5255 = lshr i32 %5146, 5
  %5256 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5254, i32 %5255, i32 %5209, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5257 = extractvalue %dx.types.ResRet.i32 %5256, 0
  %5258 = and i32 %5257, 3
  %5259 = icmp eq i32 %5258, 0
  %5260 = select i1 %5259, float 1.000000e+00, float 0.000000e+00
  %5261 = icmp eq i32 %5258, 3
  br i1 %5261, label %5262, label %5275

; <label>:5262                                    ; preds = %5253
  %5263 = lshr i32 %5257, 10
  %5264 = and i32 %5263, 8160
  %5265 = and i32 %5146, 31
  %5266 = or i32 %5264, %5265
  %5267 = lshr i32 %5257, 1
  %5268 = and i32 %5267, 16352
  %5269 = and i32 %5145, 31
  %5270 = or i32 %5268, %5269
  %5271 = lshr i32 %5257, 23
  %5272 = and i32 %5271, 255
  %5273 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5270, i32 %5266, i32 %5272, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  br label %5275

; <label>:5275                                    ; preds = %5262, %5253, %5200
  %5276 = phi float [ %5274, %5262 ], [ %5260, %5253 ], [ 0.000000e+00, %5200 ]
  %5277 = call float @dx.op.binary.f32(i32 36, float %5276, float %5276)  ; FMin(a,b)
  %5278 = call float @dx.op.binary.f32(i32 36, float %5276, float %5277)  ; FMin(a,b)
  %5279 = fcmp fast ogt float %5278, 0.000000e+00
  br i1 %5279, label %5288, label %5280, !dx.controlflow.hints !77

; <label>:5280                                    ; preds = %5524, %5275
  %5281 = phi float [ %5202, %5275 ], [ %5564, %5524 ]
  %5282 = phi float [ %5203, %5275 ], [ %5565, %5524 ]
  %5283 = phi float [ %5204, %5275 ], [ %5566, %5524 ]
  %5284 = phi float [ %5205, %5275 ], [ %5558, %5524 ]
  %5285 = phi float [ %5206, %5275 ], [ %5559, %5524 ]
  %5286 = phi float [ %5207, %5275 ], [ %5560, %5524 ]
  %5287 = icmp eq i32 %5201, %5211
  br i1 %5287, label %5567, label %5200

; <label>:5288                                    ; preds = %5275
  %5289 = fmul fast float %5276, %5234
  %5290 = fmul fast float %5276, %5235
  %5291 = fmul fast float %5276, %5236
  %5292 = fsub fast float %5228, %4345
  %5293 = fcmp fast ogt float %5292, 0.000000e+00
  %5294 = fsub fast float %136, %4345
  %5295 = fcmp fast ogt float %5294, 0.000000e+00
  %5296 = xor i1 %5295, %5293
  %5297 = fsub fast float %4345, %5228
  %5298 = fmul fast float %5297, 2.000000e+00
  %5299 = fadd fast float %5298, %5228
  %5300 = select i1 %5296, float %5228, float %5299
  %5301 = fsub fast float %5300, %136
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5237, float %5238, float %5301, float %5237, float %5238, float %5301)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = call float @dx.op.unary.f32(i32 25, float %5302)  ; Rsqrt(value)
  %5304 = fmul fast float %5303, %5237
  %5305 = fmul fast float %5303, %5238
  %5306 = fmul fast float %5303, %5301
  %5307 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4353)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5304, float %5305, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = fdiv fast float 1.000000e+00, %5308
  %5310 = fmul fast float %5309, %5307
  %5311 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5294, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = fcmp fast ogt float %5311, 0.000000e+00
  %5313 = fcmp fast olt float %5311, 0.000000e+00
  %5314 = zext i1 %5312 to i32
  %5315 = zext i1 %5313 to i32
  %5316 = sub nsw i32 %5314, %5315
  %5317 = sitofp i32 %5316 to float
  %5318 = fsub fast float %5300, %4345
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5237, float %5238, float %5318, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = fcmp fast ogt float %5319, 0.000000e+00
  %5321 = fcmp fast olt float %5319, 0.000000e+00
  %5322 = zext i1 %5320 to i32
  %5323 = zext i1 %5321 to i32
  %5324 = sub nsw i32 %5322, %5323
  %5325 = sitofp i32 %5324 to float
  %5326 = fcmp fast une float %5317, %5325
  br i1 %5326, label %5327, label %5337

; <label>:5327                                    ; preds = %5288
  %5328 = fmul fast float %5310, %5306
  %5329 = fmul fast float %5310, %5305
  %5330 = fmul fast float %5310, %5304
  %5331 = fmul fast float %5330, %5330
  %5332 = fmul fast float %5329, %5329
  %5333 = fadd fast float %5331, %5332
  %5334 = fmul fast float %5328, %5328
  %5335 = fadd fast float %5333, %5334
  %5336 = call float @dx.op.unary.f32(i32 24, float %5335)  ; Sqrt(value)
  br label %5349

; <label>:5337                                    ; preds = %5288
  %5338 = icmp slt i32 %5316, 0
  br i1 %5338, label %5339, label %5349

; <label>:5339                                    ; preds = %5337
  %5340 = fsub fast float %134, %5226
  %5341 = fsub fast float %135, %5227
  %5342 = fsub fast float %136, %5300
  %5343 = fmul fast float %5340, %5340
  %5344 = fmul fast float %5341, %5341
  %5345 = fadd fast float %5343, %5344
  %5346 = fmul fast float %5342, %5342
  %5347 = fadd fast float %5345, %5346
  %5348 = call float @dx.op.unary.f32(i32 24, float %5347)  ; Sqrt(value)
  br label %5349

; <label>:5349                                    ; preds = %5339, %5337, %5327
  %5350 = phi float [ %5336, %5327 ], [ %5348, %5339 ], [ 0.000000e+00, %5337 ]
  %5351 = and i1 %5295, %5293
  %5352 = fsub fast float -0.000000e+00, %5350
  %5353 = select i1 %5351, float -0.000000e+00, float %5352
  %5354 = fmul fast float %4346, 0x3FF7154760000000
  %5355 = fmul fast float %5354, %5353
  %5356 = fmul fast float %4347, 0x3FF7154760000000
  %5357 = fmul fast float %5356, %5353
  %5358 = fmul fast float %4348, 0x3FF7154760000000
  %5359 = fmul fast float %5358, %5353
  %5360 = call float @dx.op.unary.f32(i32 21, float %5355)  ; Exp(value)
  %5361 = call float @dx.op.unary.f32(i32 21, float %5357)  ; Exp(value)
  %5362 = call float @dx.op.unary.f32(i32 21, float %5359)  ; Exp(value)
  %5363 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  %5364 = call float @dx.op.unary.f32(i32 7, float %5361)  ; Saturate(value)
  %5365 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5366 = fmul fast float %5289, %5363
  %5367 = fmul fast float %5290, %5364
  %5368 = fmul fast float %5291, %5365
  %5369 = fsub fast float %5243, %4545
  %5370 = fsub fast float %5244, %4544
  %5371 = fsub fast float %5245, %4543
  %5372 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %5371, float %5369, float %5370, float %5371)  ; Dot3(ax,ay,az,bx,by,bz)
  %5373 = call float @dx.op.unary.f32(i32 25, float %5372)  ; Rsqrt(value)
  %5374 = fmul fast float %5373, %5369
  %5375 = fmul fast float %5373, %5370
  %5376 = fmul fast float %5373, %5371
  %5377 = call float @dx.op.dot3.f32(i32 55, float %5243, float %5244, float %5245, float %4549, float %4550, float %4551)  ; Dot3(ax,ay,az,bx,by,bz)
  %5378 = call float @dx.op.dot3.f32(i32 55, float %4542, float %4541, float %4540, float %5374, float %5375, float %5376)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5380 = fmul fast float %5379, %5250
  %5381 = fmul fast float %5379, %5379
  %5382 = fmul fast float %5381, %4572
  %5383 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5384 = fmul fast float %5380, %5383
  %5385 = bitcast float %5240 to i32
  %5386 = ashr i32 %5385, 1
  %5387 = sub nsw i32 1597463007, %5386
  %5388 = bitcast i32 %5387 to float
  %5389 = fmul fast float %5388, %5237
  %5390 = fmul fast float %5388, %5238
  %5391 = fmul fast float %5388, %5239
  %5392 = fsub fast float %5389, %4545
  %5393 = fsub fast float %5390, %4544
  %5394 = fsub fast float %5391, %4543
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5392, float %5393, float %5394, float %5392, float %5393, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = call float @dx.op.unary.f32(i32 25, float %5395)  ; Rsqrt(value)
  %5397 = fmul fast float %5392, %5396
  %5398 = fmul fast float %5393, %5396
  %5399 = fmul fast float %5394, %5396
  %5400 = call float @dx.op.dot3.f32(i32 55, float %4549, float %4550, float %4551, float %5397, float %5398, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5401 = fmul fast float %5400, %5400
  %5402 = call float @dx.op.unary.f32(i32 6, float %5377)  ; FAbs(value)
  %5403 = fsub fast float 1.000000e+00, %4555
  %5404 = call float @dx.op.binary.f32(i32 35, float %5403, float 0x3F847AE140000000)  ; FMax(a,b)
  %5405 = fmul fast float %5404, %5404
  %5406 = fmul fast float %5405, %5405
  %5407 = fsub fast float 1.000000e+00, %5406
  %5408 = fmul fast float %4559, %4559
  %5409 = fmul fast float %5408, %5407
  %5410 = fadd fast float %5409, %5406
  %5411 = bitcast float %5410 to i32
  %5412 = ashr i32 %5411, 1
  %5413 = add nsw i32 %5412, 532487669
  %5414 = bitcast i32 %5413 to float
  %5415 = fadd fast float %5414, %4559
  %5416 = fmul fast float %5406, %5401
  %5417 = fsub fast float 1.000000e+00, %5401
  %5418 = fadd fast float %5417, %5416
  %5419 = fmul fast float %5402, %5402
  %5420 = fmul fast float %5419, %5407
  %5421 = fadd fast float %5420, %5406
  %5422 = bitcast float %5421 to i32
  %5423 = ashr i32 %5422, 1
  %5424 = add nsw i32 %5423, 532487669
  %5425 = bitcast i32 %5424 to float
  %5426 = fadd fast float %5425, %5402
  %5427 = fmul fast float %5418, %5418
  %5428 = fmul fast float %5427, %5415
  %5429 = fmul fast float %5428, %5426
  %5430 = fdiv fast float 1.000000e+00, %5429
  %5431 = bitcast float %5406 to i32
  %5432 = sitofp i32 %5431 to float
  %5433 = fmul fast float %5432, 0x3FE7F73180000000
  %5434 = fadd fast float %5433, 0x41AFE27C40000000
  %5435 = fptosi float %5434 to i32
  %5436 = bitcast i32 %5435 to float
  %5437 = fmul fast float %5223, 0x3FD80E9D60000000
  %5438 = fmul fast float %5437, %5388
  %5439 = fadd fast float %5436, %5438
  %5440 = bitcast float %5439 to i32
  %5441 = sub nsw i32 2129859010, %5440
  %5442 = bitcast i32 %5441 to float
  %5443 = fmul fast float %5406, %5430
  %5444 = fmul fast float %5443, %5436
  %5445 = fmul fast float %5444, %5442
  %5446 = call float @dx.op.unary.f32(i32 6, float %5378)  ; FAbs(value)
  %5447 = fsub fast float 1.000000e+00, %5446
  %5448 = bitcast float %5447 to i32
  %5449 = sitofp i32 %5448 to float
  %5450 = fmul fast float %5449, 5.000000e+00
  %5451 = fadd fast float %5450, 0xC1EFBF8940000000
  %5452 = fptosi float %5451 to i32
  %5453 = bitcast i32 %5452 to float
  %5454 = fsub fast float 1.000000e+00, %4552
  %5455 = fsub fast float 1.000000e+00, %4553
  %5456 = fsub fast float 1.000000e+00, %4557
  %5457 = fmul fast float %5453, %5454
  %5458 = fmul fast float %5453, %5455
  %5459 = fmul fast float %5453, %5456
  %5460 = fadd fast float %5457, %4552
  %5461 = fadd fast float %5458, %4553
  %5462 = fadd fast float %5459, %4557
  br i1 %4819, label %5463, label %5486

; <label>:5463                                    ; preds = %5349
  %5464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3943, float %5446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5465 = extractvalue %dx.types.ResRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.ResRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.ResRet.f32 %5464, 2
  %5468 = fadd fast float %5465, -5.000000e-01
  %5469 = fadd fast float %5466, -5.000000e-01
  %5470 = fadd fast float %5467, -5.000000e-01
  %5471 = fmul fast float %4552, 4.000000e+00
  %5472 = fmul fast float %5471, %5454
  %5473 = fmul fast float %5472, %5468
  %5474 = fmul fast float %4553, 4.000000e+00
  %5475 = fmul fast float %5474, %5455
  %5476 = fmul fast float %5475, %5469
  %5477 = fmul fast float %4557, 4.000000e+00
  %5478 = fmul fast float %5477, %5456
  %5479 = fmul fast float %5478, %5470
  %5480 = fadd fast float %5473, %5460
  %5481 = fadd fast float %5476, %5461
  %5482 = fadd fast float %5479, %5462
  %5483 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5484 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5485 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  br label %5486

; <label>:5486                                    ; preds = %5463, %5349
  %5487 = phi float [ %5483, %5463 ], [ %5460, %5349 ]
  %5488 = phi float [ %5484, %5463 ], [ %5461, %5349 ]
  %5489 = phi float [ %5485, %5463 ], [ %5462, %5349 ]
  %5490 = fmul fast float %5377, 9.843750e-01
  %5491 = fadd fast float %5490, 7.812500e-03
  %5492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5491, float %4809, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 2
  %5494 = extractvalue %dx.types.ResRet.f32 %5492, 3
  %5495 = fmul fast float %5493, %4552
  %5496 = fmul fast float %5493, %4553
  %5497 = fmul fast float %5493, %4557
  %5498 = fadd fast float %5495, %5494
  %5499 = fadd fast float %5496, %5494
  %5500 = fadd fast float %5497, %5494
  br i1 %4819, label %5501, label %5524

; <label>:5501                                    ; preds = %5486
  %5502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3943, float %5377, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5503 = extractvalue %dx.types.ResRet.f32 %5502, 0
  %5504 = extractvalue %dx.types.ResRet.f32 %5502, 1
  %5505 = extractvalue %dx.types.ResRet.f32 %5502, 2
  %5506 = fadd fast float %5503, -5.000000e-01
  %5507 = fadd fast float %5504, -5.000000e-01
  %5508 = fadd fast float %5505, -5.000000e-01
  %5509 = fmul fast float %4552, 4.000000e+00
  %5510 = fmul fast float %5509, %5454
  %5511 = fmul fast float %5510, %5506
  %5512 = fmul fast float %4553, 4.000000e+00
  %5513 = fmul fast float %5512, %5455
  %5514 = fmul fast float %5513, %5507
  %5515 = fmul fast float %4557, 4.000000e+00
  %5516 = fmul fast float %5515, %5456
  %5517 = fmul fast float %5516, %5508
  %5518 = fadd fast float %5511, %5498
  %5519 = fadd fast float %5514, %5499
  %5520 = fadd fast float %5517, %5500
  %5521 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5522 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5523 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  br label %5524

; <label>:5524                                    ; preds = %5501, %5486
  %5525 = phi float [ %5521, %5501 ], [ %5498, %5486 ]
  %5526 = phi float [ %5522, %5501 ], [ %5499, %5486 ]
  %5527 = phi float [ %5523, %5501 ], [ %5500, %5486 ]
  %5528 = call float @dx.op.binary.f32(i32 35, float %5526, float %5527)  ; FMax(a,b)
  %5529 = call float @dx.op.binary.f32(i32 35, float %5525, float %5528)  ; FMax(a,b)
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = fmul fast float %5487, %5445
  %5532 = fmul fast float %5488, %5445
  %5533 = fmul fast float %5489, %5445
  %5534 = fsub fast float 1.000000e+00, %5378
  %5535 = bitcast float %5534 to i32
  %5536 = sitofp i32 %5535 to float
  %5537 = fmul fast float %5536, 5.000000e+00
  %5538 = fadd fast float %5537, 0xC1EFBF8940000000
  %5539 = fptosi float %5538 to i32
  %5540 = bitcast i32 %5539 to float
  %5541 = fmul fast float %5540, %3944
  %5542 = fmul fast float %5530, %5541
  %5543 = fmul fast float %5542, %4869
  %5544 = fmul fast float %5542, %4870
  %5545 = fmul fast float %5542, %4871
  %5546 = fadd fast float %5543, %5531
  %5547 = fadd fast float %5544, %5532
  %5548 = fadd fast float %5545, %5533
  %5549 = fmul fast float %5366, %3940
  %5550 = fmul fast float %5549, %5384
  %5551 = fmul fast float %5550, %5530
  %5552 = fmul fast float %5367, %3940
  %5553 = fmul fast float %5552, %5384
  %5554 = fmul fast float %5553, %5530
  %5555 = fmul fast float %5368, %3940
  %5556 = fmul fast float %5555, %5384
  %5557 = fmul fast float %5556, %5530
  %5558 = fadd fast float %5551, %5205
  %5559 = fadd fast float %5554, %5206
  %5560 = fadd fast float %5557, %5207
  %5561 = fmul fast float %5550, %5546
  %5562 = fmul fast float %5553, %5547
  %5563 = fmul fast float %5556, %5548
  %5564 = fadd fast float %5561, %5202
  %5565 = fadd fast float %5562, %5203
  %5566 = fadd fast float %5563, %5204
  br label %5280

; <label>:5567                                    ; preds = %5280
  br label %5568

; <label>:5568                                    ; preds = %5567, %5168
  %5569 = phi float [ %5170, %5168 ], [ %5281, %5567 ]
  %5570 = phi float [ %5171, %5168 ], [ %5282, %5567 ]
  %5571 = phi float [ %5172, %5168 ], [ %5283, %5567 ]
  %5572 = phi float [ %5173, %5168 ], [ %5284, %5567 ]
  %5573 = phi float [ %5174, %5168 ], [ %5285, %5567 ]
  %5574 = phi float [ %5175, %5168 ], [ %5286, %5567 ]
  %5575 = add i32 %5169, 1
  %5576 = icmp ugt i32 %5575, %5165
  br i1 %5576, label %5577, label %5168

; <label>:5577                                    ; preds = %5568
  br label %5578

; <label>:5578                                    ; preds = %5577, %5144, %5134
  %5579 = phi float [ %5135, %5134 ], [ %5135, %5144 ], [ %5569, %5577 ]
  %5580 = phi float [ %5136, %5134 ], [ %5136, %5144 ], [ %5570, %5577 ]
  %5581 = phi float [ %5137, %5134 ], [ %5137, %5144 ], [ %5571, %5577 ]
  %5582 = phi float [ %5138, %5134 ], [ %5138, %5144 ], [ %5572, %5577 ]
  %5583 = phi float [ %5139, %5134 ], [ %5139, %5144 ], [ %5573, %5577 ]
  %5584 = phi float [ %5140, %5134 ], [ %5140, %5144 ], [ %5574, %5577 ]
  %5585 = call float @dx.op.unary.f32(i32 24, float %4546)  ; Sqrt(value)
  %5586 = call float @dx.op.unary.f32(i32 24, float %4547)  ; Sqrt(value)
  %5587 = call float @dx.op.unary.f32(i32 24, float %4548)  ; Sqrt(value)
  %5588 = fmul fast float %5585, %5582
  %5589 = fmul fast float %5586, %5583
  %5590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5591 = extractvalue %dx.types.CBufRet.f32 %5590, 0
  br i1 %176, label %5592, label %5612

; <label>:5592                                    ; preds = %5578
  %5593 = fadd fast float %5584, %3946
  %5594 = fmul fast float %5593, %3947
  %5595 = fsub fast float 1.000000e+00, %3947
  %5596 = call float @dx.op.unary.f32(i32 7, float %5595)  ; Saturate(value)
  %5597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = extractvalue %dx.types.CBufRet.f32 %5597, 3
  %5599 = fmul fast float %5598, %5596
  %5600 = fadd fast float %5599, %5594
  %5601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5602 = extractvalue %dx.types.CBufRet.f32 %5601, 0
  %5603 = fmul fast float %5602, %4875
  %5604 = fsub fast float %5600, %5603
  %5605 = fadd fast float %5589, %5588
  %5606 = fmul fast float %5591, %5605
  %5607 = extractvalue %dx.types.CBufRet.f32 %5597, 1
  %5608 = fsub fast float %5604, %5607
  %5609 = extractvalue %dx.types.CBufRet.f32 %5597, 2
  %5610 = fmul fast float %5608, %5609
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  br label %5628

; <label>:5612                                    ; preds = %5578
  %5613 = fmul fast float %5587, %5584
  %5614 = fmul fast float %5591, %5588
  %5615 = fmul fast float %5591, %5589
  %5616 = fmul fast float %5613, %5591
  %5617 = add i32 %35, 356
  %5618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5617, i32 undef)  ; BufferLoad(srv,index,wot)
  %5619 = extractvalue %dx.types.ResRet.i32 %5618, 0
  %5620 = and i32 %5619, 32
  %5621 = icmp eq i32 %5620, 0
  br i1 %5621, label %5628, label %5622

; <label>:5622                                    ; preds = %5612
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5625 = fmul fast float %5624, 0x3FE99999A0000000
  %5626 = fadd fast float %5624, %5614
  %5627 = fadd fast float %5625, %5616
  br label %5628

; <label>:5628                                    ; preds = %5622, %5612, %5592
  %5629 = phi float [ %5606, %5592 ], [ %5626, %5622 ], [ %5614, %5612 ]
  %5630 = phi float [ %5611, %5592 ], [ %5615, %5622 ], [ %5615, %5612 ]
  %5631 = phi float [ 1.000000e+00, %5592 ], [ %5627, %5622 ], [ %5616, %5612 ]
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 0
  %5634 = fmul fast float %5633, %5580
  %5635 = fmul fast float %5633, %5581
  %5636 = fadd fast float %5580, %5579
  %5637 = select i1 %176, float %5636, float %5579
  %5638 = fmul float %5637, %5633
  %5639 = select i1 %176, float 0.000000e+00, float %5634
  %5640 = select i1 %176, float 0.000000e+00, float %5635
  %5641 = fmul fast float %5629, %5585
  %5642 = fmul fast float %5630, %5586
  %5643 = fmul fast float %5631, %5587
  %5644 = fadd fast float %5638, %5641
  %5645 = fadd fast float %5639, %5642
  %5646 = fadd fast float %5640, %5643
  %5647 = select i1 %176, float %5630, float %5645
  %5648 = select i1 %176, float %5631, float %5646
  %5649 = call float @dx.op.binary.f32(i32 36, float %5644, float 3.225500e+04)  ; FMin(a,b)
  %5650 = call float @dx.op.binary.f32(i32 36, float %5647, float 3.225500e+04)  ; FMin(a,b)
  %5651 = call float @dx.op.binary.f32(i32 36, float %5648, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5649)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5650)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5651)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

