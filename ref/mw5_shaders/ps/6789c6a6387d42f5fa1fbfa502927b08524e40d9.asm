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
; shader hash: 39c71c43622620a78625e3bfddf305a3
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
  %870 = add i32 %35, 472
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
  br i1 %349, label %1894, label %915

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
  br i1 %924, label %1894, label %925

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
  br i1 %1213, label %1894, label %1214

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
  %1565 = and i32 %1564, 1024
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1597, label %1567

; <label>:1567                                    ; preds = %1559
  %1568 = add i32 %35, 168
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1568, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = fmul fast float %1572, 0x3F70101020000000
  %1574 = lshr i32 %1570, 8
  %1575 = and i32 %1574, 255
  %1576 = uitofp i32 %1575 to float
  %1577 = fmul fast float %1576, 0x3F70101020000000
  %1578 = lshr i32 %1570, 16
  %1579 = and i32 %1578, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = fmul fast float %1580, 0x3F70101020000000
  %1582 = fmul fast float %1573, %1573
  %1583 = fmul fast float %1577, %1577
  %1584 = fmul fast float %1581, %1581
  %1585 = add i32 %35, 460
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = add i32 %1587, 0
  %1589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1589, %dx.types.Handle %72, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 0
  %1592 = extractvalue %dx.types.ResRet.f32 %1590, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1590, 2
  %1594 = fmul fast float %1582, %1591
  %1595 = fmul fast float %1583, %1592
  %1596 = fmul fast float %1584, %1593
  br label %1597

; <label>:1597                                    ; preds = %1567, %1559
  %1598 = phi float [ %1594, %1567 ], [ 0.000000e+00, %1559 ]
  %1599 = phi float [ %1595, %1567 ], [ 0.000000e+00, %1559 ]
  %1600 = phi float [ %1596, %1567 ], [ 0.000000e+00, %1559 ]
  %1601 = fcmp fast ogt float %1598, 0.000000e+00
  %1602 = fcmp fast ogt float %1599, 0.000000e+00
  %1603 = fcmp fast ogt float %1600, 0.000000e+00
  %1604 = call float @dx.op.unary.f32(i32 23, float %1598)  ; Log(value)
  %1605 = call float @dx.op.unary.f32(i32 23, float %1599)  ; Log(value)
  %1606 = call float @dx.op.unary.f32(i32 23, float %1600)  ; Log(value)
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = lshr i32 %1608, 7
  %1610 = and i32 %1609, 32752
  %1611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1610)  ; LegacyF16ToF32(value)
  %1612 = fmul fast float %1604, 0xBFE62E4300000000
  %1613 = fmul fast float %1612, %1611
  %1614 = fmul fast float %1605, 0xBFE62E4300000000
  %1615 = fmul fast float %1614, %1611
  %1616 = fmul fast float %1606, 0xBFE62E4300000000
  %1617 = fmul fast float %1616, %1611
  %1618 = select i1 %1601, float %1613, float 1.270000e+02
  %1619 = select i1 %1602, float %1615, float 1.270000e+02
  %1620 = select i1 %1603, float %1617, float 1.270000e+02
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = and i32 %1622, 26624
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1661, label %1625

; <label>:1625                                    ; preds = %1597
  %1626 = add i32 %35, 476
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = add i32 %1628, 0
  %1630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1630, %dx.types.Handle %72, float %1024, float %1025, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = and i32 %1634, 1048576
  %1636 = icmp ne i32 %1635, 0
  %1637 = and i32 %1634, 2048
  %1638 = icmp eq i32 %1637, 0
  br i1 %1638, label %1648, label %1639

; <label>:1639                                    ; preds = %1625
  %1640 = extractvalue %dx.types.ResRet.f32 %1631, 3
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = shl i32 %1642, 4
  %1644 = and i32 %1643, 32752
  %1645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1644)  ; LegacyF16ToF32(value)
  %1646 = fmul fast float %1645, %1640
  %1647 = call float @dx.op.binary.f32(i32 35, float %1646, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1648

; <label>:1648                                    ; preds = %1639, %1625
  %1649 = phi float [ %1647, %1639 ], [ 0x3F70101020000000, %1625 ]
  %1650 = and i32 %1634, 16384
  %1651 = icmp eq i32 %1650, 0
  br i1 %1651, label %1661, label %1652

; <label>:1652                                    ; preds = %1648
  %1653 = add i32 %35, 112
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = lshr i32 %1655, 24
  %1657 = uitofp i32 %1656 to float
  %1658 = fmul fast float %1632, 0x3F70101020000000
  %1659 = select i1 %1636, float 0x3F70101020000000, float %1658
  %1660 = fmul fast float %1659, %1657
  br label %1661

; <label>:1661                                    ; preds = %1652, %1648, %1597
  %1662 = phi float [ %1649, %1652 ], [ %1649, %1648 ], [ 0x3F70101020000000, %1597 ]
  %1663 = phi float [ %1660, %1652 ], [ 0.000000e+00, %1648 ], [ 0.000000e+00, %1597 ]
  %1664 = add i32 %35, 112
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 255
  %1668 = uitofp i32 %1667 to float
  %1669 = lshr i32 %1666, 8
  %1670 = and i32 %1669, 255
  %1671 = uitofp i32 %1670 to float
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1432, float %1433, float %1434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = fmul fast float %1671, %1672
  %1674 = fadd fast float %1673, %1668
  %1675 = fmul fast float %1674, 0x3F70101020000000
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  br i1 %916, label %1677, label %1712

; <label>:1677                                    ; preds = %1661
  %1678 = fmul fast float %1662, 2.000000e+00
  %1679 = fcmp fast olt float %1618, 1.270000e+02
  %1680 = fcmp fast olt float %1619, 1.270000e+02
  %1681 = fcmp fast olt float %1620, 1.270000e+02
  %1682 = fmul fast float %1618, 0xBFF7154760000000
  %1683 = fmul fast float %1682, %1678
  %1684 = fmul fast float %1619, 0xBFF7154760000000
  %1685 = fmul fast float %1684, %1678
  %1686 = fmul fast float %1620, 0xBFF7154760000000
  %1687 = fmul fast float %1686, %1678
  %1688 = call float @dx.op.unary.f32(i32 21, float %1683)  ; Exp(value)
  %1689 = call float @dx.op.unary.f32(i32 21, float %1685)  ; Exp(value)
  %1690 = call float @dx.op.unary.f32(i32 21, float %1687)  ; Exp(value)
  %1691 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1692 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1693 = call float @dx.op.unary.f32(i32 7, float %1690)  ; Saturate(value)
  %1694 = fadd fast float %1691, -1.000000e+00
  %1695 = select i1 %1679, float %1694, float -1.000000e+00
  %1696 = fadd fast float %1692, -1.000000e+00
  %1697 = select i1 %1680, float %1696, float -1.000000e+00
  %1698 = fadd fast float %1693, -1.000000e+00
  %1699 = select i1 %1681, float %1698, float -1.000000e+00
  %1700 = fmul fast float %1695, %1212
  %1701 = fmul fast float %1697, %1212
  %1702 = fmul fast float %1699, %1212
  %1703 = fadd fast float %1700, 1.000000e+00
  %1704 = fadd fast float %1701, 1.000000e+00
  %1705 = fadd fast float %1702, 1.000000e+00
  %1706 = fmul fast float %1703, %903
  %1707 = fmul fast float %1704, %904
  %1708 = fmul fast float %1705, %905
  %1709 = fmul fast float %1703, %906
  %1710 = fmul fast float %1704, %907
  %1711 = fmul fast float %1705, %908
  br label %1712

; <label>:1712                                    ; preds = %1677, %1661
  %1713 = phi float [ %1706, %1677 ], [ %903, %1661 ]
  %1714 = phi float [ %1707, %1677 ], [ %904, %1661 ]
  %1715 = phi float [ %1708, %1677 ], [ %905, %1661 ]
  %1716 = phi float [ %1709, %1677 ], [ %906, %1661 ]
  %1717 = phi float [ %1710, %1677 ], [ %907, %1661 ]
  %1718 = phi float [ %1711, %1677 ], [ %908, %1661 ]
  %1719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %1720 = extractvalue %dx.types.ResRet.i32 %1719, 0
  %1721 = and i32 %1720, 3
  %1722 = icmp eq i32 %1721, 3
  br i1 %1722, label %1801, label %1723

; <label>:1723                                    ; preds = %1712
  %1724 = and i32 %1720, 16
  %1725 = icmp ne i32 %1724, 0
  %1726 = select i1 %1725, float %1212, float 0.000000e+00
  %1727 = icmp eq i32 %1721, 0
  br i1 %1727, label %1728, label %1756

; <label>:1728                                    ; preds = %1723
  %1729 = and i32 %1720, 64
  %1730 = icmp ne i32 %1729, 0
  %1731 = select i1 %1730, float %1212, float 0.000000e+00
  %1732 = fsub fast float %1432, %1713
  %1733 = fsub fast float %1433, %1714
  %1734 = fsub fast float %1434, %1715
  %1735 = fmul fast float %1726, %1732
  %1736 = fmul fast float %1726, %1733
  %1737 = fmul fast float %1726, %1734
  %1738 = fadd fast float %1735, %1713
  %1739 = fadd fast float %1736, %1714
  %1740 = fadd fast float %1737, %1715
  %1741 = fsub fast float %1418, %909
  %1742 = fmul fast float %1726, %1741
  %1743 = fadd fast float %1742, %909
  %1744 = fsub fast float %1560, %1716
  %1745 = fsub fast float %1561, %1717
  %1746 = fsub fast float %1562, %1718
  %1747 = fmul fast float %1731, %1744
  %1748 = fmul fast float %1731, %1745
  %1749 = fmul fast float %1731, %1746
  %1750 = fadd fast float %1747, %1716
  %1751 = fadd fast float %1748, %1717
  %1752 = fadd fast float %1749, %1718
  %1753 = fsub fast float %1676, %914
  %1754 = fmul fast float %1726, %1753
  %1755 = fadd fast float %1754, %914
  br label %1801

; <label>:1756                                    ; preds = %1723
  %1757 = icmp eq i32 %1721, 1
  br i1 %1757, label %1758, label %1771

; <label>:1758                                    ; preds = %1756
  %1759 = fadd fast float %1432, -1.000000e+00
  %1760 = fadd fast float %1433, -1.000000e+00
  %1761 = fadd fast float %1434, -1.000000e+00
  %1762 = fmul fast float %1726, %1759
  %1763 = fmul fast float %1726, %1760
  %1764 = fmul fast float %1726, %1761
  %1765 = fadd fast float %1762, 1.000000e+00
  %1766 = fadd fast float %1763, 1.000000e+00
  %1767 = fadd fast float %1764, 1.000000e+00
  %1768 = fmul fast float %1765, %1713
  %1769 = fmul fast float %1766, %1714
  %1770 = fmul fast float %1767, %1715
  br label %1801

; <label>:1771                                    ; preds = %1756
  %1772 = icmp eq i32 %1721, 2
  br i1 %1772, label %1773, label %1801

; <label>:1773                                    ; preds = %1771
  %1774 = call float @dx.op.unary.f32(i32 24, float %1432)  ; Sqrt(value)
  %1775 = call float @dx.op.unary.f32(i32 24, float %1433)  ; Sqrt(value)
  %1776 = call float @dx.op.unary.f32(i32 24, float %1434)  ; Sqrt(value)
  %1777 = fadd fast float %1774, -5.000000e-01
  %1778 = fadd fast float %1775, -5.000000e-01
  %1779 = fadd fast float %1776, -5.000000e-01
  %1780 = fmul fast float %1777, %1726
  %1781 = fmul fast float %1778, %1726
  %1782 = fmul fast float %1779, %1726
  %1783 = fadd fast float %1780, 5.000000e-01
  %1784 = fadd fast float %1781, 5.000000e-01
  %1785 = fadd fast float %1782, 5.000000e-01
  %1786 = fmul fast float %1783, 2.000000e+00
  %1787 = fsub fast float 1.000000e+00, %1786
  %1788 = fmul fast float %1787, %1713
  %1789 = fadd fast float %1788, %1786
  %1790 = fmul fast float %1789, %1713
  %1791 = fmul fast float %1784, 2.000000e+00
  %1792 = fsub fast float 1.000000e+00, %1791
  %1793 = fmul fast float %1792, %1714
  %1794 = fadd fast float %1793, %1791
  %1795 = fmul fast float %1794, %1714
  %1796 = fmul fast float %1785, 2.000000e+00
  %1797 = fsub fast float 1.000000e+00, %1796
  %1798 = fmul fast float %1797, %1715
  %1799 = fadd fast float %1798, %1796
  %1800 = fmul fast float %1799, %1715
  br label %1801

; <label>:1801                                    ; preds = %1773, %1771, %1758, %1728, %1712
  %1802 = phi float [ %1713, %1712 ], [ %1790, %1773 ], [ %1713, %1771 ], [ %1768, %1758 ], [ %1738, %1728 ]
  %1803 = phi float [ %1714, %1712 ], [ %1795, %1773 ], [ %1714, %1771 ], [ %1769, %1758 ], [ %1739, %1728 ]
  %1804 = phi float [ %1715, %1712 ], [ %1800, %1773 ], [ %1715, %1771 ], [ %1770, %1758 ], [ %1740, %1728 ]
  %1805 = phi float [ %1716, %1712 ], [ %1716, %1773 ], [ %1716, %1771 ], [ %1716, %1758 ], [ %1750, %1728 ]
  %1806 = phi float [ %1717, %1712 ], [ %1717, %1773 ], [ %1717, %1771 ], [ %1717, %1758 ], [ %1751, %1728 ]
  %1807 = phi float [ %1718, %1712 ], [ %1718, %1773 ], [ %1718, %1771 ], [ %1718, %1758 ], [ %1752, %1728 ]
  %1808 = phi float [ %909, %1712 ], [ %909, %1773 ], [ %909, %1771 ], [ %909, %1758 ], [ %1743, %1728 ]
  %1809 = phi float [ %914, %1712 ], [ %914, %1773 ], [ %914, %1771 ], [ %914, %1758 ], [ %1755, %1728 ]
  %1810 = and i32 %1720, 12
  %1811 = icmp eq i32 %1810, 12
  br i1 %1811, label %1894, label %1812

; <label>:1812                                    ; preds = %1801
  %1813 = and i32 %1720, 2097184
  %1814 = icmp eq i32 %1813, 2097184
  %1815 = select i1 %1814, float %1212, float 0.000000e+00
  %1816 = and i32 %1720, 4194336
  %1817 = icmp eq i32 %1816, 4194336
  %1818 = select i1 %1817, float %1212, float 0.000000e+00
  %1819 = and i32 %1720, 8388640
  %1820 = icmp eq i32 %1819, 8388640
  %1821 = select i1 %1820, float %1212, float 0.000000e+00
  %1822 = and i32 %1720, 16384
  %1823 = icmp ne i32 %1822, 0
  %1824 = select i1 %1823, float %1212, float 0.000000e+00
  %1825 = icmp eq i32 %1810, 0
  br i1 %1825, label %1826, label %1842

; <label>:1826                                    ; preds = %1812
  %1827 = fsub fast float %1513, %901
  %1828 = fsub fast float %1514, %902
  %1829 = fmul fast float %1815, %1827
  %1830 = fmul fast float %1815, %1828
  %1831 = fadd fast float %1829, %901
  %1832 = fadd fast float %1830, %902
  %1833 = fsub fast float %1515, %912
  %1834 = fmul fast float %1818, %1833
  %1835 = fadd fast float %1834, %912
  %1836 = fsub fast float %1512, %911
  %1837 = fmul fast float %1821, %1836
  %1838 = fadd fast float %1837, %911
  %1839 = fsub fast float %1663, %913
  %1840 = fmul fast float %1824, %1839
  %1841 = fadd fast float %1840, %913
  br label %1894

; <label>:1842                                    ; preds = %1812
  %1843 = icmp eq i32 %1810, 4
  br i1 %1843, label %1844, label %1878

; <label>:1844                                    ; preds = %1842
  %1845 = fmul fast float %1815, %1513
  %1846 = fmul fast float %1815, %1514
  %1847 = fadd fast float %1845, %901
  %1848 = fadd fast float %1846, %902
  %1849 = call float @dx.op.binary.f32(i32 36, float %912, float %1515)  ; FMin(a,b)
  %1850 = fsub fast float %1849, %912
  %1851 = fmul fast float %1850, %1818
  %1852 = fadd fast float %1851, %912
  %1853 = fadd fast float %1512, %911
  %1854 = fmul fast float %1853, 0x3FF337FAE0000000
  %1855 = fmul fast float %911, %911
  %1856 = fmul fast float %1512, %1512
  %1857 = fadd fast float %1856, %1855
  %1858 = fmul fast float %1857, 0x3FE5152B00000000
  %1859 = fmul fast float %911, 0xBFCC1F85E0000000
  %1860 = fmul fast float %1859, %1512
  %1861 = fadd fast float %1860, 0xBFE1363700000000
  %1862 = fadd fast float %1861, %1854
  %1863 = fsub fast float %1862, %1858
  %1864 = fmul fast float %1853, 0x3FBA6F0D00000000
  %1865 = fmul fast float %1857, 0x3FD0432880000000
  %1866 = fmul fast float %911, 0xBFEF110800000000
  %1867 = fmul fast float %1866, %1512
  %1868 = fadd fast float %1867, 1.000000e+00
  %1869 = fsub fast float %1868, %1864
  %1870 = fadd fast float %1869, %1865
  %1871 = fdiv fast float %1863, %1870
  %1872 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1873 = fsub fast float %1872, %911
  %1874 = fmul fast float %1873, %1821
  %1875 = fadd fast float %1874, %911
  %1876 = fmul fast float %1824, %1663
  %1877 = fadd fast float %1876, %913
  br label %1894

; <label>:1878                                    ; preds = %1842
  %1879 = icmp eq i32 %1810, 8
  br i1 %1879, label %1880, label %1894

; <label>:1880                                    ; preds = %1878
  %1881 = fmul fast float %1815, %1513
  %1882 = fmul fast float %1815, %1514
  %1883 = fadd fast float %1881, %901
  %1884 = fadd fast float %1882, %902
  %1885 = call float @dx.op.binary.f32(i32 36, float %912, float %1515)  ; FMin(a,b)
  %1886 = fsub fast float %1885, %912
  %1887 = fmul fast float %1886, %1818
  %1888 = fadd fast float %1887, %912
  %1889 = fsub fast float %1512, %911
  %1890 = fmul fast float %1821, %1889
  %1891 = fadd fast float %1890, %911
  %1892 = fmul fast float %1824, %1663
  %1893 = fadd fast float %1892, %913
  br label %1894

; <label>:1894                                    ; preds = %1880, %1878, %1844, %1826, %1801, %1211, %915, %900
  %1895 = phi float [ %901, %1801 ], [ %901, %1211 ], [ %901, %900 ], [ %1883, %1880 ], [ %901, %1878 ], [ %1847, %1844 ], [ %1831, %1826 ], [ %901, %915 ]
  %1896 = phi float [ %902, %1801 ], [ %902, %1211 ], [ %902, %900 ], [ %1884, %1880 ], [ %902, %1878 ], [ %1848, %1844 ], [ %1832, %1826 ], [ %902, %915 ]
  %1897 = phi float [ %1802, %1801 ], [ %903, %1211 ], [ %903, %900 ], [ %1802, %1880 ], [ %1802, %1878 ], [ %1802, %1844 ], [ %1802, %1826 ], [ %903, %915 ]
  %1898 = phi float [ %1803, %1801 ], [ %904, %1211 ], [ %904, %900 ], [ %1803, %1880 ], [ %1803, %1878 ], [ %1803, %1844 ], [ %1803, %1826 ], [ %904, %915 ]
  %1899 = phi float [ %1804, %1801 ], [ %905, %1211 ], [ %905, %900 ], [ %1804, %1880 ], [ %1804, %1878 ], [ %1804, %1844 ], [ %1804, %1826 ], [ %905, %915 ]
  %1900 = phi float [ %1805, %1801 ], [ %906, %1211 ], [ %906, %900 ], [ %1805, %1880 ], [ %1805, %1878 ], [ %1805, %1844 ], [ %1805, %1826 ], [ %906, %915 ]
  %1901 = phi float [ %1806, %1801 ], [ %907, %1211 ], [ %907, %900 ], [ %1806, %1880 ], [ %1806, %1878 ], [ %1806, %1844 ], [ %1806, %1826 ], [ %907, %915 ]
  %1902 = phi float [ %1807, %1801 ], [ %908, %1211 ], [ %908, %900 ], [ %1807, %1880 ], [ %1807, %1878 ], [ %1807, %1844 ], [ %1807, %1826 ], [ %908, %915 ]
  %1903 = phi float [ %1808, %1801 ], [ %909, %1211 ], [ %909, %900 ], [ %1808, %1880 ], [ %1808, %1878 ], [ %1808, %1844 ], [ %1808, %1826 ], [ %909, %915 ]
  %1904 = phi float [ %911, %1801 ], [ %911, %1211 ], [ %911, %900 ], [ %1891, %1880 ], [ %911, %1878 ], [ %1875, %1844 ], [ %1838, %1826 ], [ %911, %915 ]
  %1905 = phi float [ %912, %1801 ], [ %912, %1211 ], [ %912, %900 ], [ %1888, %1880 ], [ %912, %1878 ], [ %1852, %1844 ], [ %1835, %1826 ], [ %912, %915 ]
  %1906 = phi float [ %913, %1801 ], [ %913, %1211 ], [ %913, %900 ], [ %1893, %1880 ], [ %913, %1878 ], [ %1877, %1844 ], [ %1841, %1826 ], [ %913, %915 ]
  %1907 = phi float [ %1809, %1801 ], [ %914, %1211 ], [ %914, %900 ], [ %1809, %1880 ], [ %1809, %1878 ], [ %1809, %1844 ], [ %1809, %1826 ], [ %914, %915 ]
  br i1 %351, label %2887, label %1908

; <label>:1908                                    ; preds = %1894
  %1909 = icmp ult i32 %404, 3
  %1910 = add i32 %35, 56
  %1911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.i32 %1911, 0
  %1913 = add i32 %35, 60
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1913, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = or i32 %1915, %1912
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %2887, label %1918

; <label>:1918                                    ; preds = %1908
  %1919 = and i32 %1912, 262144
  %1920 = icmp ne i32 %1919, 0
  %1921 = select i1 %1920, float %38, float 1.000000e+00
  %1922 = select i1 %1920, float %39, float 0.000000e+00
  %1923 = select i1 %1920, float %40, float 0.000000e+00
  %1924 = select i1 %1920, float %41, float 1.000000e+00
  %1925 = select i1 %1920, float %42, float %63
  %1926 = select i1 %1920, float %43, float %64
  %1927 = add i32 %35, 316
  %1928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1929 = extractvalue %dx.types.ResRet.i32 %1928, 0
  %1930 = lshr i32 %1929, 16
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = fmul fast float %1931, 0x3F50624DE0000000
  %1933 = add i32 %35, 120
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = lshr i32 %1935, 16
  %1937 = and i32 %1936, 255
  %1938 = lshr i32 %1935, 24
  %1939 = add i32 %35, 324
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = and i32 %1941, 65535
  %1943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1942)  ; LegacyF16ToF32(value)
  %1944 = lshr i32 %1941, 16
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = add i32 %35, 64
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1946, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = lshr i32 %1948, 22
  %1950 = shl nuw nsw i32 %1949, 5
  %1951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1950)  ; LegacyF16ToF32(value)
  %1952 = shl i32 %1948, 4
  %1953 = and i32 %1952, 32752
  %1954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1953)  ; LegacyF16ToF32(value)
  %1955 = lshr i32 %1948, 7
  %1956 = and i32 %1955, 32752
  %1957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1956)  ; LegacyF16ToF32(value)
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 3
  %1960 = fmul fast float %1959, 1.000000e+03
  %1961 = fmul fast float %301, %1960
  %1962 = call float @dx.op.unary.f32(i32 22, float %1961)  ; Frc(value)
  %1963 = fadd fast float %1962, %291
  %1964 = fmul fast float %302, %1960
  %1965 = call float @dx.op.unary.f32(i32 22, float %1964)  ; Frc(value)
  %1966 = fadd fast float %1965, %293
  %1967 = fmul fast float %1932, %1960
  %1968 = call float @dx.op.unary.f32(i32 22, float %1967)  ; Frc(value)
  %1969 = fmul fast float %1968, 0x401921FB60000000
  %1970 = fadd fast float %1969, %1951
  %1971 = call float @dx.op.unary.f32(i32 13, float %1970)  ; Sin(value)
  %1972 = call float @dx.op.unary.f32(i32 12, float %1970)  ; Cos(value)
  %1973 = fsub fast float -0.000000e+00, %1971
  %1974 = fadd fast float %1925, -5.000000e-01
  %1975 = fadd fast float %1926, -5.000000e-01
  %1976 = fmul fast float %1943, %1974
  %1977 = fmul fast float %1945, %1975
  %1978 = fadd fast float %1976, 5.000000e-01
  %1979 = fadd fast float %1977, 5.000000e-01
  %1980 = fmul fast float %1954, %1978
  %1981 = fmul fast float %1957, %1979
  %1982 = fmul fast float %1972, %1980
  %1983 = call float @dx.op.tertiary.f32(i32 46, float %1973, float %1981, float %1982)  ; FMad(a,b,c)
  %1984 = fmul fast float %1971, %1980
  %1985 = call float @dx.op.tertiary.f32(i32 46, float %1972, float %1981, float %1984)  ; FMad(a,b,c)
  %1986 = fadd fast float %1963, %1983
  %1987 = fadd fast float %1966, %1985
  %1988 = icmp ugt i32 %1937, 1
  %1989 = icmp ugt i32 %1935, 33554431
  %1990 = or i1 %1989, %1988
  br i1 %1990, label %1991, label %2016

; <label>:1991                                    ; preds = %1918
  %1992 = add i32 %35, 260
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = lshr i32 %1994, 16
  %1996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1995)  ; LegacyF16ToF32(value)
  %1997 = fmul fast float %1959, %1996
  %1998 = call float @dx.op.unary.f32(i32 22, float %1997)  ; Frc(value)
  %1999 = mul nuw nsw i32 %1937, %1938
  %2000 = uitofp i32 %1999 to float
  %2001 = fmul fast float %1998, %2000
  %2002 = call float @dx.op.unary.f32(i32 27, float %2001)  ; Round_ni(value)
  %2003 = fptoui float %2002 to i32
  %2004 = urem i32 %2003, %1937
  %2005 = udiv i32 %2003, %1938
  %2006 = call float @dx.op.unary.f32(i32 22, float %1986)  ; Frc(value)
  %2007 = call float @dx.op.unary.f32(i32 22, float %1987)  ; Frc(value)
  %2008 = uitofp i32 %2004 to float
  %2009 = uitofp i32 %2005 to float
  %2010 = fadd fast float %2006, %2008
  %2011 = fadd fast float %2007, %2009
  %2012 = uitofp i32 %1937 to float
  %2013 = uitofp i32 %1938 to float
  %2014 = fdiv fast float %2010, %2012
  %2015 = fdiv fast float %2011, %2013
  br label %2016

; <label>:2016                                    ; preds = %1991, %1918
  %2017 = phi float [ %2014, %1991 ], [ %1986, %1918 ]
  %2018 = phi float [ %2015, %1991 ], [ %1987, %1918 ]
  %2019 = and i32 %1912, 16777216
  %2020 = icmp eq i32 %2019, 0
  br i1 %2020, label %2130, label %2021

; <label>:2021                                    ; preds = %2016
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2025 = extractvalue %dx.types.CBufRet.f32 %2022, 2
  %2026 = fadd fast float %2023, %134
  %2027 = fadd fast float %2024, %135
  %2028 = fadd fast float %2025, %136
  %2029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2030 = extractvalue %dx.types.CBufRet.f32 %2029, 0
  %2031 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  %2032 = icmp eq i32 %36, 65535
  br i1 %2032, label %2127, label %2033

; <label>:2033                                    ; preds = %2021
  %2034 = lshr i32 %36, 1
  %2035 = shl i32 %2034, 2
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %36, 1
  %2039 = icmp ne i32 %2038, 0
  %2040 = lshr i32 %2037, 16
  %2041 = and i32 %2037, 65535
  %2042 = select i1 %2039, i32 %2040, i32 %2041
  %2043 = icmp eq i32 %2042, 65535
  br i1 %2043, label %2123, label %2044

; <label>:2044                                    ; preds = %2033
  %2045 = mul nuw nsw i32 %2042, 40
  %2046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.ResRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.ResRet.f32 %2046, 2
  %2050 = add nuw nsw i32 %2045, 12
  %2051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.f32 %2051, 0
  %2053 = extractvalue %dx.types.ResRet.f32 %2051, 1
  %2054 = extractvalue %dx.types.ResRet.f32 %2051, 2
  %2055 = add nuw nsw i32 %2045, 24
  %2056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  %2058 = extractvalue %dx.types.ResRet.f32 %2056, 1
  %2059 = extractvalue %dx.types.ResRet.f32 %2056, 2
  %2060 = add nuw nsw i32 %2045, 36
  %2061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = fsub fast float %2026, %2047
  %2064 = fsub fast float %2027, %2048
  %2065 = fsub fast float %2028, %2049
  %2066 = fmul fast float %2062, %2063
  %2067 = fmul fast float %2062, %2064
  %2068 = fmul fast float %2062, %2065
  %2069 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2070 = call float @dx.op.unary.f32(i32 27, float %2067)  ; Round_ni(value)
  %2071 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2072 = fadd fast float %2069, 5.000000e-01
  %2073 = fadd fast float %2070, 5.000000e-01
  %2074 = fadd fast float %2071, 5.000000e-01
  %2075 = fmul fast float %2072, %2052
  %2076 = fmul fast float %2073, %2053
  %2077 = fmul fast float %2074, %2054
  %2078 = shl i32 %36, 2
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = add i32 %2080, 0
  %2082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2083 = call float @dx.op.unary.f32(i32 22, float %2075)  ; Frc(value)
  %2084 = call float @dx.op.unary.f32(i32 22, float %2076)  ; Frc(value)
  %2085 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2082, %dx.types.Handle %30, float %2083, float %2084, float %2085, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2087 = extractvalue %dx.types.ResRet.f32 %2086, 0
  %2088 = extractvalue %dx.types.ResRet.f32 %2086, 1
  %2089 = extractvalue %dx.types.ResRet.f32 %2086, 2
  %2090 = fmul fast float %2087, 1.023000e+03
  %2091 = fmul fast float %2088, 1.023000e+03
  %2092 = fmul fast float %2089, 1.023000e+03
  %2093 = fadd fast float %2090, 5.000000e-01
  %2094 = fadd fast float %2091, 5.000000e-01
  %2095 = fadd fast float %2092, 5.000000e-01
  %2096 = call float @dx.op.unary.f32(i32 27, float %2093)  ; Round_ni(value)
  %2097 = call float @dx.op.unary.f32(i32 27, float %2094)  ; Round_ni(value)
  %2098 = call float @dx.op.unary.f32(i32 27, float %2095)  ; Round_ni(value)
  %2099 = fsub fast float %2066, %2069
  %2100 = fsub fast float %2067, %2070
  %2101 = fsub fast float %2068, %2071
  %2102 = fmul fast float %2099, 7.500000e-01
  %2103 = fmul fast float %2100, 7.500000e-01
  %2104 = fmul fast float %2101, 7.500000e-01
  %2105 = fadd fast float %2069, 1.250000e-01
  %2106 = fadd fast float %2105, %2102
  %2107 = fadd fast float %2106, %2096
  %2108 = fadd fast float %2070, 1.250000e-01
  %2109 = fadd fast float %2108, %2103
  %2110 = fadd fast float %2109, %2097
  %2111 = fadd fast float %2071, 1.250000e-01
  %2112 = fadd fast float %2111, %2104
  %2113 = fadd fast float %2112, %2098
  %2114 = fmul fast float %2107, %2057
  %2115 = fmul fast float %2110, %2058
  %2116 = fmul fast float %2113, %2059
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = add i32 %2118, 0
  %2120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2120, %dx.types.Handle %28, float %2114, float %2115, float %2116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2122 = extractvalue %dx.types.ResRet.f32 %2121, 0
  br label %2123

; <label>:2123                                    ; preds = %2044, %2033
  %2124 = phi float [ %2122, %2044 ], [ -1.000000e+00, %2033 ]
  %2125 = fadd fast float %2124, %2031
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  br label %2127

; <label>:2127                                    ; preds = %2123, %2021
  %2128 = phi float [ %2126, %2123 ], [ %2031, %2021 ]
  %2129 = fmul fast float %2128, %400
  br label %2130

; <label>:2130                                    ; preds = %2127, %2016
  %2131 = phi float [ %2129, %2127 ], [ %400, %2016 ]
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = and i32 %2133, 256
  %2135 = icmp eq i32 %2134, 0
  br i1 %2135, label %2182, label %2136

; <label>:2136                                    ; preds = %2130
  %2137 = add i32 %35, 432
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = add i32 %2139, 0
  %2141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2141, %dx.types.Handle %72, float %2017, float %2018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = add i32 %35, 132
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = shl i32 %2146, 4
  %2148 = and i32 %2147, 32752
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = lshr i32 %2146, 7
  %2151 = and i32 %2150, 32752
  %2152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2151)  ; LegacyF16ToF32(value)
  %2153 = fsub fast float 1.000000e+00, %2131
  %2154 = call float @dx.op.binary.f32(i32 35, float %2153, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2155 = bitcast float %2131 to i32
  %2156 = sitofp i32 %2155 to float
  %2157 = fadd fast float %2156, 0xC1CFBF8940000000
  %2158 = fmul fast float %2152, %2157
  %2159 = fadd fast float %2158, 0x41CFBF8940000000
  %2160 = fptosi float %2159 to i32
  %2161 = bitcast i32 %2160 to float
  %2162 = bitcast float %2154 to i32
  %2163 = sitofp i32 %2162 to float
  %2164 = fadd fast float %2163, 0xC1CFBF8940000000
  %2165 = fmul fast float %2164, %2152
  %2166 = fadd fast float %2165, 0x41CFBF8940000000
  %2167 = fptosi float %2166 to i32
  %2168 = bitcast i32 %2167 to float
  %2169 = fmul fast float %2161, %2149
  %2170 = fmul fast float %2168, %2149
  %2171 = fsub fast float %2154, %2169
  %2172 = fadd fast float %2170, %2154
  %2173 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2174 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2175 = fsub fast float %2143, %2173
  %2176 = fsub fast float %2174, %2173
  %2177 = bitcast float %2176 to i32
  %2178 = sub nsw i32 2129859010, %2177
  %2179 = bitcast i32 %2178 to float
  %2180 = fmul fast float %2179, %2175
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  br label %2182

; <label>:2182                                    ; preds = %2136, %2130
  %2183 = phi float [ %2181, %2136 ], [ %2131, %2130 ]
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = and i32 %2185, 128
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2204, label %2188

; <label>:2188                                    ; preds = %2182
  %2189 = add i32 %35, 416
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = add i32 %2191, 0
  %2193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2193, %dx.types.Handle %72, float %2017, float %2018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2195 = extractvalue %dx.types.ResRet.f32 %2194, 0
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 524288
  %2199 = icmp ne i32 %2198, 0
  %2200 = fcmp fast ogt float %2195, 0x3FE0101020000000
  %2201 = select i1 %2200, float 1.000000e+00, float 0.000000e+00
  %2202 = select i1 %2199, float %2201, float %2195
  %2203 = fmul fast float %2202, %2183
  br label %2204

; <label>:2204                                    ; preds = %2188, %2182
  %2205 = phi float [ %2203, %2188 ], [ %2183, %2182 ]
  %2206 = fcmp fast ult float %2205, 0x3F70101020000000
  br i1 %2206, label %2887, label %2207

; <label>:2207                                    ; preds = %2204
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 16
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2410, label %2212

; <label>:2212                                    ; preds = %2207
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = add i32 %35, 368
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2215, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = add i32 %2217, 0
  %2219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2219, %dx.types.Handle %71, float %2017, float %2018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2221 = extractvalue %dx.types.ResRet.f32 %2220, 0
  %2222 = extractvalue %dx.types.ResRet.f32 %2220, 1
  %2223 = extractvalue %dx.types.ResRet.f32 %2220, 2
  %2224 = extractvalue %dx.types.ResRet.f32 %2220, 3
  %2225 = and i32 %2214, 255
  %2226 = uitofp i32 %2225 to float
  %2227 = lshr i32 %2214, 8
  %2228 = and i32 %2227, 255
  %2229 = uitofp i32 %2228 to float
  %2230 = fmul fast float %2224, %2226
  %2231 = fadd fast float %2230, %2229
  %2232 = fmul fast float %2231, 0x3F70101000000000
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 512
  %2236 = icmp eq i32 %2235, 0
  br i1 %2236, label %2245, label %2237

; <label>:2237                                    ; preds = %2212
  %2238 = add i32 %35, 448
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = add i32 %2240, 0
  %2242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2242, %dx.types.Handle %72, float %2017, float %2018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  br label %2245

; <label>:2245                                    ; preds = %2237, %2212
  %2246 = phi float [ %2244, %2237 ], [ 1.000000e+00, %2212 ]
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = and i32 %2248, 33554432
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2357, label %2251

; <label>:2251                                    ; preds = %2245
  %2252 = add i32 %35, 256
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = and i32 %2254, 65535
  %2256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2255)  ; LegacyF16ToF32(value)
  %2257 = lshr i32 %2254, 16
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = add i32 %35, 260
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = and i32 %2261, 65535
  %2263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2262)  ; LegacyF16ToF32(value)
  %2264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.i32 %2264, 0
  %2266 = lshr i32 %2265, 24
  %2267 = uitofp i32 %2266 to float
  %2268 = fmul fast float %2267, 0x3F70101020000000
  %2269 = and i32 %2265, 255
  %2270 = uitofp i32 %2269 to float
  %2271 = fmul fast float %2270, 0x3F70101020000000
  %2272 = lshr i32 %2265, 8
  %2273 = and i32 %2272, 255
  %2274 = uitofp i32 %2273 to float
  %2275 = fmul fast float %2274, 0x3F70101020000000
  %2276 = lshr i32 %2265, 16
  %2277 = and i32 %2276, 255
  %2278 = uitofp i32 %2277 to float
  %2279 = fmul fast float %2278, 0x3F70101020000000
  %2280 = add i32 %35, 252
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = lshr i32 %2282, 24
  %2284 = uitofp i32 %2283 to float
  %2285 = fmul fast float %2284, 0x3F70101020000000
  %2286 = and i32 %2282, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = fmul fast float %2287, 0x3F70101020000000
  %2289 = lshr i32 %2282, 8
  %2290 = and i32 %2289, 255
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2291, 0x3F70101020000000
  %2293 = lshr i32 %2282, 16
  %2294 = and i32 %2293, 255
  %2295 = uitofp i32 %2294 to float
  %2296 = fmul fast float %2295, 0x3F70101020000000
  %2297 = bitcast float %2221 to i32
  %2298 = ashr i32 %2297, 1
  %2299 = sub nsw i32 1597463174, %2298
  %2300 = bitcast i32 %2299 to float
  %2301 = fmul fast float %2221, 5.000000e-01
  %2302 = fmul fast float %2300, %2300
  %2303 = fmul fast float %2302, %2301
  %2304 = fsub fast float 1.500000e+00, %2303
  %2305 = fmul fast float %2300, %2221
  %2306 = fmul fast float %2305, %2304
  %2307 = bitcast float %2222 to i32
  %2308 = ashr i32 %2307, 1
  %2309 = sub nsw i32 1597463174, %2308
  %2310 = bitcast i32 %2309 to float
  %2311 = fmul fast float %2222, 5.000000e-01
  %2312 = fmul fast float %2310, %2310
  %2313 = fmul fast float %2312, %2311
  %2314 = fsub fast float 1.500000e+00, %2313
  %2315 = fmul fast float %2310, %2222
  %2316 = fmul fast float %2315, %2314
  %2317 = bitcast float %2223 to i32
  %2318 = ashr i32 %2317, 1
  %2319 = sub nsw i32 1597463174, %2318
  %2320 = bitcast i32 %2319 to float
  %2321 = fmul fast float %2223, 5.000000e-01
  %2322 = fmul fast float %2320, %2320
  %2323 = fmul fast float %2322, %2321
  %2324 = fsub fast float 1.500000e+00, %2323
  %2325 = fmul fast float %2320, %2223
  %2326 = fmul fast float %2325, %2324
  %2327 = fsub fast float %2306, %2288
  %2328 = fsub fast float %2316, %2292
  %2329 = fsub fast float %2326, %2296
  %2330 = fmul fast float %2327, %2256
  %2331 = fmul fast float %2328, %2258
  %2332 = fmul fast float %2329, %2263
  %2333 = fadd fast float %2330, %2271
  %2334 = fadd fast float %2331, %2275
  %2335 = fadd fast float %2332, %2279
  %2336 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2337 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2338 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2339 = fmul fast float %2336, %2336
  %2340 = fmul fast float %2337, %2337
  %2341 = fmul fast float %2338, %2338
  %2342 = fsub fast float %2339, %2221
  %2343 = fsub fast float %2340, %2222
  %2344 = fsub fast float %2341, %2223
  %2345 = fmul fast float %2342, %2246
  %2346 = fmul fast float %2343, %2246
  %2347 = fmul fast float %2344, %2246
  %2348 = fadd fast float %2345, %2221
  %2349 = fadd fast float %2346, %2222
  %2350 = fadd fast float %2347, %2223
  %2351 = fadd fast float %2268, %2232
  %2352 = fsub fast float %2351, %2285
  %2353 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  %2354 = fsub fast float %2353, %2232
  %2355 = fmul fast float %2354, %2246
  %2356 = fadd fast float %2355, %2232
  br label %2410

; <label>:2357                                    ; preds = %2245
  %2358 = and i32 %2248, 134217728
  %2359 = icmp eq i32 %2358, 0
  br i1 %2359, label %2394, label %2360

; <label>:2360                                    ; preds = %2357
  %2361 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %2362 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %2363 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %2364 = fadd fast float %2361, -5.000000e-01
  %2365 = fadd fast float %2362, -5.000000e-01
  %2366 = fadd fast float %2363, -5.000000e-01
  %2367 = fmul fast float %2364, %2246
  %2368 = fmul fast float %2365, %2246
  %2369 = fmul fast float %2366, %2246
  %2370 = fadd fast float %2367, 5.000000e-01
  %2371 = fadd fast float %2368, 5.000000e-01
  %2372 = fadd fast float %2369, 5.000000e-01
  %2373 = call float @dx.op.unary.f32(i32 24, float %2221)  ; Sqrt(value)
  %2374 = call float @dx.op.unary.f32(i32 24, float %2222)  ; Sqrt(value)
  %2375 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2376 = fmul fast float %2370, 2.000000e+00
  %2377 = fsub fast float 1.000000e+00, %2376
  %2378 = fmul fast float %2377, %2373
  %2379 = fadd fast float %2378, %2376
  %2380 = fmul fast float %2379, %2373
  %2381 = fmul fast float %2371, 2.000000e+00
  %2382 = fsub fast float 1.000000e+00, %2381
  %2383 = fmul fast float %2382, %2374
  %2384 = fadd fast float %2383, %2381
  %2385 = fmul fast float %2384, %2374
  %2386 = fmul fast float %2372, 2.000000e+00
  %2387 = fsub fast float 1.000000e+00, %2386
  %2388 = fmul fast float %2387, %2375
  %2389 = fadd fast float %2388, %2386
  %2390 = fmul fast float %2389, %2375
  %2391 = fmul fast float %2380, %2380
  %2392 = fmul fast float %2385, %2385
  %2393 = fmul fast float %2390, %2390
  br label %2410

; <label>:2394                                    ; preds = %2357
  %2395 = fmul fast float %278, %278
  %2396 = fmul fast float %282, %282
  %2397 = fmul fast float %286, %286
  %2398 = fadd fast float %2395, -1.000000e+00
  %2399 = fadd fast float %2396, -1.000000e+00
  %2400 = fadd fast float %2397, -1.000000e+00
  %2401 = fmul fast float %2246, %2398
  %2402 = fmul fast float %2246, %2399
  %2403 = fmul fast float %2246, %2400
  %2404 = fadd fast float %2401, 1.000000e+00
  %2405 = fadd fast float %2402, 1.000000e+00
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fmul fast float %2404, %2221
  %2408 = fmul fast float %2405, %2222
  %2409 = fmul fast float %2406, %2223
  br label %2410

; <label>:2410                                    ; preds = %2394, %2360, %2251, %2207
  %2411 = phi float [ %2356, %2251 ], [ %2232, %2360 ], [ %2232, %2394 ], [ 0x3FA23C0BE0000000, %2207 ]
  %2412 = phi float [ %2348, %2251 ], [ %2391, %2360 ], [ %2407, %2394 ], [ 1.000000e+00, %2207 ]
  %2413 = phi float [ %2349, %2251 ], [ %2392, %2360 ], [ %2408, %2394 ], [ 1.000000e+00, %2207 ]
  %2414 = phi float [ %2350, %2251 ], [ %2393, %2360 ], [ %2409, %2394 ], [ 1.000000e+00, %2207 ]
  %2415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.i32 %2415, 1
  %2417 = and i32 %2416, 1
  %2418 = icmp ne i32 %2417, 0
  %2419 = add i32 %35, 356
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = and i32 %2421, 32
  %2423 = icmp ne i32 %2422, 0
  %2424 = and i1 %2418, %2423
  %2425 = select i1 %2424, float 1.000000e+00, float %2412
  %2426 = select i1 %2424, float 0x3FD3333340000000, float %2413
  %2427 = select i1 %2424, float 0x3FD3333340000000, float %2414
  %2428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2429 = extractvalue %dx.types.ResRet.i32 %2428, 0
  %2430 = and i32 %2429, 32
  %2431 = icmp eq i32 %2430, 0
  br i1 %2431, label %2504, label %2432

; <label>:2432                                    ; preds = %2410
  %2433 = add i32 %35, 124
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = add i32 %35, 384
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2436, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = add i32 %2438, 0
  %2440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2440, %dx.types.Handle %71, float %2017, float %2018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.ResRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.ResRet.f32 %2441, 2
  %2445 = extractvalue %dx.types.ResRet.f32 %2441, 3
  %2446 = and i32 %2435, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = lshr i32 %2435, 8
  %2449 = and i32 %2448, 255
  %2450 = uitofp i32 %2449 to float
  %2451 = lshr i32 %2435, 16
  %2452 = and i32 %2451, 255
  %2453 = uitofp i32 %2452 to float
  %2454 = fmul fast float %2453, 0x3F70101000000000
  %2455 = fmul fast float %2442, %2447
  %2456 = fadd fast float %2455, %2450
  %2457 = fmul fast float %2456, 0x3F70101000000000
  %2458 = fadd fast float %2443, -5.000000e-01
  %2459 = fadd fast float %2445, -5.000000e-01
  %2460 = fmul fast float %2458, %2454
  %2461 = fmul fast float %2459, %2454
  %2462 = fadd fast float %2460, 5.000000e-01
  %2463 = fadd fast float %2461, 5.000000e-01
  %2464 = fmul fast float %2462, 2.000000e+00
  %2465 = fadd fast float %2464, -1.000000e+00
  %2466 = fmul fast float %2463, 2.000000e+00
  %2467 = fadd fast float %2466, -1.000000e+00
  %2468 = fadd fast float %2465, %2467
  %2469 = fmul fast float %2468, 5.000000e-01
  %2470 = fsub fast float %2465, %2467
  %2471 = fmul fast float %2470, 5.000000e-01
  %2472 = call float @dx.op.unary.f32(i32 6, float %2469)  ; FAbs(value)
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = call float @dx.op.unary.f32(i32 6, float %2471)  ; FAbs(value)
  %2475 = fsub fast float %2473, %2474
  %2476 = call float @dx.op.dot3.f32(i32 55, float %2469, float %2471, float %2475, float %2469, float %2471, float %2475)  ; Dot3(ax,ay,az,bx,by,bz)
  %2477 = call float @dx.op.unary.f32(i32 25, float %2476)  ; Rsqrt(value)
  %2478 = fmul fast float %2469, %2477
  %2479 = fmul fast float %2471, %2477
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 67108864
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2500, label %2484

; <label>:2484                                    ; preds = %2432
  %2485 = add i32 %35, 312
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = and i32 %2487, 65535
  %2489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2488)  ; LegacyF16ToF32(value)
  %2490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2491 = extractvalue %dx.types.ResRet.i32 %2490, 0
  %2492 = and i32 %2491, 65535
  %2493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2492)  ; LegacyF16ToF32(value)
  %2494 = lshr i32 %2487, 16
  %2495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2494)  ; LegacyF16ToF32(value)
  %2496 = fsub fast float %2457, %2495
  %2497 = fmul fast float %2496, %2489
  %2498 = fadd fast float %2497, %2493
  %2499 = call float @dx.op.unary.f32(i32 7, float %2498)  ; Saturate(value)
  br label %2500

; <label>:2500                                    ; preds = %2484, %2432
  %2501 = phi float [ %2499, %2484 ], [ %2457, %2432 ]
  %2502 = call float @dx.op.dot2.f32(i32 54, float %2478, float %2479, float %1921, float %1922)  ; Dot2(ax,ay,bx,by)
  %2503 = call float @dx.op.dot2.f32(i32 54, float %2478, float %2479, float %1923, float %1924)  ; Dot2(ax,ay,bx,by)
  br label %2504

; <label>:2504                                    ; preds = %2500, %2410
  %2505 = phi float [ %2501, %2500 ], [ 0x3FD6666660000000, %2410 ]
  %2506 = phi float [ %2502, %2500 ], [ 0.000000e+00, %2410 ]
  %2507 = phi float [ %2503, %2500 ], [ 0.000000e+00, %2410 ]
  %2508 = phi float [ %2444, %2500 ], [ 1.000000e+00, %2410 ]
  %2509 = add i32 %35, 192
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = lshr i32 %2511, 22
  %2513 = shl nuw nsw i32 %2512, 5
  %2514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2513)  ; LegacyF16ToF32(value)
  %2515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2516 = extractvalue %dx.types.ResRet.i32 %2515, 0
  %2517 = and i32 %2516, 64
  %2518 = icmp eq i32 %2517, 0
  br i1 %2518, label %2552, label %2519

; <label>:2519                                    ; preds = %2504
  %2520 = add i32 %35, 400
  %2521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2520, i32 undef)  ; BufferLoad(srv,index,wot)
  %2522 = extractvalue %dx.types.ResRet.i32 %2521, 0
  %2523 = add i32 %2522, 0
  %2524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 131072
  %2528 = icmp eq i32 %2527, 0
  %2529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2524, %dx.types.Handle %71, float %2017, float %2018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2530 = extractvalue %dx.types.ResRet.f32 %2529, 0
  %2531 = extractvalue %dx.types.ResRet.f32 %2529, 1
  %2532 = extractvalue %dx.types.ResRet.f32 %2529, 2
  %2533 = fmul fast float %2530, %266
  %2534 = fmul fast float %2531, %269
  %2535 = fmul fast float %2532, %272
  br i1 %2528, label %2542, label %2536

; <label>:2536                                    ; preds = %2519
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 0
  %2539 = fmul fast float %2538, %2533
  %2540 = fmul fast float %2538, %2534
  %2541 = fmul fast float %2538, %2535
  br label %2542

; <label>:2542                                    ; preds = %2536, %2519
  %2543 = phi float [ %2539, %2536 ], [ %2533, %2519 ]
  %2544 = phi float [ %2540, %2536 ], [ %2534, %2519 ]
  %2545 = phi float [ %2541, %2536 ], [ %2535, %2519 ]
  %2546 = fmul fast float %2543, %2514
  %2547 = select i1 %176, float %2546, float %2543
  %2548 = call float @dx.op.dot3.f32(i32 55, float %2547, float %2544, float %2545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2549 = select i1 %176, float 0.000000e+00, float %2543
  %2550 = select i1 %176, float %2548, float %2544
  %2551 = select i1 %176, float 0.000000e+00, float %2545
  br label %2552

; <label>:2552                                    ; preds = %2542, %2504
  %2553 = phi float [ %2549, %2542 ], [ 0.000000e+00, %2504 ]
  %2554 = phi float [ %2550, %2542 ], [ 0.000000e+00, %2504 ]
  %2555 = phi float [ %2551, %2542 ], [ 0.000000e+00, %2504 ]
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 1024
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2590, label %2560

; <label>:2560                                    ; preds = %2552
  %2561 = add i32 %35, 184
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 255
  %2565 = uitofp i32 %2564 to float
  %2566 = fmul fast float %2565, 0x3F70101020000000
  %2567 = lshr i32 %2563, 8
  %2568 = and i32 %2567, 255
  %2569 = uitofp i32 %2568 to float
  %2570 = fmul fast float %2569, 0x3F70101020000000
  %2571 = lshr i32 %2563, 16
  %2572 = and i32 %2571, 255
  %2573 = uitofp i32 %2572 to float
  %2574 = fmul fast float %2573, 0x3F70101020000000
  %2575 = fmul fast float %2566, %2566
  %2576 = fmul fast float %2570, %2570
  %2577 = fmul fast float %2574, %2574
  %2578 = add i32 %35, 464
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = add i32 %2580, 0
  %2582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2583 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2582, %dx.types.Handle %72, float %2017, float %2018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2584 = extractvalue %dx.types.ResRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.ResRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.ResRet.f32 %2583, 2
  %2587 = fmul fast float %2575, %2584
  %2588 = fmul fast float %2576, %2585
  %2589 = fmul fast float %2577, %2586
  br label %2590

; <label>:2590                                    ; preds = %2560, %2552
  %2591 = phi float [ %2587, %2560 ], [ 0.000000e+00, %2552 ]
  %2592 = phi float [ %2588, %2560 ], [ 0.000000e+00, %2552 ]
  %2593 = phi float [ %2589, %2560 ], [ 0.000000e+00, %2552 ]
  %2594 = fcmp fast ogt float %2591, 0.000000e+00
  %2595 = fcmp fast ogt float %2592, 0.000000e+00
  %2596 = fcmp fast ogt float %2593, 0.000000e+00
  %2597 = call float @dx.op.unary.f32(i32 23, float %2591)  ; Log(value)
  %2598 = call float @dx.op.unary.f32(i32 23, float %2592)  ; Log(value)
  %2599 = call float @dx.op.unary.f32(i32 23, float %2593)  ; Log(value)
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = lshr i32 %2601, 7
  %2603 = and i32 %2602, 32752
  %2604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2603)  ; LegacyF16ToF32(value)
  %2605 = fmul fast float %2597, 0xBFE62E4300000000
  %2606 = fmul fast float %2605, %2604
  %2607 = fmul fast float %2598, 0xBFE62E4300000000
  %2608 = fmul fast float %2607, %2604
  %2609 = fmul fast float %2599, 0xBFE62E4300000000
  %2610 = fmul fast float %2609, %2604
  %2611 = select i1 %2594, float %2606, float 1.270000e+02
  %2612 = select i1 %2595, float %2608, float 1.270000e+02
  %2613 = select i1 %2596, float %2610, float 1.270000e+02
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 26624
  %2617 = icmp eq i32 %2616, 0
  br i1 %2617, label %2654, label %2618

; <label>:2618                                    ; preds = %2590
  %2619 = add i32 %35, 480
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %2621, 0
  %2623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2623, %dx.types.Handle %72, float %2017, float %2018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  %2626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2627 = extractvalue %dx.types.ResRet.i32 %2626, 0
  %2628 = and i32 %2627, 1048576
  %2629 = icmp ne i32 %2628, 0
  %2630 = and i32 %2627, 2048
  %2631 = icmp eq i32 %2630, 0
  br i1 %2631, label %2641, label %2632

; <label>:2632                                    ; preds = %2618
  %2633 = extractvalue %dx.types.ResRet.f32 %2624, 3
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = shl i32 %2635, 4
  %2637 = and i32 %2636, 32752
  %2638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2637)  ; LegacyF16ToF32(value)
  %2639 = fmul fast float %2638, %2633
  %2640 = call float @dx.op.binary.f32(i32 35, float %2639, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2641

; <label>:2641                                    ; preds = %2632, %2618
  %2642 = phi float [ %2640, %2632 ], [ 0x3F70101020000000, %2618 ]
  %2643 = and i32 %2627, 16384
  %2644 = icmp eq i32 %2643, 0
  br i1 %2644, label %2654, label %2645

; <label>:2645                                    ; preds = %2641
  %2646 = add i32 %35, 128
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = lshr i32 %2648, 24
  %2650 = uitofp i32 %2649 to float
  %2651 = fmul fast float %2625, 0x3F70101020000000
  %2652 = select i1 %2629, float 0x3F70101020000000, float %2651
  %2653 = fmul fast float %2652, %2650
  br label %2654

; <label>:2654                                    ; preds = %2645, %2641, %2590
  %2655 = phi float [ %2642, %2645 ], [ %2642, %2641 ], [ 0x3F70101020000000, %2590 ]
  %2656 = phi float [ %2653, %2645 ], [ 0.000000e+00, %2641 ], [ 0.000000e+00, %2590 ]
  %2657 = add i32 %35, 128
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2657, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 255
  %2661 = uitofp i32 %2660 to float
  %2662 = lshr i32 %2659, 8
  %2663 = and i32 %2662, 255
  %2664 = uitofp i32 %2663 to float
  %2665 = call float @dx.op.dot3.f32(i32 55, float %2425, float %2426, float %2427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2666 = fmul fast float %2664, %2665
  %2667 = fadd fast float %2666, %2661
  %2668 = fmul fast float %2667, 0x3F70101020000000
  %2669 = call float @dx.op.unary.f32(i32 7, float %2668)  ; Saturate(value)
  br i1 %1909, label %2670, label %2705

; <label>:2670                                    ; preds = %2654
  %2671 = fmul fast float %2655, 2.000000e+00
  %2672 = fcmp fast olt float %2611, 1.270000e+02
  %2673 = fcmp fast olt float %2612, 1.270000e+02
  %2674 = fcmp fast olt float %2613, 1.270000e+02
  %2675 = fmul fast float %2611, 0xBFF7154760000000
  %2676 = fmul fast float %2675, %2671
  %2677 = fmul fast float %2612, 0xBFF7154760000000
  %2678 = fmul fast float %2677, %2671
  %2679 = fmul fast float %2613, 0xBFF7154760000000
  %2680 = fmul fast float %2679, %2671
  %2681 = call float @dx.op.unary.f32(i32 21, float %2676)  ; Exp(value)
  %2682 = call float @dx.op.unary.f32(i32 21, float %2678)  ; Exp(value)
  %2683 = call float @dx.op.unary.f32(i32 21, float %2680)  ; Exp(value)
  %2684 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  %2685 = call float @dx.op.unary.f32(i32 7, float %2682)  ; Saturate(value)
  %2686 = call float @dx.op.unary.f32(i32 7, float %2683)  ; Saturate(value)
  %2687 = fadd fast float %2684, -1.000000e+00
  %2688 = select i1 %2672, float %2687, float -1.000000e+00
  %2689 = fadd fast float %2685, -1.000000e+00
  %2690 = select i1 %2673, float %2689, float -1.000000e+00
  %2691 = fadd fast float %2686, -1.000000e+00
  %2692 = select i1 %2674, float %2691, float -1.000000e+00
  %2693 = fmul fast float %2688, %2205
  %2694 = fmul fast float %2690, %2205
  %2695 = fmul fast float %2692, %2205
  %2696 = fadd fast float %2693, 1.000000e+00
  %2697 = fadd fast float %2694, 1.000000e+00
  %2698 = fadd fast float %2695, 1.000000e+00
  %2699 = fmul fast float %2696, %1897
  %2700 = fmul fast float %2697, %1898
  %2701 = fmul fast float %2698, %1899
  %2702 = fmul fast float %2696, %1900
  %2703 = fmul fast float %2697, %1901
  %2704 = fmul fast float %2698, %1902
  br label %2705

; <label>:2705                                    ; preds = %2670, %2654
  %2706 = phi float [ %2699, %2670 ], [ %1897, %2654 ]
  %2707 = phi float [ %2700, %2670 ], [ %1898, %2654 ]
  %2708 = phi float [ %2701, %2670 ], [ %1899, %2654 ]
  %2709 = phi float [ %2702, %2670 ], [ %1900, %2654 ]
  %2710 = phi float [ %2703, %2670 ], [ %1901, %2654 ]
  %2711 = phi float [ %2704, %2670 ], [ %1902, %2654 ]
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 3
  %2715 = icmp eq i32 %2714, 3
  br i1 %2715, label %2794, label %2716

; <label>:2716                                    ; preds = %2705
  %2717 = and i32 %2713, 16
  %2718 = icmp ne i32 %2717, 0
  %2719 = select i1 %2718, float %2205, float 0.000000e+00
  %2720 = icmp eq i32 %2714, 0
  br i1 %2720, label %2721, label %2749

; <label>:2721                                    ; preds = %2716
  %2722 = and i32 %2713, 64
  %2723 = icmp ne i32 %2722, 0
  %2724 = select i1 %2723, float %2205, float 0.000000e+00
  %2725 = fsub fast float %2425, %2706
  %2726 = fsub fast float %2426, %2707
  %2727 = fsub fast float %2427, %2708
  %2728 = fmul fast float %2719, %2725
  %2729 = fmul fast float %2719, %2726
  %2730 = fmul fast float %2719, %2727
  %2731 = fadd fast float %2728, %2706
  %2732 = fadd fast float %2729, %2707
  %2733 = fadd fast float %2730, %2708
  %2734 = fsub fast float %2411, %1903
  %2735 = fmul fast float %2719, %2734
  %2736 = fadd fast float %2735, %1903
  %2737 = fsub fast float %2553, %2709
  %2738 = fsub fast float %2554, %2710
  %2739 = fsub fast float %2555, %2711
  %2740 = fmul fast float %2724, %2737
  %2741 = fmul fast float %2724, %2738
  %2742 = fmul fast float %2724, %2739
  %2743 = fadd fast float %2740, %2709
  %2744 = fadd fast float %2741, %2710
  %2745 = fadd fast float %2742, %2711
  %2746 = fsub fast float %2669, %1907
  %2747 = fmul fast float %2719, %2746
  %2748 = fadd fast float %2747, %1907
  br label %2794

; <label>:2749                                    ; preds = %2716
  %2750 = icmp eq i32 %2714, 1
  br i1 %2750, label %2751, label %2764

; <label>:2751                                    ; preds = %2749
  %2752 = fadd fast float %2425, -1.000000e+00
  %2753 = fadd fast float %2426, -1.000000e+00
  %2754 = fadd fast float %2427, -1.000000e+00
  %2755 = fmul fast float %2719, %2752
  %2756 = fmul fast float %2719, %2753
  %2757 = fmul fast float %2719, %2754
  %2758 = fadd fast float %2755, 1.000000e+00
  %2759 = fadd fast float %2756, 1.000000e+00
  %2760 = fadd fast float %2757, 1.000000e+00
  %2761 = fmul fast float %2758, %2706
  %2762 = fmul fast float %2759, %2707
  %2763 = fmul fast float %2760, %2708
  br label %2794

; <label>:2764                                    ; preds = %2749
  %2765 = icmp eq i32 %2714, 2
  br i1 %2765, label %2766, label %2794

; <label>:2766                                    ; preds = %2764
  %2767 = call float @dx.op.unary.f32(i32 24, float %2425)  ; Sqrt(value)
  %2768 = call float @dx.op.unary.f32(i32 24, float %2426)  ; Sqrt(value)
  %2769 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2770 = fadd fast float %2767, -5.000000e-01
  %2771 = fadd fast float %2768, -5.000000e-01
  %2772 = fadd fast float %2769, -5.000000e-01
  %2773 = fmul fast float %2770, %2719
  %2774 = fmul fast float %2771, %2719
  %2775 = fmul fast float %2772, %2719
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fmul fast float %2776, 2.000000e+00
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = fmul fast float %2780, %2706
  %2782 = fadd fast float %2781, %2779
  %2783 = fmul fast float %2782, %2706
  %2784 = fmul fast float %2777, 2.000000e+00
  %2785 = fsub fast float 1.000000e+00, %2784
  %2786 = fmul fast float %2785, %2707
  %2787 = fadd fast float %2786, %2784
  %2788 = fmul fast float %2787, %2707
  %2789 = fmul fast float %2778, 2.000000e+00
  %2790 = fsub fast float 1.000000e+00, %2789
  %2791 = fmul fast float %2790, %2708
  %2792 = fadd fast float %2791, %2789
  %2793 = fmul fast float %2792, %2708
  br label %2794

; <label>:2794                                    ; preds = %2766, %2764, %2751, %2721, %2705
  %2795 = phi float [ %2706, %2705 ], [ %2783, %2766 ], [ %2706, %2764 ], [ %2761, %2751 ], [ %2731, %2721 ]
  %2796 = phi float [ %2707, %2705 ], [ %2788, %2766 ], [ %2707, %2764 ], [ %2762, %2751 ], [ %2732, %2721 ]
  %2797 = phi float [ %2708, %2705 ], [ %2793, %2766 ], [ %2708, %2764 ], [ %2763, %2751 ], [ %2733, %2721 ]
  %2798 = phi float [ %2709, %2705 ], [ %2709, %2766 ], [ %2709, %2764 ], [ %2709, %2751 ], [ %2743, %2721 ]
  %2799 = phi float [ %2710, %2705 ], [ %2710, %2766 ], [ %2710, %2764 ], [ %2710, %2751 ], [ %2744, %2721 ]
  %2800 = phi float [ %2711, %2705 ], [ %2711, %2766 ], [ %2711, %2764 ], [ %2711, %2751 ], [ %2745, %2721 ]
  %2801 = phi float [ %1903, %2705 ], [ %1903, %2766 ], [ %1903, %2764 ], [ %1903, %2751 ], [ %2736, %2721 ]
  %2802 = phi float [ %1907, %2705 ], [ %1907, %2766 ], [ %1907, %2764 ], [ %1907, %2751 ], [ %2748, %2721 ]
  %2803 = and i32 %2713, 12
  %2804 = icmp eq i32 %2803, 12
  br i1 %2804, label %2887, label %2805

; <label>:2805                                    ; preds = %2794
  %2806 = and i32 %2713, 2097184
  %2807 = icmp eq i32 %2806, 2097184
  %2808 = select i1 %2807, float %2205, float 0.000000e+00
  %2809 = and i32 %2713, 4194336
  %2810 = icmp eq i32 %2809, 4194336
  %2811 = select i1 %2810, float %2205, float 0.000000e+00
  %2812 = and i32 %2713, 8388640
  %2813 = icmp eq i32 %2812, 8388640
  %2814 = select i1 %2813, float %2205, float 0.000000e+00
  %2815 = and i32 %2713, 16384
  %2816 = icmp ne i32 %2815, 0
  %2817 = select i1 %2816, float %2205, float 0.000000e+00
  %2818 = icmp eq i32 %2803, 0
  br i1 %2818, label %2819, label %2835

; <label>:2819                                    ; preds = %2805
  %2820 = fsub fast float %2506, %1895
  %2821 = fsub fast float %2507, %1896
  %2822 = fmul fast float %2808, %2820
  %2823 = fmul fast float %2808, %2821
  %2824 = fadd fast float %2822, %1895
  %2825 = fadd fast float %2823, %1896
  %2826 = fsub fast float %2508, %1905
  %2827 = fmul fast float %2811, %2826
  %2828 = fadd fast float %2827, %1905
  %2829 = fsub fast float %2505, %1904
  %2830 = fmul fast float %2814, %2829
  %2831 = fadd fast float %2830, %1904
  %2832 = fsub fast float %2656, %1906
  %2833 = fmul fast float %2817, %2832
  %2834 = fadd fast float %2833, %1906
  br label %2887

; <label>:2835                                    ; preds = %2805
  %2836 = icmp eq i32 %2803, 4
  br i1 %2836, label %2837, label %2871

; <label>:2837                                    ; preds = %2835
  %2838 = fmul fast float %2808, %2506
  %2839 = fmul fast float %2808, %2507
  %2840 = fadd fast float %2838, %1895
  %2841 = fadd fast float %2839, %1896
  %2842 = call float @dx.op.binary.f32(i32 36, float %1905, float %2508)  ; FMin(a,b)
  %2843 = fsub fast float %2842, %1905
  %2844 = fmul fast float %2843, %2811
  %2845 = fadd fast float %2844, %1905
  %2846 = fadd fast float %2505, %1904
  %2847 = fmul fast float %2846, 0x3FF337FAE0000000
  %2848 = fmul fast float %1904, %1904
  %2849 = fmul fast float %2505, %2505
  %2850 = fadd fast float %2849, %2848
  %2851 = fmul fast float %2850, 0x3FE5152B00000000
  %2852 = fmul fast float %1904, 0xBFCC1F85E0000000
  %2853 = fmul fast float %2852, %2505
  %2854 = fadd fast float %2853, 0xBFE1363700000000
  %2855 = fadd fast float %2854, %2847
  %2856 = fsub fast float %2855, %2851
  %2857 = fmul fast float %2846, 0x3FBA6F0D00000000
  %2858 = fmul fast float %2850, 0x3FD0432880000000
  %2859 = fmul fast float %1904, 0xBFEF110800000000
  %2860 = fmul fast float %2859, %2505
  %2861 = fadd fast float %2860, 1.000000e+00
  %2862 = fsub fast float %2861, %2857
  %2863 = fadd fast float %2862, %2858
  %2864 = fdiv fast float %2856, %2863
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = fsub fast float %2865, %1904
  %2867 = fmul fast float %2866, %2814
  %2868 = fadd fast float %2867, %1904
  %2869 = fmul fast float %2817, %2656
  %2870 = fadd fast float %2869, %1906
  br label %2887

; <label>:2871                                    ; preds = %2835
  %2872 = icmp eq i32 %2803, 8
  br i1 %2872, label %2873, label %2887

; <label>:2873                                    ; preds = %2871
  %2874 = fmul fast float %2808, %2506
  %2875 = fmul fast float %2808, %2507
  %2876 = fadd fast float %2874, %1895
  %2877 = fadd fast float %2875, %1896
  %2878 = call float @dx.op.binary.f32(i32 36, float %1905, float %2508)  ; FMin(a,b)
  %2879 = fsub fast float %2878, %1905
  %2880 = fmul fast float %2879, %2811
  %2881 = fadd fast float %2880, %1905
  %2882 = fsub fast float %2505, %1904
  %2883 = fmul fast float %2814, %2882
  %2884 = fadd fast float %2883, %1904
  %2885 = fmul fast float %2817, %2656
  %2886 = fadd fast float %2885, %1906
  br label %2887

; <label>:2887                                    ; preds = %2873, %2871, %2837, %2819, %2794, %2204, %1908, %1894
  %2888 = phi float [ %1895, %2794 ], [ %1895, %2204 ], [ %1895, %1894 ], [ %2876, %2873 ], [ %1895, %2871 ], [ %2840, %2837 ], [ %2824, %2819 ], [ %1895, %1908 ]
  %2889 = phi float [ %1896, %2794 ], [ %1896, %2204 ], [ %1896, %1894 ], [ %2877, %2873 ], [ %1896, %2871 ], [ %2841, %2837 ], [ %2825, %2819 ], [ %1896, %1908 ]
  %2890 = phi float [ %2795, %2794 ], [ %1897, %2204 ], [ %1897, %1894 ], [ %2795, %2873 ], [ %2795, %2871 ], [ %2795, %2837 ], [ %2795, %2819 ], [ %1897, %1908 ]
  %2891 = phi float [ %2796, %2794 ], [ %1898, %2204 ], [ %1898, %1894 ], [ %2796, %2873 ], [ %2796, %2871 ], [ %2796, %2837 ], [ %2796, %2819 ], [ %1898, %1908 ]
  %2892 = phi float [ %2797, %2794 ], [ %1899, %2204 ], [ %1899, %1894 ], [ %2797, %2873 ], [ %2797, %2871 ], [ %2797, %2837 ], [ %2797, %2819 ], [ %1899, %1908 ]
  %2893 = phi float [ %2798, %2794 ], [ %1900, %2204 ], [ %1900, %1894 ], [ %2798, %2873 ], [ %2798, %2871 ], [ %2798, %2837 ], [ %2798, %2819 ], [ %1900, %1908 ]
  %2894 = phi float [ %2799, %2794 ], [ %1901, %2204 ], [ %1901, %1894 ], [ %2799, %2873 ], [ %2799, %2871 ], [ %2799, %2837 ], [ %2799, %2819 ], [ %1901, %1908 ]
  %2895 = phi float [ %2800, %2794 ], [ %1902, %2204 ], [ %1902, %1894 ], [ %2800, %2873 ], [ %2800, %2871 ], [ %2800, %2837 ], [ %2800, %2819 ], [ %1902, %1908 ]
  %2896 = phi float [ %2801, %2794 ], [ %1903, %2204 ], [ %1903, %1894 ], [ %2801, %2873 ], [ %2801, %2871 ], [ %2801, %2837 ], [ %2801, %2819 ], [ %1903, %1908 ]
  %2897 = phi float [ %1904, %2794 ], [ %1904, %2204 ], [ %1904, %1894 ], [ %2884, %2873 ], [ %1904, %2871 ], [ %2868, %2837 ], [ %2831, %2819 ], [ %1904, %1908 ]
  %2898 = phi float [ %1905, %2794 ], [ %1905, %2204 ], [ %1905, %1894 ], [ %2881, %2873 ], [ %1905, %2871 ], [ %2845, %2837 ], [ %2828, %2819 ], [ %1905, %1908 ]
  %2899 = phi float [ %1906, %2794 ], [ %1906, %2204 ], [ %1906, %1894 ], [ %2886, %2873 ], [ %1906, %2871 ], [ %2870, %2837 ], [ %2834, %2819 ], [ %1906, %1908 ]
  %2900 = phi float [ %2802, %2794 ], [ %1907, %2204 ], [ %1907, %1894 ], [ %2802, %2873 ], [ %2802, %2871 ], [ %2802, %2837 ], [ %2802, %2819 ], [ %1907, %1908 ]
  br i1 %353, label %3880, label %2901

; <label>:2901                                    ; preds = %2887
  %2902 = icmp ult i32 %404, 4
  %2903 = add i32 %35, 72
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %35, 76
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = or i32 %2908, %2905
  %2910 = icmp eq i32 %2909, 0
  br i1 %2910, label %3880, label %2911

; <label>:2911                                    ; preds = %2901
  %2912 = and i32 %2905, 262144
  %2913 = icmp ne i32 %2912, 0
  %2914 = select i1 %2913, float %38, float 1.000000e+00
  %2915 = select i1 %2913, float %39, float 0.000000e+00
  %2916 = select i1 %2913, float %40, float 0.000000e+00
  %2917 = select i1 %2913, float %41, float 1.000000e+00
  %2918 = select i1 %2913, float %42, float %63
  %2919 = select i1 %2913, float %43, float %64
  %2920 = add i32 %35, 332
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = lshr i32 %2922, 16
  %2924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2923)  ; LegacyF16ToF32(value)
  %2925 = fmul fast float %2924, 0x3F50624DE0000000
  %2926 = add i32 %35, 136
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = lshr i32 %2928, 16
  %2930 = and i32 %2929, 255
  %2931 = lshr i32 %2928, 24
  %2932 = add i32 %35, 340
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 65535
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = lshr i32 %2934, 16
  %2938 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2937)  ; LegacyF16ToF32(value)
  %2939 = add i32 %35, 80
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = lshr i32 %2941, 22
  %2943 = shl nuw nsw i32 %2942, 5
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = shl i32 %2941, 4
  %2946 = and i32 %2945, 32752
  %2947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2946)  ; LegacyF16ToF32(value)
  %2948 = lshr i32 %2941, 7
  %2949 = and i32 %2948, 32752
  %2950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2949)  ; LegacyF16ToF32(value)
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 3
  %2953 = fmul fast float %2952, 1.000000e+03
  %2954 = fmul fast float %343, %2953
  %2955 = call float @dx.op.unary.f32(i32 22, float %2954)  ; Frc(value)
  %2956 = fadd fast float %2955, %333
  %2957 = fmul fast float %344, %2953
  %2958 = call float @dx.op.unary.f32(i32 22, float %2957)  ; Frc(value)
  %2959 = fadd fast float %2958, %335
  %2960 = fmul fast float %2925, %2953
  %2961 = call float @dx.op.unary.f32(i32 22, float %2960)  ; Frc(value)
  %2962 = fmul fast float %2961, 0x401921FB60000000
  %2963 = fadd fast float %2962, %2944
  %2964 = call float @dx.op.unary.f32(i32 13, float %2963)  ; Sin(value)
  %2965 = call float @dx.op.unary.f32(i32 12, float %2963)  ; Cos(value)
  %2966 = fsub fast float -0.000000e+00, %2964
  %2967 = fadd fast float %2918, -5.000000e-01
  %2968 = fadd fast float %2919, -5.000000e-01
  %2969 = fmul fast float %2936, %2967
  %2970 = fmul fast float %2938, %2968
  %2971 = fadd fast float %2969, 5.000000e-01
  %2972 = fadd fast float %2970, 5.000000e-01
  %2973 = fmul fast float %2947, %2971
  %2974 = fmul fast float %2950, %2972
  %2975 = fmul fast float %2965, %2973
  %2976 = call float @dx.op.tertiary.f32(i32 46, float %2966, float %2974, float %2975)  ; FMad(a,b,c)
  %2977 = fmul fast float %2964, %2973
  %2978 = call float @dx.op.tertiary.f32(i32 46, float %2965, float %2974, float %2977)  ; FMad(a,b,c)
  %2979 = fadd fast float %2956, %2976
  %2980 = fadd fast float %2959, %2978
  %2981 = icmp ugt i32 %2930, 1
  %2982 = icmp ugt i32 %2928, 33554431
  %2983 = or i1 %2982, %2981
  br i1 %2983, label %2984, label %3009

; <label>:2984                                    ; preds = %2911
  %2985 = add i32 %35, 276
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = lshr i32 %2987, 16
  %2989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2988)  ; LegacyF16ToF32(value)
  %2990 = fmul fast float %2952, %2989
  %2991 = call float @dx.op.unary.f32(i32 22, float %2990)  ; Frc(value)
  %2992 = mul nuw nsw i32 %2930, %2931
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2991, %2993
  %2995 = call float @dx.op.unary.f32(i32 27, float %2994)  ; Round_ni(value)
  %2996 = fptoui float %2995 to i32
  %2997 = urem i32 %2996, %2930
  %2998 = udiv i32 %2996, %2931
  %2999 = call float @dx.op.unary.f32(i32 22, float %2979)  ; Frc(value)
  %3000 = call float @dx.op.unary.f32(i32 22, float %2980)  ; Frc(value)
  %3001 = uitofp i32 %2997 to float
  %3002 = uitofp i32 %2998 to float
  %3003 = fadd fast float %2999, %3001
  %3004 = fadd fast float %3000, %3002
  %3005 = uitofp i32 %2930 to float
  %3006 = uitofp i32 %2931 to float
  %3007 = fdiv fast float %3003, %3005
  %3008 = fdiv fast float %3004, %3006
  br label %3009

; <label>:3009                                    ; preds = %2984, %2911
  %3010 = phi float [ %3007, %2984 ], [ %2979, %2911 ]
  %3011 = phi float [ %3008, %2984 ], [ %2980, %2911 ]
  %3012 = and i32 %2905, 16777216
  %3013 = icmp eq i32 %3012, 0
  br i1 %3013, label %3123, label %3014

; <label>:3014                                    ; preds = %3009
  %3015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3016 = extractvalue %dx.types.CBufRet.f32 %3015, 0
  %3017 = extractvalue %dx.types.CBufRet.f32 %3015, 1
  %3018 = extractvalue %dx.types.CBufRet.f32 %3015, 2
  %3019 = fadd fast float %3016, %134
  %3020 = fadd fast float %3017, %135
  %3021 = fadd fast float %3018, %136
  %3022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.f32 %3022, 0
  %3024 = call float @dx.op.unary.f32(i32 7, float %3023)  ; Saturate(value)
  %3025 = icmp eq i32 %36, 65535
  br i1 %3025, label %3120, label %3026

; <label>:3026                                    ; preds = %3014
  %3027 = lshr i32 %36, 1
  %3028 = shl i32 %3027, 2
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = and i32 %36, 1
  %3032 = icmp ne i32 %3031, 0
  %3033 = lshr i32 %3030, 16
  %3034 = and i32 %3030, 65535
  %3035 = select i1 %3032, i32 %3033, i32 %3034
  %3036 = icmp eq i32 %3035, 65535
  br i1 %3036, label %3116, label %3037

; <label>:3037                                    ; preds = %3026
  %3038 = mul nuw nsw i32 %3035, 40
  %3039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  %3041 = extractvalue %dx.types.ResRet.f32 %3039, 1
  %3042 = extractvalue %dx.types.ResRet.f32 %3039, 2
  %3043 = add nuw nsw i32 %3038, 12
  %3044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.f32 %3044, 0
  %3046 = extractvalue %dx.types.ResRet.f32 %3044, 1
  %3047 = extractvalue %dx.types.ResRet.f32 %3044, 2
  %3048 = add nuw nsw i32 %3038, 24
  %3049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 1
  %3052 = extractvalue %dx.types.ResRet.f32 %3049, 2
  %3053 = add nuw nsw i32 %3038, 36
  %3054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = fsub fast float %3019, %3040
  %3057 = fsub fast float %3020, %3041
  %3058 = fsub fast float %3021, %3042
  %3059 = fmul fast float %3055, %3056
  %3060 = fmul fast float %3055, %3057
  %3061 = fmul fast float %3055, %3058
  %3062 = call float @dx.op.unary.f32(i32 27, float %3059)  ; Round_ni(value)
  %3063 = call float @dx.op.unary.f32(i32 27, float %3060)  ; Round_ni(value)
  %3064 = call float @dx.op.unary.f32(i32 27, float %3061)  ; Round_ni(value)
  %3065 = fadd fast float %3062, 5.000000e-01
  %3066 = fadd fast float %3063, 5.000000e-01
  %3067 = fadd fast float %3064, 5.000000e-01
  %3068 = fmul fast float %3065, %3045
  %3069 = fmul fast float %3066, %3046
  %3070 = fmul fast float %3067, %3047
  %3071 = shl i32 %36, 2
  %3072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.i32 %3072, 0
  %3074 = add i32 %3073, 0
  %3075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3076 = call float @dx.op.unary.f32(i32 22, float %3068)  ; Frc(value)
  %3077 = call float @dx.op.unary.f32(i32 22, float %3069)  ; Frc(value)
  %3078 = call float @dx.op.unary.f32(i32 22, float %3070)  ; Frc(value)
  %3079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3075, %dx.types.Handle %30, float %3076, float %3077, float %3078, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3080 = extractvalue %dx.types.ResRet.f32 %3079, 0
  %3081 = extractvalue %dx.types.ResRet.f32 %3079, 1
  %3082 = extractvalue %dx.types.ResRet.f32 %3079, 2
  %3083 = fmul fast float %3080, 1.023000e+03
  %3084 = fmul fast float %3081, 1.023000e+03
  %3085 = fmul fast float %3082, 1.023000e+03
  %3086 = fadd fast float %3083, 5.000000e-01
  %3087 = fadd fast float %3084, 5.000000e-01
  %3088 = fadd fast float %3085, 5.000000e-01
  %3089 = call float @dx.op.unary.f32(i32 27, float %3086)  ; Round_ni(value)
  %3090 = call float @dx.op.unary.f32(i32 27, float %3087)  ; Round_ni(value)
  %3091 = call float @dx.op.unary.f32(i32 27, float %3088)  ; Round_ni(value)
  %3092 = fsub fast float %3059, %3062
  %3093 = fsub fast float %3060, %3063
  %3094 = fsub fast float %3061, %3064
  %3095 = fmul fast float %3092, 7.500000e-01
  %3096 = fmul fast float %3093, 7.500000e-01
  %3097 = fmul fast float %3094, 7.500000e-01
  %3098 = fadd fast float %3062, 1.250000e-01
  %3099 = fadd fast float %3098, %3095
  %3100 = fadd fast float %3099, %3089
  %3101 = fadd fast float %3063, 1.250000e-01
  %3102 = fadd fast float %3101, %3096
  %3103 = fadd fast float %3102, %3090
  %3104 = fadd fast float %3064, 1.250000e-01
  %3105 = fadd fast float %3104, %3097
  %3106 = fadd fast float %3105, %3091
  %3107 = fmul fast float %3100, %3050
  %3108 = fmul fast float %3103, %3051
  %3109 = fmul fast float %3106, %3052
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = add i32 %3111, 0
  %3113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3113, %dx.types.Handle %28, float %3107, float %3108, float %3109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  br label %3116

; <label>:3116                                    ; preds = %3037, %3026
  %3117 = phi float [ %3115, %3037 ], [ -1.000000e+00, %3026 ]
  %3118 = fadd fast float %3117, %3024
  %3119 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  br label %3120

; <label>:3120                                    ; preds = %3116, %3014
  %3121 = phi float [ %3119, %3116 ], [ %3024, %3014 ]
  %3122 = fmul fast float %3121, %399
  br label %3123

; <label>:3123                                    ; preds = %3120, %3009
  %3124 = phi float [ %3122, %3120 ], [ %399, %3009 ]
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 256
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %3175, label %3129

; <label>:3129                                    ; preds = %3123
  %3130 = add i32 %35, 436
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %3132, 0
  %3134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3134, %dx.types.Handle %72, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = add i32 %35, 148
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = shl i32 %3139, 4
  %3141 = and i32 %3140, 32752
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = lshr i32 %3139, 7
  %3144 = and i32 %3143, 32752
  %3145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3144)  ; LegacyF16ToF32(value)
  %3146 = fsub fast float 1.000000e+00, %3124
  %3147 = call float @dx.op.binary.f32(i32 35, float %3146, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3148 = bitcast float %3124 to i32
  %3149 = sitofp i32 %3148 to float
  %3150 = fadd fast float %3149, 0xC1CFBF8940000000
  %3151 = fmul fast float %3145, %3150
  %3152 = fadd fast float %3151, 0x41CFBF8940000000
  %3153 = fptosi float %3152 to i32
  %3154 = bitcast i32 %3153 to float
  %3155 = bitcast float %3147 to i32
  %3156 = sitofp i32 %3155 to float
  %3157 = fadd fast float %3156, 0xC1CFBF8940000000
  %3158 = fmul fast float %3157, %3145
  %3159 = fadd fast float %3158, 0x41CFBF8940000000
  %3160 = fptosi float %3159 to i32
  %3161 = bitcast i32 %3160 to float
  %3162 = fmul fast float %3154, %3142
  %3163 = fmul fast float %3161, %3142
  %3164 = fsub fast float %3147, %3162
  %3165 = fadd fast float %3163, %3147
  %3166 = call float @dx.op.unary.f32(i32 7, float %3164)  ; Saturate(value)
  %3167 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  %3168 = fsub fast float %3136, %3166
  %3169 = fsub fast float %3167, %3166
  %3170 = bitcast float %3169 to i32
  %3171 = sub nsw i32 2129859010, %3170
  %3172 = bitcast i32 %3171 to float
  %3173 = fmul fast float %3172, %3168
  %3174 = call float @dx.op.unary.f32(i32 7, float %3173)  ; Saturate(value)
  br label %3175

; <label>:3175                                    ; preds = %3129, %3123
  %3176 = phi float [ %3174, %3129 ], [ %3124, %3123 ]
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 128
  %3180 = icmp eq i32 %3179, 0
  br i1 %3180, label %3197, label %3181

; <label>:3181                                    ; preds = %3175
  %3182 = add i32 %35, 420
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = add i32 %3184, 0
  %3186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3187 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3186, %dx.types.Handle %72, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3188 = extractvalue %dx.types.ResRet.f32 %3187, 0
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 524288
  %3192 = icmp ne i32 %3191, 0
  %3193 = fcmp fast ogt float %3188, 0x3FE0101020000000
  %3194 = select i1 %3193, float 1.000000e+00, float 0.000000e+00
  %3195 = select i1 %3192, float %3194, float %3188
  %3196 = fmul fast float %3195, %3176
  br label %3197

; <label>:3197                                    ; preds = %3181, %3175
  %3198 = phi float [ %3196, %3181 ], [ %3176, %3175 ]
  %3199 = fcmp fast ult float %3198, 0x3F70101020000000
  br i1 %3199, label %3880, label %3200

; <label>:3200                                    ; preds = %3197
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 16
  %3204 = icmp eq i32 %3203, 0
  br i1 %3204, label %3403, label %3205

; <label>:3205                                    ; preds = %3200
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = add i32 %35, 372
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = add i32 %3210, 0
  %3212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3212, %dx.types.Handle %71, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3214 = extractvalue %dx.types.ResRet.f32 %3213, 0
  %3215 = extractvalue %dx.types.ResRet.f32 %3213, 1
  %3216 = extractvalue %dx.types.ResRet.f32 %3213, 2
  %3217 = extractvalue %dx.types.ResRet.f32 %3213, 3
  %3218 = and i32 %3207, 255
  %3219 = uitofp i32 %3218 to float
  %3220 = lshr i32 %3207, 8
  %3221 = and i32 %3220, 255
  %3222 = uitofp i32 %3221 to float
  %3223 = fmul fast float %3217, %3219
  %3224 = fadd fast float %3223, %3222
  %3225 = fmul fast float %3224, 0x3F70101000000000
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 512
  %3229 = icmp eq i32 %3228, 0
  br i1 %3229, label %3238, label %3230

; <label>:3230                                    ; preds = %3205
  %3231 = add i32 %35, 452
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = add i32 %3233, 0
  %3235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3235, %dx.types.Handle %72, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  br label %3238

; <label>:3238                                    ; preds = %3230, %3205
  %3239 = phi float [ %3237, %3230 ], [ 1.000000e+00, %3205 ]
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 33554432
  %3243 = icmp eq i32 %3242, 0
  br i1 %3243, label %3350, label %3244

; <label>:3244                                    ; preds = %3238
  %3245 = add i32 %35, 272
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3245, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = and i32 %3247, 65535
  %3249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3248)  ; LegacyF16ToF32(value)
  %3250 = lshr i32 %3247, 16
  %3251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3250)  ; LegacyF16ToF32(value)
  %3252 = add i32 %35, 276
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = and i32 %3254, 65535
  %3256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3255)  ; LegacyF16ToF32(value)
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = lshr i32 %3258, 24
  %3260 = uitofp i32 %3259 to float
  %3261 = fmul fast float %3260, 0x3F70101020000000
  %3262 = and i32 %3258, 255
  %3263 = uitofp i32 %3262 to float
  %3264 = fmul fast float %3263, 0x3F70101020000000
  %3265 = lshr i32 %3258, 8
  %3266 = and i32 %3265, 255
  %3267 = uitofp i32 %3266 to float
  %3268 = fmul fast float %3267, 0x3F70101020000000
  %3269 = lshr i32 %3258, 16
  %3270 = and i32 %3269, 255
  %3271 = uitofp i32 %3270 to float
  %3272 = fmul fast float %3271, 0x3F70101020000000
  %3273 = add i32 %35, 268
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3273, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = lshr i32 %3275, 24
  %3277 = uitofp i32 %3276 to float
  %3278 = fmul fast float %3277, 0x3F70101020000000
  %3279 = and i32 %3275, 255
  %3280 = uitofp i32 %3279 to float
  %3281 = fmul fast float %3280, 0x3F70101020000000
  %3282 = lshr i32 %3275, 8
  %3283 = and i32 %3282, 255
  %3284 = uitofp i32 %3283 to float
  %3285 = fmul fast float %3284, 0x3F70101020000000
  %3286 = lshr i32 %3275, 16
  %3287 = and i32 %3286, 255
  %3288 = uitofp i32 %3287 to float
  %3289 = fmul fast float %3288, 0x3F70101020000000
  %3290 = bitcast float %3214 to i32
  %3291 = ashr i32 %3290, 1
  %3292 = sub nsw i32 1597463174, %3291
  %3293 = bitcast i32 %3292 to float
  %3294 = fmul fast float %3214, 5.000000e-01
  %3295 = fmul fast float %3293, %3293
  %3296 = fmul fast float %3295, %3294
  %3297 = fsub fast float 1.500000e+00, %3296
  %3298 = fmul fast float %3293, %3214
  %3299 = fmul fast float %3298, %3297
  %3300 = bitcast float %3215 to i32
  %3301 = ashr i32 %3300, 1
  %3302 = sub nsw i32 1597463174, %3301
  %3303 = bitcast i32 %3302 to float
  %3304 = fmul fast float %3215, 5.000000e-01
  %3305 = fmul fast float %3303, %3303
  %3306 = fmul fast float %3305, %3304
  %3307 = fsub fast float 1.500000e+00, %3306
  %3308 = fmul fast float %3303, %3215
  %3309 = fmul fast float %3308, %3307
  %3310 = bitcast float %3216 to i32
  %3311 = ashr i32 %3310, 1
  %3312 = sub nsw i32 1597463174, %3311
  %3313 = bitcast i32 %3312 to float
  %3314 = fmul fast float %3216, 5.000000e-01
  %3315 = fmul fast float %3313, %3313
  %3316 = fmul fast float %3315, %3314
  %3317 = fsub fast float 1.500000e+00, %3316
  %3318 = fmul fast float %3313, %3216
  %3319 = fmul fast float %3318, %3317
  %3320 = fsub fast float %3299, %3281
  %3321 = fsub fast float %3309, %3285
  %3322 = fsub fast float %3319, %3289
  %3323 = fmul fast float %3320, %3249
  %3324 = fmul fast float %3321, %3251
  %3325 = fmul fast float %3322, %3256
  %3326 = fadd fast float %3323, %3264
  %3327 = fadd fast float %3324, %3268
  %3328 = fadd fast float %3325, %3272
  %3329 = call float @dx.op.unary.f32(i32 7, float %3326)  ; Saturate(value)
  %3330 = call float @dx.op.unary.f32(i32 7, float %3327)  ; Saturate(value)
  %3331 = call float @dx.op.unary.f32(i32 7, float %3328)  ; Saturate(value)
  %3332 = fmul fast float %3329, %3329
  %3333 = fmul fast float %3330, %3330
  %3334 = fmul fast float %3331, %3331
  %3335 = fsub fast float %3332, %3214
  %3336 = fsub fast float %3333, %3215
  %3337 = fsub fast float %3334, %3216
  %3338 = fmul fast float %3335, %3239
  %3339 = fmul fast float %3336, %3239
  %3340 = fmul fast float %3337, %3239
  %3341 = fadd fast float %3338, %3214
  %3342 = fadd fast float %3339, %3215
  %3343 = fadd fast float %3340, %3216
  %3344 = fadd fast float %3261, %3225
  %3345 = fsub fast float %3344, %3278
  %3346 = call float @dx.op.unary.f32(i32 7, float %3345)  ; Saturate(value)
  %3347 = fsub fast float %3346, %3225
  %3348 = fmul fast float %3347, %3239
  %3349 = fadd fast float %3348, %3225
  br label %3403

; <label>:3350                                    ; preds = %3238
  %3351 = and i32 %3241, 134217728
  %3352 = icmp eq i32 %3351, 0
  br i1 %3352, label %3387, label %3353

; <label>:3353                                    ; preds = %3350
  %3354 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %3355 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %3356 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %3357 = fadd fast float %3354, -5.000000e-01
  %3358 = fadd fast float %3355, -5.000000e-01
  %3359 = fadd fast float %3356, -5.000000e-01
  %3360 = fmul fast float %3357, %3239
  %3361 = fmul fast float %3358, %3239
  %3362 = fmul fast float %3359, %3239
  %3363 = fadd fast float %3360, 5.000000e-01
  %3364 = fadd fast float %3361, 5.000000e-01
  %3365 = fadd fast float %3362, 5.000000e-01
  %3366 = call float @dx.op.unary.f32(i32 24, float %3214)  ; Sqrt(value)
  %3367 = call float @dx.op.unary.f32(i32 24, float %3215)  ; Sqrt(value)
  %3368 = call float @dx.op.unary.f32(i32 24, float %3216)  ; Sqrt(value)
  %3369 = fmul fast float %3363, 2.000000e+00
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = fmul fast float %3370, %3366
  %3372 = fadd fast float %3371, %3369
  %3373 = fmul fast float %3372, %3366
  %3374 = fmul fast float %3364, 2.000000e+00
  %3375 = fsub fast float 1.000000e+00, %3374
  %3376 = fmul fast float %3375, %3367
  %3377 = fadd fast float %3376, %3374
  %3378 = fmul fast float %3377, %3367
  %3379 = fmul fast float %3365, 2.000000e+00
  %3380 = fsub fast float 1.000000e+00, %3379
  %3381 = fmul fast float %3380, %3368
  %3382 = fadd fast float %3381, %3379
  %3383 = fmul fast float %3382, %3368
  %3384 = fmul fast float %3373, %3373
  %3385 = fmul fast float %3378, %3378
  %3386 = fmul fast float %3383, %3383
  br label %3403

; <label>:3387                                    ; preds = %3350
  %3388 = fmul fast float %320, %320
  %3389 = fmul fast float %324, %324
  %3390 = fmul fast float %328, %328
  %3391 = fadd fast float %3388, -1.000000e+00
  %3392 = fadd fast float %3389, -1.000000e+00
  %3393 = fadd fast float %3390, -1.000000e+00
  %3394 = fmul fast float %3239, %3391
  %3395 = fmul fast float %3239, %3392
  %3396 = fmul fast float %3239, %3393
  %3397 = fadd fast float %3394, 1.000000e+00
  %3398 = fadd fast float %3395, 1.000000e+00
  %3399 = fadd fast float %3396, 1.000000e+00
  %3400 = fmul fast float %3397, %3214
  %3401 = fmul fast float %3398, %3215
  %3402 = fmul fast float %3399, %3216
  br label %3403

; <label>:3403                                    ; preds = %3387, %3353, %3244, %3200
  %3404 = phi float [ %3349, %3244 ], [ %3225, %3353 ], [ %3225, %3387 ], [ 0x3FA23C0BE0000000, %3200 ]
  %3405 = phi float [ %3341, %3244 ], [ %3384, %3353 ], [ %3400, %3387 ], [ 1.000000e+00, %3200 ]
  %3406 = phi float [ %3342, %3244 ], [ %3385, %3353 ], [ %3401, %3387 ], [ 1.000000e+00, %3200 ]
  %3407 = phi float [ %3343, %3244 ], [ %3386, %3353 ], [ %3402, %3387 ], [ 1.000000e+00, %3200 ]
  %3408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3409 = extractvalue %dx.types.CBufRet.i32 %3408, 1
  %3410 = and i32 %3409, 1
  %3411 = icmp ne i32 %3410, 0
  %3412 = add i32 %35, 356
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = and i32 %3414, 32
  %3416 = icmp ne i32 %3415, 0
  %3417 = and i1 %3411, %3416
  %3418 = select i1 %3417, float 1.000000e+00, float %3405
  %3419 = select i1 %3417, float 0x3FD3333340000000, float %3406
  %3420 = select i1 %3417, float 0x3FD3333340000000, float %3407
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = and i32 %3422, 32
  %3424 = icmp eq i32 %3423, 0
  br i1 %3424, label %3497, label %3425

; <label>:3425                                    ; preds = %3403
  %3426 = add i32 %35, 140
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = add i32 %35, 388
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = add i32 %3431, 0
  %3433 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3432, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3433, %dx.types.Handle %71, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.ResRet.f32 %3434, 2
  %3438 = extractvalue %dx.types.ResRet.f32 %3434, 3
  %3439 = and i32 %3428, 255
  %3440 = uitofp i32 %3439 to float
  %3441 = lshr i32 %3428, 8
  %3442 = and i32 %3441, 255
  %3443 = uitofp i32 %3442 to float
  %3444 = lshr i32 %3428, 16
  %3445 = and i32 %3444, 255
  %3446 = uitofp i32 %3445 to float
  %3447 = fmul fast float %3446, 0x3F70101000000000
  %3448 = fmul fast float %3435, %3440
  %3449 = fadd fast float %3448, %3443
  %3450 = fmul fast float %3449, 0x3F70101000000000
  %3451 = fadd fast float %3436, -5.000000e-01
  %3452 = fadd fast float %3438, -5.000000e-01
  %3453 = fmul fast float %3451, %3447
  %3454 = fmul fast float %3452, %3447
  %3455 = fadd fast float %3453, 5.000000e-01
  %3456 = fadd fast float %3454, 5.000000e-01
  %3457 = fmul fast float %3455, 2.000000e+00
  %3458 = fadd fast float %3457, -1.000000e+00
  %3459 = fmul fast float %3456, 2.000000e+00
  %3460 = fadd fast float %3459, -1.000000e+00
  %3461 = fadd fast float %3458, %3460
  %3462 = fmul fast float %3461, 5.000000e-01
  %3463 = fsub fast float %3458, %3460
  %3464 = fmul fast float %3463, 5.000000e-01
  %3465 = call float @dx.op.unary.f32(i32 6, float %3462)  ; FAbs(value)
  %3466 = fsub fast float 1.000000e+00, %3465
  %3467 = call float @dx.op.unary.f32(i32 6, float %3464)  ; FAbs(value)
  %3468 = fsub fast float %3466, %3467
  %3469 = call float @dx.op.dot3.f32(i32 55, float %3462, float %3464, float %3468, float %3462, float %3464, float %3468)  ; Dot3(ax,ay,az,bx,by,bz)
  %3470 = call float @dx.op.unary.f32(i32 25, float %3469)  ; Rsqrt(value)
  %3471 = fmul fast float %3462, %3470
  %3472 = fmul fast float %3464, %3470
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 67108864
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3493, label %3477

; <label>:3477                                    ; preds = %3425
  %3478 = add i32 %35, 328
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = and i32 %3480, 65535
  %3482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3481)  ; LegacyF16ToF32(value)
  %3483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3484 = extractvalue %dx.types.ResRet.i32 %3483, 0
  %3485 = and i32 %3484, 65535
  %3486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3485)  ; LegacyF16ToF32(value)
  %3487 = lshr i32 %3480, 16
  %3488 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3487)  ; LegacyF16ToF32(value)
  %3489 = fsub fast float %3450, %3488
  %3490 = fmul fast float %3489, %3482
  %3491 = fadd fast float %3490, %3486
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  br label %3493

; <label>:3493                                    ; preds = %3477, %3425
  %3494 = phi float [ %3492, %3477 ], [ %3450, %3425 ]
  %3495 = call float @dx.op.dot2.f32(i32 54, float %3471, float %3472, float %2914, float %2915)  ; Dot2(ax,ay,bx,by)
  %3496 = call float @dx.op.dot2.f32(i32 54, float %3471, float %3472, float %2916, float %2917)  ; Dot2(ax,ay,bx,by)
  br label %3497

; <label>:3497                                    ; preds = %3493, %3403
  %3498 = phi float [ %3494, %3493 ], [ 0x3FD6666660000000, %3403 ]
  %3499 = phi float [ %3495, %3493 ], [ 0.000000e+00, %3403 ]
  %3500 = phi float [ %3496, %3493 ], [ 0.000000e+00, %3403 ]
  %3501 = phi float [ %3437, %3493 ], [ 1.000000e+00, %3403 ]
  %3502 = add i32 %35, 208
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = lshr i32 %3504, 22
  %3506 = shl nuw nsw i32 %3505, 5
  %3507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3506)  ; LegacyF16ToF32(value)
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = and i32 %3509, 64
  %3511 = icmp eq i32 %3510, 0
  br i1 %3511, label %3545, label %3512

; <label>:3512                                    ; preds = %3497
  %3513 = add i32 %35, 404
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = add i32 %3515, 0
  %3517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3516, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3519 = extractvalue %dx.types.ResRet.i32 %3518, 0
  %3520 = and i32 %3519, 131072
  %3521 = icmp eq i32 %3520, 0
  %3522 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3517, %dx.types.Handle %71, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3523 = extractvalue %dx.types.ResRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.ResRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.ResRet.f32 %3522, 2
  %3526 = fmul fast float %3523, %308
  %3527 = fmul fast float %3524, %311
  %3528 = fmul fast float %3525, %314
  br i1 %3521, label %3535, label %3529

; <label>:3529                                    ; preds = %3512
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 0
  %3532 = fmul fast float %3531, %3526
  %3533 = fmul fast float %3531, %3527
  %3534 = fmul fast float %3531, %3528
  br label %3535

; <label>:3535                                    ; preds = %3529, %3512
  %3536 = phi float [ %3532, %3529 ], [ %3526, %3512 ]
  %3537 = phi float [ %3533, %3529 ], [ %3527, %3512 ]
  %3538 = phi float [ %3534, %3529 ], [ %3528, %3512 ]
  %3539 = fmul fast float %3536, %3507
  %3540 = select i1 %176, float %3539, float %3536
  %3541 = call float @dx.op.dot3.f32(i32 55, float %3540, float %3537, float %3538, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3542 = select i1 %176, float 0.000000e+00, float %3536
  %3543 = select i1 %176, float %3541, float %3537
  %3544 = select i1 %176, float 0.000000e+00, float %3538
  br label %3545

; <label>:3545                                    ; preds = %3535, %3497
  %3546 = phi float [ %3542, %3535 ], [ 0.000000e+00, %3497 ]
  %3547 = phi float [ %3543, %3535 ], [ 0.000000e+00, %3497 ]
  %3548 = phi float [ %3544, %3535 ], [ 0.000000e+00, %3497 ]
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = and i32 %3550, 1024
  %3552 = icmp eq i32 %3551, 0
  br i1 %3552, label %3583, label %3553

; <label>:3553                                    ; preds = %3545
  %3554 = add i32 %35, 200
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = fmul fast float %3558, 0x3F70101020000000
  %3560 = lshr i32 %3556, 8
  %3561 = and i32 %3560, 255
  %3562 = uitofp i32 %3561 to float
  %3563 = fmul fast float %3562, 0x3F70101020000000
  %3564 = lshr i32 %3556, 16
  %3565 = and i32 %3564, 255
  %3566 = uitofp i32 %3565 to float
  %3567 = fmul fast float %3566, 0x3F70101020000000
  %3568 = fmul fast float %3559, %3559
  %3569 = fmul fast float %3563, %3563
  %3570 = fmul fast float %3567, %3567
  %3571 = add i32 %35, 468
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = add i32 %3573, 0
  %3575 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3574, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3576 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3575, %dx.types.Handle %72, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = fmul fast float %3568, %3577
  %3581 = fmul fast float %3569, %3578
  %3582 = fmul fast float %3570, %3579
  br label %3583

; <label>:3583                                    ; preds = %3553, %3545
  %3584 = phi float [ %3580, %3553 ], [ 0.000000e+00, %3545 ]
  %3585 = phi float [ %3581, %3553 ], [ 0.000000e+00, %3545 ]
  %3586 = phi float [ %3582, %3553 ], [ 0.000000e+00, %3545 ]
  %3587 = fcmp fast ogt float %3584, 0.000000e+00
  %3588 = fcmp fast ogt float %3585, 0.000000e+00
  %3589 = fcmp fast ogt float %3586, 0.000000e+00
  %3590 = call float @dx.op.unary.f32(i32 23, float %3584)  ; Log(value)
  %3591 = call float @dx.op.unary.f32(i32 23, float %3585)  ; Log(value)
  %3592 = call float @dx.op.unary.f32(i32 23, float %3586)  ; Log(value)
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = lshr i32 %3594, 7
  %3596 = and i32 %3595, 32752
  %3597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3596)  ; LegacyF16ToF32(value)
  %3598 = fmul fast float %3590, 0xBFE62E4300000000
  %3599 = fmul fast float %3598, %3597
  %3600 = fmul fast float %3591, 0xBFE62E4300000000
  %3601 = fmul fast float %3600, %3597
  %3602 = fmul fast float %3592, 0xBFE62E4300000000
  %3603 = fmul fast float %3602, %3597
  %3604 = select i1 %3587, float %3599, float 1.270000e+02
  %3605 = select i1 %3588, float %3601, float 1.270000e+02
  %3606 = select i1 %3589, float %3603, float 1.270000e+02
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = and i32 %3608, 26624
  %3610 = icmp eq i32 %3609, 0
  br i1 %3610, label %3647, label %3611

; <label>:3611                                    ; preds = %3583
  %3612 = add i32 %35, 484
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = add i32 %3614, 0
  %3616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3617 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3616, %dx.types.Handle %72, float %3010, float %3011, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = and i32 %3620, 1048576
  %3622 = icmp ne i32 %3621, 0
  %3623 = and i32 %3620, 2048
  %3624 = icmp eq i32 %3623, 0
  br i1 %3624, label %3634, label %3625

; <label>:3625                                    ; preds = %3611
  %3626 = extractvalue %dx.types.ResRet.f32 %3617, 3
  %3627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.i32 %3627, 0
  %3629 = shl i32 %3628, 4
  %3630 = and i32 %3629, 32752
  %3631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3630)  ; LegacyF16ToF32(value)
  %3632 = fmul fast float %3631, %3626
  %3633 = call float @dx.op.binary.f32(i32 35, float %3632, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3634

; <label>:3634                                    ; preds = %3625, %3611
  %3635 = phi float [ %3633, %3625 ], [ 0x3F70101020000000, %3611 ]
  %3636 = and i32 %3620, 16384
  %3637 = icmp eq i32 %3636, 0
  br i1 %3637, label %3647, label %3638

; <label>:3638                                    ; preds = %3634
  %3639 = add i32 %35, 144
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = lshr i32 %3641, 24
  %3643 = uitofp i32 %3642 to float
  %3644 = fmul fast float %3618, 0x3F70101020000000
  %3645 = select i1 %3622, float 0x3F70101020000000, float %3644
  %3646 = fmul fast float %3645, %3643
  br label %3647

; <label>:3647                                    ; preds = %3638, %3634, %3583
  %3648 = phi float [ %3635, %3638 ], [ %3635, %3634 ], [ 0x3F70101020000000, %3583 ]
  %3649 = phi float [ %3646, %3638 ], [ 0.000000e+00, %3634 ], [ 0.000000e+00, %3583 ]
  %3650 = add i32 %35, 144
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = and i32 %3652, 255
  %3654 = uitofp i32 %3653 to float
  %3655 = lshr i32 %3652, 8
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = call float @dx.op.dot3.f32(i32 55, float %3418, float %3419, float %3420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3659 = fmul fast float %3657, %3658
  %3660 = fadd fast float %3659, %3654
  %3661 = fmul fast float %3660, 0x3F70101020000000
  %3662 = call float @dx.op.unary.f32(i32 7, float %3661)  ; Saturate(value)
  br i1 %2902, label %3663, label %3698

; <label>:3663                                    ; preds = %3647
  %3664 = fmul fast float %3648, 2.000000e+00
  %3665 = fcmp fast olt float %3604, 1.270000e+02
  %3666 = fcmp fast olt float %3605, 1.270000e+02
  %3667 = fcmp fast olt float %3606, 1.270000e+02
  %3668 = fmul fast float %3604, 0xBFF7154760000000
  %3669 = fmul fast float %3668, %3664
  %3670 = fmul fast float %3605, 0xBFF7154760000000
  %3671 = fmul fast float %3670, %3664
  %3672 = fmul fast float %3606, 0xBFF7154760000000
  %3673 = fmul fast float %3672, %3664
  %3674 = call float @dx.op.unary.f32(i32 21, float %3669)  ; Exp(value)
  %3675 = call float @dx.op.unary.f32(i32 21, float %3671)  ; Exp(value)
  %3676 = call float @dx.op.unary.f32(i32 21, float %3673)  ; Exp(value)
  %3677 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3678 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3679 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3680 = fadd fast float %3677, -1.000000e+00
  %3681 = select i1 %3665, float %3680, float -1.000000e+00
  %3682 = fadd fast float %3678, -1.000000e+00
  %3683 = select i1 %3666, float %3682, float -1.000000e+00
  %3684 = fadd fast float %3679, -1.000000e+00
  %3685 = select i1 %3667, float %3684, float -1.000000e+00
  %3686 = fmul fast float %3681, %3198
  %3687 = fmul fast float %3683, %3198
  %3688 = fmul fast float %3685, %3198
  %3689 = fadd fast float %3686, 1.000000e+00
  %3690 = fadd fast float %3687, 1.000000e+00
  %3691 = fadd fast float %3688, 1.000000e+00
  %3692 = fmul fast float %3689, %2890
  %3693 = fmul fast float %3690, %2891
  %3694 = fmul fast float %3691, %2892
  %3695 = fmul fast float %3689, %2893
  %3696 = fmul fast float %3690, %2894
  %3697 = fmul fast float %3691, %2895
  br label %3698

; <label>:3698                                    ; preds = %3663, %3647
  %3699 = phi float [ %3692, %3663 ], [ %2890, %3647 ]
  %3700 = phi float [ %3693, %3663 ], [ %2891, %3647 ]
  %3701 = phi float [ %3694, %3663 ], [ %2892, %3647 ]
  %3702 = phi float [ %3695, %3663 ], [ %2893, %3647 ]
  %3703 = phi float [ %3696, %3663 ], [ %2894, %3647 ]
  %3704 = phi float [ %3697, %3663 ], [ %2895, %3647 ]
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = and i32 %3706, 3
  %3708 = icmp eq i32 %3707, 3
  br i1 %3708, label %3787, label %3709

; <label>:3709                                    ; preds = %3698
  %3710 = and i32 %3706, 16
  %3711 = icmp ne i32 %3710, 0
  %3712 = select i1 %3711, float %3198, float 0.000000e+00
  %3713 = icmp eq i32 %3707, 0
  br i1 %3713, label %3714, label %3742

; <label>:3714                                    ; preds = %3709
  %3715 = and i32 %3706, 64
  %3716 = icmp ne i32 %3715, 0
  %3717 = select i1 %3716, float %3198, float 0.000000e+00
  %3718 = fsub fast float %3418, %3699
  %3719 = fsub fast float %3419, %3700
  %3720 = fsub fast float %3420, %3701
  %3721 = fmul fast float %3712, %3718
  %3722 = fmul fast float %3712, %3719
  %3723 = fmul fast float %3712, %3720
  %3724 = fadd fast float %3721, %3699
  %3725 = fadd fast float %3722, %3700
  %3726 = fadd fast float %3723, %3701
  %3727 = fsub fast float %3404, %2896
  %3728 = fmul fast float %3712, %3727
  %3729 = fadd fast float %3728, %2896
  %3730 = fsub fast float %3546, %3702
  %3731 = fsub fast float %3547, %3703
  %3732 = fsub fast float %3548, %3704
  %3733 = fmul fast float %3717, %3730
  %3734 = fmul fast float %3717, %3731
  %3735 = fmul fast float %3717, %3732
  %3736 = fadd fast float %3733, %3702
  %3737 = fadd fast float %3734, %3703
  %3738 = fadd fast float %3735, %3704
  %3739 = fsub fast float %3662, %2900
  %3740 = fmul fast float %3712, %3739
  %3741 = fadd fast float %3740, %2900
  br label %3787

; <label>:3742                                    ; preds = %3709
  %3743 = icmp eq i32 %3707, 1
  br i1 %3743, label %3744, label %3757

; <label>:3744                                    ; preds = %3742
  %3745 = fadd fast float %3418, -1.000000e+00
  %3746 = fadd fast float %3419, -1.000000e+00
  %3747 = fadd fast float %3420, -1.000000e+00
  %3748 = fmul fast float %3712, %3745
  %3749 = fmul fast float %3712, %3746
  %3750 = fmul fast float %3712, %3747
  %3751 = fadd fast float %3748, 1.000000e+00
  %3752 = fadd fast float %3749, 1.000000e+00
  %3753 = fadd fast float %3750, 1.000000e+00
  %3754 = fmul fast float %3751, %3699
  %3755 = fmul fast float %3752, %3700
  %3756 = fmul fast float %3753, %3701
  br label %3787

; <label>:3757                                    ; preds = %3742
  %3758 = icmp eq i32 %3707, 2
  br i1 %3758, label %3759, label %3787

; <label>:3759                                    ; preds = %3757
  %3760 = call float @dx.op.unary.f32(i32 24, float %3418)  ; Sqrt(value)
  %3761 = call float @dx.op.unary.f32(i32 24, float %3419)  ; Sqrt(value)
  %3762 = call float @dx.op.unary.f32(i32 24, float %3420)  ; Sqrt(value)
  %3763 = fadd fast float %3760, -5.000000e-01
  %3764 = fadd fast float %3761, -5.000000e-01
  %3765 = fadd fast float %3762, -5.000000e-01
  %3766 = fmul fast float %3763, %3712
  %3767 = fmul fast float %3764, %3712
  %3768 = fmul fast float %3765, %3712
  %3769 = fadd fast float %3766, 5.000000e-01
  %3770 = fadd fast float %3767, 5.000000e-01
  %3771 = fadd fast float %3768, 5.000000e-01
  %3772 = fmul fast float %3769, 2.000000e+00
  %3773 = fsub fast float 1.000000e+00, %3772
  %3774 = fmul fast float %3773, %3699
  %3775 = fadd fast float %3774, %3772
  %3776 = fmul fast float %3775, %3699
  %3777 = fmul fast float %3770, 2.000000e+00
  %3778 = fsub fast float 1.000000e+00, %3777
  %3779 = fmul fast float %3778, %3700
  %3780 = fadd fast float %3779, %3777
  %3781 = fmul fast float %3780, %3700
  %3782 = fmul fast float %3771, 2.000000e+00
  %3783 = fsub fast float 1.000000e+00, %3782
  %3784 = fmul fast float %3783, %3701
  %3785 = fadd fast float %3784, %3782
  %3786 = fmul fast float %3785, %3701
  br label %3787

; <label>:3787                                    ; preds = %3759, %3757, %3744, %3714, %3698
  %3788 = phi float [ %3699, %3698 ], [ %3776, %3759 ], [ %3699, %3757 ], [ %3754, %3744 ], [ %3724, %3714 ]
  %3789 = phi float [ %3700, %3698 ], [ %3781, %3759 ], [ %3700, %3757 ], [ %3755, %3744 ], [ %3725, %3714 ]
  %3790 = phi float [ %3701, %3698 ], [ %3786, %3759 ], [ %3701, %3757 ], [ %3756, %3744 ], [ %3726, %3714 ]
  %3791 = phi float [ %3702, %3698 ], [ %3702, %3759 ], [ %3702, %3757 ], [ %3702, %3744 ], [ %3736, %3714 ]
  %3792 = phi float [ %3703, %3698 ], [ %3703, %3759 ], [ %3703, %3757 ], [ %3703, %3744 ], [ %3737, %3714 ]
  %3793 = phi float [ %3704, %3698 ], [ %3704, %3759 ], [ %3704, %3757 ], [ %3704, %3744 ], [ %3738, %3714 ]
  %3794 = phi float [ %2896, %3698 ], [ %2896, %3759 ], [ %2896, %3757 ], [ %2896, %3744 ], [ %3729, %3714 ]
  %3795 = phi float [ %2900, %3698 ], [ %2900, %3759 ], [ %2900, %3757 ], [ %2900, %3744 ], [ %3741, %3714 ]
  %3796 = and i32 %3706, 12
  %3797 = icmp eq i32 %3796, 12
  br i1 %3797, label %3880, label %3798

; <label>:3798                                    ; preds = %3787
  %3799 = and i32 %3706, 2097184
  %3800 = icmp eq i32 %3799, 2097184
  %3801 = select i1 %3800, float %3198, float 0.000000e+00
  %3802 = and i32 %3706, 4194336
  %3803 = icmp eq i32 %3802, 4194336
  %3804 = select i1 %3803, float %3198, float 0.000000e+00
  %3805 = and i32 %3706, 8388640
  %3806 = icmp eq i32 %3805, 8388640
  %3807 = select i1 %3806, float %3198, float 0.000000e+00
  %3808 = and i32 %3706, 16384
  %3809 = icmp ne i32 %3808, 0
  %3810 = select i1 %3809, float %3198, float 0.000000e+00
  %3811 = icmp eq i32 %3796, 0
  br i1 %3811, label %3812, label %3828

; <label>:3812                                    ; preds = %3798
  %3813 = fsub fast float %3499, %2888
  %3814 = fsub fast float %3500, %2889
  %3815 = fmul fast float %3801, %3813
  %3816 = fmul fast float %3801, %3814
  %3817 = fadd fast float %3815, %2888
  %3818 = fadd fast float %3816, %2889
  %3819 = fsub fast float %3501, %2898
  %3820 = fmul fast float %3804, %3819
  %3821 = fadd fast float %3820, %2898
  %3822 = fsub fast float %3498, %2897
  %3823 = fmul fast float %3807, %3822
  %3824 = fadd fast float %3823, %2897
  %3825 = fsub fast float %3649, %2899
  %3826 = fmul fast float %3810, %3825
  %3827 = fadd fast float %3826, %2899
  br label %3880

; <label>:3828                                    ; preds = %3798
  %3829 = icmp eq i32 %3796, 4
  br i1 %3829, label %3830, label %3864

; <label>:3830                                    ; preds = %3828
  %3831 = fmul fast float %3801, %3499
  %3832 = fmul fast float %3801, %3500
  %3833 = fadd fast float %3831, %2888
  %3834 = fadd fast float %3832, %2889
  %3835 = call float @dx.op.binary.f32(i32 36, float %2898, float %3501)  ; FMin(a,b)
  %3836 = fsub fast float %3835, %2898
  %3837 = fmul fast float %3836, %3804
  %3838 = fadd fast float %3837, %2898
  %3839 = fadd fast float %3498, %2897
  %3840 = fmul fast float %3839, 0x3FF337FAE0000000
  %3841 = fmul fast float %2897, %2897
  %3842 = fmul fast float %3498, %3498
  %3843 = fadd fast float %3842, %3841
  %3844 = fmul fast float %3843, 0x3FE5152B00000000
  %3845 = fmul fast float %2897, 0xBFCC1F85E0000000
  %3846 = fmul fast float %3845, %3498
  %3847 = fadd fast float %3846, 0xBFE1363700000000
  %3848 = fadd fast float %3847, %3840
  %3849 = fsub fast float %3848, %3844
  %3850 = fmul fast float %3839, 0x3FBA6F0D00000000
  %3851 = fmul fast float %3843, 0x3FD0432880000000
  %3852 = fmul fast float %2897, 0xBFEF110800000000
  %3853 = fmul fast float %3852, %3498
  %3854 = fadd fast float %3853, 1.000000e+00
  %3855 = fsub fast float %3854, %3850
  %3856 = fadd fast float %3855, %3851
  %3857 = fdiv fast float %3849, %3856
  %3858 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3859 = fsub fast float %3858, %2897
  %3860 = fmul fast float %3859, %3807
  %3861 = fadd fast float %3860, %2897
  %3862 = fmul fast float %3810, %3649
  %3863 = fadd fast float %3862, %2899
  br label %3880

; <label>:3864                                    ; preds = %3828
  %3865 = icmp eq i32 %3796, 8
  br i1 %3865, label %3866, label %3880

; <label>:3866                                    ; preds = %3864
  %3867 = fmul fast float %3801, %3499
  %3868 = fmul fast float %3801, %3500
  %3869 = fadd fast float %3867, %2888
  %3870 = fadd fast float %3868, %2889
  %3871 = call float @dx.op.binary.f32(i32 36, float %2898, float %3501)  ; FMin(a,b)
  %3872 = fsub fast float %3871, %2898
  %3873 = fmul fast float %3872, %3804
  %3874 = fadd fast float %3873, %2898
  %3875 = fsub fast float %3498, %2897
  %3876 = fmul fast float %3807, %3875
  %3877 = fadd fast float %3876, %2897
  %3878 = fmul fast float %3810, %3649
  %3879 = fadd fast float %3878, %2899
  br label %3880

; <label>:3880                                    ; preds = %3866, %3864, %3830, %3812, %3787, %3197, %2901, %2887
  %3881 = phi float [ %2888, %3787 ], [ %2888, %3197 ], [ %2888, %2887 ], [ %2888, %2901 ], [ %3817, %3812 ], [ %3833, %3830 ], [ %2888, %3864 ], [ %3869, %3866 ]
  %3882 = phi float [ %2889, %3787 ], [ %2889, %3197 ], [ %2889, %2887 ], [ %2889, %2901 ], [ %3818, %3812 ], [ %3834, %3830 ], [ %2889, %3864 ], [ %3870, %3866 ]
  %3883 = phi float [ %3788, %3787 ], [ %2890, %3197 ], [ %2890, %2887 ], [ %2890, %2901 ], [ %3788, %3812 ], [ %3788, %3830 ], [ %3788, %3864 ], [ %3788, %3866 ]
  %3884 = phi float [ %3789, %3787 ], [ %2891, %3197 ], [ %2891, %2887 ], [ %2891, %2901 ], [ %3789, %3812 ], [ %3789, %3830 ], [ %3789, %3864 ], [ %3789, %3866 ]
  %3885 = phi float [ %3790, %3787 ], [ %2892, %3197 ], [ %2892, %2887 ], [ %2892, %2901 ], [ %3790, %3812 ], [ %3790, %3830 ], [ %3790, %3864 ], [ %3790, %3866 ]
  %3886 = phi float [ %3791, %3787 ], [ %2893, %3197 ], [ %2893, %2887 ], [ %2893, %2901 ], [ %3791, %3812 ], [ %3791, %3830 ], [ %3791, %3864 ], [ %3791, %3866 ]
  %3887 = phi float [ %3792, %3787 ], [ %2894, %3197 ], [ %2894, %2887 ], [ %2894, %2901 ], [ %3792, %3812 ], [ %3792, %3830 ], [ %3792, %3864 ], [ %3792, %3866 ]
  %3888 = phi float [ %3793, %3787 ], [ %2895, %3197 ], [ %2895, %2887 ], [ %2895, %2901 ], [ %3793, %3812 ], [ %3793, %3830 ], [ %3793, %3864 ], [ %3793, %3866 ]
  %3889 = phi float [ %3794, %3787 ], [ %2896, %3197 ], [ %2896, %2887 ], [ %2896, %2901 ], [ %3794, %3812 ], [ %3794, %3830 ], [ %3794, %3864 ], [ %3794, %3866 ]
  %3890 = phi float [ %2897, %3787 ], [ %2897, %3197 ], [ %2897, %2887 ], [ %2897, %2901 ], [ %3824, %3812 ], [ %3861, %3830 ], [ %2897, %3864 ], [ %3877, %3866 ]
  %3891 = phi float [ %2898, %3787 ], [ %2898, %3197 ], [ %2898, %2887 ], [ %2898, %2901 ], [ %3821, %3812 ], [ %3838, %3830 ], [ %2898, %3864 ], [ %3874, %3866 ]
  %3892 = phi float [ %2899, %3787 ], [ %2899, %3197 ], [ %2899, %2887 ], [ %2899, %2901 ], [ %3827, %3812 ], [ %3863, %3830 ], [ %2899, %3864 ], [ %3879, %3866 ]
  %3893 = phi float [ %3795, %3787 ], [ %2900, %3197 ], [ %2900, %2887 ], [ %2900, %2901 ], [ %3795, %3812 ], [ %3795, %3830 ], [ %3795, %3864 ], [ %3795, %3866 ]
  %3894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3895 = extractvalue %dx.types.CBufRet.f32 %3894, 0
  %3896 = call float @dx.op.dot2.f32(i32 54, float %3881, float %3882, float %3881, float %3882)  ; Dot2(ax,ay,bx,by)
  %3897 = fmul fast float %3896, 0x3FE3333340000000
  %3898 = fsub fast float 1.000000e+00, %3897
  %3899 = call float @dx.op.dot3.f32(i32 55, float %3881, float %3882, float %3898, float %3881, float %3882, float %3898)  ; Dot3(ax,ay,az,bx,by,bz)
  %3900 = call float @dx.op.unary.f32(i32 25, float %3899)  ; Rsqrt(value)
  %3901 = fmul fast float %3900, %3881
  %3902 = fmul fast float %3900, %3882
  %3903 = fmul fast float %3898, %3900
  %3904 = fmul fast float %3903, %84
  %3905 = fmul fast float %3903, %86
  %3906 = fmul fast float %3903, %88
  %3907 = fmul fast float %3901, %56
  %3908 = fmul fast float %3901, %57
  %3909 = fmul fast float %3901, %58
  %3910 = fadd fast float %3904, %3907
  %3911 = fadd fast float %3905, %3908
  %3912 = fadd fast float %3906, %3909
  %3913 = fmul fast float %98, %3902
  %3914 = fmul fast float %99, %3902
  %3915 = fmul fast float %100, %3902
  %3916 = fadd fast float %3910, %3913
  %3917 = fadd fast float %3911, %3914
  %3918 = fadd fast float %3912, %3915
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3916, float %3917, float %3918, float %3916, float %3917, float %3918)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = call float @dx.op.unary.f32(i32 25, float %3919)  ; Rsqrt(value)
  %3921 = fmul fast float %3916, %3920
  %3922 = fmul fast float %3917, %3920
  %3923 = fmul fast float %3918, %3920
  %3924 = and i32 %37, 1
  %3925 = icmp eq i32 %3924, 0
  br i1 %3925, label %3926, label %4434

; <label>:3926                                    ; preds = %3880
  %3927 = call float @dx.op.unary.f32(i32 83, float %134)  ; DerivCoarseX(value)
  %3928 = call float @dx.op.unary.f32(i32 83, float %135)  ; DerivCoarseX(value)
  %3929 = call float @dx.op.unary.f32(i32 83, float %136)  ; DerivCoarseX(value)
  %3930 = call float @dx.op.unary.f32(i32 84, float %134)  ; DerivCoarseY(value)
  %3931 = call float @dx.op.unary.f32(i32 84, float %135)  ; DerivCoarseY(value)
  %3932 = call float @dx.op.unary.f32(i32 84, float %136)  ; DerivCoarseY(value)
  %3933 = fadd fast float %3927, %134
  %3934 = fadd fast float %3928, %135
  %3935 = fadd fast float %3929, %136
  %3936 = fadd fast float %3930, %134
  %3937 = fadd fast float %3931, %135
  %3938 = fadd fast float %3932, %136
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 2
  %3945 = extractvalue %dx.types.CBufRet.f32 %3943, 3
  %3946 = fmul fast float %3940, %75
  %3947 = fmul fast float %3946, %3944
  %3948 = fmul fast float %3941, %76
  %3949 = fmul fast float %3948, %3945
  %3950 = fptoui float %3947 to i32
  %3951 = fptoui float %3949 to i32
  %3952 = fadd fast float %3940, -1.000000e+00
  %3953 = fadd fast float %3941, -1.000000e+00
  %3954 = fptoui float %3952 to i32
  %3955 = fptoui float %3953 to i32
  %3956 = call i32 @dx.op.binary.i32(i32 40, i32 %3950, i32 %3954)  ; UMin(a,b)
  %3957 = call i32 @dx.op.binary.i32(i32 40, i32 %3951, i32 %3955)  ; UMin(a,b)
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 2
  %3960 = extractvalue %dx.types.CBufRet.f32 %3958, 3
  %3961 = fmul fast float %3959, %70
  %3962 = fsub fast float %3961, %3960
  %3963 = fadd fast float %3942, -1.000000e+00
  %3964 = call float @dx.op.binary.f32(i32 36, float %3962, float %3963)  ; FMin(a,b)
  %3965 = fptoui float %3964 to i32
  %3966 = fptoui float %3940 to i32
  %3967 = fptoui float %3941 to i32
  %3968 = mul i32 %3965, %3967
  %3969 = add i32 %3968, %3957
  %3970 = mul i32 %3969, %3966
  %3971 = add i32 %3970, %3956
  %3972 = shl i32 %3971, 2
  %3973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.i32 %3973, 0
  %3975 = and i32 %3974, 1023
  %3976 = lshr i32 %3974, 10
  %3977 = icmp eq i32 %3975, 0
  br i1 %3977, label %4403, label %3978

; <label>:3978                                    ; preds = %3926
  %3979 = and i32 %3974, 1023
  br label %3980

; <label>:3980                                    ; preds = %4106, %3978
  %3981 = phi i32 [ %4056, %4106 ], [ 0, %3978 ]
  %3982 = phi float [ %4107, %4106 ], [ 0.000000e+00, %3978 ]
  %3983 = phi float [ %4108, %4106 ], [ %3895, %3978 ]
  %3984 = phi float [ %4109, %4106 ], [ %3893, %3978 ]
  %3985 = phi float [ %4110, %4106 ], [ %3892, %3978 ]
  %3986 = phi float [ %4111, %4106 ], [ 0.000000e+00, %3978 ]
  %3987 = phi float [ %4112, %4106 ], [ %3886, %3978 ]
  %3988 = phi float [ %4113, %4106 ], [ %3887, %3978 ]
  %3989 = phi float [ %4114, %4106 ], [ %3888, %3978 ]
  %3990 = phi float [ %4115, %4106 ], [ %3921, %3978 ]
  %3991 = phi float [ %4116, %4106 ], [ %3922, %3978 ]
  %3992 = phi float [ %4117, %4106 ], [ %3923, %3978 ]
  %3993 = phi float [ %4118, %4106 ], [ %3891, %3978 ]
  %3994 = phi float [ %4119, %4106 ], [ %3890, %3978 ]
  %3995 = phi float [ %4120, %4106 ], [ 0.000000e+00, %3978 ]
  %3996 = phi float [ %4121, %4106 ], [ %3889, %3978 ]
  %3997 = phi float [ %4122, %4106 ], [ %3883, %3978 ]
  %3998 = phi float [ %4123, %4106 ], [ %3884, %3978 ]
  %3999 = phi float [ %4124, %4106 ], [ %3885, %3978 ]
  %4000 = add nuw nsw i32 %3981, %3976
  %4001 = shl i32 %4000, 2
  %4002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.i32 %4002, 0
  %4004 = shl i32 %4003, 8
  %4005 = or i32 %4004, 48
  %4006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = extractvalue %dx.types.ResRet.f32 %4006, 3
  %4011 = or i32 %4004, 64
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4011, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = extractvalue %dx.types.ResRet.i32 %4012, 1
  %4015 = or i32 %4004, 80
  %4016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4019 = or i32 %4004, 96
  %4020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.f32 %4020, 1
  %4023 = extractvalue %dx.types.ResRet.f32 %4020, 2
  %4024 = extractvalue %dx.types.ResRet.f32 %4020, 3
  %4025 = or i32 %4004, 112
  %4026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4028 = or i32 %4004, 128
  %4029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = or i32 %4004, 144
  %4035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4035, 3
  %4040 = or i32 %4004, 160
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.f32 %4041, 3
  %4046 = or i32 %4004, 192
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = or i32 %4004, 208
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = or i32 %4004, 248
  %4053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.ResRet.f32 %4053, 1
  %4056 = add nuw nsw i32 %3981, 1
  %4057 = bitcast float %4010 to i32
  %4058 = and i32 %4057, 512
  %4059 = icmp eq i32 %4058, 0
  %4060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4004, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %4060, 2
  %4064 = extractvalue %dx.types.ResRet.f32 %4060, 3
  %4065 = call float @dx.op.dot4.f32(i32 56, float %4061, float %4062, float %4063, float %4064, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4066 = or i32 %4004, 16
  %4067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.ResRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.ResRet.f32 %4067, 2
  %4071 = extractvalue %dx.types.ResRet.f32 %4067, 3
  %4072 = call float @dx.op.dot4.f32(i32 56, float %4068, float %4069, float %4070, float %4071, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4073 = or i32 %4004, 32
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.ResRet.f32 %4074, 2
  %4078 = extractvalue %dx.types.ResRet.f32 %4074, 3
  %4079 = call float @dx.op.dot4.f32(i32 56, float %4075, float %4076, float %4077, float %4078, float %134, float %135, float %136, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4080 = call float @dx.op.unary.f32(i32 27, float %4065)  ; Round_ni(value)
  %4081 = call float @dx.op.unary.f32(i32 6, float %4080)  ; FAbs(value)
  %4082 = call float @dx.op.unary.f32(i32 27, float %4072)  ; Round_ni(value)
  %4083 = call float @dx.op.unary.f32(i32 6, float %4082)  ; FAbs(value)
  %4084 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4085 = call float @dx.op.unary.f32(i32 27, float %4084)  ; Round_ni(value)
  %4086 = fadd fast float %4083, %4081
  %4087 = fadd fast float %4086, %4085
  %4088 = fcmp fast oeq float %4087, 0.000000e+00
  %4089 = call float @dx.op.dot4.f32(i32 56, float %4061, float %4062, float %4063, float %4064, float %3933, float %3934, float %3935, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4090 = call float @dx.op.dot4.f32(i32 56, float %4068, float %4069, float %4070, float %4071, float %3933, float %3934, float %3935, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4091 = call float @dx.op.dot4.f32(i32 56, float %4061, float %4062, float %4063, float %4064, float %3936, float %3937, float %3938, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4092 = call float @dx.op.dot4.f32(i32 56, float %4068, float %4069, float %4070, float %4071, float %3936, float %3937, float %3938, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4093 = fsub fast float %4089, %4065
  %4094 = fsub fast float %4091, %4065
  %4095 = fsub fast float %4090, %4072
  %4096 = fsub fast float %4092, %4072
  %4097 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4009, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4100 = fadd fast float %4099, %4097
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4103 = fcmp fast ogt float %4101, %4102
  %4104 = and i1 %4088, %4103
  %4105 = and i1 %4059, %4104
  br i1 %4105, label %4126, label %4106

; <label>:4106                                    ; preds = %4389, %4207, %4126, %3980
  %4107 = phi float [ %3982, %4126 ], [ %4210, %4207 ], [ %4210, %4389 ], [ %3982, %3980 ]
  %4108 = phi float [ %3983, %4126 ], [ %3983, %4207 ], [ %4364, %4389 ], [ %3983, %3980 ]
  %4109 = phi float [ %3984, %4126 ], [ %3984, %4207 ], [ %4362, %4389 ], [ %3984, %3980 ]
  %4110 = phi float [ %3985, %4126 ], [ %3985, %4207 ], [ %4334, %4389 ], [ %3985, %3980 ]
  %4111 = phi float [ %3986, %4126 ], [ %3986, %4207 ], [ %4332, %4389 ], [ %3986, %3980 ]
  %4112 = phi float [ %3987, %4126 ], [ %3987, %4207 ], [ %4399, %4389 ], [ %3987, %3980 ]
  %4113 = phi float [ %3988, %4126 ], [ %3988, %4207 ], [ %4400, %4389 ], [ %3988, %3980 ]
  %4114 = phi float [ %3989, %4126 ], [ %3989, %4207 ], [ %4401, %4389 ], [ %3989, %3980 ]
  %4115 = phi float [ %3990, %4126 ], [ %3990, %4207 ], [ %4313, %4389 ], [ %3990, %3980 ]
  %4116 = phi float [ %3991, %4126 ], [ %3991, %4207 ], [ %4314, %4389 ], [ %3991, %3980 ]
  %4117 = phi float [ %3992, %4126 ], [ %3992, %4207 ], [ %4315, %4389 ], [ %3992, %3980 ]
  %4118 = phi float [ %3993, %4126 ], [ %3993, %4207 ], [ %4342, %4389 ], [ %3993, %3980 ]
  %4119 = phi float [ %3994, %4126 ], [ %3994, %4207 ], [ %4339, %4389 ], [ %3994, %3980 ]
  %4120 = phi float [ %3995, %4126 ], [ %3995, %4207 ], [ %4336, %4389 ], [ %3995, %3980 ]
  %4121 = phi float [ %3996, %4126 ], [ %3996, %4207 ], [ %4330, %4389 ], [ %3996, %3980 ]
  %4122 = phi float [ %3997, %4126 ], [ %3997, %4207 ], [ %4325, %4389 ], [ %3997, %3980 ]
  %4123 = phi float [ %3998, %4126 ], [ %3998, %4207 ], [ %4326, %4389 ], [ %3998, %3980 ]
  %4124 = phi float [ %3999, %4126 ], [ %3999, %4207 ], [ %4327, %4389 ], [ %3999, %3980 ]
  %4125 = icmp eq i32 %4056, %3979
  br i1 %4125, label %4402, label %3980

; <label>:4126                                    ; preds = %3980
  %4127 = extractvalue %dx.types.ResRet.f32 %4026, 3
  %4128 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4129 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4132 = extractvalue %dx.types.ResRet.i32 %4012, 3
  %4133 = extractvalue %dx.types.ResRet.i32 %4012, 2
  %4134 = add i32 %4132, 0
  %4135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4134, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4137 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4135, %dx.types.Handle %4136, float %4065, float %4072, float undef, float undef, i32 0, i32 0, i32 undef, float %4093, float %4095, float undef, float %4094, float %4096, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = fmul fast float %4138, %4131
  %4140 = fadd fast float %4139, %4130
  %4141 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4142 = fmul fast float %4065, %4021
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4072, float %4142)  ; FMad(a,b,c)
  %4144 = fadd fast float %4143, %4129
  %4145 = fmul fast float %4065, %4023
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4072, float %4145)  ; FMad(a,b,c)
  %4147 = fadd fast float %4146, %4128
  %4148 = fmul fast float %4093, %4021
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4095, float %4148)  ; FMad(a,b,c)
  %4150 = fmul fast float %4093, %4023
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4095, float %4150)  ; FMad(a,b,c)
  %4152 = fmul fast float %4094, %4021
  %4153 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4096, float %4152)  ; FMad(a,b,c)
  %4154 = fmul fast float %4094, %4023
  %4155 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4096, float %4154)  ; FMad(a,b,c)
  %4156 = add i32 %4133, 0
  %4157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4156, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4158 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4157, %dx.types.Handle %4136, float %4144, float %4147, float undef, float undef, i32 0, i32 0, i32 undef, float %4149, float %4151, float undef, float %4153, float %4155, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = and i32 %4057, 1024
  %4161 = icmp ne i32 %4160, 0
  %4162 = fcmp fast ogt float %4159, 0x3FE0101020000000
  %4163 = uitofp i1 %4162 to float
  %4164 = select i1 %4161, float %4163, float %4159
  %4165 = and i32 %4057, 8192
  %4166 = icmp ne i32 %4165, 0
  %4167 = select i1 %4166, float %4127, float 1.000000e+00
  %4168 = fmul fast float %4065, 2.000000e+00
  %4169 = fadd fast float %4168, -1.000000e+00
  %4170 = call float @dx.op.unary.f32(i32 6, float %4169)  ; FAbs(value)
  %4171 = fmul fast float %4170, %4054
  %4172 = fsub fast float %4171, %4054
  %4173 = call float @dx.op.unary.f32(i32 7, float %4172)  ; Saturate(value)
  %4174 = fmul fast float %4072, 2.000000e+00
  %4175 = fadd fast float %4174, -1.000000e+00
  %4176 = call float @dx.op.unary.f32(i32 6, float %4175)  ; FAbs(value)
  %4177 = fmul fast float %4176, %4055
  %4178 = fsub fast float %4177, %4055
  %4179 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4180 = fmul fast float %4084, %4017
  %4181 = fsub fast float %4180, %4017
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = fmul fast float %4141, %4167
  %4184 = fmul fast float %4183, %4138
  %4185 = fmul fast float %4184, %4173
  %4186 = fmul fast float %4185, %4164
  %4187 = fmul fast float %4186, %4179
  %4188 = fmul fast float %4187, %4182
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4191 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4192 = fsub fast float %4101, %4191
  %4193 = fmul fast float %4192, %4190
  %4194 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4195 = fmul fast float %4188, %4018
  %4196 = fadd fast float %4188, %4018
  %4197 = fmul fast float %4196, %4027
  %4198 = fsub fast float %4197, %4027
  %4199 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4200 = and i32 %4057, 128
  %4201 = icmp ne i32 %4200, 0
  %4202 = select i1 %4201, float %4199, float %4195
  %4203 = fmul fast float %4202, %4194
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4206 = fcmp fast ugt float %4203, %4205
  br i1 %4206, label %4207, label %4106

; <label>:4207                                    ; preds = %4126
  %4208 = select i1 %4166, float %4203, float 0.000000e+00
  %4209 = fadd fast float %4208, %3982
  %4210 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  br i1 %4166, label %4106, label %4211

; <label>:4211                                    ; preds = %4207
  %4212 = and i32 %4057, 4
  %4213 = and i32 %4057, 8
  %4214 = add i32 %4013, 0
  %4215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4214, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4217 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4215, %dx.types.Handle %4216, float %4144, float %4147, float undef, float undef, i32 0, i32 0, i32 undef, float %4149, float %4151, float undef, float %4153, float %4155, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = extractvalue %dx.types.ResRet.f32 %4217, 3
  %4222 = bitcast float %4039 to i32
  %4223 = and i32 %4222, 255
  %4224 = uitofp i32 %4223 to float
  %4225 = lshr i32 %4222, 8
  %4226 = and i32 %4225, 255
  %4227 = uitofp i32 %4226 to float
  %4228 = fmul fast float %4221, %4224
  %4229 = fadd fast float %4228, %4227
  %4230 = fmul fast float %4229, 0x3F70101000000000
  %4231 = add i32 %4014, 0
  %4232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4231, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4233 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4232, %dx.types.Handle %4216, float %4144, float %4147, float undef, float undef, i32 0, i32 0, i32 undef, float %4149, float %4151, float undef, float %4153, float %4155, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4238 = bitcast float %4033 to i32
  %4239 = and i32 %4238, 255
  %4240 = uitofp i32 %4239 to float
  %4241 = lshr i32 %4238, 8
  %4242 = and i32 %4241, 255
  %4243 = uitofp i32 %4242 to float
  %4244 = lshr i32 %4238, 16
  %4245 = and i32 %4244, 255
  %4246 = uitofp i32 %4245 to float
  %4247 = fmul fast float %4246, 0x3F70101000000000
  %4248 = fmul fast float %4234, %4240
  %4249 = fadd fast float %4248, %4243
  %4250 = fmul fast float %4249, 0x3F70101000000000
  %4251 = fadd fast float %4235, -5.000000e-01
  %4252 = fadd fast float %4237, -5.000000e-01
  %4253 = fmul fast float %4251, %4247
  %4254 = fmul fast float %4252, %4247
  %4255 = fadd fast float %4253, 5.000000e-01
  %4256 = fadd fast float %4254, 5.000000e-01
  %4257 = fmul fast float %4218, %4042
  %4258 = fmul fast float %4219, %4043
  %4259 = fmul fast float %4220, %4044
  %4260 = fmul fast float %4255, 2.000000e+00
  %4261 = fadd fast float %4260, -1.000000e+00
  %4262 = fmul fast float %4256, 2.000000e+00
  %4263 = fadd fast float %4262, -1.000000e+00
  %4264 = fadd fast float %4261, %4263
  %4265 = fmul fast float %4264, 5.000000e-01
  %4266 = fsub fast float %4261, %4263
  %4267 = fmul fast float %4266, 5.000000e-01
  %4268 = call float @dx.op.unary.f32(i32 6, float %4265)  ; FAbs(value)
  %4269 = fsub fast float 1.000000e+00, %4268
  %4270 = call float @dx.op.unary.f32(i32 6, float %4267)  ; FAbs(value)
  %4271 = fsub fast float %4269, %4270
  %4272 = call float @dx.op.dot3.f32(i32 55, float %4265, float %4267, float %4271, float %4265, float %4267, float %4271)  ; Dot3(ax,ay,az,bx,by,bz)
  %4273 = call float @dx.op.unary.f32(i32 25, float %4272)  ; Rsqrt(value)
  %4274 = fmul fast float %4265, %4273
  %4275 = fmul fast float %4267, %4273
  %4276 = fmul fast float %4273, %4271
  %4277 = fmul fast float %4276, %4007
  %4278 = fmul fast float %4276, %4008
  %4279 = fmul fast float %4276, %4009
  %4280 = fmul fast float %4274, %4030
  %4281 = fmul fast float %4274, %4031
  %4282 = fmul fast float %4274, %4032
  %4283 = fadd fast float %4280, %4277
  %4284 = fadd fast float %4281, %4278
  %4285 = fadd fast float %4282, %4279
  %4286 = fmul fast float %4275, %4036
  %4287 = fmul fast float %4275, %4037
  %4288 = fmul fast float %4275, %4038
  %4289 = fadd fast float %4283, %4286
  %4290 = fadd fast float %4284, %4287
  %4291 = fadd fast float %4285, %4288
  %4292 = call float @dx.op.dot3.f32(i32 55, float %4289, float %4290, float %4291, float %4289, float %4290, float %4291)  ; Dot3(ax,ay,az,bx,by,bz)
  %4293 = call float @dx.op.unary.f32(i32 25, float %4292)  ; Rsqrt(value)
  %4294 = fmul fast float %4289, %4293
  %4295 = fmul fast float %4290, %4293
  %4296 = fmul fast float %4291, %4293
  %4297 = icmp ne i32 %4213, 0
  %4298 = select i1 %4297, float 1.000000e+00, float 0.000000e+00
  %4299 = fmul fast float %4203, %4298
  %4300 = and i32 %4057, 1
  %4301 = icmp eq i32 %4300, 0
  br i1 %4301, label %4302, label %4306

; <label>:4302                                    ; preds = %4211
  %4303 = fsub fast float %4294, %3990
  %4304 = fsub fast float %4295, %3991
  %4305 = fsub fast float %4296, %3992
  br label %4306

; <label>:4306                                    ; preds = %4302, %4211
  %4307 = phi float [ %4303, %4302 ], [ %4294, %4211 ]
  %4308 = phi float [ %4304, %4302 ], [ %4295, %4211 ]
  %4309 = phi float [ %4305, %4302 ], [ %4296, %4211 ]
  %4310 = fmul float %4309, %4299
  %4311 = fmul float %4308, %4299
  %4312 = fmul float %4307, %4299
  %4313 = fadd fast float %4312, %3990
  %4314 = fadd fast float %4311, %3991
  %4315 = fadd fast float %4310, %3992
  %4316 = icmp ne i32 %4212, 0
  %4317 = select i1 %4316, float 1.000000e+00, float 0.000000e+00
  %4318 = fmul fast float %4203, %4317
  %4319 = fsub fast float %4257, %3997
  %4320 = fsub fast float %4258, %3998
  %4321 = fsub fast float %4259, %3999
  %4322 = fmul fast float %4319, %4318
  %4323 = fmul fast float %4320, %4318
  %4324 = fmul fast float %4321, %4318
  %4325 = fadd fast float %4322, %3997
  %4326 = fadd fast float %4323, %3998
  %4327 = fadd fast float %4324, %3999
  %4328 = fsub fast float %4230, %3996
  %4329 = fmul fast float %4328, %4318
  %4330 = fadd fast float %4329, %3996
  %4331 = fmul fast float %4318, %3986
  %4332 = fsub fast float %3986, %4331
  %4333 = fmul fast float %4318, %3985
  %4334 = fsub fast float %3985, %4333
  %4335 = fadd fast float %4203, %3995
  %4336 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4337 = fsub fast float %4250, %3994
  %4338 = fmul fast float %4337, %4299
  %4339 = fadd fast float %4338, %3994
  %4340 = fsub fast float %4236, %3993
  %4341 = fmul fast float %4340, %4299
  %4342 = fadd fast float %4341, %3993
  %4343 = call float @dx.op.dot3.f32(i32 55, float %4257, float %4258, float %4259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.CBufRet.f32 %4344, 1
  %4347 = fmul fast float %4346, %4343
  %4348 = fadd fast float %4347, %4345
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = bitcast float %4045 to i32
  %4351 = and i32 %4350, 65535
  %4352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4351)  ; LegacyF16ToF32(value)
  %4353 = lshr i32 %4350, 16
  %4354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4353)  ; LegacyF16ToF32(value)
  %4355 = fcmp fast oge float %4352, 0.000000e+00
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 0
  %4358 = select i1 %4355, float %4352, float %4357
  %4359 = fadd fast float %4358, %4354
  %4360 = fsub fast float %4349, %3984
  %4361 = fmul fast float %4360, %4203
  %4362 = fadd fast float %4361, %3984
  %4363 = fmul fast float %4359, %4203
  %4364 = call float @dx.op.binary.f32(i32 35, float %3983, float %4363)  ; FMax(a,b)
  %4365 = and i32 %4057, 16
  %4366 = icmp eq i32 %4365, 0
  br i1 %4366, label %4389, label %4367

; <label>:4367                                    ; preds = %4306
  %4368 = bitcast float %4051 to i32
  %4369 = add i32 %4048, 0
  %4370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4369, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4370, %dx.types.Handle %4216, float %4144, float %4147, float undef, float undef, i32 0, i32 0, i32 undef, float %4149, float %4151, float undef, float %4153, float %4155, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.ResRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.ResRet.f32 %4371, 2
  %4375 = and i32 %4368, 65535
  %4376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4375)  ; LegacyF16ToF32(value)
  %4377 = fmul fast float %4372, %4042
  %4378 = fmul fast float %4373, %4043
  %4379 = fmul fast float %4374, %4044
  %4380 = and i32 %4057, 16384
  %4381 = icmp ne i32 %4380, 0
  %4382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.f32 %4382, 0
  %4384 = select i1 %4381, float %4383, float 1.000000e+00
  %4385 = fmul fast float %4384, %4376
  %4386 = fmul fast float %4377, %4385
  %4387 = fmul fast float %4378, %4385
  %4388 = fmul fast float %4379, %4385
  br label %4389

; <label>:4389                                    ; preds = %4367, %4306
  %4390 = phi float [ %4386, %4367 ], [ 0.000000e+00, %4306 ]
  %4391 = phi float [ %4387, %4367 ], [ 0.000000e+00, %4306 ]
  %4392 = phi float [ %4388, %4367 ], [ 0.000000e+00, %4306 ]
  %4393 = fsub fast float %4390, %3987
  %4394 = fsub fast float %4391, %3988
  %4395 = fsub fast float %4392, %3989
  %4396 = fmul fast float %4393, %4203
  %4397 = fmul fast float %4394, %4203
  %4398 = fmul fast float %4395, %4203
  %4399 = fadd fast float %4396, %3987
  %4400 = fadd fast float %4397, %3988
  %4401 = fadd fast float %4398, %3989
  br label %4106

; <label>:4402                                    ; preds = %4106
  br label %4403

; <label>:4403                                    ; preds = %4402, %3926
  %4404 = phi float [ 0.000000e+00, %3926 ], [ %4107, %4402 ]
  %4405 = phi float [ %3895, %3926 ], [ %4108, %4402 ]
  %4406 = phi float [ %3893, %3926 ], [ %4109, %4402 ]
  %4407 = phi float [ %3892, %3926 ], [ %4110, %4402 ]
  %4408 = phi float [ 0.000000e+00, %3926 ], [ %4111, %4402 ]
  %4409 = phi float [ %3886, %3926 ], [ %4112, %4402 ]
  %4410 = phi float [ %3887, %3926 ], [ %4113, %4402 ]
  %4411 = phi float [ %3888, %3926 ], [ %4114, %4402 ]
  %4412 = phi float [ %3921, %3926 ], [ %4115, %4402 ]
  %4413 = phi float [ %3922, %3926 ], [ %4116, %4402 ]
  %4414 = phi float [ %3923, %3926 ], [ %4117, %4402 ]
  %4415 = phi float [ %3891, %3926 ], [ %4118, %4402 ]
  %4416 = phi float [ %3890, %3926 ], [ %4119, %4402 ]
  %4417 = phi float [ 0.000000e+00, %3926 ], [ %4120, %4402 ]
  %4418 = phi float [ %3889, %3926 ], [ %4121, %4402 ]
  %4419 = phi float [ %3883, %3926 ], [ %4122, %4402 ]
  %4420 = phi float [ %3884, %3926 ], [ %4123, %4402 ]
  %4421 = phi float [ %3885, %3926 ], [ %4124, %4402 ]
  %4422 = call float @dx.op.dot3.f32(i32 55, float %4412, float %4413, float %4414, float %4412, float %4413, float %4414)  ; Dot3(ax,ay,az,bx,by,bz)
  %4423 = call float @dx.op.unary.f32(i32 25, float %4422)  ; Rsqrt(value)
  %4424 = fmul fast float %4423, %4412
  %4425 = fmul fast float %4423, %4413
  %4426 = fmul fast float %4423, %4414
  %4427 = fadd fast float %4417, %910
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = call float @dx.op.dot3.f32(i32 55, float %4424, float %4425, float %4426, float %4424, float %4425, float %4426)  ; Dot3(ax,ay,az,bx,by,bz)
  %4430 = call float @dx.op.unary.f32(i32 25, float %4429)  ; Rsqrt(value)
  %4431 = fmul fast float %4430, %4424
  %4432 = fmul fast float %4430, %4425
  %4433 = fmul fast float %4430, %4426
  br label %4434

; <label>:4434                                    ; preds = %4403, %3880
  %4435 = phi float [ %4431, %4403 ], [ %3921, %3880 ]
  %4436 = phi float [ %4432, %4403 ], [ %3922, %3880 ]
  %4437 = phi float [ %4433, %4403 ], [ %3923, %3880 ]
  %4438 = phi float [ %4419, %4403 ], [ %3883, %3880 ]
  %4439 = phi float [ %4420, %4403 ], [ %3884, %3880 ]
  %4440 = phi float [ %4421, %4403 ], [ %3885, %3880 ]
  %4441 = phi float [ %4409, %4403 ], [ %3886, %3880 ]
  %4442 = phi float [ %4410, %4403 ], [ %3887, %3880 ]
  %4443 = phi float [ %4411, %4403 ], [ %3888, %3880 ]
  %4444 = phi float [ %4418, %4403 ], [ %3889, %3880 ]
  %4445 = phi float [ %4428, %4403 ], [ %910, %3880 ]
  %4446 = phi float [ %4416, %4403 ], [ %3890, %3880 ]
  %4447 = phi float [ %4415, %4403 ], [ %3891, %3880 ]
  %4448 = phi float [ %4408, %4403 ], [ 0.000000e+00, %3880 ]
  %4449 = phi float [ %4407, %4403 ], [ %3892, %3880 ]
  %4450 = phi float [ %4404, %4403 ], [ 0.000000e+00, %3880 ]
  %4451 = phi float [ %4405, %4403 ], [ %3895, %3880 ]
  %4452 = phi float [ %4406, %4403 ], [ %3893, %3880 ]
  %4453 = fadd fast float %4444, 0xBFB99999A0000000
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = fmul fast float %4454, 0x3FF1C71C80000000
  %4456 = call float @dx.op.binary.f32(i32 36, float %4444, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4457 = fsub fast float 1.000000e+00, %4455
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4458, %4438
  %4460 = fmul fast float %4458, %4439
  %4461 = fmul fast float %4458, %4440
  %4462 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4463 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4464 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4465 = fmul fast float %4455, %4438
  %4466 = fmul fast float %4455, %4439
  %4467 = fmul fast float %4455, %4440
  %4468 = fadd fast float %4465, %4456
  %4469 = fadd fast float %4466, %4456
  %4470 = fadd fast float %4467, %4456
  %4471 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4472 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4475 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4476 = extractvalue %dx.types.CBufRet.i32 %4475, 3
  %4477 = and i32 %4476, 8
  %4478 = icmp ne i32 %4477, 0
  %4479 = call float @dx.op.binary.f32(i32 35, float %4462, float %4438)  ; FMax(a,b)
  %4480 = call float @dx.op.binary.f32(i32 35, float %4463, float %4438)  ; FMax(a,b)
  %4481 = call float @dx.op.binary.f32(i32 35, float %4464, float %4438)  ; FMax(a,b)
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4462, float %4463, float %4464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = select i1 %176, float %4438, float %4462
  %4484 = select i1 %176, float %4482, float %4463
  %4485 = select i1 %176, float 1.000000e+00, float %4464
  %4486 = select i1 %4478, float %4479, float %4483
  %4487 = select i1 %4478, float %4480, float %4484
  %4488 = select i1 %4478, float %4481, float %4485
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = extractvalue %dx.types.CBufRet.f32 %4489, 1
  %4492 = extractvalue %dx.types.CBufRet.f32 %4489, 2
  %4493 = fadd fast float %4490, %134
  %4494 = fadd fast float %4491, %135
  %4495 = fadd fast float %4492, %136
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 0
  %4498 = extractvalue %dx.types.CBufRet.f32 %4496, 1
  %4499 = fsub fast float %4493, %4497
  %4500 = fsub fast float %4494, %4498
  %4501 = fmul fast float %4499, %4499
  %4502 = fmul fast float %4500, %4500
  %4503 = fadd fast float %4501, %4502
  %4504 = call float @dx.op.unary.f32(i32 24, float %4503)  ; Sqrt(value)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4496, 2
  %4506 = fcmp fast olt float %4504, %4505
  br i1 %4506, label %4507, label %4574

; <label>:4507                                    ; preds = %4434
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 0
  %4512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4513 = extractvalue %dx.types.CBufRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4515 = extractvalue %dx.types.CBufRet.f32 %4510, 1
  %4516 = extractvalue %dx.types.CBufRet.f32 %4512, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4508, 3
  %4518 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4519 = extractvalue %dx.types.CBufRet.f32 %4512, 3
  %4520 = fadd fast float %4517, %4493
  %4521 = fadd fast float %4518, %4494
  %4522 = fadd fast float %4519, %4495
  %4523 = fmul fast float %4520, %4509
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4521, float %4511, float %4523)  ; FMad(a,b,c)
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4513, float %4524)  ; FMad(a,b,c)
  %4526 = fmul fast float %4520, %4514
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4521, float %4515, float %4526)  ; FMad(a,b,c)
  %4528 = call float @dx.op.tertiary.f32(i32 46, float %4522, float %4516, float %4527)  ; FMad(a,b,c)
  %4529 = fsub fast float %4525, %4517
  %4530 = fsub fast float %4528, %4518
  %4531 = fsub fast float %4529, %4497
  %4532 = fadd fast float %4531, %4505
  %4533 = fsub fast float %4530, %4498
  %4534 = fadd fast float %4533, %4505
  %4535 = extractvalue %dx.types.CBufRet.f32 %4496, 3
  %4536 = fmul fast float %4532, %4535
  %4537 = fmul fast float %4534, %4535
  %4538 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4539 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4540 = fsub fast float 1.000000e+00, %4538
  %4541 = fsub fast float 1.000000e+00, %4539
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  %4544 = fcmp fast ugt float %4543, 0.000000e+00
  br i1 %4544, label %4545, label %4848

; <label>:4545                                    ; preds = %4507
  %4546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4547 = extractvalue %dx.types.CBufRet.f32 %4546, 2
  %4548 = fmul fast float %4547, %4543
  %4549 = extractvalue %dx.types.CBufRet.f32 %4546, 3
  %4550 = fadd fast float %4549, %4548
  %4551 = extractvalue %dx.types.CBufRet.f32 %4512, 2
  %4552 = fadd fast float %4550, %4519
  %4553 = fmul fast float %4525, %4513
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4528, float %4516, float %4553)  ; FMad(a,b,c)
  %4555 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4551, float %4554)  ; FMad(a,b,c)
  %4556 = fsub fast float %4555, %4519
  %4557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4558 = extractvalue %dx.types.CBufRet.f32 %4557, 2
  %4559 = fsub fast float %4556, %4558
  %4560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4563 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4540, float %4541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4568 = fadd fast float %4565, %4561
  %4569 = fmul fast float %4568, 0x3F847AE140000000
  %4570 = fadd fast float %4566, %4562
  %4571 = fmul fast float %4570, 0x3F847AE140000000
  %4572 = fadd fast float %4567, %4563
  %4573 = fmul fast float %4572, 0x3F847AE140000000
  br label %4848

; <label>:4574                                    ; preds = %4434
  %4575 = and i32 %152, 1
  %4576 = icmp eq i32 %4575, 0
  br i1 %4576, label %4848, label %4577

; <label>:4577                                    ; preds = %4574
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 0
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.CBufRet.f32 %4578, 1
  %4585 = extractvalue %dx.types.CBufRet.f32 %4580, 1
  %4586 = extractvalue %dx.types.CBufRet.f32 %4582, 1
  %4587 = extractvalue %dx.types.CBufRet.f32 %4578, 3
  %4588 = extractvalue %dx.types.CBufRet.f32 %4580, 3
  %4589 = extractvalue %dx.types.CBufRet.f32 %4582, 3
  %4590 = fadd fast float %4587, %4493
  %4591 = fadd fast float %4588, %4494
  %4592 = fadd fast float %4589, %4495
  %4593 = fmul fast float %4590, %4579
  %4594 = call float @dx.op.tertiary.f32(i32 46, float %4591, float %4581, float %4593)  ; FMad(a,b,c)
  %4595 = call float @dx.op.tertiary.f32(i32 46, float %4592, float %4583, float %4594)  ; FMad(a,b,c)
  %4596 = fmul fast float %4590, %4584
  %4597 = call float @dx.op.tertiary.f32(i32 46, float %4591, float %4585, float %4596)  ; FMad(a,b,c)
  %4598 = call float @dx.op.tertiary.f32(i32 46, float %4592, float %4586, float %4597)  ; FMad(a,b,c)
  %4599 = fsub fast float %4595, %4587
  %4600 = fsub fast float %4598, %4588
  %4601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4602 = extractvalue %dx.types.CBufRet.f32 %4601, 0
  %4603 = extractvalue %dx.types.CBufRet.f32 %4601, 1
  %4604 = extractvalue %dx.types.CBufRet.f32 %4601, 2
  %4605 = extractvalue %dx.types.CBufRet.f32 %4601, 3
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 3
  %4608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.i32 %4608, 0
  %4610 = extractvalue %dx.types.CBufRet.i32 %4608, 1
  %4611 = udiv i32 %4610, %4609
  %4612 = fsub fast float %4599, %4602
  %4613 = fsub fast float %4600, %4603
  %4614 = call float @dx.op.binary.f32(i32 35, float %4612, float 0.000000e+00)  ; FMax(a,b)
  %4615 = call float @dx.op.binary.f32(i32 35, float %4613, float 0.000000e+00)  ; FMax(a,b)
  %4616 = call float @dx.op.binary.f32(i32 36, float %4614, float %4604)  ; FMin(a,b)
  %4617 = call float @dx.op.binary.f32(i32 36, float %4615, float %4605)  ; FMin(a,b)
  %4618 = add i32 %4609, -1
  %4619 = add i32 %4611, -1
  %4620 = fmul fast float %4616, %4607
  %4621 = fmul fast float %4617, %4607
  %4622 = fptoui float %4620 to i32
  %4623 = fptoui float %4621 to i32
  %4624 = call i32 @dx.op.binary.i32(i32 40, i32 %4622, i32 %4618)  ; UMin(a,b)
  %4625 = call i32 @dx.op.binary.i32(i32 40, i32 %4623, i32 %4619)  ; UMin(a,b)
  %4626 = mul i32 %4625, %4609
  %4627 = add i32 %4626, %4624
  %4628 = shl i32 %4627, 2
  %4629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4628, i32 undef)  ; BufferLoad(srv,index,wot)
  %4630 = extractvalue %dx.types.ResRet.i32 %4629, 0
  %4631 = icmp eq i32 %4630, -1
  br i1 %4631, label %4848, label %4632

; <label>:4632                                    ; preds = %4577
  %4633 = mul i32 %4630, 148
  %4634 = add i32 %4633, 4
  %4635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4634, i32 undef)  ; BufferLoad(srv,index,wot)
  %4636 = extractvalue %dx.types.ResRet.f32 %4635, 0
  %4637 = add i32 %4633, 8
  %4638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4637, i32 undef)  ; BufferLoad(srv,index,wot)
  %4639 = extractvalue %dx.types.ResRet.f32 %4638, 0
  %4640 = add i32 %4633, 36
  %4641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4642 = extractvalue %dx.types.ResRet.f32 %4641, 0
  %4643 = add i32 %4633, 60
  %4644 = add i32 %4633, 92
  %4645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4644, i32 undef)  ; BufferLoad(srv,index,wot)
  %4646 = extractvalue %dx.types.ResRet.i32 %4645, 0
  %4647 = add i32 %4633, 116
  %4648 = fsub fast float %4599, %4636
  %4649 = fsub fast float %4600, %4639
  %4650 = fmul fast float %4607, %4648
  %4651 = fmul fast float %4607, %4649
  %4652 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4653 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4654 = fsub fast float 1.000000e+00, %4653
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 2
  %4657 = call float @dx.op.unary.f32(i32 83, float %4652)  ; DerivCoarseX(value)
  %4658 = call float @dx.op.unary.f32(i32 83, float %4654)  ; DerivCoarseX(value)
  %4659 = call float @dx.op.unary.f32(i32 84, float %4652)  ; DerivCoarseY(value)
  %4660 = call float @dx.op.unary.f32(i32 84, float %4654)  ; DerivCoarseY(value)
  %4661 = fmul fast float %4657, %4656
  %4662 = fmul fast float %4658, %4656
  %4663 = fmul fast float %4659, %4656
  %4664 = fmul fast float %4660, %4656
  %4665 = call float @dx.op.dot2.f32(i32 54, float %4663, float %4664, float %4663, float %4664)  ; Dot2(ax,ay,bx,by)
  %4666 = call float @dx.op.dot2.f32(i32 54, float %4661, float %4662, float %4661, float %4662)  ; Dot2(ax,ay,bx,by)
  %4667 = call float @dx.op.binary.f32(i32 35, float %4666, float %4665)  ; FMax(a,b)
  %4668 = call float @dx.op.unary.f32(i32 23, float %4667)  ; Log(value)
  %4669 = fmul fast float %4668, 5.000000e-01
  %4670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4671 = extractvalue %dx.types.CBufRet.f32 %4670, 1
  %4672 = fadd fast float %4671, %4669
  %4673 = call float @dx.op.binary.f32(i32 35, float %4672, float 0.000000e+00)  ; FMax(a,b)
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 3
  %4676 = fadd fast float %4675, %4673
  %4677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.f32 %4677, 3
  %4679 = fadd fast float %4676, %4678
  %4680 = add i32 %4646, 0
  %4681 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4680, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4682 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4681, i32 0)  ; GetDimensions(handle,mipLevel)
  %4683 = extractvalue %dx.types.Dimensions %4682, 0
  %4684 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4683)  ; FirstbitLo(value)
  %4685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.i32 %4685, 1
  %4687 = sub nsw i32 %4686, %4684
  %4688 = sitofp i32 %4687 to float
  %4689 = fsub fast float %4679, %4688
  %4690 = call float @dx.op.binary.f32(i32 35, float %4689, float 0.000000e+00)  ; FMax(a,b)
  %4691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4681, %dx.types.Handle %27, float %4652, float %4654, float %4642, float undef, i32 0, i32 0, i32 undef, float %4690)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = fcmp ule float %4692, 0x3FE0101020000000
  %4694 = extractvalue %dx.types.CBufRet.i32 %4685, 0
  %4695 = and i32 %4694, 128
  %4696 = icmp ne i32 %4695, 0
  %4697 = and i1 %4693, %4696
  br i1 %4697, label %4848, label %4698

; <label>:4698                                    ; preds = %4632
  %4699 = add i32 %4633, 20
  %4700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4699, i32 undef)  ; BufferLoad(srv,index,wot)
  %4701 = extractvalue %dx.types.ResRet.f32 %4700, 0
  %4702 = add i32 %4633, 24
  %4703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4702, i32 undef)  ; BufferLoad(srv,index,wot)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = add i32 %4633, 40
  %4706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4705, i32 undef)  ; BufferLoad(srv,index,wot)
  %4707 = extractvalue %dx.types.ResRet.f32 %4706, 0
  %4708 = add i32 %4633, 96
  %4709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4708, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.i32 %4709, 0
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 2
  %4713 = fmul fast float %4712, %4652
  %4714 = fmul fast float %4712, %4654
  %4715 = extractvalue %dx.types.CBufRet.f32 %4711, 3
  %4716 = fadd fast float %4713, %4715
  %4717 = fadd fast float %4714, %4715
  %4718 = add i32 %4710, 0
  %4719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4718, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4720 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4719, i32 0)  ; GetDimensions(handle,mipLevel)
  %4721 = extractvalue %dx.types.Dimensions %4720, 0
  %4722 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4721)  ; FirstbitLo(value)
  %4723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.i32 %4723, 1
  %4725 = sub nsw i32 %4724, %4722
  %4726 = sitofp i32 %4725 to float
  %4727 = fsub fast float %4676, %4726
  %4728 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4729 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4719, %dx.types.Handle %27, float %4716, float %4717, float %4707, float undef, i32 0, i32 0, i32 undef, float %4728)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4730 = extractvalue %dx.types.ResRet.f32 %4729, 0
  %4731 = fmul fast float %4730, %4701
  %4732 = fadd fast float %4731, %4704
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.f32 %4737, 3
  %4739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4740 = extractvalue %dx.types.CBufRet.f32 %4739, 3
  %4741 = extractvalue %dx.types.CBufRet.f32 %4733, 3
  %4742 = fadd fast float %4738, %4599
  %4743 = fadd fast float %4740, %4600
  %4744 = fadd fast float %4732, %4741
  %4745 = fmul fast float %4742, %4734
  %4746 = call float @dx.op.tertiary.f32(i32 46, float %4743, float %4735, float %4745)  ; FMad(a,b,c)
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %4744, float %4736, float %4746)  ; FMad(a,b,c)
  %4748 = fsub fast float %4747, %4741
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 2
  %4751 = fsub fast float %4748, %4750
  %4752 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.i32 %4752, 0
  %4754 = call i32 @dx.op.binary.i32(i32 40, i32 %4630, i32 %4753)  ; UMin(a,b)
  %4755 = mul i32 %4754, 36
  %4756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4755, i32 undef)  ; BufferLoad(srv,index,wot)
  %4757 = extractvalue %dx.types.ResRet.i32 %4756, 0
  %4758 = add i32 %4755, 4
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4761 = fmul fast float %4760, %4652
  %4762 = fmul fast float %4760, %4654
  %4763 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4764 = fadd fast float %4761, %4763
  %4765 = fadd fast float %4762, %4763
  %4766 = icmp eq i32 %4757, 0
  br i1 %4766, label %4835, label %4767

; <label>:4767                                    ; preds = %4698
  br label %4768

; <label>:4768                                    ; preds = %4825, %4767
  %4769 = phi float [ %4826, %4825 ], [ 0.000000e+00, %4767 ]
  %4770 = phi float [ %4827, %4825 ], [ 0.000000e+00, %4767 ]
  %4771 = phi float [ %4828, %4825 ], [ 0.000000e+00, %4767 ]
  %4772 = phi float [ %4829, %4825 ], [ 0.000000e+00, %4767 ]
  %4773 = phi float [ %4830, %4825 ], [ 0.000000e+00, %4767 ]
  %4774 = phi float [ %4831, %4825 ], [ 0.000000e+00, %4767 ]
  %4775 = phi i32 [ %4832, %4825 ], [ 0, %4767 ]
  %4776 = shl i32 %4775, 2
  %4777 = add i32 %4643, %4776
  %4778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.f32 %4778, 0
  %4780 = add i32 %4647, %4776
  %4781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4780, i32 undef)  ; BufferLoad(srv,index,wot)
  %4782 = extractvalue %dx.types.ResRet.i32 %4781, 0
  %4783 = add i32 %4782, 0
  %4784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4783, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4785 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4784, i32 0)  ; GetDimensions(handle,mipLevel)
  %4786 = extractvalue %dx.types.Dimensions %4785, 0
  %4787 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4786)  ; FirstbitLo(value)
  %4788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.i32 %4788, 1
  %4790 = sub nsw i32 %4789, %4787
  %4791 = sitofp i32 %4790 to float
  %4792 = fsub fast float %4676, %4791
  %4793 = call float @dx.op.binary.f32(i32 35, float %4792, float 0.000000e+00)  ; FMax(a,b)
  %4794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4784, %dx.types.Handle %27, float %4764, float %4765, float %4779, float undef, i32 0, i32 0, i32 undef, float %4793)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4795 = extractvalue %dx.types.ResRet.f32 %4794, 0
  %4796 = fcmp fast ogt float %4795, 0.000000e+00
  br i1 %4796, label %4797, label %4825

; <label>:4797                                    ; preds = %4768
  %4798 = add i32 %4758, %4776
  %4799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4798, i32 undef)  ; BufferLoad(srv,index,wot)
  %4800 = extractvalue %dx.types.ResRet.i32 %4799, 0
  %4801 = and i32 %4800, 32767
  %4802 = mul nuw nsw i32 %4801, 928
  %4803 = add nuw nsw i32 %4802, 48
  %4804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4803, i32 undef)  ; BufferLoad(srv,index,wot)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 0
  %4806 = extractvalue %dx.types.ResRet.f32 %4804, 1
  %4807 = extractvalue %dx.types.ResRet.f32 %4804, 2
  %4808 = add nuw nsw i32 %4802, 60
  %4809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4808, i32 undef)  ; BufferLoad(srv,index,wot)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.ResRet.f32 %4809, 1
  %4812 = extractvalue %dx.types.ResRet.f32 %4809, 2
  %4813 = fmul fast float %4805, %4795
  %4814 = fmul fast float %4806, %4795
  %4815 = fmul fast float %4807, %4795
  %4816 = fadd fast float %4813, %4769
  %4817 = fadd fast float %4814, %4770
  %4818 = fadd fast float %4815, %4771
  %4819 = fmul fast float %4810, %4795
  %4820 = fmul fast float %4811, %4795
  %4821 = fmul fast float %4812, %4795
  %4822 = fadd fast float %4819, %4772
  %4823 = fadd fast float %4820, %4773
  %4824 = fadd fast float %4821, %4774
  br label %4825

; <label>:4825                                    ; preds = %4797, %4768
  %4826 = phi float [ %4816, %4797 ], [ %4769, %4768 ]
  %4827 = phi float [ %4817, %4797 ], [ %4770, %4768 ]
  %4828 = phi float [ %4818, %4797 ], [ %4771, %4768 ]
  %4829 = phi float [ %4822, %4797 ], [ %4772, %4768 ]
  %4830 = phi float [ %4823, %4797 ], [ %4773, %4768 ]
  %4831 = phi float [ %4824, %4797 ], [ %4774, %4768 ]
  %4832 = add nuw i32 %4775, 1
  %4833 = icmp eq i32 %4832, %4757
  br i1 %4833, label %4834, label %4768

; <label>:4834                                    ; preds = %4825
  br label %4835

; <label>:4835                                    ; preds = %4834, %4698
  %4836 = phi float [ 0.000000e+00, %4698 ], [ %4826, %4834 ]
  %4837 = phi float [ 0.000000e+00, %4698 ], [ %4827, %4834 ]
  %4838 = phi float [ 0.000000e+00, %4698 ], [ %4828, %4834 ]
  %4839 = phi float [ 0.000000e+00, %4698 ], [ %4829, %4834 ]
  %4840 = phi float [ 0.000000e+00, %4698 ], [ %4830, %4834 ]
  %4841 = phi float [ 0.000000e+00, %4698 ], [ %4831, %4834 ]
  %4842 = fadd fast float %4839, %4836
  %4843 = fmul fast float %4842, 0x3F847AE140000000
  %4844 = fadd fast float %4840, %4837
  %4845 = fmul fast float %4844, 0x3F847AE140000000
  %4846 = fadd fast float %4841, %4838
  %4847 = fmul fast float %4846, 0x3F847AE140000000
  br label %4848

; <label>:4848                                    ; preds = %4835, %4632, %4577, %4574, %4545, %4507
  %4849 = phi float [ %4559, %4545 ], [ -1.310720e+05, %4507 ], [ %4751, %4835 ], [ -1.310720e+05, %4577 ], [ -1.310720e+05, %4632 ], [ -1.310720e+05, %4574 ]
  %4850 = phi float [ %4569, %4545 ], [ 0.000000e+00, %4507 ], [ %4843, %4835 ], [ 0.000000e+00, %4577 ], [ 0.000000e+00, %4632 ], [ 0.000000e+00, %4574 ]
  %4851 = phi float [ %4571, %4545 ], [ 0.000000e+00, %4507 ], [ %4845, %4835 ], [ 0.000000e+00, %4577 ], [ 0.000000e+00, %4632 ], [ 0.000000e+00, %4574 ]
  %4852 = phi float [ %4573, %4545 ], [ 0.000000e+00, %4507 ], [ %4847, %4835 ], [ 0.000000e+00, %4577 ], [ 0.000000e+00, %4632 ], [ 0.000000e+00, %4574 ]
  %4853 = phi i1 [ true, %4545 ], [ false, %4507 ], [ true, %4835 ], [ false, %4577 ], [ false, %4632 ], [ false, %4574 ]
  %4854 = and i32 %152, 3
  %4855 = icmp eq i32 %4854, 1
  %4856 = select i1 %4855, float 1.000000e+00, float 0.000000e+00
  %4857 = fsub fast float %4849, %136
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = select i1 %4853, float %4858, float 1.000000e+00
  %4860 = fmul fast float %4859, %4856
  %4861 = icmp eq i32 %4854, 3
  %4862 = select i1 %4861, float 1.000000e+00, float %4860
  %4863 = call float @dx.op.binary.f32(i32 35, float %4450, float %4862)  ; FMax(a,b)
  %4864 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4865 = fcmp fast une float %4864, 0.000000e+00
  %4866 = call float @dx.op.dot3.f32(i32 55, float %134, float %135, float %136, float %134, float %135, float %136)  ; Dot3(ax,ay,az,bx,by,bz)
  %4867 = call float @dx.op.unary.f32(i32 25, float %4866)  ; Rsqrt(value)
  br i1 %4865, label %4875, label %4868

; <label>:4868                                    ; preds = %4848
  %4869 = fmul fast float %4867, %134
  %4870 = fmul fast float %4867, %135
  %4871 = fmul fast float %4867, %136
  %4872 = fsub fast float -0.000000e+00, %4869
  %4873 = fsub fast float -0.000000e+00, %4870
  %4874 = fsub fast float -0.000000e+00, %4871
  br label %5043

; <label>:4875                                    ; preds = %4848
  %4876 = fmul fast float %134, %4867
  %4877 = fsub fast float -0.000000e+00, %4876
  %4878 = fmul fast float %135, %4867
  %4879 = fsub fast float -0.000000e+00, %4878
  %4880 = fmul fast float %136, %4867
  %4881 = fsub fast float -0.000000e+00, %4880
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4879, float %4881, float %84, float %86, float %88)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = fmul fast float %4864, 2.500000e+00
  %4884 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4885 = fmul fast float %4864, 0x4013FFFFE0000000
  %4886 = fadd fast float %4885, 0xBFFFFFFFE0000000
  %4887 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4888 = fmul fast float %4864, 0x4004000020000000
  %4889 = fadd fast float %4888, 0xBFF8000040000000
  %4890 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4891 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4892 = fmul fast float %4453, 1.000000e+01
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = fmul fast float %4893, 2.000000e+00
  %4895 = fsub fast float 3.000000e+00, %4894
  %4896 = fmul fast float %4893, %4893
  %4897 = fmul fast float %4896, %4895
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = fsub fast float 0x3FE3333340000000, %4474
  %4900 = fmul fast float %4899, 0x400AAAAAA0000000
  %4901 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4902 = fmul fast float %4898, %4901
  %4903 = fmul fast float %4486, 0x3FEA2B8620000000
  %4904 = fmul fast float %4487, 0x3FEA2B8620000000
  %4905 = fmul fast float %4488, 0x3FEA2B8620000000
  %4906 = fadd fast float %4903, 0x3FC81DFBA0000000
  %4907 = fmul fast float %4906, %4486
  %4908 = fadd fast float %4907, 0x3F910E6020000000
  %4909 = fadd fast float %4904, 0x3FC81DFBA0000000
  %4910 = fmul fast float %4909, %4487
  %4911 = fadd fast float %4910, 0x3F910E6020000000
  %4912 = fadd fast float %4905, 0x3FC81DFBA0000000
  %4913 = fmul fast float %4912, %4488
  %4914 = fadd fast float %4913, 0x3F910E6020000000
  %4915 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4917 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4918 = fsub fast float %4915, %4486
  %4919 = fsub fast float %4916, %4487
  %4920 = fsub fast float %4917, %4488
  %4921 = fmul fast float %4918, %4891
  %4922 = fmul fast float %4921, %4902
  %4923 = fmul fast float %4919, %4891
  %4924 = fmul fast float %4923, %4902
  %4925 = fmul fast float %4920, %4891
  %4926 = fmul fast float %4925, %4902
  %4927 = fadd fast float %4922, %4486
  %4928 = fadd fast float %4924, %4487
  %4929 = fadd fast float %4926, %4488
  %4930 = fmul fast float %4447, %4447
  %4931 = fmul fast float %4930, %4930
  %4932 = fadd fast float %4887, 1.000000e+00
  %4933 = fsub fast float %4932, %4902
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = call float @dx.op.dot3.f32(i32 55, float %84, float %86, float %88, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4937 = fsub fast float 1.000000e+00, %4931
  %4938 = call float @dx.op.binary.f32(i32 36, float %4934, float %4937)  ; FMin(a,b)
  %4939 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4940 = call float @dx.op.binary.f32(i32 35, float %4938, float %4939)  ; FMax(a,b)
  %4941 = fadd fast float %4936, 0xBFE4CCCCC0000000
  %4942 = fmul fast float %4941, 0x4006DB6DA0000000
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %4943, 2.000000e+00
  %4945 = fsub fast float 3.000000e+00, %4944
  %4946 = bitcast float %4471 to i32
  %4947 = ashr i32 %4946, 1
  %4948 = add nsw i32 %4947, 532487669
  %4949 = bitcast i32 %4948 to float
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, 2.000000e+00
  %4955 = bitcast float %4472 to i32
  %4956 = ashr i32 %4955, 1
  %4957 = add nsw i32 %4956, 532487669
  %4958 = bitcast i32 %4957 to float
  %4959 = fsub fast float 1.000000e+00, %4958
  %4960 = bitcast float %4959 to i32
  %4961 = sub nsw i32 2129859010, %4960
  %4962 = bitcast i32 %4961 to float
  %4963 = fmul fast float %4962, 2.000000e+00
  %4964 = bitcast float %4473 to i32
  %4965 = ashr i32 %4964, 1
  %4966 = add nsw i32 %4965, 532487669
  %4967 = bitcast i32 %4966 to float
  %4968 = fsub fast float 1.000000e+00, %4967
  %4969 = bitcast float %4968 to i32
  %4970 = sub nsw i32 2129859010, %4969
  %4971 = bitcast i32 %4970 to float
  %4972 = fmul fast float %4971, 2.000000e+00
  %4973 = fsub fast float 0x4002A9FBE0000000, %4954
  %4974 = fadd fast float %4954, 0x3FD54FDF00000000
  %4975 = bitcast float %4974 to i32
  %4976 = sub nsw i32 2129859010, %4975
  %4977 = bitcast i32 %4976 to float
  %4978 = fmul fast float %4977, %4973
  %4979 = fmul fast float %4978, %4978
  %4980 = fsub fast float 0x4002A9FBE0000000, %4963
  %4981 = fadd fast float %4963, 0x3FD54FDF00000000
  %4982 = bitcast float %4981 to i32
  %4983 = sub nsw i32 2129859010, %4982
  %4984 = bitcast i32 %4983 to float
  %4985 = fmul fast float %4984, %4980
  %4986 = fmul fast float %4985, %4985
  %4987 = fsub fast float 0x4002A9FBE0000000, %4972
  %4988 = fadd fast float %4972, 0x3FD54FDF00000000
  %4989 = bitcast float %4988 to i32
  %4990 = sub nsw i32 2129859010, %4989
  %4991 = bitcast i32 %4990 to float
  %4992 = fmul fast float %4991, %4987
  %4993 = fmul fast float %4992, %4992
  %4994 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4979)  ; FMax(a,b)
  %4995 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4986)  ; FMax(a,b)
  %4996 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4993)  ; FMax(a,b)
  %4997 = fsub fast float 1.000000e+00, %4882
  %4998 = fadd fast float %4997, %4898
  %4999 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5000 = fsub fast float 1.000000e+00, %4862
  %5001 = fmul fast float %4940, %5000
  %5002 = fmul fast float %4943, %4943
  %5003 = fmul fast float %5002, %5001
  %5004 = fmul fast float %5003, %4945
  %5005 = fmul fast float %5000, 0xBFE99999A0000000
  %5006 = fmul fast float %5005, %4891
  %5007 = fmul fast float %5006, %4902
  %5008 = fadd fast float %5007, 1.000000e+00
  %5009 = fadd fast float %4474, -1.000000e+00
  %5010 = fmul fast float %5008, %5009
  %5011 = fadd fast float %5010, 1.000000e+00
  %5012 = fsub fast float %4994, %4471
  %5013 = fsub fast float %4995, %4472
  %5014 = fsub fast float %4996, %4473
  %5015 = fmul fast float %5004, %5012
  %5016 = fmul fast float %5004, %5013
  %5017 = fmul fast float %5004, %5014
  %5018 = fadd fast float %5015, %4471
  %5019 = fadd fast float %5016, %4472
  %5020 = fadd fast float %5017, %4473
  %5021 = fsub fast float %84, %4435
  %5022 = fsub fast float %86, %4436
  %5023 = fsub fast float %88, %4437
  %5024 = fmul fast float %5004, %5021
  %5025 = fmul fast float %5004, %5022
  %5026 = fmul fast float %5004, %5023
  %5027 = fadd fast float %5024, %4435
  %5028 = fadd fast float %5025, %4436
  %5029 = fadd fast float %5026, %4437
  %5030 = fmul fast float %5004, %4999
  %5031 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5032 = fsub fast float 1.000000e+00, %5031
  %5033 = fmul fast float %5030, %5032
  %5034 = fadd fast float %5033, %5031
  %5035 = fsub fast float 1.000000e+00, %4447
  %5036 = fmul fast float %5004, %5035
  %5037 = fadd fast float %5036, %4447
  %5038 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5028, float %5029, float %5027, float %5028, float %5029)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = call float @dx.op.unary.f32(i32 25, float %5038)  ; Rsqrt(value)
  %5040 = fmul fast float %5027, %5039
  %5041 = fmul fast float %5028, %5039
  %5042 = fmul fast float %5029, %5039
  br label %5043

; <label>:5043                                    ; preds = %4875, %4868
  %5044 = phi float [ %4874, %4868 ], [ %4881, %4875 ]
  %5045 = phi float [ %4873, %4868 ], [ %4879, %4875 ]
  %5046 = phi float [ %4872, %4868 ], [ %4877, %4875 ]
  %5047 = phi float [ %4871, %4868 ], [ %4880, %4875 ]
  %5048 = phi float [ %4870, %4868 ], [ %4878, %4875 ]
  %5049 = phi float [ %4869, %4868 ], [ %4876, %4875 ]
  %5050 = phi float [ %4486, %4868 ], [ %4927, %4875 ]
  %5051 = phi float [ %4487, %4868 ], [ %4928, %4875 ]
  %5052 = phi float [ %4488, %4868 ], [ %4929, %4875 ]
  %5053 = phi float [ %4471, %4868 ], [ %5018, %4875 ]
  %5054 = phi float [ %4472, %4868 ], [ %5019, %4875 ]
  %5055 = phi float [ %4473, %4868 ], [ %5020, %4875 ]
  %5056 = phi float [ %4435, %4868 ], [ %5040, %4875 ]
  %5057 = phi float [ %4436, %4868 ], [ %5041, %4875 ]
  %5058 = phi float [ %4437, %4868 ], [ %5042, %4875 ]
  %5059 = phi float [ %4474, %4868 ], [ %5034, %4875 ]
  %5060 = phi float [ %4447, %4868 ], [ %5037, %4875 ]
  %5061 = select i1 %176, float 0.000000e+00, float %5055
  %5062 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %5046, float %5045, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5048, float %5047, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = fmul fast float %5064, 2.000000e+00
  %5066 = fmul fast float %5065, %5056
  %5067 = fmul fast float %5065, %5057
  %5068 = fmul fast float %5065, %5058
  %5069 = fsub fast float %5049, %5066
  %5070 = fsub fast float %5048, %5067
  %5071 = fsub fast float %5047, %5068
  %5072 = call float @dx.op.binary.f32(i32 36, float %5060, float 1.000000e+00)  ; FMin(a,b)
  %5073 = fsub fast float 1.000000e+00, %5060
  %5074 = bitcast float %5073 to i32
  %5075 = sub nsw i32 2129859010, %5074
  %5076 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %52)  ; FMax(a,b)
  %5077 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = fcmp fast oeq float %5077, 0.000000e+00
  %5079 = fcmp fast oeq float %5076, 0.000000e+00
  %5080 = or i1 %5079, %5078
  br i1 %5080, label %5110, label %5081

; <label>:5081                                    ; preds = %5043
  %5082 = fsub fast float -0.000000e+00, %55
  %5083 = fsub fast float -0.000000e+00, %53
  %5084 = call float @dx.op.unary.f32(i32 24, float %5077)  ; Sqrt(value)
  %5085 = fdiv fast float %5084, %5076
  %5086 = fcmp fast ogt float %5085, 0x3FFB6F8900000000
  %5087 = select i1 %5086, float 0x3FFB6F8900000000, float %5085
  %5088 = fmul fast float %5087, 0x3FE8A23460000000
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = call float @dx.op.binary.f32(i32 35, float %5087, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5091 = fmul fast float %5089, %5076
  %5092 = fmul fast float %5090, 0x3FF279A740000000
  %5093 = fadd fast float %5092, -1.000000e+00
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5082, float %5083, float %54, float %5082, float %5083, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 25, float %5094)  ; Rsqrt(value)
  %5096 = fmul fast float %5095, %5082
  %5097 = fmul fast float %5095, %5083
  %5098 = fmul fast float %5095, %54
  %5099 = fmul fast float %5093, %5093
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = fmul fast float %5090, 0x40005F8BE0000000
  %5102 = fsub fast float 0x400C5BF8A0000000, %5101
  %5103 = fdiv fast float %5091, %5102
  %5104 = fmul fast float %5103, 0x3FEE31C3C0000000
  %5105 = fmul fast float %5104, %5100
  %5106 = fmul fast float %5090, 0x3FDACB7480000000
  %5107 = fadd fast float %5106, 0xBFD7347680000000
  %5108 = fmul fast float %5107, %5103
  %5109 = fmul fast float %5108, %5100
  br label %5110

; <label>:5110                                    ; preds = %5081, %5043
  %5111 = phi float [ %5096, %5081 ], [ 0.000000e+00, %5043 ]
  %5112 = phi float [ %5097, %5081 ], [ 0.000000e+00, %5043 ]
  %5113 = phi float [ %5098, %5081 ], [ 0.000000e+00, %5043 ]
  %5114 = phi float [ %5105, %5081 ], [ 0.000000e+00, %5043 ]
  %5115 = phi float [ %5109, %5081 ], [ 0.000000e+00, %5043 ]
  %5116 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = fmul fast float %5116, %5116
  %5118 = fmul fast float %5117, 0x3FEE471020000000
  %5119 = fadd fast float %5118, 0xBFD42F6020000000
  %5120 = fmul fast float %5076, 0x3FD20DD760000000
  %5121 = fmul fast float %5119, %5115
  %5122 = fmul fast float %5114, 0x3FDF454380000000
  %5123 = fmul fast float %5122, %5116
  %5124 = fadd fast float %5123, %5120
  %5125 = fadd fast float %5124, %5121
  %5126 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5127 = fmul fast float %5126, 0x3FDF454380000000
  %5128 = fmul fast float %5126, %5126
  %5129 = fmul fast float %5128, 0x3FEE471020000000
  %5130 = fadd fast float %5129, 0xBFD42F6020000000
  %5131 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5114, float %5115, float 0x3FD20DD760000000, float %5127, float %5130)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %48)  ; FMax(a,b)
  %5133 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %5134 = fcmp fast oeq float %5133, 0.000000e+00
  %5135 = fcmp fast oeq float %5132, 0.000000e+00
  %5136 = or i1 %5135, %5134
  br i1 %5136, label %5166, label %5137

; <label>:5137                                    ; preds = %5110
  %5138 = fsub fast float -0.000000e+00, %51
  %5139 = fsub fast float -0.000000e+00, %49
  %5140 = call float @dx.op.unary.f32(i32 24, float %5133)  ; Sqrt(value)
  %5141 = fdiv fast float %5140, %5132
  %5142 = fcmp fast ogt float %5141, 0x3FFB6F8900000000
  %5143 = select i1 %5142, float 0x3FFB6F8900000000, float %5141
  %5144 = fmul fast float %5143, 0x3FE8A23460000000
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = call float @dx.op.binary.f32(i32 35, float %5143, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5147 = fmul fast float %5145, %5132
  %5148 = fmul fast float %5146, 0x3FF279A740000000
  %5149 = fadd fast float %5148, -1.000000e+00
  %5150 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %50, float %5138, float %5139, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %5151 = call float @dx.op.unary.f32(i32 25, float %5150)  ; Rsqrt(value)
  %5152 = fmul fast float %5151, %5138
  %5153 = fmul fast float %5151, %5139
  %5154 = fmul fast float %5151, %50
  %5155 = fmul fast float %5149, %5149
  %5156 = fsub fast float 1.000000e+00, %5155
  %5157 = fmul fast float %5146, 0x40005F8BE0000000
  %5158 = fsub fast float 0x400C5BF8A0000000, %5157
  %5159 = fdiv fast float %5147, %5158
  %5160 = fmul fast float %5159, 0x3FEE31C3C0000000
  %5161 = fmul fast float %5160, %5156
  %5162 = fmul fast float %5146, 0x3FDACB7480000000
  %5163 = fadd fast float %5162, 0xBFD7347680000000
  %5164 = fmul fast float %5163, %5159
  %5165 = fmul fast float %5164, %5156
  br label %5166

; <label>:5166                                    ; preds = %5137, %5110
  %5167 = phi float [ %5152, %5137 ], [ 0.000000e+00, %5110 ]
  %5168 = phi float [ %5153, %5137 ], [ 0.000000e+00, %5110 ]
  %5169 = phi float [ %5154, %5137 ], [ 0.000000e+00, %5110 ]
  %5170 = phi float [ %5161, %5137 ], [ 0.000000e+00, %5110 ]
  %5171 = phi float [ %5165, %5137 ], [ 0.000000e+00, %5110 ]
  %5172 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5173 = fmul fast float %5172, %5172
  %5174 = fmul fast float %5173, 0x3FEE471020000000
  %5175 = fadd fast float %5174, 0xBFD42F6020000000
  %5176 = fmul fast float %5132, 0x3FD20DD760000000
  %5177 = fmul fast float %5175, %5171
  %5178 = fmul fast float %5170, 0x3FDF454380000000
  %5179 = fmul fast float %5178, %5172
  %5180 = fadd fast float %5179, %5176
  %5181 = fadd fast float %5180, %5177
  %5182 = call float @dx.op.dot3.f32(i32 55, float %5167, float %5168, float %5169, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5183 = fmul fast float %5182, 0x3FDF454380000000
  %5184 = fmul fast float %5182, %5182
  %5185 = fmul fast float %5184, 0x3FEE471020000000
  %5186 = fadd fast float %5185, 0xBFD42F6020000000
  %5187 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5170, float %5171, float 0x3FD20DD760000000, float %5183, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %44)  ; FMax(a,b)
  %5189 = call float @dx.op.dot3.f32(i32 55, float %45, float %46, float %47, float %45, float %46, float %47)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = fcmp fast oeq float %5189, 0.000000e+00
  %5191 = fcmp fast oeq float %5188, 0.000000e+00
  %5192 = or i1 %5191, %5190
  br i1 %5192, label %5222, label %5193

; <label>:5193                                    ; preds = %5166
  %5194 = fsub fast float -0.000000e+00, %47
  %5195 = fsub fast float -0.000000e+00, %45
  %5196 = call float @dx.op.unary.f32(i32 24, float %5189)  ; Sqrt(value)
  %5197 = fdiv fast float %5196, %5188
  %5198 = fcmp fast ogt float %5197, 0x3FFB6F8900000000
  %5199 = select i1 %5198, float 0x3FFB6F8900000000, float %5197
  %5200 = fmul fast float %5199, 0x3FE8A23460000000
  %5201 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5202 = call float @dx.op.binary.f32(i32 35, float %5199, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5203 = fmul fast float %5201, %5188
  %5204 = fmul fast float %5202, 0x3FF279A740000000
  %5205 = fadd fast float %5204, -1.000000e+00
  %5206 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %46, float %5194, float %5195, float %46)  ; Dot3(ax,ay,az,bx,by,bz)
  %5207 = call float @dx.op.unary.f32(i32 25, float %5206)  ; Rsqrt(value)
  %5208 = fmul fast float %5207, %5194
  %5209 = fmul fast float %5207, %5195
  %5210 = fmul fast float %5207, %46
  %5211 = fmul fast float %5205, %5205
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = fmul fast float %5202, 0x40005F8BE0000000
  %5214 = fsub fast float 0x400C5BF8A0000000, %5213
  %5215 = fdiv fast float %5203, %5214
  %5216 = fmul fast float %5215, 0x3FEE31C3C0000000
  %5217 = fmul fast float %5216, %5212
  %5218 = fmul fast float %5202, 0x3FDACB7480000000
  %5219 = fadd fast float %5218, 0xBFD7347680000000
  %5220 = fmul fast float %5219, %5215
  %5221 = fmul fast float %5220, %5212
  br label %5222

; <label>:5222                                    ; preds = %5193, %5166
  %5223 = phi float [ %5208, %5193 ], [ 0.000000e+00, %5166 ]
  %5224 = phi float [ %5209, %5193 ], [ 0.000000e+00, %5166 ]
  %5225 = phi float [ %5210, %5193 ], [ 0.000000e+00, %5166 ]
  %5226 = phi float [ %5217, %5193 ], [ 0.000000e+00, %5166 ]
  %5227 = phi float [ %5221, %5193 ], [ 0.000000e+00, %5166 ]
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5224, float %5225, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = fmul fast float %5228, %5228
  %5230 = fmul fast float %5229, 0x3FEE471020000000
  %5231 = fadd fast float %5230, 0xBFD42F6020000000
  %5232 = fmul fast float %5188, 0x3FD20DD760000000
  %5233 = fmul fast float %5231, %5227
  %5234 = fmul fast float %5226, 0x3FDF454380000000
  %5235 = fmul fast float %5234, %5228
  %5236 = fadd fast float %5235, %5232
  %5237 = fadd fast float %5236, %5233
  %5238 = call float @dx.op.dot3.f32(i32 55, float %5223, float %5224, float %5225, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5239 = fmul fast float %5238, 0x3FDF454380000000
  %5240 = fmul fast float %5238, %5238
  %5241 = fmul fast float %5240, 0x3FEE471020000000
  %5242 = fadd fast float %5241, 0xBFD42F6020000000
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5188, float %5226, float %5227, float 0x3FD20DD760000000, float %5239, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.binary.f32(i32 35, float %5125, float 0.000000e+00)  ; FMax(a,b)
  %5245 = call float @dx.op.binary.f32(i32 35, float %5181, float 0.000000e+00)  ; FMax(a,b)
  %5246 = call float @dx.op.binary.f32(i32 35, float %5237, float 0.000000e+00)  ; FMax(a,b)
  %5247 = call float @dx.op.binary.f32(i32 35, float %5131, float 0.000000e+00)  ; FMax(a,b)
  %5248 = call float @dx.op.binary.f32(i32 35, float %5187, float 0.000000e+00)  ; FMax(a,b)
  %5249 = call float @dx.op.binary.f32(i32 35, float %5243, float 0.000000e+00)  ; FMax(a,b)
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 0
  %5252 = call float @dx.op.binary.f32(i32 36, float %5050, float %5251)  ; FMin(a,b)
  %5253 = fsub fast float 1.000000e+00, %5072
  %5254 = fmul fast float %5252, %5253
  %5255 = fsub fast float 1.000000e+00, %5254
  %5256 = bitcast float %5255 to i32
  %5257 = sub nsw i32 2129859010, %5256
  %5258 = bitcast i32 %5257 to float
  %5259 = call float @dx.op.binary.f32(i32 36, float %5051, float %5251)  ; FMin(a,b)
  %5260 = fmul fast float %5259, %5253
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = bitcast float %5261 to i32
  %5263 = sub nsw i32 2129859010, %5262
  %5264 = bitcast i32 %5263 to float
  %5265 = call float @dx.op.binary.f32(i32 36, float %5052, float %5251)  ; FMin(a,b)
  %5266 = fmul fast float %5265, %5253
  %5267 = fsub fast float 1.000000e+00, %5266
  %5268 = bitcast float %5267 to i32
  %5269 = sub nsw i32 2129859010, %5268
  %5270 = bitcast i32 %5269 to float
  %5271 = fmul fast float %5244, %5072
  %5272 = fmul fast float %5271, %5258
  %5273 = fmul fast float %5245, %5072
  %5274 = fmul fast float %5273, %5264
  %5275 = fmul fast float %5246, %5072
  %5276 = fmul fast float %5275, %5270
  %5277 = call float @dx.op.binary.f32(i32 36, float %5053, float %5251)  ; FMin(a,b)
  %5278 = fmul fast float %5277, %5253
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = bitcast float %5279 to i32
  %5281 = sub nsw i32 2129859010, %5280
  %5282 = bitcast i32 %5281 to float
  %5283 = call float @dx.op.binary.f32(i32 36, float %5054, float %5251)  ; FMin(a,b)
  %5284 = fmul fast float %5283, %5253
  %5285 = fsub fast float 1.000000e+00, %5284
  %5286 = bitcast float %5285 to i32
  %5287 = sub nsw i32 2129859010, %5286
  %5288 = bitcast i32 %5287 to float
  %5289 = call float @dx.op.binary.f32(i32 36, float %5061, float %5251)  ; FMin(a,b)
  %5290 = fmul fast float %5289, %5253
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = bitcast float %5291 to i32
  %5293 = sub nsw i32 2129859010, %5292
  %5294 = bitcast i32 %5293 to float
  %5295 = fmul fast float %5247, %5072
  %5296 = fmul fast float %5295, %5282
  %5297 = fmul fast float %5248, %5072
  %5298 = fmul fast float %5297, %5288
  %5299 = fmul fast float %5249, %5072
  %5300 = fmul fast float %5299, %5294
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5272, float %5274, float %5276, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = select i1 %176, float 0.000000e+00, float %5272
  %5303 = select i1 %176, float %5301, float %5274
  %5304 = select i1 %176, float 0.000000e+00, float %5276
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5296, float %5298, float %5300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = select i1 %176, float 0.000000e+00, float %5296
  %5307 = select i1 %176, float %5305, float %5298
  %5308 = select i1 %176, float 0.000000e+00, float %5300
  %5309 = fmul fast float %5063, 9.843750e-01
  %5310 = fmul fast float %5059, 9.843750e-01
  %5311 = fadd fast float %5309, 7.812500e-03
  %5312 = fadd fast float %5310, 7.812500e-03
  %5313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5311, float %5312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5314 = extractvalue %dx.types.ResRet.f32 %5313, 2
  %5315 = extractvalue %dx.types.ResRet.f32 %5313, 3
  %5316 = fmul fast float %5314, %5053
  %5317 = fmul fast float %5314, %5054
  %5318 = fmul fast float %5314, %5061
  %5319 = fadd fast float %5316, %5315
  %5320 = fadd fast float %5317, %5315
  %5321 = fadd fast float %5318, %5315
  %5322 = fcmp fast ogt float %4448, 0.000000e+00
  br i1 %5322, label %5323, label %5349

; <label>:5323                                    ; preds = %5222
  %5324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4448, float %5063, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = fadd fast float %5325, -5.000000e-01
  %5329 = fadd fast float %5326, -5.000000e-01
  %5330 = fadd fast float %5327, -5.000000e-01
  %5331 = fsub fast float 1.000000e+00, %5053
  %5332 = fsub fast float 1.000000e+00, %5054
  %5333 = fsub fast float 1.000000e+00, %5061
  %5334 = fmul fast float %5053, 4.000000e+00
  %5335 = fmul fast float %5334, %5331
  %5336 = fmul fast float %5335, %5328
  %5337 = fmul fast float %5054, 4.000000e+00
  %5338 = fmul fast float %5337, %5332
  %5339 = fmul fast float %5338, %5329
  %5340 = fmul fast float %5061, 4.000000e+00
  %5341 = fmul fast float %5340, %5333
  %5342 = fmul fast float %5341, %5330
  %5343 = fadd fast float %5336, %5319
  %5344 = fadd fast float %5339, %5320
  %5345 = fadd fast float %5342, %5321
  %5346 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  br label %5349

; <label>:5349                                    ; preds = %5323, %5222
  %5350 = phi float [ %5346, %5323 ], [ %5319, %5222 ]
  %5351 = phi float [ %5347, %5323 ], [ %5320, %5222 ]
  %5352 = phi float [ %5348, %5323 ], [ %5321, %5222 ]
  %5353 = call float @dx.op.binary.f32(i32 35, float %5351, float %5352)  ; FMax(a,b)
  %5354 = call float @dx.op.binary.f32(i32 35, float %5350, float %5353)  ; FMax(a,b)
  %5355 = fsub fast float 1.000000e+00, %5354
  %5356 = fmul fast float %5355, %5302
  %5357 = fmul fast float %5355, %5303
  %5358 = fmul fast float %5355, %5304
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5050, float %5051, float %5052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = fcmp fast ogt float %5359, 0x3E7FF19E20000000
  %5361 = fdiv fast float 1.000000e+00, %5359
  %5362 = select i1 %5360, float %5361, float 0.000000e+00
  %5363 = fmul fast float %5362, %5050
  %5364 = fmul fast float %5362, %5051
  %5365 = fmul fast float %5362, %5052
  %5366 = fadd fast float %5363, -1.000000e+00
  %5367 = fadd fast float %5364, -1.000000e+00
  %5368 = fadd fast float %5365, -1.000000e+00
  %5369 = fmul fast float %5366, 5.000000e-01
  %5370 = fmul fast float %5367, 5.000000e-01
  %5371 = fmul fast float %5368, 5.000000e-01
  %5372 = fadd fast float %5369, 1.000000e+00
  %5373 = fadd fast float %5370, 1.000000e+00
  %5374 = fadd fast float %5371, 1.000000e+00
  %5375 = fmul fast float %5350, %5306
  %5376 = fmul fast float %5351, %5307
  %5377 = fmul fast float %5352, %5308
  %5378 = fsub fast float 1.000000e+00, %5063
  %5379 = bitcast float %5378 to i32
  %5380 = sitofp i32 %5379 to float
  %5381 = fmul fast float %5380, 5.000000e+00
  %5382 = fadd fast float %5381, 0xC1EFBF8940000000
  %5383 = fptosi float %5382 to i32
  %5384 = bitcast i32 %5383 to float
  %5385 = fmul fast float %5384, %4449
  %5386 = fmul fast float %5302, %5385
  %5387 = fmul fast float %5386, %5355
  %5388 = fmul fast float %5387, %5372
  %5389 = fmul fast float %5303, %5385
  %5390 = fmul fast float %5389, %5355
  %5391 = fmul fast float %5390, %5373
  %5392 = fmul fast float %5304, %5385
  %5393 = fmul fast float %5392, %5355
  %5394 = fmul fast float %5393, %5374
  %5395 = fmul fast float %5356, %4445
  %5396 = fmul fast float %5357, %4445
  %5397 = fmul fast float %5358, %4445
  %5398 = fadd fast float %5375, %4441
  %5399 = fadd fast float %5398, %5388
  %5400 = fmul fast float %5399, %4445
  %5401 = fadd fast float %5376, %4442
  %5402 = fadd fast float %5401, %5391
  %5403 = fmul fast float %5402, %4445
  %5404 = fadd fast float %5377, %4443
  %5405 = fadd fast float %5404, %5394
  %5406 = fmul fast float %5405, %4445
  %5407 = bitcast i32 %5075 to float
  %5408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5409 = extractvalue %dx.types.CBufRet.f32 %5408, 3
  %5410 = fcmp fast oeq float %5409, 0.000000e+00
  br i1 %5410, label %5638, label %5411

; <label>:5411                                    ; preds = %5349
  %5412 = extractvalue %dx.types.CBufRet.f32 %5408, 0
  %5413 = extractvalue %dx.types.CBufRet.f32 %5408, 1
  %5414 = extractvalue %dx.types.CBufRet.f32 %5408, 2
  %5415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5416 = extractvalue %dx.types.CBufRet.f32 %5415, 0
  %5417 = extractvalue %dx.types.CBufRet.f32 %5415, 1
  %5418 = extractvalue %dx.types.CBufRet.f32 %5415, 2
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5422 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5423 = select i1 %176, float %5420, float %5416
  %5424 = select i1 %176, float %5422, float %5417
  %5425 = select i1 %176, float %5421, float %5418
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5428 = fcmp fast une float %5427, 0.000000e+00
  br i1 %5428, label %5429, label %5446

; <label>:5429                                    ; preds = %5411
  %5430 = fptoui float %75 to i32
  %5431 = fptoui float %76 to i32
  %5432 = lshr i32 %5430, 4
  %5433 = lshr i32 %5431, 4
  %5434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5435 = extractvalue %dx.types.CBufRet.f32 %5434, 0
  %5436 = fptoui float %5435 to i32
  %5437 = add i32 %5436, 15
  %5438 = lshr i32 %5437, 4
  %5439 = mul i32 %5438, %5433
  %5440 = add i32 %5439, %5432
  %5441 = shl i32 %5440, 3
  %5442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5441, i32 undef)  ; BufferLoad(srv,index,wot)
  %5443 = extractvalue %dx.types.ResRet.i32 %5442, 0
  %5444 = and i32 %5443, -268435456
  %5445 = icmp eq i32 %5444, -1342177280
  br i1 %5445, label %5456, label %5446

; <label>:5446                                    ; preds = %5429, %5411
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 3
  %5450 = fmul fast float %5448, %75
  %5451 = fmul fast float %5449, %76
  %5452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5450, float %5451, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.ResRet.f32 %5452, 2
  br label %5456

; <label>:5456                                    ; preds = %5446, %5429
  %5457 = phi float [ %5453, %5446 ], [ 0.000000e+00, %5429 ]
  %5458 = phi float [ %5454, %5446 ], [ 0.000000e+00, %5429 ]
  %5459 = phi float [ %5455, %5446 ], [ 0.000000e+00, %5429 ]
  %5460 = call float @dx.op.binary.f32(i32 36, float %5458, float %5459)  ; FMin(a,b)
  %5461 = call float @dx.op.binary.f32(i32 36, float %5457, float %5460)  ; FMin(a,b)
  %5462 = fcmp fast ogt float %5461, 0.000000e+00
  br i1 %5462, label %5463, label %5638, !dx.controlflow.hints !75

; <label>:5463                                    ; preds = %5456
  %5464 = fmul fast float %5457, %5423
  %5465 = fmul fast float %5458, %5424
  %5466 = fmul fast float %5459, %5425
  %5467 = fsub fast float %5412, %5049
  %5468 = fsub fast float %5413, %5048
  %5469 = fsub fast float %5414, %5047
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float %5467, float %5468, float %5469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.unary.f32(i32 25, float %5470)  ; Rsqrt(value)
  %5472 = fmul fast float %5471, %5467
  %5473 = fmul fast float %5471, %5468
  %5474 = fmul fast float %5471, %5469
  %5475 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5413, float %5414, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5045, float %5044, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5478 = fmul fast float %5477, %5477
  %5479 = fmul fast float %5478, %5407
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fmul fast float %5480, %5477
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = fmul fast float %5482, %5482
  %5484 = call float @dx.op.unary.f32(i32 6, float %5475)  ; FAbs(value)
  %5485 = fsub fast float 1.000000e+00, %5059
  %5486 = call float @dx.op.binary.f32(i32 35, float %5485, float 0x3F847AE140000000)  ; FMax(a,b)
  %5487 = fmul fast float %5486, %5486
  %5488 = fmul fast float %5487, %5487
  %5489 = fsub fast float 1.000000e+00, %5488
  %5490 = fmul fast float %5063, %5063
  %5491 = fmul fast float %5490, %5489
  %5492 = fadd fast float %5491, %5488
  %5493 = bitcast float %5492 to i32
  %5494 = ashr i32 %5493, 1
  %5495 = add nsw i32 %5494, 532487669
  %5496 = bitcast i32 %5495 to float
  %5497 = fadd fast float %5496, %5063
  %5498 = fmul fast float %5488, %5483
  %5499 = fsub fast float 1.000000e+00, %5483
  %5500 = fadd fast float %5499, %5498
  %5501 = fmul fast float %5484, %5484
  %5502 = fmul fast float %5501, %5489
  %5503 = fadd fast float %5502, %5488
  %5504 = bitcast float %5503 to i32
  %5505 = ashr i32 %5504, 1
  %5506 = add nsw i32 %5505, 532487669
  %5507 = bitcast i32 %5506 to float
  %5508 = fadd fast float %5507, %5484
  %5509 = fmul fast float %5500, %5500
  %5510 = fmul fast float %5509, %5497
  %5511 = fmul fast float %5510, %5508
  %5512 = fdiv fast float 0x3FF0A00000000000, %5511
  %5513 = fmul fast float %5512, %5488
  %5514 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5515 = fsub fast float 1.000000e+00, %5514
  %5516 = bitcast float %5515 to i32
  %5517 = sitofp i32 %5516 to float
  %5518 = fmul fast float %5517, 5.000000e+00
  %5519 = fadd fast float %5518, 0xC1EFBF8940000000
  %5520 = fptosi float %5519 to i32
  %5521 = bitcast i32 %5520 to float
  %5522 = fsub fast float 1.000000e+00, %5053
  %5523 = fsub fast float 1.000000e+00, %5054
  %5524 = fsub fast float 1.000000e+00, %5061
  %5525 = fmul fast float %5521, %5522
  %5526 = fmul fast float %5521, %5523
  %5527 = fmul fast float %5521, %5524
  %5528 = fadd fast float %5525, %5053
  %5529 = fadd fast float %5526, %5054
  %5530 = fadd fast float %5527, %5061
  br i1 %5322, label %5531, label %5554

; <label>:5531                                    ; preds = %5463
  %5532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4448, float %5514, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5533 = extractvalue %dx.types.ResRet.f32 %5532, 0
  %5534 = extractvalue %dx.types.ResRet.f32 %5532, 1
  %5535 = extractvalue %dx.types.ResRet.f32 %5532, 2
  %5536 = fadd fast float %5533, -5.000000e-01
  %5537 = fadd fast float %5534, -5.000000e-01
  %5538 = fadd fast float %5535, -5.000000e-01
  %5539 = fmul fast float %5053, 4.000000e+00
  %5540 = fmul fast float %5539, %5522
  %5541 = fmul fast float %5540, %5536
  %5542 = fmul fast float %5054, 4.000000e+00
  %5543 = fmul fast float %5542, %5523
  %5544 = fmul fast float %5543, %5537
  %5545 = fmul fast float %5061, 4.000000e+00
  %5546 = fmul fast float %5545, %5524
  %5547 = fmul fast float %5546, %5538
  %5548 = fadd fast float %5541, %5528
  %5549 = fadd fast float %5544, %5529
  %5550 = fadd fast float %5547, %5530
  %5551 = call float @dx.op.unary.f32(i32 7, float %5548)  ; Saturate(value)
  %5552 = call float @dx.op.unary.f32(i32 7, float %5549)  ; Saturate(value)
  %5553 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  br label %5554

; <label>:5554                                    ; preds = %5531, %5463
  %5555 = phi float [ %5551, %5531 ], [ %5528, %5463 ]
  %5556 = phi float [ %5552, %5531 ], [ %5529, %5463 ]
  %5557 = phi float [ %5553, %5531 ], [ %5530, %5463 ]
  %5558 = fmul fast float %5475, 9.843750e-01
  %5559 = fadd fast float %5558, 7.812500e-03
  %5560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5559, float %5312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5561 = extractvalue %dx.types.ResRet.f32 %5560, 2
  %5562 = extractvalue %dx.types.ResRet.f32 %5560, 3
  %5563 = fmul fast float %5561, %5053
  %5564 = fmul fast float %5561, %5054
  %5565 = fmul fast float %5561, %5061
  %5566 = fadd fast float %5563, %5562
  %5567 = fadd fast float %5564, %5562
  %5568 = fadd fast float %5565, %5562
  br i1 %5322, label %5569, label %5592

; <label>:5569                                    ; preds = %5554
  %5570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4448, float %5475, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5571 = extractvalue %dx.types.ResRet.f32 %5570, 0
  %5572 = extractvalue %dx.types.ResRet.f32 %5570, 1
  %5573 = extractvalue %dx.types.ResRet.f32 %5570, 2
  %5574 = fadd fast float %5571, -5.000000e-01
  %5575 = fadd fast float %5572, -5.000000e-01
  %5576 = fadd fast float %5573, -5.000000e-01
  %5577 = fmul fast float %5053, 4.000000e+00
  %5578 = fmul fast float %5577, %5522
  %5579 = fmul fast float %5578, %5574
  %5580 = fmul fast float %5054, 4.000000e+00
  %5581 = fmul fast float %5580, %5523
  %5582 = fmul fast float %5581, %5575
  %5583 = fmul fast float %5061, 4.000000e+00
  %5584 = fmul fast float %5583, %5524
  %5585 = fmul fast float %5584, %5576
  %5586 = fadd fast float %5579, %5566
  %5587 = fadd fast float %5582, %5567
  %5588 = fadd fast float %5585, %5568
  %5589 = call float @dx.op.unary.f32(i32 7, float %5586)  ; Saturate(value)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5591 = call float @dx.op.unary.f32(i32 7, float %5588)  ; Saturate(value)
  br label %5592

; <label>:5592                                    ; preds = %5569, %5554
  %5593 = phi float [ %5589, %5569 ], [ %5566, %5554 ]
  %5594 = phi float [ %5590, %5569 ], [ %5567, %5554 ]
  %5595 = phi float [ %5591, %5569 ], [ %5568, %5554 ]
  %5596 = call float @dx.op.binary.f32(i32 35, float %5594, float %5595)  ; FMax(a,b)
  %5597 = call float @dx.op.binary.f32(i32 35, float %5593, float %5596)  ; FMax(a,b)
  %5598 = fsub fast float 1.000000e+00, %5597
  %5599 = fmul fast float %5555, %5513
  %5600 = fmul fast float %5556, %5513
  %5601 = fmul fast float %5557, %5513
  %5602 = fsub fast float 1.000000e+00, %5476
  %5603 = bitcast float %5602 to i32
  %5604 = sitofp i32 %5603 to float
  %5605 = fmul fast float %5604, 5.000000e+00
  %5606 = fadd fast float %5605, 0xC1EFBF8940000000
  %5607 = fptosi float %5606 to i32
  %5608 = bitcast i32 %5607 to float
  %5609 = fmul fast float %5608, %4449
  %5610 = fmul fast float %5598, %5609
  %5611 = fmul fast float %5610, %5372
  %5612 = fmul fast float %5610, %5373
  %5613 = fmul fast float %5610, %5374
  %5614 = fadd fast float %5611, %5599
  %5615 = fadd fast float %5612, %5600
  %5616 = fadd fast float %5613, %5601
  %5617 = fmul fast float %5481, %5464
  %5618 = fmul fast float %5617, %5598
  %5619 = fmul fast float %5481, %5465
  %5620 = fmul fast float %5619, %5598
  %5621 = fmul fast float %5481, %5466
  %5622 = fmul fast float %5621, %5598
  %5623 = fmul fast float %5617, %5614
  %5624 = fmul fast float %5619, %5615
  %5625 = fmul fast float %5621, %5616
  %5626 = fadd fast float %5618, %5356
  %5627 = fmul fast float %5626, %4445
  %5628 = fadd fast float %5620, %5357
  %5629 = fmul fast float %5628, %4445
  %5630 = fadd fast float %5622, %5358
  %5631 = fmul fast float %5630, %4445
  %5632 = fadd fast float %5623, %5399
  %5633 = fmul fast float %5632, %4445
  %5634 = fadd fast float %5624, %5402
  %5635 = fmul fast float %5634, %4445
  %5636 = fadd fast float %5625, %5405
  %5637 = fmul fast float %5636, %4445
  br label %5638

; <label>:5638                                    ; preds = %5592, %5456, %5349
  %5639 = phi float [ %5400, %5349 ], [ %5400, %5456 ], [ %5633, %5592 ]
  %5640 = phi float [ %5403, %5349 ], [ %5403, %5456 ], [ %5635, %5592 ]
  %5641 = phi float [ %5406, %5349 ], [ %5406, %5456 ], [ %5637, %5592 ]
  %5642 = phi float [ %5395, %5349 ], [ %5395, %5456 ], [ %5627, %5592 ]
  %5643 = phi float [ %5396, %5349 ], [ %5396, %5456 ], [ %5629, %5592 ]
  %5644 = phi float [ %5397, %5349 ], [ %5397, %5456 ], [ %5631, %5592 ]
  %5645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5646 = extractvalue %dx.types.CBufRet.i32 %5645, 0
  %5647 = icmp eq i32 %5646, 0
  br i1 %5647, label %6082, label %5648

; <label>:5648                                    ; preds = %5638
  %5649 = fptoui float %75 to i32
  %5650 = fptoui float %76 to i32
  %5651 = lshr i32 %5649, 4
  %5652 = lshr i32 %5650, 4
  %5653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.i32 %5653, 0
  %5655 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5652, i32 %5654, i32 %5651)  ; UMad(a,b,c)
  %5656 = add nsw i32 %5646, -1
  %5657 = call i32 @dx.op.binary.i32(i32 37, i32 %5656, i32 0)  ; IMax(a,b)
  %5658 = call float @dx.op.binary.f32(i32 35, float %70, float 0.000000e+00)  ; FMax(a,b)
  %5659 = fptoui float %5658 to i32
  %5660 = lshr i32 %5659, 5
  %5661 = call i32 @dx.op.binary.i32(i32 40, i32 %5660, i32 8191)  ; UMin(a,b)
  %5662 = shl i32 %5661, 2
  %5663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5662, i32 undef)  ; BufferLoad(srv,index,wot)
  %5664 = extractvalue %dx.types.ResRet.i32 %5663, 0
  %5665 = lshr i32 %5664, 16
  %5666 = and i32 %5664, 65535
  %5667 = lshr i32 %5664, 21
  %5668 = lshr i32 %5666, 5
  %5669 = call i32 @dx.op.binary.i32(i32 40, i32 %5668, i32 %5657)  ; UMin(a,b)
  %5670 = icmp ugt i32 %5667, %5669
  br i1 %5670, label %6082, label %5671

; <label>:5671                                    ; preds = %5648
  br label %5672

; <label>:5672                                    ; preds = %6072, %5671
  %5673 = phi i32 [ %6079, %6072 ], [ %5667, %5671 ]
  %5674 = phi float [ %6073, %6072 ], [ %5639, %5671 ]
  %5675 = phi float [ %6074, %6072 ], [ %5640, %5671 ]
  %5676 = phi float [ %6075, %6072 ], [ %5641, %5671 ]
  %5677 = phi float [ %6076, %6072 ], [ %5642, %5671 ]
  %5678 = phi float [ %6077, %6072 ], [ %5643, %5671 ]
  %5679 = phi float [ %6078, %6072 ], [ %5644, %5671 ]
  %5680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5681 = extractvalue %dx.types.CBufRet.i32 %5680, 0
  %5682 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5655, i32 %5681, i32 %5673)  ; UMad(a,b,c)
  %5683 = shl i32 %5682, 2
  %5684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5683, i32 undef)  ; BufferLoad(srv,index,wot)
  %5685 = extractvalue %dx.types.ResRet.i32 %5684, 0
  %5686 = shl i32 %5673, 5
  %5687 = sub nsw i32 %5665, %5686
  %5688 = call i32 @dx.op.binary.i32(i32 37, i32 %5687, i32 0)  ; IMax(a,b)
  %5689 = call i32 @dx.op.binary.i32(i32 38, i32 %5688, i32 31)  ; IMin(a,b)
  %5690 = sub nsw i32 1, %5665
  %5691 = add nsw i32 %5690, %5666
  %5692 = call i32 @dx.op.binary.i32(i32 37, i32 %5691, i32 0)  ; IMax(a,b)
  %5693 = call i32 @dx.op.binary.i32(i32 38, i32 %5692, i32 32)  ; IMin(a,b)
  %5694 = and i32 %5693, 31
  %5695 = shl i32 -1, %5694
  %5696 = xor i32 %5695, -1
  %5697 = and i32 %5689, 31
  %5698 = shl i32 %5696, %5697
  %5699 = icmp eq i32 %5693, 32
  %5700 = select i1 %5699, i32 -1, i32 %5698
  %5701 = and i32 %5700, %5685
  %5702 = icmp eq i32 %5701, 0
  br i1 %5702, label %6072, label %5703

; <label>:5703                                    ; preds = %5672
  br label %5704

; <label>:5704                                    ; preds = %5784, %5703
  %5705 = phi i32 [ %5716, %5784 ], [ %5701, %5703 ]
  %5706 = phi float [ %5785, %5784 ], [ %5674, %5703 ]
  %5707 = phi float [ %5786, %5784 ], [ %5675, %5703 ]
  %5708 = phi float [ %5787, %5784 ], [ %5676, %5703 ]
  %5709 = phi float [ %5788, %5784 ], [ %5677, %5703 ]
  %5710 = phi float [ %5789, %5784 ], [ %5678, %5703 ]
  %5711 = phi float [ %5790, %5784 ], [ %5679, %5703 ]
  %5712 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5705)  ; FirstbitLo(value)
  %5713 = add i32 %5712, %5686
  %5714 = and i32 %5712, 31
  %5715 = shl i32 1, %5714
  %5716 = xor i32 %5715, %5705
  %5717 = mul i32 %5713, 112
  %5718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5717, i32 undef)  ; BufferLoad(srv,index,wot)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.ResRet.f32 %5718, 1
  %5721 = extractvalue %dx.types.ResRet.f32 %5718, 2
  %5722 = or i32 %5717, 12
  %5723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5722, i32 undef)  ; BufferLoad(srv,index,wot)
  %5724 = extractvalue %dx.types.ResRet.f32 %5723, 0
  %5725 = add i32 %5717, 44
  %5726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5725, i32 undef)  ; BufferLoad(srv,index,wot)
  %5727 = extractvalue %dx.types.ResRet.f32 %5726, 0
  %5728 = add i32 %5717, 48
  %5729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5728, i32 undef)  ; BufferLoad(srv,index,wot)
  %5730 = extractvalue %dx.types.ResRet.f32 %5729, 0
  %5731 = extractvalue %dx.types.ResRet.f32 %5729, 1
  %5732 = extractvalue %dx.types.ResRet.f32 %5729, 2
  %5733 = add i32 %5717, 80
  %5734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5733, i32 undef)  ; BufferLoad(srv,index,wot)
  %5735 = extractvalue %dx.types.ResRet.f32 %5734, 1
  %5736 = extractvalue %dx.types.ResRet.f32 %5734, 2
  %5737 = call float @dx.op.dot3.f32(i32 55, float %5719, float %5720, float %5721, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5738 = select i1 %176, float %5735, float %5719
  %5739 = select i1 %176, float %5737, float %5720
  %5740 = select i1 %176, float %5736, float %5721
  %5741 = fsub fast float %5730, %134
  %5742 = fsub fast float %5731, %135
  %5743 = fsub fast float %5732, %136
  %5744 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5743, float %5741, float %5742, float %5743)  ; Dot3(ax,ay,az,bx,by,bz)
  %5745 = call float @dx.op.unary.f32(i32 24, float %5744)  ; Sqrt(value)
  %5746 = fdiv fast float 1.000000e+00, %5745
  %5747 = fmul fast float %5746, %5741
  %5748 = fmul fast float %5746, %5742
  %5749 = fmul fast float %5746, %5743
  %5750 = fadd fast float %5745, %5724
  %5751 = fdiv fast float 1.000000e+00, %5750
  %5752 = fmul float %5727, %5751
  %5753 = fmul float %5752, %5752
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = and i32 %5715, %5701
  %5756 = icmp eq i32 %5755, 0
  br i1 %5756, label %5779, label %5757, !dx.controlflow.hints !76

; <label>:5757                                    ; preds = %5704
  %5758 = lshr i32 %5649, 5
  %5759 = lshr i32 %5650, 5
  %5760 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5758, i32 %5759, i32 %5713, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5761 = extractvalue %dx.types.ResRet.i32 %5760, 0
  %5762 = and i32 %5761, 3
  %5763 = icmp eq i32 %5762, 0
  %5764 = select i1 %5763, float 1.000000e+00, float 0.000000e+00
  %5765 = icmp eq i32 %5762, 3
  br i1 %5765, label %5766, label %5779

; <label>:5766                                    ; preds = %5757
  %5767 = lshr i32 %5761, 10
  %5768 = and i32 %5767, 8160
  %5769 = and i32 %5650, 31
  %5770 = or i32 %5768, %5769
  %5771 = lshr i32 %5761, 1
  %5772 = and i32 %5771, 16352
  %5773 = and i32 %5649, 31
  %5774 = or i32 %5772, %5773
  %5775 = lshr i32 %5761, 23
  %5776 = and i32 %5775, 255
  %5777 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5774, i32 %5770, i32 %5776, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5778 = extractvalue %dx.types.ResRet.f32 %5777, 0
  br label %5779

; <label>:5779                                    ; preds = %5766, %5757, %5704
  %5780 = phi float [ %5778, %5766 ], [ %5764, %5757 ], [ 0.000000e+00, %5704 ]
  %5781 = call float @dx.op.binary.f32(i32 36, float %5780, float %5780)  ; FMin(a,b)
  %5782 = call float @dx.op.binary.f32(i32 36, float %5780, float %5781)  ; FMin(a,b)
  %5783 = fcmp fast ogt float %5782, 0.000000e+00
  br i1 %5783, label %5792, label %5784, !dx.controlflow.hints !77

; <label>:5784                                    ; preds = %6028, %5779
  %5785 = phi float [ %5706, %5779 ], [ %6068, %6028 ]
  %5786 = phi float [ %5707, %5779 ], [ %6069, %6028 ]
  %5787 = phi float [ %5708, %5779 ], [ %6070, %6028 ]
  %5788 = phi float [ %5709, %5779 ], [ %6062, %6028 ]
  %5789 = phi float [ %5710, %5779 ], [ %6063, %6028 ]
  %5790 = phi float [ %5711, %5779 ], [ %6064, %6028 ]
  %5791 = icmp eq i32 %5705, %5715
  br i1 %5791, label %6071, label %5704

; <label>:5792                                    ; preds = %5779
  %5793 = fmul fast float %5780, %5738
  %5794 = fmul fast float %5780, %5739
  %5795 = fmul fast float %5780, %5740
  %5796 = fsub fast float %5732, %4849
  %5797 = fcmp fast ogt float %5796, 0.000000e+00
  %5798 = fsub fast float %136, %4849
  %5799 = fcmp fast ogt float %5798, 0.000000e+00
  %5800 = xor i1 %5799, %5797
  %5801 = fsub fast float %4849, %5732
  %5802 = fmul fast float %5801, 2.000000e+00
  %5803 = fadd fast float %5802, %5732
  %5804 = select i1 %5800, float %5732, float %5803
  %5805 = fsub fast float %5804, %136
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5805, float %5741, float %5742, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.unary.f32(i32 25, float %5806)  ; Rsqrt(value)
  %5808 = fmul fast float %5807, %5741
  %5809 = fmul fast float %5807, %5742
  %5810 = fmul fast float %5807, %5805
  %5811 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4857)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5808, float %5809, float %5810)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fdiv fast float 1.000000e+00, %5812
  %5814 = fmul fast float %5813, %5811
  %5815 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5798, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = fcmp fast ogt float %5815, 0.000000e+00
  %5817 = fcmp fast olt float %5815, 0.000000e+00
  %5818 = zext i1 %5816 to i32
  %5819 = zext i1 %5817 to i32
  %5820 = sub nsw i32 %5818, %5819
  %5821 = sitofp i32 %5820 to float
  %5822 = fsub fast float %5804, %4849
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5741, float %5742, float %5822, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = fcmp fast ogt float %5823, 0.000000e+00
  %5825 = fcmp fast olt float %5823, 0.000000e+00
  %5826 = zext i1 %5824 to i32
  %5827 = zext i1 %5825 to i32
  %5828 = sub nsw i32 %5826, %5827
  %5829 = sitofp i32 %5828 to float
  %5830 = fcmp fast une float %5821, %5829
  br i1 %5830, label %5831, label %5841

; <label>:5831                                    ; preds = %5792
  %5832 = fmul fast float %5814, %5810
  %5833 = fmul fast float %5814, %5809
  %5834 = fmul fast float %5814, %5808
  %5835 = fmul fast float %5834, %5834
  %5836 = fmul fast float %5833, %5833
  %5837 = fadd fast float %5835, %5836
  %5838 = fmul fast float %5832, %5832
  %5839 = fadd fast float %5837, %5838
  %5840 = call float @dx.op.unary.f32(i32 24, float %5839)  ; Sqrt(value)
  br label %5853

; <label>:5841                                    ; preds = %5792
  %5842 = icmp slt i32 %5820, 0
  br i1 %5842, label %5843, label %5853

; <label>:5843                                    ; preds = %5841
  %5844 = fsub fast float %134, %5730
  %5845 = fsub fast float %135, %5731
  %5846 = fsub fast float %136, %5804
  %5847 = fmul fast float %5844, %5844
  %5848 = fmul fast float %5845, %5845
  %5849 = fadd fast float %5847, %5848
  %5850 = fmul fast float %5846, %5846
  %5851 = fadd fast float %5849, %5850
  %5852 = call float @dx.op.unary.f32(i32 24, float %5851)  ; Sqrt(value)
  br label %5853

; <label>:5853                                    ; preds = %5843, %5841, %5831
  %5854 = phi float [ %5840, %5831 ], [ %5852, %5843 ], [ 0.000000e+00, %5841 ]
  %5855 = and i1 %5799, %5797
  %5856 = fsub fast float -0.000000e+00, %5854
  %5857 = select i1 %5855, float -0.000000e+00, float %5856
  %5858 = fmul fast float %4850, 0x3FF7154760000000
  %5859 = fmul fast float %5858, %5857
  %5860 = fmul fast float %4851, 0x3FF7154760000000
  %5861 = fmul fast float %5860, %5857
  %5862 = fmul fast float %4852, 0x3FF7154760000000
  %5863 = fmul fast float %5862, %5857
  %5864 = call float @dx.op.unary.f32(i32 21, float %5859)  ; Exp(value)
  %5865 = call float @dx.op.unary.f32(i32 21, float %5861)  ; Exp(value)
  %5866 = call float @dx.op.unary.f32(i32 21, float %5863)  ; Exp(value)
  %5867 = call float @dx.op.unary.f32(i32 7, float %5864)  ; Saturate(value)
  %5868 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5869 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5870 = fmul fast float %5793, %5867
  %5871 = fmul fast float %5794, %5868
  %5872 = fmul fast float %5795, %5869
  %5873 = fsub fast float %5747, %5049
  %5874 = fsub fast float %5748, %5048
  %5875 = fsub fast float %5749, %5047
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5874, float %5875, float %5873, float %5874, float %5875)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = call float @dx.op.unary.f32(i32 25, float %5876)  ; Rsqrt(value)
  %5878 = fmul fast float %5877, %5873
  %5879 = fmul fast float %5877, %5874
  %5880 = fmul fast float %5877, %5875
  %5881 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %5056, float %5057, float %5058)  ; Dot3(ax,ay,az,bx,by,bz)
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5046, float %5045, float %5044, float %5878, float %5879, float %5880)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5884 = fmul fast float %5883, %5754
  %5885 = fmul fast float %5883, %5883
  %5886 = fmul fast float %5885, %5407
  %5887 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  %5888 = fmul fast float %5884, %5887
  %5889 = bitcast float %5744 to i32
  %5890 = ashr i32 %5889, 1
  %5891 = sub nsw i32 1597463007, %5890
  %5892 = bitcast i32 %5891 to float
  %5893 = fmul fast float %5892, %5741
  %5894 = fmul fast float %5892, %5742
  %5895 = fmul fast float %5892, %5743
  %5896 = fsub fast float %5893, %5049
  %5897 = fsub fast float %5894, %5048
  %5898 = fsub fast float %5895, %5047
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5897, float %5898, float %5896, float %5897, float %5898)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = call float @dx.op.unary.f32(i32 25, float %5899)  ; Rsqrt(value)
  %5901 = fmul fast float %5896, %5900
  %5902 = fmul fast float %5897, %5900
  %5903 = fmul fast float %5898, %5900
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5056, float %5057, float %5058, float %5901, float %5902, float %5903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = fmul fast float %5904, %5904
  %5906 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5907 = fsub fast float 1.000000e+00, %5059
  %5908 = call float @dx.op.binary.f32(i32 35, float %5907, float 0x3F847AE140000000)  ; FMax(a,b)
  %5909 = fmul fast float %5908, %5908
  %5910 = fmul fast float %5909, %5909
  %5911 = fsub fast float 1.000000e+00, %5910
  %5912 = fmul fast float %5063, %5063
  %5913 = fmul fast float %5912, %5911
  %5914 = fadd fast float %5913, %5910
  %5915 = bitcast float %5914 to i32
  %5916 = ashr i32 %5915, 1
  %5917 = add nsw i32 %5916, 532487669
  %5918 = bitcast i32 %5917 to float
  %5919 = fadd fast float %5918, %5063
  %5920 = fmul fast float %5910, %5905
  %5921 = fsub fast float 1.000000e+00, %5905
  %5922 = fadd fast float %5921, %5920
  %5923 = fmul fast float %5906, %5906
  %5924 = fmul fast float %5923, %5911
  %5925 = fadd fast float %5924, %5910
  %5926 = bitcast float %5925 to i32
  %5927 = ashr i32 %5926, 1
  %5928 = add nsw i32 %5927, 532487669
  %5929 = bitcast i32 %5928 to float
  %5930 = fadd fast float %5929, %5906
  %5931 = fmul fast float %5922, %5922
  %5932 = fmul fast float %5931, %5919
  %5933 = fmul fast float %5932, %5930
  %5934 = fdiv fast float 1.000000e+00, %5933
  %5935 = bitcast float %5910 to i32
  %5936 = sitofp i32 %5935 to float
  %5937 = fmul fast float %5936, 0x3FE7F73180000000
  %5938 = fadd fast float %5937, 0x41AFE27C40000000
  %5939 = fptosi float %5938 to i32
  %5940 = bitcast i32 %5939 to float
  %5941 = fmul fast float %5727, 0x3FD80E9D60000000
  %5942 = fmul fast float %5941, %5892
  %5943 = fadd fast float %5940, %5942
  %5944 = bitcast float %5943 to i32
  %5945 = sub nsw i32 2129859010, %5944
  %5946 = bitcast i32 %5945 to float
  %5947 = fmul fast float %5910, %5934
  %5948 = fmul fast float %5947, %5940
  %5949 = fmul fast float %5948, %5946
  %5950 = call float @dx.op.unary.f32(i32 6, float %5882)  ; FAbs(value)
  %5951 = fsub fast float 1.000000e+00, %5950
  %5952 = bitcast float %5951 to i32
  %5953 = sitofp i32 %5952 to float
  %5954 = fmul fast float %5953, 5.000000e+00
  %5955 = fadd fast float %5954, 0xC1EFBF8940000000
  %5956 = fptosi float %5955 to i32
  %5957 = bitcast i32 %5956 to float
  %5958 = fsub fast float 1.000000e+00, %5053
  %5959 = fsub fast float 1.000000e+00, %5054
  %5960 = fsub fast float 1.000000e+00, %5061
  %5961 = fmul fast float %5957, %5958
  %5962 = fmul fast float %5957, %5959
  %5963 = fmul fast float %5957, %5960
  %5964 = fadd fast float %5961, %5053
  %5965 = fadd fast float %5962, %5054
  %5966 = fadd fast float %5963, %5061
  br i1 %5322, label %5967, label %5990

; <label>:5967                                    ; preds = %5853
  %5968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4448, float %5950, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.ResRet.f32 %5968, 1
  %5971 = extractvalue %dx.types.ResRet.f32 %5968, 2
  %5972 = fadd fast float %5969, -5.000000e-01
  %5973 = fadd fast float %5970, -5.000000e-01
  %5974 = fadd fast float %5971, -5.000000e-01
  %5975 = fmul fast float %5053, 4.000000e+00
  %5976 = fmul fast float %5975, %5958
  %5977 = fmul fast float %5976, %5972
  %5978 = fmul fast float %5054, 4.000000e+00
  %5979 = fmul fast float %5978, %5959
  %5980 = fmul fast float %5979, %5973
  %5981 = fmul fast float %5061, 4.000000e+00
  %5982 = fmul fast float %5981, %5960
  %5983 = fmul fast float %5982, %5974
  %5984 = fadd fast float %5977, %5964
  %5985 = fadd fast float %5980, %5965
  %5986 = fadd fast float %5983, %5966
  %5987 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5988 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  br label %5990

; <label>:5990                                    ; preds = %5967, %5853
  %5991 = phi float [ %5987, %5967 ], [ %5964, %5853 ]
  %5992 = phi float [ %5988, %5967 ], [ %5965, %5853 ]
  %5993 = phi float [ %5989, %5967 ], [ %5966, %5853 ]
  %5994 = fmul fast float %5881, 9.843750e-01
  %5995 = fadd fast float %5994, 7.812500e-03
  %5996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5995, float %5312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5997 = extractvalue %dx.types.ResRet.f32 %5996, 2
  %5998 = extractvalue %dx.types.ResRet.f32 %5996, 3
  %5999 = fmul fast float %5997, %5053
  %6000 = fmul fast float %5997, %5054
  %6001 = fmul fast float %5997, %5061
  %6002 = fadd fast float %5999, %5998
  %6003 = fadd fast float %6000, %5998
  %6004 = fadd fast float %6001, %5998
  br i1 %5322, label %6005, label %6028

; <label>:6005                                    ; preds = %5990
  %6006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4448, float %5881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6007 = extractvalue %dx.types.ResRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.ResRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.ResRet.f32 %6006, 2
  %6010 = fadd fast float %6007, -5.000000e-01
  %6011 = fadd fast float %6008, -5.000000e-01
  %6012 = fadd fast float %6009, -5.000000e-01
  %6013 = fmul fast float %5053, 4.000000e+00
  %6014 = fmul fast float %6013, %5958
  %6015 = fmul fast float %6014, %6010
  %6016 = fmul fast float %5054, 4.000000e+00
  %6017 = fmul fast float %6016, %5959
  %6018 = fmul fast float %6017, %6011
  %6019 = fmul fast float %5061, 4.000000e+00
  %6020 = fmul fast float %6019, %5960
  %6021 = fmul fast float %6020, %6012
  %6022 = fadd fast float %6015, %6002
  %6023 = fadd fast float %6018, %6003
  %6024 = fadd fast float %6021, %6004
  %6025 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  %6026 = call float @dx.op.unary.f32(i32 7, float %6023)  ; Saturate(value)
  %6027 = call float @dx.op.unary.f32(i32 7, float %6024)  ; Saturate(value)
  br label %6028

; <label>:6028                                    ; preds = %6005, %5990
  %6029 = phi float [ %6025, %6005 ], [ %6002, %5990 ]
  %6030 = phi float [ %6026, %6005 ], [ %6003, %5990 ]
  %6031 = phi float [ %6027, %6005 ], [ %6004, %5990 ]
  %6032 = call float @dx.op.binary.f32(i32 35, float %6030, float %6031)  ; FMax(a,b)
  %6033 = call float @dx.op.binary.f32(i32 35, float %6029, float %6032)  ; FMax(a,b)
  %6034 = fsub fast float 1.000000e+00, %6033
  %6035 = fmul fast float %5991, %5949
  %6036 = fmul fast float %5992, %5949
  %6037 = fmul fast float %5993, %5949
  %6038 = fsub fast float 1.000000e+00, %5882
  %6039 = bitcast float %6038 to i32
  %6040 = sitofp i32 %6039 to float
  %6041 = fmul fast float %6040, 5.000000e+00
  %6042 = fadd fast float %6041, 0xC1EFBF8940000000
  %6043 = fptosi float %6042 to i32
  %6044 = bitcast i32 %6043 to float
  %6045 = fmul fast float %6044, %4449
  %6046 = fmul fast float %6034, %6045
  %6047 = fmul fast float %6046, %5372
  %6048 = fmul fast float %6046, %5373
  %6049 = fmul fast float %6046, %5374
  %6050 = fadd fast float %6047, %6035
  %6051 = fadd fast float %6048, %6036
  %6052 = fadd fast float %6049, %6037
  %6053 = fmul fast float %5870, %4445
  %6054 = fmul fast float %6053, %5888
  %6055 = fmul fast float %6054, %6034
  %6056 = fmul fast float %5871, %4445
  %6057 = fmul fast float %6056, %5888
  %6058 = fmul fast float %6057, %6034
  %6059 = fmul fast float %5872, %4445
  %6060 = fmul fast float %6059, %5888
  %6061 = fmul fast float %6060, %6034
  %6062 = fadd fast float %6055, %5709
  %6063 = fadd fast float %6058, %5710
  %6064 = fadd fast float %6061, %5711
  %6065 = fmul fast float %6054, %6050
  %6066 = fmul fast float %6057, %6051
  %6067 = fmul fast float %6060, %6052
  %6068 = fadd fast float %6065, %5706
  %6069 = fadd fast float %6066, %5707
  %6070 = fadd fast float %6067, %5708
  br label %5784

; <label>:6071                                    ; preds = %5784
  br label %6072

; <label>:6072                                    ; preds = %6071, %5672
  %6073 = phi float [ %5674, %5672 ], [ %5785, %6071 ]
  %6074 = phi float [ %5675, %5672 ], [ %5786, %6071 ]
  %6075 = phi float [ %5676, %5672 ], [ %5787, %6071 ]
  %6076 = phi float [ %5677, %5672 ], [ %5788, %6071 ]
  %6077 = phi float [ %5678, %5672 ], [ %5789, %6071 ]
  %6078 = phi float [ %5679, %5672 ], [ %5790, %6071 ]
  %6079 = add i32 %5673, 1
  %6080 = icmp ugt i32 %6079, %5669
  br i1 %6080, label %6081, label %5672

; <label>:6081                                    ; preds = %6072
  br label %6082

; <label>:6082                                    ; preds = %6081, %5648, %5638
  %6083 = phi float [ %5639, %5638 ], [ %5639, %5648 ], [ %6073, %6081 ]
  %6084 = phi float [ %5640, %5638 ], [ %5640, %5648 ], [ %6074, %6081 ]
  %6085 = phi float [ %5641, %5638 ], [ %5641, %5648 ], [ %6075, %6081 ]
  %6086 = phi float [ %5642, %5638 ], [ %5642, %5648 ], [ %6076, %6081 ]
  %6087 = phi float [ %5643, %5638 ], [ %5643, %5648 ], [ %6077, %6081 ]
  %6088 = phi float [ %5644, %5638 ], [ %5644, %5648 ], [ %6078, %6081 ]
  %6089 = call float @dx.op.unary.f32(i32 24, float %5050)  ; Sqrt(value)
  %6090 = call float @dx.op.unary.f32(i32 24, float %5051)  ; Sqrt(value)
  %6091 = call float @dx.op.unary.f32(i32 24, float %5052)  ; Sqrt(value)
  %6092 = fmul fast float %6089, %6086
  %6093 = fmul fast float %6090, %6087
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  br i1 %176, label %6096, label %6116

; <label>:6096                                    ; preds = %6082
  %6097 = fadd fast float %6088, %4451
  %6098 = fmul fast float %6097, %4452
  %6099 = fsub fast float 1.000000e+00, %4452
  %6100 = call float @dx.op.unary.f32(i32 7, float %6099)  ; Saturate(value)
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 3
  %6103 = fmul fast float %6102, %6100
  %6104 = fadd fast float %6103, %6098
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 0
  %6107 = fmul fast float %6106, %5378
  %6108 = fsub fast float %6104, %6107
  %6109 = fadd fast float %6093, %6092
  %6110 = fmul fast float %6095, %6109
  %6111 = extractvalue %dx.types.CBufRet.f32 %6101, 1
  %6112 = fsub fast float %6108, %6111
  %6113 = extractvalue %dx.types.CBufRet.f32 %6101, 2
  %6114 = fmul fast float %6112, %6113
  %6115 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  br label %6132

; <label>:6116                                    ; preds = %6082
  %6117 = fmul fast float %6091, %6088
  %6118 = fmul fast float %6095, %6092
  %6119 = fmul fast float %6095, %6093
  %6120 = fmul fast float %6117, %6095
  %6121 = add i32 %35, 356
  %6122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6121, i32 undef)  ; BufferLoad(srv,index,wot)
  %6123 = extractvalue %dx.types.ResRet.i32 %6122, 0
  %6124 = and i32 %6123, 32
  %6125 = icmp eq i32 %6124, 0
  br i1 %6125, label %6132, label %6126

; <label>:6126                                    ; preds = %6116
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = fmul fast float %6128, 0x3FE99999A0000000
  %6130 = fadd fast float %6128, %6118
  %6131 = fadd fast float %6129, %6120
  br label %6132

; <label>:6132                                    ; preds = %6126, %6116, %6096
  %6133 = phi float [ %6110, %6096 ], [ %6130, %6126 ], [ %6118, %6116 ]
  %6134 = phi float [ %6115, %6096 ], [ %6119, %6126 ], [ %6119, %6116 ]
  %6135 = phi float [ 1.000000e+00, %6096 ], [ %6131, %6126 ], [ %6120, %6116 ]
  %6136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.f32 %6136, 0
  %6138 = fmul fast float %6137, %6084
  %6139 = fmul fast float %6137, %6085
  %6140 = fadd fast float %6084, %6083
  %6141 = select i1 %176, float %6140, float %6083
  %6142 = fmul float %6141, %6137
  %6143 = select i1 %176, float 0.000000e+00, float %6138
  %6144 = select i1 %176, float 0.000000e+00, float %6139
  %6145 = fmul fast float %6133, %6089
  %6146 = fmul fast float %6134, %6090
  %6147 = fmul fast float %6135, %6091
  %6148 = fadd fast float %6142, %6145
  %6149 = fadd fast float %6143, %6146
  %6150 = fadd fast float %6144, %6147
  %6151 = select i1 %176, float %6134, float %6149
  %6152 = select i1 %176, float %6135, float %6150
  %6153 = call float @dx.op.binary.f32(i32 36, float %6148, float 3.225500e+04)  ; FMin(a,b)
  %6154 = call float @dx.op.binary.f32(i32 36, float %6151, float 3.225500e+04)  ; FMin(a,b)
  %6155 = call float @dx.op.binary.f32(i32 36, float %6152, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6153)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6154)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6155)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

