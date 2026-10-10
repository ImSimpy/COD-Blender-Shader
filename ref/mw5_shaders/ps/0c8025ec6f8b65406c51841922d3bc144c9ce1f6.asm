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
; OBJECT_POSITION          0   xyzw       10     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x zw
; SV_IsFrontFace           0   x          12    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 08933ba16184597906c5f19b3be2fd2c
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
; OBJECT_POSITION          0                 linear       
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
; Number of inputs: 49, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = fmul fast float %85, %79
  %87 = fmul fast float %85, %80
  %88 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %89 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = bitcast float %89 to i32
  %91 = ashr i32 %90, 1
  %92 = sub nsw i32 1597250115, %91
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %71, %88
  %95 = fmul fast float %94, %93
  %96 = fmul fast float %72, %88
  %97 = fmul fast float %96, %93
  %98 = fmul fast float %73, %88
  %99 = fmul fast float %98, %93
  %100 = fmul fast float %72, %69
  %101 = fmul fast float %73, %68
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %73, %67
  %104 = fmul fast float %71, %69
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %71, %68
  %107 = fmul fast float %72, %67
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %102, %70
  %110 = fmul fast float %105, %70
  %111 = fmul fast float %108, %70
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %86, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %87, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fadd fast float %132, %136
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %133, %137
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %134, %138
  %144 = fadd fast float %143, %127
  %145 = fmul fast float %140, %81
  %146 = fmul fast float %142, %81
  %147 = fmul fast float %144, %81
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %149, %86
  %152 = fmul fast float %150, %87
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %154, 114688
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %156, float %151, float 0.000000e+00
  %158 = select i1 %156, float %152, float 0.000000e+00
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fmul fast float %160, 2.550000e+02
  %162 = fptoui float %161 to i32
  %163 = select i1 %156, i32 %162, i32 0
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 3
  %167 = and i32 %166, 3
  %168 = icmp ne i32 %167, 0
  %169 = and i32 %166, 4
  %170 = icmp ne i32 %169, 0
  %171 = and i1 %168, %170
  br i1 %171, label %172, label %183

; <label>:172                                     ; preds = %0
  %173 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %174 = fmul fast float %173, %87
  %175 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %176 = fmul fast float %175, %86
  %177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %176, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = fsub fast float 1.000000e+00, %178
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = fcmp fast olt float %179, %181
  br label %186

; <label>:183                                     ; preds = %0
  %184 = icmp eq i32 %169, 0
  %185 = and i1 %168, %184
  br label %186

; <label>:186                                     ; preds = %183, %172
  %187 = phi i1 [ %182, %172 ], [ %185, %183 ]
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = fmul fast float %189, 0x3FE3C6EF40000000
  %191 = frem fast float %86, 2.560000e+02
  %192 = frem fast float %87, 2.560000e+02
  %193 = fptoui float %191 to i32
  %194 = fptoui float %192 to i32
  %195 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %193, i32 %194, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = fadd fast float %196, %190
  %199 = fadd fast float %197, %190
  %200 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %201 = call float @dx.op.unary.f32(i32 22, float %199)  ; Frc(value)
  %202 = add i32 %45, 156
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = shl i32 %204, 4
  %206 = and i32 %205, 32752
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %204, 7
  %209 = and i32 %208, 32752
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %204, 22
  %212 = shl nuw nsw i32 %211, 5
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = add i32 %45, 216
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = and i32 %216, 255
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F70101020000000
  %220 = lshr i32 %216, 8
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = lshr i32 %216, 16
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = add i32 %45, 36
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 65535
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = lshr i32 %230, 16
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = add i32 %45, 288
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 65535
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %237, 16
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = fmul fast float %239, 0x3F50624DE0000000
  %243 = fmul fast float %241, 0x3F50624DE0000000
  %244 = add i32 %45, 172
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = shl i32 %246, 4
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %246, 7
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %246, 22
  %254 = shl nuw nsw i32 %253, 5
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = add i32 %45, 232
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %258, 8
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = lshr i32 %258, 16
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = add i32 %45, 52
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = add i32 %45, 304
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = fmul fast float %281, 0x3F50624DE0000000
  %285 = fmul fast float %283, 0x3F50624DE0000000
  %286 = add i32 %45, 188
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = shl i32 %288, 4
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %288, 7
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %288, 22
  %296 = shl nuw nsw i32 %295, 5
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = add i32 %45, 248
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %300, 8
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %300, 16
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = add i32 %45, 68
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = add i32 %45, 320
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = fmul fast float %323, 0x3F50624DE0000000
  %327 = fmul fast float %325, 0x3F50624DE0000000
  %328 = add i32 %45, 204
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = shl i32 %330, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %330, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %330, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %45, 264
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %342, 8
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %342, 16
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = add i32 %45, 84
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %45, 336
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = fmul fast float %365, 0x3F50624DE0000000
  %369 = fmul fast float %367, 0x3F50624DE0000000
  %370 = add i32 %45, 348
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 32
  %374 = icmp eq i32 %373, 0
  %375 = and i32 %372, 64
  %376 = icmp eq i32 %375, 0
  %377 = and i32 %372, 128
  %378 = icmp eq i32 %377, 0
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 2
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %396, label %383

; <label>:383                                     ; preds = %186
  %384 = add i32 %45, 504
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %386, 0
  %388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %388, %dx.types.Handle %83, float %74, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = fmul fast float %390, %76
  %394 = fmul fast float %391, %77
  %395 = fmul fast float %392, %78
  br label %396

; <label>:396                                     ; preds = %383, %186
  %397 = phi float [ %78, %186 ], [ %395, %383 ]
  %398 = phi float [ %77, %186 ], [ %394, %383 ]
  %399 = phi float [ %76, %186 ], [ %393, %383 ]
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 2
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %423, label %404

; <label>:404                                     ; preds = %396
  %405 = add i32 %45, 44
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %399, float 1.000000e+00
  %411 = add i32 %45, 60
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %398, float 1.000000e+00
  %417 = add i32 %45, 76
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 1
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %397, float 1.000000e+00
  br label %423

; <label>:423                                     ; preds = %404, %396
  %424 = phi float [ %397, %396 ], [ %422, %404 ]
  %425 = phi float [ %398, %396 ], [ %416, %404 ]
  %426 = phi float [ %399, %396 ], [ %410, %404 ]
  %427 = lshr i32 %401, 20
  %428 = and i32 %427, 3
  %429 = add nuw nsw i32 %428, 1
  %430 = add i32 %45, 24
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = add i32 %45, 28
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = or i32 %435, %432
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %896, label %438

; <label>:438                                     ; preds = %423
  %439 = and i32 %432, 262144
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %49, float 1.000000e+00
  %442 = select i1 %440, float %50, float 0.000000e+00
  %443 = select i1 %440, float %51, float 0.000000e+00
  %444 = select i1 %440, float %52, float 1.000000e+00
  %445 = select i1 %440, float %53, float %74
  %446 = select i1 %440, float %54, float %75
  %447 = add i32 %45, 284
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 16
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = fmul fast float %451, 0x3F50624DE0000000
  %453 = add i32 %45, 88
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 16
  %457 = and i32 %456, 255
  %458 = lshr i32 %455, 24
  %459 = add i32 %45, 292
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 65535
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %461, 16
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = add i32 %45, 32
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 22
  %470 = shl nuw nsw i32 %469, 5
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = shl i32 %468, 4
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %468, 7
  %476 = and i32 %475, 32752
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 3
  %480 = fmul fast float %479, 1.000000e+03
  %481 = fmul fast float %242, %480
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fadd fast float %482, %232
  %484 = fmul fast float %243, %480
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = fadd fast float %485, %234
  %487 = fmul fast float %452, %480
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = fmul fast float %488, 0x401921FB60000000
  %490 = fadd fast float %489, %471
  %491 = call float @dx.op.unary.f32(i32 13, float %490)  ; Sin(value)
  %492 = call float @dx.op.unary.f32(i32 12, float %490)  ; Cos(value)
  %493 = fsub fast float -0.000000e+00, %491
  %494 = fadd fast float %445, -5.000000e-01
  %495 = fadd fast float %446, -5.000000e-01
  %496 = fmul fast float %463, %494
  %497 = fmul fast float %465, %495
  %498 = fadd fast float %496, 5.000000e-01
  %499 = fadd fast float %497, 5.000000e-01
  %500 = fmul fast float %474, %498
  %501 = fmul fast float %477, %499
  %502 = fmul fast float %492, %500
  %503 = call float @dx.op.tertiary.f32(i32 46, float %493, float %501, float %502)  ; FMad(a,b,c)
  %504 = fmul fast float %491, %500
  %505 = call float @dx.op.tertiary.f32(i32 46, float %492, float %501, float %504)  ; FMad(a,b,c)
  %506 = fadd fast float %483, %503
  %507 = fadd fast float %486, %505
  %508 = icmp ugt i32 %457, 1
  %509 = icmp ugt i32 %455, 33554431
  %510 = or i1 %509, %508
  br i1 %510, label %511, label %536

; <label>:511                                     ; preds = %438
  %512 = add i32 %45, 228
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fmul fast float %479, %516
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = mul nuw nsw i32 %457, %458
  %520 = uitofp i32 %519 to float
  %521 = fmul fast float %518, %520
  %522 = call float @dx.op.unary.f32(i32 27, float %521)  ; Round_ni(value)
  %523 = fptoui float %522 to i32
  %524 = urem i32 %523, %457
  %525 = udiv i32 %523, %458
  %526 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %527 = call float @dx.op.unary.f32(i32 22, float %507)  ; Frc(value)
  %528 = uitofp i32 %524 to float
  %529 = uitofp i32 %525 to float
  %530 = fadd fast float %526, %528
  %531 = fadd fast float %527, %529
  %532 = uitofp i32 %457 to float
  %533 = uitofp i32 %458 to float
  %534 = fdiv fast float %530, %532
  %535 = fdiv fast float %531, %533
  br label %536

; <label>:536                                     ; preds = %511, %438
  %537 = phi float [ %534, %511 ], [ %506, %438 ]
  %538 = phi float [ %535, %511 ], [ %507, %438 ]
  %539 = and i32 %432, 16
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %737, label %541

; <label>:541                                     ; preds = %536
  %542 = add i32 %45, 392
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = add i32 %544, 0
  %546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %547 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %546, %dx.types.Handle %82, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = extractvalue %dx.types.ResRet.f32 %547, 3
  %552 = and i32 %455, 255
  %553 = uitofp i32 %552 to float
  %554 = lshr i32 %455, 8
  %555 = and i32 %554, 255
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %551, %553
  %558 = fadd fast float %557, %556
  %559 = fmul fast float %558, 0x3F70101000000000
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = and i32 %561, 512
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %572, label %564

; <label>:564                                     ; preds = %541
  %565 = add i32 %45, 472
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = add i32 %567, 0
  %569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %569, %dx.types.Handle %83, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  br label %572

; <label>:572                                     ; preds = %564, %541
  %573 = phi float [ %571, %564 ], [ 1.000000e+00, %541 ]
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 33554432
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %684, label %578

; <label>:578                                     ; preds = %572
  %579 = add i32 %45, 224
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %581, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = add i32 %45, 228
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = lshr i32 %592, 24
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = and i32 %592, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = lshr i32 %592, 8
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = lshr i32 %592, 16
  %604 = and i32 %603, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = add i32 %45, 220
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = lshr i32 %609, 24
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = and i32 %609, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %609, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = lshr i32 %609, 16
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = bitcast float %548 to i32
  %625 = ashr i32 %624, 1
  %626 = sub nsw i32 1597463174, %625
  %627 = bitcast i32 %626 to float
  %628 = fmul fast float %548, 5.000000e-01
  %629 = fmul fast float %627, %627
  %630 = fmul fast float %629, %628
  %631 = fsub fast float 1.500000e+00, %630
  %632 = fmul fast float %627, %548
  %633 = fmul fast float %632, %631
  %634 = bitcast float %549 to i32
  %635 = ashr i32 %634, 1
  %636 = sub nsw i32 1597463174, %635
  %637 = bitcast i32 %636 to float
  %638 = fmul fast float %549, 5.000000e-01
  %639 = fmul fast float %637, %637
  %640 = fmul fast float %639, %638
  %641 = fsub fast float 1.500000e+00, %640
  %642 = fmul fast float %637, %549
  %643 = fmul fast float %642, %641
  %644 = bitcast float %550 to i32
  %645 = ashr i32 %644, 1
  %646 = sub nsw i32 1597463174, %645
  %647 = bitcast i32 %646 to float
  %648 = fmul fast float %550, 5.000000e-01
  %649 = fmul fast float %647, %647
  %650 = fmul fast float %649, %648
  %651 = fsub fast float 1.500000e+00, %650
  %652 = fmul fast float %647, %550
  %653 = fmul fast float %652, %651
  %654 = fsub fast float %633, %615
  %655 = fsub fast float %643, %619
  %656 = fsub fast float %653, %623
  %657 = fmul fast float %654, %583
  %658 = fmul fast float %655, %585
  %659 = fmul fast float %656, %590
  %660 = fadd fast float %657, %598
  %661 = fadd fast float %658, %602
  %662 = fadd fast float %659, %606
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %665 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  %666 = fmul fast float %663, %663
  %667 = fmul fast float %664, %664
  %668 = fmul fast float %665, %665
  %669 = fsub fast float %666, %548
  %670 = fsub fast float %667, %549
  %671 = fsub fast float %668, %550
  %672 = fmul fast float %669, %573
  %673 = fmul fast float %670, %573
  %674 = fmul fast float %671, %573
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %673, %549
  %677 = fadd fast float %674, %550
  %678 = fadd fast float %595, %559
  %679 = fsub fast float %678, %612
  %680 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %681 = fsub fast float %680, %559
  %682 = fmul fast float %681, %573
  %683 = fadd fast float %682, %559
  br label %737

; <label>:684                                     ; preds = %572
  %685 = and i32 %575, 134217728
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %721, label %687

; <label>:687                                     ; preds = %684
  %688 = call float @dx.op.unary.f32(i32 24, float %219)  ; Sqrt(value)
  %689 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %690 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fadd fast float %689, -5.000000e-01
  %693 = fadd fast float %690, -5.000000e-01
  %694 = fmul fast float %691, %573
  %695 = fmul fast float %692, %573
  %696 = fmul fast float %693, %573
  %697 = fadd fast float %694, 5.000000e-01
  %698 = fadd fast float %695, 5.000000e-01
  %699 = fadd fast float %696, 5.000000e-01
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %702 = call float @dx.op.unary.f32(i32 24, float %550)  ; Sqrt(value)
  %703 = fmul fast float %697, 2.000000e+00
  %704 = fsub fast float 1.000000e+00, %703
  %705 = fmul fast float %704, %700
  %706 = fadd fast float %705, %703
  %707 = fmul fast float %706, %700
  %708 = fmul fast float %698, 2.000000e+00
  %709 = fsub fast float 1.000000e+00, %708
  %710 = fmul fast float %709, %701
  %711 = fadd fast float %710, %708
  %712 = fmul fast float %711, %701
  %713 = fmul fast float %699, 2.000000e+00
  %714 = fsub fast float 1.000000e+00, %713
  %715 = fmul fast float %714, %702
  %716 = fadd fast float %715, %713
  %717 = fmul fast float %716, %702
  %718 = fmul fast float %707, %707
  %719 = fmul fast float %712, %712
  %720 = fmul fast float %717, %717
  br label %737

; <label>:721                                     ; preds = %684
  %722 = fmul fast float %219, %219
  %723 = fmul fast float %223, %223
  %724 = fmul fast float %227, %227
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fadd fast float %723, -1.000000e+00
  %727 = fadd fast float %724, -1.000000e+00
  %728 = fmul fast float %573, %725
  %729 = fmul fast float %573, %726
  %730 = fmul fast float %573, %727
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fadd fast float %729, 1.000000e+00
  %733 = fadd fast float %730, 1.000000e+00
  %734 = fmul fast float %731, %548
  %735 = fmul fast float %732, %549
  %736 = fmul fast float %733, %550
  br label %737

; <label>:737                                     ; preds = %721, %687, %578, %536
  %738 = phi float [ %683, %578 ], [ %559, %687 ], [ %559, %721 ], [ 0x3FA23C0BE0000000, %536 ]
  %739 = phi float [ %675, %578 ], [ %718, %687 ], [ %734, %721 ], [ 1.000000e+00, %536 ]
  %740 = phi float [ %676, %578 ], [ %719, %687 ], [ %735, %721 ], [ 1.000000e+00, %536 ]
  %741 = phi float [ %677, %578 ], [ %720, %687 ], [ %736, %721 ], [ 1.000000e+00, %536 ]
  %742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.i32 %742, 1
  %744 = and i32 %743, 1
  %745 = icmp ne i32 %744, 0
  %746 = add i32 %45, 356
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 32
  %750 = icmp ne i32 %749, 0
  %751 = and i1 %745, %750
  %752 = select i1 %751, float 1.000000e+00, float %739
  %753 = select i1 %751, float 0x3FD3333340000000, float %740
  %754 = select i1 %751, float 0x3FD3333340000000, float %741
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 32
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %831, label %759

; <label>:759                                     ; preds = %737
  %760 = add i32 %45, 92
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %45, 408
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %765, 0
  %767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %767, %dx.types.Handle %82, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = and i32 %762, 255
  %774 = uitofp i32 %773 to float
  %775 = lshr i32 %762, 8
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %762, 16
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101000000000
  %782 = fmul fast float %769, %774
  %783 = fadd fast float %782, %777
  %784 = fmul fast float %783, 0x3F70101000000000
  %785 = fadd fast float %770, -5.000000e-01
  %786 = fadd fast float %772, -5.000000e-01
  %787 = fmul fast float %785, %781
  %788 = fmul fast float %786, %781
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fadd fast float %788, 5.000000e-01
  %791 = fmul fast float %789, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = fmul fast float %790, 2.000000e+00
  %794 = fadd fast float %793, -1.000000e+00
  %795 = fadd fast float %792, %794
  %796 = fmul fast float %795, 5.000000e-01
  %797 = fsub fast float %792, %794
  %798 = fmul fast float %797, 5.000000e-01
  %799 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %800 = fsub fast float 1.000000e+00, %799
  %801 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %802 = fsub fast float %800, %801
  %803 = call float @dx.op.dot3.f32(i32 55, float %796, float %798, float %802, float %796, float %798, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = call float @dx.op.unary.f32(i32 25, float %803)  ; Rsqrt(value)
  %805 = fmul fast float %796, %804
  %806 = fmul fast float %798, %804
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 67108864
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %827, label %811

; <label>:811                                     ; preds = %759
  %812 = add i32 %45, 280
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 65535
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = lshr i32 %814, 16
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = fsub fast float %784, %822
  %824 = fmul fast float %823, %816
  %825 = fadd fast float %824, %820
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  br label %827

; <label>:827                                     ; preds = %811, %759
  %828 = phi float [ %826, %811 ], [ %784, %759 ]
  %829 = call float @dx.op.dot2.f32(i32 54, float %805, float %806, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  %830 = call float @dx.op.dot2.f32(i32 54, float %805, float %806, float %443, float %444)  ; Dot2(ax,ay,bx,by)
  br label %831

; <label>:831                                     ; preds = %827, %737
  %832 = phi float [ %828, %827 ], [ 0x3FD6666660000000, %737 ]
  %833 = phi float [ %829, %827 ], [ 0.000000e+00, %737 ]
  %834 = phi float [ %830, %827 ], [ 0.000000e+00, %737 ]
  %835 = phi float [ %771, %827 ], [ 1.000000e+00, %737 ]
  %836 = add i32 %45, 160
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = lshr i32 %838, 22
  %840 = shl nuw nsw i32 %839, 5
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 64
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %879, label %846

; <label>:846                                     ; preds = %831
  %847 = add i32 %45, 424
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = add i32 %849, 0
  %851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 131072
  %855 = icmp eq i32 %854, 0
  %856 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %851, %dx.types.Handle %82, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %857 = extractvalue %dx.types.ResRet.f32 %856, 0
  %858 = extractvalue %dx.types.ResRet.f32 %856, 1
  %859 = extractvalue %dx.types.ResRet.f32 %856, 2
  %860 = fmul fast float %857, %207
  %861 = fmul fast float %858, %210
  %862 = fmul fast float %859, %213
  br i1 %855, label %869, label %863

; <label>:863                                     ; preds = %846
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = fmul fast float %865, %860
  %867 = fmul fast float %865, %861
  %868 = fmul fast float %865, %862
  br label %869

; <label>:869                                     ; preds = %863, %846
  %870 = phi float [ %866, %863 ], [ %860, %846 ]
  %871 = phi float [ %867, %863 ], [ %861, %846 ]
  %872 = phi float [ %868, %863 ], [ %862, %846 ]
  %873 = fmul fast float %870, %841
  %874 = select i1 %187, float %873, float %870
  %875 = call float @dx.op.dot3.f32(i32 55, float %874, float %871, float %872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = select i1 %187, float 0.000000e+00, float %870
  %877 = select i1 %187, float %875, float %871
  %878 = select i1 %187, float 0.000000e+00, float %872
  br label %879

; <label>:879                                     ; preds = %869, %831
  %880 = phi float [ %876, %869 ], [ 0.000000e+00, %831 ]
  %881 = phi float [ %877, %869 ], [ 0.000000e+00, %831 ]
  %882 = phi float [ %878, %869 ], [ 0.000000e+00, %831 ]
  %883 = add i32 %45, 96
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 255
  %887 = uitofp i32 %886 to float
  %888 = lshr i32 %885, 8
  %889 = and i32 %888, 255
  %890 = uitofp i32 %889 to float
  %891 = call float @dx.op.dot3.f32(i32 55, float %752, float %753, float %754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %892 = fmul fast float %890, %891
  %893 = fadd fast float %892, %887
  %894 = fmul fast float %893, 0x3F70101020000000
  %895 = call float @dx.op.unary.f32(i32 7, float %894)  ; Saturate(value)
  br label %896

; <label>:896                                     ; preds = %879, %423
  %897 = phi float [ 0.000000e+00, %423 ], [ %833, %879 ]
  %898 = phi float [ 0.000000e+00, %423 ], [ %834, %879 ]
  %899 = phi float [ 0.000000e+00, %423 ], [ %752, %879 ]
  %900 = phi float [ 0.000000e+00, %423 ], [ %753, %879 ]
  %901 = phi float [ 0.000000e+00, %423 ], [ %754, %879 ]
  %902 = phi float [ 0.000000e+00, %423 ], [ %880, %879 ]
  %903 = phi float [ 0.000000e+00, %423 ], [ %881, %879 ]
  %904 = phi float [ 0.000000e+00, %423 ], [ %882, %879 ]
  %905 = phi float [ 0.000000e+00, %423 ], [ %738, %879 ]
  %906 = phi float [ 0.000000e+00, %423 ], [ 1.000000e+00, %879 ]
  %907 = phi float [ 0.000000e+00, %423 ], [ %832, %879 ]
  %908 = phi float [ 0.000000e+00, %423 ], [ %835, %879 ]
  %909 = phi float [ 0.000000e+00, %423 ], [ %895, %879 ]
  br i1 %374, label %1751, label %910

; <label>:910                                     ; preds = %896
  %911 = icmp ult i32 %429, 2
  %912 = add i32 %45, 40
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = add i32 %45, 44
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = or i32 %917, %914
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %1751, label %920

; <label>:920                                     ; preds = %910
  %921 = and i32 %914, 262144
  %922 = icmp ne i32 %921, 0
  %923 = select i1 %922, float %49, float 1.000000e+00
  %924 = select i1 %922, float %50, float 0.000000e+00
  %925 = select i1 %922, float %51, float 0.000000e+00
  %926 = select i1 %922, float %52, float 1.000000e+00
  %927 = select i1 %922, float %53, float %74
  %928 = select i1 %922, float %54, float %75
  %929 = add i32 %45, 300
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 16
  %933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %932)  ; LegacyF16ToF32(value)
  %934 = fmul fast float %933, 0x3F50624DE0000000
  %935 = add i32 %45, 104
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 16
  %939 = and i32 %938, 255
  %940 = lshr i32 %937, 24
  %941 = add i32 %45, 308
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = and i32 %943, 65535
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = lshr i32 %943, 16
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = add i32 %45, 48
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = lshr i32 %950, 22
  %952 = shl nuw nsw i32 %951, 5
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = shl i32 %950, 4
  %955 = and i32 %954, 32752
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = lshr i32 %950, 7
  %958 = and i32 %957, 32752
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %961 = extractvalue %dx.types.CBufRet.f32 %960, 3
  %962 = fmul fast float %961, 1.000000e+03
  %963 = fmul fast float %284, %962
  %964 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %965 = fadd fast float %964, %274
  %966 = fmul fast float %285, %962
  %967 = call float @dx.op.unary.f32(i32 22, float %966)  ; Frc(value)
  %968 = fadd fast float %967, %276
  %969 = fmul fast float %934, %962
  %970 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %971 = fmul fast float %970, 0x401921FB60000000
  %972 = fadd fast float %971, %953
  %973 = call float @dx.op.unary.f32(i32 13, float %972)  ; Sin(value)
  %974 = call float @dx.op.unary.f32(i32 12, float %972)  ; Cos(value)
  %975 = fsub fast float -0.000000e+00, %973
  %976 = fadd fast float %927, -5.000000e-01
  %977 = fadd fast float %928, -5.000000e-01
  %978 = fmul fast float %945, %976
  %979 = fmul fast float %947, %977
  %980 = fadd fast float %978, 5.000000e-01
  %981 = fadd fast float %979, 5.000000e-01
  %982 = fmul fast float %956, %980
  %983 = fmul fast float %959, %981
  %984 = fmul fast float %974, %982
  %985 = call float @dx.op.tertiary.f32(i32 46, float %975, float %983, float %984)  ; FMad(a,b,c)
  %986 = fmul fast float %973, %982
  %987 = call float @dx.op.tertiary.f32(i32 46, float %974, float %983, float %986)  ; FMad(a,b,c)
  %988 = fadd fast float %965, %985
  %989 = fadd fast float %968, %987
  %990 = icmp ugt i32 %939, 1
  %991 = icmp ugt i32 %937, 33554431
  %992 = or i1 %991, %990
  br i1 %992, label %993, label %1018

; <label>:993                                     ; preds = %920
  %994 = add i32 %45, 244
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = lshr i32 %996, 16
  %998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %997)  ; LegacyF16ToF32(value)
  %999 = fmul fast float %961, %998
  %1000 = call float @dx.op.unary.f32(i32 22, float %999)  ; Frc(value)
  %1001 = mul nuw nsw i32 %939, %940
  %1002 = uitofp i32 %1001 to float
  %1003 = fmul fast float %1000, %1002
  %1004 = call float @dx.op.unary.f32(i32 27, float %1003)  ; Round_ni(value)
  %1005 = fptoui float %1004 to i32
  %1006 = urem i32 %1005, %939
  %1007 = udiv i32 %1005, %940
  %1008 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %1009 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %1010 = uitofp i32 %1006 to float
  %1011 = uitofp i32 %1007 to float
  %1012 = fadd fast float %1008, %1010
  %1013 = fadd fast float %1009, %1011
  %1014 = uitofp i32 %939 to float
  %1015 = uitofp i32 %940 to float
  %1016 = fdiv fast float %1012, %1014
  %1017 = fdiv fast float %1013, %1015
  br label %1018

; <label>:1018                                    ; preds = %993, %920
  %1019 = phi float [ %1016, %993 ], [ %988, %920 ]
  %1020 = phi float [ %1017, %993 ], [ %989, %920 ]
  %1021 = and i32 %914, 16777216
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1132, label %1023

; <label>:1023                                    ; preds = %1018
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.CBufRet.f32 %1024, 2
  %1028 = fadd fast float %1025, %145
  %1029 = fadd fast float %1026, %146
  %1030 = fadd fast float %1027, %147
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 0
  %1033 = call float @dx.op.unary.f32(i32 7, float %1032)  ; Saturate(value)
  %1034 = icmp eq i32 %46, 65535
  br i1 %1034, label %1129, label %1035

; <label>:1035                                    ; preds = %1023
  %1036 = lshr i32 %46, 1
  %1037 = shl i32 %1036, 2
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1037, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %46, 1
  %1041 = icmp ne i32 %1040, 0
  %1042 = lshr i32 %1039, 16
  %1043 = and i32 %1039, 65535
  %1044 = select i1 %1041, i32 %1042, i32 %1043
  %1045 = icmp eq i32 %1044, 65535
  br i1 %1045, label %1125, label %1046

; <label>:1046                                    ; preds = %1035
  %1047 = mul nuw nsw i32 %1044, 40
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = add nuw nsw i32 %1047, 12
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = add nuw nsw i32 %1047, 24
  %1058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = extractvalue %dx.types.ResRet.f32 %1058, 1
  %1061 = extractvalue %dx.types.ResRet.f32 %1058, 2
  %1062 = add nuw nsw i32 %1047, 36
  %1063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = fsub fast float %1028, %1049
  %1066 = fsub fast float %1029, %1050
  %1067 = fsub fast float %1030, %1051
  %1068 = fmul fast float %1064, %1065
  %1069 = fmul fast float %1064, %1066
  %1070 = fmul fast float %1064, %1067
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = call float @dx.op.unary.f32(i32 27, float %1070)  ; Round_ni(value)
  %1074 = fadd fast float %1071, 5.000000e-01
  %1075 = fadd fast float %1072, 5.000000e-01
  %1076 = fadd fast float %1073, 5.000000e-01
  %1077 = fmul fast float %1074, %1054
  %1078 = fmul fast float %1075, %1055
  %1079 = fmul fast float %1076, %1056
  %1080 = shl i32 %46, 2
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = add i32 %1082, 0
  %1084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1085 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1086 = call float @dx.op.unary.f32(i32 22, float %1078)  ; Frc(value)
  %1087 = call float @dx.op.unary.f32(i32 22, float %1079)  ; Frc(value)
  %1088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1084, %dx.types.Handle %40, float %1085, float %1086, float %1087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = fmul fast float %1089, 1.023000e+03
  %1093 = fmul fast float %1090, 1.023000e+03
  %1094 = fmul fast float %1091, 1.023000e+03
  %1095 = fadd fast float %1092, 5.000000e-01
  %1096 = fadd fast float %1093, 5.000000e-01
  %1097 = fadd fast float %1094, 5.000000e-01
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = fsub fast float %1068, %1071
  %1102 = fsub fast float %1069, %1072
  %1103 = fsub fast float %1070, %1073
  %1104 = fmul fast float %1101, 7.500000e-01
  %1105 = fmul fast float %1102, 7.500000e-01
  %1106 = fmul fast float %1103, 7.500000e-01
  %1107 = fadd fast float %1071, 1.250000e-01
  %1108 = fadd fast float %1107, %1104
  %1109 = fadd fast float %1108, %1098
  %1110 = fadd fast float %1072, 1.250000e-01
  %1111 = fadd fast float %1110, %1105
  %1112 = fadd fast float %1111, %1099
  %1113 = fadd fast float %1073, 1.250000e-01
  %1114 = fadd fast float %1113, %1106
  %1115 = fadd fast float %1114, %1100
  %1116 = fmul fast float %1109, %1059
  %1117 = fmul fast float %1112, %1060
  %1118 = fmul fast float %1115, %1061
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = add i32 %1120, 0
  %1122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1122, %dx.types.Handle %38, float %1116, float %1117, float %1118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  br label %1125

; <label>:1125                                    ; preds = %1046, %1035
  %1126 = phi float [ %1124, %1046 ], [ -1.000000e+00, %1035 ]
  %1127 = fadd fast float %1126, %1033
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  br label %1129

; <label>:1129                                    ; preds = %1125, %1023
  %1130 = phi float [ %1128, %1125 ], [ %1033, %1023 ]
  %1131 = fmul fast float %1130, %426
  br label %1132

; <label>:1132                                    ; preds = %1129, %1018
  %1133 = phi float [ %1131, %1129 ], [ %426, %1018 ]
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = and i32 %1135, 256
  %1137 = icmp eq i32 %1136, 0
  br i1 %1137, label %1184, label %1138

; <label>:1138                                    ; preds = %1132
  %1139 = add i32 %45, 460
  %1140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1139, i32 undef)  ; BufferLoad(srv,index,wot)
  %1141 = extractvalue %dx.types.ResRet.i32 %1140, 0
  %1142 = add i32 %1141, 0
  %1143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1143, %dx.types.Handle %83, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1145 = extractvalue %dx.types.ResRet.f32 %1144, 0
  %1146 = add i32 %45, 116
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = shl i32 %1148, 4
  %1150 = and i32 %1149, 32752
  %1151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1150)  ; LegacyF16ToF32(value)
  %1152 = lshr i32 %1148, 7
  %1153 = and i32 %1152, 32752
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = fsub fast float 1.000000e+00, %1133
  %1156 = call float @dx.op.binary.f32(i32 35, float %1155, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1157 = bitcast float %1133 to i32
  %1158 = sitofp i32 %1157 to float
  %1159 = fadd fast float %1158, 0xC1CFBF8940000000
  %1160 = fmul fast float %1154, %1159
  %1161 = fadd fast float %1160, 0x41CFBF8940000000
  %1162 = fptosi float %1161 to i32
  %1163 = bitcast i32 %1162 to float
  %1164 = bitcast float %1156 to i32
  %1165 = sitofp i32 %1164 to float
  %1166 = fadd fast float %1165, 0xC1CFBF8940000000
  %1167 = fmul fast float %1166, %1154
  %1168 = fadd fast float %1167, 0x41CFBF8940000000
  %1169 = fptosi float %1168 to i32
  %1170 = bitcast i32 %1169 to float
  %1171 = fmul fast float %1163, %1151
  %1172 = fmul fast float %1170, %1151
  %1173 = fsub fast float %1156, %1171
  %1174 = fadd fast float %1172, %1156
  %1175 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1176 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1177 = fsub fast float %1145, %1175
  %1178 = fsub fast float %1176, %1175
  %1179 = bitcast float %1178 to i32
  %1180 = sub nsw i32 2129859010, %1179
  %1181 = bitcast i32 %1180 to float
  %1182 = fmul fast float %1181, %1177
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  br label %1184

; <label>:1184                                    ; preds = %1138, %1132
  %1185 = phi float [ %1183, %1138 ], [ %1133, %1132 ]
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 128
  %1189 = icmp eq i32 %1188, 0
  br i1 %1189, label %1206, label %1190

; <label>:1190                                    ; preds = %1184
  %1191 = add i32 %45, 444
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = add i32 %1193, 0
  %1195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1195, %dx.types.Handle %83, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 524288
  %1201 = icmp ne i32 %1200, 0
  %1202 = fcmp fast ogt float %1197, 0x3FE0101020000000
  %1203 = select i1 %1202, float 1.000000e+00, float 0.000000e+00
  %1204 = select i1 %1201, float %1203, float %1197
  %1205 = fmul fast float %1204, %1185
  br label %1206

; <label>:1206                                    ; preds = %1190, %1184
  %1207 = phi float [ %1205, %1190 ], [ %1185, %1184 ]
  %1208 = fcmp fast ult float %1207, 0x3F70101020000000
  br i1 %1208, label %1751, label %1209

; <label>:1209                                    ; preds = %1206
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = and i32 %1211, 16
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1412, label %1214

; <label>:1214                                    ; preds = %1209
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = add i32 %45, 396
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = add i32 %1219, 0
  %1221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1221, %dx.types.Handle %82, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.ResRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.ResRet.f32 %1222, 2
  %1226 = extractvalue %dx.types.ResRet.f32 %1222, 3
  %1227 = and i32 %1216, 255
  %1228 = uitofp i32 %1227 to float
  %1229 = lshr i32 %1216, 8
  %1230 = and i32 %1229, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1226, %1228
  %1233 = fadd fast float %1232, %1231
  %1234 = fmul fast float %1233, 0x3F70101000000000
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 512
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1247, label %1239

; <label>:1239                                    ; preds = %1214
  %1240 = add i32 %45, 476
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %1242, 0
  %1244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1244, %dx.types.Handle %83, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  br label %1247

; <label>:1247                                    ; preds = %1239, %1214
  %1248 = phi float [ %1246, %1239 ], [ 1.000000e+00, %1214 ]
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 33554432
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1359, label %1253

; <label>:1253                                    ; preds = %1247
  %1254 = add i32 %45, 240
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = and i32 %1256, 65535
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = lshr i32 %1256, 16
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = add i32 %45, 244
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1261, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 65535
  %1265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1264)  ; LegacyF16ToF32(value)
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = lshr i32 %1267, 24
  %1269 = uitofp i32 %1268 to float
  %1270 = fmul fast float %1269, 0x3F70101020000000
  %1271 = and i32 %1267, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101020000000
  %1274 = lshr i32 %1267, 8
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = lshr i32 %1267, 16
  %1279 = and i32 %1278, 255
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F70101020000000
  %1282 = add i32 %45, 236
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = lshr i32 %1284, 24
  %1286 = uitofp i32 %1285 to float
  %1287 = fmul fast float %1286, 0x3F70101020000000
  %1288 = and i32 %1284, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F70101020000000
  %1291 = lshr i32 %1284, 8
  %1292 = and i32 %1291, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = lshr i32 %1284, 16
  %1296 = and i32 %1295, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = bitcast float %1223 to i32
  %1300 = ashr i32 %1299, 1
  %1301 = sub nsw i32 1597463174, %1300
  %1302 = bitcast i32 %1301 to float
  %1303 = fmul fast float %1223, 5.000000e-01
  %1304 = fmul fast float %1302, %1302
  %1305 = fmul fast float %1304, %1303
  %1306 = fsub fast float 1.500000e+00, %1305
  %1307 = fmul fast float %1302, %1223
  %1308 = fmul fast float %1307, %1306
  %1309 = bitcast float %1224 to i32
  %1310 = ashr i32 %1309, 1
  %1311 = sub nsw i32 1597463174, %1310
  %1312 = bitcast i32 %1311 to float
  %1313 = fmul fast float %1224, 5.000000e-01
  %1314 = fmul fast float %1312, %1312
  %1315 = fmul fast float %1314, %1313
  %1316 = fsub fast float 1.500000e+00, %1315
  %1317 = fmul fast float %1312, %1224
  %1318 = fmul fast float %1317, %1316
  %1319 = bitcast float %1225 to i32
  %1320 = ashr i32 %1319, 1
  %1321 = sub nsw i32 1597463174, %1320
  %1322 = bitcast i32 %1321 to float
  %1323 = fmul fast float %1225, 5.000000e-01
  %1324 = fmul fast float %1322, %1322
  %1325 = fmul fast float %1324, %1323
  %1326 = fsub fast float 1.500000e+00, %1325
  %1327 = fmul fast float %1322, %1225
  %1328 = fmul fast float %1327, %1326
  %1329 = fsub fast float %1308, %1290
  %1330 = fsub fast float %1318, %1294
  %1331 = fsub fast float %1328, %1298
  %1332 = fmul fast float %1329, %1258
  %1333 = fmul fast float %1330, %1260
  %1334 = fmul fast float %1331, %1265
  %1335 = fadd fast float %1332, %1273
  %1336 = fadd fast float %1333, %1277
  %1337 = fadd fast float %1334, %1281
  %1338 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1339 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1340 = call float @dx.op.unary.f32(i32 7, float %1337)  ; Saturate(value)
  %1341 = fmul fast float %1338, %1338
  %1342 = fmul fast float %1339, %1339
  %1343 = fmul fast float %1340, %1340
  %1344 = fsub fast float %1341, %1223
  %1345 = fsub fast float %1342, %1224
  %1346 = fsub fast float %1343, %1225
  %1347 = fmul fast float %1344, %1248
  %1348 = fmul fast float %1345, %1248
  %1349 = fmul fast float %1346, %1248
  %1350 = fadd fast float %1347, %1223
  %1351 = fadd fast float %1348, %1224
  %1352 = fadd fast float %1349, %1225
  %1353 = fadd fast float %1270, %1234
  %1354 = fsub fast float %1353, %1287
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = fsub fast float %1355, %1234
  %1357 = fmul fast float %1356, %1248
  %1358 = fadd fast float %1357, %1234
  br label %1412

; <label>:1359                                    ; preds = %1247
  %1360 = and i32 %1250, 134217728
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1396, label %1362

; <label>:1362                                    ; preds = %1359
  %1363 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1364 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1365 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %1366 = fadd fast float %1363, -5.000000e-01
  %1367 = fadd fast float %1364, -5.000000e-01
  %1368 = fadd fast float %1365, -5.000000e-01
  %1369 = fmul fast float %1366, %1248
  %1370 = fmul fast float %1367, %1248
  %1371 = fmul fast float %1368, %1248
  %1372 = fadd fast float %1369, 5.000000e-01
  %1373 = fadd fast float %1370, 5.000000e-01
  %1374 = fadd fast float %1371, 5.000000e-01
  %1375 = call float @dx.op.unary.f32(i32 24, float %1223)  ; Sqrt(value)
  %1376 = call float @dx.op.unary.f32(i32 24, float %1224)  ; Sqrt(value)
  %1377 = call float @dx.op.unary.f32(i32 24, float %1225)  ; Sqrt(value)
  %1378 = fmul fast float %1372, 2.000000e+00
  %1379 = fsub fast float 1.000000e+00, %1378
  %1380 = fmul fast float %1379, %1375
  %1381 = fadd fast float %1380, %1378
  %1382 = fmul fast float %1381, %1375
  %1383 = fmul fast float %1373, 2.000000e+00
  %1384 = fsub fast float 1.000000e+00, %1383
  %1385 = fmul fast float %1384, %1376
  %1386 = fadd fast float %1385, %1383
  %1387 = fmul fast float %1386, %1376
  %1388 = fmul fast float %1374, 2.000000e+00
  %1389 = fsub fast float 1.000000e+00, %1388
  %1390 = fmul fast float %1389, %1377
  %1391 = fadd fast float %1390, %1388
  %1392 = fmul fast float %1391, %1377
  %1393 = fmul fast float %1382, %1382
  %1394 = fmul fast float %1387, %1387
  %1395 = fmul fast float %1392, %1392
  br label %1412

; <label>:1396                                    ; preds = %1359
  %1397 = fmul fast float %261, %261
  %1398 = fmul fast float %265, %265
  %1399 = fmul fast float %269, %269
  %1400 = fadd fast float %1397, -1.000000e+00
  %1401 = fadd fast float %1398, -1.000000e+00
  %1402 = fadd fast float %1399, -1.000000e+00
  %1403 = fmul fast float %1248, %1400
  %1404 = fmul fast float %1248, %1401
  %1405 = fmul fast float %1248, %1402
  %1406 = fadd fast float %1403, 1.000000e+00
  %1407 = fadd fast float %1404, 1.000000e+00
  %1408 = fadd fast float %1405, 1.000000e+00
  %1409 = fmul fast float %1406, %1223
  %1410 = fmul fast float %1407, %1224
  %1411 = fmul fast float %1408, %1225
  br label %1412

; <label>:1412                                    ; preds = %1396, %1362, %1253, %1209
  %1413 = phi float [ %1358, %1253 ], [ %1234, %1362 ], [ %1234, %1396 ], [ 0x3FA23C0BE0000000, %1209 ]
  %1414 = phi float [ %1350, %1253 ], [ %1393, %1362 ], [ %1409, %1396 ], [ 1.000000e+00, %1209 ]
  %1415 = phi float [ %1351, %1253 ], [ %1394, %1362 ], [ %1410, %1396 ], [ 1.000000e+00, %1209 ]
  %1416 = phi float [ %1352, %1253 ], [ %1395, %1362 ], [ %1411, %1396 ], [ 1.000000e+00, %1209 ]
  %1417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.i32 %1417, 1
  %1419 = and i32 %1418, 1
  %1420 = icmp ne i32 %1419, 0
  %1421 = add i32 %45, 356
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = and i32 %1423, 32
  %1425 = icmp ne i32 %1424, 0
  %1426 = and i1 %1420, %1425
  %1427 = select i1 %1426, float 1.000000e+00, float %1414
  %1428 = select i1 %1426, float 0x3FD3333340000000, float %1415
  %1429 = select i1 %1426, float 0x3FD3333340000000, float %1416
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = and i32 %1431, 32
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1506, label %1434

; <label>:1434                                    ; preds = %1412
  %1435 = add i32 %45, 108
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = add i32 %45, 412
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = add i32 %1440, 0
  %1442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1442, %dx.types.Handle %82, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1444 = extractvalue %dx.types.ResRet.f32 %1443, 0
  %1445 = extractvalue %dx.types.ResRet.f32 %1443, 1
  %1446 = extractvalue %dx.types.ResRet.f32 %1443, 2
  %1447 = extractvalue %dx.types.ResRet.f32 %1443, 3
  %1448 = and i32 %1437, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = lshr i32 %1437, 8
  %1451 = and i32 %1450, 255
  %1452 = uitofp i32 %1451 to float
  %1453 = lshr i32 %1437, 16
  %1454 = and i32 %1453, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = fmul fast float %1455, 0x3F70101000000000
  %1457 = fmul fast float %1444, %1449
  %1458 = fadd fast float %1457, %1452
  %1459 = fmul fast float %1458, 0x3F70101000000000
  %1460 = fadd fast float %1445, -5.000000e-01
  %1461 = fadd fast float %1447, -5.000000e-01
  %1462 = fmul fast float %1460, %1456
  %1463 = fmul fast float %1461, %1456
  %1464 = fadd fast float %1462, 5.000000e-01
  %1465 = fadd fast float %1463, 5.000000e-01
  %1466 = fmul fast float %1464, 2.000000e+00
  %1467 = fadd fast float %1466, -1.000000e+00
  %1468 = fmul fast float %1465, 2.000000e+00
  %1469 = fadd fast float %1468, -1.000000e+00
  %1470 = fadd fast float %1467, %1469
  %1471 = fmul fast float %1470, 5.000000e-01
  %1472 = fsub fast float %1467, %1469
  %1473 = fmul fast float %1472, 5.000000e-01
  %1474 = call float @dx.op.unary.f32(i32 6, float %1471)  ; FAbs(value)
  %1475 = fsub fast float 1.000000e+00, %1474
  %1476 = call float @dx.op.unary.f32(i32 6, float %1473)  ; FAbs(value)
  %1477 = fsub fast float %1475, %1476
  %1478 = call float @dx.op.dot3.f32(i32 55, float %1471, float %1473, float %1477, float %1471, float %1473, float %1477)  ; Dot3(ax,ay,az,bx,by,bz)
  %1479 = call float @dx.op.unary.f32(i32 25, float %1478)  ; Rsqrt(value)
  %1480 = fmul fast float %1471, %1479
  %1481 = fmul fast float %1473, %1479
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 67108864
  %1485 = icmp eq i32 %1484, 0
  br i1 %1485, label %1502, label %1486

; <label>:1486                                    ; preds = %1434
  %1487 = add i32 %45, 296
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 65535
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 65535
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = lshr i32 %1489, 16
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = fsub fast float %1459, %1497
  %1499 = fmul fast float %1498, %1491
  %1500 = fadd fast float %1499, %1495
  %1501 = call float @dx.op.unary.f32(i32 7, float %1500)  ; Saturate(value)
  br label %1502

; <label>:1502                                    ; preds = %1486, %1434
  %1503 = phi float [ %1501, %1486 ], [ %1459, %1434 ]
  %1504 = call float @dx.op.dot2.f32(i32 54, float %1480, float %1481, float %923, float %924)  ; Dot2(ax,ay,bx,by)
  %1505 = call float @dx.op.dot2.f32(i32 54, float %1480, float %1481, float %925, float %926)  ; Dot2(ax,ay,bx,by)
  br label %1506

; <label>:1506                                    ; preds = %1502, %1412
  %1507 = phi float [ %1503, %1502 ], [ 0x3FD6666660000000, %1412 ]
  %1508 = phi float [ %1504, %1502 ], [ 0.000000e+00, %1412 ]
  %1509 = phi float [ %1505, %1502 ], [ 0.000000e+00, %1412 ]
  %1510 = phi float [ %1446, %1502 ], [ 1.000000e+00, %1412 ]
  %1511 = add i32 %45, 176
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = lshr i32 %1513, 22
  %1515 = shl nuw nsw i32 %1514, 5
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 64
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1554, label %1521

; <label>:1521                                    ; preds = %1506
  %1522 = add i32 %45, 428
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = add i32 %1524, 0
  %1526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = and i32 %1528, 131072
  %1530 = icmp eq i32 %1529, 0
  %1531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1526, %dx.types.Handle %82, float %1019, float %1020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1532 = extractvalue %dx.types.ResRet.f32 %1531, 0
  %1533 = extractvalue %dx.types.ResRet.f32 %1531, 1
  %1534 = extractvalue %dx.types.ResRet.f32 %1531, 2
  %1535 = fmul fast float %1532, %249
  %1536 = fmul fast float %1533, %252
  %1537 = fmul fast float %1534, %255
  br i1 %1530, label %1544, label %1538

; <label>:1538                                    ; preds = %1521
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 0
  %1541 = fmul fast float %1540, %1535
  %1542 = fmul fast float %1540, %1536
  %1543 = fmul fast float %1540, %1537
  br label %1544

; <label>:1544                                    ; preds = %1538, %1521
  %1545 = phi float [ %1541, %1538 ], [ %1535, %1521 ]
  %1546 = phi float [ %1542, %1538 ], [ %1536, %1521 ]
  %1547 = phi float [ %1543, %1538 ], [ %1537, %1521 ]
  %1548 = fmul fast float %1545, %1516
  %1549 = select i1 %187, float %1548, float %1545
  %1550 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1546, float %1547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1551 = select i1 %187, float 0.000000e+00, float %1545
  %1552 = select i1 %187, float %1550, float %1546
  %1553 = select i1 %187, float 0.000000e+00, float %1547
  br label %1554

; <label>:1554                                    ; preds = %1544, %1506
  %1555 = phi float [ %1551, %1544 ], [ 0.000000e+00, %1506 ]
  %1556 = phi float [ %1552, %1544 ], [ 0.000000e+00, %1506 ]
  %1557 = phi float [ %1553, %1544 ], [ 0.000000e+00, %1506 ]
  %1558 = add i32 %45, 112
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 255
  %1562 = uitofp i32 %1561 to float
  %1563 = lshr i32 %1560, 8
  %1564 = and i32 %1563, 255
  %1565 = uitofp i32 %1564 to float
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1427, float %1428, float %1429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = fmul fast float %1565, %1566
  %1568 = fadd fast float %1567, %1562
  %1569 = fmul fast float %1568, 0x3F70101020000000
  %1570 = call float @dx.op.unary.f32(i32 7, float %1569)  ; Saturate(value)
  br i1 %911, label %1571, label %1579

; <label>:1571                                    ; preds = %1554
  %1572 = fsub fast float 1.000000e+00, %1207
  %1573 = fmul fast float %1572, %899
  %1574 = fmul fast float %1572, %900
  %1575 = fmul fast float %1572, %901
  %1576 = fmul fast float %1572, %902
  %1577 = fmul fast float %1572, %903
  %1578 = fmul fast float %1572, %904
  br label %1579

; <label>:1579                                    ; preds = %1571, %1554
  %1580 = phi float [ %1573, %1571 ], [ %899, %1554 ]
  %1581 = phi float [ %1574, %1571 ], [ %900, %1554 ]
  %1582 = phi float [ %1575, %1571 ], [ %901, %1554 ]
  %1583 = phi float [ %1576, %1571 ], [ %902, %1554 ]
  %1584 = phi float [ %1577, %1571 ], [ %903, %1554 ]
  %1585 = phi float [ %1578, %1571 ], [ %904, %1554 ]
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 3
  %1589 = icmp eq i32 %1588, 3
  br i1 %1589, label %1668, label %1590

; <label>:1590                                    ; preds = %1579
  %1591 = and i32 %1587, 16
  %1592 = icmp ne i32 %1591, 0
  %1593 = select i1 %1592, float %1207, float 0.000000e+00
  %1594 = icmp eq i32 %1588, 0
  br i1 %1594, label %1595, label %1623

; <label>:1595                                    ; preds = %1590
  %1596 = and i32 %1587, 64
  %1597 = icmp ne i32 %1596, 0
  %1598 = select i1 %1597, float %1207, float 0.000000e+00
  %1599 = fsub fast float %1427, %1580
  %1600 = fsub fast float %1428, %1581
  %1601 = fsub fast float %1429, %1582
  %1602 = fmul fast float %1593, %1599
  %1603 = fmul fast float %1593, %1600
  %1604 = fmul fast float %1593, %1601
  %1605 = fadd fast float %1602, %1580
  %1606 = fadd fast float %1603, %1581
  %1607 = fadd fast float %1604, %1582
  %1608 = fsub fast float %1413, %905
  %1609 = fmul fast float %1593, %1608
  %1610 = fadd fast float %1609, %905
  %1611 = fsub fast float %1555, %1583
  %1612 = fsub fast float %1556, %1584
  %1613 = fsub fast float %1557, %1585
  %1614 = fmul fast float %1598, %1611
  %1615 = fmul fast float %1598, %1612
  %1616 = fmul fast float %1598, %1613
  %1617 = fadd fast float %1614, %1583
  %1618 = fadd fast float %1615, %1584
  %1619 = fadd fast float %1616, %1585
  %1620 = fsub fast float %1570, %909
  %1621 = fmul fast float %1593, %1620
  %1622 = fadd fast float %1621, %909
  br label %1668

; <label>:1623                                    ; preds = %1590
  %1624 = icmp eq i32 %1588, 1
  br i1 %1624, label %1625, label %1638

; <label>:1625                                    ; preds = %1623
  %1626 = fadd fast float %1427, -1.000000e+00
  %1627 = fadd fast float %1428, -1.000000e+00
  %1628 = fadd fast float %1429, -1.000000e+00
  %1629 = fmul fast float %1593, %1626
  %1630 = fmul fast float %1593, %1627
  %1631 = fmul fast float %1593, %1628
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fadd fast float %1630, 1.000000e+00
  %1634 = fadd fast float %1631, 1.000000e+00
  %1635 = fmul fast float %1632, %1580
  %1636 = fmul fast float %1633, %1581
  %1637 = fmul fast float %1634, %1582
  br label %1668

; <label>:1638                                    ; preds = %1623
  %1639 = icmp eq i32 %1588, 2
  br i1 %1639, label %1640, label %1668

; <label>:1640                                    ; preds = %1638
  %1641 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1642 = call float @dx.op.unary.f32(i32 24, float %1428)  ; Sqrt(value)
  %1643 = call float @dx.op.unary.f32(i32 24, float %1429)  ; Sqrt(value)
  %1644 = fadd fast float %1641, -5.000000e-01
  %1645 = fadd fast float %1642, -5.000000e-01
  %1646 = fadd fast float %1643, -5.000000e-01
  %1647 = fmul fast float %1644, %1593
  %1648 = fmul fast float %1645, %1593
  %1649 = fmul fast float %1646, %1593
  %1650 = fadd fast float %1647, 5.000000e-01
  %1651 = fadd fast float %1648, 5.000000e-01
  %1652 = fadd fast float %1649, 5.000000e-01
  %1653 = fmul fast float %1650, 2.000000e+00
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1654, %1580
  %1656 = fadd fast float %1655, %1653
  %1657 = fmul fast float %1656, %1580
  %1658 = fmul fast float %1651, 2.000000e+00
  %1659 = fsub fast float 1.000000e+00, %1658
  %1660 = fmul fast float %1659, %1581
  %1661 = fadd fast float %1660, %1658
  %1662 = fmul fast float %1661, %1581
  %1663 = fmul fast float %1652, 2.000000e+00
  %1664 = fsub fast float 1.000000e+00, %1663
  %1665 = fmul fast float %1664, %1582
  %1666 = fadd fast float %1665, %1663
  %1667 = fmul fast float %1666, %1582
  br label %1668

; <label>:1668                                    ; preds = %1640, %1638, %1625, %1595, %1579
  %1669 = phi float [ %1580, %1579 ], [ %1657, %1640 ], [ %1580, %1638 ], [ %1635, %1625 ], [ %1605, %1595 ]
  %1670 = phi float [ %1581, %1579 ], [ %1662, %1640 ], [ %1581, %1638 ], [ %1636, %1625 ], [ %1606, %1595 ]
  %1671 = phi float [ %1582, %1579 ], [ %1667, %1640 ], [ %1582, %1638 ], [ %1637, %1625 ], [ %1607, %1595 ]
  %1672 = phi float [ %1583, %1579 ], [ %1583, %1640 ], [ %1583, %1638 ], [ %1583, %1625 ], [ %1617, %1595 ]
  %1673 = phi float [ %1584, %1579 ], [ %1584, %1640 ], [ %1584, %1638 ], [ %1584, %1625 ], [ %1618, %1595 ]
  %1674 = phi float [ %1585, %1579 ], [ %1585, %1640 ], [ %1585, %1638 ], [ %1585, %1625 ], [ %1619, %1595 ]
  %1675 = phi float [ %905, %1579 ], [ %905, %1640 ], [ %905, %1638 ], [ %905, %1625 ], [ %1610, %1595 ]
  %1676 = phi float [ %909, %1579 ], [ %909, %1640 ], [ %909, %1638 ], [ %909, %1625 ], [ %1622, %1595 ]
  %1677 = and i32 %1587, 12
  %1678 = icmp eq i32 %1677, 12
  br i1 %1678, label %1751, label %1679

; <label>:1679                                    ; preds = %1668
  %1680 = and i32 %1587, 2097184
  %1681 = icmp eq i32 %1680, 2097184
  %1682 = select i1 %1681, float %1207, float 0.000000e+00
  %1683 = and i32 %1587, 4194336
  %1684 = icmp eq i32 %1683, 4194336
  %1685 = select i1 %1684, float %1207, float 0.000000e+00
  %1686 = and i32 %1587, 8388640
  %1687 = icmp eq i32 %1686, 8388640
  %1688 = select i1 %1687, float %1207, float 0.000000e+00
  %1689 = icmp eq i32 %1677, 0
  br i1 %1689, label %1690, label %1703

; <label>:1690                                    ; preds = %1679
  %1691 = fsub fast float %1508, %897
  %1692 = fsub fast float %1509, %898
  %1693 = fmul fast float %1682, %1691
  %1694 = fmul fast float %1682, %1692
  %1695 = fadd fast float %1693, %897
  %1696 = fadd fast float %1694, %898
  %1697 = fsub fast float %1510, %908
  %1698 = fmul fast float %1685, %1697
  %1699 = fadd fast float %1698, %908
  %1700 = fsub fast float %1507, %907
  %1701 = fmul fast float %1688, %1700
  %1702 = fadd fast float %1701, %907
  br label %1751

; <label>:1703                                    ; preds = %1679
  %1704 = icmp eq i32 %1677, 4
  br i1 %1704, label %1705, label %1737

; <label>:1705                                    ; preds = %1703
  %1706 = fmul fast float %1682, %1508
  %1707 = fmul fast float %1682, %1509
  %1708 = fadd fast float %1706, %897
  %1709 = fadd fast float %1707, %898
  %1710 = call float @dx.op.binary.f32(i32 36, float %908, float %1510)  ; FMin(a,b)
  %1711 = fsub fast float %1710, %908
  %1712 = fmul fast float %1711, %1685
  %1713 = fadd fast float %1712, %908
  %1714 = fadd fast float %1507, %907
  %1715 = fmul fast float %1714, 0x3FF337FAE0000000
  %1716 = fmul fast float %907, %907
  %1717 = fmul fast float %1507, %1507
  %1718 = fadd fast float %1717, %1716
  %1719 = fmul fast float %1718, 0x3FE5152B00000000
  %1720 = fmul fast float %907, 0xBFCC1F85E0000000
  %1721 = fmul fast float %1720, %1507
  %1722 = fadd fast float %1721, 0xBFE1363700000000
  %1723 = fadd fast float %1722, %1715
  %1724 = fsub fast float %1723, %1719
  %1725 = fmul fast float %1714, 0x3FBA6F0D00000000
  %1726 = fmul fast float %1718, 0x3FD0432880000000
  %1727 = fmul fast float %907, 0xBFEF110800000000
  %1728 = fmul fast float %1727, %1507
  %1729 = fadd fast float %1728, 1.000000e+00
  %1730 = fsub fast float %1729, %1725
  %1731 = fadd fast float %1730, %1726
  %1732 = fdiv fast float %1724, %1731
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1734 = fsub fast float %1733, %907
  %1735 = fmul fast float %1734, %1688
  %1736 = fadd fast float %1735, %907
  br label %1751

; <label>:1737                                    ; preds = %1703
  %1738 = icmp eq i32 %1677, 8
  br i1 %1738, label %1739, label %1751

; <label>:1739                                    ; preds = %1737
  %1740 = fmul fast float %1682, %1508
  %1741 = fmul fast float %1682, %1509
  %1742 = fadd fast float %1740, %897
  %1743 = fadd fast float %1741, %898
  %1744 = call float @dx.op.binary.f32(i32 36, float %908, float %1510)  ; FMin(a,b)
  %1745 = fsub fast float %1744, %908
  %1746 = fmul fast float %1745, %1685
  %1747 = fadd fast float %1746, %908
  %1748 = fsub fast float %1507, %907
  %1749 = fmul fast float %1688, %1748
  %1750 = fadd fast float %1749, %907
  br label %1751

; <label>:1751                                    ; preds = %1739, %1737, %1705, %1690, %1668, %1206, %910, %896
  %1752 = phi float [ %897, %1668 ], [ %897, %1206 ], [ %897, %896 ], [ %1742, %1739 ], [ %897, %1737 ], [ %1708, %1705 ], [ %1695, %1690 ], [ %897, %910 ]
  %1753 = phi float [ %898, %1668 ], [ %898, %1206 ], [ %898, %896 ], [ %1743, %1739 ], [ %898, %1737 ], [ %1709, %1705 ], [ %1696, %1690 ], [ %898, %910 ]
  %1754 = phi float [ %1669, %1668 ], [ %899, %1206 ], [ %899, %896 ], [ %1669, %1739 ], [ %1669, %1737 ], [ %1669, %1705 ], [ %1669, %1690 ], [ %899, %910 ]
  %1755 = phi float [ %1670, %1668 ], [ %900, %1206 ], [ %900, %896 ], [ %1670, %1739 ], [ %1670, %1737 ], [ %1670, %1705 ], [ %1670, %1690 ], [ %900, %910 ]
  %1756 = phi float [ %1671, %1668 ], [ %901, %1206 ], [ %901, %896 ], [ %1671, %1739 ], [ %1671, %1737 ], [ %1671, %1705 ], [ %1671, %1690 ], [ %901, %910 ]
  %1757 = phi float [ %1672, %1668 ], [ %902, %1206 ], [ %902, %896 ], [ %1672, %1739 ], [ %1672, %1737 ], [ %1672, %1705 ], [ %1672, %1690 ], [ %902, %910 ]
  %1758 = phi float [ %1673, %1668 ], [ %903, %1206 ], [ %903, %896 ], [ %1673, %1739 ], [ %1673, %1737 ], [ %1673, %1705 ], [ %1673, %1690 ], [ %903, %910 ]
  %1759 = phi float [ %1674, %1668 ], [ %904, %1206 ], [ %904, %896 ], [ %1674, %1739 ], [ %1674, %1737 ], [ %1674, %1705 ], [ %1674, %1690 ], [ %904, %910 ]
  %1760 = phi float [ %1675, %1668 ], [ %905, %1206 ], [ %905, %896 ], [ %1675, %1739 ], [ %1675, %1737 ], [ %1675, %1705 ], [ %1675, %1690 ], [ %905, %910 ]
  %1761 = phi float [ %907, %1668 ], [ %907, %1206 ], [ %907, %896 ], [ %1750, %1739 ], [ %907, %1737 ], [ %1736, %1705 ], [ %1702, %1690 ], [ %907, %910 ]
  %1762 = phi float [ %908, %1668 ], [ %908, %1206 ], [ %908, %896 ], [ %1747, %1739 ], [ %908, %1737 ], [ %1713, %1705 ], [ %1699, %1690 ], [ %908, %910 ]
  %1763 = phi float [ %1676, %1668 ], [ %909, %1206 ], [ %909, %896 ], [ %1676, %1739 ], [ %1676, %1737 ], [ %1676, %1705 ], [ %1676, %1690 ], [ %909, %910 ]
  br i1 %376, label %2605, label %1764

; <label>:1764                                    ; preds = %1751
  %1765 = icmp ult i32 %429, 3
  %1766 = add i32 %45, 56
  %1767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1768 = extractvalue %dx.types.ResRet.i32 %1767, 0
  %1769 = add i32 %45, 60
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1769, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = or i32 %1771, %1768
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %2605, label %1774

; <label>:1774                                    ; preds = %1764
  %1775 = and i32 %1768, 262144
  %1776 = icmp ne i32 %1775, 0
  %1777 = select i1 %1776, float %49, float 1.000000e+00
  %1778 = select i1 %1776, float %50, float 0.000000e+00
  %1779 = select i1 %1776, float %51, float 0.000000e+00
  %1780 = select i1 %1776, float %52, float 1.000000e+00
  %1781 = select i1 %1776, float %53, float %74
  %1782 = select i1 %1776, float %54, float %75
  %1783 = add i32 %45, 316
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = lshr i32 %1785, 16
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = fmul fast float %1787, 0x3F50624DE0000000
  %1789 = add i32 %45, 120
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = lshr i32 %1791, 16
  %1793 = and i32 %1792, 255
  %1794 = lshr i32 %1791, 24
  %1795 = add i32 %45, 324
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1795, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = and i32 %1797, 65535
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = lshr i32 %1797, 16
  %1801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1800)  ; LegacyF16ToF32(value)
  %1802 = add i32 %45, 64
  %1803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.i32 %1803, 0
  %1805 = lshr i32 %1804, 22
  %1806 = shl nuw nsw i32 %1805, 5
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = shl i32 %1804, 4
  %1809 = and i32 %1808, 32752
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = lshr i32 %1804, 7
  %1812 = and i32 %1811, 32752
  %1813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1812)  ; LegacyF16ToF32(value)
  %1814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1815 = extractvalue %dx.types.CBufRet.f32 %1814, 3
  %1816 = fmul fast float %1815, 1.000000e+03
  %1817 = fmul fast float %326, %1816
  %1818 = call float @dx.op.unary.f32(i32 22, float %1817)  ; Frc(value)
  %1819 = fadd fast float %1818, %316
  %1820 = fmul fast float %327, %1816
  %1821 = call float @dx.op.unary.f32(i32 22, float %1820)  ; Frc(value)
  %1822 = fadd fast float %1821, %318
  %1823 = fmul fast float %1788, %1816
  %1824 = call float @dx.op.unary.f32(i32 22, float %1823)  ; Frc(value)
  %1825 = fmul fast float %1824, 0x401921FB60000000
  %1826 = fadd fast float %1825, %1807
  %1827 = call float @dx.op.unary.f32(i32 13, float %1826)  ; Sin(value)
  %1828 = call float @dx.op.unary.f32(i32 12, float %1826)  ; Cos(value)
  %1829 = fsub fast float -0.000000e+00, %1827
  %1830 = fadd fast float %1781, -5.000000e-01
  %1831 = fadd fast float %1782, -5.000000e-01
  %1832 = fmul fast float %1799, %1830
  %1833 = fmul fast float %1801, %1831
  %1834 = fadd fast float %1832, 5.000000e-01
  %1835 = fadd fast float %1833, 5.000000e-01
  %1836 = fmul fast float %1810, %1834
  %1837 = fmul fast float %1813, %1835
  %1838 = fmul fast float %1828, %1836
  %1839 = call float @dx.op.tertiary.f32(i32 46, float %1829, float %1837, float %1838)  ; FMad(a,b,c)
  %1840 = fmul fast float %1827, %1836
  %1841 = call float @dx.op.tertiary.f32(i32 46, float %1828, float %1837, float %1840)  ; FMad(a,b,c)
  %1842 = fadd fast float %1819, %1839
  %1843 = fadd fast float %1822, %1841
  %1844 = icmp ugt i32 %1793, 1
  %1845 = icmp ugt i32 %1791, 33554431
  %1846 = or i1 %1845, %1844
  br i1 %1846, label %1847, label %1872

; <label>:1847                                    ; preds = %1774
  %1848 = add i32 %45, 260
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = lshr i32 %1850, 16
  %1852 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1851)  ; LegacyF16ToF32(value)
  %1853 = fmul fast float %1815, %1852
  %1854 = call float @dx.op.unary.f32(i32 22, float %1853)  ; Frc(value)
  %1855 = mul nuw nsw i32 %1793, %1794
  %1856 = uitofp i32 %1855 to float
  %1857 = fmul fast float %1854, %1856
  %1858 = call float @dx.op.unary.f32(i32 27, float %1857)  ; Round_ni(value)
  %1859 = fptoui float %1858 to i32
  %1860 = urem i32 %1859, %1793
  %1861 = udiv i32 %1859, %1794
  %1862 = call float @dx.op.unary.f32(i32 22, float %1842)  ; Frc(value)
  %1863 = call float @dx.op.unary.f32(i32 22, float %1843)  ; Frc(value)
  %1864 = uitofp i32 %1860 to float
  %1865 = uitofp i32 %1861 to float
  %1866 = fadd fast float %1862, %1864
  %1867 = fadd fast float %1863, %1865
  %1868 = uitofp i32 %1793 to float
  %1869 = uitofp i32 %1794 to float
  %1870 = fdiv fast float %1866, %1868
  %1871 = fdiv fast float %1867, %1869
  br label %1872

; <label>:1872                                    ; preds = %1847, %1774
  %1873 = phi float [ %1870, %1847 ], [ %1842, %1774 ]
  %1874 = phi float [ %1871, %1847 ], [ %1843, %1774 ]
  %1875 = and i32 %1768, 16777216
  %1876 = icmp eq i32 %1875, 0
  br i1 %1876, label %1986, label %1877

; <label>:1877                                    ; preds = %1872
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.CBufRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.CBufRet.f32 %1878, 2
  %1882 = fadd fast float %1879, %145
  %1883 = fadd fast float %1880, %146
  %1884 = fadd fast float %1881, %147
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = call float @dx.op.unary.f32(i32 7, float %1886)  ; Saturate(value)
  %1888 = icmp eq i32 %46, 65535
  br i1 %1888, label %1983, label %1889

; <label>:1889                                    ; preds = %1877
  %1890 = lshr i32 %46, 1
  %1891 = shl i32 %1890, 2
  %1892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1893 = extractvalue %dx.types.ResRet.i32 %1892, 0
  %1894 = and i32 %46, 1
  %1895 = icmp ne i32 %1894, 0
  %1896 = lshr i32 %1893, 16
  %1897 = and i32 %1893, 65535
  %1898 = select i1 %1895, i32 %1896, i32 %1897
  %1899 = icmp eq i32 %1898, 65535
  br i1 %1899, label %1979, label %1900

; <label>:1900                                    ; preds = %1889
  %1901 = mul nuw nsw i32 %1898, 40
  %1902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = add nuw nsw i32 %1901, 12
  %1907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.ResRet.f32 %1907, 1
  %1910 = extractvalue %dx.types.ResRet.f32 %1907, 2
  %1911 = add nuw nsw i32 %1901, 24
  %1912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = extractvalue %dx.types.ResRet.f32 %1912, 1
  %1915 = extractvalue %dx.types.ResRet.f32 %1912, 2
  %1916 = add nuw nsw i32 %1901, 36
  %1917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.f32 %1917, 0
  %1919 = fsub fast float %1882, %1903
  %1920 = fsub fast float %1883, %1904
  %1921 = fsub fast float %1884, %1905
  %1922 = fmul fast float %1918, %1919
  %1923 = fmul fast float %1918, %1920
  %1924 = fmul fast float %1918, %1921
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1927 = call float @dx.op.unary.f32(i32 27, float %1924)  ; Round_ni(value)
  %1928 = fadd fast float %1925, 5.000000e-01
  %1929 = fadd fast float %1926, 5.000000e-01
  %1930 = fadd fast float %1927, 5.000000e-01
  %1931 = fmul fast float %1928, %1908
  %1932 = fmul fast float %1929, %1909
  %1933 = fmul fast float %1930, %1910
  %1934 = shl i32 %46, 2
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %1936, 0
  %1938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1939 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1940 = call float @dx.op.unary.f32(i32 22, float %1932)  ; Frc(value)
  %1941 = call float @dx.op.unary.f32(i32 22, float %1933)  ; Frc(value)
  %1942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1938, %dx.types.Handle %40, float %1939, float %1940, float %1941, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.ResRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.ResRet.f32 %1942, 2
  %1946 = fmul fast float %1943, 1.023000e+03
  %1947 = fmul fast float %1944, 1.023000e+03
  %1948 = fmul fast float %1945, 1.023000e+03
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = fadd fast float %1947, 5.000000e-01
  %1951 = fadd fast float %1948, 5.000000e-01
  %1952 = call float @dx.op.unary.f32(i32 27, float %1949)  ; Round_ni(value)
  %1953 = call float @dx.op.unary.f32(i32 27, float %1950)  ; Round_ni(value)
  %1954 = call float @dx.op.unary.f32(i32 27, float %1951)  ; Round_ni(value)
  %1955 = fsub fast float %1922, %1925
  %1956 = fsub fast float %1923, %1926
  %1957 = fsub fast float %1924, %1927
  %1958 = fmul fast float %1955, 7.500000e-01
  %1959 = fmul fast float %1956, 7.500000e-01
  %1960 = fmul fast float %1957, 7.500000e-01
  %1961 = fadd fast float %1925, 1.250000e-01
  %1962 = fadd fast float %1961, %1958
  %1963 = fadd fast float %1962, %1952
  %1964 = fadd fast float %1926, 1.250000e-01
  %1965 = fadd fast float %1964, %1959
  %1966 = fadd fast float %1965, %1953
  %1967 = fadd fast float %1927, 1.250000e-01
  %1968 = fadd fast float %1967, %1960
  %1969 = fadd fast float %1968, %1954
  %1970 = fmul fast float %1963, %1913
  %1971 = fmul fast float %1966, %1914
  %1972 = fmul fast float %1969, %1915
  %1973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.i32 %1973, 0
  %1975 = add i32 %1974, 0
  %1976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1976, %dx.types.Handle %38, float %1970, float %1971, float %1972, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  br label %1979

; <label>:1979                                    ; preds = %1900, %1889
  %1980 = phi float [ %1978, %1900 ], [ -1.000000e+00, %1889 ]
  %1981 = fadd fast float %1980, %1887
  %1982 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  br label %1983

; <label>:1983                                    ; preds = %1979, %1877
  %1984 = phi float [ %1982, %1979 ], [ %1887, %1877 ]
  %1985 = fmul fast float %1984, %425
  br label %1986

; <label>:1986                                    ; preds = %1983, %1872
  %1987 = phi float [ %1985, %1983 ], [ %425, %1872 ]
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = and i32 %1989, 256
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2038, label %1992

; <label>:1992                                    ; preds = %1986
  %1993 = add i32 %45, 464
  %1994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1995 = extractvalue %dx.types.ResRet.i32 %1994, 0
  %1996 = add i32 %1995, 0
  %1997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1997, %dx.types.Handle %83, float %1873, float %1874, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1999 = extractvalue %dx.types.ResRet.f32 %1998, 0
  %2000 = add i32 %45, 132
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = shl i32 %2002, 4
  %2004 = and i32 %2003, 32752
  %2005 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2004)  ; LegacyF16ToF32(value)
  %2006 = lshr i32 %2002, 7
  %2007 = and i32 %2006, 32752
  %2008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2007)  ; LegacyF16ToF32(value)
  %2009 = fsub fast float 1.000000e+00, %1987
  %2010 = call float @dx.op.binary.f32(i32 35, float %2009, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2011 = bitcast float %1987 to i32
  %2012 = sitofp i32 %2011 to float
  %2013 = fadd fast float %2012, 0xC1CFBF8940000000
  %2014 = fmul fast float %2008, %2013
  %2015 = fadd fast float %2014, 0x41CFBF8940000000
  %2016 = fptosi float %2015 to i32
  %2017 = bitcast i32 %2016 to float
  %2018 = bitcast float %2010 to i32
  %2019 = sitofp i32 %2018 to float
  %2020 = fadd fast float %2019, 0xC1CFBF8940000000
  %2021 = fmul fast float %2020, %2008
  %2022 = fadd fast float %2021, 0x41CFBF8940000000
  %2023 = fptosi float %2022 to i32
  %2024 = bitcast i32 %2023 to float
  %2025 = fmul fast float %2017, %2005
  %2026 = fmul fast float %2024, %2005
  %2027 = fsub fast float %2010, %2025
  %2028 = fadd fast float %2026, %2010
  %2029 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2030 = call float @dx.op.unary.f32(i32 7, float %2028)  ; Saturate(value)
  %2031 = fsub fast float %1999, %2029
  %2032 = fsub fast float %2030, %2029
  %2033 = bitcast float %2032 to i32
  %2034 = sub nsw i32 2129859010, %2033
  %2035 = bitcast i32 %2034 to float
  %2036 = fmul fast float %2035, %2031
  %2037 = call float @dx.op.unary.f32(i32 7, float %2036)  ; Saturate(value)
  br label %2038

; <label>:2038                                    ; preds = %1992, %1986
  %2039 = phi float [ %2037, %1992 ], [ %1987, %1986 ]
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, 128
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2060, label %2044

; <label>:2044                                    ; preds = %2038
  %2045 = add i32 %45, 448
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = add i32 %2047, 0
  %2049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2050 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2049, %dx.types.Handle %83, float %1873, float %1874, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 524288
  %2055 = icmp ne i32 %2054, 0
  %2056 = fcmp fast ogt float %2051, 0x3FE0101020000000
  %2057 = select i1 %2056, float 1.000000e+00, float 0.000000e+00
  %2058 = select i1 %2055, float %2057, float %2051
  %2059 = fmul fast float %2058, %2039
  br label %2060

; <label>:2060                                    ; preds = %2044, %2038
  %2061 = phi float [ %2059, %2044 ], [ %2039, %2038 ]
  %2062 = fcmp fast ult float %2061, 0x3F70101020000000
  br i1 %2062, label %2605, label %2063

; <label>:2063                                    ; preds = %2060
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = and i32 %2065, 16
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2266, label %2068

; <label>:2068                                    ; preds = %2063
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = add i32 %45, 400
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = add i32 %2073, 0
  %2075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2075, %dx.types.Handle %82, float %1873, float %1874, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = extractvalue %dx.types.ResRet.f32 %2076, 2
  %2080 = extractvalue %dx.types.ResRet.f32 %2076, 3
  %2081 = and i32 %2070, 255
  %2082 = uitofp i32 %2081 to float
  %2083 = lshr i32 %2070, 8
  %2084 = and i32 %2083, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = fmul fast float %2080, %2082
  %2087 = fadd fast float %2086, %2085
  %2088 = fmul fast float %2087, 0x3F70101000000000
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = and i32 %2090, 512
  %2092 = icmp eq i32 %2091, 0
  br i1 %2092, label %2101, label %2093

; <label>:2093                                    ; preds = %2068
  %2094 = add i32 %45, 480
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = add i32 %2096, 0
  %2098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2098, %dx.types.Handle %83, float %1873, float %1874, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  br label %2101

; <label>:2101                                    ; preds = %2093, %2068
  %2102 = phi float [ %2100, %2093 ], [ 1.000000e+00, %2068 ]
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = and i32 %2104, 33554432
  %2106 = icmp eq i32 %2105, 0
  br i1 %2106, label %2213, label %2107

; <label>:2107                                    ; preds = %2101
  %2108 = add i32 %45, 256
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 65535
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = lshr i32 %2110, 16
  %2114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2113)  ; LegacyF16ToF32(value)
  %2115 = add i32 %45, 260
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = and i32 %2117, 65535
  %2119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2118)  ; LegacyF16ToF32(value)
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = lshr i32 %2121, 24
  %2123 = uitofp i32 %2122 to float
  %2124 = fmul fast float %2123, 0x3F70101020000000
  %2125 = and i32 %2121, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = lshr i32 %2121, 8
  %2129 = and i32 %2128, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = lshr i32 %2121, 16
  %2133 = and i32 %2132, 255
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2134, 0x3F70101020000000
  %2136 = add i32 %45, 252
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2136, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = lshr i32 %2138, 24
  %2140 = uitofp i32 %2139 to float
  %2141 = fmul fast float %2140, 0x3F70101020000000
  %2142 = and i32 %2138, 255
  %2143 = uitofp i32 %2142 to float
  %2144 = fmul fast float %2143, 0x3F70101020000000
  %2145 = lshr i32 %2138, 8
  %2146 = and i32 %2145, 255
  %2147 = uitofp i32 %2146 to float
  %2148 = fmul fast float %2147, 0x3F70101020000000
  %2149 = lshr i32 %2138, 16
  %2150 = and i32 %2149, 255
  %2151 = uitofp i32 %2150 to float
  %2152 = fmul fast float %2151, 0x3F70101020000000
  %2153 = bitcast float %2077 to i32
  %2154 = ashr i32 %2153, 1
  %2155 = sub nsw i32 1597463174, %2154
  %2156 = bitcast i32 %2155 to float
  %2157 = fmul fast float %2077, 5.000000e-01
  %2158 = fmul fast float %2156, %2156
  %2159 = fmul fast float %2158, %2157
  %2160 = fsub fast float 1.500000e+00, %2159
  %2161 = fmul fast float %2156, %2077
  %2162 = fmul fast float %2161, %2160
  %2163 = bitcast float %2078 to i32
  %2164 = ashr i32 %2163, 1
  %2165 = sub nsw i32 1597463174, %2164
  %2166 = bitcast i32 %2165 to float
  %2167 = fmul fast float %2078, 5.000000e-01
  %2168 = fmul fast float %2166, %2166
  %2169 = fmul fast float %2168, %2167
  %2170 = fsub fast float 1.500000e+00, %2169
  %2171 = fmul fast float %2166, %2078
  %2172 = fmul fast float %2171, %2170
  %2173 = bitcast float %2079 to i32
  %2174 = ashr i32 %2173, 1
  %2175 = sub nsw i32 1597463174, %2174
  %2176 = bitcast i32 %2175 to float
  %2177 = fmul fast float %2079, 5.000000e-01
  %2178 = fmul fast float %2176, %2176
  %2179 = fmul fast float %2178, %2177
  %2180 = fsub fast float 1.500000e+00, %2179
  %2181 = fmul fast float %2176, %2079
  %2182 = fmul fast float %2181, %2180
  %2183 = fsub fast float %2162, %2144
  %2184 = fsub fast float %2172, %2148
  %2185 = fsub fast float %2182, %2152
  %2186 = fmul fast float %2183, %2112
  %2187 = fmul fast float %2184, %2114
  %2188 = fmul fast float %2185, %2119
  %2189 = fadd fast float %2186, %2127
  %2190 = fadd fast float %2187, %2131
  %2191 = fadd fast float %2188, %2135
  %2192 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2193 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2194 = call float @dx.op.unary.f32(i32 7, float %2191)  ; Saturate(value)
  %2195 = fmul fast float %2192, %2192
  %2196 = fmul fast float %2193, %2193
  %2197 = fmul fast float %2194, %2194
  %2198 = fsub fast float %2195, %2077
  %2199 = fsub fast float %2196, %2078
  %2200 = fsub fast float %2197, %2079
  %2201 = fmul fast float %2198, %2102
  %2202 = fmul fast float %2199, %2102
  %2203 = fmul fast float %2200, %2102
  %2204 = fadd fast float %2201, %2077
  %2205 = fadd fast float %2202, %2078
  %2206 = fadd fast float %2203, %2079
  %2207 = fadd fast float %2124, %2088
  %2208 = fsub fast float %2207, %2141
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fsub fast float %2209, %2088
  %2211 = fmul fast float %2210, %2102
  %2212 = fadd fast float %2211, %2088
  br label %2266

; <label>:2213                                    ; preds = %2101
  %2214 = and i32 %2104, 134217728
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2250, label %2216

; <label>:2216                                    ; preds = %2213
  %2217 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2218 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2219 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %2220 = fadd fast float %2217, -5.000000e-01
  %2221 = fadd fast float %2218, -5.000000e-01
  %2222 = fadd fast float %2219, -5.000000e-01
  %2223 = fmul fast float %2220, %2102
  %2224 = fmul fast float %2221, %2102
  %2225 = fmul fast float %2222, %2102
  %2226 = fadd fast float %2223, 5.000000e-01
  %2227 = fadd fast float %2224, 5.000000e-01
  %2228 = fadd fast float %2225, 5.000000e-01
  %2229 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2230 = call float @dx.op.unary.f32(i32 24, float %2078)  ; Sqrt(value)
  %2231 = call float @dx.op.unary.f32(i32 24, float %2079)  ; Sqrt(value)
  %2232 = fmul fast float %2226, 2.000000e+00
  %2233 = fsub fast float 1.000000e+00, %2232
  %2234 = fmul fast float %2233, %2229
  %2235 = fadd fast float %2234, %2232
  %2236 = fmul fast float %2235, %2229
  %2237 = fmul fast float %2227, 2.000000e+00
  %2238 = fsub fast float 1.000000e+00, %2237
  %2239 = fmul fast float %2238, %2230
  %2240 = fadd fast float %2239, %2237
  %2241 = fmul fast float %2240, %2230
  %2242 = fmul fast float %2228, 2.000000e+00
  %2243 = fsub fast float 1.000000e+00, %2242
  %2244 = fmul fast float %2243, %2231
  %2245 = fadd fast float %2244, %2242
  %2246 = fmul fast float %2245, %2231
  %2247 = fmul fast float %2236, %2236
  %2248 = fmul fast float %2241, %2241
  %2249 = fmul fast float %2246, %2246
  br label %2266

; <label>:2250                                    ; preds = %2213
  %2251 = fmul fast float %303, %303
  %2252 = fmul fast float %307, %307
  %2253 = fmul fast float %311, %311
  %2254 = fadd fast float %2251, -1.000000e+00
  %2255 = fadd fast float %2252, -1.000000e+00
  %2256 = fadd fast float %2253, -1.000000e+00
  %2257 = fmul fast float %2102, %2254
  %2258 = fmul fast float %2102, %2255
  %2259 = fmul fast float %2102, %2256
  %2260 = fadd fast float %2257, 1.000000e+00
  %2261 = fadd fast float %2258, 1.000000e+00
  %2262 = fadd fast float %2259, 1.000000e+00
  %2263 = fmul fast float %2260, %2077
  %2264 = fmul fast float %2261, %2078
  %2265 = fmul fast float %2262, %2079
  br label %2266

; <label>:2266                                    ; preds = %2250, %2216, %2107, %2063
  %2267 = phi float [ %2212, %2107 ], [ %2088, %2216 ], [ %2088, %2250 ], [ 0x3FA23C0BE0000000, %2063 ]
  %2268 = phi float [ %2204, %2107 ], [ %2247, %2216 ], [ %2263, %2250 ], [ 1.000000e+00, %2063 ]
  %2269 = phi float [ %2205, %2107 ], [ %2248, %2216 ], [ %2264, %2250 ], [ 1.000000e+00, %2063 ]
  %2270 = phi float [ %2206, %2107 ], [ %2249, %2216 ], [ %2265, %2250 ], [ 1.000000e+00, %2063 ]
  %2271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.i32 %2271, 1
  %2273 = and i32 %2272, 1
  %2274 = icmp ne i32 %2273, 0
  %2275 = add i32 %45, 356
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2275, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %2277, 32
  %2279 = icmp ne i32 %2278, 0
  %2280 = and i1 %2274, %2279
  %2281 = select i1 %2280, float 1.000000e+00, float %2268
  %2282 = select i1 %2280, float 0x3FD3333340000000, float %2269
  %2283 = select i1 %2280, float 0x3FD3333340000000, float %2270
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 32
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2360, label %2288

; <label>:2288                                    ; preds = %2266
  %2289 = add i32 %45, 124
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = add i32 %45, 416
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = add i32 %2294, 0
  %2296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2295, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2297 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2296, %dx.types.Handle %82, float %1873, float %1874, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = extractvalue %dx.types.ResRet.f32 %2297, 1
  %2300 = extractvalue %dx.types.ResRet.f32 %2297, 2
  %2301 = extractvalue %dx.types.ResRet.f32 %2297, 3
  %2302 = and i32 %2291, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = lshr i32 %2291, 8
  %2305 = and i32 %2304, 255
  %2306 = uitofp i32 %2305 to float
  %2307 = lshr i32 %2291, 16
  %2308 = and i32 %2307, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = fmul fast float %2309, 0x3F70101000000000
  %2311 = fmul fast float %2298, %2303
  %2312 = fadd fast float %2311, %2306
  %2313 = fmul fast float %2312, 0x3F70101000000000
  %2314 = fadd fast float %2299, -5.000000e-01
  %2315 = fadd fast float %2301, -5.000000e-01
  %2316 = fmul fast float %2314, %2310
  %2317 = fmul fast float %2315, %2310
  %2318 = fadd fast float %2316, 5.000000e-01
  %2319 = fadd fast float %2317, 5.000000e-01
  %2320 = fmul fast float %2318, 2.000000e+00
  %2321 = fadd fast float %2320, -1.000000e+00
  %2322 = fmul fast float %2319, 2.000000e+00
  %2323 = fadd fast float %2322, -1.000000e+00
  %2324 = fadd fast float %2321, %2323
  %2325 = fmul fast float %2324, 5.000000e-01
  %2326 = fsub fast float %2321, %2323
  %2327 = fmul fast float %2326, 5.000000e-01
  %2328 = call float @dx.op.unary.f32(i32 6, float %2325)  ; FAbs(value)
  %2329 = fsub fast float 1.000000e+00, %2328
  %2330 = call float @dx.op.unary.f32(i32 6, float %2327)  ; FAbs(value)
  %2331 = fsub fast float %2329, %2330
  %2332 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2327, float %2331, float %2325, float %2327, float %2331)  ; Dot3(ax,ay,az,bx,by,bz)
  %2333 = call float @dx.op.unary.f32(i32 25, float %2332)  ; Rsqrt(value)
  %2334 = fmul fast float %2325, %2333
  %2335 = fmul fast float %2327, %2333
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 67108864
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2356, label %2340

; <label>:2340                                    ; preds = %2288
  %2341 = add i32 %45, 312
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 65535
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 65535
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = lshr i32 %2343, 16
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = fsub fast float %2313, %2351
  %2353 = fmul fast float %2352, %2345
  %2354 = fadd fast float %2353, %2349
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  br label %2356

; <label>:2356                                    ; preds = %2340, %2288
  %2357 = phi float [ %2355, %2340 ], [ %2313, %2288 ]
  %2358 = call float @dx.op.dot2.f32(i32 54, float %2334, float %2335, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  %2359 = call float @dx.op.dot2.f32(i32 54, float %2334, float %2335, float %1779, float %1780)  ; Dot2(ax,ay,bx,by)
  br label %2360

; <label>:2360                                    ; preds = %2356, %2266
  %2361 = phi float [ %2357, %2356 ], [ 0x3FD6666660000000, %2266 ]
  %2362 = phi float [ %2358, %2356 ], [ 0.000000e+00, %2266 ]
  %2363 = phi float [ %2359, %2356 ], [ 0.000000e+00, %2266 ]
  %2364 = phi float [ %2300, %2356 ], [ 1.000000e+00, %2266 ]
  %2365 = add i32 %45, 192
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = lshr i32 %2367, 22
  %2369 = shl nuw nsw i32 %2368, 5
  %2370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2369)  ; LegacyF16ToF32(value)
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = and i32 %2372, 64
  %2374 = icmp eq i32 %2373, 0
  br i1 %2374, label %2408, label %2375

; <label>:2375                                    ; preds = %2360
  %2376 = add i32 %45, 432
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = add i32 %2378, 0
  %2380 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2379, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 131072
  %2384 = icmp eq i32 %2383, 0
  %2385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2380, %dx.types.Handle %82, float %1873, float %1874, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2386 = extractvalue %dx.types.ResRet.f32 %2385, 0
  %2387 = extractvalue %dx.types.ResRet.f32 %2385, 1
  %2388 = extractvalue %dx.types.ResRet.f32 %2385, 2
  %2389 = fmul fast float %2386, %291
  %2390 = fmul fast float %2387, %294
  %2391 = fmul fast float %2388, %297
  br i1 %2384, label %2398, label %2392

; <label>:2392                                    ; preds = %2375
  %2393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2394 = extractvalue %dx.types.CBufRet.f32 %2393, 0
  %2395 = fmul fast float %2394, %2389
  %2396 = fmul fast float %2394, %2390
  %2397 = fmul fast float %2394, %2391
  br label %2398

; <label>:2398                                    ; preds = %2392, %2375
  %2399 = phi float [ %2395, %2392 ], [ %2389, %2375 ]
  %2400 = phi float [ %2396, %2392 ], [ %2390, %2375 ]
  %2401 = phi float [ %2397, %2392 ], [ %2391, %2375 ]
  %2402 = fmul fast float %2399, %2370
  %2403 = select i1 %187, float %2402, float %2399
  %2404 = call float @dx.op.dot3.f32(i32 55, float %2403, float %2400, float %2401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2405 = select i1 %187, float 0.000000e+00, float %2399
  %2406 = select i1 %187, float %2404, float %2400
  %2407 = select i1 %187, float 0.000000e+00, float %2401
  br label %2408

; <label>:2408                                    ; preds = %2398, %2360
  %2409 = phi float [ %2405, %2398 ], [ 0.000000e+00, %2360 ]
  %2410 = phi float [ %2406, %2398 ], [ 0.000000e+00, %2360 ]
  %2411 = phi float [ %2407, %2398 ], [ 0.000000e+00, %2360 ]
  %2412 = add i32 %45, 128
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2412, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = lshr i32 %2414, 8
  %2418 = and i32 %2417, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = call float @dx.op.dot3.f32(i32 55, float %2281, float %2282, float %2283, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2421 = fmul fast float %2419, %2420
  %2422 = fadd fast float %2421, %2416
  %2423 = fmul fast float %2422, 0x3F70101020000000
  %2424 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  br i1 %1765, label %2425, label %2433

; <label>:2425                                    ; preds = %2408
  %2426 = fsub fast float 1.000000e+00, %2061
  %2427 = fmul fast float %2426, %1754
  %2428 = fmul fast float %2426, %1755
  %2429 = fmul fast float %2426, %1756
  %2430 = fmul fast float %2426, %1757
  %2431 = fmul fast float %2426, %1758
  %2432 = fmul fast float %2426, %1759
  br label %2433

; <label>:2433                                    ; preds = %2425, %2408
  %2434 = phi float [ %2427, %2425 ], [ %1754, %2408 ]
  %2435 = phi float [ %2428, %2425 ], [ %1755, %2408 ]
  %2436 = phi float [ %2429, %2425 ], [ %1756, %2408 ]
  %2437 = phi float [ %2430, %2425 ], [ %1757, %2408 ]
  %2438 = phi float [ %2431, %2425 ], [ %1758, %2408 ]
  %2439 = phi float [ %2432, %2425 ], [ %1759, %2408 ]
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 3
  %2443 = icmp eq i32 %2442, 3
  br i1 %2443, label %2522, label %2444

; <label>:2444                                    ; preds = %2433
  %2445 = and i32 %2441, 16
  %2446 = icmp ne i32 %2445, 0
  %2447 = select i1 %2446, float %2061, float 0.000000e+00
  %2448 = icmp eq i32 %2442, 0
  br i1 %2448, label %2449, label %2477

; <label>:2449                                    ; preds = %2444
  %2450 = and i32 %2441, 64
  %2451 = icmp ne i32 %2450, 0
  %2452 = select i1 %2451, float %2061, float 0.000000e+00
  %2453 = fsub fast float %2281, %2434
  %2454 = fsub fast float %2282, %2435
  %2455 = fsub fast float %2283, %2436
  %2456 = fmul fast float %2447, %2453
  %2457 = fmul fast float %2447, %2454
  %2458 = fmul fast float %2447, %2455
  %2459 = fadd fast float %2456, %2434
  %2460 = fadd fast float %2457, %2435
  %2461 = fadd fast float %2458, %2436
  %2462 = fsub fast float %2267, %1760
  %2463 = fmul fast float %2447, %2462
  %2464 = fadd fast float %2463, %1760
  %2465 = fsub fast float %2409, %2437
  %2466 = fsub fast float %2410, %2438
  %2467 = fsub fast float %2411, %2439
  %2468 = fmul fast float %2452, %2465
  %2469 = fmul fast float %2452, %2466
  %2470 = fmul fast float %2452, %2467
  %2471 = fadd fast float %2468, %2437
  %2472 = fadd fast float %2469, %2438
  %2473 = fadd fast float %2470, %2439
  %2474 = fsub fast float %2424, %1763
  %2475 = fmul fast float %2447, %2474
  %2476 = fadd fast float %2475, %1763
  br label %2522

; <label>:2477                                    ; preds = %2444
  %2478 = icmp eq i32 %2442, 1
  br i1 %2478, label %2479, label %2492

; <label>:2479                                    ; preds = %2477
  %2480 = fadd fast float %2281, -1.000000e+00
  %2481 = fadd fast float %2282, -1.000000e+00
  %2482 = fadd fast float %2283, -1.000000e+00
  %2483 = fmul fast float %2447, %2480
  %2484 = fmul fast float %2447, %2481
  %2485 = fmul fast float %2447, %2482
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fadd fast float %2484, 1.000000e+00
  %2488 = fadd fast float %2485, 1.000000e+00
  %2489 = fmul fast float %2486, %2434
  %2490 = fmul fast float %2487, %2435
  %2491 = fmul fast float %2488, %2436
  br label %2522

; <label>:2492                                    ; preds = %2477
  %2493 = icmp eq i32 %2442, 2
  br i1 %2493, label %2494, label %2522

; <label>:2494                                    ; preds = %2492
  %2495 = call float @dx.op.unary.f32(i32 24, float %2281)  ; Sqrt(value)
  %2496 = call float @dx.op.unary.f32(i32 24, float %2282)  ; Sqrt(value)
  %2497 = call float @dx.op.unary.f32(i32 24, float %2283)  ; Sqrt(value)
  %2498 = fadd fast float %2495, -5.000000e-01
  %2499 = fadd fast float %2496, -5.000000e-01
  %2500 = fadd fast float %2497, -5.000000e-01
  %2501 = fmul fast float %2498, %2447
  %2502 = fmul fast float %2499, %2447
  %2503 = fmul fast float %2500, %2447
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = fadd fast float %2502, 5.000000e-01
  %2506 = fadd fast float %2503, 5.000000e-01
  %2507 = fmul fast float %2504, 2.000000e+00
  %2508 = fsub fast float 1.000000e+00, %2507
  %2509 = fmul fast float %2508, %2434
  %2510 = fadd fast float %2509, %2507
  %2511 = fmul fast float %2510, %2434
  %2512 = fmul fast float %2505, 2.000000e+00
  %2513 = fsub fast float 1.000000e+00, %2512
  %2514 = fmul fast float %2513, %2435
  %2515 = fadd fast float %2514, %2512
  %2516 = fmul fast float %2515, %2435
  %2517 = fmul fast float %2506, 2.000000e+00
  %2518 = fsub fast float 1.000000e+00, %2517
  %2519 = fmul fast float %2518, %2436
  %2520 = fadd fast float %2519, %2517
  %2521 = fmul fast float %2520, %2436
  br label %2522

; <label>:2522                                    ; preds = %2494, %2492, %2479, %2449, %2433
  %2523 = phi float [ %2434, %2433 ], [ %2511, %2494 ], [ %2434, %2492 ], [ %2489, %2479 ], [ %2459, %2449 ]
  %2524 = phi float [ %2435, %2433 ], [ %2516, %2494 ], [ %2435, %2492 ], [ %2490, %2479 ], [ %2460, %2449 ]
  %2525 = phi float [ %2436, %2433 ], [ %2521, %2494 ], [ %2436, %2492 ], [ %2491, %2479 ], [ %2461, %2449 ]
  %2526 = phi float [ %2437, %2433 ], [ %2437, %2494 ], [ %2437, %2492 ], [ %2437, %2479 ], [ %2471, %2449 ]
  %2527 = phi float [ %2438, %2433 ], [ %2438, %2494 ], [ %2438, %2492 ], [ %2438, %2479 ], [ %2472, %2449 ]
  %2528 = phi float [ %2439, %2433 ], [ %2439, %2494 ], [ %2439, %2492 ], [ %2439, %2479 ], [ %2473, %2449 ]
  %2529 = phi float [ %1760, %2433 ], [ %1760, %2494 ], [ %1760, %2492 ], [ %1760, %2479 ], [ %2464, %2449 ]
  %2530 = phi float [ %1763, %2433 ], [ %1763, %2494 ], [ %1763, %2492 ], [ %1763, %2479 ], [ %2476, %2449 ]
  %2531 = and i32 %2441, 12
  %2532 = icmp eq i32 %2531, 12
  br i1 %2532, label %2605, label %2533

; <label>:2533                                    ; preds = %2522
  %2534 = and i32 %2441, 2097184
  %2535 = icmp eq i32 %2534, 2097184
  %2536 = select i1 %2535, float %2061, float 0.000000e+00
  %2537 = and i32 %2441, 4194336
  %2538 = icmp eq i32 %2537, 4194336
  %2539 = select i1 %2538, float %2061, float 0.000000e+00
  %2540 = and i32 %2441, 8388640
  %2541 = icmp eq i32 %2540, 8388640
  %2542 = select i1 %2541, float %2061, float 0.000000e+00
  %2543 = icmp eq i32 %2531, 0
  br i1 %2543, label %2544, label %2557

; <label>:2544                                    ; preds = %2533
  %2545 = fsub fast float %2362, %1752
  %2546 = fsub fast float %2363, %1753
  %2547 = fmul fast float %2536, %2545
  %2548 = fmul fast float %2536, %2546
  %2549 = fadd fast float %2547, %1752
  %2550 = fadd fast float %2548, %1753
  %2551 = fsub fast float %2364, %1762
  %2552 = fmul fast float %2539, %2551
  %2553 = fadd fast float %2552, %1762
  %2554 = fsub fast float %2361, %1761
  %2555 = fmul fast float %2542, %2554
  %2556 = fadd fast float %2555, %1761
  br label %2605

; <label>:2557                                    ; preds = %2533
  %2558 = icmp eq i32 %2531, 4
  br i1 %2558, label %2559, label %2591

; <label>:2559                                    ; preds = %2557
  %2560 = fmul fast float %2536, %2362
  %2561 = fmul fast float %2536, %2363
  %2562 = fadd fast float %2560, %1752
  %2563 = fadd fast float %2561, %1753
  %2564 = call float @dx.op.binary.f32(i32 36, float %1762, float %2364)  ; FMin(a,b)
  %2565 = fsub fast float %2564, %1762
  %2566 = fmul fast float %2565, %2539
  %2567 = fadd fast float %2566, %1762
  %2568 = fadd fast float %2361, %1761
  %2569 = fmul fast float %2568, 0x3FF337FAE0000000
  %2570 = fmul fast float %1761, %1761
  %2571 = fmul fast float %2361, %2361
  %2572 = fadd fast float %2571, %2570
  %2573 = fmul fast float %2572, 0x3FE5152B00000000
  %2574 = fmul fast float %1761, 0xBFCC1F85E0000000
  %2575 = fmul fast float %2574, %2361
  %2576 = fadd fast float %2575, 0xBFE1363700000000
  %2577 = fadd fast float %2576, %2569
  %2578 = fsub fast float %2577, %2573
  %2579 = fmul fast float %2568, 0x3FBA6F0D00000000
  %2580 = fmul fast float %2572, 0x3FD0432880000000
  %2581 = fmul fast float %1761, 0xBFEF110800000000
  %2582 = fmul fast float %2581, %2361
  %2583 = fadd fast float %2582, 1.000000e+00
  %2584 = fsub fast float %2583, %2579
  %2585 = fadd fast float %2584, %2580
  %2586 = fdiv fast float %2578, %2585
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  %2588 = fsub fast float %2587, %1761
  %2589 = fmul fast float %2588, %2542
  %2590 = fadd fast float %2589, %1761
  br label %2605

; <label>:2591                                    ; preds = %2557
  %2592 = icmp eq i32 %2531, 8
  br i1 %2592, label %2593, label %2605

; <label>:2593                                    ; preds = %2591
  %2594 = fmul fast float %2536, %2362
  %2595 = fmul fast float %2536, %2363
  %2596 = fadd fast float %2594, %1752
  %2597 = fadd fast float %2595, %1753
  %2598 = call float @dx.op.binary.f32(i32 36, float %1762, float %2364)  ; FMin(a,b)
  %2599 = fsub fast float %2598, %1762
  %2600 = fmul fast float %2599, %2539
  %2601 = fadd fast float %2600, %1762
  %2602 = fsub fast float %2361, %1761
  %2603 = fmul fast float %2542, %2602
  %2604 = fadd fast float %2603, %1761
  br label %2605

; <label>:2605                                    ; preds = %2593, %2591, %2559, %2544, %2522, %2060, %1764, %1751
  %2606 = phi float [ %1752, %2522 ], [ %1752, %2060 ], [ %1752, %1751 ], [ %2596, %2593 ], [ %1752, %2591 ], [ %2562, %2559 ], [ %2549, %2544 ], [ %1752, %1764 ]
  %2607 = phi float [ %1753, %2522 ], [ %1753, %2060 ], [ %1753, %1751 ], [ %2597, %2593 ], [ %1753, %2591 ], [ %2563, %2559 ], [ %2550, %2544 ], [ %1753, %1764 ]
  %2608 = phi float [ %2523, %2522 ], [ %1754, %2060 ], [ %1754, %1751 ], [ %2523, %2593 ], [ %2523, %2591 ], [ %2523, %2559 ], [ %2523, %2544 ], [ %1754, %1764 ]
  %2609 = phi float [ %2524, %2522 ], [ %1755, %2060 ], [ %1755, %1751 ], [ %2524, %2593 ], [ %2524, %2591 ], [ %2524, %2559 ], [ %2524, %2544 ], [ %1755, %1764 ]
  %2610 = phi float [ %2525, %2522 ], [ %1756, %2060 ], [ %1756, %1751 ], [ %2525, %2593 ], [ %2525, %2591 ], [ %2525, %2559 ], [ %2525, %2544 ], [ %1756, %1764 ]
  %2611 = phi float [ %2526, %2522 ], [ %1757, %2060 ], [ %1757, %1751 ], [ %2526, %2593 ], [ %2526, %2591 ], [ %2526, %2559 ], [ %2526, %2544 ], [ %1757, %1764 ]
  %2612 = phi float [ %2527, %2522 ], [ %1758, %2060 ], [ %1758, %1751 ], [ %2527, %2593 ], [ %2527, %2591 ], [ %2527, %2559 ], [ %2527, %2544 ], [ %1758, %1764 ]
  %2613 = phi float [ %2528, %2522 ], [ %1759, %2060 ], [ %1759, %1751 ], [ %2528, %2593 ], [ %2528, %2591 ], [ %2528, %2559 ], [ %2528, %2544 ], [ %1759, %1764 ]
  %2614 = phi float [ %2529, %2522 ], [ %1760, %2060 ], [ %1760, %1751 ], [ %2529, %2593 ], [ %2529, %2591 ], [ %2529, %2559 ], [ %2529, %2544 ], [ %1760, %1764 ]
  %2615 = phi float [ %1761, %2522 ], [ %1761, %2060 ], [ %1761, %1751 ], [ %2604, %2593 ], [ %1761, %2591 ], [ %2590, %2559 ], [ %2556, %2544 ], [ %1761, %1764 ]
  %2616 = phi float [ %1762, %2522 ], [ %1762, %2060 ], [ %1762, %1751 ], [ %2601, %2593 ], [ %1762, %2591 ], [ %2567, %2559 ], [ %2553, %2544 ], [ %1762, %1764 ]
  %2617 = phi float [ %2530, %2522 ], [ %1763, %2060 ], [ %1763, %1751 ], [ %2530, %2593 ], [ %2530, %2591 ], [ %2530, %2559 ], [ %2530, %2544 ], [ %1763, %1764 ]
  br i1 %378, label %3459, label %2618

; <label>:2618                                    ; preds = %2605
  %2619 = icmp ult i32 %429, 4
  %2620 = add i32 %45, 72
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = add i32 %45, 76
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = or i32 %2625, %2622
  %2627 = icmp eq i32 %2626, 0
  br i1 %2627, label %3459, label %2628

; <label>:2628                                    ; preds = %2618
  %2629 = and i32 %2622, 262144
  %2630 = icmp ne i32 %2629, 0
  %2631 = select i1 %2630, float %49, float 1.000000e+00
  %2632 = select i1 %2630, float %50, float 0.000000e+00
  %2633 = select i1 %2630, float %51, float 0.000000e+00
  %2634 = select i1 %2630, float %52, float 1.000000e+00
  %2635 = select i1 %2630, float %53, float %74
  %2636 = select i1 %2630, float %54, float %75
  %2637 = add i32 %45, 332
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 16
  %2641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2640)  ; LegacyF16ToF32(value)
  %2642 = fmul fast float %2641, 0x3F50624DE0000000
  %2643 = add i32 %45, 136
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = lshr i32 %2645, 16
  %2647 = and i32 %2646, 255
  %2648 = lshr i32 %2645, 24
  %2649 = add i32 %45, 340
  %2650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2649, i32 undef)  ; BufferLoad(srv,index,wot)
  %2651 = extractvalue %dx.types.ResRet.i32 %2650, 0
  %2652 = and i32 %2651, 65535
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = lshr i32 %2651, 16
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = add i32 %45, 80
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2656, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = lshr i32 %2658, 22
  %2660 = shl nuw nsw i32 %2659, 5
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = shl i32 %2658, 4
  %2663 = and i32 %2662, 32752
  %2664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2663)  ; LegacyF16ToF32(value)
  %2665 = lshr i32 %2658, 7
  %2666 = and i32 %2665, 32752
  %2667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2666)  ; LegacyF16ToF32(value)
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 3
  %2670 = fmul fast float %2669, 1.000000e+03
  %2671 = fmul fast float %368, %2670
  %2672 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2673 = fadd fast float %2672, %358
  %2674 = fmul fast float %369, %2670
  %2675 = call float @dx.op.unary.f32(i32 22, float %2674)  ; Frc(value)
  %2676 = fadd fast float %2675, %360
  %2677 = fmul fast float %2642, %2670
  %2678 = call float @dx.op.unary.f32(i32 22, float %2677)  ; Frc(value)
  %2679 = fmul fast float %2678, 0x401921FB60000000
  %2680 = fadd fast float %2679, %2661
  %2681 = call float @dx.op.unary.f32(i32 13, float %2680)  ; Sin(value)
  %2682 = call float @dx.op.unary.f32(i32 12, float %2680)  ; Cos(value)
  %2683 = fsub fast float -0.000000e+00, %2681
  %2684 = fadd fast float %2635, -5.000000e-01
  %2685 = fadd fast float %2636, -5.000000e-01
  %2686 = fmul fast float %2653, %2684
  %2687 = fmul fast float %2655, %2685
  %2688 = fadd fast float %2686, 5.000000e-01
  %2689 = fadd fast float %2687, 5.000000e-01
  %2690 = fmul fast float %2664, %2688
  %2691 = fmul fast float %2667, %2689
  %2692 = fmul fast float %2682, %2690
  %2693 = call float @dx.op.tertiary.f32(i32 46, float %2683, float %2691, float %2692)  ; FMad(a,b,c)
  %2694 = fmul fast float %2681, %2690
  %2695 = call float @dx.op.tertiary.f32(i32 46, float %2682, float %2691, float %2694)  ; FMad(a,b,c)
  %2696 = fadd fast float %2673, %2693
  %2697 = fadd fast float %2676, %2695
  %2698 = icmp ugt i32 %2647, 1
  %2699 = icmp ugt i32 %2645, 33554431
  %2700 = or i1 %2699, %2698
  br i1 %2700, label %2701, label %2726

; <label>:2701                                    ; preds = %2628
  %2702 = add i32 %45, 276
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = lshr i32 %2704, 16
  %2706 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2705)  ; LegacyF16ToF32(value)
  %2707 = fmul fast float %2669, %2706
  %2708 = call float @dx.op.unary.f32(i32 22, float %2707)  ; Frc(value)
  %2709 = mul nuw nsw i32 %2647, %2648
  %2710 = uitofp i32 %2709 to float
  %2711 = fmul fast float %2708, %2710
  %2712 = call float @dx.op.unary.f32(i32 27, float %2711)  ; Round_ni(value)
  %2713 = fptoui float %2712 to i32
  %2714 = urem i32 %2713, %2647
  %2715 = udiv i32 %2713, %2648
  %2716 = call float @dx.op.unary.f32(i32 22, float %2696)  ; Frc(value)
  %2717 = call float @dx.op.unary.f32(i32 22, float %2697)  ; Frc(value)
  %2718 = uitofp i32 %2714 to float
  %2719 = uitofp i32 %2715 to float
  %2720 = fadd fast float %2716, %2718
  %2721 = fadd fast float %2717, %2719
  %2722 = uitofp i32 %2647 to float
  %2723 = uitofp i32 %2648 to float
  %2724 = fdiv fast float %2720, %2722
  %2725 = fdiv fast float %2721, %2723
  br label %2726

; <label>:2726                                    ; preds = %2701, %2628
  %2727 = phi float [ %2724, %2701 ], [ %2696, %2628 ]
  %2728 = phi float [ %2725, %2701 ], [ %2697, %2628 ]
  %2729 = and i32 %2622, 16777216
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2840, label %2731

; <label>:2731                                    ; preds = %2726
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2735 = extractvalue %dx.types.CBufRet.f32 %2732, 2
  %2736 = fadd fast float %2733, %145
  %2737 = fadd fast float %2734, %146
  %2738 = fadd fast float %2735, %147
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = call float @dx.op.unary.f32(i32 7, float %2740)  ; Saturate(value)
  %2742 = icmp eq i32 %46, 65535
  br i1 %2742, label %2837, label %2743

; <label>:2743                                    ; preds = %2731
  %2744 = lshr i32 %46, 1
  %2745 = shl i32 %2744, 2
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %46, 1
  %2749 = icmp ne i32 %2748, 0
  %2750 = lshr i32 %2747, 16
  %2751 = and i32 %2747, 65535
  %2752 = select i1 %2749, i32 %2750, i32 %2751
  %2753 = icmp eq i32 %2752, 65535
  br i1 %2753, label %2833, label %2754

; <label>:2754                                    ; preds = %2743
  %2755 = mul nuw nsw i32 %2752, 40
  %2756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = add nuw nsw i32 %2755, 12
  %2761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.ResRet.f32 %2761, 1
  %2764 = extractvalue %dx.types.ResRet.f32 %2761, 2
  %2765 = add nuw nsw i32 %2755, 24
  %2766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = extractvalue %dx.types.ResRet.f32 %2766, 1
  %2769 = extractvalue %dx.types.ResRet.f32 %2766, 2
  %2770 = add nuw nsw i32 %2755, 36
  %2771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.f32 %2771, 0
  %2773 = fsub fast float %2736, %2757
  %2774 = fsub fast float %2737, %2758
  %2775 = fsub fast float %2738, %2759
  %2776 = fmul fast float %2772, %2773
  %2777 = fmul fast float %2772, %2774
  %2778 = fmul fast float %2772, %2775
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2781 = call float @dx.op.unary.f32(i32 27, float %2778)  ; Round_ni(value)
  %2782 = fadd fast float %2779, 5.000000e-01
  %2783 = fadd fast float %2780, 5.000000e-01
  %2784 = fadd fast float %2781, 5.000000e-01
  %2785 = fmul fast float %2782, %2762
  %2786 = fmul fast float %2783, %2763
  %2787 = fmul fast float %2784, %2764
  %2788 = shl i32 %46, 2
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = add i32 %2790, 0
  %2792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2793 = call float @dx.op.unary.f32(i32 22, float %2785)  ; Frc(value)
  %2794 = call float @dx.op.unary.f32(i32 22, float %2786)  ; Frc(value)
  %2795 = call float @dx.op.unary.f32(i32 22, float %2787)  ; Frc(value)
  %2796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2792, %dx.types.Handle %40, float %2793, float %2794, float %2795, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2797 = extractvalue %dx.types.ResRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.ResRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.ResRet.f32 %2796, 2
  %2800 = fmul fast float %2797, 1.023000e+03
  %2801 = fmul fast float %2798, 1.023000e+03
  %2802 = fmul fast float %2799, 1.023000e+03
  %2803 = fadd fast float %2800, 5.000000e-01
  %2804 = fadd fast float %2801, 5.000000e-01
  %2805 = fadd fast float %2802, 5.000000e-01
  %2806 = call float @dx.op.unary.f32(i32 27, float %2803)  ; Round_ni(value)
  %2807 = call float @dx.op.unary.f32(i32 27, float %2804)  ; Round_ni(value)
  %2808 = call float @dx.op.unary.f32(i32 27, float %2805)  ; Round_ni(value)
  %2809 = fsub fast float %2776, %2779
  %2810 = fsub fast float %2777, %2780
  %2811 = fsub fast float %2778, %2781
  %2812 = fmul fast float %2809, 7.500000e-01
  %2813 = fmul fast float %2810, 7.500000e-01
  %2814 = fmul fast float %2811, 7.500000e-01
  %2815 = fadd fast float %2779, 1.250000e-01
  %2816 = fadd fast float %2815, %2812
  %2817 = fadd fast float %2816, %2806
  %2818 = fadd fast float %2780, 1.250000e-01
  %2819 = fadd fast float %2818, %2813
  %2820 = fadd fast float %2819, %2807
  %2821 = fadd fast float %2781, 1.250000e-01
  %2822 = fadd fast float %2821, %2814
  %2823 = fadd fast float %2822, %2808
  %2824 = fmul fast float %2817, %2767
  %2825 = fmul fast float %2820, %2768
  %2826 = fmul fast float %2823, %2769
  %2827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2828 = extractvalue %dx.types.ResRet.i32 %2827, 0
  %2829 = add i32 %2828, 0
  %2830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2830, %dx.types.Handle %38, float %2824, float %2825, float %2826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2832 = extractvalue %dx.types.ResRet.f32 %2831, 0
  br label %2833

; <label>:2833                                    ; preds = %2754, %2743
  %2834 = phi float [ %2832, %2754 ], [ -1.000000e+00, %2743 ]
  %2835 = fadd fast float %2834, %2741
  %2836 = call float @dx.op.unary.f32(i32 7, float %2835)  ; Saturate(value)
  br label %2837

; <label>:2837                                    ; preds = %2833, %2731
  %2838 = phi float [ %2836, %2833 ], [ %2741, %2731 ]
  %2839 = fmul fast float %2838, %424
  br label %2840

; <label>:2840                                    ; preds = %2837, %2726
  %2841 = phi float [ %2839, %2837 ], [ %424, %2726 ]
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = and i32 %2843, 256
  %2845 = icmp eq i32 %2844, 0
  br i1 %2845, label %2892, label %2846

; <label>:2846                                    ; preds = %2840
  %2847 = add i32 %45, 468
  %2848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2849 = extractvalue %dx.types.ResRet.i32 %2848, 0
  %2850 = add i32 %2849, 0
  %2851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2851, %dx.types.Handle %83, float %2727, float %2728, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2853 = extractvalue %dx.types.ResRet.f32 %2852, 0
  %2854 = add i32 %45, 148
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = shl i32 %2856, 4
  %2858 = and i32 %2857, 32752
  %2859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2858)  ; LegacyF16ToF32(value)
  %2860 = lshr i32 %2856, 7
  %2861 = and i32 %2860, 32752
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = fsub fast float 1.000000e+00, %2841
  %2864 = call float @dx.op.binary.f32(i32 35, float %2863, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2865 = bitcast float %2841 to i32
  %2866 = sitofp i32 %2865 to float
  %2867 = fadd fast float %2866, 0xC1CFBF8940000000
  %2868 = fmul fast float %2862, %2867
  %2869 = fadd fast float %2868, 0x41CFBF8940000000
  %2870 = fptosi float %2869 to i32
  %2871 = bitcast i32 %2870 to float
  %2872 = bitcast float %2864 to i32
  %2873 = sitofp i32 %2872 to float
  %2874 = fadd fast float %2873, 0xC1CFBF8940000000
  %2875 = fmul fast float %2874, %2862
  %2876 = fadd fast float %2875, 0x41CFBF8940000000
  %2877 = fptosi float %2876 to i32
  %2878 = bitcast i32 %2877 to float
  %2879 = fmul fast float %2871, %2859
  %2880 = fmul fast float %2878, %2859
  %2881 = fsub fast float %2864, %2879
  %2882 = fadd fast float %2880, %2864
  %2883 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2884 = call float @dx.op.unary.f32(i32 7, float %2882)  ; Saturate(value)
  %2885 = fsub fast float %2853, %2883
  %2886 = fsub fast float %2884, %2883
  %2887 = bitcast float %2886 to i32
  %2888 = sub nsw i32 2129859010, %2887
  %2889 = bitcast i32 %2888 to float
  %2890 = fmul fast float %2889, %2885
  %2891 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  br label %2892

; <label>:2892                                    ; preds = %2846, %2840
  %2893 = phi float [ %2891, %2846 ], [ %2841, %2840 ]
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 128
  %2897 = icmp eq i32 %2896, 0
  br i1 %2897, label %2914, label %2898

; <label>:2898                                    ; preds = %2892
  %2899 = add i32 %45, 452
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = add i32 %2901, 0
  %2903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2903, %dx.types.Handle %83, float %2727, float %2728, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 524288
  %2909 = icmp ne i32 %2908, 0
  %2910 = fcmp fast ogt float %2905, 0x3FE0101020000000
  %2911 = select i1 %2910, float 1.000000e+00, float 0.000000e+00
  %2912 = select i1 %2909, float %2911, float %2905
  %2913 = fmul fast float %2912, %2893
  br label %2914

; <label>:2914                                    ; preds = %2898, %2892
  %2915 = phi float [ %2913, %2898 ], [ %2893, %2892 ]
  %2916 = fcmp fast ult float %2915, 0x3F70101020000000
  br i1 %2916, label %3459, label %2917

; <label>:2917                                    ; preds = %2914
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = and i32 %2919, 16
  %2921 = icmp eq i32 %2920, 0
  br i1 %2921, label %3120, label %2922

; <label>:2922                                    ; preds = %2917
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = add i32 %45, 404
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = add i32 %2927, 0
  %2929 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2928, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2930 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2929, %dx.types.Handle %82, float %2727, float %2728, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2931 = extractvalue %dx.types.ResRet.f32 %2930, 0
  %2932 = extractvalue %dx.types.ResRet.f32 %2930, 1
  %2933 = extractvalue %dx.types.ResRet.f32 %2930, 2
  %2934 = extractvalue %dx.types.ResRet.f32 %2930, 3
  %2935 = and i32 %2924, 255
  %2936 = uitofp i32 %2935 to float
  %2937 = lshr i32 %2924, 8
  %2938 = and i32 %2937, 255
  %2939 = uitofp i32 %2938 to float
  %2940 = fmul fast float %2934, %2936
  %2941 = fadd fast float %2940, %2939
  %2942 = fmul fast float %2941, 0x3F70101000000000
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = and i32 %2944, 512
  %2946 = icmp eq i32 %2945, 0
  br i1 %2946, label %2955, label %2947

; <label>:2947                                    ; preds = %2922
  %2948 = add i32 %45, 484
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2948, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = add i32 %2950, 0
  %2952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2951, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2953 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2952, %dx.types.Handle %83, float %2727, float %2728, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2954 = extractvalue %dx.types.ResRet.f32 %2953, 0
  br label %2955

; <label>:2955                                    ; preds = %2947, %2922
  %2956 = phi float [ %2954, %2947 ], [ 1.000000e+00, %2922 ]
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 33554432
  %2960 = icmp eq i32 %2959, 0
  br i1 %2960, label %3067, label %2961

; <label>:2961                                    ; preds = %2955
  %2962 = add i32 %45, 272
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 65535
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = lshr i32 %2964, 16
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = add i32 %45, 276
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 65535
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.i32 %2974, 0
  %2976 = lshr i32 %2975, 24
  %2977 = uitofp i32 %2976 to float
  %2978 = fmul fast float %2977, 0x3F70101020000000
  %2979 = and i32 %2975, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = lshr i32 %2975, 8
  %2983 = and i32 %2982, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = lshr i32 %2975, 16
  %2987 = and i32 %2986, 255
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = add i32 %45, 268
  %2991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2990, i32 undef)  ; BufferLoad(srv,index,wot)
  %2992 = extractvalue %dx.types.ResRet.i32 %2991, 0
  %2993 = lshr i32 %2992, 24
  %2994 = uitofp i32 %2993 to float
  %2995 = fmul fast float %2994, 0x3F70101020000000
  %2996 = and i32 %2992, 255
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = lshr i32 %2992, 8
  %3000 = and i32 %2999, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = lshr i32 %2992, 16
  %3004 = and i32 %3003, 255
  %3005 = uitofp i32 %3004 to float
  %3006 = fmul fast float %3005, 0x3F70101020000000
  %3007 = bitcast float %2931 to i32
  %3008 = ashr i32 %3007, 1
  %3009 = sub nsw i32 1597463174, %3008
  %3010 = bitcast i32 %3009 to float
  %3011 = fmul fast float %2931, 5.000000e-01
  %3012 = fmul fast float %3010, %3010
  %3013 = fmul fast float %3012, %3011
  %3014 = fsub fast float 1.500000e+00, %3013
  %3015 = fmul fast float %3010, %2931
  %3016 = fmul fast float %3015, %3014
  %3017 = bitcast float %2932 to i32
  %3018 = ashr i32 %3017, 1
  %3019 = sub nsw i32 1597463174, %3018
  %3020 = bitcast i32 %3019 to float
  %3021 = fmul fast float %2932, 5.000000e-01
  %3022 = fmul fast float %3020, %3020
  %3023 = fmul fast float %3022, %3021
  %3024 = fsub fast float 1.500000e+00, %3023
  %3025 = fmul fast float %3020, %2932
  %3026 = fmul fast float %3025, %3024
  %3027 = bitcast float %2933 to i32
  %3028 = ashr i32 %3027, 1
  %3029 = sub nsw i32 1597463174, %3028
  %3030 = bitcast i32 %3029 to float
  %3031 = fmul fast float %2933, 5.000000e-01
  %3032 = fmul fast float %3030, %3030
  %3033 = fmul fast float %3032, %3031
  %3034 = fsub fast float 1.500000e+00, %3033
  %3035 = fmul fast float %3030, %2933
  %3036 = fmul fast float %3035, %3034
  %3037 = fsub fast float %3016, %2998
  %3038 = fsub fast float %3026, %3002
  %3039 = fsub fast float %3036, %3006
  %3040 = fmul fast float %3037, %2966
  %3041 = fmul fast float %3038, %2968
  %3042 = fmul fast float %3039, %2973
  %3043 = fadd fast float %3040, %2981
  %3044 = fadd fast float %3041, %2985
  %3045 = fadd fast float %3042, %2989
  %3046 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3047 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3048 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3049 = fmul fast float %3046, %3046
  %3050 = fmul fast float %3047, %3047
  %3051 = fmul fast float %3048, %3048
  %3052 = fsub fast float %3049, %2931
  %3053 = fsub fast float %3050, %2932
  %3054 = fsub fast float %3051, %2933
  %3055 = fmul fast float %3052, %2956
  %3056 = fmul fast float %3053, %2956
  %3057 = fmul fast float %3054, %2956
  %3058 = fadd fast float %3055, %2931
  %3059 = fadd fast float %3056, %2932
  %3060 = fadd fast float %3057, %2933
  %3061 = fadd fast float %2978, %2942
  %3062 = fsub fast float %3061, %2995
  %3063 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3064 = fsub fast float %3063, %2942
  %3065 = fmul fast float %3064, %2956
  %3066 = fadd fast float %3065, %2942
  br label %3120

; <label>:3067                                    ; preds = %2955
  %3068 = and i32 %2958, 134217728
  %3069 = icmp eq i32 %3068, 0
  br i1 %3069, label %3104, label %3070

; <label>:3070                                    ; preds = %3067
  %3071 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3072 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3073 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fadd fast float %3072, -5.000000e-01
  %3076 = fadd fast float %3073, -5.000000e-01
  %3077 = fmul fast float %3074, %2956
  %3078 = fmul fast float %3075, %2956
  %3079 = fmul fast float %3076, %2956
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = fadd fast float %3078, 5.000000e-01
  %3082 = fadd fast float %3079, 5.000000e-01
  %3083 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %3084 = call float @dx.op.unary.f32(i32 24, float %2932)  ; Sqrt(value)
  %3085 = call float @dx.op.unary.f32(i32 24, float %2933)  ; Sqrt(value)
  %3086 = fmul fast float %3080, 2.000000e+00
  %3087 = fsub fast float 1.000000e+00, %3086
  %3088 = fmul fast float %3087, %3083
  %3089 = fadd fast float %3088, %3086
  %3090 = fmul fast float %3089, %3083
  %3091 = fmul fast float %3081, 2.000000e+00
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = fmul fast float %3092, %3084
  %3094 = fadd fast float %3093, %3091
  %3095 = fmul fast float %3094, %3084
  %3096 = fmul fast float %3082, 2.000000e+00
  %3097 = fsub fast float 1.000000e+00, %3096
  %3098 = fmul fast float %3097, %3085
  %3099 = fadd fast float %3098, %3096
  %3100 = fmul fast float %3099, %3085
  %3101 = fmul fast float %3090, %3090
  %3102 = fmul fast float %3095, %3095
  %3103 = fmul fast float %3100, %3100
  br label %3120

; <label>:3104                                    ; preds = %3067
  %3105 = fmul fast float %345, %345
  %3106 = fmul fast float %349, %349
  %3107 = fmul fast float %353, %353
  %3108 = fadd fast float %3105, -1.000000e+00
  %3109 = fadd fast float %3106, -1.000000e+00
  %3110 = fadd fast float %3107, -1.000000e+00
  %3111 = fmul fast float %2956, %3108
  %3112 = fmul fast float %2956, %3109
  %3113 = fmul fast float %2956, %3110
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fadd fast float %3112, 1.000000e+00
  %3116 = fadd fast float %3113, 1.000000e+00
  %3117 = fmul fast float %3114, %2931
  %3118 = fmul fast float %3115, %2932
  %3119 = fmul fast float %3116, %2933
  br label %3120

; <label>:3120                                    ; preds = %3104, %3070, %2961, %2917
  %3121 = phi float [ %3066, %2961 ], [ %2942, %3070 ], [ %2942, %3104 ], [ 0x3FA23C0BE0000000, %2917 ]
  %3122 = phi float [ %3058, %2961 ], [ %3101, %3070 ], [ %3117, %3104 ], [ 1.000000e+00, %2917 ]
  %3123 = phi float [ %3059, %2961 ], [ %3102, %3070 ], [ %3118, %3104 ], [ 1.000000e+00, %2917 ]
  %3124 = phi float [ %3060, %2961 ], [ %3103, %3070 ], [ %3119, %3104 ], [ 1.000000e+00, %2917 ]
  %3125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3126 = extractvalue %dx.types.CBufRet.i32 %3125, 1
  %3127 = and i32 %3126, 1
  %3128 = icmp ne i32 %3127, 0
  %3129 = add i32 %45, 356
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = and i32 %3131, 32
  %3133 = icmp ne i32 %3132, 0
  %3134 = and i1 %3128, %3133
  %3135 = select i1 %3134, float 1.000000e+00, float %3122
  %3136 = select i1 %3134, float 0x3FD3333340000000, float %3123
  %3137 = select i1 %3134, float 0x3FD3333340000000, float %3124
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 32
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3214, label %3142

; <label>:3142                                    ; preds = %3120
  %3143 = add i32 %45, 140
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = add i32 %45, 420
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = add i32 %3148, 0
  %3150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3150, %dx.types.Handle %82, float %2727, float %2728, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3152 = extractvalue %dx.types.ResRet.f32 %3151, 0
  %3153 = extractvalue %dx.types.ResRet.f32 %3151, 1
  %3154 = extractvalue %dx.types.ResRet.f32 %3151, 2
  %3155 = extractvalue %dx.types.ResRet.f32 %3151, 3
  %3156 = and i32 %3145, 255
  %3157 = uitofp i32 %3156 to float
  %3158 = lshr i32 %3145, 8
  %3159 = and i32 %3158, 255
  %3160 = uitofp i32 %3159 to float
  %3161 = lshr i32 %3145, 16
  %3162 = and i32 %3161, 255
  %3163 = uitofp i32 %3162 to float
  %3164 = fmul fast float %3163, 0x3F70101000000000
  %3165 = fmul fast float %3152, %3157
  %3166 = fadd fast float %3165, %3160
  %3167 = fmul fast float %3166, 0x3F70101000000000
  %3168 = fadd fast float %3153, -5.000000e-01
  %3169 = fadd fast float %3155, -5.000000e-01
  %3170 = fmul fast float %3168, %3164
  %3171 = fmul fast float %3169, %3164
  %3172 = fadd fast float %3170, 5.000000e-01
  %3173 = fadd fast float %3171, 5.000000e-01
  %3174 = fmul fast float %3172, 2.000000e+00
  %3175 = fadd fast float %3174, -1.000000e+00
  %3176 = fmul fast float %3173, 2.000000e+00
  %3177 = fadd fast float %3176, -1.000000e+00
  %3178 = fadd fast float %3175, %3177
  %3179 = fmul fast float %3178, 5.000000e-01
  %3180 = fsub fast float %3175, %3177
  %3181 = fmul fast float %3180, 5.000000e-01
  %3182 = call float @dx.op.unary.f32(i32 6, float %3179)  ; FAbs(value)
  %3183 = fsub fast float 1.000000e+00, %3182
  %3184 = call float @dx.op.unary.f32(i32 6, float %3181)  ; FAbs(value)
  %3185 = fsub fast float %3183, %3184
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3179, float %3181, float %3185, float %3179, float %3181, float %3185)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = call float @dx.op.unary.f32(i32 25, float %3186)  ; Rsqrt(value)
  %3188 = fmul fast float %3179, %3187
  %3189 = fmul fast float %3181, %3187
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 67108864
  %3193 = icmp eq i32 %3192, 0
  br i1 %3193, label %3210, label %3194

; <label>:3194                                    ; preds = %3142
  %3195 = add i32 %45, 328
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 65535
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = lshr i32 %3197, 16
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = fsub fast float %3167, %3205
  %3207 = fmul fast float %3206, %3199
  %3208 = fadd fast float %3207, %3203
  %3209 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  br label %3210

; <label>:3210                                    ; preds = %3194, %3142
  %3211 = phi float [ %3209, %3194 ], [ %3167, %3142 ]
  %3212 = call float @dx.op.dot2.f32(i32 54, float %3188, float %3189, float %2631, float %2632)  ; Dot2(ax,ay,bx,by)
  %3213 = call float @dx.op.dot2.f32(i32 54, float %3188, float %3189, float %2633, float %2634)  ; Dot2(ax,ay,bx,by)
  br label %3214

; <label>:3214                                    ; preds = %3210, %3120
  %3215 = phi float [ %3211, %3210 ], [ 0x3FD6666660000000, %3120 ]
  %3216 = phi float [ %3212, %3210 ], [ 0.000000e+00, %3120 ]
  %3217 = phi float [ %3213, %3210 ], [ 0.000000e+00, %3120 ]
  %3218 = phi float [ %3154, %3210 ], [ 1.000000e+00, %3120 ]
  %3219 = add i32 %45, 208
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3219, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = lshr i32 %3221, 22
  %3223 = shl nuw nsw i32 %3222, 5
  %3224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3223)  ; LegacyF16ToF32(value)
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 64
  %3228 = icmp eq i32 %3227, 0
  br i1 %3228, label %3262, label %3229

; <label>:3229                                    ; preds = %3214
  %3230 = add i32 %45, 436
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3230, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = add i32 %3232, 0
  %3234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 131072
  %3238 = icmp eq i32 %3237, 0
  %3239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3234, %dx.types.Handle %82, float %2727, float %2728, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  %3241 = extractvalue %dx.types.ResRet.f32 %3239, 1
  %3242 = extractvalue %dx.types.ResRet.f32 %3239, 2
  %3243 = fmul fast float %3240, %333
  %3244 = fmul fast float %3241, %336
  %3245 = fmul fast float %3242, %339
  br i1 %3238, label %3252, label %3246

; <label>:3246                                    ; preds = %3229
  %3247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3248 = extractvalue %dx.types.CBufRet.f32 %3247, 0
  %3249 = fmul fast float %3248, %3243
  %3250 = fmul fast float %3248, %3244
  %3251 = fmul fast float %3248, %3245
  br label %3252

; <label>:3252                                    ; preds = %3246, %3229
  %3253 = phi float [ %3249, %3246 ], [ %3243, %3229 ]
  %3254 = phi float [ %3250, %3246 ], [ %3244, %3229 ]
  %3255 = phi float [ %3251, %3246 ], [ %3245, %3229 ]
  %3256 = fmul fast float %3253, %3224
  %3257 = select i1 %187, float %3256, float %3253
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3257, float %3254, float %3255, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = select i1 %187, float 0.000000e+00, float %3253
  %3260 = select i1 %187, float %3258, float %3254
  %3261 = select i1 %187, float 0.000000e+00, float %3255
  br label %3262

; <label>:3262                                    ; preds = %3252, %3214
  %3263 = phi float [ %3259, %3252 ], [ 0.000000e+00, %3214 ]
  %3264 = phi float [ %3260, %3252 ], [ 0.000000e+00, %3214 ]
  %3265 = phi float [ %3261, %3252 ], [ 0.000000e+00, %3214 ]
  %3266 = add i32 %45, 144
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = and i32 %3268, 255
  %3270 = uitofp i32 %3269 to float
  %3271 = lshr i32 %3268, 8
  %3272 = and i32 %3271, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = call float @dx.op.dot3.f32(i32 55, float %3135, float %3136, float %3137, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = fmul fast float %3273, %3274
  %3276 = fadd fast float %3275, %3270
  %3277 = fmul fast float %3276, 0x3F70101020000000
  %3278 = call float @dx.op.unary.f32(i32 7, float %3277)  ; Saturate(value)
  br i1 %2619, label %3279, label %3287

; <label>:3279                                    ; preds = %3262
  %3280 = fsub fast float 1.000000e+00, %2915
  %3281 = fmul fast float %3280, %2608
  %3282 = fmul fast float %3280, %2609
  %3283 = fmul fast float %3280, %2610
  %3284 = fmul fast float %3280, %2611
  %3285 = fmul fast float %3280, %2612
  %3286 = fmul fast float %3280, %2613
  br label %3287

; <label>:3287                                    ; preds = %3279, %3262
  %3288 = phi float [ %3281, %3279 ], [ %2608, %3262 ]
  %3289 = phi float [ %3282, %3279 ], [ %2609, %3262 ]
  %3290 = phi float [ %3283, %3279 ], [ %2610, %3262 ]
  %3291 = phi float [ %3284, %3279 ], [ %2611, %3262 ]
  %3292 = phi float [ %3285, %3279 ], [ %2612, %3262 ]
  %3293 = phi float [ %3286, %3279 ], [ %2613, %3262 ]
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = and i32 %3295, 3
  %3297 = icmp eq i32 %3296, 3
  br i1 %3297, label %3376, label %3298

; <label>:3298                                    ; preds = %3287
  %3299 = and i32 %3295, 16
  %3300 = icmp ne i32 %3299, 0
  %3301 = select i1 %3300, float %2915, float 0.000000e+00
  %3302 = icmp eq i32 %3296, 0
  br i1 %3302, label %3303, label %3331

; <label>:3303                                    ; preds = %3298
  %3304 = and i32 %3295, 64
  %3305 = icmp ne i32 %3304, 0
  %3306 = select i1 %3305, float %2915, float 0.000000e+00
  %3307 = fsub fast float %3135, %3288
  %3308 = fsub fast float %3136, %3289
  %3309 = fsub fast float %3137, %3290
  %3310 = fmul fast float %3301, %3307
  %3311 = fmul fast float %3301, %3308
  %3312 = fmul fast float %3301, %3309
  %3313 = fadd fast float %3310, %3288
  %3314 = fadd fast float %3311, %3289
  %3315 = fadd fast float %3312, %3290
  %3316 = fsub fast float %3121, %2614
  %3317 = fmul fast float %3301, %3316
  %3318 = fadd fast float %3317, %2614
  %3319 = fsub fast float %3263, %3291
  %3320 = fsub fast float %3264, %3292
  %3321 = fsub fast float %3265, %3293
  %3322 = fmul fast float %3306, %3319
  %3323 = fmul fast float %3306, %3320
  %3324 = fmul fast float %3306, %3321
  %3325 = fadd fast float %3322, %3291
  %3326 = fadd fast float %3323, %3292
  %3327 = fadd fast float %3324, %3293
  %3328 = fsub fast float %3278, %2617
  %3329 = fmul fast float %3301, %3328
  %3330 = fadd fast float %3329, %2617
  br label %3376

; <label>:3331                                    ; preds = %3298
  %3332 = icmp eq i32 %3296, 1
  br i1 %3332, label %3333, label %3346

; <label>:3333                                    ; preds = %3331
  %3334 = fadd fast float %3135, -1.000000e+00
  %3335 = fadd fast float %3136, -1.000000e+00
  %3336 = fadd fast float %3137, -1.000000e+00
  %3337 = fmul fast float %3301, %3334
  %3338 = fmul fast float %3301, %3335
  %3339 = fmul fast float %3301, %3336
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fadd fast float %3338, 1.000000e+00
  %3342 = fadd fast float %3339, 1.000000e+00
  %3343 = fmul fast float %3340, %3288
  %3344 = fmul fast float %3341, %3289
  %3345 = fmul fast float %3342, %3290
  br label %3376

; <label>:3346                                    ; preds = %3331
  %3347 = icmp eq i32 %3296, 2
  br i1 %3347, label %3348, label %3376

; <label>:3348                                    ; preds = %3346
  %3349 = call float @dx.op.unary.f32(i32 24, float %3135)  ; Sqrt(value)
  %3350 = call float @dx.op.unary.f32(i32 24, float %3136)  ; Sqrt(value)
  %3351 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3352 = fadd fast float %3349, -5.000000e-01
  %3353 = fadd fast float %3350, -5.000000e-01
  %3354 = fadd fast float %3351, -5.000000e-01
  %3355 = fmul fast float %3352, %3301
  %3356 = fmul fast float %3353, %3301
  %3357 = fmul fast float %3354, %3301
  %3358 = fadd fast float %3355, 5.000000e-01
  %3359 = fadd fast float %3356, 5.000000e-01
  %3360 = fadd fast float %3357, 5.000000e-01
  %3361 = fmul fast float %3358, 2.000000e+00
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = fmul fast float %3362, %3288
  %3364 = fadd fast float %3363, %3361
  %3365 = fmul fast float %3364, %3288
  %3366 = fmul fast float %3359, 2.000000e+00
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = fmul fast float %3367, %3289
  %3369 = fadd fast float %3368, %3366
  %3370 = fmul fast float %3369, %3289
  %3371 = fmul fast float %3360, 2.000000e+00
  %3372 = fsub fast float 1.000000e+00, %3371
  %3373 = fmul fast float %3372, %3290
  %3374 = fadd fast float %3373, %3371
  %3375 = fmul fast float %3374, %3290
  br label %3376

; <label>:3376                                    ; preds = %3348, %3346, %3333, %3303, %3287
  %3377 = phi float [ %3288, %3287 ], [ %3365, %3348 ], [ %3288, %3346 ], [ %3343, %3333 ], [ %3313, %3303 ]
  %3378 = phi float [ %3289, %3287 ], [ %3370, %3348 ], [ %3289, %3346 ], [ %3344, %3333 ], [ %3314, %3303 ]
  %3379 = phi float [ %3290, %3287 ], [ %3375, %3348 ], [ %3290, %3346 ], [ %3345, %3333 ], [ %3315, %3303 ]
  %3380 = phi float [ %3291, %3287 ], [ %3291, %3348 ], [ %3291, %3346 ], [ %3291, %3333 ], [ %3325, %3303 ]
  %3381 = phi float [ %3292, %3287 ], [ %3292, %3348 ], [ %3292, %3346 ], [ %3292, %3333 ], [ %3326, %3303 ]
  %3382 = phi float [ %3293, %3287 ], [ %3293, %3348 ], [ %3293, %3346 ], [ %3293, %3333 ], [ %3327, %3303 ]
  %3383 = phi float [ %2614, %3287 ], [ %2614, %3348 ], [ %2614, %3346 ], [ %2614, %3333 ], [ %3318, %3303 ]
  %3384 = phi float [ %2617, %3287 ], [ %2617, %3348 ], [ %2617, %3346 ], [ %2617, %3333 ], [ %3330, %3303 ]
  %3385 = and i32 %3295, 12
  %3386 = icmp eq i32 %3385, 12
  br i1 %3386, label %3459, label %3387

; <label>:3387                                    ; preds = %3376
  %3388 = and i32 %3295, 2097184
  %3389 = icmp eq i32 %3388, 2097184
  %3390 = select i1 %3389, float %2915, float 0.000000e+00
  %3391 = and i32 %3295, 4194336
  %3392 = icmp eq i32 %3391, 4194336
  %3393 = select i1 %3392, float %2915, float 0.000000e+00
  %3394 = and i32 %3295, 8388640
  %3395 = icmp eq i32 %3394, 8388640
  %3396 = select i1 %3395, float %2915, float 0.000000e+00
  %3397 = icmp eq i32 %3385, 0
  br i1 %3397, label %3398, label %3411

; <label>:3398                                    ; preds = %3387
  %3399 = fsub fast float %3216, %2606
  %3400 = fsub fast float %3217, %2607
  %3401 = fmul fast float %3390, %3399
  %3402 = fmul fast float %3390, %3400
  %3403 = fadd fast float %3401, %2606
  %3404 = fadd fast float %3402, %2607
  %3405 = fsub fast float %3218, %2616
  %3406 = fmul fast float %3393, %3405
  %3407 = fadd fast float %3406, %2616
  %3408 = fsub fast float %3215, %2615
  %3409 = fmul fast float %3396, %3408
  %3410 = fadd fast float %3409, %2615
  br label %3459

; <label>:3411                                    ; preds = %3387
  %3412 = icmp eq i32 %3385, 4
  br i1 %3412, label %3413, label %3445

; <label>:3413                                    ; preds = %3411
  %3414 = fmul fast float %3390, %3216
  %3415 = fmul fast float %3390, %3217
  %3416 = fadd fast float %3414, %2606
  %3417 = fadd fast float %3415, %2607
  %3418 = call float @dx.op.binary.f32(i32 36, float %2616, float %3218)  ; FMin(a,b)
  %3419 = fsub fast float %3418, %2616
  %3420 = fmul fast float %3419, %3393
  %3421 = fadd fast float %3420, %2616
  %3422 = fadd fast float %3215, %2615
  %3423 = fmul fast float %3422, 0x3FF337FAE0000000
  %3424 = fmul fast float %2615, %2615
  %3425 = fmul fast float %3215, %3215
  %3426 = fadd fast float %3425, %3424
  %3427 = fmul fast float %3426, 0x3FE5152B00000000
  %3428 = fmul fast float %2615, 0xBFCC1F85E0000000
  %3429 = fmul fast float %3428, %3215
  %3430 = fadd fast float %3429, 0xBFE1363700000000
  %3431 = fadd fast float %3430, %3423
  %3432 = fsub fast float %3431, %3427
  %3433 = fmul fast float %3422, 0x3FBA6F0D00000000
  %3434 = fmul fast float %3426, 0x3FD0432880000000
  %3435 = fmul fast float %2615, 0xBFEF110800000000
  %3436 = fmul fast float %3435, %3215
  %3437 = fadd fast float %3436, 1.000000e+00
  %3438 = fsub fast float %3437, %3433
  %3439 = fadd fast float %3438, %3434
  %3440 = fdiv fast float %3432, %3439
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  %3442 = fsub fast float %3441, %2615
  %3443 = fmul fast float %3442, %3396
  %3444 = fadd fast float %3443, %2615
  br label %3459

; <label>:3445                                    ; preds = %3411
  %3446 = icmp eq i32 %3385, 8
  br i1 %3446, label %3447, label %3459

; <label>:3447                                    ; preds = %3445
  %3448 = fmul fast float %3390, %3216
  %3449 = fmul fast float %3390, %3217
  %3450 = fadd fast float %3448, %2606
  %3451 = fadd fast float %3449, %2607
  %3452 = call float @dx.op.binary.f32(i32 36, float %2616, float %3218)  ; FMin(a,b)
  %3453 = fsub fast float %3452, %2616
  %3454 = fmul fast float %3453, %3393
  %3455 = fadd fast float %3454, %2616
  %3456 = fsub fast float %3215, %2615
  %3457 = fmul fast float %3396, %3456
  %3458 = fadd fast float %3457, %2615
  br label %3459

; <label>:3459                                    ; preds = %3447, %3445, %3413, %3398, %3376, %2914, %2618, %2605
  %3460 = phi float [ %2606, %3376 ], [ %2606, %2914 ], [ %2606, %2605 ], [ %2606, %2618 ], [ %3403, %3398 ], [ %3416, %3413 ], [ %2606, %3445 ], [ %3450, %3447 ]
  %3461 = phi float [ %2607, %3376 ], [ %2607, %2914 ], [ %2607, %2605 ], [ %2607, %2618 ], [ %3404, %3398 ], [ %3417, %3413 ], [ %2607, %3445 ], [ %3451, %3447 ]
  %3462 = phi float [ %3377, %3376 ], [ %2608, %2914 ], [ %2608, %2605 ], [ %2608, %2618 ], [ %3377, %3398 ], [ %3377, %3413 ], [ %3377, %3445 ], [ %3377, %3447 ]
  %3463 = phi float [ %3378, %3376 ], [ %2609, %2914 ], [ %2609, %2605 ], [ %2609, %2618 ], [ %3378, %3398 ], [ %3378, %3413 ], [ %3378, %3445 ], [ %3378, %3447 ]
  %3464 = phi float [ %3379, %3376 ], [ %2610, %2914 ], [ %2610, %2605 ], [ %2610, %2618 ], [ %3379, %3398 ], [ %3379, %3413 ], [ %3379, %3445 ], [ %3379, %3447 ]
  %3465 = phi float [ %3380, %3376 ], [ %2611, %2914 ], [ %2611, %2605 ], [ %2611, %2618 ], [ %3380, %3398 ], [ %3380, %3413 ], [ %3380, %3445 ], [ %3380, %3447 ]
  %3466 = phi float [ %3381, %3376 ], [ %2612, %2914 ], [ %2612, %2605 ], [ %2612, %2618 ], [ %3381, %3398 ], [ %3381, %3413 ], [ %3381, %3445 ], [ %3381, %3447 ]
  %3467 = phi float [ %3382, %3376 ], [ %2613, %2914 ], [ %2613, %2605 ], [ %2613, %2618 ], [ %3382, %3398 ], [ %3382, %3413 ], [ %3382, %3445 ], [ %3382, %3447 ]
  %3468 = phi float [ %3383, %3376 ], [ %2614, %2914 ], [ %2614, %2605 ], [ %2614, %2618 ], [ %3383, %3398 ], [ %3383, %3413 ], [ %3383, %3445 ], [ %3383, %3447 ]
  %3469 = phi float [ %2615, %3376 ], [ %2615, %2914 ], [ %2615, %2605 ], [ %2615, %2618 ], [ %3410, %3398 ], [ %3444, %3413 ], [ %2615, %3445 ], [ %3458, %3447 ]
  %3470 = phi float [ %2616, %3376 ], [ %2616, %2914 ], [ %2616, %2605 ], [ %2616, %2618 ], [ %3407, %3398 ], [ %3421, %3413 ], [ %2616, %3445 ], [ %3455, %3447 ]
  %3471 = phi float [ %3384, %3376 ], [ %2617, %2914 ], [ %2617, %2605 ], [ %2617, %2618 ], [ %3384, %3398 ], [ %3384, %3413 ], [ %3384, %3445 ], [ %3384, %3447 ]
  %3472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3473 = extractvalue %dx.types.CBufRet.f32 %3472, 0
  %3474 = call float @dx.op.dot2.f32(i32 54, float %3460, float %3461, float %3460, float %3461)  ; Dot2(ax,ay,bx,by)
  %3475 = fmul fast float %3474, 0x3FE3333340000000
  %3476 = fsub fast float 1.000000e+00, %3475
  %3477 = call float @dx.op.dot3.f32(i32 55, float %3460, float %3461, float %3476, float %3460, float %3461, float %3476)  ; Dot3(ax,ay,az,bx,by,bz)
  %3478 = call float @dx.op.unary.f32(i32 25, float %3477)  ; Rsqrt(value)
  %3479 = fmul fast float %3478, %3460
  %3480 = fmul fast float %3478, %3461
  %3481 = fmul fast float %3476, %3478
  %3482 = fmul fast float %3481, %95
  %3483 = fmul fast float %3481, %97
  %3484 = fmul fast float %3481, %99
  %3485 = fmul fast float %3479, %67
  %3486 = fmul fast float %3479, %68
  %3487 = fmul fast float %3479, %69
  %3488 = fadd fast float %3482, %3485
  %3489 = fadd fast float %3483, %3486
  %3490 = fadd fast float %3484, %3487
  %3491 = fmul fast float %109, %3480
  %3492 = fmul fast float %110, %3480
  %3493 = fmul fast float %111, %3480
  %3494 = fadd fast float %3488, %3491
  %3495 = fadd fast float %3489, %3492
  %3496 = fadd fast float %3490, %3493
  %3497 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3495, float %3496, float %3494, float %3495, float %3496)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = call float @dx.op.unary.f32(i32 25, float %3497)  ; Rsqrt(value)
  %3499 = fmul fast float %3494, %3498
  %3500 = fmul fast float %3495, %3498
  %3501 = fmul fast float %3496, %3498
  %3502 = and i32 %47, 1
  %3503 = icmp eq i32 %3502, 0
  br i1 %3503, label %3504, label %4012

; <label>:3504                                    ; preds = %3459
  %3505 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3506 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3507 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %3508 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3509 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3510 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %3511 = fadd fast float %3505, %145
  %3512 = fadd fast float %3506, %146
  %3513 = fadd fast float %3507, %147
  %3514 = fadd fast float %3508, %145
  %3515 = fadd fast float %3509, %146
  %3516 = fadd fast float %3510, %147
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3520 = extractvalue %dx.types.CBufRet.f32 %3517, 2
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 2
  %3523 = extractvalue %dx.types.CBufRet.f32 %3521, 3
  %3524 = fmul fast float %3518, %86
  %3525 = fmul fast float %3524, %3522
  %3526 = fmul fast float %3519, %87
  %3527 = fmul fast float %3526, %3523
  %3528 = fptoui float %3525 to i32
  %3529 = fptoui float %3527 to i32
  %3530 = fadd fast float %3518, -1.000000e+00
  %3531 = fadd fast float %3519, -1.000000e+00
  %3532 = fptoui float %3530 to i32
  %3533 = fptoui float %3531 to i32
  %3534 = call i32 @dx.op.binary.i32(i32 40, i32 %3528, i32 %3532)  ; UMin(a,b)
  %3535 = call i32 @dx.op.binary.i32(i32 40, i32 %3529, i32 %3533)  ; UMin(a,b)
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 2
  %3538 = extractvalue %dx.types.CBufRet.f32 %3536, 3
  %3539 = fmul fast float %3537, %81
  %3540 = fsub fast float %3539, %3538
  %3541 = fadd fast float %3520, -1.000000e+00
  %3542 = call float @dx.op.binary.f32(i32 36, float %3540, float %3541)  ; FMin(a,b)
  %3543 = fptoui float %3542 to i32
  %3544 = fptoui float %3518 to i32
  %3545 = fptoui float %3519 to i32
  %3546 = mul i32 %3543, %3545
  %3547 = add i32 %3546, %3535
  %3548 = mul i32 %3547, %3544
  %3549 = add i32 %3548, %3534
  %3550 = shl i32 %3549, 2
  %3551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3550, i32 undef)  ; BufferLoad(srv,index,wot)
  %3552 = extractvalue %dx.types.ResRet.i32 %3551, 0
  %3553 = and i32 %3552, 1023
  %3554 = lshr i32 %3552, 10
  %3555 = icmp eq i32 %3553, 0
  br i1 %3555, label %3981, label %3556

; <label>:3556                                    ; preds = %3504
  %3557 = and i32 %3552, 1023
  br label %3558

; <label>:3558                                    ; preds = %3684, %3556
  %3559 = phi i32 [ %3634, %3684 ], [ 0, %3556 ]
  %3560 = phi float [ %3685, %3684 ], [ 0.000000e+00, %3556 ]
  %3561 = phi float [ %3686, %3684 ], [ %3473, %3556 ]
  %3562 = phi float [ %3687, %3684 ], [ %3471, %3556 ]
  %3563 = phi float [ %3688, %3684 ], [ 0.000000e+00, %3556 ]
  %3564 = phi float [ %3689, %3684 ], [ 0.000000e+00, %3556 ]
  %3565 = phi float [ %3690, %3684 ], [ %3465, %3556 ]
  %3566 = phi float [ %3691, %3684 ], [ %3466, %3556 ]
  %3567 = phi float [ %3692, %3684 ], [ %3467, %3556 ]
  %3568 = phi float [ %3693, %3684 ], [ %3499, %3556 ]
  %3569 = phi float [ %3694, %3684 ], [ %3500, %3556 ]
  %3570 = phi float [ %3695, %3684 ], [ %3501, %3556 ]
  %3571 = phi float [ %3696, %3684 ], [ %3470, %3556 ]
  %3572 = phi float [ %3697, %3684 ], [ %3469, %3556 ]
  %3573 = phi float [ %3698, %3684 ], [ 0.000000e+00, %3556 ]
  %3574 = phi float [ %3699, %3684 ], [ %3468, %3556 ]
  %3575 = phi float [ %3700, %3684 ], [ %3462, %3556 ]
  %3576 = phi float [ %3701, %3684 ], [ %3463, %3556 ]
  %3577 = phi float [ %3702, %3684 ], [ %3464, %3556 ]
  %3578 = add nuw nsw i32 %3559, %3554
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
  %3634 = add nuw nsw i32 %3559, 1
  %3635 = bitcast float %3588 to i32
  %3636 = and i32 %3635, 512
  %3637 = icmp eq i32 %3636, 0
  %3638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.ResRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3638, 2
  %3642 = extractvalue %dx.types.ResRet.f32 %3638, 3
  %3643 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3644 = or i32 %3582, 16
  %3645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.ResRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3645, 2
  %3649 = extractvalue %dx.types.ResRet.f32 %3645, 3
  %3650 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3651 = or i32 %3582, 32
  %3652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3651, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.f32 %3652, 0
  %3654 = extractvalue %dx.types.ResRet.f32 %3652, 1
  %3655 = extractvalue %dx.types.ResRet.f32 %3652, 2
  %3656 = extractvalue %dx.types.ResRet.f32 %3652, 3
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3653, float %3654, float %3655, float %3656, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = call float @dx.op.unary.f32(i32 27, float %3643)  ; Round_ni(value)
  %3659 = call float @dx.op.unary.f32(i32 6, float %3658)  ; FAbs(value)
  %3660 = call float @dx.op.unary.f32(i32 27, float %3650)  ; Round_ni(value)
  %3661 = call float @dx.op.unary.f32(i32 6, float %3660)  ; FAbs(value)
  %3662 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3663 = call float @dx.op.unary.f32(i32 27, float %3662)  ; Round_ni(value)
  %3664 = fadd fast float %3661, %3659
  %3665 = fadd fast float %3664, %3663
  %3666 = fcmp fast oeq float %3665, 0.000000e+00
  %3667 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %3511, float %3512, float %3513, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3668 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %3511, float %3512, float %3513, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3669 = call float @dx.op.dot4.f32(i32 56, float %3639, float %3640, float %3641, float %3642, float %3514, float %3515, float %3516, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3670 = call float @dx.op.dot4.f32(i32 56, float %3646, float %3647, float %3648, float %3649, float %3514, float %3515, float %3516, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3671 = fsub fast float %3667, %3643
  %3672 = fsub fast float %3669, %3643
  %3673 = fsub fast float %3668, %3650
  %3674 = fsub fast float %3670, %3650
  %3675 = call float @dx.op.dot3.f32(i32 55, float %3585, float %3586, float %3587, float %95, float %97, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %3676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3677 = extractvalue %dx.types.CBufRet.f32 %3676, 2
  %3678 = fadd fast float %3677, %3675
  %3679 = call float @dx.op.unary.f32(i32 7, float %3678)  ; Saturate(value)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3676, 0
  %3681 = fcmp fast ogt float %3679, %3680
  %3682 = and i1 %3666, %3681
  %3683 = and i1 %3637, %3682
  br i1 %3683, label %3704, label %3684

; <label>:3684                                    ; preds = %3967, %3785, %3704, %3558
  %3685 = phi float [ %3560, %3704 ], [ %3788, %3785 ], [ %3788, %3967 ], [ %3560, %3558 ]
  %3686 = phi float [ %3561, %3704 ], [ %3561, %3785 ], [ %3942, %3967 ], [ %3561, %3558 ]
  %3687 = phi float [ %3562, %3704 ], [ %3562, %3785 ], [ %3940, %3967 ], [ %3562, %3558 ]
  %3688 = phi float [ %3563, %3704 ], [ %3563, %3785 ], [ %3912, %3967 ], [ %3563, %3558 ]
  %3689 = phi float [ %3564, %3704 ], [ %3564, %3785 ], [ %3910, %3967 ], [ %3564, %3558 ]
  %3690 = phi float [ %3565, %3704 ], [ %3565, %3785 ], [ %3977, %3967 ], [ %3565, %3558 ]
  %3691 = phi float [ %3566, %3704 ], [ %3566, %3785 ], [ %3978, %3967 ], [ %3566, %3558 ]
  %3692 = phi float [ %3567, %3704 ], [ %3567, %3785 ], [ %3979, %3967 ], [ %3567, %3558 ]
  %3693 = phi float [ %3568, %3704 ], [ %3568, %3785 ], [ %3891, %3967 ], [ %3568, %3558 ]
  %3694 = phi float [ %3569, %3704 ], [ %3569, %3785 ], [ %3892, %3967 ], [ %3569, %3558 ]
  %3695 = phi float [ %3570, %3704 ], [ %3570, %3785 ], [ %3893, %3967 ], [ %3570, %3558 ]
  %3696 = phi float [ %3571, %3704 ], [ %3571, %3785 ], [ %3920, %3967 ], [ %3571, %3558 ]
  %3697 = phi float [ %3572, %3704 ], [ %3572, %3785 ], [ %3917, %3967 ], [ %3572, %3558 ]
  %3698 = phi float [ %3573, %3704 ], [ %3573, %3785 ], [ %3914, %3967 ], [ %3573, %3558 ]
  %3699 = phi float [ %3574, %3704 ], [ %3574, %3785 ], [ %3908, %3967 ], [ %3574, %3558 ]
  %3700 = phi float [ %3575, %3704 ], [ %3575, %3785 ], [ %3903, %3967 ], [ %3575, %3558 ]
  %3701 = phi float [ %3576, %3704 ], [ %3576, %3785 ], [ %3904, %3967 ], [ %3576, %3558 ]
  %3702 = phi float [ %3577, %3704 ], [ %3577, %3785 ], [ %3905, %3967 ], [ %3577, %3558 ]
  %3703 = icmp eq i32 %3634, %3557
  br i1 %3703, label %3980, label %3558

; <label>:3704                                    ; preds = %3558
  %3705 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3706 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3708 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3709 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3710 = extractvalue %dx.types.ResRet.i32 %3590, 3
  %3711 = extractvalue %dx.types.ResRet.i32 %3590, 2
  %3712 = add i32 %3710, 0
  %3713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3712, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3715 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3713, %dx.types.Handle %3714, float %3643, float %3650, float undef, float undef, i32 0, i32 0, i32 undef, float %3671, float %3673, float undef, float %3672, float %3674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3717 = fmul fast float %3716, %3709
  %3718 = fadd fast float %3717, %3708
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = fmul fast float %3643, %3599
  %3721 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3650, float %3720)  ; FMad(a,b,c)
  %3722 = fadd fast float %3721, %3707
  %3723 = fmul fast float %3643, %3601
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3650, float %3723)  ; FMad(a,b,c)
  %3725 = fadd fast float %3724, %3706
  %3726 = fmul fast float %3671, %3599
  %3727 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3673, float %3726)  ; FMad(a,b,c)
  %3728 = fmul fast float %3671, %3601
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3673, float %3728)  ; FMad(a,b,c)
  %3730 = fmul fast float %3672, %3599
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3674, float %3730)  ; FMad(a,b,c)
  %3732 = fmul fast float %3672, %3601
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3602, float %3674, float %3732)  ; FMad(a,b,c)
  %3734 = add i32 %3711, 0
  %3735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3734, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3736 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3735, %dx.types.Handle %3714, float %3722, float %3725, float undef, float undef, i32 0, i32 0, i32 undef, float %3727, float %3729, float undef, float %3731, float %3733, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = and i32 %3635, 1024
  %3739 = icmp ne i32 %3738, 0
  %3740 = fcmp fast ogt float %3737, 0x3FE0101020000000
  %3741 = uitofp i1 %3740 to float
  %3742 = select i1 %3739, float %3741, float %3737
  %3743 = and i32 %3635, 8192
  %3744 = icmp ne i32 %3743, 0
  %3745 = select i1 %3744, float %3705, float 1.000000e+00
  %3746 = fmul fast float %3643, 2.000000e+00
  %3747 = fadd fast float %3746, -1.000000e+00
  %3748 = call float @dx.op.unary.f32(i32 6, float %3747)  ; FAbs(value)
  %3749 = fmul fast float %3748, %3632
  %3750 = fsub fast float %3749, %3632
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3752 = fmul fast float %3650, 2.000000e+00
  %3753 = fadd fast float %3752, -1.000000e+00
  %3754 = call float @dx.op.unary.f32(i32 6, float %3753)  ; FAbs(value)
  %3755 = fmul fast float %3754, %3633
  %3756 = fsub fast float %3755, %3633
  %3757 = call float @dx.op.unary.f32(i32 7, float %3756)  ; Saturate(value)
  %3758 = fmul fast float %3662, %3595
  %3759 = fsub fast float %3758, %3595
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fmul fast float %3719, %3745
  %3762 = fmul fast float %3761, %3716
  %3763 = fmul fast float %3762, %3751
  %3764 = fmul fast float %3763, %3742
  %3765 = fmul fast float %3764, %3757
  %3766 = fmul fast float %3765, %3760
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 1
  %3769 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3770 = fsub fast float %3679, %3769
  %3771 = fmul fast float %3770, %3768
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = fmul fast float %3766, %3596
  %3774 = fadd fast float %3766, %3596
  %3775 = fmul fast float %3774, %3605
  %3776 = fsub fast float %3775, %3605
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = and i32 %3635, 128
  %3779 = icmp ne i32 %3778, 0
  %3780 = select i1 %3779, float %3777, float %3773
  %3781 = fmul fast float %3780, %3772
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3784 = fcmp fast ugt float %3781, %3783
  br i1 %3784, label %3785, label %3684

; <label>:3785                                    ; preds = %3704
  %3786 = select i1 %3744, float %3781, float 0.000000e+00
  %3787 = fadd fast float %3786, %3560
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  br i1 %3744, label %3684, label %3789

; <label>:3789                                    ; preds = %3785
  %3790 = and i32 %3635, 4
  %3791 = and i32 %3635, 8
  %3792 = add i32 %3591, 0
  %3793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3792, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3795 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3793, %dx.types.Handle %3794, float %3722, float %3725, float undef, float undef, i32 0, i32 0, i32 undef, float %3727, float %3729, float undef, float %3731, float %3733, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3800 = bitcast float %3617 to i32
  %3801 = and i32 %3800, 255
  %3802 = uitofp i32 %3801 to float
  %3803 = lshr i32 %3800, 8
  %3804 = and i32 %3803, 255
  %3805 = uitofp i32 %3804 to float
  %3806 = fmul fast float %3799, %3802
  %3807 = fadd fast float %3806, %3805
  %3808 = fmul fast float %3807, 0x3F70101000000000
  %3809 = add i32 %3592, 0
  %3810 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3809, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3811 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3810, %dx.types.Handle %3794, float %3722, float %3725, float undef, float undef, i32 0, i32 0, i32 undef, float %3727, float %3729, float undef, float %3731, float %3733, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = extractvalue %dx.types.ResRet.f32 %3811, 3
  %3816 = bitcast float %3611 to i32
  %3817 = and i32 %3816, 255
  %3818 = uitofp i32 %3817 to float
  %3819 = lshr i32 %3816, 8
  %3820 = and i32 %3819, 255
  %3821 = uitofp i32 %3820 to float
  %3822 = lshr i32 %3816, 16
  %3823 = and i32 %3822, 255
  %3824 = uitofp i32 %3823 to float
  %3825 = fmul fast float %3824, 0x3F70101000000000
  %3826 = fmul fast float %3812, %3818
  %3827 = fadd fast float %3826, %3821
  %3828 = fmul fast float %3827, 0x3F70101000000000
  %3829 = fadd fast float %3813, -5.000000e-01
  %3830 = fadd fast float %3815, -5.000000e-01
  %3831 = fmul fast float %3829, %3825
  %3832 = fmul fast float %3830, %3825
  %3833 = fadd fast float %3831, 5.000000e-01
  %3834 = fadd fast float %3832, 5.000000e-01
  %3835 = fmul fast float %3796, %3620
  %3836 = fmul fast float %3797, %3621
  %3837 = fmul fast float %3798, %3622
  %3838 = fmul fast float %3833, 2.000000e+00
  %3839 = fadd fast float %3838, -1.000000e+00
  %3840 = fmul fast float %3834, 2.000000e+00
  %3841 = fadd fast float %3840, -1.000000e+00
  %3842 = fadd fast float %3839, %3841
  %3843 = fmul fast float %3842, 5.000000e-01
  %3844 = fsub fast float %3839, %3841
  %3845 = fmul fast float %3844, 5.000000e-01
  %3846 = call float @dx.op.unary.f32(i32 6, float %3843)  ; FAbs(value)
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = call float @dx.op.unary.f32(i32 6, float %3845)  ; FAbs(value)
  %3849 = fsub fast float %3847, %3848
  %3850 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3845, float %3849, float %3843, float %3845, float %3849)  ; Dot3(ax,ay,az,bx,by,bz)
  %3851 = call float @dx.op.unary.f32(i32 25, float %3850)  ; Rsqrt(value)
  %3852 = fmul fast float %3843, %3851
  %3853 = fmul fast float %3845, %3851
  %3854 = fmul fast float %3851, %3849
  %3855 = fmul fast float %3854, %3585
  %3856 = fmul fast float %3854, %3586
  %3857 = fmul fast float %3854, %3587
  %3858 = fmul fast float %3852, %3608
  %3859 = fmul fast float %3852, %3609
  %3860 = fmul fast float %3852, %3610
  %3861 = fadd fast float %3858, %3855
  %3862 = fadd fast float %3859, %3856
  %3863 = fadd fast float %3860, %3857
  %3864 = fmul fast float %3853, %3614
  %3865 = fmul fast float %3853, %3615
  %3866 = fmul fast float %3853, %3616
  %3867 = fadd fast float %3861, %3864
  %3868 = fadd fast float %3862, %3865
  %3869 = fadd fast float %3863, %3866
  %3870 = call float @dx.op.dot3.f32(i32 55, float %3867, float %3868, float %3869, float %3867, float %3868, float %3869)  ; Dot3(ax,ay,az,bx,by,bz)
  %3871 = call float @dx.op.unary.f32(i32 25, float %3870)  ; Rsqrt(value)
  %3872 = fmul fast float %3867, %3871
  %3873 = fmul fast float %3868, %3871
  %3874 = fmul fast float %3869, %3871
  %3875 = icmp ne i32 %3791, 0
  %3876 = select i1 %3875, float 1.000000e+00, float 0.000000e+00
  %3877 = fmul fast float %3781, %3876
  %3878 = and i32 %3635, 1
  %3879 = icmp eq i32 %3878, 0
  br i1 %3879, label %3880, label %3884

; <label>:3880                                    ; preds = %3789
  %3881 = fsub fast float %3872, %3568
  %3882 = fsub fast float %3873, %3569
  %3883 = fsub fast float %3874, %3570
  br label %3884

; <label>:3884                                    ; preds = %3880, %3789
  %3885 = phi float [ %3881, %3880 ], [ %3872, %3789 ]
  %3886 = phi float [ %3882, %3880 ], [ %3873, %3789 ]
  %3887 = phi float [ %3883, %3880 ], [ %3874, %3789 ]
  %3888 = fmul float %3887, %3877
  %3889 = fmul float %3886, %3877
  %3890 = fmul float %3885, %3877
  %3891 = fadd fast float %3890, %3568
  %3892 = fadd fast float %3889, %3569
  %3893 = fadd fast float %3888, %3570
  %3894 = icmp ne i32 %3790, 0
  %3895 = select i1 %3894, float 1.000000e+00, float 0.000000e+00
  %3896 = fmul fast float %3781, %3895
  %3897 = fsub fast float %3835, %3575
  %3898 = fsub fast float %3836, %3576
  %3899 = fsub fast float %3837, %3577
  %3900 = fmul fast float %3897, %3896
  %3901 = fmul fast float %3898, %3896
  %3902 = fmul fast float %3899, %3896
  %3903 = fadd fast float %3900, %3575
  %3904 = fadd fast float %3901, %3576
  %3905 = fadd fast float %3902, %3577
  %3906 = fsub fast float %3808, %3574
  %3907 = fmul fast float %3906, %3896
  %3908 = fadd fast float %3907, %3574
  %3909 = fmul fast float %3896, %3564
  %3910 = fsub fast float %3564, %3909
  %3911 = fmul fast float %3896, %3563
  %3912 = fsub fast float %3563, %3911
  %3913 = fadd fast float %3781, %3573
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = fsub fast float %3828, %3572
  %3916 = fmul fast float %3915, %3877
  %3917 = fadd fast float %3916, %3572
  %3918 = fsub fast float %3814, %3571
  %3919 = fmul fast float %3918, %3877
  %3920 = fadd fast float %3919, %3571
  %3921 = call float @dx.op.dot3.f32(i32 55, float %3835, float %3836, float %3837, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 1
  %3925 = fmul fast float %3924, %3921
  %3926 = fadd fast float %3925, %3923
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3928 = bitcast float %3623 to i32
  %3929 = and i32 %3928, 65535
  %3930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3929)  ; LegacyF16ToF32(value)
  %3931 = lshr i32 %3928, 16
  %3932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3931)  ; LegacyF16ToF32(value)
  %3933 = fcmp fast oge float %3930, 0.000000e+00
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = select i1 %3933, float %3930, float %3935
  %3937 = fadd fast float %3936, %3932
  %3938 = fsub fast float %3927, %3562
  %3939 = fmul fast float %3938, %3781
  %3940 = fadd fast float %3939, %3562
  %3941 = fmul fast float %3937, %3781
  %3942 = call float @dx.op.binary.f32(i32 35, float %3561, float %3941)  ; FMax(a,b)
  %3943 = and i32 %3635, 16
  %3944 = icmp eq i32 %3943, 0
  br i1 %3944, label %3967, label %3945

; <label>:3945                                    ; preds = %3884
  %3946 = bitcast float %3629 to i32
  %3947 = add i32 %3626, 0
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3948, %dx.types.Handle %3794, float %3722, float %3725, float undef, float undef, i32 0, i32 0, i32 undef, float %3727, float %3729, float undef, float %3731, float %3733, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = and i32 %3946, 65535
  %3954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3953)  ; LegacyF16ToF32(value)
  %3955 = fmul fast float %3950, %3620
  %3956 = fmul fast float %3951, %3621
  %3957 = fmul fast float %3952, %3622
  %3958 = and i32 %3635, 16384
  %3959 = icmp ne i32 %3958, 0
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = select i1 %3959, float %3961, float 1.000000e+00
  %3963 = fmul fast float %3962, %3954
  %3964 = fmul fast float %3955, %3963
  %3965 = fmul fast float %3956, %3963
  %3966 = fmul fast float %3957, %3963
  br label %3967

; <label>:3967                                    ; preds = %3945, %3884
  %3968 = phi float [ %3964, %3945 ], [ 0.000000e+00, %3884 ]
  %3969 = phi float [ %3965, %3945 ], [ 0.000000e+00, %3884 ]
  %3970 = phi float [ %3966, %3945 ], [ 0.000000e+00, %3884 ]
  %3971 = fsub fast float %3968, %3565
  %3972 = fsub fast float %3969, %3566
  %3973 = fsub fast float %3970, %3567
  %3974 = fmul fast float %3971, %3781
  %3975 = fmul fast float %3972, %3781
  %3976 = fmul fast float %3973, %3781
  %3977 = fadd fast float %3974, %3565
  %3978 = fadd fast float %3975, %3566
  %3979 = fadd fast float %3976, %3567
  br label %3684

; <label>:3980                                    ; preds = %3684
  br label %3981

; <label>:3981                                    ; preds = %3980, %3504
  %3982 = phi float [ 0.000000e+00, %3504 ], [ %3685, %3980 ]
  %3983 = phi float [ %3473, %3504 ], [ %3686, %3980 ]
  %3984 = phi float [ %3471, %3504 ], [ %3687, %3980 ]
  %3985 = phi float [ 0.000000e+00, %3504 ], [ %3688, %3980 ]
  %3986 = phi float [ 0.000000e+00, %3504 ], [ %3689, %3980 ]
  %3987 = phi float [ %3465, %3504 ], [ %3690, %3980 ]
  %3988 = phi float [ %3466, %3504 ], [ %3691, %3980 ]
  %3989 = phi float [ %3467, %3504 ], [ %3692, %3980 ]
  %3990 = phi float [ %3499, %3504 ], [ %3693, %3980 ]
  %3991 = phi float [ %3500, %3504 ], [ %3694, %3980 ]
  %3992 = phi float [ %3501, %3504 ], [ %3695, %3980 ]
  %3993 = phi float [ %3470, %3504 ], [ %3696, %3980 ]
  %3994 = phi float [ %3469, %3504 ], [ %3697, %3980 ]
  %3995 = phi float [ 0.000000e+00, %3504 ], [ %3698, %3980 ]
  %3996 = phi float [ %3468, %3504 ], [ %3699, %3980 ]
  %3997 = phi float [ %3462, %3504 ], [ %3700, %3980 ]
  %3998 = phi float [ %3463, %3504 ], [ %3701, %3980 ]
  %3999 = phi float [ %3464, %3504 ], [ %3702, %3980 ]
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3990, float %3991, float %3992, float %3990, float %3991, float %3992)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = call float @dx.op.unary.f32(i32 25, float %4000)  ; Rsqrt(value)
  %4002 = fmul fast float %4001, %3990
  %4003 = fmul fast float %4001, %3991
  %4004 = fmul fast float %4001, %3992
  %4005 = fadd fast float %3995, %906
  %4006 = call float @dx.op.unary.f32(i32 7, float %4005)  ; Saturate(value)
  %4007 = call float @dx.op.dot3.f32(i32 55, float %4002, float %4003, float %4004, float %4002, float %4003, float %4004)  ; Dot3(ax,ay,az,bx,by,bz)
  %4008 = call float @dx.op.unary.f32(i32 25, float %4007)  ; Rsqrt(value)
  %4009 = fmul fast float %4008, %4002
  %4010 = fmul fast float %4008, %4003
  %4011 = fmul fast float %4008, %4004
  br label %4012

; <label>:4012                                    ; preds = %3981, %3459
  %4013 = phi float [ %4009, %3981 ], [ %3499, %3459 ]
  %4014 = phi float [ %4010, %3981 ], [ %3500, %3459 ]
  %4015 = phi float [ %4011, %3981 ], [ %3501, %3459 ]
  %4016 = phi float [ %3997, %3981 ], [ %3462, %3459 ]
  %4017 = phi float [ %3998, %3981 ], [ %3463, %3459 ]
  %4018 = phi float [ %3999, %3981 ], [ %3464, %3459 ]
  %4019 = phi float [ %3987, %3981 ], [ %3465, %3459 ]
  %4020 = phi float [ %3988, %3981 ], [ %3466, %3459 ]
  %4021 = phi float [ %3989, %3981 ], [ %3467, %3459 ]
  %4022 = phi float [ %3996, %3981 ], [ %3468, %3459 ]
  %4023 = phi float [ %4006, %3981 ], [ %906, %3459 ]
  %4024 = phi float [ %3994, %3981 ], [ %3469, %3459 ]
  %4025 = phi float [ %3993, %3981 ], [ %3470, %3459 ]
  %4026 = phi float [ %3986, %3981 ], [ 0.000000e+00, %3459 ]
  %4027 = phi float [ %3985, %3981 ], [ 0.000000e+00, %3459 ]
  %4028 = phi float [ %3982, %3981 ], [ 0.000000e+00, %3459 ]
  %4029 = phi float [ %3983, %3981 ], [ %3473, %3459 ]
  %4030 = phi float [ %3984, %3981 ], [ %3471, %3459 ]
  %4031 = fadd fast float %4022, 0xBFB99999A0000000
  %4032 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4033 = fmul fast float %4032, 0x3FF1C71C80000000
  %4034 = call float @dx.op.binary.f32(i32 36, float %4022, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4035 = fsub fast float 1.000000e+00, %4033
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fmul fast float %4036, %4016
  %4038 = fmul fast float %4036, %4017
  %4039 = fmul fast float %4036, %4018
  %4040 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4041 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4042 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4043 = fmul fast float %4033, %4016
  %4044 = fmul fast float %4033, %4017
  %4045 = fmul fast float %4033, %4018
  %4046 = fadd fast float %4043, %4034
  %4047 = fadd fast float %4044, %4034
  %4048 = fadd fast float %4045, %4034
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.i32 %4053, 3
  %4055 = and i32 %4054, 8
  %4056 = icmp ne i32 %4055, 0
  %4057 = call float @dx.op.binary.f32(i32 35, float %4040, float %4016)  ; FMax(a,b)
  %4058 = call float @dx.op.binary.f32(i32 35, float %4041, float %4016)  ; FMax(a,b)
  %4059 = call float @dx.op.binary.f32(i32 35, float %4042, float %4016)  ; FMax(a,b)
  %4060 = call float @dx.op.dot3.f32(i32 55, float %4040, float %4041, float %4042, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = select i1 %187, float %4016, float %4040
  %4062 = select i1 %187, float %4060, float %4041
  %4063 = select i1 %187, float 1.000000e+00, float %4042
  %4064 = select i1 %4056, float %4057, float %4061
  %4065 = select i1 %4056, float %4058, float %4062
  %4066 = select i1 %4056, float %4059, float %4063
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.CBufRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4067, 2
  %4071 = fadd fast float %4068, %145
  %4072 = fadd fast float %4069, %146
  %4073 = fadd fast float %4070, %147
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4077 = fsub fast float %4071, %4075
  %4078 = fsub fast float %4072, %4076
  %4079 = fmul fast float %4077, %4077
  %4080 = fmul fast float %4078, %4078
  %4081 = fadd fast float %4079, %4080
  %4082 = call float @dx.op.unary.f32(i32 24, float %4081)  ; Sqrt(value)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4084 = fcmp fast olt float %4082, %4083
  br i1 %4084, label %4085, label %4152

; <label>:4085                                    ; preds = %4012
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 0
  %4090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4091 = extractvalue %dx.types.CBufRet.f32 %4090, 0
  %4092 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4093 = extractvalue %dx.types.CBufRet.f32 %4088, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4090, 1
  %4095 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4096 = extractvalue %dx.types.CBufRet.f32 %4088, 3
  %4097 = extractvalue %dx.types.CBufRet.f32 %4090, 3
  %4098 = fadd fast float %4095, %4071
  %4099 = fadd fast float %4096, %4072
  %4100 = fadd fast float %4097, %4073
  %4101 = fmul fast float %4098, %4087
  %4102 = call float @dx.op.tertiary.f32(i32 46, float %4099, float %4089, float %4101)  ; FMad(a,b,c)
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %4091, float %4102)  ; FMad(a,b,c)
  %4104 = fmul fast float %4098, %4092
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4099, float %4093, float %4104)  ; FMad(a,b,c)
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %4094, float %4105)  ; FMad(a,b,c)
  %4107 = fsub fast float %4103, %4095
  %4108 = fsub fast float %4106, %4096
  %4109 = fsub fast float %4107, %4075
  %4110 = fadd fast float %4109, %4083
  %4111 = fsub fast float %4108, %4076
  %4112 = fadd fast float %4111, %4083
  %4113 = extractvalue %dx.types.CBufRet.f32 %4074, 3
  %4114 = fmul fast float %4110, %4113
  %4115 = fmul fast float %4112, %4113
  %4116 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4117 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4118 = fsub fast float 1.000000e+00, %4116
  %4119 = fsub fast float 1.000000e+00, %4117
  %4120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4118, float %4119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = fcmp fast ugt float %4121, 0.000000e+00
  br i1 %4122, label %4123, label %4426

; <label>:4123                                    ; preds = %4085
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 2
  %4126 = fmul fast float %4125, %4121
  %4127 = extractvalue %dx.types.CBufRet.f32 %4124, 3
  %4128 = fadd fast float %4127, %4126
  %4129 = extractvalue %dx.types.CBufRet.f32 %4090, 2
  %4130 = fadd fast float %4128, %4097
  %4131 = fmul fast float %4103, %4091
  %4132 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4094, float %4131)  ; FMad(a,b,c)
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4129, float %4132)  ; FMad(a,b,c)
  %4134 = fsub fast float %4133, %4097
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 2
  %4137 = fsub fast float %4134, %4136
  %4138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4118, float %4119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.ResRet.f32 %4138, 2
  %4142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4118, float %4119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.ResRet.f32 %4142, 2
  %4146 = fadd fast float %4143, %4139
  %4147 = fmul fast float %4146, 0x3F847AE140000000
  %4148 = fadd fast float %4144, %4140
  %4149 = fmul fast float %4148, 0x3F847AE140000000
  %4150 = fadd fast float %4145, %4141
  %4151 = fmul fast float %4150, 0x3F847AE140000000
  br label %4426

; <label>:4152                                    ; preds = %4012
  %4153 = and i32 %163, 1
  %4154 = icmp eq i32 %4153, 0
  br i1 %4154, label %4426, label %4155

; <label>:4155                                    ; preds = %4152
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 0
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4163 = extractvalue %dx.types.CBufRet.f32 %4158, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4165 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4166 = extractvalue %dx.types.CBufRet.f32 %4158, 3
  %4167 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4168 = fadd fast float %4165, %4071
  %4169 = fadd fast float %4166, %4072
  %4170 = fadd fast float %4167, %4073
  %4171 = fmul fast float %4168, %4157
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4159, float %4171)  ; FMad(a,b,c)
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4161, float %4172)  ; FMad(a,b,c)
  %4174 = fmul fast float %4168, %4162
  %4175 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4163, float %4174)  ; FMad(a,b,c)
  %4176 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4164, float %4175)  ; FMad(a,b,c)
  %4177 = fsub fast float %4173, %4165
  %4178 = fsub fast float %4176, %4166
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.CBufRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.CBufRet.f32 %4179, 2
  %4183 = extractvalue %dx.types.CBufRet.f32 %4179, 3
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.i32 %4186, 0
  %4188 = extractvalue %dx.types.CBufRet.i32 %4186, 1
  %4189 = udiv i32 %4188, %4187
  %4190 = fsub fast float %4177, %4180
  %4191 = fsub fast float %4178, %4181
  %4192 = call float @dx.op.binary.f32(i32 35, float %4190, float 0.000000e+00)  ; FMax(a,b)
  %4193 = call float @dx.op.binary.f32(i32 35, float %4191, float 0.000000e+00)  ; FMax(a,b)
  %4194 = call float @dx.op.binary.f32(i32 36, float %4192, float %4182)  ; FMin(a,b)
  %4195 = call float @dx.op.binary.f32(i32 36, float %4193, float %4183)  ; FMin(a,b)
  %4196 = add i32 %4187, -1
  %4197 = add i32 %4189, -1
  %4198 = fmul fast float %4194, %4185
  %4199 = fmul fast float %4195, %4185
  %4200 = fptoui float %4198 to i32
  %4201 = fptoui float %4199 to i32
  %4202 = call i32 @dx.op.binary.i32(i32 40, i32 %4200, i32 %4196)  ; UMin(a,b)
  %4203 = call i32 @dx.op.binary.i32(i32 40, i32 %4201, i32 %4197)  ; UMin(a,b)
  %4204 = mul i32 %4203, %4187
  %4205 = add i32 %4204, %4202
  %4206 = shl i32 %4205, 2
  %4207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.i32 %4207, 0
  %4209 = icmp eq i32 %4208, -1
  br i1 %4209, label %4426, label %4210

; <label>:4210                                    ; preds = %4155
  %4211 = mul i32 %4208, 148
  %4212 = add i32 %4211, 4
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = add i32 %4211, 8
  %4216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.f32 %4216, 0
  %4218 = add i32 %4211, 36
  %4219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = add i32 %4211, 60
  %4222 = add i32 %4211, 92
  %4223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.i32 %4223, 0
  %4225 = add i32 %4211, 116
  %4226 = fsub fast float %4177, %4214
  %4227 = fsub fast float %4178, %4217
  %4228 = fmul fast float %4185, %4226
  %4229 = fmul fast float %4185, %4227
  %4230 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4231 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4232 = fsub fast float 1.000000e+00, %4231
  %4233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4233, 2
  %4235 = call float @dx.op.unary.f32(i32 83, float %4230)  ; DerivCoarseX(value)
  %4236 = call float @dx.op.unary.f32(i32 83, float %4232)  ; DerivCoarseX(value)
  %4237 = call float @dx.op.unary.f32(i32 84, float %4230)  ; DerivCoarseY(value)
  %4238 = call float @dx.op.unary.f32(i32 84, float %4232)  ; DerivCoarseY(value)
  %4239 = fmul fast float %4235, %4234
  %4240 = fmul fast float %4236, %4234
  %4241 = fmul fast float %4237, %4234
  %4242 = fmul fast float %4238, %4234
  %4243 = call float @dx.op.dot2.f32(i32 54, float %4241, float %4242, float %4241, float %4242)  ; Dot2(ax,ay,bx,by)
  %4244 = call float @dx.op.dot2.f32(i32 54, float %4239, float %4240, float %4239, float %4240)  ; Dot2(ax,ay,bx,by)
  %4245 = call float @dx.op.binary.f32(i32 35, float %4244, float %4243)  ; FMax(a,b)
  %4246 = call float @dx.op.unary.f32(i32 23, float %4245)  ; Log(value)
  %4247 = fmul fast float %4246, 5.000000e-01
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 1
  %4250 = fadd fast float %4249, %4247
  %4251 = call float @dx.op.binary.f32(i32 35, float %4250, float 0.000000e+00)  ; FMax(a,b)
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 3
  %4254 = fadd fast float %4253, %4251
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 3
  %4257 = fadd fast float %4254, %4256
  %4258 = add i32 %4224, 0
  %4259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4258, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4260 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4259, i32 0)  ; GetDimensions(handle,mipLevel)
  %4261 = extractvalue %dx.types.Dimensions %4260, 0
  %4262 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4261)  ; FirstbitLo(value)
  %4263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.i32 %4263, 1
  %4265 = sub nsw i32 %4264, %4262
  %4266 = sitofp i32 %4265 to float
  %4267 = fsub fast float %4257, %4266
  %4268 = call float @dx.op.binary.f32(i32 35, float %4267, float 0.000000e+00)  ; FMax(a,b)
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4259, %dx.types.Handle %37, float %4230, float %4232, float %4220, float undef, i32 0, i32 0, i32 undef, float %4268)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = fcmp ule float %4270, 0x3FE0101020000000
  %4272 = extractvalue %dx.types.CBufRet.i32 %4263, 0
  %4273 = and i32 %4272, 128
  %4274 = icmp ne i32 %4273, 0
  %4275 = and i1 %4271, %4274
  br i1 %4275, label %4426, label %4276

; <label>:4276                                    ; preds = %4210
  %4277 = add i32 %4211, 20
  %4278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4277, i32 undef)  ; BufferLoad(srv,index,wot)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = add i32 %4211, 24
  %4281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4280, i32 undef)  ; BufferLoad(srv,index,wot)
  %4282 = extractvalue %dx.types.ResRet.f32 %4281, 0
  %4283 = add i32 %4211, 40
  %4284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4283, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = add i32 %4211, 96
  %4287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.i32 %4287, 0
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4291 = fmul fast float %4290, %4230
  %4292 = fmul fast float %4290, %4232
  %4293 = extractvalue %dx.types.CBufRet.f32 %4289, 3
  %4294 = fadd fast float %4291, %4293
  %4295 = fadd fast float %4292, %4293
  %4296 = add i32 %4288, 0
  %4297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4298 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4297, i32 0)  ; GetDimensions(handle,mipLevel)
  %4299 = extractvalue %dx.types.Dimensions %4298, 0
  %4300 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4299)  ; FirstbitLo(value)
  %4301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.i32 %4301, 1
  %4303 = sub nsw i32 %4302, %4300
  %4304 = sitofp i32 %4303 to float
  %4305 = fsub fast float %4254, %4304
  %4306 = call float @dx.op.binary.f32(i32 35, float %4305, float 0.000000e+00)  ; FMax(a,b)
  %4307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4297, %dx.types.Handle %37, float %4294, float %4295, float %4285, float undef, i32 0, i32 0, i32 undef, float %4306)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4308 = extractvalue %dx.types.ResRet.f32 %4307, 0
  %4309 = fmul fast float %4308, %4279
  %4310 = fadd fast float %4309, %4282
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.CBufRet.f32 %4311, 1
  %4314 = extractvalue %dx.types.CBufRet.f32 %4311, 2
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 3
  %4319 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4320 = fadd fast float %4316, %4177
  %4321 = fadd fast float %4318, %4178
  %4322 = fadd fast float %4310, %4319
  %4323 = fmul fast float %4320, %4312
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4313, float %4323)  ; FMad(a,b,c)
  %4325 = call float @dx.op.tertiary.f32(i32 46, float %4322, float %4314, float %4324)  ; FMad(a,b,c)
  %4326 = fsub fast float %4325, %4319
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4329 = fsub fast float %4326, %4328
  %4330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.i32 %4330, 0
  %4332 = call i32 @dx.op.binary.i32(i32 40, i32 %4208, i32 %4331)  ; UMin(a,b)
  %4333 = mul i32 %4332, 36
  %4334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4333, i32 undef)  ; BufferLoad(srv,index,wot)
  %4335 = extractvalue %dx.types.ResRet.i32 %4334, 0
  %4336 = add i32 %4333, 4
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 0
  %4339 = fmul fast float %4338, %4230
  %4340 = fmul fast float %4338, %4232
  %4341 = extractvalue %dx.types.CBufRet.f32 %4337, 1
  %4342 = fadd fast float %4339, %4341
  %4343 = fadd fast float %4340, %4341
  %4344 = icmp eq i32 %4335, 0
  br i1 %4344, label %4413, label %4345

; <label>:4345                                    ; preds = %4276
  br label %4346

; <label>:4346                                    ; preds = %4403, %4345
  %4347 = phi float [ %4404, %4403 ], [ 0.000000e+00, %4345 ]
  %4348 = phi float [ %4405, %4403 ], [ 0.000000e+00, %4345 ]
  %4349 = phi float [ %4406, %4403 ], [ 0.000000e+00, %4345 ]
  %4350 = phi float [ %4407, %4403 ], [ 0.000000e+00, %4345 ]
  %4351 = phi float [ %4408, %4403 ], [ 0.000000e+00, %4345 ]
  %4352 = phi float [ %4409, %4403 ], [ 0.000000e+00, %4345 ]
  %4353 = phi i32 [ %4410, %4403 ], [ 0, %4345 ]
  %4354 = shl i32 %4353, 2
  %4355 = add i32 %4221, %4354
  %4356 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4355, i32 undef)  ; BufferLoad(srv,index,wot)
  %4357 = extractvalue %dx.types.ResRet.f32 %4356, 0
  %4358 = add i32 %4225, %4354
  %4359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.i32 %4359, 0
  %4361 = add i32 %4360, 0
  %4362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4361, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4363 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4362, i32 0)  ; GetDimensions(handle,mipLevel)
  %4364 = extractvalue %dx.types.Dimensions %4363, 0
  %4365 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4364)  ; FirstbitLo(value)
  %4366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.i32 %4366, 1
  %4368 = sub nsw i32 %4367, %4365
  %4369 = sitofp i32 %4368 to float
  %4370 = fsub fast float %4254, %4369
  %4371 = call float @dx.op.binary.f32(i32 35, float %4370, float 0.000000e+00)  ; FMax(a,b)
  %4372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4362, %dx.types.Handle %37, float %4342, float %4343, float %4357, float undef, i32 0, i32 0, i32 undef, float %4371)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = fcmp fast ogt float %4373, 0.000000e+00
  br i1 %4374, label %4375, label %4403

; <label>:4375                                    ; preds = %4346
  %4376 = add i32 %4336, %4354
  %4377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.i32 %4377, 0
  %4379 = and i32 %4378, 32767
  %4380 = mul nuw nsw i32 %4379, 928
  %4381 = add nuw nsw i32 %4380, 48
  %4382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = extractvalue %dx.types.ResRet.f32 %4382, 1
  %4385 = extractvalue %dx.types.ResRet.f32 %4382, 2
  %4386 = add nuw nsw i32 %4380, 60
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.ResRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.ResRet.f32 %4387, 2
  %4391 = fmul fast float %4383, %4373
  %4392 = fmul fast float %4384, %4373
  %4393 = fmul fast float %4385, %4373
  %4394 = fadd fast float %4391, %4347
  %4395 = fadd fast float %4392, %4348
  %4396 = fadd fast float %4393, %4349
  %4397 = fmul fast float %4388, %4373
  %4398 = fmul fast float %4389, %4373
  %4399 = fmul fast float %4390, %4373
  %4400 = fadd fast float %4397, %4350
  %4401 = fadd fast float %4398, %4351
  %4402 = fadd fast float %4399, %4352
  br label %4403

; <label>:4403                                    ; preds = %4375, %4346
  %4404 = phi float [ %4394, %4375 ], [ %4347, %4346 ]
  %4405 = phi float [ %4395, %4375 ], [ %4348, %4346 ]
  %4406 = phi float [ %4396, %4375 ], [ %4349, %4346 ]
  %4407 = phi float [ %4400, %4375 ], [ %4350, %4346 ]
  %4408 = phi float [ %4401, %4375 ], [ %4351, %4346 ]
  %4409 = phi float [ %4402, %4375 ], [ %4352, %4346 ]
  %4410 = add nuw i32 %4353, 1
  %4411 = icmp eq i32 %4410, %4335
  br i1 %4411, label %4412, label %4346

; <label>:4412                                    ; preds = %4403
  br label %4413

; <label>:4413                                    ; preds = %4412, %4276
  %4414 = phi float [ 0.000000e+00, %4276 ], [ %4404, %4412 ]
  %4415 = phi float [ 0.000000e+00, %4276 ], [ %4405, %4412 ]
  %4416 = phi float [ 0.000000e+00, %4276 ], [ %4406, %4412 ]
  %4417 = phi float [ 0.000000e+00, %4276 ], [ %4407, %4412 ]
  %4418 = phi float [ 0.000000e+00, %4276 ], [ %4408, %4412 ]
  %4419 = phi float [ 0.000000e+00, %4276 ], [ %4409, %4412 ]
  %4420 = fadd fast float %4417, %4414
  %4421 = fmul fast float %4420, 0x3F847AE140000000
  %4422 = fadd fast float %4418, %4415
  %4423 = fmul fast float %4422, 0x3F847AE140000000
  %4424 = fadd fast float %4419, %4416
  %4425 = fmul fast float %4424, 0x3F847AE140000000
  br label %4426

; <label>:4426                                    ; preds = %4413, %4210, %4155, %4152, %4123, %4085
  %4427 = phi float [ %4137, %4123 ], [ -1.310720e+05, %4085 ], [ %4329, %4413 ], [ -1.310720e+05, %4155 ], [ -1.310720e+05, %4210 ], [ -1.310720e+05, %4152 ]
  %4428 = phi float [ %4147, %4123 ], [ 0.000000e+00, %4085 ], [ %4421, %4413 ], [ 0.000000e+00, %4155 ], [ 0.000000e+00, %4210 ], [ 0.000000e+00, %4152 ]
  %4429 = phi float [ %4149, %4123 ], [ 0.000000e+00, %4085 ], [ %4423, %4413 ], [ 0.000000e+00, %4155 ], [ 0.000000e+00, %4210 ], [ 0.000000e+00, %4152 ]
  %4430 = phi float [ %4151, %4123 ], [ 0.000000e+00, %4085 ], [ %4425, %4413 ], [ 0.000000e+00, %4155 ], [ 0.000000e+00, %4210 ], [ 0.000000e+00, %4152 ]
  %4431 = phi i1 [ true, %4123 ], [ false, %4085 ], [ true, %4413 ], [ false, %4155 ], [ false, %4210 ], [ false, %4152 ]
  %4432 = and i32 %163, 3
  %4433 = icmp eq i32 %4432, 1
  %4434 = select i1 %4433, float 1.000000e+00, float 0.000000e+00
  %4435 = fsub fast float %4427, %147
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = select i1 %4431, float %4436, float 1.000000e+00
  %4438 = fmul fast float %4437, %4434
  %4439 = icmp eq i32 %4432, 3
  %4440 = select i1 %4439, float 1.000000e+00, float %4438
  %4441 = call float @dx.op.binary.f32(i32 35, float %4028, float %4440)  ; FMax(a,b)
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = fcmp fast une float %4442, 0.000000e+00
  %4444 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4445 = call float @dx.op.unary.f32(i32 25, float %4444)  ; Rsqrt(value)
  br i1 %4443, label %4453, label %4446

; <label>:4446                                    ; preds = %4426
  %4447 = fmul fast float %4445, %145
  %4448 = fmul fast float %4445, %146
  %4449 = fmul fast float %4445, %147
  %4450 = fsub fast float -0.000000e+00, %4447
  %4451 = fsub fast float -0.000000e+00, %4448
  %4452 = fsub fast float -0.000000e+00, %4449
  br label %4621

; <label>:4453                                    ; preds = %4426
  %4454 = fmul fast float %145, %4445
  %4455 = fsub fast float -0.000000e+00, %4454
  %4456 = fmul fast float %146, %4445
  %4457 = fsub fast float -0.000000e+00, %4456
  %4458 = fmul fast float %147, %4445
  %4459 = fsub fast float -0.000000e+00, %4458
  %4460 = call float @dx.op.dot3.f32(i32 55, float %4455, float %4457, float %4459, float %95, float %97, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = fmul fast float %4442, 2.500000e+00
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4442, 0x4013FFFFE0000000
  %4464 = fadd fast float %4463, 0xBFFFFFFFE0000000
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = fmul fast float %4442, 0x4004000020000000
  %4467 = fadd fast float %4466, 0xBFF8000040000000
  %4468 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4470 = fmul fast float %4031, 1.000000e+01
  %4471 = call float @dx.op.unary.f32(i32 7, float %4470)  ; Saturate(value)
  %4472 = fmul fast float %4471, 2.000000e+00
  %4473 = fsub fast float 3.000000e+00, %4472
  %4474 = fmul fast float %4471, %4471
  %4475 = fmul fast float %4474, %4473
  %4476 = fsub fast float 1.000000e+00, %4475
  %4477 = fsub fast float 0x3FE3333340000000, %4052
  %4478 = fmul fast float %4477, 0x400AAAAAA0000000
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = fmul fast float %4476, %4479
  %4481 = fmul fast float %4064, 0x3FEA2B8620000000
  %4482 = fmul fast float %4065, 0x3FEA2B8620000000
  %4483 = fmul fast float %4066, 0x3FEA2B8620000000
  %4484 = fadd fast float %4481, 0x3FC81DFBA0000000
  %4485 = fmul fast float %4484, %4064
  %4486 = fadd fast float %4485, 0x3F910E6020000000
  %4487 = fadd fast float %4482, 0x3FC81DFBA0000000
  %4488 = fmul fast float %4487, %4065
  %4489 = fadd fast float %4488, 0x3F910E6020000000
  %4490 = fadd fast float %4483, 0x3FC81DFBA0000000
  %4491 = fmul fast float %4490, %4066
  %4492 = fadd fast float %4491, 0x3F910E6020000000
  %4493 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4495 = call float @dx.op.unary.f32(i32 7, float %4492)  ; Saturate(value)
  %4496 = fsub fast float %4493, %4064
  %4497 = fsub fast float %4494, %4065
  %4498 = fsub fast float %4495, %4066
  %4499 = fmul fast float %4496, %4469
  %4500 = fmul fast float %4499, %4480
  %4501 = fmul fast float %4497, %4469
  %4502 = fmul fast float %4501, %4480
  %4503 = fmul fast float %4498, %4469
  %4504 = fmul fast float %4503, %4480
  %4505 = fadd fast float %4500, %4064
  %4506 = fadd fast float %4502, %4065
  %4507 = fadd fast float %4504, %4066
  %4508 = fmul fast float %4025, %4025
  %4509 = fmul fast float %4508, %4508
  %4510 = fadd fast float %4465, 1.000000e+00
  %4511 = fsub fast float %4510, %4480
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = call float @dx.op.dot3.f32(i32 55, float %95, float %97, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fsub fast float 1.000000e+00, %4509
  %4516 = call float @dx.op.binary.f32(i32 36, float %4512, float %4515)  ; FMin(a,b)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4518 = call float @dx.op.binary.f32(i32 35, float %4516, float %4517)  ; FMax(a,b)
  %4519 = fadd fast float %4514, 0xBFE4CCCCC0000000
  %4520 = fmul fast float %4519, 0x4006DB6DA0000000
  %4521 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4522 = fmul fast float %4521, 2.000000e+00
  %4523 = fsub fast float 3.000000e+00, %4522
  %4524 = bitcast float %4049 to i32
  %4525 = ashr i32 %4524, 1
  %4526 = add nsw i32 %4525, 532487669
  %4527 = bitcast i32 %4526 to float
  %4528 = fsub fast float 1.000000e+00, %4527
  %4529 = bitcast float %4528 to i32
  %4530 = sub nsw i32 2129859010, %4529
  %4531 = bitcast i32 %4530 to float
  %4532 = fmul fast float %4531, 2.000000e+00
  %4533 = bitcast float %4050 to i32
  %4534 = ashr i32 %4533, 1
  %4535 = add nsw i32 %4534, 532487669
  %4536 = bitcast i32 %4535 to float
  %4537 = fsub fast float 1.000000e+00, %4536
  %4538 = bitcast float %4537 to i32
  %4539 = sub nsw i32 2129859010, %4538
  %4540 = bitcast i32 %4539 to float
  %4541 = fmul fast float %4540, 2.000000e+00
  %4542 = bitcast float %4051 to i32
  %4543 = ashr i32 %4542, 1
  %4544 = add nsw i32 %4543, 532487669
  %4545 = bitcast i32 %4544 to float
  %4546 = fsub fast float 1.000000e+00, %4545
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4549, 2.000000e+00
  %4551 = fsub fast float 0x4002A9FBE0000000, %4532
  %4552 = fadd fast float %4532, 0x3FD54FDF00000000
  %4553 = bitcast float %4552 to i32
  %4554 = sub nsw i32 2129859010, %4553
  %4555 = bitcast i32 %4554 to float
  %4556 = fmul fast float %4555, %4551
  %4557 = fmul fast float %4556, %4556
  %4558 = fsub fast float 0x4002A9FBE0000000, %4541
  %4559 = fadd fast float %4541, 0x3FD54FDF00000000
  %4560 = bitcast float %4559 to i32
  %4561 = sub nsw i32 2129859010, %4560
  %4562 = bitcast i32 %4561 to float
  %4563 = fmul fast float %4562, %4558
  %4564 = fmul fast float %4563, %4563
  %4565 = fsub fast float 0x4002A9FBE0000000, %4550
  %4566 = fadd fast float %4550, 0x3FD54FDF00000000
  %4567 = bitcast float %4566 to i32
  %4568 = sub nsw i32 2129859010, %4567
  %4569 = bitcast i32 %4568 to float
  %4570 = fmul fast float %4569, %4565
  %4571 = fmul fast float %4570, %4570
  %4572 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4557)  ; FMax(a,b)
  %4573 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4564)  ; FMax(a,b)
  %4574 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4571)  ; FMax(a,b)
  %4575 = fsub fast float 1.000000e+00, %4460
  %4576 = fadd fast float %4575, %4476
  %4577 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4578 = fsub fast float 1.000000e+00, %4440
  %4579 = fmul fast float %4518, %4578
  %4580 = fmul fast float %4521, %4521
  %4581 = fmul fast float %4580, %4579
  %4582 = fmul fast float %4581, %4523
  %4583 = fmul fast float %4578, 0xBFE99999A0000000
  %4584 = fmul fast float %4583, %4469
  %4585 = fmul fast float %4584, %4480
  %4586 = fadd fast float %4585, 1.000000e+00
  %4587 = fadd fast float %4052, -1.000000e+00
  %4588 = fmul fast float %4586, %4587
  %4589 = fadd fast float %4588, 1.000000e+00
  %4590 = fsub fast float %4572, %4049
  %4591 = fsub fast float %4573, %4050
  %4592 = fsub fast float %4574, %4051
  %4593 = fmul fast float %4582, %4590
  %4594 = fmul fast float %4582, %4591
  %4595 = fmul fast float %4582, %4592
  %4596 = fadd fast float %4593, %4049
  %4597 = fadd fast float %4594, %4050
  %4598 = fadd fast float %4595, %4051
  %4599 = fsub fast float %95, %4013
  %4600 = fsub fast float %97, %4014
  %4601 = fsub fast float %99, %4015
  %4602 = fmul fast float %4582, %4599
  %4603 = fmul fast float %4582, %4600
  %4604 = fmul fast float %4582, %4601
  %4605 = fadd fast float %4602, %4013
  %4606 = fadd fast float %4603, %4014
  %4607 = fadd fast float %4604, %4015
  %4608 = fmul fast float %4582, %4577
  %4609 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4610 = fsub fast float 1.000000e+00, %4609
  %4611 = fmul fast float %4608, %4610
  %4612 = fadd fast float %4611, %4609
  %4613 = fsub fast float 1.000000e+00, %4025
  %4614 = fmul fast float %4582, %4613
  %4615 = fadd fast float %4614, %4025
  %4616 = call float @dx.op.dot3.f32(i32 55, float %4605, float %4606, float %4607, float %4605, float %4606, float %4607)  ; Dot3(ax,ay,az,bx,by,bz)
  %4617 = call float @dx.op.unary.f32(i32 25, float %4616)  ; Rsqrt(value)
  %4618 = fmul fast float %4605, %4617
  %4619 = fmul fast float %4606, %4617
  %4620 = fmul fast float %4607, %4617
  br label %4621

; <label>:4621                                    ; preds = %4453, %4446
  %4622 = phi float [ %4452, %4446 ], [ %4459, %4453 ]
  %4623 = phi float [ %4451, %4446 ], [ %4457, %4453 ]
  %4624 = phi float [ %4450, %4446 ], [ %4455, %4453 ]
  %4625 = phi float [ %4449, %4446 ], [ %4458, %4453 ]
  %4626 = phi float [ %4448, %4446 ], [ %4456, %4453 ]
  %4627 = phi float [ %4447, %4446 ], [ %4454, %4453 ]
  %4628 = phi float [ %4049, %4446 ], [ %4596, %4453 ]
  %4629 = phi float [ %4050, %4446 ], [ %4597, %4453 ]
  %4630 = phi float [ %4051, %4446 ], [ %4598, %4453 ]
  %4631 = phi float [ %4064, %4446 ], [ %4505, %4453 ]
  %4632 = phi float [ %4065, %4446 ], [ %4506, %4453 ]
  %4633 = phi float [ %4066, %4446 ], [ %4507, %4453 ]
  %4634 = phi float [ %4013, %4446 ], [ %4618, %4453 ]
  %4635 = phi float [ %4014, %4446 ], [ %4619, %4453 ]
  %4636 = phi float [ %4015, %4446 ], [ %4620, %4453 ]
  %4637 = phi float [ %4052, %4446 ], [ %4612, %4453 ]
  %4638 = phi float [ %4025, %4446 ], [ %4615, %4453 ]
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 2
  %4641 = extractvalue %dx.types.CBufRet.f32 %4639, 3
  %4642 = fmul fast float %4640, %86
  %4643 = fmul fast float %4641, %87
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4642, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = fmul fast float %4648, %4646
  %4650 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4651 = fadd fast float %4650, -1.000000e+00
  %4652 = fmul fast float %4651, %4645
  %4653 = fadd fast float %4652, 1.000000e+00
  %4654 = select i1 %187, float 0.000000e+00, float %4630
  %4655 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %4624, float %4623, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4626, float %4625, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = fmul fast float %4657, 2.000000e+00
  %4659 = fmul fast float %4658, %4634
  %4660 = fmul fast float %4658, %4635
  %4661 = fmul fast float %4658, %4636
  %4662 = fsub fast float %4627, %4659
  %4663 = fsub fast float %4626, %4660
  %4664 = fsub fast float %4625, %4661
  %4665 = call float @dx.op.binary.f32(i32 36, float %4638, float %4653)  ; FMin(a,b)
  %4666 = fsub fast float 1.000000e+00, %4665
  %4667 = bitcast float %4666 to i32
  %4668 = ashr i32 %4667, 1
  %4669 = add nsw i32 %4668, 532487669
  %4670 = bitcast i32 %4669 to float
  %4671 = fsub fast float 1.000000e+00, %4637
  %4672 = call float @dx.op.binary.f32(i32 35, float %4671, float 0x3F847AE140000000)  ; FMax(a,b)
  %4673 = fmul fast float %4672, %4672
  %4674 = fmul fast float %4673, %4673
  %4675 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4670, float %4674, float %4675, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4677 = extractvalue %dx.types.ResRet.f32 %4676, 0
  %4678 = fsub fast float 1.000000e+00, %4638
  %4679 = bitcast float %4678 to i32
  %4680 = sub nsw i32 2129859010, %4679
  %4681 = bitcast i32 %4680 to float
  %4682 = call float @dx.op.dot3.f32(i32 55, float %63, float %59, float %55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4683 = fmul fast float %4682, 0x3FD20DD760000000
  %4684 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %4685 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = fcmp fast oeq float %4685, 0.000000e+00
  %4687 = fcmp fast oeq float %4684, 0.000000e+00
  %4688 = or i1 %4687, %4686
  br i1 %4688, label %4718, label %4689

; <label>:4689                                    ; preds = %4621
  %4690 = fsub fast float -0.000000e+00, %66
  %4691 = fsub fast float -0.000000e+00, %64
  %4692 = call float @dx.op.unary.f32(i32 24, float %4685)  ; Sqrt(value)
  %4693 = fdiv fast float %4692, %4684
  %4694 = fcmp fast ogt float %4693, 0x3FFB6F8900000000
  %4695 = select i1 %4694, float 0x3FFB6F8900000000, float %4693
  %4696 = fmul fast float %4695, 0x3FE8A23460000000
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4695, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4699 = fmul fast float %4697, %4684
  %4700 = fmul fast float %4698, 0x3FF279A740000000
  %4701 = fadd fast float %4700, -1.000000e+00
  %4702 = call float @dx.op.dot3.f32(i32 55, float %4690, float %4691, float %65, float %4690, float %4691, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4703 = call float @dx.op.unary.f32(i32 25, float %4702)  ; Rsqrt(value)
  %4704 = fmul fast float %4703, %4690
  %4705 = fmul fast float %4703, %4691
  %4706 = fmul fast float %4703, %65
  %4707 = fmul fast float %4701, %4701
  %4708 = fsub fast float 1.000000e+00, %4707
  %4709 = fmul fast float %4698, 0x40005F8BE0000000
  %4710 = fsub fast float 0x400C5BF8A0000000, %4709
  %4711 = fdiv fast float %4699, %4710
  %4712 = fmul fast float %4711, 0x3FEE31C3C0000000
  %4713 = fmul fast float %4712, %4708
  %4714 = fmul fast float %4698, 0x3FDACB7480000000
  %4715 = fadd fast float %4714, 0xBFD7347680000000
  %4716 = fmul fast float %4715, %4711
  %4717 = fmul fast float %4716, %4708
  br label %4718

; <label>:4718                                    ; preds = %4689, %4621
  %4719 = phi float [ %4704, %4689 ], [ 0.000000e+00, %4621 ]
  %4720 = phi float [ %4705, %4689 ], [ 0.000000e+00, %4621 ]
  %4721 = phi float [ %4706, %4689 ], [ 0.000000e+00, %4621 ]
  %4722 = phi float [ %4713, %4689 ], [ 0.000000e+00, %4621 ]
  %4723 = phi float [ %4717, %4689 ], [ 0.000000e+00, %4621 ]
  %4724 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4720, float %4721, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = fmul fast float %4724, %4724
  %4726 = fmul fast float %4725, 0x3FEE471020000000
  %4727 = fadd fast float %4726, 0xBFD42F6020000000
  %4728 = fmul fast float %4684, 0x3FD20DD760000000
  %4729 = fmul fast float %4727, %4723
  %4730 = fmul fast float %4722, 0x3FDF454380000000
  %4731 = fmul fast float %4730, %4724
  %4732 = fadd fast float %4731, %4728
  %4733 = fadd fast float %4732, %4729
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4720, float %4721, float %4662, float %4663, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = fmul fast float %4734, 0x3FDF454380000000
  %4736 = fmul fast float %4734, %4734
  %4737 = fmul fast float %4736, 0x3FEE471020000000
  %4738 = fadd fast float %4737, 0xBFD42F6020000000
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4684, float %4722, float %4723, float 0x3FD20DD760000000, float %4735, float %4738)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %4741 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %4742 = fcmp fast oeq float %4741, 0.000000e+00
  %4743 = fcmp fast oeq float %4740, 0.000000e+00
  %4744 = or i1 %4743, %4742
  br i1 %4744, label %4774, label %4745

; <label>:4745                                    ; preds = %4718
  %4746 = fsub fast float -0.000000e+00, %62
  %4747 = fsub fast float -0.000000e+00, %60
  %4748 = call float @dx.op.unary.f32(i32 24, float %4741)  ; Sqrt(value)
  %4749 = fdiv fast float %4748, %4740
  %4750 = fcmp fast ogt float %4749, 0x3FFB6F8900000000
  %4751 = select i1 %4750, float 0x3FFB6F8900000000, float %4749
  %4752 = fmul fast float %4751, 0x3FE8A23460000000
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = call float @dx.op.binary.f32(i32 35, float %4751, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4755 = fmul fast float %4753, %4740
  %4756 = fmul fast float %4754, 0x3FF279A740000000
  %4757 = fadd fast float %4756, -1.000000e+00
  %4758 = call float @dx.op.dot3.f32(i32 55, float %4746, float %4747, float %61, float %4746, float %4747, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4759 = call float @dx.op.unary.f32(i32 25, float %4758)  ; Rsqrt(value)
  %4760 = fmul fast float %4759, %4746
  %4761 = fmul fast float %4759, %4747
  %4762 = fmul fast float %4759, %61
  %4763 = fmul fast float %4757, %4757
  %4764 = fsub fast float 1.000000e+00, %4763
  %4765 = fmul fast float %4754, 0x40005F8BE0000000
  %4766 = fsub fast float 0x400C5BF8A0000000, %4765
  %4767 = fdiv fast float %4755, %4766
  %4768 = fmul fast float %4767, 0x3FEE31C3C0000000
  %4769 = fmul fast float %4768, %4764
  %4770 = fmul fast float %4754, 0x3FDACB7480000000
  %4771 = fadd fast float %4770, 0xBFD7347680000000
  %4772 = fmul fast float %4771, %4767
  %4773 = fmul fast float %4772, %4764
  br label %4774

; <label>:4774                                    ; preds = %4745, %4718
  %4775 = phi float [ %4760, %4745 ], [ 0.000000e+00, %4718 ]
  %4776 = phi float [ %4761, %4745 ], [ 0.000000e+00, %4718 ]
  %4777 = phi float [ %4762, %4745 ], [ 0.000000e+00, %4718 ]
  %4778 = phi float [ %4769, %4745 ], [ 0.000000e+00, %4718 ]
  %4779 = phi float [ %4773, %4745 ], [ 0.000000e+00, %4718 ]
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4776, float %4777, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = fmul fast float %4780, %4780
  %4782 = fmul fast float %4781, 0x3FEE471020000000
  %4783 = fadd fast float %4782, 0xBFD42F6020000000
  %4784 = fmul fast float %4740, 0x3FD20DD760000000
  %4785 = fmul fast float %4783, %4779
  %4786 = fmul fast float %4778, 0x3FDF454380000000
  %4787 = fmul fast float %4786, %4780
  %4788 = fadd fast float %4787, %4784
  %4789 = fadd fast float %4788, %4785
  %4790 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4776, float %4777, float %4662, float %4663, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = fmul fast float %4790, 0x3FDF454380000000
  %4792 = fmul fast float %4790, %4790
  %4793 = fmul fast float %4792, 0x3FEE471020000000
  %4794 = fadd fast float %4793, 0xBFD42F6020000000
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4778, float %4779, float 0x3FD20DD760000000, float %4791, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %55)  ; FMax(a,b)
  %4797 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %4798 = fcmp fast oeq float %4797, 0.000000e+00
  %4799 = fcmp fast oeq float %4796, 0.000000e+00
  %4800 = or i1 %4799, %4798
  br i1 %4800, label %4830, label %4801

; <label>:4801                                    ; preds = %4774
  %4802 = fsub fast float -0.000000e+00, %58
  %4803 = fsub fast float -0.000000e+00, %56
  %4804 = call float @dx.op.unary.f32(i32 24, float %4797)  ; Sqrt(value)
  %4805 = fdiv fast float %4804, %4796
  %4806 = fcmp fast ogt float %4805, 0x3FFB6F8900000000
  %4807 = select i1 %4806, float 0x3FFB6F8900000000, float %4805
  %4808 = fmul fast float %4807, 0x3FE8A23460000000
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = call float @dx.op.binary.f32(i32 35, float %4807, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4811 = fmul fast float %4809, %4796
  %4812 = fmul fast float %4810, 0x3FF279A740000000
  %4813 = fadd fast float %4812, -1.000000e+00
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %57, float %4802, float %4803, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = call float @dx.op.unary.f32(i32 25, float %4814)  ; Rsqrt(value)
  %4816 = fmul fast float %4815, %4802
  %4817 = fmul fast float %4815, %4803
  %4818 = fmul fast float %4815, %57
  %4819 = fmul fast float %4813, %4813
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = fmul fast float %4810, 0x40005F8BE0000000
  %4822 = fsub fast float 0x400C5BF8A0000000, %4821
  %4823 = fdiv fast float %4811, %4822
  %4824 = fmul fast float %4823, 0x3FEE31C3C0000000
  %4825 = fmul fast float %4824, %4820
  %4826 = fmul fast float %4810, 0x3FDACB7480000000
  %4827 = fadd fast float %4826, 0xBFD7347680000000
  %4828 = fmul fast float %4827, %4823
  %4829 = fmul fast float %4828, %4820
  br label %4830

; <label>:4830                                    ; preds = %4801, %4774
  %4831 = phi float [ %4816, %4801 ], [ 0.000000e+00, %4774 ]
  %4832 = phi float [ %4817, %4801 ], [ 0.000000e+00, %4774 ]
  %4833 = phi float [ %4818, %4801 ], [ 0.000000e+00, %4774 ]
  %4834 = phi float [ %4825, %4801 ], [ 0.000000e+00, %4774 ]
  %4835 = phi float [ %4829, %4801 ], [ 0.000000e+00, %4774 ]
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4832, float %4833, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = fmul fast float %4836, %4836
  %4838 = fmul fast float %4837, 0x3FEE471020000000
  %4839 = fadd fast float %4838, 0xBFD42F6020000000
  %4840 = fmul fast float %4796, 0x3FD20DD760000000
  %4841 = fmul fast float %4839, %4835
  %4842 = fmul fast float %4834, 0x3FDF454380000000
  %4843 = fmul fast float %4842, %4836
  %4844 = fadd fast float %4843, %4840
  %4845 = fadd fast float %4844, %4841
  %4846 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4832, float %4833, float %4662, float %4663, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %4847 = fmul fast float %4846, 0x3FDF454380000000
  %4848 = fmul fast float %4846, %4846
  %4849 = fmul fast float %4848, 0x3FEE471020000000
  %4850 = fadd fast float %4849, 0xBFD42F6020000000
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4796, float %4834, float %4835, float 0x3FD20DD760000000, float %4847, float %4850)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = call float @dx.op.binary.f32(i32 35, float %4733, float 0.000000e+00)  ; FMax(a,b)
  %4853 = call float @dx.op.binary.f32(i32 35, float %4789, float 0.000000e+00)  ; FMax(a,b)
  %4854 = call float @dx.op.binary.f32(i32 35, float %4845, float 0.000000e+00)  ; FMax(a,b)
  %4855 = call float @dx.op.binary.f32(i32 35, float %4739, float 0.000000e+00)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 35, float %4795, float 0.000000e+00)  ; FMax(a,b)
  %4857 = call float @dx.op.binary.f32(i32 35, float %4851, float 0.000000e+00)  ; FMax(a,b)
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 0
  %4860 = call float @dx.op.binary.f32(i32 36, float %4631, float %4859)  ; FMin(a,b)
  %4861 = fmul fast float %4860, %4666
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = call float @dx.op.binary.f32(i32 36, float %4632, float %4859)  ; FMin(a,b)
  %4867 = fmul fast float %4866, %4666
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = bitcast float %4868 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = call float @dx.op.binary.f32(i32 36, float %4633, float %4859)  ; FMin(a,b)
  %4873 = fmul fast float %4872, %4666
  %4874 = fsub fast float 1.000000e+00, %4873
  %4875 = bitcast float %4874 to i32
  %4876 = sub nsw i32 2129859010, %4875
  %4877 = bitcast i32 %4876 to float
  %4878 = fmul fast float %4852, %4665
  %4879 = fmul fast float %4878, %4865
  %4880 = fmul fast float %4853, %4665
  %4881 = fmul fast float %4880, %4871
  %4882 = fmul fast float %4854, %4665
  %4883 = fmul fast float %4882, %4877
  %4884 = call float @dx.op.binary.f32(i32 36, float %4628, float %4859)  ; FMin(a,b)
  %4885 = fmul fast float %4884, %4666
  %4886 = fsub fast float 1.000000e+00, %4885
  %4887 = bitcast float %4886 to i32
  %4888 = sub nsw i32 2129859010, %4887
  %4889 = bitcast i32 %4888 to float
  %4890 = call float @dx.op.binary.f32(i32 36, float %4629, float %4859)  ; FMin(a,b)
  %4891 = fmul fast float %4890, %4666
  %4892 = fsub fast float 1.000000e+00, %4891
  %4893 = bitcast float %4892 to i32
  %4894 = sub nsw i32 2129859010, %4893
  %4895 = bitcast i32 %4894 to float
  %4896 = call float @dx.op.binary.f32(i32 36, float %4654, float %4859)  ; FMin(a,b)
  %4897 = fmul fast float %4896, %4666
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = bitcast float %4898 to i32
  %4900 = sub nsw i32 2129859010, %4899
  %4901 = bitcast i32 %4900 to float
  %4902 = fmul fast float %4855, %4665
  %4903 = fmul fast float %4902, %4889
  %4904 = fmul fast float %4856, %4665
  %4905 = fmul fast float %4904, %4895
  %4906 = fmul fast float %4857, %4665
  %4907 = fmul fast float %4906, %4901
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4881, float %4883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = select i1 %187, float 0.000000e+00, float %4879
  %4910 = select i1 %187, float %4908, float %4881
  %4911 = select i1 %187, float 0.000000e+00, float %4883
  %4912 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4905, float %4907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4913 = select i1 %187, float 0.000000e+00, float %4903
  %4914 = select i1 %187, float %4912, float %4905
  %4915 = select i1 %187, float 0.000000e+00, float %4907
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 1
  %4918 = fsub fast float %81, %4917
  %4919 = extractvalue %dx.types.CBufRet.f32 %4916, 2
  %4920 = fmul fast float %4918, %4919
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fmul fast float %4682, 0x4071A18460000000
  %4923 = fadd fast float %4922, 0x3F0FFB4800000000
  %4924 = call float @dx.op.unary.f32(i32 23, float %4923)  ; Log(value)
  %4925 = fadd fast float %4924, 0x4006B851E0000000
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 1
  %4928 = extractvalue %dx.types.CBufRet.f32 %4926, 3
  %4929 = fsub fast float %4927, %4925
  %4930 = fcmp fast ogt float %4929, 0.000000e+00
  %4931 = fcmp fast olt float %4929, 0.000000e+00
  %4932 = zext i1 %4930 to i32
  %4933 = zext i1 %4931 to i32
  %4934 = sub nsw i32 %4932, %4933
  %4935 = sitofp i32 %4934 to float
  %4936 = call float @dx.op.unary.f32(i32 6, float %4929)  ; FAbs(value)
  %4937 = fsub fast float %4936, %4928
  %4938 = call float @dx.op.binary.f32(i32 35, float %4937, float 0.000000e+00)  ; FMax(a,b)
  %4939 = fmul fast float %4935, %4938
  %4940 = fadd fast float %4924, %4939
  %4941 = call float @dx.op.unary.f32(i32 21, float %4940)  ; Exp(value)
  %4942 = fmul fast float %4941, 0x3F50624DE0000000
  %4943 = fcmp fast oeq float %4683, 0.000000e+00
  %4944 = fdiv fast float 0x400C5BF880000000, %4682
  %4945 = fmul fast float %4942, %4944
  %4946 = select i1 %4943, float 1.000000e+00, float %4945
  %4947 = call float @dx.op.binary.f32(i32 35, float %4946, float 1.000000e+00)  ; FMax(a,b)
  %4948 = fadd fast float %4947, -1.000000e+00
  %4949 = fmul fast float %4948, %4921
  %4950 = fadd fast float %4949, 1.000000e+00
  %4951 = call float @dx.op.unary.f32(i32 6, float %4950)  ; FAbs(value)
  %4952 = fmul fast float %4951, %4909
  %4953 = fmul fast float %4951, %4910
  %4954 = fmul fast float %4951, %4911
  %4955 = fmul fast float %4656, 9.843750e-01
  %4956 = fmul fast float %4637, 9.843750e-01
  %4957 = fadd fast float %4955, 7.812500e-03
  %4958 = fadd fast float %4956, 7.812500e-03
  %4959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4957, float %4958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4960 = extractvalue %dx.types.ResRet.f32 %4959, 2
  %4961 = extractvalue %dx.types.ResRet.f32 %4959, 3
  %4962 = fmul fast float %4960, %4628
  %4963 = fmul fast float %4960, %4629
  %4964 = fmul fast float %4960, %4654
  %4965 = fadd fast float %4962, %4961
  %4966 = fadd fast float %4963, %4961
  %4967 = fadd fast float %4964, %4961
  %4968 = fcmp fast ogt float %4026, 0.000000e+00
  br i1 %4968, label %4969, label %4995

; <label>:4969                                    ; preds = %4830
  %4970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %4656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4971 = extractvalue %dx.types.ResRet.f32 %4970, 0
  %4972 = extractvalue %dx.types.ResRet.f32 %4970, 1
  %4973 = extractvalue %dx.types.ResRet.f32 %4970, 2
  %4974 = fadd fast float %4971, -5.000000e-01
  %4975 = fadd fast float %4972, -5.000000e-01
  %4976 = fadd fast float %4973, -5.000000e-01
  %4977 = fsub fast float 1.000000e+00, %4628
  %4978 = fsub fast float 1.000000e+00, %4629
  %4979 = fsub fast float 1.000000e+00, %4654
  %4980 = fmul fast float %4628, 4.000000e+00
  %4981 = fmul fast float %4980, %4977
  %4982 = fmul fast float %4981, %4974
  %4983 = fmul fast float %4629, 4.000000e+00
  %4984 = fmul fast float %4983, %4978
  %4985 = fmul fast float %4984, %4975
  %4986 = fmul fast float %4654, 4.000000e+00
  %4987 = fmul fast float %4986, %4979
  %4988 = fmul fast float %4987, %4976
  %4989 = fadd fast float %4982, %4965
  %4990 = fadd fast float %4985, %4966
  %4991 = fadd fast float %4988, %4967
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  br label %4995

; <label>:4995                                    ; preds = %4969, %4830
  %4996 = phi float [ %4992, %4969 ], [ %4965, %4830 ]
  %4997 = phi float [ %4993, %4969 ], [ %4966, %4830 ]
  %4998 = phi float [ %4994, %4969 ], [ %4967, %4830 ]
  %4999 = call float @dx.op.binary.f32(i32 35, float %4997, float %4998)  ; FMax(a,b)
  %5000 = call float @dx.op.binary.f32(i32 35, float %4996, float %4999)  ; FMax(a,b)
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = fmul fast float %5000, %4637
  %5003 = fadd fast float %5002, %4637
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5008 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5009 = fmul fast float %5003, %5005
  %5010 = fadd fast float %5009, %5006
  %5011 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5012 = fmul fast float %5007, %5003
  %5013 = fadd fast float %5012, %5008
  %5014 = call float @dx.op.unary.f32(i32 7, float %5013)  ; Saturate(value)
  %5015 = fsub fast float 1.000000e+00, %4677
  %5016 = fadd fast float %5015, %5014
  %5017 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5018 = fcmp fast olt float %5017, 1.000000e+00
  br i1 %5018, label %5019, label %5874

; <label>:5019                                    ; preds = %4995
  %5020 = fcmp fast olt float %5011, 1.000000e+00
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = fcmp fast ogt float %5022, 0.000000e+00
  %5024 = or i1 %5020, %5023
  %5025 = or i1 %5020, %5023
  %5026 = xor i1 %5025, true
  %5027 = zext i1 %5026 to i32
  br i1 %5024, label %5028, label %5271

; <label>:5028                                    ; preds = %5019
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5033 = extractvalue %dx.types.CBufRet.f32 %5029, 3
  %5034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = extractvalue %dx.types.CBufRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.CBufRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.CBufRet.f32 %5034, 2
  %5038 = extractvalue %dx.types.CBufRet.f32 %5034, 3
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 0
  %5041 = extractvalue %dx.types.CBufRet.f32 %5039, 1
  %5042 = extractvalue %dx.types.CBufRet.f32 %5039, 2
  %5043 = extractvalue %dx.types.CBufRet.f32 %5039, 3
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = extractvalue %dx.types.CBufRet.f32 %5044, 1
  %5047 = extractvalue %dx.types.CBufRet.f32 %5044, 2
  %5048 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = extractvalue %dx.types.CBufRet.f32 %5049, 0
  %5051 = extractvalue %dx.types.CBufRet.f32 %5049, 1
  %5052 = extractvalue %dx.types.CBufRet.f32 %5049, 2
  %5053 = extractvalue %dx.types.CBufRet.f32 %5049, 3
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 0
  %5056 = extractvalue %dx.types.CBufRet.f32 %5054, 1
  %5057 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5058 = extractvalue %dx.types.CBufRet.f32 %5054, 3
  %5059 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float %4662, float %4663, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5060 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.unary.f32(i32 6, float %5060)  ; FAbs(value)
  %5062 = fmul fast float %5061, 8.000000e+00
  %5063 = fadd fast float %5062, -6.000000e+00
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fmul fast float %5059, 8.000000e+00
  %5066 = fmul fast float %5065, %5022
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = fcmp fast ogt float %5067, 0.000000e+00
  br i1 %5068, label %5069, label %5246, !dx.controlflow.hints !87

; <label>:5069                                    ; preds = %5028
  %5070 = extractvalue %dx.types.CBufRet.f32 %5021, 1
  %5071 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5072 = fsub fast float %5070, %5071
  %5073 = fmul fast float %5072, %4637
  %5074 = fadd fast float %5073, %5071
  %5075 = fmul fast float %200, 2.000000e+00
  %5076 = fmul fast float %201, 2.000000e+00
  %5077 = fadd fast float %5075, -1.000000e+00
  %5078 = fadd fast float %5076, -1.000000e+00
  %5079 = fmul fast float %5074, %5077
  %5080 = fmul fast float %5074, %5078
  %5081 = fadd fast float %5079, %86
  %5082 = fadd fast float %5080, %87
  %5083 = fmul fast float %5081, %4640
  %5084 = fmul fast float %5082, %4641
  %5085 = fadd fast float %4637, 0xBFE3333340000000
  %5086 = fmul fast float %5085, 0x4004000020000000
  %5087 = fsub fast float 1.000000e+00, %5086
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fmul fast float %5088, 3.000000e+00
  %5090 = fadd fast float %5089, %200
  %5091 = call float @dx.op.unary.f32(i32 27, float %5090)  ; Round_ni(value)
  %5092 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5083, float %5084, float %5091, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5093 = extractvalue %dx.types.ResRet.f32 %5092, 0
  %5094 = fcmp fast une float %5093, 0xFFF0000000000000
  %5095 = fcmp fast une float %5093, 0x7FF0000000000000
  %5096 = and i1 %5094, %5095
  %5097 = fcmp fast olt float %5093, 0.000000e+00
  %5098 = call float @dx.op.unary.f32(i32 6, float %5093)  ; FAbs(value)
  %5099 = fsub fast float 1.000000e+00, %5098
  %5100 = select i1 %5096, float 1.000000e+00, float 0.000000e+00
  %5101 = fmul fast float %5100, %5067
  %5102 = fcmp fast ogt float %5101, 0.000000e+00
  br i1 %5102, label %5103, label %5246, !dx.controlflow.hints !88

; <label>:5103                                    ; preds = %5069
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 1
  %5107 = extractvalue %dx.types.CBufRet.f32 %5104, 2
  %5108 = select i1 %5097, float 0.000000e+00, float %5105
  %5109 = select i1 %5097, float 0.000000e+00, float %5106
  %5110 = select i1 %5097, float 0.000000e+00, float %5107
  %5111 = select i1 %5097, float %5030, float %5045
  %5112 = select i1 %5097, float %5035, float %5050
  %5113 = select i1 %5097, float %5040, float %5055
  %5114 = select i1 %5097, float %5031, float %5046
  %5115 = select i1 %5097, float %5036, float %5051
  %5116 = select i1 %5097, float %5041, float %5056
  %5117 = select i1 %5097, float %5032, float %5047
  %5118 = select i1 %5097, float %5037, float %5052
  %5119 = select i1 %5097, float %5042, float %5057
  %5120 = select i1 %5097, float %5033, float %5048
  %5121 = select i1 %5097, float %5038, float %5053
  %5122 = select i1 %5097, float %5043, float %5058
  %5123 = fadd fast float %5108, %145
  %5124 = fadd fast float %5109, %146
  %5125 = fadd fast float %5110, %147
  %5126 = fmul fast float %5123, %5111
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5114, float %5126)  ; FMad(a,b,c)
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5125, float %5117, float %5127)  ; FMad(a,b,c)
  %5129 = fadd fast float %5128, %5120
  %5130 = fmul fast float %5123, %5112
  %5131 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5115, float %5130)  ; FMad(a,b,c)
  %5132 = call float @dx.op.tertiary.f32(i32 46, float %5125, float %5118, float %5131)  ; FMad(a,b,c)
  %5133 = fadd fast float %5132, %5121
  %5134 = fmul fast float %5123, %5113
  %5135 = call float @dx.op.tertiary.f32(i32 46, float %5124, float %5116, float %5134)  ; FMad(a,b,c)
  %5136 = call float @dx.op.tertiary.f32(i32 46, float %5125, float %5119, float %5135)  ; FMad(a,b,c)
  %5137 = fadd fast float %5136, %5122
  %5138 = fdiv fast float 1.000000e+00, %5137
  %5139 = fmul fast float %5138, %5129
  %5140 = fmul fast float %5138, %5133
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5144 = fmul fast float %5139, %5142
  %5145 = fmul fast float %5140, %5143
  %5146 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5147 = extractvalue %dx.types.CBufRet.f32 %5141, 3
  %5148 = fadd fast float %5144, %5146
  %5149 = fadd fast float %5145, %5147
  %5150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.f32 %5150, 3
  %5152 = fmul fast float %5151, %4662
  %5153 = fmul fast float %5151, %4663
  %5154 = fmul fast float %5151, %4664
  %5155 = fadd fast float %5152, %5123
  %5156 = fadd fast float %5153, %5124
  %5157 = fadd fast float %5154, %5125
  %5158 = fmul fast float %5155, %5111
  %5159 = call float @dx.op.tertiary.f32(i32 46, float %5156, float %5114, float %5158)  ; FMad(a,b,c)
  %5160 = call float @dx.op.tertiary.f32(i32 46, float %5157, float %5117, float %5159)  ; FMad(a,b,c)
  %5161 = fadd fast float %5160, %5120
  %5162 = fmul fast float %5155, %5112
  %5163 = call float @dx.op.tertiary.f32(i32 46, float %5156, float %5115, float %5162)  ; FMad(a,b,c)
  %5164 = call float @dx.op.tertiary.f32(i32 46, float %5157, float %5118, float %5163)  ; FMad(a,b,c)
  %5165 = fadd fast float %5164, %5121
  %5166 = fmul fast float %5155, %5113
  %5167 = call float @dx.op.tertiary.f32(i32 46, float %5156, float %5116, float %5166)  ; FMad(a,b,c)
  %5168 = call float @dx.op.tertiary.f32(i32 46, float %5157, float %5119, float %5167)  ; FMad(a,b,c)
  %5169 = fadd fast float %5168, %5122
  %5170 = fdiv fast float 1.000000e+00, %5169
  %5171 = fmul fast float %5170, %5161
  %5172 = fmul fast float %5170, %5165
  %5173 = fmul fast float %5148, 2.000000e+00
  %5174 = fadd fast float %5173, -1.000000e+00
  %5175 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5176 = fmul fast float %5175, 5.000000e+00
  %5177 = fadd fast float %5176, -4.000000e+00
  %5178 = call float @dx.op.unary.f32(i32 7, float %5177)  ; Saturate(value)
  %5179 = fmul fast float %5178, %5064
  %5180 = fsub fast float %5139, %5171
  %5181 = fmul fast float %5142, %5180
  %5182 = fmul fast float %5179, %5181
  %5183 = fsub fast float %5171, %5139
  %5184 = fmul fast float %5142, %5183
  %5185 = fadd fast float %5184, %5182
  %5186 = fsub fast float %5172, %5140
  %5187 = fmul fast float %5143, %5186
  %5188 = fmul fast float %5185, %5099
  %5189 = fmul fast float %5187, %5099
  %5190 = fadd fast float %5188, %5148
  %5191 = fadd fast float %5189, %5149
  %5192 = fsub fast float %5170, %5138
  %5193 = fmul fast float %5192, %5099
  %5194 = fadd fast float %5193, %5138
  %5195 = fdiv fast float 1.000000e+00, %5194
  %5196 = fadd fast float %4637, -1.000000e+00
  %5197 = fsub fast float %5195, %5137
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 2
  %5200 = fmul fast float %5199, %5195
  %5201 = fdiv fast float 1.600000e+02, %5200
  %5202 = fmul fast float %5196, %5196
  %5203 = fmul fast float %5202, 0xBFB5B17960000000
  %5204 = fmul fast float %5203, %5197
  %5205 = fmul fast float %5204, %5201
  %5206 = call float @dx.op.unary.f32(i32 21, float %5205)  ; Exp(value)
  %5207 = fmul fast float %5206, 0x3FF04B2960000000
  %5208 = fsub fast float 0x3FF04B2960000000, %5207
  %5209 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5210 = fmul fast float %5209, 4.000000e+00
  %5211 = fadd fast float %200, -5.000000e-01
  %5212 = fadd fast float %201, -5.000000e-01
  %5213 = fmul fast float %5209, 0x3FBEB851E0000000
  %5214 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5215 = fmul fast float %5214, %5211
  %5216 = fmul fast float %5214, %5212
  %5217 = fadd fast float %5190, %5215
  %5218 = fadd fast float %5191, %5216
  %5219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5217, float %5218, float undef, float undef, i32 0, i32 0, i32 undef, float %5210)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5225 = fmul fast float %5224, %5220
  %5226 = fmul fast float %5224, %5221
  %5227 = fmul fast float %5224, %5222
  %5228 = select i1 %187, float 0.000000e+00, float %5226
  %5229 = select i1 %187, float 0.000000e+00, float %5227
  %5230 = fmul fast float %5217, 2.000000e+00
  %5231 = fmul fast float %5218, 2.000000e+00
  %5232 = fadd fast float %5230, -1.000000e+00
  %5233 = fadd fast float %5231, -1.000000e+00
  %5234 = fmul fast float %5232, %5232
  %5235 = fsub fast float 1.000000e+00, %5234
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = fmul fast float %5237, %5064
  %5239 = fadd fast float %5238, %5236
  %5240 = fmul fast float %5233, %5233
  %5241 = fsub fast float 1.000000e+00, %5240
  %5242 = call float @dx.op.unary.f32(i32 7, float %5241)  ; Saturate(value)
  %5243 = fmul fast float %5239, %5242
  %5244 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5245 = fmul fast float %5244, %5101
  br label %5246

; <label>:5246                                    ; preds = %5103, %5069, %5028
  %5247 = phi float [ %5225, %5103 ], [ 0.000000e+00, %5069 ], [ 0.000000e+00, %5028 ]
  %5248 = phi float [ %5228, %5103 ], [ 0.000000e+00, %5069 ], [ 0.000000e+00, %5028 ]
  %5249 = phi float [ %5229, %5103 ], [ 0.000000e+00, %5069 ], [ 0.000000e+00, %5028 ]
  %5250 = phi float [ %5245, %5103 ], [ 0.000000e+00, %5069 ], [ 0.000000e+00, %5028 ]
  %5251 = fcmp fast olt float %5250, 1.000000e+00
  %5252 = or i1 %5251, %5026
  %5253 = zext i1 %5252 to i32
  %5254 = fmul fast float %5250, %5011
  %5255 = fsub fast float %5250, %5254
  %5256 = fsub fast float 1.000000e+00, %5017
  %5257 = fmul fast float %5255, %5256
  %5258 = fadd fast float %5257, %5017
  %5259 = fsub fast float %5258, %5255
  %5260 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5261 = fmul fast float %5260, %4913
  %5262 = fmul fast float %5260, %4914
  %5263 = fmul fast float %5260, %4915
  %5264 = fsub fast float -0.000000e+00, %5258
  %5265 = fmul fast float %5255, %5247
  %5266 = fmul fast float %5255, %5248
  %5267 = fmul fast float %5255, %5249
  %5268 = fadd fast float %5265, %5261
  %5269 = fadd fast float %5266, %5262
  %5270 = fadd fast float %5267, %5263
  br label %5271

; <label>:5271                                    ; preds = %5246, %5019
  %5272 = phi float [ %5017, %5019 ], [ %5264, %5246 ]
  %5273 = phi float [ %4913, %5019 ], [ %5268, %5246 ]
  %5274 = phi float [ %4914, %5019 ], [ %5269, %5246 ]
  %5275 = phi float [ %4915, %5019 ], [ %5270, %5246 ]
  %5276 = phi i32 [ %5027, %5019 ], [ %5253, %5246 ]
  %5277 = icmp eq i32 %5276, 0
  br i1 %5277, label %5874, label %5278

; <label>:5278                                    ; preds = %5271
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5281 = extractvalue %dx.types.CBufRet.f32 %5279, 3
  %5282 = fmul fast float %5280, %86
  %5283 = fmul fast float %5281, %87
  %5284 = fptoui float %5282 to i32
  %5285 = fptoui float %5283 to i32
  %5286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5287 = extractvalue %dx.types.CBufRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.CBufRet.f32 %5286, 2
  %5289 = extractvalue %dx.types.CBufRet.f32 %5286, 3
  %5290 = fadd fast float %81, -4.000000e+00
  %5291 = call float @dx.op.binary.f32(i32 35, float %5290, float 0.000000e+00)  ; FMax(a,b)
  %5292 = fadd fast float %5291, %5287
  %5293 = fmul fast float %5292, %5288
  %5294 = call float @dx.op.unary.f32(i32 23, float %5293)  ; Log(value)
  %5295 = fmul fast float %5294, %5289
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 2
  %5298 = fmul fast float %5295, %5297
  %5299 = call float @dx.op.unary.f32(i32 7, float %5298)  ; Saturate(value)
  %5300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.i32 %5300, 1
  %5302 = add i32 %5301, -1
  %5303 = uitofp i32 %5301 to float
  %5304 = fmul fast float %5303, %5299
  %5305 = fptoui float %5304 to i32
  %5306 = call i32 @dx.op.binary.i32(i32 40, i32 %5305, i32 %5302)  ; UMin(a,b)
  %5307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5308 = extractvalue %dx.types.CBufRet.i32 %5307, 2
  %5309 = extractvalue %dx.types.CBufRet.i32 %5307, 3
  %5310 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5285, i32 %5308, i32 %5284)  ; UMad(a,b,c)
  %5311 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5306, i32 %5309, i32 %5310)  ; UMad(a,b,c)
  %5312 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %5313 = fptoui float %5312 to i32
  %5314 = lshr i32 %5313, 5
  %5315 = call i32 @dx.op.binary.i32(i32 40, i32 %5314, i32 8191)  ; UMin(a,b)
  %5316 = fcmp fast ogt float %4436, 0.000000e+00
  %5317 = fcmp fast ogt float %4664, 0.000000e+00
  %5318 = and i1 %5317, %5316
  br i1 %5318, label %5319, label %5348

; <label>:5319                                    ; preds = %5278
  %5320 = call float @dx.op.dot3.f32(i32 55, float %4662, float %4663, float %4664, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5320, float -1.000000e+00)  ; FMax(a,b)
  %5322 = call float @dx.op.binary.f32(i32 36, float %5321, float 1.000000e+00)  ; FMin(a,b)
  %5323 = fmul fast float %5322, %5322
  %5324 = fsub fast float 1.000000e+00, %5323
  %5325 = fmul fast float %5324, 0x3FFC6E2300000000
  %5326 = fsub fast float 1.000000e+00, %5325
  %5327 = fcmp fast ogt float %5326, 0.000000e+00
  %5328 = call float @dx.op.unary.f32(i32 24, float %5326)  ; Sqrt(value)
  %5329 = fsub fast float 1.000000e+00, %5328
  %5330 = call float @dx.op.unary.f32(i32 23, float %5329)  ; Log(value)
  %5331 = fmul fast float %5330, 5.000000e+00
  %5332 = call float @dx.op.unary.f32(i32 21, float %5331)  ; Exp(value)
  %5333 = fmul fast float %5332, 0x3FEF591A60000000
  %5334 = fadd fast float %5333, 0x3F94DCB540000000
  %5335 = select i1 %5327, float %5334, float 1.000000e+00
  %5336 = fcmp fast oge float %5335, 1.000000e+00
  %5337 = fmul fast float %5320, 2.000000e+00
  %5338 = fadd fast float %5337, %4664
  %5339 = select i1 %5336, float %5338, float %4664
  %5340 = fsub fast float %5339, %4664
  %5341 = fmul fast float %5340, %4436
  %5342 = fadd fast float %5341, %4664
  %5343 = call float @dx.op.dot3.f32(i32 55, float %4662, float %4663, float %5342, float %4662, float %4663, float %5342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5344 = call float @dx.op.unary.f32(i32 25, float %5343)  ; Rsqrt(value)
  %5345 = fmul fast float %5344, %4662
  %5346 = fmul fast float %5344, %4663
  %5347 = fmul fast float %5342, %5344
  br label %5348

; <label>:5348                                    ; preds = %5319, %5278
  %5349 = phi float [ %5345, %5319 ], [ %4662, %5278 ]
  %5350 = phi float [ %5346, %5319 ], [ %4663, %5278 ]
  %5351 = phi float [ %5347, %5319 ], [ %4664, %5278 ]
  %5352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.i32 %5352, 2
  %5354 = add nsw i32 %5353, -1
  %5355 = call i32 @dx.op.binary.i32(i32 37, i32 %5354, i32 0)  ; IMax(a,b)
  %5356 = shl i32 %5315, 2
  %5357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5358 = extractvalue %dx.types.ResRet.i32 %5357, 0
  %5359 = lshr i32 %5358, 16
  %5360 = and i32 %5358, 65535
  %5361 = lshr i32 %5358, 21
  %5362 = lshr i32 %5360, 5
  %5363 = call i32 @dx.op.binary.i32(i32 40, i32 %5362, i32 %5355)  ; UMin(a,b)
  %5364 = icmp ugt i32 %5361, %5363
  br i1 %5364, label %5746, label %5365

; <label>:5365                                    ; preds = %5348
  br label %5366

; <label>:5366                                    ; preds = %5735, %5365
  %5367 = phi float [ %5736, %5735 ], [ 0.000000e+00, %5365 ]
  %5368 = phi float [ %5737, %5735 ], [ 0.000000e+00, %5365 ]
  %5369 = phi float [ %5738, %5735 ], [ 0.000000e+00, %5365 ]
  %5370 = phi float [ %5739, %5735 ], [ 1.000000e+00, %5365 ]
  %5371 = phi i32 [ %5743, %5735 ], [ %5361, %5365 ]
  %5372 = phi float [ %5740, %5735 ], [ 0.000000e+00, %5365 ]
  %5373 = phi float [ %5741, %5735 ], [ 0.000000e+00, %5365 ]
  %5374 = phi float [ %5742, %5735 ], [ 0.000000e+00, %5365 ]
  %5375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5376 = extractvalue %dx.types.CBufRet.i32 %5375, 2
  %5377 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5311, i32 %5376, i32 %5371)  ; UMad(a,b,c)
  %5378 = shl i32 %5377, 2
  %5379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5378, i32 undef)  ; BufferLoad(srv,index,wot)
  %5380 = extractvalue %dx.types.ResRet.i32 %5379, 0
  %5381 = shl i32 %5371, 5
  %5382 = sub nsw i32 %5359, %5381
  %5383 = call i32 @dx.op.binary.i32(i32 37, i32 %5382, i32 0)  ; IMax(a,b)
  %5384 = call i32 @dx.op.binary.i32(i32 38, i32 %5383, i32 31)  ; IMin(a,b)
  %5385 = sub nsw i32 1, %5359
  %5386 = add nsw i32 %5385, %5360
  %5387 = call i32 @dx.op.binary.i32(i32 37, i32 %5386, i32 0)  ; IMax(a,b)
  %5388 = call i32 @dx.op.binary.i32(i32 38, i32 %5387, i32 32)  ; IMin(a,b)
  %5389 = and i32 %5388, 31
  %5390 = shl i32 -1, %5389
  %5391 = xor i32 %5390, -1
  %5392 = and i32 %5384, 31
  %5393 = shl i32 %5391, %5392
  %5394 = icmp eq i32 %5388, 32
  %5395 = select i1 %5394, i32 -1, i32 %5393
  %5396 = and i32 %5395, %5380
  %5397 = icmp eq i32 %5396, 0
  br i1 %5397, label %5735, label %5398

; <label>:5398                                    ; preds = %5366
  br label %5399

; <label>:5399                                    ; preds = %5509, %5398
  %5400 = phi float [ %5510, %5509 ], [ %5367, %5398 ]
  %5401 = phi float [ %5511, %5509 ], [ %5368, %5398 ]
  %5402 = phi float [ %5512, %5509 ], [ %5369, %5398 ]
  %5403 = phi float [ %5513, %5509 ], [ %5370, %5398 ]
  %5404 = phi i32 [ %5412, %5509 ], [ %5396, %5398 ]
  %5405 = phi float [ %5514, %5509 ], [ %5372, %5398 ]
  %5406 = phi float [ %5515, %5509 ], [ %5373, %5398 ]
  %5407 = phi float [ %5516, %5509 ], [ %5374, %5398 ]
  %5408 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5404)  ; FirstbitLo(value)
  %5409 = add i32 %5408, %5381
  %5410 = and i32 %5408, 31
  %5411 = shl i32 1, %5410
  %5412 = xor i32 %5411, %5404
  %5413 = mul i32 %5409, 72
  %5414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = add i32 %5413, 12
  %5419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.i32 %5419, 0
  %5421 = add i32 %5413, 16
  %5422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5421, i32 undef)  ; BufferLoad(srv,index,wot)
  %5423 = extractvalue %dx.types.ResRet.f32 %5422, 0
  %5424 = extractvalue %dx.types.ResRet.f32 %5422, 1
  %5425 = extractvalue %dx.types.ResRet.f32 %5422, 2
  %5426 = add i32 %5413, 28
  %5427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5426, i32 undef)  ; BufferLoad(srv,index,wot)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = add i32 %5413, 32
  %5430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5431 = extractvalue %dx.types.ResRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.ResRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.ResRet.f32 %5430, 2
  %5434 = extractvalue %dx.types.ResRet.f32 %5430, 3
  %5435 = add i32 %5413, 48
  %5436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5435, i32 undef)  ; BufferLoad(srv,index,wot)
  %5437 = extractvalue %dx.types.ResRet.f32 %5436, 0
  %5438 = extractvalue %dx.types.ResRet.f32 %5436, 1
  %5439 = add i32 %5413, 56
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = add i32 %5413, 64
  %5444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5443, i32 undef)  ; BufferLoad(srv,index,wot)
  %5445 = extractvalue %dx.types.ResRet.f32 %5444, 0
  %5446 = extractvalue %dx.types.ResRet.f32 %5444, 1
  %5447 = mul i32 %5409, 60
  %5448 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5447, i32 undef)  ; BufferLoad(srv,index,wot)
  %5449 = extractvalue %dx.types.ResRet.f32 %5448, 0
  %5450 = extractvalue %dx.types.ResRet.f32 %5448, 1
  %5451 = extractvalue %dx.types.ResRet.f32 %5448, 2
  %5452 = add i32 %5447, 12
  %5453 = add i32 %5447, 48
  %5454 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5453, i32 undef)  ; BufferLoad(srv,index,wot)
  %5455 = extractvalue %dx.types.ResRet.f32 %5454, 0
  %5456 = extractvalue %dx.types.ResRet.f32 %5454, 1
  %5457 = extractvalue %dx.types.ResRet.f32 %5454, 2
  %5458 = and i32 %5420, 32767
  %5459 = bitcast float %5415 to i32
  %5460 = icmp eq i32 %5459, -1
  %5461 = bitcast float %5416 to i32
  %5462 = and i32 %5420, 32768
  %5463 = icmp ne i32 %5462, 0
  %5464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5465 = extractvalue %dx.types.CBufRet.f32 %5464, 0
  %5466 = extractvalue %dx.types.CBufRet.f32 %5464, 1
  %5467 = extractvalue %dx.types.CBufRet.f32 %5464, 2
  %5468 = fsub fast float %5449, %5465
  %5469 = fsub fast float %5450, %5466
  %5470 = fsub fast float %5451, %5467
  %5471 = fsub fast float %145, %5468
  %5472 = fsub fast float %146, %5469
  %5473 = fsub fast float %147, %5470
  %5474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5452, i32 undef)  ; BufferLoad(srv,index,wot)
  %5475 = extractvalue %dx.types.ResRet.f32 %5474, 0
  %5476 = extractvalue %dx.types.ResRet.f32 %5474, 1
  %5477 = extractvalue %dx.types.ResRet.f32 %5474, 2
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %5475, float %5476, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = add i32 %5447, 24
  %5480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5479, i32 undef)  ; BufferLoad(srv,index,wot)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.ResRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.ResRet.f32 %5480, 2
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = add i32 %5447, 36
  %5486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5485, i32 undef)  ; BufferLoad(srv,index,wot)
  %5487 = extractvalue %dx.types.ResRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.ResRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.ResRet.f32 %5486, 2
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = call float @dx.op.unary.f32(i32 6, float %5478)  ; FAbs(value)
  %5492 = call float @dx.op.unary.f32(i32 6, float %5484)  ; FAbs(value)
  %5493 = call float @dx.op.unary.f32(i32 6, float %5490)  ; FAbs(value)
  %5494 = fsub fast float %5455, %5491
  %5495 = fsub fast float %5456, %5492
  %5496 = fsub fast float %5457, %5493
  %5497 = fmul fast float %5494, %5423
  %5498 = fmul fast float %5495, %5424
  %5499 = fmul fast float %5496, %5425
  %5500 = call float @dx.op.binary.f32(i32 36, float %5498, float %5499)  ; FMin(a,b)
  %5501 = call float @dx.op.binary.f32(i32 36, float %5497, float %5500)  ; FMin(a,b)
  %5502 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5503 = call float @dx.op.binary.f32(i32 36, float %5403, float %5502)  ; FMin(a,b)
  %5504 = uitofp i1 %5463 to float
  %5505 = fadd fast float %4436, 1.000000e+00
  %5506 = fsub fast float %5505, %5504
  %5507 = fmul fast float %5503, %5506
  %5508 = fcmp fast ogt float %5507, 0.000000e+00
  br i1 %5508, label %5518, label %5509

; <label>:5509                                    ; preds = %5660, %5399
  %5510 = phi float [ %5724, %5660 ], [ %5400, %5399 ]
  %5511 = phi float [ %5725, %5660 ], [ %5401, %5399 ]
  %5512 = phi float [ %5726, %5660 ], [ %5402, %5399 ]
  %5513 = phi float [ %5733, %5660 ], [ %5403, %5399 ]
  %5514 = phi float [ %5730, %5660 ], [ %5405, %5399 ]
  %5515 = phi float [ %5731, %5660 ], [ %5406, %5399 ]
  %5516 = phi float [ %5732, %5660 ], [ %5407, %5399 ]
  %5517 = icmp eq i32 %5404, %5411
  br i1 %5517, label %5734, label %5399

; <label>:5518                                    ; preds = %5399
  br i1 %5460, label %5576, label %5519

; <label>:5519                                    ; preds = %5518
  %5520 = fsub fast float -0.000000e+00, %5475
  %5521 = fsub fast float -0.000000e+00, %5476
  %5522 = fsub fast float -0.000000e+00, %5477
  %5523 = call float @dx.op.dot3.f32(i32 55, float %5349, float %5350, float %5351, float %5520, float %5521, float %5522)  ; Dot3(ax,ay,az,bx,by,bz)
  %5524 = fsub fast float -0.000000e+00, %5523
  %5525 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %5520, float %5521, float %5522)  ; Dot3(ax,ay,az,bx,by,bz)
  %5526 = fadd fast float %5525, %5438
  %5527 = fadd fast float %5437, %5525
  %5528 = fsub fast float -0.000000e+00, %5527
  %5529 = fcmp ogt float %5523, -0.000000e+00
  %5530 = select i1 %5529, float %5528, float %5526
  %5531 = call float @dx.op.unary.f32(i32 6, float %5524)  ; FAbs(value)
  %5532 = fdiv fast float 1.000000e+00, %5531
  %5533 = fmul fast float %5530, %5532
  %5534 = call float @dx.op.binary.f32(i32 35, float %5533, float 0.000000e+00)  ; FMax(a,b)
  %5535 = fsub fast float -0.000000e+00, %5481
  %5536 = fsub fast float -0.000000e+00, %5482
  %5537 = fsub fast float -0.000000e+00, %5483
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5349, float %5350, float %5351, float %5535, float %5536, float %5537)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = fsub fast float -0.000000e+00, %5538
  %5540 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %5535, float %5536, float %5537)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = fadd fast float %5540, %5442
  %5542 = fadd fast float %5441, %5540
  %5543 = fsub fast float -0.000000e+00, %5542
  %5544 = fcmp ogt float %5538, -0.000000e+00
  %5545 = select i1 %5544, float %5543, float %5541
  %5546 = call float @dx.op.unary.f32(i32 6, float %5539)  ; FAbs(value)
  %5547 = fdiv fast float 1.000000e+00, %5546
  %5548 = fmul fast float %5545, %5547
  %5549 = call float @dx.op.binary.f32(i32 35, float %5548, float 0.000000e+00)  ; FMax(a,b)
  %5550 = fsub fast float -0.000000e+00, %5487
  %5551 = fsub fast float -0.000000e+00, %5488
  %5552 = fsub fast float -0.000000e+00, %5489
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5349, float %5350, float %5351, float %5550, float %5551, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = fsub fast float -0.000000e+00, %5553
  %5555 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %5550, float %5551, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = fadd fast float %5555, %5446
  %5557 = fadd fast float %5445, %5555
  %5558 = fsub fast float -0.000000e+00, %5557
  %5559 = fcmp ogt float %5553, -0.000000e+00
  %5560 = select i1 %5559, float %5558, float %5556
  %5561 = call float @dx.op.unary.f32(i32 6, float %5554)  ; FAbs(value)
  %5562 = fdiv fast float 1.000000e+00, %5561
  %5563 = fmul fast float %5560, %5562
  %5564 = call float @dx.op.binary.f32(i32 35, float %5563, float 0.000000e+00)  ; FMax(a,b)
  %5565 = call float @dx.op.binary.f32(i32 36, float %5549, float %5564)  ; FMin(a,b)
  %5566 = call float @dx.op.binary.f32(i32 36, float %5534, float %5565)  ; FMin(a,b)
  %5567 = fmul fast float %5566, %5349
  %5568 = fmul fast float %5566, %5350
  %5569 = fmul fast float %5566, %5351
  %5570 = fadd fast float %5567, %145
  %5571 = fadd fast float %5568, %146
  %5572 = fadd fast float %5569, %147
  %5573 = fsub fast float %5570, %5415
  %5574 = fsub fast float %5571, %5416
  %5575 = fsub fast float %5572, %5417
  br label %5583

; <label>:5576                                    ; preds = %5518
  %5577 = fmul fast float %5349, 8.096000e+03
  %5578 = fmul fast float %5350, 8.096000e+03
  %5579 = fmul fast float %5351, 8.096000e+03
  %5580 = fadd fast float %5577, %145
  %5581 = fadd fast float %5578, %146
  %5582 = fadd fast float %5579, %147
  br label %5583

; <label>:5583                                    ; preds = %5576, %5519
  %5584 = phi float [ %5349, %5576 ], [ %5573, %5519 ]
  %5585 = phi float [ %5350, %5576 ], [ %5574, %5519 ]
  %5586 = phi float [ %5351, %5576 ], [ %5575, %5519 ]
  %5587 = phi float [ %5580, %5576 ], [ %5570, %5519 ]
  %5588 = phi float [ %5581, %5576 ], [ %5571, %5519 ]
  %5589 = phi float [ %5582, %5576 ], [ %5572, %5519 ]
  %5590 = fcmp fast olt float %5434, 1.000000e+00
  br i1 %5590, label %5591, label %5622, !dx.controlflow.hints !89

; <label>:5591                                    ; preds = %5583
  %5592 = fmul fast float %5586, %5432
  %5593 = fmul fast float %5585, %5433
  %5594 = fsub fast float %5592, %5593
  %5595 = fmul fast float %5584, %5433
  %5596 = fmul fast float %5586, %5431
  %5597 = fsub fast float %5595, %5596
  %5598 = fmul fast float %5585, %5431
  %5599 = fmul fast float %5584, %5432
  %5600 = fsub fast float %5598, %5599
  %5601 = fmul fast float %5594, 2.000000e+00
  %5602 = fmul fast float %5597, 2.000000e+00
  %5603 = fmul fast float %5600, 2.000000e+00
  %5604 = fmul fast float %5601, %5434
  %5605 = fmul fast float %5602, %5434
  %5606 = fmul fast float %5603, %5434
  %5607 = fmul fast float %5603, %5432
  %5608 = fmul fast float %5602, %5433
  %5609 = fmul fast float %5601, %5433
  %5610 = fmul fast float %5603, %5431
  %5611 = fmul fast float %5602, %5431
  %5612 = fmul fast float %5601, %5432
  %5613 = fadd fast float %5607, %5584
  %5614 = fadd fast float %5613, %5604
  %5615 = fsub fast float %5614, %5608
  %5616 = fsub fast float %5585, %5610
  %5617 = fadd fast float %5616, %5605
  %5618 = fadd fast float %5617, %5609
  %5619 = fadd fast float %5606, %5586
  %5620 = fsub fast float %5619, %5612
  %5621 = fadd fast float %5620, %5611
  br label %5622

; <label>:5622                                    ; preds = %5591, %5583
  %5623 = phi float [ %5615, %5591 ], [ %5584, %5583 ]
  %5624 = phi float [ %5618, %5591 ], [ %5585, %5583 ]
  %5625 = phi float [ %5621, %5591 ], [ %5586, %5583 ]
  br i1 %5460, label %5657, label %5626

; <label>:5626                                    ; preds = %5622
  %5627 = fmul fast float %4637, 0x400187C840000000
  %5628 = fadd fast float %5627, 0xC00EFC2120000000
  %5629 = fmul fast float %5628, %4637
  %5630 = fadd fast float %5629, 0x3FE5D16340000000
  %5631 = fmul fast float %5630, %4637
  %5632 = fadd fast float %5631, 1.000000e+00
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = fsub fast float %5587, %145
  %5635 = fsub fast float %5588, %146
  %5636 = fsub fast float %5589, %147
  %5637 = fsub fast float %5587, %5415
  %5638 = fsub fast float %5588, %5416
  %5639 = fsub fast float %5589, %5417
  %5640 = call float @dx.op.dot3.f32(i32 55, float %5634, float %5635, float %5636, float %5634, float %5635, float %5636)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = call float @dx.op.dot3.f32(i32 55, float %5637, float %5638, float %5639, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = fadd fast float %5641, 0x3EE4F8B580000000
  %5643 = fdiv fast float %5640, %5642
  %5644 = bitcast float %5643 to i32
  %5645 = ashr i32 %5644, 1
  %5646 = add nsw i32 %5645, 532487669
  %5647 = bitcast i32 %5646 to float
  %5648 = fmul fast float %5647, %5633
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = fmul fast float %5649, 0x4009981AE0000000
  %5651 = fsub fast float 0x40111BBD80000000, %5650
  %5652 = fmul fast float %5651, %5649
  %5653 = fadd fast float %5652, 0xC0009F6020000000
  %5654 = fmul fast float %5653, %5649
  %5655 = fadd fast float %5654, 1.000000e+00
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  br label %5660

; <label>:5657                                    ; preds = %5622
  %5658 = icmp ne i32 %5461, -1
  %5659 = zext i1 %5658 to i32
  br label %5660

; <label>:5660                                    ; preds = %5657, %5626
  %5661 = phi float [ %4637, %5657 ], [ %5656, %5626 ]
  %5662 = phi i32 [ %5659, %5657 ], [ 0, %5626 ]
  %5663 = fmul float %5661, 5.000000e+00
  %5664 = fsub float 5.000000e+00, %5663
  %5665 = icmp ne i32 %5662, 0
  %5666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5666, 3
  %5668 = fadd fast float %5667, %5664
  %5669 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5668)  ; FMax(a,b)
  %5670 = call float @dx.op.unary.f32(i32 6, float %5623)  ; FAbs(value)
  %5671 = call float @dx.op.unary.f32(i32 6, float %5624)  ; FAbs(value)
  %5672 = fadd fast float %5671, %5670
  %5673 = call float @dx.op.unary.f32(i32 6, float %5625)  ; FAbs(value)
  %5674 = fadd fast float %5672, %5673
  %5675 = fcmp fast oeq float %5674, 0.000000e+00
  %5676 = fdiv fast float 1.000000e+00, %5674
  %5677 = select i1 %5675, float 1.000000e+00, float %5676
  %5678 = fmul fast float %5677, %5623
  %5679 = fmul fast float %5677, %5624
  %5680 = call float @dx.op.unary.f32(i32 6, float %5679)  ; FAbs(value)
  %5681 = call float @dx.op.unary.f32(i32 6, float %5678)  ; FAbs(value)
  %5682 = fsub fast float 1.000000e+00, %5680
  %5683 = fsub fast float 1.000000e+00, %5681
  %5684 = fcmp fast oge float %5678, 0.000000e+00
  %5685 = fcmp fast oge float %5679, 0.000000e+00
  %5686 = select i1 %5684, float 1.000000e+00, float -1.000000e+00
  %5687 = select i1 %5685, float 1.000000e+00, float -1.000000e+00
  %5688 = fcmp fast ole float %5625, 0.000000e+00
  %5689 = fmul fast float %5686, %5682
  %5690 = fmul fast float %5687, %5683
  %5691 = select i1 %5688, float %5689, float %5678
  %5692 = select i1 %5688, float %5690, float %5679
  %5693 = fmul fast float %5691, 5.000000e-01
  %5694 = fmul fast float %5692, 5.000000e-01
  %5695 = fadd fast float %5693, 5.000000e-01
  %5696 = fadd fast float %5694, 5.000000e-01
  %5697 = uitofp i32 %5458 to float
  %5698 = call float @dx.op.binary.f32(i32 36, float %5669, float 3.000000e+00)  ; FMin(a,b)
  %5699 = fadd fast float %5698, 2.000000e+00
  %5700 = call float @dx.op.unary.f32(i32 21, float %5699)  ; Exp(value)
  %5701 = extractvalue %dx.types.CBufRet.f32 %5666, 1
  %5702 = fmul fast float %5701, %5700
  %5703 = fmul fast float %5702, 2.000000e+00
  %5704 = fsub fast float 1.000000e+00, %5703
  %5705 = fmul fast float %5695, %5704
  %5706 = fmul fast float %5696, %5704
  %5707 = fadd fast float %5705, %5702
  %5708 = fadd fast float %5706, %5702
  %5709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5707, float %5708, float %5697, float undef, i32 0, i32 0, i32 undef, float %5669)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.ResRet.f32 %5709, 1
  %5712 = extractvalue %dx.types.ResRet.f32 %5709, 2
  %5713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.f32 %5713, 3
  %5715 = fmul fast float %5714, %5428
  %5716 = call float @dx.op.binary.f32(i32 36, float %4683, float %5715)  ; FMin(a,b)
  %5717 = select i1 %5665, float %5716, float %5715
  %5718 = fmul fast float %5710, %5507
  %5719 = fmul fast float %5718, %5717
  %5720 = fmul fast float %5711, %5507
  %5721 = fmul fast float %5720, %5717
  %5722 = fmul fast float %5712, %5507
  %5723 = fmul fast float %5722, %5717
  %5724 = fadd fast float %5719, %5400
  %5725 = fadd fast float %5721, %5401
  %5726 = fadd fast float %5723, %5402
  %5727 = fmul fast float %5587, %5507
  %5728 = fmul fast float %5588, %5507
  %5729 = fmul fast float %5589, %5507
  %5730 = fadd fast float %5727, %5405
  %5731 = fadd fast float %5728, %5406
  %5732 = fadd fast float %5729, %5407
  %5733 = fsub fast float %5403, %5507
  br label %5509

; <label>:5734                                    ; preds = %5509
  br label %5735

; <label>:5735                                    ; preds = %5734, %5366
  %5736 = phi float [ %5367, %5366 ], [ %5510, %5734 ]
  %5737 = phi float [ %5368, %5366 ], [ %5511, %5734 ]
  %5738 = phi float [ %5369, %5366 ], [ %5512, %5734 ]
  %5739 = phi float [ %5370, %5366 ], [ %5513, %5734 ]
  %5740 = phi float [ %5372, %5366 ], [ %5514, %5734 ]
  %5741 = phi float [ %5373, %5366 ], [ %5515, %5734 ]
  %5742 = phi float [ %5374, %5366 ], [ %5516, %5734 ]
  %5743 = add i32 %5371, 1
  %5744 = icmp ugt i32 %5743, %5363
  br i1 %5744, label %5745, label %5366, !llvm.loop !90

; <label>:5745                                    ; preds = %5735
  br label %5746

; <label>:5746                                    ; preds = %5745, %5348
  %5747 = phi float [ 0.000000e+00, %5348 ], [ %5736, %5745 ]
  %5748 = phi float [ 0.000000e+00, %5348 ], [ %5737, %5745 ]
  %5749 = phi float [ 0.000000e+00, %5348 ], [ %5738, %5745 ]
  %5750 = phi float [ 0.000000e+00, %5348 ], [ %5740, %5745 ]
  %5751 = phi float [ 0.000000e+00, %5348 ], [ %5741, %5745 ]
  %5752 = phi float [ 0.000000e+00, %5348 ], [ %5742, %5745 ]
  %5753 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = select i1 %187, float 0.000000e+00, float %5747
  %5755 = select i1 %187, float %5753, float %5748
  %5756 = select i1 %187, float 0.000000e+00, float %5749
  %5757 = fcmp fast olt float %5272, 0.000000e+00
  %5758 = call float @dx.op.unary.f32(i32 6, float %5272)  ; FAbs(value)
  %5759 = fmul fast float %5758, %5273
  %5760 = fmul fast float %5758, %5274
  %5761 = fmul fast float %5758, %5275
  %5762 = select i1 %5757, float %5273, float %5759
  %5763 = select i1 %5757, float %5274, float %5760
  %5764 = select i1 %5757, float %5275, float %5761
  %5765 = fsub fast float 1.000000e+00, %5758
  %5766 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5767 = fmul fast float %5766, %5754
  %5768 = fmul fast float %5766, %5755
  %5769 = fmul fast float %5766, %5756
  %5770 = fadd fast float %5762, %5767
  %5771 = fadd fast float %5763, %5768
  %5772 = fadd fast float %5764, %5769
  %5773 = fcmp fast une float %5022, 0.000000e+00
  br i1 %5773, label %5874, label %5774

; <label>:5774                                    ; preds = %5746
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5779 = extractvalue %dx.types.CBufRet.f32 %5775, 3
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5782 = extractvalue %dx.types.CBufRet.f32 %5780, 1
  %5783 = extractvalue %dx.types.CBufRet.f32 %5780, 2
  %5784 = extractvalue %dx.types.CBufRet.f32 %5780, 3
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %5789 = extractvalue %dx.types.CBufRet.f32 %5785, 3
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5786, float %5787, float %5788, float %4662, float %4663, float %4664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5750, float %5751, float %5752, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5793 = fadd fast float %4637, -1.000000e+00
  %5794 = fsub fast float %5791, %5792
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 2
  %5797 = fmul fast float %5796, %5791
  %5798 = fdiv fast float 1.600000e+02, %5797
  %5799 = fmul fast float %5793, %5793
  %5800 = fmul fast float %5799, 0xBFB5B17960000000
  %5801 = fmul fast float %5800, %5794
  %5802 = fmul fast float %5801, %5798
  %5803 = call float @dx.op.unary.f32(i32 21, float %5802)  ; Exp(value)
  %5804 = fmul fast float %5803, 0x3FF04B2960000000
  %5805 = fsub fast float 0x3FF04B2960000000, %5804
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fmul fast float %5806, 4.000000e+00
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 0
  %5810 = extractvalue %dx.types.CBufRet.f32 %5808, 1
  %5811 = extractvalue %dx.types.CBufRet.f32 %5808, 2
  %5812 = fadd fast float %5809, %5750
  %5813 = fadd fast float %5810, %5751
  %5814 = fadd fast float %5811, %5752
  %5815 = fmul fast float %5812, %5776
  %5816 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5777, float %5815)  ; FMad(a,b,c)
  %5817 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5778, float %5816)  ; FMad(a,b,c)
  %5818 = fadd fast float %5817, %5779
  %5819 = fmul fast float %5812, %5781
  %5820 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5782, float %5819)  ; FMad(a,b,c)
  %5821 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5783, float %5820)  ; FMad(a,b,c)
  %5822 = fadd fast float %5821, %5784
  %5823 = fmul fast float %5812, %5786
  %5824 = call float @dx.op.tertiary.f32(i32 46, float %5813, float %5787, float %5823)  ; FMad(a,b,c)
  %5825 = call float @dx.op.tertiary.f32(i32 46, float %5814, float %5788, float %5824)  ; FMad(a,b,c)
  %5826 = fadd fast float %5825, %5789
  %5827 = fdiv fast float %5818, %5826
  %5828 = fdiv fast float %5822, %5826
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.CBufRet.f32 %5829, 1
  %5832 = fmul fast float %5830, %5827
  %5833 = fmul fast float %5831, %5828
  %5834 = extractvalue %dx.types.CBufRet.f32 %5829, 2
  %5835 = extractvalue %dx.types.CBufRet.f32 %5829, 3
  %5836 = fadd fast float %5832, %5834
  %5837 = fadd fast float %5833, %5835
  %5838 = fmul fast float %5790, 8.000000e+00
  %5839 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5840 = fmul fast float %5836, 2.000000e+00
  %5841 = fmul fast float %5837, 2.000000e+00
  %5842 = fadd fast float %5840, -1.000000e+00
  %5843 = fadd fast float %5841, -1.000000e+00
  %5844 = fmul fast float %5842, %5842
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5847 = fmul fast float %5843, %5843
  %5848 = fsub fast float 1.000000e+00, %5847
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5850 = fmul fast float %5022, %5846
  %5851 = fmul fast float %5850, %5849
  %5852 = call float @dx.op.unary.f32(i32 7, float %5851)  ; Saturate(value)
  %5853 = fmul fast float %5852, %5839
  %5854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5836, float %5837, float undef, float undef, i32 0, i32 0, i32 undef, float %5807)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5855 = extractvalue %dx.types.ResRet.f32 %5854, 0
  %5856 = extractvalue %dx.types.ResRet.f32 %5854, 1
  %5857 = extractvalue %dx.types.ResRet.f32 %5854, 2
  %5858 = select i1 %187, float 0.000000e+00, float %5856
  %5859 = select i1 %187, float 0.000000e+00, float %5857
  %5860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5860, 2
  %5862 = fmul fast float %5861, %5855
  %5863 = fmul fast float %5858, %5861
  %5864 = fmul fast float %5859, %5861
  %5865 = fsub fast float %5862, %5754
  %5866 = fsub fast float %5863, %5755
  %5867 = fsub fast float %5864, %5756
  %5868 = fmul fast float %5865, %5853
  %5869 = fmul fast float %5866, %5853
  %5870 = fmul fast float %5867, %5853
  %5871 = fadd fast float %5868, %5754
  %5872 = fadd fast float %5869, %5755
  %5873 = fadd fast float %5870, %5756
  br label %5874

; <label>:5874                                    ; preds = %5774, %5746, %5271, %4995
  %5875 = phi float [ %5273, %5271 ], [ %5871, %5774 ], [ %5770, %5746 ], [ %4913, %4995 ]
  %5876 = phi float [ %5274, %5271 ], [ %5872, %5774 ], [ %5771, %5746 ], [ %4914, %4995 ]
  %5877 = phi float [ %5275, %5271 ], [ %5873, %5774 ], [ %5772, %5746 ], [ %4915, %4995 ]
  %5878 = fmul fast float %145, %145
  %5879 = fmul fast float %146, %146
  %5880 = fadd fast float %5879, %5878
  %5881 = fmul fast float %147, %147
  %5882 = fadd fast float %5880, %5881
  %5883 = call float @dx.op.unary.f32(i32 24, float %5882)  ; Sqrt(value)
  %5884 = fsub fast float %5883, %4917
  %5885 = fmul fast float %5884, %4919
  %5886 = call float @dx.op.unary.f32(i32 7, float %5885)  ; Saturate(value)
  %5887 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %5888 = extractvalue %dx.types.CBufRet.f32 %4916, 3
  %5889 = fmul fast float %5886, %48
  %5890 = fmul fast float %5889, %5887
  %5891 = fmul fast float %5889, %5888
  %5892 = fadd fast float %5891, 1.000000e+00
  %5893 = fmul fast float %5001, %4952
  %5894 = fmul fast float %5893, %5892
  %5895 = fmul fast float %5001, %4953
  %5896 = fmul fast float %5895, %5892
  %5897 = fmul fast float %5001, %4954
  %5898 = fmul fast float %5897, %5892
  %5899 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4632, float %4633, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = fcmp fast ogt float %5899, 0x3E7FF19E20000000
  %5901 = fdiv fast float 1.000000e+00, %5899
  %5902 = select i1 %5900, float %5901, float 0.000000e+00
  %5903 = fmul fast float %5902, %4631
  %5904 = fmul fast float %5902, %4632
  %5905 = fmul fast float %5902, %4633
  %5906 = fadd fast float %5903, -1.000000e+00
  %5907 = fadd fast float %5904, -1.000000e+00
  %5908 = fadd fast float %5905, -1.000000e+00
  %5909 = fmul fast float %5906, 5.000000e-01
  %5910 = fmul fast float %5907, 5.000000e-01
  %5911 = fmul fast float %5908, 5.000000e-01
  %5912 = fadd fast float %5909, 1.000000e+00
  %5913 = fadd fast float %5910, 1.000000e+00
  %5914 = fadd fast float %5911, 1.000000e+00
  %5915 = fadd fast float %5890, %4027
  %5916 = fmul fast float %5875, %4996
  %5917 = fmul fast float %5876, %4997
  %5918 = fmul fast float %5877, %4998
  %5919 = fsub fast float 1.000000e+00, %4656
  %5920 = bitcast float %5919 to i32
  %5921 = sitofp i32 %5920 to float
  %5922 = fmul fast float %5921, 5.000000e+00
  %5923 = fadd fast float %5922, 0xC1EFBF8940000000
  %5924 = fptosi float %5923 to i32
  %5925 = bitcast i32 %5924 to float
  %5926 = fmul fast float %5915, %5925
  %5927 = fmul fast float %5893, %5926
  %5928 = fmul fast float %5927, %5912
  %5929 = fmul fast float %5895, %5926
  %5930 = fmul fast float %5929, %5913
  %5931 = fmul fast float %5897, %5926
  %5932 = fmul fast float %5931, %5914
  %5933 = fmul fast float %5894, %4023
  %5934 = fmul fast float %5896, %4023
  %5935 = fmul fast float %5898, %4023
  %5936 = fadd fast float %5916, %4019
  %5937 = fadd fast float %5936, %5928
  %5938 = fmul fast float %5937, %4023
  %5939 = fadd fast float %5917, %4020
  %5940 = fadd fast float %5939, %5930
  %5941 = fmul fast float %5940, %4023
  %5942 = fadd fast float %5918, %4021
  %5943 = fadd fast float %5942, %5932
  %5944 = fmul fast float %5943, %4023
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5947 = fcmp fast oeq float %5946, 0.000000e+00
  br i1 %5947, label %6166, label %5948

; <label>:5948                                    ; preds = %5874
  %5949 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5950 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5951 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5955 = extractvalue %dx.types.CBufRet.f32 %5952, 2
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5959 = call float @dx.op.dot3.f32(i32 55, float %5953, float %5954, float %5955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5960 = select i1 %187, float %5957, float %5953
  %5961 = select i1 %187, float %5959, float %5954
  %5962 = select i1 %187, float %5958, float %5955
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 1
  %5965 = fcmp fast une float %5964, 0.000000e+00
  br i1 %5965, label %5966, label %5983

; <label>:5966                                    ; preds = %5948
  %5967 = fptoui float %86 to i32
  %5968 = fptoui float %87 to i32
  %5969 = lshr i32 %5967, 4
  %5970 = lshr i32 %5968, 4
  %5971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.f32 %5971, 0
  %5973 = fptoui float %5972 to i32
  %5974 = add i32 %5973, 15
  %5975 = lshr i32 %5974, 4
  %5976 = mul i32 %5975, %5970
  %5977 = add i32 %5976, %5969
  %5978 = shl i32 %5977, 3
  %5979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5978, i32 undef)  ; BufferLoad(srv,index,wot)
  %5980 = extractvalue %dx.types.ResRet.i32 %5979, 0
  %5981 = and i32 %5980, -268435456
  %5982 = icmp eq i32 %5981, -1342177280
  br i1 %5982, label %5988, label %5983

; <label>:5983                                    ; preds = %5966, %5948
  %5984 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4642, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5985 = extractvalue %dx.types.ResRet.f32 %5984, 0
  %5986 = extractvalue %dx.types.ResRet.f32 %5984, 1
  %5987 = extractvalue %dx.types.ResRet.f32 %5984, 2
  br label %5988

; <label>:5988                                    ; preds = %5983, %5966
  %5989 = phi float [ %5985, %5983 ], [ 0.000000e+00, %5966 ]
  %5990 = phi float [ %5986, %5983 ], [ 0.000000e+00, %5966 ]
  %5991 = phi float [ %5987, %5983 ], [ 0.000000e+00, %5966 ]
  %5992 = call float @dx.op.binary.f32(i32 36, float %5990, float %5991)  ; FMin(a,b)
  %5993 = call float @dx.op.binary.f32(i32 36, float %5989, float %5992)  ; FMin(a,b)
  %5994 = fcmp fast ogt float %5993, 0.000000e+00
  br i1 %5994, label %5995, label %6166, !dx.controlflow.hints !92

; <label>:5995                                    ; preds = %5988
  %5996 = fmul fast float %5989, %5960
  %5997 = fmul fast float %5990, %5961
  %5998 = fmul fast float %5991, %5962
  %5999 = fsub fast float %5949, %4627
  %6000 = fsub fast float %5950, %4626
  %6001 = fsub fast float %5951, %4625
  %6002 = call float @dx.op.dot3.f32(i32 55, float %5999, float %6000, float %6001, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = call float @dx.op.unary.f32(i32 25, float %6002)  ; Rsqrt(value)
  %6004 = fmul fast float %6003, %5999
  %6005 = fmul fast float %6003, %6000
  %6006 = fmul fast float %6003, %6001
  %6007 = call float @dx.op.dot3.f32(i32 55, float %5949, float %5950, float %5951, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4623, float %4622, float %6004, float %6005, float %6006)  ; Dot3(ax,ay,az,bx,by,bz)
  %6009 = call float @dx.op.unary.f32(i32 7, float %6007)  ; Saturate(value)
  %6010 = fmul fast float %6009, %6009
  %6011 = fmul fast float %6010, %4681
  %6012 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6013 = fmul fast float %6012, %6009
  %6014 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %6004, float %6005, float %6006)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = fmul fast float %6014, %6014
  %6016 = call float @dx.op.unary.f32(i32 6, float %6007)  ; FAbs(value)
  %6017 = fsub fast float 1.000000e+00, %4674
  %6018 = fmul fast float %4656, %4656
  %6019 = fmul fast float %6018, %6017
  %6020 = fadd fast float %6019, %4674
  %6021 = bitcast float %6020 to i32
  %6022 = ashr i32 %6021, 1
  %6023 = add nsw i32 %6022, 532487669
  %6024 = bitcast i32 %6023 to float
  %6025 = fadd fast float %6024, %4656
  %6026 = fmul fast float %4674, %6015
  %6027 = fsub fast float 1.000000e+00, %6015
  %6028 = fadd fast float %6027, %6026
  %6029 = fmul fast float %6016, %6016
  %6030 = fmul fast float %6029, %6017
  %6031 = fadd fast float %6030, %4674
  %6032 = bitcast float %6031 to i32
  %6033 = ashr i32 %6032, 1
  %6034 = add nsw i32 %6033, 532487669
  %6035 = bitcast i32 %6034 to float
  %6036 = fadd fast float %6035, %6016
  %6037 = fmul fast float %6028, %6028
  %6038 = fmul fast float %6037, %6025
  %6039 = fmul fast float %6038, %6036
  %6040 = fdiv fast float 0x3FF0A00000000000, %6039
  %6041 = fmul fast float %6040, %4674
  %6042 = call float @dx.op.unary.f32(i32 6, float %6008)  ; FAbs(value)
  %6043 = fsub fast float 1.000000e+00, %6042
  %6044 = bitcast float %6043 to i32
  %6045 = sitofp i32 %6044 to float
  %6046 = fmul fast float %6045, 5.000000e+00
  %6047 = fadd fast float %6046, 0xC1EFBF8940000000
  %6048 = fptosi float %6047 to i32
  %6049 = bitcast i32 %6048 to float
  %6050 = fsub fast float 1.000000e+00, %4628
  %6051 = fsub fast float 1.000000e+00, %4629
  %6052 = fsub fast float 1.000000e+00, %4654
  %6053 = fmul fast float %6049, %6050
  %6054 = fmul fast float %6049, %6051
  %6055 = fmul fast float %6049, %6052
  %6056 = fadd fast float %6053, %4628
  %6057 = fadd fast float %6054, %4629
  %6058 = fadd fast float %6055, %4654
  br i1 %4968, label %6059, label %6082

; <label>:6059                                    ; preds = %5995
  %6060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %6042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = extractvalue %dx.types.ResRet.f32 %6060, 1
  %6063 = extractvalue %dx.types.ResRet.f32 %6060, 2
  %6064 = fadd fast float %6061, -5.000000e-01
  %6065 = fadd fast float %6062, -5.000000e-01
  %6066 = fadd fast float %6063, -5.000000e-01
  %6067 = fmul fast float %4628, 4.000000e+00
  %6068 = fmul fast float %6067, %6050
  %6069 = fmul fast float %6068, %6064
  %6070 = fmul fast float %4629, 4.000000e+00
  %6071 = fmul fast float %6070, %6051
  %6072 = fmul fast float %6071, %6065
  %6073 = fmul fast float %4654, 4.000000e+00
  %6074 = fmul fast float %6073, %6052
  %6075 = fmul fast float %6074, %6066
  %6076 = fadd fast float %6069, %6056
  %6077 = fadd fast float %6072, %6057
  %6078 = fadd fast float %6075, %6058
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6081 = call float @dx.op.unary.f32(i32 7, float %6078)  ; Saturate(value)
  br label %6082

; <label>:6082                                    ; preds = %6059, %5995
  %6083 = phi float [ %6079, %6059 ], [ %6056, %5995 ]
  %6084 = phi float [ %6080, %6059 ], [ %6057, %5995 ]
  %6085 = phi float [ %6081, %6059 ], [ %6058, %5995 ]
  %6086 = fmul fast float %6007, 9.843750e-01
  %6087 = fadd fast float %6086, 7.812500e-03
  %6088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6087, float %4958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6089 = extractvalue %dx.types.ResRet.f32 %6088, 2
  %6090 = extractvalue %dx.types.ResRet.f32 %6088, 3
  %6091 = fmul fast float %6089, %4628
  %6092 = fmul fast float %6089, %4629
  %6093 = fmul fast float %6089, %4654
  %6094 = fadd fast float %6091, %6090
  %6095 = fadd fast float %6092, %6090
  %6096 = fadd fast float %6093, %6090
  br i1 %4968, label %6097, label %6120

; <label>:6097                                    ; preds = %6082
  %6098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %6007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6099 = extractvalue %dx.types.ResRet.f32 %6098, 0
  %6100 = extractvalue %dx.types.ResRet.f32 %6098, 1
  %6101 = extractvalue %dx.types.ResRet.f32 %6098, 2
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fadd fast float %6100, -5.000000e-01
  %6104 = fadd fast float %6101, -5.000000e-01
  %6105 = fmul fast float %4628, 4.000000e+00
  %6106 = fmul fast float %6105, %6050
  %6107 = fmul fast float %6106, %6102
  %6108 = fmul fast float %4629, 4.000000e+00
  %6109 = fmul fast float %6108, %6051
  %6110 = fmul fast float %6109, %6103
  %6111 = fmul fast float %4654, 4.000000e+00
  %6112 = fmul fast float %6111, %6052
  %6113 = fmul fast float %6112, %6104
  %6114 = fadd fast float %6107, %6094
  %6115 = fadd fast float %6110, %6095
  %6116 = fadd fast float %6113, %6096
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  br label %6120

; <label>:6120                                    ; preds = %6097, %6082
  %6121 = phi float [ %6117, %6097 ], [ %6094, %6082 ]
  %6122 = phi float [ %6118, %6097 ], [ %6095, %6082 ]
  %6123 = phi float [ %6119, %6097 ], [ %6096, %6082 ]
  %6124 = call float @dx.op.binary.f32(i32 35, float %6122, float %6123)  ; FMax(a,b)
  %6125 = call float @dx.op.binary.f32(i32 35, float %6121, float %6124)  ; FMax(a,b)
  %6126 = fsub fast float 1.000000e+00, %6125
  %6127 = fmul fast float %6083, %6041
  %6128 = fmul fast float %6084, %6041
  %6129 = fmul fast float %6085, %6041
  %6130 = fsub fast float 1.000000e+00, %6008
  %6131 = bitcast float %6130 to i32
  %6132 = sitofp i32 %6131 to float
  %6133 = fmul fast float %6132, 5.000000e+00
  %6134 = fadd fast float %6133, 0xC1EFBF8940000000
  %6135 = fptosi float %6134 to i32
  %6136 = bitcast i32 %6135 to float
  %6137 = fmul fast float %6136, %4027
  %6138 = fmul fast float %6126, %6137
  %6139 = fmul fast float %6138, %5912
  %6140 = fmul fast float %6138, %5913
  %6141 = fmul fast float %6138, %5914
  %6142 = fadd fast float %6139, %6127
  %6143 = fadd fast float %6140, %6128
  %6144 = fadd fast float %6141, %6129
  %6145 = fmul fast float %6013, %5996
  %6146 = fmul fast float %6145, %6126
  %6147 = fmul fast float %6013, %5997
  %6148 = fmul fast float %6147, %6126
  %6149 = fmul fast float %6013, %5998
  %6150 = fmul fast float %6149, %6126
  %6151 = fmul fast float %6145, %6142
  %6152 = fmul fast float %6147, %6143
  %6153 = fmul fast float %6149, %6144
  %6154 = fadd fast float %6146, %5894
  %6155 = fmul fast float %6154, %4023
  %6156 = fadd fast float %6148, %5896
  %6157 = fmul fast float %6156, %4023
  %6158 = fadd fast float %6150, %5898
  %6159 = fmul fast float %6158, %4023
  %6160 = fadd fast float %6151, %5937
  %6161 = fmul fast float %6160, %4023
  %6162 = fadd fast float %6152, %5940
  %6163 = fmul fast float %6162, %4023
  %6164 = fadd fast float %6153, %5943
  %6165 = fmul fast float %6164, %4023
  br label %6166

; <label>:6166                                    ; preds = %6120, %5988, %5874
  %6167 = phi float [ %5938, %5874 ], [ %5938, %5988 ], [ %6161, %6120 ]
  %6168 = phi float [ %5941, %5874 ], [ %5941, %5988 ], [ %6163, %6120 ]
  %6169 = phi float [ %5944, %5874 ], [ %5944, %5988 ], [ %6165, %6120 ]
  %6170 = phi float [ %5933, %5874 ], [ %5933, %5988 ], [ %6155, %6120 ]
  %6171 = phi float [ %5934, %5874 ], [ %5934, %5988 ], [ %6157, %6120 ]
  %6172 = phi float [ %5935, %5874 ], [ %5935, %5988 ], [ %6159, %6120 ]
  %6173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.i32 %6173, 0
  %6175 = icmp eq i32 %6174, 0
  br i1 %6175, label %6606, label %6176

; <label>:6176                                    ; preds = %6166
  %6177 = fptoui float %86 to i32
  %6178 = fptoui float %87 to i32
  %6179 = lshr i32 %6177, 4
  %6180 = lshr i32 %6178, 4
  %6181 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.i32 %6181, 0
  %6183 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6180, i32 %6182, i32 %6179)  ; UMad(a,b,c)
  %6184 = add nsw i32 %6174, -1
  %6185 = call i32 @dx.op.binary.i32(i32 37, i32 %6184, i32 0)  ; IMax(a,b)
  %6186 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %6187 = fptoui float %6186 to i32
  %6188 = lshr i32 %6187, 5
  %6189 = call i32 @dx.op.binary.i32(i32 40, i32 %6188, i32 8191)  ; UMin(a,b)
  %6190 = shl i32 %6189, 2
  %6191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6190, i32 undef)  ; BufferLoad(srv,index,wot)
  %6192 = extractvalue %dx.types.ResRet.i32 %6191, 0
  %6193 = lshr i32 %6192, 16
  %6194 = and i32 %6192, 65535
  %6195 = lshr i32 %6192, 21
  %6196 = lshr i32 %6194, 5
  %6197 = call i32 @dx.op.binary.i32(i32 40, i32 %6196, i32 %6185)  ; UMin(a,b)
  %6198 = icmp ugt i32 %6195, %6197
  br i1 %6198, label %6606, label %6199

; <label>:6199                                    ; preds = %6176
  br label %6200

; <label>:6200                                    ; preds = %6596, %6199
  %6201 = phi i32 [ %6603, %6596 ], [ %6195, %6199 ]
  %6202 = phi float [ %6597, %6596 ], [ %6167, %6199 ]
  %6203 = phi float [ %6598, %6596 ], [ %6168, %6199 ]
  %6204 = phi float [ %6599, %6596 ], [ %6169, %6199 ]
  %6205 = phi float [ %6600, %6596 ], [ %6170, %6199 ]
  %6206 = phi float [ %6601, %6596 ], [ %6171, %6199 ]
  %6207 = phi float [ %6602, %6596 ], [ %6172, %6199 ]
  %6208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.i32 %6208, 0
  %6210 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6183, i32 %6209, i32 %6201)  ; UMad(a,b,c)
  %6211 = shl i32 %6210, 2
  %6212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.i32 %6212, 0
  %6214 = shl i32 %6201, 5
  %6215 = sub nsw i32 %6193, %6214
  %6216 = call i32 @dx.op.binary.i32(i32 37, i32 %6215, i32 0)  ; IMax(a,b)
  %6217 = call i32 @dx.op.binary.i32(i32 38, i32 %6216, i32 31)  ; IMin(a,b)
  %6218 = sub nsw i32 1, %6193
  %6219 = add nsw i32 %6218, %6194
  %6220 = call i32 @dx.op.binary.i32(i32 37, i32 %6219, i32 0)  ; IMax(a,b)
  %6221 = call i32 @dx.op.binary.i32(i32 38, i32 %6220, i32 32)  ; IMin(a,b)
  %6222 = and i32 %6221, 31
  %6223 = shl i32 -1, %6222
  %6224 = xor i32 %6223, -1
  %6225 = and i32 %6217, 31
  %6226 = shl i32 %6224, %6225
  %6227 = icmp eq i32 %6221, 32
  %6228 = select i1 %6227, i32 -1, i32 %6226
  %6229 = and i32 %6228, %6213
  %6230 = icmp eq i32 %6229, 0
  br i1 %6230, label %6596, label %6231

; <label>:6231                                    ; preds = %6200
  br label %6232

; <label>:6232                                    ; preds = %6312, %6231
  %6233 = phi i32 [ %6244, %6312 ], [ %6229, %6231 ]
  %6234 = phi float [ %6313, %6312 ], [ %6202, %6231 ]
  %6235 = phi float [ %6314, %6312 ], [ %6203, %6231 ]
  %6236 = phi float [ %6315, %6312 ], [ %6204, %6231 ]
  %6237 = phi float [ %6316, %6312 ], [ %6205, %6231 ]
  %6238 = phi float [ %6317, %6312 ], [ %6206, %6231 ]
  %6239 = phi float [ %6318, %6312 ], [ %6207, %6231 ]
  %6240 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6233)  ; FirstbitLo(value)
  %6241 = add i32 %6240, %6214
  %6242 = and i32 %6240, 31
  %6243 = shl i32 1, %6242
  %6244 = xor i32 %6243, %6233
  %6245 = mul i32 %6241, 112
  %6246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6245, i32 undef)  ; BufferLoad(srv,index,wot)
  %6247 = extractvalue %dx.types.ResRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.ResRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.ResRet.f32 %6246, 2
  %6250 = or i32 %6245, 12
  %6251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6250, i32 undef)  ; BufferLoad(srv,index,wot)
  %6252 = extractvalue %dx.types.ResRet.f32 %6251, 0
  %6253 = add i32 %6245, 44
  %6254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6253, i32 undef)  ; BufferLoad(srv,index,wot)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = add i32 %6245, 48
  %6257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6256, i32 undef)  ; BufferLoad(srv,index,wot)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.ResRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.ResRet.f32 %6257, 2
  %6261 = add i32 %6245, 80
  %6262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6261, i32 undef)  ; BufferLoad(srv,index,wot)
  %6263 = extractvalue %dx.types.ResRet.f32 %6262, 1
  %6264 = extractvalue %dx.types.ResRet.f32 %6262, 2
  %6265 = call float @dx.op.dot3.f32(i32 55, float %6247, float %6248, float %6249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = select i1 %187, float %6263, float %6247
  %6267 = select i1 %187, float %6265, float %6248
  %6268 = select i1 %187, float %6264, float %6249
  %6269 = fsub fast float %6258, %145
  %6270 = fsub fast float %6259, %146
  %6271 = fsub fast float %6260, %147
  %6272 = call float @dx.op.dot3.f32(i32 55, float %6269, float %6270, float %6271, float %6269, float %6270, float %6271)  ; Dot3(ax,ay,az,bx,by,bz)
  %6273 = call float @dx.op.unary.f32(i32 24, float %6272)  ; Sqrt(value)
  %6274 = fdiv fast float 1.000000e+00, %6273
  %6275 = fmul fast float %6274, %6269
  %6276 = fmul fast float %6274, %6270
  %6277 = fmul fast float %6274, %6271
  %6278 = fadd fast float %6273, %6252
  %6279 = fdiv fast float 1.000000e+00, %6278
  %6280 = fmul float %6255, %6279
  %6281 = fmul float %6280, %6280
  %6282 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6283 = and i32 %6243, %6229
  %6284 = icmp eq i32 %6283, 0
  br i1 %6284, label %6307, label %6285, !dx.controlflow.hints !93

; <label>:6285                                    ; preds = %6232
  %6286 = lshr i32 %6177, 5
  %6287 = lshr i32 %6178, 5
  %6288 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6286, i32 %6287, i32 %6241, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6289 = extractvalue %dx.types.ResRet.i32 %6288, 0
  %6290 = and i32 %6289, 3
  %6291 = icmp eq i32 %6290, 0
  %6292 = select i1 %6291, float 1.000000e+00, float 0.000000e+00
  %6293 = icmp eq i32 %6290, 3
  br i1 %6293, label %6294, label %6307

; <label>:6294                                    ; preds = %6285
  %6295 = lshr i32 %6289, 10
  %6296 = and i32 %6295, 8160
  %6297 = and i32 %6178, 31
  %6298 = or i32 %6296, %6297
  %6299 = lshr i32 %6289, 1
  %6300 = and i32 %6299, 16352
  %6301 = and i32 %6177, 31
  %6302 = or i32 %6300, %6301
  %6303 = lshr i32 %6289, 23
  %6304 = and i32 %6303, 255
  %6305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6302, i32 %6298, i32 %6304, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6306 = extractvalue %dx.types.ResRet.f32 %6305, 0
  br label %6307

; <label>:6307                                    ; preds = %6294, %6285, %6232
  %6308 = phi float [ %6306, %6294 ], [ %6292, %6285 ], [ 0.000000e+00, %6232 ]
  %6309 = call float @dx.op.binary.f32(i32 36, float %6308, float %6308)  ; FMin(a,b)
  %6310 = call float @dx.op.binary.f32(i32 36, float %6308, float %6309)  ; FMin(a,b)
  %6311 = fcmp fast ogt float %6310, 0.000000e+00
  br i1 %6311, label %6320, label %6312, !dx.controlflow.hints !94

; <label>:6312                                    ; preds = %6552, %6307
  %6313 = phi float [ %6234, %6307 ], [ %6592, %6552 ]
  %6314 = phi float [ %6235, %6307 ], [ %6593, %6552 ]
  %6315 = phi float [ %6236, %6307 ], [ %6594, %6552 ]
  %6316 = phi float [ %6237, %6307 ], [ %6586, %6552 ]
  %6317 = phi float [ %6238, %6307 ], [ %6587, %6552 ]
  %6318 = phi float [ %6239, %6307 ], [ %6588, %6552 ]
  %6319 = icmp eq i32 %6233, %6243
  br i1 %6319, label %6595, label %6232

; <label>:6320                                    ; preds = %6307
  %6321 = fmul fast float %6308, %6266
  %6322 = fmul fast float %6308, %6267
  %6323 = fmul fast float %6308, %6268
  %6324 = fsub fast float %6260, %4427
  %6325 = fcmp fast ogt float %6324, 0.000000e+00
  %6326 = fsub fast float %147, %4427
  %6327 = fcmp fast ogt float %6326, 0.000000e+00
  %6328 = xor i1 %6327, %6325
  %6329 = fsub fast float %4427, %6260
  %6330 = fmul fast float %6329, 2.000000e+00
  %6331 = fadd fast float %6330, %6260
  %6332 = select i1 %6328, float %6260, float %6331
  %6333 = fsub fast float %6332, %147
  %6334 = call float @dx.op.dot3.f32(i32 55, float %6269, float %6270, float %6333, float %6269, float %6270, float %6333)  ; Dot3(ax,ay,az,bx,by,bz)
  %6335 = call float @dx.op.unary.f32(i32 25, float %6334)  ; Rsqrt(value)
  %6336 = fmul fast float %6335, %6269
  %6337 = fmul fast float %6335, %6270
  %6338 = fmul fast float %6335, %6333
  %6339 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4435)  ; Dot3(ax,ay,az,bx,by,bz)
  %6340 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6336, float %6337, float %6338)  ; Dot3(ax,ay,az,bx,by,bz)
  %6341 = fdiv fast float 1.000000e+00, %6340
  %6342 = fmul fast float %6341, %6339
  %6343 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6326, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6344 = fcmp fast ogt float %6343, 0.000000e+00
  %6345 = fcmp fast olt float %6343, 0.000000e+00
  %6346 = zext i1 %6344 to i32
  %6347 = zext i1 %6345 to i32
  %6348 = sub nsw i32 %6346, %6347
  %6349 = sitofp i32 %6348 to float
  %6350 = fsub fast float %6332, %4427
  %6351 = call float @dx.op.dot3.f32(i32 55, float %6269, float %6270, float %6350, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6352 = fcmp fast ogt float %6351, 0.000000e+00
  %6353 = fcmp fast olt float %6351, 0.000000e+00
  %6354 = zext i1 %6352 to i32
  %6355 = zext i1 %6353 to i32
  %6356 = sub nsw i32 %6354, %6355
  %6357 = sitofp i32 %6356 to float
  %6358 = fcmp fast une float %6349, %6357
  br i1 %6358, label %6359, label %6369

; <label>:6359                                    ; preds = %6320
  %6360 = fmul fast float %6342, %6338
  %6361 = fmul fast float %6342, %6337
  %6362 = fmul fast float %6342, %6336
  %6363 = fmul fast float %6362, %6362
  %6364 = fmul fast float %6361, %6361
  %6365 = fadd fast float %6363, %6364
  %6366 = fmul fast float %6360, %6360
  %6367 = fadd fast float %6365, %6366
  %6368 = call float @dx.op.unary.f32(i32 24, float %6367)  ; Sqrt(value)
  br label %6381

; <label>:6369                                    ; preds = %6320
  %6370 = icmp slt i32 %6348, 0
  br i1 %6370, label %6371, label %6381

; <label>:6371                                    ; preds = %6369
  %6372 = fsub fast float %145, %6258
  %6373 = fsub fast float %146, %6259
  %6374 = fsub fast float %147, %6332
  %6375 = fmul fast float %6372, %6372
  %6376 = fmul fast float %6373, %6373
  %6377 = fadd fast float %6375, %6376
  %6378 = fmul fast float %6374, %6374
  %6379 = fadd fast float %6377, %6378
  %6380 = call float @dx.op.unary.f32(i32 24, float %6379)  ; Sqrt(value)
  br label %6381

; <label>:6381                                    ; preds = %6371, %6369, %6359
  %6382 = phi float [ %6368, %6359 ], [ %6380, %6371 ], [ 0.000000e+00, %6369 ]
  %6383 = and i1 %6327, %6325
  %6384 = fsub fast float -0.000000e+00, %6382
  %6385 = select i1 %6383, float -0.000000e+00, float %6384
  %6386 = fmul fast float %4428, 0x3FF7154760000000
  %6387 = fmul fast float %6386, %6385
  %6388 = fmul fast float %4429, 0x3FF7154760000000
  %6389 = fmul fast float %6388, %6385
  %6390 = fmul fast float %4430, 0x3FF7154760000000
  %6391 = fmul fast float %6390, %6385
  %6392 = call float @dx.op.unary.f32(i32 21, float %6387)  ; Exp(value)
  %6393 = call float @dx.op.unary.f32(i32 21, float %6389)  ; Exp(value)
  %6394 = call float @dx.op.unary.f32(i32 21, float %6391)  ; Exp(value)
  %6395 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  %6396 = call float @dx.op.unary.f32(i32 7, float %6393)  ; Saturate(value)
  %6397 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6398 = fmul fast float %6321, %6395
  %6399 = fmul fast float %6322, %6396
  %6400 = fmul fast float %6323, %6397
  %6401 = fsub fast float %6275, %4627
  %6402 = fsub fast float %6276, %4626
  %6403 = fsub fast float %6277, %4625
  %6404 = call float @dx.op.dot3.f32(i32 55, float %6401, float %6402, float %6403, float %6401, float %6402, float %6403)  ; Dot3(ax,ay,az,bx,by,bz)
  %6405 = call float @dx.op.unary.f32(i32 25, float %6404)  ; Rsqrt(value)
  %6406 = fmul fast float %6405, %6401
  %6407 = fmul fast float %6405, %6402
  %6408 = fmul fast float %6405, %6403
  %6409 = call float @dx.op.dot3.f32(i32 55, float %6275, float %6276, float %6277, float %4634, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %6410 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4623, float %4622, float %6406, float %6407, float %6408)  ; Dot3(ax,ay,az,bx,by,bz)
  %6411 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6412 = fmul fast float %6411, %6282
  %6413 = fmul fast float %6411, %6411
  %6414 = fmul fast float %6413, %4681
  %6415 = call float @dx.op.unary.f32(i32 7, float %6414)  ; Saturate(value)
  %6416 = fmul fast float %6412, %6415
  %6417 = bitcast float %6272 to i32
  %6418 = ashr i32 %6417, 1
  %6419 = sub nsw i32 1597463007, %6418
  %6420 = bitcast i32 %6419 to float
  %6421 = fmul fast float %6420, %6269
  %6422 = fmul fast float %6420, %6270
  %6423 = fmul fast float %6420, %6271
  %6424 = fsub fast float %6421, %4627
  %6425 = fsub fast float %6422, %4626
  %6426 = fsub fast float %6423, %4625
  %6427 = call float @dx.op.dot3.f32(i32 55, float %6424, float %6425, float %6426, float %6424, float %6425, float %6426)  ; Dot3(ax,ay,az,bx,by,bz)
  %6428 = call float @dx.op.unary.f32(i32 25, float %6427)  ; Rsqrt(value)
  %6429 = fmul fast float %6424, %6428
  %6430 = fmul fast float %6425, %6428
  %6431 = fmul fast float %6426, %6428
  %6432 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4635, float %4636, float %6429, float %6430, float %6431)  ; Dot3(ax,ay,az,bx,by,bz)
  %6433 = fmul fast float %6432, %6432
  %6434 = call float @dx.op.unary.f32(i32 6, float %6409)  ; FAbs(value)
  %6435 = fsub fast float 1.000000e+00, %4674
  %6436 = fmul fast float %4656, %4656
  %6437 = fmul fast float %6436, %6435
  %6438 = fadd fast float %6437, %4674
  %6439 = bitcast float %6438 to i32
  %6440 = ashr i32 %6439, 1
  %6441 = add nsw i32 %6440, 532487669
  %6442 = bitcast i32 %6441 to float
  %6443 = fadd fast float %6442, %4656
  %6444 = fmul fast float %4674, %6433
  %6445 = fsub fast float 1.000000e+00, %6433
  %6446 = fadd fast float %6445, %6444
  %6447 = fmul fast float %6434, %6434
  %6448 = fmul fast float %6447, %6435
  %6449 = fadd fast float %6448, %4674
  %6450 = bitcast float %6449 to i32
  %6451 = ashr i32 %6450, 1
  %6452 = add nsw i32 %6451, 532487669
  %6453 = bitcast i32 %6452 to float
  %6454 = fadd fast float %6453, %6434
  %6455 = fmul fast float %6446, %6446
  %6456 = fmul fast float %6455, %6443
  %6457 = fmul fast float %6456, %6454
  %6458 = fdiv fast float 1.000000e+00, %6457
  %6459 = bitcast float %4674 to i32
  %6460 = sitofp i32 %6459 to float
  %6461 = fmul fast float %6460, 0x3FE7F73180000000
  %6462 = fadd fast float %6461, 0x41AFE27C40000000
  %6463 = fptosi float %6462 to i32
  %6464 = bitcast i32 %6463 to float
  %6465 = fmul fast float %6255, 0x3FD80E9D60000000
  %6466 = fmul fast float %6465, %6420
  %6467 = fadd fast float %6464, %6466
  %6468 = bitcast float %6467 to i32
  %6469 = sub nsw i32 2129859010, %6468
  %6470 = bitcast i32 %6469 to float
  %6471 = fmul fast float %4674, %6458
  %6472 = fmul fast float %6471, %6464
  %6473 = fmul fast float %6472, %6470
  %6474 = call float @dx.op.unary.f32(i32 6, float %6410)  ; FAbs(value)
  %6475 = fsub fast float 1.000000e+00, %6474
  %6476 = bitcast float %6475 to i32
  %6477 = sitofp i32 %6476 to float
  %6478 = fmul fast float %6477, 5.000000e+00
  %6479 = fadd fast float %6478, 0xC1EFBF8940000000
  %6480 = fptosi float %6479 to i32
  %6481 = bitcast i32 %6480 to float
  %6482 = fsub fast float 1.000000e+00, %4628
  %6483 = fsub fast float 1.000000e+00, %4629
  %6484 = fsub fast float 1.000000e+00, %4654
  %6485 = fmul fast float %6481, %6482
  %6486 = fmul fast float %6481, %6483
  %6487 = fmul fast float %6481, %6484
  %6488 = fadd fast float %6485, %4628
  %6489 = fadd fast float %6486, %4629
  %6490 = fadd fast float %6487, %4654
  br i1 %4968, label %6491, label %6514

; <label>:6491                                    ; preds = %6381
  %6492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %6474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.ResRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.ResRet.f32 %6492, 2
  %6496 = fadd fast float %6493, -5.000000e-01
  %6497 = fadd fast float %6494, -5.000000e-01
  %6498 = fadd fast float %6495, -5.000000e-01
  %6499 = fmul fast float %4628, 4.000000e+00
  %6500 = fmul fast float %6499, %6482
  %6501 = fmul fast float %6500, %6496
  %6502 = fmul fast float %4629, 4.000000e+00
  %6503 = fmul fast float %6502, %6483
  %6504 = fmul fast float %6503, %6497
  %6505 = fmul fast float %4654, 4.000000e+00
  %6506 = fmul fast float %6505, %6484
  %6507 = fmul fast float %6506, %6498
  %6508 = fadd fast float %6501, %6488
  %6509 = fadd fast float %6504, %6489
  %6510 = fadd fast float %6507, %6490
  %6511 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6512 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  %6513 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  br label %6514

; <label>:6514                                    ; preds = %6491, %6381
  %6515 = phi float [ %6511, %6491 ], [ %6488, %6381 ]
  %6516 = phi float [ %6512, %6491 ], [ %6489, %6381 ]
  %6517 = phi float [ %6513, %6491 ], [ %6490, %6381 ]
  %6518 = fmul fast float %6409, 9.843750e-01
  %6519 = fadd fast float %6518, 7.812500e-03
  %6520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6519, float %4958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6521 = extractvalue %dx.types.ResRet.f32 %6520, 2
  %6522 = extractvalue %dx.types.ResRet.f32 %6520, 3
  %6523 = fmul fast float %6521, %4628
  %6524 = fmul fast float %6521, %4629
  %6525 = fmul fast float %6521, %4654
  %6526 = fadd fast float %6523, %6522
  %6527 = fadd fast float %6524, %6522
  %6528 = fadd fast float %6525, %6522
  br i1 %4968, label %6529, label %6552

; <label>:6529                                    ; preds = %6514
  %6530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4026, float %6409, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6531 = extractvalue %dx.types.ResRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.ResRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.ResRet.f32 %6530, 2
  %6534 = fadd fast float %6531, -5.000000e-01
  %6535 = fadd fast float %6532, -5.000000e-01
  %6536 = fadd fast float %6533, -5.000000e-01
  %6537 = fmul fast float %4628, 4.000000e+00
  %6538 = fmul fast float %6537, %6482
  %6539 = fmul fast float %6538, %6534
  %6540 = fmul fast float %4629, 4.000000e+00
  %6541 = fmul fast float %6540, %6483
  %6542 = fmul fast float %6541, %6535
  %6543 = fmul fast float %4654, 4.000000e+00
  %6544 = fmul fast float %6543, %6484
  %6545 = fmul fast float %6544, %6536
  %6546 = fadd fast float %6539, %6526
  %6547 = fadd fast float %6542, %6527
  %6548 = fadd fast float %6545, %6528
  %6549 = call float @dx.op.unary.f32(i32 7, float %6546)  ; Saturate(value)
  %6550 = call float @dx.op.unary.f32(i32 7, float %6547)  ; Saturate(value)
  %6551 = call float @dx.op.unary.f32(i32 7, float %6548)  ; Saturate(value)
  br label %6552

; <label>:6552                                    ; preds = %6529, %6514
  %6553 = phi float [ %6549, %6529 ], [ %6526, %6514 ]
  %6554 = phi float [ %6550, %6529 ], [ %6527, %6514 ]
  %6555 = phi float [ %6551, %6529 ], [ %6528, %6514 ]
  %6556 = call float @dx.op.binary.f32(i32 35, float %6554, float %6555)  ; FMax(a,b)
  %6557 = call float @dx.op.binary.f32(i32 35, float %6553, float %6556)  ; FMax(a,b)
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = fmul fast float %6515, %6473
  %6560 = fmul fast float %6516, %6473
  %6561 = fmul fast float %6517, %6473
  %6562 = fsub fast float 1.000000e+00, %6410
  %6563 = bitcast float %6562 to i32
  %6564 = sitofp i32 %6563 to float
  %6565 = fmul fast float %6564, 5.000000e+00
  %6566 = fadd fast float %6565, 0xC1EFBF8940000000
  %6567 = fptosi float %6566 to i32
  %6568 = bitcast i32 %6567 to float
  %6569 = fmul fast float %6568, %4027
  %6570 = fmul fast float %6558, %6569
  %6571 = fmul fast float %6570, %5912
  %6572 = fmul fast float %6570, %5913
  %6573 = fmul fast float %6570, %5914
  %6574 = fadd fast float %6571, %6559
  %6575 = fadd fast float %6572, %6560
  %6576 = fadd fast float %6573, %6561
  %6577 = fmul fast float %6398, %4023
  %6578 = fmul fast float %6577, %6416
  %6579 = fmul fast float %6578, %6558
  %6580 = fmul fast float %6399, %4023
  %6581 = fmul fast float %6580, %6416
  %6582 = fmul fast float %6581, %6558
  %6583 = fmul fast float %6400, %4023
  %6584 = fmul fast float %6583, %6416
  %6585 = fmul fast float %6584, %6558
  %6586 = fadd fast float %6579, %6237
  %6587 = fadd fast float %6582, %6238
  %6588 = fadd fast float %6585, %6239
  %6589 = fmul fast float %6578, %6574
  %6590 = fmul fast float %6581, %6575
  %6591 = fmul fast float %6584, %6576
  %6592 = fadd fast float %6589, %6234
  %6593 = fadd fast float %6590, %6235
  %6594 = fadd fast float %6591, %6236
  br label %6312

; <label>:6595                                    ; preds = %6312
  br label %6596

; <label>:6596                                    ; preds = %6595, %6200
  %6597 = phi float [ %6202, %6200 ], [ %6313, %6595 ]
  %6598 = phi float [ %6203, %6200 ], [ %6314, %6595 ]
  %6599 = phi float [ %6204, %6200 ], [ %6315, %6595 ]
  %6600 = phi float [ %6205, %6200 ], [ %6316, %6595 ]
  %6601 = phi float [ %6206, %6200 ], [ %6317, %6595 ]
  %6602 = phi float [ %6207, %6200 ], [ %6318, %6595 ]
  %6603 = add i32 %6201, 1
  %6604 = icmp ugt i32 %6603, %6197
  br i1 %6604, label %6605, label %6200

; <label>:6605                                    ; preds = %6596
  br label %6606

; <label>:6606                                    ; preds = %6605, %6176, %6166
  %6607 = phi float [ %6167, %6166 ], [ %6167, %6176 ], [ %6597, %6605 ]
  %6608 = phi float [ %6168, %6166 ], [ %6168, %6176 ], [ %6598, %6605 ]
  %6609 = phi float [ %6169, %6166 ], [ %6169, %6176 ], [ %6599, %6605 ]
  %6610 = phi float [ %6170, %6166 ], [ %6170, %6176 ], [ %6600, %6605 ]
  %6611 = phi float [ %6171, %6166 ], [ %6171, %6176 ], [ %6601, %6605 ]
  %6612 = phi float [ %6172, %6166 ], [ %6172, %6176 ], [ %6602, %6605 ]
  %6613 = call float @dx.op.unary.f32(i32 24, float %4631)  ; Sqrt(value)
  %6614 = call float @dx.op.unary.f32(i32 24, float %4632)  ; Sqrt(value)
  %6615 = call float @dx.op.unary.f32(i32 24, float %4633)  ; Sqrt(value)
  %6616 = fmul fast float %6613, %6610
  %6617 = fmul fast float %6614, %6611
  %6618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.f32 %6618, 0
  br i1 %187, label %6620, label %6643

; <label>:6620                                    ; preds = %6606
  %6621 = fadd fast float %6612, %4029
  %6622 = fmul fast float %6621, %4030
  %6623 = fsub fast float 1.000000e+00, %4030
  %6624 = call float @dx.op.unary.f32(i32 7, float %6623)  ; Saturate(value)
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 3
  %6627 = fmul fast float %6626, %6624
  %6628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6629 = extractvalue %dx.types.CBufRet.f32 %6628, 0
  %6630 = fmul fast float %6629, %5919
  %6631 = extractvalue %dx.types.CBufRet.f32 %6628, 2
  %6632 = fmul fast float %6631, %4652
  %6633 = fadd fast float %6617, %6616
  %6634 = fmul fast float %6619, %6633
  %6635 = extractvalue %dx.types.CBufRet.f32 %6625, 1
  %6636 = fadd fast float %6627, %6622
  %6637 = fsub fast float %6636, %6630
  %6638 = fadd fast float %6637, %6632
  %6639 = fsub fast float %6638, %6635
  %6640 = extractvalue %dx.types.CBufRet.f32 %6625, 2
  %6641 = fmul fast float %6639, %6640
  %6642 = call float @dx.op.unary.f32(i32 7, float %6641)  ; Saturate(value)
  br label %6659

; <label>:6643                                    ; preds = %6606
  %6644 = fmul fast float %6615, %6612
  %6645 = fmul fast float %6619, %6616
  %6646 = fmul fast float %6619, %6617
  %6647 = fmul fast float %6644, %6619
  %6648 = add i32 %45, 356
  %6649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6648, i32 undef)  ; BufferLoad(srv,index,wot)
  %6650 = extractvalue %dx.types.ResRet.i32 %6649, 0
  %6651 = and i32 %6650, 32
  %6652 = icmp eq i32 %6651, 0
  br i1 %6652, label %6659, label %6653

; <label>:6653                                    ; preds = %6643
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 0
  %6656 = fmul fast float %6655, 0x3FE99999A0000000
  %6657 = fadd fast float %6655, %6645
  %6658 = fadd fast float %6656, %6647
  br label %6659

; <label>:6659                                    ; preds = %6653, %6643, %6620
  %6660 = phi float [ %6634, %6620 ], [ %6657, %6653 ], [ %6645, %6643 ]
  %6661 = phi float [ %6642, %6620 ], [ %6646, %6653 ], [ %6646, %6643 ]
  %6662 = phi float [ 1.000000e+00, %6620 ], [ %6658, %6653 ], [ %6647, %6643 ]
  %6663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6664 = extractvalue %dx.types.CBufRet.f32 %6663, 0
  %6665 = fmul fast float %6664, %6608
  %6666 = fmul fast float %6664, %6609
  %6667 = fadd fast float %6608, %6607
  %6668 = select i1 %187, float %6667, float %6607
  %6669 = fmul float %6668, %6664
  %6670 = select i1 %187, float 0.000000e+00, float %6665
  %6671 = select i1 %187, float 0.000000e+00, float %6666
  %6672 = fmul fast float %6660, %6613
  %6673 = fmul fast float %6661, %6614
  %6674 = fmul fast float %6662, %6615
  %6675 = fadd fast float %6669, %6672
  %6676 = fadd fast float %6670, %6673
  %6677 = fadd fast float %6671, %6674
  %6678 = select i1 %187, float %6661, float %6676
  %6679 = select i1 %187, float %6662, float %6677
  %6680 = call float @dx.op.binary.f32(i32 36, float %6675, float 3.225500e+04)  ; FMin(a,b)
  %6681 = call float @dx.op.binary.f32(i32 36, float %6678, float 3.225500e+04)  ; FMin(a,b)
  %6682 = call float @dx.op.binary.f32(i32 36, float %6679, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6680)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6681)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6682)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[51 x i32] [i32 49, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !86}
!59 = !{!60, !84, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !81, !83}
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
!77 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 10, i8 0, !78}
!78 = !{i32 3, i32 8}
!79 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 11, i8 0, !80}
!80 = !{i32 3, i32 13}
!81 = !{i32 12, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 12, i8 0, !82}
!82 = !{i32 3, i32 1}
!83 = !{i32 13, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!84 = !{!85}
!85 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!86 = !{i32 0, i64 24}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}

