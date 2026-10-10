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
; shader hash: 314b7808ad19fb0ceedd25525e1cb4c5
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 44 }
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
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = fmul fast float %83, %77
  %85 = fmul fast float %83, %78
  %86 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %87 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %88 = bitcast float %87 to i32
  %89 = ashr i32 %88, 1
  %90 = sub nsw i32 1597250115, %89
  %91 = bitcast i32 %90 to float
  %92 = fmul fast float %69, %86
  %93 = fmul fast float %92, %91
  %94 = fmul fast float %70, %86
  %95 = fmul fast float %94, %91
  %96 = fmul fast float %71, %86
  %97 = fmul fast float %96, %91
  %98 = fmul fast float %70, %67
  %99 = fmul fast float %71, %66
  %100 = fsub fast float %98, %99
  %101 = fmul fast float %71, %65
  %102 = fmul fast float %69, %67
  %103 = fsub fast float %101, %102
  %104 = fmul fast float %69, %66
  %105 = fmul fast float %70, %65
  %106 = fsub fast float %104, %105
  %107 = fmul fast float %100, %68
  %108 = fmul fast float %103, %68
  %109 = fmul fast float %106, %68
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %84, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %85, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %79
  %144 = fmul fast float %140, %79
  %145 = fmul fast float %142, %79
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %147, %84
  %150 = fmul fast float %148, %85
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = and i32 %152, 114688
  %154 = icmp ne i32 %153, 0
  %155 = select i1 %154, float %149, float 0.000000e+00
  %156 = select i1 %154, float %150, float 0.000000e+00
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %155, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = fmul fast float %158, 2.550000e+02
  %160 = fptoui float %159 to i32
  %161 = select i1 %154, i32 %160, i32 0
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 3
  %165 = and i32 %164, 3
  %166 = icmp ne i32 %165, 0
  %167 = and i32 %164, 4
  %168 = icmp ne i32 %167, 0
  %169 = and i1 %166, %168
  br i1 %169, label %170, label %181

; <label>:170                                     ; preds = %0
  %171 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %172 = fmul fast float %171, %85
  %173 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %174 = fmul fast float %173, %84
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %174, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fsub fast float 1.000000e+00, %176
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = fcmp fast olt float %177, %179
  br label %184

; <label>:181                                     ; preds = %0
  %182 = icmp eq i32 %167, 0
  %183 = and i1 %166, %182
  br label %184

; <label>:184                                     ; preds = %181, %170
  %185 = phi i1 [ %180, %170 ], [ %183, %181 ]
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = fmul fast float %187, 0x3FE3C6EF40000000
  %189 = frem fast float %84, 2.560000e+02
  %190 = frem fast float %85, 2.560000e+02
  %191 = fptoui float %189 to i32
  %192 = fptoui float %190 to i32
  %193 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = fadd fast float %194, %188
  %197 = fadd fast float %195, %188
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = add i32 %45, 156
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = shl i32 %202, 4
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %202, 7
  %207 = and i32 %206, 32752
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %202, 22
  %210 = shl nuw nsw i32 %209, 5
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = add i32 %45, 216
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %214, 8
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %214, 16
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = add i32 %45, 36
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = add i32 %45, 288
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = fmul fast float %237, 0x3F50624DE0000000
  %241 = fmul fast float %239, 0x3F50624DE0000000
  %242 = add i32 %45, 172
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = shl i32 %244, 4
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %244, 7
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %244, 22
  %252 = shl nuw nsw i32 %251, 5
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %45, 232
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %256, 8
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %256, 16
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = add i32 %45, 52
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %45, 304
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = fmul fast float %279, 0x3F50624DE0000000
  %283 = fmul fast float %281, 0x3F50624DE0000000
  %284 = add i32 %45, 188
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %286, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %286, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %286, 22
  %294 = shl nuw nsw i32 %293, 5
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %45, 248
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %298, 8
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %298, 16
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = add i32 %45, 68
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %45, 320
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = fmul fast float %321, 0x3F50624DE0000000
  %325 = fmul fast float %323, 0x3F50624DE0000000
  %326 = add i32 %45, 204
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = shl i32 %328, 4
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %328, 7
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 22
  %336 = shl nuw nsw i32 %335, 5
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %45, 264
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %340, 8
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %340, 16
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = add i32 %45, 84
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %45, 336
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = fmul fast float %363, 0x3F50624DE0000000
  %367 = fmul fast float %365, 0x3F50624DE0000000
  %368 = add i32 %45, 348
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 32
  %372 = icmp eq i32 %371, 0
  %373 = and i32 %370, 64
  %374 = icmp eq i32 %373, 0
  %375 = and i32 %370, 128
  %376 = icmp eq i32 %375, 0
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %394, label %381

; <label>:381                                     ; preds = %184
  %382 = add i32 %45, 472
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add i32 %384, 0
  %386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %386, %dx.types.Handle %81, float %72, float %73, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = fmul fast float %388, %74
  %392 = fmul fast float %389, %75
  %393 = fmul fast float %390, %76
  br label %394

; <label>:394                                     ; preds = %381, %184
  %395 = phi float [ %76, %184 ], [ %393, %381 ]
  %396 = phi float [ %75, %184 ], [ %392, %381 ]
  %397 = phi float [ %74, %184 ], [ %391, %381 ]
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 2
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %421, label %402

; <label>:402                                     ; preds = %394
  %403 = add i32 %45, 44
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 1
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %397, float 1.000000e+00
  %409 = add i32 %45, 60
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 1
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %396, float 1.000000e+00
  %415 = add i32 %45, 76
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %395, float 1.000000e+00
  br label %421

; <label>:421                                     ; preds = %402, %394
  %422 = phi float [ %395, %394 ], [ %420, %402 ]
  %423 = phi float [ %396, %394 ], [ %414, %402 ]
  %424 = phi float [ %397, %394 ], [ %408, %402 ]
  %425 = lshr i32 %399, 20
  %426 = and i32 %425, 3
  %427 = add nuw nsw i32 %426, 1
  %428 = add i32 %45, 24
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %45, 28
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = or i32 %433, %430
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %894, label %436

; <label>:436                                     ; preds = %421
  %437 = and i32 %430, 262144
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %47, float 1.000000e+00
  %440 = select i1 %438, float %48, float 0.000000e+00
  %441 = select i1 %438, float %49, float 0.000000e+00
  %442 = select i1 %438, float %50, float 1.000000e+00
  %443 = select i1 %438, float %51, float %72
  %444 = select i1 %438, float %52, float %73
  %445 = add i32 %45, 284
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = lshr i32 %447, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = fmul fast float %449, 0x3F50624DE0000000
  %451 = add i32 %45, 88
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = lshr i32 %453, 16
  %455 = and i32 %454, 255
  %456 = lshr i32 %453, 24
  %457 = add i32 %45, 292
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 65535
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %459, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = add i32 %45, 32
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = lshr i32 %466, 22
  %468 = shl nuw nsw i32 %467, 5
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = shl i32 %466, 4
  %471 = and i32 %470, 32752
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %466, 7
  %474 = and i32 %473, 32752
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %478 = fmul fast float %477, 1.000000e+03
  %479 = fmul fast float %240, %478
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = fadd fast float %480, %230
  %482 = fmul fast float %241, %478
  %483 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %484 = fadd fast float %483, %232
  %485 = fmul fast float %450, %478
  %486 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %487 = fmul fast float %486, 0x401921FB60000000
  %488 = fadd fast float %487, %469
  %489 = call float @dx.op.unary.f32(i32 13, float %488)  ; Sin(value)
  %490 = call float @dx.op.unary.f32(i32 12, float %488)  ; Cos(value)
  %491 = fsub fast float -0.000000e+00, %489
  %492 = fadd fast float %443, -5.000000e-01
  %493 = fadd fast float %444, -5.000000e-01
  %494 = fmul fast float %461, %492
  %495 = fmul fast float %463, %493
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fmul fast float %472, %496
  %499 = fmul fast float %475, %497
  %500 = fmul fast float %490, %498
  %501 = call float @dx.op.tertiary.f32(i32 46, float %491, float %499, float %500)  ; FMad(a,b,c)
  %502 = fmul fast float %489, %498
  %503 = call float @dx.op.tertiary.f32(i32 46, float %490, float %499, float %502)  ; FMad(a,b,c)
  %504 = fadd fast float %481, %501
  %505 = fadd fast float %484, %503
  %506 = icmp ugt i32 %455, 1
  %507 = icmp ugt i32 %453, 33554431
  %508 = or i1 %507, %506
  br i1 %508, label %509, label %534

; <label>:509                                     ; preds = %436
  %510 = add i32 %45, 228
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %477, %514
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = mul nuw nsw i32 %455, %456
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %516, %518
  %520 = call float @dx.op.unary.f32(i32 27, float %519)  ; Round_ni(value)
  %521 = fptoui float %520 to i32
  %522 = urem i32 %521, %455
  %523 = udiv i32 %521, %456
  %524 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %525 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %526 = uitofp i32 %522 to float
  %527 = uitofp i32 %523 to float
  %528 = fadd fast float %524, %526
  %529 = fadd fast float %525, %527
  %530 = uitofp i32 %455 to float
  %531 = uitofp i32 %456 to float
  %532 = fdiv fast float %528, %530
  %533 = fdiv fast float %529, %531
  br label %534

; <label>:534                                     ; preds = %509, %436
  %535 = phi float [ %532, %509 ], [ %504, %436 ]
  %536 = phi float [ %533, %509 ], [ %505, %436 ]
  %537 = and i32 %430, 16
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %735, label %539

; <label>:539                                     ; preds = %534
  %540 = add i32 %45, 360
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %542, 0
  %544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %544, %dx.types.Handle %80, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = extractvalue %dx.types.ResRet.f32 %545, 3
  %550 = and i32 %453, 255
  %551 = uitofp i32 %550 to float
  %552 = lshr i32 %453, 8
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %549, %551
  %556 = fadd fast float %555, %554
  %557 = fmul fast float %556, 0x3F70101000000000
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 512
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %570, label %562

; <label>:562                                     ; preds = %539
  %563 = add i32 %45, 440
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %81, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  br label %570

; <label>:570                                     ; preds = %562, %539
  %571 = phi float [ %569, %562 ], [ 1.000000e+00, %539 ]
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 33554432
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %682, label %576

; <label>:576                                     ; preds = %570
  %577 = add i32 %45, 224
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = add i32 %45, 228
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 24
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = and i32 %590, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %590, 8
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = lshr i32 %590, 16
  %602 = and i32 %601, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = add i32 %45, 220
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = lshr i32 %607, 24
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = and i32 %607, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %607, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %607, 16
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = bitcast float %546 to i32
  %623 = ashr i32 %622, 1
  %624 = sub nsw i32 1597463174, %623
  %625 = bitcast i32 %624 to float
  %626 = fmul fast float %546, 5.000000e-01
  %627 = fmul fast float %625, %625
  %628 = fmul fast float %627, %626
  %629 = fsub fast float 1.500000e+00, %628
  %630 = fmul fast float %625, %546
  %631 = fmul fast float %630, %629
  %632 = bitcast float %547 to i32
  %633 = ashr i32 %632, 1
  %634 = sub nsw i32 1597463174, %633
  %635 = bitcast i32 %634 to float
  %636 = fmul fast float %547, 5.000000e-01
  %637 = fmul fast float %635, %635
  %638 = fmul fast float %637, %636
  %639 = fsub fast float 1.500000e+00, %638
  %640 = fmul fast float %635, %547
  %641 = fmul fast float %640, %639
  %642 = bitcast float %548 to i32
  %643 = ashr i32 %642, 1
  %644 = sub nsw i32 1597463174, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %548, 5.000000e-01
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %647, %646
  %649 = fsub fast float 1.500000e+00, %648
  %650 = fmul fast float %645, %548
  %651 = fmul fast float %650, %649
  %652 = fsub fast float %631, %613
  %653 = fsub fast float %641, %617
  %654 = fsub fast float %651, %621
  %655 = fmul fast float %652, %581
  %656 = fmul fast float %653, %583
  %657 = fmul fast float %654, %588
  %658 = fadd fast float %655, %596
  %659 = fadd fast float %656, %600
  %660 = fadd fast float %657, %604
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fsub fast float %664, %546
  %668 = fsub fast float %665, %547
  %669 = fsub fast float %666, %548
  %670 = fmul fast float %667, %571
  %671 = fmul fast float %668, %571
  %672 = fmul fast float %669, %571
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %593, %557
  %677 = fsub fast float %676, %610
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %679 = fsub fast float %678, %557
  %680 = fmul fast float %679, %571
  %681 = fadd fast float %680, %557
  br label %735

; <label>:682                                     ; preds = %570
  %683 = and i32 %573, 134217728
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %719, label %685

; <label>:685                                     ; preds = %682
  %686 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %687 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fmul fast float %689, %571
  %693 = fmul fast float %690, %571
  %694 = fmul fast float %691, %571
  %695 = fadd fast float %692, 5.000000e-01
  %696 = fadd fast float %693, 5.000000e-01
  %697 = fadd fast float %694, 5.000000e-01
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = fmul fast float %695, 2.000000e+00
  %702 = fsub fast float 1.000000e+00, %701
  %703 = fmul fast float %702, %698
  %704 = fadd fast float %703, %701
  %705 = fmul fast float %704, %698
  %706 = fmul fast float %696, 2.000000e+00
  %707 = fsub fast float 1.000000e+00, %706
  %708 = fmul fast float %707, %699
  %709 = fadd fast float %708, %706
  %710 = fmul fast float %709, %699
  %711 = fmul fast float %697, 2.000000e+00
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %712, %700
  %714 = fadd fast float %713, %711
  %715 = fmul fast float %714, %700
  %716 = fmul fast float %705, %705
  %717 = fmul fast float %710, %710
  %718 = fmul fast float %715, %715
  br label %735

; <label>:719                                     ; preds = %682
  %720 = fmul fast float %217, %217
  %721 = fmul fast float %221, %221
  %722 = fmul fast float %225, %225
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fmul fast float %571, %723
  %727 = fmul fast float %571, %724
  %728 = fmul fast float %571, %725
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fmul fast float %729, %546
  %733 = fmul fast float %730, %547
  %734 = fmul fast float %731, %548
  br label %735

; <label>:735                                     ; preds = %719, %685, %576, %534
  %736 = phi float [ %681, %576 ], [ %557, %685 ], [ %557, %719 ], [ 0x3FA23C0BE0000000, %534 ]
  %737 = phi float [ %673, %576 ], [ %716, %685 ], [ %732, %719 ], [ 1.000000e+00, %534 ]
  %738 = phi float [ %674, %576 ], [ %717, %685 ], [ %733, %719 ], [ 1.000000e+00, %534 ]
  %739 = phi float [ %675, %576 ], [ %718, %685 ], [ %734, %719 ], [ 1.000000e+00, %534 ]
  %740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.i32 %740, 1
  %742 = and i32 %741, 1
  %743 = icmp ne i32 %742, 0
  %744 = add i32 %45, 356
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 32
  %748 = icmp ne i32 %747, 0
  %749 = and i1 %743, %748
  %750 = select i1 %749, float 1.000000e+00, float %737
  %751 = select i1 %749, float 0x3FD3333340000000, float %738
  %752 = select i1 %749, float 0x3FD3333340000000, float %739
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 32
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %829, label %757

; <label>:757                                     ; preds = %735
  %758 = add i32 %45, 92
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = add i32 %45, 376
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %80, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = and i32 %760, 255
  %772 = uitofp i32 %771 to float
  %773 = lshr i32 %760, 8
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %760, 16
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101000000000
  %780 = fmul fast float %767, %772
  %781 = fadd fast float %780, %775
  %782 = fmul fast float %781, 0x3F70101000000000
  %783 = fadd fast float %768, -5.000000e-01
  %784 = fadd fast float %770, -5.000000e-01
  %785 = fmul fast float %783, %779
  %786 = fmul fast float %784, %779
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fmul fast float %787, 2.000000e+00
  %790 = fadd fast float %789, -1.000000e+00
  %791 = fmul fast float %788, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = fadd fast float %790, %792
  %794 = fmul fast float %793, 5.000000e-01
  %795 = fsub fast float %790, %792
  %796 = fmul fast float %795, 5.000000e-01
  %797 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %798 = fsub fast float 1.000000e+00, %797
  %799 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %800 = fsub fast float %798, %799
  %801 = call float @dx.op.dot3.f32(i32 55, float %794, float %796, float %800, float %794, float %796, float %800)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = call float @dx.op.unary.f32(i32 25, float %801)  ; Rsqrt(value)
  %803 = fmul fast float %794, %802
  %804 = fmul fast float %796, %802
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 67108864
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %825, label %809

; <label>:809                                     ; preds = %757
  %810 = add i32 %45, 280
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %812, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = fsub fast float %782, %820
  %822 = fmul fast float %821, %814
  %823 = fadd fast float %822, %818
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  br label %825

; <label>:825                                     ; preds = %809, %757
  %826 = phi float [ %824, %809 ], [ %782, %757 ]
  %827 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %439, float %440)  ; Dot2(ax,ay,bx,by)
  %828 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  br label %829

; <label>:829                                     ; preds = %825, %735
  %830 = phi float [ %826, %825 ], [ 0x3FD6666660000000, %735 ]
  %831 = phi float [ %827, %825 ], [ 0.000000e+00, %735 ]
  %832 = phi float [ %828, %825 ], [ 0.000000e+00, %735 ]
  %833 = phi float [ %769, %825 ], [ 1.000000e+00, %735 ]
  %834 = add i32 %45, 160
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 22
  %838 = shl nuw nsw i32 %837, 5
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 64
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %877, label %844

; <label>:844                                     ; preds = %829
  %845 = add i32 %45, 392
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = add i32 %847, 0
  %849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 131072
  %853 = icmp eq i32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %849, %dx.types.Handle %80, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = fmul fast float %855, %205
  %859 = fmul fast float %856, %208
  %860 = fmul fast float %857, %211
  br i1 %853, label %867, label %861

; <label>:861                                     ; preds = %844
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = fmul fast float %863, %858
  %865 = fmul fast float %863, %859
  %866 = fmul fast float %863, %860
  br label %867

; <label>:867                                     ; preds = %861, %844
  %868 = phi float [ %864, %861 ], [ %858, %844 ]
  %869 = phi float [ %865, %861 ], [ %859, %844 ]
  %870 = phi float [ %866, %861 ], [ %860, %844 ]
  %871 = fmul fast float %868, %839
  %872 = select i1 %185, float %871, float %868
  %873 = call float @dx.op.dot3.f32(i32 55, float %872, float %869, float %870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = select i1 %185, float 0.000000e+00, float %868
  %875 = select i1 %185, float %873, float %869
  %876 = select i1 %185, float 0.000000e+00, float %870
  br label %877

; <label>:877                                     ; preds = %867, %829
  %878 = phi float [ %874, %867 ], [ 0.000000e+00, %829 ]
  %879 = phi float [ %875, %867 ], [ 0.000000e+00, %829 ]
  %880 = phi float [ %876, %867 ], [ 0.000000e+00, %829 ]
  %881 = add i32 %45, 96
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = lshr i32 %883, 8
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = fmul fast float %888, %889
  %891 = fadd fast float %890, %885
  %892 = fmul fast float %891, 0x3F70101020000000
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  br label %894

; <label>:894                                     ; preds = %877, %421
  %895 = phi float [ 0.000000e+00, %421 ], [ %831, %877 ]
  %896 = phi float [ 0.000000e+00, %421 ], [ %832, %877 ]
  %897 = phi float [ 0.000000e+00, %421 ], [ %750, %877 ]
  %898 = phi float [ 0.000000e+00, %421 ], [ %751, %877 ]
  %899 = phi float [ 0.000000e+00, %421 ], [ %752, %877 ]
  %900 = phi float [ 0.000000e+00, %421 ], [ %878, %877 ]
  %901 = phi float [ 0.000000e+00, %421 ], [ %879, %877 ]
  %902 = phi float [ 0.000000e+00, %421 ], [ %880, %877 ]
  %903 = phi float [ 0.000000e+00, %421 ], [ %736, %877 ]
  %904 = phi float [ 0.000000e+00, %421 ], [ 1.000000e+00, %877 ]
  %905 = phi float [ 0.000000e+00, %421 ], [ %830, %877 ]
  %906 = phi float [ 0.000000e+00, %421 ], [ %833, %877 ]
  %907 = phi float [ 0.000000e+00, %421 ], [ %893, %877 ]
  br i1 %372, label %1749, label %908

; <label>:908                                     ; preds = %894
  %909 = icmp ult i32 %427, 2
  %910 = add i32 %45, 40
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = add i32 %45, 44
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = or i32 %915, %912
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %1749, label %918

; <label>:918                                     ; preds = %908
  %919 = and i32 %912, 262144
  %920 = icmp ne i32 %919, 0
  %921 = select i1 %920, float %47, float 1.000000e+00
  %922 = select i1 %920, float %48, float 0.000000e+00
  %923 = select i1 %920, float %49, float 0.000000e+00
  %924 = select i1 %920, float %50, float 1.000000e+00
  %925 = select i1 %920, float %51, float %72
  %926 = select i1 %920, float %52, float %73
  %927 = add i32 %45, 300
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 16
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = fmul fast float %931, 0x3F50624DE0000000
  %933 = add i32 %45, 104
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = lshr i32 %935, 16
  %937 = and i32 %936, 255
  %938 = lshr i32 %935, 24
  %939 = add i32 %45, 308
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 65535
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %941, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = add i32 %45, 48
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 22
  %950 = shl nuw nsw i32 %949, 5
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = shl i32 %948, 4
  %953 = and i32 %952, 32752
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = lshr i32 %948, 7
  %956 = and i32 %955, 32752
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %960 = fmul fast float %959, 1.000000e+03
  %961 = fmul fast float %282, %960
  %962 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %963 = fadd fast float %962, %272
  %964 = fmul fast float %283, %960
  %965 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %966 = fadd fast float %965, %274
  %967 = fmul fast float %932, %960
  %968 = call float @dx.op.unary.f32(i32 22, float %967)  ; Frc(value)
  %969 = fmul fast float %968, 0x401921FB60000000
  %970 = fadd fast float %969, %951
  %971 = call float @dx.op.unary.f32(i32 13, float %970)  ; Sin(value)
  %972 = call float @dx.op.unary.f32(i32 12, float %970)  ; Cos(value)
  %973 = fsub fast float -0.000000e+00, %971
  %974 = fadd fast float %925, -5.000000e-01
  %975 = fadd fast float %926, -5.000000e-01
  %976 = fmul fast float %943, %974
  %977 = fmul fast float %945, %975
  %978 = fadd fast float %976, 5.000000e-01
  %979 = fadd fast float %977, 5.000000e-01
  %980 = fmul fast float %954, %978
  %981 = fmul fast float %957, %979
  %982 = fmul fast float %972, %980
  %983 = call float @dx.op.tertiary.f32(i32 46, float %973, float %981, float %982)  ; FMad(a,b,c)
  %984 = fmul fast float %971, %980
  %985 = call float @dx.op.tertiary.f32(i32 46, float %972, float %981, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %963, %983
  %987 = fadd fast float %966, %985
  %988 = icmp ugt i32 %937, 1
  %989 = icmp ugt i32 %935, 33554431
  %990 = or i1 %989, %988
  br i1 %990, label %991, label %1016

; <label>:991                                     ; preds = %918
  %992 = add i32 %45, 244
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 16
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = fmul fast float %959, %996
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = mul nuw nsw i32 %937, %938
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %998, %1000
  %1002 = call float @dx.op.unary.f32(i32 27, float %1001)  ; Round_ni(value)
  %1003 = fptoui float %1002 to i32
  %1004 = urem i32 %1003, %937
  %1005 = udiv i32 %1003, %938
  %1006 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %1007 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %1008 = uitofp i32 %1004 to float
  %1009 = uitofp i32 %1005 to float
  %1010 = fadd fast float %1006, %1008
  %1011 = fadd fast float %1007, %1009
  %1012 = uitofp i32 %937 to float
  %1013 = uitofp i32 %938 to float
  %1014 = fdiv fast float %1010, %1012
  %1015 = fdiv fast float %1011, %1013
  br label %1016

; <label>:1016                                    ; preds = %991, %918
  %1017 = phi float [ %1014, %991 ], [ %986, %918 ]
  %1018 = phi float [ %1015, %991 ], [ %987, %918 ]
  %1019 = and i32 %912, 16777216
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1130, label %1021

; <label>:1021                                    ; preds = %1016
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = fadd fast float %1023, %143
  %1027 = fadd fast float %1024, %144
  %1028 = fadd fast float %1025, %145
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1032 = icmp eq i32 %46, 65535
  br i1 %1032, label %1127, label %1033

; <label>:1033                                    ; preds = %1021
  %1034 = lshr i32 %46, 1
  %1035 = shl i32 %1034, 2
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %46, 1
  %1039 = icmp ne i32 %1038, 0
  %1040 = lshr i32 %1037, 16
  %1041 = and i32 %1037, 65535
  %1042 = select i1 %1039, i32 %1040, i32 %1041
  %1043 = icmp eq i32 %1042, 65535
  br i1 %1043, label %1123, label %1044

; <label>:1044                                    ; preds = %1033
  %1045 = mul nuw nsw i32 %1042, 40
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = add nuw nsw i32 %1045, 12
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = add nuw nsw i32 %1045, 24
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = add nuw nsw i32 %1045, 36
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = fsub fast float %1026, %1047
  %1064 = fsub fast float %1027, %1048
  %1065 = fsub fast float %1028, %1049
  %1066 = fmul fast float %1062, %1063
  %1067 = fmul fast float %1062, %1064
  %1068 = fmul fast float %1062, %1065
  %1069 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = fadd fast float %1070, 5.000000e-01
  %1074 = fadd fast float %1071, 5.000000e-01
  %1075 = fmul fast float %1072, %1052
  %1076 = fmul fast float %1073, %1053
  %1077 = fmul fast float %1074, %1054
  %1078 = shl i32 %46, 2
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = add i32 %1080, 0
  %1082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1083 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1085 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1082, %dx.types.Handle %40, float %1083, float %1084, float %1085, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = fmul fast float %1087, 1.023000e+03
  %1091 = fmul fast float %1088, 1.023000e+03
  %1092 = fmul fast float %1089, 1.023000e+03
  %1093 = fadd fast float %1090, 5.000000e-01
  %1094 = fadd fast float %1091, 5.000000e-01
  %1095 = fadd fast float %1092, 5.000000e-01
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = fsub fast float %1066, %1069
  %1100 = fsub fast float %1067, %1070
  %1101 = fsub fast float %1068, %1071
  %1102 = fmul fast float %1099, 7.500000e-01
  %1103 = fmul fast float %1100, 7.500000e-01
  %1104 = fmul fast float %1101, 7.500000e-01
  %1105 = fadd fast float %1069, 1.250000e-01
  %1106 = fadd fast float %1105, %1102
  %1107 = fadd fast float %1106, %1096
  %1108 = fadd fast float %1070, 1.250000e-01
  %1109 = fadd fast float %1108, %1103
  %1110 = fadd fast float %1109, %1097
  %1111 = fadd fast float %1071, 1.250000e-01
  %1112 = fadd fast float %1111, %1104
  %1113 = fadd fast float %1112, %1098
  %1114 = fmul fast float %1107, %1057
  %1115 = fmul fast float %1110, %1058
  %1116 = fmul fast float %1113, %1059
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = add i32 %1118, 0
  %1120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1120, %dx.types.Handle %38, float %1114, float %1115, float %1116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  br label %1123

; <label>:1123                                    ; preds = %1044, %1033
  %1124 = phi float [ %1122, %1044 ], [ -1.000000e+00, %1033 ]
  %1125 = fadd fast float %1124, %1031
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  br label %1127

; <label>:1127                                    ; preds = %1123, %1021
  %1128 = phi float [ %1126, %1123 ], [ %1031, %1021 ]
  %1129 = fmul fast float %1128, %424
  br label %1130

; <label>:1130                                    ; preds = %1127, %1016
  %1131 = phi float [ %1129, %1127 ], [ %424, %1016 ]
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 256
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1182, label %1136

; <label>:1136                                    ; preds = %1130
  %1137 = add i32 %45, 428
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %1139, 0
  %1141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1141, %dx.types.Handle %81, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = add i32 %45, 116
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = shl i32 %1146, 4
  %1148 = and i32 %1147, 32752
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = lshr i32 %1146, 7
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fsub fast float 1.000000e+00, %1131
  %1154 = call float @dx.op.binary.f32(i32 35, float %1153, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1155 = bitcast float %1131 to i32
  %1156 = sitofp i32 %1155 to float
  %1157 = fadd fast float %1156, 0xC1CFBF8940000000
  %1158 = fmul fast float %1152, %1157
  %1159 = fadd fast float %1158, 0x41CFBF8940000000
  %1160 = fptosi float %1159 to i32
  %1161 = bitcast i32 %1160 to float
  %1162 = bitcast float %1154 to i32
  %1163 = sitofp i32 %1162 to float
  %1164 = fadd fast float %1163, 0xC1CFBF8940000000
  %1165 = fmul fast float %1164, %1152
  %1166 = fadd fast float %1165, 0x41CFBF8940000000
  %1167 = fptosi float %1166 to i32
  %1168 = bitcast i32 %1167 to float
  %1169 = fmul fast float %1161, %1149
  %1170 = fmul fast float %1168, %1149
  %1171 = fsub fast float %1154, %1169
  %1172 = fadd fast float %1170, %1154
  %1173 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1174 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1175 = fsub fast float %1143, %1173
  %1176 = fsub fast float %1174, %1173
  %1177 = bitcast float %1176 to i32
  %1178 = sub nsw i32 2129859010, %1177
  %1179 = bitcast i32 %1178 to float
  %1180 = fmul fast float %1179, %1175
  %1181 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  br label %1182

; <label>:1182                                    ; preds = %1136, %1130
  %1183 = phi float [ %1181, %1136 ], [ %1131, %1130 ]
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 128
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1204, label %1188

; <label>:1188                                    ; preds = %1182
  %1189 = add i32 %45, 412
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %1191, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1193, %dx.types.Handle %81, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 524288
  %1199 = icmp ne i32 %1198, 0
  %1200 = fcmp fast ogt float %1195, 0x3FE0101020000000
  %1201 = select i1 %1200, float 1.000000e+00, float 0.000000e+00
  %1202 = select i1 %1199, float %1201, float %1195
  %1203 = fmul fast float %1202, %1183
  br label %1204

; <label>:1204                                    ; preds = %1188, %1182
  %1205 = phi float [ %1203, %1188 ], [ %1183, %1182 ]
  %1206 = fcmp fast ult float %1205, 0x3F70101020000000
  br i1 %1206, label %1749, label %1207

; <label>:1207                                    ; preds = %1204
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 16
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1410, label %1212

; <label>:1212                                    ; preds = %1207
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %45, 364
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %1217, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %80, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.ResRet.f32 %1220, 2
  %1224 = extractvalue %dx.types.ResRet.f32 %1220, 3
  %1225 = and i32 %1214, 255
  %1226 = uitofp i32 %1225 to float
  %1227 = lshr i32 %1214, 8
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1224, %1226
  %1231 = fadd fast float %1230, %1229
  %1232 = fmul fast float %1231, 0x3F70101000000000
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 512
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1245, label %1237

; <label>:1237                                    ; preds = %1212
  %1238 = add i32 %45, 444
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %1240, 0
  %1242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1242, %dx.types.Handle %81, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  br label %1245

; <label>:1245                                    ; preds = %1237, %1212
  %1246 = phi float [ %1244, %1237 ], [ 1.000000e+00, %1212 ]
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = and i32 %1248, 33554432
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1357, label %1251

; <label>:1251                                    ; preds = %1245
  %1252 = add i32 %45, 240
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 65535
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = lshr i32 %1254, 16
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = add i32 %45, 244
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = and i32 %1261, 65535
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = lshr i32 %1265, 24
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = and i32 %1265, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101020000000
  %1272 = lshr i32 %1265, 8
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101020000000
  %1276 = lshr i32 %1265, 16
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1278, 0x3F70101020000000
  %1280 = add i32 %45, 236
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 24
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F70101020000000
  %1286 = and i32 %1282, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = lshr i32 %1282, 8
  %1290 = and i32 %1289, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = lshr i32 %1282, 16
  %1294 = and i32 %1293, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = bitcast float %1221 to i32
  %1298 = ashr i32 %1297, 1
  %1299 = sub nsw i32 1597463174, %1298
  %1300 = bitcast i32 %1299 to float
  %1301 = fmul fast float %1221, 5.000000e-01
  %1302 = fmul fast float %1300, %1300
  %1303 = fmul fast float %1302, %1301
  %1304 = fsub fast float 1.500000e+00, %1303
  %1305 = fmul fast float %1300, %1221
  %1306 = fmul fast float %1305, %1304
  %1307 = bitcast float %1222 to i32
  %1308 = ashr i32 %1307, 1
  %1309 = sub nsw i32 1597463174, %1308
  %1310 = bitcast i32 %1309 to float
  %1311 = fmul fast float %1222, 5.000000e-01
  %1312 = fmul fast float %1310, %1310
  %1313 = fmul fast float %1312, %1311
  %1314 = fsub fast float 1.500000e+00, %1313
  %1315 = fmul fast float %1310, %1222
  %1316 = fmul fast float %1315, %1314
  %1317 = bitcast float %1223 to i32
  %1318 = ashr i32 %1317, 1
  %1319 = sub nsw i32 1597463174, %1318
  %1320 = bitcast i32 %1319 to float
  %1321 = fmul fast float %1223, 5.000000e-01
  %1322 = fmul fast float %1320, %1320
  %1323 = fmul fast float %1322, %1321
  %1324 = fsub fast float 1.500000e+00, %1323
  %1325 = fmul fast float %1320, %1223
  %1326 = fmul fast float %1325, %1324
  %1327 = fsub fast float %1306, %1288
  %1328 = fsub fast float %1316, %1292
  %1329 = fsub fast float %1326, %1296
  %1330 = fmul fast float %1327, %1256
  %1331 = fmul fast float %1328, %1258
  %1332 = fmul fast float %1329, %1263
  %1333 = fadd fast float %1330, %1271
  %1334 = fadd fast float %1331, %1275
  %1335 = fadd fast float %1332, %1279
  %1336 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1337 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1339 = fmul fast float %1336, %1336
  %1340 = fmul fast float %1337, %1337
  %1341 = fmul fast float %1338, %1338
  %1342 = fsub fast float %1339, %1221
  %1343 = fsub fast float %1340, %1222
  %1344 = fsub fast float %1341, %1223
  %1345 = fmul fast float %1342, %1246
  %1346 = fmul fast float %1343, %1246
  %1347 = fmul fast float %1344, %1246
  %1348 = fadd fast float %1345, %1221
  %1349 = fadd fast float %1346, %1222
  %1350 = fadd fast float %1347, %1223
  %1351 = fadd fast float %1268, %1232
  %1352 = fsub fast float %1351, %1285
  %1353 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1354 = fsub fast float %1353, %1232
  %1355 = fmul fast float %1354, %1246
  %1356 = fadd fast float %1355, %1232
  br label %1410

; <label>:1357                                    ; preds = %1245
  %1358 = and i32 %1248, 134217728
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1394, label %1360

; <label>:1360                                    ; preds = %1357
  %1361 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1362 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1363 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1364 = fadd fast float %1361, -5.000000e-01
  %1365 = fadd fast float %1362, -5.000000e-01
  %1366 = fadd fast float %1363, -5.000000e-01
  %1367 = fmul fast float %1364, %1246
  %1368 = fmul fast float %1365, %1246
  %1369 = fmul fast float %1366, %1246
  %1370 = fadd fast float %1367, 5.000000e-01
  %1371 = fadd fast float %1368, 5.000000e-01
  %1372 = fadd fast float %1369, 5.000000e-01
  %1373 = call float @dx.op.unary.f32(i32 24, float %1221)  ; Sqrt(value)
  %1374 = call float @dx.op.unary.f32(i32 24, float %1222)  ; Sqrt(value)
  %1375 = call float @dx.op.unary.f32(i32 24, float %1223)  ; Sqrt(value)
  %1376 = fmul fast float %1370, 2.000000e+00
  %1377 = fsub fast float 1.000000e+00, %1376
  %1378 = fmul fast float %1377, %1373
  %1379 = fadd fast float %1378, %1376
  %1380 = fmul fast float %1379, %1373
  %1381 = fmul fast float %1371, 2.000000e+00
  %1382 = fsub fast float 1.000000e+00, %1381
  %1383 = fmul fast float %1382, %1374
  %1384 = fadd fast float %1383, %1381
  %1385 = fmul fast float %1384, %1374
  %1386 = fmul fast float %1372, 2.000000e+00
  %1387 = fsub fast float 1.000000e+00, %1386
  %1388 = fmul fast float %1387, %1375
  %1389 = fadd fast float %1388, %1386
  %1390 = fmul fast float %1389, %1375
  %1391 = fmul fast float %1380, %1380
  %1392 = fmul fast float %1385, %1385
  %1393 = fmul fast float %1390, %1390
  br label %1410

; <label>:1394                                    ; preds = %1357
  %1395 = fmul fast float %259, %259
  %1396 = fmul fast float %263, %263
  %1397 = fmul fast float %267, %267
  %1398 = fadd fast float %1395, -1.000000e+00
  %1399 = fadd fast float %1396, -1.000000e+00
  %1400 = fadd fast float %1397, -1.000000e+00
  %1401 = fmul fast float %1246, %1398
  %1402 = fmul fast float %1246, %1399
  %1403 = fmul fast float %1246, %1400
  %1404 = fadd fast float %1401, 1.000000e+00
  %1405 = fadd fast float %1402, 1.000000e+00
  %1406 = fadd fast float %1403, 1.000000e+00
  %1407 = fmul fast float %1404, %1221
  %1408 = fmul fast float %1405, %1222
  %1409 = fmul fast float %1406, %1223
  br label %1410

; <label>:1410                                    ; preds = %1394, %1360, %1251, %1207
  %1411 = phi float [ %1356, %1251 ], [ %1232, %1360 ], [ %1232, %1394 ], [ 0x3FA23C0BE0000000, %1207 ]
  %1412 = phi float [ %1348, %1251 ], [ %1391, %1360 ], [ %1407, %1394 ], [ 1.000000e+00, %1207 ]
  %1413 = phi float [ %1349, %1251 ], [ %1392, %1360 ], [ %1408, %1394 ], [ 1.000000e+00, %1207 ]
  %1414 = phi float [ %1350, %1251 ], [ %1393, %1360 ], [ %1409, %1394 ], [ 1.000000e+00, %1207 ]
  %1415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.i32 %1415, 1
  %1417 = and i32 %1416, 1
  %1418 = icmp ne i32 %1417, 0
  %1419 = add i32 %45, 356
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 32
  %1423 = icmp ne i32 %1422, 0
  %1424 = and i1 %1418, %1423
  %1425 = select i1 %1424, float 1.000000e+00, float %1412
  %1426 = select i1 %1424, float 0x3FD3333340000000, float %1413
  %1427 = select i1 %1424, float 0x3FD3333340000000, float %1414
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = and i32 %1429, 32
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1504, label %1432

; <label>:1432                                    ; preds = %1410
  %1433 = add i32 %45, 108
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %45, 380
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %1438, 0
  %1440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1440, %dx.types.Handle %80, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = extractvalue %dx.types.ResRet.f32 %1441, 3
  %1446 = and i32 %1435, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = lshr i32 %1435, 8
  %1449 = and i32 %1448, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = lshr i32 %1435, 16
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F70101000000000
  %1455 = fmul fast float %1442, %1447
  %1456 = fadd fast float %1455, %1450
  %1457 = fmul fast float %1456, 0x3F70101000000000
  %1458 = fadd fast float %1443, -5.000000e-01
  %1459 = fadd fast float %1445, -5.000000e-01
  %1460 = fmul fast float %1458, %1454
  %1461 = fmul fast float %1459, %1454
  %1462 = fadd fast float %1460, 5.000000e-01
  %1463 = fadd fast float %1461, 5.000000e-01
  %1464 = fmul fast float %1462, 2.000000e+00
  %1465 = fadd fast float %1464, -1.000000e+00
  %1466 = fmul fast float %1463, 2.000000e+00
  %1467 = fadd fast float %1466, -1.000000e+00
  %1468 = fadd fast float %1465, %1467
  %1469 = fmul fast float %1468, 5.000000e-01
  %1470 = fsub fast float %1465, %1467
  %1471 = fmul fast float %1470, 5.000000e-01
  %1472 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = call float @dx.op.unary.f32(i32 6, float %1471)  ; FAbs(value)
  %1475 = fsub fast float %1473, %1474
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1469, float %1471, float %1475, float %1469, float %1471, float %1475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = call float @dx.op.unary.f32(i32 25, float %1476)  ; Rsqrt(value)
  %1478 = fmul fast float %1469, %1477
  %1479 = fmul fast float %1471, %1477
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 67108864
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1500, label %1484

; <label>:1484                                    ; preds = %1432
  %1485 = add i32 %45, 296
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 65535
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = lshr i32 %1487, 16
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = fsub fast float %1457, %1495
  %1497 = fmul fast float %1496, %1489
  %1498 = fadd fast float %1497, %1493
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  br label %1500

; <label>:1500                                    ; preds = %1484, %1432
  %1501 = phi float [ %1499, %1484 ], [ %1457, %1432 ]
  %1502 = call float @dx.op.dot2.f32(i32 54, float %1478, float %1479, float %921, float %922)  ; Dot2(ax,ay,bx,by)
  %1503 = call float @dx.op.dot2.f32(i32 54, float %1478, float %1479, float %923, float %924)  ; Dot2(ax,ay,bx,by)
  br label %1504

; <label>:1504                                    ; preds = %1500, %1410
  %1505 = phi float [ %1501, %1500 ], [ 0x3FD6666660000000, %1410 ]
  %1506 = phi float [ %1502, %1500 ], [ 0.000000e+00, %1410 ]
  %1507 = phi float [ %1503, %1500 ], [ 0.000000e+00, %1410 ]
  %1508 = phi float [ %1444, %1500 ], [ 1.000000e+00, %1410 ]
  %1509 = add i32 %45, 176
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = lshr i32 %1511, 22
  %1513 = shl nuw nsw i32 %1512, 5
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 64
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1552, label %1519

; <label>:1519                                    ; preds = %1504
  %1520 = add i32 %45, 396
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = add i32 %1522, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 131072
  %1528 = icmp eq i32 %1527, 0
  %1529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1524, %dx.types.Handle %80, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.ResRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.ResRet.f32 %1529, 2
  %1533 = fmul fast float %1530, %247
  %1534 = fmul fast float %1531, %250
  %1535 = fmul fast float %1532, %253
  br i1 %1528, label %1542, label %1536

; <label>:1536                                    ; preds = %1519
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = fmul fast float %1538, %1533
  %1540 = fmul fast float %1538, %1534
  %1541 = fmul fast float %1538, %1535
  br label %1542

; <label>:1542                                    ; preds = %1536, %1519
  %1543 = phi float [ %1539, %1536 ], [ %1533, %1519 ]
  %1544 = phi float [ %1540, %1536 ], [ %1534, %1519 ]
  %1545 = phi float [ %1541, %1536 ], [ %1535, %1519 ]
  %1546 = fmul fast float %1543, %1514
  %1547 = select i1 %185, float %1546, float %1543
  %1548 = call float @dx.op.dot3.f32(i32 55, float %1547, float %1544, float %1545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1549 = select i1 %185, float 0.000000e+00, float %1543
  %1550 = select i1 %185, float %1548, float %1544
  %1551 = select i1 %185, float 0.000000e+00, float %1545
  br label %1552

; <label>:1552                                    ; preds = %1542, %1504
  %1553 = phi float [ %1549, %1542 ], [ 0.000000e+00, %1504 ]
  %1554 = phi float [ %1550, %1542 ], [ 0.000000e+00, %1504 ]
  %1555 = phi float [ %1551, %1542 ], [ 0.000000e+00, %1504 ]
  %1556 = add i32 %45, 112
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 255
  %1560 = uitofp i32 %1559 to float
  %1561 = lshr i32 %1558, 8
  %1562 = and i32 %1561, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = call float @dx.op.dot3.f32(i32 55, float %1425, float %1426, float %1427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = fmul fast float %1563, %1564
  %1566 = fadd fast float %1565, %1560
  %1567 = fmul fast float %1566, 0x3F70101020000000
  %1568 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  br i1 %909, label %1569, label %1577

; <label>:1569                                    ; preds = %1552
  %1570 = fsub fast float 1.000000e+00, %1205
  %1571 = fmul fast float %1570, %897
  %1572 = fmul fast float %1570, %898
  %1573 = fmul fast float %1570, %899
  %1574 = fmul fast float %1570, %900
  %1575 = fmul fast float %1570, %901
  %1576 = fmul fast float %1570, %902
  br label %1577

; <label>:1577                                    ; preds = %1569, %1552
  %1578 = phi float [ %1571, %1569 ], [ %897, %1552 ]
  %1579 = phi float [ %1572, %1569 ], [ %898, %1552 ]
  %1580 = phi float [ %1573, %1569 ], [ %899, %1552 ]
  %1581 = phi float [ %1574, %1569 ], [ %900, %1552 ]
  %1582 = phi float [ %1575, %1569 ], [ %901, %1552 ]
  %1583 = phi float [ %1576, %1569 ], [ %902, %1552 ]
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 3
  %1587 = icmp eq i32 %1586, 3
  br i1 %1587, label %1666, label %1588

; <label>:1588                                    ; preds = %1577
  %1589 = and i32 %1585, 16
  %1590 = icmp ne i32 %1589, 0
  %1591 = select i1 %1590, float %1205, float 0.000000e+00
  %1592 = icmp eq i32 %1586, 0
  br i1 %1592, label %1593, label %1621

; <label>:1593                                    ; preds = %1588
  %1594 = and i32 %1585, 64
  %1595 = icmp ne i32 %1594, 0
  %1596 = select i1 %1595, float %1205, float 0.000000e+00
  %1597 = fsub fast float %1425, %1578
  %1598 = fsub fast float %1426, %1579
  %1599 = fsub fast float %1427, %1580
  %1600 = fmul fast float %1591, %1597
  %1601 = fmul fast float %1591, %1598
  %1602 = fmul fast float %1591, %1599
  %1603 = fadd fast float %1600, %1578
  %1604 = fadd fast float %1601, %1579
  %1605 = fadd fast float %1602, %1580
  %1606 = fsub fast float %1411, %903
  %1607 = fmul fast float %1591, %1606
  %1608 = fadd fast float %1607, %903
  %1609 = fsub fast float %1553, %1581
  %1610 = fsub fast float %1554, %1582
  %1611 = fsub fast float %1555, %1583
  %1612 = fmul fast float %1596, %1609
  %1613 = fmul fast float %1596, %1610
  %1614 = fmul fast float %1596, %1611
  %1615 = fadd fast float %1612, %1581
  %1616 = fadd fast float %1613, %1582
  %1617 = fadd fast float %1614, %1583
  %1618 = fsub fast float %1568, %907
  %1619 = fmul fast float %1591, %1618
  %1620 = fadd fast float %1619, %907
  br label %1666

; <label>:1621                                    ; preds = %1588
  %1622 = icmp eq i32 %1586, 1
  br i1 %1622, label %1623, label %1636

; <label>:1623                                    ; preds = %1621
  %1624 = fadd fast float %1425, -1.000000e+00
  %1625 = fadd fast float %1426, -1.000000e+00
  %1626 = fadd fast float %1427, -1.000000e+00
  %1627 = fmul fast float %1591, %1624
  %1628 = fmul fast float %1591, %1625
  %1629 = fmul fast float %1591, %1626
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fadd fast float %1628, 1.000000e+00
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fmul fast float %1630, %1578
  %1634 = fmul fast float %1631, %1579
  %1635 = fmul fast float %1632, %1580
  br label %1666

; <label>:1636                                    ; preds = %1621
  %1637 = icmp eq i32 %1586, 2
  br i1 %1637, label %1638, label %1666

; <label>:1638                                    ; preds = %1636
  %1639 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1640 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1641 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1642 = fadd fast float %1639, -5.000000e-01
  %1643 = fadd fast float %1640, -5.000000e-01
  %1644 = fadd fast float %1641, -5.000000e-01
  %1645 = fmul fast float %1642, %1591
  %1646 = fmul fast float %1643, %1591
  %1647 = fmul fast float %1644, %1591
  %1648 = fadd fast float %1645, 5.000000e-01
  %1649 = fadd fast float %1646, 5.000000e-01
  %1650 = fadd fast float %1647, 5.000000e-01
  %1651 = fmul fast float %1648, 2.000000e+00
  %1652 = fsub fast float 1.000000e+00, %1651
  %1653 = fmul fast float %1652, %1578
  %1654 = fadd fast float %1653, %1651
  %1655 = fmul fast float %1654, %1578
  %1656 = fmul fast float %1649, 2.000000e+00
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = fmul fast float %1657, %1579
  %1659 = fadd fast float %1658, %1656
  %1660 = fmul fast float %1659, %1579
  %1661 = fmul fast float %1650, 2.000000e+00
  %1662 = fsub fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1580
  %1664 = fadd fast float %1663, %1661
  %1665 = fmul fast float %1664, %1580
  br label %1666

; <label>:1666                                    ; preds = %1638, %1636, %1623, %1593, %1577
  %1667 = phi float [ %1578, %1577 ], [ %1655, %1638 ], [ %1578, %1636 ], [ %1633, %1623 ], [ %1603, %1593 ]
  %1668 = phi float [ %1579, %1577 ], [ %1660, %1638 ], [ %1579, %1636 ], [ %1634, %1623 ], [ %1604, %1593 ]
  %1669 = phi float [ %1580, %1577 ], [ %1665, %1638 ], [ %1580, %1636 ], [ %1635, %1623 ], [ %1605, %1593 ]
  %1670 = phi float [ %1581, %1577 ], [ %1581, %1638 ], [ %1581, %1636 ], [ %1581, %1623 ], [ %1615, %1593 ]
  %1671 = phi float [ %1582, %1577 ], [ %1582, %1638 ], [ %1582, %1636 ], [ %1582, %1623 ], [ %1616, %1593 ]
  %1672 = phi float [ %1583, %1577 ], [ %1583, %1638 ], [ %1583, %1636 ], [ %1583, %1623 ], [ %1617, %1593 ]
  %1673 = phi float [ %903, %1577 ], [ %903, %1638 ], [ %903, %1636 ], [ %903, %1623 ], [ %1608, %1593 ]
  %1674 = phi float [ %907, %1577 ], [ %907, %1638 ], [ %907, %1636 ], [ %907, %1623 ], [ %1620, %1593 ]
  %1675 = and i32 %1585, 12
  %1676 = icmp eq i32 %1675, 12
  br i1 %1676, label %1749, label %1677

; <label>:1677                                    ; preds = %1666
  %1678 = and i32 %1585, 2097184
  %1679 = icmp eq i32 %1678, 2097184
  %1680 = select i1 %1679, float %1205, float 0.000000e+00
  %1681 = and i32 %1585, 4194336
  %1682 = icmp eq i32 %1681, 4194336
  %1683 = select i1 %1682, float %1205, float 0.000000e+00
  %1684 = and i32 %1585, 8388640
  %1685 = icmp eq i32 %1684, 8388640
  %1686 = select i1 %1685, float %1205, float 0.000000e+00
  %1687 = icmp eq i32 %1675, 0
  br i1 %1687, label %1688, label %1701

; <label>:1688                                    ; preds = %1677
  %1689 = fsub fast float %1506, %895
  %1690 = fsub fast float %1507, %896
  %1691 = fmul fast float %1680, %1689
  %1692 = fmul fast float %1680, %1690
  %1693 = fadd fast float %1691, %895
  %1694 = fadd fast float %1692, %896
  %1695 = fsub fast float %1508, %906
  %1696 = fmul fast float %1683, %1695
  %1697 = fadd fast float %1696, %906
  %1698 = fsub fast float %1505, %905
  %1699 = fmul fast float %1686, %1698
  %1700 = fadd fast float %1699, %905
  br label %1749

; <label>:1701                                    ; preds = %1677
  %1702 = icmp eq i32 %1675, 4
  br i1 %1702, label %1703, label %1735

; <label>:1703                                    ; preds = %1701
  %1704 = fmul fast float %1680, %1506
  %1705 = fmul fast float %1680, %1507
  %1706 = fadd fast float %1704, %895
  %1707 = fadd fast float %1705, %896
  %1708 = call float @dx.op.binary.f32(i32 36, float %906, float %1508)  ; FMin(a,b)
  %1709 = fsub fast float %1708, %906
  %1710 = fmul fast float %1709, %1683
  %1711 = fadd fast float %1710, %906
  %1712 = fadd fast float %1505, %905
  %1713 = fmul fast float %1712, 0x3FF337FAE0000000
  %1714 = fmul fast float %905, %905
  %1715 = fmul fast float %1505, %1505
  %1716 = fadd fast float %1715, %1714
  %1717 = fmul fast float %1716, 0x3FE5152B00000000
  %1718 = fmul fast float %905, 0xBFCC1F85E0000000
  %1719 = fmul fast float %1718, %1505
  %1720 = fadd fast float %1719, 0xBFE1363700000000
  %1721 = fadd fast float %1720, %1713
  %1722 = fsub fast float %1721, %1717
  %1723 = fmul fast float %1712, 0x3FBA6F0D00000000
  %1724 = fmul fast float %1716, 0x3FD0432880000000
  %1725 = fmul fast float %905, 0xBFEF110800000000
  %1726 = fmul fast float %1725, %1505
  %1727 = fadd fast float %1726, 1.000000e+00
  %1728 = fsub fast float %1727, %1723
  %1729 = fadd fast float %1728, %1724
  %1730 = fdiv fast float %1722, %1729
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1732 = fsub fast float %1731, %905
  %1733 = fmul fast float %1732, %1686
  %1734 = fadd fast float %1733, %905
  br label %1749

; <label>:1735                                    ; preds = %1701
  %1736 = icmp eq i32 %1675, 8
  br i1 %1736, label %1737, label %1749

; <label>:1737                                    ; preds = %1735
  %1738 = fmul fast float %1680, %1506
  %1739 = fmul fast float %1680, %1507
  %1740 = fadd fast float %1738, %895
  %1741 = fadd fast float %1739, %896
  %1742 = call float @dx.op.binary.f32(i32 36, float %906, float %1508)  ; FMin(a,b)
  %1743 = fsub fast float %1742, %906
  %1744 = fmul fast float %1743, %1683
  %1745 = fadd fast float %1744, %906
  %1746 = fsub fast float %1505, %905
  %1747 = fmul fast float %1686, %1746
  %1748 = fadd fast float %1747, %905
  br label %1749

; <label>:1749                                    ; preds = %1737, %1735, %1703, %1688, %1666, %1204, %908, %894
  %1750 = phi float [ %895, %1666 ], [ %895, %1204 ], [ %895, %894 ], [ %1740, %1737 ], [ %895, %1735 ], [ %1706, %1703 ], [ %1693, %1688 ], [ %895, %908 ]
  %1751 = phi float [ %896, %1666 ], [ %896, %1204 ], [ %896, %894 ], [ %1741, %1737 ], [ %896, %1735 ], [ %1707, %1703 ], [ %1694, %1688 ], [ %896, %908 ]
  %1752 = phi float [ %1667, %1666 ], [ %897, %1204 ], [ %897, %894 ], [ %1667, %1737 ], [ %1667, %1735 ], [ %1667, %1703 ], [ %1667, %1688 ], [ %897, %908 ]
  %1753 = phi float [ %1668, %1666 ], [ %898, %1204 ], [ %898, %894 ], [ %1668, %1737 ], [ %1668, %1735 ], [ %1668, %1703 ], [ %1668, %1688 ], [ %898, %908 ]
  %1754 = phi float [ %1669, %1666 ], [ %899, %1204 ], [ %899, %894 ], [ %1669, %1737 ], [ %1669, %1735 ], [ %1669, %1703 ], [ %1669, %1688 ], [ %899, %908 ]
  %1755 = phi float [ %1670, %1666 ], [ %900, %1204 ], [ %900, %894 ], [ %1670, %1737 ], [ %1670, %1735 ], [ %1670, %1703 ], [ %1670, %1688 ], [ %900, %908 ]
  %1756 = phi float [ %1671, %1666 ], [ %901, %1204 ], [ %901, %894 ], [ %1671, %1737 ], [ %1671, %1735 ], [ %1671, %1703 ], [ %1671, %1688 ], [ %901, %908 ]
  %1757 = phi float [ %1672, %1666 ], [ %902, %1204 ], [ %902, %894 ], [ %1672, %1737 ], [ %1672, %1735 ], [ %1672, %1703 ], [ %1672, %1688 ], [ %902, %908 ]
  %1758 = phi float [ %1673, %1666 ], [ %903, %1204 ], [ %903, %894 ], [ %1673, %1737 ], [ %1673, %1735 ], [ %1673, %1703 ], [ %1673, %1688 ], [ %903, %908 ]
  %1759 = phi float [ %905, %1666 ], [ %905, %1204 ], [ %905, %894 ], [ %1748, %1737 ], [ %905, %1735 ], [ %1734, %1703 ], [ %1700, %1688 ], [ %905, %908 ]
  %1760 = phi float [ %906, %1666 ], [ %906, %1204 ], [ %906, %894 ], [ %1745, %1737 ], [ %906, %1735 ], [ %1711, %1703 ], [ %1697, %1688 ], [ %906, %908 ]
  %1761 = phi float [ %1674, %1666 ], [ %907, %1204 ], [ %907, %894 ], [ %1674, %1737 ], [ %1674, %1735 ], [ %1674, %1703 ], [ %1674, %1688 ], [ %907, %908 ]
  br i1 %374, label %2603, label %1762

; <label>:1762                                    ; preds = %1749
  %1763 = icmp ult i32 %427, 3
  %1764 = add i32 %45, 56
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = add i32 %45, 60
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = or i32 %1769, %1766
  %1771 = icmp eq i32 %1770, 0
  br i1 %1771, label %2603, label %1772

; <label>:1772                                    ; preds = %1762
  %1773 = and i32 %1766, 262144
  %1774 = icmp ne i32 %1773, 0
  %1775 = select i1 %1774, float %47, float 1.000000e+00
  %1776 = select i1 %1774, float %48, float 0.000000e+00
  %1777 = select i1 %1774, float %49, float 0.000000e+00
  %1778 = select i1 %1774, float %50, float 1.000000e+00
  %1779 = select i1 %1774, float %51, float %72
  %1780 = select i1 %1774, float %52, float %73
  %1781 = add i32 %45, 316
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = lshr i32 %1783, 16
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = fmul fast float %1785, 0x3F50624DE0000000
  %1787 = add i32 %45, 120
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 16
  %1791 = and i32 %1790, 255
  %1792 = lshr i32 %1789, 24
  %1793 = add i32 %45, 324
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 65535
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = lshr i32 %1795, 16
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = add i32 %45, 64
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = lshr i32 %1802, 22
  %1804 = shl nuw nsw i32 %1803, 5
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = shl i32 %1802, 4
  %1807 = and i32 %1806, 32752
  %1808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1807)  ; LegacyF16ToF32(value)
  %1809 = lshr i32 %1802, 7
  %1810 = and i32 %1809, 32752
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 3
  %1814 = fmul fast float %1813, 1.000000e+03
  %1815 = fmul fast float %324, %1814
  %1816 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1817 = fadd fast float %1816, %314
  %1818 = fmul fast float %325, %1814
  %1819 = call float @dx.op.unary.f32(i32 22, float %1818)  ; Frc(value)
  %1820 = fadd fast float %1819, %316
  %1821 = fmul fast float %1786, %1814
  %1822 = call float @dx.op.unary.f32(i32 22, float %1821)  ; Frc(value)
  %1823 = fmul fast float %1822, 0x401921FB60000000
  %1824 = fadd fast float %1823, %1805
  %1825 = call float @dx.op.unary.f32(i32 13, float %1824)  ; Sin(value)
  %1826 = call float @dx.op.unary.f32(i32 12, float %1824)  ; Cos(value)
  %1827 = fsub fast float -0.000000e+00, %1825
  %1828 = fadd fast float %1779, -5.000000e-01
  %1829 = fadd fast float %1780, -5.000000e-01
  %1830 = fmul fast float %1797, %1828
  %1831 = fmul fast float %1799, %1829
  %1832 = fadd fast float %1830, 5.000000e-01
  %1833 = fadd fast float %1831, 5.000000e-01
  %1834 = fmul fast float %1808, %1832
  %1835 = fmul fast float %1811, %1833
  %1836 = fmul fast float %1826, %1834
  %1837 = call float @dx.op.tertiary.f32(i32 46, float %1827, float %1835, float %1836)  ; FMad(a,b,c)
  %1838 = fmul fast float %1825, %1834
  %1839 = call float @dx.op.tertiary.f32(i32 46, float %1826, float %1835, float %1838)  ; FMad(a,b,c)
  %1840 = fadd fast float %1817, %1837
  %1841 = fadd fast float %1820, %1839
  %1842 = icmp ugt i32 %1791, 1
  %1843 = icmp ugt i32 %1789, 33554431
  %1844 = or i1 %1843, %1842
  br i1 %1844, label %1845, label %1870

; <label>:1845                                    ; preds = %1772
  %1846 = add i32 %45, 260
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = lshr i32 %1848, 16
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = fmul fast float %1813, %1850
  %1852 = call float @dx.op.unary.f32(i32 22, float %1851)  ; Frc(value)
  %1853 = mul nuw nsw i32 %1791, %1792
  %1854 = uitofp i32 %1853 to float
  %1855 = fmul fast float %1852, %1854
  %1856 = call float @dx.op.unary.f32(i32 27, float %1855)  ; Round_ni(value)
  %1857 = fptoui float %1856 to i32
  %1858 = urem i32 %1857, %1791
  %1859 = udiv i32 %1857, %1792
  %1860 = call float @dx.op.unary.f32(i32 22, float %1840)  ; Frc(value)
  %1861 = call float @dx.op.unary.f32(i32 22, float %1841)  ; Frc(value)
  %1862 = uitofp i32 %1858 to float
  %1863 = uitofp i32 %1859 to float
  %1864 = fadd fast float %1860, %1862
  %1865 = fadd fast float %1861, %1863
  %1866 = uitofp i32 %1791 to float
  %1867 = uitofp i32 %1792 to float
  %1868 = fdiv fast float %1864, %1866
  %1869 = fdiv fast float %1865, %1867
  br label %1870

; <label>:1870                                    ; preds = %1845, %1772
  %1871 = phi float [ %1868, %1845 ], [ %1840, %1772 ]
  %1872 = phi float [ %1869, %1845 ], [ %1841, %1772 ]
  %1873 = and i32 %1766, 16777216
  %1874 = icmp eq i32 %1873, 0
  br i1 %1874, label %1984, label %1875

; <label>:1875                                    ; preds = %1870
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.CBufRet.f32 %1876, 2
  %1880 = fadd fast float %1877, %143
  %1881 = fadd fast float %1878, %144
  %1882 = fadd fast float %1879, %145
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1886 = icmp eq i32 %46, 65535
  br i1 %1886, label %1981, label %1887

; <label>:1887                                    ; preds = %1875
  %1888 = lshr i32 %46, 1
  %1889 = shl i32 %1888, 2
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = and i32 %46, 1
  %1893 = icmp ne i32 %1892, 0
  %1894 = lshr i32 %1891, 16
  %1895 = and i32 %1891, 65535
  %1896 = select i1 %1893, i32 %1894, i32 %1895
  %1897 = icmp eq i32 %1896, 65535
  br i1 %1897, label %1977, label %1898

; <label>:1898                                    ; preds = %1887
  %1899 = mul nuw nsw i32 %1896, 40
  %1900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = add nuw nsw i32 %1899, 12
  %1905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = add nuw nsw i32 %1899, 24
  %1910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.ResRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.ResRet.f32 %1910, 2
  %1914 = add nuw nsw i32 %1899, 36
  %1915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = fsub fast float %1880, %1901
  %1918 = fsub fast float %1881, %1902
  %1919 = fsub fast float %1882, %1903
  %1920 = fmul fast float %1916, %1917
  %1921 = fmul fast float %1916, %1918
  %1922 = fmul fast float %1916, %1919
  %1923 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = fadd fast float %1924, 5.000000e-01
  %1928 = fadd fast float %1925, 5.000000e-01
  %1929 = fmul fast float %1926, %1906
  %1930 = fmul fast float %1927, %1907
  %1931 = fmul fast float %1928, %1908
  %1932 = shl i32 %46, 2
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = add i32 %1934, 0
  %1936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1937 = call float @dx.op.unary.f32(i32 22, float %1929)  ; Frc(value)
  %1938 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1939 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1936, %dx.types.Handle %40, float %1937, float %1938, float %1939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.ResRet.f32 %1940, 1
  %1943 = extractvalue %dx.types.ResRet.f32 %1940, 2
  %1944 = fmul fast float %1941, 1.023000e+03
  %1945 = fmul fast float %1942, 1.023000e+03
  %1946 = fmul fast float %1943, 1.023000e+03
  %1947 = fadd fast float %1944, 5.000000e-01
  %1948 = fadd fast float %1945, 5.000000e-01
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = call float @dx.op.unary.f32(i32 27, float %1947)  ; Round_ni(value)
  %1951 = call float @dx.op.unary.f32(i32 27, float %1948)  ; Round_ni(value)
  %1952 = call float @dx.op.unary.f32(i32 27, float %1949)  ; Round_ni(value)
  %1953 = fsub fast float %1920, %1923
  %1954 = fsub fast float %1921, %1924
  %1955 = fsub fast float %1922, %1925
  %1956 = fmul fast float %1953, 7.500000e-01
  %1957 = fmul fast float %1954, 7.500000e-01
  %1958 = fmul fast float %1955, 7.500000e-01
  %1959 = fadd fast float %1923, 1.250000e-01
  %1960 = fadd fast float %1959, %1956
  %1961 = fadd fast float %1960, %1950
  %1962 = fadd fast float %1924, 1.250000e-01
  %1963 = fadd fast float %1962, %1957
  %1964 = fadd fast float %1963, %1951
  %1965 = fadd fast float %1925, 1.250000e-01
  %1966 = fadd fast float %1965, %1958
  %1967 = fadd fast float %1966, %1952
  %1968 = fmul fast float %1961, %1911
  %1969 = fmul fast float %1964, %1912
  %1970 = fmul fast float %1967, %1913
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = add i32 %1972, 0
  %1974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1974, %dx.types.Handle %38, float %1968, float %1969, float %1970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  br label %1977

; <label>:1977                                    ; preds = %1898, %1887
  %1978 = phi float [ %1976, %1898 ], [ -1.000000e+00, %1887 ]
  %1979 = fadd fast float %1978, %1885
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  br label %1981

; <label>:1981                                    ; preds = %1977, %1875
  %1982 = phi float [ %1980, %1977 ], [ %1885, %1875 ]
  %1983 = fmul fast float %1982, %423
  br label %1984

; <label>:1984                                    ; preds = %1981, %1870
  %1985 = phi float [ %1983, %1981 ], [ %423, %1870 ]
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = and i32 %1987, 256
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %2036, label %1990

; <label>:1990                                    ; preds = %1984
  %1991 = add i32 %45, 432
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = add i32 %1993, 0
  %1995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1995, %dx.types.Handle %81, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = add i32 %45, 132
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = shl i32 %2000, 4
  %2002 = and i32 %2001, 32752
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = lshr i32 %2000, 7
  %2005 = and i32 %2004, 32752
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = fsub fast float 1.000000e+00, %1985
  %2008 = call float @dx.op.binary.f32(i32 35, float %2007, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2009 = bitcast float %1985 to i32
  %2010 = sitofp i32 %2009 to float
  %2011 = fadd fast float %2010, 0xC1CFBF8940000000
  %2012 = fmul fast float %2006, %2011
  %2013 = fadd fast float %2012, 0x41CFBF8940000000
  %2014 = fptosi float %2013 to i32
  %2015 = bitcast i32 %2014 to float
  %2016 = bitcast float %2008 to i32
  %2017 = sitofp i32 %2016 to float
  %2018 = fadd fast float %2017, 0xC1CFBF8940000000
  %2019 = fmul fast float %2018, %2006
  %2020 = fadd fast float %2019, 0x41CFBF8940000000
  %2021 = fptosi float %2020 to i32
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2015, %2003
  %2024 = fmul fast float %2022, %2003
  %2025 = fsub fast float %2008, %2023
  %2026 = fadd fast float %2024, %2008
  %2027 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2028 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2029 = fsub fast float %1997, %2027
  %2030 = fsub fast float %2028, %2027
  %2031 = bitcast float %2030 to i32
  %2032 = sub nsw i32 2129859010, %2031
  %2033 = bitcast i32 %2032 to float
  %2034 = fmul fast float %2033, %2029
  %2035 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  br label %2036

; <label>:2036                                    ; preds = %1990, %1984
  %2037 = phi float [ %2035, %1990 ], [ %1985, %1984 ]
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %2039, 128
  %2041 = icmp eq i32 %2040, 0
  br i1 %2041, label %2058, label %2042

; <label>:2042                                    ; preds = %2036
  %2043 = add i32 %45, 416
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %2045, 0
  %2047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2047, %dx.types.Handle %81, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = and i32 %2051, 524288
  %2053 = icmp ne i32 %2052, 0
  %2054 = fcmp fast ogt float %2049, 0x3FE0101020000000
  %2055 = select i1 %2054, float 1.000000e+00, float 0.000000e+00
  %2056 = select i1 %2053, float %2055, float %2049
  %2057 = fmul fast float %2056, %2037
  br label %2058

; <label>:2058                                    ; preds = %2042, %2036
  %2059 = phi float [ %2057, %2042 ], [ %2037, %2036 ]
  %2060 = fcmp fast ult float %2059, 0x3F70101020000000
  br i1 %2060, label %2603, label %2061

; <label>:2061                                    ; preds = %2058
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 16
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2264, label %2066

; <label>:2066                                    ; preds = %2061
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %45, 368
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = add i32 %2071, 0
  %2073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2073, %dx.types.Handle %80, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.f32 %2074, 1
  %2077 = extractvalue %dx.types.ResRet.f32 %2074, 2
  %2078 = extractvalue %dx.types.ResRet.f32 %2074, 3
  %2079 = and i32 %2068, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = lshr i32 %2068, 8
  %2082 = and i32 %2081, 255
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2078, %2080
  %2085 = fadd fast float %2084, %2083
  %2086 = fmul fast float %2085, 0x3F70101000000000
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 512
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %2099, label %2091

; <label>:2091                                    ; preds = %2066
  %2092 = add i32 %45, 448
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = add i32 %2094, 0
  %2096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2096, %dx.types.Handle %81, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  br label %2099

; <label>:2099                                    ; preds = %2091, %2066
  %2100 = phi float [ %2098, %2091 ], [ 1.000000e+00, %2066 ]
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = and i32 %2102, 33554432
  %2104 = icmp eq i32 %2103, 0
  br i1 %2104, label %2211, label %2105

; <label>:2105                                    ; preds = %2099
  %2106 = add i32 %45, 256
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = and i32 %2108, 65535
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = lshr i32 %2108, 16
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = add i32 %45, 260
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = and i32 %2115, 65535
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = lshr i32 %2119, 24
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = and i32 %2119, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = lshr i32 %2119, 8
  %2127 = and i32 %2126, 255
  %2128 = uitofp i32 %2127 to float
  %2129 = fmul fast float %2128, 0x3F70101020000000
  %2130 = lshr i32 %2119, 16
  %2131 = and i32 %2130, 255
  %2132 = uitofp i32 %2131 to float
  %2133 = fmul fast float %2132, 0x3F70101020000000
  %2134 = add i32 %45, 252
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = lshr i32 %2136, 24
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2138, 0x3F70101020000000
  %2140 = and i32 %2136, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = fmul fast float %2141, 0x3F70101020000000
  %2143 = lshr i32 %2136, 8
  %2144 = and i32 %2143, 255
  %2145 = uitofp i32 %2144 to float
  %2146 = fmul fast float %2145, 0x3F70101020000000
  %2147 = lshr i32 %2136, 16
  %2148 = and i32 %2147, 255
  %2149 = uitofp i32 %2148 to float
  %2150 = fmul fast float %2149, 0x3F70101020000000
  %2151 = bitcast float %2075 to i32
  %2152 = ashr i32 %2151, 1
  %2153 = sub nsw i32 1597463174, %2152
  %2154 = bitcast i32 %2153 to float
  %2155 = fmul fast float %2075, 5.000000e-01
  %2156 = fmul fast float %2154, %2154
  %2157 = fmul fast float %2156, %2155
  %2158 = fsub fast float 1.500000e+00, %2157
  %2159 = fmul fast float %2154, %2075
  %2160 = fmul fast float %2159, %2158
  %2161 = bitcast float %2076 to i32
  %2162 = ashr i32 %2161, 1
  %2163 = sub nsw i32 1597463174, %2162
  %2164 = bitcast i32 %2163 to float
  %2165 = fmul fast float %2076, 5.000000e-01
  %2166 = fmul fast float %2164, %2164
  %2167 = fmul fast float %2166, %2165
  %2168 = fsub fast float 1.500000e+00, %2167
  %2169 = fmul fast float %2164, %2076
  %2170 = fmul fast float %2169, %2168
  %2171 = bitcast float %2077 to i32
  %2172 = ashr i32 %2171, 1
  %2173 = sub nsw i32 1597463174, %2172
  %2174 = bitcast i32 %2173 to float
  %2175 = fmul fast float %2077, 5.000000e-01
  %2176 = fmul fast float %2174, %2174
  %2177 = fmul fast float %2176, %2175
  %2178 = fsub fast float 1.500000e+00, %2177
  %2179 = fmul fast float %2174, %2077
  %2180 = fmul fast float %2179, %2178
  %2181 = fsub fast float %2160, %2142
  %2182 = fsub fast float %2170, %2146
  %2183 = fsub fast float %2180, %2150
  %2184 = fmul fast float %2181, %2110
  %2185 = fmul fast float %2182, %2112
  %2186 = fmul fast float %2183, %2117
  %2187 = fadd fast float %2184, %2125
  %2188 = fadd fast float %2185, %2129
  %2189 = fadd fast float %2186, %2133
  %2190 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2191 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2192 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2193 = fmul fast float %2190, %2190
  %2194 = fmul fast float %2191, %2191
  %2195 = fmul fast float %2192, %2192
  %2196 = fsub fast float %2193, %2075
  %2197 = fsub fast float %2194, %2076
  %2198 = fsub fast float %2195, %2077
  %2199 = fmul fast float %2196, %2100
  %2200 = fmul fast float %2197, %2100
  %2201 = fmul fast float %2198, %2100
  %2202 = fadd fast float %2199, %2075
  %2203 = fadd fast float %2200, %2076
  %2204 = fadd fast float %2201, %2077
  %2205 = fadd fast float %2122, %2086
  %2206 = fsub fast float %2205, %2139
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2208 = fsub fast float %2207, %2086
  %2209 = fmul fast float %2208, %2100
  %2210 = fadd fast float %2209, %2086
  br label %2264

; <label>:2211                                    ; preds = %2099
  %2212 = and i32 %2102, 134217728
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2248, label %2214

; <label>:2214                                    ; preds = %2211
  %2215 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2216 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2217 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %2218 = fadd fast float %2215, -5.000000e-01
  %2219 = fadd fast float %2216, -5.000000e-01
  %2220 = fadd fast float %2217, -5.000000e-01
  %2221 = fmul fast float %2218, %2100
  %2222 = fmul fast float %2219, %2100
  %2223 = fmul fast float %2220, %2100
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = fadd fast float %2222, 5.000000e-01
  %2226 = fadd fast float %2223, 5.000000e-01
  %2227 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2228 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2229 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2230 = fmul fast float %2224, 2.000000e+00
  %2231 = fsub fast float 1.000000e+00, %2230
  %2232 = fmul fast float %2231, %2227
  %2233 = fadd fast float %2232, %2230
  %2234 = fmul fast float %2233, %2227
  %2235 = fmul fast float %2225, 2.000000e+00
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = fmul fast float %2236, %2228
  %2238 = fadd fast float %2237, %2235
  %2239 = fmul fast float %2238, %2228
  %2240 = fmul fast float %2226, 2.000000e+00
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = fmul fast float %2241, %2229
  %2243 = fadd fast float %2242, %2240
  %2244 = fmul fast float %2243, %2229
  %2245 = fmul fast float %2234, %2234
  %2246 = fmul fast float %2239, %2239
  %2247 = fmul fast float %2244, %2244
  br label %2264

; <label>:2248                                    ; preds = %2211
  %2249 = fmul fast float %301, %301
  %2250 = fmul fast float %305, %305
  %2251 = fmul fast float %309, %309
  %2252 = fadd fast float %2249, -1.000000e+00
  %2253 = fadd fast float %2250, -1.000000e+00
  %2254 = fadd fast float %2251, -1.000000e+00
  %2255 = fmul fast float %2100, %2252
  %2256 = fmul fast float %2100, %2253
  %2257 = fmul fast float %2100, %2254
  %2258 = fadd fast float %2255, 1.000000e+00
  %2259 = fadd fast float %2256, 1.000000e+00
  %2260 = fadd fast float %2257, 1.000000e+00
  %2261 = fmul fast float %2258, %2075
  %2262 = fmul fast float %2259, %2076
  %2263 = fmul fast float %2260, %2077
  br label %2264

; <label>:2264                                    ; preds = %2248, %2214, %2105, %2061
  %2265 = phi float [ %2210, %2105 ], [ %2086, %2214 ], [ %2086, %2248 ], [ 0x3FA23C0BE0000000, %2061 ]
  %2266 = phi float [ %2202, %2105 ], [ %2245, %2214 ], [ %2261, %2248 ], [ 1.000000e+00, %2061 ]
  %2267 = phi float [ %2203, %2105 ], [ %2246, %2214 ], [ %2262, %2248 ], [ 1.000000e+00, %2061 ]
  %2268 = phi float [ %2204, %2105 ], [ %2247, %2214 ], [ %2263, %2248 ], [ 1.000000e+00, %2061 ]
  %2269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.i32 %2269, 1
  %2271 = and i32 %2270, 1
  %2272 = icmp ne i32 %2271, 0
  %2273 = add i32 %45, 356
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 32
  %2277 = icmp ne i32 %2276, 0
  %2278 = and i1 %2272, %2277
  %2279 = select i1 %2278, float 1.000000e+00, float %2266
  %2280 = select i1 %2278, float 0x3FD3333340000000, float %2267
  %2281 = select i1 %2278, float 0x3FD3333340000000, float %2268
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 32
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2358, label %2286

; <label>:2286                                    ; preds = %2264
  %2287 = add i32 %45, 124
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = add i32 %45, 384
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = add i32 %2292, 0
  %2294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2293, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2295 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2294, %dx.types.Handle %80, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2296 = extractvalue %dx.types.ResRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.ResRet.f32 %2295, 1
  %2298 = extractvalue %dx.types.ResRet.f32 %2295, 2
  %2299 = extractvalue %dx.types.ResRet.f32 %2295, 3
  %2300 = and i32 %2289, 255
  %2301 = uitofp i32 %2300 to float
  %2302 = lshr i32 %2289, 8
  %2303 = and i32 %2302, 255
  %2304 = uitofp i32 %2303 to float
  %2305 = lshr i32 %2289, 16
  %2306 = and i32 %2305, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = fmul fast float %2307, 0x3F70101000000000
  %2309 = fmul fast float %2296, %2301
  %2310 = fadd fast float %2309, %2304
  %2311 = fmul fast float %2310, 0x3F70101000000000
  %2312 = fadd fast float %2297, -5.000000e-01
  %2313 = fadd fast float %2299, -5.000000e-01
  %2314 = fmul fast float %2312, %2308
  %2315 = fmul fast float %2313, %2308
  %2316 = fadd fast float %2314, 5.000000e-01
  %2317 = fadd fast float %2315, 5.000000e-01
  %2318 = fmul fast float %2316, 2.000000e+00
  %2319 = fadd fast float %2318, -1.000000e+00
  %2320 = fmul fast float %2317, 2.000000e+00
  %2321 = fadd fast float %2320, -1.000000e+00
  %2322 = fadd fast float %2319, %2321
  %2323 = fmul fast float %2322, 5.000000e-01
  %2324 = fsub fast float %2319, %2321
  %2325 = fmul fast float %2324, 5.000000e-01
  %2326 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2327 = fsub fast float 1.000000e+00, %2326
  %2328 = call float @dx.op.unary.f32(i32 6, float %2325)  ; FAbs(value)
  %2329 = fsub fast float %2327, %2328
  %2330 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2325, float %2329, float %2323, float %2325, float %2329)  ; Dot3(ax,ay,az,bx,by,bz)
  %2331 = call float @dx.op.unary.f32(i32 25, float %2330)  ; Rsqrt(value)
  %2332 = fmul fast float %2323, %2331
  %2333 = fmul fast float %2325, %2331
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 67108864
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2354, label %2338

; <label>:2338                                    ; preds = %2286
  %2339 = add i32 %45, 312
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = lshr i32 %2341, 16
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = fsub fast float %2311, %2349
  %2351 = fmul fast float %2350, %2343
  %2352 = fadd fast float %2351, %2347
  %2353 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  br label %2354

; <label>:2354                                    ; preds = %2338, %2286
  %2355 = phi float [ %2353, %2338 ], [ %2311, %2286 ]
  %2356 = call float @dx.op.dot2.f32(i32 54, float %2332, float %2333, float %1775, float %1776)  ; Dot2(ax,ay,bx,by)
  %2357 = call float @dx.op.dot2.f32(i32 54, float %2332, float %2333, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  br label %2358

; <label>:2358                                    ; preds = %2354, %2264
  %2359 = phi float [ %2355, %2354 ], [ 0x3FD6666660000000, %2264 ]
  %2360 = phi float [ %2356, %2354 ], [ 0.000000e+00, %2264 ]
  %2361 = phi float [ %2357, %2354 ], [ 0.000000e+00, %2264 ]
  %2362 = phi float [ %2298, %2354 ], [ 1.000000e+00, %2264 ]
  %2363 = add i32 %45, 192
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 22
  %2367 = shl nuw nsw i32 %2366, 5
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 64
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2406, label %2373

; <label>:2373                                    ; preds = %2358
  %2374 = add i32 %45, 400
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = add i32 %2376, 0
  %2378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 131072
  %2382 = icmp eq i32 %2381, 0
  %2383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2378, %dx.types.Handle %80, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.ResRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.ResRet.f32 %2383, 2
  %2387 = fmul fast float %2384, %289
  %2388 = fmul fast float %2385, %292
  %2389 = fmul fast float %2386, %295
  br i1 %2382, label %2396, label %2390

; <label>:2390                                    ; preds = %2373
  %2391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2391, 0
  %2393 = fmul fast float %2392, %2387
  %2394 = fmul fast float %2392, %2388
  %2395 = fmul fast float %2392, %2389
  br label %2396

; <label>:2396                                    ; preds = %2390, %2373
  %2397 = phi float [ %2393, %2390 ], [ %2387, %2373 ]
  %2398 = phi float [ %2394, %2390 ], [ %2388, %2373 ]
  %2399 = phi float [ %2395, %2390 ], [ %2389, %2373 ]
  %2400 = fmul fast float %2397, %2368
  %2401 = select i1 %185, float %2400, float %2397
  %2402 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2398, float %2399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2403 = select i1 %185, float 0.000000e+00, float %2397
  %2404 = select i1 %185, float %2402, float %2398
  %2405 = select i1 %185, float 0.000000e+00, float %2399
  br label %2406

; <label>:2406                                    ; preds = %2396, %2358
  %2407 = phi float [ %2403, %2396 ], [ 0.000000e+00, %2358 ]
  %2408 = phi float [ %2404, %2396 ], [ 0.000000e+00, %2358 ]
  %2409 = phi float [ %2405, %2396 ], [ 0.000000e+00, %2358 ]
  %2410 = add i32 %45, 128
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = lshr i32 %2412, 8
  %2416 = and i32 %2415, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = call float @dx.op.dot3.f32(i32 55, float %2279, float %2280, float %2281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2419 = fmul fast float %2417, %2418
  %2420 = fadd fast float %2419, %2414
  %2421 = fmul fast float %2420, 0x3F70101020000000
  %2422 = call float @dx.op.unary.f32(i32 7, float %2421)  ; Saturate(value)
  br i1 %1763, label %2423, label %2431

; <label>:2423                                    ; preds = %2406
  %2424 = fsub fast float 1.000000e+00, %2059
  %2425 = fmul fast float %2424, %1752
  %2426 = fmul fast float %2424, %1753
  %2427 = fmul fast float %2424, %1754
  %2428 = fmul fast float %2424, %1755
  %2429 = fmul fast float %2424, %1756
  %2430 = fmul fast float %2424, %1757
  br label %2431

; <label>:2431                                    ; preds = %2423, %2406
  %2432 = phi float [ %2425, %2423 ], [ %1752, %2406 ]
  %2433 = phi float [ %2426, %2423 ], [ %1753, %2406 ]
  %2434 = phi float [ %2427, %2423 ], [ %1754, %2406 ]
  %2435 = phi float [ %2428, %2423 ], [ %1755, %2406 ]
  %2436 = phi float [ %2429, %2423 ], [ %1756, %2406 ]
  %2437 = phi float [ %2430, %2423 ], [ %1757, %2406 ]
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = and i32 %2439, 3
  %2441 = icmp eq i32 %2440, 3
  br i1 %2441, label %2520, label %2442

; <label>:2442                                    ; preds = %2431
  %2443 = and i32 %2439, 16
  %2444 = icmp ne i32 %2443, 0
  %2445 = select i1 %2444, float %2059, float 0.000000e+00
  %2446 = icmp eq i32 %2440, 0
  br i1 %2446, label %2447, label %2475

; <label>:2447                                    ; preds = %2442
  %2448 = and i32 %2439, 64
  %2449 = icmp ne i32 %2448, 0
  %2450 = select i1 %2449, float %2059, float 0.000000e+00
  %2451 = fsub fast float %2279, %2432
  %2452 = fsub fast float %2280, %2433
  %2453 = fsub fast float %2281, %2434
  %2454 = fmul fast float %2445, %2451
  %2455 = fmul fast float %2445, %2452
  %2456 = fmul fast float %2445, %2453
  %2457 = fadd fast float %2454, %2432
  %2458 = fadd fast float %2455, %2433
  %2459 = fadd fast float %2456, %2434
  %2460 = fsub fast float %2265, %1758
  %2461 = fmul fast float %2445, %2460
  %2462 = fadd fast float %2461, %1758
  %2463 = fsub fast float %2407, %2435
  %2464 = fsub fast float %2408, %2436
  %2465 = fsub fast float %2409, %2437
  %2466 = fmul fast float %2450, %2463
  %2467 = fmul fast float %2450, %2464
  %2468 = fmul fast float %2450, %2465
  %2469 = fadd fast float %2466, %2435
  %2470 = fadd fast float %2467, %2436
  %2471 = fadd fast float %2468, %2437
  %2472 = fsub fast float %2422, %1761
  %2473 = fmul fast float %2445, %2472
  %2474 = fadd fast float %2473, %1761
  br label %2520

; <label>:2475                                    ; preds = %2442
  %2476 = icmp eq i32 %2440, 1
  br i1 %2476, label %2477, label %2490

; <label>:2477                                    ; preds = %2475
  %2478 = fadd fast float %2279, -1.000000e+00
  %2479 = fadd fast float %2280, -1.000000e+00
  %2480 = fadd fast float %2281, -1.000000e+00
  %2481 = fmul fast float %2445, %2478
  %2482 = fmul fast float %2445, %2479
  %2483 = fmul fast float %2445, %2480
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fmul fast float %2484, %2432
  %2488 = fmul fast float %2485, %2433
  %2489 = fmul fast float %2486, %2434
  br label %2520

; <label>:2490                                    ; preds = %2475
  %2491 = icmp eq i32 %2440, 2
  br i1 %2491, label %2492, label %2520

; <label>:2492                                    ; preds = %2490
  %2493 = call float @dx.op.unary.f32(i32 24, float %2279)  ; Sqrt(value)
  %2494 = call float @dx.op.unary.f32(i32 24, float %2280)  ; Sqrt(value)
  %2495 = call float @dx.op.unary.f32(i32 24, float %2281)  ; Sqrt(value)
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fadd fast float %2494, -5.000000e-01
  %2498 = fadd fast float %2495, -5.000000e-01
  %2499 = fmul fast float %2496, %2445
  %2500 = fmul fast float %2497, %2445
  %2501 = fmul fast float %2498, %2445
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = fmul fast float %2502, 2.000000e+00
  %2506 = fsub fast float 1.000000e+00, %2505
  %2507 = fmul fast float %2506, %2432
  %2508 = fadd fast float %2507, %2505
  %2509 = fmul fast float %2508, %2432
  %2510 = fmul fast float %2503, 2.000000e+00
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = fmul fast float %2511, %2433
  %2513 = fadd fast float %2512, %2510
  %2514 = fmul fast float %2513, %2433
  %2515 = fmul fast float %2504, 2.000000e+00
  %2516 = fsub fast float 1.000000e+00, %2515
  %2517 = fmul fast float %2516, %2434
  %2518 = fadd fast float %2517, %2515
  %2519 = fmul fast float %2518, %2434
  br label %2520

; <label>:2520                                    ; preds = %2492, %2490, %2477, %2447, %2431
  %2521 = phi float [ %2432, %2431 ], [ %2509, %2492 ], [ %2432, %2490 ], [ %2487, %2477 ], [ %2457, %2447 ]
  %2522 = phi float [ %2433, %2431 ], [ %2514, %2492 ], [ %2433, %2490 ], [ %2488, %2477 ], [ %2458, %2447 ]
  %2523 = phi float [ %2434, %2431 ], [ %2519, %2492 ], [ %2434, %2490 ], [ %2489, %2477 ], [ %2459, %2447 ]
  %2524 = phi float [ %2435, %2431 ], [ %2435, %2492 ], [ %2435, %2490 ], [ %2435, %2477 ], [ %2469, %2447 ]
  %2525 = phi float [ %2436, %2431 ], [ %2436, %2492 ], [ %2436, %2490 ], [ %2436, %2477 ], [ %2470, %2447 ]
  %2526 = phi float [ %2437, %2431 ], [ %2437, %2492 ], [ %2437, %2490 ], [ %2437, %2477 ], [ %2471, %2447 ]
  %2527 = phi float [ %1758, %2431 ], [ %1758, %2492 ], [ %1758, %2490 ], [ %1758, %2477 ], [ %2462, %2447 ]
  %2528 = phi float [ %1761, %2431 ], [ %1761, %2492 ], [ %1761, %2490 ], [ %1761, %2477 ], [ %2474, %2447 ]
  %2529 = and i32 %2439, 12
  %2530 = icmp eq i32 %2529, 12
  br i1 %2530, label %2603, label %2531

; <label>:2531                                    ; preds = %2520
  %2532 = and i32 %2439, 2097184
  %2533 = icmp eq i32 %2532, 2097184
  %2534 = select i1 %2533, float %2059, float 0.000000e+00
  %2535 = and i32 %2439, 4194336
  %2536 = icmp eq i32 %2535, 4194336
  %2537 = select i1 %2536, float %2059, float 0.000000e+00
  %2538 = and i32 %2439, 8388640
  %2539 = icmp eq i32 %2538, 8388640
  %2540 = select i1 %2539, float %2059, float 0.000000e+00
  %2541 = icmp eq i32 %2529, 0
  br i1 %2541, label %2542, label %2555

; <label>:2542                                    ; preds = %2531
  %2543 = fsub fast float %2360, %1750
  %2544 = fsub fast float %2361, %1751
  %2545 = fmul fast float %2534, %2543
  %2546 = fmul fast float %2534, %2544
  %2547 = fadd fast float %2545, %1750
  %2548 = fadd fast float %2546, %1751
  %2549 = fsub fast float %2362, %1760
  %2550 = fmul fast float %2537, %2549
  %2551 = fadd fast float %2550, %1760
  %2552 = fsub fast float %2359, %1759
  %2553 = fmul fast float %2540, %2552
  %2554 = fadd fast float %2553, %1759
  br label %2603

; <label>:2555                                    ; preds = %2531
  %2556 = icmp eq i32 %2529, 4
  br i1 %2556, label %2557, label %2589

; <label>:2557                                    ; preds = %2555
  %2558 = fmul fast float %2534, %2360
  %2559 = fmul fast float %2534, %2361
  %2560 = fadd fast float %2558, %1750
  %2561 = fadd fast float %2559, %1751
  %2562 = call float @dx.op.binary.f32(i32 36, float %1760, float %2362)  ; FMin(a,b)
  %2563 = fsub fast float %2562, %1760
  %2564 = fmul fast float %2563, %2537
  %2565 = fadd fast float %2564, %1760
  %2566 = fadd fast float %2359, %1759
  %2567 = fmul fast float %2566, 0x3FF337FAE0000000
  %2568 = fmul fast float %1759, %1759
  %2569 = fmul fast float %2359, %2359
  %2570 = fadd fast float %2569, %2568
  %2571 = fmul fast float %2570, 0x3FE5152B00000000
  %2572 = fmul fast float %1759, 0xBFCC1F85E0000000
  %2573 = fmul fast float %2572, %2359
  %2574 = fadd fast float %2573, 0xBFE1363700000000
  %2575 = fadd fast float %2574, %2567
  %2576 = fsub fast float %2575, %2571
  %2577 = fmul fast float %2566, 0x3FBA6F0D00000000
  %2578 = fmul fast float %2570, 0x3FD0432880000000
  %2579 = fmul fast float %1759, 0xBFEF110800000000
  %2580 = fmul fast float %2579, %2359
  %2581 = fadd fast float %2580, 1.000000e+00
  %2582 = fsub fast float %2581, %2577
  %2583 = fadd fast float %2582, %2578
  %2584 = fdiv fast float %2576, %2583
  %2585 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2586 = fsub fast float %2585, %1759
  %2587 = fmul fast float %2586, %2540
  %2588 = fadd fast float %2587, %1759
  br label %2603

; <label>:2589                                    ; preds = %2555
  %2590 = icmp eq i32 %2529, 8
  br i1 %2590, label %2591, label %2603

; <label>:2591                                    ; preds = %2589
  %2592 = fmul fast float %2534, %2360
  %2593 = fmul fast float %2534, %2361
  %2594 = fadd fast float %2592, %1750
  %2595 = fadd fast float %2593, %1751
  %2596 = call float @dx.op.binary.f32(i32 36, float %1760, float %2362)  ; FMin(a,b)
  %2597 = fsub fast float %2596, %1760
  %2598 = fmul fast float %2597, %2537
  %2599 = fadd fast float %2598, %1760
  %2600 = fsub fast float %2359, %1759
  %2601 = fmul fast float %2540, %2600
  %2602 = fadd fast float %2601, %1759
  br label %2603

; <label>:2603                                    ; preds = %2591, %2589, %2557, %2542, %2520, %2058, %1762, %1749
  %2604 = phi float [ %1750, %2520 ], [ %1750, %2058 ], [ %1750, %1749 ], [ %2594, %2591 ], [ %1750, %2589 ], [ %2560, %2557 ], [ %2547, %2542 ], [ %1750, %1762 ]
  %2605 = phi float [ %1751, %2520 ], [ %1751, %2058 ], [ %1751, %1749 ], [ %2595, %2591 ], [ %1751, %2589 ], [ %2561, %2557 ], [ %2548, %2542 ], [ %1751, %1762 ]
  %2606 = phi float [ %2521, %2520 ], [ %1752, %2058 ], [ %1752, %1749 ], [ %2521, %2591 ], [ %2521, %2589 ], [ %2521, %2557 ], [ %2521, %2542 ], [ %1752, %1762 ]
  %2607 = phi float [ %2522, %2520 ], [ %1753, %2058 ], [ %1753, %1749 ], [ %2522, %2591 ], [ %2522, %2589 ], [ %2522, %2557 ], [ %2522, %2542 ], [ %1753, %1762 ]
  %2608 = phi float [ %2523, %2520 ], [ %1754, %2058 ], [ %1754, %1749 ], [ %2523, %2591 ], [ %2523, %2589 ], [ %2523, %2557 ], [ %2523, %2542 ], [ %1754, %1762 ]
  %2609 = phi float [ %2524, %2520 ], [ %1755, %2058 ], [ %1755, %1749 ], [ %2524, %2591 ], [ %2524, %2589 ], [ %2524, %2557 ], [ %2524, %2542 ], [ %1755, %1762 ]
  %2610 = phi float [ %2525, %2520 ], [ %1756, %2058 ], [ %1756, %1749 ], [ %2525, %2591 ], [ %2525, %2589 ], [ %2525, %2557 ], [ %2525, %2542 ], [ %1756, %1762 ]
  %2611 = phi float [ %2526, %2520 ], [ %1757, %2058 ], [ %1757, %1749 ], [ %2526, %2591 ], [ %2526, %2589 ], [ %2526, %2557 ], [ %2526, %2542 ], [ %1757, %1762 ]
  %2612 = phi float [ %2527, %2520 ], [ %1758, %2058 ], [ %1758, %1749 ], [ %2527, %2591 ], [ %2527, %2589 ], [ %2527, %2557 ], [ %2527, %2542 ], [ %1758, %1762 ]
  %2613 = phi float [ %1759, %2520 ], [ %1759, %2058 ], [ %1759, %1749 ], [ %2602, %2591 ], [ %1759, %2589 ], [ %2588, %2557 ], [ %2554, %2542 ], [ %1759, %1762 ]
  %2614 = phi float [ %1760, %2520 ], [ %1760, %2058 ], [ %1760, %1749 ], [ %2599, %2591 ], [ %1760, %2589 ], [ %2565, %2557 ], [ %2551, %2542 ], [ %1760, %1762 ]
  %2615 = phi float [ %2528, %2520 ], [ %1761, %2058 ], [ %1761, %1749 ], [ %2528, %2591 ], [ %2528, %2589 ], [ %2528, %2557 ], [ %2528, %2542 ], [ %1761, %1762 ]
  br i1 %376, label %3457, label %2616

; <label>:2616                                    ; preds = %2603
  %2617 = icmp ult i32 %427, 4
  %2618 = add i32 %45, 72
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %45, 76
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = or i32 %2623, %2620
  %2625 = icmp eq i32 %2624, 0
  br i1 %2625, label %3457, label %2626

; <label>:2626                                    ; preds = %2616
  %2627 = and i32 %2620, 262144
  %2628 = icmp ne i32 %2627, 0
  %2629 = select i1 %2628, float %47, float 1.000000e+00
  %2630 = select i1 %2628, float %48, float 0.000000e+00
  %2631 = select i1 %2628, float %49, float 0.000000e+00
  %2632 = select i1 %2628, float %50, float 1.000000e+00
  %2633 = select i1 %2628, float %51, float %72
  %2634 = select i1 %2628, float %52, float %73
  %2635 = add i32 %45, 332
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = lshr i32 %2637, 16
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = fmul fast float %2639, 0x3F50624DE0000000
  %2641 = add i32 %45, 136
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = lshr i32 %2643, 16
  %2645 = and i32 %2644, 255
  %2646 = lshr i32 %2643, 24
  %2647 = add i32 %45, 340
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 65535
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = lshr i32 %2649, 16
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = add i32 %45, 80
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = lshr i32 %2656, 22
  %2658 = shl nuw nsw i32 %2657, 5
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = shl i32 %2656, 4
  %2661 = and i32 %2660, 32752
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = lshr i32 %2656, 7
  %2664 = and i32 %2663, 32752
  %2665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2664)  ; LegacyF16ToF32(value)
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 3
  %2668 = fmul fast float %2667, 1.000000e+03
  %2669 = fmul fast float %366, %2668
  %2670 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2671 = fadd fast float %2670, %356
  %2672 = fmul fast float %367, %2668
  %2673 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2674 = fadd fast float %2673, %358
  %2675 = fmul fast float %2640, %2668
  %2676 = call float @dx.op.unary.f32(i32 22, float %2675)  ; Frc(value)
  %2677 = fmul fast float %2676, 0x401921FB60000000
  %2678 = fadd fast float %2677, %2659
  %2679 = call float @dx.op.unary.f32(i32 13, float %2678)  ; Sin(value)
  %2680 = call float @dx.op.unary.f32(i32 12, float %2678)  ; Cos(value)
  %2681 = fsub fast float -0.000000e+00, %2679
  %2682 = fadd fast float %2633, -5.000000e-01
  %2683 = fadd fast float %2634, -5.000000e-01
  %2684 = fmul fast float %2651, %2682
  %2685 = fmul fast float %2653, %2683
  %2686 = fadd fast float %2684, 5.000000e-01
  %2687 = fadd fast float %2685, 5.000000e-01
  %2688 = fmul fast float %2662, %2686
  %2689 = fmul fast float %2665, %2687
  %2690 = fmul fast float %2680, %2688
  %2691 = call float @dx.op.tertiary.f32(i32 46, float %2681, float %2689, float %2690)  ; FMad(a,b,c)
  %2692 = fmul fast float %2679, %2688
  %2693 = call float @dx.op.tertiary.f32(i32 46, float %2680, float %2689, float %2692)  ; FMad(a,b,c)
  %2694 = fadd fast float %2671, %2691
  %2695 = fadd fast float %2674, %2693
  %2696 = icmp ugt i32 %2645, 1
  %2697 = icmp ugt i32 %2643, 33554431
  %2698 = or i1 %2697, %2696
  br i1 %2698, label %2699, label %2724

; <label>:2699                                    ; preds = %2626
  %2700 = add i32 %45, 276
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = lshr i32 %2702, 16
  %2704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2703)  ; LegacyF16ToF32(value)
  %2705 = fmul fast float %2667, %2704
  %2706 = call float @dx.op.unary.f32(i32 22, float %2705)  ; Frc(value)
  %2707 = mul nuw nsw i32 %2645, %2646
  %2708 = uitofp i32 %2707 to float
  %2709 = fmul fast float %2706, %2708
  %2710 = call float @dx.op.unary.f32(i32 27, float %2709)  ; Round_ni(value)
  %2711 = fptoui float %2710 to i32
  %2712 = urem i32 %2711, %2645
  %2713 = udiv i32 %2711, %2646
  %2714 = call float @dx.op.unary.f32(i32 22, float %2694)  ; Frc(value)
  %2715 = call float @dx.op.unary.f32(i32 22, float %2695)  ; Frc(value)
  %2716 = uitofp i32 %2712 to float
  %2717 = uitofp i32 %2713 to float
  %2718 = fadd fast float %2714, %2716
  %2719 = fadd fast float %2715, %2717
  %2720 = uitofp i32 %2645 to float
  %2721 = uitofp i32 %2646 to float
  %2722 = fdiv fast float %2718, %2720
  %2723 = fdiv fast float %2719, %2721
  br label %2724

; <label>:2724                                    ; preds = %2699, %2626
  %2725 = phi float [ %2722, %2699 ], [ %2694, %2626 ]
  %2726 = phi float [ %2723, %2699 ], [ %2695, %2626 ]
  %2727 = and i32 %2620, 16777216
  %2728 = icmp eq i32 %2727, 0
  br i1 %2728, label %2838, label %2729

; <label>:2729                                    ; preds = %2724
  %2730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = extractvalue %dx.types.CBufRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.CBufRet.f32 %2730, 1
  %2733 = extractvalue %dx.types.CBufRet.f32 %2730, 2
  %2734 = fadd fast float %2731, %143
  %2735 = fadd fast float %2732, %144
  %2736 = fadd fast float %2733, %145
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = icmp eq i32 %46, 65535
  br i1 %2740, label %2835, label %2741

; <label>:2741                                    ; preds = %2729
  %2742 = lshr i32 %46, 1
  %2743 = shl i32 %2742, 2
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = and i32 %46, 1
  %2747 = icmp ne i32 %2746, 0
  %2748 = lshr i32 %2745, 16
  %2749 = and i32 %2745, 65535
  %2750 = select i1 %2747, i32 %2748, i32 %2749
  %2751 = icmp eq i32 %2750, 65535
  br i1 %2751, label %2831, label %2752

; <label>:2752                                    ; preds = %2741
  %2753 = mul nuw nsw i32 %2750, 40
  %2754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.ResRet.f32 %2754, 1
  %2757 = extractvalue %dx.types.ResRet.f32 %2754, 2
  %2758 = add nuw nsw i32 %2753, 12
  %2759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = add nuw nsw i32 %2753, 24
  %2764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.ResRet.f32 %2764, 1
  %2767 = extractvalue %dx.types.ResRet.f32 %2764, 2
  %2768 = add nuw nsw i32 %2753, 36
  %2769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = fsub fast float %2734, %2755
  %2772 = fsub fast float %2735, %2756
  %2773 = fsub fast float %2736, %2757
  %2774 = fmul fast float %2770, %2771
  %2775 = fmul fast float %2770, %2772
  %2776 = fmul fast float %2770, %2773
  %2777 = call float @dx.op.unary.f32(i32 27, float %2774)  ; Round_ni(value)
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = fadd fast float %2778, 5.000000e-01
  %2782 = fadd fast float %2779, 5.000000e-01
  %2783 = fmul fast float %2780, %2760
  %2784 = fmul fast float %2781, %2761
  %2785 = fmul fast float %2782, %2762
  %2786 = shl i32 %46, 2
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = add i32 %2788, 0
  %2790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2791 = call float @dx.op.unary.f32(i32 22, float %2783)  ; Frc(value)
  %2792 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2793 = call float @dx.op.unary.f32(i32 22, float %2785)  ; Frc(value)
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2790, %dx.types.Handle %40, float %2791, float %2792, float %2793, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.f32 %2794, 2
  %2798 = fmul fast float %2795, 1.023000e+03
  %2799 = fmul fast float %2796, 1.023000e+03
  %2800 = fmul fast float %2797, 1.023000e+03
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = fadd fast float %2799, 5.000000e-01
  %2803 = fadd fast float %2800, 5.000000e-01
  %2804 = call float @dx.op.unary.f32(i32 27, float %2801)  ; Round_ni(value)
  %2805 = call float @dx.op.unary.f32(i32 27, float %2802)  ; Round_ni(value)
  %2806 = call float @dx.op.unary.f32(i32 27, float %2803)  ; Round_ni(value)
  %2807 = fsub fast float %2774, %2777
  %2808 = fsub fast float %2775, %2778
  %2809 = fsub fast float %2776, %2779
  %2810 = fmul fast float %2807, 7.500000e-01
  %2811 = fmul fast float %2808, 7.500000e-01
  %2812 = fmul fast float %2809, 7.500000e-01
  %2813 = fadd fast float %2777, 1.250000e-01
  %2814 = fadd fast float %2813, %2810
  %2815 = fadd fast float %2814, %2804
  %2816 = fadd fast float %2778, 1.250000e-01
  %2817 = fadd fast float %2816, %2811
  %2818 = fadd fast float %2817, %2805
  %2819 = fadd fast float %2779, 1.250000e-01
  %2820 = fadd fast float %2819, %2812
  %2821 = fadd fast float %2820, %2806
  %2822 = fmul fast float %2815, %2765
  %2823 = fmul fast float %2818, %2766
  %2824 = fmul fast float %2821, %2767
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = add i32 %2826, 0
  %2828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2828, %dx.types.Handle %38, float %2822, float %2823, float %2824, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2830 = extractvalue %dx.types.ResRet.f32 %2829, 0
  br label %2831

; <label>:2831                                    ; preds = %2752, %2741
  %2832 = phi float [ %2830, %2752 ], [ -1.000000e+00, %2741 ]
  %2833 = fadd fast float %2832, %2739
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  br label %2835

; <label>:2835                                    ; preds = %2831, %2729
  %2836 = phi float [ %2834, %2831 ], [ %2739, %2729 ]
  %2837 = fmul fast float %2836, %422
  br label %2838

; <label>:2838                                    ; preds = %2835, %2724
  %2839 = phi float [ %2837, %2835 ], [ %422, %2724 ]
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = and i32 %2841, 256
  %2843 = icmp eq i32 %2842, 0
  br i1 %2843, label %2890, label %2844

; <label>:2844                                    ; preds = %2838
  %2845 = add i32 %45, 436
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = add i32 %2847, 0
  %2849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2849, %dx.types.Handle %81, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = add i32 %45, 148
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = shl i32 %2854, 4
  %2856 = and i32 %2855, 32752
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = lshr i32 %2854, 7
  %2859 = and i32 %2858, 32752
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = fsub fast float 1.000000e+00, %2839
  %2862 = call float @dx.op.binary.f32(i32 35, float %2861, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2863 = bitcast float %2839 to i32
  %2864 = sitofp i32 %2863 to float
  %2865 = fadd fast float %2864, 0xC1CFBF8940000000
  %2866 = fmul fast float %2860, %2865
  %2867 = fadd fast float %2866, 0x41CFBF8940000000
  %2868 = fptosi float %2867 to i32
  %2869 = bitcast i32 %2868 to float
  %2870 = bitcast float %2862 to i32
  %2871 = sitofp i32 %2870 to float
  %2872 = fadd fast float %2871, 0xC1CFBF8940000000
  %2873 = fmul fast float %2872, %2860
  %2874 = fadd fast float %2873, 0x41CFBF8940000000
  %2875 = fptosi float %2874 to i32
  %2876 = bitcast i32 %2875 to float
  %2877 = fmul fast float %2869, %2857
  %2878 = fmul fast float %2876, %2857
  %2879 = fsub fast float %2862, %2877
  %2880 = fadd fast float %2878, %2862
  %2881 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2882 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2883 = fsub fast float %2851, %2881
  %2884 = fsub fast float %2882, %2881
  %2885 = bitcast float %2884 to i32
  %2886 = sub nsw i32 2129859010, %2885
  %2887 = bitcast i32 %2886 to float
  %2888 = fmul fast float %2887, %2883
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  br label %2890

; <label>:2890                                    ; preds = %2844, %2838
  %2891 = phi float [ %2889, %2844 ], [ %2839, %2838 ]
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 128
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2912, label %2896

; <label>:2896                                    ; preds = %2890
  %2897 = add i32 %45, 420
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2901, %dx.types.Handle %81, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = and i32 %2905, 524288
  %2907 = icmp ne i32 %2906, 0
  %2908 = fcmp fast ogt float %2903, 0x3FE0101020000000
  %2909 = select i1 %2908, float 1.000000e+00, float 0.000000e+00
  %2910 = select i1 %2907, float %2909, float %2903
  %2911 = fmul fast float %2910, %2891
  br label %2912

; <label>:2912                                    ; preds = %2896, %2890
  %2913 = phi float [ %2911, %2896 ], [ %2891, %2890 ]
  %2914 = fcmp fast ult float %2913, 0x3F70101020000000
  br i1 %2914, label %3457, label %2915

; <label>:2915                                    ; preds = %2912
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 16
  %2919 = icmp eq i32 %2918, 0
  br i1 %2919, label %3118, label %2920

; <label>:2920                                    ; preds = %2915
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %45, 372
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %2925, 0
  %2927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2927, %dx.types.Handle %80, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.ResRet.f32 %2928, 2
  %2932 = extractvalue %dx.types.ResRet.f32 %2928, 3
  %2933 = and i32 %2922, 255
  %2934 = uitofp i32 %2933 to float
  %2935 = lshr i32 %2922, 8
  %2936 = and i32 %2935, 255
  %2937 = uitofp i32 %2936 to float
  %2938 = fmul fast float %2932, %2934
  %2939 = fadd fast float %2938, %2937
  %2940 = fmul fast float %2939, 0x3F70101000000000
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 512
  %2944 = icmp eq i32 %2943, 0
  br i1 %2944, label %2953, label %2945

; <label>:2945                                    ; preds = %2920
  %2946 = add i32 %45, 452
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = add i32 %2948, 0
  %2950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2950, %dx.types.Handle %81, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 0
  br label %2953

; <label>:2953                                    ; preds = %2945, %2920
  %2954 = phi float [ %2952, %2945 ], [ 1.000000e+00, %2920 ]
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 33554432
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %3065, label %2959

; <label>:2959                                    ; preds = %2953
  %2960 = add i32 %45, 272
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 65535
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = lshr i32 %2962, 16
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = add i32 %45, 276
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 65535
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = lshr i32 %2973, 24
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = and i32 %2973, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = lshr i32 %2973, 8
  %2981 = and i32 %2980, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = fmul fast float %2982, 0x3F70101020000000
  %2984 = lshr i32 %2973, 16
  %2985 = and i32 %2984, 255
  %2986 = uitofp i32 %2985 to float
  %2987 = fmul fast float %2986, 0x3F70101020000000
  %2988 = add i32 %45, 268
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = lshr i32 %2990, 24
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = and i32 %2990, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2990, 8
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = lshr i32 %2990, 16
  %3002 = and i32 %3001, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = bitcast float %2929 to i32
  %3006 = ashr i32 %3005, 1
  %3007 = sub nsw i32 1597463174, %3006
  %3008 = bitcast i32 %3007 to float
  %3009 = fmul fast float %2929, 5.000000e-01
  %3010 = fmul fast float %3008, %3008
  %3011 = fmul fast float %3010, %3009
  %3012 = fsub fast float 1.500000e+00, %3011
  %3013 = fmul fast float %3008, %2929
  %3014 = fmul fast float %3013, %3012
  %3015 = bitcast float %2930 to i32
  %3016 = ashr i32 %3015, 1
  %3017 = sub nsw i32 1597463174, %3016
  %3018 = bitcast i32 %3017 to float
  %3019 = fmul fast float %2930, 5.000000e-01
  %3020 = fmul fast float %3018, %3018
  %3021 = fmul fast float %3020, %3019
  %3022 = fsub fast float 1.500000e+00, %3021
  %3023 = fmul fast float %3018, %2930
  %3024 = fmul fast float %3023, %3022
  %3025 = bitcast float %2931 to i32
  %3026 = ashr i32 %3025, 1
  %3027 = sub nsw i32 1597463174, %3026
  %3028 = bitcast i32 %3027 to float
  %3029 = fmul fast float %2931, 5.000000e-01
  %3030 = fmul fast float %3028, %3028
  %3031 = fmul fast float %3030, %3029
  %3032 = fsub fast float 1.500000e+00, %3031
  %3033 = fmul fast float %3028, %2931
  %3034 = fmul fast float %3033, %3032
  %3035 = fsub fast float %3014, %2996
  %3036 = fsub fast float %3024, %3000
  %3037 = fsub fast float %3034, %3004
  %3038 = fmul fast float %3035, %2964
  %3039 = fmul fast float %3036, %2966
  %3040 = fmul fast float %3037, %2971
  %3041 = fadd fast float %3038, %2979
  %3042 = fadd fast float %3039, %2983
  %3043 = fadd fast float %3040, %2987
  %3044 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3045 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  %3046 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3047 = fmul fast float %3044, %3044
  %3048 = fmul fast float %3045, %3045
  %3049 = fmul fast float %3046, %3046
  %3050 = fsub fast float %3047, %2929
  %3051 = fsub fast float %3048, %2930
  %3052 = fsub fast float %3049, %2931
  %3053 = fmul fast float %3050, %2954
  %3054 = fmul fast float %3051, %2954
  %3055 = fmul fast float %3052, %2954
  %3056 = fadd fast float %3053, %2929
  %3057 = fadd fast float %3054, %2930
  %3058 = fadd fast float %3055, %2931
  %3059 = fadd fast float %2976, %2940
  %3060 = fsub fast float %3059, %2993
  %3061 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  %3062 = fsub fast float %3061, %2940
  %3063 = fmul fast float %3062, %2954
  %3064 = fadd fast float %3063, %2940
  br label %3118

; <label>:3065                                    ; preds = %2953
  %3066 = and i32 %2956, 134217728
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3102, label %3068

; <label>:3068                                    ; preds = %3065
  %3069 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3070 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3071 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %3072 = fadd fast float %3069, -5.000000e-01
  %3073 = fadd fast float %3070, -5.000000e-01
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fmul fast float %3072, %2954
  %3076 = fmul fast float %3073, %2954
  %3077 = fmul fast float %3074, %2954
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = fadd fast float %3076, 5.000000e-01
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3082 = call float @dx.op.unary.f32(i32 24, float %2930)  ; Sqrt(value)
  %3083 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %3084 = fmul fast float %3078, 2.000000e+00
  %3085 = fsub fast float 1.000000e+00, %3084
  %3086 = fmul fast float %3085, %3081
  %3087 = fadd fast float %3086, %3084
  %3088 = fmul fast float %3087, %3081
  %3089 = fmul fast float %3079, 2.000000e+00
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = fmul fast float %3090, %3082
  %3092 = fadd fast float %3091, %3089
  %3093 = fmul fast float %3092, %3082
  %3094 = fmul fast float %3080, 2.000000e+00
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = fmul fast float %3095, %3083
  %3097 = fadd fast float %3096, %3094
  %3098 = fmul fast float %3097, %3083
  %3099 = fmul fast float %3088, %3088
  %3100 = fmul fast float %3093, %3093
  %3101 = fmul fast float %3098, %3098
  br label %3118

; <label>:3102                                    ; preds = %3065
  %3103 = fmul fast float %343, %343
  %3104 = fmul fast float %347, %347
  %3105 = fmul fast float %351, %351
  %3106 = fadd fast float %3103, -1.000000e+00
  %3107 = fadd fast float %3104, -1.000000e+00
  %3108 = fadd fast float %3105, -1.000000e+00
  %3109 = fmul fast float %2954, %3106
  %3110 = fmul fast float %2954, %3107
  %3111 = fmul fast float %2954, %3108
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fadd fast float %3110, 1.000000e+00
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fmul fast float %3112, %2929
  %3116 = fmul fast float %3113, %2930
  %3117 = fmul fast float %3114, %2931
  br label %3118

; <label>:3118                                    ; preds = %3102, %3068, %2959, %2915
  %3119 = phi float [ %3064, %2959 ], [ %2940, %3068 ], [ %2940, %3102 ], [ 0x3FA23C0BE0000000, %2915 ]
  %3120 = phi float [ %3056, %2959 ], [ %3099, %3068 ], [ %3115, %3102 ], [ 1.000000e+00, %2915 ]
  %3121 = phi float [ %3057, %2959 ], [ %3100, %3068 ], [ %3116, %3102 ], [ 1.000000e+00, %2915 ]
  %3122 = phi float [ %3058, %2959 ], [ %3101, %3068 ], [ %3117, %3102 ], [ 1.000000e+00, %2915 ]
  %3123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3124 = extractvalue %dx.types.CBufRet.i32 %3123, 1
  %3125 = and i32 %3124, 1
  %3126 = icmp ne i32 %3125, 0
  %3127 = add i32 %45, 356
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 32
  %3131 = icmp ne i32 %3130, 0
  %3132 = and i1 %3126, %3131
  %3133 = select i1 %3132, float 1.000000e+00, float %3120
  %3134 = select i1 %3132, float 0x3FD3333340000000, float %3121
  %3135 = select i1 %3132, float 0x3FD3333340000000, float %3122
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 32
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3212, label %3140

; <label>:3140                                    ; preds = %3118
  %3141 = add i32 %45, 140
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = add i32 %45, 388
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = add i32 %3146, 0
  %3148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3148, %dx.types.Handle %80, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3150 = extractvalue %dx.types.ResRet.f32 %3149, 0
  %3151 = extractvalue %dx.types.ResRet.f32 %3149, 1
  %3152 = extractvalue %dx.types.ResRet.f32 %3149, 2
  %3153 = extractvalue %dx.types.ResRet.f32 %3149, 3
  %3154 = and i32 %3143, 255
  %3155 = uitofp i32 %3154 to float
  %3156 = lshr i32 %3143, 8
  %3157 = and i32 %3156, 255
  %3158 = uitofp i32 %3157 to float
  %3159 = lshr i32 %3143, 16
  %3160 = and i32 %3159, 255
  %3161 = uitofp i32 %3160 to float
  %3162 = fmul fast float %3161, 0x3F70101000000000
  %3163 = fmul fast float %3150, %3155
  %3164 = fadd fast float %3163, %3158
  %3165 = fmul fast float %3164, 0x3F70101000000000
  %3166 = fadd fast float %3151, -5.000000e-01
  %3167 = fadd fast float %3153, -5.000000e-01
  %3168 = fmul fast float %3166, %3162
  %3169 = fmul fast float %3167, %3162
  %3170 = fadd fast float %3168, 5.000000e-01
  %3171 = fadd fast float %3169, 5.000000e-01
  %3172 = fmul fast float %3170, 2.000000e+00
  %3173 = fadd fast float %3172, -1.000000e+00
  %3174 = fmul fast float %3171, 2.000000e+00
  %3175 = fadd fast float %3174, -1.000000e+00
  %3176 = fadd fast float %3173, %3175
  %3177 = fmul fast float %3176, 5.000000e-01
  %3178 = fsub fast float %3173, %3175
  %3179 = fmul fast float %3178, 5.000000e-01
  %3180 = call float @dx.op.unary.f32(i32 6, float %3177)  ; FAbs(value)
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = call float @dx.op.unary.f32(i32 6, float %3179)  ; FAbs(value)
  %3183 = fsub fast float %3181, %3182
  %3184 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3179, float %3183, float %3177, float %3179, float %3183)  ; Dot3(ax,ay,az,bx,by,bz)
  %3185 = call float @dx.op.unary.f32(i32 25, float %3184)  ; Rsqrt(value)
  %3186 = fmul fast float %3177, %3185
  %3187 = fmul fast float %3179, %3185
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = and i32 %3189, 67108864
  %3191 = icmp eq i32 %3190, 0
  br i1 %3191, label %3208, label %3192

; <label>:3192                                    ; preds = %3140
  %3193 = add i32 %45, 328
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 65535
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 65535
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = lshr i32 %3195, 16
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = fsub fast float %3165, %3203
  %3205 = fmul fast float %3204, %3197
  %3206 = fadd fast float %3205, %3201
  %3207 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  br label %3208

; <label>:3208                                    ; preds = %3192, %3140
  %3209 = phi float [ %3207, %3192 ], [ %3165, %3140 ]
  %3210 = call float @dx.op.dot2.f32(i32 54, float %3186, float %3187, float %2629, float %2630)  ; Dot2(ax,ay,bx,by)
  %3211 = call float @dx.op.dot2.f32(i32 54, float %3186, float %3187, float %2631, float %2632)  ; Dot2(ax,ay,bx,by)
  br label %3212

; <label>:3212                                    ; preds = %3208, %3118
  %3213 = phi float [ %3209, %3208 ], [ 0x3FD6666660000000, %3118 ]
  %3214 = phi float [ %3210, %3208 ], [ 0.000000e+00, %3118 ]
  %3215 = phi float [ %3211, %3208 ], [ 0.000000e+00, %3118 ]
  %3216 = phi float [ %3152, %3208 ], [ 1.000000e+00, %3118 ]
  %3217 = add i32 %45, 208
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = lshr i32 %3219, 22
  %3221 = shl nuw nsw i32 %3220, 5
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 64
  %3226 = icmp eq i32 %3225, 0
  br i1 %3226, label %3260, label %3227

; <label>:3227                                    ; preds = %3212
  %3228 = add i32 %45, 404
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %3230, 0
  %3232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = and i32 %3234, 131072
  %3236 = icmp eq i32 %3235, 0
  %3237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3232, %dx.types.Handle %80, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.ResRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.ResRet.f32 %3237, 2
  %3241 = fmul fast float %3238, %331
  %3242 = fmul fast float %3239, %334
  %3243 = fmul fast float %3240, %337
  br i1 %3236, label %3250, label %3244

; <label>:3244                                    ; preds = %3227
  %3245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3245, 0
  %3247 = fmul fast float %3246, %3241
  %3248 = fmul fast float %3246, %3242
  %3249 = fmul fast float %3246, %3243
  br label %3250

; <label>:3250                                    ; preds = %3244, %3227
  %3251 = phi float [ %3247, %3244 ], [ %3241, %3227 ]
  %3252 = phi float [ %3248, %3244 ], [ %3242, %3227 ]
  %3253 = phi float [ %3249, %3244 ], [ %3243, %3227 ]
  %3254 = fmul fast float %3251, %3222
  %3255 = select i1 %185, float %3254, float %3251
  %3256 = call float @dx.op.dot3.f32(i32 55, float %3255, float %3252, float %3253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3257 = select i1 %185, float 0.000000e+00, float %3251
  %3258 = select i1 %185, float %3256, float %3252
  %3259 = select i1 %185, float 0.000000e+00, float %3253
  br label %3260

; <label>:3260                                    ; preds = %3250, %3212
  %3261 = phi float [ %3257, %3250 ], [ 0.000000e+00, %3212 ]
  %3262 = phi float [ %3258, %3250 ], [ 0.000000e+00, %3212 ]
  %3263 = phi float [ %3259, %3250 ], [ 0.000000e+00, %3212 ]
  %3264 = add i32 %45, 144
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 255
  %3268 = uitofp i32 %3267 to float
  %3269 = lshr i32 %3266, 8
  %3270 = and i32 %3269, 255
  %3271 = uitofp i32 %3270 to float
  %3272 = call float @dx.op.dot3.f32(i32 55, float %3133, float %3134, float %3135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3273 = fmul fast float %3271, %3272
  %3274 = fadd fast float %3273, %3268
  %3275 = fmul fast float %3274, 0x3F70101020000000
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  br i1 %2617, label %3277, label %3285

; <label>:3277                                    ; preds = %3260
  %3278 = fsub fast float 1.000000e+00, %2913
  %3279 = fmul fast float %3278, %2606
  %3280 = fmul fast float %3278, %2607
  %3281 = fmul fast float %3278, %2608
  %3282 = fmul fast float %3278, %2609
  %3283 = fmul fast float %3278, %2610
  %3284 = fmul fast float %3278, %2611
  br label %3285

; <label>:3285                                    ; preds = %3277, %3260
  %3286 = phi float [ %3279, %3277 ], [ %2606, %3260 ]
  %3287 = phi float [ %3280, %3277 ], [ %2607, %3260 ]
  %3288 = phi float [ %3281, %3277 ], [ %2608, %3260 ]
  %3289 = phi float [ %3282, %3277 ], [ %2609, %3260 ]
  %3290 = phi float [ %3283, %3277 ], [ %2610, %3260 ]
  %3291 = phi float [ %3284, %3277 ], [ %2611, %3260 ]
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = and i32 %3293, 3
  %3295 = icmp eq i32 %3294, 3
  br i1 %3295, label %3374, label %3296

; <label>:3296                                    ; preds = %3285
  %3297 = and i32 %3293, 16
  %3298 = icmp ne i32 %3297, 0
  %3299 = select i1 %3298, float %2913, float 0.000000e+00
  %3300 = icmp eq i32 %3294, 0
  br i1 %3300, label %3301, label %3329

; <label>:3301                                    ; preds = %3296
  %3302 = and i32 %3293, 64
  %3303 = icmp ne i32 %3302, 0
  %3304 = select i1 %3303, float %2913, float 0.000000e+00
  %3305 = fsub fast float %3133, %3286
  %3306 = fsub fast float %3134, %3287
  %3307 = fsub fast float %3135, %3288
  %3308 = fmul fast float %3299, %3305
  %3309 = fmul fast float %3299, %3306
  %3310 = fmul fast float %3299, %3307
  %3311 = fadd fast float %3308, %3286
  %3312 = fadd fast float %3309, %3287
  %3313 = fadd fast float %3310, %3288
  %3314 = fsub fast float %3119, %2612
  %3315 = fmul fast float %3299, %3314
  %3316 = fadd fast float %3315, %2612
  %3317 = fsub fast float %3261, %3289
  %3318 = fsub fast float %3262, %3290
  %3319 = fsub fast float %3263, %3291
  %3320 = fmul fast float %3304, %3317
  %3321 = fmul fast float %3304, %3318
  %3322 = fmul fast float %3304, %3319
  %3323 = fadd fast float %3320, %3289
  %3324 = fadd fast float %3321, %3290
  %3325 = fadd fast float %3322, %3291
  %3326 = fsub fast float %3276, %2615
  %3327 = fmul fast float %3299, %3326
  %3328 = fadd fast float %3327, %2615
  br label %3374

; <label>:3329                                    ; preds = %3296
  %3330 = icmp eq i32 %3294, 1
  br i1 %3330, label %3331, label %3344

; <label>:3331                                    ; preds = %3329
  %3332 = fadd fast float %3133, -1.000000e+00
  %3333 = fadd fast float %3134, -1.000000e+00
  %3334 = fadd fast float %3135, -1.000000e+00
  %3335 = fmul fast float %3299, %3332
  %3336 = fmul fast float %3299, %3333
  %3337 = fmul fast float %3299, %3334
  %3338 = fadd fast float %3335, 1.000000e+00
  %3339 = fadd fast float %3336, 1.000000e+00
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fmul fast float %3338, %3286
  %3342 = fmul fast float %3339, %3287
  %3343 = fmul fast float %3340, %3288
  br label %3374

; <label>:3344                                    ; preds = %3329
  %3345 = icmp eq i32 %3294, 2
  br i1 %3345, label %3346, label %3374

; <label>:3346                                    ; preds = %3344
  %3347 = call float @dx.op.unary.f32(i32 24, float %3133)  ; Sqrt(value)
  %3348 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3349 = call float @dx.op.unary.f32(i32 24, float %3135)  ; Sqrt(value)
  %3350 = fadd fast float %3347, -5.000000e-01
  %3351 = fadd fast float %3348, -5.000000e-01
  %3352 = fadd fast float %3349, -5.000000e-01
  %3353 = fmul fast float %3350, %3299
  %3354 = fmul fast float %3351, %3299
  %3355 = fmul fast float %3352, %3299
  %3356 = fadd fast float %3353, 5.000000e-01
  %3357 = fadd fast float %3354, 5.000000e-01
  %3358 = fadd fast float %3355, 5.000000e-01
  %3359 = fmul fast float %3356, 2.000000e+00
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = fmul fast float %3360, %3286
  %3362 = fadd fast float %3361, %3359
  %3363 = fmul fast float %3362, %3286
  %3364 = fmul fast float %3357, 2.000000e+00
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = fmul fast float %3365, %3287
  %3367 = fadd fast float %3366, %3364
  %3368 = fmul fast float %3367, %3287
  %3369 = fmul fast float %3358, 2.000000e+00
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = fmul fast float %3370, %3288
  %3372 = fadd fast float %3371, %3369
  %3373 = fmul fast float %3372, %3288
  br label %3374

; <label>:3374                                    ; preds = %3346, %3344, %3331, %3301, %3285
  %3375 = phi float [ %3286, %3285 ], [ %3363, %3346 ], [ %3286, %3344 ], [ %3341, %3331 ], [ %3311, %3301 ]
  %3376 = phi float [ %3287, %3285 ], [ %3368, %3346 ], [ %3287, %3344 ], [ %3342, %3331 ], [ %3312, %3301 ]
  %3377 = phi float [ %3288, %3285 ], [ %3373, %3346 ], [ %3288, %3344 ], [ %3343, %3331 ], [ %3313, %3301 ]
  %3378 = phi float [ %3289, %3285 ], [ %3289, %3346 ], [ %3289, %3344 ], [ %3289, %3331 ], [ %3323, %3301 ]
  %3379 = phi float [ %3290, %3285 ], [ %3290, %3346 ], [ %3290, %3344 ], [ %3290, %3331 ], [ %3324, %3301 ]
  %3380 = phi float [ %3291, %3285 ], [ %3291, %3346 ], [ %3291, %3344 ], [ %3291, %3331 ], [ %3325, %3301 ]
  %3381 = phi float [ %2612, %3285 ], [ %2612, %3346 ], [ %2612, %3344 ], [ %2612, %3331 ], [ %3316, %3301 ]
  %3382 = phi float [ %2615, %3285 ], [ %2615, %3346 ], [ %2615, %3344 ], [ %2615, %3331 ], [ %3328, %3301 ]
  %3383 = and i32 %3293, 12
  %3384 = icmp eq i32 %3383, 12
  br i1 %3384, label %3457, label %3385

; <label>:3385                                    ; preds = %3374
  %3386 = and i32 %3293, 2097184
  %3387 = icmp eq i32 %3386, 2097184
  %3388 = select i1 %3387, float %2913, float 0.000000e+00
  %3389 = and i32 %3293, 4194336
  %3390 = icmp eq i32 %3389, 4194336
  %3391 = select i1 %3390, float %2913, float 0.000000e+00
  %3392 = and i32 %3293, 8388640
  %3393 = icmp eq i32 %3392, 8388640
  %3394 = select i1 %3393, float %2913, float 0.000000e+00
  %3395 = icmp eq i32 %3383, 0
  br i1 %3395, label %3396, label %3409

; <label>:3396                                    ; preds = %3385
  %3397 = fsub fast float %3214, %2604
  %3398 = fsub fast float %3215, %2605
  %3399 = fmul fast float %3388, %3397
  %3400 = fmul fast float %3388, %3398
  %3401 = fadd fast float %3399, %2604
  %3402 = fadd fast float %3400, %2605
  %3403 = fsub fast float %3216, %2614
  %3404 = fmul fast float %3391, %3403
  %3405 = fadd fast float %3404, %2614
  %3406 = fsub fast float %3213, %2613
  %3407 = fmul fast float %3394, %3406
  %3408 = fadd fast float %3407, %2613
  br label %3457

; <label>:3409                                    ; preds = %3385
  %3410 = icmp eq i32 %3383, 4
  br i1 %3410, label %3411, label %3443

; <label>:3411                                    ; preds = %3409
  %3412 = fmul fast float %3388, %3214
  %3413 = fmul fast float %3388, %3215
  %3414 = fadd fast float %3412, %2604
  %3415 = fadd fast float %3413, %2605
  %3416 = call float @dx.op.binary.f32(i32 36, float %2614, float %3216)  ; FMin(a,b)
  %3417 = fsub fast float %3416, %2614
  %3418 = fmul fast float %3417, %3391
  %3419 = fadd fast float %3418, %2614
  %3420 = fadd fast float %3213, %2613
  %3421 = fmul fast float %3420, 0x3FF337FAE0000000
  %3422 = fmul fast float %2613, %2613
  %3423 = fmul fast float %3213, %3213
  %3424 = fadd fast float %3423, %3422
  %3425 = fmul fast float %3424, 0x3FE5152B00000000
  %3426 = fmul fast float %2613, 0xBFCC1F85E0000000
  %3427 = fmul fast float %3426, %3213
  %3428 = fadd fast float %3427, 0xBFE1363700000000
  %3429 = fadd fast float %3428, %3421
  %3430 = fsub fast float %3429, %3425
  %3431 = fmul fast float %3420, 0x3FBA6F0D00000000
  %3432 = fmul fast float %3424, 0x3FD0432880000000
  %3433 = fmul fast float %2613, 0xBFEF110800000000
  %3434 = fmul fast float %3433, %3213
  %3435 = fadd fast float %3434, 1.000000e+00
  %3436 = fsub fast float %3435, %3431
  %3437 = fadd fast float %3436, %3432
  %3438 = fdiv fast float %3430, %3437
  %3439 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3440 = fsub fast float %3439, %2613
  %3441 = fmul fast float %3440, %3394
  %3442 = fadd fast float %3441, %2613
  br label %3457

; <label>:3443                                    ; preds = %3409
  %3444 = icmp eq i32 %3383, 8
  br i1 %3444, label %3445, label %3457

; <label>:3445                                    ; preds = %3443
  %3446 = fmul fast float %3388, %3214
  %3447 = fmul fast float %3388, %3215
  %3448 = fadd fast float %3446, %2604
  %3449 = fadd fast float %3447, %2605
  %3450 = call float @dx.op.binary.f32(i32 36, float %2614, float %3216)  ; FMin(a,b)
  %3451 = fsub fast float %3450, %2614
  %3452 = fmul fast float %3451, %3391
  %3453 = fadd fast float %3452, %2614
  %3454 = fsub fast float %3213, %2613
  %3455 = fmul fast float %3394, %3454
  %3456 = fadd fast float %3455, %2613
  br label %3457

; <label>:3457                                    ; preds = %3445, %3443, %3411, %3396, %3374, %2912, %2616, %2603
  %3458 = phi float [ %2604, %3374 ], [ %2604, %2912 ], [ %2604, %2603 ], [ %2604, %2616 ], [ %3401, %3396 ], [ %3414, %3411 ], [ %2604, %3443 ], [ %3448, %3445 ]
  %3459 = phi float [ %2605, %3374 ], [ %2605, %2912 ], [ %2605, %2603 ], [ %2605, %2616 ], [ %3402, %3396 ], [ %3415, %3411 ], [ %2605, %3443 ], [ %3449, %3445 ]
  %3460 = phi float [ %3375, %3374 ], [ %2606, %2912 ], [ %2606, %2603 ], [ %2606, %2616 ], [ %3375, %3396 ], [ %3375, %3411 ], [ %3375, %3443 ], [ %3375, %3445 ]
  %3461 = phi float [ %3376, %3374 ], [ %2607, %2912 ], [ %2607, %2603 ], [ %2607, %2616 ], [ %3376, %3396 ], [ %3376, %3411 ], [ %3376, %3443 ], [ %3376, %3445 ]
  %3462 = phi float [ %3377, %3374 ], [ %2608, %2912 ], [ %2608, %2603 ], [ %2608, %2616 ], [ %3377, %3396 ], [ %3377, %3411 ], [ %3377, %3443 ], [ %3377, %3445 ]
  %3463 = phi float [ %3378, %3374 ], [ %2609, %2912 ], [ %2609, %2603 ], [ %2609, %2616 ], [ %3378, %3396 ], [ %3378, %3411 ], [ %3378, %3443 ], [ %3378, %3445 ]
  %3464 = phi float [ %3379, %3374 ], [ %2610, %2912 ], [ %2610, %2603 ], [ %2610, %2616 ], [ %3379, %3396 ], [ %3379, %3411 ], [ %3379, %3443 ], [ %3379, %3445 ]
  %3465 = phi float [ %3380, %3374 ], [ %2611, %2912 ], [ %2611, %2603 ], [ %2611, %2616 ], [ %3380, %3396 ], [ %3380, %3411 ], [ %3380, %3443 ], [ %3380, %3445 ]
  %3466 = phi float [ %3381, %3374 ], [ %2612, %2912 ], [ %2612, %2603 ], [ %2612, %2616 ], [ %3381, %3396 ], [ %3381, %3411 ], [ %3381, %3443 ], [ %3381, %3445 ]
  %3467 = phi float [ %2613, %3374 ], [ %2613, %2912 ], [ %2613, %2603 ], [ %2613, %2616 ], [ %3408, %3396 ], [ %3442, %3411 ], [ %2613, %3443 ], [ %3456, %3445 ]
  %3468 = phi float [ %2614, %3374 ], [ %2614, %2912 ], [ %2614, %2603 ], [ %2614, %2616 ], [ %3405, %3396 ], [ %3419, %3411 ], [ %2614, %3443 ], [ %3453, %3445 ]
  %3469 = phi float [ %3382, %3374 ], [ %2615, %2912 ], [ %2615, %2603 ], [ %2615, %2616 ], [ %3382, %3396 ], [ %3382, %3411 ], [ %3382, %3443 ], [ %3382, %3445 ]
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 0
  %3472 = call float @dx.op.dot2.f32(i32 54, float %3458, float %3459, float %3458, float %3459)  ; Dot2(ax,ay,bx,by)
  %3473 = fmul fast float %3472, 0x3FE3333340000000
  %3474 = fsub fast float 1.000000e+00, %3473
  %3475 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3474, float %3458, float %3459, float %3474)  ; Dot3(ax,ay,az,bx,by,bz)
  %3476 = call float @dx.op.unary.f32(i32 25, float %3475)  ; Rsqrt(value)
  %3477 = fmul fast float %3476, %3458
  %3478 = fmul fast float %3476, %3459
  %3479 = fmul fast float %3474, %3476
  %3480 = fmul fast float %3479, %93
  %3481 = fmul fast float %3479, %95
  %3482 = fmul fast float %3479, %97
  %3483 = fmul fast float %3477, %65
  %3484 = fmul fast float %3477, %66
  %3485 = fmul fast float %3477, %67
  %3486 = fadd fast float %3480, %3483
  %3487 = fadd fast float %3481, %3484
  %3488 = fadd fast float %3482, %3485
  %3489 = fmul fast float %107, %3478
  %3490 = fmul fast float %108, %3478
  %3491 = fmul fast float %109, %3478
  %3492 = fadd fast float %3486, %3489
  %3493 = fadd fast float %3487, %3490
  %3494 = fadd fast float %3488, %3491
  %3495 = call float @dx.op.dot3.f32(i32 55, float %3492, float %3493, float %3494, float %3492, float %3493, float %3494)  ; Dot3(ax,ay,az,bx,by,bz)
  %3496 = call float @dx.op.unary.f32(i32 25, float %3495)  ; Rsqrt(value)
  %3497 = fmul fast float %3492, %3496
  %3498 = fmul fast float %3493, %3496
  %3499 = fmul fast float %3494, %3496
  %3500 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3501 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3502 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3503 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3504 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3505 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3506 = fadd fast float %3500, %143
  %3507 = fadd fast float %3501, %144
  %3508 = fadd fast float %3502, %145
  %3509 = fadd fast float %3503, %143
  %3510 = fadd fast float %3504, %144
  %3511 = fadd fast float %3505, %145
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.CBufRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.CBufRet.f32 %3512, 2
  %3516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3517 = extractvalue %dx.types.CBufRet.f32 %3516, 2
  %3518 = extractvalue %dx.types.CBufRet.f32 %3516, 3
  %3519 = fmul fast float %3513, %84
  %3520 = fmul fast float %3519, %3517
  %3521 = fmul fast float %3514, %85
  %3522 = fmul fast float %3521, %3518
  %3523 = fptoui float %3520 to i32
  %3524 = fptoui float %3522 to i32
  %3525 = fadd fast float %3513, -1.000000e+00
  %3526 = fadd fast float %3514, -1.000000e+00
  %3527 = fptoui float %3525 to i32
  %3528 = fptoui float %3526 to i32
  %3529 = call i32 @dx.op.binary.i32(i32 40, i32 %3523, i32 %3527)  ; UMin(a,b)
  %3530 = call i32 @dx.op.binary.i32(i32 40, i32 %3524, i32 %3528)  ; UMin(a,b)
  %3531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3532 = extractvalue %dx.types.CBufRet.f32 %3531, 2
  %3533 = extractvalue %dx.types.CBufRet.f32 %3531, 3
  %3534 = fmul fast float %3532, %79
  %3535 = fsub fast float %3534, %3533
  %3536 = fadd fast float %3515, -1.000000e+00
  %3537 = call float @dx.op.binary.f32(i32 36, float %3535, float %3536)  ; FMin(a,b)
  %3538 = fptoui float %3537 to i32
  %3539 = fptoui float %3513 to i32
  %3540 = fptoui float %3514 to i32
  %3541 = mul i32 %3538, %3540
  %3542 = add i32 %3541, %3530
  %3543 = mul i32 %3542, %3539
  %3544 = add i32 %3543, %3529
  %3545 = shl i32 %3544, 2
  %3546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.i32 %3546, 0
  %3548 = and i32 %3547, 1023
  %3549 = lshr i32 %3547, 10
  %3550 = icmp eq i32 %3548, 0
  br i1 %3550, label %3976, label %3551

; <label>:3551                                    ; preds = %3457
  %3552 = and i32 %3547, 1023
  br label %3553

; <label>:3553                                    ; preds = %3679, %3551
  %3554 = phi i32 [ %3629, %3679 ], [ 0, %3551 ]
  %3555 = phi float [ %3680, %3679 ], [ 0.000000e+00, %3551 ]
  %3556 = phi float [ %3681, %3679 ], [ %3471, %3551 ]
  %3557 = phi float [ %3682, %3679 ], [ %3469, %3551 ]
  %3558 = phi float [ %3683, %3679 ], [ 0.000000e+00, %3551 ]
  %3559 = phi float [ %3684, %3679 ], [ 0.000000e+00, %3551 ]
  %3560 = phi float [ %3685, %3679 ], [ %3463, %3551 ]
  %3561 = phi float [ %3686, %3679 ], [ %3464, %3551 ]
  %3562 = phi float [ %3687, %3679 ], [ %3465, %3551 ]
  %3563 = phi float [ %3688, %3679 ], [ %3497, %3551 ]
  %3564 = phi float [ %3689, %3679 ], [ %3498, %3551 ]
  %3565 = phi float [ %3690, %3679 ], [ %3499, %3551 ]
  %3566 = phi float [ %3691, %3679 ], [ %3468, %3551 ]
  %3567 = phi float [ %3692, %3679 ], [ %3467, %3551 ]
  %3568 = phi float [ %3693, %3679 ], [ 0.000000e+00, %3551 ]
  %3569 = phi float [ %3694, %3679 ], [ %3466, %3551 ]
  %3570 = phi float [ %3695, %3679 ], [ %3460, %3551 ]
  %3571 = phi float [ %3696, %3679 ], [ %3461, %3551 ]
  %3572 = phi float [ %3697, %3679 ], [ %3462, %3551 ]
  %3573 = add nuw nsw i32 %3554, %3549
  %3574 = shl i32 %3573, 2
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = shl i32 %3576, 8
  %3578 = or i32 %3577, 48
  %3579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3583 = extractvalue %dx.types.ResRet.f32 %3579, 3
  %3584 = or i32 %3577, 64
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.i32 %3585, 1
  %3588 = or i32 %3577, 80
  %3589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 2
  %3591 = extractvalue %dx.types.ResRet.f32 %3589, 3
  %3592 = or i32 %3577, 96
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3598 = or i32 %3577, 112
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3601 = or i32 %3577, 128
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3607 = or i32 %3577, 144
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = or i32 %3577, 160
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = or i32 %3577, 192
  %3620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.i32 %3620, 0
  %3622 = or i32 %3577, 208
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = or i32 %3577, 248
  %3626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = extractvalue %dx.types.ResRet.f32 %3626, 1
  %3629 = add nuw nsw i32 %3554, 1
  %3630 = bitcast float %3583 to i32
  %3631 = and i32 %3630, 512
  %3632 = icmp eq i32 %3631, 0
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = extractvalue %dx.types.ResRet.f32 %3633, 1
  %3636 = extractvalue %dx.types.ResRet.f32 %3633, 2
  %3637 = extractvalue %dx.types.ResRet.f32 %3633, 3
  %3638 = call float @dx.op.dot4.f32(i32 56, float %3634, float %3635, float %3636, float %3637, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3639 = or i32 %3577, 16
  %3640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.ResRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.ResRet.f32 %3640, 2
  %3644 = extractvalue %dx.types.ResRet.f32 %3640, 3
  %3645 = call float @dx.op.dot4.f32(i32 56, float %3641, float %3642, float %3643, float %3644, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3646 = or i32 %3577, 32
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.ResRet.f32 %3647, 3
  %3652 = call float @dx.op.dot4.f32(i32 56, float %3648, float %3649, float %3650, float %3651, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3653 = call float @dx.op.unary.f32(i32 27, float %3638)  ; Round_ni(value)
  %3654 = call float @dx.op.unary.f32(i32 6, float %3653)  ; FAbs(value)
  %3655 = call float @dx.op.unary.f32(i32 27, float %3645)  ; Round_ni(value)
  %3656 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3657 = call float @dx.op.unary.f32(i32 6, float %3652)  ; FAbs(value)
  %3658 = call float @dx.op.unary.f32(i32 27, float %3657)  ; Round_ni(value)
  %3659 = fadd fast float %3656, %3654
  %3660 = fadd fast float %3659, %3658
  %3661 = fcmp fast oeq float %3660, 0.000000e+00
  %3662 = call float @dx.op.dot4.f32(i32 56, float %3634, float %3635, float %3636, float %3637, float %3506, float %3507, float %3508, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3663 = call float @dx.op.dot4.f32(i32 56, float %3641, float %3642, float %3643, float %3644, float %3506, float %3507, float %3508, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3664 = call float @dx.op.dot4.f32(i32 56, float %3634, float %3635, float %3636, float %3637, float %3509, float %3510, float %3511, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3665 = call float @dx.op.dot4.f32(i32 56, float %3641, float %3642, float %3643, float %3644, float %3509, float %3510, float %3511, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3666 = fsub fast float %3662, %3638
  %3667 = fsub fast float %3664, %3638
  %3668 = fsub fast float %3663, %3645
  %3669 = fsub fast float %3665, %3645
  %3670 = call float @dx.op.dot3.f32(i32 55, float %3580, float %3581, float %3582, float %93, float %95, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %3671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3672 = extractvalue %dx.types.CBufRet.f32 %3671, 2
  %3673 = fadd fast float %3672, %3670
  %3674 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3671, 0
  %3676 = fcmp fast ogt float %3674, %3675
  %3677 = and i1 %3661, %3676
  %3678 = and i1 %3632, %3677
  br i1 %3678, label %3699, label %3679

; <label>:3679                                    ; preds = %3962, %3780, %3699, %3553
  %3680 = phi float [ %3555, %3699 ], [ %3783, %3780 ], [ %3783, %3962 ], [ %3555, %3553 ]
  %3681 = phi float [ %3556, %3699 ], [ %3556, %3780 ], [ %3937, %3962 ], [ %3556, %3553 ]
  %3682 = phi float [ %3557, %3699 ], [ %3557, %3780 ], [ %3935, %3962 ], [ %3557, %3553 ]
  %3683 = phi float [ %3558, %3699 ], [ %3558, %3780 ], [ %3907, %3962 ], [ %3558, %3553 ]
  %3684 = phi float [ %3559, %3699 ], [ %3559, %3780 ], [ %3905, %3962 ], [ %3559, %3553 ]
  %3685 = phi float [ %3560, %3699 ], [ %3560, %3780 ], [ %3972, %3962 ], [ %3560, %3553 ]
  %3686 = phi float [ %3561, %3699 ], [ %3561, %3780 ], [ %3973, %3962 ], [ %3561, %3553 ]
  %3687 = phi float [ %3562, %3699 ], [ %3562, %3780 ], [ %3974, %3962 ], [ %3562, %3553 ]
  %3688 = phi float [ %3563, %3699 ], [ %3563, %3780 ], [ %3886, %3962 ], [ %3563, %3553 ]
  %3689 = phi float [ %3564, %3699 ], [ %3564, %3780 ], [ %3887, %3962 ], [ %3564, %3553 ]
  %3690 = phi float [ %3565, %3699 ], [ %3565, %3780 ], [ %3888, %3962 ], [ %3565, %3553 ]
  %3691 = phi float [ %3566, %3699 ], [ %3566, %3780 ], [ %3915, %3962 ], [ %3566, %3553 ]
  %3692 = phi float [ %3567, %3699 ], [ %3567, %3780 ], [ %3912, %3962 ], [ %3567, %3553 ]
  %3693 = phi float [ %3568, %3699 ], [ %3568, %3780 ], [ %3909, %3962 ], [ %3568, %3553 ]
  %3694 = phi float [ %3569, %3699 ], [ %3569, %3780 ], [ %3903, %3962 ], [ %3569, %3553 ]
  %3695 = phi float [ %3570, %3699 ], [ %3570, %3780 ], [ %3898, %3962 ], [ %3570, %3553 ]
  %3696 = phi float [ %3571, %3699 ], [ %3571, %3780 ], [ %3899, %3962 ], [ %3571, %3553 ]
  %3697 = phi float [ %3572, %3699 ], [ %3572, %3780 ], [ %3900, %3962 ], [ %3572, %3553 ]
  %3698 = icmp eq i32 %3629, %3552
  br i1 %3698, label %3975, label %3553

; <label>:3699                                    ; preds = %3553
  %3700 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3701 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3702 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3703 = extractvalue %dx.types.ResRet.f32 %3589, 1
  %3704 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3705 = extractvalue %dx.types.ResRet.i32 %3585, 3
  %3706 = extractvalue %dx.types.ResRet.i32 %3585, 2
  %3707 = add i32 %3705, 0
  %3708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3707, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3710 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3708, %dx.types.Handle %3709, float %3638, float %3645, float undef, float undef, i32 0, i32 0, i32 undef, float %3666, float %3668, float undef, float %3667, float %3669, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3711 = extractvalue %dx.types.ResRet.f32 %3710, 0
  %3712 = fmul fast float %3711, %3704
  %3713 = fadd fast float %3712, %3703
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = fmul fast float %3638, %3594
  %3716 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3645, float %3715)  ; FMad(a,b,c)
  %3717 = fadd fast float %3716, %3702
  %3718 = fmul fast float %3638, %3596
  %3719 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3645, float %3718)  ; FMad(a,b,c)
  %3720 = fadd fast float %3719, %3701
  %3721 = fmul fast float %3666, %3594
  %3722 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3668, float %3721)  ; FMad(a,b,c)
  %3723 = fmul fast float %3666, %3596
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3668, float %3723)  ; FMad(a,b,c)
  %3725 = fmul fast float %3667, %3594
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3669, float %3725)  ; FMad(a,b,c)
  %3727 = fmul fast float %3667, %3596
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3597, float %3669, float %3727)  ; FMad(a,b,c)
  %3729 = add i32 %3706, 0
  %3730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3729, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3731 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3730, %dx.types.Handle %3709, float %3717, float %3720, float undef, float undef, i32 0, i32 0, i32 undef, float %3722, float %3724, float undef, float %3726, float %3728, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = and i32 %3630, 1024
  %3734 = icmp ne i32 %3733, 0
  %3735 = fcmp fast ogt float %3732, 0x3FE0101020000000
  %3736 = uitofp i1 %3735 to float
  %3737 = select i1 %3734, float %3736, float %3732
  %3738 = and i32 %3630, 8192
  %3739 = icmp ne i32 %3738, 0
  %3740 = select i1 %3739, float %3700, float 1.000000e+00
  %3741 = fmul fast float %3638, 2.000000e+00
  %3742 = fadd fast float %3741, -1.000000e+00
  %3743 = call float @dx.op.unary.f32(i32 6, float %3742)  ; FAbs(value)
  %3744 = fmul fast float %3743, %3627
  %3745 = fsub fast float %3744, %3627
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = fmul fast float %3645, 2.000000e+00
  %3748 = fadd fast float %3747, -1.000000e+00
  %3749 = call float @dx.op.unary.f32(i32 6, float %3748)  ; FAbs(value)
  %3750 = fmul fast float %3749, %3628
  %3751 = fsub fast float %3750, %3628
  %3752 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3753 = fmul fast float %3657, %3590
  %3754 = fsub fast float %3753, %3590
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3714, %3740
  %3757 = fmul fast float %3756, %3711
  %3758 = fmul fast float %3757, %3746
  %3759 = fmul fast float %3758, %3737
  %3760 = fmul fast float %3759, %3752
  %3761 = fmul fast float %3760, %3755
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 1
  %3764 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3765 = fsub fast float %3674, %3764
  %3766 = fmul fast float %3765, %3763
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3768 = fmul fast float %3761, %3591
  %3769 = fadd fast float %3761, %3591
  %3770 = fmul fast float %3769, %3600
  %3771 = fsub fast float %3770, %3600
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = and i32 %3630, 128
  %3774 = icmp ne i32 %3773, 0
  %3775 = select i1 %3774, float %3772, float %3768
  %3776 = fmul fast float %3775, %3767
  %3777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3778 = extractvalue %dx.types.CBufRet.f32 %3777, 0
  %3779 = fcmp fast ugt float %3776, %3778
  br i1 %3779, label %3780, label %3679

; <label>:3780                                    ; preds = %3699
  %3781 = select i1 %3739, float %3776, float 0.000000e+00
  %3782 = fadd fast float %3781, %3555
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  br i1 %3739, label %3679, label %3784

; <label>:3784                                    ; preds = %3780
  %3785 = and i32 %3630, 4
  %3786 = and i32 %3630, 8
  %3787 = add i32 %3586, 0
  %3788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3787, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3790 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3788, %dx.types.Handle %3789, float %3717, float %3720, float undef, float undef, i32 0, i32 0, i32 undef, float %3722, float %3724, float undef, float %3726, float %3728, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = extractvalue %dx.types.ResRet.f32 %3790, 3
  %3795 = bitcast float %3612 to i32
  %3796 = and i32 %3795, 255
  %3797 = uitofp i32 %3796 to float
  %3798 = lshr i32 %3795, 8
  %3799 = and i32 %3798, 255
  %3800 = uitofp i32 %3799 to float
  %3801 = fmul fast float %3794, %3797
  %3802 = fadd fast float %3801, %3800
  %3803 = fmul fast float %3802, 0x3F70101000000000
  %3804 = add i32 %3587, 0
  %3805 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3804, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3806 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3805, %dx.types.Handle %3789, float %3717, float %3720, float undef, float undef, i32 0, i32 0, i32 undef, float %3722, float %3724, float undef, float %3726, float %3728, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3807 = extractvalue %dx.types.ResRet.f32 %3806, 0
  %3808 = extractvalue %dx.types.ResRet.f32 %3806, 1
  %3809 = extractvalue %dx.types.ResRet.f32 %3806, 2
  %3810 = extractvalue %dx.types.ResRet.f32 %3806, 3
  %3811 = bitcast float %3606 to i32
  %3812 = and i32 %3811, 255
  %3813 = uitofp i32 %3812 to float
  %3814 = lshr i32 %3811, 8
  %3815 = and i32 %3814, 255
  %3816 = uitofp i32 %3815 to float
  %3817 = lshr i32 %3811, 16
  %3818 = and i32 %3817, 255
  %3819 = uitofp i32 %3818 to float
  %3820 = fmul fast float %3819, 0x3F70101000000000
  %3821 = fmul fast float %3807, %3813
  %3822 = fadd fast float %3821, %3816
  %3823 = fmul fast float %3822, 0x3F70101000000000
  %3824 = fadd fast float %3808, -5.000000e-01
  %3825 = fadd fast float %3810, -5.000000e-01
  %3826 = fmul fast float %3824, %3820
  %3827 = fmul fast float %3825, %3820
  %3828 = fadd fast float %3826, 5.000000e-01
  %3829 = fadd fast float %3827, 5.000000e-01
  %3830 = fmul fast float %3791, %3615
  %3831 = fmul fast float %3792, %3616
  %3832 = fmul fast float %3793, %3617
  %3833 = fmul fast float %3828, 2.000000e+00
  %3834 = fadd fast float %3833, -1.000000e+00
  %3835 = fmul fast float %3829, 2.000000e+00
  %3836 = fadd fast float %3835, -1.000000e+00
  %3837 = fadd fast float %3834, %3836
  %3838 = fmul fast float %3837, 5.000000e-01
  %3839 = fsub fast float %3834, %3836
  %3840 = fmul fast float %3839, 5.000000e-01
  %3841 = call float @dx.op.unary.f32(i32 6, float %3838)  ; FAbs(value)
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = call float @dx.op.unary.f32(i32 6, float %3840)  ; FAbs(value)
  %3844 = fsub fast float %3842, %3843
  %3845 = call float @dx.op.dot3.f32(i32 55, float %3838, float %3840, float %3844, float %3838, float %3840, float %3844)  ; Dot3(ax,ay,az,bx,by,bz)
  %3846 = call float @dx.op.unary.f32(i32 25, float %3845)  ; Rsqrt(value)
  %3847 = fmul fast float %3838, %3846
  %3848 = fmul fast float %3840, %3846
  %3849 = fmul fast float %3846, %3844
  %3850 = fmul fast float %3849, %3580
  %3851 = fmul fast float %3849, %3581
  %3852 = fmul fast float %3849, %3582
  %3853 = fmul fast float %3847, %3603
  %3854 = fmul fast float %3847, %3604
  %3855 = fmul fast float %3847, %3605
  %3856 = fadd fast float %3853, %3850
  %3857 = fadd fast float %3854, %3851
  %3858 = fadd fast float %3855, %3852
  %3859 = fmul fast float %3848, %3609
  %3860 = fmul fast float %3848, %3610
  %3861 = fmul fast float %3848, %3611
  %3862 = fadd fast float %3856, %3859
  %3863 = fadd fast float %3857, %3860
  %3864 = fadd fast float %3858, %3861
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3862, float %3863, float %3864, float %3862, float %3863, float %3864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = call float @dx.op.unary.f32(i32 25, float %3865)  ; Rsqrt(value)
  %3867 = fmul fast float %3862, %3866
  %3868 = fmul fast float %3863, %3866
  %3869 = fmul fast float %3864, %3866
  %3870 = icmp ne i32 %3786, 0
  %3871 = select i1 %3870, float 1.000000e+00, float 0.000000e+00
  %3872 = fmul fast float %3776, %3871
  %3873 = and i32 %3630, 1
  %3874 = icmp eq i32 %3873, 0
  br i1 %3874, label %3875, label %3879

; <label>:3875                                    ; preds = %3784
  %3876 = fsub fast float %3867, %3563
  %3877 = fsub fast float %3868, %3564
  %3878 = fsub fast float %3869, %3565
  br label %3879

; <label>:3879                                    ; preds = %3875, %3784
  %3880 = phi float [ %3876, %3875 ], [ %3867, %3784 ]
  %3881 = phi float [ %3877, %3875 ], [ %3868, %3784 ]
  %3882 = phi float [ %3878, %3875 ], [ %3869, %3784 ]
  %3883 = fmul float %3882, %3872
  %3884 = fmul float %3881, %3872
  %3885 = fmul float %3880, %3872
  %3886 = fadd fast float %3885, %3563
  %3887 = fadd fast float %3884, %3564
  %3888 = fadd fast float %3883, %3565
  %3889 = icmp ne i32 %3785, 0
  %3890 = select i1 %3889, float 1.000000e+00, float 0.000000e+00
  %3891 = fmul fast float %3776, %3890
  %3892 = fsub fast float %3830, %3570
  %3893 = fsub fast float %3831, %3571
  %3894 = fsub fast float %3832, %3572
  %3895 = fmul fast float %3892, %3891
  %3896 = fmul fast float %3893, %3891
  %3897 = fmul fast float %3894, %3891
  %3898 = fadd fast float %3895, %3570
  %3899 = fadd fast float %3896, %3571
  %3900 = fadd fast float %3897, %3572
  %3901 = fsub fast float %3803, %3569
  %3902 = fmul fast float %3901, %3891
  %3903 = fadd fast float %3902, %3569
  %3904 = fmul fast float %3891, %3559
  %3905 = fsub fast float %3559, %3904
  %3906 = fmul fast float %3891, %3558
  %3907 = fsub fast float %3558, %3906
  %3908 = fadd fast float %3776, %3568
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = fsub fast float %3823, %3567
  %3911 = fmul fast float %3910, %3872
  %3912 = fadd fast float %3911, %3567
  %3913 = fsub fast float %3809, %3566
  %3914 = fmul fast float %3913, %3872
  %3915 = fadd fast float %3914, %3566
  %3916 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3831, float %3832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3920 = fmul fast float %3919, %3916
  %3921 = fadd fast float %3920, %3918
  %3922 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3923 = bitcast float %3618 to i32
  %3924 = and i32 %3923, 65535
  %3925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3924)  ; LegacyF16ToF32(value)
  %3926 = lshr i32 %3923, 16
  %3927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3926)  ; LegacyF16ToF32(value)
  %3928 = fcmp fast oge float %3925, 0.000000e+00
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = select i1 %3928, float %3925, float %3930
  %3932 = fadd fast float %3931, %3927
  %3933 = fsub fast float %3922, %3557
  %3934 = fmul fast float %3933, %3776
  %3935 = fadd fast float %3934, %3557
  %3936 = fmul fast float %3932, %3776
  %3937 = call float @dx.op.binary.f32(i32 35, float %3556, float %3936)  ; FMax(a,b)
  %3938 = and i32 %3630, 16
  %3939 = icmp eq i32 %3938, 0
  br i1 %3939, label %3962, label %3940

; <label>:3940                                    ; preds = %3879
  %3941 = bitcast float %3624 to i32
  %3942 = add i32 %3621, 0
  %3943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3942, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3944 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3943, %dx.types.Handle %3789, float %3717, float %3720, float undef, float undef, i32 0, i32 0, i32 undef, float %3722, float %3724, float undef, float %3726, float %3728, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3948 = and i32 %3941, 65535
  %3949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3948)  ; LegacyF16ToF32(value)
  %3950 = fmul fast float %3945, %3615
  %3951 = fmul fast float %3946, %3616
  %3952 = fmul fast float %3947, %3617
  %3953 = and i32 %3630, 16384
  %3954 = icmp ne i32 %3953, 0
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 0
  %3957 = select i1 %3954, float %3956, float 1.000000e+00
  %3958 = fmul fast float %3957, %3949
  %3959 = fmul fast float %3950, %3958
  %3960 = fmul fast float %3951, %3958
  %3961 = fmul fast float %3952, %3958
  br label %3962

; <label>:3962                                    ; preds = %3940, %3879
  %3963 = phi float [ %3959, %3940 ], [ 0.000000e+00, %3879 ]
  %3964 = phi float [ %3960, %3940 ], [ 0.000000e+00, %3879 ]
  %3965 = phi float [ %3961, %3940 ], [ 0.000000e+00, %3879 ]
  %3966 = fsub fast float %3963, %3560
  %3967 = fsub fast float %3964, %3561
  %3968 = fsub fast float %3965, %3562
  %3969 = fmul fast float %3966, %3776
  %3970 = fmul fast float %3967, %3776
  %3971 = fmul fast float %3968, %3776
  %3972 = fadd fast float %3969, %3560
  %3973 = fadd fast float %3970, %3561
  %3974 = fadd fast float %3971, %3562
  br label %3679

; <label>:3975                                    ; preds = %3679
  br label %3976

; <label>:3976                                    ; preds = %3975, %3457
  %3977 = phi float [ 0.000000e+00, %3457 ], [ %3680, %3975 ]
  %3978 = phi float [ %3471, %3457 ], [ %3681, %3975 ]
  %3979 = phi float [ %3469, %3457 ], [ %3682, %3975 ]
  %3980 = phi float [ 0.000000e+00, %3457 ], [ %3683, %3975 ]
  %3981 = phi float [ 0.000000e+00, %3457 ], [ %3684, %3975 ]
  %3982 = phi float [ %3463, %3457 ], [ %3685, %3975 ]
  %3983 = phi float [ %3464, %3457 ], [ %3686, %3975 ]
  %3984 = phi float [ %3465, %3457 ], [ %3687, %3975 ]
  %3985 = phi float [ %3497, %3457 ], [ %3688, %3975 ]
  %3986 = phi float [ %3498, %3457 ], [ %3689, %3975 ]
  %3987 = phi float [ %3499, %3457 ], [ %3690, %3975 ]
  %3988 = phi float [ %3468, %3457 ], [ %3691, %3975 ]
  %3989 = phi float [ %3467, %3457 ], [ %3692, %3975 ]
  %3990 = phi float [ 0.000000e+00, %3457 ], [ %3693, %3975 ]
  %3991 = phi float [ %3466, %3457 ], [ %3694, %3975 ]
  %3992 = phi float [ %3460, %3457 ], [ %3695, %3975 ]
  %3993 = phi float [ %3461, %3457 ], [ %3696, %3975 ]
  %3994 = phi float [ %3462, %3457 ], [ %3697, %3975 ]
  %3995 = call float @dx.op.dot3.f32(i32 55, float %3985, float %3986, float %3987, float %3985, float %3986, float %3987)  ; Dot3(ax,ay,az,bx,by,bz)
  %3996 = call float @dx.op.unary.f32(i32 25, float %3995)  ; Rsqrt(value)
  %3997 = fmul fast float %3996, %3985
  %3998 = fmul fast float %3996, %3986
  %3999 = fmul fast float %3996, %3987
  %4000 = fadd fast float %3990, %904
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3997, float %3998, float %3999, float %3997, float %3998, float %3999)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = call float @dx.op.unary.f32(i32 25, float %4002)  ; Rsqrt(value)
  %4004 = fmul fast float %4003, %3997
  %4005 = fmul fast float %4003, %3998
  %4006 = fmul fast float %4003, %3999
  %4007 = fadd fast float %3991, 0xBFB99999A0000000
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4009 = fmul fast float %4008, 0x3FF1C71C80000000
  %4010 = call float @dx.op.binary.f32(i32 36, float %3991, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4011 = fsub fast float 1.000000e+00, %4009
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = fmul fast float %4012, %3992
  %4014 = fmul fast float %4012, %3993
  %4015 = fmul fast float %4012, %3994
  %4016 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4017 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4018 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4019 = fmul fast float %4009, %3992
  %4020 = fmul fast float %4009, %3993
  %4021 = fmul fast float %4009, %3994
  %4022 = fadd fast float %4019, %4010
  %4023 = fadd fast float %4020, %4010
  %4024 = fadd fast float %4021, %4010
  %4025 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4026 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4027 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4028 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %4029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.i32 %4029, 3
  %4031 = and i32 %4030, 8
  %4032 = icmp ne i32 %4031, 0
  %4033 = call float @dx.op.binary.f32(i32 35, float %4016, float %3992)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 35, float %4017, float %3992)  ; FMax(a,b)
  %4035 = call float @dx.op.binary.f32(i32 35, float %4018, float %3992)  ; FMax(a,b)
  %4036 = call float @dx.op.dot3.f32(i32 55, float %4016, float %4017, float %4018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4037 = select i1 %185, float %3992, float %4016
  %4038 = select i1 %185, float %4036, float %4017
  %4039 = select i1 %185, float 1.000000e+00, float %4018
  %4040 = select i1 %4032, float %4033, float %4037
  %4041 = select i1 %4032, float %4034, float %4038
  %4042 = select i1 %4032, float %4035, float %4039
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 0
  %4045 = extractvalue %dx.types.CBufRet.f32 %4043, 1
  %4046 = extractvalue %dx.types.CBufRet.f32 %4043, 2
  %4047 = fadd fast float %4044, %143
  %4048 = fadd fast float %4045, %144
  %4049 = fadd fast float %4046, %145
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.CBufRet.f32 %4050, 1
  %4053 = fsub fast float %4047, %4051
  %4054 = fsub fast float %4048, %4052
  %4055 = fmul fast float %4053, %4053
  %4056 = fmul fast float %4054, %4054
  %4057 = fadd fast float %4055, %4056
  %4058 = call float @dx.op.unary.f32(i32 24, float %4057)  ; Sqrt(value)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4050, 2
  %4060 = fcmp fast olt float %4058, %4059
  br i1 %4060, label %4061, label %4128

; <label>:4061                                    ; preds = %3976
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4069 = extractvalue %dx.types.CBufRet.f32 %4064, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4062, 3
  %4072 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4073 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4074 = fadd fast float %4071, %4047
  %4075 = fadd fast float %4072, %4048
  %4076 = fadd fast float %4073, %4049
  %4077 = fmul fast float %4074, %4063
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %4075, float %4065, float %4077)  ; FMad(a,b,c)
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %4076, float %4067, float %4078)  ; FMad(a,b,c)
  %4080 = fmul fast float %4074, %4068
  %4081 = call float @dx.op.tertiary.f32(i32 46, float %4075, float %4069, float %4080)  ; FMad(a,b,c)
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4076, float %4070, float %4081)  ; FMad(a,b,c)
  %4083 = fsub fast float %4079, %4071
  %4084 = fsub fast float %4082, %4072
  %4085 = fsub fast float %4083, %4051
  %4086 = fadd fast float %4085, %4059
  %4087 = fsub fast float %4084, %4052
  %4088 = fadd fast float %4087, %4059
  %4089 = extractvalue %dx.types.CBufRet.f32 %4050, 3
  %4090 = fmul fast float %4086, %4089
  %4091 = fmul fast float %4088, %4089
  %4092 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4093 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4094 = fsub fast float 1.000000e+00, %4092
  %4095 = fsub fast float 1.000000e+00, %4093
  %4096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4094, float %4095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4097 = extractvalue %dx.types.ResRet.f32 %4096, 0
  %4098 = fcmp fast ugt float %4097, 0.000000e+00
  br i1 %4098, label %4099, label %4402

; <label>:4099                                    ; preds = %4061
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4102 = fmul fast float %4101, %4097
  %4103 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4104 = fadd fast float %4103, %4102
  %4105 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4106 = fadd fast float %4104, %4073
  %4107 = fmul fast float %4079, %4067
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4082, float %4070, float %4107)  ; FMad(a,b,c)
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4105, float %4108)  ; FMad(a,b,c)
  %4110 = fsub fast float %4109, %4073
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4113 = fsub fast float %4110, %4112
  %4114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4094, float %4095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = extractvalue %dx.types.ResRet.f32 %4114, 1
  %4117 = extractvalue %dx.types.ResRet.f32 %4114, 2
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4094, float %4095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = fadd fast float %4119, %4115
  %4123 = fmul fast float %4122, 0x3F847AE140000000
  %4124 = fadd fast float %4120, %4116
  %4125 = fmul fast float %4124, 0x3F847AE140000000
  %4126 = fadd fast float %4121, %4117
  %4127 = fmul fast float %4126, 0x3F847AE140000000
  br label %4402

; <label>:4128                                    ; preds = %3976
  %4129 = and i32 %161, 1
  %4130 = icmp eq i32 %4129, 0
  br i1 %4130, label %4402, label %4131

; <label>:4131                                    ; preds = %4128
  %4132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4133 = extractvalue %dx.types.CBufRet.f32 %4132, 0
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 0
  %4136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4137 = extractvalue %dx.types.CBufRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.CBufRet.f32 %4132, 1
  %4139 = extractvalue %dx.types.CBufRet.f32 %4134, 1
  %4140 = extractvalue %dx.types.CBufRet.f32 %4136, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4132, 3
  %4142 = extractvalue %dx.types.CBufRet.f32 %4134, 3
  %4143 = extractvalue %dx.types.CBufRet.f32 %4136, 3
  %4144 = fadd fast float %4141, %4047
  %4145 = fadd fast float %4142, %4048
  %4146 = fadd fast float %4143, %4049
  %4147 = fmul fast float %4144, %4133
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4145, float %4135, float %4147)  ; FMad(a,b,c)
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4137, float %4148)  ; FMad(a,b,c)
  %4150 = fmul fast float %4144, %4138
  %4151 = call float @dx.op.tertiary.f32(i32 46, float %4145, float %4139, float %4150)  ; FMad(a,b,c)
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4140, float %4151)  ; FMad(a,b,c)
  %4153 = fsub fast float %4149, %4141
  %4154 = fsub fast float %4152, %4142
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4159 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.i32 %4162, 0
  %4164 = extractvalue %dx.types.CBufRet.i32 %4162, 1
  %4165 = udiv i32 %4164, %4163
  %4166 = fsub fast float %4153, %4156
  %4167 = fsub fast float %4154, %4157
  %4168 = call float @dx.op.binary.f32(i32 35, float %4166, float 0.000000e+00)  ; FMax(a,b)
  %4169 = call float @dx.op.binary.f32(i32 35, float %4167, float 0.000000e+00)  ; FMax(a,b)
  %4170 = call float @dx.op.binary.f32(i32 36, float %4168, float %4158)  ; FMin(a,b)
  %4171 = call float @dx.op.binary.f32(i32 36, float %4169, float %4159)  ; FMin(a,b)
  %4172 = add i32 %4163, -1
  %4173 = add i32 %4165, -1
  %4174 = fmul fast float %4170, %4161
  %4175 = fmul fast float %4171, %4161
  %4176 = fptoui float %4174 to i32
  %4177 = fptoui float %4175 to i32
  %4178 = call i32 @dx.op.binary.i32(i32 40, i32 %4176, i32 %4172)  ; UMin(a,b)
  %4179 = call i32 @dx.op.binary.i32(i32 40, i32 %4177, i32 %4173)  ; UMin(a,b)
  %4180 = mul i32 %4179, %4163
  %4181 = add i32 %4180, %4178
  %4182 = shl i32 %4181, 2
  %4183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4182, i32 undef)  ; BufferLoad(srv,index,wot)
  %4184 = extractvalue %dx.types.ResRet.i32 %4183, 0
  %4185 = icmp eq i32 %4184, -1
  br i1 %4185, label %4402, label %4186

; <label>:4186                                    ; preds = %4131
  %4187 = mul i32 %4184, 148
  %4188 = add i32 %4187, 4
  %4189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = add i32 %4187, 8
  %4192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4194 = add i32 %4187, 36
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = add i32 %4187, 60
  %4198 = add i32 %4187, 92
  %4199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.i32 %4199, 0
  %4201 = add i32 %4187, 116
  %4202 = fsub fast float %4153, %4190
  %4203 = fsub fast float %4154, %4193
  %4204 = fmul fast float %4161, %4202
  %4205 = fmul fast float %4161, %4203
  %4206 = call float @dx.op.unary.f32(i32 7, float %4204)  ; Saturate(value)
  %4207 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  %4208 = fsub fast float 1.000000e+00, %4207
  %4209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4209, 2
  %4211 = call float @dx.op.unary.f32(i32 83, float %4206)  ; DerivCoarseX(value)
  %4212 = call float @dx.op.unary.f32(i32 83, float %4208)  ; DerivCoarseX(value)
  %4213 = call float @dx.op.unary.f32(i32 84, float %4206)  ; DerivCoarseY(value)
  %4214 = call float @dx.op.unary.f32(i32 84, float %4208)  ; DerivCoarseY(value)
  %4215 = fmul fast float %4211, %4210
  %4216 = fmul fast float %4212, %4210
  %4217 = fmul fast float %4213, %4210
  %4218 = fmul fast float %4214, %4210
  %4219 = call float @dx.op.dot2.f32(i32 54, float %4217, float %4218, float %4217, float %4218)  ; Dot2(ax,ay,bx,by)
  %4220 = call float @dx.op.dot2.f32(i32 54, float %4215, float %4216, float %4215, float %4216)  ; Dot2(ax,ay,bx,by)
  %4221 = call float @dx.op.binary.f32(i32 35, float %4220, float %4219)  ; FMax(a,b)
  %4222 = call float @dx.op.unary.f32(i32 23, float %4221)  ; Log(value)
  %4223 = fmul fast float %4222, 5.000000e-01
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4226 = fadd fast float %4225, %4223
  %4227 = call float @dx.op.binary.f32(i32 35, float %4226, float 0.000000e+00)  ; FMax(a,b)
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 3
  %4230 = fadd fast float %4229, %4227
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 3
  %4233 = fadd fast float %4230, %4232
  %4234 = add i32 %4200, 0
  %4235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4234, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4236 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4235, i32 0)  ; GetDimensions(handle,mipLevel)
  %4237 = extractvalue %dx.types.Dimensions %4236, 0
  %4238 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4237)  ; FirstbitLo(value)
  %4239 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.i32 %4239, 1
  %4241 = sub nsw i32 %4240, %4238
  %4242 = sitofp i32 %4241 to float
  %4243 = fsub fast float %4233, %4242
  %4244 = call float @dx.op.binary.f32(i32 35, float %4243, float 0.000000e+00)  ; FMax(a,b)
  %4245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4235, %dx.types.Handle %37, float %4206, float %4208, float %4196, float undef, i32 0, i32 0, i32 undef, float %4244)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = fcmp ule float %4246, 0x3FE0101020000000
  %4248 = extractvalue %dx.types.CBufRet.i32 %4239, 0
  %4249 = and i32 %4248, 128
  %4250 = icmp ne i32 %4249, 0
  %4251 = and i1 %4247, %4250
  br i1 %4251, label %4402, label %4252

; <label>:4252                                    ; preds = %4186
  %4253 = add i32 %4187, 20
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = add i32 %4187, 24
  %4257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4256, i32 undef)  ; BufferLoad(srv,index,wot)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = add i32 %4187, 40
  %4260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4259, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = add i32 %4187, 96
  %4263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4262, i32 undef)  ; BufferLoad(srv,index,wot)
  %4264 = extractvalue %dx.types.ResRet.i32 %4263, 0
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 2
  %4267 = fmul fast float %4266, %4206
  %4268 = fmul fast float %4266, %4208
  %4269 = extractvalue %dx.types.CBufRet.f32 %4265, 3
  %4270 = fadd fast float %4267, %4269
  %4271 = fadd fast float %4268, %4269
  %4272 = add i32 %4264, 0
  %4273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4272, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4274 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4273, i32 0)  ; GetDimensions(handle,mipLevel)
  %4275 = extractvalue %dx.types.Dimensions %4274, 0
  %4276 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4275)  ; FirstbitLo(value)
  %4277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.i32 %4277, 1
  %4279 = sub nsw i32 %4278, %4276
  %4280 = sitofp i32 %4279 to float
  %4281 = fsub fast float %4230, %4280
  %4282 = call float @dx.op.binary.f32(i32 35, float %4281, float 0.000000e+00)  ; FMax(a,b)
  %4283 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4273, %dx.types.Handle %37, float %4270, float %4271, float %4261, float undef, i32 0, i32 0, i32 undef, float %4282)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = fmul fast float %4284, %4255
  %4286 = fadd fast float %4285, %4258
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4290 = extractvalue %dx.types.CBufRet.f32 %4287, 2
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 3
  %4295 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4296 = fadd fast float %4292, %4153
  %4297 = fadd fast float %4294, %4154
  %4298 = fadd fast float %4286, %4295
  %4299 = fmul fast float %4296, %4288
  %4300 = call float @dx.op.tertiary.f32(i32 46, float %4297, float %4289, float %4299)  ; FMad(a,b,c)
  %4301 = call float @dx.op.tertiary.f32(i32 46, float %4298, float %4290, float %4300)  ; FMad(a,b,c)
  %4302 = fsub fast float %4301, %4295
  %4303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4304 = extractvalue %dx.types.CBufRet.f32 %4303, 2
  %4305 = fsub fast float %4302, %4304
  %4306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.i32 %4306, 0
  %4308 = call i32 @dx.op.binary.i32(i32 40, i32 %4184, i32 %4307)  ; UMin(a,b)
  %4309 = mul i32 %4308, 36
  %4310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4309, i32 undef)  ; BufferLoad(srv,index,wot)
  %4311 = extractvalue %dx.types.ResRet.i32 %4310, 0
  %4312 = add i32 %4309, 4
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = fmul fast float %4314, %4206
  %4316 = fmul fast float %4314, %4208
  %4317 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4318 = fadd fast float %4315, %4317
  %4319 = fadd fast float %4316, %4317
  %4320 = icmp eq i32 %4311, 0
  br i1 %4320, label %4389, label %4321

; <label>:4321                                    ; preds = %4252
  br label %4322

; <label>:4322                                    ; preds = %4379, %4321
  %4323 = phi float [ %4380, %4379 ], [ 0.000000e+00, %4321 ]
  %4324 = phi float [ %4381, %4379 ], [ 0.000000e+00, %4321 ]
  %4325 = phi float [ %4382, %4379 ], [ 0.000000e+00, %4321 ]
  %4326 = phi float [ %4383, %4379 ], [ 0.000000e+00, %4321 ]
  %4327 = phi float [ %4384, %4379 ], [ 0.000000e+00, %4321 ]
  %4328 = phi float [ %4385, %4379 ], [ 0.000000e+00, %4321 ]
  %4329 = phi i32 [ %4386, %4379 ], [ 0, %4321 ]
  %4330 = shl i32 %4329, 2
  %4331 = add i32 %4197, %4330
  %4332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4331, i32 undef)  ; BufferLoad(srv,index,wot)
  %4333 = extractvalue %dx.types.ResRet.f32 %4332, 0
  %4334 = add i32 %4201, %4330
  %4335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.i32 %4335, 0
  %4337 = add i32 %4336, 0
  %4338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4337, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4339 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4338, i32 0)  ; GetDimensions(handle,mipLevel)
  %4340 = extractvalue %dx.types.Dimensions %4339, 0
  %4341 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4340)  ; FirstbitLo(value)
  %4342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.i32 %4342, 1
  %4344 = sub nsw i32 %4343, %4341
  %4345 = sitofp i32 %4344 to float
  %4346 = fsub fast float %4230, %4345
  %4347 = call float @dx.op.binary.f32(i32 35, float %4346, float 0.000000e+00)  ; FMax(a,b)
  %4348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4338, %dx.types.Handle %37, float %4318, float %4319, float %4333, float undef, i32 0, i32 0, i32 undef, float %4347)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = fcmp fast ogt float %4349, 0.000000e+00
  br i1 %4350, label %4351, label %4379

; <label>:4351                                    ; preds = %4322
  %4352 = add i32 %4312, %4330
  %4353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4352, i32 undef)  ; BufferLoad(srv,index,wot)
  %4354 = extractvalue %dx.types.ResRet.i32 %4353, 0
  %4355 = and i32 %4354, 32767
  %4356 = mul nuw nsw i32 %4355, 928
  %4357 = add nuw nsw i32 %4356, 48
  %4358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.f32 %4358, 0
  %4360 = extractvalue %dx.types.ResRet.f32 %4358, 1
  %4361 = extractvalue %dx.types.ResRet.f32 %4358, 2
  %4362 = add nuw nsw i32 %4356, 60
  %4363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = extractvalue %dx.types.ResRet.f32 %4363, 1
  %4366 = extractvalue %dx.types.ResRet.f32 %4363, 2
  %4367 = fmul fast float %4359, %4349
  %4368 = fmul fast float %4360, %4349
  %4369 = fmul fast float %4361, %4349
  %4370 = fadd fast float %4367, %4323
  %4371 = fadd fast float %4368, %4324
  %4372 = fadd fast float %4369, %4325
  %4373 = fmul fast float %4364, %4349
  %4374 = fmul fast float %4365, %4349
  %4375 = fmul fast float %4366, %4349
  %4376 = fadd fast float %4373, %4326
  %4377 = fadd fast float %4374, %4327
  %4378 = fadd fast float %4375, %4328
  br label %4379

; <label>:4379                                    ; preds = %4351, %4322
  %4380 = phi float [ %4370, %4351 ], [ %4323, %4322 ]
  %4381 = phi float [ %4371, %4351 ], [ %4324, %4322 ]
  %4382 = phi float [ %4372, %4351 ], [ %4325, %4322 ]
  %4383 = phi float [ %4376, %4351 ], [ %4326, %4322 ]
  %4384 = phi float [ %4377, %4351 ], [ %4327, %4322 ]
  %4385 = phi float [ %4378, %4351 ], [ %4328, %4322 ]
  %4386 = add nuw i32 %4329, 1
  %4387 = icmp eq i32 %4386, %4311
  br i1 %4387, label %4388, label %4322

; <label>:4388                                    ; preds = %4379
  br label %4389

; <label>:4389                                    ; preds = %4388, %4252
  %4390 = phi float [ 0.000000e+00, %4252 ], [ %4380, %4388 ]
  %4391 = phi float [ 0.000000e+00, %4252 ], [ %4381, %4388 ]
  %4392 = phi float [ 0.000000e+00, %4252 ], [ %4382, %4388 ]
  %4393 = phi float [ 0.000000e+00, %4252 ], [ %4383, %4388 ]
  %4394 = phi float [ 0.000000e+00, %4252 ], [ %4384, %4388 ]
  %4395 = phi float [ 0.000000e+00, %4252 ], [ %4385, %4388 ]
  %4396 = fadd fast float %4393, %4390
  %4397 = fmul fast float %4396, 0x3F847AE140000000
  %4398 = fadd fast float %4394, %4391
  %4399 = fmul fast float %4398, 0x3F847AE140000000
  %4400 = fadd fast float %4395, %4392
  %4401 = fmul fast float %4400, 0x3F847AE140000000
  br label %4402

; <label>:4402                                    ; preds = %4389, %4186, %4131, %4128, %4099, %4061
  %4403 = phi float [ %4113, %4099 ], [ -1.310720e+05, %4061 ], [ %4305, %4389 ], [ -1.310720e+05, %4131 ], [ -1.310720e+05, %4186 ], [ -1.310720e+05, %4128 ]
  %4404 = phi float [ %4123, %4099 ], [ 0.000000e+00, %4061 ], [ %4397, %4389 ], [ 0.000000e+00, %4131 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4128 ]
  %4405 = phi float [ %4125, %4099 ], [ 0.000000e+00, %4061 ], [ %4399, %4389 ], [ 0.000000e+00, %4131 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4128 ]
  %4406 = phi float [ %4127, %4099 ], [ 0.000000e+00, %4061 ], [ %4401, %4389 ], [ 0.000000e+00, %4131 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4128 ]
  %4407 = phi i1 [ true, %4099 ], [ false, %4061 ], [ true, %4389 ], [ false, %4131 ], [ false, %4186 ], [ false, %4128 ]
  %4408 = and i32 %161, 3
  %4409 = icmp eq i32 %4408, 1
  %4410 = select i1 %4409, float 1.000000e+00, float 0.000000e+00
  %4411 = fsub fast float %4403, %145
  %4412 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4413 = select i1 %4407, float %4412, float 1.000000e+00
  %4414 = fmul fast float %4413, %4410
  %4415 = icmp eq i32 %4408, 3
  %4416 = select i1 %4415, float 1.000000e+00, float %4414
  %4417 = call float @dx.op.binary.f32(i32 35, float %3977, float %4416)  ; FMax(a,b)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = fcmp fast une float %4418, 0.000000e+00
  %4420 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = call float @dx.op.unary.f32(i32 25, float %4420)  ; Rsqrt(value)
  br i1 %4419, label %4429, label %4422

; <label>:4422                                    ; preds = %4402
  %4423 = fmul fast float %4421, %143
  %4424 = fmul fast float %4421, %144
  %4425 = fmul fast float %4421, %145
  %4426 = fsub fast float -0.000000e+00, %4423
  %4427 = fsub fast float -0.000000e+00, %4424
  %4428 = fsub fast float -0.000000e+00, %4425
  br label %4597

; <label>:4429                                    ; preds = %4402
  %4430 = fmul fast float %143, %4421
  %4431 = fsub fast float -0.000000e+00, %4430
  %4432 = fmul fast float %144, %4421
  %4433 = fsub fast float -0.000000e+00, %4432
  %4434 = fmul fast float %145, %4421
  %4435 = fsub fast float -0.000000e+00, %4434
  %4436 = call float @dx.op.dot3.f32(i32 55, float %4431, float %4433, float %4435, float %93, float %95, float %97)  ; Dot3(ax,ay,az,bx,by,bz)
  %4437 = fmul fast float %4418, 2.500000e+00
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fmul fast float %4418, 0x4013FFFFE0000000
  %4440 = fadd fast float %4439, 0xBFFFFFFFE0000000
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fmul fast float %4418, 0x4004000020000000
  %4443 = fadd fast float %4442, 0xBFF8000040000000
  %4444 = call float @dx.op.unary.f32(i32 7, float %4443)  ; Saturate(value)
  %4445 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4446 = fmul fast float %4007, 1.000000e+01
  %4447 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4448 = fmul fast float %4447, 2.000000e+00
  %4449 = fsub fast float 3.000000e+00, %4448
  %4450 = fmul fast float %4447, %4447
  %4451 = fmul fast float %4450, %4449
  %4452 = fsub fast float 1.000000e+00, %4451
  %4453 = fsub fast float 0x3FE3333340000000, %4028
  %4454 = fmul fast float %4453, 0x400AAAAAA0000000
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = fmul fast float %4452, %4455
  %4457 = fmul fast float %4040, 0x3FEA2B8620000000
  %4458 = fmul fast float %4041, 0x3FEA2B8620000000
  %4459 = fmul fast float %4042, 0x3FEA2B8620000000
  %4460 = fadd fast float %4457, 0x3FC81DFBA0000000
  %4461 = fmul fast float %4460, %4040
  %4462 = fadd fast float %4461, 0x3F910E6020000000
  %4463 = fadd fast float %4458, 0x3FC81DFBA0000000
  %4464 = fmul fast float %4463, %4041
  %4465 = fadd fast float %4464, 0x3F910E6020000000
  %4466 = fadd fast float %4459, 0x3FC81DFBA0000000
  %4467 = fmul fast float %4466, %4042
  %4468 = fadd fast float %4467, 0x3F910E6020000000
  %4469 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4470 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4472 = fsub fast float %4469, %4040
  %4473 = fsub fast float %4470, %4041
  %4474 = fsub fast float %4471, %4042
  %4475 = fmul fast float %4472, %4445
  %4476 = fmul fast float %4475, %4456
  %4477 = fmul fast float %4473, %4445
  %4478 = fmul fast float %4477, %4456
  %4479 = fmul fast float %4474, %4445
  %4480 = fmul fast float %4479, %4456
  %4481 = fadd fast float %4476, %4040
  %4482 = fadd fast float %4478, %4041
  %4483 = fadd fast float %4480, %4042
  %4484 = fmul fast float %3988, %3988
  %4485 = fmul fast float %4484, %4484
  %4486 = fadd fast float %4441, 1.000000e+00
  %4487 = fsub fast float %4486, %4456
  %4488 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4489 = call float @dx.op.dot3.f32(i32 55, float %93, float %95, float %97, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fsub fast float 1.000000e+00, %4485
  %4492 = call float @dx.op.binary.f32(i32 36, float %4488, float %4491)  ; FMin(a,b)
  %4493 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4494 = call float @dx.op.binary.f32(i32 35, float %4492, float %4493)  ; FMax(a,b)
  %4495 = fadd fast float %4490, 0xBFE4CCCCC0000000
  %4496 = fmul fast float %4495, 0x4006DB6DA0000000
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4497, 2.000000e+00
  %4499 = fsub fast float 3.000000e+00, %4498
  %4500 = bitcast float %4025 to i32
  %4501 = ashr i32 %4500, 1
  %4502 = add nsw i32 %4501, 532487669
  %4503 = bitcast i32 %4502 to float
  %4504 = fsub fast float 1.000000e+00, %4503
  %4505 = bitcast float %4504 to i32
  %4506 = sub nsw i32 2129859010, %4505
  %4507 = bitcast i32 %4506 to float
  %4508 = fmul fast float %4507, 2.000000e+00
  %4509 = bitcast float %4026 to i32
  %4510 = ashr i32 %4509, 1
  %4511 = add nsw i32 %4510, 532487669
  %4512 = bitcast i32 %4511 to float
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = bitcast float %4513 to i32
  %4515 = sub nsw i32 2129859010, %4514
  %4516 = bitcast i32 %4515 to float
  %4517 = fmul fast float %4516, 2.000000e+00
  %4518 = bitcast float %4027 to i32
  %4519 = ashr i32 %4518, 1
  %4520 = add nsw i32 %4519, 532487669
  %4521 = bitcast i32 %4520 to float
  %4522 = fsub fast float 1.000000e+00, %4521
  %4523 = bitcast float %4522 to i32
  %4524 = sub nsw i32 2129859010, %4523
  %4525 = bitcast i32 %4524 to float
  %4526 = fmul fast float %4525, 2.000000e+00
  %4527 = fsub fast float 0x4002A9FBE0000000, %4508
  %4528 = fadd fast float %4508, 0x3FD54FDF00000000
  %4529 = bitcast float %4528 to i32
  %4530 = sub nsw i32 2129859010, %4529
  %4531 = bitcast i32 %4530 to float
  %4532 = fmul fast float %4531, %4527
  %4533 = fmul fast float %4532, %4532
  %4534 = fsub fast float 0x4002A9FBE0000000, %4517
  %4535 = fadd fast float %4517, 0x3FD54FDF00000000
  %4536 = bitcast float %4535 to i32
  %4537 = sub nsw i32 2129859010, %4536
  %4538 = bitcast i32 %4537 to float
  %4539 = fmul fast float %4538, %4534
  %4540 = fmul fast float %4539, %4539
  %4541 = fsub fast float 0x4002A9FBE0000000, %4526
  %4542 = fadd fast float %4526, 0x3FD54FDF00000000
  %4543 = bitcast float %4542 to i32
  %4544 = sub nsw i32 2129859010, %4543
  %4545 = bitcast i32 %4544 to float
  %4546 = fmul fast float %4545, %4541
  %4547 = fmul fast float %4546, %4546
  %4548 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4533)  ; FMax(a,b)
  %4549 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4540)  ; FMax(a,b)
  %4550 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4547)  ; FMax(a,b)
  %4551 = fsub fast float 1.000000e+00, %4436
  %4552 = fadd fast float %4551, %4452
  %4553 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4554 = fsub fast float 1.000000e+00, %4416
  %4555 = fmul fast float %4494, %4554
  %4556 = fmul fast float %4497, %4497
  %4557 = fmul fast float %4556, %4555
  %4558 = fmul fast float %4557, %4499
  %4559 = fmul fast float %4554, 0xBFE99999A0000000
  %4560 = fmul fast float %4559, %4445
  %4561 = fmul fast float %4560, %4456
  %4562 = fadd fast float %4561, 1.000000e+00
  %4563 = fadd fast float %4028, -1.000000e+00
  %4564 = fmul fast float %4562, %4563
  %4565 = fadd fast float %4564, 1.000000e+00
  %4566 = fsub fast float %4548, %4025
  %4567 = fsub fast float %4549, %4026
  %4568 = fsub fast float %4550, %4027
  %4569 = fmul fast float %4558, %4566
  %4570 = fmul fast float %4558, %4567
  %4571 = fmul fast float %4558, %4568
  %4572 = fadd fast float %4569, %4025
  %4573 = fadd fast float %4570, %4026
  %4574 = fadd fast float %4571, %4027
  %4575 = fsub fast float %93, %4004
  %4576 = fsub fast float %95, %4005
  %4577 = fsub fast float %97, %4006
  %4578 = fmul fast float %4558, %4575
  %4579 = fmul fast float %4558, %4576
  %4580 = fmul fast float %4558, %4577
  %4581 = fadd fast float %4578, %4004
  %4582 = fadd fast float %4579, %4005
  %4583 = fadd fast float %4580, %4006
  %4584 = fmul fast float %4558, %4553
  %4585 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4586 = fsub fast float 1.000000e+00, %4585
  %4587 = fmul fast float %4584, %4586
  %4588 = fadd fast float %4587, %4585
  %4589 = fsub fast float 1.000000e+00, %3988
  %4590 = fmul fast float %4558, %4589
  %4591 = fadd fast float %4590, %3988
  %4592 = call float @dx.op.dot3.f32(i32 55, float %4581, float %4582, float %4583, float %4581, float %4582, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %4593 = call float @dx.op.unary.f32(i32 25, float %4592)  ; Rsqrt(value)
  %4594 = fmul fast float %4581, %4593
  %4595 = fmul fast float %4582, %4593
  %4596 = fmul fast float %4583, %4593
  br label %4597

; <label>:4597                                    ; preds = %4429, %4422
  %4598 = phi float [ %4428, %4422 ], [ %4435, %4429 ]
  %4599 = phi float [ %4427, %4422 ], [ %4433, %4429 ]
  %4600 = phi float [ %4426, %4422 ], [ %4431, %4429 ]
  %4601 = phi float [ %4425, %4422 ], [ %4434, %4429 ]
  %4602 = phi float [ %4424, %4422 ], [ %4432, %4429 ]
  %4603 = phi float [ %4423, %4422 ], [ %4430, %4429 ]
  %4604 = phi float [ %4025, %4422 ], [ %4572, %4429 ]
  %4605 = phi float [ %4026, %4422 ], [ %4573, %4429 ]
  %4606 = phi float [ %4027, %4422 ], [ %4574, %4429 ]
  %4607 = phi float [ %4004, %4422 ], [ %4594, %4429 ]
  %4608 = phi float [ %4005, %4422 ], [ %4595, %4429 ]
  %4609 = phi float [ %4006, %4422 ], [ %4596, %4429 ]
  %4610 = phi float [ %4040, %4422 ], [ %4481, %4429 ]
  %4611 = phi float [ %4041, %4422 ], [ %4482, %4429 ]
  %4612 = phi float [ %4042, %4422 ], [ %4483, %4429 ]
  %4613 = phi float [ %4028, %4422 ], [ %4588, %4429 ]
  %4614 = phi float [ %3988, %4422 ], [ %4591, %4429 ]
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4618 = fmul fast float %4616, %84
  %4619 = fmul fast float %4617, %85
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4618, float %4619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = fmul fast float %4624, %4622
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fadd fast float %4626, -1.000000e+00
  %4628 = fmul fast float %4627, %4621
  %4629 = fadd fast float %4628, 1.000000e+00
  %4630 = select i1 %185, float 0.000000e+00, float %4606
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %4600, float %4599, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4633 = call float @dx.op.dot3.f32(i32 55, float %4603, float %4602, float %4601, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4634 = fmul fast float %4633, 2.000000e+00
  %4635 = fmul fast float %4634, %4607
  %4636 = fmul fast float %4634, %4608
  %4637 = fmul fast float %4634, %4609
  %4638 = fsub fast float %4603, %4635
  %4639 = fsub fast float %4602, %4636
  %4640 = fsub fast float %4601, %4637
  %4641 = call float @dx.op.binary.f32(i32 36, float %4614, float %4629)  ; FMin(a,b)
  %4642 = fsub fast float 1.000000e+00, %4641
  %4643 = bitcast float %4642 to i32
  %4644 = ashr i32 %4643, 1
  %4645 = add nsw i32 %4644, 532487669
  %4646 = bitcast i32 %4645 to float
  %4647 = fsub fast float 1.000000e+00, %4613
  %4648 = call float @dx.op.binary.f32(i32 35, float %4647, float 0x3F847AE140000000)  ; FMax(a,b)
  %4649 = fmul fast float %4648, %4648
  %4650 = fmul fast float %4649, %4649
  %4651 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4646, float %4650, float %4651, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = fsub fast float 1.000000e+00, %4614
  %4655 = bitcast float %4654 to i32
  %4656 = sub nsw i32 2129859010, %4655
  %4657 = bitcast i32 %4656 to float
  %4658 = call float @dx.op.dot3.f32(i32 55, float %61, float %57, float %53, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = fmul fast float %4658, 0x3FD20DD760000000
  %4660 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %61)  ; FMax(a,b)
  %4661 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = fcmp fast oeq float %4661, 0.000000e+00
  %4663 = fcmp fast oeq float %4660, 0.000000e+00
  %4664 = or i1 %4663, %4662
  br i1 %4664, label %4694, label %4665

; <label>:4665                                    ; preds = %4597
  %4666 = fsub fast float -0.000000e+00, %64
  %4667 = fsub fast float -0.000000e+00, %62
  %4668 = call float @dx.op.unary.f32(i32 24, float %4661)  ; Sqrt(value)
  %4669 = fdiv fast float %4668, %4660
  %4670 = fcmp fast ogt float %4669, 0x3FFB6F8900000000
  %4671 = select i1 %4670, float 0x3FFB6F8900000000, float %4669
  %4672 = fmul fast float %4671, 0x3FE8A23460000000
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = call float @dx.op.binary.f32(i32 35, float %4671, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4675 = fmul fast float %4673, %4660
  %4676 = fmul fast float %4674, 0x3FF279A740000000
  %4677 = fadd fast float %4676, -1.000000e+00
  %4678 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %63, float %4666, float %4667, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %4679 = call float @dx.op.unary.f32(i32 25, float %4678)  ; Rsqrt(value)
  %4680 = fmul fast float %4679, %4666
  %4681 = fmul fast float %4679, %4667
  %4682 = fmul fast float %4679, %63
  %4683 = fmul fast float %4677, %4677
  %4684 = fsub fast float 1.000000e+00, %4683
  %4685 = fmul fast float %4674, 0x40005F8BE0000000
  %4686 = fsub fast float 0x400C5BF8A0000000, %4685
  %4687 = fdiv fast float %4675, %4686
  %4688 = fmul fast float %4687, 0x3FEE31C3C0000000
  %4689 = fmul fast float %4688, %4684
  %4690 = fmul fast float %4674, 0x3FDACB7480000000
  %4691 = fadd fast float %4690, 0xBFD7347680000000
  %4692 = fmul fast float %4691, %4687
  %4693 = fmul fast float %4692, %4684
  br label %4694

; <label>:4694                                    ; preds = %4665, %4597
  %4695 = phi float [ %4680, %4665 ], [ 0.000000e+00, %4597 ]
  %4696 = phi float [ %4681, %4665 ], [ 0.000000e+00, %4597 ]
  %4697 = phi float [ %4682, %4665 ], [ 0.000000e+00, %4597 ]
  %4698 = phi float [ %4689, %4665 ], [ 0.000000e+00, %4597 ]
  %4699 = phi float [ %4693, %4665 ], [ 0.000000e+00, %4597 ]
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4697, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = fmul fast float %4700, %4700
  %4702 = fmul fast float %4701, 0x3FEE471020000000
  %4703 = fadd fast float %4702, 0xBFD42F6020000000
  %4704 = fmul fast float %4660, 0x3FD20DD760000000
  %4705 = fmul fast float %4703, %4699
  %4706 = fmul fast float %4698, 0x3FDF454380000000
  %4707 = fmul fast float %4706, %4700
  %4708 = fadd fast float %4707, %4704
  %4709 = fadd fast float %4708, %4705
  %4710 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4697, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = fmul fast float %4710, 0x3FDF454380000000
  %4712 = fmul fast float %4710, %4710
  %4713 = fmul fast float %4712, 0x3FEE471020000000
  %4714 = fadd fast float %4713, 0xBFD42F6020000000
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4698, float %4699, float 0x3FD20DD760000000, float %4711, float %4714)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %57)  ; FMax(a,b)
  %4717 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4718 = fcmp fast oeq float %4717, 0.000000e+00
  %4719 = fcmp fast oeq float %4716, 0.000000e+00
  %4720 = or i1 %4719, %4718
  br i1 %4720, label %4750, label %4721

; <label>:4721                                    ; preds = %4694
  %4722 = fsub fast float -0.000000e+00, %60
  %4723 = fsub fast float -0.000000e+00, %58
  %4724 = call float @dx.op.unary.f32(i32 24, float %4717)  ; Sqrt(value)
  %4725 = fdiv fast float %4724, %4716
  %4726 = fcmp fast ogt float %4725, 0x3FFB6F8900000000
  %4727 = select i1 %4726, float 0x3FFB6F8900000000, float %4725
  %4728 = fmul fast float %4727, 0x3FE8A23460000000
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = call float @dx.op.binary.f32(i32 35, float %4727, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4731 = fmul fast float %4729, %4716
  %4732 = fmul fast float %4730, 0x3FF279A740000000
  %4733 = fadd fast float %4732, -1.000000e+00
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4722, float %4723, float %59, float %4722, float %4723, float %59)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = call float @dx.op.unary.f32(i32 25, float %4734)  ; Rsqrt(value)
  %4736 = fmul fast float %4735, %4722
  %4737 = fmul fast float %4735, %4723
  %4738 = fmul fast float %4735, %59
  %4739 = fmul fast float %4733, %4733
  %4740 = fsub fast float 1.000000e+00, %4739
  %4741 = fmul fast float %4730, 0x40005F8BE0000000
  %4742 = fsub fast float 0x400C5BF8A0000000, %4741
  %4743 = fdiv fast float %4731, %4742
  %4744 = fmul fast float %4743, 0x3FEE31C3C0000000
  %4745 = fmul fast float %4744, %4740
  %4746 = fmul fast float %4730, 0x3FDACB7480000000
  %4747 = fadd fast float %4746, 0xBFD7347680000000
  %4748 = fmul fast float %4747, %4743
  %4749 = fmul fast float %4748, %4740
  br label %4750

; <label>:4750                                    ; preds = %4721, %4694
  %4751 = phi float [ %4736, %4721 ], [ 0.000000e+00, %4694 ]
  %4752 = phi float [ %4737, %4721 ], [ 0.000000e+00, %4694 ]
  %4753 = phi float [ %4738, %4721 ], [ 0.000000e+00, %4694 ]
  %4754 = phi float [ %4745, %4721 ], [ 0.000000e+00, %4694 ]
  %4755 = phi float [ %4749, %4721 ], [ 0.000000e+00, %4694 ]
  %4756 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %4753, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4757 = fmul fast float %4756, %4756
  %4758 = fmul fast float %4757, 0x3FEE471020000000
  %4759 = fadd fast float %4758, 0xBFD42F6020000000
  %4760 = fmul fast float %4716, 0x3FD20DD760000000
  %4761 = fmul fast float %4759, %4755
  %4762 = fmul fast float %4754, 0x3FDF454380000000
  %4763 = fmul fast float %4762, %4756
  %4764 = fadd fast float %4763, %4760
  %4765 = fadd fast float %4764, %4761
  %4766 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %4753, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4767 = fmul fast float %4766, 0x3FDF454380000000
  %4768 = fmul fast float %4766, %4766
  %4769 = fmul fast float %4768, 0x3FEE471020000000
  %4770 = fadd fast float %4769, 0xBFD42F6020000000
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4716, float %4754, float %4755, float 0x3FD20DD760000000, float %4767, float %4770)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %53)  ; FMax(a,b)
  %4773 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4774 = fcmp fast oeq float %4773, 0.000000e+00
  %4775 = fcmp fast oeq float %4772, 0.000000e+00
  %4776 = or i1 %4775, %4774
  br i1 %4776, label %4806, label %4777

; <label>:4777                                    ; preds = %4750
  %4778 = fsub fast float -0.000000e+00, %56
  %4779 = fsub fast float -0.000000e+00, %54
  %4780 = call float @dx.op.unary.f32(i32 24, float %4773)  ; Sqrt(value)
  %4781 = fdiv fast float %4780, %4772
  %4782 = fcmp fast ogt float %4781, 0x3FFB6F8900000000
  %4783 = select i1 %4782, float 0x3FFB6F8900000000, float %4781
  %4784 = fmul fast float %4783, 0x3FE8A23460000000
  %4785 = call float @dx.op.unary.f32(i32 7, float %4784)  ; Saturate(value)
  %4786 = call float @dx.op.binary.f32(i32 35, float %4783, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4787 = fmul fast float %4785, %4772
  %4788 = fmul fast float %4786, 0x3FF279A740000000
  %4789 = fadd fast float %4788, -1.000000e+00
  %4790 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4779, float %55, float %4778, float %4779, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = call float @dx.op.unary.f32(i32 25, float %4790)  ; Rsqrt(value)
  %4792 = fmul fast float %4791, %4778
  %4793 = fmul fast float %4791, %4779
  %4794 = fmul fast float %4791, %55
  %4795 = fmul fast float %4789, %4789
  %4796 = fsub fast float 1.000000e+00, %4795
  %4797 = fmul fast float %4786, 0x40005F8BE0000000
  %4798 = fsub fast float 0x400C5BF8A0000000, %4797
  %4799 = fdiv fast float %4787, %4798
  %4800 = fmul fast float %4799, 0x3FEE31C3C0000000
  %4801 = fmul fast float %4800, %4796
  %4802 = fmul fast float %4786, 0x3FDACB7480000000
  %4803 = fadd fast float %4802, 0xBFD7347680000000
  %4804 = fmul fast float %4803, %4799
  %4805 = fmul fast float %4804, %4796
  br label %4806

; <label>:4806                                    ; preds = %4777, %4750
  %4807 = phi float [ %4792, %4777 ], [ 0.000000e+00, %4750 ]
  %4808 = phi float [ %4793, %4777 ], [ 0.000000e+00, %4750 ]
  %4809 = phi float [ %4794, %4777 ], [ 0.000000e+00, %4750 ]
  %4810 = phi float [ %4801, %4777 ], [ 0.000000e+00, %4750 ]
  %4811 = phi float [ %4805, %4777 ], [ 0.000000e+00, %4750 ]
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4807, float %4808, float %4809, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = fmul fast float %4812, %4812
  %4814 = fmul fast float %4813, 0x3FEE471020000000
  %4815 = fadd fast float %4814, 0xBFD42F6020000000
  %4816 = fmul fast float %4772, 0x3FD20DD760000000
  %4817 = fmul fast float %4815, %4811
  %4818 = fmul fast float %4810, 0x3FDF454380000000
  %4819 = fmul fast float %4818, %4812
  %4820 = fadd fast float %4819, %4816
  %4821 = fadd fast float %4820, %4817
  %4822 = call float @dx.op.dot3.f32(i32 55, float %4807, float %4808, float %4809, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4823 = fmul fast float %4822, 0x3FDF454380000000
  %4824 = fmul fast float %4822, %4822
  %4825 = fmul fast float %4824, 0x3FEE471020000000
  %4826 = fadd fast float %4825, 0xBFD42F6020000000
  %4827 = call float @dx.op.dot3.f32(i32 55, float %4772, float %4810, float %4811, float 0x3FD20DD760000000, float %4823, float %4826)  ; Dot3(ax,ay,az,bx,by,bz)
  %4828 = call float @dx.op.binary.f32(i32 35, float %4709, float 0.000000e+00)  ; FMax(a,b)
  %4829 = call float @dx.op.binary.f32(i32 35, float %4765, float 0.000000e+00)  ; FMax(a,b)
  %4830 = call float @dx.op.binary.f32(i32 35, float %4821, float 0.000000e+00)  ; FMax(a,b)
  %4831 = call float @dx.op.binary.f32(i32 35, float %4715, float 0.000000e+00)  ; FMax(a,b)
  %4832 = call float @dx.op.binary.f32(i32 35, float %4771, float 0.000000e+00)  ; FMax(a,b)
  %4833 = call float @dx.op.binary.f32(i32 35, float %4827, float 0.000000e+00)  ; FMax(a,b)
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4836 = call float @dx.op.binary.f32(i32 36, float %4610, float %4835)  ; FMin(a,b)
  %4837 = fmul fast float %4836, %4642
  %4838 = fsub fast float 1.000000e+00, %4837
  %4839 = bitcast float %4838 to i32
  %4840 = sub nsw i32 2129859010, %4839
  %4841 = bitcast i32 %4840 to float
  %4842 = call float @dx.op.binary.f32(i32 36, float %4611, float %4835)  ; FMin(a,b)
  %4843 = fmul fast float %4842, %4642
  %4844 = fsub fast float 1.000000e+00, %4843
  %4845 = bitcast float %4844 to i32
  %4846 = sub nsw i32 2129859010, %4845
  %4847 = bitcast i32 %4846 to float
  %4848 = call float @dx.op.binary.f32(i32 36, float %4612, float %4835)  ; FMin(a,b)
  %4849 = fmul fast float %4848, %4642
  %4850 = fsub fast float 1.000000e+00, %4849
  %4851 = bitcast float %4850 to i32
  %4852 = sub nsw i32 2129859010, %4851
  %4853 = bitcast i32 %4852 to float
  %4854 = fmul fast float %4828, %4641
  %4855 = fmul fast float %4854, %4841
  %4856 = fmul fast float %4829, %4641
  %4857 = fmul fast float %4856, %4847
  %4858 = fmul fast float %4830, %4641
  %4859 = fmul fast float %4858, %4853
  %4860 = call float @dx.op.binary.f32(i32 36, float %4604, float %4835)  ; FMin(a,b)
  %4861 = fmul fast float %4860, %4642
  %4862 = fsub fast float 1.000000e+00, %4861
  %4863 = bitcast float %4862 to i32
  %4864 = sub nsw i32 2129859010, %4863
  %4865 = bitcast i32 %4864 to float
  %4866 = call float @dx.op.binary.f32(i32 36, float %4605, float %4835)  ; FMin(a,b)
  %4867 = fmul fast float %4866, %4642
  %4868 = fsub fast float 1.000000e+00, %4867
  %4869 = bitcast float %4868 to i32
  %4870 = sub nsw i32 2129859010, %4869
  %4871 = bitcast i32 %4870 to float
  %4872 = call float @dx.op.binary.f32(i32 36, float %4630, float %4835)  ; FMin(a,b)
  %4873 = fmul fast float %4872, %4642
  %4874 = fsub fast float 1.000000e+00, %4873
  %4875 = bitcast float %4874 to i32
  %4876 = sub nsw i32 2129859010, %4875
  %4877 = bitcast i32 %4876 to float
  %4878 = fmul fast float %4831, %4641
  %4879 = fmul fast float %4878, %4865
  %4880 = fmul fast float %4832, %4641
  %4881 = fmul fast float %4880, %4871
  %4882 = fmul fast float %4833, %4641
  %4883 = fmul fast float %4882, %4877
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4857, float %4859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = select i1 %185, float 0.000000e+00, float %4855
  %4886 = select i1 %185, float %4884, float %4857
  %4887 = select i1 %185, float 0.000000e+00, float %4859
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4879, float %4881, float %4883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = select i1 %185, float 0.000000e+00, float %4879
  %4890 = select i1 %185, float %4888, float %4881
  %4891 = select i1 %185, float 0.000000e+00, float %4883
  %4892 = fmul fast float %4632, 9.843750e-01
  %4893 = fmul fast float %4613, 9.843750e-01
  %4894 = fadd fast float %4892, 7.812500e-03
  %4895 = fadd fast float %4893, 7.812500e-03
  %4896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4894, float %4895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 3
  %4899 = fmul fast float %4897, %4604
  %4900 = fmul fast float %4897, %4605
  %4901 = fmul fast float %4897, %4630
  %4902 = fadd fast float %4899, %4898
  %4903 = fadd fast float %4900, %4898
  %4904 = fadd fast float %4901, %4898
  %4905 = fcmp fast ogt float %3981, 0.000000e+00
  br i1 %4905, label %4906, label %4932

; <label>:4906                                    ; preds = %4806
  %4907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3981, float %4632, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.ResRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.ResRet.f32 %4907, 2
  %4911 = fadd fast float %4908, -5.000000e-01
  %4912 = fadd fast float %4909, -5.000000e-01
  %4913 = fadd fast float %4910, -5.000000e-01
  %4914 = fsub fast float 1.000000e+00, %4604
  %4915 = fsub fast float 1.000000e+00, %4605
  %4916 = fsub fast float 1.000000e+00, %4630
  %4917 = fmul fast float %4604, 4.000000e+00
  %4918 = fmul fast float %4917, %4914
  %4919 = fmul fast float %4918, %4911
  %4920 = fmul fast float %4605, 4.000000e+00
  %4921 = fmul fast float %4920, %4915
  %4922 = fmul fast float %4921, %4912
  %4923 = fmul fast float %4630, 4.000000e+00
  %4924 = fmul fast float %4923, %4916
  %4925 = fmul fast float %4924, %4913
  %4926 = fadd fast float %4919, %4902
  %4927 = fadd fast float %4922, %4903
  %4928 = fadd fast float %4925, %4904
  %4929 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  br label %4932

; <label>:4932                                    ; preds = %4906, %4806
  %4933 = phi float [ %4929, %4906 ], [ %4902, %4806 ]
  %4934 = phi float [ %4930, %4906 ], [ %4903, %4806 ]
  %4935 = phi float [ %4931, %4906 ], [ %4904, %4806 ]
  %4936 = call float @dx.op.binary.f32(i32 35, float %4934, float %4935)  ; FMax(a,b)
  %4937 = call float @dx.op.binary.f32(i32 35, float %4933, float %4936)  ; FMax(a,b)
  %4938 = fsub fast float 1.000000e+00, %4937
  %4939 = fmul fast float %4937, %4613
  %4940 = fadd fast float %4939, %4613
  %4941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4942 = extractvalue %dx.types.CBufRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.CBufRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.CBufRet.f32 %4941, 2
  %4945 = extractvalue %dx.types.CBufRet.f32 %4941, 3
  %4946 = fmul fast float %4940, %4942
  %4947 = fadd fast float %4946, %4943
  %4948 = call float @dx.op.unary.f32(i32 7, float %4947)  ; Saturate(value)
  %4949 = fmul fast float %4944, %4940
  %4950 = fadd fast float %4949, %4945
  %4951 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4952 = fsub fast float 1.000000e+00, %4653
  %4953 = fadd fast float %4952, %4951
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = fcmp fast olt float %4954, 1.000000e+00
  br i1 %4955, label %4956, label %5811

; <label>:4956                                    ; preds = %4932
  %4957 = fcmp fast olt float %4948, 1.000000e+00
  %4958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4958, 0
  %4960 = fcmp fast ogt float %4959, 0.000000e+00
  %4961 = or i1 %4957, %4960
  %4962 = or i1 %4957, %4960
  %4963 = xor i1 %4962, true
  %4964 = zext i1 %4963 to i32
  br i1 %4961, label %4965, label %5208

; <label>:4965                                    ; preds = %4956
  %4966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.f32 %4966, 0
  %4968 = extractvalue %dx.types.CBufRet.f32 %4966, 1
  %4969 = extractvalue %dx.types.CBufRet.f32 %4966, 2
  %4970 = extractvalue %dx.types.CBufRet.f32 %4966, 3
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = extractvalue %dx.types.CBufRet.f32 %4971, 2
  %4975 = extractvalue %dx.types.CBufRet.f32 %4971, 3
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = extractvalue %dx.types.CBufRet.f32 %4976, 1
  %4979 = extractvalue %dx.types.CBufRet.f32 %4976, 2
  %4980 = extractvalue %dx.types.CBufRet.f32 %4976, 3
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4984 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %4985 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.f32 %4986, 0
  %4988 = extractvalue %dx.types.CBufRet.f32 %4986, 1
  %4989 = extractvalue %dx.types.CBufRet.f32 %4986, 2
  %4990 = extractvalue %dx.types.CBufRet.f32 %4986, 3
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %4994 = extractvalue %dx.types.CBufRet.f32 %4991, 2
  %4995 = extractvalue %dx.types.CBufRet.f32 %4991, 3
  %4996 = call float @dx.op.dot3.f32(i32 55, float %4992, float %4993, float %4994, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = call float @dx.op.unary.f32(i32 6, float %4997)  ; FAbs(value)
  %4999 = fmul fast float %4998, 8.000000e+00
  %5000 = fadd fast float %4999, -6.000000e+00
  %5001 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5002 = fmul fast float %4996, 8.000000e+00
  %5003 = fmul fast float %5002, %4959
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = fcmp fast ogt float %5004, 0.000000e+00
  br i1 %5005, label %5006, label %5183, !dx.controlflow.hints !85

; <label>:5006                                    ; preds = %4965
  %5007 = extractvalue %dx.types.CBufRet.f32 %4958, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %4958, 2
  %5009 = fsub fast float %5007, %5008
  %5010 = fmul fast float %5009, %4613
  %5011 = fadd fast float %5010, %5008
  %5012 = fmul fast float %198, 2.000000e+00
  %5013 = fmul fast float %199, 2.000000e+00
  %5014 = fadd fast float %5012, -1.000000e+00
  %5015 = fadd fast float %5013, -1.000000e+00
  %5016 = fmul fast float %5011, %5014
  %5017 = fmul fast float %5011, %5015
  %5018 = fadd fast float %5016, %84
  %5019 = fadd fast float %5017, %85
  %5020 = fmul fast float %5018, %4616
  %5021 = fmul fast float %5019, %4617
  %5022 = fadd fast float %4613, 0xBFE3333340000000
  %5023 = fmul fast float %5022, 0x4004000020000000
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = call float @dx.op.unary.f32(i32 7, float %5024)  ; Saturate(value)
  %5026 = fmul fast float %5025, 3.000000e+00
  %5027 = fadd fast float %5026, %198
  %5028 = call float @dx.op.unary.f32(i32 27, float %5027)  ; Round_ni(value)
  %5029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5020, float %5021, float %5028, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5030 = extractvalue %dx.types.ResRet.f32 %5029, 0
  %5031 = fcmp fast une float %5030, 0xFFF0000000000000
  %5032 = fcmp fast une float %5030, 0x7FF0000000000000
  %5033 = and i1 %5031, %5032
  %5034 = fcmp fast olt float %5030, 0.000000e+00
  %5035 = call float @dx.op.unary.f32(i32 6, float %5030)  ; FAbs(value)
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = select i1 %5033, float 1.000000e+00, float 0.000000e+00
  %5038 = fmul fast float %5037, %5004
  %5039 = fcmp fast ogt float %5038, 0.000000e+00
  br i1 %5039, label %5040, label %5183, !dx.controlflow.hints !86

; <label>:5040                                    ; preds = %5006
  %5041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.CBufRet.f32 %5041, 1
  %5044 = extractvalue %dx.types.CBufRet.f32 %5041, 2
  %5045 = select i1 %5034, float 0.000000e+00, float %5042
  %5046 = select i1 %5034, float 0.000000e+00, float %5043
  %5047 = select i1 %5034, float 0.000000e+00, float %5044
  %5048 = select i1 %5034, float %4967, float %4982
  %5049 = select i1 %5034, float %4972, float %4987
  %5050 = select i1 %5034, float %4977, float %4992
  %5051 = select i1 %5034, float %4968, float %4983
  %5052 = select i1 %5034, float %4973, float %4988
  %5053 = select i1 %5034, float %4978, float %4993
  %5054 = select i1 %5034, float %4969, float %4984
  %5055 = select i1 %5034, float %4974, float %4989
  %5056 = select i1 %5034, float %4979, float %4994
  %5057 = select i1 %5034, float %4970, float %4985
  %5058 = select i1 %5034, float %4975, float %4990
  %5059 = select i1 %5034, float %4980, float %4995
  %5060 = fadd fast float %5045, %143
  %5061 = fadd fast float %5046, %144
  %5062 = fadd fast float %5047, %145
  %5063 = fmul fast float %5060, %5048
  %5064 = call float @dx.op.tertiary.f32(i32 46, float %5061, float %5051, float %5063)  ; FMad(a,b,c)
  %5065 = call float @dx.op.tertiary.f32(i32 46, float %5062, float %5054, float %5064)  ; FMad(a,b,c)
  %5066 = fadd fast float %5065, %5057
  %5067 = fmul fast float %5060, %5049
  %5068 = call float @dx.op.tertiary.f32(i32 46, float %5061, float %5052, float %5067)  ; FMad(a,b,c)
  %5069 = call float @dx.op.tertiary.f32(i32 46, float %5062, float %5055, float %5068)  ; FMad(a,b,c)
  %5070 = fadd fast float %5069, %5058
  %5071 = fmul fast float %5060, %5050
  %5072 = call float @dx.op.tertiary.f32(i32 46, float %5061, float %5053, float %5071)  ; FMad(a,b,c)
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %5062, float %5056, float %5072)  ; FMad(a,b,c)
  %5074 = fadd fast float %5073, %5059
  %5075 = fdiv fast float 1.000000e+00, %5074
  %5076 = fmul fast float %5075, %5066
  %5077 = fmul fast float %5075, %5070
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 0
  %5080 = extractvalue %dx.types.CBufRet.f32 %5078, 1
  %5081 = fmul fast float %5076, %5079
  %5082 = fmul fast float %5077, %5080
  %5083 = extractvalue %dx.types.CBufRet.f32 %5078, 2
  %5084 = extractvalue %dx.types.CBufRet.f32 %5078, 3
  %5085 = fadd fast float %5081, %5083
  %5086 = fadd fast float %5082, %5084
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 3
  %5089 = fmul fast float %5088, %4638
  %5090 = fmul fast float %5088, %4639
  %5091 = fmul fast float %5088, %4640
  %5092 = fadd fast float %5089, %5060
  %5093 = fadd fast float %5090, %5061
  %5094 = fadd fast float %5091, %5062
  %5095 = fmul fast float %5092, %5048
  %5096 = call float @dx.op.tertiary.f32(i32 46, float %5093, float %5051, float %5095)  ; FMad(a,b,c)
  %5097 = call float @dx.op.tertiary.f32(i32 46, float %5094, float %5054, float %5096)  ; FMad(a,b,c)
  %5098 = fadd fast float %5097, %5057
  %5099 = fmul fast float %5092, %5049
  %5100 = call float @dx.op.tertiary.f32(i32 46, float %5093, float %5052, float %5099)  ; FMad(a,b,c)
  %5101 = call float @dx.op.tertiary.f32(i32 46, float %5094, float %5055, float %5100)  ; FMad(a,b,c)
  %5102 = fadd fast float %5101, %5058
  %5103 = fmul fast float %5092, %5050
  %5104 = call float @dx.op.tertiary.f32(i32 46, float %5093, float %5053, float %5103)  ; FMad(a,b,c)
  %5105 = call float @dx.op.tertiary.f32(i32 46, float %5094, float %5056, float %5104)  ; FMad(a,b,c)
  %5106 = fadd fast float %5105, %5059
  %5107 = fdiv fast float 1.000000e+00, %5106
  %5108 = fmul fast float %5107, %5098
  %5109 = fmul fast float %5107, %5102
  %5110 = fmul fast float %5085, 2.000000e+00
  %5111 = fadd fast float %5110, -1.000000e+00
  %5112 = call float @dx.op.unary.f32(i32 6, float %5111)  ; FAbs(value)
  %5113 = fmul fast float %5112, 5.000000e+00
  %5114 = fadd fast float %5113, -4.000000e+00
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fmul fast float %5115, %5001
  %5117 = fsub fast float %5076, %5108
  %5118 = fmul fast float %5079, %5117
  %5119 = fmul fast float %5116, %5118
  %5120 = fsub fast float %5108, %5076
  %5121 = fmul fast float %5079, %5120
  %5122 = fadd fast float %5121, %5119
  %5123 = fsub fast float %5109, %5077
  %5124 = fmul fast float %5080, %5123
  %5125 = fmul fast float %5122, %5036
  %5126 = fmul fast float %5124, %5036
  %5127 = fadd fast float %5125, %5085
  %5128 = fadd fast float %5126, %5086
  %5129 = fsub fast float %5107, %5075
  %5130 = fmul fast float %5129, %5036
  %5131 = fadd fast float %5130, %5075
  %5132 = fdiv fast float 1.000000e+00, %5131
  %5133 = fadd fast float %4613, -1.000000e+00
  %5134 = fsub fast float %5132, %5074
  %5135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5135, 2
  %5137 = fmul fast float %5136, %5132
  %5138 = fdiv fast float 1.600000e+02, %5137
  %5139 = fmul fast float %5133, %5133
  %5140 = fmul fast float %5139, 0xBFB5B17960000000
  %5141 = fmul fast float %5140, %5134
  %5142 = fmul fast float %5141, %5138
  %5143 = call float @dx.op.unary.f32(i32 21, float %5142)  ; Exp(value)
  %5144 = fmul fast float %5143, 0x3FF04B2960000000
  %5145 = fsub fast float 0x3FF04B2960000000, %5144
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = fmul fast float %5146, 4.000000e+00
  %5148 = fadd fast float %198, -5.000000e-01
  %5149 = fadd fast float %199, -5.000000e-01
  %5150 = fmul fast float %5146, 0x3FBEB851E0000000
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fmul fast float %5151, %5148
  %5153 = fmul fast float %5151, %5149
  %5154 = fadd fast float %5127, %5152
  %5155 = fadd fast float %5128, %5153
  %5156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5154, float %5155, float undef, float undef, i32 0, i32 0, i32 undef, float %5147)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5157 = extractvalue %dx.types.ResRet.f32 %5156, 0
  %5158 = extractvalue %dx.types.ResRet.f32 %5156, 1
  %5159 = extractvalue %dx.types.ResRet.f32 %5156, 2
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5162 = fmul fast float %5161, %5157
  %5163 = fmul fast float %5161, %5158
  %5164 = fmul fast float %5161, %5159
  %5165 = select i1 %185, float 0.000000e+00, float %5163
  %5166 = select i1 %185, float 0.000000e+00, float %5164
  %5167 = fmul fast float %5154, 2.000000e+00
  %5168 = fmul fast float %5155, 2.000000e+00
  %5169 = fadd fast float %5167, -1.000000e+00
  %5170 = fadd fast float %5168, -1.000000e+00
  %5171 = fmul fast float %5169, %5169
  %5172 = fsub fast float 1.000000e+00, %5171
  %5173 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = fmul fast float %5174, %5001
  %5176 = fadd fast float %5175, %5173
  %5177 = fmul fast float %5170, %5170
  %5178 = fsub fast float 1.000000e+00, %5177
  %5179 = call float @dx.op.unary.f32(i32 7, float %5178)  ; Saturate(value)
  %5180 = fmul fast float %5176, %5179
  %5181 = call float @dx.op.unary.f32(i32 7, float %5180)  ; Saturate(value)
  %5182 = fmul fast float %5181, %5038
  br label %5183

; <label>:5183                                    ; preds = %5040, %5006, %4965
  %5184 = phi float [ %5162, %5040 ], [ 0.000000e+00, %5006 ], [ 0.000000e+00, %4965 ]
  %5185 = phi float [ %5165, %5040 ], [ 0.000000e+00, %5006 ], [ 0.000000e+00, %4965 ]
  %5186 = phi float [ %5166, %5040 ], [ 0.000000e+00, %5006 ], [ 0.000000e+00, %4965 ]
  %5187 = phi float [ %5182, %5040 ], [ 0.000000e+00, %5006 ], [ 0.000000e+00, %4965 ]
  %5188 = fcmp fast olt float %5187, 1.000000e+00
  %5189 = or i1 %5188, %4963
  %5190 = zext i1 %5189 to i32
  %5191 = fmul fast float %5187, %4948
  %5192 = fsub fast float %5187, %5191
  %5193 = fsub fast float 1.000000e+00, %4954
  %5194 = fmul fast float %5192, %5193
  %5195 = fadd fast float %5194, %4954
  %5196 = fsub fast float %5195, %5192
  %5197 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5198 = fmul fast float %5197, %4889
  %5199 = fmul fast float %5197, %4890
  %5200 = fmul fast float %5197, %4891
  %5201 = fsub fast float -0.000000e+00, %5195
  %5202 = fmul fast float %5192, %5184
  %5203 = fmul fast float %5192, %5185
  %5204 = fmul fast float %5192, %5186
  %5205 = fadd fast float %5202, %5198
  %5206 = fadd fast float %5203, %5199
  %5207 = fadd fast float %5204, %5200
  br label %5208

; <label>:5208                                    ; preds = %5183, %4956
  %5209 = phi float [ %4954, %4956 ], [ %5201, %5183 ]
  %5210 = phi float [ %4889, %4956 ], [ %5205, %5183 ]
  %5211 = phi float [ %4890, %4956 ], [ %5206, %5183 ]
  %5212 = phi float [ %4891, %4956 ], [ %5207, %5183 ]
  %5213 = phi i32 [ %4964, %4956 ], [ %5190, %5183 ]
  %5214 = icmp eq i32 %5213, 0
  br i1 %5214, label %5811, label %5215

; <label>:5215                                    ; preds = %5208
  %5216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5217 = extractvalue %dx.types.CBufRet.f32 %5216, 2
  %5218 = extractvalue %dx.types.CBufRet.f32 %5216, 3
  %5219 = fmul fast float %5217, %84
  %5220 = fmul fast float %5218, %85
  %5221 = fptoui float %5219 to i32
  %5222 = fptoui float %5220 to i32
  %5223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5224 = extractvalue %dx.types.CBufRet.f32 %5223, 0
  %5225 = extractvalue %dx.types.CBufRet.f32 %5223, 2
  %5226 = extractvalue %dx.types.CBufRet.f32 %5223, 3
  %5227 = fadd fast float %79, -4.000000e+00
  %5228 = call float @dx.op.binary.f32(i32 35, float %5227, float 0.000000e+00)  ; FMax(a,b)
  %5229 = fadd fast float %5228, %5224
  %5230 = fmul fast float %5229, %5225
  %5231 = call float @dx.op.unary.f32(i32 23, float %5230)  ; Log(value)
  %5232 = fmul fast float %5231, %5226
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 2
  %5235 = fmul fast float %5232, %5234
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5238 = extractvalue %dx.types.CBufRet.i32 %5237, 1
  %5239 = add i32 %5238, -1
  %5240 = uitofp i32 %5238 to float
  %5241 = fmul fast float %5240, %5236
  %5242 = fptoui float %5241 to i32
  %5243 = call i32 @dx.op.binary.i32(i32 40, i32 %5242, i32 %5239)  ; UMin(a,b)
  %5244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5245 = extractvalue %dx.types.CBufRet.i32 %5244, 2
  %5246 = extractvalue %dx.types.CBufRet.i32 %5244, 3
  %5247 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5222, i32 %5245, i32 %5221)  ; UMad(a,b,c)
  %5248 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5243, i32 %5246, i32 %5247)  ; UMad(a,b,c)
  %5249 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %5250 = fptoui float %5249 to i32
  %5251 = lshr i32 %5250, 5
  %5252 = call i32 @dx.op.binary.i32(i32 40, i32 %5251, i32 8191)  ; UMin(a,b)
  %5253 = fcmp fast ogt float %4412, 0.000000e+00
  %5254 = fcmp fast ogt float %4640, 0.000000e+00
  %5255 = and i1 %5254, %5253
  br i1 %5255, label %5256, label %5285

; <label>:5256                                    ; preds = %5215
  %5257 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5258 = call float @dx.op.binary.f32(i32 35, float %5257, float -1.000000e+00)  ; FMax(a,b)
  %5259 = call float @dx.op.binary.f32(i32 36, float %5258, float 1.000000e+00)  ; FMin(a,b)
  %5260 = fmul fast float %5259, %5259
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5261, 0x3FFC6E2300000000
  %5263 = fsub fast float 1.000000e+00, %5262
  %5264 = fcmp fast ogt float %5263, 0.000000e+00
  %5265 = call float @dx.op.unary.f32(i32 24, float %5263)  ; Sqrt(value)
  %5266 = fsub fast float 1.000000e+00, %5265
  %5267 = call float @dx.op.unary.f32(i32 23, float %5266)  ; Log(value)
  %5268 = fmul fast float %5267, 5.000000e+00
  %5269 = call float @dx.op.unary.f32(i32 21, float %5268)  ; Exp(value)
  %5270 = fmul fast float %5269, 0x3FEF591A60000000
  %5271 = fadd fast float %5270, 0x3F94DCB540000000
  %5272 = select i1 %5264, float %5271, float 1.000000e+00
  %5273 = fcmp fast oge float %5272, 1.000000e+00
  %5274 = fmul fast float %5257, 2.000000e+00
  %5275 = fadd fast float %5274, %4640
  %5276 = select i1 %5273, float %5275, float %4640
  %5277 = fsub fast float %5276, %4640
  %5278 = fmul fast float %5277, %4412
  %5279 = fadd fast float %5278, %4640
  %5280 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %5279, float %4638, float %4639, float %5279)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = call float @dx.op.unary.f32(i32 25, float %5280)  ; Rsqrt(value)
  %5282 = fmul fast float %5281, %4638
  %5283 = fmul fast float %5281, %4639
  %5284 = fmul fast float %5279, %5281
  br label %5285

; <label>:5285                                    ; preds = %5256, %5215
  %5286 = phi float [ %5282, %5256 ], [ %4638, %5215 ]
  %5287 = phi float [ %5283, %5256 ], [ %4639, %5215 ]
  %5288 = phi float [ %5284, %5256 ], [ %4640, %5215 ]
  %5289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.i32 %5289, 2
  %5291 = add nsw i32 %5290, -1
  %5292 = call i32 @dx.op.binary.i32(i32 37, i32 %5291, i32 0)  ; IMax(a,b)
  %5293 = shl i32 %5252, 2
  %5294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5293, i32 undef)  ; BufferLoad(srv,index,wot)
  %5295 = extractvalue %dx.types.ResRet.i32 %5294, 0
  %5296 = lshr i32 %5295, 16
  %5297 = and i32 %5295, 65535
  %5298 = lshr i32 %5295, 21
  %5299 = lshr i32 %5297, 5
  %5300 = call i32 @dx.op.binary.i32(i32 40, i32 %5299, i32 %5292)  ; UMin(a,b)
  %5301 = icmp ugt i32 %5298, %5300
  br i1 %5301, label %5683, label %5302

; <label>:5302                                    ; preds = %5285
  br label %5303

; <label>:5303                                    ; preds = %5672, %5302
  %5304 = phi float [ %5673, %5672 ], [ 0.000000e+00, %5302 ]
  %5305 = phi float [ %5674, %5672 ], [ 0.000000e+00, %5302 ]
  %5306 = phi float [ %5675, %5672 ], [ 0.000000e+00, %5302 ]
  %5307 = phi float [ %5676, %5672 ], [ 1.000000e+00, %5302 ]
  %5308 = phi i32 [ %5680, %5672 ], [ %5298, %5302 ]
  %5309 = phi float [ %5677, %5672 ], [ 0.000000e+00, %5302 ]
  %5310 = phi float [ %5678, %5672 ], [ 0.000000e+00, %5302 ]
  %5311 = phi float [ %5679, %5672 ], [ 0.000000e+00, %5302 ]
  %5312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.i32 %5312, 2
  %5314 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5248, i32 %5313, i32 %5308)  ; UMad(a,b,c)
  %5315 = shl i32 %5314, 2
  %5316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.i32 %5316, 0
  %5318 = shl i32 %5308, 5
  %5319 = sub nsw i32 %5296, %5318
  %5320 = call i32 @dx.op.binary.i32(i32 37, i32 %5319, i32 0)  ; IMax(a,b)
  %5321 = call i32 @dx.op.binary.i32(i32 38, i32 %5320, i32 31)  ; IMin(a,b)
  %5322 = sub nsw i32 1, %5296
  %5323 = add nsw i32 %5322, %5297
  %5324 = call i32 @dx.op.binary.i32(i32 37, i32 %5323, i32 0)  ; IMax(a,b)
  %5325 = call i32 @dx.op.binary.i32(i32 38, i32 %5324, i32 32)  ; IMin(a,b)
  %5326 = and i32 %5325, 31
  %5327 = shl i32 -1, %5326
  %5328 = xor i32 %5327, -1
  %5329 = and i32 %5321, 31
  %5330 = shl i32 %5328, %5329
  %5331 = icmp eq i32 %5325, 32
  %5332 = select i1 %5331, i32 -1, i32 %5330
  %5333 = and i32 %5332, %5317
  %5334 = icmp eq i32 %5333, 0
  br i1 %5334, label %5672, label %5335

; <label>:5335                                    ; preds = %5303
  br label %5336

; <label>:5336                                    ; preds = %5446, %5335
  %5337 = phi float [ %5447, %5446 ], [ %5304, %5335 ]
  %5338 = phi float [ %5448, %5446 ], [ %5305, %5335 ]
  %5339 = phi float [ %5449, %5446 ], [ %5306, %5335 ]
  %5340 = phi float [ %5450, %5446 ], [ %5307, %5335 ]
  %5341 = phi i32 [ %5349, %5446 ], [ %5333, %5335 ]
  %5342 = phi float [ %5451, %5446 ], [ %5309, %5335 ]
  %5343 = phi float [ %5452, %5446 ], [ %5310, %5335 ]
  %5344 = phi float [ %5453, %5446 ], [ %5311, %5335 ]
  %5345 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5341)  ; FirstbitLo(value)
  %5346 = add i32 %5345, %5318
  %5347 = and i32 %5345, 31
  %5348 = shl i32 1, %5347
  %5349 = xor i32 %5348, %5341
  %5350 = mul i32 %5346, 72
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.ResRet.f32 %5351, 1
  %5354 = extractvalue %dx.types.ResRet.f32 %5351, 2
  %5355 = add i32 %5350, 12
  %5356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.i32 %5356, 0
  %5358 = add i32 %5350, 16
  %5359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5358, i32 undef)  ; BufferLoad(srv,index,wot)
  %5360 = extractvalue %dx.types.ResRet.f32 %5359, 0
  %5361 = extractvalue %dx.types.ResRet.f32 %5359, 1
  %5362 = extractvalue %dx.types.ResRet.f32 %5359, 2
  %5363 = add i32 %5350, 28
  %5364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5363, i32 undef)  ; BufferLoad(srv,index,wot)
  %5365 = extractvalue %dx.types.ResRet.f32 %5364, 0
  %5366 = add i32 %5350, 32
  %5367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5366, i32 undef)  ; BufferLoad(srv,index,wot)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = extractvalue %dx.types.ResRet.f32 %5367, 1
  %5370 = extractvalue %dx.types.ResRet.f32 %5367, 2
  %5371 = extractvalue %dx.types.ResRet.f32 %5367, 3
  %5372 = add i32 %5350, 48
  %5373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5372, i32 undef)  ; BufferLoad(srv,index,wot)
  %5374 = extractvalue %dx.types.ResRet.f32 %5373, 0
  %5375 = extractvalue %dx.types.ResRet.f32 %5373, 1
  %5376 = add i32 %5350, 56
  %5377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5376, i32 undef)  ; BufferLoad(srv,index,wot)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = add i32 %5350, 64
  %5381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5380, i32 undef)  ; BufferLoad(srv,index,wot)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.ResRet.f32 %5381, 1
  %5384 = mul i32 %5346, 60
  %5385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = add i32 %5384, 12
  %5390 = add i32 %5384, 48
  %5391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5390, i32 undef)  ; BufferLoad(srv,index,wot)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 0
  %5393 = extractvalue %dx.types.ResRet.f32 %5391, 1
  %5394 = extractvalue %dx.types.ResRet.f32 %5391, 2
  %5395 = and i32 %5357, 32767
  %5396 = bitcast float %5352 to i32
  %5397 = icmp eq i32 %5396, -1
  %5398 = bitcast float %5353 to i32
  %5399 = and i32 %5357, 32768
  %5400 = icmp ne i32 %5399, 0
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.CBufRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.CBufRet.f32 %5401, 2
  %5405 = fsub fast float %5386, %5402
  %5406 = fsub fast float %5387, %5403
  %5407 = fsub fast float %5388, %5404
  %5408 = fsub fast float %143, %5405
  %5409 = fsub fast float %144, %5406
  %5410 = fsub fast float %145, %5407
  %5411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 1
  %5414 = extractvalue %dx.types.ResRet.f32 %5411, 2
  %5415 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5412, float %5413, float %5414)  ; Dot3(ax,ay,az,bx,by,bz)
  %5416 = add i32 %5384, 24
  %5417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5416, i32 undef)  ; BufferLoad(srv,index,wot)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.ResRet.f32 %5417, 1
  %5420 = extractvalue %dx.types.ResRet.f32 %5417, 2
  %5421 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5418, float %5419, float %5420)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = add i32 %5384, 36
  %5423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.ResRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.ResRet.f32 %5423, 2
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = call float @dx.op.unary.f32(i32 6, float %5415)  ; FAbs(value)
  %5429 = call float @dx.op.unary.f32(i32 6, float %5421)  ; FAbs(value)
  %5430 = call float @dx.op.unary.f32(i32 6, float %5427)  ; FAbs(value)
  %5431 = fsub fast float %5392, %5428
  %5432 = fsub fast float %5393, %5429
  %5433 = fsub fast float %5394, %5430
  %5434 = fmul fast float %5431, %5360
  %5435 = fmul fast float %5432, %5361
  %5436 = fmul fast float %5433, %5362
  %5437 = call float @dx.op.binary.f32(i32 36, float %5435, float %5436)  ; FMin(a,b)
  %5438 = call float @dx.op.binary.f32(i32 36, float %5434, float %5437)  ; FMin(a,b)
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = call float @dx.op.binary.f32(i32 36, float %5340, float %5439)  ; FMin(a,b)
  %5441 = uitofp i1 %5400 to float
  %5442 = fadd fast float %4412, 1.000000e+00
  %5443 = fsub fast float %5442, %5441
  %5444 = fmul fast float %5440, %5443
  %5445 = fcmp fast ogt float %5444, 0.000000e+00
  br i1 %5445, label %5455, label %5446

; <label>:5446                                    ; preds = %5597, %5336
  %5447 = phi float [ %5661, %5597 ], [ %5337, %5336 ]
  %5448 = phi float [ %5662, %5597 ], [ %5338, %5336 ]
  %5449 = phi float [ %5663, %5597 ], [ %5339, %5336 ]
  %5450 = phi float [ %5670, %5597 ], [ %5340, %5336 ]
  %5451 = phi float [ %5667, %5597 ], [ %5342, %5336 ]
  %5452 = phi float [ %5668, %5597 ], [ %5343, %5336 ]
  %5453 = phi float [ %5669, %5597 ], [ %5344, %5336 ]
  %5454 = icmp eq i32 %5341, %5348
  br i1 %5454, label %5671, label %5336

; <label>:5455                                    ; preds = %5336
  br i1 %5397, label %5513, label %5456

; <label>:5456                                    ; preds = %5455
  %5457 = fsub fast float -0.000000e+00, %5412
  %5458 = fsub fast float -0.000000e+00, %5413
  %5459 = fsub fast float -0.000000e+00, %5414
  %5460 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5457, float %5458, float %5459)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = fsub fast float -0.000000e+00, %5460
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5457, float %5458, float %5459)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = fadd fast float %5462, %5375
  %5464 = fadd fast float %5374, %5462
  %5465 = fsub fast float -0.000000e+00, %5464
  %5466 = fcmp ogt float %5460, -0.000000e+00
  %5467 = select i1 %5466, float %5465, float %5463
  %5468 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5469 = fdiv fast float 1.000000e+00, %5468
  %5470 = fmul fast float %5467, %5469
  %5471 = call float @dx.op.binary.f32(i32 35, float %5470, float 0.000000e+00)  ; FMax(a,b)
  %5472 = fsub fast float -0.000000e+00, %5418
  %5473 = fsub fast float -0.000000e+00, %5419
  %5474 = fsub fast float -0.000000e+00, %5420
  %5475 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = fsub fast float -0.000000e+00, %5475
  %5477 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = fadd fast float %5477, %5379
  %5479 = fadd fast float %5378, %5477
  %5480 = fsub fast float -0.000000e+00, %5479
  %5481 = fcmp ogt float %5475, -0.000000e+00
  %5482 = select i1 %5481, float %5480, float %5478
  %5483 = call float @dx.op.unary.f32(i32 6, float %5476)  ; FAbs(value)
  %5484 = fdiv fast float 1.000000e+00, %5483
  %5485 = fmul fast float %5482, %5484
  %5486 = call float @dx.op.binary.f32(i32 35, float %5485, float 0.000000e+00)  ; FMax(a,b)
  %5487 = fsub fast float -0.000000e+00, %5424
  %5488 = fsub fast float -0.000000e+00, %5425
  %5489 = fsub fast float -0.000000e+00, %5426
  %5490 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5491 = fsub fast float -0.000000e+00, %5490
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5487, float %5488, float %5489)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fadd fast float %5492, %5383
  %5494 = fadd fast float %5382, %5492
  %5495 = fsub fast float -0.000000e+00, %5494
  %5496 = fcmp ogt float %5490, -0.000000e+00
  %5497 = select i1 %5496, float %5495, float %5493
  %5498 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5499 = fdiv fast float 1.000000e+00, %5498
  %5500 = fmul fast float %5497, %5499
  %5501 = call float @dx.op.binary.f32(i32 35, float %5500, float 0.000000e+00)  ; FMax(a,b)
  %5502 = call float @dx.op.binary.f32(i32 36, float %5486, float %5501)  ; FMin(a,b)
  %5503 = call float @dx.op.binary.f32(i32 36, float %5471, float %5502)  ; FMin(a,b)
  %5504 = fmul fast float %5503, %5286
  %5505 = fmul fast float %5503, %5287
  %5506 = fmul fast float %5503, %5288
  %5507 = fadd fast float %5504, %143
  %5508 = fadd fast float %5505, %144
  %5509 = fadd fast float %5506, %145
  %5510 = fsub fast float %5507, %5352
  %5511 = fsub fast float %5508, %5353
  %5512 = fsub fast float %5509, %5354
  br label %5520

; <label>:5513                                    ; preds = %5455
  %5514 = fmul fast float %5286, 8.096000e+03
  %5515 = fmul fast float %5287, 8.096000e+03
  %5516 = fmul fast float %5288, 8.096000e+03
  %5517 = fadd fast float %5514, %143
  %5518 = fadd fast float %5515, %144
  %5519 = fadd fast float %5516, %145
  br label %5520

; <label>:5520                                    ; preds = %5513, %5456
  %5521 = phi float [ %5286, %5513 ], [ %5510, %5456 ]
  %5522 = phi float [ %5287, %5513 ], [ %5511, %5456 ]
  %5523 = phi float [ %5288, %5513 ], [ %5512, %5456 ]
  %5524 = phi float [ %5517, %5513 ], [ %5507, %5456 ]
  %5525 = phi float [ %5518, %5513 ], [ %5508, %5456 ]
  %5526 = phi float [ %5519, %5513 ], [ %5509, %5456 ]
  %5527 = fcmp fast olt float %5371, 1.000000e+00
  br i1 %5527, label %5528, label %5559, !dx.controlflow.hints !87

; <label>:5528                                    ; preds = %5520
  %5529 = fmul fast float %5523, %5369
  %5530 = fmul fast float %5522, %5370
  %5531 = fsub fast float %5529, %5530
  %5532 = fmul fast float %5521, %5370
  %5533 = fmul fast float %5523, %5368
  %5534 = fsub fast float %5532, %5533
  %5535 = fmul fast float %5522, %5368
  %5536 = fmul fast float %5521, %5369
  %5537 = fsub fast float %5535, %5536
  %5538 = fmul fast float %5531, 2.000000e+00
  %5539 = fmul fast float %5534, 2.000000e+00
  %5540 = fmul fast float %5537, 2.000000e+00
  %5541 = fmul fast float %5538, %5371
  %5542 = fmul fast float %5539, %5371
  %5543 = fmul fast float %5540, %5371
  %5544 = fmul fast float %5540, %5369
  %5545 = fmul fast float %5539, %5370
  %5546 = fmul fast float %5538, %5370
  %5547 = fmul fast float %5540, %5368
  %5548 = fmul fast float %5539, %5368
  %5549 = fmul fast float %5538, %5369
  %5550 = fadd fast float %5544, %5521
  %5551 = fadd fast float %5550, %5541
  %5552 = fsub fast float %5551, %5545
  %5553 = fsub fast float %5522, %5547
  %5554 = fadd fast float %5553, %5542
  %5555 = fadd fast float %5554, %5546
  %5556 = fadd fast float %5543, %5523
  %5557 = fsub fast float %5556, %5549
  %5558 = fadd fast float %5557, %5548
  br label %5559

; <label>:5559                                    ; preds = %5528, %5520
  %5560 = phi float [ %5552, %5528 ], [ %5521, %5520 ]
  %5561 = phi float [ %5555, %5528 ], [ %5522, %5520 ]
  %5562 = phi float [ %5558, %5528 ], [ %5523, %5520 ]
  br i1 %5397, label %5594, label %5563

; <label>:5563                                    ; preds = %5559
  %5564 = fmul fast float %4613, 0x400187C840000000
  %5565 = fadd fast float %5564, 0xC00EFC2120000000
  %5566 = fmul fast float %5565, %4613
  %5567 = fadd fast float %5566, 0x3FE5D16340000000
  %5568 = fmul fast float %5567, %4613
  %5569 = fadd fast float %5568, 1.000000e+00
  %5570 = call float @dx.op.unary.f32(i32 7, float %5569)  ; Saturate(value)
  %5571 = fsub fast float %5524, %143
  %5572 = fsub fast float %5525, %144
  %5573 = fsub fast float %5526, %145
  %5574 = fsub fast float %5524, %5352
  %5575 = fsub fast float %5525, %5353
  %5576 = fsub fast float %5526, %5354
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5572, float %5573, float %5571, float %5572, float %5573)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5575, float %5576, float %5574, float %5575, float %5576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = fadd fast float %5578, 0x3EE4F8B580000000
  %5580 = fdiv fast float %5577, %5579
  %5581 = bitcast float %5580 to i32
  %5582 = ashr i32 %5581, 1
  %5583 = add nsw i32 %5582, 532487669
  %5584 = bitcast i32 %5583 to float
  %5585 = fmul fast float %5584, %5570
  %5586 = call float @dx.op.unary.f32(i32 7, float %5585)  ; Saturate(value)
  %5587 = fmul fast float %5586, 0x4009981AE0000000
  %5588 = fsub fast float 0x40111BBD80000000, %5587
  %5589 = fmul fast float %5588, %5586
  %5590 = fadd fast float %5589, 0xC0009F6020000000
  %5591 = fmul fast float %5590, %5586
  %5592 = fadd fast float %5591, 1.000000e+00
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  br label %5597

; <label>:5594                                    ; preds = %5559
  %5595 = icmp ne i32 %5398, -1
  %5596 = zext i1 %5595 to i32
  br label %5597

; <label>:5597                                    ; preds = %5594, %5563
  %5598 = phi float [ %4613, %5594 ], [ %5593, %5563 ]
  %5599 = phi i32 [ %5596, %5594 ], [ 0, %5563 ]
  %5600 = fmul float %5598, 5.000000e+00
  %5601 = fsub float 5.000000e+00, %5600
  %5602 = icmp ne i32 %5599, 0
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 3
  %5605 = fadd fast float %5604, %5601
  %5606 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5605)  ; FMax(a,b)
  %5607 = call float @dx.op.unary.f32(i32 6, float %5560)  ; FAbs(value)
  %5608 = call float @dx.op.unary.f32(i32 6, float %5561)  ; FAbs(value)
  %5609 = fadd fast float %5608, %5607
  %5610 = call float @dx.op.unary.f32(i32 6, float %5562)  ; FAbs(value)
  %5611 = fadd fast float %5609, %5610
  %5612 = fcmp fast oeq float %5611, 0.000000e+00
  %5613 = fdiv fast float 1.000000e+00, %5611
  %5614 = select i1 %5612, float 1.000000e+00, float %5613
  %5615 = fmul fast float %5614, %5560
  %5616 = fmul fast float %5614, %5561
  %5617 = call float @dx.op.unary.f32(i32 6, float %5616)  ; FAbs(value)
  %5618 = call float @dx.op.unary.f32(i32 6, float %5615)  ; FAbs(value)
  %5619 = fsub fast float 1.000000e+00, %5617
  %5620 = fsub fast float 1.000000e+00, %5618
  %5621 = fcmp fast oge float %5615, 0.000000e+00
  %5622 = fcmp fast oge float %5616, 0.000000e+00
  %5623 = select i1 %5621, float 1.000000e+00, float -1.000000e+00
  %5624 = select i1 %5622, float 1.000000e+00, float -1.000000e+00
  %5625 = fcmp fast ole float %5562, 0.000000e+00
  %5626 = fmul fast float %5623, %5619
  %5627 = fmul fast float %5624, %5620
  %5628 = select i1 %5625, float %5626, float %5615
  %5629 = select i1 %5625, float %5627, float %5616
  %5630 = fmul fast float %5628, 5.000000e-01
  %5631 = fmul fast float %5629, 5.000000e-01
  %5632 = fadd fast float %5630, 5.000000e-01
  %5633 = fadd fast float %5631, 5.000000e-01
  %5634 = uitofp i32 %5395 to float
  %5635 = call float @dx.op.binary.f32(i32 36, float %5606, float 3.000000e+00)  ; FMin(a,b)
  %5636 = fadd fast float %5635, 2.000000e+00
  %5637 = call float @dx.op.unary.f32(i32 21, float %5636)  ; Exp(value)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5603, 1
  %5639 = fmul fast float %5638, %5637
  %5640 = fmul fast float %5639, 2.000000e+00
  %5641 = fsub fast float 1.000000e+00, %5640
  %5642 = fmul fast float %5632, %5641
  %5643 = fmul fast float %5633, %5641
  %5644 = fadd fast float %5642, %5639
  %5645 = fadd fast float %5643, %5639
  %5646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5644, float %5645, float %5634, float undef, i32 0, i32 0, i32 undef, float %5606)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5647 = extractvalue %dx.types.ResRet.f32 %5646, 0
  %5648 = extractvalue %dx.types.ResRet.f32 %5646, 1
  %5649 = extractvalue %dx.types.ResRet.f32 %5646, 2
  %5650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5651 = extractvalue %dx.types.CBufRet.f32 %5650, 3
  %5652 = fmul fast float %5651, %5365
  %5653 = call float @dx.op.binary.f32(i32 36, float %4659, float %5652)  ; FMin(a,b)
  %5654 = select i1 %5602, float %5653, float %5652
  %5655 = fmul fast float %5647, %5444
  %5656 = fmul fast float %5655, %5654
  %5657 = fmul fast float %5648, %5444
  %5658 = fmul fast float %5657, %5654
  %5659 = fmul fast float %5649, %5444
  %5660 = fmul fast float %5659, %5654
  %5661 = fadd fast float %5656, %5337
  %5662 = fadd fast float %5658, %5338
  %5663 = fadd fast float %5660, %5339
  %5664 = fmul fast float %5524, %5444
  %5665 = fmul fast float %5525, %5444
  %5666 = fmul fast float %5526, %5444
  %5667 = fadd fast float %5664, %5342
  %5668 = fadd fast float %5665, %5343
  %5669 = fadd fast float %5666, %5344
  %5670 = fsub fast float %5340, %5444
  br label %5446

; <label>:5671                                    ; preds = %5446
  br label %5672

; <label>:5672                                    ; preds = %5671, %5303
  %5673 = phi float [ %5304, %5303 ], [ %5447, %5671 ]
  %5674 = phi float [ %5305, %5303 ], [ %5448, %5671 ]
  %5675 = phi float [ %5306, %5303 ], [ %5449, %5671 ]
  %5676 = phi float [ %5307, %5303 ], [ %5450, %5671 ]
  %5677 = phi float [ %5309, %5303 ], [ %5451, %5671 ]
  %5678 = phi float [ %5310, %5303 ], [ %5452, %5671 ]
  %5679 = phi float [ %5311, %5303 ], [ %5453, %5671 ]
  %5680 = add i32 %5308, 1
  %5681 = icmp ugt i32 %5680, %5300
  br i1 %5681, label %5682, label %5303, !llvm.loop !88

; <label>:5682                                    ; preds = %5672
  br label %5683

; <label>:5683                                    ; preds = %5682, %5285
  %5684 = phi float [ 0.000000e+00, %5285 ], [ %5673, %5682 ]
  %5685 = phi float [ 0.000000e+00, %5285 ], [ %5674, %5682 ]
  %5686 = phi float [ 0.000000e+00, %5285 ], [ %5675, %5682 ]
  %5687 = phi float [ 0.000000e+00, %5285 ], [ %5677, %5682 ]
  %5688 = phi float [ 0.000000e+00, %5285 ], [ %5678, %5682 ]
  %5689 = phi float [ 0.000000e+00, %5285 ], [ %5679, %5682 ]
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5684, float %5685, float %5686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = select i1 %185, float 0.000000e+00, float %5684
  %5692 = select i1 %185, float %5690, float %5685
  %5693 = select i1 %185, float 0.000000e+00, float %5686
  %5694 = fcmp fast olt float %5209, 0.000000e+00
  %5695 = call float @dx.op.unary.f32(i32 6, float %5209)  ; FAbs(value)
  %5696 = fmul fast float %5695, %5210
  %5697 = fmul fast float %5695, %5211
  %5698 = fmul fast float %5695, %5212
  %5699 = select i1 %5694, float %5210, float %5696
  %5700 = select i1 %5694, float %5211, float %5697
  %5701 = select i1 %5694, float %5212, float %5698
  %5702 = fsub fast float 1.000000e+00, %5695
  %5703 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5704 = fmul fast float %5703, %5691
  %5705 = fmul fast float %5703, %5692
  %5706 = fmul fast float %5703, %5693
  %5707 = fadd fast float %5699, %5704
  %5708 = fadd fast float %5700, %5705
  %5709 = fadd fast float %5701, %5706
  %5710 = fcmp fast une float %4959, 0.000000e+00
  br i1 %5710, label %5811, label %5711

; <label>:5711                                    ; preds = %5683
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.CBufRet.f32 %5712, 1
  %5715 = extractvalue %dx.types.CBufRet.f32 %5712, 2
  %5716 = extractvalue %dx.types.CBufRet.f32 %5712, 3
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.CBufRet.f32 %5717, 1
  %5720 = extractvalue %dx.types.CBufRet.f32 %5717, 2
  %5721 = extractvalue %dx.types.CBufRet.f32 %5717, 3
  %5722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5722, 0
  %5724 = extractvalue %dx.types.CBufRet.f32 %5722, 1
  %5725 = extractvalue %dx.types.CBufRet.f32 %5722, 2
  %5726 = extractvalue %dx.types.CBufRet.f32 %5722, 3
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5688, float %5689, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5729 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %5723, float %5724, float %5725)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fadd fast float %4613, -1.000000e+00
  %5731 = fsub fast float %5728, %5729
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5734 = fmul fast float %5733, %5728
  %5735 = fdiv fast float 1.600000e+02, %5734
  %5736 = fmul fast float %5730, %5730
  %5737 = fmul fast float %5736, 0xBFB5B17960000000
  %5738 = fmul fast float %5737, %5731
  %5739 = fmul fast float %5738, %5735
  %5740 = call float @dx.op.unary.f32(i32 21, float %5739)  ; Exp(value)
  %5741 = fmul fast float %5740, 0x3FF04B2960000000
  %5742 = fsub fast float 0x3FF04B2960000000, %5741
  %5743 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5744 = fmul fast float %5743, 4.000000e+00
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5749 = fadd fast float %5746, %5687
  %5750 = fadd fast float %5747, %5688
  %5751 = fadd fast float %5748, %5689
  %5752 = fmul fast float %5749, %5713
  %5753 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5714, float %5752)  ; FMad(a,b,c)
  %5754 = call float @dx.op.tertiary.f32(i32 46, float %5751, float %5715, float %5753)  ; FMad(a,b,c)
  %5755 = fadd fast float %5754, %5716
  %5756 = fmul fast float %5749, %5718
  %5757 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5719, float %5756)  ; FMad(a,b,c)
  %5758 = call float @dx.op.tertiary.f32(i32 46, float %5751, float %5720, float %5757)  ; FMad(a,b,c)
  %5759 = fadd fast float %5758, %5721
  %5760 = fmul fast float %5749, %5723
  %5761 = call float @dx.op.tertiary.f32(i32 46, float %5750, float %5724, float %5760)  ; FMad(a,b,c)
  %5762 = call float @dx.op.tertiary.f32(i32 46, float %5751, float %5725, float %5761)  ; FMad(a,b,c)
  %5763 = fadd fast float %5762, %5726
  %5764 = fdiv fast float %5755, %5763
  %5765 = fdiv fast float %5759, %5763
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.CBufRet.f32 %5766, 1
  %5769 = fmul fast float %5767, %5764
  %5770 = fmul fast float %5768, %5765
  %5771 = extractvalue %dx.types.CBufRet.f32 %5766, 2
  %5772 = extractvalue %dx.types.CBufRet.f32 %5766, 3
  %5773 = fadd fast float %5769, %5771
  %5774 = fadd fast float %5770, %5772
  %5775 = fmul fast float %5727, 8.000000e+00
  %5776 = call float @dx.op.unary.f32(i32 7, float %5775)  ; Saturate(value)
  %5777 = fmul fast float %5773, 2.000000e+00
  %5778 = fmul fast float %5774, 2.000000e+00
  %5779 = fadd fast float %5777, -1.000000e+00
  %5780 = fadd fast float %5778, -1.000000e+00
  %5781 = fmul fast float %5779, %5779
  %5782 = fsub fast float 1.000000e+00, %5781
  %5783 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5784 = fmul fast float %5780, %5780
  %5785 = fsub fast float 1.000000e+00, %5784
  %5786 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5787 = fmul fast float %4959, %5783
  %5788 = fmul fast float %5787, %5786
  %5789 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5790 = fmul fast float %5789, %5776
  %5791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5773, float %5774, float undef, float undef, i32 0, i32 0, i32 undef, float %5744)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5792 = extractvalue %dx.types.ResRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.ResRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.ResRet.f32 %5791, 2
  %5795 = select i1 %185, float 0.000000e+00, float %5793
  %5796 = select i1 %185, float 0.000000e+00, float %5794
  %5797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.f32 %5797, 2
  %5799 = fmul fast float %5798, %5792
  %5800 = fmul fast float %5795, %5798
  %5801 = fmul fast float %5796, %5798
  %5802 = fsub fast float %5799, %5691
  %5803 = fsub fast float %5800, %5692
  %5804 = fsub fast float %5801, %5693
  %5805 = fmul fast float %5802, %5790
  %5806 = fmul fast float %5803, %5790
  %5807 = fmul fast float %5804, %5790
  %5808 = fadd fast float %5805, %5691
  %5809 = fadd fast float %5806, %5692
  %5810 = fadd fast float %5807, %5693
  br label %5811

; <label>:5811                                    ; preds = %5711, %5683, %5208, %4932
  %5812 = phi float [ %5210, %5208 ], [ %5707, %5683 ], [ %4889, %4932 ], [ %5808, %5711 ]
  %5813 = phi float [ %5211, %5208 ], [ %5708, %5683 ], [ %4890, %4932 ], [ %5809, %5711 ]
  %5814 = phi float [ %5212, %5208 ], [ %5709, %5683 ], [ %4891, %4932 ], [ %5810, %5711 ]
  %5815 = fmul fast float %4938, %4885
  %5816 = fmul fast float %4938, %4886
  %5817 = fmul fast float %4938, %4887
  %5818 = call float @dx.op.dot3.f32(i32 55, float %4610, float %4611, float %4612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = fcmp fast ogt float %5818, 0x3E7FF19E20000000
  %5820 = fdiv fast float 1.000000e+00, %5818
  %5821 = select i1 %5819, float %5820, float 0.000000e+00
  %5822 = fmul fast float %5821, %4610
  %5823 = fmul fast float %5821, %4611
  %5824 = fmul fast float %5821, %4612
  %5825 = fadd fast float %5822, -1.000000e+00
  %5826 = fadd fast float %5823, -1.000000e+00
  %5827 = fadd fast float %5824, -1.000000e+00
  %5828 = fmul fast float %5825, 5.000000e-01
  %5829 = fmul fast float %5826, 5.000000e-01
  %5830 = fmul fast float %5827, 5.000000e-01
  %5831 = fadd fast float %5828, 1.000000e+00
  %5832 = fadd fast float %5829, 1.000000e+00
  %5833 = fadd fast float %5830, 1.000000e+00
  %5834 = fmul fast float %5812, %4933
  %5835 = fmul fast float %5813, %4934
  %5836 = fmul fast float %5814, %4935
  %5837 = fsub fast float 1.000000e+00, %4632
  %5838 = bitcast float %5837 to i32
  %5839 = sitofp i32 %5838 to float
  %5840 = fmul fast float %5839, 5.000000e+00
  %5841 = fadd fast float %5840, 0xC1EFBF8940000000
  %5842 = fptosi float %5841 to i32
  %5843 = bitcast i32 %5842 to float
  %5844 = fmul fast float %5843, %3980
  %5845 = fmul fast float %4885, %5844
  %5846 = fmul fast float %5845, %4938
  %5847 = fmul fast float %5846, %5831
  %5848 = fmul fast float %4886, %5844
  %5849 = fmul fast float %5848, %4938
  %5850 = fmul fast float %5849, %5832
  %5851 = fmul fast float %4887, %5844
  %5852 = fmul fast float %5851, %4938
  %5853 = fmul fast float %5852, %5833
  %5854 = fmul fast float %5815, %4001
  %5855 = fmul fast float %5816, %4001
  %5856 = fmul fast float %5817, %4001
  %5857 = fadd fast float %5834, %3982
  %5858 = fadd fast float %5857, %5847
  %5859 = fmul fast float %5858, %4001
  %5860 = fadd fast float %5835, %3983
  %5861 = fadd fast float %5860, %5850
  %5862 = fmul fast float %5861, %4001
  %5863 = fadd fast float %5836, %3984
  %5864 = fadd fast float %5863, %5853
  %5865 = fmul fast float %5864, %4001
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5868 = fcmp fast oeq float %5867, 0.000000e+00
  br i1 %5868, label %6087, label %5869

; <label>:5869                                    ; preds = %5811
  %5870 = extractvalue %dx.types.CBufRet.f32 %5866, 0
  %5871 = extractvalue %dx.types.CBufRet.f32 %5866, 1
  %5872 = extractvalue %dx.types.CBufRet.f32 %5866, 2
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 0
  %5875 = extractvalue %dx.types.CBufRet.f32 %5873, 1
  %5876 = extractvalue %dx.types.CBufRet.f32 %5873, 2
  %5877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5878 = extractvalue %dx.types.CBufRet.f32 %5877, 0
  %5879 = extractvalue %dx.types.CBufRet.f32 %5877, 1
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5875, float %5876, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = select i1 %185, float %5878, float %5874
  %5882 = select i1 %185, float %5880, float %5875
  %5883 = select i1 %185, float %5879, float %5876
  %5884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5885 = extractvalue %dx.types.CBufRet.f32 %5884, 1
  %5886 = fcmp fast une float %5885, 0.000000e+00
  br i1 %5886, label %5887, label %5904

; <label>:5887                                    ; preds = %5869
  %5888 = fptoui float %84 to i32
  %5889 = fptoui float %85 to i32
  %5890 = lshr i32 %5888, 4
  %5891 = lshr i32 %5889, 4
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5894 = fptoui float %5893 to i32
  %5895 = add i32 %5894, 15
  %5896 = lshr i32 %5895, 4
  %5897 = mul i32 %5896, %5891
  %5898 = add i32 %5897, %5890
  %5899 = shl i32 %5898, 3
  %5900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5899, i32 undef)  ; BufferLoad(srv,index,wot)
  %5901 = extractvalue %dx.types.ResRet.i32 %5900, 0
  %5902 = and i32 %5901, -268435456
  %5903 = icmp eq i32 %5902, -1342177280
  br i1 %5903, label %5909, label %5904

; <label>:5904                                    ; preds = %5887, %5869
  %5905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4618, float %4619, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5906 = extractvalue %dx.types.ResRet.f32 %5905, 0
  %5907 = extractvalue %dx.types.ResRet.f32 %5905, 1
  %5908 = extractvalue %dx.types.ResRet.f32 %5905, 2
  br label %5909

; <label>:5909                                    ; preds = %5904, %5887
  %5910 = phi float [ %5906, %5904 ], [ 0.000000e+00, %5887 ]
  %5911 = phi float [ %5907, %5904 ], [ 0.000000e+00, %5887 ]
  %5912 = phi float [ %5908, %5904 ], [ 0.000000e+00, %5887 ]
  %5913 = call float @dx.op.binary.f32(i32 36, float %5911, float %5912)  ; FMin(a,b)
  %5914 = call float @dx.op.binary.f32(i32 36, float %5910, float %5913)  ; FMin(a,b)
  %5915 = fcmp fast ogt float %5914, 0.000000e+00
  br i1 %5915, label %5916, label %6087, !dx.controlflow.hints !90

; <label>:5916                                    ; preds = %5909
  %5917 = fmul fast float %5910, %5881
  %5918 = fmul fast float %5911, %5882
  %5919 = fmul fast float %5912, %5883
  %5920 = fsub fast float %5870, %4603
  %5921 = fsub fast float %5871, %4602
  %5922 = fsub fast float %5872, %4601
  %5923 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float %5920, float %5921, float %5922)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = call float @dx.op.unary.f32(i32 25, float %5923)  ; Rsqrt(value)
  %5925 = fmul fast float %5924, %5920
  %5926 = fmul fast float %5924, %5921
  %5927 = fmul fast float %5924, %5922
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5870, float %5871, float %5872, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4599, float %4598, float %5925, float %5926, float %5927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5930 = call float @dx.op.unary.f32(i32 7, float %5928)  ; Saturate(value)
  %5931 = fmul fast float %5930, %5930
  %5932 = fmul fast float %5931, %4657
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5934 = fmul fast float %5933, %5930
  %5935 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %5925, float %5926, float %5927)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = fmul fast float %5935, %5935
  %5937 = call float @dx.op.unary.f32(i32 6, float %5928)  ; FAbs(value)
  %5938 = fsub fast float 1.000000e+00, %4650
  %5939 = fmul fast float %4632, %4632
  %5940 = fmul fast float %5939, %5938
  %5941 = fadd fast float %5940, %4650
  %5942 = bitcast float %5941 to i32
  %5943 = ashr i32 %5942, 1
  %5944 = add nsw i32 %5943, 532487669
  %5945 = bitcast i32 %5944 to float
  %5946 = fadd fast float %5945, %4632
  %5947 = fmul fast float %4650, %5936
  %5948 = fsub fast float 1.000000e+00, %5936
  %5949 = fadd fast float %5948, %5947
  %5950 = fmul fast float %5937, %5937
  %5951 = fmul fast float %5950, %5938
  %5952 = fadd fast float %5951, %4650
  %5953 = bitcast float %5952 to i32
  %5954 = ashr i32 %5953, 1
  %5955 = add nsw i32 %5954, 532487669
  %5956 = bitcast i32 %5955 to float
  %5957 = fadd fast float %5956, %5937
  %5958 = fmul fast float %5949, %5949
  %5959 = fmul fast float %5958, %5946
  %5960 = fmul fast float %5959, %5957
  %5961 = fdiv fast float 0x3FF0A00000000000, %5960
  %5962 = fmul fast float %5961, %4650
  %5963 = call float @dx.op.unary.f32(i32 6, float %5929)  ; FAbs(value)
  %5964 = fsub fast float 1.000000e+00, %5963
  %5965 = bitcast float %5964 to i32
  %5966 = sitofp i32 %5965 to float
  %5967 = fmul fast float %5966, 5.000000e+00
  %5968 = fadd fast float %5967, 0xC1EFBF8940000000
  %5969 = fptosi float %5968 to i32
  %5970 = bitcast i32 %5969 to float
  %5971 = fsub fast float 1.000000e+00, %4604
  %5972 = fsub fast float 1.000000e+00, %4605
  %5973 = fsub fast float 1.000000e+00, %4630
  %5974 = fmul fast float %5970, %5971
  %5975 = fmul fast float %5970, %5972
  %5976 = fmul fast float %5970, %5973
  %5977 = fadd fast float %5974, %4604
  %5978 = fadd fast float %5975, %4605
  %5979 = fadd fast float %5976, %4630
  br i1 %4905, label %5980, label %6003

; <label>:5980                                    ; preds = %5916
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3981, float %5963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.ResRet.f32 %5981, 2
  %5985 = fadd fast float %5982, -5.000000e-01
  %5986 = fadd fast float %5983, -5.000000e-01
  %5987 = fadd fast float %5984, -5.000000e-01
  %5988 = fmul fast float %4604, 4.000000e+00
  %5989 = fmul fast float %5988, %5971
  %5990 = fmul fast float %5989, %5985
  %5991 = fmul fast float %4605, 4.000000e+00
  %5992 = fmul fast float %5991, %5972
  %5993 = fmul fast float %5992, %5986
  %5994 = fmul fast float %4630, 4.000000e+00
  %5995 = fmul fast float %5994, %5973
  %5996 = fmul fast float %5995, %5987
  %5997 = fadd fast float %5990, %5977
  %5998 = fadd fast float %5993, %5978
  %5999 = fadd fast float %5996, %5979
  %6000 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %6001 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6002 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  br label %6003

; <label>:6003                                    ; preds = %5980, %5916
  %6004 = phi float [ %6000, %5980 ], [ %5977, %5916 ]
  %6005 = phi float [ %6001, %5980 ], [ %5978, %5916 ]
  %6006 = phi float [ %6002, %5980 ], [ %5979, %5916 ]
  %6007 = fmul fast float %5928, 9.843750e-01
  %6008 = fadd fast float %6007, 7.812500e-03
  %6009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6008, float %4895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6010 = extractvalue %dx.types.ResRet.f32 %6009, 2
  %6011 = extractvalue %dx.types.ResRet.f32 %6009, 3
  %6012 = fmul fast float %6010, %4604
  %6013 = fmul fast float %6010, %4605
  %6014 = fmul fast float %6010, %4630
  %6015 = fadd fast float %6012, %6011
  %6016 = fadd fast float %6013, %6011
  %6017 = fadd fast float %6014, %6011
  br i1 %4905, label %6018, label %6041

; <label>:6018                                    ; preds = %6003
  %6019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3981, float %5928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = extractvalue %dx.types.ResRet.f32 %6019, 1
  %6022 = extractvalue %dx.types.ResRet.f32 %6019, 2
  %6023 = fadd fast float %6020, -5.000000e-01
  %6024 = fadd fast float %6021, -5.000000e-01
  %6025 = fadd fast float %6022, -5.000000e-01
  %6026 = fmul fast float %4604, 4.000000e+00
  %6027 = fmul fast float %6026, %5971
  %6028 = fmul fast float %6027, %6023
  %6029 = fmul fast float %4605, 4.000000e+00
  %6030 = fmul fast float %6029, %5972
  %6031 = fmul fast float %6030, %6024
  %6032 = fmul fast float %4630, 4.000000e+00
  %6033 = fmul fast float %6032, %5973
  %6034 = fmul fast float %6033, %6025
  %6035 = fadd fast float %6028, %6015
  %6036 = fadd fast float %6031, %6016
  %6037 = fadd fast float %6034, %6017
  %6038 = call float @dx.op.unary.f32(i32 7, float %6035)  ; Saturate(value)
  %6039 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6040 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  br label %6041

; <label>:6041                                    ; preds = %6018, %6003
  %6042 = phi float [ %6038, %6018 ], [ %6015, %6003 ]
  %6043 = phi float [ %6039, %6018 ], [ %6016, %6003 ]
  %6044 = phi float [ %6040, %6018 ], [ %6017, %6003 ]
  %6045 = call float @dx.op.binary.f32(i32 35, float %6043, float %6044)  ; FMax(a,b)
  %6046 = call float @dx.op.binary.f32(i32 35, float %6042, float %6045)  ; FMax(a,b)
  %6047 = fsub fast float 1.000000e+00, %6046
  %6048 = fmul fast float %6004, %5962
  %6049 = fmul fast float %6005, %5962
  %6050 = fmul fast float %6006, %5962
  %6051 = fsub fast float 1.000000e+00, %5929
  %6052 = bitcast float %6051 to i32
  %6053 = sitofp i32 %6052 to float
  %6054 = fmul fast float %6053, 5.000000e+00
  %6055 = fadd fast float %6054, 0xC1EFBF8940000000
  %6056 = fptosi float %6055 to i32
  %6057 = bitcast i32 %6056 to float
  %6058 = fmul fast float %6057, %3980
  %6059 = fmul fast float %6047, %6058
  %6060 = fmul fast float %6059, %5831
  %6061 = fmul fast float %6059, %5832
  %6062 = fmul fast float %6059, %5833
  %6063 = fadd fast float %6060, %6048
  %6064 = fadd fast float %6061, %6049
  %6065 = fadd fast float %6062, %6050
  %6066 = fmul fast float %5934, %5917
  %6067 = fmul fast float %6066, %6047
  %6068 = fmul fast float %5934, %5918
  %6069 = fmul fast float %6068, %6047
  %6070 = fmul fast float %5934, %5919
  %6071 = fmul fast float %6070, %6047
  %6072 = fmul fast float %6066, %6063
  %6073 = fmul fast float %6068, %6064
  %6074 = fmul fast float %6070, %6065
  %6075 = fadd fast float %6067, %5815
  %6076 = fmul fast float %6075, %4001
  %6077 = fadd fast float %6069, %5816
  %6078 = fmul fast float %6077, %4001
  %6079 = fadd fast float %6071, %5817
  %6080 = fmul fast float %6079, %4001
  %6081 = fadd fast float %6072, %5858
  %6082 = fmul fast float %6081, %4001
  %6083 = fadd fast float %6073, %5861
  %6084 = fmul fast float %6083, %4001
  %6085 = fadd fast float %6074, %5864
  %6086 = fmul fast float %6085, %4001
  br label %6087

; <label>:6087                                    ; preds = %6041, %5909, %5811
  %6088 = phi float [ %5859, %5811 ], [ %5859, %5909 ], [ %6082, %6041 ]
  %6089 = phi float [ %5862, %5811 ], [ %5862, %5909 ], [ %6084, %6041 ]
  %6090 = phi float [ %5865, %5811 ], [ %5865, %5909 ], [ %6086, %6041 ]
  %6091 = phi float [ %5854, %5811 ], [ %5854, %5909 ], [ %6076, %6041 ]
  %6092 = phi float [ %5855, %5811 ], [ %5855, %5909 ], [ %6078, %6041 ]
  %6093 = phi float [ %5856, %5811 ], [ %5856, %5909 ], [ %6080, %6041 ]
  %6094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.i32 %6094, 0
  %6096 = icmp eq i32 %6095, 0
  br i1 %6096, label %6527, label %6097

; <label>:6097                                    ; preds = %6087
  %6098 = fptoui float %84 to i32
  %6099 = fptoui float %85 to i32
  %6100 = lshr i32 %6098, 4
  %6101 = lshr i32 %6099, 4
  %6102 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.i32 %6102, 0
  %6104 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6101, i32 %6103, i32 %6100)  ; UMad(a,b,c)
  %6105 = add nsw i32 %6095, -1
  %6106 = call i32 @dx.op.binary.i32(i32 37, i32 %6105, i32 0)  ; IMax(a,b)
  %6107 = call float @dx.op.binary.f32(i32 35, float %79, float 0.000000e+00)  ; FMax(a,b)
  %6108 = fptoui float %6107 to i32
  %6109 = lshr i32 %6108, 5
  %6110 = call i32 @dx.op.binary.i32(i32 40, i32 %6109, i32 8191)  ; UMin(a,b)
  %6111 = shl i32 %6110, 2
  %6112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6111, i32 undef)  ; BufferLoad(srv,index,wot)
  %6113 = extractvalue %dx.types.ResRet.i32 %6112, 0
  %6114 = lshr i32 %6113, 16
  %6115 = and i32 %6113, 65535
  %6116 = lshr i32 %6113, 21
  %6117 = lshr i32 %6115, 5
  %6118 = call i32 @dx.op.binary.i32(i32 40, i32 %6117, i32 %6106)  ; UMin(a,b)
  %6119 = icmp ugt i32 %6116, %6118
  br i1 %6119, label %6527, label %6120

; <label>:6120                                    ; preds = %6097
  br label %6121

; <label>:6121                                    ; preds = %6517, %6120
  %6122 = phi i32 [ %6524, %6517 ], [ %6116, %6120 ]
  %6123 = phi float [ %6518, %6517 ], [ %6088, %6120 ]
  %6124 = phi float [ %6519, %6517 ], [ %6089, %6120 ]
  %6125 = phi float [ %6520, %6517 ], [ %6090, %6120 ]
  %6126 = phi float [ %6521, %6517 ], [ %6091, %6120 ]
  %6127 = phi float [ %6522, %6517 ], [ %6092, %6120 ]
  %6128 = phi float [ %6523, %6517 ], [ %6093, %6120 ]
  %6129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6130 = extractvalue %dx.types.CBufRet.i32 %6129, 0
  %6131 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6104, i32 %6130, i32 %6122)  ; UMad(a,b,c)
  %6132 = shl i32 %6131, 2
  %6133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6132, i32 undef)  ; BufferLoad(srv,index,wot)
  %6134 = extractvalue %dx.types.ResRet.i32 %6133, 0
  %6135 = shl i32 %6122, 5
  %6136 = sub nsw i32 %6114, %6135
  %6137 = call i32 @dx.op.binary.i32(i32 37, i32 %6136, i32 0)  ; IMax(a,b)
  %6138 = call i32 @dx.op.binary.i32(i32 38, i32 %6137, i32 31)  ; IMin(a,b)
  %6139 = sub nsw i32 1, %6114
  %6140 = add nsw i32 %6139, %6115
  %6141 = call i32 @dx.op.binary.i32(i32 37, i32 %6140, i32 0)  ; IMax(a,b)
  %6142 = call i32 @dx.op.binary.i32(i32 38, i32 %6141, i32 32)  ; IMin(a,b)
  %6143 = and i32 %6142, 31
  %6144 = shl i32 -1, %6143
  %6145 = xor i32 %6144, -1
  %6146 = and i32 %6138, 31
  %6147 = shl i32 %6145, %6146
  %6148 = icmp eq i32 %6142, 32
  %6149 = select i1 %6148, i32 -1, i32 %6147
  %6150 = and i32 %6149, %6134
  %6151 = icmp eq i32 %6150, 0
  br i1 %6151, label %6517, label %6152

; <label>:6152                                    ; preds = %6121
  br label %6153

; <label>:6153                                    ; preds = %6233, %6152
  %6154 = phi i32 [ %6165, %6233 ], [ %6150, %6152 ]
  %6155 = phi float [ %6234, %6233 ], [ %6123, %6152 ]
  %6156 = phi float [ %6235, %6233 ], [ %6124, %6152 ]
  %6157 = phi float [ %6236, %6233 ], [ %6125, %6152 ]
  %6158 = phi float [ %6237, %6233 ], [ %6126, %6152 ]
  %6159 = phi float [ %6238, %6233 ], [ %6127, %6152 ]
  %6160 = phi float [ %6239, %6233 ], [ %6128, %6152 ]
  %6161 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6154)  ; FirstbitLo(value)
  %6162 = add i32 %6161, %6135
  %6163 = and i32 %6161, 31
  %6164 = shl i32 1, %6163
  %6165 = xor i32 %6164, %6154
  %6166 = mul i32 %6162, 112
  %6167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6166, i32 undef)  ; BufferLoad(srv,index,wot)
  %6168 = extractvalue %dx.types.ResRet.f32 %6167, 0
  %6169 = extractvalue %dx.types.ResRet.f32 %6167, 1
  %6170 = extractvalue %dx.types.ResRet.f32 %6167, 2
  %6171 = or i32 %6166, 12
  %6172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6171, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.f32 %6172, 0
  %6174 = add i32 %6166, 44
  %6175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6174, i32 undef)  ; BufferLoad(srv,index,wot)
  %6176 = extractvalue %dx.types.ResRet.f32 %6175, 0
  %6177 = add i32 %6166, 48
  %6178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6177, i32 undef)  ; BufferLoad(srv,index,wot)
  %6179 = extractvalue %dx.types.ResRet.f32 %6178, 0
  %6180 = extractvalue %dx.types.ResRet.f32 %6178, 1
  %6181 = extractvalue %dx.types.ResRet.f32 %6178, 2
  %6182 = add i32 %6166, 80
  %6183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6182, i32 undef)  ; BufferLoad(srv,index,wot)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 1
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6186 = call float @dx.op.dot3.f32(i32 55, float %6168, float %6169, float %6170, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = select i1 %185, float %6184, float %6168
  %6188 = select i1 %185, float %6186, float %6169
  %6189 = select i1 %185, float %6185, float %6170
  %6190 = fsub fast float %6179, %143
  %6191 = fsub fast float %6180, %144
  %6192 = fsub fast float %6181, %145
  %6193 = call float @dx.op.dot3.f32(i32 55, float %6190, float %6191, float %6192, float %6190, float %6191, float %6192)  ; Dot3(ax,ay,az,bx,by,bz)
  %6194 = call float @dx.op.unary.f32(i32 24, float %6193)  ; Sqrt(value)
  %6195 = fdiv fast float 1.000000e+00, %6194
  %6196 = fmul fast float %6195, %6190
  %6197 = fmul fast float %6195, %6191
  %6198 = fmul fast float %6195, %6192
  %6199 = fadd fast float %6194, %6173
  %6200 = fdiv fast float 1.000000e+00, %6199
  %6201 = fmul float %6176, %6200
  %6202 = fmul float %6201, %6201
  %6203 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6204 = and i32 %6164, %6150
  %6205 = icmp eq i32 %6204, 0
  br i1 %6205, label %6228, label %6206, !dx.controlflow.hints !91

; <label>:6206                                    ; preds = %6153
  %6207 = lshr i32 %6098, 5
  %6208 = lshr i32 %6099, 5
  %6209 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6207, i32 %6208, i32 %6162, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6210 = extractvalue %dx.types.ResRet.i32 %6209, 0
  %6211 = and i32 %6210, 3
  %6212 = icmp eq i32 %6211, 0
  %6213 = select i1 %6212, float 1.000000e+00, float 0.000000e+00
  %6214 = icmp eq i32 %6211, 3
  br i1 %6214, label %6215, label %6228

; <label>:6215                                    ; preds = %6206
  %6216 = lshr i32 %6210, 10
  %6217 = and i32 %6216, 8160
  %6218 = and i32 %6099, 31
  %6219 = or i32 %6217, %6218
  %6220 = lshr i32 %6210, 1
  %6221 = and i32 %6220, 16352
  %6222 = and i32 %6098, 31
  %6223 = or i32 %6221, %6222
  %6224 = lshr i32 %6210, 23
  %6225 = and i32 %6224, 255
  %6226 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6223, i32 %6219, i32 %6225, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6227 = extractvalue %dx.types.ResRet.f32 %6226, 0
  br label %6228

; <label>:6228                                    ; preds = %6215, %6206, %6153
  %6229 = phi float [ %6227, %6215 ], [ %6213, %6206 ], [ 0.000000e+00, %6153 ]
  %6230 = call float @dx.op.binary.f32(i32 36, float %6229, float %6229)  ; FMin(a,b)
  %6231 = call float @dx.op.binary.f32(i32 36, float %6229, float %6230)  ; FMin(a,b)
  %6232 = fcmp fast ogt float %6231, 0.000000e+00
  br i1 %6232, label %6241, label %6233, !dx.controlflow.hints !92

; <label>:6233                                    ; preds = %6473, %6228
  %6234 = phi float [ %6155, %6228 ], [ %6513, %6473 ]
  %6235 = phi float [ %6156, %6228 ], [ %6514, %6473 ]
  %6236 = phi float [ %6157, %6228 ], [ %6515, %6473 ]
  %6237 = phi float [ %6158, %6228 ], [ %6507, %6473 ]
  %6238 = phi float [ %6159, %6228 ], [ %6508, %6473 ]
  %6239 = phi float [ %6160, %6228 ], [ %6509, %6473 ]
  %6240 = icmp eq i32 %6154, %6164
  br i1 %6240, label %6516, label %6153

; <label>:6241                                    ; preds = %6228
  %6242 = fmul fast float %6229, %6187
  %6243 = fmul fast float %6229, %6188
  %6244 = fmul fast float %6229, %6189
  %6245 = fsub fast float %6181, %4403
  %6246 = fcmp fast ogt float %6245, 0.000000e+00
  %6247 = fsub fast float %145, %4403
  %6248 = fcmp fast ogt float %6247, 0.000000e+00
  %6249 = xor i1 %6248, %6246
  %6250 = fsub fast float %4403, %6181
  %6251 = fmul fast float %6250, 2.000000e+00
  %6252 = fadd fast float %6251, %6181
  %6253 = select i1 %6249, float %6181, float %6252
  %6254 = fsub fast float %6253, %145
  %6255 = call float @dx.op.dot3.f32(i32 55, float %6190, float %6191, float %6254, float %6190, float %6191, float %6254)  ; Dot3(ax,ay,az,bx,by,bz)
  %6256 = call float @dx.op.unary.f32(i32 25, float %6255)  ; Rsqrt(value)
  %6257 = fmul fast float %6256, %6190
  %6258 = fmul fast float %6256, %6191
  %6259 = fmul fast float %6256, %6254
  %6260 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4411)  ; Dot3(ax,ay,az,bx,by,bz)
  %6261 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6257, float %6258, float %6259)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = fdiv fast float 1.000000e+00, %6261
  %6263 = fmul fast float %6262, %6260
  %6264 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6247, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6265 = fcmp fast ogt float %6264, 0.000000e+00
  %6266 = fcmp fast olt float %6264, 0.000000e+00
  %6267 = zext i1 %6265 to i32
  %6268 = zext i1 %6266 to i32
  %6269 = sub nsw i32 %6267, %6268
  %6270 = sitofp i32 %6269 to float
  %6271 = fsub fast float %6253, %4403
  %6272 = call float @dx.op.dot3.f32(i32 55, float %6190, float %6191, float %6271, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6273 = fcmp fast ogt float %6272, 0.000000e+00
  %6274 = fcmp fast olt float %6272, 0.000000e+00
  %6275 = zext i1 %6273 to i32
  %6276 = zext i1 %6274 to i32
  %6277 = sub nsw i32 %6275, %6276
  %6278 = sitofp i32 %6277 to float
  %6279 = fcmp fast une float %6270, %6278
  br i1 %6279, label %6280, label %6290

; <label>:6280                                    ; preds = %6241
  %6281 = fmul fast float %6263, %6259
  %6282 = fmul fast float %6263, %6258
  %6283 = fmul fast float %6263, %6257
  %6284 = fmul fast float %6283, %6283
  %6285 = fmul fast float %6282, %6282
  %6286 = fadd fast float %6284, %6285
  %6287 = fmul fast float %6281, %6281
  %6288 = fadd fast float %6286, %6287
  %6289 = call float @dx.op.unary.f32(i32 24, float %6288)  ; Sqrt(value)
  br label %6302

; <label>:6290                                    ; preds = %6241
  %6291 = icmp slt i32 %6269, 0
  br i1 %6291, label %6292, label %6302

; <label>:6292                                    ; preds = %6290
  %6293 = fsub fast float %143, %6179
  %6294 = fsub fast float %144, %6180
  %6295 = fsub fast float %145, %6253
  %6296 = fmul fast float %6293, %6293
  %6297 = fmul fast float %6294, %6294
  %6298 = fadd fast float %6296, %6297
  %6299 = fmul fast float %6295, %6295
  %6300 = fadd fast float %6298, %6299
  %6301 = call float @dx.op.unary.f32(i32 24, float %6300)  ; Sqrt(value)
  br label %6302

; <label>:6302                                    ; preds = %6292, %6290, %6280
  %6303 = phi float [ %6289, %6280 ], [ %6301, %6292 ], [ 0.000000e+00, %6290 ]
  %6304 = and i1 %6248, %6246
  %6305 = fsub fast float -0.000000e+00, %6303
  %6306 = select i1 %6304, float -0.000000e+00, float %6305
  %6307 = fmul fast float %4404, 0x3FF7154760000000
  %6308 = fmul fast float %6307, %6306
  %6309 = fmul fast float %4405, 0x3FF7154760000000
  %6310 = fmul fast float %6309, %6306
  %6311 = fmul fast float %4406, 0x3FF7154760000000
  %6312 = fmul fast float %6311, %6306
  %6313 = call float @dx.op.unary.f32(i32 21, float %6308)  ; Exp(value)
  %6314 = call float @dx.op.unary.f32(i32 21, float %6310)  ; Exp(value)
  %6315 = call float @dx.op.unary.f32(i32 21, float %6312)  ; Exp(value)
  %6316 = call float @dx.op.unary.f32(i32 7, float %6313)  ; Saturate(value)
  %6317 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6318 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6319 = fmul fast float %6242, %6316
  %6320 = fmul fast float %6243, %6317
  %6321 = fmul fast float %6244, %6318
  %6322 = fsub fast float %6196, %4603
  %6323 = fsub fast float %6197, %4602
  %6324 = fsub fast float %6198, %4601
  %6325 = call float @dx.op.dot3.f32(i32 55, float %6322, float %6323, float %6324, float %6322, float %6323, float %6324)  ; Dot3(ax,ay,az,bx,by,bz)
  %6326 = call float @dx.op.unary.f32(i32 25, float %6325)  ; Rsqrt(value)
  %6327 = fmul fast float %6326, %6322
  %6328 = fmul fast float %6326, %6323
  %6329 = fmul fast float %6326, %6324
  %6330 = call float @dx.op.dot3.f32(i32 55, float %6196, float %6197, float %6198, float %4607, float %4608, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %6331 = call float @dx.op.dot3.f32(i32 55, float %4600, float %4599, float %4598, float %6327, float %6328, float %6329)  ; Dot3(ax,ay,az,bx,by,bz)
  %6332 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6333 = fmul fast float %6332, %6203
  %6334 = fmul fast float %6332, %6332
  %6335 = fmul fast float %6334, %4657
  %6336 = call float @dx.op.unary.f32(i32 7, float %6335)  ; Saturate(value)
  %6337 = fmul fast float %6333, %6336
  %6338 = bitcast float %6193 to i32
  %6339 = ashr i32 %6338, 1
  %6340 = sub nsw i32 1597463007, %6339
  %6341 = bitcast i32 %6340 to float
  %6342 = fmul fast float %6341, %6190
  %6343 = fmul fast float %6341, %6191
  %6344 = fmul fast float %6341, %6192
  %6345 = fsub fast float %6342, %4603
  %6346 = fsub fast float %6343, %4602
  %6347 = fsub fast float %6344, %4601
  %6348 = call float @dx.op.dot3.f32(i32 55, float %6345, float %6346, float %6347, float %6345, float %6346, float %6347)  ; Dot3(ax,ay,az,bx,by,bz)
  %6349 = call float @dx.op.unary.f32(i32 25, float %6348)  ; Rsqrt(value)
  %6350 = fmul fast float %6345, %6349
  %6351 = fmul fast float %6346, %6349
  %6352 = fmul fast float %6347, %6349
  %6353 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %6350, float %6351, float %6352)  ; Dot3(ax,ay,az,bx,by,bz)
  %6354 = fmul fast float %6353, %6353
  %6355 = call float @dx.op.unary.f32(i32 6, float %6330)  ; FAbs(value)
  %6356 = fsub fast float 1.000000e+00, %4650
  %6357 = fmul fast float %4632, %4632
  %6358 = fmul fast float %6357, %6356
  %6359 = fadd fast float %6358, %4650
  %6360 = bitcast float %6359 to i32
  %6361 = ashr i32 %6360, 1
  %6362 = add nsw i32 %6361, 532487669
  %6363 = bitcast i32 %6362 to float
  %6364 = fadd fast float %6363, %4632
  %6365 = fmul fast float %4650, %6354
  %6366 = fsub fast float 1.000000e+00, %6354
  %6367 = fadd fast float %6366, %6365
  %6368 = fmul fast float %6355, %6355
  %6369 = fmul fast float %6368, %6356
  %6370 = fadd fast float %6369, %4650
  %6371 = bitcast float %6370 to i32
  %6372 = ashr i32 %6371, 1
  %6373 = add nsw i32 %6372, 532487669
  %6374 = bitcast i32 %6373 to float
  %6375 = fadd fast float %6374, %6355
  %6376 = fmul fast float %6367, %6367
  %6377 = fmul fast float %6376, %6364
  %6378 = fmul fast float %6377, %6375
  %6379 = fdiv fast float 1.000000e+00, %6378
  %6380 = bitcast float %4650 to i32
  %6381 = sitofp i32 %6380 to float
  %6382 = fmul fast float %6381, 0x3FE7F73180000000
  %6383 = fadd fast float %6382, 0x41AFE27C40000000
  %6384 = fptosi float %6383 to i32
  %6385 = bitcast i32 %6384 to float
  %6386 = fmul fast float %6176, 0x3FD80E9D60000000
  %6387 = fmul fast float %6386, %6341
  %6388 = fadd fast float %6385, %6387
  %6389 = bitcast float %6388 to i32
  %6390 = sub nsw i32 2129859010, %6389
  %6391 = bitcast i32 %6390 to float
  %6392 = fmul fast float %4650, %6379
  %6393 = fmul fast float %6392, %6385
  %6394 = fmul fast float %6393, %6391
  %6395 = call float @dx.op.unary.f32(i32 6, float %6331)  ; FAbs(value)
  %6396 = fsub fast float 1.000000e+00, %6395
  %6397 = bitcast float %6396 to i32
  %6398 = sitofp i32 %6397 to float
  %6399 = fmul fast float %6398, 5.000000e+00
  %6400 = fadd fast float %6399, 0xC1EFBF8940000000
  %6401 = fptosi float %6400 to i32
  %6402 = bitcast i32 %6401 to float
  %6403 = fsub fast float 1.000000e+00, %4604
  %6404 = fsub fast float 1.000000e+00, %4605
  %6405 = fsub fast float 1.000000e+00, %4630
  %6406 = fmul fast float %6402, %6403
  %6407 = fmul fast float %6402, %6404
  %6408 = fmul fast float %6402, %6405
  %6409 = fadd fast float %6406, %4604
  %6410 = fadd fast float %6407, %4605
  %6411 = fadd fast float %6408, %4630
  br i1 %4905, label %6412, label %6435

; <label>:6412                                    ; preds = %6302
  %6413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3981, float %6395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6414 = extractvalue %dx.types.ResRet.f32 %6413, 0
  %6415 = extractvalue %dx.types.ResRet.f32 %6413, 1
  %6416 = extractvalue %dx.types.ResRet.f32 %6413, 2
  %6417 = fadd fast float %6414, -5.000000e-01
  %6418 = fadd fast float %6415, -5.000000e-01
  %6419 = fadd fast float %6416, -5.000000e-01
  %6420 = fmul fast float %4604, 4.000000e+00
  %6421 = fmul fast float %6420, %6403
  %6422 = fmul fast float %6421, %6417
  %6423 = fmul fast float %4605, 4.000000e+00
  %6424 = fmul fast float %6423, %6404
  %6425 = fmul fast float %6424, %6418
  %6426 = fmul fast float %4630, 4.000000e+00
  %6427 = fmul fast float %6426, %6405
  %6428 = fmul fast float %6427, %6419
  %6429 = fadd fast float %6422, %6409
  %6430 = fadd fast float %6425, %6410
  %6431 = fadd fast float %6428, %6411
  %6432 = call float @dx.op.unary.f32(i32 7, float %6429)  ; Saturate(value)
  %6433 = call float @dx.op.unary.f32(i32 7, float %6430)  ; Saturate(value)
  %6434 = call float @dx.op.unary.f32(i32 7, float %6431)  ; Saturate(value)
  br label %6435

; <label>:6435                                    ; preds = %6412, %6302
  %6436 = phi float [ %6432, %6412 ], [ %6409, %6302 ]
  %6437 = phi float [ %6433, %6412 ], [ %6410, %6302 ]
  %6438 = phi float [ %6434, %6412 ], [ %6411, %6302 ]
  %6439 = fmul fast float %6330, 9.843750e-01
  %6440 = fadd fast float %6439, 7.812500e-03
  %6441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6440, float %4895, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 2
  %6443 = extractvalue %dx.types.ResRet.f32 %6441, 3
  %6444 = fmul fast float %6442, %4604
  %6445 = fmul fast float %6442, %4605
  %6446 = fmul fast float %6442, %4630
  %6447 = fadd fast float %6444, %6443
  %6448 = fadd fast float %6445, %6443
  %6449 = fadd fast float %6446, %6443
  br i1 %4905, label %6450, label %6473

; <label>:6450                                    ; preds = %6435
  %6451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3981, float %6330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6452 = extractvalue %dx.types.ResRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.ResRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.ResRet.f32 %6451, 2
  %6455 = fadd fast float %6452, -5.000000e-01
  %6456 = fadd fast float %6453, -5.000000e-01
  %6457 = fadd fast float %6454, -5.000000e-01
  %6458 = fmul fast float %4604, 4.000000e+00
  %6459 = fmul fast float %6458, %6403
  %6460 = fmul fast float %6459, %6455
  %6461 = fmul fast float %4605, 4.000000e+00
  %6462 = fmul fast float %6461, %6404
  %6463 = fmul fast float %6462, %6456
  %6464 = fmul fast float %4630, 4.000000e+00
  %6465 = fmul fast float %6464, %6405
  %6466 = fmul fast float %6465, %6457
  %6467 = fadd fast float %6460, %6447
  %6468 = fadd fast float %6463, %6448
  %6469 = fadd fast float %6466, %6449
  %6470 = call float @dx.op.unary.f32(i32 7, float %6467)  ; Saturate(value)
  %6471 = call float @dx.op.unary.f32(i32 7, float %6468)  ; Saturate(value)
  %6472 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  br label %6473

; <label>:6473                                    ; preds = %6450, %6435
  %6474 = phi float [ %6470, %6450 ], [ %6447, %6435 ]
  %6475 = phi float [ %6471, %6450 ], [ %6448, %6435 ]
  %6476 = phi float [ %6472, %6450 ], [ %6449, %6435 ]
  %6477 = call float @dx.op.binary.f32(i32 35, float %6475, float %6476)  ; FMax(a,b)
  %6478 = call float @dx.op.binary.f32(i32 35, float %6474, float %6477)  ; FMax(a,b)
  %6479 = fsub fast float 1.000000e+00, %6478
  %6480 = fmul fast float %6436, %6394
  %6481 = fmul fast float %6437, %6394
  %6482 = fmul fast float %6438, %6394
  %6483 = fsub fast float 1.000000e+00, %6331
  %6484 = bitcast float %6483 to i32
  %6485 = sitofp i32 %6484 to float
  %6486 = fmul fast float %6485, 5.000000e+00
  %6487 = fadd fast float %6486, 0xC1EFBF8940000000
  %6488 = fptosi float %6487 to i32
  %6489 = bitcast i32 %6488 to float
  %6490 = fmul fast float %6489, %3980
  %6491 = fmul fast float %6479, %6490
  %6492 = fmul fast float %6491, %5831
  %6493 = fmul fast float %6491, %5832
  %6494 = fmul fast float %6491, %5833
  %6495 = fadd fast float %6492, %6480
  %6496 = fadd fast float %6493, %6481
  %6497 = fadd fast float %6494, %6482
  %6498 = fmul fast float %6319, %4001
  %6499 = fmul fast float %6498, %6337
  %6500 = fmul fast float %6499, %6479
  %6501 = fmul fast float %6320, %4001
  %6502 = fmul fast float %6501, %6337
  %6503 = fmul fast float %6502, %6479
  %6504 = fmul fast float %6321, %4001
  %6505 = fmul fast float %6504, %6337
  %6506 = fmul fast float %6505, %6479
  %6507 = fadd fast float %6500, %6158
  %6508 = fadd fast float %6503, %6159
  %6509 = fadd fast float %6506, %6160
  %6510 = fmul fast float %6499, %6495
  %6511 = fmul fast float %6502, %6496
  %6512 = fmul fast float %6505, %6497
  %6513 = fadd fast float %6510, %6155
  %6514 = fadd fast float %6511, %6156
  %6515 = fadd fast float %6512, %6157
  br label %6233

; <label>:6516                                    ; preds = %6233
  br label %6517

; <label>:6517                                    ; preds = %6516, %6121
  %6518 = phi float [ %6123, %6121 ], [ %6234, %6516 ]
  %6519 = phi float [ %6124, %6121 ], [ %6235, %6516 ]
  %6520 = phi float [ %6125, %6121 ], [ %6236, %6516 ]
  %6521 = phi float [ %6126, %6121 ], [ %6237, %6516 ]
  %6522 = phi float [ %6127, %6121 ], [ %6238, %6516 ]
  %6523 = phi float [ %6128, %6121 ], [ %6239, %6516 ]
  %6524 = add i32 %6122, 1
  %6525 = icmp ugt i32 %6524, %6118
  br i1 %6525, label %6526, label %6121

; <label>:6526                                    ; preds = %6517
  br label %6527

; <label>:6527                                    ; preds = %6526, %6097, %6087
  %6528 = phi float [ %6088, %6087 ], [ %6088, %6097 ], [ %6518, %6526 ]
  %6529 = phi float [ %6089, %6087 ], [ %6089, %6097 ], [ %6519, %6526 ]
  %6530 = phi float [ %6090, %6087 ], [ %6090, %6097 ], [ %6520, %6526 ]
  %6531 = phi float [ %6091, %6087 ], [ %6091, %6097 ], [ %6521, %6526 ]
  %6532 = phi float [ %6092, %6087 ], [ %6092, %6097 ], [ %6522, %6526 ]
  %6533 = phi float [ %6093, %6087 ], [ %6093, %6097 ], [ %6523, %6526 ]
  %6534 = call float @dx.op.unary.f32(i32 24, float %4610)  ; Sqrt(value)
  %6535 = call float @dx.op.unary.f32(i32 24, float %4611)  ; Sqrt(value)
  %6536 = call float @dx.op.unary.f32(i32 24, float %4612)  ; Sqrt(value)
  %6537 = fmul fast float %6534, %6531
  %6538 = fmul fast float %6535, %6532
  %6539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6540 = extractvalue %dx.types.CBufRet.f32 %6539, 0
  br i1 %185, label %6541, label %6564

; <label>:6541                                    ; preds = %6527
  %6542 = fadd fast float %6533, %3978
  %6543 = fmul fast float %6542, %3979
  %6544 = fsub fast float 1.000000e+00, %3979
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.f32 %6546, 3
  %6548 = fmul fast float %6547, %6545
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 0
  %6551 = fmul fast float %6550, %5837
  %6552 = extractvalue %dx.types.CBufRet.f32 %6549, 2
  %6553 = fmul fast float %6552, %4628
  %6554 = fadd fast float %6538, %6537
  %6555 = fmul fast float %6540, %6554
  %6556 = extractvalue %dx.types.CBufRet.f32 %6546, 1
  %6557 = fadd fast float %6548, %6543
  %6558 = fsub fast float %6557, %6551
  %6559 = fadd fast float %6558, %6553
  %6560 = fsub fast float %6559, %6556
  %6561 = extractvalue %dx.types.CBufRet.f32 %6546, 2
  %6562 = fmul fast float %6560, %6561
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  br label %6580

; <label>:6564                                    ; preds = %6527
  %6565 = fmul fast float %6536, %6533
  %6566 = fmul fast float %6540, %6537
  %6567 = fmul fast float %6540, %6538
  %6568 = fmul fast float %6565, %6540
  %6569 = add i32 %45, 356
  %6570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6569, i32 undef)  ; BufferLoad(srv,index,wot)
  %6571 = extractvalue %dx.types.ResRet.i32 %6570, 0
  %6572 = and i32 %6571, 32
  %6573 = icmp eq i32 %6572, 0
  br i1 %6573, label %6580, label %6574

; <label>:6574                                    ; preds = %6564
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 0
  %6577 = fmul fast float %6576, 0x3FE99999A0000000
  %6578 = fadd fast float %6576, %6566
  %6579 = fadd fast float %6577, %6568
  br label %6580

; <label>:6580                                    ; preds = %6574, %6564, %6541
  %6581 = phi float [ %6555, %6541 ], [ %6578, %6574 ], [ %6566, %6564 ]
  %6582 = phi float [ %6563, %6541 ], [ %6567, %6574 ], [ %6567, %6564 ]
  %6583 = phi float [ 1.000000e+00, %6541 ], [ %6579, %6574 ], [ %6568, %6564 ]
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 0
  %6586 = fmul fast float %6585, %6529
  %6587 = fmul fast float %6585, %6530
  %6588 = fadd fast float %6529, %6528
  %6589 = select i1 %185, float %6588, float %6528
  %6590 = fmul float %6589, %6585
  %6591 = select i1 %185, float 0.000000e+00, float %6586
  %6592 = select i1 %185, float 0.000000e+00, float %6587
  %6593 = fmul fast float %6581, %6534
  %6594 = fmul fast float %6582, %6535
  %6595 = fmul fast float %6583, %6536
  %6596 = fadd fast float %6590, %6593
  %6597 = fadd fast float %6591, %6594
  %6598 = fadd fast float %6592, %6595
  %6599 = select i1 %185, float %6582, float %6597
  %6600 = select i1 %185, float %6583, float %6598
  %6601 = call float @dx.op.binary.f32(i32 36, float %6596, float 3.225500e+04)  ; FMin(a,b)
  %6602 = call float @dx.op.binary.f32(i32 36, float %6599, float 3.225500e+04)  ; FMin(a,b)
  %6603 = call float @dx.op.binary.f32(i32 36, float %6600, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6601)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6602)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6603)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
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
!78 = !{i32 3, i32 5}
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

