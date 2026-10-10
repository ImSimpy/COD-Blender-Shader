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
; shader hash: 2be001467c19692f1bbb6aa247843e6d
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
  br i1 %436, label %962, label %437

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
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 26624
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %943, label %886

; <label>:886                                     ; preds = %878
  %887 = add i32 %45, 536
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %887, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = add i32 %889, 0
  %891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %890, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %892 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %891, %dx.types.Handle %82, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = extractvalue %dx.types.ResRet.f32 %892, 3
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = and i32 %897, 1048576
  %899 = icmp ne i32 %898, 0
  %900 = and i32 %897, 8192
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %916, label %902

; <label>:902                                     ; preds = %886
  %903 = extractvalue %dx.types.ResRet.f32 %892, 2
  %904 = select i1 %899, float %903, float %894
  %905 = select i1 %899, float %893, float %894
  %906 = add i32 %45, 96
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = lshr i32 %908, 16
  %910 = and i32 %909, 255
  %911 = uitofp i32 %910 to float
  %912 = fmul fast float %911, 0x3F80101020000000
  %913 = fmul fast float %912, %905
  %914 = fmul fast float %912, %894
  %915 = fmul fast float %912, %904
  br label %916

; <label>:916                                     ; preds = %902, %886
  %917 = phi float [ %913, %902 ], [ 0.000000e+00, %886 ]
  %918 = phi float [ %914, %902 ], [ 0.000000e+00, %886 ]
  %919 = phi float [ %915, %902 ], [ 0.000000e+00, %886 ]
  %920 = and i32 %897, 2048
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %930, label %922

; <label>:922                                     ; preds = %916
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = shl i32 %924, 4
  %926 = and i32 %925, 32752
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = fmul fast float %927, %895
  %929 = call float @dx.op.binary.f32(i32 35, float %928, float 0x3F70101020000000)  ; FMax(a,b)
  br label %930

; <label>:930                                     ; preds = %922, %916
  %931 = phi float [ %929, %922 ], [ 0x3F70101020000000, %916 ]
  %932 = and i32 %897, 16384
  %933 = icmp eq i32 %932, 0
  br i1 %933, label %943, label %934

; <label>:934                                     ; preds = %930
  %935 = add i32 %45, 96
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = lshr i32 %937, 24
  %939 = uitofp i32 %938 to float
  %940 = fmul fast float %893, 0x3F70101020000000
  %941 = select i1 %899, float 0x3F70101020000000, float %940
  %942 = fmul fast float %941, %939
  br label %943

; <label>:943                                     ; preds = %934, %930, %878
  %944 = phi float [ %917, %934 ], [ %917, %930 ], [ 0.000000e+00, %878 ]
  %945 = phi float [ %918, %934 ], [ %918, %930 ], [ 0.000000e+00, %878 ]
  %946 = phi float [ %919, %934 ], [ %919, %930 ], [ 0.000000e+00, %878 ]
  %947 = phi float [ %931, %934 ], [ %931, %930 ], [ 0x3F70101020000000, %878 ]
  %948 = phi float [ %942, %934 ], [ 0.000000e+00, %930 ], [ 0.000000e+00, %878 ]
  %949 = add i32 %45, 96
  %950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %949, i32 undef)  ; BufferLoad(srv,index,wot)
  %951 = extractvalue %dx.types.ResRet.i32 %950, 0
  %952 = and i32 %951, 255
  %953 = uitofp i32 %952 to float
  %954 = lshr i32 %951, 8
  %955 = and i32 %954, 255
  %956 = uitofp i32 %955 to float
  %957 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %958 = fmul fast float %956, %957
  %959 = fadd fast float %958, %953
  %960 = fmul fast float %959, 0x3F70101020000000
  %961 = call float @dx.op.unary.f32(i32 7, float %960)  ; Saturate(value)
  br label %962

; <label>:962                                     ; preds = %943, %422
  %963 = phi float [ 0.000000e+00, %422 ], [ %832, %943 ]
  %964 = phi float [ 0.000000e+00, %422 ], [ %833, %943 ]
  %965 = phi float [ 0.000000e+00, %422 ], [ %751, %943 ]
  %966 = phi float [ 0.000000e+00, %422 ], [ %752, %943 ]
  %967 = phi float [ 0.000000e+00, %422 ], [ %753, %943 ]
  %968 = phi float [ 0.000000e+00, %422 ], [ %879, %943 ]
  %969 = phi float [ 0.000000e+00, %422 ], [ %880, %943 ]
  %970 = phi float [ 0.000000e+00, %422 ], [ %881, %943 ]
  %971 = phi float [ 0.000000e+00, %422 ], [ %944, %943 ]
  %972 = phi float [ 0.000000e+00, %422 ], [ %945, %943 ]
  %973 = phi float [ 0.000000e+00, %422 ], [ %946, %943 ]
  %974 = phi float [ 0.000000e+00, %422 ], [ %737, %943 ]
  %975 = phi float [ 0.000000e+00, %422 ], [ 1.000000e+00, %943 ]
  %976 = phi float [ 0.000000e+00, %422 ], [ %831, %943 ]
  %977 = phi float [ 0.000000e+00, %422 ], [ %834, %943 ]
  %978 = phi float [ 0.000000e+00, %422 ], [ %947, %943 ]
  %979 = phi float [ 0.000000e+00, %422 ], [ %948, %943 ]
  %980 = phi float [ 0.000000e+00, %422 ], [ %961, %943 ]
  br i1 %373, label %1933, label %981

; <label>:981                                     ; preds = %962
  %982 = icmp ult i32 %428, 2
  %983 = add i32 %45, 40
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %45, 44
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = or i32 %988, %985
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %1933, label %991

; <label>:991                                     ; preds = %981
  %992 = and i32 %985, 262144
  %993 = icmp ne i32 %992, 0
  %994 = select i1 %993, float %48, float 1.000000e+00
  %995 = select i1 %993, float %49, float 0.000000e+00
  %996 = select i1 %993, float %50, float 0.000000e+00
  %997 = select i1 %993, float %51, float 1.000000e+00
  %998 = select i1 %993, float %52, float %73
  %999 = select i1 %993, float %53, float %74
  %1000 = add i32 %45, 300
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = lshr i32 %1002, 16
  %1004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1003)  ; LegacyF16ToF32(value)
  %1005 = fmul fast float %1004, 0x3F50624DE0000000
  %1006 = add i32 %45, 104
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = lshr i32 %1008, 16
  %1010 = and i32 %1009, 255
  %1011 = lshr i32 %1008, 24
  %1012 = add i32 %45, 308
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 65535
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = lshr i32 %1014, 16
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = add i32 %45, 48
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = lshr i32 %1021, 22
  %1023 = shl nuw nsw i32 %1022, 5
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = shl i32 %1021, 4
  %1026 = and i32 %1025, 32752
  %1027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1026)  ; LegacyF16ToF32(value)
  %1028 = lshr i32 %1021, 7
  %1029 = and i32 %1028, 32752
  %1030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1029)  ; LegacyF16ToF32(value)
  %1031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1032 = extractvalue %dx.types.CBufRet.f32 %1031, 3
  %1033 = fmul fast float %1032, 1.000000e+03
  %1034 = fmul fast float %283, %1033
  %1035 = call float @dx.op.unary.f32(i32 22, float %1034)  ; Frc(value)
  %1036 = fadd fast float %1035, %273
  %1037 = fmul fast float %284, %1033
  %1038 = call float @dx.op.unary.f32(i32 22, float %1037)  ; Frc(value)
  %1039 = fadd fast float %1038, %275
  %1040 = fmul fast float %1005, %1033
  %1041 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1042 = fmul fast float %1041, 0x401921FB60000000
  %1043 = fadd fast float %1042, %1024
  %1044 = call float @dx.op.unary.f32(i32 13, float %1043)  ; Sin(value)
  %1045 = call float @dx.op.unary.f32(i32 12, float %1043)  ; Cos(value)
  %1046 = fsub fast float -0.000000e+00, %1044
  %1047 = fadd fast float %998, -5.000000e-01
  %1048 = fadd fast float %999, -5.000000e-01
  %1049 = fmul fast float %1016, %1047
  %1050 = fmul fast float %1018, %1048
  %1051 = fadd fast float %1049, 5.000000e-01
  %1052 = fadd fast float %1050, 5.000000e-01
  %1053 = fmul fast float %1027, %1051
  %1054 = fmul fast float %1030, %1052
  %1055 = fmul fast float %1045, %1053
  %1056 = call float @dx.op.tertiary.f32(i32 46, float %1046, float %1054, float %1055)  ; FMad(a,b,c)
  %1057 = fmul fast float %1044, %1053
  %1058 = call float @dx.op.tertiary.f32(i32 46, float %1045, float %1054, float %1057)  ; FMad(a,b,c)
  %1059 = fadd fast float %1036, %1056
  %1060 = fadd fast float %1039, %1058
  %1061 = icmp ugt i32 %1010, 1
  %1062 = icmp ugt i32 %1008, 33554431
  %1063 = or i1 %1062, %1061
  br i1 %1063, label %1064, label %1089

; <label>:1064                                    ; preds = %991
  %1065 = add i32 %45, 244
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = lshr i32 %1067, 16
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = fmul fast float %1032, %1069
  %1071 = call float @dx.op.unary.f32(i32 22, float %1070)  ; Frc(value)
  %1072 = mul nuw nsw i32 %1010, %1011
  %1073 = uitofp i32 %1072 to float
  %1074 = fmul fast float %1071, %1073
  %1075 = call float @dx.op.unary.f32(i32 27, float %1074)  ; Round_ni(value)
  %1076 = fptoui float %1075 to i32
  %1077 = urem i32 %1076, %1010
  %1078 = udiv i32 %1076, %1011
  %1079 = call float @dx.op.unary.f32(i32 22, float %1059)  ; Frc(value)
  %1080 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1081 = uitofp i32 %1077 to float
  %1082 = uitofp i32 %1078 to float
  %1083 = fadd fast float %1079, %1081
  %1084 = fadd fast float %1080, %1082
  %1085 = uitofp i32 %1010 to float
  %1086 = uitofp i32 %1011 to float
  %1087 = fdiv fast float %1083, %1085
  %1088 = fdiv fast float %1084, %1086
  br label %1089

; <label>:1089                                    ; preds = %1064, %991
  %1090 = phi float [ %1087, %1064 ], [ %1059, %991 ]
  %1091 = phi float [ %1088, %1064 ], [ %1060, %991 ]
  %1092 = and i32 %985, 16777216
  %1093 = icmp eq i32 %1092, 0
  br i1 %1093, label %1203, label %1094

; <label>:1094                                    ; preds = %1089
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.CBufRet.f32 %1095, 2
  %1099 = fadd fast float %1096, %144
  %1100 = fadd fast float %1097, %145
  %1101 = fadd fast float %1098, %146
  %1102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1103 = extractvalue %dx.types.CBufRet.f32 %1102, 0
  %1104 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  %1105 = icmp eq i32 %46, 65535
  br i1 %1105, label %1200, label %1106

; <label>:1106                                    ; preds = %1094
  %1107 = lshr i32 %46, 1
  %1108 = shl i32 %1107, 2
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %46, 1
  %1112 = icmp ne i32 %1111, 0
  %1113 = lshr i32 %1110, 16
  %1114 = and i32 %1110, 65535
  %1115 = select i1 %1112, i32 %1113, i32 %1114
  %1116 = icmp eq i32 %1115, 65535
  br i1 %1116, label %1196, label %1117

; <label>:1117                                    ; preds = %1106
  %1118 = mul nuw nsw i32 %1115, 40
  %1119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = add nuw nsw i32 %1118, 12
  %1124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.ResRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.ResRet.f32 %1124, 2
  %1128 = add nuw nsw i32 %1118, 24
  %1129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1128, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.f32 %1129, 0
  %1131 = extractvalue %dx.types.ResRet.f32 %1129, 1
  %1132 = extractvalue %dx.types.ResRet.f32 %1129, 2
  %1133 = add nuw nsw i32 %1118, 36
  %1134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.f32 %1134, 0
  %1136 = fsub fast float %1099, %1120
  %1137 = fsub fast float %1100, %1121
  %1138 = fsub fast float %1101, %1122
  %1139 = fmul fast float %1135, %1136
  %1140 = fmul fast float %1135, %1137
  %1141 = fmul fast float %1135, %1138
  %1142 = call float @dx.op.unary.f32(i32 27, float %1139)  ; Round_ni(value)
  %1143 = call float @dx.op.unary.f32(i32 27, float %1140)  ; Round_ni(value)
  %1144 = call float @dx.op.unary.f32(i32 27, float %1141)  ; Round_ni(value)
  %1145 = fadd fast float %1142, 5.000000e-01
  %1146 = fadd fast float %1143, 5.000000e-01
  %1147 = fadd fast float %1144, 5.000000e-01
  %1148 = fmul fast float %1145, %1125
  %1149 = fmul fast float %1146, %1126
  %1150 = fmul fast float %1147, %1127
  %1151 = shl i32 %46, 2
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = add i32 %1153, 0
  %1155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1156 = call float @dx.op.unary.f32(i32 22, float %1148)  ; Frc(value)
  %1157 = call float @dx.op.unary.f32(i32 22, float %1149)  ; Frc(value)
  %1158 = call float @dx.op.unary.f32(i32 22, float %1150)  ; Frc(value)
  %1159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1155, %dx.types.Handle %40, float %1156, float %1157, float %1158, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = extractvalue %dx.types.ResRet.f32 %1159, 1
  %1162 = extractvalue %dx.types.ResRet.f32 %1159, 2
  %1163 = fmul fast float %1160, 1.023000e+03
  %1164 = fmul fast float %1161, 1.023000e+03
  %1165 = fmul fast float %1162, 1.023000e+03
  %1166 = fadd fast float %1163, 5.000000e-01
  %1167 = fadd fast float %1164, 5.000000e-01
  %1168 = fadd fast float %1165, 5.000000e-01
  %1169 = call float @dx.op.unary.f32(i32 27, float %1166)  ; Round_ni(value)
  %1170 = call float @dx.op.unary.f32(i32 27, float %1167)  ; Round_ni(value)
  %1171 = call float @dx.op.unary.f32(i32 27, float %1168)  ; Round_ni(value)
  %1172 = fsub fast float %1139, %1142
  %1173 = fsub fast float %1140, %1143
  %1174 = fsub fast float %1141, %1144
  %1175 = fmul fast float %1172, 7.500000e-01
  %1176 = fmul fast float %1173, 7.500000e-01
  %1177 = fmul fast float %1174, 7.500000e-01
  %1178 = fadd fast float %1142, 1.250000e-01
  %1179 = fadd fast float %1178, %1175
  %1180 = fadd fast float %1179, %1169
  %1181 = fadd fast float %1143, 1.250000e-01
  %1182 = fadd fast float %1181, %1176
  %1183 = fadd fast float %1182, %1170
  %1184 = fadd fast float %1144, 1.250000e-01
  %1185 = fadd fast float %1184, %1177
  %1186 = fadd fast float %1185, %1171
  %1187 = fmul fast float %1180, %1130
  %1188 = fmul fast float %1183, %1131
  %1189 = fmul fast float %1186, %1132
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %1191, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1193, %dx.types.Handle %38, float %1187, float %1188, float %1189, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  br label %1196

; <label>:1196                                    ; preds = %1117, %1106
  %1197 = phi float [ %1195, %1117 ], [ -1.000000e+00, %1106 ]
  %1198 = fadd fast float %1197, %1104
  %1199 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  br label %1200

; <label>:1200                                    ; preds = %1196, %1094
  %1201 = phi float [ %1199, %1196 ], [ %1104, %1094 ]
  %1202 = fmul fast float %1201, %425
  br label %1203

; <label>:1203                                    ; preds = %1200, %1089
  %1204 = phi float [ %1202, %1200 ], [ %425, %1089 ]
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = and i32 %1206, 256
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1255, label %1209

; <label>:1209                                    ; preds = %1203
  %1210 = add i32 %45, 508
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = add i32 %1212, 0
  %1214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1214, %dx.types.Handle %82, float %1090, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = add i32 %45, 116
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = shl i32 %1219, 4
  %1221 = and i32 %1220, 32752
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = lshr i32 %1219, 7
  %1224 = and i32 %1223, 32752
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = fsub fast float 1.000000e+00, %1204
  %1227 = call float @dx.op.binary.f32(i32 35, float %1226, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1228 = bitcast float %1204 to i32
  %1229 = sitofp i32 %1228 to float
  %1230 = fadd fast float %1229, 0xC1CFBF8940000000
  %1231 = fmul fast float %1225, %1230
  %1232 = fadd fast float %1231, 0x41CFBF8940000000
  %1233 = fptosi float %1232 to i32
  %1234 = bitcast i32 %1233 to float
  %1235 = bitcast float %1227 to i32
  %1236 = sitofp i32 %1235 to float
  %1237 = fadd fast float %1236, 0xC1CFBF8940000000
  %1238 = fmul fast float %1237, %1225
  %1239 = fadd fast float %1238, 0x41CFBF8940000000
  %1240 = fptosi float %1239 to i32
  %1241 = bitcast i32 %1240 to float
  %1242 = fmul fast float %1234, %1222
  %1243 = fmul fast float %1241, %1222
  %1244 = fsub fast float %1227, %1242
  %1245 = fadd fast float %1243, %1227
  %1246 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1247 = call float @dx.op.unary.f32(i32 7, float %1245)  ; Saturate(value)
  %1248 = fsub fast float %1216, %1246
  %1249 = fsub fast float %1247, %1246
  %1250 = bitcast float %1249 to i32
  %1251 = sub nsw i32 2129859010, %1250
  %1252 = bitcast i32 %1251 to float
  %1253 = fmul fast float %1252, %1248
  %1254 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  br label %1255

; <label>:1255                                    ; preds = %1209, %1203
  %1256 = phi float [ %1254, %1209 ], [ %1204, %1203 ]
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 128
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1277, label %1261

; <label>:1261                                    ; preds = %1255
  %1262 = add i32 %45, 492
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = add i32 %1264, 0
  %1266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1266, %dx.types.Handle %82, float %1090, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = and i32 %1270, 524288
  %1272 = icmp ne i32 %1271, 0
  %1273 = fcmp fast ogt float %1268, 0x3FE0101020000000
  %1274 = select i1 %1273, float 1.000000e+00, float 0.000000e+00
  %1275 = select i1 %1272, float %1274, float %1268
  %1276 = fmul fast float %1275, %1256
  br label %1277

; <label>:1277                                    ; preds = %1261, %1255
  %1278 = phi float [ %1276, %1261 ], [ %1256, %1255 ]
  %1279 = fcmp fast ult float %1278, 0x3F70101020000000
  br i1 %1279, label %1933, label %1280

; <label>:1280                                    ; preds = %1277
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 16
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1483, label %1285

; <label>:1285                                    ; preds = %1280
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = add i32 %45, 444
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = add i32 %1290, 0
  %1292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1292, %dx.types.Handle %81, float %1090, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = extractvalue %dx.types.ResRet.f32 %1293, 3
  %1298 = and i32 %1287, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = lshr i32 %1287, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1297, %1299
  %1304 = fadd fast float %1303, %1302
  %1305 = fmul fast float %1304, 0x3F70101000000000
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = and i32 %1307, 512
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1318, label %1310

; <label>:1310                                    ; preds = %1285
  %1311 = add i32 %45, 524
  %1312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.i32 %1312, 0
  %1314 = add i32 %1313, 0
  %1315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1315, %dx.types.Handle %82, float %1090, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1317 = extractvalue %dx.types.ResRet.f32 %1316, 0
  br label %1318

; <label>:1318                                    ; preds = %1310, %1285
  %1319 = phi float [ %1317, %1310 ], [ 1.000000e+00, %1285 ]
  %1320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.i32 %1320, 0
  %1322 = and i32 %1321, 33554432
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1430, label %1324

; <label>:1324                                    ; preds = %1318
  %1325 = add i32 %45, 240
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 65535
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = lshr i32 %1327, 16
  %1331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1330)  ; LegacyF16ToF32(value)
  %1332 = add i32 %45, 244
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 65535
  %1336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1335)  ; LegacyF16ToF32(value)
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = lshr i32 %1338, 24
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = and i32 %1338, 255
  %1343 = uitofp i32 %1342 to float
  %1344 = fmul fast float %1343, 0x3F70101020000000
  %1345 = lshr i32 %1338, 8
  %1346 = and i32 %1345, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = fmul fast float %1347, 0x3F70101020000000
  %1349 = lshr i32 %1338, 16
  %1350 = and i32 %1349, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = fmul fast float %1351, 0x3F70101020000000
  %1353 = add i32 %45, 236
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1353, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = lshr i32 %1355, 24
  %1357 = uitofp i32 %1356 to float
  %1358 = fmul fast float %1357, 0x3F70101020000000
  %1359 = and i32 %1355, 255
  %1360 = uitofp i32 %1359 to float
  %1361 = fmul fast float %1360, 0x3F70101020000000
  %1362 = lshr i32 %1355, 8
  %1363 = and i32 %1362, 255
  %1364 = uitofp i32 %1363 to float
  %1365 = fmul fast float %1364, 0x3F70101020000000
  %1366 = lshr i32 %1355, 16
  %1367 = and i32 %1366, 255
  %1368 = uitofp i32 %1367 to float
  %1369 = fmul fast float %1368, 0x3F70101020000000
  %1370 = bitcast float %1294 to i32
  %1371 = ashr i32 %1370, 1
  %1372 = sub nsw i32 1597463174, %1371
  %1373 = bitcast i32 %1372 to float
  %1374 = fmul fast float %1294, 5.000000e-01
  %1375 = fmul fast float %1373, %1373
  %1376 = fmul fast float %1375, %1374
  %1377 = fsub fast float 1.500000e+00, %1376
  %1378 = fmul fast float %1373, %1294
  %1379 = fmul fast float %1378, %1377
  %1380 = bitcast float %1295 to i32
  %1381 = ashr i32 %1380, 1
  %1382 = sub nsw i32 1597463174, %1381
  %1383 = bitcast i32 %1382 to float
  %1384 = fmul fast float %1295, 5.000000e-01
  %1385 = fmul fast float %1383, %1383
  %1386 = fmul fast float %1385, %1384
  %1387 = fsub fast float 1.500000e+00, %1386
  %1388 = fmul fast float %1383, %1295
  %1389 = fmul fast float %1388, %1387
  %1390 = bitcast float %1296 to i32
  %1391 = ashr i32 %1390, 1
  %1392 = sub nsw i32 1597463174, %1391
  %1393 = bitcast i32 %1392 to float
  %1394 = fmul fast float %1296, 5.000000e-01
  %1395 = fmul fast float %1393, %1393
  %1396 = fmul fast float %1395, %1394
  %1397 = fsub fast float 1.500000e+00, %1396
  %1398 = fmul fast float %1393, %1296
  %1399 = fmul fast float %1398, %1397
  %1400 = fsub fast float %1379, %1361
  %1401 = fsub fast float %1389, %1365
  %1402 = fsub fast float %1399, %1369
  %1403 = fmul fast float %1400, %1329
  %1404 = fmul fast float %1401, %1331
  %1405 = fmul fast float %1402, %1336
  %1406 = fadd fast float %1403, %1344
  %1407 = fadd fast float %1404, %1348
  %1408 = fadd fast float %1405, %1352
  %1409 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1407)  ; Saturate(value)
  %1411 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  %1412 = fmul fast float %1409, %1409
  %1413 = fmul fast float %1410, %1410
  %1414 = fmul fast float %1411, %1411
  %1415 = fsub fast float %1412, %1294
  %1416 = fsub fast float %1413, %1295
  %1417 = fsub fast float %1414, %1296
  %1418 = fmul fast float %1415, %1319
  %1419 = fmul fast float %1416, %1319
  %1420 = fmul fast float %1417, %1319
  %1421 = fadd fast float %1418, %1294
  %1422 = fadd fast float %1419, %1295
  %1423 = fadd fast float %1420, %1296
  %1424 = fadd fast float %1341, %1305
  %1425 = fsub fast float %1424, %1358
  %1426 = call float @dx.op.unary.f32(i32 7, float %1425)  ; Saturate(value)
  %1427 = fsub fast float %1426, %1305
  %1428 = fmul fast float %1427, %1319
  %1429 = fadd fast float %1428, %1305
  br label %1483

; <label>:1430                                    ; preds = %1318
  %1431 = and i32 %1321, 134217728
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1467, label %1433

; <label>:1433                                    ; preds = %1430
  %1434 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1435 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1436 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1437 = fadd fast float %1434, -5.000000e-01
  %1438 = fadd fast float %1435, -5.000000e-01
  %1439 = fadd fast float %1436, -5.000000e-01
  %1440 = fmul fast float %1437, %1319
  %1441 = fmul fast float %1438, %1319
  %1442 = fmul fast float %1439, %1319
  %1443 = fadd fast float %1440, 5.000000e-01
  %1444 = fadd fast float %1441, 5.000000e-01
  %1445 = fadd fast float %1442, 5.000000e-01
  %1446 = call float @dx.op.unary.f32(i32 24, float %1294)  ; Sqrt(value)
  %1447 = call float @dx.op.unary.f32(i32 24, float %1295)  ; Sqrt(value)
  %1448 = call float @dx.op.unary.f32(i32 24, float %1296)  ; Sqrt(value)
  %1449 = fmul fast float %1443, 2.000000e+00
  %1450 = fsub fast float 1.000000e+00, %1449
  %1451 = fmul fast float %1450, %1446
  %1452 = fadd fast float %1451, %1449
  %1453 = fmul fast float %1452, %1446
  %1454 = fmul fast float %1444, 2.000000e+00
  %1455 = fsub fast float 1.000000e+00, %1454
  %1456 = fmul fast float %1455, %1447
  %1457 = fadd fast float %1456, %1454
  %1458 = fmul fast float %1457, %1447
  %1459 = fmul fast float %1445, 2.000000e+00
  %1460 = fsub fast float 1.000000e+00, %1459
  %1461 = fmul fast float %1460, %1448
  %1462 = fadd fast float %1461, %1459
  %1463 = fmul fast float %1462, %1448
  %1464 = fmul fast float %1453, %1453
  %1465 = fmul fast float %1458, %1458
  %1466 = fmul fast float %1463, %1463
  br label %1483

; <label>:1467                                    ; preds = %1430
  %1468 = fmul fast float %260, %260
  %1469 = fmul fast float %264, %264
  %1470 = fmul fast float %268, %268
  %1471 = fadd fast float %1468, -1.000000e+00
  %1472 = fadd fast float %1469, -1.000000e+00
  %1473 = fadd fast float %1470, -1.000000e+00
  %1474 = fmul fast float %1319, %1471
  %1475 = fmul fast float %1319, %1472
  %1476 = fmul fast float %1319, %1473
  %1477 = fadd fast float %1474, 1.000000e+00
  %1478 = fadd fast float %1475, 1.000000e+00
  %1479 = fadd fast float %1476, 1.000000e+00
  %1480 = fmul fast float %1477, %1294
  %1481 = fmul fast float %1478, %1295
  %1482 = fmul fast float %1479, %1296
  br label %1483

; <label>:1483                                    ; preds = %1467, %1433, %1324, %1280
  %1484 = phi float [ %1429, %1324 ], [ %1305, %1433 ], [ %1305, %1467 ], [ 0x3FA23C0BE0000000, %1280 ]
  %1485 = phi float [ %1421, %1324 ], [ %1464, %1433 ], [ %1480, %1467 ], [ 1.000000e+00, %1280 ]
  %1486 = phi float [ %1422, %1324 ], [ %1465, %1433 ], [ %1481, %1467 ], [ 1.000000e+00, %1280 ]
  %1487 = phi float [ %1423, %1324 ], [ %1466, %1433 ], [ %1482, %1467 ], [ 1.000000e+00, %1280 ]
  %1488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1489 = extractvalue %dx.types.CBufRet.i32 %1488, 1
  %1490 = and i32 %1489, 1
  %1491 = icmp ne i32 %1490, 0
  %1492 = add i32 %45, 356
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 32
  %1496 = icmp ne i32 %1495, 0
  %1497 = and i1 %1491, %1496
  %1498 = select i1 %1497, float 1.000000e+00, float %1485
  %1499 = select i1 %1497, float 0x3FD3333340000000, float %1486
  %1500 = select i1 %1497, float 0x3FD3333340000000, float %1487
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 32
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1577, label %1505

; <label>:1505                                    ; preds = %1483
  %1506 = add i32 %45, 108
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = add i32 %45, 460
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = add i32 %1511, 0
  %1513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1512, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1514 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1513, %dx.types.Handle %81, float %1090, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1515 = extractvalue %dx.types.ResRet.f32 %1514, 0
  %1516 = extractvalue %dx.types.ResRet.f32 %1514, 1
  %1517 = extractvalue %dx.types.ResRet.f32 %1514, 2
  %1518 = extractvalue %dx.types.ResRet.f32 %1514, 3
  %1519 = and i32 %1508, 255
  %1520 = uitofp i32 %1519 to float
  %1521 = lshr i32 %1508, 8
  %1522 = and i32 %1521, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = lshr i32 %1508, 16
  %1525 = and i32 %1524, 255
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101000000000
  %1528 = fmul fast float %1515, %1520
  %1529 = fadd fast float %1528, %1523
  %1530 = fmul fast float %1529, 0x3F70101000000000
  %1531 = fadd fast float %1516, -5.000000e-01
  %1532 = fadd fast float %1518, -5.000000e-01
  %1533 = fmul fast float %1531, %1527
  %1534 = fmul fast float %1532, %1527
  %1535 = fadd fast float %1533, 5.000000e-01
  %1536 = fadd fast float %1534, 5.000000e-01
  %1537 = fmul fast float %1535, 2.000000e+00
  %1538 = fadd fast float %1537, -1.000000e+00
  %1539 = fmul fast float %1536, 2.000000e+00
  %1540 = fadd fast float %1539, -1.000000e+00
  %1541 = fadd fast float %1538, %1540
  %1542 = fmul fast float %1541, 5.000000e-01
  %1543 = fsub fast float %1538, %1540
  %1544 = fmul fast float %1543, 5.000000e-01
  %1545 = call float @dx.op.unary.f32(i32 6, float %1542)  ; FAbs(value)
  %1546 = fsub fast float 1.000000e+00, %1545
  %1547 = call float @dx.op.unary.f32(i32 6, float %1544)  ; FAbs(value)
  %1548 = fsub fast float %1546, %1547
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1542, float %1544, float %1548, float %1542, float %1544, float %1548)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = call float @dx.op.unary.f32(i32 25, float %1549)  ; Rsqrt(value)
  %1551 = fmul fast float %1542, %1550
  %1552 = fmul fast float %1544, %1550
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 67108864
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1573, label %1557

; <label>:1557                                    ; preds = %1505
  %1558 = add i32 %45, 296
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = and i32 %1560, 65535
  %1562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1561)  ; LegacyF16ToF32(value)
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 65535
  %1566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1565)  ; LegacyF16ToF32(value)
  %1567 = lshr i32 %1560, 16
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = fsub fast float %1530, %1568
  %1570 = fmul fast float %1569, %1562
  %1571 = fadd fast float %1570, %1566
  %1572 = call float @dx.op.unary.f32(i32 7, float %1571)  ; Saturate(value)
  br label %1573

; <label>:1573                                    ; preds = %1557, %1505
  %1574 = phi float [ %1572, %1557 ], [ %1530, %1505 ]
  %1575 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %994, float %995)  ; Dot2(ax,ay,bx,by)
  %1576 = call float @dx.op.dot2.f32(i32 54, float %1551, float %1552, float %996, float %997)  ; Dot2(ax,ay,bx,by)
  br label %1577

; <label>:1577                                    ; preds = %1573, %1483
  %1578 = phi float [ %1574, %1573 ], [ 0x3FD6666660000000, %1483 ]
  %1579 = phi float [ %1575, %1573 ], [ 0.000000e+00, %1483 ]
  %1580 = phi float [ %1576, %1573 ], [ 0.000000e+00, %1483 ]
  %1581 = phi float [ %1517, %1573 ], [ 1.000000e+00, %1483 ]
  %1582 = add i32 %45, 176
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = lshr i32 %1584, 22
  %1586 = shl nuw nsw i32 %1585, 5
  %1587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1586)  ; LegacyF16ToF32(value)
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 64
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1625, label %1592

; <label>:1592                                    ; preds = %1577
  %1593 = add i32 %45, 476
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1593, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = add i32 %1595, 0
  %1597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1596, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = and i32 %1599, 131072
  %1601 = icmp eq i32 %1600, 0
  %1602 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1597, %dx.types.Handle %81, float %1090, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = extractvalue %dx.types.ResRet.f32 %1602, 2
  %1606 = fmul fast float %1603, %248
  %1607 = fmul fast float %1604, %251
  %1608 = fmul fast float %1605, %254
  br i1 %1601, label %1615, label %1609

; <label>:1609                                    ; preds = %1592
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = fmul fast float %1611, %1606
  %1613 = fmul fast float %1611, %1607
  %1614 = fmul fast float %1611, %1608
  br label %1615

; <label>:1615                                    ; preds = %1609, %1592
  %1616 = phi float [ %1612, %1609 ], [ %1606, %1592 ]
  %1617 = phi float [ %1613, %1609 ], [ %1607, %1592 ]
  %1618 = phi float [ %1614, %1609 ], [ %1608, %1592 ]
  %1619 = fmul fast float %1616, %1587
  %1620 = select i1 %186, float %1619, float %1616
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1620, float %1617, float %1618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = select i1 %186, float 0.000000e+00, float %1616
  %1623 = select i1 %186, float %1621, float %1617
  %1624 = select i1 %186, float 0.000000e+00, float %1618
  br label %1625

; <label>:1625                                    ; preds = %1615, %1577
  %1626 = phi float [ %1622, %1615 ], [ 0.000000e+00, %1577 ]
  %1627 = phi float [ %1623, %1615 ], [ 0.000000e+00, %1577 ]
  %1628 = phi float [ %1624, %1615 ], [ 0.000000e+00, %1577 ]
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 26624
  %1632 = icmp eq i32 %1631, 0
  br i1 %1632, label %1690, label %1633

; <label>:1633                                    ; preds = %1625
  %1634 = add i32 %45, 540
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = add i32 %1636, 0
  %1638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1638, %dx.types.Handle %82, float %1090, float %1091, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1640 = extractvalue %dx.types.ResRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.ResRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.ResRet.f32 %1639, 3
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = and i32 %1644, 1048576
  %1646 = icmp ne i32 %1645, 0
  %1647 = and i32 %1644, 8192
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1663, label %1649

; <label>:1649                                    ; preds = %1633
  %1650 = extractvalue %dx.types.ResRet.f32 %1639, 2
  %1651 = select i1 %1646, float %1650, float %1641
  %1652 = select i1 %1646, float %1640, float %1641
  %1653 = add i32 %45, 112
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1653, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = lshr i32 %1655, 16
  %1657 = and i32 %1656, 255
  %1658 = uitofp i32 %1657 to float
  %1659 = fmul fast float %1658, 0x3F80101020000000
  %1660 = fmul fast float %1659, %1652
  %1661 = fmul fast float %1659, %1641
  %1662 = fmul fast float %1659, %1651
  br label %1663

; <label>:1663                                    ; preds = %1649, %1633
  %1664 = phi float [ %1660, %1649 ], [ 0.000000e+00, %1633 ]
  %1665 = phi float [ %1661, %1649 ], [ 0.000000e+00, %1633 ]
  %1666 = phi float [ %1662, %1649 ], [ 0.000000e+00, %1633 ]
  %1667 = and i32 %1644, 2048
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1677, label %1669

; <label>:1669                                    ; preds = %1663
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = shl i32 %1671, 4
  %1673 = and i32 %1672, 32752
  %1674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1673)  ; LegacyF16ToF32(value)
  %1675 = fmul fast float %1674, %1642
  %1676 = call float @dx.op.binary.f32(i32 35, float %1675, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1677

; <label>:1677                                    ; preds = %1669, %1663
  %1678 = phi float [ %1676, %1669 ], [ 0x3F70101020000000, %1663 ]
  %1679 = and i32 %1644, 16384
  %1680 = icmp eq i32 %1679, 0
  br i1 %1680, label %1690, label %1681

; <label>:1681                                    ; preds = %1677
  %1682 = add i32 %45, 112
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = lshr i32 %1684, 24
  %1686 = uitofp i32 %1685 to float
  %1687 = fmul fast float %1640, 0x3F70101020000000
  %1688 = select i1 %1646, float 0x3F70101020000000, float %1687
  %1689 = fmul fast float %1688, %1686
  br label %1690

; <label>:1690                                    ; preds = %1681, %1677, %1625
  %1691 = phi float [ %1664, %1681 ], [ %1664, %1677 ], [ 0.000000e+00, %1625 ]
  %1692 = phi float [ %1665, %1681 ], [ %1665, %1677 ], [ 0.000000e+00, %1625 ]
  %1693 = phi float [ %1666, %1681 ], [ %1666, %1677 ], [ 0.000000e+00, %1625 ]
  %1694 = phi float [ %1678, %1681 ], [ %1678, %1677 ], [ 0x3F70101020000000, %1625 ]
  %1695 = phi float [ %1689, %1681 ], [ 0.000000e+00, %1677 ], [ 0.000000e+00, %1625 ]
  %1696 = add i32 %45, 112
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = and i32 %1698, 255
  %1700 = uitofp i32 %1699 to float
  %1701 = lshr i32 %1698, 8
  %1702 = and i32 %1701, 255
  %1703 = uitofp i32 %1702 to float
  %1704 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1499, float %1500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1705 = fmul fast float %1703, %1704
  %1706 = fadd fast float %1705, %1700
  %1707 = fmul fast float %1706, 0x3F70101020000000
  %1708 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  br i1 %982, label %1709, label %1717

; <label>:1709                                    ; preds = %1690
  %1710 = fsub fast float 1.000000e+00, %1278
  %1711 = fmul fast float %1710, %965
  %1712 = fmul fast float %1710, %966
  %1713 = fmul fast float %1710, %967
  %1714 = fmul fast float %1710, %968
  %1715 = fmul fast float %1710, %969
  %1716 = fmul fast float %1710, %970
  br label %1717

; <label>:1717                                    ; preds = %1709, %1690
  %1718 = phi float [ %1711, %1709 ], [ %965, %1690 ]
  %1719 = phi float [ %1712, %1709 ], [ %966, %1690 ]
  %1720 = phi float [ %1713, %1709 ], [ %967, %1690 ]
  %1721 = phi float [ %1714, %1709 ], [ %968, %1690 ]
  %1722 = phi float [ %1715, %1709 ], [ %969, %1690 ]
  %1723 = phi float [ %1716, %1709 ], [ %970, %1690 ]
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = and i32 %1725, 3
  %1727 = icmp eq i32 %1726, 3
  br i1 %1727, label %1806, label %1728

; <label>:1728                                    ; preds = %1717
  %1729 = and i32 %1725, 16
  %1730 = icmp ne i32 %1729, 0
  %1731 = select i1 %1730, float %1278, float 0.000000e+00
  %1732 = icmp eq i32 %1726, 0
  br i1 %1732, label %1733, label %1761

; <label>:1733                                    ; preds = %1728
  %1734 = and i32 %1725, 64
  %1735 = icmp ne i32 %1734, 0
  %1736 = select i1 %1735, float %1278, float 0.000000e+00
  %1737 = fsub fast float %1498, %1718
  %1738 = fsub fast float %1499, %1719
  %1739 = fsub fast float %1500, %1720
  %1740 = fmul fast float %1731, %1737
  %1741 = fmul fast float %1731, %1738
  %1742 = fmul fast float %1731, %1739
  %1743 = fadd fast float %1740, %1718
  %1744 = fadd fast float %1741, %1719
  %1745 = fadd fast float %1742, %1720
  %1746 = fsub fast float %1484, %974
  %1747 = fmul fast float %1731, %1746
  %1748 = fadd fast float %1747, %974
  %1749 = fsub fast float %1626, %1721
  %1750 = fsub fast float %1627, %1722
  %1751 = fsub fast float %1628, %1723
  %1752 = fmul fast float %1736, %1749
  %1753 = fmul fast float %1736, %1750
  %1754 = fmul fast float %1736, %1751
  %1755 = fadd fast float %1752, %1721
  %1756 = fadd fast float %1753, %1722
  %1757 = fadd fast float %1754, %1723
  %1758 = fsub fast float %1708, %980
  %1759 = fmul fast float %1731, %1758
  %1760 = fadd fast float %1759, %980
  br label %1806

; <label>:1761                                    ; preds = %1728
  %1762 = icmp eq i32 %1726, 1
  br i1 %1762, label %1763, label %1776

; <label>:1763                                    ; preds = %1761
  %1764 = fadd fast float %1498, -1.000000e+00
  %1765 = fadd fast float %1499, -1.000000e+00
  %1766 = fadd fast float %1500, -1.000000e+00
  %1767 = fmul fast float %1731, %1764
  %1768 = fmul fast float %1731, %1765
  %1769 = fmul fast float %1731, %1766
  %1770 = fadd fast float %1767, 1.000000e+00
  %1771 = fadd fast float %1768, 1.000000e+00
  %1772 = fadd fast float %1769, 1.000000e+00
  %1773 = fmul fast float %1770, %1718
  %1774 = fmul fast float %1771, %1719
  %1775 = fmul fast float %1772, %1720
  br label %1806

; <label>:1776                                    ; preds = %1761
  %1777 = icmp eq i32 %1726, 2
  br i1 %1777, label %1778, label %1806

; <label>:1778                                    ; preds = %1776
  %1779 = call float @dx.op.unary.f32(i32 24, float %1498)  ; Sqrt(value)
  %1780 = call float @dx.op.unary.f32(i32 24, float %1499)  ; Sqrt(value)
  %1781 = call float @dx.op.unary.f32(i32 24, float %1500)  ; Sqrt(value)
  %1782 = fadd fast float %1779, -5.000000e-01
  %1783 = fadd fast float %1780, -5.000000e-01
  %1784 = fadd fast float %1781, -5.000000e-01
  %1785 = fmul fast float %1782, %1731
  %1786 = fmul fast float %1783, %1731
  %1787 = fmul fast float %1784, %1731
  %1788 = fadd fast float %1785, 5.000000e-01
  %1789 = fadd fast float %1786, 5.000000e-01
  %1790 = fadd fast float %1787, 5.000000e-01
  %1791 = fmul fast float %1788, 2.000000e+00
  %1792 = fsub fast float 1.000000e+00, %1791
  %1793 = fmul fast float %1792, %1718
  %1794 = fadd fast float %1793, %1791
  %1795 = fmul fast float %1794, %1718
  %1796 = fmul fast float %1789, 2.000000e+00
  %1797 = fsub fast float 1.000000e+00, %1796
  %1798 = fmul fast float %1797, %1719
  %1799 = fadd fast float %1798, %1796
  %1800 = fmul fast float %1799, %1719
  %1801 = fmul fast float %1790, 2.000000e+00
  %1802 = fsub fast float 1.000000e+00, %1801
  %1803 = fmul fast float %1802, %1720
  %1804 = fadd fast float %1803, %1801
  %1805 = fmul fast float %1804, %1720
  br label %1806

; <label>:1806                                    ; preds = %1778, %1776, %1763, %1733, %1717
  %1807 = phi float [ %1718, %1717 ], [ %1795, %1778 ], [ %1718, %1776 ], [ %1773, %1763 ], [ %1743, %1733 ]
  %1808 = phi float [ %1719, %1717 ], [ %1800, %1778 ], [ %1719, %1776 ], [ %1774, %1763 ], [ %1744, %1733 ]
  %1809 = phi float [ %1720, %1717 ], [ %1805, %1778 ], [ %1720, %1776 ], [ %1775, %1763 ], [ %1745, %1733 ]
  %1810 = phi float [ %1721, %1717 ], [ %1721, %1778 ], [ %1721, %1776 ], [ %1721, %1763 ], [ %1755, %1733 ]
  %1811 = phi float [ %1722, %1717 ], [ %1722, %1778 ], [ %1722, %1776 ], [ %1722, %1763 ], [ %1756, %1733 ]
  %1812 = phi float [ %1723, %1717 ], [ %1723, %1778 ], [ %1723, %1776 ], [ %1723, %1763 ], [ %1757, %1733 ]
  %1813 = phi float [ %974, %1717 ], [ %974, %1778 ], [ %974, %1776 ], [ %974, %1763 ], [ %1748, %1733 ]
  %1814 = phi float [ %980, %1717 ], [ %980, %1778 ], [ %980, %1776 ], [ %980, %1763 ], [ %1760, %1733 ]
  %1815 = and i32 %1725, 12
  %1816 = icmp eq i32 %1815, 12
  br i1 %1816, label %1933, label %1817

; <label>:1817                                    ; preds = %1806
  %1818 = and i32 %1725, 2097184
  %1819 = icmp eq i32 %1818, 2097184
  %1820 = select i1 %1819, float %1278, float 0.000000e+00
  %1821 = and i32 %1725, 4194336
  %1822 = icmp eq i32 %1821, 4194336
  %1823 = select i1 %1822, float %1278, float 0.000000e+00
  %1824 = and i32 %1725, 8388640
  %1825 = icmp eq i32 %1824, 8388640
  %1826 = select i1 %1825, float %1278, float 0.000000e+00
  %1827 = and i32 %1725, 2048
  %1828 = icmp ne i32 %1827, 0
  %1829 = select i1 %1828, float %1278, float 0.000000e+00
  %1830 = and i32 %1725, 8192
  %1831 = icmp ne i32 %1830, 0
  %1832 = select i1 %1831, float %1278, float 0.000000e+00
  %1833 = and i32 %1725, 16384
  %1834 = icmp ne i32 %1833, 0
  %1835 = select i1 %1834, float %1278, float 0.000000e+00
  %1836 = icmp eq i32 %1815, 0
  br i1 %1836, label %1837, label %1865

; <label>:1837                                    ; preds = %1817
  %1838 = fsub fast float %1579, %963
  %1839 = fsub fast float %1580, %964
  %1840 = fmul fast float %1820, %1838
  %1841 = fmul fast float %1820, %1839
  %1842 = fadd fast float %1840, %963
  %1843 = fadd fast float %1841, %964
  %1844 = fsub fast float %1581, %977
  %1845 = fmul fast float %1823, %1844
  %1846 = fadd fast float %1845, %977
  %1847 = fsub fast float %1578, %976
  %1848 = fmul fast float %1826, %1847
  %1849 = fadd fast float %1848, %976
  %1850 = fsub fast float %1694, %978
  %1851 = fmul fast float %1829, %1850
  %1852 = fadd fast float %1851, %978
  %1853 = fsub fast float %1691, %971
  %1854 = fsub fast float %1692, %972
  %1855 = fsub fast float %1693, %973
  %1856 = fmul fast float %1832, %1853
  %1857 = fmul fast float %1832, %1854
  %1858 = fmul fast float %1832, %1855
  %1859 = fadd fast float %1856, %971
  %1860 = fadd fast float %1857, %972
  %1861 = fadd fast float %1858, %973
  %1862 = fsub fast float %1695, %979
  %1863 = fmul fast float %1835, %1862
  %1864 = fadd fast float %1863, %979
  br label %1933

; <label>:1865                                    ; preds = %1817
  %1866 = icmp eq i32 %1815, 4
  br i1 %1866, label %1867, label %1909

; <label>:1867                                    ; preds = %1865
  %1868 = fmul fast float %1820, %1579
  %1869 = fmul fast float %1820, %1580
  %1870 = fadd fast float %1868, %963
  %1871 = fadd fast float %1869, %964
  %1872 = call float @dx.op.binary.f32(i32 36, float %977, float %1581)  ; FMin(a,b)
  %1873 = fsub fast float %1872, %977
  %1874 = fmul fast float %1873, %1823
  %1875 = fadd fast float %1874, %977
  %1876 = fadd fast float %1578, %976
  %1877 = fmul fast float %1876, 0x3FF337FAE0000000
  %1878 = fmul fast float %976, %976
  %1879 = fmul fast float %1578, %1578
  %1880 = fadd fast float %1879, %1878
  %1881 = fmul fast float %1880, 0x3FE5152B00000000
  %1882 = fmul fast float %976, 0xBFCC1F85E0000000
  %1883 = fmul fast float %1882, %1578
  %1884 = fadd fast float %1883, 0xBFE1363700000000
  %1885 = fadd fast float %1884, %1877
  %1886 = fsub fast float %1885, %1881
  %1887 = fmul fast float %1876, 0x3FBA6F0D00000000
  %1888 = fmul fast float %1880, 0x3FD0432880000000
  %1889 = fmul fast float %976, 0xBFEF110800000000
  %1890 = fmul fast float %1889, %1578
  %1891 = fadd fast float %1890, 1.000000e+00
  %1892 = fsub fast float %1891, %1887
  %1893 = fadd fast float %1892, %1888
  %1894 = fdiv fast float %1886, %1893
  %1895 = call float @dx.op.unary.f32(i32 7, float %1894)  ; Saturate(value)
  %1896 = fsub fast float %1895, %976
  %1897 = fmul fast float %1896, %1826
  %1898 = fadd fast float %1897, %976
  %1899 = fmul fast float %1829, %1694
  %1900 = fadd fast float %1899, %978
  %1901 = fmul fast float %1832, %1691
  %1902 = fmul fast float %1832, %1692
  %1903 = fmul fast float %1832, %1693
  %1904 = fadd fast float %1901, %971
  %1905 = fadd fast float %1902, %972
  %1906 = fadd fast float %1903, %973
  %1907 = fmul fast float %1835, %1695
  %1908 = fadd fast float %1907, %979
  br label %1933

; <label>:1909                                    ; preds = %1865
  %1910 = icmp eq i32 %1815, 8
  br i1 %1910, label %1911, label %1933

; <label>:1911                                    ; preds = %1909
  %1912 = fmul fast float %1820, %1579
  %1913 = fmul fast float %1820, %1580
  %1914 = fadd fast float %1912, %963
  %1915 = fadd fast float %1913, %964
  %1916 = call float @dx.op.binary.f32(i32 36, float %977, float %1581)  ; FMin(a,b)
  %1917 = fsub fast float %1916, %977
  %1918 = fmul fast float %1917, %1823
  %1919 = fadd fast float %1918, %977
  %1920 = fsub fast float %1578, %976
  %1921 = fmul fast float %1826, %1920
  %1922 = fadd fast float %1921, %976
  %1923 = fmul fast float %1829, %1694
  %1924 = fadd fast float %1923, %978
  %1925 = fmul fast float %1832, %1691
  %1926 = fmul fast float %1832, %1692
  %1927 = fmul fast float %1832, %1693
  %1928 = fadd fast float %1925, %971
  %1929 = fadd fast float %1926, %972
  %1930 = fadd fast float %1927, %973
  %1931 = fmul fast float %1835, %1695
  %1932 = fadd fast float %1931, %979
  br label %1933

; <label>:1933                                    ; preds = %1911, %1909, %1867, %1837, %1806, %1277, %981, %962
  %1934 = phi float [ %963, %1806 ], [ %963, %1277 ], [ %963, %962 ], [ %1914, %1911 ], [ %963, %1909 ], [ %1870, %1867 ], [ %1842, %1837 ], [ %963, %981 ]
  %1935 = phi float [ %964, %1806 ], [ %964, %1277 ], [ %964, %962 ], [ %1915, %1911 ], [ %964, %1909 ], [ %1871, %1867 ], [ %1843, %1837 ], [ %964, %981 ]
  %1936 = phi float [ %1807, %1806 ], [ %965, %1277 ], [ %965, %962 ], [ %1807, %1911 ], [ %1807, %1909 ], [ %1807, %1867 ], [ %1807, %1837 ], [ %965, %981 ]
  %1937 = phi float [ %1808, %1806 ], [ %966, %1277 ], [ %966, %962 ], [ %1808, %1911 ], [ %1808, %1909 ], [ %1808, %1867 ], [ %1808, %1837 ], [ %966, %981 ]
  %1938 = phi float [ %1809, %1806 ], [ %967, %1277 ], [ %967, %962 ], [ %1809, %1911 ], [ %1809, %1909 ], [ %1809, %1867 ], [ %1809, %1837 ], [ %967, %981 ]
  %1939 = phi float [ %1810, %1806 ], [ %968, %1277 ], [ %968, %962 ], [ %1810, %1911 ], [ %1810, %1909 ], [ %1810, %1867 ], [ %1810, %1837 ], [ %968, %981 ]
  %1940 = phi float [ %1811, %1806 ], [ %969, %1277 ], [ %969, %962 ], [ %1811, %1911 ], [ %1811, %1909 ], [ %1811, %1867 ], [ %1811, %1837 ], [ %969, %981 ]
  %1941 = phi float [ %1812, %1806 ], [ %970, %1277 ], [ %970, %962 ], [ %1812, %1911 ], [ %1812, %1909 ], [ %1812, %1867 ], [ %1812, %1837 ], [ %970, %981 ]
  %1942 = phi float [ %971, %1806 ], [ %971, %1277 ], [ %971, %962 ], [ %1928, %1911 ], [ %971, %1909 ], [ %1904, %1867 ], [ %1859, %1837 ], [ %971, %981 ]
  %1943 = phi float [ %972, %1806 ], [ %972, %1277 ], [ %972, %962 ], [ %1929, %1911 ], [ %972, %1909 ], [ %1905, %1867 ], [ %1860, %1837 ], [ %972, %981 ]
  %1944 = phi float [ %973, %1806 ], [ %973, %1277 ], [ %973, %962 ], [ %1930, %1911 ], [ %973, %1909 ], [ %1906, %1867 ], [ %1861, %1837 ], [ %973, %981 ]
  %1945 = phi float [ %1813, %1806 ], [ %974, %1277 ], [ %974, %962 ], [ %1813, %1911 ], [ %1813, %1909 ], [ %1813, %1867 ], [ %1813, %1837 ], [ %974, %981 ]
  %1946 = phi float [ %976, %1806 ], [ %976, %1277 ], [ %976, %962 ], [ %1922, %1911 ], [ %976, %1909 ], [ %1898, %1867 ], [ %1849, %1837 ], [ %976, %981 ]
  %1947 = phi float [ %977, %1806 ], [ %977, %1277 ], [ %977, %962 ], [ %1919, %1911 ], [ %977, %1909 ], [ %1875, %1867 ], [ %1846, %1837 ], [ %977, %981 ]
  %1948 = phi float [ %978, %1806 ], [ %978, %1277 ], [ %978, %962 ], [ %1924, %1911 ], [ %978, %1909 ], [ %1900, %1867 ], [ %1852, %1837 ], [ %978, %981 ]
  %1949 = phi float [ %979, %1806 ], [ %979, %1277 ], [ %979, %962 ], [ %1932, %1911 ], [ %979, %1909 ], [ %1908, %1867 ], [ %1864, %1837 ], [ %979, %981 ]
  %1950 = phi float [ %1814, %1806 ], [ %980, %1277 ], [ %980, %962 ], [ %1814, %1911 ], [ %1814, %1909 ], [ %1814, %1867 ], [ %1814, %1837 ], [ %980, %981 ]
  br i1 %375, label %2903, label %1951

; <label>:1951                                    ; preds = %1933
  %1952 = icmp ult i32 %428, 3
  %1953 = add i32 %45, 56
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = add i32 %45, 60
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = or i32 %1958, %1955
  %1960 = icmp eq i32 %1959, 0
  br i1 %1960, label %2903, label %1961

; <label>:1961                                    ; preds = %1951
  %1962 = and i32 %1955, 262144
  %1963 = icmp ne i32 %1962, 0
  %1964 = select i1 %1963, float %48, float 1.000000e+00
  %1965 = select i1 %1963, float %49, float 0.000000e+00
  %1966 = select i1 %1963, float %50, float 0.000000e+00
  %1967 = select i1 %1963, float %51, float 1.000000e+00
  %1968 = select i1 %1963, float %52, float %73
  %1969 = select i1 %1963, float %53, float %74
  %1970 = add i32 %45, 316
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = lshr i32 %1972, 16
  %1974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1973)  ; LegacyF16ToF32(value)
  %1975 = fmul fast float %1974, 0x3F50624DE0000000
  %1976 = add i32 %45, 120
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = lshr i32 %1978, 16
  %1980 = and i32 %1979, 255
  %1981 = lshr i32 %1978, 24
  %1982 = add i32 %45, 324
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, 65535
  %1986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1985)  ; LegacyF16ToF32(value)
  %1987 = lshr i32 %1984, 16
  %1988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1987)  ; LegacyF16ToF32(value)
  %1989 = add i32 %45, 64
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = lshr i32 %1991, 22
  %1993 = shl nuw nsw i32 %1992, 5
  %1994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1993)  ; LegacyF16ToF32(value)
  %1995 = shl i32 %1991, 4
  %1996 = and i32 %1995, 32752
  %1997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1996)  ; LegacyF16ToF32(value)
  %1998 = lshr i32 %1991, 7
  %1999 = and i32 %1998, 32752
  %2000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1999)  ; LegacyF16ToF32(value)
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 3
  %2003 = fmul fast float %2002, 1.000000e+03
  %2004 = fmul fast float %325, %2003
  %2005 = call float @dx.op.unary.f32(i32 22, float %2004)  ; Frc(value)
  %2006 = fadd fast float %2005, %315
  %2007 = fmul fast float %326, %2003
  %2008 = call float @dx.op.unary.f32(i32 22, float %2007)  ; Frc(value)
  %2009 = fadd fast float %2008, %317
  %2010 = fmul fast float %1975, %2003
  %2011 = call float @dx.op.unary.f32(i32 22, float %2010)  ; Frc(value)
  %2012 = fmul fast float %2011, 0x401921FB60000000
  %2013 = fadd fast float %2012, %1994
  %2014 = call float @dx.op.unary.f32(i32 13, float %2013)  ; Sin(value)
  %2015 = call float @dx.op.unary.f32(i32 12, float %2013)  ; Cos(value)
  %2016 = fsub fast float -0.000000e+00, %2014
  %2017 = fadd fast float %1968, -5.000000e-01
  %2018 = fadd fast float %1969, -5.000000e-01
  %2019 = fmul fast float %1986, %2017
  %2020 = fmul fast float %1988, %2018
  %2021 = fadd fast float %2019, 5.000000e-01
  %2022 = fadd fast float %2020, 5.000000e-01
  %2023 = fmul fast float %1997, %2021
  %2024 = fmul fast float %2000, %2022
  %2025 = fmul fast float %2015, %2023
  %2026 = call float @dx.op.tertiary.f32(i32 46, float %2016, float %2024, float %2025)  ; FMad(a,b,c)
  %2027 = fmul fast float %2014, %2023
  %2028 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2024, float %2027)  ; FMad(a,b,c)
  %2029 = fadd fast float %2006, %2026
  %2030 = fadd fast float %2009, %2028
  %2031 = icmp ugt i32 %1980, 1
  %2032 = icmp ugt i32 %1978, 33554431
  %2033 = or i1 %2032, %2031
  br i1 %2033, label %2034, label %2059

; <label>:2034                                    ; preds = %1961
  %2035 = add i32 %45, 260
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = lshr i32 %2037, 16
  %2039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2038)  ; LegacyF16ToF32(value)
  %2040 = fmul fast float %2002, %2039
  %2041 = call float @dx.op.unary.f32(i32 22, float %2040)  ; Frc(value)
  %2042 = mul nuw nsw i32 %1980, %1981
  %2043 = uitofp i32 %2042 to float
  %2044 = fmul fast float %2041, %2043
  %2045 = call float @dx.op.unary.f32(i32 27, float %2044)  ; Round_ni(value)
  %2046 = fptoui float %2045 to i32
  %2047 = urem i32 %2046, %1980
  %2048 = udiv i32 %2046, %1981
  %2049 = call float @dx.op.unary.f32(i32 22, float %2029)  ; Frc(value)
  %2050 = call float @dx.op.unary.f32(i32 22, float %2030)  ; Frc(value)
  %2051 = uitofp i32 %2047 to float
  %2052 = uitofp i32 %2048 to float
  %2053 = fadd fast float %2049, %2051
  %2054 = fadd fast float %2050, %2052
  %2055 = uitofp i32 %1980 to float
  %2056 = uitofp i32 %1981 to float
  %2057 = fdiv fast float %2053, %2055
  %2058 = fdiv fast float %2054, %2056
  br label %2059

; <label>:2059                                    ; preds = %2034, %1961
  %2060 = phi float [ %2057, %2034 ], [ %2029, %1961 ]
  %2061 = phi float [ %2058, %2034 ], [ %2030, %1961 ]
  %2062 = and i32 %1955, 16777216
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2173, label %2064

; <label>:2064                                    ; preds = %2059
  %2065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.f32 %2065, 0
  %2067 = extractvalue %dx.types.CBufRet.f32 %2065, 1
  %2068 = extractvalue %dx.types.CBufRet.f32 %2065, 2
  %2069 = fadd fast float %2066, %144
  %2070 = fadd fast float %2067, %145
  %2071 = fadd fast float %2068, %146
  %2072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2073 = extractvalue %dx.types.CBufRet.f32 %2072, 0
  %2074 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2075 = icmp eq i32 %46, 65535
  br i1 %2075, label %2170, label %2076

; <label>:2076                                    ; preds = %2064
  %2077 = lshr i32 %46, 1
  %2078 = shl i32 %2077, 2
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %46, 1
  %2082 = icmp ne i32 %2081, 0
  %2083 = lshr i32 %2080, 16
  %2084 = and i32 %2080, 65535
  %2085 = select i1 %2082, i32 %2083, i32 %2084
  %2086 = icmp eq i32 %2085, 65535
  br i1 %2086, label %2166, label %2087

; <label>:2087                                    ; preds = %2076
  %2088 = mul nuw nsw i32 %2085, 40
  %2089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = extractvalue %dx.types.ResRet.f32 %2089, 2
  %2093 = add nuw nsw i32 %2088, 12
  %2094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.ResRet.f32 %2094, 1
  %2097 = extractvalue %dx.types.ResRet.f32 %2094, 2
  %2098 = add nuw nsw i32 %2088, 24
  %2099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.ResRet.f32 %2099, 1
  %2102 = extractvalue %dx.types.ResRet.f32 %2099, 2
  %2103 = add nuw nsw i32 %2088, 36
  %2104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.f32 %2104, 0
  %2106 = fsub fast float %2069, %2090
  %2107 = fsub fast float %2070, %2091
  %2108 = fsub fast float %2071, %2092
  %2109 = fmul fast float %2105, %2106
  %2110 = fmul fast float %2105, %2107
  %2111 = fmul fast float %2105, %2108
  %2112 = call float @dx.op.unary.f32(i32 27, float %2109)  ; Round_ni(value)
  %2113 = call float @dx.op.unary.f32(i32 27, float %2110)  ; Round_ni(value)
  %2114 = call float @dx.op.unary.f32(i32 27, float %2111)  ; Round_ni(value)
  %2115 = fadd fast float %2112, 5.000000e-01
  %2116 = fadd fast float %2113, 5.000000e-01
  %2117 = fadd fast float %2114, 5.000000e-01
  %2118 = fmul fast float %2115, %2095
  %2119 = fmul fast float %2116, %2096
  %2120 = fmul fast float %2117, %2097
  %2121 = shl i32 %46, 2
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = add i32 %2123, 0
  %2125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2126 = call float @dx.op.unary.f32(i32 22, float %2118)  ; Frc(value)
  %2127 = call float @dx.op.unary.f32(i32 22, float %2119)  ; Frc(value)
  %2128 = call float @dx.op.unary.f32(i32 22, float %2120)  ; Frc(value)
  %2129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2125, %dx.types.Handle %40, float %2126, float %2127, float %2128, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2130 = extractvalue %dx.types.ResRet.f32 %2129, 0
  %2131 = extractvalue %dx.types.ResRet.f32 %2129, 1
  %2132 = extractvalue %dx.types.ResRet.f32 %2129, 2
  %2133 = fmul fast float %2130, 1.023000e+03
  %2134 = fmul fast float %2131, 1.023000e+03
  %2135 = fmul fast float %2132, 1.023000e+03
  %2136 = fadd fast float %2133, 5.000000e-01
  %2137 = fadd fast float %2134, 5.000000e-01
  %2138 = fadd fast float %2135, 5.000000e-01
  %2139 = call float @dx.op.unary.f32(i32 27, float %2136)  ; Round_ni(value)
  %2140 = call float @dx.op.unary.f32(i32 27, float %2137)  ; Round_ni(value)
  %2141 = call float @dx.op.unary.f32(i32 27, float %2138)  ; Round_ni(value)
  %2142 = fsub fast float %2109, %2112
  %2143 = fsub fast float %2110, %2113
  %2144 = fsub fast float %2111, %2114
  %2145 = fmul fast float %2142, 7.500000e-01
  %2146 = fmul fast float %2143, 7.500000e-01
  %2147 = fmul fast float %2144, 7.500000e-01
  %2148 = fadd fast float %2112, 1.250000e-01
  %2149 = fadd fast float %2148, %2145
  %2150 = fadd fast float %2149, %2139
  %2151 = fadd fast float %2113, 1.250000e-01
  %2152 = fadd fast float %2151, %2146
  %2153 = fadd fast float %2152, %2140
  %2154 = fadd fast float %2114, 1.250000e-01
  %2155 = fadd fast float %2154, %2147
  %2156 = fadd fast float %2155, %2141
  %2157 = fmul fast float %2150, %2100
  %2158 = fmul fast float %2153, %2101
  %2159 = fmul fast float %2156, %2102
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = add i32 %2161, 0
  %2163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2163, %dx.types.Handle %38, float %2157, float %2158, float %2159, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  br label %2166

; <label>:2166                                    ; preds = %2087, %2076
  %2167 = phi float [ %2165, %2087 ], [ -1.000000e+00, %2076 ]
  %2168 = fadd fast float %2167, %2074
  %2169 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  br label %2170

; <label>:2170                                    ; preds = %2166, %2064
  %2171 = phi float [ %2169, %2166 ], [ %2074, %2064 ]
  %2172 = fmul fast float %2171, %424
  br label %2173

; <label>:2173                                    ; preds = %2170, %2059
  %2174 = phi float [ %2172, %2170 ], [ %424, %2059 ]
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 256
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2225, label %2179

; <label>:2179                                    ; preds = %2173
  %2180 = add i32 %45, 512
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = add i32 %2182, 0
  %2184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2184, %dx.types.Handle %82, float %2060, float %2061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = add i32 %45, 132
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = shl i32 %2189, 4
  %2191 = and i32 %2190, 32752
  %2192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2191)  ; LegacyF16ToF32(value)
  %2193 = lshr i32 %2189, 7
  %2194 = and i32 %2193, 32752
  %2195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2194)  ; LegacyF16ToF32(value)
  %2196 = fsub fast float 1.000000e+00, %2174
  %2197 = call float @dx.op.binary.f32(i32 35, float %2196, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2198 = bitcast float %2174 to i32
  %2199 = sitofp i32 %2198 to float
  %2200 = fadd fast float %2199, 0xC1CFBF8940000000
  %2201 = fmul fast float %2195, %2200
  %2202 = fadd fast float %2201, 0x41CFBF8940000000
  %2203 = fptosi float %2202 to i32
  %2204 = bitcast i32 %2203 to float
  %2205 = bitcast float %2197 to i32
  %2206 = sitofp i32 %2205 to float
  %2207 = fadd fast float %2206, 0xC1CFBF8940000000
  %2208 = fmul fast float %2207, %2195
  %2209 = fadd fast float %2208, 0x41CFBF8940000000
  %2210 = fptosi float %2209 to i32
  %2211 = bitcast i32 %2210 to float
  %2212 = fmul fast float %2204, %2192
  %2213 = fmul fast float %2211, %2192
  %2214 = fsub fast float %2197, %2212
  %2215 = fadd fast float %2213, %2197
  %2216 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2217 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2218 = fsub fast float %2186, %2216
  %2219 = fsub fast float %2217, %2216
  %2220 = bitcast float %2219 to i32
  %2221 = sub nsw i32 2129859010, %2220
  %2222 = bitcast i32 %2221 to float
  %2223 = fmul fast float %2222, %2218
  %2224 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  br label %2225

; <label>:2225                                    ; preds = %2179, %2173
  %2226 = phi float [ %2224, %2179 ], [ %2174, %2173 ]
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = and i32 %2228, 128
  %2230 = icmp eq i32 %2229, 0
  br i1 %2230, label %2247, label %2231

; <label>:2231                                    ; preds = %2225
  %2232 = add i32 %45, 496
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = add i32 %2234, 0
  %2236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2236, %dx.types.Handle %82, float %2060, float %2061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2238 = extractvalue %dx.types.ResRet.f32 %2237, 0
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 524288
  %2242 = icmp ne i32 %2241, 0
  %2243 = fcmp fast ogt float %2238, 0x3FE0101020000000
  %2244 = select i1 %2243, float 1.000000e+00, float 0.000000e+00
  %2245 = select i1 %2242, float %2244, float %2238
  %2246 = fmul fast float %2245, %2226
  br label %2247

; <label>:2247                                    ; preds = %2231, %2225
  %2248 = phi float [ %2246, %2231 ], [ %2226, %2225 ]
  %2249 = fcmp fast ult float %2248, 0x3F70101020000000
  br i1 %2249, label %2903, label %2250

; <label>:2250                                    ; preds = %2247
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = and i32 %2252, 16
  %2254 = icmp eq i32 %2253, 0
  br i1 %2254, label %2453, label %2255

; <label>:2255                                    ; preds = %2250
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %45, 448
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %81, float %2060, float %2061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.ResRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.ResRet.f32 %2263, 3
  %2268 = and i32 %2257, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = lshr i32 %2257, 8
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2267, %2269
  %2274 = fadd fast float %2273, %2272
  %2275 = fmul fast float %2274, 0x3F70101000000000
  %2276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2277 = extractvalue %dx.types.ResRet.i32 %2276, 0
  %2278 = and i32 %2277, 512
  %2279 = icmp eq i32 %2278, 0
  br i1 %2279, label %2288, label %2280

; <label>:2280                                    ; preds = %2255
  %2281 = add i32 %45, 528
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = add i32 %2283, 0
  %2285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2285, %dx.types.Handle %82, float %2060, float %2061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2287 = extractvalue %dx.types.ResRet.f32 %2286, 0
  br label %2288

; <label>:2288                                    ; preds = %2280, %2255
  %2289 = phi float [ %2287, %2280 ], [ 1.000000e+00, %2255 ]
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 33554432
  %2293 = icmp eq i32 %2292, 0
  br i1 %2293, label %2400, label %2294

; <label>:2294                                    ; preds = %2288
  %2295 = add i32 %45, 256
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2295, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 65535
  %2299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2298)  ; LegacyF16ToF32(value)
  %2300 = lshr i32 %2297, 16
  %2301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2300)  ; LegacyF16ToF32(value)
  %2302 = add i32 %45, 260
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = and i32 %2304, 65535
  %2306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2305)  ; LegacyF16ToF32(value)
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = lshr i32 %2308, 24
  %2310 = uitofp i32 %2309 to float
  %2311 = fmul fast float %2310, 0x3F70101020000000
  %2312 = and i32 %2308, 255
  %2313 = uitofp i32 %2312 to float
  %2314 = fmul fast float %2313, 0x3F70101020000000
  %2315 = lshr i32 %2308, 8
  %2316 = and i32 %2315, 255
  %2317 = uitofp i32 %2316 to float
  %2318 = fmul fast float %2317, 0x3F70101020000000
  %2319 = lshr i32 %2308, 16
  %2320 = and i32 %2319, 255
  %2321 = uitofp i32 %2320 to float
  %2322 = fmul fast float %2321, 0x3F70101020000000
  %2323 = add i32 %45, 252
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = lshr i32 %2325, 24
  %2327 = uitofp i32 %2326 to float
  %2328 = fmul fast float %2327, 0x3F70101020000000
  %2329 = and i32 %2325, 255
  %2330 = uitofp i32 %2329 to float
  %2331 = fmul fast float %2330, 0x3F70101020000000
  %2332 = lshr i32 %2325, 8
  %2333 = and i32 %2332, 255
  %2334 = uitofp i32 %2333 to float
  %2335 = fmul fast float %2334, 0x3F70101020000000
  %2336 = lshr i32 %2325, 16
  %2337 = and i32 %2336, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = fmul fast float %2338, 0x3F70101020000000
  %2340 = bitcast float %2264 to i32
  %2341 = ashr i32 %2340, 1
  %2342 = sub nsw i32 1597463174, %2341
  %2343 = bitcast i32 %2342 to float
  %2344 = fmul fast float %2264, 5.000000e-01
  %2345 = fmul fast float %2343, %2343
  %2346 = fmul fast float %2345, %2344
  %2347 = fsub fast float 1.500000e+00, %2346
  %2348 = fmul fast float %2343, %2264
  %2349 = fmul fast float %2348, %2347
  %2350 = bitcast float %2265 to i32
  %2351 = ashr i32 %2350, 1
  %2352 = sub nsw i32 1597463174, %2351
  %2353 = bitcast i32 %2352 to float
  %2354 = fmul fast float %2265, 5.000000e-01
  %2355 = fmul fast float %2353, %2353
  %2356 = fmul fast float %2355, %2354
  %2357 = fsub fast float 1.500000e+00, %2356
  %2358 = fmul fast float %2353, %2265
  %2359 = fmul fast float %2358, %2357
  %2360 = bitcast float %2266 to i32
  %2361 = ashr i32 %2360, 1
  %2362 = sub nsw i32 1597463174, %2361
  %2363 = bitcast i32 %2362 to float
  %2364 = fmul fast float %2266, 5.000000e-01
  %2365 = fmul fast float %2363, %2363
  %2366 = fmul fast float %2365, %2364
  %2367 = fsub fast float 1.500000e+00, %2366
  %2368 = fmul fast float %2363, %2266
  %2369 = fmul fast float %2368, %2367
  %2370 = fsub fast float %2349, %2331
  %2371 = fsub fast float %2359, %2335
  %2372 = fsub fast float %2369, %2339
  %2373 = fmul fast float %2370, %2299
  %2374 = fmul fast float %2371, %2301
  %2375 = fmul fast float %2372, %2306
  %2376 = fadd fast float %2373, %2314
  %2377 = fadd fast float %2374, %2318
  %2378 = fadd fast float %2375, %2322
  %2379 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2380 = call float @dx.op.unary.f32(i32 7, float %2377)  ; Saturate(value)
  %2381 = call float @dx.op.unary.f32(i32 7, float %2378)  ; Saturate(value)
  %2382 = fmul fast float %2379, %2379
  %2383 = fmul fast float %2380, %2380
  %2384 = fmul fast float %2381, %2381
  %2385 = fsub fast float %2382, %2264
  %2386 = fsub fast float %2383, %2265
  %2387 = fsub fast float %2384, %2266
  %2388 = fmul fast float %2385, %2289
  %2389 = fmul fast float %2386, %2289
  %2390 = fmul fast float %2387, %2289
  %2391 = fadd fast float %2388, %2264
  %2392 = fadd fast float %2389, %2265
  %2393 = fadd fast float %2390, %2266
  %2394 = fadd fast float %2311, %2275
  %2395 = fsub fast float %2394, %2328
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = fsub fast float %2396, %2275
  %2398 = fmul fast float %2397, %2289
  %2399 = fadd fast float %2398, %2275
  br label %2453

; <label>:2400                                    ; preds = %2288
  %2401 = and i32 %2291, 134217728
  %2402 = icmp eq i32 %2401, 0
  br i1 %2402, label %2437, label %2403

; <label>:2403                                    ; preds = %2400
  %2404 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2405 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %2406 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2407 = fadd fast float %2404, -5.000000e-01
  %2408 = fadd fast float %2405, -5.000000e-01
  %2409 = fadd fast float %2406, -5.000000e-01
  %2410 = fmul fast float %2407, %2289
  %2411 = fmul fast float %2408, %2289
  %2412 = fmul fast float %2409, %2289
  %2413 = fadd fast float %2410, 5.000000e-01
  %2414 = fadd fast float %2411, 5.000000e-01
  %2415 = fadd fast float %2412, 5.000000e-01
  %2416 = call float @dx.op.unary.f32(i32 24, float %2264)  ; Sqrt(value)
  %2417 = call float @dx.op.unary.f32(i32 24, float %2265)  ; Sqrt(value)
  %2418 = call float @dx.op.unary.f32(i32 24, float %2266)  ; Sqrt(value)
  %2419 = fmul fast float %2413, 2.000000e+00
  %2420 = fsub fast float 1.000000e+00, %2419
  %2421 = fmul fast float %2420, %2416
  %2422 = fadd fast float %2421, %2419
  %2423 = fmul fast float %2422, %2416
  %2424 = fmul fast float %2414, 2.000000e+00
  %2425 = fsub fast float 1.000000e+00, %2424
  %2426 = fmul fast float %2425, %2417
  %2427 = fadd fast float %2426, %2424
  %2428 = fmul fast float %2427, %2417
  %2429 = fmul fast float %2415, 2.000000e+00
  %2430 = fsub fast float 1.000000e+00, %2429
  %2431 = fmul fast float %2430, %2418
  %2432 = fadd fast float %2431, %2429
  %2433 = fmul fast float %2432, %2418
  %2434 = fmul fast float %2423, %2423
  %2435 = fmul fast float %2428, %2428
  %2436 = fmul fast float %2433, %2433
  br label %2453

; <label>:2437                                    ; preds = %2400
  %2438 = fmul fast float %302, %302
  %2439 = fmul fast float %306, %306
  %2440 = fmul fast float %310, %310
  %2441 = fadd fast float %2438, -1.000000e+00
  %2442 = fadd fast float %2439, -1.000000e+00
  %2443 = fadd fast float %2440, -1.000000e+00
  %2444 = fmul fast float %2289, %2441
  %2445 = fmul fast float %2289, %2442
  %2446 = fmul fast float %2289, %2443
  %2447 = fadd fast float %2444, 1.000000e+00
  %2448 = fadd fast float %2445, 1.000000e+00
  %2449 = fadd fast float %2446, 1.000000e+00
  %2450 = fmul fast float %2447, %2264
  %2451 = fmul fast float %2448, %2265
  %2452 = fmul fast float %2449, %2266
  br label %2453

; <label>:2453                                    ; preds = %2437, %2403, %2294, %2250
  %2454 = phi float [ %2399, %2294 ], [ %2275, %2403 ], [ %2275, %2437 ], [ 0x3FA23C0BE0000000, %2250 ]
  %2455 = phi float [ %2391, %2294 ], [ %2434, %2403 ], [ %2450, %2437 ], [ 1.000000e+00, %2250 ]
  %2456 = phi float [ %2392, %2294 ], [ %2435, %2403 ], [ %2451, %2437 ], [ 1.000000e+00, %2250 ]
  %2457 = phi float [ %2393, %2294 ], [ %2436, %2403 ], [ %2452, %2437 ], [ 1.000000e+00, %2250 ]
  %2458 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.i32 %2458, 1
  %2460 = and i32 %2459, 1
  %2461 = icmp ne i32 %2460, 0
  %2462 = add i32 %45, 356
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2462, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 32
  %2466 = icmp ne i32 %2465, 0
  %2467 = and i1 %2461, %2466
  %2468 = select i1 %2467, float 1.000000e+00, float %2455
  %2469 = select i1 %2467, float 0x3FD3333340000000, float %2456
  %2470 = select i1 %2467, float 0x3FD3333340000000, float %2457
  %2471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2472 = extractvalue %dx.types.ResRet.i32 %2471, 0
  %2473 = and i32 %2472, 32
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2547, label %2475

; <label>:2475                                    ; preds = %2453
  %2476 = add i32 %45, 124
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = add i32 %45, 464
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = add i32 %2481, 0
  %2483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2483, %dx.types.Handle %81, float %2060, float %2061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2485 = extractvalue %dx.types.ResRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.ResRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.ResRet.f32 %2484, 2
  %2488 = extractvalue %dx.types.ResRet.f32 %2484, 3
  %2489 = and i32 %2478, 255
  %2490 = uitofp i32 %2489 to float
  %2491 = lshr i32 %2478, 8
  %2492 = and i32 %2491, 255
  %2493 = uitofp i32 %2492 to float
  %2494 = lshr i32 %2478, 16
  %2495 = and i32 %2494, 255
  %2496 = uitofp i32 %2495 to float
  %2497 = fmul fast float %2496, 0x3F70101000000000
  %2498 = fmul fast float %2485, %2490
  %2499 = fadd fast float %2498, %2493
  %2500 = fmul fast float %2499, 0x3F70101000000000
  %2501 = fadd fast float %2486, -5.000000e-01
  %2502 = fadd fast float %2488, -5.000000e-01
  %2503 = fmul fast float %2501, %2497
  %2504 = fmul fast float %2502, %2497
  %2505 = fadd fast float %2503, 5.000000e-01
  %2506 = fadd fast float %2504, 5.000000e-01
  %2507 = fmul fast float %2505, 2.000000e+00
  %2508 = fadd fast float %2507, -1.000000e+00
  %2509 = fmul fast float %2506, 2.000000e+00
  %2510 = fadd fast float %2509, -1.000000e+00
  %2511 = fadd fast float %2508, %2510
  %2512 = fmul fast float %2511, 5.000000e-01
  %2513 = fsub fast float %2508, %2510
  %2514 = fmul fast float %2513, 5.000000e-01
  %2515 = call float @dx.op.unary.f32(i32 6, float %2512)  ; FAbs(value)
  %2516 = fsub fast float 1.000000e+00, %2515
  %2517 = call float @dx.op.unary.f32(i32 6, float %2514)  ; FAbs(value)
  %2518 = fsub fast float %2516, %2517
  %2519 = call float @dx.op.dot3.f32(i32 55, float %2512, float %2514, float %2518, float %2512, float %2514, float %2518)  ; Dot3(ax,ay,az,bx,by,bz)
  %2520 = call float @dx.op.unary.f32(i32 25, float %2519)  ; Rsqrt(value)
  %2521 = fmul fast float %2512, %2520
  %2522 = fmul fast float %2514, %2520
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = and i32 %2524, 67108864
  %2526 = icmp eq i32 %2525, 0
  br i1 %2526, label %2543, label %2527

; <label>:2527                                    ; preds = %2475
  %2528 = add i32 %45, 312
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 65535
  %2532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2531)  ; LegacyF16ToF32(value)
  %2533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.i32 %2533, 0
  %2535 = and i32 %2534, 65535
  %2536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2535)  ; LegacyF16ToF32(value)
  %2537 = lshr i32 %2530, 16
  %2538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2537)  ; LegacyF16ToF32(value)
  %2539 = fsub fast float %2500, %2538
  %2540 = fmul fast float %2539, %2532
  %2541 = fadd fast float %2540, %2536
  %2542 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  br label %2543

; <label>:2543                                    ; preds = %2527, %2475
  %2544 = phi float [ %2542, %2527 ], [ %2500, %2475 ]
  %2545 = call float @dx.op.dot2.f32(i32 54, float %2521, float %2522, float %1964, float %1965)  ; Dot2(ax,ay,bx,by)
  %2546 = call float @dx.op.dot2.f32(i32 54, float %2521, float %2522, float %1966, float %1967)  ; Dot2(ax,ay,bx,by)
  br label %2547

; <label>:2547                                    ; preds = %2543, %2453
  %2548 = phi float [ %2544, %2543 ], [ 0x3FD6666660000000, %2453 ]
  %2549 = phi float [ %2545, %2543 ], [ 0.000000e+00, %2453 ]
  %2550 = phi float [ %2546, %2543 ], [ 0.000000e+00, %2453 ]
  %2551 = phi float [ %2487, %2543 ], [ 1.000000e+00, %2453 ]
  %2552 = add i32 %45, 192
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = lshr i32 %2554, 22
  %2556 = shl nuw nsw i32 %2555, 5
  %2557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2556)  ; LegacyF16ToF32(value)
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 64
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2595, label %2562

; <label>:2562                                    ; preds = %2547
  %2563 = add i32 %45, 480
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = add i32 %2565, 0
  %2567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2569 = extractvalue %dx.types.ResRet.i32 %2568, 0
  %2570 = and i32 %2569, 131072
  %2571 = icmp eq i32 %2570, 0
  %2572 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2567, %dx.types.Handle %81, float %2060, float %2061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2573 = extractvalue %dx.types.ResRet.f32 %2572, 0
  %2574 = extractvalue %dx.types.ResRet.f32 %2572, 1
  %2575 = extractvalue %dx.types.ResRet.f32 %2572, 2
  %2576 = fmul fast float %2573, %290
  %2577 = fmul fast float %2574, %293
  %2578 = fmul fast float %2575, %296
  br i1 %2571, label %2585, label %2579

; <label>:2579                                    ; preds = %2562
  %2580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2581 = extractvalue %dx.types.CBufRet.f32 %2580, 0
  %2582 = fmul fast float %2581, %2576
  %2583 = fmul fast float %2581, %2577
  %2584 = fmul fast float %2581, %2578
  br label %2585

; <label>:2585                                    ; preds = %2579, %2562
  %2586 = phi float [ %2582, %2579 ], [ %2576, %2562 ]
  %2587 = phi float [ %2583, %2579 ], [ %2577, %2562 ]
  %2588 = phi float [ %2584, %2579 ], [ %2578, %2562 ]
  %2589 = fmul fast float %2586, %2557
  %2590 = select i1 %186, float %2589, float %2586
  %2591 = call float @dx.op.dot3.f32(i32 55, float %2590, float %2587, float %2588, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2592 = select i1 %186, float 0.000000e+00, float %2586
  %2593 = select i1 %186, float %2591, float %2587
  %2594 = select i1 %186, float 0.000000e+00, float %2588
  br label %2595

; <label>:2595                                    ; preds = %2585, %2547
  %2596 = phi float [ %2592, %2585 ], [ 0.000000e+00, %2547 ]
  %2597 = phi float [ %2593, %2585 ], [ 0.000000e+00, %2547 ]
  %2598 = phi float [ %2594, %2585 ], [ 0.000000e+00, %2547 ]
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = and i32 %2600, 26624
  %2602 = icmp eq i32 %2601, 0
  br i1 %2602, label %2660, label %2603

; <label>:2603                                    ; preds = %2595
  %2604 = add i32 %45, 544
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = add i32 %2606, 0
  %2608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2608, %dx.types.Handle %82, float %2060, float %2061, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2610 = extractvalue %dx.types.ResRet.f32 %2609, 0
  %2611 = extractvalue %dx.types.ResRet.f32 %2609, 1
  %2612 = extractvalue %dx.types.ResRet.f32 %2609, 3
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 1048576
  %2616 = icmp ne i32 %2615, 0
  %2617 = and i32 %2614, 8192
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2633, label %2619

; <label>:2619                                    ; preds = %2603
  %2620 = extractvalue %dx.types.ResRet.f32 %2609, 2
  %2621 = select i1 %2616, float %2620, float %2611
  %2622 = select i1 %2616, float %2610, float %2611
  %2623 = add i32 %45, 128
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = lshr i32 %2625, 16
  %2627 = and i32 %2626, 255
  %2628 = uitofp i32 %2627 to float
  %2629 = fmul fast float %2628, 0x3F80101020000000
  %2630 = fmul fast float %2629, %2622
  %2631 = fmul fast float %2629, %2611
  %2632 = fmul fast float %2629, %2621
  br label %2633

; <label>:2633                                    ; preds = %2619, %2603
  %2634 = phi float [ %2630, %2619 ], [ 0.000000e+00, %2603 ]
  %2635 = phi float [ %2631, %2619 ], [ 0.000000e+00, %2603 ]
  %2636 = phi float [ %2632, %2619 ], [ 0.000000e+00, %2603 ]
  %2637 = and i32 %2614, 2048
  %2638 = icmp eq i32 %2637, 0
  br i1 %2638, label %2647, label %2639

; <label>:2639                                    ; preds = %2633
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = shl i32 %2641, 4
  %2643 = and i32 %2642, 32752
  %2644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2643)  ; LegacyF16ToF32(value)
  %2645 = fmul fast float %2644, %2612
  %2646 = call float @dx.op.binary.f32(i32 35, float %2645, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2647

; <label>:2647                                    ; preds = %2639, %2633
  %2648 = phi float [ %2646, %2639 ], [ 0x3F70101020000000, %2633 ]
  %2649 = and i32 %2614, 16384
  %2650 = icmp eq i32 %2649, 0
  br i1 %2650, label %2660, label %2651

; <label>:2651                                    ; preds = %2647
  %2652 = add i32 %45, 128
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = lshr i32 %2654, 24
  %2656 = uitofp i32 %2655 to float
  %2657 = fmul fast float %2610, 0x3F70101020000000
  %2658 = select i1 %2616, float 0x3F70101020000000, float %2657
  %2659 = fmul fast float %2658, %2656
  br label %2660

; <label>:2660                                    ; preds = %2651, %2647, %2595
  %2661 = phi float [ %2634, %2651 ], [ %2634, %2647 ], [ 0.000000e+00, %2595 ]
  %2662 = phi float [ %2635, %2651 ], [ %2635, %2647 ], [ 0.000000e+00, %2595 ]
  %2663 = phi float [ %2636, %2651 ], [ %2636, %2647 ], [ 0.000000e+00, %2595 ]
  %2664 = phi float [ %2648, %2651 ], [ %2648, %2647 ], [ 0x3F70101020000000, %2595 ]
  %2665 = phi float [ %2659, %2651 ], [ 0.000000e+00, %2647 ], [ 0.000000e+00, %2595 ]
  %2666 = add i32 %45, 128
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = and i32 %2668, 255
  %2670 = uitofp i32 %2669 to float
  %2671 = lshr i32 %2668, 8
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = call float @dx.op.dot3.f32(i32 55, float %2468, float %2469, float %2470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2675 = fmul fast float %2673, %2674
  %2676 = fadd fast float %2675, %2670
  %2677 = fmul fast float %2676, 0x3F70101020000000
  %2678 = call float @dx.op.unary.f32(i32 7, float %2677)  ; Saturate(value)
  br i1 %1952, label %2679, label %2687

; <label>:2679                                    ; preds = %2660
  %2680 = fsub fast float 1.000000e+00, %2248
  %2681 = fmul fast float %2680, %1936
  %2682 = fmul fast float %2680, %1937
  %2683 = fmul fast float %2680, %1938
  %2684 = fmul fast float %2680, %1939
  %2685 = fmul fast float %2680, %1940
  %2686 = fmul fast float %2680, %1941
  br label %2687

; <label>:2687                                    ; preds = %2679, %2660
  %2688 = phi float [ %2681, %2679 ], [ %1936, %2660 ]
  %2689 = phi float [ %2682, %2679 ], [ %1937, %2660 ]
  %2690 = phi float [ %2683, %2679 ], [ %1938, %2660 ]
  %2691 = phi float [ %2684, %2679 ], [ %1939, %2660 ]
  %2692 = phi float [ %2685, %2679 ], [ %1940, %2660 ]
  %2693 = phi float [ %2686, %2679 ], [ %1941, %2660 ]
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = and i32 %2695, 3
  %2697 = icmp eq i32 %2696, 3
  br i1 %2697, label %2776, label %2698

; <label>:2698                                    ; preds = %2687
  %2699 = and i32 %2695, 16
  %2700 = icmp ne i32 %2699, 0
  %2701 = select i1 %2700, float %2248, float 0.000000e+00
  %2702 = icmp eq i32 %2696, 0
  br i1 %2702, label %2703, label %2731

; <label>:2703                                    ; preds = %2698
  %2704 = and i32 %2695, 64
  %2705 = icmp ne i32 %2704, 0
  %2706 = select i1 %2705, float %2248, float 0.000000e+00
  %2707 = fsub fast float %2468, %2688
  %2708 = fsub fast float %2469, %2689
  %2709 = fsub fast float %2470, %2690
  %2710 = fmul fast float %2701, %2707
  %2711 = fmul fast float %2701, %2708
  %2712 = fmul fast float %2701, %2709
  %2713 = fadd fast float %2710, %2688
  %2714 = fadd fast float %2711, %2689
  %2715 = fadd fast float %2712, %2690
  %2716 = fsub fast float %2454, %1945
  %2717 = fmul fast float %2701, %2716
  %2718 = fadd fast float %2717, %1945
  %2719 = fsub fast float %2596, %2691
  %2720 = fsub fast float %2597, %2692
  %2721 = fsub fast float %2598, %2693
  %2722 = fmul fast float %2706, %2719
  %2723 = fmul fast float %2706, %2720
  %2724 = fmul fast float %2706, %2721
  %2725 = fadd fast float %2722, %2691
  %2726 = fadd fast float %2723, %2692
  %2727 = fadd fast float %2724, %2693
  %2728 = fsub fast float %2678, %1950
  %2729 = fmul fast float %2701, %2728
  %2730 = fadd fast float %2729, %1950
  br label %2776

; <label>:2731                                    ; preds = %2698
  %2732 = icmp eq i32 %2696, 1
  br i1 %2732, label %2733, label %2746

; <label>:2733                                    ; preds = %2731
  %2734 = fadd fast float %2468, -1.000000e+00
  %2735 = fadd fast float %2469, -1.000000e+00
  %2736 = fadd fast float %2470, -1.000000e+00
  %2737 = fmul fast float %2701, %2734
  %2738 = fmul fast float %2701, %2735
  %2739 = fmul fast float %2701, %2736
  %2740 = fadd fast float %2737, 1.000000e+00
  %2741 = fadd fast float %2738, 1.000000e+00
  %2742 = fadd fast float %2739, 1.000000e+00
  %2743 = fmul fast float %2740, %2688
  %2744 = fmul fast float %2741, %2689
  %2745 = fmul fast float %2742, %2690
  br label %2776

; <label>:2746                                    ; preds = %2731
  %2747 = icmp eq i32 %2696, 2
  br i1 %2747, label %2748, label %2776

; <label>:2748                                    ; preds = %2746
  %2749 = call float @dx.op.unary.f32(i32 24, float %2468)  ; Sqrt(value)
  %2750 = call float @dx.op.unary.f32(i32 24, float %2469)  ; Sqrt(value)
  %2751 = call float @dx.op.unary.f32(i32 24, float %2470)  ; Sqrt(value)
  %2752 = fadd fast float %2749, -5.000000e-01
  %2753 = fadd fast float %2750, -5.000000e-01
  %2754 = fadd fast float %2751, -5.000000e-01
  %2755 = fmul fast float %2752, %2701
  %2756 = fmul fast float %2753, %2701
  %2757 = fmul fast float %2754, %2701
  %2758 = fadd fast float %2755, 5.000000e-01
  %2759 = fadd fast float %2756, 5.000000e-01
  %2760 = fadd fast float %2757, 5.000000e-01
  %2761 = fmul fast float %2758, 2.000000e+00
  %2762 = fsub fast float 1.000000e+00, %2761
  %2763 = fmul fast float %2762, %2688
  %2764 = fadd fast float %2763, %2761
  %2765 = fmul fast float %2764, %2688
  %2766 = fmul fast float %2759, 2.000000e+00
  %2767 = fsub fast float 1.000000e+00, %2766
  %2768 = fmul fast float %2767, %2689
  %2769 = fadd fast float %2768, %2766
  %2770 = fmul fast float %2769, %2689
  %2771 = fmul fast float %2760, 2.000000e+00
  %2772 = fsub fast float 1.000000e+00, %2771
  %2773 = fmul fast float %2772, %2690
  %2774 = fadd fast float %2773, %2771
  %2775 = fmul fast float %2774, %2690
  br label %2776

; <label>:2776                                    ; preds = %2748, %2746, %2733, %2703, %2687
  %2777 = phi float [ %2688, %2687 ], [ %2765, %2748 ], [ %2688, %2746 ], [ %2743, %2733 ], [ %2713, %2703 ]
  %2778 = phi float [ %2689, %2687 ], [ %2770, %2748 ], [ %2689, %2746 ], [ %2744, %2733 ], [ %2714, %2703 ]
  %2779 = phi float [ %2690, %2687 ], [ %2775, %2748 ], [ %2690, %2746 ], [ %2745, %2733 ], [ %2715, %2703 ]
  %2780 = phi float [ %2691, %2687 ], [ %2691, %2748 ], [ %2691, %2746 ], [ %2691, %2733 ], [ %2725, %2703 ]
  %2781 = phi float [ %2692, %2687 ], [ %2692, %2748 ], [ %2692, %2746 ], [ %2692, %2733 ], [ %2726, %2703 ]
  %2782 = phi float [ %2693, %2687 ], [ %2693, %2748 ], [ %2693, %2746 ], [ %2693, %2733 ], [ %2727, %2703 ]
  %2783 = phi float [ %1945, %2687 ], [ %1945, %2748 ], [ %1945, %2746 ], [ %1945, %2733 ], [ %2718, %2703 ]
  %2784 = phi float [ %1950, %2687 ], [ %1950, %2748 ], [ %1950, %2746 ], [ %1950, %2733 ], [ %2730, %2703 ]
  %2785 = and i32 %2695, 12
  %2786 = icmp eq i32 %2785, 12
  br i1 %2786, label %2903, label %2787

; <label>:2787                                    ; preds = %2776
  %2788 = and i32 %2695, 2097184
  %2789 = icmp eq i32 %2788, 2097184
  %2790 = select i1 %2789, float %2248, float 0.000000e+00
  %2791 = and i32 %2695, 4194336
  %2792 = icmp eq i32 %2791, 4194336
  %2793 = select i1 %2792, float %2248, float 0.000000e+00
  %2794 = and i32 %2695, 8388640
  %2795 = icmp eq i32 %2794, 8388640
  %2796 = select i1 %2795, float %2248, float 0.000000e+00
  %2797 = and i32 %2695, 2048
  %2798 = icmp ne i32 %2797, 0
  %2799 = select i1 %2798, float %2248, float 0.000000e+00
  %2800 = and i32 %2695, 8192
  %2801 = icmp ne i32 %2800, 0
  %2802 = select i1 %2801, float %2248, float 0.000000e+00
  %2803 = and i32 %2695, 16384
  %2804 = icmp ne i32 %2803, 0
  %2805 = select i1 %2804, float %2248, float 0.000000e+00
  %2806 = icmp eq i32 %2785, 0
  br i1 %2806, label %2807, label %2835

; <label>:2807                                    ; preds = %2787
  %2808 = fsub fast float %2549, %1934
  %2809 = fsub fast float %2550, %1935
  %2810 = fmul fast float %2790, %2808
  %2811 = fmul fast float %2790, %2809
  %2812 = fadd fast float %2810, %1934
  %2813 = fadd fast float %2811, %1935
  %2814 = fsub fast float %2551, %1947
  %2815 = fmul fast float %2793, %2814
  %2816 = fadd fast float %2815, %1947
  %2817 = fsub fast float %2548, %1946
  %2818 = fmul fast float %2796, %2817
  %2819 = fadd fast float %2818, %1946
  %2820 = fsub fast float %2664, %1948
  %2821 = fmul fast float %2799, %2820
  %2822 = fadd fast float %2821, %1948
  %2823 = fsub fast float %2661, %1942
  %2824 = fsub fast float %2662, %1943
  %2825 = fsub fast float %2663, %1944
  %2826 = fmul fast float %2802, %2823
  %2827 = fmul fast float %2802, %2824
  %2828 = fmul fast float %2802, %2825
  %2829 = fadd fast float %2826, %1942
  %2830 = fadd fast float %2827, %1943
  %2831 = fadd fast float %2828, %1944
  %2832 = fsub fast float %2665, %1949
  %2833 = fmul fast float %2805, %2832
  %2834 = fadd fast float %2833, %1949
  br label %2903

; <label>:2835                                    ; preds = %2787
  %2836 = icmp eq i32 %2785, 4
  br i1 %2836, label %2837, label %2879

; <label>:2837                                    ; preds = %2835
  %2838 = fmul fast float %2790, %2549
  %2839 = fmul fast float %2790, %2550
  %2840 = fadd fast float %2838, %1934
  %2841 = fadd fast float %2839, %1935
  %2842 = call float @dx.op.binary.f32(i32 36, float %1947, float %2551)  ; FMin(a,b)
  %2843 = fsub fast float %2842, %1947
  %2844 = fmul fast float %2843, %2793
  %2845 = fadd fast float %2844, %1947
  %2846 = fadd fast float %2548, %1946
  %2847 = fmul fast float %2846, 0x3FF337FAE0000000
  %2848 = fmul fast float %1946, %1946
  %2849 = fmul fast float %2548, %2548
  %2850 = fadd fast float %2849, %2848
  %2851 = fmul fast float %2850, 0x3FE5152B00000000
  %2852 = fmul fast float %1946, 0xBFCC1F85E0000000
  %2853 = fmul fast float %2852, %2548
  %2854 = fadd fast float %2853, 0xBFE1363700000000
  %2855 = fadd fast float %2854, %2847
  %2856 = fsub fast float %2855, %2851
  %2857 = fmul fast float %2846, 0x3FBA6F0D00000000
  %2858 = fmul fast float %2850, 0x3FD0432880000000
  %2859 = fmul fast float %1946, 0xBFEF110800000000
  %2860 = fmul fast float %2859, %2548
  %2861 = fadd fast float %2860, 1.000000e+00
  %2862 = fsub fast float %2861, %2857
  %2863 = fadd fast float %2862, %2858
  %2864 = fdiv fast float %2856, %2863
  %2865 = call float @dx.op.unary.f32(i32 7, float %2864)  ; Saturate(value)
  %2866 = fsub fast float %2865, %1946
  %2867 = fmul fast float %2866, %2796
  %2868 = fadd fast float %2867, %1946
  %2869 = fmul fast float %2799, %2664
  %2870 = fadd fast float %2869, %1948
  %2871 = fmul fast float %2802, %2661
  %2872 = fmul fast float %2802, %2662
  %2873 = fmul fast float %2802, %2663
  %2874 = fadd fast float %2871, %1942
  %2875 = fadd fast float %2872, %1943
  %2876 = fadd fast float %2873, %1944
  %2877 = fmul fast float %2805, %2665
  %2878 = fadd fast float %2877, %1949
  br label %2903

; <label>:2879                                    ; preds = %2835
  %2880 = icmp eq i32 %2785, 8
  br i1 %2880, label %2881, label %2903

; <label>:2881                                    ; preds = %2879
  %2882 = fmul fast float %2790, %2549
  %2883 = fmul fast float %2790, %2550
  %2884 = fadd fast float %2882, %1934
  %2885 = fadd fast float %2883, %1935
  %2886 = call float @dx.op.binary.f32(i32 36, float %1947, float %2551)  ; FMin(a,b)
  %2887 = fsub fast float %2886, %1947
  %2888 = fmul fast float %2887, %2793
  %2889 = fadd fast float %2888, %1947
  %2890 = fsub fast float %2548, %1946
  %2891 = fmul fast float %2796, %2890
  %2892 = fadd fast float %2891, %1946
  %2893 = fmul fast float %2799, %2664
  %2894 = fadd fast float %2893, %1948
  %2895 = fmul fast float %2802, %2661
  %2896 = fmul fast float %2802, %2662
  %2897 = fmul fast float %2802, %2663
  %2898 = fadd fast float %2895, %1942
  %2899 = fadd fast float %2896, %1943
  %2900 = fadd fast float %2897, %1944
  %2901 = fmul fast float %2805, %2665
  %2902 = fadd fast float %2901, %1949
  br label %2903

; <label>:2903                                    ; preds = %2881, %2879, %2837, %2807, %2776, %2247, %1951, %1933
  %2904 = phi float [ %1934, %2776 ], [ %1934, %2247 ], [ %1934, %1933 ], [ %2884, %2881 ], [ %1934, %2879 ], [ %2840, %2837 ], [ %2812, %2807 ], [ %1934, %1951 ]
  %2905 = phi float [ %1935, %2776 ], [ %1935, %2247 ], [ %1935, %1933 ], [ %2885, %2881 ], [ %1935, %2879 ], [ %2841, %2837 ], [ %2813, %2807 ], [ %1935, %1951 ]
  %2906 = phi float [ %2777, %2776 ], [ %1936, %2247 ], [ %1936, %1933 ], [ %2777, %2881 ], [ %2777, %2879 ], [ %2777, %2837 ], [ %2777, %2807 ], [ %1936, %1951 ]
  %2907 = phi float [ %2778, %2776 ], [ %1937, %2247 ], [ %1937, %1933 ], [ %2778, %2881 ], [ %2778, %2879 ], [ %2778, %2837 ], [ %2778, %2807 ], [ %1937, %1951 ]
  %2908 = phi float [ %2779, %2776 ], [ %1938, %2247 ], [ %1938, %1933 ], [ %2779, %2881 ], [ %2779, %2879 ], [ %2779, %2837 ], [ %2779, %2807 ], [ %1938, %1951 ]
  %2909 = phi float [ %2780, %2776 ], [ %1939, %2247 ], [ %1939, %1933 ], [ %2780, %2881 ], [ %2780, %2879 ], [ %2780, %2837 ], [ %2780, %2807 ], [ %1939, %1951 ]
  %2910 = phi float [ %2781, %2776 ], [ %1940, %2247 ], [ %1940, %1933 ], [ %2781, %2881 ], [ %2781, %2879 ], [ %2781, %2837 ], [ %2781, %2807 ], [ %1940, %1951 ]
  %2911 = phi float [ %2782, %2776 ], [ %1941, %2247 ], [ %1941, %1933 ], [ %2782, %2881 ], [ %2782, %2879 ], [ %2782, %2837 ], [ %2782, %2807 ], [ %1941, %1951 ]
  %2912 = phi float [ %1942, %2776 ], [ %1942, %2247 ], [ %1942, %1933 ], [ %2898, %2881 ], [ %1942, %2879 ], [ %2874, %2837 ], [ %2829, %2807 ], [ %1942, %1951 ]
  %2913 = phi float [ %1943, %2776 ], [ %1943, %2247 ], [ %1943, %1933 ], [ %2899, %2881 ], [ %1943, %2879 ], [ %2875, %2837 ], [ %2830, %2807 ], [ %1943, %1951 ]
  %2914 = phi float [ %1944, %2776 ], [ %1944, %2247 ], [ %1944, %1933 ], [ %2900, %2881 ], [ %1944, %2879 ], [ %2876, %2837 ], [ %2831, %2807 ], [ %1944, %1951 ]
  %2915 = phi float [ %2783, %2776 ], [ %1945, %2247 ], [ %1945, %1933 ], [ %2783, %2881 ], [ %2783, %2879 ], [ %2783, %2837 ], [ %2783, %2807 ], [ %1945, %1951 ]
  %2916 = phi float [ %1946, %2776 ], [ %1946, %2247 ], [ %1946, %1933 ], [ %2892, %2881 ], [ %1946, %2879 ], [ %2868, %2837 ], [ %2819, %2807 ], [ %1946, %1951 ]
  %2917 = phi float [ %1947, %2776 ], [ %1947, %2247 ], [ %1947, %1933 ], [ %2889, %2881 ], [ %1947, %2879 ], [ %2845, %2837 ], [ %2816, %2807 ], [ %1947, %1951 ]
  %2918 = phi float [ %1948, %2776 ], [ %1948, %2247 ], [ %1948, %1933 ], [ %2894, %2881 ], [ %1948, %2879 ], [ %2870, %2837 ], [ %2822, %2807 ], [ %1948, %1951 ]
  %2919 = phi float [ %1949, %2776 ], [ %1949, %2247 ], [ %1949, %1933 ], [ %2902, %2881 ], [ %1949, %2879 ], [ %2878, %2837 ], [ %2834, %2807 ], [ %1949, %1951 ]
  %2920 = phi float [ %2784, %2776 ], [ %1950, %2247 ], [ %1950, %1933 ], [ %2784, %2881 ], [ %2784, %2879 ], [ %2784, %2837 ], [ %2784, %2807 ], [ %1950, %1951 ]
  br i1 %377, label %3873, label %2921

; <label>:2921                                    ; preds = %2903
  %2922 = icmp ult i32 %428, 4
  %2923 = add i32 %45, 72
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %45, 76
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = or i32 %2928, %2925
  %2930 = icmp eq i32 %2929, 0
  br i1 %2930, label %3873, label %2931

; <label>:2931                                    ; preds = %2921
  %2932 = and i32 %2925, 262144
  %2933 = icmp ne i32 %2932, 0
  %2934 = select i1 %2933, float %48, float 1.000000e+00
  %2935 = select i1 %2933, float %49, float 0.000000e+00
  %2936 = select i1 %2933, float %50, float 0.000000e+00
  %2937 = select i1 %2933, float %51, float 1.000000e+00
  %2938 = select i1 %2933, float %52, float %73
  %2939 = select i1 %2933, float %53, float %74
  %2940 = add i32 %45, 332
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = lshr i32 %2942, 16
  %2944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2943)  ; LegacyF16ToF32(value)
  %2945 = fmul fast float %2944, 0x3F50624DE0000000
  %2946 = add i32 %45, 136
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = lshr i32 %2948, 16
  %2950 = and i32 %2949, 255
  %2951 = lshr i32 %2948, 24
  %2952 = add i32 %45, 340
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 65535
  %2956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2955)  ; LegacyF16ToF32(value)
  %2957 = lshr i32 %2954, 16
  %2958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2957)  ; LegacyF16ToF32(value)
  %2959 = add i32 %45, 80
  %2960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2959, i32 undef)  ; BufferLoad(srv,index,wot)
  %2961 = extractvalue %dx.types.ResRet.i32 %2960, 0
  %2962 = lshr i32 %2961, 22
  %2963 = shl nuw nsw i32 %2962, 5
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = shl i32 %2961, 4
  %2966 = and i32 %2965, 32752
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = lshr i32 %2961, 7
  %2969 = and i32 %2968, 32752
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2972 = extractvalue %dx.types.CBufRet.f32 %2971, 3
  %2973 = fmul fast float %2972, 1.000000e+03
  %2974 = fmul fast float %367, %2973
  %2975 = call float @dx.op.unary.f32(i32 22, float %2974)  ; Frc(value)
  %2976 = fadd fast float %2975, %357
  %2977 = fmul fast float %368, %2973
  %2978 = call float @dx.op.unary.f32(i32 22, float %2977)  ; Frc(value)
  %2979 = fadd fast float %2978, %359
  %2980 = fmul fast float %2945, %2973
  %2981 = call float @dx.op.unary.f32(i32 22, float %2980)  ; Frc(value)
  %2982 = fmul fast float %2981, 0x401921FB60000000
  %2983 = fadd fast float %2982, %2964
  %2984 = call float @dx.op.unary.f32(i32 13, float %2983)  ; Sin(value)
  %2985 = call float @dx.op.unary.f32(i32 12, float %2983)  ; Cos(value)
  %2986 = fsub fast float -0.000000e+00, %2984
  %2987 = fadd fast float %2938, -5.000000e-01
  %2988 = fadd fast float %2939, -5.000000e-01
  %2989 = fmul fast float %2956, %2987
  %2990 = fmul fast float %2958, %2988
  %2991 = fadd fast float %2989, 5.000000e-01
  %2992 = fadd fast float %2990, 5.000000e-01
  %2993 = fmul fast float %2967, %2991
  %2994 = fmul fast float %2970, %2992
  %2995 = fmul fast float %2985, %2993
  %2996 = call float @dx.op.tertiary.f32(i32 46, float %2986, float %2994, float %2995)  ; FMad(a,b,c)
  %2997 = fmul fast float %2984, %2993
  %2998 = call float @dx.op.tertiary.f32(i32 46, float %2985, float %2994, float %2997)  ; FMad(a,b,c)
  %2999 = fadd fast float %2976, %2996
  %3000 = fadd fast float %2979, %2998
  %3001 = icmp ugt i32 %2950, 1
  %3002 = icmp ugt i32 %2948, 33554431
  %3003 = or i1 %3002, %3001
  br i1 %3003, label %3004, label %3029

; <label>:3004                                    ; preds = %2931
  %3005 = add i32 %45, 276
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = lshr i32 %3007, 16
  %3009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3008)  ; LegacyF16ToF32(value)
  %3010 = fmul fast float %2972, %3009
  %3011 = call float @dx.op.unary.f32(i32 22, float %3010)  ; Frc(value)
  %3012 = mul nuw nsw i32 %2950, %2951
  %3013 = uitofp i32 %3012 to float
  %3014 = fmul fast float %3011, %3013
  %3015 = call float @dx.op.unary.f32(i32 27, float %3014)  ; Round_ni(value)
  %3016 = fptoui float %3015 to i32
  %3017 = urem i32 %3016, %2950
  %3018 = udiv i32 %3016, %2951
  %3019 = call float @dx.op.unary.f32(i32 22, float %2999)  ; Frc(value)
  %3020 = call float @dx.op.unary.f32(i32 22, float %3000)  ; Frc(value)
  %3021 = uitofp i32 %3017 to float
  %3022 = uitofp i32 %3018 to float
  %3023 = fadd fast float %3019, %3021
  %3024 = fadd fast float %3020, %3022
  %3025 = uitofp i32 %2950 to float
  %3026 = uitofp i32 %2951 to float
  %3027 = fdiv fast float %3023, %3025
  %3028 = fdiv fast float %3024, %3026
  br label %3029

; <label>:3029                                    ; preds = %3004, %2931
  %3030 = phi float [ %3027, %3004 ], [ %2999, %2931 ]
  %3031 = phi float [ %3028, %3004 ], [ %3000, %2931 ]
  %3032 = and i32 %2925, 16777216
  %3033 = icmp eq i32 %3032, 0
  br i1 %3033, label %3143, label %3034

; <label>:3034                                    ; preds = %3029
  %3035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3036 = extractvalue %dx.types.CBufRet.f32 %3035, 0
  %3037 = extractvalue %dx.types.CBufRet.f32 %3035, 1
  %3038 = extractvalue %dx.types.CBufRet.f32 %3035, 2
  %3039 = fadd fast float %3036, %144
  %3040 = fadd fast float %3037, %145
  %3041 = fadd fast float %3038, %146
  %3042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3043 = extractvalue %dx.types.CBufRet.f32 %3042, 0
  %3044 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3045 = icmp eq i32 %46, 65535
  br i1 %3045, label %3140, label %3046

; <label>:3046                                    ; preds = %3034
  %3047 = lshr i32 %46, 1
  %3048 = shl i32 %3047, 2
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %46, 1
  %3052 = icmp ne i32 %3051, 0
  %3053 = lshr i32 %3050, 16
  %3054 = and i32 %3050, 65535
  %3055 = select i1 %3052, i32 %3053, i32 %3054
  %3056 = icmp eq i32 %3055, 65535
  br i1 %3056, label %3136, label %3057

; <label>:3057                                    ; preds = %3046
  %3058 = mul nuw nsw i32 %3055, 40
  %3059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 1
  %3062 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3063 = add nuw nsw i32 %3058, 12
  %3064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.f32 %3064, 0
  %3066 = extractvalue %dx.types.ResRet.f32 %3064, 1
  %3067 = extractvalue %dx.types.ResRet.f32 %3064, 2
  %3068 = add nuw nsw i32 %3058, 24
  %3069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.f32 %3069, 0
  %3071 = extractvalue %dx.types.ResRet.f32 %3069, 1
  %3072 = extractvalue %dx.types.ResRet.f32 %3069, 2
  %3073 = add nuw nsw i32 %3058, 36
  %3074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.f32 %3074, 0
  %3076 = fsub fast float %3039, %3060
  %3077 = fsub fast float %3040, %3061
  %3078 = fsub fast float %3041, %3062
  %3079 = fmul fast float %3075, %3076
  %3080 = fmul fast float %3075, %3077
  %3081 = fmul fast float %3075, %3078
  %3082 = call float @dx.op.unary.f32(i32 27, float %3079)  ; Round_ni(value)
  %3083 = call float @dx.op.unary.f32(i32 27, float %3080)  ; Round_ni(value)
  %3084 = call float @dx.op.unary.f32(i32 27, float %3081)  ; Round_ni(value)
  %3085 = fadd fast float %3082, 5.000000e-01
  %3086 = fadd fast float %3083, 5.000000e-01
  %3087 = fadd fast float %3084, 5.000000e-01
  %3088 = fmul fast float %3085, %3065
  %3089 = fmul fast float %3086, %3066
  %3090 = fmul fast float %3087, %3067
  %3091 = shl i32 %46, 2
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = add i32 %3093, 0
  %3095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3096 = call float @dx.op.unary.f32(i32 22, float %3088)  ; Frc(value)
  %3097 = call float @dx.op.unary.f32(i32 22, float %3089)  ; Frc(value)
  %3098 = call float @dx.op.unary.f32(i32 22, float %3090)  ; Frc(value)
  %3099 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3095, %dx.types.Handle %40, float %3096, float %3097, float %3098, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  %3101 = extractvalue %dx.types.ResRet.f32 %3099, 1
  %3102 = extractvalue %dx.types.ResRet.f32 %3099, 2
  %3103 = fmul fast float %3100, 1.023000e+03
  %3104 = fmul fast float %3101, 1.023000e+03
  %3105 = fmul fast float %3102, 1.023000e+03
  %3106 = fadd fast float %3103, 5.000000e-01
  %3107 = fadd fast float %3104, 5.000000e-01
  %3108 = fadd fast float %3105, 5.000000e-01
  %3109 = call float @dx.op.unary.f32(i32 27, float %3106)  ; Round_ni(value)
  %3110 = call float @dx.op.unary.f32(i32 27, float %3107)  ; Round_ni(value)
  %3111 = call float @dx.op.unary.f32(i32 27, float %3108)  ; Round_ni(value)
  %3112 = fsub fast float %3079, %3082
  %3113 = fsub fast float %3080, %3083
  %3114 = fsub fast float %3081, %3084
  %3115 = fmul fast float %3112, 7.500000e-01
  %3116 = fmul fast float %3113, 7.500000e-01
  %3117 = fmul fast float %3114, 7.500000e-01
  %3118 = fadd fast float %3082, 1.250000e-01
  %3119 = fadd fast float %3118, %3115
  %3120 = fadd fast float %3119, %3109
  %3121 = fadd fast float %3083, 1.250000e-01
  %3122 = fadd fast float %3121, %3116
  %3123 = fadd fast float %3122, %3110
  %3124 = fadd fast float %3084, 1.250000e-01
  %3125 = fadd fast float %3124, %3117
  %3126 = fadd fast float %3125, %3111
  %3127 = fmul fast float %3120, %3070
  %3128 = fmul fast float %3123, %3071
  %3129 = fmul fast float %3126, %3072
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = add i32 %3131, 0
  %3133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3133, %dx.types.Handle %38, float %3127, float %3128, float %3129, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  br label %3136

; <label>:3136                                    ; preds = %3057, %3046
  %3137 = phi float [ %3135, %3057 ], [ -1.000000e+00, %3046 ]
  %3138 = fadd fast float %3137, %3044
  %3139 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  br label %3140

; <label>:3140                                    ; preds = %3136, %3034
  %3141 = phi float [ %3139, %3136 ], [ %3044, %3034 ]
  %3142 = fmul fast float %3141, %423
  br label %3143

; <label>:3143                                    ; preds = %3140, %3029
  %3144 = phi float [ %3142, %3140 ], [ %423, %3029 ]
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 256
  %3148 = icmp eq i32 %3147, 0
  br i1 %3148, label %3195, label %3149

; <label>:3149                                    ; preds = %3143
  %3150 = add i32 %45, 516
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = add i32 %3152, 0
  %3154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3154, %dx.types.Handle %82, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = add i32 %45, 148
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = shl i32 %3159, 4
  %3161 = and i32 %3160, 32752
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = lshr i32 %3159, 7
  %3164 = and i32 %3163, 32752
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = fsub fast float 1.000000e+00, %3144
  %3167 = call float @dx.op.binary.f32(i32 35, float %3166, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3168 = bitcast float %3144 to i32
  %3169 = sitofp i32 %3168 to float
  %3170 = fadd fast float %3169, 0xC1CFBF8940000000
  %3171 = fmul fast float %3165, %3170
  %3172 = fadd fast float %3171, 0x41CFBF8940000000
  %3173 = fptosi float %3172 to i32
  %3174 = bitcast i32 %3173 to float
  %3175 = bitcast float %3167 to i32
  %3176 = sitofp i32 %3175 to float
  %3177 = fadd fast float %3176, 0xC1CFBF8940000000
  %3178 = fmul fast float %3177, %3165
  %3179 = fadd fast float %3178, 0x41CFBF8940000000
  %3180 = fptosi float %3179 to i32
  %3181 = bitcast i32 %3180 to float
  %3182 = fmul fast float %3174, %3162
  %3183 = fmul fast float %3181, %3162
  %3184 = fsub fast float %3167, %3182
  %3185 = fadd fast float %3183, %3167
  %3186 = call float @dx.op.unary.f32(i32 7, float %3184)  ; Saturate(value)
  %3187 = call float @dx.op.unary.f32(i32 7, float %3185)  ; Saturate(value)
  %3188 = fsub fast float %3156, %3186
  %3189 = fsub fast float %3187, %3186
  %3190 = bitcast float %3189 to i32
  %3191 = sub nsw i32 2129859010, %3190
  %3192 = bitcast i32 %3191 to float
  %3193 = fmul fast float %3192, %3188
  %3194 = call float @dx.op.unary.f32(i32 7, float %3193)  ; Saturate(value)
  br label %3195

; <label>:3195                                    ; preds = %3149, %3143
  %3196 = phi float [ %3194, %3149 ], [ %3144, %3143 ]
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 128
  %3200 = icmp eq i32 %3199, 0
  br i1 %3200, label %3217, label %3201

; <label>:3201                                    ; preds = %3195
  %3202 = add i32 %45, 500
  %3203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3202, i32 undef)  ; BufferLoad(srv,index,wot)
  %3204 = extractvalue %dx.types.ResRet.i32 %3203, 0
  %3205 = add i32 %3204, 0
  %3206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3207 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3206, %dx.types.Handle %82, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3208 = extractvalue %dx.types.ResRet.f32 %3207, 0
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 524288
  %3212 = icmp ne i32 %3211, 0
  %3213 = fcmp fast ogt float %3208, 0x3FE0101020000000
  %3214 = select i1 %3213, float 1.000000e+00, float 0.000000e+00
  %3215 = select i1 %3212, float %3214, float %3208
  %3216 = fmul fast float %3215, %3196
  br label %3217

; <label>:3217                                    ; preds = %3201, %3195
  %3218 = phi float [ %3216, %3201 ], [ %3196, %3195 ]
  %3219 = fcmp fast ult float %3218, 0x3F70101020000000
  br i1 %3219, label %3873, label %3220

; <label>:3220                                    ; preds = %3217
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = and i32 %3222, 16
  %3224 = icmp eq i32 %3223, 0
  br i1 %3224, label %3423, label %3225

; <label>:3225                                    ; preds = %3220
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = add i32 %45, 452
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %3230, 0
  %3232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3232, %dx.types.Handle %81, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.ResRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.ResRet.f32 %3233, 2
  %3237 = extractvalue %dx.types.ResRet.f32 %3233, 3
  %3238 = and i32 %3227, 255
  %3239 = uitofp i32 %3238 to float
  %3240 = lshr i32 %3227, 8
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3237, %3239
  %3244 = fadd fast float %3243, %3242
  %3245 = fmul fast float %3244, 0x3F70101000000000
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = and i32 %3247, 512
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %3258, label %3250

; <label>:3250                                    ; preds = %3225
  %3251 = add i32 %45, 532
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = add i32 %3253, 0
  %3255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3255, %dx.types.Handle %82, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 0
  br label %3258

; <label>:3258                                    ; preds = %3250, %3225
  %3259 = phi float [ %3257, %3250 ], [ 1.000000e+00, %3225 ]
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = and i32 %3261, 33554432
  %3263 = icmp eq i32 %3262, 0
  br i1 %3263, label %3370, label %3264

; <label>:3264                                    ; preds = %3258
  %3265 = add i32 %45, 272
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 65535
  %3269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3268)  ; LegacyF16ToF32(value)
  %3270 = lshr i32 %3267, 16
  %3271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3270)  ; LegacyF16ToF32(value)
  %3272 = add i32 %45, 276
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, 65535
  %3276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3275)  ; LegacyF16ToF32(value)
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = lshr i32 %3278, 24
  %3280 = uitofp i32 %3279 to float
  %3281 = fmul fast float %3280, 0x3F70101020000000
  %3282 = and i32 %3278, 255
  %3283 = uitofp i32 %3282 to float
  %3284 = fmul fast float %3283, 0x3F70101020000000
  %3285 = lshr i32 %3278, 8
  %3286 = and i32 %3285, 255
  %3287 = uitofp i32 %3286 to float
  %3288 = fmul fast float %3287, 0x3F70101020000000
  %3289 = lshr i32 %3278, 16
  %3290 = and i32 %3289, 255
  %3291 = uitofp i32 %3290 to float
  %3292 = fmul fast float %3291, 0x3F70101020000000
  %3293 = add i32 %45, 268
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = lshr i32 %3295, 24
  %3297 = uitofp i32 %3296 to float
  %3298 = fmul fast float %3297, 0x3F70101020000000
  %3299 = and i32 %3295, 255
  %3300 = uitofp i32 %3299 to float
  %3301 = fmul fast float %3300, 0x3F70101020000000
  %3302 = lshr i32 %3295, 8
  %3303 = and i32 %3302, 255
  %3304 = uitofp i32 %3303 to float
  %3305 = fmul fast float %3304, 0x3F70101020000000
  %3306 = lshr i32 %3295, 16
  %3307 = and i32 %3306, 255
  %3308 = uitofp i32 %3307 to float
  %3309 = fmul fast float %3308, 0x3F70101020000000
  %3310 = bitcast float %3234 to i32
  %3311 = ashr i32 %3310, 1
  %3312 = sub nsw i32 1597463174, %3311
  %3313 = bitcast i32 %3312 to float
  %3314 = fmul fast float %3234, 5.000000e-01
  %3315 = fmul fast float %3313, %3313
  %3316 = fmul fast float %3315, %3314
  %3317 = fsub fast float 1.500000e+00, %3316
  %3318 = fmul fast float %3313, %3234
  %3319 = fmul fast float %3318, %3317
  %3320 = bitcast float %3235 to i32
  %3321 = ashr i32 %3320, 1
  %3322 = sub nsw i32 1597463174, %3321
  %3323 = bitcast i32 %3322 to float
  %3324 = fmul fast float %3235, 5.000000e-01
  %3325 = fmul fast float %3323, %3323
  %3326 = fmul fast float %3325, %3324
  %3327 = fsub fast float 1.500000e+00, %3326
  %3328 = fmul fast float %3323, %3235
  %3329 = fmul fast float %3328, %3327
  %3330 = bitcast float %3236 to i32
  %3331 = ashr i32 %3330, 1
  %3332 = sub nsw i32 1597463174, %3331
  %3333 = bitcast i32 %3332 to float
  %3334 = fmul fast float %3236, 5.000000e-01
  %3335 = fmul fast float %3333, %3333
  %3336 = fmul fast float %3335, %3334
  %3337 = fsub fast float 1.500000e+00, %3336
  %3338 = fmul fast float %3333, %3236
  %3339 = fmul fast float %3338, %3337
  %3340 = fsub fast float %3319, %3301
  %3341 = fsub fast float %3329, %3305
  %3342 = fsub fast float %3339, %3309
  %3343 = fmul fast float %3340, %3269
  %3344 = fmul fast float %3341, %3271
  %3345 = fmul fast float %3342, %3276
  %3346 = fadd fast float %3343, %3284
  %3347 = fadd fast float %3344, %3288
  %3348 = fadd fast float %3345, %3292
  %3349 = call float @dx.op.unary.f32(i32 7, float %3346)  ; Saturate(value)
  %3350 = call float @dx.op.unary.f32(i32 7, float %3347)  ; Saturate(value)
  %3351 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3352 = fmul fast float %3349, %3349
  %3353 = fmul fast float %3350, %3350
  %3354 = fmul fast float %3351, %3351
  %3355 = fsub fast float %3352, %3234
  %3356 = fsub fast float %3353, %3235
  %3357 = fsub fast float %3354, %3236
  %3358 = fmul fast float %3355, %3259
  %3359 = fmul fast float %3356, %3259
  %3360 = fmul fast float %3357, %3259
  %3361 = fadd fast float %3358, %3234
  %3362 = fadd fast float %3359, %3235
  %3363 = fadd fast float %3360, %3236
  %3364 = fadd fast float %3281, %3245
  %3365 = fsub fast float %3364, %3298
  %3366 = call float @dx.op.unary.f32(i32 7, float %3365)  ; Saturate(value)
  %3367 = fsub fast float %3366, %3245
  %3368 = fmul fast float %3367, %3259
  %3369 = fadd fast float %3368, %3245
  br label %3423

; <label>:3370                                    ; preds = %3258
  %3371 = and i32 %3261, 134217728
  %3372 = icmp eq i32 %3371, 0
  br i1 %3372, label %3407, label %3373

; <label>:3373                                    ; preds = %3370
  %3374 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3375 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %3376 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %3377 = fadd fast float %3374, -5.000000e-01
  %3378 = fadd fast float %3375, -5.000000e-01
  %3379 = fadd fast float %3376, -5.000000e-01
  %3380 = fmul fast float %3377, %3259
  %3381 = fmul fast float %3378, %3259
  %3382 = fmul fast float %3379, %3259
  %3383 = fadd fast float %3380, 5.000000e-01
  %3384 = fadd fast float %3381, 5.000000e-01
  %3385 = fadd fast float %3382, 5.000000e-01
  %3386 = call float @dx.op.unary.f32(i32 24, float %3234)  ; Sqrt(value)
  %3387 = call float @dx.op.unary.f32(i32 24, float %3235)  ; Sqrt(value)
  %3388 = call float @dx.op.unary.f32(i32 24, float %3236)  ; Sqrt(value)
  %3389 = fmul fast float %3383, 2.000000e+00
  %3390 = fsub fast float 1.000000e+00, %3389
  %3391 = fmul fast float %3390, %3386
  %3392 = fadd fast float %3391, %3389
  %3393 = fmul fast float %3392, %3386
  %3394 = fmul fast float %3384, 2.000000e+00
  %3395 = fsub fast float 1.000000e+00, %3394
  %3396 = fmul fast float %3395, %3387
  %3397 = fadd fast float %3396, %3394
  %3398 = fmul fast float %3397, %3387
  %3399 = fmul fast float %3385, 2.000000e+00
  %3400 = fsub fast float 1.000000e+00, %3399
  %3401 = fmul fast float %3400, %3388
  %3402 = fadd fast float %3401, %3399
  %3403 = fmul fast float %3402, %3388
  %3404 = fmul fast float %3393, %3393
  %3405 = fmul fast float %3398, %3398
  %3406 = fmul fast float %3403, %3403
  br label %3423

; <label>:3407                                    ; preds = %3370
  %3408 = fmul fast float %344, %344
  %3409 = fmul fast float %348, %348
  %3410 = fmul fast float %352, %352
  %3411 = fadd fast float %3408, -1.000000e+00
  %3412 = fadd fast float %3409, -1.000000e+00
  %3413 = fadd fast float %3410, -1.000000e+00
  %3414 = fmul fast float %3259, %3411
  %3415 = fmul fast float %3259, %3412
  %3416 = fmul fast float %3259, %3413
  %3417 = fadd fast float %3414, 1.000000e+00
  %3418 = fadd fast float %3415, 1.000000e+00
  %3419 = fadd fast float %3416, 1.000000e+00
  %3420 = fmul fast float %3417, %3234
  %3421 = fmul fast float %3418, %3235
  %3422 = fmul fast float %3419, %3236
  br label %3423

; <label>:3423                                    ; preds = %3407, %3373, %3264, %3220
  %3424 = phi float [ %3369, %3264 ], [ %3245, %3373 ], [ %3245, %3407 ], [ 0x3FA23C0BE0000000, %3220 ]
  %3425 = phi float [ %3361, %3264 ], [ %3404, %3373 ], [ %3420, %3407 ], [ 1.000000e+00, %3220 ]
  %3426 = phi float [ %3362, %3264 ], [ %3405, %3373 ], [ %3421, %3407 ], [ 1.000000e+00, %3220 ]
  %3427 = phi float [ %3363, %3264 ], [ %3406, %3373 ], [ %3422, %3407 ], [ 1.000000e+00, %3220 ]
  %3428 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3429 = extractvalue %dx.types.CBufRet.i32 %3428, 1
  %3430 = and i32 %3429, 1
  %3431 = icmp ne i32 %3430, 0
  %3432 = add i32 %45, 356
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 32
  %3436 = icmp ne i32 %3435, 0
  %3437 = and i1 %3431, %3436
  %3438 = select i1 %3437, float 1.000000e+00, float %3425
  %3439 = select i1 %3437, float 0x3FD3333340000000, float %3426
  %3440 = select i1 %3437, float 0x3FD3333340000000, float %3427
  %3441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3442 = extractvalue %dx.types.ResRet.i32 %3441, 0
  %3443 = and i32 %3442, 32
  %3444 = icmp eq i32 %3443, 0
  br i1 %3444, label %3517, label %3445

; <label>:3445                                    ; preds = %3423
  %3446 = add i32 %45, 140
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = add i32 %45, 468
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = add i32 %3451, 0
  %3453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3453, %dx.types.Handle %81, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3455 = extractvalue %dx.types.ResRet.f32 %3454, 0
  %3456 = extractvalue %dx.types.ResRet.f32 %3454, 1
  %3457 = extractvalue %dx.types.ResRet.f32 %3454, 2
  %3458 = extractvalue %dx.types.ResRet.f32 %3454, 3
  %3459 = and i32 %3448, 255
  %3460 = uitofp i32 %3459 to float
  %3461 = lshr i32 %3448, 8
  %3462 = and i32 %3461, 255
  %3463 = uitofp i32 %3462 to float
  %3464 = lshr i32 %3448, 16
  %3465 = and i32 %3464, 255
  %3466 = uitofp i32 %3465 to float
  %3467 = fmul fast float %3466, 0x3F70101000000000
  %3468 = fmul fast float %3455, %3460
  %3469 = fadd fast float %3468, %3463
  %3470 = fmul fast float %3469, 0x3F70101000000000
  %3471 = fadd fast float %3456, -5.000000e-01
  %3472 = fadd fast float %3458, -5.000000e-01
  %3473 = fmul fast float %3471, %3467
  %3474 = fmul fast float %3472, %3467
  %3475 = fadd fast float %3473, 5.000000e-01
  %3476 = fadd fast float %3474, 5.000000e-01
  %3477 = fmul fast float %3475, 2.000000e+00
  %3478 = fadd fast float %3477, -1.000000e+00
  %3479 = fmul fast float %3476, 2.000000e+00
  %3480 = fadd fast float %3479, -1.000000e+00
  %3481 = fadd fast float %3478, %3480
  %3482 = fmul fast float %3481, 5.000000e-01
  %3483 = fsub fast float %3478, %3480
  %3484 = fmul fast float %3483, 5.000000e-01
  %3485 = call float @dx.op.unary.f32(i32 6, float %3482)  ; FAbs(value)
  %3486 = fsub fast float 1.000000e+00, %3485
  %3487 = call float @dx.op.unary.f32(i32 6, float %3484)  ; FAbs(value)
  %3488 = fsub fast float %3486, %3487
  %3489 = call float @dx.op.dot3.f32(i32 55, float %3482, float %3484, float %3488, float %3482, float %3484, float %3488)  ; Dot3(ax,ay,az,bx,by,bz)
  %3490 = call float @dx.op.unary.f32(i32 25, float %3489)  ; Rsqrt(value)
  %3491 = fmul fast float %3482, %3490
  %3492 = fmul fast float %3484, %3490
  %3493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3494 = extractvalue %dx.types.ResRet.i32 %3493, 0
  %3495 = and i32 %3494, 67108864
  %3496 = icmp eq i32 %3495, 0
  br i1 %3496, label %3513, label %3497

; <label>:3497                                    ; preds = %3445
  %3498 = add i32 %45, 328
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = and i32 %3500, 65535
  %3502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3501)  ; LegacyF16ToF32(value)
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 65535
  %3506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3505)  ; LegacyF16ToF32(value)
  %3507 = lshr i32 %3500, 16
  %3508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3507)  ; LegacyF16ToF32(value)
  %3509 = fsub fast float %3470, %3508
  %3510 = fmul fast float %3509, %3502
  %3511 = fadd fast float %3510, %3506
  %3512 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  br label %3513

; <label>:3513                                    ; preds = %3497, %3445
  %3514 = phi float [ %3512, %3497 ], [ %3470, %3445 ]
  %3515 = call float @dx.op.dot2.f32(i32 54, float %3491, float %3492, float %2934, float %2935)  ; Dot2(ax,ay,bx,by)
  %3516 = call float @dx.op.dot2.f32(i32 54, float %3491, float %3492, float %2936, float %2937)  ; Dot2(ax,ay,bx,by)
  br label %3517

; <label>:3517                                    ; preds = %3513, %3423
  %3518 = phi float [ %3514, %3513 ], [ 0x3FD6666660000000, %3423 ]
  %3519 = phi float [ %3515, %3513 ], [ 0.000000e+00, %3423 ]
  %3520 = phi float [ %3516, %3513 ], [ 0.000000e+00, %3423 ]
  %3521 = phi float [ %3457, %3513 ], [ 1.000000e+00, %3423 ]
  %3522 = add i32 %45, 208
  %3523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3524 = extractvalue %dx.types.ResRet.i32 %3523, 0
  %3525 = lshr i32 %3524, 22
  %3526 = shl nuw nsw i32 %3525, 5
  %3527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3526)  ; LegacyF16ToF32(value)
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 64
  %3531 = icmp eq i32 %3530, 0
  br i1 %3531, label %3565, label %3532

; <label>:3532                                    ; preds = %3517
  %3533 = add i32 %45, 484
  %3534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3533, i32 undef)  ; BufferLoad(srv,index,wot)
  %3535 = extractvalue %dx.types.ResRet.i32 %3534, 0
  %3536 = add i32 %3535, 0
  %3537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = and i32 %3539, 131072
  %3541 = icmp eq i32 %3540, 0
  %3542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3537, %dx.types.Handle %81, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = fmul fast float %3543, %332
  %3547 = fmul fast float %3544, %335
  %3548 = fmul fast float %3545, %338
  br i1 %3541, label %3555, label %3549

; <label>:3549                                    ; preds = %3532
  %3550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3551 = extractvalue %dx.types.CBufRet.f32 %3550, 0
  %3552 = fmul fast float %3551, %3546
  %3553 = fmul fast float %3551, %3547
  %3554 = fmul fast float %3551, %3548
  br label %3555

; <label>:3555                                    ; preds = %3549, %3532
  %3556 = phi float [ %3552, %3549 ], [ %3546, %3532 ]
  %3557 = phi float [ %3553, %3549 ], [ %3547, %3532 ]
  %3558 = phi float [ %3554, %3549 ], [ %3548, %3532 ]
  %3559 = fmul fast float %3556, %3527
  %3560 = select i1 %186, float %3559, float %3556
  %3561 = call float @dx.op.dot3.f32(i32 55, float %3560, float %3557, float %3558, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3562 = select i1 %186, float 0.000000e+00, float %3556
  %3563 = select i1 %186, float %3561, float %3557
  %3564 = select i1 %186, float 0.000000e+00, float %3558
  br label %3565

; <label>:3565                                    ; preds = %3555, %3517
  %3566 = phi float [ %3562, %3555 ], [ 0.000000e+00, %3517 ]
  %3567 = phi float [ %3563, %3555 ], [ 0.000000e+00, %3517 ]
  %3568 = phi float [ %3564, %3555 ], [ 0.000000e+00, %3517 ]
  %3569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.i32 %3569, 0
  %3571 = and i32 %3570, 26624
  %3572 = icmp eq i32 %3571, 0
  br i1 %3572, label %3630, label %3573

; <label>:3573                                    ; preds = %3565
  %3574 = add i32 %45, 548
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = add i32 %3576, 0
  %3578 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3577, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3579 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3578, %dx.types.Handle %82, float %3030, float %3031, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.ResRet.f32 %3579, 3
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = and i32 %3584, 1048576
  %3586 = icmp ne i32 %3585, 0
  %3587 = and i32 %3584, 8192
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3603, label %3589

; <label>:3589                                    ; preds = %3573
  %3590 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3591 = select i1 %3586, float %3590, float %3581
  %3592 = select i1 %3586, float %3580, float %3581
  %3593 = add i32 %45, 144
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = lshr i32 %3595, 16
  %3597 = and i32 %3596, 255
  %3598 = uitofp i32 %3597 to float
  %3599 = fmul fast float %3598, 0x3F80101020000000
  %3600 = fmul fast float %3599, %3592
  %3601 = fmul fast float %3599, %3581
  %3602 = fmul fast float %3599, %3591
  br label %3603

; <label>:3603                                    ; preds = %3589, %3573
  %3604 = phi float [ %3600, %3589 ], [ 0.000000e+00, %3573 ]
  %3605 = phi float [ %3601, %3589 ], [ 0.000000e+00, %3573 ]
  %3606 = phi float [ %3602, %3589 ], [ 0.000000e+00, %3573 ]
  %3607 = and i32 %3584, 2048
  %3608 = icmp eq i32 %3607, 0
  br i1 %3608, label %3617, label %3609

; <label>:3609                                    ; preds = %3603
  %3610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3522, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.i32 %3610, 0
  %3612 = shl i32 %3611, 4
  %3613 = and i32 %3612, 32752
  %3614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3613)  ; LegacyF16ToF32(value)
  %3615 = fmul fast float %3614, %3582
  %3616 = call float @dx.op.binary.f32(i32 35, float %3615, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3617

; <label>:3617                                    ; preds = %3609, %3603
  %3618 = phi float [ %3616, %3609 ], [ 0x3F70101020000000, %3603 ]
  %3619 = and i32 %3584, 16384
  %3620 = icmp eq i32 %3619, 0
  br i1 %3620, label %3630, label %3621

; <label>:3621                                    ; preds = %3617
  %3622 = add i32 %45, 144
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = lshr i32 %3624, 24
  %3626 = uitofp i32 %3625 to float
  %3627 = fmul fast float %3580, 0x3F70101020000000
  %3628 = select i1 %3586, float 0x3F70101020000000, float %3627
  %3629 = fmul fast float %3628, %3626
  br label %3630

; <label>:3630                                    ; preds = %3621, %3617, %3565
  %3631 = phi float [ %3604, %3621 ], [ %3604, %3617 ], [ 0.000000e+00, %3565 ]
  %3632 = phi float [ %3605, %3621 ], [ %3605, %3617 ], [ 0.000000e+00, %3565 ]
  %3633 = phi float [ %3606, %3621 ], [ %3606, %3617 ], [ 0.000000e+00, %3565 ]
  %3634 = phi float [ %3618, %3621 ], [ %3618, %3617 ], [ 0x3F70101020000000, %3565 ]
  %3635 = phi float [ %3629, %3621 ], [ 0.000000e+00, %3617 ], [ 0.000000e+00, %3565 ]
  %3636 = add i32 %45, 144
  %3637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.i32 %3637, 0
  %3639 = and i32 %3638, 255
  %3640 = uitofp i32 %3639 to float
  %3641 = lshr i32 %3638, 8
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = call float @dx.op.dot3.f32(i32 55, float %3438, float %3439, float %3440, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3645 = fmul fast float %3643, %3644
  %3646 = fadd fast float %3645, %3640
  %3647 = fmul fast float %3646, 0x3F70101020000000
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  br i1 %2922, label %3649, label %3657

; <label>:3649                                    ; preds = %3630
  %3650 = fsub fast float 1.000000e+00, %3218
  %3651 = fmul fast float %3650, %2906
  %3652 = fmul fast float %3650, %2907
  %3653 = fmul fast float %3650, %2908
  %3654 = fmul fast float %3650, %2909
  %3655 = fmul fast float %3650, %2910
  %3656 = fmul fast float %3650, %2911
  br label %3657

; <label>:3657                                    ; preds = %3649, %3630
  %3658 = phi float [ %3651, %3649 ], [ %2906, %3630 ]
  %3659 = phi float [ %3652, %3649 ], [ %2907, %3630 ]
  %3660 = phi float [ %3653, %3649 ], [ %2908, %3630 ]
  %3661 = phi float [ %3654, %3649 ], [ %2909, %3630 ]
  %3662 = phi float [ %3655, %3649 ], [ %2910, %3630 ]
  %3663 = phi float [ %3656, %3649 ], [ %2911, %3630 ]
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, 3
  %3667 = icmp eq i32 %3666, 3
  br i1 %3667, label %3746, label %3668

; <label>:3668                                    ; preds = %3657
  %3669 = and i32 %3665, 16
  %3670 = icmp ne i32 %3669, 0
  %3671 = select i1 %3670, float %3218, float 0.000000e+00
  %3672 = icmp eq i32 %3666, 0
  br i1 %3672, label %3673, label %3701

; <label>:3673                                    ; preds = %3668
  %3674 = and i32 %3665, 64
  %3675 = icmp ne i32 %3674, 0
  %3676 = select i1 %3675, float %3218, float 0.000000e+00
  %3677 = fsub fast float %3438, %3658
  %3678 = fsub fast float %3439, %3659
  %3679 = fsub fast float %3440, %3660
  %3680 = fmul fast float %3671, %3677
  %3681 = fmul fast float %3671, %3678
  %3682 = fmul fast float %3671, %3679
  %3683 = fadd fast float %3680, %3658
  %3684 = fadd fast float %3681, %3659
  %3685 = fadd fast float %3682, %3660
  %3686 = fsub fast float %3424, %2915
  %3687 = fmul fast float %3671, %3686
  %3688 = fadd fast float %3687, %2915
  %3689 = fsub fast float %3566, %3661
  %3690 = fsub fast float %3567, %3662
  %3691 = fsub fast float %3568, %3663
  %3692 = fmul fast float %3676, %3689
  %3693 = fmul fast float %3676, %3690
  %3694 = fmul fast float %3676, %3691
  %3695 = fadd fast float %3692, %3661
  %3696 = fadd fast float %3693, %3662
  %3697 = fadd fast float %3694, %3663
  %3698 = fsub fast float %3648, %2920
  %3699 = fmul fast float %3671, %3698
  %3700 = fadd fast float %3699, %2920
  br label %3746

; <label>:3701                                    ; preds = %3668
  %3702 = icmp eq i32 %3666, 1
  br i1 %3702, label %3703, label %3716

; <label>:3703                                    ; preds = %3701
  %3704 = fadd fast float %3438, -1.000000e+00
  %3705 = fadd fast float %3439, -1.000000e+00
  %3706 = fadd fast float %3440, -1.000000e+00
  %3707 = fmul fast float %3671, %3704
  %3708 = fmul fast float %3671, %3705
  %3709 = fmul fast float %3671, %3706
  %3710 = fadd fast float %3707, 1.000000e+00
  %3711 = fadd fast float %3708, 1.000000e+00
  %3712 = fadd fast float %3709, 1.000000e+00
  %3713 = fmul fast float %3710, %3658
  %3714 = fmul fast float %3711, %3659
  %3715 = fmul fast float %3712, %3660
  br label %3746

; <label>:3716                                    ; preds = %3701
  %3717 = icmp eq i32 %3666, 2
  br i1 %3717, label %3718, label %3746

; <label>:3718                                    ; preds = %3716
  %3719 = call float @dx.op.unary.f32(i32 24, float %3438)  ; Sqrt(value)
  %3720 = call float @dx.op.unary.f32(i32 24, float %3439)  ; Sqrt(value)
  %3721 = call float @dx.op.unary.f32(i32 24, float %3440)  ; Sqrt(value)
  %3722 = fadd fast float %3719, -5.000000e-01
  %3723 = fadd fast float %3720, -5.000000e-01
  %3724 = fadd fast float %3721, -5.000000e-01
  %3725 = fmul fast float %3722, %3671
  %3726 = fmul fast float %3723, %3671
  %3727 = fmul fast float %3724, %3671
  %3728 = fadd fast float %3725, 5.000000e-01
  %3729 = fadd fast float %3726, 5.000000e-01
  %3730 = fadd fast float %3727, 5.000000e-01
  %3731 = fmul fast float %3728, 2.000000e+00
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = fmul fast float %3732, %3658
  %3734 = fadd fast float %3733, %3731
  %3735 = fmul fast float %3734, %3658
  %3736 = fmul fast float %3729, 2.000000e+00
  %3737 = fsub fast float 1.000000e+00, %3736
  %3738 = fmul fast float %3737, %3659
  %3739 = fadd fast float %3738, %3736
  %3740 = fmul fast float %3739, %3659
  %3741 = fmul fast float %3730, 2.000000e+00
  %3742 = fsub fast float 1.000000e+00, %3741
  %3743 = fmul fast float %3742, %3660
  %3744 = fadd fast float %3743, %3741
  %3745 = fmul fast float %3744, %3660
  br label %3746

; <label>:3746                                    ; preds = %3718, %3716, %3703, %3673, %3657
  %3747 = phi float [ %3658, %3657 ], [ %3735, %3718 ], [ %3658, %3716 ], [ %3713, %3703 ], [ %3683, %3673 ]
  %3748 = phi float [ %3659, %3657 ], [ %3740, %3718 ], [ %3659, %3716 ], [ %3714, %3703 ], [ %3684, %3673 ]
  %3749 = phi float [ %3660, %3657 ], [ %3745, %3718 ], [ %3660, %3716 ], [ %3715, %3703 ], [ %3685, %3673 ]
  %3750 = phi float [ %3661, %3657 ], [ %3661, %3718 ], [ %3661, %3716 ], [ %3661, %3703 ], [ %3695, %3673 ]
  %3751 = phi float [ %3662, %3657 ], [ %3662, %3718 ], [ %3662, %3716 ], [ %3662, %3703 ], [ %3696, %3673 ]
  %3752 = phi float [ %3663, %3657 ], [ %3663, %3718 ], [ %3663, %3716 ], [ %3663, %3703 ], [ %3697, %3673 ]
  %3753 = phi float [ %2915, %3657 ], [ %2915, %3718 ], [ %2915, %3716 ], [ %2915, %3703 ], [ %3688, %3673 ]
  %3754 = phi float [ %2920, %3657 ], [ %2920, %3718 ], [ %2920, %3716 ], [ %2920, %3703 ], [ %3700, %3673 ]
  %3755 = and i32 %3665, 12
  %3756 = icmp eq i32 %3755, 12
  br i1 %3756, label %3873, label %3757

; <label>:3757                                    ; preds = %3746
  %3758 = and i32 %3665, 2097184
  %3759 = icmp eq i32 %3758, 2097184
  %3760 = select i1 %3759, float %3218, float 0.000000e+00
  %3761 = and i32 %3665, 4194336
  %3762 = icmp eq i32 %3761, 4194336
  %3763 = select i1 %3762, float %3218, float 0.000000e+00
  %3764 = and i32 %3665, 8388640
  %3765 = icmp eq i32 %3764, 8388640
  %3766 = select i1 %3765, float %3218, float 0.000000e+00
  %3767 = and i32 %3665, 2048
  %3768 = icmp ne i32 %3767, 0
  %3769 = select i1 %3768, float %3218, float 0.000000e+00
  %3770 = and i32 %3665, 8192
  %3771 = icmp ne i32 %3770, 0
  %3772 = select i1 %3771, float %3218, float 0.000000e+00
  %3773 = and i32 %3665, 16384
  %3774 = icmp ne i32 %3773, 0
  %3775 = select i1 %3774, float %3218, float 0.000000e+00
  %3776 = icmp eq i32 %3755, 0
  br i1 %3776, label %3777, label %3805

; <label>:3777                                    ; preds = %3757
  %3778 = fsub fast float %3519, %2904
  %3779 = fsub fast float %3520, %2905
  %3780 = fmul fast float %3760, %3778
  %3781 = fmul fast float %3760, %3779
  %3782 = fadd fast float %3780, %2904
  %3783 = fadd fast float %3781, %2905
  %3784 = fsub fast float %3521, %2917
  %3785 = fmul fast float %3763, %3784
  %3786 = fadd fast float %3785, %2917
  %3787 = fsub fast float %3518, %2916
  %3788 = fmul fast float %3766, %3787
  %3789 = fadd fast float %3788, %2916
  %3790 = fsub fast float %3634, %2918
  %3791 = fmul fast float %3769, %3790
  %3792 = fadd fast float %3791, %2918
  %3793 = fsub fast float %3631, %2912
  %3794 = fsub fast float %3632, %2913
  %3795 = fsub fast float %3633, %2914
  %3796 = fmul fast float %3772, %3793
  %3797 = fmul fast float %3772, %3794
  %3798 = fmul fast float %3772, %3795
  %3799 = fadd fast float %3796, %2912
  %3800 = fadd fast float %3797, %2913
  %3801 = fadd fast float %3798, %2914
  %3802 = fsub fast float %3635, %2919
  %3803 = fmul fast float %3775, %3802
  %3804 = fadd fast float %3803, %2919
  br label %3873

; <label>:3805                                    ; preds = %3757
  %3806 = icmp eq i32 %3755, 4
  br i1 %3806, label %3807, label %3849

; <label>:3807                                    ; preds = %3805
  %3808 = fmul fast float %3760, %3519
  %3809 = fmul fast float %3760, %3520
  %3810 = fadd fast float %3808, %2904
  %3811 = fadd fast float %3809, %2905
  %3812 = call float @dx.op.binary.f32(i32 36, float %2917, float %3521)  ; FMin(a,b)
  %3813 = fsub fast float %3812, %2917
  %3814 = fmul fast float %3813, %3763
  %3815 = fadd fast float %3814, %2917
  %3816 = fadd fast float %3518, %2916
  %3817 = fmul fast float %3816, 0x3FF337FAE0000000
  %3818 = fmul fast float %2916, %2916
  %3819 = fmul fast float %3518, %3518
  %3820 = fadd fast float %3819, %3818
  %3821 = fmul fast float %3820, 0x3FE5152B00000000
  %3822 = fmul fast float %2916, 0xBFCC1F85E0000000
  %3823 = fmul fast float %3822, %3518
  %3824 = fadd fast float %3823, 0xBFE1363700000000
  %3825 = fadd fast float %3824, %3817
  %3826 = fsub fast float %3825, %3821
  %3827 = fmul fast float %3816, 0x3FBA6F0D00000000
  %3828 = fmul fast float %3820, 0x3FD0432880000000
  %3829 = fmul fast float %2916, 0xBFEF110800000000
  %3830 = fmul fast float %3829, %3518
  %3831 = fadd fast float %3830, 1.000000e+00
  %3832 = fsub fast float %3831, %3827
  %3833 = fadd fast float %3832, %3828
  %3834 = fdiv fast float %3826, %3833
  %3835 = call float @dx.op.unary.f32(i32 7, float %3834)  ; Saturate(value)
  %3836 = fsub fast float %3835, %2916
  %3837 = fmul fast float %3836, %3766
  %3838 = fadd fast float %3837, %2916
  %3839 = fmul fast float %3769, %3634
  %3840 = fadd fast float %3839, %2918
  %3841 = fmul fast float %3772, %3631
  %3842 = fmul fast float %3772, %3632
  %3843 = fmul fast float %3772, %3633
  %3844 = fadd fast float %3841, %2912
  %3845 = fadd fast float %3842, %2913
  %3846 = fadd fast float %3843, %2914
  %3847 = fmul fast float %3775, %3635
  %3848 = fadd fast float %3847, %2919
  br label %3873

; <label>:3849                                    ; preds = %3805
  %3850 = icmp eq i32 %3755, 8
  br i1 %3850, label %3851, label %3873

; <label>:3851                                    ; preds = %3849
  %3852 = fmul fast float %3760, %3519
  %3853 = fmul fast float %3760, %3520
  %3854 = fadd fast float %3852, %2904
  %3855 = fadd fast float %3853, %2905
  %3856 = call float @dx.op.binary.f32(i32 36, float %2917, float %3521)  ; FMin(a,b)
  %3857 = fsub fast float %3856, %2917
  %3858 = fmul fast float %3857, %3763
  %3859 = fadd fast float %3858, %2917
  %3860 = fsub fast float %3518, %2916
  %3861 = fmul fast float %3766, %3860
  %3862 = fadd fast float %3861, %2916
  %3863 = fmul fast float %3769, %3634
  %3864 = fadd fast float %3863, %2918
  %3865 = fmul fast float %3772, %3631
  %3866 = fmul fast float %3772, %3632
  %3867 = fmul fast float %3772, %3633
  %3868 = fadd fast float %3865, %2912
  %3869 = fadd fast float %3866, %2913
  %3870 = fadd fast float %3867, %2914
  %3871 = fmul fast float %3775, %3635
  %3872 = fadd fast float %3871, %2919
  br label %3873

; <label>:3873                                    ; preds = %3851, %3849, %3807, %3777, %3746, %3217, %2921, %2903
  %3874 = phi float [ %2904, %3746 ], [ %2904, %3217 ], [ %2904, %2903 ], [ %2904, %2921 ], [ %3782, %3777 ], [ %3810, %3807 ], [ %2904, %3849 ], [ %3854, %3851 ]
  %3875 = phi float [ %2905, %3746 ], [ %2905, %3217 ], [ %2905, %2903 ], [ %2905, %2921 ], [ %3783, %3777 ], [ %3811, %3807 ], [ %2905, %3849 ], [ %3855, %3851 ]
  %3876 = phi float [ %3747, %3746 ], [ %2906, %3217 ], [ %2906, %2903 ], [ %2906, %2921 ], [ %3747, %3777 ], [ %3747, %3807 ], [ %3747, %3849 ], [ %3747, %3851 ]
  %3877 = phi float [ %3748, %3746 ], [ %2907, %3217 ], [ %2907, %2903 ], [ %2907, %2921 ], [ %3748, %3777 ], [ %3748, %3807 ], [ %3748, %3849 ], [ %3748, %3851 ]
  %3878 = phi float [ %3749, %3746 ], [ %2908, %3217 ], [ %2908, %2903 ], [ %2908, %2921 ], [ %3749, %3777 ], [ %3749, %3807 ], [ %3749, %3849 ], [ %3749, %3851 ]
  %3879 = phi float [ %3750, %3746 ], [ %2909, %3217 ], [ %2909, %2903 ], [ %2909, %2921 ], [ %3750, %3777 ], [ %3750, %3807 ], [ %3750, %3849 ], [ %3750, %3851 ]
  %3880 = phi float [ %3751, %3746 ], [ %2910, %3217 ], [ %2910, %2903 ], [ %2910, %2921 ], [ %3751, %3777 ], [ %3751, %3807 ], [ %3751, %3849 ], [ %3751, %3851 ]
  %3881 = phi float [ %3752, %3746 ], [ %2911, %3217 ], [ %2911, %2903 ], [ %2911, %2921 ], [ %3752, %3777 ], [ %3752, %3807 ], [ %3752, %3849 ], [ %3752, %3851 ]
  %3882 = phi float [ %2912, %3746 ], [ %2912, %3217 ], [ %2912, %2903 ], [ %2912, %2921 ], [ %3799, %3777 ], [ %3844, %3807 ], [ %2912, %3849 ], [ %3868, %3851 ]
  %3883 = phi float [ %2913, %3746 ], [ %2913, %3217 ], [ %2913, %2903 ], [ %2913, %2921 ], [ %3800, %3777 ], [ %3845, %3807 ], [ %2913, %3849 ], [ %3869, %3851 ]
  %3884 = phi float [ %2914, %3746 ], [ %2914, %3217 ], [ %2914, %2903 ], [ %2914, %2921 ], [ %3801, %3777 ], [ %3846, %3807 ], [ %2914, %3849 ], [ %3870, %3851 ]
  %3885 = phi float [ %3753, %3746 ], [ %2915, %3217 ], [ %2915, %2903 ], [ %2915, %2921 ], [ %3753, %3777 ], [ %3753, %3807 ], [ %3753, %3849 ], [ %3753, %3851 ]
  %3886 = phi float [ %2916, %3746 ], [ %2916, %3217 ], [ %2916, %2903 ], [ %2916, %2921 ], [ %3789, %3777 ], [ %3838, %3807 ], [ %2916, %3849 ], [ %3862, %3851 ]
  %3887 = phi float [ %2917, %3746 ], [ %2917, %3217 ], [ %2917, %2903 ], [ %2917, %2921 ], [ %3786, %3777 ], [ %3815, %3807 ], [ %2917, %3849 ], [ %3859, %3851 ]
  %3888 = phi float [ %2918, %3746 ], [ %2918, %3217 ], [ %2918, %2903 ], [ %2918, %2921 ], [ %3792, %3777 ], [ %3840, %3807 ], [ %2918, %3849 ], [ %3864, %3851 ]
  %3889 = phi float [ %2919, %3746 ], [ %2919, %3217 ], [ %2919, %2903 ], [ %2919, %2921 ], [ %3804, %3777 ], [ %3848, %3807 ], [ %2919, %3849 ], [ %3872, %3851 ]
  %3890 = phi float [ %3754, %3746 ], [ %2920, %3217 ], [ %2920, %2903 ], [ %2920, %2921 ], [ %3754, %3777 ], [ %3754, %3807 ], [ %3754, %3849 ], [ %3754, %3851 ]
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  %3893 = call float @dx.op.dot2.f32(i32 54, float %3874, float %3875, float %3874, float %3875)  ; Dot2(ax,ay,bx,by)
  %3894 = fmul fast float %3893, 0x3FE3333340000000
  %3895 = fsub fast float 1.000000e+00, %3894
  %3896 = call float @dx.op.dot3.f32(i32 55, float %3874, float %3875, float %3895, float %3874, float %3875, float %3895)  ; Dot3(ax,ay,az,bx,by,bz)
  %3897 = call float @dx.op.unary.f32(i32 25, float %3896)  ; Rsqrt(value)
  %3898 = fmul fast float %3897, %3874
  %3899 = fmul fast float %3897, %3875
  %3900 = fmul fast float %3895, %3897
  %3901 = fmul fast float %3900, %94
  %3902 = fmul fast float %3900, %96
  %3903 = fmul fast float %3900, %98
  %3904 = fmul fast float %3898, %66
  %3905 = fmul fast float %3898, %67
  %3906 = fmul fast float %3898, %68
  %3907 = fadd fast float %3901, %3904
  %3908 = fadd fast float %3902, %3905
  %3909 = fadd fast float %3903, %3906
  %3910 = fmul fast float %108, %3899
  %3911 = fmul fast float %109, %3899
  %3912 = fmul fast float %110, %3899
  %3913 = fadd fast float %3907, %3910
  %3914 = fadd fast float %3908, %3911
  %3915 = fadd fast float %3909, %3912
  %3916 = call float @dx.op.dot3.f32(i32 55, float %3913, float %3914, float %3915, float %3913, float %3914, float %3915)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = call float @dx.op.unary.f32(i32 25, float %3916)  ; Rsqrt(value)
  %3918 = fmul fast float %3913, %3917
  %3919 = fmul fast float %3914, %3917
  %3920 = fmul fast float %3915, %3917
  %3921 = and i32 %47, 1
  %3922 = icmp eq i32 %3921, 0
  br i1 %3922, label %3923, label %4484

; <label>:3923                                    ; preds = %3873
  %3924 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3925 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3926 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3927 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3928 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3929 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3930 = fadd fast float %3924, %144
  %3931 = fadd fast float %3925, %145
  %3932 = fadd fast float %3926, %146
  %3933 = fadd fast float %3927, %144
  %3934 = fadd fast float %3928, %145
  %3935 = fadd fast float %3929, %146
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.CBufRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.CBufRet.f32 %3936, 2
  %3940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.f32 %3940, 2
  %3942 = extractvalue %dx.types.CBufRet.f32 %3940, 3
  %3943 = fmul fast float %3937, %85
  %3944 = fmul fast float %3943, %3941
  %3945 = fmul fast float %3938, %86
  %3946 = fmul fast float %3945, %3942
  %3947 = fptoui float %3944 to i32
  %3948 = fptoui float %3946 to i32
  %3949 = fadd fast float %3937, -1.000000e+00
  %3950 = fadd fast float %3938, -1.000000e+00
  %3951 = fptoui float %3949 to i32
  %3952 = fptoui float %3950 to i32
  %3953 = call i32 @dx.op.binary.i32(i32 40, i32 %3947, i32 %3951)  ; UMin(a,b)
  %3954 = call i32 @dx.op.binary.i32(i32 40, i32 %3948, i32 %3952)  ; UMin(a,b)
  %3955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3956 = extractvalue %dx.types.CBufRet.f32 %3955, 2
  %3957 = extractvalue %dx.types.CBufRet.f32 %3955, 3
  %3958 = fmul fast float %3956, %80
  %3959 = fsub fast float %3958, %3957
  %3960 = fadd fast float %3939, -1.000000e+00
  %3961 = call float @dx.op.binary.f32(i32 36, float %3959, float %3960)  ; FMin(a,b)
  %3962 = fptoui float %3961 to i32
  %3963 = fptoui float %3937 to i32
  %3964 = fptoui float %3938 to i32
  %3965 = mul i32 %3962, %3964
  %3966 = add i32 %3965, %3954
  %3967 = mul i32 %3966, %3963
  %3968 = add i32 %3967, %3953
  %3969 = shl i32 %3968, 2
  %3970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3971 = extractvalue %dx.types.ResRet.i32 %3970, 0
  %3972 = and i32 %3971, 1023
  %3973 = lshr i32 %3971, 10
  %3974 = icmp eq i32 %3972, 0
  br i1 %3974, label %4450, label %3975

; <label>:3975                                    ; preds = %3923
  %3976 = and i32 %3971, 1023
  br label %3977

; <label>:3977                                    ; preds = %4106, %3975
  %3978 = phi i32 [ %4056, %4106 ], [ 0, %3975 ]
  %3979 = phi float [ %4107, %4106 ], [ 0.000000e+00, %3975 ]
  %3980 = phi float [ %4108, %4106 ], [ %3892, %3975 ]
  %3981 = phi float [ %4109, %4106 ], [ %3890, %3975 ]
  %3982 = phi float [ %4110, %4106 ], [ %3889, %3975 ]
  %3983 = phi float [ %4111, %4106 ], [ 0.000000e+00, %3975 ]
  %3984 = phi float [ %4112, %4106 ], [ %3882, %3975 ]
  %3985 = phi float [ %4113, %4106 ], [ %3883, %3975 ]
  %3986 = phi float [ %4114, %4106 ], [ %3884, %3975 ]
  %3987 = phi float [ %4115, %4106 ], [ %3879, %3975 ]
  %3988 = phi float [ %4116, %4106 ], [ %3880, %3975 ]
  %3989 = phi float [ %4117, %4106 ], [ %3881, %3975 ]
  %3990 = phi float [ %4118, %4106 ], [ %3918, %3975 ]
  %3991 = phi float [ %4119, %4106 ], [ %3919, %3975 ]
  %3992 = phi float [ %4120, %4106 ], [ %3920, %3975 ]
  %3993 = phi float [ %4121, %4106 ], [ %3887, %3975 ]
  %3994 = phi float [ %4122, %4106 ], [ %3886, %3975 ]
  %3995 = phi float [ %4123, %4106 ], [ 0.000000e+00, %3975 ]
  %3996 = phi float [ %4124, %4106 ], [ %3885, %3975 ]
  %3997 = phi float [ %4125, %4106 ], [ %3876, %3975 ]
  %3998 = phi float [ %4126, %4106 ], [ %3877, %3975 ]
  %3999 = phi float [ %4127, %4106 ], [ %3878, %3975 ]
  %4000 = add nuw nsw i32 %3978, %3973
  %4001 = shl i32 %4000, 2
  %4002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %4001, i32 undef)  ; BufferLoad(srv,index,wot)
  %4003 = extractvalue %dx.types.ResRet.i32 %4002, 0
  %4004 = shl i32 %4003, 8
  %4005 = or i32 %4004, 48
  %4006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4005, i32 undef)  ; BufferLoad(srv,index,wot)
  %4007 = extractvalue %dx.types.ResRet.f32 %4006, 0
  %4008 = extractvalue %dx.types.ResRet.f32 %4006, 1
  %4009 = extractvalue %dx.types.ResRet.f32 %4006, 2
  %4010 = extractvalue %dx.types.ResRet.f32 %4006, 3
  %4011 = or i32 %4004, 64
  %4012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4011, i32 undef)  ; BufferLoad(srv,index,wot)
  %4013 = extractvalue %dx.types.ResRet.i32 %4012, 0
  %4014 = extractvalue %dx.types.ResRet.i32 %4012, 1
  %4015 = or i32 %4004, 80
  %4016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4015, i32 undef)  ; BufferLoad(srv,index,wot)
  %4017 = extractvalue %dx.types.ResRet.f32 %4016, 2
  %4018 = extractvalue %dx.types.ResRet.f32 %4016, 3
  %4019 = or i32 %4004, 96
  %4020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = extractvalue %dx.types.ResRet.f32 %4020, 1
  %4023 = extractvalue %dx.types.ResRet.f32 %4020, 2
  %4024 = extractvalue %dx.types.ResRet.f32 %4020, 3
  %4025 = or i32 %4004, 112
  %4026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4025, i32 undef)  ; BufferLoad(srv,index,wot)
  %4027 = extractvalue %dx.types.ResRet.f32 %4026, 2
  %4028 = or i32 %4004, 128
  %4029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4028, i32 undef)  ; BufferLoad(srv,index,wot)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = extractvalue %dx.types.ResRet.f32 %4029, 3
  %4034 = or i32 %4004, 144
  %4035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4035, 3
  %4040 = or i32 %4004, 160
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.f32 %4041, 3
  %4046 = or i32 %4004, 192
  %4047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.i32 %4047, 0
  %4049 = or i32 %4004, 208
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = or i32 %4004, 248
  %4053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4052, i32 undef)  ; BufferLoad(srv,index,wot)
  %4054 = extractvalue %dx.types.ResRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.ResRet.f32 %4053, 1
  %4056 = add nuw nsw i32 %3978, 1
  %4057 = bitcast float %4010 to i32
  %4058 = and i32 %4057, 512
  %4059 = icmp eq i32 %4058, 0
  %4060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4004, i32 undef)  ; BufferLoad(srv,index,wot)
  %4061 = extractvalue %dx.types.ResRet.f32 %4060, 0
  %4062 = extractvalue %dx.types.ResRet.f32 %4060, 1
  %4063 = extractvalue %dx.types.ResRet.f32 %4060, 2
  %4064 = extractvalue %dx.types.ResRet.f32 %4060, 3
  %4065 = call float @dx.op.dot4.f32(i32 56, float %4061, float %4062, float %4063, float %4064, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4066 = or i32 %4004, 16
  %4067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.ResRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.ResRet.f32 %4067, 2
  %4071 = extractvalue %dx.types.ResRet.f32 %4067, 3
  %4072 = call float @dx.op.dot4.f32(i32 56, float %4068, float %4069, float %4070, float %4071, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4073 = or i32 %4004, 32
  %4074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4073, i32 undef)  ; BufferLoad(srv,index,wot)
  %4075 = extractvalue %dx.types.ResRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.ResRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.ResRet.f32 %4074, 2
  %4078 = extractvalue %dx.types.ResRet.f32 %4074, 3
  %4079 = call float @dx.op.dot4.f32(i32 56, float %4075, float %4076, float %4077, float %4078, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4080 = call float @dx.op.unary.f32(i32 27, float %4065)  ; Round_ni(value)
  %4081 = call float @dx.op.unary.f32(i32 6, float %4080)  ; FAbs(value)
  %4082 = call float @dx.op.unary.f32(i32 27, float %4072)  ; Round_ni(value)
  %4083 = call float @dx.op.unary.f32(i32 6, float %4082)  ; FAbs(value)
  %4084 = call float @dx.op.unary.f32(i32 6, float %4079)  ; FAbs(value)
  %4085 = call float @dx.op.unary.f32(i32 27, float %4084)  ; Round_ni(value)
  %4086 = fadd fast float %4083, %4081
  %4087 = fadd fast float %4086, %4085
  %4088 = fcmp fast oeq float %4087, 0.000000e+00
  %4089 = call float @dx.op.dot4.f32(i32 56, float %4061, float %4062, float %4063, float %4064, float %3930, float %3931, float %3932, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4090 = call float @dx.op.dot4.f32(i32 56, float %4068, float %4069, float %4070, float %4071, float %3930, float %3931, float %3932, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4091 = call float @dx.op.dot4.f32(i32 56, float %4061, float %4062, float %4063, float %4064, float %3933, float %3934, float %3935, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4092 = call float @dx.op.dot4.f32(i32 56, float %4068, float %4069, float %4070, float %4071, float %3933, float %3934, float %3935, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4093 = fsub fast float %4089, %4065
  %4094 = fsub fast float %4091, %4065
  %4095 = fsub fast float %4090, %4072
  %4096 = fsub fast float %4092, %4072
  %4097 = call float @dx.op.dot3.f32(i32 55, float %4007, float %4008, float %4009, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4100 = fadd fast float %4099, %4097
  %4101 = call float @dx.op.unary.f32(i32 7, float %4100)  ; Saturate(value)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4103 = fcmp fast ogt float %4101, %4102
  %4104 = and i1 %4088, %4103
  %4105 = and i1 %4059, %4104
  br i1 %4105, label %4129, label %4106

; <label>:4106                                    ; preds = %4436, %4210, %4129, %3977
  %4107 = phi float [ %3979, %4129 ], [ %4213, %4210 ], [ %4213, %4436 ], [ %3979, %3977 ]
  %4108 = phi float [ %3980, %4129 ], [ %3980, %4210 ], [ %4412, %4436 ], [ %3980, %3977 ]
  %4109 = phi float [ %3981, %4129 ], [ %3981, %4210 ], [ %4410, %4436 ], [ %3981, %3977 ]
  %4110 = phi float [ %3982, %4129 ], [ %3982, %4210 ], [ %4337, %4436 ], [ %3982, %3977 ]
  %4111 = phi float [ %3983, %4129 ], [ %3983, %4210 ], [ %4335, %4436 ], [ %3983, %3977 ]
  %4112 = phi float [ %3984, %4129 ], [ %3984, %4210 ], [ %4380, %4436 ], [ %3984, %3977 ]
  %4113 = phi float [ %3985, %4129 ], [ %3985, %4210 ], [ %4381, %4436 ], [ %3985, %3977 ]
  %4114 = phi float [ %3986, %4129 ], [ %3986, %4210 ], [ %4382, %4436 ], [ %3986, %3977 ]
  %4115 = phi float [ %3987, %4129 ], [ %3987, %4210 ], [ %4446, %4436 ], [ %3987, %3977 ]
  %4116 = phi float [ %3988, %4129 ], [ %3988, %4210 ], [ %4447, %4436 ], [ %3988, %3977 ]
  %4117 = phi float [ %3989, %4129 ], [ %3989, %4210 ], [ %4448, %4436 ], [ %3989, %3977 ]
  %4118 = phi float [ %3990, %4129 ], [ %3990, %4210 ], [ %4316, %4436 ], [ %3990, %3977 ]
  %4119 = phi float [ %3991, %4129 ], [ %3991, %4210 ], [ %4317, %4436 ], [ %3991, %3977 ]
  %4120 = phi float [ %3992, %4129 ], [ %3992, %4210 ], [ %4318, %4436 ], [ %3992, %3977 ]
  %4121 = phi float [ %3993, %4129 ], [ %3993, %4210 ], [ %4390, %4436 ], [ %3993, %3977 ]
  %4122 = phi float [ %3994, %4129 ], [ %3994, %4210 ], [ %4387, %4436 ], [ %3994, %3977 ]
  %4123 = phi float [ %3995, %4129 ], [ %3995, %4210 ], [ %4384, %4436 ], [ %3995, %3977 ]
  %4124 = phi float [ %3996, %4129 ], [ %3996, %4210 ], [ %4333, %4436 ], [ %3996, %3977 ]
  %4125 = phi float [ %3997, %4129 ], [ %3997, %4210 ], [ %4328, %4436 ], [ %3997, %3977 ]
  %4126 = phi float [ %3998, %4129 ], [ %3998, %4210 ], [ %4329, %4436 ], [ %3998, %3977 ]
  %4127 = phi float [ %3999, %4129 ], [ %3999, %4210 ], [ %4330, %4436 ], [ %3999, %3977 ]
  %4128 = icmp eq i32 %4056, %3976
  br i1 %4128, label %4449, label %3977

; <label>:4129                                    ; preds = %3977
  %4130 = extractvalue %dx.types.ResRet.f32 %4026, 3
  %4131 = extractvalue %dx.types.ResRet.f32 %4026, 1
  %4132 = extractvalue %dx.types.ResRet.f32 %4026, 0
  %4133 = extractvalue %dx.types.ResRet.f32 %4016, 1
  %4134 = extractvalue %dx.types.ResRet.f32 %4016, 0
  %4135 = extractvalue %dx.types.ResRet.i32 %4012, 3
  %4136 = extractvalue %dx.types.ResRet.i32 %4012, 2
  %4137 = add i32 %4135, 0
  %4138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4137, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4138, %dx.types.Handle %4139, float %4065, float %4072, float undef, float undef, i32 0, i32 0, i32 undef, float %4093, float %4095, float undef, float %4094, float %4096, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = fmul fast float %4141, %4134
  %4143 = fadd fast float %4142, %4133
  %4144 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4145 = fmul fast float %4065, %4021
  %4146 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4072, float %4145)  ; FMad(a,b,c)
  %4147 = fadd fast float %4146, %4132
  %4148 = fmul fast float %4065, %4023
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4072, float %4148)  ; FMad(a,b,c)
  %4150 = fadd fast float %4149, %4131
  %4151 = fmul fast float %4093, %4021
  %4152 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4095, float %4151)  ; FMad(a,b,c)
  %4153 = fmul fast float %4093, %4023
  %4154 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4095, float %4153)  ; FMad(a,b,c)
  %4155 = fmul fast float %4094, %4021
  %4156 = call float @dx.op.tertiary.f32(i32 46, float %4022, float %4096, float %4155)  ; FMad(a,b,c)
  %4157 = fmul fast float %4094, %4023
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %4024, float %4096, float %4157)  ; FMad(a,b,c)
  %4159 = add i32 %4136, 0
  %4160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4159, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4161 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4160, %dx.types.Handle %4139, float %4147, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float %4152, float %4154, float undef, float %4156, float %4158, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = and i32 %4057, 1024
  %4164 = icmp ne i32 %4163, 0
  %4165 = fcmp fast ogt float %4162, 0x3FE0101020000000
  %4166 = uitofp i1 %4165 to float
  %4167 = select i1 %4164, float %4166, float %4162
  %4168 = and i32 %4057, 8192
  %4169 = icmp ne i32 %4168, 0
  %4170 = select i1 %4169, float %4130, float 1.000000e+00
  %4171 = fmul fast float %4065, 2.000000e+00
  %4172 = fadd fast float %4171, -1.000000e+00
  %4173 = call float @dx.op.unary.f32(i32 6, float %4172)  ; FAbs(value)
  %4174 = fmul fast float %4173, %4054
  %4175 = fsub fast float %4174, %4054
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = fmul fast float %4072, 2.000000e+00
  %4178 = fadd fast float %4177, -1.000000e+00
  %4179 = call float @dx.op.unary.f32(i32 6, float %4178)  ; FAbs(value)
  %4180 = fmul fast float %4179, %4055
  %4181 = fsub fast float %4180, %4055
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = fmul fast float %4084, %4017
  %4184 = fsub fast float %4183, %4017
  %4185 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4186 = fmul fast float %4144, %4170
  %4187 = fmul fast float %4186, %4141
  %4188 = fmul fast float %4187, %4176
  %4189 = fmul fast float %4188, %4167
  %4190 = fmul fast float %4189, %4182
  %4191 = fmul fast float %4190, %4185
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4195 = fsub fast float %4101, %4194
  %4196 = fmul fast float %4195, %4193
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = fmul fast float %4191, %4018
  %4199 = fadd fast float %4191, %4018
  %4200 = fmul fast float %4199, %4027
  %4201 = fsub fast float %4200, %4027
  %4202 = call float @dx.op.unary.f32(i32 7, float %4201)  ; Saturate(value)
  %4203 = and i32 %4057, 128
  %4204 = icmp ne i32 %4203, 0
  %4205 = select i1 %4204, float %4202, float %4198
  %4206 = fmul fast float %4205, %4197
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4209 = fcmp fast ugt float %4206, %4208
  br i1 %4209, label %4210, label %4106

; <label>:4210                                    ; preds = %4129
  %4211 = select i1 %4169, float %4206, float 0.000000e+00
  %4212 = fadd fast float %4211, %3979
  %4213 = call float @dx.op.unary.f32(i32 7, float %4212)  ; Saturate(value)
  br i1 %4169, label %4106, label %4214

; <label>:4214                                    ; preds = %4210
  %4215 = and i32 %4057, 4
  %4216 = and i32 %4057, 8
  %4217 = add i32 %4013, 0
  %4218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4217, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4220 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4218, %dx.types.Handle %4219, float %4147, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float %4152, float %4154, float undef, float %4156, float %4158, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = extractvalue %dx.types.ResRet.f32 %4220, 1
  %4223 = extractvalue %dx.types.ResRet.f32 %4220, 2
  %4224 = extractvalue %dx.types.ResRet.f32 %4220, 3
  %4225 = bitcast float %4039 to i32
  %4226 = and i32 %4225, 255
  %4227 = uitofp i32 %4226 to float
  %4228 = lshr i32 %4225, 8
  %4229 = and i32 %4228, 255
  %4230 = uitofp i32 %4229 to float
  %4231 = fmul fast float %4224, %4227
  %4232 = fadd fast float %4231, %4230
  %4233 = fmul fast float %4232, 0x3F70101000000000
  %4234 = add i32 %4014, 0
  %4235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4234, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4236 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4235, %dx.types.Handle %4219, float %4147, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float %4152, float %4154, float undef, float %4156, float %4158, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4237 = extractvalue %dx.types.ResRet.f32 %4236, 0
  %4238 = extractvalue %dx.types.ResRet.f32 %4236, 1
  %4239 = extractvalue %dx.types.ResRet.f32 %4236, 2
  %4240 = extractvalue %dx.types.ResRet.f32 %4236, 3
  %4241 = bitcast float %4033 to i32
  %4242 = and i32 %4241, 255
  %4243 = uitofp i32 %4242 to float
  %4244 = lshr i32 %4241, 8
  %4245 = and i32 %4244, 255
  %4246 = uitofp i32 %4245 to float
  %4247 = lshr i32 %4241, 16
  %4248 = and i32 %4247, 255
  %4249 = uitofp i32 %4248 to float
  %4250 = fmul fast float %4249, 0x3F70101000000000
  %4251 = fmul fast float %4237, %4243
  %4252 = fadd fast float %4251, %4246
  %4253 = fmul fast float %4252, 0x3F70101000000000
  %4254 = fadd fast float %4238, -5.000000e-01
  %4255 = fadd fast float %4240, -5.000000e-01
  %4256 = fmul fast float %4254, %4250
  %4257 = fmul fast float %4255, %4250
  %4258 = fadd fast float %4256, 5.000000e-01
  %4259 = fadd fast float %4257, 5.000000e-01
  %4260 = fmul fast float %4221, %4042
  %4261 = fmul fast float %4222, %4043
  %4262 = fmul fast float %4223, %4044
  %4263 = fmul fast float %4258, 2.000000e+00
  %4264 = fadd fast float %4263, -1.000000e+00
  %4265 = fmul fast float %4259, 2.000000e+00
  %4266 = fadd fast float %4265, -1.000000e+00
  %4267 = fadd fast float %4264, %4266
  %4268 = fmul fast float %4267, 5.000000e-01
  %4269 = fsub fast float %4264, %4266
  %4270 = fmul fast float %4269, 5.000000e-01
  %4271 = call float @dx.op.unary.f32(i32 6, float %4268)  ; FAbs(value)
  %4272 = fsub fast float 1.000000e+00, %4271
  %4273 = call float @dx.op.unary.f32(i32 6, float %4270)  ; FAbs(value)
  %4274 = fsub fast float %4272, %4273
  %4275 = call float @dx.op.dot3.f32(i32 55, float %4268, float %4270, float %4274, float %4268, float %4270, float %4274)  ; Dot3(ax,ay,az,bx,by,bz)
  %4276 = call float @dx.op.unary.f32(i32 25, float %4275)  ; Rsqrt(value)
  %4277 = fmul fast float %4268, %4276
  %4278 = fmul fast float %4270, %4276
  %4279 = fmul fast float %4276, %4274
  %4280 = fmul fast float %4279, %4007
  %4281 = fmul fast float %4279, %4008
  %4282 = fmul fast float %4279, %4009
  %4283 = fmul fast float %4277, %4030
  %4284 = fmul fast float %4277, %4031
  %4285 = fmul fast float %4277, %4032
  %4286 = fadd fast float %4283, %4280
  %4287 = fadd fast float %4284, %4281
  %4288 = fadd fast float %4285, %4282
  %4289 = fmul fast float %4278, %4036
  %4290 = fmul fast float %4278, %4037
  %4291 = fmul fast float %4278, %4038
  %4292 = fadd fast float %4286, %4289
  %4293 = fadd fast float %4287, %4290
  %4294 = fadd fast float %4288, %4291
  %4295 = call float @dx.op.dot3.f32(i32 55, float %4292, float %4293, float %4294, float %4292, float %4293, float %4294)  ; Dot3(ax,ay,az,bx,by,bz)
  %4296 = call float @dx.op.unary.f32(i32 25, float %4295)  ; Rsqrt(value)
  %4297 = fmul fast float %4292, %4296
  %4298 = fmul fast float %4293, %4296
  %4299 = fmul fast float %4294, %4296
  %4300 = icmp ne i32 %4216, 0
  %4301 = select i1 %4300, float 1.000000e+00, float 0.000000e+00
  %4302 = fmul fast float %4206, %4301
  %4303 = and i32 %4057, 1
  %4304 = icmp eq i32 %4303, 0
  br i1 %4304, label %4305, label %4309

; <label>:4305                                    ; preds = %4214
  %4306 = fsub fast float %4297, %3990
  %4307 = fsub fast float %4298, %3991
  %4308 = fsub fast float %4299, %3992
  br label %4309

; <label>:4309                                    ; preds = %4305, %4214
  %4310 = phi float [ %4306, %4305 ], [ %4297, %4214 ]
  %4311 = phi float [ %4307, %4305 ], [ %4298, %4214 ]
  %4312 = phi float [ %4308, %4305 ], [ %4299, %4214 ]
  %4313 = fmul float %4312, %4302
  %4314 = fmul float %4311, %4302
  %4315 = fmul float %4310, %4302
  %4316 = fadd fast float %4315, %3990
  %4317 = fadd fast float %4314, %3991
  %4318 = fadd fast float %4313, %3992
  %4319 = icmp ne i32 %4215, 0
  %4320 = select i1 %4319, float 1.000000e+00, float 0.000000e+00
  %4321 = fmul fast float %4206, %4320
  %4322 = fsub fast float %4260, %3997
  %4323 = fsub fast float %4261, %3998
  %4324 = fsub fast float %4262, %3999
  %4325 = fmul fast float %4322, %4321
  %4326 = fmul fast float %4323, %4321
  %4327 = fmul fast float %4324, %4321
  %4328 = fadd fast float %4325, %3997
  %4329 = fadd fast float %4326, %3998
  %4330 = fadd fast float %4327, %3999
  %4331 = fsub fast float %4233, %3996
  %4332 = fmul fast float %4331, %4321
  %4333 = fadd fast float %4332, %3996
  %4334 = fmul fast float %4321, %3983
  %4335 = fsub fast float %3983, %4334
  %4336 = fmul fast float %4321, %3982
  %4337 = fsub fast float %3982, %4336
  %4338 = bitcast float %4051 to i32
  %4339 = lshr i32 %4338, 16
  %4340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4339)  ; LegacyF16ToF32(value)
  %4341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.i32 %4341, 0
  %4343 = and i32 %4342, 1
  %4344 = icmp eq i32 %4343, 0
  br i1 %4344, label %4345, label %4370

; <label>:4345                                    ; preds = %4309
  %4346 = fadd fast float %4233, 0xBFB99999A0000000
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fmul fast float %4347, 0x3FF1C71C80000000
  %4349 = fsub fast float 1.000000e+00, %4348
  %4350 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4351 = fmul fast float %4350, %4260
  %4352 = fmul fast float %4350, %4261
  %4353 = fmul fast float %4350, %4262
  %4354 = call float @dx.op.unary.f32(i32 7, float %4351)  ; Saturate(value)
  %4355 = call float @dx.op.unary.f32(i32 7, float %4352)  ; Saturate(value)
  %4356 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4357 = call float @dx.op.binary.f32(i32 35, float %4355, float %4356)  ; FMax(a,b)
  %4358 = call float @dx.op.binary.f32(i32 35, float %4354, float %4357)  ; FMax(a,b)
  %4359 = fcmp fast ogt float %4358, 0.000000e+00
  %4360 = bitcast float %4358 to i32
  %4361 = sub nsw i32 2129859010, %4360
  %4362 = bitcast i32 %4361 to float
  %4363 = select i1 %4359, float %4362, float 0.000000e+00
  %4364 = fmul fast float %4354, %4340
  %4365 = fmul fast float %4355, %4340
  %4366 = fmul fast float %4356, %4340
  %4367 = fmul fast float %4364, %4363
  %4368 = fmul fast float %4365, %4363
  %4369 = fmul fast float %4366, %4363
  br label %4370

; <label>:4370                                    ; preds = %4345, %4309
  %4371 = phi float [ %4340, %4309 ], [ %4367, %4345 ]
  %4372 = phi float [ %4340, %4309 ], [ %4368, %4345 ]
  %4373 = phi float [ %4340, %4309 ], [ %4369, %4345 ]
  %4374 = fsub fast float %4371, %3984
  %4375 = fsub fast float %4372, %3985
  %4376 = fsub fast float %4373, %3986
  %4377 = fmul fast float %4374, %4321
  %4378 = fmul fast float %4375, %4321
  %4379 = fmul fast float %4376, %4321
  %4380 = fadd fast float %4377, %3984
  %4381 = fadd fast float %4378, %3985
  %4382 = fadd fast float %4379, %3986
  %4383 = fadd fast float %4206, %3995
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fsub fast float %4253, %3994
  %4386 = fmul fast float %4385, %4302
  %4387 = fadd fast float %4386, %3994
  %4388 = fsub fast float %4239, %3993
  %4389 = fmul fast float %4388, %4302
  %4390 = fadd fast float %4389, %3993
  %4391 = call float @dx.op.dot3.f32(i32 55, float %4260, float %4261, float %4262, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.CBufRet.f32 %4392, 1
  %4395 = fmul fast float %4394, %4391
  %4396 = fadd fast float %4395, %4393
  %4397 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4398 = bitcast float %4045 to i32
  %4399 = and i32 %4398, 65535
  %4400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4399)  ; LegacyF16ToF32(value)
  %4401 = lshr i32 %4398, 16
  %4402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4401)  ; LegacyF16ToF32(value)
  %4403 = fcmp fast oge float %4400, 0.000000e+00
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 0
  %4406 = select i1 %4403, float %4400, float %4405
  %4407 = fadd fast float %4406, %4402
  %4408 = fsub fast float %4397, %3981
  %4409 = fmul fast float %4408, %4206
  %4410 = fadd fast float %4409, %3981
  %4411 = fmul fast float %4407, %4206
  %4412 = call float @dx.op.binary.f32(i32 35, float %3980, float %4411)  ; FMax(a,b)
  %4413 = and i32 %4057, 16
  %4414 = icmp eq i32 %4413, 0
  br i1 %4414, label %4436, label %4415

; <label>:4415                                    ; preds = %4370
  %4416 = add i32 %4048, 0
  %4417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4416, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4418 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4417, %dx.types.Handle %4219, float %4147, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float %4152, float %4154, float undef, float %4156, float %4158, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = and i32 %4338, 65535
  %4423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4422)  ; LegacyF16ToF32(value)
  %4424 = fmul fast float %4419, %4042
  %4425 = fmul fast float %4420, %4043
  %4426 = fmul fast float %4421, %4044
  %4427 = and i32 %4057, 16384
  %4428 = icmp ne i32 %4427, 0
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 0
  %4431 = select i1 %4428, float %4430, float 1.000000e+00
  %4432 = fmul fast float %4431, %4423
  %4433 = fmul fast float %4424, %4432
  %4434 = fmul fast float %4425, %4432
  %4435 = fmul fast float %4426, %4432
  br label %4436

; <label>:4436                                    ; preds = %4415, %4370
  %4437 = phi float [ %4433, %4415 ], [ 0.000000e+00, %4370 ]
  %4438 = phi float [ %4434, %4415 ], [ 0.000000e+00, %4370 ]
  %4439 = phi float [ %4435, %4415 ], [ 0.000000e+00, %4370 ]
  %4440 = fsub fast float %4437, %3987
  %4441 = fsub fast float %4438, %3988
  %4442 = fsub fast float %4439, %3989
  %4443 = fmul fast float %4440, %4206
  %4444 = fmul fast float %4441, %4206
  %4445 = fmul fast float %4442, %4206
  %4446 = fadd fast float %4443, %3987
  %4447 = fadd fast float %4444, %3988
  %4448 = fadd fast float %4445, %3989
  br label %4106

; <label>:4449                                    ; preds = %4106
  br label %4450

; <label>:4450                                    ; preds = %4449, %3923
  %4451 = phi float [ 0.000000e+00, %3923 ], [ %4107, %4449 ]
  %4452 = phi float [ %3892, %3923 ], [ %4108, %4449 ]
  %4453 = phi float [ %3890, %3923 ], [ %4109, %4449 ]
  %4454 = phi float [ %3889, %3923 ], [ %4110, %4449 ]
  %4455 = phi float [ 0.000000e+00, %3923 ], [ %4111, %4449 ]
  %4456 = phi float [ %3882, %3923 ], [ %4112, %4449 ]
  %4457 = phi float [ %3883, %3923 ], [ %4113, %4449 ]
  %4458 = phi float [ %3884, %3923 ], [ %4114, %4449 ]
  %4459 = phi float [ %3879, %3923 ], [ %4115, %4449 ]
  %4460 = phi float [ %3880, %3923 ], [ %4116, %4449 ]
  %4461 = phi float [ %3881, %3923 ], [ %4117, %4449 ]
  %4462 = phi float [ %3918, %3923 ], [ %4118, %4449 ]
  %4463 = phi float [ %3919, %3923 ], [ %4119, %4449 ]
  %4464 = phi float [ %3920, %3923 ], [ %4120, %4449 ]
  %4465 = phi float [ %3887, %3923 ], [ %4121, %4449 ]
  %4466 = phi float [ %3886, %3923 ], [ %4122, %4449 ]
  %4467 = phi float [ 0.000000e+00, %3923 ], [ %4123, %4449 ]
  %4468 = phi float [ %3885, %3923 ], [ %4124, %4449 ]
  %4469 = phi float [ %3876, %3923 ], [ %4125, %4449 ]
  %4470 = phi float [ %3877, %3923 ], [ %4126, %4449 ]
  %4471 = phi float [ %3878, %3923 ], [ %4127, %4449 ]
  %4472 = call float @dx.op.dot3.f32(i32 55, float %4462, float %4463, float %4464, float %4462, float %4463, float %4464)  ; Dot3(ax,ay,az,bx,by,bz)
  %4473 = call float @dx.op.unary.f32(i32 25, float %4472)  ; Rsqrt(value)
  %4474 = fmul fast float %4473, %4462
  %4475 = fmul fast float %4473, %4463
  %4476 = fmul fast float %4473, %4464
  %4477 = fadd fast float %4467, %975
  %4478 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4474, float %4475, float %4476, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = call float @dx.op.unary.f32(i32 25, float %4479)  ; Rsqrt(value)
  %4481 = fmul fast float %4480, %4474
  %4482 = fmul fast float %4480, %4475
  %4483 = fmul fast float %4480, %4476
  br label %4484

; <label>:4484                                    ; preds = %4450, %3873
  %4485 = phi float [ %4481, %4450 ], [ %3918, %3873 ]
  %4486 = phi float [ %4482, %4450 ], [ %3919, %3873 ]
  %4487 = phi float [ %4483, %4450 ], [ %3920, %3873 ]
  %4488 = phi float [ %4469, %4450 ], [ %3876, %3873 ]
  %4489 = phi float [ %4470, %4450 ], [ %3877, %3873 ]
  %4490 = phi float [ %4471, %4450 ], [ %3878, %3873 ]
  %4491 = phi float [ %4456, %4450 ], [ %3882, %3873 ]
  %4492 = phi float [ %4457, %4450 ], [ %3883, %3873 ]
  %4493 = phi float [ %4458, %4450 ], [ %3884, %3873 ]
  %4494 = phi float [ %4459, %4450 ], [ %3879, %3873 ]
  %4495 = phi float [ %4460, %4450 ], [ %3880, %3873 ]
  %4496 = phi float [ %4461, %4450 ], [ %3881, %3873 ]
  %4497 = phi float [ %4468, %4450 ], [ %3885, %3873 ]
  %4498 = phi float [ %4478, %4450 ], [ %975, %3873 ]
  %4499 = phi float [ %4466, %4450 ], [ %3886, %3873 ]
  %4500 = phi float [ %4465, %4450 ], [ %3887, %3873 ]
  %4501 = phi float [ %4455, %4450 ], [ 0.000000e+00, %3873 ]
  %4502 = phi float [ %4454, %4450 ], [ %3889, %3873 ]
  %4503 = phi float [ %4451, %4450 ], [ 0.000000e+00, %3873 ]
  %4504 = phi float [ %4452, %4450 ], [ %3892, %3873 ]
  %4505 = phi float [ %4453, %4450 ], [ %3890, %3873 ]
  %4506 = fadd fast float %4497, 0xBFB99999A0000000
  %4507 = call float @dx.op.unary.f32(i32 7, float %4506)  ; Saturate(value)
  %4508 = fmul fast float %4507, 0x3FF1C71C80000000
  %4509 = call float @dx.op.binary.f32(i32 36, float %4497, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4510 = fsub fast float 1.000000e+00, %4508
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %4511, %4488
  %4513 = fmul fast float %4511, %4489
  %4514 = fmul fast float %4511, %4490
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4518 = fmul fast float %4508, %4488
  %4519 = fmul fast float %4508, %4489
  %4520 = fmul fast float %4508, %4490
  %4521 = fadd fast float %4518, %4509
  %4522 = fadd fast float %4519, %4509
  %4523 = fadd fast float %4520, %4509
  %4524 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4525 = call float @dx.op.unary.f32(i32 7, float %4522)  ; Saturate(value)
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %4529 = extractvalue %dx.types.ResRet.i32 %4528, 0
  %4530 = and i32 %4529, 1
  %4531 = icmp eq i32 %4530, 0
  br i1 %4531, label %4546, label %4532

; <label>:4532                                    ; preds = %4484
  %4533 = call float @dx.op.binary.f32(i32 35, float %4516, float %4517)  ; FMax(a,b)
  %4534 = call float @dx.op.binary.f32(i32 35, float %4515, float %4533)  ; FMax(a,b)
  %4535 = fcmp fast ogt float %4534, 0.000000e+00
  %4536 = bitcast float %4534 to i32
  %4537 = sub nsw i32 2129859010, %4536
  %4538 = bitcast i32 %4537 to float
  %4539 = select i1 %4535, float %4538, float 0.000000e+00
  %4540 = fmul fast float %4515, %4491
  %4541 = fmul fast float %4516, %4492
  %4542 = fmul fast float %4517, %4493
  %4543 = fmul fast float %4540, %4539
  %4544 = fmul fast float %4541, %4539
  %4545 = fmul fast float %4542, %4539
  br label %4546

; <label>:4546                                    ; preds = %4532, %4484
  %4547 = phi float [ %4543, %4532 ], [ %4491, %4484 ]
  %4548 = phi float [ %4544, %4532 ], [ %4492, %4484 ]
  %4549 = phi float [ %4545, %4532 ], [ %4493, %4484 ]
  %4550 = fadd fast float %4515, 0xBFD51EB860000000
  %4551 = fadd fast float %4516, 0xBFD51EB860000000
  %4552 = fadd fast float %4517, 0xBFD51EB860000000
  %4553 = fmul fast float %4550, %4550
  %4554 = fmul fast float %4551, %4551
  %4555 = fmul fast float %4552, %4552
  %4556 = fmul fast float %4553, %4553
  %4557 = fmul fast float %4556, 1.000000e+02
  %4558 = fmul fast float %4554, %4554
  %4559 = fmul fast float %4558, 1.000000e+02
  %4560 = fmul fast float %4555, %4555
  %4561 = fmul fast float %4560, 1.000000e+02
  %4562 = fadd fast float %4557, 3.500000e+00
  %4563 = fadd fast float %4559, 3.500000e+00
  %4564 = fadd fast float %4561, 3.500000e+00
  %4565 = call float @dx.op.binary.f32(i32 35, float %4547, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4566 = call float @dx.op.binary.f32(i32 35, float %4548, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4567 = call float @dx.op.binary.f32(i32 35, float %4549, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4568 = fdiv fast float %4562, %4565
  %4569 = fdiv fast float %4563, %4566
  %4570 = fdiv fast float %4564, %4567
  %4571 = fmul fast float %3888, 0xBFF7154760000000
  %4572 = fmul fast float %4571, %4568
  %4573 = call float @dx.op.unary.f32(i32 21, float %4572)  ; Exp(value)
  %4574 = fmul fast float %4573, 2.500000e-01
  %4575 = fmul fast float %3888, 0xBFDEC709E0000000
  %4576 = fmul fast float %4575, %4568
  %4577 = call float @dx.op.unary.f32(i32 21, float %4576)  ; Exp(value)
  %4578 = fmul fast float %4577, 7.500000e-01
  %4579 = fmul fast float %4571, %4569
  %4580 = call float @dx.op.unary.f32(i32 21, float %4579)  ; Exp(value)
  %4581 = fmul fast float %4580, 2.500000e-01
  %4582 = fmul fast float %4575, %4569
  %4583 = call float @dx.op.unary.f32(i32 21, float %4582)  ; Exp(value)
  %4584 = fmul fast float %4583, 7.500000e-01
  %4585 = fmul fast float %4571, %4570
  %4586 = call float @dx.op.unary.f32(i32 21, float %4585)  ; Exp(value)
  %4587 = fmul fast float %4586, 2.500000e-01
  %4588 = fmul fast float %4575, %4570
  %4589 = call float @dx.op.unary.f32(i32 21, float %4588)  ; Exp(value)
  %4590 = fmul fast float %4589, 7.500000e-01
  %4591 = fadd fast float %4574, %4578
  %4592 = fadd fast float %4581, %4584
  %4593 = fadd fast float %4587, %4590
  %4594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.i32 %4594, 3
  %4596 = and i32 %4595, 8
  %4597 = icmp ne i32 %4596, 0
  %4598 = call float @dx.op.binary.f32(i32 35, float %4515, float %4488)  ; FMax(a,b)
  %4599 = call float @dx.op.binary.f32(i32 35, float %4516, float %4488)  ; FMax(a,b)
  %4600 = call float @dx.op.binary.f32(i32 35, float %4517, float %4488)  ; FMax(a,b)
  %4601 = call float @dx.op.dot3.f32(i32 55, float %4515, float %4516, float %4517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4602 = select i1 %186, float %4488, float %4515
  %4603 = select i1 %186, float %4601, float %4516
  %4604 = select i1 %186, float 1.000000e+00, float %4517
  %4605 = select i1 %4597, float %4598, float %4602
  %4606 = select i1 %4597, float %4599, float %4603
  %4607 = select i1 %4597, float %4600, float %4604
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.CBufRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.CBufRet.f32 %4608, 2
  %4612 = fadd fast float %4609, %144
  %4613 = fadd fast float %4610, %145
  %4614 = fadd fast float %4611, %146
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4618 = fsub fast float %4612, %4616
  %4619 = fsub fast float %4613, %4617
  %4620 = fmul fast float %4618, %4618
  %4621 = fmul fast float %4619, %4619
  %4622 = fadd fast float %4620, %4621
  %4623 = call float @dx.op.unary.f32(i32 24, float %4622)  ; Sqrt(value)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4625 = fcmp fast olt float %4623, %4624
  br i1 %4625, label %4626, label %4693

; <label>:4626                                    ; preds = %4546
  %4627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4628 = extractvalue %dx.types.CBufRet.f32 %4627, 0
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 0
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4627, 1
  %4634 = extractvalue %dx.types.CBufRet.f32 %4629, 1
  %4635 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4636 = extractvalue %dx.types.CBufRet.f32 %4627, 3
  %4637 = extractvalue %dx.types.CBufRet.f32 %4629, 3
  %4638 = extractvalue %dx.types.CBufRet.f32 %4631, 3
  %4639 = fadd fast float %4636, %4612
  %4640 = fadd fast float %4637, %4613
  %4641 = fadd fast float %4638, %4614
  %4642 = fmul fast float %4639, %4628
  %4643 = call float @dx.op.tertiary.f32(i32 46, float %4640, float %4630, float %4642)  ; FMad(a,b,c)
  %4644 = call float @dx.op.tertiary.f32(i32 46, float %4641, float %4632, float %4643)  ; FMad(a,b,c)
  %4645 = fmul fast float %4639, %4633
  %4646 = call float @dx.op.tertiary.f32(i32 46, float %4640, float %4634, float %4645)  ; FMad(a,b,c)
  %4647 = call float @dx.op.tertiary.f32(i32 46, float %4641, float %4635, float %4646)  ; FMad(a,b,c)
  %4648 = fsub fast float %4644, %4636
  %4649 = fsub fast float %4647, %4637
  %4650 = fsub fast float %4648, %4616
  %4651 = fadd fast float %4650, %4624
  %4652 = fsub fast float %4649, %4617
  %4653 = fadd fast float %4652, %4624
  %4654 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4655 = fmul fast float %4651, %4654
  %4656 = fmul fast float %4653, %4654
  %4657 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4659 = fsub fast float 1.000000e+00, %4657
  %4660 = fsub fast float 1.000000e+00, %4658
  %4661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4659, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4662 = extractvalue %dx.types.ResRet.f32 %4661, 0
  %4663 = fcmp fast ugt float %4662, 0.000000e+00
  br i1 %4663, label %4664, label %4967

; <label>:4664                                    ; preds = %4626
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 2
  %4667 = fmul fast float %4666, %4662
  %4668 = extractvalue %dx.types.CBufRet.f32 %4665, 3
  %4669 = fadd fast float %4668, %4667
  %4670 = extractvalue %dx.types.CBufRet.f32 %4631, 2
  %4671 = fadd fast float %4669, %4638
  %4672 = fmul fast float %4644, %4632
  %4673 = call float @dx.op.tertiary.f32(i32 46, float %4647, float %4635, float %4672)  ; FMad(a,b,c)
  %4674 = call float @dx.op.tertiary.f32(i32 46, float %4671, float %4670, float %4673)  ; FMad(a,b,c)
  %4675 = fsub fast float %4674, %4638
  %4676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4677 = extractvalue %dx.types.CBufRet.f32 %4676, 2
  %4678 = fsub fast float %4675, %4677
  %4679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4659, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4680 = extractvalue %dx.types.ResRet.f32 %4679, 0
  %4681 = extractvalue %dx.types.ResRet.f32 %4679, 1
  %4682 = extractvalue %dx.types.ResRet.f32 %4679, 2
  %4683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4659, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4684 = extractvalue %dx.types.ResRet.f32 %4683, 0
  %4685 = extractvalue %dx.types.ResRet.f32 %4683, 1
  %4686 = extractvalue %dx.types.ResRet.f32 %4683, 2
  %4687 = fadd fast float %4684, %4680
  %4688 = fmul fast float %4687, 0x3F847AE140000000
  %4689 = fadd fast float %4685, %4681
  %4690 = fmul fast float %4689, 0x3F847AE140000000
  %4691 = fadd fast float %4686, %4682
  %4692 = fmul fast float %4691, 0x3F847AE140000000
  br label %4967

; <label>:4693                                    ; preds = %4546
  %4694 = and i32 %162, 1
  %4695 = icmp eq i32 %4694, 0
  br i1 %4695, label %4967, label %4696

; <label>:4696                                    ; preds = %4693
  %4697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.f32 %4697, 0
  %4699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4700 = extractvalue %dx.types.CBufRet.f32 %4699, 0
  %4701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.f32 %4701, 0
  %4703 = extractvalue %dx.types.CBufRet.f32 %4697, 1
  %4704 = extractvalue %dx.types.CBufRet.f32 %4699, 1
  %4705 = extractvalue %dx.types.CBufRet.f32 %4701, 1
  %4706 = extractvalue %dx.types.CBufRet.f32 %4697, 3
  %4707 = extractvalue %dx.types.CBufRet.f32 %4699, 3
  %4708 = extractvalue %dx.types.CBufRet.f32 %4701, 3
  %4709 = fadd fast float %4706, %4612
  %4710 = fadd fast float %4707, %4613
  %4711 = fadd fast float %4708, %4614
  %4712 = fmul fast float %4709, %4698
  %4713 = call float @dx.op.tertiary.f32(i32 46, float %4710, float %4700, float %4712)  ; FMad(a,b,c)
  %4714 = call float @dx.op.tertiary.f32(i32 46, float %4711, float %4702, float %4713)  ; FMad(a,b,c)
  %4715 = fmul fast float %4709, %4703
  %4716 = call float @dx.op.tertiary.f32(i32 46, float %4710, float %4704, float %4715)  ; FMad(a,b,c)
  %4717 = call float @dx.op.tertiary.f32(i32 46, float %4711, float %4705, float %4716)  ; FMad(a,b,c)
  %4718 = fsub fast float %4714, %4706
  %4719 = fsub fast float %4717, %4707
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4723 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4724 = extractvalue %dx.types.CBufRet.f32 %4720, 3
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4728 = extractvalue %dx.types.CBufRet.i32 %4727, 0
  %4729 = extractvalue %dx.types.CBufRet.i32 %4727, 1
  %4730 = udiv i32 %4729, %4728
  %4731 = fsub fast float %4718, %4721
  %4732 = fsub fast float %4719, %4722
  %4733 = call float @dx.op.binary.f32(i32 35, float %4731, float 0.000000e+00)  ; FMax(a,b)
  %4734 = call float @dx.op.binary.f32(i32 35, float %4732, float 0.000000e+00)  ; FMax(a,b)
  %4735 = call float @dx.op.binary.f32(i32 36, float %4733, float %4723)  ; FMin(a,b)
  %4736 = call float @dx.op.binary.f32(i32 36, float %4734, float %4724)  ; FMin(a,b)
  %4737 = add i32 %4728, -1
  %4738 = add i32 %4730, -1
  %4739 = fmul fast float %4735, %4726
  %4740 = fmul fast float %4736, %4726
  %4741 = fptoui float %4739 to i32
  %4742 = fptoui float %4740 to i32
  %4743 = call i32 @dx.op.binary.i32(i32 40, i32 %4741, i32 %4737)  ; UMin(a,b)
  %4744 = call i32 @dx.op.binary.i32(i32 40, i32 %4742, i32 %4738)  ; UMin(a,b)
  %4745 = mul i32 %4744, %4728
  %4746 = add i32 %4745, %4743
  %4747 = shl i32 %4746, 2
  %4748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4747, i32 undef)  ; BufferLoad(srv,index,wot)
  %4749 = extractvalue %dx.types.ResRet.i32 %4748, 0
  %4750 = icmp eq i32 %4749, -1
  br i1 %4750, label %4967, label %4751

; <label>:4751                                    ; preds = %4696
  %4752 = mul i32 %4749, 148
  %4753 = add i32 %4752, 4
  %4754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4753, i32 undef)  ; BufferLoad(srv,index,wot)
  %4755 = extractvalue %dx.types.ResRet.f32 %4754, 0
  %4756 = add i32 %4752, 8
  %4757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4756, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = add i32 %4752, 36
  %4760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4759, i32 undef)  ; BufferLoad(srv,index,wot)
  %4761 = extractvalue %dx.types.ResRet.f32 %4760, 0
  %4762 = add i32 %4752, 60
  %4763 = add i32 %4752, 92
  %4764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4763, i32 undef)  ; BufferLoad(srv,index,wot)
  %4765 = extractvalue %dx.types.ResRet.i32 %4764, 0
  %4766 = add i32 %4752, 116
  %4767 = fsub fast float %4718, %4755
  %4768 = fsub fast float %4719, %4758
  %4769 = fmul fast float %4726, %4767
  %4770 = fmul fast float %4726, %4768
  %4771 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4773 = fsub fast float 1.000000e+00, %4772
  %4774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4775 = extractvalue %dx.types.CBufRet.f32 %4774, 2
  %4776 = call float @dx.op.unary.f32(i32 83, float %4771)  ; DerivCoarseX(value)
  %4777 = call float @dx.op.unary.f32(i32 83, float %4773)  ; DerivCoarseX(value)
  %4778 = call float @dx.op.unary.f32(i32 84, float %4771)  ; DerivCoarseY(value)
  %4779 = call float @dx.op.unary.f32(i32 84, float %4773)  ; DerivCoarseY(value)
  %4780 = fmul fast float %4776, %4775
  %4781 = fmul fast float %4777, %4775
  %4782 = fmul fast float %4778, %4775
  %4783 = fmul fast float %4779, %4775
  %4784 = call float @dx.op.dot2.f32(i32 54, float %4782, float %4783, float %4782, float %4783)  ; Dot2(ax,ay,bx,by)
  %4785 = call float @dx.op.dot2.f32(i32 54, float %4780, float %4781, float %4780, float %4781)  ; Dot2(ax,ay,bx,by)
  %4786 = call float @dx.op.binary.f32(i32 35, float %4785, float %4784)  ; FMax(a,b)
  %4787 = call float @dx.op.unary.f32(i32 23, float %4786)  ; Log(value)
  %4788 = fmul fast float %4787, 5.000000e-01
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 1
  %4791 = fadd fast float %4790, %4788
  %4792 = call float @dx.op.binary.f32(i32 35, float %4791, float 0.000000e+00)  ; FMax(a,b)
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 3
  %4795 = fadd fast float %4794, %4792
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 3
  %4798 = fadd fast float %4795, %4797
  %4799 = add i32 %4765, 0
  %4800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4799, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4801 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4800, i32 0)  ; GetDimensions(handle,mipLevel)
  %4802 = extractvalue %dx.types.Dimensions %4801, 0
  %4803 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4802)  ; FirstbitLo(value)
  %4804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4805 = extractvalue %dx.types.CBufRet.i32 %4804, 1
  %4806 = sub nsw i32 %4805, %4803
  %4807 = sitofp i32 %4806 to float
  %4808 = fsub fast float %4798, %4807
  %4809 = call float @dx.op.binary.f32(i32 35, float %4808, float 0.000000e+00)  ; FMax(a,b)
  %4810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4800, %dx.types.Handle %37, float %4771, float %4773, float %4761, float undef, i32 0, i32 0, i32 undef, float %4809)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4811 = extractvalue %dx.types.ResRet.f32 %4810, 0
  %4812 = fcmp ule float %4811, 0x3FE0101020000000
  %4813 = extractvalue %dx.types.CBufRet.i32 %4804, 0
  %4814 = and i32 %4813, 128
  %4815 = icmp ne i32 %4814, 0
  %4816 = and i1 %4812, %4815
  br i1 %4816, label %4967, label %4817

; <label>:4817                                    ; preds = %4751
  %4818 = add i32 %4752, 20
  %4819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4818, i32 undef)  ; BufferLoad(srv,index,wot)
  %4820 = extractvalue %dx.types.ResRet.f32 %4819, 0
  %4821 = add i32 %4752, 24
  %4822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4821, i32 undef)  ; BufferLoad(srv,index,wot)
  %4823 = extractvalue %dx.types.ResRet.f32 %4822, 0
  %4824 = add i32 %4752, 40
  %4825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4824, i32 undef)  ; BufferLoad(srv,index,wot)
  %4826 = extractvalue %dx.types.ResRet.f32 %4825, 0
  %4827 = add i32 %4752, 96
  %4828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4827, i32 undef)  ; BufferLoad(srv,index,wot)
  %4829 = extractvalue %dx.types.ResRet.i32 %4828, 0
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 2
  %4832 = fmul fast float %4831, %4771
  %4833 = fmul fast float %4831, %4773
  %4834 = extractvalue %dx.types.CBufRet.f32 %4830, 3
  %4835 = fadd fast float %4832, %4834
  %4836 = fadd fast float %4833, %4834
  %4837 = add i32 %4829, 0
  %4838 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4837, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4839 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4838, i32 0)  ; GetDimensions(handle,mipLevel)
  %4840 = extractvalue %dx.types.Dimensions %4839, 0
  %4841 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4840)  ; FirstbitLo(value)
  %4842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.i32 %4842, 1
  %4844 = sub nsw i32 %4843, %4841
  %4845 = sitofp i32 %4844 to float
  %4846 = fsub fast float %4795, %4845
  %4847 = call float @dx.op.binary.f32(i32 35, float %4846, float 0.000000e+00)  ; FMax(a,b)
  %4848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4838, %dx.types.Handle %37, float %4835, float %4836, float %4826, float undef, i32 0, i32 0, i32 undef, float %4847)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4849 = extractvalue %dx.types.ResRet.f32 %4848, 0
  %4850 = fmul fast float %4849, %4820
  %4851 = fadd fast float %4850, %4823
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4856, 3
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 3
  %4860 = extractvalue %dx.types.CBufRet.f32 %4852, 3
  %4861 = fadd fast float %4857, %4718
  %4862 = fadd fast float %4859, %4719
  %4863 = fadd fast float %4851, %4860
  %4864 = fmul fast float %4861, %4853
  %4865 = call float @dx.op.tertiary.f32(i32 46, float %4862, float %4854, float %4864)  ; FMad(a,b,c)
  %4866 = call float @dx.op.tertiary.f32(i32 46, float %4863, float %4855, float %4865)  ; FMad(a,b,c)
  %4867 = fsub fast float %4866, %4860
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 2
  %4870 = fsub fast float %4867, %4869
  %4871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.i32 %4871, 0
  %4873 = call i32 @dx.op.binary.i32(i32 40, i32 %4749, i32 %4872)  ; UMin(a,b)
  %4874 = mul i32 %4873, 36
  %4875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4874, i32 undef)  ; BufferLoad(srv,index,wot)
  %4876 = extractvalue %dx.types.ResRet.i32 %4875, 0
  %4877 = add i32 %4874, 4
  %4878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4879 = extractvalue %dx.types.CBufRet.f32 %4878, 0
  %4880 = fmul fast float %4879, %4771
  %4881 = fmul fast float %4879, %4773
  %4882 = extractvalue %dx.types.CBufRet.f32 %4878, 1
  %4883 = fadd fast float %4880, %4882
  %4884 = fadd fast float %4881, %4882
  %4885 = icmp eq i32 %4876, 0
  br i1 %4885, label %4954, label %4886

; <label>:4886                                    ; preds = %4817
  br label %4887

; <label>:4887                                    ; preds = %4944, %4886
  %4888 = phi float [ %4945, %4944 ], [ 0.000000e+00, %4886 ]
  %4889 = phi float [ %4946, %4944 ], [ 0.000000e+00, %4886 ]
  %4890 = phi float [ %4947, %4944 ], [ 0.000000e+00, %4886 ]
  %4891 = phi float [ %4948, %4944 ], [ 0.000000e+00, %4886 ]
  %4892 = phi float [ %4949, %4944 ], [ 0.000000e+00, %4886 ]
  %4893 = phi float [ %4950, %4944 ], [ 0.000000e+00, %4886 ]
  %4894 = phi i32 [ %4951, %4944 ], [ 0, %4886 ]
  %4895 = shl i32 %4894, 2
  %4896 = add i32 %4762, %4895
  %4897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4896, i32 undef)  ; BufferLoad(srv,index,wot)
  %4898 = extractvalue %dx.types.ResRet.f32 %4897, 0
  %4899 = add i32 %4766, %4895
  %4900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4899, i32 undef)  ; BufferLoad(srv,index,wot)
  %4901 = extractvalue %dx.types.ResRet.i32 %4900, 0
  %4902 = add i32 %4901, 0
  %4903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4902, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4904 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4903, i32 0)  ; GetDimensions(handle,mipLevel)
  %4905 = extractvalue %dx.types.Dimensions %4904, 0
  %4906 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4905)  ; FirstbitLo(value)
  %4907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.i32 %4907, 1
  %4909 = sub nsw i32 %4908, %4906
  %4910 = sitofp i32 %4909 to float
  %4911 = fsub fast float %4795, %4910
  %4912 = call float @dx.op.binary.f32(i32 35, float %4911, float 0.000000e+00)  ; FMax(a,b)
  %4913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4903, %dx.types.Handle %37, float %4883, float %4884, float %4898, float undef, i32 0, i32 0, i32 undef, float %4912)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4914 = extractvalue %dx.types.ResRet.f32 %4913, 0
  %4915 = fcmp fast ogt float %4914, 0.000000e+00
  br i1 %4915, label %4916, label %4944

; <label>:4916                                    ; preds = %4887
  %4917 = add i32 %4877, %4895
  %4918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4917, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.i32 %4918, 0
  %4920 = and i32 %4919, 32767
  %4921 = mul nuw nsw i32 %4920, 928
  %4922 = add nuw nsw i32 %4921, 48
  %4923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4922, i32 undef)  ; BufferLoad(srv,index,wot)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.ResRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.ResRet.f32 %4923, 2
  %4927 = add nuw nsw i32 %4921, 60
  %4928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = fmul fast float %4924, %4914
  %4933 = fmul fast float %4925, %4914
  %4934 = fmul fast float %4926, %4914
  %4935 = fadd fast float %4932, %4888
  %4936 = fadd fast float %4933, %4889
  %4937 = fadd fast float %4934, %4890
  %4938 = fmul fast float %4929, %4914
  %4939 = fmul fast float %4930, %4914
  %4940 = fmul fast float %4931, %4914
  %4941 = fadd fast float %4938, %4891
  %4942 = fadd fast float %4939, %4892
  %4943 = fadd fast float %4940, %4893
  br label %4944

; <label>:4944                                    ; preds = %4916, %4887
  %4945 = phi float [ %4935, %4916 ], [ %4888, %4887 ]
  %4946 = phi float [ %4936, %4916 ], [ %4889, %4887 ]
  %4947 = phi float [ %4937, %4916 ], [ %4890, %4887 ]
  %4948 = phi float [ %4941, %4916 ], [ %4891, %4887 ]
  %4949 = phi float [ %4942, %4916 ], [ %4892, %4887 ]
  %4950 = phi float [ %4943, %4916 ], [ %4893, %4887 ]
  %4951 = add nuw i32 %4894, 1
  %4952 = icmp eq i32 %4951, %4876
  br i1 %4952, label %4953, label %4887

; <label>:4953                                    ; preds = %4944
  br label %4954

; <label>:4954                                    ; preds = %4953, %4817
  %4955 = phi float [ 0.000000e+00, %4817 ], [ %4945, %4953 ]
  %4956 = phi float [ 0.000000e+00, %4817 ], [ %4946, %4953 ]
  %4957 = phi float [ 0.000000e+00, %4817 ], [ %4947, %4953 ]
  %4958 = phi float [ 0.000000e+00, %4817 ], [ %4948, %4953 ]
  %4959 = phi float [ 0.000000e+00, %4817 ], [ %4949, %4953 ]
  %4960 = phi float [ 0.000000e+00, %4817 ], [ %4950, %4953 ]
  %4961 = fadd fast float %4958, %4955
  %4962 = fmul fast float %4961, 0x3F847AE140000000
  %4963 = fadd fast float %4959, %4956
  %4964 = fmul fast float %4963, 0x3F847AE140000000
  %4965 = fadd fast float %4960, %4957
  %4966 = fmul fast float %4965, 0x3F847AE140000000
  br label %4967

; <label>:4967                                    ; preds = %4954, %4751, %4696, %4693, %4664, %4626
  %4968 = phi float [ %4678, %4664 ], [ -1.310720e+05, %4626 ], [ %4870, %4954 ], [ -1.310720e+05, %4696 ], [ -1.310720e+05, %4751 ], [ -1.310720e+05, %4693 ]
  %4969 = phi float [ %4688, %4664 ], [ 0.000000e+00, %4626 ], [ %4962, %4954 ], [ 0.000000e+00, %4696 ], [ 0.000000e+00, %4751 ], [ 0.000000e+00, %4693 ]
  %4970 = phi float [ %4690, %4664 ], [ 0.000000e+00, %4626 ], [ %4964, %4954 ], [ 0.000000e+00, %4696 ], [ 0.000000e+00, %4751 ], [ 0.000000e+00, %4693 ]
  %4971 = phi float [ %4692, %4664 ], [ 0.000000e+00, %4626 ], [ %4966, %4954 ], [ 0.000000e+00, %4696 ], [ 0.000000e+00, %4751 ], [ 0.000000e+00, %4693 ]
  %4972 = phi i1 [ true, %4664 ], [ false, %4626 ], [ true, %4954 ], [ false, %4696 ], [ false, %4751 ], [ false, %4693 ]
  %4973 = and i32 %162, 3
  %4974 = icmp eq i32 %4973, 1
  %4975 = select i1 %4974, float 1.000000e+00, float 0.000000e+00
  %4976 = fsub fast float %4968, %146
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = select i1 %4972, float %4977, float 1.000000e+00
  %4979 = fmul fast float %4978, %4975
  %4980 = icmp eq i32 %4973, 3
  %4981 = select i1 %4980, float 1.000000e+00, float %4979
  %4982 = call float @dx.op.binary.f32(i32 35, float %4503, float %4981)  ; FMax(a,b)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fcmp fast une float %4983, 0.000000e+00
  %4985 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4986 = call float @dx.op.unary.f32(i32 25, float %4985)  ; Rsqrt(value)
  br i1 %4984, label %4994, label %4987

; <label>:4987                                    ; preds = %4967
  %4988 = fmul fast float %4986, %144
  %4989 = fmul fast float %4986, %145
  %4990 = fmul fast float %4986, %146
  %4991 = fsub fast float -0.000000e+00, %4988
  %4992 = fsub fast float -0.000000e+00, %4989
  %4993 = fsub fast float -0.000000e+00, %4990
  br label %5162

; <label>:4994                                    ; preds = %4967
  %4995 = fmul fast float %144, %4986
  %4996 = fsub fast float -0.000000e+00, %4995
  %4997 = fmul fast float %145, %4986
  %4998 = fsub fast float -0.000000e+00, %4997
  %4999 = fmul fast float %146, %4986
  %5000 = fsub fast float -0.000000e+00, %4999
  %5001 = call float @dx.op.dot3.f32(i32 55, float %4996, float %4998, float %5000, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %5002 = fmul fast float %4983, 2.500000e+00
  %5003 = call float @dx.op.unary.f32(i32 7, float %5002)  ; Saturate(value)
  %5004 = fmul fast float %4983, 0x4013FFFFE0000000
  %5005 = fadd fast float %5004, 0xBFFFFFFFE0000000
  %5006 = call float @dx.op.unary.f32(i32 7, float %5005)  ; Saturate(value)
  %5007 = fmul fast float %4983, 0x4004000020000000
  %5008 = fadd fast float %5007, 0xBFF8000040000000
  %5009 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5010 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5011 = fmul fast float %4506, 1.000000e+01
  %5012 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5013 = fmul fast float %5012, 2.000000e+00
  %5014 = fsub fast float 3.000000e+00, %5013
  %5015 = fmul fast float %5012, %5012
  %5016 = fmul fast float %5015, %5014
  %5017 = fsub fast float 1.000000e+00, %5016
  %5018 = fsub fast float 0x3FE3333340000000, %4527
  %5019 = fmul fast float %5018, 0x400AAAAAA0000000
  %5020 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5021 = fmul fast float %5017, %5020
  %5022 = fmul fast float %4605, 0x3FEA2B8620000000
  %5023 = fmul fast float %4606, 0x3FEA2B8620000000
  %5024 = fmul fast float %4607, 0x3FEA2B8620000000
  %5025 = fadd fast float %5022, 0x3FC81DFBA0000000
  %5026 = fmul fast float %5025, %4605
  %5027 = fadd fast float %5026, 0x3F910E6020000000
  %5028 = fadd fast float %5023, 0x3FC81DFBA0000000
  %5029 = fmul fast float %5028, %4606
  %5030 = fadd fast float %5029, 0x3F910E6020000000
  %5031 = fadd fast float %5024, 0x3FC81DFBA0000000
  %5032 = fmul fast float %5031, %4607
  %5033 = fadd fast float %5032, 0x3F910E6020000000
  %5034 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5035 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5036 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5037 = fsub fast float %5034, %4605
  %5038 = fsub fast float %5035, %4606
  %5039 = fsub fast float %5036, %4607
  %5040 = fmul fast float %5037, %5010
  %5041 = fmul fast float %5040, %5021
  %5042 = fmul fast float %5038, %5010
  %5043 = fmul fast float %5042, %5021
  %5044 = fmul fast float %5039, %5010
  %5045 = fmul fast float %5044, %5021
  %5046 = fadd fast float %5041, %4605
  %5047 = fadd fast float %5043, %4606
  %5048 = fadd fast float %5045, %4607
  %5049 = fmul fast float %4500, %4500
  %5050 = fmul fast float %5049, %5049
  %5051 = fadd fast float %5006, 1.000000e+00
  %5052 = fsub fast float %5051, %5021
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fsub fast float 1.000000e+00, %5050
  %5057 = call float @dx.op.binary.f32(i32 36, float %5053, float %5056)  ; FMin(a,b)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5059 = call float @dx.op.binary.f32(i32 35, float %5057, float %5058)  ; FMax(a,b)
  %5060 = fadd fast float %5055, 0xBFE4CCCCC0000000
  %5061 = fmul fast float %5060, 0x4006DB6DA0000000
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5062, 2.000000e+00
  %5064 = fsub fast float 3.000000e+00, %5063
  %5065 = bitcast float %4524 to i32
  %5066 = ashr i32 %5065, 1
  %5067 = add nsw i32 %5066, 532487669
  %5068 = bitcast i32 %5067 to float
  %5069 = fsub fast float 1.000000e+00, %5068
  %5070 = bitcast float %5069 to i32
  %5071 = sub nsw i32 2129859010, %5070
  %5072 = bitcast i32 %5071 to float
  %5073 = fmul fast float %5072, 2.000000e+00
  %5074 = bitcast float %4525 to i32
  %5075 = ashr i32 %5074, 1
  %5076 = add nsw i32 %5075, 532487669
  %5077 = bitcast i32 %5076 to float
  %5078 = fsub fast float 1.000000e+00, %5077
  %5079 = bitcast float %5078 to i32
  %5080 = sub nsw i32 2129859010, %5079
  %5081 = bitcast i32 %5080 to float
  %5082 = fmul fast float %5081, 2.000000e+00
  %5083 = bitcast float %4526 to i32
  %5084 = ashr i32 %5083, 1
  %5085 = add nsw i32 %5084, 532487669
  %5086 = bitcast i32 %5085 to float
  %5087 = fsub fast float 1.000000e+00, %5086
  %5088 = bitcast float %5087 to i32
  %5089 = sub nsw i32 2129859010, %5088
  %5090 = bitcast i32 %5089 to float
  %5091 = fmul fast float %5090, 2.000000e+00
  %5092 = fsub fast float 0x4002A9FBE0000000, %5073
  %5093 = fadd fast float %5073, 0x3FD54FDF00000000
  %5094 = bitcast float %5093 to i32
  %5095 = sub nsw i32 2129859010, %5094
  %5096 = bitcast i32 %5095 to float
  %5097 = fmul fast float %5096, %5092
  %5098 = fmul fast float %5097, %5097
  %5099 = fsub fast float 0x4002A9FBE0000000, %5082
  %5100 = fadd fast float %5082, 0x3FD54FDF00000000
  %5101 = bitcast float %5100 to i32
  %5102 = sub nsw i32 2129859010, %5101
  %5103 = bitcast i32 %5102 to float
  %5104 = fmul fast float %5103, %5099
  %5105 = fmul fast float %5104, %5104
  %5106 = fsub fast float 0x4002A9FBE0000000, %5091
  %5107 = fadd fast float %5091, 0x3FD54FDF00000000
  %5108 = bitcast float %5107 to i32
  %5109 = sub nsw i32 2129859010, %5108
  %5110 = bitcast i32 %5109 to float
  %5111 = fmul fast float %5110, %5106
  %5112 = fmul fast float %5111, %5111
  %5113 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5098)  ; FMax(a,b)
  %5114 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5105)  ; FMax(a,b)
  %5115 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5112)  ; FMax(a,b)
  %5116 = fsub fast float 1.000000e+00, %5001
  %5117 = fadd fast float %5116, %5017
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = fsub fast float 1.000000e+00, %4981
  %5120 = fmul fast float %5059, %5119
  %5121 = fmul fast float %5062, %5062
  %5122 = fmul fast float %5121, %5120
  %5123 = fmul fast float %5122, %5064
  %5124 = fmul fast float %5119, 0xBFE99999A0000000
  %5125 = fmul fast float %5124, %5010
  %5126 = fmul fast float %5125, %5021
  %5127 = fadd fast float %5126, 1.000000e+00
  %5128 = fadd fast float %4527, -1.000000e+00
  %5129 = fmul fast float %5127, %5128
  %5130 = fadd fast float %5129, 1.000000e+00
  %5131 = fsub fast float %5113, %4524
  %5132 = fsub fast float %5114, %4525
  %5133 = fsub fast float %5115, %4526
  %5134 = fmul fast float %5123, %5131
  %5135 = fmul fast float %5123, %5132
  %5136 = fmul fast float %5123, %5133
  %5137 = fadd fast float %5134, %4524
  %5138 = fadd fast float %5135, %4525
  %5139 = fadd fast float %5136, %4526
  %5140 = fsub fast float %94, %4485
  %5141 = fsub fast float %96, %4486
  %5142 = fsub fast float %98, %4487
  %5143 = fmul fast float %5123, %5140
  %5144 = fmul fast float %5123, %5141
  %5145 = fmul fast float %5123, %5142
  %5146 = fadd fast float %5143, %4485
  %5147 = fadd fast float %5144, %4486
  %5148 = fadd fast float %5145, %4487
  %5149 = fmul fast float %5123, %5118
  %5150 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = fmul fast float %5149, %5151
  %5153 = fadd fast float %5152, %5150
  %5154 = fsub fast float 1.000000e+00, %4500
  %5155 = fmul fast float %5123, %5154
  %5156 = fadd fast float %5155, %4500
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5146, float %5147, float %5148, float %5146, float %5147, float %5148)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = call float @dx.op.unary.f32(i32 25, float %5157)  ; Rsqrt(value)
  %5159 = fmul fast float %5146, %5158
  %5160 = fmul fast float %5147, %5158
  %5161 = fmul fast float %5148, %5158
  br label %5162

; <label>:5162                                    ; preds = %4994, %4987
  %5163 = phi float [ %4993, %4987 ], [ %5000, %4994 ]
  %5164 = phi float [ %4992, %4987 ], [ %4998, %4994 ]
  %5165 = phi float [ %4991, %4987 ], [ %4996, %4994 ]
  %5166 = phi float [ %4990, %4987 ], [ %4999, %4994 ]
  %5167 = phi float [ %4989, %4987 ], [ %4997, %4994 ]
  %5168 = phi float [ %4988, %4987 ], [ %4995, %4994 ]
  %5169 = phi float [ %4524, %4987 ], [ %5137, %4994 ]
  %5170 = phi float [ %4525, %4987 ], [ %5138, %4994 ]
  %5171 = phi float [ %4526, %4987 ], [ %5139, %4994 ]
  %5172 = phi float [ %4605, %4987 ], [ %5046, %4994 ]
  %5173 = phi float [ %4606, %4987 ], [ %5047, %4994 ]
  %5174 = phi float [ %4607, %4987 ], [ %5048, %4994 ]
  %5175 = phi float [ %4485, %4987 ], [ %5159, %4994 ]
  %5176 = phi float [ %4486, %4987 ], [ %5160, %4994 ]
  %5177 = phi float [ %4487, %4987 ], [ %5161, %4994 ]
  %5178 = phi float [ %4527, %4987 ], [ %5153, %4994 ]
  %5179 = phi float [ %4500, %4987 ], [ %5156, %4994 ]
  %5180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.f32 %5180, 2
  %5182 = extractvalue %dx.types.CBufRet.f32 %5180, 3
  %5183 = fmul fast float %5181, %85
  %5184 = fmul fast float %5182, %86
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.CBufRet.f32 %5185, 1
  %5188 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %5183, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5189 = extractvalue %dx.types.ResRet.f32 %5188, 0
  %5190 = fmul fast float %5189, %5187
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5192 = fadd fast float %5191, -1.000000e+00
  %5193 = fmul fast float %5192, %5186
  %5194 = fadd fast float %5193, 1.000000e+00
  %5195 = select i1 %186, float 0.000000e+00, float %5171
  %5196 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %5165, float %5164, float %5163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5197 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5198 = call float @dx.op.dot3.f32(i32 55, float %5168, float %5167, float %5166, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5199 = fmul fast float %5198, 2.000000e+00
  %5200 = fmul fast float %5199, %5175
  %5201 = fmul fast float %5199, %5176
  %5202 = fmul fast float %5199, %5177
  %5203 = fsub fast float %5168, %5200
  %5204 = fsub fast float %5167, %5201
  %5205 = fsub fast float %5166, %5202
  %5206 = call float @dx.op.binary.f32(i32 36, float %5179, float %5194)  ; FMin(a,b)
  %5207 = fsub fast float 1.000000e+00, %5206
  %5208 = bitcast float %5207 to i32
  %5209 = ashr i32 %5208, 1
  %5210 = add nsw i32 %5209, 532487669
  %5211 = bitcast i32 %5210 to float
  %5212 = fsub fast float 1.000000e+00, %5178
  %5213 = call float @dx.op.binary.f32(i32 35, float %5212, float 0x3F847AE140000000)  ; FMax(a,b)
  %5214 = fmul fast float %5213, %5213
  %5215 = fmul fast float %5214, %5214
  %5216 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %5211, float %5215, float %5216, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5218 = extractvalue %dx.types.ResRet.f32 %5217, 0
  %5219 = fsub fast float 1.000000e+00, %5179
  %5220 = bitcast float %5219 to i32
  %5221 = sub nsw i32 2129859010, %5220
  %5222 = bitcast i32 %5221 to float
  %5223 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = fmul fast float %5223, 0x3FD20DD760000000
  %5225 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %5226 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %5227 = fcmp fast oeq float %5226, 0.000000e+00
  %5228 = fcmp fast oeq float %5225, 0.000000e+00
  %5229 = or i1 %5228, %5227
  br i1 %5229, label %5259, label %5230

; <label>:5230                                    ; preds = %5162
  %5231 = fsub fast float -0.000000e+00, %65
  %5232 = fsub fast float -0.000000e+00, %63
  %5233 = call float @dx.op.unary.f32(i32 24, float %5226)  ; Sqrt(value)
  %5234 = fdiv fast float %5233, %5225
  %5235 = fcmp fast ogt float %5234, 0x3FFB6F8900000000
  %5236 = select i1 %5235, float 0x3FFB6F8900000000, float %5234
  %5237 = fmul fast float %5236, 0x3FE8A23460000000
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = call float @dx.op.binary.f32(i32 35, float %5236, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5240 = fmul fast float %5238, %5225
  %5241 = fmul fast float %5239, 0x3FF279A740000000
  %5242 = fadd fast float %5241, -1.000000e+00
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %64, float %5231, float %5232, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.unary.f32(i32 25, float %5243)  ; Rsqrt(value)
  %5245 = fmul fast float %5244, %5231
  %5246 = fmul fast float %5244, %5232
  %5247 = fmul fast float %5244, %64
  %5248 = fmul fast float %5242, %5242
  %5249 = fsub fast float 1.000000e+00, %5248
  %5250 = fmul fast float %5239, 0x40005F8BE0000000
  %5251 = fsub fast float 0x400C5BF8A0000000, %5250
  %5252 = fdiv fast float %5240, %5251
  %5253 = fmul fast float %5252, 0x3FEE31C3C0000000
  %5254 = fmul fast float %5253, %5249
  %5255 = fmul fast float %5239, 0x3FDACB7480000000
  %5256 = fadd fast float %5255, 0xBFD7347680000000
  %5257 = fmul fast float %5256, %5252
  %5258 = fmul fast float %5257, %5249
  br label %5259

; <label>:5259                                    ; preds = %5230, %5162
  %5260 = phi float [ %5245, %5230 ], [ 0.000000e+00, %5162 ]
  %5261 = phi float [ %5246, %5230 ], [ 0.000000e+00, %5162 ]
  %5262 = phi float [ %5247, %5230 ], [ 0.000000e+00, %5162 ]
  %5263 = phi float [ %5254, %5230 ], [ 0.000000e+00, %5162 ]
  %5264 = phi float [ %5258, %5230 ], [ 0.000000e+00, %5162 ]
  %5265 = call float @dx.op.dot3.f32(i32 55, float %5260, float %5261, float %5262, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5266 = fmul fast float %5265, 0x3FDF454380000000
  %5267 = fmul fast float %5265, %5265
  %5268 = fmul fast float %5267, 0x3FEE471020000000
  %5269 = fadd fast float %5268, 0xBFD42F6020000000
  %5270 = fmul fast float %5225, 0x3FD20DD760000000
  %5271 = fmul fast float %5269, %5264
  %5272 = fadd fast float %5271, %5270
  %5273 = fmul fast float %5266, %5263
  %5274 = fadd fast float %5272, %5273
  %5275 = fsub fast float %5272, %5273
  %5276 = call float @dx.op.dot3.f32(i32 55, float %5260, float %5261, float %5262, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5277 = fmul fast float %5276, 0x3FDF454380000000
  %5278 = fmul fast float %5276, %5276
  %5279 = fmul fast float %5278, 0x3FEE471020000000
  %5280 = fadd fast float %5279, 0xBFD42F6020000000
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5263, float %5264, float 0x3FD20DD760000000, float %5277, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %5283 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %5284 = fcmp fast oeq float %5283, 0.000000e+00
  %5285 = fcmp fast oeq float %5282, 0.000000e+00
  %5286 = or i1 %5285, %5284
  br i1 %5286, label %5316, label %5287

; <label>:5287                                    ; preds = %5259
  %5288 = fsub fast float -0.000000e+00, %61
  %5289 = fsub fast float -0.000000e+00, %59
  %5290 = call float @dx.op.unary.f32(i32 24, float %5283)  ; Sqrt(value)
  %5291 = fdiv fast float %5290, %5282
  %5292 = fcmp fast ogt float %5291, 0x3FFB6F8900000000
  %5293 = select i1 %5292, float 0x3FFB6F8900000000, float %5291
  %5294 = fmul fast float %5293, 0x3FE8A23460000000
  %5295 = call float @dx.op.unary.f32(i32 7, float %5294)  ; Saturate(value)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5293, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5297 = fmul fast float %5295, %5282
  %5298 = fmul fast float %5296, 0x3FF279A740000000
  %5299 = fadd fast float %5298, -1.000000e+00
  %5300 = call float @dx.op.dot3.f32(i32 55, float %5288, float %5289, float %60, float %5288, float %5289, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %5301 = call float @dx.op.unary.f32(i32 25, float %5300)  ; Rsqrt(value)
  %5302 = fmul fast float %5301, %5288
  %5303 = fmul fast float %5301, %5289
  %5304 = fmul fast float %5301, %60
  %5305 = fmul fast float %5299, %5299
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = fmul fast float %5296, 0x40005F8BE0000000
  %5308 = fsub fast float 0x400C5BF8A0000000, %5307
  %5309 = fdiv fast float %5297, %5308
  %5310 = fmul fast float %5309, 0x3FEE31C3C0000000
  %5311 = fmul fast float %5310, %5306
  %5312 = fmul fast float %5296, 0x3FDACB7480000000
  %5313 = fadd fast float %5312, 0xBFD7347680000000
  %5314 = fmul fast float %5313, %5309
  %5315 = fmul fast float %5314, %5306
  br label %5316

; <label>:5316                                    ; preds = %5287, %5259
  %5317 = phi float [ %5302, %5287 ], [ 0.000000e+00, %5259 ]
  %5318 = phi float [ %5303, %5287 ], [ 0.000000e+00, %5259 ]
  %5319 = phi float [ %5304, %5287 ], [ 0.000000e+00, %5259 ]
  %5320 = phi float [ %5311, %5287 ], [ 0.000000e+00, %5259 ]
  %5321 = phi float [ %5315, %5287 ], [ 0.000000e+00, %5259 ]
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5318, float %5319, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = fmul fast float %5322, 0x3FDF454380000000
  %5324 = fmul fast float %5322, %5322
  %5325 = fmul fast float %5324, 0x3FEE471020000000
  %5326 = fadd fast float %5325, 0xBFD42F6020000000
  %5327 = fmul fast float %5282, 0x3FD20DD760000000
  %5328 = fmul fast float %5326, %5321
  %5329 = fadd fast float %5328, %5327
  %5330 = fmul fast float %5323, %5320
  %5331 = fadd fast float %5329, %5330
  %5332 = fsub fast float %5329, %5330
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5317, float %5318, float %5319, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = fmul fast float %5333, 0x3FDF454380000000
  %5335 = fmul fast float %5333, %5333
  %5336 = fmul fast float %5335, 0x3FEE471020000000
  %5337 = fadd fast float %5336, 0xBFD42F6020000000
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5282, float %5320, float %5321, float 0x3FD20DD760000000, float %5334, float %5337)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %5340 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = fcmp fast oeq float %5340, 0.000000e+00
  %5342 = fcmp fast oeq float %5339, 0.000000e+00
  %5343 = or i1 %5342, %5341
  br i1 %5343, label %5373, label %5344

; <label>:5344                                    ; preds = %5316
  %5345 = fsub fast float -0.000000e+00, %57
  %5346 = fsub fast float -0.000000e+00, %55
  %5347 = call float @dx.op.unary.f32(i32 24, float %5340)  ; Sqrt(value)
  %5348 = fdiv fast float %5347, %5339
  %5349 = fcmp fast ogt float %5348, 0x3FFB6F8900000000
  %5350 = select i1 %5349, float 0x3FFB6F8900000000, float %5348
  %5351 = fmul fast float %5350, 0x3FE8A23460000000
  %5352 = call float @dx.op.unary.f32(i32 7, float %5351)  ; Saturate(value)
  %5353 = call float @dx.op.binary.f32(i32 35, float %5350, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5354 = fmul fast float %5352, %5339
  %5355 = fmul fast float %5353, 0x3FF279A740000000
  %5356 = fadd fast float %5355, -1.000000e+00
  %5357 = call float @dx.op.dot3.f32(i32 55, float %5345, float %5346, float %56, float %5345, float %5346, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = call float @dx.op.unary.f32(i32 25, float %5357)  ; Rsqrt(value)
  %5359 = fmul fast float %5358, %5345
  %5360 = fmul fast float %5358, %5346
  %5361 = fmul fast float %5358, %56
  %5362 = fmul fast float %5356, %5356
  %5363 = fsub fast float 1.000000e+00, %5362
  %5364 = fmul fast float %5353, 0x40005F8BE0000000
  %5365 = fsub fast float 0x400C5BF8A0000000, %5364
  %5366 = fdiv fast float %5354, %5365
  %5367 = fmul fast float %5366, 0x3FEE31C3C0000000
  %5368 = fmul fast float %5367, %5363
  %5369 = fmul fast float %5353, 0x3FDACB7480000000
  %5370 = fadd fast float %5369, 0xBFD7347680000000
  %5371 = fmul fast float %5370, %5366
  %5372 = fmul fast float %5371, %5363
  br label %5373

; <label>:5373                                    ; preds = %5344, %5316
  %5374 = phi float [ %5359, %5344 ], [ 0.000000e+00, %5316 ]
  %5375 = phi float [ %5360, %5344 ], [ 0.000000e+00, %5316 ]
  %5376 = phi float [ %5361, %5344 ], [ 0.000000e+00, %5316 ]
  %5377 = phi float [ %5368, %5344 ], [ 0.000000e+00, %5316 ]
  %5378 = phi float [ %5372, %5344 ], [ 0.000000e+00, %5316 ]
  %5379 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = fmul fast float %5379, 0x3FDF454380000000
  %5381 = fmul fast float %5379, %5379
  %5382 = fmul fast float %5381, 0x3FEE471020000000
  %5383 = fadd fast float %5382, 0xBFD42F6020000000
  %5384 = fmul fast float %5339, 0x3FD20DD760000000
  %5385 = fmul fast float %5383, %5378
  %5386 = fadd fast float %5385, %5384
  %5387 = fmul fast float %5380, %5377
  %5388 = fadd fast float %5386, %5387
  %5389 = fsub fast float %5386, %5387
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = fmul fast float %5390, 0x3FDF454380000000
  %5392 = fmul fast float %5390, %5390
  %5393 = fmul fast float %5392, 0x3FEE471020000000
  %5394 = fadd fast float %5393, 0xBFD42F6020000000
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5377, float %5378, float 0x3FD20DD760000000, float %5391, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = call float @dx.op.binary.f32(i32 35, float %5274, float 0.000000e+00)  ; FMax(a,b)
  %5397 = call float @dx.op.binary.f32(i32 35, float %5331, float 0.000000e+00)  ; FMax(a,b)
  %5398 = call float @dx.op.binary.f32(i32 35, float %5388, float 0.000000e+00)  ; FMax(a,b)
  %5399 = call float @dx.op.binary.f32(i32 35, float %5275, float 0.000000e+00)  ; FMax(a,b)
  %5400 = call float @dx.op.binary.f32(i32 35, float %5332, float 0.000000e+00)  ; FMax(a,b)
  %5401 = call float @dx.op.binary.f32(i32 35, float %5389, float 0.000000e+00)  ; FMax(a,b)
  %5402 = call float @dx.op.binary.f32(i32 35, float %5281, float 0.000000e+00)  ; FMax(a,b)
  %5403 = call float @dx.op.binary.f32(i32 35, float %5338, float 0.000000e+00)  ; FMax(a,b)
  %5404 = call float @dx.op.binary.f32(i32 35, float %5395, float 0.000000e+00)  ; FMax(a,b)
  %5405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5405, 0
  %5407 = call float @dx.op.binary.f32(i32 36, float %5172, float %5406)  ; FMin(a,b)
  %5408 = fmul fast float %5407, %5207
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = bitcast float %5409 to i32
  %5411 = sub nsw i32 2129859010, %5410
  %5412 = bitcast i32 %5411 to float
  %5413 = call float @dx.op.binary.f32(i32 36, float %5173, float %5406)  ; FMin(a,b)
  %5414 = fmul fast float %5413, %5207
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = bitcast float %5415 to i32
  %5417 = sub nsw i32 2129859010, %5416
  %5418 = bitcast i32 %5417 to float
  %5419 = call float @dx.op.binary.f32(i32 36, float %5174, float %5406)  ; FMin(a,b)
  %5420 = fmul fast float %5419, %5207
  %5421 = fsub fast float 1.000000e+00, %5420
  %5422 = bitcast float %5421 to i32
  %5423 = sub nsw i32 2129859010, %5422
  %5424 = bitcast i32 %5423 to float
  %5425 = fmul fast float %5396, %5206
  %5426 = fmul fast float %5425, %5412
  %5427 = fmul fast float %5397, %5206
  %5428 = fmul fast float %5427, %5418
  %5429 = fmul fast float %5398, %5206
  %5430 = fmul fast float %5429, %5424
  %5431 = call float @dx.op.binary.f32(i32 36, float %5169, float %5406)  ; FMin(a,b)
  %5432 = fmul fast float %5431, %5207
  %5433 = fsub fast float 1.000000e+00, %5432
  %5434 = bitcast float %5433 to i32
  %5435 = sub nsw i32 2129859010, %5434
  %5436 = bitcast i32 %5435 to float
  %5437 = call float @dx.op.binary.f32(i32 36, float %5170, float %5406)  ; FMin(a,b)
  %5438 = fmul fast float %5437, %5207
  %5439 = fsub fast float 1.000000e+00, %5438
  %5440 = bitcast float %5439 to i32
  %5441 = sub nsw i32 2129859010, %5440
  %5442 = bitcast i32 %5441 to float
  %5443 = call float @dx.op.binary.f32(i32 36, float %5195, float %5406)  ; FMin(a,b)
  %5444 = fmul fast float %5443, %5207
  %5445 = fsub fast float 1.000000e+00, %5444
  %5446 = bitcast float %5445 to i32
  %5447 = sub nsw i32 2129859010, %5446
  %5448 = bitcast i32 %5447 to float
  %5449 = fmul fast float %5402, %5206
  %5450 = fmul fast float %5449, %5436
  %5451 = fmul fast float %5403, %5206
  %5452 = fmul fast float %5451, %5442
  %5453 = fmul fast float %5404, %5206
  %5454 = fmul fast float %5453, %5448
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5428, float %5430, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = select i1 %186, float 0.000000e+00, float %5426
  %5457 = select i1 %186, float %5455, float %5428
  %5458 = select i1 %186, float 0.000000e+00, float %5430
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5399, float %5400, float %5401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = select i1 %186, float 0.000000e+00, float %5399
  %5461 = select i1 %186, float %5459, float %5400
  %5462 = select i1 %186, float 0.000000e+00, float %5401
  %5463 = call float @dx.op.dot3.f32(i32 55, float %5450, float %5452, float %5454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5464 = select i1 %186, float 0.000000e+00, float %5450
  %5465 = select i1 %186, float %5463, float %5452
  %5466 = select i1 %186, float 0.000000e+00, float %5454
  %5467 = fmul fast float %5197, 9.843750e-01
  %5468 = fmul fast float %5178, 9.843750e-01
  %5469 = fadd fast float %5467, 7.812500e-03
  %5470 = fadd fast float %5468, 7.812500e-03
  %5471 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5469, float %5470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 2
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 3
  %5474 = fmul fast float %5472, %5169
  %5475 = fmul fast float %5472, %5170
  %5476 = fmul fast float %5472, %5195
  %5477 = fadd fast float %5474, %5473
  %5478 = fadd fast float %5475, %5473
  %5479 = fadd fast float %5476, %5473
  %5480 = fcmp fast ogt float %4501, 0.000000e+00
  br i1 %5480, label %5481, label %5507

; <label>:5481                                    ; preds = %5373
  %5482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4501, float %5197, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5483 = extractvalue %dx.types.ResRet.f32 %5482, 0
  %5484 = extractvalue %dx.types.ResRet.f32 %5482, 1
  %5485 = extractvalue %dx.types.ResRet.f32 %5482, 2
  %5486 = fadd fast float %5483, -5.000000e-01
  %5487 = fadd fast float %5484, -5.000000e-01
  %5488 = fadd fast float %5485, -5.000000e-01
  %5489 = fsub fast float 1.000000e+00, %5169
  %5490 = fsub fast float 1.000000e+00, %5170
  %5491 = fsub fast float 1.000000e+00, %5195
  %5492 = fmul fast float %5169, 4.000000e+00
  %5493 = fmul fast float %5492, %5489
  %5494 = fmul fast float %5493, %5486
  %5495 = fmul fast float %5170, 4.000000e+00
  %5496 = fmul fast float %5495, %5490
  %5497 = fmul fast float %5496, %5487
  %5498 = fmul fast float %5195, 4.000000e+00
  %5499 = fmul fast float %5498, %5491
  %5500 = fmul fast float %5499, %5488
  %5501 = fadd fast float %5494, %5477
  %5502 = fadd fast float %5497, %5478
  %5503 = fadd fast float %5500, %5479
  %5504 = call float @dx.op.unary.f32(i32 7, float %5501)  ; Saturate(value)
  %5505 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  %5506 = call float @dx.op.unary.f32(i32 7, float %5503)  ; Saturate(value)
  br label %5507

; <label>:5507                                    ; preds = %5481, %5373
  %5508 = phi float [ %5504, %5481 ], [ %5477, %5373 ]
  %5509 = phi float [ %5505, %5481 ], [ %5478, %5373 ]
  %5510 = phi float [ %5506, %5481 ], [ %5479, %5373 ]
  %5511 = call float @dx.op.binary.f32(i32 35, float %5509, float %5510)  ; FMax(a,b)
  %5512 = call float @dx.op.binary.f32(i32 35, float %5508, float %5511)  ; FMax(a,b)
  %5513 = fsub fast float 1.000000e+00, %5512
  %5514 = fmul fast float %5512, %5178
  %5515 = fadd fast float %5514, %5178
  %5516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.f32 %5516, 0
  %5518 = extractvalue %dx.types.CBufRet.f32 %5516, 1
  %5519 = extractvalue %dx.types.CBufRet.f32 %5516, 2
  %5520 = extractvalue %dx.types.CBufRet.f32 %5516, 3
  %5521 = fmul fast float %5515, %5517
  %5522 = fadd fast float %5521, %5518
  %5523 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5524 = fmul fast float %5519, %5515
  %5525 = fadd fast float %5524, %5520
  %5526 = call float @dx.op.unary.f32(i32 7, float %5525)  ; Saturate(value)
  %5527 = fsub fast float 1.000000e+00, %5218
  %5528 = fadd fast float %5527, %5526
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = fcmp fast olt float %5529, 1.000000e+00
  br i1 %5530, label %5531, label %6386

; <label>:5531                                    ; preds = %5507
  %5532 = fcmp fast olt float %5523, 1.000000e+00
  %5533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5533, 0
  %5535 = fcmp fast ogt float %5534, 0.000000e+00
  %5536 = or i1 %5532, %5535
  %5537 = or i1 %5532, %5535
  %5538 = xor i1 %5537, true
  %5539 = zext i1 %5538 to i32
  br i1 %5536, label %5540, label %5783

; <label>:5540                                    ; preds = %5531
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5541, 2
  %5545 = extractvalue %dx.types.CBufRet.f32 %5541, 3
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 1
  %5549 = extractvalue %dx.types.CBufRet.f32 %5546, 2
  %5550 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5555 = extractvalue %dx.types.CBufRet.f32 %5551, 3
  %5556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5557 = extractvalue %dx.types.CBufRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.CBufRet.f32 %5556, 1
  %5559 = extractvalue %dx.types.CBufRet.f32 %5556, 2
  %5560 = extractvalue %dx.types.CBufRet.f32 %5556, 3
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.CBufRet.f32 %5561, 2
  %5565 = extractvalue %dx.types.CBufRet.f32 %5561, 3
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.CBufRet.f32 %5566, 1
  %5569 = extractvalue %dx.types.CBufRet.f32 %5566, 2
  %5570 = extractvalue %dx.types.CBufRet.f32 %5566, 3
  %5571 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5568, float %5569, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5572 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.unary.f32(i32 6, float %5572)  ; FAbs(value)
  %5574 = fmul fast float %5573, 8.000000e+00
  %5575 = fadd fast float %5574, -6.000000e+00
  %5576 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5577 = fmul fast float %5571, 8.000000e+00
  %5578 = fmul fast float %5577, %5534
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = fcmp fast ogt float %5579, 0.000000e+00
  br i1 %5580, label %5581, label %5758, !dx.controlflow.hints !85

; <label>:5581                                    ; preds = %5540
  %5582 = extractvalue %dx.types.CBufRet.f32 %5533, 1
  %5583 = extractvalue %dx.types.CBufRet.f32 %5533, 2
  %5584 = fsub fast float %5582, %5583
  %5585 = fmul fast float %5584, %5178
  %5586 = fadd fast float %5585, %5583
  %5587 = fmul fast float %199, 2.000000e+00
  %5588 = fmul fast float %200, 2.000000e+00
  %5589 = fadd fast float %5587, -1.000000e+00
  %5590 = fadd fast float %5588, -1.000000e+00
  %5591 = fmul fast float %5586, %5589
  %5592 = fmul fast float %5586, %5590
  %5593 = fadd fast float %5591, %85
  %5594 = fadd fast float %5592, %86
  %5595 = fmul fast float %5593, %5181
  %5596 = fmul fast float %5594, %5182
  %5597 = fadd fast float %5178, 0xBFE3333340000000
  %5598 = fmul fast float %5597, 0x4004000020000000
  %5599 = fsub fast float 1.000000e+00, %5598
  %5600 = call float @dx.op.unary.f32(i32 7, float %5599)  ; Saturate(value)
  %5601 = fmul fast float %5600, 3.000000e+00
  %5602 = fadd fast float %5601, %199
  %5603 = call float @dx.op.unary.f32(i32 27, float %5602)  ; Round_ni(value)
  %5604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5595, float %5596, float %5603, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 0
  %5606 = fcmp fast une float %5605, 0xFFF0000000000000
  %5607 = fcmp fast une float %5605, 0x7FF0000000000000
  %5608 = and i1 %5606, %5607
  %5609 = fcmp fast olt float %5605, 0.000000e+00
  %5610 = call float @dx.op.unary.f32(i32 6, float %5605)  ; FAbs(value)
  %5611 = fsub fast float 1.000000e+00, %5610
  %5612 = select i1 %5608, float 1.000000e+00, float 0.000000e+00
  %5613 = fmul fast float %5612, %5579
  %5614 = fcmp fast ogt float %5613, 0.000000e+00
  br i1 %5614, label %5615, label %5758, !dx.controlflow.hints !86

; <label>:5615                                    ; preds = %5581
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5620 = select i1 %5609, float 0.000000e+00, float %5617
  %5621 = select i1 %5609, float 0.000000e+00, float %5618
  %5622 = select i1 %5609, float 0.000000e+00, float %5619
  %5623 = select i1 %5609, float %5542, float %5557
  %5624 = select i1 %5609, float %5547, float %5562
  %5625 = select i1 %5609, float %5552, float %5567
  %5626 = select i1 %5609, float %5543, float %5558
  %5627 = select i1 %5609, float %5548, float %5563
  %5628 = select i1 %5609, float %5553, float %5568
  %5629 = select i1 %5609, float %5544, float %5559
  %5630 = select i1 %5609, float %5549, float %5564
  %5631 = select i1 %5609, float %5554, float %5569
  %5632 = select i1 %5609, float %5545, float %5560
  %5633 = select i1 %5609, float %5550, float %5565
  %5634 = select i1 %5609, float %5555, float %5570
  %5635 = fadd fast float %5620, %144
  %5636 = fadd fast float %5621, %145
  %5637 = fadd fast float %5622, %146
  %5638 = fmul fast float %5635, %5623
  %5639 = call float @dx.op.tertiary.f32(i32 46, float %5636, float %5626, float %5638)  ; FMad(a,b,c)
  %5640 = call float @dx.op.tertiary.f32(i32 46, float %5637, float %5629, float %5639)  ; FMad(a,b,c)
  %5641 = fadd fast float %5640, %5632
  %5642 = fmul fast float %5635, %5624
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5636, float %5627, float %5642)  ; FMad(a,b,c)
  %5644 = call float @dx.op.tertiary.f32(i32 46, float %5637, float %5630, float %5643)  ; FMad(a,b,c)
  %5645 = fadd fast float %5644, %5633
  %5646 = fmul fast float %5635, %5625
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5636, float %5628, float %5646)  ; FMad(a,b,c)
  %5648 = call float @dx.op.tertiary.f32(i32 46, float %5637, float %5631, float %5647)  ; FMad(a,b,c)
  %5649 = fadd fast float %5648, %5634
  %5650 = fdiv fast float 1.000000e+00, %5649
  %5651 = fmul fast float %5650, %5641
  %5652 = fmul fast float %5650, %5645
  %5653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5654 = extractvalue %dx.types.CBufRet.f32 %5653, 0
  %5655 = extractvalue %dx.types.CBufRet.f32 %5653, 1
  %5656 = fmul fast float %5651, %5654
  %5657 = fmul fast float %5652, %5655
  %5658 = extractvalue %dx.types.CBufRet.f32 %5653, 2
  %5659 = extractvalue %dx.types.CBufRet.f32 %5653, 3
  %5660 = fadd fast float %5656, %5658
  %5661 = fadd fast float %5657, %5659
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 3
  %5664 = fmul fast float %5663, %5203
  %5665 = fmul fast float %5663, %5204
  %5666 = fmul fast float %5663, %5205
  %5667 = fadd fast float %5664, %5635
  %5668 = fadd fast float %5665, %5636
  %5669 = fadd fast float %5666, %5637
  %5670 = fmul fast float %5667, %5623
  %5671 = call float @dx.op.tertiary.f32(i32 46, float %5668, float %5626, float %5670)  ; FMad(a,b,c)
  %5672 = call float @dx.op.tertiary.f32(i32 46, float %5669, float %5629, float %5671)  ; FMad(a,b,c)
  %5673 = fadd fast float %5672, %5632
  %5674 = fmul fast float %5667, %5624
  %5675 = call float @dx.op.tertiary.f32(i32 46, float %5668, float %5627, float %5674)  ; FMad(a,b,c)
  %5676 = call float @dx.op.tertiary.f32(i32 46, float %5669, float %5630, float %5675)  ; FMad(a,b,c)
  %5677 = fadd fast float %5676, %5633
  %5678 = fmul fast float %5667, %5625
  %5679 = call float @dx.op.tertiary.f32(i32 46, float %5668, float %5628, float %5678)  ; FMad(a,b,c)
  %5680 = call float @dx.op.tertiary.f32(i32 46, float %5669, float %5631, float %5679)  ; FMad(a,b,c)
  %5681 = fadd fast float %5680, %5634
  %5682 = fdiv fast float 1.000000e+00, %5681
  %5683 = fmul fast float %5682, %5673
  %5684 = fmul fast float %5682, %5677
  %5685 = fmul fast float %5660, 2.000000e+00
  %5686 = fadd fast float %5685, -1.000000e+00
  %5687 = call float @dx.op.unary.f32(i32 6, float %5686)  ; FAbs(value)
  %5688 = fmul fast float %5687, 5.000000e+00
  %5689 = fadd fast float %5688, -4.000000e+00
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5691 = fmul fast float %5690, %5576
  %5692 = fsub fast float %5651, %5683
  %5693 = fmul fast float %5654, %5692
  %5694 = fmul fast float %5691, %5693
  %5695 = fsub fast float %5683, %5651
  %5696 = fmul fast float %5654, %5695
  %5697 = fadd fast float %5696, %5694
  %5698 = fsub fast float %5684, %5652
  %5699 = fmul fast float %5655, %5698
  %5700 = fmul fast float %5697, %5611
  %5701 = fmul fast float %5699, %5611
  %5702 = fadd fast float %5700, %5660
  %5703 = fadd fast float %5701, %5661
  %5704 = fsub fast float %5682, %5650
  %5705 = fmul fast float %5704, %5611
  %5706 = fadd fast float %5705, %5650
  %5707 = fdiv fast float 1.000000e+00, %5706
  %5708 = fadd fast float %5178, -1.000000e+00
  %5709 = fsub fast float %5707, %5649
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 2
  %5712 = fmul fast float %5711, %5707
  %5713 = fdiv fast float 1.600000e+02, %5712
  %5714 = fmul fast float %5708, %5708
  %5715 = fmul fast float %5714, 0xBFB5B17960000000
  %5716 = fmul fast float %5715, %5709
  %5717 = fmul fast float %5716, %5713
  %5718 = call float @dx.op.unary.f32(i32 21, float %5717)  ; Exp(value)
  %5719 = fmul fast float %5718, 0x3FF04B2960000000
  %5720 = fsub fast float 0x3FF04B2960000000, %5719
  %5721 = call float @dx.op.unary.f32(i32 7, float %5720)  ; Saturate(value)
  %5722 = fmul fast float %5721, 4.000000e+00
  %5723 = fadd fast float %199, -5.000000e-01
  %5724 = fadd fast float %200, -5.000000e-01
  %5725 = fmul fast float %5721, 0x3FBEB851E0000000
  %5726 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5727 = fmul fast float %5726, %5723
  %5728 = fmul fast float %5726, %5724
  %5729 = fadd fast float %5702, %5727
  %5730 = fadd fast float %5703, %5728
  %5731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5729, float %5730, float undef, float undef, i32 0, i32 0, i32 undef, float %5722)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5732 = extractvalue %dx.types.ResRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.ResRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.ResRet.f32 %5731, 2
  %5735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.f32 %5735, 2
  %5737 = fmul fast float %5736, %5732
  %5738 = fmul fast float %5736, %5733
  %5739 = fmul fast float %5736, %5734
  %5740 = select i1 %186, float 0.000000e+00, float %5738
  %5741 = select i1 %186, float 0.000000e+00, float %5739
  %5742 = fmul fast float %5729, 2.000000e+00
  %5743 = fmul fast float %5730, 2.000000e+00
  %5744 = fadd fast float %5742, -1.000000e+00
  %5745 = fadd fast float %5743, -1.000000e+00
  %5746 = fmul fast float %5744, %5744
  %5747 = fsub fast float 1.000000e+00, %5746
  %5748 = call float @dx.op.unary.f32(i32 7, float %5747)  ; Saturate(value)
  %5749 = fsub fast float 1.000000e+00, %5748
  %5750 = fmul fast float %5749, %5576
  %5751 = fadd fast float %5750, %5748
  %5752 = fmul fast float %5745, %5745
  %5753 = fsub fast float 1.000000e+00, %5752
  %5754 = call float @dx.op.unary.f32(i32 7, float %5753)  ; Saturate(value)
  %5755 = fmul fast float %5751, %5754
  %5756 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5757 = fmul fast float %5756, %5613
  br label %5758

; <label>:5758                                    ; preds = %5615, %5581, %5540
  %5759 = phi float [ %5737, %5615 ], [ 0.000000e+00, %5581 ], [ 0.000000e+00, %5540 ]
  %5760 = phi float [ %5740, %5615 ], [ 0.000000e+00, %5581 ], [ 0.000000e+00, %5540 ]
  %5761 = phi float [ %5741, %5615 ], [ 0.000000e+00, %5581 ], [ 0.000000e+00, %5540 ]
  %5762 = phi float [ %5757, %5615 ], [ 0.000000e+00, %5581 ], [ 0.000000e+00, %5540 ]
  %5763 = fcmp fast olt float %5762, 1.000000e+00
  %5764 = or i1 %5763, %5538
  %5765 = zext i1 %5764 to i32
  %5766 = fmul fast float %5762, %5523
  %5767 = fsub fast float %5762, %5766
  %5768 = fsub fast float 1.000000e+00, %5529
  %5769 = fmul fast float %5767, %5768
  %5770 = fadd fast float %5769, %5529
  %5771 = fsub fast float %5770, %5767
  %5772 = call float @dx.op.unary.f32(i32 7, float %5771)  ; Saturate(value)
  %5773 = fmul fast float %5772, %5464
  %5774 = fmul fast float %5772, %5465
  %5775 = fmul fast float %5772, %5466
  %5776 = fsub fast float -0.000000e+00, %5770
  %5777 = fmul fast float %5767, %5759
  %5778 = fmul fast float %5767, %5760
  %5779 = fmul fast float %5767, %5761
  %5780 = fadd fast float %5777, %5773
  %5781 = fadd fast float %5778, %5774
  %5782 = fadd fast float %5779, %5775
  br label %5783

; <label>:5783                                    ; preds = %5758, %5531
  %5784 = phi float [ %5529, %5531 ], [ %5776, %5758 ]
  %5785 = phi float [ %5464, %5531 ], [ %5780, %5758 ]
  %5786 = phi float [ %5465, %5531 ], [ %5781, %5758 ]
  %5787 = phi float [ %5466, %5531 ], [ %5782, %5758 ]
  %5788 = phi i32 [ %5539, %5531 ], [ %5765, %5758 ]
  %5789 = icmp eq i32 %5788, 0
  br i1 %5789, label %6386, label %5790

; <label>:5790                                    ; preds = %5783
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5794 = fmul fast float %5792, %85
  %5795 = fmul fast float %5793, %86
  %5796 = fptoui float %5794 to i32
  %5797 = fptoui float %5795 to i32
  %5798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5799 = extractvalue %dx.types.CBufRet.f32 %5798, 0
  %5800 = extractvalue %dx.types.CBufRet.f32 %5798, 2
  %5801 = extractvalue %dx.types.CBufRet.f32 %5798, 3
  %5802 = fadd fast float %80, -4.000000e+00
  %5803 = call float @dx.op.binary.f32(i32 35, float %5802, float 0.000000e+00)  ; FMax(a,b)
  %5804 = fadd fast float %5803, %5799
  %5805 = fmul fast float %5804, %5800
  %5806 = call float @dx.op.unary.f32(i32 23, float %5805)  ; Log(value)
  %5807 = fmul fast float %5806, %5801
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 2
  %5810 = fmul fast float %5807, %5809
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.i32 %5812, 1
  %5814 = add i32 %5813, -1
  %5815 = uitofp i32 %5813 to float
  %5816 = fmul fast float %5815, %5811
  %5817 = fptoui float %5816 to i32
  %5818 = call i32 @dx.op.binary.i32(i32 40, i32 %5817, i32 %5814)  ; UMin(a,b)
  %5819 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.i32 %5819, 2
  %5821 = extractvalue %dx.types.CBufRet.i32 %5819, 3
  %5822 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5797, i32 %5820, i32 %5796)  ; UMad(a,b,c)
  %5823 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5818, i32 %5821, i32 %5822)  ; UMad(a,b,c)
  %5824 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5825 = fptoui float %5824 to i32
  %5826 = lshr i32 %5825, 5
  %5827 = call i32 @dx.op.binary.i32(i32 40, i32 %5826, i32 8191)  ; UMin(a,b)
  %5828 = fcmp fast ogt float %4977, 0.000000e+00
  %5829 = fcmp fast ogt float %5205, 0.000000e+00
  %5830 = and i1 %5829, %5828
  br i1 %5830, label %5831, label %5860

; <label>:5831                                    ; preds = %5790
  %5832 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5205, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = call float @dx.op.binary.f32(i32 35, float %5832, float -1.000000e+00)  ; FMax(a,b)
  %5834 = call float @dx.op.binary.f32(i32 36, float %5833, float 1.000000e+00)  ; FMin(a,b)
  %5835 = fmul fast float %5834, %5834
  %5836 = fsub fast float 1.000000e+00, %5835
  %5837 = fmul fast float %5836, 0x3FFC6E2300000000
  %5838 = fsub fast float 1.000000e+00, %5837
  %5839 = fcmp fast ogt float %5838, 0.000000e+00
  %5840 = call float @dx.op.unary.f32(i32 24, float %5838)  ; Sqrt(value)
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = call float @dx.op.unary.f32(i32 23, float %5841)  ; Log(value)
  %5843 = fmul fast float %5842, 5.000000e+00
  %5844 = call float @dx.op.unary.f32(i32 21, float %5843)  ; Exp(value)
  %5845 = fmul fast float %5844, 0x3FEF591A60000000
  %5846 = fadd fast float %5845, 0x3F94DCB540000000
  %5847 = select i1 %5839, float %5846, float 1.000000e+00
  %5848 = fcmp fast oge float %5847, 1.000000e+00
  %5849 = fmul fast float %5832, 2.000000e+00
  %5850 = fadd fast float %5849, %5205
  %5851 = select i1 %5848, float %5850, float %5205
  %5852 = fsub fast float %5851, %5205
  %5853 = fmul fast float %5852, %4977
  %5854 = fadd fast float %5853, %5205
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5854, float %5203, float %5204, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.unary.f32(i32 25, float %5855)  ; Rsqrt(value)
  %5857 = fmul fast float %5856, %5203
  %5858 = fmul fast float %5856, %5204
  %5859 = fmul fast float %5854, %5856
  br label %5860

; <label>:5860                                    ; preds = %5831, %5790
  %5861 = phi float [ %5857, %5831 ], [ %5203, %5790 ]
  %5862 = phi float [ %5858, %5831 ], [ %5204, %5790 ]
  %5863 = phi float [ %5859, %5831 ], [ %5205, %5790 ]
  %5864 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5865 = extractvalue %dx.types.CBufRet.i32 %5864, 2
  %5866 = add nsw i32 %5865, -1
  %5867 = call i32 @dx.op.binary.i32(i32 37, i32 %5866, i32 0)  ; IMax(a,b)
  %5868 = shl i32 %5827, 2
  %5869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5868, i32 undef)  ; BufferLoad(srv,index,wot)
  %5870 = extractvalue %dx.types.ResRet.i32 %5869, 0
  %5871 = lshr i32 %5870, 16
  %5872 = and i32 %5870, 65535
  %5873 = lshr i32 %5870, 21
  %5874 = lshr i32 %5872, 5
  %5875 = call i32 @dx.op.binary.i32(i32 40, i32 %5874, i32 %5867)  ; UMin(a,b)
  %5876 = icmp ugt i32 %5873, %5875
  br i1 %5876, label %6258, label %5877

; <label>:5877                                    ; preds = %5860
  br label %5878

; <label>:5878                                    ; preds = %6247, %5877
  %5879 = phi float [ %6248, %6247 ], [ 0.000000e+00, %5877 ]
  %5880 = phi float [ %6249, %6247 ], [ 0.000000e+00, %5877 ]
  %5881 = phi float [ %6250, %6247 ], [ 0.000000e+00, %5877 ]
  %5882 = phi float [ %6251, %6247 ], [ 1.000000e+00, %5877 ]
  %5883 = phi i32 [ %6255, %6247 ], [ %5873, %5877 ]
  %5884 = phi float [ %6252, %6247 ], [ 0.000000e+00, %5877 ]
  %5885 = phi float [ %6253, %6247 ], [ 0.000000e+00, %5877 ]
  %5886 = phi float [ %6254, %6247 ], [ 0.000000e+00, %5877 ]
  %5887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.i32 %5887, 2
  %5889 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5823, i32 %5888, i32 %5883)  ; UMad(a,b,c)
  %5890 = shl i32 %5889, 2
  %5891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5890, i32 undef)  ; BufferLoad(srv,index,wot)
  %5892 = extractvalue %dx.types.ResRet.i32 %5891, 0
  %5893 = shl i32 %5883, 5
  %5894 = sub nsw i32 %5871, %5893
  %5895 = call i32 @dx.op.binary.i32(i32 37, i32 %5894, i32 0)  ; IMax(a,b)
  %5896 = call i32 @dx.op.binary.i32(i32 38, i32 %5895, i32 31)  ; IMin(a,b)
  %5897 = sub nsw i32 1, %5871
  %5898 = add nsw i32 %5897, %5872
  %5899 = call i32 @dx.op.binary.i32(i32 37, i32 %5898, i32 0)  ; IMax(a,b)
  %5900 = call i32 @dx.op.binary.i32(i32 38, i32 %5899, i32 32)  ; IMin(a,b)
  %5901 = and i32 %5900, 31
  %5902 = shl i32 -1, %5901
  %5903 = xor i32 %5902, -1
  %5904 = and i32 %5896, 31
  %5905 = shl i32 %5903, %5904
  %5906 = icmp eq i32 %5900, 32
  %5907 = select i1 %5906, i32 -1, i32 %5905
  %5908 = and i32 %5907, %5892
  %5909 = icmp eq i32 %5908, 0
  br i1 %5909, label %6247, label %5910

; <label>:5910                                    ; preds = %5878
  br label %5911

; <label>:5911                                    ; preds = %6021, %5910
  %5912 = phi float [ %6022, %6021 ], [ %5879, %5910 ]
  %5913 = phi float [ %6023, %6021 ], [ %5880, %5910 ]
  %5914 = phi float [ %6024, %6021 ], [ %5881, %5910 ]
  %5915 = phi float [ %6025, %6021 ], [ %5882, %5910 ]
  %5916 = phi i32 [ %5924, %6021 ], [ %5908, %5910 ]
  %5917 = phi float [ %6026, %6021 ], [ %5884, %5910 ]
  %5918 = phi float [ %6027, %6021 ], [ %5885, %5910 ]
  %5919 = phi float [ %6028, %6021 ], [ %5886, %5910 ]
  %5920 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5916)  ; FirstbitLo(value)
  %5921 = add i32 %5920, %5893
  %5922 = and i32 %5920, 31
  %5923 = shl i32 1, %5922
  %5924 = xor i32 %5923, %5916
  %5925 = mul i32 %5921, 72
  %5926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5925, i32 undef)  ; BufferLoad(srv,index,wot)
  %5927 = extractvalue %dx.types.ResRet.f32 %5926, 0
  %5928 = extractvalue %dx.types.ResRet.f32 %5926, 1
  %5929 = extractvalue %dx.types.ResRet.f32 %5926, 2
  %5930 = add i32 %5925, 12
  %5931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5930, i32 undef)  ; BufferLoad(srv,index,wot)
  %5932 = extractvalue %dx.types.ResRet.i32 %5931, 0
  %5933 = add i32 %5925, 16
  %5934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5933, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.ResRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.ResRet.f32 %5934, 2
  %5938 = add i32 %5925, 28
  %5939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5938, i32 undef)  ; BufferLoad(srv,index,wot)
  %5940 = extractvalue %dx.types.ResRet.f32 %5939, 0
  %5941 = add i32 %5925, 32
  %5942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5941, i32 undef)  ; BufferLoad(srv,index,wot)
  %5943 = extractvalue %dx.types.ResRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.ResRet.f32 %5942, 1
  %5945 = extractvalue %dx.types.ResRet.f32 %5942, 2
  %5946 = extractvalue %dx.types.ResRet.f32 %5942, 3
  %5947 = add i32 %5925, 48
  %5948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5947, i32 undef)  ; BufferLoad(srv,index,wot)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 0
  %5950 = extractvalue %dx.types.ResRet.f32 %5948, 1
  %5951 = add i32 %5925, 56
  %5952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5951, i32 undef)  ; BufferLoad(srv,index,wot)
  %5953 = extractvalue %dx.types.ResRet.f32 %5952, 0
  %5954 = extractvalue %dx.types.ResRet.f32 %5952, 1
  %5955 = add i32 %5925, 64
  %5956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5955, i32 undef)  ; BufferLoad(srv,index,wot)
  %5957 = extractvalue %dx.types.ResRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.ResRet.f32 %5956, 1
  %5959 = mul i32 %5921, 60
  %5960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5959, i32 undef)  ; BufferLoad(srv,index,wot)
  %5961 = extractvalue %dx.types.ResRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.ResRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.ResRet.f32 %5960, 2
  %5964 = add i32 %5959, 12
  %5965 = add i32 %5959, 48
  %5966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5965, i32 undef)  ; BufferLoad(srv,index,wot)
  %5967 = extractvalue %dx.types.ResRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.ResRet.f32 %5966, 1
  %5969 = extractvalue %dx.types.ResRet.f32 %5966, 2
  %5970 = and i32 %5932, 32767
  %5971 = bitcast float %5927 to i32
  %5972 = icmp eq i32 %5971, -1
  %5973 = bitcast float %5928 to i32
  %5974 = and i32 %5932, 32768
  %5975 = icmp ne i32 %5974, 0
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 0
  %5978 = extractvalue %dx.types.CBufRet.f32 %5976, 1
  %5979 = extractvalue %dx.types.CBufRet.f32 %5976, 2
  %5980 = fsub fast float %5961, %5977
  %5981 = fsub fast float %5962, %5978
  %5982 = fsub fast float %5963, %5979
  %5983 = fsub fast float %144, %5980
  %5984 = fsub fast float %145, %5981
  %5985 = fsub fast float %146, %5982
  %5986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5964, i32 undef)  ; BufferLoad(srv,index,wot)
  %5987 = extractvalue %dx.types.ResRet.f32 %5986, 0
  %5988 = extractvalue %dx.types.ResRet.f32 %5986, 1
  %5989 = extractvalue %dx.types.ResRet.f32 %5986, 2
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float %5987, float %5988, float %5989)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = add i32 %5959, 24
  %5992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5991, i32 undef)  ; BufferLoad(srv,index,wot)
  %5993 = extractvalue %dx.types.ResRet.f32 %5992, 0
  %5994 = extractvalue %dx.types.ResRet.f32 %5992, 1
  %5995 = extractvalue %dx.types.ResRet.f32 %5992, 2
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float %5993, float %5994, float %5995)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = add i32 %5959, 36
  %5998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5997, i32 undef)  ; BufferLoad(srv,index,wot)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.ResRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.ResRet.f32 %5998, 2
  %6002 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = call float @dx.op.unary.f32(i32 6, float %5990)  ; FAbs(value)
  %6004 = call float @dx.op.unary.f32(i32 6, float %5996)  ; FAbs(value)
  %6005 = call float @dx.op.unary.f32(i32 6, float %6002)  ; FAbs(value)
  %6006 = fsub fast float %5967, %6003
  %6007 = fsub fast float %5968, %6004
  %6008 = fsub fast float %5969, %6005
  %6009 = fmul fast float %6006, %5935
  %6010 = fmul fast float %6007, %5936
  %6011 = fmul fast float %6008, %5937
  %6012 = call float @dx.op.binary.f32(i32 36, float %6010, float %6011)  ; FMin(a,b)
  %6013 = call float @dx.op.binary.f32(i32 36, float %6009, float %6012)  ; FMin(a,b)
  %6014 = call float @dx.op.unary.f32(i32 7, float %6013)  ; Saturate(value)
  %6015 = call float @dx.op.binary.f32(i32 36, float %5915, float %6014)  ; FMin(a,b)
  %6016 = uitofp i1 %5975 to float
  %6017 = fadd fast float %4977, 1.000000e+00
  %6018 = fsub fast float %6017, %6016
  %6019 = fmul fast float %6015, %6018
  %6020 = fcmp fast ogt float %6019, 0.000000e+00
  br i1 %6020, label %6030, label %6021

; <label>:6021                                    ; preds = %6172, %5911
  %6022 = phi float [ %6236, %6172 ], [ %5912, %5911 ]
  %6023 = phi float [ %6237, %6172 ], [ %5913, %5911 ]
  %6024 = phi float [ %6238, %6172 ], [ %5914, %5911 ]
  %6025 = phi float [ %6245, %6172 ], [ %5915, %5911 ]
  %6026 = phi float [ %6242, %6172 ], [ %5917, %5911 ]
  %6027 = phi float [ %6243, %6172 ], [ %5918, %5911 ]
  %6028 = phi float [ %6244, %6172 ], [ %5919, %5911 ]
  %6029 = icmp eq i32 %5916, %5923
  br i1 %6029, label %6246, label %5911

; <label>:6030                                    ; preds = %5911
  br i1 %5972, label %6088, label %6031

; <label>:6031                                    ; preds = %6030
  %6032 = fsub fast float -0.000000e+00, %5987
  %6033 = fsub fast float -0.000000e+00, %5988
  %6034 = fsub fast float -0.000000e+00, %5989
  %6035 = call float @dx.op.dot3.f32(i32 55, float %5861, float %5862, float %5863, float %6032, float %6033, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6036 = fsub fast float -0.000000e+00, %6035
  %6037 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float %6032, float %6033, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6038 = fadd fast float %6037, %5950
  %6039 = fadd fast float %5949, %6037
  %6040 = fsub fast float -0.000000e+00, %6039
  %6041 = fcmp ogt float %6035, -0.000000e+00
  %6042 = select i1 %6041, float %6040, float %6038
  %6043 = call float @dx.op.unary.f32(i32 6, float %6036)  ; FAbs(value)
  %6044 = fdiv fast float 1.000000e+00, %6043
  %6045 = fmul fast float %6042, %6044
  %6046 = call float @dx.op.binary.f32(i32 35, float %6045, float 0.000000e+00)  ; FMax(a,b)
  %6047 = fsub fast float -0.000000e+00, %5993
  %6048 = fsub fast float -0.000000e+00, %5994
  %6049 = fsub fast float -0.000000e+00, %5995
  %6050 = call float @dx.op.dot3.f32(i32 55, float %5861, float %5862, float %5863, float %6047, float %6048, float %6049)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = fsub fast float -0.000000e+00, %6050
  %6052 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float %6047, float %6048, float %6049)  ; Dot3(ax,ay,az,bx,by,bz)
  %6053 = fadd fast float %6052, %5954
  %6054 = fadd fast float %5953, %6052
  %6055 = fsub fast float -0.000000e+00, %6054
  %6056 = fcmp ogt float %6050, -0.000000e+00
  %6057 = select i1 %6056, float %6055, float %6053
  %6058 = call float @dx.op.unary.f32(i32 6, float %6051)  ; FAbs(value)
  %6059 = fdiv fast float 1.000000e+00, %6058
  %6060 = fmul fast float %6057, %6059
  %6061 = call float @dx.op.binary.f32(i32 35, float %6060, float 0.000000e+00)  ; FMax(a,b)
  %6062 = fsub fast float -0.000000e+00, %5999
  %6063 = fsub fast float -0.000000e+00, %6000
  %6064 = fsub fast float -0.000000e+00, %6001
  %6065 = call float @dx.op.dot3.f32(i32 55, float %5861, float %5862, float %5863, float %6062, float %6063, float %6064)  ; Dot3(ax,ay,az,bx,by,bz)
  %6066 = fsub fast float -0.000000e+00, %6065
  %6067 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float %6062, float %6063, float %6064)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = fadd fast float %6067, %5958
  %6069 = fadd fast float %5957, %6067
  %6070 = fsub fast float -0.000000e+00, %6069
  %6071 = fcmp ogt float %6065, -0.000000e+00
  %6072 = select i1 %6071, float %6070, float %6068
  %6073 = call float @dx.op.unary.f32(i32 6, float %6066)  ; FAbs(value)
  %6074 = fdiv fast float 1.000000e+00, %6073
  %6075 = fmul fast float %6072, %6074
  %6076 = call float @dx.op.binary.f32(i32 35, float %6075, float 0.000000e+00)  ; FMax(a,b)
  %6077 = call float @dx.op.binary.f32(i32 36, float %6061, float %6076)  ; FMin(a,b)
  %6078 = call float @dx.op.binary.f32(i32 36, float %6046, float %6077)  ; FMin(a,b)
  %6079 = fmul fast float %6078, %5861
  %6080 = fmul fast float %6078, %5862
  %6081 = fmul fast float %6078, %5863
  %6082 = fadd fast float %6079, %144
  %6083 = fadd fast float %6080, %145
  %6084 = fadd fast float %6081, %146
  %6085 = fsub fast float %6082, %5927
  %6086 = fsub fast float %6083, %5928
  %6087 = fsub fast float %6084, %5929
  br label %6095

; <label>:6088                                    ; preds = %6030
  %6089 = fmul fast float %5861, 8.096000e+03
  %6090 = fmul fast float %5862, 8.096000e+03
  %6091 = fmul fast float %5863, 8.096000e+03
  %6092 = fadd fast float %6089, %144
  %6093 = fadd fast float %6090, %145
  %6094 = fadd fast float %6091, %146
  br label %6095

; <label>:6095                                    ; preds = %6088, %6031
  %6096 = phi float [ %5861, %6088 ], [ %6085, %6031 ]
  %6097 = phi float [ %5862, %6088 ], [ %6086, %6031 ]
  %6098 = phi float [ %5863, %6088 ], [ %6087, %6031 ]
  %6099 = phi float [ %6092, %6088 ], [ %6082, %6031 ]
  %6100 = phi float [ %6093, %6088 ], [ %6083, %6031 ]
  %6101 = phi float [ %6094, %6088 ], [ %6084, %6031 ]
  %6102 = fcmp fast olt float %5946, 1.000000e+00
  br i1 %6102, label %6103, label %6134, !dx.controlflow.hints !87

; <label>:6103                                    ; preds = %6095
  %6104 = fmul fast float %6098, %5944
  %6105 = fmul fast float %6097, %5945
  %6106 = fsub fast float %6104, %6105
  %6107 = fmul fast float %6096, %5945
  %6108 = fmul fast float %6098, %5943
  %6109 = fsub fast float %6107, %6108
  %6110 = fmul fast float %6097, %5943
  %6111 = fmul fast float %6096, %5944
  %6112 = fsub fast float %6110, %6111
  %6113 = fmul fast float %6106, 2.000000e+00
  %6114 = fmul fast float %6109, 2.000000e+00
  %6115 = fmul fast float %6112, 2.000000e+00
  %6116 = fmul fast float %6113, %5946
  %6117 = fmul fast float %6114, %5946
  %6118 = fmul fast float %6115, %5946
  %6119 = fmul fast float %6115, %5944
  %6120 = fmul fast float %6114, %5945
  %6121 = fmul fast float %6113, %5945
  %6122 = fmul fast float %6115, %5943
  %6123 = fmul fast float %6114, %5943
  %6124 = fmul fast float %6113, %5944
  %6125 = fadd fast float %6119, %6096
  %6126 = fadd fast float %6125, %6116
  %6127 = fsub fast float %6126, %6120
  %6128 = fsub fast float %6097, %6122
  %6129 = fadd fast float %6128, %6117
  %6130 = fadd fast float %6129, %6121
  %6131 = fadd fast float %6118, %6098
  %6132 = fsub fast float %6131, %6124
  %6133 = fadd fast float %6132, %6123
  br label %6134

; <label>:6134                                    ; preds = %6103, %6095
  %6135 = phi float [ %6127, %6103 ], [ %6096, %6095 ]
  %6136 = phi float [ %6130, %6103 ], [ %6097, %6095 ]
  %6137 = phi float [ %6133, %6103 ], [ %6098, %6095 ]
  br i1 %5972, label %6169, label %6138

; <label>:6138                                    ; preds = %6134
  %6139 = fmul fast float %5178, 0x400187C840000000
  %6140 = fadd fast float %6139, 0xC00EFC2120000000
  %6141 = fmul fast float %6140, %5178
  %6142 = fadd fast float %6141, 0x3FE5D16340000000
  %6143 = fmul fast float %6142, %5178
  %6144 = fadd fast float %6143, 1.000000e+00
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fsub fast float %6099, %144
  %6147 = fsub fast float %6100, %145
  %6148 = fsub fast float %6101, %146
  %6149 = fsub fast float %6099, %5927
  %6150 = fsub fast float %6100, %5928
  %6151 = fsub fast float %6101, %5929
  %6152 = call float @dx.op.dot3.f32(i32 55, float %6146, float %6147, float %6148, float %6146, float %6147, float %6148)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = call float @dx.op.dot3.f32(i32 55, float %6149, float %6150, float %6151, float %6149, float %6150, float %6151)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = fadd fast float %6153, 0x3EE4F8B580000000
  %6155 = fdiv fast float %6152, %6154
  %6156 = bitcast float %6155 to i32
  %6157 = ashr i32 %6156, 1
  %6158 = add nsw i32 %6157, 532487669
  %6159 = bitcast i32 %6158 to float
  %6160 = fmul fast float %6159, %6145
  %6161 = call float @dx.op.unary.f32(i32 7, float %6160)  ; Saturate(value)
  %6162 = fmul fast float %6161, 0x4009981AE0000000
  %6163 = fsub fast float 0x40111BBD80000000, %6162
  %6164 = fmul fast float %6163, %6161
  %6165 = fadd fast float %6164, 0xC0009F6020000000
  %6166 = fmul fast float %6165, %6161
  %6167 = fadd fast float %6166, 1.000000e+00
  %6168 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  br label %6172

; <label>:6169                                    ; preds = %6134
  %6170 = icmp ne i32 %5973, -1
  %6171 = zext i1 %6170 to i32
  br label %6172

; <label>:6172                                    ; preds = %6169, %6138
  %6173 = phi float [ %5178, %6169 ], [ %6168, %6138 ]
  %6174 = phi i32 [ %6171, %6169 ], [ 0, %6138 ]
  %6175 = fmul float %6173, 5.000000e+00
  %6176 = fsub float 5.000000e+00, %6175
  %6177 = icmp ne i32 %6174, 0
  %6178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6179 = extractvalue %dx.types.CBufRet.f32 %6178, 3
  %6180 = fadd fast float %6179, %6176
  %6181 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6180)  ; FMax(a,b)
  %6182 = call float @dx.op.unary.f32(i32 6, float %6135)  ; FAbs(value)
  %6183 = call float @dx.op.unary.f32(i32 6, float %6136)  ; FAbs(value)
  %6184 = fadd fast float %6183, %6182
  %6185 = call float @dx.op.unary.f32(i32 6, float %6137)  ; FAbs(value)
  %6186 = fadd fast float %6184, %6185
  %6187 = fcmp fast oeq float %6186, 0.000000e+00
  %6188 = fdiv fast float 1.000000e+00, %6186
  %6189 = select i1 %6187, float 1.000000e+00, float %6188
  %6190 = fmul fast float %6189, %6135
  %6191 = fmul fast float %6189, %6136
  %6192 = call float @dx.op.unary.f32(i32 6, float %6191)  ; FAbs(value)
  %6193 = call float @dx.op.unary.f32(i32 6, float %6190)  ; FAbs(value)
  %6194 = fsub fast float 1.000000e+00, %6192
  %6195 = fsub fast float 1.000000e+00, %6193
  %6196 = fcmp fast oge float %6190, 0.000000e+00
  %6197 = fcmp fast oge float %6191, 0.000000e+00
  %6198 = select i1 %6196, float 1.000000e+00, float -1.000000e+00
  %6199 = select i1 %6197, float 1.000000e+00, float -1.000000e+00
  %6200 = fcmp fast ole float %6137, 0.000000e+00
  %6201 = fmul fast float %6198, %6194
  %6202 = fmul fast float %6199, %6195
  %6203 = select i1 %6200, float %6201, float %6190
  %6204 = select i1 %6200, float %6202, float %6191
  %6205 = fmul fast float %6203, 5.000000e-01
  %6206 = fmul fast float %6204, 5.000000e-01
  %6207 = fadd fast float %6205, 5.000000e-01
  %6208 = fadd fast float %6206, 5.000000e-01
  %6209 = uitofp i32 %5970 to float
  %6210 = call float @dx.op.binary.f32(i32 36, float %6181, float 3.000000e+00)  ; FMin(a,b)
  %6211 = fadd fast float %6210, 2.000000e+00
  %6212 = call float @dx.op.unary.f32(i32 21, float %6211)  ; Exp(value)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6178, 1
  %6214 = fmul fast float %6213, %6212
  %6215 = fmul fast float %6214, 2.000000e+00
  %6216 = fsub fast float 1.000000e+00, %6215
  %6217 = fmul fast float %6207, %6216
  %6218 = fmul fast float %6208, %6216
  %6219 = fadd fast float %6217, %6214
  %6220 = fadd fast float %6218, %6214
  %6221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %6219, float %6220, float %6209, float undef, i32 0, i32 0, i32 undef, float %6181)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6222 = extractvalue %dx.types.ResRet.f32 %6221, 0
  %6223 = extractvalue %dx.types.ResRet.f32 %6221, 1
  %6224 = extractvalue %dx.types.ResRet.f32 %6221, 2
  %6225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6226 = extractvalue %dx.types.CBufRet.f32 %6225, 3
  %6227 = fmul fast float %6226, %5940
  %6228 = call float @dx.op.binary.f32(i32 36, float %5224, float %6227)  ; FMin(a,b)
  %6229 = select i1 %6177, float %6228, float %6227
  %6230 = fmul fast float %6222, %6019
  %6231 = fmul fast float %6230, %6229
  %6232 = fmul fast float %6223, %6019
  %6233 = fmul fast float %6232, %6229
  %6234 = fmul fast float %6224, %6019
  %6235 = fmul fast float %6234, %6229
  %6236 = fadd fast float %6231, %5912
  %6237 = fadd fast float %6233, %5913
  %6238 = fadd fast float %6235, %5914
  %6239 = fmul fast float %6099, %6019
  %6240 = fmul fast float %6100, %6019
  %6241 = fmul fast float %6101, %6019
  %6242 = fadd fast float %6239, %5917
  %6243 = fadd fast float %6240, %5918
  %6244 = fadd fast float %6241, %5919
  %6245 = fsub fast float %5915, %6019
  br label %6021

; <label>:6246                                    ; preds = %6021
  br label %6247

; <label>:6247                                    ; preds = %6246, %5878
  %6248 = phi float [ %5879, %5878 ], [ %6022, %6246 ]
  %6249 = phi float [ %5880, %5878 ], [ %6023, %6246 ]
  %6250 = phi float [ %5881, %5878 ], [ %6024, %6246 ]
  %6251 = phi float [ %5882, %5878 ], [ %6025, %6246 ]
  %6252 = phi float [ %5884, %5878 ], [ %6026, %6246 ]
  %6253 = phi float [ %5885, %5878 ], [ %6027, %6246 ]
  %6254 = phi float [ %5886, %5878 ], [ %6028, %6246 ]
  %6255 = add i32 %5883, 1
  %6256 = icmp ugt i32 %6255, %5875
  br i1 %6256, label %6257, label %5878, !llvm.loop !88

; <label>:6257                                    ; preds = %6247
  br label %6258

; <label>:6258                                    ; preds = %6257, %5860
  %6259 = phi float [ 0.000000e+00, %5860 ], [ %6248, %6257 ]
  %6260 = phi float [ 0.000000e+00, %5860 ], [ %6249, %6257 ]
  %6261 = phi float [ 0.000000e+00, %5860 ], [ %6250, %6257 ]
  %6262 = phi float [ 0.000000e+00, %5860 ], [ %6252, %6257 ]
  %6263 = phi float [ 0.000000e+00, %5860 ], [ %6253, %6257 ]
  %6264 = phi float [ 0.000000e+00, %5860 ], [ %6254, %6257 ]
  %6265 = call float @dx.op.dot3.f32(i32 55, float %6259, float %6260, float %6261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6266 = select i1 %186, float 0.000000e+00, float %6259
  %6267 = select i1 %186, float %6265, float %6260
  %6268 = select i1 %186, float 0.000000e+00, float %6261
  %6269 = fcmp fast olt float %5784, 0.000000e+00
  %6270 = call float @dx.op.unary.f32(i32 6, float %5784)  ; FAbs(value)
  %6271 = fmul fast float %6270, %5785
  %6272 = fmul fast float %6270, %5786
  %6273 = fmul fast float %6270, %5787
  %6274 = select i1 %6269, float %5785, float %6271
  %6275 = select i1 %6269, float %5786, float %6272
  %6276 = select i1 %6269, float %5787, float %6273
  %6277 = fsub fast float 1.000000e+00, %6270
  %6278 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6279 = fmul fast float %6278, %6266
  %6280 = fmul fast float %6278, %6267
  %6281 = fmul fast float %6278, %6268
  %6282 = fadd fast float %6274, %6279
  %6283 = fadd fast float %6275, %6280
  %6284 = fadd fast float %6276, %6281
  %6285 = fcmp fast une float %5534, 0.000000e+00
  br i1 %6285, label %6386, label %6286

; <label>:6286                                    ; preds = %6258
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 0
  %6289 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6290 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6291 = extractvalue %dx.types.CBufRet.f32 %6287, 3
  %6292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %6293 = extractvalue %dx.types.CBufRet.f32 %6292, 0
  %6294 = extractvalue %dx.types.CBufRet.f32 %6292, 1
  %6295 = extractvalue %dx.types.CBufRet.f32 %6292, 2
  %6296 = extractvalue %dx.types.CBufRet.f32 %6292, 3
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.CBufRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.CBufRet.f32 %6297, 2
  %6301 = extractvalue %dx.types.CBufRet.f32 %6297, 3
  %6302 = call float @dx.op.dot3.f32(i32 55, float %6298, float %6299, float %6300, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %6303 = call float @dx.op.dot3.f32(i32 55, float %6262, float %6263, float %6264, float %6298, float %6299, float %6300)  ; Dot3(ax,ay,az,bx,by,bz)
  %6304 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %6298, float %6299, float %6300)  ; Dot3(ax,ay,az,bx,by,bz)
  %6305 = fadd fast float %5178, -1.000000e+00
  %6306 = fsub fast float %6303, %6304
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6309 = fmul fast float %6308, %6303
  %6310 = fdiv fast float 1.600000e+02, %6309
  %6311 = fmul fast float %6305, %6305
  %6312 = fmul fast float %6311, 0xBFB5B17960000000
  %6313 = fmul fast float %6312, %6306
  %6314 = fmul fast float %6313, %6310
  %6315 = call float @dx.op.unary.f32(i32 21, float %6314)  ; Exp(value)
  %6316 = fmul fast float %6315, 0x3FF04B2960000000
  %6317 = fsub fast float 0x3FF04B2960000000, %6316
  %6318 = call float @dx.op.unary.f32(i32 7, float %6317)  ; Saturate(value)
  %6319 = fmul fast float %6318, 4.000000e+00
  %6320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.f32 %6320, 0
  %6322 = extractvalue %dx.types.CBufRet.f32 %6320, 1
  %6323 = extractvalue %dx.types.CBufRet.f32 %6320, 2
  %6324 = fadd fast float %6321, %6262
  %6325 = fadd fast float %6322, %6263
  %6326 = fadd fast float %6323, %6264
  %6327 = fmul fast float %6324, %6288
  %6328 = call float @dx.op.tertiary.f32(i32 46, float %6325, float %6289, float %6327)  ; FMad(a,b,c)
  %6329 = call float @dx.op.tertiary.f32(i32 46, float %6326, float %6290, float %6328)  ; FMad(a,b,c)
  %6330 = fadd fast float %6329, %6291
  %6331 = fmul fast float %6324, %6293
  %6332 = call float @dx.op.tertiary.f32(i32 46, float %6325, float %6294, float %6331)  ; FMad(a,b,c)
  %6333 = call float @dx.op.tertiary.f32(i32 46, float %6326, float %6295, float %6332)  ; FMad(a,b,c)
  %6334 = fadd fast float %6333, %6296
  %6335 = fmul fast float %6324, %6298
  %6336 = call float @dx.op.tertiary.f32(i32 46, float %6325, float %6299, float %6335)  ; FMad(a,b,c)
  %6337 = call float @dx.op.tertiary.f32(i32 46, float %6326, float %6300, float %6336)  ; FMad(a,b,c)
  %6338 = fadd fast float %6337, %6301
  %6339 = fdiv fast float %6330, %6338
  %6340 = fdiv fast float %6334, %6338
  %6341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6342 = extractvalue %dx.types.CBufRet.f32 %6341, 0
  %6343 = extractvalue %dx.types.CBufRet.f32 %6341, 1
  %6344 = fmul fast float %6342, %6339
  %6345 = fmul fast float %6343, %6340
  %6346 = extractvalue %dx.types.CBufRet.f32 %6341, 2
  %6347 = extractvalue %dx.types.CBufRet.f32 %6341, 3
  %6348 = fadd fast float %6344, %6346
  %6349 = fadd fast float %6345, %6347
  %6350 = fmul fast float %6302, 8.000000e+00
  %6351 = call float @dx.op.unary.f32(i32 7, float %6350)  ; Saturate(value)
  %6352 = fmul fast float %6348, 2.000000e+00
  %6353 = fmul fast float %6349, 2.000000e+00
  %6354 = fadd fast float %6352, -1.000000e+00
  %6355 = fadd fast float %6353, -1.000000e+00
  %6356 = fmul fast float %6354, %6354
  %6357 = fsub fast float 1.000000e+00, %6356
  %6358 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  %6359 = fmul fast float %6355, %6355
  %6360 = fsub fast float 1.000000e+00, %6359
  %6361 = call float @dx.op.unary.f32(i32 7, float %6360)  ; Saturate(value)
  %6362 = fmul fast float %5534, %6358
  %6363 = fmul fast float %6362, %6361
  %6364 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6365 = fmul fast float %6364, %6351
  %6366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %6348, float %6349, float undef, float undef, i32 0, i32 0, i32 undef, float %6319)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6367 = extractvalue %dx.types.ResRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.ResRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.ResRet.f32 %6366, 2
  %6370 = select i1 %186, float 0.000000e+00, float %6368
  %6371 = select i1 %186, float 0.000000e+00, float %6369
  %6372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6373 = extractvalue %dx.types.CBufRet.f32 %6372, 2
  %6374 = fmul fast float %6373, %6367
  %6375 = fmul fast float %6370, %6373
  %6376 = fmul fast float %6371, %6373
  %6377 = fsub fast float %6374, %6266
  %6378 = fsub fast float %6375, %6267
  %6379 = fsub fast float %6376, %6268
  %6380 = fmul fast float %6377, %6365
  %6381 = fmul fast float %6378, %6365
  %6382 = fmul fast float %6379, %6365
  %6383 = fadd fast float %6380, %6266
  %6384 = fadd fast float %6381, %6267
  %6385 = fadd fast float %6382, %6268
  br label %6386

; <label>:6386                                    ; preds = %6286, %6258, %5783, %5507
  %6387 = phi float [ %5785, %5783 ], [ %6282, %6258 ], [ %5464, %5507 ], [ %6383, %6286 ]
  %6388 = phi float [ %5786, %5783 ], [ %6283, %6258 ], [ %5465, %5507 ], [ %6384, %6286 ]
  %6389 = phi float [ %5787, %5783 ], [ %6284, %6258 ], [ %5466, %5507 ], [ %6385, %6286 ]
  %6390 = call float @dx.op.dot3.f32(i32 55, float %5172, float %5173, float %5174, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6391 = fcmp fast ogt float %6390, 0x3E7FF19E20000000
  %6392 = fdiv fast float 1.000000e+00, %6390
  %6393 = select i1 %6391, float %6392, float 0.000000e+00
  %6394 = fmul fast float %6393, %5172
  %6395 = fmul fast float %6393, %5173
  %6396 = fmul fast float %6393, %5174
  %6397 = fadd fast float %6394, -1.000000e+00
  %6398 = fadd fast float %6395, -1.000000e+00
  %6399 = fadd fast float %6396, -1.000000e+00
  %6400 = fmul fast float %6397, 5.000000e-01
  %6401 = fmul fast float %6398, 5.000000e-01
  %6402 = fmul fast float %6399, 5.000000e-01
  %6403 = fadd fast float %6400, 1.000000e+00
  %6404 = fadd fast float %6401, 1.000000e+00
  %6405 = fadd fast float %6402, 1.000000e+00
  %6406 = fmul fast float %6387, %5508
  %6407 = fmul fast float %6388, %5509
  %6408 = fmul fast float %6389, %5510
  %6409 = fsub fast float 1.000000e+00, %5197
  %6410 = bitcast float %6409 to i32
  %6411 = sitofp i32 %6410 to float
  %6412 = fmul fast float %6411, 5.000000e+00
  %6413 = fadd fast float %6412, 0xC1EFBF8940000000
  %6414 = fptosi float %6413 to i32
  %6415 = bitcast i32 %6414 to float
  %6416 = fmul fast float %6415, %4502
  %6417 = fmul fast float %5456, %6416
  %6418 = fmul fast float %6417, %5513
  %6419 = fmul fast float %6418, %6403
  %6420 = fmul fast float %5457, %6416
  %6421 = fmul fast float %6420, %5513
  %6422 = fmul fast float %6421, %6404
  %6423 = fmul fast float %5458, %6416
  %6424 = fmul fast float %6423, %5513
  %6425 = fmul fast float %6424, %6405
  %6426 = fadd fast float %6406, %4494
  %6427 = fadd fast float %6426, %6419
  %6428 = fmul fast float %6427, %4498
  %6429 = fadd fast float %6407, %4495
  %6430 = fadd fast float %6429, %6422
  %6431 = fmul fast float %6430, %4498
  %6432 = fadd fast float %6408, %4496
  %6433 = fadd fast float %6432, %6425
  %6434 = fmul fast float %6433, %4498
  %6435 = fmul fast float %5513, %5458
  %6436 = fmul fast float %5513, %5457
  %6437 = fmul fast float %5513, %5456
  %6438 = fmul fast float %5513, %4593
  %6439 = fadd fast float %6438, -1.000000e+00
  %6440 = fmul fast float %6439, %4498
  %6441 = fadd fast float %6440, 1.000000e+00
  %6442 = fmul fast float %5513, %4592
  %6443 = fadd fast float %6442, -1.000000e+00
  %6444 = fmul fast float %6443, %4498
  %6445 = fadd fast float %6444, 1.000000e+00
  %6446 = fmul fast float %5513, %4591
  %6447 = fadd fast float %6446, -1.000000e+00
  %6448 = fmul fast float %6447, %4498
  %6449 = fadd fast float %6448, 1.000000e+00
  %6450 = fmul fast float %6449, %5460
  %6451 = fmul fast float %6445, %5461
  %6452 = fmul fast float %6441, %5462
  %6453 = fadd fast float %6450, %6437
  %6454 = fmul fast float %6453, %4498
  %6455 = fadd fast float %6451, %6436
  %6456 = fmul fast float %6455, %4498
  %6457 = fadd fast float %6452, %6435
  %6458 = fmul fast float %6457, %4498
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 3
  %6461 = fcmp fast oeq float %6460, 0.000000e+00
  br i1 %6461, label %6734, label %6462

; <label>:6462                                    ; preds = %6386
  %6463 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6464 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6465 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.CBufRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.CBufRet.f32 %6466, 2
  %6470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6471 = extractvalue %dx.types.CBufRet.f32 %6470, 0
  %6472 = extractvalue %dx.types.CBufRet.f32 %6470, 1
  %6473 = call float @dx.op.dot3.f32(i32 55, float %6467, float %6468, float %6469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6474 = select i1 %186, float %6471, float %6467
  %6475 = select i1 %186, float %6473, float %6468
  %6476 = select i1 %186, float %6472, float %6469
  %6477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6478 = extractvalue %dx.types.CBufRet.f32 %6477, 1
  %6479 = fcmp fast une float %6478, 0.000000e+00
  br i1 %6479, label %6480, label %6497

; <label>:6480                                    ; preds = %6462
  %6481 = fptoui float %85 to i32
  %6482 = fptoui float %86 to i32
  %6483 = lshr i32 %6481, 4
  %6484 = lshr i32 %6482, 4
  %6485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6486 = extractvalue %dx.types.CBufRet.f32 %6485, 0
  %6487 = fptoui float %6486 to i32
  %6488 = add i32 %6487, 15
  %6489 = lshr i32 %6488, 4
  %6490 = mul i32 %6489, %6484
  %6491 = add i32 %6490, %6483
  %6492 = shl i32 %6491, 3
  %6493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6492, i32 undef)  ; BufferLoad(srv,index,wot)
  %6494 = extractvalue %dx.types.ResRet.i32 %6493, 0
  %6495 = and i32 %6494, -268435456
  %6496 = icmp eq i32 %6495, -1342177280
  br i1 %6496, label %6502, label %6497

; <label>:6497                                    ; preds = %6480, %6462
  %6498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %5183, float %5184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6499 = extractvalue %dx.types.ResRet.f32 %6498, 0
  %6500 = extractvalue %dx.types.ResRet.f32 %6498, 1
  %6501 = extractvalue %dx.types.ResRet.f32 %6498, 2
  br label %6502

; <label>:6502                                    ; preds = %6497, %6480
  %6503 = phi float [ %6499, %6497 ], [ 0.000000e+00, %6480 ]
  %6504 = phi float [ %6500, %6497 ], [ 0.000000e+00, %6480 ]
  %6505 = phi float [ %6501, %6497 ], [ 0.000000e+00, %6480 ]
  %6506 = call float @dx.op.binary.f32(i32 36, float %6504, float %6505)  ; FMin(a,b)
  %6507 = call float @dx.op.binary.f32(i32 36, float %6503, float %6506)  ; FMin(a,b)
  %6508 = fcmp fast ogt float %6507, 0.000000e+00
  br i1 %6508, label %6509, label %6734, !dx.controlflow.hints !90

; <label>:6509                                    ; preds = %6502
  %6510 = fmul fast float %6503, %6474
  %6511 = fmul fast float %6504, %6475
  %6512 = fmul fast float %6505, %6476
  %6513 = fsub fast float %6463, %5168
  %6514 = fsub fast float %6464, %5167
  %6515 = fsub fast float %6465, %5166
  %6516 = call float @dx.op.dot3.f32(i32 55, float %6513, float %6514, float %6515, float %6513, float %6514, float %6515)  ; Dot3(ax,ay,az,bx,by,bz)
  %6517 = call float @dx.op.unary.f32(i32 25, float %6516)  ; Rsqrt(value)
  %6518 = fmul fast float %6517, %6513
  %6519 = fmul fast float %6517, %6514
  %6520 = fmul fast float %6517, %6515
  %6521 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %6522 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5164, float %5163, float %6518, float %6519, float %6520)  ; Dot3(ax,ay,az,bx,by,bz)
  %6523 = call float @dx.op.unary.f32(i32 7, float %6521)  ; Saturate(value)
  %6524 = fmul fast float %6523, %6523
  %6525 = fmul fast float %6524, %5222
  %6526 = call float @dx.op.unary.f32(i32 7, float %6525)  ; Saturate(value)
  %6527 = fmul fast float %6526, %6523
  %6528 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %6518, float %6519, float %6520)  ; Dot3(ax,ay,az,bx,by,bz)
  %6529 = fmul fast float %6528, %6528
  %6530 = call float @dx.op.unary.f32(i32 6, float %6521)  ; FAbs(value)
  %6531 = fsub fast float 1.000000e+00, %5215
  %6532 = fmul fast float %5197, %5197
  %6533 = fmul fast float %6532, %6531
  %6534 = fadd fast float %6533, %5215
  %6535 = bitcast float %6534 to i32
  %6536 = ashr i32 %6535, 1
  %6537 = add nsw i32 %6536, 532487669
  %6538 = bitcast i32 %6537 to float
  %6539 = fadd fast float %6538, %5197
  %6540 = fmul fast float %5215, %6529
  %6541 = fsub fast float 1.000000e+00, %6529
  %6542 = fadd fast float %6541, %6540
  %6543 = fmul fast float %6530, %6530
  %6544 = fmul fast float %6543, %6531
  %6545 = fadd fast float %6544, %5215
  %6546 = bitcast float %6545 to i32
  %6547 = ashr i32 %6546, 1
  %6548 = add nsw i32 %6547, 532487669
  %6549 = bitcast i32 %6548 to float
  %6550 = fadd fast float %6549, %6530
  %6551 = fmul fast float %6542, %6542
  %6552 = fmul fast float %6551, %6539
  %6553 = fmul fast float %6552, %6550
  %6554 = fdiv fast float 0x3FF0A00000000000, %6553
  %6555 = fmul fast float %6554, %5215
  %6556 = call float @dx.op.unary.f32(i32 6, float %6522)  ; FAbs(value)
  %6557 = fsub fast float 1.000000e+00, %6556
  %6558 = bitcast float %6557 to i32
  %6559 = sitofp i32 %6558 to float
  %6560 = fmul fast float %6559, 5.000000e+00
  %6561 = fadd fast float %6560, 0xC1EFBF8940000000
  %6562 = fptosi float %6561 to i32
  %6563 = bitcast i32 %6562 to float
  %6564 = fsub fast float 1.000000e+00, %5169
  %6565 = fsub fast float 1.000000e+00, %5170
  %6566 = fsub fast float 1.000000e+00, %5195
  %6567 = fmul fast float %6563, %6564
  %6568 = fmul fast float %6563, %6565
  %6569 = fmul fast float %6563, %6566
  %6570 = fadd fast float %6567, %5169
  %6571 = fadd fast float %6568, %5170
  %6572 = fadd fast float %6569, %5195
  br i1 %5480, label %6573, label %6596

; <label>:6573                                    ; preds = %6509
  %6574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4501, float %6556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6575 = extractvalue %dx.types.ResRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.ResRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.ResRet.f32 %6574, 2
  %6578 = fadd fast float %6575, -5.000000e-01
  %6579 = fadd fast float %6576, -5.000000e-01
  %6580 = fadd fast float %6577, -5.000000e-01
  %6581 = fmul fast float %5169, 4.000000e+00
  %6582 = fmul fast float %6581, %6564
  %6583 = fmul fast float %6582, %6578
  %6584 = fmul fast float %5170, 4.000000e+00
  %6585 = fmul fast float %6584, %6565
  %6586 = fmul fast float %6585, %6579
  %6587 = fmul fast float %5195, 4.000000e+00
  %6588 = fmul fast float %6587, %6566
  %6589 = fmul fast float %6588, %6580
  %6590 = fadd fast float %6583, %6570
  %6591 = fadd fast float %6586, %6571
  %6592 = fadd fast float %6589, %6572
  %6593 = call float @dx.op.unary.f32(i32 7, float %6590)  ; Saturate(value)
  %6594 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6595 = call float @dx.op.unary.f32(i32 7, float %6592)  ; Saturate(value)
  br label %6596

; <label>:6596                                    ; preds = %6573, %6509
  %6597 = phi float [ %6593, %6573 ], [ %6570, %6509 ]
  %6598 = phi float [ %6594, %6573 ], [ %6571, %6509 ]
  %6599 = phi float [ %6595, %6573 ], [ %6572, %6509 ]
  %6600 = fmul fast float %6521, 9.843750e-01
  %6601 = fadd fast float %6600, 7.812500e-03
  %6602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6601, float %5470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6603 = extractvalue %dx.types.ResRet.f32 %6602, 2
  %6604 = extractvalue %dx.types.ResRet.f32 %6602, 3
  %6605 = fmul fast float %6603, %5169
  %6606 = fmul fast float %6603, %5170
  %6607 = fmul fast float %6603, %5195
  %6608 = fadd fast float %6605, %6604
  %6609 = fadd fast float %6606, %6604
  %6610 = fadd fast float %6607, %6604
  br i1 %5480, label %6611, label %6634

; <label>:6611                                    ; preds = %6596
  %6612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4501, float %6521, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6613 = extractvalue %dx.types.ResRet.f32 %6612, 0
  %6614 = extractvalue %dx.types.ResRet.f32 %6612, 1
  %6615 = extractvalue %dx.types.ResRet.f32 %6612, 2
  %6616 = fadd fast float %6613, -5.000000e-01
  %6617 = fadd fast float %6614, -5.000000e-01
  %6618 = fadd fast float %6615, -5.000000e-01
  %6619 = fmul fast float %5169, 4.000000e+00
  %6620 = fmul fast float %6619, %6564
  %6621 = fmul fast float %6620, %6616
  %6622 = fmul fast float %5170, 4.000000e+00
  %6623 = fmul fast float %6622, %6565
  %6624 = fmul fast float %6623, %6617
  %6625 = fmul fast float %5195, 4.000000e+00
  %6626 = fmul fast float %6625, %6566
  %6627 = fmul fast float %6626, %6618
  %6628 = fadd fast float %6621, %6608
  %6629 = fadd fast float %6624, %6609
  %6630 = fadd fast float %6627, %6610
  %6631 = call float @dx.op.unary.f32(i32 7, float %6628)  ; Saturate(value)
  %6632 = call float @dx.op.unary.f32(i32 7, float %6629)  ; Saturate(value)
  %6633 = call float @dx.op.unary.f32(i32 7, float %6630)  ; Saturate(value)
  br label %6634

; <label>:6634                                    ; preds = %6611, %6596
  %6635 = phi float [ %6631, %6611 ], [ %6608, %6596 ]
  %6636 = phi float [ %6632, %6611 ], [ %6609, %6596 ]
  %6637 = phi float [ %6633, %6611 ], [ %6610, %6596 ]
  %6638 = call float @dx.op.binary.f32(i32 35, float %6636, float %6637)  ; FMax(a,b)
  %6639 = call float @dx.op.binary.f32(i32 35, float %6635, float %6638)  ; FMax(a,b)
  %6640 = fsub fast float 1.000000e+00, %6639
  %6641 = fsub fast float -0.000000e+00, %5175
  %6642 = fsub fast float -0.000000e+00, %5176
  %6643 = fsub fast float -0.000000e+00, %5177
  %6644 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6641, float %6642, float %6643)  ; Dot3(ax,ay,az,bx,by,bz)
  %6645 = call float @dx.op.unary.f32(i32 7, float %6644)  ; Saturate(value)
  %6646 = fmul fast float %6645, 9.843750e-01
  %6647 = fadd fast float %6646, 7.812500e-03
  %6648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6647, float %5470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6649 = extractvalue %dx.types.ResRet.f32 %6648, 2
  %6650 = extractvalue %dx.types.ResRet.f32 %6648, 3
  %6651 = fmul fast float %6649, %5169
  %6652 = fmul fast float %6649, %5170
  %6653 = fmul fast float %6649, %5195
  %6654 = fadd fast float %6651, %6650
  %6655 = fadd fast float %6652, %6650
  %6656 = fadd fast float %6653, %6650
  br i1 %5480, label %6657, label %6680

; <label>:6657                                    ; preds = %6634
  %6658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4501, float %6645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6659 = extractvalue %dx.types.ResRet.f32 %6658, 0
  %6660 = extractvalue %dx.types.ResRet.f32 %6658, 1
  %6661 = extractvalue %dx.types.ResRet.f32 %6658, 2
  %6662 = fadd fast float %6659, -5.000000e-01
  %6663 = fadd fast float %6660, -5.000000e-01
  %6664 = fadd fast float %6661, -5.000000e-01
  %6665 = fmul fast float %5169, 4.000000e+00
  %6666 = fmul fast float %6665, %6564
  %6667 = fmul fast float %6666, %6662
  %6668 = fmul fast float %5170, 4.000000e+00
  %6669 = fmul fast float %6668, %6565
  %6670 = fmul fast float %6669, %6663
  %6671 = fmul fast float %5195, 4.000000e+00
  %6672 = fmul fast float %6671, %6566
  %6673 = fmul fast float %6672, %6664
  %6674 = fadd fast float %6667, %6654
  %6675 = fadd fast float %6670, %6655
  %6676 = fadd fast float %6673, %6656
  %6677 = call float @dx.op.unary.f32(i32 7, float %6674)  ; Saturate(value)
  %6678 = call float @dx.op.unary.f32(i32 7, float %6675)  ; Saturate(value)
  %6679 = call float @dx.op.unary.f32(i32 7, float %6676)  ; Saturate(value)
  br label %6680

; <label>:6680                                    ; preds = %6657, %6634
  %6681 = phi float [ %6677, %6657 ], [ %6654, %6634 ]
  %6682 = phi float [ %6678, %6657 ], [ %6655, %6634 ]
  %6683 = phi float [ %6679, %6657 ], [ %6656, %6634 ]
  %6684 = call float @dx.op.binary.f32(i32 35, float %6682, float %6683)  ; FMax(a,b)
  %6685 = call float @dx.op.binary.f32(i32 35, float %6681, float %6684)  ; FMax(a,b)
  %6686 = fsub fast float 1.000000e+00, %6685
  %6687 = fmul fast float %6686, %6645
  %6688 = fmul fast float %6687, %4591
  %6689 = fmul fast float %6687, %4592
  %6690 = fmul fast float %6687, %4593
  %6691 = fmul fast float %6597, %6555
  %6692 = fmul fast float %6598, %6555
  %6693 = fmul fast float %6599, %6555
  %6694 = fsub fast float 1.000000e+00, %6522
  %6695 = bitcast float %6694 to i32
  %6696 = sitofp i32 %6695 to float
  %6697 = fmul fast float %6696, 5.000000e+00
  %6698 = fadd fast float %6697, 0xC1EFBF8940000000
  %6699 = fptosi float %6698 to i32
  %6700 = bitcast i32 %6699 to float
  %6701 = fmul fast float %6700, %4502
  %6702 = fmul fast float %6640, %6701
  %6703 = fmul fast float %6702, %6403
  %6704 = fmul fast float %6702, %6404
  %6705 = fmul fast float %6702, %6405
  %6706 = fmul fast float %6640, %6527
  %6707 = fadd fast float %6703, %6691
  %6708 = fadd fast float %6704, %6692
  %6709 = fadd fast float %6705, %6693
  %6710 = fadd fast float %6688, %6706
  %6711 = fadd fast float %6689, %6706
  %6712 = fadd fast float %6690, %6706
  %6713 = fmul fast float %6710, %6510
  %6714 = fmul fast float %6711, %6511
  %6715 = fmul fast float %6712, %6512
  %6716 = fmul fast float %6527, %6510
  %6717 = fmul fast float %6716, %6707
  %6718 = fmul fast float %6527, %6511
  %6719 = fmul fast float %6718, %6708
  %6720 = fmul fast float %6527, %6512
  %6721 = fmul fast float %6720, %6709
  %6722 = fadd fast float %6713, %6453
  %6723 = fmul fast float %6722, %4498
  %6724 = fadd fast float %6714, %6455
  %6725 = fmul fast float %6724, %4498
  %6726 = fadd fast float %6715, %6457
  %6727 = fmul fast float %6726, %4498
  %6728 = fadd fast float %6717, %6427
  %6729 = fmul fast float %6728, %4498
  %6730 = fadd fast float %6719, %6430
  %6731 = fmul fast float %6730, %4498
  %6732 = fadd fast float %6721, %6433
  %6733 = fmul fast float %6732, %4498
  br label %6734

; <label>:6734                                    ; preds = %6680, %6502, %6386
  %6735 = phi float [ %6428, %6386 ], [ %6428, %6502 ], [ %6729, %6680 ]
  %6736 = phi float [ %6431, %6386 ], [ %6431, %6502 ], [ %6731, %6680 ]
  %6737 = phi float [ %6434, %6386 ], [ %6434, %6502 ], [ %6733, %6680 ]
  %6738 = phi float [ %6454, %6386 ], [ %6454, %6502 ], [ %6723, %6680 ]
  %6739 = phi float [ %6456, %6386 ], [ %6456, %6502 ], [ %6725, %6680 ]
  %6740 = phi float [ %6458, %6386 ], [ %6458, %6502 ], [ %6727, %6680 ]
  %6741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6742 = extractvalue %dx.types.CBufRet.i32 %6741, 0
  %6743 = icmp eq i32 %6742, 0
  br i1 %6743, label %7229, label %6744

; <label>:6744                                    ; preds = %6734
  %6745 = fptoui float %85 to i32
  %6746 = fptoui float %86 to i32
  %6747 = lshr i32 %6745, 4
  %6748 = lshr i32 %6746, 4
  %6749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6750 = extractvalue %dx.types.CBufRet.i32 %6749, 0
  %6751 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6748, i32 %6750, i32 %6747)  ; UMad(a,b,c)
  %6752 = add nsw i32 %6742, -1
  %6753 = call i32 @dx.op.binary.i32(i32 37, i32 %6752, i32 0)  ; IMax(a,b)
  %6754 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6755 = fptoui float %6754 to i32
  %6756 = lshr i32 %6755, 5
  %6757 = call i32 @dx.op.binary.i32(i32 40, i32 %6756, i32 8191)  ; UMin(a,b)
  %6758 = shl i32 %6757, 2
  %6759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6758, i32 undef)  ; BufferLoad(srv,index,wot)
  %6760 = extractvalue %dx.types.ResRet.i32 %6759, 0
  %6761 = lshr i32 %6760, 16
  %6762 = and i32 %6760, 65535
  %6763 = lshr i32 %6760, 21
  %6764 = lshr i32 %6762, 5
  %6765 = call i32 @dx.op.binary.i32(i32 40, i32 %6764, i32 %6753)  ; UMin(a,b)
  %6766 = icmp ugt i32 %6763, %6765
  br i1 %6766, label %7229, label %6767

; <label>:6767                                    ; preds = %6744
  br label %6768

; <label>:6768                                    ; preds = %7219, %6767
  %6769 = phi i32 [ %7226, %7219 ], [ %6763, %6767 ]
  %6770 = phi float [ %7220, %7219 ], [ %6735, %6767 ]
  %6771 = phi float [ %7221, %7219 ], [ %6736, %6767 ]
  %6772 = phi float [ %7222, %7219 ], [ %6737, %6767 ]
  %6773 = phi float [ %7223, %7219 ], [ %6738, %6767 ]
  %6774 = phi float [ %7224, %7219 ], [ %6739, %6767 ]
  %6775 = phi float [ %7225, %7219 ], [ %6740, %6767 ]
  %6776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.i32 %6776, 0
  %6778 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6751, i32 %6777, i32 %6769)  ; UMad(a,b,c)
  %6779 = shl i32 %6778, 2
  %6780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6779, i32 undef)  ; BufferLoad(srv,index,wot)
  %6781 = extractvalue %dx.types.ResRet.i32 %6780, 0
  %6782 = shl i32 %6769, 5
  %6783 = sub nsw i32 %6761, %6782
  %6784 = call i32 @dx.op.binary.i32(i32 37, i32 %6783, i32 0)  ; IMax(a,b)
  %6785 = call i32 @dx.op.binary.i32(i32 38, i32 %6784, i32 31)  ; IMin(a,b)
  %6786 = sub nsw i32 1, %6761
  %6787 = add nsw i32 %6786, %6762
  %6788 = call i32 @dx.op.binary.i32(i32 37, i32 %6787, i32 0)  ; IMax(a,b)
  %6789 = call i32 @dx.op.binary.i32(i32 38, i32 %6788, i32 32)  ; IMin(a,b)
  %6790 = and i32 %6789, 31
  %6791 = shl i32 -1, %6790
  %6792 = xor i32 %6791, -1
  %6793 = and i32 %6785, 31
  %6794 = shl i32 %6792, %6793
  %6795 = icmp eq i32 %6789, 32
  %6796 = select i1 %6795, i32 -1, i32 %6794
  %6797 = and i32 %6796, %6781
  %6798 = icmp eq i32 %6797, 0
  br i1 %6798, label %7219, label %6799

; <label>:6799                                    ; preds = %6768
  br label %6800

; <label>:6800                                    ; preds = %6880, %6799
  %6801 = phi i32 [ %6812, %6880 ], [ %6797, %6799 ]
  %6802 = phi float [ %6881, %6880 ], [ %6770, %6799 ]
  %6803 = phi float [ %6882, %6880 ], [ %6771, %6799 ]
  %6804 = phi float [ %6883, %6880 ], [ %6772, %6799 ]
  %6805 = phi float [ %6884, %6880 ], [ %6773, %6799 ]
  %6806 = phi float [ %6885, %6880 ], [ %6774, %6799 ]
  %6807 = phi float [ %6886, %6880 ], [ %6775, %6799 ]
  %6808 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6801)  ; FirstbitLo(value)
  %6809 = add i32 %6808, %6782
  %6810 = and i32 %6808, 31
  %6811 = shl i32 1, %6810
  %6812 = xor i32 %6811, %6801
  %6813 = mul i32 %6809, 112
  %6814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6813, i32 undef)  ; BufferLoad(srv,index,wot)
  %6815 = extractvalue %dx.types.ResRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.ResRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.ResRet.f32 %6814, 2
  %6818 = or i32 %6813, 12
  %6819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6818, i32 undef)  ; BufferLoad(srv,index,wot)
  %6820 = extractvalue %dx.types.ResRet.f32 %6819, 0
  %6821 = add i32 %6813, 44
  %6822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6821, i32 undef)  ; BufferLoad(srv,index,wot)
  %6823 = extractvalue %dx.types.ResRet.f32 %6822, 0
  %6824 = add i32 %6813, 48
  %6825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6824, i32 undef)  ; BufferLoad(srv,index,wot)
  %6826 = extractvalue %dx.types.ResRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.ResRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.ResRet.f32 %6825, 2
  %6829 = add i32 %6813, 80
  %6830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6829, i32 undef)  ; BufferLoad(srv,index,wot)
  %6831 = extractvalue %dx.types.ResRet.f32 %6830, 1
  %6832 = extractvalue %dx.types.ResRet.f32 %6830, 2
  %6833 = call float @dx.op.dot3.f32(i32 55, float %6815, float %6816, float %6817, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6834 = select i1 %186, float %6831, float %6815
  %6835 = select i1 %186, float %6833, float %6816
  %6836 = select i1 %186, float %6832, float %6817
  %6837 = fsub fast float %6826, %144
  %6838 = fsub fast float %6827, %145
  %6839 = fsub fast float %6828, %146
  %6840 = call float @dx.op.dot3.f32(i32 55, float %6837, float %6838, float %6839, float %6837, float %6838, float %6839)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = call float @dx.op.unary.f32(i32 24, float %6840)  ; Sqrt(value)
  %6842 = fdiv fast float 1.000000e+00, %6841
  %6843 = fmul fast float %6842, %6837
  %6844 = fmul fast float %6842, %6838
  %6845 = fmul fast float %6842, %6839
  %6846 = fadd fast float %6841, %6820
  %6847 = fdiv fast float 1.000000e+00, %6846
  %6848 = fmul float %6823, %6847
  %6849 = fmul float %6848, %6848
  %6850 = call float @dx.op.unary.f32(i32 7, float %6849)  ; Saturate(value)
  %6851 = and i32 %6811, %6797
  %6852 = icmp eq i32 %6851, 0
  br i1 %6852, label %6875, label %6853, !dx.controlflow.hints !91

; <label>:6853                                    ; preds = %6800
  %6854 = lshr i32 %6745, 5
  %6855 = lshr i32 %6746, 5
  %6856 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6854, i32 %6855, i32 %6809, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6857 = extractvalue %dx.types.ResRet.i32 %6856, 0
  %6858 = and i32 %6857, 3
  %6859 = icmp eq i32 %6858, 0
  %6860 = select i1 %6859, float 1.000000e+00, float 0.000000e+00
  %6861 = icmp eq i32 %6858, 3
  br i1 %6861, label %6862, label %6875

; <label>:6862                                    ; preds = %6853
  %6863 = lshr i32 %6857, 10
  %6864 = and i32 %6863, 8160
  %6865 = and i32 %6746, 31
  %6866 = or i32 %6864, %6865
  %6867 = lshr i32 %6857, 1
  %6868 = and i32 %6867, 16352
  %6869 = and i32 %6745, 31
  %6870 = or i32 %6868, %6869
  %6871 = lshr i32 %6857, 23
  %6872 = and i32 %6871, 255
  %6873 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6870, i32 %6866, i32 %6872, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6874 = extractvalue %dx.types.ResRet.f32 %6873, 0
  br label %6875

; <label>:6875                                    ; preds = %6862, %6853, %6800
  %6876 = phi float [ %6874, %6862 ], [ %6860, %6853 ], [ 0.000000e+00, %6800 ]
  %6877 = call float @dx.op.binary.f32(i32 36, float %6876, float %6876)  ; FMin(a,b)
  %6878 = call float @dx.op.binary.f32(i32 36, float %6876, float %6877)  ; FMin(a,b)
  %6879 = fcmp fast ogt float %6878, 0.000000e+00
  br i1 %6879, label %6888, label %6880, !dx.controlflow.hints !92

; <label>:6880                                    ; preds = %7167, %6875
  %6881 = phi float [ %6802, %6875 ], [ %7215, %7167 ]
  %6882 = phi float [ %6803, %6875 ], [ %7216, %7167 ]
  %6883 = phi float [ %6804, %6875 ], [ %7217, %7167 ]
  %6884 = phi float [ %6805, %6875 ], [ %7206, %7167 ]
  %6885 = phi float [ %6806, %6875 ], [ %7207, %7167 ]
  %6886 = phi float [ %6807, %6875 ], [ %7208, %7167 ]
  %6887 = icmp eq i32 %6801, %6811
  br i1 %6887, label %7218, label %6800

; <label>:6888                                    ; preds = %6875
  %6889 = fmul fast float %6876, %6834
  %6890 = fmul fast float %6876, %6835
  %6891 = fmul fast float %6876, %6836
  %6892 = fsub fast float %6828, %4968
  %6893 = fcmp fast ogt float %6892, 0.000000e+00
  %6894 = fsub fast float %146, %4968
  %6895 = fcmp fast ogt float %6894, 0.000000e+00
  %6896 = xor i1 %6895, %6893
  %6897 = fsub fast float %4968, %6828
  %6898 = fmul fast float %6897, 2.000000e+00
  %6899 = fadd fast float %6898, %6828
  %6900 = select i1 %6896, float %6828, float %6899
  %6901 = fsub fast float %6900, %146
  %6902 = call float @dx.op.dot3.f32(i32 55, float %6837, float %6838, float %6901, float %6837, float %6838, float %6901)  ; Dot3(ax,ay,az,bx,by,bz)
  %6903 = call float @dx.op.unary.f32(i32 25, float %6902)  ; Rsqrt(value)
  %6904 = fmul fast float %6903, %6837
  %6905 = fmul fast float %6903, %6838
  %6906 = fmul fast float %6903, %6901
  %6907 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4976)  ; Dot3(ax,ay,az,bx,by,bz)
  %6908 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6904, float %6905, float %6906)  ; Dot3(ax,ay,az,bx,by,bz)
  %6909 = fdiv fast float 1.000000e+00, %6908
  %6910 = fmul fast float %6909, %6907
  %6911 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6894, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6912 = fcmp fast ogt float %6911, 0.000000e+00
  %6913 = fcmp fast olt float %6911, 0.000000e+00
  %6914 = zext i1 %6912 to i32
  %6915 = zext i1 %6913 to i32
  %6916 = sub nsw i32 %6914, %6915
  %6917 = sitofp i32 %6916 to float
  %6918 = fsub fast float %6900, %4968
  %6919 = call float @dx.op.dot3.f32(i32 55, float %6837, float %6838, float %6918, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6920 = fcmp fast ogt float %6919, 0.000000e+00
  %6921 = fcmp fast olt float %6919, 0.000000e+00
  %6922 = zext i1 %6920 to i32
  %6923 = zext i1 %6921 to i32
  %6924 = sub nsw i32 %6922, %6923
  %6925 = sitofp i32 %6924 to float
  %6926 = fcmp fast une float %6917, %6925
  br i1 %6926, label %6927, label %6937

; <label>:6927                                    ; preds = %6888
  %6928 = fmul fast float %6910, %6906
  %6929 = fmul fast float %6910, %6905
  %6930 = fmul fast float %6910, %6904
  %6931 = fmul fast float %6930, %6930
  %6932 = fmul fast float %6929, %6929
  %6933 = fadd fast float %6931, %6932
  %6934 = fmul fast float %6928, %6928
  %6935 = fadd fast float %6933, %6934
  %6936 = call float @dx.op.unary.f32(i32 24, float %6935)  ; Sqrt(value)
  br label %6949

; <label>:6937                                    ; preds = %6888
  %6938 = icmp slt i32 %6916, 0
  br i1 %6938, label %6939, label %6949

; <label>:6939                                    ; preds = %6937
  %6940 = fsub fast float %144, %6826
  %6941 = fsub fast float %145, %6827
  %6942 = fsub fast float %146, %6900
  %6943 = fmul fast float %6940, %6940
  %6944 = fmul fast float %6941, %6941
  %6945 = fadd fast float %6943, %6944
  %6946 = fmul fast float %6942, %6942
  %6947 = fadd fast float %6945, %6946
  %6948 = call float @dx.op.unary.f32(i32 24, float %6947)  ; Sqrt(value)
  br label %6949

; <label>:6949                                    ; preds = %6939, %6937, %6927
  %6950 = phi float [ %6936, %6927 ], [ %6948, %6939 ], [ 0.000000e+00, %6937 ]
  %6951 = and i1 %6895, %6893
  %6952 = fsub fast float -0.000000e+00, %6950
  %6953 = select i1 %6951, float -0.000000e+00, float %6952
  %6954 = fmul fast float %4969, 0x3FF7154760000000
  %6955 = fmul fast float %6954, %6953
  %6956 = fmul fast float %4970, 0x3FF7154760000000
  %6957 = fmul fast float %6956, %6953
  %6958 = fmul fast float %4971, 0x3FF7154760000000
  %6959 = fmul fast float %6958, %6953
  %6960 = call float @dx.op.unary.f32(i32 21, float %6955)  ; Exp(value)
  %6961 = call float @dx.op.unary.f32(i32 21, float %6957)  ; Exp(value)
  %6962 = call float @dx.op.unary.f32(i32 21, float %6959)  ; Exp(value)
  %6963 = call float @dx.op.unary.f32(i32 7, float %6960)  ; Saturate(value)
  %6964 = call float @dx.op.unary.f32(i32 7, float %6961)  ; Saturate(value)
  %6965 = call float @dx.op.unary.f32(i32 7, float %6962)  ; Saturate(value)
  %6966 = fmul fast float %6889, %6963
  %6967 = fmul fast float %6890, %6964
  %6968 = fmul fast float %6891, %6965
  %6969 = fsub fast float %6843, %5168
  %6970 = fsub fast float %6844, %5167
  %6971 = fsub fast float %6845, %5166
  %6972 = call float @dx.op.dot3.f32(i32 55, float %6969, float %6970, float %6971, float %6969, float %6970, float %6971)  ; Dot3(ax,ay,az,bx,by,bz)
  %6973 = call float @dx.op.unary.f32(i32 25, float %6972)  ; Rsqrt(value)
  %6974 = fmul fast float %6973, %6969
  %6975 = fmul fast float %6973, %6970
  %6976 = fmul fast float %6973, %6971
  %6977 = call float @dx.op.dot3.f32(i32 55, float %6843, float %6844, float %6845, float %5175, float %5176, float %5177)  ; Dot3(ax,ay,az,bx,by,bz)
  %6978 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5164, float %5163, float %6974, float %6975, float %6976)  ; Dot3(ax,ay,az,bx,by,bz)
  %6979 = call float @dx.op.unary.f32(i32 7, float %6977)  ; Saturate(value)
  %6980 = fmul fast float %6979, %6850
  %6981 = fmul fast float %6979, %6979
  %6982 = fmul fast float %6981, %5222
  %6983 = call float @dx.op.unary.f32(i32 7, float %6982)  ; Saturate(value)
  %6984 = fmul fast float %6980, %6983
  %6985 = bitcast float %6840 to i32
  %6986 = ashr i32 %6985, 1
  %6987 = sub nsw i32 1597463007, %6986
  %6988 = bitcast i32 %6987 to float
  %6989 = fmul fast float %6988, %6837
  %6990 = fmul fast float %6988, %6838
  %6991 = fmul fast float %6988, %6839
  %6992 = fsub fast float %6989, %5168
  %6993 = fsub fast float %6990, %5167
  %6994 = fsub fast float %6991, %5166
  %6995 = call float @dx.op.dot3.f32(i32 55, float %6992, float %6993, float %6994, float %6992, float %6993, float %6994)  ; Dot3(ax,ay,az,bx,by,bz)
  %6996 = call float @dx.op.unary.f32(i32 25, float %6995)  ; Rsqrt(value)
  %6997 = fmul fast float %6992, %6996
  %6998 = fmul fast float %6993, %6996
  %6999 = fmul fast float %6994, %6996
  %7000 = call float @dx.op.dot3.f32(i32 55, float %5175, float %5176, float %5177, float %6997, float %6998, float %6999)  ; Dot3(ax,ay,az,bx,by,bz)
  %7001 = fmul fast float %7000, %7000
  %7002 = call float @dx.op.unary.f32(i32 6, float %6977)  ; FAbs(value)
  %7003 = fsub fast float 1.000000e+00, %5215
  %7004 = fmul fast float %5197, %5197
  %7005 = fmul fast float %7004, %7003
  %7006 = fadd fast float %7005, %5215
  %7007 = bitcast float %7006 to i32
  %7008 = ashr i32 %7007, 1
  %7009 = add nsw i32 %7008, 532487669
  %7010 = bitcast i32 %7009 to float
  %7011 = fadd fast float %7010, %5197
  %7012 = fmul fast float %5215, %7001
  %7013 = fsub fast float 1.000000e+00, %7001
  %7014 = fadd fast float %7013, %7012
  %7015 = fmul fast float %7002, %7002
  %7016 = fmul fast float %7015, %7003
  %7017 = fadd fast float %7016, %5215
  %7018 = bitcast float %7017 to i32
  %7019 = ashr i32 %7018, 1
  %7020 = add nsw i32 %7019, 532487669
  %7021 = bitcast i32 %7020 to float
  %7022 = fadd fast float %7021, %7002
  %7023 = fmul fast float %7014, %7014
  %7024 = fmul fast float %7023, %7011
  %7025 = fmul fast float %7024, %7022
  %7026 = fdiv fast float 1.000000e+00, %7025
  %7027 = bitcast float %5215 to i32
  %7028 = sitofp i32 %7027 to float
  %7029 = fmul fast float %7028, 0x3FE7F73180000000
  %7030 = fadd fast float %7029, 0x41AFE27C40000000
  %7031 = fptosi float %7030 to i32
  %7032 = bitcast i32 %7031 to float
  %7033 = fmul fast float %6823, 0x3FD80E9D60000000
  %7034 = fmul fast float %7033, %6988
  %7035 = fadd fast float %7032, %7034
  %7036 = bitcast float %7035 to i32
  %7037 = sub nsw i32 2129859010, %7036
  %7038 = bitcast i32 %7037 to float
  %7039 = fmul fast float %5215, %7026
  %7040 = fmul fast float %7039, %7032
  %7041 = fmul fast float %7040, %7038
  %7042 = call float @dx.op.unary.f32(i32 6, float %6978)  ; FAbs(value)
  %7043 = fsub fast float 1.000000e+00, %7042
  %7044 = bitcast float %7043 to i32
  %7045 = sitofp i32 %7044 to float
  %7046 = fmul fast float %7045, 5.000000e+00
  %7047 = fadd fast float %7046, 0xC1EFBF8940000000
  %7048 = fptosi float %7047 to i32
  %7049 = bitcast i32 %7048 to float
  %7050 = fsub fast float 1.000000e+00, %5169
  %7051 = fsub fast float 1.000000e+00, %5170
  %7052 = fsub fast float 1.000000e+00, %5195
  %7053 = fmul fast float %7049, %7050
  %7054 = fmul fast float %7049, %7051
  %7055 = fmul fast float %7049, %7052
  %7056 = fadd fast float %7053, %5169
  %7057 = fadd fast float %7054, %5170
  %7058 = fadd fast float %7055, %5195
  br i1 %5480, label %7059, label %7082

; <label>:7059                                    ; preds = %6949
  %7060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4501, float %7042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7061 = extractvalue %dx.types.ResRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.ResRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.ResRet.f32 %7060, 2
  %7064 = fadd fast float %7061, -5.000000e-01
  %7065 = fadd fast float %7062, -5.000000e-01
  %7066 = fadd fast float %7063, -5.000000e-01
  %7067 = fmul fast float %5169, 4.000000e+00
  %7068 = fmul fast float %7067, %7050
  %7069 = fmul fast float %7068, %7064
  %7070 = fmul fast float %5170, 4.000000e+00
  %7071 = fmul fast float %7070, %7051
  %7072 = fmul fast float %7071, %7065
  %7073 = fmul fast float %5195, 4.000000e+00
  %7074 = fmul fast float %7073, %7052
  %7075 = fmul fast float %7074, %7066
  %7076 = fadd fast float %7069, %7056
  %7077 = fadd fast float %7072, %7057
  %7078 = fadd fast float %7075, %7058
  %7079 = call float @dx.op.unary.f32(i32 7, float %7076)  ; Saturate(value)
  %7080 = call float @dx.op.unary.f32(i32 7, float %7077)  ; Saturate(value)
  %7081 = call float @dx.op.unary.f32(i32 7, float %7078)  ; Saturate(value)
  br label %7082

; <label>:7082                                    ; preds = %7059, %6949
  %7083 = phi float [ %7079, %7059 ], [ %7056, %6949 ]
  %7084 = phi float [ %7080, %7059 ], [ %7057, %6949 ]
  %7085 = phi float [ %7081, %7059 ], [ %7058, %6949 ]
  %7086 = fmul fast float %6977, 9.843750e-01
  %7087 = fadd fast float %7086, 7.812500e-03
  %7088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %7087, float %5470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7089 = extractvalue %dx.types.ResRet.f32 %7088, 2
  %7090 = extractvalue %dx.types.ResRet.f32 %7088, 3
  %7091 = fmul fast float %7089, %5169
  %7092 = fmul fast float %7089, %5170
  %7093 = fmul fast float %7089, %5195
  %7094 = fadd fast float %7091, %7090
  %7095 = fadd fast float %7092, %7090
  %7096 = fadd fast float %7093, %7090
  br i1 %5480, label %7097, label %7120

; <label>:7097                                    ; preds = %7082
  %7098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4501, float %6977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7099 = extractvalue %dx.types.ResRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.ResRet.f32 %7098, 1
  %7101 = extractvalue %dx.types.ResRet.f32 %7098, 2
  %7102 = fadd fast float %7099, -5.000000e-01
  %7103 = fadd fast float %7100, -5.000000e-01
  %7104 = fadd fast float %7101, -5.000000e-01
  %7105 = fmul fast float %5169, 4.000000e+00
  %7106 = fmul fast float %7105, %7050
  %7107 = fmul fast float %7106, %7102
  %7108 = fmul fast float %5170, 4.000000e+00
  %7109 = fmul fast float %7108, %7051
  %7110 = fmul fast float %7109, %7103
  %7111 = fmul fast float %5195, 4.000000e+00
  %7112 = fmul fast float %7111, %7052
  %7113 = fmul fast float %7112, %7104
  %7114 = fadd fast float %7107, %7094
  %7115 = fadd fast float %7110, %7095
  %7116 = fadd fast float %7113, %7096
  %7117 = call float @dx.op.unary.f32(i32 7, float %7114)  ; Saturate(value)
  %7118 = call float @dx.op.unary.f32(i32 7, float %7115)  ; Saturate(value)
  %7119 = call float @dx.op.unary.f32(i32 7, float %7116)  ; Saturate(value)
  br label %7120

; <label>:7120                                    ; preds = %7097, %7082
  %7121 = phi float [ %7117, %7097 ], [ %7094, %7082 ]
  %7122 = phi float [ %7118, %7097 ], [ %7095, %7082 ]
  %7123 = phi float [ %7119, %7097 ], [ %7096, %7082 ]
  %7124 = call float @dx.op.binary.f32(i32 35, float %7122, float %7123)  ; FMax(a,b)
  %7125 = call float @dx.op.binary.f32(i32 35, float %7121, float %7124)  ; FMax(a,b)
  %7126 = fsub fast float 1.000000e+00, %7125
  %7127 = fsub fast float -0.000000e+00, %5175
  %7128 = fsub fast float -0.000000e+00, %5176
  %7129 = fsub fast float -0.000000e+00, %5177
  %7130 = call float @dx.op.dot3.f32(i32 55, float %6843, float %6844, float %6845, float %7127, float %7128, float %7129)  ; Dot3(ax,ay,az,bx,by,bz)
  %7131 = call float @dx.op.unary.f32(i32 7, float %7130)  ; Saturate(value)
  %7132 = fmul fast float %7131, %6850
  %7133 = fmul fast float %7131, 9.843750e-01
  %7134 = fadd fast float %7133, 7.812500e-03
  %7135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %7134, float %5470, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7136 = extractvalue %dx.types.ResRet.f32 %7135, 2
  %7137 = extractvalue %dx.types.ResRet.f32 %7135, 3
  %7138 = fmul fast float %7136, %5169
  %7139 = fmul fast float %7136, %5170
  %7140 = fmul fast float %7136, %5195
  %7141 = fadd fast float %7138, %7137
  %7142 = fadd fast float %7139, %7137
  %7143 = fadd fast float %7140, %7137
  br i1 %5480, label %7144, label %7167

; <label>:7144                                    ; preds = %7120
  %7145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4501, float %7131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7146 = extractvalue %dx.types.ResRet.f32 %7145, 0
  %7147 = extractvalue %dx.types.ResRet.f32 %7145, 1
  %7148 = extractvalue %dx.types.ResRet.f32 %7145, 2
  %7149 = fadd fast float %7146, -5.000000e-01
  %7150 = fadd fast float %7147, -5.000000e-01
  %7151 = fadd fast float %7148, -5.000000e-01
  %7152 = fmul fast float %5169, 4.000000e+00
  %7153 = fmul fast float %7152, %7050
  %7154 = fmul fast float %7153, %7149
  %7155 = fmul fast float %5170, 4.000000e+00
  %7156 = fmul fast float %7155, %7051
  %7157 = fmul fast float %7156, %7150
  %7158 = fmul fast float %5195, 4.000000e+00
  %7159 = fmul fast float %7158, %7052
  %7160 = fmul fast float %7159, %7151
  %7161 = fadd fast float %7154, %7141
  %7162 = fadd fast float %7157, %7142
  %7163 = fadd fast float %7160, %7143
  %7164 = call float @dx.op.unary.f32(i32 7, float %7161)  ; Saturate(value)
  %7165 = call float @dx.op.unary.f32(i32 7, float %7162)  ; Saturate(value)
  %7166 = call float @dx.op.unary.f32(i32 7, float %7163)  ; Saturate(value)
  br label %7167

; <label>:7167                                    ; preds = %7144, %7120
  %7168 = phi float [ %7164, %7144 ], [ %7141, %7120 ]
  %7169 = phi float [ %7165, %7144 ], [ %7142, %7120 ]
  %7170 = phi float [ %7166, %7144 ], [ %7143, %7120 ]
  %7171 = call float @dx.op.binary.f32(i32 35, float %7169, float %7170)  ; FMax(a,b)
  %7172 = call float @dx.op.binary.f32(i32 35, float %7168, float %7171)  ; FMax(a,b)
  %7173 = fsub fast float 1.000000e+00, %7172
  %7174 = fmul fast float %7132, %7173
  %7175 = fmul fast float %7174, %4591
  %7176 = fmul fast float %7174, %4592
  %7177 = fmul fast float %7174, %4593
  %7178 = fmul fast float %7083, %7041
  %7179 = fmul fast float %7084, %7041
  %7180 = fmul fast float %7085, %7041
  %7181 = fsub fast float 1.000000e+00, %6978
  %7182 = bitcast float %7181 to i32
  %7183 = sitofp i32 %7182 to float
  %7184 = fmul fast float %7183, 5.000000e+00
  %7185 = fadd fast float %7184, 0xC1EFBF8940000000
  %7186 = fptosi float %7185 to i32
  %7187 = bitcast i32 %7186 to float
  %7188 = fmul fast float %7187, %4502
  %7189 = fmul fast float %7126, %7188
  %7190 = fmul fast float %7189, %6403
  %7191 = fmul fast float %7189, %6404
  %7192 = fmul fast float %7189, %6405
  %7193 = fmul fast float %7126, %6984
  %7194 = fadd fast float %7190, %7178
  %7195 = fadd fast float %7191, %7179
  %7196 = fadd fast float %7192, %7180
  %7197 = fadd fast float %7175, %7193
  %7198 = fadd fast float %7176, %7193
  %7199 = fadd fast float %7177, %7193
  %7200 = fmul fast float %6966, %4498
  %7201 = fmul fast float %7200, %7197
  %7202 = fmul fast float %6967, %4498
  %7203 = fmul fast float %7202, %7198
  %7204 = fmul fast float %6968, %4498
  %7205 = fmul fast float %7204, %7199
  %7206 = fadd fast float %7201, %6805
  %7207 = fadd fast float %7203, %6806
  %7208 = fadd fast float %7205, %6807
  %7209 = fmul fast float %7200, %6984
  %7210 = fmul fast float %7209, %7194
  %7211 = fmul fast float %7202, %6984
  %7212 = fmul fast float %7211, %7195
  %7213 = fmul fast float %7204, %6984
  %7214 = fmul fast float %7213, %7196
  %7215 = fadd fast float %7210, %6802
  %7216 = fadd fast float %7212, %6803
  %7217 = fadd fast float %7214, %6804
  br label %6880

; <label>:7218                                    ; preds = %6880
  br label %7219

; <label>:7219                                    ; preds = %7218, %6768
  %7220 = phi float [ %6770, %6768 ], [ %6881, %7218 ]
  %7221 = phi float [ %6771, %6768 ], [ %6882, %7218 ]
  %7222 = phi float [ %6772, %6768 ], [ %6883, %7218 ]
  %7223 = phi float [ %6773, %6768 ], [ %6884, %7218 ]
  %7224 = phi float [ %6774, %6768 ], [ %6885, %7218 ]
  %7225 = phi float [ %6775, %6768 ], [ %6886, %7218 ]
  %7226 = add i32 %6769, 1
  %7227 = icmp ugt i32 %7226, %6765
  br i1 %7227, label %7228, label %6768

; <label>:7228                                    ; preds = %7219
  br label %7229

; <label>:7229                                    ; preds = %7228, %6744, %6734
  %7230 = phi float [ %6735, %6734 ], [ %6735, %6744 ], [ %7220, %7228 ]
  %7231 = phi float [ %6736, %6734 ], [ %6736, %6744 ], [ %7221, %7228 ]
  %7232 = phi float [ %6737, %6734 ], [ %6737, %6744 ], [ %7222, %7228 ]
  %7233 = phi float [ %6738, %6734 ], [ %6738, %6744 ], [ %7223, %7228 ]
  %7234 = phi float [ %6739, %6734 ], [ %6739, %6744 ], [ %7224, %7228 ]
  %7235 = phi float [ %6740, %6734 ], [ %6740, %6744 ], [ %7225, %7228 ]
  %7236 = call float @dx.op.unary.f32(i32 24, float %5172)  ; Sqrt(value)
  %7237 = call float @dx.op.unary.f32(i32 24, float %5173)  ; Sqrt(value)
  %7238 = call float @dx.op.unary.f32(i32 24, float %5174)  ; Sqrt(value)
  %7239 = fmul fast float %7236, %7233
  %7240 = fmul fast float %7237, %7234
  %7241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7242 = extractvalue %dx.types.CBufRet.f32 %7241, 0
  br i1 %186, label %7243, label %7266

; <label>:7243                                    ; preds = %7229
  %7244 = fadd fast float %7235, %4504
  %7245 = fmul fast float %7244, %4505
  %7246 = fsub fast float 1.000000e+00, %4505
  %7247 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  %7248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7248, 3
  %7250 = fmul fast float %7249, %7247
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7253 = fmul fast float %7252, %6409
  %7254 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7255 = fmul fast float %7254, %5193
  %7256 = fadd fast float %7240, %7239
  %7257 = fmul fast float %7242, %7256
  %7258 = extractvalue %dx.types.CBufRet.f32 %7248, 1
  %7259 = fadd fast float %7250, %7245
  %7260 = fsub fast float %7259, %7253
  %7261 = fadd fast float %7260, %7255
  %7262 = fsub fast float %7261, %7258
  %7263 = extractvalue %dx.types.CBufRet.f32 %7248, 2
  %7264 = fmul fast float %7262, %7263
  %7265 = call float @dx.op.unary.f32(i32 7, float %7264)  ; Saturate(value)
  br label %7282

; <label>:7266                                    ; preds = %7229
  %7267 = fmul fast float %7238, %7235
  %7268 = fmul fast float %7242, %7239
  %7269 = fmul fast float %7242, %7240
  %7270 = fmul fast float %7267, %7242
  %7271 = add i32 %45, 356
  %7272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %7271, i32 undef)  ; BufferLoad(srv,index,wot)
  %7273 = extractvalue %dx.types.ResRet.i32 %7272, 0
  %7274 = and i32 %7273, 32
  %7275 = icmp eq i32 %7274, 0
  br i1 %7275, label %7282, label %7276

; <label>:7276                                    ; preds = %7266
  %7277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7278 = extractvalue %dx.types.CBufRet.f32 %7277, 0
  %7279 = fmul fast float %7278, 0x3FE99999A0000000
  %7280 = fadd fast float %7278, %7268
  %7281 = fadd fast float %7279, %7270
  br label %7282

; <label>:7282                                    ; preds = %7276, %7266, %7243
  %7283 = phi float [ %7257, %7243 ], [ %7280, %7276 ], [ %7268, %7266 ]
  %7284 = phi float [ %7265, %7243 ], [ %7269, %7276 ], [ %7269, %7266 ]
  %7285 = phi float [ 1.000000e+00, %7243 ], [ %7281, %7276 ], [ %7270, %7266 ]
  %7286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7287 = extractvalue %dx.types.CBufRet.f32 %7286, 0
  %7288 = fmul fast float %7287, %7231
  %7289 = fmul fast float %7287, %7232
  %7290 = fadd fast float %7231, %7230
  %7291 = select i1 %186, float %7290, float %7230
  %7292 = fmul float %7291, %7287
  %7293 = select i1 %186, float 0.000000e+00, float %7288
  %7294 = select i1 %186, float 0.000000e+00, float %7289
  %7295 = fmul fast float %7283, %7236
  %7296 = fmul fast float %7284, %7237
  %7297 = fmul fast float %7285, %7238
  %7298 = fadd fast float %7292, %7295
  %7299 = fadd fast float %7293, %7296
  %7300 = fadd fast float %7294, %7297
  %7301 = select i1 %186, float %7284, float %7299
  %7302 = select i1 %186, float %7285, float %7300
  %7303 = call float @dx.op.binary.f32(i32 36, float %7298, float 3.225500e+04)  ; FMin(a,b)
  %7304 = call float @dx.op.binary.f32(i32 36, float %7301, float 3.225500e+04)  ; FMin(a,b)
  %7305 = call float @dx.op.binary.f32(i32 36, float %7302, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7303)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7304)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7305)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

