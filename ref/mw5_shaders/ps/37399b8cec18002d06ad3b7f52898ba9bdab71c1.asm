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
; shader hash: 866066b1f13dd2d224e33909e09042a4
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
  %383 = add i32 %45, 552
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
  %541 = add i32 %45, 440
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
  %564 = add i32 %45, 520
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
  %762 = add i32 %45, 456
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
  %846 = add i32 %45, 472
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
  %1138 = add i32 %45, 508
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
  %1190 = add i32 %45, 492
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
  %1216 = add i32 %45, 444
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
  %1239 = add i32 %45, 524
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
  %1437 = add i32 %45, 460
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
  %1521 = add i32 %45, 476
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
  %1992 = add i32 %45, 512
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
  %2044 = add i32 %45, 496
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
  %2070 = add i32 %45, 448
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
  %2093 = add i32 %45, 528
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
  %2291 = add i32 %45, 464
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
  %2375 = add i32 %45, 480
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
  %2846 = add i32 %45, 516
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
  %2898 = add i32 %45, 500
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
  %2924 = add i32 %45, 452
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
  %2947 = add i32 %45, 532
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
  %3145 = add i32 %45, 468
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
  %3229 = add i32 %45, 484
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
  br i1 %3502, label %3503, label %4011

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
  br i1 %3554, label %3980, label %3555

; <label>:3555                                    ; preds = %3503
  %3556 = and i32 %3551, 1023
  br label %3557

; <label>:3557                                    ; preds = %3683, %3555
  %3558 = phi i32 [ %3633, %3683 ], [ 0, %3555 ]
  %3559 = phi float [ %3684, %3683 ], [ 0.000000e+00, %3555 ]
  %3560 = phi float [ %3685, %3683 ], [ %3472, %3555 ]
  %3561 = phi float [ %3686, %3683 ], [ %3470, %3555 ]
  %3562 = phi float [ %3687, %3683 ], [ 0.000000e+00, %3555 ]
  %3563 = phi float [ %3688, %3683 ], [ 0.000000e+00, %3555 ]
  %3564 = phi float [ %3689, %3683 ], [ %3464, %3555 ]
  %3565 = phi float [ %3690, %3683 ], [ %3465, %3555 ]
  %3566 = phi float [ %3691, %3683 ], [ %3466, %3555 ]
  %3567 = phi float [ %3692, %3683 ], [ %3498, %3555 ]
  %3568 = phi float [ %3693, %3683 ], [ %3499, %3555 ]
  %3569 = phi float [ %3694, %3683 ], [ %3500, %3555 ]
  %3570 = phi float [ %3695, %3683 ], [ %3469, %3555 ]
  %3571 = phi float [ %3696, %3683 ], [ %3468, %3555 ]
  %3572 = phi float [ %3697, %3683 ], [ 0.000000e+00, %3555 ]
  %3573 = phi float [ %3698, %3683 ], [ %3467, %3555 ]
  %3574 = phi float [ %3699, %3683 ], [ %3461, %3555 ]
  %3575 = phi float [ %3700, %3683 ], [ %3462, %3555 ]
  %3576 = phi float [ %3701, %3683 ], [ %3463, %3555 ]
  %3577 = add nuw nsw i32 %3558, %3553
  %3578 = shl i32 %3577, 2
  %3579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3578, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.i32 %3579, 0
  %3581 = shl i32 %3580, 8
  %3582 = or i32 %3581, 48
  %3583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = extractvalue %dx.types.ResRet.f32 %3583, 3
  %3588 = or i32 %3581, 64
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = extractvalue %dx.types.ResRet.i32 %3589, 1
  %3592 = or i32 %3581, 80
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3596 = or i32 %3581, 96
  %3597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3600 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3601 = extractvalue %dx.types.ResRet.f32 %3597, 3
  %3602 = or i32 %3581, 112
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3605 = or i32 %3581, 128
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = or i32 %3581, 144
  %3612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = extractvalue %dx.types.ResRet.f32 %3612, 1
  %3615 = extractvalue %dx.types.ResRet.f32 %3612, 2
  %3616 = extractvalue %dx.types.ResRet.f32 %3612, 3
  %3617 = or i32 %3581, 160
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = extractvalue %dx.types.ResRet.f32 %3618, 2
  %3622 = extractvalue %dx.types.ResRet.f32 %3618, 3
  %3623 = or i32 %3581, 192
  %3624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3623, i32 undef)  ; BufferLoad(srv,index,wot)
  %3625 = extractvalue %dx.types.ResRet.i32 %3624, 0
  %3626 = or i32 %3581, 208
  %3627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.f32 %3627, 0
  %3629 = or i32 %3581, 248
  %3630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3629, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = add nuw nsw i32 %3558, 1
  %3634 = bitcast float %3587 to i32
  %3635 = and i32 %3634, 512
  %3636 = icmp eq i32 %3635, 0
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3637, 2
  %3641 = extractvalue %dx.types.ResRet.f32 %3637, 3
  %3642 = call float @dx.op.dot4.f32(i32 56, float %3638, float %3639, float %3640, float %3641, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3643 = or i32 %3581, 16
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3650 = or i32 %3581, 32
  %3651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.ResRet.f32 %3651, 1
  %3654 = extractvalue %dx.types.ResRet.f32 %3651, 2
  %3655 = extractvalue %dx.types.ResRet.f32 %3651, 3
  %3656 = call float @dx.op.dot4.f32(i32 56, float %3652, float %3653, float %3654, float %3655, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3657 = call float @dx.op.unary.f32(i32 27, float %3642)  ; Round_ni(value)
  %3658 = call float @dx.op.unary.f32(i32 6, float %3657)  ; FAbs(value)
  %3659 = call float @dx.op.unary.f32(i32 27, float %3649)  ; Round_ni(value)
  %3660 = call float @dx.op.unary.f32(i32 6, float %3659)  ; FAbs(value)
  %3661 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3662 = call float @dx.op.unary.f32(i32 27, float %3661)  ; Round_ni(value)
  %3663 = fadd fast float %3660, %3658
  %3664 = fadd fast float %3663, %3662
  %3665 = fcmp fast oeq float %3664, 0.000000e+00
  %3666 = call float @dx.op.dot4.f32(i32 56, float %3638, float %3639, float %3640, float %3641, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3667 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %3510, float %3511, float %3512, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3668 = call float @dx.op.dot4.f32(i32 56, float %3638, float %3639, float %3640, float %3641, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3669 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3670 = fsub fast float %3666, %3642
  %3671 = fsub fast float %3668, %3642
  %3672 = fsub fast float %3667, %3649
  %3673 = fsub fast float %3669, %3649
  %3674 = call float @dx.op.dot3.f32(i32 55, float %3584, float %3585, float %3586, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3675, 2
  %3677 = fadd fast float %3676, %3674
  %3678 = call float @dx.op.unary.f32(i32 7, float %3677)  ; Saturate(value)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3675, 0
  %3680 = fcmp fast ogt float %3678, %3679
  %3681 = and i1 %3665, %3680
  %3682 = and i1 %3636, %3681
  br i1 %3682, label %3703, label %3683

; <label>:3683                                    ; preds = %3966, %3784, %3703, %3557
  %3684 = phi float [ %3559, %3703 ], [ %3787, %3784 ], [ %3787, %3966 ], [ %3559, %3557 ]
  %3685 = phi float [ %3560, %3703 ], [ %3560, %3784 ], [ %3941, %3966 ], [ %3560, %3557 ]
  %3686 = phi float [ %3561, %3703 ], [ %3561, %3784 ], [ %3939, %3966 ], [ %3561, %3557 ]
  %3687 = phi float [ %3562, %3703 ], [ %3562, %3784 ], [ %3911, %3966 ], [ %3562, %3557 ]
  %3688 = phi float [ %3563, %3703 ], [ %3563, %3784 ], [ %3909, %3966 ], [ %3563, %3557 ]
  %3689 = phi float [ %3564, %3703 ], [ %3564, %3784 ], [ %3976, %3966 ], [ %3564, %3557 ]
  %3690 = phi float [ %3565, %3703 ], [ %3565, %3784 ], [ %3977, %3966 ], [ %3565, %3557 ]
  %3691 = phi float [ %3566, %3703 ], [ %3566, %3784 ], [ %3978, %3966 ], [ %3566, %3557 ]
  %3692 = phi float [ %3567, %3703 ], [ %3567, %3784 ], [ %3890, %3966 ], [ %3567, %3557 ]
  %3693 = phi float [ %3568, %3703 ], [ %3568, %3784 ], [ %3891, %3966 ], [ %3568, %3557 ]
  %3694 = phi float [ %3569, %3703 ], [ %3569, %3784 ], [ %3892, %3966 ], [ %3569, %3557 ]
  %3695 = phi float [ %3570, %3703 ], [ %3570, %3784 ], [ %3919, %3966 ], [ %3570, %3557 ]
  %3696 = phi float [ %3571, %3703 ], [ %3571, %3784 ], [ %3916, %3966 ], [ %3571, %3557 ]
  %3697 = phi float [ %3572, %3703 ], [ %3572, %3784 ], [ %3913, %3966 ], [ %3572, %3557 ]
  %3698 = phi float [ %3573, %3703 ], [ %3573, %3784 ], [ %3907, %3966 ], [ %3573, %3557 ]
  %3699 = phi float [ %3574, %3703 ], [ %3574, %3784 ], [ %3902, %3966 ], [ %3574, %3557 ]
  %3700 = phi float [ %3575, %3703 ], [ %3575, %3784 ], [ %3903, %3966 ], [ %3575, %3557 ]
  %3701 = phi float [ %3576, %3703 ], [ %3576, %3784 ], [ %3904, %3966 ], [ %3576, %3557 ]
  %3702 = icmp eq i32 %3633, %3556
  br i1 %3702, label %3979, label %3557

; <label>:3703                                    ; preds = %3557
  %3704 = extractvalue %dx.types.ResRet.f32 %3603, 3
  %3705 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3706 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3707 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3708 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3709 = extractvalue %dx.types.ResRet.i32 %3589, 3
  %3710 = extractvalue %dx.types.ResRet.i32 %3589, 2
  %3711 = add i32 %3709, 0
  %3712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3711, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3713 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3714 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3712, %dx.types.Handle %3713, float %3642, float %3649, float undef, float undef, i32 0, i32 0, i32 undef, float %3670, float %3672, float undef, float %3671, float %3673, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3715 = extractvalue %dx.types.ResRet.f32 %3714, 0
  %3716 = fmul fast float %3715, %3708
  %3717 = fadd fast float %3716, %3707
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = fmul fast float %3642, %3598
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3599, float %3649, float %3719)  ; FMad(a,b,c)
  %3721 = fadd fast float %3720, %3706
  %3722 = fmul fast float %3642, %3600
  %3723 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3649, float %3722)  ; FMad(a,b,c)
  %3724 = fadd fast float %3723, %3705
  %3725 = fmul fast float %3670, %3598
  %3726 = call float @dx.op.tertiary.f32(i32 46, float %3599, float %3672, float %3725)  ; FMad(a,b,c)
  %3727 = fmul fast float %3670, %3600
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3672, float %3727)  ; FMad(a,b,c)
  %3729 = fmul fast float %3671, %3598
  %3730 = call float @dx.op.tertiary.f32(i32 46, float %3599, float %3673, float %3729)  ; FMad(a,b,c)
  %3731 = fmul fast float %3671, %3600
  %3732 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3673, float %3731)  ; FMad(a,b,c)
  %3733 = add i32 %3710, 0
  %3734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3733, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3735 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3734, %dx.types.Handle %3713, float %3721, float %3724, float undef, float undef, i32 0, i32 0, i32 undef, float %3726, float %3728, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = and i32 %3634, 1024
  %3738 = icmp ne i32 %3737, 0
  %3739 = fcmp fast ogt float %3736, 0x3FE0101020000000
  %3740 = uitofp i1 %3739 to float
  %3741 = select i1 %3738, float %3740, float %3736
  %3742 = and i32 %3634, 8192
  %3743 = icmp ne i32 %3742, 0
  %3744 = select i1 %3743, float %3704, float 1.000000e+00
  %3745 = fmul fast float %3642, 2.000000e+00
  %3746 = fadd fast float %3745, -1.000000e+00
  %3747 = call float @dx.op.unary.f32(i32 6, float %3746)  ; FAbs(value)
  %3748 = fmul fast float %3747, %3631
  %3749 = fsub fast float %3748, %3631
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3751 = fmul fast float %3649, 2.000000e+00
  %3752 = fadd fast float %3751, -1.000000e+00
  %3753 = call float @dx.op.unary.f32(i32 6, float %3752)  ; FAbs(value)
  %3754 = fmul fast float %3753, %3632
  %3755 = fsub fast float %3754, %3632
  %3756 = call float @dx.op.unary.f32(i32 7, float %3755)  ; Saturate(value)
  %3757 = fmul fast float %3661, %3594
  %3758 = fsub fast float %3757, %3594
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3718, %3744
  %3761 = fmul fast float %3760, %3715
  %3762 = fmul fast float %3761, %3750
  %3763 = fmul fast float %3762, %3741
  %3764 = fmul fast float %3763, %3756
  %3765 = fmul fast float %3764, %3759
  %3766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.f32 %3766, 1
  %3768 = extractvalue %dx.types.CBufRet.f32 %3766, 0
  %3769 = fsub fast float %3678, %3768
  %3770 = fmul fast float %3769, %3767
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = fmul fast float %3765, %3595
  %3773 = fadd fast float %3765, %3595
  %3774 = fmul fast float %3773, %3604
  %3775 = fsub fast float %3774, %3604
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = and i32 %3634, 128
  %3778 = icmp ne i32 %3777, 0
  %3779 = select i1 %3778, float %3776, float %3772
  %3780 = fmul fast float %3779, %3771
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 0
  %3783 = fcmp fast ugt float %3780, %3782
  br i1 %3783, label %3784, label %3683

; <label>:3784                                    ; preds = %3703
  %3785 = select i1 %3743, float %3780, float 0.000000e+00
  %3786 = fadd fast float %3785, %3559
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  br i1 %3743, label %3683, label %3788

; <label>:3788                                    ; preds = %3784
  %3789 = and i32 %3634, 4
  %3790 = and i32 %3634, 8
  %3791 = add i32 %3590, 0
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3791, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3794 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3792, %dx.types.Handle %3793, float %3721, float %3724, float undef, float undef, i32 0, i32 0, i32 undef, float %3726, float %3728, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3795 = extractvalue %dx.types.ResRet.f32 %3794, 0
  %3796 = extractvalue %dx.types.ResRet.f32 %3794, 1
  %3797 = extractvalue %dx.types.ResRet.f32 %3794, 2
  %3798 = extractvalue %dx.types.ResRet.f32 %3794, 3
  %3799 = bitcast float %3616 to i32
  %3800 = and i32 %3799, 255
  %3801 = uitofp i32 %3800 to float
  %3802 = lshr i32 %3799, 8
  %3803 = and i32 %3802, 255
  %3804 = uitofp i32 %3803 to float
  %3805 = fmul fast float %3798, %3801
  %3806 = fadd fast float %3805, %3804
  %3807 = fmul fast float %3806, 0x3F70101000000000
  %3808 = add i32 %3591, 0
  %3809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3808, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3809, %dx.types.Handle %3793, float %3721, float %3724, float undef, float undef, i32 0, i32 0, i32 undef, float %3726, float %3728, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = bitcast float %3610 to i32
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = lshr i32 %3815, 8
  %3819 = and i32 %3818, 255
  %3820 = uitofp i32 %3819 to float
  %3821 = lshr i32 %3815, 16
  %3822 = and i32 %3821, 255
  %3823 = uitofp i32 %3822 to float
  %3824 = fmul fast float %3823, 0x3F70101000000000
  %3825 = fmul fast float %3811, %3817
  %3826 = fadd fast float %3825, %3820
  %3827 = fmul fast float %3826, 0x3F70101000000000
  %3828 = fadd fast float %3812, -5.000000e-01
  %3829 = fadd fast float %3814, -5.000000e-01
  %3830 = fmul fast float %3828, %3824
  %3831 = fmul fast float %3829, %3824
  %3832 = fadd fast float %3830, 5.000000e-01
  %3833 = fadd fast float %3831, 5.000000e-01
  %3834 = fmul fast float %3795, %3619
  %3835 = fmul fast float %3796, %3620
  %3836 = fmul fast float %3797, %3621
  %3837 = fmul fast float %3832, 2.000000e+00
  %3838 = fadd fast float %3837, -1.000000e+00
  %3839 = fmul fast float %3833, 2.000000e+00
  %3840 = fadd fast float %3839, -1.000000e+00
  %3841 = fadd fast float %3838, %3840
  %3842 = fmul fast float %3841, 5.000000e-01
  %3843 = fsub fast float %3838, %3840
  %3844 = fmul fast float %3843, 5.000000e-01
  %3845 = call float @dx.op.unary.f32(i32 6, float %3842)  ; FAbs(value)
  %3846 = fsub fast float 1.000000e+00, %3845
  %3847 = call float @dx.op.unary.f32(i32 6, float %3844)  ; FAbs(value)
  %3848 = fsub fast float %3846, %3847
  %3849 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3844, float %3848, float %3842, float %3844, float %3848)  ; Dot3(ax,ay,az,bx,by,bz)
  %3850 = call float @dx.op.unary.f32(i32 25, float %3849)  ; Rsqrt(value)
  %3851 = fmul fast float %3842, %3850
  %3852 = fmul fast float %3844, %3850
  %3853 = fmul fast float %3850, %3848
  %3854 = fmul fast float %3853, %3584
  %3855 = fmul fast float %3853, %3585
  %3856 = fmul fast float %3853, %3586
  %3857 = fmul fast float %3851, %3607
  %3858 = fmul fast float %3851, %3608
  %3859 = fmul fast float %3851, %3609
  %3860 = fadd fast float %3857, %3854
  %3861 = fadd fast float %3858, %3855
  %3862 = fadd fast float %3859, %3856
  %3863 = fmul fast float %3852, %3613
  %3864 = fmul fast float %3852, %3614
  %3865 = fmul fast float %3852, %3615
  %3866 = fadd fast float %3860, %3863
  %3867 = fadd fast float %3861, %3864
  %3868 = fadd fast float %3862, %3865
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3866, float %3867, float %3868, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = call float @dx.op.unary.f32(i32 25, float %3869)  ; Rsqrt(value)
  %3871 = fmul fast float %3866, %3870
  %3872 = fmul fast float %3867, %3870
  %3873 = fmul fast float %3868, %3870
  %3874 = icmp ne i32 %3790, 0
  %3875 = select i1 %3874, float 1.000000e+00, float 0.000000e+00
  %3876 = fmul fast float %3780, %3875
  %3877 = and i32 %3634, 1
  %3878 = icmp eq i32 %3877, 0
  br i1 %3878, label %3879, label %3883

; <label>:3879                                    ; preds = %3788
  %3880 = fsub fast float %3871, %3567
  %3881 = fsub fast float %3872, %3568
  %3882 = fsub fast float %3873, %3569
  br label %3883

; <label>:3883                                    ; preds = %3879, %3788
  %3884 = phi float [ %3880, %3879 ], [ %3871, %3788 ]
  %3885 = phi float [ %3881, %3879 ], [ %3872, %3788 ]
  %3886 = phi float [ %3882, %3879 ], [ %3873, %3788 ]
  %3887 = fmul float %3886, %3876
  %3888 = fmul float %3885, %3876
  %3889 = fmul float %3884, %3876
  %3890 = fadd fast float %3889, %3567
  %3891 = fadd fast float %3888, %3568
  %3892 = fadd fast float %3887, %3569
  %3893 = icmp ne i32 %3789, 0
  %3894 = select i1 %3893, float 1.000000e+00, float 0.000000e+00
  %3895 = fmul fast float %3780, %3894
  %3896 = fsub fast float %3834, %3574
  %3897 = fsub fast float %3835, %3575
  %3898 = fsub fast float %3836, %3576
  %3899 = fmul fast float %3896, %3895
  %3900 = fmul fast float %3897, %3895
  %3901 = fmul fast float %3898, %3895
  %3902 = fadd fast float %3899, %3574
  %3903 = fadd fast float %3900, %3575
  %3904 = fadd fast float %3901, %3576
  %3905 = fsub fast float %3807, %3573
  %3906 = fmul fast float %3905, %3895
  %3907 = fadd fast float %3906, %3573
  %3908 = fmul fast float %3895, %3563
  %3909 = fsub fast float %3563, %3908
  %3910 = fmul fast float %3895, %3562
  %3911 = fsub fast float %3562, %3910
  %3912 = fadd fast float %3780, %3572
  %3913 = call float @dx.op.unary.f32(i32 7, float %3912)  ; Saturate(value)
  %3914 = fsub fast float %3827, %3571
  %3915 = fmul fast float %3914, %3876
  %3916 = fadd fast float %3915, %3571
  %3917 = fsub fast float %3813, %3570
  %3918 = fmul fast float %3917, %3876
  %3919 = fadd fast float %3918, %3570
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3834, float %3835, float %3836, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3924 = fmul fast float %3923, %3920
  %3925 = fadd fast float %3924, %3922
  %3926 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3927 = bitcast float %3622 to i32
  %3928 = and i32 %3927, 65535
  %3929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3928)  ; LegacyF16ToF32(value)
  %3930 = lshr i32 %3927, 16
  %3931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3930)  ; LegacyF16ToF32(value)
  %3932 = fcmp fast oge float %3929, 0.000000e+00
  %3933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3934 = extractvalue %dx.types.CBufRet.f32 %3933, 0
  %3935 = select i1 %3932, float %3929, float %3934
  %3936 = fadd fast float %3935, %3931
  %3937 = fsub fast float %3926, %3561
  %3938 = fmul fast float %3937, %3780
  %3939 = fadd fast float %3938, %3561
  %3940 = fmul fast float %3936, %3780
  %3941 = call float @dx.op.binary.f32(i32 35, float %3560, float %3940)  ; FMax(a,b)
  %3942 = and i32 %3634, 16
  %3943 = icmp eq i32 %3942, 0
  br i1 %3943, label %3966, label %3944

; <label>:3944                                    ; preds = %3883
  %3945 = bitcast float %3628 to i32
  %3946 = add i32 %3625, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3947, %dx.types.Handle %3793, float %3721, float %3724, float undef, float undef, i32 0, i32 0, i32 undef, float %3726, float %3728, float undef, float %3730, float %3732, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.ResRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.ResRet.f32 %3948, 2
  %3952 = and i32 %3945, 65535
  %3953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3952)  ; LegacyF16ToF32(value)
  %3954 = fmul fast float %3949, %3619
  %3955 = fmul fast float %3950, %3620
  %3956 = fmul fast float %3951, %3621
  %3957 = and i32 %3634, 16384
  %3958 = icmp ne i32 %3957, 0
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3961 = select i1 %3958, float %3960, float 1.000000e+00
  %3962 = fmul fast float %3961, %3953
  %3963 = fmul fast float %3954, %3962
  %3964 = fmul fast float %3955, %3962
  %3965 = fmul fast float %3956, %3962
  br label %3966

; <label>:3966                                    ; preds = %3944, %3883
  %3967 = phi float [ %3963, %3944 ], [ 0.000000e+00, %3883 ]
  %3968 = phi float [ %3964, %3944 ], [ 0.000000e+00, %3883 ]
  %3969 = phi float [ %3965, %3944 ], [ 0.000000e+00, %3883 ]
  %3970 = fsub fast float %3967, %3564
  %3971 = fsub fast float %3968, %3565
  %3972 = fsub fast float %3969, %3566
  %3973 = fmul fast float %3970, %3780
  %3974 = fmul fast float %3971, %3780
  %3975 = fmul fast float %3972, %3780
  %3976 = fadd fast float %3973, %3564
  %3977 = fadd fast float %3974, %3565
  %3978 = fadd fast float %3975, %3566
  br label %3683

; <label>:3979                                    ; preds = %3683
  br label %3980

; <label>:3980                                    ; preds = %3979, %3503
  %3981 = phi float [ 0.000000e+00, %3503 ], [ %3684, %3979 ]
  %3982 = phi float [ %3472, %3503 ], [ %3685, %3979 ]
  %3983 = phi float [ %3470, %3503 ], [ %3686, %3979 ]
  %3984 = phi float [ 0.000000e+00, %3503 ], [ %3687, %3979 ]
  %3985 = phi float [ 0.000000e+00, %3503 ], [ %3688, %3979 ]
  %3986 = phi float [ %3464, %3503 ], [ %3689, %3979 ]
  %3987 = phi float [ %3465, %3503 ], [ %3690, %3979 ]
  %3988 = phi float [ %3466, %3503 ], [ %3691, %3979 ]
  %3989 = phi float [ %3498, %3503 ], [ %3692, %3979 ]
  %3990 = phi float [ %3499, %3503 ], [ %3693, %3979 ]
  %3991 = phi float [ %3500, %3503 ], [ %3694, %3979 ]
  %3992 = phi float [ %3469, %3503 ], [ %3695, %3979 ]
  %3993 = phi float [ %3468, %3503 ], [ %3696, %3979 ]
  %3994 = phi float [ 0.000000e+00, %3503 ], [ %3697, %3979 ]
  %3995 = phi float [ %3467, %3503 ], [ %3698, %3979 ]
  %3996 = phi float [ %3461, %3503 ], [ %3699, %3979 ]
  %3997 = phi float [ %3462, %3503 ], [ %3700, %3979 ]
  %3998 = phi float [ %3463, %3503 ], [ %3701, %3979 ]
  %3999 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float %3989, float %3990, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %4000 = call float @dx.op.unary.f32(i32 25, float %3999)  ; Rsqrt(value)
  %4001 = fmul fast float %4000, %3989
  %4002 = fmul fast float %4000, %3990
  %4003 = fmul fast float %4000, %3991
  %4004 = fadd fast float %3994, %905
  %4005 = call float @dx.op.unary.f32(i32 7, float %4004)  ; Saturate(value)
  %4006 = call float @dx.op.dot3.f32(i32 55, float %4001, float %4002, float %4003, float %4001, float %4002, float %4003)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = call float @dx.op.unary.f32(i32 25, float %4006)  ; Rsqrt(value)
  %4008 = fmul fast float %4007, %4001
  %4009 = fmul fast float %4007, %4002
  %4010 = fmul fast float %4007, %4003
  br label %4011

; <label>:4011                                    ; preds = %3980, %3458
  %4012 = phi float [ %4008, %3980 ], [ %3498, %3458 ]
  %4013 = phi float [ %4009, %3980 ], [ %3499, %3458 ]
  %4014 = phi float [ %4010, %3980 ], [ %3500, %3458 ]
  %4015 = phi float [ %3996, %3980 ], [ %3461, %3458 ]
  %4016 = phi float [ %3997, %3980 ], [ %3462, %3458 ]
  %4017 = phi float [ %3998, %3980 ], [ %3463, %3458 ]
  %4018 = phi float [ %3986, %3980 ], [ %3464, %3458 ]
  %4019 = phi float [ %3987, %3980 ], [ %3465, %3458 ]
  %4020 = phi float [ %3988, %3980 ], [ %3466, %3458 ]
  %4021 = phi float [ %3995, %3980 ], [ %3467, %3458 ]
  %4022 = phi float [ %4005, %3980 ], [ %905, %3458 ]
  %4023 = phi float [ %3993, %3980 ], [ %3468, %3458 ]
  %4024 = phi float [ %3992, %3980 ], [ %3469, %3458 ]
  %4025 = phi float [ %3985, %3980 ], [ 0.000000e+00, %3458 ]
  %4026 = phi float [ %3984, %3980 ], [ 0.000000e+00, %3458 ]
  %4027 = phi float [ %3981, %3980 ], [ 0.000000e+00, %3458 ]
  %4028 = phi float [ %3982, %3980 ], [ %3472, %3458 ]
  %4029 = phi float [ %3983, %3980 ], [ %3470, %3458 ]
  %4030 = fadd fast float %4021, 0xBFB99999A0000000
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = fmul fast float %4031, 0x3FF1C71C80000000
  %4033 = call float @dx.op.binary.f32(i32 36, float %4021, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4034 = fsub fast float 1.000000e+00, %4032
  %4035 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4036 = fmul fast float %4035, %4015
  %4037 = fmul fast float %4035, %4016
  %4038 = fmul fast float %4035, %4017
  %4039 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4041 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4042 = fmul fast float %4032, %4015
  %4043 = fmul fast float %4032, %4016
  %4044 = fmul fast float %4032, %4017
  %4045 = fadd fast float %4042, %4033
  %4046 = fadd fast float %4043, %4033
  %4047 = fadd fast float %4044, %4033
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.i32 %4052, 3
  %4054 = and i32 %4053, 8
  %4055 = icmp ne i32 %4054, 0
  %4056 = call float @dx.op.binary.f32(i32 35, float %4039, float %4015)  ; FMax(a,b)
  %4057 = call float @dx.op.binary.f32(i32 35, float %4040, float %4015)  ; FMax(a,b)
  %4058 = call float @dx.op.binary.f32(i32 35, float %4041, float %4015)  ; FMax(a,b)
  %4059 = call float @dx.op.dot3.f32(i32 55, float %4039, float %4040, float %4041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4060 = select i1 %186, float %4015, float %4039
  %4061 = select i1 %186, float %4059, float %4040
  %4062 = select i1 %186, float 1.000000e+00, float %4041
  %4063 = select i1 %4055, float %4056, float %4060
  %4064 = select i1 %4055, float %4057, float %4061
  %4065 = select i1 %4055, float %4058, float %4062
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4069 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4070 = fadd fast float %4067, %144
  %4071 = fadd fast float %4068, %145
  %4072 = fadd fast float %4069, %146
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.CBufRet.f32 %4073, 1
  %4076 = fsub fast float %4070, %4074
  %4077 = fsub fast float %4071, %4075
  %4078 = fmul fast float %4076, %4076
  %4079 = fmul fast float %4077, %4077
  %4080 = fadd fast float %4078, %4079
  %4081 = call float @dx.op.unary.f32(i32 24, float %4080)  ; Sqrt(value)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4073, 2
  %4083 = fcmp fast olt float %4081, %4082
  br i1 %4083, label %4084, label %4151

; <label>:4084                                    ; preds = %4011
  %4085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4085, 0
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.CBufRet.f32 %4085, 1
  %4092 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4093 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4085, 3
  %4095 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4096 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4097 = fadd fast float %4094, %4070
  %4098 = fadd fast float %4095, %4071
  %4099 = fadd fast float %4096, %4072
  %4100 = fmul fast float %4097, %4086
  %4101 = call float @dx.op.tertiary.f32(i32 46, float %4098, float %4088, float %4100)  ; FMad(a,b,c)
  %4102 = call float @dx.op.tertiary.f32(i32 46, float %4099, float %4090, float %4101)  ; FMad(a,b,c)
  %4103 = fmul fast float %4097, %4091
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %4098, float %4092, float %4103)  ; FMad(a,b,c)
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4099, float %4093, float %4104)  ; FMad(a,b,c)
  %4106 = fsub fast float %4102, %4094
  %4107 = fsub fast float %4105, %4095
  %4108 = fsub fast float %4106, %4074
  %4109 = fadd fast float %4108, %4082
  %4110 = fsub fast float %4107, %4075
  %4111 = fadd fast float %4110, %4082
  %4112 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4113 = fmul fast float %4109, %4112
  %4114 = fmul fast float %4111, %4112
  %4115 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4117 = fsub fast float 1.000000e+00, %4115
  %4118 = fsub fast float 1.000000e+00, %4116
  %4119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4117, float %4118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = fcmp fast ugt float %4120, 0.000000e+00
  br i1 %4121, label %4122, label %4425

; <label>:4122                                    ; preds = %4084
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 2
  %4125 = fmul fast float %4124, %4120
  %4126 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4127 = fadd fast float %4126, %4125
  %4128 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4129 = fadd fast float %4127, %4096
  %4130 = fmul fast float %4102, %4090
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %4105, float %4093, float %4130)  ; FMad(a,b,c)
  %4132 = call float @dx.op.tertiary.f32(i32 46, float %4129, float %4128, float %4131)  ; FMad(a,b,c)
  %4133 = fsub fast float %4132, %4096
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 2
  %4136 = fsub fast float %4133, %4135
  %4137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4117, float %4118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4138 = extractvalue %dx.types.ResRet.f32 %4137, 0
  %4139 = extractvalue %dx.types.ResRet.f32 %4137, 1
  %4140 = extractvalue %dx.types.ResRet.f32 %4137, 2
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4117, float %4118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4145 = fadd fast float %4142, %4138
  %4146 = fmul fast float %4145, 0x3F847AE140000000
  %4147 = fadd fast float %4143, %4139
  %4148 = fmul fast float %4147, 0x3F847AE140000000
  %4149 = fadd fast float %4144, %4140
  %4150 = fmul fast float %4149, 0x3F847AE140000000
  br label %4425

; <label>:4151                                    ; preds = %4011
  %4152 = and i32 %162, 1
  %4153 = icmp eq i32 %4152, 0
  br i1 %4153, label %4425, label %4154

; <label>:4154                                    ; preds = %4151
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 0
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4162 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4163 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4164 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4165 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4166 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4167 = fadd fast float %4164, %4070
  %4168 = fadd fast float %4165, %4071
  %4169 = fadd fast float %4166, %4072
  %4170 = fmul fast float %4167, %4156
  %4171 = call float @dx.op.tertiary.f32(i32 46, float %4168, float %4158, float %4170)  ; FMad(a,b,c)
  %4172 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4160, float %4171)  ; FMad(a,b,c)
  %4173 = fmul fast float %4167, %4161
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4168, float %4162, float %4173)  ; FMad(a,b,c)
  %4175 = call float @dx.op.tertiary.f32(i32 46, float %4169, float %4163, float %4174)  ; FMad(a,b,c)
  %4176 = fsub fast float %4172, %4164
  %4177 = fsub fast float %4175, %4165
  %4178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4179 = extractvalue %dx.types.CBufRet.f32 %4178, 0
  %4180 = extractvalue %dx.types.CBufRet.f32 %4178, 1
  %4181 = extractvalue %dx.types.CBufRet.f32 %4178, 2
  %4182 = extractvalue %dx.types.CBufRet.f32 %4178, 3
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.i32 %4185, 0
  %4187 = extractvalue %dx.types.CBufRet.i32 %4185, 1
  %4188 = udiv i32 %4187, %4186
  %4189 = fsub fast float %4176, %4179
  %4190 = fsub fast float %4177, %4180
  %4191 = call float @dx.op.binary.f32(i32 35, float %4189, float 0.000000e+00)  ; FMax(a,b)
  %4192 = call float @dx.op.binary.f32(i32 35, float %4190, float 0.000000e+00)  ; FMax(a,b)
  %4193 = call float @dx.op.binary.f32(i32 36, float %4191, float %4181)  ; FMin(a,b)
  %4194 = call float @dx.op.binary.f32(i32 36, float %4192, float %4182)  ; FMin(a,b)
  %4195 = add i32 %4186, -1
  %4196 = add i32 %4188, -1
  %4197 = fmul fast float %4193, %4184
  %4198 = fmul fast float %4194, %4184
  %4199 = fptoui float %4197 to i32
  %4200 = fptoui float %4198 to i32
  %4201 = call i32 @dx.op.binary.i32(i32 40, i32 %4199, i32 %4195)  ; UMin(a,b)
  %4202 = call i32 @dx.op.binary.i32(i32 40, i32 %4200, i32 %4196)  ; UMin(a,b)
  %4203 = mul i32 %4202, %4186
  %4204 = add i32 %4203, %4201
  %4205 = shl i32 %4204, 2
  %4206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.i32 %4206, 0
  %4208 = icmp eq i32 %4207, -1
  br i1 %4208, label %4425, label %4209

; <label>:4209                                    ; preds = %4154
  %4210 = mul i32 %4207, 148
  %4211 = add i32 %4210, 4
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = add i32 %4210, 8
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = add i32 %4210, 36
  %4218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.f32 %4218, 0
  %4220 = add i32 %4210, 60
  %4221 = add i32 %4210, 92
  %4222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.i32 %4222, 0
  %4224 = add i32 %4210, 116
  %4225 = fsub fast float %4176, %4213
  %4226 = fsub fast float %4177, %4216
  %4227 = fmul fast float %4184, %4225
  %4228 = fmul fast float %4184, %4226
  %4229 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4230 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4231 = fsub fast float 1.000000e+00, %4230
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 2
  %4234 = call float @dx.op.unary.f32(i32 83, float %4229)  ; DerivCoarseX(value)
  %4235 = call float @dx.op.unary.f32(i32 83, float %4231)  ; DerivCoarseX(value)
  %4236 = call float @dx.op.unary.f32(i32 84, float %4229)  ; DerivCoarseY(value)
  %4237 = call float @dx.op.unary.f32(i32 84, float %4231)  ; DerivCoarseY(value)
  %4238 = fmul fast float %4234, %4233
  %4239 = fmul fast float %4235, %4233
  %4240 = fmul fast float %4236, %4233
  %4241 = fmul fast float %4237, %4233
  %4242 = call float @dx.op.dot2.f32(i32 54, float %4240, float %4241, float %4240, float %4241)  ; Dot2(ax,ay,bx,by)
  %4243 = call float @dx.op.dot2.f32(i32 54, float %4238, float %4239, float %4238, float %4239)  ; Dot2(ax,ay,bx,by)
  %4244 = call float @dx.op.binary.f32(i32 35, float %4243, float %4242)  ; FMax(a,b)
  %4245 = call float @dx.op.unary.f32(i32 23, float %4244)  ; Log(value)
  %4246 = fmul fast float %4245, 5.000000e-01
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 1
  %4249 = fadd fast float %4248, %4246
  %4250 = call float @dx.op.binary.f32(i32 35, float %4249, float 0.000000e+00)  ; FMax(a,b)
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 3
  %4253 = fadd fast float %4252, %4250
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 3
  %4256 = fadd fast float %4253, %4255
  %4257 = add i32 %4223, 0
  %4258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4257, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4259 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4258, i32 0)  ; GetDimensions(handle,mipLevel)
  %4260 = extractvalue %dx.types.Dimensions %4259, 0
  %4261 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4260)  ; FirstbitLo(value)
  %4262 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.i32 %4262, 1
  %4264 = sub nsw i32 %4263, %4261
  %4265 = sitofp i32 %4264 to float
  %4266 = fsub fast float %4256, %4265
  %4267 = call float @dx.op.binary.f32(i32 35, float %4266, float 0.000000e+00)  ; FMax(a,b)
  %4268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4258, %dx.types.Handle %37, float %4229, float %4231, float %4219, float undef, i32 0, i32 0, i32 undef, float %4267)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = fcmp ule float %4269, 0x3FE0101020000000
  %4271 = extractvalue %dx.types.CBufRet.i32 %4262, 0
  %4272 = and i32 %4271, 128
  %4273 = icmp ne i32 %4272, 0
  %4274 = and i1 %4270, %4273
  br i1 %4274, label %4425, label %4275

; <label>:4275                                    ; preds = %4209
  %4276 = add i32 %4210, 20
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = add i32 %4210, 24
  %4280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = add i32 %4210, 40
  %4283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = add i32 %4210, 96
  %4286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4285, i32 undef)  ; BufferLoad(srv,index,wot)
  %4287 = extractvalue %dx.types.ResRet.i32 %4286, 0
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 2
  %4290 = fmul fast float %4289, %4229
  %4291 = fmul fast float %4289, %4231
  %4292 = extractvalue %dx.types.CBufRet.f32 %4288, 3
  %4293 = fadd fast float %4290, %4292
  %4294 = fadd fast float %4291, %4292
  %4295 = add i32 %4287, 0
  %4296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4295, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4297 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4296, i32 0)  ; GetDimensions(handle,mipLevel)
  %4298 = extractvalue %dx.types.Dimensions %4297, 0
  %4299 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4298)  ; FirstbitLo(value)
  %4300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.i32 %4300, 1
  %4302 = sub nsw i32 %4301, %4299
  %4303 = sitofp i32 %4302 to float
  %4304 = fsub fast float %4253, %4303
  %4305 = call float @dx.op.binary.f32(i32 35, float %4304, float 0.000000e+00)  ; FMax(a,b)
  %4306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4296, %dx.types.Handle %37, float %4293, float %4294, float %4284, float undef, i32 0, i32 0, i32 undef, float %4305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4307 = extractvalue %dx.types.ResRet.f32 %4306, 0
  %4308 = fmul fast float %4307, %4278
  %4309 = fadd fast float %4308, %4281
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4313 = extractvalue %dx.types.CBufRet.f32 %4310, 2
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4318 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4319 = fadd fast float %4315, %4176
  %4320 = fadd fast float %4317, %4177
  %4321 = fadd fast float %4309, %4318
  %4322 = fmul fast float %4319, %4311
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4312, float %4322)  ; FMad(a,b,c)
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4313, float %4323)  ; FMad(a,b,c)
  %4325 = fsub fast float %4324, %4318
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 2
  %4328 = fsub fast float %4325, %4327
  %4329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.i32 %4329, 0
  %4331 = call i32 @dx.op.binary.i32(i32 40, i32 %4207, i32 %4330)  ; UMin(a,b)
  %4332 = mul i32 %4331, 36
  %4333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.i32 %4333, 0
  %4335 = add i32 %4332, 4
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 0
  %4338 = fmul fast float %4337, %4229
  %4339 = fmul fast float %4337, %4231
  %4340 = extractvalue %dx.types.CBufRet.f32 %4336, 1
  %4341 = fadd fast float %4338, %4340
  %4342 = fadd fast float %4339, %4340
  %4343 = icmp eq i32 %4334, 0
  br i1 %4343, label %4412, label %4344

; <label>:4344                                    ; preds = %4275
  br label %4345

; <label>:4345                                    ; preds = %4402, %4344
  %4346 = phi float [ %4403, %4402 ], [ 0.000000e+00, %4344 ]
  %4347 = phi float [ %4404, %4402 ], [ 0.000000e+00, %4344 ]
  %4348 = phi float [ %4405, %4402 ], [ 0.000000e+00, %4344 ]
  %4349 = phi float [ %4406, %4402 ], [ 0.000000e+00, %4344 ]
  %4350 = phi float [ %4407, %4402 ], [ 0.000000e+00, %4344 ]
  %4351 = phi float [ %4408, %4402 ], [ 0.000000e+00, %4344 ]
  %4352 = phi i32 [ %4409, %4402 ], [ 0, %4344 ]
  %4353 = shl i32 %4352, 2
  %4354 = add i32 %4220, %4353
  %4355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.f32 %4355, 0
  %4357 = add i32 %4224, %4353
  %4358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.i32 %4358, 0
  %4360 = add i32 %4359, 0
  %4361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4360, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4362 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4361, i32 0)  ; GetDimensions(handle,mipLevel)
  %4363 = extractvalue %dx.types.Dimensions %4362, 0
  %4364 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4363)  ; FirstbitLo(value)
  %4365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.i32 %4365, 1
  %4367 = sub nsw i32 %4366, %4364
  %4368 = sitofp i32 %4367 to float
  %4369 = fsub fast float %4253, %4368
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float 0.000000e+00)  ; FMax(a,b)
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4361, %dx.types.Handle %37, float %4341, float %4342, float %4356, float undef, i32 0, i32 0, i32 undef, float %4370)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = fcmp fast ogt float %4372, 0.000000e+00
  br i1 %4373, label %4374, label %4402

; <label>:4374                                    ; preds = %4345
  %4375 = add i32 %4335, %4353
  %4376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4375, i32 undef)  ; BufferLoad(srv,index,wot)
  %4377 = extractvalue %dx.types.ResRet.i32 %4376, 0
  %4378 = and i32 %4377, 32767
  %4379 = mul nuw nsw i32 %4378, 928
  %4380 = add nuw nsw i32 %4379, 48
  %4381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = extractvalue %dx.types.ResRet.f32 %4381, 1
  %4384 = extractvalue %dx.types.ResRet.f32 %4381, 2
  %4385 = add nuw nsw i32 %4379, 60
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.ResRet.f32 %4386, 1
  %4389 = extractvalue %dx.types.ResRet.f32 %4386, 2
  %4390 = fmul fast float %4382, %4372
  %4391 = fmul fast float %4383, %4372
  %4392 = fmul fast float %4384, %4372
  %4393 = fadd fast float %4390, %4346
  %4394 = fadd fast float %4391, %4347
  %4395 = fadd fast float %4392, %4348
  %4396 = fmul fast float %4387, %4372
  %4397 = fmul fast float %4388, %4372
  %4398 = fmul fast float %4389, %4372
  %4399 = fadd fast float %4396, %4349
  %4400 = fadd fast float %4397, %4350
  %4401 = fadd fast float %4398, %4351
  br label %4402

; <label>:4402                                    ; preds = %4374, %4345
  %4403 = phi float [ %4393, %4374 ], [ %4346, %4345 ]
  %4404 = phi float [ %4394, %4374 ], [ %4347, %4345 ]
  %4405 = phi float [ %4395, %4374 ], [ %4348, %4345 ]
  %4406 = phi float [ %4399, %4374 ], [ %4349, %4345 ]
  %4407 = phi float [ %4400, %4374 ], [ %4350, %4345 ]
  %4408 = phi float [ %4401, %4374 ], [ %4351, %4345 ]
  %4409 = add nuw i32 %4352, 1
  %4410 = icmp eq i32 %4409, %4334
  br i1 %4410, label %4411, label %4345

; <label>:4411                                    ; preds = %4402
  br label %4412

; <label>:4412                                    ; preds = %4411, %4275
  %4413 = phi float [ 0.000000e+00, %4275 ], [ %4403, %4411 ]
  %4414 = phi float [ 0.000000e+00, %4275 ], [ %4404, %4411 ]
  %4415 = phi float [ 0.000000e+00, %4275 ], [ %4405, %4411 ]
  %4416 = phi float [ 0.000000e+00, %4275 ], [ %4406, %4411 ]
  %4417 = phi float [ 0.000000e+00, %4275 ], [ %4407, %4411 ]
  %4418 = phi float [ 0.000000e+00, %4275 ], [ %4408, %4411 ]
  %4419 = fadd fast float %4416, %4413
  %4420 = fmul fast float %4419, 0x3F847AE140000000
  %4421 = fadd fast float %4417, %4414
  %4422 = fmul fast float %4421, 0x3F847AE140000000
  %4423 = fadd fast float %4418, %4415
  %4424 = fmul fast float %4423, 0x3F847AE140000000
  br label %4425

; <label>:4425                                    ; preds = %4412, %4209, %4154, %4151, %4122, %4084
  %4426 = phi float [ %4136, %4122 ], [ -1.310720e+05, %4084 ], [ %4328, %4412 ], [ -1.310720e+05, %4154 ], [ -1.310720e+05, %4209 ], [ -1.310720e+05, %4151 ]
  %4427 = phi float [ %4146, %4122 ], [ 0.000000e+00, %4084 ], [ %4420, %4412 ], [ 0.000000e+00, %4154 ], [ 0.000000e+00, %4209 ], [ 0.000000e+00, %4151 ]
  %4428 = phi float [ %4148, %4122 ], [ 0.000000e+00, %4084 ], [ %4422, %4412 ], [ 0.000000e+00, %4154 ], [ 0.000000e+00, %4209 ], [ 0.000000e+00, %4151 ]
  %4429 = phi float [ %4150, %4122 ], [ 0.000000e+00, %4084 ], [ %4424, %4412 ], [ 0.000000e+00, %4154 ], [ 0.000000e+00, %4209 ], [ 0.000000e+00, %4151 ]
  %4430 = phi i1 [ true, %4122 ], [ false, %4084 ], [ true, %4412 ], [ false, %4154 ], [ false, %4209 ], [ false, %4151 ]
  %4431 = and i32 %162, 3
  %4432 = icmp eq i32 %4431, 1
  %4433 = select i1 %4432, float 1.000000e+00, float 0.000000e+00
  %4434 = fsub fast float %4426, %146
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = select i1 %4430, float %4435, float 1.000000e+00
  %4437 = fmul fast float %4436, %4433
  %4438 = icmp eq i32 %4431, 3
  %4439 = select i1 %4438, float 1.000000e+00, float %4437
  %4440 = call float @dx.op.binary.f32(i32 35, float %4027, float %4439)  ; FMax(a,b)
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fcmp fast une float %4441, 0.000000e+00
  %4443 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4444 = call float @dx.op.unary.f32(i32 25, float %4443)  ; Rsqrt(value)
  br i1 %4442, label %4452, label %4445

; <label>:4445                                    ; preds = %4425
  %4446 = fmul fast float %4444, %144
  %4447 = fmul fast float %4444, %145
  %4448 = fmul fast float %4444, %146
  %4449 = fsub fast float -0.000000e+00, %4446
  %4450 = fsub fast float -0.000000e+00, %4447
  %4451 = fsub fast float -0.000000e+00, %4448
  br label %4620

; <label>:4452                                    ; preds = %4425
  %4453 = fmul fast float %144, %4444
  %4454 = fsub fast float -0.000000e+00, %4453
  %4455 = fmul fast float %145, %4444
  %4456 = fsub fast float -0.000000e+00, %4455
  %4457 = fmul fast float %146, %4444
  %4458 = fsub fast float -0.000000e+00, %4457
  %4459 = call float @dx.op.dot3.f32(i32 55, float %4454, float %4456, float %4458, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = fmul fast float %4441, 2.500000e+00
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = fmul fast float %4441, 0x4013FFFFE0000000
  %4463 = fadd fast float %4462, 0xBFFFFFFFE0000000
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = fmul fast float %4441, 0x4004000020000000
  %4466 = fadd fast float %4465, 0xBFF8000040000000
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4469 = fmul fast float %4030, 1.000000e+01
  %4470 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4471 = fmul fast float %4470, 2.000000e+00
  %4472 = fsub fast float 3.000000e+00, %4471
  %4473 = fmul fast float %4470, %4470
  %4474 = fmul fast float %4473, %4472
  %4475 = fsub fast float 1.000000e+00, %4474
  %4476 = fsub fast float 0x3FE3333340000000, %4051
  %4477 = fmul fast float %4476, 0x400AAAAAA0000000
  %4478 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4479 = fmul fast float %4475, %4478
  %4480 = fmul fast float %4063, 0x3FEA2B8620000000
  %4481 = fmul fast float %4064, 0x3FEA2B8620000000
  %4482 = fmul fast float %4065, 0x3FEA2B8620000000
  %4483 = fadd fast float %4480, 0x3FC81DFBA0000000
  %4484 = fmul fast float %4483, %4063
  %4485 = fadd fast float %4484, 0x3F910E6020000000
  %4486 = fadd fast float %4481, 0x3FC81DFBA0000000
  %4487 = fmul fast float %4486, %4064
  %4488 = fadd fast float %4487, 0x3F910E6020000000
  %4489 = fadd fast float %4482, 0x3FC81DFBA0000000
  %4490 = fmul fast float %4489, %4065
  %4491 = fadd fast float %4490, 0x3F910E6020000000
  %4492 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4493 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4494 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4495 = fsub fast float %4492, %4063
  %4496 = fsub fast float %4493, %4064
  %4497 = fsub fast float %4494, %4065
  %4498 = fmul fast float %4495, %4468
  %4499 = fmul fast float %4498, %4479
  %4500 = fmul fast float %4496, %4468
  %4501 = fmul fast float %4500, %4479
  %4502 = fmul fast float %4497, %4468
  %4503 = fmul fast float %4502, %4479
  %4504 = fadd fast float %4499, %4063
  %4505 = fadd fast float %4501, %4064
  %4506 = fadd fast float %4503, %4065
  %4507 = fmul fast float %4024, %4024
  %4508 = fmul fast float %4507, %4507
  %4509 = fadd fast float %4464, 1.000000e+00
  %4510 = fsub fast float %4509, %4479
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4514 = fsub fast float 1.000000e+00, %4508
  %4515 = call float @dx.op.binary.f32(i32 36, float %4511, float %4514)  ; FMin(a,b)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4517 = call float @dx.op.binary.f32(i32 35, float %4515, float %4516)  ; FMax(a,b)
  %4518 = fadd fast float %4513, 0xBFE4CCCCC0000000
  %4519 = fmul fast float %4518, 0x4006DB6DA0000000
  %4520 = call float @dx.op.unary.f32(i32 7, float %4519)  ; Saturate(value)
  %4521 = fmul fast float %4520, 2.000000e+00
  %4522 = fsub fast float 3.000000e+00, %4521
  %4523 = bitcast float %4048 to i32
  %4524 = ashr i32 %4523, 1
  %4525 = add nsw i32 %4524, 532487669
  %4526 = bitcast i32 %4525 to float
  %4527 = fsub fast float 1.000000e+00, %4526
  %4528 = bitcast float %4527 to i32
  %4529 = sub nsw i32 2129859010, %4528
  %4530 = bitcast i32 %4529 to float
  %4531 = fmul fast float %4530, 2.000000e+00
  %4532 = bitcast float %4049 to i32
  %4533 = ashr i32 %4532, 1
  %4534 = add nsw i32 %4533, 532487669
  %4535 = bitcast i32 %4534 to float
  %4536 = fsub fast float 1.000000e+00, %4535
  %4537 = bitcast float %4536 to i32
  %4538 = sub nsw i32 2129859010, %4537
  %4539 = bitcast i32 %4538 to float
  %4540 = fmul fast float %4539, 2.000000e+00
  %4541 = bitcast float %4050 to i32
  %4542 = ashr i32 %4541, 1
  %4543 = add nsw i32 %4542, 532487669
  %4544 = bitcast i32 %4543 to float
  %4545 = fsub fast float 1.000000e+00, %4544
  %4546 = bitcast float %4545 to i32
  %4547 = sub nsw i32 2129859010, %4546
  %4548 = bitcast i32 %4547 to float
  %4549 = fmul fast float %4548, 2.000000e+00
  %4550 = fsub fast float 0x4002A9FBE0000000, %4531
  %4551 = fadd fast float %4531, 0x3FD54FDF00000000
  %4552 = bitcast float %4551 to i32
  %4553 = sub nsw i32 2129859010, %4552
  %4554 = bitcast i32 %4553 to float
  %4555 = fmul fast float %4554, %4550
  %4556 = fmul fast float %4555, %4555
  %4557 = fsub fast float 0x4002A9FBE0000000, %4540
  %4558 = fadd fast float %4540, 0x3FD54FDF00000000
  %4559 = bitcast float %4558 to i32
  %4560 = sub nsw i32 2129859010, %4559
  %4561 = bitcast i32 %4560 to float
  %4562 = fmul fast float %4561, %4557
  %4563 = fmul fast float %4562, %4562
  %4564 = fsub fast float 0x4002A9FBE0000000, %4549
  %4565 = fadd fast float %4549, 0x3FD54FDF00000000
  %4566 = bitcast float %4565 to i32
  %4567 = sub nsw i32 2129859010, %4566
  %4568 = bitcast i32 %4567 to float
  %4569 = fmul fast float %4568, %4564
  %4570 = fmul fast float %4569, %4569
  %4571 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4556)  ; FMax(a,b)
  %4572 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4563)  ; FMax(a,b)
  %4573 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4570)  ; FMax(a,b)
  %4574 = fsub fast float 1.000000e+00, %4459
  %4575 = fadd fast float %4574, %4475
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4577 = fsub fast float 1.000000e+00, %4439
  %4578 = fmul fast float %4517, %4577
  %4579 = fmul fast float %4520, %4520
  %4580 = fmul fast float %4579, %4578
  %4581 = fmul fast float %4580, %4522
  %4582 = fmul fast float %4577, 0xBFE99999A0000000
  %4583 = fmul fast float %4582, %4468
  %4584 = fmul fast float %4583, %4479
  %4585 = fadd fast float %4584, 1.000000e+00
  %4586 = fadd fast float %4051, -1.000000e+00
  %4587 = fmul fast float %4585, %4586
  %4588 = fadd fast float %4587, 1.000000e+00
  %4589 = fsub fast float %4571, %4048
  %4590 = fsub fast float %4572, %4049
  %4591 = fsub fast float %4573, %4050
  %4592 = fmul fast float %4581, %4589
  %4593 = fmul fast float %4581, %4590
  %4594 = fmul fast float %4581, %4591
  %4595 = fadd fast float %4592, %4048
  %4596 = fadd fast float %4593, %4049
  %4597 = fadd fast float %4594, %4050
  %4598 = fsub fast float %94, %4012
  %4599 = fsub fast float %96, %4013
  %4600 = fsub fast float %98, %4014
  %4601 = fmul fast float %4581, %4598
  %4602 = fmul fast float %4581, %4599
  %4603 = fmul fast float %4581, %4600
  %4604 = fadd fast float %4601, %4012
  %4605 = fadd fast float %4602, %4013
  %4606 = fadd fast float %4603, %4014
  %4607 = fmul fast float %4581, %4576
  %4608 = call float @dx.op.unary.f32(i32 7, float %4588)  ; Saturate(value)
  %4609 = fsub fast float 1.000000e+00, %4608
  %4610 = fmul fast float %4607, %4609
  %4611 = fadd fast float %4610, %4608
  %4612 = fsub fast float 1.000000e+00, %4024
  %4613 = fmul fast float %4581, %4612
  %4614 = fadd fast float %4613, %4024
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4605, float %4606, float %4604, float %4605, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = call float @dx.op.unary.f32(i32 25, float %4615)  ; Rsqrt(value)
  %4617 = fmul fast float %4604, %4616
  %4618 = fmul fast float %4605, %4616
  %4619 = fmul fast float %4606, %4616
  br label %4620

; <label>:4620                                    ; preds = %4452, %4445
  %4621 = phi float [ %4451, %4445 ], [ %4458, %4452 ]
  %4622 = phi float [ %4450, %4445 ], [ %4456, %4452 ]
  %4623 = phi float [ %4449, %4445 ], [ %4454, %4452 ]
  %4624 = phi float [ %4448, %4445 ], [ %4457, %4452 ]
  %4625 = phi float [ %4447, %4445 ], [ %4455, %4452 ]
  %4626 = phi float [ %4446, %4445 ], [ %4453, %4452 ]
  %4627 = phi float [ %4063, %4445 ], [ %4504, %4452 ]
  %4628 = phi float [ %4064, %4445 ], [ %4505, %4452 ]
  %4629 = phi float [ %4065, %4445 ], [ %4506, %4452 ]
  %4630 = phi float [ %4048, %4445 ], [ %4595, %4452 ]
  %4631 = phi float [ %4049, %4445 ], [ %4596, %4452 ]
  %4632 = phi float [ %4050, %4445 ], [ %4597, %4452 ]
  %4633 = phi float [ %4012, %4445 ], [ %4617, %4452 ]
  %4634 = phi float [ %4013, %4445 ], [ %4618, %4452 ]
  %4635 = phi float [ %4014, %4445 ], [ %4619, %4452 ]
  %4636 = phi float [ %4051, %4445 ], [ %4611, %4452 ]
  %4637 = phi float [ %4024, %4445 ], [ %4614, %4452 ]
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4640 = extractvalue %dx.types.CBufRet.f32 %4638, 3
  %4641 = fmul fast float %4639, %85
  %4642 = fmul fast float %4640, %86
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 1
  %4646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4641, float %4642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4647 = extractvalue %dx.types.ResRet.f32 %4646, 0
  %4648 = fmul fast float %4647, %4645
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = fadd fast float %4649, -1.000000e+00
  %4651 = fmul fast float %4650, %4644
  %4652 = fadd fast float %4651, 1.000000e+00
  %4653 = select i1 %186, float 0.000000e+00, float %4632
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float %4623, float %4622, float %4621)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4625, float %4624, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = fmul fast float %4656, 2.000000e+00
  %4658 = fmul fast float %4657, %4633
  %4659 = fmul fast float %4657, %4634
  %4660 = fmul fast float %4657, %4635
  %4661 = fsub fast float %4626, %4658
  %4662 = fsub fast float %4625, %4659
  %4663 = fsub fast float %4624, %4660
  %4664 = call float @dx.op.binary.f32(i32 36, float %4637, float %4652)  ; FMin(a,b)
  %4665 = fsub fast float 1.000000e+00, %4664
  %4666 = bitcast float %4665 to i32
  %4667 = ashr i32 %4666, 1
  %4668 = add nsw i32 %4667, 532487669
  %4669 = bitcast i32 %4668 to float
  %4670 = fsub fast float 1.000000e+00, %4636
  %4671 = call float @dx.op.binary.f32(i32 35, float %4670, float 0x3F847AE140000000)  ; FMax(a,b)
  %4672 = fmul fast float %4671, %4671
  %4673 = fmul fast float %4672, %4672
  %4674 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4669, float %4673, float %4674, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4676 = extractvalue %dx.types.ResRet.f32 %4675, 0
  %4677 = fsub fast float 1.000000e+00, %4637
  %4678 = bitcast float %4677 to i32
  %4679 = sub nsw i32 2129859010, %4678
  %4680 = bitcast i32 %4679 to float
  %4681 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = fmul fast float %4681, 0x3FD20DD760000000
  %4683 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4684 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = fcmp fast oeq float %4684, 0.000000e+00
  %4686 = fcmp fast oeq float %4683, 0.000000e+00
  %4687 = or i1 %4686, %4685
  br i1 %4687, label %4717, label %4688

; <label>:4688                                    ; preds = %4620
  %4689 = fsub fast float -0.000000e+00, %65
  %4690 = fsub fast float -0.000000e+00, %63
  %4691 = call float @dx.op.unary.f32(i32 24, float %4684)  ; Sqrt(value)
  %4692 = fdiv fast float %4691, %4683
  %4693 = fcmp fast ogt float %4692, 0x3FFB6F8900000000
  %4694 = select i1 %4693, float 0x3FFB6F8900000000, float %4692
  %4695 = fmul fast float %4694, 0x3FE8A23460000000
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = call float @dx.op.binary.f32(i32 35, float %4694, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4698 = fmul fast float %4696, %4683
  %4699 = fmul fast float %4697, 0x3FF279A740000000
  %4700 = fadd fast float %4699, -1.000000e+00
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4689, float %4690, float %64, float %4689, float %4690, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = call float @dx.op.unary.f32(i32 25, float %4701)  ; Rsqrt(value)
  %4703 = fmul fast float %4702, %4689
  %4704 = fmul fast float %4702, %4690
  %4705 = fmul fast float %4702, %64
  %4706 = fmul fast float %4700, %4700
  %4707 = fsub fast float 1.000000e+00, %4706
  %4708 = fmul fast float %4697, 0x40005F8BE0000000
  %4709 = fsub fast float 0x400C5BF8A0000000, %4708
  %4710 = fdiv fast float %4698, %4709
  %4711 = fmul fast float %4710, 0x3FEE31C3C0000000
  %4712 = fmul fast float %4711, %4707
  %4713 = fmul fast float %4697, 0x3FDACB7480000000
  %4714 = fadd fast float %4713, 0xBFD7347680000000
  %4715 = fmul fast float %4714, %4710
  %4716 = fmul fast float %4715, %4707
  br label %4717

; <label>:4717                                    ; preds = %4688, %4620
  %4718 = phi float [ %4703, %4688 ], [ 0.000000e+00, %4620 ]
  %4719 = phi float [ %4704, %4688 ], [ 0.000000e+00, %4620 ]
  %4720 = phi float [ %4705, %4688 ], [ 0.000000e+00, %4620 ]
  %4721 = phi float [ %4712, %4688 ], [ 0.000000e+00, %4620 ]
  %4722 = phi float [ %4716, %4688 ], [ 0.000000e+00, %4620 ]
  %4723 = call float @dx.op.dot3.f32(i32 55, float %4718, float %4719, float %4720, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4724 = fmul fast float %4723, %4723
  %4725 = fmul fast float %4724, 0x3FEE471020000000
  %4726 = fadd fast float %4725, 0xBFD42F6020000000
  %4727 = fmul fast float %4683, 0x3FD20DD760000000
  %4728 = fmul fast float %4726, %4722
  %4729 = fmul fast float %4721, 0x3FDF454380000000
  %4730 = fmul fast float %4729, %4723
  %4731 = fadd fast float %4730, %4727
  %4732 = fadd fast float %4731, %4728
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4718, float %4719, float %4720, float %4661, float %4662, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = fmul fast float %4733, 0x3FDF454380000000
  %4735 = fmul fast float %4733, %4733
  %4736 = fmul fast float %4735, 0x3FEE471020000000
  %4737 = fadd fast float %4736, 0xBFD42F6020000000
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4721, float %4722, float 0x3FD20DD760000000, float %4734, float %4737)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4740 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = fcmp fast oeq float %4740, 0.000000e+00
  %4742 = fcmp fast oeq float %4739, 0.000000e+00
  %4743 = or i1 %4742, %4741
  br i1 %4743, label %4773, label %4744

; <label>:4744                                    ; preds = %4717
  %4745 = fsub fast float -0.000000e+00, %61
  %4746 = fsub fast float -0.000000e+00, %59
  %4747 = call float @dx.op.unary.f32(i32 24, float %4740)  ; Sqrt(value)
  %4748 = fdiv fast float %4747, %4739
  %4749 = fcmp fast ogt float %4748, 0x3FFB6F8900000000
  %4750 = select i1 %4749, float 0x3FFB6F8900000000, float %4748
  %4751 = fmul fast float %4750, 0x3FE8A23460000000
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = call float @dx.op.binary.f32(i32 35, float %4750, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4754 = fmul fast float %4752, %4739
  %4755 = fmul fast float %4753, 0x3FF279A740000000
  %4756 = fadd fast float %4755, -1.000000e+00
  %4757 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4746, float %60, float %4745, float %4746, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = call float @dx.op.unary.f32(i32 25, float %4757)  ; Rsqrt(value)
  %4759 = fmul fast float %4758, %4745
  %4760 = fmul fast float %4758, %4746
  %4761 = fmul fast float %4758, %60
  %4762 = fmul fast float %4756, %4756
  %4763 = fsub fast float 1.000000e+00, %4762
  %4764 = fmul fast float %4753, 0x40005F8BE0000000
  %4765 = fsub fast float 0x400C5BF8A0000000, %4764
  %4766 = fdiv fast float %4754, %4765
  %4767 = fmul fast float %4766, 0x3FEE31C3C0000000
  %4768 = fmul fast float %4767, %4763
  %4769 = fmul fast float %4753, 0x3FDACB7480000000
  %4770 = fadd fast float %4769, 0xBFD7347680000000
  %4771 = fmul fast float %4770, %4766
  %4772 = fmul fast float %4771, %4763
  br label %4773

; <label>:4773                                    ; preds = %4744, %4717
  %4774 = phi float [ %4759, %4744 ], [ 0.000000e+00, %4717 ]
  %4775 = phi float [ %4760, %4744 ], [ 0.000000e+00, %4717 ]
  %4776 = phi float [ %4761, %4744 ], [ 0.000000e+00, %4717 ]
  %4777 = phi float [ %4768, %4744 ], [ 0.000000e+00, %4717 ]
  %4778 = phi float [ %4772, %4744 ], [ 0.000000e+00, %4717 ]
  %4779 = call float @dx.op.dot3.f32(i32 55, float %4774, float %4775, float %4776, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = fmul fast float %4779, %4779
  %4781 = fmul fast float %4780, 0x3FEE471020000000
  %4782 = fadd fast float %4781, 0xBFD42F6020000000
  %4783 = fmul fast float %4739, 0x3FD20DD760000000
  %4784 = fmul fast float %4782, %4778
  %4785 = fmul fast float %4777, 0x3FDF454380000000
  %4786 = fmul fast float %4785, %4779
  %4787 = fadd fast float %4786, %4783
  %4788 = fadd fast float %4787, %4784
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4774, float %4775, float %4776, float %4661, float %4662, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = fmul fast float %4789, 0x3FDF454380000000
  %4791 = fmul fast float %4789, %4789
  %4792 = fmul fast float %4791, 0x3FEE471020000000
  %4793 = fadd fast float %4792, 0xBFD42F6020000000
  %4794 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4777, float %4778, float 0x3FD20DD760000000, float %4790, float %4793)  ; Dot3(ax,ay,az,bx,by,bz)
  %4795 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4796 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = fcmp fast oeq float %4796, 0.000000e+00
  %4798 = fcmp fast oeq float %4795, 0.000000e+00
  %4799 = or i1 %4798, %4797
  br i1 %4799, label %4829, label %4800

; <label>:4800                                    ; preds = %4773
  %4801 = fsub fast float -0.000000e+00, %57
  %4802 = fsub fast float -0.000000e+00, %55
  %4803 = call float @dx.op.unary.f32(i32 24, float %4796)  ; Sqrt(value)
  %4804 = fdiv fast float %4803, %4795
  %4805 = fcmp fast ogt float %4804, 0x3FFB6F8900000000
  %4806 = select i1 %4805, float 0x3FFB6F8900000000, float %4804
  %4807 = fmul fast float %4806, 0x3FE8A23460000000
  %4808 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4809 = call float @dx.op.binary.f32(i32 35, float %4806, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4810 = fmul fast float %4808, %4795
  %4811 = fmul fast float %4809, 0x3FF279A740000000
  %4812 = fadd fast float %4811, -1.000000e+00
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4802, float %56, float %4801, float %4802, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = call float @dx.op.unary.f32(i32 25, float %4813)  ; Rsqrt(value)
  %4815 = fmul fast float %4814, %4801
  %4816 = fmul fast float %4814, %4802
  %4817 = fmul fast float %4814, %56
  %4818 = fmul fast float %4812, %4812
  %4819 = fsub fast float 1.000000e+00, %4818
  %4820 = fmul fast float %4809, 0x40005F8BE0000000
  %4821 = fsub fast float 0x400C5BF8A0000000, %4820
  %4822 = fdiv fast float %4810, %4821
  %4823 = fmul fast float %4822, 0x3FEE31C3C0000000
  %4824 = fmul fast float %4823, %4819
  %4825 = fmul fast float %4809, 0x3FDACB7480000000
  %4826 = fadd fast float %4825, 0xBFD7347680000000
  %4827 = fmul fast float %4826, %4822
  %4828 = fmul fast float %4827, %4819
  br label %4829

; <label>:4829                                    ; preds = %4800, %4773
  %4830 = phi float [ %4815, %4800 ], [ 0.000000e+00, %4773 ]
  %4831 = phi float [ %4816, %4800 ], [ 0.000000e+00, %4773 ]
  %4832 = phi float [ %4817, %4800 ], [ 0.000000e+00, %4773 ]
  %4833 = phi float [ %4824, %4800 ], [ 0.000000e+00, %4773 ]
  %4834 = phi float [ %4828, %4800 ], [ 0.000000e+00, %4773 ]
  %4835 = call float @dx.op.dot3.f32(i32 55, float %4830, float %4831, float %4832, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = fmul fast float %4835, %4835
  %4837 = fmul fast float %4836, 0x3FEE471020000000
  %4838 = fadd fast float %4837, 0xBFD42F6020000000
  %4839 = fmul fast float %4795, 0x3FD20DD760000000
  %4840 = fmul fast float %4838, %4834
  %4841 = fmul fast float %4833, 0x3FDF454380000000
  %4842 = fmul fast float %4841, %4835
  %4843 = fadd fast float %4842, %4839
  %4844 = fadd fast float %4843, %4840
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4830, float %4831, float %4832, float %4661, float %4662, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = fmul fast float %4845, 0x3FDF454380000000
  %4847 = fmul fast float %4845, %4845
  %4848 = fmul fast float %4847, 0x3FEE471020000000
  %4849 = fadd fast float %4848, 0xBFD42F6020000000
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4833, float %4834, float 0x3FD20DD760000000, float %4846, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4732, float 0.000000e+00)  ; FMax(a,b)
  %4852 = call float @dx.op.binary.f32(i32 35, float %4788, float 0.000000e+00)  ; FMax(a,b)
  %4853 = call float @dx.op.binary.f32(i32 35, float %4844, float 0.000000e+00)  ; FMax(a,b)
  %4854 = call float @dx.op.binary.f32(i32 35, float %4738, float 0.000000e+00)  ; FMax(a,b)
  %4855 = call float @dx.op.binary.f32(i32 35, float %4794, float 0.000000e+00)  ; FMax(a,b)
  %4856 = call float @dx.op.binary.f32(i32 35, float %4850, float 0.000000e+00)  ; FMax(a,b)
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 0
  %4859 = call float @dx.op.binary.f32(i32 36, float %4627, float %4858)  ; FMin(a,b)
  %4860 = fmul fast float %4859, %4665
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = bitcast float %4861 to i32
  %4863 = sub nsw i32 2129859010, %4862
  %4864 = bitcast i32 %4863 to float
  %4865 = call float @dx.op.binary.f32(i32 36, float %4628, float %4858)  ; FMin(a,b)
  %4866 = fmul fast float %4865, %4665
  %4867 = fsub fast float 1.000000e+00, %4866
  %4868 = bitcast float %4867 to i32
  %4869 = sub nsw i32 2129859010, %4868
  %4870 = bitcast i32 %4869 to float
  %4871 = call float @dx.op.binary.f32(i32 36, float %4629, float %4858)  ; FMin(a,b)
  %4872 = fmul fast float %4871, %4665
  %4873 = fsub fast float 1.000000e+00, %4872
  %4874 = bitcast float %4873 to i32
  %4875 = sub nsw i32 2129859010, %4874
  %4876 = bitcast i32 %4875 to float
  %4877 = fmul fast float %4851, %4664
  %4878 = fmul fast float %4877, %4864
  %4879 = fmul fast float %4852, %4664
  %4880 = fmul fast float %4879, %4870
  %4881 = fmul fast float %4853, %4664
  %4882 = fmul fast float %4881, %4876
  %4883 = call float @dx.op.binary.f32(i32 36, float %4630, float %4858)  ; FMin(a,b)
  %4884 = fmul fast float %4883, %4665
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = bitcast float %4885 to i32
  %4887 = sub nsw i32 2129859010, %4886
  %4888 = bitcast i32 %4887 to float
  %4889 = call float @dx.op.binary.f32(i32 36, float %4631, float %4858)  ; FMin(a,b)
  %4890 = fmul fast float %4889, %4665
  %4891 = fsub fast float 1.000000e+00, %4890
  %4892 = bitcast float %4891 to i32
  %4893 = sub nsw i32 2129859010, %4892
  %4894 = bitcast i32 %4893 to float
  %4895 = call float @dx.op.binary.f32(i32 36, float %4653, float %4858)  ; FMin(a,b)
  %4896 = fmul fast float %4895, %4665
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = bitcast float %4897 to i32
  %4899 = sub nsw i32 2129859010, %4898
  %4900 = bitcast i32 %4899 to float
  %4901 = fmul fast float %4854, %4664
  %4902 = fmul fast float %4901, %4888
  %4903 = fmul fast float %4855, %4664
  %4904 = fmul fast float %4903, %4894
  %4905 = fmul fast float %4856, %4664
  %4906 = fmul fast float %4905, %4900
  %4907 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4880, float %4882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4908 = select i1 %186, float 0.000000e+00, float %4878
  %4909 = select i1 %186, float %4907, float %4880
  %4910 = select i1 %186, float 0.000000e+00, float %4882
  %4911 = call float @dx.op.dot3.f32(i32 55, float %4902, float %4904, float %4906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4912 = select i1 %186, float 0.000000e+00, float %4902
  %4913 = select i1 %186, float %4911, float %4904
  %4914 = select i1 %186, float 0.000000e+00, float %4906
  %4915 = fmul fast float %4655, 9.843750e-01
  %4916 = fmul fast float %4636, 9.843750e-01
  %4917 = fadd fast float %4915, 7.812500e-03
  %4918 = fadd fast float %4916, 7.812500e-03
  %4919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4917, float %4918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4920 = extractvalue %dx.types.ResRet.f32 %4919, 2
  %4921 = extractvalue %dx.types.ResRet.f32 %4919, 3
  %4922 = fmul fast float %4920, %4630
  %4923 = fmul fast float %4920, %4631
  %4924 = fmul fast float %4920, %4653
  %4925 = fadd fast float %4922, %4921
  %4926 = fadd fast float %4923, %4921
  %4927 = fadd fast float %4924, %4921
  %4928 = fcmp fast ogt float %4025, 0.000000e+00
  br i1 %4928, label %4929, label %4955

; <label>:4929                                    ; preds = %4829
  %4930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4025, float %4655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.ResRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.ResRet.f32 %4930, 2
  %4934 = fadd fast float %4931, -5.000000e-01
  %4935 = fadd fast float %4932, -5.000000e-01
  %4936 = fadd fast float %4933, -5.000000e-01
  %4937 = fsub fast float 1.000000e+00, %4630
  %4938 = fsub fast float 1.000000e+00, %4631
  %4939 = fsub fast float 1.000000e+00, %4653
  %4940 = fmul fast float %4630, 4.000000e+00
  %4941 = fmul fast float %4940, %4937
  %4942 = fmul fast float %4941, %4934
  %4943 = fmul fast float %4631, 4.000000e+00
  %4944 = fmul fast float %4943, %4938
  %4945 = fmul fast float %4944, %4935
  %4946 = fmul fast float %4653, 4.000000e+00
  %4947 = fmul fast float %4946, %4939
  %4948 = fmul fast float %4947, %4936
  %4949 = fadd fast float %4942, %4925
  %4950 = fadd fast float %4945, %4926
  %4951 = fadd fast float %4948, %4927
  %4952 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  br label %4955

; <label>:4955                                    ; preds = %4929, %4829
  %4956 = phi float [ %4952, %4929 ], [ %4925, %4829 ]
  %4957 = phi float [ %4953, %4929 ], [ %4926, %4829 ]
  %4958 = phi float [ %4954, %4929 ], [ %4927, %4829 ]
  %4959 = call float @dx.op.binary.f32(i32 35, float %4957, float %4958)  ; FMax(a,b)
  %4960 = call float @dx.op.binary.f32(i32 35, float %4956, float %4959)  ; FMax(a,b)
  %4961 = fsub fast float 1.000000e+00, %4960
  %4962 = fmul fast float %4960, %4636
  %4963 = fadd fast float %4962, %4636
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.CBufRet.f32 %4964, 1
  %4967 = extractvalue %dx.types.CBufRet.f32 %4964, 2
  %4968 = extractvalue %dx.types.CBufRet.f32 %4964, 3
  %4969 = fmul fast float %4963, %4965
  %4970 = fadd fast float %4969, %4966
  %4971 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4972 = fmul fast float %4967, %4963
  %4973 = fadd fast float %4972, %4968
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fsub fast float 1.000000e+00, %4676
  %4976 = fadd fast float %4975, %4974
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fcmp fast olt float %4977, 1.000000e+00
  br i1 %4978, label %4979, label %5834

; <label>:4979                                    ; preds = %4955
  %4980 = fcmp fast olt float %4971, 1.000000e+00
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = fcmp fast ogt float %4982, 0.000000e+00
  %4984 = or i1 %4980, %4983
  %4985 = or i1 %4980, %4983
  %4986 = xor i1 %4985, true
  %4987 = zext i1 %4986 to i32
  br i1 %4984, label %4988, label %5231

; <label>:4988                                    ; preds = %4979
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 0
  %4991 = extractvalue %dx.types.CBufRet.f32 %4989, 1
  %4992 = extractvalue %dx.types.CBufRet.f32 %4989, 2
  %4993 = extractvalue %dx.types.CBufRet.f32 %4989, 3
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.CBufRet.f32 %4994, 1
  %4997 = extractvalue %dx.types.CBufRet.f32 %4994, 2
  %4998 = extractvalue %dx.types.CBufRet.f32 %4994, 3
  %4999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.CBufRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.CBufRet.f32 %4999, 2
  %5003 = extractvalue %dx.types.CBufRet.f32 %4999, 3
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5008 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.CBufRet.f32 %5009, 1
  %5012 = extractvalue %dx.types.CBufRet.f32 %5009, 2
  %5013 = extractvalue %dx.types.CBufRet.f32 %5009, 3
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.CBufRet.f32 %5014, 2
  %5018 = extractvalue %dx.types.CBufRet.f32 %5014, 3
  %5019 = call float @dx.op.dot3.f32(i32 55, float %5015, float %5016, float %5017, float %4661, float %4662, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %5020 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = call float @dx.op.unary.f32(i32 6, float %5020)  ; FAbs(value)
  %5022 = fmul fast float %5021, 8.000000e+00
  %5023 = fadd fast float %5022, -6.000000e+00
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = fmul fast float %5019, 8.000000e+00
  %5026 = fmul fast float %5025, %4982
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = fcmp fast ogt float %5027, 0.000000e+00
  br i1 %5028, label %5029, label %5206, !dx.controlflow.hints !85

; <label>:5029                                    ; preds = %4988
  %5030 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %5031 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %5032 = fsub fast float %5030, %5031
  %5033 = fmul fast float %5032, %4636
  %5034 = fadd fast float %5033, %5031
  %5035 = fmul fast float %199, 2.000000e+00
  %5036 = fmul fast float %200, 2.000000e+00
  %5037 = fadd fast float %5035, -1.000000e+00
  %5038 = fadd fast float %5036, -1.000000e+00
  %5039 = fmul fast float %5034, %5037
  %5040 = fmul fast float %5034, %5038
  %5041 = fadd fast float %5039, %85
  %5042 = fadd fast float %5040, %86
  %5043 = fmul fast float %5041, %4639
  %5044 = fmul fast float %5042, %4640
  %5045 = fadd fast float %4636, 0xBFE3333340000000
  %5046 = fmul fast float %5045, 0x4004000020000000
  %5047 = fsub fast float 1.000000e+00, %5046
  %5048 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5049 = fmul fast float %5048, 3.000000e+00
  %5050 = fadd fast float %5049, %199
  %5051 = call float @dx.op.unary.f32(i32 27, float %5050)  ; Round_ni(value)
  %5052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5043, float %5044, float %5051, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = fcmp fast une float %5053, 0xFFF0000000000000
  %5055 = fcmp fast une float %5053, 0x7FF0000000000000
  %5056 = and i1 %5054, %5055
  %5057 = fcmp fast olt float %5053, 0.000000e+00
  %5058 = call float @dx.op.unary.f32(i32 6, float %5053)  ; FAbs(value)
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = select i1 %5056, float 1.000000e+00, float 0.000000e+00
  %5061 = fmul fast float %5060, %5027
  %5062 = fcmp fast ogt float %5061, 0.000000e+00
  br i1 %5062, label %5063, label %5206, !dx.controlflow.hints !86

; <label>:5063                                    ; preds = %5029
  %5064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5065 = extractvalue %dx.types.CBufRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.CBufRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.CBufRet.f32 %5064, 2
  %5068 = select i1 %5057, float 0.000000e+00, float %5065
  %5069 = select i1 %5057, float 0.000000e+00, float %5066
  %5070 = select i1 %5057, float 0.000000e+00, float %5067
  %5071 = select i1 %5057, float %4990, float %5005
  %5072 = select i1 %5057, float %4995, float %5010
  %5073 = select i1 %5057, float %5000, float %5015
  %5074 = select i1 %5057, float %4991, float %5006
  %5075 = select i1 %5057, float %4996, float %5011
  %5076 = select i1 %5057, float %5001, float %5016
  %5077 = select i1 %5057, float %4992, float %5007
  %5078 = select i1 %5057, float %4997, float %5012
  %5079 = select i1 %5057, float %5002, float %5017
  %5080 = select i1 %5057, float %4993, float %5008
  %5081 = select i1 %5057, float %4998, float %5013
  %5082 = select i1 %5057, float %5003, float %5018
  %5083 = fadd fast float %5068, %144
  %5084 = fadd fast float %5069, %145
  %5085 = fadd fast float %5070, %146
  %5086 = fmul fast float %5083, %5071
  %5087 = call float @dx.op.tertiary.f32(i32 46, float %5084, float %5074, float %5086)  ; FMad(a,b,c)
  %5088 = call float @dx.op.tertiary.f32(i32 46, float %5085, float %5077, float %5087)  ; FMad(a,b,c)
  %5089 = fadd fast float %5088, %5080
  %5090 = fmul fast float %5083, %5072
  %5091 = call float @dx.op.tertiary.f32(i32 46, float %5084, float %5075, float %5090)  ; FMad(a,b,c)
  %5092 = call float @dx.op.tertiary.f32(i32 46, float %5085, float %5078, float %5091)  ; FMad(a,b,c)
  %5093 = fadd fast float %5092, %5081
  %5094 = fmul fast float %5083, %5073
  %5095 = call float @dx.op.tertiary.f32(i32 46, float %5084, float %5076, float %5094)  ; FMad(a,b,c)
  %5096 = call float @dx.op.tertiary.f32(i32 46, float %5085, float %5079, float %5095)  ; FMad(a,b,c)
  %5097 = fadd fast float %5096, %5082
  %5098 = fdiv fast float 1.000000e+00, %5097
  %5099 = fmul fast float %5098, %5089
  %5100 = fmul fast float %5098, %5093
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 0
  %5103 = extractvalue %dx.types.CBufRet.f32 %5101, 1
  %5104 = fmul fast float %5099, %5102
  %5105 = fmul fast float %5100, %5103
  %5106 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5107 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5108 = fadd fast float %5104, %5106
  %5109 = fadd fast float %5105, %5107
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5112 = fmul fast float %5111, %4661
  %5113 = fmul fast float %5111, %4662
  %5114 = fmul fast float %5111, %4663
  %5115 = fadd fast float %5112, %5083
  %5116 = fadd fast float %5113, %5084
  %5117 = fadd fast float %5114, %5085
  %5118 = fmul fast float %5115, %5071
  %5119 = call float @dx.op.tertiary.f32(i32 46, float %5116, float %5074, float %5118)  ; FMad(a,b,c)
  %5120 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5077, float %5119)  ; FMad(a,b,c)
  %5121 = fadd fast float %5120, %5080
  %5122 = fmul fast float %5115, %5072
  %5123 = call float @dx.op.tertiary.f32(i32 46, float %5116, float %5075, float %5122)  ; FMad(a,b,c)
  %5124 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5078, float %5123)  ; FMad(a,b,c)
  %5125 = fadd fast float %5124, %5081
  %5126 = fmul fast float %5115, %5073
  %5127 = call float @dx.op.tertiary.f32(i32 46, float %5116, float %5076, float %5126)  ; FMad(a,b,c)
  %5128 = call float @dx.op.tertiary.f32(i32 46, float %5117, float %5079, float %5127)  ; FMad(a,b,c)
  %5129 = fadd fast float %5128, %5082
  %5130 = fdiv fast float 1.000000e+00, %5129
  %5131 = fmul fast float %5130, %5121
  %5132 = fmul fast float %5130, %5125
  %5133 = fmul fast float %5108, 2.000000e+00
  %5134 = fadd fast float %5133, -1.000000e+00
  %5135 = call float @dx.op.unary.f32(i32 6, float %5134)  ; FAbs(value)
  %5136 = fmul fast float %5135, 5.000000e+00
  %5137 = fadd fast float %5136, -4.000000e+00
  %5138 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5139 = fmul fast float %5138, %5024
  %5140 = fsub fast float %5099, %5131
  %5141 = fmul fast float %5102, %5140
  %5142 = fmul fast float %5139, %5141
  %5143 = fsub fast float %5131, %5099
  %5144 = fmul fast float %5102, %5143
  %5145 = fadd fast float %5144, %5142
  %5146 = fsub fast float %5132, %5100
  %5147 = fmul fast float %5103, %5146
  %5148 = fmul fast float %5145, %5059
  %5149 = fmul fast float %5147, %5059
  %5150 = fadd fast float %5148, %5108
  %5151 = fadd fast float %5149, %5109
  %5152 = fsub fast float %5130, %5098
  %5153 = fmul fast float %5152, %5059
  %5154 = fadd fast float %5153, %5098
  %5155 = fdiv fast float 1.000000e+00, %5154
  %5156 = fadd fast float %4636, -1.000000e+00
  %5157 = fsub fast float %5155, %5097
  %5158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5159 = extractvalue %dx.types.CBufRet.f32 %5158, 2
  %5160 = fmul fast float %5159, %5155
  %5161 = fdiv fast float 1.600000e+02, %5160
  %5162 = fmul fast float %5156, %5156
  %5163 = fmul fast float %5162, 0xBFB5B17960000000
  %5164 = fmul fast float %5163, %5157
  %5165 = fmul fast float %5164, %5161
  %5166 = call float @dx.op.unary.f32(i32 21, float %5165)  ; Exp(value)
  %5167 = fmul fast float %5166, 0x3FF04B2960000000
  %5168 = fsub fast float 0x3FF04B2960000000, %5167
  %5169 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5170 = fmul fast float %5169, 4.000000e+00
  %5171 = fadd fast float %199, -5.000000e-01
  %5172 = fadd fast float %200, -5.000000e-01
  %5173 = fmul fast float %5169, 0x3FBEB851E0000000
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = fmul fast float %5174, %5171
  %5176 = fmul fast float %5174, %5172
  %5177 = fadd fast float %5150, %5175
  %5178 = fadd fast float %5151, %5176
  %5179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5177, float %5178, float undef, float undef, i32 0, i32 0, i32 undef, float %5170)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5180 = extractvalue %dx.types.ResRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.ResRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.ResRet.f32 %5179, 2
  %5183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.f32 %5183, 2
  %5185 = fmul fast float %5184, %5180
  %5186 = fmul fast float %5184, %5181
  %5187 = fmul fast float %5184, %5182
  %5188 = select i1 %186, float 0.000000e+00, float %5186
  %5189 = select i1 %186, float 0.000000e+00, float %5187
  %5190 = fmul fast float %5177, 2.000000e+00
  %5191 = fmul fast float %5178, 2.000000e+00
  %5192 = fadd fast float %5190, -1.000000e+00
  %5193 = fadd fast float %5191, -1.000000e+00
  %5194 = fmul fast float %5192, %5192
  %5195 = fsub fast float 1.000000e+00, %5194
  %5196 = call float @dx.op.unary.f32(i32 7, float %5195)  ; Saturate(value)
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = fmul fast float %5197, %5024
  %5199 = fadd fast float %5198, %5196
  %5200 = fmul fast float %5193, %5193
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = fmul fast float %5199, %5202
  %5204 = call float @dx.op.unary.f32(i32 7, float %5203)  ; Saturate(value)
  %5205 = fmul fast float %5204, %5061
  br label %5206

; <label>:5206                                    ; preds = %5063, %5029, %4988
  %5207 = phi float [ %5185, %5063 ], [ 0.000000e+00, %5029 ], [ 0.000000e+00, %4988 ]
  %5208 = phi float [ %5188, %5063 ], [ 0.000000e+00, %5029 ], [ 0.000000e+00, %4988 ]
  %5209 = phi float [ %5189, %5063 ], [ 0.000000e+00, %5029 ], [ 0.000000e+00, %4988 ]
  %5210 = phi float [ %5205, %5063 ], [ 0.000000e+00, %5029 ], [ 0.000000e+00, %4988 ]
  %5211 = fcmp fast olt float %5210, 1.000000e+00
  %5212 = or i1 %5211, %4986
  %5213 = zext i1 %5212 to i32
  %5214 = fmul fast float %5210, %4971
  %5215 = fsub fast float %5210, %5214
  %5216 = fsub fast float 1.000000e+00, %4977
  %5217 = fmul fast float %5215, %5216
  %5218 = fadd fast float %5217, %4977
  %5219 = fsub fast float %5218, %5215
  %5220 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5221 = fmul fast float %5220, %4912
  %5222 = fmul fast float %5220, %4913
  %5223 = fmul fast float %5220, %4914
  %5224 = fsub fast float -0.000000e+00, %5218
  %5225 = fmul fast float %5215, %5207
  %5226 = fmul fast float %5215, %5208
  %5227 = fmul fast float %5215, %5209
  %5228 = fadd fast float %5225, %5221
  %5229 = fadd fast float %5226, %5222
  %5230 = fadd fast float %5227, %5223
  br label %5231

; <label>:5231                                    ; preds = %5206, %4979
  %5232 = phi float [ %4977, %4979 ], [ %5224, %5206 ]
  %5233 = phi float [ %4912, %4979 ], [ %5228, %5206 ]
  %5234 = phi float [ %4913, %4979 ], [ %5229, %5206 ]
  %5235 = phi float [ %4914, %4979 ], [ %5230, %5206 ]
  %5236 = phi i32 [ %4987, %4979 ], [ %5213, %5206 ]
  %5237 = icmp eq i32 %5236, 0
  br i1 %5237, label %5834, label %5238

; <label>:5238                                    ; preds = %5231
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 2
  %5241 = extractvalue %dx.types.CBufRet.f32 %5239, 3
  %5242 = fmul fast float %5240, %85
  %5243 = fmul fast float %5241, %86
  %5244 = fptoui float %5242 to i32
  %5245 = fptoui float %5243 to i32
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = extractvalue %dx.types.CBufRet.f32 %5246, 2
  %5249 = extractvalue %dx.types.CBufRet.f32 %5246, 3
  %5250 = fadd fast float %80, -4.000000e+00
  %5251 = call float @dx.op.binary.f32(i32 35, float %5250, float 0.000000e+00)  ; FMax(a,b)
  %5252 = fadd fast float %5251, %5247
  %5253 = fmul fast float %5252, %5248
  %5254 = call float @dx.op.unary.f32(i32 23, float %5253)  ; Log(value)
  %5255 = fmul fast float %5254, %5249
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5258 = fmul fast float %5255, %5257
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.i32 %5260, 1
  %5262 = add i32 %5261, -1
  %5263 = uitofp i32 %5261 to float
  %5264 = fmul fast float %5263, %5259
  %5265 = fptoui float %5264 to i32
  %5266 = call i32 @dx.op.binary.i32(i32 40, i32 %5265, i32 %5262)  ; UMin(a,b)
  %5267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.i32 %5267, 2
  %5269 = extractvalue %dx.types.CBufRet.i32 %5267, 3
  %5270 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5245, i32 %5268, i32 %5244)  ; UMad(a,b,c)
  %5271 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5266, i32 %5269, i32 %5270)  ; UMad(a,b,c)
  %5272 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5273 = fptoui float %5272 to i32
  %5274 = lshr i32 %5273, 5
  %5275 = call i32 @dx.op.binary.i32(i32 40, i32 %5274, i32 8191)  ; UMin(a,b)
  %5276 = fcmp fast ogt float %4435, 0.000000e+00
  %5277 = fcmp fast ogt float %4663, 0.000000e+00
  %5278 = and i1 %5277, %5276
  br i1 %5278, label %5279, label %5308

; <label>:5279                                    ; preds = %5238
  %5280 = call float @dx.op.dot3.f32(i32 55, float %4661, float %4662, float %4663, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5281 = call float @dx.op.binary.f32(i32 35, float %5280, float -1.000000e+00)  ; FMax(a,b)
  %5282 = call float @dx.op.binary.f32(i32 36, float %5281, float 1.000000e+00)  ; FMin(a,b)
  %5283 = fmul fast float %5282, %5282
  %5284 = fsub fast float 1.000000e+00, %5283
  %5285 = fmul fast float %5284, 0x3FFC6E2300000000
  %5286 = fsub fast float 1.000000e+00, %5285
  %5287 = fcmp fast ogt float %5286, 0.000000e+00
  %5288 = call float @dx.op.unary.f32(i32 24, float %5286)  ; Sqrt(value)
  %5289 = fsub fast float 1.000000e+00, %5288
  %5290 = call float @dx.op.unary.f32(i32 23, float %5289)  ; Log(value)
  %5291 = fmul fast float %5290, 5.000000e+00
  %5292 = call float @dx.op.unary.f32(i32 21, float %5291)  ; Exp(value)
  %5293 = fmul fast float %5292, 0x3FEF591A60000000
  %5294 = fadd fast float %5293, 0x3F94DCB540000000
  %5295 = select i1 %5287, float %5294, float 1.000000e+00
  %5296 = fcmp fast oge float %5295, 1.000000e+00
  %5297 = fmul fast float %5280, 2.000000e+00
  %5298 = fadd fast float %5297, %4663
  %5299 = select i1 %5296, float %5298, float %4663
  %5300 = fsub fast float %5299, %4663
  %5301 = fmul fast float %5300, %4435
  %5302 = fadd fast float %5301, %4663
  %5303 = call float @dx.op.dot3.f32(i32 55, float %4661, float %4662, float %5302, float %4661, float %4662, float %5302)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = call float @dx.op.unary.f32(i32 25, float %5303)  ; Rsqrt(value)
  %5305 = fmul fast float %5304, %4661
  %5306 = fmul fast float %5304, %4662
  %5307 = fmul fast float %5302, %5304
  br label %5308

; <label>:5308                                    ; preds = %5279, %5238
  %5309 = phi float [ %5305, %5279 ], [ %4661, %5238 ]
  %5310 = phi float [ %5306, %5279 ], [ %4662, %5238 ]
  %5311 = phi float [ %5307, %5279 ], [ %4663, %5238 ]
  %5312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5313 = extractvalue %dx.types.CBufRet.i32 %5312, 2
  %5314 = add nsw i32 %5313, -1
  %5315 = call i32 @dx.op.binary.i32(i32 37, i32 %5314, i32 0)  ; IMax(a,b)
  %5316 = shl i32 %5275, 2
  %5317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.i32 %5317, 0
  %5319 = lshr i32 %5318, 16
  %5320 = and i32 %5318, 65535
  %5321 = lshr i32 %5318, 21
  %5322 = lshr i32 %5320, 5
  %5323 = call i32 @dx.op.binary.i32(i32 40, i32 %5322, i32 %5315)  ; UMin(a,b)
  %5324 = icmp ugt i32 %5321, %5323
  br i1 %5324, label %5706, label %5325

; <label>:5325                                    ; preds = %5308
  br label %5326

; <label>:5326                                    ; preds = %5695, %5325
  %5327 = phi float [ %5696, %5695 ], [ 0.000000e+00, %5325 ]
  %5328 = phi float [ %5697, %5695 ], [ 0.000000e+00, %5325 ]
  %5329 = phi float [ %5698, %5695 ], [ 0.000000e+00, %5325 ]
  %5330 = phi float [ %5699, %5695 ], [ 1.000000e+00, %5325 ]
  %5331 = phi i32 [ %5703, %5695 ], [ %5321, %5325 ]
  %5332 = phi float [ %5700, %5695 ], [ 0.000000e+00, %5325 ]
  %5333 = phi float [ %5701, %5695 ], [ 0.000000e+00, %5325 ]
  %5334 = phi float [ %5702, %5695 ], [ 0.000000e+00, %5325 ]
  %5335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.i32 %5335, 2
  %5337 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5271, i32 %5336, i32 %5331)  ; UMad(a,b,c)
  %5338 = shl i32 %5337, 2
  %5339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5338, i32 undef)  ; BufferLoad(srv,index,wot)
  %5340 = extractvalue %dx.types.ResRet.i32 %5339, 0
  %5341 = shl i32 %5331, 5
  %5342 = sub nsw i32 %5319, %5341
  %5343 = call i32 @dx.op.binary.i32(i32 37, i32 %5342, i32 0)  ; IMax(a,b)
  %5344 = call i32 @dx.op.binary.i32(i32 38, i32 %5343, i32 31)  ; IMin(a,b)
  %5345 = sub nsw i32 1, %5319
  %5346 = add nsw i32 %5345, %5320
  %5347 = call i32 @dx.op.binary.i32(i32 37, i32 %5346, i32 0)  ; IMax(a,b)
  %5348 = call i32 @dx.op.binary.i32(i32 38, i32 %5347, i32 32)  ; IMin(a,b)
  %5349 = and i32 %5348, 31
  %5350 = shl i32 -1, %5349
  %5351 = xor i32 %5350, -1
  %5352 = and i32 %5344, 31
  %5353 = shl i32 %5351, %5352
  %5354 = icmp eq i32 %5348, 32
  %5355 = select i1 %5354, i32 -1, i32 %5353
  %5356 = and i32 %5355, %5340
  %5357 = icmp eq i32 %5356, 0
  br i1 %5357, label %5695, label %5358

; <label>:5358                                    ; preds = %5326
  br label %5359

; <label>:5359                                    ; preds = %5469, %5358
  %5360 = phi float [ %5470, %5469 ], [ %5327, %5358 ]
  %5361 = phi float [ %5471, %5469 ], [ %5328, %5358 ]
  %5362 = phi float [ %5472, %5469 ], [ %5329, %5358 ]
  %5363 = phi float [ %5473, %5469 ], [ %5330, %5358 ]
  %5364 = phi i32 [ %5372, %5469 ], [ %5356, %5358 ]
  %5365 = phi float [ %5474, %5469 ], [ %5332, %5358 ]
  %5366 = phi float [ %5475, %5469 ], [ %5333, %5358 ]
  %5367 = phi float [ %5476, %5469 ], [ %5334, %5358 ]
  %5368 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5364)  ; FirstbitLo(value)
  %5369 = add i32 %5368, %5341
  %5370 = and i32 %5368, 31
  %5371 = shl i32 1, %5370
  %5372 = xor i32 %5371, %5364
  %5373 = mul i32 %5369, 72
  %5374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5373, i32 undef)  ; BufferLoad(srv,index,wot)
  %5375 = extractvalue %dx.types.ResRet.f32 %5374, 0
  %5376 = extractvalue %dx.types.ResRet.f32 %5374, 1
  %5377 = extractvalue %dx.types.ResRet.f32 %5374, 2
  %5378 = add i32 %5373, 12
  %5379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5378, i32 undef)  ; BufferLoad(srv,index,wot)
  %5380 = extractvalue %dx.types.ResRet.i32 %5379, 0
  %5381 = add i32 %5373, 16
  %5382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5381, i32 undef)  ; BufferLoad(srv,index,wot)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.ResRet.f32 %5382, 1
  %5385 = extractvalue %dx.types.ResRet.f32 %5382, 2
  %5386 = add i32 %5373, 28
  %5387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5386, i32 undef)  ; BufferLoad(srv,index,wot)
  %5388 = extractvalue %dx.types.ResRet.f32 %5387, 0
  %5389 = add i32 %5373, 32
  %5390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.ResRet.f32 %5390, 1
  %5393 = extractvalue %dx.types.ResRet.f32 %5390, 2
  %5394 = extractvalue %dx.types.ResRet.f32 %5390, 3
  %5395 = add i32 %5373, 48
  %5396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5395, i32 undef)  ; BufferLoad(srv,index,wot)
  %5397 = extractvalue %dx.types.ResRet.f32 %5396, 0
  %5398 = extractvalue %dx.types.ResRet.f32 %5396, 1
  %5399 = add i32 %5373, 56
  %5400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5399, i32 undef)  ; BufferLoad(srv,index,wot)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 0
  %5402 = extractvalue %dx.types.ResRet.f32 %5400, 1
  %5403 = add i32 %5373, 64
  %5404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5405 = extractvalue %dx.types.ResRet.f32 %5404, 0
  %5406 = extractvalue %dx.types.ResRet.f32 %5404, 1
  %5407 = mul i32 %5369, 60
  %5408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5407, i32 undef)  ; BufferLoad(srv,index,wot)
  %5409 = extractvalue %dx.types.ResRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.ResRet.f32 %5408, 1
  %5411 = extractvalue %dx.types.ResRet.f32 %5408, 2
  %5412 = add i32 %5407, 12
  %5413 = add i32 %5407, 48
  %5414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5413, i32 undef)  ; BufferLoad(srv,index,wot)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = and i32 %5380, 32767
  %5419 = bitcast float %5375 to i32
  %5420 = icmp eq i32 %5419, -1
  %5421 = bitcast float %5376 to i32
  %5422 = and i32 %5380, 32768
  %5423 = icmp ne i32 %5422, 0
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.CBufRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.CBufRet.f32 %5424, 2
  %5428 = fsub fast float %5409, %5425
  %5429 = fsub fast float %5410, %5426
  %5430 = fsub fast float %5411, %5427
  %5431 = fsub fast float %144, %5428
  %5432 = fsub fast float %145, %5429
  %5433 = fsub fast float %146, %5430
  %5434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5435, float %5436, float %5437)  ; Dot3(ax,ay,az,bx,by,bz)
  %5439 = add i32 %5407, 24
  %5440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5439, i32 undef)  ; BufferLoad(srv,index,wot)
  %5441 = extractvalue %dx.types.ResRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.ResRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.ResRet.f32 %5440, 2
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5441, float %5442, float %5443)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = add i32 %5407, 36
  %5446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.ResRet.f32 %5446, 1
  %5449 = extractvalue %dx.types.ResRet.f32 %5446, 2
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5447, float %5448, float %5449)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5452 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5453 = call float @dx.op.unary.f32(i32 6, float %5450)  ; FAbs(value)
  %5454 = fsub fast float %5415, %5451
  %5455 = fsub fast float %5416, %5452
  %5456 = fsub fast float %5417, %5453
  %5457 = fmul fast float %5454, %5383
  %5458 = fmul fast float %5455, %5384
  %5459 = fmul fast float %5456, %5385
  %5460 = call float @dx.op.binary.f32(i32 36, float %5458, float %5459)  ; FMin(a,b)
  %5461 = call float @dx.op.binary.f32(i32 36, float %5457, float %5460)  ; FMin(a,b)
  %5462 = call float @dx.op.unary.f32(i32 7, float %5461)  ; Saturate(value)
  %5463 = call float @dx.op.binary.f32(i32 36, float %5363, float %5462)  ; FMin(a,b)
  %5464 = uitofp i1 %5423 to float
  %5465 = fadd fast float %4435, 1.000000e+00
  %5466 = fsub fast float %5465, %5464
  %5467 = fmul fast float %5463, %5466
  %5468 = fcmp fast ogt float %5467, 0.000000e+00
  br i1 %5468, label %5478, label %5469

; <label>:5469                                    ; preds = %5620, %5359
  %5470 = phi float [ %5684, %5620 ], [ %5360, %5359 ]
  %5471 = phi float [ %5685, %5620 ], [ %5361, %5359 ]
  %5472 = phi float [ %5686, %5620 ], [ %5362, %5359 ]
  %5473 = phi float [ %5693, %5620 ], [ %5363, %5359 ]
  %5474 = phi float [ %5690, %5620 ], [ %5365, %5359 ]
  %5475 = phi float [ %5691, %5620 ], [ %5366, %5359 ]
  %5476 = phi float [ %5692, %5620 ], [ %5367, %5359 ]
  %5477 = icmp eq i32 %5364, %5371
  br i1 %5477, label %5694, label %5359

; <label>:5478                                    ; preds = %5359
  br i1 %5420, label %5536, label %5479

; <label>:5479                                    ; preds = %5478
  %5480 = fsub fast float -0.000000e+00, %5435
  %5481 = fsub fast float -0.000000e+00, %5436
  %5482 = fsub fast float -0.000000e+00, %5437
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5480, float %5481, float %5482)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = fsub fast float -0.000000e+00, %5483
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5480, float %5481, float %5482)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = fadd fast float %5485, %5398
  %5487 = fadd fast float %5397, %5485
  %5488 = fsub fast float -0.000000e+00, %5487
  %5489 = fcmp ogt float %5483, -0.000000e+00
  %5490 = select i1 %5489, float %5488, float %5486
  %5491 = call float @dx.op.unary.f32(i32 6, float %5484)  ; FAbs(value)
  %5492 = fdiv fast float 1.000000e+00, %5491
  %5493 = fmul fast float %5490, %5492
  %5494 = call float @dx.op.binary.f32(i32 35, float %5493, float 0.000000e+00)  ; FMax(a,b)
  %5495 = fsub fast float -0.000000e+00, %5441
  %5496 = fsub fast float -0.000000e+00, %5442
  %5497 = fsub fast float -0.000000e+00, %5443
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5495, float %5496, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = fsub fast float -0.000000e+00, %5498
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5495, float %5496, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fadd fast float %5500, %5402
  %5502 = fadd fast float %5401, %5500
  %5503 = fsub fast float -0.000000e+00, %5502
  %5504 = fcmp ogt float %5498, -0.000000e+00
  %5505 = select i1 %5504, float %5503, float %5501
  %5506 = call float @dx.op.unary.f32(i32 6, float %5499)  ; FAbs(value)
  %5507 = fdiv fast float 1.000000e+00, %5506
  %5508 = fmul fast float %5505, %5507
  %5509 = call float @dx.op.binary.f32(i32 35, float %5508, float 0.000000e+00)  ; FMax(a,b)
  %5510 = fsub fast float -0.000000e+00, %5447
  %5511 = fsub fast float -0.000000e+00, %5448
  %5512 = fsub fast float -0.000000e+00, %5449
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5510, float %5511, float %5512)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = fsub fast float -0.000000e+00, %5513
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5431, float %5432, float %5433, float %5510, float %5511, float %5512)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fadd fast float %5515, %5406
  %5517 = fadd fast float %5405, %5515
  %5518 = fsub fast float -0.000000e+00, %5517
  %5519 = fcmp ogt float %5513, -0.000000e+00
  %5520 = select i1 %5519, float %5518, float %5516
  %5521 = call float @dx.op.unary.f32(i32 6, float %5514)  ; FAbs(value)
  %5522 = fdiv fast float 1.000000e+00, %5521
  %5523 = fmul fast float %5520, %5522
  %5524 = call float @dx.op.binary.f32(i32 35, float %5523, float 0.000000e+00)  ; FMax(a,b)
  %5525 = call float @dx.op.binary.f32(i32 36, float %5509, float %5524)  ; FMin(a,b)
  %5526 = call float @dx.op.binary.f32(i32 36, float %5494, float %5525)  ; FMin(a,b)
  %5527 = fmul fast float %5526, %5309
  %5528 = fmul fast float %5526, %5310
  %5529 = fmul fast float %5526, %5311
  %5530 = fadd fast float %5527, %144
  %5531 = fadd fast float %5528, %145
  %5532 = fadd fast float %5529, %146
  %5533 = fsub fast float %5530, %5375
  %5534 = fsub fast float %5531, %5376
  %5535 = fsub fast float %5532, %5377
  br label %5543

; <label>:5536                                    ; preds = %5478
  %5537 = fmul fast float %5309, 8.096000e+03
  %5538 = fmul fast float %5310, 8.096000e+03
  %5539 = fmul fast float %5311, 8.096000e+03
  %5540 = fadd fast float %5537, %144
  %5541 = fadd fast float %5538, %145
  %5542 = fadd fast float %5539, %146
  br label %5543

; <label>:5543                                    ; preds = %5536, %5479
  %5544 = phi float [ %5309, %5536 ], [ %5533, %5479 ]
  %5545 = phi float [ %5310, %5536 ], [ %5534, %5479 ]
  %5546 = phi float [ %5311, %5536 ], [ %5535, %5479 ]
  %5547 = phi float [ %5540, %5536 ], [ %5530, %5479 ]
  %5548 = phi float [ %5541, %5536 ], [ %5531, %5479 ]
  %5549 = phi float [ %5542, %5536 ], [ %5532, %5479 ]
  %5550 = fcmp fast olt float %5394, 1.000000e+00
  br i1 %5550, label %5551, label %5582, !dx.controlflow.hints !87

; <label>:5551                                    ; preds = %5543
  %5552 = fmul fast float %5546, %5392
  %5553 = fmul fast float %5545, %5393
  %5554 = fsub fast float %5552, %5553
  %5555 = fmul fast float %5544, %5393
  %5556 = fmul fast float %5546, %5391
  %5557 = fsub fast float %5555, %5556
  %5558 = fmul fast float %5545, %5391
  %5559 = fmul fast float %5544, %5392
  %5560 = fsub fast float %5558, %5559
  %5561 = fmul fast float %5554, 2.000000e+00
  %5562 = fmul fast float %5557, 2.000000e+00
  %5563 = fmul fast float %5560, 2.000000e+00
  %5564 = fmul fast float %5561, %5394
  %5565 = fmul fast float %5562, %5394
  %5566 = fmul fast float %5563, %5394
  %5567 = fmul fast float %5563, %5392
  %5568 = fmul fast float %5562, %5393
  %5569 = fmul fast float %5561, %5393
  %5570 = fmul fast float %5563, %5391
  %5571 = fmul fast float %5562, %5391
  %5572 = fmul fast float %5561, %5392
  %5573 = fadd fast float %5567, %5544
  %5574 = fadd fast float %5573, %5564
  %5575 = fsub fast float %5574, %5568
  %5576 = fsub fast float %5545, %5570
  %5577 = fadd fast float %5576, %5565
  %5578 = fadd fast float %5577, %5569
  %5579 = fadd fast float %5566, %5546
  %5580 = fsub fast float %5579, %5572
  %5581 = fadd fast float %5580, %5571
  br label %5582

; <label>:5582                                    ; preds = %5551, %5543
  %5583 = phi float [ %5575, %5551 ], [ %5544, %5543 ]
  %5584 = phi float [ %5578, %5551 ], [ %5545, %5543 ]
  %5585 = phi float [ %5581, %5551 ], [ %5546, %5543 ]
  br i1 %5420, label %5617, label %5586

; <label>:5586                                    ; preds = %5582
  %5587 = fmul fast float %4636, 0x400187C840000000
  %5588 = fadd fast float %5587, 0xC00EFC2120000000
  %5589 = fmul fast float %5588, %4636
  %5590 = fadd fast float %5589, 0x3FE5D16340000000
  %5591 = fmul fast float %5590, %4636
  %5592 = fadd fast float %5591, 1.000000e+00
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fsub fast float %5547, %144
  %5595 = fsub fast float %5548, %145
  %5596 = fsub fast float %5549, %146
  %5597 = fsub fast float %5547, %5375
  %5598 = fsub fast float %5548, %5376
  %5599 = fsub fast float %5549, %5377
  %5600 = call float @dx.op.dot3.f32(i32 55, float %5594, float %5595, float %5596, float %5594, float %5595, float %5596)  ; Dot3(ax,ay,az,bx,by,bz)
  %5601 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5598, float %5599, float %5597, float %5598, float %5599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5602 = fadd fast float %5601, 0x3EE4F8B580000000
  %5603 = fdiv fast float %5600, %5602
  %5604 = bitcast float %5603 to i32
  %5605 = ashr i32 %5604, 1
  %5606 = add nsw i32 %5605, 532487669
  %5607 = bitcast i32 %5606 to float
  %5608 = fmul fast float %5607, %5593
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fmul fast float %5609, 0x4009981AE0000000
  %5611 = fsub fast float 0x40111BBD80000000, %5610
  %5612 = fmul fast float %5611, %5609
  %5613 = fadd fast float %5612, 0xC0009F6020000000
  %5614 = fmul fast float %5613, %5609
  %5615 = fadd fast float %5614, 1.000000e+00
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  br label %5620

; <label>:5617                                    ; preds = %5582
  %5618 = icmp ne i32 %5421, -1
  %5619 = zext i1 %5618 to i32
  br label %5620

; <label>:5620                                    ; preds = %5617, %5586
  %5621 = phi float [ %4636, %5617 ], [ %5616, %5586 ]
  %5622 = phi i32 [ %5619, %5617 ], [ 0, %5586 ]
  %5623 = fmul float %5621, 5.000000e+00
  %5624 = fsub float 5.000000e+00, %5623
  %5625 = icmp ne i32 %5622, 0
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 3
  %5628 = fadd fast float %5627, %5624
  %5629 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5628)  ; FMax(a,b)
  %5630 = call float @dx.op.unary.f32(i32 6, float %5583)  ; FAbs(value)
  %5631 = call float @dx.op.unary.f32(i32 6, float %5584)  ; FAbs(value)
  %5632 = fadd fast float %5631, %5630
  %5633 = call float @dx.op.unary.f32(i32 6, float %5585)  ; FAbs(value)
  %5634 = fadd fast float %5632, %5633
  %5635 = fcmp fast oeq float %5634, 0.000000e+00
  %5636 = fdiv fast float 1.000000e+00, %5634
  %5637 = select i1 %5635, float 1.000000e+00, float %5636
  %5638 = fmul fast float %5637, %5583
  %5639 = fmul fast float %5637, %5584
  %5640 = call float @dx.op.unary.f32(i32 6, float %5639)  ; FAbs(value)
  %5641 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %5642 = fsub fast float 1.000000e+00, %5640
  %5643 = fsub fast float 1.000000e+00, %5641
  %5644 = fcmp fast oge float %5638, 0.000000e+00
  %5645 = fcmp fast oge float %5639, 0.000000e+00
  %5646 = select i1 %5644, float 1.000000e+00, float -1.000000e+00
  %5647 = select i1 %5645, float 1.000000e+00, float -1.000000e+00
  %5648 = fcmp fast ole float %5585, 0.000000e+00
  %5649 = fmul fast float %5646, %5642
  %5650 = fmul fast float %5647, %5643
  %5651 = select i1 %5648, float %5649, float %5638
  %5652 = select i1 %5648, float %5650, float %5639
  %5653 = fmul fast float %5651, 5.000000e-01
  %5654 = fmul fast float %5652, 5.000000e-01
  %5655 = fadd fast float %5653, 5.000000e-01
  %5656 = fadd fast float %5654, 5.000000e-01
  %5657 = uitofp i32 %5418 to float
  %5658 = call float @dx.op.binary.f32(i32 36, float %5629, float 3.000000e+00)  ; FMin(a,b)
  %5659 = fadd fast float %5658, 2.000000e+00
  %5660 = call float @dx.op.unary.f32(i32 21, float %5659)  ; Exp(value)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5626, 1
  %5662 = fmul fast float %5661, %5660
  %5663 = fmul fast float %5662, 2.000000e+00
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = fmul fast float %5655, %5664
  %5666 = fmul fast float %5656, %5664
  %5667 = fadd fast float %5665, %5662
  %5668 = fadd fast float %5666, %5662
  %5669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5667, float %5668, float %5657, float undef, i32 0, i32 0, i32 undef, float %5629)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5670 = extractvalue %dx.types.ResRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.ResRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.ResRet.f32 %5669, 2
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 3
  %5675 = fmul fast float %5674, %5388
  %5676 = call float @dx.op.binary.f32(i32 36, float %4682, float %5675)  ; FMin(a,b)
  %5677 = select i1 %5625, float %5676, float %5675
  %5678 = fmul fast float %5670, %5467
  %5679 = fmul fast float %5678, %5677
  %5680 = fmul fast float %5671, %5467
  %5681 = fmul fast float %5680, %5677
  %5682 = fmul fast float %5672, %5467
  %5683 = fmul fast float %5682, %5677
  %5684 = fadd fast float %5679, %5360
  %5685 = fadd fast float %5681, %5361
  %5686 = fadd fast float %5683, %5362
  %5687 = fmul fast float %5547, %5467
  %5688 = fmul fast float %5548, %5467
  %5689 = fmul fast float %5549, %5467
  %5690 = fadd fast float %5687, %5365
  %5691 = fadd fast float %5688, %5366
  %5692 = fadd fast float %5689, %5367
  %5693 = fsub fast float %5363, %5467
  br label %5469

; <label>:5694                                    ; preds = %5469
  br label %5695

; <label>:5695                                    ; preds = %5694, %5326
  %5696 = phi float [ %5327, %5326 ], [ %5470, %5694 ]
  %5697 = phi float [ %5328, %5326 ], [ %5471, %5694 ]
  %5698 = phi float [ %5329, %5326 ], [ %5472, %5694 ]
  %5699 = phi float [ %5330, %5326 ], [ %5473, %5694 ]
  %5700 = phi float [ %5332, %5326 ], [ %5474, %5694 ]
  %5701 = phi float [ %5333, %5326 ], [ %5475, %5694 ]
  %5702 = phi float [ %5334, %5326 ], [ %5476, %5694 ]
  %5703 = add i32 %5331, 1
  %5704 = icmp ugt i32 %5703, %5323
  br i1 %5704, label %5705, label %5326, !llvm.loop !88

; <label>:5705                                    ; preds = %5695
  br label %5706

; <label>:5706                                    ; preds = %5705, %5308
  %5707 = phi float [ 0.000000e+00, %5308 ], [ %5696, %5705 ]
  %5708 = phi float [ 0.000000e+00, %5308 ], [ %5697, %5705 ]
  %5709 = phi float [ 0.000000e+00, %5308 ], [ %5698, %5705 ]
  %5710 = phi float [ 0.000000e+00, %5308 ], [ %5700, %5705 ]
  %5711 = phi float [ 0.000000e+00, %5308 ], [ %5701, %5705 ]
  %5712 = phi float [ 0.000000e+00, %5308 ], [ %5702, %5705 ]
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = select i1 %186, float 0.000000e+00, float %5707
  %5715 = select i1 %186, float %5713, float %5708
  %5716 = select i1 %186, float 0.000000e+00, float %5709
  %5717 = fcmp fast olt float %5232, 0.000000e+00
  %5718 = call float @dx.op.unary.f32(i32 6, float %5232)  ; FAbs(value)
  %5719 = fmul fast float %5718, %5233
  %5720 = fmul fast float %5718, %5234
  %5721 = fmul fast float %5718, %5235
  %5722 = select i1 %5717, float %5233, float %5719
  %5723 = select i1 %5717, float %5234, float %5720
  %5724 = select i1 %5717, float %5235, float %5721
  %5725 = fsub fast float 1.000000e+00, %5718
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = fmul fast float %5726, %5714
  %5728 = fmul fast float %5726, %5715
  %5729 = fmul fast float %5726, %5716
  %5730 = fadd fast float %5722, %5727
  %5731 = fadd fast float %5723, %5728
  %5732 = fadd fast float %5724, %5729
  %5733 = fcmp fast une float %4982, 0.000000e+00
  br i1 %5733, label %5834, label %5734

; <label>:5734                                    ; preds = %5706
  %5735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.CBufRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.CBufRet.f32 %5735, 2
  %5739 = extractvalue %dx.types.CBufRet.f32 %5735, 3
  %5740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5741 = extractvalue %dx.types.CBufRet.f32 %5740, 0
  %5742 = extractvalue %dx.types.CBufRet.f32 %5740, 1
  %5743 = extractvalue %dx.types.CBufRet.f32 %5740, 2
  %5744 = extractvalue %dx.types.CBufRet.f32 %5740, 3
  %5745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5746 = extractvalue %dx.types.CBufRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.CBufRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.CBufRet.f32 %5745, 2
  %5749 = extractvalue %dx.types.CBufRet.f32 %5745, 3
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %5748, float %4661, float %4662, float %4663)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5711, float %5712, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5752 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %5746, float %5747, float %5748)  ; Dot3(ax,ay,az,bx,by,bz)
  %5753 = fadd fast float %4636, -1.000000e+00
  %5754 = fsub fast float %5751, %5752
  %5755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5755, 2
  %5757 = fmul fast float %5756, %5751
  %5758 = fdiv fast float 1.600000e+02, %5757
  %5759 = fmul fast float %5753, %5753
  %5760 = fmul fast float %5759, 0xBFB5B17960000000
  %5761 = fmul fast float %5760, %5754
  %5762 = fmul fast float %5761, %5758
  %5763 = call float @dx.op.unary.f32(i32 21, float %5762)  ; Exp(value)
  %5764 = fmul fast float %5763, 0x3FF04B2960000000
  %5765 = fsub fast float 0x3FF04B2960000000, %5764
  %5766 = call float @dx.op.unary.f32(i32 7, float %5765)  ; Saturate(value)
  %5767 = fmul fast float %5766, 4.000000e+00
  %5768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5769 = extractvalue %dx.types.CBufRet.f32 %5768, 0
  %5770 = extractvalue %dx.types.CBufRet.f32 %5768, 1
  %5771 = extractvalue %dx.types.CBufRet.f32 %5768, 2
  %5772 = fadd fast float %5769, %5710
  %5773 = fadd fast float %5770, %5711
  %5774 = fadd fast float %5771, %5712
  %5775 = fmul fast float %5772, %5736
  %5776 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5737, float %5775)  ; FMad(a,b,c)
  %5777 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5738, float %5776)  ; FMad(a,b,c)
  %5778 = fadd fast float %5777, %5739
  %5779 = fmul fast float %5772, %5741
  %5780 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5742, float %5779)  ; FMad(a,b,c)
  %5781 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5743, float %5780)  ; FMad(a,b,c)
  %5782 = fadd fast float %5781, %5744
  %5783 = fmul fast float %5772, %5746
  %5784 = call float @dx.op.tertiary.f32(i32 46, float %5773, float %5747, float %5783)  ; FMad(a,b,c)
  %5785 = call float @dx.op.tertiary.f32(i32 46, float %5774, float %5748, float %5784)  ; FMad(a,b,c)
  %5786 = fadd fast float %5785, %5749
  %5787 = fdiv fast float %5778, %5786
  %5788 = fdiv fast float %5782, %5786
  %5789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5790 = extractvalue %dx.types.CBufRet.f32 %5789, 0
  %5791 = extractvalue %dx.types.CBufRet.f32 %5789, 1
  %5792 = fmul fast float %5790, %5787
  %5793 = fmul fast float %5791, %5788
  %5794 = extractvalue %dx.types.CBufRet.f32 %5789, 2
  %5795 = extractvalue %dx.types.CBufRet.f32 %5789, 3
  %5796 = fadd fast float %5792, %5794
  %5797 = fadd fast float %5793, %5795
  %5798 = fmul fast float %5750, 8.000000e+00
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = fmul fast float %5796, 2.000000e+00
  %5801 = fmul fast float %5797, 2.000000e+00
  %5802 = fadd fast float %5800, -1.000000e+00
  %5803 = fadd fast float %5801, -1.000000e+00
  %5804 = fmul fast float %5802, %5802
  %5805 = fsub fast float 1.000000e+00, %5804
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fmul fast float %5803, %5803
  %5808 = fsub fast float 1.000000e+00, %5807
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = fmul fast float %4982, %5806
  %5811 = fmul fast float %5810, %5809
  %5812 = call float @dx.op.unary.f32(i32 7, float %5811)  ; Saturate(value)
  %5813 = fmul fast float %5812, %5799
  %5814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5796, float %5797, float undef, float undef, i32 0, i32 0, i32 undef, float %5767)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5815 = extractvalue %dx.types.ResRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.ResRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.ResRet.f32 %5814, 2
  %5818 = select i1 %186, float 0.000000e+00, float %5816
  %5819 = select i1 %186, float 0.000000e+00, float %5817
  %5820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5821 = extractvalue %dx.types.CBufRet.f32 %5820, 2
  %5822 = fmul fast float %5821, %5815
  %5823 = fmul fast float %5818, %5821
  %5824 = fmul fast float %5819, %5821
  %5825 = fsub fast float %5822, %5714
  %5826 = fsub fast float %5823, %5715
  %5827 = fsub fast float %5824, %5716
  %5828 = fmul fast float %5825, %5813
  %5829 = fmul fast float %5826, %5813
  %5830 = fmul fast float %5827, %5813
  %5831 = fadd fast float %5828, %5714
  %5832 = fadd fast float %5829, %5715
  %5833 = fadd fast float %5830, %5716
  br label %5834

; <label>:5834                                    ; preds = %5734, %5706, %5231, %4955
  %5835 = phi float [ %5233, %5231 ], [ %5730, %5706 ], [ %4912, %4955 ], [ %5831, %5734 ]
  %5836 = phi float [ %5234, %5231 ], [ %5731, %5706 ], [ %4913, %4955 ], [ %5832, %5734 ]
  %5837 = phi float [ %5235, %5231 ], [ %5732, %5706 ], [ %4914, %4955 ], [ %5833, %5734 ]
  %5838 = fmul fast float %4961, %4908
  %5839 = fmul fast float %4961, %4909
  %5840 = fmul fast float %4961, %4910
  %5841 = call float @dx.op.dot3.f32(i32 55, float %4627, float %4628, float %4629, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = fcmp fast ogt float %5841, 0x3E7FF19E20000000
  %5843 = fdiv fast float 1.000000e+00, %5841
  %5844 = select i1 %5842, float %5843, float 0.000000e+00
  %5845 = fmul fast float %5844, %4627
  %5846 = fmul fast float %5844, %4628
  %5847 = fmul fast float %5844, %4629
  %5848 = fadd fast float %5845, -1.000000e+00
  %5849 = fadd fast float %5846, -1.000000e+00
  %5850 = fadd fast float %5847, -1.000000e+00
  %5851 = fmul fast float %5848, 5.000000e-01
  %5852 = fmul fast float %5849, 5.000000e-01
  %5853 = fmul fast float %5850, 5.000000e-01
  %5854 = fadd fast float %5851, 1.000000e+00
  %5855 = fadd fast float %5852, 1.000000e+00
  %5856 = fadd fast float %5853, 1.000000e+00
  %5857 = fmul fast float %5835, %4956
  %5858 = fmul fast float %5836, %4957
  %5859 = fmul fast float %5837, %4958
  %5860 = fsub fast float 1.000000e+00, %4655
  %5861 = bitcast float %5860 to i32
  %5862 = sitofp i32 %5861 to float
  %5863 = fmul fast float %5862, 5.000000e+00
  %5864 = fadd fast float %5863, 0xC1EFBF8940000000
  %5865 = fptosi float %5864 to i32
  %5866 = bitcast i32 %5865 to float
  %5867 = fmul fast float %5866, %4026
  %5868 = fmul fast float %4908, %5867
  %5869 = fmul fast float %5868, %4961
  %5870 = fmul fast float %5869, %5854
  %5871 = fmul fast float %4909, %5867
  %5872 = fmul fast float %5871, %4961
  %5873 = fmul fast float %5872, %5855
  %5874 = fmul fast float %4910, %5867
  %5875 = fmul fast float %5874, %4961
  %5876 = fmul fast float %5875, %5856
  %5877 = fmul fast float %5838, %4022
  %5878 = fmul fast float %5839, %4022
  %5879 = fmul fast float %5840, %4022
  %5880 = fadd fast float %5857, %4018
  %5881 = fadd fast float %5880, %5870
  %5882 = fmul fast float %5881, %4022
  %5883 = fadd fast float %5858, %4019
  %5884 = fadd fast float %5883, %5873
  %5885 = fmul fast float %5884, %4022
  %5886 = fadd fast float %5859, %4020
  %5887 = fadd fast float %5886, %5876
  %5888 = fmul fast float %5887, %4022
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 3
  %5891 = fcmp fast oeq float %5890, 0.000000e+00
  br i1 %5891, label %6110, label %5892

; <label>:5892                                    ; preds = %5834
  %5893 = extractvalue %dx.types.CBufRet.f32 %5889, 0
  %5894 = extractvalue %dx.types.CBufRet.f32 %5889, 1
  %5895 = extractvalue %dx.types.CBufRet.f32 %5889, 2
  %5896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5897 = extractvalue %dx.types.CBufRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.CBufRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.CBufRet.f32 %5896, 2
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5903 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = select i1 %186, float %5901, float %5897
  %5905 = select i1 %186, float %5903, float %5898
  %5906 = select i1 %186, float %5902, float %5899
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5909 = fcmp fast une float %5908, 0.000000e+00
  br i1 %5909, label %5910, label %5927

; <label>:5910                                    ; preds = %5892
  %5911 = fptoui float %85 to i32
  %5912 = fptoui float %86 to i32
  %5913 = lshr i32 %5911, 4
  %5914 = lshr i32 %5912, 4
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %5917 = fptoui float %5916 to i32
  %5918 = add i32 %5917, 15
  %5919 = lshr i32 %5918, 4
  %5920 = mul i32 %5919, %5914
  %5921 = add i32 %5920, %5913
  %5922 = shl i32 %5921, 3
  %5923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5922, i32 undef)  ; BufferLoad(srv,index,wot)
  %5924 = extractvalue %dx.types.ResRet.i32 %5923, 0
  %5925 = and i32 %5924, -268435456
  %5926 = icmp eq i32 %5925, -1342177280
  br i1 %5926, label %5932, label %5927

; <label>:5927                                    ; preds = %5910, %5892
  %5928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4641, float %4642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5929 = extractvalue %dx.types.ResRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.ResRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.ResRet.f32 %5928, 2
  br label %5932

; <label>:5932                                    ; preds = %5927, %5910
  %5933 = phi float [ %5929, %5927 ], [ 0.000000e+00, %5910 ]
  %5934 = phi float [ %5930, %5927 ], [ 0.000000e+00, %5910 ]
  %5935 = phi float [ %5931, %5927 ], [ 0.000000e+00, %5910 ]
  %5936 = call float @dx.op.binary.f32(i32 36, float %5934, float %5935)  ; FMin(a,b)
  %5937 = call float @dx.op.binary.f32(i32 36, float %5933, float %5936)  ; FMin(a,b)
  %5938 = fcmp fast ogt float %5937, 0.000000e+00
  br i1 %5938, label %5939, label %6110, !dx.controlflow.hints !90

; <label>:5939                                    ; preds = %5932
  %5940 = fmul fast float %5933, %5904
  %5941 = fmul fast float %5934, %5905
  %5942 = fmul fast float %5935, %5906
  %5943 = fsub fast float %5893, %4626
  %5944 = fsub fast float %5894, %4625
  %5945 = fsub fast float %5895, %4624
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5943, float %5944, float %5945, float %5943, float %5944, float %5945)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = call float @dx.op.unary.f32(i32 25, float %5946)  ; Rsqrt(value)
  %5948 = fmul fast float %5947, %5943
  %5949 = fmul fast float %5947, %5944
  %5950 = fmul fast float %5947, %5945
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5893, float %5894, float %5895, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4622, float %4621, float %5948, float %5949, float %5950)  ; Dot3(ax,ay,az,bx,by,bz)
  %5953 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5954 = fmul fast float %5953, %5953
  %5955 = fmul fast float %5954, %4680
  %5956 = call float @dx.op.unary.f32(i32 7, float %5955)  ; Saturate(value)
  %5957 = fmul fast float %5956, %5953
  %5958 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float %5948, float %5949, float %5950)  ; Dot3(ax,ay,az,bx,by,bz)
  %5959 = fmul fast float %5958, %5958
  %5960 = call float @dx.op.unary.f32(i32 6, float %5951)  ; FAbs(value)
  %5961 = fsub fast float 1.000000e+00, %4673
  %5962 = fmul fast float %4655, %4655
  %5963 = fmul fast float %5962, %5961
  %5964 = fadd fast float %5963, %4673
  %5965 = bitcast float %5964 to i32
  %5966 = ashr i32 %5965, 1
  %5967 = add nsw i32 %5966, 532487669
  %5968 = bitcast i32 %5967 to float
  %5969 = fadd fast float %5968, %4655
  %5970 = fmul fast float %4673, %5959
  %5971 = fsub fast float 1.000000e+00, %5959
  %5972 = fadd fast float %5971, %5970
  %5973 = fmul fast float %5960, %5960
  %5974 = fmul fast float %5973, %5961
  %5975 = fadd fast float %5974, %4673
  %5976 = bitcast float %5975 to i32
  %5977 = ashr i32 %5976, 1
  %5978 = add nsw i32 %5977, 532487669
  %5979 = bitcast i32 %5978 to float
  %5980 = fadd fast float %5979, %5960
  %5981 = fmul fast float %5972, %5972
  %5982 = fmul fast float %5981, %5969
  %5983 = fmul fast float %5982, %5980
  %5984 = fdiv fast float 0x3FF0A00000000000, %5983
  %5985 = fmul fast float %5984, %4673
  %5986 = call float @dx.op.unary.f32(i32 6, float %5952)  ; FAbs(value)
  %5987 = fsub fast float 1.000000e+00, %5986
  %5988 = bitcast float %5987 to i32
  %5989 = sitofp i32 %5988 to float
  %5990 = fmul fast float %5989, 5.000000e+00
  %5991 = fadd fast float %5990, 0xC1EFBF8940000000
  %5992 = fptosi float %5991 to i32
  %5993 = bitcast i32 %5992 to float
  %5994 = fsub fast float 1.000000e+00, %4630
  %5995 = fsub fast float 1.000000e+00, %4631
  %5996 = fsub fast float 1.000000e+00, %4653
  %5997 = fmul fast float %5993, %5994
  %5998 = fmul fast float %5993, %5995
  %5999 = fmul fast float %5993, %5996
  %6000 = fadd fast float %5997, %4630
  %6001 = fadd fast float %5998, %4631
  %6002 = fadd fast float %5999, %4653
  br i1 %4928, label %6003, label %6026

; <label>:6003                                    ; preds = %5939
  %6004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4025, float %5986, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6005 = extractvalue %dx.types.ResRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.ResRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.ResRet.f32 %6004, 2
  %6008 = fadd fast float %6005, -5.000000e-01
  %6009 = fadd fast float %6006, -5.000000e-01
  %6010 = fadd fast float %6007, -5.000000e-01
  %6011 = fmul fast float %4630, 4.000000e+00
  %6012 = fmul fast float %6011, %5994
  %6013 = fmul fast float %6012, %6008
  %6014 = fmul fast float %4631, 4.000000e+00
  %6015 = fmul fast float %6014, %5995
  %6016 = fmul fast float %6015, %6009
  %6017 = fmul fast float %4653, 4.000000e+00
  %6018 = fmul fast float %6017, %5996
  %6019 = fmul fast float %6018, %6010
  %6020 = fadd fast float %6013, %6000
  %6021 = fadd fast float %6016, %6001
  %6022 = fadd fast float %6019, %6002
  %6023 = call float @dx.op.unary.f32(i32 7, float %6020)  ; Saturate(value)
  %6024 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6025 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  br label %6026

; <label>:6026                                    ; preds = %6003, %5939
  %6027 = phi float [ %6023, %6003 ], [ %6000, %5939 ]
  %6028 = phi float [ %6024, %6003 ], [ %6001, %5939 ]
  %6029 = phi float [ %6025, %6003 ], [ %6002, %5939 ]
  %6030 = fmul fast float %5951, 9.843750e-01
  %6031 = fadd fast float %6030, 7.812500e-03
  %6032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6031, float %4918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6033 = extractvalue %dx.types.ResRet.f32 %6032, 2
  %6034 = extractvalue %dx.types.ResRet.f32 %6032, 3
  %6035 = fmul fast float %6033, %4630
  %6036 = fmul fast float %6033, %4631
  %6037 = fmul fast float %6033, %4653
  %6038 = fadd fast float %6035, %6034
  %6039 = fadd fast float %6036, %6034
  %6040 = fadd fast float %6037, %6034
  br i1 %4928, label %6041, label %6064

; <label>:6041                                    ; preds = %6026
  %6042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4025, float %5951, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6043 = extractvalue %dx.types.ResRet.f32 %6042, 0
  %6044 = extractvalue %dx.types.ResRet.f32 %6042, 1
  %6045 = extractvalue %dx.types.ResRet.f32 %6042, 2
  %6046 = fadd fast float %6043, -5.000000e-01
  %6047 = fadd fast float %6044, -5.000000e-01
  %6048 = fadd fast float %6045, -5.000000e-01
  %6049 = fmul fast float %4630, 4.000000e+00
  %6050 = fmul fast float %6049, %5994
  %6051 = fmul fast float %6050, %6046
  %6052 = fmul fast float %4631, 4.000000e+00
  %6053 = fmul fast float %6052, %5995
  %6054 = fmul fast float %6053, %6047
  %6055 = fmul fast float %4653, 4.000000e+00
  %6056 = fmul fast float %6055, %5996
  %6057 = fmul fast float %6056, %6048
  %6058 = fadd fast float %6051, %6038
  %6059 = fadd fast float %6054, %6039
  %6060 = fadd fast float %6057, %6040
  %6061 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6062 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6063 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  br label %6064

; <label>:6064                                    ; preds = %6041, %6026
  %6065 = phi float [ %6061, %6041 ], [ %6038, %6026 ]
  %6066 = phi float [ %6062, %6041 ], [ %6039, %6026 ]
  %6067 = phi float [ %6063, %6041 ], [ %6040, %6026 ]
  %6068 = call float @dx.op.binary.f32(i32 35, float %6066, float %6067)  ; FMax(a,b)
  %6069 = call float @dx.op.binary.f32(i32 35, float %6065, float %6068)  ; FMax(a,b)
  %6070 = fsub fast float 1.000000e+00, %6069
  %6071 = fmul fast float %6027, %5985
  %6072 = fmul fast float %6028, %5985
  %6073 = fmul fast float %6029, %5985
  %6074 = fsub fast float 1.000000e+00, %5952
  %6075 = bitcast float %6074 to i32
  %6076 = sitofp i32 %6075 to float
  %6077 = fmul fast float %6076, 5.000000e+00
  %6078 = fadd fast float %6077, 0xC1EFBF8940000000
  %6079 = fptosi float %6078 to i32
  %6080 = bitcast i32 %6079 to float
  %6081 = fmul fast float %6080, %4026
  %6082 = fmul fast float %6070, %6081
  %6083 = fmul fast float %6082, %5854
  %6084 = fmul fast float %6082, %5855
  %6085 = fmul fast float %6082, %5856
  %6086 = fadd fast float %6083, %6071
  %6087 = fadd fast float %6084, %6072
  %6088 = fadd fast float %6085, %6073
  %6089 = fmul fast float %5957, %5940
  %6090 = fmul fast float %6089, %6070
  %6091 = fmul fast float %5957, %5941
  %6092 = fmul fast float %6091, %6070
  %6093 = fmul fast float %5957, %5942
  %6094 = fmul fast float %6093, %6070
  %6095 = fmul fast float %6089, %6086
  %6096 = fmul fast float %6091, %6087
  %6097 = fmul fast float %6093, %6088
  %6098 = fadd fast float %6090, %5838
  %6099 = fmul fast float %6098, %4022
  %6100 = fadd fast float %6092, %5839
  %6101 = fmul fast float %6100, %4022
  %6102 = fadd fast float %6094, %5840
  %6103 = fmul fast float %6102, %4022
  %6104 = fadd fast float %6095, %5881
  %6105 = fmul fast float %6104, %4022
  %6106 = fadd fast float %6096, %5884
  %6107 = fmul fast float %6106, %4022
  %6108 = fadd fast float %6097, %5887
  %6109 = fmul fast float %6108, %4022
  br label %6110

; <label>:6110                                    ; preds = %6064, %5932, %5834
  %6111 = phi float [ %5882, %5834 ], [ %5882, %5932 ], [ %6105, %6064 ]
  %6112 = phi float [ %5885, %5834 ], [ %5885, %5932 ], [ %6107, %6064 ]
  %6113 = phi float [ %5888, %5834 ], [ %5888, %5932 ], [ %6109, %6064 ]
  %6114 = phi float [ %5877, %5834 ], [ %5877, %5932 ], [ %6099, %6064 ]
  %6115 = phi float [ %5878, %5834 ], [ %5878, %5932 ], [ %6101, %6064 ]
  %6116 = phi float [ %5879, %5834 ], [ %5879, %5932 ], [ %6103, %6064 ]
  %6117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.i32 %6117, 0
  %6119 = icmp eq i32 %6118, 0
  br i1 %6119, label %6550, label %6120

; <label>:6120                                    ; preds = %6110
  %6121 = fptoui float %85 to i32
  %6122 = fptoui float %86 to i32
  %6123 = lshr i32 %6121, 4
  %6124 = lshr i32 %6122, 4
  %6125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.i32 %6125, 0
  %6127 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6124, i32 %6126, i32 %6123)  ; UMad(a,b,c)
  %6128 = add nsw i32 %6118, -1
  %6129 = call i32 @dx.op.binary.i32(i32 37, i32 %6128, i32 0)  ; IMax(a,b)
  %6130 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6131 = fptoui float %6130 to i32
  %6132 = lshr i32 %6131, 5
  %6133 = call i32 @dx.op.binary.i32(i32 40, i32 %6132, i32 8191)  ; UMin(a,b)
  %6134 = shl i32 %6133, 2
  %6135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6134, i32 undef)  ; BufferLoad(srv,index,wot)
  %6136 = extractvalue %dx.types.ResRet.i32 %6135, 0
  %6137 = lshr i32 %6136, 16
  %6138 = and i32 %6136, 65535
  %6139 = lshr i32 %6136, 21
  %6140 = lshr i32 %6138, 5
  %6141 = call i32 @dx.op.binary.i32(i32 40, i32 %6140, i32 %6129)  ; UMin(a,b)
  %6142 = icmp ugt i32 %6139, %6141
  br i1 %6142, label %6550, label %6143

; <label>:6143                                    ; preds = %6120
  br label %6144

; <label>:6144                                    ; preds = %6540, %6143
  %6145 = phi i32 [ %6547, %6540 ], [ %6139, %6143 ]
  %6146 = phi float [ %6541, %6540 ], [ %6111, %6143 ]
  %6147 = phi float [ %6542, %6540 ], [ %6112, %6143 ]
  %6148 = phi float [ %6543, %6540 ], [ %6113, %6143 ]
  %6149 = phi float [ %6544, %6540 ], [ %6114, %6143 ]
  %6150 = phi float [ %6545, %6540 ], [ %6115, %6143 ]
  %6151 = phi float [ %6546, %6540 ], [ %6116, %6143 ]
  %6152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6153 = extractvalue %dx.types.CBufRet.i32 %6152, 0
  %6154 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6127, i32 %6153, i32 %6145)  ; UMad(a,b,c)
  %6155 = shl i32 %6154, 2
  %6156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6155, i32 undef)  ; BufferLoad(srv,index,wot)
  %6157 = extractvalue %dx.types.ResRet.i32 %6156, 0
  %6158 = shl i32 %6145, 5
  %6159 = sub nsw i32 %6137, %6158
  %6160 = call i32 @dx.op.binary.i32(i32 37, i32 %6159, i32 0)  ; IMax(a,b)
  %6161 = call i32 @dx.op.binary.i32(i32 38, i32 %6160, i32 31)  ; IMin(a,b)
  %6162 = sub nsw i32 1, %6137
  %6163 = add nsw i32 %6162, %6138
  %6164 = call i32 @dx.op.binary.i32(i32 37, i32 %6163, i32 0)  ; IMax(a,b)
  %6165 = call i32 @dx.op.binary.i32(i32 38, i32 %6164, i32 32)  ; IMin(a,b)
  %6166 = and i32 %6165, 31
  %6167 = shl i32 -1, %6166
  %6168 = xor i32 %6167, -1
  %6169 = and i32 %6161, 31
  %6170 = shl i32 %6168, %6169
  %6171 = icmp eq i32 %6165, 32
  %6172 = select i1 %6171, i32 -1, i32 %6170
  %6173 = and i32 %6172, %6157
  %6174 = icmp eq i32 %6173, 0
  br i1 %6174, label %6540, label %6175

; <label>:6175                                    ; preds = %6144
  br label %6176

; <label>:6176                                    ; preds = %6256, %6175
  %6177 = phi i32 [ %6188, %6256 ], [ %6173, %6175 ]
  %6178 = phi float [ %6257, %6256 ], [ %6146, %6175 ]
  %6179 = phi float [ %6258, %6256 ], [ %6147, %6175 ]
  %6180 = phi float [ %6259, %6256 ], [ %6148, %6175 ]
  %6181 = phi float [ %6260, %6256 ], [ %6149, %6175 ]
  %6182 = phi float [ %6261, %6256 ], [ %6150, %6175 ]
  %6183 = phi float [ %6262, %6256 ], [ %6151, %6175 ]
  %6184 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6177)  ; FirstbitLo(value)
  %6185 = add i32 %6184, %6158
  %6186 = and i32 %6184, 31
  %6187 = shl i32 1, %6186
  %6188 = xor i32 %6187, %6177
  %6189 = mul i32 %6185, 112
  %6190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6189, i32 undef)  ; BufferLoad(srv,index,wot)
  %6191 = extractvalue %dx.types.ResRet.f32 %6190, 0
  %6192 = extractvalue %dx.types.ResRet.f32 %6190, 1
  %6193 = extractvalue %dx.types.ResRet.f32 %6190, 2
  %6194 = or i32 %6189, 12
  %6195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6194, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.f32 %6195, 0
  %6197 = add i32 %6189, 44
  %6198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6197, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.f32 %6198, 0
  %6200 = add i32 %6189, 48
  %6201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.ResRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.ResRet.f32 %6201, 2
  %6205 = add i32 %6189, 80
  %6206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6208 = extractvalue %dx.types.ResRet.f32 %6206, 2
  %6209 = call float @dx.op.dot3.f32(i32 55, float %6191, float %6192, float %6193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = select i1 %186, float %6207, float %6191
  %6211 = select i1 %186, float %6209, float %6192
  %6212 = select i1 %186, float %6208, float %6193
  %6213 = fsub fast float %6202, %144
  %6214 = fsub fast float %6203, %145
  %6215 = fsub fast float %6204, %146
  %6216 = call float @dx.op.dot3.f32(i32 55, float %6213, float %6214, float %6215, float %6213, float %6214, float %6215)  ; Dot3(ax,ay,az,bx,by,bz)
  %6217 = call float @dx.op.unary.f32(i32 24, float %6216)  ; Sqrt(value)
  %6218 = fdiv fast float 1.000000e+00, %6217
  %6219 = fmul fast float %6218, %6213
  %6220 = fmul fast float %6218, %6214
  %6221 = fmul fast float %6218, %6215
  %6222 = fadd fast float %6217, %6196
  %6223 = fdiv fast float 1.000000e+00, %6222
  %6224 = fmul float %6199, %6223
  %6225 = fmul float %6224, %6224
  %6226 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  %6227 = and i32 %6187, %6173
  %6228 = icmp eq i32 %6227, 0
  br i1 %6228, label %6251, label %6229, !dx.controlflow.hints !91

; <label>:6229                                    ; preds = %6176
  %6230 = lshr i32 %6121, 5
  %6231 = lshr i32 %6122, 5
  %6232 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6230, i32 %6231, i32 %6185, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6233 = extractvalue %dx.types.ResRet.i32 %6232, 0
  %6234 = and i32 %6233, 3
  %6235 = icmp eq i32 %6234, 0
  %6236 = select i1 %6235, float 1.000000e+00, float 0.000000e+00
  %6237 = icmp eq i32 %6234, 3
  br i1 %6237, label %6238, label %6251

; <label>:6238                                    ; preds = %6229
  %6239 = lshr i32 %6233, 10
  %6240 = and i32 %6239, 8160
  %6241 = and i32 %6122, 31
  %6242 = or i32 %6240, %6241
  %6243 = lshr i32 %6233, 1
  %6244 = and i32 %6243, 16352
  %6245 = and i32 %6121, 31
  %6246 = or i32 %6244, %6245
  %6247 = lshr i32 %6233, 23
  %6248 = and i32 %6247, 255
  %6249 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6246, i32 %6242, i32 %6248, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6250 = extractvalue %dx.types.ResRet.f32 %6249, 0
  br label %6251

; <label>:6251                                    ; preds = %6238, %6229, %6176
  %6252 = phi float [ %6250, %6238 ], [ %6236, %6229 ], [ 0.000000e+00, %6176 ]
  %6253 = call float @dx.op.binary.f32(i32 36, float %6252, float %6252)  ; FMin(a,b)
  %6254 = call float @dx.op.binary.f32(i32 36, float %6252, float %6253)  ; FMin(a,b)
  %6255 = fcmp fast ogt float %6254, 0.000000e+00
  br i1 %6255, label %6264, label %6256, !dx.controlflow.hints !92

; <label>:6256                                    ; preds = %6496, %6251
  %6257 = phi float [ %6178, %6251 ], [ %6536, %6496 ]
  %6258 = phi float [ %6179, %6251 ], [ %6537, %6496 ]
  %6259 = phi float [ %6180, %6251 ], [ %6538, %6496 ]
  %6260 = phi float [ %6181, %6251 ], [ %6530, %6496 ]
  %6261 = phi float [ %6182, %6251 ], [ %6531, %6496 ]
  %6262 = phi float [ %6183, %6251 ], [ %6532, %6496 ]
  %6263 = icmp eq i32 %6177, %6187
  br i1 %6263, label %6539, label %6176

; <label>:6264                                    ; preds = %6251
  %6265 = fmul fast float %6252, %6210
  %6266 = fmul fast float %6252, %6211
  %6267 = fmul fast float %6252, %6212
  %6268 = fsub fast float %6204, %4426
  %6269 = fcmp fast ogt float %6268, 0.000000e+00
  %6270 = fsub fast float %146, %4426
  %6271 = fcmp fast ogt float %6270, 0.000000e+00
  %6272 = xor i1 %6271, %6269
  %6273 = fsub fast float %4426, %6204
  %6274 = fmul fast float %6273, 2.000000e+00
  %6275 = fadd fast float %6274, %6204
  %6276 = select i1 %6272, float %6204, float %6275
  %6277 = fsub fast float %6276, %146
  %6278 = call float @dx.op.dot3.f32(i32 55, float %6213, float %6214, float %6277, float %6213, float %6214, float %6277)  ; Dot3(ax,ay,az,bx,by,bz)
  %6279 = call float @dx.op.unary.f32(i32 25, float %6278)  ; Rsqrt(value)
  %6280 = fmul fast float %6279, %6213
  %6281 = fmul fast float %6279, %6214
  %6282 = fmul fast float %6279, %6277
  %6283 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4434)  ; Dot3(ax,ay,az,bx,by,bz)
  %6284 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6280, float %6281, float %6282)  ; Dot3(ax,ay,az,bx,by,bz)
  %6285 = fdiv fast float 1.000000e+00, %6284
  %6286 = fmul fast float %6285, %6283
  %6287 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6270, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6288 = fcmp fast ogt float %6287, 0.000000e+00
  %6289 = fcmp fast olt float %6287, 0.000000e+00
  %6290 = zext i1 %6288 to i32
  %6291 = zext i1 %6289 to i32
  %6292 = sub nsw i32 %6290, %6291
  %6293 = sitofp i32 %6292 to float
  %6294 = fsub fast float %6276, %4426
  %6295 = call float @dx.op.dot3.f32(i32 55, float %6213, float %6214, float %6294, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6296 = fcmp fast ogt float %6295, 0.000000e+00
  %6297 = fcmp fast olt float %6295, 0.000000e+00
  %6298 = zext i1 %6296 to i32
  %6299 = zext i1 %6297 to i32
  %6300 = sub nsw i32 %6298, %6299
  %6301 = sitofp i32 %6300 to float
  %6302 = fcmp fast une float %6293, %6301
  br i1 %6302, label %6303, label %6313

; <label>:6303                                    ; preds = %6264
  %6304 = fmul fast float %6286, %6282
  %6305 = fmul fast float %6286, %6281
  %6306 = fmul fast float %6286, %6280
  %6307 = fmul fast float %6306, %6306
  %6308 = fmul fast float %6305, %6305
  %6309 = fadd fast float %6307, %6308
  %6310 = fmul fast float %6304, %6304
  %6311 = fadd fast float %6309, %6310
  %6312 = call float @dx.op.unary.f32(i32 24, float %6311)  ; Sqrt(value)
  br label %6325

; <label>:6313                                    ; preds = %6264
  %6314 = icmp slt i32 %6292, 0
  br i1 %6314, label %6315, label %6325

; <label>:6315                                    ; preds = %6313
  %6316 = fsub fast float %144, %6202
  %6317 = fsub fast float %145, %6203
  %6318 = fsub fast float %146, %6276
  %6319 = fmul fast float %6316, %6316
  %6320 = fmul fast float %6317, %6317
  %6321 = fadd fast float %6319, %6320
  %6322 = fmul fast float %6318, %6318
  %6323 = fadd fast float %6321, %6322
  %6324 = call float @dx.op.unary.f32(i32 24, float %6323)  ; Sqrt(value)
  br label %6325

; <label>:6325                                    ; preds = %6315, %6313, %6303
  %6326 = phi float [ %6312, %6303 ], [ %6324, %6315 ], [ 0.000000e+00, %6313 ]
  %6327 = and i1 %6271, %6269
  %6328 = fsub fast float -0.000000e+00, %6326
  %6329 = select i1 %6327, float -0.000000e+00, float %6328
  %6330 = fmul fast float %4427, 0x3FF7154760000000
  %6331 = fmul fast float %6330, %6329
  %6332 = fmul fast float %4428, 0x3FF7154760000000
  %6333 = fmul fast float %6332, %6329
  %6334 = fmul fast float %4429, 0x3FF7154760000000
  %6335 = fmul fast float %6334, %6329
  %6336 = call float @dx.op.unary.f32(i32 21, float %6331)  ; Exp(value)
  %6337 = call float @dx.op.unary.f32(i32 21, float %6333)  ; Exp(value)
  %6338 = call float @dx.op.unary.f32(i32 21, float %6335)  ; Exp(value)
  %6339 = call float @dx.op.unary.f32(i32 7, float %6336)  ; Saturate(value)
  %6340 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6341 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6342 = fmul fast float %6265, %6339
  %6343 = fmul fast float %6266, %6340
  %6344 = fmul fast float %6267, %6341
  %6345 = fsub fast float %6219, %4626
  %6346 = fsub fast float %6220, %4625
  %6347 = fsub fast float %6221, %4624
  %6348 = call float @dx.op.dot3.f32(i32 55, float %6345, float %6346, float %6347, float %6345, float %6346, float %6347)  ; Dot3(ax,ay,az,bx,by,bz)
  %6349 = call float @dx.op.unary.f32(i32 25, float %6348)  ; Rsqrt(value)
  %6350 = fmul fast float %6349, %6345
  %6351 = fmul fast float %6349, %6346
  %6352 = fmul fast float %6349, %6347
  %6353 = call float @dx.op.dot3.f32(i32 55, float %6219, float %6220, float %6221, float %4633, float %4634, float %4635)  ; Dot3(ax,ay,az,bx,by,bz)
  %6354 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4622, float %4621, float %6350, float %6351, float %6352)  ; Dot3(ax,ay,az,bx,by,bz)
  %6355 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6356 = fmul fast float %6355, %6226
  %6357 = fmul fast float %6355, %6355
  %6358 = fmul fast float %6357, %4680
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = fmul fast float %6356, %6359
  %6361 = bitcast float %6216 to i32
  %6362 = ashr i32 %6361, 1
  %6363 = sub nsw i32 1597463007, %6362
  %6364 = bitcast i32 %6363 to float
  %6365 = fmul fast float %6364, %6213
  %6366 = fmul fast float %6364, %6214
  %6367 = fmul fast float %6364, %6215
  %6368 = fsub fast float %6365, %4626
  %6369 = fsub fast float %6366, %4625
  %6370 = fsub fast float %6367, %4624
  %6371 = call float @dx.op.dot3.f32(i32 55, float %6368, float %6369, float %6370, float %6368, float %6369, float %6370)  ; Dot3(ax,ay,az,bx,by,bz)
  %6372 = call float @dx.op.unary.f32(i32 25, float %6371)  ; Rsqrt(value)
  %6373 = fmul fast float %6368, %6372
  %6374 = fmul fast float %6369, %6372
  %6375 = fmul fast float %6370, %6372
  %6376 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4634, float %4635, float %6373, float %6374, float %6375)  ; Dot3(ax,ay,az,bx,by,bz)
  %6377 = fmul fast float %6376, %6376
  %6378 = call float @dx.op.unary.f32(i32 6, float %6353)  ; FAbs(value)
  %6379 = fsub fast float 1.000000e+00, %4673
  %6380 = fmul fast float %4655, %4655
  %6381 = fmul fast float %6380, %6379
  %6382 = fadd fast float %6381, %4673
  %6383 = bitcast float %6382 to i32
  %6384 = ashr i32 %6383, 1
  %6385 = add nsw i32 %6384, 532487669
  %6386 = bitcast i32 %6385 to float
  %6387 = fadd fast float %6386, %4655
  %6388 = fmul fast float %4673, %6377
  %6389 = fsub fast float 1.000000e+00, %6377
  %6390 = fadd fast float %6389, %6388
  %6391 = fmul fast float %6378, %6378
  %6392 = fmul fast float %6391, %6379
  %6393 = fadd fast float %6392, %4673
  %6394 = bitcast float %6393 to i32
  %6395 = ashr i32 %6394, 1
  %6396 = add nsw i32 %6395, 532487669
  %6397 = bitcast i32 %6396 to float
  %6398 = fadd fast float %6397, %6378
  %6399 = fmul fast float %6390, %6390
  %6400 = fmul fast float %6399, %6387
  %6401 = fmul fast float %6400, %6398
  %6402 = fdiv fast float 1.000000e+00, %6401
  %6403 = bitcast float %4673 to i32
  %6404 = sitofp i32 %6403 to float
  %6405 = fmul fast float %6404, 0x3FE7F73180000000
  %6406 = fadd fast float %6405, 0x41AFE27C40000000
  %6407 = fptosi float %6406 to i32
  %6408 = bitcast i32 %6407 to float
  %6409 = fmul fast float %6199, 0x3FD80E9D60000000
  %6410 = fmul fast float %6409, %6364
  %6411 = fadd fast float %6408, %6410
  %6412 = bitcast float %6411 to i32
  %6413 = sub nsw i32 2129859010, %6412
  %6414 = bitcast i32 %6413 to float
  %6415 = fmul fast float %4673, %6402
  %6416 = fmul fast float %6415, %6408
  %6417 = fmul fast float %6416, %6414
  %6418 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6419 = fsub fast float 1.000000e+00, %6418
  %6420 = bitcast float %6419 to i32
  %6421 = sitofp i32 %6420 to float
  %6422 = fmul fast float %6421, 5.000000e+00
  %6423 = fadd fast float %6422, 0xC1EFBF8940000000
  %6424 = fptosi float %6423 to i32
  %6425 = bitcast i32 %6424 to float
  %6426 = fsub fast float 1.000000e+00, %4630
  %6427 = fsub fast float 1.000000e+00, %4631
  %6428 = fsub fast float 1.000000e+00, %4653
  %6429 = fmul fast float %6425, %6426
  %6430 = fmul fast float %6425, %6427
  %6431 = fmul fast float %6425, %6428
  %6432 = fadd fast float %6429, %4630
  %6433 = fadd fast float %6430, %4631
  %6434 = fadd fast float %6431, %4653
  br i1 %4928, label %6435, label %6458

; <label>:6435                                    ; preds = %6325
  %6436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4025, float %6418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.ResRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.ResRet.f32 %6436, 2
  %6440 = fadd fast float %6437, -5.000000e-01
  %6441 = fadd fast float %6438, -5.000000e-01
  %6442 = fadd fast float %6439, -5.000000e-01
  %6443 = fmul fast float %4630, 4.000000e+00
  %6444 = fmul fast float %6443, %6426
  %6445 = fmul fast float %6444, %6440
  %6446 = fmul fast float %4631, 4.000000e+00
  %6447 = fmul fast float %6446, %6427
  %6448 = fmul fast float %6447, %6441
  %6449 = fmul fast float %4653, 4.000000e+00
  %6450 = fmul fast float %6449, %6428
  %6451 = fmul fast float %6450, %6442
  %6452 = fadd fast float %6445, %6432
  %6453 = fadd fast float %6448, %6433
  %6454 = fadd fast float %6451, %6434
  %6455 = call float @dx.op.unary.f32(i32 7, float %6452)  ; Saturate(value)
  %6456 = call float @dx.op.unary.f32(i32 7, float %6453)  ; Saturate(value)
  %6457 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  br label %6458

; <label>:6458                                    ; preds = %6435, %6325
  %6459 = phi float [ %6455, %6435 ], [ %6432, %6325 ]
  %6460 = phi float [ %6456, %6435 ], [ %6433, %6325 ]
  %6461 = phi float [ %6457, %6435 ], [ %6434, %6325 ]
  %6462 = fmul fast float %6353, 9.843750e-01
  %6463 = fadd fast float %6462, 7.812500e-03
  %6464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6463, float %4918, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6465 = extractvalue %dx.types.ResRet.f32 %6464, 2
  %6466 = extractvalue %dx.types.ResRet.f32 %6464, 3
  %6467 = fmul fast float %6465, %4630
  %6468 = fmul fast float %6465, %4631
  %6469 = fmul fast float %6465, %4653
  %6470 = fadd fast float %6467, %6466
  %6471 = fadd fast float %6468, %6466
  %6472 = fadd fast float %6469, %6466
  br i1 %4928, label %6473, label %6496

; <label>:6473                                    ; preds = %6458
  %6474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4025, float %6353, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6475 = extractvalue %dx.types.ResRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.ResRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.ResRet.f32 %6474, 2
  %6478 = fadd fast float %6475, -5.000000e-01
  %6479 = fadd fast float %6476, -5.000000e-01
  %6480 = fadd fast float %6477, -5.000000e-01
  %6481 = fmul fast float %4630, 4.000000e+00
  %6482 = fmul fast float %6481, %6426
  %6483 = fmul fast float %6482, %6478
  %6484 = fmul fast float %4631, 4.000000e+00
  %6485 = fmul fast float %6484, %6427
  %6486 = fmul fast float %6485, %6479
  %6487 = fmul fast float %4653, 4.000000e+00
  %6488 = fmul fast float %6487, %6428
  %6489 = fmul fast float %6488, %6480
  %6490 = fadd fast float %6483, %6470
  %6491 = fadd fast float %6486, %6471
  %6492 = fadd fast float %6489, %6472
  %6493 = call float @dx.op.unary.f32(i32 7, float %6490)  ; Saturate(value)
  %6494 = call float @dx.op.unary.f32(i32 7, float %6491)  ; Saturate(value)
  %6495 = call float @dx.op.unary.f32(i32 7, float %6492)  ; Saturate(value)
  br label %6496

; <label>:6496                                    ; preds = %6473, %6458
  %6497 = phi float [ %6493, %6473 ], [ %6470, %6458 ]
  %6498 = phi float [ %6494, %6473 ], [ %6471, %6458 ]
  %6499 = phi float [ %6495, %6473 ], [ %6472, %6458 ]
  %6500 = call float @dx.op.binary.f32(i32 35, float %6498, float %6499)  ; FMax(a,b)
  %6501 = call float @dx.op.binary.f32(i32 35, float %6497, float %6500)  ; FMax(a,b)
  %6502 = fsub fast float 1.000000e+00, %6501
  %6503 = fmul fast float %6459, %6417
  %6504 = fmul fast float %6460, %6417
  %6505 = fmul fast float %6461, %6417
  %6506 = fsub fast float 1.000000e+00, %6354
  %6507 = bitcast float %6506 to i32
  %6508 = sitofp i32 %6507 to float
  %6509 = fmul fast float %6508, 5.000000e+00
  %6510 = fadd fast float %6509, 0xC1EFBF8940000000
  %6511 = fptosi float %6510 to i32
  %6512 = bitcast i32 %6511 to float
  %6513 = fmul fast float %6512, %4026
  %6514 = fmul fast float %6502, %6513
  %6515 = fmul fast float %6514, %5854
  %6516 = fmul fast float %6514, %5855
  %6517 = fmul fast float %6514, %5856
  %6518 = fadd fast float %6515, %6503
  %6519 = fadd fast float %6516, %6504
  %6520 = fadd fast float %6517, %6505
  %6521 = fmul fast float %6342, %4022
  %6522 = fmul fast float %6521, %6360
  %6523 = fmul fast float %6522, %6502
  %6524 = fmul fast float %6343, %4022
  %6525 = fmul fast float %6524, %6360
  %6526 = fmul fast float %6525, %6502
  %6527 = fmul fast float %6344, %4022
  %6528 = fmul fast float %6527, %6360
  %6529 = fmul fast float %6528, %6502
  %6530 = fadd fast float %6523, %6181
  %6531 = fadd fast float %6526, %6182
  %6532 = fadd fast float %6529, %6183
  %6533 = fmul fast float %6522, %6518
  %6534 = fmul fast float %6525, %6519
  %6535 = fmul fast float %6528, %6520
  %6536 = fadd fast float %6533, %6178
  %6537 = fadd fast float %6534, %6179
  %6538 = fadd fast float %6535, %6180
  br label %6256

; <label>:6539                                    ; preds = %6256
  br label %6540

; <label>:6540                                    ; preds = %6539, %6144
  %6541 = phi float [ %6146, %6144 ], [ %6257, %6539 ]
  %6542 = phi float [ %6147, %6144 ], [ %6258, %6539 ]
  %6543 = phi float [ %6148, %6144 ], [ %6259, %6539 ]
  %6544 = phi float [ %6149, %6144 ], [ %6260, %6539 ]
  %6545 = phi float [ %6150, %6144 ], [ %6261, %6539 ]
  %6546 = phi float [ %6151, %6144 ], [ %6262, %6539 ]
  %6547 = add i32 %6145, 1
  %6548 = icmp ugt i32 %6547, %6141
  br i1 %6548, label %6549, label %6144

; <label>:6549                                    ; preds = %6540
  br label %6550

; <label>:6550                                    ; preds = %6549, %6120, %6110
  %6551 = phi float [ %6111, %6110 ], [ %6111, %6120 ], [ %6541, %6549 ]
  %6552 = phi float [ %6112, %6110 ], [ %6112, %6120 ], [ %6542, %6549 ]
  %6553 = phi float [ %6113, %6110 ], [ %6113, %6120 ], [ %6543, %6549 ]
  %6554 = phi float [ %6114, %6110 ], [ %6114, %6120 ], [ %6544, %6549 ]
  %6555 = phi float [ %6115, %6110 ], [ %6115, %6120 ], [ %6545, %6549 ]
  %6556 = phi float [ %6116, %6110 ], [ %6116, %6120 ], [ %6546, %6549 ]
  %6557 = call float @dx.op.unary.f32(i32 24, float %4627)  ; Sqrt(value)
  %6558 = call float @dx.op.unary.f32(i32 24, float %4628)  ; Sqrt(value)
  %6559 = call float @dx.op.unary.f32(i32 24, float %4629)  ; Sqrt(value)
  %6560 = fmul fast float %6557, %6554
  %6561 = fmul fast float %6558, %6555
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 0
  br i1 %186, label %6564, label %6587

; <label>:6564                                    ; preds = %6550
  %6565 = fadd fast float %6556, %4028
  %6566 = fmul fast float %6565, %4029
  %6567 = fsub fast float 1.000000e+00, %4029
  %6568 = call float @dx.op.unary.f32(i32 7, float %6567)  ; Saturate(value)
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 3
  %6571 = fmul fast float %6570, %6568
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 0
  %6574 = fmul fast float %6573, %5860
  %6575 = extractvalue %dx.types.CBufRet.f32 %6572, 2
  %6576 = fmul fast float %6575, %4651
  %6577 = fadd fast float %6561, %6560
  %6578 = fmul fast float %6563, %6577
  %6579 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6580 = fadd fast float %6571, %6566
  %6581 = fsub fast float %6580, %6574
  %6582 = fadd fast float %6581, %6576
  %6583 = fsub fast float %6582, %6579
  %6584 = extractvalue %dx.types.CBufRet.f32 %6569, 2
  %6585 = fmul fast float %6583, %6584
  %6586 = call float @dx.op.unary.f32(i32 7, float %6585)  ; Saturate(value)
  br label %6603

; <label>:6587                                    ; preds = %6550
  %6588 = fmul fast float %6559, %6556
  %6589 = fmul fast float %6563, %6560
  %6590 = fmul fast float %6563, %6561
  %6591 = fmul fast float %6588, %6563
  %6592 = add i32 %45, 356
  %6593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6592, i32 undef)  ; BufferLoad(srv,index,wot)
  %6594 = extractvalue %dx.types.ResRet.i32 %6593, 0
  %6595 = and i32 %6594, 32
  %6596 = icmp eq i32 %6595, 0
  br i1 %6596, label %6603, label %6597

; <label>:6597                                    ; preds = %6587
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = fmul fast float %6599, 0x3FE99999A0000000
  %6601 = fadd fast float %6599, %6589
  %6602 = fadd fast float %6600, %6591
  br label %6603

; <label>:6603                                    ; preds = %6597, %6587, %6564
  %6604 = phi float [ %6578, %6564 ], [ %6601, %6597 ], [ %6589, %6587 ]
  %6605 = phi float [ %6586, %6564 ], [ %6590, %6597 ], [ %6590, %6587 ]
  %6606 = phi float [ 1.000000e+00, %6564 ], [ %6602, %6597 ], [ %6591, %6587 ]
  %6607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6608 = extractvalue %dx.types.CBufRet.f32 %6607, 0
  %6609 = fmul fast float %6608, %6552
  %6610 = fmul fast float %6608, %6553
  %6611 = fadd fast float %6552, %6551
  %6612 = select i1 %186, float %6611, float %6551
  %6613 = fmul float %6612, %6608
  %6614 = select i1 %186, float 0.000000e+00, float %6609
  %6615 = select i1 %186, float 0.000000e+00, float %6610
  %6616 = fmul fast float %6604, %6557
  %6617 = fmul fast float %6605, %6558
  %6618 = fmul fast float %6606, %6559
  %6619 = fadd fast float %6613, %6616
  %6620 = fadd fast float %6614, %6617
  %6621 = fadd fast float %6615, %6618
  %6622 = select i1 %186, float %6605, float %6620
  %6623 = select i1 %186, float %6606, float %6621
  %6624 = call float @dx.op.binary.f32(i32 36, float %6619, float 3.225500e+04)  ; FMin(a,b)
  %6625 = call float @dx.op.binary.f32(i32 36, float %6622, float 3.225500e+04)  ; FMin(a,b)
  %6626 = call float @dx.op.binary.f32(i32 36, float %6623, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6624)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6625)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6626)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

