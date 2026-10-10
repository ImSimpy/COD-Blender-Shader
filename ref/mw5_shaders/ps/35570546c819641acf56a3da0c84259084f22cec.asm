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
; shader hash: 9fe0bfc5db4e7a60cd6e6781d2c7ca77
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
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %85
  %151 = fmul fast float %149, %86
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %153, 114688
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, float %150, float 0.000000e+00
  %157 = select i1 %155, float %151, float 0.000000e+00
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %156, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fmul fast float %159, 2.550000e+02
  %161 = fptoui float %160 to i32
  %162 = select i1 %155, i32 %161, i32 0
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 3
  %166 = and i32 %165, 3
  %167 = icmp ne i32 %166, 0
  %168 = and i32 %165, 4
  %169 = icmp ne i32 %168, 0
  %170 = and i1 %167, %169
  br i1 %170, label %171, label %182

; <label>:171                                     ; preds = %0
  %172 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %173 = fmul fast float %172, %86
  %174 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %175 = fmul fast float %174, %85
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %175, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fsub fast float 1.000000e+00, %177
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = fcmp fast olt float %178, %180
  br label %185

; <label>:182                                     ; preds = %0
  %183 = icmp eq i32 %168, 0
  %184 = and i1 %167, %183
  br label %185

; <label>:185                                     ; preds = %182, %171
  %186 = phi i1 [ %181, %171 ], [ %184, %182 ]
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = fmul fast float %188, 0x3FE3C6EF40000000
  %190 = frem fast float %85, 2.560000e+02
  %191 = frem fast float %86, 2.560000e+02
  %192 = fptoui float %190 to i32
  %193 = fptoui float %191 to i32
  %194 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = extractvalue %dx.types.ResRet.f32 %194, 1
  %197 = fadd fast float %195, %189
  %198 = fadd fast float %196, %189
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %201 = add i32 %45, 156
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = shl i32 %203, 4
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %203, 7
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %203, 22
  %211 = shl nuw nsw i32 %210, 5
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = add i32 %45, 216
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %215, 8
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %215, 16
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = add i32 %45, 36
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %229, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %45, 288
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = fmul fast float %238, 0x3F50624DE0000000
  %242 = fmul fast float %240, 0x3F50624DE0000000
  %243 = add i32 %45, 172
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = shl i32 %245, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %245, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %245, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %45, 232
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %257, 8
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %257, 16
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = add i32 %45, 52
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %45, 304
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %45, 188
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %45, 248
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %45, 68
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %45, 320
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %45, 204
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = shl i32 %329, 4
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %329, 7
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 22
  %337 = shl nuw nsw i32 %336, 5
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %45, 264
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = add i32 %45, 84
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %45, 336
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %45, 348
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 32
  %373 = icmp eq i32 %372, 0
  %374 = and i32 %371, 64
  %375 = icmp eq i32 %374, 0
  %376 = and i32 %371, 128
  %377 = icmp eq i32 %376, 0
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 2
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %395, label %382

; <label>:382                                     ; preds = %185
  %383 = add i32 %45, 488
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = add i32 %385, 0
  %387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %387, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = fmul fast float %389, %75
  %393 = fmul fast float %390, %76
  %394 = fmul fast float %391, %77
  br label %395

; <label>:395                                     ; preds = %382, %185
  %396 = phi float [ %77, %185 ], [ %394, %382 ]
  %397 = phi float [ %76, %185 ], [ %393, %382 ]
  %398 = phi float [ %75, %185 ], [ %392, %382 ]
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 2
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %422, label %403

; <label>:403                                     ; preds = %395
  %404 = add i32 %45, 44
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 1
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %398, float 1.000000e+00
  %410 = add i32 %45, 60
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 1
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %397, float 1.000000e+00
  %416 = add i32 %45, 76
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 1
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %420, float %396, float 1.000000e+00
  br label %422

; <label>:422                                     ; preds = %403, %395
  %423 = phi float [ %396, %395 ], [ %421, %403 ]
  %424 = phi float [ %397, %395 ], [ %415, %403 ]
  %425 = phi float [ %398, %395 ], [ %409, %403 ]
  %426 = lshr i32 %400, 20
  %427 = and i32 %426, 3
  %428 = add nuw nsw i32 %427, 1
  %429 = add i32 %45, 24
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = add i32 %45, 28
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = or i32 %434, %431
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %924, label %437

; <label>:437                                     ; preds = %422
  %438 = and i32 %431, 262144
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %48, float 1.000000e+00
  %441 = select i1 %439, float %49, float 0.000000e+00
  %442 = select i1 %439, float %50, float 0.000000e+00
  %443 = select i1 %439, float %51, float 1.000000e+00
  %444 = select i1 %439, float %52, float %73
  %445 = select i1 %439, float %53, float %74
  %446 = add i32 %45, 284
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = lshr i32 %448, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = fmul fast float %450, 0x3F50624DE0000000
  %452 = add i32 %45, 88
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = lshr i32 %454, 16
  %456 = and i32 %455, 255
  %457 = lshr i32 %454, 24
  %458 = add i32 %45, 292
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = add i32 %45, 32
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = lshr i32 %467, 22
  %469 = shl nuw nsw i32 %468, 5
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = shl i32 %467, 4
  %472 = and i32 %471, 32752
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %467, 7
  %475 = and i32 %474, 32752
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %479 = fmul fast float %478, 1.000000e+03
  %480 = fmul fast float %241, %479
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fadd fast float %481, %231
  %483 = fmul fast float %242, %479
  %484 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %485 = fadd fast float %484, %233
  %486 = fmul fast float %451, %479
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = fmul fast float %487, 0x401921FB60000000
  %489 = fadd fast float %488, %470
  %490 = call float @dx.op.unary.f32(i32 13, float %489)  ; Sin(value)
  %491 = call float @dx.op.unary.f32(i32 12, float %489)  ; Cos(value)
  %492 = fsub fast float -0.000000e+00, %490
  %493 = fadd fast float %444, -5.000000e-01
  %494 = fadd fast float %445, -5.000000e-01
  %495 = fmul fast float %462, %493
  %496 = fmul fast float %464, %494
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fadd fast float %496, 5.000000e-01
  %499 = fmul fast float %473, %497
  %500 = fmul fast float %476, %498
  %501 = fmul fast float %491, %499
  %502 = call float @dx.op.tertiary.f32(i32 46, float %492, float %500, float %501)  ; FMad(a,b,c)
  %503 = fmul fast float %490, %499
  %504 = call float @dx.op.tertiary.f32(i32 46, float %491, float %500, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %482, %502
  %506 = fadd fast float %485, %504
  %507 = icmp ugt i32 %456, 1
  %508 = icmp ugt i32 %454, 33554431
  %509 = or i1 %508, %507
  br i1 %509, label %510, label %535

; <label>:510                                     ; preds = %437
  %511 = add i32 %45, 228
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = lshr i32 %513, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = fmul fast float %478, %515
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = mul nuw nsw i32 %456, %457
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %517, %519
  %521 = call float @dx.op.unary.f32(i32 27, float %520)  ; Round_ni(value)
  %522 = fptoui float %521 to i32
  %523 = urem i32 %522, %456
  %524 = udiv i32 %522, %457
  %525 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %526 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %527 = uitofp i32 %523 to float
  %528 = uitofp i32 %524 to float
  %529 = fadd fast float %525, %527
  %530 = fadd fast float %526, %528
  %531 = uitofp i32 %456 to float
  %532 = uitofp i32 %457 to float
  %533 = fdiv fast float %529, %531
  %534 = fdiv fast float %530, %532
  br label %535

; <label>:535                                     ; preds = %510, %437
  %536 = phi float [ %533, %510 ], [ %505, %437 ]
  %537 = phi float [ %534, %510 ], [ %506, %437 ]
  %538 = and i32 %431, 16
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %736, label %540

; <label>:540                                     ; preds = %535
  %541 = add i32 %45, 360
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %543, 0
  %545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %545, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 2
  %550 = extractvalue %dx.types.ResRet.f32 %546, 3
  %551 = and i32 %454, 255
  %552 = uitofp i32 %551 to float
  %553 = lshr i32 %454, 8
  %554 = and i32 %553, 255
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %550, %552
  %557 = fadd fast float %556, %555
  %558 = fmul fast float %557, 0x3F70101000000000
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 512
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %571, label %563

; <label>:563                                     ; preds = %540
  %564 = add i32 %45, 440
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = add i32 %566, 0
  %568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %568, %dx.types.Handle %82, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  br label %571

; <label>:571                                     ; preds = %563, %540
  %572 = phi float [ %570, %563 ], [ 1.000000e+00, %540 ]
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 33554432
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %683, label %577

; <label>:577                                     ; preds = %571
  %578 = add i32 %45, 224
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 65535
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %580, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = add i32 %45, 228
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %591, 24
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = and i32 %591, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = lshr i32 %591, 8
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %591, 16
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = add i32 %45, 220
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = lshr i32 %608, 24
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = and i32 %608, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = lshr i32 %608, 8
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = lshr i32 %608, 16
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = bitcast float %547 to i32
  %624 = ashr i32 %623, 1
  %625 = sub nsw i32 1597463174, %624
  %626 = bitcast i32 %625 to float
  %627 = fmul fast float %547, 5.000000e-01
  %628 = fmul fast float %626, %626
  %629 = fmul fast float %628, %627
  %630 = fsub fast float 1.500000e+00, %629
  %631 = fmul fast float %626, %547
  %632 = fmul fast float %631, %630
  %633 = bitcast float %548 to i32
  %634 = ashr i32 %633, 1
  %635 = sub nsw i32 1597463174, %634
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %548, 5.000000e-01
  %638 = fmul fast float %636, %636
  %639 = fmul fast float %638, %637
  %640 = fsub fast float 1.500000e+00, %639
  %641 = fmul fast float %636, %548
  %642 = fmul fast float %641, %640
  %643 = bitcast float %549 to i32
  %644 = ashr i32 %643, 1
  %645 = sub nsw i32 1597463174, %644
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %549, 5.000000e-01
  %648 = fmul fast float %646, %646
  %649 = fmul fast float %648, %647
  %650 = fsub fast float 1.500000e+00, %649
  %651 = fmul fast float %646, %549
  %652 = fmul fast float %651, %650
  %653 = fsub fast float %632, %614
  %654 = fsub fast float %642, %618
  %655 = fsub fast float %652, %622
  %656 = fmul fast float %653, %582
  %657 = fmul fast float %654, %584
  %658 = fmul fast float %655, %589
  %659 = fadd fast float %656, %597
  %660 = fadd fast float %657, %601
  %661 = fadd fast float %658, %605
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fmul fast float %664, %664
  %668 = fsub fast float %665, %547
  %669 = fsub fast float %666, %548
  %670 = fsub fast float %667, %549
  %671 = fmul fast float %668, %572
  %672 = fmul fast float %669, %572
  %673 = fmul fast float %670, %572
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %673, %549
  %677 = fadd fast float %594, %558
  %678 = fsub fast float %677, %611
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fsub fast float %679, %558
  %681 = fmul fast float %680, %572
  %682 = fadd fast float %681, %558
  br label %736

; <label>:683                                     ; preds = %571
  %684 = and i32 %574, 134217728
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %720, label %686

; <label>:686                                     ; preds = %683
  %687 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %689 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fadd fast float %689, -5.000000e-01
  %693 = fmul fast float %690, %572
  %694 = fmul fast float %691, %572
  %695 = fmul fast float %692, %572
  %696 = fadd fast float %693, 5.000000e-01
  %697 = fadd fast float %694, 5.000000e-01
  %698 = fadd fast float %695, 5.000000e-01
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %702 = fmul fast float %696, 2.000000e+00
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %699
  %705 = fadd fast float %704, %702
  %706 = fmul fast float %705, %699
  %707 = fmul fast float %697, 2.000000e+00
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %700
  %710 = fadd fast float %709, %707
  %711 = fmul fast float %710, %700
  %712 = fmul fast float %698, 2.000000e+00
  %713 = fsub fast float 1.000000e+00, %712
  %714 = fmul fast float %713, %701
  %715 = fadd fast float %714, %712
  %716 = fmul fast float %715, %701
  %717 = fmul fast float %706, %706
  %718 = fmul fast float %711, %711
  %719 = fmul fast float %716, %716
  br label %736

; <label>:720                                     ; preds = %683
  %721 = fmul fast float %218, %218
  %722 = fmul fast float %222, %222
  %723 = fmul fast float %226, %226
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fadd fast float %723, -1.000000e+00
  %727 = fmul fast float %572, %724
  %728 = fmul fast float %572, %725
  %729 = fmul fast float %572, %726
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fadd fast float %729, 1.000000e+00
  %733 = fmul fast float %730, %547
  %734 = fmul fast float %731, %548
  %735 = fmul fast float %732, %549
  br label %736

; <label>:736                                     ; preds = %720, %686, %577, %535
  %737 = phi float [ %682, %577 ], [ %558, %686 ], [ %558, %720 ], [ 0x3FA23C0BE0000000, %535 ]
  %738 = phi float [ %674, %577 ], [ %717, %686 ], [ %733, %720 ], [ 1.000000e+00, %535 ]
  %739 = phi float [ %675, %577 ], [ %718, %686 ], [ %734, %720 ], [ 1.000000e+00, %535 ]
  %740 = phi float [ %676, %577 ], [ %719, %686 ], [ %735, %720 ], [ 1.000000e+00, %535 ]
  %741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.i32 %741, 1
  %743 = and i32 %742, 1
  %744 = icmp ne i32 %743, 0
  %745 = add i32 %45, 356
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 32
  %749 = icmp ne i32 %748, 0
  %750 = and i1 %744, %749
  %751 = select i1 %750, float 1.000000e+00, float %738
  %752 = select i1 %750, float 0x3FD3333340000000, float %739
  %753 = select i1 %750, float 0x3FD3333340000000, float %740
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 32
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %830, label %758

; <label>:758                                     ; preds = %736
  %759 = add i32 %45, 92
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %45, 376
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = add i32 %764, 0
  %766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %766, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = extractvalue %dx.types.ResRet.f32 %767, 3
  %772 = and i32 %761, 255
  %773 = uitofp i32 %772 to float
  %774 = lshr i32 %761, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = lshr i32 %761, 16
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = fmul fast float %768, %773
  %782 = fadd fast float %781, %776
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = fadd fast float %769, -5.000000e-01
  %785 = fadd fast float %771, -5.000000e-01
  %786 = fmul fast float %784, %780
  %787 = fmul fast float %785, %780
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fmul fast float %788, 2.000000e+00
  %791 = fadd fast float %790, -1.000000e+00
  %792 = fmul fast float %789, 2.000000e+00
  %793 = fadd fast float %792, -1.000000e+00
  %794 = fadd fast float %791, %793
  %795 = fmul fast float %794, 5.000000e-01
  %796 = fsub fast float %791, %793
  %797 = fmul fast float %796, 5.000000e-01
  %798 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %799 = fsub fast float 1.000000e+00, %798
  %800 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %801 = fsub fast float %799, %800
  %802 = call float @dx.op.dot3.f32(i32 55, float %795, float %797, float %801, float %795, float %797, float %801)  ; Dot3(ax,ay,az,bx,by,bz)
  %803 = call float @dx.op.unary.f32(i32 25, float %802)  ; Rsqrt(value)
  %804 = fmul fast float %795, %803
  %805 = fmul fast float %797, %803
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 67108864
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %826, label %810

; <label>:810                                     ; preds = %758
  %811 = add i32 %45, 280
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 65535
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = lshr i32 %813, 16
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = fsub fast float %783, %821
  %823 = fmul fast float %822, %815
  %824 = fadd fast float %823, %819
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  br label %826

; <label>:826                                     ; preds = %810, %758
  %827 = phi float [ %825, %810 ], [ %783, %758 ]
  %828 = call float @dx.op.dot2.f32(i32 54, float %804, float %805, float %440, float %441)  ; Dot2(ax,ay,bx,by)
  %829 = call float @dx.op.dot2.f32(i32 54, float %804, float %805, float %442, float %443)  ; Dot2(ax,ay,bx,by)
  br label %830

; <label>:830                                     ; preds = %826, %736
  %831 = phi float [ %827, %826 ], [ 0x3FD6666660000000, %736 ]
  %832 = phi float [ %828, %826 ], [ 0.000000e+00, %736 ]
  %833 = phi float [ %829, %826 ], [ 0.000000e+00, %736 ]
  %834 = phi float [ %770, %826 ], [ 1.000000e+00, %736 ]
  %835 = add i32 %45, 160
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = lshr i32 %837, 22
  %839 = shl nuw nsw i32 %838, 5
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 64
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %878, label %845

; <label>:845                                     ; preds = %830
  %846 = add i32 %45, 392
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = add i32 %848, 0
  %850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 131072
  %854 = icmp eq i32 %853, 0
  %855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %850, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = fmul fast float %856, %206
  %860 = fmul fast float %857, %209
  %861 = fmul fast float %858, %212
  br i1 %854, label %868, label %862

; <label>:862                                     ; preds = %845
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = fmul fast float %864, %859
  %866 = fmul fast float %864, %860
  %867 = fmul fast float %864, %861
  br label %868

; <label>:868                                     ; preds = %862, %845
  %869 = phi float [ %865, %862 ], [ %859, %845 ]
  %870 = phi float [ %866, %862 ], [ %860, %845 ]
  %871 = phi float [ %867, %862 ], [ %861, %845 ]
  %872 = fmul fast float %869, %840
  %873 = select i1 %186, float %872, float %869
  %874 = call float @dx.op.dot3.f32(i32 55, float %873, float %870, float %871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = select i1 %186, float 0.000000e+00, float %869
  %876 = select i1 %186, float %874, float %870
  %877 = select i1 %186, float 0.000000e+00, float %871
  br label %878

; <label>:878                                     ; preds = %868, %830
  %879 = phi float [ %875, %868 ], [ 0.000000e+00, %830 ]
  %880 = phi float [ %876, %868 ], [ 0.000000e+00, %830 ]
  %881 = phi float [ %877, %868 ], [ 0.000000e+00, %830 ]
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 26624
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %909, label %886

; <label>:886                                     ; preds = %878
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 16384
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %909, label %891

; <label>:891                                     ; preds = %886
  %892 = and i32 %888, 1048576
  %893 = icmp ne i32 %892, 0
  %894 = add i32 %45, 472
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = add i32 %896, 0
  %898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %898, %dx.types.Handle %82, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = add i32 %45, 96
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = lshr i32 %903, 24
  %905 = uitofp i32 %904 to float
  %906 = fmul fast float %900, 0x3F70101020000000
  %907 = select i1 %893, float 0x3F70101020000000, float %906
  %908 = fmul fast float %907, %905
  br label %909

; <label>:909                                     ; preds = %891, %886, %878
  %910 = phi float [ %908, %891 ], [ 0.000000e+00, %886 ], [ 0.000000e+00, %878 ]
  %911 = add i32 %45, 96
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %913, 8
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %920 = fmul fast float %918, %919
  %921 = fadd fast float %920, %915
  %922 = fmul fast float %921, 0x3F70101020000000
  %923 = call float @dx.op.unary.f32(i32 7, float %922)  ; Saturate(value)
  br label %924

; <label>:924                                     ; preds = %909, %422
  %925 = phi float [ 0.000000e+00, %422 ], [ %832, %909 ]
  %926 = phi float [ 0.000000e+00, %422 ], [ %833, %909 ]
  %927 = phi float [ 0.000000e+00, %422 ], [ %751, %909 ]
  %928 = phi float [ 0.000000e+00, %422 ], [ %752, %909 ]
  %929 = phi float [ 0.000000e+00, %422 ], [ %753, %909 ]
  %930 = phi float [ 0.000000e+00, %422 ], [ %879, %909 ]
  %931 = phi float [ 0.000000e+00, %422 ], [ %880, %909 ]
  %932 = phi float [ 0.000000e+00, %422 ], [ %881, %909 ]
  %933 = phi float [ 0.000000e+00, %422 ], [ %737, %909 ]
  %934 = phi float [ 0.000000e+00, %422 ], [ 1.000000e+00, %909 ]
  %935 = phi float [ 0.000000e+00, %422 ], [ %831, %909 ]
  %936 = phi float [ 0.000000e+00, %422 ], [ %834, %909 ]
  %937 = phi float [ 0.000000e+00, %422 ], [ %910, %909 ]
  %938 = phi float [ 0.000000e+00, %422 ], [ %923, %909 ]
  br i1 %373, label %1918, label %939

; <label>:939                                     ; preds = %924
  %940 = icmp ult i32 %428, 2
  %941 = add i32 %45, 40
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = add i32 %45, 44
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = or i32 %946, %943
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %1918, label %949

; <label>:949                                     ; preds = %939
  %950 = and i32 %943, 262144
  %951 = icmp ne i32 %950, 0
  %952 = select i1 %951, float %48, float 1.000000e+00
  %953 = select i1 %951, float %49, float 0.000000e+00
  %954 = select i1 %951, float %50, float 0.000000e+00
  %955 = select i1 %951, float %51, float 1.000000e+00
  %956 = select i1 %951, float %52, float %73
  %957 = select i1 %951, float %53, float %74
  %958 = add i32 %45, 300
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = lshr i32 %960, 16
  %962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %961)  ; LegacyF16ToF32(value)
  %963 = fmul fast float %962, 0x3F50624DE0000000
  %964 = add i32 %45, 104
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = lshr i32 %966, 16
  %968 = and i32 %967, 255
  %969 = lshr i32 %966, 24
  %970 = add i32 %45, 308
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = and i32 %972, 65535
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = lshr i32 %972, 16
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = add i32 %45, 48
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = lshr i32 %979, 22
  %981 = shl nuw nsw i32 %980, 5
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = shl i32 %979, 4
  %984 = and i32 %983, 32752
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = lshr i32 %979, 7
  %987 = and i32 %986, 32752
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %990 = extractvalue %dx.types.CBufRet.f32 %989, 3
  %991 = fmul fast float %990, 1.000000e+03
  %992 = fmul fast float %283, %991
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = fadd fast float %993, %273
  %995 = fmul fast float %284, %991
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = fadd fast float %996, %275
  %998 = fmul fast float %963, %991
  %999 = call float @dx.op.unary.f32(i32 22, float %998)  ; Frc(value)
  %1000 = fmul fast float %999, 0x401921FB60000000
  %1001 = fadd fast float %1000, %982
  %1002 = call float @dx.op.unary.f32(i32 13, float %1001)  ; Sin(value)
  %1003 = call float @dx.op.unary.f32(i32 12, float %1001)  ; Cos(value)
  %1004 = fsub fast float -0.000000e+00, %1002
  %1005 = fadd fast float %956, -5.000000e-01
  %1006 = fadd fast float %957, -5.000000e-01
  %1007 = fmul fast float %974, %1005
  %1008 = fmul fast float %976, %1006
  %1009 = fadd fast float %1007, 5.000000e-01
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fmul fast float %985, %1009
  %1012 = fmul fast float %988, %1010
  %1013 = fmul fast float %1003, %1011
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1012, float %1013)  ; FMad(a,b,c)
  %1015 = fmul fast float %1002, %1011
  %1016 = call float @dx.op.tertiary.f32(i32 46, float %1003, float %1012, float %1015)  ; FMad(a,b,c)
  %1017 = fadd fast float %994, %1014
  %1018 = fadd fast float %997, %1016
  %1019 = icmp ugt i32 %968, 1
  %1020 = icmp ugt i32 %966, 33554431
  %1021 = or i1 %1020, %1019
  br i1 %1021, label %1022, label %1047

; <label>:1022                                    ; preds = %949
  %1023 = add i32 %45, 244
  %1024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.i32 %1024, 0
  %1026 = lshr i32 %1025, 16
  %1027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1026)  ; LegacyF16ToF32(value)
  %1028 = fmul fast float %990, %1027
  %1029 = call float @dx.op.unary.f32(i32 22, float %1028)  ; Frc(value)
  %1030 = mul nuw nsw i32 %968, %969
  %1031 = uitofp i32 %1030 to float
  %1032 = fmul fast float %1029, %1031
  %1033 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1034 = fptoui float %1033 to i32
  %1035 = urem i32 %1034, %968
  %1036 = udiv i32 %1034, %969
  %1037 = call float @dx.op.unary.f32(i32 22, float %1017)  ; Frc(value)
  %1038 = call float @dx.op.unary.f32(i32 22, float %1018)  ; Frc(value)
  %1039 = uitofp i32 %1035 to float
  %1040 = uitofp i32 %1036 to float
  %1041 = fadd fast float %1037, %1039
  %1042 = fadd fast float %1038, %1040
  %1043 = uitofp i32 %968 to float
  %1044 = uitofp i32 %969 to float
  %1045 = fdiv fast float %1041, %1043
  %1046 = fdiv fast float %1042, %1044
  br label %1047

; <label>:1047                                    ; preds = %1022, %949
  %1048 = phi float [ %1045, %1022 ], [ %1017, %949 ]
  %1049 = phi float [ %1046, %1022 ], [ %1018, %949 ]
  %1050 = and i32 %943, 16777216
  %1051 = icmp eq i32 %1050, 0
  br i1 %1051, label %1161, label %1052

; <label>:1052                                    ; preds = %1047
  %1053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1054 = extractvalue %dx.types.CBufRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.CBufRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.CBufRet.f32 %1053, 2
  %1057 = fadd fast float %1054, %144
  %1058 = fadd fast float %1055, %145
  %1059 = fadd fast float %1056, %146
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = call float @dx.op.unary.f32(i32 7, float %1061)  ; Saturate(value)
  %1063 = icmp eq i32 %46, 65535
  br i1 %1063, label %1158, label %1064

; <label>:1064                                    ; preds = %1052
  %1065 = lshr i32 %46, 1
  %1066 = shl i32 %1065, 2
  %1067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.i32 %1067, 0
  %1069 = and i32 %46, 1
  %1070 = icmp ne i32 %1069, 0
  %1071 = lshr i32 %1068, 16
  %1072 = and i32 %1068, 65535
  %1073 = select i1 %1070, i32 %1071, i32 %1072
  %1074 = icmp eq i32 %1073, 65535
  br i1 %1074, label %1154, label %1075

; <label>:1075                                    ; preds = %1064
  %1076 = mul nuw nsw i32 %1073, 40
  %1077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = add nuw nsw i32 %1076, 12
  %1082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = add nuw nsw i32 %1076, 24
  %1087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = add nuw nsw i32 %1076, 36
  %1092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.f32 %1092, 0
  %1094 = fsub fast float %1057, %1078
  %1095 = fsub fast float %1058, %1079
  %1096 = fsub fast float %1059, %1080
  %1097 = fmul fast float %1093, %1094
  %1098 = fmul fast float %1093, %1095
  %1099 = fmul fast float %1093, %1096
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = fadd fast float %1100, 5.000000e-01
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = fadd fast float %1102, 5.000000e-01
  %1106 = fmul fast float %1103, %1083
  %1107 = fmul fast float %1104, %1084
  %1108 = fmul fast float %1105, %1085
  %1109 = shl i32 %46, 2
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %1111, 0
  %1113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1114 = call float @dx.op.unary.f32(i32 22, float %1106)  ; Frc(value)
  %1115 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1116 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1113, %dx.types.Handle %40, float %1114, float %1115, float %1116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1121 = fmul fast float %1118, 1.023000e+03
  %1122 = fmul fast float %1119, 1.023000e+03
  %1123 = fmul fast float %1120, 1.023000e+03
  %1124 = fadd fast float %1121, 5.000000e-01
  %1125 = fadd fast float %1122, 5.000000e-01
  %1126 = fadd fast float %1123, 5.000000e-01
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = call float @dx.op.unary.f32(i32 27, float %1126)  ; Round_ni(value)
  %1130 = fsub fast float %1097, %1100
  %1131 = fsub fast float %1098, %1101
  %1132 = fsub fast float %1099, %1102
  %1133 = fmul fast float %1130, 7.500000e-01
  %1134 = fmul fast float %1131, 7.500000e-01
  %1135 = fmul fast float %1132, 7.500000e-01
  %1136 = fadd fast float %1100, 1.250000e-01
  %1137 = fadd fast float %1136, %1133
  %1138 = fadd fast float %1137, %1127
  %1139 = fadd fast float %1101, 1.250000e-01
  %1140 = fadd fast float %1139, %1134
  %1141 = fadd fast float %1140, %1128
  %1142 = fadd fast float %1102, 1.250000e-01
  %1143 = fadd fast float %1142, %1135
  %1144 = fadd fast float %1143, %1129
  %1145 = fmul fast float %1138, %1088
  %1146 = fmul fast float %1141, %1089
  %1147 = fmul fast float %1144, %1090
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = add i32 %1149, 0
  %1151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1151, %dx.types.Handle %38, float %1145, float %1146, float %1147, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  br label %1154

; <label>:1154                                    ; preds = %1075, %1064
  %1155 = phi float [ %1153, %1075 ], [ -1.000000e+00, %1064 ]
  %1156 = fadd fast float %1155, %1062
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  br label %1158

; <label>:1158                                    ; preds = %1154, %1052
  %1159 = phi float [ %1157, %1154 ], [ %1062, %1052 ]
  %1160 = fmul fast float %1159, %425
  br label %1161

; <label>:1161                                    ; preds = %1158, %1047
  %1162 = phi float [ %1160, %1158 ], [ %425, %1047 ]
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 256
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1213, label %1167

; <label>:1167                                    ; preds = %1161
  %1168 = add i32 %45, 428
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %1170, 0
  %1172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1171, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1173 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1172, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1174 = extractvalue %dx.types.ResRet.f32 %1173, 0
  %1175 = add i32 %45, 116
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = shl i32 %1177, 4
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = lshr i32 %1177, 7
  %1182 = and i32 %1181, 32752
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = fsub fast float 1.000000e+00, %1162
  %1185 = call float @dx.op.binary.f32(i32 35, float %1184, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1186 = bitcast float %1162 to i32
  %1187 = sitofp i32 %1186 to float
  %1188 = fadd fast float %1187, 0xC1CFBF8940000000
  %1189 = fmul fast float %1183, %1188
  %1190 = fadd fast float %1189, 0x41CFBF8940000000
  %1191 = fptosi float %1190 to i32
  %1192 = bitcast i32 %1191 to float
  %1193 = bitcast float %1185 to i32
  %1194 = sitofp i32 %1193 to float
  %1195 = fadd fast float %1194, 0xC1CFBF8940000000
  %1196 = fmul fast float %1195, %1183
  %1197 = fadd fast float %1196, 0x41CFBF8940000000
  %1198 = fptosi float %1197 to i32
  %1199 = bitcast i32 %1198 to float
  %1200 = fmul fast float %1192, %1180
  %1201 = fmul fast float %1199, %1180
  %1202 = fsub fast float %1185, %1200
  %1203 = fadd fast float %1201, %1185
  %1204 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1205 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1206 = fsub fast float %1174, %1204
  %1207 = fsub fast float %1205, %1204
  %1208 = bitcast float %1207 to i32
  %1209 = sub nsw i32 2129859010, %1208
  %1210 = bitcast i32 %1209 to float
  %1211 = fmul fast float %1210, %1206
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  br label %1213

; <label>:1213                                    ; preds = %1167, %1161
  %1214 = phi float [ %1212, %1167 ], [ %1162, %1161 ]
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 128
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1235, label %1219

; <label>:1219                                    ; preds = %1213
  %1220 = add i32 %45, 412
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = add i32 %1222, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1224, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 524288
  %1230 = icmp ne i32 %1229, 0
  %1231 = fcmp fast ogt float %1226, 0x3FE0101020000000
  %1232 = select i1 %1231, float 1.000000e+00, float 0.000000e+00
  %1233 = select i1 %1230, float %1232, float %1226
  %1234 = fmul fast float %1233, %1214
  br label %1235

; <label>:1235                                    ; preds = %1219, %1213
  %1236 = phi float [ %1234, %1219 ], [ %1214, %1213 ]
  %1237 = fcmp fast ult float %1236, 0x3F70101020000000
  br i1 %1237, label %1918, label %1238

; <label>:1238                                    ; preds = %1235
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = and i32 %1240, 16
  %1242 = icmp eq i32 %1241, 0
  br i1 %1242, label %1441, label %1243

; <label>:1243                                    ; preds = %1238
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %45, 364
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = add i32 %1248, 0
  %1250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1250, %dx.types.Handle %81, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.ResRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.ResRet.f32 %1251, 2
  %1255 = extractvalue %dx.types.ResRet.f32 %1251, 3
  %1256 = and i32 %1245, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = lshr i32 %1245, 8
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1255, %1257
  %1262 = fadd fast float %1261, %1260
  %1263 = fmul fast float %1262, 0x3F70101000000000
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %1265, 512
  %1267 = icmp eq i32 %1266, 0
  br i1 %1267, label %1276, label %1268

; <label>:1268                                    ; preds = %1243
  %1269 = add i32 %45, 444
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %1271, 0
  %1273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1273, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  br label %1276

; <label>:1276                                    ; preds = %1268, %1243
  %1277 = phi float [ %1275, %1268 ], [ 1.000000e+00, %1243 ]
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 33554432
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1388, label %1282

; <label>:1282                                    ; preds = %1276
  %1283 = add i32 %45, 240
  %1284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.i32 %1284, 0
  %1286 = and i32 %1285, 65535
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = lshr i32 %1285, 16
  %1289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1288)  ; LegacyF16ToF32(value)
  %1290 = add i32 %45, 244
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1290, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 65535
  %1294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1293)  ; LegacyF16ToF32(value)
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = lshr i32 %1296, 24
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = and i32 %1296, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F70101020000000
  %1303 = lshr i32 %1296, 8
  %1304 = and i32 %1303, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F70101020000000
  %1307 = lshr i32 %1296, 16
  %1308 = and i32 %1307, 255
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101020000000
  %1311 = add i32 %45, 236
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = lshr i32 %1313, 24
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = and i32 %1313, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = lshr i32 %1313, 8
  %1321 = and i32 %1320, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1322, 0x3F70101020000000
  %1324 = lshr i32 %1313, 16
  %1325 = and i32 %1324, 255
  %1326 = uitofp i32 %1325 to float
  %1327 = fmul fast float %1326, 0x3F70101020000000
  %1328 = bitcast float %1252 to i32
  %1329 = ashr i32 %1328, 1
  %1330 = sub nsw i32 1597463174, %1329
  %1331 = bitcast i32 %1330 to float
  %1332 = fmul fast float %1252, 5.000000e-01
  %1333 = fmul fast float %1331, %1331
  %1334 = fmul fast float %1333, %1332
  %1335 = fsub fast float 1.500000e+00, %1334
  %1336 = fmul fast float %1331, %1252
  %1337 = fmul fast float %1336, %1335
  %1338 = bitcast float %1253 to i32
  %1339 = ashr i32 %1338, 1
  %1340 = sub nsw i32 1597463174, %1339
  %1341 = bitcast i32 %1340 to float
  %1342 = fmul fast float %1253, 5.000000e-01
  %1343 = fmul fast float %1341, %1341
  %1344 = fmul fast float %1343, %1342
  %1345 = fsub fast float 1.500000e+00, %1344
  %1346 = fmul fast float %1341, %1253
  %1347 = fmul fast float %1346, %1345
  %1348 = bitcast float %1254 to i32
  %1349 = ashr i32 %1348, 1
  %1350 = sub nsw i32 1597463174, %1349
  %1351 = bitcast i32 %1350 to float
  %1352 = fmul fast float %1254, 5.000000e-01
  %1353 = fmul fast float %1351, %1351
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float 1.500000e+00, %1354
  %1356 = fmul fast float %1351, %1254
  %1357 = fmul fast float %1356, %1355
  %1358 = fsub fast float %1337, %1319
  %1359 = fsub fast float %1347, %1323
  %1360 = fsub fast float %1357, %1327
  %1361 = fmul fast float %1358, %1287
  %1362 = fmul fast float %1359, %1289
  %1363 = fmul fast float %1360, %1294
  %1364 = fadd fast float %1361, %1302
  %1365 = fadd fast float %1362, %1306
  %1366 = fadd fast float %1363, %1310
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1370 = fmul fast float %1367, %1367
  %1371 = fmul fast float %1368, %1368
  %1372 = fmul fast float %1369, %1369
  %1373 = fsub fast float %1370, %1252
  %1374 = fsub fast float %1371, %1253
  %1375 = fsub fast float %1372, %1254
  %1376 = fmul fast float %1373, %1277
  %1377 = fmul fast float %1374, %1277
  %1378 = fmul fast float %1375, %1277
  %1379 = fadd fast float %1376, %1252
  %1380 = fadd fast float %1377, %1253
  %1381 = fadd fast float %1378, %1254
  %1382 = fadd fast float %1299, %1263
  %1383 = fsub fast float %1382, %1316
  %1384 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1385 = fsub fast float %1384, %1263
  %1386 = fmul fast float %1385, %1277
  %1387 = fadd fast float %1386, %1263
  br label %1441

; <label>:1388                                    ; preds = %1276
  %1389 = and i32 %1279, 134217728
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1425, label %1391

; <label>:1391                                    ; preds = %1388
  %1392 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1393 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1394 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fadd fast float %1393, -5.000000e-01
  %1397 = fadd fast float %1394, -5.000000e-01
  %1398 = fmul fast float %1395, %1277
  %1399 = fmul fast float %1396, %1277
  %1400 = fmul fast float %1397, %1277
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = fadd fast float %1399, 5.000000e-01
  %1403 = fadd fast float %1400, 5.000000e-01
  %1404 = call float @dx.op.unary.f32(i32 24, float %1252)  ; Sqrt(value)
  %1405 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1406 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1407 = fmul fast float %1401, 2.000000e+00
  %1408 = fsub fast float 1.000000e+00, %1407
  %1409 = fmul fast float %1408, %1404
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1410, %1404
  %1412 = fmul fast float %1402, 2.000000e+00
  %1413 = fsub fast float 1.000000e+00, %1412
  %1414 = fmul fast float %1413, %1405
  %1415 = fadd fast float %1414, %1412
  %1416 = fmul fast float %1415, %1405
  %1417 = fmul fast float %1403, 2.000000e+00
  %1418 = fsub fast float 1.000000e+00, %1417
  %1419 = fmul fast float %1418, %1406
  %1420 = fadd fast float %1419, %1417
  %1421 = fmul fast float %1420, %1406
  %1422 = fmul fast float %1411, %1411
  %1423 = fmul fast float %1416, %1416
  %1424 = fmul fast float %1421, %1421
  br label %1441

; <label>:1425                                    ; preds = %1388
  %1426 = fmul fast float %260, %260
  %1427 = fmul fast float %264, %264
  %1428 = fmul fast float %268, %268
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fadd fast float %1427, -1.000000e+00
  %1431 = fadd fast float %1428, -1.000000e+00
  %1432 = fmul fast float %1277, %1429
  %1433 = fmul fast float %1277, %1430
  %1434 = fmul fast float %1277, %1431
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fadd fast float %1433, 1.000000e+00
  %1437 = fadd fast float %1434, 1.000000e+00
  %1438 = fmul fast float %1435, %1252
  %1439 = fmul fast float %1436, %1253
  %1440 = fmul fast float %1437, %1254
  br label %1441

; <label>:1441                                    ; preds = %1425, %1391, %1282, %1238
  %1442 = phi float [ %1387, %1282 ], [ %1263, %1391 ], [ %1263, %1425 ], [ 0x3FA23C0BE0000000, %1238 ]
  %1443 = phi float [ %1379, %1282 ], [ %1422, %1391 ], [ %1438, %1425 ], [ 1.000000e+00, %1238 ]
  %1444 = phi float [ %1380, %1282 ], [ %1423, %1391 ], [ %1439, %1425 ], [ 1.000000e+00, %1238 ]
  %1445 = phi float [ %1381, %1282 ], [ %1424, %1391 ], [ %1440, %1425 ], [ 1.000000e+00, %1238 ]
  %1446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1447 = extractvalue %dx.types.CBufRet.i32 %1446, 1
  %1448 = and i32 %1447, 1
  %1449 = icmp ne i32 %1448, 0
  %1450 = add i32 %45, 356
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 32
  %1454 = icmp ne i32 %1453, 0
  %1455 = and i1 %1449, %1454
  %1456 = select i1 %1455, float 1.000000e+00, float %1443
  %1457 = select i1 %1455, float 0x3FD3333340000000, float %1444
  %1458 = select i1 %1455, float 0x3FD3333340000000, float %1445
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = and i32 %1460, 32
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1535, label %1463

; <label>:1463                                    ; preds = %1441
  %1464 = add i32 %45, 108
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %45, 380
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %1469, 0
  %1471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1472 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1471, %dx.types.Handle %81, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.ResRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.ResRet.f32 %1472, 2
  %1476 = extractvalue %dx.types.ResRet.f32 %1472, 3
  %1477 = and i32 %1466, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = lshr i32 %1466, 8
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = lshr i32 %1466, 16
  %1483 = and i32 %1482, 255
  %1484 = uitofp i32 %1483 to float
  %1485 = fmul fast float %1484, 0x3F70101000000000
  %1486 = fmul fast float %1473, %1478
  %1487 = fadd fast float %1486, %1481
  %1488 = fmul fast float %1487, 0x3F70101000000000
  %1489 = fadd fast float %1474, -5.000000e-01
  %1490 = fadd fast float %1476, -5.000000e-01
  %1491 = fmul fast float %1489, %1485
  %1492 = fmul fast float %1490, %1485
  %1493 = fadd fast float %1491, 5.000000e-01
  %1494 = fadd fast float %1492, 5.000000e-01
  %1495 = fmul fast float %1493, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = fmul fast float %1494, 2.000000e+00
  %1498 = fadd fast float %1497, -1.000000e+00
  %1499 = fadd fast float %1496, %1498
  %1500 = fmul fast float %1499, 5.000000e-01
  %1501 = fsub fast float %1496, %1498
  %1502 = fmul fast float %1501, 5.000000e-01
  %1503 = call float @dx.op.unary.f32(i32 6, float %1500)  ; FAbs(value)
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = call float @dx.op.unary.f32(i32 6, float %1502)  ; FAbs(value)
  %1506 = fsub fast float %1504, %1505
  %1507 = call float @dx.op.dot3.f32(i32 55, float %1500, float %1502, float %1506, float %1500, float %1502, float %1506)  ; Dot3(ax,ay,az,bx,by,bz)
  %1508 = call float @dx.op.unary.f32(i32 25, float %1507)  ; Rsqrt(value)
  %1509 = fmul fast float %1500, %1508
  %1510 = fmul fast float %1502, %1508
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 67108864
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1531, label %1515

; <label>:1515                                    ; preds = %1463
  %1516 = add i32 %45, 296
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 65535
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 65535
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = lshr i32 %1518, 16
  %1526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1525)  ; LegacyF16ToF32(value)
  %1527 = fsub fast float %1488, %1526
  %1528 = fmul fast float %1527, %1520
  %1529 = fadd fast float %1528, %1524
  %1530 = call float @dx.op.unary.f32(i32 7, float %1529)  ; Saturate(value)
  br label %1531

; <label>:1531                                    ; preds = %1515, %1463
  %1532 = phi float [ %1530, %1515 ], [ %1488, %1463 ]
  %1533 = call float @dx.op.dot2.f32(i32 54, float %1509, float %1510, float %952, float %953)  ; Dot2(ax,ay,bx,by)
  %1534 = call float @dx.op.dot2.f32(i32 54, float %1509, float %1510, float %954, float %955)  ; Dot2(ax,ay,bx,by)
  br label %1535

; <label>:1535                                    ; preds = %1531, %1441
  %1536 = phi float [ %1532, %1531 ], [ 0x3FD6666660000000, %1441 ]
  %1537 = phi float [ %1533, %1531 ], [ 0.000000e+00, %1441 ]
  %1538 = phi float [ %1534, %1531 ], [ 0.000000e+00, %1441 ]
  %1539 = phi float [ %1475, %1531 ], [ 1.000000e+00, %1441 ]
  %1540 = add i32 %45, 176
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = lshr i32 %1542, 22
  %1544 = shl nuw nsw i32 %1543, 5
  %1545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1544)  ; LegacyF16ToF32(value)
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 64
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1583, label %1550

; <label>:1550                                    ; preds = %1535
  %1551 = add i32 %45, 396
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %1553, 0
  %1555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 131072
  %1559 = icmp eq i32 %1558, 0
  %1560 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1555, %dx.types.Handle %81, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = fmul fast float %1561, %248
  %1565 = fmul fast float %1562, %251
  %1566 = fmul fast float %1563, %254
  br i1 %1559, label %1573, label %1567

; <label>:1567                                    ; preds = %1550
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = fmul fast float %1569, %1564
  %1571 = fmul fast float %1569, %1565
  %1572 = fmul fast float %1569, %1566
  br label %1573

; <label>:1573                                    ; preds = %1567, %1550
  %1574 = phi float [ %1570, %1567 ], [ %1564, %1550 ]
  %1575 = phi float [ %1571, %1567 ], [ %1565, %1550 ]
  %1576 = phi float [ %1572, %1567 ], [ %1566, %1550 ]
  %1577 = fmul fast float %1574, %1545
  %1578 = select i1 %186, float %1577, float %1574
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1578, float %1575, float %1576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = select i1 %186, float 0.000000e+00, float %1574
  %1581 = select i1 %186, float %1579, float %1575
  %1582 = select i1 %186, float 0.000000e+00, float %1576
  br label %1583

; <label>:1583                                    ; preds = %1573, %1535
  %1584 = phi float [ %1580, %1573 ], [ 0.000000e+00, %1535 ]
  %1585 = phi float [ %1581, %1573 ], [ 0.000000e+00, %1535 ]
  %1586 = phi float [ %1582, %1573 ], [ 0.000000e+00, %1535 ]
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 1024
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1621, label %1591

; <label>:1591                                    ; preds = %1583
  %1592 = add i32 %45, 168
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101020000000
  %1598 = lshr i32 %1594, 8
  %1599 = and i32 %1598, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = fmul fast float %1600, 0x3F70101020000000
  %1602 = lshr i32 %1594, 16
  %1603 = and i32 %1602, 255
  %1604 = uitofp i32 %1603 to float
  %1605 = fmul fast float %1604, 0x3F70101020000000
  %1606 = fmul fast float %1597, %1597
  %1607 = fmul fast float %1601, %1601
  %1608 = fmul fast float %1605, %1605
  %1609 = add i32 %45, 460
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = add i32 %1611, 0
  %1613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1613, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.ResRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.ResRet.f32 %1614, 2
  %1618 = fmul fast float %1606, %1615
  %1619 = fmul fast float %1607, %1616
  %1620 = fmul fast float %1608, %1617
  br label %1621

; <label>:1621                                    ; preds = %1591, %1583
  %1622 = phi float [ %1618, %1591 ], [ 0.000000e+00, %1583 ]
  %1623 = phi float [ %1619, %1591 ], [ 0.000000e+00, %1583 ]
  %1624 = phi float [ %1620, %1591 ], [ 0.000000e+00, %1583 ]
  %1625 = fcmp fast ogt float %1622, 0.000000e+00
  %1626 = fcmp fast ogt float %1623, 0.000000e+00
  %1627 = fcmp fast ogt float %1624, 0.000000e+00
  %1628 = call float @dx.op.unary.f32(i32 23, float %1622)  ; Log(value)
  %1629 = call float @dx.op.unary.f32(i32 23, float %1623)  ; Log(value)
  %1630 = call float @dx.op.unary.f32(i32 23, float %1624)  ; Log(value)
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = lshr i32 %1632, 7
  %1634 = and i32 %1633, 32752
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = fmul fast float %1628, 0xBFE62E4300000000
  %1637 = fmul fast float %1636, %1635
  %1638 = fmul fast float %1629, 0xBFE62E4300000000
  %1639 = fmul fast float %1638, %1635
  %1640 = fmul fast float %1630, 0xBFE62E4300000000
  %1641 = fmul fast float %1640, %1635
  %1642 = select i1 %1625, float %1637, float 1.270000e+02
  %1643 = select i1 %1626, float %1639, float 1.270000e+02
  %1644 = select i1 %1627, float %1641, float 1.270000e+02
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = and i32 %1646, 26624
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1685, label %1649

; <label>:1649                                    ; preds = %1621
  %1650 = add i32 %45, 476
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = add i32 %1652, 0
  %1654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1653, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1655 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1654, %dx.types.Handle %82, float %1048, float %1049, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1656 = extractvalue %dx.types.ResRet.f32 %1655, 0
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = and i32 %1658, 1048576
  %1660 = icmp ne i32 %1659, 0
  %1661 = and i32 %1658, 2048
  %1662 = icmp eq i32 %1661, 0
  br i1 %1662, label %1672, label %1663

; <label>:1663                                    ; preds = %1649
  %1664 = extractvalue %dx.types.ResRet.f32 %1655, 3
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = shl i32 %1666, 4
  %1668 = and i32 %1667, 32752
  %1669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1668)  ; LegacyF16ToF32(value)
  %1670 = fmul fast float %1669, %1664
  %1671 = call float @dx.op.binary.f32(i32 35, float %1670, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1672

; <label>:1672                                    ; preds = %1663, %1649
  %1673 = phi float [ %1671, %1663 ], [ 0x3F70101020000000, %1649 ]
  %1674 = and i32 %1658, 16384
  %1675 = icmp eq i32 %1674, 0
  br i1 %1675, label %1685, label %1676

; <label>:1676                                    ; preds = %1672
  %1677 = add i32 %45, 112
  %1678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1677, i32 undef)  ; BufferLoad(srv,index,wot)
  %1679 = extractvalue %dx.types.ResRet.i32 %1678, 0
  %1680 = lshr i32 %1679, 24
  %1681 = uitofp i32 %1680 to float
  %1682 = fmul fast float %1656, 0x3F70101020000000
  %1683 = select i1 %1660, float 0x3F70101020000000, float %1682
  %1684 = fmul fast float %1683, %1681
  br label %1685

; <label>:1685                                    ; preds = %1676, %1672, %1621
  %1686 = phi float [ %1673, %1676 ], [ %1673, %1672 ], [ 0x3F70101020000000, %1621 ]
  %1687 = phi float [ %1684, %1676 ], [ 0.000000e+00, %1672 ], [ 0.000000e+00, %1621 ]
  %1688 = add i32 %45, 112
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = and i32 %1690, 255
  %1692 = uitofp i32 %1691 to float
  %1693 = lshr i32 %1690, 8
  %1694 = and i32 %1693, 255
  %1695 = uitofp i32 %1694 to float
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1456, float %1457, float %1458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = fmul fast float %1695, %1696
  %1698 = fadd fast float %1697, %1692
  %1699 = fmul fast float %1698, 0x3F70101020000000
  %1700 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  br i1 %940, label %1701, label %1736

; <label>:1701                                    ; preds = %1685
  %1702 = fmul fast float %1686, 2.000000e+00
  %1703 = fcmp fast olt float %1642, 1.270000e+02
  %1704 = fcmp fast olt float %1643, 1.270000e+02
  %1705 = fcmp fast olt float %1644, 1.270000e+02
  %1706 = fmul fast float %1642, 0xBFF7154760000000
  %1707 = fmul fast float %1706, %1702
  %1708 = fmul fast float %1643, 0xBFF7154760000000
  %1709 = fmul fast float %1708, %1702
  %1710 = fmul fast float %1644, 0xBFF7154760000000
  %1711 = fmul fast float %1710, %1702
  %1712 = call float @dx.op.unary.f32(i32 21, float %1707)  ; Exp(value)
  %1713 = call float @dx.op.unary.f32(i32 21, float %1709)  ; Exp(value)
  %1714 = call float @dx.op.unary.f32(i32 21, float %1711)  ; Exp(value)
  %1715 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1716 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1717 = call float @dx.op.unary.f32(i32 7, float %1714)  ; Saturate(value)
  %1718 = fadd fast float %1715, -1.000000e+00
  %1719 = select i1 %1703, float %1718, float -1.000000e+00
  %1720 = fadd fast float %1716, -1.000000e+00
  %1721 = select i1 %1704, float %1720, float -1.000000e+00
  %1722 = fadd fast float %1717, -1.000000e+00
  %1723 = select i1 %1705, float %1722, float -1.000000e+00
  %1724 = fmul fast float %1719, %1236
  %1725 = fmul fast float %1721, %1236
  %1726 = fmul fast float %1723, %1236
  %1727 = fadd fast float %1724, 1.000000e+00
  %1728 = fadd fast float %1725, 1.000000e+00
  %1729 = fadd fast float %1726, 1.000000e+00
  %1730 = fmul fast float %1727, %927
  %1731 = fmul fast float %1728, %928
  %1732 = fmul fast float %1729, %929
  %1733 = fmul fast float %1727, %930
  %1734 = fmul fast float %1728, %931
  %1735 = fmul fast float %1729, %932
  br label %1736

; <label>:1736                                    ; preds = %1701, %1685
  %1737 = phi float [ %1730, %1701 ], [ %927, %1685 ]
  %1738 = phi float [ %1731, %1701 ], [ %928, %1685 ]
  %1739 = phi float [ %1732, %1701 ], [ %929, %1685 ]
  %1740 = phi float [ %1733, %1701 ], [ %930, %1685 ]
  %1741 = phi float [ %1734, %1701 ], [ %931, %1685 ]
  %1742 = phi float [ %1735, %1701 ], [ %932, %1685 ]
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 3
  %1746 = icmp eq i32 %1745, 3
  br i1 %1746, label %1825, label %1747

; <label>:1747                                    ; preds = %1736
  %1748 = and i32 %1744, 16
  %1749 = icmp ne i32 %1748, 0
  %1750 = select i1 %1749, float %1236, float 0.000000e+00
  %1751 = icmp eq i32 %1745, 0
  br i1 %1751, label %1752, label %1780

; <label>:1752                                    ; preds = %1747
  %1753 = and i32 %1744, 64
  %1754 = icmp ne i32 %1753, 0
  %1755 = select i1 %1754, float %1236, float 0.000000e+00
  %1756 = fsub fast float %1456, %1737
  %1757 = fsub fast float %1457, %1738
  %1758 = fsub fast float %1458, %1739
  %1759 = fmul fast float %1750, %1756
  %1760 = fmul fast float %1750, %1757
  %1761 = fmul fast float %1750, %1758
  %1762 = fadd fast float %1759, %1737
  %1763 = fadd fast float %1760, %1738
  %1764 = fadd fast float %1761, %1739
  %1765 = fsub fast float %1442, %933
  %1766 = fmul fast float %1750, %1765
  %1767 = fadd fast float %1766, %933
  %1768 = fsub fast float %1584, %1740
  %1769 = fsub fast float %1585, %1741
  %1770 = fsub fast float %1586, %1742
  %1771 = fmul fast float %1755, %1768
  %1772 = fmul fast float %1755, %1769
  %1773 = fmul fast float %1755, %1770
  %1774 = fadd fast float %1771, %1740
  %1775 = fadd fast float %1772, %1741
  %1776 = fadd fast float %1773, %1742
  %1777 = fsub fast float %1700, %938
  %1778 = fmul fast float %1750, %1777
  %1779 = fadd fast float %1778, %938
  br label %1825

; <label>:1780                                    ; preds = %1747
  %1781 = icmp eq i32 %1745, 1
  br i1 %1781, label %1782, label %1795

; <label>:1782                                    ; preds = %1780
  %1783 = fadd fast float %1456, -1.000000e+00
  %1784 = fadd fast float %1457, -1.000000e+00
  %1785 = fadd fast float %1458, -1.000000e+00
  %1786 = fmul fast float %1750, %1783
  %1787 = fmul fast float %1750, %1784
  %1788 = fmul fast float %1750, %1785
  %1789 = fadd fast float %1786, 1.000000e+00
  %1790 = fadd fast float %1787, 1.000000e+00
  %1791 = fadd fast float %1788, 1.000000e+00
  %1792 = fmul fast float %1789, %1737
  %1793 = fmul fast float %1790, %1738
  %1794 = fmul fast float %1791, %1739
  br label %1825

; <label>:1795                                    ; preds = %1780
  %1796 = icmp eq i32 %1745, 2
  br i1 %1796, label %1797, label %1825

; <label>:1797                                    ; preds = %1795
  %1798 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1799 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1800 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1801 = fadd fast float %1798, -5.000000e-01
  %1802 = fadd fast float %1799, -5.000000e-01
  %1803 = fadd fast float %1800, -5.000000e-01
  %1804 = fmul fast float %1801, %1750
  %1805 = fmul fast float %1802, %1750
  %1806 = fmul fast float %1803, %1750
  %1807 = fadd fast float %1804, 5.000000e-01
  %1808 = fadd fast float %1805, 5.000000e-01
  %1809 = fadd fast float %1806, 5.000000e-01
  %1810 = fmul fast float %1807, 2.000000e+00
  %1811 = fsub fast float 1.000000e+00, %1810
  %1812 = fmul fast float %1811, %1737
  %1813 = fadd fast float %1812, %1810
  %1814 = fmul fast float %1813, %1737
  %1815 = fmul fast float %1808, 2.000000e+00
  %1816 = fsub fast float 1.000000e+00, %1815
  %1817 = fmul fast float %1816, %1738
  %1818 = fadd fast float %1817, %1815
  %1819 = fmul fast float %1818, %1738
  %1820 = fmul fast float %1809, 2.000000e+00
  %1821 = fsub fast float 1.000000e+00, %1820
  %1822 = fmul fast float %1821, %1739
  %1823 = fadd fast float %1822, %1820
  %1824 = fmul fast float %1823, %1739
  br label %1825

; <label>:1825                                    ; preds = %1797, %1795, %1782, %1752, %1736
  %1826 = phi float [ %1737, %1736 ], [ %1814, %1797 ], [ %1737, %1795 ], [ %1792, %1782 ], [ %1762, %1752 ]
  %1827 = phi float [ %1738, %1736 ], [ %1819, %1797 ], [ %1738, %1795 ], [ %1793, %1782 ], [ %1763, %1752 ]
  %1828 = phi float [ %1739, %1736 ], [ %1824, %1797 ], [ %1739, %1795 ], [ %1794, %1782 ], [ %1764, %1752 ]
  %1829 = phi float [ %1740, %1736 ], [ %1740, %1797 ], [ %1740, %1795 ], [ %1740, %1782 ], [ %1774, %1752 ]
  %1830 = phi float [ %1741, %1736 ], [ %1741, %1797 ], [ %1741, %1795 ], [ %1741, %1782 ], [ %1775, %1752 ]
  %1831 = phi float [ %1742, %1736 ], [ %1742, %1797 ], [ %1742, %1795 ], [ %1742, %1782 ], [ %1776, %1752 ]
  %1832 = phi float [ %933, %1736 ], [ %933, %1797 ], [ %933, %1795 ], [ %933, %1782 ], [ %1767, %1752 ]
  %1833 = phi float [ %938, %1736 ], [ %938, %1797 ], [ %938, %1795 ], [ %938, %1782 ], [ %1779, %1752 ]
  %1834 = and i32 %1744, 12
  %1835 = icmp eq i32 %1834, 12
  br i1 %1835, label %1918, label %1836

; <label>:1836                                    ; preds = %1825
  %1837 = and i32 %1744, 2097184
  %1838 = icmp eq i32 %1837, 2097184
  %1839 = select i1 %1838, float %1236, float 0.000000e+00
  %1840 = and i32 %1744, 4194336
  %1841 = icmp eq i32 %1840, 4194336
  %1842 = select i1 %1841, float %1236, float 0.000000e+00
  %1843 = and i32 %1744, 8388640
  %1844 = icmp eq i32 %1843, 8388640
  %1845 = select i1 %1844, float %1236, float 0.000000e+00
  %1846 = and i32 %1744, 16384
  %1847 = icmp ne i32 %1846, 0
  %1848 = select i1 %1847, float %1236, float 0.000000e+00
  %1849 = icmp eq i32 %1834, 0
  br i1 %1849, label %1850, label %1866

; <label>:1850                                    ; preds = %1836
  %1851 = fsub fast float %1537, %925
  %1852 = fsub fast float %1538, %926
  %1853 = fmul fast float %1839, %1851
  %1854 = fmul fast float %1839, %1852
  %1855 = fadd fast float %1853, %925
  %1856 = fadd fast float %1854, %926
  %1857 = fsub fast float %1539, %936
  %1858 = fmul fast float %1842, %1857
  %1859 = fadd fast float %1858, %936
  %1860 = fsub fast float %1536, %935
  %1861 = fmul fast float %1845, %1860
  %1862 = fadd fast float %1861, %935
  %1863 = fsub fast float %1687, %937
  %1864 = fmul fast float %1848, %1863
  %1865 = fadd fast float %1864, %937
  br label %1918

; <label>:1866                                    ; preds = %1836
  %1867 = icmp eq i32 %1834, 4
  br i1 %1867, label %1868, label %1902

; <label>:1868                                    ; preds = %1866
  %1869 = fmul fast float %1839, %1537
  %1870 = fmul fast float %1839, %1538
  %1871 = fadd fast float %1869, %925
  %1872 = fadd fast float %1870, %926
  %1873 = call float @dx.op.binary.f32(i32 36, float %936, float %1539)  ; FMin(a,b)
  %1874 = fsub fast float %1873, %936
  %1875 = fmul fast float %1874, %1842
  %1876 = fadd fast float %1875, %936
  %1877 = fadd fast float %1536, %935
  %1878 = fmul fast float %1877, 0x3FF337FAE0000000
  %1879 = fmul fast float %935, %935
  %1880 = fmul fast float %1536, %1536
  %1881 = fadd fast float %1880, %1879
  %1882 = fmul fast float %1881, 0x3FE5152B00000000
  %1883 = fmul fast float %935, 0xBFCC1F85E0000000
  %1884 = fmul fast float %1883, %1536
  %1885 = fadd fast float %1884, 0xBFE1363700000000
  %1886 = fadd fast float %1885, %1878
  %1887 = fsub fast float %1886, %1882
  %1888 = fmul fast float %1877, 0x3FBA6F0D00000000
  %1889 = fmul fast float %1881, 0x3FD0432880000000
  %1890 = fmul fast float %935, 0xBFEF110800000000
  %1891 = fmul fast float %1890, %1536
  %1892 = fadd fast float %1891, 1.000000e+00
  %1893 = fsub fast float %1892, %1888
  %1894 = fadd fast float %1893, %1889
  %1895 = fdiv fast float %1887, %1894
  %1896 = call float @dx.op.unary.f32(i32 7, float %1895)  ; Saturate(value)
  %1897 = fsub fast float %1896, %935
  %1898 = fmul fast float %1897, %1845
  %1899 = fadd fast float %1898, %935
  %1900 = fmul fast float %1848, %1687
  %1901 = fadd fast float %1900, %937
  br label %1918

; <label>:1902                                    ; preds = %1866
  %1903 = icmp eq i32 %1834, 8
  br i1 %1903, label %1904, label %1918

; <label>:1904                                    ; preds = %1902
  %1905 = fmul fast float %1839, %1537
  %1906 = fmul fast float %1839, %1538
  %1907 = fadd fast float %1905, %925
  %1908 = fadd fast float %1906, %926
  %1909 = call float @dx.op.binary.f32(i32 36, float %936, float %1539)  ; FMin(a,b)
  %1910 = fsub fast float %1909, %936
  %1911 = fmul fast float %1910, %1842
  %1912 = fadd fast float %1911, %936
  %1913 = fsub fast float %1536, %935
  %1914 = fmul fast float %1845, %1913
  %1915 = fadd fast float %1914, %935
  %1916 = fmul fast float %1848, %1687
  %1917 = fadd fast float %1916, %937
  br label %1918

; <label>:1918                                    ; preds = %1904, %1902, %1868, %1850, %1825, %1235, %939, %924
  %1919 = phi float [ %925, %1825 ], [ %925, %1235 ], [ %925, %924 ], [ %1907, %1904 ], [ %925, %1902 ], [ %1871, %1868 ], [ %1855, %1850 ], [ %925, %939 ]
  %1920 = phi float [ %926, %1825 ], [ %926, %1235 ], [ %926, %924 ], [ %1908, %1904 ], [ %926, %1902 ], [ %1872, %1868 ], [ %1856, %1850 ], [ %926, %939 ]
  %1921 = phi float [ %1826, %1825 ], [ %927, %1235 ], [ %927, %924 ], [ %1826, %1904 ], [ %1826, %1902 ], [ %1826, %1868 ], [ %1826, %1850 ], [ %927, %939 ]
  %1922 = phi float [ %1827, %1825 ], [ %928, %1235 ], [ %928, %924 ], [ %1827, %1904 ], [ %1827, %1902 ], [ %1827, %1868 ], [ %1827, %1850 ], [ %928, %939 ]
  %1923 = phi float [ %1828, %1825 ], [ %929, %1235 ], [ %929, %924 ], [ %1828, %1904 ], [ %1828, %1902 ], [ %1828, %1868 ], [ %1828, %1850 ], [ %929, %939 ]
  %1924 = phi float [ %1829, %1825 ], [ %930, %1235 ], [ %930, %924 ], [ %1829, %1904 ], [ %1829, %1902 ], [ %1829, %1868 ], [ %1829, %1850 ], [ %930, %939 ]
  %1925 = phi float [ %1830, %1825 ], [ %931, %1235 ], [ %931, %924 ], [ %1830, %1904 ], [ %1830, %1902 ], [ %1830, %1868 ], [ %1830, %1850 ], [ %931, %939 ]
  %1926 = phi float [ %1831, %1825 ], [ %932, %1235 ], [ %932, %924 ], [ %1831, %1904 ], [ %1831, %1902 ], [ %1831, %1868 ], [ %1831, %1850 ], [ %932, %939 ]
  %1927 = phi float [ %1832, %1825 ], [ %933, %1235 ], [ %933, %924 ], [ %1832, %1904 ], [ %1832, %1902 ], [ %1832, %1868 ], [ %1832, %1850 ], [ %933, %939 ]
  %1928 = phi float [ %935, %1825 ], [ %935, %1235 ], [ %935, %924 ], [ %1915, %1904 ], [ %935, %1902 ], [ %1899, %1868 ], [ %1862, %1850 ], [ %935, %939 ]
  %1929 = phi float [ %936, %1825 ], [ %936, %1235 ], [ %936, %924 ], [ %1912, %1904 ], [ %936, %1902 ], [ %1876, %1868 ], [ %1859, %1850 ], [ %936, %939 ]
  %1930 = phi float [ %937, %1825 ], [ %937, %1235 ], [ %937, %924 ], [ %1917, %1904 ], [ %937, %1902 ], [ %1901, %1868 ], [ %1865, %1850 ], [ %937, %939 ]
  %1931 = phi float [ %1833, %1825 ], [ %938, %1235 ], [ %938, %924 ], [ %1833, %1904 ], [ %1833, %1902 ], [ %1833, %1868 ], [ %1833, %1850 ], [ %938, %939 ]
  br i1 %375, label %2911, label %1932

; <label>:1932                                    ; preds = %1918
  %1933 = icmp ult i32 %428, 3
  %1934 = add i32 %45, 56
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %45, 60
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = or i32 %1939, %1936
  %1941 = icmp eq i32 %1940, 0
  br i1 %1941, label %2911, label %1942

; <label>:1942                                    ; preds = %1932
  %1943 = and i32 %1936, 262144
  %1944 = icmp ne i32 %1943, 0
  %1945 = select i1 %1944, float %48, float 1.000000e+00
  %1946 = select i1 %1944, float %49, float 0.000000e+00
  %1947 = select i1 %1944, float %50, float 0.000000e+00
  %1948 = select i1 %1944, float %51, float 1.000000e+00
  %1949 = select i1 %1944, float %52, float %73
  %1950 = select i1 %1944, float %53, float %74
  %1951 = add i32 %45, 316
  %1952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %1953 = extractvalue %dx.types.ResRet.i32 %1952, 0
  %1954 = lshr i32 %1953, 16
  %1955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1954)  ; LegacyF16ToF32(value)
  %1956 = fmul fast float %1955, 0x3F50624DE0000000
  %1957 = add i32 %45, 120
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = lshr i32 %1959, 16
  %1961 = and i32 %1960, 255
  %1962 = lshr i32 %1959, 24
  %1963 = add i32 %45, 324
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = and i32 %1965, 65535
  %1967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1966)  ; LegacyF16ToF32(value)
  %1968 = lshr i32 %1965, 16
  %1969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1968)  ; LegacyF16ToF32(value)
  %1970 = add i32 %45, 64
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = lshr i32 %1972, 22
  %1974 = shl nuw nsw i32 %1973, 5
  %1975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1974)  ; LegacyF16ToF32(value)
  %1976 = shl i32 %1972, 4
  %1977 = and i32 %1976, 32752
  %1978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1977)  ; LegacyF16ToF32(value)
  %1979 = lshr i32 %1972, 7
  %1980 = and i32 %1979, 32752
  %1981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1980)  ; LegacyF16ToF32(value)
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 3
  %1984 = fmul fast float %1983, 1.000000e+03
  %1985 = fmul fast float %325, %1984
  %1986 = call float @dx.op.unary.f32(i32 22, float %1985)  ; Frc(value)
  %1987 = fadd fast float %1986, %315
  %1988 = fmul fast float %326, %1984
  %1989 = call float @dx.op.unary.f32(i32 22, float %1988)  ; Frc(value)
  %1990 = fadd fast float %1989, %317
  %1991 = fmul fast float %1956, %1984
  %1992 = call float @dx.op.unary.f32(i32 22, float %1991)  ; Frc(value)
  %1993 = fmul fast float %1992, 0x401921FB60000000
  %1994 = fadd fast float %1993, %1975
  %1995 = call float @dx.op.unary.f32(i32 13, float %1994)  ; Sin(value)
  %1996 = call float @dx.op.unary.f32(i32 12, float %1994)  ; Cos(value)
  %1997 = fsub fast float -0.000000e+00, %1995
  %1998 = fadd fast float %1949, -5.000000e-01
  %1999 = fadd fast float %1950, -5.000000e-01
  %2000 = fmul fast float %1967, %1998
  %2001 = fmul fast float %1969, %1999
  %2002 = fadd fast float %2000, 5.000000e-01
  %2003 = fadd fast float %2001, 5.000000e-01
  %2004 = fmul fast float %1978, %2002
  %2005 = fmul fast float %1981, %2003
  %2006 = fmul fast float %1996, %2004
  %2007 = call float @dx.op.tertiary.f32(i32 46, float %1997, float %2005, float %2006)  ; FMad(a,b,c)
  %2008 = fmul fast float %1995, %2004
  %2009 = call float @dx.op.tertiary.f32(i32 46, float %1996, float %2005, float %2008)  ; FMad(a,b,c)
  %2010 = fadd fast float %1987, %2007
  %2011 = fadd fast float %1990, %2009
  %2012 = icmp ugt i32 %1961, 1
  %2013 = icmp ugt i32 %1959, 33554431
  %2014 = or i1 %2013, %2012
  br i1 %2014, label %2015, label %2040

; <label>:2015                                    ; preds = %1942
  %2016 = add i32 %45, 260
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = lshr i32 %2018, 16
  %2020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2019)  ; LegacyF16ToF32(value)
  %2021 = fmul fast float %1983, %2020
  %2022 = call float @dx.op.unary.f32(i32 22, float %2021)  ; Frc(value)
  %2023 = mul nuw nsw i32 %1961, %1962
  %2024 = uitofp i32 %2023 to float
  %2025 = fmul fast float %2022, %2024
  %2026 = call float @dx.op.unary.f32(i32 27, float %2025)  ; Round_ni(value)
  %2027 = fptoui float %2026 to i32
  %2028 = urem i32 %2027, %1961
  %2029 = udiv i32 %2027, %1962
  %2030 = call float @dx.op.unary.f32(i32 22, float %2010)  ; Frc(value)
  %2031 = call float @dx.op.unary.f32(i32 22, float %2011)  ; Frc(value)
  %2032 = uitofp i32 %2028 to float
  %2033 = uitofp i32 %2029 to float
  %2034 = fadd fast float %2030, %2032
  %2035 = fadd fast float %2031, %2033
  %2036 = uitofp i32 %1961 to float
  %2037 = uitofp i32 %1962 to float
  %2038 = fdiv fast float %2034, %2036
  %2039 = fdiv fast float %2035, %2037
  br label %2040

; <label>:2040                                    ; preds = %2015, %1942
  %2041 = phi float [ %2038, %2015 ], [ %2010, %1942 ]
  %2042 = phi float [ %2039, %2015 ], [ %2011, %1942 ]
  %2043 = and i32 %1936, 16777216
  %2044 = icmp eq i32 %2043, 0
  br i1 %2044, label %2154, label %2045

; <label>:2045                                    ; preds = %2040
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.CBufRet.f32 %2046, 2
  %2050 = fadd fast float %2047, %144
  %2051 = fadd fast float %2048, %145
  %2052 = fadd fast float %2049, %146
  %2053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2054 = extractvalue %dx.types.CBufRet.f32 %2053, 0
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2056 = icmp eq i32 %46, 65535
  br i1 %2056, label %2151, label %2057

; <label>:2057                                    ; preds = %2045
  %2058 = lshr i32 %46, 1
  %2059 = shl i32 %2058, 2
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %46, 1
  %2063 = icmp ne i32 %2062, 0
  %2064 = lshr i32 %2061, 16
  %2065 = and i32 %2061, 65535
  %2066 = select i1 %2063, i32 %2064, i32 %2065
  %2067 = icmp eq i32 %2066, 65535
  br i1 %2067, label %2147, label %2068

; <label>:2068                                    ; preds = %2057
  %2069 = mul nuw nsw i32 %2066, 40
  %2070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = extractvalue %dx.types.ResRet.f32 %2070, 1
  %2073 = extractvalue %dx.types.ResRet.f32 %2070, 2
  %2074 = add nuw nsw i32 %2069, 12
  %2075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.ResRet.f32 %2075, 1
  %2078 = extractvalue %dx.types.ResRet.f32 %2075, 2
  %2079 = add nuw nsw i32 %2069, 24
  %2080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2079, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.ResRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.ResRet.f32 %2080, 2
  %2084 = add nuw nsw i32 %2069, 36
  %2085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2084, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.f32 %2085, 0
  %2087 = fsub fast float %2050, %2071
  %2088 = fsub fast float %2051, %2072
  %2089 = fsub fast float %2052, %2073
  %2090 = fmul fast float %2086, %2087
  %2091 = fmul fast float %2086, %2088
  %2092 = fmul fast float %2086, %2089
  %2093 = call float @dx.op.unary.f32(i32 27, float %2090)  ; Round_ni(value)
  %2094 = call float @dx.op.unary.f32(i32 27, float %2091)  ; Round_ni(value)
  %2095 = call float @dx.op.unary.f32(i32 27, float %2092)  ; Round_ni(value)
  %2096 = fadd fast float %2093, 5.000000e-01
  %2097 = fadd fast float %2094, 5.000000e-01
  %2098 = fadd fast float %2095, 5.000000e-01
  %2099 = fmul fast float %2096, %2076
  %2100 = fmul fast float %2097, %2077
  %2101 = fmul fast float %2098, %2078
  %2102 = shl i32 %46, 2
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = add i32 %2104, 0
  %2106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2107 = call float @dx.op.unary.f32(i32 22, float %2099)  ; Frc(value)
  %2108 = call float @dx.op.unary.f32(i32 22, float %2100)  ; Frc(value)
  %2109 = call float @dx.op.unary.f32(i32 22, float %2101)  ; Frc(value)
  %2110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2106, %dx.types.Handle %40, float %2107, float %2108, float %2109, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2111 = extractvalue %dx.types.ResRet.f32 %2110, 0
  %2112 = extractvalue %dx.types.ResRet.f32 %2110, 1
  %2113 = extractvalue %dx.types.ResRet.f32 %2110, 2
  %2114 = fmul fast float %2111, 1.023000e+03
  %2115 = fmul fast float %2112, 1.023000e+03
  %2116 = fmul fast float %2113, 1.023000e+03
  %2117 = fadd fast float %2114, 5.000000e-01
  %2118 = fadd fast float %2115, 5.000000e-01
  %2119 = fadd fast float %2116, 5.000000e-01
  %2120 = call float @dx.op.unary.f32(i32 27, float %2117)  ; Round_ni(value)
  %2121 = call float @dx.op.unary.f32(i32 27, float %2118)  ; Round_ni(value)
  %2122 = call float @dx.op.unary.f32(i32 27, float %2119)  ; Round_ni(value)
  %2123 = fsub fast float %2090, %2093
  %2124 = fsub fast float %2091, %2094
  %2125 = fsub fast float %2092, %2095
  %2126 = fmul fast float %2123, 7.500000e-01
  %2127 = fmul fast float %2124, 7.500000e-01
  %2128 = fmul fast float %2125, 7.500000e-01
  %2129 = fadd fast float %2093, 1.250000e-01
  %2130 = fadd fast float %2129, %2126
  %2131 = fadd fast float %2130, %2120
  %2132 = fadd fast float %2094, 1.250000e-01
  %2133 = fadd fast float %2132, %2127
  %2134 = fadd fast float %2133, %2121
  %2135 = fadd fast float %2095, 1.250000e-01
  %2136 = fadd fast float %2135, %2128
  %2137 = fadd fast float %2136, %2122
  %2138 = fmul fast float %2131, %2081
  %2139 = fmul fast float %2134, %2082
  %2140 = fmul fast float %2137, %2083
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = add i32 %2142, 0
  %2144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2144, %dx.types.Handle %38, float %2138, float %2139, float %2140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  br label %2147

; <label>:2147                                    ; preds = %2068, %2057
  %2148 = phi float [ %2146, %2068 ], [ -1.000000e+00, %2057 ]
  %2149 = fadd fast float %2148, %2055
  %2150 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  br label %2151

; <label>:2151                                    ; preds = %2147, %2045
  %2152 = phi float [ %2150, %2147 ], [ %2055, %2045 ]
  %2153 = fmul fast float %2152, %424
  br label %2154

; <label>:2154                                    ; preds = %2151, %2040
  %2155 = phi float [ %2153, %2151 ], [ %424, %2040 ]
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = and i32 %2157, 256
  %2159 = icmp eq i32 %2158, 0
  br i1 %2159, label %2206, label %2160

; <label>:2160                                    ; preds = %2154
  %2161 = add i32 %45, 432
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = add i32 %2163, 0
  %2165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2165, %dx.types.Handle %82, float %2041, float %2042, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = add i32 %45, 132
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = shl i32 %2170, 4
  %2172 = and i32 %2171, 32752
  %2173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2172)  ; LegacyF16ToF32(value)
  %2174 = lshr i32 %2170, 7
  %2175 = and i32 %2174, 32752
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = fsub fast float 1.000000e+00, %2155
  %2178 = call float @dx.op.binary.f32(i32 35, float %2177, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2179 = bitcast float %2155 to i32
  %2180 = sitofp i32 %2179 to float
  %2181 = fadd fast float %2180, 0xC1CFBF8940000000
  %2182 = fmul fast float %2176, %2181
  %2183 = fadd fast float %2182, 0x41CFBF8940000000
  %2184 = fptosi float %2183 to i32
  %2185 = bitcast i32 %2184 to float
  %2186 = bitcast float %2178 to i32
  %2187 = sitofp i32 %2186 to float
  %2188 = fadd fast float %2187, 0xC1CFBF8940000000
  %2189 = fmul fast float %2188, %2176
  %2190 = fadd fast float %2189, 0x41CFBF8940000000
  %2191 = fptosi float %2190 to i32
  %2192 = bitcast i32 %2191 to float
  %2193 = fmul fast float %2185, %2173
  %2194 = fmul fast float %2192, %2173
  %2195 = fsub fast float %2178, %2193
  %2196 = fadd fast float %2194, %2178
  %2197 = call float @dx.op.unary.f32(i32 7, float %2195)  ; Saturate(value)
  %2198 = call float @dx.op.unary.f32(i32 7, float %2196)  ; Saturate(value)
  %2199 = fsub fast float %2167, %2197
  %2200 = fsub fast float %2198, %2197
  %2201 = bitcast float %2200 to i32
  %2202 = sub nsw i32 2129859010, %2201
  %2203 = bitcast i32 %2202 to float
  %2204 = fmul fast float %2203, %2199
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  br label %2206

; <label>:2206                                    ; preds = %2160, %2154
  %2207 = phi float [ %2205, %2160 ], [ %2155, %2154 ]
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 128
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2228, label %2212

; <label>:2212                                    ; preds = %2206
  %2213 = add i32 %45, 416
  %2214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2213, i32 undef)  ; BufferLoad(srv,index,wot)
  %2215 = extractvalue %dx.types.ResRet.i32 %2214, 0
  %2216 = add i32 %2215, 0
  %2217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2217, %dx.types.Handle %82, float %2041, float %2042, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 524288
  %2223 = icmp ne i32 %2222, 0
  %2224 = fcmp fast ogt float %2219, 0x3FE0101020000000
  %2225 = select i1 %2224, float 1.000000e+00, float 0.000000e+00
  %2226 = select i1 %2223, float %2225, float %2219
  %2227 = fmul fast float %2226, %2207
  br label %2228

; <label>:2228                                    ; preds = %2212, %2206
  %2229 = phi float [ %2227, %2212 ], [ %2207, %2206 ]
  %2230 = fcmp fast ult float %2229, 0x3F70101020000000
  br i1 %2230, label %2911, label %2231

; <label>:2231                                    ; preds = %2228
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 16
  %2235 = icmp eq i32 %2234, 0
  br i1 %2235, label %2434, label %2236

; <label>:2236                                    ; preds = %2231
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = add i32 %45, 368
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = add i32 %2241, 0
  %2243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2243, %dx.types.Handle %81, float %2041, float %2042, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2245 = extractvalue %dx.types.ResRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.ResRet.f32 %2244, 1
  %2247 = extractvalue %dx.types.ResRet.f32 %2244, 2
  %2248 = extractvalue %dx.types.ResRet.f32 %2244, 3
  %2249 = and i32 %2238, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = lshr i32 %2238, 8
  %2252 = and i32 %2251, 255
  %2253 = uitofp i32 %2252 to float
  %2254 = fmul fast float %2248, %2250
  %2255 = fadd fast float %2254, %2253
  %2256 = fmul fast float %2255, 0x3F70101000000000
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 512
  %2260 = icmp eq i32 %2259, 0
  br i1 %2260, label %2269, label %2261

; <label>:2261                                    ; preds = %2236
  %2262 = add i32 %45, 448
  %2263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.i32 %2263, 0
  %2265 = add i32 %2264, 0
  %2266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2266, %dx.types.Handle %82, float %2041, float %2042, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2268 = extractvalue %dx.types.ResRet.f32 %2267, 0
  br label %2269

; <label>:2269                                    ; preds = %2261, %2236
  %2270 = phi float [ %2268, %2261 ], [ 1.000000e+00, %2236 ]
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = and i32 %2272, 33554432
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2381, label %2275

; <label>:2275                                    ; preds = %2269
  %2276 = add i32 %45, 256
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = and i32 %2278, 65535
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = lshr i32 %2278, 16
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = add i32 %45, 260
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 65535
  %2287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2286)  ; LegacyF16ToF32(value)
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = lshr i32 %2289, 24
  %2291 = uitofp i32 %2290 to float
  %2292 = fmul fast float %2291, 0x3F70101020000000
  %2293 = and i32 %2289, 255
  %2294 = uitofp i32 %2293 to float
  %2295 = fmul fast float %2294, 0x3F70101020000000
  %2296 = lshr i32 %2289, 8
  %2297 = and i32 %2296, 255
  %2298 = uitofp i32 %2297 to float
  %2299 = fmul fast float %2298, 0x3F70101020000000
  %2300 = lshr i32 %2289, 16
  %2301 = and i32 %2300, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = fmul fast float %2302, 0x3F70101020000000
  %2304 = add i32 %45, 252
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = lshr i32 %2306, 24
  %2308 = uitofp i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3F70101020000000
  %2310 = and i32 %2306, 255
  %2311 = uitofp i32 %2310 to float
  %2312 = fmul fast float %2311, 0x3F70101020000000
  %2313 = lshr i32 %2306, 8
  %2314 = and i32 %2313, 255
  %2315 = uitofp i32 %2314 to float
  %2316 = fmul fast float %2315, 0x3F70101020000000
  %2317 = lshr i32 %2306, 16
  %2318 = and i32 %2317, 255
  %2319 = uitofp i32 %2318 to float
  %2320 = fmul fast float %2319, 0x3F70101020000000
  %2321 = bitcast float %2245 to i32
  %2322 = ashr i32 %2321, 1
  %2323 = sub nsw i32 1597463174, %2322
  %2324 = bitcast i32 %2323 to float
  %2325 = fmul fast float %2245, 5.000000e-01
  %2326 = fmul fast float %2324, %2324
  %2327 = fmul fast float %2326, %2325
  %2328 = fsub fast float 1.500000e+00, %2327
  %2329 = fmul fast float %2324, %2245
  %2330 = fmul fast float %2329, %2328
  %2331 = bitcast float %2246 to i32
  %2332 = ashr i32 %2331, 1
  %2333 = sub nsw i32 1597463174, %2332
  %2334 = bitcast i32 %2333 to float
  %2335 = fmul fast float %2246, 5.000000e-01
  %2336 = fmul fast float %2334, %2334
  %2337 = fmul fast float %2336, %2335
  %2338 = fsub fast float 1.500000e+00, %2337
  %2339 = fmul fast float %2334, %2246
  %2340 = fmul fast float %2339, %2338
  %2341 = bitcast float %2247 to i32
  %2342 = ashr i32 %2341, 1
  %2343 = sub nsw i32 1597463174, %2342
  %2344 = bitcast i32 %2343 to float
  %2345 = fmul fast float %2247, 5.000000e-01
  %2346 = fmul fast float %2344, %2344
  %2347 = fmul fast float %2346, %2345
  %2348 = fsub fast float 1.500000e+00, %2347
  %2349 = fmul fast float %2344, %2247
  %2350 = fmul fast float %2349, %2348
  %2351 = fsub fast float %2330, %2312
  %2352 = fsub fast float %2340, %2316
  %2353 = fsub fast float %2350, %2320
  %2354 = fmul fast float %2351, %2280
  %2355 = fmul fast float %2352, %2282
  %2356 = fmul fast float %2353, %2287
  %2357 = fadd fast float %2354, %2295
  %2358 = fadd fast float %2355, %2299
  %2359 = fadd fast float %2356, %2303
  %2360 = call float @dx.op.unary.f32(i32 7, float %2357)  ; Saturate(value)
  %2361 = call float @dx.op.unary.f32(i32 7, float %2358)  ; Saturate(value)
  %2362 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2363 = fmul fast float %2360, %2360
  %2364 = fmul fast float %2361, %2361
  %2365 = fmul fast float %2362, %2362
  %2366 = fsub fast float %2363, %2245
  %2367 = fsub fast float %2364, %2246
  %2368 = fsub fast float %2365, %2247
  %2369 = fmul fast float %2366, %2270
  %2370 = fmul fast float %2367, %2270
  %2371 = fmul fast float %2368, %2270
  %2372 = fadd fast float %2369, %2245
  %2373 = fadd fast float %2370, %2246
  %2374 = fadd fast float %2371, %2247
  %2375 = fadd fast float %2292, %2256
  %2376 = fsub fast float %2375, %2309
  %2377 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2378 = fsub fast float %2377, %2256
  %2379 = fmul fast float %2378, %2270
  %2380 = fadd fast float %2379, %2256
  br label %2434

; <label>:2381                                    ; preds = %2269
  %2382 = and i32 %2272, 134217728
  %2383 = icmp eq i32 %2382, 0
  br i1 %2383, label %2418, label %2384

; <label>:2384                                    ; preds = %2381
  %2385 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2386 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %2387 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2388 = fadd fast float %2385, -5.000000e-01
  %2389 = fadd fast float %2386, -5.000000e-01
  %2390 = fadd fast float %2387, -5.000000e-01
  %2391 = fmul fast float %2388, %2270
  %2392 = fmul fast float %2389, %2270
  %2393 = fmul fast float %2390, %2270
  %2394 = fadd fast float %2391, 5.000000e-01
  %2395 = fadd fast float %2392, 5.000000e-01
  %2396 = fadd fast float %2393, 5.000000e-01
  %2397 = call float @dx.op.unary.f32(i32 24, float %2245)  ; Sqrt(value)
  %2398 = call float @dx.op.unary.f32(i32 24, float %2246)  ; Sqrt(value)
  %2399 = call float @dx.op.unary.f32(i32 24, float %2247)  ; Sqrt(value)
  %2400 = fmul fast float %2394, 2.000000e+00
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = fmul fast float %2401, %2397
  %2403 = fadd fast float %2402, %2400
  %2404 = fmul fast float %2403, %2397
  %2405 = fmul fast float %2395, 2.000000e+00
  %2406 = fsub fast float 1.000000e+00, %2405
  %2407 = fmul fast float %2406, %2398
  %2408 = fadd fast float %2407, %2405
  %2409 = fmul fast float %2408, %2398
  %2410 = fmul fast float %2396, 2.000000e+00
  %2411 = fsub fast float 1.000000e+00, %2410
  %2412 = fmul fast float %2411, %2399
  %2413 = fadd fast float %2412, %2410
  %2414 = fmul fast float %2413, %2399
  %2415 = fmul fast float %2404, %2404
  %2416 = fmul fast float %2409, %2409
  %2417 = fmul fast float %2414, %2414
  br label %2434

; <label>:2418                                    ; preds = %2381
  %2419 = fmul fast float %302, %302
  %2420 = fmul fast float %306, %306
  %2421 = fmul fast float %310, %310
  %2422 = fadd fast float %2419, -1.000000e+00
  %2423 = fadd fast float %2420, -1.000000e+00
  %2424 = fadd fast float %2421, -1.000000e+00
  %2425 = fmul fast float %2270, %2422
  %2426 = fmul fast float %2270, %2423
  %2427 = fmul fast float %2270, %2424
  %2428 = fadd fast float %2425, 1.000000e+00
  %2429 = fadd fast float %2426, 1.000000e+00
  %2430 = fadd fast float %2427, 1.000000e+00
  %2431 = fmul fast float %2428, %2245
  %2432 = fmul fast float %2429, %2246
  %2433 = fmul fast float %2430, %2247
  br label %2434

; <label>:2434                                    ; preds = %2418, %2384, %2275, %2231
  %2435 = phi float [ %2380, %2275 ], [ %2256, %2384 ], [ %2256, %2418 ], [ 0x3FA23C0BE0000000, %2231 ]
  %2436 = phi float [ %2372, %2275 ], [ %2415, %2384 ], [ %2431, %2418 ], [ 1.000000e+00, %2231 ]
  %2437 = phi float [ %2373, %2275 ], [ %2416, %2384 ], [ %2432, %2418 ], [ 1.000000e+00, %2231 ]
  %2438 = phi float [ %2374, %2275 ], [ %2417, %2384 ], [ %2433, %2418 ], [ 1.000000e+00, %2231 ]
  %2439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.i32 %2439, 1
  %2441 = and i32 %2440, 1
  %2442 = icmp ne i32 %2441, 0
  %2443 = add i32 %45, 356
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2443, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %2445, 32
  %2447 = icmp ne i32 %2446, 0
  %2448 = and i1 %2442, %2447
  %2449 = select i1 %2448, float 1.000000e+00, float %2436
  %2450 = select i1 %2448, float 0x3FD3333340000000, float %2437
  %2451 = select i1 %2448, float 0x3FD3333340000000, float %2438
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 32
  %2455 = icmp eq i32 %2454, 0
  br i1 %2455, label %2528, label %2456

; <label>:2456                                    ; preds = %2434
  %2457 = add i32 %45, 124
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = add i32 %45, 384
  %2461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.i32 %2461, 0
  %2463 = add i32 %2462, 0
  %2464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2463, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2465 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2464, %dx.types.Handle %81, float %2041, float %2042, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2466 = extractvalue %dx.types.ResRet.f32 %2465, 0
  %2467 = extractvalue %dx.types.ResRet.f32 %2465, 1
  %2468 = extractvalue %dx.types.ResRet.f32 %2465, 2
  %2469 = extractvalue %dx.types.ResRet.f32 %2465, 3
  %2470 = and i32 %2459, 255
  %2471 = uitofp i32 %2470 to float
  %2472 = lshr i32 %2459, 8
  %2473 = and i32 %2472, 255
  %2474 = uitofp i32 %2473 to float
  %2475 = lshr i32 %2459, 16
  %2476 = and i32 %2475, 255
  %2477 = uitofp i32 %2476 to float
  %2478 = fmul fast float %2477, 0x3F70101000000000
  %2479 = fmul fast float %2466, %2471
  %2480 = fadd fast float %2479, %2474
  %2481 = fmul fast float %2480, 0x3F70101000000000
  %2482 = fadd fast float %2467, -5.000000e-01
  %2483 = fadd fast float %2469, -5.000000e-01
  %2484 = fmul fast float %2482, %2478
  %2485 = fmul fast float %2483, %2478
  %2486 = fadd fast float %2484, 5.000000e-01
  %2487 = fadd fast float %2485, 5.000000e-01
  %2488 = fmul fast float %2486, 2.000000e+00
  %2489 = fadd fast float %2488, -1.000000e+00
  %2490 = fmul fast float %2487, 2.000000e+00
  %2491 = fadd fast float %2490, -1.000000e+00
  %2492 = fadd fast float %2489, %2491
  %2493 = fmul fast float %2492, 5.000000e-01
  %2494 = fsub fast float %2489, %2491
  %2495 = fmul fast float %2494, 5.000000e-01
  %2496 = call float @dx.op.unary.f32(i32 6, float %2493)  ; FAbs(value)
  %2497 = fsub fast float 1.000000e+00, %2496
  %2498 = call float @dx.op.unary.f32(i32 6, float %2495)  ; FAbs(value)
  %2499 = fsub fast float %2497, %2498
  %2500 = call float @dx.op.dot3.f32(i32 55, float %2493, float %2495, float %2499, float %2493, float %2495, float %2499)  ; Dot3(ax,ay,az,bx,by,bz)
  %2501 = call float @dx.op.unary.f32(i32 25, float %2500)  ; Rsqrt(value)
  %2502 = fmul fast float %2493, %2501
  %2503 = fmul fast float %2495, %2501
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 67108864
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2524, label %2508

; <label>:2508                                    ; preds = %2456
  %2509 = add i32 %45, 312
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 65535
  %2513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2512)  ; LegacyF16ToF32(value)
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = and i32 %2515, 65535
  %2517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2516)  ; LegacyF16ToF32(value)
  %2518 = lshr i32 %2511, 16
  %2519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2518)  ; LegacyF16ToF32(value)
  %2520 = fsub fast float %2481, %2519
  %2521 = fmul fast float %2520, %2513
  %2522 = fadd fast float %2521, %2517
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  br label %2524

; <label>:2524                                    ; preds = %2508, %2456
  %2525 = phi float [ %2523, %2508 ], [ %2481, %2456 ]
  %2526 = call float @dx.op.dot2.f32(i32 54, float %2502, float %2503, float %1945, float %1946)  ; Dot2(ax,ay,bx,by)
  %2527 = call float @dx.op.dot2.f32(i32 54, float %2502, float %2503, float %1947, float %1948)  ; Dot2(ax,ay,bx,by)
  br label %2528

; <label>:2528                                    ; preds = %2524, %2434
  %2529 = phi float [ %2525, %2524 ], [ 0x3FD6666660000000, %2434 ]
  %2530 = phi float [ %2526, %2524 ], [ 0.000000e+00, %2434 ]
  %2531 = phi float [ %2527, %2524 ], [ 0.000000e+00, %2434 ]
  %2532 = phi float [ %2468, %2524 ], [ 1.000000e+00, %2434 ]
  %2533 = add i32 %45, 192
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = lshr i32 %2535, 22
  %2537 = shl nuw nsw i32 %2536, 5
  %2538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2537)  ; LegacyF16ToF32(value)
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 64
  %2542 = icmp eq i32 %2541, 0
  br i1 %2542, label %2576, label %2543

; <label>:2543                                    ; preds = %2528
  %2544 = add i32 %45, 400
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2544, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = add i32 %2546, 0
  %2548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = and i32 %2550, 131072
  %2552 = icmp eq i32 %2551, 0
  %2553 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2548, %dx.types.Handle %81, float %2041, float %2042, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2554 = extractvalue %dx.types.ResRet.f32 %2553, 0
  %2555 = extractvalue %dx.types.ResRet.f32 %2553, 1
  %2556 = extractvalue %dx.types.ResRet.f32 %2553, 2
  %2557 = fmul fast float %2554, %290
  %2558 = fmul fast float %2555, %293
  %2559 = fmul fast float %2556, %296
  br i1 %2552, label %2566, label %2560

; <label>:2560                                    ; preds = %2543
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = extractvalue %dx.types.CBufRet.f32 %2561, 0
  %2563 = fmul fast float %2562, %2557
  %2564 = fmul fast float %2562, %2558
  %2565 = fmul fast float %2562, %2559
  br label %2566

; <label>:2566                                    ; preds = %2560, %2543
  %2567 = phi float [ %2563, %2560 ], [ %2557, %2543 ]
  %2568 = phi float [ %2564, %2560 ], [ %2558, %2543 ]
  %2569 = phi float [ %2565, %2560 ], [ %2559, %2543 ]
  %2570 = fmul fast float %2567, %2538
  %2571 = select i1 %186, float %2570, float %2567
  %2572 = call float @dx.op.dot3.f32(i32 55, float %2571, float %2568, float %2569, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2573 = select i1 %186, float 0.000000e+00, float %2567
  %2574 = select i1 %186, float %2572, float %2568
  %2575 = select i1 %186, float 0.000000e+00, float %2569
  br label %2576

; <label>:2576                                    ; preds = %2566, %2528
  %2577 = phi float [ %2573, %2566 ], [ 0.000000e+00, %2528 ]
  %2578 = phi float [ %2574, %2566 ], [ 0.000000e+00, %2528 ]
  %2579 = phi float [ %2575, %2566 ], [ 0.000000e+00, %2528 ]
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 1024
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2614, label %2584

; <label>:2584                                    ; preds = %2576
  %2585 = add i32 %45, 184
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = and i32 %2587, 255
  %2589 = uitofp i32 %2588 to float
  %2590 = fmul fast float %2589, 0x3F70101020000000
  %2591 = lshr i32 %2587, 8
  %2592 = and i32 %2591, 255
  %2593 = uitofp i32 %2592 to float
  %2594 = fmul fast float %2593, 0x3F70101020000000
  %2595 = lshr i32 %2587, 16
  %2596 = and i32 %2595, 255
  %2597 = uitofp i32 %2596 to float
  %2598 = fmul fast float %2597, 0x3F70101020000000
  %2599 = fmul fast float %2590, %2590
  %2600 = fmul fast float %2594, %2594
  %2601 = fmul fast float %2598, %2598
  %2602 = add i32 %45, 464
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = add i32 %2604, 0
  %2606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2606, %dx.types.Handle %82, float %2041, float %2042, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2608 = extractvalue %dx.types.ResRet.f32 %2607, 0
  %2609 = extractvalue %dx.types.ResRet.f32 %2607, 1
  %2610 = extractvalue %dx.types.ResRet.f32 %2607, 2
  %2611 = fmul fast float %2599, %2608
  %2612 = fmul fast float %2600, %2609
  %2613 = fmul fast float %2601, %2610
  br label %2614

; <label>:2614                                    ; preds = %2584, %2576
  %2615 = phi float [ %2611, %2584 ], [ 0.000000e+00, %2576 ]
  %2616 = phi float [ %2612, %2584 ], [ 0.000000e+00, %2576 ]
  %2617 = phi float [ %2613, %2584 ], [ 0.000000e+00, %2576 ]
  %2618 = fcmp fast ogt float %2615, 0.000000e+00
  %2619 = fcmp fast ogt float %2616, 0.000000e+00
  %2620 = fcmp fast ogt float %2617, 0.000000e+00
  %2621 = call float @dx.op.unary.f32(i32 23, float %2615)  ; Log(value)
  %2622 = call float @dx.op.unary.f32(i32 23, float %2616)  ; Log(value)
  %2623 = call float @dx.op.unary.f32(i32 23, float %2617)  ; Log(value)
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = lshr i32 %2625, 7
  %2627 = and i32 %2626, 32752
  %2628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2627)  ; LegacyF16ToF32(value)
  %2629 = fmul fast float %2621, 0xBFE62E4300000000
  %2630 = fmul fast float %2629, %2628
  %2631 = fmul fast float %2622, 0xBFE62E4300000000
  %2632 = fmul fast float %2631, %2628
  %2633 = fmul fast float %2623, 0xBFE62E4300000000
  %2634 = fmul fast float %2633, %2628
  %2635 = select i1 %2618, float %2630, float 1.270000e+02
  %2636 = select i1 %2619, float %2632, float 1.270000e+02
  %2637 = select i1 %2620, float %2634, float 1.270000e+02
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = and i32 %2639, 26624
  %2641 = icmp eq i32 %2640, 0
  br i1 %2641, label %2678, label %2642

; <label>:2642                                    ; preds = %2614
  %2643 = add i32 %45, 480
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = add i32 %2645, 0
  %2647 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2646, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2648 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2647, %dx.types.Handle %82, float %2041, float %2042, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2649 = extractvalue %dx.types.ResRet.f32 %2648, 0
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 1048576
  %2653 = icmp ne i32 %2652, 0
  %2654 = and i32 %2651, 2048
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %2665, label %2656

; <label>:2656                                    ; preds = %2642
  %2657 = extractvalue %dx.types.ResRet.f32 %2648, 3
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = shl i32 %2659, 4
  %2661 = and i32 %2660, 32752
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = fmul fast float %2662, %2657
  %2664 = call float @dx.op.binary.f32(i32 35, float %2663, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2665

; <label>:2665                                    ; preds = %2656, %2642
  %2666 = phi float [ %2664, %2656 ], [ 0x3F70101020000000, %2642 ]
  %2667 = and i32 %2651, 16384
  %2668 = icmp eq i32 %2667, 0
  br i1 %2668, label %2678, label %2669

; <label>:2669                                    ; preds = %2665
  %2670 = add i32 %45, 128
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 24
  %2674 = uitofp i32 %2673 to float
  %2675 = fmul fast float %2649, 0x3F70101020000000
  %2676 = select i1 %2653, float 0x3F70101020000000, float %2675
  %2677 = fmul fast float %2676, %2674
  br label %2678

; <label>:2678                                    ; preds = %2669, %2665, %2614
  %2679 = phi float [ %2666, %2669 ], [ %2666, %2665 ], [ 0x3F70101020000000, %2614 ]
  %2680 = phi float [ %2677, %2669 ], [ 0.000000e+00, %2665 ], [ 0.000000e+00, %2614 ]
  %2681 = add i32 %45, 128
  %2682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2681, i32 undef)  ; BufferLoad(srv,index,wot)
  %2683 = extractvalue %dx.types.ResRet.i32 %2682, 0
  %2684 = and i32 %2683, 255
  %2685 = uitofp i32 %2684 to float
  %2686 = lshr i32 %2683, 8
  %2687 = and i32 %2686, 255
  %2688 = uitofp i32 %2687 to float
  %2689 = call float @dx.op.dot3.f32(i32 55, float %2449, float %2450, float %2451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2690 = fmul fast float %2688, %2689
  %2691 = fadd fast float %2690, %2685
  %2692 = fmul fast float %2691, 0x3F70101020000000
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  br i1 %1933, label %2694, label %2729

; <label>:2694                                    ; preds = %2678
  %2695 = fmul fast float %2679, 2.000000e+00
  %2696 = fcmp fast olt float %2635, 1.270000e+02
  %2697 = fcmp fast olt float %2636, 1.270000e+02
  %2698 = fcmp fast olt float %2637, 1.270000e+02
  %2699 = fmul fast float %2635, 0xBFF7154760000000
  %2700 = fmul fast float %2699, %2695
  %2701 = fmul fast float %2636, 0xBFF7154760000000
  %2702 = fmul fast float %2701, %2695
  %2703 = fmul fast float %2637, 0xBFF7154760000000
  %2704 = fmul fast float %2703, %2695
  %2705 = call float @dx.op.unary.f32(i32 21, float %2700)  ; Exp(value)
  %2706 = call float @dx.op.unary.f32(i32 21, float %2702)  ; Exp(value)
  %2707 = call float @dx.op.unary.f32(i32 21, float %2704)  ; Exp(value)
  %2708 = call float @dx.op.unary.f32(i32 7, float %2705)  ; Saturate(value)
  %2709 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2710 = call float @dx.op.unary.f32(i32 7, float %2707)  ; Saturate(value)
  %2711 = fadd fast float %2708, -1.000000e+00
  %2712 = select i1 %2696, float %2711, float -1.000000e+00
  %2713 = fadd fast float %2709, -1.000000e+00
  %2714 = select i1 %2697, float %2713, float -1.000000e+00
  %2715 = fadd fast float %2710, -1.000000e+00
  %2716 = select i1 %2698, float %2715, float -1.000000e+00
  %2717 = fmul fast float %2712, %2229
  %2718 = fmul fast float %2714, %2229
  %2719 = fmul fast float %2716, %2229
  %2720 = fadd fast float %2717, 1.000000e+00
  %2721 = fadd fast float %2718, 1.000000e+00
  %2722 = fadd fast float %2719, 1.000000e+00
  %2723 = fmul fast float %2720, %1921
  %2724 = fmul fast float %2721, %1922
  %2725 = fmul fast float %2722, %1923
  %2726 = fmul fast float %2720, %1924
  %2727 = fmul fast float %2721, %1925
  %2728 = fmul fast float %2722, %1926
  br label %2729

; <label>:2729                                    ; preds = %2694, %2678
  %2730 = phi float [ %2723, %2694 ], [ %1921, %2678 ]
  %2731 = phi float [ %2724, %2694 ], [ %1922, %2678 ]
  %2732 = phi float [ %2725, %2694 ], [ %1923, %2678 ]
  %2733 = phi float [ %2726, %2694 ], [ %1924, %2678 ]
  %2734 = phi float [ %2727, %2694 ], [ %1925, %2678 ]
  %2735 = phi float [ %2728, %2694 ], [ %1926, %2678 ]
  %2736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2737 = extractvalue %dx.types.ResRet.i32 %2736, 0
  %2738 = and i32 %2737, 3
  %2739 = icmp eq i32 %2738, 3
  br i1 %2739, label %2818, label %2740

; <label>:2740                                    ; preds = %2729
  %2741 = and i32 %2737, 16
  %2742 = icmp ne i32 %2741, 0
  %2743 = select i1 %2742, float %2229, float 0.000000e+00
  %2744 = icmp eq i32 %2738, 0
  br i1 %2744, label %2745, label %2773

; <label>:2745                                    ; preds = %2740
  %2746 = and i32 %2737, 64
  %2747 = icmp ne i32 %2746, 0
  %2748 = select i1 %2747, float %2229, float 0.000000e+00
  %2749 = fsub fast float %2449, %2730
  %2750 = fsub fast float %2450, %2731
  %2751 = fsub fast float %2451, %2732
  %2752 = fmul fast float %2743, %2749
  %2753 = fmul fast float %2743, %2750
  %2754 = fmul fast float %2743, %2751
  %2755 = fadd fast float %2752, %2730
  %2756 = fadd fast float %2753, %2731
  %2757 = fadd fast float %2754, %2732
  %2758 = fsub fast float %2435, %1927
  %2759 = fmul fast float %2743, %2758
  %2760 = fadd fast float %2759, %1927
  %2761 = fsub fast float %2577, %2733
  %2762 = fsub fast float %2578, %2734
  %2763 = fsub fast float %2579, %2735
  %2764 = fmul fast float %2748, %2761
  %2765 = fmul fast float %2748, %2762
  %2766 = fmul fast float %2748, %2763
  %2767 = fadd fast float %2764, %2733
  %2768 = fadd fast float %2765, %2734
  %2769 = fadd fast float %2766, %2735
  %2770 = fsub fast float %2693, %1931
  %2771 = fmul fast float %2743, %2770
  %2772 = fadd fast float %2771, %1931
  br label %2818

; <label>:2773                                    ; preds = %2740
  %2774 = icmp eq i32 %2738, 1
  br i1 %2774, label %2775, label %2788

; <label>:2775                                    ; preds = %2773
  %2776 = fadd fast float %2449, -1.000000e+00
  %2777 = fadd fast float %2450, -1.000000e+00
  %2778 = fadd fast float %2451, -1.000000e+00
  %2779 = fmul fast float %2743, %2776
  %2780 = fmul fast float %2743, %2777
  %2781 = fmul fast float %2743, %2778
  %2782 = fadd fast float %2779, 1.000000e+00
  %2783 = fadd fast float %2780, 1.000000e+00
  %2784 = fadd fast float %2781, 1.000000e+00
  %2785 = fmul fast float %2782, %2730
  %2786 = fmul fast float %2783, %2731
  %2787 = fmul fast float %2784, %2732
  br label %2818

; <label>:2788                                    ; preds = %2773
  %2789 = icmp eq i32 %2738, 2
  br i1 %2789, label %2790, label %2818

; <label>:2790                                    ; preds = %2788
  %2791 = call float @dx.op.unary.f32(i32 24, float %2449)  ; Sqrt(value)
  %2792 = call float @dx.op.unary.f32(i32 24, float %2450)  ; Sqrt(value)
  %2793 = call float @dx.op.unary.f32(i32 24, float %2451)  ; Sqrt(value)
  %2794 = fadd fast float %2791, -5.000000e-01
  %2795 = fadd fast float %2792, -5.000000e-01
  %2796 = fadd fast float %2793, -5.000000e-01
  %2797 = fmul fast float %2794, %2743
  %2798 = fmul fast float %2795, %2743
  %2799 = fmul fast float %2796, %2743
  %2800 = fadd fast float %2797, 5.000000e-01
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = fadd fast float %2799, 5.000000e-01
  %2803 = fmul fast float %2800, 2.000000e+00
  %2804 = fsub fast float 1.000000e+00, %2803
  %2805 = fmul fast float %2804, %2730
  %2806 = fadd fast float %2805, %2803
  %2807 = fmul fast float %2806, %2730
  %2808 = fmul fast float %2801, 2.000000e+00
  %2809 = fsub fast float 1.000000e+00, %2808
  %2810 = fmul fast float %2809, %2731
  %2811 = fadd fast float %2810, %2808
  %2812 = fmul fast float %2811, %2731
  %2813 = fmul fast float %2802, 2.000000e+00
  %2814 = fsub fast float 1.000000e+00, %2813
  %2815 = fmul fast float %2814, %2732
  %2816 = fadd fast float %2815, %2813
  %2817 = fmul fast float %2816, %2732
  br label %2818

; <label>:2818                                    ; preds = %2790, %2788, %2775, %2745, %2729
  %2819 = phi float [ %2730, %2729 ], [ %2807, %2790 ], [ %2730, %2788 ], [ %2785, %2775 ], [ %2755, %2745 ]
  %2820 = phi float [ %2731, %2729 ], [ %2812, %2790 ], [ %2731, %2788 ], [ %2786, %2775 ], [ %2756, %2745 ]
  %2821 = phi float [ %2732, %2729 ], [ %2817, %2790 ], [ %2732, %2788 ], [ %2787, %2775 ], [ %2757, %2745 ]
  %2822 = phi float [ %2733, %2729 ], [ %2733, %2790 ], [ %2733, %2788 ], [ %2733, %2775 ], [ %2767, %2745 ]
  %2823 = phi float [ %2734, %2729 ], [ %2734, %2790 ], [ %2734, %2788 ], [ %2734, %2775 ], [ %2768, %2745 ]
  %2824 = phi float [ %2735, %2729 ], [ %2735, %2790 ], [ %2735, %2788 ], [ %2735, %2775 ], [ %2769, %2745 ]
  %2825 = phi float [ %1927, %2729 ], [ %1927, %2790 ], [ %1927, %2788 ], [ %1927, %2775 ], [ %2760, %2745 ]
  %2826 = phi float [ %1931, %2729 ], [ %1931, %2790 ], [ %1931, %2788 ], [ %1931, %2775 ], [ %2772, %2745 ]
  %2827 = and i32 %2737, 12
  %2828 = icmp eq i32 %2827, 12
  br i1 %2828, label %2911, label %2829

; <label>:2829                                    ; preds = %2818
  %2830 = and i32 %2737, 2097184
  %2831 = icmp eq i32 %2830, 2097184
  %2832 = select i1 %2831, float %2229, float 0.000000e+00
  %2833 = and i32 %2737, 4194336
  %2834 = icmp eq i32 %2833, 4194336
  %2835 = select i1 %2834, float %2229, float 0.000000e+00
  %2836 = and i32 %2737, 8388640
  %2837 = icmp eq i32 %2836, 8388640
  %2838 = select i1 %2837, float %2229, float 0.000000e+00
  %2839 = and i32 %2737, 16384
  %2840 = icmp ne i32 %2839, 0
  %2841 = select i1 %2840, float %2229, float 0.000000e+00
  %2842 = icmp eq i32 %2827, 0
  br i1 %2842, label %2843, label %2859

; <label>:2843                                    ; preds = %2829
  %2844 = fsub fast float %2530, %1919
  %2845 = fsub fast float %2531, %1920
  %2846 = fmul fast float %2832, %2844
  %2847 = fmul fast float %2832, %2845
  %2848 = fadd fast float %2846, %1919
  %2849 = fadd fast float %2847, %1920
  %2850 = fsub fast float %2532, %1929
  %2851 = fmul fast float %2835, %2850
  %2852 = fadd fast float %2851, %1929
  %2853 = fsub fast float %2529, %1928
  %2854 = fmul fast float %2838, %2853
  %2855 = fadd fast float %2854, %1928
  %2856 = fsub fast float %2680, %1930
  %2857 = fmul fast float %2841, %2856
  %2858 = fadd fast float %2857, %1930
  br label %2911

; <label>:2859                                    ; preds = %2829
  %2860 = icmp eq i32 %2827, 4
  br i1 %2860, label %2861, label %2895

; <label>:2861                                    ; preds = %2859
  %2862 = fmul fast float %2832, %2530
  %2863 = fmul fast float %2832, %2531
  %2864 = fadd fast float %2862, %1919
  %2865 = fadd fast float %2863, %1920
  %2866 = call float @dx.op.binary.f32(i32 36, float %1929, float %2532)  ; FMin(a,b)
  %2867 = fsub fast float %2866, %1929
  %2868 = fmul fast float %2867, %2835
  %2869 = fadd fast float %2868, %1929
  %2870 = fadd fast float %2529, %1928
  %2871 = fmul fast float %2870, 0x3FF337FAE0000000
  %2872 = fmul fast float %1928, %1928
  %2873 = fmul fast float %2529, %2529
  %2874 = fadd fast float %2873, %2872
  %2875 = fmul fast float %2874, 0x3FE5152B00000000
  %2876 = fmul fast float %1928, 0xBFCC1F85E0000000
  %2877 = fmul fast float %2876, %2529
  %2878 = fadd fast float %2877, 0xBFE1363700000000
  %2879 = fadd fast float %2878, %2871
  %2880 = fsub fast float %2879, %2875
  %2881 = fmul fast float %2870, 0x3FBA6F0D00000000
  %2882 = fmul fast float %2874, 0x3FD0432880000000
  %2883 = fmul fast float %1928, 0xBFEF110800000000
  %2884 = fmul fast float %2883, %2529
  %2885 = fadd fast float %2884, 1.000000e+00
  %2886 = fsub fast float %2885, %2881
  %2887 = fadd fast float %2886, %2882
  %2888 = fdiv fast float %2880, %2887
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  %2890 = fsub fast float %2889, %1928
  %2891 = fmul fast float %2890, %2838
  %2892 = fadd fast float %2891, %1928
  %2893 = fmul fast float %2841, %2680
  %2894 = fadd fast float %2893, %1930
  br label %2911

; <label>:2895                                    ; preds = %2859
  %2896 = icmp eq i32 %2827, 8
  br i1 %2896, label %2897, label %2911

; <label>:2897                                    ; preds = %2895
  %2898 = fmul fast float %2832, %2530
  %2899 = fmul fast float %2832, %2531
  %2900 = fadd fast float %2898, %1919
  %2901 = fadd fast float %2899, %1920
  %2902 = call float @dx.op.binary.f32(i32 36, float %1929, float %2532)  ; FMin(a,b)
  %2903 = fsub fast float %2902, %1929
  %2904 = fmul fast float %2903, %2835
  %2905 = fadd fast float %2904, %1929
  %2906 = fsub fast float %2529, %1928
  %2907 = fmul fast float %2838, %2906
  %2908 = fadd fast float %2907, %1928
  %2909 = fmul fast float %2841, %2680
  %2910 = fadd fast float %2909, %1930
  br label %2911

; <label>:2911                                    ; preds = %2897, %2895, %2861, %2843, %2818, %2228, %1932, %1918
  %2912 = phi float [ %1919, %2818 ], [ %1919, %2228 ], [ %1919, %1918 ], [ %2900, %2897 ], [ %1919, %2895 ], [ %2864, %2861 ], [ %2848, %2843 ], [ %1919, %1932 ]
  %2913 = phi float [ %1920, %2818 ], [ %1920, %2228 ], [ %1920, %1918 ], [ %2901, %2897 ], [ %1920, %2895 ], [ %2865, %2861 ], [ %2849, %2843 ], [ %1920, %1932 ]
  %2914 = phi float [ %2819, %2818 ], [ %1921, %2228 ], [ %1921, %1918 ], [ %2819, %2897 ], [ %2819, %2895 ], [ %2819, %2861 ], [ %2819, %2843 ], [ %1921, %1932 ]
  %2915 = phi float [ %2820, %2818 ], [ %1922, %2228 ], [ %1922, %1918 ], [ %2820, %2897 ], [ %2820, %2895 ], [ %2820, %2861 ], [ %2820, %2843 ], [ %1922, %1932 ]
  %2916 = phi float [ %2821, %2818 ], [ %1923, %2228 ], [ %1923, %1918 ], [ %2821, %2897 ], [ %2821, %2895 ], [ %2821, %2861 ], [ %2821, %2843 ], [ %1923, %1932 ]
  %2917 = phi float [ %2822, %2818 ], [ %1924, %2228 ], [ %1924, %1918 ], [ %2822, %2897 ], [ %2822, %2895 ], [ %2822, %2861 ], [ %2822, %2843 ], [ %1924, %1932 ]
  %2918 = phi float [ %2823, %2818 ], [ %1925, %2228 ], [ %1925, %1918 ], [ %2823, %2897 ], [ %2823, %2895 ], [ %2823, %2861 ], [ %2823, %2843 ], [ %1925, %1932 ]
  %2919 = phi float [ %2824, %2818 ], [ %1926, %2228 ], [ %1926, %1918 ], [ %2824, %2897 ], [ %2824, %2895 ], [ %2824, %2861 ], [ %2824, %2843 ], [ %1926, %1932 ]
  %2920 = phi float [ %2825, %2818 ], [ %1927, %2228 ], [ %1927, %1918 ], [ %2825, %2897 ], [ %2825, %2895 ], [ %2825, %2861 ], [ %2825, %2843 ], [ %1927, %1932 ]
  %2921 = phi float [ %1928, %2818 ], [ %1928, %2228 ], [ %1928, %1918 ], [ %2908, %2897 ], [ %1928, %2895 ], [ %2892, %2861 ], [ %2855, %2843 ], [ %1928, %1932 ]
  %2922 = phi float [ %1929, %2818 ], [ %1929, %2228 ], [ %1929, %1918 ], [ %2905, %2897 ], [ %1929, %2895 ], [ %2869, %2861 ], [ %2852, %2843 ], [ %1929, %1932 ]
  %2923 = phi float [ %1930, %2818 ], [ %1930, %2228 ], [ %1930, %1918 ], [ %2910, %2897 ], [ %1930, %2895 ], [ %2894, %2861 ], [ %2858, %2843 ], [ %1930, %1932 ]
  %2924 = phi float [ %2826, %2818 ], [ %1931, %2228 ], [ %1931, %1918 ], [ %2826, %2897 ], [ %2826, %2895 ], [ %2826, %2861 ], [ %2826, %2843 ], [ %1931, %1932 ]
  br i1 %377, label %3904, label %2925

; <label>:2925                                    ; preds = %2911
  %2926 = icmp ult i32 %428, 4
  %2927 = add i32 %45, 72
  %2928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %2929 = extractvalue %dx.types.ResRet.i32 %2928, 0
  %2930 = add i32 %45, 76
  %2931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2930, i32 undef)  ; BufferLoad(srv,index,wot)
  %2932 = extractvalue %dx.types.ResRet.i32 %2931, 0
  %2933 = or i32 %2932, %2929
  %2934 = icmp eq i32 %2933, 0
  br i1 %2934, label %3904, label %2935

; <label>:2935                                    ; preds = %2925
  %2936 = and i32 %2929, 262144
  %2937 = icmp ne i32 %2936, 0
  %2938 = select i1 %2937, float %48, float 1.000000e+00
  %2939 = select i1 %2937, float %49, float 0.000000e+00
  %2940 = select i1 %2937, float %50, float 0.000000e+00
  %2941 = select i1 %2937, float %51, float 1.000000e+00
  %2942 = select i1 %2937, float %52, float %73
  %2943 = select i1 %2937, float %53, float %74
  %2944 = add i32 %45, 332
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = lshr i32 %2946, 16
  %2948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2947)  ; LegacyF16ToF32(value)
  %2949 = fmul fast float %2948, 0x3F50624DE0000000
  %2950 = add i32 %45, 136
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = lshr i32 %2952, 16
  %2954 = and i32 %2953, 255
  %2955 = lshr i32 %2952, 24
  %2956 = add i32 %45, 340
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 65535
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = lshr i32 %2958, 16
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = add i32 %45, 80
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = lshr i32 %2965, 22
  %2967 = shl nuw nsw i32 %2966, 5
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = shl i32 %2965, 4
  %2970 = and i32 %2969, 32752
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = lshr i32 %2965, 7
  %2973 = and i32 %2972, 32752
  %2974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2973)  ; LegacyF16ToF32(value)
  %2975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2976 = extractvalue %dx.types.CBufRet.f32 %2975, 3
  %2977 = fmul fast float %2976, 1.000000e+03
  %2978 = fmul fast float %367, %2977
  %2979 = call float @dx.op.unary.f32(i32 22, float %2978)  ; Frc(value)
  %2980 = fadd fast float %2979, %357
  %2981 = fmul fast float %368, %2977
  %2982 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %2983 = fadd fast float %2982, %359
  %2984 = fmul fast float %2949, %2977
  %2985 = call float @dx.op.unary.f32(i32 22, float %2984)  ; Frc(value)
  %2986 = fmul fast float %2985, 0x401921FB60000000
  %2987 = fadd fast float %2986, %2968
  %2988 = call float @dx.op.unary.f32(i32 13, float %2987)  ; Sin(value)
  %2989 = call float @dx.op.unary.f32(i32 12, float %2987)  ; Cos(value)
  %2990 = fsub fast float -0.000000e+00, %2988
  %2991 = fadd fast float %2942, -5.000000e-01
  %2992 = fadd fast float %2943, -5.000000e-01
  %2993 = fmul fast float %2960, %2991
  %2994 = fmul fast float %2962, %2992
  %2995 = fadd fast float %2993, 5.000000e-01
  %2996 = fadd fast float %2994, 5.000000e-01
  %2997 = fmul fast float %2971, %2995
  %2998 = fmul fast float %2974, %2996
  %2999 = fmul fast float %2989, %2997
  %3000 = call float @dx.op.tertiary.f32(i32 46, float %2990, float %2998, float %2999)  ; FMad(a,b,c)
  %3001 = fmul fast float %2988, %2997
  %3002 = call float @dx.op.tertiary.f32(i32 46, float %2989, float %2998, float %3001)  ; FMad(a,b,c)
  %3003 = fadd fast float %2980, %3000
  %3004 = fadd fast float %2983, %3002
  %3005 = icmp ugt i32 %2954, 1
  %3006 = icmp ugt i32 %2952, 33554431
  %3007 = or i1 %3006, %3005
  br i1 %3007, label %3008, label %3033

; <label>:3008                                    ; preds = %2935
  %3009 = add i32 %45, 276
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = lshr i32 %3011, 16
  %3013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3012)  ; LegacyF16ToF32(value)
  %3014 = fmul fast float %2976, %3013
  %3015 = call float @dx.op.unary.f32(i32 22, float %3014)  ; Frc(value)
  %3016 = mul nuw nsw i32 %2954, %2955
  %3017 = uitofp i32 %3016 to float
  %3018 = fmul fast float %3015, %3017
  %3019 = call float @dx.op.unary.f32(i32 27, float %3018)  ; Round_ni(value)
  %3020 = fptoui float %3019 to i32
  %3021 = urem i32 %3020, %2954
  %3022 = udiv i32 %3020, %2955
  %3023 = call float @dx.op.unary.f32(i32 22, float %3003)  ; Frc(value)
  %3024 = call float @dx.op.unary.f32(i32 22, float %3004)  ; Frc(value)
  %3025 = uitofp i32 %3021 to float
  %3026 = uitofp i32 %3022 to float
  %3027 = fadd fast float %3023, %3025
  %3028 = fadd fast float %3024, %3026
  %3029 = uitofp i32 %2954 to float
  %3030 = uitofp i32 %2955 to float
  %3031 = fdiv fast float %3027, %3029
  %3032 = fdiv fast float %3028, %3030
  br label %3033

; <label>:3033                                    ; preds = %3008, %2935
  %3034 = phi float [ %3031, %3008 ], [ %3003, %2935 ]
  %3035 = phi float [ %3032, %3008 ], [ %3004, %2935 ]
  %3036 = and i32 %2929, 16777216
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3147, label %3038

; <label>:3038                                    ; preds = %3033
  %3039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3040 = extractvalue %dx.types.CBufRet.f32 %3039, 0
  %3041 = extractvalue %dx.types.CBufRet.f32 %3039, 1
  %3042 = extractvalue %dx.types.CBufRet.f32 %3039, 2
  %3043 = fadd fast float %3040, %144
  %3044 = fadd fast float %3041, %145
  %3045 = fadd fast float %3042, %146
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 0
  %3048 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3049 = icmp eq i32 %46, 65535
  br i1 %3049, label %3144, label %3050

; <label>:3050                                    ; preds = %3038
  %3051 = lshr i32 %46, 1
  %3052 = shl i32 %3051, 2
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = and i32 %46, 1
  %3056 = icmp ne i32 %3055, 0
  %3057 = lshr i32 %3054, 16
  %3058 = and i32 %3054, 65535
  %3059 = select i1 %3056, i32 %3057, i32 %3058
  %3060 = icmp eq i32 %3059, 65535
  br i1 %3060, label %3140, label %3061

; <label>:3061                                    ; preds = %3050
  %3062 = mul nuw nsw i32 %3059, 40
  %3063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  %3065 = extractvalue %dx.types.ResRet.f32 %3063, 1
  %3066 = extractvalue %dx.types.ResRet.f32 %3063, 2
  %3067 = add nuw nsw i32 %3062, 12
  %3068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  %3070 = extractvalue %dx.types.ResRet.f32 %3068, 1
  %3071 = extractvalue %dx.types.ResRet.f32 %3068, 2
  %3072 = add nuw nsw i32 %3062, 24
  %3073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.f32 %3073, 0
  %3075 = extractvalue %dx.types.ResRet.f32 %3073, 1
  %3076 = extractvalue %dx.types.ResRet.f32 %3073, 2
  %3077 = add nuw nsw i32 %3062, 36
  %3078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.f32 %3078, 0
  %3080 = fsub fast float %3043, %3064
  %3081 = fsub fast float %3044, %3065
  %3082 = fsub fast float %3045, %3066
  %3083 = fmul fast float %3079, %3080
  %3084 = fmul fast float %3079, %3081
  %3085 = fmul fast float %3079, %3082
  %3086 = call float @dx.op.unary.f32(i32 27, float %3083)  ; Round_ni(value)
  %3087 = call float @dx.op.unary.f32(i32 27, float %3084)  ; Round_ni(value)
  %3088 = call float @dx.op.unary.f32(i32 27, float %3085)  ; Round_ni(value)
  %3089 = fadd fast float %3086, 5.000000e-01
  %3090 = fadd fast float %3087, 5.000000e-01
  %3091 = fadd fast float %3088, 5.000000e-01
  %3092 = fmul fast float %3089, %3069
  %3093 = fmul fast float %3090, %3070
  %3094 = fmul fast float %3091, %3071
  %3095 = shl i32 %46, 2
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = add i32 %3097, 0
  %3099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3098, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3100 = call float @dx.op.unary.f32(i32 22, float %3092)  ; Frc(value)
  %3101 = call float @dx.op.unary.f32(i32 22, float %3093)  ; Frc(value)
  %3102 = call float @dx.op.unary.f32(i32 22, float %3094)  ; Frc(value)
  %3103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3099, %dx.types.Handle %40, float %3100, float %3101, float %3102, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3104 = extractvalue %dx.types.ResRet.f32 %3103, 0
  %3105 = extractvalue %dx.types.ResRet.f32 %3103, 1
  %3106 = extractvalue %dx.types.ResRet.f32 %3103, 2
  %3107 = fmul fast float %3104, 1.023000e+03
  %3108 = fmul fast float %3105, 1.023000e+03
  %3109 = fmul fast float %3106, 1.023000e+03
  %3110 = fadd fast float %3107, 5.000000e-01
  %3111 = fadd fast float %3108, 5.000000e-01
  %3112 = fadd fast float %3109, 5.000000e-01
  %3113 = call float @dx.op.unary.f32(i32 27, float %3110)  ; Round_ni(value)
  %3114 = call float @dx.op.unary.f32(i32 27, float %3111)  ; Round_ni(value)
  %3115 = call float @dx.op.unary.f32(i32 27, float %3112)  ; Round_ni(value)
  %3116 = fsub fast float %3083, %3086
  %3117 = fsub fast float %3084, %3087
  %3118 = fsub fast float %3085, %3088
  %3119 = fmul fast float %3116, 7.500000e-01
  %3120 = fmul fast float %3117, 7.500000e-01
  %3121 = fmul fast float %3118, 7.500000e-01
  %3122 = fadd fast float %3086, 1.250000e-01
  %3123 = fadd fast float %3122, %3119
  %3124 = fadd fast float %3123, %3113
  %3125 = fadd fast float %3087, 1.250000e-01
  %3126 = fadd fast float %3125, %3120
  %3127 = fadd fast float %3126, %3114
  %3128 = fadd fast float %3088, 1.250000e-01
  %3129 = fadd fast float %3128, %3121
  %3130 = fadd fast float %3129, %3115
  %3131 = fmul fast float %3124, %3074
  %3132 = fmul fast float %3127, %3075
  %3133 = fmul fast float %3130, %3076
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3137, %dx.types.Handle %38, float %3131, float %3132, float %3133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  br label %3140

; <label>:3140                                    ; preds = %3061, %3050
  %3141 = phi float [ %3139, %3061 ], [ -1.000000e+00, %3050 ]
  %3142 = fadd fast float %3141, %3048
  %3143 = call float @dx.op.unary.f32(i32 7, float %3142)  ; Saturate(value)
  br label %3144

; <label>:3144                                    ; preds = %3140, %3038
  %3145 = phi float [ %3143, %3140 ], [ %3048, %3038 ]
  %3146 = fmul fast float %3145, %423
  br label %3147

; <label>:3147                                    ; preds = %3144, %3033
  %3148 = phi float [ %3146, %3144 ], [ %423, %3033 ]
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 256
  %3152 = icmp eq i32 %3151, 0
  br i1 %3152, label %3199, label %3153

; <label>:3153                                    ; preds = %3147
  %3154 = add i32 %45, 436
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = add i32 %3156, 0
  %3158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3158, %dx.types.Handle %82, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3160 = extractvalue %dx.types.ResRet.f32 %3159, 0
  %3161 = add i32 %45, 148
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = shl i32 %3163, 4
  %3165 = and i32 %3164, 32752
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = lshr i32 %3163, 7
  %3168 = and i32 %3167, 32752
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = fsub fast float 1.000000e+00, %3148
  %3171 = call float @dx.op.binary.f32(i32 35, float %3170, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3172 = bitcast float %3148 to i32
  %3173 = sitofp i32 %3172 to float
  %3174 = fadd fast float %3173, 0xC1CFBF8940000000
  %3175 = fmul fast float %3169, %3174
  %3176 = fadd fast float %3175, 0x41CFBF8940000000
  %3177 = fptosi float %3176 to i32
  %3178 = bitcast i32 %3177 to float
  %3179 = bitcast float %3171 to i32
  %3180 = sitofp i32 %3179 to float
  %3181 = fadd fast float %3180, 0xC1CFBF8940000000
  %3182 = fmul fast float %3181, %3169
  %3183 = fadd fast float %3182, 0x41CFBF8940000000
  %3184 = fptosi float %3183 to i32
  %3185 = bitcast i32 %3184 to float
  %3186 = fmul fast float %3178, %3166
  %3187 = fmul fast float %3185, %3166
  %3188 = fsub fast float %3171, %3186
  %3189 = fadd fast float %3187, %3171
  %3190 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3191 = call float @dx.op.unary.f32(i32 7, float %3189)  ; Saturate(value)
  %3192 = fsub fast float %3160, %3190
  %3193 = fsub fast float %3191, %3190
  %3194 = bitcast float %3193 to i32
  %3195 = sub nsw i32 2129859010, %3194
  %3196 = bitcast i32 %3195 to float
  %3197 = fmul fast float %3196, %3192
  %3198 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  br label %3199

; <label>:3199                                    ; preds = %3153, %3147
  %3200 = phi float [ %3198, %3153 ], [ %3148, %3147 ]
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 128
  %3204 = icmp eq i32 %3203, 0
  br i1 %3204, label %3221, label %3205

; <label>:3205                                    ; preds = %3199
  %3206 = add i32 %45, 420
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = add i32 %3208, 0
  %3210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3210, %dx.types.Handle %82, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3212 = extractvalue %dx.types.ResRet.f32 %3211, 0
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 524288
  %3216 = icmp ne i32 %3215, 0
  %3217 = fcmp fast ogt float %3212, 0x3FE0101020000000
  %3218 = select i1 %3217, float 1.000000e+00, float 0.000000e+00
  %3219 = select i1 %3216, float %3218, float %3212
  %3220 = fmul fast float %3219, %3200
  br label %3221

; <label>:3221                                    ; preds = %3205, %3199
  %3222 = phi float [ %3220, %3205 ], [ %3200, %3199 ]
  %3223 = fcmp fast ult float %3222, 0x3F70101020000000
  br i1 %3223, label %3904, label %3224

; <label>:3224                                    ; preds = %3221
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 16
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %3427, label %3229

; <label>:3229                                    ; preds = %3224
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = add i32 %45, 372
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3232, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = add i32 %3234, 0
  %3236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3236, %dx.types.Handle %81, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.ResRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.ResRet.f32 %3237, 2
  %3241 = extractvalue %dx.types.ResRet.f32 %3237, 3
  %3242 = and i32 %3231, 255
  %3243 = uitofp i32 %3242 to float
  %3244 = lshr i32 %3231, 8
  %3245 = and i32 %3244, 255
  %3246 = uitofp i32 %3245 to float
  %3247 = fmul fast float %3241, %3243
  %3248 = fadd fast float %3247, %3246
  %3249 = fmul fast float %3248, 0x3F70101000000000
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 512
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3262, label %3254

; <label>:3254                                    ; preds = %3229
  %3255 = add i32 %45, 452
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = add i32 %3257, 0
  %3259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3259, %dx.types.Handle %82, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  br label %3262

; <label>:3262                                    ; preds = %3254, %3229
  %3263 = phi float [ %3261, %3254 ], [ 1.000000e+00, %3229 ]
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = and i32 %3265, 33554432
  %3267 = icmp eq i32 %3266, 0
  br i1 %3267, label %3374, label %3268

; <label>:3268                                    ; preds = %3262
  %3269 = add i32 %45, 272
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3269, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = and i32 %3271, 65535
  %3273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3272)  ; LegacyF16ToF32(value)
  %3274 = lshr i32 %3271, 16
  %3275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3274)  ; LegacyF16ToF32(value)
  %3276 = add i32 %45, 276
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3276, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = and i32 %3278, 65535
  %3280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3279)  ; LegacyF16ToF32(value)
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = lshr i32 %3282, 24
  %3284 = uitofp i32 %3283 to float
  %3285 = fmul fast float %3284, 0x3F70101020000000
  %3286 = and i32 %3282, 255
  %3287 = uitofp i32 %3286 to float
  %3288 = fmul fast float %3287, 0x3F70101020000000
  %3289 = lshr i32 %3282, 8
  %3290 = and i32 %3289, 255
  %3291 = uitofp i32 %3290 to float
  %3292 = fmul fast float %3291, 0x3F70101020000000
  %3293 = lshr i32 %3282, 16
  %3294 = and i32 %3293, 255
  %3295 = uitofp i32 %3294 to float
  %3296 = fmul fast float %3295, 0x3F70101020000000
  %3297 = add i32 %45, 268
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = lshr i32 %3299, 24
  %3301 = uitofp i32 %3300 to float
  %3302 = fmul fast float %3301, 0x3F70101020000000
  %3303 = and i32 %3299, 255
  %3304 = uitofp i32 %3303 to float
  %3305 = fmul fast float %3304, 0x3F70101020000000
  %3306 = lshr i32 %3299, 8
  %3307 = and i32 %3306, 255
  %3308 = uitofp i32 %3307 to float
  %3309 = fmul fast float %3308, 0x3F70101020000000
  %3310 = lshr i32 %3299, 16
  %3311 = and i32 %3310, 255
  %3312 = uitofp i32 %3311 to float
  %3313 = fmul fast float %3312, 0x3F70101020000000
  %3314 = bitcast float %3238 to i32
  %3315 = ashr i32 %3314, 1
  %3316 = sub nsw i32 1597463174, %3315
  %3317 = bitcast i32 %3316 to float
  %3318 = fmul fast float %3238, 5.000000e-01
  %3319 = fmul fast float %3317, %3317
  %3320 = fmul fast float %3319, %3318
  %3321 = fsub fast float 1.500000e+00, %3320
  %3322 = fmul fast float %3317, %3238
  %3323 = fmul fast float %3322, %3321
  %3324 = bitcast float %3239 to i32
  %3325 = ashr i32 %3324, 1
  %3326 = sub nsw i32 1597463174, %3325
  %3327 = bitcast i32 %3326 to float
  %3328 = fmul fast float %3239, 5.000000e-01
  %3329 = fmul fast float %3327, %3327
  %3330 = fmul fast float %3329, %3328
  %3331 = fsub fast float 1.500000e+00, %3330
  %3332 = fmul fast float %3327, %3239
  %3333 = fmul fast float %3332, %3331
  %3334 = bitcast float %3240 to i32
  %3335 = ashr i32 %3334, 1
  %3336 = sub nsw i32 1597463174, %3335
  %3337 = bitcast i32 %3336 to float
  %3338 = fmul fast float %3240, 5.000000e-01
  %3339 = fmul fast float %3337, %3337
  %3340 = fmul fast float %3339, %3338
  %3341 = fsub fast float 1.500000e+00, %3340
  %3342 = fmul fast float %3337, %3240
  %3343 = fmul fast float %3342, %3341
  %3344 = fsub fast float %3323, %3305
  %3345 = fsub fast float %3333, %3309
  %3346 = fsub fast float %3343, %3313
  %3347 = fmul fast float %3344, %3273
  %3348 = fmul fast float %3345, %3275
  %3349 = fmul fast float %3346, %3280
  %3350 = fadd fast float %3347, %3288
  %3351 = fadd fast float %3348, %3292
  %3352 = fadd fast float %3349, %3296
  %3353 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  %3354 = call float @dx.op.unary.f32(i32 7, float %3351)  ; Saturate(value)
  %3355 = call float @dx.op.unary.f32(i32 7, float %3352)  ; Saturate(value)
  %3356 = fmul fast float %3353, %3353
  %3357 = fmul fast float %3354, %3354
  %3358 = fmul fast float %3355, %3355
  %3359 = fsub fast float %3356, %3238
  %3360 = fsub fast float %3357, %3239
  %3361 = fsub fast float %3358, %3240
  %3362 = fmul fast float %3359, %3263
  %3363 = fmul fast float %3360, %3263
  %3364 = fmul fast float %3361, %3263
  %3365 = fadd fast float %3362, %3238
  %3366 = fadd fast float %3363, %3239
  %3367 = fadd fast float %3364, %3240
  %3368 = fadd fast float %3285, %3249
  %3369 = fsub fast float %3368, %3302
  %3370 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3371 = fsub fast float %3370, %3249
  %3372 = fmul fast float %3371, %3263
  %3373 = fadd fast float %3372, %3249
  br label %3427

; <label>:3374                                    ; preds = %3262
  %3375 = and i32 %3265, 134217728
  %3376 = icmp eq i32 %3375, 0
  br i1 %3376, label %3411, label %3377

; <label>:3377                                    ; preds = %3374
  %3378 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3379 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %3380 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %3381 = fadd fast float %3378, -5.000000e-01
  %3382 = fadd fast float %3379, -5.000000e-01
  %3383 = fadd fast float %3380, -5.000000e-01
  %3384 = fmul fast float %3381, %3263
  %3385 = fmul fast float %3382, %3263
  %3386 = fmul fast float %3383, %3263
  %3387 = fadd fast float %3384, 5.000000e-01
  %3388 = fadd fast float %3385, 5.000000e-01
  %3389 = fadd fast float %3386, 5.000000e-01
  %3390 = call float @dx.op.unary.f32(i32 24, float %3238)  ; Sqrt(value)
  %3391 = call float @dx.op.unary.f32(i32 24, float %3239)  ; Sqrt(value)
  %3392 = call float @dx.op.unary.f32(i32 24, float %3240)  ; Sqrt(value)
  %3393 = fmul fast float %3387, 2.000000e+00
  %3394 = fsub fast float 1.000000e+00, %3393
  %3395 = fmul fast float %3394, %3390
  %3396 = fadd fast float %3395, %3393
  %3397 = fmul fast float %3396, %3390
  %3398 = fmul fast float %3388, 2.000000e+00
  %3399 = fsub fast float 1.000000e+00, %3398
  %3400 = fmul fast float %3399, %3391
  %3401 = fadd fast float %3400, %3398
  %3402 = fmul fast float %3401, %3391
  %3403 = fmul fast float %3389, 2.000000e+00
  %3404 = fsub fast float 1.000000e+00, %3403
  %3405 = fmul fast float %3404, %3392
  %3406 = fadd fast float %3405, %3403
  %3407 = fmul fast float %3406, %3392
  %3408 = fmul fast float %3397, %3397
  %3409 = fmul fast float %3402, %3402
  %3410 = fmul fast float %3407, %3407
  br label %3427

; <label>:3411                                    ; preds = %3374
  %3412 = fmul fast float %344, %344
  %3413 = fmul fast float %348, %348
  %3414 = fmul fast float %352, %352
  %3415 = fadd fast float %3412, -1.000000e+00
  %3416 = fadd fast float %3413, -1.000000e+00
  %3417 = fadd fast float %3414, -1.000000e+00
  %3418 = fmul fast float %3263, %3415
  %3419 = fmul fast float %3263, %3416
  %3420 = fmul fast float %3263, %3417
  %3421 = fadd fast float %3418, 1.000000e+00
  %3422 = fadd fast float %3419, 1.000000e+00
  %3423 = fadd fast float %3420, 1.000000e+00
  %3424 = fmul fast float %3421, %3238
  %3425 = fmul fast float %3422, %3239
  %3426 = fmul fast float %3423, %3240
  br label %3427

; <label>:3427                                    ; preds = %3411, %3377, %3268, %3224
  %3428 = phi float [ %3373, %3268 ], [ %3249, %3377 ], [ %3249, %3411 ], [ 0x3FA23C0BE0000000, %3224 ]
  %3429 = phi float [ %3365, %3268 ], [ %3408, %3377 ], [ %3424, %3411 ], [ 1.000000e+00, %3224 ]
  %3430 = phi float [ %3366, %3268 ], [ %3409, %3377 ], [ %3425, %3411 ], [ 1.000000e+00, %3224 ]
  %3431 = phi float [ %3367, %3268 ], [ %3410, %3377 ], [ %3426, %3411 ], [ 1.000000e+00, %3224 ]
  %3432 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3433 = extractvalue %dx.types.CBufRet.i32 %3432, 1
  %3434 = and i32 %3433, 1
  %3435 = icmp ne i32 %3434, 0
  %3436 = add i32 %45, 356
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3436, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = and i32 %3438, 32
  %3440 = icmp ne i32 %3439, 0
  %3441 = and i1 %3435, %3440
  %3442 = select i1 %3441, float 1.000000e+00, float %3429
  %3443 = select i1 %3441, float 0x3FD3333340000000, float %3430
  %3444 = select i1 %3441, float 0x3FD3333340000000, float %3431
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 32
  %3448 = icmp eq i32 %3447, 0
  br i1 %3448, label %3521, label %3449

; <label>:3449                                    ; preds = %3427
  %3450 = add i32 %45, 140
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3450, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = add i32 %45, 388
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = add i32 %3455, 0
  %3457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3457, %dx.types.Handle %81, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = extractvalue %dx.types.ResRet.f32 %3458, 1
  %3461 = extractvalue %dx.types.ResRet.f32 %3458, 2
  %3462 = extractvalue %dx.types.ResRet.f32 %3458, 3
  %3463 = and i32 %3452, 255
  %3464 = uitofp i32 %3463 to float
  %3465 = lshr i32 %3452, 8
  %3466 = and i32 %3465, 255
  %3467 = uitofp i32 %3466 to float
  %3468 = lshr i32 %3452, 16
  %3469 = and i32 %3468, 255
  %3470 = uitofp i32 %3469 to float
  %3471 = fmul fast float %3470, 0x3F70101000000000
  %3472 = fmul fast float %3459, %3464
  %3473 = fadd fast float %3472, %3467
  %3474 = fmul fast float %3473, 0x3F70101000000000
  %3475 = fadd fast float %3460, -5.000000e-01
  %3476 = fadd fast float %3462, -5.000000e-01
  %3477 = fmul fast float %3475, %3471
  %3478 = fmul fast float %3476, %3471
  %3479 = fadd fast float %3477, 5.000000e-01
  %3480 = fadd fast float %3478, 5.000000e-01
  %3481 = fmul fast float %3479, 2.000000e+00
  %3482 = fadd fast float %3481, -1.000000e+00
  %3483 = fmul fast float %3480, 2.000000e+00
  %3484 = fadd fast float %3483, -1.000000e+00
  %3485 = fadd fast float %3482, %3484
  %3486 = fmul fast float %3485, 5.000000e-01
  %3487 = fsub fast float %3482, %3484
  %3488 = fmul fast float %3487, 5.000000e-01
  %3489 = call float @dx.op.unary.f32(i32 6, float %3486)  ; FAbs(value)
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = call float @dx.op.unary.f32(i32 6, float %3488)  ; FAbs(value)
  %3492 = fsub fast float %3490, %3491
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3486, float %3488, float %3492, float %3486, float %3488, float %3492)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = call float @dx.op.unary.f32(i32 25, float %3493)  ; Rsqrt(value)
  %3495 = fmul fast float %3486, %3494
  %3496 = fmul fast float %3488, %3494
  %3497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3498 = extractvalue %dx.types.ResRet.i32 %3497, 0
  %3499 = and i32 %3498, 67108864
  %3500 = icmp eq i32 %3499, 0
  br i1 %3500, label %3517, label %3501

; <label>:3501                                    ; preds = %3449
  %3502 = add i32 %45, 328
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3502, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 65535
  %3506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3505)  ; LegacyF16ToF32(value)
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = and i32 %3508, 65535
  %3510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3509)  ; LegacyF16ToF32(value)
  %3511 = lshr i32 %3504, 16
  %3512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3511)  ; LegacyF16ToF32(value)
  %3513 = fsub fast float %3474, %3512
  %3514 = fmul fast float %3513, %3506
  %3515 = fadd fast float %3514, %3510
  %3516 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  br label %3517

; <label>:3517                                    ; preds = %3501, %3449
  %3518 = phi float [ %3516, %3501 ], [ %3474, %3449 ]
  %3519 = call float @dx.op.dot2.f32(i32 54, float %3495, float %3496, float %2938, float %2939)  ; Dot2(ax,ay,bx,by)
  %3520 = call float @dx.op.dot2.f32(i32 54, float %3495, float %3496, float %2940, float %2941)  ; Dot2(ax,ay,bx,by)
  br label %3521

; <label>:3521                                    ; preds = %3517, %3427
  %3522 = phi float [ %3518, %3517 ], [ 0x3FD6666660000000, %3427 ]
  %3523 = phi float [ %3519, %3517 ], [ 0.000000e+00, %3427 ]
  %3524 = phi float [ %3520, %3517 ], [ 0.000000e+00, %3427 ]
  %3525 = phi float [ %3461, %3517 ], [ 1.000000e+00, %3427 ]
  %3526 = add i32 %45, 208
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = lshr i32 %3528, 22
  %3530 = shl nuw nsw i32 %3529, 5
  %3531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3530)  ; LegacyF16ToF32(value)
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 64
  %3535 = icmp eq i32 %3534, 0
  br i1 %3535, label %3569, label %3536

; <label>:3536                                    ; preds = %3521
  %3537 = add i32 %45, 404
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = add i32 %3539, 0
  %3541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = and i32 %3543, 131072
  %3545 = icmp eq i32 %3544, 0
  %3546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3541, %dx.types.Handle %81, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3546, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3546, 2
  %3550 = fmul fast float %3547, %332
  %3551 = fmul fast float %3548, %335
  %3552 = fmul fast float %3549, %338
  br i1 %3545, label %3559, label %3553

; <label>:3553                                    ; preds = %3536
  %3554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3555 = extractvalue %dx.types.CBufRet.f32 %3554, 0
  %3556 = fmul fast float %3555, %3550
  %3557 = fmul fast float %3555, %3551
  %3558 = fmul fast float %3555, %3552
  br label %3559

; <label>:3559                                    ; preds = %3553, %3536
  %3560 = phi float [ %3556, %3553 ], [ %3550, %3536 ]
  %3561 = phi float [ %3557, %3553 ], [ %3551, %3536 ]
  %3562 = phi float [ %3558, %3553 ], [ %3552, %3536 ]
  %3563 = fmul fast float %3560, %3531
  %3564 = select i1 %186, float %3563, float %3560
  %3565 = call float @dx.op.dot3.f32(i32 55, float %3564, float %3561, float %3562, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3566 = select i1 %186, float 0.000000e+00, float %3560
  %3567 = select i1 %186, float %3565, float %3561
  %3568 = select i1 %186, float 0.000000e+00, float %3562
  br label %3569

; <label>:3569                                    ; preds = %3559, %3521
  %3570 = phi float [ %3566, %3559 ], [ 0.000000e+00, %3521 ]
  %3571 = phi float [ %3567, %3559 ], [ 0.000000e+00, %3521 ]
  %3572 = phi float [ %3568, %3559 ], [ 0.000000e+00, %3521 ]
  %3573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3574 = extractvalue %dx.types.ResRet.i32 %3573, 0
  %3575 = and i32 %3574, 1024
  %3576 = icmp eq i32 %3575, 0
  br i1 %3576, label %3607, label %3577

; <label>:3577                                    ; preds = %3569
  %3578 = add i32 %45, 200
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = and i32 %3580, 255
  %3582 = uitofp i32 %3581 to float
  %3583 = fmul fast float %3582, 0x3F70101020000000
  %3584 = lshr i32 %3580, 8
  %3585 = and i32 %3584, 255
  %3586 = uitofp i32 %3585 to float
  %3587 = fmul fast float %3586, 0x3F70101020000000
  %3588 = lshr i32 %3580, 16
  %3589 = and i32 %3588, 255
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3590, 0x3F70101020000000
  %3592 = fmul fast float %3583, %3583
  %3593 = fmul fast float %3587, %3587
  %3594 = fmul fast float %3591, %3591
  %3595 = add i32 %45, 468
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = add i32 %3597, 0
  %3599 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3598, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3600 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3599, %dx.types.Handle %82, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = fmul fast float %3592, %3601
  %3605 = fmul fast float %3593, %3602
  %3606 = fmul fast float %3594, %3603
  br label %3607

; <label>:3607                                    ; preds = %3577, %3569
  %3608 = phi float [ %3604, %3577 ], [ 0.000000e+00, %3569 ]
  %3609 = phi float [ %3605, %3577 ], [ 0.000000e+00, %3569 ]
  %3610 = phi float [ %3606, %3577 ], [ 0.000000e+00, %3569 ]
  %3611 = fcmp fast ogt float %3608, 0.000000e+00
  %3612 = fcmp fast ogt float %3609, 0.000000e+00
  %3613 = fcmp fast ogt float %3610, 0.000000e+00
  %3614 = call float @dx.op.unary.f32(i32 23, float %3608)  ; Log(value)
  %3615 = call float @dx.op.unary.f32(i32 23, float %3609)  ; Log(value)
  %3616 = call float @dx.op.unary.f32(i32 23, float %3610)  ; Log(value)
  %3617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.i32 %3617, 0
  %3619 = lshr i32 %3618, 7
  %3620 = and i32 %3619, 32752
  %3621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3620)  ; LegacyF16ToF32(value)
  %3622 = fmul fast float %3614, 0xBFE62E4300000000
  %3623 = fmul fast float %3622, %3621
  %3624 = fmul fast float %3615, 0xBFE62E4300000000
  %3625 = fmul fast float %3624, %3621
  %3626 = fmul fast float %3616, 0xBFE62E4300000000
  %3627 = fmul fast float %3626, %3621
  %3628 = select i1 %3611, float %3623, float 1.270000e+02
  %3629 = select i1 %3612, float %3625, float 1.270000e+02
  %3630 = select i1 %3613, float %3627, float 1.270000e+02
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = and i32 %3632, 26624
  %3634 = icmp eq i32 %3633, 0
  br i1 %3634, label %3671, label %3635

; <label>:3635                                    ; preds = %3607
  %3636 = add i32 %45, 484
  %3637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.i32 %3637, 0
  %3639 = add i32 %3638, 0
  %3640 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3639, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3641 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3640, %dx.types.Handle %82, float %3034, float %3035, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = and i32 %3644, 1048576
  %3646 = icmp ne i32 %3645, 0
  %3647 = and i32 %3644, 2048
  %3648 = icmp eq i32 %3647, 0
  br i1 %3648, label %3658, label %3649

; <label>:3649                                    ; preds = %3635
  %3650 = extractvalue %dx.types.ResRet.f32 %3641, 3
  %3651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.i32 %3651, 0
  %3653 = shl i32 %3652, 4
  %3654 = and i32 %3653, 32752
  %3655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3654)  ; LegacyF16ToF32(value)
  %3656 = fmul fast float %3655, %3650
  %3657 = call float @dx.op.binary.f32(i32 35, float %3656, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3658

; <label>:3658                                    ; preds = %3649, %3635
  %3659 = phi float [ %3657, %3649 ], [ 0x3F70101020000000, %3635 ]
  %3660 = and i32 %3644, 16384
  %3661 = icmp eq i32 %3660, 0
  br i1 %3661, label %3671, label %3662

; <label>:3662                                    ; preds = %3658
  %3663 = add i32 %45, 144
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = lshr i32 %3665, 24
  %3667 = uitofp i32 %3666 to float
  %3668 = fmul fast float %3642, 0x3F70101020000000
  %3669 = select i1 %3646, float 0x3F70101020000000, float %3668
  %3670 = fmul fast float %3669, %3667
  br label %3671

; <label>:3671                                    ; preds = %3662, %3658, %3607
  %3672 = phi float [ %3659, %3662 ], [ %3659, %3658 ], [ 0x3F70101020000000, %3607 ]
  %3673 = phi float [ %3670, %3662 ], [ 0.000000e+00, %3658 ], [ 0.000000e+00, %3607 ]
  %3674 = add i32 %45, 144
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = and i32 %3676, 255
  %3678 = uitofp i32 %3677 to float
  %3679 = lshr i32 %3676, 8
  %3680 = and i32 %3679, 255
  %3681 = uitofp i32 %3680 to float
  %3682 = call float @dx.op.dot3.f32(i32 55, float %3442, float %3443, float %3444, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3683 = fmul fast float %3681, %3682
  %3684 = fadd fast float %3683, %3678
  %3685 = fmul fast float %3684, 0x3F70101020000000
  %3686 = call float @dx.op.unary.f32(i32 7, float %3685)  ; Saturate(value)
  br i1 %2926, label %3687, label %3722

; <label>:3687                                    ; preds = %3671
  %3688 = fmul fast float %3672, 2.000000e+00
  %3689 = fcmp fast olt float %3628, 1.270000e+02
  %3690 = fcmp fast olt float %3629, 1.270000e+02
  %3691 = fcmp fast olt float %3630, 1.270000e+02
  %3692 = fmul fast float %3628, 0xBFF7154760000000
  %3693 = fmul fast float %3692, %3688
  %3694 = fmul fast float %3629, 0xBFF7154760000000
  %3695 = fmul fast float %3694, %3688
  %3696 = fmul fast float %3630, 0xBFF7154760000000
  %3697 = fmul fast float %3696, %3688
  %3698 = call float @dx.op.unary.f32(i32 21, float %3693)  ; Exp(value)
  %3699 = call float @dx.op.unary.f32(i32 21, float %3695)  ; Exp(value)
  %3700 = call float @dx.op.unary.f32(i32 21, float %3697)  ; Exp(value)
  %3701 = call float @dx.op.unary.f32(i32 7, float %3698)  ; Saturate(value)
  %3702 = call float @dx.op.unary.f32(i32 7, float %3699)  ; Saturate(value)
  %3703 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  %3704 = fadd fast float %3701, -1.000000e+00
  %3705 = select i1 %3689, float %3704, float -1.000000e+00
  %3706 = fadd fast float %3702, -1.000000e+00
  %3707 = select i1 %3690, float %3706, float -1.000000e+00
  %3708 = fadd fast float %3703, -1.000000e+00
  %3709 = select i1 %3691, float %3708, float -1.000000e+00
  %3710 = fmul fast float %3705, %3222
  %3711 = fmul fast float %3707, %3222
  %3712 = fmul fast float %3709, %3222
  %3713 = fadd fast float %3710, 1.000000e+00
  %3714 = fadd fast float %3711, 1.000000e+00
  %3715 = fadd fast float %3712, 1.000000e+00
  %3716 = fmul fast float %3713, %2914
  %3717 = fmul fast float %3714, %2915
  %3718 = fmul fast float %3715, %2916
  %3719 = fmul fast float %3713, %2917
  %3720 = fmul fast float %3714, %2918
  %3721 = fmul fast float %3715, %2919
  br label %3722

; <label>:3722                                    ; preds = %3687, %3671
  %3723 = phi float [ %3716, %3687 ], [ %2914, %3671 ]
  %3724 = phi float [ %3717, %3687 ], [ %2915, %3671 ]
  %3725 = phi float [ %3718, %3687 ], [ %2916, %3671 ]
  %3726 = phi float [ %3719, %3687 ], [ %2917, %3671 ]
  %3727 = phi float [ %3720, %3687 ], [ %2918, %3671 ]
  %3728 = phi float [ %3721, %3687 ], [ %2919, %3671 ]
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = and i32 %3730, 3
  %3732 = icmp eq i32 %3731, 3
  br i1 %3732, label %3811, label %3733

; <label>:3733                                    ; preds = %3722
  %3734 = and i32 %3730, 16
  %3735 = icmp ne i32 %3734, 0
  %3736 = select i1 %3735, float %3222, float 0.000000e+00
  %3737 = icmp eq i32 %3731, 0
  br i1 %3737, label %3738, label %3766

; <label>:3738                                    ; preds = %3733
  %3739 = and i32 %3730, 64
  %3740 = icmp ne i32 %3739, 0
  %3741 = select i1 %3740, float %3222, float 0.000000e+00
  %3742 = fsub fast float %3442, %3723
  %3743 = fsub fast float %3443, %3724
  %3744 = fsub fast float %3444, %3725
  %3745 = fmul fast float %3736, %3742
  %3746 = fmul fast float %3736, %3743
  %3747 = fmul fast float %3736, %3744
  %3748 = fadd fast float %3745, %3723
  %3749 = fadd fast float %3746, %3724
  %3750 = fadd fast float %3747, %3725
  %3751 = fsub fast float %3428, %2920
  %3752 = fmul fast float %3736, %3751
  %3753 = fadd fast float %3752, %2920
  %3754 = fsub fast float %3570, %3726
  %3755 = fsub fast float %3571, %3727
  %3756 = fsub fast float %3572, %3728
  %3757 = fmul fast float %3741, %3754
  %3758 = fmul fast float %3741, %3755
  %3759 = fmul fast float %3741, %3756
  %3760 = fadd fast float %3757, %3726
  %3761 = fadd fast float %3758, %3727
  %3762 = fadd fast float %3759, %3728
  %3763 = fsub fast float %3686, %2924
  %3764 = fmul fast float %3736, %3763
  %3765 = fadd fast float %3764, %2924
  br label %3811

; <label>:3766                                    ; preds = %3733
  %3767 = icmp eq i32 %3731, 1
  br i1 %3767, label %3768, label %3781

; <label>:3768                                    ; preds = %3766
  %3769 = fadd fast float %3442, -1.000000e+00
  %3770 = fadd fast float %3443, -1.000000e+00
  %3771 = fadd fast float %3444, -1.000000e+00
  %3772 = fmul fast float %3736, %3769
  %3773 = fmul fast float %3736, %3770
  %3774 = fmul fast float %3736, %3771
  %3775 = fadd fast float %3772, 1.000000e+00
  %3776 = fadd fast float %3773, 1.000000e+00
  %3777 = fadd fast float %3774, 1.000000e+00
  %3778 = fmul fast float %3775, %3723
  %3779 = fmul fast float %3776, %3724
  %3780 = fmul fast float %3777, %3725
  br label %3811

; <label>:3781                                    ; preds = %3766
  %3782 = icmp eq i32 %3731, 2
  br i1 %3782, label %3783, label %3811

; <label>:3783                                    ; preds = %3781
  %3784 = call float @dx.op.unary.f32(i32 24, float %3442)  ; Sqrt(value)
  %3785 = call float @dx.op.unary.f32(i32 24, float %3443)  ; Sqrt(value)
  %3786 = call float @dx.op.unary.f32(i32 24, float %3444)  ; Sqrt(value)
  %3787 = fadd fast float %3784, -5.000000e-01
  %3788 = fadd fast float %3785, -5.000000e-01
  %3789 = fadd fast float %3786, -5.000000e-01
  %3790 = fmul fast float %3787, %3736
  %3791 = fmul fast float %3788, %3736
  %3792 = fmul fast float %3789, %3736
  %3793 = fadd fast float %3790, 5.000000e-01
  %3794 = fadd fast float %3791, 5.000000e-01
  %3795 = fadd fast float %3792, 5.000000e-01
  %3796 = fmul fast float %3793, 2.000000e+00
  %3797 = fsub fast float 1.000000e+00, %3796
  %3798 = fmul fast float %3797, %3723
  %3799 = fadd fast float %3798, %3796
  %3800 = fmul fast float %3799, %3723
  %3801 = fmul fast float %3794, 2.000000e+00
  %3802 = fsub fast float 1.000000e+00, %3801
  %3803 = fmul fast float %3802, %3724
  %3804 = fadd fast float %3803, %3801
  %3805 = fmul fast float %3804, %3724
  %3806 = fmul fast float %3795, 2.000000e+00
  %3807 = fsub fast float 1.000000e+00, %3806
  %3808 = fmul fast float %3807, %3725
  %3809 = fadd fast float %3808, %3806
  %3810 = fmul fast float %3809, %3725
  br label %3811

; <label>:3811                                    ; preds = %3783, %3781, %3768, %3738, %3722
  %3812 = phi float [ %3723, %3722 ], [ %3800, %3783 ], [ %3723, %3781 ], [ %3778, %3768 ], [ %3748, %3738 ]
  %3813 = phi float [ %3724, %3722 ], [ %3805, %3783 ], [ %3724, %3781 ], [ %3779, %3768 ], [ %3749, %3738 ]
  %3814 = phi float [ %3725, %3722 ], [ %3810, %3783 ], [ %3725, %3781 ], [ %3780, %3768 ], [ %3750, %3738 ]
  %3815 = phi float [ %3726, %3722 ], [ %3726, %3783 ], [ %3726, %3781 ], [ %3726, %3768 ], [ %3760, %3738 ]
  %3816 = phi float [ %3727, %3722 ], [ %3727, %3783 ], [ %3727, %3781 ], [ %3727, %3768 ], [ %3761, %3738 ]
  %3817 = phi float [ %3728, %3722 ], [ %3728, %3783 ], [ %3728, %3781 ], [ %3728, %3768 ], [ %3762, %3738 ]
  %3818 = phi float [ %2920, %3722 ], [ %2920, %3783 ], [ %2920, %3781 ], [ %2920, %3768 ], [ %3753, %3738 ]
  %3819 = phi float [ %2924, %3722 ], [ %2924, %3783 ], [ %2924, %3781 ], [ %2924, %3768 ], [ %3765, %3738 ]
  %3820 = and i32 %3730, 12
  %3821 = icmp eq i32 %3820, 12
  br i1 %3821, label %3904, label %3822

; <label>:3822                                    ; preds = %3811
  %3823 = and i32 %3730, 2097184
  %3824 = icmp eq i32 %3823, 2097184
  %3825 = select i1 %3824, float %3222, float 0.000000e+00
  %3826 = and i32 %3730, 4194336
  %3827 = icmp eq i32 %3826, 4194336
  %3828 = select i1 %3827, float %3222, float 0.000000e+00
  %3829 = and i32 %3730, 8388640
  %3830 = icmp eq i32 %3829, 8388640
  %3831 = select i1 %3830, float %3222, float 0.000000e+00
  %3832 = and i32 %3730, 16384
  %3833 = icmp ne i32 %3832, 0
  %3834 = select i1 %3833, float %3222, float 0.000000e+00
  %3835 = icmp eq i32 %3820, 0
  br i1 %3835, label %3836, label %3852

; <label>:3836                                    ; preds = %3822
  %3837 = fsub fast float %3523, %2912
  %3838 = fsub fast float %3524, %2913
  %3839 = fmul fast float %3825, %3837
  %3840 = fmul fast float %3825, %3838
  %3841 = fadd fast float %3839, %2912
  %3842 = fadd fast float %3840, %2913
  %3843 = fsub fast float %3525, %2922
  %3844 = fmul fast float %3828, %3843
  %3845 = fadd fast float %3844, %2922
  %3846 = fsub fast float %3522, %2921
  %3847 = fmul fast float %3831, %3846
  %3848 = fadd fast float %3847, %2921
  %3849 = fsub fast float %3673, %2923
  %3850 = fmul fast float %3834, %3849
  %3851 = fadd fast float %3850, %2923
  br label %3904

; <label>:3852                                    ; preds = %3822
  %3853 = icmp eq i32 %3820, 4
  br i1 %3853, label %3854, label %3888

; <label>:3854                                    ; preds = %3852
  %3855 = fmul fast float %3825, %3523
  %3856 = fmul fast float %3825, %3524
  %3857 = fadd fast float %3855, %2912
  %3858 = fadd fast float %3856, %2913
  %3859 = call float @dx.op.binary.f32(i32 36, float %2922, float %3525)  ; FMin(a,b)
  %3860 = fsub fast float %3859, %2922
  %3861 = fmul fast float %3860, %3828
  %3862 = fadd fast float %3861, %2922
  %3863 = fadd fast float %3522, %2921
  %3864 = fmul fast float %3863, 0x3FF337FAE0000000
  %3865 = fmul fast float %2921, %2921
  %3866 = fmul fast float %3522, %3522
  %3867 = fadd fast float %3866, %3865
  %3868 = fmul fast float %3867, 0x3FE5152B00000000
  %3869 = fmul fast float %2921, 0xBFCC1F85E0000000
  %3870 = fmul fast float %3869, %3522
  %3871 = fadd fast float %3870, 0xBFE1363700000000
  %3872 = fadd fast float %3871, %3864
  %3873 = fsub fast float %3872, %3868
  %3874 = fmul fast float %3863, 0x3FBA6F0D00000000
  %3875 = fmul fast float %3867, 0x3FD0432880000000
  %3876 = fmul fast float %2921, 0xBFEF110800000000
  %3877 = fmul fast float %3876, %3522
  %3878 = fadd fast float %3877, 1.000000e+00
  %3879 = fsub fast float %3878, %3874
  %3880 = fadd fast float %3879, %3875
  %3881 = fdiv fast float %3873, %3880
  %3882 = call float @dx.op.unary.f32(i32 7, float %3881)  ; Saturate(value)
  %3883 = fsub fast float %3882, %2921
  %3884 = fmul fast float %3883, %3831
  %3885 = fadd fast float %3884, %2921
  %3886 = fmul fast float %3834, %3673
  %3887 = fadd fast float %3886, %2923
  br label %3904

; <label>:3888                                    ; preds = %3852
  %3889 = icmp eq i32 %3820, 8
  br i1 %3889, label %3890, label %3904

; <label>:3890                                    ; preds = %3888
  %3891 = fmul fast float %3825, %3523
  %3892 = fmul fast float %3825, %3524
  %3893 = fadd fast float %3891, %2912
  %3894 = fadd fast float %3892, %2913
  %3895 = call float @dx.op.binary.f32(i32 36, float %2922, float %3525)  ; FMin(a,b)
  %3896 = fsub fast float %3895, %2922
  %3897 = fmul fast float %3896, %3828
  %3898 = fadd fast float %3897, %2922
  %3899 = fsub fast float %3522, %2921
  %3900 = fmul fast float %3831, %3899
  %3901 = fadd fast float %3900, %2921
  %3902 = fmul fast float %3834, %3673
  %3903 = fadd fast float %3902, %2923
  br label %3904

; <label>:3904                                    ; preds = %3890, %3888, %3854, %3836, %3811, %3221, %2925, %2911
  %3905 = phi float [ %2912, %3811 ], [ %2912, %3221 ], [ %2912, %2911 ], [ %2912, %2925 ], [ %3841, %3836 ], [ %3857, %3854 ], [ %2912, %3888 ], [ %3893, %3890 ]
  %3906 = phi float [ %2913, %3811 ], [ %2913, %3221 ], [ %2913, %2911 ], [ %2913, %2925 ], [ %3842, %3836 ], [ %3858, %3854 ], [ %2913, %3888 ], [ %3894, %3890 ]
  %3907 = phi float [ %3812, %3811 ], [ %2914, %3221 ], [ %2914, %2911 ], [ %2914, %2925 ], [ %3812, %3836 ], [ %3812, %3854 ], [ %3812, %3888 ], [ %3812, %3890 ]
  %3908 = phi float [ %3813, %3811 ], [ %2915, %3221 ], [ %2915, %2911 ], [ %2915, %2925 ], [ %3813, %3836 ], [ %3813, %3854 ], [ %3813, %3888 ], [ %3813, %3890 ]
  %3909 = phi float [ %3814, %3811 ], [ %2916, %3221 ], [ %2916, %2911 ], [ %2916, %2925 ], [ %3814, %3836 ], [ %3814, %3854 ], [ %3814, %3888 ], [ %3814, %3890 ]
  %3910 = phi float [ %3815, %3811 ], [ %2917, %3221 ], [ %2917, %2911 ], [ %2917, %2925 ], [ %3815, %3836 ], [ %3815, %3854 ], [ %3815, %3888 ], [ %3815, %3890 ]
  %3911 = phi float [ %3816, %3811 ], [ %2918, %3221 ], [ %2918, %2911 ], [ %2918, %2925 ], [ %3816, %3836 ], [ %3816, %3854 ], [ %3816, %3888 ], [ %3816, %3890 ]
  %3912 = phi float [ %3817, %3811 ], [ %2919, %3221 ], [ %2919, %2911 ], [ %2919, %2925 ], [ %3817, %3836 ], [ %3817, %3854 ], [ %3817, %3888 ], [ %3817, %3890 ]
  %3913 = phi float [ %3818, %3811 ], [ %2920, %3221 ], [ %2920, %2911 ], [ %2920, %2925 ], [ %3818, %3836 ], [ %3818, %3854 ], [ %3818, %3888 ], [ %3818, %3890 ]
  %3914 = phi float [ %2921, %3811 ], [ %2921, %3221 ], [ %2921, %2911 ], [ %2921, %2925 ], [ %3848, %3836 ], [ %3885, %3854 ], [ %2921, %3888 ], [ %3901, %3890 ]
  %3915 = phi float [ %2922, %3811 ], [ %2922, %3221 ], [ %2922, %2911 ], [ %2922, %2925 ], [ %3845, %3836 ], [ %3862, %3854 ], [ %2922, %3888 ], [ %3898, %3890 ]
  %3916 = phi float [ %2923, %3811 ], [ %2923, %3221 ], [ %2923, %2911 ], [ %2923, %2925 ], [ %3851, %3836 ], [ %3887, %3854 ], [ %2923, %3888 ], [ %3903, %3890 ]
  %3917 = phi float [ %3819, %3811 ], [ %2924, %3221 ], [ %2924, %2911 ], [ %2924, %2925 ], [ %3819, %3836 ], [ %3819, %3854 ], [ %3819, %3888 ], [ %3819, %3890 ]
  %3918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3919 = extractvalue %dx.types.CBufRet.f32 %3918, 0
  %3920 = call float @dx.op.dot2.f32(i32 54, float %3905, float %3906, float %3905, float %3906)  ; Dot2(ax,ay,bx,by)
  %3921 = fmul fast float %3920, 0x3FE3333340000000
  %3922 = fsub fast float 1.000000e+00, %3921
  %3923 = call float @dx.op.dot3.f32(i32 55, float %3905, float %3906, float %3922, float %3905, float %3906, float %3922)  ; Dot3(ax,ay,az,bx,by,bz)
  %3924 = call float @dx.op.unary.f32(i32 25, float %3923)  ; Rsqrt(value)
  %3925 = fmul fast float %3924, %3905
  %3926 = fmul fast float %3924, %3906
  %3927 = fmul fast float %3922, %3924
  %3928 = fmul fast float %3927, %94
  %3929 = fmul fast float %3927, %96
  %3930 = fmul fast float %3927, %98
  %3931 = fmul fast float %3925, %66
  %3932 = fmul fast float %3925, %67
  %3933 = fmul fast float %3925, %68
  %3934 = fadd fast float %3928, %3931
  %3935 = fadd fast float %3929, %3932
  %3936 = fadd fast float %3930, %3933
  %3937 = fmul fast float %108, %3926
  %3938 = fmul fast float %109, %3926
  %3939 = fmul fast float %110, %3926
  %3940 = fadd fast float %3934, %3937
  %3941 = fadd fast float %3935, %3938
  %3942 = fadd fast float %3936, %3939
  %3943 = call float @dx.op.dot3.f32(i32 55, float %3940, float %3941, float %3942, float %3940, float %3941, float %3942)  ; Dot3(ax,ay,az,bx,by,bz)
  %3944 = call float @dx.op.unary.f32(i32 25, float %3943)  ; Rsqrt(value)
  %3945 = fmul fast float %3940, %3944
  %3946 = fmul fast float %3941, %3944
  %3947 = fmul fast float %3942, %3944
  %3948 = and i32 %47, 1
  %3949 = icmp eq i32 %3948, 0
  br i1 %3949, label %3950, label %4458

; <label>:3950                                    ; preds = %3904
  %3951 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3952 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3953 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3954 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3955 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3956 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3957 = fadd fast float %3951, %144
  %3958 = fadd fast float %3952, %145
  %3959 = fadd fast float %3953, %146
  %3960 = fadd fast float %3954, %144
  %3961 = fadd fast float %3955, %145
  %3962 = fadd fast float %3956, %146
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.CBufRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.CBufRet.f32 %3963, 2
  %3967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3968 = extractvalue %dx.types.CBufRet.f32 %3967, 2
  %3969 = extractvalue %dx.types.CBufRet.f32 %3967, 3
  %3970 = fmul fast float %3964, %85
  %3971 = fmul fast float %3970, %3968
  %3972 = fmul fast float %3965, %86
  %3973 = fmul fast float %3972, %3969
  %3974 = fptoui float %3971 to i32
  %3975 = fptoui float %3973 to i32
  %3976 = fadd fast float %3964, -1.000000e+00
  %3977 = fadd fast float %3965, -1.000000e+00
  %3978 = fptoui float %3976 to i32
  %3979 = fptoui float %3977 to i32
  %3980 = call i32 @dx.op.binary.i32(i32 40, i32 %3974, i32 %3978)  ; UMin(a,b)
  %3981 = call i32 @dx.op.binary.i32(i32 40, i32 %3975, i32 %3979)  ; UMin(a,b)
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 2
  %3984 = extractvalue %dx.types.CBufRet.f32 %3982, 3
  %3985 = fmul fast float %3983, %80
  %3986 = fsub fast float %3985, %3984
  %3987 = fadd fast float %3966, -1.000000e+00
  %3988 = call float @dx.op.binary.f32(i32 36, float %3986, float %3987)  ; FMin(a,b)
  %3989 = fptoui float %3988 to i32
  %3990 = fptoui float %3964 to i32
  %3991 = fptoui float %3965 to i32
  %3992 = mul i32 %3989, %3991
  %3993 = add i32 %3992, %3981
  %3994 = mul i32 %3993, %3990
  %3995 = add i32 %3994, %3980
  %3996 = shl i32 %3995, 2
  %3997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3998 = extractvalue %dx.types.ResRet.i32 %3997, 0
  %3999 = and i32 %3998, 1023
  %4000 = lshr i32 %3998, 10
  %4001 = icmp eq i32 %3999, 0
  br i1 %4001, label %4427, label %4002

; <label>:4002                                    ; preds = %3950
  %4003 = and i32 %3998, 1023
  br label %4004

; <label>:4004                                    ; preds = %4130, %4002
  %4005 = phi i32 [ %4080, %4130 ], [ 0, %4002 ]
  %4006 = phi float [ %4131, %4130 ], [ 0.000000e+00, %4002 ]
  %4007 = phi float [ %4132, %4130 ], [ %3919, %4002 ]
  %4008 = phi float [ %4133, %4130 ], [ %3917, %4002 ]
  %4009 = phi float [ %4134, %4130 ], [ %3916, %4002 ]
  %4010 = phi float [ %4135, %4130 ], [ 0.000000e+00, %4002 ]
  %4011 = phi float [ %4136, %4130 ], [ %3910, %4002 ]
  %4012 = phi float [ %4137, %4130 ], [ %3911, %4002 ]
  %4013 = phi float [ %4138, %4130 ], [ %3912, %4002 ]
  %4014 = phi float [ %4139, %4130 ], [ %3945, %4002 ]
  %4015 = phi float [ %4140, %4130 ], [ %3946, %4002 ]
  %4016 = phi float [ %4141, %4130 ], [ %3947, %4002 ]
  %4017 = phi float [ %4142, %4130 ], [ %3915, %4002 ]
  %4018 = phi float [ %4143, %4130 ], [ %3914, %4002 ]
  %4019 = phi float [ %4144, %4130 ], [ 0.000000e+00, %4002 ]
  %4020 = phi float [ %4145, %4130 ], [ %3913, %4002 ]
  %4021 = phi float [ %4146, %4130 ], [ %3907, %4002 ]
  %4022 = phi float [ %4147, %4130 ], [ %3908, %4002 ]
  %4023 = phi float [ %4148, %4130 ], [ %3909, %4002 ]
  %4024 = add nuw nsw i32 %4005, %4000
  %4025 = shl i32 %4024, 2
  %4026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.i32 %4026, 0
  %4028 = shl i32 %4027, 8
  %4029 = or i32 %4028, 48
  %4030 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4029, i32 undef)  ; BufferLoad(srv,index,wot)
  %4031 = extractvalue %dx.types.ResRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.ResRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.ResRet.f32 %4030, 2
  %4034 = extractvalue %dx.types.ResRet.f32 %4030, 3
  %4035 = or i32 %4028, 64
  %4036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.i32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.i32 %4036, 1
  %4039 = or i32 %4028, 80
  %4040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 3
  %4043 = or i32 %4028, 96
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.ResRet.f32 %4044, 3
  %4049 = or i32 %4028, 112
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 2
  %4052 = or i32 %4028, 128
  %4053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.ResRet.f32 %4053, 1
  %4056 = extractvalue %dx.types.ResRet.f32 %4053, 2
  %4057 = extractvalue %dx.types.ResRet.f32 %4053, 3
  %4058 = or i32 %4028, 144
  %4059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.ResRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.ResRet.f32 %4059, 2
  %4063 = extractvalue %dx.types.ResRet.f32 %4059, 3
  %4064 = or i32 %4028, 160
  %4065 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.ResRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.ResRet.f32 %4065, 2
  %4069 = extractvalue %dx.types.ResRet.f32 %4065, 3
  %4070 = or i32 %4028, 192
  %4071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4070, i32 undef)  ; BufferLoad(srv,index,wot)
  %4072 = extractvalue %dx.types.ResRet.i32 %4071, 0
  %4073 = or i32 %4028, 208
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = or i32 %4028, 248
  %4077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4076, i32 undef)  ; BufferLoad(srv,index,wot)
  %4078 = extractvalue %dx.types.ResRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.ResRet.f32 %4077, 1
  %4080 = add nuw nsw i32 %4005, 1
  %4081 = bitcast float %4034 to i32
  %4082 = and i32 %4081, 512
  %4083 = icmp eq i32 %4082, 0
  %4084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4088 = extractvalue %dx.types.ResRet.f32 %4084, 3
  %4089 = call float @dx.op.dot4.f32(i32 56, float %4085, float %4086, float %4087, float %4088, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4090 = or i32 %4028, 16
  %4091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4090, i32 undef)  ; BufferLoad(srv,index,wot)
  %4092 = extractvalue %dx.types.ResRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.ResRet.f32 %4091, 1
  %4094 = extractvalue %dx.types.ResRet.f32 %4091, 2
  %4095 = extractvalue %dx.types.ResRet.f32 %4091, 3
  %4096 = call float @dx.op.dot4.f32(i32 56, float %4092, float %4093, float %4094, float %4095, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4097 = or i32 %4028, 32
  %4098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.ResRet.f32 %4098, 2
  %4102 = extractvalue %dx.types.ResRet.f32 %4098, 3
  %4103 = call float @dx.op.dot4.f32(i32 56, float %4099, float %4100, float %4101, float %4102, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4104 = call float @dx.op.unary.f32(i32 27, float %4089)  ; Round_ni(value)
  %4105 = call float @dx.op.unary.f32(i32 6, float %4104)  ; FAbs(value)
  %4106 = call float @dx.op.unary.f32(i32 27, float %4096)  ; Round_ni(value)
  %4107 = call float @dx.op.unary.f32(i32 6, float %4106)  ; FAbs(value)
  %4108 = call float @dx.op.unary.f32(i32 6, float %4103)  ; FAbs(value)
  %4109 = call float @dx.op.unary.f32(i32 27, float %4108)  ; Round_ni(value)
  %4110 = fadd fast float %4107, %4105
  %4111 = fadd fast float %4110, %4109
  %4112 = fcmp fast oeq float %4111, 0.000000e+00
  %4113 = call float @dx.op.dot4.f32(i32 56, float %4085, float %4086, float %4087, float %4088, float %3957, float %3958, float %3959, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4114 = call float @dx.op.dot4.f32(i32 56, float %4092, float %4093, float %4094, float %4095, float %3957, float %3958, float %3959, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4115 = call float @dx.op.dot4.f32(i32 56, float %4085, float %4086, float %4087, float %4088, float %3960, float %3961, float %3962, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4116 = call float @dx.op.dot4.f32(i32 56, float %4092, float %4093, float %4094, float %4095, float %3960, float %3961, float %3962, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4117 = fsub fast float %4113, %4089
  %4118 = fsub fast float %4115, %4089
  %4119 = fsub fast float %4114, %4096
  %4120 = fsub fast float %4116, %4096
  %4121 = call float @dx.op.dot3.f32(i32 55, float %4031, float %4032, float %4033, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 2
  %4124 = fadd fast float %4123, %4121
  %4125 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4127 = fcmp fast ogt float %4125, %4126
  %4128 = and i1 %4112, %4127
  %4129 = and i1 %4083, %4128
  br i1 %4129, label %4150, label %4130

; <label>:4130                                    ; preds = %4413, %4231, %4150, %4004
  %4131 = phi float [ %4006, %4150 ], [ %4234, %4231 ], [ %4234, %4413 ], [ %4006, %4004 ]
  %4132 = phi float [ %4007, %4150 ], [ %4007, %4231 ], [ %4388, %4413 ], [ %4007, %4004 ]
  %4133 = phi float [ %4008, %4150 ], [ %4008, %4231 ], [ %4386, %4413 ], [ %4008, %4004 ]
  %4134 = phi float [ %4009, %4150 ], [ %4009, %4231 ], [ %4358, %4413 ], [ %4009, %4004 ]
  %4135 = phi float [ %4010, %4150 ], [ %4010, %4231 ], [ %4356, %4413 ], [ %4010, %4004 ]
  %4136 = phi float [ %4011, %4150 ], [ %4011, %4231 ], [ %4423, %4413 ], [ %4011, %4004 ]
  %4137 = phi float [ %4012, %4150 ], [ %4012, %4231 ], [ %4424, %4413 ], [ %4012, %4004 ]
  %4138 = phi float [ %4013, %4150 ], [ %4013, %4231 ], [ %4425, %4413 ], [ %4013, %4004 ]
  %4139 = phi float [ %4014, %4150 ], [ %4014, %4231 ], [ %4337, %4413 ], [ %4014, %4004 ]
  %4140 = phi float [ %4015, %4150 ], [ %4015, %4231 ], [ %4338, %4413 ], [ %4015, %4004 ]
  %4141 = phi float [ %4016, %4150 ], [ %4016, %4231 ], [ %4339, %4413 ], [ %4016, %4004 ]
  %4142 = phi float [ %4017, %4150 ], [ %4017, %4231 ], [ %4366, %4413 ], [ %4017, %4004 ]
  %4143 = phi float [ %4018, %4150 ], [ %4018, %4231 ], [ %4363, %4413 ], [ %4018, %4004 ]
  %4144 = phi float [ %4019, %4150 ], [ %4019, %4231 ], [ %4360, %4413 ], [ %4019, %4004 ]
  %4145 = phi float [ %4020, %4150 ], [ %4020, %4231 ], [ %4354, %4413 ], [ %4020, %4004 ]
  %4146 = phi float [ %4021, %4150 ], [ %4021, %4231 ], [ %4349, %4413 ], [ %4021, %4004 ]
  %4147 = phi float [ %4022, %4150 ], [ %4022, %4231 ], [ %4350, %4413 ], [ %4022, %4004 ]
  %4148 = phi float [ %4023, %4150 ], [ %4023, %4231 ], [ %4351, %4413 ], [ %4023, %4004 ]
  %4149 = icmp eq i32 %4080, %4003
  br i1 %4149, label %4426, label %4004

; <label>:4150                                    ; preds = %4004
  %4151 = extractvalue %dx.types.ResRet.f32 %4050, 3
  %4152 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4153 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4040, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4156 = extractvalue %dx.types.ResRet.i32 %4036, 3
  %4157 = extractvalue %dx.types.ResRet.i32 %4036, 2
  %4158 = add i32 %4156, 0
  %4159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4158, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4161 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4159, %dx.types.Handle %4160, float %4089, float %4096, float undef, float undef, i32 0, i32 0, i32 undef, float %4117, float %4119, float undef, float %4118, float %4120, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = fmul fast float %4162, %4155
  %4164 = fadd fast float %4163, %4154
  %4165 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4166 = fmul fast float %4089, %4045
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4096, float %4166)  ; FMad(a,b,c)
  %4168 = fadd fast float %4167, %4153
  %4169 = fmul fast float %4089, %4047
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4096, float %4169)  ; FMad(a,b,c)
  %4171 = fadd fast float %4170, %4152
  %4172 = fmul fast float %4117, %4045
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4119, float %4172)  ; FMad(a,b,c)
  %4174 = fmul fast float %4117, %4047
  %4175 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4119, float %4174)  ; FMad(a,b,c)
  %4176 = fmul fast float %4118, %4045
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4046, float %4120, float %4176)  ; FMad(a,b,c)
  %4178 = fmul fast float %4118, %4047
  %4179 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4120, float %4178)  ; FMad(a,b,c)
  %4180 = add i32 %4157, 0
  %4181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4180, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4181, %dx.types.Handle %4160, float %4168, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4173, float %4175, float undef, float %4177, float %4179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = and i32 %4081, 1024
  %4185 = icmp ne i32 %4184, 0
  %4186 = fcmp fast ogt float %4183, 0x3FE0101020000000
  %4187 = uitofp i1 %4186 to float
  %4188 = select i1 %4185, float %4187, float %4183
  %4189 = and i32 %4081, 8192
  %4190 = icmp ne i32 %4189, 0
  %4191 = select i1 %4190, float %4151, float 1.000000e+00
  %4192 = fmul fast float %4089, 2.000000e+00
  %4193 = fadd fast float %4192, -1.000000e+00
  %4194 = call float @dx.op.unary.f32(i32 6, float %4193)  ; FAbs(value)
  %4195 = fmul fast float %4194, %4078
  %4196 = fsub fast float %4195, %4078
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = fmul fast float %4096, 2.000000e+00
  %4199 = fadd fast float %4198, -1.000000e+00
  %4200 = call float @dx.op.unary.f32(i32 6, float %4199)  ; FAbs(value)
  %4201 = fmul fast float %4200, %4079
  %4202 = fsub fast float %4201, %4079
  %4203 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4204 = fmul fast float %4108, %4041
  %4205 = fsub fast float %4204, %4041
  %4206 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  %4207 = fmul fast float %4165, %4191
  %4208 = fmul fast float %4207, %4162
  %4209 = fmul fast float %4208, %4197
  %4210 = fmul fast float %4209, %4188
  %4211 = fmul fast float %4210, %4203
  %4212 = fmul fast float %4211, %4206
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 1
  %4215 = extractvalue %dx.types.CBufRet.f32 %4213, 0
  %4216 = fsub fast float %4125, %4215
  %4217 = fmul fast float %4216, %4214
  %4218 = call float @dx.op.unary.f32(i32 7, float %4217)  ; Saturate(value)
  %4219 = fmul fast float %4212, %4042
  %4220 = fadd fast float %4212, %4042
  %4221 = fmul fast float %4220, %4051
  %4222 = fsub fast float %4221, %4051
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = and i32 %4081, 128
  %4225 = icmp ne i32 %4224, 0
  %4226 = select i1 %4225, float %4223, float %4219
  %4227 = fmul fast float %4226, %4218
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 0
  %4230 = fcmp fast ugt float %4227, %4229
  br i1 %4230, label %4231, label %4130

; <label>:4231                                    ; preds = %4150
  %4232 = select i1 %4190, float %4227, float 0.000000e+00
  %4233 = fadd fast float %4232, %4006
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  br i1 %4190, label %4130, label %4235

; <label>:4235                                    ; preds = %4231
  %4236 = and i32 %4081, 4
  %4237 = and i32 %4081, 8
  %4238 = add i32 %4037, 0
  %4239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4238, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4241 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4239, %dx.types.Handle %4240, float %4168, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4173, float %4175, float undef, float %4177, float %4179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 1
  %4244 = extractvalue %dx.types.ResRet.f32 %4241, 2
  %4245 = extractvalue %dx.types.ResRet.f32 %4241, 3
  %4246 = bitcast float %4063 to i32
  %4247 = and i32 %4246, 255
  %4248 = uitofp i32 %4247 to float
  %4249 = lshr i32 %4246, 8
  %4250 = and i32 %4249, 255
  %4251 = uitofp i32 %4250 to float
  %4252 = fmul fast float %4245, %4248
  %4253 = fadd fast float %4252, %4251
  %4254 = fmul fast float %4253, 0x3F70101000000000
  %4255 = add i32 %4038, 0
  %4256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4255, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4256, %dx.types.Handle %4240, float %4168, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4173, float %4175, float undef, float %4177, float %4179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.ResRet.f32 %4257, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4257, 2
  %4261 = extractvalue %dx.types.ResRet.f32 %4257, 3
  %4262 = bitcast float %4057 to i32
  %4263 = and i32 %4262, 255
  %4264 = uitofp i32 %4263 to float
  %4265 = lshr i32 %4262, 8
  %4266 = and i32 %4265, 255
  %4267 = uitofp i32 %4266 to float
  %4268 = lshr i32 %4262, 16
  %4269 = and i32 %4268, 255
  %4270 = uitofp i32 %4269 to float
  %4271 = fmul fast float %4270, 0x3F70101000000000
  %4272 = fmul fast float %4258, %4264
  %4273 = fadd fast float %4272, %4267
  %4274 = fmul fast float %4273, 0x3F70101000000000
  %4275 = fadd fast float %4259, -5.000000e-01
  %4276 = fadd fast float %4261, -5.000000e-01
  %4277 = fmul fast float %4275, %4271
  %4278 = fmul fast float %4276, %4271
  %4279 = fadd fast float %4277, 5.000000e-01
  %4280 = fadd fast float %4278, 5.000000e-01
  %4281 = fmul fast float %4242, %4066
  %4282 = fmul fast float %4243, %4067
  %4283 = fmul fast float %4244, %4068
  %4284 = fmul fast float %4279, 2.000000e+00
  %4285 = fadd fast float %4284, -1.000000e+00
  %4286 = fmul fast float %4280, 2.000000e+00
  %4287 = fadd fast float %4286, -1.000000e+00
  %4288 = fadd fast float %4285, %4287
  %4289 = fmul fast float %4288, 5.000000e-01
  %4290 = fsub fast float %4285, %4287
  %4291 = fmul fast float %4290, 5.000000e-01
  %4292 = call float @dx.op.unary.f32(i32 6, float %4289)  ; FAbs(value)
  %4293 = fsub fast float 1.000000e+00, %4292
  %4294 = call float @dx.op.unary.f32(i32 6, float %4291)  ; FAbs(value)
  %4295 = fsub fast float %4293, %4294
  %4296 = call float @dx.op.dot3.f32(i32 55, float %4289, float %4291, float %4295, float %4289, float %4291, float %4295)  ; Dot3(ax,ay,az,bx,by,bz)
  %4297 = call float @dx.op.unary.f32(i32 25, float %4296)  ; Rsqrt(value)
  %4298 = fmul fast float %4289, %4297
  %4299 = fmul fast float %4291, %4297
  %4300 = fmul fast float %4297, %4295
  %4301 = fmul fast float %4300, %4031
  %4302 = fmul fast float %4300, %4032
  %4303 = fmul fast float %4300, %4033
  %4304 = fmul fast float %4298, %4054
  %4305 = fmul fast float %4298, %4055
  %4306 = fmul fast float %4298, %4056
  %4307 = fadd fast float %4304, %4301
  %4308 = fadd fast float %4305, %4302
  %4309 = fadd fast float %4306, %4303
  %4310 = fmul fast float %4299, %4060
  %4311 = fmul fast float %4299, %4061
  %4312 = fmul fast float %4299, %4062
  %4313 = fadd fast float %4307, %4310
  %4314 = fadd fast float %4308, %4311
  %4315 = fadd fast float %4309, %4312
  %4316 = call float @dx.op.dot3.f32(i32 55, float %4313, float %4314, float %4315, float %4313, float %4314, float %4315)  ; Dot3(ax,ay,az,bx,by,bz)
  %4317 = call float @dx.op.unary.f32(i32 25, float %4316)  ; Rsqrt(value)
  %4318 = fmul fast float %4313, %4317
  %4319 = fmul fast float %4314, %4317
  %4320 = fmul fast float %4315, %4317
  %4321 = icmp ne i32 %4237, 0
  %4322 = select i1 %4321, float 1.000000e+00, float 0.000000e+00
  %4323 = fmul fast float %4227, %4322
  %4324 = and i32 %4081, 1
  %4325 = icmp eq i32 %4324, 0
  br i1 %4325, label %4326, label %4330

; <label>:4326                                    ; preds = %4235
  %4327 = fsub fast float %4318, %4014
  %4328 = fsub fast float %4319, %4015
  %4329 = fsub fast float %4320, %4016
  br label %4330

; <label>:4330                                    ; preds = %4326, %4235
  %4331 = phi float [ %4327, %4326 ], [ %4318, %4235 ]
  %4332 = phi float [ %4328, %4326 ], [ %4319, %4235 ]
  %4333 = phi float [ %4329, %4326 ], [ %4320, %4235 ]
  %4334 = fmul float %4333, %4323
  %4335 = fmul float %4332, %4323
  %4336 = fmul float %4331, %4323
  %4337 = fadd fast float %4336, %4014
  %4338 = fadd fast float %4335, %4015
  %4339 = fadd fast float %4334, %4016
  %4340 = icmp ne i32 %4236, 0
  %4341 = select i1 %4340, float 1.000000e+00, float 0.000000e+00
  %4342 = fmul fast float %4227, %4341
  %4343 = fsub fast float %4281, %4021
  %4344 = fsub fast float %4282, %4022
  %4345 = fsub fast float %4283, %4023
  %4346 = fmul fast float %4343, %4342
  %4347 = fmul fast float %4344, %4342
  %4348 = fmul fast float %4345, %4342
  %4349 = fadd fast float %4346, %4021
  %4350 = fadd fast float %4347, %4022
  %4351 = fadd fast float %4348, %4023
  %4352 = fsub fast float %4254, %4020
  %4353 = fmul fast float %4352, %4342
  %4354 = fadd fast float %4353, %4020
  %4355 = fmul fast float %4342, %4010
  %4356 = fsub fast float %4010, %4355
  %4357 = fmul fast float %4342, %4009
  %4358 = fsub fast float %4009, %4357
  %4359 = fadd fast float %4227, %4019
  %4360 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4361 = fsub fast float %4274, %4018
  %4362 = fmul fast float %4361, %4323
  %4363 = fadd fast float %4362, %4018
  %4364 = fsub fast float %4260, %4017
  %4365 = fmul fast float %4364, %4323
  %4366 = fadd fast float %4365, %4017
  %4367 = call float @dx.op.dot3.f32(i32 55, float %4281, float %4282, float %4283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4371 = fmul fast float %4370, %4367
  %4372 = fadd fast float %4371, %4369
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = bitcast float %4069 to i32
  %4375 = and i32 %4374, 65535
  %4376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4375)  ; LegacyF16ToF32(value)
  %4377 = lshr i32 %4374, 16
  %4378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4377)  ; LegacyF16ToF32(value)
  %4379 = fcmp fast oge float %4376, 0.000000e+00
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = select i1 %4379, float %4376, float %4381
  %4383 = fadd fast float %4382, %4378
  %4384 = fsub fast float %4373, %4008
  %4385 = fmul fast float %4384, %4227
  %4386 = fadd fast float %4385, %4008
  %4387 = fmul fast float %4383, %4227
  %4388 = call float @dx.op.binary.f32(i32 35, float %4007, float %4387)  ; FMax(a,b)
  %4389 = and i32 %4081, 16
  %4390 = icmp eq i32 %4389, 0
  br i1 %4390, label %4413, label %4391

; <label>:4391                                    ; preds = %4330
  %4392 = bitcast float %4075 to i32
  %4393 = add i32 %4072, 0
  %4394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4393, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4394, %dx.types.Handle %4240, float %4168, float %4171, float undef, float undef, i32 0, i32 0, i32 undef, float %4173, float %4175, float undef, float %4177, float %4179, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = and i32 %4392, 65535
  %4400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4399)  ; LegacyF16ToF32(value)
  %4401 = fmul fast float %4396, %4066
  %4402 = fmul fast float %4397, %4067
  %4403 = fmul fast float %4398, %4068
  %4404 = and i32 %4081, 16384
  %4405 = icmp ne i32 %4404, 0
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 0
  %4408 = select i1 %4405, float %4407, float 1.000000e+00
  %4409 = fmul fast float %4408, %4400
  %4410 = fmul fast float %4401, %4409
  %4411 = fmul fast float %4402, %4409
  %4412 = fmul fast float %4403, %4409
  br label %4413

; <label>:4413                                    ; preds = %4391, %4330
  %4414 = phi float [ %4410, %4391 ], [ 0.000000e+00, %4330 ]
  %4415 = phi float [ %4411, %4391 ], [ 0.000000e+00, %4330 ]
  %4416 = phi float [ %4412, %4391 ], [ 0.000000e+00, %4330 ]
  %4417 = fsub fast float %4414, %4011
  %4418 = fsub fast float %4415, %4012
  %4419 = fsub fast float %4416, %4013
  %4420 = fmul fast float %4417, %4227
  %4421 = fmul fast float %4418, %4227
  %4422 = fmul fast float %4419, %4227
  %4423 = fadd fast float %4420, %4011
  %4424 = fadd fast float %4421, %4012
  %4425 = fadd fast float %4422, %4013
  br label %4130

; <label>:4426                                    ; preds = %4130
  br label %4427

; <label>:4427                                    ; preds = %4426, %3950
  %4428 = phi float [ 0.000000e+00, %3950 ], [ %4131, %4426 ]
  %4429 = phi float [ %3919, %3950 ], [ %4132, %4426 ]
  %4430 = phi float [ %3917, %3950 ], [ %4133, %4426 ]
  %4431 = phi float [ %3916, %3950 ], [ %4134, %4426 ]
  %4432 = phi float [ 0.000000e+00, %3950 ], [ %4135, %4426 ]
  %4433 = phi float [ %3910, %3950 ], [ %4136, %4426 ]
  %4434 = phi float [ %3911, %3950 ], [ %4137, %4426 ]
  %4435 = phi float [ %3912, %3950 ], [ %4138, %4426 ]
  %4436 = phi float [ %3945, %3950 ], [ %4139, %4426 ]
  %4437 = phi float [ %3946, %3950 ], [ %4140, %4426 ]
  %4438 = phi float [ %3947, %3950 ], [ %4141, %4426 ]
  %4439 = phi float [ %3915, %3950 ], [ %4142, %4426 ]
  %4440 = phi float [ %3914, %3950 ], [ %4143, %4426 ]
  %4441 = phi float [ 0.000000e+00, %3950 ], [ %4144, %4426 ]
  %4442 = phi float [ %3913, %3950 ], [ %4145, %4426 ]
  %4443 = phi float [ %3907, %3950 ], [ %4146, %4426 ]
  %4444 = phi float [ %3908, %3950 ], [ %4147, %4426 ]
  %4445 = phi float [ %3909, %3950 ], [ %4148, %4426 ]
  %4446 = call float @dx.op.dot3.f32(i32 55, float %4436, float %4437, float %4438, float %4436, float %4437, float %4438)  ; Dot3(ax,ay,az,bx,by,bz)
  %4447 = call float @dx.op.unary.f32(i32 25, float %4446)  ; Rsqrt(value)
  %4448 = fmul fast float %4447, %4436
  %4449 = fmul fast float %4447, %4437
  %4450 = fmul fast float %4447, %4438
  %4451 = fadd fast float %4441, %934
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4449, float %4450, float %4448, float %4449, float %4450)  ; Dot3(ax,ay,az,bx,by,bz)
  %4454 = call float @dx.op.unary.f32(i32 25, float %4453)  ; Rsqrt(value)
  %4455 = fmul fast float %4454, %4448
  %4456 = fmul fast float %4454, %4449
  %4457 = fmul fast float %4454, %4450
  br label %4458

; <label>:4458                                    ; preds = %4427, %3904
  %4459 = phi float [ %4455, %4427 ], [ %3945, %3904 ]
  %4460 = phi float [ %4456, %4427 ], [ %3946, %3904 ]
  %4461 = phi float [ %4457, %4427 ], [ %3947, %3904 ]
  %4462 = phi float [ %4443, %4427 ], [ %3907, %3904 ]
  %4463 = phi float [ %4444, %4427 ], [ %3908, %3904 ]
  %4464 = phi float [ %4445, %4427 ], [ %3909, %3904 ]
  %4465 = phi float [ %4433, %4427 ], [ %3910, %3904 ]
  %4466 = phi float [ %4434, %4427 ], [ %3911, %3904 ]
  %4467 = phi float [ %4435, %4427 ], [ %3912, %3904 ]
  %4468 = phi float [ %4442, %4427 ], [ %3913, %3904 ]
  %4469 = phi float [ %4452, %4427 ], [ %934, %3904 ]
  %4470 = phi float [ %4440, %4427 ], [ %3914, %3904 ]
  %4471 = phi float [ %4439, %4427 ], [ %3915, %3904 ]
  %4472 = phi float [ %4432, %4427 ], [ 0.000000e+00, %3904 ]
  %4473 = phi float [ %4431, %4427 ], [ %3916, %3904 ]
  %4474 = phi float [ %4428, %4427 ], [ 0.000000e+00, %3904 ]
  %4475 = phi float [ %4429, %4427 ], [ %3919, %3904 ]
  %4476 = phi float [ %4430, %4427 ], [ %3917, %3904 ]
  %4477 = fadd fast float %4468, 0xBFB99999A0000000
  %4478 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4479 = fmul fast float %4478, 0x3FF1C71C80000000
  %4480 = call float @dx.op.binary.f32(i32 36, float %4468, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4481 = fsub fast float 1.000000e+00, %4479
  %4482 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4483 = fmul fast float %4482, %4462
  %4484 = fmul fast float %4482, %4463
  %4485 = fmul fast float %4482, %4464
  %4486 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4489 = fmul fast float %4479, %4462
  %4490 = fmul fast float %4479, %4463
  %4491 = fmul fast float %4479, %4464
  %4492 = fadd fast float %4489, %4480
  %4493 = fadd fast float %4490, %4480
  %4494 = fadd fast float %4491, %4480
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4497 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4499 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.i32 %4499, 3
  %4501 = and i32 %4500, 8
  %4502 = icmp ne i32 %4501, 0
  %4503 = call float @dx.op.binary.f32(i32 35, float %4486, float %4462)  ; FMax(a,b)
  %4504 = call float @dx.op.binary.f32(i32 35, float %4487, float %4462)  ; FMax(a,b)
  %4505 = call float @dx.op.binary.f32(i32 35, float %4488, float %4462)  ; FMax(a,b)
  %4506 = call float @dx.op.dot3.f32(i32 55, float %4486, float %4487, float %4488, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4507 = select i1 %186, float %4462, float %4486
  %4508 = select i1 %186, float %4506, float %4487
  %4509 = select i1 %186, float 1.000000e+00, float %4488
  %4510 = select i1 %4502, float %4503, float %4507
  %4511 = select i1 %4502, float %4504, float %4508
  %4512 = select i1 %4502, float %4505, float %4509
  %4513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4514 = extractvalue %dx.types.CBufRet.f32 %4513, 0
  %4515 = extractvalue %dx.types.CBufRet.f32 %4513, 1
  %4516 = extractvalue %dx.types.CBufRet.f32 %4513, 2
  %4517 = fadd fast float %4514, %144
  %4518 = fadd fast float %4515, %145
  %4519 = fadd fast float %4516, %146
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 0
  %4522 = extractvalue %dx.types.CBufRet.f32 %4520, 1
  %4523 = fsub fast float %4517, %4521
  %4524 = fsub fast float %4518, %4522
  %4525 = fmul fast float %4523, %4523
  %4526 = fmul fast float %4524, %4524
  %4527 = fadd fast float %4525, %4526
  %4528 = call float @dx.op.unary.f32(i32 24, float %4527)  ; Sqrt(value)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4520, 2
  %4530 = fcmp fast olt float %4528, %4529
  br i1 %4530, label %4531, label %4598

; <label>:4531                                    ; preds = %4458
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 0
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.CBufRet.f32 %4532, 1
  %4539 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4540 = extractvalue %dx.types.CBufRet.f32 %4536, 1
  %4541 = extractvalue %dx.types.CBufRet.f32 %4532, 3
  %4542 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4543 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4544 = fadd fast float %4541, %4517
  %4545 = fadd fast float %4542, %4518
  %4546 = fadd fast float %4543, %4519
  %4547 = fmul fast float %4544, %4533
  %4548 = call float @dx.op.tertiary.f32(i32 46, float %4545, float %4535, float %4547)  ; FMad(a,b,c)
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4537, float %4548)  ; FMad(a,b,c)
  %4550 = fmul fast float %4544, %4538
  %4551 = call float @dx.op.tertiary.f32(i32 46, float %4545, float %4539, float %4550)  ; FMad(a,b,c)
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4546, float %4540, float %4551)  ; FMad(a,b,c)
  %4553 = fsub fast float %4549, %4541
  %4554 = fsub fast float %4552, %4542
  %4555 = fsub fast float %4553, %4521
  %4556 = fadd fast float %4555, %4529
  %4557 = fsub fast float %4554, %4522
  %4558 = fadd fast float %4557, %4529
  %4559 = extractvalue %dx.types.CBufRet.f32 %4520, 3
  %4560 = fmul fast float %4556, %4559
  %4561 = fmul fast float %4558, %4559
  %4562 = call float @dx.op.unary.f32(i32 7, float %4560)  ; Saturate(value)
  %4563 = call float @dx.op.unary.f32(i32 7, float %4561)  ; Saturate(value)
  %4564 = fsub fast float 1.000000e+00, %4562
  %4565 = fsub fast float 1.000000e+00, %4563
  %4566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4564, float %4565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = fcmp fast ugt float %4567, 0.000000e+00
  br i1 %4568, label %4569, label %4872

; <label>:4569                                    ; preds = %4531
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 2
  %4572 = fmul fast float %4571, %4567
  %4573 = extractvalue %dx.types.CBufRet.f32 %4570, 3
  %4574 = fadd fast float %4573, %4572
  %4575 = extractvalue %dx.types.CBufRet.f32 %4536, 2
  %4576 = fadd fast float %4574, %4543
  %4577 = fmul fast float %4549, %4537
  %4578 = call float @dx.op.tertiary.f32(i32 46, float %4552, float %4540, float %4577)  ; FMad(a,b,c)
  %4579 = call float @dx.op.tertiary.f32(i32 46, float %4576, float %4575, float %4578)  ; FMad(a,b,c)
  %4580 = fsub fast float %4579, %4543
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4583 = fsub fast float %4580, %4582
  %4584 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4564, float %4565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4564, float %4565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = fadd fast float %4589, %4585
  %4593 = fmul fast float %4592, 0x3F847AE140000000
  %4594 = fadd fast float %4590, %4586
  %4595 = fmul fast float %4594, 0x3F847AE140000000
  %4596 = fadd fast float %4591, %4587
  %4597 = fmul fast float %4596, 0x3F847AE140000000
  br label %4872

; <label>:4598                                    ; preds = %4458
  %4599 = and i32 %162, 1
  %4600 = icmp eq i32 %4599, 0
  br i1 %4600, label %4872, label %4601

; <label>:4601                                    ; preds = %4598
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 0
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 0
  %4606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.f32 %4606, 0
  %4608 = extractvalue %dx.types.CBufRet.f32 %4602, 1
  %4609 = extractvalue %dx.types.CBufRet.f32 %4604, 1
  %4610 = extractvalue %dx.types.CBufRet.f32 %4606, 1
  %4611 = extractvalue %dx.types.CBufRet.f32 %4602, 3
  %4612 = extractvalue %dx.types.CBufRet.f32 %4604, 3
  %4613 = extractvalue %dx.types.CBufRet.f32 %4606, 3
  %4614 = fadd fast float %4611, %4517
  %4615 = fadd fast float %4612, %4518
  %4616 = fadd fast float %4613, %4519
  %4617 = fmul fast float %4614, %4603
  %4618 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4605, float %4617)  ; FMad(a,b,c)
  %4619 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4607, float %4618)  ; FMad(a,b,c)
  %4620 = fmul fast float %4614, %4608
  %4621 = call float @dx.op.tertiary.f32(i32 46, float %4615, float %4609, float %4620)  ; FMad(a,b,c)
  %4622 = call float @dx.op.tertiary.f32(i32 46, float %4616, float %4610, float %4621)  ; FMad(a,b,c)
  %4623 = fsub fast float %4619, %4611
  %4624 = fsub fast float %4622, %4612
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4629 = extractvalue %dx.types.CBufRet.f32 %4625, 3
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 3
  %4632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.i32 %4632, 0
  %4634 = extractvalue %dx.types.CBufRet.i32 %4632, 1
  %4635 = udiv i32 %4634, %4633
  %4636 = fsub fast float %4623, %4626
  %4637 = fsub fast float %4624, %4627
  %4638 = call float @dx.op.binary.f32(i32 35, float %4636, float 0.000000e+00)  ; FMax(a,b)
  %4639 = call float @dx.op.binary.f32(i32 35, float %4637, float 0.000000e+00)  ; FMax(a,b)
  %4640 = call float @dx.op.binary.f32(i32 36, float %4638, float %4628)  ; FMin(a,b)
  %4641 = call float @dx.op.binary.f32(i32 36, float %4639, float %4629)  ; FMin(a,b)
  %4642 = add i32 %4633, -1
  %4643 = add i32 %4635, -1
  %4644 = fmul fast float %4640, %4631
  %4645 = fmul fast float %4641, %4631
  %4646 = fptoui float %4644 to i32
  %4647 = fptoui float %4645 to i32
  %4648 = call i32 @dx.op.binary.i32(i32 40, i32 %4646, i32 %4642)  ; UMin(a,b)
  %4649 = call i32 @dx.op.binary.i32(i32 40, i32 %4647, i32 %4643)  ; UMin(a,b)
  %4650 = mul i32 %4649, %4633
  %4651 = add i32 %4650, %4648
  %4652 = shl i32 %4651, 2
  %4653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4652, i32 undef)  ; BufferLoad(srv,index,wot)
  %4654 = extractvalue %dx.types.ResRet.i32 %4653, 0
  %4655 = icmp eq i32 %4654, -1
  br i1 %4655, label %4872, label %4656

; <label>:4656                                    ; preds = %4601
  %4657 = mul i32 %4654, 148
  %4658 = add i32 %4657, 4
  %4659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4658, i32 undef)  ; BufferLoad(srv,index,wot)
  %4660 = extractvalue %dx.types.ResRet.f32 %4659, 0
  %4661 = add i32 %4657, 8
  %4662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4661, i32 undef)  ; BufferLoad(srv,index,wot)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = add i32 %4657, 36
  %4665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4664, i32 undef)  ; BufferLoad(srv,index,wot)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = add i32 %4657, 60
  %4668 = add i32 %4657, 92
  %4669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.i32 %4669, 0
  %4671 = add i32 %4657, 116
  %4672 = fsub fast float %4623, %4660
  %4673 = fsub fast float %4624, %4663
  %4674 = fmul fast float %4631, %4672
  %4675 = fmul fast float %4631, %4673
  %4676 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4675)  ; Saturate(value)
  %4678 = fsub fast float 1.000000e+00, %4677
  %4679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4680 = extractvalue %dx.types.CBufRet.f32 %4679, 2
  %4681 = call float @dx.op.unary.f32(i32 83, float %4676)  ; DerivCoarseX(value)
  %4682 = call float @dx.op.unary.f32(i32 83, float %4678)  ; DerivCoarseX(value)
  %4683 = call float @dx.op.unary.f32(i32 84, float %4676)  ; DerivCoarseY(value)
  %4684 = call float @dx.op.unary.f32(i32 84, float %4678)  ; DerivCoarseY(value)
  %4685 = fmul fast float %4681, %4680
  %4686 = fmul fast float %4682, %4680
  %4687 = fmul fast float %4683, %4680
  %4688 = fmul fast float %4684, %4680
  %4689 = call float @dx.op.dot2.f32(i32 54, float %4687, float %4688, float %4687, float %4688)  ; Dot2(ax,ay,bx,by)
  %4690 = call float @dx.op.dot2.f32(i32 54, float %4685, float %4686, float %4685, float %4686)  ; Dot2(ax,ay,bx,by)
  %4691 = call float @dx.op.binary.f32(i32 35, float %4690, float %4689)  ; FMax(a,b)
  %4692 = call float @dx.op.unary.f32(i32 23, float %4691)  ; Log(value)
  %4693 = fmul fast float %4692, 5.000000e-01
  %4694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4695 = extractvalue %dx.types.CBufRet.f32 %4694, 1
  %4696 = fadd fast float %4695, %4693
  %4697 = call float @dx.op.binary.f32(i32 35, float %4696, float 0.000000e+00)  ; FMax(a,b)
  %4698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4699 = extractvalue %dx.types.CBufRet.f32 %4698, 3
  %4700 = fadd fast float %4699, %4697
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4703 = fadd fast float %4700, %4702
  %4704 = add i32 %4670, 0
  %4705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4704, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4706 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4705, i32 0)  ; GetDimensions(handle,mipLevel)
  %4707 = extractvalue %dx.types.Dimensions %4706, 0
  %4708 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4707)  ; FirstbitLo(value)
  %4709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.i32 %4709, 1
  %4711 = sub nsw i32 %4710, %4708
  %4712 = sitofp i32 %4711 to float
  %4713 = fsub fast float %4703, %4712
  %4714 = call float @dx.op.binary.f32(i32 35, float %4713, float 0.000000e+00)  ; FMax(a,b)
  %4715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4705, %dx.types.Handle %37, float %4676, float %4678, float %4666, float undef, i32 0, i32 0, i32 undef, float %4714)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4716 = extractvalue %dx.types.ResRet.f32 %4715, 0
  %4717 = fcmp ule float %4716, 0x3FE0101020000000
  %4718 = extractvalue %dx.types.CBufRet.i32 %4709, 0
  %4719 = and i32 %4718, 128
  %4720 = icmp ne i32 %4719, 0
  %4721 = and i1 %4717, %4720
  br i1 %4721, label %4872, label %4722

; <label>:4722                                    ; preds = %4656
  %4723 = add i32 %4657, 20
  %4724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4723, i32 undef)  ; BufferLoad(srv,index,wot)
  %4725 = extractvalue %dx.types.ResRet.f32 %4724, 0
  %4726 = add i32 %4657, 24
  %4727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4726, i32 undef)  ; BufferLoad(srv,index,wot)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = add i32 %4657, 40
  %4730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4729, i32 undef)  ; BufferLoad(srv,index,wot)
  %4731 = extractvalue %dx.types.ResRet.f32 %4730, 0
  %4732 = add i32 %4657, 96
  %4733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4732, i32 undef)  ; BufferLoad(srv,index,wot)
  %4734 = extractvalue %dx.types.ResRet.i32 %4733, 0
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 2
  %4737 = fmul fast float %4736, %4676
  %4738 = fmul fast float %4736, %4678
  %4739 = extractvalue %dx.types.CBufRet.f32 %4735, 3
  %4740 = fadd fast float %4737, %4739
  %4741 = fadd fast float %4738, %4739
  %4742 = add i32 %4734, 0
  %4743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4742, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4744 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4743, i32 0)  ; GetDimensions(handle,mipLevel)
  %4745 = extractvalue %dx.types.Dimensions %4744, 0
  %4746 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4745)  ; FirstbitLo(value)
  %4747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.i32 %4747, 1
  %4749 = sub nsw i32 %4748, %4746
  %4750 = sitofp i32 %4749 to float
  %4751 = fsub fast float %4700, %4750
  %4752 = call float @dx.op.binary.f32(i32 35, float %4751, float 0.000000e+00)  ; FMax(a,b)
  %4753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4743, %dx.types.Handle %37, float %4740, float %4741, float %4731, float undef, i32 0, i32 0, i32 undef, float %4752)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = fmul fast float %4754, %4725
  %4756 = fadd fast float %4755, %4728
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4762 = extractvalue %dx.types.CBufRet.f32 %4761, 3
  %4763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4764 = extractvalue %dx.types.CBufRet.f32 %4763, 3
  %4765 = extractvalue %dx.types.CBufRet.f32 %4757, 3
  %4766 = fadd fast float %4762, %4623
  %4767 = fadd fast float %4764, %4624
  %4768 = fadd fast float %4756, %4765
  %4769 = fmul fast float %4766, %4758
  %4770 = call float @dx.op.tertiary.f32(i32 46, float %4767, float %4759, float %4769)  ; FMad(a,b,c)
  %4771 = call float @dx.op.tertiary.f32(i32 46, float %4768, float %4760, float %4770)  ; FMad(a,b,c)
  %4772 = fsub fast float %4771, %4765
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4775 = fsub fast float %4772, %4774
  %4776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.i32 %4776, 0
  %4778 = call i32 @dx.op.binary.i32(i32 40, i32 %4654, i32 %4777)  ; UMin(a,b)
  %4779 = mul i32 %4778, 36
  %4780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4779, i32 undef)  ; BufferLoad(srv,index,wot)
  %4781 = extractvalue %dx.types.ResRet.i32 %4780, 0
  %4782 = add i32 %4779, 4
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = fmul fast float %4784, %4676
  %4786 = fmul fast float %4784, %4678
  %4787 = extractvalue %dx.types.CBufRet.f32 %4783, 1
  %4788 = fadd fast float %4785, %4787
  %4789 = fadd fast float %4786, %4787
  %4790 = icmp eq i32 %4781, 0
  br i1 %4790, label %4859, label %4791

; <label>:4791                                    ; preds = %4722
  br label %4792

; <label>:4792                                    ; preds = %4849, %4791
  %4793 = phi float [ %4850, %4849 ], [ 0.000000e+00, %4791 ]
  %4794 = phi float [ %4851, %4849 ], [ 0.000000e+00, %4791 ]
  %4795 = phi float [ %4852, %4849 ], [ 0.000000e+00, %4791 ]
  %4796 = phi float [ %4853, %4849 ], [ 0.000000e+00, %4791 ]
  %4797 = phi float [ %4854, %4849 ], [ 0.000000e+00, %4791 ]
  %4798 = phi float [ %4855, %4849 ], [ 0.000000e+00, %4791 ]
  %4799 = phi i32 [ %4856, %4849 ], [ 0, %4791 ]
  %4800 = shl i32 %4799, 2
  %4801 = add i32 %4667, %4800
  %4802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4801, i32 undef)  ; BufferLoad(srv,index,wot)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = add i32 %4671, %4800
  %4805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4804, i32 undef)  ; BufferLoad(srv,index,wot)
  %4806 = extractvalue %dx.types.ResRet.i32 %4805, 0
  %4807 = add i32 %4806, 0
  %4808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4809 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4808, i32 0)  ; GetDimensions(handle,mipLevel)
  %4810 = extractvalue %dx.types.Dimensions %4809, 0
  %4811 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4810)  ; FirstbitLo(value)
  %4812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.i32 %4812, 1
  %4814 = sub nsw i32 %4813, %4811
  %4815 = sitofp i32 %4814 to float
  %4816 = fsub fast float %4700, %4815
  %4817 = call float @dx.op.binary.f32(i32 35, float %4816, float 0.000000e+00)  ; FMax(a,b)
  %4818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4808, %dx.types.Handle %37, float %4788, float %4789, float %4803, float undef, i32 0, i32 0, i32 undef, float %4817)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4819 = extractvalue %dx.types.ResRet.f32 %4818, 0
  %4820 = fcmp fast ogt float %4819, 0.000000e+00
  br i1 %4820, label %4821, label %4849

; <label>:4821                                    ; preds = %4792
  %4822 = add i32 %4782, %4800
  %4823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4822, i32 undef)  ; BufferLoad(srv,index,wot)
  %4824 = extractvalue %dx.types.ResRet.i32 %4823, 0
  %4825 = and i32 %4824, 32767
  %4826 = mul nuw nsw i32 %4825, 928
  %4827 = add nuw nsw i32 %4826, 48
  %4828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4827, i32 undef)  ; BufferLoad(srv,index,wot)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = extractvalue %dx.types.ResRet.f32 %4828, 1
  %4831 = extractvalue %dx.types.ResRet.f32 %4828, 2
  %4832 = add nuw nsw i32 %4826, 60
  %4833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4832, i32 undef)  ; BufferLoad(srv,index,wot)
  %4834 = extractvalue %dx.types.ResRet.f32 %4833, 0
  %4835 = extractvalue %dx.types.ResRet.f32 %4833, 1
  %4836 = extractvalue %dx.types.ResRet.f32 %4833, 2
  %4837 = fmul fast float %4829, %4819
  %4838 = fmul fast float %4830, %4819
  %4839 = fmul fast float %4831, %4819
  %4840 = fadd fast float %4837, %4793
  %4841 = fadd fast float %4838, %4794
  %4842 = fadd fast float %4839, %4795
  %4843 = fmul fast float %4834, %4819
  %4844 = fmul fast float %4835, %4819
  %4845 = fmul fast float %4836, %4819
  %4846 = fadd fast float %4843, %4796
  %4847 = fadd fast float %4844, %4797
  %4848 = fadd fast float %4845, %4798
  br label %4849

; <label>:4849                                    ; preds = %4821, %4792
  %4850 = phi float [ %4840, %4821 ], [ %4793, %4792 ]
  %4851 = phi float [ %4841, %4821 ], [ %4794, %4792 ]
  %4852 = phi float [ %4842, %4821 ], [ %4795, %4792 ]
  %4853 = phi float [ %4846, %4821 ], [ %4796, %4792 ]
  %4854 = phi float [ %4847, %4821 ], [ %4797, %4792 ]
  %4855 = phi float [ %4848, %4821 ], [ %4798, %4792 ]
  %4856 = add nuw i32 %4799, 1
  %4857 = icmp eq i32 %4856, %4781
  br i1 %4857, label %4858, label %4792

; <label>:4858                                    ; preds = %4849
  br label %4859

; <label>:4859                                    ; preds = %4858, %4722
  %4860 = phi float [ 0.000000e+00, %4722 ], [ %4850, %4858 ]
  %4861 = phi float [ 0.000000e+00, %4722 ], [ %4851, %4858 ]
  %4862 = phi float [ 0.000000e+00, %4722 ], [ %4852, %4858 ]
  %4863 = phi float [ 0.000000e+00, %4722 ], [ %4853, %4858 ]
  %4864 = phi float [ 0.000000e+00, %4722 ], [ %4854, %4858 ]
  %4865 = phi float [ 0.000000e+00, %4722 ], [ %4855, %4858 ]
  %4866 = fadd fast float %4863, %4860
  %4867 = fmul fast float %4866, 0x3F847AE140000000
  %4868 = fadd fast float %4864, %4861
  %4869 = fmul fast float %4868, 0x3F847AE140000000
  %4870 = fadd fast float %4865, %4862
  %4871 = fmul fast float %4870, 0x3F847AE140000000
  br label %4872

; <label>:4872                                    ; preds = %4859, %4656, %4601, %4598, %4569, %4531
  %4873 = phi float [ %4583, %4569 ], [ -1.310720e+05, %4531 ], [ %4775, %4859 ], [ -1.310720e+05, %4601 ], [ -1.310720e+05, %4656 ], [ -1.310720e+05, %4598 ]
  %4874 = phi float [ %4593, %4569 ], [ 0.000000e+00, %4531 ], [ %4867, %4859 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4656 ], [ 0.000000e+00, %4598 ]
  %4875 = phi float [ %4595, %4569 ], [ 0.000000e+00, %4531 ], [ %4869, %4859 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4656 ], [ 0.000000e+00, %4598 ]
  %4876 = phi float [ %4597, %4569 ], [ 0.000000e+00, %4531 ], [ %4871, %4859 ], [ 0.000000e+00, %4601 ], [ 0.000000e+00, %4656 ], [ 0.000000e+00, %4598 ]
  %4877 = phi i1 [ true, %4569 ], [ false, %4531 ], [ true, %4859 ], [ false, %4601 ], [ false, %4656 ], [ false, %4598 ]
  %4878 = and i32 %162, 3
  %4879 = icmp eq i32 %4878, 1
  %4880 = select i1 %4879, float 1.000000e+00, float 0.000000e+00
  %4881 = fsub fast float %4873, %146
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = select i1 %4877, float %4882, float 1.000000e+00
  %4884 = fmul fast float %4883, %4880
  %4885 = icmp eq i32 %4878, 3
  %4886 = select i1 %4885, float 1.000000e+00, float %4884
  %4887 = call float @dx.op.binary.f32(i32 35, float %4474, float %4886)  ; FMax(a,b)
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = fcmp fast une float %4888, 0.000000e+00
  %4890 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = call float @dx.op.unary.f32(i32 25, float %4890)  ; Rsqrt(value)
  br i1 %4889, label %4899, label %4892

; <label>:4892                                    ; preds = %4872
  %4893 = fmul fast float %4891, %144
  %4894 = fmul fast float %4891, %145
  %4895 = fmul fast float %4891, %146
  %4896 = fsub fast float -0.000000e+00, %4893
  %4897 = fsub fast float -0.000000e+00, %4894
  %4898 = fsub fast float -0.000000e+00, %4895
  br label %5067

; <label>:4899                                    ; preds = %4872
  %4900 = fmul fast float %144, %4891
  %4901 = fsub fast float -0.000000e+00, %4900
  %4902 = fmul fast float %145, %4891
  %4903 = fsub fast float -0.000000e+00, %4902
  %4904 = fmul fast float %146, %4891
  %4905 = fsub fast float -0.000000e+00, %4904
  %4906 = call float @dx.op.dot3.f32(i32 55, float %4901, float %4903, float %4905, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4907 = fmul fast float %4888, 2.500000e+00
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4888, 0x4013FFFFE0000000
  %4910 = fadd fast float %4909, 0xBFFFFFFFE0000000
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fmul fast float %4888, 0x4004000020000000
  %4913 = fadd fast float %4912, 0xBFF8000040000000
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4916 = fmul fast float %4477, 1.000000e+01
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fmul fast float %4917, 2.000000e+00
  %4919 = fsub fast float 3.000000e+00, %4918
  %4920 = fmul fast float %4917, %4917
  %4921 = fmul fast float %4920, %4919
  %4922 = fsub fast float 1.000000e+00, %4921
  %4923 = fsub fast float 0x3FE3333340000000, %4498
  %4924 = fmul fast float %4923, 0x400AAAAAA0000000
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fmul fast float %4922, %4925
  %4927 = fmul fast float %4510, 0x3FEA2B8620000000
  %4928 = fmul fast float %4511, 0x3FEA2B8620000000
  %4929 = fmul fast float %4512, 0x3FEA2B8620000000
  %4930 = fadd fast float %4927, 0x3FC81DFBA0000000
  %4931 = fmul fast float %4930, %4510
  %4932 = fadd fast float %4931, 0x3F910E6020000000
  %4933 = fadd fast float %4928, 0x3FC81DFBA0000000
  %4934 = fmul fast float %4933, %4511
  %4935 = fadd fast float %4934, 0x3F910E6020000000
  %4936 = fadd fast float %4929, 0x3FC81DFBA0000000
  %4937 = fmul fast float %4936, %4512
  %4938 = fadd fast float %4937, 0x3F910E6020000000
  %4939 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4940 = call float @dx.op.unary.f32(i32 7, float %4935)  ; Saturate(value)
  %4941 = call float @dx.op.unary.f32(i32 7, float %4938)  ; Saturate(value)
  %4942 = fsub fast float %4939, %4510
  %4943 = fsub fast float %4940, %4511
  %4944 = fsub fast float %4941, %4512
  %4945 = fmul fast float %4942, %4915
  %4946 = fmul fast float %4945, %4926
  %4947 = fmul fast float %4943, %4915
  %4948 = fmul fast float %4947, %4926
  %4949 = fmul fast float %4944, %4915
  %4950 = fmul fast float %4949, %4926
  %4951 = fadd fast float %4946, %4510
  %4952 = fadd fast float %4948, %4511
  %4953 = fadd fast float %4950, %4512
  %4954 = fmul fast float %4471, %4471
  %4955 = fmul fast float %4954, %4954
  %4956 = fadd fast float %4911, 1.000000e+00
  %4957 = fsub fast float %4956, %4926
  %4958 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  %4959 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4959)  ; Saturate(value)
  %4961 = fsub fast float 1.000000e+00, %4955
  %4962 = call float @dx.op.binary.f32(i32 36, float %4958, float %4961)  ; FMin(a,b)
  %4963 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4964 = call float @dx.op.binary.f32(i32 35, float %4962, float %4963)  ; FMax(a,b)
  %4965 = fadd fast float %4960, 0xBFE4CCCCC0000000
  %4966 = fmul fast float %4965, 0x4006DB6DA0000000
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = fmul fast float %4967, 2.000000e+00
  %4969 = fsub fast float 3.000000e+00, %4968
  %4970 = bitcast float %4495 to i32
  %4971 = ashr i32 %4970, 1
  %4972 = add nsw i32 %4971, 532487669
  %4973 = bitcast i32 %4972 to float
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = bitcast float %4974 to i32
  %4976 = sub nsw i32 2129859010, %4975
  %4977 = bitcast i32 %4976 to float
  %4978 = fmul fast float %4977, 2.000000e+00
  %4979 = bitcast float %4496 to i32
  %4980 = ashr i32 %4979, 1
  %4981 = add nsw i32 %4980, 532487669
  %4982 = bitcast i32 %4981 to float
  %4983 = fsub fast float 1.000000e+00, %4982
  %4984 = bitcast float %4983 to i32
  %4985 = sub nsw i32 2129859010, %4984
  %4986 = bitcast i32 %4985 to float
  %4987 = fmul fast float %4986, 2.000000e+00
  %4988 = bitcast float %4497 to i32
  %4989 = ashr i32 %4988, 1
  %4990 = add nsw i32 %4989, 532487669
  %4991 = bitcast i32 %4990 to float
  %4992 = fsub fast float 1.000000e+00, %4991
  %4993 = bitcast float %4992 to i32
  %4994 = sub nsw i32 2129859010, %4993
  %4995 = bitcast i32 %4994 to float
  %4996 = fmul fast float %4995, 2.000000e+00
  %4997 = fsub fast float 0x4002A9FBE0000000, %4978
  %4998 = fadd fast float %4978, 0x3FD54FDF00000000
  %4999 = bitcast float %4998 to i32
  %5000 = sub nsw i32 2129859010, %4999
  %5001 = bitcast i32 %5000 to float
  %5002 = fmul fast float %5001, %4997
  %5003 = fmul fast float %5002, %5002
  %5004 = fsub fast float 0x4002A9FBE0000000, %4987
  %5005 = fadd fast float %4987, 0x3FD54FDF00000000
  %5006 = bitcast float %5005 to i32
  %5007 = sub nsw i32 2129859010, %5006
  %5008 = bitcast i32 %5007 to float
  %5009 = fmul fast float %5008, %5004
  %5010 = fmul fast float %5009, %5009
  %5011 = fsub fast float 0x4002A9FBE0000000, %4996
  %5012 = fadd fast float %4996, 0x3FD54FDF00000000
  %5013 = bitcast float %5012 to i32
  %5014 = sub nsw i32 2129859010, %5013
  %5015 = bitcast i32 %5014 to float
  %5016 = fmul fast float %5015, %5011
  %5017 = fmul fast float %5016, %5016
  %5018 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5003)  ; FMax(a,b)
  %5019 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5010)  ; FMax(a,b)
  %5020 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5017)  ; FMax(a,b)
  %5021 = fsub fast float 1.000000e+00, %4906
  %5022 = fadd fast float %5021, %4922
  %5023 = call float @dx.op.unary.f32(i32 7, float %5022)  ; Saturate(value)
  %5024 = fsub fast float 1.000000e+00, %4886
  %5025 = fmul fast float %4964, %5024
  %5026 = fmul fast float %4967, %4967
  %5027 = fmul fast float %5026, %5025
  %5028 = fmul fast float %5027, %4969
  %5029 = fmul fast float %5024, 0xBFE99999A0000000
  %5030 = fmul fast float %5029, %4915
  %5031 = fmul fast float %5030, %4926
  %5032 = fadd fast float %5031, 1.000000e+00
  %5033 = fadd fast float %4498, -1.000000e+00
  %5034 = fmul fast float %5032, %5033
  %5035 = fadd fast float %5034, 1.000000e+00
  %5036 = fsub fast float %5018, %4495
  %5037 = fsub fast float %5019, %4496
  %5038 = fsub fast float %5020, %4497
  %5039 = fmul fast float %5028, %5036
  %5040 = fmul fast float %5028, %5037
  %5041 = fmul fast float %5028, %5038
  %5042 = fadd fast float %5039, %4495
  %5043 = fadd fast float %5040, %4496
  %5044 = fadd fast float %5041, %4497
  %5045 = fsub fast float %94, %4459
  %5046 = fsub fast float %96, %4460
  %5047 = fsub fast float %98, %4461
  %5048 = fmul fast float %5028, %5045
  %5049 = fmul fast float %5028, %5046
  %5050 = fmul fast float %5028, %5047
  %5051 = fadd fast float %5048, %4459
  %5052 = fadd fast float %5049, %4460
  %5053 = fadd fast float %5050, %4461
  %5054 = fmul fast float %5028, %5023
  %5055 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5056 = fsub fast float 1.000000e+00, %5055
  %5057 = fmul fast float %5054, %5056
  %5058 = fadd fast float %5057, %5055
  %5059 = fsub fast float 1.000000e+00, %4471
  %5060 = fmul fast float %5028, %5059
  %5061 = fadd fast float %5060, %4471
  %5062 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = call float @dx.op.unary.f32(i32 25, float %5062)  ; Rsqrt(value)
  %5064 = fmul fast float %5051, %5063
  %5065 = fmul fast float %5052, %5063
  %5066 = fmul fast float %5053, %5063
  br label %5067

; <label>:5067                                    ; preds = %4899, %4892
  %5068 = phi float [ %4898, %4892 ], [ %4905, %4899 ]
  %5069 = phi float [ %4897, %4892 ], [ %4903, %4899 ]
  %5070 = phi float [ %4896, %4892 ], [ %4901, %4899 ]
  %5071 = phi float [ %4895, %4892 ], [ %4904, %4899 ]
  %5072 = phi float [ %4894, %4892 ], [ %4902, %4899 ]
  %5073 = phi float [ %4893, %4892 ], [ %4900, %4899 ]
  %5074 = phi float [ %4459, %4892 ], [ %5064, %4899 ]
  %5075 = phi float [ %4460, %4892 ], [ %5065, %4899 ]
  %5076 = phi float [ %4461, %4892 ], [ %5066, %4899 ]
  %5077 = phi float [ %4495, %4892 ], [ %5042, %4899 ]
  %5078 = phi float [ %4496, %4892 ], [ %5043, %4899 ]
  %5079 = phi float [ %4497, %4892 ], [ %5044, %4899 ]
  %5080 = phi float [ %4510, %4892 ], [ %4951, %4899 ]
  %5081 = phi float [ %4511, %4892 ], [ %4952, %4899 ]
  %5082 = phi float [ %4512, %4892 ], [ %4953, %4899 ]
  %5083 = phi float [ %4498, %4892 ], [ %5058, %4899 ]
  %5084 = phi float [ %4471, %4892 ], [ %5061, %4899 ]
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 2
  %5087 = extractvalue %dx.types.CBufRet.f32 %5085, 3
  %5088 = fmul fast float %5086, %85
  %5089 = fmul fast float %5087, %86
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.CBufRet.f32 %5090, 1
  %5093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %5088, float %5089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5094 = extractvalue %dx.types.ResRet.f32 %5093, 0
  %5095 = fmul fast float %5094, %5092
  %5096 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5097 = fadd fast float %5096, -1.000000e+00
  %5098 = fmul fast float %5097, %5091
  %5099 = fadd fast float %5098, 1.000000e+00
  %5100 = select i1 %186, float 0.000000e+00, float %5079
  %5101 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %5070, float %5069, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5102 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5103 = call float @dx.op.dot3.f32(i32 55, float %5073, float %5072, float %5071, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5104 = fmul fast float %5103, 2.000000e+00
  %5105 = fmul fast float %5104, %5074
  %5106 = fmul fast float %5104, %5075
  %5107 = fmul fast float %5104, %5076
  %5108 = fsub fast float %5073, %5105
  %5109 = fsub fast float %5072, %5106
  %5110 = fsub fast float %5071, %5107
  %5111 = call float @dx.op.binary.f32(i32 36, float %5084, float %5099)  ; FMin(a,b)
  %5112 = fsub fast float 1.000000e+00, %5111
  %5113 = bitcast float %5112 to i32
  %5114 = ashr i32 %5113, 1
  %5115 = add nsw i32 %5114, 532487669
  %5116 = bitcast i32 %5115 to float
  %5117 = fsub fast float 1.000000e+00, %5083
  %5118 = call float @dx.op.binary.f32(i32 35, float %5117, float 0x3F847AE140000000)  ; FMax(a,b)
  %5119 = fmul fast float %5118, %5118
  %5120 = fmul fast float %5119, %5119
  %5121 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %5116, float %5120, float %5121, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5123 = extractvalue %dx.types.ResRet.f32 %5122, 0
  %5124 = fsub fast float 1.000000e+00, %5084
  %5125 = bitcast float %5124 to i32
  %5126 = sub nsw i32 2129859010, %5125
  %5127 = bitcast i32 %5126 to float
  %5128 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5129 = fmul fast float %5128, 0x3FD20DD760000000
  %5130 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5131 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5132 = fcmp fast oeq float %5131, 0.000000e+00
  %5133 = fcmp fast oeq float %5130, 0.000000e+00
  %5134 = or i1 %5133, %5132
  br i1 %5134, label %5164, label %5135

; <label>:5135                                    ; preds = %5067
  %5136 = fsub fast float -0.000000e+00, %65
  %5137 = fsub fast float -0.000000e+00, %63
  %5138 = call float @dx.op.unary.f32(i32 24, float %5131)  ; Sqrt(value)
  %5139 = fdiv fast float %5138, %5130
  %5140 = fcmp fast ogt float %5139, 0x3FFB6F8900000000
  %5141 = select i1 %5140, float 0x3FFB6F8900000000, float %5139
  %5142 = fmul fast float %5141, 0x3FE8A23460000000
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = call float @dx.op.binary.f32(i32 35, float %5141, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5145 = fmul fast float %5143, %5130
  %5146 = fmul fast float %5144, 0x3FF279A740000000
  %5147 = fadd fast float %5146, -1.000000e+00
  %5148 = call float @dx.op.dot3.f32(i32 55, float %5136, float %5137, float %64, float %5136, float %5137, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5149 = call float @dx.op.unary.f32(i32 25, float %5148)  ; Rsqrt(value)
  %5150 = fmul fast float %5149, %5136
  %5151 = fmul fast float %5149, %5137
  %5152 = fmul fast float %5149, %64
  %5153 = fmul fast float %5147, %5147
  %5154 = fsub fast float 1.000000e+00, %5153
  %5155 = fmul fast float %5144, 0x40005F8BE0000000
  %5156 = fsub fast float 0x400C5BF8A0000000, %5155
  %5157 = fdiv fast float %5145, %5156
  %5158 = fmul fast float %5157, 0x3FEE31C3C0000000
  %5159 = fmul fast float %5158, %5154
  %5160 = fmul fast float %5144, 0x3FDACB7480000000
  %5161 = fadd fast float %5160, 0xBFD7347680000000
  %5162 = fmul fast float %5161, %5157
  %5163 = fmul fast float %5162, %5154
  br label %5164

; <label>:5164                                    ; preds = %5135, %5067
  %5165 = phi float [ %5150, %5135 ], [ 0.000000e+00, %5067 ]
  %5166 = phi float [ %5151, %5135 ], [ 0.000000e+00, %5067 ]
  %5167 = phi float [ %5152, %5135 ], [ 0.000000e+00, %5067 ]
  %5168 = phi float [ %5159, %5135 ], [ 0.000000e+00, %5067 ]
  %5169 = phi float [ %5163, %5135 ], [ 0.000000e+00, %5067 ]
  %5170 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5166, float %5167, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5171 = fmul fast float %5170, %5170
  %5172 = fmul fast float %5171, 0x3FEE471020000000
  %5173 = fadd fast float %5172, 0xBFD42F6020000000
  %5174 = fmul fast float %5130, 0x3FD20DD760000000
  %5175 = fmul fast float %5173, %5169
  %5176 = fmul fast float %5168, 0x3FDF454380000000
  %5177 = fmul fast float %5176, %5170
  %5178 = fadd fast float %5177, %5174
  %5179 = fadd fast float %5178, %5175
  %5180 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5166, float %5167, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5181 = fmul fast float %5180, 0x3FDF454380000000
  %5182 = fmul fast float %5180, %5180
  %5183 = fmul fast float %5182, 0x3FEE471020000000
  %5184 = fadd fast float %5183, 0xBFD42F6020000000
  %5185 = call float @dx.op.dot3.f32(i32 55, float %5130, float %5168, float %5169, float 0x3FD20DD760000000, float %5181, float %5184)  ; Dot3(ax,ay,az,bx,by,bz)
  %5186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5187 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = fcmp fast oeq float %5187, 0.000000e+00
  %5189 = fcmp fast oeq float %5186, 0.000000e+00
  %5190 = or i1 %5189, %5188
  br i1 %5190, label %5220, label %5191

; <label>:5191                                    ; preds = %5164
  %5192 = fsub fast float -0.000000e+00, %61
  %5193 = fsub fast float -0.000000e+00, %59
  %5194 = call float @dx.op.unary.f32(i32 24, float %5187)  ; Sqrt(value)
  %5195 = fdiv fast float %5194, %5186
  %5196 = fcmp fast ogt float %5195, 0x3FFB6F8900000000
  %5197 = select i1 %5196, float 0x3FFB6F8900000000, float %5195
  %5198 = fmul fast float %5197, 0x3FE8A23460000000
  %5199 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5200 = call float @dx.op.binary.f32(i32 35, float %5197, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5201 = fmul fast float %5199, %5186
  %5202 = fmul fast float %5200, 0x3FF279A740000000
  %5203 = fadd fast float %5202, -1.000000e+00
  %5204 = call float @dx.op.dot3.f32(i32 55, float %5192, float %5193, float %60, float %5192, float %5193, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5205 = call float @dx.op.unary.f32(i32 25, float %5204)  ; Rsqrt(value)
  %5206 = fmul fast float %5205, %5192
  %5207 = fmul fast float %5205, %5193
  %5208 = fmul fast float %5205, %60
  %5209 = fmul fast float %5203, %5203
  %5210 = fsub fast float 1.000000e+00, %5209
  %5211 = fmul fast float %5200, 0x40005F8BE0000000
  %5212 = fsub fast float 0x400C5BF8A0000000, %5211
  %5213 = fdiv fast float %5201, %5212
  %5214 = fmul fast float %5213, 0x3FEE31C3C0000000
  %5215 = fmul fast float %5214, %5210
  %5216 = fmul fast float %5200, 0x3FDACB7480000000
  %5217 = fadd fast float %5216, 0xBFD7347680000000
  %5218 = fmul fast float %5217, %5213
  %5219 = fmul fast float %5218, %5210
  br label %5220

; <label>:5220                                    ; preds = %5191, %5164
  %5221 = phi float [ %5206, %5191 ], [ 0.000000e+00, %5164 ]
  %5222 = phi float [ %5207, %5191 ], [ 0.000000e+00, %5164 ]
  %5223 = phi float [ %5208, %5191 ], [ 0.000000e+00, %5164 ]
  %5224 = phi float [ %5215, %5191 ], [ 0.000000e+00, %5164 ]
  %5225 = phi float [ %5219, %5191 ], [ 0.000000e+00, %5164 ]
  %5226 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5222, float %5223, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = fmul fast float %5226, %5226
  %5228 = fmul fast float %5227, 0x3FEE471020000000
  %5229 = fadd fast float %5228, 0xBFD42F6020000000
  %5230 = fmul fast float %5186, 0x3FD20DD760000000
  %5231 = fmul fast float %5229, %5225
  %5232 = fmul fast float %5224, 0x3FDF454380000000
  %5233 = fmul fast float %5232, %5226
  %5234 = fadd fast float %5233, %5230
  %5235 = fadd fast float %5234, %5231
  %5236 = call float @dx.op.dot3.f32(i32 55, float %5221, float %5222, float %5223, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5237 = fmul fast float %5236, 0x3FDF454380000000
  %5238 = fmul fast float %5236, %5236
  %5239 = fmul fast float %5238, 0x3FEE471020000000
  %5240 = fadd fast float %5239, 0xBFD42F6020000000
  %5241 = call float @dx.op.dot3.f32(i32 55, float %5186, float %5224, float %5225, float 0x3FD20DD760000000, float %5237, float %5240)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5243 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = fcmp fast oeq float %5243, 0.000000e+00
  %5245 = fcmp fast oeq float %5242, 0.000000e+00
  %5246 = or i1 %5245, %5244
  br i1 %5246, label %5276, label %5247

; <label>:5247                                    ; preds = %5220
  %5248 = fsub fast float -0.000000e+00, %57
  %5249 = fsub fast float -0.000000e+00, %55
  %5250 = call float @dx.op.unary.f32(i32 24, float %5243)  ; Sqrt(value)
  %5251 = fdiv fast float %5250, %5242
  %5252 = fcmp fast ogt float %5251, 0x3FFB6F8900000000
  %5253 = select i1 %5252, float 0x3FFB6F8900000000, float %5251
  %5254 = fmul fast float %5253, 0x3FE8A23460000000
  %5255 = call float @dx.op.unary.f32(i32 7, float %5254)  ; Saturate(value)
  %5256 = call float @dx.op.binary.f32(i32 35, float %5253, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5257 = fmul fast float %5255, %5242
  %5258 = fmul fast float %5256, 0x3FF279A740000000
  %5259 = fadd fast float %5258, -1.000000e+00
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %56, float %5248, float %5249, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = call float @dx.op.unary.f32(i32 25, float %5260)  ; Rsqrt(value)
  %5262 = fmul fast float %5261, %5248
  %5263 = fmul fast float %5261, %5249
  %5264 = fmul fast float %5261, %56
  %5265 = fmul fast float %5259, %5259
  %5266 = fsub fast float 1.000000e+00, %5265
  %5267 = fmul fast float %5256, 0x40005F8BE0000000
  %5268 = fsub fast float 0x400C5BF8A0000000, %5267
  %5269 = fdiv fast float %5257, %5268
  %5270 = fmul fast float %5269, 0x3FEE31C3C0000000
  %5271 = fmul fast float %5270, %5266
  %5272 = fmul fast float %5256, 0x3FDACB7480000000
  %5273 = fadd fast float %5272, 0xBFD7347680000000
  %5274 = fmul fast float %5273, %5269
  %5275 = fmul fast float %5274, %5266
  br label %5276

; <label>:5276                                    ; preds = %5247, %5220
  %5277 = phi float [ %5262, %5247 ], [ 0.000000e+00, %5220 ]
  %5278 = phi float [ %5263, %5247 ], [ 0.000000e+00, %5220 ]
  %5279 = phi float [ %5264, %5247 ], [ 0.000000e+00, %5220 ]
  %5280 = phi float [ %5271, %5247 ], [ 0.000000e+00, %5220 ]
  %5281 = phi float [ %5275, %5247 ], [ 0.000000e+00, %5220 ]
  %5282 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %5283 = fmul fast float %5282, %5282
  %5284 = fmul fast float %5283, 0x3FEE471020000000
  %5285 = fadd fast float %5284, 0xBFD42F6020000000
  %5286 = fmul fast float %5242, 0x3FD20DD760000000
  %5287 = fmul fast float %5285, %5281
  %5288 = fmul fast float %5280, 0x3FDF454380000000
  %5289 = fmul fast float %5288, %5282
  %5290 = fadd fast float %5289, %5286
  %5291 = fadd fast float %5290, %5287
  %5292 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5278, float %5279, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = fmul fast float %5292, 0x3FDF454380000000
  %5294 = fmul fast float %5292, %5292
  %5295 = fmul fast float %5294, 0x3FEE471020000000
  %5296 = fadd fast float %5295, 0xBFD42F6020000000
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5242, float %5280, float %5281, float 0x3FD20DD760000000, float %5293, float %5296)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.binary.f32(i32 35, float %5179, float 0.000000e+00)  ; FMax(a,b)
  %5299 = call float @dx.op.binary.f32(i32 35, float %5235, float 0.000000e+00)  ; FMax(a,b)
  %5300 = call float @dx.op.binary.f32(i32 35, float %5291, float 0.000000e+00)  ; FMax(a,b)
  %5301 = call float @dx.op.binary.f32(i32 35, float %5185, float 0.000000e+00)  ; FMax(a,b)
  %5302 = call float @dx.op.binary.f32(i32 35, float %5241, float 0.000000e+00)  ; FMax(a,b)
  %5303 = call float @dx.op.binary.f32(i32 35, float %5297, float 0.000000e+00)  ; FMax(a,b)
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 0
  %5306 = call float @dx.op.binary.f32(i32 36, float %5080, float %5305)  ; FMin(a,b)
  %5307 = fmul fast float %5306, %5112
  %5308 = fsub fast float 1.000000e+00, %5307
  %5309 = bitcast float %5308 to i32
  %5310 = sub nsw i32 2129859010, %5309
  %5311 = bitcast i32 %5310 to float
  %5312 = call float @dx.op.binary.f32(i32 36, float %5081, float %5305)  ; FMin(a,b)
  %5313 = fmul fast float %5312, %5112
  %5314 = fsub fast float 1.000000e+00, %5313
  %5315 = bitcast float %5314 to i32
  %5316 = sub nsw i32 2129859010, %5315
  %5317 = bitcast i32 %5316 to float
  %5318 = call float @dx.op.binary.f32(i32 36, float %5082, float %5305)  ; FMin(a,b)
  %5319 = fmul fast float %5318, %5112
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = bitcast float %5320 to i32
  %5322 = sub nsw i32 2129859010, %5321
  %5323 = bitcast i32 %5322 to float
  %5324 = fmul fast float %5298, %5111
  %5325 = fmul fast float %5324, %5311
  %5326 = fmul fast float %5299, %5111
  %5327 = fmul fast float %5326, %5317
  %5328 = fmul fast float %5300, %5111
  %5329 = fmul fast float %5328, %5323
  %5330 = call float @dx.op.binary.f32(i32 36, float %5077, float %5305)  ; FMin(a,b)
  %5331 = fmul fast float %5330, %5112
  %5332 = fsub fast float 1.000000e+00, %5331
  %5333 = bitcast float %5332 to i32
  %5334 = sub nsw i32 2129859010, %5333
  %5335 = bitcast i32 %5334 to float
  %5336 = call float @dx.op.binary.f32(i32 36, float %5078, float %5305)  ; FMin(a,b)
  %5337 = fmul fast float %5336, %5112
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = bitcast float %5338 to i32
  %5340 = sub nsw i32 2129859010, %5339
  %5341 = bitcast i32 %5340 to float
  %5342 = call float @dx.op.binary.f32(i32 36, float %5100, float %5305)  ; FMin(a,b)
  %5343 = fmul fast float %5342, %5112
  %5344 = fsub fast float 1.000000e+00, %5343
  %5345 = bitcast float %5344 to i32
  %5346 = sub nsw i32 2129859010, %5345
  %5347 = bitcast i32 %5346 to float
  %5348 = fmul fast float %5301, %5111
  %5349 = fmul fast float %5348, %5335
  %5350 = fmul fast float %5302, %5111
  %5351 = fmul fast float %5350, %5341
  %5352 = fmul fast float %5303, %5111
  %5353 = fmul fast float %5352, %5347
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5327, float %5329, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = select i1 %186, float 0.000000e+00, float %5325
  %5356 = select i1 %186, float %5354, float %5327
  %5357 = select i1 %186, float 0.000000e+00, float %5329
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5349, float %5351, float %5353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = select i1 %186, float 0.000000e+00, float %5349
  %5360 = select i1 %186, float %5358, float %5351
  %5361 = select i1 %186, float 0.000000e+00, float %5353
  %5362 = fmul fast float %5102, 9.843750e-01
  %5363 = fmul fast float %5083, 9.843750e-01
  %5364 = fadd fast float %5362, 7.812500e-03
  %5365 = fadd fast float %5363, 7.812500e-03
  %5366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5364, float %5365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5367 = extractvalue %dx.types.ResRet.f32 %5366, 2
  %5368 = extractvalue %dx.types.ResRet.f32 %5366, 3
  %5369 = fmul fast float %5367, %5077
  %5370 = fmul fast float %5367, %5078
  %5371 = fmul fast float %5367, %5100
  %5372 = fadd fast float %5369, %5368
  %5373 = fadd fast float %5370, %5368
  %5374 = fadd fast float %5371, %5368
  %5375 = fcmp fast ogt float %4472, 0.000000e+00
  br i1 %5375, label %5376, label %5402

; <label>:5376                                    ; preds = %5276
  %5377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4472, float %5102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = fadd fast float %5378, -5.000000e-01
  %5382 = fadd fast float %5379, -5.000000e-01
  %5383 = fadd fast float %5380, -5.000000e-01
  %5384 = fsub fast float 1.000000e+00, %5077
  %5385 = fsub fast float 1.000000e+00, %5078
  %5386 = fsub fast float 1.000000e+00, %5100
  %5387 = fmul fast float %5077, 4.000000e+00
  %5388 = fmul fast float %5387, %5384
  %5389 = fmul fast float %5388, %5381
  %5390 = fmul fast float %5078, 4.000000e+00
  %5391 = fmul fast float %5390, %5385
  %5392 = fmul fast float %5391, %5382
  %5393 = fmul fast float %5100, 4.000000e+00
  %5394 = fmul fast float %5393, %5386
  %5395 = fmul fast float %5394, %5383
  %5396 = fadd fast float %5389, %5372
  %5397 = fadd fast float %5392, %5373
  %5398 = fadd fast float %5395, %5374
  %5399 = call float @dx.op.unary.f32(i32 7, float %5396)  ; Saturate(value)
  %5400 = call float @dx.op.unary.f32(i32 7, float %5397)  ; Saturate(value)
  %5401 = call float @dx.op.unary.f32(i32 7, float %5398)  ; Saturate(value)
  br label %5402

; <label>:5402                                    ; preds = %5376, %5276
  %5403 = phi float [ %5399, %5376 ], [ %5372, %5276 ]
  %5404 = phi float [ %5400, %5376 ], [ %5373, %5276 ]
  %5405 = phi float [ %5401, %5376 ], [ %5374, %5276 ]
  %5406 = call float @dx.op.binary.f32(i32 35, float %5404, float %5405)  ; FMax(a,b)
  %5407 = call float @dx.op.binary.f32(i32 35, float %5403, float %5406)  ; FMax(a,b)
  %5408 = fsub fast float 1.000000e+00, %5407
  %5409 = fmul fast float %5407, %5083
  %5410 = fadd fast float %5409, %5083
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.CBufRet.f32 %5411, 1
  %5414 = extractvalue %dx.types.CBufRet.f32 %5411, 2
  %5415 = extractvalue %dx.types.CBufRet.f32 %5411, 3
  %5416 = fmul fast float %5410, %5412
  %5417 = fadd fast float %5416, %5413
  %5418 = call float @dx.op.unary.f32(i32 7, float %5417)  ; Saturate(value)
  %5419 = fmul fast float %5414, %5410
  %5420 = fadd fast float %5419, %5415
  %5421 = call float @dx.op.unary.f32(i32 7, float %5420)  ; Saturate(value)
  %5422 = fsub fast float 1.000000e+00, %5123
  %5423 = fadd fast float %5422, %5421
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5425 = fcmp fast olt float %5424, 1.000000e+00
  br i1 %5425, label %5426, label %6281

; <label>:5426                                    ; preds = %5402
  %5427 = fcmp fast olt float %5418, 1.000000e+00
  %5428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5429 = extractvalue %dx.types.CBufRet.f32 %5428, 0
  %5430 = fcmp fast ogt float %5429, 0.000000e+00
  %5431 = or i1 %5427, %5430
  %5432 = or i1 %5427, %5430
  %5433 = xor i1 %5432, true
  %5434 = zext i1 %5433 to i32
  br i1 %5431, label %5435, label %5678

; <label>:5435                                    ; preds = %5426
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = extractvalue %dx.types.CBufRet.f32 %5436, 1
  %5439 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5440 = extractvalue %dx.types.CBufRet.f32 %5436, 3
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5445 = extractvalue %dx.types.CBufRet.f32 %5441, 3
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5449 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5450 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5455 = extractvalue %dx.types.CBufRet.f32 %5451, 3
  %5456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.CBufRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.CBufRet.f32 %5456, 2
  %5460 = extractvalue %dx.types.CBufRet.f32 %5456, 3
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.CBufRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.CBufRet.f32 %5461, 2
  %5465 = extractvalue %dx.types.CBufRet.f32 %5461, 3
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5469 = fmul fast float %5468, 8.000000e+00
  %5470 = fadd fast float %5469, -6.000000e+00
  %5471 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5472 = fmul fast float %5466, 8.000000e+00
  %5473 = fmul fast float %5472, %5429
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = fcmp fast ogt float %5474, 0.000000e+00
  br i1 %5475, label %5476, label %5653, !dx.controlflow.hints !85

; <label>:5476                                    ; preds = %5435
  %5477 = extractvalue %dx.types.CBufRet.f32 %5428, 1
  %5478 = extractvalue %dx.types.CBufRet.f32 %5428, 2
  %5479 = fsub fast float %5477, %5478
  %5480 = fmul fast float %5479, %5083
  %5481 = fadd fast float %5480, %5478
  %5482 = fmul fast float %199, 2.000000e+00
  %5483 = fmul fast float %200, 2.000000e+00
  %5484 = fadd fast float %5482, -1.000000e+00
  %5485 = fadd fast float %5483, -1.000000e+00
  %5486 = fmul fast float %5481, %5484
  %5487 = fmul fast float %5481, %5485
  %5488 = fadd fast float %5486, %85
  %5489 = fadd fast float %5487, %86
  %5490 = fmul fast float %5488, %5086
  %5491 = fmul fast float %5489, %5087
  %5492 = fadd fast float %5083, 0xBFE3333340000000
  %5493 = fmul fast float %5492, 0x4004000020000000
  %5494 = fsub fast float 1.000000e+00, %5493
  %5495 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5496 = fmul fast float %5495, 3.000000e+00
  %5497 = fadd fast float %5496, %199
  %5498 = call float @dx.op.unary.f32(i32 27, float %5497)  ; Round_ni(value)
  %5499 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5490, float %5491, float %5498, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5500 = extractvalue %dx.types.ResRet.f32 %5499, 0
  %5501 = fcmp fast une float %5500, 0xFFF0000000000000
  %5502 = fcmp fast une float %5500, 0x7FF0000000000000
  %5503 = and i1 %5501, %5502
  %5504 = fcmp fast olt float %5500, 0.000000e+00
  %5505 = call float @dx.op.unary.f32(i32 6, float %5500)  ; FAbs(value)
  %5506 = fsub fast float 1.000000e+00, %5505
  %5507 = select i1 %5503, float 1.000000e+00, float 0.000000e+00
  %5508 = fmul fast float %5507, %5474
  %5509 = fcmp fast ogt float %5508, 0.000000e+00
  br i1 %5509, label %5510, label %5653, !dx.controlflow.hints !86

; <label>:5510                                    ; preds = %5476
  %5511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5512 = extractvalue %dx.types.CBufRet.f32 %5511, 0
  %5513 = extractvalue %dx.types.CBufRet.f32 %5511, 1
  %5514 = extractvalue %dx.types.CBufRet.f32 %5511, 2
  %5515 = select i1 %5504, float 0.000000e+00, float %5512
  %5516 = select i1 %5504, float 0.000000e+00, float %5513
  %5517 = select i1 %5504, float 0.000000e+00, float %5514
  %5518 = select i1 %5504, float %5437, float %5452
  %5519 = select i1 %5504, float %5442, float %5457
  %5520 = select i1 %5504, float %5447, float %5462
  %5521 = select i1 %5504, float %5438, float %5453
  %5522 = select i1 %5504, float %5443, float %5458
  %5523 = select i1 %5504, float %5448, float %5463
  %5524 = select i1 %5504, float %5439, float %5454
  %5525 = select i1 %5504, float %5444, float %5459
  %5526 = select i1 %5504, float %5449, float %5464
  %5527 = select i1 %5504, float %5440, float %5455
  %5528 = select i1 %5504, float %5445, float %5460
  %5529 = select i1 %5504, float %5450, float %5465
  %5530 = fadd fast float %5515, %144
  %5531 = fadd fast float %5516, %145
  %5532 = fadd fast float %5517, %146
  %5533 = fmul fast float %5530, %5518
  %5534 = call float @dx.op.tertiary.f32(i32 46, float %5531, float %5521, float %5533)  ; FMad(a,b,c)
  %5535 = call float @dx.op.tertiary.f32(i32 46, float %5532, float %5524, float %5534)  ; FMad(a,b,c)
  %5536 = fadd fast float %5535, %5527
  %5537 = fmul fast float %5530, %5519
  %5538 = call float @dx.op.tertiary.f32(i32 46, float %5531, float %5522, float %5537)  ; FMad(a,b,c)
  %5539 = call float @dx.op.tertiary.f32(i32 46, float %5532, float %5525, float %5538)  ; FMad(a,b,c)
  %5540 = fadd fast float %5539, %5528
  %5541 = fmul fast float %5530, %5520
  %5542 = call float @dx.op.tertiary.f32(i32 46, float %5531, float %5523, float %5541)  ; FMad(a,b,c)
  %5543 = call float @dx.op.tertiary.f32(i32 46, float %5532, float %5526, float %5542)  ; FMad(a,b,c)
  %5544 = fadd fast float %5543, %5529
  %5545 = fdiv fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5545, %5536
  %5547 = fmul fast float %5545, %5540
  %5548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5549 = extractvalue %dx.types.CBufRet.f32 %5548, 0
  %5550 = extractvalue %dx.types.CBufRet.f32 %5548, 1
  %5551 = fmul fast float %5546, %5549
  %5552 = fmul fast float %5547, %5550
  %5553 = extractvalue %dx.types.CBufRet.f32 %5548, 2
  %5554 = extractvalue %dx.types.CBufRet.f32 %5548, 3
  %5555 = fadd fast float %5551, %5553
  %5556 = fadd fast float %5552, %5554
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 3
  %5559 = fmul fast float %5558, %5108
  %5560 = fmul fast float %5558, %5109
  %5561 = fmul fast float %5558, %5110
  %5562 = fadd fast float %5559, %5530
  %5563 = fadd fast float %5560, %5531
  %5564 = fadd fast float %5561, %5532
  %5565 = fmul fast float %5562, %5518
  %5566 = call float @dx.op.tertiary.f32(i32 46, float %5563, float %5521, float %5565)  ; FMad(a,b,c)
  %5567 = call float @dx.op.tertiary.f32(i32 46, float %5564, float %5524, float %5566)  ; FMad(a,b,c)
  %5568 = fadd fast float %5567, %5527
  %5569 = fmul fast float %5562, %5519
  %5570 = call float @dx.op.tertiary.f32(i32 46, float %5563, float %5522, float %5569)  ; FMad(a,b,c)
  %5571 = call float @dx.op.tertiary.f32(i32 46, float %5564, float %5525, float %5570)  ; FMad(a,b,c)
  %5572 = fadd fast float %5571, %5528
  %5573 = fmul fast float %5562, %5520
  %5574 = call float @dx.op.tertiary.f32(i32 46, float %5563, float %5523, float %5573)  ; FMad(a,b,c)
  %5575 = call float @dx.op.tertiary.f32(i32 46, float %5564, float %5526, float %5574)  ; FMad(a,b,c)
  %5576 = fadd fast float %5575, %5529
  %5577 = fdiv fast float 1.000000e+00, %5576
  %5578 = fmul fast float %5577, %5568
  %5579 = fmul fast float %5577, %5572
  %5580 = fmul fast float %5555, 2.000000e+00
  %5581 = fadd fast float %5580, -1.000000e+00
  %5582 = call float @dx.op.unary.f32(i32 6, float %5581)  ; FAbs(value)
  %5583 = fmul fast float %5582, 5.000000e+00
  %5584 = fadd fast float %5583, -4.000000e+00
  %5585 = call float @dx.op.unary.f32(i32 7, float %5584)  ; Saturate(value)
  %5586 = fmul fast float %5585, %5471
  %5587 = fsub fast float %5546, %5578
  %5588 = fmul fast float %5549, %5587
  %5589 = fmul fast float %5586, %5588
  %5590 = fsub fast float %5578, %5546
  %5591 = fmul fast float %5549, %5590
  %5592 = fadd fast float %5591, %5589
  %5593 = fsub fast float %5579, %5547
  %5594 = fmul fast float %5550, %5593
  %5595 = fmul fast float %5592, %5506
  %5596 = fmul fast float %5594, %5506
  %5597 = fadd fast float %5595, %5555
  %5598 = fadd fast float %5596, %5556
  %5599 = fsub fast float %5577, %5545
  %5600 = fmul fast float %5599, %5506
  %5601 = fadd fast float %5600, %5545
  %5602 = fdiv fast float 1.000000e+00, %5601
  %5603 = fadd fast float %5083, -1.000000e+00
  %5604 = fsub fast float %5602, %5544
  %5605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.f32 %5605, 2
  %5607 = fmul fast float %5606, %5602
  %5608 = fdiv fast float 1.600000e+02, %5607
  %5609 = fmul fast float %5603, %5603
  %5610 = fmul fast float %5609, 0xBFB5B17960000000
  %5611 = fmul fast float %5610, %5604
  %5612 = fmul fast float %5611, %5608
  %5613 = call float @dx.op.unary.f32(i32 21, float %5612)  ; Exp(value)
  %5614 = fmul fast float %5613, 0x3FF04B2960000000
  %5615 = fsub fast float 0x3FF04B2960000000, %5614
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5616, 4.000000e+00
  %5618 = fadd fast float %199, -5.000000e-01
  %5619 = fadd fast float %200, -5.000000e-01
  %5620 = fmul fast float %5616, 0x3FBEB851E0000000
  %5621 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5622 = fmul fast float %5621, %5618
  %5623 = fmul fast float %5621, %5619
  %5624 = fadd fast float %5597, %5622
  %5625 = fadd fast float %5598, %5623
  %5626 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5624, float %5625, float undef, float undef, i32 0, i32 0, i32 undef, float %5617)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5627 = extractvalue %dx.types.ResRet.f32 %5626, 0
  %5628 = extractvalue %dx.types.ResRet.f32 %5626, 1
  %5629 = extractvalue %dx.types.ResRet.f32 %5626, 2
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5632 = fmul fast float %5631, %5627
  %5633 = fmul fast float %5631, %5628
  %5634 = fmul fast float %5631, %5629
  %5635 = select i1 %186, float 0.000000e+00, float %5633
  %5636 = select i1 %186, float 0.000000e+00, float %5634
  %5637 = fmul fast float %5624, 2.000000e+00
  %5638 = fmul fast float %5625, 2.000000e+00
  %5639 = fadd fast float %5637, -1.000000e+00
  %5640 = fadd fast float %5638, -1.000000e+00
  %5641 = fmul fast float %5639, %5639
  %5642 = fsub fast float 1.000000e+00, %5641
  %5643 = call float @dx.op.unary.f32(i32 7, float %5642)  ; Saturate(value)
  %5644 = fsub fast float 1.000000e+00, %5643
  %5645 = fmul fast float %5644, %5471
  %5646 = fadd fast float %5645, %5643
  %5647 = fmul fast float %5640, %5640
  %5648 = fsub fast float 1.000000e+00, %5647
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = fmul fast float %5646, %5649
  %5651 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5652 = fmul fast float %5651, %5508
  br label %5653

; <label>:5653                                    ; preds = %5510, %5476, %5435
  %5654 = phi float [ %5632, %5510 ], [ 0.000000e+00, %5476 ], [ 0.000000e+00, %5435 ]
  %5655 = phi float [ %5635, %5510 ], [ 0.000000e+00, %5476 ], [ 0.000000e+00, %5435 ]
  %5656 = phi float [ %5636, %5510 ], [ 0.000000e+00, %5476 ], [ 0.000000e+00, %5435 ]
  %5657 = phi float [ %5652, %5510 ], [ 0.000000e+00, %5476 ], [ 0.000000e+00, %5435 ]
  %5658 = fcmp fast olt float %5657, 1.000000e+00
  %5659 = or i1 %5658, %5433
  %5660 = zext i1 %5659 to i32
  %5661 = fmul fast float %5657, %5418
  %5662 = fsub fast float %5657, %5661
  %5663 = fsub fast float 1.000000e+00, %5424
  %5664 = fmul fast float %5662, %5663
  %5665 = fadd fast float %5664, %5424
  %5666 = fsub fast float %5665, %5662
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5667, %5359
  %5669 = fmul fast float %5667, %5360
  %5670 = fmul fast float %5667, %5361
  %5671 = fsub fast float -0.000000e+00, %5665
  %5672 = fmul fast float %5662, %5654
  %5673 = fmul fast float %5662, %5655
  %5674 = fmul fast float %5662, %5656
  %5675 = fadd fast float %5672, %5668
  %5676 = fadd fast float %5673, %5669
  %5677 = fadd fast float %5674, %5670
  br label %5678

; <label>:5678                                    ; preds = %5653, %5426
  %5679 = phi float [ %5424, %5426 ], [ %5671, %5653 ]
  %5680 = phi float [ %5359, %5426 ], [ %5675, %5653 ]
  %5681 = phi float [ %5360, %5426 ], [ %5676, %5653 ]
  %5682 = phi float [ %5361, %5426 ], [ %5677, %5653 ]
  %5683 = phi i32 [ %5434, %5426 ], [ %5660, %5653 ]
  %5684 = icmp eq i32 %5683, 0
  br i1 %5684, label %6281, label %5685

; <label>:5685                                    ; preds = %5678
  %5686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5687 = extractvalue %dx.types.CBufRet.f32 %5686, 2
  %5688 = extractvalue %dx.types.CBufRet.f32 %5686, 3
  %5689 = fmul fast float %5687, %85
  %5690 = fmul fast float %5688, %86
  %5691 = fptoui float %5689 to i32
  %5692 = fptoui float %5690 to i32
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 0
  %5695 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5696 = extractvalue %dx.types.CBufRet.f32 %5693, 3
  %5697 = fadd fast float %80, -4.000000e+00
  %5698 = call float @dx.op.binary.f32(i32 35, float %5697, float 0.000000e+00)  ; FMax(a,b)
  %5699 = fadd fast float %5698, %5694
  %5700 = fmul fast float %5699, %5695
  %5701 = call float @dx.op.unary.f32(i32 23, float %5700)  ; Log(value)
  %5702 = fmul fast float %5701, %5696
  %5703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5704 = extractvalue %dx.types.CBufRet.f32 %5703, 2
  %5705 = fmul fast float %5702, %5704
  %5706 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5708 = extractvalue %dx.types.CBufRet.i32 %5707, 1
  %5709 = add i32 %5708, -1
  %5710 = uitofp i32 %5708 to float
  %5711 = fmul fast float %5710, %5706
  %5712 = fptoui float %5711 to i32
  %5713 = call i32 @dx.op.binary.i32(i32 40, i32 %5712, i32 %5709)  ; UMin(a,b)
  %5714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.i32 %5714, 2
  %5716 = extractvalue %dx.types.CBufRet.i32 %5714, 3
  %5717 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5692, i32 %5715, i32 %5691)  ; UMad(a,b,c)
  %5718 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5713, i32 %5716, i32 %5717)  ; UMad(a,b,c)
  %5719 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5720 = fptoui float %5719 to i32
  %5721 = lshr i32 %5720, 5
  %5722 = call i32 @dx.op.binary.i32(i32 40, i32 %5721, i32 8191)  ; UMin(a,b)
  %5723 = fcmp fast ogt float %4882, 0.000000e+00
  %5724 = fcmp fast ogt float %5110, 0.000000e+00
  %5725 = and i1 %5724, %5723
  br i1 %5725, label %5726, label %5755

; <label>:5726                                    ; preds = %5685
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = call float @dx.op.binary.f32(i32 35, float %5727, float -1.000000e+00)  ; FMax(a,b)
  %5729 = call float @dx.op.binary.f32(i32 36, float %5728, float 1.000000e+00)  ; FMin(a,b)
  %5730 = fmul fast float %5729, %5729
  %5731 = fsub fast float 1.000000e+00, %5730
  %5732 = fmul fast float %5731, 0x3FFC6E2300000000
  %5733 = fsub fast float 1.000000e+00, %5732
  %5734 = fcmp fast ogt float %5733, 0.000000e+00
  %5735 = call float @dx.op.unary.f32(i32 24, float %5733)  ; Sqrt(value)
  %5736 = fsub fast float 1.000000e+00, %5735
  %5737 = call float @dx.op.unary.f32(i32 23, float %5736)  ; Log(value)
  %5738 = fmul fast float %5737, 5.000000e+00
  %5739 = call float @dx.op.unary.f32(i32 21, float %5738)  ; Exp(value)
  %5740 = fmul fast float %5739, 0x3FEF591A60000000
  %5741 = fadd fast float %5740, 0x3F94DCB540000000
  %5742 = select i1 %5734, float %5741, float 1.000000e+00
  %5743 = fcmp fast oge float %5742, 1.000000e+00
  %5744 = fmul fast float %5727, 2.000000e+00
  %5745 = fadd fast float %5744, %5110
  %5746 = select i1 %5743, float %5745, float %5110
  %5747 = fsub fast float %5746, %5110
  %5748 = fmul fast float %5747, %4882
  %5749 = fadd fast float %5748, %5110
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5749, float %5108, float %5109, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = call float @dx.op.unary.f32(i32 25, float %5750)  ; Rsqrt(value)
  %5752 = fmul fast float %5751, %5108
  %5753 = fmul fast float %5751, %5109
  %5754 = fmul fast float %5749, %5751
  br label %5755

; <label>:5755                                    ; preds = %5726, %5685
  %5756 = phi float [ %5752, %5726 ], [ %5108, %5685 ]
  %5757 = phi float [ %5753, %5726 ], [ %5109, %5685 ]
  %5758 = phi float [ %5754, %5726 ], [ %5110, %5685 ]
  %5759 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.i32 %5759, 2
  %5761 = add nsw i32 %5760, -1
  %5762 = call i32 @dx.op.binary.i32(i32 37, i32 %5761, i32 0)  ; IMax(a,b)
  %5763 = shl i32 %5722, 2
  %5764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5763, i32 undef)  ; BufferLoad(srv,index,wot)
  %5765 = extractvalue %dx.types.ResRet.i32 %5764, 0
  %5766 = lshr i32 %5765, 16
  %5767 = and i32 %5765, 65535
  %5768 = lshr i32 %5765, 21
  %5769 = lshr i32 %5767, 5
  %5770 = call i32 @dx.op.binary.i32(i32 40, i32 %5769, i32 %5762)  ; UMin(a,b)
  %5771 = icmp ugt i32 %5768, %5770
  br i1 %5771, label %6153, label %5772

; <label>:5772                                    ; preds = %5755
  br label %5773

; <label>:5773                                    ; preds = %6142, %5772
  %5774 = phi float [ %6143, %6142 ], [ 0.000000e+00, %5772 ]
  %5775 = phi float [ %6144, %6142 ], [ 0.000000e+00, %5772 ]
  %5776 = phi float [ %6145, %6142 ], [ 0.000000e+00, %5772 ]
  %5777 = phi float [ %6146, %6142 ], [ 1.000000e+00, %5772 ]
  %5778 = phi i32 [ %6150, %6142 ], [ %5768, %5772 ]
  %5779 = phi float [ %6147, %6142 ], [ 0.000000e+00, %5772 ]
  %5780 = phi float [ %6148, %6142 ], [ 0.000000e+00, %5772 ]
  %5781 = phi float [ %6149, %6142 ], [ 0.000000e+00, %5772 ]
  %5782 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.i32 %5782, 2
  %5784 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5718, i32 %5783, i32 %5778)  ; UMad(a,b,c)
  %5785 = shl i32 %5784, 2
  %5786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5785, i32 undef)  ; BufferLoad(srv,index,wot)
  %5787 = extractvalue %dx.types.ResRet.i32 %5786, 0
  %5788 = shl i32 %5778, 5
  %5789 = sub nsw i32 %5766, %5788
  %5790 = call i32 @dx.op.binary.i32(i32 37, i32 %5789, i32 0)  ; IMax(a,b)
  %5791 = call i32 @dx.op.binary.i32(i32 38, i32 %5790, i32 31)  ; IMin(a,b)
  %5792 = sub nsw i32 1, %5766
  %5793 = add nsw i32 %5792, %5767
  %5794 = call i32 @dx.op.binary.i32(i32 37, i32 %5793, i32 0)  ; IMax(a,b)
  %5795 = call i32 @dx.op.binary.i32(i32 38, i32 %5794, i32 32)  ; IMin(a,b)
  %5796 = and i32 %5795, 31
  %5797 = shl i32 -1, %5796
  %5798 = xor i32 %5797, -1
  %5799 = and i32 %5791, 31
  %5800 = shl i32 %5798, %5799
  %5801 = icmp eq i32 %5795, 32
  %5802 = select i1 %5801, i32 -1, i32 %5800
  %5803 = and i32 %5802, %5787
  %5804 = icmp eq i32 %5803, 0
  br i1 %5804, label %6142, label %5805

; <label>:5805                                    ; preds = %5773
  br label %5806

; <label>:5806                                    ; preds = %5916, %5805
  %5807 = phi float [ %5917, %5916 ], [ %5774, %5805 ]
  %5808 = phi float [ %5918, %5916 ], [ %5775, %5805 ]
  %5809 = phi float [ %5919, %5916 ], [ %5776, %5805 ]
  %5810 = phi float [ %5920, %5916 ], [ %5777, %5805 ]
  %5811 = phi i32 [ %5819, %5916 ], [ %5803, %5805 ]
  %5812 = phi float [ %5921, %5916 ], [ %5779, %5805 ]
  %5813 = phi float [ %5922, %5916 ], [ %5780, %5805 ]
  %5814 = phi float [ %5923, %5916 ], [ %5781, %5805 ]
  %5815 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5811)  ; FirstbitLo(value)
  %5816 = add i32 %5815, %5788
  %5817 = and i32 %5815, 31
  %5818 = shl i32 1, %5817
  %5819 = xor i32 %5818, %5811
  %5820 = mul i32 %5816, 72
  %5821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5820, i32 undef)  ; BufferLoad(srv,index,wot)
  %5822 = extractvalue %dx.types.ResRet.f32 %5821, 0
  %5823 = extractvalue %dx.types.ResRet.f32 %5821, 1
  %5824 = extractvalue %dx.types.ResRet.f32 %5821, 2
  %5825 = add i32 %5820, 12
  %5826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.i32 %5826, 0
  %5828 = add i32 %5820, 16
  %5829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5828, i32 undef)  ; BufferLoad(srv,index,wot)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.ResRet.f32 %5829, 2
  %5833 = add i32 %5820, 28
  %5834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = add i32 %5820, 32
  %5837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5836, i32 undef)  ; BufferLoad(srv,index,wot)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.ResRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.ResRet.f32 %5837, 2
  %5841 = extractvalue %dx.types.ResRet.f32 %5837, 3
  %5842 = add i32 %5820, 48
  %5843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.ResRet.f32 %5843, 1
  %5846 = add i32 %5820, 56
  %5847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5846, i32 undef)  ; BufferLoad(srv,index,wot)
  %5848 = extractvalue %dx.types.ResRet.f32 %5847, 0
  %5849 = extractvalue %dx.types.ResRet.f32 %5847, 1
  %5850 = add i32 %5820, 64
  %5851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5850, i32 undef)  ; BufferLoad(srv,index,wot)
  %5852 = extractvalue %dx.types.ResRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.ResRet.f32 %5851, 1
  %5854 = mul i32 %5816, 60
  %5855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5854, i32 undef)  ; BufferLoad(srv,index,wot)
  %5856 = extractvalue %dx.types.ResRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.ResRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.ResRet.f32 %5855, 2
  %5859 = add i32 %5854, 12
  %5860 = add i32 %5854, 48
  %5861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5860, i32 undef)  ; BufferLoad(srv,index,wot)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  %5865 = and i32 %5827, 32767
  %5866 = bitcast float %5822 to i32
  %5867 = icmp eq i32 %5866, -1
  %5868 = bitcast float %5823 to i32
  %5869 = and i32 %5827, 32768
  %5870 = icmp ne i32 %5869, 0
  %5871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.CBufRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.CBufRet.f32 %5871, 2
  %5875 = fsub fast float %5856, %5872
  %5876 = fsub fast float %5857, %5873
  %5877 = fsub fast float %5858, %5874
  %5878 = fsub fast float %144, %5875
  %5879 = fsub fast float %145, %5876
  %5880 = fsub fast float %146, %5877
  %5881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5859, i32 undef)  ; BufferLoad(srv,index,wot)
  %5882 = extractvalue %dx.types.ResRet.f32 %5881, 0
  %5883 = extractvalue %dx.types.ResRet.f32 %5881, 1
  %5884 = extractvalue %dx.types.ResRet.f32 %5881, 2
  %5885 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5882, float %5883, float %5884)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = add i32 %5854, 24
  %5887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5886, i32 undef)  ; BufferLoad(srv,index,wot)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5888, float %5889, float %5890)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = add i32 %5854, 36
  %5893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5892, i32 undef)  ; BufferLoad(srv,index,wot)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.ResRet.f32 %5893, 2
  %5897 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5898 = call float @dx.op.unary.f32(i32 6, float %5885)  ; FAbs(value)
  %5899 = call float @dx.op.unary.f32(i32 6, float %5891)  ; FAbs(value)
  %5900 = call float @dx.op.unary.f32(i32 6, float %5897)  ; FAbs(value)
  %5901 = fsub fast float %5862, %5898
  %5902 = fsub fast float %5863, %5899
  %5903 = fsub fast float %5864, %5900
  %5904 = fmul fast float %5901, %5830
  %5905 = fmul fast float %5902, %5831
  %5906 = fmul fast float %5903, %5832
  %5907 = call float @dx.op.binary.f32(i32 36, float %5905, float %5906)  ; FMin(a,b)
  %5908 = call float @dx.op.binary.f32(i32 36, float %5904, float %5907)  ; FMin(a,b)
  %5909 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5910 = call float @dx.op.binary.f32(i32 36, float %5810, float %5909)  ; FMin(a,b)
  %5911 = uitofp i1 %5870 to float
  %5912 = fadd fast float %4882, 1.000000e+00
  %5913 = fsub fast float %5912, %5911
  %5914 = fmul fast float %5910, %5913
  %5915 = fcmp fast ogt float %5914, 0.000000e+00
  br i1 %5915, label %5925, label %5916

; <label>:5916                                    ; preds = %6067, %5806
  %5917 = phi float [ %6131, %6067 ], [ %5807, %5806 ]
  %5918 = phi float [ %6132, %6067 ], [ %5808, %5806 ]
  %5919 = phi float [ %6133, %6067 ], [ %5809, %5806 ]
  %5920 = phi float [ %6140, %6067 ], [ %5810, %5806 ]
  %5921 = phi float [ %6137, %6067 ], [ %5812, %5806 ]
  %5922 = phi float [ %6138, %6067 ], [ %5813, %5806 ]
  %5923 = phi float [ %6139, %6067 ], [ %5814, %5806 ]
  %5924 = icmp eq i32 %5811, %5818
  br i1 %5924, label %6141, label %5806

; <label>:5925                                    ; preds = %5806
  br i1 %5867, label %5983, label %5926

; <label>:5926                                    ; preds = %5925
  %5927 = fsub fast float -0.000000e+00, %5882
  %5928 = fsub fast float -0.000000e+00, %5883
  %5929 = fsub fast float -0.000000e+00, %5884
  %5930 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5927, float %5928, float %5929)  ; Dot3(ax,ay,az,bx,by,bz)
  %5931 = fsub fast float -0.000000e+00, %5930
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5927, float %5928, float %5929)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = fadd fast float %5932, %5845
  %5934 = fadd fast float %5844, %5932
  %5935 = fsub fast float -0.000000e+00, %5934
  %5936 = fcmp ogt float %5930, -0.000000e+00
  %5937 = select i1 %5936, float %5935, float %5933
  %5938 = call float @dx.op.unary.f32(i32 6, float %5931)  ; FAbs(value)
  %5939 = fdiv fast float 1.000000e+00, %5938
  %5940 = fmul fast float %5937, %5939
  %5941 = call float @dx.op.binary.f32(i32 35, float %5940, float 0.000000e+00)  ; FMax(a,b)
  %5942 = fsub fast float -0.000000e+00, %5888
  %5943 = fsub fast float -0.000000e+00, %5889
  %5944 = fsub fast float -0.000000e+00, %5890
  %5945 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5942, float %5943, float %5944)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = fsub fast float -0.000000e+00, %5945
  %5947 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5942, float %5943, float %5944)  ; Dot3(ax,ay,az,bx,by,bz)
  %5948 = fadd fast float %5947, %5849
  %5949 = fadd fast float %5848, %5947
  %5950 = fsub fast float -0.000000e+00, %5949
  %5951 = fcmp ogt float %5945, -0.000000e+00
  %5952 = select i1 %5951, float %5950, float %5948
  %5953 = call float @dx.op.unary.f32(i32 6, float %5946)  ; FAbs(value)
  %5954 = fdiv fast float 1.000000e+00, %5953
  %5955 = fmul fast float %5952, %5954
  %5956 = call float @dx.op.binary.f32(i32 35, float %5955, float 0.000000e+00)  ; FMax(a,b)
  %5957 = fsub fast float -0.000000e+00, %5894
  %5958 = fsub fast float -0.000000e+00, %5895
  %5959 = fsub fast float -0.000000e+00, %5896
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5957, float %5958, float %5959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = fsub fast float -0.000000e+00, %5960
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5878, float %5879, float %5880, float %5957, float %5958, float %5959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = fadd fast float %5962, %5853
  %5964 = fadd fast float %5852, %5962
  %5965 = fsub fast float -0.000000e+00, %5964
  %5966 = fcmp ogt float %5960, -0.000000e+00
  %5967 = select i1 %5966, float %5965, float %5963
  %5968 = call float @dx.op.unary.f32(i32 6, float %5961)  ; FAbs(value)
  %5969 = fdiv fast float 1.000000e+00, %5968
  %5970 = fmul fast float %5967, %5969
  %5971 = call float @dx.op.binary.f32(i32 35, float %5970, float 0.000000e+00)  ; FMax(a,b)
  %5972 = call float @dx.op.binary.f32(i32 36, float %5956, float %5971)  ; FMin(a,b)
  %5973 = call float @dx.op.binary.f32(i32 36, float %5941, float %5972)  ; FMin(a,b)
  %5974 = fmul fast float %5973, %5756
  %5975 = fmul fast float %5973, %5757
  %5976 = fmul fast float %5973, %5758
  %5977 = fadd fast float %5974, %144
  %5978 = fadd fast float %5975, %145
  %5979 = fadd fast float %5976, %146
  %5980 = fsub fast float %5977, %5822
  %5981 = fsub fast float %5978, %5823
  %5982 = fsub fast float %5979, %5824
  br label %5990

; <label>:5983                                    ; preds = %5925
  %5984 = fmul fast float %5756, 8.096000e+03
  %5985 = fmul fast float %5757, 8.096000e+03
  %5986 = fmul fast float %5758, 8.096000e+03
  %5987 = fadd fast float %5984, %144
  %5988 = fadd fast float %5985, %145
  %5989 = fadd fast float %5986, %146
  br label %5990

; <label>:5990                                    ; preds = %5983, %5926
  %5991 = phi float [ %5756, %5983 ], [ %5980, %5926 ]
  %5992 = phi float [ %5757, %5983 ], [ %5981, %5926 ]
  %5993 = phi float [ %5758, %5983 ], [ %5982, %5926 ]
  %5994 = phi float [ %5987, %5983 ], [ %5977, %5926 ]
  %5995 = phi float [ %5988, %5983 ], [ %5978, %5926 ]
  %5996 = phi float [ %5989, %5983 ], [ %5979, %5926 ]
  %5997 = fcmp fast olt float %5841, 1.000000e+00
  br i1 %5997, label %5998, label %6029, !dx.controlflow.hints !87

; <label>:5998                                    ; preds = %5990
  %5999 = fmul fast float %5993, %5839
  %6000 = fmul fast float %5992, %5840
  %6001 = fsub fast float %5999, %6000
  %6002 = fmul fast float %5991, %5840
  %6003 = fmul fast float %5993, %5838
  %6004 = fsub fast float %6002, %6003
  %6005 = fmul fast float %5992, %5838
  %6006 = fmul fast float %5991, %5839
  %6007 = fsub fast float %6005, %6006
  %6008 = fmul fast float %6001, 2.000000e+00
  %6009 = fmul fast float %6004, 2.000000e+00
  %6010 = fmul fast float %6007, 2.000000e+00
  %6011 = fmul fast float %6008, %5841
  %6012 = fmul fast float %6009, %5841
  %6013 = fmul fast float %6010, %5841
  %6014 = fmul fast float %6010, %5839
  %6015 = fmul fast float %6009, %5840
  %6016 = fmul fast float %6008, %5840
  %6017 = fmul fast float %6010, %5838
  %6018 = fmul fast float %6009, %5838
  %6019 = fmul fast float %6008, %5839
  %6020 = fadd fast float %6014, %5991
  %6021 = fadd fast float %6020, %6011
  %6022 = fsub fast float %6021, %6015
  %6023 = fsub fast float %5992, %6017
  %6024 = fadd fast float %6023, %6012
  %6025 = fadd fast float %6024, %6016
  %6026 = fadd fast float %6013, %5993
  %6027 = fsub fast float %6026, %6019
  %6028 = fadd fast float %6027, %6018
  br label %6029

; <label>:6029                                    ; preds = %5998, %5990
  %6030 = phi float [ %6022, %5998 ], [ %5991, %5990 ]
  %6031 = phi float [ %6025, %5998 ], [ %5992, %5990 ]
  %6032 = phi float [ %6028, %5998 ], [ %5993, %5990 ]
  br i1 %5867, label %6064, label %6033

; <label>:6033                                    ; preds = %6029
  %6034 = fmul fast float %5083, 0x400187C840000000
  %6035 = fadd fast float %6034, 0xC00EFC2120000000
  %6036 = fmul fast float %6035, %5083
  %6037 = fadd fast float %6036, 0x3FE5D16340000000
  %6038 = fmul fast float %6037, %5083
  %6039 = fadd fast float %6038, 1.000000e+00
  %6040 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6041 = fsub fast float %5994, %144
  %6042 = fsub fast float %5995, %145
  %6043 = fsub fast float %5996, %146
  %6044 = fsub fast float %5994, %5822
  %6045 = fsub fast float %5995, %5823
  %6046 = fsub fast float %5996, %5824
  %6047 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6041, float %6042, float %6043)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = call float @dx.op.dot3.f32(i32 55, float %6044, float %6045, float %6046, float %6044, float %6045, float %6046)  ; Dot3(ax,ay,az,bx,by,bz)
  %6049 = fadd fast float %6048, 0x3EE4F8B580000000
  %6050 = fdiv fast float %6047, %6049
  %6051 = bitcast float %6050 to i32
  %6052 = ashr i32 %6051, 1
  %6053 = add nsw i32 %6052, 532487669
  %6054 = bitcast i32 %6053 to float
  %6055 = fmul fast float %6054, %6040
  %6056 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  %6057 = fmul fast float %6056, 0x4009981AE0000000
  %6058 = fsub fast float 0x40111BBD80000000, %6057
  %6059 = fmul fast float %6058, %6056
  %6060 = fadd fast float %6059, 0xC0009F6020000000
  %6061 = fmul fast float %6060, %6056
  %6062 = fadd fast float %6061, 1.000000e+00
  %6063 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  br label %6067

; <label>:6064                                    ; preds = %6029
  %6065 = icmp ne i32 %5868, -1
  %6066 = zext i1 %6065 to i32
  br label %6067

; <label>:6067                                    ; preds = %6064, %6033
  %6068 = phi float [ %5083, %6064 ], [ %6063, %6033 ]
  %6069 = phi i32 [ %6066, %6064 ], [ 0, %6033 ]
  %6070 = fmul float %6068, 5.000000e+00
  %6071 = fsub float 5.000000e+00, %6070
  %6072 = icmp ne i32 %6069, 0
  %6073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6073, 3
  %6075 = fadd fast float %6074, %6071
  %6076 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6075)  ; FMax(a,b)
  %6077 = call float @dx.op.unary.f32(i32 6, float %6030)  ; FAbs(value)
  %6078 = call float @dx.op.unary.f32(i32 6, float %6031)  ; FAbs(value)
  %6079 = fadd fast float %6078, %6077
  %6080 = call float @dx.op.unary.f32(i32 6, float %6032)  ; FAbs(value)
  %6081 = fadd fast float %6079, %6080
  %6082 = fcmp fast oeq float %6081, 0.000000e+00
  %6083 = fdiv fast float 1.000000e+00, %6081
  %6084 = select i1 %6082, float 1.000000e+00, float %6083
  %6085 = fmul fast float %6084, %6030
  %6086 = fmul fast float %6084, %6031
  %6087 = call float @dx.op.unary.f32(i32 6, float %6086)  ; FAbs(value)
  %6088 = call float @dx.op.unary.f32(i32 6, float %6085)  ; FAbs(value)
  %6089 = fsub fast float 1.000000e+00, %6087
  %6090 = fsub fast float 1.000000e+00, %6088
  %6091 = fcmp fast oge float %6085, 0.000000e+00
  %6092 = fcmp fast oge float %6086, 0.000000e+00
  %6093 = select i1 %6091, float 1.000000e+00, float -1.000000e+00
  %6094 = select i1 %6092, float 1.000000e+00, float -1.000000e+00
  %6095 = fcmp fast ole float %6032, 0.000000e+00
  %6096 = fmul fast float %6093, %6089
  %6097 = fmul fast float %6094, %6090
  %6098 = select i1 %6095, float %6096, float %6085
  %6099 = select i1 %6095, float %6097, float %6086
  %6100 = fmul fast float %6098, 5.000000e-01
  %6101 = fmul fast float %6099, 5.000000e-01
  %6102 = fadd fast float %6100, 5.000000e-01
  %6103 = fadd fast float %6101, 5.000000e-01
  %6104 = uitofp i32 %5865 to float
  %6105 = call float @dx.op.binary.f32(i32 36, float %6076, float 3.000000e+00)  ; FMin(a,b)
  %6106 = fadd fast float %6105, 2.000000e+00
  %6107 = call float @dx.op.unary.f32(i32 21, float %6106)  ; Exp(value)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6073, 1
  %6109 = fmul fast float %6108, %6107
  %6110 = fmul fast float %6109, 2.000000e+00
  %6111 = fsub fast float 1.000000e+00, %6110
  %6112 = fmul fast float %6102, %6111
  %6113 = fmul fast float %6103, %6111
  %6114 = fadd fast float %6112, %6109
  %6115 = fadd fast float %6113, %6109
  %6116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %6114, float %6115, float %6104, float undef, i32 0, i32 0, i32 undef, float %6076)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.ResRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.ResRet.f32 %6116, 2
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 3
  %6122 = fmul fast float %6121, %5835
  %6123 = call float @dx.op.binary.f32(i32 36, float %5129, float %6122)  ; FMin(a,b)
  %6124 = select i1 %6072, float %6123, float %6122
  %6125 = fmul fast float %6117, %5914
  %6126 = fmul fast float %6125, %6124
  %6127 = fmul fast float %6118, %5914
  %6128 = fmul fast float %6127, %6124
  %6129 = fmul fast float %6119, %5914
  %6130 = fmul fast float %6129, %6124
  %6131 = fadd fast float %6126, %5807
  %6132 = fadd fast float %6128, %5808
  %6133 = fadd fast float %6130, %5809
  %6134 = fmul fast float %5994, %5914
  %6135 = fmul fast float %5995, %5914
  %6136 = fmul fast float %5996, %5914
  %6137 = fadd fast float %6134, %5812
  %6138 = fadd fast float %6135, %5813
  %6139 = fadd fast float %6136, %5814
  %6140 = fsub fast float %5810, %5914
  br label %5916

; <label>:6141                                    ; preds = %5916
  br label %6142

; <label>:6142                                    ; preds = %6141, %5773
  %6143 = phi float [ %5774, %5773 ], [ %5917, %6141 ]
  %6144 = phi float [ %5775, %5773 ], [ %5918, %6141 ]
  %6145 = phi float [ %5776, %5773 ], [ %5919, %6141 ]
  %6146 = phi float [ %5777, %5773 ], [ %5920, %6141 ]
  %6147 = phi float [ %5779, %5773 ], [ %5921, %6141 ]
  %6148 = phi float [ %5780, %5773 ], [ %5922, %6141 ]
  %6149 = phi float [ %5781, %5773 ], [ %5923, %6141 ]
  %6150 = add i32 %5778, 1
  %6151 = icmp ugt i32 %6150, %5770
  br i1 %6151, label %6152, label %5773, !llvm.loop !88

; <label>:6152                                    ; preds = %6142
  br label %6153

; <label>:6153                                    ; preds = %6152, %5755
  %6154 = phi float [ 0.000000e+00, %5755 ], [ %6143, %6152 ]
  %6155 = phi float [ 0.000000e+00, %5755 ], [ %6144, %6152 ]
  %6156 = phi float [ 0.000000e+00, %5755 ], [ %6145, %6152 ]
  %6157 = phi float [ 0.000000e+00, %5755 ], [ %6147, %6152 ]
  %6158 = phi float [ 0.000000e+00, %5755 ], [ %6148, %6152 ]
  %6159 = phi float [ 0.000000e+00, %5755 ], [ %6149, %6152 ]
  %6160 = call float @dx.op.dot3.f32(i32 55, float %6154, float %6155, float %6156, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6161 = select i1 %186, float 0.000000e+00, float %6154
  %6162 = select i1 %186, float %6160, float %6155
  %6163 = select i1 %186, float 0.000000e+00, float %6156
  %6164 = fcmp fast olt float %5679, 0.000000e+00
  %6165 = call float @dx.op.unary.f32(i32 6, float %5679)  ; FAbs(value)
  %6166 = fmul fast float %6165, %5680
  %6167 = fmul fast float %6165, %5681
  %6168 = fmul fast float %6165, %5682
  %6169 = select i1 %6164, float %5680, float %6166
  %6170 = select i1 %6164, float %5681, float %6167
  %6171 = select i1 %6164, float %5682, float %6168
  %6172 = fsub fast float 1.000000e+00, %6165
  %6173 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6174 = fmul fast float %6173, %6161
  %6175 = fmul fast float %6173, %6162
  %6176 = fmul fast float %6173, %6163
  %6177 = fadd fast float %6169, %6174
  %6178 = fadd fast float %6170, %6175
  %6179 = fadd fast float %6171, %6176
  %6180 = fcmp fast une float %5429, 0.000000e+00
  br i1 %6180, label %6281, label %6181

; <label>:6181                                    ; preds = %6153
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 0
  %6184 = extractvalue %dx.types.CBufRet.f32 %6182, 1
  %6185 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6186 = extractvalue %dx.types.CBufRet.f32 %6182, 3
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.CBufRet.f32 %6187, 1
  %6190 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6191 = extractvalue %dx.types.CBufRet.f32 %6187, 3
  %6192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6193 = extractvalue %dx.types.CBufRet.f32 %6192, 0
  %6194 = extractvalue %dx.types.CBufRet.f32 %6192, 1
  %6195 = extractvalue %dx.types.CBufRet.f32 %6192, 2
  %6196 = extractvalue %dx.types.CBufRet.f32 %6192, 3
  %6197 = call float @dx.op.dot3.f32(i32 55, float %6193, float %6194, float %6195, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %6198 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6193, float %6194, float %6195)  ; Dot3(ax,ay,az,bx,by,bz)
  %6199 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %6193, float %6194, float %6195)  ; Dot3(ax,ay,az,bx,by,bz)
  %6200 = fadd fast float %5083, -1.000000e+00
  %6201 = fsub fast float %6198, %6199
  %6202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6203 = extractvalue %dx.types.CBufRet.f32 %6202, 2
  %6204 = fmul fast float %6203, %6198
  %6205 = fdiv fast float 1.600000e+02, %6204
  %6206 = fmul fast float %6200, %6200
  %6207 = fmul fast float %6206, 0xBFB5B17960000000
  %6208 = fmul fast float %6207, %6201
  %6209 = fmul fast float %6208, %6205
  %6210 = call float @dx.op.unary.f32(i32 21, float %6209)  ; Exp(value)
  %6211 = fmul fast float %6210, 0x3FF04B2960000000
  %6212 = fsub fast float 0x3FF04B2960000000, %6211
  %6213 = call float @dx.op.unary.f32(i32 7, float %6212)  ; Saturate(value)
  %6214 = fmul fast float %6213, 4.000000e+00
  %6215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6216 = extractvalue %dx.types.CBufRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.CBufRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.CBufRet.f32 %6215, 2
  %6219 = fadd fast float %6216, %6157
  %6220 = fadd fast float %6217, %6158
  %6221 = fadd fast float %6218, %6159
  %6222 = fmul fast float %6219, %6183
  %6223 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6184, float %6222)  ; FMad(a,b,c)
  %6224 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6185, float %6223)  ; FMad(a,b,c)
  %6225 = fadd fast float %6224, %6186
  %6226 = fmul fast float %6219, %6188
  %6227 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6189, float %6226)  ; FMad(a,b,c)
  %6228 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6190, float %6227)  ; FMad(a,b,c)
  %6229 = fadd fast float %6228, %6191
  %6230 = fmul fast float %6219, %6193
  %6231 = call float @dx.op.tertiary.f32(i32 46, float %6220, float %6194, float %6230)  ; FMad(a,b,c)
  %6232 = call float @dx.op.tertiary.f32(i32 46, float %6221, float %6195, float %6231)  ; FMad(a,b,c)
  %6233 = fadd fast float %6232, %6196
  %6234 = fdiv fast float %6225, %6233
  %6235 = fdiv fast float %6229, %6233
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6238 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6239 = fmul fast float %6237, %6234
  %6240 = fmul fast float %6238, %6235
  %6241 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6242 = extractvalue %dx.types.CBufRet.f32 %6236, 3
  %6243 = fadd fast float %6239, %6241
  %6244 = fadd fast float %6240, %6242
  %6245 = fmul fast float %6197, 8.000000e+00
  %6246 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6247 = fmul fast float %6243, 2.000000e+00
  %6248 = fmul fast float %6244, 2.000000e+00
  %6249 = fadd fast float %6247, -1.000000e+00
  %6250 = fadd fast float %6248, -1.000000e+00
  %6251 = fmul fast float %6249, %6249
  %6252 = fsub fast float 1.000000e+00, %6251
  %6253 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6254 = fmul fast float %6250, %6250
  %6255 = fsub fast float 1.000000e+00, %6254
  %6256 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6257 = fmul fast float %5429, %6253
  %6258 = fmul fast float %6257, %6256
  %6259 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6260 = fmul fast float %6259, %6246
  %6261 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %6243, float %6244, float undef, float undef, i32 0, i32 0, i32 undef, float %6214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6262 = extractvalue %dx.types.ResRet.f32 %6261, 0
  %6263 = extractvalue %dx.types.ResRet.f32 %6261, 1
  %6264 = extractvalue %dx.types.ResRet.f32 %6261, 2
  %6265 = select i1 %186, float 0.000000e+00, float %6263
  %6266 = select i1 %186, float 0.000000e+00, float %6264
  %6267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6268 = extractvalue %dx.types.CBufRet.f32 %6267, 2
  %6269 = fmul fast float %6268, %6262
  %6270 = fmul fast float %6265, %6268
  %6271 = fmul fast float %6266, %6268
  %6272 = fsub fast float %6269, %6161
  %6273 = fsub fast float %6270, %6162
  %6274 = fsub fast float %6271, %6163
  %6275 = fmul fast float %6272, %6260
  %6276 = fmul fast float %6273, %6260
  %6277 = fmul fast float %6274, %6260
  %6278 = fadd fast float %6275, %6161
  %6279 = fadd fast float %6276, %6162
  %6280 = fadd fast float %6277, %6163
  br label %6281

; <label>:6281                                    ; preds = %6181, %6153, %5678, %5402
  %6282 = phi float [ %5680, %5678 ], [ %6177, %6153 ], [ %5359, %5402 ], [ %6278, %6181 ]
  %6283 = phi float [ %5681, %5678 ], [ %6178, %6153 ], [ %5360, %5402 ], [ %6279, %6181 ]
  %6284 = phi float [ %5682, %5678 ], [ %6179, %6153 ], [ %5361, %5402 ], [ %6280, %6181 ]
  %6285 = fmul fast float %5408, %5355
  %6286 = fmul fast float %5408, %5356
  %6287 = fmul fast float %5408, %5357
  %6288 = call float @dx.op.dot3.f32(i32 55, float %5080, float %5081, float %5082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6289 = fcmp fast ogt float %6288, 0x3E7FF19E20000000
  %6290 = fdiv fast float 1.000000e+00, %6288
  %6291 = select i1 %6289, float %6290, float 0.000000e+00
  %6292 = fmul fast float %6291, %5080
  %6293 = fmul fast float %6291, %5081
  %6294 = fmul fast float %6291, %5082
  %6295 = fadd fast float %6292, -1.000000e+00
  %6296 = fadd fast float %6293, -1.000000e+00
  %6297 = fadd fast float %6294, -1.000000e+00
  %6298 = fmul fast float %6295, 5.000000e-01
  %6299 = fmul fast float %6296, 5.000000e-01
  %6300 = fmul fast float %6297, 5.000000e-01
  %6301 = fadd fast float %6298, 1.000000e+00
  %6302 = fadd fast float %6299, 1.000000e+00
  %6303 = fadd fast float %6300, 1.000000e+00
  %6304 = fmul fast float %6282, %5403
  %6305 = fmul fast float %6283, %5404
  %6306 = fmul fast float %6284, %5405
  %6307 = fsub fast float 1.000000e+00, %5102
  %6308 = bitcast float %6307 to i32
  %6309 = sitofp i32 %6308 to float
  %6310 = fmul fast float %6309, 5.000000e+00
  %6311 = fadd fast float %6310, 0xC1EFBF8940000000
  %6312 = fptosi float %6311 to i32
  %6313 = bitcast i32 %6312 to float
  %6314 = fmul fast float %6313, %4473
  %6315 = fmul fast float %5355, %6314
  %6316 = fmul fast float %6315, %5408
  %6317 = fmul fast float %6316, %6301
  %6318 = fmul fast float %5356, %6314
  %6319 = fmul fast float %6318, %5408
  %6320 = fmul fast float %6319, %6302
  %6321 = fmul fast float %5357, %6314
  %6322 = fmul fast float %6321, %5408
  %6323 = fmul fast float %6322, %6303
  %6324 = fmul fast float %6285, %4469
  %6325 = fmul fast float %6286, %4469
  %6326 = fmul fast float %6287, %4469
  %6327 = fadd fast float %6304, %4465
  %6328 = fadd fast float %6327, %6317
  %6329 = fmul fast float %6328, %4469
  %6330 = fadd fast float %6305, %4466
  %6331 = fadd fast float %6330, %6320
  %6332 = fmul fast float %6331, %4469
  %6333 = fadd fast float %6306, %4467
  %6334 = fadd fast float %6333, %6323
  %6335 = fmul fast float %6334, %4469
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 3
  %6338 = fcmp fast oeq float %6337, 0.000000e+00
  br i1 %6338, label %6557, label %6339

; <label>:6339                                    ; preds = %6281
  %6340 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6341 = extractvalue %dx.types.CBufRet.f32 %6336, 1
  %6342 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = extractvalue %dx.types.CBufRet.f32 %6343, 1
  %6346 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.CBufRet.f32 %6347, 1
  %6350 = call float @dx.op.dot3.f32(i32 55, float %6344, float %6345, float %6346, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6351 = select i1 %186, float %6348, float %6344
  %6352 = select i1 %186, float %6350, float %6345
  %6353 = select i1 %186, float %6349, float %6346
  %6354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6355 = extractvalue %dx.types.CBufRet.f32 %6354, 1
  %6356 = fcmp fast une float %6355, 0.000000e+00
  br i1 %6356, label %6357, label %6374

; <label>:6357                                    ; preds = %6339
  %6358 = fptoui float %85 to i32
  %6359 = fptoui float %86 to i32
  %6360 = lshr i32 %6358, 4
  %6361 = lshr i32 %6359, 4
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 0
  %6364 = fptoui float %6363 to i32
  %6365 = add i32 %6364, 15
  %6366 = lshr i32 %6365, 4
  %6367 = mul i32 %6366, %6361
  %6368 = add i32 %6367, %6360
  %6369 = shl i32 %6368, 3
  %6370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6369, i32 undef)  ; BufferLoad(srv,index,wot)
  %6371 = extractvalue %dx.types.ResRet.i32 %6370, 0
  %6372 = and i32 %6371, -268435456
  %6373 = icmp eq i32 %6372, -1342177280
  br i1 %6373, label %6379, label %6374

; <label>:6374                                    ; preds = %6357, %6339
  %6375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %5088, float %5089, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6376 = extractvalue %dx.types.ResRet.f32 %6375, 0
  %6377 = extractvalue %dx.types.ResRet.f32 %6375, 1
  %6378 = extractvalue %dx.types.ResRet.f32 %6375, 2
  br label %6379

; <label>:6379                                    ; preds = %6374, %6357
  %6380 = phi float [ %6376, %6374 ], [ 0.000000e+00, %6357 ]
  %6381 = phi float [ %6377, %6374 ], [ 0.000000e+00, %6357 ]
  %6382 = phi float [ %6378, %6374 ], [ 0.000000e+00, %6357 ]
  %6383 = call float @dx.op.binary.f32(i32 36, float %6381, float %6382)  ; FMin(a,b)
  %6384 = call float @dx.op.binary.f32(i32 36, float %6380, float %6383)  ; FMin(a,b)
  %6385 = fcmp fast ogt float %6384, 0.000000e+00
  br i1 %6385, label %6386, label %6557, !dx.controlflow.hints !90

; <label>:6386                                    ; preds = %6379
  %6387 = fmul fast float %6380, %6351
  %6388 = fmul fast float %6381, %6352
  %6389 = fmul fast float %6382, %6353
  %6390 = fsub fast float %6340, %5073
  %6391 = fsub fast float %6341, %5072
  %6392 = fsub fast float %6342, %5071
  %6393 = call float @dx.op.dot3.f32(i32 55, float %6390, float %6391, float %6392, float %6390, float %6391, float %6392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6394 = call float @dx.op.unary.f32(i32 25, float %6393)  ; Rsqrt(value)
  %6395 = fmul fast float %6394, %6390
  %6396 = fmul fast float %6394, %6391
  %6397 = fmul fast float %6394, %6392
  %6398 = call float @dx.op.dot3.f32(i32 55, float %6340, float %6341, float %6342, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6399 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5069, float %5068, float %6395, float %6396, float %6397)  ; Dot3(ax,ay,az,bx,by,bz)
  %6400 = call float @dx.op.unary.f32(i32 7, float %6398)  ; Saturate(value)
  %6401 = fmul fast float %6400, %6400
  %6402 = fmul fast float %6401, %5127
  %6403 = call float @dx.op.unary.f32(i32 7, float %6402)  ; Saturate(value)
  %6404 = fmul fast float %6403, %6400
  %6405 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %6395, float %6396, float %6397)  ; Dot3(ax,ay,az,bx,by,bz)
  %6406 = fmul fast float %6405, %6405
  %6407 = call float @dx.op.unary.f32(i32 6, float %6398)  ; FAbs(value)
  %6408 = fsub fast float 1.000000e+00, %5120
  %6409 = fmul fast float %5102, %5102
  %6410 = fmul fast float %6409, %6408
  %6411 = fadd fast float %6410, %5120
  %6412 = bitcast float %6411 to i32
  %6413 = ashr i32 %6412, 1
  %6414 = add nsw i32 %6413, 532487669
  %6415 = bitcast i32 %6414 to float
  %6416 = fadd fast float %6415, %5102
  %6417 = fmul fast float %5120, %6406
  %6418 = fsub fast float 1.000000e+00, %6406
  %6419 = fadd fast float %6418, %6417
  %6420 = fmul fast float %6407, %6407
  %6421 = fmul fast float %6420, %6408
  %6422 = fadd fast float %6421, %5120
  %6423 = bitcast float %6422 to i32
  %6424 = ashr i32 %6423, 1
  %6425 = add nsw i32 %6424, 532487669
  %6426 = bitcast i32 %6425 to float
  %6427 = fadd fast float %6426, %6407
  %6428 = fmul fast float %6419, %6419
  %6429 = fmul fast float %6428, %6416
  %6430 = fmul fast float %6429, %6427
  %6431 = fdiv fast float 0x3FF0A00000000000, %6430
  %6432 = fmul fast float %6431, %5120
  %6433 = call float @dx.op.unary.f32(i32 6, float %6399)  ; FAbs(value)
  %6434 = fsub fast float 1.000000e+00, %6433
  %6435 = bitcast float %6434 to i32
  %6436 = sitofp i32 %6435 to float
  %6437 = fmul fast float %6436, 5.000000e+00
  %6438 = fadd fast float %6437, 0xC1EFBF8940000000
  %6439 = fptosi float %6438 to i32
  %6440 = bitcast i32 %6439 to float
  %6441 = fsub fast float 1.000000e+00, %5077
  %6442 = fsub fast float 1.000000e+00, %5078
  %6443 = fsub fast float 1.000000e+00, %5100
  %6444 = fmul fast float %6440, %6441
  %6445 = fmul fast float %6440, %6442
  %6446 = fmul fast float %6440, %6443
  %6447 = fadd fast float %6444, %5077
  %6448 = fadd fast float %6445, %5078
  %6449 = fadd fast float %6446, %5100
  br i1 %5375, label %6450, label %6473

; <label>:6450                                    ; preds = %6386
  %6451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4472, float %6433, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6452 = extractvalue %dx.types.ResRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.ResRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.ResRet.f32 %6451, 2
  %6455 = fadd fast float %6452, -5.000000e-01
  %6456 = fadd fast float %6453, -5.000000e-01
  %6457 = fadd fast float %6454, -5.000000e-01
  %6458 = fmul fast float %5077, 4.000000e+00
  %6459 = fmul fast float %6458, %6441
  %6460 = fmul fast float %6459, %6455
  %6461 = fmul fast float %5078, 4.000000e+00
  %6462 = fmul fast float %6461, %6442
  %6463 = fmul fast float %6462, %6456
  %6464 = fmul fast float %5100, 4.000000e+00
  %6465 = fmul fast float %6464, %6443
  %6466 = fmul fast float %6465, %6457
  %6467 = fadd fast float %6460, %6447
  %6468 = fadd fast float %6463, %6448
  %6469 = fadd fast float %6466, %6449
  %6470 = call float @dx.op.unary.f32(i32 7, float %6467)  ; Saturate(value)
  %6471 = call float @dx.op.unary.f32(i32 7, float %6468)  ; Saturate(value)
  %6472 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  br label %6473

; <label>:6473                                    ; preds = %6450, %6386
  %6474 = phi float [ %6470, %6450 ], [ %6447, %6386 ]
  %6475 = phi float [ %6471, %6450 ], [ %6448, %6386 ]
  %6476 = phi float [ %6472, %6450 ], [ %6449, %6386 ]
  %6477 = fmul fast float %6398, 9.843750e-01
  %6478 = fadd fast float %6477, 7.812500e-03
  %6479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6478, float %5365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 2
  %6481 = extractvalue %dx.types.ResRet.f32 %6479, 3
  %6482 = fmul fast float %6480, %5077
  %6483 = fmul fast float %6480, %5078
  %6484 = fmul fast float %6480, %5100
  %6485 = fadd fast float %6482, %6481
  %6486 = fadd fast float %6483, %6481
  %6487 = fadd fast float %6484, %6481
  br i1 %5375, label %6488, label %6511

; <label>:6488                                    ; preds = %6473
  %6489 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4472, float %6398, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6490 = extractvalue %dx.types.ResRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.ResRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.ResRet.f32 %6489, 2
  %6493 = fadd fast float %6490, -5.000000e-01
  %6494 = fadd fast float %6491, -5.000000e-01
  %6495 = fadd fast float %6492, -5.000000e-01
  %6496 = fmul fast float %5077, 4.000000e+00
  %6497 = fmul fast float %6496, %6441
  %6498 = fmul fast float %6497, %6493
  %6499 = fmul fast float %5078, 4.000000e+00
  %6500 = fmul fast float %6499, %6442
  %6501 = fmul fast float %6500, %6494
  %6502 = fmul fast float %5100, 4.000000e+00
  %6503 = fmul fast float %6502, %6443
  %6504 = fmul fast float %6503, %6495
  %6505 = fadd fast float %6498, %6485
  %6506 = fadd fast float %6501, %6486
  %6507 = fadd fast float %6504, %6487
  %6508 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6509 = call float @dx.op.unary.f32(i32 7, float %6506)  ; Saturate(value)
  %6510 = call float @dx.op.unary.f32(i32 7, float %6507)  ; Saturate(value)
  br label %6511

; <label>:6511                                    ; preds = %6488, %6473
  %6512 = phi float [ %6508, %6488 ], [ %6485, %6473 ]
  %6513 = phi float [ %6509, %6488 ], [ %6486, %6473 ]
  %6514 = phi float [ %6510, %6488 ], [ %6487, %6473 ]
  %6515 = call float @dx.op.binary.f32(i32 35, float %6513, float %6514)  ; FMax(a,b)
  %6516 = call float @dx.op.binary.f32(i32 35, float %6512, float %6515)  ; FMax(a,b)
  %6517 = fsub fast float 1.000000e+00, %6516
  %6518 = fmul fast float %6474, %6432
  %6519 = fmul fast float %6475, %6432
  %6520 = fmul fast float %6476, %6432
  %6521 = fsub fast float 1.000000e+00, %6399
  %6522 = bitcast float %6521 to i32
  %6523 = sitofp i32 %6522 to float
  %6524 = fmul fast float %6523, 5.000000e+00
  %6525 = fadd fast float %6524, 0xC1EFBF8940000000
  %6526 = fptosi float %6525 to i32
  %6527 = bitcast i32 %6526 to float
  %6528 = fmul fast float %6527, %4473
  %6529 = fmul fast float %6517, %6528
  %6530 = fmul fast float %6529, %6301
  %6531 = fmul fast float %6529, %6302
  %6532 = fmul fast float %6529, %6303
  %6533 = fadd fast float %6530, %6518
  %6534 = fadd fast float %6531, %6519
  %6535 = fadd fast float %6532, %6520
  %6536 = fmul fast float %6404, %6387
  %6537 = fmul fast float %6536, %6517
  %6538 = fmul fast float %6404, %6388
  %6539 = fmul fast float %6538, %6517
  %6540 = fmul fast float %6404, %6389
  %6541 = fmul fast float %6540, %6517
  %6542 = fmul fast float %6536, %6533
  %6543 = fmul fast float %6538, %6534
  %6544 = fmul fast float %6540, %6535
  %6545 = fadd fast float %6537, %6285
  %6546 = fmul fast float %6545, %4469
  %6547 = fadd fast float %6539, %6286
  %6548 = fmul fast float %6547, %4469
  %6549 = fadd fast float %6541, %6287
  %6550 = fmul fast float %6549, %4469
  %6551 = fadd fast float %6542, %6328
  %6552 = fmul fast float %6551, %4469
  %6553 = fadd fast float %6543, %6331
  %6554 = fmul fast float %6553, %4469
  %6555 = fadd fast float %6544, %6334
  %6556 = fmul fast float %6555, %4469
  br label %6557

; <label>:6557                                    ; preds = %6511, %6379, %6281
  %6558 = phi float [ %6329, %6281 ], [ %6329, %6379 ], [ %6552, %6511 ]
  %6559 = phi float [ %6332, %6281 ], [ %6332, %6379 ], [ %6554, %6511 ]
  %6560 = phi float [ %6335, %6281 ], [ %6335, %6379 ], [ %6556, %6511 ]
  %6561 = phi float [ %6324, %6281 ], [ %6324, %6379 ], [ %6546, %6511 ]
  %6562 = phi float [ %6325, %6281 ], [ %6325, %6379 ], [ %6548, %6511 ]
  %6563 = phi float [ %6326, %6281 ], [ %6326, %6379 ], [ %6550, %6511 ]
  %6564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.i32 %6564, 0
  %6566 = icmp eq i32 %6565, 0
  br i1 %6566, label %6997, label %6567

; <label>:6567                                    ; preds = %6557
  %6568 = fptoui float %85 to i32
  %6569 = fptoui float %86 to i32
  %6570 = lshr i32 %6568, 4
  %6571 = lshr i32 %6569, 4
  %6572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.i32 %6572, 0
  %6574 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6571, i32 %6573, i32 %6570)  ; UMad(a,b,c)
  %6575 = add nsw i32 %6565, -1
  %6576 = call i32 @dx.op.binary.i32(i32 37, i32 %6575, i32 0)  ; IMax(a,b)
  %6577 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6578 = fptoui float %6577 to i32
  %6579 = lshr i32 %6578, 5
  %6580 = call i32 @dx.op.binary.i32(i32 40, i32 %6579, i32 8191)  ; UMin(a,b)
  %6581 = shl i32 %6580, 2
  %6582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6581, i32 undef)  ; BufferLoad(srv,index,wot)
  %6583 = extractvalue %dx.types.ResRet.i32 %6582, 0
  %6584 = lshr i32 %6583, 16
  %6585 = and i32 %6583, 65535
  %6586 = lshr i32 %6583, 21
  %6587 = lshr i32 %6585, 5
  %6588 = call i32 @dx.op.binary.i32(i32 40, i32 %6587, i32 %6576)  ; UMin(a,b)
  %6589 = icmp ugt i32 %6586, %6588
  br i1 %6589, label %6997, label %6590

; <label>:6590                                    ; preds = %6567
  br label %6591

; <label>:6591                                    ; preds = %6987, %6590
  %6592 = phi i32 [ %6994, %6987 ], [ %6586, %6590 ]
  %6593 = phi float [ %6988, %6987 ], [ %6558, %6590 ]
  %6594 = phi float [ %6989, %6987 ], [ %6559, %6590 ]
  %6595 = phi float [ %6990, %6987 ], [ %6560, %6590 ]
  %6596 = phi float [ %6991, %6987 ], [ %6561, %6590 ]
  %6597 = phi float [ %6992, %6987 ], [ %6562, %6590 ]
  %6598 = phi float [ %6993, %6987 ], [ %6563, %6590 ]
  %6599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6600 = extractvalue %dx.types.CBufRet.i32 %6599, 0
  %6601 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6574, i32 %6600, i32 %6592)  ; UMad(a,b,c)
  %6602 = shl i32 %6601, 2
  %6603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6602, i32 undef)  ; BufferLoad(srv,index,wot)
  %6604 = extractvalue %dx.types.ResRet.i32 %6603, 0
  %6605 = shl i32 %6592, 5
  %6606 = sub nsw i32 %6584, %6605
  %6607 = call i32 @dx.op.binary.i32(i32 37, i32 %6606, i32 0)  ; IMax(a,b)
  %6608 = call i32 @dx.op.binary.i32(i32 38, i32 %6607, i32 31)  ; IMin(a,b)
  %6609 = sub nsw i32 1, %6584
  %6610 = add nsw i32 %6609, %6585
  %6611 = call i32 @dx.op.binary.i32(i32 37, i32 %6610, i32 0)  ; IMax(a,b)
  %6612 = call i32 @dx.op.binary.i32(i32 38, i32 %6611, i32 32)  ; IMin(a,b)
  %6613 = and i32 %6612, 31
  %6614 = shl i32 -1, %6613
  %6615 = xor i32 %6614, -1
  %6616 = and i32 %6608, 31
  %6617 = shl i32 %6615, %6616
  %6618 = icmp eq i32 %6612, 32
  %6619 = select i1 %6618, i32 -1, i32 %6617
  %6620 = and i32 %6619, %6604
  %6621 = icmp eq i32 %6620, 0
  br i1 %6621, label %6987, label %6622

; <label>:6622                                    ; preds = %6591
  br label %6623

; <label>:6623                                    ; preds = %6703, %6622
  %6624 = phi i32 [ %6635, %6703 ], [ %6620, %6622 ]
  %6625 = phi float [ %6704, %6703 ], [ %6593, %6622 ]
  %6626 = phi float [ %6705, %6703 ], [ %6594, %6622 ]
  %6627 = phi float [ %6706, %6703 ], [ %6595, %6622 ]
  %6628 = phi float [ %6707, %6703 ], [ %6596, %6622 ]
  %6629 = phi float [ %6708, %6703 ], [ %6597, %6622 ]
  %6630 = phi float [ %6709, %6703 ], [ %6598, %6622 ]
  %6631 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6624)  ; FirstbitLo(value)
  %6632 = add i32 %6631, %6605
  %6633 = and i32 %6631, 31
  %6634 = shl i32 1, %6633
  %6635 = xor i32 %6634, %6624
  %6636 = mul i32 %6632, 112
  %6637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6636, i32 undef)  ; BufferLoad(srv,index,wot)
  %6638 = extractvalue %dx.types.ResRet.f32 %6637, 0
  %6639 = extractvalue %dx.types.ResRet.f32 %6637, 1
  %6640 = extractvalue %dx.types.ResRet.f32 %6637, 2
  %6641 = or i32 %6636, 12
  %6642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6641, i32 undef)  ; BufferLoad(srv,index,wot)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 0
  %6644 = add i32 %6636, 44
  %6645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6644, i32 undef)  ; BufferLoad(srv,index,wot)
  %6646 = extractvalue %dx.types.ResRet.f32 %6645, 0
  %6647 = add i32 %6636, 48
  %6648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6647, i32 undef)  ; BufferLoad(srv,index,wot)
  %6649 = extractvalue %dx.types.ResRet.f32 %6648, 0
  %6650 = extractvalue %dx.types.ResRet.f32 %6648, 1
  %6651 = extractvalue %dx.types.ResRet.f32 %6648, 2
  %6652 = add i32 %6636, 80
  %6653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6652, i32 undef)  ; BufferLoad(srv,index,wot)
  %6654 = extractvalue %dx.types.ResRet.f32 %6653, 1
  %6655 = extractvalue %dx.types.ResRet.f32 %6653, 2
  %6656 = call float @dx.op.dot3.f32(i32 55, float %6638, float %6639, float %6640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6657 = select i1 %186, float %6654, float %6638
  %6658 = select i1 %186, float %6656, float %6639
  %6659 = select i1 %186, float %6655, float %6640
  %6660 = fsub fast float %6649, %144
  %6661 = fsub fast float %6650, %145
  %6662 = fsub fast float %6651, %146
  %6663 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6662, float %6660, float %6661, float %6662)  ; Dot3(ax,ay,az,bx,by,bz)
  %6664 = call float @dx.op.unary.f32(i32 24, float %6663)  ; Sqrt(value)
  %6665 = fdiv fast float 1.000000e+00, %6664
  %6666 = fmul fast float %6665, %6660
  %6667 = fmul fast float %6665, %6661
  %6668 = fmul fast float %6665, %6662
  %6669 = fadd fast float %6664, %6643
  %6670 = fdiv fast float 1.000000e+00, %6669
  %6671 = fmul float %6646, %6670
  %6672 = fmul float %6671, %6671
  %6673 = call float @dx.op.unary.f32(i32 7, float %6672)  ; Saturate(value)
  %6674 = and i32 %6634, %6620
  %6675 = icmp eq i32 %6674, 0
  br i1 %6675, label %6698, label %6676, !dx.controlflow.hints !91

; <label>:6676                                    ; preds = %6623
  %6677 = lshr i32 %6568, 5
  %6678 = lshr i32 %6569, 5
  %6679 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6677, i32 %6678, i32 %6632, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6680 = extractvalue %dx.types.ResRet.i32 %6679, 0
  %6681 = and i32 %6680, 3
  %6682 = icmp eq i32 %6681, 0
  %6683 = select i1 %6682, float 1.000000e+00, float 0.000000e+00
  %6684 = icmp eq i32 %6681, 3
  br i1 %6684, label %6685, label %6698

; <label>:6685                                    ; preds = %6676
  %6686 = lshr i32 %6680, 10
  %6687 = and i32 %6686, 8160
  %6688 = and i32 %6569, 31
  %6689 = or i32 %6687, %6688
  %6690 = lshr i32 %6680, 1
  %6691 = and i32 %6690, 16352
  %6692 = and i32 %6568, 31
  %6693 = or i32 %6691, %6692
  %6694 = lshr i32 %6680, 23
  %6695 = and i32 %6694, 255
  %6696 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6693, i32 %6689, i32 %6695, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6697 = extractvalue %dx.types.ResRet.f32 %6696, 0
  br label %6698

; <label>:6698                                    ; preds = %6685, %6676, %6623
  %6699 = phi float [ %6697, %6685 ], [ %6683, %6676 ], [ 0.000000e+00, %6623 ]
  %6700 = call float @dx.op.binary.f32(i32 36, float %6699, float %6699)  ; FMin(a,b)
  %6701 = call float @dx.op.binary.f32(i32 36, float %6699, float %6700)  ; FMin(a,b)
  %6702 = fcmp fast ogt float %6701, 0.000000e+00
  br i1 %6702, label %6711, label %6703, !dx.controlflow.hints !92

; <label>:6703                                    ; preds = %6943, %6698
  %6704 = phi float [ %6625, %6698 ], [ %6983, %6943 ]
  %6705 = phi float [ %6626, %6698 ], [ %6984, %6943 ]
  %6706 = phi float [ %6627, %6698 ], [ %6985, %6943 ]
  %6707 = phi float [ %6628, %6698 ], [ %6977, %6943 ]
  %6708 = phi float [ %6629, %6698 ], [ %6978, %6943 ]
  %6709 = phi float [ %6630, %6698 ], [ %6979, %6943 ]
  %6710 = icmp eq i32 %6624, %6634
  br i1 %6710, label %6986, label %6623

; <label>:6711                                    ; preds = %6698
  %6712 = fmul fast float %6699, %6657
  %6713 = fmul fast float %6699, %6658
  %6714 = fmul fast float %6699, %6659
  %6715 = fsub fast float %6651, %4873
  %6716 = fcmp fast ogt float %6715, 0.000000e+00
  %6717 = fsub fast float %146, %4873
  %6718 = fcmp fast ogt float %6717, 0.000000e+00
  %6719 = xor i1 %6718, %6716
  %6720 = fsub fast float %4873, %6651
  %6721 = fmul fast float %6720, 2.000000e+00
  %6722 = fadd fast float %6721, %6651
  %6723 = select i1 %6719, float %6651, float %6722
  %6724 = fsub fast float %6723, %146
  %6725 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6724, float %6660, float %6661, float %6724)  ; Dot3(ax,ay,az,bx,by,bz)
  %6726 = call float @dx.op.unary.f32(i32 25, float %6725)  ; Rsqrt(value)
  %6727 = fmul fast float %6726, %6660
  %6728 = fmul fast float %6726, %6661
  %6729 = fmul fast float %6726, %6724
  %6730 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4881)  ; Dot3(ax,ay,az,bx,by,bz)
  %6731 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6727, float %6728, float %6729)  ; Dot3(ax,ay,az,bx,by,bz)
  %6732 = fdiv fast float 1.000000e+00, %6731
  %6733 = fmul fast float %6732, %6730
  %6734 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6717, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6735 = fcmp fast ogt float %6734, 0.000000e+00
  %6736 = fcmp fast olt float %6734, 0.000000e+00
  %6737 = zext i1 %6735 to i32
  %6738 = zext i1 %6736 to i32
  %6739 = sub nsw i32 %6737, %6738
  %6740 = sitofp i32 %6739 to float
  %6741 = fsub fast float %6723, %4873
  %6742 = call float @dx.op.dot3.f32(i32 55, float %6660, float %6661, float %6741, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6743 = fcmp fast ogt float %6742, 0.000000e+00
  %6744 = fcmp fast olt float %6742, 0.000000e+00
  %6745 = zext i1 %6743 to i32
  %6746 = zext i1 %6744 to i32
  %6747 = sub nsw i32 %6745, %6746
  %6748 = sitofp i32 %6747 to float
  %6749 = fcmp fast une float %6740, %6748
  br i1 %6749, label %6750, label %6760

; <label>:6750                                    ; preds = %6711
  %6751 = fmul fast float %6733, %6729
  %6752 = fmul fast float %6733, %6728
  %6753 = fmul fast float %6733, %6727
  %6754 = fmul fast float %6753, %6753
  %6755 = fmul fast float %6752, %6752
  %6756 = fadd fast float %6754, %6755
  %6757 = fmul fast float %6751, %6751
  %6758 = fadd fast float %6756, %6757
  %6759 = call float @dx.op.unary.f32(i32 24, float %6758)  ; Sqrt(value)
  br label %6772

; <label>:6760                                    ; preds = %6711
  %6761 = icmp slt i32 %6739, 0
  br i1 %6761, label %6762, label %6772

; <label>:6762                                    ; preds = %6760
  %6763 = fsub fast float %144, %6649
  %6764 = fsub fast float %145, %6650
  %6765 = fsub fast float %146, %6723
  %6766 = fmul fast float %6763, %6763
  %6767 = fmul fast float %6764, %6764
  %6768 = fadd fast float %6766, %6767
  %6769 = fmul fast float %6765, %6765
  %6770 = fadd fast float %6768, %6769
  %6771 = call float @dx.op.unary.f32(i32 24, float %6770)  ; Sqrt(value)
  br label %6772

; <label>:6772                                    ; preds = %6762, %6760, %6750
  %6773 = phi float [ %6759, %6750 ], [ %6771, %6762 ], [ 0.000000e+00, %6760 ]
  %6774 = and i1 %6718, %6716
  %6775 = fsub fast float -0.000000e+00, %6773
  %6776 = select i1 %6774, float -0.000000e+00, float %6775
  %6777 = fmul fast float %4874, 0x3FF7154760000000
  %6778 = fmul fast float %6777, %6776
  %6779 = fmul fast float %4875, 0x3FF7154760000000
  %6780 = fmul fast float %6779, %6776
  %6781 = fmul fast float %4876, 0x3FF7154760000000
  %6782 = fmul fast float %6781, %6776
  %6783 = call float @dx.op.unary.f32(i32 21, float %6778)  ; Exp(value)
  %6784 = call float @dx.op.unary.f32(i32 21, float %6780)  ; Exp(value)
  %6785 = call float @dx.op.unary.f32(i32 21, float %6782)  ; Exp(value)
  %6786 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6787 = call float @dx.op.unary.f32(i32 7, float %6784)  ; Saturate(value)
  %6788 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  %6789 = fmul fast float %6712, %6786
  %6790 = fmul fast float %6713, %6787
  %6791 = fmul fast float %6714, %6788
  %6792 = fsub fast float %6666, %5073
  %6793 = fsub fast float %6667, %5072
  %6794 = fsub fast float %6668, %5071
  %6795 = call float @dx.op.dot3.f32(i32 55, float %6792, float %6793, float %6794, float %6792, float %6793, float %6794)  ; Dot3(ax,ay,az,bx,by,bz)
  %6796 = call float @dx.op.unary.f32(i32 25, float %6795)  ; Rsqrt(value)
  %6797 = fmul fast float %6796, %6792
  %6798 = fmul fast float %6796, %6793
  %6799 = fmul fast float %6796, %6794
  %6800 = call float @dx.op.dot3.f32(i32 55, float %6666, float %6667, float %6668, float %5074, float %5075, float %5076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6801 = call float @dx.op.dot3.f32(i32 55, float %5070, float %5069, float %5068, float %6797, float %6798, float %6799)  ; Dot3(ax,ay,az,bx,by,bz)
  %6802 = call float @dx.op.unary.f32(i32 7, float %6800)  ; Saturate(value)
  %6803 = fmul fast float %6802, %6673
  %6804 = fmul fast float %6802, %6802
  %6805 = fmul fast float %6804, %5127
  %6806 = call float @dx.op.unary.f32(i32 7, float %6805)  ; Saturate(value)
  %6807 = fmul fast float %6803, %6806
  %6808 = bitcast float %6663 to i32
  %6809 = ashr i32 %6808, 1
  %6810 = sub nsw i32 1597463007, %6809
  %6811 = bitcast i32 %6810 to float
  %6812 = fmul fast float %6811, %6660
  %6813 = fmul fast float %6811, %6661
  %6814 = fmul fast float %6811, %6662
  %6815 = fsub fast float %6812, %5073
  %6816 = fsub fast float %6813, %5072
  %6817 = fsub fast float %6814, %5071
  %6818 = call float @dx.op.dot3.f32(i32 55, float %6815, float %6816, float %6817, float %6815, float %6816, float %6817)  ; Dot3(ax,ay,az,bx,by,bz)
  %6819 = call float @dx.op.unary.f32(i32 25, float %6818)  ; Rsqrt(value)
  %6820 = fmul fast float %6815, %6819
  %6821 = fmul fast float %6816, %6819
  %6822 = fmul fast float %6817, %6819
  %6823 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %6820, float %6821, float %6822)  ; Dot3(ax,ay,az,bx,by,bz)
  %6824 = fmul fast float %6823, %6823
  %6825 = call float @dx.op.unary.f32(i32 6, float %6800)  ; FAbs(value)
  %6826 = fsub fast float 1.000000e+00, %5120
  %6827 = fmul fast float %5102, %5102
  %6828 = fmul fast float %6827, %6826
  %6829 = fadd fast float %6828, %5120
  %6830 = bitcast float %6829 to i32
  %6831 = ashr i32 %6830, 1
  %6832 = add nsw i32 %6831, 532487669
  %6833 = bitcast i32 %6832 to float
  %6834 = fadd fast float %6833, %5102
  %6835 = fmul fast float %5120, %6824
  %6836 = fsub fast float 1.000000e+00, %6824
  %6837 = fadd fast float %6836, %6835
  %6838 = fmul fast float %6825, %6825
  %6839 = fmul fast float %6838, %6826
  %6840 = fadd fast float %6839, %5120
  %6841 = bitcast float %6840 to i32
  %6842 = ashr i32 %6841, 1
  %6843 = add nsw i32 %6842, 532487669
  %6844 = bitcast i32 %6843 to float
  %6845 = fadd fast float %6844, %6825
  %6846 = fmul fast float %6837, %6837
  %6847 = fmul fast float %6846, %6834
  %6848 = fmul fast float %6847, %6845
  %6849 = fdiv fast float 1.000000e+00, %6848
  %6850 = bitcast float %5120 to i32
  %6851 = sitofp i32 %6850 to float
  %6852 = fmul fast float %6851, 0x3FE7F73180000000
  %6853 = fadd fast float %6852, 0x41AFE27C40000000
  %6854 = fptosi float %6853 to i32
  %6855 = bitcast i32 %6854 to float
  %6856 = fmul fast float %6646, 0x3FD80E9D60000000
  %6857 = fmul fast float %6856, %6811
  %6858 = fadd fast float %6855, %6857
  %6859 = bitcast float %6858 to i32
  %6860 = sub nsw i32 2129859010, %6859
  %6861 = bitcast i32 %6860 to float
  %6862 = fmul fast float %5120, %6849
  %6863 = fmul fast float %6862, %6855
  %6864 = fmul fast float %6863, %6861
  %6865 = call float @dx.op.unary.f32(i32 6, float %6801)  ; FAbs(value)
  %6866 = fsub fast float 1.000000e+00, %6865
  %6867 = bitcast float %6866 to i32
  %6868 = sitofp i32 %6867 to float
  %6869 = fmul fast float %6868, 5.000000e+00
  %6870 = fadd fast float %6869, 0xC1EFBF8940000000
  %6871 = fptosi float %6870 to i32
  %6872 = bitcast i32 %6871 to float
  %6873 = fsub fast float 1.000000e+00, %5077
  %6874 = fsub fast float 1.000000e+00, %5078
  %6875 = fsub fast float 1.000000e+00, %5100
  %6876 = fmul fast float %6872, %6873
  %6877 = fmul fast float %6872, %6874
  %6878 = fmul fast float %6872, %6875
  %6879 = fadd fast float %6876, %5077
  %6880 = fadd fast float %6877, %5078
  %6881 = fadd fast float %6878, %5100
  br i1 %5375, label %6882, label %6905

; <label>:6882                                    ; preds = %6772
  %6883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4472, float %6865, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.ResRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.ResRet.f32 %6883, 2
  %6887 = fadd fast float %6884, -5.000000e-01
  %6888 = fadd fast float %6885, -5.000000e-01
  %6889 = fadd fast float %6886, -5.000000e-01
  %6890 = fmul fast float %5077, 4.000000e+00
  %6891 = fmul fast float %6890, %6873
  %6892 = fmul fast float %6891, %6887
  %6893 = fmul fast float %5078, 4.000000e+00
  %6894 = fmul fast float %6893, %6874
  %6895 = fmul fast float %6894, %6888
  %6896 = fmul fast float %5100, 4.000000e+00
  %6897 = fmul fast float %6896, %6875
  %6898 = fmul fast float %6897, %6889
  %6899 = fadd fast float %6892, %6879
  %6900 = fadd fast float %6895, %6880
  %6901 = fadd fast float %6898, %6881
  %6902 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6903 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6904 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  br label %6905

; <label>:6905                                    ; preds = %6882, %6772
  %6906 = phi float [ %6902, %6882 ], [ %6879, %6772 ]
  %6907 = phi float [ %6903, %6882 ], [ %6880, %6772 ]
  %6908 = phi float [ %6904, %6882 ], [ %6881, %6772 ]
  %6909 = fmul fast float %6800, 9.843750e-01
  %6910 = fadd fast float %6909, 7.812500e-03
  %6911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6910, float %5365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 2
  %6913 = extractvalue %dx.types.ResRet.f32 %6911, 3
  %6914 = fmul fast float %6912, %5077
  %6915 = fmul fast float %6912, %5078
  %6916 = fmul fast float %6912, %5100
  %6917 = fadd fast float %6914, %6913
  %6918 = fadd fast float %6915, %6913
  %6919 = fadd fast float %6916, %6913
  br i1 %5375, label %6920, label %6943

; <label>:6920                                    ; preds = %6905
  %6921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4472, float %6800, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6922 = extractvalue %dx.types.ResRet.f32 %6921, 0
  %6923 = extractvalue %dx.types.ResRet.f32 %6921, 1
  %6924 = extractvalue %dx.types.ResRet.f32 %6921, 2
  %6925 = fadd fast float %6922, -5.000000e-01
  %6926 = fadd fast float %6923, -5.000000e-01
  %6927 = fadd fast float %6924, -5.000000e-01
  %6928 = fmul fast float %5077, 4.000000e+00
  %6929 = fmul fast float %6928, %6873
  %6930 = fmul fast float %6929, %6925
  %6931 = fmul fast float %5078, 4.000000e+00
  %6932 = fmul fast float %6931, %6874
  %6933 = fmul fast float %6932, %6926
  %6934 = fmul fast float %5100, 4.000000e+00
  %6935 = fmul fast float %6934, %6875
  %6936 = fmul fast float %6935, %6927
  %6937 = fadd fast float %6930, %6917
  %6938 = fadd fast float %6933, %6918
  %6939 = fadd fast float %6936, %6919
  %6940 = call float @dx.op.unary.f32(i32 7, float %6937)  ; Saturate(value)
  %6941 = call float @dx.op.unary.f32(i32 7, float %6938)  ; Saturate(value)
  %6942 = call float @dx.op.unary.f32(i32 7, float %6939)  ; Saturate(value)
  br label %6943

; <label>:6943                                    ; preds = %6920, %6905
  %6944 = phi float [ %6940, %6920 ], [ %6917, %6905 ]
  %6945 = phi float [ %6941, %6920 ], [ %6918, %6905 ]
  %6946 = phi float [ %6942, %6920 ], [ %6919, %6905 ]
  %6947 = call float @dx.op.binary.f32(i32 35, float %6945, float %6946)  ; FMax(a,b)
  %6948 = call float @dx.op.binary.f32(i32 35, float %6944, float %6947)  ; FMax(a,b)
  %6949 = fsub fast float 1.000000e+00, %6948
  %6950 = fmul fast float %6906, %6864
  %6951 = fmul fast float %6907, %6864
  %6952 = fmul fast float %6908, %6864
  %6953 = fsub fast float 1.000000e+00, %6801
  %6954 = bitcast float %6953 to i32
  %6955 = sitofp i32 %6954 to float
  %6956 = fmul fast float %6955, 5.000000e+00
  %6957 = fadd fast float %6956, 0xC1EFBF8940000000
  %6958 = fptosi float %6957 to i32
  %6959 = bitcast i32 %6958 to float
  %6960 = fmul fast float %6959, %4473
  %6961 = fmul fast float %6949, %6960
  %6962 = fmul fast float %6961, %6301
  %6963 = fmul fast float %6961, %6302
  %6964 = fmul fast float %6961, %6303
  %6965 = fadd fast float %6962, %6950
  %6966 = fadd fast float %6963, %6951
  %6967 = fadd fast float %6964, %6952
  %6968 = fmul fast float %6789, %4469
  %6969 = fmul fast float %6968, %6807
  %6970 = fmul fast float %6969, %6949
  %6971 = fmul fast float %6790, %4469
  %6972 = fmul fast float %6971, %6807
  %6973 = fmul fast float %6972, %6949
  %6974 = fmul fast float %6791, %4469
  %6975 = fmul fast float %6974, %6807
  %6976 = fmul fast float %6975, %6949
  %6977 = fadd fast float %6970, %6628
  %6978 = fadd fast float %6973, %6629
  %6979 = fadd fast float %6976, %6630
  %6980 = fmul fast float %6969, %6965
  %6981 = fmul fast float %6972, %6966
  %6982 = fmul fast float %6975, %6967
  %6983 = fadd fast float %6980, %6625
  %6984 = fadd fast float %6981, %6626
  %6985 = fadd fast float %6982, %6627
  br label %6703

; <label>:6986                                    ; preds = %6703
  br label %6987

; <label>:6987                                    ; preds = %6986, %6591
  %6988 = phi float [ %6593, %6591 ], [ %6704, %6986 ]
  %6989 = phi float [ %6594, %6591 ], [ %6705, %6986 ]
  %6990 = phi float [ %6595, %6591 ], [ %6706, %6986 ]
  %6991 = phi float [ %6596, %6591 ], [ %6707, %6986 ]
  %6992 = phi float [ %6597, %6591 ], [ %6708, %6986 ]
  %6993 = phi float [ %6598, %6591 ], [ %6709, %6986 ]
  %6994 = add i32 %6592, 1
  %6995 = icmp ugt i32 %6994, %6588
  br i1 %6995, label %6996, label %6591

; <label>:6996                                    ; preds = %6987
  br label %6997

; <label>:6997                                    ; preds = %6996, %6567, %6557
  %6998 = phi float [ %6558, %6557 ], [ %6558, %6567 ], [ %6988, %6996 ]
  %6999 = phi float [ %6559, %6557 ], [ %6559, %6567 ], [ %6989, %6996 ]
  %7000 = phi float [ %6560, %6557 ], [ %6560, %6567 ], [ %6990, %6996 ]
  %7001 = phi float [ %6561, %6557 ], [ %6561, %6567 ], [ %6991, %6996 ]
  %7002 = phi float [ %6562, %6557 ], [ %6562, %6567 ], [ %6992, %6996 ]
  %7003 = phi float [ %6563, %6557 ], [ %6563, %6567 ], [ %6993, %6996 ]
  %7004 = call float @dx.op.unary.f32(i32 24, float %5080)  ; Sqrt(value)
  %7005 = call float @dx.op.unary.f32(i32 24, float %5081)  ; Sqrt(value)
  %7006 = call float @dx.op.unary.f32(i32 24, float %5082)  ; Sqrt(value)
  %7007 = fmul fast float %7004, %7001
  %7008 = fmul fast float %7005, %7002
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  br i1 %186, label %7011, label %7034

; <label>:7011                                    ; preds = %6997
  %7012 = fadd fast float %7003, %4475
  %7013 = fmul fast float %7012, %4476
  %7014 = fsub fast float 1.000000e+00, %4476
  %7015 = call float @dx.op.unary.f32(i32 7, float %7014)  ; Saturate(value)
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 3
  %7018 = fmul fast float %7017, %7015
  %7019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7019, 0
  %7021 = fmul fast float %7020, %6307
  %7022 = extractvalue %dx.types.CBufRet.f32 %7019, 2
  %7023 = fmul fast float %7022, %5098
  %7024 = fadd fast float %7008, %7007
  %7025 = fmul fast float %7010, %7024
  %7026 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7027 = fadd fast float %7018, %7013
  %7028 = fsub fast float %7027, %7021
  %7029 = fadd fast float %7028, %7023
  %7030 = fsub fast float %7029, %7026
  %7031 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7032 = fmul fast float %7030, %7031
  %7033 = call float @dx.op.unary.f32(i32 7, float %7032)  ; Saturate(value)
  br label %7050

; <label>:7034                                    ; preds = %6997
  %7035 = fmul fast float %7006, %7003
  %7036 = fmul fast float %7010, %7007
  %7037 = fmul fast float %7010, %7008
  %7038 = fmul fast float %7035, %7010
  %7039 = add i32 %45, 356
  %7040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %7039, i32 undef)  ; BufferLoad(srv,index,wot)
  %7041 = extractvalue %dx.types.ResRet.i32 %7040, 0
  %7042 = and i32 %7041, 32
  %7043 = icmp eq i32 %7042, 0
  br i1 %7043, label %7050, label %7044

; <label>:7044                                    ; preds = %7034
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = fmul fast float %7046, 0x3FE99999A0000000
  %7048 = fadd fast float %7046, %7036
  %7049 = fadd fast float %7047, %7038
  br label %7050

; <label>:7050                                    ; preds = %7044, %7034, %7011
  %7051 = phi float [ %7025, %7011 ], [ %7048, %7044 ], [ %7036, %7034 ]
  %7052 = phi float [ %7033, %7011 ], [ %7037, %7044 ], [ %7037, %7034 ]
  %7053 = phi float [ 1.000000e+00, %7011 ], [ %7049, %7044 ], [ %7038, %7034 ]
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7056 = fmul fast float %7055, %6999
  %7057 = fmul fast float %7055, %7000
  %7058 = fadd fast float %6999, %6998
  %7059 = select i1 %186, float %7058, float %6998
  %7060 = fmul float %7059, %7055
  %7061 = select i1 %186, float 0.000000e+00, float %7056
  %7062 = select i1 %186, float 0.000000e+00, float %7057
  %7063 = fmul fast float %7051, %7004
  %7064 = fmul fast float %7052, %7005
  %7065 = fmul fast float %7053, %7006
  %7066 = fadd fast float %7060, %7063
  %7067 = fadd fast float %7061, %7064
  %7068 = fadd fast float %7062, %7065
  %7069 = select i1 %186, float %7052, float %7067
  %7070 = select i1 %186, float %7053, float %7068
  %7071 = call float @dx.op.binary.f32(i32 36, float %7066, float 3.225500e+04)  ; FMin(a,b)
  %7072 = call float @dx.op.binary.f32(i32 36, float %7069, float 3.225500e+04)  ; FMin(a,b)
  %7073 = call float @dx.op.binary.f32(i32 36, float %7070, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7071)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7072)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7073)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

