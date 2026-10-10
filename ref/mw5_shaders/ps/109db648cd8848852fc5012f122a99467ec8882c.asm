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
; shader hash: 53245208ed545d0b3b53ace56234c08b
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
  br i1 %412, label %900, label %413

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
  %860 = and i32 %859, 26624
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %885, label %862

; <label>:862                                     ; preds = %854
  %863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.i32 %863, 0
  %865 = and i32 %864, 16384
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %885, label %867

; <label>:867                                     ; preds = %862
  %868 = and i32 %864, 1048576
  %869 = icmp ne i32 %868, 0
  %870 = add i32 %35, 456
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = add i32 %872, 0
  %874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %874, %dx.types.Handle %72, float %512, float %513, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = add i32 %35, 96
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = lshr i32 %879, 24
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %876, 0x3F70101020000000
  %883 = select i1 %869, float 0x3F70101020000000, float %882
  %884 = fmul fast float %883, %881
  br label %885

; <label>:885                                     ; preds = %867, %862, %854
  %886 = phi float [ %884, %867 ], [ 0.000000e+00, %862 ], [ 0.000000e+00, %854 ]
  %887 = add i32 %35, 96
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = and i32 %889, 255
  %891 = uitofp i32 %890 to float
  %892 = lshr i32 %889, 8
  %893 = and i32 %892, 255
  %894 = uitofp i32 %893 to float
  %895 = call float @dx.op.dot3.f32(i32 55, float %727, float %728, float %729, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %896 = fmul fast float %894, %895
  %897 = fadd fast float %896, %891
  %898 = fmul fast float %897, 0x3F70101020000000
  %899 = call float @dx.op.unary.f32(i32 7, float %898)  ; Saturate(value)
  br label %900

; <label>:900                                     ; preds = %885, %398
  %901 = phi float [ 0.000000e+00, %398 ], [ %808, %885 ]
  %902 = phi float [ 0.000000e+00, %398 ], [ %809, %885 ]
  %903 = phi float [ 0.000000e+00, %398 ], [ %727, %885 ]
  %904 = phi float [ 0.000000e+00, %398 ], [ %728, %885 ]
  %905 = phi float [ 0.000000e+00, %398 ], [ %729, %885 ]
  %906 = phi float [ 0.000000e+00, %398 ], [ %855, %885 ]
  %907 = phi float [ 0.000000e+00, %398 ], [ %856, %885 ]
  %908 = phi float [ 0.000000e+00, %398 ], [ %857, %885 ]
  %909 = phi float [ 0.000000e+00, %398 ], [ %713, %885 ]
  %910 = phi float [ 0.000000e+00, %398 ], [ 1.000000e+00, %885 ]
  %911 = phi float [ 0.000000e+00, %398 ], [ %807, %885 ]
  %912 = phi float [ 0.000000e+00, %398 ], [ %810, %885 ]
  %913 = phi float [ 0.000000e+00, %398 ], [ %886, %885 ]
  %914 = phi float [ 0.000000e+00, %398 ], [ %899, %885 ]
  br i1 %349, label %1795, label %915

; <label>:915                                     ; preds = %900
  %916 = icmp ult i32 %404, 2
  %917 = add i32 %35, 40
  %918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.i32 %918, 0
  %920 = add i32 %35, 44
  %921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %920, i32 undef)  ; BufferLoad(srv,index,wot)
  %922 = extractvalue %dx.types.ResRet.i32 %921, 0
  %923 = or i32 %922, %919
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %1795, label %925

; <label>:925                                     ; preds = %915
  %926 = and i32 %919, 262144
  %927 = icmp ne i32 %926, 0
  %928 = select i1 %927, float %38, float 1.000000e+00
  %929 = select i1 %927, float %39, float 0.000000e+00
  %930 = select i1 %927, float %40, float 0.000000e+00
  %931 = select i1 %927, float %41, float 1.000000e+00
  %932 = select i1 %927, float %42, float %63
  %933 = select i1 %927, float %43, float %64
  %934 = add i32 %35, 300
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = lshr i32 %936, 16
  %938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %937)  ; LegacyF16ToF32(value)
  %939 = fmul fast float %938, 0x3F50624DE0000000
  %940 = add i32 %35, 104
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = lshr i32 %942, 16
  %944 = and i32 %943, 255
  %945 = lshr i32 %942, 24
  %946 = add i32 %35, 308
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = and i32 %948, 65535
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = lshr i32 %948, 16
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = add i32 %35, 48
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = lshr i32 %955, 22
  %957 = shl nuw nsw i32 %956, 5
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = shl i32 %955, 4
  %960 = and i32 %959, 32752
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = lshr i32 %955, 7
  %963 = and i32 %962, 32752
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %966 = extractvalue %dx.types.CBufRet.f32 %965, 3
  %967 = fmul fast float %966, 1.000000e+03
  %968 = fmul fast float %259, %967
  %969 = call float @dx.op.unary.f32(i32 22, float %968)  ; Frc(value)
  %970 = fadd fast float %969, %249
  %971 = fmul fast float %260, %967
  %972 = call float @dx.op.unary.f32(i32 22, float %971)  ; Frc(value)
  %973 = fadd fast float %972, %251
  %974 = fmul fast float %939, %967
  %975 = call float @dx.op.unary.f32(i32 22, float %974)  ; Frc(value)
  %976 = fmul fast float %975, 0x401921FB60000000
  %977 = fadd fast float %976, %958
  %978 = call float @dx.op.unary.f32(i32 13, float %977)  ; Sin(value)
  %979 = call float @dx.op.unary.f32(i32 12, float %977)  ; Cos(value)
  %980 = fsub fast float -0.000000e+00, %978
  %981 = fadd fast float %932, -5.000000e-01
  %982 = fadd fast float %933, -5.000000e-01
  %983 = fmul fast float %950, %981
  %984 = fmul fast float %952, %982
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fmul fast float %961, %985
  %988 = fmul fast float %964, %986
  %989 = fmul fast float %979, %987
  %990 = call float @dx.op.tertiary.f32(i32 46, float %980, float %988, float %989)  ; FMad(a,b,c)
  %991 = fmul fast float %978, %987
  %992 = call float @dx.op.tertiary.f32(i32 46, float %979, float %988, float %991)  ; FMad(a,b,c)
  %993 = fadd fast float %970, %990
  %994 = fadd fast float %973, %992
  %995 = icmp ugt i32 %944, 1
  %996 = icmp ugt i32 %942, 33554431
  %997 = or i1 %996, %995
  br i1 %997, label %998, label %1023

; <label>:998                                     ; preds = %925
  %999 = add i32 %35, 244
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = lshr i32 %1001, 16
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = fmul fast float %966, %1003
  %1005 = call float @dx.op.unary.f32(i32 22, float %1004)  ; Frc(value)
  %1006 = mul nuw nsw i32 %944, %945
  %1007 = uitofp i32 %1006 to float
  %1008 = fmul fast float %1005, %1007
  %1009 = call float @dx.op.unary.f32(i32 27, float %1008)  ; Round_ni(value)
  %1010 = fptoui float %1009 to i32
  %1011 = urem i32 %1010, %944
  %1012 = udiv i32 %1010, %945
  %1013 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %1014 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %1015 = uitofp i32 %1011 to float
  %1016 = uitofp i32 %1012 to float
  %1017 = fadd fast float %1013, %1015
  %1018 = fadd fast float %1014, %1016
  %1019 = uitofp i32 %944 to float
  %1020 = uitofp i32 %945 to float
  %1021 = fdiv fast float %1017, %1019
  %1022 = fdiv fast float %1018, %1020
  br label %1023

; <label>:1023                                    ; preds = %998, %925
  %1024 = phi float [ %1021, %998 ], [ %993, %925 ]
  %1025 = phi float [ %1022, %998 ], [ %994, %925 ]
  %1026 = and i32 %919, 16777216
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1137, label %1028

; <label>:1028                                    ; preds = %1023
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.CBufRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1033 = fadd fast float %1030, %134
  %1034 = fadd fast float %1031, %135
  %1035 = fadd fast float %1032, %136
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = icmp eq i32 %36, 65535
  br i1 %1039, label %1134, label %1040

; <label>:1040                                    ; preds = %1028
  %1041 = lshr i32 %36, 1
  %1042 = shl i32 %1041, 2
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = and i32 %36, 1
  %1046 = icmp ne i32 %1045, 0
  %1047 = lshr i32 %1044, 16
  %1048 = and i32 %1044, 65535
  %1049 = select i1 %1046, i32 %1047, i32 %1048
  %1050 = icmp eq i32 %1049, 65535
  br i1 %1050, label %1130, label %1051

; <label>:1051                                    ; preds = %1040
  %1052 = mul nuw nsw i32 %1049, 40
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = add nuw nsw i32 %1052, 12
  %1058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = add nuw nsw i32 %1052, 24
  %1063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = add nuw nsw i32 %1052, 36
  %1068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  %1070 = fsub fast float %1033, %1054
  %1071 = fsub fast float %1034, %1055
  %1072 = fsub fast float %1035, %1056
  %1073 = fmul fast float %1069, %1070
  %1074 = fmul fast float %1069, %1071
  %1075 = fmul fast float %1069, %1072
  %1076 = call float @dx.op.unary.f32(i32 27, float %1073)  ; Round_ni(value)
  %1077 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1078 = call float @dx.op.unary.f32(i32 27, float %1075)  ; Round_ni(value)
  %1079 = fadd fast float %1076, 5.000000e-01
  %1080 = fadd fast float %1077, 5.000000e-01
  %1081 = fadd fast float %1078, 5.000000e-01
  %1082 = fmul fast float %1079, %1059
  %1083 = fmul fast float %1080, %1060
  %1084 = fmul fast float %1081, %1061
  %1085 = shl i32 %36, 2
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = add i32 %1087, 0
  %1089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1088, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1090 = call float @dx.op.unary.f32(i32 22, float %1082)  ; Frc(value)
  %1091 = call float @dx.op.unary.f32(i32 22, float %1083)  ; Frc(value)
  %1092 = call float @dx.op.unary.f32(i32 22, float %1084)  ; Frc(value)
  %1093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1089, %dx.types.Handle %30, float %1090, float %1091, float %1092, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1096 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1097 = fmul fast float %1094, 1.023000e+03
  %1098 = fmul fast float %1095, 1.023000e+03
  %1099 = fmul fast float %1096, 1.023000e+03
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1104 = call float @dx.op.unary.f32(i32 27, float %1101)  ; Round_ni(value)
  %1105 = call float @dx.op.unary.f32(i32 27, float %1102)  ; Round_ni(value)
  %1106 = fsub fast float %1073, %1076
  %1107 = fsub fast float %1074, %1077
  %1108 = fsub fast float %1075, %1078
  %1109 = fmul fast float %1106, 7.500000e-01
  %1110 = fmul fast float %1107, 7.500000e-01
  %1111 = fmul fast float %1108, 7.500000e-01
  %1112 = fadd fast float %1076, 1.250000e-01
  %1113 = fadd fast float %1112, %1109
  %1114 = fadd fast float %1113, %1103
  %1115 = fadd fast float %1077, 1.250000e-01
  %1116 = fadd fast float %1115, %1110
  %1117 = fadd fast float %1116, %1104
  %1118 = fadd fast float %1078, 1.250000e-01
  %1119 = fadd fast float %1118, %1111
  %1120 = fadd fast float %1119, %1105
  %1121 = fmul fast float %1114, %1064
  %1122 = fmul fast float %1117, %1065
  %1123 = fmul fast float %1120, %1066
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = add i32 %1125, 0
  %1127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1126, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1127, %dx.types.Handle %28, float %1121, float %1122, float %1123, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  br label %1130

; <label>:1130                                    ; preds = %1051, %1040
  %1131 = phi float [ %1129, %1051 ], [ -1.000000e+00, %1040 ]
  %1132 = fadd fast float %1131, %1038
  %1133 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  br label %1134

; <label>:1134                                    ; preds = %1130, %1028
  %1135 = phi float [ %1133, %1130 ], [ %1038, %1028 ]
  %1136 = fmul fast float %1135, %401
  br label %1137

; <label>:1137                                    ; preds = %1134, %1023
  %1138 = phi float [ %1136, %1134 ], [ %401, %1023 ]
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 256
  %1142 = icmp eq i32 %1141, 0
  br i1 %1142, label %1189, label %1143

; <label>:1143                                    ; preds = %1137
  %1144 = add i32 %35, 428
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %1146, 0
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1148, %dx.types.Handle %72, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  %1151 = add i32 %35, 116
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = shl i32 %1153, 4
  %1155 = and i32 %1154, 32752
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = lshr i32 %1153, 7
  %1158 = and i32 %1157, 32752
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fsub fast float 1.000000e+00, %1138
  %1161 = call float @dx.op.binary.f32(i32 35, float %1160, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1162 = bitcast float %1138 to i32
  %1163 = sitofp i32 %1162 to float
  %1164 = fadd fast float %1163, 0xC1CFBF8940000000
  %1165 = fmul fast float %1159, %1164
  %1166 = fadd fast float %1165, 0x41CFBF8940000000
  %1167 = fptosi float %1166 to i32
  %1168 = bitcast i32 %1167 to float
  %1169 = bitcast float %1161 to i32
  %1170 = sitofp i32 %1169 to float
  %1171 = fadd fast float %1170, 0xC1CFBF8940000000
  %1172 = fmul fast float %1171, %1159
  %1173 = fadd fast float %1172, 0x41CFBF8940000000
  %1174 = fptosi float %1173 to i32
  %1175 = bitcast i32 %1174 to float
  %1176 = fmul fast float %1168, %1156
  %1177 = fmul fast float %1175, %1156
  %1178 = fsub fast float %1161, %1176
  %1179 = fadd fast float %1177, %1161
  %1180 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1181 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1182 = fsub fast float %1150, %1180
  %1183 = fsub fast float %1181, %1180
  %1184 = bitcast float %1183 to i32
  %1185 = sub nsw i32 2129859010, %1184
  %1186 = bitcast i32 %1185 to float
  %1187 = fmul fast float %1186, %1182
  %1188 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  br label %1189

; <label>:1189                                    ; preds = %1143, %1137
  %1190 = phi float [ %1188, %1143 ], [ %1138, %1137 ]
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 128
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1211, label %1195

; <label>:1195                                    ; preds = %1189
  %1196 = add i32 %35, 412
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = add i32 %1198, 0
  %1200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1201 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1200, %dx.types.Handle %72, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1202 = extractvalue %dx.types.ResRet.f32 %1201, 0
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = and i32 %1204, 524288
  %1206 = icmp ne i32 %1205, 0
  %1207 = fcmp fast ogt float %1202, 0x3FE0101020000000
  %1208 = select i1 %1207, float 1.000000e+00, float 0.000000e+00
  %1209 = select i1 %1206, float %1208, float %1202
  %1210 = fmul fast float %1209, %1190
  br label %1211

; <label>:1211                                    ; preds = %1195, %1189
  %1212 = phi float [ %1210, %1195 ], [ %1190, %1189 ]
  %1213 = fcmp fast ult float %1212, 0x3F70101020000000
  br i1 %1213, label %1795, label %1214

; <label>:1214                                    ; preds = %1211
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 16
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1417, label %1219

; <label>:1219                                    ; preds = %1214
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = add i32 %35, 364
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = add i32 %1224, 0
  %1226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1226, %dx.types.Handle %71, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.ResRet.f32 %1227, 2
  %1231 = extractvalue %dx.types.ResRet.f32 %1227, 3
  %1232 = and i32 %1221, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = lshr i32 %1221, 8
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = fmul fast float %1231, %1233
  %1238 = fadd fast float %1237, %1236
  %1239 = fmul fast float %1238, 0x3F70101000000000
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 512
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1252, label %1244

; <label>:1244                                    ; preds = %1219
  %1245 = add i32 %35, 444
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = add i32 %1247, 0
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1249, %dx.types.Handle %72, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  br label %1252

; <label>:1252                                    ; preds = %1244, %1219
  %1253 = phi float [ %1251, %1244 ], [ 1.000000e+00, %1219 ]
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 33554432
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1364, label %1258

; <label>:1258                                    ; preds = %1252
  %1259 = add i32 %35, 240
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = and i32 %1261, 65535
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = lshr i32 %1261, 16
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = add i32 %35, 244
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = and i32 %1268, 65535
  %1270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1269)  ; LegacyF16ToF32(value)
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = lshr i32 %1272, 24
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101020000000
  %1276 = and i32 %1272, 255
  %1277 = uitofp i32 %1276 to float
  %1278 = fmul fast float %1277, 0x3F70101020000000
  %1279 = lshr i32 %1272, 8
  %1280 = and i32 %1279, 255
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1281, 0x3F70101020000000
  %1283 = lshr i32 %1272, 16
  %1284 = and i32 %1283, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F70101020000000
  %1287 = add i32 %35, 236
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = lshr i32 %1289, 24
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = and i32 %1289, 255
  %1294 = uitofp i32 %1293 to float
  %1295 = fmul fast float %1294, 0x3F70101020000000
  %1296 = lshr i32 %1289, 8
  %1297 = and i32 %1296, 255
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = lshr i32 %1289, 16
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = bitcast float %1228 to i32
  %1305 = ashr i32 %1304, 1
  %1306 = sub nsw i32 1597463174, %1305
  %1307 = bitcast i32 %1306 to float
  %1308 = fmul fast float %1228, 5.000000e-01
  %1309 = fmul fast float %1307, %1307
  %1310 = fmul fast float %1309, %1308
  %1311 = fsub fast float 1.500000e+00, %1310
  %1312 = fmul fast float %1307, %1228
  %1313 = fmul fast float %1312, %1311
  %1314 = bitcast float %1229 to i32
  %1315 = ashr i32 %1314, 1
  %1316 = sub nsw i32 1597463174, %1315
  %1317 = bitcast i32 %1316 to float
  %1318 = fmul fast float %1229, 5.000000e-01
  %1319 = fmul fast float %1317, %1317
  %1320 = fmul fast float %1319, %1318
  %1321 = fsub fast float 1.500000e+00, %1320
  %1322 = fmul fast float %1317, %1229
  %1323 = fmul fast float %1322, %1321
  %1324 = bitcast float %1230 to i32
  %1325 = ashr i32 %1324, 1
  %1326 = sub nsw i32 1597463174, %1325
  %1327 = bitcast i32 %1326 to float
  %1328 = fmul fast float %1230, 5.000000e-01
  %1329 = fmul fast float %1327, %1327
  %1330 = fmul fast float %1329, %1328
  %1331 = fsub fast float 1.500000e+00, %1330
  %1332 = fmul fast float %1327, %1230
  %1333 = fmul fast float %1332, %1331
  %1334 = fsub fast float %1313, %1295
  %1335 = fsub fast float %1323, %1299
  %1336 = fsub fast float %1333, %1303
  %1337 = fmul fast float %1334, %1263
  %1338 = fmul fast float %1335, %1265
  %1339 = fmul fast float %1336, %1270
  %1340 = fadd fast float %1337, %1278
  %1341 = fadd fast float %1338, %1282
  %1342 = fadd fast float %1339, %1286
  %1343 = call float @dx.op.unary.f32(i32 7, float %1340)  ; Saturate(value)
  %1344 = call float @dx.op.unary.f32(i32 7, float %1341)  ; Saturate(value)
  %1345 = call float @dx.op.unary.f32(i32 7, float %1342)  ; Saturate(value)
  %1346 = fmul fast float %1343, %1343
  %1347 = fmul fast float %1344, %1344
  %1348 = fmul fast float %1345, %1345
  %1349 = fsub fast float %1346, %1228
  %1350 = fsub fast float %1347, %1229
  %1351 = fsub fast float %1348, %1230
  %1352 = fmul fast float %1349, %1253
  %1353 = fmul fast float %1350, %1253
  %1354 = fmul fast float %1351, %1253
  %1355 = fadd fast float %1352, %1228
  %1356 = fadd fast float %1353, %1229
  %1357 = fadd fast float %1354, %1230
  %1358 = fadd fast float %1275, %1239
  %1359 = fsub fast float %1358, %1292
  %1360 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1361 = fsub fast float %1360, %1239
  %1362 = fmul fast float %1361, %1253
  %1363 = fadd fast float %1362, %1239
  br label %1417

; <label>:1364                                    ; preds = %1252
  %1365 = and i32 %1255, 134217728
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1401, label %1367

; <label>:1367                                    ; preds = %1364
  %1368 = call float @dx.op.unary.f32(i32 24, float %236)  ; Sqrt(value)
  %1369 = call float @dx.op.unary.f32(i32 24, float %240)  ; Sqrt(value)
  %1370 = call float @dx.op.unary.f32(i32 24, float %244)  ; Sqrt(value)
  %1371 = fadd fast float %1368, -5.000000e-01
  %1372 = fadd fast float %1369, -5.000000e-01
  %1373 = fadd fast float %1370, -5.000000e-01
  %1374 = fmul fast float %1371, %1253
  %1375 = fmul fast float %1372, %1253
  %1376 = fmul fast float %1373, %1253
  %1377 = fadd fast float %1374, 5.000000e-01
  %1378 = fadd fast float %1375, 5.000000e-01
  %1379 = fadd fast float %1376, 5.000000e-01
  %1380 = call float @dx.op.unary.f32(i32 24, float %1228)  ; Sqrt(value)
  %1381 = call float @dx.op.unary.f32(i32 24, float %1229)  ; Sqrt(value)
  %1382 = call float @dx.op.unary.f32(i32 24, float %1230)  ; Sqrt(value)
  %1383 = fmul fast float %1377, 2.000000e+00
  %1384 = fsub fast float 1.000000e+00, %1383
  %1385 = fmul fast float %1384, %1380
  %1386 = fadd fast float %1385, %1383
  %1387 = fmul fast float %1386, %1380
  %1388 = fmul fast float %1378, 2.000000e+00
  %1389 = fsub fast float 1.000000e+00, %1388
  %1390 = fmul fast float %1389, %1381
  %1391 = fadd fast float %1390, %1388
  %1392 = fmul fast float %1391, %1381
  %1393 = fmul fast float %1379, 2.000000e+00
  %1394 = fsub fast float 1.000000e+00, %1393
  %1395 = fmul fast float %1394, %1382
  %1396 = fadd fast float %1395, %1393
  %1397 = fmul fast float %1396, %1382
  %1398 = fmul fast float %1387, %1387
  %1399 = fmul fast float %1392, %1392
  %1400 = fmul fast float %1397, %1397
  br label %1417

; <label>:1401                                    ; preds = %1364
  %1402 = fmul fast float %236, %236
  %1403 = fmul fast float %240, %240
  %1404 = fmul fast float %244, %244
  %1405 = fadd fast float %1402, -1.000000e+00
  %1406 = fadd fast float %1403, -1.000000e+00
  %1407 = fadd fast float %1404, -1.000000e+00
  %1408 = fmul fast float %1253, %1405
  %1409 = fmul fast float %1253, %1406
  %1410 = fmul fast float %1253, %1407
  %1411 = fadd fast float %1408, 1.000000e+00
  %1412 = fadd fast float %1409, 1.000000e+00
  %1413 = fadd fast float %1410, 1.000000e+00
  %1414 = fmul fast float %1411, %1228
  %1415 = fmul fast float %1412, %1229
  %1416 = fmul fast float %1413, %1230
  br label %1417

; <label>:1417                                    ; preds = %1401, %1367, %1258, %1214
  %1418 = phi float [ %1363, %1258 ], [ %1239, %1367 ], [ %1239, %1401 ], [ 0x3FA23C0BE0000000, %1214 ]
  %1419 = phi float [ %1355, %1258 ], [ %1398, %1367 ], [ %1414, %1401 ], [ 1.000000e+00, %1214 ]
  %1420 = phi float [ %1356, %1258 ], [ %1399, %1367 ], [ %1415, %1401 ], [ 1.000000e+00, %1214 ]
  %1421 = phi float [ %1357, %1258 ], [ %1400, %1367 ], [ %1416, %1401 ], [ 1.000000e+00, %1214 ]
  %1422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.i32 %1422, 1
  %1424 = and i32 %1423, 1
  %1425 = icmp ne i32 %1424, 0
  %1426 = add i32 %35, 356
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 32
  %1430 = icmp ne i32 %1429, 0
  %1431 = and i1 %1425, %1430
  %1432 = select i1 %1431, float 1.000000e+00, float %1419
  %1433 = select i1 %1431, float 0x3FD3333340000000, float %1420
  %1434 = select i1 %1431, float 0x3FD3333340000000, float %1421
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 32
  %1438 = icmp eq i32 %1437, 0
  br i1 %1438, label %1511, label %1439

; <label>:1439                                    ; preds = %1417
  %1440 = add i32 %35, 108
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %35, 380
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = add i32 %1445, 0
  %1447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1447, %dx.types.Handle %71, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.ResRet.f32 %1448, 3
  %1453 = and i32 %1442, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = lshr i32 %1442, 8
  %1456 = and i32 %1455, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = lshr i32 %1442, 16
  %1459 = and i32 %1458, 255
  %1460 = uitofp i32 %1459 to float
  %1461 = fmul fast float %1460, 0x3F70101000000000
  %1462 = fmul fast float %1449, %1454
  %1463 = fadd fast float %1462, %1457
  %1464 = fmul fast float %1463, 0x3F70101000000000
  %1465 = fadd fast float %1450, -5.000000e-01
  %1466 = fadd fast float %1452, -5.000000e-01
  %1467 = fmul fast float %1465, %1461
  %1468 = fmul fast float %1466, %1461
  %1469 = fadd fast float %1467, 5.000000e-01
  %1470 = fadd fast float %1468, 5.000000e-01
  %1471 = fmul fast float %1469, 2.000000e+00
  %1472 = fadd fast float %1471, -1.000000e+00
  %1473 = fmul fast float %1470, 2.000000e+00
  %1474 = fadd fast float %1473, -1.000000e+00
  %1475 = fadd fast float %1472, %1474
  %1476 = fmul fast float %1475, 5.000000e-01
  %1477 = fsub fast float %1472, %1474
  %1478 = fmul fast float %1477, 5.000000e-01
  %1479 = call float @dx.op.unary.f32(i32 6, float %1476)  ; FAbs(value)
  %1480 = fsub fast float 1.000000e+00, %1479
  %1481 = call float @dx.op.unary.f32(i32 6, float %1478)  ; FAbs(value)
  %1482 = fsub fast float %1480, %1481
  %1483 = call float @dx.op.dot3.f32(i32 55, float %1476, float %1478, float %1482, float %1476, float %1478, float %1482)  ; Dot3(ax,ay,az,bx,by,bz)
  %1484 = call float @dx.op.unary.f32(i32 25, float %1483)  ; Rsqrt(value)
  %1485 = fmul fast float %1476, %1484
  %1486 = fmul fast float %1478, %1484
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 67108864
  %1490 = icmp eq i32 %1489, 0
  br i1 %1490, label %1507, label %1491

; <label>:1491                                    ; preds = %1439
  %1492 = add i32 %35, 296
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 65535
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1498 = extractvalue %dx.types.ResRet.i32 %1497, 0
  %1499 = and i32 %1498, 65535
  %1500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1499)  ; LegacyF16ToF32(value)
  %1501 = lshr i32 %1494, 16
  %1502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1501)  ; LegacyF16ToF32(value)
  %1503 = fsub fast float %1464, %1502
  %1504 = fmul fast float %1503, %1496
  %1505 = fadd fast float %1504, %1500
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  br label %1507

; <label>:1507                                    ; preds = %1491, %1439
  %1508 = phi float [ %1506, %1491 ], [ %1464, %1439 ]
  %1509 = call float @dx.op.dot2.f32(i32 54, float %1485, float %1486, float %928, float %929)  ; Dot2(ax,ay,bx,by)
  %1510 = call float @dx.op.dot2.f32(i32 54, float %1485, float %1486, float %930, float %931)  ; Dot2(ax,ay,bx,by)
  br label %1511

; <label>:1511                                    ; preds = %1507, %1417
  %1512 = phi float [ %1508, %1507 ], [ 0x3FD6666660000000, %1417 ]
  %1513 = phi float [ %1509, %1507 ], [ 0.000000e+00, %1417 ]
  %1514 = phi float [ %1510, %1507 ], [ 0.000000e+00, %1417 ]
  %1515 = phi float [ %1451, %1507 ], [ 1.000000e+00, %1417 ]
  %1516 = add i32 %35, 176
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = lshr i32 %1518, 22
  %1520 = shl nuw nsw i32 %1519, 5
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 64
  %1525 = icmp eq i32 %1524, 0
  br i1 %1525, label %1559, label %1526

; <label>:1526                                    ; preds = %1511
  %1527 = add i32 %35, 396
  %1528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1527, i32 undef)  ; BufferLoad(srv,index,wot)
  %1529 = extractvalue %dx.types.ResRet.i32 %1528, 0
  %1530 = add i32 %1529, 0
  %1531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 131072
  %1535 = icmp eq i32 %1534, 0
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1531, %dx.types.Handle %71, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.ResRet.f32 %1536, 2
  %1540 = fmul fast float %1537, %224
  %1541 = fmul fast float %1538, %227
  %1542 = fmul fast float %1539, %230
  br i1 %1535, label %1549, label %1543

; <label>:1543                                    ; preds = %1526
  %1544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1545 = extractvalue %dx.types.CBufRet.f32 %1544, 0
  %1546 = fmul fast float %1545, %1540
  %1547 = fmul fast float %1545, %1541
  %1548 = fmul fast float %1545, %1542
  br label %1549

; <label>:1549                                    ; preds = %1543, %1526
  %1550 = phi float [ %1546, %1543 ], [ %1540, %1526 ]
  %1551 = phi float [ %1547, %1543 ], [ %1541, %1526 ]
  %1552 = phi float [ %1548, %1543 ], [ %1542, %1526 ]
  %1553 = fmul fast float %1550, %1521
  %1554 = select i1 %176, float %1553, float %1550
  %1555 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1551, float %1552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1556 = select i1 %176, float 0.000000e+00, float %1550
  %1557 = select i1 %176, float %1555, float %1551
  %1558 = select i1 %176, float 0.000000e+00, float %1552
  br label %1559

; <label>:1559                                    ; preds = %1549, %1511
  %1560 = phi float [ %1556, %1549 ], [ 0.000000e+00, %1511 ]
  %1561 = phi float [ %1557, %1549 ], [ 0.000000e+00, %1511 ]
  %1562 = phi float [ %1558, %1549 ], [ 0.000000e+00, %1511 ]
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 26624
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1590, label %1567

; <label>:1567                                    ; preds = %1559
  %1568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1569 = extractvalue %dx.types.ResRet.i32 %1568, 0
  %1570 = and i32 %1569, 16384
  %1571 = icmp eq i32 %1570, 0
  br i1 %1571, label %1590, label %1572

; <label>:1572                                    ; preds = %1567
  %1573 = and i32 %1569, 1048576
  %1574 = icmp ne i32 %1573, 0
  %1575 = add i32 %35, 460
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = add i32 %1577, 0
  %1579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1578, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1580 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1579, %dx.types.Handle %72, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1581 = extractvalue %dx.types.ResRet.f32 %1580, 0
  %1582 = add i32 %35, 112
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = lshr i32 %1584, 24
  %1586 = uitofp i32 %1585 to float
  %1587 = fmul fast float %1581, 0x3F70101020000000
  %1588 = select i1 %1574, float 0x3F70101020000000, float %1587
  %1589 = fmul fast float %1588, %1586
  br label %1590

; <label>:1590                                    ; preds = %1572, %1567, %1559
  %1591 = phi float [ %1589, %1572 ], [ 0.000000e+00, %1567 ], [ 0.000000e+00, %1559 ]
  %1592 = add i32 %35, 112
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = lshr i32 %1594, 8
  %1598 = and i32 %1597, 255
  %1599 = uitofp i32 %1598 to float
  %1600 = call float @dx.op.dot3.f32(i32 55, float %1432, float %1433, float %1434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1601 = fmul fast float %1599, %1600
  %1602 = fadd fast float %1601, %1596
  %1603 = fmul fast float %1602, 0x3F70101020000000
  %1604 = call float @dx.op.unary.f32(i32 7, float %1603)  ; Saturate(value)
  br i1 %916, label %1605, label %1613

; <label>:1605                                    ; preds = %1590
  %1606 = fsub fast float 1.000000e+00, %1212
  %1607 = fmul fast float %1606, %903
  %1608 = fmul fast float %1606, %904
  %1609 = fmul fast float %1606, %905
  %1610 = fmul fast float %1606, %906
  %1611 = fmul fast float %1606, %907
  %1612 = fmul fast float %1606, %908
  br label %1613

; <label>:1613                                    ; preds = %1605, %1590
  %1614 = phi float [ %1607, %1605 ], [ %903, %1590 ]
  %1615 = phi float [ %1608, %1605 ], [ %904, %1590 ]
  %1616 = phi float [ %1609, %1605 ], [ %905, %1590 ]
  %1617 = phi float [ %1610, %1605 ], [ %906, %1590 ]
  %1618 = phi float [ %1611, %1605 ], [ %907, %1590 ]
  %1619 = phi float [ %1612, %1605 ], [ %908, %1590 ]
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 3
  %1623 = icmp eq i32 %1622, 3
  br i1 %1623, label %1702, label %1624

; <label>:1624                                    ; preds = %1613
  %1625 = and i32 %1621, 16
  %1626 = icmp ne i32 %1625, 0
  %1627 = select i1 %1626, float %1212, float 0.000000e+00
  %1628 = icmp eq i32 %1622, 0
  br i1 %1628, label %1629, label %1657

; <label>:1629                                    ; preds = %1624
  %1630 = and i32 %1621, 64
  %1631 = icmp ne i32 %1630, 0
  %1632 = select i1 %1631, float %1212, float 0.000000e+00
  %1633 = fsub fast float %1432, %1614
  %1634 = fsub fast float %1433, %1615
  %1635 = fsub fast float %1434, %1616
  %1636 = fmul fast float %1627, %1633
  %1637 = fmul fast float %1627, %1634
  %1638 = fmul fast float %1627, %1635
  %1639 = fadd fast float %1636, %1614
  %1640 = fadd fast float %1637, %1615
  %1641 = fadd fast float %1638, %1616
  %1642 = fsub fast float %1418, %909
  %1643 = fmul fast float %1627, %1642
  %1644 = fadd fast float %1643, %909
  %1645 = fsub fast float %1560, %1617
  %1646 = fsub fast float %1561, %1618
  %1647 = fsub fast float %1562, %1619
  %1648 = fmul fast float %1632, %1645
  %1649 = fmul fast float %1632, %1646
  %1650 = fmul fast float %1632, %1647
  %1651 = fadd fast float %1648, %1617
  %1652 = fadd fast float %1649, %1618
  %1653 = fadd fast float %1650, %1619
  %1654 = fsub fast float %1604, %914
  %1655 = fmul fast float %1627, %1654
  %1656 = fadd fast float %1655, %914
  br label %1702

; <label>:1657                                    ; preds = %1624
  %1658 = icmp eq i32 %1622, 1
  br i1 %1658, label %1659, label %1672

; <label>:1659                                    ; preds = %1657
  %1660 = fadd fast float %1432, -1.000000e+00
  %1661 = fadd fast float %1433, -1.000000e+00
  %1662 = fadd fast float %1434, -1.000000e+00
  %1663 = fmul fast float %1627, %1660
  %1664 = fmul fast float %1627, %1661
  %1665 = fmul fast float %1627, %1662
  %1666 = fadd fast float %1663, 1.000000e+00
  %1667 = fadd fast float %1664, 1.000000e+00
  %1668 = fadd fast float %1665, 1.000000e+00
  %1669 = fmul fast float %1666, %1614
  %1670 = fmul fast float %1667, %1615
  %1671 = fmul fast float %1668, %1616
  br label %1702

; <label>:1672                                    ; preds = %1657
  %1673 = icmp eq i32 %1622, 2
  br i1 %1673, label %1674, label %1702

; <label>:1674                                    ; preds = %1672
  %1675 = call float @dx.op.unary.f32(i32 24, float %1432)  ; Sqrt(value)
  %1676 = call float @dx.op.unary.f32(i32 24, float %1433)  ; Sqrt(value)
  %1677 = call float @dx.op.unary.f32(i32 24, float %1434)  ; Sqrt(value)
  %1678 = fadd fast float %1675, -5.000000e-01
  %1679 = fadd fast float %1676, -5.000000e-01
  %1680 = fadd fast float %1677, -5.000000e-01
  %1681 = fmul fast float %1678, %1627
  %1682 = fmul fast float %1679, %1627
  %1683 = fmul fast float %1680, %1627
  %1684 = fadd fast float %1681, 5.000000e-01
  %1685 = fadd fast float %1682, 5.000000e-01
  %1686 = fadd fast float %1683, 5.000000e-01
  %1687 = fmul fast float %1684, 2.000000e+00
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = fmul fast float %1688, %1614
  %1690 = fadd fast float %1689, %1687
  %1691 = fmul fast float %1690, %1614
  %1692 = fmul fast float %1685, 2.000000e+00
  %1693 = fsub fast float 1.000000e+00, %1692
  %1694 = fmul fast float %1693, %1615
  %1695 = fadd fast float %1694, %1692
  %1696 = fmul fast float %1695, %1615
  %1697 = fmul fast float %1686, 2.000000e+00
  %1698 = fsub fast float 1.000000e+00, %1697
  %1699 = fmul fast float %1698, %1616
  %1700 = fadd fast float %1699, %1697
  %1701 = fmul fast float %1700, %1616
  br label %1702

; <label>:1702                                    ; preds = %1674, %1672, %1659, %1629, %1613
  %1703 = phi float [ %1614, %1613 ], [ %1691, %1674 ], [ %1614, %1672 ], [ %1669, %1659 ], [ %1639, %1629 ]
  %1704 = phi float [ %1615, %1613 ], [ %1696, %1674 ], [ %1615, %1672 ], [ %1670, %1659 ], [ %1640, %1629 ]
  %1705 = phi float [ %1616, %1613 ], [ %1701, %1674 ], [ %1616, %1672 ], [ %1671, %1659 ], [ %1641, %1629 ]
  %1706 = phi float [ %1617, %1613 ], [ %1617, %1674 ], [ %1617, %1672 ], [ %1617, %1659 ], [ %1651, %1629 ]
  %1707 = phi float [ %1618, %1613 ], [ %1618, %1674 ], [ %1618, %1672 ], [ %1618, %1659 ], [ %1652, %1629 ]
  %1708 = phi float [ %1619, %1613 ], [ %1619, %1674 ], [ %1619, %1672 ], [ %1619, %1659 ], [ %1653, %1629 ]
  %1709 = phi float [ %909, %1613 ], [ %909, %1674 ], [ %909, %1672 ], [ %909, %1659 ], [ %1644, %1629 ]
  %1710 = phi float [ %914, %1613 ], [ %914, %1674 ], [ %914, %1672 ], [ %914, %1659 ], [ %1656, %1629 ]
  %1711 = and i32 %1621, 12
  %1712 = icmp eq i32 %1711, 12
  br i1 %1712, label %1795, label %1713

; <label>:1713                                    ; preds = %1702
  %1714 = and i32 %1621, 2097184
  %1715 = icmp eq i32 %1714, 2097184
  %1716 = select i1 %1715, float %1212, float 0.000000e+00
  %1717 = and i32 %1621, 4194336
  %1718 = icmp eq i32 %1717, 4194336
  %1719 = select i1 %1718, float %1212, float 0.000000e+00
  %1720 = and i32 %1621, 8388640
  %1721 = icmp eq i32 %1720, 8388640
  %1722 = select i1 %1721, float %1212, float 0.000000e+00
  %1723 = and i32 %1621, 16384
  %1724 = icmp ne i32 %1723, 0
  %1725 = select i1 %1724, float %1212, float 0.000000e+00
  %1726 = icmp eq i32 %1711, 0
  br i1 %1726, label %1727, label %1743

; <label>:1727                                    ; preds = %1713
  %1728 = fsub fast float %1513, %901
  %1729 = fsub fast float %1514, %902
  %1730 = fmul fast float %1716, %1728
  %1731 = fmul fast float %1716, %1729
  %1732 = fadd fast float %1730, %901
  %1733 = fadd fast float %1731, %902
  %1734 = fsub fast float %1515, %912
  %1735 = fmul fast float %1719, %1734
  %1736 = fadd fast float %1735, %912
  %1737 = fsub fast float %1512, %911
  %1738 = fmul fast float %1722, %1737
  %1739 = fadd fast float %1738, %911
  %1740 = fsub fast float %1591, %913
  %1741 = fmul fast float %1725, %1740
  %1742 = fadd fast float %1741, %913
  br label %1795

; <label>:1743                                    ; preds = %1713
  %1744 = icmp eq i32 %1711, 4
  br i1 %1744, label %1745, label %1779

; <label>:1745                                    ; preds = %1743
  %1746 = fmul fast float %1716, %1513
  %1747 = fmul fast float %1716, %1514
  %1748 = fadd fast float %1746, %901
  %1749 = fadd fast float %1747, %902
  %1750 = call float @dx.op.binary.f32(i32 36, float %912, float %1515)  ; FMin(a,b)
  %1751 = fsub fast float %1750, %912
  %1752 = fmul fast float %1751, %1719
  %1753 = fadd fast float %1752, %912
  %1754 = fadd fast float %1512, %911
  %1755 = fmul fast float %1754, 0x3FF337FAE0000000
  %1756 = fmul fast float %911, %911
  %1757 = fmul fast float %1512, %1512
  %1758 = fadd fast float %1757, %1756
  %1759 = fmul fast float %1758, 0x3FE5152B00000000
  %1760 = fmul fast float %911, 0xBFCC1F85E0000000
  %1761 = fmul fast float %1760, %1512
  %1762 = fadd fast float %1761, 0xBFE1363700000000
  %1763 = fadd fast float %1762, %1755
  %1764 = fsub fast float %1763, %1759
  %1765 = fmul fast float %1754, 0x3FBA6F0D00000000
  %1766 = fmul fast float %1758, 0x3FD0432880000000
  %1767 = fmul fast float %911, 0xBFEF110800000000
  %1768 = fmul fast float %1767, %1512
  %1769 = fadd fast float %1768, 1.000000e+00
  %1770 = fsub fast float %1769, %1765
  %1771 = fadd fast float %1770, %1766
  %1772 = fdiv fast float %1764, %1771
  %1773 = call float @dx.op.unary.f32(i32 7, float %1772)  ; Saturate(value)
  %1774 = fsub fast float %1773, %911
  %1775 = fmul fast float %1774, %1722
  %1776 = fadd fast float %1775, %911
  %1777 = fmul fast float %1725, %1591
  %1778 = fadd fast float %1777, %913
  br label %1795

; <label>:1779                                    ; preds = %1743
  %1780 = icmp eq i32 %1711, 8
  br i1 %1780, label %1781, label %1795

; <label>:1781                                    ; preds = %1779
  %1782 = fmul fast float %1716, %1513
  %1783 = fmul fast float %1716, %1514
  %1784 = fadd fast float %1782, %901
  %1785 = fadd fast float %1783, %902
  %1786 = call float @dx.op.binary.f32(i32 36, float %912, float %1515)  ; FMin(a,b)
  %1787 = fsub fast float %1786, %912
  %1788 = fmul fast float %1787, %1719
  %1789 = fadd fast float %1788, %912
  %1790 = fsub fast float %1512, %911
  %1791 = fmul fast float %1722, %1790
  %1792 = fadd fast float %1791, %911
  %1793 = fmul fast float %1725, %1591
  %1794 = fadd fast float %1793, %913
  br label %1795

; <label>:1795                                    ; preds = %1781, %1779, %1745, %1727, %1702, %1211, %915, %900
  %1796 = phi float [ %901, %1702 ], [ %901, %1211 ], [ %901, %900 ], [ %1784, %1781 ], [ %901, %1779 ], [ %1748, %1745 ], [ %1732, %1727 ], [ %901, %915 ]
  %1797 = phi float [ %902, %1702 ], [ %902, %1211 ], [ %902, %900 ], [ %1785, %1781 ], [ %902, %1779 ], [ %1749, %1745 ], [ %1733, %1727 ], [ %902, %915 ]
  %1798 = phi float [ %1703, %1702 ], [ %903, %1211 ], [ %903, %900 ], [ %1703, %1781 ], [ %1703, %1779 ], [ %1703, %1745 ], [ %1703, %1727 ], [ %903, %915 ]
  %1799 = phi float [ %1704, %1702 ], [ %904, %1211 ], [ %904, %900 ], [ %1704, %1781 ], [ %1704, %1779 ], [ %1704, %1745 ], [ %1704, %1727 ], [ %904, %915 ]
  %1800 = phi float [ %1705, %1702 ], [ %905, %1211 ], [ %905, %900 ], [ %1705, %1781 ], [ %1705, %1779 ], [ %1705, %1745 ], [ %1705, %1727 ], [ %905, %915 ]
  %1801 = phi float [ %1706, %1702 ], [ %906, %1211 ], [ %906, %900 ], [ %1706, %1781 ], [ %1706, %1779 ], [ %1706, %1745 ], [ %1706, %1727 ], [ %906, %915 ]
  %1802 = phi float [ %1707, %1702 ], [ %907, %1211 ], [ %907, %900 ], [ %1707, %1781 ], [ %1707, %1779 ], [ %1707, %1745 ], [ %1707, %1727 ], [ %907, %915 ]
  %1803 = phi float [ %1708, %1702 ], [ %908, %1211 ], [ %908, %900 ], [ %1708, %1781 ], [ %1708, %1779 ], [ %1708, %1745 ], [ %1708, %1727 ], [ %908, %915 ]
  %1804 = phi float [ %1709, %1702 ], [ %909, %1211 ], [ %909, %900 ], [ %1709, %1781 ], [ %1709, %1779 ], [ %1709, %1745 ], [ %1709, %1727 ], [ %909, %915 ]
  %1805 = phi float [ %911, %1702 ], [ %911, %1211 ], [ %911, %900 ], [ %1792, %1781 ], [ %911, %1779 ], [ %1776, %1745 ], [ %1739, %1727 ], [ %911, %915 ]
  %1806 = phi float [ %912, %1702 ], [ %912, %1211 ], [ %912, %900 ], [ %1789, %1781 ], [ %912, %1779 ], [ %1753, %1745 ], [ %1736, %1727 ], [ %912, %915 ]
  %1807 = phi float [ %913, %1702 ], [ %913, %1211 ], [ %913, %900 ], [ %1794, %1781 ], [ %913, %1779 ], [ %1778, %1745 ], [ %1742, %1727 ], [ %913, %915 ]
  %1808 = phi float [ %1710, %1702 ], [ %914, %1211 ], [ %914, %900 ], [ %1710, %1781 ], [ %1710, %1779 ], [ %1710, %1745 ], [ %1710, %1727 ], [ %914, %915 ]
  br i1 %351, label %2689, label %1809

; <label>:1809                                    ; preds = %1795
  %1810 = icmp ult i32 %404, 3
  %1811 = add i32 %35, 56
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = add i32 %35, 60
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = or i32 %1816, %1813
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %2689, label %1819

; <label>:1819                                    ; preds = %1809
  %1820 = and i32 %1813, 262144
  %1821 = icmp ne i32 %1820, 0
  %1822 = select i1 %1821, float %38, float 1.000000e+00
  %1823 = select i1 %1821, float %39, float 0.000000e+00
  %1824 = select i1 %1821, float %40, float 0.000000e+00
  %1825 = select i1 %1821, float %41, float 1.000000e+00
  %1826 = select i1 %1821, float %42, float %63
  %1827 = select i1 %1821, float %43, float %64
  %1828 = add i32 %35, 316
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = lshr i32 %1830, 16
  %1832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1831)  ; LegacyF16ToF32(value)
  %1833 = fmul fast float %1832, 0x3F50624DE0000000
  %1834 = add i32 %35, 120
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = lshr i32 %1836, 16
  %1838 = and i32 %1837, 255
  %1839 = lshr i32 %1836, 24
  %1840 = add i32 %35, 324
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 65535
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = lshr i32 %1842, 16
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = add i32 %35, 64
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = lshr i32 %1849, 22
  %1851 = shl nuw nsw i32 %1850, 5
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = shl i32 %1849, 4
  %1854 = and i32 %1853, 32752
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = lshr i32 %1849, 7
  %1857 = and i32 %1856, 32752
  %1858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1857)  ; LegacyF16ToF32(value)
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 3
  %1861 = fmul fast float %1860, 1.000000e+03
  %1862 = fmul fast float %301, %1861
  %1863 = call float @dx.op.unary.f32(i32 22, float %1862)  ; Frc(value)
  %1864 = fadd fast float %1863, %291
  %1865 = fmul fast float %302, %1861
  %1866 = call float @dx.op.unary.f32(i32 22, float %1865)  ; Frc(value)
  %1867 = fadd fast float %1866, %293
  %1868 = fmul fast float %1833, %1861
  %1869 = call float @dx.op.unary.f32(i32 22, float %1868)  ; Frc(value)
  %1870 = fmul fast float %1869, 0x401921FB60000000
  %1871 = fadd fast float %1870, %1852
  %1872 = call float @dx.op.unary.f32(i32 13, float %1871)  ; Sin(value)
  %1873 = call float @dx.op.unary.f32(i32 12, float %1871)  ; Cos(value)
  %1874 = fsub fast float -0.000000e+00, %1872
  %1875 = fadd fast float %1826, -5.000000e-01
  %1876 = fadd fast float %1827, -5.000000e-01
  %1877 = fmul fast float %1844, %1875
  %1878 = fmul fast float %1846, %1876
  %1879 = fadd fast float %1877, 5.000000e-01
  %1880 = fadd fast float %1878, 5.000000e-01
  %1881 = fmul fast float %1855, %1879
  %1882 = fmul fast float %1858, %1880
  %1883 = fmul fast float %1873, %1881
  %1884 = call float @dx.op.tertiary.f32(i32 46, float %1874, float %1882, float %1883)  ; FMad(a,b,c)
  %1885 = fmul fast float %1872, %1881
  %1886 = call float @dx.op.tertiary.f32(i32 46, float %1873, float %1882, float %1885)  ; FMad(a,b,c)
  %1887 = fadd fast float %1864, %1884
  %1888 = fadd fast float %1867, %1886
  %1889 = icmp ugt i32 %1838, 1
  %1890 = icmp ugt i32 %1836, 33554431
  %1891 = or i1 %1890, %1889
  br i1 %1891, label %1892, label %1917

; <label>:1892                                    ; preds = %1819
  %1893 = add i32 %35, 260
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = lshr i32 %1895, 16
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = fmul fast float %1860, %1897
  %1899 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1900 = mul nuw nsw i32 %1838, %1839
  %1901 = uitofp i32 %1900 to float
  %1902 = fmul fast float %1899, %1901
  %1903 = call float @dx.op.unary.f32(i32 27, float %1902)  ; Round_ni(value)
  %1904 = fptoui float %1903 to i32
  %1905 = urem i32 %1904, %1838
  %1906 = udiv i32 %1904, %1839
  %1907 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1908 = call float @dx.op.unary.f32(i32 22, float %1888)  ; Frc(value)
  %1909 = uitofp i32 %1905 to float
  %1910 = uitofp i32 %1906 to float
  %1911 = fadd fast float %1907, %1909
  %1912 = fadd fast float %1908, %1910
  %1913 = uitofp i32 %1838 to float
  %1914 = uitofp i32 %1839 to float
  %1915 = fdiv fast float %1911, %1913
  %1916 = fdiv fast float %1912, %1914
  br label %1917

; <label>:1917                                    ; preds = %1892, %1819
  %1918 = phi float [ %1915, %1892 ], [ %1887, %1819 ]
  %1919 = phi float [ %1916, %1892 ], [ %1888, %1819 ]
  %1920 = and i32 %1813, 16777216
  %1921 = icmp eq i32 %1920, 0
  br i1 %1921, label %2031, label %1922

; <label>:1922                                    ; preds = %1917
  %1923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1924 = extractvalue %dx.types.CBufRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.CBufRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.CBufRet.f32 %1923, 2
  %1927 = fadd fast float %1924, %134
  %1928 = fadd fast float %1925, %135
  %1929 = fadd fast float %1926, %136
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 0
  %1932 = call float @dx.op.unary.f32(i32 7, float %1931)  ; Saturate(value)
  %1933 = icmp eq i32 %36, 65535
  br i1 %1933, label %2028, label %1934

; <label>:1934                                    ; preds = %1922
  %1935 = lshr i32 %36, 1
  %1936 = shl i32 %1935, 2
  %1937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1936, i32 undef)  ; BufferLoad(srv,index,wot)
  %1938 = extractvalue %dx.types.ResRet.i32 %1937, 0
  %1939 = and i32 %36, 1
  %1940 = icmp ne i32 %1939, 0
  %1941 = lshr i32 %1938, 16
  %1942 = and i32 %1938, 65535
  %1943 = select i1 %1940, i32 %1941, i32 %1942
  %1944 = icmp eq i32 %1943, 65535
  br i1 %1944, label %2024, label %1945

; <label>:1945                                    ; preds = %1934
  %1946 = mul nuw nsw i32 %1943, 40
  %1947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.ResRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.ResRet.f32 %1947, 2
  %1951 = add nuw nsw i32 %1946, 12
  %1952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.f32 %1952, 0
  %1954 = extractvalue %dx.types.ResRet.f32 %1952, 1
  %1955 = extractvalue %dx.types.ResRet.f32 %1952, 2
  %1956 = add nuw nsw i32 %1946, 24
  %1957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = extractvalue %dx.types.ResRet.f32 %1957, 1
  %1960 = extractvalue %dx.types.ResRet.f32 %1957, 2
  %1961 = add nuw nsw i32 %1946, 36
  %1962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.f32 %1962, 0
  %1964 = fsub fast float %1927, %1948
  %1965 = fsub fast float %1928, %1949
  %1966 = fsub fast float %1929, %1950
  %1967 = fmul fast float %1963, %1964
  %1968 = fmul fast float %1963, %1965
  %1969 = fmul fast float %1963, %1966
  %1970 = call float @dx.op.unary.f32(i32 27, float %1967)  ; Round_ni(value)
  %1971 = call float @dx.op.unary.f32(i32 27, float %1968)  ; Round_ni(value)
  %1972 = call float @dx.op.unary.f32(i32 27, float %1969)  ; Round_ni(value)
  %1973 = fadd fast float %1970, 5.000000e-01
  %1974 = fadd fast float %1971, 5.000000e-01
  %1975 = fadd fast float %1972, 5.000000e-01
  %1976 = fmul fast float %1973, %1953
  %1977 = fmul fast float %1974, %1954
  %1978 = fmul fast float %1975, %1955
  %1979 = shl i32 %36, 2
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = add i32 %1981, 0
  %1983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1984 = call float @dx.op.unary.f32(i32 22, float %1976)  ; Frc(value)
  %1985 = call float @dx.op.unary.f32(i32 22, float %1977)  ; Frc(value)
  %1986 = call float @dx.op.unary.f32(i32 22, float %1978)  ; Frc(value)
  %1987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1983, %dx.types.Handle %30, float %1984, float %1985, float %1986, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = extractvalue %dx.types.ResRet.f32 %1987, 1
  %1990 = extractvalue %dx.types.ResRet.f32 %1987, 2
  %1991 = fmul fast float %1988, 1.023000e+03
  %1992 = fmul fast float %1989, 1.023000e+03
  %1993 = fmul fast float %1990, 1.023000e+03
  %1994 = fadd fast float %1991, 5.000000e-01
  %1995 = fadd fast float %1992, 5.000000e-01
  %1996 = fadd fast float %1993, 5.000000e-01
  %1997 = call float @dx.op.unary.f32(i32 27, float %1994)  ; Round_ni(value)
  %1998 = call float @dx.op.unary.f32(i32 27, float %1995)  ; Round_ni(value)
  %1999 = call float @dx.op.unary.f32(i32 27, float %1996)  ; Round_ni(value)
  %2000 = fsub fast float %1967, %1970
  %2001 = fsub fast float %1968, %1971
  %2002 = fsub fast float %1969, %1972
  %2003 = fmul fast float %2000, 7.500000e-01
  %2004 = fmul fast float %2001, 7.500000e-01
  %2005 = fmul fast float %2002, 7.500000e-01
  %2006 = fadd fast float %1970, 1.250000e-01
  %2007 = fadd fast float %2006, %2003
  %2008 = fadd fast float %2007, %1997
  %2009 = fadd fast float %1971, 1.250000e-01
  %2010 = fadd fast float %2009, %2004
  %2011 = fadd fast float %2010, %1998
  %2012 = fadd fast float %1972, 1.250000e-01
  %2013 = fadd fast float %2012, %2005
  %2014 = fadd fast float %2013, %1999
  %2015 = fmul fast float %2008, %1958
  %2016 = fmul fast float %2011, %1959
  %2017 = fmul fast float %2014, %1960
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = add i32 %2019, 0
  %2021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2020, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2021, %dx.types.Handle %28, float %2015, float %2016, float %2017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  br label %2024

; <label>:2024                                    ; preds = %1945, %1934
  %2025 = phi float [ %2023, %1945 ], [ -1.000000e+00, %1934 ]
  %2026 = fadd fast float %2025, %1932
  %2027 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  br label %2028

; <label>:2028                                    ; preds = %2024, %1922
  %2029 = phi float [ %2027, %2024 ], [ %1932, %1922 ]
  %2030 = fmul fast float %2029, %400
  br label %2031

; <label>:2031                                    ; preds = %2028, %1917
  %2032 = phi float [ %2030, %2028 ], [ %400, %1917 ]
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 256
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2083, label %2037

; <label>:2037                                    ; preds = %2031
  %2038 = add i32 %35, 432
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = add i32 %2040, 0
  %2042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2043 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2042, %dx.types.Handle %72, float %1918, float %1919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2044 = extractvalue %dx.types.ResRet.f32 %2043, 0
  %2045 = add i32 %35, 132
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = shl i32 %2047, 4
  %2049 = and i32 %2048, 32752
  %2050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2049)  ; LegacyF16ToF32(value)
  %2051 = lshr i32 %2047, 7
  %2052 = and i32 %2051, 32752
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = fsub fast float 1.000000e+00, %2032
  %2055 = call float @dx.op.binary.f32(i32 35, float %2054, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2056 = bitcast float %2032 to i32
  %2057 = sitofp i32 %2056 to float
  %2058 = fadd fast float %2057, 0xC1CFBF8940000000
  %2059 = fmul fast float %2053, %2058
  %2060 = fadd fast float %2059, 0x41CFBF8940000000
  %2061 = fptosi float %2060 to i32
  %2062 = bitcast i32 %2061 to float
  %2063 = bitcast float %2055 to i32
  %2064 = sitofp i32 %2063 to float
  %2065 = fadd fast float %2064, 0xC1CFBF8940000000
  %2066 = fmul fast float %2065, %2053
  %2067 = fadd fast float %2066, 0x41CFBF8940000000
  %2068 = fptosi float %2067 to i32
  %2069 = bitcast i32 %2068 to float
  %2070 = fmul fast float %2062, %2050
  %2071 = fmul fast float %2069, %2050
  %2072 = fsub fast float %2055, %2070
  %2073 = fadd fast float %2071, %2055
  %2074 = call float @dx.op.unary.f32(i32 7, float %2072)  ; Saturate(value)
  %2075 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2076 = fsub fast float %2044, %2074
  %2077 = fsub fast float %2075, %2074
  %2078 = bitcast float %2077 to i32
  %2079 = sub nsw i32 2129859010, %2078
  %2080 = bitcast i32 %2079 to float
  %2081 = fmul fast float %2080, %2076
  %2082 = call float @dx.op.unary.f32(i32 7, float %2081)  ; Saturate(value)
  br label %2083

; <label>:2083                                    ; preds = %2037, %2031
  %2084 = phi float [ %2082, %2037 ], [ %2032, %2031 ]
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 128
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2105, label %2089

; <label>:2089                                    ; preds = %2083
  %2090 = add i32 %35, 416
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = add i32 %2092, 0
  %2094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2094, %dx.types.Handle %72, float %1918, float %1919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = and i32 %2098, 524288
  %2100 = icmp ne i32 %2099, 0
  %2101 = fcmp fast ogt float %2096, 0x3FE0101020000000
  %2102 = select i1 %2101, float 1.000000e+00, float 0.000000e+00
  %2103 = select i1 %2100, float %2102, float %2096
  %2104 = fmul fast float %2103, %2084
  br label %2105

; <label>:2105                                    ; preds = %2089, %2083
  %2106 = phi float [ %2104, %2089 ], [ %2084, %2083 ]
  %2107 = fcmp fast ult float %2106, 0x3F70101020000000
  br i1 %2107, label %2689, label %2108

; <label>:2108                                    ; preds = %2105
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 16
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2311, label %2113

; <label>:2113                                    ; preds = %2108
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %35, 368
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = add i32 %2118, 0
  %2120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2121 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2120, %dx.types.Handle %71, float %1918, float %1919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2122 = extractvalue %dx.types.ResRet.f32 %2121, 0
  %2123 = extractvalue %dx.types.ResRet.f32 %2121, 1
  %2124 = extractvalue %dx.types.ResRet.f32 %2121, 2
  %2125 = extractvalue %dx.types.ResRet.f32 %2121, 3
  %2126 = and i32 %2115, 255
  %2127 = uitofp i32 %2126 to float
  %2128 = lshr i32 %2115, 8
  %2129 = and i32 %2128, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2125, %2127
  %2132 = fadd fast float %2131, %2130
  %2133 = fmul fast float %2132, 0x3F70101000000000
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 512
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2146, label %2138

; <label>:2138                                    ; preds = %2113
  %2139 = add i32 %35, 448
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = add i32 %2141, 0
  %2143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2143, %dx.types.Handle %72, float %1918, float %1919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  br label %2146

; <label>:2146                                    ; preds = %2138, %2113
  %2147 = phi float [ %2145, %2138 ], [ 1.000000e+00, %2113 ]
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %2149, 33554432
  %2151 = icmp eq i32 %2150, 0
  br i1 %2151, label %2258, label %2152

; <label>:2152                                    ; preds = %2146
  %2153 = add i32 %35, 256
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = and i32 %2155, 65535
  %2157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2156)  ; LegacyF16ToF32(value)
  %2158 = lshr i32 %2155, 16
  %2159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2158)  ; LegacyF16ToF32(value)
  %2160 = add i32 %35, 260
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = and i32 %2162, 65535
  %2164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2163)  ; LegacyF16ToF32(value)
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = lshr i32 %2166, 24
  %2168 = uitofp i32 %2167 to float
  %2169 = fmul fast float %2168, 0x3F70101020000000
  %2170 = and i32 %2166, 255
  %2171 = uitofp i32 %2170 to float
  %2172 = fmul fast float %2171, 0x3F70101020000000
  %2173 = lshr i32 %2166, 8
  %2174 = and i32 %2173, 255
  %2175 = uitofp i32 %2174 to float
  %2176 = fmul fast float %2175, 0x3F70101020000000
  %2177 = lshr i32 %2166, 16
  %2178 = and i32 %2177, 255
  %2179 = uitofp i32 %2178 to float
  %2180 = fmul fast float %2179, 0x3F70101020000000
  %2181 = add i32 %35, 252
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = lshr i32 %2183, 24
  %2185 = uitofp i32 %2184 to float
  %2186 = fmul fast float %2185, 0x3F70101020000000
  %2187 = and i32 %2183, 255
  %2188 = uitofp i32 %2187 to float
  %2189 = fmul fast float %2188, 0x3F70101020000000
  %2190 = lshr i32 %2183, 8
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2192, 0x3F70101020000000
  %2194 = lshr i32 %2183, 16
  %2195 = and i32 %2194, 255
  %2196 = uitofp i32 %2195 to float
  %2197 = fmul fast float %2196, 0x3F70101020000000
  %2198 = bitcast float %2122 to i32
  %2199 = ashr i32 %2198, 1
  %2200 = sub nsw i32 1597463174, %2199
  %2201 = bitcast i32 %2200 to float
  %2202 = fmul fast float %2122, 5.000000e-01
  %2203 = fmul fast float %2201, %2201
  %2204 = fmul fast float %2203, %2202
  %2205 = fsub fast float 1.500000e+00, %2204
  %2206 = fmul fast float %2201, %2122
  %2207 = fmul fast float %2206, %2205
  %2208 = bitcast float %2123 to i32
  %2209 = ashr i32 %2208, 1
  %2210 = sub nsw i32 1597463174, %2209
  %2211 = bitcast i32 %2210 to float
  %2212 = fmul fast float %2123, 5.000000e-01
  %2213 = fmul fast float %2211, %2211
  %2214 = fmul fast float %2213, %2212
  %2215 = fsub fast float 1.500000e+00, %2214
  %2216 = fmul fast float %2211, %2123
  %2217 = fmul fast float %2216, %2215
  %2218 = bitcast float %2124 to i32
  %2219 = ashr i32 %2218, 1
  %2220 = sub nsw i32 1597463174, %2219
  %2221 = bitcast i32 %2220 to float
  %2222 = fmul fast float %2124, 5.000000e-01
  %2223 = fmul fast float %2221, %2221
  %2224 = fmul fast float %2223, %2222
  %2225 = fsub fast float 1.500000e+00, %2224
  %2226 = fmul fast float %2221, %2124
  %2227 = fmul fast float %2226, %2225
  %2228 = fsub fast float %2207, %2189
  %2229 = fsub fast float %2217, %2193
  %2230 = fsub fast float %2227, %2197
  %2231 = fmul fast float %2228, %2157
  %2232 = fmul fast float %2229, %2159
  %2233 = fmul fast float %2230, %2164
  %2234 = fadd fast float %2231, %2172
  %2235 = fadd fast float %2232, %2176
  %2236 = fadd fast float %2233, %2180
  %2237 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2238 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2239 = call float @dx.op.unary.f32(i32 7, float %2236)  ; Saturate(value)
  %2240 = fmul fast float %2237, %2237
  %2241 = fmul fast float %2238, %2238
  %2242 = fmul fast float %2239, %2239
  %2243 = fsub fast float %2240, %2122
  %2244 = fsub fast float %2241, %2123
  %2245 = fsub fast float %2242, %2124
  %2246 = fmul fast float %2243, %2147
  %2247 = fmul fast float %2244, %2147
  %2248 = fmul fast float %2245, %2147
  %2249 = fadd fast float %2246, %2122
  %2250 = fadd fast float %2247, %2123
  %2251 = fadd fast float %2248, %2124
  %2252 = fadd fast float %2169, %2133
  %2253 = fsub fast float %2252, %2186
  %2254 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2255 = fsub fast float %2254, %2133
  %2256 = fmul fast float %2255, %2147
  %2257 = fadd fast float %2256, %2133
  br label %2311

; <label>:2258                                    ; preds = %2146
  %2259 = and i32 %2149, 134217728
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2295, label %2261

; <label>:2261                                    ; preds = %2258
  %2262 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2263 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2264 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2265 = fadd fast float %2262, -5.000000e-01
  %2266 = fadd fast float %2263, -5.000000e-01
  %2267 = fadd fast float %2264, -5.000000e-01
  %2268 = fmul fast float %2265, %2147
  %2269 = fmul fast float %2266, %2147
  %2270 = fmul fast float %2267, %2147
  %2271 = fadd fast float %2268, 5.000000e-01
  %2272 = fadd fast float %2269, 5.000000e-01
  %2273 = fadd fast float %2270, 5.000000e-01
  %2274 = call float @dx.op.unary.f32(i32 24, float %2122)  ; Sqrt(value)
  %2275 = call float @dx.op.unary.f32(i32 24, float %2123)  ; Sqrt(value)
  %2276 = call float @dx.op.unary.f32(i32 24, float %2124)  ; Sqrt(value)
  %2277 = fmul fast float %2271, 2.000000e+00
  %2278 = fsub fast float 1.000000e+00, %2277
  %2279 = fmul fast float %2278, %2274
  %2280 = fadd fast float %2279, %2277
  %2281 = fmul fast float %2280, %2274
  %2282 = fmul fast float %2272, 2.000000e+00
  %2283 = fsub fast float 1.000000e+00, %2282
  %2284 = fmul fast float %2283, %2275
  %2285 = fadd fast float %2284, %2282
  %2286 = fmul fast float %2285, %2275
  %2287 = fmul fast float %2273, 2.000000e+00
  %2288 = fsub fast float 1.000000e+00, %2287
  %2289 = fmul fast float %2288, %2276
  %2290 = fadd fast float %2289, %2287
  %2291 = fmul fast float %2290, %2276
  %2292 = fmul fast float %2281, %2281
  %2293 = fmul fast float %2286, %2286
  %2294 = fmul fast float %2291, %2291
  br label %2311

; <label>:2295                                    ; preds = %2258
  %2296 = fmul fast float %278, %278
  %2297 = fmul fast float %282, %282
  %2298 = fmul fast float %286, %286
  %2299 = fadd fast float %2296, -1.000000e+00
  %2300 = fadd fast float %2297, -1.000000e+00
  %2301 = fadd fast float %2298, -1.000000e+00
  %2302 = fmul fast float %2147, %2299
  %2303 = fmul fast float %2147, %2300
  %2304 = fmul fast float %2147, %2301
  %2305 = fadd fast float %2302, 1.000000e+00
  %2306 = fadd fast float %2303, 1.000000e+00
  %2307 = fadd fast float %2304, 1.000000e+00
  %2308 = fmul fast float %2305, %2122
  %2309 = fmul fast float %2306, %2123
  %2310 = fmul fast float %2307, %2124
  br label %2311

; <label>:2311                                    ; preds = %2295, %2261, %2152, %2108
  %2312 = phi float [ %2257, %2152 ], [ %2133, %2261 ], [ %2133, %2295 ], [ 0x3FA23C0BE0000000, %2108 ]
  %2313 = phi float [ %2249, %2152 ], [ %2292, %2261 ], [ %2308, %2295 ], [ 1.000000e+00, %2108 ]
  %2314 = phi float [ %2250, %2152 ], [ %2293, %2261 ], [ %2309, %2295 ], [ 1.000000e+00, %2108 ]
  %2315 = phi float [ %2251, %2152 ], [ %2294, %2261 ], [ %2310, %2295 ], [ 1.000000e+00, %2108 ]
  %2316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2317 = extractvalue %dx.types.CBufRet.i32 %2316, 1
  %2318 = and i32 %2317, 1
  %2319 = icmp ne i32 %2318, 0
  %2320 = add i32 %35, 356
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = and i32 %2322, 32
  %2324 = icmp ne i32 %2323, 0
  %2325 = and i1 %2319, %2324
  %2326 = select i1 %2325, float 1.000000e+00, float %2313
  %2327 = select i1 %2325, float 0x3FD3333340000000, float %2314
  %2328 = select i1 %2325, float 0x3FD3333340000000, float %2315
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = and i32 %2330, 32
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2405, label %2333

; <label>:2333                                    ; preds = %2311
  %2334 = add i32 %35, 124
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = add i32 %35, 384
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = add i32 %2339, 0
  %2341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2342 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2341, %dx.types.Handle %71, float %1918, float %1919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.ResRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.ResRet.f32 %2342, 2
  %2346 = extractvalue %dx.types.ResRet.f32 %2342, 3
  %2347 = and i32 %2336, 255
  %2348 = uitofp i32 %2347 to float
  %2349 = lshr i32 %2336, 8
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = lshr i32 %2336, 16
  %2353 = and i32 %2352, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = fmul fast float %2354, 0x3F70101000000000
  %2356 = fmul fast float %2343, %2348
  %2357 = fadd fast float %2356, %2351
  %2358 = fmul fast float %2357, 0x3F70101000000000
  %2359 = fadd fast float %2344, -5.000000e-01
  %2360 = fadd fast float %2346, -5.000000e-01
  %2361 = fmul fast float %2359, %2355
  %2362 = fmul fast float %2360, %2355
  %2363 = fadd fast float %2361, 5.000000e-01
  %2364 = fadd fast float %2362, 5.000000e-01
  %2365 = fmul fast float %2363, 2.000000e+00
  %2366 = fadd fast float %2365, -1.000000e+00
  %2367 = fmul fast float %2364, 2.000000e+00
  %2368 = fadd fast float %2367, -1.000000e+00
  %2369 = fadd fast float %2366, %2368
  %2370 = fmul fast float %2369, 5.000000e-01
  %2371 = fsub fast float %2366, %2368
  %2372 = fmul fast float %2371, 5.000000e-01
  %2373 = call float @dx.op.unary.f32(i32 6, float %2370)  ; FAbs(value)
  %2374 = fsub fast float 1.000000e+00, %2373
  %2375 = call float @dx.op.unary.f32(i32 6, float %2372)  ; FAbs(value)
  %2376 = fsub fast float %2374, %2375
  %2377 = call float @dx.op.dot3.f32(i32 55, float %2370, float %2372, float %2376, float %2370, float %2372, float %2376)  ; Dot3(ax,ay,az,bx,by,bz)
  %2378 = call float @dx.op.unary.f32(i32 25, float %2377)  ; Rsqrt(value)
  %2379 = fmul fast float %2370, %2378
  %2380 = fmul fast float %2372, %2378
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 67108864
  %2384 = icmp eq i32 %2383, 0
  br i1 %2384, label %2401, label %2385

; <label>:2385                                    ; preds = %2333
  %2386 = add i32 %35, 312
  %2387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2386, i32 undef)  ; BufferLoad(srv,index,wot)
  %2388 = extractvalue %dx.types.ResRet.i32 %2387, 0
  %2389 = and i32 %2388, 65535
  %2390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2389)  ; LegacyF16ToF32(value)
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 65535
  %2394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2393)  ; LegacyF16ToF32(value)
  %2395 = lshr i32 %2388, 16
  %2396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2395)  ; LegacyF16ToF32(value)
  %2397 = fsub fast float %2358, %2396
  %2398 = fmul fast float %2397, %2390
  %2399 = fadd fast float %2398, %2394
  %2400 = call float @dx.op.unary.f32(i32 7, float %2399)  ; Saturate(value)
  br label %2401

; <label>:2401                                    ; preds = %2385, %2333
  %2402 = phi float [ %2400, %2385 ], [ %2358, %2333 ]
  %2403 = call float @dx.op.dot2.f32(i32 54, float %2379, float %2380, float %1822, float %1823)  ; Dot2(ax,ay,bx,by)
  %2404 = call float @dx.op.dot2.f32(i32 54, float %2379, float %2380, float %1824, float %1825)  ; Dot2(ax,ay,bx,by)
  br label %2405

; <label>:2405                                    ; preds = %2401, %2311
  %2406 = phi float [ %2402, %2401 ], [ 0x3FD6666660000000, %2311 ]
  %2407 = phi float [ %2403, %2401 ], [ 0.000000e+00, %2311 ]
  %2408 = phi float [ %2404, %2401 ], [ 0.000000e+00, %2311 ]
  %2409 = phi float [ %2345, %2401 ], [ 1.000000e+00, %2311 ]
  %2410 = add i32 %35, 192
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = lshr i32 %2412, 22
  %2414 = shl nuw nsw i32 %2413, 5
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = and i32 %2417, 64
  %2419 = icmp eq i32 %2418, 0
  br i1 %2419, label %2453, label %2420

; <label>:2420                                    ; preds = %2405
  %2421 = add i32 %35, 400
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = add i32 %2423, 0
  %2425 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2424, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %2427, 131072
  %2429 = icmp eq i32 %2428, 0
  %2430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2425, %dx.types.Handle %71, float %1918, float %1919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2431 = extractvalue %dx.types.ResRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.ResRet.f32 %2430, 1
  %2433 = extractvalue %dx.types.ResRet.f32 %2430, 2
  %2434 = fmul fast float %2431, %266
  %2435 = fmul fast float %2432, %269
  %2436 = fmul fast float %2433, %272
  br i1 %2429, label %2443, label %2437

; <label>:2437                                    ; preds = %2420
  %2438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2439 = extractvalue %dx.types.CBufRet.f32 %2438, 0
  %2440 = fmul fast float %2439, %2434
  %2441 = fmul fast float %2439, %2435
  %2442 = fmul fast float %2439, %2436
  br label %2443

; <label>:2443                                    ; preds = %2437, %2420
  %2444 = phi float [ %2440, %2437 ], [ %2434, %2420 ]
  %2445 = phi float [ %2441, %2437 ], [ %2435, %2420 ]
  %2446 = phi float [ %2442, %2437 ], [ %2436, %2420 ]
  %2447 = fmul fast float %2444, %2415
  %2448 = select i1 %176, float %2447, float %2444
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2448, float %2445, float %2446, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = select i1 %176, float 0.000000e+00, float %2444
  %2451 = select i1 %176, float %2449, float %2445
  %2452 = select i1 %176, float 0.000000e+00, float %2446
  br label %2453

; <label>:2453                                    ; preds = %2443, %2405
  %2454 = phi float [ %2450, %2443 ], [ 0.000000e+00, %2405 ]
  %2455 = phi float [ %2451, %2443 ], [ 0.000000e+00, %2405 ]
  %2456 = phi float [ %2452, %2443 ], [ 0.000000e+00, %2405 ]
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = and i32 %2458, 26624
  %2460 = icmp eq i32 %2459, 0
  br i1 %2460, label %2484, label %2461

; <label>:2461                                    ; preds = %2453
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 16384
  %2465 = icmp eq i32 %2464, 0
  br i1 %2465, label %2484, label %2466

; <label>:2466                                    ; preds = %2461
  %2467 = and i32 %2463, 1048576
  %2468 = icmp ne i32 %2467, 0
  %2469 = add i32 %35, 464
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = add i32 %2471, 0
  %2473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2473, %dx.types.Handle %72, float %1918, float %1919, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2475 = extractvalue %dx.types.ResRet.f32 %2474, 0
  %2476 = add i32 %35, 128
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = lshr i32 %2478, 24
  %2480 = uitofp i32 %2479 to float
  %2481 = fmul fast float %2475, 0x3F70101020000000
  %2482 = select i1 %2468, float 0x3F70101020000000, float %2481
  %2483 = fmul fast float %2482, %2480
  br label %2484

; <label>:2484                                    ; preds = %2466, %2461, %2453
  %2485 = phi float [ %2483, %2466 ], [ 0.000000e+00, %2461 ], [ 0.000000e+00, %2453 ]
  %2486 = add i32 %35, 128
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 255
  %2490 = uitofp i32 %2489 to float
  %2491 = lshr i32 %2488, 8
  %2492 = and i32 %2491, 255
  %2493 = uitofp i32 %2492 to float
  %2494 = call float @dx.op.dot3.f32(i32 55, float %2326, float %2327, float %2328, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2495 = fmul fast float %2493, %2494
  %2496 = fadd fast float %2495, %2490
  %2497 = fmul fast float %2496, 0x3F70101020000000
  %2498 = call float @dx.op.unary.f32(i32 7, float %2497)  ; Saturate(value)
  br i1 %1810, label %2499, label %2507

; <label>:2499                                    ; preds = %2484
  %2500 = fsub fast float 1.000000e+00, %2106
  %2501 = fmul fast float %2500, %1798
  %2502 = fmul fast float %2500, %1799
  %2503 = fmul fast float %2500, %1800
  %2504 = fmul fast float %2500, %1801
  %2505 = fmul fast float %2500, %1802
  %2506 = fmul fast float %2500, %1803
  br label %2507

; <label>:2507                                    ; preds = %2499, %2484
  %2508 = phi float [ %2501, %2499 ], [ %1798, %2484 ]
  %2509 = phi float [ %2502, %2499 ], [ %1799, %2484 ]
  %2510 = phi float [ %2503, %2499 ], [ %1800, %2484 ]
  %2511 = phi float [ %2504, %2499 ], [ %1801, %2484 ]
  %2512 = phi float [ %2505, %2499 ], [ %1802, %2484 ]
  %2513 = phi float [ %2506, %2499 ], [ %1803, %2484 ]
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = and i32 %2515, 3
  %2517 = icmp eq i32 %2516, 3
  br i1 %2517, label %2596, label %2518

; <label>:2518                                    ; preds = %2507
  %2519 = and i32 %2515, 16
  %2520 = icmp ne i32 %2519, 0
  %2521 = select i1 %2520, float %2106, float 0.000000e+00
  %2522 = icmp eq i32 %2516, 0
  br i1 %2522, label %2523, label %2551

; <label>:2523                                    ; preds = %2518
  %2524 = and i32 %2515, 64
  %2525 = icmp ne i32 %2524, 0
  %2526 = select i1 %2525, float %2106, float 0.000000e+00
  %2527 = fsub fast float %2326, %2508
  %2528 = fsub fast float %2327, %2509
  %2529 = fsub fast float %2328, %2510
  %2530 = fmul fast float %2521, %2527
  %2531 = fmul fast float %2521, %2528
  %2532 = fmul fast float %2521, %2529
  %2533 = fadd fast float %2530, %2508
  %2534 = fadd fast float %2531, %2509
  %2535 = fadd fast float %2532, %2510
  %2536 = fsub fast float %2312, %1804
  %2537 = fmul fast float %2521, %2536
  %2538 = fadd fast float %2537, %1804
  %2539 = fsub fast float %2454, %2511
  %2540 = fsub fast float %2455, %2512
  %2541 = fsub fast float %2456, %2513
  %2542 = fmul fast float %2526, %2539
  %2543 = fmul fast float %2526, %2540
  %2544 = fmul fast float %2526, %2541
  %2545 = fadd fast float %2542, %2511
  %2546 = fadd fast float %2543, %2512
  %2547 = fadd fast float %2544, %2513
  %2548 = fsub fast float %2498, %1808
  %2549 = fmul fast float %2521, %2548
  %2550 = fadd fast float %2549, %1808
  br label %2596

; <label>:2551                                    ; preds = %2518
  %2552 = icmp eq i32 %2516, 1
  br i1 %2552, label %2553, label %2566

; <label>:2553                                    ; preds = %2551
  %2554 = fadd fast float %2326, -1.000000e+00
  %2555 = fadd fast float %2327, -1.000000e+00
  %2556 = fadd fast float %2328, -1.000000e+00
  %2557 = fmul fast float %2521, %2554
  %2558 = fmul fast float %2521, %2555
  %2559 = fmul fast float %2521, %2556
  %2560 = fadd fast float %2557, 1.000000e+00
  %2561 = fadd fast float %2558, 1.000000e+00
  %2562 = fadd fast float %2559, 1.000000e+00
  %2563 = fmul fast float %2560, %2508
  %2564 = fmul fast float %2561, %2509
  %2565 = fmul fast float %2562, %2510
  br label %2596

; <label>:2566                                    ; preds = %2551
  %2567 = icmp eq i32 %2516, 2
  br i1 %2567, label %2568, label %2596

; <label>:2568                                    ; preds = %2566
  %2569 = call float @dx.op.unary.f32(i32 24, float %2326)  ; Sqrt(value)
  %2570 = call float @dx.op.unary.f32(i32 24, float %2327)  ; Sqrt(value)
  %2571 = call float @dx.op.unary.f32(i32 24, float %2328)  ; Sqrt(value)
  %2572 = fadd fast float %2569, -5.000000e-01
  %2573 = fadd fast float %2570, -5.000000e-01
  %2574 = fadd fast float %2571, -5.000000e-01
  %2575 = fmul fast float %2572, %2521
  %2576 = fmul fast float %2573, %2521
  %2577 = fmul fast float %2574, %2521
  %2578 = fadd fast float %2575, 5.000000e-01
  %2579 = fadd fast float %2576, 5.000000e-01
  %2580 = fadd fast float %2577, 5.000000e-01
  %2581 = fmul fast float %2578, 2.000000e+00
  %2582 = fsub fast float 1.000000e+00, %2581
  %2583 = fmul fast float %2582, %2508
  %2584 = fadd fast float %2583, %2581
  %2585 = fmul fast float %2584, %2508
  %2586 = fmul fast float %2579, 2.000000e+00
  %2587 = fsub fast float 1.000000e+00, %2586
  %2588 = fmul fast float %2587, %2509
  %2589 = fadd fast float %2588, %2586
  %2590 = fmul fast float %2589, %2509
  %2591 = fmul fast float %2580, 2.000000e+00
  %2592 = fsub fast float 1.000000e+00, %2591
  %2593 = fmul fast float %2592, %2510
  %2594 = fadd fast float %2593, %2591
  %2595 = fmul fast float %2594, %2510
  br label %2596

; <label>:2596                                    ; preds = %2568, %2566, %2553, %2523, %2507
  %2597 = phi float [ %2508, %2507 ], [ %2585, %2568 ], [ %2508, %2566 ], [ %2563, %2553 ], [ %2533, %2523 ]
  %2598 = phi float [ %2509, %2507 ], [ %2590, %2568 ], [ %2509, %2566 ], [ %2564, %2553 ], [ %2534, %2523 ]
  %2599 = phi float [ %2510, %2507 ], [ %2595, %2568 ], [ %2510, %2566 ], [ %2565, %2553 ], [ %2535, %2523 ]
  %2600 = phi float [ %2511, %2507 ], [ %2511, %2568 ], [ %2511, %2566 ], [ %2511, %2553 ], [ %2545, %2523 ]
  %2601 = phi float [ %2512, %2507 ], [ %2512, %2568 ], [ %2512, %2566 ], [ %2512, %2553 ], [ %2546, %2523 ]
  %2602 = phi float [ %2513, %2507 ], [ %2513, %2568 ], [ %2513, %2566 ], [ %2513, %2553 ], [ %2547, %2523 ]
  %2603 = phi float [ %1804, %2507 ], [ %1804, %2568 ], [ %1804, %2566 ], [ %1804, %2553 ], [ %2538, %2523 ]
  %2604 = phi float [ %1808, %2507 ], [ %1808, %2568 ], [ %1808, %2566 ], [ %1808, %2553 ], [ %2550, %2523 ]
  %2605 = and i32 %2515, 12
  %2606 = icmp eq i32 %2605, 12
  br i1 %2606, label %2689, label %2607

; <label>:2607                                    ; preds = %2596
  %2608 = and i32 %2515, 2097184
  %2609 = icmp eq i32 %2608, 2097184
  %2610 = select i1 %2609, float %2106, float 0.000000e+00
  %2611 = and i32 %2515, 4194336
  %2612 = icmp eq i32 %2611, 4194336
  %2613 = select i1 %2612, float %2106, float 0.000000e+00
  %2614 = and i32 %2515, 8388640
  %2615 = icmp eq i32 %2614, 8388640
  %2616 = select i1 %2615, float %2106, float 0.000000e+00
  %2617 = and i32 %2515, 16384
  %2618 = icmp ne i32 %2617, 0
  %2619 = select i1 %2618, float %2106, float 0.000000e+00
  %2620 = icmp eq i32 %2605, 0
  br i1 %2620, label %2621, label %2637

; <label>:2621                                    ; preds = %2607
  %2622 = fsub fast float %2407, %1796
  %2623 = fsub fast float %2408, %1797
  %2624 = fmul fast float %2610, %2622
  %2625 = fmul fast float %2610, %2623
  %2626 = fadd fast float %2624, %1796
  %2627 = fadd fast float %2625, %1797
  %2628 = fsub fast float %2409, %1806
  %2629 = fmul fast float %2613, %2628
  %2630 = fadd fast float %2629, %1806
  %2631 = fsub fast float %2406, %1805
  %2632 = fmul fast float %2616, %2631
  %2633 = fadd fast float %2632, %1805
  %2634 = fsub fast float %2485, %1807
  %2635 = fmul fast float %2619, %2634
  %2636 = fadd fast float %2635, %1807
  br label %2689

; <label>:2637                                    ; preds = %2607
  %2638 = icmp eq i32 %2605, 4
  br i1 %2638, label %2639, label %2673

; <label>:2639                                    ; preds = %2637
  %2640 = fmul fast float %2610, %2407
  %2641 = fmul fast float %2610, %2408
  %2642 = fadd fast float %2640, %1796
  %2643 = fadd fast float %2641, %1797
  %2644 = call float @dx.op.binary.f32(i32 36, float %1806, float %2409)  ; FMin(a,b)
  %2645 = fsub fast float %2644, %1806
  %2646 = fmul fast float %2645, %2613
  %2647 = fadd fast float %2646, %1806
  %2648 = fadd fast float %2406, %1805
  %2649 = fmul fast float %2648, 0x3FF337FAE0000000
  %2650 = fmul fast float %1805, %1805
  %2651 = fmul fast float %2406, %2406
  %2652 = fadd fast float %2651, %2650
  %2653 = fmul fast float %2652, 0x3FE5152B00000000
  %2654 = fmul fast float %1805, 0xBFCC1F85E0000000
  %2655 = fmul fast float %2654, %2406
  %2656 = fadd fast float %2655, 0xBFE1363700000000
  %2657 = fadd fast float %2656, %2649
  %2658 = fsub fast float %2657, %2653
  %2659 = fmul fast float %2648, 0x3FBA6F0D00000000
  %2660 = fmul fast float %2652, 0x3FD0432880000000
  %2661 = fmul fast float %1805, 0xBFEF110800000000
  %2662 = fmul fast float %2661, %2406
  %2663 = fadd fast float %2662, 1.000000e+00
  %2664 = fsub fast float %2663, %2659
  %2665 = fadd fast float %2664, %2660
  %2666 = fdiv fast float %2658, %2665
  %2667 = call float @dx.op.unary.f32(i32 7, float %2666)  ; Saturate(value)
  %2668 = fsub fast float %2667, %1805
  %2669 = fmul fast float %2668, %2616
  %2670 = fadd fast float %2669, %1805
  %2671 = fmul fast float %2619, %2485
  %2672 = fadd fast float %2671, %1807
  br label %2689

; <label>:2673                                    ; preds = %2637
  %2674 = icmp eq i32 %2605, 8
  br i1 %2674, label %2675, label %2689

; <label>:2675                                    ; preds = %2673
  %2676 = fmul fast float %2610, %2407
  %2677 = fmul fast float %2610, %2408
  %2678 = fadd fast float %2676, %1796
  %2679 = fadd fast float %2677, %1797
  %2680 = call float @dx.op.binary.f32(i32 36, float %1806, float %2409)  ; FMin(a,b)
  %2681 = fsub fast float %2680, %1806
  %2682 = fmul fast float %2681, %2613
  %2683 = fadd fast float %2682, %1806
  %2684 = fsub fast float %2406, %1805
  %2685 = fmul fast float %2616, %2684
  %2686 = fadd fast float %2685, %1805
  %2687 = fmul fast float %2619, %2485
  %2688 = fadd fast float %2687, %1807
  br label %2689

; <label>:2689                                    ; preds = %2675, %2673, %2639, %2621, %2596, %2105, %1809, %1795
  %2690 = phi float [ %1796, %2596 ], [ %1796, %2105 ], [ %1796, %1795 ], [ %2678, %2675 ], [ %1796, %2673 ], [ %2642, %2639 ], [ %2626, %2621 ], [ %1796, %1809 ]
  %2691 = phi float [ %1797, %2596 ], [ %1797, %2105 ], [ %1797, %1795 ], [ %2679, %2675 ], [ %1797, %2673 ], [ %2643, %2639 ], [ %2627, %2621 ], [ %1797, %1809 ]
  %2692 = phi float [ %2597, %2596 ], [ %1798, %2105 ], [ %1798, %1795 ], [ %2597, %2675 ], [ %2597, %2673 ], [ %2597, %2639 ], [ %2597, %2621 ], [ %1798, %1809 ]
  %2693 = phi float [ %2598, %2596 ], [ %1799, %2105 ], [ %1799, %1795 ], [ %2598, %2675 ], [ %2598, %2673 ], [ %2598, %2639 ], [ %2598, %2621 ], [ %1799, %1809 ]
  %2694 = phi float [ %2599, %2596 ], [ %1800, %2105 ], [ %1800, %1795 ], [ %2599, %2675 ], [ %2599, %2673 ], [ %2599, %2639 ], [ %2599, %2621 ], [ %1800, %1809 ]
  %2695 = phi float [ %2600, %2596 ], [ %1801, %2105 ], [ %1801, %1795 ], [ %2600, %2675 ], [ %2600, %2673 ], [ %2600, %2639 ], [ %2600, %2621 ], [ %1801, %1809 ]
  %2696 = phi float [ %2601, %2596 ], [ %1802, %2105 ], [ %1802, %1795 ], [ %2601, %2675 ], [ %2601, %2673 ], [ %2601, %2639 ], [ %2601, %2621 ], [ %1802, %1809 ]
  %2697 = phi float [ %2602, %2596 ], [ %1803, %2105 ], [ %1803, %1795 ], [ %2602, %2675 ], [ %2602, %2673 ], [ %2602, %2639 ], [ %2602, %2621 ], [ %1803, %1809 ]
  %2698 = phi float [ %2603, %2596 ], [ %1804, %2105 ], [ %1804, %1795 ], [ %2603, %2675 ], [ %2603, %2673 ], [ %2603, %2639 ], [ %2603, %2621 ], [ %1804, %1809 ]
  %2699 = phi float [ %1805, %2596 ], [ %1805, %2105 ], [ %1805, %1795 ], [ %2686, %2675 ], [ %1805, %2673 ], [ %2670, %2639 ], [ %2633, %2621 ], [ %1805, %1809 ]
  %2700 = phi float [ %1806, %2596 ], [ %1806, %2105 ], [ %1806, %1795 ], [ %2683, %2675 ], [ %1806, %2673 ], [ %2647, %2639 ], [ %2630, %2621 ], [ %1806, %1809 ]
  %2701 = phi float [ %1807, %2596 ], [ %1807, %2105 ], [ %1807, %1795 ], [ %2688, %2675 ], [ %1807, %2673 ], [ %2672, %2639 ], [ %2636, %2621 ], [ %1807, %1809 ]
  %2702 = phi float [ %2604, %2596 ], [ %1808, %2105 ], [ %1808, %1795 ], [ %2604, %2675 ], [ %2604, %2673 ], [ %2604, %2639 ], [ %2604, %2621 ], [ %1808, %1809 ]
  br i1 %353, label %3583, label %2703

; <label>:2703                                    ; preds = %2689
  %2704 = icmp ult i32 %404, 4
  %2705 = add i32 %35, 72
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = add i32 %35, 76
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = or i32 %2710, %2707
  %2712 = icmp eq i32 %2711, 0
  br i1 %2712, label %3583, label %2713

; <label>:2713                                    ; preds = %2703
  %2714 = and i32 %2707, 262144
  %2715 = icmp ne i32 %2714, 0
  %2716 = select i1 %2715, float %38, float 1.000000e+00
  %2717 = select i1 %2715, float %39, float 0.000000e+00
  %2718 = select i1 %2715, float %40, float 0.000000e+00
  %2719 = select i1 %2715, float %41, float 1.000000e+00
  %2720 = select i1 %2715, float %42, float %63
  %2721 = select i1 %2715, float %43, float %64
  %2722 = add i32 %35, 332
  %2723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.i32 %2723, 0
  %2725 = lshr i32 %2724, 16
  %2726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2725)  ; LegacyF16ToF32(value)
  %2727 = fmul fast float %2726, 0x3F50624DE0000000
  %2728 = add i32 %35, 136
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = lshr i32 %2730, 16
  %2732 = and i32 %2731, 255
  %2733 = lshr i32 %2730, 24
  %2734 = add i32 %35, 340
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = and i32 %2736, 65535
  %2738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2737)  ; LegacyF16ToF32(value)
  %2739 = lshr i32 %2736, 16
  %2740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2739)  ; LegacyF16ToF32(value)
  %2741 = add i32 %35, 80
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = lshr i32 %2743, 22
  %2745 = shl nuw nsw i32 %2744, 5
  %2746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2745)  ; LegacyF16ToF32(value)
  %2747 = shl i32 %2743, 4
  %2748 = and i32 %2747, 32752
  %2749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2748)  ; LegacyF16ToF32(value)
  %2750 = lshr i32 %2743, 7
  %2751 = and i32 %2750, 32752
  %2752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2751)  ; LegacyF16ToF32(value)
  %2753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2754 = extractvalue %dx.types.CBufRet.f32 %2753, 3
  %2755 = fmul fast float %2754, 1.000000e+03
  %2756 = fmul fast float %343, %2755
  %2757 = call float @dx.op.unary.f32(i32 22, float %2756)  ; Frc(value)
  %2758 = fadd fast float %2757, %333
  %2759 = fmul fast float %344, %2755
  %2760 = call float @dx.op.unary.f32(i32 22, float %2759)  ; Frc(value)
  %2761 = fadd fast float %2760, %335
  %2762 = fmul fast float %2727, %2755
  %2763 = call float @dx.op.unary.f32(i32 22, float %2762)  ; Frc(value)
  %2764 = fmul fast float %2763, 0x401921FB60000000
  %2765 = fadd fast float %2764, %2746
  %2766 = call float @dx.op.unary.f32(i32 13, float %2765)  ; Sin(value)
  %2767 = call float @dx.op.unary.f32(i32 12, float %2765)  ; Cos(value)
  %2768 = fsub fast float -0.000000e+00, %2766
  %2769 = fadd fast float %2720, -5.000000e-01
  %2770 = fadd fast float %2721, -5.000000e-01
  %2771 = fmul fast float %2738, %2769
  %2772 = fmul fast float %2740, %2770
  %2773 = fadd fast float %2771, 5.000000e-01
  %2774 = fadd fast float %2772, 5.000000e-01
  %2775 = fmul fast float %2749, %2773
  %2776 = fmul fast float %2752, %2774
  %2777 = fmul fast float %2767, %2775
  %2778 = call float @dx.op.tertiary.f32(i32 46, float %2768, float %2776, float %2777)  ; FMad(a,b,c)
  %2779 = fmul fast float %2766, %2775
  %2780 = call float @dx.op.tertiary.f32(i32 46, float %2767, float %2776, float %2779)  ; FMad(a,b,c)
  %2781 = fadd fast float %2758, %2778
  %2782 = fadd fast float %2761, %2780
  %2783 = icmp ugt i32 %2732, 1
  %2784 = icmp ugt i32 %2730, 33554431
  %2785 = or i1 %2784, %2783
  br i1 %2785, label %2786, label %2811

; <label>:2786                                    ; preds = %2713
  %2787 = add i32 %35, 276
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = lshr i32 %2789, 16
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = fmul fast float %2754, %2791
  %2793 = call float @dx.op.unary.f32(i32 22, float %2792)  ; Frc(value)
  %2794 = mul nuw nsw i32 %2732, %2733
  %2795 = uitofp i32 %2794 to float
  %2796 = fmul fast float %2793, %2795
  %2797 = call float @dx.op.unary.f32(i32 27, float %2796)  ; Round_ni(value)
  %2798 = fptoui float %2797 to i32
  %2799 = urem i32 %2798, %2732
  %2800 = udiv i32 %2798, %2733
  %2801 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2802 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2803 = uitofp i32 %2799 to float
  %2804 = uitofp i32 %2800 to float
  %2805 = fadd fast float %2801, %2803
  %2806 = fadd fast float %2802, %2804
  %2807 = uitofp i32 %2732 to float
  %2808 = uitofp i32 %2733 to float
  %2809 = fdiv fast float %2805, %2807
  %2810 = fdiv fast float %2806, %2808
  br label %2811

; <label>:2811                                    ; preds = %2786, %2713
  %2812 = phi float [ %2809, %2786 ], [ %2781, %2713 ]
  %2813 = phi float [ %2810, %2786 ], [ %2782, %2713 ]
  %2814 = and i32 %2707, 16777216
  %2815 = icmp eq i32 %2814, 0
  br i1 %2815, label %2925, label %2816

; <label>:2816                                    ; preds = %2811
  %2817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2818 = extractvalue %dx.types.CBufRet.f32 %2817, 0
  %2819 = extractvalue %dx.types.CBufRet.f32 %2817, 1
  %2820 = extractvalue %dx.types.CBufRet.f32 %2817, 2
  %2821 = fadd fast float %2818, %134
  %2822 = fadd fast float %2819, %135
  %2823 = fadd fast float %2820, %136
  %2824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2824, 0
  %2826 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2827 = icmp eq i32 %36, 65535
  br i1 %2827, label %2922, label %2828

; <label>:2828                                    ; preds = %2816
  %2829 = lshr i32 %36, 1
  %2830 = shl i32 %2829, 2
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %36, 1
  %2834 = icmp ne i32 %2833, 0
  %2835 = lshr i32 %2832, 16
  %2836 = and i32 %2832, 65535
  %2837 = select i1 %2834, i32 %2835, i32 %2836
  %2838 = icmp eq i32 %2837, 65535
  br i1 %2838, label %2918, label %2839

; <label>:2839                                    ; preds = %2828
  %2840 = mul nuw nsw i32 %2837, 40
  %2841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.ResRet.f32 %2841, 1
  %2844 = extractvalue %dx.types.ResRet.f32 %2841, 2
  %2845 = add nuw nsw i32 %2840, 12
  %2846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = extractvalue %dx.types.ResRet.f32 %2846, 1
  %2849 = extractvalue %dx.types.ResRet.f32 %2846, 2
  %2850 = add nuw nsw i32 %2840, 24
  %2851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.f32 %2851, 0
  %2853 = extractvalue %dx.types.ResRet.f32 %2851, 1
  %2854 = extractvalue %dx.types.ResRet.f32 %2851, 2
  %2855 = add nuw nsw i32 %2840, 36
  %2856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = fsub fast float %2821, %2842
  %2859 = fsub fast float %2822, %2843
  %2860 = fsub fast float %2823, %2844
  %2861 = fmul fast float %2857, %2858
  %2862 = fmul fast float %2857, %2859
  %2863 = fmul fast float %2857, %2860
  %2864 = call float @dx.op.unary.f32(i32 27, float %2861)  ; Round_ni(value)
  %2865 = call float @dx.op.unary.f32(i32 27, float %2862)  ; Round_ni(value)
  %2866 = call float @dx.op.unary.f32(i32 27, float %2863)  ; Round_ni(value)
  %2867 = fadd fast float %2864, 5.000000e-01
  %2868 = fadd fast float %2865, 5.000000e-01
  %2869 = fadd fast float %2866, 5.000000e-01
  %2870 = fmul fast float %2867, %2847
  %2871 = fmul fast float %2868, %2848
  %2872 = fmul fast float %2869, %2849
  %2873 = shl i32 %36, 2
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = add i32 %2875, 0
  %2877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2878 = call float @dx.op.unary.f32(i32 22, float %2870)  ; Frc(value)
  %2879 = call float @dx.op.unary.f32(i32 22, float %2871)  ; Frc(value)
  %2880 = call float @dx.op.unary.f32(i32 22, float %2872)  ; Frc(value)
  %2881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2877, %dx.types.Handle %30, float %2878, float %2879, float %2880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.ResRet.f32 %2881, 1
  %2884 = extractvalue %dx.types.ResRet.f32 %2881, 2
  %2885 = fmul fast float %2882, 1.023000e+03
  %2886 = fmul fast float %2883, 1.023000e+03
  %2887 = fmul fast float %2884, 1.023000e+03
  %2888 = fadd fast float %2885, 5.000000e-01
  %2889 = fadd fast float %2886, 5.000000e-01
  %2890 = fadd fast float %2887, 5.000000e-01
  %2891 = call float @dx.op.unary.f32(i32 27, float %2888)  ; Round_ni(value)
  %2892 = call float @dx.op.unary.f32(i32 27, float %2889)  ; Round_ni(value)
  %2893 = call float @dx.op.unary.f32(i32 27, float %2890)  ; Round_ni(value)
  %2894 = fsub fast float %2861, %2864
  %2895 = fsub fast float %2862, %2865
  %2896 = fsub fast float %2863, %2866
  %2897 = fmul fast float %2894, 7.500000e-01
  %2898 = fmul fast float %2895, 7.500000e-01
  %2899 = fmul fast float %2896, 7.500000e-01
  %2900 = fadd fast float %2864, 1.250000e-01
  %2901 = fadd fast float %2900, %2897
  %2902 = fadd fast float %2901, %2891
  %2903 = fadd fast float %2865, 1.250000e-01
  %2904 = fadd fast float %2903, %2898
  %2905 = fadd fast float %2904, %2892
  %2906 = fadd fast float %2866, 1.250000e-01
  %2907 = fadd fast float %2906, %2899
  %2908 = fadd fast float %2907, %2893
  %2909 = fmul fast float %2902, %2852
  %2910 = fmul fast float %2905, %2853
  %2911 = fmul fast float %2908, %2854
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = add i32 %2913, 0
  %2915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2915, %dx.types.Handle %28, float %2909, float %2910, float %2911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  br label %2918

; <label>:2918                                    ; preds = %2839, %2828
  %2919 = phi float [ %2917, %2839 ], [ -1.000000e+00, %2828 ]
  %2920 = fadd fast float %2919, %2826
  %2921 = call float @dx.op.unary.f32(i32 7, float %2920)  ; Saturate(value)
  br label %2922

; <label>:2922                                    ; preds = %2918, %2816
  %2923 = phi float [ %2921, %2918 ], [ %2826, %2816 ]
  %2924 = fmul fast float %2923, %399
  br label %2925

; <label>:2925                                    ; preds = %2922, %2811
  %2926 = phi float [ %2924, %2922 ], [ %399, %2811 ]
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %2928, 256
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %2977, label %2931

; <label>:2931                                    ; preds = %2925
  %2932 = add i32 %35, 436
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = add i32 %2934, 0
  %2936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2936, %dx.types.Handle %72, float %2812, float %2813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  %2939 = add i32 %35, 148
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = shl i32 %2941, 4
  %2943 = and i32 %2942, 32752
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = lshr i32 %2941, 7
  %2946 = and i32 %2945, 32752
  %2947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2946)  ; LegacyF16ToF32(value)
  %2948 = fsub fast float 1.000000e+00, %2926
  %2949 = call float @dx.op.binary.f32(i32 35, float %2948, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2950 = bitcast float %2926 to i32
  %2951 = sitofp i32 %2950 to float
  %2952 = fadd fast float %2951, 0xC1CFBF8940000000
  %2953 = fmul fast float %2947, %2952
  %2954 = fadd fast float %2953, 0x41CFBF8940000000
  %2955 = fptosi float %2954 to i32
  %2956 = bitcast i32 %2955 to float
  %2957 = bitcast float %2949 to i32
  %2958 = sitofp i32 %2957 to float
  %2959 = fadd fast float %2958, 0xC1CFBF8940000000
  %2960 = fmul fast float %2959, %2947
  %2961 = fadd fast float %2960, 0x41CFBF8940000000
  %2962 = fptosi float %2961 to i32
  %2963 = bitcast i32 %2962 to float
  %2964 = fmul fast float %2956, %2944
  %2965 = fmul fast float %2963, %2944
  %2966 = fsub fast float %2949, %2964
  %2967 = fadd fast float %2965, %2949
  %2968 = call float @dx.op.unary.f32(i32 7, float %2966)  ; Saturate(value)
  %2969 = call float @dx.op.unary.f32(i32 7, float %2967)  ; Saturate(value)
  %2970 = fsub fast float %2938, %2968
  %2971 = fsub fast float %2969, %2968
  %2972 = bitcast float %2971 to i32
  %2973 = sub nsw i32 2129859010, %2972
  %2974 = bitcast i32 %2973 to float
  %2975 = fmul fast float %2974, %2970
  %2976 = call float @dx.op.unary.f32(i32 7, float %2975)  ; Saturate(value)
  br label %2977

; <label>:2977                                    ; preds = %2931, %2925
  %2978 = phi float [ %2976, %2931 ], [ %2926, %2925 ]
  %2979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.i32 %2979, 0
  %2981 = and i32 %2980, 128
  %2982 = icmp eq i32 %2981, 0
  br i1 %2982, label %2999, label %2983

; <label>:2983                                    ; preds = %2977
  %2984 = add i32 %35, 420
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = add i32 %2986, 0
  %2988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2988, %dx.types.Handle %72, float %2812, float %2813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = and i32 %2992, 524288
  %2994 = icmp ne i32 %2993, 0
  %2995 = fcmp fast ogt float %2990, 0x3FE0101020000000
  %2996 = select i1 %2995, float 1.000000e+00, float 0.000000e+00
  %2997 = select i1 %2994, float %2996, float %2990
  %2998 = fmul fast float %2997, %2978
  br label %2999

; <label>:2999                                    ; preds = %2983, %2977
  %3000 = phi float [ %2998, %2983 ], [ %2978, %2977 ]
  %3001 = fcmp fast ult float %3000, 0x3F70101020000000
  br i1 %3001, label %3583, label %3002

; <label>:3002                                    ; preds = %2999
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = and i32 %3004, 16
  %3006 = icmp eq i32 %3005, 0
  br i1 %3006, label %3205, label %3007

; <label>:3007                                    ; preds = %3002
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %35, 372
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3010, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = add i32 %3012, 0
  %3014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3015 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3014, %dx.types.Handle %71, float %2812, float %2813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3016 = extractvalue %dx.types.ResRet.f32 %3015, 0
  %3017 = extractvalue %dx.types.ResRet.f32 %3015, 1
  %3018 = extractvalue %dx.types.ResRet.f32 %3015, 2
  %3019 = extractvalue %dx.types.ResRet.f32 %3015, 3
  %3020 = and i32 %3009, 255
  %3021 = uitofp i32 %3020 to float
  %3022 = lshr i32 %3009, 8
  %3023 = and i32 %3022, 255
  %3024 = uitofp i32 %3023 to float
  %3025 = fmul fast float %3019, %3021
  %3026 = fadd fast float %3025, %3024
  %3027 = fmul fast float %3026, 0x3F70101000000000
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = and i32 %3029, 512
  %3031 = icmp eq i32 %3030, 0
  br i1 %3031, label %3040, label %3032

; <label>:3032                                    ; preds = %3007
  %3033 = add i32 %35, 452
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = add i32 %3035, 0
  %3037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3037, %dx.types.Handle %72, float %2812, float %2813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3039 = extractvalue %dx.types.ResRet.f32 %3038, 0
  br label %3040

; <label>:3040                                    ; preds = %3032, %3007
  %3041 = phi float [ %3039, %3032 ], [ 1.000000e+00, %3007 ]
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 33554432
  %3045 = icmp eq i32 %3044, 0
  br i1 %3045, label %3152, label %3046

; <label>:3046                                    ; preds = %3040
  %3047 = add i32 %35, 272
  %3048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3047, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.i32 %3048, 0
  %3050 = and i32 %3049, 65535
  %3051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3050)  ; LegacyF16ToF32(value)
  %3052 = lshr i32 %3049, 16
  %3053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3052)  ; LegacyF16ToF32(value)
  %3054 = add i32 %35, 276
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = and i32 %3056, 65535
  %3058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3057)  ; LegacyF16ToF32(value)
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = lshr i32 %3060, 24
  %3062 = uitofp i32 %3061 to float
  %3063 = fmul fast float %3062, 0x3F70101020000000
  %3064 = and i32 %3060, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = fmul fast float %3065, 0x3F70101020000000
  %3067 = lshr i32 %3060, 8
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3069, 0x3F70101020000000
  %3071 = lshr i32 %3060, 16
  %3072 = and i32 %3071, 255
  %3073 = uitofp i32 %3072 to float
  %3074 = fmul fast float %3073, 0x3F70101020000000
  %3075 = add i32 %35, 268
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = lshr i32 %3077, 24
  %3079 = uitofp i32 %3078 to float
  %3080 = fmul fast float %3079, 0x3F70101020000000
  %3081 = and i32 %3077, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = fmul fast float %3082, 0x3F70101020000000
  %3084 = lshr i32 %3077, 8
  %3085 = and i32 %3084, 255
  %3086 = uitofp i32 %3085 to float
  %3087 = fmul fast float %3086, 0x3F70101020000000
  %3088 = lshr i32 %3077, 16
  %3089 = and i32 %3088, 255
  %3090 = uitofp i32 %3089 to float
  %3091 = fmul fast float %3090, 0x3F70101020000000
  %3092 = bitcast float %3016 to i32
  %3093 = ashr i32 %3092, 1
  %3094 = sub nsw i32 1597463174, %3093
  %3095 = bitcast i32 %3094 to float
  %3096 = fmul fast float %3016, 5.000000e-01
  %3097 = fmul fast float %3095, %3095
  %3098 = fmul fast float %3097, %3096
  %3099 = fsub fast float 1.500000e+00, %3098
  %3100 = fmul fast float %3095, %3016
  %3101 = fmul fast float %3100, %3099
  %3102 = bitcast float %3017 to i32
  %3103 = ashr i32 %3102, 1
  %3104 = sub nsw i32 1597463174, %3103
  %3105 = bitcast i32 %3104 to float
  %3106 = fmul fast float %3017, 5.000000e-01
  %3107 = fmul fast float %3105, %3105
  %3108 = fmul fast float %3107, %3106
  %3109 = fsub fast float 1.500000e+00, %3108
  %3110 = fmul fast float %3105, %3017
  %3111 = fmul fast float %3110, %3109
  %3112 = bitcast float %3018 to i32
  %3113 = ashr i32 %3112, 1
  %3114 = sub nsw i32 1597463174, %3113
  %3115 = bitcast i32 %3114 to float
  %3116 = fmul fast float %3018, 5.000000e-01
  %3117 = fmul fast float %3115, %3115
  %3118 = fmul fast float %3117, %3116
  %3119 = fsub fast float 1.500000e+00, %3118
  %3120 = fmul fast float %3115, %3018
  %3121 = fmul fast float %3120, %3119
  %3122 = fsub fast float %3101, %3083
  %3123 = fsub fast float %3111, %3087
  %3124 = fsub fast float %3121, %3091
  %3125 = fmul fast float %3122, %3051
  %3126 = fmul fast float %3123, %3053
  %3127 = fmul fast float %3124, %3058
  %3128 = fadd fast float %3125, %3066
  %3129 = fadd fast float %3126, %3070
  %3130 = fadd fast float %3127, %3074
  %3131 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  %3132 = call float @dx.op.unary.f32(i32 7, float %3129)  ; Saturate(value)
  %3133 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3134 = fmul fast float %3131, %3131
  %3135 = fmul fast float %3132, %3132
  %3136 = fmul fast float %3133, %3133
  %3137 = fsub fast float %3134, %3016
  %3138 = fsub fast float %3135, %3017
  %3139 = fsub fast float %3136, %3018
  %3140 = fmul fast float %3137, %3041
  %3141 = fmul fast float %3138, %3041
  %3142 = fmul fast float %3139, %3041
  %3143 = fadd fast float %3140, %3016
  %3144 = fadd fast float %3141, %3017
  %3145 = fadd fast float %3142, %3018
  %3146 = fadd fast float %3063, %3027
  %3147 = fsub fast float %3146, %3080
  %3148 = call float @dx.op.unary.f32(i32 7, float %3147)  ; Saturate(value)
  %3149 = fsub fast float %3148, %3027
  %3150 = fmul fast float %3149, %3041
  %3151 = fadd fast float %3150, %3027
  br label %3205

; <label>:3152                                    ; preds = %3040
  %3153 = and i32 %3043, 134217728
  %3154 = icmp eq i32 %3153, 0
  br i1 %3154, label %3189, label %3155

; <label>:3155                                    ; preds = %3152
  %3156 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3157 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3158 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3159 = fadd fast float %3156, -5.000000e-01
  %3160 = fadd fast float %3157, -5.000000e-01
  %3161 = fadd fast float %3158, -5.000000e-01
  %3162 = fmul fast float %3159, %3041
  %3163 = fmul fast float %3160, %3041
  %3164 = fmul fast float %3161, %3041
  %3165 = fadd fast float %3162, 5.000000e-01
  %3166 = fadd fast float %3163, 5.000000e-01
  %3167 = fadd fast float %3164, 5.000000e-01
  %3168 = call float @dx.op.unary.f32(i32 24, float %3016)  ; Sqrt(value)
  %3169 = call float @dx.op.unary.f32(i32 24, float %3017)  ; Sqrt(value)
  %3170 = call float @dx.op.unary.f32(i32 24, float %3018)  ; Sqrt(value)
  %3171 = fmul fast float %3165, 2.000000e+00
  %3172 = fsub fast float 1.000000e+00, %3171
  %3173 = fmul fast float %3172, %3168
  %3174 = fadd fast float %3173, %3171
  %3175 = fmul fast float %3174, %3168
  %3176 = fmul fast float %3166, 2.000000e+00
  %3177 = fsub fast float 1.000000e+00, %3176
  %3178 = fmul fast float %3177, %3169
  %3179 = fadd fast float %3178, %3176
  %3180 = fmul fast float %3179, %3169
  %3181 = fmul fast float %3167, 2.000000e+00
  %3182 = fsub fast float 1.000000e+00, %3181
  %3183 = fmul fast float %3182, %3170
  %3184 = fadd fast float %3183, %3181
  %3185 = fmul fast float %3184, %3170
  %3186 = fmul fast float %3175, %3175
  %3187 = fmul fast float %3180, %3180
  %3188 = fmul fast float %3185, %3185
  br label %3205

; <label>:3189                                    ; preds = %3152
  %3190 = fmul fast float %320, %320
  %3191 = fmul fast float %324, %324
  %3192 = fmul fast float %328, %328
  %3193 = fadd fast float %3190, -1.000000e+00
  %3194 = fadd fast float %3191, -1.000000e+00
  %3195 = fadd fast float %3192, -1.000000e+00
  %3196 = fmul fast float %3041, %3193
  %3197 = fmul fast float %3041, %3194
  %3198 = fmul fast float %3041, %3195
  %3199 = fadd fast float %3196, 1.000000e+00
  %3200 = fadd fast float %3197, 1.000000e+00
  %3201 = fadd fast float %3198, 1.000000e+00
  %3202 = fmul fast float %3199, %3016
  %3203 = fmul fast float %3200, %3017
  %3204 = fmul fast float %3201, %3018
  br label %3205

; <label>:3205                                    ; preds = %3189, %3155, %3046, %3002
  %3206 = phi float [ %3151, %3046 ], [ %3027, %3155 ], [ %3027, %3189 ], [ 0x3FA23C0BE0000000, %3002 ]
  %3207 = phi float [ %3143, %3046 ], [ %3186, %3155 ], [ %3202, %3189 ], [ 1.000000e+00, %3002 ]
  %3208 = phi float [ %3144, %3046 ], [ %3187, %3155 ], [ %3203, %3189 ], [ 1.000000e+00, %3002 ]
  %3209 = phi float [ %3145, %3046 ], [ %3188, %3155 ], [ %3204, %3189 ], [ 1.000000e+00, %3002 ]
  %3210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3211 = extractvalue %dx.types.CBufRet.i32 %3210, 1
  %3212 = and i32 %3211, 1
  %3213 = icmp ne i32 %3212, 0
  %3214 = add i32 %35, 356
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 32
  %3218 = icmp ne i32 %3217, 0
  %3219 = and i1 %3213, %3218
  %3220 = select i1 %3219, float 1.000000e+00, float %3207
  %3221 = select i1 %3219, float 0x3FD3333340000000, float %3208
  %3222 = select i1 %3219, float 0x3FD3333340000000, float %3209
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 32
  %3226 = icmp eq i32 %3225, 0
  br i1 %3226, label %3299, label %3227

; <label>:3227                                    ; preds = %3205
  %3228 = add i32 %35, 140
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %35, 388
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = add i32 %3233, 0
  %3235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3235, %dx.types.Handle %71, float %2812, float %2813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = extractvalue %dx.types.ResRet.f32 %3236, 3
  %3241 = and i32 %3230, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = lshr i32 %3230, 8
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = lshr i32 %3230, 16
  %3247 = and i32 %3246, 255
  %3248 = uitofp i32 %3247 to float
  %3249 = fmul fast float %3248, 0x3F70101000000000
  %3250 = fmul fast float %3237, %3242
  %3251 = fadd fast float %3250, %3245
  %3252 = fmul fast float %3251, 0x3F70101000000000
  %3253 = fadd fast float %3238, -5.000000e-01
  %3254 = fadd fast float %3240, -5.000000e-01
  %3255 = fmul fast float %3253, %3249
  %3256 = fmul fast float %3254, %3249
  %3257 = fadd fast float %3255, 5.000000e-01
  %3258 = fadd fast float %3256, 5.000000e-01
  %3259 = fmul fast float %3257, 2.000000e+00
  %3260 = fadd fast float %3259, -1.000000e+00
  %3261 = fmul fast float %3258, 2.000000e+00
  %3262 = fadd fast float %3261, -1.000000e+00
  %3263 = fadd fast float %3260, %3262
  %3264 = fmul fast float %3263, 5.000000e-01
  %3265 = fsub fast float %3260, %3262
  %3266 = fmul fast float %3265, 5.000000e-01
  %3267 = call float @dx.op.unary.f32(i32 6, float %3264)  ; FAbs(value)
  %3268 = fsub fast float 1.000000e+00, %3267
  %3269 = call float @dx.op.unary.f32(i32 6, float %3266)  ; FAbs(value)
  %3270 = fsub fast float %3268, %3269
  %3271 = call float @dx.op.dot3.f32(i32 55, float %3264, float %3266, float %3270, float %3264, float %3266, float %3270)  ; Dot3(ax,ay,az,bx,by,bz)
  %3272 = call float @dx.op.unary.f32(i32 25, float %3271)  ; Rsqrt(value)
  %3273 = fmul fast float %3264, %3272
  %3274 = fmul fast float %3266, %3272
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 67108864
  %3278 = icmp eq i32 %3277, 0
  br i1 %3278, label %3295, label %3279

; <label>:3279                                    ; preds = %3227
  %3280 = add i32 %35, 328
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = and i32 %3282, 65535
  %3284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3283)  ; LegacyF16ToF32(value)
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 0
  %3287 = and i32 %3286, 65535
  %3288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3287)  ; LegacyF16ToF32(value)
  %3289 = lshr i32 %3282, 16
  %3290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3289)  ; LegacyF16ToF32(value)
  %3291 = fsub fast float %3252, %3290
  %3292 = fmul fast float %3291, %3284
  %3293 = fadd fast float %3292, %3288
  %3294 = call float @dx.op.unary.f32(i32 7, float %3293)  ; Saturate(value)
  br label %3295

; <label>:3295                                    ; preds = %3279, %3227
  %3296 = phi float [ %3294, %3279 ], [ %3252, %3227 ]
  %3297 = call float @dx.op.dot2.f32(i32 54, float %3273, float %3274, float %2716, float %2717)  ; Dot2(ax,ay,bx,by)
  %3298 = call float @dx.op.dot2.f32(i32 54, float %3273, float %3274, float %2718, float %2719)  ; Dot2(ax,ay,bx,by)
  br label %3299

; <label>:3299                                    ; preds = %3295, %3205
  %3300 = phi float [ %3296, %3295 ], [ 0x3FD6666660000000, %3205 ]
  %3301 = phi float [ %3297, %3295 ], [ 0.000000e+00, %3205 ]
  %3302 = phi float [ %3298, %3295 ], [ 0.000000e+00, %3205 ]
  %3303 = phi float [ %3239, %3295 ], [ 1.000000e+00, %3205 ]
  %3304 = add i32 %35, 208
  %3305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3304, i32 undef)  ; BufferLoad(srv,index,wot)
  %3306 = extractvalue %dx.types.ResRet.i32 %3305, 0
  %3307 = lshr i32 %3306, 22
  %3308 = shl nuw nsw i32 %3307, 5
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 64
  %3313 = icmp eq i32 %3312, 0
  br i1 %3313, label %3347, label %3314

; <label>:3314                                    ; preds = %3299
  %3315 = add i32 %35, 404
  %3316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.i32 %3316, 0
  %3318 = add i32 %3317, 0
  %3319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3321 = extractvalue %dx.types.ResRet.i32 %3320, 0
  %3322 = and i32 %3321, 131072
  %3323 = icmp eq i32 %3322, 0
  %3324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3319, %dx.types.Handle %71, float %2812, float %2813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3325 = extractvalue %dx.types.ResRet.f32 %3324, 0
  %3326 = extractvalue %dx.types.ResRet.f32 %3324, 1
  %3327 = extractvalue %dx.types.ResRet.f32 %3324, 2
  %3328 = fmul fast float %3325, %308
  %3329 = fmul fast float %3326, %311
  %3330 = fmul fast float %3327, %314
  br i1 %3323, label %3337, label %3331

; <label>:3331                                    ; preds = %3314
  %3332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3332, 0
  %3334 = fmul fast float %3333, %3328
  %3335 = fmul fast float %3333, %3329
  %3336 = fmul fast float %3333, %3330
  br label %3337

; <label>:3337                                    ; preds = %3331, %3314
  %3338 = phi float [ %3334, %3331 ], [ %3328, %3314 ]
  %3339 = phi float [ %3335, %3331 ], [ %3329, %3314 ]
  %3340 = phi float [ %3336, %3331 ], [ %3330, %3314 ]
  %3341 = fmul fast float %3338, %3309
  %3342 = select i1 %176, float %3341, float %3338
  %3343 = call float @dx.op.dot3.f32(i32 55, float %3342, float %3339, float %3340, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3344 = select i1 %176, float 0.000000e+00, float %3338
  %3345 = select i1 %176, float %3343, float %3339
  %3346 = select i1 %176, float 0.000000e+00, float %3340
  br label %3347

; <label>:3347                                    ; preds = %3337, %3299
  %3348 = phi float [ %3344, %3337 ], [ 0.000000e+00, %3299 ]
  %3349 = phi float [ %3345, %3337 ], [ 0.000000e+00, %3299 ]
  %3350 = phi float [ %3346, %3337 ], [ 0.000000e+00, %3299 ]
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = and i32 %3352, 26624
  %3354 = icmp eq i32 %3353, 0
  br i1 %3354, label %3378, label %3355

; <label>:3355                                    ; preds = %3347
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 16384
  %3359 = icmp eq i32 %3358, 0
  br i1 %3359, label %3378, label %3360

; <label>:3360                                    ; preds = %3355
  %3361 = and i32 %3357, 1048576
  %3362 = icmp ne i32 %3361, 0
  %3363 = add i32 %35, 468
  %3364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3363, i32 undef)  ; BufferLoad(srv,index,wot)
  %3365 = extractvalue %dx.types.ResRet.i32 %3364, 0
  %3366 = add i32 %3365, 0
  %3367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3367, %dx.types.Handle %72, float %2812, float %2813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3369 = extractvalue %dx.types.ResRet.f32 %3368, 0
  %3370 = add i32 %35, 144
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = lshr i32 %3372, 24
  %3374 = uitofp i32 %3373 to float
  %3375 = fmul fast float %3369, 0x3F70101020000000
  %3376 = select i1 %3362, float 0x3F70101020000000, float %3375
  %3377 = fmul fast float %3376, %3374
  br label %3378

; <label>:3378                                    ; preds = %3360, %3355, %3347
  %3379 = phi float [ %3377, %3360 ], [ 0.000000e+00, %3355 ], [ 0.000000e+00, %3347 ]
  %3380 = add i32 %35, 144
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, 255
  %3384 = uitofp i32 %3383 to float
  %3385 = lshr i32 %3382, 8
  %3386 = and i32 %3385, 255
  %3387 = uitofp i32 %3386 to float
  %3388 = call float @dx.op.dot3.f32(i32 55, float %3220, float %3221, float %3222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3389 = fmul fast float %3387, %3388
  %3390 = fadd fast float %3389, %3384
  %3391 = fmul fast float %3390, 0x3F70101020000000
  %3392 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  br i1 %2704, label %3393, label %3401

; <label>:3393                                    ; preds = %3378
  %3394 = fsub fast float 1.000000e+00, %3000
  %3395 = fmul fast float %3394, %2692
  %3396 = fmul fast float %3394, %2693
  %3397 = fmul fast float %3394, %2694
  %3398 = fmul fast float %3394, %2695
  %3399 = fmul fast float %3394, %2696
  %3400 = fmul fast float %3394, %2697
  br label %3401

; <label>:3401                                    ; preds = %3393, %3378
  %3402 = phi float [ %3395, %3393 ], [ %2692, %3378 ]
  %3403 = phi float [ %3396, %3393 ], [ %2693, %3378 ]
  %3404 = phi float [ %3397, %3393 ], [ %2694, %3378 ]
  %3405 = phi float [ %3398, %3393 ], [ %2695, %3378 ]
  %3406 = phi float [ %3399, %3393 ], [ %2696, %3378 ]
  %3407 = phi float [ %3400, %3393 ], [ %2697, %3378 ]
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = and i32 %3409, 3
  %3411 = icmp eq i32 %3410, 3
  br i1 %3411, label %3490, label %3412

; <label>:3412                                    ; preds = %3401
  %3413 = and i32 %3409, 16
  %3414 = icmp ne i32 %3413, 0
  %3415 = select i1 %3414, float %3000, float 0.000000e+00
  %3416 = icmp eq i32 %3410, 0
  br i1 %3416, label %3417, label %3445

; <label>:3417                                    ; preds = %3412
  %3418 = and i32 %3409, 64
  %3419 = icmp ne i32 %3418, 0
  %3420 = select i1 %3419, float %3000, float 0.000000e+00
  %3421 = fsub fast float %3220, %3402
  %3422 = fsub fast float %3221, %3403
  %3423 = fsub fast float %3222, %3404
  %3424 = fmul fast float %3415, %3421
  %3425 = fmul fast float %3415, %3422
  %3426 = fmul fast float %3415, %3423
  %3427 = fadd fast float %3424, %3402
  %3428 = fadd fast float %3425, %3403
  %3429 = fadd fast float %3426, %3404
  %3430 = fsub fast float %3206, %2698
  %3431 = fmul fast float %3415, %3430
  %3432 = fadd fast float %3431, %2698
  %3433 = fsub fast float %3348, %3405
  %3434 = fsub fast float %3349, %3406
  %3435 = fsub fast float %3350, %3407
  %3436 = fmul fast float %3420, %3433
  %3437 = fmul fast float %3420, %3434
  %3438 = fmul fast float %3420, %3435
  %3439 = fadd fast float %3436, %3405
  %3440 = fadd fast float %3437, %3406
  %3441 = fadd fast float %3438, %3407
  %3442 = fsub fast float %3392, %2702
  %3443 = fmul fast float %3415, %3442
  %3444 = fadd fast float %3443, %2702
  br label %3490

; <label>:3445                                    ; preds = %3412
  %3446 = icmp eq i32 %3410, 1
  br i1 %3446, label %3447, label %3460

; <label>:3447                                    ; preds = %3445
  %3448 = fadd fast float %3220, -1.000000e+00
  %3449 = fadd fast float %3221, -1.000000e+00
  %3450 = fadd fast float %3222, -1.000000e+00
  %3451 = fmul fast float %3415, %3448
  %3452 = fmul fast float %3415, %3449
  %3453 = fmul fast float %3415, %3450
  %3454 = fadd fast float %3451, 1.000000e+00
  %3455 = fadd fast float %3452, 1.000000e+00
  %3456 = fadd fast float %3453, 1.000000e+00
  %3457 = fmul fast float %3454, %3402
  %3458 = fmul fast float %3455, %3403
  %3459 = fmul fast float %3456, %3404
  br label %3490

; <label>:3460                                    ; preds = %3445
  %3461 = icmp eq i32 %3410, 2
  br i1 %3461, label %3462, label %3490

; <label>:3462                                    ; preds = %3460
  %3463 = call float @dx.op.unary.f32(i32 24, float %3220)  ; Sqrt(value)
  %3464 = call float @dx.op.unary.f32(i32 24, float %3221)  ; Sqrt(value)
  %3465 = call float @dx.op.unary.f32(i32 24, float %3222)  ; Sqrt(value)
  %3466 = fadd fast float %3463, -5.000000e-01
  %3467 = fadd fast float %3464, -5.000000e-01
  %3468 = fadd fast float %3465, -5.000000e-01
  %3469 = fmul fast float %3466, %3415
  %3470 = fmul fast float %3467, %3415
  %3471 = fmul fast float %3468, %3415
  %3472 = fadd fast float %3469, 5.000000e-01
  %3473 = fadd fast float %3470, 5.000000e-01
  %3474 = fadd fast float %3471, 5.000000e-01
  %3475 = fmul fast float %3472, 2.000000e+00
  %3476 = fsub fast float 1.000000e+00, %3475
  %3477 = fmul fast float %3476, %3402
  %3478 = fadd fast float %3477, %3475
  %3479 = fmul fast float %3478, %3402
  %3480 = fmul fast float %3473, 2.000000e+00
  %3481 = fsub fast float 1.000000e+00, %3480
  %3482 = fmul fast float %3481, %3403
  %3483 = fadd fast float %3482, %3480
  %3484 = fmul fast float %3483, %3403
  %3485 = fmul fast float %3474, 2.000000e+00
  %3486 = fsub fast float 1.000000e+00, %3485
  %3487 = fmul fast float %3486, %3404
  %3488 = fadd fast float %3487, %3485
  %3489 = fmul fast float %3488, %3404
  br label %3490

; <label>:3490                                    ; preds = %3462, %3460, %3447, %3417, %3401
  %3491 = phi float [ %3402, %3401 ], [ %3479, %3462 ], [ %3402, %3460 ], [ %3457, %3447 ], [ %3427, %3417 ]
  %3492 = phi float [ %3403, %3401 ], [ %3484, %3462 ], [ %3403, %3460 ], [ %3458, %3447 ], [ %3428, %3417 ]
  %3493 = phi float [ %3404, %3401 ], [ %3489, %3462 ], [ %3404, %3460 ], [ %3459, %3447 ], [ %3429, %3417 ]
  %3494 = phi float [ %3405, %3401 ], [ %3405, %3462 ], [ %3405, %3460 ], [ %3405, %3447 ], [ %3439, %3417 ]
  %3495 = phi float [ %3406, %3401 ], [ %3406, %3462 ], [ %3406, %3460 ], [ %3406, %3447 ], [ %3440, %3417 ]
  %3496 = phi float [ %3407, %3401 ], [ %3407, %3462 ], [ %3407, %3460 ], [ %3407, %3447 ], [ %3441, %3417 ]
  %3497 = phi float [ %2698, %3401 ], [ %2698, %3462 ], [ %2698, %3460 ], [ %2698, %3447 ], [ %3432, %3417 ]
  %3498 = phi float [ %2702, %3401 ], [ %2702, %3462 ], [ %2702, %3460 ], [ %2702, %3447 ], [ %3444, %3417 ]
  %3499 = and i32 %3409, 12
  %3500 = icmp eq i32 %3499, 12
  br i1 %3500, label %3583, label %3501

; <label>:3501                                    ; preds = %3490
  %3502 = and i32 %3409, 2097184
  %3503 = icmp eq i32 %3502, 2097184
  %3504 = select i1 %3503, float %3000, float 0.000000e+00
  %3505 = and i32 %3409, 4194336
  %3506 = icmp eq i32 %3505, 4194336
  %3507 = select i1 %3506, float %3000, float 0.000000e+00
  %3508 = and i32 %3409, 8388640
  %3509 = icmp eq i32 %3508, 8388640
  %3510 = select i1 %3509, float %3000, float 0.000000e+00
  %3511 = and i32 %3409, 16384
  %3512 = icmp ne i32 %3511, 0
  %3513 = select i1 %3512, float %3000, float 0.000000e+00
  %3514 = icmp eq i32 %3499, 0
  br i1 %3514, label %3515, label %3531

; <label>:3515                                    ; preds = %3501
  %3516 = fsub fast float %3301, %2690
  %3517 = fsub fast float %3302, %2691
  %3518 = fmul fast float %3504, %3516
  %3519 = fmul fast float %3504, %3517
  %3520 = fadd fast float %3518, %2690
  %3521 = fadd fast float %3519, %2691
  %3522 = fsub fast float %3303, %2700
  %3523 = fmul fast float %3507, %3522
  %3524 = fadd fast float %3523, %2700
  %3525 = fsub fast float %3300, %2699
  %3526 = fmul fast float %3510, %3525
  %3527 = fadd fast float %3526, %2699
  %3528 = fsub fast float %3379, %2701
  %3529 = fmul fast float %3513, %3528
  %3530 = fadd fast float %3529, %2701
  br label %3583

; <label>:3531                                    ; preds = %3501
  %3532 = icmp eq i32 %3499, 4
  br i1 %3532, label %3533, label %3567

; <label>:3533                                    ; preds = %3531
  %3534 = fmul fast float %3504, %3301
  %3535 = fmul fast float %3504, %3302
  %3536 = fadd fast float %3534, %2690
  %3537 = fadd fast float %3535, %2691
  %3538 = call float @dx.op.binary.f32(i32 36, float %2700, float %3303)  ; FMin(a,b)
  %3539 = fsub fast float %3538, %2700
  %3540 = fmul fast float %3539, %3507
  %3541 = fadd fast float %3540, %2700
  %3542 = fadd fast float %3300, %2699
  %3543 = fmul fast float %3542, 0x3FF337FAE0000000
  %3544 = fmul fast float %2699, %2699
  %3545 = fmul fast float %3300, %3300
  %3546 = fadd fast float %3545, %3544
  %3547 = fmul fast float %3546, 0x3FE5152B00000000
  %3548 = fmul fast float %2699, 0xBFCC1F85E0000000
  %3549 = fmul fast float %3548, %3300
  %3550 = fadd fast float %3549, 0xBFE1363700000000
  %3551 = fadd fast float %3550, %3543
  %3552 = fsub fast float %3551, %3547
  %3553 = fmul fast float %3542, 0x3FBA6F0D00000000
  %3554 = fmul fast float %3546, 0x3FD0432880000000
  %3555 = fmul fast float %2699, 0xBFEF110800000000
  %3556 = fmul fast float %3555, %3300
  %3557 = fadd fast float %3556, 1.000000e+00
  %3558 = fsub fast float %3557, %3553
  %3559 = fadd fast float %3558, %3554
  %3560 = fdiv fast float %3552, %3559
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3562 = fsub fast float %3561, %2699
  %3563 = fmul fast float %3562, %3510
  %3564 = fadd fast float %3563, %2699
  %3565 = fmul fast float %3513, %3379
  %3566 = fadd fast float %3565, %2701
  br label %3583

; <label>:3567                                    ; preds = %3531
  %3568 = icmp eq i32 %3499, 8
  br i1 %3568, label %3569, label %3583

; <label>:3569                                    ; preds = %3567
  %3570 = fmul fast float %3504, %3301
  %3571 = fmul fast float %3504, %3302
  %3572 = fadd fast float %3570, %2690
  %3573 = fadd fast float %3571, %2691
  %3574 = call float @dx.op.binary.f32(i32 36, float %2700, float %3303)  ; FMin(a,b)
  %3575 = fsub fast float %3574, %2700
  %3576 = fmul fast float %3575, %3507
  %3577 = fadd fast float %3576, %2700
  %3578 = fsub fast float %3300, %2699
  %3579 = fmul fast float %3510, %3578
  %3580 = fadd fast float %3579, %2699
  %3581 = fmul fast float %3513, %3379
  %3582 = fadd fast float %3581, %2701
  br label %3583

; <label>:3583                                    ; preds = %3569, %3567, %3533, %3515, %3490, %2999, %2703, %2689
  %3584 = phi float [ %2690, %3490 ], [ %2690, %2999 ], [ %2690, %2689 ], [ %2690, %2703 ], [ %3520, %3515 ], [ %3536, %3533 ], [ %2690, %3567 ], [ %3572, %3569 ]
  %3585 = phi float [ %2691, %3490 ], [ %2691, %2999 ], [ %2691, %2689 ], [ %2691, %2703 ], [ %3521, %3515 ], [ %3537, %3533 ], [ %2691, %3567 ], [ %3573, %3569 ]
  %3586 = phi float [ %3491, %3490 ], [ %2692, %2999 ], [ %2692, %2689 ], [ %2692, %2703 ], [ %3491, %3515 ], [ %3491, %3533 ], [ %3491, %3567 ], [ %3491, %3569 ]
  %3587 = phi float [ %3492, %3490 ], [ %2693, %2999 ], [ %2693, %2689 ], [ %2693, %2703 ], [ %3492, %3515 ], [ %3492, %3533 ], [ %3492, %3567 ], [ %3492, %3569 ]
  %3588 = phi float [ %3493, %3490 ], [ %2694, %2999 ], [ %2694, %2689 ], [ %2694, %2703 ], [ %3493, %3515 ], [ %3493, %3533 ], [ %3493, %3567 ], [ %3493, %3569 ]
  %3589 = phi float [ %3494, %3490 ], [ %2695, %2999 ], [ %2695, %2689 ], [ %2695, %2703 ], [ %3494, %3515 ], [ %3494, %3533 ], [ %3494, %3567 ], [ %3494, %3569 ]
  %3590 = phi float [ %3495, %3490 ], [ %2696, %2999 ], [ %2696, %2689 ], [ %2696, %2703 ], [ %3495, %3515 ], [ %3495, %3533 ], [ %3495, %3567 ], [ %3495, %3569 ]
  %3591 = phi float [ %3496, %3490 ], [ %2697, %2999 ], [ %2697, %2689 ], [ %2697, %2703 ], [ %3496, %3515 ], [ %3496, %3533 ], [ %3496, %3567 ], [ %3496, %3569 ]
  %3592 = phi float [ %3497, %3490 ], [ %2698, %2999 ], [ %2698, %2689 ], [ %2698, %2703 ], [ %3497, %3515 ], [ %3497, %3533 ], [ %3497, %3567 ], [ %3497, %3569 ]
  %3593 = phi float [ %2699, %3490 ], [ %2699, %2999 ], [ %2699, %2689 ], [ %2699, %2703 ], [ %3527, %3515 ], [ %3564, %3533 ], [ %2699, %3567 ], [ %3580, %3569 ]
  %3594 = phi float [ %2700, %3490 ], [ %2700, %2999 ], [ %2700, %2689 ], [ %2700, %2703 ], [ %3524, %3515 ], [ %3541, %3533 ], [ %2700, %3567 ], [ %3577, %3569 ]
  %3595 = phi float [ %2701, %3490 ], [ %2701, %2999 ], [ %2701, %2689 ], [ %2701, %2703 ], [ %3530, %3515 ], [ %3566, %3533 ], [ %2701, %3567 ], [ %3582, %3569 ]
  %3596 = phi float [ %3498, %3490 ], [ %2702, %2999 ], [ %2702, %2689 ], [ %2702, %2703 ], [ %3498, %3515 ], [ %3498, %3533 ], [ %3498, %3567 ], [ %3498, %3569 ]
  %3597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.f32 %3597, 0
  %3599 = call float @dx.op.dot2.f32(i32 54, float %3584, float %3585, float %3584, float %3585)  ; Dot2(ax,ay,bx,by)
  %3600 = fmul fast float %3599, 0x3FE3333340000000
  %3601 = fsub fast float 1.000000e+00, %3600
  %3602 = call float @dx.op.dot3.f32(i32 55, float %3584, float %3585, float %3601, float %3584, float %3585, float %3601)  ; Dot3(ax,ay,az,bx,by,bz)
  %3603 = call float @dx.op.unary.f32(i32 25, float %3602)  ; Rsqrt(value)
  %3604 = fmul fast float %3603, %3584
  %3605 = fmul fast float %3603, %3585
  %3606 = fmul fast float %3601, %3603
  %3607 = fmul fast float %3606, %84
  %3608 = fmul fast float %3606, %86
  %3609 = fmul fast float %3606, %88
  %3610 = fmul fast float %3604, %56
  %3611 = fmul fast float %3604, %57
  %3612 = fmul fast float %3604, %58
  %3613 = fadd fast float %3607, %3610
  %3614 = fadd fast float %3608, %3611
  %3615 = fadd fast float %3609, %3612
  %3616 = fmul fast float %98, %3605
  %3617 = fmul fast float %99, %3605
  %3618 = fmul fast float %100, %3605
  %3619 = fadd fast float %3613, %3616
  %3620 = fadd fast float %3614, %3617
  %3621 = fadd fast float %3615, %3618
  %3622 = call float @dx.op.dot3.f32(i32 55, float %3619, float %3620, float %3621, float %3619, float %3620, float %3621)  ; Dot3(ax,ay,az,bx,by,bz)
  %3623 = call float @dx.op.unary.f32(i32 25, float %3622)  ; Rsqrt(value)
  %3624 = fmul fast float %3619, %3623
  %3625 = fmul fast float %3620, %3623
  %3626 = fmul fast float %3621, %3623
  %3627 = and i32 %37, 1
  %3628 = icmp eq i32 %3627, 0
  br i1 %3628, label %3629, label %4137

; <label>:3629                                    ; preds = %3583
  %3630 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3631 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3632 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3633 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3634 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3635 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3636 = fadd fast float %3630, %134
  %3637 = fadd fast float %3631, %135
  %3638 = fadd fast float %3632, %136
  %3639 = fadd fast float %3633, %134
  %3640 = fadd fast float %3634, %135
  %3641 = fadd fast float %3635, %136
  %3642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.CBufRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.CBufRet.f32 %3642, 2
  %3646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3647 = extractvalue %dx.types.CBufRet.f32 %3646, 2
  %3648 = extractvalue %dx.types.CBufRet.f32 %3646, 3
  %3649 = fmul fast float %3643, %75
  %3650 = fmul fast float %3649, %3647
  %3651 = fmul fast float %3644, %76
  %3652 = fmul fast float %3651, %3648
  %3653 = fptoui float %3650 to i32
  %3654 = fptoui float %3652 to i32
  %3655 = fadd fast float %3643, -1.000000e+00
  %3656 = fadd fast float %3644, -1.000000e+00
  %3657 = fptoui float %3655 to i32
  %3658 = fptoui float %3656 to i32
  %3659 = call i32 @dx.op.binary.i32(i32 40, i32 %3653, i32 %3657)  ; UMin(a,b)
  %3660 = call i32 @dx.op.binary.i32(i32 40, i32 %3654, i32 %3658)  ; UMin(a,b)
  %3661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.f32 %3661, 2
  %3663 = extractvalue %dx.types.CBufRet.f32 %3661, 3
  %3664 = fmul fast float %3662, %70
  %3665 = fsub fast float %3664, %3663
  %3666 = fadd fast float %3645, -1.000000e+00
  %3667 = call float @dx.op.binary.f32(i32 36, float %3665, float %3666)  ; FMin(a,b)
  %3668 = fptoui float %3667 to i32
  %3669 = fptoui float %3643 to i32
  %3670 = fptoui float %3644 to i32
  %3671 = mul i32 %3668, %3670
  %3672 = add i32 %3671, %3660
  %3673 = mul i32 %3672, %3669
  %3674 = add i32 %3673, %3659
  %3675 = shl i32 %3674, 2
  %3676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3675, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.i32 %3676, 0
  %3678 = and i32 %3677, 1023
  %3679 = lshr i32 %3677, 10
  %3680 = icmp eq i32 %3678, 0
  br i1 %3680, label %4106, label %3681

; <label>:3681                                    ; preds = %3629
  %3682 = and i32 %3677, 1023
  br label %3683

; <label>:3683                                    ; preds = %3809, %3681
  %3684 = phi i32 [ %3759, %3809 ], [ 0, %3681 ]
  %3685 = phi float [ %3810, %3809 ], [ 0.000000e+00, %3681 ]
  %3686 = phi float [ %3811, %3809 ], [ %3598, %3681 ]
  %3687 = phi float [ %3812, %3809 ], [ %3596, %3681 ]
  %3688 = phi float [ %3813, %3809 ], [ %3595, %3681 ]
  %3689 = phi float [ %3814, %3809 ], [ 0.000000e+00, %3681 ]
  %3690 = phi float [ %3815, %3809 ], [ %3589, %3681 ]
  %3691 = phi float [ %3816, %3809 ], [ %3590, %3681 ]
  %3692 = phi float [ %3817, %3809 ], [ %3591, %3681 ]
  %3693 = phi float [ %3818, %3809 ], [ %3624, %3681 ]
  %3694 = phi float [ %3819, %3809 ], [ %3625, %3681 ]
  %3695 = phi float [ %3820, %3809 ], [ %3626, %3681 ]
  %3696 = phi float [ %3821, %3809 ], [ %3594, %3681 ]
  %3697 = phi float [ %3822, %3809 ], [ %3593, %3681 ]
  %3698 = phi float [ %3823, %3809 ], [ 0.000000e+00, %3681 ]
  %3699 = phi float [ %3824, %3809 ], [ %3592, %3681 ]
  %3700 = phi float [ %3825, %3809 ], [ %3586, %3681 ]
  %3701 = phi float [ %3826, %3809 ], [ %3587, %3681 ]
  %3702 = phi float [ %3827, %3809 ], [ %3588, %3681 ]
  %3703 = add nuw nsw i32 %3684, %3679
  %3704 = shl i32 %3703, 2
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = shl i32 %3706, 8
  %3708 = or i32 %3707, 48
  %3709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  %3713 = extractvalue %dx.types.ResRet.f32 %3709, 3
  %3714 = or i32 %3707, 64
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = extractvalue %dx.types.ResRet.i32 %3715, 1
  %3718 = or i32 %3707, 80
  %3719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 2
  %3721 = extractvalue %dx.types.ResRet.f32 %3719, 3
  %3722 = or i32 %3707, 96
  %3723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = extractvalue %dx.types.ResRet.f32 %3723, 1
  %3726 = extractvalue %dx.types.ResRet.f32 %3723, 2
  %3727 = extractvalue %dx.types.ResRet.f32 %3723, 3
  %3728 = or i32 %3707, 112
  %3729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.f32 %3729, 2
  %3731 = or i32 %3707, 128
  %3732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.ResRet.f32 %3732, 1
  %3735 = extractvalue %dx.types.ResRet.f32 %3732, 2
  %3736 = extractvalue %dx.types.ResRet.f32 %3732, 3
  %3737 = or i32 %3707, 144
  %3738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.ResRet.f32 %3738, 2
  %3742 = extractvalue %dx.types.ResRet.f32 %3738, 3
  %3743 = or i32 %3707, 160
  %3744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = extractvalue %dx.types.ResRet.f32 %3744, 1
  %3747 = extractvalue %dx.types.ResRet.f32 %3744, 2
  %3748 = extractvalue %dx.types.ResRet.f32 %3744, 3
  %3749 = or i32 %3707, 192
  %3750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.i32 %3750, 0
  %3752 = or i32 %3707, 208
  %3753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3752, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.f32 %3753, 0
  %3755 = or i32 %3707, 248
  %3756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.ResRet.f32 %3756, 1
  %3759 = add nuw nsw i32 %3684, 1
  %3760 = bitcast float %3713 to i32
  %3761 = and i32 %3760, 512
  %3762 = icmp eq i32 %3761, 0
  %3763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.ResRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.ResRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.ResRet.f32 %3763, 3
  %3768 = call float @dx.op.dot4.f32(i32 56, float %3764, float %3765, float %3766, float %3767, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3769 = or i32 %3707, 16
  %3770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3769, i32 undef)  ; BufferLoad(srv,index,wot)
  %3771 = extractvalue %dx.types.ResRet.f32 %3770, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3770, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3770, 2
  %3774 = extractvalue %dx.types.ResRet.f32 %3770, 3
  %3775 = call float @dx.op.dot4.f32(i32 56, float %3771, float %3772, float %3773, float %3774, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3776 = or i32 %3707, 32
  %3777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.f32 %3777, 0
  %3779 = extractvalue %dx.types.ResRet.f32 %3777, 1
  %3780 = extractvalue %dx.types.ResRet.f32 %3777, 2
  %3781 = extractvalue %dx.types.ResRet.f32 %3777, 3
  %3782 = call float @dx.op.dot4.f32(i32 56, float %3778, float %3779, float %3780, float %3781, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3783 = call float @dx.op.unary.f32(i32 27, float %3768)  ; Round_ni(value)
  %3784 = call float @dx.op.unary.f32(i32 6, float %3783)  ; FAbs(value)
  %3785 = call float @dx.op.unary.f32(i32 27, float %3775)  ; Round_ni(value)
  %3786 = call float @dx.op.unary.f32(i32 6, float %3785)  ; FAbs(value)
  %3787 = call float @dx.op.unary.f32(i32 6, float %3782)  ; FAbs(value)
  %3788 = call float @dx.op.unary.f32(i32 27, float %3787)  ; Round_ni(value)
  %3789 = fadd fast float %3786, %3784
  %3790 = fadd fast float %3789, %3788
  %3791 = fcmp fast oeq float %3790, 0.000000e+00
  %3792 = call float @dx.op.dot4.f32(i32 56, float %3764, float %3765, float %3766, float %3767, float %3636, float %3637, float %3638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3793 = call float @dx.op.dot4.f32(i32 56, float %3771, float %3772, float %3773, float %3774, float %3636, float %3637, float %3638, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3794 = call float @dx.op.dot4.f32(i32 56, float %3764, float %3765, float %3766, float %3767, float %3639, float %3640, float %3641, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3795 = call float @dx.op.dot4.f32(i32 56, float %3771, float %3772, float %3773, float %3774, float %3639, float %3640, float %3641, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3796 = fsub fast float %3792, %3768
  %3797 = fsub fast float %3794, %3768
  %3798 = fsub fast float %3793, %3775
  %3799 = fsub fast float %3795, %3775
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3710, float %3711, float %3712, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3802 = extractvalue %dx.types.CBufRet.f32 %3801, 2
  %3803 = fadd fast float %3802, %3800
  %3804 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  %3805 = extractvalue %dx.types.CBufRet.f32 %3801, 0
  %3806 = fcmp fast ogt float %3804, %3805
  %3807 = and i1 %3791, %3806
  %3808 = and i1 %3762, %3807
  br i1 %3808, label %3829, label %3809

; <label>:3809                                    ; preds = %4092, %3910, %3829, %3683
  %3810 = phi float [ %3685, %3829 ], [ %3913, %3910 ], [ %3913, %4092 ], [ %3685, %3683 ]
  %3811 = phi float [ %3686, %3829 ], [ %3686, %3910 ], [ %4067, %4092 ], [ %3686, %3683 ]
  %3812 = phi float [ %3687, %3829 ], [ %3687, %3910 ], [ %4065, %4092 ], [ %3687, %3683 ]
  %3813 = phi float [ %3688, %3829 ], [ %3688, %3910 ], [ %4037, %4092 ], [ %3688, %3683 ]
  %3814 = phi float [ %3689, %3829 ], [ %3689, %3910 ], [ %4035, %4092 ], [ %3689, %3683 ]
  %3815 = phi float [ %3690, %3829 ], [ %3690, %3910 ], [ %4102, %4092 ], [ %3690, %3683 ]
  %3816 = phi float [ %3691, %3829 ], [ %3691, %3910 ], [ %4103, %4092 ], [ %3691, %3683 ]
  %3817 = phi float [ %3692, %3829 ], [ %3692, %3910 ], [ %4104, %4092 ], [ %3692, %3683 ]
  %3818 = phi float [ %3693, %3829 ], [ %3693, %3910 ], [ %4016, %4092 ], [ %3693, %3683 ]
  %3819 = phi float [ %3694, %3829 ], [ %3694, %3910 ], [ %4017, %4092 ], [ %3694, %3683 ]
  %3820 = phi float [ %3695, %3829 ], [ %3695, %3910 ], [ %4018, %4092 ], [ %3695, %3683 ]
  %3821 = phi float [ %3696, %3829 ], [ %3696, %3910 ], [ %4045, %4092 ], [ %3696, %3683 ]
  %3822 = phi float [ %3697, %3829 ], [ %3697, %3910 ], [ %4042, %4092 ], [ %3697, %3683 ]
  %3823 = phi float [ %3698, %3829 ], [ %3698, %3910 ], [ %4039, %4092 ], [ %3698, %3683 ]
  %3824 = phi float [ %3699, %3829 ], [ %3699, %3910 ], [ %4033, %4092 ], [ %3699, %3683 ]
  %3825 = phi float [ %3700, %3829 ], [ %3700, %3910 ], [ %4028, %4092 ], [ %3700, %3683 ]
  %3826 = phi float [ %3701, %3829 ], [ %3701, %3910 ], [ %4029, %4092 ], [ %3701, %3683 ]
  %3827 = phi float [ %3702, %3829 ], [ %3702, %3910 ], [ %4030, %4092 ], [ %3702, %3683 ]
  %3828 = icmp eq i32 %3759, %3682
  br i1 %3828, label %4105, label %3683

; <label>:3829                                    ; preds = %3683
  %3830 = extractvalue %dx.types.ResRet.f32 %3729, 3
  %3831 = extractvalue %dx.types.ResRet.f32 %3729, 1
  %3832 = extractvalue %dx.types.ResRet.f32 %3729, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3719, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3835 = extractvalue %dx.types.ResRet.i32 %3715, 3
  %3836 = extractvalue %dx.types.ResRet.i32 %3715, 2
  %3837 = add i32 %3835, 0
  %3838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3837, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3839 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3840 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3838, %dx.types.Handle %3839, float %3768, float %3775, float undef, float undef, i32 0, i32 0, i32 undef, float %3796, float %3798, float undef, float %3797, float %3799, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = fmul fast float %3841, %3834
  %3843 = fadd fast float %3842, %3833
  %3844 = call float @dx.op.unary.f32(i32 7, float %3843)  ; Saturate(value)
  %3845 = fmul fast float %3768, %3724
  %3846 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3775, float %3845)  ; FMad(a,b,c)
  %3847 = fadd fast float %3846, %3832
  %3848 = fmul fast float %3768, %3726
  %3849 = call float @dx.op.tertiary.f32(i32 46, float %3727, float %3775, float %3848)  ; FMad(a,b,c)
  %3850 = fadd fast float %3849, %3831
  %3851 = fmul fast float %3796, %3724
  %3852 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3798, float %3851)  ; FMad(a,b,c)
  %3853 = fmul fast float %3796, %3726
  %3854 = call float @dx.op.tertiary.f32(i32 46, float %3727, float %3798, float %3853)  ; FMad(a,b,c)
  %3855 = fmul fast float %3797, %3724
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3725, float %3799, float %3855)  ; FMad(a,b,c)
  %3857 = fmul fast float %3797, %3726
  %3858 = call float @dx.op.tertiary.f32(i32 46, float %3727, float %3799, float %3857)  ; FMad(a,b,c)
  %3859 = add i32 %3836, 0
  %3860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3859, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3861 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3860, %dx.types.Handle %3839, float %3847, float %3850, float undef, float undef, i32 0, i32 0, i32 undef, float %3852, float %3854, float undef, float %3856, float %3858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = and i32 %3760, 1024
  %3864 = icmp ne i32 %3863, 0
  %3865 = fcmp fast ogt float %3862, 0x3FE0101020000000
  %3866 = uitofp i1 %3865 to float
  %3867 = select i1 %3864, float %3866, float %3862
  %3868 = and i32 %3760, 8192
  %3869 = icmp ne i32 %3868, 0
  %3870 = select i1 %3869, float %3830, float 1.000000e+00
  %3871 = fmul fast float %3768, 2.000000e+00
  %3872 = fadd fast float %3871, -1.000000e+00
  %3873 = call float @dx.op.unary.f32(i32 6, float %3872)  ; FAbs(value)
  %3874 = fmul fast float %3873, %3757
  %3875 = fsub fast float %3874, %3757
  %3876 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3877 = fmul fast float %3775, 2.000000e+00
  %3878 = fadd fast float %3877, -1.000000e+00
  %3879 = call float @dx.op.unary.f32(i32 6, float %3878)  ; FAbs(value)
  %3880 = fmul fast float %3879, %3758
  %3881 = fsub fast float %3880, %3758
  %3882 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3883 = fmul fast float %3787, %3720
  %3884 = fsub fast float %3883, %3720
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = fmul fast float %3844, %3870
  %3887 = fmul fast float %3886, %3841
  %3888 = fmul fast float %3887, %3876
  %3889 = fmul fast float %3888, %3867
  %3890 = fmul fast float %3889, %3882
  %3891 = fmul fast float %3890, %3885
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3894 = extractvalue %dx.types.CBufRet.f32 %3892, 0
  %3895 = fsub fast float %3804, %3894
  %3896 = fmul fast float %3895, %3893
  %3897 = call float @dx.op.unary.f32(i32 7, float %3896)  ; Saturate(value)
  %3898 = fmul fast float %3891, %3721
  %3899 = fadd fast float %3891, %3721
  %3900 = fmul fast float %3899, %3730
  %3901 = fsub fast float %3900, %3730
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = and i32 %3760, 128
  %3904 = icmp ne i32 %3903, 0
  %3905 = select i1 %3904, float %3902, float %3898
  %3906 = fmul fast float %3905, %3897
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 0
  %3909 = fcmp fast ugt float %3906, %3908
  br i1 %3909, label %3910, label %3809

; <label>:3910                                    ; preds = %3829
  %3911 = select i1 %3869, float %3906, float 0.000000e+00
  %3912 = fadd fast float %3911, %3685
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  br i1 %3869, label %3809, label %3914

; <label>:3914                                    ; preds = %3910
  %3915 = and i32 %3760, 4
  %3916 = and i32 %3760, 8
  %3917 = add i32 %3716, 0
  %3918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3917, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3920 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3918, %dx.types.Handle %3919, float %3847, float %3850, float undef, float undef, i32 0, i32 0, i32 undef, float %3852, float %3854, float undef, float %3856, float %3858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = extractvalue %dx.types.ResRet.f32 %3920, 3
  %3925 = bitcast float %3742 to i32
  %3926 = and i32 %3925, 255
  %3927 = uitofp i32 %3926 to float
  %3928 = lshr i32 %3925, 8
  %3929 = and i32 %3928, 255
  %3930 = uitofp i32 %3929 to float
  %3931 = fmul fast float %3924, %3927
  %3932 = fadd fast float %3931, %3930
  %3933 = fmul fast float %3932, 0x3F70101000000000
  %3934 = add i32 %3717, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %3919, float %3847, float %3850, float undef, float undef, i32 0, i32 0, i32 undef, float %3852, float %3854, float undef, float %3856, float %3858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = extractvalue %dx.types.ResRet.f32 %3936, 3
  %3941 = bitcast float %3736 to i32
  %3942 = and i32 %3941, 255
  %3943 = uitofp i32 %3942 to float
  %3944 = lshr i32 %3941, 8
  %3945 = and i32 %3944, 255
  %3946 = uitofp i32 %3945 to float
  %3947 = lshr i32 %3941, 16
  %3948 = and i32 %3947, 255
  %3949 = uitofp i32 %3948 to float
  %3950 = fmul fast float %3949, 0x3F70101000000000
  %3951 = fmul fast float %3937, %3943
  %3952 = fadd fast float %3951, %3946
  %3953 = fmul fast float %3952, 0x3F70101000000000
  %3954 = fadd fast float %3938, -5.000000e-01
  %3955 = fadd fast float %3940, -5.000000e-01
  %3956 = fmul fast float %3954, %3950
  %3957 = fmul fast float %3955, %3950
  %3958 = fadd fast float %3956, 5.000000e-01
  %3959 = fadd fast float %3957, 5.000000e-01
  %3960 = fmul fast float %3921, %3745
  %3961 = fmul fast float %3922, %3746
  %3962 = fmul fast float %3923, %3747
  %3963 = fmul fast float %3958, 2.000000e+00
  %3964 = fadd fast float %3963, -1.000000e+00
  %3965 = fmul fast float %3959, 2.000000e+00
  %3966 = fadd fast float %3965, -1.000000e+00
  %3967 = fadd fast float %3964, %3966
  %3968 = fmul fast float %3967, 5.000000e-01
  %3969 = fsub fast float %3964, %3966
  %3970 = fmul fast float %3969, 5.000000e-01
  %3971 = call float @dx.op.unary.f32(i32 6, float %3968)  ; FAbs(value)
  %3972 = fsub fast float 1.000000e+00, %3971
  %3973 = call float @dx.op.unary.f32(i32 6, float %3970)  ; FAbs(value)
  %3974 = fsub fast float %3972, %3973
  %3975 = call float @dx.op.dot3.f32(i32 55, float %3968, float %3970, float %3974, float %3968, float %3970, float %3974)  ; Dot3(ax,ay,az,bx,by,bz)
  %3976 = call float @dx.op.unary.f32(i32 25, float %3975)  ; Rsqrt(value)
  %3977 = fmul fast float %3968, %3976
  %3978 = fmul fast float %3970, %3976
  %3979 = fmul fast float %3976, %3974
  %3980 = fmul fast float %3979, %3710
  %3981 = fmul fast float %3979, %3711
  %3982 = fmul fast float %3979, %3712
  %3983 = fmul fast float %3977, %3733
  %3984 = fmul fast float %3977, %3734
  %3985 = fmul fast float %3977, %3735
  %3986 = fadd fast float %3983, %3980
  %3987 = fadd fast float %3984, %3981
  %3988 = fadd fast float %3985, %3982
  %3989 = fmul fast float %3978, %3739
  %3990 = fmul fast float %3978, %3740
  %3991 = fmul fast float %3978, %3741
  %3992 = fadd fast float %3986, %3989
  %3993 = fadd fast float %3987, %3990
  %3994 = fadd fast float %3988, %3991
  %3995 = call float @dx.op.dot3.f32(i32 55, float %3992, float %3993, float %3994, float %3992, float %3993, float %3994)  ; Dot3(ax,ay,az,bx,by,bz)
  %3996 = call float @dx.op.unary.f32(i32 25, float %3995)  ; Rsqrt(value)
  %3997 = fmul fast float %3992, %3996
  %3998 = fmul fast float %3993, %3996
  %3999 = fmul fast float %3994, %3996
  %4000 = icmp ne i32 %3916, 0
  %4001 = select i1 %4000, float 1.000000e+00, float 0.000000e+00
  %4002 = fmul fast float %3906, %4001
  %4003 = and i32 %3760, 1
  %4004 = icmp eq i32 %4003, 0
  br i1 %4004, label %4005, label %4009

; <label>:4005                                    ; preds = %3914
  %4006 = fsub fast float %3997, %3693
  %4007 = fsub fast float %3998, %3694
  %4008 = fsub fast float %3999, %3695
  br label %4009

; <label>:4009                                    ; preds = %4005, %3914
  %4010 = phi float [ %4006, %4005 ], [ %3997, %3914 ]
  %4011 = phi float [ %4007, %4005 ], [ %3998, %3914 ]
  %4012 = phi float [ %4008, %4005 ], [ %3999, %3914 ]
  %4013 = fmul float %4012, %4002
  %4014 = fmul float %4011, %4002
  %4015 = fmul float %4010, %4002
  %4016 = fadd fast float %4015, %3693
  %4017 = fadd fast float %4014, %3694
  %4018 = fadd fast float %4013, %3695
  %4019 = icmp ne i32 %3915, 0
  %4020 = select i1 %4019, float 1.000000e+00, float 0.000000e+00
  %4021 = fmul fast float %3906, %4020
  %4022 = fsub fast float %3960, %3700
  %4023 = fsub fast float %3961, %3701
  %4024 = fsub fast float %3962, %3702
  %4025 = fmul fast float %4022, %4021
  %4026 = fmul fast float %4023, %4021
  %4027 = fmul fast float %4024, %4021
  %4028 = fadd fast float %4025, %3700
  %4029 = fadd fast float %4026, %3701
  %4030 = fadd fast float %4027, %3702
  %4031 = fsub fast float %3933, %3699
  %4032 = fmul fast float %4031, %4021
  %4033 = fadd fast float %4032, %3699
  %4034 = fmul fast float %4021, %3689
  %4035 = fsub fast float %3689, %4034
  %4036 = fmul fast float %4021, %3688
  %4037 = fsub fast float %3688, %4036
  %4038 = fadd fast float %3906, %3698
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = fsub fast float %3953, %3697
  %4041 = fmul fast float %4040, %4002
  %4042 = fadd fast float %4041, %3697
  %4043 = fsub fast float %3939, %3696
  %4044 = fmul fast float %4043, %4002
  %4045 = fadd fast float %4044, %3696
  %4046 = call float @dx.op.dot3.f32(i32 55, float %3960, float %3961, float %3962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.CBufRet.f32 %4047, 1
  %4050 = fmul fast float %4049, %4046
  %4051 = fadd fast float %4050, %4048
  %4052 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4053 = bitcast float %3748 to i32
  %4054 = and i32 %4053, 65535
  %4055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4054)  ; LegacyF16ToF32(value)
  %4056 = lshr i32 %4053, 16
  %4057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4056)  ; LegacyF16ToF32(value)
  %4058 = fcmp fast oge float %4055, 0.000000e+00
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 0
  %4061 = select i1 %4058, float %4055, float %4060
  %4062 = fadd fast float %4061, %4057
  %4063 = fsub fast float %4052, %3687
  %4064 = fmul fast float %4063, %3906
  %4065 = fadd fast float %4064, %3687
  %4066 = fmul fast float %4062, %3906
  %4067 = call float @dx.op.binary.f32(i32 35, float %3686, float %4066)  ; FMax(a,b)
  %4068 = and i32 %3760, 16
  %4069 = icmp eq i32 %4068, 0
  br i1 %4069, label %4092, label %4070

; <label>:4070                                    ; preds = %4009
  %4071 = bitcast float %3754 to i32
  %4072 = add i32 %3751, 0
  %4073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4072, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4074 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4073, %dx.types.Handle %3919, float %3847, float %3850, float undef, float undef, i32 0, i32 0, i32 undef, float %3852, float %3854, float undef, float %3856, float %3858, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.ResRet.f32 %4074, 2
  %4078 = and i32 %4071, 65535
  %4079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4078)  ; LegacyF16ToF32(value)
  %4080 = fmul fast float %4075, %3745
  %4081 = fmul fast float %4076, %3746
  %4082 = fmul fast float %4077, %3747
  %4083 = and i32 %3760, 16384
  %4084 = icmp ne i32 %4083, 0
  %4085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4085, 0
  %4087 = select i1 %4084, float %4086, float 1.000000e+00
  %4088 = fmul fast float %4087, %4079
  %4089 = fmul fast float %4080, %4088
  %4090 = fmul fast float %4081, %4088
  %4091 = fmul fast float %4082, %4088
  br label %4092

; <label>:4092                                    ; preds = %4070, %4009
  %4093 = phi float [ %4089, %4070 ], [ 0.000000e+00, %4009 ]
  %4094 = phi float [ %4090, %4070 ], [ 0.000000e+00, %4009 ]
  %4095 = phi float [ %4091, %4070 ], [ 0.000000e+00, %4009 ]
  %4096 = fsub fast float %4093, %3690
  %4097 = fsub fast float %4094, %3691
  %4098 = fsub fast float %4095, %3692
  %4099 = fmul fast float %4096, %3906
  %4100 = fmul fast float %4097, %3906
  %4101 = fmul fast float %4098, %3906
  %4102 = fadd fast float %4099, %3690
  %4103 = fadd fast float %4100, %3691
  %4104 = fadd fast float %4101, %3692
  br label %3809

; <label>:4105                                    ; preds = %3809
  br label %4106

; <label>:4106                                    ; preds = %4105, %3629
  %4107 = phi float [ 0.000000e+00, %3629 ], [ %3810, %4105 ]
  %4108 = phi float [ %3598, %3629 ], [ %3811, %4105 ]
  %4109 = phi float [ %3596, %3629 ], [ %3812, %4105 ]
  %4110 = phi float [ %3595, %3629 ], [ %3813, %4105 ]
  %4111 = phi float [ 0.000000e+00, %3629 ], [ %3814, %4105 ]
  %4112 = phi float [ %3589, %3629 ], [ %3815, %4105 ]
  %4113 = phi float [ %3590, %3629 ], [ %3816, %4105 ]
  %4114 = phi float [ %3591, %3629 ], [ %3817, %4105 ]
  %4115 = phi float [ %3624, %3629 ], [ %3818, %4105 ]
  %4116 = phi float [ %3625, %3629 ], [ %3819, %4105 ]
  %4117 = phi float [ %3626, %3629 ], [ %3820, %4105 ]
  %4118 = phi float [ %3594, %3629 ], [ %3821, %4105 ]
  %4119 = phi float [ %3593, %3629 ], [ %3822, %4105 ]
  %4120 = phi float [ 0.000000e+00, %3629 ], [ %3823, %4105 ]
  %4121 = phi float [ %3592, %3629 ], [ %3824, %4105 ]
  %4122 = phi float [ %3586, %3629 ], [ %3825, %4105 ]
  %4123 = phi float [ %3587, %3629 ], [ %3826, %4105 ]
  %4124 = phi float [ %3588, %3629 ], [ %3827, %4105 ]
  %4125 = call float @dx.op.dot3.f32(i32 55, float %4115, float %4116, float %4117, float %4115, float %4116, float %4117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4126 = call float @dx.op.unary.f32(i32 25, float %4125)  ; Rsqrt(value)
  %4127 = fmul fast float %4126, %4115
  %4128 = fmul fast float %4126, %4116
  %4129 = fmul fast float %4126, %4117
  %4130 = fadd fast float %4120, %910
  %4131 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4132 = call float @dx.op.dot3.f32(i32 55, float %4127, float %4128, float %4129, float %4127, float %4128, float %4129)  ; Dot3(ax,ay,az,bx,by,bz)
  %4133 = call float @dx.op.unary.f32(i32 25, float %4132)  ; Rsqrt(value)
  %4134 = fmul fast float %4133, %4127
  %4135 = fmul fast float %4133, %4128
  %4136 = fmul fast float %4133, %4129
  br label %4137

; <label>:4137                                    ; preds = %4106, %3583
  %4138 = phi float [ %4134, %4106 ], [ %3624, %3583 ]
  %4139 = phi float [ %4135, %4106 ], [ %3625, %3583 ]
  %4140 = phi float [ %4136, %4106 ], [ %3626, %3583 ]
  %4141 = phi float [ %4122, %4106 ], [ %3586, %3583 ]
  %4142 = phi float [ %4123, %4106 ], [ %3587, %3583 ]
  %4143 = phi float [ %4124, %4106 ], [ %3588, %3583 ]
  %4144 = phi float [ %4112, %4106 ], [ %3589, %3583 ]
  %4145 = phi float [ %4113, %4106 ], [ %3590, %3583 ]
  %4146 = phi float [ %4114, %4106 ], [ %3591, %3583 ]
  %4147 = phi float [ %4121, %4106 ], [ %3592, %3583 ]
  %4148 = phi float [ %4131, %4106 ], [ %910, %3583 ]
  %4149 = phi float [ %4119, %4106 ], [ %3593, %3583 ]
  %4150 = phi float [ %4118, %4106 ], [ %3594, %3583 ]
  %4151 = phi float [ %4111, %4106 ], [ 0.000000e+00, %3583 ]
  %4152 = phi float [ %4110, %4106 ], [ %3595, %3583 ]
  %4153 = phi float [ %4107, %4106 ], [ 0.000000e+00, %3583 ]
  %4154 = phi float [ %4108, %4106 ], [ %3598, %3583 ]
  %4155 = phi float [ %4109, %4106 ], [ %3596, %3583 ]
  %4156 = fadd fast float %4147, 0xBFB99999A0000000
  %4157 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4158 = fmul fast float %4157, 0x3FF1C71C80000000
  %4159 = call float @dx.op.binary.f32(i32 36, float %4147, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4160 = fsub fast float 1.000000e+00, %4158
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4161, %4141
  %4163 = fmul fast float %4161, %4142
  %4164 = fmul fast float %4161, %4143
  %4165 = call float @dx.op.unary.f32(i32 7, float %4162)  ; Saturate(value)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4167 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4168 = fmul fast float %4158, %4141
  %4169 = fmul fast float %4158, %4142
  %4170 = fmul fast float %4158, %4143
  %4171 = fadd fast float %4168, %4159
  %4172 = fadd fast float %4169, %4159
  %4173 = fadd fast float %4170, %4159
  %4174 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4175 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4176 = call float @dx.op.unary.f32(i32 7, float %4173)  ; Saturate(value)
  %4177 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.i32 %4178, 3
  %4180 = and i32 %4179, 8
  %4181 = icmp ne i32 %4180, 0
  %4182 = call float @dx.op.binary.f32(i32 35, float %4165, float %4141)  ; FMax(a,b)
  %4183 = call float @dx.op.binary.f32(i32 35, float %4166, float %4141)  ; FMax(a,b)
  %4184 = call float @dx.op.binary.f32(i32 35, float %4167, float %4141)  ; FMax(a,b)
  %4185 = call float @dx.op.dot3.f32(i32 55, float %4165, float %4166, float %4167, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4186 = select i1 %176, float %4141, float %4165
  %4187 = select i1 %176, float %4185, float %4166
  %4188 = select i1 %176, float 1.000000e+00, float %4167
  %4189 = select i1 %4181, float %4182, float %4186
  %4190 = select i1 %4181, float %4183, float %4187
  %4191 = select i1 %4181, float %4184, float %4188
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4192, 2
  %4196 = fadd fast float %4193, %134
  %4197 = fadd fast float %4194, %135
  %4198 = fadd fast float %4195, %136
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.CBufRet.f32 %4199, 1
  %4202 = fsub fast float %4196, %4200
  %4203 = fsub fast float %4197, %4201
  %4204 = fmul fast float %4202, %4202
  %4205 = fmul fast float %4203, %4203
  %4206 = fadd fast float %4204, %4205
  %4207 = call float @dx.op.unary.f32(i32 24, float %4206)  ; Sqrt(value)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4209 = fcmp fast olt float %4207, %4208
  br i1 %4209, label %4210, label %4277

; <label>:4210                                    ; preds = %4137
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 0
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 0
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.CBufRet.f32 %4211, 1
  %4218 = extractvalue %dx.types.CBufRet.f32 %4213, 1
  %4219 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4220 = extractvalue %dx.types.CBufRet.f32 %4211, 3
  %4221 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4222 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4223 = fadd fast float %4220, %4196
  %4224 = fadd fast float %4221, %4197
  %4225 = fadd fast float %4222, %4198
  %4226 = fmul fast float %4223, %4212
  %4227 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4214, float %4226)  ; FMad(a,b,c)
  %4228 = call float @dx.op.tertiary.f32(i32 46, float %4225, float %4216, float %4227)  ; FMad(a,b,c)
  %4229 = fmul fast float %4223, %4217
  %4230 = call float @dx.op.tertiary.f32(i32 46, float %4224, float %4218, float %4229)  ; FMad(a,b,c)
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4225, float %4219, float %4230)  ; FMad(a,b,c)
  %4232 = fsub fast float %4228, %4220
  %4233 = fsub fast float %4231, %4221
  %4234 = fsub fast float %4232, %4200
  %4235 = fadd fast float %4234, %4208
  %4236 = fsub fast float %4233, %4201
  %4237 = fadd fast float %4236, %4208
  %4238 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4239 = fmul fast float %4235, %4238
  %4240 = fmul fast float %4237, %4238
  %4241 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4242 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4243 = fsub fast float 1.000000e+00, %4241
  %4244 = fsub fast float 1.000000e+00, %4242
  %4245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4243, float %4244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = fcmp fast ugt float %4246, 0.000000e+00
  br i1 %4247, label %4248, label %4551

; <label>:4248                                    ; preds = %4210
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 2
  %4251 = fmul fast float %4250, %4246
  %4252 = extractvalue %dx.types.CBufRet.f32 %4249, 3
  %4253 = fadd fast float %4252, %4251
  %4254 = extractvalue %dx.types.CBufRet.f32 %4215, 2
  %4255 = fadd fast float %4253, %4222
  %4256 = fmul fast float %4228, %4216
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4231, float %4219, float %4256)  ; FMad(a,b,c)
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4255, float %4254, float %4257)  ; FMad(a,b,c)
  %4259 = fsub fast float %4258, %4222
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 2
  %4262 = fsub fast float %4259, %4261
  %4263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4243, float %4244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = extractvalue %dx.types.ResRet.f32 %4263, 1
  %4266 = extractvalue %dx.types.ResRet.f32 %4263, 2
  %4267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4243, float %4244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.ResRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.ResRet.f32 %4267, 2
  %4271 = fadd fast float %4268, %4264
  %4272 = fmul fast float %4271, 0x3F847AE140000000
  %4273 = fadd fast float %4269, %4265
  %4274 = fmul fast float %4273, 0x3F847AE140000000
  %4275 = fadd fast float %4270, %4266
  %4276 = fmul fast float %4275, 0x3F847AE140000000
  br label %4551

; <label>:4277                                    ; preds = %4137
  %4278 = and i32 %152, 1
  %4279 = icmp eq i32 %4278, 0
  br i1 %4279, label %4551, label %4280

; <label>:4280                                    ; preds = %4277
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 0
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.CBufRet.f32 %4281, 1
  %4288 = extractvalue %dx.types.CBufRet.f32 %4283, 1
  %4289 = extractvalue %dx.types.CBufRet.f32 %4285, 1
  %4290 = extractvalue %dx.types.CBufRet.f32 %4281, 3
  %4291 = extractvalue %dx.types.CBufRet.f32 %4283, 3
  %4292 = extractvalue %dx.types.CBufRet.f32 %4285, 3
  %4293 = fadd fast float %4290, %4196
  %4294 = fadd fast float %4291, %4197
  %4295 = fadd fast float %4292, %4198
  %4296 = fmul fast float %4293, %4282
  %4297 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4284, float %4296)  ; FMad(a,b,c)
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4286, float %4297)  ; FMad(a,b,c)
  %4299 = fmul fast float %4293, %4287
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4294, float %4288, float %4299)  ; FMad(a,b,c)
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4289, float %4300)  ; FMad(a,b,c)
  %4302 = fsub fast float %4298, %4290
  %4303 = fsub fast float %4301, %4291
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4306 = extractvalue %dx.types.CBufRet.f32 %4304, 1
  %4307 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4308 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.i32 %4311, 0
  %4313 = extractvalue %dx.types.CBufRet.i32 %4311, 1
  %4314 = udiv i32 %4313, %4312
  %4315 = fsub fast float %4302, %4305
  %4316 = fsub fast float %4303, %4306
  %4317 = call float @dx.op.binary.f32(i32 35, float %4315, float 0.000000e+00)  ; FMax(a,b)
  %4318 = call float @dx.op.binary.f32(i32 35, float %4316, float 0.000000e+00)  ; FMax(a,b)
  %4319 = call float @dx.op.binary.f32(i32 36, float %4317, float %4307)  ; FMin(a,b)
  %4320 = call float @dx.op.binary.f32(i32 36, float %4318, float %4308)  ; FMin(a,b)
  %4321 = add i32 %4312, -1
  %4322 = add i32 %4314, -1
  %4323 = fmul fast float %4319, %4310
  %4324 = fmul fast float %4320, %4310
  %4325 = fptoui float %4323 to i32
  %4326 = fptoui float %4324 to i32
  %4327 = call i32 @dx.op.binary.i32(i32 40, i32 %4325, i32 %4321)  ; UMin(a,b)
  %4328 = call i32 @dx.op.binary.i32(i32 40, i32 %4326, i32 %4322)  ; UMin(a,b)
  %4329 = mul i32 %4328, %4312
  %4330 = add i32 %4329, %4327
  %4331 = shl i32 %4330, 2
  %4332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4331, i32 undef)  ; BufferLoad(srv,index,wot)
  %4333 = extractvalue %dx.types.ResRet.i32 %4332, 0
  %4334 = icmp eq i32 %4333, -1
  br i1 %4334, label %4551, label %4335

; <label>:4335                                    ; preds = %4280
  %4336 = mul i32 %4333, 148
  %4337 = add i32 %4336, 4
  %4338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = add i32 %4336, 8
  %4341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = add i32 %4336, 36
  %4344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = add i32 %4336, 60
  %4347 = add i32 %4336, 92
  %4348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.i32 %4348, 0
  %4350 = add i32 %4336, 116
  %4351 = fsub fast float %4302, %4339
  %4352 = fsub fast float %4303, %4342
  %4353 = fmul fast float %4310, %4351
  %4354 = fmul fast float %4310, %4352
  %4355 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4354)  ; Saturate(value)
  %4357 = fsub fast float 1.000000e+00, %4356
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 2
  %4360 = call float @dx.op.unary.f32(i32 83, float %4355)  ; DerivCoarseX(value)
  %4361 = call float @dx.op.unary.f32(i32 83, float %4357)  ; DerivCoarseX(value)
  %4362 = call float @dx.op.unary.f32(i32 84, float %4355)  ; DerivCoarseY(value)
  %4363 = call float @dx.op.unary.f32(i32 84, float %4357)  ; DerivCoarseY(value)
  %4364 = fmul fast float %4360, %4359
  %4365 = fmul fast float %4361, %4359
  %4366 = fmul fast float %4362, %4359
  %4367 = fmul fast float %4363, %4359
  %4368 = call float @dx.op.dot2.f32(i32 54, float %4366, float %4367, float %4366, float %4367)  ; Dot2(ax,ay,bx,by)
  %4369 = call float @dx.op.dot2.f32(i32 54, float %4364, float %4365, float %4364, float %4365)  ; Dot2(ax,ay,bx,by)
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float %4368)  ; FMax(a,b)
  %4371 = call float @dx.op.unary.f32(i32 23, float %4370)  ; Log(value)
  %4372 = fmul fast float %4371, 5.000000e-01
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 1
  %4375 = fadd fast float %4374, %4372
  %4376 = call float @dx.op.binary.f32(i32 35, float %4375, float 0.000000e+00)  ; FMax(a,b)
  %4377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4378 = extractvalue %dx.types.CBufRet.f32 %4377, 3
  %4379 = fadd fast float %4378, %4376
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 3
  %4382 = fadd fast float %4379, %4381
  %4383 = add i32 %4349, 0
  %4384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4383, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4385 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4384, i32 0)  ; GetDimensions(handle,mipLevel)
  %4386 = extractvalue %dx.types.Dimensions %4385, 0
  %4387 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4386)  ; FirstbitLo(value)
  %4388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.i32 %4388, 1
  %4390 = sub nsw i32 %4389, %4387
  %4391 = sitofp i32 %4390 to float
  %4392 = fsub fast float %4382, %4391
  %4393 = call float @dx.op.binary.f32(i32 35, float %4392, float 0.000000e+00)  ; FMax(a,b)
  %4394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4384, %dx.types.Handle %27, float %4355, float %4357, float %4345, float undef, i32 0, i32 0, i32 undef, float %4393)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = fcmp ule float %4395, 0x3FE0101020000000
  %4397 = extractvalue %dx.types.CBufRet.i32 %4388, 0
  %4398 = and i32 %4397, 128
  %4399 = icmp ne i32 %4398, 0
  %4400 = and i1 %4396, %4399
  br i1 %4400, label %4551, label %4401

; <label>:4401                                    ; preds = %4335
  %4402 = add i32 %4336, 20
  %4403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = add i32 %4336, 24
  %4406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = add i32 %4336, 40
  %4409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4408, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = add i32 %4336, 96
  %4412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4411, i32 undef)  ; BufferLoad(srv,index,wot)
  %4413 = extractvalue %dx.types.ResRet.i32 %4412, 0
  %4414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.f32 %4414, 2
  %4416 = fmul fast float %4415, %4355
  %4417 = fmul fast float %4415, %4357
  %4418 = extractvalue %dx.types.CBufRet.f32 %4414, 3
  %4419 = fadd fast float %4416, %4418
  %4420 = fadd fast float %4417, %4418
  %4421 = add i32 %4413, 0
  %4422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4421, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4423 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4422, i32 0)  ; GetDimensions(handle,mipLevel)
  %4424 = extractvalue %dx.types.Dimensions %4423, 0
  %4425 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4424)  ; FirstbitLo(value)
  %4426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.i32 %4426, 1
  %4428 = sub nsw i32 %4427, %4425
  %4429 = sitofp i32 %4428 to float
  %4430 = fsub fast float %4379, %4429
  %4431 = call float @dx.op.binary.f32(i32 35, float %4430, float 0.000000e+00)  ; FMax(a,b)
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4422, %dx.types.Handle %27, float %4419, float %4420, float %4410, float undef, i32 0, i32 0, i32 undef, float %4431)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = fmul fast float %4433, %4404
  %4435 = fadd fast float %4434, %4407
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 0
  %4438 = extractvalue %dx.types.CBufRet.f32 %4436, 1
  %4439 = extractvalue %dx.types.CBufRet.f32 %4436, 2
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4444 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4445 = fadd fast float %4441, %4302
  %4446 = fadd fast float %4443, %4303
  %4447 = fadd fast float %4435, %4444
  %4448 = fmul fast float %4445, %4437
  %4449 = call float @dx.op.tertiary.f32(i32 46, float %4446, float %4438, float %4448)  ; FMad(a,b,c)
  %4450 = call float @dx.op.tertiary.f32(i32 46, float %4447, float %4439, float %4449)  ; FMad(a,b,c)
  %4451 = fsub fast float %4450, %4444
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 2
  %4454 = fsub fast float %4451, %4453
  %4455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.i32 %4455, 0
  %4457 = call i32 @dx.op.binary.i32(i32 40, i32 %4333, i32 %4456)  ; UMin(a,b)
  %4458 = mul i32 %4457, 36
  %4459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4458, i32 undef)  ; BufferLoad(srv,index,wot)
  %4460 = extractvalue %dx.types.ResRet.i32 %4459, 0
  %4461 = add i32 %4458, 4
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4464 = fmul fast float %4463, %4355
  %4465 = fmul fast float %4463, %4357
  %4466 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4467 = fadd fast float %4464, %4466
  %4468 = fadd fast float %4465, %4466
  %4469 = icmp eq i32 %4460, 0
  br i1 %4469, label %4538, label %4470

; <label>:4470                                    ; preds = %4401
  br label %4471

; <label>:4471                                    ; preds = %4528, %4470
  %4472 = phi float [ %4529, %4528 ], [ 0.000000e+00, %4470 ]
  %4473 = phi float [ %4530, %4528 ], [ 0.000000e+00, %4470 ]
  %4474 = phi float [ %4531, %4528 ], [ 0.000000e+00, %4470 ]
  %4475 = phi float [ %4532, %4528 ], [ 0.000000e+00, %4470 ]
  %4476 = phi float [ %4533, %4528 ], [ 0.000000e+00, %4470 ]
  %4477 = phi float [ %4534, %4528 ], [ 0.000000e+00, %4470 ]
  %4478 = phi i32 [ %4535, %4528 ], [ 0, %4470 ]
  %4479 = shl i32 %4478, 2
  %4480 = add i32 %4346, %4479
  %4481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4480, i32 undef)  ; BufferLoad(srv,index,wot)
  %4482 = extractvalue %dx.types.ResRet.f32 %4481, 0
  %4483 = add i32 %4350, %4479
  %4484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4483, i32 undef)  ; BufferLoad(srv,index,wot)
  %4485 = extractvalue %dx.types.ResRet.i32 %4484, 0
  %4486 = add i32 %4485, 0
  %4487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4486, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4488 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4487, i32 0)  ; GetDimensions(handle,mipLevel)
  %4489 = extractvalue %dx.types.Dimensions %4488, 0
  %4490 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4489)  ; FirstbitLo(value)
  %4491 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.i32 %4491, 1
  %4493 = sub nsw i32 %4492, %4490
  %4494 = sitofp i32 %4493 to float
  %4495 = fsub fast float %4379, %4494
  %4496 = call float @dx.op.binary.f32(i32 35, float %4495, float 0.000000e+00)  ; FMax(a,b)
  %4497 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4487, %dx.types.Handle %27, float %4467, float %4468, float %4482, float undef, i32 0, i32 0, i32 undef, float %4496)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4498 = extractvalue %dx.types.ResRet.f32 %4497, 0
  %4499 = fcmp fast ogt float %4498, 0.000000e+00
  br i1 %4499, label %4500, label %4528

; <label>:4500                                    ; preds = %4471
  %4501 = add i32 %4461, %4479
  %4502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.i32 %4502, 0
  %4504 = and i32 %4503, 32767
  %4505 = mul nuw nsw i32 %4504, 928
  %4506 = add nuw nsw i32 %4505, 48
  %4507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.ResRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.ResRet.f32 %4507, 2
  %4511 = add nuw nsw i32 %4505, 60
  %4512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4511, i32 undef)  ; BufferLoad(srv,index,wot)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = fmul fast float %4508, %4498
  %4517 = fmul fast float %4509, %4498
  %4518 = fmul fast float %4510, %4498
  %4519 = fadd fast float %4516, %4472
  %4520 = fadd fast float %4517, %4473
  %4521 = fadd fast float %4518, %4474
  %4522 = fmul fast float %4513, %4498
  %4523 = fmul fast float %4514, %4498
  %4524 = fmul fast float %4515, %4498
  %4525 = fadd fast float %4522, %4475
  %4526 = fadd fast float %4523, %4476
  %4527 = fadd fast float %4524, %4477
  br label %4528

; <label>:4528                                    ; preds = %4500, %4471
  %4529 = phi float [ %4519, %4500 ], [ %4472, %4471 ]
  %4530 = phi float [ %4520, %4500 ], [ %4473, %4471 ]
  %4531 = phi float [ %4521, %4500 ], [ %4474, %4471 ]
  %4532 = phi float [ %4525, %4500 ], [ %4475, %4471 ]
  %4533 = phi float [ %4526, %4500 ], [ %4476, %4471 ]
  %4534 = phi float [ %4527, %4500 ], [ %4477, %4471 ]
  %4535 = add nuw i32 %4478, 1
  %4536 = icmp eq i32 %4535, %4460
  br i1 %4536, label %4537, label %4471

; <label>:4537                                    ; preds = %4528
  br label %4538

; <label>:4538                                    ; preds = %4537, %4401
  %4539 = phi float [ 0.000000e+00, %4401 ], [ %4529, %4537 ]
  %4540 = phi float [ 0.000000e+00, %4401 ], [ %4530, %4537 ]
  %4541 = phi float [ 0.000000e+00, %4401 ], [ %4531, %4537 ]
  %4542 = phi float [ 0.000000e+00, %4401 ], [ %4532, %4537 ]
  %4543 = phi float [ 0.000000e+00, %4401 ], [ %4533, %4537 ]
  %4544 = phi float [ 0.000000e+00, %4401 ], [ %4534, %4537 ]
  %4545 = fadd fast float %4542, %4539
  %4546 = fmul fast float %4545, 0x3F847AE140000000
  %4547 = fadd fast float %4543, %4540
  %4548 = fmul fast float %4547, 0x3F847AE140000000
  %4549 = fadd fast float %4544, %4541
  %4550 = fmul fast float %4549, 0x3F847AE140000000
  br label %4551

; <label>:4551                                    ; preds = %4538, %4335, %4280, %4277, %4248, %4210
  %4552 = phi float [ %4262, %4248 ], [ -1.310720e+05, %4210 ], [ %4454, %4538 ], [ -1.310720e+05, %4280 ], [ -1.310720e+05, %4335 ], [ -1.310720e+05, %4277 ]
  %4553 = phi float [ %4272, %4248 ], [ 0.000000e+00, %4210 ], [ %4546, %4538 ], [ 0.000000e+00, %4280 ], [ 0.000000e+00, %4335 ], [ 0.000000e+00, %4277 ]
  %4554 = phi float [ %4274, %4248 ], [ 0.000000e+00, %4210 ], [ %4548, %4538 ], [ 0.000000e+00, %4280 ], [ 0.000000e+00, %4335 ], [ 0.000000e+00, %4277 ]
  %4555 = phi float [ %4276, %4248 ], [ 0.000000e+00, %4210 ], [ %4550, %4538 ], [ 0.000000e+00, %4280 ], [ 0.000000e+00, %4335 ], [ 0.000000e+00, %4277 ]
  %4556 = phi i1 [ true, %4248 ], [ false, %4210 ], [ true, %4538 ], [ false, %4280 ], [ false, %4335 ], [ false, %4277 ]
  %4557 = and i32 %152, 3
  %4558 = icmp eq i32 %4557, 1
  %4559 = select i1 %4558, float 1.000000e+00, float 0.000000e+00
  %4560 = fsub fast float %4552, %136
  %4561 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4562 = select i1 %4556, float %4561, float 1.000000e+00
  %4563 = fmul fast float %4562, %4559
  %4564 = icmp eq i32 %4557, 3
  %4565 = select i1 %4564, float 1.000000e+00, float %4563
  %4566 = call float @dx.op.binary.f32(i32 35, float %4153, float %4565)  ; FMax(a,b)
  %4567 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4568 = fcmp fast une float %4567, 0.000000e+00
  %4569 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4570 = call float @dx.op.unary.f32(i32 25, float %4569)  ; Rsqrt(value)
  br i1 %4568, label %4578, label %4571

; <label>:4571                                    ; preds = %4551
  %4572 = fmul fast float %4570, %134
  %4573 = fmul fast float %4570, %135
  %4574 = fmul fast float %4570, %136
  %4575 = fsub fast float -0.000000e+00, %4572
  %4576 = fsub fast float -0.000000e+00, %4573
  %4577 = fsub fast float -0.000000e+00, %4574
  br label %4746

; <label>:4578                                    ; preds = %4551
  %4579 = fmul fast float %134, %4570
  %4580 = fsub fast float -0.000000e+00, %4579
  %4581 = fmul fast float %135, %4570
  %4582 = fsub fast float -0.000000e+00, %4581
  %4583 = fmul fast float %136, %4570
  %4584 = fsub fast float -0.000000e+00, %4583
  %4585 = call float @dx.op.dot3.f32(i32 55, float %4580, float %4582, float %4584, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4586 = fmul fast float %4567, 2.500000e+00
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4567, 0x4013FFFFE0000000
  %4589 = fadd fast float %4588, 0xBFFFFFFFE0000000
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = fmul fast float %4567, 0x4004000020000000
  %4592 = fadd fast float %4591, 0xBFF8000040000000
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4595 = fmul fast float %4156, 1.000000e+01
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fmul fast float %4596, 2.000000e+00
  %4598 = fsub fast float 3.000000e+00, %4597
  %4599 = fmul fast float %4596, %4596
  %4600 = fmul fast float %4599, %4598
  %4601 = fsub fast float 1.000000e+00, %4600
  %4602 = fsub fast float 0x3FE3333340000000, %4177
  %4603 = fmul fast float %4602, 0x400AAAAAA0000000
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fmul fast float %4601, %4604
  %4606 = fmul fast float %4189, 0x3FEA2B8620000000
  %4607 = fmul fast float %4190, 0x3FEA2B8620000000
  %4608 = fmul fast float %4191, 0x3FEA2B8620000000
  %4609 = fadd fast float %4606, 0x3FC81DFBA0000000
  %4610 = fmul fast float %4609, %4189
  %4611 = fadd fast float %4610, 0x3F910E6020000000
  %4612 = fadd fast float %4607, 0x3FC81DFBA0000000
  %4613 = fmul fast float %4612, %4190
  %4614 = fadd fast float %4613, 0x3F910E6020000000
  %4615 = fadd fast float %4608, 0x3FC81DFBA0000000
  %4616 = fmul fast float %4615, %4191
  %4617 = fadd fast float %4616, 0x3F910E6020000000
  %4618 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4619 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4620 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4621 = fsub fast float %4618, %4189
  %4622 = fsub fast float %4619, %4190
  %4623 = fsub fast float %4620, %4191
  %4624 = fmul fast float %4621, %4594
  %4625 = fmul fast float %4624, %4605
  %4626 = fmul fast float %4622, %4594
  %4627 = fmul fast float %4626, %4605
  %4628 = fmul fast float %4623, %4594
  %4629 = fmul fast float %4628, %4605
  %4630 = fadd fast float %4625, %4189
  %4631 = fadd fast float %4627, %4190
  %4632 = fadd fast float %4629, %4191
  %4633 = fmul fast float %4150, %4150
  %4634 = fmul fast float %4633, %4633
  %4635 = fadd fast float %4590, 1.000000e+00
  %4636 = fsub fast float %4635, %4605
  %4637 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4638 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = fsub fast float 1.000000e+00, %4634
  %4641 = call float @dx.op.binary.f32(i32 36, float %4637, float %4640)  ; FMin(a,b)
  %4642 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4643 = call float @dx.op.binary.f32(i32 35, float %4641, float %4642)  ; FMax(a,b)
  %4644 = fadd fast float %4639, 0xBFE4CCCCC0000000
  %4645 = fmul fast float %4644, 0x4006DB6DA0000000
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = fmul fast float %4646, 2.000000e+00
  %4648 = fsub fast float 3.000000e+00, %4647
  %4649 = bitcast float %4174 to i32
  %4650 = ashr i32 %4649, 1
  %4651 = add nsw i32 %4650, 532487669
  %4652 = bitcast i32 %4651 to float
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = bitcast float %4653 to i32
  %4655 = sub nsw i32 2129859010, %4654
  %4656 = bitcast i32 %4655 to float
  %4657 = fmul fast float %4656, 2.000000e+00
  %4658 = bitcast float %4175 to i32
  %4659 = ashr i32 %4658, 1
  %4660 = add nsw i32 %4659, 532487669
  %4661 = bitcast i32 %4660 to float
  %4662 = fsub fast float 1.000000e+00, %4661
  %4663 = bitcast float %4662 to i32
  %4664 = sub nsw i32 2129859010, %4663
  %4665 = bitcast i32 %4664 to float
  %4666 = fmul fast float %4665, 2.000000e+00
  %4667 = bitcast float %4176 to i32
  %4668 = ashr i32 %4667, 1
  %4669 = add nsw i32 %4668, 532487669
  %4670 = bitcast i32 %4669 to float
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = bitcast float %4671 to i32
  %4673 = sub nsw i32 2129859010, %4672
  %4674 = bitcast i32 %4673 to float
  %4675 = fmul fast float %4674, 2.000000e+00
  %4676 = fsub fast float 0x4002A9FBE0000000, %4657
  %4677 = fadd fast float %4657, 0x3FD54FDF00000000
  %4678 = bitcast float %4677 to i32
  %4679 = sub nsw i32 2129859010, %4678
  %4680 = bitcast i32 %4679 to float
  %4681 = fmul fast float %4680, %4676
  %4682 = fmul fast float %4681, %4681
  %4683 = fsub fast float 0x4002A9FBE0000000, %4666
  %4684 = fadd fast float %4666, 0x3FD54FDF00000000
  %4685 = bitcast float %4684 to i32
  %4686 = sub nsw i32 2129859010, %4685
  %4687 = bitcast i32 %4686 to float
  %4688 = fmul fast float %4687, %4683
  %4689 = fmul fast float %4688, %4688
  %4690 = fsub fast float 0x4002A9FBE0000000, %4675
  %4691 = fadd fast float %4675, 0x3FD54FDF00000000
  %4692 = bitcast float %4691 to i32
  %4693 = sub nsw i32 2129859010, %4692
  %4694 = bitcast i32 %4693 to float
  %4695 = fmul fast float %4694, %4690
  %4696 = fmul fast float %4695, %4695
  %4697 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4682)  ; FMax(a,b)
  %4698 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4689)  ; FMax(a,b)
  %4699 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4696)  ; FMax(a,b)
  %4700 = fsub fast float 1.000000e+00, %4585
  %4701 = fadd fast float %4700, %4601
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = fsub fast float 1.000000e+00, %4565
  %4704 = fmul fast float %4643, %4703
  %4705 = fmul fast float %4646, %4646
  %4706 = fmul fast float %4705, %4704
  %4707 = fmul fast float %4706, %4648
  %4708 = fmul fast float %4703, 0xBFE99999A0000000
  %4709 = fmul fast float %4708, %4594
  %4710 = fmul fast float %4709, %4605
  %4711 = fadd fast float %4710, 1.000000e+00
  %4712 = fadd fast float %4177, -1.000000e+00
  %4713 = fmul fast float %4711, %4712
  %4714 = fadd fast float %4713, 1.000000e+00
  %4715 = fsub fast float %4697, %4174
  %4716 = fsub fast float %4698, %4175
  %4717 = fsub fast float %4699, %4176
  %4718 = fmul fast float %4707, %4715
  %4719 = fmul fast float %4707, %4716
  %4720 = fmul fast float %4707, %4717
  %4721 = fadd fast float %4718, %4174
  %4722 = fadd fast float %4719, %4175
  %4723 = fadd fast float %4720, %4176
  %4724 = fsub fast float %84, %4138
  %4725 = fsub fast float %86, %4139
  %4726 = fsub fast float %88, %4140
  %4727 = fmul fast float %4707, %4724
  %4728 = fmul fast float %4707, %4725
  %4729 = fmul fast float %4707, %4726
  %4730 = fadd fast float %4727, %4138
  %4731 = fadd fast float %4728, %4139
  %4732 = fadd fast float %4729, %4140
  %4733 = fmul fast float %4707, %4702
  %4734 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4735 = fsub fast float 1.000000e+00, %4734
  %4736 = fmul fast float %4733, %4735
  %4737 = fadd fast float %4736, %4734
  %4738 = fsub fast float 1.000000e+00, %4150
  %4739 = fmul fast float %4707, %4738
  %4740 = fadd fast float %4739, %4150
  %4741 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4731, float %4732, float %4730, float %4731, float %4732)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = call float @dx.op.unary.f32(i32 25, float %4741)  ; Rsqrt(value)
  %4743 = fmul fast float %4730, %4742
  %4744 = fmul fast float %4731, %4742
  %4745 = fmul fast float %4732, %4742
  br label %4746

; <label>:4746                                    ; preds = %4578, %4571
  %4747 = phi float [ %4577, %4571 ], [ %4584, %4578 ]
  %4748 = phi float [ %4576, %4571 ], [ %4582, %4578 ]
  %4749 = phi float [ %4575, %4571 ], [ %4580, %4578 ]
  %4750 = phi float [ %4574, %4571 ], [ %4583, %4578 ]
  %4751 = phi float [ %4573, %4571 ], [ %4581, %4578 ]
  %4752 = phi float [ %4572, %4571 ], [ %4579, %4578 ]
  %4753 = phi float [ %4174, %4571 ], [ %4721, %4578 ]
  %4754 = phi float [ %4175, %4571 ], [ %4722, %4578 ]
  %4755 = phi float [ %4176, %4571 ], [ %4723, %4578 ]
  %4756 = phi float [ %4189, %4571 ], [ %4630, %4578 ]
  %4757 = phi float [ %4190, %4571 ], [ %4631, %4578 ]
  %4758 = phi float [ %4191, %4571 ], [ %4632, %4578 ]
  %4759 = phi float [ %4138, %4571 ], [ %4743, %4578 ]
  %4760 = phi float [ %4139, %4571 ], [ %4744, %4578 ]
  %4761 = phi float [ %4140, %4571 ], [ %4745, %4578 ]
  %4762 = phi float [ %4177, %4571 ], [ %4737, %4578 ]
  %4763 = phi float [ %4150, %4571 ], [ %4740, %4578 ]
  %4764 = select i1 %176, float 0.000000e+00, float %4755
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4759, float %4760, float %4761, float %4749, float %4748, float %4747)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4752, float %4751, float %4750, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = fmul fast float %4767, 2.000000e+00
  %4769 = fmul fast float %4768, %4759
  %4770 = fmul fast float %4768, %4760
  %4771 = fmul fast float %4768, %4761
  %4772 = fsub fast float %4752, %4769
  %4773 = fsub fast float %4751, %4770
  %4774 = fsub fast float %4750, %4771
  %4775 = call float @dx.op.binary.f32(i32 36, float %4763, float 1.000000e+00)  ; FMin(a,b)
  %4776 = fsub fast float 1.000000e+00, %4763
  %4777 = bitcast float %4776 to i32
  %4778 = sub nsw i32 2129859010, %4777
  %4779 = bitcast i32 %4778 to float
  %4780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %4781 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = fcmp fast oeq float %4781, 0.000000e+00
  %4783 = fcmp fast oeq float %4780, 0.000000e+00
  %4784 = or i1 %4783, %4782
  br i1 %4784, label %4814, label %4785

; <label>:4785                                    ; preds = %4746
  %4786 = fsub fast float -0.000000e+00, %55
  %4787 = fsub fast float -0.000000e+00, %53
  %4788 = call float @dx.op.unary.f32(i32 24, float %4781)  ; Sqrt(value)
  %4789 = fdiv fast float %4788, %4780
  %4790 = fcmp fast ogt float %4789, 0x3FFB6F8900000000
  %4791 = select i1 %4790, float 0x3FFB6F8900000000, float %4789
  %4792 = fmul fast float %4791, 0x3FE8A23460000000
  %4793 = call float @dx.op.unary.f32(i32 7, float %4792)  ; Saturate(value)
  %4794 = call float @dx.op.binary.f32(i32 35, float %4791, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4795 = fmul fast float %4793, %4780
  %4796 = fmul fast float %4794, 0x3FF279A740000000
  %4797 = fadd fast float %4796, -1.000000e+00
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %54, float %4786, float %4787, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = call float @dx.op.unary.f32(i32 25, float %4798)  ; Rsqrt(value)
  %4800 = fmul fast float %4799, %4786
  %4801 = fmul fast float %4799, %4787
  %4802 = fmul fast float %4799, %54
  %4803 = fmul fast float %4797, %4797
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = fmul fast float %4794, 0x40005F8BE0000000
  %4806 = fsub fast float 0x400C5BF8A0000000, %4805
  %4807 = fdiv fast float %4795, %4806
  %4808 = fmul fast float %4807, 0x3FEE31C3C0000000
  %4809 = fmul fast float %4808, %4804
  %4810 = fmul fast float %4794, 0x3FDACB7480000000
  %4811 = fadd fast float %4810, 0xBFD7347680000000
  %4812 = fmul fast float %4811, %4807
  %4813 = fmul fast float %4812, %4804
  br label %4814

; <label>:4814                                    ; preds = %4785, %4746
  %4815 = phi float [ %4800, %4785 ], [ 0.000000e+00, %4746 ]
  %4816 = phi float [ %4801, %4785 ], [ 0.000000e+00, %4746 ]
  %4817 = phi float [ %4802, %4785 ], [ 0.000000e+00, %4746 ]
  %4818 = phi float [ %4809, %4785 ], [ 0.000000e+00, %4746 ]
  %4819 = phi float [ %4813, %4785 ], [ 0.000000e+00, %4746 ]
  %4820 = call float @dx.op.dot3.f32(i32 55, float %4815, float %4816, float %4817, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %4821 = fmul fast float %4820, %4820
  %4822 = fmul fast float %4821, 0x3FEE471020000000
  %4823 = fadd fast float %4822, 0xBFD42F6020000000
  %4824 = fmul fast float %4780, 0x3FD20DD760000000
  %4825 = fmul fast float %4823, %4819
  %4826 = fmul fast float %4818, 0x3FDF454380000000
  %4827 = fmul fast float %4826, %4820
  %4828 = fadd fast float %4827, %4824
  %4829 = fadd fast float %4828, %4825
  %4830 = call float @dx.op.dot3.f32(i32 55, float %4815, float %4816, float %4817, float %4772, float %4773, float %4774)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = fmul fast float %4830, 0x3FDF454380000000
  %4832 = fmul fast float %4830, %4830
  %4833 = fmul fast float %4832, 0x3FEE471020000000
  %4834 = fadd fast float %4833, 0xBFD42F6020000000
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4818, float %4819, float 0x3FD20DD760000000, float %4831, float %4834)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %4837 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = fcmp fast oeq float %4837, 0.000000e+00
  %4839 = fcmp fast oeq float %4836, 0.000000e+00
  %4840 = or i1 %4839, %4838
  br i1 %4840, label %4870, label %4841

; <label>:4841                                    ; preds = %4814
  %4842 = fsub fast float -0.000000e+00, %51
  %4843 = fsub fast float -0.000000e+00, %49
  %4844 = call float @dx.op.unary.f32(i32 24, float %4837)  ; Sqrt(value)
  %4845 = fdiv fast float %4844, %4836
  %4846 = fcmp fast ogt float %4845, 0x3FFB6F8900000000
  %4847 = select i1 %4846, float 0x3FFB6F8900000000, float %4845
  %4848 = fmul fast float %4847, 0x3FE8A23460000000
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = call float @dx.op.binary.f32(i32 35, float %4847, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4851 = fmul fast float %4849, %4836
  %4852 = fmul fast float %4850, 0x3FF279A740000000
  %4853 = fadd fast float %4852, -1.000000e+00
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4843, float %50, float %4842, float %4843, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = call float @dx.op.unary.f32(i32 25, float %4854)  ; Rsqrt(value)
  %4856 = fmul fast float %4855, %4842
  %4857 = fmul fast float %4855, %4843
  %4858 = fmul fast float %4855, %50
  %4859 = fmul fast float %4853, %4853
  %4860 = fsub fast float 1.000000e+00, %4859
  %4861 = fmul fast float %4850, 0x40005F8BE0000000
  %4862 = fsub fast float 0x400C5BF8A0000000, %4861
  %4863 = fdiv fast float %4851, %4862
  %4864 = fmul fast float %4863, 0x3FEE31C3C0000000
  %4865 = fmul fast float %4864, %4860
  %4866 = fmul fast float %4850, 0x3FDACB7480000000
  %4867 = fadd fast float %4866, 0xBFD7347680000000
  %4868 = fmul fast float %4867, %4863
  %4869 = fmul fast float %4868, %4860
  br label %4870

; <label>:4870                                    ; preds = %4841, %4814
  %4871 = phi float [ %4856, %4841 ], [ 0.000000e+00, %4814 ]
  %4872 = phi float [ %4857, %4841 ], [ 0.000000e+00, %4814 ]
  %4873 = phi float [ %4858, %4841 ], [ 0.000000e+00, %4814 ]
  %4874 = phi float [ %4865, %4841 ], [ 0.000000e+00, %4814 ]
  %4875 = phi float [ %4869, %4841 ], [ 0.000000e+00, %4814 ]
  %4876 = call float @dx.op.dot3.f32(i32 55, float %4871, float %4872, float %4873, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %4877 = fmul fast float %4876, %4876
  %4878 = fmul fast float %4877, 0x3FEE471020000000
  %4879 = fadd fast float %4878, 0xBFD42F6020000000
  %4880 = fmul fast float %4836, 0x3FD20DD760000000
  %4881 = fmul fast float %4879, %4875
  %4882 = fmul fast float %4874, 0x3FDF454380000000
  %4883 = fmul fast float %4882, %4876
  %4884 = fadd fast float %4883, %4880
  %4885 = fadd fast float %4884, %4881
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4871, float %4872, float %4873, float %4772, float %4773, float %4774)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = fmul fast float %4886, 0x3FDF454380000000
  %4888 = fmul fast float %4886, %4886
  %4889 = fmul fast float %4888, 0x3FEE471020000000
  %4890 = fadd fast float %4889, 0xBFD42F6020000000
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4874, float %4875, float 0x3FD20DD760000000, float %4887, float %4890)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %4893 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = fcmp fast oeq float %4893, 0.000000e+00
  %4895 = fcmp fast oeq float %4892, 0.000000e+00
  %4896 = or i1 %4895, %4894
  br i1 %4896, label %4926, label %4897

; <label>:4897                                    ; preds = %4870
  %4898 = fsub fast float -0.000000e+00, %47
  %4899 = fsub fast float -0.000000e+00, %45
  %4900 = call float @dx.op.unary.f32(i32 24, float %4893)  ; Sqrt(value)
  %4901 = fdiv fast float %4900, %4892
  %4902 = fcmp fast ogt float %4901, 0x3FFB6F8900000000
  %4903 = select i1 %4902, float 0x3FFB6F8900000000, float %4901
  %4904 = fmul fast float %4903, 0x3FE8A23460000000
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = call float @dx.op.binary.f32(i32 35, float %4903, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4907 = fmul fast float %4905, %4892
  %4908 = fmul fast float %4906, 0x3FF279A740000000
  %4909 = fadd fast float %4908, -1.000000e+00
  %4910 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %46, float %4898, float %4899, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %4911 = call float @dx.op.unary.f32(i32 25, float %4910)  ; Rsqrt(value)
  %4912 = fmul fast float %4911, %4898
  %4913 = fmul fast float %4911, %4899
  %4914 = fmul fast float %4911, %46
  %4915 = fmul fast float %4909, %4909
  %4916 = fsub fast float 1.000000e+00, %4915
  %4917 = fmul fast float %4906, 0x40005F8BE0000000
  %4918 = fsub fast float 0x400C5BF8A0000000, %4917
  %4919 = fdiv fast float %4907, %4918
  %4920 = fmul fast float %4919, 0x3FEE31C3C0000000
  %4921 = fmul fast float %4920, %4916
  %4922 = fmul fast float %4906, 0x3FDACB7480000000
  %4923 = fadd fast float %4922, 0xBFD7347680000000
  %4924 = fmul fast float %4923, %4919
  %4925 = fmul fast float %4924, %4916
  br label %4926

; <label>:4926                                    ; preds = %4897, %4870
  %4927 = phi float [ %4912, %4897 ], [ 0.000000e+00, %4870 ]
  %4928 = phi float [ %4913, %4897 ], [ 0.000000e+00, %4870 ]
  %4929 = phi float [ %4914, %4897 ], [ 0.000000e+00, %4870 ]
  %4930 = phi float [ %4921, %4897 ], [ 0.000000e+00, %4870 ]
  %4931 = phi float [ %4925, %4897 ], [ 0.000000e+00, %4870 ]
  %4932 = call float @dx.op.dot3.f32(i32 55, float %4927, float %4928, float %4929, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %4933 = fmul fast float %4932, %4932
  %4934 = fmul fast float %4933, 0x3FEE471020000000
  %4935 = fadd fast float %4934, 0xBFD42F6020000000
  %4936 = fmul fast float %4892, 0x3FD20DD760000000
  %4937 = fmul fast float %4935, %4931
  %4938 = fmul fast float %4930, 0x3FDF454380000000
  %4939 = fmul fast float %4938, %4932
  %4940 = fadd fast float %4939, %4936
  %4941 = fadd fast float %4940, %4937
  %4942 = call float @dx.op.dot3.f32(i32 55, float %4927, float %4928, float %4929, float %4772, float %4773, float %4774)  ; Dot3(ax,ay,az,bx,by,bz)
  %4943 = fmul fast float %4942, 0x3FDF454380000000
  %4944 = fmul fast float %4942, %4942
  %4945 = fmul fast float %4944, 0x3FEE471020000000
  %4946 = fadd fast float %4945, 0xBFD42F6020000000
  %4947 = call float @dx.op.dot3.f32(i32 55, float %4892, float %4930, float %4931, float 0x3FD20DD760000000, float %4943, float %4946)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = call float @dx.op.binary.f32(i32 35, float %4829, float 0.000000e+00)  ; FMax(a,b)
  %4949 = call float @dx.op.binary.f32(i32 35, float %4885, float 0.000000e+00)  ; FMax(a,b)
  %4950 = call float @dx.op.binary.f32(i32 35, float %4941, float 0.000000e+00)  ; FMax(a,b)
  %4951 = call float @dx.op.binary.f32(i32 35, float %4835, float 0.000000e+00)  ; FMax(a,b)
  %4952 = call float @dx.op.binary.f32(i32 35, float %4891, float 0.000000e+00)  ; FMax(a,b)
  %4953 = call float @dx.op.binary.f32(i32 35, float %4947, float 0.000000e+00)  ; FMax(a,b)
  %4954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4955 = extractvalue %dx.types.CBufRet.f32 %4954, 0
  %4956 = call float @dx.op.binary.f32(i32 36, float %4756, float %4955)  ; FMin(a,b)
  %4957 = fsub fast float 1.000000e+00, %4775
  %4958 = fmul fast float %4956, %4957
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = call float @dx.op.binary.f32(i32 36, float %4757, float %4955)  ; FMin(a,b)
  %4964 = fmul fast float %4963, %4957
  %4965 = fsub fast float 1.000000e+00, %4964
  %4966 = bitcast float %4965 to i32
  %4967 = sub nsw i32 2129859010, %4966
  %4968 = bitcast i32 %4967 to float
  %4969 = call float @dx.op.binary.f32(i32 36, float %4758, float %4955)  ; FMin(a,b)
  %4970 = fmul fast float %4969, %4957
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = bitcast float %4971 to i32
  %4973 = sub nsw i32 2129859010, %4972
  %4974 = bitcast i32 %4973 to float
  %4975 = fmul fast float %4948, %4775
  %4976 = fmul fast float %4975, %4962
  %4977 = fmul fast float %4949, %4775
  %4978 = fmul fast float %4977, %4968
  %4979 = fmul fast float %4950, %4775
  %4980 = fmul fast float %4979, %4974
  %4981 = call float @dx.op.binary.f32(i32 36, float %4753, float %4955)  ; FMin(a,b)
  %4982 = fmul fast float %4981, %4957
  %4983 = fsub fast float 1.000000e+00, %4982
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = call float @dx.op.binary.f32(i32 36, float %4754, float %4955)  ; FMin(a,b)
  %4988 = fmul fast float %4987, %4957
  %4989 = fsub fast float 1.000000e+00, %4988
  %4990 = bitcast float %4989 to i32
  %4991 = sub nsw i32 2129859010, %4990
  %4992 = bitcast i32 %4991 to float
  %4993 = call float @dx.op.binary.f32(i32 36, float %4764, float %4955)  ; FMin(a,b)
  %4994 = fmul fast float %4993, %4957
  %4995 = fsub fast float 1.000000e+00, %4994
  %4996 = bitcast float %4995 to i32
  %4997 = sub nsw i32 2129859010, %4996
  %4998 = bitcast i32 %4997 to float
  %4999 = fmul fast float %4951, %4775
  %5000 = fmul fast float %4999, %4986
  %5001 = fmul fast float %4952, %4775
  %5002 = fmul fast float %5001, %4992
  %5003 = fmul fast float %4953, %4775
  %5004 = fmul fast float %5003, %4998
  %5005 = call float @dx.op.dot3.f32(i32 55, float %4976, float %4978, float %4980, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5006 = select i1 %176, float 0.000000e+00, float %4976
  %5007 = select i1 %176, float %5005, float %4978
  %5008 = select i1 %176, float 0.000000e+00, float %4980
  %5009 = call float @dx.op.dot3.f32(i32 55, float %5000, float %5002, float %5004, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5010 = select i1 %176, float 0.000000e+00, float %5000
  %5011 = select i1 %176, float %5009, float %5002
  %5012 = select i1 %176, float 0.000000e+00, float %5004
  %5013 = fmul fast float %4766, 9.843750e-01
  %5014 = fmul fast float %4762, 9.843750e-01
  %5015 = fadd fast float %5013, 7.812500e-03
  %5016 = fadd fast float %5014, 7.812500e-03
  %5017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5015, float %5016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 2
  %5019 = extractvalue %dx.types.ResRet.f32 %5017, 3
  %5020 = fmul fast float %5018, %4753
  %5021 = fmul fast float %5018, %4754
  %5022 = fmul fast float %5018, %4764
  %5023 = fadd fast float %5020, %5019
  %5024 = fadd fast float %5021, %5019
  %5025 = fadd fast float %5022, %5019
  %5026 = fcmp fast ogt float %4151, 0.000000e+00
  br i1 %5026, label %5027, label %5053

; <label>:5027                                    ; preds = %4926
  %5028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4151, float %4766, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5029 = extractvalue %dx.types.ResRet.f32 %5028, 0
  %5030 = extractvalue %dx.types.ResRet.f32 %5028, 1
  %5031 = extractvalue %dx.types.ResRet.f32 %5028, 2
  %5032 = fadd fast float %5029, -5.000000e-01
  %5033 = fadd fast float %5030, -5.000000e-01
  %5034 = fadd fast float %5031, -5.000000e-01
  %5035 = fsub fast float 1.000000e+00, %4753
  %5036 = fsub fast float 1.000000e+00, %4754
  %5037 = fsub fast float 1.000000e+00, %4764
  %5038 = fmul fast float %4753, 4.000000e+00
  %5039 = fmul fast float %5038, %5035
  %5040 = fmul fast float %5039, %5032
  %5041 = fmul fast float %4754, 4.000000e+00
  %5042 = fmul fast float %5041, %5036
  %5043 = fmul fast float %5042, %5033
  %5044 = fmul fast float %4764, 4.000000e+00
  %5045 = fmul fast float %5044, %5037
  %5046 = fmul fast float %5045, %5034
  %5047 = fadd fast float %5040, %5023
  %5048 = fadd fast float %5043, %5024
  %5049 = fadd fast float %5046, %5025
  %5050 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5051 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  br label %5053

; <label>:5053                                    ; preds = %5027, %4926
  %5054 = phi float [ %5050, %5027 ], [ %5023, %4926 ]
  %5055 = phi float [ %5051, %5027 ], [ %5024, %4926 ]
  %5056 = phi float [ %5052, %5027 ], [ %5025, %4926 ]
  %5057 = call float @dx.op.binary.f32(i32 35, float %5055, float %5056)  ; FMax(a,b)
  %5058 = call float @dx.op.binary.f32(i32 35, float %5054, float %5057)  ; FMax(a,b)
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = fmul fast float %5059, %5006
  %5061 = fmul fast float %5059, %5007
  %5062 = fmul fast float %5059, %5008
  %5063 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4757, float %4758, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = fcmp fast ogt float %5063, 0x3E7FF19E20000000
  %5065 = fdiv fast float 1.000000e+00, %5063
  %5066 = select i1 %5064, float %5065, float 0.000000e+00
  %5067 = fmul fast float %5066, %4756
  %5068 = fmul fast float %5066, %4757
  %5069 = fmul fast float %5066, %4758
  %5070 = fadd fast float %5067, -1.000000e+00
  %5071 = fadd fast float %5068, -1.000000e+00
  %5072 = fadd fast float %5069, -1.000000e+00
  %5073 = fmul fast float %5070, 5.000000e-01
  %5074 = fmul fast float %5071, 5.000000e-01
  %5075 = fmul fast float %5072, 5.000000e-01
  %5076 = fadd fast float %5073, 1.000000e+00
  %5077 = fadd fast float %5074, 1.000000e+00
  %5078 = fadd fast float %5075, 1.000000e+00
  %5079 = fmul fast float %5054, %5010
  %5080 = fmul fast float %5055, %5011
  %5081 = fmul fast float %5056, %5012
  %5082 = fsub fast float 1.000000e+00, %4766
  %5083 = bitcast float %5082 to i32
  %5084 = sitofp i32 %5083 to float
  %5085 = fmul fast float %5084, 5.000000e+00
  %5086 = fadd fast float %5085, 0xC1EFBF8940000000
  %5087 = fptosi float %5086 to i32
  %5088 = bitcast i32 %5087 to float
  %5089 = fmul fast float %5088, %4152
  %5090 = fmul fast float %5006, %5089
  %5091 = fmul fast float %5090, %5059
  %5092 = fmul fast float %5091, %5076
  %5093 = fmul fast float %5007, %5089
  %5094 = fmul fast float %5093, %5059
  %5095 = fmul fast float %5094, %5077
  %5096 = fmul fast float %5008, %5089
  %5097 = fmul fast float %5096, %5059
  %5098 = fmul fast float %5097, %5078
  %5099 = fmul fast float %5060, %4148
  %5100 = fmul fast float %5061, %4148
  %5101 = fmul fast float %5062, %4148
  %5102 = fadd fast float %5079, %4144
  %5103 = fadd fast float %5102, %5092
  %5104 = fmul fast float %5103, %4148
  %5105 = fadd fast float %5080, %4145
  %5106 = fadd fast float %5105, %5095
  %5107 = fmul fast float %5106, %4148
  %5108 = fadd fast float %5081, %4146
  %5109 = fadd fast float %5108, %5098
  %5110 = fmul fast float %5109, %4148
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 3
  %5113 = fcmp fast oeq float %5112, 0.000000e+00
  br i1 %5113, label %5341, label %5114

; <label>:5114                                    ; preds = %5053
  %5115 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5116 = extractvalue %dx.types.CBufRet.f32 %5111, 1
  %5117 = extractvalue %dx.types.CBufRet.f32 %5111, 2
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5121 = extractvalue %dx.types.CBufRet.f32 %5118, 2
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5124 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5125 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5120, float %5121, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5126 = select i1 %176, float %5123, float %5119
  %5127 = select i1 %176, float %5125, float %5120
  %5128 = select i1 %176, float %5124, float %5121
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 1
  %5131 = fcmp fast une float %5130, 0.000000e+00
  br i1 %5131, label %5132, label %5149

; <label>:5132                                    ; preds = %5114
  %5133 = fptoui float %75 to i32
  %5134 = fptoui float %76 to i32
  %5135 = lshr i32 %5133, 4
  %5136 = lshr i32 %5134, 4
  %5137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.f32 %5137, 0
  %5139 = fptoui float %5138 to i32
  %5140 = add i32 %5139, 15
  %5141 = lshr i32 %5140, 4
  %5142 = mul i32 %5141, %5136
  %5143 = add i32 %5142, %5135
  %5144 = shl i32 %5143, 3
  %5145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5144, i32 undef)  ; BufferLoad(srv,index,wot)
  %5146 = extractvalue %dx.types.ResRet.i32 %5145, 0
  %5147 = and i32 %5146, -268435456
  %5148 = icmp eq i32 %5147, -1342177280
  br i1 %5148, label %5159, label %5149

; <label>:5149                                    ; preds = %5132, %5114
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 2
  %5152 = extractvalue %dx.types.CBufRet.f32 %5150, 3
  %5153 = fmul fast float %5151, %75
  %5154 = fmul fast float %5152, %76
  %5155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5153, float %5154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5156 = extractvalue %dx.types.ResRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.ResRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.ResRet.f32 %5155, 2
  br label %5159

; <label>:5159                                    ; preds = %5149, %5132
  %5160 = phi float [ %5156, %5149 ], [ 0.000000e+00, %5132 ]
  %5161 = phi float [ %5157, %5149 ], [ 0.000000e+00, %5132 ]
  %5162 = phi float [ %5158, %5149 ], [ 0.000000e+00, %5132 ]
  %5163 = call float @dx.op.binary.f32(i32 36, float %5161, float %5162)  ; FMin(a,b)
  %5164 = call float @dx.op.binary.f32(i32 36, float %5160, float %5163)  ; FMin(a,b)
  %5165 = fcmp fast ogt float %5164, 0.000000e+00
  br i1 %5165, label %5166, label %5341, !dx.controlflow.hints !75

; <label>:5166                                    ; preds = %5159
  %5167 = fmul fast float %5160, %5126
  %5168 = fmul fast float %5161, %5127
  %5169 = fmul fast float %5162, %5128
  %5170 = fsub fast float %5115, %4752
  %5171 = fsub fast float %5116, %4751
  %5172 = fsub fast float %5117, %4750
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5170, float %5171, float %5172, float %5170, float %5171, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = call float @dx.op.unary.f32(i32 25, float %5173)  ; Rsqrt(value)
  %5175 = fmul fast float %5174, %5170
  %5176 = fmul fast float %5174, %5171
  %5177 = fmul fast float %5174, %5172
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5115, float %5116, float %5117, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4748, float %4747, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5180 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5181 = fmul fast float %5180, %5180
  %5182 = fmul fast float %5181, %4779
  %5183 = call float @dx.op.unary.f32(i32 7, float %5182)  ; Saturate(value)
  %5184 = fmul fast float %5183, %5180
  %5185 = call float @dx.op.dot3.f32(i32 55, float %4759, float %4760, float %4761, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = fmul fast float %5185, %5185
  %5187 = call float @dx.op.unary.f32(i32 6, float %5178)  ; FAbs(value)
  %5188 = fsub fast float 1.000000e+00, %4762
  %5189 = call float @dx.op.binary.f32(i32 35, float %5188, float 0x3F847AE140000000)  ; FMax(a,b)
  %5190 = fmul fast float %5189, %5189
  %5191 = fmul fast float %5190, %5190
  %5192 = fsub fast float 1.000000e+00, %5191
  %5193 = fmul fast float %4766, %4766
  %5194 = fmul fast float %5193, %5192
  %5195 = fadd fast float %5194, %5191
  %5196 = bitcast float %5195 to i32
  %5197 = ashr i32 %5196, 1
  %5198 = add nsw i32 %5197, 532487669
  %5199 = bitcast i32 %5198 to float
  %5200 = fadd fast float %5199, %4766
  %5201 = fmul fast float %5191, %5186
  %5202 = fsub fast float 1.000000e+00, %5186
  %5203 = fadd fast float %5202, %5201
  %5204 = fmul fast float %5187, %5187
  %5205 = fmul fast float %5204, %5192
  %5206 = fadd fast float %5205, %5191
  %5207 = bitcast float %5206 to i32
  %5208 = ashr i32 %5207, 1
  %5209 = add nsw i32 %5208, 532487669
  %5210 = bitcast i32 %5209 to float
  %5211 = fadd fast float %5210, %5187
  %5212 = fmul fast float %5203, %5203
  %5213 = fmul fast float %5212, %5200
  %5214 = fmul fast float %5213, %5211
  %5215 = fdiv fast float 0x3FF0A00000000000, %5214
  %5216 = fmul fast float %5215, %5191
  %5217 = call float @dx.op.unary.f32(i32 6, float %5179)  ; FAbs(value)
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = bitcast float %5218 to i32
  %5220 = sitofp i32 %5219 to float
  %5221 = fmul fast float %5220, 5.000000e+00
  %5222 = fadd fast float %5221, 0xC1EFBF8940000000
  %5223 = fptosi float %5222 to i32
  %5224 = bitcast i32 %5223 to float
  %5225 = fsub fast float 1.000000e+00, %4753
  %5226 = fsub fast float 1.000000e+00, %4754
  %5227 = fsub fast float 1.000000e+00, %4764
  %5228 = fmul fast float %5224, %5225
  %5229 = fmul fast float %5224, %5226
  %5230 = fmul fast float %5224, %5227
  %5231 = fadd fast float %5228, %4753
  %5232 = fadd fast float %5229, %4754
  %5233 = fadd fast float %5230, %4764
  br i1 %5026, label %5234, label %5257

; <label>:5234                                    ; preds = %5166
  %5235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4151, float %5217, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = fadd fast float %5236, -5.000000e-01
  %5240 = fadd fast float %5237, -5.000000e-01
  %5241 = fadd fast float %5238, -5.000000e-01
  %5242 = fmul fast float %4753, 4.000000e+00
  %5243 = fmul fast float %5242, %5225
  %5244 = fmul fast float %5243, %5239
  %5245 = fmul fast float %4754, 4.000000e+00
  %5246 = fmul fast float %5245, %5226
  %5247 = fmul fast float %5246, %5240
  %5248 = fmul fast float %4764, 4.000000e+00
  %5249 = fmul fast float %5248, %5227
  %5250 = fmul fast float %5249, %5241
  %5251 = fadd fast float %5244, %5231
  %5252 = fadd fast float %5247, %5232
  %5253 = fadd fast float %5250, %5233
  %5254 = call float @dx.op.unary.f32(i32 7, float %5251)  ; Saturate(value)
  %5255 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5256 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  br label %5257

; <label>:5257                                    ; preds = %5234, %5166
  %5258 = phi float [ %5254, %5234 ], [ %5231, %5166 ]
  %5259 = phi float [ %5255, %5234 ], [ %5232, %5166 ]
  %5260 = phi float [ %5256, %5234 ], [ %5233, %5166 ]
  %5261 = fmul fast float %5178, 9.843750e-01
  %5262 = fadd fast float %5261, 7.812500e-03
  %5263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5262, float %5016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 2
  %5265 = extractvalue %dx.types.ResRet.f32 %5263, 3
  %5266 = fmul fast float %5264, %4753
  %5267 = fmul fast float %5264, %4754
  %5268 = fmul fast float %5264, %4764
  %5269 = fadd fast float %5266, %5265
  %5270 = fadd fast float %5267, %5265
  %5271 = fadd fast float %5268, %5265
  br i1 %5026, label %5272, label %5295

; <label>:5272                                    ; preds = %5257
  %5273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4151, float %5178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = extractvalue %dx.types.ResRet.f32 %5273, 2
  %5277 = fadd fast float %5274, -5.000000e-01
  %5278 = fadd fast float %5275, -5.000000e-01
  %5279 = fadd fast float %5276, -5.000000e-01
  %5280 = fmul fast float %4753, 4.000000e+00
  %5281 = fmul fast float %5280, %5225
  %5282 = fmul fast float %5281, %5277
  %5283 = fmul fast float %4754, 4.000000e+00
  %5284 = fmul fast float %5283, %5226
  %5285 = fmul fast float %5284, %5278
  %5286 = fmul fast float %4764, 4.000000e+00
  %5287 = fmul fast float %5286, %5227
  %5288 = fmul fast float %5287, %5279
  %5289 = fadd fast float %5282, %5269
  %5290 = fadd fast float %5285, %5270
  %5291 = fadd fast float %5288, %5271
  %5292 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  %5294 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  br label %5295

; <label>:5295                                    ; preds = %5272, %5257
  %5296 = phi float [ %5292, %5272 ], [ %5269, %5257 ]
  %5297 = phi float [ %5293, %5272 ], [ %5270, %5257 ]
  %5298 = phi float [ %5294, %5272 ], [ %5271, %5257 ]
  %5299 = call float @dx.op.binary.f32(i32 35, float %5297, float %5298)  ; FMax(a,b)
  %5300 = call float @dx.op.binary.f32(i32 35, float %5296, float %5299)  ; FMax(a,b)
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = fmul fast float %5258, %5216
  %5303 = fmul fast float %5259, %5216
  %5304 = fmul fast float %5260, %5216
  %5305 = fsub fast float 1.000000e+00, %5179
  %5306 = bitcast float %5305 to i32
  %5307 = sitofp i32 %5306 to float
  %5308 = fmul fast float %5307, 5.000000e+00
  %5309 = fadd fast float %5308, 0xC1EFBF8940000000
  %5310 = fptosi float %5309 to i32
  %5311 = bitcast i32 %5310 to float
  %5312 = fmul fast float %5311, %4152
  %5313 = fmul fast float %5301, %5312
  %5314 = fmul fast float %5313, %5076
  %5315 = fmul fast float %5313, %5077
  %5316 = fmul fast float %5313, %5078
  %5317 = fadd fast float %5314, %5302
  %5318 = fadd fast float %5315, %5303
  %5319 = fadd fast float %5316, %5304
  %5320 = fmul fast float %5184, %5167
  %5321 = fmul fast float %5320, %5301
  %5322 = fmul fast float %5184, %5168
  %5323 = fmul fast float %5322, %5301
  %5324 = fmul fast float %5184, %5169
  %5325 = fmul fast float %5324, %5301
  %5326 = fmul fast float %5320, %5317
  %5327 = fmul fast float %5322, %5318
  %5328 = fmul fast float %5324, %5319
  %5329 = fadd fast float %5321, %5060
  %5330 = fmul fast float %5329, %4148
  %5331 = fadd fast float %5323, %5061
  %5332 = fmul fast float %5331, %4148
  %5333 = fadd fast float %5325, %5062
  %5334 = fmul fast float %5333, %4148
  %5335 = fadd fast float %5326, %5103
  %5336 = fmul fast float %5335, %4148
  %5337 = fadd fast float %5327, %5106
  %5338 = fmul fast float %5337, %4148
  %5339 = fadd fast float %5328, %5109
  %5340 = fmul fast float %5339, %4148
  br label %5341

; <label>:5341                                    ; preds = %5295, %5159, %5053
  %5342 = phi float [ %5104, %5053 ], [ %5104, %5159 ], [ %5336, %5295 ]
  %5343 = phi float [ %5107, %5053 ], [ %5107, %5159 ], [ %5338, %5295 ]
  %5344 = phi float [ %5110, %5053 ], [ %5110, %5159 ], [ %5340, %5295 ]
  %5345 = phi float [ %5099, %5053 ], [ %5099, %5159 ], [ %5330, %5295 ]
  %5346 = phi float [ %5100, %5053 ], [ %5100, %5159 ], [ %5332, %5295 ]
  %5347 = phi float [ %5101, %5053 ], [ %5101, %5159 ], [ %5334, %5295 ]
  %5348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.i32 %5348, 0
  %5350 = icmp eq i32 %5349, 0
  br i1 %5350, label %5785, label %5351

; <label>:5351                                    ; preds = %5341
  %5352 = fptoui float %75 to i32
  %5353 = fptoui float %76 to i32
  %5354 = lshr i32 %5352, 4
  %5355 = lshr i32 %5353, 4
  %5356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.i32 %5356, 0
  %5358 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5355, i32 %5357, i32 %5354)  ; UMad(a,b,c)
  %5359 = add nsw i32 %5349, -1
  %5360 = call i32 @dx.op.binary.i32(i32 37, i32 %5359, i32 0)  ; IMax(a,b)
  %5361 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5362 = fptoui float %5361 to i32
  %5363 = lshr i32 %5362, 5
  %5364 = call i32 @dx.op.binary.i32(i32 40, i32 %5363, i32 8191)  ; UMin(a,b)
  %5365 = shl i32 %5364, 2
  %5366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5365, i32 undef)  ; BufferLoad(srv,index,wot)
  %5367 = extractvalue %dx.types.ResRet.i32 %5366, 0
  %5368 = lshr i32 %5367, 16
  %5369 = and i32 %5367, 65535
  %5370 = lshr i32 %5367, 21
  %5371 = lshr i32 %5369, 5
  %5372 = call i32 @dx.op.binary.i32(i32 40, i32 %5371, i32 %5360)  ; UMin(a,b)
  %5373 = icmp ugt i32 %5370, %5372
  br i1 %5373, label %5785, label %5374

; <label>:5374                                    ; preds = %5351
  br label %5375

; <label>:5375                                    ; preds = %5775, %5374
  %5376 = phi i32 [ %5782, %5775 ], [ %5370, %5374 ]
  %5377 = phi float [ %5776, %5775 ], [ %5342, %5374 ]
  %5378 = phi float [ %5777, %5775 ], [ %5343, %5374 ]
  %5379 = phi float [ %5778, %5775 ], [ %5344, %5374 ]
  %5380 = phi float [ %5779, %5775 ], [ %5345, %5374 ]
  %5381 = phi float [ %5780, %5775 ], [ %5346, %5374 ]
  %5382 = phi float [ %5781, %5775 ], [ %5347, %5374 ]
  %5383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.i32 %5383, 0
  %5385 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5358, i32 %5384, i32 %5376)  ; UMad(a,b,c)
  %5386 = shl i32 %5385, 2
  %5387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5386, i32 undef)  ; BufferLoad(srv,index,wot)
  %5388 = extractvalue %dx.types.ResRet.i32 %5387, 0
  %5389 = shl i32 %5376, 5
  %5390 = sub nsw i32 %5368, %5389
  %5391 = call i32 @dx.op.binary.i32(i32 37, i32 %5390, i32 0)  ; IMax(a,b)
  %5392 = call i32 @dx.op.binary.i32(i32 38, i32 %5391, i32 31)  ; IMin(a,b)
  %5393 = sub nsw i32 1, %5368
  %5394 = add nsw i32 %5393, %5369
  %5395 = call i32 @dx.op.binary.i32(i32 37, i32 %5394, i32 0)  ; IMax(a,b)
  %5396 = call i32 @dx.op.binary.i32(i32 38, i32 %5395, i32 32)  ; IMin(a,b)
  %5397 = and i32 %5396, 31
  %5398 = shl i32 -1, %5397
  %5399 = xor i32 %5398, -1
  %5400 = and i32 %5392, 31
  %5401 = shl i32 %5399, %5400
  %5402 = icmp eq i32 %5396, 32
  %5403 = select i1 %5402, i32 -1, i32 %5401
  %5404 = and i32 %5403, %5388
  %5405 = icmp eq i32 %5404, 0
  br i1 %5405, label %5775, label %5406

; <label>:5406                                    ; preds = %5375
  br label %5407

; <label>:5407                                    ; preds = %5487, %5406
  %5408 = phi i32 [ %5419, %5487 ], [ %5404, %5406 ]
  %5409 = phi float [ %5488, %5487 ], [ %5377, %5406 ]
  %5410 = phi float [ %5489, %5487 ], [ %5378, %5406 ]
  %5411 = phi float [ %5490, %5487 ], [ %5379, %5406 ]
  %5412 = phi float [ %5491, %5487 ], [ %5380, %5406 ]
  %5413 = phi float [ %5492, %5487 ], [ %5381, %5406 ]
  %5414 = phi float [ %5493, %5487 ], [ %5382, %5406 ]
  %5415 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5408)  ; FirstbitLo(value)
  %5416 = add i32 %5415, %5389
  %5417 = and i32 %5415, 31
  %5418 = shl i32 1, %5417
  %5419 = xor i32 %5418, %5408
  %5420 = mul i32 %5416, 112
  %5421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.ResRet.f32 %5421, 2
  %5425 = or i32 %5420, 12
  %5426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.f32 %5426, 0
  %5428 = add i32 %5420, 44
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = add i32 %5420, 48
  %5432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5431, i32 undef)  ; BufferLoad(srv,index,wot)
  %5433 = extractvalue %dx.types.ResRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.ResRet.f32 %5432, 1
  %5435 = extractvalue %dx.types.ResRet.f32 %5432, 2
  %5436 = add i32 %5420, 80
  %5437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 1
  %5439 = extractvalue %dx.types.ResRet.f32 %5437, 2
  %5440 = call float @dx.op.dot3.f32(i32 55, float %5422, float %5423, float %5424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5441 = select i1 %176, float %5438, float %5422
  %5442 = select i1 %176, float %5440, float %5423
  %5443 = select i1 %176, float %5439, float %5424
  %5444 = fsub fast float %5433, %134
  %5445 = fsub fast float %5434, %135
  %5446 = fsub fast float %5435, %136
  %5447 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5446, float %5444, float %5445, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = call float @dx.op.unary.f32(i32 24, float %5447)  ; Sqrt(value)
  %5449 = fdiv fast float 1.000000e+00, %5448
  %5450 = fmul fast float %5449, %5444
  %5451 = fmul fast float %5449, %5445
  %5452 = fmul fast float %5449, %5446
  %5453 = fadd fast float %5448, %5427
  %5454 = fdiv fast float 1.000000e+00, %5453
  %5455 = fmul float %5430, %5454
  %5456 = fmul float %5455, %5455
  %5457 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5458 = and i32 %5418, %5404
  %5459 = icmp eq i32 %5458, 0
  br i1 %5459, label %5482, label %5460, !dx.controlflow.hints !76

; <label>:5460                                    ; preds = %5407
  %5461 = lshr i32 %5352, 5
  %5462 = lshr i32 %5353, 5
  %5463 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5461, i32 %5462, i32 %5416, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5464 = extractvalue %dx.types.ResRet.i32 %5463, 0
  %5465 = and i32 %5464, 3
  %5466 = icmp eq i32 %5465, 0
  %5467 = select i1 %5466, float 1.000000e+00, float 0.000000e+00
  %5468 = icmp eq i32 %5465, 3
  br i1 %5468, label %5469, label %5482

; <label>:5469                                    ; preds = %5460
  %5470 = lshr i32 %5464, 10
  %5471 = and i32 %5470, 8160
  %5472 = and i32 %5353, 31
  %5473 = or i32 %5471, %5472
  %5474 = lshr i32 %5464, 1
  %5475 = and i32 %5474, 16352
  %5476 = and i32 %5352, 31
  %5477 = or i32 %5475, %5476
  %5478 = lshr i32 %5464, 23
  %5479 = and i32 %5478, 255
  %5480 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5477, i32 %5473, i32 %5479, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  br label %5482

; <label>:5482                                    ; preds = %5469, %5460, %5407
  %5483 = phi float [ %5481, %5469 ], [ %5467, %5460 ], [ 0.000000e+00, %5407 ]
  %5484 = call float @dx.op.binary.f32(i32 36, float %5483, float %5483)  ; FMin(a,b)
  %5485 = call float @dx.op.binary.f32(i32 36, float %5483, float %5484)  ; FMin(a,b)
  %5486 = fcmp fast ogt float %5485, 0.000000e+00
  br i1 %5486, label %5495, label %5487, !dx.controlflow.hints !77

; <label>:5487                                    ; preds = %5731, %5482
  %5488 = phi float [ %5409, %5482 ], [ %5771, %5731 ]
  %5489 = phi float [ %5410, %5482 ], [ %5772, %5731 ]
  %5490 = phi float [ %5411, %5482 ], [ %5773, %5731 ]
  %5491 = phi float [ %5412, %5482 ], [ %5765, %5731 ]
  %5492 = phi float [ %5413, %5482 ], [ %5766, %5731 ]
  %5493 = phi float [ %5414, %5482 ], [ %5767, %5731 ]
  %5494 = icmp eq i32 %5408, %5418
  br i1 %5494, label %5774, label %5407

; <label>:5495                                    ; preds = %5482
  %5496 = fmul fast float %5483, %5441
  %5497 = fmul fast float %5483, %5442
  %5498 = fmul fast float %5483, %5443
  %5499 = fsub fast float %5435, %4552
  %5500 = fcmp fast ogt float %5499, 0.000000e+00
  %5501 = fsub fast float %136, %4552
  %5502 = fcmp fast ogt float %5501, 0.000000e+00
  %5503 = xor i1 %5502, %5500
  %5504 = fsub fast float %4552, %5435
  %5505 = fmul fast float %5504, 2.000000e+00
  %5506 = fadd fast float %5505, %5435
  %5507 = select i1 %5503, float %5435, float %5506
  %5508 = fsub fast float %5507, %136
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5508, float %5444, float %5445, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = call float @dx.op.unary.f32(i32 25, float %5509)  ; Rsqrt(value)
  %5511 = fmul fast float %5510, %5444
  %5512 = fmul fast float %5510, %5445
  %5513 = fmul fast float %5510, %5508
  %5514 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4560)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fdiv fast float 1.000000e+00, %5515
  %5517 = fmul fast float %5516, %5514
  %5518 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5501, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = fcmp fast ogt float %5518, 0.000000e+00
  %5520 = fcmp fast olt float %5518, 0.000000e+00
  %5521 = zext i1 %5519 to i32
  %5522 = zext i1 %5520 to i32
  %5523 = sub nsw i32 %5521, %5522
  %5524 = sitofp i32 %5523 to float
  %5525 = fsub fast float %5507, %4552
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5444, float %5445, float %5525, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = fcmp fast ogt float %5526, 0.000000e+00
  %5528 = fcmp fast olt float %5526, 0.000000e+00
  %5529 = zext i1 %5527 to i32
  %5530 = zext i1 %5528 to i32
  %5531 = sub nsw i32 %5529, %5530
  %5532 = sitofp i32 %5531 to float
  %5533 = fcmp fast une float %5524, %5532
  br i1 %5533, label %5534, label %5544

; <label>:5534                                    ; preds = %5495
  %5535 = fmul fast float %5517, %5513
  %5536 = fmul fast float %5517, %5512
  %5537 = fmul fast float %5517, %5511
  %5538 = fmul fast float %5537, %5537
  %5539 = fmul fast float %5536, %5536
  %5540 = fadd fast float %5538, %5539
  %5541 = fmul fast float %5535, %5535
  %5542 = fadd fast float %5540, %5541
  %5543 = call float @dx.op.unary.f32(i32 24, float %5542)  ; Sqrt(value)
  br label %5556

; <label>:5544                                    ; preds = %5495
  %5545 = icmp slt i32 %5523, 0
  br i1 %5545, label %5546, label %5556

; <label>:5546                                    ; preds = %5544
  %5547 = fsub fast float %134, %5433
  %5548 = fsub fast float %135, %5434
  %5549 = fsub fast float %136, %5507
  %5550 = fmul fast float %5547, %5547
  %5551 = fmul fast float %5548, %5548
  %5552 = fadd fast float %5550, %5551
  %5553 = fmul fast float %5549, %5549
  %5554 = fadd fast float %5552, %5553
  %5555 = call float @dx.op.unary.f32(i32 24, float %5554)  ; Sqrt(value)
  br label %5556

; <label>:5556                                    ; preds = %5546, %5544, %5534
  %5557 = phi float [ %5543, %5534 ], [ %5555, %5546 ], [ 0.000000e+00, %5544 ]
  %5558 = and i1 %5502, %5500
  %5559 = fsub fast float -0.000000e+00, %5557
  %5560 = select i1 %5558, float -0.000000e+00, float %5559
  %5561 = fmul fast float %4553, 0x3FF7154760000000
  %5562 = fmul fast float %5561, %5560
  %5563 = fmul fast float %4554, 0x3FF7154760000000
  %5564 = fmul fast float %5563, %5560
  %5565 = fmul fast float %4555, 0x3FF7154760000000
  %5566 = fmul fast float %5565, %5560
  %5567 = call float @dx.op.unary.f32(i32 21, float %5562)  ; Exp(value)
  %5568 = call float @dx.op.unary.f32(i32 21, float %5564)  ; Exp(value)
  %5569 = call float @dx.op.unary.f32(i32 21, float %5566)  ; Exp(value)
  %5570 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5571 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5572 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5573 = fmul fast float %5496, %5570
  %5574 = fmul fast float %5497, %5571
  %5575 = fmul fast float %5498, %5572
  %5576 = fsub fast float %5450, %4752
  %5577 = fsub fast float %5451, %4751
  %5578 = fsub fast float %5452, %4750
  %5579 = call float @dx.op.dot3.f32(i32 55, float %5576, float %5577, float %5578, float %5576, float %5577, float %5578)  ; Dot3(ax,ay,az,bx,by,bz)
  %5580 = call float @dx.op.unary.f32(i32 25, float %5579)  ; Rsqrt(value)
  %5581 = fmul fast float %5580, %5576
  %5582 = fmul fast float %5580, %5577
  %5583 = fmul fast float %5580, %5578
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5451, float %5452, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4748, float %4747, float %5581, float %5582, float %5583)  ; Dot3(ax,ay,az,bx,by,bz)
  %5586 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5587 = fmul fast float %5586, %5457
  %5588 = fmul fast float %5586, %5586
  %5589 = fmul fast float %5588, %4779
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fmul fast float %5587, %5590
  %5592 = bitcast float %5447 to i32
  %5593 = ashr i32 %5592, 1
  %5594 = sub nsw i32 1597463007, %5593
  %5595 = bitcast i32 %5594 to float
  %5596 = fmul fast float %5595, %5444
  %5597 = fmul fast float %5595, %5445
  %5598 = fmul fast float %5595, %5446
  %5599 = fsub fast float %5596, %4752
  %5600 = fsub fast float %5597, %4751
  %5601 = fsub fast float %5598, %4750
  %5602 = call float @dx.op.dot3.f32(i32 55, float %5599, float %5600, float %5601, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5603 = call float @dx.op.unary.f32(i32 25, float %5602)  ; Rsqrt(value)
  %5604 = fmul fast float %5599, %5603
  %5605 = fmul fast float %5600, %5603
  %5606 = fmul fast float %5601, %5603
  %5607 = call float @dx.op.dot3.f32(i32 55, float %4759, float %4760, float %4761, float %5604, float %5605, float %5606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fmul fast float %5607, %5607
  %5609 = call float @dx.op.unary.f32(i32 6, float %5584)  ; FAbs(value)
  %5610 = fsub fast float 1.000000e+00, %4762
  %5611 = call float @dx.op.binary.f32(i32 35, float %5610, float 0x3F847AE140000000)  ; FMax(a,b)
  %5612 = fmul fast float %5611, %5611
  %5613 = fmul fast float %5612, %5612
  %5614 = fsub fast float 1.000000e+00, %5613
  %5615 = fmul fast float %4766, %4766
  %5616 = fmul fast float %5615, %5614
  %5617 = fadd fast float %5616, %5613
  %5618 = bitcast float %5617 to i32
  %5619 = ashr i32 %5618, 1
  %5620 = add nsw i32 %5619, 532487669
  %5621 = bitcast i32 %5620 to float
  %5622 = fadd fast float %5621, %4766
  %5623 = fmul fast float %5613, %5608
  %5624 = fsub fast float 1.000000e+00, %5608
  %5625 = fadd fast float %5624, %5623
  %5626 = fmul fast float %5609, %5609
  %5627 = fmul fast float %5626, %5614
  %5628 = fadd fast float %5627, %5613
  %5629 = bitcast float %5628 to i32
  %5630 = ashr i32 %5629, 1
  %5631 = add nsw i32 %5630, 532487669
  %5632 = bitcast i32 %5631 to float
  %5633 = fadd fast float %5632, %5609
  %5634 = fmul fast float %5625, %5625
  %5635 = fmul fast float %5634, %5622
  %5636 = fmul fast float %5635, %5633
  %5637 = fdiv fast float 1.000000e+00, %5636
  %5638 = bitcast float %5613 to i32
  %5639 = sitofp i32 %5638 to float
  %5640 = fmul fast float %5639, 0x3FE7F73180000000
  %5641 = fadd fast float %5640, 0x41AFE27C40000000
  %5642 = fptosi float %5641 to i32
  %5643 = bitcast i32 %5642 to float
  %5644 = fmul fast float %5430, 0x3FD80E9D60000000
  %5645 = fmul fast float %5644, %5595
  %5646 = fadd fast float %5643, %5645
  %5647 = bitcast float %5646 to i32
  %5648 = sub nsw i32 2129859010, %5647
  %5649 = bitcast i32 %5648 to float
  %5650 = fmul fast float %5613, %5637
  %5651 = fmul fast float %5650, %5643
  %5652 = fmul fast float %5651, %5649
  %5653 = call float @dx.op.unary.f32(i32 6, float %5585)  ; FAbs(value)
  %5654 = fsub fast float 1.000000e+00, %5653
  %5655 = bitcast float %5654 to i32
  %5656 = sitofp i32 %5655 to float
  %5657 = fmul fast float %5656, 5.000000e+00
  %5658 = fadd fast float %5657, 0xC1EFBF8940000000
  %5659 = fptosi float %5658 to i32
  %5660 = bitcast i32 %5659 to float
  %5661 = fsub fast float 1.000000e+00, %4753
  %5662 = fsub fast float 1.000000e+00, %4754
  %5663 = fsub fast float 1.000000e+00, %4764
  %5664 = fmul fast float %5660, %5661
  %5665 = fmul fast float %5660, %5662
  %5666 = fmul fast float %5660, %5663
  %5667 = fadd fast float %5664, %4753
  %5668 = fadd fast float %5665, %4754
  %5669 = fadd fast float %5666, %4764
  br i1 %5026, label %5670, label %5693

; <label>:5670                                    ; preds = %5556
  %5671 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4151, float %5653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5672 = extractvalue %dx.types.ResRet.f32 %5671, 0
  %5673 = extractvalue %dx.types.ResRet.f32 %5671, 1
  %5674 = extractvalue %dx.types.ResRet.f32 %5671, 2
  %5675 = fadd fast float %5672, -5.000000e-01
  %5676 = fadd fast float %5673, -5.000000e-01
  %5677 = fadd fast float %5674, -5.000000e-01
  %5678 = fmul fast float %4753, 4.000000e+00
  %5679 = fmul fast float %5678, %5661
  %5680 = fmul fast float %5679, %5675
  %5681 = fmul fast float %4754, 4.000000e+00
  %5682 = fmul fast float %5681, %5662
  %5683 = fmul fast float %5682, %5676
  %5684 = fmul fast float %4764, 4.000000e+00
  %5685 = fmul fast float %5684, %5663
  %5686 = fmul fast float %5685, %5677
  %5687 = fadd fast float %5680, %5667
  %5688 = fadd fast float %5683, %5668
  %5689 = fadd fast float %5686, %5669
  %5690 = call float @dx.op.unary.f32(i32 7, float %5687)  ; Saturate(value)
  %5691 = call float @dx.op.unary.f32(i32 7, float %5688)  ; Saturate(value)
  %5692 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  br label %5693

; <label>:5693                                    ; preds = %5670, %5556
  %5694 = phi float [ %5690, %5670 ], [ %5667, %5556 ]
  %5695 = phi float [ %5691, %5670 ], [ %5668, %5556 ]
  %5696 = phi float [ %5692, %5670 ], [ %5669, %5556 ]
  %5697 = fmul fast float %5584, 9.843750e-01
  %5698 = fadd fast float %5697, 7.812500e-03
  %5699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5698, float %5016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5700 = extractvalue %dx.types.ResRet.f32 %5699, 2
  %5701 = extractvalue %dx.types.ResRet.f32 %5699, 3
  %5702 = fmul fast float %5700, %4753
  %5703 = fmul fast float %5700, %4754
  %5704 = fmul fast float %5700, %4764
  %5705 = fadd fast float %5702, %5701
  %5706 = fadd fast float %5703, %5701
  %5707 = fadd fast float %5704, %5701
  br i1 %5026, label %5708, label %5731

; <label>:5708                                    ; preds = %5693
  %5709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4151, float %5584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.ResRet.f32 %5709, 1
  %5712 = extractvalue %dx.types.ResRet.f32 %5709, 2
  %5713 = fadd fast float %5710, -5.000000e-01
  %5714 = fadd fast float %5711, -5.000000e-01
  %5715 = fadd fast float %5712, -5.000000e-01
  %5716 = fmul fast float %4753, 4.000000e+00
  %5717 = fmul fast float %5716, %5661
  %5718 = fmul fast float %5717, %5713
  %5719 = fmul fast float %4754, 4.000000e+00
  %5720 = fmul fast float %5719, %5662
  %5721 = fmul fast float %5720, %5714
  %5722 = fmul fast float %4764, 4.000000e+00
  %5723 = fmul fast float %5722, %5663
  %5724 = fmul fast float %5723, %5715
  %5725 = fadd fast float %5718, %5705
  %5726 = fadd fast float %5721, %5706
  %5727 = fadd fast float %5724, %5707
  %5728 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5729 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  br label %5731

; <label>:5731                                    ; preds = %5708, %5693
  %5732 = phi float [ %5728, %5708 ], [ %5705, %5693 ]
  %5733 = phi float [ %5729, %5708 ], [ %5706, %5693 ]
  %5734 = phi float [ %5730, %5708 ], [ %5707, %5693 ]
  %5735 = call float @dx.op.binary.f32(i32 35, float %5733, float %5734)  ; FMax(a,b)
  %5736 = call float @dx.op.binary.f32(i32 35, float %5732, float %5735)  ; FMax(a,b)
  %5737 = fsub fast float 1.000000e+00, %5736
  %5738 = fmul fast float %5694, %5652
  %5739 = fmul fast float %5695, %5652
  %5740 = fmul fast float %5696, %5652
  %5741 = fsub fast float 1.000000e+00, %5585
  %5742 = bitcast float %5741 to i32
  %5743 = sitofp i32 %5742 to float
  %5744 = fmul fast float %5743, 5.000000e+00
  %5745 = fadd fast float %5744, 0xC1EFBF8940000000
  %5746 = fptosi float %5745 to i32
  %5747 = bitcast i32 %5746 to float
  %5748 = fmul fast float %5747, %4152
  %5749 = fmul fast float %5737, %5748
  %5750 = fmul fast float %5749, %5076
  %5751 = fmul fast float %5749, %5077
  %5752 = fmul fast float %5749, %5078
  %5753 = fadd fast float %5750, %5738
  %5754 = fadd fast float %5751, %5739
  %5755 = fadd fast float %5752, %5740
  %5756 = fmul fast float %5573, %4148
  %5757 = fmul fast float %5756, %5591
  %5758 = fmul fast float %5757, %5737
  %5759 = fmul fast float %5574, %4148
  %5760 = fmul fast float %5759, %5591
  %5761 = fmul fast float %5760, %5737
  %5762 = fmul fast float %5575, %4148
  %5763 = fmul fast float %5762, %5591
  %5764 = fmul fast float %5763, %5737
  %5765 = fadd fast float %5758, %5412
  %5766 = fadd fast float %5761, %5413
  %5767 = fadd fast float %5764, %5414
  %5768 = fmul fast float %5757, %5753
  %5769 = fmul fast float %5760, %5754
  %5770 = fmul fast float %5763, %5755
  %5771 = fadd fast float %5768, %5409
  %5772 = fadd fast float %5769, %5410
  %5773 = fadd fast float %5770, %5411
  br label %5487

; <label>:5774                                    ; preds = %5487
  br label %5775

; <label>:5775                                    ; preds = %5774, %5375
  %5776 = phi float [ %5377, %5375 ], [ %5488, %5774 ]
  %5777 = phi float [ %5378, %5375 ], [ %5489, %5774 ]
  %5778 = phi float [ %5379, %5375 ], [ %5490, %5774 ]
  %5779 = phi float [ %5380, %5375 ], [ %5491, %5774 ]
  %5780 = phi float [ %5381, %5375 ], [ %5492, %5774 ]
  %5781 = phi float [ %5382, %5375 ], [ %5493, %5774 ]
  %5782 = add i32 %5376, 1
  %5783 = icmp ugt i32 %5782, %5372
  br i1 %5783, label %5784, label %5375

; <label>:5784                                    ; preds = %5775
  br label %5785

; <label>:5785                                    ; preds = %5784, %5351, %5341
  %5786 = phi float [ %5342, %5341 ], [ %5342, %5351 ], [ %5776, %5784 ]
  %5787 = phi float [ %5343, %5341 ], [ %5343, %5351 ], [ %5777, %5784 ]
  %5788 = phi float [ %5344, %5341 ], [ %5344, %5351 ], [ %5778, %5784 ]
  %5789 = phi float [ %5345, %5341 ], [ %5345, %5351 ], [ %5779, %5784 ]
  %5790 = phi float [ %5346, %5341 ], [ %5346, %5351 ], [ %5780, %5784 ]
  %5791 = phi float [ %5347, %5341 ], [ %5347, %5351 ], [ %5781, %5784 ]
  %5792 = call float @dx.op.unary.f32(i32 24, float %4756)  ; Sqrt(value)
  %5793 = call float @dx.op.unary.f32(i32 24, float %4757)  ; Sqrt(value)
  %5794 = call float @dx.op.unary.f32(i32 24, float %4758)  ; Sqrt(value)
  %5795 = fmul fast float %5792, %5789
  %5796 = fmul fast float %5793, %5790
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 0
  br i1 %176, label %5799, label %5819

; <label>:5799                                    ; preds = %5785
  %5800 = fadd fast float %5791, %4154
  %5801 = fmul fast float %5800, %4155
  %5802 = fsub fast float 1.000000e+00, %4155
  %5803 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 3
  %5806 = fmul fast float %5805, %5803
  %5807 = fadd fast float %5806, %5801
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 0
  %5810 = fmul fast float %5809, %5082
  %5811 = fsub fast float %5807, %5810
  %5812 = fadd fast float %5796, %5795
  %5813 = fmul fast float %5798, %5812
  %5814 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5815 = fsub fast float %5811, %5814
  %5816 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5817 = fmul fast float %5815, %5816
  %5818 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  br label %5835

; <label>:5819                                    ; preds = %5785
  %5820 = fmul fast float %5794, %5791
  %5821 = fmul fast float %5798, %5795
  %5822 = fmul fast float %5798, %5796
  %5823 = fmul fast float %5820, %5798
  %5824 = add i32 %35, 356
  %5825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5824, i32 undef)  ; BufferLoad(srv,index,wot)
  %5826 = extractvalue %dx.types.ResRet.i32 %5825, 0
  %5827 = and i32 %5826, 32
  %5828 = icmp eq i32 %5827, 0
  br i1 %5828, label %5835, label %5829

; <label>:5829                                    ; preds = %5819
  %5830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5831 = extractvalue %dx.types.CBufRet.f32 %5830, 0
  %5832 = fmul fast float %5831, 0x3FE99999A0000000
  %5833 = fadd fast float %5831, %5821
  %5834 = fadd fast float %5832, %5823
  br label %5835

; <label>:5835                                    ; preds = %5829, %5819, %5799
  %5836 = phi float [ %5813, %5799 ], [ %5833, %5829 ], [ %5821, %5819 ]
  %5837 = phi float [ %5818, %5799 ], [ %5822, %5829 ], [ %5822, %5819 ]
  %5838 = phi float [ 1.000000e+00, %5799 ], [ %5834, %5829 ], [ %5823, %5819 ]
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = fmul fast float %5840, %5787
  %5842 = fmul fast float %5840, %5788
  %5843 = fadd fast float %5787, %5786
  %5844 = select i1 %176, float %5843, float %5786
  %5845 = fmul float %5844, %5840
  %5846 = select i1 %176, float 0.000000e+00, float %5841
  %5847 = select i1 %176, float 0.000000e+00, float %5842
  %5848 = fmul fast float %5836, %5792
  %5849 = fmul fast float %5837, %5793
  %5850 = fmul fast float %5838, %5794
  %5851 = fadd fast float %5845, %5848
  %5852 = fadd fast float %5846, %5849
  %5853 = fadd fast float %5847, %5850
  %5854 = select i1 %176, float %5837, float %5852
  %5855 = select i1 %176, float %5838, float %5853
  %5856 = call float @dx.op.binary.f32(i32 36, float %5851, float 3.225500e+04)  ; FMin(a,b)
  %5857 = call float @dx.op.binary.f32(i32 36, float %5854, float 3.225500e+04)  ; FMin(a,b)
  %5858 = call float @dx.op.binary.f32(i32 36, float %5855, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5856)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5857)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5858)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

