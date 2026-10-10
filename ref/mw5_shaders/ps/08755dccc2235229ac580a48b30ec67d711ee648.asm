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
; shader hash: 681454751f88fa24f3f4ad7ea86fe2bd
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
  %383 = add i32 %45, 472
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
  br i1 %436, label %895, label %437

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
  %882 = add i32 %45, 96
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 255
  %886 = uitofp i32 %885 to float
  %887 = lshr i32 %884, 8
  %888 = and i32 %887, 255
  %889 = uitofp i32 %888 to float
  %890 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = fmul fast float %889, %890
  %892 = fadd fast float %891, %886
  %893 = fmul fast float %892, 0x3F70101020000000
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  br label %895

; <label>:895                                     ; preds = %878, %422
  %896 = phi float [ 0.000000e+00, %422 ], [ %832, %878 ]
  %897 = phi float [ 0.000000e+00, %422 ], [ %833, %878 ]
  %898 = phi float [ 0.000000e+00, %422 ], [ %751, %878 ]
  %899 = phi float [ 0.000000e+00, %422 ], [ %752, %878 ]
  %900 = phi float [ 0.000000e+00, %422 ], [ %753, %878 ]
  %901 = phi float [ 0.000000e+00, %422 ], [ %879, %878 ]
  %902 = phi float [ 0.000000e+00, %422 ], [ %880, %878 ]
  %903 = phi float [ 0.000000e+00, %422 ], [ %881, %878 ]
  %904 = phi float [ 0.000000e+00, %422 ], [ %737, %878 ]
  %905 = phi float [ 0.000000e+00, %422 ], [ 1.000000e+00, %878 ]
  %906 = phi float [ 0.000000e+00, %422 ], [ %831, %878 ]
  %907 = phi float [ 0.000000e+00, %422 ], [ %834, %878 ]
  %908 = phi float [ 0.000000e+00, %422 ], [ %894, %878 ]
  br i1 %373, label %1750, label %909

; <label>:909                                     ; preds = %895
  %910 = icmp ult i32 %428, 2
  %911 = add i32 %45, 40
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %45, 44
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = or i32 %916, %913
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %1750, label %919

; <label>:919                                     ; preds = %909
  %920 = and i32 %913, 262144
  %921 = icmp ne i32 %920, 0
  %922 = select i1 %921, float %48, float 1.000000e+00
  %923 = select i1 %921, float %49, float 0.000000e+00
  %924 = select i1 %921, float %50, float 0.000000e+00
  %925 = select i1 %921, float %51, float 1.000000e+00
  %926 = select i1 %921, float %52, float %73
  %927 = select i1 %921, float %53, float %74
  %928 = add i32 %45, 300
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = lshr i32 %930, 16
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = fmul fast float %932, 0x3F50624DE0000000
  %934 = add i32 %45, 104
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = lshr i32 %936, 16
  %938 = and i32 %937, 255
  %939 = lshr i32 %936, 24
  %940 = add i32 %45, 308
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 65535
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = lshr i32 %942, 16
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = add i32 %45, 48
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = lshr i32 %949, 22
  %951 = shl nuw nsw i32 %950, 5
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = shl i32 %949, 4
  %954 = and i32 %953, 32752
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = lshr i32 %949, 7
  %957 = and i32 %956, 32752
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 3
  %961 = fmul fast float %960, 1.000000e+03
  %962 = fmul fast float %283, %961
  %963 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %964 = fadd fast float %963, %273
  %965 = fmul fast float %284, %961
  %966 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %967 = fadd fast float %966, %275
  %968 = fmul fast float %933, %961
  %969 = call float @dx.op.unary.f32(i32 22, float %968)  ; Frc(value)
  %970 = fmul fast float %969, 0x401921FB60000000
  %971 = fadd fast float %970, %952
  %972 = call float @dx.op.unary.f32(i32 13, float %971)  ; Sin(value)
  %973 = call float @dx.op.unary.f32(i32 12, float %971)  ; Cos(value)
  %974 = fsub fast float -0.000000e+00, %972
  %975 = fadd fast float %926, -5.000000e-01
  %976 = fadd fast float %927, -5.000000e-01
  %977 = fmul fast float %944, %975
  %978 = fmul fast float %946, %976
  %979 = fadd fast float %977, 5.000000e-01
  %980 = fadd fast float %978, 5.000000e-01
  %981 = fmul fast float %955, %979
  %982 = fmul fast float %958, %980
  %983 = fmul fast float %973, %981
  %984 = call float @dx.op.tertiary.f32(i32 46, float %974, float %982, float %983)  ; FMad(a,b,c)
  %985 = fmul fast float %972, %981
  %986 = call float @dx.op.tertiary.f32(i32 46, float %973, float %982, float %985)  ; FMad(a,b,c)
  %987 = fadd fast float %964, %984
  %988 = fadd fast float %967, %986
  %989 = icmp ugt i32 %938, 1
  %990 = icmp ugt i32 %936, 33554431
  %991 = or i1 %990, %989
  br i1 %991, label %992, label %1017

; <label>:992                                     ; preds = %919
  %993 = add i32 %45, 244
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = lshr i32 %995, 16
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = fmul fast float %960, %997
  %999 = call float @dx.op.unary.f32(i32 22, float %998)  ; Frc(value)
  %1000 = mul nuw nsw i32 %938, %939
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %999, %1001
  %1003 = call float @dx.op.unary.f32(i32 27, float %1002)  ; Round_ni(value)
  %1004 = fptoui float %1003 to i32
  %1005 = urem i32 %1004, %938
  %1006 = udiv i32 %1004, %939
  %1007 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %1008 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %1009 = uitofp i32 %1005 to float
  %1010 = uitofp i32 %1006 to float
  %1011 = fadd fast float %1007, %1009
  %1012 = fadd fast float %1008, %1010
  %1013 = uitofp i32 %938 to float
  %1014 = uitofp i32 %939 to float
  %1015 = fdiv fast float %1011, %1013
  %1016 = fdiv fast float %1012, %1014
  br label %1017

; <label>:1017                                    ; preds = %992, %919
  %1018 = phi float [ %1015, %992 ], [ %987, %919 ]
  %1019 = phi float [ %1016, %992 ], [ %988, %919 ]
  %1020 = and i32 %913, 16777216
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1131, label %1022

; <label>:1022                                    ; preds = %1017
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1027 = fadd fast float %1024, %144
  %1028 = fadd fast float %1025, %145
  %1029 = fadd fast float %1026, %146
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = call float @dx.op.unary.f32(i32 7, float %1031)  ; Saturate(value)
  %1033 = icmp eq i32 %46, 65535
  br i1 %1033, label %1128, label %1034

; <label>:1034                                    ; preds = %1022
  %1035 = lshr i32 %46, 1
  %1036 = shl i32 %1035, 2
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %46, 1
  %1040 = icmp ne i32 %1039, 0
  %1041 = lshr i32 %1038, 16
  %1042 = and i32 %1038, 65535
  %1043 = select i1 %1040, i32 %1041, i32 %1042
  %1044 = icmp eq i32 %1043, 65535
  br i1 %1044, label %1124, label %1045

; <label>:1045                                    ; preds = %1034
  %1046 = mul nuw nsw i32 %1043, 40
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = add nuw nsw i32 %1046, 12
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = add nuw nsw i32 %1046, 24
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = add nuw nsw i32 %1046, 36
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = fsub fast float %1027, %1048
  %1065 = fsub fast float %1028, %1049
  %1066 = fsub fast float %1029, %1050
  %1067 = fmul fast float %1063, %1064
  %1068 = fmul fast float %1063, %1065
  %1069 = fmul fast float %1063, %1066
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = fadd fast float %1070, 5.000000e-01
  %1074 = fadd fast float %1071, 5.000000e-01
  %1075 = fadd fast float %1072, 5.000000e-01
  %1076 = fmul fast float %1073, %1053
  %1077 = fmul fast float %1074, %1054
  %1078 = fmul fast float %1075, %1055
  %1079 = shl i32 %46, 2
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %1081, 0
  %1083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1085 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1086 = call float @dx.op.unary.f32(i32 22, float %1078)  ; Frc(value)
  %1087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1083, %dx.types.Handle %40, float %1084, float %1085, float %1086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = fmul fast float %1088, 1.023000e+03
  %1092 = fmul fast float %1089, 1.023000e+03
  %1093 = fmul fast float %1090, 1.023000e+03
  %1094 = fadd fast float %1091, 5.000000e-01
  %1095 = fadd fast float %1092, 5.000000e-01
  %1096 = fadd fast float %1093, 5.000000e-01
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = fsub fast float %1067, %1070
  %1101 = fsub fast float %1068, %1071
  %1102 = fsub fast float %1069, %1072
  %1103 = fmul fast float %1100, 7.500000e-01
  %1104 = fmul fast float %1101, 7.500000e-01
  %1105 = fmul fast float %1102, 7.500000e-01
  %1106 = fadd fast float %1070, 1.250000e-01
  %1107 = fadd fast float %1106, %1103
  %1108 = fadd fast float %1107, %1097
  %1109 = fadd fast float %1071, 1.250000e-01
  %1110 = fadd fast float %1109, %1104
  %1111 = fadd fast float %1110, %1098
  %1112 = fadd fast float %1072, 1.250000e-01
  %1113 = fadd fast float %1112, %1105
  %1114 = fadd fast float %1113, %1099
  %1115 = fmul fast float %1108, %1058
  %1116 = fmul fast float %1111, %1059
  %1117 = fmul fast float %1114, %1060
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1121, %dx.types.Handle %38, float %1115, float %1116, float %1117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  br label %1124

; <label>:1124                                    ; preds = %1045, %1034
  %1125 = phi float [ %1123, %1045 ], [ -1.000000e+00, %1034 ]
  %1126 = fadd fast float %1125, %1032
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  br label %1128

; <label>:1128                                    ; preds = %1124, %1022
  %1129 = phi float [ %1127, %1124 ], [ %1032, %1022 ]
  %1130 = fmul fast float %1129, %425
  br label %1131

; <label>:1131                                    ; preds = %1128, %1017
  %1132 = phi float [ %1130, %1128 ], [ %425, %1017 ]
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = and i32 %1134, 256
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1183, label %1137

; <label>:1137                                    ; preds = %1131
  %1138 = add i32 %45, 428
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = add i32 %1140, 0
  %1142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1142, %dx.types.Handle %82, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = add i32 %45, 116
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = shl i32 %1147, 4
  %1149 = and i32 %1148, 32752
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = lshr i32 %1147, 7
  %1152 = and i32 %1151, 32752
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = fsub fast float 1.000000e+00, %1132
  %1155 = call float @dx.op.binary.f32(i32 35, float %1154, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1156 = bitcast float %1132 to i32
  %1157 = sitofp i32 %1156 to float
  %1158 = fadd fast float %1157, 0xC1CFBF8940000000
  %1159 = fmul fast float %1153, %1158
  %1160 = fadd fast float %1159, 0x41CFBF8940000000
  %1161 = fptosi float %1160 to i32
  %1162 = bitcast i32 %1161 to float
  %1163 = bitcast float %1155 to i32
  %1164 = sitofp i32 %1163 to float
  %1165 = fadd fast float %1164, 0xC1CFBF8940000000
  %1166 = fmul fast float %1165, %1153
  %1167 = fadd fast float %1166, 0x41CFBF8940000000
  %1168 = fptosi float %1167 to i32
  %1169 = bitcast i32 %1168 to float
  %1170 = fmul fast float %1162, %1150
  %1171 = fmul fast float %1169, %1150
  %1172 = fsub fast float %1155, %1170
  %1173 = fadd fast float %1171, %1155
  %1174 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1175 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1176 = fsub fast float %1144, %1174
  %1177 = fsub fast float %1175, %1174
  %1178 = bitcast float %1177 to i32
  %1179 = sub nsw i32 2129859010, %1178
  %1180 = bitcast i32 %1179 to float
  %1181 = fmul fast float %1180, %1176
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  br label %1183

; <label>:1183                                    ; preds = %1137, %1131
  %1184 = phi float [ %1182, %1137 ], [ %1132, %1131 ]
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 128
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1205, label %1189

; <label>:1189                                    ; preds = %1183
  %1190 = add i32 %45, 412
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = add i32 %1192, 0
  %1194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1194, %dx.types.Handle %82, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 524288
  %1200 = icmp ne i32 %1199, 0
  %1201 = fcmp fast ogt float %1196, 0x3FE0101020000000
  %1202 = select i1 %1201, float 1.000000e+00, float 0.000000e+00
  %1203 = select i1 %1200, float %1202, float %1196
  %1204 = fmul fast float %1203, %1184
  br label %1205

; <label>:1205                                    ; preds = %1189, %1183
  %1206 = phi float [ %1204, %1189 ], [ %1184, %1183 ]
  %1207 = fcmp fast ult float %1206, 0x3F70101020000000
  br i1 %1207, label %1750, label %1208

; <label>:1208                                    ; preds = %1205
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 16
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1411, label %1213

; <label>:1213                                    ; preds = %1208
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %45, 364
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %1218, 0
  %1220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1220, %dx.types.Handle %81, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = extractvalue %dx.types.ResRet.f32 %1221, 3
  %1226 = and i32 %1215, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = lshr i32 %1215, 8
  %1229 = and i32 %1228, 255
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1225, %1227
  %1232 = fadd fast float %1231, %1230
  %1233 = fmul fast float %1232, 0x3F70101000000000
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 512
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1246, label %1238

; <label>:1238                                    ; preds = %1213
  %1239 = add i32 %45, 444
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = add i32 %1241, 0
  %1243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1243, %dx.types.Handle %82, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  br label %1246

; <label>:1246                                    ; preds = %1238, %1213
  %1247 = phi float [ %1245, %1238 ], [ 1.000000e+00, %1213 ]
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 33554432
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1358, label %1252

; <label>:1252                                    ; preds = %1246
  %1253 = add i32 %45, 240
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 65535
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = lshr i32 %1255, 16
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = add i32 %45, 244
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 65535
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = lshr i32 %1266, 24
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101020000000
  %1270 = and i32 %1266, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F70101020000000
  %1273 = lshr i32 %1266, 8
  %1274 = and i32 %1273, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = fmul fast float %1275, 0x3F70101020000000
  %1277 = lshr i32 %1266, 16
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101020000000
  %1281 = add i32 %45, 236
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = lshr i32 %1283, 24
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F70101020000000
  %1287 = and i32 %1283, 255
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1288, 0x3F70101020000000
  %1290 = lshr i32 %1283, 8
  %1291 = and i32 %1290, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, 0x3F70101020000000
  %1294 = lshr i32 %1283, 16
  %1295 = and i32 %1294, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = bitcast float %1222 to i32
  %1299 = ashr i32 %1298, 1
  %1300 = sub nsw i32 1597463174, %1299
  %1301 = bitcast i32 %1300 to float
  %1302 = fmul fast float %1222, 5.000000e-01
  %1303 = fmul fast float %1301, %1301
  %1304 = fmul fast float %1303, %1302
  %1305 = fsub fast float 1.500000e+00, %1304
  %1306 = fmul fast float %1301, %1222
  %1307 = fmul fast float %1306, %1305
  %1308 = bitcast float %1223 to i32
  %1309 = ashr i32 %1308, 1
  %1310 = sub nsw i32 1597463174, %1309
  %1311 = bitcast i32 %1310 to float
  %1312 = fmul fast float %1223, 5.000000e-01
  %1313 = fmul fast float %1311, %1311
  %1314 = fmul fast float %1313, %1312
  %1315 = fsub fast float 1.500000e+00, %1314
  %1316 = fmul fast float %1311, %1223
  %1317 = fmul fast float %1316, %1315
  %1318 = bitcast float %1224 to i32
  %1319 = ashr i32 %1318, 1
  %1320 = sub nsw i32 1597463174, %1319
  %1321 = bitcast i32 %1320 to float
  %1322 = fmul fast float %1224, 5.000000e-01
  %1323 = fmul fast float %1321, %1321
  %1324 = fmul fast float %1323, %1322
  %1325 = fsub fast float 1.500000e+00, %1324
  %1326 = fmul fast float %1321, %1224
  %1327 = fmul fast float %1326, %1325
  %1328 = fsub fast float %1307, %1289
  %1329 = fsub fast float %1317, %1293
  %1330 = fsub fast float %1327, %1297
  %1331 = fmul fast float %1328, %1257
  %1332 = fmul fast float %1329, %1259
  %1333 = fmul fast float %1330, %1264
  %1334 = fadd fast float %1331, %1272
  %1335 = fadd fast float %1332, %1276
  %1336 = fadd fast float %1333, %1280
  %1337 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1339 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1340 = fmul fast float %1337, %1337
  %1341 = fmul fast float %1338, %1338
  %1342 = fmul fast float %1339, %1339
  %1343 = fsub fast float %1340, %1222
  %1344 = fsub fast float %1341, %1223
  %1345 = fsub fast float %1342, %1224
  %1346 = fmul fast float %1343, %1247
  %1347 = fmul fast float %1344, %1247
  %1348 = fmul fast float %1345, %1247
  %1349 = fadd fast float %1346, %1222
  %1350 = fadd fast float %1347, %1223
  %1351 = fadd fast float %1348, %1224
  %1352 = fadd fast float %1269, %1233
  %1353 = fsub fast float %1352, %1286
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fsub fast float %1354, %1233
  %1356 = fmul fast float %1355, %1247
  %1357 = fadd fast float %1356, %1233
  br label %1411

; <label>:1358                                    ; preds = %1246
  %1359 = and i32 %1249, 134217728
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1395, label %1361

; <label>:1361                                    ; preds = %1358
  %1362 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1363 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1364 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1365 = fadd fast float %1362, -5.000000e-01
  %1366 = fadd fast float %1363, -5.000000e-01
  %1367 = fadd fast float %1364, -5.000000e-01
  %1368 = fmul fast float %1365, %1247
  %1369 = fmul fast float %1366, %1247
  %1370 = fmul fast float %1367, %1247
  %1371 = fadd fast float %1368, 5.000000e-01
  %1372 = fadd fast float %1369, 5.000000e-01
  %1373 = fadd fast float %1370, 5.000000e-01
  %1374 = call float @dx.op.unary.f32(i32 24, float %1222)  ; Sqrt(value)
  %1375 = call float @dx.op.unary.f32(i32 24, float %1223)  ; Sqrt(value)
  %1376 = call float @dx.op.unary.f32(i32 24, float %1224)  ; Sqrt(value)
  %1377 = fmul fast float %1371, 2.000000e+00
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = fmul fast float %1378, %1374
  %1380 = fadd fast float %1379, %1377
  %1381 = fmul fast float %1380, %1374
  %1382 = fmul fast float %1372, 2.000000e+00
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1383, %1375
  %1385 = fadd fast float %1384, %1382
  %1386 = fmul fast float %1385, %1375
  %1387 = fmul fast float %1373, 2.000000e+00
  %1388 = fsub fast float 1.000000e+00, %1387
  %1389 = fmul fast float %1388, %1376
  %1390 = fadd fast float %1389, %1387
  %1391 = fmul fast float %1390, %1376
  %1392 = fmul fast float %1381, %1381
  %1393 = fmul fast float %1386, %1386
  %1394 = fmul fast float %1391, %1391
  br label %1411

; <label>:1395                                    ; preds = %1358
  %1396 = fmul fast float %260, %260
  %1397 = fmul fast float %264, %264
  %1398 = fmul fast float %268, %268
  %1399 = fadd fast float %1396, -1.000000e+00
  %1400 = fadd fast float %1397, -1.000000e+00
  %1401 = fadd fast float %1398, -1.000000e+00
  %1402 = fmul fast float %1247, %1399
  %1403 = fmul fast float %1247, %1400
  %1404 = fmul fast float %1247, %1401
  %1405 = fadd fast float %1402, 1.000000e+00
  %1406 = fadd fast float %1403, 1.000000e+00
  %1407 = fadd fast float %1404, 1.000000e+00
  %1408 = fmul fast float %1405, %1222
  %1409 = fmul fast float %1406, %1223
  %1410 = fmul fast float %1407, %1224
  br label %1411

; <label>:1411                                    ; preds = %1395, %1361, %1252, %1208
  %1412 = phi float [ %1357, %1252 ], [ %1233, %1361 ], [ %1233, %1395 ], [ 0x3FA23C0BE0000000, %1208 ]
  %1413 = phi float [ %1349, %1252 ], [ %1392, %1361 ], [ %1408, %1395 ], [ 1.000000e+00, %1208 ]
  %1414 = phi float [ %1350, %1252 ], [ %1393, %1361 ], [ %1409, %1395 ], [ 1.000000e+00, %1208 ]
  %1415 = phi float [ %1351, %1252 ], [ %1394, %1361 ], [ %1410, %1395 ], [ 1.000000e+00, %1208 ]
  %1416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.i32 %1416, 1
  %1418 = and i32 %1417, 1
  %1419 = icmp ne i32 %1418, 0
  %1420 = add i32 %45, 356
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 32
  %1424 = icmp ne i32 %1423, 0
  %1425 = and i1 %1419, %1424
  %1426 = select i1 %1425, float 1.000000e+00, float %1413
  %1427 = select i1 %1425, float 0x3FD3333340000000, float %1414
  %1428 = select i1 %1425, float 0x3FD3333340000000, float %1415
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 32
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1505, label %1433

; <label>:1433                                    ; preds = %1411
  %1434 = add i32 %45, 108
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %45, 380
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = add i32 %1439, 0
  %1441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1442 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1441, %dx.types.Handle %81, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = extractvalue %dx.types.ResRet.f32 %1442, 3
  %1447 = and i32 %1436, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = lshr i32 %1436, 8
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = lshr i32 %1436, 16
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = fmul fast float %1454, 0x3F70101000000000
  %1456 = fmul fast float %1443, %1448
  %1457 = fadd fast float %1456, %1451
  %1458 = fmul fast float %1457, 0x3F70101000000000
  %1459 = fadd fast float %1444, -5.000000e-01
  %1460 = fadd fast float %1446, -5.000000e-01
  %1461 = fmul fast float %1459, %1455
  %1462 = fmul fast float %1460, %1455
  %1463 = fadd fast float %1461, 5.000000e-01
  %1464 = fadd fast float %1462, 5.000000e-01
  %1465 = fmul fast float %1463, 2.000000e+00
  %1466 = fadd fast float %1465, -1.000000e+00
  %1467 = fmul fast float %1464, 2.000000e+00
  %1468 = fadd fast float %1467, -1.000000e+00
  %1469 = fadd fast float %1466, %1468
  %1470 = fmul fast float %1469, 5.000000e-01
  %1471 = fsub fast float %1466, %1468
  %1472 = fmul fast float %1471, 5.000000e-01
  %1473 = call float @dx.op.unary.f32(i32 6, float %1470)  ; FAbs(value)
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = call float @dx.op.unary.f32(i32 6, float %1472)  ; FAbs(value)
  %1476 = fsub fast float %1474, %1475
  %1477 = call float @dx.op.dot3.f32(i32 55, float %1470, float %1472, float %1476, float %1470, float %1472, float %1476)  ; Dot3(ax,ay,az,bx,by,bz)
  %1478 = call float @dx.op.unary.f32(i32 25, float %1477)  ; Rsqrt(value)
  %1479 = fmul fast float %1470, %1478
  %1480 = fmul fast float %1472, %1478
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 67108864
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1501, label %1485

; <label>:1485                                    ; preds = %1433
  %1486 = add i32 %45, 296
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 65535
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 65535
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = lshr i32 %1488, 16
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = fsub fast float %1458, %1496
  %1498 = fmul fast float %1497, %1490
  %1499 = fadd fast float %1498, %1494
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  br label %1501

; <label>:1501                                    ; preds = %1485, %1433
  %1502 = phi float [ %1500, %1485 ], [ %1458, %1433 ]
  %1503 = call float @dx.op.dot2.f32(i32 54, float %1479, float %1480, float %922, float %923)  ; Dot2(ax,ay,bx,by)
  %1504 = call float @dx.op.dot2.f32(i32 54, float %1479, float %1480, float %924, float %925)  ; Dot2(ax,ay,bx,by)
  br label %1505

; <label>:1505                                    ; preds = %1501, %1411
  %1506 = phi float [ %1502, %1501 ], [ 0x3FD6666660000000, %1411 ]
  %1507 = phi float [ %1503, %1501 ], [ 0.000000e+00, %1411 ]
  %1508 = phi float [ %1504, %1501 ], [ 0.000000e+00, %1411 ]
  %1509 = phi float [ %1445, %1501 ], [ 1.000000e+00, %1411 ]
  %1510 = add i32 %45, 176
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = lshr i32 %1512, 22
  %1514 = shl nuw nsw i32 %1513, 5
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 64
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1553, label %1520

; <label>:1520                                    ; preds = %1505
  %1521 = add i32 %45, 396
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %1523, 0
  %1525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 131072
  %1529 = icmp eq i32 %1528, 0
  %1530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1525, %dx.types.Handle %81, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = fmul fast float %1531, %248
  %1535 = fmul fast float %1532, %251
  %1536 = fmul fast float %1533, %254
  br i1 %1529, label %1543, label %1537

; <label>:1537                                    ; preds = %1520
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = fmul fast float %1539, %1534
  %1541 = fmul fast float %1539, %1535
  %1542 = fmul fast float %1539, %1536
  br label %1543

; <label>:1543                                    ; preds = %1537, %1520
  %1544 = phi float [ %1540, %1537 ], [ %1534, %1520 ]
  %1545 = phi float [ %1541, %1537 ], [ %1535, %1520 ]
  %1546 = phi float [ %1542, %1537 ], [ %1536, %1520 ]
  %1547 = fmul fast float %1544, %1515
  %1548 = select i1 %186, float %1547, float %1544
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1545, float %1546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = select i1 %186, float 0.000000e+00, float %1544
  %1551 = select i1 %186, float %1549, float %1545
  %1552 = select i1 %186, float 0.000000e+00, float %1546
  br label %1553

; <label>:1553                                    ; preds = %1543, %1505
  %1554 = phi float [ %1550, %1543 ], [ 0.000000e+00, %1505 ]
  %1555 = phi float [ %1551, %1543 ], [ 0.000000e+00, %1505 ]
  %1556 = phi float [ %1552, %1543 ], [ 0.000000e+00, %1505 ]
  %1557 = add i32 %45, 112
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = lshr i32 %1559, 8
  %1563 = and i32 %1562, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1426, float %1427, float %1428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = fmul fast float %1564, %1565
  %1567 = fadd fast float %1566, %1561
  %1568 = fmul fast float %1567, 0x3F70101020000000
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  br i1 %910, label %1570, label %1578

; <label>:1570                                    ; preds = %1553
  %1571 = fsub fast float 1.000000e+00, %1206
  %1572 = fmul fast float %1571, %898
  %1573 = fmul fast float %1571, %899
  %1574 = fmul fast float %1571, %900
  %1575 = fmul fast float %1571, %901
  %1576 = fmul fast float %1571, %902
  %1577 = fmul fast float %1571, %903
  br label %1578

; <label>:1578                                    ; preds = %1570, %1553
  %1579 = phi float [ %1572, %1570 ], [ %898, %1553 ]
  %1580 = phi float [ %1573, %1570 ], [ %899, %1553 ]
  %1581 = phi float [ %1574, %1570 ], [ %900, %1553 ]
  %1582 = phi float [ %1575, %1570 ], [ %901, %1553 ]
  %1583 = phi float [ %1576, %1570 ], [ %902, %1553 ]
  %1584 = phi float [ %1577, %1570 ], [ %903, %1553 ]
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = and i32 %1586, 3
  %1588 = icmp eq i32 %1587, 3
  br i1 %1588, label %1667, label %1589

; <label>:1589                                    ; preds = %1578
  %1590 = and i32 %1586, 16
  %1591 = icmp ne i32 %1590, 0
  %1592 = select i1 %1591, float %1206, float 0.000000e+00
  %1593 = icmp eq i32 %1587, 0
  br i1 %1593, label %1594, label %1622

; <label>:1594                                    ; preds = %1589
  %1595 = and i32 %1586, 64
  %1596 = icmp ne i32 %1595, 0
  %1597 = select i1 %1596, float %1206, float 0.000000e+00
  %1598 = fsub fast float %1426, %1579
  %1599 = fsub fast float %1427, %1580
  %1600 = fsub fast float %1428, %1581
  %1601 = fmul fast float %1592, %1598
  %1602 = fmul fast float %1592, %1599
  %1603 = fmul fast float %1592, %1600
  %1604 = fadd fast float %1601, %1579
  %1605 = fadd fast float %1602, %1580
  %1606 = fadd fast float %1603, %1581
  %1607 = fsub fast float %1412, %904
  %1608 = fmul fast float %1592, %1607
  %1609 = fadd fast float %1608, %904
  %1610 = fsub fast float %1554, %1582
  %1611 = fsub fast float %1555, %1583
  %1612 = fsub fast float %1556, %1584
  %1613 = fmul fast float %1597, %1610
  %1614 = fmul fast float %1597, %1611
  %1615 = fmul fast float %1597, %1612
  %1616 = fadd fast float %1613, %1582
  %1617 = fadd fast float %1614, %1583
  %1618 = fadd fast float %1615, %1584
  %1619 = fsub fast float %1569, %908
  %1620 = fmul fast float %1592, %1619
  %1621 = fadd fast float %1620, %908
  br label %1667

; <label>:1622                                    ; preds = %1589
  %1623 = icmp eq i32 %1587, 1
  br i1 %1623, label %1624, label %1637

; <label>:1624                                    ; preds = %1622
  %1625 = fadd fast float %1426, -1.000000e+00
  %1626 = fadd fast float %1427, -1.000000e+00
  %1627 = fadd fast float %1428, -1.000000e+00
  %1628 = fmul fast float %1592, %1625
  %1629 = fmul fast float %1592, %1626
  %1630 = fmul fast float %1592, %1627
  %1631 = fadd fast float %1628, 1.000000e+00
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fadd fast float %1630, 1.000000e+00
  %1634 = fmul fast float %1631, %1579
  %1635 = fmul fast float %1632, %1580
  %1636 = fmul fast float %1633, %1581
  br label %1667

; <label>:1637                                    ; preds = %1622
  %1638 = icmp eq i32 %1587, 2
  br i1 %1638, label %1639, label %1667

; <label>:1639                                    ; preds = %1637
  %1640 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1641 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1642 = call float @dx.op.unary.f32(i32 24, float %1428)  ; Sqrt(value)
  %1643 = fadd fast float %1640, -5.000000e-01
  %1644 = fadd fast float %1641, -5.000000e-01
  %1645 = fadd fast float %1642, -5.000000e-01
  %1646 = fmul fast float %1643, %1592
  %1647 = fmul fast float %1644, %1592
  %1648 = fmul fast float %1645, %1592
  %1649 = fadd fast float %1646, 5.000000e-01
  %1650 = fadd fast float %1647, 5.000000e-01
  %1651 = fadd fast float %1648, 5.000000e-01
  %1652 = fmul fast float %1649, 2.000000e+00
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fmul fast float %1653, %1579
  %1655 = fadd fast float %1654, %1652
  %1656 = fmul fast float %1655, %1579
  %1657 = fmul fast float %1650, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1580
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1580
  %1662 = fmul fast float %1651, 2.000000e+00
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = fmul fast float %1663, %1581
  %1665 = fadd fast float %1664, %1662
  %1666 = fmul fast float %1665, %1581
  br label %1667

; <label>:1667                                    ; preds = %1639, %1637, %1624, %1594, %1578
  %1668 = phi float [ %1579, %1578 ], [ %1656, %1639 ], [ %1579, %1637 ], [ %1634, %1624 ], [ %1604, %1594 ]
  %1669 = phi float [ %1580, %1578 ], [ %1661, %1639 ], [ %1580, %1637 ], [ %1635, %1624 ], [ %1605, %1594 ]
  %1670 = phi float [ %1581, %1578 ], [ %1666, %1639 ], [ %1581, %1637 ], [ %1636, %1624 ], [ %1606, %1594 ]
  %1671 = phi float [ %1582, %1578 ], [ %1582, %1639 ], [ %1582, %1637 ], [ %1582, %1624 ], [ %1616, %1594 ]
  %1672 = phi float [ %1583, %1578 ], [ %1583, %1639 ], [ %1583, %1637 ], [ %1583, %1624 ], [ %1617, %1594 ]
  %1673 = phi float [ %1584, %1578 ], [ %1584, %1639 ], [ %1584, %1637 ], [ %1584, %1624 ], [ %1618, %1594 ]
  %1674 = phi float [ %904, %1578 ], [ %904, %1639 ], [ %904, %1637 ], [ %904, %1624 ], [ %1609, %1594 ]
  %1675 = phi float [ %908, %1578 ], [ %908, %1639 ], [ %908, %1637 ], [ %908, %1624 ], [ %1621, %1594 ]
  %1676 = and i32 %1586, 12
  %1677 = icmp eq i32 %1676, 12
  br i1 %1677, label %1750, label %1678

; <label>:1678                                    ; preds = %1667
  %1679 = and i32 %1586, 2097184
  %1680 = icmp eq i32 %1679, 2097184
  %1681 = select i1 %1680, float %1206, float 0.000000e+00
  %1682 = and i32 %1586, 4194336
  %1683 = icmp eq i32 %1682, 4194336
  %1684 = select i1 %1683, float %1206, float 0.000000e+00
  %1685 = and i32 %1586, 8388640
  %1686 = icmp eq i32 %1685, 8388640
  %1687 = select i1 %1686, float %1206, float 0.000000e+00
  %1688 = icmp eq i32 %1676, 0
  br i1 %1688, label %1689, label %1702

; <label>:1689                                    ; preds = %1678
  %1690 = fsub fast float %1507, %896
  %1691 = fsub fast float %1508, %897
  %1692 = fmul fast float %1681, %1690
  %1693 = fmul fast float %1681, %1691
  %1694 = fadd fast float %1692, %896
  %1695 = fadd fast float %1693, %897
  %1696 = fsub fast float %1509, %907
  %1697 = fmul fast float %1684, %1696
  %1698 = fadd fast float %1697, %907
  %1699 = fsub fast float %1506, %906
  %1700 = fmul fast float %1687, %1699
  %1701 = fadd fast float %1700, %906
  br label %1750

; <label>:1702                                    ; preds = %1678
  %1703 = icmp eq i32 %1676, 4
  br i1 %1703, label %1704, label %1736

; <label>:1704                                    ; preds = %1702
  %1705 = fmul fast float %1681, %1507
  %1706 = fmul fast float %1681, %1508
  %1707 = fadd fast float %1705, %896
  %1708 = fadd fast float %1706, %897
  %1709 = call float @dx.op.binary.f32(i32 36, float %907, float %1509)  ; FMin(a,b)
  %1710 = fsub fast float %1709, %907
  %1711 = fmul fast float %1710, %1684
  %1712 = fadd fast float %1711, %907
  %1713 = fadd fast float %1506, %906
  %1714 = fmul fast float %1713, 0x3FF337FAE0000000
  %1715 = fmul fast float %906, %906
  %1716 = fmul fast float %1506, %1506
  %1717 = fadd fast float %1716, %1715
  %1718 = fmul fast float %1717, 0x3FE5152B00000000
  %1719 = fmul fast float %906, 0xBFCC1F85E0000000
  %1720 = fmul fast float %1719, %1506
  %1721 = fadd fast float %1720, 0xBFE1363700000000
  %1722 = fadd fast float %1721, %1714
  %1723 = fsub fast float %1722, %1718
  %1724 = fmul fast float %1713, 0x3FBA6F0D00000000
  %1725 = fmul fast float %1717, 0x3FD0432880000000
  %1726 = fmul fast float %906, 0xBFEF110800000000
  %1727 = fmul fast float %1726, %1506
  %1728 = fadd fast float %1727, 1.000000e+00
  %1729 = fsub fast float %1728, %1724
  %1730 = fadd fast float %1729, %1725
  %1731 = fdiv fast float %1723, %1730
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fsub fast float %1732, %906
  %1734 = fmul fast float %1733, %1687
  %1735 = fadd fast float %1734, %906
  br label %1750

; <label>:1736                                    ; preds = %1702
  %1737 = icmp eq i32 %1676, 8
  br i1 %1737, label %1738, label %1750

; <label>:1738                                    ; preds = %1736
  %1739 = fmul fast float %1681, %1507
  %1740 = fmul fast float %1681, %1508
  %1741 = fadd fast float %1739, %896
  %1742 = fadd fast float %1740, %897
  %1743 = call float @dx.op.binary.f32(i32 36, float %907, float %1509)  ; FMin(a,b)
  %1744 = fsub fast float %1743, %907
  %1745 = fmul fast float %1744, %1684
  %1746 = fadd fast float %1745, %907
  %1747 = fsub fast float %1506, %906
  %1748 = fmul fast float %1687, %1747
  %1749 = fadd fast float %1748, %906
  br label %1750

; <label>:1750                                    ; preds = %1738, %1736, %1704, %1689, %1667, %1205, %909, %895
  %1751 = phi float [ %896, %1667 ], [ %896, %1205 ], [ %896, %895 ], [ %1741, %1738 ], [ %896, %1736 ], [ %1707, %1704 ], [ %1694, %1689 ], [ %896, %909 ]
  %1752 = phi float [ %897, %1667 ], [ %897, %1205 ], [ %897, %895 ], [ %1742, %1738 ], [ %897, %1736 ], [ %1708, %1704 ], [ %1695, %1689 ], [ %897, %909 ]
  %1753 = phi float [ %1668, %1667 ], [ %898, %1205 ], [ %898, %895 ], [ %1668, %1738 ], [ %1668, %1736 ], [ %1668, %1704 ], [ %1668, %1689 ], [ %898, %909 ]
  %1754 = phi float [ %1669, %1667 ], [ %899, %1205 ], [ %899, %895 ], [ %1669, %1738 ], [ %1669, %1736 ], [ %1669, %1704 ], [ %1669, %1689 ], [ %899, %909 ]
  %1755 = phi float [ %1670, %1667 ], [ %900, %1205 ], [ %900, %895 ], [ %1670, %1738 ], [ %1670, %1736 ], [ %1670, %1704 ], [ %1670, %1689 ], [ %900, %909 ]
  %1756 = phi float [ %1671, %1667 ], [ %901, %1205 ], [ %901, %895 ], [ %1671, %1738 ], [ %1671, %1736 ], [ %1671, %1704 ], [ %1671, %1689 ], [ %901, %909 ]
  %1757 = phi float [ %1672, %1667 ], [ %902, %1205 ], [ %902, %895 ], [ %1672, %1738 ], [ %1672, %1736 ], [ %1672, %1704 ], [ %1672, %1689 ], [ %902, %909 ]
  %1758 = phi float [ %1673, %1667 ], [ %903, %1205 ], [ %903, %895 ], [ %1673, %1738 ], [ %1673, %1736 ], [ %1673, %1704 ], [ %1673, %1689 ], [ %903, %909 ]
  %1759 = phi float [ %1674, %1667 ], [ %904, %1205 ], [ %904, %895 ], [ %1674, %1738 ], [ %1674, %1736 ], [ %1674, %1704 ], [ %1674, %1689 ], [ %904, %909 ]
  %1760 = phi float [ %906, %1667 ], [ %906, %1205 ], [ %906, %895 ], [ %1749, %1738 ], [ %906, %1736 ], [ %1735, %1704 ], [ %1701, %1689 ], [ %906, %909 ]
  %1761 = phi float [ %907, %1667 ], [ %907, %1205 ], [ %907, %895 ], [ %1746, %1738 ], [ %907, %1736 ], [ %1712, %1704 ], [ %1698, %1689 ], [ %907, %909 ]
  %1762 = phi float [ %1675, %1667 ], [ %908, %1205 ], [ %908, %895 ], [ %1675, %1738 ], [ %1675, %1736 ], [ %1675, %1704 ], [ %1675, %1689 ], [ %908, %909 ]
  br i1 %375, label %2604, label %1763

; <label>:1763                                    ; preds = %1750
  %1764 = icmp ult i32 %428, 3
  %1765 = add i32 %45, 56
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = add i32 %45, 60
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = or i32 %1770, %1767
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %2604, label %1773

; <label>:1773                                    ; preds = %1763
  %1774 = and i32 %1767, 262144
  %1775 = icmp ne i32 %1774, 0
  %1776 = select i1 %1775, float %48, float 1.000000e+00
  %1777 = select i1 %1775, float %49, float 0.000000e+00
  %1778 = select i1 %1775, float %50, float 0.000000e+00
  %1779 = select i1 %1775, float %51, float 1.000000e+00
  %1780 = select i1 %1775, float %52, float %73
  %1781 = select i1 %1775, float %53, float %74
  %1782 = add i32 %45, 316
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = lshr i32 %1784, 16
  %1786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1785)  ; LegacyF16ToF32(value)
  %1787 = fmul fast float %1786, 0x3F50624DE0000000
  %1788 = add i32 %45, 120
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = lshr i32 %1790, 16
  %1792 = and i32 %1791, 255
  %1793 = lshr i32 %1790, 24
  %1794 = add i32 %45, 324
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = and i32 %1796, 65535
  %1798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1797)  ; LegacyF16ToF32(value)
  %1799 = lshr i32 %1796, 16
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = add i32 %45, 64
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = lshr i32 %1803, 22
  %1805 = shl nuw nsw i32 %1804, 5
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = shl i32 %1803, 4
  %1808 = and i32 %1807, 32752
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = lshr i32 %1803, 7
  %1811 = and i32 %1810, 32752
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 3
  %1815 = fmul fast float %1814, 1.000000e+03
  %1816 = fmul fast float %325, %1815
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = fadd fast float %1817, %315
  %1819 = fmul fast float %326, %1815
  %1820 = call float @dx.op.unary.f32(i32 22, float %1819)  ; Frc(value)
  %1821 = fadd fast float %1820, %317
  %1822 = fmul fast float %1787, %1815
  %1823 = call float @dx.op.unary.f32(i32 22, float %1822)  ; Frc(value)
  %1824 = fmul fast float %1823, 0x401921FB60000000
  %1825 = fadd fast float %1824, %1806
  %1826 = call float @dx.op.unary.f32(i32 13, float %1825)  ; Sin(value)
  %1827 = call float @dx.op.unary.f32(i32 12, float %1825)  ; Cos(value)
  %1828 = fsub fast float -0.000000e+00, %1826
  %1829 = fadd fast float %1780, -5.000000e-01
  %1830 = fadd fast float %1781, -5.000000e-01
  %1831 = fmul fast float %1798, %1829
  %1832 = fmul fast float %1800, %1830
  %1833 = fadd fast float %1831, 5.000000e-01
  %1834 = fadd fast float %1832, 5.000000e-01
  %1835 = fmul fast float %1809, %1833
  %1836 = fmul fast float %1812, %1834
  %1837 = fmul fast float %1827, %1835
  %1838 = call float @dx.op.tertiary.f32(i32 46, float %1828, float %1836, float %1837)  ; FMad(a,b,c)
  %1839 = fmul fast float %1826, %1835
  %1840 = call float @dx.op.tertiary.f32(i32 46, float %1827, float %1836, float %1839)  ; FMad(a,b,c)
  %1841 = fadd fast float %1818, %1838
  %1842 = fadd fast float %1821, %1840
  %1843 = icmp ugt i32 %1792, 1
  %1844 = icmp ugt i32 %1790, 33554431
  %1845 = or i1 %1844, %1843
  br i1 %1845, label %1846, label %1871

; <label>:1846                                    ; preds = %1773
  %1847 = add i32 %45, 260
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = lshr i32 %1849, 16
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = fmul fast float %1814, %1851
  %1853 = call float @dx.op.unary.f32(i32 22, float %1852)  ; Frc(value)
  %1854 = mul nuw nsw i32 %1792, %1793
  %1855 = uitofp i32 %1854 to float
  %1856 = fmul fast float %1853, %1855
  %1857 = call float @dx.op.unary.f32(i32 27, float %1856)  ; Round_ni(value)
  %1858 = fptoui float %1857 to i32
  %1859 = urem i32 %1858, %1792
  %1860 = udiv i32 %1858, %1793
  %1861 = call float @dx.op.unary.f32(i32 22, float %1841)  ; Frc(value)
  %1862 = call float @dx.op.unary.f32(i32 22, float %1842)  ; Frc(value)
  %1863 = uitofp i32 %1859 to float
  %1864 = uitofp i32 %1860 to float
  %1865 = fadd fast float %1861, %1863
  %1866 = fadd fast float %1862, %1864
  %1867 = uitofp i32 %1792 to float
  %1868 = uitofp i32 %1793 to float
  %1869 = fdiv fast float %1865, %1867
  %1870 = fdiv fast float %1866, %1868
  br label %1871

; <label>:1871                                    ; preds = %1846, %1773
  %1872 = phi float [ %1869, %1846 ], [ %1841, %1773 ]
  %1873 = phi float [ %1870, %1846 ], [ %1842, %1773 ]
  %1874 = and i32 %1767, 16777216
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1985, label %1876

; <label>:1876                                    ; preds = %1871
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.CBufRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.CBufRet.f32 %1877, 2
  %1881 = fadd fast float %1878, %144
  %1882 = fadd fast float %1879, %145
  %1883 = fadd fast float %1880, %146
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1887 = icmp eq i32 %46, 65535
  br i1 %1887, label %1982, label %1888

; <label>:1888                                    ; preds = %1876
  %1889 = lshr i32 %46, 1
  %1890 = shl i32 %1889, 2
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %46, 1
  %1894 = icmp ne i32 %1893, 0
  %1895 = lshr i32 %1892, 16
  %1896 = and i32 %1892, 65535
  %1897 = select i1 %1894, i32 %1895, i32 %1896
  %1898 = icmp eq i32 %1897, 65535
  br i1 %1898, label %1978, label %1899

; <label>:1899                                    ; preds = %1888
  %1900 = mul nuw nsw i32 %1897, 40
  %1901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.ResRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.ResRet.f32 %1901, 2
  %1905 = add nuw nsw i32 %1900, 12
  %1906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = add nuw nsw i32 %1900, 24
  %1911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.ResRet.f32 %1911, 2
  %1915 = add nuw nsw i32 %1900, 36
  %1916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = fsub fast float %1881, %1902
  %1919 = fsub fast float %1882, %1903
  %1920 = fsub fast float %1883, %1904
  %1921 = fmul fast float %1917, %1918
  %1922 = fmul fast float %1917, %1919
  %1923 = fmul fast float %1917, %1920
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1927 = fadd fast float %1924, 5.000000e-01
  %1928 = fadd fast float %1925, 5.000000e-01
  %1929 = fadd fast float %1926, 5.000000e-01
  %1930 = fmul fast float %1927, %1907
  %1931 = fmul fast float %1928, %1908
  %1932 = fmul fast float %1929, %1909
  %1933 = shl i32 %46, 2
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = add i32 %1935, 0
  %1937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1938 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1939 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1940 = call float @dx.op.unary.f32(i32 22, float %1932)  ; Frc(value)
  %1941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1937, %dx.types.Handle %40, float %1938, float %1939, float %1940, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  %1943 = extractvalue %dx.types.ResRet.f32 %1941, 1
  %1944 = extractvalue %dx.types.ResRet.f32 %1941, 2
  %1945 = fmul fast float %1942, 1.023000e+03
  %1946 = fmul fast float %1943, 1.023000e+03
  %1947 = fmul fast float %1944, 1.023000e+03
  %1948 = fadd fast float %1945, 5.000000e-01
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = fadd fast float %1947, 5.000000e-01
  %1951 = call float @dx.op.unary.f32(i32 27, float %1948)  ; Round_ni(value)
  %1952 = call float @dx.op.unary.f32(i32 27, float %1949)  ; Round_ni(value)
  %1953 = call float @dx.op.unary.f32(i32 27, float %1950)  ; Round_ni(value)
  %1954 = fsub fast float %1921, %1924
  %1955 = fsub fast float %1922, %1925
  %1956 = fsub fast float %1923, %1926
  %1957 = fmul fast float %1954, 7.500000e-01
  %1958 = fmul fast float %1955, 7.500000e-01
  %1959 = fmul fast float %1956, 7.500000e-01
  %1960 = fadd fast float %1924, 1.250000e-01
  %1961 = fadd fast float %1960, %1957
  %1962 = fadd fast float %1961, %1951
  %1963 = fadd fast float %1925, 1.250000e-01
  %1964 = fadd fast float %1963, %1958
  %1965 = fadd fast float %1964, %1952
  %1966 = fadd fast float %1926, 1.250000e-01
  %1967 = fadd fast float %1966, %1959
  %1968 = fadd fast float %1967, %1953
  %1969 = fmul fast float %1962, %1912
  %1970 = fmul fast float %1965, %1913
  %1971 = fmul fast float %1968, %1914
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = add i32 %1973, 0
  %1975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1975, %dx.types.Handle %38, float %1969, float %1970, float %1971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  br label %1978

; <label>:1978                                    ; preds = %1899, %1888
  %1979 = phi float [ %1977, %1899 ], [ -1.000000e+00, %1888 ]
  %1980 = fadd fast float %1979, %1886
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  br label %1982

; <label>:1982                                    ; preds = %1978, %1876
  %1983 = phi float [ %1981, %1978 ], [ %1886, %1876 ]
  %1984 = fmul fast float %1983, %424
  br label %1985

; <label>:1985                                    ; preds = %1982, %1871
  %1986 = phi float [ %1984, %1982 ], [ %424, %1871 ]
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 256
  %1990 = icmp eq i32 %1989, 0
  br i1 %1990, label %2037, label %1991

; <label>:1991                                    ; preds = %1985
  %1992 = add i32 %45, 432
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = add i32 %1994, 0
  %1996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1996, %dx.types.Handle %82, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %1999 = add i32 %45, 132
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = shl i32 %2001, 4
  %2003 = and i32 %2002, 32752
  %2004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2003)  ; LegacyF16ToF32(value)
  %2005 = lshr i32 %2001, 7
  %2006 = and i32 %2005, 32752
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = fsub fast float 1.000000e+00, %1986
  %2009 = call float @dx.op.binary.f32(i32 35, float %2008, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2010 = bitcast float %1986 to i32
  %2011 = sitofp i32 %2010 to float
  %2012 = fadd fast float %2011, 0xC1CFBF8940000000
  %2013 = fmul fast float %2007, %2012
  %2014 = fadd fast float %2013, 0x41CFBF8940000000
  %2015 = fptosi float %2014 to i32
  %2016 = bitcast i32 %2015 to float
  %2017 = bitcast float %2009 to i32
  %2018 = sitofp i32 %2017 to float
  %2019 = fadd fast float %2018, 0xC1CFBF8940000000
  %2020 = fmul fast float %2019, %2007
  %2021 = fadd fast float %2020, 0x41CFBF8940000000
  %2022 = fptosi float %2021 to i32
  %2023 = bitcast i32 %2022 to float
  %2024 = fmul fast float %2016, %2004
  %2025 = fmul fast float %2023, %2004
  %2026 = fsub fast float %2009, %2024
  %2027 = fadd fast float %2025, %2009
  %2028 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2029 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2030 = fsub fast float %1998, %2028
  %2031 = fsub fast float %2029, %2028
  %2032 = bitcast float %2031 to i32
  %2033 = sub nsw i32 2129859010, %2032
  %2034 = bitcast i32 %2033 to float
  %2035 = fmul fast float %2034, %2030
  %2036 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  br label %2037

; <label>:2037                                    ; preds = %1991, %1985
  %2038 = phi float [ %2036, %1991 ], [ %1986, %1985 ]
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 128
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2059, label %2043

; <label>:2043                                    ; preds = %2037
  %2044 = add i32 %45, 416
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = add i32 %2046, 0
  %2048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2048, %dx.types.Handle %82, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = and i32 %2052, 524288
  %2054 = icmp ne i32 %2053, 0
  %2055 = fcmp fast ogt float %2050, 0x3FE0101020000000
  %2056 = select i1 %2055, float 1.000000e+00, float 0.000000e+00
  %2057 = select i1 %2054, float %2056, float %2050
  %2058 = fmul fast float %2057, %2038
  br label %2059

; <label>:2059                                    ; preds = %2043, %2037
  %2060 = phi float [ %2058, %2043 ], [ %2038, %2037 ]
  %2061 = fcmp fast ult float %2060, 0x3F70101020000000
  br i1 %2061, label %2604, label %2062

; <label>:2062                                    ; preds = %2059
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 16
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2265, label %2067

; <label>:2067                                    ; preds = %2062
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %45, 368
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = add i32 %2072, 0
  %2074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2074, %dx.types.Handle %81, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.ResRet.f32 %2075, 1
  %2078 = extractvalue %dx.types.ResRet.f32 %2075, 2
  %2079 = extractvalue %dx.types.ResRet.f32 %2075, 3
  %2080 = and i32 %2069, 255
  %2081 = uitofp i32 %2080 to float
  %2082 = lshr i32 %2069, 8
  %2083 = and i32 %2082, 255
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2079, %2081
  %2086 = fadd fast float %2085, %2084
  %2087 = fmul fast float %2086, 0x3F70101000000000
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = and i32 %2089, 512
  %2091 = icmp eq i32 %2090, 0
  br i1 %2091, label %2100, label %2092

; <label>:2092                                    ; preds = %2067
  %2093 = add i32 %45, 448
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = add i32 %2095, 0
  %2097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2096, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2098 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2097, %dx.types.Handle %82, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  br label %2100

; <label>:2100                                    ; preds = %2092, %2067
  %2101 = phi float [ %2099, %2092 ], [ 1.000000e+00, %2067 ]
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = and i32 %2103, 33554432
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %2212, label %2106

; <label>:2106                                    ; preds = %2100
  %2107 = add i32 %45, 256
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = and i32 %2109, 65535
  %2111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2110)  ; LegacyF16ToF32(value)
  %2112 = lshr i32 %2109, 16
  %2113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2112)  ; LegacyF16ToF32(value)
  %2114 = add i32 %45, 260
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = and i32 %2116, 65535
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = lshr i32 %2120, 24
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = and i32 %2120, 255
  %2125 = uitofp i32 %2124 to float
  %2126 = fmul fast float %2125, 0x3F70101020000000
  %2127 = lshr i32 %2120, 8
  %2128 = and i32 %2127, 255
  %2129 = uitofp i32 %2128 to float
  %2130 = fmul fast float %2129, 0x3F70101020000000
  %2131 = lshr i32 %2120, 16
  %2132 = and i32 %2131, 255
  %2133 = uitofp i32 %2132 to float
  %2134 = fmul fast float %2133, 0x3F70101020000000
  %2135 = add i32 %45, 252
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = lshr i32 %2137, 24
  %2139 = uitofp i32 %2138 to float
  %2140 = fmul fast float %2139, 0x3F70101020000000
  %2141 = and i32 %2137, 255
  %2142 = uitofp i32 %2141 to float
  %2143 = fmul fast float %2142, 0x3F70101020000000
  %2144 = lshr i32 %2137, 8
  %2145 = and i32 %2144, 255
  %2146 = uitofp i32 %2145 to float
  %2147 = fmul fast float %2146, 0x3F70101020000000
  %2148 = lshr i32 %2137, 16
  %2149 = and i32 %2148, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = fmul fast float %2150, 0x3F70101020000000
  %2152 = bitcast float %2076 to i32
  %2153 = ashr i32 %2152, 1
  %2154 = sub nsw i32 1597463174, %2153
  %2155 = bitcast i32 %2154 to float
  %2156 = fmul fast float %2076, 5.000000e-01
  %2157 = fmul fast float %2155, %2155
  %2158 = fmul fast float %2157, %2156
  %2159 = fsub fast float 1.500000e+00, %2158
  %2160 = fmul fast float %2155, %2076
  %2161 = fmul fast float %2160, %2159
  %2162 = bitcast float %2077 to i32
  %2163 = ashr i32 %2162, 1
  %2164 = sub nsw i32 1597463174, %2163
  %2165 = bitcast i32 %2164 to float
  %2166 = fmul fast float %2077, 5.000000e-01
  %2167 = fmul fast float %2165, %2165
  %2168 = fmul fast float %2167, %2166
  %2169 = fsub fast float 1.500000e+00, %2168
  %2170 = fmul fast float %2165, %2077
  %2171 = fmul fast float %2170, %2169
  %2172 = bitcast float %2078 to i32
  %2173 = ashr i32 %2172, 1
  %2174 = sub nsw i32 1597463174, %2173
  %2175 = bitcast i32 %2174 to float
  %2176 = fmul fast float %2078, 5.000000e-01
  %2177 = fmul fast float %2175, %2175
  %2178 = fmul fast float %2177, %2176
  %2179 = fsub fast float 1.500000e+00, %2178
  %2180 = fmul fast float %2175, %2078
  %2181 = fmul fast float %2180, %2179
  %2182 = fsub fast float %2161, %2143
  %2183 = fsub fast float %2171, %2147
  %2184 = fsub fast float %2181, %2151
  %2185 = fmul fast float %2182, %2111
  %2186 = fmul fast float %2183, %2113
  %2187 = fmul fast float %2184, %2118
  %2188 = fadd fast float %2185, %2126
  %2189 = fadd fast float %2186, %2130
  %2190 = fadd fast float %2187, %2134
  %2191 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2192 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2193 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2194 = fmul fast float %2191, %2191
  %2195 = fmul fast float %2192, %2192
  %2196 = fmul fast float %2193, %2193
  %2197 = fsub fast float %2194, %2076
  %2198 = fsub fast float %2195, %2077
  %2199 = fsub fast float %2196, %2078
  %2200 = fmul fast float %2197, %2101
  %2201 = fmul fast float %2198, %2101
  %2202 = fmul fast float %2199, %2101
  %2203 = fadd fast float %2200, %2076
  %2204 = fadd fast float %2201, %2077
  %2205 = fadd fast float %2202, %2078
  %2206 = fadd fast float %2123, %2087
  %2207 = fsub fast float %2206, %2140
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fsub fast float %2208, %2087
  %2210 = fmul fast float %2209, %2101
  %2211 = fadd fast float %2210, %2087
  br label %2265

; <label>:2212                                    ; preds = %2100
  %2213 = and i32 %2103, 134217728
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2249, label %2215

; <label>:2215                                    ; preds = %2212
  %2216 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2217 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %2218 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2219 = fadd fast float %2216, -5.000000e-01
  %2220 = fadd fast float %2217, -5.000000e-01
  %2221 = fadd fast float %2218, -5.000000e-01
  %2222 = fmul fast float %2219, %2101
  %2223 = fmul fast float %2220, %2101
  %2224 = fmul fast float %2221, %2101
  %2225 = fadd fast float %2222, 5.000000e-01
  %2226 = fadd fast float %2223, 5.000000e-01
  %2227 = fadd fast float %2224, 5.000000e-01
  %2228 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2229 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2230 = call float @dx.op.unary.f32(i32 24, float %2078)  ; Sqrt(value)
  %2231 = fmul fast float %2225, 2.000000e+00
  %2232 = fsub fast float 1.000000e+00, %2231
  %2233 = fmul fast float %2232, %2228
  %2234 = fadd fast float %2233, %2231
  %2235 = fmul fast float %2234, %2228
  %2236 = fmul fast float %2226, 2.000000e+00
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = fmul fast float %2237, %2229
  %2239 = fadd fast float %2238, %2236
  %2240 = fmul fast float %2239, %2229
  %2241 = fmul fast float %2227, 2.000000e+00
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = fmul fast float %2242, %2230
  %2244 = fadd fast float %2243, %2241
  %2245 = fmul fast float %2244, %2230
  %2246 = fmul fast float %2235, %2235
  %2247 = fmul fast float %2240, %2240
  %2248 = fmul fast float %2245, %2245
  br label %2265

; <label>:2249                                    ; preds = %2212
  %2250 = fmul fast float %302, %302
  %2251 = fmul fast float %306, %306
  %2252 = fmul fast float %310, %310
  %2253 = fadd fast float %2250, -1.000000e+00
  %2254 = fadd fast float %2251, -1.000000e+00
  %2255 = fadd fast float %2252, -1.000000e+00
  %2256 = fmul fast float %2101, %2253
  %2257 = fmul fast float %2101, %2254
  %2258 = fmul fast float %2101, %2255
  %2259 = fadd fast float %2256, 1.000000e+00
  %2260 = fadd fast float %2257, 1.000000e+00
  %2261 = fadd fast float %2258, 1.000000e+00
  %2262 = fmul fast float %2259, %2076
  %2263 = fmul fast float %2260, %2077
  %2264 = fmul fast float %2261, %2078
  br label %2265

; <label>:2265                                    ; preds = %2249, %2215, %2106, %2062
  %2266 = phi float [ %2211, %2106 ], [ %2087, %2215 ], [ %2087, %2249 ], [ 0x3FA23C0BE0000000, %2062 ]
  %2267 = phi float [ %2203, %2106 ], [ %2246, %2215 ], [ %2262, %2249 ], [ 1.000000e+00, %2062 ]
  %2268 = phi float [ %2204, %2106 ], [ %2247, %2215 ], [ %2263, %2249 ], [ 1.000000e+00, %2062 ]
  %2269 = phi float [ %2205, %2106 ], [ %2248, %2215 ], [ %2264, %2249 ], [ 1.000000e+00, %2062 ]
  %2270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.i32 %2270, 1
  %2272 = and i32 %2271, 1
  %2273 = icmp ne i32 %2272, 0
  %2274 = add i32 %45, 356
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = and i32 %2276, 32
  %2278 = icmp ne i32 %2277, 0
  %2279 = and i1 %2273, %2278
  %2280 = select i1 %2279, float 1.000000e+00, float %2267
  %2281 = select i1 %2279, float 0x3FD3333340000000, float %2268
  %2282 = select i1 %2279, float 0x3FD3333340000000, float %2269
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 32
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2359, label %2287

; <label>:2287                                    ; preds = %2265
  %2288 = add i32 %45, 124
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %45, 384
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = add i32 %2293, 0
  %2295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2296 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2295, %dx.types.Handle %81, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = extractvalue %dx.types.ResRet.f32 %2296, 3
  %2301 = and i32 %2290, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = lshr i32 %2290, 8
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = lshr i32 %2290, 16
  %2307 = and i32 %2306, 255
  %2308 = uitofp i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3F70101000000000
  %2310 = fmul fast float %2297, %2302
  %2311 = fadd fast float %2310, %2305
  %2312 = fmul fast float %2311, 0x3F70101000000000
  %2313 = fadd fast float %2298, -5.000000e-01
  %2314 = fadd fast float %2300, -5.000000e-01
  %2315 = fmul fast float %2313, %2309
  %2316 = fmul fast float %2314, %2309
  %2317 = fadd fast float %2315, 5.000000e-01
  %2318 = fadd fast float %2316, 5.000000e-01
  %2319 = fmul fast float %2317, 2.000000e+00
  %2320 = fadd fast float %2319, -1.000000e+00
  %2321 = fmul fast float %2318, 2.000000e+00
  %2322 = fadd fast float %2321, -1.000000e+00
  %2323 = fadd fast float %2320, %2322
  %2324 = fmul fast float %2323, 5.000000e-01
  %2325 = fsub fast float %2320, %2322
  %2326 = fmul fast float %2325, 5.000000e-01
  %2327 = call float @dx.op.unary.f32(i32 6, float %2324)  ; FAbs(value)
  %2328 = fsub fast float 1.000000e+00, %2327
  %2329 = call float @dx.op.unary.f32(i32 6, float %2326)  ; FAbs(value)
  %2330 = fsub fast float %2328, %2329
  %2331 = call float @dx.op.dot3.f32(i32 55, float %2324, float %2326, float %2330, float %2324, float %2326, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2332 = call float @dx.op.unary.f32(i32 25, float %2331)  ; Rsqrt(value)
  %2333 = fmul fast float %2324, %2332
  %2334 = fmul fast float %2326, %2332
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 67108864
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2355, label %2339

; <label>:2339                                    ; preds = %2287
  %2340 = add i32 %45, 312
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 65535
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 65535
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = lshr i32 %2342, 16
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = fsub fast float %2312, %2350
  %2352 = fmul fast float %2351, %2344
  %2353 = fadd fast float %2352, %2348
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  br label %2355

; <label>:2355                                    ; preds = %2339, %2287
  %2356 = phi float [ %2354, %2339 ], [ %2312, %2287 ]
  %2357 = call float @dx.op.dot2.f32(i32 54, float %2333, float %2334, float %1776, float %1777)  ; Dot2(ax,ay,bx,by)
  %2358 = call float @dx.op.dot2.f32(i32 54, float %2333, float %2334, float %1778, float %1779)  ; Dot2(ax,ay,bx,by)
  br label %2359

; <label>:2359                                    ; preds = %2355, %2265
  %2360 = phi float [ %2356, %2355 ], [ 0x3FD6666660000000, %2265 ]
  %2361 = phi float [ %2357, %2355 ], [ 0.000000e+00, %2265 ]
  %2362 = phi float [ %2358, %2355 ], [ 0.000000e+00, %2265 ]
  %2363 = phi float [ %2299, %2355 ], [ 1.000000e+00, %2265 ]
  %2364 = add i32 %45, 192
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = lshr i32 %2366, 22
  %2368 = shl nuw nsw i32 %2367, 5
  %2369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2368)  ; LegacyF16ToF32(value)
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 64
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2407, label %2374

; <label>:2374                                    ; preds = %2359
  %2375 = add i32 %45, 400
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = add i32 %2377, 0
  %2379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 131072
  %2383 = icmp eq i32 %2382, 0
  %2384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2379, %dx.types.Handle %81, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  %2388 = fmul fast float %2385, %290
  %2389 = fmul fast float %2386, %293
  %2390 = fmul fast float %2387, %296
  br i1 %2383, label %2397, label %2391

; <label>:2391                                    ; preds = %2374
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = fmul fast float %2393, %2388
  %2395 = fmul fast float %2393, %2389
  %2396 = fmul fast float %2393, %2390
  br label %2397

; <label>:2397                                    ; preds = %2391, %2374
  %2398 = phi float [ %2394, %2391 ], [ %2388, %2374 ]
  %2399 = phi float [ %2395, %2391 ], [ %2389, %2374 ]
  %2400 = phi float [ %2396, %2391 ], [ %2390, %2374 ]
  %2401 = fmul fast float %2398, %2369
  %2402 = select i1 %186, float %2401, float %2398
  %2403 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2399, float %2400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2404 = select i1 %186, float 0.000000e+00, float %2398
  %2405 = select i1 %186, float %2403, float %2399
  %2406 = select i1 %186, float 0.000000e+00, float %2400
  br label %2407

; <label>:2407                                    ; preds = %2397, %2359
  %2408 = phi float [ %2404, %2397 ], [ 0.000000e+00, %2359 ]
  %2409 = phi float [ %2405, %2397 ], [ 0.000000e+00, %2359 ]
  %2410 = phi float [ %2406, %2397 ], [ 0.000000e+00, %2359 ]
  %2411 = add i32 %45, 128
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = lshr i32 %2413, 8
  %2417 = and i32 %2416, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = fmul fast float %2418, %2419
  %2421 = fadd fast float %2420, %2415
  %2422 = fmul fast float %2421, 0x3F70101020000000
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  br i1 %1764, label %2424, label %2432

; <label>:2424                                    ; preds = %2407
  %2425 = fsub fast float 1.000000e+00, %2060
  %2426 = fmul fast float %2425, %1753
  %2427 = fmul fast float %2425, %1754
  %2428 = fmul fast float %2425, %1755
  %2429 = fmul fast float %2425, %1756
  %2430 = fmul fast float %2425, %1757
  %2431 = fmul fast float %2425, %1758
  br label %2432

; <label>:2432                                    ; preds = %2424, %2407
  %2433 = phi float [ %2426, %2424 ], [ %1753, %2407 ]
  %2434 = phi float [ %2427, %2424 ], [ %1754, %2407 ]
  %2435 = phi float [ %2428, %2424 ], [ %1755, %2407 ]
  %2436 = phi float [ %2429, %2424 ], [ %1756, %2407 ]
  %2437 = phi float [ %2430, %2424 ], [ %1757, %2407 ]
  %2438 = phi float [ %2431, %2424 ], [ %1758, %2407 ]
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 3
  %2442 = icmp eq i32 %2441, 3
  br i1 %2442, label %2521, label %2443

; <label>:2443                                    ; preds = %2432
  %2444 = and i32 %2440, 16
  %2445 = icmp ne i32 %2444, 0
  %2446 = select i1 %2445, float %2060, float 0.000000e+00
  %2447 = icmp eq i32 %2441, 0
  br i1 %2447, label %2448, label %2476

; <label>:2448                                    ; preds = %2443
  %2449 = and i32 %2440, 64
  %2450 = icmp ne i32 %2449, 0
  %2451 = select i1 %2450, float %2060, float 0.000000e+00
  %2452 = fsub fast float %2280, %2433
  %2453 = fsub fast float %2281, %2434
  %2454 = fsub fast float %2282, %2435
  %2455 = fmul fast float %2446, %2452
  %2456 = fmul fast float %2446, %2453
  %2457 = fmul fast float %2446, %2454
  %2458 = fadd fast float %2455, %2433
  %2459 = fadd fast float %2456, %2434
  %2460 = fadd fast float %2457, %2435
  %2461 = fsub fast float %2266, %1759
  %2462 = fmul fast float %2446, %2461
  %2463 = fadd fast float %2462, %1759
  %2464 = fsub fast float %2408, %2436
  %2465 = fsub fast float %2409, %2437
  %2466 = fsub fast float %2410, %2438
  %2467 = fmul fast float %2451, %2464
  %2468 = fmul fast float %2451, %2465
  %2469 = fmul fast float %2451, %2466
  %2470 = fadd fast float %2467, %2436
  %2471 = fadd fast float %2468, %2437
  %2472 = fadd fast float %2469, %2438
  %2473 = fsub fast float %2423, %1762
  %2474 = fmul fast float %2446, %2473
  %2475 = fadd fast float %2474, %1762
  br label %2521

; <label>:2476                                    ; preds = %2443
  %2477 = icmp eq i32 %2441, 1
  br i1 %2477, label %2478, label %2491

; <label>:2478                                    ; preds = %2476
  %2479 = fadd fast float %2280, -1.000000e+00
  %2480 = fadd fast float %2281, -1.000000e+00
  %2481 = fadd fast float %2282, -1.000000e+00
  %2482 = fmul fast float %2446, %2479
  %2483 = fmul fast float %2446, %2480
  %2484 = fmul fast float %2446, %2481
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fadd fast float %2484, 1.000000e+00
  %2488 = fmul fast float %2485, %2433
  %2489 = fmul fast float %2486, %2434
  %2490 = fmul fast float %2487, %2435
  br label %2521

; <label>:2491                                    ; preds = %2476
  %2492 = icmp eq i32 %2441, 2
  br i1 %2492, label %2493, label %2521

; <label>:2493                                    ; preds = %2491
  %2494 = call float @dx.op.unary.f32(i32 24, float %2280)  ; Sqrt(value)
  %2495 = call float @dx.op.unary.f32(i32 24, float %2281)  ; Sqrt(value)
  %2496 = call float @dx.op.unary.f32(i32 24, float %2282)  ; Sqrt(value)
  %2497 = fadd fast float %2494, -5.000000e-01
  %2498 = fadd fast float %2495, -5.000000e-01
  %2499 = fadd fast float %2496, -5.000000e-01
  %2500 = fmul fast float %2497, %2446
  %2501 = fmul fast float %2498, %2446
  %2502 = fmul fast float %2499, %2446
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = fadd fast float %2502, 5.000000e-01
  %2506 = fmul fast float %2503, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2433
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2433
  %2511 = fmul fast float %2504, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2434
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2434
  %2516 = fmul fast float %2505, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2435
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2435
  br label %2521

; <label>:2521                                    ; preds = %2493, %2491, %2478, %2448, %2432
  %2522 = phi float [ %2433, %2432 ], [ %2510, %2493 ], [ %2433, %2491 ], [ %2488, %2478 ], [ %2458, %2448 ]
  %2523 = phi float [ %2434, %2432 ], [ %2515, %2493 ], [ %2434, %2491 ], [ %2489, %2478 ], [ %2459, %2448 ]
  %2524 = phi float [ %2435, %2432 ], [ %2520, %2493 ], [ %2435, %2491 ], [ %2490, %2478 ], [ %2460, %2448 ]
  %2525 = phi float [ %2436, %2432 ], [ %2436, %2493 ], [ %2436, %2491 ], [ %2436, %2478 ], [ %2470, %2448 ]
  %2526 = phi float [ %2437, %2432 ], [ %2437, %2493 ], [ %2437, %2491 ], [ %2437, %2478 ], [ %2471, %2448 ]
  %2527 = phi float [ %2438, %2432 ], [ %2438, %2493 ], [ %2438, %2491 ], [ %2438, %2478 ], [ %2472, %2448 ]
  %2528 = phi float [ %1759, %2432 ], [ %1759, %2493 ], [ %1759, %2491 ], [ %1759, %2478 ], [ %2463, %2448 ]
  %2529 = phi float [ %1762, %2432 ], [ %1762, %2493 ], [ %1762, %2491 ], [ %1762, %2478 ], [ %2475, %2448 ]
  %2530 = and i32 %2440, 12
  %2531 = icmp eq i32 %2530, 12
  br i1 %2531, label %2604, label %2532

; <label>:2532                                    ; preds = %2521
  %2533 = and i32 %2440, 2097184
  %2534 = icmp eq i32 %2533, 2097184
  %2535 = select i1 %2534, float %2060, float 0.000000e+00
  %2536 = and i32 %2440, 4194336
  %2537 = icmp eq i32 %2536, 4194336
  %2538 = select i1 %2537, float %2060, float 0.000000e+00
  %2539 = and i32 %2440, 8388640
  %2540 = icmp eq i32 %2539, 8388640
  %2541 = select i1 %2540, float %2060, float 0.000000e+00
  %2542 = icmp eq i32 %2530, 0
  br i1 %2542, label %2543, label %2556

; <label>:2543                                    ; preds = %2532
  %2544 = fsub fast float %2361, %1751
  %2545 = fsub fast float %2362, %1752
  %2546 = fmul fast float %2535, %2544
  %2547 = fmul fast float %2535, %2545
  %2548 = fadd fast float %2546, %1751
  %2549 = fadd fast float %2547, %1752
  %2550 = fsub fast float %2363, %1761
  %2551 = fmul fast float %2538, %2550
  %2552 = fadd fast float %2551, %1761
  %2553 = fsub fast float %2360, %1760
  %2554 = fmul fast float %2541, %2553
  %2555 = fadd fast float %2554, %1760
  br label %2604

; <label>:2556                                    ; preds = %2532
  %2557 = icmp eq i32 %2530, 4
  br i1 %2557, label %2558, label %2590

; <label>:2558                                    ; preds = %2556
  %2559 = fmul fast float %2535, %2361
  %2560 = fmul fast float %2535, %2362
  %2561 = fadd fast float %2559, %1751
  %2562 = fadd fast float %2560, %1752
  %2563 = call float @dx.op.binary.f32(i32 36, float %1761, float %2363)  ; FMin(a,b)
  %2564 = fsub fast float %2563, %1761
  %2565 = fmul fast float %2564, %2538
  %2566 = fadd fast float %2565, %1761
  %2567 = fadd fast float %2360, %1760
  %2568 = fmul fast float %2567, 0x3FF337FAE0000000
  %2569 = fmul fast float %1760, %1760
  %2570 = fmul fast float %2360, %2360
  %2571 = fadd fast float %2570, %2569
  %2572 = fmul fast float %2571, 0x3FE5152B00000000
  %2573 = fmul fast float %1760, 0xBFCC1F85E0000000
  %2574 = fmul fast float %2573, %2360
  %2575 = fadd fast float %2574, 0xBFE1363700000000
  %2576 = fadd fast float %2575, %2568
  %2577 = fsub fast float %2576, %2572
  %2578 = fmul fast float %2567, 0x3FBA6F0D00000000
  %2579 = fmul fast float %2571, 0x3FD0432880000000
  %2580 = fmul fast float %1760, 0xBFEF110800000000
  %2581 = fmul fast float %2580, %2360
  %2582 = fadd fast float %2581, 1.000000e+00
  %2583 = fsub fast float %2582, %2578
  %2584 = fadd fast float %2583, %2579
  %2585 = fdiv fast float %2577, %2584
  %2586 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2587 = fsub fast float %2586, %1760
  %2588 = fmul fast float %2587, %2541
  %2589 = fadd fast float %2588, %1760
  br label %2604

; <label>:2590                                    ; preds = %2556
  %2591 = icmp eq i32 %2530, 8
  br i1 %2591, label %2592, label %2604

; <label>:2592                                    ; preds = %2590
  %2593 = fmul fast float %2535, %2361
  %2594 = fmul fast float %2535, %2362
  %2595 = fadd fast float %2593, %1751
  %2596 = fadd fast float %2594, %1752
  %2597 = call float @dx.op.binary.f32(i32 36, float %1761, float %2363)  ; FMin(a,b)
  %2598 = fsub fast float %2597, %1761
  %2599 = fmul fast float %2598, %2538
  %2600 = fadd fast float %2599, %1761
  %2601 = fsub fast float %2360, %1760
  %2602 = fmul fast float %2541, %2601
  %2603 = fadd fast float %2602, %1760
  br label %2604

; <label>:2604                                    ; preds = %2592, %2590, %2558, %2543, %2521, %2059, %1763, %1750
  %2605 = phi float [ %1751, %2521 ], [ %1751, %2059 ], [ %1751, %1750 ], [ %2595, %2592 ], [ %1751, %2590 ], [ %2561, %2558 ], [ %2548, %2543 ], [ %1751, %1763 ]
  %2606 = phi float [ %1752, %2521 ], [ %1752, %2059 ], [ %1752, %1750 ], [ %2596, %2592 ], [ %1752, %2590 ], [ %2562, %2558 ], [ %2549, %2543 ], [ %1752, %1763 ]
  %2607 = phi float [ %2522, %2521 ], [ %1753, %2059 ], [ %1753, %1750 ], [ %2522, %2592 ], [ %2522, %2590 ], [ %2522, %2558 ], [ %2522, %2543 ], [ %1753, %1763 ]
  %2608 = phi float [ %2523, %2521 ], [ %1754, %2059 ], [ %1754, %1750 ], [ %2523, %2592 ], [ %2523, %2590 ], [ %2523, %2558 ], [ %2523, %2543 ], [ %1754, %1763 ]
  %2609 = phi float [ %2524, %2521 ], [ %1755, %2059 ], [ %1755, %1750 ], [ %2524, %2592 ], [ %2524, %2590 ], [ %2524, %2558 ], [ %2524, %2543 ], [ %1755, %1763 ]
  %2610 = phi float [ %2525, %2521 ], [ %1756, %2059 ], [ %1756, %1750 ], [ %2525, %2592 ], [ %2525, %2590 ], [ %2525, %2558 ], [ %2525, %2543 ], [ %1756, %1763 ]
  %2611 = phi float [ %2526, %2521 ], [ %1757, %2059 ], [ %1757, %1750 ], [ %2526, %2592 ], [ %2526, %2590 ], [ %2526, %2558 ], [ %2526, %2543 ], [ %1757, %1763 ]
  %2612 = phi float [ %2527, %2521 ], [ %1758, %2059 ], [ %1758, %1750 ], [ %2527, %2592 ], [ %2527, %2590 ], [ %2527, %2558 ], [ %2527, %2543 ], [ %1758, %1763 ]
  %2613 = phi float [ %2528, %2521 ], [ %1759, %2059 ], [ %1759, %1750 ], [ %2528, %2592 ], [ %2528, %2590 ], [ %2528, %2558 ], [ %2528, %2543 ], [ %1759, %1763 ]
  %2614 = phi float [ %1760, %2521 ], [ %1760, %2059 ], [ %1760, %1750 ], [ %2603, %2592 ], [ %1760, %2590 ], [ %2589, %2558 ], [ %2555, %2543 ], [ %1760, %1763 ]
  %2615 = phi float [ %1761, %2521 ], [ %1761, %2059 ], [ %1761, %1750 ], [ %2600, %2592 ], [ %1761, %2590 ], [ %2566, %2558 ], [ %2552, %2543 ], [ %1761, %1763 ]
  %2616 = phi float [ %2529, %2521 ], [ %1762, %2059 ], [ %1762, %1750 ], [ %2529, %2592 ], [ %2529, %2590 ], [ %2529, %2558 ], [ %2529, %2543 ], [ %1762, %1763 ]
  br i1 %377, label %3458, label %2617

; <label>:2617                                    ; preds = %2604
  %2618 = icmp ult i32 %428, 4
  %2619 = add i32 %45, 72
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %45, 76
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = or i32 %2624, %2621
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %3458, label %2627

; <label>:2627                                    ; preds = %2617
  %2628 = and i32 %2621, 262144
  %2629 = icmp ne i32 %2628, 0
  %2630 = select i1 %2629, float %48, float 1.000000e+00
  %2631 = select i1 %2629, float %49, float 0.000000e+00
  %2632 = select i1 %2629, float %50, float 0.000000e+00
  %2633 = select i1 %2629, float %51, float 1.000000e+00
  %2634 = select i1 %2629, float %52, float %73
  %2635 = select i1 %2629, float %53, float %74
  %2636 = add i32 %45, 332
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = lshr i32 %2638, 16
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = fmul fast float %2640, 0x3F50624DE0000000
  %2642 = add i32 %45, 136
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = lshr i32 %2644, 16
  %2646 = and i32 %2645, 255
  %2647 = lshr i32 %2644, 24
  %2648 = add i32 %45, 340
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 65535
  %2652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2651)  ; LegacyF16ToF32(value)
  %2653 = lshr i32 %2650, 16
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = add i32 %45, 80
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = lshr i32 %2657, 22
  %2659 = shl nuw nsw i32 %2658, 5
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = shl i32 %2657, 4
  %2662 = and i32 %2661, 32752
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = lshr i32 %2657, 7
  %2665 = and i32 %2664, 32752
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 3
  %2669 = fmul fast float %2668, 1.000000e+03
  %2670 = fmul fast float %367, %2669
  %2671 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2672 = fadd fast float %2671, %357
  %2673 = fmul fast float %368, %2669
  %2674 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2675 = fadd fast float %2674, %359
  %2676 = fmul fast float %2641, %2669
  %2677 = call float @dx.op.unary.f32(i32 22, float %2676)  ; Frc(value)
  %2678 = fmul fast float %2677, 0x401921FB60000000
  %2679 = fadd fast float %2678, %2660
  %2680 = call float @dx.op.unary.f32(i32 13, float %2679)  ; Sin(value)
  %2681 = call float @dx.op.unary.f32(i32 12, float %2679)  ; Cos(value)
  %2682 = fsub fast float -0.000000e+00, %2680
  %2683 = fadd fast float %2634, -5.000000e-01
  %2684 = fadd fast float %2635, -5.000000e-01
  %2685 = fmul fast float %2652, %2683
  %2686 = fmul fast float %2654, %2684
  %2687 = fadd fast float %2685, 5.000000e-01
  %2688 = fadd fast float %2686, 5.000000e-01
  %2689 = fmul fast float %2663, %2687
  %2690 = fmul fast float %2666, %2688
  %2691 = fmul fast float %2681, %2689
  %2692 = call float @dx.op.tertiary.f32(i32 46, float %2682, float %2690, float %2691)  ; FMad(a,b,c)
  %2693 = fmul fast float %2680, %2689
  %2694 = call float @dx.op.tertiary.f32(i32 46, float %2681, float %2690, float %2693)  ; FMad(a,b,c)
  %2695 = fadd fast float %2672, %2692
  %2696 = fadd fast float %2675, %2694
  %2697 = icmp ugt i32 %2646, 1
  %2698 = icmp ugt i32 %2644, 33554431
  %2699 = or i1 %2698, %2697
  br i1 %2699, label %2700, label %2725

; <label>:2700                                    ; preds = %2627
  %2701 = add i32 %45, 276
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = lshr i32 %2703, 16
  %2705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2704)  ; LegacyF16ToF32(value)
  %2706 = fmul fast float %2668, %2705
  %2707 = call float @dx.op.unary.f32(i32 22, float %2706)  ; Frc(value)
  %2708 = mul nuw nsw i32 %2646, %2647
  %2709 = uitofp i32 %2708 to float
  %2710 = fmul fast float %2707, %2709
  %2711 = call float @dx.op.unary.f32(i32 27, float %2710)  ; Round_ni(value)
  %2712 = fptoui float %2711 to i32
  %2713 = urem i32 %2712, %2646
  %2714 = udiv i32 %2712, %2647
  %2715 = call float @dx.op.unary.f32(i32 22, float %2695)  ; Frc(value)
  %2716 = call float @dx.op.unary.f32(i32 22, float %2696)  ; Frc(value)
  %2717 = uitofp i32 %2713 to float
  %2718 = uitofp i32 %2714 to float
  %2719 = fadd fast float %2715, %2717
  %2720 = fadd fast float %2716, %2718
  %2721 = uitofp i32 %2646 to float
  %2722 = uitofp i32 %2647 to float
  %2723 = fdiv fast float %2719, %2721
  %2724 = fdiv fast float %2720, %2722
  br label %2725

; <label>:2725                                    ; preds = %2700, %2627
  %2726 = phi float [ %2723, %2700 ], [ %2695, %2627 ]
  %2727 = phi float [ %2724, %2700 ], [ %2696, %2627 ]
  %2728 = and i32 %2621, 16777216
  %2729 = icmp eq i32 %2728, 0
  br i1 %2729, label %2839, label %2730

; <label>:2730                                    ; preds = %2725
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.CBufRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.CBufRet.f32 %2731, 2
  %2735 = fadd fast float %2732, %144
  %2736 = fadd fast float %2733, %145
  %2737 = fadd fast float %2734, %146
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = icmp eq i32 %46, 65535
  br i1 %2741, label %2836, label %2742

; <label>:2742                                    ; preds = %2730
  %2743 = lshr i32 %46, 1
  %2744 = shl i32 %2743, 2
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = and i32 %46, 1
  %2748 = icmp ne i32 %2747, 0
  %2749 = lshr i32 %2746, 16
  %2750 = and i32 %2746, 65535
  %2751 = select i1 %2748, i32 %2749, i32 %2750
  %2752 = icmp eq i32 %2751, 65535
  br i1 %2752, label %2832, label %2753

; <label>:2753                                    ; preds = %2742
  %2754 = mul nuw nsw i32 %2751, 40
  %2755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = add nuw nsw i32 %2754, 12
  %2760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.ResRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.ResRet.f32 %2760, 2
  %2764 = add nuw nsw i32 %2754, 24
  %2765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.ResRet.f32 %2765, 1
  %2768 = extractvalue %dx.types.ResRet.f32 %2765, 2
  %2769 = add nuw nsw i32 %2754, 36
  %2770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = fsub fast float %2735, %2756
  %2773 = fsub fast float %2736, %2757
  %2774 = fsub fast float %2737, %2758
  %2775 = fmul fast float %2771, %2772
  %2776 = fmul fast float %2771, %2773
  %2777 = fmul fast float %2771, %2774
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2781 = fadd fast float %2778, 5.000000e-01
  %2782 = fadd fast float %2779, 5.000000e-01
  %2783 = fadd fast float %2780, 5.000000e-01
  %2784 = fmul fast float %2781, %2761
  %2785 = fmul fast float %2782, %2762
  %2786 = fmul fast float %2783, %2763
  %2787 = shl i32 %46, 2
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = add i32 %2789, 0
  %2791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2792 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2793 = call float @dx.op.unary.f32(i32 22, float %2785)  ; Frc(value)
  %2794 = call float @dx.op.unary.f32(i32 22, float %2786)  ; Frc(value)
  %2795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2791, %dx.types.Handle %40, float %2792, float %2793, float %2794, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2796 = extractvalue %dx.types.ResRet.f32 %2795, 0
  %2797 = extractvalue %dx.types.ResRet.f32 %2795, 1
  %2798 = extractvalue %dx.types.ResRet.f32 %2795, 2
  %2799 = fmul fast float %2796, 1.023000e+03
  %2800 = fmul fast float %2797, 1.023000e+03
  %2801 = fmul fast float %2798, 1.023000e+03
  %2802 = fadd fast float %2799, 5.000000e-01
  %2803 = fadd fast float %2800, 5.000000e-01
  %2804 = fadd fast float %2801, 5.000000e-01
  %2805 = call float @dx.op.unary.f32(i32 27, float %2802)  ; Round_ni(value)
  %2806 = call float @dx.op.unary.f32(i32 27, float %2803)  ; Round_ni(value)
  %2807 = call float @dx.op.unary.f32(i32 27, float %2804)  ; Round_ni(value)
  %2808 = fsub fast float %2775, %2778
  %2809 = fsub fast float %2776, %2779
  %2810 = fsub fast float %2777, %2780
  %2811 = fmul fast float %2808, 7.500000e-01
  %2812 = fmul fast float %2809, 7.500000e-01
  %2813 = fmul fast float %2810, 7.500000e-01
  %2814 = fadd fast float %2778, 1.250000e-01
  %2815 = fadd fast float %2814, %2811
  %2816 = fadd fast float %2815, %2805
  %2817 = fadd fast float %2779, 1.250000e-01
  %2818 = fadd fast float %2817, %2812
  %2819 = fadd fast float %2818, %2806
  %2820 = fadd fast float %2780, 1.250000e-01
  %2821 = fadd fast float %2820, %2813
  %2822 = fadd fast float %2821, %2807
  %2823 = fmul fast float %2816, %2766
  %2824 = fmul fast float %2819, %2767
  %2825 = fmul fast float %2822, %2768
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %2827, 0
  %2829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2829, %dx.types.Handle %38, float %2823, float %2824, float %2825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  br label %2832

; <label>:2832                                    ; preds = %2753, %2742
  %2833 = phi float [ %2831, %2753 ], [ -1.000000e+00, %2742 ]
  %2834 = fadd fast float %2833, %2740
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  br label %2836

; <label>:2836                                    ; preds = %2832, %2730
  %2837 = phi float [ %2835, %2832 ], [ %2740, %2730 ]
  %2838 = fmul fast float %2837, %423
  br label %2839

; <label>:2839                                    ; preds = %2836, %2725
  %2840 = phi float [ %2838, %2836 ], [ %423, %2725 ]
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 256
  %2844 = icmp eq i32 %2843, 0
  br i1 %2844, label %2891, label %2845

; <label>:2845                                    ; preds = %2839
  %2846 = add i32 %45, 436
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = add i32 %2848, 0
  %2850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2851 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2850, %dx.types.Handle %82, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2852 = extractvalue %dx.types.ResRet.f32 %2851, 0
  %2853 = add i32 %45, 148
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = shl i32 %2855, 4
  %2857 = and i32 %2856, 32752
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = lshr i32 %2855, 7
  %2860 = and i32 %2859, 32752
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = fsub fast float 1.000000e+00, %2840
  %2863 = call float @dx.op.binary.f32(i32 35, float %2862, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2864 = bitcast float %2840 to i32
  %2865 = sitofp i32 %2864 to float
  %2866 = fadd fast float %2865, 0xC1CFBF8940000000
  %2867 = fmul fast float %2861, %2866
  %2868 = fadd fast float %2867, 0x41CFBF8940000000
  %2869 = fptosi float %2868 to i32
  %2870 = bitcast i32 %2869 to float
  %2871 = bitcast float %2863 to i32
  %2872 = sitofp i32 %2871 to float
  %2873 = fadd fast float %2872, 0xC1CFBF8940000000
  %2874 = fmul fast float %2873, %2861
  %2875 = fadd fast float %2874, 0x41CFBF8940000000
  %2876 = fptosi float %2875 to i32
  %2877 = bitcast i32 %2876 to float
  %2878 = fmul fast float %2870, %2858
  %2879 = fmul fast float %2877, %2858
  %2880 = fsub fast float %2863, %2878
  %2881 = fadd fast float %2879, %2863
  %2882 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2883 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2884 = fsub fast float %2852, %2882
  %2885 = fsub fast float %2883, %2882
  %2886 = bitcast float %2885 to i32
  %2887 = sub nsw i32 2129859010, %2886
  %2888 = bitcast i32 %2887 to float
  %2889 = fmul fast float %2888, %2884
  %2890 = call float @dx.op.unary.f32(i32 7, float %2889)  ; Saturate(value)
  br label %2891

; <label>:2891                                    ; preds = %2845, %2839
  %2892 = phi float [ %2890, %2845 ], [ %2840, %2839 ]
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 128
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %2913, label %2897

; <label>:2897                                    ; preds = %2891
  %2898 = add i32 %45, 420
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = add i32 %2900, 0
  %2902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2902, %dx.types.Handle %82, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2904 = extractvalue %dx.types.ResRet.f32 %2903, 0
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 524288
  %2908 = icmp ne i32 %2907, 0
  %2909 = fcmp fast ogt float %2904, 0x3FE0101020000000
  %2910 = select i1 %2909, float 1.000000e+00, float 0.000000e+00
  %2911 = select i1 %2908, float %2910, float %2904
  %2912 = fmul fast float %2911, %2892
  br label %2913

; <label>:2913                                    ; preds = %2897, %2891
  %2914 = phi float [ %2912, %2897 ], [ %2892, %2891 ]
  %2915 = fcmp fast ult float %2914, 0x3F70101020000000
  br i1 %2915, label %3458, label %2916

; <label>:2916                                    ; preds = %2913
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 16
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %3119, label %2921

; <label>:2921                                    ; preds = %2916
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = add i32 %45, 372
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %2926, 0
  %2928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2928, %dx.types.Handle %81, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2930 = extractvalue %dx.types.ResRet.f32 %2929, 0
  %2931 = extractvalue %dx.types.ResRet.f32 %2929, 1
  %2932 = extractvalue %dx.types.ResRet.f32 %2929, 2
  %2933 = extractvalue %dx.types.ResRet.f32 %2929, 3
  %2934 = and i32 %2923, 255
  %2935 = uitofp i32 %2934 to float
  %2936 = lshr i32 %2923, 8
  %2937 = and i32 %2936, 255
  %2938 = uitofp i32 %2937 to float
  %2939 = fmul fast float %2933, %2935
  %2940 = fadd fast float %2939, %2938
  %2941 = fmul fast float %2940, 0x3F70101000000000
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 512
  %2945 = icmp eq i32 %2944, 0
  br i1 %2945, label %2954, label %2946

; <label>:2946                                    ; preds = %2921
  %2947 = add i32 %45, 452
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = add i32 %2949, 0
  %2951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2952 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2951, %dx.types.Handle %82, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  br label %2954

; <label>:2954                                    ; preds = %2946, %2921
  %2955 = phi float [ %2953, %2946 ], [ 1.000000e+00, %2921 ]
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 33554432
  %2959 = icmp eq i32 %2958, 0
  br i1 %2959, label %3066, label %2960

; <label>:2960                                    ; preds = %2954
  %2961 = add i32 %45, 272
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 65535
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = lshr i32 %2963, 16
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = add i32 %45, 276
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 65535
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = lshr i32 %2974, 24
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = and i32 %2974, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = lshr i32 %2974, 8
  %2982 = and i32 %2981, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = fmul fast float %2983, 0x3F70101020000000
  %2985 = lshr i32 %2974, 16
  %2986 = and i32 %2985, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = add i32 %45, 268
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = lshr i32 %2991, 24
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2993, 0x3F70101020000000
  %2995 = and i32 %2991, 255
  %2996 = uitofp i32 %2995 to float
  %2997 = fmul fast float %2996, 0x3F70101020000000
  %2998 = lshr i32 %2991, 8
  %2999 = and i32 %2998, 255
  %3000 = uitofp i32 %2999 to float
  %3001 = fmul fast float %3000, 0x3F70101020000000
  %3002 = lshr i32 %2991, 16
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = bitcast float %2930 to i32
  %3007 = ashr i32 %3006, 1
  %3008 = sub nsw i32 1597463174, %3007
  %3009 = bitcast i32 %3008 to float
  %3010 = fmul fast float %2930, 5.000000e-01
  %3011 = fmul fast float %3009, %3009
  %3012 = fmul fast float %3011, %3010
  %3013 = fsub fast float 1.500000e+00, %3012
  %3014 = fmul fast float %3009, %2930
  %3015 = fmul fast float %3014, %3013
  %3016 = bitcast float %2931 to i32
  %3017 = ashr i32 %3016, 1
  %3018 = sub nsw i32 1597463174, %3017
  %3019 = bitcast i32 %3018 to float
  %3020 = fmul fast float %2931, 5.000000e-01
  %3021 = fmul fast float %3019, %3019
  %3022 = fmul fast float %3021, %3020
  %3023 = fsub fast float 1.500000e+00, %3022
  %3024 = fmul fast float %3019, %2931
  %3025 = fmul fast float %3024, %3023
  %3026 = bitcast float %2932 to i32
  %3027 = ashr i32 %3026, 1
  %3028 = sub nsw i32 1597463174, %3027
  %3029 = bitcast i32 %3028 to float
  %3030 = fmul fast float %2932, 5.000000e-01
  %3031 = fmul fast float %3029, %3029
  %3032 = fmul fast float %3031, %3030
  %3033 = fsub fast float 1.500000e+00, %3032
  %3034 = fmul fast float %3029, %2932
  %3035 = fmul fast float %3034, %3033
  %3036 = fsub fast float %3015, %2997
  %3037 = fsub fast float %3025, %3001
  %3038 = fsub fast float %3035, %3005
  %3039 = fmul fast float %3036, %2965
  %3040 = fmul fast float %3037, %2967
  %3041 = fmul fast float %3038, %2972
  %3042 = fadd fast float %3039, %2980
  %3043 = fadd fast float %3040, %2984
  %3044 = fadd fast float %3041, %2988
  %3045 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  %3046 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3047 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3048 = fmul fast float %3045, %3045
  %3049 = fmul fast float %3046, %3046
  %3050 = fmul fast float %3047, %3047
  %3051 = fsub fast float %3048, %2930
  %3052 = fsub fast float %3049, %2931
  %3053 = fsub fast float %3050, %2932
  %3054 = fmul fast float %3051, %2955
  %3055 = fmul fast float %3052, %2955
  %3056 = fmul fast float %3053, %2955
  %3057 = fadd fast float %3054, %2930
  %3058 = fadd fast float %3055, %2931
  %3059 = fadd fast float %3056, %2932
  %3060 = fadd fast float %2977, %2941
  %3061 = fsub fast float %3060, %2994
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3063 = fsub fast float %3062, %2941
  %3064 = fmul fast float %3063, %2955
  %3065 = fadd fast float %3064, %2941
  br label %3119

; <label>:3066                                    ; preds = %2954
  %3067 = and i32 %2957, 134217728
  %3068 = icmp eq i32 %3067, 0
  br i1 %3068, label %3103, label %3069

; <label>:3069                                    ; preds = %3066
  %3070 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3071 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %3072 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %3073 = fadd fast float %3070, -5.000000e-01
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fadd fast float %3072, -5.000000e-01
  %3076 = fmul fast float %3073, %2955
  %3077 = fmul fast float %3074, %2955
  %3078 = fmul fast float %3075, %2955
  %3079 = fadd fast float %3076, 5.000000e-01
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = fadd fast float %3078, 5.000000e-01
  %3082 = call float @dx.op.unary.f32(i32 24, float %2930)  ; Sqrt(value)
  %3083 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %3084 = call float @dx.op.unary.f32(i32 24, float %2932)  ; Sqrt(value)
  %3085 = fmul fast float %3079, 2.000000e+00
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = fmul fast float %3086, %3082
  %3088 = fadd fast float %3087, %3085
  %3089 = fmul fast float %3088, %3082
  %3090 = fmul fast float %3080, 2.000000e+00
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = fmul fast float %3091, %3083
  %3093 = fadd fast float %3092, %3090
  %3094 = fmul fast float %3093, %3083
  %3095 = fmul fast float %3081, 2.000000e+00
  %3096 = fsub fast float 1.000000e+00, %3095
  %3097 = fmul fast float %3096, %3084
  %3098 = fadd fast float %3097, %3095
  %3099 = fmul fast float %3098, %3084
  %3100 = fmul fast float %3089, %3089
  %3101 = fmul fast float %3094, %3094
  %3102 = fmul fast float %3099, %3099
  br label %3119

; <label>:3103                                    ; preds = %3066
  %3104 = fmul fast float %344, %344
  %3105 = fmul fast float %348, %348
  %3106 = fmul fast float %352, %352
  %3107 = fadd fast float %3104, -1.000000e+00
  %3108 = fadd fast float %3105, -1.000000e+00
  %3109 = fadd fast float %3106, -1.000000e+00
  %3110 = fmul fast float %2955, %3107
  %3111 = fmul fast float %2955, %3108
  %3112 = fmul fast float %2955, %3109
  %3113 = fadd fast float %3110, 1.000000e+00
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fadd fast float %3112, 1.000000e+00
  %3116 = fmul fast float %3113, %2930
  %3117 = fmul fast float %3114, %2931
  %3118 = fmul fast float %3115, %2932
  br label %3119

; <label>:3119                                    ; preds = %3103, %3069, %2960, %2916
  %3120 = phi float [ %3065, %2960 ], [ %2941, %3069 ], [ %2941, %3103 ], [ 0x3FA23C0BE0000000, %2916 ]
  %3121 = phi float [ %3057, %2960 ], [ %3100, %3069 ], [ %3116, %3103 ], [ 1.000000e+00, %2916 ]
  %3122 = phi float [ %3058, %2960 ], [ %3101, %3069 ], [ %3117, %3103 ], [ 1.000000e+00, %2916 ]
  %3123 = phi float [ %3059, %2960 ], [ %3102, %3069 ], [ %3118, %3103 ], [ 1.000000e+00, %2916 ]
  %3124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3125 = extractvalue %dx.types.CBufRet.i32 %3124, 1
  %3126 = and i32 %3125, 1
  %3127 = icmp ne i32 %3126, 0
  %3128 = add i32 %45, 356
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = and i32 %3130, 32
  %3132 = icmp ne i32 %3131, 0
  %3133 = and i1 %3127, %3132
  %3134 = select i1 %3133, float 1.000000e+00, float %3121
  %3135 = select i1 %3133, float 0x3FD3333340000000, float %3122
  %3136 = select i1 %3133, float 0x3FD3333340000000, float %3123
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 32
  %3140 = icmp eq i32 %3139, 0
  br i1 %3140, label %3213, label %3141

; <label>:3141                                    ; preds = %3119
  %3142 = add i32 %45, 140
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %45, 388
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = add i32 %3147, 0
  %3149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3149, %dx.types.Handle %81, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.ResRet.f32 %3150, 1
  %3153 = extractvalue %dx.types.ResRet.f32 %3150, 2
  %3154 = extractvalue %dx.types.ResRet.f32 %3150, 3
  %3155 = and i32 %3144, 255
  %3156 = uitofp i32 %3155 to float
  %3157 = lshr i32 %3144, 8
  %3158 = and i32 %3157, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = lshr i32 %3144, 16
  %3161 = and i32 %3160, 255
  %3162 = uitofp i32 %3161 to float
  %3163 = fmul fast float %3162, 0x3F70101000000000
  %3164 = fmul fast float %3151, %3156
  %3165 = fadd fast float %3164, %3159
  %3166 = fmul fast float %3165, 0x3F70101000000000
  %3167 = fadd fast float %3152, -5.000000e-01
  %3168 = fadd fast float %3154, -5.000000e-01
  %3169 = fmul fast float %3167, %3163
  %3170 = fmul fast float %3168, %3163
  %3171 = fadd fast float %3169, 5.000000e-01
  %3172 = fadd fast float %3170, 5.000000e-01
  %3173 = fmul fast float %3171, 2.000000e+00
  %3174 = fadd fast float %3173, -1.000000e+00
  %3175 = fmul fast float %3172, 2.000000e+00
  %3176 = fadd fast float %3175, -1.000000e+00
  %3177 = fadd fast float %3174, %3176
  %3178 = fmul fast float %3177, 5.000000e-01
  %3179 = fsub fast float %3174, %3176
  %3180 = fmul fast float %3179, 5.000000e-01
  %3181 = call float @dx.op.unary.f32(i32 6, float %3178)  ; FAbs(value)
  %3182 = fsub fast float 1.000000e+00, %3181
  %3183 = call float @dx.op.unary.f32(i32 6, float %3180)  ; FAbs(value)
  %3184 = fsub fast float %3182, %3183
  %3185 = call float @dx.op.dot3.f32(i32 55, float %3178, float %3180, float %3184, float %3178, float %3180, float %3184)  ; Dot3(ax,ay,az,bx,by,bz)
  %3186 = call float @dx.op.unary.f32(i32 25, float %3185)  ; Rsqrt(value)
  %3187 = fmul fast float %3178, %3186
  %3188 = fmul fast float %3180, %3186
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 67108864
  %3192 = icmp eq i32 %3191, 0
  br i1 %3192, label %3209, label %3193

; <label>:3193                                    ; preds = %3141
  %3194 = add i32 %45, 328
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 65535
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 65535
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201)  ; LegacyF16ToF32(value)
  %3203 = lshr i32 %3196, 16
  %3204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3203)  ; LegacyF16ToF32(value)
  %3205 = fsub fast float %3166, %3204
  %3206 = fmul fast float %3205, %3198
  %3207 = fadd fast float %3206, %3202
  %3208 = call float @dx.op.unary.f32(i32 7, float %3207)  ; Saturate(value)
  br label %3209

; <label>:3209                                    ; preds = %3193, %3141
  %3210 = phi float [ %3208, %3193 ], [ %3166, %3141 ]
  %3211 = call float @dx.op.dot2.f32(i32 54, float %3187, float %3188, float %2630, float %2631)  ; Dot2(ax,ay,bx,by)
  %3212 = call float @dx.op.dot2.f32(i32 54, float %3187, float %3188, float %2632, float %2633)  ; Dot2(ax,ay,bx,by)
  br label %3213

; <label>:3213                                    ; preds = %3209, %3119
  %3214 = phi float [ %3210, %3209 ], [ 0x3FD6666660000000, %3119 ]
  %3215 = phi float [ %3211, %3209 ], [ 0.000000e+00, %3119 ]
  %3216 = phi float [ %3212, %3209 ], [ 0.000000e+00, %3119 ]
  %3217 = phi float [ %3153, %3209 ], [ 1.000000e+00, %3119 ]
  %3218 = add i32 %45, 208
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = lshr i32 %3220, 22
  %3222 = shl nuw nsw i32 %3221, 5
  %3223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3222)  ; LegacyF16ToF32(value)
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = and i32 %3225, 64
  %3227 = icmp eq i32 %3226, 0
  br i1 %3227, label %3261, label %3228

; <label>:3228                                    ; preds = %3213
  %3229 = add i32 %45, 404
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = add i32 %3231, 0
  %3233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = and i32 %3235, 131072
  %3237 = icmp eq i32 %3236, 0
  %3238 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3233, %dx.types.Handle %81, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3239 = extractvalue %dx.types.ResRet.f32 %3238, 0
  %3240 = extractvalue %dx.types.ResRet.f32 %3238, 1
  %3241 = extractvalue %dx.types.ResRet.f32 %3238, 2
  %3242 = fmul fast float %3239, %332
  %3243 = fmul fast float %3240, %335
  %3244 = fmul fast float %3241, %338
  br i1 %3237, label %3251, label %3245

; <label>:3245                                    ; preds = %3228
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 0
  %3248 = fmul fast float %3247, %3242
  %3249 = fmul fast float %3247, %3243
  %3250 = fmul fast float %3247, %3244
  br label %3251

; <label>:3251                                    ; preds = %3245, %3228
  %3252 = phi float [ %3248, %3245 ], [ %3242, %3228 ]
  %3253 = phi float [ %3249, %3245 ], [ %3243, %3228 ]
  %3254 = phi float [ %3250, %3245 ], [ %3244, %3228 ]
  %3255 = fmul fast float %3252, %3223
  %3256 = select i1 %186, float %3255, float %3252
  %3257 = call float @dx.op.dot3.f32(i32 55, float %3256, float %3253, float %3254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3258 = select i1 %186, float 0.000000e+00, float %3252
  %3259 = select i1 %186, float %3257, float %3253
  %3260 = select i1 %186, float 0.000000e+00, float %3254
  br label %3261

; <label>:3261                                    ; preds = %3251, %3213
  %3262 = phi float [ %3258, %3251 ], [ 0.000000e+00, %3213 ]
  %3263 = phi float [ %3259, %3251 ], [ 0.000000e+00, %3213 ]
  %3264 = phi float [ %3260, %3251 ], [ 0.000000e+00, %3213 ]
  %3265 = add i32 %45, 144
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = lshr i32 %3267, 8
  %3271 = and i32 %3270, 255
  %3272 = uitofp i32 %3271 to float
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3134, float %3135, float %3136, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = fmul fast float %3272, %3273
  %3275 = fadd fast float %3274, %3269
  %3276 = fmul fast float %3275, 0x3F70101020000000
  %3277 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  br i1 %2618, label %3278, label %3286

; <label>:3278                                    ; preds = %3261
  %3279 = fsub fast float 1.000000e+00, %2914
  %3280 = fmul fast float %3279, %2607
  %3281 = fmul fast float %3279, %2608
  %3282 = fmul fast float %3279, %2609
  %3283 = fmul fast float %3279, %2610
  %3284 = fmul fast float %3279, %2611
  %3285 = fmul fast float %3279, %2612
  br label %3286

; <label>:3286                                    ; preds = %3278, %3261
  %3287 = phi float [ %3280, %3278 ], [ %2607, %3261 ]
  %3288 = phi float [ %3281, %3278 ], [ %2608, %3261 ]
  %3289 = phi float [ %3282, %3278 ], [ %2609, %3261 ]
  %3290 = phi float [ %3283, %3278 ], [ %2610, %3261 ]
  %3291 = phi float [ %3284, %3278 ], [ %2611, %3261 ]
  %3292 = phi float [ %3285, %3278 ], [ %2612, %3261 ]
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = and i32 %3294, 3
  %3296 = icmp eq i32 %3295, 3
  br i1 %3296, label %3375, label %3297

; <label>:3297                                    ; preds = %3286
  %3298 = and i32 %3294, 16
  %3299 = icmp ne i32 %3298, 0
  %3300 = select i1 %3299, float %2914, float 0.000000e+00
  %3301 = icmp eq i32 %3295, 0
  br i1 %3301, label %3302, label %3330

; <label>:3302                                    ; preds = %3297
  %3303 = and i32 %3294, 64
  %3304 = icmp ne i32 %3303, 0
  %3305 = select i1 %3304, float %2914, float 0.000000e+00
  %3306 = fsub fast float %3134, %3287
  %3307 = fsub fast float %3135, %3288
  %3308 = fsub fast float %3136, %3289
  %3309 = fmul fast float %3300, %3306
  %3310 = fmul fast float %3300, %3307
  %3311 = fmul fast float %3300, %3308
  %3312 = fadd fast float %3309, %3287
  %3313 = fadd fast float %3310, %3288
  %3314 = fadd fast float %3311, %3289
  %3315 = fsub fast float %3120, %2613
  %3316 = fmul fast float %3300, %3315
  %3317 = fadd fast float %3316, %2613
  %3318 = fsub fast float %3262, %3290
  %3319 = fsub fast float %3263, %3291
  %3320 = fsub fast float %3264, %3292
  %3321 = fmul fast float %3305, %3318
  %3322 = fmul fast float %3305, %3319
  %3323 = fmul fast float %3305, %3320
  %3324 = fadd fast float %3321, %3290
  %3325 = fadd fast float %3322, %3291
  %3326 = fadd fast float %3323, %3292
  %3327 = fsub fast float %3277, %2616
  %3328 = fmul fast float %3300, %3327
  %3329 = fadd fast float %3328, %2616
  br label %3375

; <label>:3330                                    ; preds = %3297
  %3331 = icmp eq i32 %3295, 1
  br i1 %3331, label %3332, label %3345

; <label>:3332                                    ; preds = %3330
  %3333 = fadd fast float %3134, -1.000000e+00
  %3334 = fadd fast float %3135, -1.000000e+00
  %3335 = fadd fast float %3136, -1.000000e+00
  %3336 = fmul fast float %3300, %3333
  %3337 = fmul fast float %3300, %3334
  %3338 = fmul fast float %3300, %3335
  %3339 = fadd fast float %3336, 1.000000e+00
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fadd fast float %3338, 1.000000e+00
  %3342 = fmul fast float %3339, %3287
  %3343 = fmul fast float %3340, %3288
  %3344 = fmul fast float %3341, %3289
  br label %3375

; <label>:3345                                    ; preds = %3330
  %3346 = icmp eq i32 %3295, 2
  br i1 %3346, label %3347, label %3375

; <label>:3347                                    ; preds = %3345
  %3348 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3349 = call float @dx.op.unary.f32(i32 24, float %3135)  ; Sqrt(value)
  %3350 = call float @dx.op.unary.f32(i32 24, float %3136)  ; Sqrt(value)
  %3351 = fadd fast float %3348, -5.000000e-01
  %3352 = fadd fast float %3349, -5.000000e-01
  %3353 = fadd fast float %3350, -5.000000e-01
  %3354 = fmul fast float %3351, %3300
  %3355 = fmul fast float %3352, %3300
  %3356 = fmul fast float %3353, %3300
  %3357 = fadd fast float %3354, 5.000000e-01
  %3358 = fadd fast float %3355, 5.000000e-01
  %3359 = fadd fast float %3356, 5.000000e-01
  %3360 = fmul fast float %3357, 2.000000e+00
  %3361 = fsub fast float 1.000000e+00, %3360
  %3362 = fmul fast float %3361, %3287
  %3363 = fadd fast float %3362, %3360
  %3364 = fmul fast float %3363, %3287
  %3365 = fmul fast float %3358, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3288
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3288
  %3370 = fmul fast float %3359, 2.000000e+00
  %3371 = fsub fast float 1.000000e+00, %3370
  %3372 = fmul fast float %3371, %3289
  %3373 = fadd fast float %3372, %3370
  %3374 = fmul fast float %3373, %3289
  br label %3375

; <label>:3375                                    ; preds = %3347, %3345, %3332, %3302, %3286
  %3376 = phi float [ %3287, %3286 ], [ %3364, %3347 ], [ %3287, %3345 ], [ %3342, %3332 ], [ %3312, %3302 ]
  %3377 = phi float [ %3288, %3286 ], [ %3369, %3347 ], [ %3288, %3345 ], [ %3343, %3332 ], [ %3313, %3302 ]
  %3378 = phi float [ %3289, %3286 ], [ %3374, %3347 ], [ %3289, %3345 ], [ %3344, %3332 ], [ %3314, %3302 ]
  %3379 = phi float [ %3290, %3286 ], [ %3290, %3347 ], [ %3290, %3345 ], [ %3290, %3332 ], [ %3324, %3302 ]
  %3380 = phi float [ %3291, %3286 ], [ %3291, %3347 ], [ %3291, %3345 ], [ %3291, %3332 ], [ %3325, %3302 ]
  %3381 = phi float [ %3292, %3286 ], [ %3292, %3347 ], [ %3292, %3345 ], [ %3292, %3332 ], [ %3326, %3302 ]
  %3382 = phi float [ %2613, %3286 ], [ %2613, %3347 ], [ %2613, %3345 ], [ %2613, %3332 ], [ %3317, %3302 ]
  %3383 = phi float [ %2616, %3286 ], [ %2616, %3347 ], [ %2616, %3345 ], [ %2616, %3332 ], [ %3329, %3302 ]
  %3384 = and i32 %3294, 12
  %3385 = icmp eq i32 %3384, 12
  br i1 %3385, label %3458, label %3386

; <label>:3386                                    ; preds = %3375
  %3387 = and i32 %3294, 2097184
  %3388 = icmp eq i32 %3387, 2097184
  %3389 = select i1 %3388, float %2914, float 0.000000e+00
  %3390 = and i32 %3294, 4194336
  %3391 = icmp eq i32 %3390, 4194336
  %3392 = select i1 %3391, float %2914, float 0.000000e+00
  %3393 = and i32 %3294, 8388640
  %3394 = icmp eq i32 %3393, 8388640
  %3395 = select i1 %3394, float %2914, float 0.000000e+00
  %3396 = icmp eq i32 %3384, 0
  br i1 %3396, label %3397, label %3410

; <label>:3397                                    ; preds = %3386
  %3398 = fsub fast float %3215, %2605
  %3399 = fsub fast float %3216, %2606
  %3400 = fmul fast float %3389, %3398
  %3401 = fmul fast float %3389, %3399
  %3402 = fadd fast float %3400, %2605
  %3403 = fadd fast float %3401, %2606
  %3404 = fsub fast float %3217, %2615
  %3405 = fmul fast float %3392, %3404
  %3406 = fadd fast float %3405, %2615
  %3407 = fsub fast float %3214, %2614
  %3408 = fmul fast float %3395, %3407
  %3409 = fadd fast float %3408, %2614
  br label %3458

; <label>:3410                                    ; preds = %3386
  %3411 = icmp eq i32 %3384, 4
  br i1 %3411, label %3412, label %3444

; <label>:3412                                    ; preds = %3410
  %3413 = fmul fast float %3389, %3215
  %3414 = fmul fast float %3389, %3216
  %3415 = fadd fast float %3413, %2605
  %3416 = fadd fast float %3414, %2606
  %3417 = call float @dx.op.binary.f32(i32 36, float %2615, float %3217)  ; FMin(a,b)
  %3418 = fsub fast float %3417, %2615
  %3419 = fmul fast float %3418, %3392
  %3420 = fadd fast float %3419, %2615
  %3421 = fadd fast float %3214, %2614
  %3422 = fmul fast float %3421, 0x3FF337FAE0000000
  %3423 = fmul fast float %2614, %2614
  %3424 = fmul fast float %3214, %3214
  %3425 = fadd fast float %3424, %3423
  %3426 = fmul fast float %3425, 0x3FE5152B00000000
  %3427 = fmul fast float %2614, 0xBFCC1F85E0000000
  %3428 = fmul fast float %3427, %3214
  %3429 = fadd fast float %3428, 0xBFE1363700000000
  %3430 = fadd fast float %3429, %3422
  %3431 = fsub fast float %3430, %3426
  %3432 = fmul fast float %3421, 0x3FBA6F0D00000000
  %3433 = fmul fast float %3425, 0x3FD0432880000000
  %3434 = fmul fast float %2614, 0xBFEF110800000000
  %3435 = fmul fast float %3434, %3214
  %3436 = fadd fast float %3435, 1.000000e+00
  %3437 = fsub fast float %3436, %3432
  %3438 = fadd fast float %3437, %3433
  %3439 = fdiv fast float %3431, %3438
  %3440 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3441 = fsub fast float %3440, %2614
  %3442 = fmul fast float %3441, %3395
  %3443 = fadd fast float %3442, %2614
  br label %3458

; <label>:3444                                    ; preds = %3410
  %3445 = icmp eq i32 %3384, 8
  br i1 %3445, label %3446, label %3458

; <label>:3446                                    ; preds = %3444
  %3447 = fmul fast float %3389, %3215
  %3448 = fmul fast float %3389, %3216
  %3449 = fadd fast float %3447, %2605
  %3450 = fadd fast float %3448, %2606
  %3451 = call float @dx.op.binary.f32(i32 36, float %2615, float %3217)  ; FMin(a,b)
  %3452 = fsub fast float %3451, %2615
  %3453 = fmul fast float %3452, %3392
  %3454 = fadd fast float %3453, %2615
  %3455 = fsub fast float %3214, %2614
  %3456 = fmul fast float %3395, %3455
  %3457 = fadd fast float %3456, %2614
  br label %3458

; <label>:3458                                    ; preds = %3446, %3444, %3412, %3397, %3375, %2913, %2617, %2604
  %3459 = phi float [ %2605, %3375 ], [ %2605, %2913 ], [ %2605, %2604 ], [ %2605, %2617 ], [ %3402, %3397 ], [ %3415, %3412 ], [ %2605, %3444 ], [ %3449, %3446 ]
  %3460 = phi float [ %2606, %3375 ], [ %2606, %2913 ], [ %2606, %2604 ], [ %2606, %2617 ], [ %3403, %3397 ], [ %3416, %3412 ], [ %2606, %3444 ], [ %3450, %3446 ]
  %3461 = phi float [ %3376, %3375 ], [ %2607, %2913 ], [ %2607, %2604 ], [ %2607, %2617 ], [ %3376, %3397 ], [ %3376, %3412 ], [ %3376, %3444 ], [ %3376, %3446 ]
  %3462 = phi float [ %3377, %3375 ], [ %2608, %2913 ], [ %2608, %2604 ], [ %2608, %2617 ], [ %3377, %3397 ], [ %3377, %3412 ], [ %3377, %3444 ], [ %3377, %3446 ]
  %3463 = phi float [ %3378, %3375 ], [ %2609, %2913 ], [ %2609, %2604 ], [ %2609, %2617 ], [ %3378, %3397 ], [ %3378, %3412 ], [ %3378, %3444 ], [ %3378, %3446 ]
  %3464 = phi float [ %3379, %3375 ], [ %2610, %2913 ], [ %2610, %2604 ], [ %2610, %2617 ], [ %3379, %3397 ], [ %3379, %3412 ], [ %3379, %3444 ], [ %3379, %3446 ]
  %3465 = phi float [ %3380, %3375 ], [ %2611, %2913 ], [ %2611, %2604 ], [ %2611, %2617 ], [ %3380, %3397 ], [ %3380, %3412 ], [ %3380, %3444 ], [ %3380, %3446 ]
  %3466 = phi float [ %3381, %3375 ], [ %2612, %2913 ], [ %2612, %2604 ], [ %2612, %2617 ], [ %3381, %3397 ], [ %3381, %3412 ], [ %3381, %3444 ], [ %3381, %3446 ]
  %3467 = phi float [ %3382, %3375 ], [ %2613, %2913 ], [ %2613, %2604 ], [ %2613, %2617 ], [ %3382, %3397 ], [ %3382, %3412 ], [ %3382, %3444 ], [ %3382, %3446 ]
  %3468 = phi float [ %2614, %3375 ], [ %2614, %2913 ], [ %2614, %2604 ], [ %2614, %2617 ], [ %3409, %3397 ], [ %3443, %3412 ], [ %2614, %3444 ], [ %3457, %3446 ]
  %3469 = phi float [ %2615, %3375 ], [ %2615, %2913 ], [ %2615, %2604 ], [ %2615, %2617 ], [ %3406, %3397 ], [ %3420, %3412 ], [ %2615, %3444 ], [ %3454, %3446 ]
  %3470 = phi float [ %3383, %3375 ], [ %2616, %2913 ], [ %2616, %2604 ], [ %2616, %2617 ], [ %3383, %3397 ], [ %3383, %3412 ], [ %3383, %3444 ], [ %3383, %3446 ]
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3473 = call float @dx.op.dot2.f32(i32 54, float %3459, float %3460, float %3459, float %3460)  ; Dot2(ax,ay,bx,by)
  %3474 = fmul fast float %3473, 0x3FE3333340000000
  %3475 = fsub fast float 1.000000e+00, %3474
  %3476 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3460, float %3475, float %3459, float %3460, float %3475)  ; Dot3(ax,ay,az,bx,by,bz)
  %3477 = call float @dx.op.unary.f32(i32 25, float %3476)  ; Rsqrt(value)
  %3478 = fmul fast float %3477, %3459
  %3479 = fmul fast float %3477, %3460
  %3480 = fmul fast float %3475, %3477
  %3481 = fmul fast float %3480, %94
  %3482 = fmul fast float %3480, %96
  %3483 = fmul fast float %3480, %98
  %3484 = fmul fast float %3478, %66
  %3485 = fmul fast float %3478, %67
  %3486 = fmul fast float %3478, %68
  %3487 = fadd fast float %3481, %3484
  %3488 = fadd fast float %3482, %3485
  %3489 = fadd fast float %3483, %3486
  %3490 = fmul fast float %108, %3479
  %3491 = fmul fast float %109, %3479
  %3492 = fmul fast float %110, %3479
  %3493 = fadd fast float %3487, %3490
  %3494 = fadd fast float %3488, %3491
  %3495 = fadd fast float %3489, %3492
  %3496 = call float @dx.op.dot3.f32(i32 55, float %3493, float %3494, float %3495, float %3493, float %3494, float %3495)  ; Dot3(ax,ay,az,bx,by,bz)
  %3497 = call float @dx.op.unary.f32(i32 25, float %3496)  ; Rsqrt(value)
  %3498 = fmul fast float %3493, %3497
  %3499 = fmul fast float %3494, %3497
  %3500 = fmul fast float %3495, %3497
  %3501 = and i32 %47, 1
  %3502 = icmp eq i32 %3501, 0
  br i1 %3502, label %3503, label %4015

; <label>:3503                                    ; preds = %3458
  %3504 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3505 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3506 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3507 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3508 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3509 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3510 = fadd fast float %3504, %144
  %3511 = fadd fast float %3505, %145
  %3512 = fadd fast float %3506, %146
  %3513 = fadd fast float %3507, %144
  %3514 = fadd fast float %3508, %145
  %3515 = fadd fast float %3509, %146
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.CBufRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.CBufRet.f32 %3516, 2
  %3520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3521 = extractvalue %dx.types.CBufRet.f32 %3520, 2
  %3522 = extractvalue %dx.types.CBufRet.f32 %3520, 3
  %3523 = fmul fast float %3517, %85
  %3524 = fmul fast float %3523, %3521
  %3525 = fmul fast float %3518, %86
  %3526 = fmul fast float %3525, %3522
  %3527 = fptoui float %3524 to i32
  %3528 = fptoui float %3526 to i32
  %3529 = fadd fast float %3517, -1.000000e+00
  %3530 = fadd fast float %3518, -1.000000e+00
  %3531 = fptoui float %3529 to i32
  %3532 = fptoui float %3530 to i32
  %3533 = call i32 @dx.op.binary.i32(i32 40, i32 %3527, i32 %3531)  ; UMin(a,b)
  %3534 = call i32 @dx.op.binary.i32(i32 40, i32 %3528, i32 %3532)  ; UMin(a,b)
  %3535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.f32 %3535, 2
  %3537 = extractvalue %dx.types.CBufRet.f32 %3535, 3
  %3538 = fmul fast float %3536, %80
  %3539 = fsub fast float %3538, %3537
  %3540 = fadd fast float %3519, -1.000000e+00
  %3541 = call float @dx.op.binary.f32(i32 36, float %3539, float %3540)  ; FMin(a,b)
  %3542 = fptoui float %3541 to i32
  %3543 = fptoui float %3517 to i32
  %3544 = fptoui float %3518 to i32
  %3545 = mul i32 %3542, %3544
  %3546 = add i32 %3545, %3534
  %3547 = mul i32 %3546, %3543
  %3548 = add i32 %3547, %3533
  %3549 = shl i32 %3548, 2
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 1023
  %3553 = lshr i32 %3551, 10
  %3554 = icmp eq i32 %3552, 0
  br i1 %3554, label %3983, label %3555

; <label>:3555                                    ; preds = %3503
  %3556 = and i32 %3551, 1023
  br label %3557

; <label>:3557                                    ; preds = %3684, %3555
  %3558 = phi i32 [ %3634, %3684 ], [ 0, %3555 ]
  %3559 = phi float [ %3685, %3684 ], [ 0.000000e+00, %3555 ]
  %3560 = phi float [ %3686, %3684 ], [ %905, %3555 ]
  %3561 = phi float [ %3687, %3684 ], [ %3472, %3555 ]
  %3562 = phi float [ %3688, %3684 ], [ %3470, %3555 ]
  %3563 = phi float [ %3689, %3684 ], [ 0.000000e+00, %3555 ]
  %3564 = phi float [ %3690, %3684 ], [ 0.000000e+00, %3555 ]
  %3565 = phi float [ %3691, %3684 ], [ %3464, %3555 ]
  %3566 = phi float [ %3692, %3684 ], [ %3465, %3555 ]
  %3567 = phi float [ %3693, %3684 ], [ %3466, %3555 ]
  %3568 = phi float [ %3694, %3684 ], [ %3498, %3555 ]
  %3569 = phi float [ %3695, %3684 ], [ %3499, %3555 ]
  %3570 = phi float [ %3696, %3684 ], [ %3500, %3555 ]
  %3571 = phi float [ %3697, %3684 ], [ %3469, %3555 ]
  %3572 = phi float [ %3698, %3684 ], [ %3468, %3555 ]
  %3573 = phi float [ %3699, %3684 ], [ 0.000000e+00, %3555 ]
  %3574 = phi float [ %3700, %3684 ], [ %3467, %3555 ]
  %3575 = phi float [ %3701, %3684 ], [ %3461, %3555 ]
  %3576 = phi float [ %3702, %3684 ], [ %3462, %3555 ]
  %3577 = phi float [ %3703, %3684 ], [ %3463, %3555 ]
  %3578 = add nuw nsw i32 %3558, %3553
  %3579 = shl i32 %3578, 2
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = shl i32 %3581, 8
  %3583 = or i32 %3582, 48
  %3584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.ResRet.f32 %3584, 1
  %3587 = extractvalue %dx.types.ResRet.f32 %3584, 2
  %3588 = extractvalue %dx.types.ResRet.f32 %3584, 3
  %3589 = or i32 %3582, 64
  %3590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.i32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.i32 %3590, 1
  %3593 = or i32 %3582, 80
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3597 = or i32 %3582, 96
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3601 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3603 = or i32 %3582, 112
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3606 = or i32 %3582, 128
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3612 = or i32 %3582, 144
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = or i32 %3582, 160
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3624 = or i32 %3582, 192
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = or i32 %3582, 208
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = or i32 %3582, 248
  %3631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = extractvalue %dx.types.ResRet.f32 %3631, 1
  %3634 = add nuw nsw i32 %3558, 1
  %3635 = bitcast float %3588 to i32
  %3636 = and i32 %3635, 512
  %3637 = icmp eq i32 %3636, 0
  %3638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.ResRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3638, 2
  %3642 = extractvalue %dx.types.ResRet.f32 %3638, 3
  %3643 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3644 = or i32 %3582, 16
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = extractvalue %dx.types.ResRet.f32 %3645, 3
  %3650 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3651 = or i32 %3582, 32
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = call float @dx.op.unary.f32(i32 27, float %3643)  ; Round_ni(value)
  %3659 = call float @dx.op.unary.f32(i32 6, float %3658)  ; FAbs(value)
  %3660 = call float @dx.op.unary.f32(i32 27, float %3650)  ; Round_ni(value)
  %3661 = call float @dx.op.unary.f32(i32 6, float %3660)  ; FAbs(value)
  %3662 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3663 = call float @dx.op.unary.f32(i32 27, float %3662)  ; Round_ni(value)
  %3664 = fadd fast float %3661, %3659
  %3665 = fadd fast float %3664, %3663
  %3666 = fcmp fast oeq float %3665, 0.000000e+00
  %3667 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3668 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3669 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3670 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3671 = fsub fast float %3667, %3643
  %3672 = fsub fast float %3669, %3643
  %3673 = fsub fast float %3668, %3650
  %3674 = fsub fast float %3670, %3650
  %3675 = call float @dx.op.dot3.f32(i32 55, float %3585, float %3586, float %3587, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 2
  %3678 = fadd fast float %3677, %3675
  %3679 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3676, 0
  %3681 = fcmp fast ogt float %3679, %3680
  %3682 = and i1 %3666, %3681
  %3683 = and i1 %3637, %3682
  br i1 %3683, label %3705, label %3684

; <label>:3684                                    ; preds = %3969, %3786, %3705, %3557
  %3685 = phi float [ %3559, %3705 ], [ %3789, %3786 ], [ %3789, %3969 ], [ %3559, %3557 ]
  %3686 = phi float [ %3560, %3705 ], [ %3560, %3786 ], [ %3944, %3969 ], [ %3560, %3557 ]
  %3687 = phi float [ %3561, %3705 ], [ %3561, %3786 ], [ %3943, %3969 ], [ %3561, %3557 ]
  %3688 = phi float [ %3562, %3705 ], [ %3562, %3786 ], [ %3941, %3969 ], [ %3562, %3557 ]
  %3689 = phi float [ %3563, %3705 ], [ %3563, %3786 ], [ %3913, %3969 ], [ %3563, %3557 ]
  %3690 = phi float [ %3564, %3705 ], [ %3564, %3786 ], [ %3911, %3969 ], [ %3564, %3557 ]
  %3691 = phi float [ %3565, %3705 ], [ %3565, %3786 ], [ %3979, %3969 ], [ %3565, %3557 ]
  %3692 = phi float [ %3566, %3705 ], [ %3566, %3786 ], [ %3980, %3969 ], [ %3566, %3557 ]
  %3693 = phi float [ %3567, %3705 ], [ %3567, %3786 ], [ %3981, %3969 ], [ %3567, %3557 ]
  %3694 = phi float [ %3568, %3705 ], [ %3568, %3786 ], [ %3892, %3969 ], [ %3568, %3557 ]
  %3695 = phi float [ %3569, %3705 ], [ %3569, %3786 ], [ %3893, %3969 ], [ %3569, %3557 ]
  %3696 = phi float [ %3570, %3705 ], [ %3570, %3786 ], [ %3894, %3969 ], [ %3570, %3557 ]
  %3697 = phi float [ %3571, %3705 ], [ %3571, %3786 ], [ %3921, %3969 ], [ %3571, %3557 ]
  %3698 = phi float [ %3572, %3705 ], [ %3572, %3786 ], [ %3918, %3969 ], [ %3572, %3557 ]
  %3699 = phi float [ %3573, %3705 ], [ %3573, %3786 ], [ %3915, %3969 ], [ %3573, %3557 ]
  %3700 = phi float [ %3574, %3705 ], [ %3574, %3786 ], [ %3909, %3969 ], [ %3574, %3557 ]
  %3701 = phi float [ %3575, %3705 ], [ %3575, %3786 ], [ %3904, %3969 ], [ %3575, %3557 ]
  %3702 = phi float [ %3576, %3705 ], [ %3576, %3786 ], [ %3905, %3969 ], [ %3576, %3557 ]
  %3703 = phi float [ %3577, %3705 ], [ %3577, %3786 ], [ %3906, %3969 ], [ %3577, %3557 ]
  %3704 = icmp eq i32 %3634, %3556
  br i1 %3704, label %3982, label %3557

; <label>:3705                                    ; preds = %3557
  %3706 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3707 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3708 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3709 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3710 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3711 = extractvalue %dx.types.ResRet.i32 %3590, 3
  %3712 = extractvalue %dx.types.ResRet.i32 %3590, 2
  %3713 = add i32 %3711, 0
  %3714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3713, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3716 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3714, %dx.types.Handle %3715, float %3643, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float %3671, float %3673, float undef, float %3672, float %3674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = fmul fast float %3717, %3710
  %3719 = fadd fast float %3718, %3709
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = fmul fast float %3643, %3599
  %3722 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3650, float %3721)  ; FMad(a,b,c)
  %3723 = fadd fast float %3722, %3708
  %3724 = fmul fast float %3643, %3601
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3650, float %3724)  ; FMad(a,b,c)
  %3726 = fadd fast float %3725, %3707
  %3727 = fmul fast float %3671, %3599
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3673, float %3727)  ; FMad(a,b,c)
  %3729 = fmul fast float %3671, %3601
  %3730 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3673, float %3729)  ; FMad(a,b,c)
  %3731 = fmul fast float %3672, %3599
  %3732 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3674, float %3731)  ; FMad(a,b,c)
  %3733 = fmul fast float %3672, %3601
  %3734 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3674, float %3733)  ; FMad(a,b,c)
  %3735 = add i32 %3712, 0
  %3736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3735, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3737 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3736, %dx.types.Handle %3715, float %3723, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3738 = extractvalue %dx.types.ResRet.f32 %3737, 0
  %3739 = and i32 %3635, 1024
  %3740 = icmp ne i32 %3739, 0
  %3741 = fcmp fast ogt float %3738, 0x3FE0101020000000
  %3742 = uitofp i1 %3741 to float
  %3743 = select i1 %3740, float %3742, float %3738
  %3744 = and i32 %3635, 8192
  %3745 = icmp ne i32 %3744, 0
  %3746 = select i1 %3745, float %3706, float 1.000000e+00
  %3747 = fmul fast float %3643, 2.000000e+00
  %3748 = fadd fast float %3747, -1.000000e+00
  %3749 = call float @dx.op.unary.f32(i32 6, float %3748)  ; FAbs(value)
  %3750 = fmul fast float %3749, %3632
  %3751 = fsub fast float %3750, %3632
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = fmul fast float %3650, 2.000000e+00
  %3754 = fadd fast float %3753, -1.000000e+00
  %3755 = call float @dx.op.unary.f32(i32 6, float %3754)  ; FAbs(value)
  %3756 = fmul fast float %3755, %3633
  %3757 = fsub fast float %3756, %3633
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3662, %3595
  %3760 = fsub fast float %3759, %3595
  %3761 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3762 = fmul fast float %3720, %3746
  %3763 = fmul fast float %3762, %3717
  %3764 = fmul fast float %3763, %3752
  %3765 = fmul fast float %3764, %3743
  %3766 = fmul fast float %3765, %3758
  %3767 = fmul fast float %3766, %3761
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3771 = fsub fast float %3679, %3770
  %3772 = fmul fast float %3771, %3769
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = fmul fast float %3767, %3596
  %3775 = fadd fast float %3767, %3596
  %3776 = fmul fast float %3775, %3605
  %3777 = fsub fast float %3776, %3605
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = and i32 %3635, 128
  %3780 = icmp ne i32 %3779, 0
  %3781 = select i1 %3780, float %3778, float %3774
  %3782 = fmul fast float %3781, %3773
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 0
  %3785 = fcmp fast ugt float %3782, %3784
  br i1 %3785, label %3786, label %3684

; <label>:3786                                    ; preds = %3705
  %3787 = select i1 %3745, float %3782, float 0.000000e+00
  %3788 = fadd fast float %3787, %3559
  %3789 = call float @dx.op.unary.f32(i32 7, float %3788)  ; Saturate(value)
  br i1 %3745, label %3684, label %3790

; <label>:3790                                    ; preds = %3786
  %3791 = and i32 %3635, 4
  %3792 = and i32 %3635, 8
  %3793 = add i32 %3591, 0
  %3794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3793, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3796 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3794, %dx.types.Handle %3795, float %3723, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3798 = extractvalue %dx.types.ResRet.f32 %3796, 1
  %3799 = extractvalue %dx.types.ResRet.f32 %3796, 2
  %3800 = extractvalue %dx.types.ResRet.f32 %3796, 3
  %3801 = bitcast float %3617 to i32
  %3802 = and i32 %3801, 255
  %3803 = uitofp i32 %3802 to float
  %3804 = lshr i32 %3801, 8
  %3805 = and i32 %3804, 255
  %3806 = uitofp i32 %3805 to float
  %3807 = fmul fast float %3800, %3803
  %3808 = fadd fast float %3807, %3806
  %3809 = fmul fast float %3808, 0x3F70101000000000
  %3810 = add i32 %3592, 0
  %3811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3810, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3812 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3811, %dx.types.Handle %3795, float %3723, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3813 = extractvalue %dx.types.ResRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.ResRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.ResRet.f32 %3812, 2
  %3816 = extractvalue %dx.types.ResRet.f32 %3812, 3
  %3817 = bitcast float %3611 to i32
  %3818 = and i32 %3817, 255
  %3819 = uitofp i32 %3818 to float
  %3820 = lshr i32 %3817, 8
  %3821 = and i32 %3820, 255
  %3822 = uitofp i32 %3821 to float
  %3823 = lshr i32 %3817, 16
  %3824 = and i32 %3823, 255
  %3825 = uitofp i32 %3824 to float
  %3826 = fmul fast float %3825, 0x3F70101000000000
  %3827 = fmul fast float %3813, %3819
  %3828 = fadd fast float %3827, %3822
  %3829 = fmul fast float %3828, 0x3F70101000000000
  %3830 = fadd fast float %3814, -5.000000e-01
  %3831 = fadd fast float %3816, -5.000000e-01
  %3832 = fmul fast float %3830, %3826
  %3833 = fmul fast float %3831, %3826
  %3834 = fadd fast float %3832, 5.000000e-01
  %3835 = fadd fast float %3833, 5.000000e-01
  %3836 = fmul fast float %3797, %3620
  %3837 = fmul fast float %3798, %3621
  %3838 = fmul fast float %3799, %3622
  %3839 = fmul fast float %3834, 2.000000e+00
  %3840 = fadd fast float %3839, -1.000000e+00
  %3841 = fmul fast float %3835, 2.000000e+00
  %3842 = fadd fast float %3841, -1.000000e+00
  %3843 = fadd fast float %3840, %3842
  %3844 = fmul fast float %3843, 5.000000e-01
  %3845 = fsub fast float %3840, %3842
  %3846 = fmul fast float %3845, 5.000000e-01
  %3847 = call float @dx.op.unary.f32(i32 6, float %3844)  ; FAbs(value)
  %3848 = fsub fast float 1.000000e+00, %3847
  %3849 = call float @dx.op.unary.f32(i32 6, float %3846)  ; FAbs(value)
  %3850 = fsub fast float %3848, %3849
  %3851 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3846, float %3850, float %3844, float %3846, float %3850)  ; Dot3(ax,ay,az,bx,by,bz)
  %3852 = call float @dx.op.unary.f32(i32 25, float %3851)  ; Rsqrt(value)
  %3853 = fmul fast float %3844, %3852
  %3854 = fmul fast float %3846, %3852
  %3855 = fmul fast float %3852, %3850
  %3856 = fmul fast float %3855, %3585
  %3857 = fmul fast float %3855, %3586
  %3858 = fmul fast float %3855, %3587
  %3859 = fmul fast float %3853, %3608
  %3860 = fmul fast float %3853, %3609
  %3861 = fmul fast float %3853, %3610
  %3862 = fadd fast float %3859, %3856
  %3863 = fadd fast float %3860, %3857
  %3864 = fadd fast float %3861, %3858
  %3865 = fmul fast float %3854, %3614
  %3866 = fmul fast float %3854, %3615
  %3867 = fmul fast float %3854, %3616
  %3868 = fadd fast float %3862, %3865
  %3869 = fadd fast float %3863, %3866
  %3870 = fadd fast float %3864, %3867
  %3871 = call float @dx.op.dot3.f32(i32 55, float %3868, float %3869, float %3870, float %3868, float %3869, float %3870)  ; Dot3(ax,ay,az,bx,by,bz)
  %3872 = call float @dx.op.unary.f32(i32 25, float %3871)  ; Rsqrt(value)
  %3873 = fmul fast float %3868, %3872
  %3874 = fmul fast float %3869, %3872
  %3875 = fmul fast float %3870, %3872
  %3876 = icmp ne i32 %3792, 0
  %3877 = select i1 %3876, float 1.000000e+00, float 0.000000e+00
  %3878 = fmul fast float %3782, %3877
  %3879 = and i32 %3635, 1
  %3880 = icmp eq i32 %3879, 0
  br i1 %3880, label %3881, label %3885

; <label>:3881                                    ; preds = %3790
  %3882 = fsub fast float %3873, %3568
  %3883 = fsub fast float %3874, %3569
  %3884 = fsub fast float %3875, %3570
  br label %3885

; <label>:3885                                    ; preds = %3881, %3790
  %3886 = phi float [ %3882, %3881 ], [ %3873, %3790 ]
  %3887 = phi float [ %3883, %3881 ], [ %3874, %3790 ]
  %3888 = phi float [ %3884, %3881 ], [ %3875, %3790 ]
  %3889 = fmul float %3888, %3878
  %3890 = fmul float %3887, %3878
  %3891 = fmul float %3886, %3878
  %3892 = fadd fast float %3891, %3568
  %3893 = fadd fast float %3890, %3569
  %3894 = fadd fast float %3889, %3570
  %3895 = icmp ne i32 %3791, 0
  %3896 = select i1 %3895, float 1.000000e+00, float 0.000000e+00
  %3897 = fmul fast float %3782, %3896
  %3898 = fsub fast float %3836, %3575
  %3899 = fsub fast float %3837, %3576
  %3900 = fsub fast float %3838, %3577
  %3901 = fmul fast float %3898, %3897
  %3902 = fmul fast float %3899, %3897
  %3903 = fmul fast float %3900, %3897
  %3904 = fadd fast float %3901, %3575
  %3905 = fadd fast float %3902, %3576
  %3906 = fadd fast float %3903, %3577
  %3907 = fsub fast float %3809, %3574
  %3908 = fmul fast float %3907, %3897
  %3909 = fadd fast float %3908, %3574
  %3910 = fmul fast float %3897, %3564
  %3911 = fsub fast float %3564, %3910
  %3912 = fmul fast float %3897, %3563
  %3913 = fsub fast float %3563, %3912
  %3914 = fadd fast float %3782, %3573
  %3915 = call float @dx.op.unary.f32(i32 7, float %3914)  ; Saturate(value)
  %3916 = fsub fast float %3829, %3572
  %3917 = fmul fast float %3916, %3878
  %3918 = fadd fast float %3917, %3572
  %3919 = fsub fast float %3815, %3571
  %3920 = fmul fast float %3919, %3878
  %3921 = fadd fast float %3920, %3571
  %3922 = call float @dx.op.dot3.f32(i32 55, float %3836, float %3837, float %3838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.CBufRet.f32 %3923, 1
  %3926 = fmul fast float %3925, %3922
  %3927 = fadd fast float %3926, %3924
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = bitcast float %3623 to i32
  %3930 = and i32 %3929, 65535
  %3931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3930)  ; LegacyF16ToF32(value)
  %3932 = lshr i32 %3929, 16
  %3933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3932)  ; LegacyF16ToF32(value)
  %3934 = fcmp fast oge float %3931, 0.000000e+00
  %3935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3936 = extractvalue %dx.types.CBufRet.f32 %3935, 0
  %3937 = select i1 %3934, float %3931, float %3936
  %3938 = fadd fast float %3937, %3933
  %3939 = fsub fast float %3928, %3562
  %3940 = fmul fast float %3939, %3782
  %3941 = fadd fast float %3940, %3562
  %3942 = fmul fast float %3938, %3782
  %3943 = call float @dx.op.binary.f32(i32 35, float %3561, float %3942)  ; FMax(a,b)
  %3944 = call float @dx.op.binary.f32(i32 35, float %3560, float %3782)  ; FMax(a,b)
  %3945 = and i32 %3635, 16
  %3946 = icmp eq i32 %3945, 0
  br i1 %3946, label %3969, label %3947

; <label>:3947                                    ; preds = %3885
  %3948 = bitcast float %3629 to i32
  %3949 = add i32 %3626, 0
  %3950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3949, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3951 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3950, %dx.types.Handle %3795, float %3723, float %3726, float undef, float undef, i32 0, i32 0, i32 undef, float %3728, float %3730, float undef, float %3732, float %3734, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.ResRet.f32 %3951, 1
  %3954 = extractvalue %dx.types.ResRet.f32 %3951, 2
  %3955 = and i32 %3948, 65535
  %3956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3955)  ; LegacyF16ToF32(value)
  %3957 = fmul fast float %3952, %3620
  %3958 = fmul fast float %3953, %3621
  %3959 = fmul fast float %3954, %3622
  %3960 = and i32 %3635, 16384
  %3961 = icmp ne i32 %3960, 0
  %3962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3963 = extractvalue %dx.types.CBufRet.f32 %3962, 0
  %3964 = select i1 %3961, float %3963, float 1.000000e+00
  %3965 = fmul fast float %3964, %3956
  %3966 = fmul fast float %3957, %3965
  %3967 = fmul fast float %3958, %3965
  %3968 = fmul fast float %3959, %3965
  br label %3969

; <label>:3969                                    ; preds = %3947, %3885
  %3970 = phi float [ %3966, %3947 ], [ 0.000000e+00, %3885 ]
  %3971 = phi float [ %3967, %3947 ], [ 0.000000e+00, %3885 ]
  %3972 = phi float [ %3968, %3947 ], [ 0.000000e+00, %3885 ]
  %3973 = fsub fast float %3970, %3565
  %3974 = fsub fast float %3971, %3566
  %3975 = fsub fast float %3972, %3567
  %3976 = fmul fast float %3973, %3782
  %3977 = fmul fast float %3974, %3782
  %3978 = fmul fast float %3975, %3782
  %3979 = fadd fast float %3976, %3565
  %3980 = fadd fast float %3977, %3566
  %3981 = fadd fast float %3978, %3567
  br label %3684

; <label>:3982                                    ; preds = %3684
  br label %3983

; <label>:3983                                    ; preds = %3982, %3503
  %3984 = phi float [ 0.000000e+00, %3503 ], [ %3685, %3982 ]
  %3985 = phi float [ %905, %3503 ], [ %3686, %3982 ]
  %3986 = phi float [ %3472, %3503 ], [ %3687, %3982 ]
  %3987 = phi float [ %3470, %3503 ], [ %3688, %3982 ]
  %3988 = phi float [ 0.000000e+00, %3503 ], [ %3689, %3982 ]
  %3989 = phi float [ 0.000000e+00, %3503 ], [ %3690, %3982 ]
  %3990 = phi float [ %3464, %3503 ], [ %3691, %3982 ]
  %3991 = phi float [ %3465, %3503 ], [ %3692, %3982 ]
  %3992 = phi float [ %3466, %3503 ], [ %3693, %3982 ]
  %3993 = phi float [ %3498, %3503 ], [ %3694, %3982 ]
  %3994 = phi float [ %3499, %3503 ], [ %3695, %3982 ]
  %3995 = phi float [ %3500, %3503 ], [ %3696, %3982 ]
  %3996 = phi float [ %3469, %3503 ], [ %3697, %3982 ]
  %3997 = phi float [ %3468, %3503 ], [ %3698, %3982 ]
  %3998 = phi float [ 0.000000e+00, %3503 ], [ %3699, %3982 ]
  %3999 = phi float [ %3467, %3503 ], [ %3700, %3982 ]
  %4000 = phi float [ %3461, %3503 ], [ %3701, %3982 ]
  %4001 = phi float [ %3462, %3503 ], [ %3702, %3982 ]
  %4002 = phi float [ %3463, %3503 ], [ %3703, %3982 ]
  %4003 = call float @dx.op.dot3.f32(i32 55, float %3993, float %3994, float %3995, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %4004 = call float @dx.op.unary.f32(i32 25, float %4003)  ; Rsqrt(value)
  %4005 = fmul fast float %4004, %3993
  %4006 = fmul fast float %4004, %3994
  %4007 = fmul fast float %4004, %3995
  %4008 = fadd fast float %3998, %905
  %4009 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4010 = call float @dx.op.dot3.f32(i32 55, float %4005, float %4006, float %4007, float %4005, float %4006, float %4007)  ; Dot3(ax,ay,az,bx,by,bz)
  %4011 = call float @dx.op.unary.f32(i32 25, float %4010)  ; Rsqrt(value)
  %4012 = fmul fast float %4011, %4005
  %4013 = fmul fast float %4011, %4006
  %4014 = fmul fast float %4011, %4007
  br label %4015

; <label>:4015                                    ; preds = %3983, %3458
  %4016 = phi float [ %4012, %3983 ], [ %3498, %3458 ]
  %4017 = phi float [ %4013, %3983 ], [ %3499, %3458 ]
  %4018 = phi float [ %4014, %3983 ], [ %3500, %3458 ]
  %4019 = phi float [ %4000, %3983 ], [ %3461, %3458 ]
  %4020 = phi float [ %4001, %3983 ], [ %3462, %3458 ]
  %4021 = phi float [ %4002, %3983 ], [ %3463, %3458 ]
  %4022 = phi float [ %3990, %3983 ], [ %3464, %3458 ]
  %4023 = phi float [ %3991, %3983 ], [ %3465, %3458 ]
  %4024 = phi float [ %3992, %3983 ], [ %3466, %3458 ]
  %4025 = phi float [ %3999, %3983 ], [ %3467, %3458 ]
  %4026 = phi float [ %4009, %3983 ], [ %905, %3458 ]
  %4027 = phi float [ %3997, %3983 ], [ %3468, %3458 ]
  %4028 = phi float [ %3996, %3983 ], [ %3469, %3458 ]
  %4029 = phi float [ %3989, %3983 ], [ 0.000000e+00, %3458 ]
  %4030 = phi float [ %3988, %3983 ], [ 0.000000e+00, %3458 ]
  %4031 = phi float [ %3984, %3983 ], [ 0.000000e+00, %3458 ]
  %4032 = phi float [ %3986, %3983 ], [ %3472, %3458 ]
  %4033 = phi float [ %3985, %3983 ], [ %905, %3458 ]
  %4034 = phi float [ %3987, %3983 ], [ %3470, %3458 ]
  %4035 = fadd fast float %4025, 0xBFB99999A0000000
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fmul fast float %4036, 0x3FF1C71C80000000
  %4038 = call float @dx.op.binary.f32(i32 36, float %4025, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4039 = fsub fast float 1.000000e+00, %4037
  %4040 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4041 = fmul fast float %4040, %4019
  %4042 = fmul fast float %4040, %4020
  %4043 = fmul fast float %4040, %4021
  %4044 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4045 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = fmul fast float %4037, %4019
  %4048 = fmul fast float %4037, %4020
  %4049 = fmul fast float %4037, %4021
  %4050 = fadd fast float %4047, %4038
  %4051 = fadd fast float %4048, %4038
  %4052 = fadd fast float %4049, %4038
  %4053 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4054 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4055 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4056 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.i32 %4057, 3
  %4059 = and i32 %4058, 8
  %4060 = icmp ne i32 %4059, 0
  %4061 = call float @dx.op.binary.f32(i32 35, float %4044, float %4019)  ; FMax(a,b)
  %4062 = call float @dx.op.binary.f32(i32 35, float %4045, float %4019)  ; FMax(a,b)
  %4063 = call float @dx.op.binary.f32(i32 35, float %4046, float %4019)  ; FMax(a,b)
  %4064 = call float @dx.op.dot3.f32(i32 55, float %4044, float %4045, float %4046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = select i1 %186, float %4019, float %4044
  %4066 = select i1 %186, float %4064, float %4045
  %4067 = select i1 %186, float 1.000000e+00, float %4046
  %4068 = select i1 %4060, float %4061, float %4065
  %4069 = select i1 %4060, float %4062, float %4066
  %4070 = select i1 %4060, float %4063, float %4067
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.CBufRet.f32 %4071, 2
  %4075 = fadd fast float %4072, %144
  %4076 = fadd fast float %4073, %145
  %4077 = fadd fast float %4074, %146
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4081 = fsub fast float %4075, %4079
  %4082 = fsub fast float %4076, %4080
  %4083 = fmul fast float %4081, %4081
  %4084 = fmul fast float %4082, %4082
  %4085 = fadd fast float %4083, %4084
  %4086 = call float @dx.op.unary.f32(i32 24, float %4085)  ; Sqrt(value)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4078, 2
  %4088 = fcmp fast olt float %4086, %4087
  br i1 %4088, label %4089, label %4156

; <label>:4089                                    ; preds = %4015
  %4090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4091 = extractvalue %dx.types.CBufRet.f32 %4090, 0
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.CBufRet.f32 %4090, 1
  %4097 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4098 = extractvalue %dx.types.CBufRet.f32 %4094, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4090, 3
  %4100 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4101 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4102 = fadd fast float %4099, %4075
  %4103 = fadd fast float %4100, %4076
  %4104 = fadd fast float %4101, %4077
  %4105 = fmul fast float %4102, %4091
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4093, float %4105)  ; FMad(a,b,c)
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4095, float %4106)  ; FMad(a,b,c)
  %4108 = fmul fast float %4102, %4096
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4097, float %4108)  ; FMad(a,b,c)
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4098, float %4109)  ; FMad(a,b,c)
  %4111 = fsub fast float %4107, %4099
  %4112 = fsub fast float %4110, %4100
  %4113 = fsub fast float %4111, %4079
  %4114 = fadd fast float %4113, %4087
  %4115 = fsub fast float %4112, %4080
  %4116 = fadd fast float %4115, %4087
  %4117 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4118 = fmul fast float %4114, %4117
  %4119 = fmul fast float %4116, %4117
  %4120 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4122 = fsub fast float 1.000000e+00, %4120
  %4123 = fsub fast float 1.000000e+00, %4121
  %4124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4122, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = fcmp fast ugt float %4125, 0.000000e+00
  br i1 %4126, label %4127, label %4430

; <label>:4127                                    ; preds = %4089
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4130 = fmul fast float %4129, %4125
  %4131 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4132 = fadd fast float %4131, %4130
  %4133 = extractvalue %dx.types.CBufRet.f32 %4094, 2
  %4134 = fadd fast float %4132, %4101
  %4135 = fmul fast float %4107, %4095
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4098, float %4135)  ; FMad(a,b,c)
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4133, float %4136)  ; FMad(a,b,c)
  %4138 = fsub fast float %4137, %4101
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 2
  %4141 = fsub fast float %4138, %4140
  %4142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4122, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.ResRet.f32 %4142, 2
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4122, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.ResRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.ResRet.f32 %4146, 2
  %4150 = fadd fast float %4147, %4143
  %4151 = fmul fast float %4150, 0x3F847AE140000000
  %4152 = fadd fast float %4148, %4144
  %4153 = fmul fast float %4152, 0x3F847AE140000000
  %4154 = fadd fast float %4149, %4145
  %4155 = fmul fast float %4154, 0x3F847AE140000000
  br label %4430

; <label>:4156                                    ; preds = %4015
  %4157 = and i32 %162, 1
  %4158 = icmp eq i32 %4157, 0
  br i1 %4158, label %4430, label %4159

; <label>:4159                                    ; preds = %4156
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4167 = extractvalue %dx.types.CBufRet.f32 %4162, 1
  %4168 = extractvalue %dx.types.CBufRet.f32 %4164, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4170 = extractvalue %dx.types.CBufRet.f32 %4162, 3
  %4171 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4172 = fadd fast float %4169, %4075
  %4173 = fadd fast float %4170, %4076
  %4174 = fadd fast float %4171, %4077
  %4175 = fmul fast float %4172, %4161
  %4176 = call float @dx.op.tertiary.f32(i32 46, float %4173, float %4163, float %4175)  ; FMad(a,b,c)
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4165, float %4176)  ; FMad(a,b,c)
  %4178 = fmul fast float %4172, %4166
  %4179 = call float @dx.op.tertiary.f32(i32 46, float %4173, float %4167, float %4178)  ; FMad(a,b,c)
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4168, float %4179)  ; FMad(a,b,c)
  %4181 = fsub fast float %4177, %4169
  %4182 = fsub fast float %4180, %4170
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.CBufRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4187 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.i32 %4190, 0
  %4192 = extractvalue %dx.types.CBufRet.i32 %4190, 1
  %4193 = udiv i32 %4192, %4191
  %4194 = fsub fast float %4181, %4184
  %4195 = fsub fast float %4182, %4185
  %4196 = call float @dx.op.binary.f32(i32 35, float %4194, float 0.000000e+00)  ; FMax(a,b)
  %4197 = call float @dx.op.binary.f32(i32 35, float %4195, float 0.000000e+00)  ; FMax(a,b)
  %4198 = call float @dx.op.binary.f32(i32 36, float %4196, float %4186)  ; FMin(a,b)
  %4199 = call float @dx.op.binary.f32(i32 36, float %4197, float %4187)  ; FMin(a,b)
  %4200 = add i32 %4191, -1
  %4201 = add i32 %4193, -1
  %4202 = fmul fast float %4198, %4189
  %4203 = fmul fast float %4199, %4189
  %4204 = fptoui float %4202 to i32
  %4205 = fptoui float %4203 to i32
  %4206 = call i32 @dx.op.binary.i32(i32 40, i32 %4204, i32 %4200)  ; UMin(a,b)
  %4207 = call i32 @dx.op.binary.i32(i32 40, i32 %4205, i32 %4201)  ; UMin(a,b)
  %4208 = mul i32 %4207, %4191
  %4209 = add i32 %4208, %4206
  %4210 = shl i32 %4209, 2
  %4211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.i32 %4211, 0
  %4213 = icmp eq i32 %4212, -1
  br i1 %4213, label %4430, label %4214

; <label>:4214                                    ; preds = %4159
  %4215 = mul i32 %4212, 148
  %4216 = add i32 %4215, 4
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = add i32 %4215, 8
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4215, 36
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4215, 60
  %4226 = add i32 %4215, 92
  %4227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.i32 %4227, 0
  %4229 = add i32 %4215, 116
  %4230 = fsub fast float %4181, %4218
  %4231 = fsub fast float %4182, %4221
  %4232 = fmul fast float %4189, %4230
  %4233 = fmul fast float %4189, %4231
  %4234 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4236 = fsub fast float 1.000000e+00, %4235
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 2
  %4239 = call float @dx.op.unary.f32(i32 83, float %4234)  ; DerivCoarseX(value)
  %4240 = call float @dx.op.unary.f32(i32 83, float %4236)  ; DerivCoarseX(value)
  %4241 = call float @dx.op.unary.f32(i32 84, float %4234)  ; DerivCoarseY(value)
  %4242 = call float @dx.op.unary.f32(i32 84, float %4236)  ; DerivCoarseY(value)
  %4243 = fmul fast float %4239, %4238
  %4244 = fmul fast float %4240, %4238
  %4245 = fmul fast float %4241, %4238
  %4246 = fmul fast float %4242, %4238
  %4247 = call float @dx.op.dot2.f32(i32 54, float %4245, float %4246, float %4245, float %4246)  ; Dot2(ax,ay,bx,by)
  %4248 = call float @dx.op.dot2.f32(i32 54, float %4243, float %4244, float %4243, float %4244)  ; Dot2(ax,ay,bx,by)
  %4249 = call float @dx.op.binary.f32(i32 35, float %4248, float %4247)  ; FMax(a,b)
  %4250 = call float @dx.op.unary.f32(i32 23, float %4249)  ; Log(value)
  %4251 = fmul fast float %4250, 5.000000e-01
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 1
  %4254 = fadd fast float %4253, %4251
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float 0.000000e+00)  ; FMax(a,b)
  %4256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4256, 3
  %4258 = fadd fast float %4257, %4255
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4261 = fadd fast float %4258, %4260
  %4262 = add i32 %4228, 0
  %4263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4262, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4264 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4263, i32 0)  ; GetDimensions(handle,mipLevel)
  %4265 = extractvalue %dx.types.Dimensions %4264, 0
  %4266 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4265)  ; FirstbitLo(value)
  %4267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.i32 %4267, 1
  %4269 = sub nsw i32 %4268, %4266
  %4270 = sitofp i32 %4269 to float
  %4271 = fsub fast float %4261, %4270
  %4272 = call float @dx.op.binary.f32(i32 35, float %4271, float 0.000000e+00)  ; FMax(a,b)
  %4273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4263, %dx.types.Handle %37, float %4234, float %4236, float %4224, float undef, i32 0, i32 0, i32 undef, float %4272)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = fcmp ule float %4274, 0x3FE0101020000000
  %4276 = extractvalue %dx.types.CBufRet.i32 %4267, 0
  %4277 = and i32 %4276, 128
  %4278 = icmp ne i32 %4277, 0
  %4279 = and i1 %4275, %4278
  br i1 %4279, label %4430, label %4280

; <label>:4280                                    ; preds = %4214
  %4281 = add i32 %4215, 20
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = add i32 %4215, 24
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4215, 40
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = add i32 %4215, 96
  %4291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.i32 %4291, 0
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 2
  %4295 = fmul fast float %4294, %4234
  %4296 = fmul fast float %4294, %4236
  %4297 = extractvalue %dx.types.CBufRet.f32 %4293, 3
  %4298 = fadd fast float %4295, %4297
  %4299 = fadd fast float %4296, %4297
  %4300 = add i32 %4292, 0
  %4301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4300, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4302 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4301, i32 0)  ; GetDimensions(handle,mipLevel)
  %4303 = extractvalue %dx.types.Dimensions %4302, 0
  %4304 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4303)  ; FirstbitLo(value)
  %4305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.i32 %4305, 1
  %4307 = sub nsw i32 %4306, %4304
  %4308 = sitofp i32 %4307 to float
  %4309 = fsub fast float %4258, %4308
  %4310 = call float @dx.op.binary.f32(i32 35, float %4309, float 0.000000e+00)  ; FMax(a,b)
  %4311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4301, %dx.types.Handle %37, float %4298, float %4299, float %4289, float undef, i32 0, i32 0, i32 undef, float %4310)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4312 = extractvalue %dx.types.ResRet.f32 %4311, 0
  %4313 = fmul fast float %4312, %4283
  %4314 = fadd fast float %4313, %4286
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4315, 2
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4323 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4324 = fadd fast float %4320, %4181
  %4325 = fadd fast float %4322, %4182
  %4326 = fadd fast float %4314, %4323
  %4327 = fmul fast float %4324, %4316
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4317, float %4327)  ; FMad(a,b,c)
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4326, float %4318, float %4328)  ; FMad(a,b,c)
  %4330 = fsub fast float %4329, %4323
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 2
  %4333 = fsub fast float %4330, %4332
  %4334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.i32 %4334, 0
  %4336 = call i32 @dx.op.binary.i32(i32 40, i32 %4212, i32 %4335)  ; UMin(a,b)
  %4337 = mul i32 %4336, 36
  %4338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.i32 %4338, 0
  %4340 = add i32 %4337, 4
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4343 = fmul fast float %4342, %4234
  %4344 = fmul fast float %4342, %4236
  %4345 = extractvalue %dx.types.CBufRet.f32 %4341, 1
  %4346 = fadd fast float %4343, %4345
  %4347 = fadd fast float %4344, %4345
  %4348 = icmp eq i32 %4339, 0
  br i1 %4348, label %4417, label %4349

; <label>:4349                                    ; preds = %4280
  br label %4350

; <label>:4350                                    ; preds = %4407, %4349
  %4351 = phi float [ %4408, %4407 ], [ 0.000000e+00, %4349 ]
  %4352 = phi float [ %4409, %4407 ], [ 0.000000e+00, %4349 ]
  %4353 = phi float [ %4410, %4407 ], [ 0.000000e+00, %4349 ]
  %4354 = phi float [ %4411, %4407 ], [ 0.000000e+00, %4349 ]
  %4355 = phi float [ %4412, %4407 ], [ 0.000000e+00, %4349 ]
  %4356 = phi float [ %4413, %4407 ], [ 0.000000e+00, %4349 ]
  %4357 = phi i32 [ %4414, %4407 ], [ 0, %4349 ]
  %4358 = shl i32 %4357, 2
  %4359 = add i32 %4225, %4358
  %4360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = add i32 %4229, %4358
  %4363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.i32 %4363, 0
  %4365 = add i32 %4364, 0
  %4366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4365, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4367 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4366, i32 0)  ; GetDimensions(handle,mipLevel)
  %4368 = extractvalue %dx.types.Dimensions %4367, 0
  %4369 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4368)  ; FirstbitLo(value)
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 1
  %4372 = sub nsw i32 %4371, %4369
  %4373 = sitofp i32 %4372 to float
  %4374 = fsub fast float %4258, %4373
  %4375 = call float @dx.op.binary.f32(i32 35, float %4374, float 0.000000e+00)  ; FMax(a,b)
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4366, %dx.types.Handle %37, float %4346, float %4347, float %4361, float undef, i32 0, i32 0, i32 undef, float %4375)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = fcmp fast ogt float %4377, 0.000000e+00
  br i1 %4378, label %4379, label %4407

; <label>:4379                                    ; preds = %4350
  %4380 = add i32 %4340, %4358
  %4381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.i32 %4381, 0
  %4383 = and i32 %4382, 32767
  %4384 = mul nuw nsw i32 %4383, 928
  %4385 = add nuw nsw i32 %4384, 48
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.ResRet.f32 %4386, 1
  %4389 = extractvalue %dx.types.ResRet.f32 %4386, 2
  %4390 = add nuw nsw i32 %4384, 60
  %4391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4390, i32 undef)  ; BufferLoad(srv,index,wot)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = extractvalue %dx.types.ResRet.f32 %4391, 1
  %4394 = extractvalue %dx.types.ResRet.f32 %4391, 2
  %4395 = fmul fast float %4387, %4377
  %4396 = fmul fast float %4388, %4377
  %4397 = fmul fast float %4389, %4377
  %4398 = fadd fast float %4395, %4351
  %4399 = fadd fast float %4396, %4352
  %4400 = fadd fast float %4397, %4353
  %4401 = fmul fast float %4392, %4377
  %4402 = fmul fast float %4393, %4377
  %4403 = fmul fast float %4394, %4377
  %4404 = fadd fast float %4401, %4354
  %4405 = fadd fast float %4402, %4355
  %4406 = fadd fast float %4403, %4356
  br label %4407

; <label>:4407                                    ; preds = %4379, %4350
  %4408 = phi float [ %4398, %4379 ], [ %4351, %4350 ]
  %4409 = phi float [ %4399, %4379 ], [ %4352, %4350 ]
  %4410 = phi float [ %4400, %4379 ], [ %4353, %4350 ]
  %4411 = phi float [ %4404, %4379 ], [ %4354, %4350 ]
  %4412 = phi float [ %4405, %4379 ], [ %4355, %4350 ]
  %4413 = phi float [ %4406, %4379 ], [ %4356, %4350 ]
  %4414 = add nuw i32 %4357, 1
  %4415 = icmp eq i32 %4414, %4339
  br i1 %4415, label %4416, label %4350

; <label>:4416                                    ; preds = %4407
  br label %4417

; <label>:4417                                    ; preds = %4416, %4280
  %4418 = phi float [ 0.000000e+00, %4280 ], [ %4408, %4416 ]
  %4419 = phi float [ 0.000000e+00, %4280 ], [ %4409, %4416 ]
  %4420 = phi float [ 0.000000e+00, %4280 ], [ %4410, %4416 ]
  %4421 = phi float [ 0.000000e+00, %4280 ], [ %4411, %4416 ]
  %4422 = phi float [ 0.000000e+00, %4280 ], [ %4412, %4416 ]
  %4423 = phi float [ 0.000000e+00, %4280 ], [ %4413, %4416 ]
  %4424 = fadd fast float %4421, %4418
  %4425 = fmul fast float %4424, 0x3F847AE140000000
  %4426 = fadd fast float %4422, %4419
  %4427 = fmul fast float %4426, 0x3F847AE140000000
  %4428 = fadd fast float %4423, %4420
  %4429 = fmul fast float %4428, 0x3F847AE140000000
  br label %4430

; <label>:4430                                    ; preds = %4417, %4214, %4159, %4156, %4127, %4089
  %4431 = phi float [ %4141, %4127 ], [ -1.310720e+05, %4089 ], [ %4333, %4417 ], [ -1.310720e+05, %4159 ], [ -1.310720e+05, %4214 ], [ -1.310720e+05, %4156 ]
  %4432 = phi float [ %4151, %4127 ], [ 0.000000e+00, %4089 ], [ %4425, %4417 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4156 ]
  %4433 = phi float [ %4153, %4127 ], [ 0.000000e+00, %4089 ], [ %4427, %4417 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4156 ]
  %4434 = phi float [ %4155, %4127 ], [ 0.000000e+00, %4089 ], [ %4429, %4417 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4156 ]
  %4435 = phi i1 [ true, %4127 ], [ false, %4089 ], [ true, %4417 ], [ false, %4159 ], [ false, %4214 ], [ false, %4156 ]
  %4436 = and i32 %162, 3
  %4437 = icmp eq i32 %4436, 1
  %4438 = select i1 %4437, float 1.000000e+00, float 0.000000e+00
  %4439 = fsub fast float %4431, %146
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = select i1 %4435, float %4440, float 1.000000e+00
  %4442 = fmul fast float %4441, %4438
  %4443 = icmp eq i32 %4436, 3
  %4444 = select i1 %4443, float 1.000000e+00, float %4442
  %4445 = call float @dx.op.binary.f32(i32 35, float %4031, float %4444)  ; FMax(a,b)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = fcmp fast une float %4446, 0.000000e+00
  %4448 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call float @dx.op.unary.f32(i32 25, float %4448)  ; Rsqrt(value)
  br i1 %4447, label %4457, label %4450

; <label>:4450                                    ; preds = %4430
  %4451 = fmul fast float %4449, %144
  %4452 = fmul fast float %4449, %145
  %4453 = fmul fast float %4449, %146
  %4454 = fsub fast float -0.000000e+00, %4451
  %4455 = fsub fast float -0.000000e+00, %4452
  %4456 = fsub fast float -0.000000e+00, %4453
  br label %4625

; <label>:4457                                    ; preds = %4430
  %4458 = fmul fast float %144, %4449
  %4459 = fsub fast float -0.000000e+00, %4458
  %4460 = fmul fast float %145, %4449
  %4461 = fsub fast float -0.000000e+00, %4460
  %4462 = fmul fast float %146, %4449
  %4463 = fsub fast float -0.000000e+00, %4462
  %4464 = call float @dx.op.dot3.f32(i32 55, float %4459, float %4461, float %4463, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4465 = fmul fast float %4446, 2.500000e+00
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4446, 0x4013FFFFE0000000
  %4468 = fadd fast float %4467, 0xBFFFFFFFE0000000
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fmul fast float %4446, 0x4004000020000000
  %4471 = fadd fast float %4470, 0xBFF8000040000000
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4474 = fmul fast float %4035, 1.000000e+01
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fmul fast float %4475, 2.000000e+00
  %4477 = fsub fast float 3.000000e+00, %4476
  %4478 = fmul fast float %4475, %4475
  %4479 = fmul fast float %4478, %4477
  %4480 = fsub fast float 1.000000e+00, %4479
  %4481 = fsub fast float 0x3FE3333340000000, %4056
  %4482 = fmul fast float %4481, 0x400AAAAAA0000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4480, %4483
  %4485 = fmul fast float %4068, 0x3FEA2B8620000000
  %4486 = fmul fast float %4069, 0x3FEA2B8620000000
  %4487 = fmul fast float %4070, 0x3FEA2B8620000000
  %4488 = fadd fast float %4485, 0x3FC81DFBA0000000
  %4489 = fmul fast float %4488, %4068
  %4490 = fadd fast float %4489, 0x3F910E6020000000
  %4491 = fadd fast float %4486, 0x3FC81DFBA0000000
  %4492 = fmul fast float %4491, %4069
  %4493 = fadd fast float %4492, 0x3F910E6020000000
  %4494 = fadd fast float %4487, 0x3FC81DFBA0000000
  %4495 = fmul fast float %4494, %4070
  %4496 = fadd fast float %4495, 0x3F910E6020000000
  %4497 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4499 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4500 = fsub fast float %4497, %4068
  %4501 = fsub fast float %4498, %4069
  %4502 = fsub fast float %4499, %4070
  %4503 = fmul fast float %4500, %4473
  %4504 = fmul fast float %4503, %4484
  %4505 = fmul fast float %4501, %4473
  %4506 = fmul fast float %4505, %4484
  %4507 = fmul fast float %4502, %4473
  %4508 = fmul fast float %4507, %4484
  %4509 = fadd fast float %4504, %4068
  %4510 = fadd fast float %4506, %4069
  %4511 = fadd fast float %4508, %4070
  %4512 = fmul fast float %4028, %4028
  %4513 = fmul fast float %4512, %4512
  %4514 = fadd fast float %4469, 1.000000e+00
  %4515 = fsub fast float %4514, %4484
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4519 = fsub fast float 1.000000e+00, %4513
  %4520 = call float @dx.op.binary.f32(i32 36, float %4516, float %4519)  ; FMin(a,b)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4522 = call float @dx.op.binary.f32(i32 35, float %4520, float %4521)  ; FMax(a,b)
  %4523 = fadd fast float %4518, 0xBFE4CCCCC0000000
  %4524 = fmul fast float %4523, 0x4006DB6DA0000000
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %4525, 2.000000e+00
  %4527 = fsub fast float 3.000000e+00, %4526
  %4528 = bitcast float %4053 to i32
  %4529 = ashr i32 %4528, 1
  %4530 = add nsw i32 %4529, 532487669
  %4531 = bitcast i32 %4530 to float
  %4532 = fsub fast float 1.000000e+00, %4531
  %4533 = bitcast float %4532 to i32
  %4534 = sub nsw i32 2129859010, %4533
  %4535 = bitcast i32 %4534 to float
  %4536 = fmul fast float %4535, 2.000000e+00
  %4537 = bitcast float %4054 to i32
  %4538 = ashr i32 %4537, 1
  %4539 = add nsw i32 %4538, 532487669
  %4540 = bitcast i32 %4539 to float
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = bitcast float %4541 to i32
  %4543 = sub nsw i32 2129859010, %4542
  %4544 = bitcast i32 %4543 to float
  %4545 = fmul fast float %4544, 2.000000e+00
  %4546 = bitcast float %4055 to i32
  %4547 = ashr i32 %4546, 1
  %4548 = add nsw i32 %4547, 532487669
  %4549 = bitcast i32 %4548 to float
  %4550 = fsub fast float 1.000000e+00, %4549
  %4551 = bitcast float %4550 to i32
  %4552 = sub nsw i32 2129859010, %4551
  %4553 = bitcast i32 %4552 to float
  %4554 = fmul fast float %4553, 2.000000e+00
  %4555 = fsub fast float 0x4002A9FBE0000000, %4536
  %4556 = fadd fast float %4536, 0x3FD54FDF00000000
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, %4555
  %4561 = fmul fast float %4560, %4560
  %4562 = fsub fast float 0x4002A9FBE0000000, %4545
  %4563 = fadd fast float %4545, 0x3FD54FDF00000000
  %4564 = bitcast float %4563 to i32
  %4565 = sub nsw i32 2129859010, %4564
  %4566 = bitcast i32 %4565 to float
  %4567 = fmul fast float %4566, %4562
  %4568 = fmul fast float %4567, %4567
  %4569 = fsub fast float 0x4002A9FBE0000000, %4554
  %4570 = fadd fast float %4554, 0x3FD54FDF00000000
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4573, %4569
  %4575 = fmul fast float %4574, %4574
  %4576 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4561)  ; FMax(a,b)
  %4577 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4568)  ; FMax(a,b)
  %4578 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4575)  ; FMax(a,b)
  %4579 = fsub fast float 1.000000e+00, %4464
  %4580 = fadd fast float %4579, %4480
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fsub fast float 1.000000e+00, %4444
  %4583 = fmul fast float %4522, %4582
  %4584 = fmul fast float %4525, %4525
  %4585 = fmul fast float %4584, %4583
  %4586 = fmul fast float %4585, %4527
  %4587 = fmul fast float %4582, 0xBFE99999A0000000
  %4588 = fmul fast float %4587, %4473
  %4589 = fmul fast float %4588, %4484
  %4590 = fadd fast float %4589, 1.000000e+00
  %4591 = fadd fast float %4056, -1.000000e+00
  %4592 = fmul fast float %4590, %4591
  %4593 = fadd fast float %4592, 1.000000e+00
  %4594 = fsub fast float %4576, %4053
  %4595 = fsub fast float %4577, %4054
  %4596 = fsub fast float %4578, %4055
  %4597 = fmul fast float %4586, %4594
  %4598 = fmul fast float %4586, %4595
  %4599 = fmul fast float %4586, %4596
  %4600 = fadd fast float %4597, %4053
  %4601 = fadd fast float %4598, %4054
  %4602 = fadd fast float %4599, %4055
  %4603 = fsub fast float %94, %4016
  %4604 = fsub fast float %96, %4017
  %4605 = fsub fast float %98, %4018
  %4606 = fmul fast float %4586, %4603
  %4607 = fmul fast float %4586, %4604
  %4608 = fmul fast float %4586, %4605
  %4609 = fadd fast float %4606, %4016
  %4610 = fadd fast float %4607, %4017
  %4611 = fadd fast float %4608, %4018
  %4612 = fmul fast float %4586, %4581
  %4613 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4614 = fsub fast float 1.000000e+00, %4613
  %4615 = fmul fast float %4612, %4614
  %4616 = fadd fast float %4615, %4613
  %4617 = fsub fast float 1.000000e+00, %4028
  %4618 = fmul fast float %4586, %4617
  %4619 = fadd fast float %4618, %4028
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call float @dx.op.unary.f32(i32 25, float %4620)  ; Rsqrt(value)
  %4622 = fmul fast float %4609, %4621
  %4623 = fmul fast float %4610, %4621
  %4624 = fmul fast float %4611, %4621
  br label %4625

; <label>:4625                                    ; preds = %4457, %4450
  %4626 = phi float [ %4456, %4450 ], [ %4463, %4457 ]
  %4627 = phi float [ %4455, %4450 ], [ %4461, %4457 ]
  %4628 = phi float [ %4454, %4450 ], [ %4459, %4457 ]
  %4629 = phi float [ %4453, %4450 ], [ %4462, %4457 ]
  %4630 = phi float [ %4452, %4450 ], [ %4460, %4457 ]
  %4631 = phi float [ %4451, %4450 ], [ %4458, %4457 ]
  %4632 = phi float [ %4068, %4450 ], [ %4509, %4457 ]
  %4633 = phi float [ %4069, %4450 ], [ %4510, %4457 ]
  %4634 = phi float [ %4070, %4450 ], [ %4511, %4457 ]
  %4635 = phi float [ %4053, %4450 ], [ %4600, %4457 ]
  %4636 = phi float [ %4054, %4450 ], [ %4601, %4457 ]
  %4637 = phi float [ %4055, %4450 ], [ %4602, %4457 ]
  %4638 = phi float [ %4016, %4450 ], [ %4622, %4457 ]
  %4639 = phi float [ %4017, %4450 ], [ %4623, %4457 ]
  %4640 = phi float [ %4018, %4450 ], [ %4624, %4457 ]
  %4641 = phi float [ %4056, %4450 ], [ %4616, %4457 ]
  %4642 = phi float [ %4028, %4450 ], [ %4619, %4457 ]
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4646 = fmul fast float %4644, %85
  %4647 = fmul fast float %4645, %86
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4646, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = fmul fast float %4652, %4650
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = fadd fast float %4654, -1.000000e+00
  %4656 = fmul fast float %4655, %4649
  %4657 = fadd fast float %4656, 1.000000e+00
  %4658 = select i1 %186, float 0.000000e+00, float %4637
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4628, float %4627, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4630, float %4629, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = fmul fast float %4661, 2.000000e+00
  %4663 = fmul fast float %4662, %4638
  %4664 = fmul fast float %4662, %4639
  %4665 = fmul fast float %4662, %4640
  %4666 = fsub fast float %4631, %4663
  %4667 = fsub fast float %4630, %4664
  %4668 = fsub fast float %4629, %4665
  %4669 = call float @dx.op.binary.f32(i32 36, float %4642, float %4657)  ; FMin(a,b)
  %4670 = fsub fast float 1.000000e+00, %4669
  %4671 = bitcast float %4670 to i32
  %4672 = ashr i32 %4671, 1
  %4673 = add nsw i32 %4672, 532487669
  %4674 = bitcast i32 %4673 to float
  %4675 = fsub fast float 1.000000e+00, %4641
  %4676 = call float @dx.op.binary.f32(i32 35, float %4675, float 0x3F847AE140000000)  ; FMax(a,b)
  %4677 = fmul fast float %4676, %4676
  %4678 = fmul fast float %4677, %4677
  %4679 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4674, float %4678, float %4679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = fsub fast float 1.000000e+00, %4642
  %4683 = bitcast float %4682 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = fmul fast float %4686, 0x3FD20DD760000000
  %4688 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4689 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = fcmp fast oeq float %4689, 0.000000e+00
  %4691 = fcmp fast oeq float %4688, 0.000000e+00
  %4692 = or i1 %4691, %4690
  br i1 %4692, label %4722, label %4693

; <label>:4693                                    ; preds = %4625
  %4694 = fsub fast float -0.000000e+00, %65
  %4695 = fsub fast float -0.000000e+00, %63
  %4696 = call float @dx.op.unary.f32(i32 24, float %4689)  ; Sqrt(value)
  %4697 = fdiv fast float %4696, %4688
  %4698 = fcmp fast ogt float %4697, 0x3FFB6F8900000000
  %4699 = select i1 %4698, float 0x3FFB6F8900000000, float %4697
  %4700 = fmul fast float %4699, 0x3FE8A23460000000
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = call float @dx.op.binary.f32(i32 35, float %4699, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4703 = fmul fast float %4701, %4688
  %4704 = fmul fast float %4702, 0x3FF279A740000000
  %4705 = fadd fast float %4704, -1.000000e+00
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4694, float %4695, float %64, float %4694, float %4695, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 25, float %4706)  ; Rsqrt(value)
  %4708 = fmul fast float %4707, %4694
  %4709 = fmul fast float %4707, %4695
  %4710 = fmul fast float %4707, %64
  %4711 = fmul fast float %4705, %4705
  %4712 = fsub fast float 1.000000e+00, %4711
  %4713 = fmul fast float %4702, 0x40005F8BE0000000
  %4714 = fsub fast float 0x400C5BF8A0000000, %4713
  %4715 = fdiv fast float %4703, %4714
  %4716 = fmul fast float %4715, 0x3FEE31C3C0000000
  %4717 = fmul fast float %4716, %4712
  %4718 = fmul fast float %4702, 0x3FDACB7480000000
  %4719 = fadd fast float %4718, 0xBFD7347680000000
  %4720 = fmul fast float %4719, %4715
  %4721 = fmul fast float %4720, %4712
  br label %4722

; <label>:4722                                    ; preds = %4693, %4625
  %4723 = phi float [ %4708, %4693 ], [ 0.000000e+00, %4625 ]
  %4724 = phi float [ %4709, %4693 ], [ 0.000000e+00, %4625 ]
  %4725 = phi float [ %4710, %4693 ], [ 0.000000e+00, %4625 ]
  %4726 = phi float [ %4717, %4693 ], [ 0.000000e+00, %4625 ]
  %4727 = phi float [ %4721, %4693 ], [ 0.000000e+00, %4625 ]
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4724, float %4725, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = fmul fast float %4728, %4728
  %4730 = fmul fast float %4729, 0x3FEE471020000000
  %4731 = fadd fast float %4730, 0xBFD42F6020000000
  %4732 = fmul fast float %4688, 0x3FD20DD760000000
  %4733 = fmul fast float %4731, %4727
  %4734 = fmul fast float %4726, 0x3FDF454380000000
  %4735 = fmul fast float %4734, %4728
  %4736 = fadd fast float %4735, %4732
  %4737 = fadd fast float %4736, %4733
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4723, float %4724, float %4725, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = fmul fast float %4738, 0x3FDF454380000000
  %4740 = fmul fast float %4738, %4738
  %4741 = fmul fast float %4740, 0x3FEE471020000000
  %4742 = fadd fast float %4741, 0xBFD42F6020000000
  %4743 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4726, float %4727, float 0x3FD20DD760000000, float %4739, float %4742)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4745 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4746 = fcmp fast oeq float %4745, 0.000000e+00
  %4747 = fcmp fast oeq float %4744, 0.000000e+00
  %4748 = or i1 %4747, %4746
  br i1 %4748, label %4778, label %4749

; <label>:4749                                    ; preds = %4722
  %4750 = fsub fast float -0.000000e+00, %61
  %4751 = fsub fast float -0.000000e+00, %59
  %4752 = call float @dx.op.unary.f32(i32 24, float %4745)  ; Sqrt(value)
  %4753 = fdiv fast float %4752, %4744
  %4754 = fcmp fast ogt float %4753, 0x3FFB6F8900000000
  %4755 = select i1 %4754, float 0x3FFB6F8900000000, float %4753
  %4756 = fmul fast float %4755, 0x3FE8A23460000000
  %4757 = call float @dx.op.unary.f32(i32 7, float %4756)  ; Saturate(value)
  %4758 = call float @dx.op.binary.f32(i32 35, float %4755, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4759 = fmul fast float %4757, %4744
  %4760 = fmul fast float %4758, 0x3FF279A740000000
  %4761 = fadd fast float %4760, -1.000000e+00
  %4762 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4751, float %60, float %4750, float %4751, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = call float @dx.op.unary.f32(i32 25, float %4762)  ; Rsqrt(value)
  %4764 = fmul fast float %4763, %4750
  %4765 = fmul fast float %4763, %4751
  %4766 = fmul fast float %4763, %60
  %4767 = fmul fast float %4761, %4761
  %4768 = fsub fast float 1.000000e+00, %4767
  %4769 = fmul fast float %4758, 0x40005F8BE0000000
  %4770 = fsub fast float 0x400C5BF8A0000000, %4769
  %4771 = fdiv fast float %4759, %4770
  %4772 = fmul fast float %4771, 0x3FEE31C3C0000000
  %4773 = fmul fast float %4772, %4768
  %4774 = fmul fast float %4758, 0x3FDACB7480000000
  %4775 = fadd fast float %4774, 0xBFD7347680000000
  %4776 = fmul fast float %4775, %4771
  %4777 = fmul fast float %4776, %4768
  br label %4778

; <label>:4778                                    ; preds = %4749, %4722
  %4779 = phi float [ %4764, %4749 ], [ 0.000000e+00, %4722 ]
  %4780 = phi float [ %4765, %4749 ], [ 0.000000e+00, %4722 ]
  %4781 = phi float [ %4766, %4749 ], [ 0.000000e+00, %4722 ]
  %4782 = phi float [ %4773, %4749 ], [ 0.000000e+00, %4722 ]
  %4783 = phi float [ %4777, %4749 ], [ 0.000000e+00, %4722 ]
  %4784 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4785 = fmul fast float %4784, %4784
  %4786 = fmul fast float %4785, 0x3FEE471020000000
  %4787 = fadd fast float %4786, 0xBFD42F6020000000
  %4788 = fmul fast float %4744, 0x3FD20DD760000000
  %4789 = fmul fast float %4787, %4783
  %4790 = fmul fast float %4782, 0x3FDF454380000000
  %4791 = fmul fast float %4790, %4784
  %4792 = fadd fast float %4791, %4788
  %4793 = fadd fast float %4792, %4789
  %4794 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4780, float %4781, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %4795 = fmul fast float %4794, 0x3FDF454380000000
  %4796 = fmul fast float %4794, %4794
  %4797 = fmul fast float %4796, 0x3FEE471020000000
  %4798 = fadd fast float %4797, 0xBFD42F6020000000
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4744, float %4782, float %4783, float 0x3FD20DD760000000, float %4795, float %4798)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4801 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = fcmp fast oeq float %4801, 0.000000e+00
  %4803 = fcmp fast oeq float %4800, 0.000000e+00
  %4804 = or i1 %4803, %4802
  br i1 %4804, label %4834, label %4805

; <label>:4805                                    ; preds = %4778
  %4806 = fsub fast float -0.000000e+00, %57
  %4807 = fsub fast float -0.000000e+00, %55
  %4808 = call float @dx.op.unary.f32(i32 24, float %4801)  ; Sqrt(value)
  %4809 = fdiv fast float %4808, %4800
  %4810 = fcmp fast ogt float %4809, 0x3FFB6F8900000000
  %4811 = select i1 %4810, float 0x3FFB6F8900000000, float %4809
  %4812 = fmul fast float %4811, 0x3FE8A23460000000
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = call float @dx.op.binary.f32(i32 35, float %4811, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4815 = fmul fast float %4813, %4800
  %4816 = fmul fast float %4814, 0x3FF279A740000000
  %4817 = fadd fast float %4816, -1.000000e+00
  %4818 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4807, float %56, float %4806, float %4807, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4819 = call float @dx.op.unary.f32(i32 25, float %4818)  ; Rsqrt(value)
  %4820 = fmul fast float %4819, %4806
  %4821 = fmul fast float %4819, %4807
  %4822 = fmul fast float %4819, %56
  %4823 = fmul fast float %4817, %4817
  %4824 = fsub fast float 1.000000e+00, %4823
  %4825 = fmul fast float %4814, 0x40005F8BE0000000
  %4826 = fsub fast float 0x400C5BF8A0000000, %4825
  %4827 = fdiv fast float %4815, %4826
  %4828 = fmul fast float %4827, 0x3FEE31C3C0000000
  %4829 = fmul fast float %4828, %4824
  %4830 = fmul fast float %4814, 0x3FDACB7480000000
  %4831 = fadd fast float %4830, 0xBFD7347680000000
  %4832 = fmul fast float %4831, %4827
  %4833 = fmul fast float %4832, %4824
  br label %4834

; <label>:4834                                    ; preds = %4805, %4778
  %4835 = phi float [ %4820, %4805 ], [ 0.000000e+00, %4778 ]
  %4836 = phi float [ %4821, %4805 ], [ 0.000000e+00, %4778 ]
  %4837 = phi float [ %4822, %4805 ], [ 0.000000e+00, %4778 ]
  %4838 = phi float [ %4829, %4805 ], [ 0.000000e+00, %4778 ]
  %4839 = phi float [ %4833, %4805 ], [ 0.000000e+00, %4778 ]
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4836, float %4837, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = fmul fast float %4840, %4840
  %4842 = fmul fast float %4841, 0x3FEE471020000000
  %4843 = fadd fast float %4842, 0xBFD42F6020000000
  %4844 = fmul fast float %4800, 0x3FD20DD760000000
  %4845 = fmul fast float %4843, %4839
  %4846 = fmul fast float %4838, 0x3FDF454380000000
  %4847 = fmul fast float %4846, %4840
  %4848 = fadd fast float %4847, %4844
  %4849 = fadd fast float %4848, %4845
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4835, float %4836, float %4837, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = fmul fast float %4850, 0x3FDF454380000000
  %4852 = fmul fast float %4850, %4850
  %4853 = fmul fast float %4852, 0x3FEE471020000000
  %4854 = fadd fast float %4853, 0xBFD42F6020000000
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4800, float %4838, float %4839, float 0x3FD20DD760000000, float %4851, float %4854)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = call float @dx.op.binary.f32(i32 35, float %4737, float 0.000000e+00)  ; FMax(a,b)
  %4857 = call float @dx.op.binary.f32(i32 35, float %4793, float 0.000000e+00)  ; FMax(a,b)
  %4858 = call float @dx.op.binary.f32(i32 35, float %4849, float 0.000000e+00)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 35, float %4743, float 0.000000e+00)  ; FMax(a,b)
  %4860 = call float @dx.op.binary.f32(i32 35, float %4799, float 0.000000e+00)  ; FMax(a,b)
  %4861 = call float @dx.op.binary.f32(i32 35, float %4855, float 0.000000e+00)  ; FMax(a,b)
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = call float @dx.op.binary.f32(i32 36, float %4632, float %4863)  ; FMin(a,b)
  %4865 = fmul fast float %4864, %4670
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = bitcast float %4866 to i32
  %4868 = sub nsw i32 2129859010, %4867
  %4869 = bitcast i32 %4868 to float
  %4870 = call float @dx.op.binary.f32(i32 36, float %4633, float %4863)  ; FMin(a,b)
  %4871 = fmul fast float %4870, %4670
  %4872 = fsub fast float 1.000000e+00, %4871
  %4873 = bitcast float %4872 to i32
  %4874 = sub nsw i32 2129859010, %4873
  %4875 = bitcast i32 %4874 to float
  %4876 = call float @dx.op.binary.f32(i32 36, float %4634, float %4863)  ; FMin(a,b)
  %4877 = fmul fast float %4876, %4670
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = fmul fast float %4856, %4669
  %4883 = fmul fast float %4882, %4869
  %4884 = fmul fast float %4857, %4669
  %4885 = fmul fast float %4884, %4875
  %4886 = fmul fast float %4858, %4669
  %4887 = fmul fast float %4886, %4881
  %4888 = call float @dx.op.binary.f32(i32 36, float %4635, float %4863)  ; FMin(a,b)
  %4889 = fmul fast float %4888, %4670
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = bitcast float %4890 to i32
  %4892 = sub nsw i32 2129859010, %4891
  %4893 = bitcast i32 %4892 to float
  %4894 = call float @dx.op.binary.f32(i32 36, float %4636, float %4863)  ; FMin(a,b)
  %4895 = fmul fast float %4894, %4670
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = bitcast float %4896 to i32
  %4898 = sub nsw i32 2129859010, %4897
  %4899 = bitcast i32 %4898 to float
  %4900 = call float @dx.op.binary.f32(i32 36, float %4658, float %4863)  ; FMin(a,b)
  %4901 = fmul fast float %4900, %4670
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = bitcast float %4902 to i32
  %4904 = sub nsw i32 2129859010, %4903
  %4905 = bitcast i32 %4904 to float
  %4906 = fmul fast float %4859, %4669
  %4907 = fmul fast float %4906, %4893
  %4908 = fmul fast float %4860, %4669
  %4909 = fmul fast float %4908, %4899
  %4910 = fmul fast float %4861, %4669
  %4911 = fmul fast float %4910, %4905
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4883, float %4885, float %4887, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = select i1 %186, float 0.000000e+00, float %4883
  %4914 = select i1 %186, float %4912, float %4885
  %4915 = select i1 %186, float 0.000000e+00, float %4887
  %4916 = call float @dx.op.dot3.f32(i32 55, float %4907, float %4909, float %4911, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4917 = select i1 %186, float 0.000000e+00, float %4907
  %4918 = select i1 %186, float %4916, float %4909
  %4919 = select i1 %186, float 0.000000e+00, float %4911
  %4920 = fmul fast float %4660, 9.843750e-01
  %4921 = fmul fast float %4641, 9.843750e-01
  %4922 = fadd fast float %4920, 7.812500e-03
  %4923 = fadd fast float %4921, 7.812500e-03
  %4924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4922, float %4923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 2
  %4926 = extractvalue %dx.types.ResRet.f32 %4924, 3
  %4927 = fmul fast float %4925, %4635
  %4928 = fmul fast float %4925, %4636
  %4929 = fmul fast float %4925, %4658
  %4930 = fadd fast float %4927, %4926
  %4931 = fadd fast float %4928, %4926
  %4932 = fadd fast float %4929, %4926
  %4933 = fcmp fast ogt float %4029, 0.000000e+00
  br i1 %4933, label %4934, label %4960

; <label>:4934                                    ; preds = %4834
  %4935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4029, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.ResRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.ResRet.f32 %4935, 2
  %4939 = fadd fast float %4936, -5.000000e-01
  %4940 = fadd fast float %4937, -5.000000e-01
  %4941 = fadd fast float %4938, -5.000000e-01
  %4942 = fsub fast float 1.000000e+00, %4635
  %4943 = fsub fast float 1.000000e+00, %4636
  %4944 = fsub fast float 1.000000e+00, %4658
  %4945 = fmul fast float %4635, 4.000000e+00
  %4946 = fmul fast float %4945, %4942
  %4947 = fmul fast float %4946, %4939
  %4948 = fmul fast float %4636, 4.000000e+00
  %4949 = fmul fast float %4948, %4943
  %4950 = fmul fast float %4949, %4940
  %4951 = fmul fast float %4658, 4.000000e+00
  %4952 = fmul fast float %4951, %4944
  %4953 = fmul fast float %4952, %4941
  %4954 = fadd fast float %4947, %4930
  %4955 = fadd fast float %4950, %4931
  %4956 = fadd fast float %4953, %4932
  %4957 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4958 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  br label %4960

; <label>:4960                                    ; preds = %4934, %4834
  %4961 = phi float [ %4957, %4934 ], [ %4930, %4834 ]
  %4962 = phi float [ %4958, %4934 ], [ %4931, %4834 ]
  %4963 = phi float [ %4959, %4934 ], [ %4932, %4834 ]
  %4964 = call float @dx.op.binary.f32(i32 35, float %4962, float %4963)  ; FMax(a,b)
  %4965 = call float @dx.op.binary.f32(i32 35, float %4961, float %4964)  ; FMax(a,b)
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = fmul fast float %4965, %4641
  %4968 = fadd fast float %4967, %4641
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4971 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4972 = extractvalue %dx.types.CBufRet.f32 %4969, 2
  %4973 = extractvalue %dx.types.CBufRet.f32 %4969, 3
  %4974 = fmul fast float %4968, %4970
  %4975 = fadd fast float %4974, %4971
  %4976 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4977 = fmul fast float %4972, %4968
  %4978 = fadd fast float %4977, %4973
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fsub fast float 1.000000e+00, %4681
  %4981 = fadd fast float %4980, %4979
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fcmp fast olt float %4982, 1.000000e+00
  br i1 %4983, label %4984, label %5839

; <label>:4984                                    ; preds = %4960
  %4985 = fcmp fast olt float %4976, 1.000000e+00
  %4986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.f32 %4986, 0
  %4988 = fcmp fast ogt float %4987, 0.000000e+00
  %4989 = or i1 %4985, %4988
  %4990 = or i1 %4985, %4988
  %4991 = xor i1 %4990, true
  %4992 = zext i1 %4991 to i32
  br i1 %4989, label %4993, label %5236

; <label>:4993                                    ; preds = %4984
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.CBufRet.f32 %4994, 1
  %4997 = extractvalue %dx.types.CBufRet.f32 %4994, 2
  %4998 = extractvalue %dx.types.CBufRet.f32 %4994, 3
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.CBufRet.f32 %4999, 2
  %5003 = extractvalue %dx.types.CBufRet.f32 %4999, 3
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5008 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.CBufRet.f32 %5009, 1
  %5012 = extractvalue %dx.types.CBufRet.f32 %5009, 2
  %5013 = extractvalue %dx.types.CBufRet.f32 %5009, 3
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.CBufRet.f32 %5014, 2
  %5018 = extractvalue %dx.types.CBufRet.f32 %5014, 3
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5023 = extractvalue %dx.types.CBufRet.f32 %5019, 3
  %5024 = call float @dx.op.dot3.f32(i32 55, float %5020, float %5021, float %5022, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.unary.f32(i32 6, float %5025)  ; FAbs(value)
  %5027 = fmul fast float %5026, 8.000000e+00
  %5028 = fadd fast float %5027, -6.000000e+00
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5030 = fmul fast float %5024, 8.000000e+00
  %5031 = fmul fast float %5030, %4987
  %5032 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5033 = fcmp fast ogt float %5032, 0.000000e+00
  br i1 %5033, label %5034, label %5211, !dx.controlflow.hints !85

; <label>:5034                                    ; preds = %4993
  %5035 = extractvalue %dx.types.CBufRet.f32 %4986, 1
  %5036 = extractvalue %dx.types.CBufRet.f32 %4986, 2
  %5037 = fsub fast float %5035, %5036
  %5038 = fmul fast float %5037, %4641
  %5039 = fadd fast float %5038, %5036
  %5040 = fmul fast float %199, 2.000000e+00
  %5041 = fmul fast float %200, 2.000000e+00
  %5042 = fadd fast float %5040, -1.000000e+00
  %5043 = fadd fast float %5041, -1.000000e+00
  %5044 = fmul fast float %5039, %5042
  %5045 = fmul fast float %5039, %5043
  %5046 = fadd fast float %5044, %85
  %5047 = fadd fast float %5045, %86
  %5048 = fmul fast float %5046, %4644
  %5049 = fmul fast float %5047, %4645
  %5050 = fadd fast float %4641, 0xBFE3333340000000
  %5051 = fmul fast float %5050, 0x4004000020000000
  %5052 = fsub fast float 1.000000e+00, %5051
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5053, 3.000000e+00
  %5055 = fadd fast float %5054, %199
  %5056 = call float @dx.op.unary.f32(i32 27, float %5055)  ; Round_ni(value)
  %5057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5048, float %5049, float %5056, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = fcmp fast une float %5058, 0xFFF0000000000000
  %5060 = fcmp fast une float %5058, 0x7FF0000000000000
  %5061 = and i1 %5059, %5060
  %5062 = fcmp fast olt float %5058, 0.000000e+00
  %5063 = call float @dx.op.unary.f32(i32 6, float %5058)  ; FAbs(value)
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = select i1 %5061, float 1.000000e+00, float 0.000000e+00
  %5066 = fmul fast float %5065, %5032
  %5067 = fcmp fast ogt float %5066, 0.000000e+00
  br i1 %5067, label %5068, label %5211, !dx.controlflow.hints !86

; <label>:5068                                    ; preds = %5034
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.CBufRet.f32 %5069, 2
  %5073 = select i1 %5062, float 0.000000e+00, float %5070
  %5074 = select i1 %5062, float 0.000000e+00, float %5071
  %5075 = select i1 %5062, float 0.000000e+00, float %5072
  %5076 = select i1 %5062, float %4995, float %5010
  %5077 = select i1 %5062, float %5000, float %5015
  %5078 = select i1 %5062, float %5005, float %5020
  %5079 = select i1 %5062, float %4996, float %5011
  %5080 = select i1 %5062, float %5001, float %5016
  %5081 = select i1 %5062, float %5006, float %5021
  %5082 = select i1 %5062, float %4997, float %5012
  %5083 = select i1 %5062, float %5002, float %5017
  %5084 = select i1 %5062, float %5007, float %5022
  %5085 = select i1 %5062, float %4998, float %5013
  %5086 = select i1 %5062, float %5003, float %5018
  %5087 = select i1 %5062, float %5008, float %5023
  %5088 = fadd fast float %5073, %144
  %5089 = fadd fast float %5074, %145
  %5090 = fadd fast float %5075, %146
  %5091 = fmul fast float %5088, %5076
  %5092 = call float @dx.op.tertiary.f32(i32 46, float %5089, float %5079, float %5091)  ; FMad(a,b,c)
  %5093 = call float @dx.op.tertiary.f32(i32 46, float %5090, float %5082, float %5092)  ; FMad(a,b,c)
  %5094 = fadd fast float %5093, %5085
  %5095 = fmul fast float %5088, %5077
  %5096 = call float @dx.op.tertiary.f32(i32 46, float %5089, float %5080, float %5095)  ; FMad(a,b,c)
  %5097 = call float @dx.op.tertiary.f32(i32 46, float %5090, float %5083, float %5096)  ; FMad(a,b,c)
  %5098 = fadd fast float %5097, %5086
  %5099 = fmul fast float %5088, %5078
  %5100 = call float @dx.op.tertiary.f32(i32 46, float %5089, float %5081, float %5099)  ; FMad(a,b,c)
  %5101 = call float @dx.op.tertiary.f32(i32 46, float %5090, float %5084, float %5100)  ; FMad(a,b,c)
  %5102 = fadd fast float %5101, %5087
  %5103 = fdiv fast float 1.000000e+00, %5102
  %5104 = fmul fast float %5103, %5094
  %5105 = fmul fast float %5103, %5098
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5108 = extractvalue %dx.types.CBufRet.f32 %5106, 1
  %5109 = fmul fast float %5104, %5107
  %5110 = fmul fast float %5105, %5108
  %5111 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5112 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5113 = fadd fast float %5109, %5111
  %5114 = fadd fast float %5110, %5112
  %5115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.f32 %5115, 3
  %5117 = fmul fast float %5116, %4666
  %5118 = fmul fast float %5116, %4667
  %5119 = fmul fast float %5116, %4668
  %5120 = fadd fast float %5117, %5088
  %5121 = fadd fast float %5118, %5089
  %5122 = fadd fast float %5119, %5090
  %5123 = fmul fast float %5120, %5076
  %5124 = call float @dx.op.tertiary.f32(i32 46, float %5121, float %5079, float %5123)  ; FMad(a,b,c)
  %5125 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5082, float %5124)  ; FMad(a,b,c)
  %5126 = fadd fast float %5125, %5085
  %5127 = fmul fast float %5120, %5077
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5121, float %5080, float %5127)  ; FMad(a,b,c)
  %5129 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5083, float %5128)  ; FMad(a,b,c)
  %5130 = fadd fast float %5129, %5086
  %5131 = fmul fast float %5120, %5078
  %5132 = call float @dx.op.tertiary.f32(i32 46, float %5121, float %5081, float %5131)  ; FMad(a,b,c)
  %5133 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5084, float %5132)  ; FMad(a,b,c)
  %5134 = fadd fast float %5133, %5087
  %5135 = fdiv fast float 1.000000e+00, %5134
  %5136 = fmul fast float %5135, %5126
  %5137 = fmul fast float %5135, %5130
  %5138 = fmul fast float %5113, 2.000000e+00
  %5139 = fadd fast float %5138, -1.000000e+00
  %5140 = call float @dx.op.unary.f32(i32 6, float %5139)  ; FAbs(value)
  %5141 = fmul fast float %5140, 5.000000e+00
  %5142 = fadd fast float %5141, -4.000000e+00
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fmul fast float %5143, %5029
  %5145 = fsub fast float %5104, %5136
  %5146 = fmul fast float %5107, %5145
  %5147 = fmul fast float %5144, %5146
  %5148 = fsub fast float %5136, %5104
  %5149 = fmul fast float %5107, %5148
  %5150 = fadd fast float %5149, %5147
  %5151 = fsub fast float %5137, %5105
  %5152 = fmul fast float %5108, %5151
  %5153 = fmul fast float %5150, %5064
  %5154 = fmul fast float %5152, %5064
  %5155 = fadd fast float %5153, %5113
  %5156 = fadd fast float %5154, %5114
  %5157 = fsub fast float %5135, %5103
  %5158 = fmul fast float %5157, %5064
  %5159 = fadd fast float %5158, %5103
  %5160 = fdiv fast float 1.000000e+00, %5159
  %5161 = fadd fast float %4641, -1.000000e+00
  %5162 = fsub fast float %5160, %5102
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5165 = fmul fast float %5164, %5160
  %5166 = fdiv fast float 1.600000e+02, %5165
  %5167 = fmul fast float %5161, %5161
  %5168 = fmul fast float %5167, 0xBFB5B17960000000
  %5169 = fmul fast float %5168, %5162
  %5170 = fmul fast float %5169, %5166
  %5171 = call float @dx.op.unary.f32(i32 21, float %5170)  ; Exp(value)
  %5172 = fmul fast float %5171, 0x3FF04B2960000000
  %5173 = fsub fast float 0x3FF04B2960000000, %5172
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = fmul fast float %5174, 4.000000e+00
  %5176 = fadd fast float %199, -5.000000e-01
  %5177 = fadd fast float %200, -5.000000e-01
  %5178 = fmul fast float %5174, 0x3FBEB851E0000000
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fmul fast float %5179, %5176
  %5181 = fmul fast float %5179, %5177
  %5182 = fadd fast float %5155, %5180
  %5183 = fadd fast float %5156, %5181
  %5184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5182, float %5183, float undef, float undef, i32 0, i32 0, i32 undef, float %5175)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.ResRet.f32 %5184, 1
  %5187 = extractvalue %dx.types.ResRet.f32 %5184, 2
  %5188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5189 = extractvalue %dx.types.CBufRet.f32 %5188, 2
  %5190 = fmul fast float %5189, %5185
  %5191 = fmul fast float %5189, %5186
  %5192 = fmul fast float %5189, %5187
  %5193 = select i1 %186, float 0.000000e+00, float %5191
  %5194 = select i1 %186, float 0.000000e+00, float %5192
  %5195 = fmul fast float %5182, 2.000000e+00
  %5196 = fmul fast float %5183, 2.000000e+00
  %5197 = fadd fast float %5195, -1.000000e+00
  %5198 = fadd fast float %5196, -1.000000e+00
  %5199 = fmul fast float %5197, %5197
  %5200 = fsub fast float 1.000000e+00, %5199
  %5201 = call float @dx.op.unary.f32(i32 7, float %5200)  ; Saturate(value)
  %5202 = fsub fast float 1.000000e+00, %5201
  %5203 = fmul fast float %5202, %5029
  %5204 = fadd fast float %5203, %5201
  %5205 = fmul fast float %5198, %5198
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = fmul fast float %5204, %5207
  %5209 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5210 = fmul fast float %5209, %5066
  br label %5211

; <label>:5211                                    ; preds = %5068, %5034, %4993
  %5212 = phi float [ %5190, %5068 ], [ 0.000000e+00, %5034 ], [ 0.000000e+00, %4993 ]
  %5213 = phi float [ %5193, %5068 ], [ 0.000000e+00, %5034 ], [ 0.000000e+00, %4993 ]
  %5214 = phi float [ %5194, %5068 ], [ 0.000000e+00, %5034 ], [ 0.000000e+00, %4993 ]
  %5215 = phi float [ %5210, %5068 ], [ 0.000000e+00, %5034 ], [ 0.000000e+00, %4993 ]
  %5216 = fcmp fast olt float %5215, 1.000000e+00
  %5217 = or i1 %5216, %4991
  %5218 = zext i1 %5217 to i32
  %5219 = fmul fast float %5215, %4976
  %5220 = fsub fast float %5215, %5219
  %5221 = fsub fast float 1.000000e+00, %4982
  %5222 = fmul fast float %5220, %5221
  %5223 = fadd fast float %5222, %4982
  %5224 = fsub fast float %5223, %5220
  %5225 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5226 = fmul fast float %5225, %4917
  %5227 = fmul fast float %5225, %4918
  %5228 = fmul fast float %5225, %4919
  %5229 = fsub fast float -0.000000e+00, %5223
  %5230 = fmul fast float %5220, %5212
  %5231 = fmul fast float %5220, %5213
  %5232 = fmul fast float %5220, %5214
  %5233 = fadd fast float %5230, %5226
  %5234 = fadd fast float %5231, %5227
  %5235 = fadd fast float %5232, %5228
  br label %5236

; <label>:5236                                    ; preds = %5211, %4984
  %5237 = phi float [ %4982, %4984 ], [ %5229, %5211 ]
  %5238 = phi float [ %4917, %4984 ], [ %5233, %5211 ]
  %5239 = phi float [ %4918, %4984 ], [ %5234, %5211 ]
  %5240 = phi float [ %4919, %4984 ], [ %5235, %5211 ]
  %5241 = phi i32 [ %4992, %4984 ], [ %5218, %5211 ]
  %5242 = icmp eq i32 %5241, 0
  br i1 %5242, label %5839, label %5243

; <label>:5243                                    ; preds = %5236
  %5244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.f32 %5244, 2
  %5246 = extractvalue %dx.types.CBufRet.f32 %5244, 3
  %5247 = fmul fast float %5245, %85
  %5248 = fmul fast float %5246, %86
  %5249 = fptoui float %5247 to i32
  %5250 = fptoui float %5248 to i32
  %5251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.CBufRet.f32 %5251, 2
  %5254 = extractvalue %dx.types.CBufRet.f32 %5251, 3
  %5255 = fadd fast float %80, -4.000000e+00
  %5256 = call float @dx.op.binary.f32(i32 35, float %5255, float 0.000000e+00)  ; FMax(a,b)
  %5257 = fadd fast float %5256, %5252
  %5258 = fmul fast float %5257, %5253
  %5259 = call float @dx.op.unary.f32(i32 23, float %5258)  ; Log(value)
  %5260 = fmul fast float %5259, %5254
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5263 = fmul fast float %5260, %5262
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.i32 %5265, 1
  %5267 = add i32 %5266, -1
  %5268 = uitofp i32 %5266 to float
  %5269 = fmul fast float %5268, %5264
  %5270 = fptoui float %5269 to i32
  %5271 = call i32 @dx.op.binary.i32(i32 40, i32 %5270, i32 %5267)  ; UMin(a,b)
  %5272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.i32 %5272, 2
  %5274 = extractvalue %dx.types.CBufRet.i32 %5272, 3
  %5275 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5250, i32 %5273, i32 %5249)  ; UMad(a,b,c)
  %5276 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5271, i32 %5274, i32 %5275)  ; UMad(a,b,c)
  %5277 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5278 = fptoui float %5277 to i32
  %5279 = lshr i32 %5278, 5
  %5280 = call i32 @dx.op.binary.i32(i32 40, i32 %5279, i32 8191)  ; UMin(a,b)
  %5281 = fcmp fast ogt float %4440, 0.000000e+00
  %5282 = fcmp fast ogt float %4668, 0.000000e+00
  %5283 = and i1 %5282, %5281
  br i1 %5283, label %5284, label %5313

; <label>:5284                                    ; preds = %5243
  %5285 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = call float @dx.op.binary.f32(i32 35, float %5285, float -1.000000e+00)  ; FMax(a,b)
  %5287 = call float @dx.op.binary.f32(i32 36, float %5286, float 1.000000e+00)  ; FMin(a,b)
  %5288 = fmul fast float %5287, %5287
  %5289 = fsub fast float 1.000000e+00, %5288
  %5290 = fmul fast float %5289, 0x3FFC6E2300000000
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = fcmp fast ogt float %5291, 0.000000e+00
  %5293 = call float @dx.op.unary.f32(i32 24, float %5291)  ; Sqrt(value)
  %5294 = fsub fast float 1.000000e+00, %5293
  %5295 = call float @dx.op.unary.f32(i32 23, float %5294)  ; Log(value)
  %5296 = fmul fast float %5295, 5.000000e+00
  %5297 = call float @dx.op.unary.f32(i32 21, float %5296)  ; Exp(value)
  %5298 = fmul fast float %5297, 0x3FEF591A60000000
  %5299 = fadd fast float %5298, 0x3F94DCB540000000
  %5300 = select i1 %5292, float %5299, float 1.000000e+00
  %5301 = fcmp fast oge float %5300, 1.000000e+00
  %5302 = fmul fast float %5285, 2.000000e+00
  %5303 = fadd fast float %5302, %4668
  %5304 = select i1 %5301, float %5303, float %4668
  %5305 = fsub fast float %5304, %4668
  %5306 = fmul fast float %5305, %4440
  %5307 = fadd fast float %5306, %4668
  %5308 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %5307, float %4666, float %4667, float %5307)  ; Dot3(ax,ay,az,bx,by,bz)
  %5309 = call float @dx.op.unary.f32(i32 25, float %5308)  ; Rsqrt(value)
  %5310 = fmul fast float %5309, %4666
  %5311 = fmul fast float %5309, %4667
  %5312 = fmul fast float %5307, %5309
  br label %5313

; <label>:5313                                    ; preds = %5284, %5243
  %5314 = phi float [ %5310, %5284 ], [ %4666, %5243 ]
  %5315 = phi float [ %5311, %5284 ], [ %4667, %5243 ]
  %5316 = phi float [ %5312, %5284 ], [ %4668, %5243 ]
  %5317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5318 = extractvalue %dx.types.CBufRet.i32 %5317, 2
  %5319 = add nsw i32 %5318, -1
  %5320 = call i32 @dx.op.binary.i32(i32 37, i32 %5319, i32 0)  ; IMax(a,b)
  %5321 = shl i32 %5280, 2
  %5322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5321, i32 undef)  ; BufferLoad(srv,index,wot)
  %5323 = extractvalue %dx.types.ResRet.i32 %5322, 0
  %5324 = lshr i32 %5323, 16
  %5325 = and i32 %5323, 65535
  %5326 = lshr i32 %5323, 21
  %5327 = lshr i32 %5325, 5
  %5328 = call i32 @dx.op.binary.i32(i32 40, i32 %5327, i32 %5320)  ; UMin(a,b)
  %5329 = icmp ugt i32 %5326, %5328
  br i1 %5329, label %5711, label %5330

; <label>:5330                                    ; preds = %5313
  br label %5331

; <label>:5331                                    ; preds = %5700, %5330
  %5332 = phi float [ %5701, %5700 ], [ 0.000000e+00, %5330 ]
  %5333 = phi float [ %5702, %5700 ], [ 0.000000e+00, %5330 ]
  %5334 = phi float [ %5703, %5700 ], [ 0.000000e+00, %5330 ]
  %5335 = phi float [ %5704, %5700 ], [ 1.000000e+00, %5330 ]
  %5336 = phi i32 [ %5708, %5700 ], [ %5326, %5330 ]
  %5337 = phi float [ %5705, %5700 ], [ 0.000000e+00, %5330 ]
  %5338 = phi float [ %5706, %5700 ], [ 0.000000e+00, %5330 ]
  %5339 = phi float [ %5707, %5700 ], [ 0.000000e+00, %5330 ]
  %5340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.i32 %5340, 2
  %5342 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5276, i32 %5341, i32 %5336)  ; UMad(a,b,c)
  %5343 = shl i32 %5342, 2
  %5344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5343, i32 undef)  ; BufferLoad(srv,index,wot)
  %5345 = extractvalue %dx.types.ResRet.i32 %5344, 0
  %5346 = shl i32 %5336, 5
  %5347 = sub nsw i32 %5324, %5346
  %5348 = call i32 @dx.op.binary.i32(i32 37, i32 %5347, i32 0)  ; IMax(a,b)
  %5349 = call i32 @dx.op.binary.i32(i32 38, i32 %5348, i32 31)  ; IMin(a,b)
  %5350 = sub nsw i32 1, %5324
  %5351 = add nsw i32 %5350, %5325
  %5352 = call i32 @dx.op.binary.i32(i32 37, i32 %5351, i32 0)  ; IMax(a,b)
  %5353 = call i32 @dx.op.binary.i32(i32 38, i32 %5352, i32 32)  ; IMin(a,b)
  %5354 = and i32 %5353, 31
  %5355 = shl i32 -1, %5354
  %5356 = xor i32 %5355, -1
  %5357 = and i32 %5349, 31
  %5358 = shl i32 %5356, %5357
  %5359 = icmp eq i32 %5353, 32
  %5360 = select i1 %5359, i32 -1, i32 %5358
  %5361 = and i32 %5360, %5345
  %5362 = icmp eq i32 %5361, 0
  br i1 %5362, label %5700, label %5363

; <label>:5363                                    ; preds = %5331
  br label %5364

; <label>:5364                                    ; preds = %5474, %5363
  %5365 = phi float [ %5475, %5474 ], [ %5332, %5363 ]
  %5366 = phi float [ %5476, %5474 ], [ %5333, %5363 ]
  %5367 = phi float [ %5477, %5474 ], [ %5334, %5363 ]
  %5368 = phi float [ %5478, %5474 ], [ %5335, %5363 ]
  %5369 = phi i32 [ %5377, %5474 ], [ %5361, %5363 ]
  %5370 = phi float [ %5479, %5474 ], [ %5337, %5363 ]
  %5371 = phi float [ %5480, %5474 ], [ %5338, %5363 ]
  %5372 = phi float [ %5481, %5474 ], [ %5339, %5363 ]
  %5373 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5369)  ; FirstbitLo(value)
  %5374 = add i32 %5373, %5346
  %5375 = and i32 %5373, 31
  %5376 = shl i32 1, %5375
  %5377 = xor i32 %5376, %5369
  %5378 = mul i32 %5374, 72
  %5379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5378, i32 undef)  ; BufferLoad(srv,index,wot)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.ResRet.f32 %5379, 2
  %5383 = add i32 %5378, 12
  %5384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5383, i32 undef)  ; BufferLoad(srv,index,wot)
  %5385 = extractvalue %dx.types.ResRet.i32 %5384, 0
  %5386 = add i32 %5378, 16
  %5387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5386, i32 undef)  ; BufferLoad(srv,index,wot)
  %5388 = extractvalue %dx.types.ResRet.f32 %5387, 0
  %5389 = extractvalue %dx.types.ResRet.f32 %5387, 1
  %5390 = extractvalue %dx.types.ResRet.f32 %5387, 2
  %5391 = add i32 %5378, 28
  %5392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5391, i32 undef)  ; BufferLoad(srv,index,wot)
  %5393 = extractvalue %dx.types.ResRet.f32 %5392, 0
  %5394 = add i32 %5378, 32
  %5395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5394, i32 undef)  ; BufferLoad(srv,index,wot)
  %5396 = extractvalue %dx.types.ResRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.ResRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.ResRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.ResRet.f32 %5395, 3
  %5400 = add i32 %5378, 48
  %5401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.ResRet.f32 %5401, 1
  %5404 = add i32 %5378, 56
  %5405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5404, i32 undef)  ; BufferLoad(srv,index,wot)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  %5407 = extractvalue %dx.types.ResRet.f32 %5405, 1
  %5408 = add i32 %5378, 64
  %5409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5408, i32 undef)  ; BufferLoad(srv,index,wot)
  %5410 = extractvalue %dx.types.ResRet.f32 %5409, 0
  %5411 = extractvalue %dx.types.ResRet.f32 %5409, 1
  %5412 = mul i32 %5374, 60
  %5413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 0
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 1
  %5416 = extractvalue %dx.types.ResRet.f32 %5413, 2
  %5417 = add i32 %5412, 12
  %5418 = add i32 %5412, 48
  %5419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.ResRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.ResRet.f32 %5419, 2
  %5423 = and i32 %5385, 32767
  %5424 = bitcast float %5380 to i32
  %5425 = icmp eq i32 %5424, -1
  %5426 = bitcast float %5381 to i32
  %5427 = and i32 %5385, 32768
  %5428 = icmp ne i32 %5427, 0
  %5429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.CBufRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.CBufRet.f32 %5429, 2
  %5433 = fsub fast float %5414, %5430
  %5434 = fsub fast float %5415, %5431
  %5435 = fsub fast float %5416, %5432
  %5436 = fsub fast float %144, %5433
  %5437 = fsub fast float %145, %5434
  %5438 = fsub fast float %146, %5435
  %5439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5417, i32 undef)  ; BufferLoad(srv,index,wot)
  %5440 = extractvalue %dx.types.ResRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.ResRet.f32 %5439, 1
  %5442 = extractvalue %dx.types.ResRet.f32 %5439, 2
  %5443 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5440, float %5441, float %5442)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = add i32 %5412, 24
  %5445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5444, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.ResRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.ResRet.f32 %5445, 2
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5446, float %5447, float %5448)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = add i32 %5412, 36
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5450, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = call float @dx.op.unary.f32(i32 6, float %5443)  ; FAbs(value)
  %5457 = call float @dx.op.unary.f32(i32 6, float %5449)  ; FAbs(value)
  %5458 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5459 = fsub fast float %5420, %5456
  %5460 = fsub fast float %5421, %5457
  %5461 = fsub fast float %5422, %5458
  %5462 = fmul fast float %5459, %5388
  %5463 = fmul fast float %5460, %5389
  %5464 = fmul fast float %5461, %5390
  %5465 = call float @dx.op.binary.f32(i32 36, float %5463, float %5464)  ; FMin(a,b)
  %5466 = call float @dx.op.binary.f32(i32 36, float %5462, float %5465)  ; FMin(a,b)
  %5467 = call float @dx.op.unary.f32(i32 7, float %5466)  ; Saturate(value)
  %5468 = call float @dx.op.binary.f32(i32 36, float %5368, float %5467)  ; FMin(a,b)
  %5469 = uitofp i1 %5428 to float
  %5470 = fadd fast float %4440, 1.000000e+00
  %5471 = fsub fast float %5470, %5469
  %5472 = fmul fast float %5468, %5471
  %5473 = fcmp fast ogt float %5472, 0.000000e+00
  br i1 %5473, label %5483, label %5474

; <label>:5474                                    ; preds = %5625, %5364
  %5475 = phi float [ %5689, %5625 ], [ %5365, %5364 ]
  %5476 = phi float [ %5690, %5625 ], [ %5366, %5364 ]
  %5477 = phi float [ %5691, %5625 ], [ %5367, %5364 ]
  %5478 = phi float [ %5698, %5625 ], [ %5368, %5364 ]
  %5479 = phi float [ %5695, %5625 ], [ %5370, %5364 ]
  %5480 = phi float [ %5696, %5625 ], [ %5371, %5364 ]
  %5481 = phi float [ %5697, %5625 ], [ %5372, %5364 ]
  %5482 = icmp eq i32 %5369, %5376
  br i1 %5482, label %5699, label %5364

; <label>:5483                                    ; preds = %5364
  br i1 %5425, label %5541, label %5484

; <label>:5484                                    ; preds = %5483
  %5485 = fsub fast float -0.000000e+00, %5440
  %5486 = fsub fast float -0.000000e+00, %5441
  %5487 = fsub fast float -0.000000e+00, %5442
  %5488 = call float @dx.op.dot3.f32(i32 55, float %5314, float %5315, float %5316, float %5485, float %5486, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5489 = fsub fast float -0.000000e+00, %5488
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5485, float %5486, float %5487)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fadd fast float %5490, %5403
  %5492 = fadd fast float %5402, %5490
  %5493 = fsub fast float -0.000000e+00, %5492
  %5494 = fcmp ogt float %5488, -0.000000e+00
  %5495 = select i1 %5494, float %5493, float %5491
  %5496 = call float @dx.op.unary.f32(i32 6, float %5489)  ; FAbs(value)
  %5497 = fdiv fast float 1.000000e+00, %5496
  %5498 = fmul fast float %5495, %5497
  %5499 = call float @dx.op.binary.f32(i32 35, float %5498, float 0.000000e+00)  ; FMax(a,b)
  %5500 = fsub fast float -0.000000e+00, %5446
  %5501 = fsub fast float -0.000000e+00, %5447
  %5502 = fsub fast float -0.000000e+00, %5448
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5314, float %5315, float %5316, float %5500, float %5501, float %5502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fsub fast float -0.000000e+00, %5503
  %5505 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5500, float %5501, float %5502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5506 = fadd fast float %5505, %5407
  %5507 = fadd fast float %5406, %5505
  %5508 = fsub fast float -0.000000e+00, %5507
  %5509 = fcmp ogt float %5503, -0.000000e+00
  %5510 = select i1 %5509, float %5508, float %5506
  %5511 = call float @dx.op.unary.f32(i32 6, float %5504)  ; FAbs(value)
  %5512 = fdiv fast float 1.000000e+00, %5511
  %5513 = fmul fast float %5510, %5512
  %5514 = call float @dx.op.binary.f32(i32 35, float %5513, float 0.000000e+00)  ; FMax(a,b)
  %5515 = fsub fast float -0.000000e+00, %5452
  %5516 = fsub fast float -0.000000e+00, %5453
  %5517 = fsub fast float -0.000000e+00, %5454
  %5518 = call float @dx.op.dot3.f32(i32 55, float %5314, float %5315, float %5316, float %5515, float %5516, float %5517)  ; Dot3(ax,ay,az,bx,by,bz)
  %5519 = fsub fast float -0.000000e+00, %5518
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5436, float %5437, float %5438, float %5515, float %5516, float %5517)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = fadd fast float %5520, %5411
  %5522 = fadd fast float %5410, %5520
  %5523 = fsub fast float -0.000000e+00, %5522
  %5524 = fcmp ogt float %5518, -0.000000e+00
  %5525 = select i1 %5524, float %5523, float %5521
  %5526 = call float @dx.op.unary.f32(i32 6, float %5519)  ; FAbs(value)
  %5527 = fdiv fast float 1.000000e+00, %5526
  %5528 = fmul fast float %5525, %5527
  %5529 = call float @dx.op.binary.f32(i32 35, float %5528, float 0.000000e+00)  ; FMax(a,b)
  %5530 = call float @dx.op.binary.f32(i32 36, float %5514, float %5529)  ; FMin(a,b)
  %5531 = call float @dx.op.binary.f32(i32 36, float %5499, float %5530)  ; FMin(a,b)
  %5532 = fmul fast float %5531, %5314
  %5533 = fmul fast float %5531, %5315
  %5534 = fmul fast float %5531, %5316
  %5535 = fadd fast float %5532, %144
  %5536 = fadd fast float %5533, %145
  %5537 = fadd fast float %5534, %146
  %5538 = fsub fast float %5535, %5380
  %5539 = fsub fast float %5536, %5381
  %5540 = fsub fast float %5537, %5382
  br label %5548

; <label>:5541                                    ; preds = %5483
  %5542 = fmul fast float %5314, 8.096000e+03
  %5543 = fmul fast float %5315, 8.096000e+03
  %5544 = fmul fast float %5316, 8.096000e+03
  %5545 = fadd fast float %5542, %144
  %5546 = fadd fast float %5543, %145
  %5547 = fadd fast float %5544, %146
  br label %5548

; <label>:5548                                    ; preds = %5541, %5484
  %5549 = phi float [ %5314, %5541 ], [ %5538, %5484 ]
  %5550 = phi float [ %5315, %5541 ], [ %5539, %5484 ]
  %5551 = phi float [ %5316, %5541 ], [ %5540, %5484 ]
  %5552 = phi float [ %5545, %5541 ], [ %5535, %5484 ]
  %5553 = phi float [ %5546, %5541 ], [ %5536, %5484 ]
  %5554 = phi float [ %5547, %5541 ], [ %5537, %5484 ]
  %5555 = fcmp fast olt float %5399, 1.000000e+00
  br i1 %5555, label %5556, label %5587, !dx.controlflow.hints !87

; <label>:5556                                    ; preds = %5548
  %5557 = fmul fast float %5551, %5397
  %5558 = fmul fast float %5550, %5398
  %5559 = fsub fast float %5557, %5558
  %5560 = fmul fast float %5549, %5398
  %5561 = fmul fast float %5551, %5396
  %5562 = fsub fast float %5560, %5561
  %5563 = fmul fast float %5550, %5396
  %5564 = fmul fast float %5549, %5397
  %5565 = fsub fast float %5563, %5564
  %5566 = fmul fast float %5559, 2.000000e+00
  %5567 = fmul fast float %5562, 2.000000e+00
  %5568 = fmul fast float %5565, 2.000000e+00
  %5569 = fmul fast float %5566, %5399
  %5570 = fmul fast float %5567, %5399
  %5571 = fmul fast float %5568, %5399
  %5572 = fmul fast float %5568, %5397
  %5573 = fmul fast float %5567, %5398
  %5574 = fmul fast float %5566, %5398
  %5575 = fmul fast float %5568, %5396
  %5576 = fmul fast float %5567, %5396
  %5577 = fmul fast float %5566, %5397
  %5578 = fadd fast float %5572, %5549
  %5579 = fadd fast float %5578, %5569
  %5580 = fsub fast float %5579, %5573
  %5581 = fsub fast float %5550, %5575
  %5582 = fadd fast float %5581, %5570
  %5583 = fadd fast float %5582, %5574
  %5584 = fadd fast float %5571, %5551
  %5585 = fsub fast float %5584, %5577
  %5586 = fadd fast float %5585, %5576
  br label %5587

; <label>:5587                                    ; preds = %5556, %5548
  %5588 = phi float [ %5580, %5556 ], [ %5549, %5548 ]
  %5589 = phi float [ %5583, %5556 ], [ %5550, %5548 ]
  %5590 = phi float [ %5586, %5556 ], [ %5551, %5548 ]
  br i1 %5425, label %5622, label %5591

; <label>:5591                                    ; preds = %5587
  %5592 = fmul fast float %4641, 0x400187C840000000
  %5593 = fadd fast float %5592, 0xC00EFC2120000000
  %5594 = fmul fast float %5593, %4641
  %5595 = fadd fast float %5594, 0x3FE5D16340000000
  %5596 = fmul fast float %5595, %4641
  %5597 = fadd fast float %5596, 1.000000e+00
  %5598 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5599 = fsub fast float %5552, %144
  %5600 = fsub fast float %5553, %145
  %5601 = fsub fast float %5554, %146
  %5602 = fsub fast float %5552, %5380
  %5603 = fsub fast float %5553, %5381
  %5604 = fsub fast float %5554, %5382
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5599, float %5600, float %5601, float %5599, float %5600, float %5601)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5602, float %5603, float %5604, float %5602, float %5603, float %5604)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = fadd fast float %5606, 0x3EE4F8B580000000
  %5608 = fdiv fast float %5605, %5607
  %5609 = bitcast float %5608 to i32
  %5610 = ashr i32 %5609, 1
  %5611 = add nsw i32 %5610, 532487669
  %5612 = bitcast i32 %5611 to float
  %5613 = fmul fast float %5612, %5598
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = fmul fast float %5614, 0x4009981AE0000000
  %5616 = fsub fast float 0x40111BBD80000000, %5615
  %5617 = fmul fast float %5616, %5614
  %5618 = fadd fast float %5617, 0xC0009F6020000000
  %5619 = fmul fast float %5618, %5614
  %5620 = fadd fast float %5619, 1.000000e+00
  %5621 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  br label %5625

; <label>:5622                                    ; preds = %5587
  %5623 = icmp ne i32 %5426, -1
  %5624 = zext i1 %5623 to i32
  br label %5625

; <label>:5625                                    ; preds = %5622, %5591
  %5626 = phi float [ %4641, %5622 ], [ %5621, %5591 ]
  %5627 = phi i32 [ %5624, %5622 ], [ 0, %5591 ]
  %5628 = fmul float %5626, 5.000000e+00
  %5629 = fsub float 5.000000e+00, %5628
  %5630 = icmp ne i32 %5627, 0
  %5631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5632 = extractvalue %dx.types.CBufRet.f32 %5631, 3
  %5633 = fadd fast float %5632, %5629
  %5634 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5633)  ; FMax(a,b)
  %5635 = call float @dx.op.unary.f32(i32 6, float %5588)  ; FAbs(value)
  %5636 = call float @dx.op.unary.f32(i32 6, float %5589)  ; FAbs(value)
  %5637 = fadd fast float %5636, %5635
  %5638 = call float @dx.op.unary.f32(i32 6, float %5590)  ; FAbs(value)
  %5639 = fadd fast float %5637, %5638
  %5640 = fcmp fast oeq float %5639, 0.000000e+00
  %5641 = fdiv fast float 1.000000e+00, %5639
  %5642 = select i1 %5640, float 1.000000e+00, float %5641
  %5643 = fmul fast float %5642, %5588
  %5644 = fmul fast float %5642, %5589
  %5645 = call float @dx.op.unary.f32(i32 6, float %5644)  ; FAbs(value)
  %5646 = call float @dx.op.unary.f32(i32 6, float %5643)  ; FAbs(value)
  %5647 = fsub fast float 1.000000e+00, %5645
  %5648 = fsub fast float 1.000000e+00, %5646
  %5649 = fcmp fast oge float %5643, 0.000000e+00
  %5650 = fcmp fast oge float %5644, 0.000000e+00
  %5651 = select i1 %5649, float 1.000000e+00, float -1.000000e+00
  %5652 = select i1 %5650, float 1.000000e+00, float -1.000000e+00
  %5653 = fcmp fast ole float %5590, 0.000000e+00
  %5654 = fmul fast float %5651, %5647
  %5655 = fmul fast float %5652, %5648
  %5656 = select i1 %5653, float %5654, float %5643
  %5657 = select i1 %5653, float %5655, float %5644
  %5658 = fmul fast float %5656, 5.000000e-01
  %5659 = fmul fast float %5657, 5.000000e-01
  %5660 = fadd fast float %5658, 5.000000e-01
  %5661 = fadd fast float %5659, 5.000000e-01
  %5662 = uitofp i32 %5423 to float
  %5663 = call float @dx.op.binary.f32(i32 36, float %5634, float 3.000000e+00)  ; FMin(a,b)
  %5664 = fadd fast float %5663, 2.000000e+00
  %5665 = call float @dx.op.unary.f32(i32 21, float %5664)  ; Exp(value)
  %5666 = extractvalue %dx.types.CBufRet.f32 %5631, 1
  %5667 = fmul fast float %5666, %5665
  %5668 = fmul fast float %5667, 2.000000e+00
  %5669 = fsub fast float 1.000000e+00, %5668
  %5670 = fmul fast float %5660, %5669
  %5671 = fmul fast float %5661, %5669
  %5672 = fadd fast float %5670, %5667
  %5673 = fadd fast float %5671, %5667
  %5674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5672, float %5673, float %5662, float undef, i32 0, i32 0, i32 undef, float %5634)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5675 = extractvalue %dx.types.ResRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.ResRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.ResRet.f32 %5674, 2
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 3
  %5680 = fmul fast float %5679, %5393
  %5681 = call float @dx.op.binary.f32(i32 36, float %4687, float %5680)  ; FMin(a,b)
  %5682 = select i1 %5630, float %5681, float %5680
  %5683 = fmul fast float %5675, %5472
  %5684 = fmul fast float %5683, %5682
  %5685 = fmul fast float %5676, %5472
  %5686 = fmul fast float %5685, %5682
  %5687 = fmul fast float %5677, %5472
  %5688 = fmul fast float %5687, %5682
  %5689 = fadd fast float %5684, %5365
  %5690 = fadd fast float %5686, %5366
  %5691 = fadd fast float %5688, %5367
  %5692 = fmul fast float %5552, %5472
  %5693 = fmul fast float %5553, %5472
  %5694 = fmul fast float %5554, %5472
  %5695 = fadd fast float %5692, %5370
  %5696 = fadd fast float %5693, %5371
  %5697 = fadd fast float %5694, %5372
  %5698 = fsub fast float %5368, %5472
  br label %5474

; <label>:5699                                    ; preds = %5474
  br label %5700

; <label>:5700                                    ; preds = %5699, %5331
  %5701 = phi float [ %5332, %5331 ], [ %5475, %5699 ]
  %5702 = phi float [ %5333, %5331 ], [ %5476, %5699 ]
  %5703 = phi float [ %5334, %5331 ], [ %5477, %5699 ]
  %5704 = phi float [ %5335, %5331 ], [ %5478, %5699 ]
  %5705 = phi float [ %5337, %5331 ], [ %5479, %5699 ]
  %5706 = phi float [ %5338, %5331 ], [ %5480, %5699 ]
  %5707 = phi float [ %5339, %5331 ], [ %5481, %5699 ]
  %5708 = add i32 %5336, 1
  %5709 = icmp ugt i32 %5708, %5328
  br i1 %5709, label %5710, label %5331, !llvm.loop !88

; <label>:5710                                    ; preds = %5700
  br label %5711

; <label>:5711                                    ; preds = %5710, %5313
  %5712 = phi float [ 0.000000e+00, %5313 ], [ %5701, %5710 ]
  %5713 = phi float [ 0.000000e+00, %5313 ], [ %5702, %5710 ]
  %5714 = phi float [ 0.000000e+00, %5313 ], [ %5703, %5710 ]
  %5715 = phi float [ 0.000000e+00, %5313 ], [ %5705, %5710 ]
  %5716 = phi float [ 0.000000e+00, %5313 ], [ %5706, %5710 ]
  %5717 = phi float [ 0.000000e+00, %5313 ], [ %5707, %5710 ]
  %5718 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5713, float %5714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5719 = select i1 %186, float 0.000000e+00, float %5712
  %5720 = select i1 %186, float %5718, float %5713
  %5721 = select i1 %186, float 0.000000e+00, float %5714
  %5722 = fcmp fast olt float %5237, 0.000000e+00
  %5723 = call float @dx.op.unary.f32(i32 6, float %5237)  ; FAbs(value)
  %5724 = fmul fast float %5723, %5238
  %5725 = fmul fast float %5723, %5239
  %5726 = fmul fast float %5723, %5240
  %5727 = select i1 %5722, float %5238, float %5724
  %5728 = select i1 %5722, float %5239, float %5725
  %5729 = select i1 %5722, float %5240, float %5726
  %5730 = fsub fast float 1.000000e+00, %5723
  %5731 = call float @dx.op.unary.f32(i32 7, float %5730)  ; Saturate(value)
  %5732 = fmul fast float %5731, %5719
  %5733 = fmul fast float %5731, %5720
  %5734 = fmul fast float %5731, %5721
  %5735 = fadd fast float %5727, %5732
  %5736 = fadd fast float %5728, %5733
  %5737 = fadd fast float %5729, %5734
  %5738 = fcmp fast une float %4987, 0.000000e+00
  br i1 %5738, label %5839, label %5739

; <label>:5739                                    ; preds = %5711
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5744 = extractvalue %dx.types.CBufRet.f32 %5740, 3
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5749 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5754 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5755 = call float @dx.op.dot3.f32(i32 55, float %5751, float %5752, float %5753, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5715, float %5716, float %5717, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %5751, float %5752, float %5753)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = fadd fast float %4641, -1.000000e+00
  %5759 = fsub fast float %5756, %5757
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5762 = fmul fast float %5761, %5756
  %5763 = fdiv fast float 1.600000e+02, %5762
  %5764 = fmul fast float %5758, %5758
  %5765 = fmul fast float %5764, 0xBFB5B17960000000
  %5766 = fmul fast float %5765, %5759
  %5767 = fmul fast float %5766, %5763
  %5768 = call float @dx.op.unary.f32(i32 21, float %5767)  ; Exp(value)
  %5769 = fmul fast float %5768, 0x3FF04B2960000000
  %5770 = fsub fast float 0x3FF04B2960000000, %5769
  %5771 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5772 = fmul fast float %5771, 4.000000e+00
  %5773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5774 = extractvalue %dx.types.CBufRet.f32 %5773, 0
  %5775 = extractvalue %dx.types.CBufRet.f32 %5773, 1
  %5776 = extractvalue %dx.types.CBufRet.f32 %5773, 2
  %5777 = fadd fast float %5774, %5715
  %5778 = fadd fast float %5775, %5716
  %5779 = fadd fast float %5776, %5717
  %5780 = fmul fast float %5777, %5741
  %5781 = call float @dx.op.tertiary.f32(i32 46, float %5778, float %5742, float %5780)  ; FMad(a,b,c)
  %5782 = call float @dx.op.tertiary.f32(i32 46, float %5779, float %5743, float %5781)  ; FMad(a,b,c)
  %5783 = fadd fast float %5782, %5744
  %5784 = fmul fast float %5777, %5746
  %5785 = call float @dx.op.tertiary.f32(i32 46, float %5778, float %5747, float %5784)  ; FMad(a,b,c)
  %5786 = call float @dx.op.tertiary.f32(i32 46, float %5779, float %5748, float %5785)  ; FMad(a,b,c)
  %5787 = fadd fast float %5786, %5749
  %5788 = fmul fast float %5777, %5751
  %5789 = call float @dx.op.tertiary.f32(i32 46, float %5778, float %5752, float %5788)  ; FMad(a,b,c)
  %5790 = call float @dx.op.tertiary.f32(i32 46, float %5779, float %5753, float %5789)  ; FMad(a,b,c)
  %5791 = fadd fast float %5790, %5754
  %5792 = fdiv fast float %5783, %5791
  %5793 = fdiv fast float %5787, %5791
  %5794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5795 = extractvalue %dx.types.CBufRet.f32 %5794, 0
  %5796 = extractvalue %dx.types.CBufRet.f32 %5794, 1
  %5797 = fmul fast float %5795, %5792
  %5798 = fmul fast float %5796, %5793
  %5799 = extractvalue %dx.types.CBufRet.f32 %5794, 2
  %5800 = extractvalue %dx.types.CBufRet.f32 %5794, 3
  %5801 = fadd fast float %5797, %5799
  %5802 = fadd fast float %5798, %5800
  %5803 = fmul fast float %5755, 8.000000e+00
  %5804 = call float @dx.op.unary.f32(i32 7, float %5803)  ; Saturate(value)
  %5805 = fmul fast float %5801, 2.000000e+00
  %5806 = fmul fast float %5802, 2.000000e+00
  %5807 = fadd fast float %5805, -1.000000e+00
  %5808 = fadd fast float %5806, -1.000000e+00
  %5809 = fmul fast float %5807, %5807
  %5810 = fsub fast float 1.000000e+00, %5809
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = fmul fast float %5808, %5808
  %5813 = fsub fast float 1.000000e+00, %5812
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = fmul fast float %4987, %5811
  %5816 = fmul fast float %5815, %5814
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = fmul fast float %5817, %5804
  %5819 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5801, float %5802, float undef, float undef, i32 0, i32 0, i32 undef, float %5772)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5820 = extractvalue %dx.types.ResRet.f32 %5819, 0
  %5821 = extractvalue %dx.types.ResRet.f32 %5819, 1
  %5822 = extractvalue %dx.types.ResRet.f32 %5819, 2
  %5823 = select i1 %186, float 0.000000e+00, float %5821
  %5824 = select i1 %186, float 0.000000e+00, float %5822
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5827 = fmul fast float %5826, %5820
  %5828 = fmul fast float %5823, %5826
  %5829 = fmul fast float %5824, %5826
  %5830 = fsub fast float %5827, %5719
  %5831 = fsub fast float %5828, %5720
  %5832 = fsub fast float %5829, %5721
  %5833 = fmul fast float %5830, %5818
  %5834 = fmul fast float %5831, %5818
  %5835 = fmul fast float %5832, %5818
  %5836 = fadd fast float %5833, %5719
  %5837 = fadd fast float %5834, %5720
  %5838 = fadd fast float %5835, %5721
  br label %5839

; <label>:5839                                    ; preds = %5739, %5711, %5236, %4960
  %5840 = phi float [ %5238, %5236 ], [ %5735, %5711 ], [ %4917, %4960 ], [ %5836, %5739 ]
  %5841 = phi float [ %5239, %5236 ], [ %5736, %5711 ], [ %4918, %4960 ], [ %5837, %5739 ]
  %5842 = phi float [ %5240, %5236 ], [ %5737, %5711 ], [ %4919, %4960 ], [ %5838, %5739 ]
  %5843 = fmul fast float %4966, %4913
  %5844 = fmul fast float %4966, %4914
  %5845 = fmul fast float %4966, %4915
  %5846 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = fcmp fast ogt float %5846, 0x3E7FF19E20000000
  %5848 = fdiv fast float 1.000000e+00, %5846
  %5849 = select i1 %5847, float %5848, float 0.000000e+00
  %5850 = fmul fast float %5849, %4632
  %5851 = fmul fast float %5849, %4633
  %5852 = fmul fast float %5849, %4634
  %5853 = fadd fast float %5850, -1.000000e+00
  %5854 = fadd fast float %5851, -1.000000e+00
  %5855 = fadd fast float %5852, -1.000000e+00
  %5856 = fmul fast float %5853, 5.000000e-01
  %5857 = fmul fast float %5854, 5.000000e-01
  %5858 = fmul fast float %5855, 5.000000e-01
  %5859 = fadd fast float %5856, 1.000000e+00
  %5860 = fadd fast float %5857, 1.000000e+00
  %5861 = fadd fast float %5858, 1.000000e+00
  %5862 = fmul fast float %5840, %4961
  %5863 = fmul fast float %5841, %4962
  %5864 = fmul fast float %5842, %4963
  %5865 = fsub fast float 1.000000e+00, %4660
  %5866 = bitcast float %5865 to i32
  %5867 = sitofp i32 %5866 to float
  %5868 = fmul fast float %5867, 5.000000e+00
  %5869 = fadd fast float %5868, 0xC1EFBF8940000000
  %5870 = fptosi float %5869 to i32
  %5871 = bitcast i32 %5870 to float
  %5872 = fmul fast float %5871, %4030
  %5873 = fmul fast float %4913, %5872
  %5874 = fmul fast float %5873, %4966
  %5875 = fmul fast float %5874, %5859
  %5876 = fmul fast float %4914, %5872
  %5877 = fmul fast float %5876, %4966
  %5878 = fmul fast float %5877, %5860
  %5879 = fmul fast float %4915, %5872
  %5880 = fmul fast float %5879, %4966
  %5881 = fmul fast float %5880, %5861
  %5882 = fmul fast float %5843, %4026
  %5883 = fmul fast float %5844, %4026
  %5884 = fmul fast float %5845, %4026
  %5885 = fadd fast float %5862, %4022
  %5886 = fadd fast float %5885, %5875
  %5887 = fmul fast float %5886, %4026
  %5888 = fadd fast float %5863, %4023
  %5889 = fadd fast float %5888, %5878
  %5890 = fmul fast float %5889, %4026
  %5891 = fadd fast float %5864, %4024
  %5892 = fadd fast float %5891, %5881
  %5893 = fmul fast float %5892, %4026
  %5894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.f32 %5894, 3
  %5896 = fcmp fast oeq float %5895, 0.000000e+00
  br i1 %5896, label %6115, label %5897

; <label>:5897                                    ; preds = %5839
  %5898 = extractvalue %dx.types.CBufRet.f32 %5894, 0
  %5899 = extractvalue %dx.types.CBufRet.f32 %5894, 1
  %5900 = extractvalue %dx.types.CBufRet.f32 %5894, 2
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 0
  %5903 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5904 = extractvalue %dx.types.CBufRet.f32 %5901, 2
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5908 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5903, float %5904, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5909 = select i1 %186, float %5906, float %5902
  %5910 = select i1 %186, float %5908, float %5903
  %5911 = select i1 %186, float %5907, float %5904
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5914 = fcmp fast une float %5913, 0.000000e+00
  br i1 %5914, label %5915, label %5932

; <label>:5915                                    ; preds = %5897
  %5916 = fptoui float %85 to i32
  %5917 = fptoui float %86 to i32
  %5918 = lshr i32 %5916, 4
  %5919 = lshr i32 %5917, 4
  %5920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5921 = extractvalue %dx.types.CBufRet.f32 %5920, 0
  %5922 = fptoui float %5921 to i32
  %5923 = add i32 %5922, 15
  %5924 = lshr i32 %5923, 4
  %5925 = mul i32 %5924, %5919
  %5926 = add i32 %5925, %5918
  %5927 = shl i32 %5926, 3
  %5928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5927, i32 undef)  ; BufferLoad(srv,index,wot)
  %5929 = extractvalue %dx.types.ResRet.i32 %5928, 0
  %5930 = and i32 %5929, -268435456
  %5931 = icmp eq i32 %5930, -1342177280
  br i1 %5931, label %5937, label %5932

; <label>:5932                                    ; preds = %5915, %5897
  %5933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4646, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.ResRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.ResRet.f32 %5933, 2
  br label %5937

; <label>:5937                                    ; preds = %5932, %5915
  %5938 = phi float [ %5934, %5932 ], [ 0.000000e+00, %5915 ]
  %5939 = phi float [ %5935, %5932 ], [ 0.000000e+00, %5915 ]
  %5940 = phi float [ %5936, %5932 ], [ 0.000000e+00, %5915 ]
  %5941 = call float @dx.op.binary.f32(i32 36, float %5939, float %5940)  ; FMin(a,b)
  %5942 = call float @dx.op.binary.f32(i32 36, float %5938, float %5941)  ; FMin(a,b)
  %5943 = fcmp fast ogt float %5942, 0.000000e+00
  br i1 %5943, label %5944, label %6115, !dx.controlflow.hints !90

; <label>:5944                                    ; preds = %5937
  %5945 = fmul fast float %5938, %5909
  %5946 = fmul fast float %5939, %5910
  %5947 = fmul fast float %5940, %5911
  %5948 = fsub fast float %5898, %4631
  %5949 = fsub fast float %5899, %4630
  %5950 = fsub fast float %5900, %4629
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5948, float %5949, float %5950, float %5948, float %5949, float %5950)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = call float @dx.op.unary.f32(i32 25, float %5951)  ; Rsqrt(value)
  %5953 = fmul fast float %5952, %5948
  %5954 = fmul fast float %5952, %5949
  %5955 = fmul fast float %5952, %5950
  %5956 = call float @dx.op.dot3.f32(i32 55, float %5898, float %5899, float %5900, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5957 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4627, float %4626, float %5953, float %5954, float %5955)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  %5959 = fmul fast float %5958, %5958
  %5960 = fmul fast float %5959, %4685
  %5961 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5962 = fmul fast float %5961, %5958
  %5963 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %5953, float %5954, float %5955)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = fmul fast float %5963, %5963
  %5965 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %5966 = fsub fast float 1.000000e+00, %4678
  %5967 = fmul fast float %4660, %4660
  %5968 = fmul fast float %5967, %5966
  %5969 = fadd fast float %5968, %4678
  %5970 = bitcast float %5969 to i32
  %5971 = ashr i32 %5970, 1
  %5972 = add nsw i32 %5971, 532487669
  %5973 = bitcast i32 %5972 to float
  %5974 = fadd fast float %5973, %4660
  %5975 = fmul fast float %4678, %5964
  %5976 = fsub fast float 1.000000e+00, %5964
  %5977 = fadd fast float %5976, %5975
  %5978 = fmul fast float %5965, %5965
  %5979 = fmul fast float %5978, %5966
  %5980 = fadd fast float %5979, %4678
  %5981 = bitcast float %5980 to i32
  %5982 = ashr i32 %5981, 1
  %5983 = add nsw i32 %5982, 532487669
  %5984 = bitcast i32 %5983 to float
  %5985 = fadd fast float %5984, %5965
  %5986 = fmul fast float %5977, %5977
  %5987 = fmul fast float %5986, %5974
  %5988 = fmul fast float %5987, %5985
  %5989 = fdiv fast float 0x3FF0A00000000000, %5988
  %5990 = fmul fast float %5989, %4678
  %5991 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5992 = fsub fast float 1.000000e+00, %5991
  %5993 = bitcast float %5992 to i32
  %5994 = sitofp i32 %5993 to float
  %5995 = fmul fast float %5994, 5.000000e+00
  %5996 = fadd fast float %5995, 0xC1EFBF8940000000
  %5997 = fptosi float %5996 to i32
  %5998 = bitcast i32 %5997 to float
  %5999 = fsub fast float 1.000000e+00, %4635
  %6000 = fsub fast float 1.000000e+00, %4636
  %6001 = fsub fast float 1.000000e+00, %4658
  %6002 = fmul fast float %5998, %5999
  %6003 = fmul fast float %5998, %6000
  %6004 = fmul fast float %5998, %6001
  %6005 = fadd fast float %6002, %4635
  %6006 = fadd fast float %6003, %4636
  %6007 = fadd fast float %6004, %4658
  br i1 %4933, label %6008, label %6031

; <label>:6008                                    ; preds = %5944
  %6009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4029, float %5991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 0
  %6011 = extractvalue %dx.types.ResRet.f32 %6009, 1
  %6012 = extractvalue %dx.types.ResRet.f32 %6009, 2
  %6013 = fadd fast float %6010, -5.000000e-01
  %6014 = fadd fast float %6011, -5.000000e-01
  %6015 = fadd fast float %6012, -5.000000e-01
  %6016 = fmul fast float %4635, 4.000000e+00
  %6017 = fmul fast float %6016, %5999
  %6018 = fmul fast float %6017, %6013
  %6019 = fmul fast float %4636, 4.000000e+00
  %6020 = fmul fast float %6019, %6000
  %6021 = fmul fast float %6020, %6014
  %6022 = fmul fast float %4658, 4.000000e+00
  %6023 = fmul fast float %6022, %6001
  %6024 = fmul fast float %6023, %6015
  %6025 = fadd fast float %6018, %6005
  %6026 = fadd fast float %6021, %6006
  %6027 = fadd fast float %6024, %6007
  %6028 = call float @dx.op.unary.f32(i32 7, float %6025)  ; Saturate(value)
  %6029 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6030 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  br label %6031

; <label>:6031                                    ; preds = %6008, %5944
  %6032 = phi float [ %6028, %6008 ], [ %6005, %5944 ]
  %6033 = phi float [ %6029, %6008 ], [ %6006, %5944 ]
  %6034 = phi float [ %6030, %6008 ], [ %6007, %5944 ]
  %6035 = fmul fast float %5956, 9.843750e-01
  %6036 = fadd fast float %6035, 7.812500e-03
  %6037 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6036, float %4923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6038 = extractvalue %dx.types.ResRet.f32 %6037, 2
  %6039 = extractvalue %dx.types.ResRet.f32 %6037, 3
  %6040 = fmul fast float %6038, %4635
  %6041 = fmul fast float %6038, %4636
  %6042 = fmul fast float %6038, %4658
  %6043 = fadd fast float %6040, %6039
  %6044 = fadd fast float %6041, %6039
  %6045 = fadd fast float %6042, %6039
  br i1 %4933, label %6046, label %6069

; <label>:6046                                    ; preds = %6031
  %6047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4029, float %5956, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6048 = extractvalue %dx.types.ResRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.ResRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.ResRet.f32 %6047, 2
  %6051 = fadd fast float %6048, -5.000000e-01
  %6052 = fadd fast float %6049, -5.000000e-01
  %6053 = fadd fast float %6050, -5.000000e-01
  %6054 = fmul fast float %4635, 4.000000e+00
  %6055 = fmul fast float %6054, %5999
  %6056 = fmul fast float %6055, %6051
  %6057 = fmul fast float %4636, 4.000000e+00
  %6058 = fmul fast float %6057, %6000
  %6059 = fmul fast float %6058, %6052
  %6060 = fmul fast float %4658, 4.000000e+00
  %6061 = fmul fast float %6060, %6001
  %6062 = fmul fast float %6061, %6053
  %6063 = fadd fast float %6056, %6043
  %6064 = fadd fast float %6059, %6044
  %6065 = fadd fast float %6062, %6045
  %6066 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6068 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  br label %6069

; <label>:6069                                    ; preds = %6046, %6031
  %6070 = phi float [ %6066, %6046 ], [ %6043, %6031 ]
  %6071 = phi float [ %6067, %6046 ], [ %6044, %6031 ]
  %6072 = phi float [ %6068, %6046 ], [ %6045, %6031 ]
  %6073 = call float @dx.op.binary.f32(i32 35, float %6071, float %6072)  ; FMax(a,b)
  %6074 = call float @dx.op.binary.f32(i32 35, float %6070, float %6073)  ; FMax(a,b)
  %6075 = fsub fast float 1.000000e+00, %6074
  %6076 = fmul fast float %6032, %5990
  %6077 = fmul fast float %6033, %5990
  %6078 = fmul fast float %6034, %5990
  %6079 = fsub fast float 1.000000e+00, %5957
  %6080 = bitcast float %6079 to i32
  %6081 = sitofp i32 %6080 to float
  %6082 = fmul fast float %6081, 5.000000e+00
  %6083 = fadd fast float %6082, 0xC1EFBF8940000000
  %6084 = fptosi float %6083 to i32
  %6085 = bitcast i32 %6084 to float
  %6086 = fmul fast float %6085, %4030
  %6087 = fmul fast float %6075, %6086
  %6088 = fmul fast float %6087, %5859
  %6089 = fmul fast float %6087, %5860
  %6090 = fmul fast float %6087, %5861
  %6091 = fadd fast float %6088, %6076
  %6092 = fadd fast float %6089, %6077
  %6093 = fadd fast float %6090, %6078
  %6094 = fmul fast float %5962, %5945
  %6095 = fmul fast float %6094, %6075
  %6096 = fmul fast float %5962, %5946
  %6097 = fmul fast float %6096, %6075
  %6098 = fmul fast float %5962, %5947
  %6099 = fmul fast float %6098, %6075
  %6100 = fmul fast float %6094, %6091
  %6101 = fmul fast float %6096, %6092
  %6102 = fmul fast float %6098, %6093
  %6103 = fadd fast float %6095, %5843
  %6104 = fmul fast float %6103, %4026
  %6105 = fadd fast float %6097, %5844
  %6106 = fmul fast float %6105, %4026
  %6107 = fadd fast float %6099, %5845
  %6108 = fmul fast float %6107, %4026
  %6109 = fadd fast float %6100, %5886
  %6110 = fmul fast float %6109, %4026
  %6111 = fadd fast float %6101, %5889
  %6112 = fmul fast float %6111, %4026
  %6113 = fadd fast float %6102, %5892
  %6114 = fmul fast float %6113, %4026
  br label %6115

; <label>:6115                                    ; preds = %6069, %5937, %5839
  %6116 = phi float [ %5887, %5839 ], [ %5887, %5937 ], [ %6110, %6069 ]
  %6117 = phi float [ %5890, %5839 ], [ %5890, %5937 ], [ %6112, %6069 ]
  %6118 = phi float [ %5893, %5839 ], [ %5893, %5937 ], [ %6114, %6069 ]
  %6119 = phi float [ %5882, %5839 ], [ %5882, %5937 ], [ %6104, %6069 ]
  %6120 = phi float [ %5883, %5839 ], [ %5883, %5937 ], [ %6106, %6069 ]
  %6121 = phi float [ %5884, %5839 ], [ %5884, %5937 ], [ %6108, %6069 ]
  %6122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6123 = extractvalue %dx.types.CBufRet.i32 %6122, 0
  %6124 = icmp eq i32 %6123, 0
  br i1 %6124, label %6555, label %6125

; <label>:6125                                    ; preds = %6115
  %6126 = fptoui float %85 to i32
  %6127 = fptoui float %86 to i32
  %6128 = lshr i32 %6126, 4
  %6129 = lshr i32 %6127, 4
  %6130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.i32 %6130, 0
  %6132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6129, i32 %6131, i32 %6128)  ; UMad(a,b,c)
  %6133 = add nsw i32 %6123, -1
  %6134 = call i32 @dx.op.binary.i32(i32 37, i32 %6133, i32 0)  ; IMax(a,b)
  %6135 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6136 = fptoui float %6135 to i32
  %6137 = lshr i32 %6136, 5
  %6138 = call i32 @dx.op.binary.i32(i32 40, i32 %6137, i32 8191)  ; UMin(a,b)
  %6139 = shl i32 %6138, 2
  %6140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6139, i32 undef)  ; BufferLoad(srv,index,wot)
  %6141 = extractvalue %dx.types.ResRet.i32 %6140, 0
  %6142 = lshr i32 %6141, 16
  %6143 = and i32 %6141, 65535
  %6144 = lshr i32 %6141, 21
  %6145 = lshr i32 %6143, 5
  %6146 = call i32 @dx.op.binary.i32(i32 40, i32 %6145, i32 %6134)  ; UMin(a,b)
  %6147 = icmp ugt i32 %6144, %6146
  br i1 %6147, label %6555, label %6148

; <label>:6148                                    ; preds = %6125
  br label %6149

; <label>:6149                                    ; preds = %6545, %6148
  %6150 = phi i32 [ %6552, %6545 ], [ %6144, %6148 ]
  %6151 = phi float [ %6546, %6545 ], [ %6116, %6148 ]
  %6152 = phi float [ %6547, %6545 ], [ %6117, %6148 ]
  %6153 = phi float [ %6548, %6545 ], [ %6118, %6148 ]
  %6154 = phi float [ %6549, %6545 ], [ %6119, %6148 ]
  %6155 = phi float [ %6550, %6545 ], [ %6120, %6148 ]
  %6156 = phi float [ %6551, %6545 ], [ %6121, %6148 ]
  %6157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.i32 %6157, 0
  %6159 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6132, i32 %6158, i32 %6150)  ; UMad(a,b,c)
  %6160 = shl i32 %6159, 2
  %6161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6160, i32 undef)  ; BufferLoad(srv,index,wot)
  %6162 = extractvalue %dx.types.ResRet.i32 %6161, 0
  %6163 = shl i32 %6150, 5
  %6164 = sub nsw i32 %6142, %6163
  %6165 = call i32 @dx.op.binary.i32(i32 37, i32 %6164, i32 0)  ; IMax(a,b)
  %6166 = call i32 @dx.op.binary.i32(i32 38, i32 %6165, i32 31)  ; IMin(a,b)
  %6167 = sub nsw i32 1, %6142
  %6168 = add nsw i32 %6167, %6143
  %6169 = call i32 @dx.op.binary.i32(i32 37, i32 %6168, i32 0)  ; IMax(a,b)
  %6170 = call i32 @dx.op.binary.i32(i32 38, i32 %6169, i32 32)  ; IMin(a,b)
  %6171 = and i32 %6170, 31
  %6172 = shl i32 -1, %6171
  %6173 = xor i32 %6172, -1
  %6174 = and i32 %6166, 31
  %6175 = shl i32 %6173, %6174
  %6176 = icmp eq i32 %6170, 32
  %6177 = select i1 %6176, i32 -1, i32 %6175
  %6178 = and i32 %6177, %6162
  %6179 = icmp eq i32 %6178, 0
  br i1 %6179, label %6545, label %6180

; <label>:6180                                    ; preds = %6149
  br label %6181

; <label>:6181                                    ; preds = %6261, %6180
  %6182 = phi i32 [ %6193, %6261 ], [ %6178, %6180 ]
  %6183 = phi float [ %6262, %6261 ], [ %6151, %6180 ]
  %6184 = phi float [ %6263, %6261 ], [ %6152, %6180 ]
  %6185 = phi float [ %6264, %6261 ], [ %6153, %6180 ]
  %6186 = phi float [ %6265, %6261 ], [ %6154, %6180 ]
  %6187 = phi float [ %6266, %6261 ], [ %6155, %6180 ]
  %6188 = phi float [ %6267, %6261 ], [ %6156, %6180 ]
  %6189 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6182)  ; FirstbitLo(value)
  %6190 = add i32 %6189, %6163
  %6191 = and i32 %6189, 31
  %6192 = shl i32 1, %6191
  %6193 = xor i32 %6192, %6182
  %6194 = mul i32 %6190, 112
  %6195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6194, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.ResRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.ResRet.f32 %6195, 2
  %6199 = or i32 %6194, 12
  %6200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6199, i32 undef)  ; BufferLoad(srv,index,wot)
  %6201 = extractvalue %dx.types.ResRet.f32 %6200, 0
  %6202 = add i32 %6194, 44
  %6203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6202, i32 undef)  ; BufferLoad(srv,index,wot)
  %6204 = extractvalue %dx.types.ResRet.f32 %6203, 0
  %6205 = add i32 %6194, 48
  %6206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.ResRet.f32 %6206, 2
  %6210 = add i32 %6194, 80
  %6211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6210, i32 undef)  ; BufferLoad(srv,index,wot)
  %6212 = extractvalue %dx.types.ResRet.f32 %6211, 1
  %6213 = extractvalue %dx.types.ResRet.f32 %6211, 2
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6196, float %6197, float %6198, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = select i1 %186, float %6212, float %6196
  %6216 = select i1 %186, float %6214, float %6197
  %6217 = select i1 %186, float %6213, float %6198
  %6218 = fsub fast float %6207, %144
  %6219 = fsub fast float %6208, %145
  %6220 = fsub fast float %6209, %146
  %6221 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6220, float %6218, float %6219, float %6220)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = call float @dx.op.unary.f32(i32 24, float %6221)  ; Sqrt(value)
  %6223 = fdiv fast float 1.000000e+00, %6222
  %6224 = fmul fast float %6223, %6218
  %6225 = fmul fast float %6223, %6219
  %6226 = fmul fast float %6223, %6220
  %6227 = fadd fast float %6222, %6201
  %6228 = fdiv fast float 1.000000e+00, %6227
  %6229 = fmul float %6204, %6228
  %6230 = fmul float %6229, %6229
  %6231 = call float @dx.op.unary.f32(i32 7, float %6230)  ; Saturate(value)
  %6232 = and i32 %6192, %6178
  %6233 = icmp eq i32 %6232, 0
  br i1 %6233, label %6256, label %6234, !dx.controlflow.hints !91

; <label>:6234                                    ; preds = %6181
  %6235 = lshr i32 %6126, 5
  %6236 = lshr i32 %6127, 5
  %6237 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6235, i32 %6236, i32 %6190, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6238 = extractvalue %dx.types.ResRet.i32 %6237, 0
  %6239 = and i32 %6238, 3
  %6240 = icmp eq i32 %6239, 0
  %6241 = select i1 %6240, float 1.000000e+00, float 0.000000e+00
  %6242 = icmp eq i32 %6239, 3
  br i1 %6242, label %6243, label %6256

; <label>:6243                                    ; preds = %6234
  %6244 = lshr i32 %6238, 10
  %6245 = and i32 %6244, 8160
  %6246 = and i32 %6127, 31
  %6247 = or i32 %6245, %6246
  %6248 = lshr i32 %6238, 1
  %6249 = and i32 %6248, 16352
  %6250 = and i32 %6126, 31
  %6251 = or i32 %6249, %6250
  %6252 = lshr i32 %6238, 23
  %6253 = and i32 %6252, 255
  %6254 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6251, i32 %6247, i32 %6253, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  br label %6256

; <label>:6256                                    ; preds = %6243, %6234, %6181
  %6257 = phi float [ %6255, %6243 ], [ %6241, %6234 ], [ 0.000000e+00, %6181 ]
  %6258 = call float @dx.op.binary.f32(i32 36, float %6257, float %6257)  ; FMin(a,b)
  %6259 = call float @dx.op.binary.f32(i32 36, float %6257, float %6258)  ; FMin(a,b)
  %6260 = fcmp fast ogt float %6259, 0.000000e+00
  br i1 %6260, label %6269, label %6261, !dx.controlflow.hints !92

; <label>:6261                                    ; preds = %6501, %6256
  %6262 = phi float [ %6183, %6256 ], [ %6541, %6501 ]
  %6263 = phi float [ %6184, %6256 ], [ %6542, %6501 ]
  %6264 = phi float [ %6185, %6256 ], [ %6543, %6501 ]
  %6265 = phi float [ %6186, %6256 ], [ %6535, %6501 ]
  %6266 = phi float [ %6187, %6256 ], [ %6536, %6501 ]
  %6267 = phi float [ %6188, %6256 ], [ %6537, %6501 ]
  %6268 = icmp eq i32 %6182, %6192
  br i1 %6268, label %6544, label %6181

; <label>:6269                                    ; preds = %6256
  %6270 = fmul fast float %6257, %6215
  %6271 = fmul fast float %6257, %6216
  %6272 = fmul fast float %6257, %6217
  %6273 = fsub fast float %6209, %4431
  %6274 = fcmp fast ogt float %6273, 0.000000e+00
  %6275 = fsub fast float %146, %4431
  %6276 = fcmp fast ogt float %6275, 0.000000e+00
  %6277 = xor i1 %6276, %6274
  %6278 = fsub fast float %4431, %6209
  %6279 = fmul fast float %6278, 2.000000e+00
  %6280 = fadd fast float %6279, %6209
  %6281 = select i1 %6277, float %6209, float %6280
  %6282 = fsub fast float %6281, %146
  %6283 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6282, float %6218, float %6219, float %6282)  ; Dot3(ax,ay,az,bx,by,bz)
  %6284 = call float @dx.op.unary.f32(i32 25, float %6283)  ; Rsqrt(value)
  %6285 = fmul fast float %6284, %6218
  %6286 = fmul fast float %6284, %6219
  %6287 = fmul fast float %6284, %6282
  %6288 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4439)  ; Dot3(ax,ay,az,bx,by,bz)
  %6289 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6285, float %6286, float %6287)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = fdiv fast float 1.000000e+00, %6289
  %6291 = fmul fast float %6290, %6288
  %6292 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6275, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6293 = fcmp fast ogt float %6292, 0.000000e+00
  %6294 = fcmp fast olt float %6292, 0.000000e+00
  %6295 = zext i1 %6293 to i32
  %6296 = zext i1 %6294 to i32
  %6297 = sub nsw i32 %6295, %6296
  %6298 = sitofp i32 %6297 to float
  %6299 = fsub fast float %6281, %4431
  %6300 = call float @dx.op.dot3.f32(i32 55, float %6218, float %6219, float %6299, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = fcmp fast ogt float %6300, 0.000000e+00
  %6302 = fcmp fast olt float %6300, 0.000000e+00
  %6303 = zext i1 %6301 to i32
  %6304 = zext i1 %6302 to i32
  %6305 = sub nsw i32 %6303, %6304
  %6306 = sitofp i32 %6305 to float
  %6307 = fcmp fast une float %6298, %6306
  br i1 %6307, label %6308, label %6318

; <label>:6308                                    ; preds = %6269
  %6309 = fmul fast float %6291, %6287
  %6310 = fmul fast float %6291, %6286
  %6311 = fmul fast float %6291, %6285
  %6312 = fmul fast float %6311, %6311
  %6313 = fmul fast float %6310, %6310
  %6314 = fadd fast float %6312, %6313
  %6315 = fmul fast float %6309, %6309
  %6316 = fadd fast float %6314, %6315
  %6317 = call float @dx.op.unary.f32(i32 24, float %6316)  ; Sqrt(value)
  br label %6330

; <label>:6318                                    ; preds = %6269
  %6319 = icmp slt i32 %6297, 0
  br i1 %6319, label %6320, label %6330

; <label>:6320                                    ; preds = %6318
  %6321 = fsub fast float %144, %6207
  %6322 = fsub fast float %145, %6208
  %6323 = fsub fast float %146, %6281
  %6324 = fmul fast float %6321, %6321
  %6325 = fmul fast float %6322, %6322
  %6326 = fadd fast float %6324, %6325
  %6327 = fmul fast float %6323, %6323
  %6328 = fadd fast float %6326, %6327
  %6329 = call float @dx.op.unary.f32(i32 24, float %6328)  ; Sqrt(value)
  br label %6330

; <label>:6330                                    ; preds = %6320, %6318, %6308
  %6331 = phi float [ %6317, %6308 ], [ %6329, %6320 ], [ 0.000000e+00, %6318 ]
  %6332 = and i1 %6276, %6274
  %6333 = fsub fast float -0.000000e+00, %6331
  %6334 = select i1 %6332, float -0.000000e+00, float %6333
  %6335 = fmul fast float %4432, 0x3FF7154760000000
  %6336 = fmul fast float %6335, %6334
  %6337 = fmul fast float %4433, 0x3FF7154760000000
  %6338 = fmul fast float %6337, %6334
  %6339 = fmul fast float %4434, 0x3FF7154760000000
  %6340 = fmul fast float %6339, %6334
  %6341 = call float @dx.op.unary.f32(i32 21, float %6336)  ; Exp(value)
  %6342 = call float @dx.op.unary.f32(i32 21, float %6338)  ; Exp(value)
  %6343 = call float @dx.op.unary.f32(i32 21, float %6340)  ; Exp(value)
  %6344 = call float @dx.op.unary.f32(i32 7, float %6341)  ; Saturate(value)
  %6345 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6346 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6347 = fmul fast float %6270, %6344
  %6348 = fmul fast float %6271, %6345
  %6349 = fmul fast float %6272, %6346
  %6350 = fsub fast float %6224, %4631
  %6351 = fsub fast float %6225, %4630
  %6352 = fsub fast float %6226, %4629
  %6353 = call float @dx.op.dot3.f32(i32 55, float %6350, float %6351, float %6352, float %6350, float %6351, float %6352)  ; Dot3(ax,ay,az,bx,by,bz)
  %6354 = call float @dx.op.unary.f32(i32 25, float %6353)  ; Rsqrt(value)
  %6355 = fmul fast float %6354, %6350
  %6356 = fmul fast float %6354, %6351
  %6357 = fmul fast float %6354, %6352
  %6358 = call float @dx.op.dot3.f32(i32 55, float %6224, float %6225, float %6226, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %6359 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4627, float %4626, float %6355, float %6356, float %6357)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6361 = fmul fast float %6360, %6231
  %6362 = fmul fast float %6360, %6360
  %6363 = fmul fast float %6362, %4685
  %6364 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6365 = fmul fast float %6361, %6364
  %6366 = bitcast float %6221 to i32
  %6367 = ashr i32 %6366, 1
  %6368 = sub nsw i32 1597463007, %6367
  %6369 = bitcast i32 %6368 to float
  %6370 = fmul fast float %6369, %6218
  %6371 = fmul fast float %6369, %6219
  %6372 = fmul fast float %6369, %6220
  %6373 = fsub fast float %6370, %4631
  %6374 = fsub fast float %6371, %4630
  %6375 = fsub fast float %6372, %4629
  %6376 = call float @dx.op.dot3.f32(i32 55, float %6373, float %6374, float %6375, float %6373, float %6374, float %6375)  ; Dot3(ax,ay,az,bx,by,bz)
  %6377 = call float @dx.op.unary.f32(i32 25, float %6376)  ; Rsqrt(value)
  %6378 = fmul fast float %6373, %6377
  %6379 = fmul fast float %6374, %6377
  %6380 = fmul fast float %6375, %6377
  %6381 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %6378, float %6379, float %6380)  ; Dot3(ax,ay,az,bx,by,bz)
  %6382 = fmul fast float %6381, %6381
  %6383 = call float @dx.op.unary.f32(i32 6, float %6358)  ; FAbs(value)
  %6384 = fsub fast float 1.000000e+00, %4678
  %6385 = fmul fast float %4660, %4660
  %6386 = fmul fast float %6385, %6384
  %6387 = fadd fast float %6386, %4678
  %6388 = bitcast float %6387 to i32
  %6389 = ashr i32 %6388, 1
  %6390 = add nsw i32 %6389, 532487669
  %6391 = bitcast i32 %6390 to float
  %6392 = fadd fast float %6391, %4660
  %6393 = fmul fast float %4678, %6382
  %6394 = fsub fast float 1.000000e+00, %6382
  %6395 = fadd fast float %6394, %6393
  %6396 = fmul fast float %6383, %6383
  %6397 = fmul fast float %6396, %6384
  %6398 = fadd fast float %6397, %4678
  %6399 = bitcast float %6398 to i32
  %6400 = ashr i32 %6399, 1
  %6401 = add nsw i32 %6400, 532487669
  %6402 = bitcast i32 %6401 to float
  %6403 = fadd fast float %6402, %6383
  %6404 = fmul fast float %6395, %6395
  %6405 = fmul fast float %6404, %6392
  %6406 = fmul fast float %6405, %6403
  %6407 = fdiv fast float 1.000000e+00, %6406
  %6408 = bitcast float %4678 to i32
  %6409 = sitofp i32 %6408 to float
  %6410 = fmul fast float %6409, 0x3FE7F73180000000
  %6411 = fadd fast float %6410, 0x41AFE27C40000000
  %6412 = fptosi float %6411 to i32
  %6413 = bitcast i32 %6412 to float
  %6414 = fmul fast float %6204, 0x3FD80E9D60000000
  %6415 = fmul fast float %6414, %6369
  %6416 = fadd fast float %6413, %6415
  %6417 = bitcast float %6416 to i32
  %6418 = sub nsw i32 2129859010, %6417
  %6419 = bitcast i32 %6418 to float
  %6420 = fmul fast float %4678, %6407
  %6421 = fmul fast float %6420, %6413
  %6422 = fmul fast float %6421, %6419
  %6423 = call float @dx.op.unary.f32(i32 6, float %6359)  ; FAbs(value)
  %6424 = fsub fast float 1.000000e+00, %6423
  %6425 = bitcast float %6424 to i32
  %6426 = sitofp i32 %6425 to float
  %6427 = fmul fast float %6426, 5.000000e+00
  %6428 = fadd fast float %6427, 0xC1EFBF8940000000
  %6429 = fptosi float %6428 to i32
  %6430 = bitcast i32 %6429 to float
  %6431 = fsub fast float 1.000000e+00, %4635
  %6432 = fsub fast float 1.000000e+00, %4636
  %6433 = fsub fast float 1.000000e+00, %4658
  %6434 = fmul fast float %6430, %6431
  %6435 = fmul fast float %6430, %6432
  %6436 = fmul fast float %6430, %6433
  %6437 = fadd fast float %6434, %4635
  %6438 = fadd fast float %6435, %4636
  %6439 = fadd fast float %6436, %4658
  br i1 %4933, label %6440, label %6463

; <label>:6440                                    ; preds = %6330
  %6441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4029, float %6423, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 0
  %6443 = extractvalue %dx.types.ResRet.f32 %6441, 1
  %6444 = extractvalue %dx.types.ResRet.f32 %6441, 2
  %6445 = fadd fast float %6442, -5.000000e-01
  %6446 = fadd fast float %6443, -5.000000e-01
  %6447 = fadd fast float %6444, -5.000000e-01
  %6448 = fmul fast float %4635, 4.000000e+00
  %6449 = fmul fast float %6448, %6431
  %6450 = fmul fast float %6449, %6445
  %6451 = fmul fast float %4636, 4.000000e+00
  %6452 = fmul fast float %6451, %6432
  %6453 = fmul fast float %6452, %6446
  %6454 = fmul fast float %4658, 4.000000e+00
  %6455 = fmul fast float %6454, %6433
  %6456 = fmul fast float %6455, %6447
  %6457 = fadd fast float %6450, %6437
  %6458 = fadd fast float %6453, %6438
  %6459 = fadd fast float %6456, %6439
  %6460 = call float @dx.op.unary.f32(i32 7, float %6457)  ; Saturate(value)
  %6461 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6462 = call float @dx.op.unary.f32(i32 7, float %6459)  ; Saturate(value)
  br label %6463

; <label>:6463                                    ; preds = %6440, %6330
  %6464 = phi float [ %6460, %6440 ], [ %6437, %6330 ]
  %6465 = phi float [ %6461, %6440 ], [ %6438, %6330 ]
  %6466 = phi float [ %6462, %6440 ], [ %6439, %6330 ]
  %6467 = fmul fast float %6358, 9.843750e-01
  %6468 = fadd fast float %6467, 7.812500e-03
  %6469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6468, float %4923, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6470 = extractvalue %dx.types.ResRet.f32 %6469, 2
  %6471 = extractvalue %dx.types.ResRet.f32 %6469, 3
  %6472 = fmul fast float %6470, %4635
  %6473 = fmul fast float %6470, %4636
  %6474 = fmul fast float %6470, %4658
  %6475 = fadd fast float %6472, %6471
  %6476 = fadd fast float %6473, %6471
  %6477 = fadd fast float %6474, %6471
  br i1 %4933, label %6478, label %6501

; <label>:6478                                    ; preds = %6463
  %6479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4029, float %6358, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 0
  %6481 = extractvalue %dx.types.ResRet.f32 %6479, 1
  %6482 = extractvalue %dx.types.ResRet.f32 %6479, 2
  %6483 = fadd fast float %6480, -5.000000e-01
  %6484 = fadd fast float %6481, -5.000000e-01
  %6485 = fadd fast float %6482, -5.000000e-01
  %6486 = fmul fast float %4635, 4.000000e+00
  %6487 = fmul fast float %6486, %6431
  %6488 = fmul fast float %6487, %6483
  %6489 = fmul fast float %4636, 4.000000e+00
  %6490 = fmul fast float %6489, %6432
  %6491 = fmul fast float %6490, %6484
  %6492 = fmul fast float %4658, 4.000000e+00
  %6493 = fmul fast float %6492, %6433
  %6494 = fmul fast float %6493, %6485
  %6495 = fadd fast float %6488, %6475
  %6496 = fadd fast float %6491, %6476
  %6497 = fadd fast float %6494, %6477
  %6498 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6499 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6500 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  br label %6501

; <label>:6501                                    ; preds = %6478, %6463
  %6502 = phi float [ %6498, %6478 ], [ %6475, %6463 ]
  %6503 = phi float [ %6499, %6478 ], [ %6476, %6463 ]
  %6504 = phi float [ %6500, %6478 ], [ %6477, %6463 ]
  %6505 = call float @dx.op.binary.f32(i32 35, float %6503, float %6504)  ; FMax(a,b)
  %6506 = call float @dx.op.binary.f32(i32 35, float %6502, float %6505)  ; FMax(a,b)
  %6507 = fsub fast float 1.000000e+00, %6506
  %6508 = fmul fast float %6464, %6422
  %6509 = fmul fast float %6465, %6422
  %6510 = fmul fast float %6466, %6422
  %6511 = fsub fast float 1.000000e+00, %6359
  %6512 = bitcast float %6511 to i32
  %6513 = sitofp i32 %6512 to float
  %6514 = fmul fast float %6513, 5.000000e+00
  %6515 = fadd fast float %6514, 0xC1EFBF8940000000
  %6516 = fptosi float %6515 to i32
  %6517 = bitcast i32 %6516 to float
  %6518 = fmul fast float %6517, %4030
  %6519 = fmul fast float %6507, %6518
  %6520 = fmul fast float %6519, %5859
  %6521 = fmul fast float %6519, %5860
  %6522 = fmul fast float %6519, %5861
  %6523 = fadd fast float %6520, %6508
  %6524 = fadd fast float %6521, %6509
  %6525 = fadd fast float %6522, %6510
  %6526 = fmul fast float %6347, %4026
  %6527 = fmul fast float %6526, %6365
  %6528 = fmul fast float %6527, %6507
  %6529 = fmul fast float %6348, %4026
  %6530 = fmul fast float %6529, %6365
  %6531 = fmul fast float %6530, %6507
  %6532 = fmul fast float %6349, %4026
  %6533 = fmul fast float %6532, %6365
  %6534 = fmul fast float %6533, %6507
  %6535 = fadd fast float %6528, %6186
  %6536 = fadd fast float %6531, %6187
  %6537 = fadd fast float %6534, %6188
  %6538 = fmul fast float %6527, %6523
  %6539 = fmul fast float %6530, %6524
  %6540 = fmul fast float %6533, %6525
  %6541 = fadd fast float %6538, %6183
  %6542 = fadd fast float %6539, %6184
  %6543 = fadd fast float %6540, %6185
  br label %6261

; <label>:6544                                    ; preds = %6261
  br label %6545

; <label>:6545                                    ; preds = %6544, %6149
  %6546 = phi float [ %6151, %6149 ], [ %6262, %6544 ]
  %6547 = phi float [ %6152, %6149 ], [ %6263, %6544 ]
  %6548 = phi float [ %6153, %6149 ], [ %6264, %6544 ]
  %6549 = phi float [ %6154, %6149 ], [ %6265, %6544 ]
  %6550 = phi float [ %6155, %6149 ], [ %6266, %6544 ]
  %6551 = phi float [ %6156, %6149 ], [ %6267, %6544 ]
  %6552 = add i32 %6150, 1
  %6553 = icmp ugt i32 %6552, %6146
  br i1 %6553, label %6554, label %6149

; <label>:6554                                    ; preds = %6545
  br label %6555

; <label>:6555                                    ; preds = %6554, %6125, %6115
  %6556 = phi float [ %6116, %6115 ], [ %6116, %6125 ], [ %6546, %6554 ]
  %6557 = phi float [ %6117, %6115 ], [ %6117, %6125 ], [ %6547, %6554 ]
  %6558 = phi float [ %6118, %6115 ], [ %6118, %6125 ], [ %6548, %6554 ]
  %6559 = phi float [ %6119, %6115 ], [ %6119, %6125 ], [ %6549, %6554 ]
  %6560 = phi float [ %6120, %6115 ], [ %6120, %6125 ], [ %6550, %6554 ]
  %6561 = phi float [ %6121, %6115 ], [ %6121, %6125 ], [ %6551, %6554 ]
  %6562 = call float @dx.op.unary.f32(i32 24, float %4632)  ; Sqrt(value)
  %6563 = call float @dx.op.unary.f32(i32 24, float %4633)  ; Sqrt(value)
  %6564 = call float @dx.op.unary.f32(i32 24, float %4634)  ; Sqrt(value)
  %6565 = fmul fast float %6562, %6559
  %6566 = fmul fast float %6563, %6560
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  br i1 %186, label %6569, label %6601

; <label>:6569                                    ; preds = %6555
  %6570 = fadd fast float %6561, %4032
  %6571 = fmul fast float %6570, %4034
  %6572 = fsub fast float 1.000000e+00, %4034
  %6573 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 3
  %6576 = fmul fast float %6575, %6573
  %6577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6578 = extractvalue %dx.types.CBufRet.f32 %6577, 0
  %6579 = fmul fast float %6578, %5865
  %6580 = extractvalue %dx.types.CBufRet.f32 %6577, 2
  %6581 = fmul fast float %6580, %4656
  %6582 = fadd fast float %6566, %6565
  %6583 = fmul fast float %6568, %6582
  %6584 = extractvalue %dx.types.CBufRet.f32 %6574, 1
  %6585 = fadd fast float %6576, %6571
  %6586 = fsub fast float %6585, %6579
  %6587 = fadd fast float %6586, %6581
  %6588 = fsub fast float %6587, %6584
  %6589 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6590 = fmul fast float %6588, %6589
  %6591 = call float @dx.op.unary.f32(i32 7, float %6590)  ; Saturate(value)
  %6592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6593 = extractvalue %dx.types.CBufRet.f32 %6592, 0
  %6594 = fsub fast float %6591, %6593
  %6595 = fmul fast float %6594, 1.000000e+01
  %6596 = call float @dx.op.unary.f32(i32 7, float %6595)  ; Saturate(value)
  %6597 = fadd fast float %4033, -1.000000e+00
  %6598 = fmul fast float %6596, %6597
  %6599 = fadd fast float %6598, 1.000000e+00
  %6600 = fmul fast float %6599, %6591
  br label %6617

; <label>:6601                                    ; preds = %6555
  %6602 = fmul fast float %6564, %6561
  %6603 = fmul fast float %6568, %6565
  %6604 = fmul fast float %6568, %6566
  %6605 = fmul fast float %6602, %6568
  %6606 = add i32 %45, 356
  %6607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6606, i32 undef)  ; BufferLoad(srv,index,wot)
  %6608 = extractvalue %dx.types.ResRet.i32 %6607, 0
  %6609 = and i32 %6608, 32
  %6610 = icmp eq i32 %6609, 0
  br i1 %6610, label %6617, label %6611

; <label>:6611                                    ; preds = %6601
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 0
  %6614 = fmul fast float %6613, 0x3FE99999A0000000
  %6615 = fadd fast float %6613, %6603
  %6616 = fadd fast float %6614, %6605
  br label %6617

; <label>:6617                                    ; preds = %6611, %6601, %6569
  %6618 = phi float [ %6583, %6569 ], [ %6615, %6611 ], [ %6603, %6601 ]
  %6619 = phi float [ %6600, %6569 ], [ %6604, %6611 ], [ %6604, %6601 ]
  %6620 = phi float [ %6599, %6569 ], [ %6616, %6611 ], [ %6605, %6601 ]
  %6621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6622 = extractvalue %dx.types.CBufRet.f32 %6621, 0
  %6623 = fmul fast float %6622, %6557
  %6624 = fmul fast float %6622, %6558
  %6625 = fadd fast float %6557, %6556
  %6626 = select i1 %186, float %6625, float %6556
  %6627 = fmul float %6626, %6622
  %6628 = select i1 %186, float 0.000000e+00, float %6623
  %6629 = select i1 %186, float 0.000000e+00, float %6624
  %6630 = fmul fast float %6618, %6562
  %6631 = fmul fast float %6619, %6563
  %6632 = fmul fast float %6620, %6564
  %6633 = fadd fast float %6627, %6630
  %6634 = fadd fast float %6628, %6631
  %6635 = fadd fast float %6629, %6632
  %6636 = select i1 %186, float %6619, float %6634
  %6637 = select i1 %186, float %6620, float %6635
  %6638 = call float @dx.op.binary.f32(i32 36, float %6633, float 3.225500e+04)  ; FMin(a,b)
  %6639 = call float @dx.op.binary.f32(i32 36, float %6636, float 3.225500e+04)  ; FMin(a,b)
  %6640 = call float @dx.op.binary.f32(i32 36, float %6637, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6638)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6639)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6640)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

