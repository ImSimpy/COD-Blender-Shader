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
; shader hash: d0f3e72a3084a5ba95f39b2b42e0c00f
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
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     u32     2darray     T10     t11,space2     1
;                                   texture     f32     2darray     T11     t10,space2     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture    byte         r/o     T13     t49,space1     1
;                                   texture    byte         r/o     T14     t50,space1     1
;                                   texture    byte         r/o     T15     t51,space1     1
;                                   texture    byte         r/o     T16     t52,space1     1
;                                   texture    byte         r/o     T17     t16,space1     1
;                                   texture    byte         r/o     T18     t17,space1     1
;                                   texture     f32          2d     T19     t37,space2     1
;                                   texture     f32          2d     T20             t0     1
;                                   texture     f32     2darray     T21     t49,space2     1
;                                   texture     f32          2d     T22     t58,space2     1
;                                   texture     f32          2d     T23     t59,space2     1
;                                   texture     f32          2d     T24     t60,space2     1
;                                   texture    byte         r/o     T25     t45,space1     1
;                                   texture    byte         r/o     T26     t46,space1     1
;                                   texture    byte         r/o     T27     t47,space1     1
;                                   texture    byte         r/o     T28     t48,space1     1
;                                   texture     f32          2d     T29     t57,space2     1
;                                   texture    byte         r/o     T30     t69,space1     1
;                                   texture     f32     2darray     T31     t35,space2     1
;                                   texture     f32          2d     T32     t34,space2     1
;                                   texture     f32          3d     T33     t31,space2     1
;                                   texture    byte         r/o     T34     t10,space1     1
;                                   texture    byte         r/o     T35     t68,space1     1
;                                   texture     f32          2d     T36      t0,space2     1
;                                   texture    byte         r/o     T37     t11,space1     1
;                                   texture    byte         r/o     T38     t13,space1     1
;                                   texture     f32          2d     T39     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %78
  %86 = fmul fast float %84, %79
  %87 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %88 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %89 = bitcast float %88 to i32
  %90 = ashr i32 %89, 1
  %91 = sub nsw i32 1597250115, %90
  %92 = bitcast i32 %91 to float
  %93 = fmul fast float %70, %87
  %94 = fmul fast float %93, %92
  %95 = fmul fast float %71, %87
  %96 = fmul fast float %95, %92
  %97 = fmul fast float %72, %87
  %98 = fmul fast float %97, %92
  %99 = fmul fast float %71, %68
  %100 = fmul fast float %72, %67
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %72, %66
  %103 = fmul fast float %70, %68
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %70, %67
  %106 = fmul fast float %71, %66
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %101, %69
  %109 = fmul fast float %104, %69
  %110 = fmul fast float %107, %69
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %85, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %86, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %118, %121
  %125 = fmul fast float %118, %122
  %126 = fmul fast float %118, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %119, %128
  %132 = fmul fast float %119, %129
  %133 = fmul fast float %119, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fadd fast float %131, %135
  %139 = fadd fast float %138, %124
  %140 = fadd fast float %132, %136
  %141 = fadd fast float %140, %125
  %142 = fadd fast float %133, %137
  %143 = fadd fast float %142, %126
  %144 = fmul fast float %139, %80
  %145 = fmul fast float %141, %80
  %146 = fmul fast float %143, %80
  %147 = add i32 %45, 360
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = extractvalue %dx.types.ResRet.i32 %148, 1
  %151 = extractvalue %dx.types.ResRet.i32 %148, 2
  %152 = extractvalue %dx.types.ResRet.i32 %148, 3
  %153 = bitcast i32 %149 to float
  %154 = bitcast i32 %150 to float
  %155 = bitcast i32 %151 to float
  %156 = bitcast i32 %152 to float
  %157 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = call float @dx.op.unary.f32(i32 25, float %157)  ; Rsqrt(value)
  %159 = fmul fast float %158, %94
  %160 = fmul fast float %158, %96
  %161 = fmul fast float %158, %98
  %162 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %163 = call float @dx.op.unary.f32(i32 25, float %162)  ; Rsqrt(value)
  %164 = fmul fast float %163, %144
  %165 = fmul fast float %163, %145
  %166 = fmul fast float %163, %146
  %167 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %159, float %160, float %161)  ; Dot3(ax,ay,az,bx,by,bz)
  %168 = fmul fast float %167, %167
  %169 = fmul fast float %168, %155
  %170 = fadd fast float %169, %156
  %171 = call float @dx.op.unary.f32(i32 7, float %170)  ; Saturate(value)
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 3
  %174 = fmul fast float %173, %162
  %175 = fsub fast float %153, %174
  %176 = fmul fast float %175, %154
  %177 = call float @dx.op.unary.f32(i32 7, float %176)  ; Saturate(value)
  %178 = fmul fast float %177, %171
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 2
  %181 = extractvalue %dx.types.CBufRet.f32 %179, 3
  %182 = fmul fast float %180, %85
  %183 = fmul fast float %181, %86
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 114688
  %187 = icmp ne i32 %186, 0
  %188 = select i1 %187, float %182, float 0.000000e+00
  %189 = select i1 %187, float %183, float 0.000000e+00
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = fmul fast float %191, 2.550000e+02
  %193 = fptoui float %192 to i32
  %194 = select i1 %187, i32 %193, i32 0
  %195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %197 = extractvalue %dx.types.CBufRet.i32 %196, 3
  %198 = and i32 %197, 3
  %199 = icmp ne i32 %198, 0
  %200 = and i32 %197, 4
  %201 = icmp ne i32 %200, 0
  %202 = and i1 %199, %201
  br i1 %202, label %203, label %214

; <label>:203                                     ; preds = %0
  %204 = extractvalue %dx.types.CBufRet.f32 %195, 3
  %205 = fmul fast float %204, %86
  %206 = extractvalue %dx.types.CBufRet.f32 %195, 2
  %207 = fmul fast float %206, %85
  %208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %207, float %205, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = fsub fast float 1.000000e+00, %209
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 0
  %213 = fcmp fast olt float %210, %212
  br label %217

; <label>:214                                     ; preds = %0
  %215 = icmp eq i32 %200, 0
  %216 = and i1 %199, %215
  br label %217

; <label>:217                                     ; preds = %214, %203
  %218 = phi i1 [ %213, %203 ], [ %216, %214 ]
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %221 = fmul fast float %220, 0x3FE3C6EF40000000
  %222 = frem fast float %85, 2.560000e+02
  %223 = frem fast float %86, 2.560000e+02
  %224 = fptoui float %222 to i32
  %225 = fptoui float %223 to i32
  %226 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %224, i32 %225, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %227 = extractvalue %dx.types.ResRet.f32 %226, 0
  %228 = extractvalue %dx.types.ResRet.f32 %226, 1
  %229 = fadd fast float %227, %221
  %230 = fadd fast float %228, %221
  %231 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %232 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %233 = add i32 %45, 156
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = shl i32 %235, 4
  %237 = and i32 %236, 32752
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %235, 7
  %240 = and i32 %239, 32752
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %235, 22
  %243 = shl nuw nsw i32 %242, 5
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = add i32 %45, 216
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %247, 8
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = lshr i32 %247, 16
  %256 = and i32 %255, 255
  %257 = uitofp i32 %256 to float
  %258 = fmul fast float %257, 0x3F70101020000000
  %259 = add i32 %45, 36
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 65535
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %261, 16
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = add i32 %45, 288
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = fmul fast float %270, 0x3F50624DE0000000
  %274 = fmul fast float %272, 0x3F50624DE0000000
  %275 = add i32 %45, 172
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = shl i32 %277, 4
  %279 = and i32 %278, 32752
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %277, 7
  %282 = and i32 %281, 32752
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %277, 22
  %285 = shl nuw nsw i32 %284, 5
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = add i32 %45, 232
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %289, 8
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = lshr i32 %289, 16
  %298 = and i32 %297, 255
  %299 = uitofp i32 %298 to float
  %300 = fmul fast float %299, 0x3F70101020000000
  %301 = add i32 %45, 52
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %45, 304
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = fmul fast float %312, 0x3F50624DE0000000
  %316 = fmul fast float %314, 0x3F50624DE0000000
  %317 = add i32 %45, 188
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = shl i32 %319, 4
  %321 = and i32 %320, 32752
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %319, 7
  %324 = and i32 %323, 32752
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %319, 22
  %327 = shl nuw nsw i32 %326, 5
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = add i32 %45, 248
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %331, 8
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %331, 16
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = add i32 %45, 68
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = and i32 %345, 65535
  %347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %346)  ; LegacyF16ToF32(value)
  %348 = lshr i32 %345, 16
  %349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %348)  ; LegacyF16ToF32(value)
  %350 = add i32 %45, 320
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = fmul fast float %354, 0x3F50624DE0000000
  %358 = fmul fast float %356, 0x3F50624DE0000000
  %359 = add i32 %45, 204
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = shl i32 %361, 4
  %363 = and i32 %362, 32752
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %361, 7
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %361, 22
  %369 = shl nuw nsw i32 %368, 5
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = add i32 %45, 264
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %373, 8
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = lshr i32 %373, 16
  %382 = and i32 %381, 255
  %383 = uitofp i32 %382 to float
  %384 = fmul fast float %383, 0x3F70101020000000
  %385 = add i32 %45, 84
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 65535
  %389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %388)  ; LegacyF16ToF32(value)
  %390 = lshr i32 %387, 16
  %391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %390)  ; LegacyF16ToF32(value)
  %392 = add i32 %45, 336
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 65535
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %394, 16
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = fmul fast float %396, 0x3F50624DE0000000
  %400 = fmul fast float %398, 0x3F50624DE0000000
  %401 = add i32 %45, 348
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 32
  %405 = icmp eq i32 %404, 0
  %406 = and i32 %403, 64
  %407 = icmp eq i32 %406, 0
  %408 = and i32 %403, 128
  %409 = icmp eq i32 %408, 0
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 2
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %427, label %414

; <label>:414                                     ; preds = %217
  %415 = add i32 %45, 536
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = add i32 %417, 0
  %419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %418, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %419, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = extractvalue %dx.types.ResRet.f32 %420, 1
  %423 = extractvalue %dx.types.ResRet.f32 %420, 2
  %424 = fmul fast float %421, %75
  %425 = fmul fast float %422, %76
  %426 = fmul fast float %423, %77
  br label %427

; <label>:427                                     ; preds = %414, %217
  %428 = phi float [ %77, %217 ], [ %426, %414 ]
  %429 = phi float [ %76, %217 ], [ %425, %414 ]
  %430 = phi float [ %75, %217 ], [ %424, %414 ]
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = and i32 %432, 2
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %454, label %435

; <label>:435                                     ; preds = %427
  %436 = add i32 %45, 44
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = and i32 %438, 1
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %430, float 1.000000e+00
  %442 = add i32 %45, 60
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 1
  %446 = icmp ne i32 %445, 0
  %447 = select i1 %446, float %429, float 1.000000e+00
  %448 = add i32 %45, 76
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = and i32 %450, 1
  %452 = icmp ne i32 %451, 0
  %453 = select i1 %452, float %428, float 1.000000e+00
  br label %454

; <label>:454                                     ; preds = %435, %427
  %455 = phi float [ %428, %427 ], [ %453, %435 ]
  %456 = phi float [ %429, %427 ], [ %447, %435 ]
  %457 = phi float [ %430, %427 ], [ %441, %435 ]
  %458 = lshr i32 %432, 20
  %459 = and i32 %458, 3
  %460 = add nuw nsw i32 %459, 1
  %461 = add i32 %45, 24
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = add i32 %45, 28
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = or i32 %466, %463
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %927, label %469

; <label>:469                                     ; preds = %454
  %470 = and i32 %463, 262144
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %471, float %48, float 1.000000e+00
  %473 = select i1 %471, float %49, float 0.000000e+00
  %474 = select i1 %471, float %50, float 0.000000e+00
  %475 = select i1 %471, float %51, float 1.000000e+00
  %476 = select i1 %471, float %52, float %73
  %477 = select i1 %471, float %53, float %74
  %478 = add i32 %45, 284
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 16
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = fmul fast float %482, 0x3F50624DE0000000
  %484 = add i32 %45, 88
  %485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.i32 %485, 0
  %487 = lshr i32 %486, 16
  %488 = and i32 %487, 255
  %489 = lshr i32 %486, 24
  %490 = add i32 %45, 292
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 65535
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %492, 16
  %496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %495)  ; LegacyF16ToF32(value)
  %497 = add i32 %45, 32
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = lshr i32 %499, 22
  %501 = shl nuw nsw i32 %500, 5
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = shl i32 %499, 4
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 7
  %507 = and i32 %506, 32752
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 3
  %511 = fmul fast float %510, 1.000000e+03
  %512 = fmul fast float %273, %511
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = fadd fast float %513, %263
  %515 = fmul fast float %274, %511
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = fadd fast float %516, %265
  %518 = fmul fast float %483, %511
  %519 = call float @dx.op.unary.f32(i32 22, float %518)  ; Frc(value)
  %520 = fmul fast float %519, 0x401921FB60000000
  %521 = fadd fast float %520, %502
  %522 = call float @dx.op.unary.f32(i32 13, float %521)  ; Sin(value)
  %523 = call float @dx.op.unary.f32(i32 12, float %521)  ; Cos(value)
  %524 = fsub fast float -0.000000e+00, %522
  %525 = fadd fast float %476, -5.000000e-01
  %526 = fadd fast float %477, -5.000000e-01
  %527 = fmul fast float %494, %525
  %528 = fmul fast float %496, %526
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fadd fast float %528, 5.000000e-01
  %531 = fmul fast float %505, %529
  %532 = fmul fast float %508, %530
  %533 = fmul fast float %523, %531
  %534 = call float @dx.op.tertiary.f32(i32 46, float %524, float %532, float %533)  ; FMad(a,b,c)
  %535 = fmul fast float %522, %531
  %536 = call float @dx.op.tertiary.f32(i32 46, float %523, float %532, float %535)  ; FMad(a,b,c)
  %537 = fadd fast float %514, %534
  %538 = fadd fast float %517, %536
  %539 = icmp ugt i32 %488, 1
  %540 = icmp ugt i32 %486, 33554431
  %541 = or i1 %540, %539
  br i1 %541, label %542, label %567

; <label>:542                                     ; preds = %469
  %543 = add i32 %45, 228
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = lshr i32 %545, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = fmul fast float %510, %547
  %549 = call float @dx.op.unary.f32(i32 22, float %548)  ; Frc(value)
  %550 = mul nuw nsw i32 %488, %489
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %549, %551
  %553 = call float @dx.op.unary.f32(i32 27, float %552)  ; Round_ni(value)
  %554 = fptoui float %553 to i32
  %555 = urem i32 %554, %488
  %556 = udiv i32 %554, %489
  %557 = call float @dx.op.unary.f32(i32 22, float %537)  ; Frc(value)
  %558 = call float @dx.op.unary.f32(i32 22, float %538)  ; Frc(value)
  %559 = uitofp i32 %555 to float
  %560 = uitofp i32 %556 to float
  %561 = fadd fast float %557, %559
  %562 = fadd fast float %558, %560
  %563 = uitofp i32 %488 to float
  %564 = uitofp i32 %489 to float
  %565 = fdiv fast float %561, %563
  %566 = fdiv fast float %562, %564
  br label %567

; <label>:567                                     ; preds = %542, %469
  %568 = phi float [ %565, %542 ], [ %537, %469 ]
  %569 = phi float [ %566, %542 ], [ %538, %469 ]
  %570 = and i32 %463, 16
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %768, label %572

; <label>:572                                     ; preds = %567
  %573 = add i32 %45, 424
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = add i32 %575, 0
  %577 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %576, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %578 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %577, %dx.types.Handle %81, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = extractvalue %dx.types.ResRet.f32 %578, 2
  %582 = extractvalue %dx.types.ResRet.f32 %578, 3
  %583 = and i32 %486, 255
  %584 = uitofp i32 %583 to float
  %585 = lshr i32 %486, 8
  %586 = and i32 %585, 255
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %582, %584
  %589 = fadd fast float %588, %587
  %590 = fmul fast float %589, 0x3F70101000000000
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 512
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %603, label %595

; <label>:595                                     ; preds = %572
  %596 = add i32 %45, 504
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = add i32 %598, 0
  %600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %600, %dx.types.Handle %82, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  br label %603

; <label>:603                                     ; preds = %595, %572
  %604 = phi float [ %602, %595 ], [ 1.000000e+00, %572 ]
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = and i32 %606, 33554432
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %715, label %609

; <label>:609                                     ; preds = %603
  %610 = add i32 %45, 224
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = and i32 %612, 65535
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %612, 16
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = add i32 %45, 228
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 65535
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = lshr i32 %623, 24
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %625, 0x3F70101020000000
  %627 = and i32 %623, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = lshr i32 %623, 8
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = lshr i32 %623, 16
  %635 = and i32 %634, 255
  %636 = uitofp i32 %635 to float
  %637 = fmul fast float %636, 0x3F70101020000000
  %638 = add i32 %45, 220
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = lshr i32 %640, 24
  %642 = uitofp i32 %641 to float
  %643 = fmul fast float %642, 0x3F70101020000000
  %644 = and i32 %640, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = lshr i32 %640, 8
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = lshr i32 %640, 16
  %652 = and i32 %651, 255
  %653 = uitofp i32 %652 to float
  %654 = fmul fast float %653, 0x3F70101020000000
  %655 = bitcast float %579 to i32
  %656 = ashr i32 %655, 1
  %657 = sub nsw i32 1597463174, %656
  %658 = bitcast i32 %657 to float
  %659 = fmul fast float %579, 5.000000e-01
  %660 = fmul fast float %658, %658
  %661 = fmul fast float %660, %659
  %662 = fsub fast float 1.500000e+00, %661
  %663 = fmul fast float %658, %579
  %664 = fmul fast float %663, %662
  %665 = bitcast float %580 to i32
  %666 = ashr i32 %665, 1
  %667 = sub nsw i32 1597463174, %666
  %668 = bitcast i32 %667 to float
  %669 = fmul fast float %580, 5.000000e-01
  %670 = fmul fast float %668, %668
  %671 = fmul fast float %670, %669
  %672 = fsub fast float 1.500000e+00, %671
  %673 = fmul fast float %668, %580
  %674 = fmul fast float %673, %672
  %675 = bitcast float %581 to i32
  %676 = ashr i32 %675, 1
  %677 = sub nsw i32 1597463174, %676
  %678 = bitcast i32 %677 to float
  %679 = fmul fast float %581, 5.000000e-01
  %680 = fmul fast float %678, %678
  %681 = fmul fast float %680, %679
  %682 = fsub fast float 1.500000e+00, %681
  %683 = fmul fast float %678, %581
  %684 = fmul fast float %683, %682
  %685 = fsub fast float %664, %646
  %686 = fsub fast float %674, %650
  %687 = fsub fast float %684, %654
  %688 = fmul fast float %685, %614
  %689 = fmul fast float %686, %616
  %690 = fmul fast float %687, %621
  %691 = fadd fast float %688, %629
  %692 = fadd fast float %689, %633
  %693 = fadd fast float %690, %637
  %694 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %695 = call float @dx.op.unary.f32(i32 7, float %692)  ; Saturate(value)
  %696 = call float @dx.op.unary.f32(i32 7, float %693)  ; Saturate(value)
  %697 = fmul fast float %694, %694
  %698 = fmul fast float %695, %695
  %699 = fmul fast float %696, %696
  %700 = fsub fast float %697, %579
  %701 = fsub fast float %698, %580
  %702 = fsub fast float %699, %581
  %703 = fmul fast float %700, %604
  %704 = fmul fast float %701, %604
  %705 = fmul fast float %702, %604
  %706 = fadd fast float %703, %579
  %707 = fadd fast float %704, %580
  %708 = fadd fast float %705, %581
  %709 = fadd fast float %626, %590
  %710 = fsub fast float %709, %643
  %711 = call float @dx.op.unary.f32(i32 7, float %710)  ; Saturate(value)
  %712 = fsub fast float %711, %590
  %713 = fmul fast float %712, %604
  %714 = fadd fast float %713, %590
  br label %768

; <label>:715                                     ; preds = %603
  %716 = and i32 %606, 134217728
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %752, label %718

; <label>:718                                     ; preds = %715
  %719 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %720 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %721 = call float @dx.op.unary.f32(i32 24, float %258)  ; Sqrt(value)
  %722 = fadd fast float %719, -5.000000e-01
  %723 = fadd fast float %720, -5.000000e-01
  %724 = fadd fast float %721, -5.000000e-01
  %725 = fmul fast float %722, %604
  %726 = fmul fast float %723, %604
  %727 = fmul fast float %724, %604
  %728 = fadd fast float %725, 5.000000e-01
  %729 = fadd fast float %726, 5.000000e-01
  %730 = fadd fast float %727, 5.000000e-01
  %731 = call float @dx.op.unary.f32(i32 24, float %579)  ; Sqrt(value)
  %732 = call float @dx.op.unary.f32(i32 24, float %580)  ; Sqrt(value)
  %733 = call float @dx.op.unary.f32(i32 24, float %581)  ; Sqrt(value)
  %734 = fmul fast float %728, 2.000000e+00
  %735 = fsub fast float 1.000000e+00, %734
  %736 = fmul fast float %735, %731
  %737 = fadd fast float %736, %734
  %738 = fmul fast float %737, %731
  %739 = fmul fast float %729, 2.000000e+00
  %740 = fsub fast float 1.000000e+00, %739
  %741 = fmul fast float %740, %732
  %742 = fadd fast float %741, %739
  %743 = fmul fast float %742, %732
  %744 = fmul fast float %730, 2.000000e+00
  %745 = fsub fast float 1.000000e+00, %744
  %746 = fmul fast float %745, %733
  %747 = fadd fast float %746, %744
  %748 = fmul fast float %747, %733
  %749 = fmul fast float %738, %738
  %750 = fmul fast float %743, %743
  %751 = fmul fast float %748, %748
  br label %768

; <label>:752                                     ; preds = %715
  %753 = fmul fast float %250, %250
  %754 = fmul fast float %254, %254
  %755 = fmul fast float %258, %258
  %756 = fadd fast float %753, -1.000000e+00
  %757 = fadd fast float %754, -1.000000e+00
  %758 = fadd fast float %755, -1.000000e+00
  %759 = fmul fast float %604, %756
  %760 = fmul fast float %604, %757
  %761 = fmul fast float %604, %758
  %762 = fadd fast float %759, 1.000000e+00
  %763 = fadd fast float %760, 1.000000e+00
  %764 = fadd fast float %761, 1.000000e+00
  %765 = fmul fast float %762, %579
  %766 = fmul fast float %763, %580
  %767 = fmul fast float %764, %581
  br label %768

; <label>:768                                     ; preds = %752, %718, %609, %567
  %769 = phi float [ %714, %609 ], [ %590, %718 ], [ %590, %752 ], [ 0x3FA23C0BE0000000, %567 ]
  %770 = phi float [ %706, %609 ], [ %749, %718 ], [ %765, %752 ], [ 1.000000e+00, %567 ]
  %771 = phi float [ %707, %609 ], [ %750, %718 ], [ %766, %752 ], [ 1.000000e+00, %567 ]
  %772 = phi float [ %708, %609 ], [ %751, %718 ], [ %767, %752 ], [ 1.000000e+00, %567 ]
  %773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.i32 %773, 1
  %775 = and i32 %774, 1
  %776 = icmp ne i32 %775, 0
  %777 = add i32 %45, 356
  %778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.i32 %778, 0
  %780 = and i32 %779, 32
  %781 = icmp ne i32 %780, 0
  %782 = and i1 %776, %781
  %783 = select i1 %782, float 1.000000e+00, float %770
  %784 = select i1 %782, float 0x3FD3333340000000, float %771
  %785 = select i1 %782, float 0x3FD3333340000000, float %772
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 32
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %862, label %790

; <label>:790                                     ; preds = %768
  %791 = add i32 %45, 92
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = add i32 %45, 440
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = add i32 %796, 0
  %798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %797, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %799 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %798, %dx.types.Handle %81, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %800 = extractvalue %dx.types.ResRet.f32 %799, 0
  %801 = extractvalue %dx.types.ResRet.f32 %799, 1
  %802 = extractvalue %dx.types.ResRet.f32 %799, 2
  %803 = extractvalue %dx.types.ResRet.f32 %799, 3
  %804 = and i32 %793, 255
  %805 = uitofp i32 %804 to float
  %806 = lshr i32 %793, 8
  %807 = and i32 %806, 255
  %808 = uitofp i32 %807 to float
  %809 = lshr i32 %793, 16
  %810 = and i32 %809, 255
  %811 = uitofp i32 %810 to float
  %812 = fmul fast float %811, 0x3F70101000000000
  %813 = fmul fast float %800, %805
  %814 = fadd fast float %813, %808
  %815 = fmul fast float %814, 0x3F70101000000000
  %816 = fadd fast float %801, -5.000000e-01
  %817 = fadd fast float %803, -5.000000e-01
  %818 = fmul fast float %816, %812
  %819 = fmul fast float %817, %812
  %820 = fadd fast float %818, 5.000000e-01
  %821 = fadd fast float %819, 5.000000e-01
  %822 = fmul fast float %820, 2.000000e+00
  %823 = fadd fast float %822, -1.000000e+00
  %824 = fmul fast float %821, 2.000000e+00
  %825 = fadd fast float %824, -1.000000e+00
  %826 = fadd fast float %823, %825
  %827 = fmul fast float %826, 5.000000e-01
  %828 = fsub fast float %823, %825
  %829 = fmul fast float %828, 5.000000e-01
  %830 = call float @dx.op.unary.f32(i32 6, float %827)  ; FAbs(value)
  %831 = fsub fast float 1.000000e+00, %830
  %832 = call float @dx.op.unary.f32(i32 6, float %829)  ; FAbs(value)
  %833 = fsub fast float %831, %832
  %834 = call float @dx.op.dot3.f32(i32 55, float %827, float %829, float %833, float %827, float %829, float %833)  ; Dot3(ax,ay,az,bx,by,bz)
  %835 = call float @dx.op.unary.f32(i32 25, float %834)  ; Rsqrt(value)
  %836 = fmul fast float %827, %835
  %837 = fmul fast float %829, %835
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 67108864
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %858, label %842

; <label>:842                                     ; preds = %790
  %843 = add i32 %45, 280
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = and i32 %845, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 65535
  %851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %850)  ; LegacyF16ToF32(value)
  %852 = lshr i32 %845, 16
  %853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %852)  ; LegacyF16ToF32(value)
  %854 = fsub fast float %815, %853
  %855 = fmul fast float %854, %847
  %856 = fadd fast float %855, %851
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  br label %858

; <label>:858                                     ; preds = %842, %790
  %859 = phi float [ %857, %842 ], [ %815, %790 ]
  %860 = call float @dx.op.dot2.f32(i32 54, float %836, float %837, float %472, float %473)  ; Dot2(ax,ay,bx,by)
  %861 = call float @dx.op.dot2.f32(i32 54, float %836, float %837, float %474, float %475)  ; Dot2(ax,ay,bx,by)
  br label %862

; <label>:862                                     ; preds = %858, %768
  %863 = phi float [ %859, %858 ], [ 0x3FD6666660000000, %768 ]
  %864 = phi float [ %860, %858 ], [ 0.000000e+00, %768 ]
  %865 = phi float [ %861, %858 ], [ 0.000000e+00, %768 ]
  %866 = phi float [ %802, %858 ], [ 1.000000e+00, %768 ]
  %867 = add i32 %45, 160
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = lshr i32 %869, 22
  %871 = shl nuw nsw i32 %870, 5
  %872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %871)  ; LegacyF16ToF32(value)
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = and i32 %874, 64
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %910, label %877

; <label>:877                                     ; preds = %862
  %878 = add i32 %45, 456
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = add i32 %880, 0
  %882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %881, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 131072
  %886 = icmp eq i32 %885, 0
  %887 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %882, %dx.types.Handle %81, float %568, float %569, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = fmul fast float %888, %238
  %892 = fmul fast float %889, %241
  %893 = fmul fast float %890, %244
  br i1 %886, label %900, label %894

; <label>:894                                     ; preds = %877
  %895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.f32 %895, 0
  %897 = fmul fast float %896, %891
  %898 = fmul fast float %896, %892
  %899 = fmul fast float %896, %893
  br label %900

; <label>:900                                     ; preds = %894, %877
  %901 = phi float [ %897, %894 ], [ %891, %877 ]
  %902 = phi float [ %898, %894 ], [ %892, %877 ]
  %903 = phi float [ %899, %894 ], [ %893, %877 ]
  %904 = fmul fast float %901, %872
  %905 = select i1 %218, float %904, float %901
  %906 = call float @dx.op.dot3.f32(i32 55, float %905, float %902, float %903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = select i1 %218, float 0.000000e+00, float %901
  %908 = select i1 %218, float %906, float %902
  %909 = select i1 %218, float 0.000000e+00, float %903
  br label %910

; <label>:910                                     ; preds = %900, %862
  %911 = phi float [ %907, %900 ], [ 0.000000e+00, %862 ]
  %912 = phi float [ %908, %900 ], [ 0.000000e+00, %862 ]
  %913 = phi float [ %909, %900 ], [ 0.000000e+00, %862 ]
  %914 = add i32 %45, 96
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = lshr i32 %916, 8
  %920 = and i32 %919, 255
  %921 = uitofp i32 %920 to float
  %922 = call float @dx.op.dot3.f32(i32 55, float %783, float %784, float %785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %923 = fmul fast float %921, %922
  %924 = fadd fast float %923, %918
  %925 = fmul fast float %924, 0x3F70101020000000
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  br label %927

; <label>:927                                     ; preds = %910, %454
  %928 = phi float [ 0.000000e+00, %454 ], [ %864, %910 ]
  %929 = phi float [ 0.000000e+00, %454 ], [ %865, %910 ]
  %930 = phi float [ 0.000000e+00, %454 ], [ %783, %910 ]
  %931 = phi float [ 0.000000e+00, %454 ], [ %784, %910 ]
  %932 = phi float [ 0.000000e+00, %454 ], [ %785, %910 ]
  %933 = phi float [ 0.000000e+00, %454 ], [ %911, %910 ]
  %934 = phi float [ 0.000000e+00, %454 ], [ %912, %910 ]
  %935 = phi float [ 0.000000e+00, %454 ], [ %913, %910 ]
  %936 = phi float [ 0.000000e+00, %454 ], [ %769, %910 ]
  %937 = phi float [ 0.000000e+00, %454 ], [ 1.000000e+00, %910 ]
  %938 = phi float [ 0.000000e+00, %454 ], [ %863, %910 ]
  %939 = phi float [ 0.000000e+00, %454 ], [ %866, %910 ]
  %940 = phi float [ 0.000000e+00, %454 ], [ %926, %910 ]
  br i1 %405, label %1782, label %941

; <label>:941                                     ; preds = %927
  %942 = icmp ult i32 %460, 2
  %943 = add i32 %45, 40
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = add i32 %45, 44
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = or i32 %948, %945
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %1782, label %951

; <label>:951                                     ; preds = %941
  %952 = and i32 %945, 262144
  %953 = icmp ne i32 %952, 0
  %954 = select i1 %953, float %48, float 1.000000e+00
  %955 = select i1 %953, float %49, float 0.000000e+00
  %956 = select i1 %953, float %50, float 0.000000e+00
  %957 = select i1 %953, float %51, float 1.000000e+00
  %958 = select i1 %953, float %52, float %73
  %959 = select i1 %953, float %53, float %74
  %960 = add i32 %45, 300
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = lshr i32 %962, 16
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = fmul fast float %964, 0x3F50624DE0000000
  %966 = add i32 %45, 104
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = lshr i32 %968, 16
  %970 = and i32 %969, 255
  %971 = lshr i32 %968, 24
  %972 = add i32 %45, 308
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = and i32 %974, 65535
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = lshr i32 %974, 16
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = add i32 %45, 48
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 3
  %993 = fmul fast float %992, 1.000000e+03
  %994 = fmul fast float %315, %993
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = fadd fast float %995, %305
  %997 = fmul fast float %316, %993
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = fadd fast float %998, %307
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
  %1025 = add i32 %45, 244
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1056 = extractvalue %dx.types.CBufRet.f32 %1055, 0
  %1057 = extractvalue %dx.types.CBufRet.f32 %1055, 1
  %1058 = extractvalue %dx.types.CBufRet.f32 %1055, 2
  %1059 = fadd fast float %1056, %144
  %1060 = fadd fast float %1057, %145
  %1061 = fadd fast float %1058, %146
  %1062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1063 = extractvalue %dx.types.CBufRet.f32 %1062, 0
  %1064 = call float @dx.op.unary.f32(i32 7, float %1063)  ; Saturate(value)
  %1065 = icmp eq i32 %46, 65535
  br i1 %1065, label %1160, label %1066

; <label>:1066                                    ; preds = %1054
  %1067 = lshr i32 %46, 1
  %1068 = shl i32 %1067, 2
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1068, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %46, 1
  %1072 = icmp ne i32 %1071, 0
  %1073 = lshr i32 %1070, 16
  %1074 = and i32 %1070, 65535
  %1075 = select i1 %1072, i32 %1073, i32 %1074
  %1076 = icmp eq i32 %1075, 65535
  br i1 %1076, label %1156, label %1077

; <label>:1077                                    ; preds = %1066
  %1078 = mul nuw nsw i32 %1075, 40
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = add nuw nsw i32 %1078, 12
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = add nuw nsw i32 %1078, 24
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1092 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1093 = add nuw nsw i32 %1078, 36
  %1094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1111 = shl i32 %46, 2
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = add i32 %1113, 0
  %1115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1116 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1117 = call float @dx.op.unary.f32(i32 22, float %1109)  ; Frc(value)
  %1118 = call float @dx.op.unary.f32(i32 22, float %1110)  ; Frc(value)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1115, %dx.types.Handle %40, float %1116, float %1117, float %1118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = add i32 %1151, 0
  %1153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1153, %dx.types.Handle %38, float %1147, float %1148, float %1149, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1155 = extractvalue %dx.types.ResRet.f32 %1154, 0
  br label %1156

; <label>:1156                                    ; preds = %1077, %1066
  %1157 = phi float [ %1155, %1077 ], [ -1.000000e+00, %1066 ]
  %1158 = fadd fast float %1157, %1064
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  br label %1160

; <label>:1160                                    ; preds = %1156, %1054
  %1161 = phi float [ %1159, %1156 ], [ %1064, %1054 ]
  %1162 = fmul fast float %1161, %457
  br label %1163

; <label>:1163                                    ; preds = %1160, %1049
  %1164 = phi float [ %1162, %1160 ], [ %457, %1049 ]
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = and i32 %1166, 256
  %1168 = icmp eq i32 %1167, 0
  br i1 %1168, label %1215, label %1169

; <label>:1169                                    ; preds = %1163
  %1170 = add i32 %45, 492
  %1171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1170, i32 undef)  ; BufferLoad(srv,index,wot)
  %1172 = extractvalue %dx.types.ResRet.i32 %1171, 0
  %1173 = add i32 %1172, 0
  %1174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1174, %dx.types.Handle %82, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1176 = extractvalue %dx.types.ResRet.f32 %1175, 0
  %1177 = add i32 %45, 116
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 128
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1237, label %1221

; <label>:1221                                    ; preds = %1215
  %1222 = add i32 %45, 476
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = add i32 %1224, 0
  %1226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1226, %dx.types.Handle %82, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %1239, label %1782, label %1240

; <label>:1240                                    ; preds = %1237
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 16
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1443, label %1245

; <label>:1245                                    ; preds = %1240
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = add i32 %45, 428
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = add i32 %1250, 0
  %1252 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1251, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1253 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1252, %dx.types.Handle %81, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = and i32 %1267, 512
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1278, label %1270

; <label>:1270                                    ; preds = %1245
  %1271 = add i32 %45, 508
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = add i32 %1273, 0
  %1275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1274, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1276 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1275, %dx.types.Handle %82, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  br label %1278

; <label>:1278                                    ; preds = %1270, %1245
  %1279 = phi float [ %1277, %1270 ], [ 1.000000e+00, %1245 ]
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 33554432
  %1283 = icmp eq i32 %1282, 0
  br i1 %1283, label %1390, label %1284

; <label>:1284                                    ; preds = %1278
  %1285 = add i32 %45, 240
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = and i32 %1287, 65535
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = lshr i32 %1287, 16
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = add i32 %45, 244
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = and i32 %1294, 65535
  %1296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1295)  ; LegacyF16ToF32(value)
  %1297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1313 = add i32 %45, 236
  %1314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1313, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1394 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1395 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1396 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
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
  %1428 = fmul fast float %292, %292
  %1429 = fmul fast float %296, %296
  %1430 = fmul fast float %300, %300
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
  %1448 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1449 = extractvalue %dx.types.CBufRet.i32 %1448, 1
  %1450 = and i32 %1449, 1
  %1451 = icmp ne i32 %1450, 0
  %1452 = add i32 %45, 356
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 32
  %1456 = icmp ne i32 %1455, 0
  %1457 = and i1 %1451, %1456
  %1458 = select i1 %1457, float 1.000000e+00, float %1445
  %1459 = select i1 %1457, float 0x3FD3333340000000, float %1446
  %1460 = select i1 %1457, float 0x3FD3333340000000, float %1447
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 32
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1537, label %1465

; <label>:1465                                    ; preds = %1443
  %1466 = add i32 %45, 108
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %45, 444
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = add i32 %1471, 0
  %1473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1473, %dx.types.Handle %81, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 67108864
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1533, label %1517

; <label>:1517                                    ; preds = %1465
  %1518 = add i32 %45, 296
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 65535
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1542 = add i32 %45, 176
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = lshr i32 %1544, 22
  %1546 = shl nuw nsw i32 %1545, 5
  %1547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1546)  ; LegacyF16ToF32(value)
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 64
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1585, label %1552

; <label>:1552                                    ; preds = %1537
  %1553 = add i32 %45, 460
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = add i32 %1555, 0
  %1557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 131072
  %1561 = icmp eq i32 %1560, 0
  %1562 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1557, %dx.types.Handle %81, float %1050, float %1051, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1563 = extractvalue %dx.types.ResRet.f32 %1562, 0
  %1564 = extractvalue %dx.types.ResRet.f32 %1562, 1
  %1565 = extractvalue %dx.types.ResRet.f32 %1562, 2
  %1566 = fmul fast float %1563, %280
  %1567 = fmul fast float %1564, %283
  %1568 = fmul fast float %1565, %286
  br i1 %1561, label %1575, label %1569

; <label>:1569                                    ; preds = %1552
  %1570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1580 = select i1 %218, float %1579, float %1576
  %1581 = call float @dx.op.dot3.f32(i32 55, float %1580, float %1577, float %1578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1582 = select i1 %218, float 0.000000e+00, float %1576
  %1583 = select i1 %218, float %1581, float %1577
  %1584 = select i1 %218, float 0.000000e+00, float %1578
  br label %1585

; <label>:1585                                    ; preds = %1575, %1537
  %1586 = phi float [ %1582, %1575 ], [ 0.000000e+00, %1537 ]
  %1587 = phi float [ %1583, %1575 ], [ 0.000000e+00, %1537 ]
  %1588 = phi float [ %1584, %1575 ], [ 0.000000e+00, %1537 ]
  %1589 = add i32 %45, 112
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = lshr i32 %1591, 8
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = call float @dx.op.dot3.f32(i32 55, float %1458, float %1459, float %1460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1598 = fmul fast float %1596, %1597
  %1599 = fadd fast float %1598, %1593
  %1600 = fmul fast float %1599, 0x3F70101020000000
  %1601 = call float @dx.op.unary.f32(i32 7, float %1600)  ; Saturate(value)
  br i1 %942, label %1602, label %1610

; <label>:1602                                    ; preds = %1585
  %1603 = fsub fast float 1.000000e+00, %1238
  %1604 = fmul fast float %1603, %930
  %1605 = fmul fast float %1603, %931
  %1606 = fmul fast float %1603, %932
  %1607 = fmul fast float %1603, %933
  %1608 = fmul fast float %1603, %934
  %1609 = fmul fast float %1603, %935
  br label %1610

; <label>:1610                                    ; preds = %1602, %1585
  %1611 = phi float [ %1604, %1602 ], [ %930, %1585 ]
  %1612 = phi float [ %1605, %1602 ], [ %931, %1585 ]
  %1613 = phi float [ %1606, %1602 ], [ %932, %1585 ]
  %1614 = phi float [ %1607, %1602 ], [ %933, %1585 ]
  %1615 = phi float [ %1608, %1602 ], [ %934, %1585 ]
  %1616 = phi float [ %1609, %1602 ], [ %935, %1585 ]
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 3
  %1620 = icmp eq i32 %1619, 3
  br i1 %1620, label %1699, label %1621

; <label>:1621                                    ; preds = %1610
  %1622 = and i32 %1618, 16
  %1623 = icmp ne i32 %1622, 0
  %1624 = select i1 %1623, float %1238, float 0.000000e+00
  %1625 = icmp eq i32 %1619, 0
  br i1 %1625, label %1626, label %1654

; <label>:1626                                    ; preds = %1621
  %1627 = and i32 %1618, 64
  %1628 = icmp ne i32 %1627, 0
  %1629 = select i1 %1628, float %1238, float 0.000000e+00
  %1630 = fsub fast float %1458, %1611
  %1631 = fsub fast float %1459, %1612
  %1632 = fsub fast float %1460, %1613
  %1633 = fmul fast float %1624, %1630
  %1634 = fmul fast float %1624, %1631
  %1635 = fmul fast float %1624, %1632
  %1636 = fadd fast float %1633, %1611
  %1637 = fadd fast float %1634, %1612
  %1638 = fadd fast float %1635, %1613
  %1639 = fsub fast float %1444, %936
  %1640 = fmul fast float %1624, %1639
  %1641 = fadd fast float %1640, %936
  %1642 = fsub fast float %1586, %1614
  %1643 = fsub fast float %1587, %1615
  %1644 = fsub fast float %1588, %1616
  %1645 = fmul fast float %1629, %1642
  %1646 = fmul fast float %1629, %1643
  %1647 = fmul fast float %1629, %1644
  %1648 = fadd fast float %1645, %1614
  %1649 = fadd fast float %1646, %1615
  %1650 = fadd fast float %1647, %1616
  %1651 = fsub fast float %1601, %940
  %1652 = fmul fast float %1624, %1651
  %1653 = fadd fast float %1652, %940
  br label %1699

; <label>:1654                                    ; preds = %1621
  %1655 = icmp eq i32 %1619, 1
  br i1 %1655, label %1656, label %1669

; <label>:1656                                    ; preds = %1654
  %1657 = fadd fast float %1458, -1.000000e+00
  %1658 = fadd fast float %1459, -1.000000e+00
  %1659 = fadd fast float %1460, -1.000000e+00
  %1660 = fmul fast float %1624, %1657
  %1661 = fmul fast float %1624, %1658
  %1662 = fmul fast float %1624, %1659
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fadd fast float %1661, 1.000000e+00
  %1665 = fadd fast float %1662, 1.000000e+00
  %1666 = fmul fast float %1663, %1611
  %1667 = fmul fast float %1664, %1612
  %1668 = fmul fast float %1665, %1613
  br label %1699

; <label>:1669                                    ; preds = %1654
  %1670 = icmp eq i32 %1619, 2
  br i1 %1670, label %1671, label %1699

; <label>:1671                                    ; preds = %1669
  %1672 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1673 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1674 = call float @dx.op.unary.f32(i32 24, float %1460)  ; Sqrt(value)
  %1675 = fadd fast float %1672, -5.000000e-01
  %1676 = fadd fast float %1673, -5.000000e-01
  %1677 = fadd fast float %1674, -5.000000e-01
  %1678 = fmul fast float %1675, %1624
  %1679 = fmul fast float %1676, %1624
  %1680 = fmul fast float %1677, %1624
  %1681 = fadd fast float %1678, 5.000000e-01
  %1682 = fadd fast float %1679, 5.000000e-01
  %1683 = fadd fast float %1680, 5.000000e-01
  %1684 = fmul fast float %1681, 2.000000e+00
  %1685 = fsub fast float 1.000000e+00, %1684
  %1686 = fmul fast float %1685, %1611
  %1687 = fadd fast float %1686, %1684
  %1688 = fmul fast float %1687, %1611
  %1689 = fmul fast float %1682, 2.000000e+00
  %1690 = fsub fast float 1.000000e+00, %1689
  %1691 = fmul fast float %1690, %1612
  %1692 = fadd fast float %1691, %1689
  %1693 = fmul fast float %1692, %1612
  %1694 = fmul fast float %1683, 2.000000e+00
  %1695 = fsub fast float 1.000000e+00, %1694
  %1696 = fmul fast float %1695, %1613
  %1697 = fadd fast float %1696, %1694
  %1698 = fmul fast float %1697, %1613
  br label %1699

; <label>:1699                                    ; preds = %1671, %1669, %1656, %1626, %1610
  %1700 = phi float [ %1611, %1610 ], [ %1688, %1671 ], [ %1611, %1669 ], [ %1666, %1656 ], [ %1636, %1626 ]
  %1701 = phi float [ %1612, %1610 ], [ %1693, %1671 ], [ %1612, %1669 ], [ %1667, %1656 ], [ %1637, %1626 ]
  %1702 = phi float [ %1613, %1610 ], [ %1698, %1671 ], [ %1613, %1669 ], [ %1668, %1656 ], [ %1638, %1626 ]
  %1703 = phi float [ %1614, %1610 ], [ %1614, %1671 ], [ %1614, %1669 ], [ %1614, %1656 ], [ %1648, %1626 ]
  %1704 = phi float [ %1615, %1610 ], [ %1615, %1671 ], [ %1615, %1669 ], [ %1615, %1656 ], [ %1649, %1626 ]
  %1705 = phi float [ %1616, %1610 ], [ %1616, %1671 ], [ %1616, %1669 ], [ %1616, %1656 ], [ %1650, %1626 ]
  %1706 = phi float [ %936, %1610 ], [ %936, %1671 ], [ %936, %1669 ], [ %936, %1656 ], [ %1641, %1626 ]
  %1707 = phi float [ %940, %1610 ], [ %940, %1671 ], [ %940, %1669 ], [ %940, %1656 ], [ %1653, %1626 ]
  %1708 = and i32 %1618, 12
  %1709 = icmp eq i32 %1708, 12
  br i1 %1709, label %1782, label %1710

; <label>:1710                                    ; preds = %1699
  %1711 = and i32 %1618, 2097184
  %1712 = icmp eq i32 %1711, 2097184
  %1713 = select i1 %1712, float %1238, float 0.000000e+00
  %1714 = and i32 %1618, 4194336
  %1715 = icmp eq i32 %1714, 4194336
  %1716 = select i1 %1715, float %1238, float 0.000000e+00
  %1717 = and i32 %1618, 8388640
  %1718 = icmp eq i32 %1717, 8388640
  %1719 = select i1 %1718, float %1238, float 0.000000e+00
  %1720 = icmp eq i32 %1708, 0
  br i1 %1720, label %1721, label %1734

; <label>:1721                                    ; preds = %1710
  %1722 = fsub fast float %1539, %928
  %1723 = fsub fast float %1540, %929
  %1724 = fmul fast float %1713, %1722
  %1725 = fmul fast float %1713, %1723
  %1726 = fadd fast float %1724, %928
  %1727 = fadd fast float %1725, %929
  %1728 = fsub fast float %1541, %939
  %1729 = fmul fast float %1716, %1728
  %1730 = fadd fast float %1729, %939
  %1731 = fsub fast float %1538, %938
  %1732 = fmul fast float %1719, %1731
  %1733 = fadd fast float %1732, %938
  br label %1782

; <label>:1734                                    ; preds = %1710
  %1735 = icmp eq i32 %1708, 4
  br i1 %1735, label %1736, label %1768

; <label>:1736                                    ; preds = %1734
  %1737 = fmul fast float %1713, %1539
  %1738 = fmul fast float %1713, %1540
  %1739 = fadd fast float %1737, %928
  %1740 = fadd fast float %1738, %929
  %1741 = call float @dx.op.binary.f32(i32 36, float %939, float %1541)  ; FMin(a,b)
  %1742 = fsub fast float %1741, %939
  %1743 = fmul fast float %1742, %1716
  %1744 = fadd fast float %1743, %939
  %1745 = fadd fast float %1538, %938
  %1746 = fmul fast float %1745, 0x3FF337FAE0000000
  %1747 = fmul fast float %938, %938
  %1748 = fmul fast float %1538, %1538
  %1749 = fadd fast float %1748, %1747
  %1750 = fmul fast float %1749, 0x3FE5152B00000000
  %1751 = fmul fast float %938, 0xBFCC1F85E0000000
  %1752 = fmul fast float %1751, %1538
  %1753 = fadd fast float %1752, 0xBFE1363700000000
  %1754 = fadd fast float %1753, %1746
  %1755 = fsub fast float %1754, %1750
  %1756 = fmul fast float %1745, 0x3FBA6F0D00000000
  %1757 = fmul fast float %1749, 0x3FD0432880000000
  %1758 = fmul fast float %938, 0xBFEF110800000000
  %1759 = fmul fast float %1758, %1538
  %1760 = fadd fast float %1759, 1.000000e+00
  %1761 = fsub fast float %1760, %1756
  %1762 = fadd fast float %1761, %1757
  %1763 = fdiv fast float %1755, %1762
  %1764 = call float @dx.op.unary.f32(i32 7, float %1763)  ; Saturate(value)
  %1765 = fsub fast float %1764, %938
  %1766 = fmul fast float %1765, %1719
  %1767 = fadd fast float %1766, %938
  br label %1782

; <label>:1768                                    ; preds = %1734
  %1769 = icmp eq i32 %1708, 8
  br i1 %1769, label %1770, label %1782

; <label>:1770                                    ; preds = %1768
  %1771 = fmul fast float %1713, %1539
  %1772 = fmul fast float %1713, %1540
  %1773 = fadd fast float %1771, %928
  %1774 = fadd fast float %1772, %929
  %1775 = call float @dx.op.binary.f32(i32 36, float %939, float %1541)  ; FMin(a,b)
  %1776 = fsub fast float %1775, %939
  %1777 = fmul fast float %1776, %1716
  %1778 = fadd fast float %1777, %939
  %1779 = fsub fast float %1538, %938
  %1780 = fmul fast float %1719, %1779
  %1781 = fadd fast float %1780, %938
  br label %1782

; <label>:1782                                    ; preds = %1770, %1768, %1736, %1721, %1699, %1237, %941, %927
  %1783 = phi float [ %928, %1699 ], [ %928, %1237 ], [ %928, %927 ], [ %1773, %1770 ], [ %928, %1768 ], [ %1739, %1736 ], [ %1726, %1721 ], [ %928, %941 ]
  %1784 = phi float [ %929, %1699 ], [ %929, %1237 ], [ %929, %927 ], [ %1774, %1770 ], [ %929, %1768 ], [ %1740, %1736 ], [ %1727, %1721 ], [ %929, %941 ]
  %1785 = phi float [ %1700, %1699 ], [ %930, %1237 ], [ %930, %927 ], [ %1700, %1770 ], [ %1700, %1768 ], [ %1700, %1736 ], [ %1700, %1721 ], [ %930, %941 ]
  %1786 = phi float [ %1701, %1699 ], [ %931, %1237 ], [ %931, %927 ], [ %1701, %1770 ], [ %1701, %1768 ], [ %1701, %1736 ], [ %1701, %1721 ], [ %931, %941 ]
  %1787 = phi float [ %1702, %1699 ], [ %932, %1237 ], [ %932, %927 ], [ %1702, %1770 ], [ %1702, %1768 ], [ %1702, %1736 ], [ %1702, %1721 ], [ %932, %941 ]
  %1788 = phi float [ %1703, %1699 ], [ %933, %1237 ], [ %933, %927 ], [ %1703, %1770 ], [ %1703, %1768 ], [ %1703, %1736 ], [ %1703, %1721 ], [ %933, %941 ]
  %1789 = phi float [ %1704, %1699 ], [ %934, %1237 ], [ %934, %927 ], [ %1704, %1770 ], [ %1704, %1768 ], [ %1704, %1736 ], [ %1704, %1721 ], [ %934, %941 ]
  %1790 = phi float [ %1705, %1699 ], [ %935, %1237 ], [ %935, %927 ], [ %1705, %1770 ], [ %1705, %1768 ], [ %1705, %1736 ], [ %1705, %1721 ], [ %935, %941 ]
  %1791 = phi float [ %1706, %1699 ], [ %936, %1237 ], [ %936, %927 ], [ %1706, %1770 ], [ %1706, %1768 ], [ %1706, %1736 ], [ %1706, %1721 ], [ %936, %941 ]
  %1792 = phi float [ %938, %1699 ], [ %938, %1237 ], [ %938, %927 ], [ %1781, %1770 ], [ %938, %1768 ], [ %1767, %1736 ], [ %1733, %1721 ], [ %938, %941 ]
  %1793 = phi float [ %939, %1699 ], [ %939, %1237 ], [ %939, %927 ], [ %1778, %1770 ], [ %939, %1768 ], [ %1744, %1736 ], [ %1730, %1721 ], [ %939, %941 ]
  %1794 = phi float [ %1707, %1699 ], [ %940, %1237 ], [ %940, %927 ], [ %1707, %1770 ], [ %1707, %1768 ], [ %1707, %1736 ], [ %1707, %1721 ], [ %940, %941 ]
  br i1 %407, label %2636, label %1795

; <label>:1795                                    ; preds = %1782
  %1796 = icmp ult i32 %460, 3
  %1797 = add i32 %45, 56
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = add i32 %45, 60
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = or i32 %1802, %1799
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %2636, label %1805

; <label>:1805                                    ; preds = %1795
  %1806 = and i32 %1799, 262144
  %1807 = icmp ne i32 %1806, 0
  %1808 = select i1 %1807, float %48, float 1.000000e+00
  %1809 = select i1 %1807, float %49, float 0.000000e+00
  %1810 = select i1 %1807, float %50, float 0.000000e+00
  %1811 = select i1 %1807, float %51, float 1.000000e+00
  %1812 = select i1 %1807, float %52, float %73
  %1813 = select i1 %1807, float %53, float %74
  %1814 = add i32 %45, 316
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = lshr i32 %1816, 16
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = fmul fast float %1818, 0x3F50624DE0000000
  %1820 = add i32 %45, 120
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = lshr i32 %1822, 16
  %1824 = and i32 %1823, 255
  %1825 = lshr i32 %1822, 24
  %1826 = add i32 %45, 324
  %1827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.i32 %1827, 0
  %1829 = and i32 %1828, 65535
  %1830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1829)  ; LegacyF16ToF32(value)
  %1831 = lshr i32 %1828, 16
  %1832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1831)  ; LegacyF16ToF32(value)
  %1833 = add i32 %45, 64
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = lshr i32 %1835, 22
  %1837 = shl nuw nsw i32 %1836, 5
  %1838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1837)  ; LegacyF16ToF32(value)
  %1839 = shl i32 %1835, 4
  %1840 = and i32 %1839, 32752
  %1841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1840)  ; LegacyF16ToF32(value)
  %1842 = lshr i32 %1835, 7
  %1843 = and i32 %1842, 32752
  %1844 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1843)  ; LegacyF16ToF32(value)
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 3
  %1847 = fmul fast float %1846, 1.000000e+03
  %1848 = fmul fast float %357, %1847
  %1849 = call float @dx.op.unary.f32(i32 22, float %1848)  ; Frc(value)
  %1850 = fadd fast float %1849, %347
  %1851 = fmul fast float %358, %1847
  %1852 = call float @dx.op.unary.f32(i32 22, float %1851)  ; Frc(value)
  %1853 = fadd fast float %1852, %349
  %1854 = fmul fast float %1819, %1847
  %1855 = call float @dx.op.unary.f32(i32 22, float %1854)  ; Frc(value)
  %1856 = fmul fast float %1855, 0x401921FB60000000
  %1857 = fadd fast float %1856, %1838
  %1858 = call float @dx.op.unary.f32(i32 13, float %1857)  ; Sin(value)
  %1859 = call float @dx.op.unary.f32(i32 12, float %1857)  ; Cos(value)
  %1860 = fsub fast float -0.000000e+00, %1858
  %1861 = fadd fast float %1812, -5.000000e-01
  %1862 = fadd fast float %1813, -5.000000e-01
  %1863 = fmul fast float %1830, %1861
  %1864 = fmul fast float %1832, %1862
  %1865 = fadd fast float %1863, 5.000000e-01
  %1866 = fadd fast float %1864, 5.000000e-01
  %1867 = fmul fast float %1841, %1865
  %1868 = fmul fast float %1844, %1866
  %1869 = fmul fast float %1859, %1867
  %1870 = call float @dx.op.tertiary.f32(i32 46, float %1860, float %1868, float %1869)  ; FMad(a,b,c)
  %1871 = fmul fast float %1858, %1867
  %1872 = call float @dx.op.tertiary.f32(i32 46, float %1859, float %1868, float %1871)  ; FMad(a,b,c)
  %1873 = fadd fast float %1850, %1870
  %1874 = fadd fast float %1853, %1872
  %1875 = icmp ugt i32 %1824, 1
  %1876 = icmp ugt i32 %1822, 33554431
  %1877 = or i1 %1876, %1875
  br i1 %1877, label %1878, label %1903

; <label>:1878                                    ; preds = %1805
  %1879 = add i32 %45, 260
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = lshr i32 %1881, 16
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = fmul fast float %1846, %1883
  %1885 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1886 = mul nuw nsw i32 %1824, %1825
  %1887 = uitofp i32 %1886 to float
  %1888 = fmul fast float %1885, %1887
  %1889 = call float @dx.op.unary.f32(i32 27, float %1888)  ; Round_ni(value)
  %1890 = fptoui float %1889 to i32
  %1891 = urem i32 %1890, %1824
  %1892 = udiv i32 %1890, %1825
  %1893 = call float @dx.op.unary.f32(i32 22, float %1873)  ; Frc(value)
  %1894 = call float @dx.op.unary.f32(i32 22, float %1874)  ; Frc(value)
  %1895 = uitofp i32 %1891 to float
  %1896 = uitofp i32 %1892 to float
  %1897 = fadd fast float %1893, %1895
  %1898 = fadd fast float %1894, %1896
  %1899 = uitofp i32 %1824 to float
  %1900 = uitofp i32 %1825 to float
  %1901 = fdiv fast float %1897, %1899
  %1902 = fdiv fast float %1898, %1900
  br label %1903

; <label>:1903                                    ; preds = %1878, %1805
  %1904 = phi float [ %1901, %1878 ], [ %1873, %1805 ]
  %1905 = phi float [ %1902, %1878 ], [ %1874, %1805 ]
  %1906 = and i32 %1799, 16777216
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %2017, label %1908

; <label>:1908                                    ; preds = %1903
  %1909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1910 = extractvalue %dx.types.CBufRet.f32 %1909, 0
  %1911 = extractvalue %dx.types.CBufRet.f32 %1909, 1
  %1912 = extractvalue %dx.types.CBufRet.f32 %1909, 2
  %1913 = fadd fast float %1910, %144
  %1914 = fadd fast float %1911, %145
  %1915 = fadd fast float %1912, %146
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = call float @dx.op.unary.f32(i32 7, float %1917)  ; Saturate(value)
  %1919 = icmp eq i32 %46, 65535
  br i1 %1919, label %2014, label %1920

; <label>:1920                                    ; preds = %1908
  %1921 = lshr i32 %46, 1
  %1922 = shl i32 %1921, 2
  %1923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1922, i32 undef)  ; BufferLoad(srv,index,wot)
  %1924 = extractvalue %dx.types.ResRet.i32 %1923, 0
  %1925 = and i32 %46, 1
  %1926 = icmp ne i32 %1925, 0
  %1927 = lshr i32 %1924, 16
  %1928 = and i32 %1924, 65535
  %1929 = select i1 %1926, i32 %1927, i32 %1928
  %1930 = icmp eq i32 %1929, 65535
  br i1 %1930, label %2010, label %1931

; <label>:1931                                    ; preds = %1920
  %1932 = mul nuw nsw i32 %1929, 40
  %1933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.f32 %1933, 0
  %1935 = extractvalue %dx.types.ResRet.f32 %1933, 1
  %1936 = extractvalue %dx.types.ResRet.f32 %1933, 2
  %1937 = add nuw nsw i32 %1932, 12
  %1938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.ResRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.ResRet.f32 %1938, 2
  %1942 = add nuw nsw i32 %1932, 24
  %1943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.ResRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.ResRet.f32 %1943, 2
  %1947 = add nuw nsw i32 %1932, 36
  %1948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1947, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.f32 %1948, 0
  %1950 = fsub fast float %1913, %1934
  %1951 = fsub fast float %1914, %1935
  %1952 = fsub fast float %1915, %1936
  %1953 = fmul fast float %1949, %1950
  %1954 = fmul fast float %1949, %1951
  %1955 = fmul fast float %1949, %1952
  %1956 = call float @dx.op.unary.f32(i32 27, float %1953)  ; Round_ni(value)
  %1957 = call float @dx.op.unary.f32(i32 27, float %1954)  ; Round_ni(value)
  %1958 = call float @dx.op.unary.f32(i32 27, float %1955)  ; Round_ni(value)
  %1959 = fadd fast float %1956, 5.000000e-01
  %1960 = fadd fast float %1957, 5.000000e-01
  %1961 = fadd fast float %1958, 5.000000e-01
  %1962 = fmul fast float %1959, %1939
  %1963 = fmul fast float %1960, %1940
  %1964 = fmul fast float %1961, %1941
  %1965 = shl i32 %46, 2
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = add i32 %1967, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1968, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = call float @dx.op.unary.f32(i32 22, float %1962)  ; Frc(value)
  %1971 = call float @dx.op.unary.f32(i32 22, float %1963)  ; Frc(value)
  %1972 = call float @dx.op.unary.f32(i32 22, float %1964)  ; Frc(value)
  %1973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1969, %dx.types.Handle %40, float %1970, float %1971, float %1972, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = extractvalue %dx.types.ResRet.f32 %1973, 1
  %1976 = extractvalue %dx.types.ResRet.f32 %1973, 2
  %1977 = fmul fast float %1974, 1.023000e+03
  %1978 = fmul fast float %1975, 1.023000e+03
  %1979 = fmul fast float %1976, 1.023000e+03
  %1980 = fadd fast float %1977, 5.000000e-01
  %1981 = fadd fast float %1978, 5.000000e-01
  %1982 = fadd fast float %1979, 5.000000e-01
  %1983 = call float @dx.op.unary.f32(i32 27, float %1980)  ; Round_ni(value)
  %1984 = call float @dx.op.unary.f32(i32 27, float %1981)  ; Round_ni(value)
  %1985 = call float @dx.op.unary.f32(i32 27, float %1982)  ; Round_ni(value)
  %1986 = fsub fast float %1953, %1956
  %1987 = fsub fast float %1954, %1957
  %1988 = fsub fast float %1955, %1958
  %1989 = fmul fast float %1986, 7.500000e-01
  %1990 = fmul fast float %1987, 7.500000e-01
  %1991 = fmul fast float %1988, 7.500000e-01
  %1992 = fadd fast float %1956, 1.250000e-01
  %1993 = fadd fast float %1992, %1989
  %1994 = fadd fast float %1993, %1983
  %1995 = fadd fast float %1957, 1.250000e-01
  %1996 = fadd fast float %1995, %1990
  %1997 = fadd fast float %1996, %1984
  %1998 = fadd fast float %1958, 1.250000e-01
  %1999 = fadd fast float %1998, %1991
  %2000 = fadd fast float %1999, %1985
  %2001 = fmul fast float %1994, %1944
  %2002 = fmul fast float %1997, %1945
  %2003 = fmul fast float %2000, %1946
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = add i32 %2005, 0
  %2007 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2006, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2007, %dx.types.Handle %38, float %2001, float %2002, float %2003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  br label %2010

; <label>:2010                                    ; preds = %1931, %1920
  %2011 = phi float [ %2009, %1931 ], [ -1.000000e+00, %1920 ]
  %2012 = fadd fast float %2011, %1918
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  br label %2014

; <label>:2014                                    ; preds = %2010, %1908
  %2015 = phi float [ %2013, %2010 ], [ %1918, %1908 ]
  %2016 = fmul fast float %2015, %456
  br label %2017

; <label>:2017                                    ; preds = %2014, %1903
  %2018 = phi float [ %2016, %2014 ], [ %456, %1903 ]
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = and i32 %2020, 256
  %2022 = icmp eq i32 %2021, 0
  br i1 %2022, label %2069, label %2023

; <label>:2023                                    ; preds = %2017
  %2024 = add i32 %45, 496
  %2025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2024, i32 undef)  ; BufferLoad(srv,index,wot)
  %2026 = extractvalue %dx.types.ResRet.i32 %2025, 0
  %2027 = add i32 %2026, 0
  %2028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2029 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2028, %dx.types.Handle %82, float %1904, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2031 = add i32 %45, 132
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = shl i32 %2033, 4
  %2035 = and i32 %2034, 32752
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = lshr i32 %2033, 7
  %2038 = and i32 %2037, 32752
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = fsub fast float 1.000000e+00, %2018
  %2041 = call float @dx.op.binary.f32(i32 35, float %2040, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2042 = bitcast float %2018 to i32
  %2043 = sitofp i32 %2042 to float
  %2044 = fadd fast float %2043, 0xC1CFBF8940000000
  %2045 = fmul fast float %2039, %2044
  %2046 = fadd fast float %2045, 0x41CFBF8940000000
  %2047 = fptosi float %2046 to i32
  %2048 = bitcast i32 %2047 to float
  %2049 = bitcast float %2041 to i32
  %2050 = sitofp i32 %2049 to float
  %2051 = fadd fast float %2050, 0xC1CFBF8940000000
  %2052 = fmul fast float %2051, %2039
  %2053 = fadd fast float %2052, 0x41CFBF8940000000
  %2054 = fptosi float %2053 to i32
  %2055 = bitcast i32 %2054 to float
  %2056 = fmul fast float %2048, %2036
  %2057 = fmul fast float %2055, %2036
  %2058 = fsub fast float %2041, %2056
  %2059 = fadd fast float %2057, %2041
  %2060 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2061 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2062 = fsub fast float %2030, %2060
  %2063 = fsub fast float %2061, %2060
  %2064 = bitcast float %2063 to i32
  %2065 = sub nsw i32 2129859010, %2064
  %2066 = bitcast i32 %2065 to float
  %2067 = fmul fast float %2066, %2062
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  br label %2069

; <label>:2069                                    ; preds = %2023, %2017
  %2070 = phi float [ %2068, %2023 ], [ %2018, %2017 ]
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = and i32 %2072, 128
  %2074 = icmp eq i32 %2073, 0
  br i1 %2074, label %2091, label %2075

; <label>:2075                                    ; preds = %2069
  %2076 = add i32 %45, 480
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = add i32 %2078, 0
  %2080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2081 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2080, %dx.types.Handle %82, float %1904, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = and i32 %2084, 524288
  %2086 = icmp ne i32 %2085, 0
  %2087 = fcmp fast ogt float %2082, 0x3FE0101020000000
  %2088 = select i1 %2087, float 1.000000e+00, float 0.000000e+00
  %2089 = select i1 %2086, float %2088, float %2082
  %2090 = fmul fast float %2089, %2070
  br label %2091

; <label>:2091                                    ; preds = %2075, %2069
  %2092 = phi float [ %2090, %2075 ], [ %2070, %2069 ]
  %2093 = fcmp fast ult float %2092, 0x3F70101020000000
  br i1 %2093, label %2636, label %2094

; <label>:2094                                    ; preds = %2091
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = and i32 %2096, 16
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2297, label %2099

; <label>:2099                                    ; preds = %2094
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = add i32 %45, 432
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = add i32 %2104, 0
  %2106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2106, %dx.types.Handle %81, float %1904, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2108 = extractvalue %dx.types.ResRet.f32 %2107, 0
  %2109 = extractvalue %dx.types.ResRet.f32 %2107, 1
  %2110 = extractvalue %dx.types.ResRet.f32 %2107, 2
  %2111 = extractvalue %dx.types.ResRet.f32 %2107, 3
  %2112 = and i32 %2101, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = lshr i32 %2101, 8
  %2115 = and i32 %2114, 255
  %2116 = uitofp i32 %2115 to float
  %2117 = fmul fast float %2111, %2113
  %2118 = fadd fast float %2117, %2116
  %2119 = fmul fast float %2118, 0x3F70101000000000
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = and i32 %2121, 512
  %2123 = icmp eq i32 %2122, 0
  br i1 %2123, label %2132, label %2124

; <label>:2124                                    ; preds = %2099
  %2125 = add i32 %45, 512
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = add i32 %2127, 0
  %2129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2128, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2130 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2129, %dx.types.Handle %82, float %1904, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  br label %2132

; <label>:2132                                    ; preds = %2124, %2099
  %2133 = phi float [ %2131, %2124 ], [ 1.000000e+00, %2099 ]
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 33554432
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2244, label %2138

; <label>:2138                                    ; preds = %2132
  %2139 = add i32 %45, 256
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = and i32 %2141, 65535
  %2143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2142)  ; LegacyF16ToF32(value)
  %2144 = lshr i32 %2141, 16
  %2145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2144)  ; LegacyF16ToF32(value)
  %2146 = add i32 %45, 260
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 65535
  %2150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2149)  ; LegacyF16ToF32(value)
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = lshr i32 %2152, 24
  %2154 = uitofp i32 %2153 to float
  %2155 = fmul fast float %2154, 0x3F70101020000000
  %2156 = and i32 %2152, 255
  %2157 = uitofp i32 %2156 to float
  %2158 = fmul fast float %2157, 0x3F70101020000000
  %2159 = lshr i32 %2152, 8
  %2160 = and i32 %2159, 255
  %2161 = uitofp i32 %2160 to float
  %2162 = fmul fast float %2161, 0x3F70101020000000
  %2163 = lshr i32 %2152, 16
  %2164 = and i32 %2163, 255
  %2165 = uitofp i32 %2164 to float
  %2166 = fmul fast float %2165, 0x3F70101020000000
  %2167 = add i32 %45, 252
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = lshr i32 %2169, 24
  %2171 = uitofp i32 %2170 to float
  %2172 = fmul fast float %2171, 0x3F70101020000000
  %2173 = and i32 %2169, 255
  %2174 = uitofp i32 %2173 to float
  %2175 = fmul fast float %2174, 0x3F70101020000000
  %2176 = lshr i32 %2169, 8
  %2177 = and i32 %2176, 255
  %2178 = uitofp i32 %2177 to float
  %2179 = fmul fast float %2178, 0x3F70101020000000
  %2180 = lshr i32 %2169, 16
  %2181 = and i32 %2180, 255
  %2182 = uitofp i32 %2181 to float
  %2183 = fmul fast float %2182, 0x3F70101020000000
  %2184 = bitcast float %2108 to i32
  %2185 = ashr i32 %2184, 1
  %2186 = sub nsw i32 1597463174, %2185
  %2187 = bitcast i32 %2186 to float
  %2188 = fmul fast float %2108, 5.000000e-01
  %2189 = fmul fast float %2187, %2187
  %2190 = fmul fast float %2189, %2188
  %2191 = fsub fast float 1.500000e+00, %2190
  %2192 = fmul fast float %2187, %2108
  %2193 = fmul fast float %2192, %2191
  %2194 = bitcast float %2109 to i32
  %2195 = ashr i32 %2194, 1
  %2196 = sub nsw i32 1597463174, %2195
  %2197 = bitcast i32 %2196 to float
  %2198 = fmul fast float %2109, 5.000000e-01
  %2199 = fmul fast float %2197, %2197
  %2200 = fmul fast float %2199, %2198
  %2201 = fsub fast float 1.500000e+00, %2200
  %2202 = fmul fast float %2197, %2109
  %2203 = fmul fast float %2202, %2201
  %2204 = bitcast float %2110 to i32
  %2205 = ashr i32 %2204, 1
  %2206 = sub nsw i32 1597463174, %2205
  %2207 = bitcast i32 %2206 to float
  %2208 = fmul fast float %2110, 5.000000e-01
  %2209 = fmul fast float %2207, %2207
  %2210 = fmul fast float %2209, %2208
  %2211 = fsub fast float 1.500000e+00, %2210
  %2212 = fmul fast float %2207, %2110
  %2213 = fmul fast float %2212, %2211
  %2214 = fsub fast float %2193, %2175
  %2215 = fsub fast float %2203, %2179
  %2216 = fsub fast float %2213, %2183
  %2217 = fmul fast float %2214, %2143
  %2218 = fmul fast float %2215, %2145
  %2219 = fmul fast float %2216, %2150
  %2220 = fadd fast float %2217, %2158
  %2221 = fadd fast float %2218, %2162
  %2222 = fadd fast float %2219, %2166
  %2223 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2224 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2225 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2226 = fmul fast float %2223, %2223
  %2227 = fmul fast float %2224, %2224
  %2228 = fmul fast float %2225, %2225
  %2229 = fsub fast float %2226, %2108
  %2230 = fsub fast float %2227, %2109
  %2231 = fsub fast float %2228, %2110
  %2232 = fmul fast float %2229, %2133
  %2233 = fmul fast float %2230, %2133
  %2234 = fmul fast float %2231, %2133
  %2235 = fadd fast float %2232, %2108
  %2236 = fadd fast float %2233, %2109
  %2237 = fadd fast float %2234, %2110
  %2238 = fadd fast float %2155, %2119
  %2239 = fsub fast float %2238, %2172
  %2240 = call float @dx.op.unary.f32(i32 7, float %2239)  ; Saturate(value)
  %2241 = fsub fast float %2240, %2119
  %2242 = fmul fast float %2241, %2133
  %2243 = fadd fast float %2242, %2119
  br label %2297

; <label>:2244                                    ; preds = %2132
  %2245 = and i32 %2135, 134217728
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2281, label %2247

; <label>:2247                                    ; preds = %2244
  %2248 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2249 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2250 = call float @dx.op.unary.f32(i32 24, float %342)  ; Sqrt(value)
  %2251 = fadd fast float %2248, -5.000000e-01
  %2252 = fadd fast float %2249, -5.000000e-01
  %2253 = fadd fast float %2250, -5.000000e-01
  %2254 = fmul fast float %2251, %2133
  %2255 = fmul fast float %2252, %2133
  %2256 = fmul fast float %2253, %2133
  %2257 = fadd fast float %2254, 5.000000e-01
  %2258 = fadd fast float %2255, 5.000000e-01
  %2259 = fadd fast float %2256, 5.000000e-01
  %2260 = call float @dx.op.unary.f32(i32 24, float %2108)  ; Sqrt(value)
  %2261 = call float @dx.op.unary.f32(i32 24, float %2109)  ; Sqrt(value)
  %2262 = call float @dx.op.unary.f32(i32 24, float %2110)  ; Sqrt(value)
  %2263 = fmul fast float %2257, 2.000000e+00
  %2264 = fsub fast float 1.000000e+00, %2263
  %2265 = fmul fast float %2264, %2260
  %2266 = fadd fast float %2265, %2263
  %2267 = fmul fast float %2266, %2260
  %2268 = fmul fast float %2258, 2.000000e+00
  %2269 = fsub fast float 1.000000e+00, %2268
  %2270 = fmul fast float %2269, %2261
  %2271 = fadd fast float %2270, %2268
  %2272 = fmul fast float %2271, %2261
  %2273 = fmul fast float %2259, 2.000000e+00
  %2274 = fsub fast float 1.000000e+00, %2273
  %2275 = fmul fast float %2274, %2262
  %2276 = fadd fast float %2275, %2273
  %2277 = fmul fast float %2276, %2262
  %2278 = fmul fast float %2267, %2267
  %2279 = fmul fast float %2272, %2272
  %2280 = fmul fast float %2277, %2277
  br label %2297

; <label>:2281                                    ; preds = %2244
  %2282 = fmul fast float %334, %334
  %2283 = fmul fast float %338, %338
  %2284 = fmul fast float %342, %342
  %2285 = fadd fast float %2282, -1.000000e+00
  %2286 = fadd fast float %2283, -1.000000e+00
  %2287 = fadd fast float %2284, -1.000000e+00
  %2288 = fmul fast float %2133, %2285
  %2289 = fmul fast float %2133, %2286
  %2290 = fmul fast float %2133, %2287
  %2291 = fadd fast float %2288, 1.000000e+00
  %2292 = fadd fast float %2289, 1.000000e+00
  %2293 = fadd fast float %2290, 1.000000e+00
  %2294 = fmul fast float %2291, %2108
  %2295 = fmul fast float %2292, %2109
  %2296 = fmul fast float %2293, %2110
  br label %2297

; <label>:2297                                    ; preds = %2281, %2247, %2138, %2094
  %2298 = phi float [ %2243, %2138 ], [ %2119, %2247 ], [ %2119, %2281 ], [ 0x3FA23C0BE0000000, %2094 ]
  %2299 = phi float [ %2235, %2138 ], [ %2278, %2247 ], [ %2294, %2281 ], [ 1.000000e+00, %2094 ]
  %2300 = phi float [ %2236, %2138 ], [ %2279, %2247 ], [ %2295, %2281 ], [ 1.000000e+00, %2094 ]
  %2301 = phi float [ %2237, %2138 ], [ %2280, %2247 ], [ %2296, %2281 ], [ 1.000000e+00, %2094 ]
  %2302 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.i32 %2302, 1
  %2304 = and i32 %2303, 1
  %2305 = icmp ne i32 %2304, 0
  %2306 = add i32 %45, 356
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 32
  %2310 = icmp ne i32 %2309, 0
  %2311 = and i1 %2305, %2310
  %2312 = select i1 %2311, float 1.000000e+00, float %2299
  %2313 = select i1 %2311, float 0x3FD3333340000000, float %2300
  %2314 = select i1 %2311, float 0x3FD3333340000000, float %2301
  %2315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2316 = extractvalue %dx.types.ResRet.i32 %2315, 0
  %2317 = and i32 %2316, 32
  %2318 = icmp eq i32 %2317, 0
  br i1 %2318, label %2391, label %2319

; <label>:2319                                    ; preds = %2297
  %2320 = add i32 %45, 124
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = add i32 %45, 448
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = add i32 %2325, 0
  %2327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2327, %dx.types.Handle %81, float %1904, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.ResRet.f32 %2328, 1
  %2331 = extractvalue %dx.types.ResRet.f32 %2328, 2
  %2332 = extractvalue %dx.types.ResRet.f32 %2328, 3
  %2333 = and i32 %2322, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = lshr i32 %2322, 8
  %2336 = and i32 %2335, 255
  %2337 = uitofp i32 %2336 to float
  %2338 = lshr i32 %2322, 16
  %2339 = and i32 %2338, 255
  %2340 = uitofp i32 %2339 to float
  %2341 = fmul fast float %2340, 0x3F70101000000000
  %2342 = fmul fast float %2329, %2334
  %2343 = fadd fast float %2342, %2337
  %2344 = fmul fast float %2343, 0x3F70101000000000
  %2345 = fadd fast float %2330, -5.000000e-01
  %2346 = fadd fast float %2332, -5.000000e-01
  %2347 = fmul fast float %2345, %2341
  %2348 = fmul fast float %2346, %2341
  %2349 = fadd fast float %2347, 5.000000e-01
  %2350 = fadd fast float %2348, 5.000000e-01
  %2351 = fmul fast float %2349, 2.000000e+00
  %2352 = fadd fast float %2351, -1.000000e+00
  %2353 = fmul fast float %2350, 2.000000e+00
  %2354 = fadd fast float %2353, -1.000000e+00
  %2355 = fadd fast float %2352, %2354
  %2356 = fmul fast float %2355, 5.000000e-01
  %2357 = fsub fast float %2352, %2354
  %2358 = fmul fast float %2357, 5.000000e-01
  %2359 = call float @dx.op.unary.f32(i32 6, float %2356)  ; FAbs(value)
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = call float @dx.op.unary.f32(i32 6, float %2358)  ; FAbs(value)
  %2362 = fsub fast float %2360, %2361
  %2363 = call float @dx.op.dot3.f32(i32 55, float %2356, float %2358, float %2362, float %2356, float %2358, float %2362)  ; Dot3(ax,ay,az,bx,by,bz)
  %2364 = call float @dx.op.unary.f32(i32 25, float %2363)  ; Rsqrt(value)
  %2365 = fmul fast float %2356, %2364
  %2366 = fmul fast float %2358, %2364
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 67108864
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2387, label %2371

; <label>:2371                                    ; preds = %2319
  %2372 = add i32 %45, 312
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = and i32 %2374, 65535
  %2376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2375)  ; LegacyF16ToF32(value)
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 65535
  %2380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2379)  ; LegacyF16ToF32(value)
  %2381 = lshr i32 %2374, 16
  %2382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2381)  ; LegacyF16ToF32(value)
  %2383 = fsub fast float %2344, %2382
  %2384 = fmul fast float %2383, %2376
  %2385 = fadd fast float %2384, %2380
  %2386 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  br label %2387

; <label>:2387                                    ; preds = %2371, %2319
  %2388 = phi float [ %2386, %2371 ], [ %2344, %2319 ]
  %2389 = call float @dx.op.dot2.f32(i32 54, float %2365, float %2366, float %1808, float %1809)  ; Dot2(ax,ay,bx,by)
  %2390 = call float @dx.op.dot2.f32(i32 54, float %2365, float %2366, float %1810, float %1811)  ; Dot2(ax,ay,bx,by)
  br label %2391

; <label>:2391                                    ; preds = %2387, %2297
  %2392 = phi float [ %2388, %2387 ], [ 0x3FD6666660000000, %2297 ]
  %2393 = phi float [ %2389, %2387 ], [ 0.000000e+00, %2297 ]
  %2394 = phi float [ %2390, %2387 ], [ 0.000000e+00, %2297 ]
  %2395 = phi float [ %2331, %2387 ], [ 1.000000e+00, %2297 ]
  %2396 = add i32 %45, 192
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = lshr i32 %2398, 22
  %2400 = shl nuw nsw i32 %2399, 5
  %2401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2400)  ; LegacyF16ToF32(value)
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 64
  %2405 = icmp eq i32 %2404, 0
  br i1 %2405, label %2439, label %2406

; <label>:2406                                    ; preds = %2391
  %2407 = add i32 %45, 464
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = add i32 %2409, 0
  %2411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 131072
  %2415 = icmp eq i32 %2414, 0
  %2416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2411, %dx.types.Handle %81, float %1904, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2417 = extractvalue %dx.types.ResRet.f32 %2416, 0
  %2418 = extractvalue %dx.types.ResRet.f32 %2416, 1
  %2419 = extractvalue %dx.types.ResRet.f32 %2416, 2
  %2420 = fmul fast float %2417, %322
  %2421 = fmul fast float %2418, %325
  %2422 = fmul fast float %2419, %328
  br i1 %2415, label %2429, label %2423

; <label>:2423                                    ; preds = %2406
  %2424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2425 = extractvalue %dx.types.CBufRet.f32 %2424, 0
  %2426 = fmul fast float %2425, %2420
  %2427 = fmul fast float %2425, %2421
  %2428 = fmul fast float %2425, %2422
  br label %2429

; <label>:2429                                    ; preds = %2423, %2406
  %2430 = phi float [ %2426, %2423 ], [ %2420, %2406 ]
  %2431 = phi float [ %2427, %2423 ], [ %2421, %2406 ]
  %2432 = phi float [ %2428, %2423 ], [ %2422, %2406 ]
  %2433 = fmul fast float %2430, %2401
  %2434 = select i1 %218, float %2433, float %2430
  %2435 = call float @dx.op.dot3.f32(i32 55, float %2434, float %2431, float %2432, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2436 = select i1 %218, float 0.000000e+00, float %2430
  %2437 = select i1 %218, float %2435, float %2431
  %2438 = select i1 %218, float 0.000000e+00, float %2432
  br label %2439

; <label>:2439                                    ; preds = %2429, %2391
  %2440 = phi float [ %2436, %2429 ], [ 0.000000e+00, %2391 ]
  %2441 = phi float [ %2437, %2429 ], [ 0.000000e+00, %2391 ]
  %2442 = phi float [ %2438, %2429 ], [ 0.000000e+00, %2391 ]
  %2443 = add i32 %45, 128
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %2445, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = lshr i32 %2445, 8
  %2449 = and i32 %2448, 255
  %2450 = uitofp i32 %2449 to float
  %2451 = call float @dx.op.dot3.f32(i32 55, float %2312, float %2313, float %2314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2452 = fmul fast float %2450, %2451
  %2453 = fadd fast float %2452, %2447
  %2454 = fmul fast float %2453, 0x3F70101020000000
  %2455 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  br i1 %1796, label %2456, label %2464

; <label>:2456                                    ; preds = %2439
  %2457 = fsub fast float 1.000000e+00, %2092
  %2458 = fmul fast float %2457, %1785
  %2459 = fmul fast float %2457, %1786
  %2460 = fmul fast float %2457, %1787
  %2461 = fmul fast float %2457, %1788
  %2462 = fmul fast float %2457, %1789
  %2463 = fmul fast float %2457, %1790
  br label %2464

; <label>:2464                                    ; preds = %2456, %2439
  %2465 = phi float [ %2458, %2456 ], [ %1785, %2439 ]
  %2466 = phi float [ %2459, %2456 ], [ %1786, %2439 ]
  %2467 = phi float [ %2460, %2456 ], [ %1787, %2439 ]
  %2468 = phi float [ %2461, %2456 ], [ %1788, %2439 ]
  %2469 = phi float [ %2462, %2456 ], [ %1789, %2439 ]
  %2470 = phi float [ %2463, %2456 ], [ %1790, %2439 ]
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %2472, 3
  %2474 = icmp eq i32 %2473, 3
  br i1 %2474, label %2553, label %2475

; <label>:2475                                    ; preds = %2464
  %2476 = and i32 %2472, 16
  %2477 = icmp ne i32 %2476, 0
  %2478 = select i1 %2477, float %2092, float 0.000000e+00
  %2479 = icmp eq i32 %2473, 0
  br i1 %2479, label %2480, label %2508

; <label>:2480                                    ; preds = %2475
  %2481 = and i32 %2472, 64
  %2482 = icmp ne i32 %2481, 0
  %2483 = select i1 %2482, float %2092, float 0.000000e+00
  %2484 = fsub fast float %2312, %2465
  %2485 = fsub fast float %2313, %2466
  %2486 = fsub fast float %2314, %2467
  %2487 = fmul fast float %2478, %2484
  %2488 = fmul fast float %2478, %2485
  %2489 = fmul fast float %2478, %2486
  %2490 = fadd fast float %2487, %2465
  %2491 = fadd fast float %2488, %2466
  %2492 = fadd fast float %2489, %2467
  %2493 = fsub fast float %2298, %1791
  %2494 = fmul fast float %2478, %2493
  %2495 = fadd fast float %2494, %1791
  %2496 = fsub fast float %2440, %2468
  %2497 = fsub fast float %2441, %2469
  %2498 = fsub fast float %2442, %2470
  %2499 = fmul fast float %2483, %2496
  %2500 = fmul fast float %2483, %2497
  %2501 = fmul fast float %2483, %2498
  %2502 = fadd fast float %2499, %2468
  %2503 = fadd fast float %2500, %2469
  %2504 = fadd fast float %2501, %2470
  %2505 = fsub fast float %2455, %1794
  %2506 = fmul fast float %2478, %2505
  %2507 = fadd fast float %2506, %1794
  br label %2553

; <label>:2508                                    ; preds = %2475
  %2509 = icmp eq i32 %2473, 1
  br i1 %2509, label %2510, label %2523

; <label>:2510                                    ; preds = %2508
  %2511 = fadd fast float %2312, -1.000000e+00
  %2512 = fadd fast float %2313, -1.000000e+00
  %2513 = fadd fast float %2314, -1.000000e+00
  %2514 = fmul fast float %2478, %2511
  %2515 = fmul fast float %2478, %2512
  %2516 = fmul fast float %2478, %2513
  %2517 = fadd fast float %2514, 1.000000e+00
  %2518 = fadd fast float %2515, 1.000000e+00
  %2519 = fadd fast float %2516, 1.000000e+00
  %2520 = fmul fast float %2517, %2465
  %2521 = fmul fast float %2518, %2466
  %2522 = fmul fast float %2519, %2467
  br label %2553

; <label>:2523                                    ; preds = %2508
  %2524 = icmp eq i32 %2473, 2
  br i1 %2524, label %2525, label %2553

; <label>:2525                                    ; preds = %2523
  %2526 = call float @dx.op.unary.f32(i32 24, float %2312)  ; Sqrt(value)
  %2527 = call float @dx.op.unary.f32(i32 24, float %2313)  ; Sqrt(value)
  %2528 = call float @dx.op.unary.f32(i32 24, float %2314)  ; Sqrt(value)
  %2529 = fadd fast float %2526, -5.000000e-01
  %2530 = fadd fast float %2527, -5.000000e-01
  %2531 = fadd fast float %2528, -5.000000e-01
  %2532 = fmul fast float %2529, %2478
  %2533 = fmul fast float %2530, %2478
  %2534 = fmul fast float %2531, %2478
  %2535 = fadd fast float %2532, 5.000000e-01
  %2536 = fadd fast float %2533, 5.000000e-01
  %2537 = fadd fast float %2534, 5.000000e-01
  %2538 = fmul fast float %2535, 2.000000e+00
  %2539 = fsub fast float 1.000000e+00, %2538
  %2540 = fmul fast float %2539, %2465
  %2541 = fadd fast float %2540, %2538
  %2542 = fmul fast float %2541, %2465
  %2543 = fmul fast float %2536, 2.000000e+00
  %2544 = fsub fast float 1.000000e+00, %2543
  %2545 = fmul fast float %2544, %2466
  %2546 = fadd fast float %2545, %2543
  %2547 = fmul fast float %2546, %2466
  %2548 = fmul fast float %2537, 2.000000e+00
  %2549 = fsub fast float 1.000000e+00, %2548
  %2550 = fmul fast float %2549, %2467
  %2551 = fadd fast float %2550, %2548
  %2552 = fmul fast float %2551, %2467
  br label %2553

; <label>:2553                                    ; preds = %2525, %2523, %2510, %2480, %2464
  %2554 = phi float [ %2465, %2464 ], [ %2542, %2525 ], [ %2465, %2523 ], [ %2520, %2510 ], [ %2490, %2480 ]
  %2555 = phi float [ %2466, %2464 ], [ %2547, %2525 ], [ %2466, %2523 ], [ %2521, %2510 ], [ %2491, %2480 ]
  %2556 = phi float [ %2467, %2464 ], [ %2552, %2525 ], [ %2467, %2523 ], [ %2522, %2510 ], [ %2492, %2480 ]
  %2557 = phi float [ %2468, %2464 ], [ %2468, %2525 ], [ %2468, %2523 ], [ %2468, %2510 ], [ %2502, %2480 ]
  %2558 = phi float [ %2469, %2464 ], [ %2469, %2525 ], [ %2469, %2523 ], [ %2469, %2510 ], [ %2503, %2480 ]
  %2559 = phi float [ %2470, %2464 ], [ %2470, %2525 ], [ %2470, %2523 ], [ %2470, %2510 ], [ %2504, %2480 ]
  %2560 = phi float [ %1791, %2464 ], [ %1791, %2525 ], [ %1791, %2523 ], [ %1791, %2510 ], [ %2495, %2480 ]
  %2561 = phi float [ %1794, %2464 ], [ %1794, %2525 ], [ %1794, %2523 ], [ %1794, %2510 ], [ %2507, %2480 ]
  %2562 = and i32 %2472, 12
  %2563 = icmp eq i32 %2562, 12
  br i1 %2563, label %2636, label %2564

; <label>:2564                                    ; preds = %2553
  %2565 = and i32 %2472, 2097184
  %2566 = icmp eq i32 %2565, 2097184
  %2567 = select i1 %2566, float %2092, float 0.000000e+00
  %2568 = and i32 %2472, 4194336
  %2569 = icmp eq i32 %2568, 4194336
  %2570 = select i1 %2569, float %2092, float 0.000000e+00
  %2571 = and i32 %2472, 8388640
  %2572 = icmp eq i32 %2571, 8388640
  %2573 = select i1 %2572, float %2092, float 0.000000e+00
  %2574 = icmp eq i32 %2562, 0
  br i1 %2574, label %2575, label %2588

; <label>:2575                                    ; preds = %2564
  %2576 = fsub fast float %2393, %1783
  %2577 = fsub fast float %2394, %1784
  %2578 = fmul fast float %2567, %2576
  %2579 = fmul fast float %2567, %2577
  %2580 = fadd fast float %2578, %1783
  %2581 = fadd fast float %2579, %1784
  %2582 = fsub fast float %2395, %1793
  %2583 = fmul fast float %2570, %2582
  %2584 = fadd fast float %2583, %1793
  %2585 = fsub fast float %2392, %1792
  %2586 = fmul fast float %2573, %2585
  %2587 = fadd fast float %2586, %1792
  br label %2636

; <label>:2588                                    ; preds = %2564
  %2589 = icmp eq i32 %2562, 4
  br i1 %2589, label %2590, label %2622

; <label>:2590                                    ; preds = %2588
  %2591 = fmul fast float %2567, %2393
  %2592 = fmul fast float %2567, %2394
  %2593 = fadd fast float %2591, %1783
  %2594 = fadd fast float %2592, %1784
  %2595 = call float @dx.op.binary.f32(i32 36, float %1793, float %2395)  ; FMin(a,b)
  %2596 = fsub fast float %2595, %1793
  %2597 = fmul fast float %2596, %2570
  %2598 = fadd fast float %2597, %1793
  %2599 = fadd fast float %2392, %1792
  %2600 = fmul fast float %2599, 0x3FF337FAE0000000
  %2601 = fmul fast float %1792, %1792
  %2602 = fmul fast float %2392, %2392
  %2603 = fadd fast float %2602, %2601
  %2604 = fmul fast float %2603, 0x3FE5152B00000000
  %2605 = fmul fast float %1792, 0xBFCC1F85E0000000
  %2606 = fmul fast float %2605, %2392
  %2607 = fadd fast float %2606, 0xBFE1363700000000
  %2608 = fadd fast float %2607, %2600
  %2609 = fsub fast float %2608, %2604
  %2610 = fmul fast float %2599, 0x3FBA6F0D00000000
  %2611 = fmul fast float %2603, 0x3FD0432880000000
  %2612 = fmul fast float %1792, 0xBFEF110800000000
  %2613 = fmul fast float %2612, %2392
  %2614 = fadd fast float %2613, 1.000000e+00
  %2615 = fsub fast float %2614, %2610
  %2616 = fadd fast float %2615, %2611
  %2617 = fdiv fast float %2609, %2616
  %2618 = call float @dx.op.unary.f32(i32 7, float %2617)  ; Saturate(value)
  %2619 = fsub fast float %2618, %1792
  %2620 = fmul fast float %2619, %2573
  %2621 = fadd fast float %2620, %1792
  br label %2636

; <label>:2622                                    ; preds = %2588
  %2623 = icmp eq i32 %2562, 8
  br i1 %2623, label %2624, label %2636

; <label>:2624                                    ; preds = %2622
  %2625 = fmul fast float %2567, %2393
  %2626 = fmul fast float %2567, %2394
  %2627 = fadd fast float %2625, %1783
  %2628 = fadd fast float %2626, %1784
  %2629 = call float @dx.op.binary.f32(i32 36, float %1793, float %2395)  ; FMin(a,b)
  %2630 = fsub fast float %2629, %1793
  %2631 = fmul fast float %2630, %2570
  %2632 = fadd fast float %2631, %1793
  %2633 = fsub fast float %2392, %1792
  %2634 = fmul fast float %2573, %2633
  %2635 = fadd fast float %2634, %1792
  br label %2636

; <label>:2636                                    ; preds = %2624, %2622, %2590, %2575, %2553, %2091, %1795, %1782
  %2637 = phi float [ %1783, %2553 ], [ %1783, %2091 ], [ %1783, %1782 ], [ %2627, %2624 ], [ %1783, %2622 ], [ %2593, %2590 ], [ %2580, %2575 ], [ %1783, %1795 ]
  %2638 = phi float [ %1784, %2553 ], [ %1784, %2091 ], [ %1784, %1782 ], [ %2628, %2624 ], [ %1784, %2622 ], [ %2594, %2590 ], [ %2581, %2575 ], [ %1784, %1795 ]
  %2639 = phi float [ %2554, %2553 ], [ %1785, %2091 ], [ %1785, %1782 ], [ %2554, %2624 ], [ %2554, %2622 ], [ %2554, %2590 ], [ %2554, %2575 ], [ %1785, %1795 ]
  %2640 = phi float [ %2555, %2553 ], [ %1786, %2091 ], [ %1786, %1782 ], [ %2555, %2624 ], [ %2555, %2622 ], [ %2555, %2590 ], [ %2555, %2575 ], [ %1786, %1795 ]
  %2641 = phi float [ %2556, %2553 ], [ %1787, %2091 ], [ %1787, %1782 ], [ %2556, %2624 ], [ %2556, %2622 ], [ %2556, %2590 ], [ %2556, %2575 ], [ %1787, %1795 ]
  %2642 = phi float [ %2557, %2553 ], [ %1788, %2091 ], [ %1788, %1782 ], [ %2557, %2624 ], [ %2557, %2622 ], [ %2557, %2590 ], [ %2557, %2575 ], [ %1788, %1795 ]
  %2643 = phi float [ %2558, %2553 ], [ %1789, %2091 ], [ %1789, %1782 ], [ %2558, %2624 ], [ %2558, %2622 ], [ %2558, %2590 ], [ %2558, %2575 ], [ %1789, %1795 ]
  %2644 = phi float [ %2559, %2553 ], [ %1790, %2091 ], [ %1790, %1782 ], [ %2559, %2624 ], [ %2559, %2622 ], [ %2559, %2590 ], [ %2559, %2575 ], [ %1790, %1795 ]
  %2645 = phi float [ %2560, %2553 ], [ %1791, %2091 ], [ %1791, %1782 ], [ %2560, %2624 ], [ %2560, %2622 ], [ %2560, %2590 ], [ %2560, %2575 ], [ %1791, %1795 ]
  %2646 = phi float [ %1792, %2553 ], [ %1792, %2091 ], [ %1792, %1782 ], [ %2635, %2624 ], [ %1792, %2622 ], [ %2621, %2590 ], [ %2587, %2575 ], [ %1792, %1795 ]
  %2647 = phi float [ %1793, %2553 ], [ %1793, %2091 ], [ %1793, %1782 ], [ %2632, %2624 ], [ %1793, %2622 ], [ %2598, %2590 ], [ %2584, %2575 ], [ %1793, %1795 ]
  %2648 = phi float [ %2561, %2553 ], [ %1794, %2091 ], [ %1794, %1782 ], [ %2561, %2624 ], [ %2561, %2622 ], [ %2561, %2590 ], [ %2561, %2575 ], [ %1794, %1795 ]
  br i1 %409, label %3490, label %2649

; <label>:2649                                    ; preds = %2636
  %2650 = icmp ult i32 %460, 4
  %2651 = add i32 %45, 72
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = add i32 %45, 76
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = or i32 %2656, %2653
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %3490, label %2659

; <label>:2659                                    ; preds = %2649
  %2660 = and i32 %2653, 262144
  %2661 = icmp ne i32 %2660, 0
  %2662 = select i1 %2661, float %48, float 1.000000e+00
  %2663 = select i1 %2661, float %49, float 0.000000e+00
  %2664 = select i1 %2661, float %50, float 0.000000e+00
  %2665 = select i1 %2661, float %51, float 1.000000e+00
  %2666 = select i1 %2661, float %52, float %73
  %2667 = select i1 %2661, float %53, float %74
  %2668 = add i32 %45, 332
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = lshr i32 %2670, 16
  %2672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2671)  ; LegacyF16ToF32(value)
  %2673 = fmul fast float %2672, 0x3F50624DE0000000
  %2674 = add i32 %45, 136
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = lshr i32 %2676, 16
  %2678 = and i32 %2677, 255
  %2679 = lshr i32 %2676, 24
  %2680 = add i32 %45, 340
  %2681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2680, i32 undef)  ; BufferLoad(srv,index,wot)
  %2682 = extractvalue %dx.types.ResRet.i32 %2681, 0
  %2683 = and i32 %2682, 65535
  %2684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2683)  ; LegacyF16ToF32(value)
  %2685 = lshr i32 %2682, 16
  %2686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2685)  ; LegacyF16ToF32(value)
  %2687 = add i32 %45, 80
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = lshr i32 %2689, 22
  %2691 = shl nuw nsw i32 %2690, 5
  %2692 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2691)  ; LegacyF16ToF32(value)
  %2693 = shl i32 %2689, 4
  %2694 = and i32 %2693, 32752
  %2695 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2694)  ; LegacyF16ToF32(value)
  %2696 = lshr i32 %2689, 7
  %2697 = and i32 %2696, 32752
  %2698 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2697)  ; LegacyF16ToF32(value)
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 3
  %2701 = fmul fast float %2700, 1.000000e+03
  %2702 = fmul fast float %399, %2701
  %2703 = call float @dx.op.unary.f32(i32 22, float %2702)  ; Frc(value)
  %2704 = fadd fast float %2703, %389
  %2705 = fmul fast float %400, %2701
  %2706 = call float @dx.op.unary.f32(i32 22, float %2705)  ; Frc(value)
  %2707 = fadd fast float %2706, %391
  %2708 = fmul fast float %2673, %2701
  %2709 = call float @dx.op.unary.f32(i32 22, float %2708)  ; Frc(value)
  %2710 = fmul fast float %2709, 0x401921FB60000000
  %2711 = fadd fast float %2710, %2692
  %2712 = call float @dx.op.unary.f32(i32 13, float %2711)  ; Sin(value)
  %2713 = call float @dx.op.unary.f32(i32 12, float %2711)  ; Cos(value)
  %2714 = fsub fast float -0.000000e+00, %2712
  %2715 = fadd fast float %2666, -5.000000e-01
  %2716 = fadd fast float %2667, -5.000000e-01
  %2717 = fmul fast float %2684, %2715
  %2718 = fmul fast float %2686, %2716
  %2719 = fadd fast float %2717, 5.000000e-01
  %2720 = fadd fast float %2718, 5.000000e-01
  %2721 = fmul fast float %2695, %2719
  %2722 = fmul fast float %2698, %2720
  %2723 = fmul fast float %2713, %2721
  %2724 = call float @dx.op.tertiary.f32(i32 46, float %2714, float %2722, float %2723)  ; FMad(a,b,c)
  %2725 = fmul fast float %2712, %2721
  %2726 = call float @dx.op.tertiary.f32(i32 46, float %2713, float %2722, float %2725)  ; FMad(a,b,c)
  %2727 = fadd fast float %2704, %2724
  %2728 = fadd fast float %2707, %2726
  %2729 = icmp ugt i32 %2678, 1
  %2730 = icmp ugt i32 %2676, 33554431
  %2731 = or i1 %2730, %2729
  br i1 %2731, label %2732, label %2757

; <label>:2732                                    ; preds = %2659
  %2733 = add i32 %45, 276
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = lshr i32 %2735, 16
  %2737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2736)  ; LegacyF16ToF32(value)
  %2738 = fmul fast float %2700, %2737
  %2739 = call float @dx.op.unary.f32(i32 22, float %2738)  ; Frc(value)
  %2740 = mul nuw nsw i32 %2678, %2679
  %2741 = uitofp i32 %2740 to float
  %2742 = fmul fast float %2739, %2741
  %2743 = call float @dx.op.unary.f32(i32 27, float %2742)  ; Round_ni(value)
  %2744 = fptoui float %2743 to i32
  %2745 = urem i32 %2744, %2678
  %2746 = udiv i32 %2744, %2679
  %2747 = call float @dx.op.unary.f32(i32 22, float %2727)  ; Frc(value)
  %2748 = call float @dx.op.unary.f32(i32 22, float %2728)  ; Frc(value)
  %2749 = uitofp i32 %2745 to float
  %2750 = uitofp i32 %2746 to float
  %2751 = fadd fast float %2747, %2749
  %2752 = fadd fast float %2748, %2750
  %2753 = uitofp i32 %2678 to float
  %2754 = uitofp i32 %2679 to float
  %2755 = fdiv fast float %2751, %2753
  %2756 = fdiv fast float %2752, %2754
  br label %2757

; <label>:2757                                    ; preds = %2732, %2659
  %2758 = phi float [ %2755, %2732 ], [ %2727, %2659 ]
  %2759 = phi float [ %2756, %2732 ], [ %2728, %2659 ]
  %2760 = and i32 %2653, 16777216
  %2761 = icmp eq i32 %2760, 0
  br i1 %2761, label %2871, label %2762

; <label>:2762                                    ; preds = %2757
  %2763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2764 = extractvalue %dx.types.CBufRet.f32 %2763, 0
  %2765 = extractvalue %dx.types.CBufRet.f32 %2763, 1
  %2766 = extractvalue %dx.types.CBufRet.f32 %2763, 2
  %2767 = fadd fast float %2764, %144
  %2768 = fadd fast float %2765, %145
  %2769 = fadd fast float %2766, %146
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = icmp eq i32 %46, 65535
  br i1 %2773, label %2868, label %2774

; <label>:2774                                    ; preds = %2762
  %2775 = lshr i32 %46, 1
  %2776 = shl i32 %2775, 2
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = and i32 %46, 1
  %2780 = icmp ne i32 %2779, 0
  %2781 = lshr i32 %2778, 16
  %2782 = and i32 %2778, 65535
  %2783 = select i1 %2780, i32 %2781, i32 %2782
  %2784 = icmp eq i32 %2783, 65535
  br i1 %2784, label %2864, label %2785

; <label>:2785                                    ; preds = %2774
  %2786 = mul nuw nsw i32 %2783, 40
  %2787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.f32 %2787, 0
  %2789 = extractvalue %dx.types.ResRet.f32 %2787, 1
  %2790 = extractvalue %dx.types.ResRet.f32 %2787, 2
  %2791 = add nuw nsw i32 %2786, 12
  %2792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2791, i32 undef)  ; BufferLoad(srv,index,wot)
  %2793 = extractvalue %dx.types.ResRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.ResRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.ResRet.f32 %2792, 2
  %2796 = add nuw nsw i32 %2786, 24
  %2797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2796, i32 undef)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.f32 %2797, 0
  %2799 = extractvalue %dx.types.ResRet.f32 %2797, 1
  %2800 = extractvalue %dx.types.ResRet.f32 %2797, 2
  %2801 = add nuw nsw i32 %2786, 36
  %2802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 0
  %2804 = fsub fast float %2767, %2788
  %2805 = fsub fast float %2768, %2789
  %2806 = fsub fast float %2769, %2790
  %2807 = fmul fast float %2803, %2804
  %2808 = fmul fast float %2803, %2805
  %2809 = fmul fast float %2803, %2806
  %2810 = call float @dx.op.unary.f32(i32 27, float %2807)  ; Round_ni(value)
  %2811 = call float @dx.op.unary.f32(i32 27, float %2808)  ; Round_ni(value)
  %2812 = call float @dx.op.unary.f32(i32 27, float %2809)  ; Round_ni(value)
  %2813 = fadd fast float %2810, 5.000000e-01
  %2814 = fadd fast float %2811, 5.000000e-01
  %2815 = fadd fast float %2812, 5.000000e-01
  %2816 = fmul fast float %2813, %2793
  %2817 = fmul fast float %2814, %2794
  %2818 = fmul fast float %2815, %2795
  %2819 = shl i32 %46, 2
  %2820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.i32 %2820, 0
  %2822 = add i32 %2821, 0
  %2823 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2822, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2824 = call float @dx.op.unary.f32(i32 22, float %2816)  ; Frc(value)
  %2825 = call float @dx.op.unary.f32(i32 22, float %2817)  ; Frc(value)
  %2826 = call float @dx.op.unary.f32(i32 22, float %2818)  ; Frc(value)
  %2827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2823, %dx.types.Handle %40, float %2824, float %2825, float %2826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  %2829 = extractvalue %dx.types.ResRet.f32 %2827, 1
  %2830 = extractvalue %dx.types.ResRet.f32 %2827, 2
  %2831 = fmul fast float %2828, 1.023000e+03
  %2832 = fmul fast float %2829, 1.023000e+03
  %2833 = fmul fast float %2830, 1.023000e+03
  %2834 = fadd fast float %2831, 5.000000e-01
  %2835 = fadd fast float %2832, 5.000000e-01
  %2836 = fadd fast float %2833, 5.000000e-01
  %2837 = call float @dx.op.unary.f32(i32 27, float %2834)  ; Round_ni(value)
  %2838 = call float @dx.op.unary.f32(i32 27, float %2835)  ; Round_ni(value)
  %2839 = call float @dx.op.unary.f32(i32 27, float %2836)  ; Round_ni(value)
  %2840 = fsub fast float %2807, %2810
  %2841 = fsub fast float %2808, %2811
  %2842 = fsub fast float %2809, %2812
  %2843 = fmul fast float %2840, 7.500000e-01
  %2844 = fmul fast float %2841, 7.500000e-01
  %2845 = fmul fast float %2842, 7.500000e-01
  %2846 = fadd fast float %2810, 1.250000e-01
  %2847 = fadd fast float %2846, %2843
  %2848 = fadd fast float %2847, %2837
  %2849 = fadd fast float %2811, 1.250000e-01
  %2850 = fadd fast float %2849, %2844
  %2851 = fadd fast float %2850, %2838
  %2852 = fadd fast float %2812, 1.250000e-01
  %2853 = fadd fast float %2852, %2845
  %2854 = fadd fast float %2853, %2839
  %2855 = fmul fast float %2848, %2798
  %2856 = fmul fast float %2851, %2799
  %2857 = fmul fast float %2854, %2800
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = add i32 %2859, 0
  %2861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2861, %dx.types.Handle %38, float %2855, float %2856, float %2857, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2863 = extractvalue %dx.types.ResRet.f32 %2862, 0
  br label %2864

; <label>:2864                                    ; preds = %2785, %2774
  %2865 = phi float [ %2863, %2785 ], [ -1.000000e+00, %2774 ]
  %2866 = fadd fast float %2865, %2772
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  br label %2868

; <label>:2868                                    ; preds = %2864, %2762
  %2869 = phi float [ %2867, %2864 ], [ %2772, %2762 ]
  %2870 = fmul fast float %2869, %455
  br label %2871

; <label>:2871                                    ; preds = %2868, %2757
  %2872 = phi float [ %2870, %2868 ], [ %455, %2757 ]
  %2873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2874 = extractvalue %dx.types.ResRet.i32 %2873, 0
  %2875 = and i32 %2874, 256
  %2876 = icmp eq i32 %2875, 0
  br i1 %2876, label %2923, label %2877

; <label>:2877                                    ; preds = %2871
  %2878 = add i32 %45, 500
  %2879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.i32 %2879, 0
  %2881 = add i32 %2880, 0
  %2882 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2881, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2882, %dx.types.Handle %82, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2884 = extractvalue %dx.types.ResRet.f32 %2883, 0
  %2885 = add i32 %45, 148
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = shl i32 %2887, 4
  %2889 = and i32 %2888, 32752
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = lshr i32 %2887, 7
  %2892 = and i32 %2891, 32752
  %2893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2892)  ; LegacyF16ToF32(value)
  %2894 = fsub fast float 1.000000e+00, %2872
  %2895 = call float @dx.op.binary.f32(i32 35, float %2894, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2896 = bitcast float %2872 to i32
  %2897 = sitofp i32 %2896 to float
  %2898 = fadd fast float %2897, 0xC1CFBF8940000000
  %2899 = fmul fast float %2893, %2898
  %2900 = fadd fast float %2899, 0x41CFBF8940000000
  %2901 = fptosi float %2900 to i32
  %2902 = bitcast i32 %2901 to float
  %2903 = bitcast float %2895 to i32
  %2904 = sitofp i32 %2903 to float
  %2905 = fadd fast float %2904, 0xC1CFBF8940000000
  %2906 = fmul fast float %2905, %2893
  %2907 = fadd fast float %2906, 0x41CFBF8940000000
  %2908 = fptosi float %2907 to i32
  %2909 = bitcast i32 %2908 to float
  %2910 = fmul fast float %2902, %2890
  %2911 = fmul fast float %2909, %2890
  %2912 = fsub fast float %2895, %2910
  %2913 = fadd fast float %2911, %2895
  %2914 = call float @dx.op.unary.f32(i32 7, float %2912)  ; Saturate(value)
  %2915 = call float @dx.op.unary.f32(i32 7, float %2913)  ; Saturate(value)
  %2916 = fsub fast float %2884, %2914
  %2917 = fsub fast float %2915, %2914
  %2918 = bitcast float %2917 to i32
  %2919 = sub nsw i32 2129859010, %2918
  %2920 = bitcast i32 %2919 to float
  %2921 = fmul fast float %2920, %2916
  %2922 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  br label %2923

; <label>:2923                                    ; preds = %2877, %2871
  %2924 = phi float [ %2922, %2877 ], [ %2872, %2871 ]
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 128
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %2945, label %2929

; <label>:2929                                    ; preds = %2923
  %2930 = add i32 %45, 484
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = add i32 %2932, 0
  %2934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2934, %dx.types.Handle %82, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2936 = extractvalue %dx.types.ResRet.f32 %2935, 0
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 524288
  %2940 = icmp ne i32 %2939, 0
  %2941 = fcmp fast ogt float %2936, 0x3FE0101020000000
  %2942 = select i1 %2941, float 1.000000e+00, float 0.000000e+00
  %2943 = select i1 %2940, float %2942, float %2936
  %2944 = fmul fast float %2943, %2924
  br label %2945

; <label>:2945                                    ; preds = %2929, %2923
  %2946 = phi float [ %2944, %2929 ], [ %2924, %2923 ]
  %2947 = fcmp fast ult float %2946, 0x3F70101020000000
  br i1 %2947, label %3490, label %2948

; <label>:2948                                    ; preds = %2945
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 16
  %2952 = icmp eq i32 %2951, 0
  br i1 %2952, label %3151, label %2953

; <label>:2953                                    ; preds = %2948
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = add i32 %45, 436
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = add i32 %2958, 0
  %2960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2960, %dx.types.Handle %81, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2962 = extractvalue %dx.types.ResRet.f32 %2961, 0
  %2963 = extractvalue %dx.types.ResRet.f32 %2961, 1
  %2964 = extractvalue %dx.types.ResRet.f32 %2961, 2
  %2965 = extractvalue %dx.types.ResRet.f32 %2961, 3
  %2966 = and i32 %2955, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = lshr i32 %2955, 8
  %2969 = and i32 %2968, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = fmul fast float %2965, %2967
  %2972 = fadd fast float %2971, %2970
  %2973 = fmul fast float %2972, 0x3F70101000000000
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = and i32 %2975, 512
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %2986, label %2978

; <label>:2978                                    ; preds = %2953
  %2979 = add i32 %45, 516
  %2980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2979, i32 undef)  ; BufferLoad(srv,index,wot)
  %2981 = extractvalue %dx.types.ResRet.i32 %2980, 0
  %2982 = add i32 %2981, 0
  %2983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2982, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2984 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2983, %dx.types.Handle %82, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  br label %2986

; <label>:2986                                    ; preds = %2978, %2953
  %2987 = phi float [ %2985, %2978 ], [ 1.000000e+00, %2953 ]
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 33554432
  %2991 = icmp eq i32 %2990, 0
  br i1 %2991, label %3098, label %2992

; <label>:2992                                    ; preds = %2986
  %2993 = add i32 %45, 272
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = and i32 %2995, 65535
  %2997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2996)  ; LegacyF16ToF32(value)
  %2998 = lshr i32 %2995, 16
  %2999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2998)  ; LegacyF16ToF32(value)
  %3000 = add i32 %45, 276
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = and i32 %3002, 65535
  %3004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3003)  ; LegacyF16ToF32(value)
  %3005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %3006 = extractvalue %dx.types.ResRet.i32 %3005, 0
  %3007 = lshr i32 %3006, 24
  %3008 = uitofp i32 %3007 to float
  %3009 = fmul fast float %3008, 0x3F70101020000000
  %3010 = and i32 %3006, 255
  %3011 = uitofp i32 %3010 to float
  %3012 = fmul fast float %3011, 0x3F70101020000000
  %3013 = lshr i32 %3006, 8
  %3014 = and i32 %3013, 255
  %3015 = uitofp i32 %3014 to float
  %3016 = fmul fast float %3015, 0x3F70101020000000
  %3017 = lshr i32 %3006, 16
  %3018 = and i32 %3017, 255
  %3019 = uitofp i32 %3018 to float
  %3020 = fmul fast float %3019, 0x3F70101020000000
  %3021 = add i32 %45, 268
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3021, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = lshr i32 %3023, 24
  %3025 = uitofp i32 %3024 to float
  %3026 = fmul fast float %3025, 0x3F70101020000000
  %3027 = and i32 %3023, 255
  %3028 = uitofp i32 %3027 to float
  %3029 = fmul fast float %3028, 0x3F70101020000000
  %3030 = lshr i32 %3023, 8
  %3031 = and i32 %3030, 255
  %3032 = uitofp i32 %3031 to float
  %3033 = fmul fast float %3032, 0x3F70101020000000
  %3034 = lshr i32 %3023, 16
  %3035 = and i32 %3034, 255
  %3036 = uitofp i32 %3035 to float
  %3037 = fmul fast float %3036, 0x3F70101020000000
  %3038 = bitcast float %2962 to i32
  %3039 = ashr i32 %3038, 1
  %3040 = sub nsw i32 1597463174, %3039
  %3041 = bitcast i32 %3040 to float
  %3042 = fmul fast float %2962, 5.000000e-01
  %3043 = fmul fast float %3041, %3041
  %3044 = fmul fast float %3043, %3042
  %3045 = fsub fast float 1.500000e+00, %3044
  %3046 = fmul fast float %3041, %2962
  %3047 = fmul fast float %3046, %3045
  %3048 = bitcast float %2963 to i32
  %3049 = ashr i32 %3048, 1
  %3050 = sub nsw i32 1597463174, %3049
  %3051 = bitcast i32 %3050 to float
  %3052 = fmul fast float %2963, 5.000000e-01
  %3053 = fmul fast float %3051, %3051
  %3054 = fmul fast float %3053, %3052
  %3055 = fsub fast float 1.500000e+00, %3054
  %3056 = fmul fast float %3051, %2963
  %3057 = fmul fast float %3056, %3055
  %3058 = bitcast float %2964 to i32
  %3059 = ashr i32 %3058, 1
  %3060 = sub nsw i32 1597463174, %3059
  %3061 = bitcast i32 %3060 to float
  %3062 = fmul fast float %2964, 5.000000e-01
  %3063 = fmul fast float %3061, %3061
  %3064 = fmul fast float %3063, %3062
  %3065 = fsub fast float 1.500000e+00, %3064
  %3066 = fmul fast float %3061, %2964
  %3067 = fmul fast float %3066, %3065
  %3068 = fsub fast float %3047, %3029
  %3069 = fsub fast float %3057, %3033
  %3070 = fsub fast float %3067, %3037
  %3071 = fmul fast float %3068, %2997
  %3072 = fmul fast float %3069, %2999
  %3073 = fmul fast float %3070, %3004
  %3074 = fadd fast float %3071, %3012
  %3075 = fadd fast float %3072, %3016
  %3076 = fadd fast float %3073, %3020
  %3077 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3078 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3079 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3080 = fmul fast float %3077, %3077
  %3081 = fmul fast float %3078, %3078
  %3082 = fmul fast float %3079, %3079
  %3083 = fsub fast float %3080, %2962
  %3084 = fsub fast float %3081, %2963
  %3085 = fsub fast float %3082, %2964
  %3086 = fmul fast float %3083, %2987
  %3087 = fmul fast float %3084, %2987
  %3088 = fmul fast float %3085, %2987
  %3089 = fadd fast float %3086, %2962
  %3090 = fadd fast float %3087, %2963
  %3091 = fadd fast float %3088, %2964
  %3092 = fadd fast float %3009, %2973
  %3093 = fsub fast float %3092, %3026
  %3094 = call float @dx.op.unary.f32(i32 7, float %3093)  ; Saturate(value)
  %3095 = fsub fast float %3094, %2973
  %3096 = fmul fast float %3095, %2987
  %3097 = fadd fast float %3096, %2973
  br label %3151

; <label>:3098                                    ; preds = %2986
  %3099 = and i32 %2989, 134217728
  %3100 = icmp eq i32 %3099, 0
  br i1 %3100, label %3135, label %3101

; <label>:3101                                    ; preds = %3098
  %3102 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3103 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3104 = call float @dx.op.unary.f32(i32 24, float %384)  ; Sqrt(value)
  %3105 = fadd fast float %3102, -5.000000e-01
  %3106 = fadd fast float %3103, -5.000000e-01
  %3107 = fadd fast float %3104, -5.000000e-01
  %3108 = fmul fast float %3105, %2987
  %3109 = fmul fast float %3106, %2987
  %3110 = fmul fast float %3107, %2987
  %3111 = fadd fast float %3108, 5.000000e-01
  %3112 = fadd fast float %3109, 5.000000e-01
  %3113 = fadd fast float %3110, 5.000000e-01
  %3114 = call float @dx.op.unary.f32(i32 24, float %2962)  ; Sqrt(value)
  %3115 = call float @dx.op.unary.f32(i32 24, float %2963)  ; Sqrt(value)
  %3116 = call float @dx.op.unary.f32(i32 24, float %2964)  ; Sqrt(value)
  %3117 = fmul fast float %3111, 2.000000e+00
  %3118 = fsub fast float 1.000000e+00, %3117
  %3119 = fmul fast float %3118, %3114
  %3120 = fadd fast float %3119, %3117
  %3121 = fmul fast float %3120, %3114
  %3122 = fmul fast float %3112, 2.000000e+00
  %3123 = fsub fast float 1.000000e+00, %3122
  %3124 = fmul fast float %3123, %3115
  %3125 = fadd fast float %3124, %3122
  %3126 = fmul fast float %3125, %3115
  %3127 = fmul fast float %3113, 2.000000e+00
  %3128 = fsub fast float 1.000000e+00, %3127
  %3129 = fmul fast float %3128, %3116
  %3130 = fadd fast float %3129, %3127
  %3131 = fmul fast float %3130, %3116
  %3132 = fmul fast float %3121, %3121
  %3133 = fmul fast float %3126, %3126
  %3134 = fmul fast float %3131, %3131
  br label %3151

; <label>:3135                                    ; preds = %3098
  %3136 = fmul fast float %376, %376
  %3137 = fmul fast float %380, %380
  %3138 = fmul fast float %384, %384
  %3139 = fadd fast float %3136, -1.000000e+00
  %3140 = fadd fast float %3137, -1.000000e+00
  %3141 = fadd fast float %3138, -1.000000e+00
  %3142 = fmul fast float %2987, %3139
  %3143 = fmul fast float %2987, %3140
  %3144 = fmul fast float %2987, %3141
  %3145 = fadd fast float %3142, 1.000000e+00
  %3146 = fadd fast float %3143, 1.000000e+00
  %3147 = fadd fast float %3144, 1.000000e+00
  %3148 = fmul fast float %3145, %2962
  %3149 = fmul fast float %3146, %2963
  %3150 = fmul fast float %3147, %2964
  br label %3151

; <label>:3151                                    ; preds = %3135, %3101, %2992, %2948
  %3152 = phi float [ %3097, %2992 ], [ %2973, %3101 ], [ %2973, %3135 ], [ 0x3FA23C0BE0000000, %2948 ]
  %3153 = phi float [ %3089, %2992 ], [ %3132, %3101 ], [ %3148, %3135 ], [ 1.000000e+00, %2948 ]
  %3154 = phi float [ %3090, %2992 ], [ %3133, %3101 ], [ %3149, %3135 ], [ 1.000000e+00, %2948 ]
  %3155 = phi float [ %3091, %2992 ], [ %3134, %3101 ], [ %3150, %3135 ], [ 1.000000e+00, %2948 ]
  %3156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3157 = extractvalue %dx.types.CBufRet.i32 %3156, 1
  %3158 = and i32 %3157, 1
  %3159 = icmp ne i32 %3158, 0
  %3160 = add i32 %45, 356
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, 32
  %3164 = icmp ne i32 %3163, 0
  %3165 = and i1 %3159, %3164
  %3166 = select i1 %3165, float 1.000000e+00, float %3153
  %3167 = select i1 %3165, float 0x3FD3333340000000, float %3154
  %3168 = select i1 %3165, float 0x3FD3333340000000, float %3155
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = and i32 %3170, 32
  %3172 = icmp eq i32 %3171, 0
  br i1 %3172, label %3245, label %3173

; <label>:3173                                    ; preds = %3151
  %3174 = add i32 %45, 140
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = add i32 %45, 452
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = add i32 %3179, 0
  %3181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3181, %dx.types.Handle %81, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = extractvalue %dx.types.ResRet.f32 %3182, 1
  %3185 = extractvalue %dx.types.ResRet.f32 %3182, 2
  %3186 = extractvalue %dx.types.ResRet.f32 %3182, 3
  %3187 = and i32 %3176, 255
  %3188 = uitofp i32 %3187 to float
  %3189 = lshr i32 %3176, 8
  %3190 = and i32 %3189, 255
  %3191 = uitofp i32 %3190 to float
  %3192 = lshr i32 %3176, 16
  %3193 = and i32 %3192, 255
  %3194 = uitofp i32 %3193 to float
  %3195 = fmul fast float %3194, 0x3F70101000000000
  %3196 = fmul fast float %3183, %3188
  %3197 = fadd fast float %3196, %3191
  %3198 = fmul fast float %3197, 0x3F70101000000000
  %3199 = fadd fast float %3184, -5.000000e-01
  %3200 = fadd fast float %3186, -5.000000e-01
  %3201 = fmul fast float %3199, %3195
  %3202 = fmul fast float %3200, %3195
  %3203 = fadd fast float %3201, 5.000000e-01
  %3204 = fadd fast float %3202, 5.000000e-01
  %3205 = fmul fast float %3203, 2.000000e+00
  %3206 = fadd fast float %3205, -1.000000e+00
  %3207 = fmul fast float %3204, 2.000000e+00
  %3208 = fadd fast float %3207, -1.000000e+00
  %3209 = fadd fast float %3206, %3208
  %3210 = fmul fast float %3209, 5.000000e-01
  %3211 = fsub fast float %3206, %3208
  %3212 = fmul fast float %3211, 5.000000e-01
  %3213 = call float @dx.op.unary.f32(i32 6, float %3210)  ; FAbs(value)
  %3214 = fsub fast float 1.000000e+00, %3213
  %3215 = call float @dx.op.unary.f32(i32 6, float %3212)  ; FAbs(value)
  %3216 = fsub fast float %3214, %3215
  %3217 = call float @dx.op.dot3.f32(i32 55, float %3210, float %3212, float %3216, float %3210, float %3212, float %3216)  ; Dot3(ax,ay,az,bx,by,bz)
  %3218 = call float @dx.op.unary.f32(i32 25, float %3217)  ; Rsqrt(value)
  %3219 = fmul fast float %3210, %3218
  %3220 = fmul fast float %3212, %3218
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = and i32 %3222, 67108864
  %3224 = icmp eq i32 %3223, 0
  br i1 %3224, label %3241, label %3225

; <label>:3225                                    ; preds = %3173
  %3226 = add i32 %45, 328
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = and i32 %3228, 65535
  %3230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3229)  ; LegacyF16ToF32(value)
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 65535
  %3234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3233)  ; LegacyF16ToF32(value)
  %3235 = lshr i32 %3228, 16
  %3236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3235)  ; LegacyF16ToF32(value)
  %3237 = fsub fast float %3198, %3236
  %3238 = fmul fast float %3237, %3230
  %3239 = fadd fast float %3238, %3234
  %3240 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  br label %3241

; <label>:3241                                    ; preds = %3225, %3173
  %3242 = phi float [ %3240, %3225 ], [ %3198, %3173 ]
  %3243 = call float @dx.op.dot2.f32(i32 54, float %3219, float %3220, float %2662, float %2663)  ; Dot2(ax,ay,bx,by)
  %3244 = call float @dx.op.dot2.f32(i32 54, float %3219, float %3220, float %2664, float %2665)  ; Dot2(ax,ay,bx,by)
  br label %3245

; <label>:3245                                    ; preds = %3241, %3151
  %3246 = phi float [ %3242, %3241 ], [ 0x3FD6666660000000, %3151 ]
  %3247 = phi float [ %3243, %3241 ], [ 0.000000e+00, %3151 ]
  %3248 = phi float [ %3244, %3241 ], [ 0.000000e+00, %3151 ]
  %3249 = phi float [ %3185, %3241 ], [ 1.000000e+00, %3151 ]
  %3250 = add i32 %45, 208
  %3251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3250, i32 undef)  ; BufferLoad(srv,index,wot)
  %3252 = extractvalue %dx.types.ResRet.i32 %3251, 0
  %3253 = lshr i32 %3252, 22
  %3254 = shl nuw nsw i32 %3253, 5
  %3255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3254)  ; LegacyF16ToF32(value)
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = and i32 %3257, 64
  %3259 = icmp eq i32 %3258, 0
  br i1 %3259, label %3293, label %3260

; <label>:3260                                    ; preds = %3245
  %3261 = add i32 %45, 468
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = add i32 %3263, 0
  %3265 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3264, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 131072
  %3269 = icmp eq i32 %3268, 0
  %3270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3265, %dx.types.Handle %81, float %2758, float %2759, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  %3272 = extractvalue %dx.types.ResRet.f32 %3270, 1
  %3273 = extractvalue %dx.types.ResRet.f32 %3270, 2
  %3274 = fmul fast float %3271, %364
  %3275 = fmul fast float %3272, %367
  %3276 = fmul fast float %3273, %370
  br i1 %3269, label %3283, label %3277

; <label>:3277                                    ; preds = %3260
  %3278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3279 = extractvalue %dx.types.CBufRet.f32 %3278, 0
  %3280 = fmul fast float %3279, %3274
  %3281 = fmul fast float %3279, %3275
  %3282 = fmul fast float %3279, %3276
  br label %3283

; <label>:3283                                    ; preds = %3277, %3260
  %3284 = phi float [ %3280, %3277 ], [ %3274, %3260 ]
  %3285 = phi float [ %3281, %3277 ], [ %3275, %3260 ]
  %3286 = phi float [ %3282, %3277 ], [ %3276, %3260 ]
  %3287 = fmul fast float %3284, %3255
  %3288 = select i1 %218, float %3287, float %3284
  %3289 = call float @dx.op.dot3.f32(i32 55, float %3288, float %3285, float %3286, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3290 = select i1 %218, float 0.000000e+00, float %3284
  %3291 = select i1 %218, float %3289, float %3285
  %3292 = select i1 %218, float 0.000000e+00, float %3286
  br label %3293

; <label>:3293                                    ; preds = %3283, %3245
  %3294 = phi float [ %3290, %3283 ], [ 0.000000e+00, %3245 ]
  %3295 = phi float [ %3291, %3283 ], [ 0.000000e+00, %3245 ]
  %3296 = phi float [ %3292, %3283 ], [ 0.000000e+00, %3245 ]
  %3297 = add i32 %45, 144
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 255
  %3301 = uitofp i32 %3300 to float
  %3302 = lshr i32 %3299, 8
  %3303 = and i32 %3302, 255
  %3304 = uitofp i32 %3303 to float
  %3305 = call float @dx.op.dot3.f32(i32 55, float %3166, float %3167, float %3168, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = fmul fast float %3304, %3305
  %3307 = fadd fast float %3306, %3301
  %3308 = fmul fast float %3307, 0x3F70101020000000
  %3309 = call float @dx.op.unary.f32(i32 7, float %3308)  ; Saturate(value)
  br i1 %2650, label %3310, label %3318

; <label>:3310                                    ; preds = %3293
  %3311 = fsub fast float 1.000000e+00, %2946
  %3312 = fmul fast float %3311, %2639
  %3313 = fmul fast float %3311, %2640
  %3314 = fmul fast float %3311, %2641
  %3315 = fmul fast float %3311, %2642
  %3316 = fmul fast float %3311, %2643
  %3317 = fmul fast float %3311, %2644
  br label %3318

; <label>:3318                                    ; preds = %3310, %3293
  %3319 = phi float [ %3312, %3310 ], [ %2639, %3293 ]
  %3320 = phi float [ %3313, %3310 ], [ %2640, %3293 ]
  %3321 = phi float [ %3314, %3310 ], [ %2641, %3293 ]
  %3322 = phi float [ %3315, %3310 ], [ %2642, %3293 ]
  %3323 = phi float [ %3316, %3310 ], [ %2643, %3293 ]
  %3324 = phi float [ %3317, %3310 ], [ %2644, %3293 ]
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = and i32 %3326, 3
  %3328 = icmp eq i32 %3327, 3
  br i1 %3328, label %3407, label %3329

; <label>:3329                                    ; preds = %3318
  %3330 = and i32 %3326, 16
  %3331 = icmp ne i32 %3330, 0
  %3332 = select i1 %3331, float %2946, float 0.000000e+00
  %3333 = icmp eq i32 %3327, 0
  br i1 %3333, label %3334, label %3362

; <label>:3334                                    ; preds = %3329
  %3335 = and i32 %3326, 64
  %3336 = icmp ne i32 %3335, 0
  %3337 = select i1 %3336, float %2946, float 0.000000e+00
  %3338 = fsub fast float %3166, %3319
  %3339 = fsub fast float %3167, %3320
  %3340 = fsub fast float %3168, %3321
  %3341 = fmul fast float %3332, %3338
  %3342 = fmul fast float %3332, %3339
  %3343 = fmul fast float %3332, %3340
  %3344 = fadd fast float %3341, %3319
  %3345 = fadd fast float %3342, %3320
  %3346 = fadd fast float %3343, %3321
  %3347 = fsub fast float %3152, %2645
  %3348 = fmul fast float %3332, %3347
  %3349 = fadd fast float %3348, %2645
  %3350 = fsub fast float %3294, %3322
  %3351 = fsub fast float %3295, %3323
  %3352 = fsub fast float %3296, %3324
  %3353 = fmul fast float %3337, %3350
  %3354 = fmul fast float %3337, %3351
  %3355 = fmul fast float %3337, %3352
  %3356 = fadd fast float %3353, %3322
  %3357 = fadd fast float %3354, %3323
  %3358 = fadd fast float %3355, %3324
  %3359 = fsub fast float %3309, %2648
  %3360 = fmul fast float %3332, %3359
  %3361 = fadd fast float %3360, %2648
  br label %3407

; <label>:3362                                    ; preds = %3329
  %3363 = icmp eq i32 %3327, 1
  br i1 %3363, label %3364, label %3377

; <label>:3364                                    ; preds = %3362
  %3365 = fadd fast float %3166, -1.000000e+00
  %3366 = fadd fast float %3167, -1.000000e+00
  %3367 = fadd fast float %3168, -1.000000e+00
  %3368 = fmul fast float %3332, %3365
  %3369 = fmul fast float %3332, %3366
  %3370 = fmul fast float %3332, %3367
  %3371 = fadd fast float %3368, 1.000000e+00
  %3372 = fadd fast float %3369, 1.000000e+00
  %3373 = fadd fast float %3370, 1.000000e+00
  %3374 = fmul fast float %3371, %3319
  %3375 = fmul fast float %3372, %3320
  %3376 = fmul fast float %3373, %3321
  br label %3407

; <label>:3377                                    ; preds = %3362
  %3378 = icmp eq i32 %3327, 2
  br i1 %3378, label %3379, label %3407

; <label>:3379                                    ; preds = %3377
  %3380 = call float @dx.op.unary.f32(i32 24, float %3166)  ; Sqrt(value)
  %3381 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3382 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3383 = fadd fast float %3380, -5.000000e-01
  %3384 = fadd fast float %3381, -5.000000e-01
  %3385 = fadd fast float %3382, -5.000000e-01
  %3386 = fmul fast float %3383, %3332
  %3387 = fmul fast float %3384, %3332
  %3388 = fmul fast float %3385, %3332
  %3389 = fadd fast float %3386, 5.000000e-01
  %3390 = fadd fast float %3387, 5.000000e-01
  %3391 = fadd fast float %3388, 5.000000e-01
  %3392 = fmul fast float %3389, 2.000000e+00
  %3393 = fsub fast float 1.000000e+00, %3392
  %3394 = fmul fast float %3393, %3319
  %3395 = fadd fast float %3394, %3392
  %3396 = fmul fast float %3395, %3319
  %3397 = fmul fast float %3390, 2.000000e+00
  %3398 = fsub fast float 1.000000e+00, %3397
  %3399 = fmul fast float %3398, %3320
  %3400 = fadd fast float %3399, %3397
  %3401 = fmul fast float %3400, %3320
  %3402 = fmul fast float %3391, 2.000000e+00
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = fmul fast float %3403, %3321
  %3405 = fadd fast float %3404, %3402
  %3406 = fmul fast float %3405, %3321
  br label %3407

; <label>:3407                                    ; preds = %3379, %3377, %3364, %3334, %3318
  %3408 = phi float [ %3319, %3318 ], [ %3396, %3379 ], [ %3319, %3377 ], [ %3374, %3364 ], [ %3344, %3334 ]
  %3409 = phi float [ %3320, %3318 ], [ %3401, %3379 ], [ %3320, %3377 ], [ %3375, %3364 ], [ %3345, %3334 ]
  %3410 = phi float [ %3321, %3318 ], [ %3406, %3379 ], [ %3321, %3377 ], [ %3376, %3364 ], [ %3346, %3334 ]
  %3411 = phi float [ %3322, %3318 ], [ %3322, %3379 ], [ %3322, %3377 ], [ %3322, %3364 ], [ %3356, %3334 ]
  %3412 = phi float [ %3323, %3318 ], [ %3323, %3379 ], [ %3323, %3377 ], [ %3323, %3364 ], [ %3357, %3334 ]
  %3413 = phi float [ %3324, %3318 ], [ %3324, %3379 ], [ %3324, %3377 ], [ %3324, %3364 ], [ %3358, %3334 ]
  %3414 = phi float [ %2645, %3318 ], [ %2645, %3379 ], [ %2645, %3377 ], [ %2645, %3364 ], [ %3349, %3334 ]
  %3415 = phi float [ %2648, %3318 ], [ %2648, %3379 ], [ %2648, %3377 ], [ %2648, %3364 ], [ %3361, %3334 ]
  %3416 = and i32 %3326, 12
  %3417 = icmp eq i32 %3416, 12
  br i1 %3417, label %3490, label %3418

; <label>:3418                                    ; preds = %3407
  %3419 = and i32 %3326, 2097184
  %3420 = icmp eq i32 %3419, 2097184
  %3421 = select i1 %3420, float %2946, float 0.000000e+00
  %3422 = and i32 %3326, 4194336
  %3423 = icmp eq i32 %3422, 4194336
  %3424 = select i1 %3423, float %2946, float 0.000000e+00
  %3425 = and i32 %3326, 8388640
  %3426 = icmp eq i32 %3425, 8388640
  %3427 = select i1 %3426, float %2946, float 0.000000e+00
  %3428 = icmp eq i32 %3416, 0
  br i1 %3428, label %3429, label %3442

; <label>:3429                                    ; preds = %3418
  %3430 = fsub fast float %3247, %2637
  %3431 = fsub fast float %3248, %2638
  %3432 = fmul fast float %3421, %3430
  %3433 = fmul fast float %3421, %3431
  %3434 = fadd fast float %3432, %2637
  %3435 = fadd fast float %3433, %2638
  %3436 = fsub fast float %3249, %2647
  %3437 = fmul fast float %3424, %3436
  %3438 = fadd fast float %3437, %2647
  %3439 = fsub fast float %3246, %2646
  %3440 = fmul fast float %3427, %3439
  %3441 = fadd fast float %3440, %2646
  br label %3490

; <label>:3442                                    ; preds = %3418
  %3443 = icmp eq i32 %3416, 4
  br i1 %3443, label %3444, label %3476

; <label>:3444                                    ; preds = %3442
  %3445 = fmul fast float %3421, %3247
  %3446 = fmul fast float %3421, %3248
  %3447 = fadd fast float %3445, %2637
  %3448 = fadd fast float %3446, %2638
  %3449 = call float @dx.op.binary.f32(i32 36, float %2647, float %3249)  ; FMin(a,b)
  %3450 = fsub fast float %3449, %2647
  %3451 = fmul fast float %3450, %3424
  %3452 = fadd fast float %3451, %2647
  %3453 = fadd fast float %3246, %2646
  %3454 = fmul fast float %3453, 0x3FF337FAE0000000
  %3455 = fmul fast float %2646, %2646
  %3456 = fmul fast float %3246, %3246
  %3457 = fadd fast float %3456, %3455
  %3458 = fmul fast float %3457, 0x3FE5152B00000000
  %3459 = fmul fast float %2646, 0xBFCC1F85E0000000
  %3460 = fmul fast float %3459, %3246
  %3461 = fadd fast float %3460, 0xBFE1363700000000
  %3462 = fadd fast float %3461, %3454
  %3463 = fsub fast float %3462, %3458
  %3464 = fmul fast float %3453, 0x3FBA6F0D00000000
  %3465 = fmul fast float %3457, 0x3FD0432880000000
  %3466 = fmul fast float %2646, 0xBFEF110800000000
  %3467 = fmul fast float %3466, %3246
  %3468 = fadd fast float %3467, 1.000000e+00
  %3469 = fsub fast float %3468, %3464
  %3470 = fadd fast float %3469, %3465
  %3471 = fdiv fast float %3463, %3470
  %3472 = call float @dx.op.unary.f32(i32 7, float %3471)  ; Saturate(value)
  %3473 = fsub fast float %3472, %2646
  %3474 = fmul fast float %3473, %3427
  %3475 = fadd fast float %3474, %2646
  br label %3490

; <label>:3476                                    ; preds = %3442
  %3477 = icmp eq i32 %3416, 8
  br i1 %3477, label %3478, label %3490

; <label>:3478                                    ; preds = %3476
  %3479 = fmul fast float %3421, %3247
  %3480 = fmul fast float %3421, %3248
  %3481 = fadd fast float %3479, %2637
  %3482 = fadd fast float %3480, %2638
  %3483 = call float @dx.op.binary.f32(i32 36, float %2647, float %3249)  ; FMin(a,b)
  %3484 = fsub fast float %3483, %2647
  %3485 = fmul fast float %3484, %3424
  %3486 = fadd fast float %3485, %2647
  %3487 = fsub fast float %3246, %2646
  %3488 = fmul fast float %3427, %3487
  %3489 = fadd fast float %3488, %2646
  br label %3490

; <label>:3490                                    ; preds = %3478, %3476, %3444, %3429, %3407, %2945, %2649, %2636
  %3491 = phi float [ %2637, %3407 ], [ %2637, %2945 ], [ %2637, %2636 ], [ %2637, %2649 ], [ %3434, %3429 ], [ %3447, %3444 ], [ %2637, %3476 ], [ %3481, %3478 ]
  %3492 = phi float [ %2638, %3407 ], [ %2638, %2945 ], [ %2638, %2636 ], [ %2638, %2649 ], [ %3435, %3429 ], [ %3448, %3444 ], [ %2638, %3476 ], [ %3482, %3478 ]
  %3493 = phi float [ %3408, %3407 ], [ %2639, %2945 ], [ %2639, %2636 ], [ %2639, %2649 ], [ %3408, %3429 ], [ %3408, %3444 ], [ %3408, %3476 ], [ %3408, %3478 ]
  %3494 = phi float [ %3409, %3407 ], [ %2640, %2945 ], [ %2640, %2636 ], [ %2640, %2649 ], [ %3409, %3429 ], [ %3409, %3444 ], [ %3409, %3476 ], [ %3409, %3478 ]
  %3495 = phi float [ %3410, %3407 ], [ %2641, %2945 ], [ %2641, %2636 ], [ %2641, %2649 ], [ %3410, %3429 ], [ %3410, %3444 ], [ %3410, %3476 ], [ %3410, %3478 ]
  %3496 = phi float [ %3411, %3407 ], [ %2642, %2945 ], [ %2642, %2636 ], [ %2642, %2649 ], [ %3411, %3429 ], [ %3411, %3444 ], [ %3411, %3476 ], [ %3411, %3478 ]
  %3497 = phi float [ %3412, %3407 ], [ %2643, %2945 ], [ %2643, %2636 ], [ %2643, %2649 ], [ %3412, %3429 ], [ %3412, %3444 ], [ %3412, %3476 ], [ %3412, %3478 ]
  %3498 = phi float [ %3413, %3407 ], [ %2644, %2945 ], [ %2644, %2636 ], [ %2644, %2649 ], [ %3413, %3429 ], [ %3413, %3444 ], [ %3413, %3476 ], [ %3413, %3478 ]
  %3499 = phi float [ %3414, %3407 ], [ %2645, %2945 ], [ %2645, %2636 ], [ %2645, %2649 ], [ %3414, %3429 ], [ %3414, %3444 ], [ %3414, %3476 ], [ %3414, %3478 ]
  %3500 = phi float [ %2646, %3407 ], [ %2646, %2945 ], [ %2646, %2636 ], [ %2646, %2649 ], [ %3441, %3429 ], [ %3475, %3444 ], [ %2646, %3476 ], [ %3489, %3478 ]
  %3501 = phi float [ %2647, %3407 ], [ %2647, %2945 ], [ %2647, %2636 ], [ %2647, %2649 ], [ %3438, %3429 ], [ %3452, %3444 ], [ %2647, %3476 ], [ %3486, %3478 ]
  %3502 = phi float [ %3415, %3407 ], [ %2648, %2945 ], [ %2648, %2636 ], [ %2648, %2649 ], [ %3415, %3429 ], [ %3415, %3444 ], [ %3415, %3476 ], [ %3415, %3478 ]
  %3503 = add i32 %45, 408
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = bitcast i32 %3505 to float
  %3507 = fcmp fast oge float %3506, 0.000000e+00
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 0
  %3510 = select i1 %3507, float %3506, float %3509
  %3511 = call float @dx.op.dot2.f32(i32 54, float %3491, float %3492, float %3491, float %3492)  ; Dot2(ax,ay,bx,by)
  %3512 = fmul fast float %3511, 0x3FE3333340000000
  %3513 = fsub fast float 1.000000e+00, %3512
  %3514 = call float @dx.op.dot3.f32(i32 55, float %3491, float %3492, float %3513, float %3491, float %3492, float %3513)  ; Dot3(ax,ay,az,bx,by,bz)
  %3515 = call float @dx.op.unary.f32(i32 25, float %3514)  ; Rsqrt(value)
  %3516 = fmul fast float %3515, %3491
  %3517 = fmul fast float %3515, %3492
  %3518 = fmul fast float %3513, %3515
  %3519 = fmul fast float %3518, %94
  %3520 = fmul fast float %3518, %96
  %3521 = fmul fast float %3518, %98
  %3522 = fmul fast float %3516, %66
  %3523 = fmul fast float %3516, %67
  %3524 = fmul fast float %3516, %68
  %3525 = fadd fast float %3519, %3522
  %3526 = fadd fast float %3520, %3523
  %3527 = fadd fast float %3521, %3524
  %3528 = fmul fast float %108, %3517
  %3529 = fmul fast float %109, %3517
  %3530 = fmul fast float %110, %3517
  %3531 = fadd fast float %3525, %3528
  %3532 = fadd fast float %3526, %3529
  %3533 = fadd fast float %3527, %3530
  %3534 = call float @dx.op.dot3.f32(i32 55, float %3531, float %3532, float %3533, float %3531, float %3532, float %3533)  ; Dot3(ax,ay,az,bx,by,bz)
  %3535 = call float @dx.op.unary.f32(i32 25, float %3534)  ; Rsqrt(value)
  %3536 = fmul fast float %3531, %3535
  %3537 = fmul fast float %3532, %3535
  %3538 = fmul fast float %3533, %3535
  %3539 = and i32 %47, 1
  %3540 = icmp eq i32 %3539, 0
  br i1 %3540, label %3541, label %4053

; <label>:3541                                    ; preds = %3490
  %3542 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3543 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3544 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3545 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3546 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3547 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3548 = fadd fast float %3542, %144
  %3549 = fadd fast float %3543, %145
  %3550 = fadd fast float %3544, %146
  %3551 = fadd fast float %3545, %144
  %3552 = fadd fast float %3546, %145
  %3553 = fadd fast float %3547, %146
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.CBufRet.f32 %3554, 1
  %3557 = extractvalue %dx.types.CBufRet.f32 %3554, 2
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 2
  %3560 = extractvalue %dx.types.CBufRet.f32 %3558, 3
  %3561 = fmul fast float %3555, %85
  %3562 = fmul fast float %3561, %3559
  %3563 = fmul fast float %3556, %86
  %3564 = fmul fast float %3563, %3560
  %3565 = fptoui float %3562 to i32
  %3566 = fptoui float %3564 to i32
  %3567 = fadd fast float %3555, -1.000000e+00
  %3568 = fadd fast float %3556, -1.000000e+00
  %3569 = fptoui float %3567 to i32
  %3570 = fptoui float %3568 to i32
  %3571 = call i32 @dx.op.binary.i32(i32 40, i32 %3565, i32 %3569)  ; UMin(a,b)
  %3572 = call i32 @dx.op.binary.i32(i32 40, i32 %3566, i32 %3570)  ; UMin(a,b)
  %3573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3573, 2
  %3575 = extractvalue %dx.types.CBufRet.f32 %3573, 3
  %3576 = fmul fast float %3574, %80
  %3577 = fsub fast float %3576, %3575
  %3578 = fadd fast float %3557, -1.000000e+00
  %3579 = call float @dx.op.binary.f32(i32 36, float %3577, float %3578)  ; FMin(a,b)
  %3580 = fptoui float %3579 to i32
  %3581 = fptoui float %3555 to i32
  %3582 = fptoui float %3556 to i32
  %3583 = mul i32 %3580, %3582
  %3584 = add i32 %3583, %3572
  %3585 = mul i32 %3584, %3581
  %3586 = add i32 %3585, %3571
  %3587 = shl i32 %3586, 2
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = and i32 %3589, 1023
  %3591 = lshr i32 %3589, 10
  %3592 = icmp eq i32 %3590, 0
  br i1 %3592, label %4021, label %3593

; <label>:3593                                    ; preds = %3541
  %3594 = and i32 %3589, 1023
  br label %3595

; <label>:3595                                    ; preds = %3722, %3593
  %3596 = phi i32 [ %3672, %3722 ], [ 0, %3593 ]
  %3597 = phi float [ %3723, %3722 ], [ 0.000000e+00, %3593 ]
  %3598 = phi float [ %3724, %3722 ], [ %937, %3593 ]
  %3599 = phi float [ %3725, %3722 ], [ %3510, %3593 ]
  %3600 = phi float [ %3726, %3722 ], [ %3502, %3593 ]
  %3601 = phi float [ %3727, %3722 ], [ 0.000000e+00, %3593 ]
  %3602 = phi float [ %3728, %3722 ], [ 0.000000e+00, %3593 ]
  %3603 = phi float [ %3729, %3722 ], [ %3496, %3593 ]
  %3604 = phi float [ %3730, %3722 ], [ %3497, %3593 ]
  %3605 = phi float [ %3731, %3722 ], [ %3498, %3593 ]
  %3606 = phi float [ %3732, %3722 ], [ %3536, %3593 ]
  %3607 = phi float [ %3733, %3722 ], [ %3537, %3593 ]
  %3608 = phi float [ %3734, %3722 ], [ %3538, %3593 ]
  %3609 = phi float [ %3735, %3722 ], [ %3501, %3593 ]
  %3610 = phi float [ %3736, %3722 ], [ %3500, %3593 ]
  %3611 = phi float [ %3737, %3722 ], [ 0.000000e+00, %3593 ]
  %3612 = phi float [ %3738, %3722 ], [ %3499, %3593 ]
  %3613 = phi float [ %3739, %3722 ], [ %3493, %3593 ]
  %3614 = phi float [ %3740, %3722 ], [ %3494, %3593 ]
  %3615 = phi float [ %3741, %3722 ], [ %3495, %3593 ]
  %3616 = add nuw nsw i32 %3596, %3591
  %3617 = shl i32 %3616, 2
  %3618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.i32 %3618, 0
  %3620 = shl i32 %3619, 8
  %3621 = or i32 %3620, 48
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 1
  %3625 = extractvalue %dx.types.ResRet.f32 %3622, 2
  %3626 = extractvalue %dx.types.ResRet.f32 %3622, 3
  %3627 = or i32 %3620, 64
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.i32 %3628, 1
  %3631 = or i32 %3620, 80
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3635 = or i32 %3620, 96
  %3636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = extractvalue %dx.types.ResRet.f32 %3636, 3
  %3641 = or i32 %3620, 112
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3641, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3644 = or i32 %3620, 128
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = extractvalue %dx.types.ResRet.f32 %3645, 3
  %3650 = or i32 %3620, 144
  %3651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.ResRet.f32 %3651, 1
  %3654 = extractvalue %dx.types.ResRet.f32 %3651, 2
  %3655 = extractvalue %dx.types.ResRet.f32 %3651, 3
  %3656 = or i32 %3620, 160
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = extractvalue %dx.types.ResRet.f32 %3657, 3
  %3662 = or i32 %3620, 192
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = or i32 %3620, 208
  %3666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3668 = or i32 %3620, 248
  %3669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3668, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3669, 1
  %3672 = add nuw nsw i32 %3596, 1
  %3673 = bitcast float %3626 to i32
  %3674 = and i32 %3673, 512
  %3675 = icmp eq i32 %3674, 0
  %3676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3677 = extractvalue %dx.types.ResRet.f32 %3676, 0
  %3678 = extractvalue %dx.types.ResRet.f32 %3676, 1
  %3679 = extractvalue %dx.types.ResRet.f32 %3676, 2
  %3680 = extractvalue %dx.types.ResRet.f32 %3676, 3
  %3681 = call float @dx.op.dot4.f32(i32 56, float %3677, float %3678, float %3679, float %3680, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3682 = or i32 %3620, 16
  %3683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.ResRet.f32 %3683, 3
  %3688 = call float @dx.op.dot4.f32(i32 56, float %3684, float %3685, float %3686, float %3687, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3689 = or i32 %3620, 32
  %3690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.ResRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3690, 2
  %3694 = extractvalue %dx.types.ResRet.f32 %3690, 3
  %3695 = call float @dx.op.dot4.f32(i32 56, float %3691, float %3692, float %3693, float %3694, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3696 = call float @dx.op.unary.f32(i32 27, float %3681)  ; Round_ni(value)
  %3697 = call float @dx.op.unary.f32(i32 6, float %3696)  ; FAbs(value)
  %3698 = call float @dx.op.unary.f32(i32 27, float %3688)  ; Round_ni(value)
  %3699 = call float @dx.op.unary.f32(i32 6, float %3698)  ; FAbs(value)
  %3700 = call float @dx.op.unary.f32(i32 6, float %3695)  ; FAbs(value)
  %3701 = call float @dx.op.unary.f32(i32 27, float %3700)  ; Round_ni(value)
  %3702 = fadd fast float %3699, %3697
  %3703 = fadd fast float %3702, %3701
  %3704 = fcmp fast oeq float %3703, 0.000000e+00
  %3705 = call float @dx.op.dot4.f32(i32 56, float %3677, float %3678, float %3679, float %3680, float %3548, float %3549, float %3550, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3706 = call float @dx.op.dot4.f32(i32 56, float %3684, float %3685, float %3686, float %3687, float %3548, float %3549, float %3550, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3707 = call float @dx.op.dot4.f32(i32 56, float %3677, float %3678, float %3679, float %3680, float %3551, float %3552, float %3553, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3708 = call float @dx.op.dot4.f32(i32 56, float %3684, float %3685, float %3686, float %3687, float %3551, float %3552, float %3553, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3709 = fsub fast float %3705, %3681
  %3710 = fsub fast float %3707, %3681
  %3711 = fsub fast float %3706, %3688
  %3712 = fsub fast float %3708, %3688
  %3713 = call float @dx.op.dot3.f32(i32 55, float %3623, float %3624, float %3625, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3715 = extractvalue %dx.types.CBufRet.f32 %3714, 2
  %3716 = fadd fast float %3715, %3713
  %3717 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3714, 0
  %3719 = fcmp fast ogt float %3717, %3718
  %3720 = and i1 %3704, %3719
  %3721 = and i1 %3675, %3720
  br i1 %3721, label %3743, label %3722

; <label>:3722                                    ; preds = %4007, %3824, %3743, %3595
  %3723 = phi float [ %3597, %3743 ], [ %3827, %3824 ], [ %3827, %4007 ], [ %3597, %3595 ]
  %3724 = phi float [ %3598, %3743 ], [ %3598, %3824 ], [ %3982, %4007 ], [ %3598, %3595 ]
  %3725 = phi float [ %3599, %3743 ], [ %3599, %3824 ], [ %3981, %4007 ], [ %3599, %3595 ]
  %3726 = phi float [ %3600, %3743 ], [ %3600, %3824 ], [ %3979, %4007 ], [ %3600, %3595 ]
  %3727 = phi float [ %3601, %3743 ], [ %3601, %3824 ], [ %3951, %4007 ], [ %3601, %3595 ]
  %3728 = phi float [ %3602, %3743 ], [ %3602, %3824 ], [ %3949, %4007 ], [ %3602, %3595 ]
  %3729 = phi float [ %3603, %3743 ], [ %3603, %3824 ], [ %4017, %4007 ], [ %3603, %3595 ]
  %3730 = phi float [ %3604, %3743 ], [ %3604, %3824 ], [ %4018, %4007 ], [ %3604, %3595 ]
  %3731 = phi float [ %3605, %3743 ], [ %3605, %3824 ], [ %4019, %4007 ], [ %3605, %3595 ]
  %3732 = phi float [ %3606, %3743 ], [ %3606, %3824 ], [ %3930, %4007 ], [ %3606, %3595 ]
  %3733 = phi float [ %3607, %3743 ], [ %3607, %3824 ], [ %3931, %4007 ], [ %3607, %3595 ]
  %3734 = phi float [ %3608, %3743 ], [ %3608, %3824 ], [ %3932, %4007 ], [ %3608, %3595 ]
  %3735 = phi float [ %3609, %3743 ], [ %3609, %3824 ], [ %3959, %4007 ], [ %3609, %3595 ]
  %3736 = phi float [ %3610, %3743 ], [ %3610, %3824 ], [ %3956, %4007 ], [ %3610, %3595 ]
  %3737 = phi float [ %3611, %3743 ], [ %3611, %3824 ], [ %3953, %4007 ], [ %3611, %3595 ]
  %3738 = phi float [ %3612, %3743 ], [ %3612, %3824 ], [ %3947, %4007 ], [ %3612, %3595 ]
  %3739 = phi float [ %3613, %3743 ], [ %3613, %3824 ], [ %3942, %4007 ], [ %3613, %3595 ]
  %3740 = phi float [ %3614, %3743 ], [ %3614, %3824 ], [ %3943, %4007 ], [ %3614, %3595 ]
  %3741 = phi float [ %3615, %3743 ], [ %3615, %3824 ], [ %3944, %4007 ], [ %3615, %3595 ]
  %3742 = icmp eq i32 %3672, %3594
  br i1 %3742, label %4020, label %3595

; <label>:3743                                    ; preds = %3595
  %3744 = extractvalue %dx.types.ResRet.f32 %3642, 3
  %3745 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3746 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3747 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3748 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3749 = extractvalue %dx.types.ResRet.i32 %3628, 3
  %3750 = extractvalue %dx.types.ResRet.i32 %3628, 2
  %3751 = add i32 %3749, 0
  %3752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3751, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3754 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3752, %dx.types.Handle %3753, float %3681, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3709, float %3711, float undef, float %3710, float %3712, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3755 = extractvalue %dx.types.ResRet.f32 %3754, 0
  %3756 = fmul fast float %3755, %3748
  %3757 = fadd fast float %3756, %3747
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3681, %3637
  %3760 = call float @dx.op.tertiary.f32(i32 46, float %3638, float %3688, float %3759)  ; FMad(a,b,c)
  %3761 = fadd fast float %3760, %3746
  %3762 = fmul fast float %3681, %3639
  %3763 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3688, float %3762)  ; FMad(a,b,c)
  %3764 = fadd fast float %3763, %3745
  %3765 = fmul fast float %3709, %3637
  %3766 = call float @dx.op.tertiary.f32(i32 46, float %3638, float %3711, float %3765)  ; FMad(a,b,c)
  %3767 = fmul fast float %3709, %3639
  %3768 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3711, float %3767)  ; FMad(a,b,c)
  %3769 = fmul fast float %3710, %3637
  %3770 = call float @dx.op.tertiary.f32(i32 46, float %3638, float %3712, float %3769)  ; FMad(a,b,c)
  %3771 = fmul fast float %3710, %3639
  %3772 = call float @dx.op.tertiary.f32(i32 46, float %3640, float %3712, float %3771)  ; FMad(a,b,c)
  %3773 = add i32 %3750, 0
  %3774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3773, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3774, %dx.types.Handle %3753, float %3761, float %3764, float undef, float undef, i32 0, i32 0, i32 undef, float %3766, float %3768, float undef, float %3770, float %3772, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = and i32 %3673, 1024
  %3778 = icmp ne i32 %3777, 0
  %3779 = fcmp fast ogt float %3776, 0x3FE0101020000000
  %3780 = uitofp i1 %3779 to float
  %3781 = select i1 %3778, float %3780, float %3776
  %3782 = and i32 %3673, 8192
  %3783 = icmp ne i32 %3782, 0
  %3784 = select i1 %3783, float %3744, float 1.000000e+00
  %3785 = fmul fast float %3681, 2.000000e+00
  %3786 = fadd fast float %3785, -1.000000e+00
  %3787 = call float @dx.op.unary.f32(i32 6, float %3786)  ; FAbs(value)
  %3788 = fmul fast float %3787, %3670
  %3789 = fsub fast float %3788, %3670
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3791 = fmul fast float %3688, 2.000000e+00
  %3792 = fadd fast float %3791, -1.000000e+00
  %3793 = call float @dx.op.unary.f32(i32 6, float %3792)  ; FAbs(value)
  %3794 = fmul fast float %3793, %3671
  %3795 = fsub fast float %3794, %3671
  %3796 = call float @dx.op.unary.f32(i32 7, float %3795)  ; Saturate(value)
  %3797 = fmul fast float %3700, %3633
  %3798 = fsub fast float %3797, %3633
  %3799 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3800 = fmul fast float %3758, %3784
  %3801 = fmul fast float %3800, %3755
  %3802 = fmul fast float %3801, %3790
  %3803 = fmul fast float %3802, %3781
  %3804 = fmul fast float %3803, %3796
  %3805 = fmul fast float %3804, %3799
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 1
  %3808 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3809 = fsub fast float %3717, %3808
  %3810 = fmul fast float %3809, %3807
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fmul fast float %3805, %3634
  %3813 = fadd fast float %3805, %3634
  %3814 = fmul fast float %3813, %3643
  %3815 = fsub fast float %3814, %3643
  %3816 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3817 = and i32 %3673, 128
  %3818 = icmp ne i32 %3817, 0
  %3819 = select i1 %3818, float %3816, float %3812
  %3820 = fmul fast float %3819, %3811
  %3821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3822 = extractvalue %dx.types.CBufRet.f32 %3821, 0
  %3823 = fcmp fast ugt float %3820, %3822
  br i1 %3823, label %3824, label %3722

; <label>:3824                                    ; preds = %3743
  %3825 = select i1 %3783, float %3820, float 0.000000e+00
  %3826 = fadd fast float %3825, %3597
  %3827 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  br i1 %3783, label %3722, label %3828

; <label>:3828                                    ; preds = %3824
  %3829 = and i32 %3673, 4
  %3830 = and i32 %3673, 8
  %3831 = add i32 %3629, 0
  %3832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3831, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3833 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3834 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3832, %dx.types.Handle %3833, float %3761, float %3764, float undef, float undef, i32 0, i32 0, i32 undef, float %3766, float %3768, float undef, float %3770, float %3772, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3835 = extractvalue %dx.types.ResRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.ResRet.f32 %3834, 1
  %3837 = extractvalue %dx.types.ResRet.f32 %3834, 2
  %3838 = extractvalue %dx.types.ResRet.f32 %3834, 3
  %3839 = bitcast float %3655 to i32
  %3840 = and i32 %3839, 255
  %3841 = uitofp i32 %3840 to float
  %3842 = lshr i32 %3839, 8
  %3843 = and i32 %3842, 255
  %3844 = uitofp i32 %3843 to float
  %3845 = fmul fast float %3838, %3841
  %3846 = fadd fast float %3845, %3844
  %3847 = fmul fast float %3846, 0x3F70101000000000
  %3848 = add i32 %3630, 0
  %3849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3848, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3850 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3849, %dx.types.Handle %3833, float %3761, float %3764, float undef, float undef, i32 0, i32 0, i32 undef, float %3766, float %3768, float undef, float %3770, float %3772, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3854 = extractvalue %dx.types.ResRet.f32 %3850, 3
  %3855 = bitcast float %3649 to i32
  %3856 = and i32 %3855, 255
  %3857 = uitofp i32 %3856 to float
  %3858 = lshr i32 %3855, 8
  %3859 = and i32 %3858, 255
  %3860 = uitofp i32 %3859 to float
  %3861 = lshr i32 %3855, 16
  %3862 = and i32 %3861, 255
  %3863 = uitofp i32 %3862 to float
  %3864 = fmul fast float %3863, 0x3F70101000000000
  %3865 = fmul fast float %3851, %3857
  %3866 = fadd fast float %3865, %3860
  %3867 = fmul fast float %3866, 0x3F70101000000000
  %3868 = fadd fast float %3852, -5.000000e-01
  %3869 = fadd fast float %3854, -5.000000e-01
  %3870 = fmul fast float %3868, %3864
  %3871 = fmul fast float %3869, %3864
  %3872 = fadd fast float %3870, 5.000000e-01
  %3873 = fadd fast float %3871, 5.000000e-01
  %3874 = fmul fast float %3835, %3658
  %3875 = fmul fast float %3836, %3659
  %3876 = fmul fast float %3837, %3660
  %3877 = fmul fast float %3872, 2.000000e+00
  %3878 = fadd fast float %3877, -1.000000e+00
  %3879 = fmul fast float %3873, 2.000000e+00
  %3880 = fadd fast float %3879, -1.000000e+00
  %3881 = fadd fast float %3878, %3880
  %3882 = fmul fast float %3881, 5.000000e-01
  %3883 = fsub fast float %3878, %3880
  %3884 = fmul fast float %3883, 5.000000e-01
  %3885 = call float @dx.op.unary.f32(i32 6, float %3882)  ; FAbs(value)
  %3886 = fsub fast float 1.000000e+00, %3885
  %3887 = call float @dx.op.unary.f32(i32 6, float %3884)  ; FAbs(value)
  %3888 = fsub fast float %3886, %3887
  %3889 = call float @dx.op.dot3.f32(i32 55, float %3882, float %3884, float %3888, float %3882, float %3884, float %3888)  ; Dot3(ax,ay,az,bx,by,bz)
  %3890 = call float @dx.op.unary.f32(i32 25, float %3889)  ; Rsqrt(value)
  %3891 = fmul fast float %3882, %3890
  %3892 = fmul fast float %3884, %3890
  %3893 = fmul fast float %3890, %3888
  %3894 = fmul fast float %3893, %3623
  %3895 = fmul fast float %3893, %3624
  %3896 = fmul fast float %3893, %3625
  %3897 = fmul fast float %3891, %3646
  %3898 = fmul fast float %3891, %3647
  %3899 = fmul fast float %3891, %3648
  %3900 = fadd fast float %3897, %3894
  %3901 = fadd fast float %3898, %3895
  %3902 = fadd fast float %3899, %3896
  %3903 = fmul fast float %3892, %3652
  %3904 = fmul fast float %3892, %3653
  %3905 = fmul fast float %3892, %3654
  %3906 = fadd fast float %3900, %3903
  %3907 = fadd fast float %3901, %3904
  %3908 = fadd fast float %3902, %3905
  %3909 = call float @dx.op.dot3.f32(i32 55, float %3906, float %3907, float %3908, float %3906, float %3907, float %3908)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = call float @dx.op.unary.f32(i32 25, float %3909)  ; Rsqrt(value)
  %3911 = fmul fast float %3906, %3910
  %3912 = fmul fast float %3907, %3910
  %3913 = fmul fast float %3908, %3910
  %3914 = icmp ne i32 %3830, 0
  %3915 = select i1 %3914, float 1.000000e+00, float 0.000000e+00
  %3916 = fmul fast float %3820, %3915
  %3917 = and i32 %3673, 1
  %3918 = icmp eq i32 %3917, 0
  br i1 %3918, label %3919, label %3923

; <label>:3919                                    ; preds = %3828
  %3920 = fsub fast float %3911, %3606
  %3921 = fsub fast float %3912, %3607
  %3922 = fsub fast float %3913, %3608
  br label %3923

; <label>:3923                                    ; preds = %3919, %3828
  %3924 = phi float [ %3920, %3919 ], [ %3911, %3828 ]
  %3925 = phi float [ %3921, %3919 ], [ %3912, %3828 ]
  %3926 = phi float [ %3922, %3919 ], [ %3913, %3828 ]
  %3927 = fmul float %3926, %3916
  %3928 = fmul float %3925, %3916
  %3929 = fmul float %3924, %3916
  %3930 = fadd fast float %3929, %3606
  %3931 = fadd fast float %3928, %3607
  %3932 = fadd fast float %3927, %3608
  %3933 = icmp ne i32 %3829, 0
  %3934 = select i1 %3933, float 1.000000e+00, float 0.000000e+00
  %3935 = fmul fast float %3820, %3934
  %3936 = fsub fast float %3874, %3613
  %3937 = fsub fast float %3875, %3614
  %3938 = fsub fast float %3876, %3615
  %3939 = fmul fast float %3936, %3935
  %3940 = fmul fast float %3937, %3935
  %3941 = fmul fast float %3938, %3935
  %3942 = fadd fast float %3939, %3613
  %3943 = fadd fast float %3940, %3614
  %3944 = fadd fast float %3941, %3615
  %3945 = fsub fast float %3847, %3612
  %3946 = fmul fast float %3945, %3935
  %3947 = fadd fast float %3946, %3612
  %3948 = fmul fast float %3935, %3602
  %3949 = fsub fast float %3602, %3948
  %3950 = fmul fast float %3935, %3601
  %3951 = fsub fast float %3601, %3950
  %3952 = fadd fast float %3820, %3611
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = fsub fast float %3867, %3610
  %3955 = fmul fast float %3954, %3916
  %3956 = fadd fast float %3955, %3610
  %3957 = fsub fast float %3853, %3609
  %3958 = fmul fast float %3957, %3916
  %3959 = fadd fast float %3958, %3609
  %3960 = call float @dx.op.dot3.f32(i32 55, float %3874, float %3875, float %3876, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.CBufRet.f32 %3961, 1
  %3964 = fmul fast float %3963, %3960
  %3965 = fadd fast float %3964, %3962
  %3966 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3967 = bitcast float %3661 to i32
  %3968 = and i32 %3967, 65535
  %3969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3968)  ; LegacyF16ToF32(value)
  %3970 = lshr i32 %3967, 16
  %3971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3970)  ; LegacyF16ToF32(value)
  %3972 = fcmp fast oge float %3969, 0.000000e+00
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 0
  %3975 = select i1 %3972, float %3969, float %3974
  %3976 = fadd fast float %3975, %3971
  %3977 = fsub fast float %3966, %3600
  %3978 = fmul fast float %3977, %3820
  %3979 = fadd fast float %3978, %3600
  %3980 = fmul fast float %3976, %3820
  %3981 = call float @dx.op.binary.f32(i32 35, float %3599, float %3980)  ; FMax(a,b)
  %3982 = call float @dx.op.binary.f32(i32 35, float %3598, float %3820)  ; FMax(a,b)
  %3983 = and i32 %3673, 16
  %3984 = icmp eq i32 %3983, 0
  br i1 %3984, label %4007, label %3985

; <label>:3985                                    ; preds = %3923
  %3986 = bitcast float %3667 to i32
  %3987 = add i32 %3664, 0
  %3988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3987, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3989 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3988, %dx.types.Handle %3833, float %3761, float %3764, float undef, float undef, i32 0, i32 0, i32 undef, float %3766, float %3768, float undef, float %3770, float %3772, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3990 = extractvalue %dx.types.ResRet.f32 %3989, 0
  %3991 = extractvalue %dx.types.ResRet.f32 %3989, 1
  %3992 = extractvalue %dx.types.ResRet.f32 %3989, 2
  %3993 = and i32 %3986, 65535
  %3994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3993)  ; LegacyF16ToF32(value)
  %3995 = fmul fast float %3990, %3658
  %3996 = fmul fast float %3991, %3659
  %3997 = fmul fast float %3992, %3660
  %3998 = and i32 %3673, 16384
  %3999 = icmp ne i32 %3998, 0
  %4000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4001 = extractvalue %dx.types.CBufRet.f32 %4000, 0
  %4002 = select i1 %3999, float %4001, float 1.000000e+00
  %4003 = fmul fast float %4002, %3994
  %4004 = fmul fast float %3995, %4003
  %4005 = fmul fast float %3996, %4003
  %4006 = fmul fast float %3997, %4003
  br label %4007

; <label>:4007                                    ; preds = %3985, %3923
  %4008 = phi float [ %4004, %3985 ], [ 0.000000e+00, %3923 ]
  %4009 = phi float [ %4005, %3985 ], [ 0.000000e+00, %3923 ]
  %4010 = phi float [ %4006, %3985 ], [ 0.000000e+00, %3923 ]
  %4011 = fsub fast float %4008, %3603
  %4012 = fsub fast float %4009, %3604
  %4013 = fsub fast float %4010, %3605
  %4014 = fmul fast float %4011, %3820
  %4015 = fmul fast float %4012, %3820
  %4016 = fmul fast float %4013, %3820
  %4017 = fadd fast float %4014, %3603
  %4018 = fadd fast float %4015, %3604
  %4019 = fadd fast float %4016, %3605
  br label %3722

; <label>:4020                                    ; preds = %3722
  br label %4021

; <label>:4021                                    ; preds = %4020, %3541
  %4022 = phi float [ 0.000000e+00, %3541 ], [ %3723, %4020 ]
  %4023 = phi float [ %937, %3541 ], [ %3724, %4020 ]
  %4024 = phi float [ %3510, %3541 ], [ %3725, %4020 ]
  %4025 = phi float [ %3502, %3541 ], [ %3726, %4020 ]
  %4026 = phi float [ 0.000000e+00, %3541 ], [ %3727, %4020 ]
  %4027 = phi float [ 0.000000e+00, %3541 ], [ %3728, %4020 ]
  %4028 = phi float [ %3496, %3541 ], [ %3729, %4020 ]
  %4029 = phi float [ %3497, %3541 ], [ %3730, %4020 ]
  %4030 = phi float [ %3498, %3541 ], [ %3731, %4020 ]
  %4031 = phi float [ %3536, %3541 ], [ %3732, %4020 ]
  %4032 = phi float [ %3537, %3541 ], [ %3733, %4020 ]
  %4033 = phi float [ %3538, %3541 ], [ %3734, %4020 ]
  %4034 = phi float [ %3501, %3541 ], [ %3735, %4020 ]
  %4035 = phi float [ %3500, %3541 ], [ %3736, %4020 ]
  %4036 = phi float [ 0.000000e+00, %3541 ], [ %3737, %4020 ]
  %4037 = phi float [ %3499, %3541 ], [ %3738, %4020 ]
  %4038 = phi float [ %3493, %3541 ], [ %3739, %4020 ]
  %4039 = phi float [ %3494, %3541 ], [ %3740, %4020 ]
  %4040 = phi float [ %3495, %3541 ], [ %3741, %4020 ]
  %4041 = call float @dx.op.dot3.f32(i32 55, float %4031, float %4032, float %4033, float %4031, float %4032, float %4033)  ; Dot3(ax,ay,az,bx,by,bz)
  %4042 = call float @dx.op.unary.f32(i32 25, float %4041)  ; Rsqrt(value)
  %4043 = fmul fast float %4042, %4031
  %4044 = fmul fast float %4042, %4032
  %4045 = fmul fast float %4042, %4033
  %4046 = fadd fast float %4036, %937
  %4047 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4048 = call float @dx.op.dot3.f32(i32 55, float %4043, float %4044, float %4045, float %4043, float %4044, float %4045)  ; Dot3(ax,ay,az,bx,by,bz)
  %4049 = call float @dx.op.unary.f32(i32 25, float %4048)  ; Rsqrt(value)
  %4050 = fmul fast float %4049, %4043
  %4051 = fmul fast float %4049, %4044
  %4052 = fmul fast float %4049, %4045
  br label %4053

; <label>:4053                                    ; preds = %4021, %3490
  %4054 = phi float [ %4050, %4021 ], [ %3536, %3490 ]
  %4055 = phi float [ %4051, %4021 ], [ %3537, %3490 ]
  %4056 = phi float [ %4052, %4021 ], [ %3538, %3490 ]
  %4057 = phi float [ %4038, %4021 ], [ %3493, %3490 ]
  %4058 = phi float [ %4039, %4021 ], [ %3494, %3490 ]
  %4059 = phi float [ %4040, %4021 ], [ %3495, %3490 ]
  %4060 = phi float [ %4028, %4021 ], [ %3496, %3490 ]
  %4061 = phi float [ %4029, %4021 ], [ %3497, %3490 ]
  %4062 = phi float [ %4030, %4021 ], [ %3498, %3490 ]
  %4063 = phi float [ %4037, %4021 ], [ %3499, %3490 ]
  %4064 = phi float [ %4047, %4021 ], [ %937, %3490 ]
  %4065 = phi float [ %4035, %4021 ], [ %3500, %3490 ]
  %4066 = phi float [ %4034, %4021 ], [ %3501, %3490 ]
  %4067 = phi float [ %4027, %4021 ], [ 0.000000e+00, %3490 ]
  %4068 = phi float [ %4026, %4021 ], [ 0.000000e+00, %3490 ]
  %4069 = phi float [ %4022, %4021 ], [ 0.000000e+00, %3490 ]
  %4070 = phi float [ %4024, %4021 ], [ %3510, %3490 ]
  %4071 = phi float [ %4023, %4021 ], [ %937, %3490 ]
  %4072 = phi float [ %4025, %4021 ], [ %3502, %3490 ]
  %4073 = add i32 %45, 392
  %4074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.i32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.i32 %4074, 1
  %4077 = extractvalue %dx.types.ResRet.i32 %4074, 2
  %4078 = extractvalue %dx.types.ResRet.i32 %4074, 3
  %4079 = bitcast i32 %4075 to float
  %4080 = bitcast i32 %4076 to float
  %4081 = bitcast i32 %4077 to float
  %4082 = bitcast i32 %4078 to float
  %4083 = fsub fast float %4057, %4079
  %4084 = fsub fast float %4058, %4080
  %4085 = fsub fast float %4059, %4081
  %4086 = fmul fast float %4083, %178
  %4087 = fmul fast float %4084, %178
  %4088 = fmul fast float %4085, %178
  %4089 = fadd fast float %4086, %4079
  %4090 = fadd fast float %4087, %4080
  %4091 = fadd fast float %4088, %4081
  %4092 = fsub fast float %4064, %4082
  %4093 = fmul fast float %4092, %178
  %4094 = fadd fast float %4093, %4082
  %4095 = fadd fast float %4063, 0xBFB99999A0000000
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fmul fast float %4096, 0x3FF1C71C80000000
  %4098 = call float @dx.op.binary.f32(i32 36, float %4063, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4099 = fsub fast float 1.000000e+00, %4097
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4089, %4100
  %4102 = fmul fast float %4090, %4100
  %4103 = fmul fast float %4091, %4100
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = fmul fast float %4089, %4097
  %4108 = fmul fast float %4090, %4097
  %4109 = fmul fast float %4091, %4097
  %4110 = fadd fast float %4107, %4098
  %4111 = fadd fast float %4108, %4098
  %4112 = fadd fast float %4109, %4098
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.i32 %4117, 3
  %4119 = and i32 %4118, 8
  %4120 = icmp ne i32 %4119, 0
  %4121 = call float @dx.op.binary.f32(i32 35, float %4104, float %4089)  ; FMax(a,b)
  %4122 = call float @dx.op.binary.f32(i32 35, float %4105, float %4089)  ; FMax(a,b)
  %4123 = call float @dx.op.binary.f32(i32 35, float %4106, float %4089)  ; FMax(a,b)
  %4124 = call float @dx.op.dot3.f32(i32 55, float %4104, float %4105, float %4106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = select i1 %218, float %4089, float %4104
  %4126 = select i1 %218, float %4124, float %4105
  %4127 = select i1 %218, float 1.000000e+00, float %4106
  %4128 = select i1 %4120, float %4121, float %4125
  %4129 = select i1 %4120, float %4122, float %4126
  %4130 = select i1 %4120, float %4123, float %4127
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4135 = fadd fast float %4132, %144
  %4136 = fadd fast float %4133, %145
  %4137 = fadd fast float %4134, %146
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = fsub fast float %4135, %4139
  %4142 = fsub fast float %4136, %4140
  %4143 = fmul fast float %4141, %4141
  %4144 = fmul fast float %4142, %4142
  %4145 = fadd fast float %4143, %4144
  %4146 = call float @dx.op.unary.f32(i32 24, float %4145)  ; Sqrt(value)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4148 = fcmp fast olt float %4146, %4147
  br i1 %4148, label %4149, label %4216

; <label>:4149                                    ; preds = %4053
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4160 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4161 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4162 = fadd fast float %4159, %4135
  %4163 = fadd fast float %4160, %4136
  %4164 = fadd fast float %4161, %4137
  %4165 = fmul fast float %4162, %4151
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4153, float %4165)  ; FMad(a,b,c)
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4155, float %4166)  ; FMad(a,b,c)
  %4168 = fmul fast float %4162, %4156
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4158, float %4169)  ; FMad(a,b,c)
  %4171 = fsub fast float %4167, %4159
  %4172 = fsub fast float %4170, %4160
  %4173 = fsub fast float %4171, %4139
  %4174 = fadd fast float %4173, %4147
  %4175 = fsub fast float %4172, %4140
  %4176 = fadd fast float %4175, %4147
  %4177 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4178 = fmul fast float %4174, %4177
  %4179 = fmul fast float %4176, %4177
  %4180 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4181 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4182 = fsub fast float 1.000000e+00, %4180
  %4183 = fsub fast float 1.000000e+00, %4181
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = fcmp fast ugt float %4185, 0.000000e+00
  br i1 %4186, label %4187, label %4490

; <label>:4187                                    ; preds = %4149
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4190 = fmul fast float %4189, %4185
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4192 = fadd fast float %4191, %4190
  %4193 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4194 = fadd fast float %4192, %4161
  %4195 = fmul fast float %4167, %4155
  %4196 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4158, float %4195)  ; FMad(a,b,c)
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4193, float %4196)  ; FMad(a,b,c)
  %4198 = fsub fast float %4197, %4161
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4201 = fsub fast float %4198, %4200
  %4202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = fadd fast float %4207, %4203
  %4211 = fmul fast float %4210, 0x3F847AE140000000
  %4212 = fadd fast float %4208, %4204
  %4213 = fmul fast float %4212, 0x3F847AE140000000
  %4214 = fadd fast float %4209, %4205
  %4215 = fmul fast float %4214, 0x3F847AE140000000
  br label %4490

; <label>:4216                                    ; preds = %4053
  %4217 = and i32 %194, 1
  %4218 = icmp eq i32 %4217, 0
  br i1 %4218, label %4490, label %4219

; <label>:4219                                    ; preds = %4216
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 0
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.CBufRet.f32 %4220, 1
  %4227 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4228 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4229 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4230 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4231 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4232 = fadd fast float %4229, %4135
  %4233 = fadd fast float %4230, %4136
  %4234 = fadd fast float %4231, %4137
  %4235 = fmul fast float %4232, %4221
  %4236 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4223, float %4235)  ; FMad(a,b,c)
  %4237 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4225, float %4236)  ; FMad(a,b,c)
  %4238 = fmul fast float %4232, %4226
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4227, float %4238)  ; FMad(a,b,c)
  %4240 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4228, float %4239)  ; FMad(a,b,c)
  %4241 = fsub fast float %4237, %4229
  %4242 = fsub fast float %4240, %4230
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4246 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4247 = extractvalue %dx.types.CBufRet.f32 %4243, 3
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 0
  %4252 = extractvalue %dx.types.CBufRet.i32 %4250, 1
  %4253 = udiv i32 %4252, %4251
  %4254 = fsub fast float %4241, %4244
  %4255 = fsub fast float %4242, %4245
  %4256 = call float @dx.op.binary.f32(i32 35, float %4254, float 0.000000e+00)  ; FMax(a,b)
  %4257 = call float @dx.op.binary.f32(i32 35, float %4255, float 0.000000e+00)  ; FMax(a,b)
  %4258 = call float @dx.op.binary.f32(i32 36, float %4256, float %4246)  ; FMin(a,b)
  %4259 = call float @dx.op.binary.f32(i32 36, float %4257, float %4247)  ; FMin(a,b)
  %4260 = add i32 %4251, -1
  %4261 = add i32 %4253, -1
  %4262 = fmul fast float %4258, %4249
  %4263 = fmul fast float %4259, %4249
  %4264 = fptoui float %4262 to i32
  %4265 = fptoui float %4263 to i32
  %4266 = call i32 @dx.op.binary.i32(i32 40, i32 %4264, i32 %4260)  ; UMin(a,b)
  %4267 = call i32 @dx.op.binary.i32(i32 40, i32 %4265, i32 %4261)  ; UMin(a,b)
  %4268 = mul i32 %4267, %4251
  %4269 = add i32 %4268, %4266
  %4270 = shl i32 %4269, 2
  %4271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.i32 %4271, 0
  %4273 = icmp eq i32 %4272, -1
  br i1 %4273, label %4490, label %4274

; <label>:4274                                    ; preds = %4219
  %4275 = mul i32 %4272, 148
  %4276 = add i32 %4275, 4
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = add i32 %4275, 8
  %4280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = add i32 %4275, 36
  %4283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = add i32 %4275, 60
  %4286 = add i32 %4275, 92
  %4287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.i32 %4287, 0
  %4289 = add i32 %4275, 116
  %4290 = fsub fast float %4241, %4278
  %4291 = fsub fast float %4242, %4281
  %4292 = fmul fast float %4249, %4290
  %4293 = fmul fast float %4249, %4291
  %4294 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4295 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 2
  %4299 = call float @dx.op.unary.f32(i32 83, float %4294)  ; DerivCoarseX(value)
  %4300 = call float @dx.op.unary.f32(i32 83, float %4296)  ; DerivCoarseX(value)
  %4301 = call float @dx.op.unary.f32(i32 84, float %4294)  ; DerivCoarseY(value)
  %4302 = call float @dx.op.unary.f32(i32 84, float %4296)  ; DerivCoarseY(value)
  %4303 = fmul fast float %4299, %4298
  %4304 = fmul fast float %4300, %4298
  %4305 = fmul fast float %4301, %4298
  %4306 = fmul fast float %4302, %4298
  %4307 = call float @dx.op.dot2.f32(i32 54, float %4305, float %4306, float %4305, float %4306)  ; Dot2(ax,ay,bx,by)
  %4308 = call float @dx.op.dot2.f32(i32 54, float %4303, float %4304, float %4303, float %4304)  ; Dot2(ax,ay,bx,by)
  %4309 = call float @dx.op.binary.f32(i32 35, float %4308, float %4307)  ; FMax(a,b)
  %4310 = call float @dx.op.unary.f32(i32 23, float %4309)  ; Log(value)
  %4311 = fmul fast float %4310, 5.000000e-01
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4314 = fadd fast float %4313, %4311
  %4315 = call float @dx.op.binary.f32(i32 35, float %4314, float 0.000000e+00)  ; FMax(a,b)
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4318 = fadd fast float %4317, %4315
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4321 = fadd fast float %4318, %4320
  %4322 = add i32 %4288, 0
  %4323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4322, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4324 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4323, i32 0)  ; GetDimensions(handle,mipLevel)
  %4325 = extractvalue %dx.types.Dimensions %4324, 0
  %4326 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4325)  ; FirstbitLo(value)
  %4327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.i32 %4327, 1
  %4329 = sub nsw i32 %4328, %4326
  %4330 = sitofp i32 %4329 to float
  %4331 = fsub fast float %4321, %4330
  %4332 = call float @dx.op.binary.f32(i32 35, float %4331, float 0.000000e+00)  ; FMax(a,b)
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4323, %dx.types.Handle %37, float %4294, float %4296, float %4284, float undef, i32 0, i32 0, i32 undef, float %4332)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = fcmp ule float %4334, 0x3FE0101020000000
  %4336 = extractvalue %dx.types.CBufRet.i32 %4327, 0
  %4337 = and i32 %4336, 128
  %4338 = icmp ne i32 %4337, 0
  %4339 = and i1 %4335, %4338
  br i1 %4339, label %4490, label %4340

; <label>:4340                                    ; preds = %4274
  %4341 = add i32 %4275, 20
  %4342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = add i32 %4275, 24
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = add i32 %4275, 40
  %4348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = add i32 %4275, 96
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 2
  %4355 = fmul fast float %4354, %4294
  %4356 = fmul fast float %4354, %4296
  %4357 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4358 = fadd fast float %4355, %4357
  %4359 = fadd fast float %4356, %4357
  %4360 = add i32 %4352, 0
  %4361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4360, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4362 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4361, i32 0)  ; GetDimensions(handle,mipLevel)
  %4363 = extractvalue %dx.types.Dimensions %4362, 0
  %4364 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4363)  ; FirstbitLo(value)
  %4365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.i32 %4365, 1
  %4367 = sub nsw i32 %4366, %4364
  %4368 = sitofp i32 %4367 to float
  %4369 = fsub fast float %4318, %4368
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float 0.000000e+00)  ; FMax(a,b)
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4361, %dx.types.Handle %37, float %4358, float %4359, float %4349, float undef, i32 0, i32 0, i32 undef, float %4370)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = fmul fast float %4372, %4343
  %4374 = fadd fast float %4373, %4346
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4375, 2
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4383 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4384 = fadd fast float %4380, %4241
  %4385 = fadd fast float %4382, %4242
  %4386 = fadd fast float %4374, %4383
  %4387 = fmul fast float %4384, %4376
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4377, float %4387)  ; FMad(a,b,c)
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4378, float %4388)  ; FMad(a,b,c)
  %4390 = fsub fast float %4389, %4383
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 2
  %4393 = fsub fast float %4390, %4392
  %4394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.i32 %4394, 0
  %4396 = call i32 @dx.op.binary.i32(i32 40, i32 %4272, i32 %4395)  ; UMin(a,b)
  %4397 = mul i32 %4396, 36
  %4398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.i32 %4398, 0
  %4400 = add i32 %4397, 4
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = fmul fast float %4402, %4294
  %4404 = fmul fast float %4402, %4296
  %4405 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4406 = fadd fast float %4403, %4405
  %4407 = fadd fast float %4404, %4405
  %4408 = icmp eq i32 %4399, 0
  br i1 %4408, label %4477, label %4409

; <label>:4409                                    ; preds = %4340
  br label %4410

; <label>:4410                                    ; preds = %4467, %4409
  %4411 = phi float [ %4468, %4467 ], [ 0.000000e+00, %4409 ]
  %4412 = phi float [ %4469, %4467 ], [ 0.000000e+00, %4409 ]
  %4413 = phi float [ %4470, %4467 ], [ 0.000000e+00, %4409 ]
  %4414 = phi float [ %4471, %4467 ], [ 0.000000e+00, %4409 ]
  %4415 = phi float [ %4472, %4467 ], [ 0.000000e+00, %4409 ]
  %4416 = phi float [ %4473, %4467 ], [ 0.000000e+00, %4409 ]
  %4417 = phi i32 [ %4474, %4467 ], [ 0, %4409 ]
  %4418 = shl i32 %4417, 2
  %4419 = add i32 %4285, %4418
  %4420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4419, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = add i32 %4289, %4418
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = add i32 %4424, 0
  %4426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4425, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4427 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4426, i32 0)  ; GetDimensions(handle,mipLevel)
  %4428 = extractvalue %dx.types.Dimensions %4427, 0
  %4429 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4428)  ; FirstbitLo(value)
  %4430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.i32 %4430, 1
  %4432 = sub nsw i32 %4431, %4429
  %4433 = sitofp i32 %4432 to float
  %4434 = fsub fast float %4318, %4433
  %4435 = call float @dx.op.binary.f32(i32 35, float %4434, float 0.000000e+00)  ; FMax(a,b)
  %4436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4426, %dx.types.Handle %37, float %4406, float %4407, float %4421, float undef, i32 0, i32 0, i32 undef, float %4435)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = fcmp fast ogt float %4437, 0.000000e+00
  br i1 %4438, label %4439, label %4467

; <label>:4439                                    ; preds = %4410
  %4440 = add i32 %4400, %4418
  %4441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = and i32 %4442, 32767
  %4444 = mul nuw nsw i32 %4443, 928
  %4445 = add nuw nsw i32 %4444, 48
  %4446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = add nuw nsw i32 %4444, 60
  %4451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4450, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.ResRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.ResRet.f32 %4451, 2
  %4455 = fmul fast float %4447, %4437
  %4456 = fmul fast float %4448, %4437
  %4457 = fmul fast float %4449, %4437
  %4458 = fadd fast float %4455, %4411
  %4459 = fadd fast float %4456, %4412
  %4460 = fadd fast float %4457, %4413
  %4461 = fmul fast float %4452, %4437
  %4462 = fmul fast float %4453, %4437
  %4463 = fmul fast float %4454, %4437
  %4464 = fadd fast float %4461, %4414
  %4465 = fadd fast float %4462, %4415
  %4466 = fadd fast float %4463, %4416
  br label %4467

; <label>:4467                                    ; preds = %4439, %4410
  %4468 = phi float [ %4458, %4439 ], [ %4411, %4410 ]
  %4469 = phi float [ %4459, %4439 ], [ %4412, %4410 ]
  %4470 = phi float [ %4460, %4439 ], [ %4413, %4410 ]
  %4471 = phi float [ %4464, %4439 ], [ %4414, %4410 ]
  %4472 = phi float [ %4465, %4439 ], [ %4415, %4410 ]
  %4473 = phi float [ %4466, %4439 ], [ %4416, %4410 ]
  %4474 = add nuw i32 %4417, 1
  %4475 = icmp eq i32 %4474, %4399
  br i1 %4475, label %4476, label %4410

; <label>:4476                                    ; preds = %4467
  br label %4477

; <label>:4477                                    ; preds = %4476, %4340
  %4478 = phi float [ 0.000000e+00, %4340 ], [ %4468, %4476 ]
  %4479 = phi float [ 0.000000e+00, %4340 ], [ %4469, %4476 ]
  %4480 = phi float [ 0.000000e+00, %4340 ], [ %4470, %4476 ]
  %4481 = phi float [ 0.000000e+00, %4340 ], [ %4471, %4476 ]
  %4482 = phi float [ 0.000000e+00, %4340 ], [ %4472, %4476 ]
  %4483 = phi float [ 0.000000e+00, %4340 ], [ %4473, %4476 ]
  %4484 = fadd fast float %4481, %4478
  %4485 = fmul fast float %4484, 0x3F847AE140000000
  %4486 = fadd fast float %4482, %4479
  %4487 = fmul fast float %4486, 0x3F847AE140000000
  %4488 = fadd fast float %4483, %4480
  %4489 = fmul fast float %4488, 0x3F847AE140000000
  br label %4490

; <label>:4490                                    ; preds = %4477, %4274, %4219, %4216, %4187, %4149
  %4491 = phi float [ %4201, %4187 ], [ -1.310720e+05, %4149 ], [ %4393, %4477 ], [ -1.310720e+05, %4219 ], [ -1.310720e+05, %4274 ], [ -1.310720e+05, %4216 ]
  %4492 = phi float [ %4211, %4187 ], [ 0.000000e+00, %4149 ], [ %4485, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4493 = phi float [ %4213, %4187 ], [ 0.000000e+00, %4149 ], [ %4487, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4494 = phi float [ %4215, %4187 ], [ 0.000000e+00, %4149 ], [ %4489, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4495 = phi i1 [ true, %4187 ], [ false, %4149 ], [ true, %4477 ], [ false, %4219 ], [ false, %4274 ], [ false, %4216 ]
  %4496 = and i32 %194, 3
  %4497 = icmp eq i32 %4496, 1
  %4498 = select i1 %4497, float 1.000000e+00, float 0.000000e+00
  %4499 = fsub fast float %4491, %146
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = select i1 %4495, float %4500, float 1.000000e+00
  %4502 = fmul fast float %4501, %4498
  %4503 = icmp eq i32 %4496, 3
  %4504 = select i1 %4503, float 1.000000e+00, float %4502
  %4505 = call float @dx.op.binary.f32(i32 35, float %4069, float %4504)  ; FMax(a,b)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fcmp fast une float %4506, 0.000000e+00
  %4508 = fsub fast float -0.000000e+00, %164
  %4509 = fsub fast float -0.000000e+00, %165
  %4510 = fsub fast float -0.000000e+00, %166
  br i1 %4507, label %4511, label %4673

; <label>:4511                                    ; preds = %4490
  %4512 = call float @dx.op.dot3.f32(i32 55, float %4508, float %4509, float %4510, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4513 = fmul fast float %4506, 2.500000e+00
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fmul fast float %4506, 0x4013FFFFE0000000
  %4516 = fadd fast float %4515, 0xBFFFFFFFE0000000
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fmul fast float %4506, 0x4004000020000000
  %4519 = fadd fast float %4518, 0xBFF8000040000000
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4522 = fmul fast float %4095, 1.000000e+01
  %4523 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4524 = fmul fast float %4523, 2.000000e+00
  %4525 = fsub fast float 3.000000e+00, %4524
  %4526 = fmul fast float %4523, %4523
  %4527 = fmul fast float %4526, %4525
  %4528 = fsub fast float 1.000000e+00, %4527
  %4529 = fsub fast float 0x3FE3333340000000, %4116
  %4530 = fmul fast float %4529, 0x400AAAAAA0000000
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fmul fast float %4528, %4531
  %4533 = fmul fast float %4128, 0x3FEA2B8620000000
  %4534 = fmul fast float %4129, 0x3FEA2B8620000000
  %4535 = fmul fast float %4130, 0x3FEA2B8620000000
  %4536 = fadd fast float %4533, 0x3FC81DFBA0000000
  %4537 = fmul fast float %4536, %4128
  %4538 = fadd fast float %4537, 0x3F910E6020000000
  %4539 = fadd fast float %4534, 0x3FC81DFBA0000000
  %4540 = fmul fast float %4539, %4129
  %4541 = fadd fast float %4540, 0x3F910E6020000000
  %4542 = fadd fast float %4535, 0x3FC81DFBA0000000
  %4543 = fmul fast float %4542, %4130
  %4544 = fadd fast float %4543, 0x3F910E6020000000
  %4545 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4546 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4547 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4548 = fsub fast float %4545, %4128
  %4549 = fsub fast float %4546, %4129
  %4550 = fsub fast float %4547, %4130
  %4551 = fmul fast float %4548, %4521
  %4552 = fmul fast float %4551, %4532
  %4553 = fmul fast float %4549, %4521
  %4554 = fmul fast float %4553, %4532
  %4555 = fmul fast float %4550, %4521
  %4556 = fmul fast float %4555, %4532
  %4557 = fadd fast float %4552, %4128
  %4558 = fadd fast float %4554, %4129
  %4559 = fadd fast float %4556, %4130
  %4560 = fmul fast float %4066, %4066
  %4561 = fmul fast float %4560, %4560
  %4562 = fadd fast float %4517, 1.000000e+00
  %4563 = fsub fast float %4562, %4532
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4566 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4567 = fsub fast float 1.000000e+00, %4561
  %4568 = call float @dx.op.binary.f32(i32 36, float %4564, float %4567)  ; FMin(a,b)
  %4569 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4570 = call float @dx.op.binary.f32(i32 35, float %4568, float %4569)  ; FMax(a,b)
  %4571 = fadd fast float %4566, 0xBFE4CCCCC0000000
  %4572 = fmul fast float %4571, 0x4006DB6DA0000000
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = fmul fast float %4573, 2.000000e+00
  %4575 = fsub fast float 3.000000e+00, %4574
  %4576 = bitcast float %4113 to i32
  %4577 = ashr i32 %4576, 1
  %4578 = add nsw i32 %4577, 532487669
  %4579 = bitcast i32 %4578 to float
  %4580 = fsub fast float 1.000000e+00, %4579
  %4581 = bitcast float %4580 to i32
  %4582 = sub nsw i32 2129859010, %4581
  %4583 = bitcast i32 %4582 to float
  %4584 = fmul fast float %4583, 2.000000e+00
  %4585 = bitcast float %4114 to i32
  %4586 = ashr i32 %4585, 1
  %4587 = add nsw i32 %4586, 532487669
  %4588 = bitcast i32 %4587 to float
  %4589 = fsub fast float 1.000000e+00, %4588
  %4590 = bitcast float %4589 to i32
  %4591 = sub nsw i32 2129859010, %4590
  %4592 = bitcast i32 %4591 to float
  %4593 = fmul fast float %4592, 2.000000e+00
  %4594 = bitcast float %4115 to i32
  %4595 = ashr i32 %4594, 1
  %4596 = add nsw i32 %4595, 532487669
  %4597 = bitcast i32 %4596 to float
  %4598 = fsub fast float 1.000000e+00, %4597
  %4599 = bitcast float %4598 to i32
  %4600 = sub nsw i32 2129859010, %4599
  %4601 = bitcast i32 %4600 to float
  %4602 = fmul fast float %4601, 2.000000e+00
  %4603 = fsub fast float 0x4002A9FBE0000000, %4584
  %4604 = fadd fast float %4584, 0x3FD54FDF00000000
  %4605 = bitcast float %4604 to i32
  %4606 = sub nsw i32 2129859010, %4605
  %4607 = bitcast i32 %4606 to float
  %4608 = fmul fast float %4607, %4603
  %4609 = fmul fast float %4608, %4608
  %4610 = fsub fast float 0x4002A9FBE0000000, %4593
  %4611 = fadd fast float %4593, 0x3FD54FDF00000000
  %4612 = bitcast float %4611 to i32
  %4613 = sub nsw i32 2129859010, %4612
  %4614 = bitcast i32 %4613 to float
  %4615 = fmul fast float %4614, %4610
  %4616 = fmul fast float %4615, %4615
  %4617 = fsub fast float 0x4002A9FBE0000000, %4602
  %4618 = fadd fast float %4602, 0x3FD54FDF00000000
  %4619 = bitcast float %4618 to i32
  %4620 = sub nsw i32 2129859010, %4619
  %4621 = bitcast i32 %4620 to float
  %4622 = fmul fast float %4621, %4617
  %4623 = fmul fast float %4622, %4622
  %4624 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4609)  ; FMax(a,b)
  %4625 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4616)  ; FMax(a,b)
  %4626 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4623)  ; FMax(a,b)
  %4627 = fsub fast float 1.000000e+00, %4512
  %4628 = fadd fast float %4627, %4528
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = fsub fast float 1.000000e+00, %4504
  %4631 = fmul fast float %4570, %4630
  %4632 = fmul fast float %4573, %4573
  %4633 = fmul fast float %4632, %4631
  %4634 = fmul fast float %4633, %4575
  %4635 = fmul fast float %4630, 0xBFE99999A0000000
  %4636 = fmul fast float %4635, %4521
  %4637 = fmul fast float %4636, %4532
  %4638 = fadd fast float %4637, 1.000000e+00
  %4639 = fadd fast float %4116, -1.000000e+00
  %4640 = fmul fast float %4638, %4639
  %4641 = fadd fast float %4640, 1.000000e+00
  %4642 = fsub fast float %4624, %4113
  %4643 = fsub fast float %4625, %4114
  %4644 = fsub fast float %4626, %4115
  %4645 = fmul fast float %4634, %4642
  %4646 = fmul fast float %4634, %4643
  %4647 = fmul fast float %4634, %4644
  %4648 = fadd fast float %4645, %4113
  %4649 = fadd fast float %4646, %4114
  %4650 = fadd fast float %4647, %4115
  %4651 = fsub fast float %94, %4054
  %4652 = fsub fast float %96, %4055
  %4653 = fsub fast float %98, %4056
  %4654 = fmul fast float %4634, %4651
  %4655 = fmul fast float %4634, %4652
  %4656 = fmul fast float %4634, %4653
  %4657 = fadd fast float %4654, %4054
  %4658 = fadd fast float %4655, %4055
  %4659 = fadd fast float %4656, %4056
  %4660 = fmul fast float %4634, %4629
  %4661 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4662 = fsub fast float 1.000000e+00, %4661
  %4663 = fmul fast float %4660, %4662
  %4664 = fadd fast float %4663, %4661
  %4665 = fsub fast float 1.000000e+00, %4066
  %4666 = fmul fast float %4634, %4665
  %4667 = fadd fast float %4666, %4066
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4657, float %4658, float %4659, float %4657, float %4658, float %4659)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 25, float %4668)  ; Rsqrt(value)
  %4670 = fmul fast float %4657, %4669
  %4671 = fmul fast float %4658, %4669
  %4672 = fmul fast float %4659, %4669
  br label %4673

; <label>:4673                                    ; preds = %4511, %4490
  %4674 = phi float [ %4557, %4511 ], [ %4128, %4490 ]
  %4675 = phi float [ %4558, %4511 ], [ %4129, %4490 ]
  %4676 = phi float [ %4559, %4511 ], [ %4130, %4490 ]
  %4677 = phi float [ %4670, %4511 ], [ %4054, %4490 ]
  %4678 = phi float [ %4671, %4511 ], [ %4055, %4490 ]
  %4679 = phi float [ %4672, %4511 ], [ %4056, %4490 ]
  %4680 = phi float [ %4648, %4511 ], [ %4113, %4490 ]
  %4681 = phi float [ %4649, %4511 ], [ %4114, %4490 ]
  %4682 = phi float [ %4650, %4511 ], [ %4115, %4490 ]
  %4683 = phi float [ %4664, %4511 ], [ %4116, %4490 ]
  %4684 = phi float [ %4667, %4511 ], [ %4066, %4490 ]
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 2
  %4687 = extractvalue %dx.types.CBufRet.f32 %4685, 3
  %4688 = fmul fast float %4686, %85
  %4689 = fmul fast float %4687, %86
  %4690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4691 = extractvalue %dx.types.CBufRet.f32 %4690, 0
  %4692 = extractvalue %dx.types.CBufRet.f32 %4690, 1
  %4693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4688, float %4689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4694 = extractvalue %dx.types.ResRet.f32 %4693, 0
  %4695 = fmul fast float %4694, %4692
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fadd fast float %4696, -1.000000e+00
  %4698 = fmul fast float %4697, %4691
  %4699 = fadd fast float %4698, 1.000000e+00
  %4700 = select i1 %218, float 0.000000e+00, float %4682
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %4508, float %4509, float %4510)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = call float @dx.op.dot3.f32(i32 55, float %164, float %165, float %166, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = fmul fast float %4703, 2.000000e+00
  %4705 = fmul fast float %4704, %4677
  %4706 = fmul fast float %4704, %4678
  %4707 = fmul fast float %4704, %4679
  %4708 = fsub fast float %164, %4705
  %4709 = fsub fast float %165, %4706
  %4710 = fsub fast float %166, %4707
  %4711 = call float @dx.op.binary.f32(i32 36, float %4684, float %4699)  ; FMin(a,b)
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = bitcast float %4712 to i32
  %4714 = ashr i32 %4713, 1
  %4715 = add nsw i32 %4714, 532487669
  %4716 = bitcast i32 %4715 to float
  %4717 = fsub fast float 1.000000e+00, %4683
  %4718 = call float @dx.op.binary.f32(i32 35, float %4717, float 0x3F847AE140000000)  ; FMax(a,b)
  %4719 = fmul fast float %4718, %4718
  %4720 = fmul fast float %4719, %4719
  %4721 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4716, float %4720, float %4721, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = fsub fast float 1.000000e+00, %4684
  %4725 = bitcast float %4724 to i32
  %4726 = sub nsw i32 2129859010, %4725
  %4727 = bitcast i32 %4726 to float
  %4728 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = fmul fast float %4728, 0x3FD20DD760000000
  %4730 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4731 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = fcmp fast oeq float %4731, 0.000000e+00
  %4733 = fcmp fast oeq float %4730, 0.000000e+00
  %4734 = or i1 %4733, %4732
  br i1 %4734, label %4764, label %4735

; <label>:4735                                    ; preds = %4673
  %4736 = fsub fast float -0.000000e+00, %65
  %4737 = fsub fast float -0.000000e+00, %63
  %4738 = call float @dx.op.unary.f32(i32 24, float %4731)  ; Sqrt(value)
  %4739 = fdiv fast float %4738, %4730
  %4740 = fcmp fast ogt float %4739, 0x3FFB6F8900000000
  %4741 = select i1 %4740, float 0x3FFB6F8900000000, float %4739
  %4742 = fmul fast float %4741, 0x3FE8A23460000000
  %4743 = call float @dx.op.unary.f32(i32 7, float %4742)  ; Saturate(value)
  %4744 = call float @dx.op.binary.f32(i32 35, float %4741, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4745 = fmul fast float %4743, %4730
  %4746 = fmul fast float %4744, 0x3FF279A740000000
  %4747 = fadd fast float %4746, -1.000000e+00
  %4748 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4737, float %64, float %4736, float %4737, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = call float @dx.op.unary.f32(i32 25, float %4748)  ; Rsqrt(value)
  %4750 = fmul fast float %4749, %4736
  %4751 = fmul fast float %4749, %4737
  %4752 = fmul fast float %4749, %64
  %4753 = fmul fast float %4747, %4747
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = fmul fast float %4744, 0x40005F8BE0000000
  %4756 = fsub fast float 0x400C5BF8A0000000, %4755
  %4757 = fdiv fast float %4745, %4756
  %4758 = fmul fast float %4757, 0x3FEE31C3C0000000
  %4759 = fmul fast float %4758, %4754
  %4760 = fmul fast float %4744, 0x3FDACB7480000000
  %4761 = fadd fast float %4760, 0xBFD7347680000000
  %4762 = fmul fast float %4761, %4757
  %4763 = fmul fast float %4762, %4754
  br label %4764

; <label>:4764                                    ; preds = %4735, %4673
  %4765 = phi float [ %4750, %4735 ], [ 0.000000e+00, %4673 ]
  %4766 = phi float [ %4751, %4735 ], [ 0.000000e+00, %4673 ]
  %4767 = phi float [ %4752, %4735 ], [ 0.000000e+00, %4673 ]
  %4768 = phi float [ %4759, %4735 ], [ 0.000000e+00, %4673 ]
  %4769 = phi float [ %4763, %4735 ], [ 0.000000e+00, %4673 ]
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4766, float %4767, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = fmul fast float %4770, %4770
  %4772 = fmul fast float %4771, 0x3FEE471020000000
  %4773 = fadd fast float %4772, 0xBFD42F6020000000
  %4774 = fmul fast float %4730, 0x3FD20DD760000000
  %4775 = fmul fast float %4773, %4769
  %4776 = fmul fast float %4768, 0x3FDF454380000000
  %4777 = fmul fast float %4776, %4770
  %4778 = fadd fast float %4777, %4774
  %4779 = fadd fast float %4778, %4775
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4766, float %4767, float %4708, float %4709, float %4710)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = fmul fast float %4780, 0x3FDF454380000000
  %4782 = fmul fast float %4780, %4780
  %4783 = fmul fast float %4782, 0x3FEE471020000000
  %4784 = fadd fast float %4783, 0xBFD42F6020000000
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4730, float %4768, float %4769, float 0x3FD20DD760000000, float %4781, float %4784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4787 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = fcmp fast oeq float %4787, 0.000000e+00
  %4789 = fcmp fast oeq float %4786, 0.000000e+00
  %4790 = or i1 %4789, %4788
  br i1 %4790, label %4820, label %4791

; <label>:4791                                    ; preds = %4764
  %4792 = fsub fast float -0.000000e+00, %61
  %4793 = fsub fast float -0.000000e+00, %59
  %4794 = call float @dx.op.unary.f32(i32 24, float %4787)  ; Sqrt(value)
  %4795 = fdiv fast float %4794, %4786
  %4796 = fcmp fast ogt float %4795, 0x3FFB6F8900000000
  %4797 = select i1 %4796, float 0x3FFB6F8900000000, float %4795
  %4798 = fmul fast float %4797, 0x3FE8A23460000000
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  %4800 = call float @dx.op.binary.f32(i32 35, float %4797, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4801 = fmul fast float %4799, %4786
  %4802 = fmul fast float %4800, 0x3FF279A740000000
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = call float @dx.op.dot3.f32(i32 55, float %4792, float %4793, float %60, float %4792, float %4793, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4805 = call float @dx.op.unary.f32(i32 25, float %4804)  ; Rsqrt(value)
  %4806 = fmul fast float %4805, %4792
  %4807 = fmul fast float %4805, %4793
  %4808 = fmul fast float %4805, %60
  %4809 = fmul fast float %4803, %4803
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = fmul fast float %4800, 0x40005F8BE0000000
  %4812 = fsub fast float 0x400C5BF8A0000000, %4811
  %4813 = fdiv fast float %4801, %4812
  %4814 = fmul fast float %4813, 0x3FEE31C3C0000000
  %4815 = fmul fast float %4814, %4810
  %4816 = fmul fast float %4800, 0x3FDACB7480000000
  %4817 = fadd fast float %4816, 0xBFD7347680000000
  %4818 = fmul fast float %4817, %4813
  %4819 = fmul fast float %4818, %4810
  br label %4820

; <label>:4820                                    ; preds = %4791, %4764
  %4821 = phi float [ %4806, %4791 ], [ 0.000000e+00, %4764 ]
  %4822 = phi float [ %4807, %4791 ], [ 0.000000e+00, %4764 ]
  %4823 = phi float [ %4808, %4791 ], [ 0.000000e+00, %4764 ]
  %4824 = phi float [ %4815, %4791 ], [ 0.000000e+00, %4764 ]
  %4825 = phi float [ %4819, %4791 ], [ 0.000000e+00, %4764 ]
  %4826 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4827 = fmul fast float %4826, %4826
  %4828 = fmul fast float %4827, 0x3FEE471020000000
  %4829 = fadd fast float %4828, 0xBFD42F6020000000
  %4830 = fmul fast float %4786, 0x3FD20DD760000000
  %4831 = fmul fast float %4829, %4825
  %4832 = fmul fast float %4824, 0x3FDF454380000000
  %4833 = fmul fast float %4832, %4826
  %4834 = fadd fast float %4833, %4830
  %4835 = fadd fast float %4834, %4831
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4822, float %4823, float %4708, float %4709, float %4710)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = fmul fast float %4836, 0x3FDF454380000000
  %4838 = fmul fast float %4836, %4836
  %4839 = fmul fast float %4838, 0x3FEE471020000000
  %4840 = fadd fast float %4839, 0xBFD42F6020000000
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4824, float %4825, float 0x3FD20DD760000000, float %4837, float %4840)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4843 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4844 = fcmp fast oeq float %4843, 0.000000e+00
  %4845 = fcmp fast oeq float %4842, 0.000000e+00
  %4846 = or i1 %4845, %4844
  br i1 %4846, label %4876, label %4847

; <label>:4847                                    ; preds = %4820
  %4848 = fsub fast float -0.000000e+00, %57
  %4849 = fsub fast float -0.000000e+00, %55
  %4850 = call float @dx.op.unary.f32(i32 24, float %4843)  ; Sqrt(value)
  %4851 = fdiv fast float %4850, %4842
  %4852 = fcmp fast ogt float %4851, 0x3FFB6F8900000000
  %4853 = select i1 %4852, float 0x3FFB6F8900000000, float %4851
  %4854 = fmul fast float %4853, 0x3FE8A23460000000
  %4855 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4856 = call float @dx.op.binary.f32(i32 35, float %4853, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4857 = fmul fast float %4855, %4842
  %4858 = fmul fast float %4856, 0x3FF279A740000000
  %4859 = fadd fast float %4858, -1.000000e+00
  %4860 = call float @dx.op.dot3.f32(i32 55, float %4848, float %4849, float %56, float %4848, float %4849, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4861 = call float @dx.op.unary.f32(i32 25, float %4860)  ; Rsqrt(value)
  %4862 = fmul fast float %4861, %4848
  %4863 = fmul fast float %4861, %4849
  %4864 = fmul fast float %4861, %56
  %4865 = fmul fast float %4859, %4859
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = fmul fast float %4856, 0x40005F8BE0000000
  %4868 = fsub fast float 0x400C5BF8A0000000, %4867
  %4869 = fdiv fast float %4857, %4868
  %4870 = fmul fast float %4869, 0x3FEE31C3C0000000
  %4871 = fmul fast float %4870, %4866
  %4872 = fmul fast float %4856, 0x3FDACB7480000000
  %4873 = fadd fast float %4872, 0xBFD7347680000000
  %4874 = fmul fast float %4873, %4869
  %4875 = fmul fast float %4874, %4866
  br label %4876

; <label>:4876                                    ; preds = %4847, %4820
  %4877 = phi float [ %4862, %4847 ], [ 0.000000e+00, %4820 ]
  %4878 = phi float [ %4863, %4847 ], [ 0.000000e+00, %4820 ]
  %4879 = phi float [ %4864, %4847 ], [ 0.000000e+00, %4820 ]
  %4880 = phi float [ %4871, %4847 ], [ 0.000000e+00, %4820 ]
  %4881 = phi float [ %4875, %4847 ], [ 0.000000e+00, %4820 ]
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = fmul fast float %4882, %4882
  %4884 = fmul fast float %4883, 0x3FEE471020000000
  %4885 = fadd fast float %4884, 0xBFD42F6020000000
  %4886 = fmul fast float %4842, 0x3FD20DD760000000
  %4887 = fmul fast float %4885, %4881
  %4888 = fmul fast float %4880, 0x3FDF454380000000
  %4889 = fmul fast float %4888, %4882
  %4890 = fadd fast float %4889, %4886
  %4891 = fadd fast float %4890, %4887
  %4892 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float %4708, float %4709, float %4710)  ; Dot3(ax,ay,az,bx,by,bz)
  %4893 = fmul fast float %4892, 0x3FDF454380000000
  %4894 = fmul fast float %4892, %4892
  %4895 = fmul fast float %4894, 0x3FEE471020000000
  %4896 = fadd fast float %4895, 0xBFD42F6020000000
  %4897 = call float @dx.op.dot3.f32(i32 55, float %4842, float %4880, float %4881, float 0x3FD20DD760000000, float %4893, float %4896)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4779, float 0.000000e+00)  ; FMax(a,b)
  %4899 = call float @dx.op.binary.f32(i32 35, float %4835, float 0.000000e+00)  ; FMax(a,b)
  %4900 = call float @dx.op.binary.f32(i32 35, float %4891, float 0.000000e+00)  ; FMax(a,b)
  %4901 = call float @dx.op.binary.f32(i32 35, float %4785, float 0.000000e+00)  ; FMax(a,b)
  %4902 = call float @dx.op.binary.f32(i32 35, float %4841, float 0.000000e+00)  ; FMax(a,b)
  %4903 = call float @dx.op.binary.f32(i32 35, float %4897, float 0.000000e+00)  ; FMax(a,b)
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4906 = call float @dx.op.binary.f32(i32 36, float %4674, float %4905)  ; FMin(a,b)
  %4907 = fmul fast float %4906, %4712
  %4908 = fsub fast float 1.000000e+00, %4907
  %4909 = bitcast float %4908 to i32
  %4910 = sub nsw i32 2129859010, %4909
  %4911 = bitcast i32 %4910 to float
  %4912 = call float @dx.op.binary.f32(i32 36, float %4675, float %4905)  ; FMin(a,b)
  %4913 = fmul fast float %4912, %4712
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = bitcast float %4914 to i32
  %4916 = sub nsw i32 2129859010, %4915
  %4917 = bitcast i32 %4916 to float
  %4918 = call float @dx.op.binary.f32(i32 36, float %4676, float %4905)  ; FMin(a,b)
  %4919 = fmul fast float %4918, %4712
  %4920 = fsub fast float 1.000000e+00, %4919
  %4921 = bitcast float %4920 to i32
  %4922 = sub nsw i32 2129859010, %4921
  %4923 = bitcast i32 %4922 to float
  %4924 = fmul fast float %4898, %4711
  %4925 = fmul fast float %4924, %4911
  %4926 = fmul fast float %4899, %4711
  %4927 = fmul fast float %4926, %4917
  %4928 = fmul fast float %4900, %4711
  %4929 = fmul fast float %4928, %4923
  %4930 = call float @dx.op.binary.f32(i32 36, float %4680, float %4905)  ; FMin(a,b)
  %4931 = fmul fast float %4930, %4712
  %4932 = fsub fast float 1.000000e+00, %4931
  %4933 = bitcast float %4932 to i32
  %4934 = sub nsw i32 2129859010, %4933
  %4935 = bitcast i32 %4934 to float
  %4936 = call float @dx.op.binary.f32(i32 36, float %4681, float %4905)  ; FMin(a,b)
  %4937 = fmul fast float %4936, %4712
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = bitcast float %4938 to i32
  %4940 = sub nsw i32 2129859010, %4939
  %4941 = bitcast i32 %4940 to float
  %4942 = call float @dx.op.binary.f32(i32 36, float %4700, float %4905)  ; FMin(a,b)
  %4943 = fmul fast float %4942, %4712
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = bitcast float %4944 to i32
  %4946 = sub nsw i32 2129859010, %4945
  %4947 = bitcast i32 %4946 to float
  %4948 = fmul fast float %4901, %4711
  %4949 = fmul fast float %4948, %4935
  %4950 = fmul fast float %4902, %4711
  %4951 = fmul fast float %4950, %4941
  %4952 = fmul fast float %4903, %4711
  %4953 = fmul fast float %4952, %4947
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4927, float %4929, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = select i1 %218, float 0.000000e+00, float %4925
  %4956 = select i1 %218, float %4954, float %4927
  %4957 = select i1 %218, float 0.000000e+00, float %4929
  %4958 = call float @dx.op.dot3.f32(i32 55, float %4949, float %4951, float %4953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4959 = select i1 %218, float 0.000000e+00, float %4949
  %4960 = select i1 %218, float %4958, float %4951
  %4961 = select i1 %218, float 0.000000e+00, float %4953
  %4962 = fmul fast float %4702, 9.843750e-01
  %4963 = fmul fast float %4683, 9.843750e-01
  %4964 = fadd fast float %4962, 7.812500e-03
  %4965 = fadd fast float %4963, 7.812500e-03
  %4966 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4964, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4967 = extractvalue %dx.types.ResRet.f32 %4966, 2
  %4968 = extractvalue %dx.types.ResRet.f32 %4966, 3
  %4969 = fmul fast float %4967, %4680
  %4970 = fmul fast float %4967, %4681
  %4971 = fmul fast float %4967, %4700
  %4972 = fadd fast float %4969, %4968
  %4973 = fadd fast float %4970, %4968
  %4974 = fadd fast float %4971, %4968
  %4975 = fcmp fast ogt float %4067, 0.000000e+00
  br i1 %4975, label %4976, label %5002

; <label>:4976                                    ; preds = %4876
  %4977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4067, float %4702, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4978 = extractvalue %dx.types.ResRet.f32 %4977, 0
  %4979 = extractvalue %dx.types.ResRet.f32 %4977, 1
  %4980 = extractvalue %dx.types.ResRet.f32 %4977, 2
  %4981 = fadd fast float %4978, -5.000000e-01
  %4982 = fadd fast float %4979, -5.000000e-01
  %4983 = fadd fast float %4980, -5.000000e-01
  %4984 = fsub fast float 1.000000e+00, %4680
  %4985 = fsub fast float 1.000000e+00, %4681
  %4986 = fsub fast float 1.000000e+00, %4700
  %4987 = fmul fast float %4680, 4.000000e+00
  %4988 = fmul fast float %4987, %4984
  %4989 = fmul fast float %4988, %4981
  %4990 = fmul fast float %4681, 4.000000e+00
  %4991 = fmul fast float %4990, %4985
  %4992 = fmul fast float %4991, %4982
  %4993 = fmul fast float %4700, 4.000000e+00
  %4994 = fmul fast float %4993, %4986
  %4995 = fmul fast float %4994, %4983
  %4996 = fadd fast float %4989, %4972
  %4997 = fadd fast float %4992, %4973
  %4998 = fadd fast float %4995, %4974
  %4999 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %5000 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %5001 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  br label %5002

; <label>:5002                                    ; preds = %4976, %4876
  %5003 = phi float [ %4999, %4976 ], [ %4972, %4876 ]
  %5004 = phi float [ %5000, %4976 ], [ %4973, %4876 ]
  %5005 = phi float [ %5001, %4976 ], [ %4974, %4876 ]
  %5006 = call float @dx.op.binary.f32(i32 35, float %5004, float %5005)  ; FMax(a,b)
  %5007 = call float @dx.op.binary.f32(i32 35, float %5003, float %5006)  ; FMax(a,b)
  %5008 = fsub fast float 1.000000e+00, %5007
  %5009 = fmul fast float %5007, %4683
  %5010 = fadd fast float %5009, %4683
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.CBufRet.f32 %5011, 1
  %5014 = extractvalue %dx.types.CBufRet.f32 %5011, 2
  %5015 = extractvalue %dx.types.CBufRet.f32 %5011, 3
  %5016 = fmul fast float %5010, %5012
  %5017 = fadd fast float %5016, %5013
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = fmul fast float %5014, %5010
  %5020 = fadd fast float %5019, %5015
  %5021 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5022 = fsub fast float 1.000000e+00, %4723
  %5023 = fadd fast float %5022, %5021
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = fcmp fast olt float %5024, 1.000000e+00
  br i1 %5025, label %5026, label %5881

; <label>:5026                                    ; preds = %5002
  %5027 = fcmp fast olt float %5018, 1.000000e+00
  %5028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.f32 %5028, 0
  %5030 = fcmp fast ogt float %5029, 0.000000e+00
  %5031 = or i1 %5027, %5030
  %5032 = or i1 %5027, %5030
  %5033 = xor i1 %5032, true
  %5034 = zext i1 %5033 to i32
  br i1 %5031, label %5035, label %5278

; <label>:5035                                    ; preds = %5026
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 0
  %5038 = extractvalue %dx.types.CBufRet.f32 %5036, 1
  %5039 = extractvalue %dx.types.CBufRet.f32 %5036, 2
  %5040 = extractvalue %dx.types.CBufRet.f32 %5036, 3
  %5041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.CBufRet.f32 %5041, 1
  %5044 = extractvalue %dx.types.CBufRet.f32 %5041, 2
  %5045 = extractvalue %dx.types.CBufRet.f32 %5041, 3
  %5046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.f32 %5046, 0
  %5048 = extractvalue %dx.types.CBufRet.f32 %5046, 1
  %5049 = extractvalue %dx.types.CBufRet.f32 %5046, 2
  %5050 = extractvalue %dx.types.CBufRet.f32 %5046, 3
  %5051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5052 = extractvalue %dx.types.CBufRet.f32 %5051, 0
  %5053 = extractvalue %dx.types.CBufRet.f32 %5051, 1
  %5054 = extractvalue %dx.types.CBufRet.f32 %5051, 2
  %5055 = extractvalue %dx.types.CBufRet.f32 %5051, 3
  %5056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5056, 0
  %5058 = extractvalue %dx.types.CBufRet.f32 %5056, 1
  %5059 = extractvalue %dx.types.CBufRet.f32 %5056, 2
  %5060 = extractvalue %dx.types.CBufRet.f32 %5056, 3
  %5061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.f32 %5061, 0
  %5063 = extractvalue %dx.types.CBufRet.f32 %5061, 1
  %5064 = extractvalue %dx.types.CBufRet.f32 %5061, 2
  %5065 = extractvalue %dx.types.CBufRet.f32 %5061, 3
  %5066 = call float @dx.op.dot3.f32(i32 55, float %5062, float %5063, float %5064, float %4708, float %4709, float %4710)  ; Dot3(ax,ay,az,bx,by,bz)
  %5067 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.unary.f32(i32 6, float %5067)  ; FAbs(value)
  %5069 = fmul fast float %5068, 8.000000e+00
  %5070 = fadd fast float %5069, -6.000000e+00
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5066, 8.000000e+00
  %5073 = fmul fast float %5072, %5029
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fcmp fast ogt float %5074, 0.000000e+00
  br i1 %5075, label %5076, label %5253, !dx.controlflow.hints !85

; <label>:5076                                    ; preds = %5035
  %5077 = extractvalue %dx.types.CBufRet.f32 %5028, 1
  %5078 = extractvalue %dx.types.CBufRet.f32 %5028, 2
  %5079 = fsub fast float %5077, %5078
  %5080 = fmul fast float %5079, %4683
  %5081 = fadd fast float %5080, %5078
  %5082 = fmul fast float %231, 2.000000e+00
  %5083 = fmul fast float %232, 2.000000e+00
  %5084 = fadd fast float %5082, -1.000000e+00
  %5085 = fadd fast float %5083, -1.000000e+00
  %5086 = fmul fast float %5081, %5084
  %5087 = fmul fast float %5081, %5085
  %5088 = fadd fast float %5086, %85
  %5089 = fadd fast float %5087, %86
  %5090 = fmul fast float %5088, %4686
  %5091 = fmul fast float %5089, %4687
  %5092 = fadd fast float %4683, 0xBFE3333340000000
  %5093 = fmul fast float %5092, 0x4004000020000000
  %5094 = fsub fast float 1.000000e+00, %5093
  %5095 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5096 = fmul fast float %5095, 3.000000e+00
  %5097 = fadd fast float %5096, %231
  %5098 = call float @dx.op.unary.f32(i32 27, float %5097)  ; Round_ni(value)
  %5099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5090, float %5091, float %5098, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = fcmp fast une float %5100, 0xFFF0000000000000
  %5102 = fcmp fast une float %5100, 0x7FF0000000000000
  %5103 = and i1 %5101, %5102
  %5104 = fcmp fast olt float %5100, 0.000000e+00
  %5105 = call float @dx.op.unary.f32(i32 6, float %5100)  ; FAbs(value)
  %5106 = fsub fast float 1.000000e+00, %5105
  %5107 = select i1 %5103, float 1.000000e+00, float 0.000000e+00
  %5108 = fmul fast float %5107, %5074
  %5109 = fcmp fast ogt float %5108, 0.000000e+00
  br i1 %5109, label %5110, label %5253, !dx.controlflow.hints !86

; <label>:5110                                    ; preds = %5076
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5113 = extractvalue %dx.types.CBufRet.f32 %5111, 1
  %5114 = extractvalue %dx.types.CBufRet.f32 %5111, 2
  %5115 = select i1 %5104, float 0.000000e+00, float %5112
  %5116 = select i1 %5104, float 0.000000e+00, float %5113
  %5117 = select i1 %5104, float 0.000000e+00, float %5114
  %5118 = select i1 %5104, float %5037, float %5052
  %5119 = select i1 %5104, float %5042, float %5057
  %5120 = select i1 %5104, float %5047, float %5062
  %5121 = select i1 %5104, float %5038, float %5053
  %5122 = select i1 %5104, float %5043, float %5058
  %5123 = select i1 %5104, float %5048, float %5063
  %5124 = select i1 %5104, float %5039, float %5054
  %5125 = select i1 %5104, float %5044, float %5059
  %5126 = select i1 %5104, float %5049, float %5064
  %5127 = select i1 %5104, float %5040, float %5055
  %5128 = select i1 %5104, float %5045, float %5060
  %5129 = select i1 %5104, float %5050, float %5065
  %5130 = fadd fast float %5115, %144
  %5131 = fadd fast float %5116, %145
  %5132 = fadd fast float %5117, %146
  %5133 = fmul fast float %5130, %5118
  %5134 = call float @dx.op.tertiary.f32(i32 46, float %5131, float %5121, float %5133)  ; FMad(a,b,c)
  %5135 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5124, float %5134)  ; FMad(a,b,c)
  %5136 = fadd fast float %5135, %5127
  %5137 = fmul fast float %5130, %5119
  %5138 = call float @dx.op.tertiary.f32(i32 46, float %5131, float %5122, float %5137)  ; FMad(a,b,c)
  %5139 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5125, float %5138)  ; FMad(a,b,c)
  %5140 = fadd fast float %5139, %5128
  %5141 = fmul fast float %5130, %5120
  %5142 = call float @dx.op.tertiary.f32(i32 46, float %5131, float %5123, float %5141)  ; FMad(a,b,c)
  %5143 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5126, float %5142)  ; FMad(a,b,c)
  %5144 = fadd fast float %5143, %5129
  %5145 = fdiv fast float 1.000000e+00, %5144
  %5146 = fmul fast float %5145, %5136
  %5147 = fmul fast float %5145, %5140
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5151 = fmul fast float %5146, %5149
  %5152 = fmul fast float %5147, %5150
  %5153 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5154 = extractvalue %dx.types.CBufRet.f32 %5148, 3
  %5155 = fadd fast float %5151, %5153
  %5156 = fadd fast float %5152, %5154
  %5157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.f32 %5157, 3
  %5159 = fmul fast float %5158, %4708
  %5160 = fmul fast float %5158, %4709
  %5161 = fmul fast float %5158, %4710
  %5162 = fadd fast float %5159, %5130
  %5163 = fadd fast float %5160, %5131
  %5164 = fadd fast float %5161, %5132
  %5165 = fmul fast float %5162, %5118
  %5166 = call float @dx.op.tertiary.f32(i32 46, float %5163, float %5121, float %5165)  ; FMad(a,b,c)
  %5167 = call float @dx.op.tertiary.f32(i32 46, float %5164, float %5124, float %5166)  ; FMad(a,b,c)
  %5168 = fadd fast float %5167, %5127
  %5169 = fmul fast float %5162, %5119
  %5170 = call float @dx.op.tertiary.f32(i32 46, float %5163, float %5122, float %5169)  ; FMad(a,b,c)
  %5171 = call float @dx.op.tertiary.f32(i32 46, float %5164, float %5125, float %5170)  ; FMad(a,b,c)
  %5172 = fadd fast float %5171, %5128
  %5173 = fmul fast float %5162, %5120
  %5174 = call float @dx.op.tertiary.f32(i32 46, float %5163, float %5123, float %5173)  ; FMad(a,b,c)
  %5175 = call float @dx.op.tertiary.f32(i32 46, float %5164, float %5126, float %5174)  ; FMad(a,b,c)
  %5176 = fadd fast float %5175, %5129
  %5177 = fdiv fast float 1.000000e+00, %5176
  %5178 = fmul fast float %5177, %5168
  %5179 = fmul fast float %5177, %5172
  %5180 = fmul fast float %5155, 2.000000e+00
  %5181 = fadd fast float %5180, -1.000000e+00
  %5182 = call float @dx.op.unary.f32(i32 6, float %5181)  ; FAbs(value)
  %5183 = fmul fast float %5182, 5.000000e+00
  %5184 = fadd fast float %5183, -4.000000e+00
  %5185 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5186 = fmul fast float %5185, %5071
  %5187 = fsub fast float %5146, %5178
  %5188 = fmul fast float %5149, %5187
  %5189 = fmul fast float %5186, %5188
  %5190 = fsub fast float %5178, %5146
  %5191 = fmul fast float %5149, %5190
  %5192 = fadd fast float %5191, %5189
  %5193 = fsub fast float %5179, %5147
  %5194 = fmul fast float %5150, %5193
  %5195 = fmul fast float %5192, %5106
  %5196 = fmul fast float %5194, %5106
  %5197 = fadd fast float %5195, %5155
  %5198 = fadd fast float %5196, %5156
  %5199 = fsub fast float %5177, %5145
  %5200 = fmul fast float %5199, %5106
  %5201 = fadd fast float %5200, %5145
  %5202 = fdiv fast float 1.000000e+00, %5201
  %5203 = fadd fast float %4683, -1.000000e+00
  %5204 = fsub fast float %5202, %5144
  %5205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5206 = extractvalue %dx.types.CBufRet.f32 %5205, 2
  %5207 = fmul fast float %5206, %5202
  %5208 = fdiv fast float 1.600000e+02, %5207
  %5209 = fmul fast float %5203, %5203
  %5210 = fmul fast float %5209, 0xBFB5B17960000000
  %5211 = fmul fast float %5210, %5204
  %5212 = fmul fast float %5211, %5208
  %5213 = call float @dx.op.unary.f32(i32 21, float %5212)  ; Exp(value)
  %5214 = fmul fast float %5213, 0x3FF04B2960000000
  %5215 = fsub fast float 0x3FF04B2960000000, %5214
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = fmul fast float %5216, 4.000000e+00
  %5218 = fadd fast float %231, -5.000000e-01
  %5219 = fadd fast float %232, -5.000000e-01
  %5220 = fmul fast float %5216, 0x3FBEB851E0000000
  %5221 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5222 = fmul fast float %5221, %5218
  %5223 = fmul fast float %5221, %5219
  %5224 = fadd fast float %5197, %5222
  %5225 = fadd fast float %5198, %5223
  %5226 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5224, float %5225, float undef, float undef, i32 0, i32 0, i32 undef, float %5217)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5227 = extractvalue %dx.types.ResRet.f32 %5226, 0
  %5228 = extractvalue %dx.types.ResRet.f32 %5226, 1
  %5229 = extractvalue %dx.types.ResRet.f32 %5226, 2
  %5230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5231 = extractvalue %dx.types.CBufRet.f32 %5230, 2
  %5232 = fmul fast float %5231, %5227
  %5233 = fmul fast float %5231, %5228
  %5234 = fmul fast float %5231, %5229
  %5235 = select i1 %218, float 0.000000e+00, float %5233
  %5236 = select i1 %218, float 0.000000e+00, float %5234
  %5237 = fmul fast float %5224, 2.000000e+00
  %5238 = fmul fast float %5225, 2.000000e+00
  %5239 = fadd fast float %5237, -1.000000e+00
  %5240 = fadd fast float %5238, -1.000000e+00
  %5241 = fmul fast float %5239, %5239
  %5242 = fsub fast float 1.000000e+00, %5241
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fsub fast float 1.000000e+00, %5243
  %5245 = fmul fast float %5244, %5071
  %5246 = fadd fast float %5245, %5243
  %5247 = fmul fast float %5240, %5240
  %5248 = fsub fast float 1.000000e+00, %5247
  %5249 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5250 = fmul fast float %5246, %5249
  %5251 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5252 = fmul fast float %5251, %5108
  br label %5253

; <label>:5253                                    ; preds = %5110, %5076, %5035
  %5254 = phi float [ %5232, %5110 ], [ 0.000000e+00, %5076 ], [ 0.000000e+00, %5035 ]
  %5255 = phi float [ %5235, %5110 ], [ 0.000000e+00, %5076 ], [ 0.000000e+00, %5035 ]
  %5256 = phi float [ %5236, %5110 ], [ 0.000000e+00, %5076 ], [ 0.000000e+00, %5035 ]
  %5257 = phi float [ %5252, %5110 ], [ 0.000000e+00, %5076 ], [ 0.000000e+00, %5035 ]
  %5258 = fcmp fast olt float %5257, 1.000000e+00
  %5259 = or i1 %5258, %5033
  %5260 = zext i1 %5259 to i32
  %5261 = fmul fast float %5257, %5018
  %5262 = fsub fast float %5257, %5261
  %5263 = fsub fast float 1.000000e+00, %5024
  %5264 = fmul fast float %5262, %5263
  %5265 = fadd fast float %5264, %5024
  %5266 = fsub fast float %5265, %5262
  %5267 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5268 = fmul fast float %5267, %4959
  %5269 = fmul fast float %5267, %4960
  %5270 = fmul fast float %5267, %4961
  %5271 = fsub fast float -0.000000e+00, %5265
  %5272 = fmul fast float %5262, %5254
  %5273 = fmul fast float %5262, %5255
  %5274 = fmul fast float %5262, %5256
  %5275 = fadd fast float %5272, %5268
  %5276 = fadd fast float %5273, %5269
  %5277 = fadd fast float %5274, %5270
  br label %5278

; <label>:5278                                    ; preds = %5253, %5026
  %5279 = phi float [ %5024, %5026 ], [ %5271, %5253 ]
  %5280 = phi float [ %4959, %5026 ], [ %5275, %5253 ]
  %5281 = phi float [ %4960, %5026 ], [ %5276, %5253 ]
  %5282 = phi float [ %4961, %5026 ], [ %5277, %5253 ]
  %5283 = phi i32 [ %5034, %5026 ], [ %5260, %5253 ]
  %5284 = icmp eq i32 %5283, 0
  br i1 %5284, label %5881, label %5285

; <label>:5285                                    ; preds = %5278
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5289 = fmul fast float %5287, %85
  %5290 = fmul fast float %5288, %86
  %5291 = fptoui float %5289 to i32
  %5292 = fptoui float %5290 to i32
  %5293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5294 = extractvalue %dx.types.CBufRet.f32 %5293, 0
  %5295 = extractvalue %dx.types.CBufRet.f32 %5293, 2
  %5296 = extractvalue %dx.types.CBufRet.f32 %5293, 3
  %5297 = fadd fast float %80, -4.000000e+00
  %5298 = call float @dx.op.binary.f32(i32 35, float %5297, float 0.000000e+00)  ; FMax(a,b)
  %5299 = fadd fast float %5298, %5294
  %5300 = fmul fast float %5299, %5295
  %5301 = call float @dx.op.unary.f32(i32 23, float %5300)  ; Log(value)
  %5302 = fmul fast float %5301, %5296
  %5303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5303, 2
  %5305 = fmul fast float %5302, %5304
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.i32 %5307, 1
  %5309 = add i32 %5308, -1
  %5310 = uitofp i32 %5308 to float
  %5311 = fmul fast float %5310, %5306
  %5312 = fptoui float %5311 to i32
  %5313 = call i32 @dx.op.binary.i32(i32 40, i32 %5312, i32 %5309)  ; UMin(a,b)
  %5314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5315 = extractvalue %dx.types.CBufRet.i32 %5314, 2
  %5316 = extractvalue %dx.types.CBufRet.i32 %5314, 3
  %5317 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5292, i32 %5315, i32 %5291)  ; UMad(a,b,c)
  %5318 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5313, i32 %5316, i32 %5317)  ; UMad(a,b,c)
  %5319 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5320 = fptoui float %5319 to i32
  %5321 = lshr i32 %5320, 5
  %5322 = call i32 @dx.op.binary.i32(i32 40, i32 %5321, i32 8191)  ; UMin(a,b)
  %5323 = fcmp fast ogt float %4500, 0.000000e+00
  %5324 = fcmp fast ogt float %4710, 0.000000e+00
  %5325 = and i1 %5324, %5323
  br i1 %5325, label %5326, label %5355

; <label>:5326                                    ; preds = %5285
  %5327 = call float @dx.op.dot3.f32(i32 55, float %4708, float %4709, float %4710, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.binary.f32(i32 35, float %5327, float -1.000000e+00)  ; FMax(a,b)
  %5329 = call float @dx.op.binary.f32(i32 36, float %5328, float 1.000000e+00)  ; FMin(a,b)
  %5330 = fmul fast float %5329, %5329
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = fmul fast float %5331, 0x3FFC6E2300000000
  %5333 = fsub fast float 1.000000e+00, %5332
  %5334 = fcmp fast ogt float %5333, 0.000000e+00
  %5335 = call float @dx.op.unary.f32(i32 24, float %5333)  ; Sqrt(value)
  %5336 = fsub fast float 1.000000e+00, %5335
  %5337 = call float @dx.op.unary.f32(i32 23, float %5336)  ; Log(value)
  %5338 = fmul fast float %5337, 5.000000e+00
  %5339 = call float @dx.op.unary.f32(i32 21, float %5338)  ; Exp(value)
  %5340 = fmul fast float %5339, 0x3FEF591A60000000
  %5341 = fadd fast float %5340, 0x3F94DCB540000000
  %5342 = select i1 %5334, float %5341, float 1.000000e+00
  %5343 = fcmp fast oge float %5342, 1.000000e+00
  %5344 = fmul fast float %5327, 2.000000e+00
  %5345 = fadd fast float %5344, %4710
  %5346 = select i1 %5343, float %5345, float %4710
  %5347 = fsub fast float %5346, %4710
  %5348 = fmul fast float %5347, %4500
  %5349 = fadd fast float %5348, %4710
  %5350 = call float @dx.op.dot3.f32(i32 55, float %4708, float %4709, float %5349, float %4708, float %4709, float %5349)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = call float @dx.op.unary.f32(i32 25, float %5350)  ; Rsqrt(value)
  %5352 = fmul fast float %5351, %4708
  %5353 = fmul fast float %5351, %4709
  %5354 = fmul fast float %5349, %5351
  br label %5355

; <label>:5355                                    ; preds = %5326, %5285
  %5356 = phi float [ %5352, %5326 ], [ %4708, %5285 ]
  %5357 = phi float [ %5353, %5326 ], [ %4709, %5285 ]
  %5358 = phi float [ %5354, %5326 ], [ %4710, %5285 ]
  %5359 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.i32 %5359, 2
  %5361 = add nsw i32 %5360, -1
  %5362 = call i32 @dx.op.binary.i32(i32 37, i32 %5361, i32 0)  ; IMax(a,b)
  %5363 = shl i32 %5322, 2
  %5364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5363, i32 undef)  ; BufferLoad(srv,index,wot)
  %5365 = extractvalue %dx.types.ResRet.i32 %5364, 0
  %5366 = lshr i32 %5365, 16
  %5367 = and i32 %5365, 65535
  %5368 = lshr i32 %5365, 21
  %5369 = lshr i32 %5367, 5
  %5370 = call i32 @dx.op.binary.i32(i32 40, i32 %5369, i32 %5362)  ; UMin(a,b)
  %5371 = icmp ugt i32 %5368, %5370
  br i1 %5371, label %5753, label %5372

; <label>:5372                                    ; preds = %5355
  br label %5373

; <label>:5373                                    ; preds = %5742, %5372
  %5374 = phi float [ %5743, %5742 ], [ 0.000000e+00, %5372 ]
  %5375 = phi float [ %5744, %5742 ], [ 0.000000e+00, %5372 ]
  %5376 = phi float [ %5745, %5742 ], [ 0.000000e+00, %5372 ]
  %5377 = phi float [ %5746, %5742 ], [ 1.000000e+00, %5372 ]
  %5378 = phi i32 [ %5750, %5742 ], [ %5368, %5372 ]
  %5379 = phi float [ %5747, %5742 ], [ 0.000000e+00, %5372 ]
  %5380 = phi float [ %5748, %5742 ], [ 0.000000e+00, %5372 ]
  %5381 = phi float [ %5749, %5742 ], [ 0.000000e+00, %5372 ]
  %5382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5383 = extractvalue %dx.types.CBufRet.i32 %5382, 2
  %5384 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5318, i32 %5383, i32 %5378)  ; UMad(a,b,c)
  %5385 = shl i32 %5384, 2
  %5386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5385, i32 undef)  ; BufferLoad(srv,index,wot)
  %5387 = extractvalue %dx.types.ResRet.i32 %5386, 0
  %5388 = shl i32 %5378, 5
  %5389 = sub nsw i32 %5366, %5388
  %5390 = call i32 @dx.op.binary.i32(i32 37, i32 %5389, i32 0)  ; IMax(a,b)
  %5391 = call i32 @dx.op.binary.i32(i32 38, i32 %5390, i32 31)  ; IMin(a,b)
  %5392 = sub nsw i32 1, %5366
  %5393 = add nsw i32 %5392, %5367
  %5394 = call i32 @dx.op.binary.i32(i32 37, i32 %5393, i32 0)  ; IMax(a,b)
  %5395 = call i32 @dx.op.binary.i32(i32 38, i32 %5394, i32 32)  ; IMin(a,b)
  %5396 = and i32 %5395, 31
  %5397 = shl i32 -1, %5396
  %5398 = xor i32 %5397, -1
  %5399 = and i32 %5391, 31
  %5400 = shl i32 %5398, %5399
  %5401 = icmp eq i32 %5395, 32
  %5402 = select i1 %5401, i32 -1, i32 %5400
  %5403 = and i32 %5402, %5387
  %5404 = icmp eq i32 %5403, 0
  br i1 %5404, label %5742, label %5405

; <label>:5405                                    ; preds = %5373
  br label %5406

; <label>:5406                                    ; preds = %5516, %5405
  %5407 = phi float [ %5517, %5516 ], [ %5374, %5405 ]
  %5408 = phi float [ %5518, %5516 ], [ %5375, %5405 ]
  %5409 = phi float [ %5519, %5516 ], [ %5376, %5405 ]
  %5410 = phi float [ %5520, %5516 ], [ %5377, %5405 ]
  %5411 = phi i32 [ %5419, %5516 ], [ %5403, %5405 ]
  %5412 = phi float [ %5521, %5516 ], [ %5379, %5405 ]
  %5413 = phi float [ %5522, %5516 ], [ %5380, %5405 ]
  %5414 = phi float [ %5523, %5516 ], [ %5381, %5405 ]
  %5415 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5411)  ; FirstbitLo(value)
  %5416 = add i32 %5415, %5388
  %5417 = and i32 %5415, 31
  %5418 = shl i32 1, %5417
  %5419 = xor i32 %5418, %5411
  %5420 = mul i32 %5416, 72
  %5421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = extractvalue %dx.types.ResRet.f32 %5421, 2
  %5425 = add i32 %5420, 12
  %5426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5425, i32 undef)  ; BufferLoad(srv,index,wot)
  %5427 = extractvalue %dx.types.ResRet.i32 %5426, 0
  %5428 = add i32 %5420, 16
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  %5433 = add i32 %5420, 28
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5433, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = add i32 %5420, 32
  %5437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.ResRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.ResRet.f32 %5437, 2
  %5441 = extractvalue %dx.types.ResRet.f32 %5437, 3
  %5442 = add i32 %5420, 48
  %5443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5442, i32 undef)  ; BufferLoad(srv,index,wot)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  %5445 = extractvalue %dx.types.ResRet.f32 %5443, 1
  %5446 = add i32 %5420, 56
  %5447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5446, i32 undef)  ; BufferLoad(srv,index,wot)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = add i32 %5420, 64
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5450, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = mul i32 %5416, 60
  %5455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.ResRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.ResRet.f32 %5455, 2
  %5459 = add i32 %5454, 12
  %5460 = add i32 %5454, 48
  %5461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.ResRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.ResRet.f32 %5461, 2
  %5465 = and i32 %5427, 32767
  %5466 = bitcast float %5422 to i32
  %5467 = icmp eq i32 %5466, -1
  %5468 = bitcast float %5423 to i32
  %5469 = and i32 %5427, 32768
  %5470 = icmp ne i32 %5469, 0
  %5471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5472 = extractvalue %dx.types.CBufRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.CBufRet.f32 %5471, 1
  %5474 = extractvalue %dx.types.CBufRet.f32 %5471, 2
  %5475 = fsub fast float %5456, %5472
  %5476 = fsub fast float %5457, %5473
  %5477 = fsub fast float %5458, %5474
  %5478 = fsub fast float %144, %5475
  %5479 = fsub fast float %145, %5476
  %5480 = fsub fast float %146, %5477
  %5481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5459, i32 undef)  ; BufferLoad(srv,index,wot)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5482, float %5483, float %5484)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = add i32 %5454, 24
  %5487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5486, i32 undef)  ; BufferLoad(srv,index,wot)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 1
  %5490 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5488, float %5489, float %5490)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = add i32 %5454, 36
  %5493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5492, i32 undef)  ; BufferLoad(srv,index,wot)
  %5494 = extractvalue %dx.types.ResRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.ResRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.ResRet.f32 %5493, 2
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5494, float %5495, float %5496)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 6, float %5485)  ; FAbs(value)
  %5499 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5500 = call float @dx.op.unary.f32(i32 6, float %5497)  ; FAbs(value)
  %5501 = fsub fast float %5462, %5498
  %5502 = fsub fast float %5463, %5499
  %5503 = fsub fast float %5464, %5500
  %5504 = fmul fast float %5501, %5430
  %5505 = fmul fast float %5502, %5431
  %5506 = fmul fast float %5503, %5432
  %5507 = call float @dx.op.binary.f32(i32 36, float %5505, float %5506)  ; FMin(a,b)
  %5508 = call float @dx.op.binary.f32(i32 36, float %5504, float %5507)  ; FMin(a,b)
  %5509 = call float @dx.op.unary.f32(i32 7, float %5508)  ; Saturate(value)
  %5510 = call float @dx.op.binary.f32(i32 36, float %5410, float %5509)  ; FMin(a,b)
  %5511 = uitofp i1 %5470 to float
  %5512 = fadd fast float %4500, 1.000000e+00
  %5513 = fsub fast float %5512, %5511
  %5514 = fmul fast float %5510, %5513
  %5515 = fcmp fast ogt float %5514, 0.000000e+00
  br i1 %5515, label %5525, label %5516

; <label>:5516                                    ; preds = %5667, %5406
  %5517 = phi float [ %5731, %5667 ], [ %5407, %5406 ]
  %5518 = phi float [ %5732, %5667 ], [ %5408, %5406 ]
  %5519 = phi float [ %5733, %5667 ], [ %5409, %5406 ]
  %5520 = phi float [ %5740, %5667 ], [ %5410, %5406 ]
  %5521 = phi float [ %5737, %5667 ], [ %5412, %5406 ]
  %5522 = phi float [ %5738, %5667 ], [ %5413, %5406 ]
  %5523 = phi float [ %5739, %5667 ], [ %5414, %5406 ]
  %5524 = icmp eq i32 %5411, %5418
  br i1 %5524, label %5741, label %5406

; <label>:5525                                    ; preds = %5406
  br i1 %5467, label %5583, label %5526

; <label>:5526                                    ; preds = %5525
  %5527 = fsub fast float -0.000000e+00, %5482
  %5528 = fsub fast float -0.000000e+00, %5483
  %5529 = fsub fast float -0.000000e+00, %5484
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fsub fast float -0.000000e+00, %5530
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fadd fast float %5532, %5445
  %5534 = fadd fast float %5444, %5532
  %5535 = fsub fast float -0.000000e+00, %5534
  %5536 = fcmp ogt float %5530, -0.000000e+00
  %5537 = select i1 %5536, float %5535, float %5533
  %5538 = call float @dx.op.unary.f32(i32 6, float %5531)  ; FAbs(value)
  %5539 = fdiv fast float 1.000000e+00, %5538
  %5540 = fmul fast float %5537, %5539
  %5541 = call float @dx.op.binary.f32(i32 35, float %5540, float 0.000000e+00)  ; FMax(a,b)
  %5542 = fsub fast float -0.000000e+00, %5488
  %5543 = fsub fast float -0.000000e+00, %5489
  %5544 = fsub fast float -0.000000e+00, %5490
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5542, float %5543, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = fsub fast float -0.000000e+00, %5545
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5542, float %5543, float %5544)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = fadd fast float %5547, %5449
  %5549 = fadd fast float %5448, %5547
  %5550 = fsub fast float -0.000000e+00, %5549
  %5551 = fcmp ogt float %5545, -0.000000e+00
  %5552 = select i1 %5551, float %5550, float %5548
  %5553 = call float @dx.op.unary.f32(i32 6, float %5546)  ; FAbs(value)
  %5554 = fdiv fast float 1.000000e+00, %5553
  %5555 = fmul fast float %5552, %5554
  %5556 = call float @dx.op.binary.f32(i32 35, float %5555, float 0.000000e+00)  ; FMax(a,b)
  %5557 = fsub fast float -0.000000e+00, %5494
  %5558 = fsub fast float -0.000000e+00, %5495
  %5559 = fsub fast float -0.000000e+00, %5496
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5357, float %5358, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fsub fast float -0.000000e+00, %5560
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5557, float %5558, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = fadd fast float %5562, %5453
  %5564 = fadd fast float %5452, %5562
  %5565 = fsub fast float -0.000000e+00, %5564
  %5566 = fcmp ogt float %5560, -0.000000e+00
  %5567 = select i1 %5566, float %5565, float %5563
  %5568 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5569 = fdiv fast float 1.000000e+00, %5568
  %5570 = fmul fast float %5567, %5569
  %5571 = call float @dx.op.binary.f32(i32 35, float %5570, float 0.000000e+00)  ; FMax(a,b)
  %5572 = call float @dx.op.binary.f32(i32 36, float %5556, float %5571)  ; FMin(a,b)
  %5573 = call float @dx.op.binary.f32(i32 36, float %5541, float %5572)  ; FMin(a,b)
  %5574 = fmul fast float %5573, %5356
  %5575 = fmul fast float %5573, %5357
  %5576 = fmul fast float %5573, %5358
  %5577 = fadd fast float %5574, %144
  %5578 = fadd fast float %5575, %145
  %5579 = fadd fast float %5576, %146
  %5580 = fsub fast float %5577, %5422
  %5581 = fsub fast float %5578, %5423
  %5582 = fsub fast float %5579, %5424
  br label %5590

; <label>:5583                                    ; preds = %5525
  %5584 = fmul fast float %5356, 8.096000e+03
  %5585 = fmul fast float %5357, 8.096000e+03
  %5586 = fmul fast float %5358, 8.096000e+03
  %5587 = fadd fast float %5584, %144
  %5588 = fadd fast float %5585, %145
  %5589 = fadd fast float %5586, %146
  br label %5590

; <label>:5590                                    ; preds = %5583, %5526
  %5591 = phi float [ %5356, %5583 ], [ %5580, %5526 ]
  %5592 = phi float [ %5357, %5583 ], [ %5581, %5526 ]
  %5593 = phi float [ %5358, %5583 ], [ %5582, %5526 ]
  %5594 = phi float [ %5587, %5583 ], [ %5577, %5526 ]
  %5595 = phi float [ %5588, %5583 ], [ %5578, %5526 ]
  %5596 = phi float [ %5589, %5583 ], [ %5579, %5526 ]
  %5597 = fcmp fast olt float %5441, 1.000000e+00
  br i1 %5597, label %5598, label %5629, !dx.controlflow.hints !87

; <label>:5598                                    ; preds = %5590
  %5599 = fmul fast float %5593, %5439
  %5600 = fmul fast float %5592, %5440
  %5601 = fsub fast float %5599, %5600
  %5602 = fmul fast float %5591, %5440
  %5603 = fmul fast float %5593, %5438
  %5604 = fsub fast float %5602, %5603
  %5605 = fmul fast float %5592, %5438
  %5606 = fmul fast float %5591, %5439
  %5607 = fsub fast float %5605, %5606
  %5608 = fmul fast float %5601, 2.000000e+00
  %5609 = fmul fast float %5604, 2.000000e+00
  %5610 = fmul fast float %5607, 2.000000e+00
  %5611 = fmul fast float %5608, %5441
  %5612 = fmul fast float %5609, %5441
  %5613 = fmul fast float %5610, %5441
  %5614 = fmul fast float %5610, %5439
  %5615 = fmul fast float %5609, %5440
  %5616 = fmul fast float %5608, %5440
  %5617 = fmul fast float %5610, %5438
  %5618 = fmul fast float %5609, %5438
  %5619 = fmul fast float %5608, %5439
  %5620 = fadd fast float %5614, %5591
  %5621 = fadd fast float %5620, %5611
  %5622 = fsub fast float %5621, %5615
  %5623 = fsub fast float %5592, %5617
  %5624 = fadd fast float %5623, %5612
  %5625 = fadd fast float %5624, %5616
  %5626 = fadd fast float %5613, %5593
  %5627 = fsub fast float %5626, %5619
  %5628 = fadd fast float %5627, %5618
  br label %5629

; <label>:5629                                    ; preds = %5598, %5590
  %5630 = phi float [ %5622, %5598 ], [ %5591, %5590 ]
  %5631 = phi float [ %5625, %5598 ], [ %5592, %5590 ]
  %5632 = phi float [ %5628, %5598 ], [ %5593, %5590 ]
  br i1 %5467, label %5664, label %5633

; <label>:5633                                    ; preds = %5629
  %5634 = fmul fast float %4683, 0x400187C840000000
  %5635 = fadd fast float %5634, 0xC00EFC2120000000
  %5636 = fmul fast float %5635, %4683
  %5637 = fadd fast float %5636, 0x3FE5D16340000000
  %5638 = fmul fast float %5637, %4683
  %5639 = fadd fast float %5638, 1.000000e+00
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = fsub fast float %5594, %144
  %5642 = fsub fast float %5595, %145
  %5643 = fsub fast float %5596, %146
  %5644 = fsub fast float %5594, %5422
  %5645 = fsub fast float %5595, %5423
  %5646 = fsub fast float %5596, %5424
  %5647 = call float @dx.op.dot3.f32(i32 55, float %5641, float %5642, float %5643, float %5641, float %5642, float %5643)  ; Dot3(ax,ay,az,bx,by,bz)
  %5648 = call float @dx.op.dot3.f32(i32 55, float %5644, float %5645, float %5646, float %5644, float %5645, float %5646)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = fadd fast float %5648, 0x3EE4F8B580000000
  %5650 = fdiv fast float %5647, %5649
  %5651 = bitcast float %5650 to i32
  %5652 = ashr i32 %5651, 1
  %5653 = add nsw i32 %5652, 532487669
  %5654 = bitcast i32 %5653 to float
  %5655 = fmul fast float %5654, %5640
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, 0x4009981AE0000000
  %5658 = fsub fast float 0x40111BBD80000000, %5657
  %5659 = fmul fast float %5658, %5656
  %5660 = fadd fast float %5659, 0xC0009F6020000000
  %5661 = fmul fast float %5660, %5656
  %5662 = fadd fast float %5661, 1.000000e+00
  %5663 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  br label %5667

; <label>:5664                                    ; preds = %5629
  %5665 = icmp ne i32 %5468, -1
  %5666 = zext i1 %5665 to i32
  br label %5667

; <label>:5667                                    ; preds = %5664, %5633
  %5668 = phi float [ %4683, %5664 ], [ %5663, %5633 ]
  %5669 = phi i32 [ %5666, %5664 ], [ 0, %5633 ]
  %5670 = fmul float %5668, 5.000000e+00
  %5671 = fsub float 5.000000e+00, %5670
  %5672 = icmp ne i32 %5669, 0
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 3
  %5675 = fadd fast float %5674, %5671
  %5676 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5675)  ; FMax(a,b)
  %5677 = call float @dx.op.unary.f32(i32 6, float %5630)  ; FAbs(value)
  %5678 = call float @dx.op.unary.f32(i32 6, float %5631)  ; FAbs(value)
  %5679 = fadd fast float %5678, %5677
  %5680 = call float @dx.op.unary.f32(i32 6, float %5632)  ; FAbs(value)
  %5681 = fadd fast float %5679, %5680
  %5682 = fcmp fast oeq float %5681, 0.000000e+00
  %5683 = fdiv fast float 1.000000e+00, %5681
  %5684 = select i1 %5682, float 1.000000e+00, float %5683
  %5685 = fmul fast float %5684, %5630
  %5686 = fmul fast float %5684, %5631
  %5687 = call float @dx.op.unary.f32(i32 6, float %5686)  ; FAbs(value)
  %5688 = call float @dx.op.unary.f32(i32 6, float %5685)  ; FAbs(value)
  %5689 = fsub fast float 1.000000e+00, %5687
  %5690 = fsub fast float 1.000000e+00, %5688
  %5691 = fcmp fast oge float %5685, 0.000000e+00
  %5692 = fcmp fast oge float %5686, 0.000000e+00
  %5693 = select i1 %5691, float 1.000000e+00, float -1.000000e+00
  %5694 = select i1 %5692, float 1.000000e+00, float -1.000000e+00
  %5695 = fcmp fast ole float %5632, 0.000000e+00
  %5696 = fmul fast float %5693, %5689
  %5697 = fmul fast float %5694, %5690
  %5698 = select i1 %5695, float %5696, float %5685
  %5699 = select i1 %5695, float %5697, float %5686
  %5700 = fmul fast float %5698, 5.000000e-01
  %5701 = fmul fast float %5699, 5.000000e-01
  %5702 = fadd fast float %5700, 5.000000e-01
  %5703 = fadd fast float %5701, 5.000000e-01
  %5704 = uitofp i32 %5465 to float
  %5705 = call float @dx.op.binary.f32(i32 36, float %5676, float 3.000000e+00)  ; FMin(a,b)
  %5706 = fadd fast float %5705, 2.000000e+00
  %5707 = call float @dx.op.unary.f32(i32 21, float %5706)  ; Exp(value)
  %5708 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5709 = fmul fast float %5708, %5707
  %5710 = fmul fast float %5709, 2.000000e+00
  %5711 = fsub fast float 1.000000e+00, %5710
  %5712 = fmul fast float %5702, %5711
  %5713 = fmul fast float %5703, %5711
  %5714 = fadd fast float %5712, %5709
  %5715 = fadd fast float %5713, %5709
  %5716 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5714, float %5715, float %5704, float undef, i32 0, i32 0, i32 undef, float %5676)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5717 = extractvalue %dx.types.ResRet.f32 %5716, 0
  %5718 = extractvalue %dx.types.ResRet.f32 %5716, 1
  %5719 = extractvalue %dx.types.ResRet.f32 %5716, 2
  %5720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5720, 3
  %5722 = fmul fast float %5721, %5435
  %5723 = call float @dx.op.binary.f32(i32 36, float %4729, float %5722)  ; FMin(a,b)
  %5724 = select i1 %5672, float %5723, float %5722
  %5725 = fmul fast float %5717, %5514
  %5726 = fmul fast float %5725, %5724
  %5727 = fmul fast float %5718, %5514
  %5728 = fmul fast float %5727, %5724
  %5729 = fmul fast float %5719, %5514
  %5730 = fmul fast float %5729, %5724
  %5731 = fadd fast float %5726, %5407
  %5732 = fadd fast float %5728, %5408
  %5733 = fadd fast float %5730, %5409
  %5734 = fmul fast float %5594, %5514
  %5735 = fmul fast float %5595, %5514
  %5736 = fmul fast float %5596, %5514
  %5737 = fadd fast float %5734, %5412
  %5738 = fadd fast float %5735, %5413
  %5739 = fadd fast float %5736, %5414
  %5740 = fsub fast float %5410, %5514
  br label %5516

; <label>:5741                                    ; preds = %5516
  br label %5742

; <label>:5742                                    ; preds = %5741, %5373
  %5743 = phi float [ %5374, %5373 ], [ %5517, %5741 ]
  %5744 = phi float [ %5375, %5373 ], [ %5518, %5741 ]
  %5745 = phi float [ %5376, %5373 ], [ %5519, %5741 ]
  %5746 = phi float [ %5377, %5373 ], [ %5520, %5741 ]
  %5747 = phi float [ %5379, %5373 ], [ %5521, %5741 ]
  %5748 = phi float [ %5380, %5373 ], [ %5522, %5741 ]
  %5749 = phi float [ %5381, %5373 ], [ %5523, %5741 ]
  %5750 = add i32 %5378, 1
  %5751 = icmp ugt i32 %5750, %5370
  br i1 %5751, label %5752, label %5373, !llvm.loop !88

; <label>:5752                                    ; preds = %5742
  br label %5753

; <label>:5753                                    ; preds = %5752, %5355
  %5754 = phi float [ 0.000000e+00, %5355 ], [ %5743, %5752 ]
  %5755 = phi float [ 0.000000e+00, %5355 ], [ %5744, %5752 ]
  %5756 = phi float [ 0.000000e+00, %5355 ], [ %5745, %5752 ]
  %5757 = phi float [ 0.000000e+00, %5355 ], [ %5747, %5752 ]
  %5758 = phi float [ 0.000000e+00, %5355 ], [ %5748, %5752 ]
  %5759 = phi float [ 0.000000e+00, %5355 ], [ %5749, %5752 ]
  %5760 = call float @dx.op.dot3.f32(i32 55, float %5754, float %5755, float %5756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5761 = select i1 %218, float 0.000000e+00, float %5754
  %5762 = select i1 %218, float %5760, float %5755
  %5763 = select i1 %218, float 0.000000e+00, float %5756
  %5764 = fcmp fast olt float %5279, 0.000000e+00
  %5765 = call float @dx.op.unary.f32(i32 6, float %5279)  ; FAbs(value)
  %5766 = fmul fast float %5765, %5280
  %5767 = fmul fast float %5765, %5281
  %5768 = fmul fast float %5765, %5282
  %5769 = select i1 %5764, float %5280, float %5766
  %5770 = select i1 %5764, float %5281, float %5767
  %5771 = select i1 %5764, float %5282, float %5768
  %5772 = fsub fast float 1.000000e+00, %5765
  %5773 = call float @dx.op.unary.f32(i32 7, float %5772)  ; Saturate(value)
  %5774 = fmul fast float %5773, %5761
  %5775 = fmul fast float %5773, %5762
  %5776 = fmul fast float %5773, %5763
  %5777 = fadd fast float %5769, %5774
  %5778 = fadd fast float %5770, %5775
  %5779 = fadd fast float %5771, %5776
  %5780 = fcmp fast une float %5029, 0.000000e+00
  br i1 %5780, label %5881, label %5781

; <label>:5781                                    ; preds = %5753
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5796 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5797 = call float @dx.op.dot3.f32(i32 55, float %5793, float %5794, float %5795, float %4708, float %4709, float %4710)  ; Dot3(ax,ay,az,bx,by,bz)
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %5759, float %5793, float %5794, float %5795)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %5793, float %5794, float %5795)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = fadd fast float %4683, -1.000000e+00
  %5801 = fsub fast float %5798, %5799
  %5802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5803 = extractvalue %dx.types.CBufRet.f32 %5802, 2
  %5804 = fmul fast float %5803, %5798
  %5805 = fdiv fast float 1.600000e+02, %5804
  %5806 = fmul fast float %5800, %5800
  %5807 = fmul fast float %5806, 0xBFB5B17960000000
  %5808 = fmul fast float %5807, %5801
  %5809 = fmul fast float %5808, %5805
  %5810 = call float @dx.op.unary.f32(i32 21, float %5809)  ; Exp(value)
  %5811 = fmul fast float %5810, 0x3FF04B2960000000
  %5812 = fsub fast float 0x3FF04B2960000000, %5811
  %5813 = call float @dx.op.unary.f32(i32 7, float %5812)  ; Saturate(value)
  %5814 = fmul fast float %5813, 4.000000e+00
  %5815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5816 = extractvalue %dx.types.CBufRet.f32 %5815, 0
  %5817 = extractvalue %dx.types.CBufRet.f32 %5815, 1
  %5818 = extractvalue %dx.types.CBufRet.f32 %5815, 2
  %5819 = fadd fast float %5816, %5757
  %5820 = fadd fast float %5817, %5758
  %5821 = fadd fast float %5818, %5759
  %5822 = fmul fast float %5819, %5783
  %5823 = call float @dx.op.tertiary.f32(i32 46, float %5820, float %5784, float %5822)  ; FMad(a,b,c)
  %5824 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5785, float %5823)  ; FMad(a,b,c)
  %5825 = fadd fast float %5824, %5786
  %5826 = fmul fast float %5819, %5788
  %5827 = call float @dx.op.tertiary.f32(i32 46, float %5820, float %5789, float %5826)  ; FMad(a,b,c)
  %5828 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5790, float %5827)  ; FMad(a,b,c)
  %5829 = fadd fast float %5828, %5791
  %5830 = fmul fast float %5819, %5793
  %5831 = call float @dx.op.tertiary.f32(i32 46, float %5820, float %5794, float %5830)  ; FMad(a,b,c)
  %5832 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5795, float %5831)  ; FMad(a,b,c)
  %5833 = fadd fast float %5832, %5796
  %5834 = fdiv fast float %5825, %5833
  %5835 = fdiv fast float %5829, %5833
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 0
  %5838 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5839 = fmul fast float %5837, %5834
  %5840 = fmul fast float %5838, %5835
  %5841 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5842 = extractvalue %dx.types.CBufRet.f32 %5836, 3
  %5843 = fadd fast float %5839, %5841
  %5844 = fadd fast float %5840, %5842
  %5845 = fmul fast float %5797, 8.000000e+00
  %5846 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5847 = fmul fast float %5843, 2.000000e+00
  %5848 = fmul fast float %5844, 2.000000e+00
  %5849 = fadd fast float %5847, -1.000000e+00
  %5850 = fadd fast float %5848, -1.000000e+00
  %5851 = fmul fast float %5849, %5849
  %5852 = fsub fast float 1.000000e+00, %5851
  %5853 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5854 = fmul fast float %5850, %5850
  %5855 = fsub fast float 1.000000e+00, %5854
  %5856 = call float @dx.op.unary.f32(i32 7, float %5855)  ; Saturate(value)
  %5857 = fmul fast float %5029, %5853
  %5858 = fmul fast float %5857, %5856
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = fmul fast float %5859, %5846
  %5861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5843, float %5844, float undef, float undef, i32 0, i32 0, i32 undef, float %5814)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  %5865 = select i1 %218, float 0.000000e+00, float %5863
  %5866 = select i1 %218, float 0.000000e+00, float %5864
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 2
  %5869 = fmul fast float %5868, %5862
  %5870 = fmul fast float %5865, %5868
  %5871 = fmul fast float %5866, %5868
  %5872 = fsub fast float %5869, %5761
  %5873 = fsub fast float %5870, %5762
  %5874 = fsub fast float %5871, %5763
  %5875 = fmul fast float %5872, %5860
  %5876 = fmul fast float %5873, %5860
  %5877 = fmul fast float %5874, %5860
  %5878 = fadd fast float %5875, %5761
  %5879 = fadd fast float %5876, %5762
  %5880 = fadd fast float %5877, %5763
  br label %5881

; <label>:5881                                    ; preds = %5781, %5753, %5278, %5002
  %5882 = phi float [ %5280, %5278 ], [ %5777, %5753 ], [ %4959, %5002 ], [ %5878, %5781 ]
  %5883 = phi float [ %5281, %5278 ], [ %5778, %5753 ], [ %4960, %5002 ], [ %5879, %5781 ]
  %5884 = phi float [ %5282, %5278 ], [ %5779, %5753 ], [ %4961, %5002 ], [ %5880, %5781 ]
  %5885 = fmul fast float %5008, %4955
  %5886 = fmul fast float %5008, %4956
  %5887 = fmul fast float %5008, %4957
  %5888 = call float @dx.op.dot3.f32(i32 55, float %4674, float %4675, float %4676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5889 = fcmp fast ogt float %5888, 0x3E7FF19E20000000
  %5890 = fdiv fast float 1.000000e+00, %5888
  %5891 = select i1 %5889, float %5890, float 0.000000e+00
  %5892 = fmul fast float %5891, %4674
  %5893 = fmul fast float %5891, %4675
  %5894 = fmul fast float %5891, %4676
  %5895 = fadd fast float %5892, -1.000000e+00
  %5896 = fadd fast float %5893, -1.000000e+00
  %5897 = fadd fast float %5894, -1.000000e+00
  %5898 = fmul fast float %5895, 5.000000e-01
  %5899 = fmul fast float %5896, 5.000000e-01
  %5900 = fmul fast float %5897, 5.000000e-01
  %5901 = fadd fast float %5898, 1.000000e+00
  %5902 = fadd fast float %5899, 1.000000e+00
  %5903 = fadd fast float %5900, 1.000000e+00
  %5904 = fmul fast float %5882, %5003
  %5905 = fmul fast float %5883, %5004
  %5906 = fmul fast float %5884, %5005
  %5907 = fsub fast float 1.000000e+00, %4702
  %5908 = bitcast float %5907 to i32
  %5909 = sitofp i32 %5908 to float
  %5910 = fmul fast float %5909, 5.000000e+00
  %5911 = fadd fast float %5910, 0xC1EFBF8940000000
  %5912 = fptosi float %5911 to i32
  %5913 = bitcast i32 %5912 to float
  %5914 = fmul fast float %5913, %4068
  %5915 = fmul fast float %4955, %5914
  %5916 = fmul fast float %5915, %5008
  %5917 = fmul fast float %5916, %5901
  %5918 = fmul fast float %4956, %5914
  %5919 = fmul fast float %5918, %5008
  %5920 = fmul fast float %5919, %5902
  %5921 = fmul fast float %4957, %5914
  %5922 = fmul fast float %5921, %5008
  %5923 = fmul fast float %5922, %5903
  %5924 = fmul fast float %5885, %4094
  %5925 = fmul fast float %5886, %4094
  %5926 = fmul fast float %5887, %4094
  %5927 = fadd fast float %5904, %4060
  %5928 = fadd fast float %5927, %5917
  %5929 = fmul fast float %5928, %4094
  %5930 = fadd fast float %5905, %4061
  %5931 = fadd fast float %5930, %5920
  %5932 = fmul fast float %5931, %4094
  %5933 = fadd fast float %5906, %4062
  %5934 = fadd fast float %5933, %5923
  %5935 = fmul fast float %5934, %4094
  %5936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5937 = extractvalue %dx.types.CBufRet.f32 %5936, 3
  %5938 = fcmp fast oeq float %5937, 0.000000e+00
  br i1 %5938, label %6157, label %5939

; <label>:5939                                    ; preds = %5881
  %5940 = extractvalue %dx.types.CBufRet.f32 %5936, 0
  %5941 = extractvalue %dx.types.CBufRet.f32 %5936, 1
  %5942 = extractvalue %dx.types.CBufRet.f32 %5936, 2
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.CBufRet.f32 %5943, 2
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5950 = call float @dx.op.dot3.f32(i32 55, float %5944, float %5945, float %5946, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = select i1 %218, float %5948, float %5944
  %5952 = select i1 %218, float %5950, float %5945
  %5953 = select i1 %218, float %5949, float %5946
  %5954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.f32 %5954, 1
  %5956 = fcmp fast une float %5955, 0.000000e+00
  br i1 %5956, label %5957, label %5974

; <label>:5957                                    ; preds = %5939
  %5958 = fptoui float %85 to i32
  %5959 = fptoui float %86 to i32
  %5960 = lshr i32 %5958, 4
  %5961 = lshr i32 %5959, 4
  %5962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5963 = extractvalue %dx.types.CBufRet.f32 %5962, 0
  %5964 = fptoui float %5963 to i32
  %5965 = add i32 %5964, 15
  %5966 = lshr i32 %5965, 4
  %5967 = mul i32 %5966, %5961
  %5968 = add i32 %5967, %5960
  %5969 = shl i32 %5968, 3
  %5970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5969, i32 undef)  ; BufferLoad(srv,index,wot)
  %5971 = extractvalue %dx.types.ResRet.i32 %5970, 0
  %5972 = and i32 %5971, -268435456
  %5973 = icmp eq i32 %5972, -1342177280
  br i1 %5973, label %5979, label %5974

; <label>:5974                                    ; preds = %5957, %5939
  %5975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4688, float %4689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.ResRet.f32 %5975, 1
  %5978 = extractvalue %dx.types.ResRet.f32 %5975, 2
  br label %5979

; <label>:5979                                    ; preds = %5974, %5957
  %5980 = phi float [ %5976, %5974 ], [ 0.000000e+00, %5957 ]
  %5981 = phi float [ %5977, %5974 ], [ 0.000000e+00, %5957 ]
  %5982 = phi float [ %5978, %5974 ], [ 0.000000e+00, %5957 ]
  %5983 = call float @dx.op.binary.f32(i32 36, float %5981, float %5982)  ; FMin(a,b)
  %5984 = call float @dx.op.binary.f32(i32 36, float %5980, float %5983)  ; FMin(a,b)
  %5985 = fcmp fast ogt float %5984, 0.000000e+00
  br i1 %5985, label %5986, label %6157, !dx.controlflow.hints !90

; <label>:5986                                    ; preds = %5979
  %5987 = fmul fast float %5980, %5951
  %5988 = fmul fast float %5981, %5952
  %5989 = fmul fast float %5982, %5953
  %5990 = fsub fast float %5940, %164
  %5991 = fsub fast float %5941, %165
  %5992 = fsub fast float %5942, %166
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5990, float %5991, float %5992, float %5990, float %5991, float %5992)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = call float @dx.op.unary.f32(i32 25, float %5993)  ; Rsqrt(value)
  %5995 = fmul fast float %5994, %5990
  %5996 = fmul fast float %5994, %5991
  %5997 = fmul fast float %5994, %5992
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5940, float %5941, float %5942, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = call float @dx.op.dot3.f32(i32 55, float %4508, float %4509, float %4510, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %6000 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6001 = fmul fast float %6000, %6000
  %6002 = fmul fast float %6001, %4727
  %6003 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6004 = fmul fast float %6003, %6000
  %6005 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %5995, float %5996, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %6006 = fmul fast float %6005, %6005
  %6007 = call float @dx.op.unary.f32(i32 6, float %5998)  ; FAbs(value)
  %6008 = fsub fast float 1.000000e+00, %4720
  %6009 = fmul fast float %4702, %4702
  %6010 = fmul fast float %6009, %6008
  %6011 = fadd fast float %6010, %4720
  %6012 = bitcast float %6011 to i32
  %6013 = ashr i32 %6012, 1
  %6014 = add nsw i32 %6013, 532487669
  %6015 = bitcast i32 %6014 to float
  %6016 = fadd fast float %6015, %4702
  %6017 = fmul fast float %4720, %6006
  %6018 = fsub fast float 1.000000e+00, %6006
  %6019 = fadd fast float %6018, %6017
  %6020 = fmul fast float %6007, %6007
  %6021 = fmul fast float %6020, %6008
  %6022 = fadd fast float %6021, %4720
  %6023 = bitcast float %6022 to i32
  %6024 = ashr i32 %6023, 1
  %6025 = add nsw i32 %6024, 532487669
  %6026 = bitcast i32 %6025 to float
  %6027 = fadd fast float %6026, %6007
  %6028 = fmul fast float %6019, %6019
  %6029 = fmul fast float %6028, %6016
  %6030 = fmul fast float %6029, %6027
  %6031 = fdiv fast float 0x3FF0A00000000000, %6030
  %6032 = fmul fast float %6031, %4720
  %6033 = call float @dx.op.unary.f32(i32 6, float %5999)  ; FAbs(value)
  %6034 = fsub fast float 1.000000e+00, %6033
  %6035 = bitcast float %6034 to i32
  %6036 = sitofp i32 %6035 to float
  %6037 = fmul fast float %6036, 5.000000e+00
  %6038 = fadd fast float %6037, 0xC1EFBF8940000000
  %6039 = fptosi float %6038 to i32
  %6040 = bitcast i32 %6039 to float
  %6041 = fsub fast float 1.000000e+00, %4680
  %6042 = fsub fast float 1.000000e+00, %4681
  %6043 = fsub fast float 1.000000e+00, %4700
  %6044 = fmul fast float %6040, %6041
  %6045 = fmul fast float %6040, %6042
  %6046 = fmul fast float %6040, %6043
  %6047 = fadd fast float %6044, %4680
  %6048 = fadd fast float %6045, %4681
  %6049 = fadd fast float %6046, %4700
  br i1 %4975, label %6050, label %6073

; <label>:6050                                    ; preds = %5986
  %6051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4067, float %6033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6052 = extractvalue %dx.types.ResRet.f32 %6051, 0
  %6053 = extractvalue %dx.types.ResRet.f32 %6051, 1
  %6054 = extractvalue %dx.types.ResRet.f32 %6051, 2
  %6055 = fadd fast float %6052, -5.000000e-01
  %6056 = fadd fast float %6053, -5.000000e-01
  %6057 = fadd fast float %6054, -5.000000e-01
  %6058 = fmul fast float %4680, 4.000000e+00
  %6059 = fmul fast float %6058, %6041
  %6060 = fmul fast float %6059, %6055
  %6061 = fmul fast float %4681, 4.000000e+00
  %6062 = fmul fast float %6061, %6042
  %6063 = fmul fast float %6062, %6056
  %6064 = fmul fast float %4700, 4.000000e+00
  %6065 = fmul fast float %6064, %6043
  %6066 = fmul fast float %6065, %6057
  %6067 = fadd fast float %6060, %6047
  %6068 = fadd fast float %6063, %6048
  %6069 = fadd fast float %6066, %6049
  %6070 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  %6071 = call float @dx.op.unary.f32(i32 7, float %6068)  ; Saturate(value)
  %6072 = call float @dx.op.unary.f32(i32 7, float %6069)  ; Saturate(value)
  br label %6073

; <label>:6073                                    ; preds = %6050, %5986
  %6074 = phi float [ %6070, %6050 ], [ %6047, %5986 ]
  %6075 = phi float [ %6071, %6050 ], [ %6048, %5986 ]
  %6076 = phi float [ %6072, %6050 ], [ %6049, %5986 ]
  %6077 = fmul fast float %5998, 9.843750e-01
  %6078 = fadd fast float %6077, 7.812500e-03
  %6079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6078, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6080 = extractvalue %dx.types.ResRet.f32 %6079, 2
  %6081 = extractvalue %dx.types.ResRet.f32 %6079, 3
  %6082 = fmul fast float %6080, %4680
  %6083 = fmul fast float %6080, %4681
  %6084 = fmul fast float %6080, %4700
  %6085 = fadd fast float %6082, %6081
  %6086 = fadd fast float %6083, %6081
  %6087 = fadd fast float %6084, %6081
  br i1 %4975, label %6088, label %6111

; <label>:6088                                    ; preds = %6073
  %6089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4067, float %5998, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6090 = extractvalue %dx.types.ResRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.ResRet.f32 %6089, 1
  %6092 = extractvalue %dx.types.ResRet.f32 %6089, 2
  %6093 = fadd fast float %6090, -5.000000e-01
  %6094 = fadd fast float %6091, -5.000000e-01
  %6095 = fadd fast float %6092, -5.000000e-01
  %6096 = fmul fast float %4680, 4.000000e+00
  %6097 = fmul fast float %6096, %6041
  %6098 = fmul fast float %6097, %6093
  %6099 = fmul fast float %4681, 4.000000e+00
  %6100 = fmul fast float %6099, %6042
  %6101 = fmul fast float %6100, %6094
  %6102 = fmul fast float %4700, 4.000000e+00
  %6103 = fmul fast float %6102, %6043
  %6104 = fmul fast float %6103, %6095
  %6105 = fadd fast float %6098, %6085
  %6106 = fadd fast float %6101, %6086
  %6107 = fadd fast float %6104, %6087
  %6108 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6109 = call float @dx.op.unary.f32(i32 7, float %6106)  ; Saturate(value)
  %6110 = call float @dx.op.unary.f32(i32 7, float %6107)  ; Saturate(value)
  br label %6111

; <label>:6111                                    ; preds = %6088, %6073
  %6112 = phi float [ %6108, %6088 ], [ %6085, %6073 ]
  %6113 = phi float [ %6109, %6088 ], [ %6086, %6073 ]
  %6114 = phi float [ %6110, %6088 ], [ %6087, %6073 ]
  %6115 = call float @dx.op.binary.f32(i32 35, float %6113, float %6114)  ; FMax(a,b)
  %6116 = call float @dx.op.binary.f32(i32 35, float %6112, float %6115)  ; FMax(a,b)
  %6117 = fsub fast float 1.000000e+00, %6116
  %6118 = fmul fast float %6074, %6032
  %6119 = fmul fast float %6075, %6032
  %6120 = fmul fast float %6076, %6032
  %6121 = fsub fast float 1.000000e+00, %5999
  %6122 = bitcast float %6121 to i32
  %6123 = sitofp i32 %6122 to float
  %6124 = fmul fast float %6123, 5.000000e+00
  %6125 = fadd fast float %6124, 0xC1EFBF8940000000
  %6126 = fptosi float %6125 to i32
  %6127 = bitcast i32 %6126 to float
  %6128 = fmul fast float %6127, %4068
  %6129 = fmul fast float %6117, %6128
  %6130 = fmul fast float %6129, %5901
  %6131 = fmul fast float %6129, %5902
  %6132 = fmul fast float %6129, %5903
  %6133 = fadd fast float %6130, %6118
  %6134 = fadd fast float %6131, %6119
  %6135 = fadd fast float %6132, %6120
  %6136 = fmul fast float %6004, %5987
  %6137 = fmul fast float %6136, %6117
  %6138 = fmul fast float %6004, %5988
  %6139 = fmul fast float %6138, %6117
  %6140 = fmul fast float %6004, %5989
  %6141 = fmul fast float %6140, %6117
  %6142 = fmul fast float %6136, %6133
  %6143 = fmul fast float %6138, %6134
  %6144 = fmul fast float %6140, %6135
  %6145 = fadd fast float %6137, %5885
  %6146 = fmul fast float %6145, %4094
  %6147 = fadd fast float %6139, %5886
  %6148 = fmul fast float %6147, %4094
  %6149 = fadd fast float %6141, %5887
  %6150 = fmul fast float %6149, %4094
  %6151 = fadd fast float %6142, %5928
  %6152 = fmul fast float %6151, %4094
  %6153 = fadd fast float %6143, %5931
  %6154 = fmul fast float %6153, %4094
  %6155 = fadd fast float %6144, %5934
  %6156 = fmul fast float %6155, %4094
  br label %6157

; <label>:6157                                    ; preds = %6111, %5979, %5881
  %6158 = phi float [ %5929, %5881 ], [ %5929, %5979 ], [ %6152, %6111 ]
  %6159 = phi float [ %5932, %5881 ], [ %5932, %5979 ], [ %6154, %6111 ]
  %6160 = phi float [ %5935, %5881 ], [ %5935, %5979 ], [ %6156, %6111 ]
  %6161 = phi float [ %5924, %5881 ], [ %5924, %5979 ], [ %6146, %6111 ]
  %6162 = phi float [ %5925, %5881 ], [ %5925, %5979 ], [ %6148, %6111 ]
  %6163 = phi float [ %5926, %5881 ], [ %5926, %5979 ], [ %6150, %6111 ]
  %6164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = extractvalue %dx.types.CBufRet.i32 %6164, 0
  %6166 = icmp eq i32 %6165, 0
  br i1 %6166, label %6597, label %6167

; <label>:6167                                    ; preds = %6157
  %6168 = fptoui float %85 to i32
  %6169 = fptoui float %86 to i32
  %6170 = lshr i32 %6168, 4
  %6171 = lshr i32 %6169, 4
  %6172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.i32 %6172, 0
  %6174 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6171, i32 %6173, i32 %6170)  ; UMad(a,b,c)
  %6175 = add nsw i32 %6165, -1
  %6176 = call i32 @dx.op.binary.i32(i32 37, i32 %6175, i32 0)  ; IMax(a,b)
  %6177 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6178 = fptoui float %6177 to i32
  %6179 = lshr i32 %6178, 5
  %6180 = call i32 @dx.op.binary.i32(i32 40, i32 %6179, i32 8191)  ; UMin(a,b)
  %6181 = shl i32 %6180, 2
  %6182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6181, i32 undef)  ; BufferLoad(srv,index,wot)
  %6183 = extractvalue %dx.types.ResRet.i32 %6182, 0
  %6184 = lshr i32 %6183, 16
  %6185 = and i32 %6183, 65535
  %6186 = lshr i32 %6183, 21
  %6187 = lshr i32 %6185, 5
  %6188 = call i32 @dx.op.binary.i32(i32 40, i32 %6187, i32 %6176)  ; UMin(a,b)
  %6189 = icmp ugt i32 %6186, %6188
  br i1 %6189, label %6597, label %6190

; <label>:6190                                    ; preds = %6167
  br label %6191

; <label>:6191                                    ; preds = %6587, %6190
  %6192 = phi i32 [ %6594, %6587 ], [ %6186, %6190 ]
  %6193 = phi float [ %6588, %6587 ], [ %6158, %6190 ]
  %6194 = phi float [ %6589, %6587 ], [ %6159, %6190 ]
  %6195 = phi float [ %6590, %6587 ], [ %6160, %6190 ]
  %6196 = phi float [ %6591, %6587 ], [ %6161, %6190 ]
  %6197 = phi float [ %6592, %6587 ], [ %6162, %6190 ]
  %6198 = phi float [ %6593, %6587 ], [ %6163, %6190 ]
  %6199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6200 = extractvalue %dx.types.CBufRet.i32 %6199, 0
  %6201 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6174, i32 %6200, i32 %6192)  ; UMad(a,b,c)
  %6202 = shl i32 %6201, 2
  %6203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6202, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.i32 %6203, 0
  %6205 = shl i32 %6192, 5
  %6206 = sub nsw i32 %6184, %6205
  %6207 = call i32 @dx.op.binary.i32(i32 37, i32 %6206, i32 0)  ; IMax(a,b)
  %6208 = call i32 @dx.op.binary.i32(i32 38, i32 %6207, i32 31)  ; IMin(a,b)
  %6209 = sub nsw i32 1, %6184
  %6210 = add nsw i32 %6209, %6185
  %6211 = call i32 @dx.op.binary.i32(i32 37, i32 %6210, i32 0)  ; IMax(a,b)
  %6212 = call i32 @dx.op.binary.i32(i32 38, i32 %6211, i32 32)  ; IMin(a,b)
  %6213 = and i32 %6212, 31
  %6214 = shl i32 -1, %6213
  %6215 = xor i32 %6214, -1
  %6216 = and i32 %6208, 31
  %6217 = shl i32 %6215, %6216
  %6218 = icmp eq i32 %6212, 32
  %6219 = select i1 %6218, i32 -1, i32 %6217
  %6220 = and i32 %6219, %6204
  %6221 = icmp eq i32 %6220, 0
  br i1 %6221, label %6587, label %6222

; <label>:6222                                    ; preds = %6191
  br label %6223

; <label>:6223                                    ; preds = %6303, %6222
  %6224 = phi i32 [ %6235, %6303 ], [ %6220, %6222 ]
  %6225 = phi float [ %6304, %6303 ], [ %6193, %6222 ]
  %6226 = phi float [ %6305, %6303 ], [ %6194, %6222 ]
  %6227 = phi float [ %6306, %6303 ], [ %6195, %6222 ]
  %6228 = phi float [ %6307, %6303 ], [ %6196, %6222 ]
  %6229 = phi float [ %6308, %6303 ], [ %6197, %6222 ]
  %6230 = phi float [ %6309, %6303 ], [ %6198, %6222 ]
  %6231 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6224)  ; FirstbitLo(value)
  %6232 = add i32 %6231, %6205
  %6233 = and i32 %6231, 31
  %6234 = shl i32 1, %6233
  %6235 = xor i32 %6234, %6224
  %6236 = mul i32 %6232, 112
  %6237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.f32 %6237, 0
  %6239 = extractvalue %dx.types.ResRet.f32 %6237, 1
  %6240 = extractvalue %dx.types.ResRet.f32 %6237, 2
  %6241 = or i32 %6236, 12
  %6242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6241, i32 undef)  ; BufferLoad(srv,index,wot)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 0
  %6244 = add i32 %6236, 44
  %6245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6244, i32 undef)  ; BufferLoad(srv,index,wot)
  %6246 = extractvalue %dx.types.ResRet.f32 %6245, 0
  %6247 = add i32 %6236, 48
  %6248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6247, i32 undef)  ; BufferLoad(srv,index,wot)
  %6249 = extractvalue %dx.types.ResRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.ResRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.ResRet.f32 %6248, 2
  %6252 = add i32 %6236, 80
  %6253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6252, i32 undef)  ; BufferLoad(srv,index,wot)
  %6254 = extractvalue %dx.types.ResRet.f32 %6253, 1
  %6255 = extractvalue %dx.types.ResRet.f32 %6253, 2
  %6256 = call float @dx.op.dot3.f32(i32 55, float %6238, float %6239, float %6240, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6257 = select i1 %218, float %6254, float %6238
  %6258 = select i1 %218, float %6256, float %6239
  %6259 = select i1 %218, float %6255, float %6240
  %6260 = fsub fast float %6249, %144
  %6261 = fsub fast float %6250, %145
  %6262 = fsub fast float %6251, %146
  %6263 = call float @dx.op.dot3.f32(i32 55, float %6260, float %6261, float %6262, float %6260, float %6261, float %6262)  ; Dot3(ax,ay,az,bx,by,bz)
  %6264 = call float @dx.op.unary.f32(i32 24, float %6263)  ; Sqrt(value)
  %6265 = fdiv fast float 1.000000e+00, %6264
  %6266 = fmul fast float %6265, %6260
  %6267 = fmul fast float %6265, %6261
  %6268 = fmul fast float %6265, %6262
  %6269 = fadd fast float %6264, %6243
  %6270 = fdiv fast float 1.000000e+00, %6269
  %6271 = fmul float %6246, %6270
  %6272 = fmul float %6271, %6271
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = and i32 %6234, %6220
  %6275 = icmp eq i32 %6274, 0
  br i1 %6275, label %6298, label %6276, !dx.controlflow.hints !91

; <label>:6276                                    ; preds = %6223
  %6277 = lshr i32 %6168, 5
  %6278 = lshr i32 %6169, 5
  %6279 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6277, i32 %6278, i32 %6232, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6280 = extractvalue %dx.types.ResRet.i32 %6279, 0
  %6281 = and i32 %6280, 3
  %6282 = icmp eq i32 %6281, 0
  %6283 = select i1 %6282, float 1.000000e+00, float 0.000000e+00
  %6284 = icmp eq i32 %6281, 3
  br i1 %6284, label %6285, label %6298

; <label>:6285                                    ; preds = %6276
  %6286 = lshr i32 %6280, 10
  %6287 = and i32 %6286, 8160
  %6288 = and i32 %6169, 31
  %6289 = or i32 %6287, %6288
  %6290 = lshr i32 %6280, 1
  %6291 = and i32 %6290, 16352
  %6292 = and i32 %6168, 31
  %6293 = or i32 %6291, %6292
  %6294 = lshr i32 %6280, 23
  %6295 = and i32 %6294, 255
  %6296 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6293, i32 %6289, i32 %6295, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6297 = extractvalue %dx.types.ResRet.f32 %6296, 0
  br label %6298

; <label>:6298                                    ; preds = %6285, %6276, %6223
  %6299 = phi float [ %6297, %6285 ], [ %6283, %6276 ], [ 0.000000e+00, %6223 ]
  %6300 = call float @dx.op.binary.f32(i32 36, float %6299, float %6299)  ; FMin(a,b)
  %6301 = call float @dx.op.binary.f32(i32 36, float %6299, float %6300)  ; FMin(a,b)
  %6302 = fcmp fast ogt float %6301, 0.000000e+00
  br i1 %6302, label %6311, label %6303, !dx.controlflow.hints !92

; <label>:6303                                    ; preds = %6543, %6298
  %6304 = phi float [ %6225, %6298 ], [ %6583, %6543 ]
  %6305 = phi float [ %6226, %6298 ], [ %6584, %6543 ]
  %6306 = phi float [ %6227, %6298 ], [ %6585, %6543 ]
  %6307 = phi float [ %6228, %6298 ], [ %6577, %6543 ]
  %6308 = phi float [ %6229, %6298 ], [ %6578, %6543 ]
  %6309 = phi float [ %6230, %6298 ], [ %6579, %6543 ]
  %6310 = icmp eq i32 %6224, %6234
  br i1 %6310, label %6586, label %6223

; <label>:6311                                    ; preds = %6298
  %6312 = fmul fast float %6299, %6257
  %6313 = fmul fast float %6299, %6258
  %6314 = fmul fast float %6299, %6259
  %6315 = fsub fast float %6251, %4491
  %6316 = fcmp fast ogt float %6315, 0.000000e+00
  %6317 = fsub fast float %146, %4491
  %6318 = fcmp fast ogt float %6317, 0.000000e+00
  %6319 = xor i1 %6318, %6316
  %6320 = fsub fast float %4491, %6251
  %6321 = fmul fast float %6320, 2.000000e+00
  %6322 = fadd fast float %6321, %6251
  %6323 = select i1 %6319, float %6251, float %6322
  %6324 = fsub fast float %6323, %146
  %6325 = call float @dx.op.dot3.f32(i32 55, float %6260, float %6261, float %6324, float %6260, float %6261, float %6324)  ; Dot3(ax,ay,az,bx,by,bz)
  %6326 = call float @dx.op.unary.f32(i32 25, float %6325)  ; Rsqrt(value)
  %6327 = fmul fast float %6326, %6260
  %6328 = fmul fast float %6326, %6261
  %6329 = fmul fast float %6326, %6324
  %6330 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4499)  ; Dot3(ax,ay,az,bx,by,bz)
  %6331 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6327, float %6328, float %6329)  ; Dot3(ax,ay,az,bx,by,bz)
  %6332 = fdiv fast float 1.000000e+00, %6331
  %6333 = fmul fast float %6332, %6330
  %6334 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6317, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = fcmp fast ogt float %6334, 0.000000e+00
  %6336 = fcmp fast olt float %6334, 0.000000e+00
  %6337 = zext i1 %6335 to i32
  %6338 = zext i1 %6336 to i32
  %6339 = sub nsw i32 %6337, %6338
  %6340 = sitofp i32 %6339 to float
  %6341 = fsub fast float %6323, %4491
  %6342 = call float @dx.op.dot3.f32(i32 55, float %6260, float %6261, float %6341, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6343 = fcmp fast ogt float %6342, 0.000000e+00
  %6344 = fcmp fast olt float %6342, 0.000000e+00
  %6345 = zext i1 %6343 to i32
  %6346 = zext i1 %6344 to i32
  %6347 = sub nsw i32 %6345, %6346
  %6348 = sitofp i32 %6347 to float
  %6349 = fcmp fast une float %6340, %6348
  br i1 %6349, label %6350, label %6360

; <label>:6350                                    ; preds = %6311
  %6351 = fmul fast float %6333, %6329
  %6352 = fmul fast float %6333, %6328
  %6353 = fmul fast float %6333, %6327
  %6354 = fmul fast float %6353, %6353
  %6355 = fmul fast float %6352, %6352
  %6356 = fadd fast float %6354, %6355
  %6357 = fmul fast float %6351, %6351
  %6358 = fadd fast float %6356, %6357
  %6359 = call float @dx.op.unary.f32(i32 24, float %6358)  ; Sqrt(value)
  br label %6372

; <label>:6360                                    ; preds = %6311
  %6361 = icmp slt i32 %6339, 0
  br i1 %6361, label %6362, label %6372

; <label>:6362                                    ; preds = %6360
  %6363 = fsub fast float %144, %6249
  %6364 = fsub fast float %145, %6250
  %6365 = fsub fast float %146, %6323
  %6366 = fmul fast float %6363, %6363
  %6367 = fmul fast float %6364, %6364
  %6368 = fadd fast float %6366, %6367
  %6369 = fmul fast float %6365, %6365
  %6370 = fadd fast float %6368, %6369
  %6371 = call float @dx.op.unary.f32(i32 24, float %6370)  ; Sqrt(value)
  br label %6372

; <label>:6372                                    ; preds = %6362, %6360, %6350
  %6373 = phi float [ %6359, %6350 ], [ %6371, %6362 ], [ 0.000000e+00, %6360 ]
  %6374 = and i1 %6318, %6316
  %6375 = fsub fast float -0.000000e+00, %6373
  %6376 = select i1 %6374, float -0.000000e+00, float %6375
  %6377 = fmul fast float %4492, 0x3FF7154760000000
  %6378 = fmul fast float %6377, %6376
  %6379 = fmul fast float %4493, 0x3FF7154760000000
  %6380 = fmul fast float %6379, %6376
  %6381 = fmul fast float %4494, 0x3FF7154760000000
  %6382 = fmul fast float %6381, %6376
  %6383 = call float @dx.op.unary.f32(i32 21, float %6378)  ; Exp(value)
  %6384 = call float @dx.op.unary.f32(i32 21, float %6380)  ; Exp(value)
  %6385 = call float @dx.op.unary.f32(i32 21, float %6382)  ; Exp(value)
  %6386 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  %6387 = call float @dx.op.unary.f32(i32 7, float %6384)  ; Saturate(value)
  %6388 = call float @dx.op.unary.f32(i32 7, float %6385)  ; Saturate(value)
  %6389 = fmul fast float %6312, %6386
  %6390 = fmul fast float %6313, %6387
  %6391 = fmul fast float %6314, %6388
  %6392 = fsub fast float %6266, %164
  %6393 = fsub fast float %6267, %165
  %6394 = fsub fast float %6268, %166
  %6395 = call float @dx.op.dot3.f32(i32 55, float %6392, float %6393, float %6394, float %6392, float %6393, float %6394)  ; Dot3(ax,ay,az,bx,by,bz)
  %6396 = call float @dx.op.unary.f32(i32 25, float %6395)  ; Rsqrt(value)
  %6397 = fmul fast float %6396, %6392
  %6398 = fmul fast float %6396, %6393
  %6399 = fmul fast float %6396, %6394
  %6400 = call float @dx.op.dot3.f32(i32 55, float %6266, float %6267, float %6268, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %6401 = call float @dx.op.dot3.f32(i32 55, float %4508, float %4509, float %4510, float %6397, float %6398, float %6399)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = call float @dx.op.unary.f32(i32 7, float %6400)  ; Saturate(value)
  %6403 = fmul fast float %6402, %6273
  %6404 = fmul fast float %6402, %6402
  %6405 = fmul fast float %6404, %4727
  %6406 = call float @dx.op.unary.f32(i32 7, float %6405)  ; Saturate(value)
  %6407 = fmul fast float %6403, %6406
  %6408 = bitcast float %6263 to i32
  %6409 = ashr i32 %6408, 1
  %6410 = sub nsw i32 1597463007, %6409
  %6411 = bitcast i32 %6410 to float
  %6412 = fmul fast float %6411, %6260
  %6413 = fmul fast float %6411, %6261
  %6414 = fmul fast float %6411, %6262
  %6415 = fsub fast float %6412, %164
  %6416 = fsub fast float %6413, %165
  %6417 = fsub fast float %6414, %166
  %6418 = call float @dx.op.dot3.f32(i32 55, float %6415, float %6416, float %6417, float %6415, float %6416, float %6417)  ; Dot3(ax,ay,az,bx,by,bz)
  %6419 = call float @dx.op.unary.f32(i32 25, float %6418)  ; Rsqrt(value)
  %6420 = fmul fast float %6415, %6419
  %6421 = fmul fast float %6416, %6419
  %6422 = fmul fast float %6417, %6419
  %6423 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %6420, float %6421, float %6422)  ; Dot3(ax,ay,az,bx,by,bz)
  %6424 = fmul fast float %6423, %6423
  %6425 = call float @dx.op.unary.f32(i32 6, float %6400)  ; FAbs(value)
  %6426 = fsub fast float 1.000000e+00, %4720
  %6427 = fmul fast float %4702, %4702
  %6428 = fmul fast float %6427, %6426
  %6429 = fadd fast float %6428, %4720
  %6430 = bitcast float %6429 to i32
  %6431 = ashr i32 %6430, 1
  %6432 = add nsw i32 %6431, 532487669
  %6433 = bitcast i32 %6432 to float
  %6434 = fadd fast float %6433, %4702
  %6435 = fmul fast float %4720, %6424
  %6436 = fsub fast float 1.000000e+00, %6424
  %6437 = fadd fast float %6436, %6435
  %6438 = fmul fast float %6425, %6425
  %6439 = fmul fast float %6438, %6426
  %6440 = fadd fast float %6439, %4720
  %6441 = bitcast float %6440 to i32
  %6442 = ashr i32 %6441, 1
  %6443 = add nsw i32 %6442, 532487669
  %6444 = bitcast i32 %6443 to float
  %6445 = fadd fast float %6444, %6425
  %6446 = fmul fast float %6437, %6437
  %6447 = fmul fast float %6446, %6434
  %6448 = fmul fast float %6447, %6445
  %6449 = fdiv fast float 1.000000e+00, %6448
  %6450 = bitcast float %4720 to i32
  %6451 = sitofp i32 %6450 to float
  %6452 = fmul fast float %6451, 0x3FE7F73180000000
  %6453 = fadd fast float %6452, 0x41AFE27C40000000
  %6454 = fptosi float %6453 to i32
  %6455 = bitcast i32 %6454 to float
  %6456 = fmul fast float %6246, 0x3FD80E9D60000000
  %6457 = fmul fast float %6456, %6411
  %6458 = fadd fast float %6455, %6457
  %6459 = bitcast float %6458 to i32
  %6460 = sub nsw i32 2129859010, %6459
  %6461 = bitcast i32 %6460 to float
  %6462 = fmul fast float %4720, %6449
  %6463 = fmul fast float %6462, %6455
  %6464 = fmul fast float %6463, %6461
  %6465 = call float @dx.op.unary.f32(i32 6, float %6401)  ; FAbs(value)
  %6466 = fsub fast float 1.000000e+00, %6465
  %6467 = bitcast float %6466 to i32
  %6468 = sitofp i32 %6467 to float
  %6469 = fmul fast float %6468, 5.000000e+00
  %6470 = fadd fast float %6469, 0xC1EFBF8940000000
  %6471 = fptosi float %6470 to i32
  %6472 = bitcast i32 %6471 to float
  %6473 = fsub fast float 1.000000e+00, %4680
  %6474 = fsub fast float 1.000000e+00, %4681
  %6475 = fsub fast float 1.000000e+00, %4700
  %6476 = fmul fast float %6472, %6473
  %6477 = fmul fast float %6472, %6474
  %6478 = fmul fast float %6472, %6475
  %6479 = fadd fast float %6476, %4680
  %6480 = fadd fast float %6477, %4681
  %6481 = fadd fast float %6478, %4700
  br i1 %4975, label %6482, label %6505

; <label>:6482                                    ; preds = %6372
  %6483 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4067, float %6465, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.ResRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.ResRet.f32 %6483, 2
  %6487 = fadd fast float %6484, -5.000000e-01
  %6488 = fadd fast float %6485, -5.000000e-01
  %6489 = fadd fast float %6486, -5.000000e-01
  %6490 = fmul fast float %4680, 4.000000e+00
  %6491 = fmul fast float %6490, %6473
  %6492 = fmul fast float %6491, %6487
  %6493 = fmul fast float %4681, 4.000000e+00
  %6494 = fmul fast float %6493, %6474
  %6495 = fmul fast float %6494, %6488
  %6496 = fmul fast float %4700, 4.000000e+00
  %6497 = fmul fast float %6496, %6475
  %6498 = fmul fast float %6497, %6489
  %6499 = fadd fast float %6492, %6479
  %6500 = fadd fast float %6495, %6480
  %6501 = fadd fast float %6498, %6481
  %6502 = call float @dx.op.unary.f32(i32 7, float %6499)  ; Saturate(value)
  %6503 = call float @dx.op.unary.f32(i32 7, float %6500)  ; Saturate(value)
  %6504 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  br label %6505

; <label>:6505                                    ; preds = %6482, %6372
  %6506 = phi float [ %6502, %6482 ], [ %6479, %6372 ]
  %6507 = phi float [ %6503, %6482 ], [ %6480, %6372 ]
  %6508 = phi float [ %6504, %6482 ], [ %6481, %6372 ]
  %6509 = fmul fast float %6400, 9.843750e-01
  %6510 = fadd fast float %6509, 7.812500e-03
  %6511 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6510, float %4965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6512 = extractvalue %dx.types.ResRet.f32 %6511, 2
  %6513 = extractvalue %dx.types.ResRet.f32 %6511, 3
  %6514 = fmul fast float %6512, %4680
  %6515 = fmul fast float %6512, %4681
  %6516 = fmul fast float %6512, %4700
  %6517 = fadd fast float %6514, %6513
  %6518 = fadd fast float %6515, %6513
  %6519 = fadd fast float %6516, %6513
  br i1 %4975, label %6520, label %6543

; <label>:6520                                    ; preds = %6505
  %6521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4067, float %6400, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6522 = extractvalue %dx.types.ResRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.ResRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.ResRet.f32 %6521, 2
  %6525 = fadd fast float %6522, -5.000000e-01
  %6526 = fadd fast float %6523, -5.000000e-01
  %6527 = fadd fast float %6524, -5.000000e-01
  %6528 = fmul fast float %4680, 4.000000e+00
  %6529 = fmul fast float %6528, %6473
  %6530 = fmul fast float %6529, %6525
  %6531 = fmul fast float %4681, 4.000000e+00
  %6532 = fmul fast float %6531, %6474
  %6533 = fmul fast float %6532, %6526
  %6534 = fmul fast float %4700, 4.000000e+00
  %6535 = fmul fast float %6534, %6475
  %6536 = fmul fast float %6535, %6527
  %6537 = fadd fast float %6530, %6517
  %6538 = fadd fast float %6533, %6518
  %6539 = fadd fast float %6536, %6519
  %6540 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6541 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6542 = call float @dx.op.unary.f32(i32 7, float %6539)  ; Saturate(value)
  br label %6543

; <label>:6543                                    ; preds = %6520, %6505
  %6544 = phi float [ %6540, %6520 ], [ %6517, %6505 ]
  %6545 = phi float [ %6541, %6520 ], [ %6518, %6505 ]
  %6546 = phi float [ %6542, %6520 ], [ %6519, %6505 ]
  %6547 = call float @dx.op.binary.f32(i32 35, float %6545, float %6546)  ; FMax(a,b)
  %6548 = call float @dx.op.binary.f32(i32 35, float %6544, float %6547)  ; FMax(a,b)
  %6549 = fsub fast float 1.000000e+00, %6548
  %6550 = fmul fast float %6506, %6464
  %6551 = fmul fast float %6507, %6464
  %6552 = fmul fast float %6508, %6464
  %6553 = fsub fast float 1.000000e+00, %6401
  %6554 = bitcast float %6553 to i32
  %6555 = sitofp i32 %6554 to float
  %6556 = fmul fast float %6555, 5.000000e+00
  %6557 = fadd fast float %6556, 0xC1EFBF8940000000
  %6558 = fptosi float %6557 to i32
  %6559 = bitcast i32 %6558 to float
  %6560 = fmul fast float %6559, %4068
  %6561 = fmul fast float %6549, %6560
  %6562 = fmul fast float %6561, %5901
  %6563 = fmul fast float %6561, %5902
  %6564 = fmul fast float %6561, %5903
  %6565 = fadd fast float %6562, %6550
  %6566 = fadd fast float %6563, %6551
  %6567 = fadd fast float %6564, %6552
  %6568 = fmul fast float %6389, %4094
  %6569 = fmul fast float %6568, %6407
  %6570 = fmul fast float %6569, %6549
  %6571 = fmul fast float %6390, %4094
  %6572 = fmul fast float %6571, %6407
  %6573 = fmul fast float %6572, %6549
  %6574 = fmul fast float %6391, %4094
  %6575 = fmul fast float %6574, %6407
  %6576 = fmul fast float %6575, %6549
  %6577 = fadd fast float %6570, %6228
  %6578 = fadd fast float %6573, %6229
  %6579 = fadd fast float %6576, %6230
  %6580 = fmul fast float %6569, %6565
  %6581 = fmul fast float %6572, %6566
  %6582 = fmul fast float %6575, %6567
  %6583 = fadd fast float %6580, %6225
  %6584 = fadd fast float %6581, %6226
  %6585 = fadd fast float %6582, %6227
  br label %6303

; <label>:6586                                    ; preds = %6303
  br label %6587

; <label>:6587                                    ; preds = %6586, %6191
  %6588 = phi float [ %6193, %6191 ], [ %6304, %6586 ]
  %6589 = phi float [ %6194, %6191 ], [ %6305, %6586 ]
  %6590 = phi float [ %6195, %6191 ], [ %6306, %6586 ]
  %6591 = phi float [ %6196, %6191 ], [ %6307, %6586 ]
  %6592 = phi float [ %6197, %6191 ], [ %6308, %6586 ]
  %6593 = phi float [ %6198, %6191 ], [ %6309, %6586 ]
  %6594 = add i32 %6192, 1
  %6595 = icmp ugt i32 %6594, %6188
  br i1 %6595, label %6596, label %6191

; <label>:6596                                    ; preds = %6587
  br label %6597

; <label>:6597                                    ; preds = %6596, %6167, %6157
  %6598 = phi float [ %6158, %6157 ], [ %6158, %6167 ], [ %6588, %6596 ]
  %6599 = phi float [ %6159, %6157 ], [ %6159, %6167 ], [ %6589, %6596 ]
  %6600 = phi float [ %6160, %6157 ], [ %6160, %6167 ], [ %6590, %6596 ]
  %6601 = phi float [ %6161, %6157 ], [ %6161, %6167 ], [ %6591, %6596 ]
  %6602 = phi float [ %6162, %6157 ], [ %6162, %6167 ], [ %6592, %6596 ]
  %6603 = phi float [ %6163, %6157 ], [ %6163, %6167 ], [ %6593, %6596 ]
  %6604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %6605 = extractvalue %dx.types.ResRet.i32 %6604, 3
  %6606 = bitcast i32 %6605 to float
  %6607 = fsub fast float 1.000000e+00, %6606
  %6608 = fmul fast float %6607, %178
  %6609 = fadd fast float %6608, %6606
  %6610 = call float @dx.op.unary.f32(i32 24, float %4674)  ; Sqrt(value)
  %6611 = call float @dx.op.unary.f32(i32 24, float %4675)  ; Sqrt(value)
  %6612 = call float @dx.op.unary.f32(i32 24, float %4676)  ; Sqrt(value)
  %6613 = fmul fast float %6610, %6601
  %6614 = fmul fast float %6611, %6602
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 0
  br i1 %218, label %6617, label %6649

; <label>:6617                                    ; preds = %6597
  %6618 = fadd fast float %6603, %4070
  %6619 = fmul fast float %6618, %4072
  %6620 = fsub fast float 1.000000e+00, %4072
  %6621 = call float @dx.op.unary.f32(i32 7, float %6620)  ; Saturate(value)
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 3
  %6624 = fmul fast float %6623, %6621
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 0
  %6627 = fmul fast float %6626, %5907
  %6628 = extractvalue %dx.types.CBufRet.f32 %6625, 2
  %6629 = fmul fast float %6628, %4698
  %6630 = fadd fast float %6614, %6613
  %6631 = fmul fast float %6616, %6630
  %6632 = extractvalue %dx.types.CBufRet.f32 %6622, 1
  %6633 = fadd fast float %6624, %6619
  %6634 = fsub fast float %6633, %6627
  %6635 = fadd fast float %6634, %6629
  %6636 = fsub fast float %6635, %6632
  %6637 = extractvalue %dx.types.CBufRet.f32 %6622, 2
  %6638 = fmul fast float %6636, %6637
  %6639 = call float @dx.op.unary.f32(i32 7, float %6638)  ; Saturate(value)
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = fsub fast float %6639, %6641
  %6643 = fmul fast float %6642, 1.000000e+01
  %6644 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  %6645 = fsub fast float %4071, %6609
  %6646 = fmul fast float %6644, %6645
  %6647 = fadd fast float %6646, %6609
  %6648 = fmul fast float %6647, %6639
  br label %6665

; <label>:6649                                    ; preds = %6597
  %6650 = fmul fast float %6612, %6603
  %6651 = fmul fast float %6616, %6613
  %6652 = fmul fast float %6616, %6614
  %6653 = fmul fast float %6650, %6616
  %6654 = add i32 %45, 356
  %6655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6654, i32 undef)  ; BufferLoad(srv,index,wot)
  %6656 = extractvalue %dx.types.ResRet.i32 %6655, 0
  %6657 = and i32 %6656, 32
  %6658 = icmp eq i32 %6657, 0
  br i1 %6658, label %6665, label %6659

; <label>:6659                                    ; preds = %6649
  %6660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6660, 0
  %6662 = fmul fast float %6661, 0x3FE99999A0000000
  %6663 = fadd fast float %6661, %6651
  %6664 = fadd fast float %6662, %6653
  br label %6665

; <label>:6665                                    ; preds = %6659, %6649, %6617
  %6666 = phi float [ %6631, %6617 ], [ %6663, %6659 ], [ %6651, %6649 ]
  %6667 = phi float [ %6648, %6617 ], [ %6652, %6659 ], [ %6652, %6649 ]
  %6668 = phi float [ %6647, %6617 ], [ %6664, %6659 ], [ %6653, %6649 ]
  %6669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6670 = extractvalue %dx.types.CBufRet.f32 %6669, 0
  %6671 = fmul fast float %6670, %6599
  %6672 = fmul fast float %6670, %6600
  %6673 = fadd fast float %6599, %6598
  %6674 = select i1 %218, float %6673, float %6598
  %6675 = fmul float %6674, %6670
  %6676 = select i1 %218, float 0.000000e+00, float %6671
  %6677 = select i1 %218, float 0.000000e+00, float %6672
  %6678 = fmul fast float %6666, %6610
  %6679 = fmul fast float %6667, %6611
  %6680 = fmul fast float %6668, %6612
  %6681 = fadd fast float %6675, %6678
  %6682 = fadd fast float %6676, %6679
  %6683 = fadd fast float %6677, %6680
  %6684 = select i1 %218, float %6667, float %6682
  %6685 = select i1 %218, float %6668, float %6683
  %6686 = call float @dx.op.binary.f32(i32 36, float %6681, float 3.225500e+04)  ; FMin(a,b)
  %6687 = call float @dx.op.binary.f32(i32 36, float %6684, float 3.225500e+04)  ; FMin(a,b)
  %6688 = call float @dx.op.binary.f32(i32 36, float %6685, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6686)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6687)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6688)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !84}
!59 = !{!60, !82, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !81}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 14}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 3}
!68 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !71}
!71 = !{i32 3, i32 15}
!72 = !{i32 5, !"SH_RED", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !71}
!73 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!74 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, !71}
!75 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 8, i8 0, !67}
!76 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 9, i8 0, !71}
!77 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 10, i8 0, !78}
!78 = !{i32 3, i32 13}
!79 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 11, i8 0, !80}
!80 = !{i32 3, i32 1}
!81 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!84 = !{i32 0, i64 24}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}

