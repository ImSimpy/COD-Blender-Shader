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
; shader hash: cd5a6596c682c844684609bd0e3650e6
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
  %541 = add i32 %45, 376
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
  %564 = add i32 %45, 456
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
  %762 = add i32 %45, 392
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
  %846 = add i32 %45, 408
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
  %1138 = add i32 %45, 444
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
  %1190 = add i32 %45, 428
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
  %1216 = add i32 %45, 380
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
  %1239 = add i32 %45, 460
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
  %1437 = add i32 %45, 396
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
  %1521 = add i32 %45, 412
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
  %1992 = add i32 %45, 448
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
  %2044 = add i32 %45, 432
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
  %2070 = add i32 %45, 384
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
  %2093 = add i32 %45, 464
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
  %2291 = add i32 %45, 400
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
  %2375 = add i32 %45, 416
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
  %2846 = add i32 %45, 452
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
  %2898 = add i32 %45, 436
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
  %2924 = add i32 %45, 388
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
  %2947 = add i32 %45, 468
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
  %3145 = add i32 %45, 404
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
  %3229 = add i32 %45, 420
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
  %3471 = add i32 %45, 360
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = bitcast i32 %3473 to float
  %3475 = fcmp fast oge float %3474, 0.000000e+00
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = select i1 %3475, float %3474, float %3477
  %3479 = call float @dx.op.dot2.f32(i32 54, float %3459, float %3460, float %3459, float %3460)  ; Dot2(ax,ay,bx,by)
  %3480 = fmul fast float %3479, 0x3FE3333340000000
  %3481 = fsub fast float 1.000000e+00, %3480
  %3482 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3460, float %3481, float %3459, float %3460, float %3481)  ; Dot3(ax,ay,az,bx,by,bz)
  %3483 = call float @dx.op.unary.f32(i32 25, float %3482)  ; Rsqrt(value)
  %3484 = fmul fast float %3483, %3459
  %3485 = fmul fast float %3483, %3460
  %3486 = fmul fast float %3481, %3483
  %3487 = fmul fast float %3486, %94
  %3488 = fmul fast float %3486, %96
  %3489 = fmul fast float %3486, %98
  %3490 = fmul fast float %3484, %66
  %3491 = fmul fast float %3484, %67
  %3492 = fmul fast float %3484, %68
  %3493 = fadd fast float %3487, %3490
  %3494 = fadd fast float %3488, %3491
  %3495 = fadd fast float %3489, %3492
  %3496 = fmul fast float %108, %3485
  %3497 = fmul fast float %109, %3485
  %3498 = fmul fast float %110, %3485
  %3499 = fadd fast float %3493, %3496
  %3500 = fadd fast float %3494, %3497
  %3501 = fadd fast float %3495, %3498
  %3502 = call float @dx.op.dot3.f32(i32 55, float %3499, float %3500, float %3501, float %3499, float %3500, float %3501)  ; Dot3(ax,ay,az,bx,by,bz)
  %3503 = call float @dx.op.unary.f32(i32 25, float %3502)  ; Rsqrt(value)
  %3504 = fmul fast float %3499, %3503
  %3505 = fmul fast float %3500, %3503
  %3506 = fmul fast float %3501, %3503
  %3507 = and i32 %47, 1
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3509, label %4017

; <label>:3509                                    ; preds = %3458
  %3510 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3511 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3512 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3513 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3514 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3515 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3516 = fadd fast float %3510, %144
  %3517 = fadd fast float %3511, %145
  %3518 = fadd fast float %3512, %146
  %3519 = fadd fast float %3513, %144
  %3520 = fadd fast float %3514, %145
  %3521 = fadd fast float %3515, %146
  %3522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3523 = extractvalue %dx.types.CBufRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.CBufRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.CBufRet.f32 %3522, 2
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 2
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3529 = fmul fast float %3523, %85
  %3530 = fmul fast float %3529, %3527
  %3531 = fmul fast float %3524, %86
  %3532 = fmul fast float %3531, %3528
  %3533 = fptoui float %3530 to i32
  %3534 = fptoui float %3532 to i32
  %3535 = fadd fast float %3523, -1.000000e+00
  %3536 = fadd fast float %3524, -1.000000e+00
  %3537 = fptoui float %3535 to i32
  %3538 = fptoui float %3536 to i32
  %3539 = call i32 @dx.op.binary.i32(i32 40, i32 %3533, i32 %3537)  ; UMin(a,b)
  %3540 = call i32 @dx.op.binary.i32(i32 40, i32 %3534, i32 %3538)  ; UMin(a,b)
  %3541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3541, 2
  %3543 = extractvalue %dx.types.CBufRet.f32 %3541, 3
  %3544 = fmul fast float %3542, %80
  %3545 = fsub fast float %3544, %3543
  %3546 = fadd fast float %3525, -1.000000e+00
  %3547 = call float @dx.op.binary.f32(i32 36, float %3545, float %3546)  ; FMin(a,b)
  %3548 = fptoui float %3547 to i32
  %3549 = fptoui float %3523 to i32
  %3550 = fptoui float %3524 to i32
  %3551 = mul i32 %3548, %3550
  %3552 = add i32 %3551, %3540
  %3553 = mul i32 %3552, %3549
  %3554 = add i32 %3553, %3539
  %3555 = shl i32 %3554, 2
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = and i32 %3557, 1023
  %3559 = lshr i32 %3557, 10
  %3560 = icmp eq i32 %3558, 0
  br i1 %3560, label %3986, label %3561

; <label>:3561                                    ; preds = %3509
  %3562 = and i32 %3557, 1023
  br label %3563

; <label>:3563                                    ; preds = %3689, %3561
  %3564 = phi i32 [ %3639, %3689 ], [ 0, %3561 ]
  %3565 = phi float [ %3690, %3689 ], [ 0.000000e+00, %3561 ]
  %3566 = phi float [ %3691, %3689 ], [ %3478, %3561 ]
  %3567 = phi float [ %3692, %3689 ], [ %3470, %3561 ]
  %3568 = phi float [ %3693, %3689 ], [ 0.000000e+00, %3561 ]
  %3569 = phi float [ %3694, %3689 ], [ 0.000000e+00, %3561 ]
  %3570 = phi float [ %3695, %3689 ], [ %3464, %3561 ]
  %3571 = phi float [ %3696, %3689 ], [ %3465, %3561 ]
  %3572 = phi float [ %3697, %3689 ], [ %3466, %3561 ]
  %3573 = phi float [ %3698, %3689 ], [ %3504, %3561 ]
  %3574 = phi float [ %3699, %3689 ], [ %3505, %3561 ]
  %3575 = phi float [ %3700, %3689 ], [ %3506, %3561 ]
  %3576 = phi float [ %3701, %3689 ], [ %3469, %3561 ]
  %3577 = phi float [ %3702, %3689 ], [ %3468, %3561 ]
  %3578 = phi float [ %3703, %3689 ], [ 0.000000e+00, %3561 ]
  %3579 = phi float [ %3704, %3689 ], [ %3467, %3561 ]
  %3580 = phi float [ %3705, %3689 ], [ %3461, %3561 ]
  %3581 = phi float [ %3706, %3689 ], [ %3462, %3561 ]
  %3582 = phi float [ %3707, %3689 ], [ %3463, %3561 ]
  %3583 = add nuw nsw i32 %3564, %3559
  %3584 = shl i32 %3583, 2
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = shl i32 %3586, 8
  %3588 = or i32 %3587, 48
  %3589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = extractvalue %dx.types.ResRet.f32 %3589, 1
  %3592 = extractvalue %dx.types.ResRet.f32 %3589, 2
  %3593 = extractvalue %dx.types.ResRet.f32 %3589, 3
  %3594 = or i32 %3587, 64
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.i32 %3595, 1
  %3598 = or i32 %3587, 80
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3602 = or i32 %3587, 96
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = extractvalue %dx.types.ResRet.f32 %3603, 3
  %3608 = or i32 %3587, 112
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3611 = or i32 %3587, 128
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = or i32 %3587, 144
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = or i32 %3587, 160
  %3624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.f32 %3624, 0
  %3626 = extractvalue %dx.types.ResRet.f32 %3624, 1
  %3627 = extractvalue %dx.types.ResRet.f32 %3624, 2
  %3628 = extractvalue %dx.types.ResRet.f32 %3624, 3
  %3629 = or i32 %3587, 192
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = or i32 %3587, 208
  %3633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = or i32 %3587, 248
  %3636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = add nuw nsw i32 %3564, 1
  %3640 = bitcast float %3593 to i32
  %3641 = and i32 %3640, 512
  %3642 = icmp eq i32 %3641, 0
  %3643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = extractvalue %dx.types.ResRet.f32 %3643, 3
  %3648 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3649 = or i32 %3587, 16
  %3650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3655 = call float @dx.op.dot4.f32(i32 56, float %3651, float %3652, float %3653, float %3654, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3656 = or i32 %3587, 32
  %3657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3656, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = extractvalue %dx.types.ResRet.f32 %3657, 3
  %3662 = call float @dx.op.dot4.f32(i32 56, float %3658, float %3659, float %3660, float %3661, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3663 = call float @dx.op.unary.f32(i32 27, float %3648)  ; Round_ni(value)
  %3664 = call float @dx.op.unary.f32(i32 6, float %3663)  ; FAbs(value)
  %3665 = call float @dx.op.unary.f32(i32 27, float %3655)  ; Round_ni(value)
  %3666 = call float @dx.op.unary.f32(i32 6, float %3665)  ; FAbs(value)
  %3667 = call float @dx.op.unary.f32(i32 6, float %3662)  ; FAbs(value)
  %3668 = call float @dx.op.unary.f32(i32 27, float %3667)  ; Round_ni(value)
  %3669 = fadd fast float %3666, %3664
  %3670 = fadd fast float %3669, %3668
  %3671 = fcmp fast oeq float %3670, 0.000000e+00
  %3672 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3673 = call float @dx.op.dot4.f32(i32 56, float %3651, float %3652, float %3653, float %3654, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3674 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %3519, float %3520, float %3521, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3675 = call float @dx.op.dot4.f32(i32 56, float %3651, float %3652, float %3653, float %3654, float %3519, float %3520, float %3521, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3676 = fsub fast float %3672, %3648
  %3677 = fsub fast float %3674, %3648
  %3678 = fsub fast float %3673, %3655
  %3679 = fsub fast float %3675, %3655
  %3680 = call float @dx.op.dot3.f32(i32 55, float %3590, float %3591, float %3592, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3682 = extractvalue %dx.types.CBufRet.f32 %3681, 2
  %3683 = fadd fast float %3682, %3680
  %3684 = call float @dx.op.unary.f32(i32 7, float %3683)  ; Saturate(value)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3681, 0
  %3686 = fcmp fast ogt float %3684, %3685
  %3687 = and i1 %3671, %3686
  %3688 = and i1 %3642, %3687
  br i1 %3688, label %3709, label %3689

; <label>:3689                                    ; preds = %3972, %3790, %3709, %3563
  %3690 = phi float [ %3565, %3709 ], [ %3793, %3790 ], [ %3793, %3972 ], [ %3565, %3563 ]
  %3691 = phi float [ %3566, %3709 ], [ %3566, %3790 ], [ %3947, %3972 ], [ %3566, %3563 ]
  %3692 = phi float [ %3567, %3709 ], [ %3567, %3790 ], [ %3945, %3972 ], [ %3567, %3563 ]
  %3693 = phi float [ %3568, %3709 ], [ %3568, %3790 ], [ %3917, %3972 ], [ %3568, %3563 ]
  %3694 = phi float [ %3569, %3709 ], [ %3569, %3790 ], [ %3915, %3972 ], [ %3569, %3563 ]
  %3695 = phi float [ %3570, %3709 ], [ %3570, %3790 ], [ %3982, %3972 ], [ %3570, %3563 ]
  %3696 = phi float [ %3571, %3709 ], [ %3571, %3790 ], [ %3983, %3972 ], [ %3571, %3563 ]
  %3697 = phi float [ %3572, %3709 ], [ %3572, %3790 ], [ %3984, %3972 ], [ %3572, %3563 ]
  %3698 = phi float [ %3573, %3709 ], [ %3573, %3790 ], [ %3896, %3972 ], [ %3573, %3563 ]
  %3699 = phi float [ %3574, %3709 ], [ %3574, %3790 ], [ %3897, %3972 ], [ %3574, %3563 ]
  %3700 = phi float [ %3575, %3709 ], [ %3575, %3790 ], [ %3898, %3972 ], [ %3575, %3563 ]
  %3701 = phi float [ %3576, %3709 ], [ %3576, %3790 ], [ %3925, %3972 ], [ %3576, %3563 ]
  %3702 = phi float [ %3577, %3709 ], [ %3577, %3790 ], [ %3922, %3972 ], [ %3577, %3563 ]
  %3703 = phi float [ %3578, %3709 ], [ %3578, %3790 ], [ %3919, %3972 ], [ %3578, %3563 ]
  %3704 = phi float [ %3579, %3709 ], [ %3579, %3790 ], [ %3913, %3972 ], [ %3579, %3563 ]
  %3705 = phi float [ %3580, %3709 ], [ %3580, %3790 ], [ %3908, %3972 ], [ %3580, %3563 ]
  %3706 = phi float [ %3581, %3709 ], [ %3581, %3790 ], [ %3909, %3972 ], [ %3581, %3563 ]
  %3707 = phi float [ %3582, %3709 ], [ %3582, %3790 ], [ %3910, %3972 ], [ %3582, %3563 ]
  %3708 = icmp eq i32 %3639, %3562
  br i1 %3708, label %3985, label %3563

; <label>:3709                                    ; preds = %3563
  %3710 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3711 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3713 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3714 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3715 = extractvalue %dx.types.ResRet.i32 %3595, 3
  %3716 = extractvalue %dx.types.ResRet.i32 %3595, 2
  %3717 = add i32 %3715, 0
  %3718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3717, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3719 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3720 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3718, %dx.types.Handle %3719, float %3648, float %3655, float undef, float undef, i32 0, i32 0, i32 undef, float %3676, float %3678, float undef, float %3677, float %3679, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3721 = extractvalue %dx.types.ResRet.f32 %3720, 0
  %3722 = fmul fast float %3721, %3714
  %3723 = fadd fast float %3722, %3713
  %3724 = call float @dx.op.unary.f32(i32 7, float %3723)  ; Saturate(value)
  %3725 = fmul fast float %3648, %3604
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3655, float %3725)  ; FMad(a,b,c)
  %3727 = fadd fast float %3726, %3712
  %3728 = fmul fast float %3648, %3606
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3607, float %3655, float %3728)  ; FMad(a,b,c)
  %3730 = fadd fast float %3729, %3711
  %3731 = fmul fast float %3676, %3604
  %3732 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3678, float %3731)  ; FMad(a,b,c)
  %3733 = fmul fast float %3676, %3606
  %3734 = call float @dx.op.tertiary.f32(i32 46, float %3607, float %3678, float %3733)  ; FMad(a,b,c)
  %3735 = fmul fast float %3677, %3604
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3679, float %3735)  ; FMad(a,b,c)
  %3737 = fmul fast float %3677, %3606
  %3738 = call float @dx.op.tertiary.f32(i32 46, float %3607, float %3679, float %3737)  ; FMad(a,b,c)
  %3739 = add i32 %3716, 0
  %3740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3739, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3741 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3740, %dx.types.Handle %3719, float %3727, float %3730, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = and i32 %3640, 1024
  %3744 = icmp ne i32 %3743, 0
  %3745 = fcmp fast ogt float %3742, 0x3FE0101020000000
  %3746 = uitofp i1 %3745 to float
  %3747 = select i1 %3744, float %3746, float %3742
  %3748 = and i32 %3640, 8192
  %3749 = icmp ne i32 %3748, 0
  %3750 = select i1 %3749, float %3710, float 1.000000e+00
  %3751 = fmul fast float %3648, 2.000000e+00
  %3752 = fadd fast float %3751, -1.000000e+00
  %3753 = call float @dx.op.unary.f32(i32 6, float %3752)  ; FAbs(value)
  %3754 = fmul fast float %3753, %3637
  %3755 = fsub fast float %3754, %3637
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3757 = fmul fast float %3655, 2.000000e+00
  %3758 = fadd fast float %3757, -1.000000e+00
  %3759 = call float @dx.op.unary.f32(i32 6, float %3758)  ; FAbs(value)
  %3760 = fmul fast float %3759, %3638
  %3761 = fsub fast float %3760, %3638
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = fmul fast float %3667, %3600
  %3764 = fsub fast float %3763, %3600
  %3765 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3766 = fmul fast float %3724, %3750
  %3767 = fmul fast float %3766, %3721
  %3768 = fmul fast float %3767, %3756
  %3769 = fmul fast float %3768, %3747
  %3770 = fmul fast float %3769, %3762
  %3771 = fmul fast float %3770, %3765
  %3772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3773 = extractvalue %dx.types.CBufRet.f32 %3772, 1
  %3774 = extractvalue %dx.types.CBufRet.f32 %3772, 0
  %3775 = fsub fast float %3684, %3774
  %3776 = fmul fast float %3775, %3773
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fmul fast float %3771, %3601
  %3779 = fadd fast float %3771, %3601
  %3780 = fmul fast float %3779, %3610
  %3781 = fsub fast float %3780, %3610
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = and i32 %3640, 128
  %3784 = icmp ne i32 %3783, 0
  %3785 = select i1 %3784, float %3782, float %3778
  %3786 = fmul fast float %3785, %3777
  %3787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3788 = extractvalue %dx.types.CBufRet.f32 %3787, 0
  %3789 = fcmp fast ugt float %3786, %3788
  br i1 %3789, label %3790, label %3689

; <label>:3790                                    ; preds = %3709
  %3791 = select i1 %3749, float %3786, float 0.000000e+00
  %3792 = fadd fast float %3791, %3565
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  br i1 %3749, label %3689, label %3794

; <label>:3794                                    ; preds = %3790
  %3795 = and i32 %3640, 4
  %3796 = and i32 %3640, 8
  %3797 = add i32 %3596, 0
  %3798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3797, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3800 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3798, %dx.types.Handle %3799, float %3727, float %3730, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.f32 %3800, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3800, 2
  %3804 = extractvalue %dx.types.ResRet.f32 %3800, 3
  %3805 = bitcast float %3622 to i32
  %3806 = and i32 %3805, 255
  %3807 = uitofp i32 %3806 to float
  %3808 = lshr i32 %3805, 8
  %3809 = and i32 %3808, 255
  %3810 = uitofp i32 %3809 to float
  %3811 = fmul fast float %3804, %3807
  %3812 = fadd fast float %3811, %3810
  %3813 = fmul fast float %3812, 0x3F70101000000000
  %3814 = add i32 %3597, 0
  %3815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3814, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3816 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3815, %dx.types.Handle %3799, float %3727, float %3730, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3820 = extractvalue %dx.types.ResRet.f32 %3816, 3
  %3821 = bitcast float %3616 to i32
  %3822 = and i32 %3821, 255
  %3823 = uitofp i32 %3822 to float
  %3824 = lshr i32 %3821, 8
  %3825 = and i32 %3824, 255
  %3826 = uitofp i32 %3825 to float
  %3827 = lshr i32 %3821, 16
  %3828 = and i32 %3827, 255
  %3829 = uitofp i32 %3828 to float
  %3830 = fmul fast float %3829, 0x3F70101000000000
  %3831 = fmul fast float %3817, %3823
  %3832 = fadd fast float %3831, %3826
  %3833 = fmul fast float %3832, 0x3F70101000000000
  %3834 = fadd fast float %3818, -5.000000e-01
  %3835 = fadd fast float %3820, -5.000000e-01
  %3836 = fmul fast float %3834, %3830
  %3837 = fmul fast float %3835, %3830
  %3838 = fadd fast float %3836, 5.000000e-01
  %3839 = fadd fast float %3837, 5.000000e-01
  %3840 = fmul fast float %3801, %3625
  %3841 = fmul fast float %3802, %3626
  %3842 = fmul fast float %3803, %3627
  %3843 = fmul fast float %3838, 2.000000e+00
  %3844 = fadd fast float %3843, -1.000000e+00
  %3845 = fmul fast float %3839, 2.000000e+00
  %3846 = fadd fast float %3845, -1.000000e+00
  %3847 = fadd fast float %3844, %3846
  %3848 = fmul fast float %3847, 5.000000e-01
  %3849 = fsub fast float %3844, %3846
  %3850 = fmul fast float %3849, 5.000000e-01
  %3851 = call float @dx.op.unary.f32(i32 6, float %3848)  ; FAbs(value)
  %3852 = fsub fast float 1.000000e+00, %3851
  %3853 = call float @dx.op.unary.f32(i32 6, float %3850)  ; FAbs(value)
  %3854 = fsub fast float %3852, %3853
  %3855 = call float @dx.op.dot3.f32(i32 55, float %3848, float %3850, float %3854, float %3848, float %3850, float %3854)  ; Dot3(ax,ay,az,bx,by,bz)
  %3856 = call float @dx.op.unary.f32(i32 25, float %3855)  ; Rsqrt(value)
  %3857 = fmul fast float %3848, %3856
  %3858 = fmul fast float %3850, %3856
  %3859 = fmul fast float %3856, %3854
  %3860 = fmul fast float %3859, %3590
  %3861 = fmul fast float %3859, %3591
  %3862 = fmul fast float %3859, %3592
  %3863 = fmul fast float %3857, %3613
  %3864 = fmul fast float %3857, %3614
  %3865 = fmul fast float %3857, %3615
  %3866 = fadd fast float %3863, %3860
  %3867 = fadd fast float %3864, %3861
  %3868 = fadd fast float %3865, %3862
  %3869 = fmul fast float %3858, %3619
  %3870 = fmul fast float %3858, %3620
  %3871 = fmul fast float %3858, %3621
  %3872 = fadd fast float %3866, %3869
  %3873 = fadd fast float %3867, %3870
  %3874 = fadd fast float %3868, %3871
  %3875 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3872, float %3873, float %3874)  ; Dot3(ax,ay,az,bx,by,bz)
  %3876 = call float @dx.op.unary.f32(i32 25, float %3875)  ; Rsqrt(value)
  %3877 = fmul fast float %3872, %3876
  %3878 = fmul fast float %3873, %3876
  %3879 = fmul fast float %3874, %3876
  %3880 = icmp ne i32 %3796, 0
  %3881 = select i1 %3880, float 1.000000e+00, float 0.000000e+00
  %3882 = fmul fast float %3786, %3881
  %3883 = and i32 %3640, 1
  %3884 = icmp eq i32 %3883, 0
  br i1 %3884, label %3885, label %3889

; <label>:3885                                    ; preds = %3794
  %3886 = fsub fast float %3877, %3573
  %3887 = fsub fast float %3878, %3574
  %3888 = fsub fast float %3879, %3575
  br label %3889

; <label>:3889                                    ; preds = %3885, %3794
  %3890 = phi float [ %3886, %3885 ], [ %3877, %3794 ]
  %3891 = phi float [ %3887, %3885 ], [ %3878, %3794 ]
  %3892 = phi float [ %3888, %3885 ], [ %3879, %3794 ]
  %3893 = fmul float %3892, %3882
  %3894 = fmul float %3891, %3882
  %3895 = fmul float %3890, %3882
  %3896 = fadd fast float %3895, %3573
  %3897 = fadd fast float %3894, %3574
  %3898 = fadd fast float %3893, %3575
  %3899 = icmp ne i32 %3795, 0
  %3900 = select i1 %3899, float 1.000000e+00, float 0.000000e+00
  %3901 = fmul fast float %3786, %3900
  %3902 = fsub fast float %3840, %3580
  %3903 = fsub fast float %3841, %3581
  %3904 = fsub fast float %3842, %3582
  %3905 = fmul fast float %3902, %3901
  %3906 = fmul fast float %3903, %3901
  %3907 = fmul fast float %3904, %3901
  %3908 = fadd fast float %3905, %3580
  %3909 = fadd fast float %3906, %3581
  %3910 = fadd fast float %3907, %3582
  %3911 = fsub fast float %3813, %3579
  %3912 = fmul fast float %3911, %3901
  %3913 = fadd fast float %3912, %3579
  %3914 = fmul fast float %3901, %3569
  %3915 = fsub fast float %3569, %3914
  %3916 = fmul fast float %3901, %3568
  %3917 = fsub fast float %3568, %3916
  %3918 = fadd fast float %3786, %3578
  %3919 = call float @dx.op.unary.f32(i32 7, float %3918)  ; Saturate(value)
  %3920 = fsub fast float %3833, %3577
  %3921 = fmul fast float %3920, %3882
  %3922 = fadd fast float %3921, %3577
  %3923 = fsub fast float %3819, %3576
  %3924 = fmul fast float %3923, %3882
  %3925 = fadd fast float %3924, %3576
  %3926 = call float @dx.op.dot3.f32(i32 55, float %3840, float %3841, float %3842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3928 = extractvalue %dx.types.CBufRet.f32 %3927, 0
  %3929 = extractvalue %dx.types.CBufRet.f32 %3927, 1
  %3930 = fmul fast float %3929, %3926
  %3931 = fadd fast float %3930, %3928
  %3932 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3933 = bitcast float %3628 to i32
  %3934 = and i32 %3933, 65535
  %3935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3934)  ; LegacyF16ToF32(value)
  %3936 = lshr i32 %3933, 16
  %3937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3936)  ; LegacyF16ToF32(value)
  %3938 = fcmp fast oge float %3935, 0.000000e+00
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = select i1 %3938, float %3935, float %3940
  %3942 = fadd fast float %3941, %3937
  %3943 = fsub fast float %3932, %3567
  %3944 = fmul fast float %3943, %3786
  %3945 = fadd fast float %3944, %3567
  %3946 = fmul fast float %3942, %3786
  %3947 = call float @dx.op.binary.f32(i32 35, float %3566, float %3946)  ; FMax(a,b)
  %3948 = and i32 %3640, 16
  %3949 = icmp eq i32 %3948, 0
  br i1 %3949, label %3972, label %3950

; <label>:3950                                    ; preds = %3889
  %3951 = bitcast float %3634 to i32
  %3952 = add i32 %3631, 0
  %3953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3953, %dx.types.Handle %3799, float %3727, float %3730, float undef, float undef, i32 0, i32 0, i32 undef, float %3732, float %3734, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = and i32 %3951, 65535
  %3959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3958)  ; LegacyF16ToF32(value)
  %3960 = fmul fast float %3955, %3625
  %3961 = fmul fast float %3956, %3626
  %3962 = fmul fast float %3957, %3627
  %3963 = and i32 %3640, 16384
  %3964 = icmp ne i32 %3963, 0
  %3965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.f32 %3965, 0
  %3967 = select i1 %3964, float %3966, float 1.000000e+00
  %3968 = fmul fast float %3967, %3959
  %3969 = fmul fast float %3960, %3968
  %3970 = fmul fast float %3961, %3968
  %3971 = fmul fast float %3962, %3968
  br label %3972

; <label>:3972                                    ; preds = %3950, %3889
  %3973 = phi float [ %3969, %3950 ], [ 0.000000e+00, %3889 ]
  %3974 = phi float [ %3970, %3950 ], [ 0.000000e+00, %3889 ]
  %3975 = phi float [ %3971, %3950 ], [ 0.000000e+00, %3889 ]
  %3976 = fsub fast float %3973, %3570
  %3977 = fsub fast float %3974, %3571
  %3978 = fsub fast float %3975, %3572
  %3979 = fmul fast float %3976, %3786
  %3980 = fmul fast float %3977, %3786
  %3981 = fmul fast float %3978, %3786
  %3982 = fadd fast float %3979, %3570
  %3983 = fadd fast float %3980, %3571
  %3984 = fadd fast float %3981, %3572
  br label %3689

; <label>:3985                                    ; preds = %3689
  br label %3986

; <label>:3986                                    ; preds = %3985, %3509
  %3987 = phi float [ 0.000000e+00, %3509 ], [ %3690, %3985 ]
  %3988 = phi float [ %3478, %3509 ], [ %3691, %3985 ]
  %3989 = phi float [ %3470, %3509 ], [ %3692, %3985 ]
  %3990 = phi float [ 0.000000e+00, %3509 ], [ %3693, %3985 ]
  %3991 = phi float [ 0.000000e+00, %3509 ], [ %3694, %3985 ]
  %3992 = phi float [ %3464, %3509 ], [ %3695, %3985 ]
  %3993 = phi float [ %3465, %3509 ], [ %3696, %3985 ]
  %3994 = phi float [ %3466, %3509 ], [ %3697, %3985 ]
  %3995 = phi float [ %3504, %3509 ], [ %3698, %3985 ]
  %3996 = phi float [ %3505, %3509 ], [ %3699, %3985 ]
  %3997 = phi float [ %3506, %3509 ], [ %3700, %3985 ]
  %3998 = phi float [ %3469, %3509 ], [ %3701, %3985 ]
  %3999 = phi float [ %3468, %3509 ], [ %3702, %3985 ]
  %4000 = phi float [ 0.000000e+00, %3509 ], [ %3703, %3985 ]
  %4001 = phi float [ %3467, %3509 ], [ %3704, %3985 ]
  %4002 = phi float [ %3461, %3509 ], [ %3705, %3985 ]
  %4003 = phi float [ %3462, %3509 ], [ %3706, %3985 ]
  %4004 = phi float [ %3463, %3509 ], [ %3707, %3985 ]
  %4005 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3996, float %3997, float %3995, float %3996, float %3997)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = call float @dx.op.unary.f32(i32 25, float %4005)  ; Rsqrt(value)
  %4007 = fmul fast float %4006, %3995
  %4008 = fmul fast float %4006, %3996
  %4009 = fmul fast float %4006, %3997
  %4010 = fadd fast float %4000, %905
  %4011 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4012 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4009, float %4007, float %4008, float %4009)  ; Dot3(ax,ay,az,bx,by,bz)
  %4013 = call float @dx.op.unary.f32(i32 25, float %4012)  ; Rsqrt(value)
  %4014 = fmul fast float %4013, %4007
  %4015 = fmul fast float %4013, %4008
  %4016 = fmul fast float %4013, %4009
  br label %4017

; <label>:4017                                    ; preds = %3986, %3458
  %4018 = phi float [ %4014, %3986 ], [ %3504, %3458 ]
  %4019 = phi float [ %4015, %3986 ], [ %3505, %3458 ]
  %4020 = phi float [ %4016, %3986 ], [ %3506, %3458 ]
  %4021 = phi float [ %4002, %3986 ], [ %3461, %3458 ]
  %4022 = phi float [ %4003, %3986 ], [ %3462, %3458 ]
  %4023 = phi float [ %4004, %3986 ], [ %3463, %3458 ]
  %4024 = phi float [ %3992, %3986 ], [ %3464, %3458 ]
  %4025 = phi float [ %3993, %3986 ], [ %3465, %3458 ]
  %4026 = phi float [ %3994, %3986 ], [ %3466, %3458 ]
  %4027 = phi float [ %4001, %3986 ], [ %3467, %3458 ]
  %4028 = phi float [ %4011, %3986 ], [ %905, %3458 ]
  %4029 = phi float [ %3999, %3986 ], [ %3468, %3458 ]
  %4030 = phi float [ %3998, %3986 ], [ %3469, %3458 ]
  %4031 = phi float [ %3991, %3986 ], [ 0.000000e+00, %3458 ]
  %4032 = phi float [ %3990, %3986 ], [ 0.000000e+00, %3458 ]
  %4033 = phi float [ %3987, %3986 ], [ 0.000000e+00, %3458 ]
  %4034 = phi float [ %3988, %3986 ], [ %3478, %3458 ]
  %4035 = phi float [ %3989, %3986 ], [ %3470, %3458 ]
  %4036 = fadd fast float %4027, 0xBFB99999A0000000
  %4037 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4038 = fmul fast float %4037, 0x3FF1C71C80000000
  %4039 = call float @dx.op.binary.f32(i32 36, float %4027, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4040 = fsub fast float 1.000000e+00, %4038
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = fmul fast float %4041, %4021
  %4043 = fmul fast float %4041, %4022
  %4044 = fmul fast float %4041, %4023
  %4045 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = fmul fast float %4038, %4021
  %4049 = fmul fast float %4038, %4022
  %4050 = fmul fast float %4038, %4023
  %4051 = fadd fast float %4048, %4039
  %4052 = fadd fast float %4049, %4039
  %4053 = fadd fast float %4050, %4039
  %4054 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4055 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4056 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4057 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4058 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.i32 %4058, 3
  %4060 = and i32 %4059, 8
  %4061 = icmp ne i32 %4060, 0
  %4062 = call float @dx.op.binary.f32(i32 35, float %4045, float %4021)  ; FMax(a,b)
  %4063 = call float @dx.op.binary.f32(i32 35, float %4046, float %4021)  ; FMax(a,b)
  %4064 = call float @dx.op.binary.f32(i32 35, float %4047, float %4021)  ; FMax(a,b)
  %4065 = call float @dx.op.dot3.f32(i32 55, float %4045, float %4046, float %4047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4066 = select i1 %186, float %4021, float %4045
  %4067 = select i1 %186, float %4065, float %4046
  %4068 = select i1 %186, float 1.000000e+00, float %4047
  %4069 = select i1 %4061, float %4062, float %4066
  %4070 = select i1 %4061, float %4063, float %4067
  %4071 = select i1 %4061, float %4064, float %4068
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4076 = fadd fast float %4073, %144
  %4077 = fadd fast float %4074, %145
  %4078 = fadd fast float %4075, %146
  %4079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.CBufRet.f32 %4079, 1
  %4082 = fsub fast float %4076, %4080
  %4083 = fsub fast float %4077, %4081
  %4084 = fmul fast float %4082, %4082
  %4085 = fmul fast float %4083, %4083
  %4086 = fadd fast float %4084, %4085
  %4087 = call float @dx.op.unary.f32(i32 24, float %4086)  ; Sqrt(value)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4079, 2
  %4089 = fcmp fast olt float %4087, %4088
  br i1 %4089, label %4090, label %4157

; <label>:4090                                    ; preds = %4017
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4098 = extractvalue %dx.types.CBufRet.f32 %4093, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4101 = extractvalue %dx.types.CBufRet.f32 %4093, 3
  %4102 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4103 = fadd fast float %4100, %4076
  %4104 = fadd fast float %4101, %4077
  %4105 = fadd fast float %4102, %4078
  %4106 = fmul fast float %4103, %4092
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4094, float %4106)  ; FMad(a,b,c)
  %4108 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4096, float %4107)  ; FMad(a,b,c)
  %4109 = fmul fast float %4103, %4097
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4098, float %4109)  ; FMad(a,b,c)
  %4111 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4099, float %4110)  ; FMad(a,b,c)
  %4112 = fsub fast float %4108, %4100
  %4113 = fsub fast float %4111, %4101
  %4114 = fsub fast float %4112, %4080
  %4115 = fadd fast float %4114, %4088
  %4116 = fsub fast float %4113, %4081
  %4117 = fadd fast float %4116, %4088
  %4118 = extractvalue %dx.types.CBufRet.f32 %4079, 3
  %4119 = fmul fast float %4115, %4118
  %4120 = fmul fast float %4117, %4118
  %4121 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4122 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4123 = fsub fast float 1.000000e+00, %4121
  %4124 = fsub fast float 1.000000e+00, %4122
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4123, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = fcmp fast ugt float %4126, 0.000000e+00
  br i1 %4127, label %4128, label %4431

; <label>:4128                                    ; preds = %4090
  %4129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4130 = extractvalue %dx.types.CBufRet.f32 %4129, 2
  %4131 = fmul fast float %4130, %4126
  %4132 = extractvalue %dx.types.CBufRet.f32 %4129, 3
  %4133 = fadd fast float %4132, %4131
  %4134 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4135 = fadd fast float %4133, %4102
  %4136 = fmul fast float %4108, %4096
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4111, float %4099, float %4136)  ; FMad(a,b,c)
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4135, float %4134, float %4137)  ; FMad(a,b,c)
  %4139 = fsub fast float %4138, %4102
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4142 = fsub fast float %4139, %4141
  %4143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4123, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4144 = extractvalue %dx.types.ResRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.ResRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.ResRet.f32 %4143, 2
  %4147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4123, float %4124, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4151 = fadd fast float %4148, %4144
  %4152 = fmul fast float %4151, 0x3F847AE140000000
  %4153 = fadd fast float %4149, %4145
  %4154 = fmul fast float %4153, 0x3F847AE140000000
  %4155 = fadd fast float %4150, %4146
  %4156 = fmul fast float %4155, 0x3F847AE140000000
  br label %4431

; <label>:4157                                    ; preds = %4017
  %4158 = and i32 %162, 1
  %4159 = icmp eq i32 %4158, 0
  br i1 %4159, label %4431, label %4160

; <label>:4160                                    ; preds = %4157
  %4161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.f32 %4161, 0
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.CBufRet.f32 %4161, 1
  %4168 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4161, 3
  %4171 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4172 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4173 = fadd fast float %4170, %4076
  %4174 = fadd fast float %4171, %4077
  %4175 = fadd fast float %4172, %4078
  %4176 = fmul fast float %4173, %4162
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4164, float %4176)  ; FMad(a,b,c)
  %4178 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4166, float %4177)  ; FMad(a,b,c)
  %4179 = fmul fast float %4173, %4167
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4168, float %4179)  ; FMad(a,b,c)
  %4181 = call float @dx.op.tertiary.f32(i32 46, float %4175, float %4169, float %4180)  ; FMad(a,b,c)
  %4182 = fsub fast float %4178, %4170
  %4183 = fsub fast float %4181, %4171
  %4184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.f32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4184, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4184, 2
  %4188 = extractvalue %dx.types.CBufRet.f32 %4184, 3
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.i32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.i32 %4191, 1
  %4194 = udiv i32 %4193, %4192
  %4195 = fsub fast float %4182, %4185
  %4196 = fsub fast float %4183, %4186
  %4197 = call float @dx.op.binary.f32(i32 35, float %4195, float 0.000000e+00)  ; FMax(a,b)
  %4198 = call float @dx.op.binary.f32(i32 35, float %4196, float 0.000000e+00)  ; FMax(a,b)
  %4199 = call float @dx.op.binary.f32(i32 36, float %4197, float %4187)  ; FMin(a,b)
  %4200 = call float @dx.op.binary.f32(i32 36, float %4198, float %4188)  ; FMin(a,b)
  %4201 = add i32 %4192, -1
  %4202 = add i32 %4194, -1
  %4203 = fmul fast float %4199, %4190
  %4204 = fmul fast float %4200, %4190
  %4205 = fptoui float %4203 to i32
  %4206 = fptoui float %4204 to i32
  %4207 = call i32 @dx.op.binary.i32(i32 40, i32 %4205, i32 %4201)  ; UMin(a,b)
  %4208 = call i32 @dx.op.binary.i32(i32 40, i32 %4206, i32 %4202)  ; UMin(a,b)
  %4209 = mul i32 %4208, %4192
  %4210 = add i32 %4209, %4207
  %4211 = shl i32 %4210, 2
  %4212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.i32 %4212, 0
  %4214 = icmp eq i32 %4213, -1
  br i1 %4214, label %4431, label %4215

; <label>:4215                                    ; preds = %4160
  %4216 = mul i32 %4213, 148
  %4217 = add i32 %4216, 4
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = add i32 %4216, 8
  %4221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.f32 %4221, 0
  %4223 = add i32 %4216, 36
  %4224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4223, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.f32 %4224, 0
  %4226 = add i32 %4216, 60
  %4227 = add i32 %4216, 92
  %4228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.i32 %4228, 0
  %4230 = add i32 %4216, 116
  %4231 = fsub fast float %4182, %4219
  %4232 = fsub fast float %4183, %4222
  %4233 = fmul fast float %4190, %4231
  %4234 = fmul fast float %4190, %4232
  %4235 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4234)  ; Saturate(value)
  %4237 = fsub fast float 1.000000e+00, %4236
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 2
  %4240 = call float @dx.op.unary.f32(i32 83, float %4235)  ; DerivCoarseX(value)
  %4241 = call float @dx.op.unary.f32(i32 83, float %4237)  ; DerivCoarseX(value)
  %4242 = call float @dx.op.unary.f32(i32 84, float %4235)  ; DerivCoarseY(value)
  %4243 = call float @dx.op.unary.f32(i32 84, float %4237)  ; DerivCoarseY(value)
  %4244 = fmul fast float %4240, %4239
  %4245 = fmul fast float %4241, %4239
  %4246 = fmul fast float %4242, %4239
  %4247 = fmul fast float %4243, %4239
  %4248 = call float @dx.op.dot2.f32(i32 54, float %4246, float %4247, float %4246, float %4247)  ; Dot2(ax,ay,bx,by)
  %4249 = call float @dx.op.dot2.f32(i32 54, float %4244, float %4245, float %4244, float %4245)  ; Dot2(ax,ay,bx,by)
  %4250 = call float @dx.op.binary.f32(i32 35, float %4249, float %4248)  ; FMax(a,b)
  %4251 = call float @dx.op.unary.f32(i32 23, float %4250)  ; Log(value)
  %4252 = fmul fast float %4251, 5.000000e-01
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 1
  %4255 = fadd fast float %4254, %4252
  %4256 = call float @dx.op.binary.f32(i32 35, float %4255, float 0.000000e+00)  ; FMax(a,b)
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 3
  %4259 = fadd fast float %4258, %4256
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4262 = fadd fast float %4259, %4261
  %4263 = add i32 %4229, 0
  %4264 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4263, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4265 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4264, i32 0)  ; GetDimensions(handle,mipLevel)
  %4266 = extractvalue %dx.types.Dimensions %4265, 0
  %4267 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4266)  ; FirstbitLo(value)
  %4268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.i32 %4268, 1
  %4270 = sub nsw i32 %4269, %4267
  %4271 = sitofp i32 %4270 to float
  %4272 = fsub fast float %4262, %4271
  %4273 = call float @dx.op.binary.f32(i32 35, float %4272, float 0.000000e+00)  ; FMax(a,b)
  %4274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4264, %dx.types.Handle %37, float %4235, float %4237, float %4225, float undef, i32 0, i32 0, i32 undef, float %4273)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = fcmp ule float %4275, 0x3FE0101020000000
  %4277 = extractvalue %dx.types.CBufRet.i32 %4268, 0
  %4278 = and i32 %4277, 128
  %4279 = icmp ne i32 %4278, 0
  %4280 = and i1 %4276, %4279
  br i1 %4280, label %4431, label %4281

; <label>:4281                                    ; preds = %4215
  %4282 = add i32 %4216, 20
  %4283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = add i32 %4216, 24
  %4286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4285, i32 undef)  ; BufferLoad(srv,index,wot)
  %4287 = extractvalue %dx.types.ResRet.f32 %4286, 0
  %4288 = add i32 %4216, 40
  %4289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = add i32 %4216, 96
  %4292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.i32 %4292, 0
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 2
  %4296 = fmul fast float %4295, %4235
  %4297 = fmul fast float %4295, %4237
  %4298 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4299 = fadd fast float %4296, %4298
  %4300 = fadd fast float %4297, %4298
  %4301 = add i32 %4293, 0
  %4302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4301, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4303 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4302, i32 0)  ; GetDimensions(handle,mipLevel)
  %4304 = extractvalue %dx.types.Dimensions %4303, 0
  %4305 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4304)  ; FirstbitLo(value)
  %4306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.i32 %4306, 1
  %4308 = sub nsw i32 %4307, %4305
  %4309 = sitofp i32 %4308 to float
  %4310 = fsub fast float %4259, %4309
  %4311 = call float @dx.op.binary.f32(i32 35, float %4310, float 0.000000e+00)  ; FMax(a,b)
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4302, %dx.types.Handle %37, float %4299, float %4300, float %4290, float undef, i32 0, i32 0, i32 undef, float %4311)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = fmul fast float %4313, %4284
  %4315 = fadd fast float %4314, %4287
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 0
  %4318 = extractvalue %dx.types.CBufRet.f32 %4316, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4316, 2
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4324 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4325 = fadd fast float %4321, %4182
  %4326 = fadd fast float %4323, %4183
  %4327 = fadd fast float %4315, %4324
  %4328 = fmul fast float %4325, %4317
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4326, float %4318, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4327, float %4319, float %4329)  ; FMad(a,b,c)
  %4331 = fsub fast float %4330, %4324
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 2
  %4334 = fsub fast float %4331, %4333
  %4335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.i32 %4335, 0
  %4337 = call i32 @dx.op.binary.i32(i32 40, i32 %4213, i32 %4336)  ; UMin(a,b)
  %4338 = mul i32 %4337, 36
  %4339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.i32 %4339, 0
  %4341 = add i32 %4338, 4
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = fmul fast float %4343, %4235
  %4345 = fmul fast float %4343, %4237
  %4346 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4347 = fadd fast float %4344, %4346
  %4348 = fadd fast float %4345, %4346
  %4349 = icmp eq i32 %4340, 0
  br i1 %4349, label %4418, label %4350

; <label>:4350                                    ; preds = %4281
  br label %4351

; <label>:4351                                    ; preds = %4408, %4350
  %4352 = phi float [ %4409, %4408 ], [ 0.000000e+00, %4350 ]
  %4353 = phi float [ %4410, %4408 ], [ 0.000000e+00, %4350 ]
  %4354 = phi float [ %4411, %4408 ], [ 0.000000e+00, %4350 ]
  %4355 = phi float [ %4412, %4408 ], [ 0.000000e+00, %4350 ]
  %4356 = phi float [ %4413, %4408 ], [ 0.000000e+00, %4350 ]
  %4357 = phi float [ %4414, %4408 ], [ 0.000000e+00, %4350 ]
  %4358 = phi i32 [ %4415, %4408 ], [ 0, %4350 ]
  %4359 = shl i32 %4358, 2
  %4360 = add i32 %4226, %4359
  %4361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4360, i32 undef)  ; BufferLoad(srv,index,wot)
  %4362 = extractvalue %dx.types.ResRet.f32 %4361, 0
  %4363 = add i32 %4230, %4359
  %4364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.i32 %4364, 0
  %4366 = add i32 %4365, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4367, i32 0)  ; GetDimensions(handle,mipLevel)
  %4369 = extractvalue %dx.types.Dimensions %4368, 0
  %4370 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4369)  ; FirstbitLo(value)
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 1
  %4373 = sub nsw i32 %4372, %4370
  %4374 = sitofp i32 %4373 to float
  %4375 = fsub fast float %4259, %4374
  %4376 = call float @dx.op.binary.f32(i32 35, float %4375, float 0.000000e+00)  ; FMax(a,b)
  %4377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4367, %dx.types.Handle %37, float %4347, float %4348, float %4362, float undef, i32 0, i32 0, i32 undef, float %4376)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = fcmp fast ogt float %4378, 0.000000e+00
  br i1 %4379, label %4380, label %4408

; <label>:4380                                    ; preds = %4351
  %4381 = add i32 %4341, %4359
  %4382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4381, i32 undef)  ; BufferLoad(srv,index,wot)
  %4383 = extractvalue %dx.types.ResRet.i32 %4382, 0
  %4384 = and i32 %4383, 32767
  %4385 = mul nuw nsw i32 %4384, 928
  %4386 = add nuw nsw i32 %4385, 48
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.ResRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.ResRet.f32 %4387, 2
  %4391 = add nuw nsw i32 %4385, 60
  %4392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = fmul fast float %4388, %4378
  %4397 = fmul fast float %4389, %4378
  %4398 = fmul fast float %4390, %4378
  %4399 = fadd fast float %4396, %4352
  %4400 = fadd fast float %4397, %4353
  %4401 = fadd fast float %4398, %4354
  %4402 = fmul fast float %4393, %4378
  %4403 = fmul fast float %4394, %4378
  %4404 = fmul fast float %4395, %4378
  %4405 = fadd fast float %4402, %4355
  %4406 = fadd fast float %4403, %4356
  %4407 = fadd fast float %4404, %4357
  br label %4408

; <label>:4408                                    ; preds = %4380, %4351
  %4409 = phi float [ %4399, %4380 ], [ %4352, %4351 ]
  %4410 = phi float [ %4400, %4380 ], [ %4353, %4351 ]
  %4411 = phi float [ %4401, %4380 ], [ %4354, %4351 ]
  %4412 = phi float [ %4405, %4380 ], [ %4355, %4351 ]
  %4413 = phi float [ %4406, %4380 ], [ %4356, %4351 ]
  %4414 = phi float [ %4407, %4380 ], [ %4357, %4351 ]
  %4415 = add nuw i32 %4358, 1
  %4416 = icmp eq i32 %4415, %4340
  br i1 %4416, label %4417, label %4351

; <label>:4417                                    ; preds = %4408
  br label %4418

; <label>:4418                                    ; preds = %4417, %4281
  %4419 = phi float [ 0.000000e+00, %4281 ], [ %4409, %4417 ]
  %4420 = phi float [ 0.000000e+00, %4281 ], [ %4410, %4417 ]
  %4421 = phi float [ 0.000000e+00, %4281 ], [ %4411, %4417 ]
  %4422 = phi float [ 0.000000e+00, %4281 ], [ %4412, %4417 ]
  %4423 = phi float [ 0.000000e+00, %4281 ], [ %4413, %4417 ]
  %4424 = phi float [ 0.000000e+00, %4281 ], [ %4414, %4417 ]
  %4425 = fadd fast float %4422, %4419
  %4426 = fmul fast float %4425, 0x3F847AE140000000
  %4427 = fadd fast float %4423, %4420
  %4428 = fmul fast float %4427, 0x3F847AE140000000
  %4429 = fadd fast float %4424, %4421
  %4430 = fmul fast float %4429, 0x3F847AE140000000
  br label %4431

; <label>:4431                                    ; preds = %4418, %4215, %4160, %4157, %4128, %4090
  %4432 = phi float [ %4142, %4128 ], [ -1.310720e+05, %4090 ], [ %4334, %4418 ], [ -1.310720e+05, %4160 ], [ -1.310720e+05, %4215 ], [ -1.310720e+05, %4157 ]
  %4433 = phi float [ %4152, %4128 ], [ 0.000000e+00, %4090 ], [ %4426, %4418 ], [ 0.000000e+00, %4160 ], [ 0.000000e+00, %4215 ], [ 0.000000e+00, %4157 ]
  %4434 = phi float [ %4154, %4128 ], [ 0.000000e+00, %4090 ], [ %4428, %4418 ], [ 0.000000e+00, %4160 ], [ 0.000000e+00, %4215 ], [ 0.000000e+00, %4157 ]
  %4435 = phi float [ %4156, %4128 ], [ 0.000000e+00, %4090 ], [ %4430, %4418 ], [ 0.000000e+00, %4160 ], [ 0.000000e+00, %4215 ], [ 0.000000e+00, %4157 ]
  %4436 = phi i1 [ true, %4128 ], [ false, %4090 ], [ true, %4418 ], [ false, %4160 ], [ false, %4215 ], [ false, %4157 ]
  %4437 = and i32 %162, 3
  %4438 = icmp eq i32 %4437, 1
  %4439 = select i1 %4438, float 1.000000e+00, float 0.000000e+00
  %4440 = fsub fast float %4432, %146
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = select i1 %4436, float %4441, float 1.000000e+00
  %4443 = fmul fast float %4442, %4439
  %4444 = icmp eq i32 %4437, 3
  %4445 = select i1 %4444, float 1.000000e+00, float %4443
  %4446 = call float @dx.op.binary.f32(i32 35, float %4033, float %4445)  ; FMax(a,b)
  %4447 = call float @dx.op.unary.f32(i32 7, float %4446)  ; Saturate(value)
  %4448 = fcmp fast une float %4447, 0.000000e+00
  %4449 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4450 = call float @dx.op.unary.f32(i32 25, float %4449)  ; Rsqrt(value)
  br i1 %4448, label %4458, label %4451

; <label>:4451                                    ; preds = %4431
  %4452 = fmul fast float %4450, %144
  %4453 = fmul fast float %4450, %145
  %4454 = fmul fast float %4450, %146
  %4455 = fsub fast float -0.000000e+00, %4452
  %4456 = fsub fast float -0.000000e+00, %4453
  %4457 = fsub fast float -0.000000e+00, %4454
  br label %4626

; <label>:4458                                    ; preds = %4431
  %4459 = fmul fast float %144, %4450
  %4460 = fsub fast float -0.000000e+00, %4459
  %4461 = fmul fast float %145, %4450
  %4462 = fsub fast float -0.000000e+00, %4461
  %4463 = fmul fast float %146, %4450
  %4464 = fsub fast float -0.000000e+00, %4463
  %4465 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4462, float %4464, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4466 = fmul fast float %4447, 2.500000e+00
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = fmul fast float %4447, 0x4013FFFFE0000000
  %4469 = fadd fast float %4468, 0xBFFFFFFFE0000000
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = fmul fast float %4447, 0x4004000020000000
  %4472 = fadd fast float %4471, 0xBFF8000040000000
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4475 = fmul fast float %4036, 1.000000e+01
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fmul fast float %4476, 2.000000e+00
  %4478 = fsub fast float 3.000000e+00, %4477
  %4479 = fmul fast float %4476, %4476
  %4480 = fmul fast float %4479, %4478
  %4481 = fsub fast float 1.000000e+00, %4480
  %4482 = fsub fast float 0x3FE3333340000000, %4057
  %4483 = fmul fast float %4482, 0x400AAAAAA0000000
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fmul fast float %4481, %4484
  %4486 = fmul fast float %4069, 0x3FEA2B8620000000
  %4487 = fmul fast float %4070, 0x3FEA2B8620000000
  %4488 = fmul fast float %4071, 0x3FEA2B8620000000
  %4489 = fadd fast float %4486, 0x3FC81DFBA0000000
  %4490 = fmul fast float %4489, %4069
  %4491 = fadd fast float %4490, 0x3F910E6020000000
  %4492 = fadd fast float %4487, 0x3FC81DFBA0000000
  %4493 = fmul fast float %4492, %4070
  %4494 = fadd fast float %4493, 0x3F910E6020000000
  %4495 = fadd fast float %4488, 0x3FC81DFBA0000000
  %4496 = fmul fast float %4495, %4071
  %4497 = fadd fast float %4496, 0x3F910E6020000000
  %4498 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4499 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4500 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4501 = fsub fast float %4498, %4069
  %4502 = fsub fast float %4499, %4070
  %4503 = fsub fast float %4500, %4071
  %4504 = fmul fast float %4501, %4474
  %4505 = fmul fast float %4504, %4485
  %4506 = fmul fast float %4502, %4474
  %4507 = fmul fast float %4506, %4485
  %4508 = fmul fast float %4503, %4474
  %4509 = fmul fast float %4508, %4485
  %4510 = fadd fast float %4505, %4069
  %4511 = fadd fast float %4507, %4070
  %4512 = fadd fast float %4509, %4071
  %4513 = fmul fast float %4030, %4030
  %4514 = fmul fast float %4513, %4513
  %4515 = fadd fast float %4470, 1.000000e+00
  %4516 = fsub fast float %4515, %4485
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = fsub fast float 1.000000e+00, %4514
  %4521 = call float @dx.op.binary.f32(i32 36, float %4517, float %4520)  ; FMin(a,b)
  %4522 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4523 = call float @dx.op.binary.f32(i32 35, float %4521, float %4522)  ; FMax(a,b)
  %4524 = fadd fast float %4519, 0xBFE4CCCCC0000000
  %4525 = fmul fast float %4524, 0x4006DB6DA0000000
  %4526 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4527 = fmul fast float %4526, 2.000000e+00
  %4528 = fsub fast float 3.000000e+00, %4527
  %4529 = bitcast float %4054 to i32
  %4530 = ashr i32 %4529, 1
  %4531 = add nsw i32 %4530, 532487669
  %4532 = bitcast i32 %4531 to float
  %4533 = fsub fast float 1.000000e+00, %4532
  %4534 = bitcast float %4533 to i32
  %4535 = sub nsw i32 2129859010, %4534
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, 2.000000e+00
  %4538 = bitcast float %4055 to i32
  %4539 = ashr i32 %4538, 1
  %4540 = add nsw i32 %4539, 532487669
  %4541 = bitcast i32 %4540 to float
  %4542 = fsub fast float 1.000000e+00, %4541
  %4543 = bitcast float %4542 to i32
  %4544 = sub nsw i32 2129859010, %4543
  %4545 = bitcast i32 %4544 to float
  %4546 = fmul fast float %4545, 2.000000e+00
  %4547 = bitcast float %4056 to i32
  %4548 = ashr i32 %4547, 1
  %4549 = add nsw i32 %4548, 532487669
  %4550 = bitcast i32 %4549 to float
  %4551 = fsub fast float 1.000000e+00, %4550
  %4552 = bitcast float %4551 to i32
  %4553 = sub nsw i32 2129859010, %4552
  %4554 = bitcast i32 %4553 to float
  %4555 = fmul fast float %4554, 2.000000e+00
  %4556 = fsub fast float 0x4002A9FBE0000000, %4537
  %4557 = fadd fast float %4537, 0x3FD54FDF00000000
  %4558 = bitcast float %4557 to i32
  %4559 = sub nsw i32 2129859010, %4558
  %4560 = bitcast i32 %4559 to float
  %4561 = fmul fast float %4560, %4556
  %4562 = fmul fast float %4561, %4561
  %4563 = fsub fast float 0x4002A9FBE0000000, %4546
  %4564 = fadd fast float %4546, 0x3FD54FDF00000000
  %4565 = bitcast float %4564 to i32
  %4566 = sub nsw i32 2129859010, %4565
  %4567 = bitcast i32 %4566 to float
  %4568 = fmul fast float %4567, %4563
  %4569 = fmul fast float %4568, %4568
  %4570 = fsub fast float 0x4002A9FBE0000000, %4555
  %4571 = fadd fast float %4555, 0x3FD54FDF00000000
  %4572 = bitcast float %4571 to i32
  %4573 = sub nsw i32 2129859010, %4572
  %4574 = bitcast i32 %4573 to float
  %4575 = fmul fast float %4574, %4570
  %4576 = fmul fast float %4575, %4575
  %4577 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4562)  ; FMax(a,b)
  %4578 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4569)  ; FMax(a,b)
  %4579 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4576)  ; FMax(a,b)
  %4580 = fsub fast float 1.000000e+00, %4465
  %4581 = fadd fast float %4580, %4481
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = fsub fast float 1.000000e+00, %4445
  %4584 = fmul fast float %4523, %4583
  %4585 = fmul fast float %4526, %4526
  %4586 = fmul fast float %4585, %4584
  %4587 = fmul fast float %4586, %4528
  %4588 = fmul fast float %4583, 0xBFE99999A0000000
  %4589 = fmul fast float %4588, %4474
  %4590 = fmul fast float %4589, %4485
  %4591 = fadd fast float %4590, 1.000000e+00
  %4592 = fadd fast float %4057, -1.000000e+00
  %4593 = fmul fast float %4591, %4592
  %4594 = fadd fast float %4593, 1.000000e+00
  %4595 = fsub fast float %4577, %4054
  %4596 = fsub fast float %4578, %4055
  %4597 = fsub fast float %4579, %4056
  %4598 = fmul fast float %4587, %4595
  %4599 = fmul fast float %4587, %4596
  %4600 = fmul fast float %4587, %4597
  %4601 = fadd fast float %4598, %4054
  %4602 = fadd fast float %4599, %4055
  %4603 = fadd fast float %4600, %4056
  %4604 = fsub fast float %94, %4018
  %4605 = fsub fast float %96, %4019
  %4606 = fsub fast float %98, %4020
  %4607 = fmul fast float %4587, %4604
  %4608 = fmul fast float %4587, %4605
  %4609 = fmul fast float %4587, %4606
  %4610 = fadd fast float %4607, %4018
  %4611 = fadd fast float %4608, %4019
  %4612 = fadd fast float %4609, %4020
  %4613 = fmul fast float %4587, %4582
  %4614 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4615 = fsub fast float 1.000000e+00, %4614
  %4616 = fmul fast float %4613, %4615
  %4617 = fadd fast float %4616, %4614
  %4618 = fsub fast float 1.000000e+00, %4030
  %4619 = fmul fast float %4587, %4618
  %4620 = fadd fast float %4619, %4030
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4610, float %4611, float %4612, float %4610, float %4611, float %4612)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.unary.f32(i32 25, float %4621)  ; Rsqrt(value)
  %4623 = fmul fast float %4610, %4622
  %4624 = fmul fast float %4611, %4622
  %4625 = fmul fast float %4612, %4622
  br label %4626

; <label>:4626                                    ; preds = %4458, %4451
  %4627 = phi float [ %4457, %4451 ], [ %4464, %4458 ]
  %4628 = phi float [ %4456, %4451 ], [ %4462, %4458 ]
  %4629 = phi float [ %4455, %4451 ], [ %4460, %4458 ]
  %4630 = phi float [ %4454, %4451 ], [ %4463, %4458 ]
  %4631 = phi float [ %4453, %4451 ], [ %4461, %4458 ]
  %4632 = phi float [ %4452, %4451 ], [ %4459, %4458 ]
  %4633 = phi float [ %4069, %4451 ], [ %4510, %4458 ]
  %4634 = phi float [ %4070, %4451 ], [ %4511, %4458 ]
  %4635 = phi float [ %4071, %4451 ], [ %4512, %4458 ]
  %4636 = phi float [ %4054, %4451 ], [ %4601, %4458 ]
  %4637 = phi float [ %4055, %4451 ], [ %4602, %4458 ]
  %4638 = phi float [ %4056, %4451 ], [ %4603, %4458 ]
  %4639 = phi float [ %4018, %4451 ], [ %4623, %4458 ]
  %4640 = phi float [ %4019, %4451 ], [ %4624, %4458 ]
  %4641 = phi float [ %4020, %4451 ], [ %4625, %4458 ]
  %4642 = phi float [ %4057, %4451 ], [ %4617, %4458 ]
  %4643 = phi float [ %4030, %4451 ], [ %4620, %4458 ]
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4646 = extractvalue %dx.types.CBufRet.f32 %4644, 3
  %4647 = fmul fast float %4645, %85
  %4648 = fmul fast float %4646, %86
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 0
  %4651 = extractvalue %dx.types.CBufRet.f32 %4649, 1
  %4652 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4647, float %4648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4653 = extractvalue %dx.types.ResRet.f32 %4652, 0
  %4654 = fmul fast float %4653, %4651
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = fadd fast float %4655, -1.000000e+00
  %4657 = fmul fast float %4656, %4650
  %4658 = fadd fast float %4657, 1.000000e+00
  %4659 = select i1 %186, float 0.000000e+00, float %4638
  %4660 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4640, float %4641, float %4629, float %4628, float %4627)  ; Dot3(ax,ay,az,bx,by,bz)
  %4661 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4631, float %4630, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = fmul fast float %4662, 2.000000e+00
  %4664 = fmul fast float %4663, %4639
  %4665 = fmul fast float %4663, %4640
  %4666 = fmul fast float %4663, %4641
  %4667 = fsub fast float %4632, %4664
  %4668 = fsub fast float %4631, %4665
  %4669 = fsub fast float %4630, %4666
  %4670 = call float @dx.op.binary.f32(i32 36, float %4643, float %4658)  ; FMin(a,b)
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = bitcast float %4671 to i32
  %4673 = ashr i32 %4672, 1
  %4674 = add nsw i32 %4673, 532487669
  %4675 = bitcast i32 %4674 to float
  %4676 = fsub fast float 1.000000e+00, %4642
  %4677 = call float @dx.op.binary.f32(i32 35, float %4676, float 0x3F847AE140000000)  ; FMax(a,b)
  %4678 = fmul fast float %4677, %4677
  %4679 = fmul fast float %4678, %4678
  %4680 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4675, float %4679, float %4680, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4682 = extractvalue %dx.types.ResRet.f32 %4681, 0
  %4683 = fsub fast float 1.000000e+00, %4643
  %4684 = bitcast float %4683 to i32
  %4685 = sub nsw i32 2129859010, %4684
  %4686 = bitcast i32 %4685 to float
  %4687 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = fmul fast float %4687, 0x3FD20DD760000000
  %4689 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4690 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = fcmp fast oeq float %4690, 0.000000e+00
  %4692 = fcmp fast oeq float %4689, 0.000000e+00
  %4693 = or i1 %4692, %4691
  br i1 %4693, label %4723, label %4694

; <label>:4694                                    ; preds = %4626
  %4695 = fsub fast float -0.000000e+00, %65
  %4696 = fsub fast float -0.000000e+00, %63
  %4697 = call float @dx.op.unary.f32(i32 24, float %4690)  ; Sqrt(value)
  %4698 = fdiv fast float %4697, %4689
  %4699 = fcmp fast ogt float %4698, 0x3FFB6F8900000000
  %4700 = select i1 %4699, float 0x3FFB6F8900000000, float %4698
  %4701 = fmul fast float %4700, 0x3FE8A23460000000
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = call float @dx.op.binary.f32(i32 35, float %4700, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4704 = fmul fast float %4702, %4689
  %4705 = fmul fast float %4703, 0x3FF279A740000000
  %4706 = fadd fast float %4705, -1.000000e+00
  %4707 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %64, float %4695, float %4696, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4708 = call float @dx.op.unary.f32(i32 25, float %4707)  ; Rsqrt(value)
  %4709 = fmul fast float %4708, %4695
  %4710 = fmul fast float %4708, %4696
  %4711 = fmul fast float %4708, %64
  %4712 = fmul fast float %4706, %4706
  %4713 = fsub fast float 1.000000e+00, %4712
  %4714 = fmul fast float %4703, 0x40005F8BE0000000
  %4715 = fsub fast float 0x400C5BF8A0000000, %4714
  %4716 = fdiv fast float %4704, %4715
  %4717 = fmul fast float %4716, 0x3FEE31C3C0000000
  %4718 = fmul fast float %4717, %4713
  %4719 = fmul fast float %4703, 0x3FDACB7480000000
  %4720 = fadd fast float %4719, 0xBFD7347680000000
  %4721 = fmul fast float %4720, %4716
  %4722 = fmul fast float %4721, %4713
  br label %4723

; <label>:4723                                    ; preds = %4694, %4626
  %4724 = phi float [ %4709, %4694 ], [ 0.000000e+00, %4626 ]
  %4725 = phi float [ %4710, %4694 ], [ 0.000000e+00, %4626 ]
  %4726 = phi float [ %4711, %4694 ], [ 0.000000e+00, %4626 ]
  %4727 = phi float [ %4718, %4694 ], [ 0.000000e+00, %4626 ]
  %4728 = phi float [ %4722, %4694 ], [ 0.000000e+00, %4626 ]
  %4729 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4725, float %4726, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4730 = fmul fast float %4729, %4729
  %4731 = fmul fast float %4730, 0x3FEE471020000000
  %4732 = fadd fast float %4731, 0xBFD42F6020000000
  %4733 = fmul fast float %4689, 0x3FD20DD760000000
  %4734 = fmul fast float %4732, %4728
  %4735 = fmul fast float %4727, 0x3FDF454380000000
  %4736 = fmul fast float %4735, %4729
  %4737 = fadd fast float %4736, %4733
  %4738 = fadd fast float %4737, %4734
  %4739 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4725, float %4726, float %4667, float %4668, float %4669)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = fmul fast float %4739, 0x3FDF454380000000
  %4741 = fmul fast float %4739, %4739
  %4742 = fmul fast float %4741, 0x3FEE471020000000
  %4743 = fadd fast float %4742, 0xBFD42F6020000000
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4727, float %4728, float 0x3FD20DD760000000, float %4740, float %4743)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4746 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4747 = fcmp fast oeq float %4746, 0.000000e+00
  %4748 = fcmp fast oeq float %4745, 0.000000e+00
  %4749 = or i1 %4748, %4747
  br i1 %4749, label %4779, label %4750

; <label>:4750                                    ; preds = %4723
  %4751 = fsub fast float -0.000000e+00, %61
  %4752 = fsub fast float -0.000000e+00, %59
  %4753 = call float @dx.op.unary.f32(i32 24, float %4746)  ; Sqrt(value)
  %4754 = fdiv fast float %4753, %4745
  %4755 = fcmp fast ogt float %4754, 0x3FFB6F8900000000
  %4756 = select i1 %4755, float 0x3FFB6F8900000000, float %4754
  %4757 = fmul fast float %4756, 0x3FE8A23460000000
  %4758 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4759 = call float @dx.op.binary.f32(i32 35, float %4756, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4760 = fmul fast float %4758, %4745
  %4761 = fmul fast float %4759, 0x3FF279A740000000
  %4762 = fadd fast float %4761, -1.000000e+00
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4751, float %4752, float %60, float %4751, float %4752, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = call float @dx.op.unary.f32(i32 25, float %4763)  ; Rsqrt(value)
  %4765 = fmul fast float %4764, %4751
  %4766 = fmul fast float %4764, %4752
  %4767 = fmul fast float %4764, %60
  %4768 = fmul fast float %4762, %4762
  %4769 = fsub fast float 1.000000e+00, %4768
  %4770 = fmul fast float %4759, 0x40005F8BE0000000
  %4771 = fsub fast float 0x400C5BF8A0000000, %4770
  %4772 = fdiv fast float %4760, %4771
  %4773 = fmul fast float %4772, 0x3FEE31C3C0000000
  %4774 = fmul fast float %4773, %4769
  %4775 = fmul fast float %4759, 0x3FDACB7480000000
  %4776 = fadd fast float %4775, 0xBFD7347680000000
  %4777 = fmul fast float %4776, %4772
  %4778 = fmul fast float %4777, %4769
  br label %4779

; <label>:4779                                    ; preds = %4750, %4723
  %4780 = phi float [ %4765, %4750 ], [ 0.000000e+00, %4723 ]
  %4781 = phi float [ %4766, %4750 ], [ 0.000000e+00, %4723 ]
  %4782 = phi float [ %4767, %4750 ], [ 0.000000e+00, %4723 ]
  %4783 = phi float [ %4774, %4750 ], [ 0.000000e+00, %4723 ]
  %4784 = phi float [ %4778, %4750 ], [ 0.000000e+00, %4723 ]
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4781, float %4782, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = fmul fast float %4785, %4785
  %4787 = fmul fast float %4786, 0x3FEE471020000000
  %4788 = fadd fast float %4787, 0xBFD42F6020000000
  %4789 = fmul fast float %4745, 0x3FD20DD760000000
  %4790 = fmul fast float %4788, %4784
  %4791 = fmul fast float %4783, 0x3FDF454380000000
  %4792 = fmul fast float %4791, %4785
  %4793 = fadd fast float %4792, %4789
  %4794 = fadd fast float %4793, %4790
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4781, float %4782, float %4667, float %4668, float %4669)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = fmul fast float %4795, 0x3FDF454380000000
  %4797 = fmul fast float %4795, %4795
  %4798 = fmul fast float %4797, 0x3FEE471020000000
  %4799 = fadd fast float %4798, 0xBFD42F6020000000
  %4800 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4783, float %4784, float 0x3FD20DD760000000, float %4796, float %4799)  ; Dot3(ax,ay,az,bx,by,bz)
  %4801 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4802 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = fcmp fast oeq float %4802, 0.000000e+00
  %4804 = fcmp fast oeq float %4801, 0.000000e+00
  %4805 = or i1 %4804, %4803
  br i1 %4805, label %4835, label %4806

; <label>:4806                                    ; preds = %4779
  %4807 = fsub fast float -0.000000e+00, %57
  %4808 = fsub fast float -0.000000e+00, %55
  %4809 = call float @dx.op.unary.f32(i32 24, float %4802)  ; Sqrt(value)
  %4810 = fdiv fast float %4809, %4801
  %4811 = fcmp fast ogt float %4810, 0x3FFB6F8900000000
  %4812 = select i1 %4811, float 0x3FFB6F8900000000, float %4810
  %4813 = fmul fast float %4812, 0x3FE8A23460000000
  %4814 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4815 = call float @dx.op.binary.f32(i32 35, float %4812, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4816 = fmul fast float %4814, %4801
  %4817 = fmul fast float %4815, 0x3FF279A740000000
  %4818 = fadd fast float %4817, -1.000000e+00
  %4819 = call float @dx.op.dot3.f32(i32 55, float %4807, float %4808, float %56, float %4807, float %4808, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4820 = call float @dx.op.unary.f32(i32 25, float %4819)  ; Rsqrt(value)
  %4821 = fmul fast float %4820, %4807
  %4822 = fmul fast float %4820, %4808
  %4823 = fmul fast float %4820, %56
  %4824 = fmul fast float %4818, %4818
  %4825 = fsub fast float 1.000000e+00, %4824
  %4826 = fmul fast float %4815, 0x40005F8BE0000000
  %4827 = fsub fast float 0x400C5BF8A0000000, %4826
  %4828 = fdiv fast float %4816, %4827
  %4829 = fmul fast float %4828, 0x3FEE31C3C0000000
  %4830 = fmul fast float %4829, %4825
  %4831 = fmul fast float %4815, 0x3FDACB7480000000
  %4832 = fadd fast float %4831, 0xBFD7347680000000
  %4833 = fmul fast float %4832, %4828
  %4834 = fmul fast float %4833, %4825
  br label %4835

; <label>:4835                                    ; preds = %4806, %4779
  %4836 = phi float [ %4821, %4806 ], [ 0.000000e+00, %4779 ]
  %4837 = phi float [ %4822, %4806 ], [ 0.000000e+00, %4779 ]
  %4838 = phi float [ %4823, %4806 ], [ 0.000000e+00, %4779 ]
  %4839 = phi float [ %4830, %4806 ], [ 0.000000e+00, %4779 ]
  %4840 = phi float [ %4834, %4806 ], [ 0.000000e+00, %4779 ]
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4837, float %4838, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = fmul fast float %4841, %4841
  %4843 = fmul fast float %4842, 0x3FEE471020000000
  %4844 = fadd fast float %4843, 0xBFD42F6020000000
  %4845 = fmul fast float %4801, 0x3FD20DD760000000
  %4846 = fmul fast float %4844, %4840
  %4847 = fmul fast float %4839, 0x3FDF454380000000
  %4848 = fmul fast float %4847, %4841
  %4849 = fadd fast float %4848, %4845
  %4850 = fadd fast float %4849, %4846
  %4851 = call float @dx.op.dot3.f32(i32 55, float %4836, float %4837, float %4838, float %4667, float %4668, float %4669)  ; Dot3(ax,ay,az,bx,by,bz)
  %4852 = fmul fast float %4851, 0x3FDF454380000000
  %4853 = fmul fast float %4851, %4851
  %4854 = fmul fast float %4853, 0x3FEE471020000000
  %4855 = fadd fast float %4854, 0xBFD42F6020000000
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4839, float %4840, float 0x3FD20DD760000000, float %4852, float %4855)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = call float @dx.op.binary.f32(i32 35, float %4738, float 0.000000e+00)  ; FMax(a,b)
  %4858 = call float @dx.op.binary.f32(i32 35, float %4794, float 0.000000e+00)  ; FMax(a,b)
  %4859 = call float @dx.op.binary.f32(i32 35, float %4850, float 0.000000e+00)  ; FMax(a,b)
  %4860 = call float @dx.op.binary.f32(i32 35, float %4744, float 0.000000e+00)  ; FMax(a,b)
  %4861 = call float @dx.op.binary.f32(i32 35, float %4800, float 0.000000e+00)  ; FMax(a,b)
  %4862 = call float @dx.op.binary.f32(i32 35, float %4856, float 0.000000e+00)  ; FMax(a,b)
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 0
  %4865 = call float @dx.op.binary.f32(i32 36, float %4633, float %4864)  ; FMin(a,b)
  %4866 = fmul fast float %4865, %4671
  %4867 = fsub fast float 1.000000e+00, %4866
  %4868 = bitcast float %4867 to i32
  %4869 = sub nsw i32 2129859010, %4868
  %4870 = bitcast i32 %4869 to float
  %4871 = call float @dx.op.binary.f32(i32 36, float %4634, float %4864)  ; FMin(a,b)
  %4872 = fmul fast float %4871, %4671
  %4873 = fsub fast float 1.000000e+00, %4872
  %4874 = bitcast float %4873 to i32
  %4875 = sub nsw i32 2129859010, %4874
  %4876 = bitcast i32 %4875 to float
  %4877 = call float @dx.op.binary.f32(i32 36, float %4635, float %4864)  ; FMin(a,b)
  %4878 = fmul fast float %4877, %4671
  %4879 = fsub fast float 1.000000e+00, %4878
  %4880 = bitcast float %4879 to i32
  %4881 = sub nsw i32 2129859010, %4880
  %4882 = bitcast i32 %4881 to float
  %4883 = fmul fast float %4857, %4670
  %4884 = fmul fast float %4883, %4870
  %4885 = fmul fast float %4858, %4670
  %4886 = fmul fast float %4885, %4876
  %4887 = fmul fast float %4859, %4670
  %4888 = fmul fast float %4887, %4882
  %4889 = call float @dx.op.binary.f32(i32 36, float %4636, float %4864)  ; FMin(a,b)
  %4890 = fmul fast float %4889, %4671
  %4891 = fsub fast float 1.000000e+00, %4890
  %4892 = bitcast float %4891 to i32
  %4893 = sub nsw i32 2129859010, %4892
  %4894 = bitcast i32 %4893 to float
  %4895 = call float @dx.op.binary.f32(i32 36, float %4637, float %4864)  ; FMin(a,b)
  %4896 = fmul fast float %4895, %4671
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = bitcast float %4897 to i32
  %4899 = sub nsw i32 2129859010, %4898
  %4900 = bitcast i32 %4899 to float
  %4901 = call float @dx.op.binary.f32(i32 36, float %4659, float %4864)  ; FMin(a,b)
  %4902 = fmul fast float %4901, %4671
  %4903 = fsub fast float 1.000000e+00, %4902
  %4904 = bitcast float %4903 to i32
  %4905 = sub nsw i32 2129859010, %4904
  %4906 = bitcast i32 %4905 to float
  %4907 = fmul fast float %4860, %4670
  %4908 = fmul fast float %4907, %4894
  %4909 = fmul fast float %4861, %4670
  %4910 = fmul fast float %4909, %4900
  %4911 = fmul fast float %4862, %4670
  %4912 = fmul fast float %4911, %4906
  %4913 = call float @dx.op.dot3.f32(i32 55, float %4884, float %4886, float %4888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4914 = select i1 %186, float 0.000000e+00, float %4884
  %4915 = select i1 %186, float %4913, float %4886
  %4916 = select i1 %186, float 0.000000e+00, float %4888
  %4917 = call float @dx.op.dot3.f32(i32 55, float %4908, float %4910, float %4912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4918 = select i1 %186, float 0.000000e+00, float %4908
  %4919 = select i1 %186, float %4917, float %4910
  %4920 = select i1 %186, float 0.000000e+00, float %4912
  %4921 = fmul fast float %4661, 9.843750e-01
  %4922 = fmul fast float %4642, 9.843750e-01
  %4923 = fadd fast float %4921, 7.812500e-03
  %4924 = fadd fast float %4922, 7.812500e-03
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4923, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 2
  %4927 = extractvalue %dx.types.ResRet.f32 %4925, 3
  %4928 = fmul fast float %4926, %4636
  %4929 = fmul fast float %4926, %4637
  %4930 = fmul fast float %4926, %4659
  %4931 = fadd fast float %4928, %4927
  %4932 = fadd fast float %4929, %4927
  %4933 = fadd fast float %4930, %4927
  %4934 = fcmp fast ogt float %4031, 0.000000e+00
  br i1 %4934, label %4935, label %4961

; <label>:4935                                    ; preds = %4835
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4031, float %4661, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = extractvalue %dx.types.ResRet.f32 %4936, 1
  %4939 = extractvalue %dx.types.ResRet.f32 %4936, 2
  %4940 = fadd fast float %4937, -5.000000e-01
  %4941 = fadd fast float %4938, -5.000000e-01
  %4942 = fadd fast float %4939, -5.000000e-01
  %4943 = fsub fast float 1.000000e+00, %4636
  %4944 = fsub fast float 1.000000e+00, %4637
  %4945 = fsub fast float 1.000000e+00, %4659
  %4946 = fmul fast float %4636, 4.000000e+00
  %4947 = fmul fast float %4946, %4943
  %4948 = fmul fast float %4947, %4940
  %4949 = fmul fast float %4637, 4.000000e+00
  %4950 = fmul fast float %4949, %4944
  %4951 = fmul fast float %4950, %4941
  %4952 = fmul fast float %4659, 4.000000e+00
  %4953 = fmul fast float %4952, %4945
  %4954 = fmul fast float %4953, %4942
  %4955 = fadd fast float %4948, %4931
  %4956 = fadd fast float %4951, %4932
  %4957 = fadd fast float %4954, %4933
  %4958 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4959 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4960 = call float @dx.op.unary.f32(i32 7, float %4957)  ; Saturate(value)
  br label %4961

; <label>:4961                                    ; preds = %4935, %4835
  %4962 = phi float [ %4958, %4935 ], [ %4931, %4835 ]
  %4963 = phi float [ %4959, %4935 ], [ %4932, %4835 ]
  %4964 = phi float [ %4960, %4935 ], [ %4933, %4835 ]
  %4965 = call float @dx.op.binary.f32(i32 35, float %4963, float %4964)  ; FMax(a,b)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4962, float %4965)  ; FMax(a,b)
  %4967 = fsub fast float 1.000000e+00, %4966
  %4968 = fmul fast float %4966, %4642
  %4969 = fadd fast float %4968, %4642
  %4970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4971 = extractvalue %dx.types.CBufRet.f32 %4970, 0
  %4972 = extractvalue %dx.types.CBufRet.f32 %4970, 1
  %4973 = extractvalue %dx.types.CBufRet.f32 %4970, 2
  %4974 = extractvalue %dx.types.CBufRet.f32 %4970, 3
  %4975 = fmul fast float %4969, %4971
  %4976 = fadd fast float %4975, %4972
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fmul fast float %4973, %4969
  %4979 = fadd fast float %4978, %4974
  %4980 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4981 = fsub fast float 1.000000e+00, %4682
  %4982 = fadd fast float %4981, %4980
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fcmp fast olt float %4983, 1.000000e+00
  br i1 %4984, label %4985, label %5840

; <label>:4985                                    ; preds = %4961
  %4986 = fcmp fast olt float %4977, 1.000000e+00
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %4989 = fcmp fast ogt float %4988, 0.000000e+00
  %4990 = or i1 %4986, %4989
  %4991 = or i1 %4986, %4989
  %4992 = xor i1 %4991, true
  %4993 = zext i1 %4992 to i32
  br i1 %4990, label %4994, label %5237

; <label>:4994                                    ; preds = %4985
  %4995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4996 = extractvalue %dx.types.CBufRet.f32 %4995, 0
  %4997 = extractvalue %dx.types.CBufRet.f32 %4995, 1
  %4998 = extractvalue %dx.types.CBufRet.f32 %4995, 2
  %4999 = extractvalue %dx.types.CBufRet.f32 %4995, 3
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5004 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5009 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.CBufRet.f32 %5015, 2
  %5019 = extractvalue %dx.types.CBufRet.f32 %5015, 3
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 0
  %5022 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5023 = extractvalue %dx.types.CBufRet.f32 %5020, 2
  %5024 = extractvalue %dx.types.CBufRet.f32 %5020, 3
  %5025 = call float @dx.op.dot3.f32(i32 55, float %5021, float %5022, float %5023, float %4667, float %4668, float %4669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4640, float %4641, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = call float @dx.op.unary.f32(i32 6, float %5026)  ; FAbs(value)
  %5028 = fmul fast float %5027, 8.000000e+00
  %5029 = fadd fast float %5028, -6.000000e+00
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = fmul fast float %5025, 8.000000e+00
  %5032 = fmul fast float %5031, %4988
  %5033 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5034 = fcmp fast ogt float %5033, 0.000000e+00
  br i1 %5034, label %5035, label %5212, !dx.controlflow.hints !85

; <label>:5035                                    ; preds = %4994
  %5036 = extractvalue %dx.types.CBufRet.f32 %4987, 1
  %5037 = extractvalue %dx.types.CBufRet.f32 %4987, 2
  %5038 = fsub fast float %5036, %5037
  %5039 = fmul fast float %5038, %4642
  %5040 = fadd fast float %5039, %5037
  %5041 = fmul fast float %199, 2.000000e+00
  %5042 = fmul fast float %200, 2.000000e+00
  %5043 = fadd fast float %5041, -1.000000e+00
  %5044 = fadd fast float %5042, -1.000000e+00
  %5045 = fmul fast float %5040, %5043
  %5046 = fmul fast float %5040, %5044
  %5047 = fadd fast float %5045, %85
  %5048 = fadd fast float %5046, %86
  %5049 = fmul fast float %5047, %4645
  %5050 = fmul fast float %5048, %4646
  %5051 = fadd fast float %4642, 0xBFE3333340000000
  %5052 = fmul fast float %5051, 0x4004000020000000
  %5053 = fsub fast float 1.000000e+00, %5052
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = fmul fast float %5054, 3.000000e+00
  %5056 = fadd fast float %5055, %199
  %5057 = call float @dx.op.unary.f32(i32 27, float %5056)  ; Round_ni(value)
  %5058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5049, float %5050, float %5057, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5059 = extractvalue %dx.types.ResRet.f32 %5058, 0
  %5060 = fcmp fast une float %5059, 0xFFF0000000000000
  %5061 = fcmp fast une float %5059, 0x7FF0000000000000
  %5062 = and i1 %5060, %5061
  %5063 = fcmp fast olt float %5059, 0.000000e+00
  %5064 = call float @dx.op.unary.f32(i32 6, float %5059)  ; FAbs(value)
  %5065 = fsub fast float 1.000000e+00, %5064
  %5066 = select i1 %5062, float 1.000000e+00, float 0.000000e+00
  %5067 = fmul fast float %5066, %5033
  %5068 = fcmp fast ogt float %5067, 0.000000e+00
  br i1 %5068, label %5069, label %5212, !dx.controlflow.hints !86

; <label>:5069                                    ; preds = %5035
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 0
  %5072 = extractvalue %dx.types.CBufRet.f32 %5070, 1
  %5073 = extractvalue %dx.types.CBufRet.f32 %5070, 2
  %5074 = select i1 %5063, float 0.000000e+00, float %5071
  %5075 = select i1 %5063, float 0.000000e+00, float %5072
  %5076 = select i1 %5063, float 0.000000e+00, float %5073
  %5077 = select i1 %5063, float %4996, float %5011
  %5078 = select i1 %5063, float %5001, float %5016
  %5079 = select i1 %5063, float %5006, float %5021
  %5080 = select i1 %5063, float %4997, float %5012
  %5081 = select i1 %5063, float %5002, float %5017
  %5082 = select i1 %5063, float %5007, float %5022
  %5083 = select i1 %5063, float %4998, float %5013
  %5084 = select i1 %5063, float %5003, float %5018
  %5085 = select i1 %5063, float %5008, float %5023
  %5086 = select i1 %5063, float %4999, float %5014
  %5087 = select i1 %5063, float %5004, float %5019
  %5088 = select i1 %5063, float %5009, float %5024
  %5089 = fadd fast float %5074, %144
  %5090 = fadd fast float %5075, %145
  %5091 = fadd fast float %5076, %146
  %5092 = fmul fast float %5089, %5077
  %5093 = call float @dx.op.tertiary.f32(i32 46, float %5090, float %5080, float %5092)  ; FMad(a,b,c)
  %5094 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5083, float %5093)  ; FMad(a,b,c)
  %5095 = fadd fast float %5094, %5086
  %5096 = fmul fast float %5089, %5078
  %5097 = call float @dx.op.tertiary.f32(i32 46, float %5090, float %5081, float %5096)  ; FMad(a,b,c)
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5084, float %5097)  ; FMad(a,b,c)
  %5099 = fadd fast float %5098, %5087
  %5100 = fmul fast float %5089, %5079
  %5101 = call float @dx.op.tertiary.f32(i32 46, float %5090, float %5082, float %5100)  ; FMad(a,b,c)
  %5102 = call float @dx.op.tertiary.f32(i32 46, float %5091, float %5085, float %5101)  ; FMad(a,b,c)
  %5103 = fadd fast float %5102, %5088
  %5104 = fdiv fast float 1.000000e+00, %5103
  %5105 = fmul fast float %5104, %5095
  %5106 = fmul fast float %5104, %5099
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 0
  %5109 = extractvalue %dx.types.CBufRet.f32 %5107, 1
  %5110 = fmul fast float %5105, %5108
  %5111 = fmul fast float %5106, %5109
  %5112 = extractvalue %dx.types.CBufRet.f32 %5107, 2
  %5113 = extractvalue %dx.types.CBufRet.f32 %5107, 3
  %5114 = fadd fast float %5110, %5112
  %5115 = fadd fast float %5111, %5113
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 3
  %5118 = fmul fast float %5117, %4667
  %5119 = fmul fast float %5117, %4668
  %5120 = fmul fast float %5117, %4669
  %5121 = fadd fast float %5118, %5089
  %5122 = fadd fast float %5119, %5090
  %5123 = fadd fast float %5120, %5091
  %5124 = fmul fast float %5121, %5077
  %5125 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5080, float %5124)  ; FMad(a,b,c)
  %5126 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5083, float %5125)  ; FMad(a,b,c)
  %5127 = fadd fast float %5126, %5086
  %5128 = fmul fast float %5121, %5078
  %5129 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5081, float %5128)  ; FMad(a,b,c)
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5084, float %5129)  ; FMad(a,b,c)
  %5131 = fadd fast float %5130, %5087
  %5132 = fmul fast float %5121, %5079
  %5133 = call float @dx.op.tertiary.f32(i32 46, float %5122, float %5082, float %5132)  ; FMad(a,b,c)
  %5134 = call float @dx.op.tertiary.f32(i32 46, float %5123, float %5085, float %5133)  ; FMad(a,b,c)
  %5135 = fadd fast float %5134, %5088
  %5136 = fdiv fast float 1.000000e+00, %5135
  %5137 = fmul fast float %5136, %5127
  %5138 = fmul fast float %5136, %5131
  %5139 = fmul fast float %5114, 2.000000e+00
  %5140 = fadd fast float %5139, -1.000000e+00
  %5141 = call float @dx.op.unary.f32(i32 6, float %5140)  ; FAbs(value)
  %5142 = fmul fast float %5141, 5.000000e+00
  %5143 = fadd fast float %5142, -4.000000e+00
  %5144 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5145 = fmul fast float %5144, %5030
  %5146 = fsub fast float %5105, %5137
  %5147 = fmul fast float %5108, %5146
  %5148 = fmul fast float %5145, %5147
  %5149 = fsub fast float %5137, %5105
  %5150 = fmul fast float %5108, %5149
  %5151 = fadd fast float %5150, %5148
  %5152 = fsub fast float %5138, %5106
  %5153 = fmul fast float %5109, %5152
  %5154 = fmul fast float %5151, %5065
  %5155 = fmul fast float %5153, %5065
  %5156 = fadd fast float %5154, %5114
  %5157 = fadd fast float %5155, %5115
  %5158 = fsub fast float %5136, %5104
  %5159 = fmul fast float %5158, %5065
  %5160 = fadd fast float %5159, %5104
  %5161 = fdiv fast float 1.000000e+00, %5160
  %5162 = fadd fast float %4642, -1.000000e+00
  %5163 = fsub fast float %5161, %5103
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 2
  %5166 = fmul fast float %5165, %5161
  %5167 = fdiv fast float 1.600000e+02, %5166
  %5168 = fmul fast float %5162, %5162
  %5169 = fmul fast float %5168, 0xBFB5B17960000000
  %5170 = fmul fast float %5169, %5163
  %5171 = fmul fast float %5170, %5167
  %5172 = call float @dx.op.unary.f32(i32 21, float %5171)  ; Exp(value)
  %5173 = fmul fast float %5172, 0x3FF04B2960000000
  %5174 = fsub fast float 0x3FF04B2960000000, %5173
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fmul fast float %5175, 4.000000e+00
  %5177 = fadd fast float %199, -5.000000e-01
  %5178 = fadd fast float %200, -5.000000e-01
  %5179 = fmul fast float %5175, 0x3FBEB851E0000000
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fmul fast float %5180, %5177
  %5182 = fmul fast float %5180, %5178
  %5183 = fadd fast float %5156, %5181
  %5184 = fadd fast float %5157, %5182
  %5185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5183, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float %5176)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 2
  %5191 = fmul fast float %5190, %5186
  %5192 = fmul fast float %5190, %5187
  %5193 = fmul fast float %5190, %5188
  %5194 = select i1 %186, float 0.000000e+00, float %5192
  %5195 = select i1 %186, float 0.000000e+00, float %5193
  %5196 = fmul fast float %5183, 2.000000e+00
  %5197 = fmul fast float %5184, 2.000000e+00
  %5198 = fadd fast float %5196, -1.000000e+00
  %5199 = fadd fast float %5197, -1.000000e+00
  %5200 = fmul fast float %5198, %5198
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = fsub fast float 1.000000e+00, %5202
  %5204 = fmul fast float %5203, %5030
  %5205 = fadd fast float %5204, %5202
  %5206 = fmul fast float %5199, %5199
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5209 = fmul fast float %5205, %5208
  %5210 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5211 = fmul fast float %5210, %5067
  br label %5212

; <label>:5212                                    ; preds = %5069, %5035, %4994
  %5213 = phi float [ %5191, %5069 ], [ 0.000000e+00, %5035 ], [ 0.000000e+00, %4994 ]
  %5214 = phi float [ %5194, %5069 ], [ 0.000000e+00, %5035 ], [ 0.000000e+00, %4994 ]
  %5215 = phi float [ %5195, %5069 ], [ 0.000000e+00, %5035 ], [ 0.000000e+00, %4994 ]
  %5216 = phi float [ %5211, %5069 ], [ 0.000000e+00, %5035 ], [ 0.000000e+00, %4994 ]
  %5217 = fcmp fast olt float %5216, 1.000000e+00
  %5218 = or i1 %5217, %4992
  %5219 = zext i1 %5218 to i32
  %5220 = fmul fast float %5216, %4977
  %5221 = fsub fast float %5216, %5220
  %5222 = fsub fast float 1.000000e+00, %4983
  %5223 = fmul fast float %5221, %5222
  %5224 = fadd fast float %5223, %4983
  %5225 = fsub fast float %5224, %5221
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5227 = fmul fast float %5226, %4918
  %5228 = fmul fast float %5226, %4919
  %5229 = fmul fast float %5226, %4920
  %5230 = fsub fast float -0.000000e+00, %5224
  %5231 = fmul fast float %5221, %5213
  %5232 = fmul fast float %5221, %5214
  %5233 = fmul fast float %5221, %5215
  %5234 = fadd fast float %5231, %5227
  %5235 = fadd fast float %5232, %5228
  %5236 = fadd fast float %5233, %5229
  br label %5237

; <label>:5237                                    ; preds = %5212, %4985
  %5238 = phi float [ %4983, %4985 ], [ %5230, %5212 ]
  %5239 = phi float [ %4918, %4985 ], [ %5234, %5212 ]
  %5240 = phi float [ %4919, %4985 ], [ %5235, %5212 ]
  %5241 = phi float [ %4920, %4985 ], [ %5236, %5212 ]
  %5242 = phi i32 [ %4993, %4985 ], [ %5219, %5212 ]
  %5243 = icmp eq i32 %5242, 0
  br i1 %5243, label %5840, label %5244

; <label>:5244                                    ; preds = %5237
  %5245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5245, 2
  %5247 = extractvalue %dx.types.CBufRet.f32 %5245, 3
  %5248 = fmul fast float %5246, %85
  %5249 = fmul fast float %5247, %86
  %5250 = fptoui float %5248 to i32
  %5251 = fptoui float %5249 to i32
  %5252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.CBufRet.f32 %5252, 2
  %5255 = extractvalue %dx.types.CBufRet.f32 %5252, 3
  %5256 = fadd fast float %80, -4.000000e+00
  %5257 = call float @dx.op.binary.f32(i32 35, float %5256, float 0.000000e+00)  ; FMax(a,b)
  %5258 = fadd fast float %5257, %5253
  %5259 = fmul fast float %5258, %5254
  %5260 = call float @dx.op.unary.f32(i32 23, float %5259)  ; Log(value)
  %5261 = fmul fast float %5260, %5255
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5264 = fmul fast float %5261, %5263
  %5265 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.i32 %5266, 1
  %5268 = add i32 %5267, -1
  %5269 = uitofp i32 %5267 to float
  %5270 = fmul fast float %5269, %5265
  %5271 = fptoui float %5270 to i32
  %5272 = call i32 @dx.op.binary.i32(i32 40, i32 %5271, i32 %5268)  ; UMin(a,b)
  %5273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.i32 %5273, 2
  %5275 = extractvalue %dx.types.CBufRet.i32 %5273, 3
  %5276 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5251, i32 %5274, i32 %5250)  ; UMad(a,b,c)
  %5277 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5272, i32 %5275, i32 %5276)  ; UMad(a,b,c)
  %5278 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5279 = fptoui float %5278 to i32
  %5280 = lshr i32 %5279, 5
  %5281 = call i32 @dx.op.binary.i32(i32 40, i32 %5280, i32 8191)  ; UMin(a,b)
  %5282 = fcmp fast ogt float %4441, 0.000000e+00
  %5283 = fcmp fast ogt float %4669, 0.000000e+00
  %5284 = and i1 %5283, %5282
  br i1 %5284, label %5285, label %5314

; <label>:5285                                    ; preds = %5244
  %5286 = call float @dx.op.dot3.f32(i32 55, float %4667, float %4668, float %4669, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = call float @dx.op.binary.f32(i32 35, float %5286, float -1.000000e+00)  ; FMax(a,b)
  %5288 = call float @dx.op.binary.f32(i32 36, float %5287, float 1.000000e+00)  ; FMin(a,b)
  %5289 = fmul fast float %5288, %5288
  %5290 = fsub fast float 1.000000e+00, %5289
  %5291 = fmul fast float %5290, 0x3FFC6E2300000000
  %5292 = fsub fast float 1.000000e+00, %5291
  %5293 = fcmp fast ogt float %5292, 0.000000e+00
  %5294 = call float @dx.op.unary.f32(i32 24, float %5292)  ; Sqrt(value)
  %5295 = fsub fast float 1.000000e+00, %5294
  %5296 = call float @dx.op.unary.f32(i32 23, float %5295)  ; Log(value)
  %5297 = fmul fast float %5296, 5.000000e+00
  %5298 = call float @dx.op.unary.f32(i32 21, float %5297)  ; Exp(value)
  %5299 = fmul fast float %5298, 0x3FEF591A60000000
  %5300 = fadd fast float %5299, 0x3F94DCB540000000
  %5301 = select i1 %5293, float %5300, float 1.000000e+00
  %5302 = fcmp fast oge float %5301, 1.000000e+00
  %5303 = fmul fast float %5286, 2.000000e+00
  %5304 = fadd fast float %5303, %4669
  %5305 = select i1 %5302, float %5304, float %4669
  %5306 = fsub fast float %5305, %4669
  %5307 = fmul fast float %5306, %4441
  %5308 = fadd fast float %5307, %4669
  %5309 = call float @dx.op.dot3.f32(i32 55, float %4667, float %4668, float %5308, float %4667, float %4668, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = call float @dx.op.unary.f32(i32 25, float %5309)  ; Rsqrt(value)
  %5311 = fmul fast float %5310, %4667
  %5312 = fmul fast float %5310, %4668
  %5313 = fmul fast float %5308, %5310
  br label %5314

; <label>:5314                                    ; preds = %5285, %5244
  %5315 = phi float [ %5311, %5285 ], [ %4667, %5244 ]
  %5316 = phi float [ %5312, %5285 ], [ %4668, %5244 ]
  %5317 = phi float [ %5313, %5285 ], [ %4669, %5244 ]
  %5318 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.i32 %5318, 2
  %5320 = add nsw i32 %5319, -1
  %5321 = call i32 @dx.op.binary.i32(i32 37, i32 %5320, i32 0)  ; IMax(a,b)
  %5322 = shl i32 %5281, 2
  %5323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5322, i32 undef)  ; BufferLoad(srv,index,wot)
  %5324 = extractvalue %dx.types.ResRet.i32 %5323, 0
  %5325 = lshr i32 %5324, 16
  %5326 = and i32 %5324, 65535
  %5327 = lshr i32 %5324, 21
  %5328 = lshr i32 %5326, 5
  %5329 = call i32 @dx.op.binary.i32(i32 40, i32 %5328, i32 %5321)  ; UMin(a,b)
  %5330 = icmp ugt i32 %5327, %5329
  br i1 %5330, label %5712, label %5331

; <label>:5331                                    ; preds = %5314
  br label %5332

; <label>:5332                                    ; preds = %5701, %5331
  %5333 = phi float [ %5702, %5701 ], [ 0.000000e+00, %5331 ]
  %5334 = phi float [ %5703, %5701 ], [ 0.000000e+00, %5331 ]
  %5335 = phi float [ %5704, %5701 ], [ 0.000000e+00, %5331 ]
  %5336 = phi float [ %5705, %5701 ], [ 1.000000e+00, %5331 ]
  %5337 = phi i32 [ %5709, %5701 ], [ %5327, %5331 ]
  %5338 = phi float [ %5706, %5701 ], [ 0.000000e+00, %5331 ]
  %5339 = phi float [ %5707, %5701 ], [ 0.000000e+00, %5331 ]
  %5340 = phi float [ %5708, %5701 ], [ 0.000000e+00, %5331 ]
  %5341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.i32 %5341, 2
  %5343 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5277, i32 %5342, i32 %5337)  ; UMad(a,b,c)
  %5344 = shl i32 %5343, 2
  %5345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5344, i32 undef)  ; BufferLoad(srv,index,wot)
  %5346 = extractvalue %dx.types.ResRet.i32 %5345, 0
  %5347 = shl i32 %5337, 5
  %5348 = sub nsw i32 %5325, %5347
  %5349 = call i32 @dx.op.binary.i32(i32 37, i32 %5348, i32 0)  ; IMax(a,b)
  %5350 = call i32 @dx.op.binary.i32(i32 38, i32 %5349, i32 31)  ; IMin(a,b)
  %5351 = sub nsw i32 1, %5325
  %5352 = add nsw i32 %5351, %5326
  %5353 = call i32 @dx.op.binary.i32(i32 37, i32 %5352, i32 0)  ; IMax(a,b)
  %5354 = call i32 @dx.op.binary.i32(i32 38, i32 %5353, i32 32)  ; IMin(a,b)
  %5355 = and i32 %5354, 31
  %5356 = shl i32 -1, %5355
  %5357 = xor i32 %5356, -1
  %5358 = and i32 %5350, 31
  %5359 = shl i32 %5357, %5358
  %5360 = icmp eq i32 %5354, 32
  %5361 = select i1 %5360, i32 -1, i32 %5359
  %5362 = and i32 %5361, %5346
  %5363 = icmp eq i32 %5362, 0
  br i1 %5363, label %5701, label %5364

; <label>:5364                                    ; preds = %5332
  br label %5365

; <label>:5365                                    ; preds = %5475, %5364
  %5366 = phi float [ %5476, %5475 ], [ %5333, %5364 ]
  %5367 = phi float [ %5477, %5475 ], [ %5334, %5364 ]
  %5368 = phi float [ %5478, %5475 ], [ %5335, %5364 ]
  %5369 = phi float [ %5479, %5475 ], [ %5336, %5364 ]
  %5370 = phi i32 [ %5378, %5475 ], [ %5362, %5364 ]
  %5371 = phi float [ %5480, %5475 ], [ %5338, %5364 ]
  %5372 = phi float [ %5481, %5475 ], [ %5339, %5364 ]
  %5373 = phi float [ %5482, %5475 ], [ %5340, %5364 ]
  %5374 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5370)  ; FirstbitLo(value)
  %5375 = add i32 %5374, %5347
  %5376 = and i32 %5374, 31
  %5377 = shl i32 1, %5376
  %5378 = xor i32 %5377, %5370
  %5379 = mul i32 %5375, 72
  %5380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5379, i32 undef)  ; BufferLoad(srv,index,wot)
  %5381 = extractvalue %dx.types.ResRet.f32 %5380, 0
  %5382 = extractvalue %dx.types.ResRet.f32 %5380, 1
  %5383 = extractvalue %dx.types.ResRet.f32 %5380, 2
  %5384 = add i32 %5379, 12
  %5385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.i32 %5385, 0
  %5387 = add i32 %5379, 16
  %5388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5387, i32 undef)  ; BufferLoad(srv,index,wot)
  %5389 = extractvalue %dx.types.ResRet.f32 %5388, 0
  %5390 = extractvalue %dx.types.ResRet.f32 %5388, 1
  %5391 = extractvalue %dx.types.ResRet.f32 %5388, 2
  %5392 = add i32 %5379, 28
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = add i32 %5379, 32
  %5396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5395, i32 undef)  ; BufferLoad(srv,index,wot)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.ResRet.f32 %5396, 1
  %5399 = extractvalue %dx.types.ResRet.f32 %5396, 2
  %5400 = extractvalue %dx.types.ResRet.f32 %5396, 3
  %5401 = add i32 %5379, 48
  %5402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.ResRet.f32 %5402, 1
  %5405 = add i32 %5379, 56
  %5406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.ResRet.f32 %5406, 1
  %5409 = add i32 %5379, 64
  %5410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5409, i32 undef)  ; BufferLoad(srv,index,wot)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.ResRet.f32 %5410, 1
  %5413 = mul i32 %5375, 60
  %5414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = add i32 %5413, 12
  %5419 = add i32 %5413, 48
  %5420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.ResRet.f32 %5420, 1
  %5423 = extractvalue %dx.types.ResRet.f32 %5420, 2
  %5424 = and i32 %5386, 32767
  %5425 = bitcast float %5381 to i32
  %5426 = icmp eq i32 %5425, -1
  %5427 = bitcast float %5382 to i32
  %5428 = and i32 %5386, 32768
  %5429 = icmp ne i32 %5428, 0
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.CBufRet.f32 %5430, 2
  %5434 = fsub fast float %5415, %5431
  %5435 = fsub fast float %5416, %5432
  %5436 = fsub fast float %5417, %5433
  %5437 = fsub fast float %144, %5434
  %5438 = fsub fast float %145, %5435
  %5439 = fsub fast float %146, %5436
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = add i32 %5413, 24
  %5446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.ResRet.f32 %5446, 1
  %5449 = extractvalue %dx.types.ResRet.f32 %5446, 2
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5447, float %5448, float %5449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = add i32 %5413, 36
  %5452 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5451, i32 undef)  ; BufferLoad(srv,index,wot)
  %5453 = extractvalue %dx.types.ResRet.f32 %5452, 0
  %5454 = extractvalue %dx.types.ResRet.f32 %5452, 1
  %5455 = extractvalue %dx.types.ResRet.f32 %5452, 2
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5458 = call float @dx.op.unary.f32(i32 6, float %5450)  ; FAbs(value)
  %5459 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5460 = fsub fast float %5421, %5457
  %5461 = fsub fast float %5422, %5458
  %5462 = fsub fast float %5423, %5459
  %5463 = fmul fast float %5460, %5389
  %5464 = fmul fast float %5461, %5390
  %5465 = fmul fast float %5462, %5391
  %5466 = call float @dx.op.binary.f32(i32 36, float %5464, float %5465)  ; FMin(a,b)
  %5467 = call float @dx.op.binary.f32(i32 36, float %5463, float %5466)  ; FMin(a,b)
  %5468 = call float @dx.op.unary.f32(i32 7, float %5467)  ; Saturate(value)
  %5469 = call float @dx.op.binary.f32(i32 36, float %5369, float %5468)  ; FMin(a,b)
  %5470 = uitofp i1 %5429 to float
  %5471 = fadd fast float %4441, 1.000000e+00
  %5472 = fsub fast float %5471, %5470
  %5473 = fmul fast float %5469, %5472
  %5474 = fcmp fast ogt float %5473, 0.000000e+00
  br i1 %5474, label %5484, label %5475

; <label>:5475                                    ; preds = %5626, %5365
  %5476 = phi float [ %5690, %5626 ], [ %5366, %5365 ]
  %5477 = phi float [ %5691, %5626 ], [ %5367, %5365 ]
  %5478 = phi float [ %5692, %5626 ], [ %5368, %5365 ]
  %5479 = phi float [ %5699, %5626 ], [ %5369, %5365 ]
  %5480 = phi float [ %5696, %5626 ], [ %5371, %5365 ]
  %5481 = phi float [ %5697, %5626 ], [ %5372, %5365 ]
  %5482 = phi float [ %5698, %5626 ], [ %5373, %5365 ]
  %5483 = icmp eq i32 %5370, %5377
  br i1 %5483, label %5700, label %5365

; <label>:5484                                    ; preds = %5365
  br i1 %5426, label %5542, label %5485

; <label>:5485                                    ; preds = %5484
  %5486 = fsub fast float -0.000000e+00, %5441
  %5487 = fsub fast float -0.000000e+00, %5442
  %5488 = fsub fast float -0.000000e+00, %5443
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = fsub fast float -0.000000e+00, %5489
  %5491 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5486, float %5487, float %5488)  ; Dot3(ax,ay,az,bx,by,bz)
  %5492 = fadd fast float %5491, %5404
  %5493 = fadd fast float %5403, %5491
  %5494 = fsub fast float -0.000000e+00, %5493
  %5495 = fcmp ogt float %5489, -0.000000e+00
  %5496 = select i1 %5495, float %5494, float %5492
  %5497 = call float @dx.op.unary.f32(i32 6, float %5490)  ; FAbs(value)
  %5498 = fdiv fast float 1.000000e+00, %5497
  %5499 = fmul fast float %5496, %5498
  %5500 = call float @dx.op.binary.f32(i32 35, float %5499, float 0.000000e+00)  ; FMax(a,b)
  %5501 = fsub fast float -0.000000e+00, %5447
  %5502 = fsub fast float -0.000000e+00, %5448
  %5503 = fsub fast float -0.000000e+00, %5449
  %5504 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5505 = fsub fast float -0.000000e+00, %5504
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5501, float %5502, float %5503)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fadd fast float %5506, %5408
  %5508 = fadd fast float %5407, %5506
  %5509 = fsub fast float -0.000000e+00, %5508
  %5510 = fcmp ogt float %5504, -0.000000e+00
  %5511 = select i1 %5510, float %5509, float %5507
  %5512 = call float @dx.op.unary.f32(i32 6, float %5505)  ; FAbs(value)
  %5513 = fdiv fast float 1.000000e+00, %5512
  %5514 = fmul fast float %5511, %5513
  %5515 = call float @dx.op.binary.f32(i32 35, float %5514, float 0.000000e+00)  ; FMax(a,b)
  %5516 = fsub fast float -0.000000e+00, %5453
  %5517 = fsub fast float -0.000000e+00, %5454
  %5518 = fsub fast float -0.000000e+00, %5455
  %5519 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5520 = fsub fast float -0.000000e+00, %5519
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5437, float %5438, float %5439, float %5516, float %5517, float %5518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = fadd fast float %5521, %5412
  %5523 = fadd fast float %5411, %5521
  %5524 = fsub fast float -0.000000e+00, %5523
  %5525 = fcmp ogt float %5519, -0.000000e+00
  %5526 = select i1 %5525, float %5524, float %5522
  %5527 = call float @dx.op.unary.f32(i32 6, float %5520)  ; FAbs(value)
  %5528 = fdiv fast float 1.000000e+00, %5527
  %5529 = fmul fast float %5526, %5528
  %5530 = call float @dx.op.binary.f32(i32 35, float %5529, float 0.000000e+00)  ; FMax(a,b)
  %5531 = call float @dx.op.binary.f32(i32 36, float %5515, float %5530)  ; FMin(a,b)
  %5532 = call float @dx.op.binary.f32(i32 36, float %5500, float %5531)  ; FMin(a,b)
  %5533 = fmul fast float %5532, %5315
  %5534 = fmul fast float %5532, %5316
  %5535 = fmul fast float %5532, %5317
  %5536 = fadd fast float %5533, %144
  %5537 = fadd fast float %5534, %145
  %5538 = fadd fast float %5535, %146
  %5539 = fsub fast float %5536, %5381
  %5540 = fsub fast float %5537, %5382
  %5541 = fsub fast float %5538, %5383
  br label %5549

; <label>:5542                                    ; preds = %5484
  %5543 = fmul fast float %5315, 8.096000e+03
  %5544 = fmul fast float %5316, 8.096000e+03
  %5545 = fmul fast float %5317, 8.096000e+03
  %5546 = fadd fast float %5543, %144
  %5547 = fadd fast float %5544, %145
  %5548 = fadd fast float %5545, %146
  br label %5549

; <label>:5549                                    ; preds = %5542, %5485
  %5550 = phi float [ %5315, %5542 ], [ %5539, %5485 ]
  %5551 = phi float [ %5316, %5542 ], [ %5540, %5485 ]
  %5552 = phi float [ %5317, %5542 ], [ %5541, %5485 ]
  %5553 = phi float [ %5546, %5542 ], [ %5536, %5485 ]
  %5554 = phi float [ %5547, %5542 ], [ %5537, %5485 ]
  %5555 = phi float [ %5548, %5542 ], [ %5538, %5485 ]
  %5556 = fcmp fast olt float %5400, 1.000000e+00
  br i1 %5556, label %5557, label %5588, !dx.controlflow.hints !87

; <label>:5557                                    ; preds = %5549
  %5558 = fmul fast float %5552, %5398
  %5559 = fmul fast float %5551, %5399
  %5560 = fsub fast float %5558, %5559
  %5561 = fmul fast float %5550, %5399
  %5562 = fmul fast float %5552, %5397
  %5563 = fsub fast float %5561, %5562
  %5564 = fmul fast float %5551, %5397
  %5565 = fmul fast float %5550, %5398
  %5566 = fsub fast float %5564, %5565
  %5567 = fmul fast float %5560, 2.000000e+00
  %5568 = fmul fast float %5563, 2.000000e+00
  %5569 = fmul fast float %5566, 2.000000e+00
  %5570 = fmul fast float %5567, %5400
  %5571 = fmul fast float %5568, %5400
  %5572 = fmul fast float %5569, %5400
  %5573 = fmul fast float %5569, %5398
  %5574 = fmul fast float %5568, %5399
  %5575 = fmul fast float %5567, %5399
  %5576 = fmul fast float %5569, %5397
  %5577 = fmul fast float %5568, %5397
  %5578 = fmul fast float %5567, %5398
  %5579 = fadd fast float %5573, %5550
  %5580 = fadd fast float %5579, %5570
  %5581 = fsub fast float %5580, %5574
  %5582 = fsub fast float %5551, %5576
  %5583 = fadd fast float %5582, %5571
  %5584 = fadd fast float %5583, %5575
  %5585 = fadd fast float %5572, %5552
  %5586 = fsub fast float %5585, %5578
  %5587 = fadd fast float %5586, %5577
  br label %5588

; <label>:5588                                    ; preds = %5557, %5549
  %5589 = phi float [ %5581, %5557 ], [ %5550, %5549 ]
  %5590 = phi float [ %5584, %5557 ], [ %5551, %5549 ]
  %5591 = phi float [ %5587, %5557 ], [ %5552, %5549 ]
  br i1 %5426, label %5623, label %5592

; <label>:5592                                    ; preds = %5588
  %5593 = fmul fast float %4642, 0x400187C840000000
  %5594 = fadd fast float %5593, 0xC00EFC2120000000
  %5595 = fmul fast float %5594, %4642
  %5596 = fadd fast float %5595, 0x3FE5D16340000000
  %5597 = fmul fast float %5596, %4642
  %5598 = fadd fast float %5597, 1.000000e+00
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = fsub fast float %5553, %144
  %5601 = fsub fast float %5554, %145
  %5602 = fsub fast float %5555, %146
  %5603 = fsub fast float %5553, %5381
  %5604 = fsub fast float %5554, %5382
  %5605 = fsub fast float %5555, %5383
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float %5600, float %5601, float %5602)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.dot3.f32(i32 55, float %5603, float %5604, float %5605, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fadd fast float %5607, 0x3EE4F8B580000000
  %5609 = fdiv fast float %5606, %5608
  %5610 = bitcast float %5609 to i32
  %5611 = ashr i32 %5610, 1
  %5612 = add nsw i32 %5611, 532487669
  %5613 = bitcast i32 %5612 to float
  %5614 = fmul fast float %5613, %5599
  %5615 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5616 = fmul fast float %5615, 0x4009981AE0000000
  %5617 = fsub fast float 0x40111BBD80000000, %5616
  %5618 = fmul fast float %5617, %5615
  %5619 = fadd fast float %5618, 0xC0009F6020000000
  %5620 = fmul fast float %5619, %5615
  %5621 = fadd fast float %5620, 1.000000e+00
  %5622 = call float @dx.op.unary.f32(i32 7, float %5621)  ; Saturate(value)
  br label %5626

; <label>:5623                                    ; preds = %5588
  %5624 = icmp ne i32 %5427, -1
  %5625 = zext i1 %5624 to i32
  br label %5626

; <label>:5626                                    ; preds = %5623, %5592
  %5627 = phi float [ %4642, %5623 ], [ %5622, %5592 ]
  %5628 = phi i32 [ %5625, %5623 ], [ 0, %5592 ]
  %5629 = fmul float %5627, 5.000000e+00
  %5630 = fsub float 5.000000e+00, %5629
  %5631 = icmp ne i32 %5628, 0
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 3
  %5634 = fadd fast float %5633, %5630
  %5635 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5634)  ; FMax(a,b)
  %5636 = call float @dx.op.unary.f32(i32 6, float %5589)  ; FAbs(value)
  %5637 = call float @dx.op.unary.f32(i32 6, float %5590)  ; FAbs(value)
  %5638 = fadd fast float %5637, %5636
  %5639 = call float @dx.op.unary.f32(i32 6, float %5591)  ; FAbs(value)
  %5640 = fadd fast float %5638, %5639
  %5641 = fcmp fast oeq float %5640, 0.000000e+00
  %5642 = fdiv fast float 1.000000e+00, %5640
  %5643 = select i1 %5641, float 1.000000e+00, float %5642
  %5644 = fmul fast float %5643, %5589
  %5645 = fmul fast float %5643, %5590
  %5646 = call float @dx.op.unary.f32(i32 6, float %5645)  ; FAbs(value)
  %5647 = call float @dx.op.unary.f32(i32 6, float %5644)  ; FAbs(value)
  %5648 = fsub fast float 1.000000e+00, %5646
  %5649 = fsub fast float 1.000000e+00, %5647
  %5650 = fcmp fast oge float %5644, 0.000000e+00
  %5651 = fcmp fast oge float %5645, 0.000000e+00
  %5652 = select i1 %5650, float 1.000000e+00, float -1.000000e+00
  %5653 = select i1 %5651, float 1.000000e+00, float -1.000000e+00
  %5654 = fcmp fast ole float %5591, 0.000000e+00
  %5655 = fmul fast float %5652, %5648
  %5656 = fmul fast float %5653, %5649
  %5657 = select i1 %5654, float %5655, float %5644
  %5658 = select i1 %5654, float %5656, float %5645
  %5659 = fmul fast float %5657, 5.000000e-01
  %5660 = fmul fast float %5658, 5.000000e-01
  %5661 = fadd fast float %5659, 5.000000e-01
  %5662 = fadd fast float %5660, 5.000000e-01
  %5663 = uitofp i32 %5424 to float
  %5664 = call float @dx.op.binary.f32(i32 36, float %5635, float 3.000000e+00)  ; FMin(a,b)
  %5665 = fadd fast float %5664, 2.000000e+00
  %5666 = call float @dx.op.unary.f32(i32 21, float %5665)  ; Exp(value)
  %5667 = extractvalue %dx.types.CBufRet.f32 %5632, 1
  %5668 = fmul fast float %5667, %5666
  %5669 = fmul fast float %5668, 2.000000e+00
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = fmul fast float %5661, %5670
  %5672 = fmul fast float %5662, %5670
  %5673 = fadd fast float %5671, %5668
  %5674 = fadd fast float %5672, %5668
  %5675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5673, float %5674, float %5663, float undef, i32 0, i32 0, i32 undef, float %5635)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5676 = extractvalue %dx.types.ResRet.f32 %5675, 0
  %5677 = extractvalue %dx.types.ResRet.f32 %5675, 1
  %5678 = extractvalue %dx.types.ResRet.f32 %5675, 2
  %5679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5680 = extractvalue %dx.types.CBufRet.f32 %5679, 3
  %5681 = fmul fast float %5680, %5394
  %5682 = call float @dx.op.binary.f32(i32 36, float %4688, float %5681)  ; FMin(a,b)
  %5683 = select i1 %5631, float %5682, float %5681
  %5684 = fmul fast float %5676, %5473
  %5685 = fmul fast float %5684, %5683
  %5686 = fmul fast float %5677, %5473
  %5687 = fmul fast float %5686, %5683
  %5688 = fmul fast float %5678, %5473
  %5689 = fmul fast float %5688, %5683
  %5690 = fadd fast float %5685, %5366
  %5691 = fadd fast float %5687, %5367
  %5692 = fadd fast float %5689, %5368
  %5693 = fmul fast float %5553, %5473
  %5694 = fmul fast float %5554, %5473
  %5695 = fmul fast float %5555, %5473
  %5696 = fadd fast float %5693, %5371
  %5697 = fadd fast float %5694, %5372
  %5698 = fadd fast float %5695, %5373
  %5699 = fsub fast float %5369, %5473
  br label %5475

; <label>:5700                                    ; preds = %5475
  br label %5701

; <label>:5701                                    ; preds = %5700, %5332
  %5702 = phi float [ %5333, %5332 ], [ %5476, %5700 ]
  %5703 = phi float [ %5334, %5332 ], [ %5477, %5700 ]
  %5704 = phi float [ %5335, %5332 ], [ %5478, %5700 ]
  %5705 = phi float [ %5336, %5332 ], [ %5479, %5700 ]
  %5706 = phi float [ %5338, %5332 ], [ %5480, %5700 ]
  %5707 = phi float [ %5339, %5332 ], [ %5481, %5700 ]
  %5708 = phi float [ %5340, %5332 ], [ %5482, %5700 ]
  %5709 = add i32 %5337, 1
  %5710 = icmp ugt i32 %5709, %5329
  br i1 %5710, label %5711, label %5332, !llvm.loop !88

; <label>:5711                                    ; preds = %5701
  br label %5712

; <label>:5712                                    ; preds = %5711, %5314
  %5713 = phi float [ 0.000000e+00, %5314 ], [ %5702, %5711 ]
  %5714 = phi float [ 0.000000e+00, %5314 ], [ %5703, %5711 ]
  %5715 = phi float [ 0.000000e+00, %5314 ], [ %5704, %5711 ]
  %5716 = phi float [ 0.000000e+00, %5314 ], [ %5706, %5711 ]
  %5717 = phi float [ 0.000000e+00, %5314 ], [ %5707, %5711 ]
  %5718 = phi float [ 0.000000e+00, %5314 ], [ %5708, %5711 ]
  %5719 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5715, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = select i1 %186, float 0.000000e+00, float %5713
  %5721 = select i1 %186, float %5719, float %5714
  %5722 = select i1 %186, float 0.000000e+00, float %5715
  %5723 = fcmp fast olt float %5238, 0.000000e+00
  %5724 = call float @dx.op.unary.f32(i32 6, float %5238)  ; FAbs(value)
  %5725 = fmul fast float %5724, %5239
  %5726 = fmul fast float %5724, %5240
  %5727 = fmul fast float %5724, %5241
  %5728 = select i1 %5723, float %5239, float %5725
  %5729 = select i1 %5723, float %5240, float %5726
  %5730 = select i1 %5723, float %5241, float %5727
  %5731 = fsub fast float 1.000000e+00, %5724
  %5732 = call float @dx.op.unary.f32(i32 7, float %5731)  ; Saturate(value)
  %5733 = fmul fast float %5732, %5720
  %5734 = fmul fast float %5732, %5721
  %5735 = fmul fast float %5732, %5722
  %5736 = fadd fast float %5728, %5733
  %5737 = fadd fast float %5729, %5734
  %5738 = fadd fast float %5730, %5735
  %5739 = fcmp fast une float %4988, 0.000000e+00
  br i1 %5739, label %5840, label %5740

; <label>:5740                                    ; preds = %5712
  %5741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.CBufRet.f32 %5741, 1
  %5744 = extractvalue %dx.types.CBufRet.f32 %5741, 2
  %5745 = extractvalue %dx.types.CBufRet.f32 %5741, 3
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5750 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 0
  %5753 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5754 = extractvalue %dx.types.CBufRet.f32 %5751, 2
  %5755 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5756 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float %4667, float %4668, float %4669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.dot3.f32(i32 55, float %5716, float %5717, float %5718, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = fadd fast float %4642, -1.000000e+00
  %5760 = fsub fast float %5757, %5758
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 2
  %5763 = fmul fast float %5762, %5757
  %5764 = fdiv fast float 1.600000e+02, %5763
  %5765 = fmul fast float %5759, %5759
  %5766 = fmul fast float %5765, 0xBFB5B17960000000
  %5767 = fmul fast float %5766, %5760
  %5768 = fmul fast float %5767, %5764
  %5769 = call float @dx.op.unary.f32(i32 21, float %5768)  ; Exp(value)
  %5770 = fmul fast float %5769, 0x3FF04B2960000000
  %5771 = fsub fast float 0x3FF04B2960000000, %5770
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = fmul fast float %5772, 4.000000e+00
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = fadd fast float %5775, %5716
  %5779 = fadd fast float %5776, %5717
  %5780 = fadd fast float %5777, %5718
  %5781 = fmul fast float %5778, %5742
  %5782 = call float @dx.op.tertiary.f32(i32 46, float %5779, float %5743, float %5781)  ; FMad(a,b,c)
  %5783 = call float @dx.op.tertiary.f32(i32 46, float %5780, float %5744, float %5782)  ; FMad(a,b,c)
  %5784 = fadd fast float %5783, %5745
  %5785 = fmul fast float %5778, %5747
  %5786 = call float @dx.op.tertiary.f32(i32 46, float %5779, float %5748, float %5785)  ; FMad(a,b,c)
  %5787 = call float @dx.op.tertiary.f32(i32 46, float %5780, float %5749, float %5786)  ; FMad(a,b,c)
  %5788 = fadd fast float %5787, %5750
  %5789 = fmul fast float %5778, %5752
  %5790 = call float @dx.op.tertiary.f32(i32 46, float %5779, float %5753, float %5789)  ; FMad(a,b,c)
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %5780, float %5754, float %5790)  ; FMad(a,b,c)
  %5792 = fadd fast float %5791, %5755
  %5793 = fdiv fast float %5784, %5792
  %5794 = fdiv fast float %5788, %5792
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5798 = fmul fast float %5796, %5793
  %5799 = fmul fast float %5797, %5794
  %5800 = extractvalue %dx.types.CBufRet.f32 %5795, 2
  %5801 = extractvalue %dx.types.CBufRet.f32 %5795, 3
  %5802 = fadd fast float %5798, %5800
  %5803 = fadd fast float %5799, %5801
  %5804 = fmul fast float %5756, 8.000000e+00
  %5805 = call float @dx.op.unary.f32(i32 7, float %5804)  ; Saturate(value)
  %5806 = fmul fast float %5802, 2.000000e+00
  %5807 = fmul fast float %5803, 2.000000e+00
  %5808 = fadd fast float %5806, -1.000000e+00
  %5809 = fadd fast float %5807, -1.000000e+00
  %5810 = fmul fast float %5808, %5808
  %5811 = fsub fast float 1.000000e+00, %5810
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = fmul fast float %5809, %5809
  %5814 = fsub fast float 1.000000e+00, %5813
  %5815 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5816 = fmul fast float %4988, %5812
  %5817 = fmul fast float %5816, %5815
  %5818 = call float @dx.op.unary.f32(i32 7, float %5817)  ; Saturate(value)
  %5819 = fmul fast float %5818, %5805
  %5820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5802, float %5803, float undef, float undef, i32 0, i32 0, i32 undef, float %5773)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.ResRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5820, 2
  %5824 = select i1 %186, float 0.000000e+00, float %5822
  %5825 = select i1 %186, float 0.000000e+00, float %5823
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 2
  %5828 = fmul fast float %5827, %5821
  %5829 = fmul fast float %5824, %5827
  %5830 = fmul fast float %5825, %5827
  %5831 = fsub fast float %5828, %5720
  %5832 = fsub fast float %5829, %5721
  %5833 = fsub fast float %5830, %5722
  %5834 = fmul fast float %5831, %5819
  %5835 = fmul fast float %5832, %5819
  %5836 = fmul fast float %5833, %5819
  %5837 = fadd fast float %5834, %5720
  %5838 = fadd fast float %5835, %5721
  %5839 = fadd fast float %5836, %5722
  br label %5840

; <label>:5840                                    ; preds = %5740, %5712, %5237, %4961
  %5841 = phi float [ %5239, %5237 ], [ %5736, %5712 ], [ %4918, %4961 ], [ %5837, %5740 ]
  %5842 = phi float [ %5240, %5237 ], [ %5737, %5712 ], [ %4919, %4961 ], [ %5838, %5740 ]
  %5843 = phi float [ %5241, %5237 ], [ %5738, %5712 ], [ %4920, %4961 ], [ %5839, %5740 ]
  %5844 = fmul fast float %4967, %4914
  %5845 = fmul fast float %4967, %4915
  %5846 = fmul fast float %4967, %4916
  %5847 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5848 = fcmp fast ogt float %5847, 0x3E7FF19E20000000
  %5849 = fdiv fast float 1.000000e+00, %5847
  %5850 = select i1 %5848, float %5849, float 0.000000e+00
  %5851 = fmul fast float %5850, %4633
  %5852 = fmul fast float %5850, %4634
  %5853 = fmul fast float %5850, %4635
  %5854 = fadd fast float %5851, -1.000000e+00
  %5855 = fadd fast float %5852, -1.000000e+00
  %5856 = fadd fast float %5853, -1.000000e+00
  %5857 = fmul fast float %5854, 5.000000e-01
  %5858 = fmul fast float %5855, 5.000000e-01
  %5859 = fmul fast float %5856, 5.000000e-01
  %5860 = fadd fast float %5857, 1.000000e+00
  %5861 = fadd fast float %5858, 1.000000e+00
  %5862 = fadd fast float %5859, 1.000000e+00
  %5863 = fmul fast float %5841, %4962
  %5864 = fmul fast float %5842, %4963
  %5865 = fmul fast float %5843, %4964
  %5866 = fsub fast float 1.000000e+00, %4661
  %5867 = bitcast float %5866 to i32
  %5868 = sitofp i32 %5867 to float
  %5869 = fmul fast float %5868, 5.000000e+00
  %5870 = fadd fast float %5869, 0xC1EFBF8940000000
  %5871 = fptosi float %5870 to i32
  %5872 = bitcast i32 %5871 to float
  %5873 = fmul fast float %5872, %4032
  %5874 = fmul fast float %4914, %5873
  %5875 = fmul fast float %5874, %4967
  %5876 = fmul fast float %5875, %5860
  %5877 = fmul fast float %4915, %5873
  %5878 = fmul fast float %5877, %4967
  %5879 = fmul fast float %5878, %5861
  %5880 = fmul fast float %4916, %5873
  %5881 = fmul fast float %5880, %4967
  %5882 = fmul fast float %5881, %5862
  %5883 = fmul fast float %5844, %4028
  %5884 = fmul fast float %5845, %4028
  %5885 = fmul fast float %5846, %4028
  %5886 = fadd fast float %5863, %4024
  %5887 = fadd fast float %5886, %5876
  %5888 = fmul fast float %5887, %4028
  %5889 = fadd fast float %5864, %4025
  %5890 = fadd fast float %5889, %5879
  %5891 = fmul fast float %5890, %4028
  %5892 = fadd fast float %5865, %4026
  %5893 = fadd fast float %5892, %5882
  %5894 = fmul fast float %5893, %4028
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 3
  %5897 = fcmp fast oeq float %5896, 0.000000e+00
  br i1 %5897, label %6116, label %5898

; <label>:5898                                    ; preds = %5840
  %5899 = extractvalue %dx.types.CBufRet.f32 %5895, 0
  %5900 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5901 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5903 = extractvalue %dx.types.CBufRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.CBufRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.CBufRet.f32 %5902, 2
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5908 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5909 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5904, float %5905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5910 = select i1 %186, float %5907, float %5903
  %5911 = select i1 %186, float %5909, float %5904
  %5912 = select i1 %186, float %5908, float %5905
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5915 = fcmp fast une float %5914, 0.000000e+00
  br i1 %5915, label %5916, label %5933

; <label>:5916                                    ; preds = %5898
  %5917 = fptoui float %85 to i32
  %5918 = fptoui float %86 to i32
  %5919 = lshr i32 %5917, 4
  %5920 = lshr i32 %5918, 4
  %5921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5922 = extractvalue %dx.types.CBufRet.f32 %5921, 0
  %5923 = fptoui float %5922 to i32
  %5924 = add i32 %5923, 15
  %5925 = lshr i32 %5924, 4
  %5926 = mul i32 %5925, %5920
  %5927 = add i32 %5926, %5919
  %5928 = shl i32 %5927, 3
  %5929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5928, i32 undef)  ; BufferLoad(srv,index,wot)
  %5930 = extractvalue %dx.types.ResRet.i32 %5929, 0
  %5931 = and i32 %5930, -268435456
  %5932 = icmp eq i32 %5931, -1342177280
  br i1 %5932, label %5938, label %5933

; <label>:5933                                    ; preds = %5916, %5898
  %5934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4647, float %4648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.ResRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.ResRet.f32 %5934, 2
  br label %5938

; <label>:5938                                    ; preds = %5933, %5916
  %5939 = phi float [ %5935, %5933 ], [ 0.000000e+00, %5916 ]
  %5940 = phi float [ %5936, %5933 ], [ 0.000000e+00, %5916 ]
  %5941 = phi float [ %5937, %5933 ], [ 0.000000e+00, %5916 ]
  %5942 = call float @dx.op.binary.f32(i32 36, float %5940, float %5941)  ; FMin(a,b)
  %5943 = call float @dx.op.binary.f32(i32 36, float %5939, float %5942)  ; FMin(a,b)
  %5944 = fcmp fast ogt float %5943, 0.000000e+00
  br i1 %5944, label %5945, label %6116, !dx.controlflow.hints !90

; <label>:5945                                    ; preds = %5938
  %5946 = fmul fast float %5939, %5910
  %5947 = fmul fast float %5940, %5911
  %5948 = fmul fast float %5941, %5912
  %5949 = fsub fast float %5899, %4632
  %5950 = fsub fast float %5900, %4631
  %5951 = fsub fast float %5901, %4630
  %5952 = call float @dx.op.dot3.f32(i32 55, float %5949, float %5950, float %5951, float %5949, float %5950, float %5951)  ; Dot3(ax,ay,az,bx,by,bz)
  %5953 = call float @dx.op.unary.f32(i32 25, float %5952)  ; Rsqrt(value)
  %5954 = fmul fast float %5953, %5949
  %5955 = fmul fast float %5953, %5950
  %5956 = fmul fast float %5953, %5951
  %5957 = call float @dx.op.dot3.f32(i32 55, float %5899, float %5900, float %5901, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = call float @dx.op.dot3.f32(i32 55, float %4629, float %4628, float %4627, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = call float @dx.op.unary.f32(i32 7, float %5957)  ; Saturate(value)
  %5960 = fmul fast float %5959, %5959
  %5961 = fmul fast float %5960, %4686
  %5962 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5963 = fmul fast float %5962, %5959
  %5964 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4640, float %4641, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %5965 = fmul fast float %5964, %5964
  %5966 = call float @dx.op.unary.f32(i32 6, float %5957)  ; FAbs(value)
  %5967 = fsub fast float 1.000000e+00, %4679
  %5968 = fmul fast float %4661, %4661
  %5969 = fmul fast float %5968, %5967
  %5970 = fadd fast float %5969, %4679
  %5971 = bitcast float %5970 to i32
  %5972 = ashr i32 %5971, 1
  %5973 = add nsw i32 %5972, 532487669
  %5974 = bitcast i32 %5973 to float
  %5975 = fadd fast float %5974, %4661
  %5976 = fmul fast float %4679, %5965
  %5977 = fsub fast float 1.000000e+00, %5965
  %5978 = fadd fast float %5977, %5976
  %5979 = fmul fast float %5966, %5966
  %5980 = fmul fast float %5979, %5967
  %5981 = fadd fast float %5980, %4679
  %5982 = bitcast float %5981 to i32
  %5983 = ashr i32 %5982, 1
  %5984 = add nsw i32 %5983, 532487669
  %5985 = bitcast i32 %5984 to float
  %5986 = fadd fast float %5985, %5966
  %5987 = fmul fast float %5978, %5978
  %5988 = fmul fast float %5987, %5975
  %5989 = fmul fast float %5988, %5986
  %5990 = fdiv fast float 0x3FF0A00000000000, %5989
  %5991 = fmul fast float %5990, %4679
  %5992 = call float @dx.op.unary.f32(i32 6, float %5958)  ; FAbs(value)
  %5993 = fsub fast float 1.000000e+00, %5992
  %5994 = bitcast float %5993 to i32
  %5995 = sitofp i32 %5994 to float
  %5996 = fmul fast float %5995, 5.000000e+00
  %5997 = fadd fast float %5996, 0xC1EFBF8940000000
  %5998 = fptosi float %5997 to i32
  %5999 = bitcast i32 %5998 to float
  %6000 = fsub fast float 1.000000e+00, %4636
  %6001 = fsub fast float 1.000000e+00, %4637
  %6002 = fsub fast float 1.000000e+00, %4659
  %6003 = fmul fast float %5999, %6000
  %6004 = fmul fast float %5999, %6001
  %6005 = fmul fast float %5999, %6002
  %6006 = fadd fast float %6003, %4636
  %6007 = fadd fast float %6004, %4637
  %6008 = fadd fast float %6005, %4659
  br i1 %4934, label %6009, label %6032

; <label>:6009                                    ; preds = %5945
  %6010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4031, float %5992, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6011 = extractvalue %dx.types.ResRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.ResRet.f32 %6010, 1
  %6013 = extractvalue %dx.types.ResRet.f32 %6010, 2
  %6014 = fadd fast float %6011, -5.000000e-01
  %6015 = fadd fast float %6012, -5.000000e-01
  %6016 = fadd fast float %6013, -5.000000e-01
  %6017 = fmul fast float %4636, 4.000000e+00
  %6018 = fmul fast float %6017, %6000
  %6019 = fmul fast float %6018, %6014
  %6020 = fmul fast float %4637, 4.000000e+00
  %6021 = fmul fast float %6020, %6001
  %6022 = fmul fast float %6021, %6015
  %6023 = fmul fast float %4659, 4.000000e+00
  %6024 = fmul fast float %6023, %6002
  %6025 = fmul fast float %6024, %6016
  %6026 = fadd fast float %6019, %6006
  %6027 = fadd fast float %6022, %6007
  %6028 = fadd fast float %6025, %6008
  %6029 = call float @dx.op.unary.f32(i32 7, float %6026)  ; Saturate(value)
  %6030 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  %6031 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  br label %6032

; <label>:6032                                    ; preds = %6009, %5945
  %6033 = phi float [ %6029, %6009 ], [ %6006, %5945 ]
  %6034 = phi float [ %6030, %6009 ], [ %6007, %5945 ]
  %6035 = phi float [ %6031, %6009 ], [ %6008, %5945 ]
  %6036 = fmul fast float %5957, 9.843750e-01
  %6037 = fadd fast float %6036, 7.812500e-03
  %6038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6037, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6039 = extractvalue %dx.types.ResRet.f32 %6038, 2
  %6040 = extractvalue %dx.types.ResRet.f32 %6038, 3
  %6041 = fmul fast float %6039, %4636
  %6042 = fmul fast float %6039, %4637
  %6043 = fmul fast float %6039, %4659
  %6044 = fadd fast float %6041, %6040
  %6045 = fadd fast float %6042, %6040
  %6046 = fadd fast float %6043, %6040
  br i1 %4934, label %6047, label %6070

; <label>:6047                                    ; preds = %6032
  %6048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4031, float %5957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6049 = extractvalue %dx.types.ResRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.ResRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.ResRet.f32 %6048, 2
  %6052 = fadd fast float %6049, -5.000000e-01
  %6053 = fadd fast float %6050, -5.000000e-01
  %6054 = fadd fast float %6051, -5.000000e-01
  %6055 = fmul fast float %4636, 4.000000e+00
  %6056 = fmul fast float %6055, %6000
  %6057 = fmul fast float %6056, %6052
  %6058 = fmul fast float %4637, 4.000000e+00
  %6059 = fmul fast float %6058, %6001
  %6060 = fmul fast float %6059, %6053
  %6061 = fmul fast float %4659, 4.000000e+00
  %6062 = fmul fast float %6061, %6002
  %6063 = fmul fast float %6062, %6054
  %6064 = fadd fast float %6057, %6044
  %6065 = fadd fast float %6060, %6045
  %6066 = fadd fast float %6063, %6046
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  %6068 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6069 = call float @dx.op.unary.f32(i32 7, float %6066)  ; Saturate(value)
  br label %6070

; <label>:6070                                    ; preds = %6047, %6032
  %6071 = phi float [ %6067, %6047 ], [ %6044, %6032 ]
  %6072 = phi float [ %6068, %6047 ], [ %6045, %6032 ]
  %6073 = phi float [ %6069, %6047 ], [ %6046, %6032 ]
  %6074 = call float @dx.op.binary.f32(i32 35, float %6072, float %6073)  ; FMax(a,b)
  %6075 = call float @dx.op.binary.f32(i32 35, float %6071, float %6074)  ; FMax(a,b)
  %6076 = fsub fast float 1.000000e+00, %6075
  %6077 = fmul fast float %6033, %5991
  %6078 = fmul fast float %6034, %5991
  %6079 = fmul fast float %6035, %5991
  %6080 = fsub fast float 1.000000e+00, %5958
  %6081 = bitcast float %6080 to i32
  %6082 = sitofp i32 %6081 to float
  %6083 = fmul fast float %6082, 5.000000e+00
  %6084 = fadd fast float %6083, 0xC1EFBF8940000000
  %6085 = fptosi float %6084 to i32
  %6086 = bitcast i32 %6085 to float
  %6087 = fmul fast float %6086, %4032
  %6088 = fmul fast float %6076, %6087
  %6089 = fmul fast float %6088, %5860
  %6090 = fmul fast float %6088, %5861
  %6091 = fmul fast float %6088, %5862
  %6092 = fadd fast float %6089, %6077
  %6093 = fadd fast float %6090, %6078
  %6094 = fadd fast float %6091, %6079
  %6095 = fmul fast float %5963, %5946
  %6096 = fmul fast float %6095, %6076
  %6097 = fmul fast float %5963, %5947
  %6098 = fmul fast float %6097, %6076
  %6099 = fmul fast float %5963, %5948
  %6100 = fmul fast float %6099, %6076
  %6101 = fmul fast float %6095, %6092
  %6102 = fmul fast float %6097, %6093
  %6103 = fmul fast float %6099, %6094
  %6104 = fadd fast float %6096, %5844
  %6105 = fmul fast float %6104, %4028
  %6106 = fadd fast float %6098, %5845
  %6107 = fmul fast float %6106, %4028
  %6108 = fadd fast float %6100, %5846
  %6109 = fmul fast float %6108, %4028
  %6110 = fadd fast float %6101, %5887
  %6111 = fmul fast float %6110, %4028
  %6112 = fadd fast float %6102, %5890
  %6113 = fmul fast float %6112, %4028
  %6114 = fadd fast float %6103, %5893
  %6115 = fmul fast float %6114, %4028
  br label %6116

; <label>:6116                                    ; preds = %6070, %5938, %5840
  %6117 = phi float [ %5888, %5840 ], [ %5888, %5938 ], [ %6111, %6070 ]
  %6118 = phi float [ %5891, %5840 ], [ %5891, %5938 ], [ %6113, %6070 ]
  %6119 = phi float [ %5894, %5840 ], [ %5894, %5938 ], [ %6115, %6070 ]
  %6120 = phi float [ %5883, %5840 ], [ %5883, %5938 ], [ %6105, %6070 ]
  %6121 = phi float [ %5884, %5840 ], [ %5884, %5938 ], [ %6107, %6070 ]
  %6122 = phi float [ %5885, %5840 ], [ %5885, %5938 ], [ %6109, %6070 ]
  %6123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6124 = extractvalue %dx.types.CBufRet.i32 %6123, 0
  %6125 = icmp eq i32 %6124, 0
  br i1 %6125, label %6556, label %6126

; <label>:6126                                    ; preds = %6116
  %6127 = fptoui float %85 to i32
  %6128 = fptoui float %86 to i32
  %6129 = lshr i32 %6127, 4
  %6130 = lshr i32 %6128, 4
  %6131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6132 = extractvalue %dx.types.CBufRet.i32 %6131, 0
  %6133 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6130, i32 %6132, i32 %6129)  ; UMad(a,b,c)
  %6134 = add nsw i32 %6124, -1
  %6135 = call i32 @dx.op.binary.i32(i32 37, i32 %6134, i32 0)  ; IMax(a,b)
  %6136 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6137 = fptoui float %6136 to i32
  %6138 = lshr i32 %6137, 5
  %6139 = call i32 @dx.op.binary.i32(i32 40, i32 %6138, i32 8191)  ; UMin(a,b)
  %6140 = shl i32 %6139, 2
  %6141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6140, i32 undef)  ; BufferLoad(srv,index,wot)
  %6142 = extractvalue %dx.types.ResRet.i32 %6141, 0
  %6143 = lshr i32 %6142, 16
  %6144 = and i32 %6142, 65535
  %6145 = lshr i32 %6142, 21
  %6146 = lshr i32 %6144, 5
  %6147 = call i32 @dx.op.binary.i32(i32 40, i32 %6146, i32 %6135)  ; UMin(a,b)
  %6148 = icmp ugt i32 %6145, %6147
  br i1 %6148, label %6556, label %6149

; <label>:6149                                    ; preds = %6126
  br label %6150

; <label>:6150                                    ; preds = %6546, %6149
  %6151 = phi i32 [ %6553, %6546 ], [ %6145, %6149 ]
  %6152 = phi float [ %6547, %6546 ], [ %6117, %6149 ]
  %6153 = phi float [ %6548, %6546 ], [ %6118, %6149 ]
  %6154 = phi float [ %6549, %6546 ], [ %6119, %6149 ]
  %6155 = phi float [ %6550, %6546 ], [ %6120, %6149 ]
  %6156 = phi float [ %6551, %6546 ], [ %6121, %6149 ]
  %6157 = phi float [ %6552, %6546 ], [ %6122, %6149 ]
  %6158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.i32 %6158, 0
  %6160 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6133, i32 %6159, i32 %6151)  ; UMad(a,b,c)
  %6161 = shl i32 %6160, 2
  %6162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6161, i32 undef)  ; BufferLoad(srv,index,wot)
  %6163 = extractvalue %dx.types.ResRet.i32 %6162, 0
  %6164 = shl i32 %6151, 5
  %6165 = sub nsw i32 %6143, %6164
  %6166 = call i32 @dx.op.binary.i32(i32 37, i32 %6165, i32 0)  ; IMax(a,b)
  %6167 = call i32 @dx.op.binary.i32(i32 38, i32 %6166, i32 31)  ; IMin(a,b)
  %6168 = sub nsw i32 1, %6143
  %6169 = add nsw i32 %6168, %6144
  %6170 = call i32 @dx.op.binary.i32(i32 37, i32 %6169, i32 0)  ; IMax(a,b)
  %6171 = call i32 @dx.op.binary.i32(i32 38, i32 %6170, i32 32)  ; IMin(a,b)
  %6172 = and i32 %6171, 31
  %6173 = shl i32 -1, %6172
  %6174 = xor i32 %6173, -1
  %6175 = and i32 %6167, 31
  %6176 = shl i32 %6174, %6175
  %6177 = icmp eq i32 %6171, 32
  %6178 = select i1 %6177, i32 -1, i32 %6176
  %6179 = and i32 %6178, %6163
  %6180 = icmp eq i32 %6179, 0
  br i1 %6180, label %6546, label %6181

; <label>:6181                                    ; preds = %6150
  br label %6182

; <label>:6182                                    ; preds = %6262, %6181
  %6183 = phi i32 [ %6194, %6262 ], [ %6179, %6181 ]
  %6184 = phi float [ %6263, %6262 ], [ %6152, %6181 ]
  %6185 = phi float [ %6264, %6262 ], [ %6153, %6181 ]
  %6186 = phi float [ %6265, %6262 ], [ %6154, %6181 ]
  %6187 = phi float [ %6266, %6262 ], [ %6155, %6181 ]
  %6188 = phi float [ %6267, %6262 ], [ %6156, %6181 ]
  %6189 = phi float [ %6268, %6262 ], [ %6157, %6181 ]
  %6190 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6183)  ; FirstbitLo(value)
  %6191 = add i32 %6190, %6164
  %6192 = and i32 %6190, 31
  %6193 = shl i32 1, %6192
  %6194 = xor i32 %6193, %6183
  %6195 = mul i32 %6191, 112
  %6196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6195, i32 undef)  ; BufferLoad(srv,index,wot)
  %6197 = extractvalue %dx.types.ResRet.f32 %6196, 0
  %6198 = extractvalue %dx.types.ResRet.f32 %6196, 1
  %6199 = extractvalue %dx.types.ResRet.f32 %6196, 2
  %6200 = or i32 %6195, 12
  %6201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = add i32 %6195, 44
  %6204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6203, i32 undef)  ; BufferLoad(srv,index,wot)
  %6205 = extractvalue %dx.types.ResRet.f32 %6204, 0
  %6206 = add i32 %6195, 48
  %6207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6206, i32 undef)  ; BufferLoad(srv,index,wot)
  %6208 = extractvalue %dx.types.ResRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.ResRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.ResRet.f32 %6207, 2
  %6211 = add i32 %6195, 80
  %6212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 1
  %6214 = extractvalue %dx.types.ResRet.f32 %6212, 2
  %6215 = call float @dx.op.dot3.f32(i32 55, float %6197, float %6198, float %6199, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6216 = select i1 %186, float %6213, float %6197
  %6217 = select i1 %186, float %6215, float %6198
  %6218 = select i1 %186, float %6214, float %6199
  %6219 = fsub fast float %6208, %144
  %6220 = fsub fast float %6209, %145
  %6221 = fsub fast float %6210, %146
  %6222 = call float @dx.op.dot3.f32(i32 55, float %6219, float %6220, float %6221, float %6219, float %6220, float %6221)  ; Dot3(ax,ay,az,bx,by,bz)
  %6223 = call float @dx.op.unary.f32(i32 24, float %6222)  ; Sqrt(value)
  %6224 = fdiv fast float 1.000000e+00, %6223
  %6225 = fmul fast float %6224, %6219
  %6226 = fmul fast float %6224, %6220
  %6227 = fmul fast float %6224, %6221
  %6228 = fadd fast float %6223, %6202
  %6229 = fdiv fast float 1.000000e+00, %6228
  %6230 = fmul float %6205, %6229
  %6231 = fmul float %6230, %6230
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6233 = and i32 %6193, %6179
  %6234 = icmp eq i32 %6233, 0
  br i1 %6234, label %6257, label %6235, !dx.controlflow.hints !91

; <label>:6235                                    ; preds = %6182
  %6236 = lshr i32 %6127, 5
  %6237 = lshr i32 %6128, 5
  %6238 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6236, i32 %6237, i32 %6191, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6239 = extractvalue %dx.types.ResRet.i32 %6238, 0
  %6240 = and i32 %6239, 3
  %6241 = icmp eq i32 %6240, 0
  %6242 = select i1 %6241, float 1.000000e+00, float 0.000000e+00
  %6243 = icmp eq i32 %6240, 3
  br i1 %6243, label %6244, label %6257

; <label>:6244                                    ; preds = %6235
  %6245 = lshr i32 %6239, 10
  %6246 = and i32 %6245, 8160
  %6247 = and i32 %6128, 31
  %6248 = or i32 %6246, %6247
  %6249 = lshr i32 %6239, 1
  %6250 = and i32 %6249, 16352
  %6251 = and i32 %6127, 31
  %6252 = or i32 %6250, %6251
  %6253 = lshr i32 %6239, 23
  %6254 = and i32 %6253, 255
  %6255 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6252, i32 %6248, i32 %6254, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6256 = extractvalue %dx.types.ResRet.f32 %6255, 0
  br label %6257

; <label>:6257                                    ; preds = %6244, %6235, %6182
  %6258 = phi float [ %6256, %6244 ], [ %6242, %6235 ], [ 0.000000e+00, %6182 ]
  %6259 = call float @dx.op.binary.f32(i32 36, float %6258, float %6258)  ; FMin(a,b)
  %6260 = call float @dx.op.binary.f32(i32 36, float %6258, float %6259)  ; FMin(a,b)
  %6261 = fcmp fast ogt float %6260, 0.000000e+00
  br i1 %6261, label %6270, label %6262, !dx.controlflow.hints !92

; <label>:6262                                    ; preds = %6502, %6257
  %6263 = phi float [ %6184, %6257 ], [ %6542, %6502 ]
  %6264 = phi float [ %6185, %6257 ], [ %6543, %6502 ]
  %6265 = phi float [ %6186, %6257 ], [ %6544, %6502 ]
  %6266 = phi float [ %6187, %6257 ], [ %6536, %6502 ]
  %6267 = phi float [ %6188, %6257 ], [ %6537, %6502 ]
  %6268 = phi float [ %6189, %6257 ], [ %6538, %6502 ]
  %6269 = icmp eq i32 %6183, %6193
  br i1 %6269, label %6545, label %6182

; <label>:6270                                    ; preds = %6257
  %6271 = fmul fast float %6258, %6216
  %6272 = fmul fast float %6258, %6217
  %6273 = fmul fast float %6258, %6218
  %6274 = fsub fast float %6210, %4432
  %6275 = fcmp fast ogt float %6274, 0.000000e+00
  %6276 = fsub fast float %146, %4432
  %6277 = fcmp fast ogt float %6276, 0.000000e+00
  %6278 = xor i1 %6277, %6275
  %6279 = fsub fast float %4432, %6210
  %6280 = fmul fast float %6279, 2.000000e+00
  %6281 = fadd fast float %6280, %6210
  %6282 = select i1 %6278, float %6210, float %6281
  %6283 = fsub fast float %6282, %146
  %6284 = call float @dx.op.dot3.f32(i32 55, float %6219, float %6220, float %6283, float %6219, float %6220, float %6283)  ; Dot3(ax,ay,az,bx,by,bz)
  %6285 = call float @dx.op.unary.f32(i32 25, float %6284)  ; Rsqrt(value)
  %6286 = fmul fast float %6285, %6219
  %6287 = fmul fast float %6285, %6220
  %6288 = fmul fast float %6285, %6283
  %6289 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6286, float %6287, float %6288)  ; Dot3(ax,ay,az,bx,by,bz)
  %6291 = fdiv fast float 1.000000e+00, %6290
  %6292 = fmul fast float %6291, %6289
  %6293 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6276, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6294 = fcmp fast ogt float %6293, 0.000000e+00
  %6295 = fcmp fast olt float %6293, 0.000000e+00
  %6296 = zext i1 %6294 to i32
  %6297 = zext i1 %6295 to i32
  %6298 = sub nsw i32 %6296, %6297
  %6299 = sitofp i32 %6298 to float
  %6300 = fsub fast float %6282, %4432
  %6301 = call float @dx.op.dot3.f32(i32 55, float %6219, float %6220, float %6300, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = fcmp fast ogt float %6301, 0.000000e+00
  %6303 = fcmp fast olt float %6301, 0.000000e+00
  %6304 = zext i1 %6302 to i32
  %6305 = zext i1 %6303 to i32
  %6306 = sub nsw i32 %6304, %6305
  %6307 = sitofp i32 %6306 to float
  %6308 = fcmp fast une float %6299, %6307
  br i1 %6308, label %6309, label %6319

; <label>:6309                                    ; preds = %6270
  %6310 = fmul fast float %6292, %6288
  %6311 = fmul fast float %6292, %6287
  %6312 = fmul fast float %6292, %6286
  %6313 = fmul fast float %6312, %6312
  %6314 = fmul fast float %6311, %6311
  %6315 = fadd fast float %6313, %6314
  %6316 = fmul fast float %6310, %6310
  %6317 = fadd fast float %6315, %6316
  %6318 = call float @dx.op.unary.f32(i32 24, float %6317)  ; Sqrt(value)
  br label %6331

; <label>:6319                                    ; preds = %6270
  %6320 = icmp slt i32 %6298, 0
  br i1 %6320, label %6321, label %6331

; <label>:6321                                    ; preds = %6319
  %6322 = fsub fast float %144, %6208
  %6323 = fsub fast float %145, %6209
  %6324 = fsub fast float %146, %6282
  %6325 = fmul fast float %6322, %6322
  %6326 = fmul fast float %6323, %6323
  %6327 = fadd fast float %6325, %6326
  %6328 = fmul fast float %6324, %6324
  %6329 = fadd fast float %6327, %6328
  %6330 = call float @dx.op.unary.f32(i32 24, float %6329)  ; Sqrt(value)
  br label %6331

; <label>:6331                                    ; preds = %6321, %6319, %6309
  %6332 = phi float [ %6318, %6309 ], [ %6330, %6321 ], [ 0.000000e+00, %6319 ]
  %6333 = and i1 %6277, %6275
  %6334 = fsub fast float -0.000000e+00, %6332
  %6335 = select i1 %6333, float -0.000000e+00, float %6334
  %6336 = fmul fast float %4433, 0x3FF7154760000000
  %6337 = fmul fast float %6336, %6335
  %6338 = fmul fast float %4434, 0x3FF7154760000000
  %6339 = fmul fast float %6338, %6335
  %6340 = fmul fast float %4435, 0x3FF7154760000000
  %6341 = fmul fast float %6340, %6335
  %6342 = call float @dx.op.unary.f32(i32 21, float %6337)  ; Exp(value)
  %6343 = call float @dx.op.unary.f32(i32 21, float %6339)  ; Exp(value)
  %6344 = call float @dx.op.unary.f32(i32 21, float %6341)  ; Exp(value)
  %6345 = call float @dx.op.unary.f32(i32 7, float %6342)  ; Saturate(value)
  %6346 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6347 = call float @dx.op.unary.f32(i32 7, float %6344)  ; Saturate(value)
  %6348 = fmul fast float %6271, %6345
  %6349 = fmul fast float %6272, %6346
  %6350 = fmul fast float %6273, %6347
  %6351 = fsub fast float %6225, %4632
  %6352 = fsub fast float %6226, %4631
  %6353 = fsub fast float %6227, %4630
  %6354 = call float @dx.op.dot3.f32(i32 55, float %6351, float %6352, float %6353, float %6351, float %6352, float %6353)  ; Dot3(ax,ay,az,bx,by,bz)
  %6355 = call float @dx.op.unary.f32(i32 25, float %6354)  ; Rsqrt(value)
  %6356 = fmul fast float %6355, %6351
  %6357 = fmul fast float %6355, %6352
  %6358 = fmul fast float %6355, %6353
  %6359 = call float @dx.op.dot3.f32(i32 55, float %6225, float %6226, float %6227, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = call float @dx.op.dot3.f32(i32 55, float %4629, float %4628, float %4627, float %6356, float %6357, float %6358)  ; Dot3(ax,ay,az,bx,by,bz)
  %6361 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6362 = fmul fast float %6361, %6232
  %6363 = fmul fast float %6361, %6361
  %6364 = fmul fast float %6363, %4686
  %6365 = call float @dx.op.unary.f32(i32 7, float %6364)  ; Saturate(value)
  %6366 = fmul fast float %6362, %6365
  %6367 = bitcast float %6222 to i32
  %6368 = ashr i32 %6367, 1
  %6369 = sub nsw i32 1597463007, %6368
  %6370 = bitcast i32 %6369 to float
  %6371 = fmul fast float %6370, %6219
  %6372 = fmul fast float %6370, %6220
  %6373 = fmul fast float %6370, %6221
  %6374 = fsub fast float %6371, %4632
  %6375 = fsub fast float %6372, %4631
  %6376 = fsub fast float %6373, %4630
  %6377 = call float @dx.op.dot3.f32(i32 55, float %6374, float %6375, float %6376, float %6374, float %6375, float %6376)  ; Dot3(ax,ay,az,bx,by,bz)
  %6378 = call float @dx.op.unary.f32(i32 25, float %6377)  ; Rsqrt(value)
  %6379 = fmul fast float %6374, %6378
  %6380 = fmul fast float %6375, %6378
  %6381 = fmul fast float %6376, %6378
  %6382 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4640, float %4641, float %6379, float %6380, float %6381)  ; Dot3(ax,ay,az,bx,by,bz)
  %6383 = fmul fast float %6382, %6382
  %6384 = call float @dx.op.unary.f32(i32 6, float %6359)  ; FAbs(value)
  %6385 = fsub fast float 1.000000e+00, %4679
  %6386 = fmul fast float %4661, %4661
  %6387 = fmul fast float %6386, %6385
  %6388 = fadd fast float %6387, %4679
  %6389 = bitcast float %6388 to i32
  %6390 = ashr i32 %6389, 1
  %6391 = add nsw i32 %6390, 532487669
  %6392 = bitcast i32 %6391 to float
  %6393 = fadd fast float %6392, %4661
  %6394 = fmul fast float %4679, %6383
  %6395 = fsub fast float 1.000000e+00, %6383
  %6396 = fadd fast float %6395, %6394
  %6397 = fmul fast float %6384, %6384
  %6398 = fmul fast float %6397, %6385
  %6399 = fadd fast float %6398, %4679
  %6400 = bitcast float %6399 to i32
  %6401 = ashr i32 %6400, 1
  %6402 = add nsw i32 %6401, 532487669
  %6403 = bitcast i32 %6402 to float
  %6404 = fadd fast float %6403, %6384
  %6405 = fmul fast float %6396, %6396
  %6406 = fmul fast float %6405, %6393
  %6407 = fmul fast float %6406, %6404
  %6408 = fdiv fast float 1.000000e+00, %6407
  %6409 = bitcast float %4679 to i32
  %6410 = sitofp i32 %6409 to float
  %6411 = fmul fast float %6410, 0x3FE7F73180000000
  %6412 = fadd fast float %6411, 0x41AFE27C40000000
  %6413 = fptosi float %6412 to i32
  %6414 = bitcast i32 %6413 to float
  %6415 = fmul fast float %6205, 0x3FD80E9D60000000
  %6416 = fmul fast float %6415, %6370
  %6417 = fadd fast float %6414, %6416
  %6418 = bitcast float %6417 to i32
  %6419 = sub nsw i32 2129859010, %6418
  %6420 = bitcast i32 %6419 to float
  %6421 = fmul fast float %4679, %6408
  %6422 = fmul fast float %6421, %6414
  %6423 = fmul fast float %6422, %6420
  %6424 = call float @dx.op.unary.f32(i32 6, float %6360)  ; FAbs(value)
  %6425 = fsub fast float 1.000000e+00, %6424
  %6426 = bitcast float %6425 to i32
  %6427 = sitofp i32 %6426 to float
  %6428 = fmul fast float %6427, 5.000000e+00
  %6429 = fadd fast float %6428, 0xC1EFBF8940000000
  %6430 = fptosi float %6429 to i32
  %6431 = bitcast i32 %6430 to float
  %6432 = fsub fast float 1.000000e+00, %4636
  %6433 = fsub fast float 1.000000e+00, %4637
  %6434 = fsub fast float 1.000000e+00, %4659
  %6435 = fmul fast float %6431, %6432
  %6436 = fmul fast float %6431, %6433
  %6437 = fmul fast float %6431, %6434
  %6438 = fadd fast float %6435, %4636
  %6439 = fadd fast float %6436, %4637
  %6440 = fadd fast float %6437, %4659
  br i1 %4934, label %6441, label %6464

; <label>:6441                                    ; preds = %6331
  %6442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4031, float %6424, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.ResRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.ResRet.f32 %6442, 2
  %6446 = fadd fast float %6443, -5.000000e-01
  %6447 = fadd fast float %6444, -5.000000e-01
  %6448 = fadd fast float %6445, -5.000000e-01
  %6449 = fmul fast float %4636, 4.000000e+00
  %6450 = fmul fast float %6449, %6432
  %6451 = fmul fast float %6450, %6446
  %6452 = fmul fast float %4637, 4.000000e+00
  %6453 = fmul fast float %6452, %6433
  %6454 = fmul fast float %6453, %6447
  %6455 = fmul fast float %4659, 4.000000e+00
  %6456 = fmul fast float %6455, %6434
  %6457 = fmul fast float %6456, %6448
  %6458 = fadd fast float %6451, %6438
  %6459 = fadd fast float %6454, %6439
  %6460 = fadd fast float %6457, %6440
  %6461 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6462 = call float @dx.op.unary.f32(i32 7, float %6459)  ; Saturate(value)
  %6463 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  br label %6464

; <label>:6464                                    ; preds = %6441, %6331
  %6465 = phi float [ %6461, %6441 ], [ %6438, %6331 ]
  %6466 = phi float [ %6462, %6441 ], [ %6439, %6331 ]
  %6467 = phi float [ %6463, %6441 ], [ %6440, %6331 ]
  %6468 = fmul fast float %6359, 9.843750e-01
  %6469 = fadd fast float %6468, 7.812500e-03
  %6470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6469, float %4924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6471 = extractvalue %dx.types.ResRet.f32 %6470, 2
  %6472 = extractvalue %dx.types.ResRet.f32 %6470, 3
  %6473 = fmul fast float %6471, %4636
  %6474 = fmul fast float %6471, %4637
  %6475 = fmul fast float %6471, %4659
  %6476 = fadd fast float %6473, %6472
  %6477 = fadd fast float %6474, %6472
  %6478 = fadd fast float %6475, %6472
  br i1 %4934, label %6479, label %6502

; <label>:6479                                    ; preds = %6464
  %6480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4031, float %6359, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6481 = extractvalue %dx.types.ResRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.ResRet.f32 %6480, 1
  %6483 = extractvalue %dx.types.ResRet.f32 %6480, 2
  %6484 = fadd fast float %6481, -5.000000e-01
  %6485 = fadd fast float %6482, -5.000000e-01
  %6486 = fadd fast float %6483, -5.000000e-01
  %6487 = fmul fast float %4636, 4.000000e+00
  %6488 = fmul fast float %6487, %6432
  %6489 = fmul fast float %6488, %6484
  %6490 = fmul fast float %4637, 4.000000e+00
  %6491 = fmul fast float %6490, %6433
  %6492 = fmul fast float %6491, %6485
  %6493 = fmul fast float %4659, 4.000000e+00
  %6494 = fmul fast float %6493, %6434
  %6495 = fmul fast float %6494, %6486
  %6496 = fadd fast float %6489, %6476
  %6497 = fadd fast float %6492, %6477
  %6498 = fadd fast float %6495, %6478
  %6499 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6500 = call float @dx.op.unary.f32(i32 7, float %6497)  ; Saturate(value)
  %6501 = call float @dx.op.unary.f32(i32 7, float %6498)  ; Saturate(value)
  br label %6502

; <label>:6502                                    ; preds = %6479, %6464
  %6503 = phi float [ %6499, %6479 ], [ %6476, %6464 ]
  %6504 = phi float [ %6500, %6479 ], [ %6477, %6464 ]
  %6505 = phi float [ %6501, %6479 ], [ %6478, %6464 ]
  %6506 = call float @dx.op.binary.f32(i32 35, float %6504, float %6505)  ; FMax(a,b)
  %6507 = call float @dx.op.binary.f32(i32 35, float %6503, float %6506)  ; FMax(a,b)
  %6508 = fsub fast float 1.000000e+00, %6507
  %6509 = fmul fast float %6465, %6423
  %6510 = fmul fast float %6466, %6423
  %6511 = fmul fast float %6467, %6423
  %6512 = fsub fast float 1.000000e+00, %6360
  %6513 = bitcast float %6512 to i32
  %6514 = sitofp i32 %6513 to float
  %6515 = fmul fast float %6514, 5.000000e+00
  %6516 = fadd fast float %6515, 0xC1EFBF8940000000
  %6517 = fptosi float %6516 to i32
  %6518 = bitcast i32 %6517 to float
  %6519 = fmul fast float %6518, %4032
  %6520 = fmul fast float %6508, %6519
  %6521 = fmul fast float %6520, %5860
  %6522 = fmul fast float %6520, %5861
  %6523 = fmul fast float %6520, %5862
  %6524 = fadd fast float %6521, %6509
  %6525 = fadd fast float %6522, %6510
  %6526 = fadd fast float %6523, %6511
  %6527 = fmul fast float %6348, %4028
  %6528 = fmul fast float %6527, %6366
  %6529 = fmul fast float %6528, %6508
  %6530 = fmul fast float %6349, %4028
  %6531 = fmul fast float %6530, %6366
  %6532 = fmul fast float %6531, %6508
  %6533 = fmul fast float %6350, %4028
  %6534 = fmul fast float %6533, %6366
  %6535 = fmul fast float %6534, %6508
  %6536 = fadd fast float %6529, %6187
  %6537 = fadd fast float %6532, %6188
  %6538 = fadd fast float %6535, %6189
  %6539 = fmul fast float %6528, %6524
  %6540 = fmul fast float %6531, %6525
  %6541 = fmul fast float %6534, %6526
  %6542 = fadd fast float %6539, %6184
  %6543 = fadd fast float %6540, %6185
  %6544 = fadd fast float %6541, %6186
  br label %6262

; <label>:6545                                    ; preds = %6262
  br label %6546

; <label>:6546                                    ; preds = %6545, %6150
  %6547 = phi float [ %6152, %6150 ], [ %6263, %6545 ]
  %6548 = phi float [ %6153, %6150 ], [ %6264, %6545 ]
  %6549 = phi float [ %6154, %6150 ], [ %6265, %6545 ]
  %6550 = phi float [ %6155, %6150 ], [ %6266, %6545 ]
  %6551 = phi float [ %6156, %6150 ], [ %6267, %6545 ]
  %6552 = phi float [ %6157, %6150 ], [ %6268, %6545 ]
  %6553 = add i32 %6151, 1
  %6554 = icmp ugt i32 %6553, %6147
  br i1 %6554, label %6555, label %6150

; <label>:6555                                    ; preds = %6546
  br label %6556

; <label>:6556                                    ; preds = %6555, %6126, %6116
  %6557 = phi float [ %6117, %6116 ], [ %6117, %6126 ], [ %6547, %6555 ]
  %6558 = phi float [ %6118, %6116 ], [ %6118, %6126 ], [ %6548, %6555 ]
  %6559 = phi float [ %6119, %6116 ], [ %6119, %6126 ], [ %6549, %6555 ]
  %6560 = phi float [ %6120, %6116 ], [ %6120, %6126 ], [ %6550, %6555 ]
  %6561 = phi float [ %6121, %6116 ], [ %6121, %6126 ], [ %6551, %6555 ]
  %6562 = phi float [ %6122, %6116 ], [ %6122, %6126 ], [ %6552, %6555 ]
  %6563 = call float @dx.op.unary.f32(i32 24, float %4633)  ; Sqrt(value)
  %6564 = call float @dx.op.unary.f32(i32 24, float %4634)  ; Sqrt(value)
  %6565 = call float @dx.op.unary.f32(i32 24, float %4635)  ; Sqrt(value)
  %6566 = fmul fast float %6563, %6560
  %6567 = fmul fast float %6564, %6561
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  br i1 %186, label %6570, label %6593

; <label>:6570                                    ; preds = %6556
  %6571 = fadd fast float %6562, %4034
  %6572 = fmul fast float %6571, %4035
  %6573 = fsub fast float 1.000000e+00, %4035
  %6574 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6576 = extractvalue %dx.types.CBufRet.f32 %6575, 3
  %6577 = fmul fast float %6576, %6574
  %6578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6579 = extractvalue %dx.types.CBufRet.f32 %6578, 0
  %6580 = fmul fast float %6579, %5866
  %6581 = extractvalue %dx.types.CBufRet.f32 %6578, 2
  %6582 = fmul fast float %6581, %4657
  %6583 = fadd fast float %6567, %6566
  %6584 = fmul fast float %6569, %6583
  %6585 = extractvalue %dx.types.CBufRet.f32 %6575, 1
  %6586 = fadd fast float %6577, %6572
  %6587 = fsub fast float %6586, %6580
  %6588 = fadd fast float %6587, %6582
  %6589 = fsub fast float %6588, %6585
  %6590 = extractvalue %dx.types.CBufRet.f32 %6575, 2
  %6591 = fmul fast float %6589, %6590
  %6592 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  br label %6609

; <label>:6593                                    ; preds = %6556
  %6594 = fmul fast float %6565, %6562
  %6595 = fmul fast float %6569, %6566
  %6596 = fmul fast float %6569, %6567
  %6597 = fmul fast float %6594, %6569
  %6598 = add i32 %45, 356
  %6599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6598, i32 undef)  ; BufferLoad(srv,index,wot)
  %6600 = extractvalue %dx.types.ResRet.i32 %6599, 0
  %6601 = and i32 %6600, 32
  %6602 = icmp eq i32 %6601, 0
  br i1 %6602, label %6609, label %6603

; <label>:6603                                    ; preds = %6593
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  %6606 = fmul fast float %6605, 0x3FE99999A0000000
  %6607 = fadd fast float %6605, %6595
  %6608 = fadd fast float %6606, %6597
  br label %6609

; <label>:6609                                    ; preds = %6603, %6593, %6570
  %6610 = phi float [ %6584, %6570 ], [ %6607, %6603 ], [ %6595, %6593 ]
  %6611 = phi float [ %6592, %6570 ], [ %6596, %6603 ], [ %6596, %6593 ]
  %6612 = phi float [ 1.000000e+00, %6570 ], [ %6608, %6603 ], [ %6597, %6593 ]
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6615 = fmul fast float %6614, %6558
  %6616 = fmul fast float %6614, %6559
  %6617 = fadd fast float %6558, %6557
  %6618 = select i1 %186, float %6617, float %6557
  %6619 = fmul float %6618, %6614
  %6620 = select i1 %186, float 0.000000e+00, float %6615
  %6621 = select i1 %186, float 0.000000e+00, float %6616
  %6622 = fmul fast float %6610, %6563
  %6623 = fmul fast float %6611, %6564
  %6624 = fmul fast float %6612, %6565
  %6625 = fadd fast float %6619, %6622
  %6626 = fadd fast float %6620, %6623
  %6627 = fadd fast float %6621, %6624
  %6628 = select i1 %186, float %6611, float %6626
  %6629 = select i1 %186, float %6612, float %6627
  %6630 = call float @dx.op.binary.f32(i32 36, float %6625, float 3.225500e+04)  ; FMin(a,b)
  %6631 = call float @dx.op.binary.f32(i32 36, float %6628, float 3.225500e+04)  ; FMin(a,b)
  %6632 = call float @dx.op.binary.f32(i32 36, float %6629, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6630)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6631)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6632)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

