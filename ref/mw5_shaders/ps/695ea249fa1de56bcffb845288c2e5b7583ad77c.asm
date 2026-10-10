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
; shader hash: cd429d627ae04da913e3325ca836e2c0
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
  %383 = add i32 %45, 564
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
  br i1 %436, label %878, label %437

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
  %564 = add i32 %45, 532
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

; <label>:878                                     ; preds = %868, %830, %422
  %879 = phi float [ 0.000000e+00, %422 ], [ %832, %830 ], [ %832, %868 ]
  %880 = phi float [ 0.000000e+00, %422 ], [ %833, %830 ], [ %833, %868 ]
  %881 = phi float [ 0.000000e+00, %422 ], [ %751, %830 ], [ %751, %868 ]
  %882 = phi float [ 0.000000e+00, %422 ], [ %752, %830 ], [ %752, %868 ]
  %883 = phi float [ 0.000000e+00, %422 ], [ %753, %830 ], [ %753, %868 ]
  %884 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %830 ], [ %875, %868 ]
  %885 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %830 ], [ %876, %868 ]
  %886 = phi float [ 0.000000e+00, %422 ], [ 0.000000e+00, %830 ], [ %877, %868 ]
  %887 = phi float [ 0.000000e+00, %422 ], [ %737, %830 ], [ %737, %868 ]
  %888 = phi float [ 0.000000e+00, %422 ], [ 1.000000e+00, %830 ], [ 1.000000e+00, %868 ]
  %889 = phi float [ 0.000000e+00, %422 ], [ %831, %830 ], [ %831, %868 ]
  %890 = phi float [ 0.000000e+00, %422 ], [ %834, %830 ], [ %834, %868 ]
  br i1 %373, label %1715, label %891

; <label>:891                                     ; preds = %878
  %892 = icmp ult i32 %428, 2
  %893 = add i32 %45, 40
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %45, 44
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = or i32 %898, %895
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %1715, label %901

; <label>:901                                     ; preds = %891
  %902 = and i32 %895, 262144
  %903 = icmp ne i32 %902, 0
  %904 = select i1 %903, float %48, float 1.000000e+00
  %905 = select i1 %903, float %49, float 0.000000e+00
  %906 = select i1 %903, float %50, float 0.000000e+00
  %907 = select i1 %903, float %51, float 1.000000e+00
  %908 = select i1 %903, float %52, float %73
  %909 = select i1 %903, float %53, float %74
  %910 = add i32 %45, 300
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = lshr i32 %912, 16
  %914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %913)  ; LegacyF16ToF32(value)
  %915 = fmul fast float %914, 0x3F50624DE0000000
  %916 = add i32 %45, 104
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 16
  %920 = and i32 %919, 255
  %921 = lshr i32 %918, 24
  %922 = add i32 %45, 308
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = and i32 %924, 65535
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = lshr i32 %924, 16
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = add i32 %45, 48
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 22
  %933 = shl nuw nsw i32 %932, 5
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = shl i32 %931, 4
  %936 = and i32 %935, 32752
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = lshr i32 %931, 7
  %939 = and i32 %938, 32752
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %943 = fmul fast float %942, 1.000000e+03
  %944 = fmul fast float %283, %943
  %945 = call float @dx.op.unary.f32(i32 22, float %944)  ; Frc(value)
  %946 = fadd fast float %945, %273
  %947 = fmul fast float %284, %943
  %948 = call float @dx.op.unary.f32(i32 22, float %947)  ; Frc(value)
  %949 = fadd fast float %948, %275
  %950 = fmul fast float %915, %943
  %951 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %952 = fmul fast float %951, 0x401921FB60000000
  %953 = fadd fast float %952, %934
  %954 = call float @dx.op.unary.f32(i32 13, float %953)  ; Sin(value)
  %955 = call float @dx.op.unary.f32(i32 12, float %953)  ; Cos(value)
  %956 = fsub fast float -0.000000e+00, %954
  %957 = fadd fast float %908, -5.000000e-01
  %958 = fadd fast float %909, -5.000000e-01
  %959 = fmul fast float %926, %957
  %960 = fmul fast float %928, %958
  %961 = fadd fast float %959, 5.000000e-01
  %962 = fadd fast float %960, 5.000000e-01
  %963 = fmul fast float %937, %961
  %964 = fmul fast float %940, %962
  %965 = fmul fast float %955, %963
  %966 = call float @dx.op.tertiary.f32(i32 46, float %956, float %964, float %965)  ; FMad(a,b,c)
  %967 = fmul fast float %954, %963
  %968 = call float @dx.op.tertiary.f32(i32 46, float %955, float %964, float %967)  ; FMad(a,b,c)
  %969 = fadd fast float %946, %966
  %970 = fadd fast float %949, %968
  %971 = icmp ugt i32 %920, 1
  %972 = icmp ugt i32 %918, 33554431
  %973 = or i1 %972, %971
  br i1 %973, label %974, label %999

; <label>:974                                     ; preds = %901
  %975 = add i32 %45, 244
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 16
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = fmul fast float %942, %979
  %981 = call float @dx.op.unary.f32(i32 22, float %980)  ; Frc(value)
  %982 = mul nuw nsw i32 %920, %921
  %983 = uitofp i32 %982 to float
  %984 = fmul fast float %981, %983
  %985 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %986 = fptoui float %985 to i32
  %987 = urem i32 %986, %920
  %988 = udiv i32 %986, %921
  %989 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %990 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %991 = uitofp i32 %987 to float
  %992 = uitofp i32 %988 to float
  %993 = fadd fast float %989, %991
  %994 = fadd fast float %990, %992
  %995 = uitofp i32 %920 to float
  %996 = uitofp i32 %921 to float
  %997 = fdiv fast float %993, %995
  %998 = fdiv fast float %994, %996
  br label %999

; <label>:999                                     ; preds = %974, %901
  %1000 = phi float [ %997, %974 ], [ %969, %901 ]
  %1001 = phi float [ %998, %974 ], [ %970, %901 ]
  %1002 = and i32 %895, 16777216
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1113, label %1004

; <label>:1004                                    ; preds = %999
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1009 = fadd fast float %1006, %144
  %1010 = fadd fast float %1007, %145
  %1011 = fadd fast float %1008, %146
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = icmp eq i32 %46, 65535
  br i1 %1015, label %1110, label %1016

; <label>:1016                                    ; preds = %1004
  %1017 = lshr i32 %46, 1
  %1018 = shl i32 %1017, 2
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %46, 1
  %1022 = icmp ne i32 %1021, 0
  %1023 = lshr i32 %1020, 16
  %1024 = and i32 %1020, 65535
  %1025 = select i1 %1022, i32 %1023, i32 %1024
  %1026 = icmp eq i32 %1025, 65535
  br i1 %1026, label %1106, label %1027

; <label>:1027                                    ; preds = %1016
  %1028 = mul nuw nsw i32 %1025, 40
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = add nuw nsw i32 %1028, 12
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = add nuw nsw i32 %1028, 24
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = add nuw nsw i32 %1028, 36
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = fsub fast float %1009, %1030
  %1047 = fsub fast float %1010, %1031
  %1048 = fsub fast float %1011, %1032
  %1049 = fmul fast float %1045, %1046
  %1050 = fmul fast float %1045, %1047
  %1051 = fmul fast float %1045, %1048
  %1052 = call float @dx.op.unary.f32(i32 27, float %1049)  ; Round_ni(value)
  %1053 = call float @dx.op.unary.f32(i32 27, float %1050)  ; Round_ni(value)
  %1054 = call float @dx.op.unary.f32(i32 27, float %1051)  ; Round_ni(value)
  %1055 = fadd fast float %1052, 5.000000e-01
  %1056 = fadd fast float %1053, 5.000000e-01
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = fmul fast float %1055, %1035
  %1059 = fmul fast float %1056, %1036
  %1060 = fmul fast float %1057, %1037
  %1061 = shl i32 %46, 2
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = add i32 %1063, 0
  %1065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1066 = call float @dx.op.unary.f32(i32 22, float %1058)  ; Frc(value)
  %1067 = call float @dx.op.unary.f32(i32 22, float %1059)  ; Frc(value)
  %1068 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1065, %dx.types.Handle %40, float %1066, float %1067, float %1068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = fmul fast float %1070, 1.023000e+03
  %1074 = fmul fast float %1071, 1.023000e+03
  %1075 = fmul fast float %1072, 1.023000e+03
  %1076 = fadd fast float %1073, 5.000000e-01
  %1077 = fadd fast float %1074, 5.000000e-01
  %1078 = fadd fast float %1075, 5.000000e-01
  %1079 = call float @dx.op.unary.f32(i32 27, float %1076)  ; Round_ni(value)
  %1080 = call float @dx.op.unary.f32(i32 27, float %1077)  ; Round_ni(value)
  %1081 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1082 = fsub fast float %1049, %1052
  %1083 = fsub fast float %1050, %1053
  %1084 = fsub fast float %1051, %1054
  %1085 = fmul fast float %1082, 7.500000e-01
  %1086 = fmul fast float %1083, 7.500000e-01
  %1087 = fmul fast float %1084, 7.500000e-01
  %1088 = fadd fast float %1052, 1.250000e-01
  %1089 = fadd fast float %1088, %1085
  %1090 = fadd fast float %1089, %1079
  %1091 = fadd fast float %1053, 1.250000e-01
  %1092 = fadd fast float %1091, %1086
  %1093 = fadd fast float %1092, %1080
  %1094 = fadd fast float %1054, 1.250000e-01
  %1095 = fadd fast float %1094, %1087
  %1096 = fadd fast float %1095, %1081
  %1097 = fmul fast float %1090, %1040
  %1098 = fmul fast float %1093, %1041
  %1099 = fmul fast float %1096, %1042
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1103, %dx.types.Handle %38, float %1097, float %1098, float %1099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  br label %1106

; <label>:1106                                    ; preds = %1027, %1016
  %1107 = phi float [ %1105, %1027 ], [ -1.000000e+00, %1016 ]
  %1108 = fadd fast float %1107, %1014
  %1109 = call float @dx.op.unary.f32(i32 7, float %1108)  ; Saturate(value)
  br label %1110

; <label>:1110                                    ; preds = %1106, %1004
  %1111 = phi float [ %1109, %1106 ], [ %1014, %1004 ]
  %1112 = fmul fast float %1111, %425
  br label %1113

; <label>:1113                                    ; preds = %1110, %999
  %1114 = phi float [ %1112, %1110 ], [ %425, %999 ]
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 256
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1165, label %1119

; <label>:1119                                    ; preds = %1113
  %1120 = add i32 %45, 508
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1124, %dx.types.Handle %82, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = add i32 %45, 116
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = shl i32 %1129, 4
  %1131 = and i32 %1130, 32752
  %1132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1131)  ; LegacyF16ToF32(value)
  %1133 = lshr i32 %1129, 7
  %1134 = and i32 %1133, 32752
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = fsub fast float 1.000000e+00, %1114
  %1137 = call float @dx.op.binary.f32(i32 35, float %1136, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1138 = bitcast float %1114 to i32
  %1139 = sitofp i32 %1138 to float
  %1140 = fadd fast float %1139, 0xC1CFBF8940000000
  %1141 = fmul fast float %1135, %1140
  %1142 = fadd fast float %1141, 0x41CFBF8940000000
  %1143 = fptosi float %1142 to i32
  %1144 = bitcast i32 %1143 to float
  %1145 = bitcast float %1137 to i32
  %1146 = sitofp i32 %1145 to float
  %1147 = fadd fast float %1146, 0xC1CFBF8940000000
  %1148 = fmul fast float %1147, %1135
  %1149 = fadd fast float %1148, 0x41CFBF8940000000
  %1150 = fptosi float %1149 to i32
  %1151 = bitcast i32 %1150 to float
  %1152 = fmul fast float %1144, %1132
  %1153 = fmul fast float %1151, %1132
  %1154 = fsub fast float %1137, %1152
  %1155 = fadd fast float %1153, %1137
  %1156 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1157 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1158 = fsub fast float %1126, %1156
  %1159 = fsub fast float %1157, %1156
  %1160 = bitcast float %1159 to i32
  %1161 = sub nsw i32 2129859010, %1160
  %1162 = bitcast i32 %1161 to float
  %1163 = fmul fast float %1162, %1158
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  br label %1165

; <label>:1165                                    ; preds = %1119, %1113
  %1166 = phi float [ %1164, %1119 ], [ %1114, %1113 ]
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 128
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1187, label %1171

; <label>:1171                                    ; preds = %1165
  %1172 = add i32 %45, 492
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %1174, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1176, %dx.types.Handle %82, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 524288
  %1182 = icmp ne i32 %1181, 0
  %1183 = fcmp fast ogt float %1178, 0x3FE0101020000000
  %1184 = select i1 %1183, float 1.000000e+00, float 0.000000e+00
  %1185 = select i1 %1182, float %1184, float %1178
  %1186 = fmul fast float %1185, %1166
  br label %1187

; <label>:1187                                    ; preds = %1171, %1165
  %1188 = phi float [ %1186, %1171 ], [ %1166, %1165 ]
  %1189 = fcmp fast ult float %1188, 0x3F70101020000000
  br i1 %1189, label %1715, label %1190

; <label>:1190                                    ; preds = %1187
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 16
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1393, label %1195

; <label>:1195                                    ; preds = %1190
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %45, 444
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = add i32 %1200, 0
  %1202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1202, %dx.types.Handle %81, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = extractvalue %dx.types.ResRet.f32 %1203, 3
  %1208 = and i32 %1197, 255
  %1209 = uitofp i32 %1208 to float
  %1210 = lshr i32 %1197, 8
  %1211 = and i32 %1210, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1207, %1209
  %1214 = fadd fast float %1213, %1212
  %1215 = fmul fast float %1214, 0x3F70101000000000
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 512
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1228, label %1220

; <label>:1220                                    ; preds = %1195
  %1221 = add i32 %45, 536
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %1223, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1225, %dx.types.Handle %82, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  br label %1228

; <label>:1228                                    ; preds = %1220, %1195
  %1229 = phi float [ %1227, %1220 ], [ 1.000000e+00, %1195 ]
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = and i32 %1231, 33554432
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1340, label %1234

; <label>:1234                                    ; preds = %1228
  %1235 = add i32 %45, 240
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 65535
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = lshr i32 %1237, 16
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = add i32 %45, 244
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 65535
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = lshr i32 %1248, 24
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = and i32 %1248, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = lshr i32 %1248, 8
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1257, 0x3F70101020000000
  %1259 = lshr i32 %1248, 16
  %1260 = and i32 %1259, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = add i32 %45, 236
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1280 = bitcast float %1204 to i32
  %1281 = ashr i32 %1280, 1
  %1282 = sub nsw i32 1597463174, %1281
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1204, 5.000000e-01
  %1285 = fmul fast float %1283, %1283
  %1286 = fmul fast float %1285, %1284
  %1287 = fsub fast float 1.500000e+00, %1286
  %1288 = fmul fast float %1283, %1204
  %1289 = fmul fast float %1288, %1287
  %1290 = bitcast float %1205 to i32
  %1291 = ashr i32 %1290, 1
  %1292 = sub nsw i32 1597463174, %1291
  %1293 = bitcast i32 %1292 to float
  %1294 = fmul fast float %1205, 5.000000e-01
  %1295 = fmul fast float %1293, %1293
  %1296 = fmul fast float %1295, %1294
  %1297 = fsub fast float 1.500000e+00, %1296
  %1298 = fmul fast float %1293, %1205
  %1299 = fmul fast float %1298, %1297
  %1300 = bitcast float %1206 to i32
  %1301 = ashr i32 %1300, 1
  %1302 = sub nsw i32 1597463174, %1301
  %1303 = bitcast i32 %1302 to float
  %1304 = fmul fast float %1206, 5.000000e-01
  %1305 = fmul fast float %1303, %1303
  %1306 = fmul fast float %1305, %1304
  %1307 = fsub fast float 1.500000e+00, %1306
  %1308 = fmul fast float %1303, %1206
  %1309 = fmul fast float %1308, %1307
  %1310 = fsub fast float %1289, %1271
  %1311 = fsub fast float %1299, %1275
  %1312 = fsub fast float %1309, %1279
  %1313 = fmul fast float %1310, %1239
  %1314 = fmul fast float %1311, %1241
  %1315 = fmul fast float %1312, %1246
  %1316 = fadd fast float %1313, %1254
  %1317 = fadd fast float %1314, %1258
  %1318 = fadd fast float %1315, %1262
  %1319 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1322 = fmul fast float %1319, %1319
  %1323 = fmul fast float %1320, %1320
  %1324 = fmul fast float %1321, %1321
  %1325 = fsub fast float %1322, %1204
  %1326 = fsub fast float %1323, %1205
  %1327 = fsub fast float %1324, %1206
  %1328 = fmul fast float %1325, %1229
  %1329 = fmul fast float %1326, %1229
  %1330 = fmul fast float %1327, %1229
  %1331 = fadd fast float %1328, %1204
  %1332 = fadd fast float %1329, %1205
  %1333 = fadd fast float %1330, %1206
  %1334 = fadd fast float %1251, %1215
  %1335 = fsub fast float %1334, %1268
  %1336 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1337 = fsub fast float %1336, %1215
  %1338 = fmul fast float %1337, %1229
  %1339 = fadd fast float %1338, %1215
  br label %1393

; <label>:1340                                    ; preds = %1228
  %1341 = and i32 %1231, 134217728
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1377, label %1343

; <label>:1343                                    ; preds = %1340
  %1344 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1345 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1346 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1347 = fadd fast float %1344, -5.000000e-01
  %1348 = fadd fast float %1345, -5.000000e-01
  %1349 = fadd fast float %1346, -5.000000e-01
  %1350 = fmul fast float %1347, %1229
  %1351 = fmul fast float %1348, %1229
  %1352 = fmul fast float %1349, %1229
  %1353 = fadd fast float %1350, 5.000000e-01
  %1354 = fadd fast float %1351, 5.000000e-01
  %1355 = fadd fast float %1352, 5.000000e-01
  %1356 = call float @dx.op.unary.f32(i32 24, float %1204)  ; Sqrt(value)
  %1357 = call float @dx.op.unary.f32(i32 24, float %1205)  ; Sqrt(value)
  %1358 = call float @dx.op.unary.f32(i32 24, float %1206)  ; Sqrt(value)
  %1359 = fmul fast float %1353, 2.000000e+00
  %1360 = fsub fast float 1.000000e+00, %1359
  %1361 = fmul fast float %1360, %1356
  %1362 = fadd fast float %1361, %1359
  %1363 = fmul fast float %1362, %1356
  %1364 = fmul fast float %1354, 2.000000e+00
  %1365 = fsub fast float 1.000000e+00, %1364
  %1366 = fmul fast float %1365, %1357
  %1367 = fadd fast float %1366, %1364
  %1368 = fmul fast float %1367, %1357
  %1369 = fmul fast float %1355, 2.000000e+00
  %1370 = fsub fast float 1.000000e+00, %1369
  %1371 = fmul fast float %1370, %1358
  %1372 = fadd fast float %1371, %1369
  %1373 = fmul fast float %1372, %1358
  %1374 = fmul fast float %1363, %1363
  %1375 = fmul fast float %1368, %1368
  %1376 = fmul fast float %1373, %1373
  br label %1393

; <label>:1377                                    ; preds = %1340
  %1378 = fmul fast float %260, %260
  %1379 = fmul fast float %264, %264
  %1380 = fmul fast float %268, %268
  %1381 = fadd fast float %1378, -1.000000e+00
  %1382 = fadd fast float %1379, -1.000000e+00
  %1383 = fadd fast float %1380, -1.000000e+00
  %1384 = fmul fast float %1229, %1381
  %1385 = fmul fast float %1229, %1382
  %1386 = fmul fast float %1229, %1383
  %1387 = fadd fast float %1384, 1.000000e+00
  %1388 = fadd fast float %1385, 1.000000e+00
  %1389 = fadd fast float %1386, 1.000000e+00
  %1390 = fmul fast float %1387, %1204
  %1391 = fmul fast float %1388, %1205
  %1392 = fmul fast float %1389, %1206
  br label %1393

; <label>:1393                                    ; preds = %1377, %1343, %1234, %1190
  %1394 = phi float [ %1339, %1234 ], [ %1215, %1343 ], [ %1215, %1377 ], [ 0x3FA23C0BE0000000, %1190 ]
  %1395 = phi float [ %1331, %1234 ], [ %1374, %1343 ], [ %1390, %1377 ], [ 1.000000e+00, %1190 ]
  %1396 = phi float [ %1332, %1234 ], [ %1375, %1343 ], [ %1391, %1377 ], [ 1.000000e+00, %1190 ]
  %1397 = phi float [ %1333, %1234 ], [ %1376, %1343 ], [ %1392, %1377 ], [ 1.000000e+00, %1190 ]
  %1398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.i32 %1398, 1
  %1400 = and i32 %1399, 1
  %1401 = icmp ne i32 %1400, 0
  %1402 = add i32 %45, 356
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 32
  %1406 = icmp ne i32 %1405, 0
  %1407 = and i1 %1401, %1406
  %1408 = select i1 %1407, float 1.000000e+00, float %1395
  %1409 = select i1 %1407, float 0x3FD3333340000000, float %1396
  %1410 = select i1 %1407, float 0x3FD3333340000000, float %1397
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 32
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1487, label %1415

; <label>:1415                                    ; preds = %1393
  %1416 = add i32 %45, 108
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = add i32 %45, 460
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1423, %dx.types.Handle %81, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.ResRet.f32 %1424, 3
  %1429 = and i32 %1418, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = lshr i32 %1418, 8
  %1432 = and i32 %1431, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = lshr i32 %1418, 16
  %1435 = and i32 %1434, 255
  %1436 = uitofp i32 %1435 to float
  %1437 = fmul fast float %1436, 0x3F70101000000000
  %1438 = fmul fast float %1425, %1430
  %1439 = fadd fast float %1438, %1433
  %1440 = fmul fast float %1439, 0x3F70101000000000
  %1441 = fadd fast float %1426, -5.000000e-01
  %1442 = fadd fast float %1428, -5.000000e-01
  %1443 = fmul fast float %1441, %1437
  %1444 = fmul fast float %1442, %1437
  %1445 = fadd fast float %1443, 5.000000e-01
  %1446 = fadd fast float %1444, 5.000000e-01
  %1447 = fmul fast float %1445, 2.000000e+00
  %1448 = fadd fast float %1447, -1.000000e+00
  %1449 = fmul fast float %1446, 2.000000e+00
  %1450 = fadd fast float %1449, -1.000000e+00
  %1451 = fadd fast float %1448, %1450
  %1452 = fmul fast float %1451, 5.000000e-01
  %1453 = fsub fast float %1448, %1450
  %1454 = fmul fast float %1453, 5.000000e-01
  %1455 = call float @dx.op.unary.f32(i32 6, float %1452)  ; FAbs(value)
  %1456 = fsub fast float 1.000000e+00, %1455
  %1457 = call float @dx.op.unary.f32(i32 6, float %1454)  ; FAbs(value)
  %1458 = fsub fast float %1456, %1457
  %1459 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1454, float %1458, float %1452, float %1454, float %1458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1460 = call float @dx.op.unary.f32(i32 25, float %1459)  ; Rsqrt(value)
  %1461 = fmul fast float %1452, %1460
  %1462 = fmul fast float %1454, %1460
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 67108864
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1483, label %1467

; <label>:1467                                    ; preds = %1415
  %1468 = add i32 %45, 296
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 65535
  %1472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1471)  ; LegacyF16ToF32(value)
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 65535
  %1476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1475)  ; LegacyF16ToF32(value)
  %1477 = lshr i32 %1470, 16
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = fsub fast float %1440, %1478
  %1480 = fmul fast float %1479, %1472
  %1481 = fadd fast float %1480, %1476
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  br label %1483

; <label>:1483                                    ; preds = %1467, %1415
  %1484 = phi float [ %1482, %1467 ], [ %1440, %1415 ]
  %1485 = call float @dx.op.dot2.f32(i32 54, float %1461, float %1462, float %904, float %905)  ; Dot2(ax,ay,bx,by)
  %1486 = call float @dx.op.dot2.f32(i32 54, float %1461, float %1462, float %906, float %907)  ; Dot2(ax,ay,bx,by)
  br label %1487

; <label>:1487                                    ; preds = %1483, %1393
  %1488 = phi float [ %1484, %1483 ], [ 0x3FD6666660000000, %1393 ]
  %1489 = phi float [ %1485, %1483 ], [ 0.000000e+00, %1393 ]
  %1490 = phi float [ %1486, %1483 ], [ 0.000000e+00, %1393 ]
  %1491 = phi float [ %1427, %1483 ], [ 1.000000e+00, %1393 ]
  %1492 = add i32 %45, 176
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = lshr i32 %1494, 22
  %1496 = shl nuw nsw i32 %1495, 5
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 64
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1535, label %1502

; <label>:1502                                    ; preds = %1487
  %1503 = add i32 %45, 476
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = add i32 %1505, 0
  %1507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 131072
  %1511 = icmp eq i32 %1510, 0
  %1512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1507, %dx.types.Handle %81, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = fmul fast float %1513, %248
  %1517 = fmul fast float %1514, %251
  %1518 = fmul fast float %1515, %254
  br i1 %1511, label %1525, label %1519

; <label>:1519                                    ; preds = %1502
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = fmul fast float %1521, %1516
  %1523 = fmul fast float %1521, %1517
  %1524 = fmul fast float %1521, %1518
  br label %1525

; <label>:1525                                    ; preds = %1519, %1502
  %1526 = phi float [ %1522, %1519 ], [ %1516, %1502 ]
  %1527 = phi float [ %1523, %1519 ], [ %1517, %1502 ]
  %1528 = phi float [ %1524, %1519 ], [ %1518, %1502 ]
  %1529 = fmul fast float %1526, %1497
  %1530 = select i1 %186, float %1529, float %1526
  %1531 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1527, float %1528, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1532 = select i1 %186, float 0.000000e+00, float %1526
  %1533 = select i1 %186, float %1531, float %1527
  %1534 = select i1 %186, float 0.000000e+00, float %1528
  br label %1535

; <label>:1535                                    ; preds = %1525, %1487
  %1536 = phi float [ %1532, %1525 ], [ 0.000000e+00, %1487 ]
  %1537 = phi float [ %1533, %1525 ], [ 0.000000e+00, %1487 ]
  %1538 = phi float [ %1534, %1525 ], [ 0.000000e+00, %1487 ]
  br i1 %892, label %1539, label %1547

; <label>:1539                                    ; preds = %1535
  %1540 = fsub fast float 1.000000e+00, %1188
  %1541 = fmul fast float %1540, %881
  %1542 = fmul fast float %1540, %882
  %1543 = fmul fast float %1540, %883
  %1544 = fmul fast float %1540, %884
  %1545 = fmul fast float %1540, %885
  %1546 = fmul fast float %1540, %886
  br label %1547

; <label>:1547                                    ; preds = %1539, %1535
  %1548 = phi float [ %1541, %1539 ], [ %881, %1535 ]
  %1549 = phi float [ %1542, %1539 ], [ %882, %1535 ]
  %1550 = phi float [ %1543, %1539 ], [ %883, %1535 ]
  %1551 = phi float [ %1544, %1539 ], [ %884, %1535 ]
  %1552 = phi float [ %1545, %1539 ], [ %885, %1535 ]
  %1553 = phi float [ %1546, %1539 ], [ %886, %1535 ]
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 3
  %1557 = icmp eq i32 %1556, 3
  br i1 %1557, label %1633, label %1558

; <label>:1558                                    ; preds = %1547
  %1559 = and i32 %1555, 16
  %1560 = icmp ne i32 %1559, 0
  %1561 = select i1 %1560, float %1188, float 0.000000e+00
  %1562 = icmp eq i32 %1556, 0
  br i1 %1562, label %1563, label %1588

; <label>:1563                                    ; preds = %1558
  %1564 = and i32 %1555, 64
  %1565 = icmp ne i32 %1564, 0
  %1566 = select i1 %1565, float %1188, float 0.000000e+00
  %1567 = fsub fast float %1408, %1548
  %1568 = fsub fast float %1409, %1549
  %1569 = fsub fast float %1410, %1550
  %1570 = fmul fast float %1561, %1567
  %1571 = fmul fast float %1561, %1568
  %1572 = fmul fast float %1561, %1569
  %1573 = fadd fast float %1570, %1548
  %1574 = fadd fast float %1571, %1549
  %1575 = fadd fast float %1572, %1550
  %1576 = fsub fast float %1394, %887
  %1577 = fmul fast float %1561, %1576
  %1578 = fadd fast float %1577, %887
  %1579 = fsub fast float %1536, %1551
  %1580 = fsub fast float %1537, %1552
  %1581 = fsub fast float %1538, %1553
  %1582 = fmul fast float %1566, %1579
  %1583 = fmul fast float %1566, %1580
  %1584 = fmul fast float %1566, %1581
  %1585 = fadd fast float %1582, %1551
  %1586 = fadd fast float %1583, %1552
  %1587 = fadd fast float %1584, %1553
  br label %1633

; <label>:1588                                    ; preds = %1558
  %1589 = icmp eq i32 %1556, 1
  br i1 %1589, label %1590, label %1603

; <label>:1590                                    ; preds = %1588
  %1591 = fadd fast float %1408, -1.000000e+00
  %1592 = fadd fast float %1409, -1.000000e+00
  %1593 = fadd fast float %1410, -1.000000e+00
  %1594 = fmul fast float %1561, %1591
  %1595 = fmul fast float %1561, %1592
  %1596 = fmul fast float %1561, %1593
  %1597 = fadd fast float %1594, 1.000000e+00
  %1598 = fadd fast float %1595, 1.000000e+00
  %1599 = fadd fast float %1596, 1.000000e+00
  %1600 = fmul fast float %1597, %1548
  %1601 = fmul fast float %1598, %1549
  %1602 = fmul fast float %1599, %1550
  br label %1633

; <label>:1603                                    ; preds = %1588
  %1604 = icmp eq i32 %1556, 2
  br i1 %1604, label %1605, label %1633

; <label>:1605                                    ; preds = %1603
  %1606 = call float @dx.op.unary.f32(i32 24, float %1408)  ; Sqrt(value)
  %1607 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1608 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1609 = fadd fast float %1606, -5.000000e-01
  %1610 = fadd fast float %1607, -5.000000e-01
  %1611 = fadd fast float %1608, -5.000000e-01
  %1612 = fmul fast float %1609, %1561
  %1613 = fmul fast float %1610, %1561
  %1614 = fmul fast float %1611, %1561
  %1615 = fadd fast float %1612, 5.000000e-01
  %1616 = fadd fast float %1613, 5.000000e-01
  %1617 = fadd fast float %1614, 5.000000e-01
  %1618 = fmul fast float %1615, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1548
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1548
  %1623 = fmul fast float %1616, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1549
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1549
  %1628 = fmul fast float %1617, 2.000000e+00
  %1629 = fsub fast float 1.000000e+00, %1628
  %1630 = fmul fast float %1629, %1550
  %1631 = fadd fast float %1630, %1628
  %1632 = fmul fast float %1631, %1550
  br label %1633

; <label>:1633                                    ; preds = %1605, %1603, %1590, %1563, %1547
  %1634 = phi float [ %1548, %1547 ], [ %1622, %1605 ], [ %1548, %1603 ], [ %1600, %1590 ], [ %1573, %1563 ]
  %1635 = phi float [ %1549, %1547 ], [ %1627, %1605 ], [ %1549, %1603 ], [ %1601, %1590 ], [ %1574, %1563 ]
  %1636 = phi float [ %1550, %1547 ], [ %1632, %1605 ], [ %1550, %1603 ], [ %1602, %1590 ], [ %1575, %1563 ]
  %1637 = phi float [ %1551, %1547 ], [ %1551, %1605 ], [ %1551, %1603 ], [ %1551, %1590 ], [ %1585, %1563 ]
  %1638 = phi float [ %1552, %1547 ], [ %1552, %1605 ], [ %1552, %1603 ], [ %1552, %1590 ], [ %1586, %1563 ]
  %1639 = phi float [ %1553, %1547 ], [ %1553, %1605 ], [ %1553, %1603 ], [ %1553, %1590 ], [ %1587, %1563 ]
  %1640 = phi float [ %887, %1547 ], [ %887, %1605 ], [ %887, %1603 ], [ %887, %1590 ], [ %1578, %1563 ]
  %1641 = and i32 %1555, 12
  %1642 = icmp eq i32 %1641, 12
  br i1 %1642, label %1715, label %1643

; <label>:1643                                    ; preds = %1633
  %1644 = and i32 %1555, 2097184
  %1645 = icmp eq i32 %1644, 2097184
  %1646 = select i1 %1645, float %1188, float 0.000000e+00
  %1647 = and i32 %1555, 4194336
  %1648 = icmp eq i32 %1647, 4194336
  %1649 = select i1 %1648, float %1188, float 0.000000e+00
  %1650 = and i32 %1555, 8388640
  %1651 = icmp eq i32 %1650, 8388640
  %1652 = select i1 %1651, float %1188, float 0.000000e+00
  %1653 = icmp eq i32 %1641, 0
  br i1 %1653, label %1654, label %1667

; <label>:1654                                    ; preds = %1643
  %1655 = fsub fast float %1489, %879
  %1656 = fsub fast float %1490, %880
  %1657 = fmul fast float %1646, %1655
  %1658 = fmul fast float %1646, %1656
  %1659 = fadd fast float %1657, %879
  %1660 = fadd fast float %1658, %880
  %1661 = fsub fast float %1491, %890
  %1662 = fmul fast float %1649, %1661
  %1663 = fadd fast float %1662, %890
  %1664 = fsub fast float %1488, %889
  %1665 = fmul fast float %1652, %1664
  %1666 = fadd fast float %1665, %889
  br label %1715

; <label>:1667                                    ; preds = %1643
  %1668 = icmp eq i32 %1641, 4
  br i1 %1668, label %1669, label %1701

; <label>:1669                                    ; preds = %1667
  %1670 = fmul fast float %1646, %1489
  %1671 = fmul fast float %1646, %1490
  %1672 = fadd fast float %1670, %879
  %1673 = fadd fast float %1671, %880
  %1674 = call float @dx.op.binary.f32(i32 36, float %890, float %1491)  ; FMin(a,b)
  %1675 = fsub fast float %1674, %890
  %1676 = fmul fast float %1675, %1649
  %1677 = fadd fast float %1676, %890
  %1678 = fadd fast float %1488, %889
  %1679 = fmul fast float %1678, 0x3FF337FAE0000000
  %1680 = fmul fast float %889, %889
  %1681 = fmul fast float %1488, %1488
  %1682 = fadd fast float %1681, %1680
  %1683 = fmul fast float %1682, 0x3FE5152B00000000
  %1684 = fmul fast float %889, 0xBFCC1F85E0000000
  %1685 = fmul fast float %1684, %1488
  %1686 = fadd fast float %1685, 0xBFE1363700000000
  %1687 = fadd fast float %1686, %1679
  %1688 = fsub fast float %1687, %1683
  %1689 = fmul fast float %1678, 0x3FBA6F0D00000000
  %1690 = fmul fast float %1682, 0x3FD0432880000000
  %1691 = fmul fast float %889, 0xBFEF110800000000
  %1692 = fmul fast float %1691, %1488
  %1693 = fadd fast float %1692, 1.000000e+00
  %1694 = fsub fast float %1693, %1689
  %1695 = fadd fast float %1694, %1690
  %1696 = fdiv fast float %1688, %1695
  %1697 = call float @dx.op.unary.f32(i32 7, float %1696)  ; Saturate(value)
  %1698 = fsub fast float %1697, %889
  %1699 = fmul fast float %1698, %1652
  %1700 = fadd fast float %1699, %889
  br label %1715

; <label>:1701                                    ; preds = %1667
  %1702 = icmp eq i32 %1641, 8
  br i1 %1702, label %1703, label %1715

; <label>:1703                                    ; preds = %1701
  %1704 = fmul fast float %1646, %1489
  %1705 = fmul fast float %1646, %1490
  %1706 = fadd fast float %1704, %879
  %1707 = fadd fast float %1705, %880
  %1708 = call float @dx.op.binary.f32(i32 36, float %890, float %1491)  ; FMin(a,b)
  %1709 = fsub fast float %1708, %890
  %1710 = fmul fast float %1709, %1649
  %1711 = fadd fast float %1710, %890
  %1712 = fsub fast float %1488, %889
  %1713 = fmul fast float %1652, %1712
  %1714 = fadd fast float %1713, %889
  br label %1715

; <label>:1715                                    ; preds = %1703, %1701, %1669, %1654, %1633, %1187, %891, %878
  %1716 = phi float [ %879, %1633 ], [ %879, %1187 ], [ %879, %878 ], [ %1706, %1703 ], [ %879, %1701 ], [ %1672, %1669 ], [ %1659, %1654 ], [ %879, %891 ]
  %1717 = phi float [ %880, %1633 ], [ %880, %1187 ], [ %880, %878 ], [ %1707, %1703 ], [ %880, %1701 ], [ %1673, %1669 ], [ %1660, %1654 ], [ %880, %891 ]
  %1718 = phi float [ %1634, %1633 ], [ %881, %1187 ], [ %881, %878 ], [ %1634, %1703 ], [ %1634, %1701 ], [ %1634, %1669 ], [ %1634, %1654 ], [ %881, %891 ]
  %1719 = phi float [ %1635, %1633 ], [ %882, %1187 ], [ %882, %878 ], [ %1635, %1703 ], [ %1635, %1701 ], [ %1635, %1669 ], [ %1635, %1654 ], [ %882, %891 ]
  %1720 = phi float [ %1636, %1633 ], [ %883, %1187 ], [ %883, %878 ], [ %1636, %1703 ], [ %1636, %1701 ], [ %1636, %1669 ], [ %1636, %1654 ], [ %883, %891 ]
  %1721 = phi float [ %1637, %1633 ], [ %884, %1187 ], [ %884, %878 ], [ %1637, %1703 ], [ %1637, %1701 ], [ %1637, %1669 ], [ %1637, %1654 ], [ %884, %891 ]
  %1722 = phi float [ %1638, %1633 ], [ %885, %1187 ], [ %885, %878 ], [ %1638, %1703 ], [ %1638, %1701 ], [ %1638, %1669 ], [ %1638, %1654 ], [ %885, %891 ]
  %1723 = phi float [ %1639, %1633 ], [ %886, %1187 ], [ %886, %878 ], [ %1639, %1703 ], [ %1639, %1701 ], [ %1639, %1669 ], [ %1639, %1654 ], [ %886, %891 ]
  %1724 = phi float [ %1640, %1633 ], [ %887, %1187 ], [ %887, %878 ], [ %1640, %1703 ], [ %1640, %1701 ], [ %1640, %1669 ], [ %1640, %1654 ], [ %887, %891 ]
  %1725 = phi float [ %889, %1633 ], [ %889, %1187 ], [ %889, %878 ], [ %1714, %1703 ], [ %889, %1701 ], [ %1700, %1669 ], [ %1666, %1654 ], [ %889, %891 ]
  %1726 = phi float [ %890, %1633 ], [ %890, %1187 ], [ %890, %878 ], [ %1711, %1703 ], [ %890, %1701 ], [ %1677, %1669 ], [ %1663, %1654 ], [ %890, %891 ]
  br i1 %375, label %2551, label %1727

; <label>:1727                                    ; preds = %1715
  %1728 = icmp ult i32 %428, 3
  %1729 = add i32 %45, 56
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = add i32 %45, 60
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = or i32 %1734, %1731
  %1736 = icmp eq i32 %1735, 0
  br i1 %1736, label %2551, label %1737

; <label>:1737                                    ; preds = %1727
  %1738 = and i32 %1731, 262144
  %1739 = icmp ne i32 %1738, 0
  %1740 = select i1 %1739, float %48, float 1.000000e+00
  %1741 = select i1 %1739, float %49, float 0.000000e+00
  %1742 = select i1 %1739, float %50, float 0.000000e+00
  %1743 = select i1 %1739, float %51, float 1.000000e+00
  %1744 = select i1 %1739, float %52, float %73
  %1745 = select i1 %1739, float %53, float %74
  %1746 = add i32 %45, 316
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = lshr i32 %1748, 16
  %1750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1749)  ; LegacyF16ToF32(value)
  %1751 = fmul fast float %1750, 0x3F50624DE0000000
  %1752 = add i32 %45, 120
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = lshr i32 %1754, 16
  %1756 = and i32 %1755, 255
  %1757 = lshr i32 %1754, 24
  %1758 = add i32 %45, 324
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 65535
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = lshr i32 %1760, 16
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = add i32 %45, 64
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = lshr i32 %1767, 22
  %1769 = shl nuw nsw i32 %1768, 5
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = shl i32 %1767, 4
  %1772 = and i32 %1771, 32752
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = lshr i32 %1767, 7
  %1775 = and i32 %1774, 32752
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1779 = fmul fast float %1778, 1.000000e+03
  %1780 = fmul fast float %325, %1779
  %1781 = call float @dx.op.unary.f32(i32 22, float %1780)  ; Frc(value)
  %1782 = fadd fast float %1781, %315
  %1783 = fmul fast float %326, %1779
  %1784 = call float @dx.op.unary.f32(i32 22, float %1783)  ; Frc(value)
  %1785 = fadd fast float %1784, %317
  %1786 = fmul fast float %1751, %1779
  %1787 = call float @dx.op.unary.f32(i32 22, float %1786)  ; Frc(value)
  %1788 = fmul fast float %1787, 0x401921FB60000000
  %1789 = fadd fast float %1788, %1770
  %1790 = call float @dx.op.unary.f32(i32 13, float %1789)  ; Sin(value)
  %1791 = call float @dx.op.unary.f32(i32 12, float %1789)  ; Cos(value)
  %1792 = fsub fast float -0.000000e+00, %1790
  %1793 = fadd fast float %1744, -5.000000e-01
  %1794 = fadd fast float %1745, -5.000000e-01
  %1795 = fmul fast float %1762, %1793
  %1796 = fmul fast float %1764, %1794
  %1797 = fadd fast float %1795, 5.000000e-01
  %1798 = fadd fast float %1796, 5.000000e-01
  %1799 = fmul fast float %1773, %1797
  %1800 = fmul fast float %1776, %1798
  %1801 = fmul fast float %1791, %1799
  %1802 = call float @dx.op.tertiary.f32(i32 46, float %1792, float %1800, float %1801)  ; FMad(a,b,c)
  %1803 = fmul fast float %1790, %1799
  %1804 = call float @dx.op.tertiary.f32(i32 46, float %1791, float %1800, float %1803)  ; FMad(a,b,c)
  %1805 = fadd fast float %1782, %1802
  %1806 = fadd fast float %1785, %1804
  %1807 = icmp ugt i32 %1756, 1
  %1808 = icmp ugt i32 %1754, 33554431
  %1809 = or i1 %1808, %1807
  br i1 %1809, label %1810, label %1835

; <label>:1810                                    ; preds = %1737
  %1811 = add i32 %45, 260
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = lshr i32 %1813, 16
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = fmul fast float %1778, %1815
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = mul nuw nsw i32 %1756, %1757
  %1819 = uitofp i32 %1818 to float
  %1820 = fmul fast float %1817, %1819
  %1821 = call float @dx.op.unary.f32(i32 27, float %1820)  ; Round_ni(value)
  %1822 = fptoui float %1821 to i32
  %1823 = urem i32 %1822, %1756
  %1824 = udiv i32 %1822, %1757
  %1825 = call float @dx.op.unary.f32(i32 22, float %1805)  ; Frc(value)
  %1826 = call float @dx.op.unary.f32(i32 22, float %1806)  ; Frc(value)
  %1827 = uitofp i32 %1823 to float
  %1828 = uitofp i32 %1824 to float
  %1829 = fadd fast float %1825, %1827
  %1830 = fadd fast float %1826, %1828
  %1831 = uitofp i32 %1756 to float
  %1832 = uitofp i32 %1757 to float
  %1833 = fdiv fast float %1829, %1831
  %1834 = fdiv fast float %1830, %1832
  br label %1835

; <label>:1835                                    ; preds = %1810, %1737
  %1836 = phi float [ %1833, %1810 ], [ %1805, %1737 ]
  %1837 = phi float [ %1834, %1810 ], [ %1806, %1737 ]
  %1838 = and i32 %1731, 16777216
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %1949, label %1840

; <label>:1840                                    ; preds = %1835
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1845 = fadd fast float %1842, %144
  %1846 = fadd fast float %1843, %145
  %1847 = fadd fast float %1844, %146
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1850 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1851 = icmp eq i32 %46, 65535
  br i1 %1851, label %1946, label %1852

; <label>:1852                                    ; preds = %1840
  %1853 = lshr i32 %46, 1
  %1854 = shl i32 %1853, 2
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %46, 1
  %1858 = icmp ne i32 %1857, 0
  %1859 = lshr i32 %1856, 16
  %1860 = and i32 %1856, 65535
  %1861 = select i1 %1858, i32 %1859, i32 %1860
  %1862 = icmp eq i32 %1861, 65535
  br i1 %1862, label %1942, label %1863

; <label>:1863                                    ; preds = %1852
  %1864 = mul nuw nsw i32 %1861, 40
  %1865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.ResRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.ResRet.f32 %1865, 2
  %1869 = add nuw nsw i32 %1864, 12
  %1870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.ResRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.ResRet.f32 %1870, 2
  %1874 = add nuw nsw i32 %1864, 24
  %1875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = add nuw nsw i32 %1864, 36
  %1880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  %1882 = fsub fast float %1845, %1866
  %1883 = fsub fast float %1846, %1867
  %1884 = fsub fast float %1847, %1868
  %1885 = fmul fast float %1881, %1882
  %1886 = fmul fast float %1881, %1883
  %1887 = fmul fast float %1881, %1884
  %1888 = call float @dx.op.unary.f32(i32 27, float %1885)  ; Round_ni(value)
  %1889 = call float @dx.op.unary.f32(i32 27, float %1886)  ; Round_ni(value)
  %1890 = call float @dx.op.unary.f32(i32 27, float %1887)  ; Round_ni(value)
  %1891 = fadd fast float %1888, 5.000000e-01
  %1892 = fadd fast float %1889, 5.000000e-01
  %1893 = fadd fast float %1890, 5.000000e-01
  %1894 = fmul fast float %1891, %1871
  %1895 = fmul fast float %1892, %1872
  %1896 = fmul fast float %1893, %1873
  %1897 = shl i32 %46, 2
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = add i32 %1899, 0
  %1901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1902 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1903 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1904 = call float @dx.op.unary.f32(i32 22, float %1896)  ; Frc(value)
  %1905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1901, %dx.types.Handle %40, float %1902, float %1903, float %1904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = fmul fast float %1906, 1.023000e+03
  %1910 = fmul fast float %1907, 1.023000e+03
  %1911 = fmul fast float %1908, 1.023000e+03
  %1912 = fadd fast float %1909, 5.000000e-01
  %1913 = fadd fast float %1910, 5.000000e-01
  %1914 = fadd fast float %1911, 5.000000e-01
  %1915 = call float @dx.op.unary.f32(i32 27, float %1912)  ; Round_ni(value)
  %1916 = call float @dx.op.unary.f32(i32 27, float %1913)  ; Round_ni(value)
  %1917 = call float @dx.op.unary.f32(i32 27, float %1914)  ; Round_ni(value)
  %1918 = fsub fast float %1885, %1888
  %1919 = fsub fast float %1886, %1889
  %1920 = fsub fast float %1887, %1890
  %1921 = fmul fast float %1918, 7.500000e-01
  %1922 = fmul fast float %1919, 7.500000e-01
  %1923 = fmul fast float %1920, 7.500000e-01
  %1924 = fadd fast float %1888, 1.250000e-01
  %1925 = fadd fast float %1924, %1921
  %1926 = fadd fast float %1925, %1915
  %1927 = fadd fast float %1889, 1.250000e-01
  %1928 = fadd fast float %1927, %1922
  %1929 = fadd fast float %1928, %1916
  %1930 = fadd fast float %1890, 1.250000e-01
  %1931 = fadd fast float %1930, %1923
  %1932 = fadd fast float %1931, %1917
  %1933 = fmul fast float %1926, %1876
  %1934 = fmul fast float %1929, %1877
  %1935 = fmul fast float %1932, %1878
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %1937, 0
  %1939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1939, %dx.types.Handle %38, float %1933, float %1934, float %1935, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  br label %1942

; <label>:1942                                    ; preds = %1863, %1852
  %1943 = phi float [ %1941, %1863 ], [ -1.000000e+00, %1852 ]
  %1944 = fadd fast float %1943, %1850
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  br label %1946

; <label>:1946                                    ; preds = %1942, %1840
  %1947 = phi float [ %1945, %1942 ], [ %1850, %1840 ]
  %1948 = fmul fast float %1947, %424
  br label %1949

; <label>:1949                                    ; preds = %1946, %1835
  %1950 = phi float [ %1948, %1946 ], [ %424, %1835 ]
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = and i32 %1952, 256
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %2001, label %1955

; <label>:1955                                    ; preds = %1949
  %1956 = add i32 %45, 512
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = add i32 %1958, 0
  %1960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1960, %dx.types.Handle %82, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = add i32 %45, 132
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = shl i32 %1965, 4
  %1967 = and i32 %1966, 32752
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = lshr i32 %1965, 7
  %1970 = and i32 %1969, 32752
  %1971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1970)  ; LegacyF16ToF32(value)
  %1972 = fsub fast float 1.000000e+00, %1950
  %1973 = call float @dx.op.binary.f32(i32 35, float %1972, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1974 = bitcast float %1950 to i32
  %1975 = sitofp i32 %1974 to float
  %1976 = fadd fast float %1975, 0xC1CFBF8940000000
  %1977 = fmul fast float %1971, %1976
  %1978 = fadd fast float %1977, 0x41CFBF8940000000
  %1979 = fptosi float %1978 to i32
  %1980 = bitcast i32 %1979 to float
  %1981 = bitcast float %1973 to i32
  %1982 = sitofp i32 %1981 to float
  %1983 = fadd fast float %1982, 0xC1CFBF8940000000
  %1984 = fmul fast float %1983, %1971
  %1985 = fadd fast float %1984, 0x41CFBF8940000000
  %1986 = fptosi float %1985 to i32
  %1987 = bitcast i32 %1986 to float
  %1988 = fmul fast float %1980, %1968
  %1989 = fmul fast float %1987, %1968
  %1990 = fsub fast float %1973, %1988
  %1991 = fadd fast float %1989, %1973
  %1992 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1993 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1994 = fsub fast float %1962, %1992
  %1995 = fsub fast float %1993, %1992
  %1996 = bitcast float %1995 to i32
  %1997 = sub nsw i32 2129859010, %1996
  %1998 = bitcast i32 %1997 to float
  %1999 = fmul fast float %1998, %1994
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  br label %2001

; <label>:2001                                    ; preds = %1955, %1949
  %2002 = phi float [ %2000, %1955 ], [ %1950, %1949 ]
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = and i32 %2004, 128
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2023, label %2007

; <label>:2007                                    ; preds = %2001
  %2008 = add i32 %45, 496
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = add i32 %2010, 0
  %2012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2012, %dx.types.Handle %82, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 524288
  %2018 = icmp ne i32 %2017, 0
  %2019 = fcmp fast ogt float %2014, 0x3FE0101020000000
  %2020 = select i1 %2019, float 1.000000e+00, float 0.000000e+00
  %2021 = select i1 %2018, float %2020, float %2014
  %2022 = fmul fast float %2021, %2002
  br label %2023

; <label>:2023                                    ; preds = %2007, %2001
  %2024 = phi float [ %2022, %2007 ], [ %2002, %2001 ]
  %2025 = fcmp fast ult float %2024, 0x3F70101020000000
  br i1 %2025, label %2551, label %2026

; <label>:2026                                    ; preds = %2023
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 16
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2229, label %2031

; <label>:2031                                    ; preds = %2026
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %45, 448
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %2036, 0
  %2038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2038, %dx.types.Handle %81, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.ResRet.f32 %2039, 1
  %2042 = extractvalue %dx.types.ResRet.f32 %2039, 2
  %2043 = extractvalue %dx.types.ResRet.f32 %2039, 3
  %2044 = and i32 %2033, 255
  %2045 = uitofp i32 %2044 to float
  %2046 = lshr i32 %2033, 8
  %2047 = and i32 %2046, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = fmul fast float %2043, %2045
  %2050 = fadd fast float %2049, %2048
  %2051 = fmul fast float %2050, 0x3F70101000000000
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 512
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2064, label %2056

; <label>:2056                                    ; preds = %2031
  %2057 = add i32 %45, 540
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = add i32 %2059, 0
  %2061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2061, %dx.types.Handle %82, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  br label %2064

; <label>:2064                                    ; preds = %2056, %2031
  %2065 = phi float [ %2063, %2056 ], [ 1.000000e+00, %2031 ]
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 33554432
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %2176, label %2070

; <label>:2070                                    ; preds = %2064
  %2071 = add i32 %45, 256
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 65535
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = lshr i32 %2073, 16
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = add i32 %45, 260
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %2080, 65535
  %2082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2081)  ; LegacyF16ToF32(value)
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = lshr i32 %2084, 24
  %2086 = uitofp i32 %2085 to float
  %2087 = fmul fast float %2086, 0x3F70101020000000
  %2088 = and i32 %2084, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = lshr i32 %2084, 8
  %2092 = and i32 %2091, 255
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2093, 0x3F70101020000000
  %2095 = lshr i32 %2084, 16
  %2096 = and i32 %2095, 255
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101020000000
  %2099 = add i32 %45, 252
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = lshr i32 %2101, 24
  %2103 = uitofp i32 %2102 to float
  %2104 = fmul fast float %2103, 0x3F70101020000000
  %2105 = and i32 %2101, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = lshr i32 %2101, 8
  %2109 = and i32 %2108, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = lshr i32 %2101, 16
  %2113 = and i32 %2112, 255
  %2114 = uitofp i32 %2113 to float
  %2115 = fmul fast float %2114, 0x3F70101020000000
  %2116 = bitcast float %2040 to i32
  %2117 = ashr i32 %2116, 1
  %2118 = sub nsw i32 1597463174, %2117
  %2119 = bitcast i32 %2118 to float
  %2120 = fmul fast float %2040, 5.000000e-01
  %2121 = fmul fast float %2119, %2119
  %2122 = fmul fast float %2121, %2120
  %2123 = fsub fast float 1.500000e+00, %2122
  %2124 = fmul fast float %2119, %2040
  %2125 = fmul fast float %2124, %2123
  %2126 = bitcast float %2041 to i32
  %2127 = ashr i32 %2126, 1
  %2128 = sub nsw i32 1597463174, %2127
  %2129 = bitcast i32 %2128 to float
  %2130 = fmul fast float %2041, 5.000000e-01
  %2131 = fmul fast float %2129, %2129
  %2132 = fmul fast float %2131, %2130
  %2133 = fsub fast float 1.500000e+00, %2132
  %2134 = fmul fast float %2129, %2041
  %2135 = fmul fast float %2134, %2133
  %2136 = bitcast float %2042 to i32
  %2137 = ashr i32 %2136, 1
  %2138 = sub nsw i32 1597463174, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2042, 5.000000e-01
  %2141 = fmul fast float %2139, %2139
  %2142 = fmul fast float %2141, %2140
  %2143 = fsub fast float 1.500000e+00, %2142
  %2144 = fmul fast float %2139, %2042
  %2145 = fmul fast float %2144, %2143
  %2146 = fsub fast float %2125, %2107
  %2147 = fsub fast float %2135, %2111
  %2148 = fsub fast float %2145, %2115
  %2149 = fmul fast float %2146, %2075
  %2150 = fmul fast float %2147, %2077
  %2151 = fmul fast float %2148, %2082
  %2152 = fadd fast float %2149, %2090
  %2153 = fadd fast float %2150, %2094
  %2154 = fadd fast float %2151, %2098
  %2155 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2156 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2157 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2158 = fmul fast float %2155, %2155
  %2159 = fmul fast float %2156, %2156
  %2160 = fmul fast float %2157, %2157
  %2161 = fsub fast float %2158, %2040
  %2162 = fsub fast float %2159, %2041
  %2163 = fsub fast float %2160, %2042
  %2164 = fmul fast float %2161, %2065
  %2165 = fmul fast float %2162, %2065
  %2166 = fmul fast float %2163, %2065
  %2167 = fadd fast float %2164, %2040
  %2168 = fadd fast float %2165, %2041
  %2169 = fadd fast float %2166, %2042
  %2170 = fadd fast float %2087, %2051
  %2171 = fsub fast float %2170, %2104
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2173 = fsub fast float %2172, %2051
  %2174 = fmul fast float %2173, %2065
  %2175 = fadd fast float %2174, %2051
  br label %2229

; <label>:2176                                    ; preds = %2064
  %2177 = and i32 %2067, 134217728
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2213, label %2179

; <label>:2179                                    ; preds = %2176
  %2180 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2181 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %2182 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2183 = fadd fast float %2180, -5.000000e-01
  %2184 = fadd fast float %2181, -5.000000e-01
  %2185 = fadd fast float %2182, -5.000000e-01
  %2186 = fmul fast float %2183, %2065
  %2187 = fmul fast float %2184, %2065
  %2188 = fmul fast float %2185, %2065
  %2189 = fadd fast float %2186, 5.000000e-01
  %2190 = fadd fast float %2187, 5.000000e-01
  %2191 = fadd fast float %2188, 5.000000e-01
  %2192 = call float @dx.op.unary.f32(i32 24, float %2040)  ; Sqrt(value)
  %2193 = call float @dx.op.unary.f32(i32 24, float %2041)  ; Sqrt(value)
  %2194 = call float @dx.op.unary.f32(i32 24, float %2042)  ; Sqrt(value)
  %2195 = fmul fast float %2189, 2.000000e+00
  %2196 = fsub fast float 1.000000e+00, %2195
  %2197 = fmul fast float %2196, %2192
  %2198 = fadd fast float %2197, %2195
  %2199 = fmul fast float %2198, %2192
  %2200 = fmul fast float %2190, 2.000000e+00
  %2201 = fsub fast float 1.000000e+00, %2200
  %2202 = fmul fast float %2201, %2193
  %2203 = fadd fast float %2202, %2200
  %2204 = fmul fast float %2203, %2193
  %2205 = fmul fast float %2191, 2.000000e+00
  %2206 = fsub fast float 1.000000e+00, %2205
  %2207 = fmul fast float %2206, %2194
  %2208 = fadd fast float %2207, %2205
  %2209 = fmul fast float %2208, %2194
  %2210 = fmul fast float %2199, %2199
  %2211 = fmul fast float %2204, %2204
  %2212 = fmul fast float %2209, %2209
  br label %2229

; <label>:2213                                    ; preds = %2176
  %2214 = fmul fast float %302, %302
  %2215 = fmul fast float %306, %306
  %2216 = fmul fast float %310, %310
  %2217 = fadd fast float %2214, -1.000000e+00
  %2218 = fadd fast float %2215, -1.000000e+00
  %2219 = fadd fast float %2216, -1.000000e+00
  %2220 = fmul fast float %2065, %2217
  %2221 = fmul fast float %2065, %2218
  %2222 = fmul fast float %2065, %2219
  %2223 = fadd fast float %2220, 1.000000e+00
  %2224 = fadd fast float %2221, 1.000000e+00
  %2225 = fadd fast float %2222, 1.000000e+00
  %2226 = fmul fast float %2223, %2040
  %2227 = fmul fast float %2224, %2041
  %2228 = fmul fast float %2225, %2042
  br label %2229

; <label>:2229                                    ; preds = %2213, %2179, %2070, %2026
  %2230 = phi float [ %2175, %2070 ], [ %2051, %2179 ], [ %2051, %2213 ], [ 0x3FA23C0BE0000000, %2026 ]
  %2231 = phi float [ %2167, %2070 ], [ %2210, %2179 ], [ %2226, %2213 ], [ 1.000000e+00, %2026 ]
  %2232 = phi float [ %2168, %2070 ], [ %2211, %2179 ], [ %2227, %2213 ], [ 1.000000e+00, %2026 ]
  %2233 = phi float [ %2169, %2070 ], [ %2212, %2179 ], [ %2228, %2213 ], [ 1.000000e+00, %2026 ]
  %2234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.i32 %2234, 1
  %2236 = and i32 %2235, 1
  %2237 = icmp ne i32 %2236, 0
  %2238 = add i32 %45, 356
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 32
  %2242 = icmp ne i32 %2241, 0
  %2243 = and i1 %2237, %2242
  %2244 = select i1 %2243, float 1.000000e+00, float %2231
  %2245 = select i1 %2243, float 0x3FD3333340000000, float %2232
  %2246 = select i1 %2243, float 0x3FD3333340000000, float %2233
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = and i32 %2248, 32
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2323, label %2251

; <label>:2251                                    ; preds = %2229
  %2252 = add i32 %45, 124
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = add i32 %45, 464
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %2257, 0
  %2259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2259, %dx.types.Handle %81, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = extractvalue %dx.types.ResRet.f32 %2260, 1
  %2263 = extractvalue %dx.types.ResRet.f32 %2260, 2
  %2264 = extractvalue %dx.types.ResRet.f32 %2260, 3
  %2265 = and i32 %2254, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = lshr i32 %2254, 8
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = lshr i32 %2254, 16
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101000000000
  %2274 = fmul fast float %2261, %2266
  %2275 = fadd fast float %2274, %2269
  %2276 = fmul fast float %2275, 0x3F70101000000000
  %2277 = fadd fast float %2262, -5.000000e-01
  %2278 = fadd fast float %2264, -5.000000e-01
  %2279 = fmul fast float %2277, %2273
  %2280 = fmul fast float %2278, %2273
  %2281 = fadd fast float %2279, 5.000000e-01
  %2282 = fadd fast float %2280, 5.000000e-01
  %2283 = fmul fast float %2281, 2.000000e+00
  %2284 = fadd fast float %2283, -1.000000e+00
  %2285 = fmul fast float %2282, 2.000000e+00
  %2286 = fadd fast float %2285, -1.000000e+00
  %2287 = fadd fast float %2284, %2286
  %2288 = fmul fast float %2287, 5.000000e-01
  %2289 = fsub fast float %2284, %2286
  %2290 = fmul fast float %2289, 5.000000e-01
  %2291 = call float @dx.op.unary.f32(i32 6, float %2288)  ; FAbs(value)
  %2292 = fsub fast float 1.000000e+00, %2291
  %2293 = call float @dx.op.unary.f32(i32 6, float %2290)  ; FAbs(value)
  %2294 = fsub fast float %2292, %2293
  %2295 = call float @dx.op.dot3.f32(i32 55, float %2288, float %2290, float %2294, float %2288, float %2290, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %2296 = call float @dx.op.unary.f32(i32 25, float %2295)  ; Rsqrt(value)
  %2297 = fmul fast float %2288, %2296
  %2298 = fmul fast float %2290, %2296
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 67108864
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2319, label %2303

; <label>:2303                                    ; preds = %2251
  %2304 = add i32 %45, 312
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 65535
  %2308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2307)  ; LegacyF16ToF32(value)
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 65535
  %2312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2311)  ; LegacyF16ToF32(value)
  %2313 = lshr i32 %2306, 16
  %2314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2313)  ; LegacyF16ToF32(value)
  %2315 = fsub fast float %2276, %2314
  %2316 = fmul fast float %2315, %2308
  %2317 = fadd fast float %2316, %2312
  %2318 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  br label %2319

; <label>:2319                                    ; preds = %2303, %2251
  %2320 = phi float [ %2318, %2303 ], [ %2276, %2251 ]
  %2321 = call float @dx.op.dot2.f32(i32 54, float %2297, float %2298, float %1740, float %1741)  ; Dot2(ax,ay,bx,by)
  %2322 = call float @dx.op.dot2.f32(i32 54, float %2297, float %2298, float %1742, float %1743)  ; Dot2(ax,ay,bx,by)
  br label %2323

; <label>:2323                                    ; preds = %2319, %2229
  %2324 = phi float [ %2320, %2319 ], [ 0x3FD6666660000000, %2229 ]
  %2325 = phi float [ %2321, %2319 ], [ 0.000000e+00, %2229 ]
  %2326 = phi float [ %2322, %2319 ], [ 0.000000e+00, %2229 ]
  %2327 = phi float [ %2263, %2319 ], [ 1.000000e+00, %2229 ]
  %2328 = add i32 %45, 192
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = lshr i32 %2330, 22
  %2332 = shl nuw nsw i32 %2331, 5
  %2333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2332)  ; LegacyF16ToF32(value)
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 64
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2371, label %2338

; <label>:2338                                    ; preds = %2323
  %2339 = add i32 %45, 480
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = add i32 %2341, 0
  %2343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 131072
  %2347 = icmp eq i32 %2346, 0
  %2348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2343, %dx.types.Handle %81, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2348, 2
  %2352 = fmul fast float %2349, %290
  %2353 = fmul fast float %2350, %293
  %2354 = fmul fast float %2351, %296
  br i1 %2347, label %2361, label %2355

; <label>:2355                                    ; preds = %2338
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = fmul fast float %2357, %2352
  %2359 = fmul fast float %2357, %2353
  %2360 = fmul fast float %2357, %2354
  br label %2361

; <label>:2361                                    ; preds = %2355, %2338
  %2362 = phi float [ %2358, %2355 ], [ %2352, %2338 ]
  %2363 = phi float [ %2359, %2355 ], [ %2353, %2338 ]
  %2364 = phi float [ %2360, %2355 ], [ %2354, %2338 ]
  %2365 = fmul fast float %2362, %2333
  %2366 = select i1 %186, float %2365, float %2362
  %2367 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2363, float %2364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2368 = select i1 %186, float 0.000000e+00, float %2362
  %2369 = select i1 %186, float %2367, float %2363
  %2370 = select i1 %186, float 0.000000e+00, float %2364
  br label %2371

; <label>:2371                                    ; preds = %2361, %2323
  %2372 = phi float [ %2368, %2361 ], [ 0.000000e+00, %2323 ]
  %2373 = phi float [ %2369, %2361 ], [ 0.000000e+00, %2323 ]
  %2374 = phi float [ %2370, %2361 ], [ 0.000000e+00, %2323 ]
  br i1 %1728, label %2375, label %2383

; <label>:2375                                    ; preds = %2371
  %2376 = fsub fast float 1.000000e+00, %2024
  %2377 = fmul fast float %2376, %1718
  %2378 = fmul fast float %2376, %1719
  %2379 = fmul fast float %2376, %1720
  %2380 = fmul fast float %2376, %1721
  %2381 = fmul fast float %2376, %1722
  %2382 = fmul fast float %2376, %1723
  br label %2383

; <label>:2383                                    ; preds = %2375, %2371
  %2384 = phi float [ %2377, %2375 ], [ %1718, %2371 ]
  %2385 = phi float [ %2378, %2375 ], [ %1719, %2371 ]
  %2386 = phi float [ %2379, %2375 ], [ %1720, %2371 ]
  %2387 = phi float [ %2380, %2375 ], [ %1721, %2371 ]
  %2388 = phi float [ %2381, %2375 ], [ %1722, %2371 ]
  %2389 = phi float [ %2382, %2375 ], [ %1723, %2371 ]
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 3
  %2393 = icmp eq i32 %2392, 3
  br i1 %2393, label %2469, label %2394

; <label>:2394                                    ; preds = %2383
  %2395 = and i32 %2391, 16
  %2396 = icmp ne i32 %2395, 0
  %2397 = select i1 %2396, float %2024, float 0.000000e+00
  %2398 = icmp eq i32 %2392, 0
  br i1 %2398, label %2399, label %2424

; <label>:2399                                    ; preds = %2394
  %2400 = and i32 %2391, 64
  %2401 = icmp ne i32 %2400, 0
  %2402 = select i1 %2401, float %2024, float 0.000000e+00
  %2403 = fsub fast float %2244, %2384
  %2404 = fsub fast float %2245, %2385
  %2405 = fsub fast float %2246, %2386
  %2406 = fmul fast float %2397, %2403
  %2407 = fmul fast float %2397, %2404
  %2408 = fmul fast float %2397, %2405
  %2409 = fadd fast float %2406, %2384
  %2410 = fadd fast float %2407, %2385
  %2411 = fadd fast float %2408, %2386
  %2412 = fsub fast float %2230, %1724
  %2413 = fmul fast float %2397, %2412
  %2414 = fadd fast float %2413, %1724
  %2415 = fsub fast float %2372, %2387
  %2416 = fsub fast float %2373, %2388
  %2417 = fsub fast float %2374, %2389
  %2418 = fmul fast float %2402, %2415
  %2419 = fmul fast float %2402, %2416
  %2420 = fmul fast float %2402, %2417
  %2421 = fadd fast float %2418, %2387
  %2422 = fadd fast float %2419, %2388
  %2423 = fadd fast float %2420, %2389
  br label %2469

; <label>:2424                                    ; preds = %2394
  %2425 = icmp eq i32 %2392, 1
  br i1 %2425, label %2426, label %2439

; <label>:2426                                    ; preds = %2424
  %2427 = fadd fast float %2244, -1.000000e+00
  %2428 = fadd fast float %2245, -1.000000e+00
  %2429 = fadd fast float %2246, -1.000000e+00
  %2430 = fmul fast float %2397, %2427
  %2431 = fmul fast float %2397, %2428
  %2432 = fmul fast float %2397, %2429
  %2433 = fadd fast float %2430, 1.000000e+00
  %2434 = fadd fast float %2431, 1.000000e+00
  %2435 = fadd fast float %2432, 1.000000e+00
  %2436 = fmul fast float %2433, %2384
  %2437 = fmul fast float %2434, %2385
  %2438 = fmul fast float %2435, %2386
  br label %2469

; <label>:2439                                    ; preds = %2424
  %2440 = icmp eq i32 %2392, 2
  br i1 %2440, label %2441, label %2469

; <label>:2441                                    ; preds = %2439
  %2442 = call float @dx.op.unary.f32(i32 24, float %2244)  ; Sqrt(value)
  %2443 = call float @dx.op.unary.f32(i32 24, float %2245)  ; Sqrt(value)
  %2444 = call float @dx.op.unary.f32(i32 24, float %2246)  ; Sqrt(value)
  %2445 = fadd fast float %2442, -5.000000e-01
  %2446 = fadd fast float %2443, -5.000000e-01
  %2447 = fadd fast float %2444, -5.000000e-01
  %2448 = fmul fast float %2445, %2397
  %2449 = fmul fast float %2446, %2397
  %2450 = fmul fast float %2447, %2397
  %2451 = fadd fast float %2448, 5.000000e-01
  %2452 = fadd fast float %2449, 5.000000e-01
  %2453 = fadd fast float %2450, 5.000000e-01
  %2454 = fmul fast float %2451, 2.000000e+00
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = fmul fast float %2455, %2384
  %2457 = fadd fast float %2456, %2454
  %2458 = fmul fast float %2457, %2384
  %2459 = fmul fast float %2452, 2.000000e+00
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = fmul fast float %2460, %2385
  %2462 = fadd fast float %2461, %2459
  %2463 = fmul fast float %2462, %2385
  %2464 = fmul fast float %2453, 2.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = fmul fast float %2465, %2386
  %2467 = fadd fast float %2466, %2464
  %2468 = fmul fast float %2467, %2386
  br label %2469

; <label>:2469                                    ; preds = %2441, %2439, %2426, %2399, %2383
  %2470 = phi float [ %2384, %2383 ], [ %2458, %2441 ], [ %2384, %2439 ], [ %2436, %2426 ], [ %2409, %2399 ]
  %2471 = phi float [ %2385, %2383 ], [ %2463, %2441 ], [ %2385, %2439 ], [ %2437, %2426 ], [ %2410, %2399 ]
  %2472 = phi float [ %2386, %2383 ], [ %2468, %2441 ], [ %2386, %2439 ], [ %2438, %2426 ], [ %2411, %2399 ]
  %2473 = phi float [ %2387, %2383 ], [ %2387, %2441 ], [ %2387, %2439 ], [ %2387, %2426 ], [ %2421, %2399 ]
  %2474 = phi float [ %2388, %2383 ], [ %2388, %2441 ], [ %2388, %2439 ], [ %2388, %2426 ], [ %2422, %2399 ]
  %2475 = phi float [ %2389, %2383 ], [ %2389, %2441 ], [ %2389, %2439 ], [ %2389, %2426 ], [ %2423, %2399 ]
  %2476 = phi float [ %1724, %2383 ], [ %1724, %2441 ], [ %1724, %2439 ], [ %1724, %2426 ], [ %2414, %2399 ]
  %2477 = and i32 %2391, 12
  %2478 = icmp eq i32 %2477, 12
  br i1 %2478, label %2551, label %2479

; <label>:2479                                    ; preds = %2469
  %2480 = and i32 %2391, 2097184
  %2481 = icmp eq i32 %2480, 2097184
  %2482 = select i1 %2481, float %2024, float 0.000000e+00
  %2483 = and i32 %2391, 4194336
  %2484 = icmp eq i32 %2483, 4194336
  %2485 = select i1 %2484, float %2024, float 0.000000e+00
  %2486 = and i32 %2391, 8388640
  %2487 = icmp eq i32 %2486, 8388640
  %2488 = select i1 %2487, float %2024, float 0.000000e+00
  %2489 = icmp eq i32 %2477, 0
  br i1 %2489, label %2490, label %2503

; <label>:2490                                    ; preds = %2479
  %2491 = fsub fast float %2325, %1716
  %2492 = fsub fast float %2326, %1717
  %2493 = fmul fast float %2482, %2491
  %2494 = fmul fast float %2482, %2492
  %2495 = fadd fast float %2493, %1716
  %2496 = fadd fast float %2494, %1717
  %2497 = fsub fast float %2327, %1726
  %2498 = fmul fast float %2485, %2497
  %2499 = fadd fast float %2498, %1726
  %2500 = fsub fast float %2324, %1725
  %2501 = fmul fast float %2488, %2500
  %2502 = fadd fast float %2501, %1725
  br label %2551

; <label>:2503                                    ; preds = %2479
  %2504 = icmp eq i32 %2477, 4
  br i1 %2504, label %2505, label %2537

; <label>:2505                                    ; preds = %2503
  %2506 = fmul fast float %2482, %2325
  %2507 = fmul fast float %2482, %2326
  %2508 = fadd fast float %2506, %1716
  %2509 = fadd fast float %2507, %1717
  %2510 = call float @dx.op.binary.f32(i32 36, float %1726, float %2327)  ; FMin(a,b)
  %2511 = fsub fast float %2510, %1726
  %2512 = fmul fast float %2511, %2485
  %2513 = fadd fast float %2512, %1726
  %2514 = fadd fast float %2324, %1725
  %2515 = fmul fast float %2514, 0x3FF337FAE0000000
  %2516 = fmul fast float %1725, %1725
  %2517 = fmul fast float %2324, %2324
  %2518 = fadd fast float %2517, %2516
  %2519 = fmul fast float %2518, 0x3FE5152B00000000
  %2520 = fmul fast float %1725, 0xBFCC1F85E0000000
  %2521 = fmul fast float %2520, %2324
  %2522 = fadd fast float %2521, 0xBFE1363700000000
  %2523 = fadd fast float %2522, %2515
  %2524 = fsub fast float %2523, %2519
  %2525 = fmul fast float %2514, 0x3FBA6F0D00000000
  %2526 = fmul fast float %2518, 0x3FD0432880000000
  %2527 = fmul fast float %1725, 0xBFEF110800000000
  %2528 = fmul fast float %2527, %2324
  %2529 = fadd fast float %2528, 1.000000e+00
  %2530 = fsub fast float %2529, %2525
  %2531 = fadd fast float %2530, %2526
  %2532 = fdiv fast float %2524, %2531
  %2533 = call float @dx.op.unary.f32(i32 7, float %2532)  ; Saturate(value)
  %2534 = fsub fast float %2533, %1725
  %2535 = fmul fast float %2534, %2488
  %2536 = fadd fast float %2535, %1725
  br label %2551

; <label>:2537                                    ; preds = %2503
  %2538 = icmp eq i32 %2477, 8
  br i1 %2538, label %2539, label %2551

; <label>:2539                                    ; preds = %2537
  %2540 = fmul fast float %2482, %2325
  %2541 = fmul fast float %2482, %2326
  %2542 = fadd fast float %2540, %1716
  %2543 = fadd fast float %2541, %1717
  %2544 = call float @dx.op.binary.f32(i32 36, float %1726, float %2327)  ; FMin(a,b)
  %2545 = fsub fast float %2544, %1726
  %2546 = fmul fast float %2545, %2485
  %2547 = fadd fast float %2546, %1726
  %2548 = fsub fast float %2324, %1725
  %2549 = fmul fast float %2488, %2548
  %2550 = fadd fast float %2549, %1725
  br label %2551

; <label>:2551                                    ; preds = %2539, %2537, %2505, %2490, %2469, %2023, %1727, %1715
  %2552 = phi float [ %1716, %2469 ], [ %1716, %2023 ], [ %1716, %1715 ], [ %2542, %2539 ], [ %1716, %2537 ], [ %2508, %2505 ], [ %2495, %2490 ], [ %1716, %1727 ]
  %2553 = phi float [ %1717, %2469 ], [ %1717, %2023 ], [ %1717, %1715 ], [ %2543, %2539 ], [ %1717, %2537 ], [ %2509, %2505 ], [ %2496, %2490 ], [ %1717, %1727 ]
  %2554 = phi float [ %2470, %2469 ], [ %1718, %2023 ], [ %1718, %1715 ], [ %2470, %2539 ], [ %2470, %2537 ], [ %2470, %2505 ], [ %2470, %2490 ], [ %1718, %1727 ]
  %2555 = phi float [ %2471, %2469 ], [ %1719, %2023 ], [ %1719, %1715 ], [ %2471, %2539 ], [ %2471, %2537 ], [ %2471, %2505 ], [ %2471, %2490 ], [ %1719, %1727 ]
  %2556 = phi float [ %2472, %2469 ], [ %1720, %2023 ], [ %1720, %1715 ], [ %2472, %2539 ], [ %2472, %2537 ], [ %2472, %2505 ], [ %2472, %2490 ], [ %1720, %1727 ]
  %2557 = phi float [ %2473, %2469 ], [ %1721, %2023 ], [ %1721, %1715 ], [ %2473, %2539 ], [ %2473, %2537 ], [ %2473, %2505 ], [ %2473, %2490 ], [ %1721, %1727 ]
  %2558 = phi float [ %2474, %2469 ], [ %1722, %2023 ], [ %1722, %1715 ], [ %2474, %2539 ], [ %2474, %2537 ], [ %2474, %2505 ], [ %2474, %2490 ], [ %1722, %1727 ]
  %2559 = phi float [ %2475, %2469 ], [ %1723, %2023 ], [ %1723, %1715 ], [ %2475, %2539 ], [ %2475, %2537 ], [ %2475, %2505 ], [ %2475, %2490 ], [ %1723, %1727 ]
  %2560 = phi float [ %2476, %2469 ], [ %1724, %2023 ], [ %1724, %1715 ], [ %2476, %2539 ], [ %2476, %2537 ], [ %2476, %2505 ], [ %2476, %2490 ], [ %1724, %1727 ]
  %2561 = phi float [ %1725, %2469 ], [ %1725, %2023 ], [ %1725, %1715 ], [ %2550, %2539 ], [ %1725, %2537 ], [ %2536, %2505 ], [ %2502, %2490 ], [ %1725, %1727 ]
  %2562 = phi float [ %1726, %2469 ], [ %1726, %2023 ], [ %1726, %1715 ], [ %2547, %2539 ], [ %1726, %2537 ], [ %2513, %2505 ], [ %2499, %2490 ], [ %1726, %1727 ]
  br i1 %377, label %3387, label %2563

; <label>:2563                                    ; preds = %2551
  %2564 = icmp ult i32 %428, 4
  %2565 = add i32 %45, 72
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = add i32 %45, 76
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = or i32 %2570, %2567
  %2572 = icmp eq i32 %2571, 0
  br i1 %2572, label %3387, label %2573

; <label>:2573                                    ; preds = %2563
  %2574 = and i32 %2567, 262144
  %2575 = icmp ne i32 %2574, 0
  %2576 = select i1 %2575, float %48, float 1.000000e+00
  %2577 = select i1 %2575, float %49, float 0.000000e+00
  %2578 = select i1 %2575, float %50, float 0.000000e+00
  %2579 = select i1 %2575, float %51, float 1.000000e+00
  %2580 = select i1 %2575, float %52, float %73
  %2581 = select i1 %2575, float %53, float %74
  %2582 = add i32 %45, 332
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = lshr i32 %2584, 16
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = fmul fast float %2586, 0x3F50624DE0000000
  %2588 = add i32 %45, 136
  %2589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2590 = extractvalue %dx.types.ResRet.i32 %2589, 0
  %2591 = lshr i32 %2590, 16
  %2592 = and i32 %2591, 255
  %2593 = lshr i32 %2590, 24
  %2594 = add i32 %45, 340
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 65535
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = lshr i32 %2596, 16
  %2600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2599)  ; LegacyF16ToF32(value)
  %2601 = add i32 %45, 80
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = lshr i32 %2603, 22
  %2605 = shl nuw nsw i32 %2604, 5
  %2606 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2605)  ; LegacyF16ToF32(value)
  %2607 = shl i32 %2603, 4
  %2608 = and i32 %2607, 32752
  %2609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2608)  ; LegacyF16ToF32(value)
  %2610 = lshr i32 %2603, 7
  %2611 = and i32 %2610, 32752
  %2612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2611)  ; LegacyF16ToF32(value)
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 3
  %2615 = fmul fast float %2614, 1.000000e+03
  %2616 = fmul fast float %367, %2615
  %2617 = call float @dx.op.unary.f32(i32 22, float %2616)  ; Frc(value)
  %2618 = fadd fast float %2617, %357
  %2619 = fmul fast float %368, %2615
  %2620 = call float @dx.op.unary.f32(i32 22, float %2619)  ; Frc(value)
  %2621 = fadd fast float %2620, %359
  %2622 = fmul fast float %2587, %2615
  %2623 = call float @dx.op.unary.f32(i32 22, float %2622)  ; Frc(value)
  %2624 = fmul fast float %2623, 0x401921FB60000000
  %2625 = fadd fast float %2624, %2606
  %2626 = call float @dx.op.unary.f32(i32 13, float %2625)  ; Sin(value)
  %2627 = call float @dx.op.unary.f32(i32 12, float %2625)  ; Cos(value)
  %2628 = fsub fast float -0.000000e+00, %2626
  %2629 = fadd fast float %2580, -5.000000e-01
  %2630 = fadd fast float %2581, -5.000000e-01
  %2631 = fmul fast float %2598, %2629
  %2632 = fmul fast float %2600, %2630
  %2633 = fadd fast float %2631, 5.000000e-01
  %2634 = fadd fast float %2632, 5.000000e-01
  %2635 = fmul fast float %2609, %2633
  %2636 = fmul fast float %2612, %2634
  %2637 = fmul fast float %2627, %2635
  %2638 = call float @dx.op.tertiary.f32(i32 46, float %2628, float %2636, float %2637)  ; FMad(a,b,c)
  %2639 = fmul fast float %2626, %2635
  %2640 = call float @dx.op.tertiary.f32(i32 46, float %2627, float %2636, float %2639)  ; FMad(a,b,c)
  %2641 = fadd fast float %2618, %2638
  %2642 = fadd fast float %2621, %2640
  %2643 = icmp ugt i32 %2592, 1
  %2644 = icmp ugt i32 %2590, 33554431
  %2645 = or i1 %2644, %2643
  br i1 %2645, label %2646, label %2671

; <label>:2646                                    ; preds = %2573
  %2647 = add i32 %45, 276
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = lshr i32 %2649, 16
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = fmul fast float %2614, %2651
  %2653 = call float @dx.op.unary.f32(i32 22, float %2652)  ; Frc(value)
  %2654 = mul nuw nsw i32 %2592, %2593
  %2655 = uitofp i32 %2654 to float
  %2656 = fmul fast float %2653, %2655
  %2657 = call float @dx.op.unary.f32(i32 27, float %2656)  ; Round_ni(value)
  %2658 = fptoui float %2657 to i32
  %2659 = urem i32 %2658, %2592
  %2660 = udiv i32 %2658, %2593
  %2661 = call float @dx.op.unary.f32(i32 22, float %2641)  ; Frc(value)
  %2662 = call float @dx.op.unary.f32(i32 22, float %2642)  ; Frc(value)
  %2663 = uitofp i32 %2659 to float
  %2664 = uitofp i32 %2660 to float
  %2665 = fadd fast float %2661, %2663
  %2666 = fadd fast float %2662, %2664
  %2667 = uitofp i32 %2592 to float
  %2668 = uitofp i32 %2593 to float
  %2669 = fdiv fast float %2665, %2667
  %2670 = fdiv fast float %2666, %2668
  br label %2671

; <label>:2671                                    ; preds = %2646, %2573
  %2672 = phi float [ %2669, %2646 ], [ %2641, %2573 ]
  %2673 = phi float [ %2670, %2646 ], [ %2642, %2573 ]
  %2674 = and i32 %2567, 16777216
  %2675 = icmp eq i32 %2674, 0
  br i1 %2675, label %2785, label %2676

; <label>:2676                                    ; preds = %2671
  %2677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2678 = extractvalue %dx.types.CBufRet.f32 %2677, 0
  %2679 = extractvalue %dx.types.CBufRet.f32 %2677, 1
  %2680 = extractvalue %dx.types.CBufRet.f32 %2677, 2
  %2681 = fadd fast float %2678, %144
  %2682 = fadd fast float %2679, %145
  %2683 = fadd fast float %2680, %146
  %2684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2685 = extractvalue %dx.types.CBufRet.f32 %2684, 0
  %2686 = call float @dx.op.unary.f32(i32 7, float %2685)  ; Saturate(value)
  %2687 = icmp eq i32 %46, 65535
  br i1 %2687, label %2782, label %2688

; <label>:2688                                    ; preds = %2676
  %2689 = lshr i32 %46, 1
  %2690 = shl i32 %2689, 2
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = and i32 %46, 1
  %2694 = icmp ne i32 %2693, 0
  %2695 = lshr i32 %2692, 16
  %2696 = and i32 %2692, 65535
  %2697 = select i1 %2694, i32 %2695, i32 %2696
  %2698 = icmp eq i32 %2697, 65535
  br i1 %2698, label %2778, label %2699

; <label>:2699                                    ; preds = %2688
  %2700 = mul nuw nsw i32 %2697, 40
  %2701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.f32 %2701, 0
  %2703 = extractvalue %dx.types.ResRet.f32 %2701, 1
  %2704 = extractvalue %dx.types.ResRet.f32 %2701, 2
  %2705 = add nuw nsw i32 %2700, 12
  %2706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.ResRet.f32 %2706, 1
  %2709 = extractvalue %dx.types.ResRet.f32 %2706, 2
  %2710 = add nuw nsw i32 %2700, 24
  %2711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.ResRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.ResRet.f32 %2711, 2
  %2715 = add nuw nsw i32 %2700, 36
  %2716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  %2718 = fsub fast float %2681, %2702
  %2719 = fsub fast float %2682, %2703
  %2720 = fsub fast float %2683, %2704
  %2721 = fmul fast float %2717, %2718
  %2722 = fmul fast float %2717, %2719
  %2723 = fmul fast float %2717, %2720
  %2724 = call float @dx.op.unary.f32(i32 27, float %2721)  ; Round_ni(value)
  %2725 = call float @dx.op.unary.f32(i32 27, float %2722)  ; Round_ni(value)
  %2726 = call float @dx.op.unary.f32(i32 27, float %2723)  ; Round_ni(value)
  %2727 = fadd fast float %2724, 5.000000e-01
  %2728 = fadd fast float %2725, 5.000000e-01
  %2729 = fadd fast float %2726, 5.000000e-01
  %2730 = fmul fast float %2727, %2707
  %2731 = fmul fast float %2728, %2708
  %2732 = fmul fast float %2729, %2709
  %2733 = shl i32 %46, 2
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = add i32 %2735, 0
  %2737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2738 = call float @dx.op.unary.f32(i32 22, float %2730)  ; Frc(value)
  %2739 = call float @dx.op.unary.f32(i32 22, float %2731)  ; Frc(value)
  %2740 = call float @dx.op.unary.f32(i32 22, float %2732)  ; Frc(value)
  %2741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2737, %dx.types.Handle %40, float %2738, float %2739, float %2740, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2742 = extractvalue %dx.types.ResRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.ResRet.f32 %2741, 1
  %2744 = extractvalue %dx.types.ResRet.f32 %2741, 2
  %2745 = fmul fast float %2742, 1.023000e+03
  %2746 = fmul fast float %2743, 1.023000e+03
  %2747 = fmul fast float %2744, 1.023000e+03
  %2748 = fadd fast float %2745, 5.000000e-01
  %2749 = fadd fast float %2746, 5.000000e-01
  %2750 = fadd fast float %2747, 5.000000e-01
  %2751 = call float @dx.op.unary.f32(i32 27, float %2748)  ; Round_ni(value)
  %2752 = call float @dx.op.unary.f32(i32 27, float %2749)  ; Round_ni(value)
  %2753 = call float @dx.op.unary.f32(i32 27, float %2750)  ; Round_ni(value)
  %2754 = fsub fast float %2721, %2724
  %2755 = fsub fast float %2722, %2725
  %2756 = fsub fast float %2723, %2726
  %2757 = fmul fast float %2754, 7.500000e-01
  %2758 = fmul fast float %2755, 7.500000e-01
  %2759 = fmul fast float %2756, 7.500000e-01
  %2760 = fadd fast float %2724, 1.250000e-01
  %2761 = fadd fast float %2760, %2757
  %2762 = fadd fast float %2761, %2751
  %2763 = fadd fast float %2725, 1.250000e-01
  %2764 = fadd fast float %2763, %2758
  %2765 = fadd fast float %2764, %2752
  %2766 = fadd fast float %2726, 1.250000e-01
  %2767 = fadd fast float %2766, %2759
  %2768 = fadd fast float %2767, %2753
  %2769 = fmul fast float %2762, %2712
  %2770 = fmul fast float %2765, %2713
  %2771 = fmul fast float %2768, %2714
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = add i32 %2773, 0
  %2775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2774, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2775, %dx.types.Handle %38, float %2769, float %2770, float %2771, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 0
  br label %2778

; <label>:2778                                    ; preds = %2699, %2688
  %2779 = phi float [ %2777, %2699 ], [ -1.000000e+00, %2688 ]
  %2780 = fadd fast float %2779, %2686
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  br label %2782

; <label>:2782                                    ; preds = %2778, %2676
  %2783 = phi float [ %2781, %2778 ], [ %2686, %2676 ]
  %2784 = fmul fast float %2783, %423
  br label %2785

; <label>:2785                                    ; preds = %2782, %2671
  %2786 = phi float [ %2784, %2782 ], [ %423, %2671 ]
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = and i32 %2788, 256
  %2790 = icmp eq i32 %2789, 0
  br i1 %2790, label %2837, label %2791

; <label>:2791                                    ; preds = %2785
  %2792 = add i32 %45, 516
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2792, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = add i32 %2794, 0
  %2796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2796, %dx.types.Handle %82, float %2672, float %2673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2798 = extractvalue %dx.types.ResRet.f32 %2797, 0
  %2799 = add i32 %45, 148
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = shl i32 %2801, 4
  %2803 = and i32 %2802, 32752
  %2804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2803)  ; LegacyF16ToF32(value)
  %2805 = lshr i32 %2801, 7
  %2806 = and i32 %2805, 32752
  %2807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2806)  ; LegacyF16ToF32(value)
  %2808 = fsub fast float 1.000000e+00, %2786
  %2809 = call float @dx.op.binary.f32(i32 35, float %2808, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2810 = bitcast float %2786 to i32
  %2811 = sitofp i32 %2810 to float
  %2812 = fadd fast float %2811, 0xC1CFBF8940000000
  %2813 = fmul fast float %2807, %2812
  %2814 = fadd fast float %2813, 0x41CFBF8940000000
  %2815 = fptosi float %2814 to i32
  %2816 = bitcast i32 %2815 to float
  %2817 = bitcast float %2809 to i32
  %2818 = sitofp i32 %2817 to float
  %2819 = fadd fast float %2818, 0xC1CFBF8940000000
  %2820 = fmul fast float %2819, %2807
  %2821 = fadd fast float %2820, 0x41CFBF8940000000
  %2822 = fptosi float %2821 to i32
  %2823 = bitcast i32 %2822 to float
  %2824 = fmul fast float %2816, %2804
  %2825 = fmul fast float %2823, %2804
  %2826 = fsub fast float %2809, %2824
  %2827 = fadd fast float %2825, %2809
  %2828 = call float @dx.op.unary.f32(i32 7, float %2826)  ; Saturate(value)
  %2829 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2830 = fsub fast float %2798, %2828
  %2831 = fsub fast float %2829, %2828
  %2832 = bitcast float %2831 to i32
  %2833 = sub nsw i32 2129859010, %2832
  %2834 = bitcast i32 %2833 to float
  %2835 = fmul fast float %2834, %2830
  %2836 = call float @dx.op.unary.f32(i32 7, float %2835)  ; Saturate(value)
  br label %2837

; <label>:2837                                    ; preds = %2791, %2785
  %2838 = phi float [ %2836, %2791 ], [ %2786, %2785 ]
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = and i32 %2840, 128
  %2842 = icmp eq i32 %2841, 0
  br i1 %2842, label %2859, label %2843

; <label>:2843                                    ; preds = %2837
  %2844 = add i32 %45, 500
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = add i32 %2846, 0
  %2848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2848, %dx.types.Handle %82, float %2672, float %2673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2850 = extractvalue %dx.types.ResRet.f32 %2849, 0
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 524288
  %2854 = icmp ne i32 %2853, 0
  %2855 = fcmp fast ogt float %2850, 0x3FE0101020000000
  %2856 = select i1 %2855, float 1.000000e+00, float 0.000000e+00
  %2857 = select i1 %2854, float %2856, float %2850
  %2858 = fmul fast float %2857, %2838
  br label %2859

; <label>:2859                                    ; preds = %2843, %2837
  %2860 = phi float [ %2858, %2843 ], [ %2838, %2837 ]
  %2861 = fcmp fast ult float %2860, 0x3F70101020000000
  br i1 %2861, label %3387, label %2862

; <label>:2862                                    ; preds = %2859
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = and i32 %2864, 16
  %2866 = icmp eq i32 %2865, 0
  br i1 %2866, label %3065, label %2867

; <label>:2867                                    ; preds = %2862
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2588, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = add i32 %45, 452
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = add i32 %2872, 0
  %2874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2873, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2875 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2874, %dx.types.Handle %81, float %2672, float %2673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2876 = extractvalue %dx.types.ResRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.ResRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.ResRet.f32 %2875, 2
  %2879 = extractvalue %dx.types.ResRet.f32 %2875, 3
  %2880 = and i32 %2869, 255
  %2881 = uitofp i32 %2880 to float
  %2882 = lshr i32 %2869, 8
  %2883 = and i32 %2882, 255
  %2884 = uitofp i32 %2883 to float
  %2885 = fmul fast float %2879, %2881
  %2886 = fadd fast float %2885, %2884
  %2887 = fmul fast float %2886, 0x3F70101000000000
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 512
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2900, label %2892

; <label>:2892                                    ; preds = %2867
  %2893 = add i32 %45, 544
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = add i32 %2895, 0
  %2897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2897, %dx.types.Handle %82, float %2672, float %2673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  br label %2900

; <label>:2900                                    ; preds = %2892, %2867
  %2901 = phi float [ %2899, %2892 ], [ 1.000000e+00, %2867 ]
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 33554432
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %3012, label %2906

; <label>:2906                                    ; preds = %2900
  %2907 = add i32 %45, 272
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = and i32 %2909, 65535
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = lshr i32 %2909, 16
  %2913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2912)  ; LegacyF16ToF32(value)
  %2914 = add i32 %45, 276
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = and i32 %2916, 65535
  %2918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2917)  ; LegacyF16ToF32(value)
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = lshr i32 %2920, 24
  %2922 = uitofp i32 %2921 to float
  %2923 = fmul fast float %2922, 0x3F70101020000000
  %2924 = and i32 %2920, 255
  %2925 = uitofp i32 %2924 to float
  %2926 = fmul fast float %2925, 0x3F70101020000000
  %2927 = lshr i32 %2920, 8
  %2928 = and i32 %2927, 255
  %2929 = uitofp i32 %2928 to float
  %2930 = fmul fast float %2929, 0x3F70101020000000
  %2931 = lshr i32 %2920, 16
  %2932 = and i32 %2931, 255
  %2933 = uitofp i32 %2932 to float
  %2934 = fmul fast float %2933, 0x3F70101020000000
  %2935 = add i32 %45, 268
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = lshr i32 %2937, 24
  %2939 = uitofp i32 %2938 to float
  %2940 = fmul fast float %2939, 0x3F70101020000000
  %2941 = and i32 %2937, 255
  %2942 = uitofp i32 %2941 to float
  %2943 = fmul fast float %2942, 0x3F70101020000000
  %2944 = lshr i32 %2937, 8
  %2945 = and i32 %2944, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2946, 0x3F70101020000000
  %2948 = lshr i32 %2937, 16
  %2949 = and i32 %2948, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = fmul fast float %2950, 0x3F70101020000000
  %2952 = bitcast float %2876 to i32
  %2953 = ashr i32 %2952, 1
  %2954 = sub nsw i32 1597463174, %2953
  %2955 = bitcast i32 %2954 to float
  %2956 = fmul fast float %2876, 5.000000e-01
  %2957 = fmul fast float %2955, %2955
  %2958 = fmul fast float %2957, %2956
  %2959 = fsub fast float 1.500000e+00, %2958
  %2960 = fmul fast float %2955, %2876
  %2961 = fmul fast float %2960, %2959
  %2962 = bitcast float %2877 to i32
  %2963 = ashr i32 %2962, 1
  %2964 = sub nsw i32 1597463174, %2963
  %2965 = bitcast i32 %2964 to float
  %2966 = fmul fast float %2877, 5.000000e-01
  %2967 = fmul fast float %2965, %2965
  %2968 = fmul fast float %2967, %2966
  %2969 = fsub fast float 1.500000e+00, %2968
  %2970 = fmul fast float %2965, %2877
  %2971 = fmul fast float %2970, %2969
  %2972 = bitcast float %2878 to i32
  %2973 = ashr i32 %2972, 1
  %2974 = sub nsw i32 1597463174, %2973
  %2975 = bitcast i32 %2974 to float
  %2976 = fmul fast float %2878, 5.000000e-01
  %2977 = fmul fast float %2975, %2975
  %2978 = fmul fast float %2977, %2976
  %2979 = fsub fast float 1.500000e+00, %2978
  %2980 = fmul fast float %2975, %2878
  %2981 = fmul fast float %2980, %2979
  %2982 = fsub fast float %2961, %2943
  %2983 = fsub fast float %2971, %2947
  %2984 = fsub fast float %2981, %2951
  %2985 = fmul fast float %2982, %2911
  %2986 = fmul fast float %2983, %2913
  %2987 = fmul fast float %2984, %2918
  %2988 = fadd fast float %2985, %2926
  %2989 = fadd fast float %2986, %2930
  %2990 = fadd fast float %2987, %2934
  %2991 = call float @dx.op.unary.f32(i32 7, float %2988)  ; Saturate(value)
  %2992 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2993 = call float @dx.op.unary.f32(i32 7, float %2990)  ; Saturate(value)
  %2994 = fmul fast float %2991, %2991
  %2995 = fmul fast float %2992, %2992
  %2996 = fmul fast float %2993, %2993
  %2997 = fsub fast float %2994, %2876
  %2998 = fsub fast float %2995, %2877
  %2999 = fsub fast float %2996, %2878
  %3000 = fmul fast float %2997, %2901
  %3001 = fmul fast float %2998, %2901
  %3002 = fmul fast float %2999, %2901
  %3003 = fadd fast float %3000, %2876
  %3004 = fadd fast float %3001, %2877
  %3005 = fadd fast float %3002, %2878
  %3006 = fadd fast float %2923, %2887
  %3007 = fsub fast float %3006, %2940
  %3008 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3009 = fsub fast float %3008, %2887
  %3010 = fmul fast float %3009, %2901
  %3011 = fadd fast float %3010, %2887
  br label %3065

; <label>:3012                                    ; preds = %2900
  %3013 = and i32 %2903, 134217728
  %3014 = icmp eq i32 %3013, 0
  br i1 %3014, label %3049, label %3015

; <label>:3015                                    ; preds = %3012
  %3016 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3017 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %3018 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %3019 = fadd fast float %3016, -5.000000e-01
  %3020 = fadd fast float %3017, -5.000000e-01
  %3021 = fadd fast float %3018, -5.000000e-01
  %3022 = fmul fast float %3019, %2901
  %3023 = fmul fast float %3020, %2901
  %3024 = fmul fast float %3021, %2901
  %3025 = fadd fast float %3022, 5.000000e-01
  %3026 = fadd fast float %3023, 5.000000e-01
  %3027 = fadd fast float %3024, 5.000000e-01
  %3028 = call float @dx.op.unary.f32(i32 24, float %2876)  ; Sqrt(value)
  %3029 = call float @dx.op.unary.f32(i32 24, float %2877)  ; Sqrt(value)
  %3030 = call float @dx.op.unary.f32(i32 24, float %2878)  ; Sqrt(value)
  %3031 = fmul fast float %3025, 2.000000e+00
  %3032 = fsub fast float 1.000000e+00, %3031
  %3033 = fmul fast float %3032, %3028
  %3034 = fadd fast float %3033, %3031
  %3035 = fmul fast float %3034, %3028
  %3036 = fmul fast float %3026, 2.000000e+00
  %3037 = fsub fast float 1.000000e+00, %3036
  %3038 = fmul fast float %3037, %3029
  %3039 = fadd fast float %3038, %3036
  %3040 = fmul fast float %3039, %3029
  %3041 = fmul fast float %3027, 2.000000e+00
  %3042 = fsub fast float 1.000000e+00, %3041
  %3043 = fmul fast float %3042, %3030
  %3044 = fadd fast float %3043, %3041
  %3045 = fmul fast float %3044, %3030
  %3046 = fmul fast float %3035, %3035
  %3047 = fmul fast float %3040, %3040
  %3048 = fmul fast float %3045, %3045
  br label %3065

; <label>:3049                                    ; preds = %3012
  %3050 = fmul fast float %344, %344
  %3051 = fmul fast float %348, %348
  %3052 = fmul fast float %352, %352
  %3053 = fadd fast float %3050, -1.000000e+00
  %3054 = fadd fast float %3051, -1.000000e+00
  %3055 = fadd fast float %3052, -1.000000e+00
  %3056 = fmul fast float %2901, %3053
  %3057 = fmul fast float %2901, %3054
  %3058 = fmul fast float %2901, %3055
  %3059 = fadd fast float %3056, 1.000000e+00
  %3060 = fadd fast float %3057, 1.000000e+00
  %3061 = fadd fast float %3058, 1.000000e+00
  %3062 = fmul fast float %3059, %2876
  %3063 = fmul fast float %3060, %2877
  %3064 = fmul fast float %3061, %2878
  br label %3065

; <label>:3065                                    ; preds = %3049, %3015, %2906, %2862
  %3066 = phi float [ %3011, %2906 ], [ %2887, %3015 ], [ %2887, %3049 ], [ 0x3FA23C0BE0000000, %2862 ]
  %3067 = phi float [ %3003, %2906 ], [ %3046, %3015 ], [ %3062, %3049 ], [ 1.000000e+00, %2862 ]
  %3068 = phi float [ %3004, %2906 ], [ %3047, %3015 ], [ %3063, %3049 ], [ 1.000000e+00, %2862 ]
  %3069 = phi float [ %3005, %2906 ], [ %3048, %3015 ], [ %3064, %3049 ], [ 1.000000e+00, %2862 ]
  %3070 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3071 = extractvalue %dx.types.CBufRet.i32 %3070, 1
  %3072 = and i32 %3071, 1
  %3073 = icmp ne i32 %3072, 0
  %3074 = add i32 %45, 356
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = and i32 %3076, 32
  %3078 = icmp ne i32 %3077, 0
  %3079 = and i1 %3073, %3078
  %3080 = select i1 %3079, float 1.000000e+00, float %3067
  %3081 = select i1 %3079, float 0x3FD3333340000000, float %3068
  %3082 = select i1 %3079, float 0x3FD3333340000000, float %3069
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = and i32 %3084, 32
  %3086 = icmp eq i32 %3085, 0
  br i1 %3086, label %3159, label %3087

; <label>:3087                                    ; preds = %3065
  %3088 = add i32 %45, 140
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = add i32 %45, 468
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = add i32 %3093, 0
  %3095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3095, %dx.types.Handle %81, float %2672, float %2673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = extractvalue %dx.types.ResRet.f32 %3096, 1
  %3099 = extractvalue %dx.types.ResRet.f32 %3096, 2
  %3100 = extractvalue %dx.types.ResRet.f32 %3096, 3
  %3101 = and i32 %3090, 255
  %3102 = uitofp i32 %3101 to float
  %3103 = lshr i32 %3090, 8
  %3104 = and i32 %3103, 255
  %3105 = uitofp i32 %3104 to float
  %3106 = lshr i32 %3090, 16
  %3107 = and i32 %3106, 255
  %3108 = uitofp i32 %3107 to float
  %3109 = fmul fast float %3108, 0x3F70101000000000
  %3110 = fmul fast float %3097, %3102
  %3111 = fadd fast float %3110, %3105
  %3112 = fmul fast float %3111, 0x3F70101000000000
  %3113 = fadd fast float %3098, -5.000000e-01
  %3114 = fadd fast float %3100, -5.000000e-01
  %3115 = fmul fast float %3113, %3109
  %3116 = fmul fast float %3114, %3109
  %3117 = fadd fast float %3115, 5.000000e-01
  %3118 = fadd fast float %3116, 5.000000e-01
  %3119 = fmul fast float %3117, 2.000000e+00
  %3120 = fadd fast float %3119, -1.000000e+00
  %3121 = fmul fast float %3118, 2.000000e+00
  %3122 = fadd fast float %3121, -1.000000e+00
  %3123 = fadd fast float %3120, %3122
  %3124 = fmul fast float %3123, 5.000000e-01
  %3125 = fsub fast float %3120, %3122
  %3126 = fmul fast float %3125, 5.000000e-01
  %3127 = call float @dx.op.unary.f32(i32 6, float %3124)  ; FAbs(value)
  %3128 = fsub fast float 1.000000e+00, %3127
  %3129 = call float @dx.op.unary.f32(i32 6, float %3126)  ; FAbs(value)
  %3130 = fsub fast float %3128, %3129
  %3131 = call float @dx.op.dot3.f32(i32 55, float %3124, float %3126, float %3130, float %3124, float %3126, float %3130)  ; Dot3(ax,ay,az,bx,by,bz)
  %3132 = call float @dx.op.unary.f32(i32 25, float %3131)  ; Rsqrt(value)
  %3133 = fmul fast float %3124, %3132
  %3134 = fmul fast float %3126, %3132
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = and i32 %3136, 67108864
  %3138 = icmp eq i32 %3137, 0
  br i1 %3138, label %3155, label %3139

; <label>:3139                                    ; preds = %3087
  %3140 = add i32 %45, 328
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 65535
  %3144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3143)  ; LegacyF16ToF32(value)
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = and i32 %3146, 65535
  %3148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3147)  ; LegacyF16ToF32(value)
  %3149 = lshr i32 %3142, 16
  %3150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3149)  ; LegacyF16ToF32(value)
  %3151 = fsub fast float %3112, %3150
  %3152 = fmul fast float %3151, %3144
  %3153 = fadd fast float %3152, %3148
  %3154 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  br label %3155

; <label>:3155                                    ; preds = %3139, %3087
  %3156 = phi float [ %3154, %3139 ], [ %3112, %3087 ]
  %3157 = call float @dx.op.dot2.f32(i32 54, float %3133, float %3134, float %2576, float %2577)  ; Dot2(ax,ay,bx,by)
  %3158 = call float @dx.op.dot2.f32(i32 54, float %3133, float %3134, float %2578, float %2579)  ; Dot2(ax,ay,bx,by)
  br label %3159

; <label>:3159                                    ; preds = %3155, %3065
  %3160 = phi float [ %3156, %3155 ], [ 0x3FD6666660000000, %3065 ]
  %3161 = phi float [ %3157, %3155 ], [ 0.000000e+00, %3065 ]
  %3162 = phi float [ %3158, %3155 ], [ 0.000000e+00, %3065 ]
  %3163 = phi float [ %3099, %3155 ], [ 1.000000e+00, %3065 ]
  %3164 = add i32 %45, 208
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = lshr i32 %3166, 22
  %3168 = shl nuw nsw i32 %3167, 5
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 64
  %3173 = icmp eq i32 %3172, 0
  br i1 %3173, label %3207, label %3174

; <label>:3174                                    ; preds = %3159
  %3175 = add i32 %45, 484
  %3176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3175, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.i32 %3176, 0
  %3178 = add i32 %3177, 0
  %3179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 131072
  %3183 = icmp eq i32 %3182, 0
  %3184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3179, %dx.types.Handle %81, float %2672, float %2673, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3185 = extractvalue %dx.types.ResRet.f32 %3184, 0
  %3186 = extractvalue %dx.types.ResRet.f32 %3184, 1
  %3187 = extractvalue %dx.types.ResRet.f32 %3184, 2
  %3188 = fmul fast float %3185, %332
  %3189 = fmul fast float %3186, %335
  %3190 = fmul fast float %3187, %338
  br i1 %3183, label %3197, label %3191

; <label>:3191                                    ; preds = %3174
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3194 = fmul fast float %3193, %3188
  %3195 = fmul fast float %3193, %3189
  %3196 = fmul fast float %3193, %3190
  br label %3197

; <label>:3197                                    ; preds = %3191, %3174
  %3198 = phi float [ %3194, %3191 ], [ %3188, %3174 ]
  %3199 = phi float [ %3195, %3191 ], [ %3189, %3174 ]
  %3200 = phi float [ %3196, %3191 ], [ %3190, %3174 ]
  %3201 = fmul fast float %3198, %3169
  %3202 = select i1 %186, float %3201, float %3198
  %3203 = call float @dx.op.dot3.f32(i32 55, float %3202, float %3199, float %3200, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3204 = select i1 %186, float 0.000000e+00, float %3198
  %3205 = select i1 %186, float %3203, float %3199
  %3206 = select i1 %186, float 0.000000e+00, float %3200
  br label %3207

; <label>:3207                                    ; preds = %3197, %3159
  %3208 = phi float [ %3204, %3197 ], [ 0.000000e+00, %3159 ]
  %3209 = phi float [ %3205, %3197 ], [ 0.000000e+00, %3159 ]
  %3210 = phi float [ %3206, %3197 ], [ 0.000000e+00, %3159 ]
  br i1 %2564, label %3211, label %3219

; <label>:3211                                    ; preds = %3207
  %3212 = fsub fast float 1.000000e+00, %2860
  %3213 = fmul fast float %3212, %2554
  %3214 = fmul fast float %3212, %2555
  %3215 = fmul fast float %3212, %2556
  %3216 = fmul fast float %3212, %2557
  %3217 = fmul fast float %3212, %2558
  %3218 = fmul fast float %3212, %2559
  br label %3219

; <label>:3219                                    ; preds = %3211, %3207
  %3220 = phi float [ %3213, %3211 ], [ %2554, %3207 ]
  %3221 = phi float [ %3214, %3211 ], [ %2555, %3207 ]
  %3222 = phi float [ %3215, %3211 ], [ %2556, %3207 ]
  %3223 = phi float [ %3216, %3211 ], [ %2557, %3207 ]
  %3224 = phi float [ %3217, %3211 ], [ %2558, %3207 ]
  %3225 = phi float [ %3218, %3211 ], [ %2559, %3207 ]
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 3
  %3229 = icmp eq i32 %3228, 3
  br i1 %3229, label %3305, label %3230

; <label>:3230                                    ; preds = %3219
  %3231 = and i32 %3227, 16
  %3232 = icmp ne i32 %3231, 0
  %3233 = select i1 %3232, float %2860, float 0.000000e+00
  %3234 = icmp eq i32 %3228, 0
  br i1 %3234, label %3235, label %3260

; <label>:3235                                    ; preds = %3230
  %3236 = and i32 %3227, 64
  %3237 = icmp ne i32 %3236, 0
  %3238 = select i1 %3237, float %2860, float 0.000000e+00
  %3239 = fsub fast float %3080, %3220
  %3240 = fsub fast float %3081, %3221
  %3241 = fsub fast float %3082, %3222
  %3242 = fmul fast float %3233, %3239
  %3243 = fmul fast float %3233, %3240
  %3244 = fmul fast float %3233, %3241
  %3245 = fadd fast float %3242, %3220
  %3246 = fadd fast float %3243, %3221
  %3247 = fadd fast float %3244, %3222
  %3248 = fsub fast float %3066, %2560
  %3249 = fmul fast float %3233, %3248
  %3250 = fadd fast float %3249, %2560
  %3251 = fsub fast float %3208, %3223
  %3252 = fsub fast float %3209, %3224
  %3253 = fsub fast float %3210, %3225
  %3254 = fmul fast float %3238, %3251
  %3255 = fmul fast float %3238, %3252
  %3256 = fmul fast float %3238, %3253
  %3257 = fadd fast float %3254, %3223
  %3258 = fadd fast float %3255, %3224
  %3259 = fadd fast float %3256, %3225
  br label %3305

; <label>:3260                                    ; preds = %3230
  %3261 = icmp eq i32 %3228, 1
  br i1 %3261, label %3262, label %3275

; <label>:3262                                    ; preds = %3260
  %3263 = fadd fast float %3080, -1.000000e+00
  %3264 = fadd fast float %3081, -1.000000e+00
  %3265 = fadd fast float %3082, -1.000000e+00
  %3266 = fmul fast float %3233, %3263
  %3267 = fmul fast float %3233, %3264
  %3268 = fmul fast float %3233, %3265
  %3269 = fadd fast float %3266, 1.000000e+00
  %3270 = fadd fast float %3267, 1.000000e+00
  %3271 = fadd fast float %3268, 1.000000e+00
  %3272 = fmul fast float %3269, %3220
  %3273 = fmul fast float %3270, %3221
  %3274 = fmul fast float %3271, %3222
  br label %3305

; <label>:3275                                    ; preds = %3260
  %3276 = icmp eq i32 %3228, 2
  br i1 %3276, label %3277, label %3305

; <label>:3277                                    ; preds = %3275
  %3278 = call float @dx.op.unary.f32(i32 24, float %3080)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %3081)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %3082)  ; Sqrt(value)
  %3281 = fadd fast float %3278, -5.000000e-01
  %3282 = fadd fast float %3279, -5.000000e-01
  %3283 = fadd fast float %3280, -5.000000e-01
  %3284 = fmul fast float %3281, %3233
  %3285 = fmul fast float %3282, %3233
  %3286 = fmul fast float %3283, %3233
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = fadd fast float %3285, 5.000000e-01
  %3289 = fadd fast float %3286, 5.000000e-01
  %3290 = fmul fast float %3287, 2.000000e+00
  %3291 = fsub fast float 1.000000e+00, %3290
  %3292 = fmul fast float %3291, %3220
  %3293 = fadd fast float %3292, %3290
  %3294 = fmul fast float %3293, %3220
  %3295 = fmul fast float %3288, 2.000000e+00
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = fmul fast float %3296, %3221
  %3298 = fadd fast float %3297, %3295
  %3299 = fmul fast float %3298, %3221
  %3300 = fmul fast float %3289, 2.000000e+00
  %3301 = fsub fast float 1.000000e+00, %3300
  %3302 = fmul fast float %3301, %3222
  %3303 = fadd fast float %3302, %3300
  %3304 = fmul fast float %3303, %3222
  br label %3305

; <label>:3305                                    ; preds = %3277, %3275, %3262, %3235, %3219
  %3306 = phi float [ %3220, %3219 ], [ %3294, %3277 ], [ %3220, %3275 ], [ %3272, %3262 ], [ %3245, %3235 ]
  %3307 = phi float [ %3221, %3219 ], [ %3299, %3277 ], [ %3221, %3275 ], [ %3273, %3262 ], [ %3246, %3235 ]
  %3308 = phi float [ %3222, %3219 ], [ %3304, %3277 ], [ %3222, %3275 ], [ %3274, %3262 ], [ %3247, %3235 ]
  %3309 = phi float [ %3223, %3219 ], [ %3223, %3277 ], [ %3223, %3275 ], [ %3223, %3262 ], [ %3257, %3235 ]
  %3310 = phi float [ %3224, %3219 ], [ %3224, %3277 ], [ %3224, %3275 ], [ %3224, %3262 ], [ %3258, %3235 ]
  %3311 = phi float [ %3225, %3219 ], [ %3225, %3277 ], [ %3225, %3275 ], [ %3225, %3262 ], [ %3259, %3235 ]
  %3312 = phi float [ %2560, %3219 ], [ %2560, %3277 ], [ %2560, %3275 ], [ %2560, %3262 ], [ %3250, %3235 ]
  %3313 = and i32 %3227, 12
  %3314 = icmp eq i32 %3313, 12
  br i1 %3314, label %3387, label %3315

; <label>:3315                                    ; preds = %3305
  %3316 = and i32 %3227, 2097184
  %3317 = icmp eq i32 %3316, 2097184
  %3318 = select i1 %3317, float %2860, float 0.000000e+00
  %3319 = and i32 %3227, 4194336
  %3320 = icmp eq i32 %3319, 4194336
  %3321 = select i1 %3320, float %2860, float 0.000000e+00
  %3322 = and i32 %3227, 8388640
  %3323 = icmp eq i32 %3322, 8388640
  %3324 = select i1 %3323, float %2860, float 0.000000e+00
  %3325 = icmp eq i32 %3313, 0
  br i1 %3325, label %3326, label %3339

; <label>:3326                                    ; preds = %3315
  %3327 = fsub fast float %3161, %2552
  %3328 = fsub fast float %3162, %2553
  %3329 = fmul fast float %3318, %3327
  %3330 = fmul fast float %3318, %3328
  %3331 = fadd fast float %3329, %2552
  %3332 = fadd fast float %3330, %2553
  %3333 = fsub fast float %3163, %2562
  %3334 = fmul fast float %3321, %3333
  %3335 = fadd fast float %3334, %2562
  %3336 = fsub fast float %3160, %2561
  %3337 = fmul fast float %3324, %3336
  %3338 = fadd fast float %3337, %2561
  br label %3387

; <label>:3339                                    ; preds = %3315
  %3340 = icmp eq i32 %3313, 4
  br i1 %3340, label %3341, label %3373

; <label>:3341                                    ; preds = %3339
  %3342 = fmul fast float %3318, %3161
  %3343 = fmul fast float %3318, %3162
  %3344 = fadd fast float %3342, %2552
  %3345 = fadd fast float %3343, %2553
  %3346 = call float @dx.op.binary.f32(i32 36, float %2562, float %3163)  ; FMin(a,b)
  %3347 = fsub fast float %3346, %2562
  %3348 = fmul fast float %3347, %3321
  %3349 = fadd fast float %3348, %2562
  %3350 = fadd fast float %3160, %2561
  %3351 = fmul fast float %3350, 0x3FF337FAE0000000
  %3352 = fmul fast float %2561, %2561
  %3353 = fmul fast float %3160, %3160
  %3354 = fadd fast float %3353, %3352
  %3355 = fmul fast float %3354, 0x3FE5152B00000000
  %3356 = fmul fast float %2561, 0xBFCC1F85E0000000
  %3357 = fmul fast float %3356, %3160
  %3358 = fadd fast float %3357, 0xBFE1363700000000
  %3359 = fadd fast float %3358, %3351
  %3360 = fsub fast float %3359, %3355
  %3361 = fmul fast float %3350, 0x3FBA6F0D00000000
  %3362 = fmul fast float %3354, 0x3FD0432880000000
  %3363 = fmul fast float %2561, 0xBFEF110800000000
  %3364 = fmul fast float %3363, %3160
  %3365 = fadd fast float %3364, 1.000000e+00
  %3366 = fsub fast float %3365, %3361
  %3367 = fadd fast float %3366, %3362
  %3368 = fdiv fast float %3360, %3367
  %3369 = call float @dx.op.unary.f32(i32 7, float %3368)  ; Saturate(value)
  %3370 = fsub fast float %3369, %2561
  %3371 = fmul fast float %3370, %3324
  %3372 = fadd fast float %3371, %2561
  br label %3387

; <label>:3373                                    ; preds = %3339
  %3374 = icmp eq i32 %3313, 8
  br i1 %3374, label %3375, label %3387

; <label>:3375                                    ; preds = %3373
  %3376 = fmul fast float %3318, %3161
  %3377 = fmul fast float %3318, %3162
  %3378 = fadd fast float %3376, %2552
  %3379 = fadd fast float %3377, %2553
  %3380 = call float @dx.op.binary.f32(i32 36, float %2562, float %3163)  ; FMin(a,b)
  %3381 = fsub fast float %3380, %2562
  %3382 = fmul fast float %3381, %3321
  %3383 = fadd fast float %3382, %2562
  %3384 = fsub fast float %3160, %2561
  %3385 = fmul fast float %3324, %3384
  %3386 = fadd fast float %3385, %2561
  br label %3387

; <label>:3387                                    ; preds = %3375, %3373, %3341, %3326, %3305, %2859, %2563, %2551
  %3388 = phi float [ %2552, %3305 ], [ %2552, %2859 ], [ %2552, %2551 ], [ %2552, %2563 ], [ %3331, %3326 ], [ %3344, %3341 ], [ %2552, %3373 ], [ %3378, %3375 ]
  %3389 = phi float [ %2553, %3305 ], [ %2553, %2859 ], [ %2553, %2551 ], [ %2553, %2563 ], [ %3332, %3326 ], [ %3345, %3341 ], [ %2553, %3373 ], [ %3379, %3375 ]
  %3390 = phi float [ %3306, %3305 ], [ %2554, %2859 ], [ %2554, %2551 ], [ %2554, %2563 ], [ %3306, %3326 ], [ %3306, %3341 ], [ %3306, %3373 ], [ %3306, %3375 ]
  %3391 = phi float [ %3307, %3305 ], [ %2555, %2859 ], [ %2555, %2551 ], [ %2555, %2563 ], [ %3307, %3326 ], [ %3307, %3341 ], [ %3307, %3373 ], [ %3307, %3375 ]
  %3392 = phi float [ %3308, %3305 ], [ %2556, %2859 ], [ %2556, %2551 ], [ %2556, %2563 ], [ %3308, %3326 ], [ %3308, %3341 ], [ %3308, %3373 ], [ %3308, %3375 ]
  %3393 = phi float [ %3309, %3305 ], [ %2557, %2859 ], [ %2557, %2551 ], [ %2557, %2563 ], [ %3309, %3326 ], [ %3309, %3341 ], [ %3309, %3373 ], [ %3309, %3375 ]
  %3394 = phi float [ %3310, %3305 ], [ %2558, %2859 ], [ %2558, %2551 ], [ %2558, %2563 ], [ %3310, %3326 ], [ %3310, %3341 ], [ %3310, %3373 ], [ %3310, %3375 ]
  %3395 = phi float [ %3311, %3305 ], [ %2559, %2859 ], [ %2559, %2551 ], [ %2559, %2563 ], [ %3311, %3326 ], [ %3311, %3341 ], [ %3311, %3373 ], [ %3311, %3375 ]
  %3396 = phi float [ %3312, %3305 ], [ %2560, %2859 ], [ %2560, %2551 ], [ %2560, %2563 ], [ %3312, %3326 ], [ %3312, %3341 ], [ %3312, %3373 ], [ %3312, %3375 ]
  %3397 = phi float [ %2561, %3305 ], [ %2561, %2859 ], [ %2561, %2551 ], [ %2561, %2563 ], [ %3338, %3326 ], [ %3372, %3341 ], [ %2561, %3373 ], [ %3386, %3375 ]
  %3398 = phi float [ %2562, %3305 ], [ %2562, %2859 ], [ %2562, %2551 ], [ %2562, %2563 ], [ %3335, %3326 ], [ %3349, %3341 ], [ %2562, %3373 ], [ %3383, %3375 ]
  %3399 = add i32 %45, 520
  %3400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3401 = extractvalue %dx.types.ResRet.i32 %3400, 0
  %3402 = add i32 %3401, 0
  %3403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3403, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3405 = extractvalue %dx.types.ResRet.f32 %3404, 0
  %3406 = add i32 %45, 524
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3406, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = add i32 %3408, 0
  %3410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3410, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3412 = extractvalue %dx.types.ResRet.f32 %3411, 0
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = call float @dx.op.dot2.f32(i32 54, float %3388, float %3389, float %3388, float %3389)  ; Dot2(ax,ay,bx,by)
  %3416 = fmul fast float %3415, 0x3FE3333340000000
  %3417 = fsub fast float 1.000000e+00, %3416
  %3418 = call float @dx.op.dot3.f32(i32 55, float %3388, float %3389, float %3417, float %3388, float %3389, float %3417)  ; Dot3(ax,ay,az,bx,by,bz)
  %3419 = call float @dx.op.unary.f32(i32 25, float %3418)  ; Rsqrt(value)
  %3420 = fmul fast float %3419, %3388
  %3421 = fmul fast float %3419, %3389
  %3422 = fmul fast float %3417, %3419
  %3423 = fmul fast float %3422, %94
  %3424 = fmul fast float %3422, %96
  %3425 = fmul fast float %3422, %98
  %3426 = fmul fast float %3420, %66
  %3427 = fmul fast float %3420, %67
  %3428 = fmul fast float %3420, %68
  %3429 = fadd fast float %3423, %3426
  %3430 = fadd fast float %3424, %3427
  %3431 = fadd fast float %3425, %3428
  %3432 = fmul fast float %108, %3421
  %3433 = fmul fast float %109, %3421
  %3434 = fmul fast float %110, %3421
  %3435 = fadd fast float %3429, %3432
  %3436 = fadd fast float %3430, %3433
  %3437 = fadd fast float %3431, %3434
  %3438 = call float @dx.op.dot3.f32(i32 55, float %3435, float %3436, float %3437, float %3435, float %3436, float %3437)  ; Dot3(ax,ay,az,bx,by,bz)
  %3439 = call float @dx.op.unary.f32(i32 25, float %3438)  ; Rsqrt(value)
  %3440 = fmul fast float %3435, %3439
  %3441 = fmul fast float %3436, %3439
  %3442 = fmul fast float %3437, %3439
  %3443 = and i32 %47, 1
  %3444 = icmp eq i32 %3443, 0
  br i1 %3444, label %3445, label %3953

; <label>:3445                                    ; preds = %3387
  %3446 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3447 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3448 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3449 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3450 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3451 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3452 = fadd fast float %3446, %144
  %3453 = fadd fast float %3447, %145
  %3454 = fadd fast float %3448, %146
  %3455 = fadd fast float %3449, %144
  %3456 = fadd fast float %3450, %145
  %3457 = fadd fast float %3451, %146
  %3458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3459 = extractvalue %dx.types.CBufRet.f32 %3458, 0
  %3460 = extractvalue %dx.types.CBufRet.f32 %3458, 1
  %3461 = extractvalue %dx.types.CBufRet.f32 %3458, 2
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 2
  %3464 = extractvalue %dx.types.CBufRet.f32 %3462, 3
  %3465 = fmul fast float %3459, %85
  %3466 = fmul fast float %3465, %3463
  %3467 = fmul fast float %3460, %86
  %3468 = fmul fast float %3467, %3464
  %3469 = fptoui float %3466 to i32
  %3470 = fptoui float %3468 to i32
  %3471 = fadd fast float %3459, -1.000000e+00
  %3472 = fadd fast float %3460, -1.000000e+00
  %3473 = fptoui float %3471 to i32
  %3474 = fptoui float %3472 to i32
  %3475 = call i32 @dx.op.binary.i32(i32 40, i32 %3469, i32 %3473)  ; UMin(a,b)
  %3476 = call i32 @dx.op.binary.i32(i32 40, i32 %3470, i32 %3474)  ; UMin(a,b)
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 2
  %3479 = extractvalue %dx.types.CBufRet.f32 %3477, 3
  %3480 = fmul fast float %3478, %80
  %3481 = fsub fast float %3480, %3479
  %3482 = fadd fast float %3461, -1.000000e+00
  %3483 = call float @dx.op.binary.f32(i32 36, float %3481, float %3482)  ; FMin(a,b)
  %3484 = fptoui float %3483 to i32
  %3485 = fptoui float %3459 to i32
  %3486 = fptoui float %3460 to i32
  %3487 = mul i32 %3484, %3486
  %3488 = add i32 %3487, %3476
  %3489 = mul i32 %3488, %3485
  %3490 = add i32 %3489, %3475
  %3491 = shl i32 %3490, 2
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = and i32 %3493, 1023
  %3495 = lshr i32 %3493, 10
  %3496 = icmp eq i32 %3494, 0
  br i1 %3496, label %3922, label %3497

; <label>:3497                                    ; preds = %3445
  %3498 = and i32 %3493, 1023
  br label %3499

; <label>:3499                                    ; preds = %3625, %3497
  %3500 = phi i32 [ %3575, %3625 ], [ 0, %3497 ]
  %3501 = phi float [ %3626, %3625 ], [ 0.000000e+00, %3497 ]
  %3502 = phi float [ %3627, %3625 ], [ %3414, %3497 ]
  %3503 = phi float [ %3628, %3625 ], [ %3412, %3497 ]
  %3504 = phi float [ %3629, %3625 ], [ 0.000000e+00, %3497 ]
  %3505 = phi float [ %3630, %3625 ], [ 0.000000e+00, %3497 ]
  %3506 = phi float [ %3631, %3625 ], [ %3393, %3497 ]
  %3507 = phi float [ %3632, %3625 ], [ %3394, %3497 ]
  %3508 = phi float [ %3633, %3625 ], [ %3395, %3497 ]
  %3509 = phi float [ %3634, %3625 ], [ %3440, %3497 ]
  %3510 = phi float [ %3635, %3625 ], [ %3441, %3497 ]
  %3511 = phi float [ %3636, %3625 ], [ %3442, %3497 ]
  %3512 = phi float [ %3637, %3625 ], [ %3398, %3497 ]
  %3513 = phi float [ %3638, %3625 ], [ %3397, %3497 ]
  %3514 = phi float [ %3639, %3625 ], [ 0.000000e+00, %3497 ]
  %3515 = phi float [ %3640, %3625 ], [ %3396, %3497 ]
  %3516 = phi float [ %3641, %3625 ], [ %3390, %3497 ]
  %3517 = phi float [ %3642, %3625 ], [ %3391, %3497 ]
  %3518 = phi float [ %3643, %3625 ], [ %3392, %3497 ]
  %3519 = add nuw nsw i32 %3500, %3495
  %3520 = shl i32 %3519, 2
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = shl i32 %3522, 8
  %3524 = or i32 %3523, 48
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.ResRet.f32 %3525, 1
  %3528 = extractvalue %dx.types.ResRet.f32 %3525, 2
  %3529 = extractvalue %dx.types.ResRet.f32 %3525, 3
  %3530 = or i32 %3523, 64
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3530, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = extractvalue %dx.types.ResRet.i32 %3531, 1
  %3534 = or i32 %3523, 80
  %3535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 2
  %3537 = extractvalue %dx.types.ResRet.f32 %3535, 3
  %3538 = or i32 %3523, 96
  %3539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3538, i32 undef)  ; BufferLoad(srv,index,wot)
  %3540 = extractvalue %dx.types.ResRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.ResRet.f32 %3539, 1
  %3542 = extractvalue %dx.types.ResRet.f32 %3539, 2
  %3543 = extractvalue %dx.types.ResRet.f32 %3539, 3
  %3544 = or i32 %3523, 112
  %3545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 2
  %3547 = or i32 %3523, 128
  %3548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.ResRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.ResRet.f32 %3548, 2
  %3552 = extractvalue %dx.types.ResRet.f32 %3548, 3
  %3553 = or i32 %3523, 144
  %3554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3553, i32 undef)  ; BufferLoad(srv,index,wot)
  %3555 = extractvalue %dx.types.ResRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.ResRet.f32 %3554, 1
  %3557 = extractvalue %dx.types.ResRet.f32 %3554, 2
  %3558 = extractvalue %dx.types.ResRet.f32 %3554, 3
  %3559 = or i32 %3523, 160
  %3560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.f32 %3560, 0
  %3562 = extractvalue %dx.types.ResRet.f32 %3560, 1
  %3563 = extractvalue %dx.types.ResRet.f32 %3560, 2
  %3564 = extractvalue %dx.types.ResRet.f32 %3560, 3
  %3565 = or i32 %3523, 192
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = or i32 %3523, 208
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = or i32 %3523, 248
  %3572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3571, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.ResRet.f32 %3572, 1
  %3575 = add nuw nsw i32 %3500, 1
  %3576 = bitcast float %3529 to i32
  %3577 = and i32 %3576, 512
  %3578 = icmp eq i32 %3577, 0
  %3579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3523, i32 undef)  ; BufferLoad(srv,index,wot)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3583 = extractvalue %dx.types.ResRet.f32 %3579, 3
  %3584 = call float @dx.op.dot4.f32(i32 56, float %3580, float %3581, float %3582, float %3583, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3585 = or i32 %3523, 16
  %3586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = extractvalue %dx.types.ResRet.f32 %3586, 3
  %3591 = call float @dx.op.dot4.f32(i32 56, float %3587, float %3588, float %3589, float %3590, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3592 = or i32 %3523, 32
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3598 = call float @dx.op.dot4.f32(i32 56, float %3594, float %3595, float %3596, float %3597, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3599 = call float @dx.op.unary.f32(i32 27, float %3584)  ; Round_ni(value)
  %3600 = call float @dx.op.unary.f32(i32 6, float %3599)  ; FAbs(value)
  %3601 = call float @dx.op.unary.f32(i32 27, float %3591)  ; Round_ni(value)
  %3602 = call float @dx.op.unary.f32(i32 6, float %3601)  ; FAbs(value)
  %3603 = call float @dx.op.unary.f32(i32 6, float %3598)  ; FAbs(value)
  %3604 = call float @dx.op.unary.f32(i32 27, float %3603)  ; Round_ni(value)
  %3605 = fadd fast float %3602, %3600
  %3606 = fadd fast float %3605, %3604
  %3607 = fcmp fast oeq float %3606, 0.000000e+00
  %3608 = call float @dx.op.dot4.f32(i32 56, float %3580, float %3581, float %3582, float %3583, float %3452, float %3453, float %3454, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3609 = call float @dx.op.dot4.f32(i32 56, float %3587, float %3588, float %3589, float %3590, float %3452, float %3453, float %3454, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3610 = call float @dx.op.dot4.f32(i32 56, float %3580, float %3581, float %3582, float %3583, float %3455, float %3456, float %3457, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3611 = call float @dx.op.dot4.f32(i32 56, float %3587, float %3588, float %3589, float %3590, float %3455, float %3456, float %3457, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3612 = fsub fast float %3608, %3584
  %3613 = fsub fast float %3610, %3584
  %3614 = fsub fast float %3609, %3591
  %3615 = fsub fast float %3611, %3591
  %3616 = call float @dx.op.dot3.f32(i32 55, float %3526, float %3527, float %3528, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.f32 %3617, 2
  %3619 = fadd fast float %3618, %3616
  %3620 = call float @dx.op.unary.f32(i32 7, float %3619)  ; Saturate(value)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3617, 0
  %3622 = fcmp fast ogt float %3620, %3621
  %3623 = and i1 %3607, %3622
  %3624 = and i1 %3578, %3623
  br i1 %3624, label %3645, label %3625

; <label>:3625                                    ; preds = %3908, %3726, %3645, %3499
  %3626 = phi float [ %3501, %3645 ], [ %3729, %3726 ], [ %3729, %3908 ], [ %3501, %3499 ]
  %3627 = phi float [ %3502, %3645 ], [ %3502, %3726 ], [ %3883, %3908 ], [ %3502, %3499 ]
  %3628 = phi float [ %3503, %3645 ], [ %3503, %3726 ], [ %3881, %3908 ], [ %3503, %3499 ]
  %3629 = phi float [ %3504, %3645 ], [ %3504, %3726 ], [ %3853, %3908 ], [ %3504, %3499 ]
  %3630 = phi float [ %3505, %3645 ], [ %3505, %3726 ], [ %3851, %3908 ], [ %3505, %3499 ]
  %3631 = phi float [ %3506, %3645 ], [ %3506, %3726 ], [ %3918, %3908 ], [ %3506, %3499 ]
  %3632 = phi float [ %3507, %3645 ], [ %3507, %3726 ], [ %3919, %3908 ], [ %3507, %3499 ]
  %3633 = phi float [ %3508, %3645 ], [ %3508, %3726 ], [ %3920, %3908 ], [ %3508, %3499 ]
  %3634 = phi float [ %3509, %3645 ], [ %3509, %3726 ], [ %3832, %3908 ], [ %3509, %3499 ]
  %3635 = phi float [ %3510, %3645 ], [ %3510, %3726 ], [ %3833, %3908 ], [ %3510, %3499 ]
  %3636 = phi float [ %3511, %3645 ], [ %3511, %3726 ], [ %3834, %3908 ], [ %3511, %3499 ]
  %3637 = phi float [ %3512, %3645 ], [ %3512, %3726 ], [ %3861, %3908 ], [ %3512, %3499 ]
  %3638 = phi float [ %3513, %3645 ], [ %3513, %3726 ], [ %3858, %3908 ], [ %3513, %3499 ]
  %3639 = phi float [ %3514, %3645 ], [ %3514, %3726 ], [ %3855, %3908 ], [ %3514, %3499 ]
  %3640 = phi float [ %3515, %3645 ], [ %3515, %3726 ], [ %3849, %3908 ], [ %3515, %3499 ]
  %3641 = phi float [ %3516, %3645 ], [ %3516, %3726 ], [ %3844, %3908 ], [ %3516, %3499 ]
  %3642 = phi float [ %3517, %3645 ], [ %3517, %3726 ], [ %3845, %3908 ], [ %3517, %3499 ]
  %3643 = phi float [ %3518, %3645 ], [ %3518, %3726 ], [ %3846, %3908 ], [ %3518, %3499 ]
  %3644 = icmp eq i32 %3575, %3498
  br i1 %3644, label %3921, label %3499

; <label>:3645                                    ; preds = %3499
  %3646 = extractvalue %dx.types.ResRet.f32 %3545, 3
  %3647 = extractvalue %dx.types.ResRet.f32 %3545, 1
  %3648 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3535, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3651 = extractvalue %dx.types.ResRet.i32 %3531, 3
  %3652 = extractvalue %dx.types.ResRet.i32 %3531, 2
  %3653 = add i32 %3651, 0
  %3654 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3653, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3656 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3654, %dx.types.Handle %3655, float %3584, float %3591, float undef, float undef, i32 0, i32 0, i32 undef, float %3612, float %3614, float undef, float %3613, float %3615, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = fmul fast float %3657, %3650
  %3659 = fadd fast float %3658, %3649
  %3660 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3661 = fmul fast float %3584, %3540
  %3662 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3591, float %3661)  ; FMad(a,b,c)
  %3663 = fadd fast float %3662, %3648
  %3664 = fmul fast float %3584, %3542
  %3665 = call float @dx.op.tertiary.f32(i32 46, float %3543, float %3591, float %3664)  ; FMad(a,b,c)
  %3666 = fadd fast float %3665, %3647
  %3667 = fmul fast float %3612, %3540
  %3668 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3614, float %3667)  ; FMad(a,b,c)
  %3669 = fmul fast float %3612, %3542
  %3670 = call float @dx.op.tertiary.f32(i32 46, float %3543, float %3614, float %3669)  ; FMad(a,b,c)
  %3671 = fmul fast float %3613, %3540
  %3672 = call float @dx.op.tertiary.f32(i32 46, float %3541, float %3615, float %3671)  ; FMad(a,b,c)
  %3673 = fmul fast float %3613, %3542
  %3674 = call float @dx.op.tertiary.f32(i32 46, float %3543, float %3615, float %3673)  ; FMad(a,b,c)
  %3675 = add i32 %3652, 0
  %3676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3677 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3676, %dx.types.Handle %3655, float %3663, float %3666, float undef, float undef, i32 0, i32 0, i32 undef, float %3668, float %3670, float undef, float %3672, float %3674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = and i32 %3576, 1024
  %3680 = icmp ne i32 %3679, 0
  %3681 = fcmp fast ogt float %3678, 0x3FE0101020000000
  %3682 = uitofp i1 %3681 to float
  %3683 = select i1 %3680, float %3682, float %3678
  %3684 = and i32 %3576, 8192
  %3685 = icmp ne i32 %3684, 0
  %3686 = select i1 %3685, float %3646, float 1.000000e+00
  %3687 = fmul fast float %3584, 2.000000e+00
  %3688 = fadd fast float %3687, -1.000000e+00
  %3689 = call float @dx.op.unary.f32(i32 6, float %3688)  ; FAbs(value)
  %3690 = fmul fast float %3689, %3573
  %3691 = fsub fast float %3690, %3573
  %3692 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3693 = fmul fast float %3591, 2.000000e+00
  %3694 = fadd fast float %3693, -1.000000e+00
  %3695 = call float @dx.op.unary.f32(i32 6, float %3694)  ; FAbs(value)
  %3696 = fmul fast float %3695, %3574
  %3697 = fsub fast float %3696, %3574
  %3698 = call float @dx.op.unary.f32(i32 7, float %3697)  ; Saturate(value)
  %3699 = fmul fast float %3603, %3536
  %3700 = fsub fast float %3699, %3536
  %3701 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  %3702 = fmul fast float %3660, %3686
  %3703 = fmul fast float %3702, %3657
  %3704 = fmul fast float %3703, %3692
  %3705 = fmul fast float %3704, %3683
  %3706 = fmul fast float %3705, %3698
  %3707 = fmul fast float %3706, %3701
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 1
  %3710 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3711 = fsub fast float %3620, %3710
  %3712 = fmul fast float %3711, %3709
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fmul fast float %3707, %3537
  %3715 = fadd fast float %3707, %3537
  %3716 = fmul fast float %3715, %3546
  %3717 = fsub fast float %3716, %3546
  %3718 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3719 = and i32 %3576, 128
  %3720 = icmp ne i32 %3719, 0
  %3721 = select i1 %3720, float %3718, float %3714
  %3722 = fmul fast float %3721, %3713
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 0
  %3725 = fcmp fast ugt float %3722, %3724
  br i1 %3725, label %3726, label %3625

; <label>:3726                                    ; preds = %3645
  %3727 = select i1 %3685, float %3722, float 0.000000e+00
  %3728 = fadd fast float %3727, %3501
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  br i1 %3685, label %3625, label %3730

; <label>:3730                                    ; preds = %3726
  %3731 = and i32 %3576, 4
  %3732 = and i32 %3576, 8
  %3733 = add i32 %3532, 0
  %3734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3733, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3736 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3734, %dx.types.Handle %3735, float %3663, float %3666, float undef, float undef, i32 0, i32 0, i32 undef, float %3668, float %3670, float undef, float %3672, float %3674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3741 = bitcast float %3558 to i32
  %3742 = and i32 %3741, 255
  %3743 = uitofp i32 %3742 to float
  %3744 = lshr i32 %3741, 8
  %3745 = and i32 %3744, 255
  %3746 = uitofp i32 %3745 to float
  %3747 = fmul fast float %3740, %3743
  %3748 = fadd fast float %3747, %3746
  %3749 = fmul fast float %3748, 0x3F70101000000000
  %3750 = add i32 %3533, 0
  %3751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3750, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3752 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3751, %dx.types.Handle %3735, float %3663, float %3666, float undef, float undef, i32 0, i32 0, i32 undef, float %3668, float %3670, float undef, float %3672, float %3674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.ResRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.ResRet.f32 %3752, 2
  %3756 = extractvalue %dx.types.ResRet.f32 %3752, 3
  %3757 = bitcast float %3552 to i32
  %3758 = and i32 %3757, 255
  %3759 = uitofp i32 %3758 to float
  %3760 = lshr i32 %3757, 8
  %3761 = and i32 %3760, 255
  %3762 = uitofp i32 %3761 to float
  %3763 = lshr i32 %3757, 16
  %3764 = and i32 %3763, 255
  %3765 = uitofp i32 %3764 to float
  %3766 = fmul fast float %3765, 0x3F70101000000000
  %3767 = fmul fast float %3753, %3759
  %3768 = fadd fast float %3767, %3762
  %3769 = fmul fast float %3768, 0x3F70101000000000
  %3770 = fadd fast float %3754, -5.000000e-01
  %3771 = fadd fast float %3756, -5.000000e-01
  %3772 = fmul fast float %3770, %3766
  %3773 = fmul fast float %3771, %3766
  %3774 = fadd fast float %3772, 5.000000e-01
  %3775 = fadd fast float %3773, 5.000000e-01
  %3776 = fmul fast float %3737, %3561
  %3777 = fmul fast float %3738, %3562
  %3778 = fmul fast float %3739, %3563
  %3779 = fmul fast float %3774, 2.000000e+00
  %3780 = fadd fast float %3779, -1.000000e+00
  %3781 = fmul fast float %3775, 2.000000e+00
  %3782 = fadd fast float %3781, -1.000000e+00
  %3783 = fadd fast float %3780, %3782
  %3784 = fmul fast float %3783, 5.000000e-01
  %3785 = fsub fast float %3780, %3782
  %3786 = fmul fast float %3785, 5.000000e-01
  %3787 = call float @dx.op.unary.f32(i32 6, float %3784)  ; FAbs(value)
  %3788 = fsub fast float 1.000000e+00, %3787
  %3789 = call float @dx.op.unary.f32(i32 6, float %3786)  ; FAbs(value)
  %3790 = fsub fast float %3788, %3789
  %3791 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3786, float %3790, float %3784, float %3786, float %3790)  ; Dot3(ax,ay,az,bx,by,bz)
  %3792 = call float @dx.op.unary.f32(i32 25, float %3791)  ; Rsqrt(value)
  %3793 = fmul fast float %3784, %3792
  %3794 = fmul fast float %3786, %3792
  %3795 = fmul fast float %3792, %3790
  %3796 = fmul fast float %3795, %3526
  %3797 = fmul fast float %3795, %3527
  %3798 = fmul fast float %3795, %3528
  %3799 = fmul fast float %3793, %3549
  %3800 = fmul fast float %3793, %3550
  %3801 = fmul fast float %3793, %3551
  %3802 = fadd fast float %3799, %3796
  %3803 = fadd fast float %3800, %3797
  %3804 = fadd fast float %3801, %3798
  %3805 = fmul fast float %3794, %3555
  %3806 = fmul fast float %3794, %3556
  %3807 = fmul fast float %3794, %3557
  %3808 = fadd fast float %3802, %3805
  %3809 = fadd fast float %3803, %3806
  %3810 = fadd fast float %3804, %3807
  %3811 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3809, float %3810, float %3808, float %3809, float %3810)  ; Dot3(ax,ay,az,bx,by,bz)
  %3812 = call float @dx.op.unary.f32(i32 25, float %3811)  ; Rsqrt(value)
  %3813 = fmul fast float %3808, %3812
  %3814 = fmul fast float %3809, %3812
  %3815 = fmul fast float %3810, %3812
  %3816 = icmp ne i32 %3732, 0
  %3817 = select i1 %3816, float 1.000000e+00, float 0.000000e+00
  %3818 = fmul fast float %3722, %3817
  %3819 = and i32 %3576, 1
  %3820 = icmp eq i32 %3819, 0
  br i1 %3820, label %3821, label %3825

; <label>:3821                                    ; preds = %3730
  %3822 = fsub fast float %3813, %3509
  %3823 = fsub fast float %3814, %3510
  %3824 = fsub fast float %3815, %3511
  br label %3825

; <label>:3825                                    ; preds = %3821, %3730
  %3826 = phi float [ %3822, %3821 ], [ %3813, %3730 ]
  %3827 = phi float [ %3823, %3821 ], [ %3814, %3730 ]
  %3828 = phi float [ %3824, %3821 ], [ %3815, %3730 ]
  %3829 = fmul float %3828, %3818
  %3830 = fmul float %3827, %3818
  %3831 = fmul float %3826, %3818
  %3832 = fadd fast float %3831, %3509
  %3833 = fadd fast float %3830, %3510
  %3834 = fadd fast float %3829, %3511
  %3835 = icmp ne i32 %3731, 0
  %3836 = select i1 %3835, float 1.000000e+00, float 0.000000e+00
  %3837 = fmul fast float %3722, %3836
  %3838 = fsub fast float %3776, %3516
  %3839 = fsub fast float %3777, %3517
  %3840 = fsub fast float %3778, %3518
  %3841 = fmul fast float %3838, %3837
  %3842 = fmul fast float %3839, %3837
  %3843 = fmul fast float %3840, %3837
  %3844 = fadd fast float %3841, %3516
  %3845 = fadd fast float %3842, %3517
  %3846 = fadd fast float %3843, %3518
  %3847 = fsub fast float %3749, %3515
  %3848 = fmul fast float %3847, %3837
  %3849 = fadd fast float %3848, %3515
  %3850 = fmul fast float %3837, %3505
  %3851 = fsub fast float %3505, %3850
  %3852 = fmul fast float %3837, %3504
  %3853 = fsub fast float %3504, %3852
  %3854 = fadd fast float %3722, %3514
  %3855 = call float @dx.op.unary.f32(i32 7, float %3854)  ; Saturate(value)
  %3856 = fsub fast float %3769, %3513
  %3857 = fmul fast float %3856, %3818
  %3858 = fadd fast float %3857, %3513
  %3859 = fsub fast float %3755, %3512
  %3860 = fmul fast float %3859, %3818
  %3861 = fadd fast float %3860, %3512
  %3862 = call float @dx.op.dot3.f32(i32 55, float %3776, float %3777, float %3778, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 0
  %3865 = extractvalue %dx.types.CBufRet.f32 %3863, 1
  %3866 = fmul fast float %3865, %3862
  %3867 = fadd fast float %3866, %3864
  %3868 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3869 = bitcast float %3564 to i32
  %3870 = and i32 %3869, 65535
  %3871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3870)  ; LegacyF16ToF32(value)
  %3872 = lshr i32 %3869, 16
  %3873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3872)  ; LegacyF16ToF32(value)
  %3874 = fcmp fast oge float %3871, 0.000000e+00
  %3875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3876 = extractvalue %dx.types.CBufRet.f32 %3875, 0
  %3877 = select i1 %3874, float %3871, float %3876
  %3878 = fadd fast float %3877, %3873
  %3879 = fsub fast float %3868, %3503
  %3880 = fmul fast float %3879, %3722
  %3881 = fadd fast float %3880, %3503
  %3882 = fmul fast float %3878, %3722
  %3883 = call float @dx.op.binary.f32(i32 35, float %3502, float %3882)  ; FMax(a,b)
  %3884 = and i32 %3576, 16
  %3885 = icmp eq i32 %3884, 0
  br i1 %3885, label %3908, label %3886

; <label>:3886                                    ; preds = %3825
  %3887 = bitcast float %3570 to i32
  %3888 = add i32 %3567, 0
  %3889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3888, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3890 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3889, %dx.types.Handle %3735, float %3663, float %3666, float undef, float undef, i32 0, i32 0, i32 undef, float %3668, float %3670, float undef, float %3672, float %3674, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  %3894 = and i32 %3887, 65535
  %3895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3894)  ; LegacyF16ToF32(value)
  %3896 = fmul fast float %3891, %3561
  %3897 = fmul fast float %3892, %3562
  %3898 = fmul fast float %3893, %3563
  %3899 = and i32 %3576, 16384
  %3900 = icmp ne i32 %3899, 0
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  %3903 = select i1 %3900, float %3902, float 1.000000e+00
  %3904 = fmul fast float %3903, %3895
  %3905 = fmul fast float %3896, %3904
  %3906 = fmul fast float %3897, %3904
  %3907 = fmul fast float %3898, %3904
  br label %3908

; <label>:3908                                    ; preds = %3886, %3825
  %3909 = phi float [ %3905, %3886 ], [ 0.000000e+00, %3825 ]
  %3910 = phi float [ %3906, %3886 ], [ 0.000000e+00, %3825 ]
  %3911 = phi float [ %3907, %3886 ], [ 0.000000e+00, %3825 ]
  %3912 = fsub fast float %3909, %3506
  %3913 = fsub fast float %3910, %3507
  %3914 = fsub fast float %3911, %3508
  %3915 = fmul fast float %3912, %3722
  %3916 = fmul fast float %3913, %3722
  %3917 = fmul fast float %3914, %3722
  %3918 = fadd fast float %3915, %3506
  %3919 = fadd fast float %3916, %3507
  %3920 = fadd fast float %3917, %3508
  br label %3625

; <label>:3921                                    ; preds = %3625
  br label %3922

; <label>:3922                                    ; preds = %3921, %3445
  %3923 = phi float [ 0.000000e+00, %3445 ], [ %3626, %3921 ]
  %3924 = phi float [ %3414, %3445 ], [ %3627, %3921 ]
  %3925 = phi float [ %3412, %3445 ], [ %3628, %3921 ]
  %3926 = phi float [ 0.000000e+00, %3445 ], [ %3629, %3921 ]
  %3927 = phi float [ 0.000000e+00, %3445 ], [ %3630, %3921 ]
  %3928 = phi float [ %3393, %3445 ], [ %3631, %3921 ]
  %3929 = phi float [ %3394, %3445 ], [ %3632, %3921 ]
  %3930 = phi float [ %3395, %3445 ], [ %3633, %3921 ]
  %3931 = phi float [ %3440, %3445 ], [ %3634, %3921 ]
  %3932 = phi float [ %3441, %3445 ], [ %3635, %3921 ]
  %3933 = phi float [ %3442, %3445 ], [ %3636, %3921 ]
  %3934 = phi float [ %3398, %3445 ], [ %3637, %3921 ]
  %3935 = phi float [ %3397, %3445 ], [ %3638, %3921 ]
  %3936 = phi float [ 0.000000e+00, %3445 ], [ %3639, %3921 ]
  %3937 = phi float [ %3396, %3445 ], [ %3640, %3921 ]
  %3938 = phi float [ %3390, %3445 ], [ %3641, %3921 ]
  %3939 = phi float [ %3391, %3445 ], [ %3642, %3921 ]
  %3940 = phi float [ %3392, %3445 ], [ %3643, %3921 ]
  %3941 = call float @dx.op.dot3.f32(i32 55, float %3931, float %3932, float %3933, float %3931, float %3932, float %3933)  ; Dot3(ax,ay,az,bx,by,bz)
  %3942 = call float @dx.op.unary.f32(i32 25, float %3941)  ; Rsqrt(value)
  %3943 = fmul fast float %3942, %3931
  %3944 = fmul fast float %3942, %3932
  %3945 = fmul fast float %3942, %3933
  %3946 = fadd fast float %3936, %888
  %3947 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3948 = call float @dx.op.dot3.f32(i32 55, float %3943, float %3944, float %3945, float %3943, float %3944, float %3945)  ; Dot3(ax,ay,az,bx,by,bz)
  %3949 = call float @dx.op.unary.f32(i32 25, float %3948)  ; Rsqrt(value)
  %3950 = fmul fast float %3949, %3943
  %3951 = fmul fast float %3949, %3944
  %3952 = fmul fast float %3949, %3945
  br label %3953

; <label>:3953                                    ; preds = %3922, %3387
  %3954 = phi float [ %3950, %3922 ], [ %3440, %3387 ]
  %3955 = phi float [ %3951, %3922 ], [ %3441, %3387 ]
  %3956 = phi float [ %3952, %3922 ], [ %3442, %3387 ]
  %3957 = phi float [ %3938, %3922 ], [ %3390, %3387 ]
  %3958 = phi float [ %3939, %3922 ], [ %3391, %3387 ]
  %3959 = phi float [ %3940, %3922 ], [ %3392, %3387 ]
  %3960 = phi float [ %3928, %3922 ], [ %3393, %3387 ]
  %3961 = phi float [ %3929, %3922 ], [ %3394, %3387 ]
  %3962 = phi float [ %3930, %3922 ], [ %3395, %3387 ]
  %3963 = phi float [ %3937, %3922 ], [ %3396, %3387 ]
  %3964 = phi float [ %3947, %3922 ], [ %888, %3387 ]
  %3965 = phi float [ %3935, %3922 ], [ %3397, %3387 ]
  %3966 = phi float [ %3934, %3922 ], [ %3398, %3387 ]
  %3967 = phi float [ %3927, %3922 ], [ 0.000000e+00, %3387 ]
  %3968 = phi float [ %3926, %3922 ], [ 0.000000e+00, %3387 ]
  %3969 = phi float [ %3923, %3922 ], [ 0.000000e+00, %3387 ]
  %3970 = phi float [ %3924, %3922 ], [ %3414, %3387 ]
  %3971 = phi float [ %3925, %3922 ], [ %3412, %3387 ]
  %3972 = fadd fast float %3963, 0xBFB99999A0000000
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fmul fast float %3973, 0x3FF1C71C80000000
  %3975 = call float @dx.op.binary.f32(i32 36, float %3963, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3976 = fsub fast float 1.000000e+00, %3974
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fmul fast float %3977, %3957
  %3979 = fmul fast float %3977, %3958
  %3980 = fmul fast float %3977, %3959
  %3981 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3982 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3983 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3984 = fmul fast float %3974, %3957
  %3985 = fmul fast float %3974, %3958
  %3986 = fmul fast float %3974, %3959
  %3987 = fadd fast float %3984, %3975
  %3988 = fadd fast float %3985, %3975
  %3989 = fadd fast float %3986, %3975
  %3990 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3991 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3992 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %3993 = call float @dx.op.unary.f32(i32 7, float %3965)  ; Saturate(value)
  %3994 = fadd fast float %3957, %3405
  %3995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.i32 %3995, 3
  %3997 = and i32 %3996, 8
  %3998 = icmp ne i32 %3997, 0
  %3999 = call float @dx.op.binary.f32(i32 35, float %3981, float %3994)  ; FMax(a,b)
  %4000 = call float @dx.op.binary.f32(i32 35, float %3982, float %3994)  ; FMax(a,b)
  %4001 = call float @dx.op.binary.f32(i32 35, float %3983, float %3994)  ; FMax(a,b)
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3981, float %3982, float %3983, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = select i1 %186, float %3994, float %3981
  %4004 = select i1 %186, float %4002, float %3982
  %4005 = select i1 %186, float 1.000000e+00, float %3983
  %4006 = select i1 %3998, float %3999, float %4003
  %4007 = select i1 %3998, float %4000, float %4004
  %4008 = select i1 %3998, float %4001, float %4005
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 0
  %4011 = extractvalue %dx.types.CBufRet.f32 %4009, 1
  %4012 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4013 = fadd fast float %4010, %144
  %4014 = fadd fast float %4011, %145
  %4015 = fadd fast float %4012, %146
  %4016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.f32 %4016, 0
  %4018 = extractvalue %dx.types.CBufRet.f32 %4016, 1
  %4019 = fsub fast float %4013, %4017
  %4020 = fsub fast float %4014, %4018
  %4021 = fmul fast float %4019, %4019
  %4022 = fmul fast float %4020, %4020
  %4023 = fadd fast float %4021, %4022
  %4024 = call float @dx.op.unary.f32(i32 24, float %4023)  ; Sqrt(value)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4016, 2
  %4026 = fcmp fast olt float %4024, %4025
  br i1 %4026, label %4027, label %4094

; <label>:4027                                    ; preds = %3953
  %4028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4029 = extractvalue %dx.types.CBufRet.f32 %4028, 0
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 0
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.CBufRet.f32 %4028, 1
  %4035 = extractvalue %dx.types.CBufRet.f32 %4030, 1
  %4036 = extractvalue %dx.types.CBufRet.f32 %4032, 1
  %4037 = extractvalue %dx.types.CBufRet.f32 %4028, 3
  %4038 = extractvalue %dx.types.CBufRet.f32 %4030, 3
  %4039 = extractvalue %dx.types.CBufRet.f32 %4032, 3
  %4040 = fadd fast float %4037, %4013
  %4041 = fadd fast float %4038, %4014
  %4042 = fadd fast float %4039, %4015
  %4043 = fmul fast float %4040, %4029
  %4044 = call float @dx.op.tertiary.f32(i32 46, float %4041, float %4031, float %4043)  ; FMad(a,b,c)
  %4045 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4033, float %4044)  ; FMad(a,b,c)
  %4046 = fmul fast float %4040, %4034
  %4047 = call float @dx.op.tertiary.f32(i32 46, float %4041, float %4035, float %4046)  ; FMad(a,b,c)
  %4048 = call float @dx.op.tertiary.f32(i32 46, float %4042, float %4036, float %4047)  ; FMad(a,b,c)
  %4049 = fsub fast float %4045, %4037
  %4050 = fsub fast float %4048, %4038
  %4051 = fsub fast float %4049, %4017
  %4052 = fadd fast float %4051, %4025
  %4053 = fsub fast float %4050, %4018
  %4054 = fadd fast float %4053, %4025
  %4055 = extractvalue %dx.types.CBufRet.f32 %4016, 3
  %4056 = fmul fast float %4052, %4055
  %4057 = fmul fast float %4054, %4055
  %4058 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4060 = fsub fast float 1.000000e+00, %4058
  %4061 = fsub fast float 1.000000e+00, %4059
  %4062 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4060, float %4061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = fcmp fast ugt float %4063, 0.000000e+00
  br i1 %4064, label %4065, label %4368

; <label>:4065                                    ; preds = %4027
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4068 = fmul fast float %4067, %4063
  %4069 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4070 = fadd fast float %4069, %4068
  %4071 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4072 = fadd fast float %4070, %4039
  %4073 = fmul fast float %4045, %4033
  %4074 = call float @dx.op.tertiary.f32(i32 46, float %4048, float %4036, float %4073)  ; FMad(a,b,c)
  %4075 = call float @dx.op.tertiary.f32(i32 46, float %4072, float %4071, float %4074)  ; FMad(a,b,c)
  %4076 = fsub fast float %4075, %4039
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4079 = fsub fast float %4076, %4078
  %4080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4060, float %4061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4081 = extractvalue %dx.types.ResRet.f32 %4080, 0
  %4082 = extractvalue %dx.types.ResRet.f32 %4080, 1
  %4083 = extractvalue %dx.types.ResRet.f32 %4080, 2
  %4084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4060, float %4061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4088 = fadd fast float %4085, %4081
  %4089 = fmul fast float %4088, 0x3F847AE140000000
  %4090 = fadd fast float %4086, %4082
  %4091 = fmul fast float %4090, 0x3F847AE140000000
  %4092 = fadd fast float %4087, %4083
  %4093 = fmul fast float %4092, 0x3F847AE140000000
  br label %4368

; <label>:4094                                    ; preds = %3953
  %4095 = and i32 %162, 1
  %4096 = icmp eq i32 %4095, 0
  br i1 %4096, label %4368, label %4097

; <label>:4097                                    ; preds = %4094
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4105 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4106 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4107 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4108 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4109 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4110 = fadd fast float %4107, %4013
  %4111 = fadd fast float %4108, %4014
  %4112 = fadd fast float %4109, %4015
  %4113 = fmul fast float %4110, %4099
  %4114 = call float @dx.op.tertiary.f32(i32 46, float %4111, float %4101, float %4113)  ; FMad(a,b,c)
  %4115 = call float @dx.op.tertiary.f32(i32 46, float %4112, float %4103, float %4114)  ; FMad(a,b,c)
  %4116 = fmul fast float %4110, %4104
  %4117 = call float @dx.op.tertiary.f32(i32 46, float %4111, float %4105, float %4116)  ; FMad(a,b,c)
  %4118 = call float @dx.op.tertiary.f32(i32 46, float %4112, float %4106, float %4117)  ; FMad(a,b,c)
  %4119 = fsub fast float %4115, %4107
  %4120 = fsub fast float %4118, %4108
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4124 = extractvalue %dx.types.CBufRet.f32 %4121, 2
  %4125 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4127 = extractvalue %dx.types.CBufRet.f32 %4126, 3
  %4128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.i32 %4128, 0
  %4130 = extractvalue %dx.types.CBufRet.i32 %4128, 1
  %4131 = udiv i32 %4130, %4129
  %4132 = fsub fast float %4119, %4122
  %4133 = fsub fast float %4120, %4123
  %4134 = call float @dx.op.binary.f32(i32 35, float %4132, float 0.000000e+00)  ; FMax(a,b)
  %4135 = call float @dx.op.binary.f32(i32 35, float %4133, float 0.000000e+00)  ; FMax(a,b)
  %4136 = call float @dx.op.binary.f32(i32 36, float %4134, float %4124)  ; FMin(a,b)
  %4137 = call float @dx.op.binary.f32(i32 36, float %4135, float %4125)  ; FMin(a,b)
  %4138 = add i32 %4129, -1
  %4139 = add i32 %4131, -1
  %4140 = fmul fast float %4136, %4127
  %4141 = fmul fast float %4137, %4127
  %4142 = fptoui float %4140 to i32
  %4143 = fptoui float %4141 to i32
  %4144 = call i32 @dx.op.binary.i32(i32 40, i32 %4142, i32 %4138)  ; UMin(a,b)
  %4145 = call i32 @dx.op.binary.i32(i32 40, i32 %4143, i32 %4139)  ; UMin(a,b)
  %4146 = mul i32 %4145, %4129
  %4147 = add i32 %4146, %4144
  %4148 = shl i32 %4147, 2
  %4149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.i32 %4149, 0
  %4151 = icmp eq i32 %4150, -1
  br i1 %4151, label %4368, label %4152

; <label>:4152                                    ; preds = %4097
  %4153 = mul i32 %4150, 148
  %4154 = add i32 %4153, 4
  %4155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4157 = add i32 %4153, 8
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = add i32 %4153, 36
  %4161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4160, i32 undef)  ; BufferLoad(srv,index,wot)
  %4162 = extractvalue %dx.types.ResRet.f32 %4161, 0
  %4163 = add i32 %4153, 60
  %4164 = add i32 %4153, 92
  %4165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.i32 %4165, 0
  %4167 = add i32 %4153, 116
  %4168 = fsub fast float %4119, %4156
  %4169 = fsub fast float %4120, %4159
  %4170 = fmul fast float %4127, %4168
  %4171 = fmul fast float %4127, %4169
  %4172 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4173 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4174 = fsub fast float 1.000000e+00, %4173
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4177 = call float @dx.op.unary.f32(i32 83, float %4172)  ; DerivCoarseX(value)
  %4178 = call float @dx.op.unary.f32(i32 83, float %4174)  ; DerivCoarseX(value)
  %4179 = call float @dx.op.unary.f32(i32 84, float %4172)  ; DerivCoarseY(value)
  %4180 = call float @dx.op.unary.f32(i32 84, float %4174)  ; DerivCoarseY(value)
  %4181 = fmul fast float %4177, %4176
  %4182 = fmul fast float %4178, %4176
  %4183 = fmul fast float %4179, %4176
  %4184 = fmul fast float %4180, %4176
  %4185 = call float @dx.op.dot2.f32(i32 54, float %4183, float %4184, float %4183, float %4184)  ; Dot2(ax,ay,bx,by)
  %4186 = call float @dx.op.dot2.f32(i32 54, float %4181, float %4182, float %4181, float %4182)  ; Dot2(ax,ay,bx,by)
  %4187 = call float @dx.op.binary.f32(i32 35, float %4186, float %4185)  ; FMax(a,b)
  %4188 = call float @dx.op.unary.f32(i32 23, float %4187)  ; Log(value)
  %4189 = fmul fast float %4188, 5.000000e-01
  %4190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4190, 1
  %4192 = fadd fast float %4191, %4189
  %4193 = call float @dx.op.binary.f32(i32 35, float %4192, float 0.000000e+00)  ; FMax(a,b)
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4196 = fadd fast float %4195, %4193
  %4197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4198 = extractvalue %dx.types.CBufRet.f32 %4197, 3
  %4199 = fadd fast float %4196, %4198
  %4200 = add i32 %4166, 0
  %4201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4200, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4202 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4201, i32 0)  ; GetDimensions(handle,mipLevel)
  %4203 = extractvalue %dx.types.Dimensions %4202, 0
  %4204 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4203)  ; FirstbitLo(value)
  %4205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.i32 %4205, 1
  %4207 = sub nsw i32 %4206, %4204
  %4208 = sitofp i32 %4207 to float
  %4209 = fsub fast float %4199, %4208
  %4210 = call float @dx.op.binary.f32(i32 35, float %4209, float 0.000000e+00)  ; FMax(a,b)
  %4211 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4201, %dx.types.Handle %37, float %4172, float %4174, float %4162, float undef, i32 0, i32 0, i32 undef, float %4210)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = fcmp ule float %4212, 0x3FE0101020000000
  %4214 = extractvalue %dx.types.CBufRet.i32 %4205, 0
  %4215 = and i32 %4214, 128
  %4216 = icmp ne i32 %4215, 0
  %4217 = and i1 %4213, %4216
  br i1 %4217, label %4368, label %4218

; <label>:4218                                    ; preds = %4152
  %4219 = add i32 %4153, 20
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4153, 24
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4153, 40
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = add i32 %4153, 96
  %4229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.i32 %4229, 0
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 2
  %4233 = fmul fast float %4232, %4172
  %4234 = fmul fast float %4232, %4174
  %4235 = extractvalue %dx.types.CBufRet.f32 %4231, 3
  %4236 = fadd fast float %4233, %4235
  %4237 = fadd fast float %4234, %4235
  %4238 = add i32 %4230, 0
  %4239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4238, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4240 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4239, i32 0)  ; GetDimensions(handle,mipLevel)
  %4241 = extractvalue %dx.types.Dimensions %4240, 0
  %4242 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4241)  ; FirstbitLo(value)
  %4243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.i32 %4243, 1
  %4245 = sub nsw i32 %4244, %4242
  %4246 = sitofp i32 %4245 to float
  %4247 = fsub fast float %4196, %4246
  %4248 = call float @dx.op.binary.f32(i32 35, float %4247, float 0.000000e+00)  ; FMax(a,b)
  %4249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4239, %dx.types.Handle %37, float %4236, float %4237, float %4227, float undef, i32 0, i32 0, i32 undef, float %4248)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4250 = extractvalue %dx.types.ResRet.f32 %4249, 0
  %4251 = fmul fast float %4250, %4221
  %4252 = fadd fast float %4251, %4224
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 0
  %4255 = extractvalue %dx.types.CBufRet.f32 %4253, 1
  %4256 = extractvalue %dx.types.CBufRet.f32 %4253, 2
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 3
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4261 = extractvalue %dx.types.CBufRet.f32 %4253, 3
  %4262 = fadd fast float %4258, %4119
  %4263 = fadd fast float %4260, %4120
  %4264 = fadd fast float %4252, %4261
  %4265 = fmul fast float %4262, %4254
  %4266 = call float @dx.op.tertiary.f32(i32 46, float %4263, float %4255, float %4265)  ; FMad(a,b,c)
  %4267 = call float @dx.op.tertiary.f32(i32 46, float %4264, float %4256, float %4266)  ; FMad(a,b,c)
  %4268 = fsub fast float %4267, %4261
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4271 = fsub fast float %4268, %4270
  %4272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.i32 %4272, 0
  %4274 = call i32 @dx.op.binary.i32(i32 40, i32 %4150, i32 %4273)  ; UMin(a,b)
  %4275 = mul i32 %4274, 36
  %4276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.i32 %4276, 0
  %4278 = add i32 %4275, 4
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4281 = fmul fast float %4280, %4172
  %4282 = fmul fast float %4280, %4174
  %4283 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4284 = fadd fast float %4281, %4283
  %4285 = fadd fast float %4282, %4283
  %4286 = icmp eq i32 %4277, 0
  br i1 %4286, label %4355, label %4287

; <label>:4287                                    ; preds = %4218
  br label %4288

; <label>:4288                                    ; preds = %4345, %4287
  %4289 = phi float [ %4346, %4345 ], [ 0.000000e+00, %4287 ]
  %4290 = phi float [ %4347, %4345 ], [ 0.000000e+00, %4287 ]
  %4291 = phi float [ %4348, %4345 ], [ 0.000000e+00, %4287 ]
  %4292 = phi float [ %4349, %4345 ], [ 0.000000e+00, %4287 ]
  %4293 = phi float [ %4350, %4345 ], [ 0.000000e+00, %4287 ]
  %4294 = phi float [ %4351, %4345 ], [ 0.000000e+00, %4287 ]
  %4295 = phi i32 [ %4352, %4345 ], [ 0, %4287 ]
  %4296 = shl i32 %4295, 2
  %4297 = add i32 %4163, %4296
  %4298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4297, i32 undef)  ; BufferLoad(srv,index,wot)
  %4299 = extractvalue %dx.types.ResRet.f32 %4298, 0
  %4300 = add i32 %4167, %4296
  %4301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4300, i32 undef)  ; BufferLoad(srv,index,wot)
  %4302 = extractvalue %dx.types.ResRet.i32 %4301, 0
  %4303 = add i32 %4302, 0
  %4304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4303, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4304, i32 0)  ; GetDimensions(handle,mipLevel)
  %4306 = extractvalue %dx.types.Dimensions %4305, 0
  %4307 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4306)  ; FirstbitLo(value)
  %4308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.i32 %4308, 1
  %4310 = sub nsw i32 %4309, %4307
  %4311 = sitofp i32 %4310 to float
  %4312 = fsub fast float %4196, %4311
  %4313 = call float @dx.op.binary.f32(i32 35, float %4312, float 0.000000e+00)  ; FMax(a,b)
  %4314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4304, %dx.types.Handle %37, float %4284, float %4285, float %4299, float undef, i32 0, i32 0, i32 undef, float %4313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4315 = extractvalue %dx.types.ResRet.f32 %4314, 0
  %4316 = fcmp fast ogt float %4315, 0.000000e+00
  br i1 %4316, label %4317, label %4345

; <label>:4317                                    ; preds = %4288
  %4318 = add i32 %4278, %4296
  %4319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.i32 %4319, 0
  %4321 = and i32 %4320, 32767
  %4322 = mul nuw nsw i32 %4321, 928
  %4323 = add nuw nsw i32 %4322, 48
  %4324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4323, i32 undef)  ; BufferLoad(srv,index,wot)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = extractvalue %dx.types.ResRet.f32 %4324, 1
  %4327 = extractvalue %dx.types.ResRet.f32 %4324, 2
  %4328 = add nuw nsw i32 %4322, 60
  %4329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4328, i32 undef)  ; BufferLoad(srv,index,wot)
  %4330 = extractvalue %dx.types.ResRet.f32 %4329, 0
  %4331 = extractvalue %dx.types.ResRet.f32 %4329, 1
  %4332 = extractvalue %dx.types.ResRet.f32 %4329, 2
  %4333 = fmul fast float %4325, %4315
  %4334 = fmul fast float %4326, %4315
  %4335 = fmul fast float %4327, %4315
  %4336 = fadd fast float %4333, %4289
  %4337 = fadd fast float %4334, %4290
  %4338 = fadd fast float %4335, %4291
  %4339 = fmul fast float %4330, %4315
  %4340 = fmul fast float %4331, %4315
  %4341 = fmul fast float %4332, %4315
  %4342 = fadd fast float %4339, %4292
  %4343 = fadd fast float %4340, %4293
  %4344 = fadd fast float %4341, %4294
  br label %4345

; <label>:4345                                    ; preds = %4317, %4288
  %4346 = phi float [ %4336, %4317 ], [ %4289, %4288 ]
  %4347 = phi float [ %4337, %4317 ], [ %4290, %4288 ]
  %4348 = phi float [ %4338, %4317 ], [ %4291, %4288 ]
  %4349 = phi float [ %4342, %4317 ], [ %4292, %4288 ]
  %4350 = phi float [ %4343, %4317 ], [ %4293, %4288 ]
  %4351 = phi float [ %4344, %4317 ], [ %4294, %4288 ]
  %4352 = add nuw i32 %4295, 1
  %4353 = icmp eq i32 %4352, %4277
  br i1 %4353, label %4354, label %4288

; <label>:4354                                    ; preds = %4345
  br label %4355

; <label>:4355                                    ; preds = %4354, %4218
  %4356 = phi float [ 0.000000e+00, %4218 ], [ %4346, %4354 ]
  %4357 = phi float [ 0.000000e+00, %4218 ], [ %4347, %4354 ]
  %4358 = phi float [ 0.000000e+00, %4218 ], [ %4348, %4354 ]
  %4359 = phi float [ 0.000000e+00, %4218 ], [ %4349, %4354 ]
  %4360 = phi float [ 0.000000e+00, %4218 ], [ %4350, %4354 ]
  %4361 = phi float [ 0.000000e+00, %4218 ], [ %4351, %4354 ]
  %4362 = fadd fast float %4359, %4356
  %4363 = fmul fast float %4362, 0x3F847AE140000000
  %4364 = fadd fast float %4360, %4357
  %4365 = fmul fast float %4364, 0x3F847AE140000000
  %4366 = fadd fast float %4361, %4358
  %4367 = fmul fast float %4366, 0x3F847AE140000000
  br label %4368

; <label>:4368                                    ; preds = %4355, %4152, %4097, %4094, %4065, %4027
  %4369 = phi float [ %4079, %4065 ], [ -1.310720e+05, %4027 ], [ %4271, %4355 ], [ -1.310720e+05, %4097 ], [ -1.310720e+05, %4152 ], [ -1.310720e+05, %4094 ]
  %4370 = phi float [ %4089, %4065 ], [ 0.000000e+00, %4027 ], [ %4363, %4355 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4152 ], [ 0.000000e+00, %4094 ]
  %4371 = phi float [ %4091, %4065 ], [ 0.000000e+00, %4027 ], [ %4365, %4355 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4152 ], [ 0.000000e+00, %4094 ]
  %4372 = phi float [ %4093, %4065 ], [ 0.000000e+00, %4027 ], [ %4367, %4355 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4152 ], [ 0.000000e+00, %4094 ]
  %4373 = phi i1 [ true, %4065 ], [ false, %4027 ], [ true, %4355 ], [ false, %4097 ], [ false, %4152 ], [ false, %4094 ]
  %4374 = and i32 %162, 3
  %4375 = icmp eq i32 %4374, 1
  %4376 = select i1 %4375, float 1.000000e+00, float 0.000000e+00
  %4377 = fsub fast float %4369, %146
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4379 = select i1 %4373, float %4378, float 1.000000e+00
  %4380 = fmul fast float %4379, %4376
  %4381 = icmp eq i32 %4374, 3
  %4382 = select i1 %4381, float 1.000000e+00, float %4380
  %4383 = call float @dx.op.binary.f32(i32 35, float %3969, float %4382)  ; FMax(a,b)
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fcmp fast une float %4384, 0.000000e+00
  %4386 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4387 = call float @dx.op.unary.f32(i32 25, float %4386)  ; Rsqrt(value)
  br i1 %4385, label %4395, label %4388

; <label>:4388                                    ; preds = %4368
  %4389 = fmul fast float %4387, %144
  %4390 = fmul fast float %4387, %145
  %4391 = fmul fast float %4387, %146
  %4392 = fsub fast float -0.000000e+00, %4389
  %4393 = fsub fast float -0.000000e+00, %4390
  %4394 = fsub fast float -0.000000e+00, %4391
  br label %4563

; <label>:4395                                    ; preds = %4368
  %4396 = fmul fast float %144, %4387
  %4397 = fsub fast float -0.000000e+00, %4396
  %4398 = fmul fast float %145, %4387
  %4399 = fsub fast float -0.000000e+00, %4398
  %4400 = fmul fast float %146, %4387
  %4401 = fsub fast float -0.000000e+00, %4400
  %4402 = call float @dx.op.dot3.f32(i32 55, float %4397, float %4399, float %4401, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4403 = fmul fast float %4384, 2.500000e+00
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = fmul fast float %4384, 0x4013FFFFE0000000
  %4406 = fadd fast float %4405, 0xBFFFFFFFE0000000
  %4407 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4408 = fmul fast float %4384, 0x4004000020000000
  %4409 = fadd fast float %4408, 0xBFF8000040000000
  %4410 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4411 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4412 = fmul fast float %3972, 1.000000e+01
  %4413 = call float @dx.op.unary.f32(i32 7, float %4412)  ; Saturate(value)
  %4414 = fmul fast float %4413, 2.000000e+00
  %4415 = fsub fast float 3.000000e+00, %4414
  %4416 = fmul fast float %4413, %4413
  %4417 = fmul fast float %4416, %4415
  %4418 = fsub fast float 1.000000e+00, %4417
  %4419 = fsub fast float 0x3FE3333340000000, %3993
  %4420 = fmul fast float %4419, 0x400AAAAAA0000000
  %4421 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4422 = fmul fast float %4418, %4421
  %4423 = fmul fast float %4006, 0x3FEA2B8620000000
  %4424 = fmul fast float %4007, 0x3FEA2B8620000000
  %4425 = fmul fast float %4008, 0x3FEA2B8620000000
  %4426 = fadd fast float %4423, 0x3FC81DFBA0000000
  %4427 = fmul fast float %4426, %4006
  %4428 = fadd fast float %4427, 0x3F910E6020000000
  %4429 = fadd fast float %4424, 0x3FC81DFBA0000000
  %4430 = fmul fast float %4429, %4007
  %4431 = fadd fast float %4430, 0x3F910E6020000000
  %4432 = fadd fast float %4425, 0x3FC81DFBA0000000
  %4433 = fmul fast float %4432, %4008
  %4434 = fadd fast float %4433, 0x3F910E6020000000
  %4435 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4436 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4437 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4438 = fsub fast float %4435, %4006
  %4439 = fsub fast float %4436, %4007
  %4440 = fsub fast float %4437, %4008
  %4441 = fmul fast float %4438, %4411
  %4442 = fmul fast float %4441, %4422
  %4443 = fmul fast float %4439, %4411
  %4444 = fmul fast float %4443, %4422
  %4445 = fmul fast float %4440, %4411
  %4446 = fmul fast float %4445, %4422
  %4447 = fadd fast float %4442, %4006
  %4448 = fadd fast float %4444, %4007
  %4449 = fadd fast float %4446, %4008
  %4450 = fmul fast float %3966, %3966
  %4451 = fmul fast float %4450, %4450
  %4452 = fadd fast float %4407, 1.000000e+00
  %4453 = fsub fast float %4452, %4422
  %4454 = call float @dx.op.unary.f32(i32 7, float %4453)  ; Saturate(value)
  %4455 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4457 = fsub fast float 1.000000e+00, %4451
  %4458 = call float @dx.op.binary.f32(i32 36, float %4454, float %4457)  ; FMin(a,b)
  %4459 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4460 = call float @dx.op.binary.f32(i32 35, float %4458, float %4459)  ; FMax(a,b)
  %4461 = fadd fast float %4456, 0xBFE4CCCCC0000000
  %4462 = fmul fast float %4461, 0x4006DB6DA0000000
  %4463 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4464 = fmul fast float %4463, 2.000000e+00
  %4465 = fsub fast float 3.000000e+00, %4464
  %4466 = bitcast float %3990 to i32
  %4467 = ashr i32 %4466, 1
  %4468 = add nsw i32 %4467, 532487669
  %4469 = bitcast i32 %4468 to float
  %4470 = fsub fast float 1.000000e+00, %4469
  %4471 = bitcast float %4470 to i32
  %4472 = sub nsw i32 2129859010, %4471
  %4473 = bitcast i32 %4472 to float
  %4474 = fmul fast float %4473, 2.000000e+00
  %4475 = bitcast float %3991 to i32
  %4476 = ashr i32 %4475, 1
  %4477 = add nsw i32 %4476, 532487669
  %4478 = bitcast i32 %4477 to float
  %4479 = fsub fast float 1.000000e+00, %4478
  %4480 = bitcast float %4479 to i32
  %4481 = sub nsw i32 2129859010, %4480
  %4482 = bitcast i32 %4481 to float
  %4483 = fmul fast float %4482, 2.000000e+00
  %4484 = bitcast float %3992 to i32
  %4485 = ashr i32 %4484, 1
  %4486 = add nsw i32 %4485, 532487669
  %4487 = bitcast i32 %4486 to float
  %4488 = fsub fast float 1.000000e+00, %4487
  %4489 = bitcast float %4488 to i32
  %4490 = sub nsw i32 2129859010, %4489
  %4491 = bitcast i32 %4490 to float
  %4492 = fmul fast float %4491, 2.000000e+00
  %4493 = fsub fast float 0x4002A9FBE0000000, %4474
  %4494 = fadd fast float %4474, 0x3FD54FDF00000000
  %4495 = bitcast float %4494 to i32
  %4496 = sub nsw i32 2129859010, %4495
  %4497 = bitcast i32 %4496 to float
  %4498 = fmul fast float %4497, %4493
  %4499 = fmul fast float %4498, %4498
  %4500 = fsub fast float 0x4002A9FBE0000000, %4483
  %4501 = fadd fast float %4483, 0x3FD54FDF00000000
  %4502 = bitcast float %4501 to i32
  %4503 = sub nsw i32 2129859010, %4502
  %4504 = bitcast i32 %4503 to float
  %4505 = fmul fast float %4504, %4500
  %4506 = fmul fast float %4505, %4505
  %4507 = fsub fast float 0x4002A9FBE0000000, %4492
  %4508 = fadd fast float %4492, 0x3FD54FDF00000000
  %4509 = bitcast float %4508 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = fmul fast float %4511, %4507
  %4513 = fmul fast float %4512, %4512
  %4514 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4499)  ; FMax(a,b)
  %4515 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4506)  ; FMax(a,b)
  %4516 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4513)  ; FMax(a,b)
  %4517 = fsub fast float 1.000000e+00, %4402
  %4518 = fadd fast float %4517, %4418
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = fsub fast float 1.000000e+00, %4382
  %4521 = fmul fast float %4460, %4520
  %4522 = fmul fast float %4463, %4463
  %4523 = fmul fast float %4522, %4521
  %4524 = fmul fast float %4523, %4465
  %4525 = fmul fast float %4520, 0xBFE99999A0000000
  %4526 = fmul fast float %4525, %4411
  %4527 = fmul fast float %4526, %4422
  %4528 = fadd fast float %4527, 1.000000e+00
  %4529 = fadd fast float %3993, -1.000000e+00
  %4530 = fmul fast float %4528, %4529
  %4531 = fadd fast float %4530, 1.000000e+00
  %4532 = fsub fast float %4514, %3990
  %4533 = fsub fast float %4515, %3991
  %4534 = fsub fast float %4516, %3992
  %4535 = fmul fast float %4524, %4532
  %4536 = fmul fast float %4524, %4533
  %4537 = fmul fast float %4524, %4534
  %4538 = fadd fast float %4535, %3990
  %4539 = fadd fast float %4536, %3991
  %4540 = fadd fast float %4537, %3992
  %4541 = fsub fast float %94, %3954
  %4542 = fsub fast float %96, %3955
  %4543 = fsub fast float %98, %3956
  %4544 = fmul fast float %4524, %4541
  %4545 = fmul fast float %4524, %4542
  %4546 = fmul fast float %4524, %4543
  %4547 = fadd fast float %4544, %3954
  %4548 = fadd fast float %4545, %3955
  %4549 = fadd fast float %4546, %3956
  %4550 = fmul fast float %4524, %4519
  %4551 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4552 = fsub fast float 1.000000e+00, %4551
  %4553 = fmul fast float %4550, %4552
  %4554 = fadd fast float %4553, %4551
  %4555 = fsub fast float 1.000000e+00, %3966
  %4556 = fmul fast float %4524, %4555
  %4557 = fadd fast float %4556, %3966
  %4558 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4549, float %4547, float %4548, float %4549)  ; Dot3(ax,ay,az,bx,by,bz)
  %4559 = call float @dx.op.unary.f32(i32 25, float %4558)  ; Rsqrt(value)
  %4560 = fmul fast float %4547, %4559
  %4561 = fmul fast float %4548, %4559
  %4562 = fmul fast float %4549, %4559
  br label %4563

; <label>:4563                                    ; preds = %4395, %4388
  %4564 = phi float [ %4394, %4388 ], [ %4401, %4395 ]
  %4565 = phi float [ %4393, %4388 ], [ %4399, %4395 ]
  %4566 = phi float [ %4392, %4388 ], [ %4397, %4395 ]
  %4567 = phi float [ %4391, %4388 ], [ %4400, %4395 ]
  %4568 = phi float [ %4390, %4388 ], [ %4398, %4395 ]
  %4569 = phi float [ %4389, %4388 ], [ %4396, %4395 ]
  %4570 = phi float [ %3954, %4388 ], [ %4560, %4395 ]
  %4571 = phi float [ %3955, %4388 ], [ %4561, %4395 ]
  %4572 = phi float [ %3956, %4388 ], [ %4562, %4395 ]
  %4573 = phi float [ %3990, %4388 ], [ %4538, %4395 ]
  %4574 = phi float [ %3991, %4388 ], [ %4539, %4395 ]
  %4575 = phi float [ %3992, %4388 ], [ %4540, %4395 ]
  %4576 = phi float [ %4006, %4388 ], [ %4447, %4395 ]
  %4577 = phi float [ %4007, %4388 ], [ %4448, %4395 ]
  %4578 = phi float [ %4008, %4388 ], [ %4449, %4395 ]
  %4579 = phi float [ %3993, %4388 ], [ %4554, %4395 ]
  %4580 = phi float [ %3966, %4388 ], [ %4557, %4395 ]
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 2
  %4583 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4584 = fmul fast float %4582, %85
  %4585 = fmul fast float %4583, %86
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4584, float %4585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4590 = extractvalue %dx.types.ResRet.f32 %4589, 0
  %4591 = fmul fast float %4590, %4588
  %4592 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4593 = fadd fast float %4592, -1.000000e+00
  %4594 = fmul fast float %4593, %4587
  %4595 = fadd fast float %4594, 1.000000e+00
  %4596 = select i1 %186, float 0.000000e+00, float %4575
  %4597 = call float @dx.op.dot3.f32(i32 55, float %4570, float %4571, float %4572, float %4566, float %4565, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4598 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4599 = call float @dx.op.dot3.f32(i32 55, float %4569, float %4568, float %4567, float %4570, float %4571, float %4572)  ; Dot3(ax,ay,az,bx,by,bz)
  %4600 = fmul fast float %4599, 2.000000e+00
  %4601 = fmul fast float %4600, %4570
  %4602 = fmul fast float %4600, %4571
  %4603 = fmul fast float %4600, %4572
  %4604 = fsub fast float %4569, %4601
  %4605 = fsub fast float %4568, %4602
  %4606 = fsub fast float %4567, %4603
  %4607 = call float @dx.op.binary.f32(i32 36, float %4580, float %4595)  ; FMin(a,b)
  %4608 = fsub fast float 1.000000e+00, %4607
  %4609 = bitcast float %4608 to i32
  %4610 = ashr i32 %4609, 1
  %4611 = add nsw i32 %4610, 532487669
  %4612 = bitcast i32 %4611 to float
  %4613 = fsub fast float 1.000000e+00, %4579
  %4614 = call float @dx.op.binary.f32(i32 35, float %4613, float 0x3F847AE140000000)  ; FMax(a,b)
  %4615 = fmul fast float %4614, %4614
  %4616 = fmul fast float %4615, %4615
  %4617 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4612, float %4616, float %4617, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4619 = extractvalue %dx.types.ResRet.f32 %4618, 0
  %4620 = fsub fast float 1.000000e+00, %4580
  %4621 = bitcast float %4620 to i32
  %4622 = sub nsw i32 2129859010, %4621
  %4623 = bitcast i32 %4622 to float
  %4624 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4625 = fmul fast float %4624, 0x3FD20DD760000000
  %4626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4627 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4628 = fcmp fast oeq float %4627, 0.000000e+00
  %4629 = fcmp fast oeq float %4626, 0.000000e+00
  %4630 = or i1 %4629, %4628
  br i1 %4630, label %4660, label %4631

; <label>:4631                                    ; preds = %4563
  %4632 = fsub fast float -0.000000e+00, %65
  %4633 = fsub fast float -0.000000e+00, %63
  %4634 = call float @dx.op.unary.f32(i32 24, float %4627)  ; Sqrt(value)
  %4635 = fdiv fast float %4634, %4626
  %4636 = fcmp fast ogt float %4635, 0x3FFB6F8900000000
  %4637 = select i1 %4636, float 0x3FFB6F8900000000, float %4635
  %4638 = fmul fast float %4637, 0x3FE8A23460000000
  %4639 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4640 = call float @dx.op.binary.f32(i32 35, float %4637, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4641 = fmul fast float %4639, %4626
  %4642 = fmul fast float %4640, 0x3FF279A740000000
  %4643 = fadd fast float %4642, -1.000000e+00
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %64, float %4632, float %4633, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call float @dx.op.unary.f32(i32 25, float %4644)  ; Rsqrt(value)
  %4646 = fmul fast float %4645, %4632
  %4647 = fmul fast float %4645, %4633
  %4648 = fmul fast float %4645, %64
  %4649 = fmul fast float %4643, %4643
  %4650 = fsub fast float 1.000000e+00, %4649
  %4651 = fmul fast float %4640, 0x40005F8BE0000000
  %4652 = fsub fast float 0x400C5BF8A0000000, %4651
  %4653 = fdiv fast float %4641, %4652
  %4654 = fmul fast float %4653, 0x3FEE31C3C0000000
  %4655 = fmul fast float %4654, %4650
  %4656 = fmul fast float %4640, 0x3FDACB7480000000
  %4657 = fadd fast float %4656, 0xBFD7347680000000
  %4658 = fmul fast float %4657, %4653
  %4659 = fmul fast float %4658, %4650
  br label %4660

; <label>:4660                                    ; preds = %4631, %4563
  %4661 = phi float [ %4646, %4631 ], [ 0.000000e+00, %4563 ]
  %4662 = phi float [ %4647, %4631 ], [ 0.000000e+00, %4563 ]
  %4663 = phi float [ %4648, %4631 ], [ 0.000000e+00, %4563 ]
  %4664 = phi float [ %4655, %4631 ], [ 0.000000e+00, %4563 ]
  %4665 = phi float [ %4659, %4631 ], [ 0.000000e+00, %4563 ]
  %4666 = call float @dx.op.dot3.f32(i32 55, float %4661, float %4662, float %4663, float %4570, float %4571, float %4572)  ; Dot3(ax,ay,az,bx,by,bz)
  %4667 = fmul fast float %4666, %4666
  %4668 = fmul fast float %4667, 0x3FEE471020000000
  %4669 = fadd fast float %4668, 0xBFD42F6020000000
  %4670 = fmul fast float %4626, 0x3FD20DD760000000
  %4671 = fmul fast float %4669, %4665
  %4672 = fmul fast float %4664, 0x3FDF454380000000
  %4673 = fmul fast float %4672, %4666
  %4674 = fadd fast float %4673, %4670
  %4675 = fadd fast float %4674, %4671
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4661, float %4662, float %4663, float %4604, float %4605, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = fmul fast float %4676, 0x3FDF454380000000
  %4678 = fmul fast float %4676, %4676
  %4679 = fmul fast float %4678, 0x3FEE471020000000
  %4680 = fadd fast float %4679, 0xBFD42F6020000000
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4626, float %4664, float %4665, float 0x3FD20DD760000000, float %4677, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4683 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4684 = fcmp fast oeq float %4683, 0.000000e+00
  %4685 = fcmp fast oeq float %4682, 0.000000e+00
  %4686 = or i1 %4685, %4684
  br i1 %4686, label %4716, label %4687

; <label>:4687                                    ; preds = %4660
  %4688 = fsub fast float -0.000000e+00, %61
  %4689 = fsub fast float -0.000000e+00, %59
  %4690 = call float @dx.op.unary.f32(i32 24, float %4683)  ; Sqrt(value)
  %4691 = fdiv fast float %4690, %4682
  %4692 = fcmp fast ogt float %4691, 0x3FFB6F8900000000
  %4693 = select i1 %4692, float 0x3FFB6F8900000000, float %4691
  %4694 = fmul fast float %4693, 0x3FE8A23460000000
  %4695 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4696 = call float @dx.op.binary.f32(i32 35, float %4693, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4697 = fmul fast float %4695, %4682
  %4698 = fmul fast float %4696, 0x3FF279A740000000
  %4699 = fadd fast float %4698, -1.000000e+00
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4689, float %60, float %4688, float %4689, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 25, float %4700)  ; Rsqrt(value)
  %4702 = fmul fast float %4701, %4688
  %4703 = fmul fast float %4701, %4689
  %4704 = fmul fast float %4701, %60
  %4705 = fmul fast float %4699, %4699
  %4706 = fsub fast float 1.000000e+00, %4705
  %4707 = fmul fast float %4696, 0x40005F8BE0000000
  %4708 = fsub fast float 0x400C5BF8A0000000, %4707
  %4709 = fdiv fast float %4697, %4708
  %4710 = fmul fast float %4709, 0x3FEE31C3C0000000
  %4711 = fmul fast float %4710, %4706
  %4712 = fmul fast float %4696, 0x3FDACB7480000000
  %4713 = fadd fast float %4712, 0xBFD7347680000000
  %4714 = fmul fast float %4713, %4709
  %4715 = fmul fast float %4714, %4706
  br label %4716

; <label>:4716                                    ; preds = %4687, %4660
  %4717 = phi float [ %4702, %4687 ], [ 0.000000e+00, %4660 ]
  %4718 = phi float [ %4703, %4687 ], [ 0.000000e+00, %4660 ]
  %4719 = phi float [ %4704, %4687 ], [ 0.000000e+00, %4660 ]
  %4720 = phi float [ %4711, %4687 ], [ 0.000000e+00, %4660 ]
  %4721 = phi float [ %4715, %4687 ], [ 0.000000e+00, %4660 ]
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4718, float %4719, float %4570, float %4571, float %4572)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = fmul fast float %4722, %4722
  %4724 = fmul fast float %4723, 0x3FEE471020000000
  %4725 = fadd fast float %4724, 0xBFD42F6020000000
  %4726 = fmul fast float %4682, 0x3FD20DD760000000
  %4727 = fmul fast float %4725, %4721
  %4728 = fmul fast float %4720, 0x3FDF454380000000
  %4729 = fmul fast float %4728, %4722
  %4730 = fadd fast float %4729, %4726
  %4731 = fadd fast float %4730, %4727
  %4732 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4718, float %4719, float %4604, float %4605, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = fmul fast float %4732, 0x3FDF454380000000
  %4734 = fmul fast float %4732, %4732
  %4735 = fmul fast float %4734, 0x3FEE471020000000
  %4736 = fadd fast float %4735, 0xBFD42F6020000000
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4682, float %4720, float %4721, float 0x3FD20DD760000000, float %4733, float %4736)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4739 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4740 = fcmp fast oeq float %4739, 0.000000e+00
  %4741 = fcmp fast oeq float %4738, 0.000000e+00
  %4742 = or i1 %4741, %4740
  br i1 %4742, label %4772, label %4743

; <label>:4743                                    ; preds = %4716
  %4744 = fsub fast float -0.000000e+00, %57
  %4745 = fsub fast float -0.000000e+00, %55
  %4746 = call float @dx.op.unary.f32(i32 24, float %4739)  ; Sqrt(value)
  %4747 = fdiv fast float %4746, %4738
  %4748 = fcmp fast ogt float %4747, 0x3FFB6F8900000000
  %4749 = select i1 %4748, float 0x3FFB6F8900000000, float %4747
  %4750 = fmul fast float %4749, 0x3FE8A23460000000
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = call float @dx.op.binary.f32(i32 35, float %4749, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4753 = fmul fast float %4751, %4738
  %4754 = fmul fast float %4752, 0x3FF279A740000000
  %4755 = fadd fast float %4754, -1.000000e+00
  %4756 = call float @dx.op.dot3.f32(i32 55, float %4744, float %4745, float %56, float %4744, float %4745, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4757 = call float @dx.op.unary.f32(i32 25, float %4756)  ; Rsqrt(value)
  %4758 = fmul fast float %4757, %4744
  %4759 = fmul fast float %4757, %4745
  %4760 = fmul fast float %4757, %56
  %4761 = fmul fast float %4755, %4755
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = fmul fast float %4752, 0x40005F8BE0000000
  %4764 = fsub fast float 0x400C5BF8A0000000, %4763
  %4765 = fdiv fast float %4753, %4764
  %4766 = fmul fast float %4765, 0x3FEE31C3C0000000
  %4767 = fmul fast float %4766, %4762
  %4768 = fmul fast float %4752, 0x3FDACB7480000000
  %4769 = fadd fast float %4768, 0xBFD7347680000000
  %4770 = fmul fast float %4769, %4765
  %4771 = fmul fast float %4770, %4762
  br label %4772

; <label>:4772                                    ; preds = %4743, %4716
  %4773 = phi float [ %4758, %4743 ], [ 0.000000e+00, %4716 ]
  %4774 = phi float [ %4759, %4743 ], [ 0.000000e+00, %4716 ]
  %4775 = phi float [ %4760, %4743 ], [ 0.000000e+00, %4716 ]
  %4776 = phi float [ %4767, %4743 ], [ 0.000000e+00, %4716 ]
  %4777 = phi float [ %4771, %4743 ], [ 0.000000e+00, %4716 ]
  %4778 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %4570, float %4571, float %4572)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = fmul fast float %4778, %4778
  %4780 = fmul fast float %4779, 0x3FEE471020000000
  %4781 = fadd fast float %4780, 0xBFD42F6020000000
  %4782 = fmul fast float %4738, 0x3FD20DD760000000
  %4783 = fmul fast float %4781, %4777
  %4784 = fmul fast float %4776, 0x3FDF454380000000
  %4785 = fmul fast float %4784, %4778
  %4786 = fadd fast float %4785, %4782
  %4787 = fadd fast float %4786, %4783
  %4788 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4774, float %4775, float %4604, float %4605, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = fmul fast float %4788, 0x3FDF454380000000
  %4790 = fmul fast float %4788, %4788
  %4791 = fmul fast float %4790, 0x3FEE471020000000
  %4792 = fadd fast float %4791, 0xBFD42F6020000000
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4738, float %4776, float %4777, float 0x3FD20DD760000000, float %4789, float %4792)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.binary.f32(i32 35, float %4675, float 0.000000e+00)  ; FMax(a,b)
  %4795 = call float @dx.op.binary.f32(i32 35, float %4731, float 0.000000e+00)  ; FMax(a,b)
  %4796 = call float @dx.op.binary.f32(i32 35, float %4787, float 0.000000e+00)  ; FMax(a,b)
  %4797 = call float @dx.op.binary.f32(i32 35, float %4681, float 0.000000e+00)  ; FMax(a,b)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4737, float 0.000000e+00)  ; FMax(a,b)
  %4799 = call float @dx.op.binary.f32(i32 35, float %4793, float 0.000000e+00)  ; FMax(a,b)
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = call float @dx.op.binary.f32(i32 36, float %4576, float %4801)  ; FMin(a,b)
  %4803 = fmul fast float %4802, %4608
  %4804 = fsub fast float 1.000000e+00, %4803
  %4805 = bitcast float %4804 to i32
  %4806 = sub nsw i32 2129859010, %4805
  %4807 = bitcast i32 %4806 to float
  %4808 = call float @dx.op.binary.f32(i32 36, float %4577, float %4801)  ; FMin(a,b)
  %4809 = fmul fast float %4808, %4608
  %4810 = fsub fast float 1.000000e+00, %4809
  %4811 = bitcast float %4810 to i32
  %4812 = sub nsw i32 2129859010, %4811
  %4813 = bitcast i32 %4812 to float
  %4814 = call float @dx.op.binary.f32(i32 36, float %4578, float %4801)  ; FMin(a,b)
  %4815 = fmul fast float %4814, %4608
  %4816 = fsub fast float 1.000000e+00, %4815
  %4817 = bitcast float %4816 to i32
  %4818 = sub nsw i32 2129859010, %4817
  %4819 = bitcast i32 %4818 to float
  %4820 = fmul fast float %4794, %4607
  %4821 = fmul fast float %4820, %4807
  %4822 = fmul fast float %4795, %4607
  %4823 = fmul fast float %4822, %4813
  %4824 = fmul fast float %4796, %4607
  %4825 = fmul fast float %4824, %4819
  %4826 = call float @dx.op.binary.f32(i32 36, float %4573, float %4801)  ; FMin(a,b)
  %4827 = fmul fast float %4826, %4608
  %4828 = fsub fast float 1.000000e+00, %4827
  %4829 = bitcast float %4828 to i32
  %4830 = sub nsw i32 2129859010, %4829
  %4831 = bitcast i32 %4830 to float
  %4832 = call float @dx.op.binary.f32(i32 36, float %4574, float %4801)  ; FMin(a,b)
  %4833 = fmul fast float %4832, %4608
  %4834 = fsub fast float 1.000000e+00, %4833
  %4835 = bitcast float %4834 to i32
  %4836 = sub nsw i32 2129859010, %4835
  %4837 = bitcast i32 %4836 to float
  %4838 = call float @dx.op.binary.f32(i32 36, float %4596, float %4801)  ; FMin(a,b)
  %4839 = fmul fast float %4838, %4608
  %4840 = fsub fast float 1.000000e+00, %4839
  %4841 = bitcast float %4840 to i32
  %4842 = sub nsw i32 2129859010, %4841
  %4843 = bitcast i32 %4842 to float
  %4844 = fmul fast float %4797, %4607
  %4845 = fmul fast float %4844, %4831
  %4846 = fmul fast float %4798, %4607
  %4847 = fmul fast float %4846, %4837
  %4848 = fmul fast float %4799, %4607
  %4849 = fmul fast float %4848, %4843
  %4850 = call float @dx.op.dot3.f32(i32 55, float %4821, float %4823, float %4825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4851 = select i1 %186, float 0.000000e+00, float %4821
  %4852 = select i1 %186, float %4850, float %4823
  %4853 = select i1 %186, float 0.000000e+00, float %4825
  %4854 = call float @dx.op.dot3.f32(i32 55, float %4845, float %4847, float %4849, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4855 = select i1 %186, float 0.000000e+00, float %4845
  %4856 = select i1 %186, float %4854, float %4847
  %4857 = select i1 %186, float 0.000000e+00, float %4849
  %4858 = fmul fast float %4598, 9.843750e-01
  %4859 = fmul fast float %4579, 9.843750e-01
  %4860 = fadd fast float %4858, 7.812500e-03
  %4861 = fadd fast float %4859, 7.812500e-03
  %4862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4860, float %4861, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 2
  %4864 = extractvalue %dx.types.ResRet.f32 %4862, 3
  %4865 = fmul fast float %4863, %4573
  %4866 = fmul fast float %4863, %4574
  %4867 = fmul fast float %4863, %4596
  %4868 = fadd fast float %4865, %4864
  %4869 = fadd fast float %4866, %4864
  %4870 = fadd fast float %4867, %4864
  %4871 = fcmp fast ogt float %3967, 0.000000e+00
  br i1 %4871, label %4872, label %4898

; <label>:4872                                    ; preds = %4772
  %4873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3967, float %4598, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4874 = extractvalue %dx.types.ResRet.f32 %4873, 0
  %4875 = extractvalue %dx.types.ResRet.f32 %4873, 1
  %4876 = extractvalue %dx.types.ResRet.f32 %4873, 2
  %4877 = fadd fast float %4874, -5.000000e-01
  %4878 = fadd fast float %4875, -5.000000e-01
  %4879 = fadd fast float %4876, -5.000000e-01
  %4880 = fsub fast float 1.000000e+00, %4573
  %4881 = fsub fast float 1.000000e+00, %4574
  %4882 = fsub fast float 1.000000e+00, %4596
  %4883 = fmul fast float %4573, 4.000000e+00
  %4884 = fmul fast float %4883, %4880
  %4885 = fmul fast float %4884, %4877
  %4886 = fmul fast float %4574, 4.000000e+00
  %4887 = fmul fast float %4886, %4881
  %4888 = fmul fast float %4887, %4878
  %4889 = fmul fast float %4596, 4.000000e+00
  %4890 = fmul fast float %4889, %4882
  %4891 = fmul fast float %4890, %4879
  %4892 = fadd fast float %4885, %4868
  %4893 = fadd fast float %4888, %4869
  %4894 = fadd fast float %4891, %4870
  %4895 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4896 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4897 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  br label %4898

; <label>:4898                                    ; preds = %4872, %4772
  %4899 = phi float [ %4895, %4872 ], [ %4868, %4772 ]
  %4900 = phi float [ %4896, %4872 ], [ %4869, %4772 ]
  %4901 = phi float [ %4897, %4872 ], [ %4870, %4772 ]
  %4902 = call float @dx.op.binary.f32(i32 35, float %4900, float %4901)  ; FMax(a,b)
  %4903 = call float @dx.op.binary.f32(i32 35, float %4899, float %4902)  ; FMax(a,b)
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = fmul fast float %4903, %4579
  %4906 = fadd fast float %4905, %4579
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.CBufRet.f32 %4907, 2
  %4911 = extractvalue %dx.types.CBufRet.f32 %4907, 3
  %4912 = fmul fast float %4906, %4908
  %4913 = fadd fast float %4912, %4909
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4915 = fmul fast float %4910, %4906
  %4916 = fadd fast float %4915, %4911
  %4917 = call float @dx.op.unary.f32(i32 7, float %4916)  ; Saturate(value)
  %4918 = fsub fast float 1.000000e+00, %4619
  %4919 = fadd fast float %4918, %4917
  %4920 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4921 = fcmp fast olt float %4920, 1.000000e+00
  br i1 %4921, label %4922, label %5777

; <label>:4922                                    ; preds = %4898
  %4923 = fcmp fast olt float %4914, 1.000000e+00
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 0
  %4926 = fcmp fast ogt float %4925, 0.000000e+00
  %4927 = or i1 %4923, %4926
  %4928 = or i1 %4923, %4926
  %4929 = xor i1 %4928, true
  %4930 = zext i1 %4929 to i32
  br i1 %4927, label %4931, label %5174

; <label>:4931                                    ; preds = %4922
  %4932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4933 = extractvalue %dx.types.CBufRet.f32 %4932, 0
  %4934 = extractvalue %dx.types.CBufRet.f32 %4932, 1
  %4935 = extractvalue %dx.types.CBufRet.f32 %4932, 2
  %4936 = extractvalue %dx.types.CBufRet.f32 %4932, 3
  %4937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4937, 0
  %4939 = extractvalue %dx.types.CBufRet.f32 %4937, 1
  %4940 = extractvalue %dx.types.CBufRet.f32 %4937, 2
  %4941 = extractvalue %dx.types.CBufRet.f32 %4937, 3
  %4942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4943 = extractvalue %dx.types.CBufRet.f32 %4942, 0
  %4944 = extractvalue %dx.types.CBufRet.f32 %4942, 1
  %4945 = extractvalue %dx.types.CBufRet.f32 %4942, 2
  %4946 = extractvalue %dx.types.CBufRet.f32 %4942, 3
  %4947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4948 = extractvalue %dx.types.CBufRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.CBufRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.CBufRet.f32 %4947, 2
  %4951 = extractvalue %dx.types.CBufRet.f32 %4947, 3
  %4952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4953 = extractvalue %dx.types.CBufRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.CBufRet.f32 %4952, 1
  %4955 = extractvalue %dx.types.CBufRet.f32 %4952, 2
  %4956 = extractvalue %dx.types.CBufRet.f32 %4952, 3
  %4957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4958 = extractvalue %dx.types.CBufRet.f32 %4957, 0
  %4959 = extractvalue %dx.types.CBufRet.f32 %4957, 1
  %4960 = extractvalue %dx.types.CBufRet.f32 %4957, 2
  %4961 = extractvalue %dx.types.CBufRet.f32 %4957, 3
  %4962 = call float @dx.op.dot3.f32(i32 55, float %4958, float %4959, float %4960, float %4604, float %4605, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4570, float %4571, float %4572, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = call float @dx.op.unary.f32(i32 6, float %4963)  ; FAbs(value)
  %4965 = fmul fast float %4964, 8.000000e+00
  %4966 = fadd fast float %4965, -6.000000e+00
  %4967 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4968 = fmul fast float %4962, 8.000000e+00
  %4969 = fmul fast float %4968, %4925
  %4970 = call float @dx.op.unary.f32(i32 7, float %4969)  ; Saturate(value)
  %4971 = fcmp fast ogt float %4970, 0.000000e+00
  br i1 %4971, label %4972, label %5149, !dx.controlflow.hints !85

; <label>:4972                                    ; preds = %4931
  %4973 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4974 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4975 = fsub fast float %4973, %4974
  %4976 = fmul fast float %4975, %4579
  %4977 = fadd fast float %4976, %4974
  %4978 = fmul fast float %199, 2.000000e+00
  %4979 = fmul fast float %200, 2.000000e+00
  %4980 = fadd fast float %4978, -1.000000e+00
  %4981 = fadd fast float %4979, -1.000000e+00
  %4982 = fmul fast float %4977, %4980
  %4983 = fmul fast float %4977, %4981
  %4984 = fadd fast float %4982, %85
  %4985 = fadd fast float %4983, %86
  %4986 = fmul fast float %4984, %4582
  %4987 = fmul fast float %4985, %4583
  %4988 = fadd fast float %4579, 0xBFE3333340000000
  %4989 = fmul fast float %4988, 0x4004000020000000
  %4990 = fsub fast float 1.000000e+00, %4989
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fmul fast float %4991, 3.000000e+00
  %4993 = fadd fast float %4992, %199
  %4994 = call float @dx.op.unary.f32(i32 27, float %4993)  ; Round_ni(value)
  %4995 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4986, float %4987, float %4994, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4996 = extractvalue %dx.types.ResRet.f32 %4995, 0
  %4997 = fcmp fast une float %4996, 0xFFF0000000000000
  %4998 = fcmp fast une float %4996, 0x7FF0000000000000
  %4999 = and i1 %4997, %4998
  %5000 = fcmp fast olt float %4996, 0.000000e+00
  %5001 = call float @dx.op.unary.f32(i32 6, float %4996)  ; FAbs(value)
  %5002 = fsub fast float 1.000000e+00, %5001
  %5003 = select i1 %4999, float 1.000000e+00, float 0.000000e+00
  %5004 = fmul fast float %5003, %4970
  %5005 = fcmp fast ogt float %5004, 0.000000e+00
  br i1 %5005, label %5006, label %5149, !dx.controlflow.hints !86

; <label>:5006                                    ; preds = %4972
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 0
  %5009 = extractvalue %dx.types.CBufRet.f32 %5007, 1
  %5010 = extractvalue %dx.types.CBufRet.f32 %5007, 2
  %5011 = select i1 %5000, float 0.000000e+00, float %5008
  %5012 = select i1 %5000, float 0.000000e+00, float %5009
  %5013 = select i1 %5000, float 0.000000e+00, float %5010
  %5014 = select i1 %5000, float %4933, float %4948
  %5015 = select i1 %5000, float %4938, float %4953
  %5016 = select i1 %5000, float %4943, float %4958
  %5017 = select i1 %5000, float %4934, float %4949
  %5018 = select i1 %5000, float %4939, float %4954
  %5019 = select i1 %5000, float %4944, float %4959
  %5020 = select i1 %5000, float %4935, float %4950
  %5021 = select i1 %5000, float %4940, float %4955
  %5022 = select i1 %5000, float %4945, float %4960
  %5023 = select i1 %5000, float %4936, float %4951
  %5024 = select i1 %5000, float %4941, float %4956
  %5025 = select i1 %5000, float %4946, float %4961
  %5026 = fadd fast float %5011, %144
  %5027 = fadd fast float %5012, %145
  %5028 = fadd fast float %5013, %146
  %5029 = fmul fast float %5026, %5014
  %5030 = call float @dx.op.tertiary.f32(i32 46, float %5027, float %5017, float %5029)  ; FMad(a,b,c)
  %5031 = call float @dx.op.tertiary.f32(i32 46, float %5028, float %5020, float %5030)  ; FMad(a,b,c)
  %5032 = fadd fast float %5031, %5023
  %5033 = fmul fast float %5026, %5015
  %5034 = call float @dx.op.tertiary.f32(i32 46, float %5027, float %5018, float %5033)  ; FMad(a,b,c)
  %5035 = call float @dx.op.tertiary.f32(i32 46, float %5028, float %5021, float %5034)  ; FMad(a,b,c)
  %5036 = fadd fast float %5035, %5024
  %5037 = fmul fast float %5026, %5016
  %5038 = call float @dx.op.tertiary.f32(i32 46, float %5027, float %5019, float %5037)  ; FMad(a,b,c)
  %5039 = call float @dx.op.tertiary.f32(i32 46, float %5028, float %5022, float %5038)  ; FMad(a,b,c)
  %5040 = fadd fast float %5039, %5025
  %5041 = fdiv fast float 1.000000e+00, %5040
  %5042 = fmul fast float %5041, %5032
  %5043 = fmul fast float %5041, %5036
  %5044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5045 = extractvalue %dx.types.CBufRet.f32 %5044, 0
  %5046 = extractvalue %dx.types.CBufRet.f32 %5044, 1
  %5047 = fmul fast float %5042, %5045
  %5048 = fmul fast float %5043, %5046
  %5049 = extractvalue %dx.types.CBufRet.f32 %5044, 2
  %5050 = extractvalue %dx.types.CBufRet.f32 %5044, 3
  %5051 = fadd fast float %5047, %5049
  %5052 = fadd fast float %5048, %5050
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 3
  %5055 = fmul fast float %5054, %4604
  %5056 = fmul fast float %5054, %4605
  %5057 = fmul fast float %5054, %4606
  %5058 = fadd fast float %5055, %5026
  %5059 = fadd fast float %5056, %5027
  %5060 = fadd fast float %5057, %5028
  %5061 = fmul fast float %5058, %5014
  %5062 = call float @dx.op.tertiary.f32(i32 46, float %5059, float %5017, float %5061)  ; FMad(a,b,c)
  %5063 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5020, float %5062)  ; FMad(a,b,c)
  %5064 = fadd fast float %5063, %5023
  %5065 = fmul fast float %5058, %5015
  %5066 = call float @dx.op.tertiary.f32(i32 46, float %5059, float %5018, float %5065)  ; FMad(a,b,c)
  %5067 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5021, float %5066)  ; FMad(a,b,c)
  %5068 = fadd fast float %5067, %5024
  %5069 = fmul fast float %5058, %5016
  %5070 = call float @dx.op.tertiary.f32(i32 46, float %5059, float %5019, float %5069)  ; FMad(a,b,c)
  %5071 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5022, float %5070)  ; FMad(a,b,c)
  %5072 = fadd fast float %5071, %5025
  %5073 = fdiv fast float 1.000000e+00, %5072
  %5074 = fmul fast float %5073, %5064
  %5075 = fmul fast float %5073, %5068
  %5076 = fmul fast float %5051, 2.000000e+00
  %5077 = fadd fast float %5076, -1.000000e+00
  %5078 = call float @dx.op.unary.f32(i32 6, float %5077)  ; FAbs(value)
  %5079 = fmul fast float %5078, 5.000000e+00
  %5080 = fadd fast float %5079, -4.000000e+00
  %5081 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5082 = fmul fast float %5081, %4967
  %5083 = fsub fast float %5042, %5074
  %5084 = fmul fast float %5045, %5083
  %5085 = fmul fast float %5082, %5084
  %5086 = fsub fast float %5074, %5042
  %5087 = fmul fast float %5045, %5086
  %5088 = fadd fast float %5087, %5085
  %5089 = fsub fast float %5075, %5043
  %5090 = fmul fast float %5046, %5089
  %5091 = fmul fast float %5088, %5002
  %5092 = fmul fast float %5090, %5002
  %5093 = fadd fast float %5091, %5051
  %5094 = fadd fast float %5092, %5052
  %5095 = fsub fast float %5073, %5041
  %5096 = fmul fast float %5095, %5002
  %5097 = fadd fast float %5096, %5041
  %5098 = fdiv fast float 1.000000e+00, %5097
  %5099 = fadd fast float %4579, -1.000000e+00
  %5100 = fsub fast float %5098, %5040
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5103 = fmul fast float %5102, %5098
  %5104 = fdiv fast float 1.600000e+02, %5103
  %5105 = fmul fast float %5099, %5099
  %5106 = fmul fast float %5105, 0xBFB5B17960000000
  %5107 = fmul fast float %5106, %5100
  %5108 = fmul fast float %5107, %5104
  %5109 = call float @dx.op.unary.f32(i32 21, float %5108)  ; Exp(value)
  %5110 = fmul fast float %5109, 0x3FF04B2960000000
  %5111 = fsub fast float 0x3FF04B2960000000, %5110
  %5112 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5113 = fmul fast float %5112, 4.000000e+00
  %5114 = fadd fast float %199, -5.000000e-01
  %5115 = fadd fast float %200, -5.000000e-01
  %5116 = fmul fast float %5112, 0x3FBEB851E0000000
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = fmul fast float %5117, %5114
  %5119 = fmul fast float %5117, %5115
  %5120 = fadd fast float %5093, %5118
  %5121 = fadd fast float %5094, %5119
  %5122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5120, float %5121, float undef, float undef, i32 0, i32 0, i32 undef, float %5113)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5123 = extractvalue %dx.types.ResRet.f32 %5122, 0
  %5124 = extractvalue %dx.types.ResRet.f32 %5122, 1
  %5125 = extractvalue %dx.types.ResRet.f32 %5122, 2
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 2
  %5128 = fmul fast float %5127, %5123
  %5129 = fmul fast float %5127, %5124
  %5130 = fmul fast float %5127, %5125
  %5131 = select i1 %186, float 0.000000e+00, float %5129
  %5132 = select i1 %186, float 0.000000e+00, float %5130
  %5133 = fmul fast float %5120, 2.000000e+00
  %5134 = fmul fast float %5121, 2.000000e+00
  %5135 = fadd fast float %5133, -1.000000e+00
  %5136 = fadd fast float %5134, -1.000000e+00
  %5137 = fmul fast float %5135, %5135
  %5138 = fsub fast float 1.000000e+00, %5137
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = fsub fast float 1.000000e+00, %5139
  %5141 = fmul fast float %5140, %4967
  %5142 = fadd fast float %5141, %5139
  %5143 = fmul fast float %5136, %5136
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5146 = fmul fast float %5142, %5145
  %5147 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5148 = fmul fast float %5147, %5004
  br label %5149

; <label>:5149                                    ; preds = %5006, %4972, %4931
  %5150 = phi float [ %5128, %5006 ], [ 0.000000e+00, %4972 ], [ 0.000000e+00, %4931 ]
  %5151 = phi float [ %5131, %5006 ], [ 0.000000e+00, %4972 ], [ 0.000000e+00, %4931 ]
  %5152 = phi float [ %5132, %5006 ], [ 0.000000e+00, %4972 ], [ 0.000000e+00, %4931 ]
  %5153 = phi float [ %5148, %5006 ], [ 0.000000e+00, %4972 ], [ 0.000000e+00, %4931 ]
  %5154 = fcmp fast olt float %5153, 1.000000e+00
  %5155 = or i1 %5154, %4929
  %5156 = zext i1 %5155 to i32
  %5157 = fmul fast float %5153, %4914
  %5158 = fsub fast float %5153, %5157
  %5159 = fsub fast float 1.000000e+00, %4920
  %5160 = fmul fast float %5158, %5159
  %5161 = fadd fast float %5160, %4920
  %5162 = fsub fast float %5161, %5158
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = fmul fast float %5163, %4855
  %5165 = fmul fast float %5163, %4856
  %5166 = fmul fast float %5163, %4857
  %5167 = fsub fast float -0.000000e+00, %5161
  %5168 = fmul fast float %5158, %5150
  %5169 = fmul fast float %5158, %5151
  %5170 = fmul fast float %5158, %5152
  %5171 = fadd fast float %5168, %5164
  %5172 = fadd fast float %5169, %5165
  %5173 = fadd fast float %5170, %5166
  br label %5174

; <label>:5174                                    ; preds = %5149, %4922
  %5175 = phi float [ %4920, %4922 ], [ %5167, %5149 ]
  %5176 = phi float [ %4855, %4922 ], [ %5171, %5149 ]
  %5177 = phi float [ %4856, %4922 ], [ %5172, %5149 ]
  %5178 = phi float [ %4857, %4922 ], [ %5173, %5149 ]
  %5179 = phi i32 [ %4930, %4922 ], [ %5156, %5149 ]
  %5180 = icmp eq i32 %5179, 0
  br i1 %5180, label %5777, label %5181

; <label>:5181                                    ; preds = %5174
  %5182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.f32 %5182, 2
  %5184 = extractvalue %dx.types.CBufRet.f32 %5182, 3
  %5185 = fmul fast float %5183, %85
  %5186 = fmul fast float %5184, %86
  %5187 = fptoui float %5185 to i32
  %5188 = fptoui float %5186 to i32
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.CBufRet.f32 %5189, 2
  %5192 = extractvalue %dx.types.CBufRet.f32 %5189, 3
  %5193 = fadd fast float %80, -4.000000e+00
  %5194 = call float @dx.op.binary.f32(i32 35, float %5193, float 0.000000e+00)  ; FMax(a,b)
  %5195 = fadd fast float %5194, %5190
  %5196 = fmul fast float %5195, %5191
  %5197 = call float @dx.op.unary.f32(i32 23, float %5196)  ; Log(value)
  %5198 = fmul fast float %5197, %5192
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5201 = fmul fast float %5198, %5200
  %5202 = call float @dx.op.unary.f32(i32 7, float %5201)  ; Saturate(value)
  %5203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5204 = extractvalue %dx.types.CBufRet.i32 %5203, 1
  %5205 = add i32 %5204, -1
  %5206 = uitofp i32 %5204 to float
  %5207 = fmul fast float %5206, %5202
  %5208 = fptoui float %5207 to i32
  %5209 = call i32 @dx.op.binary.i32(i32 40, i32 %5208, i32 %5205)  ; UMin(a,b)
  %5210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5211 = extractvalue %dx.types.CBufRet.i32 %5210, 2
  %5212 = extractvalue %dx.types.CBufRet.i32 %5210, 3
  %5213 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5188, i32 %5211, i32 %5187)  ; UMad(a,b,c)
  %5214 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5209, i32 %5212, i32 %5213)  ; UMad(a,b,c)
  %5215 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5216 = fptoui float %5215 to i32
  %5217 = lshr i32 %5216, 5
  %5218 = call i32 @dx.op.binary.i32(i32 40, i32 %5217, i32 8191)  ; UMin(a,b)
  %5219 = fcmp fast ogt float %4378, 0.000000e+00
  %5220 = fcmp fast ogt float %4606, 0.000000e+00
  %5221 = and i1 %5220, %5219
  br i1 %5221, label %5222, label %5251

; <label>:5222                                    ; preds = %5181
  %5223 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4605, float %4606, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = call float @dx.op.binary.f32(i32 35, float %5223, float -1.000000e+00)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 36, float %5224, float 1.000000e+00)  ; FMin(a,b)
  %5226 = fmul fast float %5225, %5225
  %5227 = fsub fast float 1.000000e+00, %5226
  %5228 = fmul fast float %5227, 0x3FFC6E2300000000
  %5229 = fsub fast float 1.000000e+00, %5228
  %5230 = fcmp fast ogt float %5229, 0.000000e+00
  %5231 = call float @dx.op.unary.f32(i32 24, float %5229)  ; Sqrt(value)
  %5232 = fsub fast float 1.000000e+00, %5231
  %5233 = call float @dx.op.unary.f32(i32 23, float %5232)  ; Log(value)
  %5234 = fmul fast float %5233, 5.000000e+00
  %5235 = call float @dx.op.unary.f32(i32 21, float %5234)  ; Exp(value)
  %5236 = fmul fast float %5235, 0x3FEF591A60000000
  %5237 = fadd fast float %5236, 0x3F94DCB540000000
  %5238 = select i1 %5230, float %5237, float 1.000000e+00
  %5239 = fcmp fast oge float %5238, 1.000000e+00
  %5240 = fmul fast float %5223, 2.000000e+00
  %5241 = fadd fast float %5240, %4606
  %5242 = select i1 %5239, float %5241, float %4606
  %5243 = fsub fast float %5242, %4606
  %5244 = fmul fast float %5243, %4378
  %5245 = fadd fast float %5244, %4606
  %5246 = call float @dx.op.dot3.f32(i32 55, float %4604, float %4605, float %5245, float %4604, float %4605, float %5245)  ; Dot3(ax,ay,az,bx,by,bz)
  %5247 = call float @dx.op.unary.f32(i32 25, float %5246)  ; Rsqrt(value)
  %5248 = fmul fast float %5247, %4604
  %5249 = fmul fast float %5247, %4605
  %5250 = fmul fast float %5245, %5247
  br label %5251

; <label>:5251                                    ; preds = %5222, %5181
  %5252 = phi float [ %5248, %5222 ], [ %4604, %5181 ]
  %5253 = phi float [ %5249, %5222 ], [ %4605, %5181 ]
  %5254 = phi float [ %5250, %5222 ], [ %4606, %5181 ]
  %5255 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.i32 %5255, 2
  %5257 = add nsw i32 %5256, -1
  %5258 = call i32 @dx.op.binary.i32(i32 37, i32 %5257, i32 0)  ; IMax(a,b)
  %5259 = shl i32 %5218, 2
  %5260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.i32 %5260, 0
  %5262 = lshr i32 %5261, 16
  %5263 = and i32 %5261, 65535
  %5264 = lshr i32 %5261, 21
  %5265 = lshr i32 %5263, 5
  %5266 = call i32 @dx.op.binary.i32(i32 40, i32 %5265, i32 %5258)  ; UMin(a,b)
  %5267 = icmp ugt i32 %5264, %5266
  br i1 %5267, label %5649, label %5268

; <label>:5268                                    ; preds = %5251
  br label %5269

; <label>:5269                                    ; preds = %5638, %5268
  %5270 = phi float [ %5639, %5638 ], [ 0.000000e+00, %5268 ]
  %5271 = phi float [ %5640, %5638 ], [ 0.000000e+00, %5268 ]
  %5272 = phi float [ %5641, %5638 ], [ 0.000000e+00, %5268 ]
  %5273 = phi float [ %5642, %5638 ], [ 1.000000e+00, %5268 ]
  %5274 = phi i32 [ %5646, %5638 ], [ %5264, %5268 ]
  %5275 = phi float [ %5643, %5638 ], [ 0.000000e+00, %5268 ]
  %5276 = phi float [ %5644, %5638 ], [ 0.000000e+00, %5268 ]
  %5277 = phi float [ %5645, %5638 ], [ 0.000000e+00, %5268 ]
  %5278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.i32 %5278, 2
  %5280 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5214, i32 %5279, i32 %5274)  ; UMad(a,b,c)
  %5281 = shl i32 %5280, 2
  %5282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.i32 %5282, 0
  %5284 = shl i32 %5274, 5
  %5285 = sub nsw i32 %5262, %5284
  %5286 = call i32 @dx.op.binary.i32(i32 37, i32 %5285, i32 0)  ; IMax(a,b)
  %5287 = call i32 @dx.op.binary.i32(i32 38, i32 %5286, i32 31)  ; IMin(a,b)
  %5288 = sub nsw i32 1, %5262
  %5289 = add nsw i32 %5288, %5263
  %5290 = call i32 @dx.op.binary.i32(i32 37, i32 %5289, i32 0)  ; IMax(a,b)
  %5291 = call i32 @dx.op.binary.i32(i32 38, i32 %5290, i32 32)  ; IMin(a,b)
  %5292 = and i32 %5291, 31
  %5293 = shl i32 -1, %5292
  %5294 = xor i32 %5293, -1
  %5295 = and i32 %5287, 31
  %5296 = shl i32 %5294, %5295
  %5297 = icmp eq i32 %5291, 32
  %5298 = select i1 %5297, i32 -1, i32 %5296
  %5299 = and i32 %5298, %5283
  %5300 = icmp eq i32 %5299, 0
  br i1 %5300, label %5638, label %5301

; <label>:5301                                    ; preds = %5269
  br label %5302

; <label>:5302                                    ; preds = %5412, %5301
  %5303 = phi float [ %5413, %5412 ], [ %5270, %5301 ]
  %5304 = phi float [ %5414, %5412 ], [ %5271, %5301 ]
  %5305 = phi float [ %5415, %5412 ], [ %5272, %5301 ]
  %5306 = phi float [ %5416, %5412 ], [ %5273, %5301 ]
  %5307 = phi i32 [ %5315, %5412 ], [ %5299, %5301 ]
  %5308 = phi float [ %5417, %5412 ], [ %5275, %5301 ]
  %5309 = phi float [ %5418, %5412 ], [ %5276, %5301 ]
  %5310 = phi float [ %5419, %5412 ], [ %5277, %5301 ]
  %5311 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5307)  ; FirstbitLo(value)
  %5312 = add i32 %5311, %5284
  %5313 = and i32 %5311, 31
  %5314 = shl i32 1, %5313
  %5315 = xor i32 %5314, %5307
  %5316 = mul i32 %5312, 72
  %5317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.ResRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.ResRet.f32 %5317, 2
  %5321 = add i32 %5316, 12
  %5322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5321, i32 undef)  ; BufferLoad(srv,index,wot)
  %5323 = extractvalue %dx.types.ResRet.i32 %5322, 0
  %5324 = add i32 %5316, 16
  %5325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5324, i32 undef)  ; BufferLoad(srv,index,wot)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 1
  %5328 = extractvalue %dx.types.ResRet.f32 %5325, 2
  %5329 = add i32 %5316, 28
  %5330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5329, i32 undef)  ; BufferLoad(srv,index,wot)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 0
  %5332 = add i32 %5316, 32
  %5333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5332, i32 undef)  ; BufferLoad(srv,index,wot)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.ResRet.f32 %5333, 1
  %5336 = extractvalue %dx.types.ResRet.f32 %5333, 2
  %5337 = extractvalue %dx.types.ResRet.f32 %5333, 3
  %5338 = add i32 %5316, 48
  %5339 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5338, i32 undef)  ; BufferLoad(srv,index,wot)
  %5340 = extractvalue %dx.types.ResRet.f32 %5339, 0
  %5341 = extractvalue %dx.types.ResRet.f32 %5339, 1
  %5342 = add i32 %5316, 56
  %5343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.ResRet.f32 %5343, 1
  %5346 = add i32 %5316, 64
  %5347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5346, i32 undef)  ; BufferLoad(srv,index,wot)
  %5348 = extractvalue %dx.types.ResRet.f32 %5347, 0
  %5349 = extractvalue %dx.types.ResRet.f32 %5347, 1
  %5350 = mul i32 %5312, 60
  %5351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5350, i32 undef)  ; BufferLoad(srv,index,wot)
  %5352 = extractvalue %dx.types.ResRet.f32 %5351, 0
  %5353 = extractvalue %dx.types.ResRet.f32 %5351, 1
  %5354 = extractvalue %dx.types.ResRet.f32 %5351, 2
  %5355 = add i32 %5350, 12
  %5356 = add i32 %5350, 48
  %5357 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5356, i32 undef)  ; BufferLoad(srv,index,wot)
  %5358 = extractvalue %dx.types.ResRet.f32 %5357, 0
  %5359 = extractvalue %dx.types.ResRet.f32 %5357, 1
  %5360 = extractvalue %dx.types.ResRet.f32 %5357, 2
  %5361 = and i32 %5323, 32767
  %5362 = bitcast float %5318 to i32
  %5363 = icmp eq i32 %5362, -1
  %5364 = bitcast float %5319 to i32
  %5365 = and i32 %5323, 32768
  %5366 = icmp ne i32 %5365, 0
  %5367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5368 = extractvalue %dx.types.CBufRet.f32 %5367, 0
  %5369 = extractvalue %dx.types.CBufRet.f32 %5367, 1
  %5370 = extractvalue %dx.types.CBufRet.f32 %5367, 2
  %5371 = fsub fast float %5352, %5368
  %5372 = fsub fast float %5353, %5369
  %5373 = fsub fast float %5354, %5370
  %5374 = fsub fast float %144, %5371
  %5375 = fsub fast float %145, %5372
  %5376 = fsub fast float %146, %5373
  %5377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5378, float %5379, float %5380)  ; Dot3(ax,ay,az,bx,by,bz)
  %5382 = add i32 %5350, 24
  %5383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5382, i32 undef)  ; BufferLoad(srv,index,wot)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.ResRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.ResRet.f32 %5383, 2
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5384, float %5385, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = add i32 %5350, 36
  %5389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.ResRet.f32 %5389, 2
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.unary.f32(i32 6, float %5381)  ; FAbs(value)
  %5395 = call float @dx.op.unary.f32(i32 6, float %5387)  ; FAbs(value)
  %5396 = call float @dx.op.unary.f32(i32 6, float %5393)  ; FAbs(value)
  %5397 = fsub fast float %5358, %5394
  %5398 = fsub fast float %5359, %5395
  %5399 = fsub fast float %5360, %5396
  %5400 = fmul fast float %5397, %5326
  %5401 = fmul fast float %5398, %5327
  %5402 = fmul fast float %5399, %5328
  %5403 = call float @dx.op.binary.f32(i32 36, float %5401, float %5402)  ; FMin(a,b)
  %5404 = call float @dx.op.binary.f32(i32 36, float %5400, float %5403)  ; FMin(a,b)
  %5405 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5406 = call float @dx.op.binary.f32(i32 36, float %5306, float %5405)  ; FMin(a,b)
  %5407 = uitofp i1 %5366 to float
  %5408 = fadd fast float %4378, 1.000000e+00
  %5409 = fsub fast float %5408, %5407
  %5410 = fmul fast float %5406, %5409
  %5411 = fcmp fast ogt float %5410, 0.000000e+00
  br i1 %5411, label %5421, label %5412

; <label>:5412                                    ; preds = %5563, %5302
  %5413 = phi float [ %5627, %5563 ], [ %5303, %5302 ]
  %5414 = phi float [ %5628, %5563 ], [ %5304, %5302 ]
  %5415 = phi float [ %5629, %5563 ], [ %5305, %5302 ]
  %5416 = phi float [ %5636, %5563 ], [ %5306, %5302 ]
  %5417 = phi float [ %5633, %5563 ], [ %5308, %5302 ]
  %5418 = phi float [ %5634, %5563 ], [ %5309, %5302 ]
  %5419 = phi float [ %5635, %5563 ], [ %5310, %5302 ]
  %5420 = icmp eq i32 %5307, %5314
  br i1 %5420, label %5637, label %5302

; <label>:5421                                    ; preds = %5302
  br i1 %5363, label %5479, label %5422

; <label>:5422                                    ; preds = %5421
  %5423 = fsub fast float -0.000000e+00, %5378
  %5424 = fsub fast float -0.000000e+00, %5379
  %5425 = fsub fast float -0.000000e+00, %5380
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = fsub fast float -0.000000e+00, %5426
  %5428 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5423, float %5424, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = fadd fast float %5428, %5341
  %5430 = fadd fast float %5340, %5428
  %5431 = fsub fast float -0.000000e+00, %5430
  %5432 = fcmp ogt float %5426, -0.000000e+00
  %5433 = select i1 %5432, float %5431, float %5429
  %5434 = call float @dx.op.unary.f32(i32 6, float %5427)  ; FAbs(value)
  %5435 = fdiv fast float 1.000000e+00, %5434
  %5436 = fmul fast float %5433, %5435
  %5437 = call float @dx.op.binary.f32(i32 35, float %5436, float 0.000000e+00)  ; FMax(a,b)
  %5438 = fsub fast float -0.000000e+00, %5384
  %5439 = fsub fast float -0.000000e+00, %5385
  %5440 = fsub fast float -0.000000e+00, %5386
  %5441 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5442 = fsub fast float -0.000000e+00, %5441
  %5443 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5438, float %5439, float %5440)  ; Dot3(ax,ay,az,bx,by,bz)
  %5444 = fadd fast float %5443, %5345
  %5445 = fadd fast float %5344, %5443
  %5446 = fsub fast float -0.000000e+00, %5445
  %5447 = fcmp ogt float %5441, -0.000000e+00
  %5448 = select i1 %5447, float %5446, float %5444
  %5449 = call float @dx.op.unary.f32(i32 6, float %5442)  ; FAbs(value)
  %5450 = fdiv fast float 1.000000e+00, %5449
  %5451 = fmul fast float %5448, %5450
  %5452 = call float @dx.op.binary.f32(i32 35, float %5451, float 0.000000e+00)  ; FMax(a,b)
  %5453 = fsub fast float -0.000000e+00, %5390
  %5454 = fsub fast float -0.000000e+00, %5391
  %5455 = fsub fast float -0.000000e+00, %5392
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5253, float %5254, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = fsub fast float -0.000000e+00, %5456
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float %5453, float %5454, float %5455)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = fadd fast float %5458, %5349
  %5460 = fadd fast float %5348, %5458
  %5461 = fsub fast float -0.000000e+00, %5460
  %5462 = fcmp ogt float %5456, -0.000000e+00
  %5463 = select i1 %5462, float %5461, float %5459
  %5464 = call float @dx.op.unary.f32(i32 6, float %5457)  ; FAbs(value)
  %5465 = fdiv fast float 1.000000e+00, %5464
  %5466 = fmul fast float %5463, %5465
  %5467 = call float @dx.op.binary.f32(i32 35, float %5466, float 0.000000e+00)  ; FMax(a,b)
  %5468 = call float @dx.op.binary.f32(i32 36, float %5452, float %5467)  ; FMin(a,b)
  %5469 = call float @dx.op.binary.f32(i32 36, float %5437, float %5468)  ; FMin(a,b)
  %5470 = fmul fast float %5469, %5252
  %5471 = fmul fast float %5469, %5253
  %5472 = fmul fast float %5469, %5254
  %5473 = fadd fast float %5470, %144
  %5474 = fadd fast float %5471, %145
  %5475 = fadd fast float %5472, %146
  %5476 = fsub fast float %5473, %5318
  %5477 = fsub fast float %5474, %5319
  %5478 = fsub fast float %5475, %5320
  br label %5486

; <label>:5479                                    ; preds = %5421
  %5480 = fmul fast float %5252, 8.096000e+03
  %5481 = fmul fast float %5253, 8.096000e+03
  %5482 = fmul fast float %5254, 8.096000e+03
  %5483 = fadd fast float %5480, %144
  %5484 = fadd fast float %5481, %145
  %5485 = fadd fast float %5482, %146
  br label %5486

; <label>:5486                                    ; preds = %5479, %5422
  %5487 = phi float [ %5252, %5479 ], [ %5476, %5422 ]
  %5488 = phi float [ %5253, %5479 ], [ %5477, %5422 ]
  %5489 = phi float [ %5254, %5479 ], [ %5478, %5422 ]
  %5490 = phi float [ %5483, %5479 ], [ %5473, %5422 ]
  %5491 = phi float [ %5484, %5479 ], [ %5474, %5422 ]
  %5492 = phi float [ %5485, %5479 ], [ %5475, %5422 ]
  %5493 = fcmp fast olt float %5337, 1.000000e+00
  br i1 %5493, label %5494, label %5525, !dx.controlflow.hints !87

; <label>:5494                                    ; preds = %5486
  %5495 = fmul fast float %5489, %5335
  %5496 = fmul fast float %5488, %5336
  %5497 = fsub fast float %5495, %5496
  %5498 = fmul fast float %5487, %5336
  %5499 = fmul fast float %5489, %5334
  %5500 = fsub fast float %5498, %5499
  %5501 = fmul fast float %5488, %5334
  %5502 = fmul fast float %5487, %5335
  %5503 = fsub fast float %5501, %5502
  %5504 = fmul fast float %5497, 2.000000e+00
  %5505 = fmul fast float %5500, 2.000000e+00
  %5506 = fmul fast float %5503, 2.000000e+00
  %5507 = fmul fast float %5504, %5337
  %5508 = fmul fast float %5505, %5337
  %5509 = fmul fast float %5506, %5337
  %5510 = fmul fast float %5506, %5335
  %5511 = fmul fast float %5505, %5336
  %5512 = fmul fast float %5504, %5336
  %5513 = fmul fast float %5506, %5334
  %5514 = fmul fast float %5505, %5334
  %5515 = fmul fast float %5504, %5335
  %5516 = fadd fast float %5510, %5487
  %5517 = fadd fast float %5516, %5507
  %5518 = fsub fast float %5517, %5511
  %5519 = fsub fast float %5488, %5513
  %5520 = fadd fast float %5519, %5508
  %5521 = fadd fast float %5520, %5512
  %5522 = fadd fast float %5509, %5489
  %5523 = fsub fast float %5522, %5515
  %5524 = fadd fast float %5523, %5514
  br label %5525

; <label>:5525                                    ; preds = %5494, %5486
  %5526 = phi float [ %5518, %5494 ], [ %5487, %5486 ]
  %5527 = phi float [ %5521, %5494 ], [ %5488, %5486 ]
  %5528 = phi float [ %5524, %5494 ], [ %5489, %5486 ]
  br i1 %5363, label %5560, label %5529

; <label>:5529                                    ; preds = %5525
  %5530 = fmul fast float %4579, 0x400187C840000000
  %5531 = fadd fast float %5530, 0xC00EFC2120000000
  %5532 = fmul fast float %5531, %4579
  %5533 = fadd fast float %5532, 0x3FE5D16340000000
  %5534 = fmul fast float %5533, %4579
  %5535 = fadd fast float %5534, 1.000000e+00
  %5536 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5537 = fsub fast float %5490, %144
  %5538 = fsub fast float %5491, %145
  %5539 = fsub fast float %5492, %146
  %5540 = fsub fast float %5490, %5318
  %5541 = fsub fast float %5491, %5319
  %5542 = fsub fast float %5492, %5320
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5538, float %5539, float %5537, float %5538, float %5539)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5541, float %5542, float %5540, float %5541, float %5542)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = fadd fast float %5544, 0x3EE4F8B580000000
  %5546 = fdiv fast float %5543, %5545
  %5547 = bitcast float %5546 to i32
  %5548 = ashr i32 %5547, 1
  %5549 = add nsw i32 %5548, 532487669
  %5550 = bitcast i32 %5549 to float
  %5551 = fmul fast float %5550, %5536
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5553 = fmul fast float %5552, 0x4009981AE0000000
  %5554 = fsub fast float 0x40111BBD80000000, %5553
  %5555 = fmul fast float %5554, %5552
  %5556 = fadd fast float %5555, 0xC0009F6020000000
  %5557 = fmul fast float %5556, %5552
  %5558 = fadd fast float %5557, 1.000000e+00
  %5559 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  br label %5563

; <label>:5560                                    ; preds = %5525
  %5561 = icmp ne i32 %5364, -1
  %5562 = zext i1 %5561 to i32
  br label %5563

; <label>:5563                                    ; preds = %5560, %5529
  %5564 = phi float [ %4579, %5560 ], [ %5559, %5529 ]
  %5565 = phi i32 [ %5562, %5560 ], [ 0, %5529 ]
  %5566 = fmul float %5564, 5.000000e+00
  %5567 = fsub float 5.000000e+00, %5566
  %5568 = icmp ne i32 %5565, 0
  %5569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5570 = extractvalue %dx.types.CBufRet.f32 %5569, 3
  %5571 = fadd fast float %5570, %5567
  %5572 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5571)  ; FMax(a,b)
  %5573 = call float @dx.op.unary.f32(i32 6, float %5526)  ; FAbs(value)
  %5574 = call float @dx.op.unary.f32(i32 6, float %5527)  ; FAbs(value)
  %5575 = fadd fast float %5574, %5573
  %5576 = call float @dx.op.unary.f32(i32 6, float %5528)  ; FAbs(value)
  %5577 = fadd fast float %5575, %5576
  %5578 = fcmp fast oeq float %5577, 0.000000e+00
  %5579 = fdiv fast float 1.000000e+00, %5577
  %5580 = select i1 %5578, float 1.000000e+00, float %5579
  %5581 = fmul fast float %5580, %5526
  %5582 = fmul fast float %5580, %5527
  %5583 = call float @dx.op.unary.f32(i32 6, float %5582)  ; FAbs(value)
  %5584 = call float @dx.op.unary.f32(i32 6, float %5581)  ; FAbs(value)
  %5585 = fsub fast float 1.000000e+00, %5583
  %5586 = fsub fast float 1.000000e+00, %5584
  %5587 = fcmp fast oge float %5581, 0.000000e+00
  %5588 = fcmp fast oge float %5582, 0.000000e+00
  %5589 = select i1 %5587, float 1.000000e+00, float -1.000000e+00
  %5590 = select i1 %5588, float 1.000000e+00, float -1.000000e+00
  %5591 = fcmp fast ole float %5528, 0.000000e+00
  %5592 = fmul fast float %5589, %5585
  %5593 = fmul fast float %5590, %5586
  %5594 = select i1 %5591, float %5592, float %5581
  %5595 = select i1 %5591, float %5593, float %5582
  %5596 = fmul fast float %5594, 5.000000e-01
  %5597 = fmul fast float %5595, 5.000000e-01
  %5598 = fadd fast float %5596, 5.000000e-01
  %5599 = fadd fast float %5597, 5.000000e-01
  %5600 = uitofp i32 %5361 to float
  %5601 = call float @dx.op.binary.f32(i32 36, float %5572, float 3.000000e+00)  ; FMin(a,b)
  %5602 = fadd fast float %5601, 2.000000e+00
  %5603 = call float @dx.op.unary.f32(i32 21, float %5602)  ; Exp(value)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5569, 1
  %5605 = fmul fast float %5604, %5603
  %5606 = fmul fast float %5605, 2.000000e+00
  %5607 = fsub fast float 1.000000e+00, %5606
  %5608 = fmul fast float %5598, %5607
  %5609 = fmul fast float %5599, %5607
  %5610 = fadd fast float %5608, %5605
  %5611 = fadd fast float %5609, %5605
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5610, float %5611, float %5600, float undef, i32 0, i32 0, i32 undef, float %5572)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 3
  %5618 = fmul fast float %5617, %5331
  %5619 = call float @dx.op.binary.f32(i32 36, float %4625, float %5618)  ; FMin(a,b)
  %5620 = select i1 %5568, float %5619, float %5618
  %5621 = fmul fast float %5613, %5410
  %5622 = fmul fast float %5621, %5620
  %5623 = fmul fast float %5614, %5410
  %5624 = fmul fast float %5623, %5620
  %5625 = fmul fast float %5615, %5410
  %5626 = fmul fast float %5625, %5620
  %5627 = fadd fast float %5622, %5303
  %5628 = fadd fast float %5624, %5304
  %5629 = fadd fast float %5626, %5305
  %5630 = fmul fast float %5490, %5410
  %5631 = fmul fast float %5491, %5410
  %5632 = fmul fast float %5492, %5410
  %5633 = fadd fast float %5630, %5308
  %5634 = fadd fast float %5631, %5309
  %5635 = fadd fast float %5632, %5310
  %5636 = fsub fast float %5306, %5410
  br label %5412

; <label>:5637                                    ; preds = %5412
  br label %5638

; <label>:5638                                    ; preds = %5637, %5269
  %5639 = phi float [ %5270, %5269 ], [ %5413, %5637 ]
  %5640 = phi float [ %5271, %5269 ], [ %5414, %5637 ]
  %5641 = phi float [ %5272, %5269 ], [ %5415, %5637 ]
  %5642 = phi float [ %5273, %5269 ], [ %5416, %5637 ]
  %5643 = phi float [ %5275, %5269 ], [ %5417, %5637 ]
  %5644 = phi float [ %5276, %5269 ], [ %5418, %5637 ]
  %5645 = phi float [ %5277, %5269 ], [ %5419, %5637 ]
  %5646 = add i32 %5274, 1
  %5647 = icmp ugt i32 %5646, %5266
  br i1 %5647, label %5648, label %5269, !llvm.loop !88

; <label>:5648                                    ; preds = %5638
  br label %5649

; <label>:5649                                    ; preds = %5648, %5251
  %5650 = phi float [ 0.000000e+00, %5251 ], [ %5639, %5648 ]
  %5651 = phi float [ 0.000000e+00, %5251 ], [ %5640, %5648 ]
  %5652 = phi float [ 0.000000e+00, %5251 ], [ %5641, %5648 ]
  %5653 = phi float [ 0.000000e+00, %5251 ], [ %5643, %5648 ]
  %5654 = phi float [ 0.000000e+00, %5251 ], [ %5644, %5648 ]
  %5655 = phi float [ 0.000000e+00, %5251 ], [ %5645, %5648 ]
  %5656 = call float @dx.op.dot3.f32(i32 55, float %5650, float %5651, float %5652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5657 = select i1 %186, float 0.000000e+00, float %5650
  %5658 = select i1 %186, float %5656, float %5651
  %5659 = select i1 %186, float 0.000000e+00, float %5652
  %5660 = fcmp fast olt float %5175, 0.000000e+00
  %5661 = call float @dx.op.unary.f32(i32 6, float %5175)  ; FAbs(value)
  %5662 = fmul fast float %5661, %5176
  %5663 = fmul fast float %5661, %5177
  %5664 = fmul fast float %5661, %5178
  %5665 = select i1 %5660, float %5176, float %5662
  %5666 = select i1 %5660, float %5177, float %5663
  %5667 = select i1 %5660, float %5178, float %5664
  %5668 = fsub fast float 1.000000e+00, %5661
  %5669 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5670 = fmul fast float %5669, %5657
  %5671 = fmul fast float %5669, %5658
  %5672 = fmul fast float %5669, %5659
  %5673 = fadd fast float %5665, %5670
  %5674 = fadd fast float %5666, %5671
  %5675 = fadd fast float %5667, %5672
  %5676 = fcmp fast une float %4925, 0.000000e+00
  br i1 %5676, label %5777, label %5677

; <label>:5677                                    ; preds = %5649
  %5678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5679 = extractvalue %dx.types.CBufRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.CBufRet.f32 %5678, 1
  %5681 = extractvalue %dx.types.CBufRet.f32 %5678, 2
  %5682 = extractvalue %dx.types.CBufRet.f32 %5678, 3
  %5683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.CBufRet.f32 %5683, 1
  %5686 = extractvalue %dx.types.CBufRet.f32 %5683, 2
  %5687 = extractvalue %dx.types.CBufRet.f32 %5683, 3
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 0
  %5690 = extractvalue %dx.types.CBufRet.f32 %5688, 1
  %5691 = extractvalue %dx.types.CBufRet.f32 %5688, 2
  %5692 = extractvalue %dx.types.CBufRet.f32 %5688, 3
  %5693 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %5691, float %4604, float %4605, float %4606)  ; Dot3(ax,ay,az,bx,by,bz)
  %5694 = call float @dx.op.dot3.f32(i32 55, float %5653, float %5654, float %5655, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5695 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %5689, float %5690, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5696 = fadd fast float %4579, -1.000000e+00
  %5697 = fsub fast float %5694, %5695
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5700 = fmul fast float %5699, %5694
  %5701 = fdiv fast float 1.600000e+02, %5700
  %5702 = fmul fast float %5696, %5696
  %5703 = fmul fast float %5702, 0xBFB5B17960000000
  %5704 = fmul fast float %5703, %5697
  %5705 = fmul fast float %5704, %5701
  %5706 = call float @dx.op.unary.f32(i32 21, float %5705)  ; Exp(value)
  %5707 = fmul fast float %5706, 0x3FF04B2960000000
  %5708 = fsub fast float 0x3FF04B2960000000, %5707
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = fmul fast float %5709, 4.000000e+00
  %5711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.f32 %5711, 0
  %5713 = extractvalue %dx.types.CBufRet.f32 %5711, 1
  %5714 = extractvalue %dx.types.CBufRet.f32 %5711, 2
  %5715 = fadd fast float %5712, %5653
  %5716 = fadd fast float %5713, %5654
  %5717 = fadd fast float %5714, %5655
  %5718 = fmul fast float %5715, %5679
  %5719 = call float @dx.op.tertiary.f32(i32 46, float %5716, float %5680, float %5718)  ; FMad(a,b,c)
  %5720 = call float @dx.op.tertiary.f32(i32 46, float %5717, float %5681, float %5719)  ; FMad(a,b,c)
  %5721 = fadd fast float %5720, %5682
  %5722 = fmul fast float %5715, %5684
  %5723 = call float @dx.op.tertiary.f32(i32 46, float %5716, float %5685, float %5722)  ; FMad(a,b,c)
  %5724 = call float @dx.op.tertiary.f32(i32 46, float %5717, float %5686, float %5723)  ; FMad(a,b,c)
  %5725 = fadd fast float %5724, %5687
  %5726 = fmul fast float %5715, %5689
  %5727 = call float @dx.op.tertiary.f32(i32 46, float %5716, float %5690, float %5726)  ; FMad(a,b,c)
  %5728 = call float @dx.op.tertiary.f32(i32 46, float %5717, float %5691, float %5727)  ; FMad(a,b,c)
  %5729 = fadd fast float %5728, %5692
  %5730 = fdiv fast float %5721, %5729
  %5731 = fdiv fast float %5725, %5729
  %5732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5733 = extractvalue %dx.types.CBufRet.f32 %5732, 0
  %5734 = extractvalue %dx.types.CBufRet.f32 %5732, 1
  %5735 = fmul fast float %5733, %5730
  %5736 = fmul fast float %5734, %5731
  %5737 = extractvalue %dx.types.CBufRet.f32 %5732, 2
  %5738 = extractvalue %dx.types.CBufRet.f32 %5732, 3
  %5739 = fadd fast float %5735, %5737
  %5740 = fadd fast float %5736, %5738
  %5741 = fmul fast float %5693, 8.000000e+00
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = fmul fast float %5739, 2.000000e+00
  %5744 = fmul fast float %5740, 2.000000e+00
  %5745 = fadd fast float %5743, -1.000000e+00
  %5746 = fadd fast float %5744, -1.000000e+00
  %5747 = fmul fast float %5745, %5745
  %5748 = fsub fast float 1.000000e+00, %5747
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = fmul fast float %5746, %5746
  %5751 = fsub fast float 1.000000e+00, %5750
  %5752 = call float @dx.op.unary.f32(i32 7, float %5751)  ; Saturate(value)
  %5753 = fmul fast float %4925, %5749
  %5754 = fmul fast float %5753, %5752
  %5755 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5756 = fmul fast float %5755, %5742
  %5757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5739, float %5740, float undef, float undef, i32 0, i32 0, i32 undef, float %5710)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5758 = extractvalue %dx.types.ResRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.ResRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.ResRet.f32 %5757, 2
  %5761 = select i1 %186, float 0.000000e+00, float %5759
  %5762 = select i1 %186, float 0.000000e+00, float %5760
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5765 = fmul fast float %5764, %5758
  %5766 = fmul fast float %5761, %5764
  %5767 = fmul fast float %5762, %5764
  %5768 = fsub fast float %5765, %5657
  %5769 = fsub fast float %5766, %5658
  %5770 = fsub fast float %5767, %5659
  %5771 = fmul fast float %5768, %5756
  %5772 = fmul fast float %5769, %5756
  %5773 = fmul fast float %5770, %5756
  %5774 = fadd fast float %5771, %5657
  %5775 = fadd fast float %5772, %5658
  %5776 = fadd fast float %5773, %5659
  br label %5777

; <label>:5777                                    ; preds = %5677, %5649, %5174, %4898
  %5778 = phi float [ %5176, %5174 ], [ %5673, %5649 ], [ %4855, %4898 ], [ %5774, %5677 ]
  %5779 = phi float [ %5177, %5174 ], [ %5674, %5649 ], [ %4856, %4898 ], [ %5775, %5677 ]
  %5780 = phi float [ %5178, %5174 ], [ %5675, %5649 ], [ %4857, %4898 ], [ %5776, %5677 ]
  %5781 = fmul fast float %4904, %4851
  %5782 = fmul fast float %4904, %4852
  %5783 = fmul fast float %4904, %4853
  %5784 = call float @dx.op.dot3.f32(i32 55, float %4576, float %4577, float %4578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fcmp fast ogt float %5784, 0x3E7FF19E20000000
  %5786 = fdiv fast float 1.000000e+00, %5784
  %5787 = select i1 %5785, float %5786, float 0.000000e+00
  %5788 = fmul fast float %5787, %4576
  %5789 = fmul fast float %5787, %4577
  %5790 = fmul fast float %5787, %4578
  %5791 = fadd fast float %5788, -1.000000e+00
  %5792 = fadd fast float %5789, -1.000000e+00
  %5793 = fadd fast float %5790, -1.000000e+00
  %5794 = fmul fast float %5791, 5.000000e-01
  %5795 = fmul fast float %5792, 5.000000e-01
  %5796 = fmul fast float %5793, 5.000000e-01
  %5797 = fadd fast float %5794, 1.000000e+00
  %5798 = fadd fast float %5795, 1.000000e+00
  %5799 = fadd fast float %5796, 1.000000e+00
  %5800 = fmul fast float %5778, %4899
  %5801 = fmul fast float %5779, %4900
  %5802 = fmul fast float %5780, %4901
  %5803 = fsub fast float 1.000000e+00, %4598
  %5804 = bitcast float %5803 to i32
  %5805 = sitofp i32 %5804 to float
  %5806 = fmul fast float %5805, 5.000000e+00
  %5807 = fadd fast float %5806, 0xC1EFBF8940000000
  %5808 = fptosi float %5807 to i32
  %5809 = bitcast i32 %5808 to float
  %5810 = fmul fast float %5809, %3968
  %5811 = fmul fast float %4851, %5810
  %5812 = fmul fast float %5811, %4904
  %5813 = fmul fast float %5812, %5797
  %5814 = fmul fast float %4852, %5810
  %5815 = fmul fast float %5814, %4904
  %5816 = fmul fast float %5815, %5798
  %5817 = fmul fast float %4853, %5810
  %5818 = fmul fast float %5817, %4904
  %5819 = fmul fast float %5818, %5799
  %5820 = fmul fast float %5781, %3964
  %5821 = fmul fast float %5782, %3964
  %5822 = fmul fast float %5783, %3964
  %5823 = fadd fast float %5800, %3960
  %5824 = fadd fast float %5823, %5813
  %5825 = fmul fast float %5824, %3964
  %5826 = fadd fast float %5801, %3961
  %5827 = fadd fast float %5826, %5816
  %5828 = fmul fast float %5827, %3964
  %5829 = fadd fast float %5802, %3962
  %5830 = fadd fast float %5829, %5819
  %5831 = fmul fast float %5830, %3964
  %5832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.f32 %5832, 3
  %5834 = fcmp fast oeq float %5833, 0.000000e+00
  br i1 %5834, label %6053, label %5835

; <label>:5835                                    ; preds = %5777
  %5836 = extractvalue %dx.types.CBufRet.f32 %5832, 0
  %5837 = extractvalue %dx.types.CBufRet.f32 %5832, 1
  %5838 = extractvalue %dx.types.CBufRet.f32 %5832, 2
  %5839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5840 = extractvalue %dx.types.CBufRet.f32 %5839, 0
  %5841 = extractvalue %dx.types.CBufRet.f32 %5839, 1
  %5842 = extractvalue %dx.types.CBufRet.f32 %5839, 2
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 0
  %5845 = extractvalue %dx.types.CBufRet.f32 %5843, 1
  %5846 = call float @dx.op.dot3.f32(i32 55, float %5840, float %5841, float %5842, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = select i1 %186, float %5844, float %5840
  %5848 = select i1 %186, float %5846, float %5841
  %5849 = select i1 %186, float %5845, float %5842
  %5850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5850, 1
  %5852 = fcmp fast une float %5851, 0.000000e+00
  br i1 %5852, label %5853, label %5870

; <label>:5853                                    ; preds = %5835
  %5854 = fptoui float %85 to i32
  %5855 = fptoui float %86 to i32
  %5856 = lshr i32 %5854, 4
  %5857 = lshr i32 %5855, 4
  %5858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5859 = extractvalue %dx.types.CBufRet.f32 %5858, 0
  %5860 = fptoui float %5859 to i32
  %5861 = add i32 %5860, 15
  %5862 = lshr i32 %5861, 4
  %5863 = mul i32 %5862, %5857
  %5864 = add i32 %5863, %5856
  %5865 = shl i32 %5864, 3
  %5866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5865, i32 undef)  ; BufferLoad(srv,index,wot)
  %5867 = extractvalue %dx.types.ResRet.i32 %5866, 0
  %5868 = and i32 %5867, -268435456
  %5869 = icmp eq i32 %5868, -1342177280
  br i1 %5869, label %5875, label %5870

; <label>:5870                                    ; preds = %5853, %5835
  %5871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4584, float %4585, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5872 = extractvalue %dx.types.ResRet.f32 %5871, 0
  %5873 = extractvalue %dx.types.ResRet.f32 %5871, 1
  %5874 = extractvalue %dx.types.ResRet.f32 %5871, 2
  br label %5875

; <label>:5875                                    ; preds = %5870, %5853
  %5876 = phi float [ %5872, %5870 ], [ 0.000000e+00, %5853 ]
  %5877 = phi float [ %5873, %5870 ], [ 0.000000e+00, %5853 ]
  %5878 = phi float [ %5874, %5870 ], [ 0.000000e+00, %5853 ]
  %5879 = call float @dx.op.binary.f32(i32 36, float %5877, float %5878)  ; FMin(a,b)
  %5880 = call float @dx.op.binary.f32(i32 36, float %5876, float %5879)  ; FMin(a,b)
  %5881 = fcmp fast ogt float %5880, 0.000000e+00
  br i1 %5881, label %5882, label %6053, !dx.controlflow.hints !90

; <label>:5882                                    ; preds = %5875
  %5883 = fmul fast float %5876, %5847
  %5884 = fmul fast float %5877, %5848
  %5885 = fmul fast float %5878, %5849
  %5886 = fsub fast float %5836, %4569
  %5887 = fsub fast float %5837, %4568
  %5888 = fsub fast float %5838, %4567
  %5889 = call float @dx.op.dot3.f32(i32 55, float %5886, float %5887, float %5888, float %5886, float %5887, float %5888)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = call float @dx.op.unary.f32(i32 25, float %5889)  ; Rsqrt(value)
  %5891 = fmul fast float %5890, %5886
  %5892 = fmul fast float %5890, %5887
  %5893 = fmul fast float %5890, %5888
  %5894 = call float @dx.op.dot3.f32(i32 55, float %5836, float %5837, float %5838, float %4570, float %4571, float %4572)  ; Dot3(ax,ay,az,bx,by,bz)
  %5895 = call float @dx.op.dot3.f32(i32 55, float %4566, float %4565, float %4564, float %5891, float %5892, float %5893)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  %5897 = fmul fast float %5896, %5896
  %5898 = fmul fast float %5897, %4623
  %5899 = call float @dx.op.unary.f32(i32 7, float %5898)  ; Saturate(value)
  %5900 = fmul fast float %5899, %5896
  %5901 = call float @dx.op.dot3.f32(i32 55, float %4570, float %4571, float %4572, float %5891, float %5892, float %5893)  ; Dot3(ax,ay,az,bx,by,bz)
  %5902 = fmul fast float %5901, %5901
  %5903 = call float @dx.op.unary.f32(i32 6, float %5894)  ; FAbs(value)
  %5904 = fsub fast float 1.000000e+00, %4616
  %5905 = fmul fast float %4598, %4598
  %5906 = fmul fast float %5905, %5904
  %5907 = fadd fast float %5906, %4616
  %5908 = bitcast float %5907 to i32
  %5909 = ashr i32 %5908, 1
  %5910 = add nsw i32 %5909, 532487669
  %5911 = bitcast i32 %5910 to float
  %5912 = fadd fast float %5911, %4598
  %5913 = fmul fast float %4616, %5902
  %5914 = fsub fast float 1.000000e+00, %5902
  %5915 = fadd fast float %5914, %5913
  %5916 = fmul fast float %5903, %5903
  %5917 = fmul fast float %5916, %5904
  %5918 = fadd fast float %5917, %4616
  %5919 = bitcast float %5918 to i32
  %5920 = ashr i32 %5919, 1
  %5921 = add nsw i32 %5920, 532487669
  %5922 = bitcast i32 %5921 to float
  %5923 = fadd fast float %5922, %5903
  %5924 = fmul fast float %5915, %5915
  %5925 = fmul fast float %5924, %5912
  %5926 = fmul fast float %5925, %5923
  %5927 = fdiv fast float 0x3FF0A00000000000, %5926
  %5928 = fmul fast float %5927, %4616
  %5929 = call float @dx.op.unary.f32(i32 6, float %5895)  ; FAbs(value)
  %5930 = fsub fast float 1.000000e+00, %5929
  %5931 = bitcast float %5930 to i32
  %5932 = sitofp i32 %5931 to float
  %5933 = fmul fast float %5932, 5.000000e+00
  %5934 = fadd fast float %5933, 0xC1EFBF8940000000
  %5935 = fptosi float %5934 to i32
  %5936 = bitcast i32 %5935 to float
  %5937 = fsub fast float 1.000000e+00, %4573
  %5938 = fsub fast float 1.000000e+00, %4574
  %5939 = fsub fast float 1.000000e+00, %4596
  %5940 = fmul fast float %5936, %5937
  %5941 = fmul fast float %5936, %5938
  %5942 = fmul fast float %5936, %5939
  %5943 = fadd fast float %5940, %4573
  %5944 = fadd fast float %5941, %4574
  %5945 = fadd fast float %5942, %4596
  br i1 %4871, label %5946, label %5969

; <label>:5946                                    ; preds = %5882
  %5947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3967, float %5929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5948 = extractvalue %dx.types.ResRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.ResRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.ResRet.f32 %5947, 2
  %5951 = fadd fast float %5948, -5.000000e-01
  %5952 = fadd fast float %5949, -5.000000e-01
  %5953 = fadd fast float %5950, -5.000000e-01
  %5954 = fmul fast float %4573, 4.000000e+00
  %5955 = fmul fast float %5954, %5937
  %5956 = fmul fast float %5955, %5951
  %5957 = fmul fast float %4574, 4.000000e+00
  %5958 = fmul fast float %5957, %5938
  %5959 = fmul fast float %5958, %5952
  %5960 = fmul fast float %4596, 4.000000e+00
  %5961 = fmul fast float %5960, %5939
  %5962 = fmul fast float %5961, %5953
  %5963 = fadd fast float %5956, %5943
  %5964 = fadd fast float %5959, %5944
  %5965 = fadd fast float %5962, %5945
  %5966 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  %5967 = call float @dx.op.unary.f32(i32 7, float %5964)  ; Saturate(value)
  %5968 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  br label %5969

; <label>:5969                                    ; preds = %5946, %5882
  %5970 = phi float [ %5966, %5946 ], [ %5943, %5882 ]
  %5971 = phi float [ %5967, %5946 ], [ %5944, %5882 ]
  %5972 = phi float [ %5968, %5946 ], [ %5945, %5882 ]
  %5973 = fmul fast float %5894, 9.843750e-01
  %5974 = fadd fast float %5973, 7.812500e-03
  %5975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5974, float %4861, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 2
  %5977 = extractvalue %dx.types.ResRet.f32 %5975, 3
  %5978 = fmul fast float %5976, %4573
  %5979 = fmul fast float %5976, %4574
  %5980 = fmul fast float %5976, %4596
  %5981 = fadd fast float %5978, %5977
  %5982 = fadd fast float %5979, %5977
  %5983 = fadd fast float %5980, %5977
  br i1 %4871, label %5984, label %6007

; <label>:5984                                    ; preds = %5969
  %5985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3967, float %5894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = fadd fast float %5986, -5.000000e-01
  %5990 = fadd fast float %5987, -5.000000e-01
  %5991 = fadd fast float %5988, -5.000000e-01
  %5992 = fmul fast float %4573, 4.000000e+00
  %5993 = fmul fast float %5992, %5937
  %5994 = fmul fast float %5993, %5989
  %5995 = fmul fast float %4574, 4.000000e+00
  %5996 = fmul fast float %5995, %5938
  %5997 = fmul fast float %5996, %5990
  %5998 = fmul fast float %4596, 4.000000e+00
  %5999 = fmul fast float %5998, %5939
  %6000 = fmul fast float %5999, %5991
  %6001 = fadd fast float %5994, %5981
  %6002 = fadd fast float %5997, %5982
  %6003 = fadd fast float %6000, %5983
  %6004 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6005 = call float @dx.op.unary.f32(i32 7, float %6002)  ; Saturate(value)
  %6006 = call float @dx.op.unary.f32(i32 7, float %6003)  ; Saturate(value)
  br label %6007

; <label>:6007                                    ; preds = %5984, %5969
  %6008 = phi float [ %6004, %5984 ], [ %5981, %5969 ]
  %6009 = phi float [ %6005, %5984 ], [ %5982, %5969 ]
  %6010 = phi float [ %6006, %5984 ], [ %5983, %5969 ]
  %6011 = call float @dx.op.binary.f32(i32 35, float %6009, float %6010)  ; FMax(a,b)
  %6012 = call float @dx.op.binary.f32(i32 35, float %6008, float %6011)  ; FMax(a,b)
  %6013 = fsub fast float 1.000000e+00, %6012
  %6014 = fmul fast float %5970, %5928
  %6015 = fmul fast float %5971, %5928
  %6016 = fmul fast float %5972, %5928
  %6017 = fsub fast float 1.000000e+00, %5895
  %6018 = bitcast float %6017 to i32
  %6019 = sitofp i32 %6018 to float
  %6020 = fmul fast float %6019, 5.000000e+00
  %6021 = fadd fast float %6020, 0xC1EFBF8940000000
  %6022 = fptosi float %6021 to i32
  %6023 = bitcast i32 %6022 to float
  %6024 = fmul fast float %6023, %3968
  %6025 = fmul fast float %6013, %6024
  %6026 = fmul fast float %6025, %5797
  %6027 = fmul fast float %6025, %5798
  %6028 = fmul fast float %6025, %5799
  %6029 = fadd fast float %6026, %6014
  %6030 = fadd fast float %6027, %6015
  %6031 = fadd fast float %6028, %6016
  %6032 = fmul fast float %5900, %5883
  %6033 = fmul fast float %6032, %6013
  %6034 = fmul fast float %5900, %5884
  %6035 = fmul fast float %6034, %6013
  %6036 = fmul fast float %5900, %5885
  %6037 = fmul fast float %6036, %6013
  %6038 = fmul fast float %6032, %6029
  %6039 = fmul fast float %6034, %6030
  %6040 = fmul fast float %6036, %6031
  %6041 = fadd fast float %6033, %5781
  %6042 = fmul fast float %6041, %3964
  %6043 = fadd fast float %6035, %5782
  %6044 = fmul fast float %6043, %3964
  %6045 = fadd fast float %6037, %5783
  %6046 = fmul fast float %6045, %3964
  %6047 = fadd fast float %6038, %5824
  %6048 = fmul fast float %6047, %3964
  %6049 = fadd fast float %6039, %5827
  %6050 = fmul fast float %6049, %3964
  %6051 = fadd fast float %6040, %5830
  %6052 = fmul fast float %6051, %3964
  br label %6053

; <label>:6053                                    ; preds = %6007, %5875, %5777
  %6054 = phi float [ %5825, %5777 ], [ %5825, %5875 ], [ %6048, %6007 ]
  %6055 = phi float [ %5828, %5777 ], [ %5828, %5875 ], [ %6050, %6007 ]
  %6056 = phi float [ %5831, %5777 ], [ %5831, %5875 ], [ %6052, %6007 ]
  %6057 = phi float [ %5820, %5777 ], [ %5820, %5875 ], [ %6042, %6007 ]
  %6058 = phi float [ %5821, %5777 ], [ %5821, %5875 ], [ %6044, %6007 ]
  %6059 = phi float [ %5822, %5777 ], [ %5822, %5875 ], [ %6046, %6007 ]
  %6060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.i32 %6060, 0
  %6062 = icmp eq i32 %6061, 0
  br i1 %6062, label %6493, label %6063

; <label>:6063                                    ; preds = %6053
  %6064 = fptoui float %85 to i32
  %6065 = fptoui float %86 to i32
  %6066 = lshr i32 %6064, 4
  %6067 = lshr i32 %6065, 4
  %6068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.i32 %6068, 0
  %6070 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6067, i32 %6069, i32 %6066)  ; UMad(a,b,c)
  %6071 = add nsw i32 %6061, -1
  %6072 = call i32 @dx.op.binary.i32(i32 37, i32 %6071, i32 0)  ; IMax(a,b)
  %6073 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6074 = fptoui float %6073 to i32
  %6075 = lshr i32 %6074, 5
  %6076 = call i32 @dx.op.binary.i32(i32 40, i32 %6075, i32 8191)  ; UMin(a,b)
  %6077 = shl i32 %6076, 2
  %6078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6077, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.i32 %6078, 0
  %6080 = lshr i32 %6079, 16
  %6081 = and i32 %6079, 65535
  %6082 = lshr i32 %6079, 21
  %6083 = lshr i32 %6081, 5
  %6084 = call i32 @dx.op.binary.i32(i32 40, i32 %6083, i32 %6072)  ; UMin(a,b)
  %6085 = icmp ugt i32 %6082, %6084
  br i1 %6085, label %6493, label %6086

; <label>:6086                                    ; preds = %6063
  br label %6087

; <label>:6087                                    ; preds = %6483, %6086
  %6088 = phi i32 [ %6490, %6483 ], [ %6082, %6086 ]
  %6089 = phi float [ %6484, %6483 ], [ %6054, %6086 ]
  %6090 = phi float [ %6485, %6483 ], [ %6055, %6086 ]
  %6091 = phi float [ %6486, %6483 ], [ %6056, %6086 ]
  %6092 = phi float [ %6487, %6483 ], [ %6057, %6086 ]
  %6093 = phi float [ %6488, %6483 ], [ %6058, %6086 ]
  %6094 = phi float [ %6489, %6483 ], [ %6059, %6086 ]
  %6095 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.i32 %6095, 0
  %6097 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6070, i32 %6096, i32 %6088)  ; UMad(a,b,c)
  %6098 = shl i32 %6097, 2
  %6099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6098, i32 undef)  ; BufferLoad(srv,index,wot)
  %6100 = extractvalue %dx.types.ResRet.i32 %6099, 0
  %6101 = shl i32 %6088, 5
  %6102 = sub nsw i32 %6080, %6101
  %6103 = call i32 @dx.op.binary.i32(i32 37, i32 %6102, i32 0)  ; IMax(a,b)
  %6104 = call i32 @dx.op.binary.i32(i32 38, i32 %6103, i32 31)  ; IMin(a,b)
  %6105 = sub nsw i32 1, %6080
  %6106 = add nsw i32 %6105, %6081
  %6107 = call i32 @dx.op.binary.i32(i32 37, i32 %6106, i32 0)  ; IMax(a,b)
  %6108 = call i32 @dx.op.binary.i32(i32 38, i32 %6107, i32 32)  ; IMin(a,b)
  %6109 = and i32 %6108, 31
  %6110 = shl i32 -1, %6109
  %6111 = xor i32 %6110, -1
  %6112 = and i32 %6104, 31
  %6113 = shl i32 %6111, %6112
  %6114 = icmp eq i32 %6108, 32
  %6115 = select i1 %6114, i32 -1, i32 %6113
  %6116 = and i32 %6115, %6100
  %6117 = icmp eq i32 %6116, 0
  br i1 %6117, label %6483, label %6118

; <label>:6118                                    ; preds = %6087
  br label %6119

; <label>:6119                                    ; preds = %6199, %6118
  %6120 = phi i32 [ %6131, %6199 ], [ %6116, %6118 ]
  %6121 = phi float [ %6200, %6199 ], [ %6089, %6118 ]
  %6122 = phi float [ %6201, %6199 ], [ %6090, %6118 ]
  %6123 = phi float [ %6202, %6199 ], [ %6091, %6118 ]
  %6124 = phi float [ %6203, %6199 ], [ %6092, %6118 ]
  %6125 = phi float [ %6204, %6199 ], [ %6093, %6118 ]
  %6126 = phi float [ %6205, %6199 ], [ %6094, %6118 ]
  %6127 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6120)  ; FirstbitLo(value)
  %6128 = add i32 %6127, %6101
  %6129 = and i32 %6127, 31
  %6130 = shl i32 1, %6129
  %6131 = xor i32 %6130, %6120
  %6132 = mul i32 %6128, 112
  %6133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6132, i32 undef)  ; BufferLoad(srv,index,wot)
  %6134 = extractvalue %dx.types.ResRet.f32 %6133, 0
  %6135 = extractvalue %dx.types.ResRet.f32 %6133, 1
  %6136 = extractvalue %dx.types.ResRet.f32 %6133, 2
  %6137 = or i32 %6132, 12
  %6138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6137, i32 undef)  ; BufferLoad(srv,index,wot)
  %6139 = extractvalue %dx.types.ResRet.f32 %6138, 0
  %6140 = add i32 %6132, 44
  %6141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6140, i32 undef)  ; BufferLoad(srv,index,wot)
  %6142 = extractvalue %dx.types.ResRet.f32 %6141, 0
  %6143 = add i32 %6132, 48
  %6144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6143, i32 undef)  ; BufferLoad(srv,index,wot)
  %6145 = extractvalue %dx.types.ResRet.f32 %6144, 0
  %6146 = extractvalue %dx.types.ResRet.f32 %6144, 1
  %6147 = extractvalue %dx.types.ResRet.f32 %6144, 2
  %6148 = add i32 %6132, 80
  %6149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6148, i32 undef)  ; BufferLoad(srv,index,wot)
  %6150 = extractvalue %dx.types.ResRet.f32 %6149, 1
  %6151 = extractvalue %dx.types.ResRet.f32 %6149, 2
  %6152 = call float @dx.op.dot3.f32(i32 55, float %6134, float %6135, float %6136, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = select i1 %186, float %6150, float %6134
  %6154 = select i1 %186, float %6152, float %6135
  %6155 = select i1 %186, float %6151, float %6136
  %6156 = fsub fast float %6145, %144
  %6157 = fsub fast float %6146, %145
  %6158 = fsub fast float %6147, %146
  %6159 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6158, float %6156, float %6157, float %6158)  ; Dot3(ax,ay,az,bx,by,bz)
  %6160 = call float @dx.op.unary.f32(i32 24, float %6159)  ; Sqrt(value)
  %6161 = fdiv fast float 1.000000e+00, %6160
  %6162 = fmul fast float %6161, %6156
  %6163 = fmul fast float %6161, %6157
  %6164 = fmul fast float %6161, %6158
  %6165 = fadd fast float %6160, %6139
  %6166 = fdiv fast float 1.000000e+00, %6165
  %6167 = fmul float %6142, %6166
  %6168 = fmul float %6167, %6167
  %6169 = call float @dx.op.unary.f32(i32 7, float %6168)  ; Saturate(value)
  %6170 = and i32 %6130, %6116
  %6171 = icmp eq i32 %6170, 0
  br i1 %6171, label %6194, label %6172, !dx.controlflow.hints !91

; <label>:6172                                    ; preds = %6119
  %6173 = lshr i32 %6064, 5
  %6174 = lshr i32 %6065, 5
  %6175 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6173, i32 %6174, i32 %6128, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6176 = extractvalue %dx.types.ResRet.i32 %6175, 0
  %6177 = and i32 %6176, 3
  %6178 = icmp eq i32 %6177, 0
  %6179 = select i1 %6178, float 1.000000e+00, float 0.000000e+00
  %6180 = icmp eq i32 %6177, 3
  br i1 %6180, label %6181, label %6194

; <label>:6181                                    ; preds = %6172
  %6182 = lshr i32 %6176, 10
  %6183 = and i32 %6182, 8160
  %6184 = and i32 %6065, 31
  %6185 = or i32 %6183, %6184
  %6186 = lshr i32 %6176, 1
  %6187 = and i32 %6186, 16352
  %6188 = and i32 %6064, 31
  %6189 = or i32 %6187, %6188
  %6190 = lshr i32 %6176, 23
  %6191 = and i32 %6190, 255
  %6192 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6189, i32 %6185, i32 %6191, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6193 = extractvalue %dx.types.ResRet.f32 %6192, 0
  br label %6194

; <label>:6194                                    ; preds = %6181, %6172, %6119
  %6195 = phi float [ %6193, %6181 ], [ %6179, %6172 ], [ 0.000000e+00, %6119 ]
  %6196 = call float @dx.op.binary.f32(i32 36, float %6195, float %6195)  ; FMin(a,b)
  %6197 = call float @dx.op.binary.f32(i32 36, float %6195, float %6196)  ; FMin(a,b)
  %6198 = fcmp fast ogt float %6197, 0.000000e+00
  br i1 %6198, label %6207, label %6199, !dx.controlflow.hints !92

; <label>:6199                                    ; preds = %6439, %6194
  %6200 = phi float [ %6121, %6194 ], [ %6479, %6439 ]
  %6201 = phi float [ %6122, %6194 ], [ %6480, %6439 ]
  %6202 = phi float [ %6123, %6194 ], [ %6481, %6439 ]
  %6203 = phi float [ %6124, %6194 ], [ %6473, %6439 ]
  %6204 = phi float [ %6125, %6194 ], [ %6474, %6439 ]
  %6205 = phi float [ %6126, %6194 ], [ %6475, %6439 ]
  %6206 = icmp eq i32 %6120, %6130
  br i1 %6206, label %6482, label %6119

; <label>:6207                                    ; preds = %6194
  %6208 = fmul fast float %6195, %6153
  %6209 = fmul fast float %6195, %6154
  %6210 = fmul fast float %6195, %6155
  %6211 = fsub fast float %6147, %4369
  %6212 = fcmp fast ogt float %6211, 0.000000e+00
  %6213 = fsub fast float %146, %4369
  %6214 = fcmp fast ogt float %6213, 0.000000e+00
  %6215 = xor i1 %6214, %6212
  %6216 = fsub fast float %4369, %6147
  %6217 = fmul fast float %6216, 2.000000e+00
  %6218 = fadd fast float %6217, %6147
  %6219 = select i1 %6215, float %6147, float %6218
  %6220 = fsub fast float %6219, %146
  %6221 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6220, float %6156, float %6157, float %6220)  ; Dot3(ax,ay,az,bx,by,bz)
  %6222 = call float @dx.op.unary.f32(i32 25, float %6221)  ; Rsqrt(value)
  %6223 = fmul fast float %6222, %6156
  %6224 = fmul fast float %6222, %6157
  %6225 = fmul fast float %6222, %6220
  %6226 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4377)  ; Dot3(ax,ay,az,bx,by,bz)
  %6227 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6223, float %6224, float %6225)  ; Dot3(ax,ay,az,bx,by,bz)
  %6228 = fdiv fast float 1.000000e+00, %6227
  %6229 = fmul fast float %6228, %6226
  %6230 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6213, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6231 = fcmp fast ogt float %6230, 0.000000e+00
  %6232 = fcmp fast olt float %6230, 0.000000e+00
  %6233 = zext i1 %6231 to i32
  %6234 = zext i1 %6232 to i32
  %6235 = sub nsw i32 %6233, %6234
  %6236 = sitofp i32 %6235 to float
  %6237 = fsub fast float %6219, %4369
  %6238 = call float @dx.op.dot3.f32(i32 55, float %6156, float %6157, float %6237, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6239 = fcmp fast ogt float %6238, 0.000000e+00
  %6240 = fcmp fast olt float %6238, 0.000000e+00
  %6241 = zext i1 %6239 to i32
  %6242 = zext i1 %6240 to i32
  %6243 = sub nsw i32 %6241, %6242
  %6244 = sitofp i32 %6243 to float
  %6245 = fcmp fast une float %6236, %6244
  br i1 %6245, label %6246, label %6256

; <label>:6246                                    ; preds = %6207
  %6247 = fmul fast float %6229, %6225
  %6248 = fmul fast float %6229, %6224
  %6249 = fmul fast float %6229, %6223
  %6250 = fmul fast float %6249, %6249
  %6251 = fmul fast float %6248, %6248
  %6252 = fadd fast float %6250, %6251
  %6253 = fmul fast float %6247, %6247
  %6254 = fadd fast float %6252, %6253
  %6255 = call float @dx.op.unary.f32(i32 24, float %6254)  ; Sqrt(value)
  br label %6268

; <label>:6256                                    ; preds = %6207
  %6257 = icmp slt i32 %6235, 0
  br i1 %6257, label %6258, label %6268

; <label>:6258                                    ; preds = %6256
  %6259 = fsub fast float %144, %6145
  %6260 = fsub fast float %145, %6146
  %6261 = fsub fast float %146, %6219
  %6262 = fmul fast float %6259, %6259
  %6263 = fmul fast float %6260, %6260
  %6264 = fadd fast float %6262, %6263
  %6265 = fmul fast float %6261, %6261
  %6266 = fadd fast float %6264, %6265
  %6267 = call float @dx.op.unary.f32(i32 24, float %6266)  ; Sqrt(value)
  br label %6268

; <label>:6268                                    ; preds = %6258, %6256, %6246
  %6269 = phi float [ %6255, %6246 ], [ %6267, %6258 ], [ 0.000000e+00, %6256 ]
  %6270 = and i1 %6214, %6212
  %6271 = fsub fast float -0.000000e+00, %6269
  %6272 = select i1 %6270, float -0.000000e+00, float %6271
  %6273 = fmul fast float %4370, 0x3FF7154760000000
  %6274 = fmul fast float %6273, %6272
  %6275 = fmul fast float %4371, 0x3FF7154760000000
  %6276 = fmul fast float %6275, %6272
  %6277 = fmul fast float %4372, 0x3FF7154760000000
  %6278 = fmul fast float %6277, %6272
  %6279 = call float @dx.op.unary.f32(i32 21, float %6274)  ; Exp(value)
  %6280 = call float @dx.op.unary.f32(i32 21, float %6276)  ; Exp(value)
  %6281 = call float @dx.op.unary.f32(i32 21, float %6278)  ; Exp(value)
  %6282 = call float @dx.op.unary.f32(i32 7, float %6279)  ; Saturate(value)
  %6283 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6284 = call float @dx.op.unary.f32(i32 7, float %6281)  ; Saturate(value)
  %6285 = fmul fast float %6208, %6282
  %6286 = fmul fast float %6209, %6283
  %6287 = fmul fast float %6210, %6284
  %6288 = fsub fast float %6162, %4569
  %6289 = fsub fast float %6163, %4568
  %6290 = fsub fast float %6164, %4567
  %6291 = call float @dx.op.dot3.f32(i32 55, float %6288, float %6289, float %6290, float %6288, float %6289, float %6290)  ; Dot3(ax,ay,az,bx,by,bz)
  %6292 = call float @dx.op.unary.f32(i32 25, float %6291)  ; Rsqrt(value)
  %6293 = fmul fast float %6292, %6288
  %6294 = fmul fast float %6292, %6289
  %6295 = fmul fast float %6292, %6290
  %6296 = call float @dx.op.dot3.f32(i32 55, float %6162, float %6163, float %6164, float %4570, float %4571, float %4572)  ; Dot3(ax,ay,az,bx,by,bz)
  %6297 = call float @dx.op.dot3.f32(i32 55, float %4566, float %4565, float %4564, float %6293, float %6294, float %6295)  ; Dot3(ax,ay,az,bx,by,bz)
  %6298 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  %6299 = fmul fast float %6298, %6169
  %6300 = fmul fast float %6298, %6298
  %6301 = fmul fast float %6300, %4623
  %6302 = call float @dx.op.unary.f32(i32 7, float %6301)  ; Saturate(value)
  %6303 = fmul fast float %6299, %6302
  %6304 = bitcast float %6159 to i32
  %6305 = ashr i32 %6304, 1
  %6306 = sub nsw i32 1597463007, %6305
  %6307 = bitcast i32 %6306 to float
  %6308 = fmul fast float %6307, %6156
  %6309 = fmul fast float %6307, %6157
  %6310 = fmul fast float %6307, %6158
  %6311 = fsub fast float %6308, %4569
  %6312 = fsub fast float %6309, %4568
  %6313 = fsub fast float %6310, %4567
  %6314 = call float @dx.op.dot3.f32(i32 55, float %6311, float %6312, float %6313, float %6311, float %6312, float %6313)  ; Dot3(ax,ay,az,bx,by,bz)
  %6315 = call float @dx.op.unary.f32(i32 25, float %6314)  ; Rsqrt(value)
  %6316 = fmul fast float %6311, %6315
  %6317 = fmul fast float %6312, %6315
  %6318 = fmul fast float %6313, %6315
  %6319 = call float @dx.op.dot3.f32(i32 55, float %4570, float %4571, float %4572, float %6316, float %6317, float %6318)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = fmul fast float %6319, %6319
  %6321 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6322 = fsub fast float 1.000000e+00, %4616
  %6323 = fmul fast float %4598, %4598
  %6324 = fmul fast float %6323, %6322
  %6325 = fadd fast float %6324, %4616
  %6326 = bitcast float %6325 to i32
  %6327 = ashr i32 %6326, 1
  %6328 = add nsw i32 %6327, 532487669
  %6329 = bitcast i32 %6328 to float
  %6330 = fadd fast float %6329, %4598
  %6331 = fmul fast float %4616, %6320
  %6332 = fsub fast float 1.000000e+00, %6320
  %6333 = fadd fast float %6332, %6331
  %6334 = fmul fast float %6321, %6321
  %6335 = fmul fast float %6334, %6322
  %6336 = fadd fast float %6335, %4616
  %6337 = bitcast float %6336 to i32
  %6338 = ashr i32 %6337, 1
  %6339 = add nsw i32 %6338, 532487669
  %6340 = bitcast i32 %6339 to float
  %6341 = fadd fast float %6340, %6321
  %6342 = fmul fast float %6333, %6333
  %6343 = fmul fast float %6342, %6330
  %6344 = fmul fast float %6343, %6341
  %6345 = fdiv fast float 1.000000e+00, %6344
  %6346 = bitcast float %4616 to i32
  %6347 = sitofp i32 %6346 to float
  %6348 = fmul fast float %6347, 0x3FE7F73180000000
  %6349 = fadd fast float %6348, 0x41AFE27C40000000
  %6350 = fptosi float %6349 to i32
  %6351 = bitcast i32 %6350 to float
  %6352 = fmul fast float %6142, 0x3FD80E9D60000000
  %6353 = fmul fast float %6352, %6307
  %6354 = fadd fast float %6351, %6353
  %6355 = bitcast float %6354 to i32
  %6356 = sub nsw i32 2129859010, %6355
  %6357 = bitcast i32 %6356 to float
  %6358 = fmul fast float %4616, %6345
  %6359 = fmul fast float %6358, %6351
  %6360 = fmul fast float %6359, %6357
  %6361 = call float @dx.op.unary.f32(i32 6, float %6297)  ; FAbs(value)
  %6362 = fsub fast float 1.000000e+00, %6361
  %6363 = bitcast float %6362 to i32
  %6364 = sitofp i32 %6363 to float
  %6365 = fmul fast float %6364, 5.000000e+00
  %6366 = fadd fast float %6365, 0xC1EFBF8940000000
  %6367 = fptosi float %6366 to i32
  %6368 = bitcast i32 %6367 to float
  %6369 = fsub fast float 1.000000e+00, %4573
  %6370 = fsub fast float 1.000000e+00, %4574
  %6371 = fsub fast float 1.000000e+00, %4596
  %6372 = fmul fast float %6368, %6369
  %6373 = fmul fast float %6368, %6370
  %6374 = fmul fast float %6368, %6371
  %6375 = fadd fast float %6372, %4573
  %6376 = fadd fast float %6373, %4574
  %6377 = fadd fast float %6374, %4596
  br i1 %4871, label %6378, label %6401

; <label>:6378                                    ; preds = %6268
  %6379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3967, float %6361, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6380 = extractvalue %dx.types.ResRet.f32 %6379, 0
  %6381 = extractvalue %dx.types.ResRet.f32 %6379, 1
  %6382 = extractvalue %dx.types.ResRet.f32 %6379, 2
  %6383 = fadd fast float %6380, -5.000000e-01
  %6384 = fadd fast float %6381, -5.000000e-01
  %6385 = fadd fast float %6382, -5.000000e-01
  %6386 = fmul fast float %4573, 4.000000e+00
  %6387 = fmul fast float %6386, %6369
  %6388 = fmul fast float %6387, %6383
  %6389 = fmul fast float %4574, 4.000000e+00
  %6390 = fmul fast float %6389, %6370
  %6391 = fmul fast float %6390, %6384
  %6392 = fmul fast float %4596, 4.000000e+00
  %6393 = fmul fast float %6392, %6371
  %6394 = fmul fast float %6393, %6385
  %6395 = fadd fast float %6388, %6375
  %6396 = fadd fast float %6391, %6376
  %6397 = fadd fast float %6394, %6377
  %6398 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  %6399 = call float @dx.op.unary.f32(i32 7, float %6396)  ; Saturate(value)
  %6400 = call float @dx.op.unary.f32(i32 7, float %6397)  ; Saturate(value)
  br label %6401

; <label>:6401                                    ; preds = %6378, %6268
  %6402 = phi float [ %6398, %6378 ], [ %6375, %6268 ]
  %6403 = phi float [ %6399, %6378 ], [ %6376, %6268 ]
  %6404 = phi float [ %6400, %6378 ], [ %6377, %6268 ]
  %6405 = fmul fast float %6296, 9.843750e-01
  %6406 = fadd fast float %6405, 7.812500e-03
  %6407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6406, float %4861, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 3
  %6410 = fmul fast float %6408, %4573
  %6411 = fmul fast float %6408, %4574
  %6412 = fmul fast float %6408, %4596
  %6413 = fadd fast float %6410, %6409
  %6414 = fadd fast float %6411, %6409
  %6415 = fadd fast float %6412, %6409
  br i1 %4871, label %6416, label %6439

; <label>:6416                                    ; preds = %6401
  %6417 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3967, float %6296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6418 = extractvalue %dx.types.ResRet.f32 %6417, 0
  %6419 = extractvalue %dx.types.ResRet.f32 %6417, 1
  %6420 = extractvalue %dx.types.ResRet.f32 %6417, 2
  %6421 = fadd fast float %6418, -5.000000e-01
  %6422 = fadd fast float %6419, -5.000000e-01
  %6423 = fadd fast float %6420, -5.000000e-01
  %6424 = fmul fast float %4573, 4.000000e+00
  %6425 = fmul fast float %6424, %6369
  %6426 = fmul fast float %6425, %6421
  %6427 = fmul fast float %4574, 4.000000e+00
  %6428 = fmul fast float %6427, %6370
  %6429 = fmul fast float %6428, %6422
  %6430 = fmul fast float %4596, 4.000000e+00
  %6431 = fmul fast float %6430, %6371
  %6432 = fmul fast float %6431, %6423
  %6433 = fadd fast float %6426, %6413
  %6434 = fadd fast float %6429, %6414
  %6435 = fadd fast float %6432, %6415
  %6436 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6437 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  %6438 = call float @dx.op.unary.f32(i32 7, float %6435)  ; Saturate(value)
  br label %6439

; <label>:6439                                    ; preds = %6416, %6401
  %6440 = phi float [ %6436, %6416 ], [ %6413, %6401 ]
  %6441 = phi float [ %6437, %6416 ], [ %6414, %6401 ]
  %6442 = phi float [ %6438, %6416 ], [ %6415, %6401 ]
  %6443 = call float @dx.op.binary.f32(i32 35, float %6441, float %6442)  ; FMax(a,b)
  %6444 = call float @dx.op.binary.f32(i32 35, float %6440, float %6443)  ; FMax(a,b)
  %6445 = fsub fast float 1.000000e+00, %6444
  %6446 = fmul fast float %6402, %6360
  %6447 = fmul fast float %6403, %6360
  %6448 = fmul fast float %6404, %6360
  %6449 = fsub fast float 1.000000e+00, %6297
  %6450 = bitcast float %6449 to i32
  %6451 = sitofp i32 %6450 to float
  %6452 = fmul fast float %6451, 5.000000e+00
  %6453 = fadd fast float %6452, 0xC1EFBF8940000000
  %6454 = fptosi float %6453 to i32
  %6455 = bitcast i32 %6454 to float
  %6456 = fmul fast float %6455, %3968
  %6457 = fmul fast float %6445, %6456
  %6458 = fmul fast float %6457, %5797
  %6459 = fmul fast float %6457, %5798
  %6460 = fmul fast float %6457, %5799
  %6461 = fadd fast float %6458, %6446
  %6462 = fadd fast float %6459, %6447
  %6463 = fadd fast float %6460, %6448
  %6464 = fmul fast float %6285, %3964
  %6465 = fmul fast float %6464, %6303
  %6466 = fmul fast float %6465, %6445
  %6467 = fmul fast float %6286, %3964
  %6468 = fmul fast float %6467, %6303
  %6469 = fmul fast float %6468, %6445
  %6470 = fmul fast float %6287, %3964
  %6471 = fmul fast float %6470, %6303
  %6472 = fmul fast float %6471, %6445
  %6473 = fadd fast float %6466, %6124
  %6474 = fadd fast float %6469, %6125
  %6475 = fadd fast float %6472, %6126
  %6476 = fmul fast float %6465, %6461
  %6477 = fmul fast float %6468, %6462
  %6478 = fmul fast float %6471, %6463
  %6479 = fadd fast float %6476, %6121
  %6480 = fadd fast float %6477, %6122
  %6481 = fadd fast float %6478, %6123
  br label %6199

; <label>:6482                                    ; preds = %6199
  br label %6483

; <label>:6483                                    ; preds = %6482, %6087
  %6484 = phi float [ %6089, %6087 ], [ %6200, %6482 ]
  %6485 = phi float [ %6090, %6087 ], [ %6201, %6482 ]
  %6486 = phi float [ %6091, %6087 ], [ %6202, %6482 ]
  %6487 = phi float [ %6092, %6087 ], [ %6203, %6482 ]
  %6488 = phi float [ %6093, %6087 ], [ %6204, %6482 ]
  %6489 = phi float [ %6094, %6087 ], [ %6205, %6482 ]
  %6490 = add i32 %6088, 1
  %6491 = icmp ugt i32 %6490, %6084
  br i1 %6491, label %6492, label %6087

; <label>:6492                                    ; preds = %6483
  br label %6493

; <label>:6493                                    ; preds = %6492, %6063, %6053
  %6494 = phi float [ %6054, %6053 ], [ %6054, %6063 ], [ %6484, %6492 ]
  %6495 = phi float [ %6055, %6053 ], [ %6055, %6063 ], [ %6485, %6492 ]
  %6496 = phi float [ %6056, %6053 ], [ %6056, %6063 ], [ %6486, %6492 ]
  %6497 = phi float [ %6057, %6053 ], [ %6057, %6063 ], [ %6487, %6492 ]
  %6498 = phi float [ %6058, %6053 ], [ %6058, %6063 ], [ %6488, %6492 ]
  %6499 = phi float [ %6059, %6053 ], [ %6059, %6063 ], [ %6489, %6492 ]
  %6500 = call float @dx.op.unary.f32(i32 24, float %4576)  ; Sqrt(value)
  %6501 = call float @dx.op.unary.f32(i32 24, float %4577)  ; Sqrt(value)
  %6502 = call float @dx.op.unary.f32(i32 24, float %4578)  ; Sqrt(value)
  %6503 = fmul fast float %6500, %6497
  %6504 = fmul fast float %6501, %6498
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  br i1 %186, label %6507, label %6530

; <label>:6507                                    ; preds = %6493
  %6508 = fadd fast float %6499, %3970
  %6509 = fmul fast float %6508, %3971
  %6510 = fsub fast float 1.000000e+00, %3971
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 3
  %6514 = fmul fast float %6513, %6511
  %6515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6516 = extractvalue %dx.types.CBufRet.f32 %6515, 0
  %6517 = fmul fast float %6516, %5803
  %6518 = extractvalue %dx.types.CBufRet.f32 %6515, 2
  %6519 = fmul fast float %6518, %4594
  %6520 = fadd fast float %6504, %6503
  %6521 = fmul fast float %6506, %6520
  %6522 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6523 = fadd fast float %6514, %6509
  %6524 = fsub fast float %6523, %6517
  %6525 = fadd fast float %6524, %6519
  %6526 = fsub fast float %6525, %6522
  %6527 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6528 = fmul fast float %6526, %6527
  %6529 = call float @dx.op.unary.f32(i32 7, float %6528)  ; Saturate(value)
  br label %6546

; <label>:6530                                    ; preds = %6493
  %6531 = fmul fast float %6502, %6499
  %6532 = fmul fast float %6506, %6503
  %6533 = fmul fast float %6506, %6504
  %6534 = fmul fast float %6531, %6506
  %6535 = add i32 %45, 356
  %6536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6535, i32 undef)  ; BufferLoad(srv,index,wot)
  %6537 = extractvalue %dx.types.ResRet.i32 %6536, 0
  %6538 = and i32 %6537, 32
  %6539 = icmp eq i32 %6538, 0
  br i1 %6539, label %6546, label %6540

; <label>:6540                                    ; preds = %6530
  %6541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6542 = extractvalue %dx.types.CBufRet.f32 %6541, 0
  %6543 = fmul fast float %6542, 0x3FE99999A0000000
  %6544 = fadd fast float %6542, %6532
  %6545 = fadd fast float %6543, %6534
  br label %6546

; <label>:6546                                    ; preds = %6540, %6530, %6507
  %6547 = phi float [ %6521, %6507 ], [ %6544, %6540 ], [ %6532, %6530 ]
  %6548 = phi float [ %6529, %6507 ], [ %6533, %6540 ], [ %6533, %6530 ]
  %6549 = phi float [ 1.000000e+00, %6507 ], [ %6545, %6540 ], [ %6534, %6530 ]
  %6550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.f32 %6550, 0
  %6552 = fmul fast float %6551, %6495
  %6553 = fmul fast float %6551, %6496
  %6554 = fadd fast float %6495, %6494
  %6555 = select i1 %186, float %6554, float %6494
  %6556 = fmul float %6555, %6551
  %6557 = select i1 %186, float 0.000000e+00, float %6552
  %6558 = select i1 %186, float 0.000000e+00, float %6553
  %6559 = fmul fast float %6547, %6500
  %6560 = fmul fast float %6548, %6501
  %6561 = fmul fast float %6549, %6502
  %6562 = fadd fast float %6556, %6559
  %6563 = fadd fast float %6557, %6560
  %6564 = fadd fast float %6558, %6561
  %6565 = select i1 %186, float %6548, float %6563
  %6566 = select i1 %186, float %6549, float %6564
  %6567 = call float @dx.op.binary.f32(i32 36, float %6562, float 3.225500e+04)  ; FMin(a,b)
  %6568 = call float @dx.op.binary.f32(i32 36, float %6565, float 3.225500e+04)  ; FMin(a,b)
  %6569 = call float @dx.op.binary.f32(i32 36, float %6566, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6567)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6568)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6569)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

