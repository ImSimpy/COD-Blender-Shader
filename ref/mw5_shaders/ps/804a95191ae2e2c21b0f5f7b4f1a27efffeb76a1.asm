;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xyzw        2     NONE   float   xy w
; NORMAL                   0   xyz         3     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float       
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float       
; LGV_POSITION_INDEX       0   xyzw        6     NONE   float      w
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float       
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float       
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x  w
; SV_IsFrontFace           0   x          10    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: d3d5e7cd22eebc16ca7c80943951853d
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
; CARD_DEPTH_OFFSET        0                 linear       
; CARD_BARY_AND_TILE       1        nointerpolation       
; LGV_POSITION_INDEX       0                 linear       
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
;   [256 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s0     1
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s3     1
;                                   sampler      NA          NA      S4             s4     1
;                                   sampler      NA          NA      S5             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture    byte         r/o      T1     t37,space1     1
;                                   texture    byte         r/o      T2     t31,space1     1
;                                   texture    byte         r/o      T3     t61,space1     1
;                                   texture    byte         r/o      T4     t62,space1     1
;                                   texture    byte         r/o      T5     t63,space1     1
;                                   texture     f32          3d      T6     t21,space2     1
;                                   texture     f32          3d      T7     t22,space2     1
;                                   texture     f32          2d      T8     t33,space2     1
;                                   texture     f32     2darray      T9     t16,space2     1
;                                   texture     f32          3d     T10     t15,space2     1
;                                   texture     f32          2d     T11     t14,space2     1
;                                   texture     f32          2d     T12     t13,space2     1
;                                   texture     u32          2d     T13     t17,space2     1
;                                   texture     f32          3d     T14     t18,space2     1
;                                   texture    byte         r/o     T15      t3,space1     1
;                                   texture    byte         r/o     T16      t4,space1     1
;                                   texture    byte         r/o     T17      t5,space1     1
;                                   texture    byte         r/o     T18      t6,space1     1
;                                   texture     f32          2d     T19     t69,space2     1
;                                   texture     f32          2d     T20     t37,space2     1
;                                   texture     f32     2darray     T21     t35,space2     1
;                                   texture     f32          3d     T22     t31,space2     1
;                                   texture    byte         r/o     T23     t10,space1     1
;                                   texture    byte         r/o     T24      t1,space1     1
;                                   texture     f32          1d     T25     t32,space2     1
;                                   texture     f32     2darray     T26      t8,space2     1
;                                   texture     f32          2d     T27      t2,space2     1
;                                   texture     f32          2d     T28      t3,space2     1
;                                   texture     f32          2d     T29      t4,space2     1
;                                   textureunorm_f32     2darray     T30     t80,space2     1
;                                   texture    byte         r/o     T31     t67,space1     1
;                                   texture     f32          2d     T32      t7,space2     1
;                                   texture     f32          2d     T33      t6,space2     1
;                                   texture     f32          2d     T34      t5,space2     1
;                                   texture     f32          2d     T35     t38,space2     1
;                                   texture    byte         r/o     T36     t12,space1     1
;                                   texture    byte         r/o     T37     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 41, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 11, 12, 13, 14, 15, 27, 36, 39, 40 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerComparisonState = type { i32 }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 63, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 62, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = alloca [4 x i32], align 4
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = icmp ne i32 %47, 0
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = alloca [3 x float], align 4
  %63 = alloca [3 x float], align 4
  %64 = alloca [3 x float], align 4
  %65 = alloca [3 x float], align 4
  %66 = alloca [12 x float], align 4
  %67 = alloca [12 x float], align 4
  %68 = alloca [4 x float], align 4
  %69 = alloca [4 x float], align 4
  %70 = alloca [4 x float], align 4
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %72, %59
  %74 = fmul fast float %72, %60
  %75 = select i1 %48, float 1.000000e+00, float -1.000000e+00
  %76 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = bitcast float %76 to i32
  %78 = ashr i32 %77, 1
  %79 = sub nsw i32 1597250115, %78
  %80 = bitcast i32 %79 to float
  %81 = fmul fast float %53, %75
  %82 = fmul fast float %81, %80
  %83 = fmul fast float %54, %75
  %84 = fmul fast float %83, %80
  %85 = fmul fast float %55, %75
  %86 = fmul fast float %85, %80
  %87 = lshr i32 %50, 8
  %88 = mul nuw nsw i32 %87, 24
  %89 = add nuw nsw i32 %88, 12
  %90 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %89, i32 undef)  ; BufferLoad(srv,index,wot)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = extractvalue %dx.types.ResRet.i32 %90, 1
  %93 = and i32 %91, 65535
  %94 = uitofp i32 %93 to float
  %95 = lshr i32 %91, 16
  %96 = uitofp i32 %95 to float
  %97 = and i32 %92, 65535
  %98 = uitofp i32 %97 to float
  %99 = lshr i32 %92, 16
  %100 = uitofp i32 %99 to float
  %101 = fmul fast float %94, 0x3F00001000000000
  %102 = fmul fast float %96, 0x3F00001000000000
  %103 = fmul fast float %98, 0x3F00001000000000
  %104 = fmul fast float %100, 0x3F00001000000000
  %105 = fadd fast float %101, -1.000000e+00
  %106 = fadd fast float %102, -1.000000e+00
  %107 = fadd fast float %103, -1.000000e+00
  %108 = fadd fast float %104, -1.000000e+00
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.i32 %110, 3
  %112 = and i32 %111, 3
  %113 = icmp ne i32 %112, 0
  %114 = and i32 %111, 4
  %115 = icmp ne i32 %114, 0
  %116 = and i1 %113, %115
  br i1 %116, label %117, label %128

; <label>:117                                     ; preds = %0
  %118 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %119 = fmul fast float %118, %74
  %120 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %121 = fmul fast float %120, %73
  %122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %41, float %121, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %123 = extractvalue %dx.types.ResRet.f32 %122, 0
  %124 = fsub fast float 1.000000e+00, %123
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 0
  %127 = fcmp fast olt float %124, %126
  br label %131

; <label>:128                                     ; preds = %0
  %129 = icmp eq i32 %114, 0
  %130 = and i1 %113, %129
  br label %131

; <label>:131                                     ; preds = %128, %117
  %132 = phi i1 [ %127, %117 ], [ %130, %128 ]
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = fmul fast float %134, 0x3FE3C6EF40000000
  %136 = frem fast float %73, 2.560000e+02
  %137 = frem fast float %74, 2.560000e+02
  %138 = fptoui float %136 to i32
  %139 = fptoui float %137 to i32
  %140 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %138, i32 %139, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  %142 = fadd fast float %141, %135
  %143 = call float @dx.op.unary.f32(i32 22, float %142)  ; Frc(value)
  %144 = add i32 %49, 60
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = add i32 %146, 0
  %148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %149 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %148, i32 0)  ; GetDimensions(handle,mipLevel)
  %150 = extractvalue %dx.types.Dimensions %149, 0
  %151 = sitofp i32 %150 to float
  %152 = extractvalue %dx.types.Dimensions %149, 1
  %153 = sitofp i32 %152 to float
  %154 = fmul fast float %96, 0x3F10001000000000
  %155 = fadd fast float %154, -2.000000e+00
  %156 = fmul fast float %155, %106
  %157 = fsub fast float 1.000000e+00, %156
  %158 = fmul fast float %98, 0x3F10001000000000
  %159 = fadd fast float %158, -2.000000e+00
  %160 = fmul fast float %159, %107
  %161 = fsub fast float %157, %160
  %162 = fmul fast float %94, 0x3F10001000000000
  %163 = fadd fast float %162, -2.000000e+00
  %164 = fmul fast float %163, %106
  %165 = fmul fast float %159, %108
  %166 = fsub fast float %164, %165
  %167 = fmul fast float %163, %107
  %168 = fmul fast float %155, %108
  %169 = fadd fast float %167, %168
  %170 = fadd fast float %164, %165
  %171 = fmul fast float %163, %105
  %172 = fsub fast float 1.000000e+00, %171
  %173 = fsub fast float %172, %160
  %174 = fmul fast float %155, %107
  %175 = fmul fast float %163, %108
  %176 = fsub fast float %174, %175
  %177 = fsub fast float %167, %168
  %178 = fadd fast float %174, %175
  %179 = fsub fast float %172, %156
  %180 = fmul fast float %151, %56
  %181 = call float @dx.op.unary.f32(i32 83, float %180)  ; DerivCoarseX(value)
  %182 = call float @dx.op.unary.f32(i32 84, float %180)  ; DerivCoarseY(value)
  %183 = fmul fast float %153, %57
  %184 = call float @dx.op.unary.f32(i32 83, float %183)  ; DerivCoarseX(value)
  %185 = call float @dx.op.unary.f32(i32 84, float %183)  ; DerivCoarseY(value)
  %186 = fmul fast float %184, %184
  %187 = fmul fast float %185, %185
  %188 = fadd fast float %187, %186
  %189 = fmul fast float %184, %181
  %190 = fmul fast float %185, %182
  %191 = fadd fast float %190, %189
  %192 = fmul fast float %181, %181
  %193 = fmul fast float %182, %182
  %194 = fadd fast float %193, %192
  %195 = fmul fast float %188, %194
  %196 = fmul fast float %191, %191
  %197 = fsub fast float %195, %196
  %198 = bitcast float %197 to i32
  %199 = fadd fast float %188, %194
  %200 = bitcast float %199 to i32
  %201 = sub i32 8388608, %200
  %202 = add i32 %201, %198
  %203 = ashr i32 %202, 24
  %204 = sitofp i32 %203 to float
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %144, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = add i32 %206, 0
  %208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %208, %dx.types.Handle %41, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = extractvalue %dx.types.ResRet.f32 %209, 1
  %212 = extractvalue %dx.types.ResRet.f32 %209, 2
  %213 = fmul fast float %210, 2.000000e+00
  %214 = fmul fast float %211, 2.000000e+00
  %215 = fmul fast float %212, 2.000000e+00
  %216 = fadd fast float %213, -1.000000e+00
  %217 = fadd fast float %214, -1.000000e+00
  %218 = fadd fast float %215, -1.000000e+00
  %219 = fmul fast float %216, %161
  %220 = call float @dx.op.tertiary.f32(i32 46, float %217, float %166, float %219)  ; FMad(a,b,c)
  %221 = call float @dx.op.tertiary.f32(i32 46, float %218, float %169, float %220)  ; FMad(a,b,c)
  %222 = fmul fast float %216, %170
  %223 = call float @dx.op.tertiary.f32(i32 46, float %217, float %173, float %222)  ; FMad(a,b,c)
  %224 = call float @dx.op.tertiary.f32(i32 46, float %218, float %176, float %223)  ; FMad(a,b,c)
  %225 = fmul fast float %216, %177
  %226 = call float @dx.op.tertiary.f32(i32 46, float %217, float %178, float %225)  ; FMad(a,b,c)
  %227 = call float @dx.op.tertiary.f32(i32 46, float %218, float %179, float %226)  ; FMad(a,b,c)
  br i1 %48, label %237, label %228

; <label>:228                                     ; preds = %131
  %229 = call float @dx.op.dot3.f32(i32 55, float %82, float %84, float %86, float %221, float %224, float %227)  ; Dot3(ax,ay,az,bx,by,bz)
  %230 = fmul fast float %229, 2.000000e+00
  %231 = fmul fast float %230, %82
  %232 = fmul fast float %230, %84
  %233 = fmul fast float %230, %86
  %234 = fsub fast float %221, %231
  %235 = fsub fast float %224, %232
  %236 = fsub fast float %227, %233
  br label %237

; <label>:237                                     ; preds = %228, %131
  %238 = phi float [ %234, %228 ], [ %221, %131 ]
  %239 = phi float [ %235, %228 ], [ %224, %131 ]
  %240 = phi float [ %236, %228 ], [ %227, %131 ]
  %241 = add i32 %49, 56
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = add i32 %243, 0
  %245 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %244, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %245, %dx.types.Handle %41, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = extractvalue %dx.types.ResRet.f32 %246, 1
  %249 = extractvalue %dx.types.ResRet.f32 %246, 2
  %250 = extractvalue %dx.types.ResRet.f32 %246, 3
  %251 = add i32 %49, 64
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = add i32 %253, 0
  %255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %255, %dx.types.Handle %41, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = add i32 %49, 68
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = add i32 %260, 0
  %262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %263 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %262, %dx.types.Handle %41, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float %204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = fadd fast float %52, 1.000000e+00
  %266 = add i32 %49, 24
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 2
  %269 = bitcast i32 %268 to float
  %270 = fmul fast float %264, 2.000000e+00
  %271 = fsub fast float %265, %270
  %272 = fmul fast float %269, %271
  %273 = fadd fast float %272, %61
  %274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %275 = extractvalue %dx.types.CBufRet.f32 %274, 2
  %276 = extractvalue %dx.types.CBufRet.f32 %274, 3
  %277 = fmul fast float %73, 2.000000e+00
  %278 = fmul fast float %277, %275
  %279 = fmul fast float %74, 2.000000e+00
  %280 = fmul fast float %279, %276
  %281 = fsub fast float 1.000000e+00, %278
  %282 = fsub fast float 1.000000e+00, %280
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %285 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %286 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %287 = fmul fast float %281, %284
  %288 = fmul fast float %281, %285
  %289 = fmul fast float %281, %286
  %290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %291 = extractvalue %dx.types.CBufRet.f32 %290, 0
  %292 = extractvalue %dx.types.CBufRet.f32 %290, 1
  %293 = extractvalue %dx.types.CBufRet.f32 %290, 2
  %294 = fmul fast float %282, %291
  %295 = fmul fast float %282, %292
  %296 = fmul fast float %282, %293
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = extractvalue %dx.types.CBufRet.f32 %297, 2
  %301 = fadd fast float %294, %298
  %302 = fadd fast float %301, %287
  %303 = fadd fast float %295, %299
  %304 = fadd fast float %303, %288
  %305 = fadd fast float %296, %300
  %306 = fadd fast float %305, %289
  %307 = fmul fast float %302, %273
  %308 = fmul fast float %304, %273
  %309 = fmul fast float %306, %273
  %310 = call float @dx.op.unary.f32(i32 26, float %51)  ; Round_ne(value)
  %311 = fptoui float %310 to i32
  %312 = call float @dx.op.unary.f32(i32 26, float %58)  ; Round_ne(value)
  %313 = fptoui float %312 to i32
  %314 = shl i32 %313, 3
  %315 = or i32 %314, 4
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 16777215
  %319 = add i32 %318, %311
  %320 = shl i32 %319, 6
  %321 = getelementptr [3 x float], [3 x float]* %62, i32 0, i32 0
  %322 = getelementptr [3 x float], [3 x float]* %63, i32 0, i32 0
  %323 = getelementptr [3 x float], [3 x float]* %64, i32 0, i32 0
  %324 = getelementptr [3 x float], [3 x float]* %65, i32 0, i32 0
  %325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.f32 %325, 0
  %327 = extractvalue %dx.types.ResRet.f32 %325, 1
  %328 = extractvalue %dx.types.ResRet.f32 %325, 2
  %329 = extractvalue %dx.types.ResRet.f32 %325, 3
  store float %326, float* %321, align 4
  store float %327, float* %322, align 4
  store float %328, float* %323, align 4
  store float %329, float* %324, align 4
  %330 = getelementptr [3 x float], [3 x float]* %62, i32 0, i32 1
  %331 = getelementptr [3 x float], [3 x float]* %63, i32 0, i32 1
  %332 = getelementptr [3 x float], [3 x float]* %64, i32 0, i32 1
  %333 = getelementptr [3 x float], [3 x float]* %65, i32 0, i32 1
  %334 = or i32 %320, 16
  %335 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = extractvalue %dx.types.ResRet.f32 %335, 2
  %339 = extractvalue %dx.types.ResRet.f32 %335, 3
  store float %336, float* %330, align 4
  store float %337, float* %331, align 4
  store float %338, float* %332, align 4
  store float %339, float* %333, align 4
  %340 = getelementptr [3 x float], [3 x float]* %62, i32 0, i32 2
  %341 = getelementptr [3 x float], [3 x float]* %63, i32 0, i32 2
  %342 = getelementptr [3 x float], [3 x float]* %64, i32 0, i32 2
  %343 = getelementptr [3 x float], [3 x float]* %65, i32 0, i32 2
  %344 = or i32 %320, 32
  %345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = extractvalue %dx.types.ResRet.f32 %345, 2
  %349 = extractvalue %dx.types.ResRet.f32 %345, 3
  store float %346, float* %340, align 4
  store float %347, float* %341, align 4
  store float %348, float* %342, align 4
  store float %349, float* %343, align 4
  %350 = or i32 %320, 48
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.i32 %353, 1
  %355 = icmp eq i32 %354, 0
  %356 = and i32 %352, 4
  %357 = icmp ne i32 %356, 0
  %358 = and i1 %355, %357
  br i1 %358, label %359, label %398

; <label>:359                                     ; preds = %237
  %360 = and i32 %352, 3
  %361 = getelementptr [3 x float], [3 x float]* %62, i32 0, i32 %360
  %362 = getelementptr [3 x float], [3 x float]* %63, i32 0, i32 %360
  %363 = getelementptr [3 x float], [3 x float]* %64, i32 0, i32 %360
  %364 = getelementptr [3 x float], [3 x float]* %65, i32 0, i32 %360
  %365 = load float, float* %361, align 4
  %366 = load float, float* %362, align 4
  %367 = load float, float* %363, align 4
  %368 = load float, float* %364, align 4
  %369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.f32 %369, 0
  %371 = extractvalue %dx.types.CBufRet.f32 %369, 1
  %372 = extractvalue %dx.types.CBufRet.f32 %369, 2
  %373 = call float @dx.op.dot3.f32(i32 55, float %365, float %366, float %367, float %370, float %371, float %372)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = fadd fast float %373, %368
  %375 = fcmp fast ogt float %374, 1.000000e+00
  br i1 %375, label %376, label %381

; <label>:376                                     ; preds = %359
  %377 = fadd fast float %374, -1.000000e+00
  %378 = fmul fast float %377, 4.000000e+00
  %379 = call float @dx.op.unary.f32(i32 7, float %378)  ; Saturate(value)
  %380 = fmul fast float %379, 4.000000e+00
  br label %387

; <label>:381                                     ; preds = %359
  %382 = fcmp fast olt float %374, 0.000000e+00
  br i1 %382, label %383, label %387

; <label>:383                                     ; preds = %381
  %384 = fmul fast float %374, -4.000000e+00
  %385 = call float @dx.op.unary.f32(i32 7, float %384)  ; Saturate(value)
  %386 = fmul fast float %385, -4.000000e+00
  br label %387

; <label>:387                                     ; preds = %383, %381, %376
  %388 = phi float [ %380, %376 ], [ %386, %383 ], [ 0.000000e+00, %381 ]
  %389 = icmp eq i32 %360, 0
  %390 = select i1 %389, float %388, float 0.000000e+00
  %391 = fadd fast float %329, %390
  store float %391, float* %324, align 4, !noalias !85
  %392 = icmp eq i32 %360, 1
  %393 = select i1 %392, float %388, float 0.000000e+00
  %394 = fadd fast float %339, %393
  store float %394, float* %333, align 4, !noalias !85
  %395 = icmp eq i32 %360, 2
  %396 = select i1 %395, float %388, float 0.000000e+00
  %397 = fadd fast float %349, %396
  store float %397, float* %343, align 4, !noalias !85
  br label %398

; <label>:398                                     ; preds = %387, %237
  %399 = phi float [ %349, %237 ], [ %397, %387 ]
  %400 = phi float [ %339, %237 ], [ %394, %387 ]
  %401 = phi float [ %329, %237 ], [ %391, %387 ]
  %402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %403 = extractvalue %dx.types.CBufRet.f32 %402, 0
  %404 = extractvalue %dx.types.CBufRet.f32 %402, 1
  %405 = extractvalue %dx.types.CBufRet.f32 %402, 2
  %406 = fadd fast float %403, %307
  %407 = fadd fast float %404, %308
  %408 = fadd fast float %405, %309
  %409 = call float @dx.op.dot4.f32(i32 56, float %326, float %327, float %328, float %401, float %406, float %407, float %408, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %410 = call float @dx.op.dot4.f32(i32 56, float %336, float %337, float %338, float %400, float %406, float %407, float %408, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %411 = call float @dx.op.dot4.f32(i32 56, float %346, float %347, float %348, float %399, float %406, float %407, float %408, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %412 = fadd fast float %257, 0xBFB99999A0000000
  %413 = call float @dx.op.unary.f32(i32 7, float %412)  ; Saturate(value)
  %414 = fmul fast float %413, 0x3FF1C71C80000000
  %415 = call float @dx.op.binary.f32(i32 36, float %257, float 0x3FB99999A0000000)  ; FMin(a,b)
  %416 = fsub fast float 1.000000e+00, %414
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fmul fast float %417, %247
  %419 = fmul fast float %417, %248
  %420 = fmul fast float %417, %249
  %421 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %422 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %423 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %424 = fmul fast float %414, %247
  %425 = fmul fast float %414, %248
  %426 = fmul fast float %414, %249
  %427 = fadd fast float %424, %415
  %428 = fadd fast float %425, %415
  %429 = fadd fast float %426, %415
  %430 = call float @dx.op.unary.f32(i32 7, float %427)  ; Saturate(value)
  %431 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %432 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %433 = call float @dx.op.dot3.f32(i32 55, float %421, float %422, float %423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %434 = fmul fast float %433, 1.875000e-01
  %435 = fadd fast float %434, 0x3FE647AE20000000
  %436 = call float @dx.op.unary.f32(i32 7, float %435)  ; Saturate(value)
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = fsub fast float -0.000000e+00, %309
  %440 = call float @dx.op.dot3.f32(i32 55, float %307, float %308, float %309, float %307, float %308, float %309)  ; Dot3(ax,ay,az,bx,by,bz)
  %441 = call float @dx.op.unary.f32(i32 25, float %440)  ; Rsqrt(value)
  %442 = fmul fast float %441, %307
  %443 = fmul fast float %441, %308
  %444 = fmul fast float %441, %309
  %445 = fsub fast float -0.000000e+00, %442
  %446 = fsub fast float -0.000000e+00, %443
  %447 = fsub fast float -0.000000e+00, %444
  %448 = select i1 %132, float 0.000000e+00, float %432
  %449 = call float @dx.op.dot3.f32(i32 55, float %238, float %239, float %240, float %445, float %446, float %447)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = call float @dx.op.unary.f32(i32 7, float %449)  ; Saturate(value)
  %451 = call float @dx.op.dot3.f32(i32 55, float %442, float %443, float %444, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = fmul fast float %451, 2.000000e+00
  %453 = fmul fast float %452, %238
  %454 = fmul fast float %452, %239
  %455 = fmul fast float %452, %240
  %456 = fsub fast float %442, %453
  %457 = fsub fast float %443, %454
  %458 = fsub fast float %444, %455
  %459 = fsub fast float 1.000000e+00, %250
  %460 = call float @dx.op.binary.f32(i32 35, float %459, float 0x3F847AE140000000)  ; FMax(a,b)
  %461 = fmul fast float %460, %460
  %462 = fmul fast float %461, %461
  %463 = call float @dx.op.unary.f32(i32 7, float %450)  ; Saturate(value)
  %464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %41, float 0x3BF7A3BEA0000000, float %462, float %463, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %469 = fadd fast float %467, %307
  %470 = fadd fast float %468, %308
  %471 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %472 = extractvalue %dx.types.CBufRet.i32 %471, 0
  %473 = icmp eq i32 %472, 1
  br i1 %473, label %474, label %509

; <label>:474                                     ; preds = %398
  %475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %476 = extractvalue %dx.types.CBufRet.f32 %475, 0
  %477 = extractvalue %dx.types.CBufRet.f32 %475, 1
  %478 = fsub fast float %469, %476
  %479 = fsub fast float %470, %477
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = extractvalue %dx.types.CBufRet.f32 %480, 1
  %483 = fmul fast float %478, %481
  %484 = fmul fast float %479, %482
  %485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %41, float %483, float %484, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = fcmp fast ogt float %486, 0.000000e+00
  %488 = extractvalue %dx.types.CBufRet.i32 %471, 3
  %489 = icmp ne i32 %488, 0
  %490 = and i1 %487, %489
  br i1 %490, label %491, label %509, !dx.controlflow.hints !90

; <label>:491                                     ; preds = %474
  %492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %493 = extractvalue %dx.types.CBufRet.f32 %492, 0
  %494 = extractvalue %dx.types.CBufRet.f32 %492, 1
  %495 = fsub fast float %469, %493
  %496 = fsub fast float %470, %494
  %497 = fmul fast float %495, %495
  %498 = fmul fast float %496, %496
  %499 = fadd fast float %497, %498
  %500 = uitofp i32 %488 to float
  %501 = fmul fast float %500, %500
  %502 = fcmp fast ogt float %499, %501
  br i1 %502, label %509, label %503

; <label>:503                                     ; preds = %491
  %504 = call float @dx.op.unary.f32(i32 24, float %499)  ; Sqrt(value)
  %505 = fsub fast float %500, %504
  %506 = fmul fast float %505, 0x3F75555560000000
  %507 = call float @dx.op.unary.f32(i32 7, float %506)  ; Saturate(value)
  %508 = call float @dx.op.binary.f32(i32 36, float %507, float %486)  ; FMin(a,b)
  br label %509

; <label>:509                                     ; preds = %503, %491, %474, %398
  %510 = phi float [ 1.000000e+00, %398 ], [ %508, %503 ], [ %486, %474 ], [ 0.000000e+00, %491 ]
  %511 = fcmp fast ogt float %510, 0.000000e+00
  br i1 %511, label %512, label %833, !dx.controlflow.hints !91

; <label>:512                                     ; preds = %509
  %513 = fadd fast float %51, 5.000000e-01
  %514 = fptoui float %513 to i32
  %515 = fadd fast float %58, 5.000000e-01
  %516 = fptoui float %515 to i32
  %517 = shl i32 %516, 3
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = or i32 %517, 4
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = and i32 %522, 16777215
  %524 = add i32 %523, %514
  %525 = shl i32 %524, 5
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = extractvalue %dx.types.ResRet.f32 %526, 1
  %529 = extractvalue %dx.types.ResRet.f32 %526, 2
  %530 = or i32 %525, 16
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = extractvalue %dx.types.ResRet.f32 %531, 2
  %535 = lshr i32 %522, 24
  %536 = and i32 %535, 3
  %537 = add nuw nsw i32 %536, 3
  %538 = shl i32 1, %537
  %539 = lshr i32 %522, 29
  %540 = lshr i32 %522, 23
  %541 = and i32 %540, 56
  %542 = shl nuw nsw i32 %539, 3
  %543 = lshr i32 %519, 16
  %544 = and i32 %519, 65535
  %545 = uitofp i32 %538 to float
  %546 = fmul fast float %545, 1.562500e-02
  %547 = uitofp i32 %543 to float
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 3
  %550 = fmul fast float %549, %547
  %551 = uitofp i32 %541 to float
  %552 = fmul fast float %551, 1.562500e-02
  %553 = uitofp i32 %542 to float
  %554 = fmul fast float %553, 1.562500e-02
  %555 = uitofp i32 %544 to float
  %556 = fmul fast float %549, %555
  %557 = call float @dx.op.unary.f32(i32 7, float %409)  ; Saturate(value)
  %558 = call float @dx.op.unary.f32(i32 7, float %410)  ; Saturate(value)
  %559 = call float @dx.op.unary.f32(i32 7, float %411)  ; Saturate(value)
  %560 = fmul fast float %557, %527
  %561 = fmul fast float %558, %528
  %562 = fmul fast float %559, %529
  %563 = fadd fast float %560, %532
  %564 = fmul fast float %546, %563
  %565 = fadd fast float %564, %552
  %566 = fadd fast float %561, %533
  %567 = fmul fast float %546, %566
  %568 = fadd fast float %567, %554
  %569 = fadd fast float %562, %534
  %570 = fmul fast float %550, %569
  %571 = fadd fast float %570, %556
  %572 = fmul fast float %565, 5.000000e-01
  %573 = fmul fast float %568, 0x3FD5555560000000
  %574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %565, float %568, float %571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %579 = extractvalue %dx.types.CBufRet.f32 %578, 3
  %580 = fmul fast float %579, %575
  %581 = fmul fast float %579, %576
  %582 = fmul fast float %579, %577
  %583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %572, float %573, float %571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %584 = extractvalue %dx.types.ResRet.f32 %583, 0
  %585 = extractvalue %dx.types.ResRet.f32 %583, 1
  %586 = extractvalue %dx.types.ResRet.f32 %583, 2
  %587 = extractvalue %dx.types.ResRet.f32 %583, 3
  %588 = fadd fast float %572, 5.000000e-01
  %589 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %588, float %573, float %571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = extractvalue %dx.types.ResRet.f32 %589, 3
  %594 = fadd fast float %573, 0x3FD5555560000000
  %595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %572, float %594, float %571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = extractvalue %dx.types.ResRet.f32 %595, 3
  %600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %588, float %594, float %571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = extractvalue %dx.types.ResRet.f32 %600, 3
  %605 = fadd fast float %573, 0x3FE5555560000000
  %606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %572, float %605, float %571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = extractvalue %dx.types.ResRet.f32 %606, 3
  %611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %588, float %605, float %571, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = extractvalue %dx.types.ResRet.f32 %611, 3
  %616 = fmul fast float %584, 0x400BB67AE0000000
  %617 = fadd fast float %616, 0xBFFBB67AE0000000
  %618 = fmul fast float %617, %580
  %619 = fmul fast float %585, 0x400BB67AE0000000
  %620 = fadd fast float %619, 0xBFFBB67AE0000000
  %621 = fmul fast float %620, %581
  %622 = fmul fast float %586, 0x400BB67AE0000000
  %623 = fadd fast float %622, 0xBFFBB67AE0000000
  %624 = fmul fast float %623, %582
  %625 = fmul fast float %587, 0x4011E377A0000000
  %626 = fadd fast float %625, 0xC001E377A0000000
  %627 = fmul fast float %626, %580
  %628 = fmul fast float %590, 0x4011E377A0000000
  %629 = fadd fast float %628, 0xC001E377A0000000
  %630 = fmul fast float %629, %581
  %631 = fmul fast float %591, 0x4011E377A0000000
  %632 = fadd fast float %631, 0xC001E377A0000000
  %633 = fmul fast float %632, %582
  %634 = fmul fast float %592, 0x400BB67AE0000000
  %635 = fadd fast float %634, 0xBFFBB67AE0000000
  %636 = fmul fast float %635, %580
  %637 = fmul fast float %593, 0x400BB67AE0000000
  %638 = fadd fast float %637, 0xBFFBB67AE0000000
  %639 = fmul fast float %638, %581
  %640 = fmul fast float %596, 0x400BB67AE0000000
  %641 = fadd fast float %640, 0xBFFBB67AE0000000
  %642 = fmul fast float %641, %582
  %643 = fmul fast float %597, 0x400BB67AE0000000
  %644 = fadd fast float %643, 0xBFFBB67AE0000000
  %645 = fmul fast float %644, %580
  %646 = fmul fast float %598, 0x400BB67AE0000000
  %647 = fadd fast float %646, 0xBFFBB67AE0000000
  %648 = fmul fast float %647, %581
  %649 = fmul fast float %599, 0x400BB67AE0000000
  %650 = fadd fast float %649, 0xBFFBB67AE0000000
  %651 = fmul fast float %650, %582
  %652 = fmul fast float %601, 0x400EFBDEC0000000
  %653 = fadd fast float %652, 0xBFFEFBDEC0000000
  %654 = fmul fast float %653, %580
  %655 = fmul fast float %602, 0x400EFBDEC0000000
  %656 = fadd fast float %655, 0xBFFEFBDEC0000000
  %657 = fmul fast float %656, %581
  %658 = fmul fast float %603, 0x400EFBDEC0000000
  %659 = fadd fast float %658, 0xBFFEFBDEC0000000
  %660 = fmul fast float %659, %582
  %661 = fmul fast float %604, 0x400EFBDEC0000000
  %662 = fadd fast float %661, 0xBFFEFBDEC0000000
  %663 = fmul fast float %662, %580
  %664 = fmul fast float %607, 0x400EFBDEC0000000
  %665 = fadd fast float %664, 0xBFFEFBDEC0000000
  %666 = fmul fast float %665, %581
  %667 = fmul fast float %608, 0x400EFBDEC0000000
  %668 = fadd fast float %667, 0xBFFEFBDEC0000000
  %669 = fmul fast float %668, %582
  %670 = fmul fast float %609, 0x400EFBDEC0000000
  %671 = fadd fast float %670, 0xBFFEFBDEC0000000
  %672 = fmul fast float %671, %580
  %673 = fmul fast float %610, 0x400EFBDEC0000000
  %674 = fadd fast float %673, 0xBFFEFBDEC0000000
  %675 = fmul fast float %674, %581
  %676 = fmul fast float %612, 0x400EFBDEC0000000
  %677 = fadd fast float %676, 0xBFFEFBDEC0000000
  %678 = fmul fast float %677, %582
  %679 = fmul fast float %613, 0x400EFBDEC0000000
  %680 = fadd fast float %679, 0xBFFEFBDEC0000000
  %681 = fmul fast float %680, %580
  %682 = fmul fast float %614, 0x400EFBDEC0000000
  %683 = fadd fast float %682, 0xBFFEFBDEC0000000
  %684 = fmul fast float %683, %581
  %685 = fmul fast float %615, 0x400EFBDEC0000000
  %686 = fadd fast float %685, 0xBFFEFBDEC0000000
  %687 = fmul fast float %686, %582
  %688 = call float @dx.op.dot3.f32(i32 55, float %580, float %581, float %582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = fmul fast float %688, 0x3FD20DD760000000
  %690 = fmul fast float %580, 0x3FD20DD760000000
  %691 = fmul fast float %240, 0x3FD4D8D7C0000000
  %692 = fmul fast float %691, %618
  %693 = fmul fast float %240, %240
  %694 = fmul fast float %693, 0x3FEE471020000000
  %695 = fadd fast float %694, 0xBFD42F6020000000
  %696 = fmul fast float %627, %695
  %697 = fmul fast float %238, 0x3FD4D8D7C0000000
  %698 = fmul fast float %697, %645
  %699 = fmul fast float %239, 0x3FD4D8D7C0000000
  %700 = fmul fast float %699, %636
  %701 = fmul fast float %240, 0xBFF17B1420000000
  %702 = fmul fast float %654, %238
  %703 = fmul fast float %663, %239
  %704 = fmul fast float %238, %238
  %705 = fmul fast float %239, %239
  %706 = fsub fast float %704, %705
  %707 = fmul fast float %706, 0x3FC17B1420000000
  %708 = fmul fast float %707, %672
  %709 = fmul fast float %238, 0x3FD17B1420000000
  %710 = fmul fast float %709, %239
  %711 = fmul fast float %710, %681
  %712 = fadd fast float %703, %702
  %713 = fmul fast float %701, %712
  %714 = fadd fast float %713, %696
  %715 = fmul fast float %714, 2.500000e-01
  %716 = fadd fast float %692, %690
  %717 = fsub fast float %716, %700
  %718 = fsub fast float %717, %698
  %719 = fadd fast float %718, %715
  %720 = fadd fast float %719, %708
  %721 = fadd fast float %720, %711
  %722 = fmul fast float %581, 0x3FD20DD760000000
  %723 = fmul fast float %691, %621
  %724 = fmul fast float %630, %695
  %725 = fmul fast float %697, %648
  %726 = fmul fast float %699, %639
  %727 = fmul fast float %657, %238
  %728 = fmul fast float %666, %239
  %729 = fmul fast float %707, %675
  %730 = fmul fast float %710, %684
  %731 = fadd fast float %728, %727
  %732 = fmul fast float %701, %731
  %733 = fadd fast float %732, %724
  %734 = fmul fast float %733, 2.500000e-01
  %735 = fadd fast float %723, %722
  %736 = fsub fast float %735, %726
  %737 = fsub fast float %736, %725
  %738 = fadd fast float %737, %729
  %739 = fadd fast float %738, %734
  %740 = fadd fast float %739, %730
  %741 = fmul fast float %582, 0x3FD20DD760000000
  %742 = fmul fast float %691, %624
  %743 = fmul fast float %633, %695
  %744 = fmul fast float %697, %651
  %745 = fmul fast float %699, %642
  %746 = fmul fast float %660, %238
  %747 = fmul fast float %669, %239
  %748 = fmul fast float %707, %678
  %749 = fmul fast float %710, %687
  %750 = fadd fast float %747, %746
  %751 = fmul fast float %701, %750
  %752 = fadd fast float %751, %743
  %753 = fmul fast float %752, 2.500000e-01
  %754 = fadd fast float %742, %741
  %755 = fsub fast float %754, %744
  %756 = fsub fast float %755, %745
  %757 = fadd fast float %756, %753
  %758 = fadd fast float %757, %748
  %759 = fadd fast float %758, %749
  %760 = call float @dx.op.binary.f32(i32 35, float %721, float 0.000000e+00)  ; FMax(a,b)
  %761 = call float @dx.op.binary.f32(i32 35, float %740, float 0.000000e+00)  ; FMax(a,b)
  %762 = call float @dx.op.binary.f32(i32 35, float %759, float 0.000000e+00)  ; FMax(a,b)
  %763 = fmul fast float %458, 0x3FD4D8D7C0000000
  %764 = fmul fast float %763, %618
  %765 = fmul fast float %458, %458
  %766 = fmul fast float %765, 0x3FEE471020000000
  %767 = fadd fast float %766, 0xBFD42F6020000000
  %768 = fmul fast float %627, %767
  %769 = fmul fast float %456, 0x3FD4D8D7C0000000
  %770 = fmul fast float %769, %645
  %771 = fmul fast float %457, 0x3FD4D8D7C0000000
  %772 = fmul fast float %771, %636
  %773 = fmul fast float %458, 0xBFF17B1420000000
  %774 = fmul fast float %654, %456
  %775 = fmul fast float %663, %457
  %776 = fmul fast float %456, %456
  %777 = fmul fast float %457, %457
  %778 = fsub fast float %776, %777
  %779 = fmul fast float %778, 0x3FC17B1420000000
  %780 = fmul fast float %779, %672
  %781 = fmul fast float %457, 0x3FD17B1420000000
  %782 = fmul fast float %781, %456
  %783 = fmul fast float %782, %681
  %784 = fadd fast float %775, %774
  %785 = fmul fast float %773, %784
  %786 = fadd fast float %785, %768
  %787 = fmul fast float %786, 2.500000e-01
  %788 = fadd fast float %764, %690
  %789 = fsub fast float %788, %772
  %790 = fsub fast float %789, %770
  %791 = fadd fast float %790, %787
  %792 = fadd fast float %791, %780
  %793 = fadd fast float %792, %783
  %794 = fmul fast float %763, %621
  %795 = fmul fast float %630, %767
  %796 = fmul fast float %769, %648
  %797 = fmul fast float %771, %639
  %798 = fmul fast float %657, %456
  %799 = fmul fast float %666, %457
  %800 = fmul fast float %779, %675
  %801 = fmul fast float %782, %684
  %802 = fadd fast float %799, %798
  %803 = fmul fast float %773, %802
  %804 = fadd fast float %803, %795
  %805 = fmul fast float %804, 2.500000e-01
  %806 = fadd fast float %794, %722
  %807 = fsub fast float %806, %797
  %808 = fsub fast float %807, %796
  %809 = fadd fast float %808, %800
  %810 = fadd fast float %809, %805
  %811 = fadd fast float %810, %801
  %812 = fmul fast float %763, %624
  %813 = fmul fast float %633, %767
  %814 = fmul fast float %769, %651
  %815 = fmul fast float %771, %642
  %816 = fmul fast float %660, %456
  %817 = fmul fast float %669, %457
  %818 = fmul fast float %779, %678
  %819 = fmul fast float %782, %687
  %820 = fadd fast float %817, %816
  %821 = fmul fast float %773, %820
  %822 = fadd fast float %821, %813
  %823 = fmul fast float %822, 2.500000e-01
  %824 = fadd fast float %812, %741
  %825 = fsub fast float %824, %814
  %826 = fsub fast float %825, %815
  %827 = fadd fast float %826, %823
  %828 = fadd fast float %827, %818
  %829 = fadd fast float %828, %819
  %830 = call float @dx.op.binary.f32(i32 35, float %793, float 0.000000e+00)  ; FMax(a,b)
  %831 = call float @dx.op.binary.f32(i32 35, float %811, float 0.000000e+00)  ; FMax(a,b)
  %832 = call float @dx.op.binary.f32(i32 35, float %829, float 0.000000e+00)  ; FMax(a,b)
  br label %833

; <label>:833                                     ; preds = %512, %509
  %834 = phi float [ %830, %512 ], [ 0.000000e+00, %509 ]
  %835 = phi float [ %831, %512 ], [ 0.000000e+00, %509 ]
  %836 = phi float [ %832, %512 ], [ 0.000000e+00, %509 ]
  %837 = phi float [ %760, %512 ], [ 0.000000e+00, %509 ]
  %838 = phi float [ %761, %512 ], [ 0.000000e+00, %509 ]
  %839 = phi float [ %762, %512 ], [ 0.000000e+00, %509 ]
  %840 = phi float [ %689, %512 ], [ 0.000000e+00, %509 ]
  %841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %842 = extractvalue %dx.types.CBufRet.f32 %841, 0
  %843 = fcmp fast ogt float %842, 0.000000e+00
  %844 = and i1 %511, %843
  br i1 %844, label %845, label %1049, !dx.controlflow.hints !92

; <label>:845                                     ; preds = %833
  %846 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %847 = fadd fast float %846, %309
  %848 = fmul fast float %238, 3.200000e+01
  %849 = fmul fast float %239, 3.200000e+01
  %850 = fadd fast float %469, %848
  %851 = fadd fast float %470, %849
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %854 = extractvalue %dx.types.CBufRet.f32 %852, 1
  %855 = fsub fast float %850, %853
  %856 = fsub fast float %851, %854
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %860 = fmul fast float %855, %858
  %861 = fmul fast float %856, %859
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %865 = fsub fast float %469, %863
  %866 = fsub fast float %470, %864
  %867 = fmul fast float %865, %865
  %868 = fmul fast float %866, %866
  %869 = fadd fast float %867, %868
  %870 = call float @dx.op.unary.f32(i32 24, float %869)  ; Sqrt(value)
  %871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %872 = extractvalue %dx.types.CBufRet.f32 %871, 0
  %873 = extractvalue %dx.types.CBufRet.f32 %871, 1
  %874 = fsub fast float %870, %872
  %875 = fdiv fast float %874, %873
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fmul fast float %876, 2.000000e+00
  %878 = fsub fast float 3.000000e+00, %877
  %879 = fmul fast float %876, %876
  %880 = fmul fast float %879, %878
  %881 = fcmp fast oge float %860, 0.000000e+00
  %882 = fcmp fast ole float %860, 1.000000e+00
  %883 = and i1 %882, %881
  %884 = fcmp fast oge float %861, 0.000000e+00
  %885 = and i1 %884, %883
  %886 = fcmp fast ole float %861, 1.000000e+00
  %887 = and i1 %886, %885
  %888 = fcmp fast ogt float %880, 0.000000e+00
  %889 = and i1 %888, %887
  br i1 %889, label %890, label %1013, !dx.controlflow.hints !93

; <label>:890                                     ; preds = %845
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 2
  %893 = extractvalue %dx.types.CBufRet.f32 %891, 3
  %894 = fmul fast float %892, %860
  %895 = fmul fast float %893, %861
  %896 = call float @dx.op.unary.f32(i32 27, float %894)  ; Round_ni(value)
  %897 = call float @dx.op.unary.f32(i32 27, float %895)  ; Round_ni(value)
  %898 = fptosi float %896 to i32
  %899 = fptosi float %897 to i32
  %900 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %898, i32 %899, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = lshr i32 %901, 16
  %903 = icmp eq i32 %902, 65535
  br i1 %903, label %1013, label %904

; <label>:904                                     ; preds = %890
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %907 = fmul fast float %906, %860
  %908 = extractvalue %dx.types.CBufRet.f32 %905, 1
  %909 = fadd fast float %907, %908
  %910 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %911 = fmul fast float %910, %861
  %912 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %913 = fadd fast float %911, %912
  %914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %909, float %913, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = extractvalue %dx.types.ResRet.f32 %914, 1
  %917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %918 = extractvalue %dx.types.CBufRet.f32 %917, 1
  %919 = extractvalue %dx.types.CBufRet.f32 %917, 0
  %920 = fsub fast float %918, %919
  %921 = fmul fast float %920, %915
  %922 = fadd fast float %921, %919
  %923 = extractvalue %dx.types.CBufRet.f32 %917, 3
  %924 = extractvalue %dx.types.CBufRet.f32 %917, 2
  %925 = fsub fast float %923, %924
  %926 = fmul fast float %925, %916
  %927 = fadd fast float %926, %924
  %928 = fsub fast float %847, %922
  %929 = fsub fast float %927, %922
  %930 = fdiv fast float %928, %929
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %933 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %934 = extractvalue %dx.types.CBufRet.f32 %891, 1
  %935 = fmul fast float %933, %860
  %936 = fmul fast float %934, %861
  %937 = fmul fast float %935, 1.250000e-01
  %938 = fmul fast float %936, 1.250000e-01
  %939 = call float @dx.op.unary.f32(i32 27, float %937)  ; Round_ni(value)
  %940 = call float @dx.op.unary.f32(i32 27, float %938)  ; Round_ni(value)
  %941 = fmul fast float %939, 8.000000e+00
  %942 = fmul fast float %940, 8.000000e+00
  %943 = fsub fast float %935, %941
  %944 = fsub fast float %936, %942
  %945 = fadd fast float %943, 5.000000e-01
  %946 = fadd fast float %944, 5.000000e-01
  %947 = and i32 %902, 255
  %948 = lshr i32 %901, 24
  %949 = mul nuw nsw i32 %947, 9
  %950 = uitofp i32 %949 to float
  %951 = mul nuw nsw i32 %948, 9
  %952 = uitofp i32 %951 to float
  %953 = fadd fast float %945, %950
  %954 = fadd fast float %946, %952
  %955 = fdiv fast float %953, %842
  %956 = fdiv fast float %954, %932
  %957 = fmul fast float %931, 4.375000e-01
  %958 = fadd fast float %957, 3.125000e-02
  %959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %955, float %956, float %958, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = extractvalue %dx.types.ResRet.f32 %959, 1
  %962 = extractvalue %dx.types.ResRet.f32 %959, 2
  %963 = fadd fast float %957, 5.312500e-01
  %964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %955, float %956, float %963, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = fmul fast float %965, 2.000000e+00
  %969 = fmul fast float %966, 2.000000e+00
  %970 = fmul fast float %967, 2.000000e+00
  %971 = fadd fast float %968, -1.000000e+00
  %972 = fadd fast float %969, -1.000000e+00
  %973 = fadd fast float %970, -1.000000e+00
  %974 = fmul fast float %971, %971
  %975 = fmul fast float %972, %972
  %976 = fadd fast float %974, %975
  %977 = fmul fast float %973, %973
  %978 = fadd fast float %976, %977
  %979 = call float @dx.op.unary.f32(i32 24, float %978)  ; Sqrt(value)
  %980 = fcmp fast ogt float %979, 0.000000e+00
  br i1 %980, label %981, label %985

; <label>:981                                     ; preds = %904
  %982 = fdiv fast float %971, %979
  %983 = fdiv fast float %972, %979
  %984 = fdiv fast float %973, %979
  br label %985

; <label>:985                                     ; preds = %981, %904
  %986 = phi float [ %982, %981 ], [ 0.000000e+00, %904 ]
  %987 = phi float [ %983, %981 ], [ 0.000000e+00, %904 ]
  %988 = phi float [ %984, %981 ], [ 0.000000e+00, %904 ]
  %989 = call float @dx.op.dot3.f32(i32 55, float %986, float %987, float %988, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %990 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %989)  ; FMax(a,b)
  %991 = fmul fast float %990, 0x400C5BF8A0000000
  %992 = fmul fast float %960, %880
  %993 = fmul fast float %992, %991
  %994 = fmul fast float %961, %880
  %995 = fmul fast float %994, %991
  %996 = fmul fast float %962, %880
  %997 = fmul fast float %996, %991
  %998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %999 = extractvalue %dx.types.CBufRet.f32 %998, 3
  %1000 = fmul fast float %993, %999
  %1001 = fmul fast float %995, %999
  %1002 = fmul fast float %997, %999
  %1003 = fcmp fast ogt float %847, %927
  br i1 %1003, label %1004, label %1013

; <label>:1004                                    ; preds = %985
  %1005 = fmul fast float %929, 0x3FC24924A0000000
  %1006 = fsub fast float %847, %927
  %1007 = fdiv fast float %1006, %1005
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = fsub fast float 1.000000e+00, %1008
  %1010 = fmul fast float %1009, %1000
  %1011 = fmul fast float %1009, %1001
  %1012 = fmul fast float %1009, %1002
  br label %1013

; <label>:1013                                    ; preds = %1004, %985, %890, %845
  %1014 = phi float [ %1012, %1004 ], [ %1002, %985 ], [ 0.000000e+00, %890 ], [ 0.000000e+00, %845 ]
  %1015 = phi float [ %1011, %1004 ], [ %1001, %985 ], [ 0.000000e+00, %890 ], [ 0.000000e+00, %845 ]
  %1016 = phi float [ %1010, %1004 ], [ %1000, %985 ], [ 0.000000e+00, %890 ], [ 0.000000e+00, %845 ]
  %1017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1016)  ; FMax(a,b)
  %1018 = fmul fast float %1017, 0x3FD20DD760000000
  %1019 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1020 = fmul fast float %1019, 0x3FDF454380000000
  %1021 = fmul fast float %1019, %1019
  %1022 = fmul fast float %1021, 0x3FEE471020000000
  %1023 = fadd fast float %1022, 0xBFD42F6020000000
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1017, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1020, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1015)  ; FMax(a,b)
  %1026 = fmul fast float %1025, 0x3FD20DD760000000
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1025, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1020, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1014)  ; FMax(a,b)
  %1029 = fmul fast float %1028, 0x3FD20DD760000000
  %1030 = call float @dx.op.dot3.f32(i32 55, float %1028, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1020, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1031 = call float @dx.op.binary.f32(i32 35, float %1018, float 0.000000e+00)  ; FMax(a,b)
  %1032 = call float @dx.op.binary.f32(i32 35, float %1026, float 0.000000e+00)  ; FMax(a,b)
  %1033 = call float @dx.op.binary.f32(i32 35, float %1029, float 0.000000e+00)  ; FMax(a,b)
  %1034 = call float @dx.op.binary.f32(i32 35, float %1024, float 0.000000e+00)  ; FMax(a,b)
  %1035 = call float @dx.op.binary.f32(i32 35, float %1027, float 0.000000e+00)  ; FMax(a,b)
  %1036 = call float @dx.op.binary.f32(i32 35, float %1030, float 0.000000e+00)  ; FMax(a,b)
  %1037 = fmul fast float %1031, %510
  %1038 = fmul fast float %1032, %510
  %1039 = fmul fast float %1033, %510
  %1040 = fadd fast float %1037, %837
  %1041 = fadd fast float %1038, %838
  %1042 = fadd fast float %1039, %839
  %1043 = fmul fast float %1034, %510
  %1044 = fmul fast float %1035, %510
  %1045 = fmul fast float %1036, %510
  %1046 = fadd fast float %1043, %834
  %1047 = fadd fast float %1044, %835
  %1048 = fadd fast float %1045, %836
  br label %1049

; <label>:1049                                    ; preds = %1013, %833
  %1050 = phi float [ %1046, %1013 ], [ %834, %833 ]
  %1051 = phi float [ %1047, %1013 ], [ %835, %833 ]
  %1052 = phi float [ %1048, %1013 ], [ %836, %833 ]
  %1053 = phi float [ %1040, %1013 ], [ %837, %833 ]
  %1054 = phi float [ %1041, %1013 ], [ %838, %833 ]
  %1055 = phi float [ %1042, %1013 ], [ %839, %833 ]
  %1056 = fcmp fast olt float %510, 1.000000e+00
  br i1 %1056, label %1057, label %1880, !dx.controlflow.hints !94

; <label>:1057                                    ; preds = %1049
  %1058 = extractvalue %dx.types.CBufRet.f32 %466, 2
  %1059 = fadd fast float %1058, %309
  %1060 = fmul fast float %238, 3.200000e+01
  %1061 = fmul fast float %239, 3.200000e+01
  %1062 = fadd fast float %469, %1060
  %1063 = fadd fast float %470, %1061
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = extractvalue %dx.types.CBufRet.f32 %1064, 1
  %1067 = fsub fast float %1062, %1065
  %1068 = fsub fast float %1063, %1066
  %1069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1070 = extractvalue %dx.types.CBufRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.CBufRet.f32 %1069, 1
  %1072 = fmul fast float %1067, %1070
  %1073 = fmul fast float %1068, %1071
  %1074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1075 = extractvalue %dx.types.CBufRet.f32 %1074, 0
  %1076 = fmul fast float %1072, %1075
  %1077 = extractvalue %dx.types.CBufRet.f32 %1074, 1
  %1078 = fadd fast float %1076, %1077
  %1079 = extractvalue %dx.types.CBufRet.f32 %1074, 2
  %1080 = fmul fast float %1079, %1073
  %1081 = extractvalue %dx.types.CBufRet.f32 %1074, 3
  %1082 = fadd fast float %1080, %1081
  %1083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %1078, float %1082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 1
  %1088 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1089 = fsub fast float %1087, %1088
  %1090 = fmul fast float %1089, %1084
  %1091 = fadd fast float %1090, %1088
  %1092 = extractvalue %dx.types.CBufRet.f32 %1086, 3
  %1093 = extractvalue %dx.types.CBufRet.f32 %1086, 2
  %1094 = fsub fast float %1092, %1093
  %1095 = fmul fast float %1094, %1085
  %1096 = fadd fast float %1095, %1093
  %1097 = fsub fast float %1059, %1091
  %1098 = fsub fast float %1096, %1091
  %1099 = fdiv fast float %1097, %1098
  %1100 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = fmul fast float %1102, %1100
  %1104 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1105 = fadd fast float %1103, %1104
  %1106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %1078, float %1082, float %1105, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = extractvalue %dx.types.ResRet.f32 %1106, 1
  %1109 = extractvalue %dx.types.ResRet.f32 %1106, 2
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 0
  %1112 = extractvalue %dx.types.CBufRet.f32 %1110, 1
  %1113 = extractvalue %dx.types.CBufRet.f32 %1110, 2
  %1114 = fmul fast float %1111, %1107
  %1115 = fmul fast float %1112, %1108
  %1116 = fmul fast float %1113, %1109
  %1117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1118 = extractvalue %dx.types.CBufRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.CBufRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.CBufRet.f32 %1117, 2
  %1121 = fadd fast float %1114, %1118
  %1122 = fadd fast float %1115, %1119
  %1123 = fadd fast float %1116, %1120
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = fmul fast float %1125, %1072
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1128 = fadd fast float %1126, %1127
  %1129 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1130 = fmul fast float %1129, %1073
  %1131 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1132 = fadd fast float %1130, %1131
  %1133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1134 = extractvalue %dx.types.CBufRet.f32 %1133, 0
  %1135 = extractvalue %dx.types.CBufRet.f32 %1133, 1
  %1136 = extractvalue %dx.types.CBufRet.f32 %1133, 2
  %1137 = extractvalue %dx.types.CBufRet.f32 %1133, 3
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = extractvalue %dx.types.CBufRet.f32 %1138, 1
  %1141 = extractvalue %dx.types.CBufRet.f32 %1138, 2
  %1142 = extractvalue %dx.types.CBufRet.f32 %1138, 3
  %1143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1128, float %1132, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = extractvalue %dx.types.ResRet.f32 %1143, 3
  %1148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1128, float %1132, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  %1150 = extractvalue %dx.types.ResRet.f32 %1148, 1
  %1151 = extractvalue %dx.types.ResRet.f32 %1148, 2
  %1152 = extractvalue %dx.types.ResRet.f32 %1148, 3
  %1153 = fmul fast float %1144, %1121
  %1154 = fmul fast float %1149, %1121
  %1155 = fmul fast float %1151, %1121
  %1156 = fmul fast float %1147, %1121
  %1157 = fadd fast float %1153, %1134
  %1158 = fadd fast float %1154, %1135
  %1159 = fadd fast float %1155, %1136
  %1160 = fadd fast float %1156, %1137
  %1161 = fmul fast float %1145, %1121
  %1162 = fmul fast float %1150, %1121
  %1163 = fadd fast float %1161, %1139
  %1164 = fadd fast float %1162, %1140
  %1165 = fmul fast float %1146, %1121
  %1166 = fmul fast float %1152, %1121
  %1167 = fadd fast float %1165, %1141
  %1168 = fadd fast float %1166, %1142
  %1169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1128, float %1132, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1173 = extractvalue %dx.types.ResRet.f32 %1169, 3
  %1174 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1128, float %1132, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = extractvalue %dx.types.ResRet.f32 %1174, 1
  %1177 = extractvalue %dx.types.ResRet.f32 %1174, 2
  %1178 = extractvalue %dx.types.ResRet.f32 %1174, 3
  %1179 = fmul fast float %1170, %1122
  %1180 = fmul fast float %1175, %1122
  %1181 = fmul fast float %1177, %1122
  %1182 = fmul fast float %1173, %1122
  %1183 = fadd fast float %1157, %1179
  %1184 = fadd fast float %1158, %1180
  %1185 = fadd fast float %1159, %1181
  %1186 = fadd fast float %1160, %1182
  %1187 = fmul fast float %1171, %1122
  %1188 = fmul fast float %1176, %1122
  %1189 = fadd fast float %1163, %1187
  %1190 = fadd fast float %1164, %1188
  %1191 = fmul fast float %1172, %1122
  %1192 = fmul fast float %1178, %1122
  %1193 = fadd fast float %1167, %1191
  %1194 = fadd fast float %1168, %1192
  %1195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1128, float %1132, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.ResRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.ResRet.f32 %1195, 2
  %1199 = extractvalue %dx.types.ResRet.f32 %1195, 3
  %1200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1128, float %1132, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1205 = fmul fast float %1196, %1123
  %1206 = fmul fast float %1201, %1123
  %1207 = fmul fast float %1203, %1123
  %1208 = fmul fast float %1199, %1123
  %1209 = fadd fast float %1183, %1205
  %1210 = fadd fast float %1184, %1206
  %1211 = fadd fast float %1185, %1207
  %1212 = fadd fast float %1186, %1208
  %1213 = fmul fast float %1197, %1123
  %1214 = fmul fast float %1202, %1123
  %1215 = fadd fast float %1189, %1213
  %1216 = fadd fast float %1190, %1214
  %1217 = fmul fast float %1198, %1123
  %1218 = fmul fast float %1204, %1123
  %1219 = fadd fast float %1193, %1217
  %1220 = fadd fast float %1194, %1218
  %1221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1222 = extractvalue %dx.types.CBufRet.f32 %1221, 0
  %1223 = fsub fast float %469, %1222
  %1224 = fsub fast float %1065, %469
  %1225 = call float @dx.op.binary.f32(i32 35, float %1224, float %1223)  ; FMax(a,b)
  %1226 = extractvalue %dx.types.CBufRet.f32 %1221, 1
  %1227 = fsub fast float %470, %1226
  %1228 = fsub fast float %1066, %470
  %1229 = call float @dx.op.binary.f32(i32 35, float %1228, float %1227)  ; FMax(a,b)
  %1230 = call float @dx.op.binary.f32(i32 35, float %1225, float %1229)  ; FMax(a,b)
  %1231 = extractvalue %dx.types.CBufRet.f32 %1069, 3
  %1232 = fmul fast float %1231, %1230
  %1233 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.CBufRet.f32 %1234, 1
  %1237 = extractvalue %dx.types.CBufRet.f32 %1234, 2
  %1238 = extractvalue %dx.types.CBufRet.f32 %1234, 3
  %1239 = fsub fast float %1235, %1209
  %1240 = fsub fast float %1236, %1210
  %1241 = fsub fast float %1237, %1211
  %1242 = fsub fast float %1238, %1212
  %1243 = fmul fast float %1239, %1233
  %1244 = fmul fast float %1240, %1233
  %1245 = fmul fast float %1241, %1233
  %1246 = fmul fast float %1242, %1233
  %1247 = fadd fast float %1243, %1209
  %1248 = fadd fast float %1244, %1210
  %1249 = fadd fast float %1245, %1211
  %1250 = fadd fast float %1246, %1212
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = fsub fast float %1252, %1215
  %1255 = fsub fast float %1253, %1216
  %1256 = fmul fast float %1254, %1233
  %1257 = fmul fast float %1255, %1233
  %1258 = fadd fast float %1256, %1215
  %1259 = fadd fast float %1257, %1216
  %1260 = extractvalue %dx.types.CBufRet.f32 %1251, 2
  %1261 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1262 = fsub fast float %1260, %1219
  %1263 = fsub fast float %1261, %1220
  %1264 = fmul fast float %1262, %1233
  %1265 = fmul fast float %1263, %1233
  %1266 = fadd fast float %1264, %1219
  %1267 = fadd fast float %1265, %1220
  %1268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1268, 0
  %1270 = fmul fast float %1269, %1247
  %1271 = fmul fast float %1269, %1248
  %1272 = fmul fast float %1269, %1249
  %1273 = fmul fast float %1269, %1250
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = fmul fast float %1275, %1258
  %1277 = fmul fast float %1275, %1259
  %1278 = fadd fast float %1276, %1270
  %1279 = fadd fast float %1277, %1272
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1282 = fmul fast float %1281, %1266
  %1283 = fmul fast float %1281, %1267
  %1284 = fadd fast float %1278, %1282
  %1285 = fadd fast float %1279, %1283
  %1286 = extractvalue %dx.types.CBufRet.f32 %1268, 1
  %1287 = fmul fast float %1286, %1247
  %1288 = fmul fast float %1286, %1248
  %1289 = fmul fast float %1286, %1249
  %1290 = fmul fast float %1286, %1250
  %1291 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1292 = fmul fast float %1291, %1258
  %1293 = fmul fast float %1291, %1259
  %1294 = fadd fast float %1292, %1287
  %1295 = fadd fast float %1293, %1289
  %1296 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1297 = fmul fast float %1296, %1266
  %1298 = fmul fast float %1296, %1267
  %1299 = fadd fast float %1294, %1297
  %1300 = fadd fast float %1295, %1298
  %1301 = extractvalue %dx.types.CBufRet.f32 %1268, 2
  %1302 = fmul fast float %1301, %1247
  %1303 = fmul fast float %1301, %1248
  %1304 = fmul fast float %1301, %1249
  %1305 = fmul fast float %1301, %1250
  %1306 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1307 = fmul fast float %1306, %1258
  %1308 = fmul fast float %1306, %1259
  %1309 = fadd fast float %1307, %1302
  %1310 = fadd fast float %1308, %1304
  %1311 = extractvalue %dx.types.CBufRet.f32 %1280, 2
  %1312 = fmul fast float %1311, %1266
  %1313 = fmul fast float %1311, %1267
  %1314 = fadd fast float %1309, %1312
  %1315 = fadd fast float %1310, %1313
  %1316 = fmul fast float %1303, %1303
  %1317 = fmul fast float %1315, %1315
  %1318 = fmul fast float %1305, %1305
  %1319 = fadd fast float %1318, %1316
  %1320 = fadd fast float %1319, %1317
  %1321 = call float @dx.op.unary.f32(i32 24, float %1320)  ; Sqrt(value)
  %1322 = fcmp fast ugt float %1321, 0.000000e+00
  br i1 %1322, label %1323, label %1338

; <label>:1323                                    ; preds = %1057
  %1324 = fsub fast float -0.000000e+00, %1305
  %1325 = fdiv fast float %1324, %1321
  %1326 = fsub fast float -0.000000e+00, %1303
  %1327 = fdiv fast float %1326, %1321
  %1328 = fdiv fast float %1315, %1321
  %1329 = fmul fast float %1314, 0x3FE279A760000000
  %1330 = fmul fast float %1327, %1303
  %1331 = fmul fast float %1328, %1315
  %1332 = fmul fast float %1325, %1305
  %1333 = fadd fast float %1330, %1332
  %1334 = fsub fast float %1333, %1331
  %1335 = call float @dx.op.unary.f32(i32 6, float %1334)  ; FAbs(value)
  %1336 = fadd fast float %1335, 0x3DDB7CDFE0000000
  %1337 = fdiv fast float %1329, %1336
  br label %1338

; <label>:1338                                    ; preds = %1323, %1057
  %1339 = phi float [ %1337, %1323 ], [ 1.000000e+00, %1057 ]
  %1340 = fmul fast float %1288, %1288
  %1341 = fmul fast float %1300, %1300
  %1342 = fmul fast float %1290, %1290
  %1343 = fadd fast float %1342, %1340
  %1344 = fadd fast float %1343, %1341
  %1345 = call float @dx.op.unary.f32(i32 24, float %1344)  ; Sqrt(value)
  %1346 = fcmp fast ugt float %1345, 0.000000e+00
  br i1 %1346, label %1347, label %1362

; <label>:1347                                    ; preds = %1338
  %1348 = fsub fast float -0.000000e+00, %1290
  %1349 = fdiv fast float %1348, %1345
  %1350 = fsub fast float -0.000000e+00, %1288
  %1351 = fdiv fast float %1350, %1345
  %1352 = fdiv fast float %1300, %1345
  %1353 = fmul fast float %1299, 0x3FE279A760000000
  %1354 = fmul fast float %1351, %1288
  %1355 = fmul fast float %1352, %1300
  %1356 = fmul fast float %1349, %1290
  %1357 = fadd fast float %1354, %1356
  %1358 = fsub fast float %1357, %1355
  %1359 = call float @dx.op.unary.f32(i32 6, float %1358)  ; FAbs(value)
  %1360 = fadd fast float %1359, 0x3DDB7CDFE0000000
  %1361 = fdiv fast float %1353, %1360
  br label %1362

; <label>:1362                                    ; preds = %1347, %1338
  %1363 = phi float [ %1361, %1347 ], [ 1.000000e+00, %1338 ]
  %1364 = call float @dx.op.binary.f32(i32 36, float %1363, float %1339)  ; FMin(a,b)
  %1365 = fmul fast float %1271, %1271
  %1366 = fmul fast float %1285, %1285
  %1367 = fmul fast float %1273, %1273
  %1368 = fadd fast float %1367, %1365
  %1369 = fadd fast float %1368, %1366
  %1370 = call float @dx.op.unary.f32(i32 24, float %1369)  ; Sqrt(value)
  %1371 = fcmp fast ugt float %1370, 0.000000e+00
  br i1 %1371, label %1372, label %1387

; <label>:1372                                    ; preds = %1362
  %1373 = fsub fast float -0.000000e+00, %1273
  %1374 = fdiv fast float %1373, %1370
  %1375 = fsub fast float -0.000000e+00, %1271
  %1376 = fdiv fast float %1375, %1370
  %1377 = fdiv fast float %1285, %1370
  %1378 = fmul fast float %1284, 0x3FE279A760000000
  %1379 = fmul fast float %1376, %1271
  %1380 = fmul fast float %1377, %1285
  %1381 = fmul fast float %1374, %1273
  %1382 = fadd fast float %1379, %1381
  %1383 = fsub fast float %1382, %1380
  %1384 = call float @dx.op.unary.f32(i32 6, float %1383)  ; FAbs(value)
  %1385 = fadd fast float %1384, 0x3DDB7CDFE0000000
  %1386 = fdiv fast float %1378, %1385
  br label %1387

; <label>:1387                                    ; preds = %1372, %1362
  %1388 = phi float [ %1386, %1372 ], [ 1.000000e+00, %1362 ]
  %1389 = call float @dx.op.binary.f32(i32 36, float %1388, float %1364)  ; FMin(a,b)
  %1390 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1391 = fcmp fast olt float %1390, 1.000000e+00
  br i1 %1391, label %1392, label %1402

; <label>:1392                                    ; preds = %1387
  %1393 = fmul fast float %1390, %1271
  %1394 = fmul fast float %1390, %1285
  %1395 = fmul fast float %1390, %1273
  %1396 = fmul fast float %1390, %1288
  %1397 = fmul fast float %1390, %1300
  %1398 = fmul fast float %1390, %1290
  %1399 = fmul fast float %1390, %1303
  %1400 = fmul fast float %1390, %1315
  %1401 = fmul fast float %1390, %1305
  br label %1402

; <label>:1402                                    ; preds = %1392, %1387
  %1403 = phi float [ %1399, %1392 ], [ %1303, %1387 ]
  %1404 = phi float [ %1400, %1392 ], [ %1315, %1387 ]
  %1405 = phi float [ %1401, %1392 ], [ %1305, %1387 ]
  %1406 = phi float [ %1396, %1392 ], [ %1288, %1387 ]
  %1407 = phi float [ %1397, %1392 ], [ %1300, %1387 ]
  %1408 = phi float [ %1398, %1392 ], [ %1290, %1387 ]
  %1409 = phi float [ %1393, %1392 ], [ %1271, %1387 ]
  %1410 = phi float [ %1394, %1392 ], [ %1285, %1387 ]
  %1411 = phi float [ %1395, %1392 ], [ %1273, %1387 ]
  %1412 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1284)  ; FMax(a,b)
  %1413 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1299)  ; FMax(a,b)
  %1414 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1314)  ; FMax(a,b)
  %1415 = fcmp fast oge float %1072, 0.000000e+00
  %1416 = and i1 %1415, %843
  %1417 = fcmp fast ole float %1072, 1.000000e+00
  %1418 = and i1 %1417, %1416
  %1419 = fcmp fast oge float %1073, 0.000000e+00
  %1420 = and i1 %1419, %1418
  %1421 = fcmp fast ole float %1073, 1.000000e+00
  %1422 = and i1 %1421, %1420
  br i1 %1422, label %1423, label %1568, !dx.controlflow.hints !95

; <label>:1423                                    ; preds = %1402
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1426 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1427 = fmul fast float %1425, %1072
  %1428 = fmul fast float %1426, %1073
  %1429 = call float @dx.op.unary.f32(i32 27, float %1427)  ; Round_ni(value)
  %1430 = call float @dx.op.unary.f32(i32 27, float %1428)  ; Round_ni(value)
  %1431 = fptosi float %1429 to i32
  %1432 = fptosi float %1430 to i32
  %1433 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %1431, i32 %1432, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 65535
  %1436 = lshr i32 %1434, 16
  %1437 = icmp eq i32 %1435, 65535
  br i1 %1437, label %1474, label %1438

; <label>:1438                                    ; preds = %1423
  %1439 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %1440 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1441 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1442 = fmul fast float %1440, %1072
  %1443 = fmul fast float %1441, %1073
  %1444 = fmul fast float %1442, 1.250000e-01
  %1445 = fmul fast float %1443, 1.250000e-01
  %1446 = call float @dx.op.unary.f32(i32 27, float %1444)  ; Round_ni(value)
  %1447 = call float @dx.op.unary.f32(i32 27, float %1445)  ; Round_ni(value)
  %1448 = fmul fast float %1446, 8.000000e+00
  %1449 = fmul fast float %1447, 8.000000e+00
  %1450 = and i32 %1434, 255
  %1451 = lshr i32 %1434, 8
  %1452 = and i32 %1451, 255
  %1453 = mul nuw nsw i32 %1450, 9
  %1454 = uitofp i32 %1453 to float
  %1455 = mul nuw nsw i32 %1452, 9
  %1456 = uitofp i32 %1455 to float
  %1457 = fadd fast float %1454, 5.000000e-01
  %1458 = fadd fast float %1457, %1442
  %1459 = fsub fast float %1458, %1448
  %1460 = fadd fast float %1456, 5.000000e-01
  %1461 = fadd fast float %1460, %1443
  %1462 = fsub fast float %1461, %1449
  %1463 = fdiv fast float %1459, %842
  %1464 = fdiv fast float %1462, %1439
  %1465 = fmul fast float %1100, 4.375000e-01
  %1466 = fadd fast float %1465, 3.125000e-02
  %1467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %1463, float %1464, float %1466, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = extractvalue %dx.types.ResRet.f32 %1467, 1
  %1470 = extractvalue %dx.types.ResRet.f32 %1467, 2
  %1471 = fadd fast float %1468, %1412
  %1472 = fadd fast float %1469, %1413
  %1473 = fadd fast float %1470, %1414
  br label %1474

; <label>:1474                                    ; preds = %1438, %1423
  %1475 = phi float [ %1473, %1438 ], [ %1414, %1423 ]
  %1476 = phi float [ %1472, %1438 ], [ %1413, %1423 ]
  %1477 = phi float [ %1471, %1438 ], [ %1412, %1423 ]
  %1478 = icmp eq i32 %1436, 65535
  br i1 %1478, label %1568, label %1479

; <label>:1479                                    ; preds = %1474
  %1480 = extractvalue %dx.types.CBufRet.f32 %841, 1
  %1481 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1482 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1483 = fmul fast float %1481, %1072
  %1484 = fmul fast float %1482, %1073
  %1485 = fmul fast float %1483, 1.250000e-01
  %1486 = fmul fast float %1484, 1.250000e-01
  %1487 = call float @dx.op.unary.f32(i32 27, float %1485)  ; Round_ni(value)
  %1488 = call float @dx.op.unary.f32(i32 27, float %1486)  ; Round_ni(value)
  %1489 = fmul fast float %1487, 8.000000e+00
  %1490 = fmul fast float %1488, 8.000000e+00
  %1491 = fsub fast float %1483, %1489
  %1492 = fsub fast float %1484, %1490
  %1493 = fadd fast float %1491, 5.000000e-01
  %1494 = fadd fast float %1492, 5.000000e-01
  %1495 = and i32 %1436, 255
  %1496 = lshr i32 %1434, 24
  %1497 = mul nuw nsw i32 %1495, 9
  %1498 = uitofp i32 %1497 to float
  %1499 = mul nuw nsw i32 %1496, 9
  %1500 = uitofp i32 %1499 to float
  %1501 = fadd fast float %1493, %1498
  %1502 = fadd fast float %1494, %1500
  %1503 = fdiv fast float %1501, %842
  %1504 = fdiv fast float %1502, %1480
  %1505 = fmul fast float %1100, 4.375000e-01
  %1506 = fadd fast float %1505, 3.125000e-02
  %1507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %1503, float %1504, float %1506, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = fadd fast float %1505, 5.312500e-01
  %1512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %1503, float %1504, float %1511, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = fmul fast float %1513, 2.000000e+00
  %1517 = fmul fast float %1514, 2.000000e+00
  %1518 = fmul fast float %1515, 2.000000e+00
  %1519 = fadd fast float %1516, -1.000000e+00
  %1520 = fadd fast float %1517, -1.000000e+00
  %1521 = fadd fast float %1518, -1.000000e+00
  %1522 = fmul fast float %1519, %1519
  %1523 = fmul fast float %1520, %1520
  %1524 = fadd fast float %1522, %1523
  %1525 = fmul fast float %1521, %1521
  %1526 = fadd fast float %1524, %1525
  %1527 = call float @dx.op.unary.f32(i32 24, float %1526)  ; Sqrt(value)
  %1528 = fcmp fast ogt float %1527, 0.000000e+00
  br i1 %1528, label %1529, label %1533

; <label>:1529                                    ; preds = %1479
  %1530 = fdiv fast float %1519, %1527
  %1531 = fdiv fast float %1520, %1527
  %1532 = fdiv fast float %1521, %1527
  br label %1533

; <label>:1533                                    ; preds = %1529, %1479
  %1534 = phi float [ %1530, %1529 ], [ 0.000000e+00, %1479 ]
  %1535 = phi float [ %1531, %1529 ], [ 0.000000e+00, %1479 ]
  %1536 = phi float [ %1532, %1529 ], [ 0.000000e+00, %1479 ]
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.CBufRet.f32 %1537, 1
  %1540 = fsub fast float %469, %1538
  %1541 = fsub fast float %470, %1539
  %1542 = fmul fast float %1540, %1540
  %1543 = fmul fast float %1541, %1541
  %1544 = fadd fast float %1542, %1543
  %1545 = call float @dx.op.unary.f32(i32 24, float %1544)  ; Sqrt(value)
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 0
  %1548 = extractvalue %dx.types.CBufRet.f32 %1546, 1
  %1549 = fsub fast float %1545, %1547
  %1550 = fdiv fast float %1549, %1548
  %1551 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  %1552 = fmul fast float %1551, 2.000000e+00
  %1553 = fsub fast float 3.000000e+00, %1552
  %1554 = fmul fast float %1551, %1551
  %1555 = fmul fast float %1554, %1553
  %1556 = call float @dx.op.dot3.f32(i32 55, float %1534, float %1535, float %1536, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %1557 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1556)  ; FMax(a,b)
  %1558 = fmul fast float %1557, 0x400C5BF8A0000000
  %1559 = fmul fast float %1555, %1508
  %1560 = fmul fast float %1559, %1558
  %1561 = fadd fast float %1560, %1477
  %1562 = fmul fast float %1555, %1509
  %1563 = fmul fast float %1562, %1558
  %1564 = fadd fast float %1563, %1476
  %1565 = fmul fast float %1555, %1510
  %1566 = fmul fast float %1565, %1558
  %1567 = fadd fast float %1566, %1475
  br label %1568

; <label>:1568                                    ; preds = %1533, %1474, %1402
  %1569 = phi float [ %1567, %1533 ], [ %1475, %1474 ], [ %1414, %1402 ]
  %1570 = phi float [ %1564, %1533 ], [ %1476, %1474 ], [ %1413, %1402 ]
  %1571 = phi float [ %1561, %1533 ], [ %1477, %1474 ], [ %1412, %1402 ]
  %1572 = fcmp fast ogt float %1059, %1096
  %1573 = and i1 %1415, %1572
  %1574 = and i1 %1417, %1573
  %1575 = and i1 %1419, %1574
  %1576 = and i1 %1421, %1575
  br i1 %1576, label %1577, label %1634, !dx.controlflow.hints !96

; <label>:1577                                    ; preds = %1568
  %1578 = fmul fast float %1098, 0x3FC24924A0000000
  %1579 = fsub fast float %1059, %1096
  %1580 = fdiv fast float %1579, %1578
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 0
  %1584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1585 = extractvalue %dx.types.CBufRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.CBufRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.CBufRet.f32 %1584, 2
  %1588 = fsub fast float %1583, %1571
  %1589 = fsub fast float %1585, %1409
  %1590 = fsub fast float %1586, %1410
  %1591 = fsub fast float %1587, %1411
  %1592 = fmul fast float %1588, %1581
  %1593 = fmul fast float %1589, %1581
  %1594 = fmul fast float %1590, %1581
  %1595 = fmul fast float %1591, %1581
  %1596 = fadd fast float %1592, %1571
  %1597 = fadd fast float %1593, %1409
  %1598 = fadd fast float %1594, %1410
  %1599 = fadd fast float %1595, %1411
  %1600 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 0
  %1603 = extractvalue %dx.types.CBufRet.f32 %1601, 1
  %1604 = extractvalue %dx.types.CBufRet.f32 %1601, 2
  %1605 = fsub fast float %1600, %1570
  %1606 = fsub fast float %1602, %1406
  %1607 = fsub fast float %1603, %1407
  %1608 = fsub fast float %1604, %1408
  %1609 = fmul fast float %1605, %1581
  %1610 = fmul fast float %1606, %1581
  %1611 = fmul fast float %1607, %1581
  %1612 = fmul fast float %1608, %1581
  %1613 = fadd fast float %1609, %1570
  %1614 = fadd fast float %1610, %1406
  %1615 = fadd fast float %1611, %1407
  %1616 = fadd fast float %1612, %1408
  %1617 = extractvalue %dx.types.CBufRet.f32 %1582, 2
  %1618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1619 = extractvalue %dx.types.CBufRet.f32 %1618, 0
  %1620 = extractvalue %dx.types.CBufRet.f32 %1618, 1
  %1621 = extractvalue %dx.types.CBufRet.f32 %1618, 2
  %1622 = fsub fast float %1617, %1569
  %1623 = fsub fast float %1619, %1403
  %1624 = fsub fast float %1620, %1404
  %1625 = fsub fast float %1621, %1405
  %1626 = fmul fast float %1622, %1581
  %1627 = fmul fast float %1623, %1581
  %1628 = fmul fast float %1624, %1581
  %1629 = fmul fast float %1625, %1581
  %1630 = fadd fast float %1626, %1569
  %1631 = fadd fast float %1627, %1403
  %1632 = fadd fast float %1628, %1404
  %1633 = fadd fast float %1629, %1405
  br label %1634

; <label>:1634                                    ; preds = %1577, %1568
  %1635 = phi float [ %1630, %1577 ], [ %1569, %1568 ]
  %1636 = phi float [ %1631, %1577 ], [ %1403, %1568 ]
  %1637 = phi float [ %1632, %1577 ], [ %1404, %1568 ]
  %1638 = phi float [ %1633, %1577 ], [ %1405, %1568 ]
  %1639 = phi float [ %1613, %1577 ], [ %1570, %1568 ]
  %1640 = phi float [ %1614, %1577 ], [ %1406, %1568 ]
  %1641 = phi float [ %1615, %1577 ], [ %1407, %1568 ]
  %1642 = phi float [ %1616, %1577 ], [ %1408, %1568 ]
  %1643 = phi float [ %1596, %1577 ], [ %1571, %1568 ]
  %1644 = phi float [ %1597, %1577 ], [ %1409, %1568 ]
  %1645 = phi float [ %1598, %1577 ], [ %1410, %1568 ]
  %1646 = phi float [ %1599, %1577 ], [ %1411, %1568 ]
  %1647 = extractvalue %dx.types.CBufRet.f32 %1221, 3
  %1648 = fmul fast float %1647, %1643
  %1649 = fmul fast float %1647, %1639
  %1650 = fmul fast float %1647, %1635
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 3
  %1653 = fmul fast float %1648, %1652
  %1654 = fmul fast float %1649, %1652
  %1655 = fmul fast float %1650, %1652
  %1656 = call float @dx.op.dot3.f32(i32 55, float %1653, float %1654, float %1655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1657 = fmul fast float %1656, 0x3FD20DD760000000
  %1658 = fmul fast float %1644, 1.500000e+00
  %1659 = fmul fast float %1658, %1647
  %1660 = fmul fast float %1659, %1652
  %1661 = fmul fast float %1645, 1.500000e+00
  %1662 = fmul fast float %1661, %1647
  %1663 = fmul fast float %1662, %1652
  %1664 = fmul fast float %1646, 1.500000e+00
  %1665 = fmul fast float %1664, %1647
  %1666 = fmul fast float %1665, %1652
  %1667 = fmul fast float %1640, 1.500000e+00
  %1668 = fmul fast float %1667, %1647
  %1669 = fmul fast float %1668, %1652
  %1670 = fmul fast float %1641, 1.500000e+00
  %1671 = fmul fast float %1670, %1647
  %1672 = fmul fast float %1671, %1652
  %1673 = fmul fast float %1642, 1.500000e+00
  %1674 = fmul fast float %1673, %1647
  %1675 = fmul fast float %1674, %1652
  %1676 = fmul fast float %1636, 1.500000e+00
  %1677 = fmul fast float %1676, %1647
  %1678 = fmul fast float %1677, %1652
  %1679 = fmul fast float %1637, 1.500000e+00
  %1680 = fmul fast float %1679, %1647
  %1681 = fmul fast float %1680, %1652
  %1682 = fmul fast float %1638, 1.500000e+00
  %1683 = fmul fast float %1682, %1647
  %1684 = fmul fast float %1683, %1652
  %1685 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1653)  ; FMax(a,b)
  %1686 = call float @dx.op.dot3.f32(i32 55, float %1660, float %1663, float %1666, float %1660, float %1663, float %1666)  ; Dot3(ax,ay,az,bx,by,bz)
  %1687 = fcmp fast oeq float %1686, 0.000000e+00
  %1688 = fcmp fast oeq float %1685, 0.000000e+00
  %1689 = or i1 %1688, %1687
  br i1 %1689, label %1719, label %1690

; <label>:1690                                    ; preds = %1634
  %1691 = fsub fast float -0.000000e+00, %1666
  %1692 = fsub fast float -0.000000e+00, %1660
  %1693 = call float @dx.op.unary.f32(i32 24, float %1686)  ; Sqrt(value)
  %1694 = fdiv fast float %1693, %1685
  %1695 = fcmp fast ogt float %1694, 0x3FFB6F8900000000
  %1696 = select i1 %1695, float 0x3FFB6F8900000000, float %1694
  %1697 = fmul fast float %1696, 0x3FE8A23460000000
  %1698 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1699 = call float @dx.op.binary.f32(i32 35, float %1696, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1700 = fmul fast float %1698, %1685
  %1701 = fmul fast float %1699, 0x3FF279A740000000
  %1702 = fadd fast float %1701, -1.000000e+00
  %1703 = call float @dx.op.dot3.f32(i32 55, float %1691, float %1692, float %1663, float %1691, float %1692, float %1663)  ; Dot3(ax,ay,az,bx,by,bz)
  %1704 = call float @dx.op.unary.f32(i32 25, float %1703)  ; Rsqrt(value)
  %1705 = fmul fast float %1704, %1691
  %1706 = fmul fast float %1704, %1692
  %1707 = fmul fast float %1704, %1663
  %1708 = fmul fast float %1702, %1702
  %1709 = fsub fast float 1.000000e+00, %1708
  %1710 = fmul fast float %1699, 0x40005F8BE0000000
  %1711 = fsub fast float 0x400C5BF8A0000000, %1710
  %1712 = fdiv fast float %1700, %1711
  %1713 = fmul fast float %1712, 0x3FEE31C3C0000000
  %1714 = fmul fast float %1713, %1709
  %1715 = fmul fast float %1699, 0x3FDACB7480000000
  %1716 = fadd fast float %1715, 0xBFD7347680000000
  %1717 = fmul fast float %1716, %1712
  %1718 = fmul fast float %1717, %1709
  br label %1719

; <label>:1719                                    ; preds = %1690, %1634
  %1720 = phi float [ %1705, %1690 ], [ 0.000000e+00, %1634 ]
  %1721 = phi float [ %1706, %1690 ], [ 0.000000e+00, %1634 ]
  %1722 = phi float [ %1707, %1690 ], [ 0.000000e+00, %1634 ]
  %1723 = phi float [ %1714, %1690 ], [ 0.000000e+00, %1634 ]
  %1724 = phi float [ %1718, %1690 ], [ 0.000000e+00, %1634 ]
  %1725 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1721, float %1722, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %1726 = fmul fast float %1725, %1725
  %1727 = fmul fast float %1726, 0x3FEE471020000000
  %1728 = fadd fast float %1727, 0xBFD42F6020000000
  %1729 = fmul fast float %1685, 0x3FD20DD760000000
  %1730 = fmul fast float %1728, %1724
  %1731 = fmul fast float %1723, 0x3FDF454380000000
  %1732 = fmul fast float %1731, %1725
  %1733 = fadd fast float %1732, %1729
  %1734 = fadd fast float %1733, %1730
  %1735 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1721, float %1722, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1736 = fmul fast float %1735, 0x3FDF454380000000
  %1737 = fmul fast float %1735, %1735
  %1738 = fmul fast float %1737, 0x3FEE471020000000
  %1739 = fadd fast float %1738, 0xBFD42F6020000000
  %1740 = call float @dx.op.dot3.f32(i32 55, float %1685, float %1723, float %1724, float 0x3FD20DD760000000, float %1736, float %1739)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1654)  ; FMax(a,b)
  %1742 = call float @dx.op.dot3.f32(i32 55, float %1669, float %1672, float %1675, float %1669, float %1672, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1743 = fcmp fast oeq float %1742, 0.000000e+00
  %1744 = fcmp fast oeq float %1741, 0.000000e+00
  %1745 = or i1 %1744, %1743
  br i1 %1745, label %1775, label %1746

; <label>:1746                                    ; preds = %1719
  %1747 = fsub fast float -0.000000e+00, %1675
  %1748 = fsub fast float -0.000000e+00, %1669
  %1749 = call float @dx.op.unary.f32(i32 24, float %1742)  ; Sqrt(value)
  %1750 = fdiv fast float %1749, %1741
  %1751 = fcmp fast ogt float %1750, 0x3FFB6F8900000000
  %1752 = select i1 %1751, float 0x3FFB6F8900000000, float %1750
  %1753 = fmul fast float %1752, 0x3FE8A23460000000
  %1754 = call float @dx.op.unary.f32(i32 7, float %1753)  ; Saturate(value)
  %1755 = call float @dx.op.binary.f32(i32 35, float %1752, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1756 = fmul fast float %1754, %1741
  %1757 = fmul fast float %1755, 0x3FF279A740000000
  %1758 = fadd fast float %1757, -1.000000e+00
  %1759 = call float @dx.op.dot3.f32(i32 55, float %1747, float %1748, float %1672, float %1747, float %1748, float %1672)  ; Dot3(ax,ay,az,bx,by,bz)
  %1760 = call float @dx.op.unary.f32(i32 25, float %1759)  ; Rsqrt(value)
  %1761 = fmul fast float %1760, %1747
  %1762 = fmul fast float %1760, %1748
  %1763 = fmul fast float %1760, %1672
  %1764 = fmul fast float %1758, %1758
  %1765 = fsub fast float 1.000000e+00, %1764
  %1766 = fmul fast float %1755, 0x40005F8BE0000000
  %1767 = fsub fast float 0x400C5BF8A0000000, %1766
  %1768 = fdiv fast float %1756, %1767
  %1769 = fmul fast float %1768, 0x3FEE31C3C0000000
  %1770 = fmul fast float %1769, %1765
  %1771 = fmul fast float %1755, 0x3FDACB7480000000
  %1772 = fadd fast float %1771, 0xBFD7347680000000
  %1773 = fmul fast float %1772, %1768
  %1774 = fmul fast float %1773, %1765
  br label %1775

; <label>:1775                                    ; preds = %1746, %1719
  %1776 = phi float [ %1761, %1746 ], [ 0.000000e+00, %1719 ]
  %1777 = phi float [ %1762, %1746 ], [ 0.000000e+00, %1719 ]
  %1778 = phi float [ %1763, %1746 ], [ 0.000000e+00, %1719 ]
  %1779 = phi float [ %1770, %1746 ], [ 0.000000e+00, %1719 ]
  %1780 = phi float [ %1774, %1746 ], [ 0.000000e+00, %1719 ]
  %1781 = call float @dx.op.dot3.f32(i32 55, float %1776, float %1777, float %1778, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %1782 = fmul fast float %1781, %1781
  %1783 = fmul fast float %1782, 0x3FEE471020000000
  %1784 = fadd fast float %1783, 0xBFD42F6020000000
  %1785 = fmul fast float %1741, 0x3FD20DD760000000
  %1786 = fmul fast float %1784, %1780
  %1787 = fmul fast float %1779, 0x3FDF454380000000
  %1788 = fmul fast float %1787, %1781
  %1789 = fadd fast float %1788, %1785
  %1790 = fadd fast float %1789, %1786
  %1791 = call float @dx.op.dot3.f32(i32 55, float %1776, float %1777, float %1778, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1792 = fmul fast float %1791, 0x3FDF454380000000
  %1793 = fmul fast float %1791, %1791
  %1794 = fmul fast float %1793, 0x3FEE471020000000
  %1795 = fadd fast float %1794, 0xBFD42F6020000000
  %1796 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1779, float %1780, float 0x3FD20DD760000000, float %1792, float %1795)  ; Dot3(ax,ay,az,bx,by,bz)
  %1797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1655)  ; FMax(a,b)
  %1798 = call float @dx.op.dot3.f32(i32 55, float %1678, float %1681, float %1684, float %1678, float %1681, float %1684)  ; Dot3(ax,ay,az,bx,by,bz)
  %1799 = fcmp fast oeq float %1798, 0.000000e+00
  %1800 = fcmp fast oeq float %1797, 0.000000e+00
  %1801 = or i1 %1800, %1799
  br i1 %1801, label %1831, label %1802

; <label>:1802                                    ; preds = %1775
  %1803 = fsub fast float -0.000000e+00, %1684
  %1804 = fsub fast float -0.000000e+00, %1678
  %1805 = call float @dx.op.unary.f32(i32 24, float %1798)  ; Sqrt(value)
  %1806 = fdiv fast float %1805, %1797
  %1807 = fcmp fast ogt float %1806, 0x3FFB6F8900000000
  %1808 = select i1 %1807, float 0x3FFB6F8900000000, float %1806
  %1809 = fmul fast float %1808, 0x3FE8A23460000000
  %1810 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1811 = call float @dx.op.binary.f32(i32 35, float %1808, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1812 = fmul fast float %1810, %1797
  %1813 = fmul fast float %1811, 0x3FF279A740000000
  %1814 = fadd fast float %1813, -1.000000e+00
  %1815 = call float @dx.op.dot3.f32(i32 55, float %1803, float %1804, float %1681, float %1803, float %1804, float %1681)  ; Dot3(ax,ay,az,bx,by,bz)
  %1816 = call float @dx.op.unary.f32(i32 25, float %1815)  ; Rsqrt(value)
  %1817 = fmul fast float %1816, %1803
  %1818 = fmul fast float %1816, %1804
  %1819 = fmul fast float %1816, %1681
  %1820 = fmul fast float %1814, %1814
  %1821 = fsub fast float 1.000000e+00, %1820
  %1822 = fmul fast float %1811, 0x40005F8BE0000000
  %1823 = fsub fast float 0x400C5BF8A0000000, %1822
  %1824 = fdiv fast float %1812, %1823
  %1825 = fmul fast float %1824, 0x3FEE31C3C0000000
  %1826 = fmul fast float %1825, %1821
  %1827 = fmul fast float %1811, 0x3FDACB7480000000
  %1828 = fadd fast float %1827, 0xBFD7347680000000
  %1829 = fmul fast float %1828, %1824
  %1830 = fmul fast float %1829, %1821
  br label %1831

; <label>:1831                                    ; preds = %1802, %1775
  %1832 = phi float [ %1817, %1802 ], [ 0.000000e+00, %1775 ]
  %1833 = phi float [ %1818, %1802 ], [ 0.000000e+00, %1775 ]
  %1834 = phi float [ %1819, %1802 ], [ 0.000000e+00, %1775 ]
  %1835 = phi float [ %1826, %1802 ], [ 0.000000e+00, %1775 ]
  %1836 = phi float [ %1830, %1802 ], [ 0.000000e+00, %1775 ]
  %1837 = call float @dx.op.dot3.f32(i32 55, float %1832, float %1833, float %1834, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %1838 = fmul fast float %1837, %1837
  %1839 = fmul fast float %1838, 0x3FEE471020000000
  %1840 = fadd fast float %1839, 0xBFD42F6020000000
  %1841 = fmul fast float %1797, 0x3FD20DD760000000
  %1842 = fmul fast float %1840, %1836
  %1843 = fmul fast float %1835, 0x3FDF454380000000
  %1844 = fmul fast float %1843, %1837
  %1845 = fadd fast float %1844, %1841
  %1846 = fadd fast float %1845, %1842
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1832, float %1833, float %1834, float %456, float %457, float %458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = fmul fast float %1847, 0x3FDF454380000000
  %1849 = fmul fast float %1847, %1847
  %1850 = fmul fast float %1849, 0x3FEE471020000000
  %1851 = fadd fast float %1850, 0xBFD42F6020000000
  %1852 = call float @dx.op.dot3.f32(i32 55, float %1797, float %1835, float %1836, float 0x3FD20DD760000000, float %1848, float %1851)  ; Dot3(ax,ay,az,bx,by,bz)
  %1853 = call float @dx.op.binary.f32(i32 35, float %1734, float 0.000000e+00)  ; FMax(a,b)
  %1854 = call float @dx.op.binary.f32(i32 35, float %1790, float 0.000000e+00)  ; FMax(a,b)
  %1855 = call float @dx.op.binary.f32(i32 35, float %1846, float 0.000000e+00)  ; FMax(a,b)
  %1856 = call float @dx.op.binary.f32(i32 35, float %1740, float 0.000000e+00)  ; FMax(a,b)
  %1857 = call float @dx.op.binary.f32(i32 35, float %1796, float 0.000000e+00)  ; FMax(a,b)
  %1858 = call float @dx.op.binary.f32(i32 35, float %1852, float 0.000000e+00)  ; FMax(a,b)
  %1859 = fsub fast float %1053, %1853
  %1860 = fsub fast float %1054, %1854
  %1861 = fsub fast float %1055, %1855
  %1862 = fmul fast float %1859, %510
  %1863 = fmul fast float %1860, %510
  %1864 = fmul fast float %1861, %510
  %1865 = fadd fast float %1862, %1853
  %1866 = fadd fast float %1863, %1854
  %1867 = fadd fast float %1864, %1855
  %1868 = fsub fast float %1050, %1856
  %1869 = fsub fast float %1051, %1857
  %1870 = fsub fast float %1052, %1858
  %1871 = fmul fast float %1868, %510
  %1872 = fmul fast float %1869, %510
  %1873 = fmul fast float %1870, %510
  %1874 = fadd fast float %1871, %1856
  %1875 = fadd fast float %1872, %1857
  %1876 = fadd fast float %1873, %1858
  %1877 = fsub fast float %840, %1657
  %1878 = fmul fast float %1877, %510
  %1879 = fadd fast float %1878, %1657
  br label %1880

; <label>:1880                                    ; preds = %1831, %1049
  %1881 = phi float [ %1874, %1831 ], [ %1050, %1049 ]
  %1882 = phi float [ %1875, %1831 ], [ %1051, %1049 ]
  %1883 = phi float [ %1876, %1831 ], [ %1052, %1049 ]
  %1884 = phi float [ %1865, %1831 ], [ %1053, %1049 ]
  %1885 = phi float [ %1866, %1831 ], [ %1054, %1049 ]
  %1886 = phi float [ %1867, %1831 ], [ %1055, %1049 ]
  %1887 = phi float [ %1879, %1831 ], [ %840, %1049 ]
  %1888 = fmul fast float %1884, 0x3FEE623840000000
  %1889 = fmul fast float %1885, 0x3FEE623840000000
  %1890 = fmul fast float %1886, 0x3FEE623840000000
  %1891 = fmul fast float %1881, 0x3FEE623840000000
  %1892 = fmul fast float %1882, 0x3FEE623840000000
  %1893 = fmul fast float %1883, 0x3FEE623840000000
  %1894 = call float @dx.op.dot3.f32(i32 55, float %1888, float %1889, float %1890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = select i1 %132, float 0.000000e+00, float %1888
  %1896 = select i1 %132, float %1894, float %1889
  %1897 = select i1 %132, float 0.000000e+00, float %1890
  %1898 = call float @dx.op.dot3.f32(i32 55, float %1891, float %1892, float %1893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1899 = select i1 %132, float 0.000000e+00, float %1891
  %1900 = select i1 %132, float %1898, float %1892
  %1901 = select i1 %132, float 0.000000e+00, float %1893
  %1902 = fmul fast float %450, 9.843750e-01
  %1903 = fmul fast float %250, 9.843750e-01
  %1904 = fadd fast float %1902, 7.812500e-03
  %1905 = fadd fast float %1903, 7.812500e-03
  %1906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %1904, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 3
  %1909 = fmul fast float %1907, %430
  %1910 = fmul fast float %1907, %431
  %1911 = fmul fast float %1907, %448
  %1912 = fadd fast float %1909, %1908
  %1913 = fadd fast float %1910, %1908
  %1914 = fadd fast float %1911, %1908
  %1915 = call float @dx.op.binary.f32(i32 35, float %1913, float %1914)  ; FMax(a,b)
  %1916 = call float @dx.op.binary.f32(i32 35, float %1912, float %1915)  ; FMax(a,b)
  %1917 = fsub fast float 1.000000e+00, %1916
  %1918 = fmul fast float %1916, %250
  %1919 = fadd fast float %1918, %250
  %1920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1920, 2
  %1922 = extractvalue %dx.types.CBufRet.f32 %1920, 3
  %1923 = fmul fast float %1919, %1921
  %1924 = fadd fast float %1923, %1922
  %1925 = call float @dx.op.unary.f32(i32 7, float %1924)  ; Saturate(value)
  %1926 = fsub fast float 1.000000e+00, %465
  %1927 = fadd fast float %1926, %1925
  %1928 = call float @dx.op.unary.f32(i32 7, float %1927)  ; Saturate(value)
  %1929 = fcmp fast olt float %1928, 1.000000e+00
  br i1 %1929, label %1930, label %2405

; <label>:1930                                    ; preds = %1880
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 2
  %1933 = extractvalue %dx.types.CBufRet.f32 %1931, 3
  %1934 = fmul fast float %1932, %73
  %1935 = fmul fast float %1933, %74
  %1936 = fptoui float %1934 to i32
  %1937 = fptoui float %1935 to i32
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.CBufRet.f32 %1938, 2
  %1941 = extractvalue %dx.types.CBufRet.f32 %1938, 3
  %1942 = fadd fast float %273, -4.000000e+00
  %1943 = call float @dx.op.binary.f32(i32 35, float %1942, float 0.000000e+00)  ; FMax(a,b)
  %1944 = fadd fast float %1943, %1939
  %1945 = fmul fast float %1944, %1940
  %1946 = call float @dx.op.unary.f32(i32 23, float %1945)  ; Log(value)
  %1947 = fmul fast float %1946, %1941
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1950 = fmul fast float %1947, %1949
  %1951 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1953 = extractvalue %dx.types.CBufRet.i32 %1952, 1
  %1954 = add i32 %1953, -1
  %1955 = uitofp i32 %1953 to float
  %1956 = fmul fast float %1955, %1951
  %1957 = fptoui float %1956 to i32
  %1958 = call i32 @dx.op.binary.i32(i32 40, i32 %1957, i32 %1954)  ; UMin(a,b)
  %1959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.i32 %1959, 2
  %1961 = extractvalue %dx.types.CBufRet.i32 %1959, 3
  %1962 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1937, i32 %1960, i32 %1936)  ; UMad(a,b,c)
  %1963 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1958, i32 %1961, i32 %1962)  ; UMad(a,b,c)
  %1964 = call float @dx.op.binary.f32(i32 35, float %273, float 0.000000e+00)  ; FMax(a,b)
  %1965 = fptoui float %1964 to i32
  %1966 = lshr i32 %1965, 5
  %1967 = call i32 @dx.op.binary.i32(i32 40, i32 %1966, i32 8191)  ; UMin(a,b)
  %1968 = call float @dx.op.unary.f32(i32 7, float %439)  ; Saturate(value)
  %1969 = fcmp fast ogt float %1968, 0.000000e+00
  %1970 = fcmp fast ogt float %458, 0.000000e+00
  %1971 = and i1 %1970, %1969
  br i1 %1971, label %1972, label %2001

; <label>:1972                                    ; preds = %1930
  %1973 = call float @dx.op.dot3.f32(i32 55, float %456, float %457, float %458, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1974 = call float @dx.op.binary.f32(i32 35, float %1973, float -1.000000e+00)  ; FMax(a,b)
  %1975 = call float @dx.op.binary.f32(i32 36, float %1974, float 1.000000e+00)  ; FMin(a,b)
  %1976 = fmul fast float %1975, %1975
  %1977 = fsub fast float 1.000000e+00, %1976
  %1978 = fmul fast float %1977, 0x3FFC6E2300000000
  %1979 = fsub fast float 1.000000e+00, %1978
  %1980 = fcmp fast ogt float %1979, 0.000000e+00
  %1981 = call float @dx.op.unary.f32(i32 24, float %1979)  ; Sqrt(value)
  %1982 = fsub fast float 1.000000e+00, %1981
  %1983 = call float @dx.op.unary.f32(i32 23, float %1982)  ; Log(value)
  %1984 = fmul fast float %1983, 5.000000e+00
  %1985 = call float @dx.op.unary.f32(i32 21, float %1984)  ; Exp(value)
  %1986 = fmul fast float %1985, 0x3FEF591A60000000
  %1987 = fadd fast float %1986, 0x3F94DCB540000000
  %1988 = select i1 %1980, float %1987, float 1.000000e+00
  %1989 = fcmp fast oge float %1988, 1.000000e+00
  %1990 = fmul fast float %1973, 2.000000e+00
  %1991 = fadd fast float %1990, %458
  %1992 = select i1 %1989, float %1991, float %458
  %1993 = fsub fast float %1992, %458
  %1994 = fmul fast float %1993, %1968
  %1995 = fadd fast float %1994, %458
  %1996 = call float @dx.op.dot3.f32(i32 55, float %456, float %457, float %1995, float %456, float %457, float %1995)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = call float @dx.op.unary.f32(i32 25, float %1996)  ; Rsqrt(value)
  %1998 = fmul fast float %1997, %456
  %1999 = fmul fast float %1997, %457
  %2000 = fmul fast float %1995, %1997
  br label %2001

; <label>:2001                                    ; preds = %1972, %1930
  %2002 = phi float [ %1998, %1972 ], [ %456, %1930 ]
  %2003 = phi float [ %1999, %1972 ], [ %457, %1930 ]
  %2004 = phi float [ %2000, %1972 ], [ %458, %1930 ]
  %2005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2006 = extractvalue %dx.types.CBufRet.i32 %2005, 2
  %2007 = add nsw i32 %2006, -1
  %2008 = call i32 @dx.op.binary.i32(i32 37, i32 %2007, i32 0)  ; IMax(a,b)
  %2009 = shl i32 %1967, 2
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = lshr i32 %2011, 16
  %2013 = and i32 %2011, 65535
  %2014 = lshr i32 %2011, 21
  %2015 = lshr i32 %2013, 5
  %2016 = call i32 @dx.op.binary.i32(i32 40, i32 %2015, i32 %2008)  ; UMin(a,b)
  %2017 = icmp ugt i32 %2014, %2016
  br i1 %2017, label %2381, label %2018

; <label>:2018                                    ; preds = %2001
  br label %2019

; <label>:2019                                    ; preds = %2373, %2018
  %2020 = phi float [ %2374, %2373 ], [ 0.000000e+00, %2018 ]
  %2021 = phi float [ %2375, %2373 ], [ 0.000000e+00, %2018 ]
  %2022 = phi float [ %2376, %2373 ], [ 0.000000e+00, %2018 ]
  %2023 = phi float [ %2377, %2373 ], [ 1.000000e+00, %2018 ]
  %2024 = phi i32 [ %2378, %2373 ], [ %2014, %2018 ]
  %2025 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2026 = extractvalue %dx.types.CBufRet.i32 %2025, 2
  %2027 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1963, i32 %2026, i32 %2024)  ; UMad(a,b,c)
  %2028 = shl i32 %2027, 2
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = shl i32 %2024, 5
  %2032 = sub nsw i32 %2012, %2031
  %2033 = call i32 @dx.op.binary.i32(i32 37, i32 %2032, i32 0)  ; IMax(a,b)
  %2034 = call i32 @dx.op.binary.i32(i32 38, i32 %2033, i32 31)  ; IMin(a,b)
  %2035 = sub nsw i32 1, %2012
  %2036 = add nsw i32 %2035, %2013
  %2037 = call i32 @dx.op.binary.i32(i32 37, i32 %2036, i32 0)  ; IMax(a,b)
  %2038 = call i32 @dx.op.binary.i32(i32 38, i32 %2037, i32 32)  ; IMin(a,b)
  %2039 = and i32 %2038, 31
  %2040 = shl i32 -1, %2039
  %2041 = xor i32 %2040, -1
  %2042 = and i32 %2034, 31
  %2043 = shl i32 %2041, %2042
  %2044 = icmp eq i32 %2038, 32
  %2045 = select i1 %2044, i32 -1, i32 %2043
  %2046 = and i32 %2045, %2030
  %2047 = icmp eq i32 %2046, 0
  br i1 %2047, label %2373, label %2048

; <label>:2048                                    ; preds = %2019
  br label %2049

; <label>:2049                                    ; preds = %2156, %2048
  %2050 = phi float [ %2157, %2156 ], [ %2020, %2048 ]
  %2051 = phi float [ %2158, %2156 ], [ %2021, %2048 ]
  %2052 = phi float [ %2159, %2156 ], [ %2022, %2048 ]
  %2053 = phi float [ %2160, %2156 ], [ %2023, %2048 ]
  %2054 = phi i32 [ %2059, %2156 ], [ %2046, %2048 ]
  %2055 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2054)  ; FirstbitLo(value)
  %2056 = add i32 %2055, %2031
  %2057 = and i32 %2055, 31
  %2058 = shl i32 1, %2057
  %2059 = xor i32 %2058, %2054
  %2060 = mul i32 %2056, 72
  %2061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  %2063 = extractvalue %dx.types.ResRet.f32 %2061, 1
  %2064 = extractvalue %dx.types.ResRet.f32 %2061, 2
  %2065 = add i32 %2060, 12
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = add i32 %2060, 16
  %2069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.ResRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.ResRet.f32 %2069, 2
  %2073 = add i32 %2060, 28
  %2074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = add i32 %2060, 32
  %2077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2076, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.f32 %2077, 0
  %2079 = extractvalue %dx.types.ResRet.f32 %2077, 1
  %2080 = extractvalue %dx.types.ResRet.f32 %2077, 2
  %2081 = extractvalue %dx.types.ResRet.f32 %2077, 3
  %2082 = add i32 %2060, 48
  %2083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.f32 %2083, 0
  %2085 = extractvalue %dx.types.ResRet.f32 %2083, 1
  %2086 = add i32 %2060, 56
  %2087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.ResRet.f32 %2087, 1
  %2090 = add i32 %2060, 64
  %2091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.f32 %2091, 0
  %2093 = extractvalue %dx.types.ResRet.f32 %2091, 1
  %2094 = mul i32 %2056, 60
  %2095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  %2097 = extractvalue %dx.types.ResRet.f32 %2095, 1
  %2098 = extractvalue %dx.types.ResRet.f32 %2095, 2
  %2099 = add i32 %2094, 12
  %2100 = add i32 %2094, 48
  %2101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.f32 %2101, 0
  %2103 = extractvalue %dx.types.ResRet.f32 %2101, 1
  %2104 = extractvalue %dx.types.ResRet.f32 %2101, 2
  %2105 = and i32 %2067, 32767
  %2106 = bitcast float %2062 to i32
  %2107 = icmp eq i32 %2106, -1
  %2108 = bitcast float %2063 to i32
  %2109 = and i32 %2067, 32768
  %2110 = icmp ne i32 %2109, 0
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 1
  %2114 = extractvalue %dx.types.CBufRet.f32 %2111, 2
  %2115 = fsub fast float %2096, %2112
  %2116 = fsub fast float %2097, %2113
  %2117 = fsub fast float %2098, %2114
  %2118 = fsub fast float %307, %2115
  %2119 = fsub fast float %308, %2116
  %2120 = fsub fast float %309, %2117
  %2121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.f32 %2121, 0
  %2123 = extractvalue %dx.types.ResRet.f32 %2121, 1
  %2124 = extractvalue %dx.types.ResRet.f32 %2121, 2
  %2125 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2119, float %2120, float %2122, float %2123, float %2124)  ; Dot3(ax,ay,az,bx,by,bz)
  %2126 = add i32 %2094, 24
  %2127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.ResRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.ResRet.f32 %2127, 2
  %2131 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2119, float %2120, float %2128, float %2129, float %2130)  ; Dot3(ax,ay,az,bx,by,bz)
  %2132 = add i32 %2094, 36
  %2133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.f32 %2133, 0
  %2135 = extractvalue %dx.types.ResRet.f32 %2133, 1
  %2136 = extractvalue %dx.types.ResRet.f32 %2133, 2
  %2137 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2119, float %2120, float %2134, float %2135, float %2136)  ; Dot3(ax,ay,az,bx,by,bz)
  %2138 = call float @dx.op.unary.f32(i32 6, float %2125)  ; FAbs(value)
  %2139 = call float @dx.op.unary.f32(i32 6, float %2131)  ; FAbs(value)
  %2140 = call float @dx.op.unary.f32(i32 6, float %2137)  ; FAbs(value)
  %2141 = fsub fast float %2102, %2138
  %2142 = fsub fast float %2103, %2139
  %2143 = fsub fast float %2104, %2140
  %2144 = fmul fast float %2141, %2070
  %2145 = fmul fast float %2142, %2071
  %2146 = fmul fast float %2143, %2072
  %2147 = call float @dx.op.binary.f32(i32 36, float %2145, float %2146)  ; FMin(a,b)
  %2148 = call float @dx.op.binary.f32(i32 36, float %2144, float %2147)  ; FMin(a,b)
  %2149 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2150 = call float @dx.op.binary.f32(i32 36, float %2053, float %2149)  ; FMin(a,b)
  %2151 = uitofp i1 %2110 to float
  %2152 = fadd fast float %1968, 1.000000e+00
  %2153 = fsub fast float %2152, %2151
  %2154 = fmul fast float %2150, %2153
  %2155 = fcmp fast ogt float %2154, 0.000000e+00
  br i1 %2155, label %2162, label %2156

; <label>:2156                                    ; preds = %2304, %2049
  %2157 = phi float [ %2368, %2304 ], [ %2050, %2049 ]
  %2158 = phi float [ %2369, %2304 ], [ %2051, %2049 ]
  %2159 = phi float [ %2370, %2304 ], [ %2052, %2049 ]
  %2160 = phi float [ %2371, %2304 ], [ %2053, %2049 ]
  %2161 = icmp eq i32 %2054, %2058
  br i1 %2161, label %2372, label %2049

; <label>:2162                                    ; preds = %2049
  br i1 %2107, label %2220, label %2163

; <label>:2163                                    ; preds = %2162
  %2164 = fsub fast float -0.000000e+00, %2122
  %2165 = fsub fast float -0.000000e+00, %2123
  %2166 = fsub fast float -0.000000e+00, %2124
  %2167 = call float @dx.op.dot3.f32(i32 55, float %2002, float %2003, float %2004, float %2164, float %2165, float %2166)  ; Dot3(ax,ay,az,bx,by,bz)
  %2168 = fsub fast float -0.000000e+00, %2167
  %2169 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2119, float %2120, float %2164, float %2165, float %2166)  ; Dot3(ax,ay,az,bx,by,bz)
  %2170 = fadd fast float %2169, %2085
  %2171 = fadd fast float %2084, %2169
  %2172 = fsub fast float -0.000000e+00, %2171
  %2173 = fcmp ogt float %2167, -0.000000e+00
  %2174 = select i1 %2173, float %2172, float %2170
  %2175 = call float @dx.op.unary.f32(i32 6, float %2168)  ; FAbs(value)
  %2176 = fdiv fast float 1.000000e+00, %2175
  %2177 = fmul fast float %2174, %2176
  %2178 = call float @dx.op.binary.f32(i32 35, float %2177, float 0.000000e+00)  ; FMax(a,b)
  %2179 = fsub fast float -0.000000e+00, %2128
  %2180 = fsub fast float -0.000000e+00, %2129
  %2181 = fsub fast float -0.000000e+00, %2130
  %2182 = call float @dx.op.dot3.f32(i32 55, float %2002, float %2003, float %2004, float %2179, float %2180, float %2181)  ; Dot3(ax,ay,az,bx,by,bz)
  %2183 = fsub fast float -0.000000e+00, %2182
  %2184 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2119, float %2120, float %2179, float %2180, float %2181)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = fadd fast float %2184, %2089
  %2186 = fadd fast float %2088, %2184
  %2187 = fsub fast float -0.000000e+00, %2186
  %2188 = fcmp ogt float %2182, -0.000000e+00
  %2189 = select i1 %2188, float %2187, float %2185
  %2190 = call float @dx.op.unary.f32(i32 6, float %2183)  ; FAbs(value)
  %2191 = fdiv fast float 1.000000e+00, %2190
  %2192 = fmul fast float %2189, %2191
  %2193 = call float @dx.op.binary.f32(i32 35, float %2192, float 0.000000e+00)  ; FMax(a,b)
  %2194 = fsub fast float -0.000000e+00, %2134
  %2195 = fsub fast float -0.000000e+00, %2135
  %2196 = fsub fast float -0.000000e+00, %2136
  %2197 = call float @dx.op.dot3.f32(i32 55, float %2002, float %2003, float %2004, float %2194, float %2195, float %2196)  ; Dot3(ax,ay,az,bx,by,bz)
  %2198 = fsub fast float -0.000000e+00, %2197
  %2199 = call float @dx.op.dot3.f32(i32 55, float %2118, float %2119, float %2120, float %2194, float %2195, float %2196)  ; Dot3(ax,ay,az,bx,by,bz)
  %2200 = fadd fast float %2199, %2093
  %2201 = fadd fast float %2092, %2199
  %2202 = fsub fast float -0.000000e+00, %2201
  %2203 = fcmp ogt float %2197, -0.000000e+00
  %2204 = select i1 %2203, float %2202, float %2200
  %2205 = call float @dx.op.unary.f32(i32 6, float %2198)  ; FAbs(value)
  %2206 = fdiv fast float 1.000000e+00, %2205
  %2207 = fmul fast float %2204, %2206
  %2208 = call float @dx.op.binary.f32(i32 35, float %2207, float 0.000000e+00)  ; FMax(a,b)
  %2209 = call float @dx.op.binary.f32(i32 36, float %2193, float %2208)  ; FMin(a,b)
  %2210 = call float @dx.op.binary.f32(i32 36, float %2178, float %2209)  ; FMin(a,b)
  %2211 = fmul fast float %2210, %2002
  %2212 = fmul fast float %2210, %2003
  %2213 = fmul fast float %2210, %2004
  %2214 = fadd fast float %2211, %307
  %2215 = fadd fast float %2212, %308
  %2216 = fadd fast float %2213, %309
  %2217 = fsub fast float %2214, %2062
  %2218 = fsub fast float %2215, %2063
  %2219 = fsub fast float %2216, %2064
  br label %2227

; <label>:2220                                    ; preds = %2162
  %2221 = fmul fast float %2002, 8.096000e+03
  %2222 = fmul fast float %2003, 8.096000e+03
  %2223 = fmul fast float %2004, 8.096000e+03
  %2224 = fadd fast float %2221, %307
  %2225 = fadd fast float %2222, %308
  %2226 = fadd fast float %2223, %309
  br label %2227

; <label>:2227                                    ; preds = %2220, %2163
  %2228 = phi float [ %2002, %2220 ], [ %2217, %2163 ]
  %2229 = phi float [ %2003, %2220 ], [ %2218, %2163 ]
  %2230 = phi float [ %2004, %2220 ], [ %2219, %2163 ]
  %2231 = phi float [ %2224, %2220 ], [ %2214, %2163 ]
  %2232 = phi float [ %2225, %2220 ], [ %2215, %2163 ]
  %2233 = phi float [ %2226, %2220 ], [ %2216, %2163 ]
  %2234 = fcmp fast olt float %2081, 1.000000e+00
  br i1 %2234, label %2235, label %2266, !dx.controlflow.hints !97

; <label>:2235                                    ; preds = %2227
  %2236 = fmul fast float %2230, %2079
  %2237 = fmul fast float %2229, %2080
  %2238 = fsub fast float %2236, %2237
  %2239 = fmul fast float %2228, %2080
  %2240 = fmul fast float %2230, %2078
  %2241 = fsub fast float %2239, %2240
  %2242 = fmul fast float %2229, %2078
  %2243 = fmul fast float %2228, %2079
  %2244 = fsub fast float %2242, %2243
  %2245 = fmul fast float %2238, 2.000000e+00
  %2246 = fmul fast float %2241, 2.000000e+00
  %2247 = fmul fast float %2244, 2.000000e+00
  %2248 = fmul fast float %2245, %2081
  %2249 = fmul fast float %2246, %2081
  %2250 = fmul fast float %2247, %2081
  %2251 = fmul fast float %2247, %2079
  %2252 = fmul fast float %2246, %2080
  %2253 = fmul fast float %2245, %2080
  %2254 = fmul fast float %2247, %2078
  %2255 = fmul fast float %2246, %2078
  %2256 = fmul fast float %2245, %2079
  %2257 = fadd fast float %2251, %2228
  %2258 = fadd fast float %2257, %2248
  %2259 = fsub fast float %2258, %2252
  %2260 = fsub fast float %2229, %2254
  %2261 = fadd fast float %2260, %2249
  %2262 = fadd fast float %2261, %2253
  %2263 = fadd fast float %2250, %2230
  %2264 = fsub fast float %2263, %2256
  %2265 = fadd fast float %2264, %2255
  br label %2266

; <label>:2266                                    ; preds = %2235, %2227
  %2267 = phi float [ %2259, %2235 ], [ %2228, %2227 ]
  %2268 = phi float [ %2262, %2235 ], [ %2229, %2227 ]
  %2269 = phi float [ %2265, %2235 ], [ %2230, %2227 ]
  br i1 %2107, label %2301, label %2270

; <label>:2270                                    ; preds = %2266
  %2271 = fmul fast float %250, 0x400187C840000000
  %2272 = fadd fast float %2271, 0xC00EFC2120000000
  %2273 = fmul fast float %2272, %250
  %2274 = fadd fast float %2273, 0x3FE5D16340000000
  %2275 = fmul fast float %2274, %250
  %2276 = fadd fast float %2275, 1.000000e+00
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fsub fast float %2231, %307
  %2279 = fsub fast float %2232, %308
  %2280 = fsub fast float %2233, %309
  %2281 = fsub fast float %2231, %2062
  %2282 = fsub fast float %2232, %2063
  %2283 = fsub fast float %2233, %2064
  %2284 = call float @dx.op.dot3.f32(i32 55, float %2278, float %2279, float %2280, float %2278, float %2279, float %2280)  ; Dot3(ax,ay,az,bx,by,bz)
  %2285 = call float @dx.op.dot3.f32(i32 55, float %2281, float %2282, float %2283, float %2281, float %2282, float %2283)  ; Dot3(ax,ay,az,bx,by,bz)
  %2286 = fadd fast float %2285, 0x3EE4F8B580000000
  %2287 = fdiv fast float %2284, %2286
  %2288 = bitcast float %2287 to i32
  %2289 = ashr i32 %2288, 1
  %2290 = add nsw i32 %2289, 532487669
  %2291 = bitcast i32 %2290 to float
  %2292 = fmul fast float %2291, %2277
  %2293 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2294 = fmul fast float %2293, 0x4009981AE0000000
  %2295 = fsub fast float 0x40111BBD80000000, %2294
  %2296 = fmul fast float %2295, %2293
  %2297 = fadd fast float %2296, 0xC0009F6020000000
  %2298 = fmul fast float %2297, %2293
  %2299 = fadd fast float %2298, 1.000000e+00
  %2300 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  br label %2304

; <label>:2301                                    ; preds = %2266
  %2302 = icmp ne i32 %2108, -1
  %2303 = zext i1 %2302 to i32
  br label %2304

; <label>:2304                                    ; preds = %2301, %2270
  %2305 = phi float [ %250, %2301 ], [ %2300, %2270 ]
  %2306 = phi i32 [ %2303, %2301 ], [ 0, %2270 ]
  %2307 = fmul float %2305, 5.000000e+00
  %2308 = fsub float 5.000000e+00, %2307
  %2309 = icmp ne i32 %2306, 0
  %2310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.f32 %2310, 3
  %2312 = fadd fast float %2311, %2308
  %2313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2312)  ; FMax(a,b)
  %2314 = call float @dx.op.unary.f32(i32 6, float %2267)  ; FAbs(value)
  %2315 = call float @dx.op.unary.f32(i32 6, float %2268)  ; FAbs(value)
  %2316 = fadd fast float %2315, %2314
  %2317 = call float @dx.op.unary.f32(i32 6, float %2269)  ; FAbs(value)
  %2318 = fadd fast float %2316, %2317
  %2319 = fcmp fast oeq float %2318, 0.000000e+00
  %2320 = fdiv fast float 1.000000e+00, %2318
  %2321 = select i1 %2319, float 1.000000e+00, float %2320
  %2322 = fmul fast float %2321, %2267
  %2323 = fmul fast float %2321, %2268
  %2324 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2325 = call float @dx.op.unary.f32(i32 6, float %2322)  ; FAbs(value)
  %2326 = fsub fast float 1.000000e+00, %2324
  %2327 = fsub fast float 1.000000e+00, %2325
  %2328 = fcmp fast oge float %2322, 0.000000e+00
  %2329 = fcmp fast oge float %2323, 0.000000e+00
  %2330 = select i1 %2328, float 1.000000e+00, float -1.000000e+00
  %2331 = select i1 %2329, float 1.000000e+00, float -1.000000e+00
  %2332 = fcmp fast ole float %2269, 0.000000e+00
  %2333 = fmul fast float %2330, %2326
  %2334 = fmul fast float %2331, %2327
  %2335 = select i1 %2332, float %2333, float %2322
  %2336 = select i1 %2332, float %2334, float %2323
  %2337 = fmul fast float %2335, 5.000000e-01
  %2338 = fmul fast float %2336, 5.000000e-01
  %2339 = fadd fast float %2337, 5.000000e-01
  %2340 = fadd fast float %2338, 5.000000e-01
  %2341 = uitofp i32 %2105 to float
  %2342 = call float @dx.op.binary.f32(i32 36, float %2313, float 3.000000e+00)  ; FMin(a,b)
  %2343 = fadd fast float %2342, 2.000000e+00
  %2344 = call float @dx.op.unary.f32(i32 21, float %2343)  ; Exp(value)
  %2345 = extractvalue %dx.types.CBufRet.f32 %2310, 1
  %2346 = fmul fast float %2345, %2344
  %2347 = fmul fast float %2346, 2.000000e+00
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = fmul fast float %2339, %2348
  %2350 = fmul fast float %2340, %2348
  %2351 = fadd fast float %2349, %2346
  %2352 = fadd fast float %2350, %2346
  %2353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %2351, float %2352, float %2341, float undef, i32 0, i32 0, i32 undef, float %2313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2354 = extractvalue %dx.types.ResRet.f32 %2353, 0
  %2355 = extractvalue %dx.types.ResRet.f32 %2353, 1
  %2356 = extractvalue %dx.types.ResRet.f32 %2353, 2
  %2357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2358 = extractvalue %dx.types.CBufRet.f32 %2357, 3
  %2359 = fmul fast float %2358, %2075
  %2360 = call float @dx.op.binary.f32(i32 36, float %1887, float %2359)  ; FMin(a,b)
  %2361 = select i1 %2309, float %2360, float %2359
  %2362 = fmul fast float %2354, %2154
  %2363 = fmul fast float %2362, %2361
  %2364 = fmul fast float %2355, %2154
  %2365 = fmul fast float %2364, %2361
  %2366 = fmul fast float %2356, %2154
  %2367 = fmul fast float %2366, %2361
  %2368 = fadd fast float %2363, %2050
  %2369 = fadd fast float %2365, %2051
  %2370 = fadd fast float %2367, %2052
  %2371 = fsub fast float %2053, %2154
  br label %2156

; <label>:2372                                    ; preds = %2156
  br label %2373

; <label>:2373                                    ; preds = %2372, %2019
  %2374 = phi float [ %2020, %2019 ], [ %2157, %2372 ]
  %2375 = phi float [ %2021, %2019 ], [ %2158, %2372 ]
  %2376 = phi float [ %2022, %2019 ], [ %2159, %2372 ]
  %2377 = phi float [ %2023, %2019 ], [ %2160, %2372 ]
  %2378 = add i32 %2024, 1
  %2379 = icmp ugt i32 %2378, %2016
  br i1 %2379, label %2380, label %2019, !llvm.loop !98

; <label>:2380                                    ; preds = %2373
  br label %2381

; <label>:2381                                    ; preds = %2380, %2001
  %2382 = phi float [ 0.000000e+00, %2001 ], [ %2374, %2380 ]
  %2383 = phi float [ 0.000000e+00, %2001 ], [ %2375, %2380 ]
  %2384 = phi float [ 0.000000e+00, %2001 ], [ %2376, %2380 ]
  %2385 = call float @dx.op.dot3.f32(i32 55, float %2382, float %2383, float %2384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2386 = select i1 %132, float 0.000000e+00, float %2382
  %2387 = select i1 %132, float %2385, float %2383
  %2388 = select i1 %132, float 0.000000e+00, float %2384
  %2389 = fcmp fast olt float %1928, 0.000000e+00
  %2390 = call float @dx.op.unary.f32(i32 6, float %1928)  ; FAbs(value)
  %2391 = fmul fast float %2390, %1899
  %2392 = fmul fast float %2390, %1900
  %2393 = fmul fast float %2390, %1901
  %2394 = select i1 %2389, float %1899, float %2391
  %2395 = select i1 %2389, float %1900, float %2392
  %2396 = select i1 %2389, float %1901, float %2393
  %2397 = fsub fast float 1.000000e+00, %2390
  %2398 = call float @dx.op.unary.f32(i32 7, float %2397)  ; Saturate(value)
  %2399 = fmul fast float %2398, %2386
  %2400 = fmul fast float %2398, %2387
  %2401 = fmul fast float %2398, %2388
  %2402 = fadd fast float %2394, %2399
  %2403 = fadd fast float %2395, %2400
  %2404 = fadd fast float %2396, %2401
  br label %2405

; <label>:2405                                    ; preds = %2381, %1880
  %2406 = phi float [ %1899, %1880 ], [ %2402, %2381 ]
  %2407 = phi float [ %1900, %1880 ], [ %2403, %2381 ]
  %2408 = phi float [ %1901, %1880 ], [ %2404, %2381 ]
  %2409 = fmul fast float %1917, %1895
  %2410 = fmul fast float %1917, %1896
  %2411 = fmul fast float %1917, %1897
  %2412 = fmul fast float %2406, %1912
  %2413 = fmul fast float %2407, %1913
  %2414 = fmul fast float %2408, %1914
  %2415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2416 = extractvalue %dx.types.CBufRet.f32 %2415, 3
  %2417 = fcmp fast oeq float %2416, 0.000000e+00
  br i1 %2417, label %3808, label %2418

; <label>:2418                                    ; preds = %2405
  %2419 = extractvalue %dx.types.CBufRet.f32 %2415, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2415, 1
  %2421 = extractvalue %dx.types.CBufRet.f32 %2415, 2
  %2422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2423 = extractvalue %dx.types.CBufRet.f32 %2422, 0
  %2424 = extractvalue %dx.types.CBufRet.f32 %2422, 1
  %2425 = extractvalue %dx.types.CBufRet.f32 %2422, 2
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2429 = call float @dx.op.dot3.f32(i32 55, float %2423, float %2424, float %2425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2430 = select i1 %132, float %2427, float %2423
  %2431 = select i1 %132, float %2429, float %2424
  %2432 = select i1 %132, float %2428, float %2425
  %2433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2434 = extractvalue %dx.types.CBufRet.f32 %2433, 2
  %2435 = fmul fast float %2434, %238
  %2436 = fmul fast float %2434, %239
  %2437 = fmul fast float %2434, %240
  %2438 = fadd fast float %2435, %307
  %2439 = fadd fast float %2436, %308
  %2440 = fadd fast float %2437, %309
  %2441 = fcmp fast olt float %2416, 0.000000e+00
  br i1 %2441, label %3537, label %2442

; <label>:2442                                    ; preds = %2418
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.CBufRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.CBufRet.f32 %2443, 2
  %2447 = extractvalue %dx.types.CBufRet.f32 %2443, 3
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = extractvalue %dx.types.CBufRet.f32 %2448, 1
  %2451 = extractvalue %dx.types.CBufRet.f32 %2448, 2
  %2452 = extractvalue %dx.types.CBufRet.f32 %2448, 3
  %2453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2454 = extractvalue %dx.types.CBufRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.CBufRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.CBufRet.f32 %2453, 2
  %2457 = extractvalue %dx.types.CBufRet.f32 %2453, 3
  %2458 = fmul fast float %2444, %2438
  %2459 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2445, float %2458)  ; FMad(a,b,c)
  %2460 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %2446, float %2459)  ; FMad(a,b,c)
  %2461 = fadd fast float %2460, %2447
  %2462 = fmul fast float %2449, %2438
  %2463 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2450, float %2462)  ; FMad(a,b,c)
  %2464 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %2451, float %2463)  ; FMad(a,b,c)
  %2465 = fadd fast float %2464, %2452
  %2466 = fmul fast float %2454, %2438
  %2467 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2455, float %2466)  ; FMad(a,b,c)
  %2468 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %2456, float %2467)  ; FMad(a,b,c)
  %2469 = fadd fast float %2468, %2457
  %2470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2471 = extractvalue %dx.types.CBufRet.f32 %2470, 0
  %2472 = extractvalue %dx.types.CBufRet.f32 %2470, 1
  %2473 = extractvalue %dx.types.CBufRet.f32 %2470, 3
  %2474 = fmul fast float %2473, %2461
  %2475 = fmul fast float %2473, %2465
  %2476 = fadd fast float %2474, %2471
  %2477 = fadd fast float %2475, %2472
  %2478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.f32 %2478, 0
  %2480 = extractvalue %dx.types.CBufRet.f32 %2478, 1
  %2481 = extractvalue %dx.types.CBufRet.f32 %2478, 3
  %2482 = fmul fast float %2481, %2461
  %2483 = fmul fast float %2481, %2465
  %2484 = fadd fast float %2482, %2479
  %2485 = fadd fast float %2483, %2480
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2488 = fsub fast float %2487, %2469
  %2489 = extractvalue %dx.types.CBufRet.f32 %2486, 2
  %2490 = fmul fast float %2488, %2489
  %2491 = fsub fast float 1.000000e+00, %2490
  %2492 = call float @dx.op.unary.f32(i32 7, float %2491)  ; Saturate(value)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2478, 2
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 2
  %2496 = fadd fast float %2495, %2493
  %2497 = fcmp fast ogt float %2496, 0.000000e+00
  br i1 %2497, label %2498, label %2522

; <label>:2498                                    ; preds = %2442
  %2499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2500 = extractvalue %dx.types.CBufRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.CBufRet.f32 %2499, 1
  %2502 = fsub fast float %2484, %2500
  %2503 = fsub fast float %2485, %2501
  %2504 = fcmp fast olt float %2502, 0.000000e+00
  %2505 = fcmp fast olt float %2503, 0.000000e+00
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2509 = extractvalue %dx.types.CBufRet.f32 %2506, 2
  %2510 = extractvalue %dx.types.CBufRet.f32 %2506, 3
  %2511 = select i1 %2504, float %2507, float %2509
  %2512 = select i1 %2505, float %2508, float %2510
  %2513 = fmul fast float %2511, %2502
  %2514 = fmul fast float %2512, %2503
  %2515 = call float @dx.op.unary.f32(i32 6, float %2513)  ; FAbs(value)
  %2516 = call float @dx.op.unary.f32(i32 6, float %2514)  ; FAbs(value)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  %2518 = call float @dx.op.binary.f32(i32 35, float %2515, float %2516)  ; FMax(a,b)
  %2519 = fsub fast float %2517, %2518
  %2520 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  %2521 = fmul fast float %2520, %2492
  br label %2522

; <label>:2522                                    ; preds = %2498, %2442
  %2523 = phi float [ %2521, %2498 ], [ 0.000000e+00, %2442 ]
  %2524 = extractvalue %dx.types.CBufRet.f32 %2470, 2
  %2525 = extractvalue %dx.types.CBufRet.f32 %2494, 1
  %2526 = fadd fast float %2525, %2524
  %2527 = fcmp fast ogt float %2526, 0.000000e+00
  %2528 = extractvalue %dx.types.CBufRet.f32 %2433, 0
  br i1 %2527, label %2529, label %2552

; <label>:2529                                    ; preds = %2522
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 0
  %2532 = extractvalue %dx.types.CBufRet.f32 %2530, 1
  %2533 = fsub fast float %2476, %2531
  %2534 = fsub fast float %2477, %2532
  %2535 = fcmp fast olt float %2533, 0.000000e+00
  %2536 = fcmp fast olt float %2534, 0.000000e+00
  %2537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.f32 %2537, 0
  %2539 = extractvalue %dx.types.CBufRet.f32 %2537, 1
  %2540 = extractvalue %dx.types.CBufRet.f32 %2537, 2
  %2541 = extractvalue %dx.types.CBufRet.f32 %2537, 3
  %2542 = select i1 %2535, float %2538, float %2540
  %2543 = select i1 %2536, float %2539, float %2541
  %2544 = fmul fast float %2542, %2533
  %2545 = fmul fast float %2543, %2534
  %2546 = call float @dx.op.unary.f32(i32 6, float %2544)  ; FAbs(value)
  %2547 = call float @dx.op.unary.f32(i32 6, float %2545)  ; FAbs(value)
  %2548 = call float @dx.op.binary.f32(i32 35, float %2546, float %2547)  ; FMax(a,b)
  %2549 = fsub fast float %2528, %2548
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2551 = fmul fast float %2550, %2492
  br label %2552

; <label>:2552                                    ; preds = %2529, %2522
  %2553 = phi float [ %2551, %2529 ], [ 0.000000e+00, %2522 ]
  %2554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2555 = extractvalue %dx.types.CBufRet.f32 %2554, 1
  %2556 = call float @dx.op.unary.f32(i32 7, float %2555)  ; Saturate(value)
  %2557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2558 = extractvalue %dx.types.CBufRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.CBufRet.f32 %2557, 1
  %2560 = fsub fast float %2461, %2558
  %2561 = fsub fast float %2465, %2559
  %2562 = fcmp fast olt float %2560, 0.000000e+00
  %2563 = fcmp fast olt float %2561, 0.000000e+00
  %2564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2565 = extractvalue %dx.types.CBufRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.CBufRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.CBufRet.f32 %2564, 2
  %2568 = extractvalue %dx.types.CBufRet.f32 %2564, 3
  %2569 = select i1 %2562, float %2565, float %2567
  %2570 = select i1 %2563, float %2566, float %2568
  %2571 = fmul fast float %2569, %2560
  %2572 = fmul fast float %2570, %2561
  %2573 = call float @dx.op.unary.f32(i32 6, float %2571)  ; FAbs(value)
  %2574 = call float @dx.op.unary.f32(i32 6, float %2572)  ; FAbs(value)
  %2575 = call float @dx.op.binary.f32(i32 35, float %2573, float %2574)  ; FMax(a,b)
  %2576 = fsub fast float %2528, %2575
  %2577 = call float @dx.op.unary.f32(i32 7, float %2576)  ; Saturate(value)
  %2578 = call float @dx.op.binary.f32(i32 36, float %2577, float %2556)  ; FMin(a,b)
  %2579 = fmul fast float %2578, %2492
  %2580 = fsub fast float %2553, %2579
  %2581 = fsub fast float %2523, %2553
  %2582 = fsub fast float %2581, %2579
  %2583 = call float @dx.op.binary.f32(i32 35, float %2553, float %2523)  ; FMax(a,b)
  %2584 = call float @dx.op.binary.f32(i32 35, float %2579, float %2583)  ; FMax(a,b)
  %2585 = fcmp fast olt float %2584, 1.000000e+00
  br i1 %2585, label %2586, label %2984, !dx.controlflow.hints !100

; <label>:2586                                    ; preds = %2552
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = fcmp fast une float %2588, 0.000000e+00
  br i1 %2589, label %2590, label %2984, !dx.controlflow.hints !101

; <label>:2590                                    ; preds = %2586
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 0
  %2593 = extractvalue %dx.types.CBufRet.f32 %2591, 1
  %2594 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2595 = extractvalue %dx.types.CBufRet.f32 %2591, 3
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 0
  %2598 = extractvalue %dx.types.CBufRet.f32 %2596, 1
  %2599 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2600 = extractvalue %dx.types.CBufRet.f32 %2596, 3
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.CBufRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.CBufRet.f32 %2601, 2
  %2605 = extractvalue %dx.types.CBufRet.f32 %2601, 3
  %2606 = fmul fast float %2592, %2438
  %2607 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2593, float %2606)  ; FMad(a,b,c)
  %2608 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %2594, float %2607)  ; FMad(a,b,c)
  %2609 = fadd fast float %2608, %2595
  %2610 = fmul fast float %2597, %2438
  %2611 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2598, float %2610)  ; FMad(a,b,c)
  %2612 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %2599, float %2611)  ; FMad(a,b,c)
  %2613 = fadd fast float %2612, %2600
  %2614 = fmul fast float %2602, %2438
  %2615 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2603, float %2614)  ; FMad(a,b,c)
  %2616 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %2604, float %2615)  ; FMad(a,b,c)
  %2617 = fadd fast float %2616, %2605
  %2618 = fcmp fast oge float %2609, 1.000000e+00
  %2619 = fcmp fast oge float %2613, 1.000000e+00
  %2620 = or i1 %2618, %2619
  %2621 = fcmp fast olt float %2609, 0.000000e+00
  %2622 = fcmp fast olt float %2613, 0.000000e+00
  %2623 = or i1 %2621, %2622
  %2624 = or i1 %2620, %2623
  br i1 %2624, label %2984, label %2625, !dx.controlflow.hints !102

; <label>:2625                                    ; preds = %2590
  %2626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2627 = extractvalue %dx.types.CBufRet.f32 %2626, 0
  %2628 = extractvalue %dx.types.CBufRet.f32 %2626, 1
  %2629 = extractvalue %dx.types.CBufRet.f32 %2626, 2
  %2630 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.i32 %2630, 2
  %2632 = uitofp i32 %2631 to float
  %2633 = extractvalue %dx.types.CBufRet.i32 %2630, 3
  %2634 = uitofp i32 %2633 to float
  %2635 = extractvalue %dx.types.CBufRet.f32 %2626, 3
  %2636 = fmul fast float %2635, 2.000000e+00
  %2637 = fsub fast float %2609, %2627
  %2638 = fsub fast float %2613, %2628
  %2639 = fmul fast float %2636, %2637
  %2640 = fmul fast float %2636, %2638
  %2641 = fdiv fast float 1.000000e+00, %2421
  %2642 = fmul fast float %2640, %2641
  %2643 = call float @dx.op.unary.f32(i32 6, float %2642)  ; FAbs(value)
  %2644 = fmul fast float %2629, %2440
  %2645 = fmul fast float %2644, %2636
  %2646 = call float @dx.op.unary.f32(i32 6, float %2645)  ; FAbs(value)
  %2647 = call float @dx.op.unary.f32(i32 6, float %2639)  ; FAbs(value)
  %2648 = call float @dx.op.binary.f32(i32 35, float %2646, float %2643)  ; FMax(a,b)
  %2649 = call float @dx.op.binary.f32(i32 35, float %2647, float %2648)  ; FMax(a,b)
  %2650 = fmul fast float %2649, 2.000000e+00
  %2651 = call float @dx.op.unary.f32(i32 23, float %2650)  ; Log(value)
  %2652 = call float @dx.op.binary.f32(i32 35, float %2651, float %2632)  ; FMax(a,b)
  %2653 = call float @dx.op.unary.f32(i32 22, float %2652)  ; Frc(value)
  %2654 = fadd fast float %2653, 0xBFEA666660000000
  %2655 = fmul fast float %2654, 8.000000e+00
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  %2657 = call float @dx.op.unary.f32(i32 27, float %2652)  ; Round_ni(value)
  %2658 = fadd fast float %2657, %2656
  %2659 = call float @dx.op.binary.f32(i32 36, float %2658, float %2634)  ; FMin(a,b)
  %2660 = call float @dx.op.unary.f32(i32 27, float %2659)  ; Round_ni(value)
  %2661 = fsub fast float -0.000000e+00, %2660
  %2662 = call float @dx.op.unary.f32(i32 21, float %2661)  ; Exp(value)
  %2663 = fmul fast float %2662, %2636
  %2664 = fmul fast float %2663, %2609
  %2665 = fmul fast float %2663, %2613
  %2666 = fmul fast float %2664, 2.500000e-01
  %2667 = fmul fast float %2665, 2.500000e-01
  %2668 = fadd fast float %2666, 5.000000e-01
  %2669 = fadd fast float %2667, 5.000000e-01
  %2670 = fsub fast float %2634, %2632
  %2671 = fptoui float %2670 to i32
  %2672 = add i32 %2671, 320
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %2672)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 0
  %2675 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2676 = fcmp fast une float %2659, %2634
  %2677 = fsub fast float %2609, %2674
  %2678 = fsub fast float %2613, %2675
  %2679 = call float @dx.op.unary.f32(i32 6, float %2677)  ; FAbs(value)
  %2680 = call float @dx.op.unary.f32(i32 6, float %2678)  ; FAbs(value)
  %2681 = fmul fast float %2679, %2663
  %2682 = fmul fast float %2680, %2663
  %2683 = fcmp fast olt float %2681, 1.000000e+00
  %2684 = fcmp fast olt float %2682, 1.000000e+00
  %2685 = and i1 %2683, %2684
  %2686 = or i1 %2676, %2685
  br i1 %2686, label %2687, label %2984, !dx.controlflow.hints !103

; <label>:2687                                    ; preds = %2625
  %2688 = fmul fast float %2665, 5.000000e-01
  %2689 = fmul fast float %2664, 5.000000e-01
  %2690 = fadd fast float %2688, 5.000000e-01
  %2691 = fadd fast float %2689, 5.000000e-01
  %2692 = sitofp i32 %2631 to float
  %2693 = fsub fast float %2659, %2692
  %2694 = call float @dx.op.unary.f32(i32 27, float %2693)  ; Round_ni(value)
  %2695 = call float @dx.op.unary.f32(i32 22, float %2659)  ; Frc(value)
  %2696 = call float @dx.op.unary.f32(i32 22, float %2691)  ; Frc(value)
  %2697 = call float @dx.op.unary.f32(i32 22, float %2690)  ; Frc(value)
  %2698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %2696, float %2697, float %2694, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = extractvalue %dx.types.ResRet.f32 %2698, 3
  %2703 = fcmp fast ogt float %2695, 0.000000e+00
  br i1 %2703, label %2704, label %2725, !dx.controlflow.hints !104

; <label>:2704                                    ; preds = %2687
  %2705 = fadd fast float %2694, 1.000000e+00
  %2706 = call float @dx.op.unary.f32(i32 22, float %2668)  ; Frc(value)
  %2707 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %2706, float %2707, float %2705, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.ResRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.ResRet.f32 %2708, 2
  %2712 = extractvalue %dx.types.ResRet.f32 %2708, 3
  %2713 = fsub fast float %2709, %2699
  %2714 = fsub fast float %2710, %2700
  %2715 = fsub fast float %2711, %2701
  %2716 = fsub fast float %2712, %2702
  %2717 = fmul fast float %2713, %2695
  %2718 = fmul fast float %2714, %2695
  %2719 = fmul fast float %2715, %2695
  %2720 = fmul fast float %2716, %2695
  %2721 = fadd fast float %2717, %2699
  %2722 = fadd fast float %2718, %2700
  %2723 = fadd fast float %2719, %2701
  %2724 = fadd fast float %2720, %2702
  br label %2725

; <label>:2725                                    ; preds = %2704, %2687
  %2726 = phi float [ %2721, %2704 ], [ %2699, %2687 ]
  %2727 = phi float [ %2722, %2704 ], [ %2700, %2687 ]
  %2728 = phi float [ %2723, %2704 ], [ %2701, %2687 ]
  %2729 = phi float [ %2724, %2704 ], [ %2702, %2687 ]
  %2730 = fadd fast float %2726, -5.000000e-01
  %2731 = fadd fast float %2728, -5.000000e-01
  %2732 = fmul fast float %2730, 0xBFD5555560000000
  %2733 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2731, float %2732)  ; FMad(a,b,c)
  %2734 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2727, float 0.000000e+00)  ; FMad(a,b,c)
  %2735 = fadd fast float %2734, %2729
  %2736 = fmul fast float %2730, -7.500000e-01
  %2737 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2731, float %2736)  ; FMad(a,b,c)
  %2738 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2727, float 0.000000e+00)  ; FMad(a,b,c)
  %2739 = fadd fast float %2738, %2729
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.CBufRet.f32 %2742, 2
  %2746 = extractvalue %dx.types.CBufRet.f32 %2742, 3
  %2747 = fsub fast float %2743, %2733
  %2748 = fsub fast float %2744, %2735
  %2749 = fsub fast float %2745, %2737
  %2750 = fsub fast float %2746, %2739
  %2751 = fmul fast float %2747, %2741
  %2752 = fmul fast float %2748, %2741
  %2753 = fmul fast float %2749, %2741
  %2754 = fmul fast float %2750, %2741
  %2755 = fadd fast float %2751, %2733
  %2756 = fadd fast float %2752, %2735
  %2757 = fadd fast float %2753, %2737
  %2758 = fadd fast float %2754, %2739
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = and i32 %2760, 536870911
  %2762 = uitofp i32 %2761 to float
  %2763 = fmul fast float %2762, %2609
  %2764 = fmul fast float %2762, %2613
  %2765 = fptoui float %2763 to i32
  %2766 = fptoui float %2764 to i32
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = and i32 %2768, 31
  %2770 = lshr i32 %2765, %2769
  %2771 = lshr i32 %2766, %2769
  %2772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2773 = extractvalue %dx.types.ResRet.i32 %2772, 0
  %2774 = and i32 %2773, 31
  %2775 = shl i32 1, %2774
  %2776 = call i32 @dx.op.binary.i32(i32 40, i32 %2775, i32 4)  ; UMin(a,b)
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = extractvalue %dx.types.ResRet.i32 %2777, 1
  %2780 = icmp eq i32 %2776, 0
  br i1 %2780, label %2822, label %2781

; <label>:2781                                    ; preds = %2725
  br label %2782

; <label>:2782                                    ; preds = %2810, %2781
  %2783 = phi i32 [ %2813, %2810 ], [ 0, %2781 ]
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = lshr i32 %2785, 16
  %2787 = and i32 %2786, 31
  %2788 = shl i32 %2771, %2787
  %2789 = add i32 %2788, %2770
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = and i32 %2791, 31
  %2793 = shl i32 %2789, %2792
  %2794 = add i32 %2793, %2783
  %2795 = shl i32 %2794, 2
  %2796 = add i32 %2795, 32
  %2797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2796, i32 undef)  ; BufferLoad(srv,index,wot)
  %2798 = extractvalue %dx.types.ResRet.i32 %2797, 0
  %2799 = icmp slt i32 %2798, 0
  %2800 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %2783
  %2801 = getelementptr [12 x float], [12 x float]* %67, i32 0, i32 %2783
  %2802 = bitcast float* %2800 to i32*
  %2803 = bitcast float* %2801 to i32*
  br i1 %2799, label %2804, label %2810

; <label>:2804                                    ; preds = %2782
  %2805 = and i32 %2798, 1073741823
  %2806 = add nuw nsw i32 %2805, 20
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = extractvalue %dx.types.ResRet.i32 %2807, 1
  br label %2810

; <label>:2810                                    ; preds = %2804, %2782
  %2811 = phi i32 [ %2808, %2804 ], [ %2778, %2782 ]
  %2812 = phi i32 [ %2809, %2804 ], [ %2779, %2782 ]
  store i32 %2811, i32* %2802, align 4
  store i32 %2812, i32* %2803, align 4
  %2813 = add nuw i32 %2783, 1
  %2814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.i32 %2814, 2
  %2816 = icmp eq i32 %2815, 0
  %2817 = icmp ugt i32 %2798, -1073741825
  %2818 = and i1 %2817, %2816
  %2819 = icmp ult i32 %2813, %2776
  %2820 = and i1 %2818, %2819
  br i1 %2820, label %2782, label %2821

; <label>:2821                                    ; preds = %2810
  br label %2822

; <label>:2822                                    ; preds = %2821, %2725
  %2823 = phi i32 [ 0, %2725 ], [ %2813, %2821 ]
  %2824 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2825 = fptoui float %2824 to i32
  %2826 = icmp eq i32 %2825, 0
  br i1 %2826, label %2878, label %2827

; <label>:2827                                    ; preds = %2822
  br label %2828

; <label>:2828                                    ; preds = %2873, %2827
  %2829 = phi i32 [ %2874, %2873 ], [ %2823, %2827 ]
  %2830 = phi i32 [ %2875, %2873 ], [ 0, %2827 ]
  %2831 = lshr i32 %2830, 2
  %2832 = and i32 %2830, 3
  %2833 = add nuw nsw i32 %2831, 83
  %2834 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 %2833)  ; CBufferLoadLegacy(handle,regIndex)
  %2835 = extractvalue %dx.types.CBufRet.i32 %2834, 0
  %2836 = extractvalue %dx.types.CBufRet.i32 %2834, 1
  %2837 = extractvalue %dx.types.CBufRet.i32 %2834, 2
  %2838 = extractvalue %dx.types.CBufRet.i32 %2834, 3
  %2839 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 0
  store i32 %2835, i32* %2839, align 4
  %2840 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 1
  store i32 %2836, i32* %2840, align 4
  %2841 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 2
  store i32 %2837, i32* %2841, align 4
  %2842 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 3
  store i32 %2838, i32* %2842, align 4
  %2843 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 %2832
  %2844 = load i32, i32* %2843, align 4, !tbaa !105, !noalias !109
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = lshr i32 %2846, 16
  %2848 = and i32 %2847, 31
  %2849 = shl i32 %2771, %2848
  %2850 = add i32 %2849, %2770
  %2851 = shl i32 %2850, 2
  %2852 = add i32 %2851, %2844
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = icmp eq i32 %2854, 0
  br i1 %2855, label %2873, label %2856

; <label>:2856                                    ; preds = %2828
  %2857 = icmp slt i32 %2854, 0
  %2858 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %2829
  %2859 = getelementptr [12 x float], [12 x float]* %67, i32 0, i32 %2829
  %2860 = bitcast float* %2858 to i32*
  %2861 = bitcast float* %2859 to i32*
  br i1 %2857, label %2862, label %2869

; <label>:2862                                    ; preds = %2856
  %2863 = and i32 %2854, 1073741823
  %2864 = add i32 %2844, 20
  %2865 = add i32 %2864, %2863
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = extractvalue %dx.types.ResRet.i32 %2866, 1
  br label %2869

; <label>:2869                                    ; preds = %2862, %2856
  %2870 = phi i32 [ %2867, %2862 ], [ %2778, %2856 ]
  %2871 = phi i32 [ %2868, %2862 ], [ %2779, %2856 ]
  store i32 %2870, i32* %2860, align 4
  store i32 %2871, i32* %2861, align 4
  %2872 = add i32 %2829, 1
  br label %2873

; <label>:2873                                    ; preds = %2869, %2828
  %2874 = phi i32 [ %2829, %2828 ], [ %2872, %2869 ]
  %2875 = add nuw i32 %2830, 1
  %2876 = icmp eq i32 %2875, %2825
  br i1 %2876, label %2877, label %2828

; <label>:2877                                    ; preds = %2873
  br label %2878

; <label>:2878                                    ; preds = %2877, %2822
  %2879 = phi i32 [ %2823, %2822 ], [ %2874, %2877 ]
  %2880 = icmp eq i32 %2879, 1
  %2881 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 0
  %2882 = getelementptr [12 x float], [12 x float]* %67, i32 0, i32 0
  br i1 %2880, label %2883, label %2886

; <label>:2883                                    ; preds = %2878
  %2884 = load float, float* %2881, align 4
  %2885 = load float, float* %2882, align 4
  br label %2913

; <label>:2886                                    ; preds = %2878
  %2887 = load float, float* %2881, align 4
  %2888 = load float, float* %2882, align 4
  %2889 = fdiv fast float 1.000000e+00, %2888
  %2890 = fsub fast float %2887, %2889
  %2891 = icmp ugt i32 %2879, 1
  br i1 %2891, label %2892, label %2908

; <label>:2892                                    ; preds = %2886
  br label %2893

; <label>:2893                                    ; preds = %2893, %2892
  %2894 = phi float [ %2903, %2893 ], [ %2890, %2892 ]
  %2895 = phi float [ %2904, %2893 ], [ %2887, %2892 ]
  %2896 = phi i32 [ %2905, %2893 ], [ 1, %2892 ]
  %2897 = getelementptr [12 x float], [12 x float]* %66, i32 0, i32 %2896
  %2898 = load float, float* %2897, align 4
  %2899 = getelementptr [12 x float], [12 x float]* %67, i32 0, i32 %2896
  %2900 = load float, float* %2899, align 4
  %2901 = fdiv fast float 1.000000e+00, %2900
  %2902 = fsub fast float %2898, %2901
  %2903 = call float @dx.op.binary.f32(i32 36, float %2894, float %2902)  ; FMin(a,b)
  %2904 = call float @dx.op.binary.f32(i32 35, float %2895, float %2898)  ; FMax(a,b)
  %2905 = add nuw i32 %2896, 1
  %2906 = icmp eq i32 %2905, %2879
  br i1 %2906, label %2907, label %2893

; <label>:2907                                    ; preds = %2893
  br label %2908

; <label>:2908                                    ; preds = %2907, %2886
  %2909 = phi float [ %2890, %2886 ], [ %2903, %2907 ]
  %2910 = phi float [ %2887, %2886 ], [ %2904, %2907 ]
  %2911 = fsub fast float %2910, %2909
  %2912 = fdiv fast float 1.000000e+00, %2911
  br label %2913

; <label>:2913                                    ; preds = %2908, %2883
  %2914 = phi float [ %2884, %2883 ], [ %2910, %2908 ]
  %2915 = phi float [ %2885, %2883 ], [ %2912, %2908 ]
  %2916 = fadd fast float %2617, %2914
  %2917 = fmul fast float %2916, %2915
  %2918 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  %2919 = fmul fast float %2918, 2.000000e+00
  %2920 = fsub fast float 1.000000e+00, %2919
  %2921 = fmul fast float %2755, %2755
  %2922 = fsub fast float %2756, %2921
  %2923 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %2922)  ; FMax(a,b)
  %2924 = fdiv fast float 1.000000e+00, %2923
  %2925 = fmul fast float %2756, %2755
  %2926 = fsub fast float %2757, %2925
  %2927 = fsub fast float %2920, %2755
  %2928 = fmul fast float %2920, %2920
  %2929 = fsub fast float %2928, %2756
  %2930 = fmul fast float %2924, %2926
  %2931 = fmul fast float %2930, %2927
  %2932 = fsub fast float %2929, %2931
  %2933 = fmul fast float %2756, %2756
  %2934 = fsub fast float %2758, %2933
  %2935 = fmul fast float %2926, %2926
  %2936 = fmul fast float %2935, %2924
  %2937 = fsub fast float %2934, %2936
  %2938 = fdiv fast float %2932, %2937
  %2939 = fmul fast float %2938, %2926
  %2940 = fsub fast float %2927, %2939
  %2941 = fmul fast float %2940, %2924
  %2942 = fmul fast float %2941, %2755
  %2943 = fsub fast float 1.000000e+00, %2942
  %2944 = fmul fast float %2938, %2756
  %2945 = fsub fast float %2943, %2944
  %2946 = fmul fast float %2941, %2941
  %2947 = fmul fast float %2938, 4.000000e+00
  %2948 = fmul fast float %2947, %2945
  %2949 = fsub fast float %2946, %2948
  %2950 = call float @dx.op.unary.f32(i32 24, float %2949)  ; Sqrt(value)
  %2951 = fcmp fast oge float %2941, 0.000000e+00
  %2952 = fsub fast float -0.000000e+00, %2950
  %2953 = select i1 %2951, float %2952, float %2950
  %2954 = fsub fast float %2953, %2941
  %2955 = fdiv fast float %2954, %2938
  %2956 = fdiv fast float %2945, %2954
  %2957 = fmul fast float %2955, 5.000000e-01
  %2958 = fmul fast float %2956, 2.000000e+00
  %2959 = select i1 %2951, float %2957, float %2958
  %2960 = select i1 %2951, float %2958, float %2957
  %2961 = call float @dx.op.binary.f32(i32 35, float %2959, float %2960)  ; FMax(a,b)
  %2962 = call float @dx.op.binary.f32(i32 36, float %2959, float %2960)  ; FMin(a,b)
  %2963 = fcmp fast ogt float %2920, %2961
  %2964 = fsub fast float %2920, %2962
  %2965 = fsub fast float %2920, %2961
  %2966 = fsub fast float %2961, %2962
  %2967 = select i1 %2963, float %2965, float %2966
  %2968 = fmul float %2964, %2967
  %2969 = select i1 %2963, float %2962, float %2920
  %2970 = fcmp fast ogt float %2920, %2962
  %2971 = fmul fast float %2969, %2961
  %2972 = fadd fast float %2969, %2961
  %2973 = fmul fast float %2972, %2755
  %2974 = fadd fast float %2971, %2756
  %2975 = fsub fast float %2974, %2973
  %2976 = fdiv fast float %2975, %2968
  %2977 = select i1 %2970, float %2976, float 0.000000e+00
  %2978 = fsub fast float 1.000000e+00, %2977
  %2979 = select i1 %2963, float %2978, float %2977
  %2980 = call float @dx.op.unary.f32(i32 7, float %2979)  ; Saturate(value)
  %2981 = extractvalue %dx.types.CBufRet.f32 %2740, 3
  %2982 = fmul fast float %2981, %2980
  %2983 = fsub fast float 1.000000e+00, %2982
  br label %2984

; <label>:2984                                    ; preds = %2913, %2625, %2590, %2586, %2552
  %2985 = phi float [ 1.000000e+00, %2552 ], [ %2983, %2913 ], [ 1.000000e+00, %2590 ], [ 1.000000e+00, %2625 ], [ 1.000000e+00, %2586 ]
  %2986 = fcmp fast ogt float %2582, 0.000000e+00
  br i1 %2986, label %2987, label %3149, !dx.controlflow.hints !118

; <label>:2987                                    ; preds = %2984
  %2988 = fadd fast float %2495, %2469
  %2989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %2990 = extractvalue %dx.types.CBufRet.f32 %2989, 2
  %2991 = extractvalue %dx.types.CBufRet.f32 %2989, 3
  %2992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %2993 = extractvalue %dx.types.CBufRet.f32 %2992, 2
  %2994 = call float @dx.op.binary.f32(i32 35, float %2988, float 0.000000e+00)  ; FMax(a,b)
  %2995 = fadd fast float %2994, 0x3F10000000000000
  %2996 = fcmp fast oeq float %2993, 0.000000e+00
  br i1 %2996, label %2997, label %3064

; <label>:2997                                    ; preds = %2987
  %2998 = extractvalue %dx.types.CBufRet.f32 %2989, 1
  %2999 = extractvalue %dx.types.CBufRet.f32 %2989, 0
  %3000 = fmul fast float %2999, %2484
  %3001 = fmul fast float %2998, %2485
  %3002 = fadd fast float %3000, 5.000000e-01
  %3003 = call float @dx.op.unary.f32(i32 27, float %3002)  ; Round_ni(value)
  %3004 = fadd fast float %3001, 5.000000e-01
  %3005 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3006 = fsub fast float %3002, %3003
  %3007 = fsub fast float %3004, %3005
  %3008 = fadd fast float %3003, -5.000000e-01
  %3009 = fadd fast float %3005, -5.000000e-01
  %3010 = fmul fast float %3006, 2.000000e+00
  %3011 = fsub fast float 3.000000e+00, %3010
  %3012 = fadd fast float %3010, 1.000000e+00
  %3013 = fsub fast float 2.000000e+00, %3006
  %3014 = bitcast float %3011 to i32
  %3015 = sub nsw i32 2129859010, %3014
  %3016 = bitcast i32 %3015 to float
  %3017 = fmul fast float %3016, %3013
  %3018 = fadd fast float %3017, -1.000000e+00
  %3019 = bitcast float %3012 to i32
  %3020 = sub nsw i32 2129859010, %3019
  %3021 = bitcast i32 %3020 to float
  %3022 = fmul fast float %3021, %3006
  %3023 = fadd fast float %3022, 1.000000e+00
  %3024 = fmul fast float %3007, 2.000000e+00
  %3025 = fsub fast float 3.000000e+00, %3024
  %3026 = fadd fast float %3024, 1.000000e+00
  %3027 = fsub fast float 2.000000e+00, %3007
  %3028 = bitcast float %3025 to i32
  %3029 = sub nsw i32 2129859010, %3028
  %3030 = bitcast i32 %3029 to float
  %3031 = fmul fast float %3030, %3027
  %3032 = fadd fast float %3031, -1.000000e+00
  %3033 = bitcast float %3026 to i32
  %3034 = sub nsw i32 2129859010, %3033
  %3035 = bitcast i32 %3034 to float
  %3036 = fmul fast float %3035, %3007
  %3037 = fadd fast float %3036, 1.000000e+00
  %3038 = fadd fast float %3018, %3008
  %3039 = fmul fast float %3038, %2990
  %3040 = fadd fast float %3032, %3009
  %3041 = fmul fast float %3040, %2991
  %3042 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %43, float %3039, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float %2995)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3043 = extractvalue %dx.types.ResRet.f32 %3042, 0
  %3044 = fmul fast float %3043, %3011
  %3045 = fadd fast float %3023, %3008
  %3046 = fmul fast float %3045, %2990
  %3047 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %43, float %3046, float %3041, float undef, float undef, i32 0, i32 0, i32 undef, float %2995)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = fmul fast float %3048, %3012
  %3050 = fadd fast float %3037, %3009
  %3051 = fmul fast float %3050, %2991
  %3052 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %43, float %3039, float %3051, float undef, float undef, i32 0, i32 0, i32 undef, float %2995)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3053 = extractvalue %dx.types.ResRet.f32 %3052, 0
  %3054 = fmul fast float %3053, %3011
  %3055 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %43, float %3046, float %3051, float undef, float undef, i32 0, i32 0, i32 undef, float %2995)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3056 = extractvalue %dx.types.ResRet.f32 %3055, 0
  %3057 = fmul fast float %3056, %3012
  %3058 = fadd fast float %3057, %3054
  %3059 = fmul fast float %3058, %3026
  %3060 = fadd fast float %3049, %3044
  %3061 = fmul fast float %3060, %3025
  %3062 = fadd fast float %3061, %3059
  %3063 = fmul fast float %3062, 6.250000e-02
  br label %3149

; <label>:3064                                    ; preds = %2987
  %3065 = fmul fast float %143, 0x401921FB60000000
  %3066 = call float @dx.op.unary.f32(i32 13, float %3065)  ; Sin(value)
  %3067 = call float @dx.op.unary.f32(i32 12, float %3065)  ; Cos(value)
  %3068 = fsub fast float -0.000000e+00, %3066
  br label %3069

; <label>:3069                                    ; preds = %3118, %3064
  %3070 = phi float [ 0.000000e+00, %3064 ], [ %3113, %3118 ]
  %3071 = phi float [ 0.000000e+00, %3064 ], [ %3115, %3118 ]
  %3072 = phi i32 [ 0, %3064 ], [ %3119, %3118 ]
  %3073 = mul i32 %3072, 2
  %3074 = add i32 0, %3073
  %3075 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3074
  %3076 = load float, float* %3075, align 4
  %3077 = mul i32 %3072, 2
  %3078 = add i32 1, %3077
  %3079 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3078
  %3080 = load float, float* %3079, align 4
  %3081 = fmul fast float %3076, %3067
  %3082 = call float @dx.op.tertiary.f32(i32 46, float %3080, float %3068, float %3081)  ; FMad(a,b,c)
  %3083 = fmul fast float %3076, %3066
  %3084 = call float @dx.op.tertiary.f32(i32 46, float %3080, float %3067, float %3083)  ; FMad(a,b,c)
  %3085 = fmul fast float %3082, %2993
  %3086 = fmul fast float %3084, %2993
  %3087 = fadd fast float %3085, %2484
  %3088 = fadd fast float %3086, %2485
  %3089 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %42, float %3087, float %3088, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = extractvalue %dx.types.ResRet.f32 %3089, 1
  %3092 = extractvalue %dx.types.ResRet.f32 %3089, 2
  %3093 = extractvalue %dx.types.ResRet.f32 %3089, 3
  %3094 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %3090, float* %3094, align 4
  %3095 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %3091, float* %3095, align 4
  %3096 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %3092, float* %3096, align 4
  %3097 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %3093, float* %3097, align 4
  %3098 = fsub fast float %3090, %2995
  %3099 = fcmp fast olt float %3098, 0.000000e+00
  %3100 = select i1 %3099, float 0.000000e+00, float 1.000000e+00
  %3101 = fadd fast float %3100, %3070
  %3102 = fmul fast float %3100, %3098
  %3103 = fadd fast float %3102, %3071
  br label %3104

; <label>:3104                                    ; preds = %3104, %3069
  %3105 = phi i32 [ 1, %3069 ], [ %3116, %3104 ]
  %3106 = phi float [ %3103, %3069 ], [ %3115, %3104 ]
  %3107 = phi float [ %3101, %3069 ], [ %3113, %3104 ]
  %3108 = getelementptr [4 x float], [4 x float]* %70, i32 0, i32 %3105
  %3109 = load float, float* %3108, align 4, !tbaa !119, !noalias !109
  %3110 = fsub fast float %3109, %2995
  %3111 = fcmp fast olt float %3110, 0.000000e+00
  %3112 = select i1 %3111, float 0.000000e+00, float 1.000000e+00
  %3113 = fadd fast float %3112, %3107
  %3114 = fmul fast float %3112, %3110
  %3115 = fadd fast float %3114, %3106
  %3116 = add nuw nsw i32 %3105, 1
  %3117 = icmp eq i32 %3116, 4
  br i1 %3117, label %3118, label %3104, !llvm.loop !121

; <label>:3118                                    ; preds = %3104
  %3119 = add nuw nsw i32 %3072, 1
  %3120 = icmp eq i32 %3119, 8
  br i1 %3120, label %3121, label %3069, !llvm.loop !122

; <label>:3121                                    ; preds = %3118
  %3122 = fdiv fast float 1.000000e+00, %3113
  %3123 = fmul fast float %3122, %3115
  %3124 = fdiv fast float 1.000000e+00, %2995
  %3125 = fmul fast float %3123, %3124
  %3126 = call float @dx.op.unary.f32(i32 7, float %3125)  ; Saturate(value)
  %3127 = call float @dx.op.binary.f32(i32 35, float %3126, float 0.000000e+00)  ; FMax(a,b)
  %3128 = fmul fast float %3113, 3.125000e-02
  %3129 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  %3130 = fmul fast float %3129, 2.000000e+00
  %3131 = fadd fast float %3130, -1.000000e+00
  %3132 = fcmp fast ogt float %3131, 0.000000e+00
  %3133 = fcmp fast olt float %3131, 0.000000e+00
  %3134 = zext i1 %3132 to i32
  %3135 = zext i1 %3133 to i32
  %3136 = sub nsw i32 %3134, %3135
  %3137 = sitofp i32 %3136 to float
  %3138 = fmul fast float %3137, %3131
  %3139 = fsub fast float 1.000000e+00, %3138
  %3140 = fmul fast float %3139, %3139
  %3141 = fmul fast float %3140, %3139
  %3142 = fsub fast float %3139, %3141
  %3143 = fmul fast float %3142, %3127
  %3144 = fsub fast float 1.000000e+00, %3141
  %3145 = fsub fast float %3144, %3143
  %3146 = fmul fast float %3137, 5.000000e-01
  %3147 = fmul fast float %3146, %3145
  %3148 = fsub fast float 5.000000e-01, %3147
  br label %3149

; <label>:3149                                    ; preds = %3121, %2997, %2984
  %3150 = phi float [ 1.000000e+00, %2984 ], [ %3063, %2997 ], [ %3148, %3121 ]
  %3151 = fcmp fast ogt float %2580, 0.000000e+00
  br i1 %3151, label %3152, label %3316, !dx.controlflow.hints !123

; <label>:3152                                    ; preds = %3149
  %3153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3154 = extractvalue %dx.types.CBufRet.f32 %3153, 1
  %3155 = fadd fast float %3154, %2469
  %3156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3157 = extractvalue %dx.types.CBufRet.f32 %3156, 2
  %3158 = extractvalue %dx.types.CBufRet.f32 %3156, 3
  %3159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3160 = extractvalue %dx.types.CBufRet.f32 %3159, 1
  %3161 = call float @dx.op.binary.f32(i32 35, float %3155, float 0.000000e+00)  ; FMax(a,b)
  %3162 = fadd fast float %3161, 0x3F10000000000000
  %3163 = fcmp fast oeq float %3160, 0.000000e+00
  br i1 %3163, label %3164, label %3231

; <label>:3164                                    ; preds = %3152
  %3165 = extractvalue %dx.types.CBufRet.f32 %3156, 1
  %3166 = extractvalue %dx.types.CBufRet.f32 %3156, 0
  %3167 = fmul fast float %3166, %2476
  %3168 = fmul fast float %3165, %2477
  %3169 = fadd fast float %3167, 5.000000e-01
  %3170 = call float @dx.op.unary.f32(i32 27, float %3169)  ; Round_ni(value)
  %3171 = fadd fast float %3168, 5.000000e-01
  %3172 = call float @dx.op.unary.f32(i32 27, float %3171)  ; Round_ni(value)
  %3173 = fsub fast float %3169, %3170
  %3174 = fsub fast float %3171, %3172
  %3175 = fadd fast float %3170, -5.000000e-01
  %3176 = fadd fast float %3172, -5.000000e-01
  %3177 = fmul fast float %3173, 2.000000e+00
  %3178 = fsub fast float 3.000000e+00, %3177
  %3179 = fadd fast float %3177, 1.000000e+00
  %3180 = fsub fast float 2.000000e+00, %3173
  %3181 = bitcast float %3178 to i32
  %3182 = sub nsw i32 2129859010, %3181
  %3183 = bitcast i32 %3182 to float
  %3184 = fmul fast float %3183, %3180
  %3185 = fadd fast float %3184, -1.000000e+00
  %3186 = bitcast float %3179 to i32
  %3187 = sub nsw i32 2129859010, %3186
  %3188 = bitcast i32 %3187 to float
  %3189 = fmul fast float %3188, %3173
  %3190 = fadd fast float %3189, 1.000000e+00
  %3191 = fmul fast float %3174, 2.000000e+00
  %3192 = fsub fast float 3.000000e+00, %3191
  %3193 = fadd fast float %3191, 1.000000e+00
  %3194 = fsub fast float 2.000000e+00, %3174
  %3195 = bitcast float %3192 to i32
  %3196 = sub nsw i32 2129859010, %3195
  %3197 = bitcast i32 %3196 to float
  %3198 = fmul fast float %3197, %3194
  %3199 = fadd fast float %3198, -1.000000e+00
  %3200 = bitcast float %3193 to i32
  %3201 = sub nsw i32 2129859010, %3200
  %3202 = bitcast i32 %3201 to float
  %3203 = fmul fast float %3202, %3174
  %3204 = fadd fast float %3203, 1.000000e+00
  %3205 = fadd fast float %3185, %3175
  %3206 = fmul fast float %3205, %3157
  %3207 = fadd fast float %3199, %3176
  %3208 = fmul fast float %3207, %3158
  %3209 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %43, float %3206, float %3208, float undef, float undef, i32 0, i32 0, i32 undef, float %3162)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3210 = extractvalue %dx.types.ResRet.f32 %3209, 0
  %3211 = fmul fast float %3210, %3178
  %3212 = fadd fast float %3190, %3175
  %3213 = fmul fast float %3212, %3157
  %3214 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %43, float %3213, float %3208, float undef, float undef, i32 0, i32 0, i32 undef, float %3162)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3215 = extractvalue %dx.types.ResRet.f32 %3214, 0
  %3216 = fmul fast float %3215, %3179
  %3217 = fadd fast float %3204, %3176
  %3218 = fmul fast float %3217, %3158
  %3219 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %43, float %3206, float %3218, float undef, float undef, i32 0, i32 0, i32 undef, float %3162)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3220 = extractvalue %dx.types.ResRet.f32 %3219, 0
  %3221 = fmul fast float %3220, %3178
  %3222 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %43, float %3213, float %3218, float undef, float undef, i32 0, i32 0, i32 undef, float %3162)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3223 = extractvalue %dx.types.ResRet.f32 %3222, 0
  %3224 = fmul fast float %3223, %3179
  %3225 = fadd fast float %3224, %3221
  %3226 = fmul fast float %3225, %3193
  %3227 = fadd fast float %3216, %3211
  %3228 = fmul fast float %3227, %3192
  %3229 = fadd fast float %3228, %3226
  %3230 = fmul fast float %3229, 6.250000e-02
  br label %3316

; <label>:3231                                    ; preds = %3152
  %3232 = fmul fast float %143, 0x401921FB60000000
  %3233 = call float @dx.op.unary.f32(i32 13, float %3232)  ; Sin(value)
  %3234 = call float @dx.op.unary.f32(i32 12, float %3232)  ; Cos(value)
  %3235 = fsub fast float -0.000000e+00, %3233
  br label %3236

; <label>:3236                                    ; preds = %3285, %3231
  %3237 = phi float [ 0.000000e+00, %3231 ], [ %3280, %3285 ]
  %3238 = phi float [ 0.000000e+00, %3231 ], [ %3282, %3285 ]
  %3239 = phi i32 [ 0, %3231 ], [ %3286, %3285 ]
  %3240 = mul i32 %3239, 2
  %3241 = add i32 0, %3240
  %3242 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3241
  %3243 = load float, float* %3242, align 4
  %3244 = mul i32 %3239, 2
  %3245 = add i32 1, %3244
  %3246 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3245
  %3247 = load float, float* %3246, align 4
  %3248 = fmul fast float %3243, %3234
  %3249 = call float @dx.op.tertiary.f32(i32 46, float %3247, float %3235, float %3248)  ; FMad(a,b,c)
  %3250 = fmul fast float %3243, %3233
  %3251 = call float @dx.op.tertiary.f32(i32 46, float %3247, float %3234, float %3250)  ; FMad(a,b,c)
  %3252 = fmul fast float %3249, %3160
  %3253 = fmul fast float %3251, %3160
  %3254 = fadd fast float %3252, %2476
  %3255 = fadd fast float %3253, %2477
  %3256 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %42, float %3254, float %3255, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3257 = extractvalue %dx.types.ResRet.f32 %3256, 0
  %3258 = extractvalue %dx.types.ResRet.f32 %3256, 1
  %3259 = extractvalue %dx.types.ResRet.f32 %3256, 2
  %3260 = extractvalue %dx.types.ResRet.f32 %3256, 3
  %3261 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 0
  store float %3257, float* %3261, align 4
  %3262 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 1
  store float %3258, float* %3262, align 4
  %3263 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 2
  store float %3259, float* %3263, align 4
  %3264 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 3
  store float %3260, float* %3264, align 4
  %3265 = fsub fast float %3257, %3162
  %3266 = fcmp fast olt float %3265, 0.000000e+00
  %3267 = select i1 %3266, float 0.000000e+00, float 1.000000e+00
  %3268 = fadd fast float %3267, %3237
  %3269 = fmul fast float %3267, %3265
  %3270 = fadd fast float %3269, %3238
  br label %3271

; <label>:3271                                    ; preds = %3271, %3236
  %3272 = phi i32 [ 1, %3236 ], [ %3283, %3271 ]
  %3273 = phi float [ %3270, %3236 ], [ %3282, %3271 ]
  %3274 = phi float [ %3268, %3236 ], [ %3280, %3271 ]
  %3275 = getelementptr [4 x float], [4 x float]* %69, i32 0, i32 %3272
  %3276 = load float, float* %3275, align 4, !tbaa !119, !noalias !109
  %3277 = fsub fast float %3276, %3162
  %3278 = fcmp fast olt float %3277, 0.000000e+00
  %3279 = select i1 %3278, float 0.000000e+00, float 1.000000e+00
  %3280 = fadd fast float %3279, %3274
  %3281 = fmul fast float %3279, %3277
  %3282 = fadd fast float %3281, %3273
  %3283 = add nuw nsw i32 %3272, 1
  %3284 = icmp eq i32 %3283, 4
  br i1 %3284, label %3285, label %3271, !llvm.loop !121

; <label>:3285                                    ; preds = %3271
  %3286 = add nuw nsw i32 %3239, 1
  %3287 = icmp eq i32 %3286, 8
  br i1 %3287, label %3288, label %3236, !llvm.loop !122

; <label>:3288                                    ; preds = %3285
  %3289 = fdiv fast float 1.000000e+00, %3280
  %3290 = fmul fast float %3289, %3282
  %3291 = fdiv fast float 1.000000e+00, %3162
  %3292 = fmul fast float %3290, %3291
  %3293 = call float @dx.op.unary.f32(i32 7, float %3292)  ; Saturate(value)
  %3294 = call float @dx.op.binary.f32(i32 35, float %3293, float 0.000000e+00)  ; FMax(a,b)
  %3295 = fmul fast float %3280, 3.125000e-02
  %3296 = call float @dx.op.unary.f32(i32 7, float %3295)  ; Saturate(value)
  %3297 = fmul fast float %3296, 2.000000e+00
  %3298 = fadd fast float %3297, -1.000000e+00
  %3299 = fcmp fast ogt float %3298, 0.000000e+00
  %3300 = fcmp fast olt float %3298, 0.000000e+00
  %3301 = zext i1 %3299 to i32
  %3302 = zext i1 %3300 to i32
  %3303 = sub nsw i32 %3301, %3302
  %3304 = sitofp i32 %3303 to float
  %3305 = fmul fast float %3304, %3298
  %3306 = fsub fast float 1.000000e+00, %3305
  %3307 = fmul fast float %3306, %3306
  %3308 = fmul fast float %3307, %3306
  %3309 = fsub fast float %3306, %3308
  %3310 = fmul fast float %3309, %3294
  %3311 = fsub fast float 1.000000e+00, %3308
  %3312 = fsub fast float %3311, %3310
  %3313 = fmul fast float %3304, 5.000000e-01
  %3314 = fmul fast float %3313, %3312
  %3315 = fsub fast float 5.000000e-01, %3314
  br label %3316

; <label>:3316                                    ; preds = %3288, %3164, %3149
  %3317 = phi float [ 1.000000e+00, %3149 ], [ %3230, %3164 ], [ %3315, %3288 ]
  %3318 = fcmp fast ogt float %2579, 0.000000e+00
  br i1 %3318, label %3319, label %3483, !dx.controlflow.hints !124

; <label>:3319                                    ; preds = %3316
  %3320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.f32 %3320, 0
  %3322 = fadd fast float %3321, %2469
  %3323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3324 = extractvalue %dx.types.CBufRet.f32 %3323, 2
  %3325 = extractvalue %dx.types.CBufRet.f32 %3323, 3
  %3326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3327 = extractvalue %dx.types.CBufRet.f32 %3326, 0
  %3328 = call float @dx.op.binary.f32(i32 35, float %3322, float 0.000000e+00)  ; FMax(a,b)
  %3329 = fadd fast float %3328, 0x3F10000000000000
  %3330 = fcmp fast oeq float %3327, 0.000000e+00
  br i1 %3330, label %3331, label %3398

; <label>:3331                                    ; preds = %3319
  %3332 = extractvalue %dx.types.CBufRet.f32 %3323, 1
  %3333 = extractvalue %dx.types.CBufRet.f32 %3323, 0
  %3334 = fmul fast float %3333, %2461
  %3335 = fmul fast float %3332, %2465
  %3336 = fadd fast float %3334, 5.000000e-01
  %3337 = call float @dx.op.unary.f32(i32 27, float %3336)  ; Round_ni(value)
  %3338 = fadd fast float %3335, 5.000000e-01
  %3339 = call float @dx.op.unary.f32(i32 27, float %3338)  ; Round_ni(value)
  %3340 = fsub fast float %3336, %3337
  %3341 = fsub fast float %3338, %3339
  %3342 = fadd fast float %3337, -5.000000e-01
  %3343 = fadd fast float %3339, -5.000000e-01
  %3344 = fmul fast float %3340, 2.000000e+00
  %3345 = fsub fast float 3.000000e+00, %3344
  %3346 = fadd fast float %3344, 1.000000e+00
  %3347 = fsub fast float 2.000000e+00, %3340
  %3348 = bitcast float %3345 to i32
  %3349 = sub nsw i32 2129859010, %3348
  %3350 = bitcast i32 %3349 to float
  %3351 = fmul fast float %3350, %3347
  %3352 = fadd fast float %3351, -1.000000e+00
  %3353 = bitcast float %3346 to i32
  %3354 = sub nsw i32 2129859010, %3353
  %3355 = bitcast i32 %3354 to float
  %3356 = fmul fast float %3355, %3340
  %3357 = fadd fast float %3356, 1.000000e+00
  %3358 = fmul fast float %3341, 2.000000e+00
  %3359 = fsub fast float 3.000000e+00, %3358
  %3360 = fadd fast float %3358, 1.000000e+00
  %3361 = fsub fast float 2.000000e+00, %3341
  %3362 = bitcast float %3359 to i32
  %3363 = sub nsw i32 2129859010, %3362
  %3364 = bitcast i32 %3363 to float
  %3365 = fmul fast float %3364, %3361
  %3366 = fadd fast float %3365, -1.000000e+00
  %3367 = bitcast float %3360 to i32
  %3368 = sub nsw i32 2129859010, %3367
  %3369 = bitcast i32 %3368 to float
  %3370 = fmul fast float %3369, %3341
  %3371 = fadd fast float %3370, 1.000000e+00
  %3372 = fadd fast float %3352, %3342
  %3373 = fmul fast float %3372, %3324
  %3374 = fadd fast float %3366, %3343
  %3375 = fmul fast float %3374, %3325
  %3376 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %43, float %3373, float %3375, float undef, float undef, i32 0, i32 0, i32 undef, float %3329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3377 = extractvalue %dx.types.ResRet.f32 %3376, 0
  %3378 = fmul fast float %3377, %3345
  %3379 = fadd fast float %3357, %3342
  %3380 = fmul fast float %3379, %3324
  %3381 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %43, float %3380, float %3375, float undef, float undef, i32 0, i32 0, i32 undef, float %3329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3382 = extractvalue %dx.types.ResRet.f32 %3381, 0
  %3383 = fmul fast float %3382, %3346
  %3384 = fadd fast float %3371, %3343
  %3385 = fmul fast float %3384, %3325
  %3386 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %43, float %3373, float %3385, float undef, float undef, i32 0, i32 0, i32 undef, float %3329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3387 = extractvalue %dx.types.ResRet.f32 %3386, 0
  %3388 = fmul fast float %3387, %3345
  %3389 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %43, float %3380, float %3385, float undef, float undef, i32 0, i32 0, i32 undef, float %3329)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = fmul fast float %3390, %3346
  %3392 = fadd fast float %3391, %3388
  %3393 = fmul fast float %3392, %3360
  %3394 = fadd fast float %3383, %3378
  %3395 = fmul fast float %3394, %3359
  %3396 = fadd fast float %3395, %3393
  %3397 = fmul fast float %3396, 6.250000e-02
  br label %3483

; <label>:3398                                    ; preds = %3319
  %3399 = fmul fast float %143, 0x401921FB60000000
  %3400 = call float @dx.op.unary.f32(i32 13, float %3399)  ; Sin(value)
  %3401 = call float @dx.op.unary.f32(i32 12, float %3399)  ; Cos(value)
  %3402 = fsub fast float -0.000000e+00, %3400
  br label %3403

; <label>:3403                                    ; preds = %3452, %3398
  %3404 = phi float [ 0.000000e+00, %3398 ], [ %3447, %3452 ]
  %3405 = phi float [ 0.000000e+00, %3398 ], [ %3449, %3452 ]
  %3406 = phi i32 [ 0, %3398 ], [ %3453, %3452 ]
  %3407 = mul i32 %3406, 2
  %3408 = add i32 0, %3407
  %3409 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3408
  %3410 = load float, float* %3409, align 4
  %3411 = mul i32 %3406, 2
  %3412 = add i32 1, %3411
  %3413 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3412
  %3414 = load float, float* %3413, align 4
  %3415 = fmul fast float %3410, %3401
  %3416 = call float @dx.op.tertiary.f32(i32 46, float %3414, float %3402, float %3415)  ; FMad(a,b,c)
  %3417 = fmul fast float %3410, %3400
  %3418 = call float @dx.op.tertiary.f32(i32 46, float %3414, float %3401, float %3417)  ; FMad(a,b,c)
  %3419 = fmul fast float %3416, %3327
  %3420 = fmul fast float %3418, %3327
  %3421 = fadd fast float %3419, %2461
  %3422 = fadd fast float %3420, %2465
  %3423 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %42, float %3421, float %3422, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = extractvalue %dx.types.ResRet.f32 %3423, 3
  %3428 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 0
  store float %3424, float* %3428, align 4
  %3429 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 1
  store float %3425, float* %3429, align 4
  %3430 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 2
  store float %3426, float* %3430, align 4
  %3431 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 3
  store float %3427, float* %3431, align 4
  %3432 = fsub fast float %3424, %3329
  %3433 = fcmp fast olt float %3432, 0.000000e+00
  %3434 = select i1 %3433, float 0.000000e+00, float 1.000000e+00
  %3435 = fadd fast float %3434, %3404
  %3436 = fmul fast float %3434, %3432
  %3437 = fadd fast float %3436, %3405
  br label %3438

; <label>:3438                                    ; preds = %3438, %3403
  %3439 = phi i32 [ 1, %3403 ], [ %3450, %3438 ]
  %3440 = phi float [ %3437, %3403 ], [ %3449, %3438 ]
  %3441 = phi float [ %3435, %3403 ], [ %3447, %3438 ]
  %3442 = getelementptr [4 x float], [4 x float]* %68, i32 0, i32 %3439
  %3443 = load float, float* %3442, align 4, !tbaa !119, !noalias !109
  %3444 = fsub fast float %3443, %3329
  %3445 = fcmp fast olt float %3444, 0.000000e+00
  %3446 = select i1 %3445, float 0.000000e+00, float 1.000000e+00
  %3447 = fadd fast float %3446, %3441
  %3448 = fmul fast float %3446, %3444
  %3449 = fadd fast float %3448, %3440
  %3450 = add nuw nsw i32 %3439, 1
  %3451 = icmp eq i32 %3450, 4
  br i1 %3451, label %3452, label %3438, !llvm.loop !121

; <label>:3452                                    ; preds = %3438
  %3453 = add nuw nsw i32 %3406, 1
  %3454 = icmp eq i32 %3453, 8
  br i1 %3454, label %3455, label %3403, !llvm.loop !122

; <label>:3455                                    ; preds = %3452
  %3456 = fdiv fast float 1.000000e+00, %3447
  %3457 = fmul fast float %3456, %3449
  %3458 = fdiv fast float 1.000000e+00, %3329
  %3459 = fmul fast float %3457, %3458
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = call float @dx.op.binary.f32(i32 35, float %3460, float 0.000000e+00)  ; FMax(a,b)
  %3462 = fmul fast float %3447, 3.125000e-02
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3464 = fmul fast float %3463, 2.000000e+00
  %3465 = fadd fast float %3464, -1.000000e+00
  %3466 = fcmp fast ogt float %3465, 0.000000e+00
  %3467 = fcmp fast olt float %3465, 0.000000e+00
  %3468 = zext i1 %3466 to i32
  %3469 = zext i1 %3467 to i32
  %3470 = sub nsw i32 %3468, %3469
  %3471 = sitofp i32 %3470 to float
  %3472 = fmul fast float %3471, %3465
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fmul fast float %3473, %3473
  %3475 = fmul fast float %3474, %3473
  %3476 = fsub fast float %3473, %3475
  %3477 = fmul fast float %3476, %3461
  %3478 = fsub fast float 1.000000e+00, %3475
  %3479 = fsub fast float %3478, %3477
  %3480 = fmul fast float %3471, 5.000000e-01
  %3481 = fmul fast float %3480, %3479
  %3482 = fsub fast float 5.000000e-01, %3481
  br label %3483

; <label>:3483                                    ; preds = %3455, %3331, %3316
  %3484 = phi float [ 1.000000e+00, %3316 ], [ %3397, %3331 ], [ %3482, %3455 ]
  %3485 = fsub fast float %3150, %2985
  %3486 = fmul fast float %3485, %2523
  %3487 = fadd fast float %3486, %2985
  %3488 = fsub fast float %3317, %3487
  %3489 = fmul fast float %3488, %2553
  %3490 = fadd fast float %3489, %3487
  %3491 = fsub fast float %3484, %3490
  %3492 = fmul fast float %3491, %2579
  %3493 = fadd fast float %3492, %3490
  %3494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3495 = extractvalue %dx.types.CBufRet.f32 %3494, 2
  %3496 = fcmp fast ogt float %3495, 0.000000e+00
  br i1 %3496, label %3497, label %3537, !dx.controlflow.hints !125

; <label>:3497                                    ; preds = %3483
  %3498 = fcmp fast ugt float %3495, 0.000000e+00
  br i1 %3498, label %3499, label %3534

; <label>:3499                                    ; preds = %3497
  %3500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3501 = extractvalue %dx.types.CBufRet.f32 %3500, 0
  %3502 = extractvalue %dx.types.CBufRet.f32 %3500, 1
  %3503 = extractvalue %dx.types.CBufRet.f32 %3500, 2
  %3504 = extractvalue %dx.types.CBufRet.f32 %3500, 3
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.CBufRet.f32 %3505, 1
  %3508 = extractvalue %dx.types.CBufRet.f32 %3505, 2
  %3509 = extractvalue %dx.types.CBufRet.f32 %3505, 3
  %3510 = extractvalue %dx.types.CBufRet.f32 %3494, 0
  %3511 = extractvalue %dx.types.CBufRet.f32 %3494, 1
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.CBufRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.CBufRet.f32 %3512, 2
  %3516 = fadd fast float %3513, %2438
  %3517 = fadd fast float %3514, %2439
  %3518 = fadd fast float %3515, %2440
  %3519 = fmul fast float %3516, %3501
  %3520 = call float @dx.op.tertiary.f32(i32 46, float %3502, float %3517, float %3519)  ; FMad(a,b,c)
  %3521 = call float @dx.op.tertiary.f32(i32 46, float %3503, float %3518, float %3520)  ; FMad(a,b,c)
  %3522 = fadd fast float %3521, %3504
  %3523 = fmul fast float %3516, %3506
  %3524 = call float @dx.op.tertiary.f32(i32 46, float %3507, float %3517, float %3523)  ; FMad(a,b,c)
  %3525 = call float @dx.op.tertiary.f32(i32 46, float %3508, float %3518, float %3524)  ; FMad(a,b,c)
  %3526 = fadd fast float %3525, %3509
  %3527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %38, float %3522, float %3526, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3528 = extractvalue %dx.types.ResRet.f32 %3527, 0
  %3529 = fmul fast float %3528, %3511
  %3530 = fadd fast float %3529, %3510
  %3531 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3532 = fmul fast float %3531, %3495
  %3533 = fsub fast float 1.000000e+00, %3532
  br label %3534

; <label>:3534                                    ; preds = %3499, %3497
  %3535 = phi float [ %3533, %3499 ], [ 1.000000e+00, %3497 ]
  %3536 = fmul fast float %3535, %3493
  br label %3537

; <label>:3537                                    ; preds = %3534, %3483, %2418
  %3538 = phi float [ 1.000000e+00, %2418 ], [ %3536, %3534 ], [ %3493, %3483 ]
  %3539 = call float @dx.op.binary.f32(i32 36, float %3538, float %3538)  ; FMin(a,b)
  %3540 = call float @dx.op.binary.f32(i32 36, float %3538, float %3539)  ; FMin(a,b)
  %3541 = fcmp fast ogt float %3540, 0.000000e+00
  br i1 %3541, label %3542, label %3707, !dx.controlflow.hints !126

; <label>:3542                                    ; preds = %3537
  %3543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3544 = extractvalue %dx.types.CBufRet.f32 %3543, 0
  %3545 = extractvalue %dx.types.CBufRet.f32 %3543, 1
  %3546 = extractvalue %dx.types.CBufRet.f32 %3543, 2
  %3547 = extractvalue %dx.types.CBufRet.f32 %3543, 3
  %3548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3549 = extractvalue %dx.types.CBufRet.f32 %3548, 0
  %3550 = extractvalue %dx.types.CBufRet.f32 %3548, 1
  %3551 = extractvalue %dx.types.CBufRet.f32 %3548, 2
  %3552 = extractvalue %dx.types.CBufRet.f32 %3548, 3
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3555 = extractvalue %dx.types.CBufRet.f32 %3553, 1
  %3556 = extractvalue %dx.types.CBufRet.f32 %3553, 2
  %3557 = extractvalue %dx.types.CBufRet.f32 %3553, 3
  %3558 = fmul fast float %3544, %2438
  %3559 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %3545, float %3558)  ; FMad(a,b,c)
  %3560 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %3546, float %3559)  ; FMad(a,b,c)
  %3561 = fadd fast float %3560, %3547
  %3562 = fmul fast float %3549, %2438
  %3563 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %3550, float %3562)  ; FMad(a,b,c)
  %3564 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %3551, float %3563)  ; FMad(a,b,c)
  %3565 = fadd fast float %3564, %3552
  %3566 = fmul fast float %3554, %2438
  %3567 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %3555, float %3566)  ; FMad(a,b,c)
  %3568 = call float @dx.op.tertiary.f32(i32 46, float %2440, float %3556, float %3567)  ; FMad(a,b,c)
  %3569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.CBufRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.CBufRet.f32 %3569, 3
  %3573 = fmul fast float %3572, %3561
  %3574 = fmul fast float %3572, %3565
  %3575 = fadd fast float %3573, %3570
  %3576 = fadd fast float %3574, %3571
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 0
  %3579 = extractvalue %dx.types.CBufRet.f32 %3577, 1
  %3580 = fsub fast float %3575, %3578
  %3581 = fsub fast float %3576, %3579
  %3582 = fcmp fast olt float %3580, 0.000000e+00
  %3583 = fcmp fast olt float %3581, 0.000000e+00
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 0
  %3586 = extractvalue %dx.types.CBufRet.f32 %3584, 1
  %3587 = extractvalue %dx.types.CBufRet.f32 %3584, 2
  %3588 = extractvalue %dx.types.CBufRet.f32 %3584, 3
  %3589 = select i1 %3582, float %3585, float %3587
  %3590 = select i1 %3583, float %3586, float %3588
  %3591 = fmul fast float %3589, %3580
  %3592 = fmul fast float %3590, %3581
  %3593 = call float @dx.op.unary.f32(i32 6, float %3591)  ; FAbs(value)
  %3594 = call float @dx.op.unary.f32(i32 6, float %3592)  ; FAbs(value)
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = call float @dx.op.binary.f32(i32 35, float %3593, float %3594)  ; FMax(a,b)
  %3598 = fsub fast float %3596, %3597
  %3599 = call float @dx.op.unary.f32(i32 7, float %3598)  ; Saturate(value)
  %3600 = fcmp fast ogt float %3599, 0.000000e+00
  br i1 %3600, label %3601, label %3642, !dx.controlflow.hints !127

; <label>:3601                                    ; preds = %3542
  %3602 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %3575, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3604 = fcmp fast ogt float %3603, 0.000000e+00
  br i1 %3604, label %3605, label %3638

; <label>:3605                                    ; preds = %3601
  %3606 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %41, float %3575, float %3576, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = fsub fast float 1.000000e+00, %3557
  %3612 = fsub fast float %3611, %3568
  %3613 = fmul fast float %3612, 0x400921FB60000000
  %3614 = fadd fast float %3613, 0x3FF921FB60000000
  %3615 = call float @dx.op.unary.f32(i32 13, float %3614)  ; Sin(value)
  %3616 = fadd fast float %3615, -1.000000e+00
  %3617 = fmul fast float %3616, 0x3FD45F3060000000
  %3618 = fmul fast float %3612, 0x401921FB60000000
  %3619 = fadd fast float %3618, 0x400921FB60000000
  %3620 = call float @dx.op.unary.f32(i32 13, float %3619)  ; Sin(value)
  %3621 = fadd fast float %3620, 0x3E7777A5C0000000
  %3622 = fmul fast float %3621, 0x3FC45F3060000000
  %3623 = fmul fast float %3612, 0x4022D97C80000000
  %3624 = fadd fast float %3623, 0x4012D97C80000000
  %3625 = call float @dx.op.unary.f32(i32 13, float %3624)  ; Sin(value)
  %3626 = fadd fast float %3625, 1.000000e+00
  %3627 = fmul fast float %3626, 0x3FBB2995E0000000
  %3628 = fmul fast float %3612, 0x402921FB60000000
  %3629 = fadd fast float %3628, 0x401921FB60000000
  %3630 = call float @dx.op.unary.f32(i32 13, float %3629)  ; Sin(value)
  %3631 = fadd fast float %3630, 0xBE8777A5C0000000
  %3632 = fmul fast float %3631, 0x3FB45F3060000000
  %3633 = call float @dx.op.dot4.f32(i32 56, float %3607, float %3608, float %3609, float %3610, float %3617, float %3622, float %3627, float %3632)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3634 = fmul fast float %3633, 0xBFF7154760000000
  %3635 = call float @dx.op.unary.f32(i32 21, float %3634)  ; Exp(value)
  %3636 = call float @dx.op.unary.f32(i32 7, float %3635)  ; Saturate(value)
  %3637 = fadd float %3636, -1.000000e+00
  br label %3638

; <label>:3638                                    ; preds = %3605, %3601
  %3639 = phi float [ %3637, %3605 ], [ 0.000000e+00, %3601 ]
  %3640 = fmul fast float %3639, %3599
  %3641 = fadd fast float %3640, 1.000000e+00
  br label %3642

; <label>:3642                                    ; preds = %3638, %3542
  %3643 = phi float [ %3641, %3638 ], [ 1.000000e+00, %3542 ]
  %3644 = fmul fast float %3643, %3538
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 0
  %3647 = extractvalue %dx.types.CBufRet.f32 %3645, 1
  %3648 = extractvalue %dx.types.CBufRet.f32 %3645, 2
  %3649 = fadd fast float %3646, %307
  %3650 = fadd fast float %3647, %308
  %3651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.f32 %3651, 1
  %3653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.CBufRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.CBufRet.f32 %3653, 2
  %3657 = fsub fast float -0.000000e+00, %3649
  %3658 = fsub fast float -0.000000e+00, %3650
  %3659 = fsub fast float %439, %3648
  %3660 = fadd fast float %3659, %3652
  %3661 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3657, float %3658, float %3660)  ; Dot3(ax,ay,az,bx,by,bz)
  %3662 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3654, float %3655, float %3656)  ; Dot3(ax,ay,az,bx,by,bz)
  %3663 = fdiv fast float 1.000000e+00, %3662
  %3664 = fmul fast float %3663, %3661
  %3665 = fmul fast float %3654, %3664
  %3666 = fmul fast float %3655, %3664
  %3667 = fadd fast float %3665, %3649
  %3668 = fadd fast float %3666, %3650
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3672 = fsub fast float %3667, %3670
  %3673 = fsub fast float %3668, %3671
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 2
  %3676 = extractvalue %dx.types.CBufRet.f32 %3674, 3
  %3677 = fmul fast float %3672, %3675
  %3678 = fmul fast float %3673, %3676
  %3679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.i32 %3679, 3
  %3681 = icmp eq i32 %3680, 0
  br i1 %3681, label %3687, label %3682

; <label>:3682                                    ; preds = %3642
  %3683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %3677, float %3678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3683, 2
  br label %3692

; <label>:3687                                    ; preds = %3642
  %3688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %41, float %3677, float %3678, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3689 = extractvalue %dx.types.ResRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.ResRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.ResRet.f32 %3688, 2
  br label %3692

; <label>:3692                                    ; preds = %3687, %3682
  %3693 = phi float [ %3684, %3682 ], [ %3689, %3687 ]
  %3694 = phi float [ %3685, %3682 ], [ %3690, %3687 ]
  %3695 = phi float [ %3686, %3682 ], [ %3691, %3687 ]
  %3696 = extractvalue %dx.types.CBufRet.f32 %3651, 2
  %3697 = fmul fast float %3696, %3693
  %3698 = extractvalue %dx.types.CBufRet.f32 %3651, 0
  %3699 = fsub fast float %3664, %3698
  %3700 = fsub fast float %3699, %3697
  %3701 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3700)  ; FMax(a,b)
  %3702 = fmul fast float %3701, %3694
  %3703 = call float @dx.op.binary.f32(i32 36, float %3695, float %3702)  ; FMin(a,b)
  %3704 = fmul fast float %3703, 0xBFF7154760000000
  %3705 = call float @dx.op.unary.f32(i32 21, float %3704)  ; Exp(value)
  %3706 = fmul fast float %3644, %3705
  br label %3707

; <label>:3707                                    ; preds = %3692, %3537
  %3708 = phi float [ %3706, %3692 ], [ %3538, %3537 ]
  %3709 = call float @dx.op.binary.f32(i32 36, float %3708, float %3708)  ; FMin(a,b)
  %3710 = call float @dx.op.binary.f32(i32 36, float %3708, float %3709)  ; FMin(a,b)
  %3711 = fcmp fast ogt float %3710, 0.000000e+00
  br i1 %3711, label %3712, label %3808, !dx.controlflow.hints !128

; <label>:3712                                    ; preds = %3707
  %3713 = fmul fast float %3708, %2430
  %3714 = fmul fast float %3708, %2431
  %3715 = fmul fast float %3708, %2432
  %3716 = fsub fast float %2419, %442
  %3717 = fsub fast float %2420, %443
  %3718 = fsub fast float %2421, %444
  %3719 = call float @dx.op.dot3.f32(i32 55, float %3716, float %3717, float %3718, float %3716, float %3717, float %3718)  ; Dot3(ax,ay,az,bx,by,bz)
  %3720 = call float @dx.op.unary.f32(i32 25, float %3719)  ; Rsqrt(value)
  %3721 = fmul fast float %3720, %3716
  %3722 = fmul fast float %3720, %3717
  %3723 = fmul fast float %3720, %3718
  %3724 = call float @dx.op.dot3.f32(i32 55, float %2419, float %2420, float %2421, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %3725 = call float @dx.op.dot3.f32(i32 55, float %445, float %446, float %447, float %3721, float %3722, float %3723)  ; Dot3(ax,ay,az,bx,by,bz)
  %3726 = call float @dx.op.unary.f32(i32 7, float %3724)  ; Saturate(value)
  %3727 = fmul fast float %3726, %3726
  %3728 = fmul fast float %3727, 0x47DE623840000000
  %3729 = call float @dx.op.unary.f32(i32 7, float %3728)  ; Saturate(value)
  %3730 = fmul fast float %3729, %3726
  %3731 = call float @dx.op.dot3.f32(i32 55, float %238, float %239, float %240, float %3721, float %3722, float %3723)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = fmul fast float %3731, %3731
  %3733 = call float @dx.op.unary.f32(i32 6, float %3724)  ; FAbs(value)
  %3734 = fsub fast float 1.000000e+00, %462
  %3735 = fmul fast float %450, %450
  %3736 = fmul fast float %3735, %3734
  %3737 = fadd fast float %3736, %462
  %3738 = bitcast float %3737 to i32
  %3739 = ashr i32 %3738, 1
  %3740 = add nsw i32 %3739, 532487669
  %3741 = bitcast i32 %3740 to float
  %3742 = fadd fast float %3741, %450
  %3743 = fmul fast float %462, %3732
  %3744 = fsub fast float 1.000000e+00, %3732
  %3745 = fadd fast float %3744, %3743
  %3746 = fmul fast float %3733, %3733
  %3747 = fmul fast float %3746, %3734
  %3748 = fadd fast float %3747, %462
  %3749 = bitcast float %3748 to i32
  %3750 = ashr i32 %3749, 1
  %3751 = add nsw i32 %3750, 532487669
  %3752 = bitcast i32 %3751 to float
  %3753 = fadd fast float %3752, %3733
  %3754 = fmul fast float %3745, %3745
  %3755 = fmul fast float %3754, %3742
  %3756 = fmul fast float %3755, %3753
  %3757 = fdiv fast float 0x3FF0A00000000000, %3756
  %3758 = fmul fast float %3757, %462
  %3759 = call float @dx.op.unary.f32(i32 6, float %3725)  ; FAbs(value)
  %3760 = fsub fast float 1.000000e+00, %3759
  %3761 = bitcast float %3760 to i32
  %3762 = sitofp i32 %3761 to float
  %3763 = fmul fast float %3762, 5.000000e+00
  %3764 = fadd fast float %3763, 0xC1EFBF8940000000
  %3765 = fptosi float %3764 to i32
  %3766 = bitcast i32 %3765 to float
  %3767 = fsub fast float 1.000000e+00, %430
  %3768 = fsub fast float 1.000000e+00, %431
  %3769 = fsub fast float 1.000000e+00, %448
  %3770 = fmul fast float %3766, %3767
  %3771 = fmul fast float %3766, %3768
  %3772 = fmul fast float %3766, %3769
  %3773 = fadd fast float %3770, %430
  %3774 = fadd fast float %3771, %431
  %3775 = fadd fast float %3772, %448
  %3776 = fmul fast float %3724, 9.843750e-01
  %3777 = fadd fast float %3776, 7.812500e-03
  %3778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %3777, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 2
  %3780 = extractvalue %dx.types.ResRet.f32 %3778, 3
  %3781 = fmul fast float %3779, %430
  %3782 = fmul fast float %3779, %431
  %3783 = fmul fast float %3779, %448
  %3784 = fadd fast float %3781, %3780
  %3785 = fadd fast float %3782, %3780
  %3786 = fadd fast float %3783, %3780
  %3787 = call float @dx.op.binary.f32(i32 35, float %3785, float %3786)  ; FMax(a,b)
  %3788 = call float @dx.op.binary.f32(i32 35, float %3784, float %3787)  ; FMax(a,b)
  %3789 = fsub fast float 1.000000e+00, %3788
  %3790 = fmul fast float %3730, %3713
  %3791 = fmul fast float %3790, %3789
  %3792 = fmul fast float %3730, %3714
  %3793 = fmul fast float %3792, %3789
  %3794 = fmul fast float %3730, %3715
  %3795 = fmul fast float %3794, %3789
  %3796 = fadd fast float %3791, %2409
  %3797 = fadd fast float %3793, %2410
  %3798 = fadd fast float %3795, %2411
  %3799 = fmul fast float %3790, %3758
  %3800 = fmul fast float %3799, %3773
  %3801 = fmul fast float %3792, %3758
  %3802 = fmul fast float %3801, %3774
  %3803 = fmul fast float %3794, %3758
  %3804 = fmul fast float %3803, %3775
  %3805 = fadd fast float %3800, %2412
  %3806 = fadd fast float %3802, %2413
  %3807 = fadd fast float %3804, %2414
  br label %3808

; <label>:3808                                    ; preds = %3712, %3707, %2405
  %3809 = phi float [ %2412, %2405 ], [ %2412, %3707 ], [ %3805, %3712 ]
  %3810 = phi float [ %2413, %2405 ], [ %2413, %3707 ], [ %3806, %3712 ]
  %3811 = phi float [ %2414, %2405 ], [ %2414, %3707 ], [ %3807, %3712 ]
  %3812 = phi float [ %2409, %2405 ], [ %2409, %3707 ], [ %3796, %3712 ]
  %3813 = phi float [ %2410, %2405 ], [ %2410, %3707 ], [ %3797, %3712 ]
  %3814 = phi float [ %2411, %2405 ], [ %2411, %3707 ], [ %3798, %3712 ]
  %3815 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.i32 %3815, 0
  %3817 = icmp eq i32 %3816, 0
  br i1 %3817, label %4330, label %3818

; <label>:3818                                    ; preds = %3808
  %3819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3820 = extractvalue %dx.types.CBufRet.f32 %3819, 2
  %3821 = extractvalue %dx.types.CBufRet.f32 %3819, 3
  %3822 = fmul fast float %3820, %73
  %3823 = fmul fast float %3821, %74
  %3824 = fptoui float %3822 to i32
  %3825 = fptoui float %3823 to i32
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.CBufRet.f32 %3826, 2
  %3829 = extractvalue %dx.types.CBufRet.f32 %3826, 3
  %3830 = fadd fast float %273, -4.000000e+00
  %3831 = call float @dx.op.binary.f32(i32 35, float %3830, float 0.000000e+00)  ; FMax(a,b)
  %3832 = fadd fast float %3831, %3827
  %3833 = fmul fast float %3832, %3828
  %3834 = call float @dx.op.unary.f32(i32 23, float %3833)  ; Log(value)
  %3835 = fmul fast float %3834, %3829
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 2
  %3838 = fmul fast float %3835, %3837
  %3839 = call float @dx.op.unary.f32(i32 7, float %3838)  ; Saturate(value)
  %3840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3841 = extractvalue %dx.types.CBufRet.i32 %3840, 1
  %3842 = add i32 %3841, -1
  %3843 = uitofp i32 %3841 to float
  %3844 = fmul fast float %3843, %3839
  %3845 = fptoui float %3844 to i32
  %3846 = call i32 @dx.op.binary.i32(i32 40, i32 %3845, i32 %3842)  ; UMin(a,b)
  %3847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3848 = extractvalue %dx.types.CBufRet.i32 %3847, 2
  %3849 = extractvalue %dx.types.CBufRet.i32 %3847, 3
  %3850 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3825, i32 %3848, i32 %3824)  ; UMad(a,b,c)
  %3851 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3846, i32 %3849, i32 %3850)  ; UMad(a,b,c)
  %3852 = add nsw i32 %3816, -1
  %3853 = call i32 @dx.op.binary.i32(i32 37, i32 %3852, i32 0)  ; IMax(a,b)
  %3854 = call float @dx.op.binary.f32(i32 35, float %273, float 0.000000e+00)  ; FMax(a,b)
  %3855 = fptoui float %3854 to i32
  %3856 = lshr i32 %3855, 5
  %3857 = call i32 @dx.op.binary.i32(i32 40, i32 %3856, i32 8191)  ; UMin(a,b)
  %3858 = shl i32 %3857, 2
  %3859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3858, i32 undef)  ; BufferLoad(srv,index,wot)
  %3860 = extractvalue %dx.types.ResRet.i32 %3859, 0
  %3861 = lshr i32 %3860, 16
  %3862 = and i32 %3860, 65535
  %3863 = lshr i32 %3860, 21
  %3864 = lshr i32 %3862, 5
  %3865 = call i32 @dx.op.binary.i32(i32 40, i32 %3864, i32 %3853)  ; UMin(a,b)
  %3866 = icmp ugt i32 %3863, %3865
  br i1 %3866, label %4330, label %3867

; <label>:3867                                    ; preds = %3818
  br label %3868

; <label>:3868                                    ; preds = %4320, %3867
  %3869 = phi i32 [ %4327, %4320 ], [ %3863, %3867 ]
  %3870 = phi float [ %4321, %4320 ], [ %3809, %3867 ]
  %3871 = phi float [ %4322, %4320 ], [ %3810, %3867 ]
  %3872 = phi float [ %4323, %4320 ], [ %3811, %3867 ]
  %3873 = phi float [ %4324, %4320 ], [ %3812, %3867 ]
  %3874 = phi float [ %4325, %4320 ], [ %3813, %3867 ]
  %3875 = phi float [ %4326, %4320 ], [ %3814, %3867 ]
  %3876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3877 = extractvalue %dx.types.CBufRet.i32 %3876, 0
  %3878 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3851, i32 %3877, i32 %3869)  ; UMad(a,b,c)
  %3879 = shl i32 %3878, 2
  %3880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3879, i32 undef)  ; BufferLoad(srv,index,wot)
  %3881 = extractvalue %dx.types.ResRet.i32 %3880, 0
  %3882 = shl i32 %3869, 5
  %3883 = sub nsw i32 %3861, %3882
  %3884 = call i32 @dx.op.binary.i32(i32 37, i32 %3883, i32 0)  ; IMax(a,b)
  %3885 = call i32 @dx.op.binary.i32(i32 38, i32 %3884, i32 31)  ; IMin(a,b)
  %3886 = sub nsw i32 1, %3861
  %3887 = add nsw i32 %3886, %3862
  %3888 = call i32 @dx.op.binary.i32(i32 37, i32 %3887, i32 0)  ; IMax(a,b)
  %3889 = call i32 @dx.op.binary.i32(i32 38, i32 %3888, i32 32)  ; IMin(a,b)
  %3890 = and i32 %3889, 31
  %3891 = shl i32 -1, %3890
  %3892 = xor i32 %3891, -1
  %3893 = and i32 %3885, 31
  %3894 = shl i32 %3892, %3893
  %3895 = icmp eq i32 %3889, 32
  %3896 = select i1 %3895, i32 -1, i32 %3894
  %3897 = and i32 %3896, %3881
  %3898 = icmp eq i32 %3897, 0
  br i1 %3898, label %4320, label %3899

; <label>:3899                                    ; preds = %3868
  br label %3900

; <label>:3900                                    ; preds = %4034, %3899
  %3901 = phi i32 [ %3912, %4034 ], [ %3897, %3899 ]
  %3902 = phi float [ %4035, %4034 ], [ %3870, %3899 ]
  %3903 = phi float [ %4036, %4034 ], [ %3871, %3899 ]
  %3904 = phi float [ %4037, %4034 ], [ %3872, %3899 ]
  %3905 = phi float [ %4038, %4034 ], [ %3873, %3899 ]
  %3906 = phi float [ %4039, %4034 ], [ %3874, %3899 ]
  %3907 = phi float [ %4040, %4034 ], [ %3875, %3899 ]
  %3908 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3901)  ; FirstbitLo(value)
  %3909 = add i32 %3908, %3882
  %3910 = and i32 %3908, 31
  %3911 = shl i32 1, %3910
  %3912 = xor i32 %3911, %3901
  %3913 = mul i32 %3909, 112
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = or i32 %3913, 12
  %3919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = add i32 %3913, 16
  %3922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.ResRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.ResRet.f32 %3922, 2
  %3926 = add i32 %3913, 28
  %3927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.i32 %3927, 0
  %3929 = add i32 %3913, 44
  %3930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = add i32 %3913, 48
  %3933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = add i32 %3913, 64
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.ResRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.ResRet.f32 %3939, 2
  %3943 = extractvalue %dx.types.ResRet.f32 %3939, 3
  %3944 = add i32 %3913, 80
  %3945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %3944, i32 undef)  ; BufferLoad(srv,index,wot)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 1
  %3947 = extractvalue %dx.types.ResRet.f32 %3945, 2
  %3948 = add i32 %3913, 92
  %3949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3948, i32 undef)  ; BufferLoad(srv,index,wot)
  %3950 = extractvalue %dx.types.ResRet.i32 %3949, 0
  %3951 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3952 = select i1 %132, float %3946, float %3915
  %3953 = select i1 %132, float %3951, float %3916
  %3954 = select i1 %132, float %3947, float %3917
  %3955 = and i32 %3950, 65535
  %3956 = uitofp i32 %3955 to float
  %3957 = lshr i32 %3950, 16
  %3958 = uitofp i32 %3957 to float
  %3959 = and i32 %3928, 65535
  %3960 = and i32 %3928, 50331648
  %3961 = icmp eq i32 %3960, 33554432
  %3962 = fsub fast float %3934, %307
  %3963 = fsub fast float %3935, %308
  %3964 = fsub fast float %3936, %309
  %3965 = call float @dx.op.dot3.f32(i32 55, float %3962, float %3963, float %3964, float %3962, float %3963, float %3964)  ; Dot3(ax,ay,az,bx,by,bz)
  %3966 = call float @dx.op.unary.f32(i32 24, float %3965)  ; Sqrt(value)
  %3967 = fdiv fast float 1.000000e+00, %3966
  %3968 = fmul fast float %3967, %3962
  %3969 = fmul fast float %3967, %3963
  %3970 = fmul fast float %3967, %3964
  %3971 = fadd fast float %3966, %3920
  %3972 = fdiv fast float 1.000000e+00, %3971
  %3973 = fmul float %3931, %3972
  %3974 = fmul float %3973, %3973
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  br i1 %3961, label %3976, label %3997

; <label>:3976                                    ; preds = %3900
  %3977 = fmul fast float %3942, %3923
  %3978 = fmul fast float %3942, %3924
  %3979 = fmul fast float %3942, %3925
  %3980 = fadd fast float %3962, %3977
  %3981 = fadd fast float %3963, %3978
  %3982 = fadd fast float %3964, %3979
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3980, float %3981, float %3982, float %3980, float %3981, float %3982)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = call float @dx.op.unary.f32(i32 25, float %3983)  ; Rsqrt(value)
  %3985 = fmul fast float %3984, %3980
  %3986 = fmul fast float %3984, %3981
  %3987 = fmul fast float %3984, %3982
  %3988 = fsub fast float %307, %3934
  %3989 = fsub fast float %308, %3935
  %3990 = fsub fast float %309, %3936
  %3991 = fsub fast float -0.000000e+00, %3988
  %3992 = fsub fast float -0.000000e+00, %3989
  %3993 = fsub fast float -0.000000e+00, %3990
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3992, float %3993, float %3923, float %3924, float %3925)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = fcmp fast ogt float %3994, 0.000000e+00
  %3996 = uitofp i1 %3995 to float
  br label %3997

; <label>:3997                                    ; preds = %3976, %3900
  %3998 = phi float [ %3996, %3976 ], [ 1.000000e+00, %3900 ]
  %3999 = phi float [ %3985, %3976 ], [ %3968, %3900 ]
  %4000 = phi float [ %3986, %3976 ], [ %3969, %3900 ]
  %4001 = phi float [ %3987, %3976 ], [ %3970, %3900 ]
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3923, float %3924, float %3925, float %3999, float %4000, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = fmul fast float %4002, %4002
  %4004 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  %4005 = fsub fast float 1.000000e+00, %4004
  %4006 = fmul fast float %4005, 5.000000e-01
  %4007 = fcmp fast ogt float %4002, 0.000000e+00
  %4008 = fsub fast float 1.000000e+00, %4006
  %4009 = select i1 %4007, float %4006, float %4008
  %4010 = fmul fast float %4009, %3958
  %4011 = fadd fast float %4010, %3956
  %4012 = fmul fast float %4011, 0x3EF0001000000000
  %4013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %4012, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = fmul fast float %4002, %3940
  %4016 = fadd fast float %4015, %3941
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = select i1 %3961, float 1.000000e+00, float %4017
  %4019 = select i1 %3961, float %4017, float 1.000000e+00
  %4020 = fmul fast float %3966, %3937
  %4021 = fsub fast float 1.000000e+00, %4020
  %4022 = fmul fast float %4021, %3943
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = fmul fast float %4023, %4019
  %4025 = fmul fast float %4024, 2.000000e+00
  %4026 = fsub fast float 3.000000e+00, %4025
  %4027 = fmul fast float %4014, %3998
  %4028 = fmul fast float %4024, %4024
  %4029 = fmul fast float %4028, %4027
  %4030 = fmul fast float %4029, %4026
  %4031 = call float @dx.op.binary.f32(i32 36, float %4030, float %4030)  ; FMin(a,b)
  %4032 = call float @dx.op.binary.f32(i32 36, float %4030, float %4031)  ; FMin(a,b)
  %4033 = fcmp fast ogt float %4032, 0.000000e+00
  br i1 %4033, label %4042, label %4034, !dx.controlflow.hints !129

; <label>:4034                                    ; preds = %4193, %4188, %3997
  %4035 = phi float [ %3902, %4188 ], [ %3902, %3997 ], [ %4316, %4193 ]
  %4036 = phi float [ %3903, %4188 ], [ %3903, %3997 ], [ %4317, %4193 ]
  %4037 = phi float [ %3904, %4188 ], [ %3904, %3997 ], [ %4318, %4193 ]
  %4038 = phi float [ %3905, %4188 ], [ %3905, %3997 ], [ %4307, %4193 ]
  %4039 = phi float [ %3906, %4188 ], [ %3906, %3997 ], [ %4308, %4193 ]
  %4040 = phi float [ %3907, %4188 ], [ %3907, %3997 ], [ %4309, %4193 ]
  %4041 = icmp eq i32 %3901, %3911
  br i1 %4041, label %4319, label %3900

; <label>:4042                                    ; preds = %3997
  %4043 = icmp eq i32 %3959, 255
  br i1 %4043, label %4188, label %4044, !dx.controlflow.hints !130

; <label>:4044                                    ; preds = %4042
  %4045 = mul nuw nsw i32 %3959, 176
  %4046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.ResRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.ResRet.f32 %4046, 2
  %4050 = extractvalue %dx.types.ResRet.f32 %4046, 3
  %4051 = add nuw nsw i32 %4045, 16
  %4052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.ResRet.f32 %4052, 1
  %4055 = add nuw nsw i32 %4045, 32
  %4056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = extractvalue %dx.types.ResRet.f32 %4056, 1
  %4059 = extractvalue %dx.types.ResRet.f32 %4056, 2
  %4060 = add nuw nsw i32 %4045, 48
  %4061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4060, i32 undef)  ; BufferLoad(srv,index,wot)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.ResRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.ResRet.f32 %4061, 2
  %4065 = extractvalue %dx.types.ResRet.f32 %4061, 3
  %4066 = add nuw nsw i32 %4045, 64
  %4067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4068 = extractvalue %dx.types.ResRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.ResRet.f32 %4067, 1
  %4070 = extractvalue %dx.types.ResRet.f32 %4067, 2
  %4071 = extractvalue %dx.types.ResRet.f32 %4067, 3
  %4072 = add nuw nsw i32 %4045, 80
  %4073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4072, i32 undef)  ; BufferLoad(srv,index,wot)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.ResRet.f32 %4073, 1
  %4076 = extractvalue %dx.types.ResRet.f32 %4073, 2
  %4077 = extractvalue %dx.types.ResRet.f32 %4073, 3
  %4078 = add nuw nsw i32 %4045, 96
  %4079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.f32 %4079, 0
  %4081 = extractvalue %dx.types.ResRet.f32 %4079, 1
  %4082 = extractvalue %dx.types.ResRet.f32 %4079, 2
  %4083 = extractvalue %dx.types.ResRet.f32 %4079, 3
  %4084 = bitcast float %4054 to i32
  %4085 = fmul fast float %4059, %238
  %4086 = fmul fast float %4059, %239
  %4087 = fmul fast float %4059, %240
  %4088 = fadd fast float %4085, %307
  %4089 = fadd fast float %4086, %308
  %4090 = fadd fast float %4087, %309
  %4091 = fmul fast float %4088, %4062
  %4092 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4068, float %4091)  ; FMad(a,b,c)
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4074, float %4092)  ; FMad(a,b,c)
  %4094 = fadd fast float %4093, %4080
  %4095 = fmul fast float %4088, %4063
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4069, float %4095)  ; FMad(a,b,c)
  %4097 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4075, float %4096)  ; FMad(a,b,c)
  %4098 = fadd fast float %4097, %4081
  %4099 = fmul fast float %4088, %4064
  %4100 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4070, float %4099)  ; FMad(a,b,c)
  %4101 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4076, float %4100)  ; FMad(a,b,c)
  %4102 = fadd fast float %4101, %4082
  %4103 = fmul fast float %4088, %4065
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4071, float %4103)  ; FMad(a,b,c)
  %4105 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4077, float %4104)  ; FMad(a,b,c)
  %4106 = fadd fast float %4105, %4083
  %4107 = fdiv fast float %4094, %4106
  %4108 = fdiv fast float %4098, %4106
  %4109 = fdiv fast float %4102, %4106
  %4110 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4109)  ; FMax(a,b)
  %4111 = fmul fast float %143, 0x401921FB60000000
  %4112 = call float @dx.op.unary.f32(i32 13, float %4111)  ; Sin(value)
  %4113 = call float @dx.op.unary.f32(i32 12, float %4111)  ; Cos(value)
  %4114 = fmul fast float %4113, %4058
  %4115 = call float @dx.op.tertiary.f32(i32 46, float %4112, float %4058, float 0.000000e+00)  ; FMad(a,b,c)
  %4116 = fmul fast float %4058, %4112
  %4117 = fsub fast float -0.000000e+00, %4116
  %4118 = call float @dx.op.tertiary.f32(i32 46, float %4113, float %4058, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4119

; <label>:4119                                    ; preds = %4119, %4044
  %4120 = phi float [ 0.000000e+00, %4044 ], [ %4152, %4119 ]
  %4121 = phi float [ 0.000000e+00, %4044 ], [ %4154, %4119 ]
  %4122 = phi i32 [ 0, %4044 ], [ %4155, %4119 ]
  %4123 = mul i32 %4122, 2
  %4124 = add i32 0, %4123
  %4125 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4124
  %4126 = load float, float* %4125, align 4
  %4127 = mul i32 %4122, 2
  %4128 = add i32 1, %4127
  %4129 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4128
  %4130 = load float, float* %4129, align 4
  %4131 = fmul fast float %4114, %4126
  %4132 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4117, float %4131)  ; FMad(a,b,c)
  %4133 = fmul fast float %4126, %4115
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4118, float %4133)  ; FMad(a,b,c)
  %4135 = fadd fast float %4132, %4107
  %4136 = fadd fast float %4134, %4108
  %4137 = fmul fast float %4135, %4053
  %4138 = fmul fast float %4136, %4053
  %4139 = call float @dx.op.binary.f32(i32 35, float %4137, float %4049)  ; FMax(a,b)
  %4140 = call float @dx.op.binary.f32(i32 35, float %4138, float %4049)  ; FMax(a,b)
  %4141 = call float @dx.op.binary.f32(i32 36, float %4139, float %4050)  ; FMin(a,b)
  %4142 = call float @dx.op.binary.f32(i32 36, float %4140, float %4050)  ; FMin(a,b)
  %4143 = fadd fast float %4141, %4047
  %4144 = fadd fast float %4142, %4048
  %4145 = uitofp i32 %4084 to float
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %42, float %4143, float %4144, float %4145, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = fsub fast float %4147, %4110
  %4149 = fsub fast float %4148, %4057
  %4150 = fcmp fast ogt float %4149, 0.000000e+00
  %4151 = select i1 %4150, float 1.000000e+00, float 0.000000e+00
  %4152 = fadd fast float %4151, %4120
  %4153 = select i1 %4150, float %4149, float 0.000000e+00
  %4154 = fadd fast float %4153, %4121
  %4155 = add nuw nsw i32 %4122, 1
  %4156 = icmp eq i32 %4155, 8
  br i1 %4156, label %4157, label %4119

; <label>:4157                                    ; preds = %4119
  %4158 = fdiv fast float 1.000000e+00, %4152
  %4159 = fmul fast float %4158, %4154
  %4160 = fdiv fast float 1.000000e+00, %4110
  %4161 = fmul fast float %4159, %4160
  %4162 = call float @dx.op.unary.f32(i32 7, float %4161)  ; Saturate(value)
  %4163 = call float @dx.op.binary.f32(i32 35, float %4162, float 0.000000e+00)  ; FMax(a,b)
  %4164 = fmul fast float %4152, 1.250000e-01
  %4165 = call float @dx.op.unary.f32(i32 7, float %4164)  ; Saturate(value)
  %4166 = fmul fast float %4165, 2.000000e+00
  %4167 = fadd fast float %4166, -1.000000e+00
  %4168 = fcmp fast ogt float %4167, 0.000000e+00
  %4169 = fcmp fast olt float %4167, 0.000000e+00
  %4170 = zext i1 %4168 to i32
  %4171 = zext i1 %4169 to i32
  %4172 = sub nsw i32 %4170, %4171
  %4173 = sitofp i32 %4172 to float
  %4174 = fmul fast float %4173, %4167
  %4175 = fsub fast float 1.000000e+00, %4174
  %4176 = fmul fast float %4175, %4175
  %4177 = fmul fast float %4176, %4175
  %4178 = fsub fast float %4175, %4177
  %4179 = fmul fast float %4178, %4163
  %4180 = fsub fast float 1.000000e+00, %4177
  %4181 = fsub fast float %4180, %4179
  %4182 = fmul fast float %4173, 5.000000e-01
  %4183 = fmul fast float %4182, %4181
  %4184 = fsub fast float -5.000000e-01, %4183
  %4185 = fmul fast float %4184, %4018
  %4186 = fadd fast float %4185, 1.000000e+00
  %4187 = fmul fast float %4186, %4030
  br label %4188

; <label>:4188                                    ; preds = %4157, %4042
  %4189 = phi float [ %4187, %4157 ], [ %4030, %4042 ]
  %4190 = call float @dx.op.binary.f32(i32 36, float %4189, float %4189)  ; FMin(a,b)
  %4191 = call float @dx.op.binary.f32(i32 36, float %4189, float %4190)  ; FMin(a,b)
  %4192 = fcmp fast ogt float %4191, 0.000000e+00
  br i1 %4192, label %4193, label %4034, !dx.controlflow.hints !131

; <label>:4193                                    ; preds = %4188
  %4194 = fmul fast float %4189, %3952
  %4195 = fmul fast float %4189, %3953
  %4196 = fmul fast float %4189, %3954
  %4197 = fsub fast float %3968, %442
  %4198 = fsub fast float %3969, %443
  %4199 = fsub fast float %3970, %444
  %4200 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %4197, float %4198, float %4199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4201 = call float @dx.op.unary.f32(i32 25, float %4200)  ; Rsqrt(value)
  %4202 = fmul fast float %4201, %4197
  %4203 = fmul fast float %4201, %4198
  %4204 = fmul fast float %4201, %4199
  %4205 = call float @dx.op.dot3.f32(i32 55, float %3968, float %3969, float %3970, float %238, float %239, float %240)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call float @dx.op.dot3.f32(i32 55, float %445, float %446, float %447, float %4202, float %4203, float %4204)  ; Dot3(ax,ay,az,bx,by,bz)
  %4207 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  %4208 = fmul fast float %4207, %3975
  %4209 = fmul fast float %4207, %4207
  %4210 = fmul fast float %4209, 0x47DE623840000000
  %4211 = call float @dx.op.unary.f32(i32 7, float %4210)  ; Saturate(value)
  %4212 = fmul fast float %4208, %4211
  %4213 = bitcast float %3965 to i32
  %4214 = ashr i32 %4213, 1
  %4215 = sub nsw i32 1597463007, %4214
  %4216 = bitcast i32 %4215 to float
  %4217 = fmul fast float %4216, %3962
  %4218 = fmul fast float %4216, %3963
  %4219 = fmul fast float %4216, %3964
  %4220 = fsub fast float %4217, %442
  %4221 = fsub fast float %4218, %443
  %4222 = fsub fast float %4219, %444
  %4223 = call float @dx.op.dot3.f32(i32 55, float %4220, float %4221, float %4222, float %4220, float %4221, float %4222)  ; Dot3(ax,ay,az,bx,by,bz)
  %4224 = call float @dx.op.unary.f32(i32 25, float %4223)  ; Rsqrt(value)
  %4225 = fmul fast float %4220, %4224
  %4226 = fmul fast float %4221, %4224
  %4227 = fmul fast float %4222, %4224
  %4228 = call float @dx.op.dot3.f32(i32 55, float %238, float %239, float %240, float %4225, float %4226, float %4227)  ; Dot3(ax,ay,az,bx,by,bz)
  %4229 = fmul fast float %4228, %4228
  %4230 = call float @dx.op.unary.f32(i32 6, float %4205)  ; FAbs(value)
  %4231 = fsub fast float 1.000000e+00, %462
  %4232 = fmul fast float %450, %450
  %4233 = fmul fast float %4232, %4231
  %4234 = fadd fast float %4233, %462
  %4235 = bitcast float %4234 to i32
  %4236 = ashr i32 %4235, 1
  %4237 = add nsw i32 %4236, 532487669
  %4238 = bitcast i32 %4237 to float
  %4239 = fadd fast float %4238, %450
  %4240 = fmul fast float %462, %4229
  %4241 = fsub fast float 1.000000e+00, %4229
  %4242 = fadd fast float %4241, %4240
  %4243 = fmul fast float %4230, %4230
  %4244 = fmul fast float %4243, %4231
  %4245 = fadd fast float %4244, %462
  %4246 = bitcast float %4245 to i32
  %4247 = ashr i32 %4246, 1
  %4248 = add nsw i32 %4247, 532487669
  %4249 = bitcast i32 %4248 to float
  %4250 = fadd fast float %4249, %4230
  %4251 = fmul fast float %4242, %4242
  %4252 = fmul fast float %4251, %4239
  %4253 = fmul fast float %4252, %4250
  %4254 = fdiv fast float 1.000000e+00, %4253
  %4255 = bitcast float %462 to i32
  %4256 = sitofp i32 %4255 to float
  %4257 = fmul fast float %4256, 0x3FE7F73180000000
  %4258 = fadd fast float %4257, 0x41AFE27C40000000
  %4259 = fptosi float %4258 to i32
  %4260 = bitcast i32 %4259 to float
  %4261 = fmul fast float %3931, 0x3FD80E9D60000000
  %4262 = fmul fast float %4261, %4216
  %4263 = fadd fast float %4260, %4262
  %4264 = bitcast float %4263 to i32
  %4265 = sub nsw i32 2129859010, %4264
  %4266 = bitcast i32 %4265 to float
  %4267 = fmul fast float %462, %4254
  %4268 = fmul fast float %4267, %4260
  %4269 = fmul fast float %4268, %4266
  %4270 = call float @dx.op.unary.f32(i32 6, float %4206)  ; FAbs(value)
  %4271 = fsub fast float 1.000000e+00, %4270
  %4272 = bitcast float %4271 to i32
  %4273 = sitofp i32 %4272 to float
  %4274 = fmul fast float %4273, 5.000000e+00
  %4275 = fadd fast float %4274, 0xC1EFBF8940000000
  %4276 = fptosi float %4275 to i32
  %4277 = bitcast i32 %4276 to float
  %4278 = fsub fast float 1.000000e+00, %430
  %4279 = fsub fast float 1.000000e+00, %431
  %4280 = fsub fast float 1.000000e+00, %448
  %4281 = fmul fast float %4277, %4278
  %4282 = fmul fast float %4277, %4279
  %4283 = fmul fast float %4277, %4280
  %4284 = fadd fast float %4281, %430
  %4285 = fadd fast float %4282, %431
  %4286 = fadd fast float %4283, %448
  %4287 = fmul fast float %4205, 9.843750e-01
  %4288 = fadd fast float %4287, 7.812500e-03
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %4288, float %1905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 2
  %4291 = extractvalue %dx.types.ResRet.f32 %4289, 3
  %4292 = fmul fast float %4290, %430
  %4293 = fmul fast float %4290, %431
  %4294 = fmul fast float %4290, %448
  %4295 = fadd fast float %4292, %4291
  %4296 = fadd fast float %4293, %4291
  %4297 = fadd fast float %4294, %4291
  %4298 = call float @dx.op.binary.f32(i32 35, float %4296, float %4297)  ; FMax(a,b)
  %4299 = call float @dx.op.binary.f32(i32 35, float %4295, float %4298)  ; FMax(a,b)
  %4300 = fsub fast float 1.000000e+00, %4299
  %4301 = fmul fast float %4212, %4194
  %4302 = fmul fast float %4301, %4300
  %4303 = fmul fast float %4212, %4195
  %4304 = fmul fast float %4303, %4300
  %4305 = fmul fast float %4212, %4196
  %4306 = fmul fast float %4305, %4300
  %4307 = fadd fast float %4302, %3905
  %4308 = fadd fast float %4304, %3906
  %4309 = fadd fast float %4306, %3907
  %4310 = fmul fast float %4301, %4284
  %4311 = fmul fast float %4310, %4269
  %4312 = fmul fast float %4303, %4285
  %4313 = fmul fast float %4312, %4269
  %4314 = fmul fast float %4305, %4286
  %4315 = fmul fast float %4314, %4269
  %4316 = fadd fast float %4311, %3902
  %4317 = fadd fast float %4313, %3903
  %4318 = fadd fast float %4315, %3904
  br label %4034

; <label>:4319                                    ; preds = %4034
  br label %4320

; <label>:4320                                    ; preds = %4319, %3868
  %4321 = phi float [ %3870, %3868 ], [ %4035, %4319 ]
  %4322 = phi float [ %3871, %3868 ], [ %4036, %4319 ]
  %4323 = phi float [ %3872, %3868 ], [ %4037, %4319 ]
  %4324 = phi float [ %3873, %3868 ], [ %4038, %4319 ]
  %4325 = phi float [ %3874, %3868 ], [ %4039, %4319 ]
  %4326 = phi float [ %3875, %3868 ], [ %4040, %4319 ]
  %4327 = add i32 %3869, 1
  %4328 = icmp ugt i32 %4327, %3865
  br i1 %4328, label %4329, label %3868

; <label>:4329                                    ; preds = %4320
  br label %4330

; <label>:4330                                    ; preds = %4329, %3818, %3808
  %4331 = phi float [ %3809, %3808 ], [ %3809, %3818 ], [ %4321, %4329 ]
  %4332 = phi float [ %3810, %3808 ], [ %3810, %3818 ], [ %4322, %4329 ]
  %4333 = phi float [ %3811, %3808 ], [ %3811, %3818 ], [ %4323, %4329 ]
  %4334 = phi float [ %3812, %3808 ], [ %3812, %3818 ], [ %4324, %4329 ]
  %4335 = phi float [ %3813, %3808 ], [ %3813, %3818 ], [ %4325, %4329 ]
  %4336 = phi float [ %3814, %3808 ], [ %3814, %3818 ], [ %4326, %4329 ]
  %4337 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %4338 = call float @dx.op.unary.f32(i32 24, float %422)  ; Sqrt(value)
  %4339 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %4340 = fmul fast float %4337, %4334
  %4341 = fmul fast float %4338, %4335
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  br i1 %132, label %4344, label %4364

; <label>:4344                                    ; preds = %4330
  %4345 = fadd fast float %4336, %438
  %4346 = fmul fast float %4345, %436
  %4347 = fsub fast float 1.000000e+00, %436
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4350 = extractvalue %dx.types.CBufRet.f32 %4349, 3
  %4351 = fmul fast float %4350, %4348
  %4352 = fadd fast float %4351, %4346
  %4353 = fsub fast float 1.000000e+00, %450
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = fmul fast float %4355, %4353
  %4357 = fsub fast float %4352, %4356
  %4358 = fadd fast float %4341, %4340
  %4359 = extractvalue %dx.types.CBufRet.f32 %4349, 1
  %4360 = fsub fast float %4357, %4359
  %4361 = extractvalue %dx.types.CBufRet.f32 %4349, 2
  %4362 = fmul fast float %4360, %4361
  %4363 = call float @dx.op.unary.f32(i32 7, float %4362)  ; Saturate(value)
  br label %4368

; <label>:4364                                    ; preds = %4330
  %4365 = fmul fast float %4339, %4336
  %4366 = fmul fast float %4343, %4341
  %4367 = fmul fast float %4365, %4343
  br label %4368

; <label>:4368                                    ; preds = %4364, %4344
  %4369 = phi float [ %4358, %4344 ], [ %4340, %4364 ]
  %4370 = phi float [ %4363, %4344 ], [ %4366, %4364 ]
  %4371 = phi float [ 1.000000e+00, %4344 ], [ %4367, %4364 ]
  %4372 = fmul float %4343, %4369
  %4373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.f32 %4373, 0
  %4375 = fmul fast float %4374, %4332
  %4376 = fmul fast float %4374, %4333
  %4377 = fadd fast float %4332, %4331
  %4378 = select i1 %132, float %4377, float %4331
  %4379 = fmul float %4378, %4374
  %4380 = select i1 %132, float 0.000000e+00, float %4375
  %4381 = select i1 %132, float 0.000000e+00, float %4376
  %4382 = fmul fast float %4372, %4337
  %4383 = fmul fast float %4370, %4338
  %4384 = fmul fast float %4371, %4339
  %4385 = fadd fast float %4379, %4382
  %4386 = fadd fast float %4380, %4383
  %4387 = fadd fast float %4381, %4384
  %4388 = select i1 %132, float %4370, float %4386
  %4389 = select i1 %132, float %4371, float %4387
  %4390 = call float @dx.op.binary.f32(i32 36, float %4385, float 3.225500e+04)  ; FMin(a,b)
  %4391 = call float @dx.op.binary.f32(i32 36, float %4388, float 3.225500e+04)  ; FMin(a,b)
  %4392 = call float @dx.op.binary.f32(i32 36, float %4389, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4391)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4392)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!4 = !{!5, null, !47, !50}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 31, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 61, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 62, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 63, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 21, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 22, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !21}
!21 = !{i32 0, i32 5}
!22 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!30 = !{i32 22, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!34 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !39}
!39 = !{i32 0, i32 14}
!40 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!41 = !{i32 32, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!43 = !{i32 34, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!44 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{!48, !49}
!48 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!49 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 256, null}
!50 = !{!51, !52, !53, !54, !55, !56}
!51 = !{i32 0, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!52 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!53 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!54 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!55 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!56 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!57 = !{[43 x i32] [i32 41, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !84}
!59 = !{!60, !81, null}
!60 = !{!61, !64, !65, !66, !68, !69, !71, !73, !75, !76, !77, !79, !80}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!65 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!66 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !67}
!67 = !{i32 3, i32 7}
!68 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!69 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !62, i8 2, i32 1, i8 1, i32 3, i8 3, !70}
!70 = !{i32 3, i32 1}
!71 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !72, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!72 = !{i32 1}
!73 = !{i32 7, !"LGV_POSITION_INDEX", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!74 = !{i32 3, i32 8}
!75 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 7, i8 0, null}
!76 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 8, i8 0, null}
!77 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 9, i8 0, !78}
!78 = !{i32 3, i32 9}
!79 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 10, i8 0, !70}
!80 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!81 = !{!82}
!82 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !83}
!83 = !{i32 3, i32 15}
!84 = !{i32 0, i64 24}
!85 = !{!86, !88}
!86 = distinct !{!86, !87, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!87 = distinct !{!87, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!88 = distinct !{!88, !89, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!89 = distinct !{!89, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !107, i64 0}
!107 = !{!"omnipotent char", !108, i64 0}
!108 = !{!"Simple C/C++ TBAA"}
!109 = !{!110, !112, !114, !116}
!110 = distinct !{!110, !111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!111 = distinct !{!111, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!115 = distinct !{!115, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = !{!120, !120, i64 0}
!120 = !{!"float", !107, i64 0}
!121 = distinct !{!121, !99}
!122 = distinct !{!122, !99}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}

