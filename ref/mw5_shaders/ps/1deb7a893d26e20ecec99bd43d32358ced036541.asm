;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xyzw        2     NONE   float      w
; NORMAL                   0   xyz         3     NONE   float   xyz 
; CARD_DEPTH_OFFSET        0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float       
; CARD_BARY_AND_TILE       1   xyzw        5     NONE   float       
; CARD_TEXCOORDS_AND_RAY     1   xyzw        6     NONE   float   xyzw
; CARD_DEPTH_AND_SCALE     0   xyzw        7     NONE   float   x   
; LGV_POSITION_INDEX       0   xyzw        8     NONE   float      w
; SECONDARY_TEXCOORDS      0   xy          9     NONE   float       
; SCEONDARY_NORMAL         0   xyzw       10     NONE   float       
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x  w
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
; shader hash: 83a1444e1e3256a45b27791d31799a3f
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
; CARD_TEXCOORDS_AND_RAY     1          noperspective       
; CARD_DEPTH_AND_SCALE     0          noperspective       
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
; Number of inputs: 49, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 35, 44, 47, 48 }
;   output 1 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 35, 44, 47, 48 }
;   output 2 depends on inputs: { 0, 1, 3, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 35, 44, 47, 48 }
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
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = icmp ne i32 %47, 0
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = alloca [3 x float], align 4
  %66 = alloca [3 x float], align 4
  %67 = alloca [3 x float], align 4
  %68 = alloca [3 x float], align 4
  %69 = alloca [12 x float], align 4
  %70 = alloca [12 x float], align 4
  %71 = alloca [4 x float], align 4
  %72 = alloca [4 x float], align 4
  %73 = alloca [4 x float], align 4
  %74 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %75 = extractvalue %dx.types.CBufRet.f32 %74, 0
  %76 = fmul fast float %75, %62
  %77 = fmul fast float %75, %63
  %78 = select i1 %48, float 1.000000e+00, float -1.000000e+00
  %79 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = bitcast float %79 to i32
  %81 = ashr i32 %80, 1
  %82 = sub nsw i32 1597250115, %81
  %83 = bitcast i32 %82 to float
  %84 = fmul fast float %58, %78
  %85 = fmul fast float %84, %83
  %86 = fmul fast float %59, %78
  %87 = fmul fast float %86, %83
  %88 = fmul fast float %60, %78
  %89 = fmul fast float %88, %83
  %90 = lshr i32 %50, 8
  %91 = mul nuw nsw i32 %90, 24
  %92 = add nuw nsw i32 %91, 12
  %93 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %92, i32 undef)  ; BufferLoad(srv,index,wot)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = extractvalue %dx.types.ResRet.i32 %93, 1
  %96 = and i32 %94, 65535
  %97 = uitofp i32 %96 to float
  %98 = lshr i32 %94, 16
  %99 = uitofp i32 %98 to float
  %100 = and i32 %95, 65535
  %101 = uitofp i32 %100 to float
  %102 = lshr i32 %95, 16
  %103 = uitofp i32 %102 to float
  %104 = fmul fast float %97, 0x3F00001000000000
  %105 = fmul fast float %99, 0x3F00001000000000
  %106 = fmul fast float %101, 0x3F00001000000000
  %107 = fmul fast float %103, 0x3F00001000000000
  %108 = fadd fast float %104, -1.000000e+00
  %109 = fadd fast float %105, -1.000000e+00
  %110 = fadd fast float %106, -1.000000e+00
  %111 = fadd fast float %107, -1.000000e+00
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.i32 %113, 3
  %115 = and i32 %114, 3
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %114, 4
  %118 = icmp ne i32 %117, 0
  %119 = and i1 %116, %118
  br i1 %119, label %120, label %131

; <label>:120                                     ; preds = %0
  %121 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %122 = fmul fast float %121, %77
  %123 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %124 = fmul fast float %123, %76
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %41, float %124, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = fsub fast float 1.000000e+00, %126
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = fcmp fast olt float %127, %129
  br label %134

; <label>:131                                     ; preds = %0
  %132 = icmp eq i32 %117, 0
  %133 = and i1 %116, %132
  br label %134

; <label>:134                                     ; preds = %131, %120
  %135 = phi i1 [ %130, %120 ], [ %133, %131 ]
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = fmul fast float %137, 0x3FE3C6EF40000000
  %139 = frem fast float %76, 2.560000e+02
  %140 = frem fast float %77, 2.560000e+02
  %141 = fptoui float %139 to i32
  %142 = fptoui float %140 to i32
  %143 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %141, i32 %142, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fadd fast float %144, %138
  %146 = call float @dx.op.unary.f32(i32 22, float %145)  ; Frc(value)
  %147 = add i32 %49, 60
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = add i32 %149, 0
  %151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %150, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %152 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %151, i32 0)  ; GetDimensions(handle,mipLevel)
  %153 = extractvalue %dx.types.Dimensions %152, 0
  %154 = sitofp i32 %153 to float
  %155 = extractvalue %dx.types.Dimensions %152, 1
  %156 = sitofp i32 %155 to float
  %157 = fmul fast float %99, 0x3F10001000000000
  %158 = fadd fast float %157, -2.000000e+00
  %159 = fmul fast float %158, %109
  %160 = fsub fast float 1.000000e+00, %159
  %161 = fmul fast float %101, 0x3F10001000000000
  %162 = fadd fast float %161, -2.000000e+00
  %163 = fmul fast float %162, %110
  %164 = fsub fast float %160, %163
  %165 = fmul fast float %97, 0x3F10001000000000
  %166 = fadd fast float %165, -2.000000e+00
  %167 = fmul fast float %166, %109
  %168 = fmul fast float %162, %111
  %169 = fsub fast float %167, %168
  %170 = fmul fast float %166, %110
  %171 = fmul fast float %158, %111
  %172 = fadd fast float %170, %171
  %173 = fadd fast float %167, %168
  %174 = fmul fast float %166, %108
  %175 = fsub fast float 1.000000e+00, %174
  %176 = fsub fast float %175, %163
  %177 = fmul fast float %158, %110
  %178 = fmul fast float %166, %111
  %179 = fsub fast float %177, %178
  %180 = fsub fast float %170, %171
  %181 = fadd fast float %177, %178
  %182 = fsub fast float %175, %159
  %183 = add i32 %49, 24
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 2
  %186 = bitcast i32 %185 to float
  %187 = fdiv fast float 1.000000e+00, %52
  %188 = fmul fast float %187, %53
  %189 = fmul fast float %187, %54
  %190 = fmul fast float %188, %154
  %191 = call float @dx.op.unary.f32(i32 83, float %190)  ; DerivCoarseX(value)
  %192 = call float @dx.op.unary.f32(i32 84, float %190)  ; DerivCoarseY(value)
  %193 = fmul fast float %189, %156
  %194 = call float @dx.op.unary.f32(i32 83, float %193)  ; DerivCoarseX(value)
  %195 = call float @dx.op.unary.f32(i32 84, float %193)  ; DerivCoarseY(value)
  %196 = fmul fast float %194, %194
  %197 = fmul fast float %195, %195
  %198 = fadd fast float %197, %196
  %199 = fmul fast float %194, %191
  %200 = fmul fast float %195, %192
  %201 = fadd fast float %200, %199
  %202 = fmul fast float %191, %191
  %203 = fmul fast float %192, %192
  %204 = fadd fast float %203, %202
  %205 = fmul fast float %198, %204
  %206 = fmul fast float %201, %201
  %207 = fsub fast float %205, %206
  %208 = bitcast float %207 to i32
  %209 = fadd fast float %198, %204
  %210 = bitcast float %209 to i32
  %211 = sub i32 8388608, %210
  %212 = add i32 %211, %208
  %213 = ashr i32 %212, 24
  %214 = sitofp i32 %213 to float
  %215 = add i32 %49, 72
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = add i32 %217, 0
  %219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %219, %dx.types.Handle %41, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float %214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fmul fast float %221, 2.000000e+00
  %223 = fadd fast float %222, -1.000000e+00
  %224 = fmul fast float %223, %186
  %225 = fmul fast float %55, %78
  %226 = fmul fast float %225, %187
  %227 = fmul fast float %226, %224
  %228 = fmul fast float %56, %78
  %229 = fmul fast float %228, %187
  %230 = fmul fast float %229, %224
  %231 = fadd fast float %227, %188
  %232 = fadd fast float %230, %189
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = add i32 %234, 0
  %236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %236, %dx.types.Handle %41, float %231, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float %214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = extractvalue %dx.types.ResRet.f32 %237, 1
  %240 = extractvalue %dx.types.ResRet.f32 %237, 2
  %241 = fmul fast float %238, 2.000000e+00
  %242 = fmul fast float %239, 2.000000e+00
  %243 = fmul fast float %240, 2.000000e+00
  %244 = fadd fast float %241, -1.000000e+00
  %245 = fadd fast float %242, -1.000000e+00
  %246 = fadd fast float %243, -1.000000e+00
  %247 = fmul fast float %244, %164
  %248 = call float @dx.op.tertiary.f32(i32 46, float %245, float %169, float %247)  ; FMad(a,b,c)
  %249 = call float @dx.op.tertiary.f32(i32 46, float %246, float %172, float %248)  ; FMad(a,b,c)
  %250 = fmul fast float %244, %173
  %251 = call float @dx.op.tertiary.f32(i32 46, float %245, float %176, float %250)  ; FMad(a,b,c)
  %252 = call float @dx.op.tertiary.f32(i32 46, float %246, float %179, float %251)  ; FMad(a,b,c)
  %253 = fmul fast float %244, %180
  %254 = call float @dx.op.tertiary.f32(i32 46, float %245, float %181, float %253)  ; FMad(a,b,c)
  %255 = call float @dx.op.tertiary.f32(i32 46, float %246, float %182, float %254)  ; FMad(a,b,c)
  br i1 %48, label %265, label %256

; <label>:256                                     ; preds = %134
  %257 = call float @dx.op.dot3.f32(i32 55, float %85, float %87, float %89, float %249, float %252, float %255)  ; Dot3(ax,ay,az,bx,by,bz)
  %258 = fmul fast float %257, 2.000000e+00
  %259 = fmul fast float %258, %85
  %260 = fmul fast float %258, %87
  %261 = fmul fast float %258, %89
  %262 = fsub fast float %249, %259
  %263 = fsub fast float %252, %260
  %264 = fsub fast float %255, %261
  br label %265

; <label>:265                                     ; preds = %256, %134
  %266 = phi float [ %262, %256 ], [ %249, %134 ]
  %267 = phi float [ %263, %256 ], [ %252, %134 ]
  %268 = phi float [ %264, %256 ], [ %255, %134 ]
  %269 = add i32 %49, 56
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = add i32 %271, 0
  %273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %273, %dx.types.Handle %41, float %231, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float %214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %275 = extractvalue %dx.types.ResRet.f32 %274, 0
  %276 = extractvalue %dx.types.ResRet.f32 %274, 1
  %277 = extractvalue %dx.types.ResRet.f32 %274, 2
  %278 = extractvalue %dx.types.ResRet.f32 %274, 3
  %279 = add i32 %49, 64
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = add i32 %281, 0
  %283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %283, %dx.types.Handle %41, float %231, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float %214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = extractvalue %dx.types.ResRet.f32 %284, 2
  %288 = extractvalue %dx.types.ResRet.f32 %284, 3
  %289 = add i32 %49, 68
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = add i32 %291, 0
  %293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %293, %dx.types.Handle %41, float %231, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float %214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = add i32 %297, 0
  %299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %299, %dx.types.Handle %41, float %231, float %232, float undef, float undef, i32 0, i32 0, i32 undef, float %214)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fadd fast float %57, 1.000000e+00
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 2
  %305 = bitcast i32 %304 to float
  %306 = fmul fast float %301, 2.000000e+00
  %307 = fsub fast float %302, %306
  %308 = fmul fast float %305, %307
  %309 = fadd fast float %308, %64
  %310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %311 = extractvalue %dx.types.CBufRet.f32 %310, 2
  %312 = extractvalue %dx.types.CBufRet.f32 %310, 3
  %313 = fmul fast float %76, 2.000000e+00
  %314 = fmul fast float %313, %311
  %315 = fmul fast float %77, 2.000000e+00
  %316 = fmul fast float %315, %312
  %317 = fsub fast float 1.000000e+00, %314
  %318 = fsub fast float 1.000000e+00, %316
  %319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %320 = extractvalue %dx.types.CBufRet.f32 %319, 0
  %321 = extractvalue %dx.types.CBufRet.f32 %319, 1
  %322 = extractvalue %dx.types.CBufRet.f32 %319, 2
  %323 = fmul fast float %317, %320
  %324 = fmul fast float %317, %321
  %325 = fmul fast float %317, %322
  %326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.f32 %326, 0
  %328 = extractvalue %dx.types.CBufRet.f32 %326, 1
  %329 = extractvalue %dx.types.CBufRet.f32 %326, 2
  %330 = fmul fast float %318, %327
  %331 = fmul fast float %318, %328
  %332 = fmul fast float %318, %329
  %333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.f32 %333, 0
  %335 = extractvalue %dx.types.CBufRet.f32 %333, 1
  %336 = extractvalue %dx.types.CBufRet.f32 %333, 2
  %337 = fadd fast float %330, %334
  %338 = fadd fast float %337, %323
  %339 = fadd fast float %331, %335
  %340 = fadd fast float %339, %324
  %341 = fadd fast float %332, %336
  %342 = fadd fast float %341, %325
  %343 = fmul fast float %338, %309
  %344 = fmul fast float %340, %309
  %345 = fmul fast float %342, %309
  %346 = call float @dx.op.unary.f32(i32 26, float %51)  ; Round_ne(value)
  %347 = fptoui float %346 to i32
  %348 = call float @dx.op.unary.f32(i32 26, float %61)  ; Round_ne(value)
  %349 = fptoui float %348 to i32
  %350 = shl i32 %349, 3
  %351 = or i32 %350, 4
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 16777215
  %355 = add i32 %354, %347
  %356 = shl i32 %355, 6
  %357 = getelementptr [3 x float], [3 x float]* %65, i32 0, i32 0
  %358 = getelementptr [3 x float], [3 x float]* %66, i32 0, i32 0
  %359 = getelementptr [3 x float], [3 x float]* %67, i32 0, i32 0
  %360 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 0
  %361 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = extractvalue %dx.types.ResRet.f32 %361, 3
  store float %362, float* %357, align 4
  store float %363, float* %358, align 4
  store float %364, float* %359, align 4
  store float %365, float* %360, align 4
  %366 = getelementptr [3 x float], [3 x float]* %65, i32 0, i32 1
  %367 = getelementptr [3 x float], [3 x float]* %66, i32 0, i32 1
  %368 = getelementptr [3 x float], [3 x float]* %67, i32 0, i32 1
  %369 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 1
  %370 = or i32 %356, 16
  %371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = extractvalue %dx.types.ResRet.f32 %371, 1
  %374 = extractvalue %dx.types.ResRet.f32 %371, 2
  %375 = extractvalue %dx.types.ResRet.f32 %371, 3
  store float %372, float* %366, align 4
  store float %373, float* %367, align 4
  store float %374, float* %368, align 4
  store float %375, float* %369, align 4
  %376 = getelementptr [3 x float], [3 x float]* %65, i32 0, i32 2
  %377 = getelementptr [3 x float], [3 x float]* %66, i32 0, i32 2
  %378 = getelementptr [3 x float], [3 x float]* %67, i32 0, i32 2
  %379 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 2
  %380 = or i32 %356, 32
  %381 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.f32 %381, 0
  %383 = extractvalue %dx.types.ResRet.f32 %381, 1
  %384 = extractvalue %dx.types.ResRet.f32 %381, 2
  %385 = extractvalue %dx.types.ResRet.f32 %381, 3
  store float %382, float* %376, align 4
  store float %383, float* %377, align 4
  store float %384, float* %378, align 4
  store float %385, float* %379, align 4
  %386 = or i32 %356, 48
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.i32 %389, 1
  %391 = icmp eq i32 %390, 0
  %392 = and i32 %388, 4
  %393 = icmp ne i32 %392, 0
  %394 = and i1 %391, %393
  br i1 %394, label %395, label %434

; <label>:395                                     ; preds = %265
  %396 = and i32 %388, 3
  %397 = getelementptr [3 x float], [3 x float]* %65, i32 0, i32 %396
  %398 = getelementptr [3 x float], [3 x float]* %66, i32 0, i32 %396
  %399 = getelementptr [3 x float], [3 x float]* %67, i32 0, i32 %396
  %400 = getelementptr [3 x float], [3 x float]* %68, i32 0, i32 %396
  %401 = load float, float* %397, align 4
  %402 = load float, float* %398, align 4
  %403 = load float, float* %399, align 4
  %404 = load float, float* %400, align 4
  %405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %406 = extractvalue %dx.types.CBufRet.f32 %405, 0
  %407 = extractvalue %dx.types.CBufRet.f32 %405, 1
  %408 = extractvalue %dx.types.CBufRet.f32 %405, 2
  %409 = call float @dx.op.dot3.f32(i32 55, float %401, float %402, float %403, float %406, float %407, float %408)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = fadd fast float %409, %404
  %411 = fcmp fast ogt float %410, 1.000000e+00
  br i1 %411, label %412, label %417

; <label>:412                                     ; preds = %395
  %413 = fadd fast float %410, -1.000000e+00
  %414 = fmul fast float %413, 4.000000e+00
  %415 = call float @dx.op.unary.f32(i32 7, float %414)  ; Saturate(value)
  %416 = fmul fast float %415, 4.000000e+00
  br label %423

; <label>:417                                     ; preds = %395
  %418 = fcmp fast olt float %410, 0.000000e+00
  br i1 %418, label %419, label %423

; <label>:419                                     ; preds = %417
  %420 = fmul fast float %410, -4.000000e+00
  %421 = call float @dx.op.unary.f32(i32 7, float %420)  ; Saturate(value)
  %422 = fmul fast float %421, -4.000000e+00
  br label %423

; <label>:423                                     ; preds = %419, %417, %412
  %424 = phi float [ %416, %412 ], [ %422, %419 ], [ 0.000000e+00, %417 ]
  %425 = icmp eq i32 %396, 0
  %426 = select i1 %425, float %424, float 0.000000e+00
  %427 = fadd fast float %365, %426
  store float %427, float* %360, align 4, !noalias !87
  %428 = icmp eq i32 %396, 1
  %429 = select i1 %428, float %424, float 0.000000e+00
  %430 = fadd fast float %375, %429
  store float %430, float* %369, align 4, !noalias !87
  %431 = icmp eq i32 %396, 2
  %432 = select i1 %431, float %424, float 0.000000e+00
  %433 = fadd fast float %385, %432
  store float %433, float* %379, align 4, !noalias !87
  br label %434

; <label>:434                                     ; preds = %423, %265
  %435 = phi float [ %385, %265 ], [ %433, %423 ]
  %436 = phi float [ %375, %265 ], [ %430, %423 ]
  %437 = phi float [ %365, %265 ], [ %427, %423 ]
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 0
  %440 = extractvalue %dx.types.CBufRet.f32 %438, 1
  %441 = extractvalue %dx.types.CBufRet.f32 %438, 2
  %442 = fadd fast float %439, %343
  %443 = fadd fast float %440, %344
  %444 = fadd fast float %441, %345
  %445 = call float @dx.op.dot4.f32(i32 56, float %362, float %363, float %364, float %437, float %442, float %443, float %444, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %446 = call float @dx.op.dot4.f32(i32 56, float %372, float %373, float %374, float %436, float %442, float %443, float %444, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %447 = call float @dx.op.dot4.f32(i32 56, float %382, float %383, float %384, float %435, float %442, float %443, float %444, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %448 = fadd fast float %295, 0xBFB99999A0000000
  %449 = call float @dx.op.unary.f32(i32 7, float %448)  ; Saturate(value)
  %450 = fmul fast float %449, 0x3FF1C71C80000000
  %451 = call float @dx.op.binary.f32(i32 36, float %295, float 0x3FB99999A0000000)  ; FMin(a,b)
  %452 = fsub fast float 1.000000e+00, %450
  %453 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %454 = fmul fast float %453, %275
  %455 = fmul fast float %453, %276
  %456 = fmul fast float %453, %277
  %457 = call float @dx.op.unary.f32(i32 7, float %454)  ; Saturate(value)
  %458 = call float @dx.op.unary.f32(i32 7, float %455)  ; Saturate(value)
  %459 = call float @dx.op.unary.f32(i32 7, float %456)  ; Saturate(value)
  %460 = fmul fast float %450, %275
  %461 = fmul fast float %450, %276
  %462 = fmul fast float %450, %277
  %463 = fadd fast float %460, %451
  %464 = fadd fast float %461, %451
  %465 = fadd fast float %462, %451
  %466 = call float @dx.op.unary.f32(i32 7, float %463)  ; Saturate(value)
  %467 = call float @dx.op.unary.f32(i32 7, float %464)  ; Saturate(value)
  %468 = call float @dx.op.unary.f32(i32 7, float %465)  ; Saturate(value)
  %469 = call float @dx.op.dot3.f32(i32 55, float %457, float %458, float %459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = fmul fast float %469, 1.875000e-01
  %471 = fadd fast float %470, 0x3FE647AE20000000
  %472 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 0
  %475 = fsub fast float -0.000000e+00, %345
  %476 = call float @dx.op.dot3.f32(i32 55, float %343, float %344, float %345, float %343, float %344, float %345)  ; Dot3(ax,ay,az,bx,by,bz)
  %477 = call float @dx.op.unary.f32(i32 25, float %476)  ; Rsqrt(value)
  %478 = fmul fast float %477, %343
  %479 = fmul fast float %477, %344
  %480 = fmul fast float %477, %345
  %481 = fsub fast float -0.000000e+00, %478
  %482 = fsub fast float -0.000000e+00, %479
  %483 = fsub fast float -0.000000e+00, %480
  %484 = select i1 %135, float 0.000000e+00, float %468
  %485 = call float @dx.op.dot3.f32(i32 55, float %266, float %267, float %268, float %481, float %482, float %483)  ; Dot3(ax,ay,az,bx,by,bz)
  %486 = call float @dx.op.unary.f32(i32 7, float %485)  ; Saturate(value)
  %487 = call float @dx.op.dot3.f32(i32 55, float %478, float %479, float %480, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %488 = fmul fast float %487, 2.000000e+00
  %489 = fmul fast float %488, %266
  %490 = fmul fast float %488, %267
  %491 = fmul fast float %488, %268
  %492 = fsub fast float %478, %489
  %493 = fsub fast float %479, %490
  %494 = fsub fast float %480, %491
  %495 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %288)  ; FMin(a,b)
  %496 = fsub fast float 1.000000e+00, %495
  %497 = bitcast float %496 to i32
  %498 = ashr i32 %497, 1
  %499 = add nsw i32 %498, 532487669
  %500 = bitcast i32 %499 to float
  %501 = fsub fast float 1.000000e+00, %278
  %502 = call float @dx.op.binary.f32(i32 35, float %501, float 0x3F847AE140000000)  ; FMax(a,b)
  %503 = fmul fast float %502, %502
  %504 = fmul fast float %503, %503
  %505 = call float @dx.op.unary.f32(i32 7, float %486)  ; Saturate(value)
  %506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %41, float %500, float %504, float %505, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %509 = extractvalue %dx.types.CBufRet.f32 %508, 0
  %510 = extractvalue %dx.types.CBufRet.f32 %508, 1
  %511 = fadd fast float %509, %343
  %512 = fadd fast float %510, %344
  %513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.i32 %513, 0
  %515 = icmp eq i32 %514, 1
  br i1 %515, label %516, label %551

; <label>:516                                     ; preds = %434
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %519 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %520 = fsub fast float %511, %518
  %521 = fsub fast float %512, %519
  %522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %523 = extractvalue %dx.types.CBufRet.f32 %522, 0
  %524 = extractvalue %dx.types.CBufRet.f32 %522, 1
  %525 = fmul fast float %520, %523
  %526 = fmul fast float %521, %524
  %527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %41, float %525, float %526, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %528 = extractvalue %dx.types.ResRet.f32 %527, 0
  %529 = fcmp fast ogt float %528, 0.000000e+00
  %530 = extractvalue %dx.types.CBufRet.i32 %513, 3
  %531 = icmp ne i32 %530, 0
  %532 = and i1 %529, %531
  br i1 %532, label %533, label %551, !dx.controlflow.hints !92

; <label>:533                                     ; preds = %516
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %537 = fsub fast float %511, %535
  %538 = fsub fast float %512, %536
  %539 = fmul fast float %537, %537
  %540 = fmul fast float %538, %538
  %541 = fadd fast float %539, %540
  %542 = uitofp i32 %530 to float
  %543 = fmul fast float %542, %542
  %544 = fcmp fast ogt float %541, %543
  br i1 %544, label %551, label %545

; <label>:545                                     ; preds = %533
  %546 = call float @dx.op.unary.f32(i32 24, float %541)  ; Sqrt(value)
  %547 = fsub fast float %542, %546
  %548 = fmul fast float %547, 0x3F75555560000000
  %549 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %550 = call float @dx.op.binary.f32(i32 36, float %549, float %528)  ; FMin(a,b)
  br label %551

; <label>:551                                     ; preds = %545, %533, %516, %434
  %552 = phi float [ 1.000000e+00, %434 ], [ %550, %545 ], [ %528, %516 ], [ 0.000000e+00, %533 ]
  %553 = fcmp fast ogt float %552, 0.000000e+00
  br i1 %553, label %554, label %931, !dx.controlflow.hints !93

; <label>:554                                     ; preds = %551
  %555 = fadd fast float %51, 5.000000e-01
  %556 = fptoui float %555 to i32
  %557 = fadd fast float %61, 5.000000e-01
  %558 = fptoui float %557 to i32
  %559 = shl i32 %558, 3
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = or i32 %559, 4
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = and i32 %564, 16777215
  %566 = add i32 %565, %556
  %567 = shl i32 %566, 5
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = extractvalue %dx.types.ResRet.f32 %568, 2
  %572 = or i32 %567, 16
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = lshr i32 %564, 24
  %578 = and i32 %577, 3
  %579 = add nuw nsw i32 %578, 3
  %580 = shl i32 1, %579
  %581 = lshr i32 %564, 29
  %582 = lshr i32 %564, 23
  %583 = and i32 %582, 56
  %584 = shl nuw nsw i32 %581, 3
  %585 = lshr i32 %561, 16
  %586 = and i32 %561, 65535
  %587 = uitofp i32 %580 to float
  %588 = fmul fast float %587, 1.562500e-02
  %589 = uitofp i32 %585 to float
  %590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %591 = extractvalue %dx.types.CBufRet.f32 %590, 3
  %592 = fmul fast float %591, %589
  %593 = uitofp i32 %583 to float
  %594 = fmul fast float %593, 1.562500e-02
  %595 = uitofp i32 %584 to float
  %596 = fmul fast float %595, 1.562500e-02
  %597 = uitofp i32 %586 to float
  %598 = fmul fast float %591, %597
  %599 = call float @dx.op.unary.f32(i32 7, float %445)  ; Saturate(value)
  %600 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %601 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %602 = fmul fast float %599, %569
  %603 = fmul fast float %600, %570
  %604 = fmul fast float %601, %571
  %605 = fadd fast float %602, %574
  %606 = fmul fast float %588, %605
  %607 = fadd fast float %606, %594
  %608 = fadd fast float %603, %575
  %609 = fmul fast float %588, %608
  %610 = fadd fast float %609, %596
  %611 = fadd fast float %604, %576
  %612 = fmul fast float %592, %611
  %613 = fadd fast float %612, %598
  %614 = fmul fast float %607, 5.000000e-01
  %615 = fmul fast float %610, 0x3FD5555560000000
  %616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %607, float %610, float %613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %621 = extractvalue %dx.types.CBufRet.f32 %620, 3
  %622 = fmul fast float %621, %617
  %623 = fmul fast float %621, %618
  %624 = fmul fast float %621, %619
  %625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %614, float %615, float %613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %626 = extractvalue %dx.types.ResRet.f32 %625, 0
  %627 = extractvalue %dx.types.ResRet.f32 %625, 1
  %628 = extractvalue %dx.types.ResRet.f32 %625, 2
  %629 = extractvalue %dx.types.ResRet.f32 %625, 3
  %630 = fadd fast float %614, 5.000000e-01
  %631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %630, float %615, float %613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %632 = extractvalue %dx.types.ResRet.f32 %631, 0
  %633 = extractvalue %dx.types.ResRet.f32 %631, 1
  %634 = extractvalue %dx.types.ResRet.f32 %631, 2
  %635 = extractvalue %dx.types.ResRet.f32 %631, 3
  %636 = fadd fast float %615, 0x3FD5555560000000
  %637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %614, float %636, float %613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = extractvalue %dx.types.ResRet.f32 %637, 3
  %642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %630, float %636, float %613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  %647 = fadd fast float %615, 0x3FE5555560000000
  %648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %614, float %647, float %613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %649 = extractvalue %dx.types.ResRet.f32 %648, 0
  %650 = extractvalue %dx.types.ResRet.f32 %648, 1
  %651 = extractvalue %dx.types.ResRet.f32 %648, 2
  %652 = extractvalue %dx.types.ResRet.f32 %648, 3
  %653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %630, float %647, float %613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 2
  %657 = extractvalue %dx.types.ResRet.f32 %653, 3
  %658 = fmul fast float %626, 0x400BB67AE0000000
  %659 = fadd fast float %658, 0xBFFBB67AE0000000
  %660 = fmul fast float %659, %622
  %661 = fmul fast float %627, 0x400BB67AE0000000
  %662 = fadd fast float %661, 0xBFFBB67AE0000000
  %663 = fmul fast float %662, %623
  %664 = fmul fast float %628, 0x400BB67AE0000000
  %665 = fadd fast float %664, 0xBFFBB67AE0000000
  %666 = fmul fast float %665, %624
  %667 = fmul fast float %629, 0x4011E377A0000000
  %668 = fadd fast float %667, 0xC001E377A0000000
  %669 = fmul fast float %668, %622
  %670 = fmul fast float %632, 0x4011E377A0000000
  %671 = fadd fast float %670, 0xC001E377A0000000
  %672 = fmul fast float %671, %623
  %673 = fmul fast float %633, 0x4011E377A0000000
  %674 = fadd fast float %673, 0xC001E377A0000000
  %675 = fmul fast float %674, %624
  %676 = fmul fast float %634, 0x400BB67AE0000000
  %677 = fadd fast float %676, 0xBFFBB67AE0000000
  %678 = fmul fast float %677, %622
  %679 = fmul fast float %635, 0x400BB67AE0000000
  %680 = fadd fast float %679, 0xBFFBB67AE0000000
  %681 = fmul fast float %680, %623
  %682 = fmul fast float %638, 0x400BB67AE0000000
  %683 = fadd fast float %682, 0xBFFBB67AE0000000
  %684 = fmul fast float %683, %624
  %685 = fmul fast float %639, 0x400BB67AE0000000
  %686 = fadd fast float %685, 0xBFFBB67AE0000000
  %687 = fmul fast float %686, %622
  %688 = fmul fast float %640, 0x400BB67AE0000000
  %689 = fadd fast float %688, 0xBFFBB67AE0000000
  %690 = fmul fast float %689, %623
  %691 = fmul fast float %641, 0x400BB67AE0000000
  %692 = fadd fast float %691, 0xBFFBB67AE0000000
  %693 = fmul fast float %692, %624
  %694 = fmul fast float %643, 0x400EFBDEC0000000
  %695 = fadd fast float %694, 0xBFFEFBDEC0000000
  %696 = fmul fast float %695, %622
  %697 = fmul fast float %644, 0x400EFBDEC0000000
  %698 = fadd fast float %697, 0xBFFEFBDEC0000000
  %699 = fmul fast float %698, %623
  %700 = fmul fast float %645, 0x400EFBDEC0000000
  %701 = fadd fast float %700, 0xBFFEFBDEC0000000
  %702 = fmul fast float %701, %624
  %703 = fmul fast float %646, 0x400EFBDEC0000000
  %704 = fadd fast float %703, 0xBFFEFBDEC0000000
  %705 = fmul fast float %704, %622
  %706 = fmul fast float %649, 0x400EFBDEC0000000
  %707 = fadd fast float %706, 0xBFFEFBDEC0000000
  %708 = fmul fast float %707, %623
  %709 = fmul fast float %650, 0x400EFBDEC0000000
  %710 = fadd fast float %709, 0xBFFEFBDEC0000000
  %711 = fmul fast float %710, %624
  %712 = fmul fast float %651, 0x400EFBDEC0000000
  %713 = fadd fast float %712, 0xBFFEFBDEC0000000
  %714 = fmul fast float %713, %622
  %715 = fmul fast float %652, 0x400EFBDEC0000000
  %716 = fadd fast float %715, 0xBFFEFBDEC0000000
  %717 = fmul fast float %716, %623
  %718 = fmul fast float %654, 0x400EFBDEC0000000
  %719 = fadd fast float %718, 0xBFFEFBDEC0000000
  %720 = fmul fast float %719, %624
  %721 = fmul fast float %655, 0x400EFBDEC0000000
  %722 = fadd fast float %721, 0xBFFEFBDEC0000000
  %723 = fmul fast float %722, %622
  %724 = fmul fast float %656, 0x400EFBDEC0000000
  %725 = fadd fast float %724, 0xBFFEFBDEC0000000
  %726 = fmul fast float %725, %623
  %727 = fmul fast float %657, 0x400EFBDEC0000000
  %728 = fadd fast float %727, 0xBFFEFBDEC0000000
  %729 = fmul fast float %728, %624
  %730 = call float @dx.op.dot3.f32(i32 55, float %622, float %623, float %624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %731 = fmul fast float %730, 0x3FD20DD760000000
  %732 = fmul fast float %622, 0x3FD20DD760000000
  %733 = fmul fast float %268, 0x3FD4D8D7C0000000
  %734 = fmul fast float %733, %660
  %735 = fmul fast float %268, %268
  %736 = fmul fast float %735, 0x3FEE471020000000
  %737 = fadd fast float %736, 0xBFD42F6020000000
  %738 = fmul fast float %669, %737
  %739 = fmul fast float %266, 0x3FD4D8D7C0000000
  %740 = fmul fast float %739, %687
  %741 = fmul fast float %267, 0x3FD4D8D7C0000000
  %742 = fmul fast float %741, %678
  %743 = fmul fast float %268, 0xBFF17B1420000000
  %744 = fmul fast float %696, %266
  %745 = fmul fast float %705, %267
  %746 = fmul fast float %266, %266
  %747 = fmul fast float %267, %267
  %748 = fsub fast float %746, %747
  %749 = fmul fast float %748, 0x3FC17B1420000000
  %750 = fmul fast float %749, %714
  %751 = fmul fast float %266, 0x3FD17B1420000000
  %752 = fmul fast float %751, %267
  %753 = fmul fast float %752, %723
  %754 = fadd fast float %745, %744
  %755 = fmul fast float %743, %754
  %756 = fadd fast float %755, %738
  %757 = fmul fast float %756, 2.500000e-01
  %758 = fadd fast float %734, %732
  %759 = fsub fast float %758, %742
  %760 = fsub fast float %759, %740
  %761 = fadd fast float %760, %757
  %762 = fadd fast float %761, %750
  %763 = fadd fast float %762, %753
  %764 = fmul fast float %623, 0x3FD20DD760000000
  %765 = fmul fast float %733, %663
  %766 = fmul fast float %672, %737
  %767 = fmul fast float %739, %690
  %768 = fmul fast float %741, %681
  %769 = fmul fast float %699, %266
  %770 = fmul fast float %708, %267
  %771 = fmul fast float %749, %717
  %772 = fmul fast float %752, %726
  %773 = fadd fast float %770, %769
  %774 = fmul fast float %743, %773
  %775 = fadd fast float %774, %766
  %776 = fmul fast float %775, 2.500000e-01
  %777 = fadd fast float %765, %764
  %778 = fsub fast float %777, %768
  %779 = fsub fast float %778, %767
  %780 = fadd fast float %779, %771
  %781 = fadd fast float %780, %776
  %782 = fadd fast float %781, %772
  %783 = fmul fast float %624, 0x3FD20DD760000000
  %784 = fmul fast float %733, %666
  %785 = fmul fast float %675, %737
  %786 = fmul fast float %739, %693
  %787 = fmul fast float %741, %684
  %788 = fmul fast float %702, %266
  %789 = fmul fast float %711, %267
  %790 = fmul fast float %749, %720
  %791 = fmul fast float %752, %729
  %792 = fadd fast float %789, %788
  %793 = fmul fast float %743, %792
  %794 = fadd fast float %793, %785
  %795 = fmul fast float %794, 2.500000e-01
  %796 = fadd fast float %784, %783
  %797 = fsub fast float %796, %786
  %798 = fsub fast float %797, %787
  %799 = fadd fast float %798, %795
  %800 = fadd fast float %799, %790
  %801 = fadd fast float %800, %791
  %802 = call float @dx.op.binary.f32(i32 35, float %763, float 0.000000e+00)  ; FMax(a,b)
  %803 = call float @dx.op.binary.f32(i32 35, float %782, float 0.000000e+00)  ; FMax(a,b)
  %804 = call float @dx.op.binary.f32(i32 35, float %801, float 0.000000e+00)  ; FMax(a,b)
  %805 = fsub fast float -0.000000e+00, %266
  %806 = fsub fast float -0.000000e+00, %267
  %807 = fmul fast float %268, 0xBFD4D8D7C0000000
  %808 = fmul fast float %807, %660
  %809 = fmul fast float %687, 0x3FD4D8D7C0000000
  %810 = fmul fast float %268, 0x3FF17B1420000000
  %811 = fmul fast float %696, %805
  %812 = fmul fast float %705, %806
  %813 = fmul fast float %267, 0x3FD17B1420000000
  %814 = fmul fast float %813, %723
  %815 = fadd fast float %812, %811
  %816 = fmul fast float %810, %815
  %817 = fadd fast float %816, %738
  %818 = fmul fast float %817, 2.500000e-01
  %819 = fadd fast float %814, %809
  %820 = fmul fast float %819, %266
  %821 = fadd fast float %808, %732
  %822 = fadd fast float %821, %742
  %823 = fadd fast float %822, %750
  %824 = fadd fast float %823, %818
  %825 = fadd fast float %824, %820
  %826 = fmul fast float %807, %663
  %827 = fmul fast float %690, 0x3FD4D8D7C0000000
  %828 = fmul fast float %699, %805
  %829 = fmul fast float %708, %806
  %830 = fmul fast float %813, %726
  %831 = fadd fast float %829, %828
  %832 = fmul fast float %810, %831
  %833 = fadd fast float %832, %766
  %834 = fmul fast float %833, 2.500000e-01
  %835 = fadd fast float %830, %827
  %836 = fmul fast float %835, %266
  %837 = fadd fast float %826, %764
  %838 = fadd fast float %837, %768
  %839 = fadd fast float %838, %771
  %840 = fadd fast float %839, %834
  %841 = fadd fast float %840, %836
  %842 = fmul fast float %807, %666
  %843 = fmul fast float %684, 0x3FD4D8D7C0000000
  %844 = fmul fast float %702, %805
  %845 = fmul fast float %711, %806
  %846 = fmul fast float %751, %729
  %847 = fadd fast float %845, %844
  %848 = fmul fast float %810, %847
  %849 = fadd fast float %848, %785
  %850 = fmul fast float %849, 2.500000e-01
  %851 = fadd fast float %846, %843
  %852 = fmul fast float %851, %267
  %853 = fadd fast float %842, %783
  %854 = fadd fast float %853, %786
  %855 = fadd fast float %854, %790
  %856 = fadd fast float %855, %850
  %857 = fadd fast float %856, %852
  %858 = call float @dx.op.binary.f32(i32 35, float %825, float 0.000000e+00)  ; FMax(a,b)
  %859 = call float @dx.op.binary.f32(i32 35, float %841, float 0.000000e+00)  ; FMax(a,b)
  %860 = call float @dx.op.binary.f32(i32 35, float %857, float 0.000000e+00)  ; FMax(a,b)
  %861 = fmul fast float %494, 0x3FD4D8D7C0000000
  %862 = fmul fast float %861, %660
  %863 = fmul fast float %494, %494
  %864 = fmul fast float %863, 0x3FEE471020000000
  %865 = fadd fast float %864, 0xBFD42F6020000000
  %866 = fmul fast float %669, %865
  %867 = fmul fast float %492, 0x3FD4D8D7C0000000
  %868 = fmul fast float %867, %687
  %869 = fmul fast float %493, 0x3FD4D8D7C0000000
  %870 = fmul fast float %869, %678
  %871 = fmul fast float %494, 0xBFF17B1420000000
  %872 = fmul fast float %696, %492
  %873 = fmul fast float %705, %493
  %874 = fmul fast float %492, %492
  %875 = fmul fast float %493, %493
  %876 = fsub fast float %874, %875
  %877 = fmul fast float %876, 0x3FC17B1420000000
  %878 = fmul fast float %877, %714
  %879 = fmul fast float %493, 0x3FD17B1420000000
  %880 = fmul fast float %879, %492
  %881 = fmul fast float %880, %723
  %882 = fadd fast float %873, %872
  %883 = fmul fast float %871, %882
  %884 = fadd fast float %883, %866
  %885 = fmul fast float %884, 2.500000e-01
  %886 = fadd fast float %862, %732
  %887 = fsub fast float %886, %870
  %888 = fsub fast float %887, %868
  %889 = fadd fast float %888, %885
  %890 = fadd fast float %889, %878
  %891 = fadd fast float %890, %881
  %892 = fmul fast float %861, %663
  %893 = fmul fast float %672, %865
  %894 = fmul fast float %867, %690
  %895 = fmul fast float %869, %681
  %896 = fmul fast float %699, %492
  %897 = fmul fast float %708, %493
  %898 = fmul fast float %877, %717
  %899 = fmul fast float %880, %726
  %900 = fadd fast float %897, %896
  %901 = fmul fast float %871, %900
  %902 = fadd fast float %901, %893
  %903 = fmul fast float %902, 2.500000e-01
  %904 = fadd fast float %892, %764
  %905 = fsub fast float %904, %895
  %906 = fsub fast float %905, %894
  %907 = fadd fast float %906, %898
  %908 = fadd fast float %907, %903
  %909 = fadd fast float %908, %899
  %910 = fmul fast float %861, %666
  %911 = fmul fast float %675, %865
  %912 = fmul fast float %867, %693
  %913 = fmul fast float %869, %684
  %914 = fmul fast float %702, %492
  %915 = fmul fast float %711, %493
  %916 = fmul fast float %877, %720
  %917 = fmul fast float %880, %729
  %918 = fadd fast float %915, %914
  %919 = fmul fast float %871, %918
  %920 = fadd fast float %919, %911
  %921 = fmul fast float %920, 2.500000e-01
  %922 = fadd fast float %910, %783
  %923 = fsub fast float %922, %912
  %924 = fsub fast float %923, %913
  %925 = fadd fast float %924, %921
  %926 = fadd fast float %925, %916
  %927 = fadd fast float %926, %917
  %928 = call float @dx.op.binary.f32(i32 35, float %891, float 0.000000e+00)  ; FMax(a,b)
  %929 = call float @dx.op.binary.f32(i32 35, float %909, float 0.000000e+00)  ; FMax(a,b)
  %930 = call float @dx.op.binary.f32(i32 35, float %927, float 0.000000e+00)  ; FMax(a,b)
  br label %931

; <label>:931                                     ; preds = %554, %551
  %932 = phi float [ %928, %554 ], [ 0.000000e+00, %551 ]
  %933 = phi float [ %929, %554 ], [ 0.000000e+00, %551 ]
  %934 = phi float [ %930, %554 ], [ 0.000000e+00, %551 ]
  %935 = phi float [ %858, %554 ], [ 0.000000e+00, %551 ]
  %936 = phi float [ %859, %554 ], [ 0.000000e+00, %551 ]
  %937 = phi float [ %860, %554 ], [ 0.000000e+00, %551 ]
  %938 = phi float [ %802, %554 ], [ 0.000000e+00, %551 ]
  %939 = phi float [ %803, %554 ], [ 0.000000e+00, %551 ]
  %940 = phi float [ %804, %554 ], [ 0.000000e+00, %551 ]
  %941 = phi float [ %731, %554 ], [ 0.000000e+00, %551 ]
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 0
  %944 = fcmp fast ogt float %943, 0.000000e+00
  %945 = and i1 %553, %944
  br i1 %945, label %946, label %1153, !dx.controlflow.hints !94

; <label>:946                                     ; preds = %931
  %947 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %948 = fadd fast float %947, %345
  %949 = fmul fast float %266, 3.200000e+01
  %950 = fmul fast float %267, 3.200000e+01
  %951 = fadd fast float %511, %949
  %952 = fadd fast float %512, %950
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 0
  %955 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %956 = fsub fast float %951, %954
  %957 = fsub fast float %952, %955
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 0
  %960 = extractvalue %dx.types.CBufRet.f32 %958, 1
  %961 = fmul fast float %956, %959
  %962 = fmul fast float %957, %960
  %963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %964 = extractvalue %dx.types.CBufRet.f32 %963, 0
  %965 = extractvalue %dx.types.CBufRet.f32 %963, 1
  %966 = fsub fast float %511, %964
  %967 = fsub fast float %512, %965
  %968 = fmul fast float %966, %966
  %969 = fmul fast float %967, %967
  %970 = fadd fast float %968, %969
  %971 = call float @dx.op.unary.f32(i32 24, float %970)  ; Sqrt(value)
  %972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %973 = extractvalue %dx.types.CBufRet.f32 %972, 0
  %974 = extractvalue %dx.types.CBufRet.f32 %972, 1
  %975 = fsub fast float %971, %973
  %976 = fdiv fast float %975, %974
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %978 = fmul fast float %977, 2.000000e+00
  %979 = fsub fast float 3.000000e+00, %978
  %980 = fmul fast float %977, %977
  %981 = fmul fast float %980, %979
  %982 = fcmp fast oge float %961, 0.000000e+00
  %983 = fcmp fast ole float %961, 1.000000e+00
  %984 = and i1 %983, %982
  %985 = fcmp fast oge float %962, 0.000000e+00
  %986 = and i1 %985, %984
  %987 = fcmp fast ole float %962, 1.000000e+00
  %988 = and i1 %987, %986
  %989 = fcmp fast ogt float %981, 0.000000e+00
  %990 = and i1 %989, %988
  br i1 %990, label %991, label %1114, !dx.controlflow.hints !95

; <label>:991                                     ; preds = %946
  %992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %993 = extractvalue %dx.types.CBufRet.f32 %992, 2
  %994 = extractvalue %dx.types.CBufRet.f32 %992, 3
  %995 = fmul fast float %993, %961
  %996 = fmul fast float %994, %962
  %997 = call float @dx.op.unary.f32(i32 27, float %995)  ; Round_ni(value)
  %998 = call float @dx.op.unary.f32(i32 27, float %996)  ; Round_ni(value)
  %999 = fptosi float %997 to i32
  %1000 = fptosi float %998 to i32
  %1001 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %999, i32 %1000, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = lshr i32 %1002, 16
  %1004 = icmp eq i32 %1003, 65535
  br i1 %1004, label %1114, label %1005

; <label>:1005                                    ; preds = %991
  %1006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1007 = extractvalue %dx.types.CBufRet.f32 %1006, 0
  %1008 = fmul fast float %1007, %961
  %1009 = extractvalue %dx.types.CBufRet.f32 %1006, 1
  %1010 = fadd fast float %1008, %1009
  %1011 = extractvalue %dx.types.CBufRet.f32 %1006, 2
  %1012 = fmul fast float %1011, %962
  %1013 = extractvalue %dx.types.CBufRet.f32 %1006, 3
  %1014 = fadd fast float %1012, %1013
  %1015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %1010, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1021 = fsub fast float %1019, %1020
  %1022 = fmul fast float %1021, %1016
  %1023 = fadd fast float %1022, %1020
  %1024 = extractvalue %dx.types.CBufRet.f32 %1018, 3
  %1025 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1026 = fsub fast float %1024, %1025
  %1027 = fmul fast float %1026, %1017
  %1028 = fadd fast float %1027, %1025
  %1029 = fsub fast float %948, %1023
  %1030 = fsub fast float %1028, %1023
  %1031 = fdiv fast float %1029, %1030
  %1032 = call float @dx.op.unary.f32(i32 7, float %1031)  ; Saturate(value)
  %1033 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %1034 = extractvalue %dx.types.CBufRet.f32 %992, 0
  %1035 = extractvalue %dx.types.CBufRet.f32 %992, 1
  %1036 = fmul fast float %1034, %961
  %1037 = fmul fast float %1035, %962
  %1038 = fmul fast float %1036, 1.250000e-01
  %1039 = fmul fast float %1037, 1.250000e-01
  %1040 = call float @dx.op.unary.f32(i32 27, float %1038)  ; Round_ni(value)
  %1041 = call float @dx.op.unary.f32(i32 27, float %1039)  ; Round_ni(value)
  %1042 = fmul fast float %1040, 8.000000e+00
  %1043 = fmul fast float %1041, 8.000000e+00
  %1044 = fsub fast float %1036, %1042
  %1045 = fsub fast float %1037, %1043
  %1046 = fadd fast float %1044, 5.000000e-01
  %1047 = fadd fast float %1045, 5.000000e-01
  %1048 = and i32 %1003, 255
  %1049 = lshr i32 %1002, 24
  %1050 = mul nuw nsw i32 %1048, 9
  %1051 = uitofp i32 %1050 to float
  %1052 = mul nuw nsw i32 %1049, 9
  %1053 = uitofp i32 %1052 to float
  %1054 = fadd fast float %1046, %1051
  %1055 = fadd fast float %1047, %1053
  %1056 = fdiv fast float %1054, %943
  %1057 = fdiv fast float %1055, %1033
  %1058 = fmul fast float %1032, 4.375000e-01
  %1059 = fadd fast float %1058, 3.125000e-02
  %1060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %1056, float %1057, float %1059, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1061 = extractvalue %dx.types.ResRet.f32 %1060, 0
  %1062 = extractvalue %dx.types.ResRet.f32 %1060, 1
  %1063 = extractvalue %dx.types.ResRet.f32 %1060, 2
  %1064 = fadd fast float %1058, 5.312500e-01
  %1065 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %1056, float %1057, float %1064, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = extractvalue %dx.types.ResRet.f32 %1065, 1
  %1068 = extractvalue %dx.types.ResRet.f32 %1065, 2
  %1069 = fmul fast float %1066, 2.000000e+00
  %1070 = fmul fast float %1067, 2.000000e+00
  %1071 = fmul fast float %1068, 2.000000e+00
  %1072 = fadd fast float %1069, -1.000000e+00
  %1073 = fadd fast float %1070, -1.000000e+00
  %1074 = fadd fast float %1071, -1.000000e+00
  %1075 = fmul fast float %1072, %1072
  %1076 = fmul fast float %1073, %1073
  %1077 = fadd fast float %1075, %1076
  %1078 = fmul fast float %1074, %1074
  %1079 = fadd fast float %1077, %1078
  %1080 = call float @dx.op.unary.f32(i32 24, float %1079)  ; Sqrt(value)
  %1081 = fcmp fast ogt float %1080, 0.000000e+00
  br i1 %1081, label %1082, label %1086

; <label>:1082                                    ; preds = %1005
  %1083 = fdiv fast float %1072, %1080
  %1084 = fdiv fast float %1073, %1080
  %1085 = fdiv fast float %1074, %1080
  br label %1086

; <label>:1086                                    ; preds = %1082, %1005
  %1087 = phi float [ %1083, %1082 ], [ 0.000000e+00, %1005 ]
  %1088 = phi float [ %1084, %1082 ], [ 0.000000e+00, %1005 ]
  %1089 = phi float [ %1085, %1082 ], [ 0.000000e+00, %1005 ]
  %1090 = call float @dx.op.dot3.f32(i32 55, float %1087, float %1088, float %1089, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %1091 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1090)  ; FMax(a,b)
  %1092 = fmul fast float %1091, 0x400C5BF8A0000000
  %1093 = fmul fast float %1061, %981
  %1094 = fmul fast float %1093, %1092
  %1095 = fmul fast float %1062, %981
  %1096 = fmul fast float %1095, %1092
  %1097 = fmul fast float %1063, %981
  %1098 = fmul fast float %1097, %1092
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1101 = fmul fast float %1094, %1100
  %1102 = fmul fast float %1096, %1100
  %1103 = fmul fast float %1098, %1100
  %1104 = fcmp fast ogt float %948, %1028
  br i1 %1104, label %1105, label %1114

; <label>:1105                                    ; preds = %1086
  %1106 = fmul fast float %1030, 0x3FC24924A0000000
  %1107 = fsub fast float %948, %1028
  %1108 = fdiv fast float %1107, %1106
  %1109 = call float @dx.op.unary.f32(i32 7, float %1108)  ; Saturate(value)
  %1110 = fsub fast float 1.000000e+00, %1109
  %1111 = fmul fast float %1110, %1101
  %1112 = fmul fast float %1110, %1102
  %1113 = fmul fast float %1110, %1103
  br label %1114

; <label>:1114                                    ; preds = %1105, %1086, %991, %946
  %1115 = phi float [ %1113, %1105 ], [ %1103, %1086 ], [ 0.000000e+00, %991 ], [ 0.000000e+00, %946 ]
  %1116 = phi float [ %1112, %1105 ], [ %1102, %1086 ], [ 0.000000e+00, %991 ], [ 0.000000e+00, %946 ]
  %1117 = phi float [ %1111, %1105 ], [ %1101, %1086 ], [ 0.000000e+00, %991 ], [ 0.000000e+00, %946 ]
  %1118 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1117)  ; FMax(a,b)
  %1119 = fmul fast float %1118, 0x3FD20DD760000000
  %1120 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %492, float %493, float %494)  ; Dot3(ax,ay,az,bx,by,bz)
  %1121 = fmul fast float %1120, 0x3FDF454380000000
  %1122 = fmul fast float %1120, %1120
  %1123 = fmul fast float %1122, 0x3FEE471020000000
  %1124 = fadd fast float %1123, 0xBFD42F6020000000
  %1125 = call float @dx.op.dot3.f32(i32 55, float %1118, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1121, float %1124)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1116)  ; FMax(a,b)
  %1127 = fmul fast float %1126, 0x3FD20DD760000000
  %1128 = call float @dx.op.dot3.f32(i32 55, float %1126, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1121, float %1124)  ; Dot3(ax,ay,az,bx,by,bz)
  %1129 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1115)  ; FMax(a,b)
  %1130 = fmul fast float %1129, 0x3FD20DD760000000
  %1131 = call float @dx.op.dot3.f32(i32 55, float %1129, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1121, float %1124)  ; Dot3(ax,ay,az,bx,by,bz)
  %1132 = call float @dx.op.binary.f32(i32 35, float %1119, float 0.000000e+00)  ; FMax(a,b)
  %1133 = call float @dx.op.binary.f32(i32 35, float %1127, float 0.000000e+00)  ; FMax(a,b)
  %1134 = call float @dx.op.binary.f32(i32 35, float %1130, float 0.000000e+00)  ; FMax(a,b)
  %1135 = call float @dx.op.binary.f32(i32 35, float %1125, float 0.000000e+00)  ; FMax(a,b)
  %1136 = call float @dx.op.binary.f32(i32 35, float %1128, float 0.000000e+00)  ; FMax(a,b)
  %1137 = call float @dx.op.binary.f32(i32 35, float %1131, float 0.000000e+00)  ; FMax(a,b)
  %1138 = fmul fast float %1132, %552
  %1139 = fmul fast float %1133, %552
  %1140 = fmul fast float %1134, %552
  %1141 = fadd fast float %1138, %938
  %1142 = fadd fast float %1139, %939
  %1143 = fadd fast float %1140, %940
  %1144 = fadd fast float %1138, %935
  %1145 = fadd fast float %1139, %936
  %1146 = fadd fast float %1140, %937
  %1147 = fmul fast float %1135, %552
  %1148 = fmul fast float %1136, %552
  %1149 = fmul fast float %1137, %552
  %1150 = fadd fast float %1147, %932
  %1151 = fadd fast float %1148, %933
  %1152 = fadd fast float %1149, %934
  br label %1153

; <label>:1153                                    ; preds = %1114, %931
  %1154 = phi float [ %1150, %1114 ], [ %932, %931 ]
  %1155 = phi float [ %1151, %1114 ], [ %933, %931 ]
  %1156 = phi float [ %1152, %1114 ], [ %934, %931 ]
  %1157 = phi float [ %1144, %1114 ], [ %935, %931 ]
  %1158 = phi float [ %1145, %1114 ], [ %936, %931 ]
  %1159 = phi float [ %1146, %1114 ], [ %937, %931 ]
  %1160 = phi float [ %1141, %1114 ], [ %938, %931 ]
  %1161 = phi float [ %1142, %1114 ], [ %939, %931 ]
  %1162 = phi float [ %1143, %1114 ], [ %940, %931 ]
  %1163 = fcmp fast olt float %552, 1.000000e+00
  br i1 %1163, label %1164, label %2002, !dx.controlflow.hints !96

; <label>:1164                                    ; preds = %1153
  %1165 = extractvalue %dx.types.CBufRet.f32 %508, 2
  %1166 = fadd fast float %1165, %345
  %1167 = fmul fast float %266, 3.200000e+01
  %1168 = fmul fast float %267, 3.200000e+01
  %1169 = fadd fast float %511, %1167
  %1170 = fadd fast float %512, %1168
  %1171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1172 = extractvalue %dx.types.CBufRet.f32 %1171, 0
  %1173 = extractvalue %dx.types.CBufRet.f32 %1171, 1
  %1174 = fsub fast float %1169, %1172
  %1175 = fsub fast float %1170, %1173
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 0
  %1178 = extractvalue %dx.types.CBufRet.f32 %1176, 1
  %1179 = fmul fast float %1174, %1177
  %1180 = fmul fast float %1175, %1178
  %1181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1182 = extractvalue %dx.types.CBufRet.f32 %1181, 0
  %1183 = fmul fast float %1179, %1182
  %1184 = extractvalue %dx.types.CBufRet.f32 %1181, 1
  %1185 = fadd fast float %1183, %1184
  %1186 = extractvalue %dx.types.CBufRet.f32 %1181, 2
  %1187 = fmul fast float %1186, %1180
  %1188 = extractvalue %dx.types.CBufRet.f32 %1181, 3
  %1189 = fadd fast float %1187, %1188
  %1190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %1185, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1194 = extractvalue %dx.types.CBufRet.f32 %1193, 1
  %1195 = extractvalue %dx.types.CBufRet.f32 %1193, 0
  %1196 = fsub fast float %1194, %1195
  %1197 = fmul fast float %1196, %1191
  %1198 = fadd fast float %1197, %1195
  %1199 = extractvalue %dx.types.CBufRet.f32 %1193, 3
  %1200 = extractvalue %dx.types.CBufRet.f32 %1193, 2
  %1201 = fsub fast float %1199, %1200
  %1202 = fmul fast float %1201, %1192
  %1203 = fadd fast float %1202, %1200
  %1204 = fsub fast float %1166, %1198
  %1205 = fsub fast float %1203, %1198
  %1206 = fdiv fast float %1204, %1205
  %1207 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = fmul fast float %1209, %1207
  %1211 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1212 = fadd fast float %1210, %1211
  %1213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %1185, float %1189, float %1212, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1214 = extractvalue %dx.types.ResRet.f32 %1213, 0
  %1215 = extractvalue %dx.types.ResRet.f32 %1213, 1
  %1216 = extractvalue %dx.types.ResRet.f32 %1213, 2
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.CBufRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.CBufRet.f32 %1217, 2
  %1221 = fmul fast float %1218, %1214
  %1222 = fmul fast float %1219, %1215
  %1223 = fmul fast float %1220, %1216
  %1224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1225 = extractvalue %dx.types.CBufRet.f32 %1224, 0
  %1226 = extractvalue %dx.types.CBufRet.f32 %1224, 1
  %1227 = extractvalue %dx.types.CBufRet.f32 %1224, 2
  %1228 = fadd fast float %1221, %1225
  %1229 = fadd fast float %1222, %1226
  %1230 = fadd fast float %1223, %1227
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 0
  %1233 = fmul fast float %1232, %1179
  %1234 = extractvalue %dx.types.CBufRet.f32 %1231, 1
  %1235 = fadd fast float %1233, %1234
  %1236 = extractvalue %dx.types.CBufRet.f32 %1231, 2
  %1237 = fmul fast float %1236, %1180
  %1238 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1239 = fadd fast float %1237, %1238
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 0
  %1242 = extractvalue %dx.types.CBufRet.f32 %1240, 1
  %1243 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1244 = extractvalue %dx.types.CBufRet.f32 %1240, 3
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.CBufRet.f32 %1245, 2
  %1249 = extractvalue %dx.types.CBufRet.f32 %1245, 3
  %1250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1235, float %1239, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1235, float %1239, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1256 = extractvalue %dx.types.ResRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.ResRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.ResRet.f32 %1255, 2
  %1259 = extractvalue %dx.types.ResRet.f32 %1255, 3
  %1260 = fmul fast float %1251, %1228
  %1261 = fmul fast float %1256, %1228
  %1262 = fmul fast float %1258, %1228
  %1263 = fmul fast float %1254, %1228
  %1264 = fadd fast float %1260, %1241
  %1265 = fadd fast float %1261, %1242
  %1266 = fadd fast float %1262, %1243
  %1267 = fadd fast float %1263, %1244
  %1268 = fmul fast float %1252, %1228
  %1269 = fmul fast float %1257, %1228
  %1270 = fadd fast float %1268, %1246
  %1271 = fadd fast float %1269, %1247
  %1272 = fmul fast float %1253, %1228
  %1273 = fmul fast float %1259, %1228
  %1274 = fadd fast float %1272, %1248
  %1275 = fadd fast float %1273, %1249
  %1276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1235, float %1239, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1277 = extractvalue %dx.types.ResRet.f32 %1276, 0
  %1278 = extractvalue %dx.types.ResRet.f32 %1276, 1
  %1279 = extractvalue %dx.types.ResRet.f32 %1276, 2
  %1280 = extractvalue %dx.types.ResRet.f32 %1276, 3
  %1281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1235, float %1239, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1282 = extractvalue %dx.types.ResRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.ResRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.ResRet.f32 %1281, 2
  %1285 = extractvalue %dx.types.ResRet.f32 %1281, 3
  %1286 = fmul fast float %1277, %1229
  %1287 = fmul fast float %1282, %1229
  %1288 = fmul fast float %1284, %1229
  %1289 = fmul fast float %1280, %1229
  %1290 = fadd fast float %1264, %1286
  %1291 = fadd fast float %1265, %1287
  %1292 = fadd fast float %1266, %1288
  %1293 = fadd fast float %1267, %1289
  %1294 = fmul fast float %1278, %1229
  %1295 = fmul fast float %1283, %1229
  %1296 = fadd fast float %1270, %1294
  %1297 = fadd fast float %1271, %1295
  %1298 = fmul fast float %1279, %1229
  %1299 = fmul fast float %1285, %1229
  %1300 = fadd fast float %1274, %1298
  %1301 = fadd fast float %1275, %1299
  %1302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1235, float %1239, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.ResRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.ResRet.f32 %1302, 2
  %1306 = extractvalue %dx.types.ResRet.f32 %1302, 3
  %1307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %41, float %1235, float %1239, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1308 = extractvalue %dx.types.ResRet.f32 %1307, 0
  %1309 = extractvalue %dx.types.ResRet.f32 %1307, 1
  %1310 = extractvalue %dx.types.ResRet.f32 %1307, 2
  %1311 = extractvalue %dx.types.ResRet.f32 %1307, 3
  %1312 = fmul fast float %1303, %1230
  %1313 = fmul fast float %1308, %1230
  %1314 = fmul fast float %1310, %1230
  %1315 = fmul fast float %1306, %1230
  %1316 = fadd fast float %1290, %1312
  %1317 = fadd fast float %1291, %1313
  %1318 = fadd fast float %1292, %1314
  %1319 = fadd fast float %1293, %1315
  %1320 = fmul fast float %1304, %1230
  %1321 = fmul fast float %1309, %1230
  %1322 = fadd fast float %1296, %1320
  %1323 = fadd fast float %1297, %1321
  %1324 = fmul fast float %1305, %1230
  %1325 = fmul fast float %1311, %1230
  %1326 = fadd fast float %1300, %1324
  %1327 = fadd fast float %1301, %1325
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 0
  %1330 = fsub fast float %511, %1329
  %1331 = fsub fast float %1172, %511
  %1332 = call float @dx.op.binary.f32(i32 35, float %1331, float %1330)  ; FMax(a,b)
  %1333 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1334 = fsub fast float %512, %1333
  %1335 = fsub fast float %1173, %512
  %1336 = call float @dx.op.binary.f32(i32 35, float %1335, float %1334)  ; FMax(a,b)
  %1337 = call float @dx.op.binary.f32(i32 35, float %1332, float %1336)  ; FMax(a,b)
  %1338 = extractvalue %dx.types.CBufRet.f32 %1176, 3
  %1339 = fmul fast float %1338, %1337
  %1340 = call float @dx.op.unary.f32(i32 7, float %1339)  ; Saturate(value)
  %1341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1341, 0
  %1343 = extractvalue %dx.types.CBufRet.f32 %1341, 1
  %1344 = extractvalue %dx.types.CBufRet.f32 %1341, 2
  %1345 = extractvalue %dx.types.CBufRet.f32 %1341, 3
  %1346 = fsub fast float %1342, %1316
  %1347 = fsub fast float %1343, %1317
  %1348 = fsub fast float %1344, %1318
  %1349 = fsub fast float %1345, %1319
  %1350 = fmul fast float %1346, %1340
  %1351 = fmul fast float %1347, %1340
  %1352 = fmul fast float %1348, %1340
  %1353 = fmul fast float %1349, %1340
  %1354 = fadd fast float %1350, %1316
  %1355 = fadd fast float %1351, %1317
  %1356 = fadd fast float %1352, %1318
  %1357 = fadd fast float %1353, %1319
  %1358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %1359 = extractvalue %dx.types.CBufRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.CBufRet.f32 %1358, 1
  %1361 = fsub fast float %1359, %1322
  %1362 = fsub fast float %1360, %1323
  %1363 = fmul fast float %1361, %1340
  %1364 = fmul fast float %1362, %1340
  %1365 = fadd fast float %1363, %1322
  %1366 = fadd fast float %1364, %1323
  %1367 = extractvalue %dx.types.CBufRet.f32 %1358, 2
  %1368 = extractvalue %dx.types.CBufRet.f32 %1358, 3
  %1369 = fsub fast float %1367, %1326
  %1370 = fsub fast float %1368, %1327
  %1371 = fmul fast float %1369, %1340
  %1372 = fmul fast float %1370, %1340
  %1373 = fadd fast float %1371, %1326
  %1374 = fadd fast float %1372, %1327
  %1375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %1376 = extractvalue %dx.types.CBufRet.f32 %1375, 0
  %1377 = fmul fast float %1376, %1354
  %1378 = fmul fast float %1376, %1355
  %1379 = fmul fast float %1376, %1356
  %1380 = fmul fast float %1376, %1357
  %1381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.f32 %1381, 0
  %1383 = fmul fast float %1382, %1365
  %1384 = fmul fast float %1382, %1366
  %1385 = fadd fast float %1383, %1377
  %1386 = fadd fast float %1384, %1379
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = fmul fast float %1388, %1373
  %1390 = fmul fast float %1388, %1374
  %1391 = fadd fast float %1385, %1389
  %1392 = fadd fast float %1386, %1390
  %1393 = extractvalue %dx.types.CBufRet.f32 %1375, 1
  %1394 = fmul fast float %1393, %1354
  %1395 = fmul fast float %1393, %1355
  %1396 = fmul fast float %1393, %1356
  %1397 = fmul fast float %1393, %1357
  %1398 = extractvalue %dx.types.CBufRet.f32 %1381, 1
  %1399 = fmul fast float %1398, %1365
  %1400 = fmul fast float %1398, %1366
  %1401 = fadd fast float %1399, %1394
  %1402 = fadd fast float %1400, %1396
  %1403 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1404 = fmul fast float %1403, %1373
  %1405 = fmul fast float %1403, %1374
  %1406 = fadd fast float %1401, %1404
  %1407 = fadd fast float %1402, %1405
  %1408 = extractvalue %dx.types.CBufRet.f32 %1375, 2
  %1409 = fmul fast float %1408, %1354
  %1410 = fmul fast float %1408, %1355
  %1411 = fmul fast float %1408, %1356
  %1412 = fmul fast float %1408, %1357
  %1413 = extractvalue %dx.types.CBufRet.f32 %1381, 2
  %1414 = fmul fast float %1413, %1365
  %1415 = fmul fast float %1413, %1366
  %1416 = fadd fast float %1414, %1409
  %1417 = fadd fast float %1415, %1411
  %1418 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1419 = fmul fast float %1418, %1373
  %1420 = fmul fast float %1418, %1374
  %1421 = fadd fast float %1416, %1419
  %1422 = fadd fast float %1417, %1420
  %1423 = fmul fast float %1410, %1410
  %1424 = fmul fast float %1422, %1422
  %1425 = fmul fast float %1412, %1412
  %1426 = fadd fast float %1425, %1423
  %1427 = fadd fast float %1426, %1424
  %1428 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1429 = fcmp fast ugt float %1428, 0.000000e+00
  br i1 %1429, label %1430, label %1445

; <label>:1430                                    ; preds = %1164
  %1431 = fsub fast float -0.000000e+00, %1412
  %1432 = fdiv fast float %1431, %1428
  %1433 = fsub fast float -0.000000e+00, %1410
  %1434 = fdiv fast float %1433, %1428
  %1435 = fdiv fast float %1422, %1428
  %1436 = fmul fast float %1421, 0x3FE279A760000000
  %1437 = fmul fast float %1434, %1410
  %1438 = fmul fast float %1435, %1422
  %1439 = fmul fast float %1432, %1412
  %1440 = fadd fast float %1437, %1439
  %1441 = fsub fast float %1440, %1438
  %1442 = call float @dx.op.unary.f32(i32 6, float %1441)  ; FAbs(value)
  %1443 = fadd fast float %1442, 0x3DDB7CDFE0000000
  %1444 = fdiv fast float %1436, %1443
  br label %1445

; <label>:1445                                    ; preds = %1430, %1164
  %1446 = phi float [ %1444, %1430 ], [ 1.000000e+00, %1164 ]
  %1447 = fmul fast float %1395, %1395
  %1448 = fmul fast float %1407, %1407
  %1449 = fmul fast float %1397, %1397
  %1450 = fadd fast float %1449, %1447
  %1451 = fadd fast float %1450, %1448
  %1452 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1453 = fcmp fast ugt float %1452, 0.000000e+00
  br i1 %1453, label %1454, label %1469

; <label>:1454                                    ; preds = %1445
  %1455 = fsub fast float -0.000000e+00, %1397
  %1456 = fdiv fast float %1455, %1452
  %1457 = fsub fast float -0.000000e+00, %1395
  %1458 = fdiv fast float %1457, %1452
  %1459 = fdiv fast float %1407, %1452
  %1460 = fmul fast float %1406, 0x3FE279A760000000
  %1461 = fmul fast float %1458, %1395
  %1462 = fmul fast float %1459, %1407
  %1463 = fmul fast float %1456, %1397
  %1464 = fadd fast float %1461, %1463
  %1465 = fsub fast float %1464, %1462
  %1466 = call float @dx.op.unary.f32(i32 6, float %1465)  ; FAbs(value)
  %1467 = fadd fast float %1466, 0x3DDB7CDFE0000000
  %1468 = fdiv fast float %1460, %1467
  br label %1469

; <label>:1469                                    ; preds = %1454, %1445
  %1470 = phi float [ %1468, %1454 ], [ 1.000000e+00, %1445 ]
  %1471 = call float @dx.op.binary.f32(i32 36, float %1470, float %1446)  ; FMin(a,b)
  %1472 = fmul fast float %1378, %1378
  %1473 = fmul fast float %1392, %1392
  %1474 = fmul fast float %1380, %1380
  %1475 = fadd fast float %1474, %1472
  %1476 = fadd fast float %1475, %1473
  %1477 = call float @dx.op.unary.f32(i32 24, float %1476)  ; Sqrt(value)
  %1478 = fcmp fast ugt float %1477, 0.000000e+00
  br i1 %1478, label %1479, label %1494

; <label>:1479                                    ; preds = %1469
  %1480 = fsub fast float -0.000000e+00, %1380
  %1481 = fdiv fast float %1480, %1477
  %1482 = fsub fast float -0.000000e+00, %1378
  %1483 = fdiv fast float %1482, %1477
  %1484 = fdiv fast float %1392, %1477
  %1485 = fmul fast float %1391, 0x3FE279A760000000
  %1486 = fmul fast float %1483, %1378
  %1487 = fmul fast float %1484, %1392
  %1488 = fmul fast float %1481, %1380
  %1489 = fadd fast float %1486, %1488
  %1490 = fsub fast float %1489, %1487
  %1491 = call float @dx.op.unary.f32(i32 6, float %1490)  ; FAbs(value)
  %1492 = fadd fast float %1491, 0x3DDB7CDFE0000000
  %1493 = fdiv fast float %1485, %1492
  br label %1494

; <label>:1494                                    ; preds = %1479, %1469
  %1495 = phi float [ %1493, %1479 ], [ 1.000000e+00, %1469 ]
  %1496 = call float @dx.op.binary.f32(i32 36, float %1495, float %1471)  ; FMin(a,b)
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  %1498 = fcmp fast olt float %1497, 1.000000e+00
  br i1 %1498, label %1499, label %1509

; <label>:1499                                    ; preds = %1494
  %1500 = fmul fast float %1497, %1378
  %1501 = fmul fast float %1497, %1392
  %1502 = fmul fast float %1497, %1380
  %1503 = fmul fast float %1497, %1395
  %1504 = fmul fast float %1497, %1407
  %1505 = fmul fast float %1497, %1397
  %1506 = fmul fast float %1497, %1410
  %1507 = fmul fast float %1497, %1422
  %1508 = fmul fast float %1497, %1412
  br label %1509

; <label>:1509                                    ; preds = %1499, %1494
  %1510 = phi float [ %1506, %1499 ], [ %1410, %1494 ]
  %1511 = phi float [ %1507, %1499 ], [ %1422, %1494 ]
  %1512 = phi float [ %1508, %1499 ], [ %1412, %1494 ]
  %1513 = phi float [ %1503, %1499 ], [ %1395, %1494 ]
  %1514 = phi float [ %1504, %1499 ], [ %1407, %1494 ]
  %1515 = phi float [ %1505, %1499 ], [ %1397, %1494 ]
  %1516 = phi float [ %1500, %1499 ], [ %1378, %1494 ]
  %1517 = phi float [ %1501, %1499 ], [ %1392, %1494 ]
  %1518 = phi float [ %1502, %1499 ], [ %1380, %1494 ]
  %1519 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1391)  ; FMax(a,b)
  %1520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1406)  ; FMax(a,b)
  %1521 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1421)  ; FMax(a,b)
  %1522 = fcmp fast oge float %1179, 0.000000e+00
  %1523 = and i1 %1522, %944
  %1524 = fcmp fast ole float %1179, 1.000000e+00
  %1525 = and i1 %1524, %1523
  %1526 = fcmp fast oge float %1180, 0.000000e+00
  %1527 = and i1 %1526, %1525
  %1528 = fcmp fast ole float %1180, 1.000000e+00
  %1529 = and i1 %1528, %1527
  br i1 %1529, label %1530, label %1675, !dx.controlflow.hints !97

; <label>:1530                                    ; preds = %1509
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 2
  %1533 = extractvalue %dx.types.CBufRet.f32 %1531, 3
  %1534 = fmul fast float %1532, %1179
  %1535 = fmul fast float %1533, %1180
  %1536 = call float @dx.op.unary.f32(i32 27, float %1534)  ; Round_ni(value)
  %1537 = call float @dx.op.unary.f32(i32 27, float %1535)  ; Round_ni(value)
  %1538 = fptosi float %1536 to i32
  %1539 = fptosi float %1537 to i32
  %1540 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %1538, i32 %1539, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 65535
  %1543 = lshr i32 %1541, 16
  %1544 = icmp eq i32 %1542, 65535
  br i1 %1544, label %1581, label %1545

; <label>:1545                                    ; preds = %1530
  %1546 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %1547 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1548 = extractvalue %dx.types.CBufRet.f32 %1531, 1
  %1549 = fmul fast float %1547, %1179
  %1550 = fmul fast float %1548, %1180
  %1551 = fmul fast float %1549, 1.250000e-01
  %1552 = fmul fast float %1550, 1.250000e-01
  %1553 = call float @dx.op.unary.f32(i32 27, float %1551)  ; Round_ni(value)
  %1554 = call float @dx.op.unary.f32(i32 27, float %1552)  ; Round_ni(value)
  %1555 = fmul fast float %1553, 8.000000e+00
  %1556 = fmul fast float %1554, 8.000000e+00
  %1557 = and i32 %1541, 255
  %1558 = lshr i32 %1541, 8
  %1559 = and i32 %1558, 255
  %1560 = mul nuw nsw i32 %1557, 9
  %1561 = uitofp i32 %1560 to float
  %1562 = mul nuw nsw i32 %1559, 9
  %1563 = uitofp i32 %1562 to float
  %1564 = fadd fast float %1561, 5.000000e-01
  %1565 = fadd fast float %1564, %1549
  %1566 = fsub fast float %1565, %1555
  %1567 = fadd fast float %1563, 5.000000e-01
  %1568 = fadd fast float %1567, %1550
  %1569 = fsub fast float %1568, %1556
  %1570 = fdiv fast float %1566, %943
  %1571 = fdiv fast float %1569, %1546
  %1572 = fmul fast float %1207, 4.375000e-01
  %1573 = fadd fast float %1572, 3.125000e-02
  %1574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %1570, float %1571, float %1573, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.ResRet.f32 %1574, 1
  %1577 = extractvalue %dx.types.ResRet.f32 %1574, 2
  %1578 = fadd fast float %1575, %1519
  %1579 = fadd fast float %1576, %1520
  %1580 = fadd fast float %1577, %1521
  br label %1581

; <label>:1581                                    ; preds = %1545, %1530
  %1582 = phi float [ %1580, %1545 ], [ %1521, %1530 ]
  %1583 = phi float [ %1579, %1545 ], [ %1520, %1530 ]
  %1584 = phi float [ %1578, %1545 ], [ %1519, %1530 ]
  %1585 = icmp eq i32 %1543, 65535
  br i1 %1585, label %1675, label %1586

; <label>:1586                                    ; preds = %1581
  %1587 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %1588 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1589 = extractvalue %dx.types.CBufRet.f32 %1531, 1
  %1590 = fmul fast float %1588, %1179
  %1591 = fmul fast float %1589, %1180
  %1592 = fmul fast float %1590, 1.250000e-01
  %1593 = fmul fast float %1591, 1.250000e-01
  %1594 = call float @dx.op.unary.f32(i32 27, float %1592)  ; Round_ni(value)
  %1595 = call float @dx.op.unary.f32(i32 27, float %1593)  ; Round_ni(value)
  %1596 = fmul fast float %1594, 8.000000e+00
  %1597 = fmul fast float %1595, 8.000000e+00
  %1598 = fsub fast float %1590, %1596
  %1599 = fsub fast float %1591, %1597
  %1600 = fadd fast float %1598, 5.000000e-01
  %1601 = fadd fast float %1599, 5.000000e-01
  %1602 = and i32 %1543, 255
  %1603 = lshr i32 %1541, 24
  %1604 = mul nuw nsw i32 %1602, 9
  %1605 = uitofp i32 %1604 to float
  %1606 = mul nuw nsw i32 %1603, 9
  %1607 = uitofp i32 %1606 to float
  %1608 = fadd fast float %1600, %1605
  %1609 = fadd fast float %1601, %1607
  %1610 = fdiv fast float %1608, %943
  %1611 = fdiv fast float %1609, %1587
  %1612 = fmul fast float %1207, 4.375000e-01
  %1613 = fadd fast float %1612, 3.125000e-02
  %1614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %1610, float %1611, float %1613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.ResRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.ResRet.f32 %1614, 2
  %1618 = fadd fast float %1612, 5.312500e-01
  %1619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %1610, float %1611, float %1618, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1620 = extractvalue %dx.types.ResRet.f32 %1619, 0
  %1621 = extractvalue %dx.types.ResRet.f32 %1619, 1
  %1622 = extractvalue %dx.types.ResRet.f32 %1619, 2
  %1623 = fmul fast float %1620, 2.000000e+00
  %1624 = fmul fast float %1621, 2.000000e+00
  %1625 = fmul fast float %1622, 2.000000e+00
  %1626 = fadd fast float %1623, -1.000000e+00
  %1627 = fadd fast float %1624, -1.000000e+00
  %1628 = fadd fast float %1625, -1.000000e+00
  %1629 = fmul fast float %1626, %1626
  %1630 = fmul fast float %1627, %1627
  %1631 = fadd fast float %1629, %1630
  %1632 = fmul fast float %1628, %1628
  %1633 = fadd fast float %1631, %1632
  %1634 = call float @dx.op.unary.f32(i32 24, float %1633)  ; Sqrt(value)
  %1635 = fcmp fast ogt float %1634, 0.000000e+00
  br i1 %1635, label %1636, label %1640

; <label>:1636                                    ; preds = %1586
  %1637 = fdiv fast float %1626, %1634
  %1638 = fdiv fast float %1627, %1634
  %1639 = fdiv fast float %1628, %1634
  br label %1640

; <label>:1640                                    ; preds = %1636, %1586
  %1641 = phi float [ %1637, %1636 ], [ 0.000000e+00, %1586 ]
  %1642 = phi float [ %1638, %1636 ], [ 0.000000e+00, %1586 ]
  %1643 = phi float [ %1639, %1636 ], [ 0.000000e+00, %1586 ]
  %1644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1645 = extractvalue %dx.types.CBufRet.f32 %1644, 0
  %1646 = extractvalue %dx.types.CBufRet.f32 %1644, 1
  %1647 = fsub fast float %511, %1645
  %1648 = fsub fast float %512, %1646
  %1649 = fmul fast float %1647, %1647
  %1650 = fmul fast float %1648, %1648
  %1651 = fadd fast float %1649, %1650
  %1652 = call float @dx.op.unary.f32(i32 24, float %1651)  ; Sqrt(value)
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 0
  %1655 = extractvalue %dx.types.CBufRet.f32 %1653, 1
  %1656 = fsub fast float %1652, %1654
  %1657 = fdiv fast float %1656, %1655
  %1658 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1659 = fmul fast float %1658, 2.000000e+00
  %1660 = fsub fast float 3.000000e+00, %1659
  %1661 = fmul fast float %1658, %1658
  %1662 = fmul fast float %1661, %1660
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1641, float %1642, float %1643, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1663)  ; FMax(a,b)
  %1665 = fmul fast float %1664, 0x400C5BF8A0000000
  %1666 = fmul fast float %1662, %1615
  %1667 = fmul fast float %1666, %1665
  %1668 = fadd fast float %1667, %1584
  %1669 = fmul fast float %1662, %1616
  %1670 = fmul fast float %1669, %1665
  %1671 = fadd fast float %1670, %1583
  %1672 = fmul fast float %1662, %1617
  %1673 = fmul fast float %1672, %1665
  %1674 = fadd fast float %1673, %1582
  br label %1675

; <label>:1675                                    ; preds = %1640, %1581, %1509
  %1676 = phi float [ %1674, %1640 ], [ %1582, %1581 ], [ %1521, %1509 ]
  %1677 = phi float [ %1671, %1640 ], [ %1583, %1581 ], [ %1520, %1509 ]
  %1678 = phi float [ %1668, %1640 ], [ %1584, %1581 ], [ %1519, %1509 ]
  %1679 = fcmp fast ogt float %1166, %1203
  %1680 = and i1 %1522, %1679
  %1681 = and i1 %1524, %1680
  %1682 = and i1 %1526, %1681
  %1683 = and i1 %1528, %1682
  br i1 %1683, label %1684, label %1741, !dx.controlflow.hints !98

; <label>:1684                                    ; preds = %1675
  %1685 = fmul fast float %1205, 0x3FC24924A0000000
  %1686 = fsub fast float %1166, %1203
  %1687 = fdiv fast float %1686, %1685
  %1688 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1692 = extractvalue %dx.types.CBufRet.f32 %1691, 0
  %1693 = extractvalue %dx.types.CBufRet.f32 %1691, 1
  %1694 = extractvalue %dx.types.CBufRet.f32 %1691, 2
  %1695 = fsub fast float %1690, %1678
  %1696 = fsub fast float %1692, %1516
  %1697 = fsub fast float %1693, %1517
  %1698 = fsub fast float %1694, %1518
  %1699 = fmul fast float %1695, %1688
  %1700 = fmul fast float %1696, %1688
  %1701 = fmul fast float %1697, %1688
  %1702 = fmul fast float %1698, %1688
  %1703 = fadd fast float %1699, %1678
  %1704 = fadd fast float %1700, %1516
  %1705 = fadd fast float %1701, %1517
  %1706 = fadd fast float %1702, %1518
  %1707 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.CBufRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1712 = fsub fast float %1707, %1677
  %1713 = fsub fast float %1709, %1513
  %1714 = fsub fast float %1710, %1514
  %1715 = fsub fast float %1711, %1515
  %1716 = fmul fast float %1712, %1688
  %1717 = fmul fast float %1713, %1688
  %1718 = fmul fast float %1714, %1688
  %1719 = fmul fast float %1715, %1688
  %1720 = fadd fast float %1716, %1677
  %1721 = fadd fast float %1717, %1513
  %1722 = fadd fast float %1718, %1514
  %1723 = fadd fast float %1719, %1515
  %1724 = extractvalue %dx.types.CBufRet.f32 %1689, 2
  %1725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1726 = extractvalue %dx.types.CBufRet.f32 %1725, 0
  %1727 = extractvalue %dx.types.CBufRet.f32 %1725, 1
  %1728 = extractvalue %dx.types.CBufRet.f32 %1725, 2
  %1729 = fsub fast float %1724, %1676
  %1730 = fsub fast float %1726, %1510
  %1731 = fsub fast float %1727, %1511
  %1732 = fsub fast float %1728, %1512
  %1733 = fmul fast float %1729, %1688
  %1734 = fmul fast float %1730, %1688
  %1735 = fmul fast float %1731, %1688
  %1736 = fmul fast float %1732, %1688
  %1737 = fadd fast float %1733, %1676
  %1738 = fadd fast float %1734, %1510
  %1739 = fadd fast float %1735, %1511
  %1740 = fadd fast float %1736, %1512
  br label %1741

; <label>:1741                                    ; preds = %1684, %1675
  %1742 = phi float [ %1737, %1684 ], [ %1676, %1675 ]
  %1743 = phi float [ %1738, %1684 ], [ %1510, %1675 ]
  %1744 = phi float [ %1739, %1684 ], [ %1511, %1675 ]
  %1745 = phi float [ %1740, %1684 ], [ %1512, %1675 ]
  %1746 = phi float [ %1720, %1684 ], [ %1677, %1675 ]
  %1747 = phi float [ %1721, %1684 ], [ %1513, %1675 ]
  %1748 = phi float [ %1722, %1684 ], [ %1514, %1675 ]
  %1749 = phi float [ %1723, %1684 ], [ %1515, %1675 ]
  %1750 = phi float [ %1703, %1684 ], [ %1678, %1675 ]
  %1751 = phi float [ %1704, %1684 ], [ %1516, %1675 ]
  %1752 = phi float [ %1705, %1684 ], [ %1517, %1675 ]
  %1753 = phi float [ %1706, %1684 ], [ %1518, %1675 ]
  %1754 = extractvalue %dx.types.CBufRet.f32 %1328, 3
  %1755 = fmul fast float %1754, %1750
  %1756 = fmul fast float %1754, %1746
  %1757 = fmul fast float %1754, %1742
  %1758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1759 = extractvalue %dx.types.CBufRet.f32 %1758, 3
  %1760 = fmul fast float %1755, %1759
  %1761 = fmul fast float %1756, %1759
  %1762 = fmul fast float %1757, %1759
  %1763 = call float @dx.op.dot3.f32(i32 55, float %1760, float %1761, float %1762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1764 = fmul fast float %1763, 0x3FD20DD760000000
  %1765 = fmul fast float %1751, 1.500000e+00
  %1766 = fmul fast float %1765, %1754
  %1767 = fmul fast float %1766, %1759
  %1768 = fmul fast float %1752, 1.500000e+00
  %1769 = fmul fast float %1768, %1754
  %1770 = fmul fast float %1769, %1759
  %1771 = fmul fast float %1753, 1.500000e+00
  %1772 = fmul fast float %1771, %1754
  %1773 = fmul fast float %1772, %1759
  %1774 = fmul fast float %1747, 1.500000e+00
  %1775 = fmul fast float %1774, %1754
  %1776 = fmul fast float %1775, %1759
  %1777 = fmul fast float %1748, 1.500000e+00
  %1778 = fmul fast float %1777, %1754
  %1779 = fmul fast float %1778, %1759
  %1780 = fmul fast float %1749, 1.500000e+00
  %1781 = fmul fast float %1780, %1754
  %1782 = fmul fast float %1781, %1759
  %1783 = fmul fast float %1743, 1.500000e+00
  %1784 = fmul fast float %1783, %1754
  %1785 = fmul fast float %1784, %1759
  %1786 = fmul fast float %1744, 1.500000e+00
  %1787 = fmul fast float %1786, %1754
  %1788 = fmul fast float %1787, %1759
  %1789 = fmul fast float %1745, 1.500000e+00
  %1790 = fmul fast float %1789, %1754
  %1791 = fmul fast float %1790, %1759
  %1792 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1760)  ; FMax(a,b)
  %1793 = call float @dx.op.dot3.f32(i32 55, float %1767, float %1770, float %1773, float %1767, float %1770, float %1773)  ; Dot3(ax,ay,az,bx,by,bz)
  %1794 = fcmp fast oeq float %1793, 0.000000e+00
  %1795 = fcmp fast oeq float %1792, 0.000000e+00
  %1796 = or i1 %1795, %1794
  br i1 %1796, label %1826, label %1797

; <label>:1797                                    ; preds = %1741
  %1798 = fsub fast float -0.000000e+00, %1773
  %1799 = fsub fast float -0.000000e+00, %1767
  %1800 = call float @dx.op.unary.f32(i32 24, float %1793)  ; Sqrt(value)
  %1801 = fdiv fast float %1800, %1792
  %1802 = fcmp fast ogt float %1801, 0x3FFB6F8900000000
  %1803 = select i1 %1802, float 0x3FFB6F8900000000, float %1801
  %1804 = fmul fast float %1803, 0x3FE8A23460000000
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1806 = call float @dx.op.binary.f32(i32 35, float %1803, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1807 = fmul fast float %1805, %1792
  %1808 = fmul fast float %1806, 0x3FF279A740000000
  %1809 = fadd fast float %1808, -1.000000e+00
  %1810 = call float @dx.op.dot3.f32(i32 55, float %1798, float %1799, float %1770, float %1798, float %1799, float %1770)  ; Dot3(ax,ay,az,bx,by,bz)
  %1811 = call float @dx.op.unary.f32(i32 25, float %1810)  ; Rsqrt(value)
  %1812 = fmul fast float %1811, %1798
  %1813 = fmul fast float %1811, %1799
  %1814 = fmul fast float %1811, %1770
  %1815 = fmul fast float %1809, %1809
  %1816 = fsub fast float 1.000000e+00, %1815
  %1817 = fmul fast float %1806, 0x40005F8BE0000000
  %1818 = fsub fast float 0x400C5BF8A0000000, %1817
  %1819 = fdiv fast float %1807, %1818
  %1820 = fmul fast float %1819, 0x3FEE31C3C0000000
  %1821 = fmul fast float %1820, %1816
  %1822 = fmul fast float %1806, 0x3FDACB7480000000
  %1823 = fadd fast float %1822, 0xBFD7347680000000
  %1824 = fmul fast float %1823, %1819
  %1825 = fmul fast float %1824, %1816
  br label %1826

; <label>:1826                                    ; preds = %1797, %1741
  %1827 = phi float [ %1812, %1797 ], [ 0.000000e+00, %1741 ]
  %1828 = phi float [ %1813, %1797 ], [ 0.000000e+00, %1741 ]
  %1829 = phi float [ %1814, %1797 ], [ 0.000000e+00, %1741 ]
  %1830 = phi float [ %1821, %1797 ], [ 0.000000e+00, %1741 ]
  %1831 = phi float [ %1825, %1797 ], [ 0.000000e+00, %1741 ]
  %1832 = call float @dx.op.dot3.f32(i32 55, float %1827, float %1828, float %1829, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %1833 = fmul fast float %1832, 0x3FDF454380000000
  %1834 = fmul fast float %1832, %1832
  %1835 = fmul fast float %1834, 0x3FEE471020000000
  %1836 = fadd fast float %1835, 0xBFD42F6020000000
  %1837 = fmul fast float %1792, 0x3FD20DD760000000
  %1838 = fmul fast float %1836, %1831
  %1839 = fadd fast float %1838, %1837
  %1840 = fmul fast float %1833, %1830
  %1841 = fadd fast float %1839, %1840
  %1842 = fsub fast float %1839, %1840
  %1843 = call float @dx.op.dot3.f32(i32 55, float %1827, float %1828, float %1829, float %492, float %493, float %494)  ; Dot3(ax,ay,az,bx,by,bz)
  %1844 = fmul fast float %1843, 0x3FDF454380000000
  %1845 = fmul fast float %1843, %1843
  %1846 = fmul fast float %1845, 0x3FEE471020000000
  %1847 = fadd fast float %1846, 0xBFD42F6020000000
  %1848 = call float @dx.op.dot3.f32(i32 55, float %1792, float %1830, float %1831, float 0x3FD20DD760000000, float %1844, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1849 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1761)  ; FMax(a,b)
  %1850 = call float @dx.op.dot3.f32(i32 55, float %1776, float %1779, float %1782, float %1776, float %1779, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %1851 = fcmp fast oeq float %1850, 0.000000e+00
  %1852 = fcmp fast oeq float %1849, 0.000000e+00
  %1853 = or i1 %1852, %1851
  br i1 %1853, label %1883, label %1854

; <label>:1854                                    ; preds = %1826
  %1855 = fsub fast float -0.000000e+00, %1782
  %1856 = fsub fast float -0.000000e+00, %1776
  %1857 = call float @dx.op.unary.f32(i32 24, float %1850)  ; Sqrt(value)
  %1858 = fdiv fast float %1857, %1849
  %1859 = fcmp fast ogt float %1858, 0x3FFB6F8900000000
  %1860 = select i1 %1859, float 0x3FFB6F8900000000, float %1858
  %1861 = fmul fast float %1860, 0x3FE8A23460000000
  %1862 = call float @dx.op.unary.f32(i32 7, float %1861)  ; Saturate(value)
  %1863 = call float @dx.op.binary.f32(i32 35, float %1860, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1864 = fmul fast float %1862, %1849
  %1865 = fmul fast float %1863, 0x3FF279A740000000
  %1866 = fadd fast float %1865, -1.000000e+00
  %1867 = call float @dx.op.dot3.f32(i32 55, float %1855, float %1856, float %1779, float %1855, float %1856, float %1779)  ; Dot3(ax,ay,az,bx,by,bz)
  %1868 = call float @dx.op.unary.f32(i32 25, float %1867)  ; Rsqrt(value)
  %1869 = fmul fast float %1868, %1855
  %1870 = fmul fast float %1868, %1856
  %1871 = fmul fast float %1868, %1779
  %1872 = fmul fast float %1866, %1866
  %1873 = fsub fast float 1.000000e+00, %1872
  %1874 = fmul fast float %1863, 0x40005F8BE0000000
  %1875 = fsub fast float 0x400C5BF8A0000000, %1874
  %1876 = fdiv fast float %1864, %1875
  %1877 = fmul fast float %1876, 0x3FEE31C3C0000000
  %1878 = fmul fast float %1877, %1873
  %1879 = fmul fast float %1863, 0x3FDACB7480000000
  %1880 = fadd fast float %1879, 0xBFD7347680000000
  %1881 = fmul fast float %1880, %1876
  %1882 = fmul fast float %1881, %1873
  br label %1883

; <label>:1883                                    ; preds = %1854, %1826
  %1884 = phi float [ %1869, %1854 ], [ 0.000000e+00, %1826 ]
  %1885 = phi float [ %1870, %1854 ], [ 0.000000e+00, %1826 ]
  %1886 = phi float [ %1871, %1854 ], [ 0.000000e+00, %1826 ]
  %1887 = phi float [ %1878, %1854 ], [ 0.000000e+00, %1826 ]
  %1888 = phi float [ %1882, %1854 ], [ 0.000000e+00, %1826 ]
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1884, float %1885, float %1886, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = fmul fast float %1889, 0x3FDF454380000000
  %1891 = fmul fast float %1889, %1889
  %1892 = fmul fast float %1891, 0x3FEE471020000000
  %1893 = fadd fast float %1892, 0xBFD42F6020000000
  %1894 = fmul fast float %1849, 0x3FD20DD760000000
  %1895 = fmul fast float %1893, %1888
  %1896 = fadd fast float %1895, %1894
  %1897 = fmul fast float %1890, %1887
  %1898 = fadd fast float %1896, %1897
  %1899 = fsub fast float %1896, %1897
  %1900 = call float @dx.op.dot3.f32(i32 55, float %1884, float %1885, float %1886, float %492, float %493, float %494)  ; Dot3(ax,ay,az,bx,by,bz)
  %1901 = fmul fast float %1900, 0x3FDF454380000000
  %1902 = fmul fast float %1900, %1900
  %1903 = fmul fast float %1902, 0x3FEE471020000000
  %1904 = fadd fast float %1903, 0xBFD42F6020000000
  %1905 = call float @dx.op.dot3.f32(i32 55, float %1849, float %1887, float %1888, float 0x3FD20DD760000000, float %1901, float %1904)  ; Dot3(ax,ay,az,bx,by,bz)
  %1906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1762)  ; FMax(a,b)
  %1907 = call float @dx.op.dot3.f32(i32 55, float %1785, float %1788, float %1791, float %1785, float %1788, float %1791)  ; Dot3(ax,ay,az,bx,by,bz)
  %1908 = fcmp fast oeq float %1907, 0.000000e+00
  %1909 = fcmp fast oeq float %1906, 0.000000e+00
  %1910 = or i1 %1909, %1908
  br i1 %1910, label %1940, label %1911

; <label>:1911                                    ; preds = %1883
  %1912 = fsub fast float -0.000000e+00, %1791
  %1913 = fsub fast float -0.000000e+00, %1785
  %1914 = call float @dx.op.unary.f32(i32 24, float %1907)  ; Sqrt(value)
  %1915 = fdiv fast float %1914, %1906
  %1916 = fcmp fast ogt float %1915, 0x3FFB6F8900000000
  %1917 = select i1 %1916, float 0x3FFB6F8900000000, float %1915
  %1918 = fmul fast float %1917, 0x3FE8A23460000000
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  %1920 = call float @dx.op.binary.f32(i32 35, float %1917, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1921 = fmul fast float %1919, %1906
  %1922 = fmul fast float %1920, 0x3FF279A740000000
  %1923 = fadd fast float %1922, -1.000000e+00
  %1924 = call float @dx.op.dot3.f32(i32 55, float %1912, float %1913, float %1788, float %1912, float %1913, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1925 = call float @dx.op.unary.f32(i32 25, float %1924)  ; Rsqrt(value)
  %1926 = fmul fast float %1925, %1912
  %1927 = fmul fast float %1925, %1913
  %1928 = fmul fast float %1925, %1788
  %1929 = fmul fast float %1923, %1923
  %1930 = fsub fast float 1.000000e+00, %1929
  %1931 = fmul fast float %1920, 0x40005F8BE0000000
  %1932 = fsub fast float 0x400C5BF8A0000000, %1931
  %1933 = fdiv fast float %1921, %1932
  %1934 = fmul fast float %1933, 0x3FEE31C3C0000000
  %1935 = fmul fast float %1934, %1930
  %1936 = fmul fast float %1920, 0x3FDACB7480000000
  %1937 = fadd fast float %1936, 0xBFD7347680000000
  %1938 = fmul fast float %1937, %1933
  %1939 = fmul fast float %1938, %1930
  br label %1940

; <label>:1940                                    ; preds = %1911, %1883
  %1941 = phi float [ %1926, %1911 ], [ 0.000000e+00, %1883 ]
  %1942 = phi float [ %1927, %1911 ], [ 0.000000e+00, %1883 ]
  %1943 = phi float [ %1928, %1911 ], [ 0.000000e+00, %1883 ]
  %1944 = phi float [ %1935, %1911 ], [ 0.000000e+00, %1883 ]
  %1945 = phi float [ %1939, %1911 ], [ 0.000000e+00, %1883 ]
  %1946 = call float @dx.op.dot3.f32(i32 55, float %1941, float %1942, float %1943, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %1947 = fmul fast float %1946, 0x3FDF454380000000
  %1948 = fmul fast float %1946, %1946
  %1949 = fmul fast float %1948, 0x3FEE471020000000
  %1950 = fadd fast float %1949, 0xBFD42F6020000000
  %1951 = fmul fast float %1906, 0x3FD20DD760000000
  %1952 = fmul fast float %1950, %1945
  %1953 = fadd fast float %1952, %1951
  %1954 = fmul fast float %1947, %1944
  %1955 = fadd fast float %1953, %1954
  %1956 = fsub fast float %1953, %1954
  %1957 = call float @dx.op.dot3.f32(i32 55, float %1941, float %1942, float %1943, float %492, float %493, float %494)  ; Dot3(ax,ay,az,bx,by,bz)
  %1958 = fmul fast float %1957, 0x3FDF454380000000
  %1959 = fmul fast float %1957, %1957
  %1960 = fmul fast float %1959, 0x3FEE471020000000
  %1961 = fadd fast float %1960, 0xBFD42F6020000000
  %1962 = call float @dx.op.dot3.f32(i32 55, float %1906, float %1944, float %1945, float 0x3FD20DD760000000, float %1958, float %1961)  ; Dot3(ax,ay,az,bx,by,bz)
  %1963 = call float @dx.op.binary.f32(i32 35, float %1841, float 0.000000e+00)  ; FMax(a,b)
  %1964 = call float @dx.op.binary.f32(i32 35, float %1898, float 0.000000e+00)  ; FMax(a,b)
  %1965 = call float @dx.op.binary.f32(i32 35, float %1955, float 0.000000e+00)  ; FMax(a,b)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1842, float 0.000000e+00)  ; FMax(a,b)
  %1967 = call float @dx.op.binary.f32(i32 35, float %1899, float 0.000000e+00)  ; FMax(a,b)
  %1968 = call float @dx.op.binary.f32(i32 35, float %1956, float 0.000000e+00)  ; FMax(a,b)
  %1969 = call float @dx.op.binary.f32(i32 35, float %1848, float 0.000000e+00)  ; FMax(a,b)
  %1970 = call float @dx.op.binary.f32(i32 35, float %1905, float 0.000000e+00)  ; FMax(a,b)
  %1971 = call float @dx.op.binary.f32(i32 35, float %1962, float 0.000000e+00)  ; FMax(a,b)
  %1972 = fsub fast float %1160, %1963
  %1973 = fsub fast float %1161, %1964
  %1974 = fsub fast float %1162, %1965
  %1975 = fmul fast float %1972, %552
  %1976 = fmul fast float %1973, %552
  %1977 = fmul fast float %1974, %552
  %1978 = fadd fast float %1975, %1963
  %1979 = fadd fast float %1976, %1964
  %1980 = fadd fast float %1977, %1965
  %1981 = fsub fast float %1157, %1966
  %1982 = fsub fast float %1158, %1967
  %1983 = fsub fast float %1159, %1968
  %1984 = fmul fast float %1981, %552
  %1985 = fmul fast float %1982, %552
  %1986 = fmul fast float %1983, %552
  %1987 = fadd fast float %1984, %1966
  %1988 = fadd fast float %1985, %1967
  %1989 = fadd fast float %1986, %1968
  %1990 = fsub fast float %1154, %1969
  %1991 = fsub fast float %1155, %1970
  %1992 = fsub fast float %1156, %1971
  %1993 = fmul fast float %1990, %552
  %1994 = fmul fast float %1991, %552
  %1995 = fmul fast float %1992, %552
  %1996 = fadd fast float %1993, %1969
  %1997 = fadd fast float %1994, %1970
  %1998 = fadd fast float %1995, %1971
  %1999 = fsub fast float %941, %1764
  %2000 = fmul fast float %1999, %552
  %2001 = fadd fast float %2000, %1764
  br label %2002

; <label>:2002                                    ; preds = %1940, %1153
  %2003 = phi float [ %1996, %1940 ], [ %1154, %1153 ]
  %2004 = phi float [ %1997, %1940 ], [ %1155, %1153 ]
  %2005 = phi float [ %1998, %1940 ], [ %1156, %1153 ]
  %2006 = phi float [ %1987, %1940 ], [ %1157, %1153 ]
  %2007 = phi float [ %1988, %1940 ], [ %1158, %1153 ]
  %2008 = phi float [ %1989, %1940 ], [ %1159, %1153 ]
  %2009 = phi float [ %1978, %1940 ], [ %1160, %1153 ]
  %2010 = phi float [ %1979, %1940 ], [ %1161, %1153 ]
  %2011 = phi float [ %1980, %1940 ], [ %1162, %1153 ]
  %2012 = phi float [ %2001, %1940 ], [ %941, %1153 ]
  %2013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  %2015 = call float @dx.op.binary.f32(i32 36, float %457, float %2014)  ; FMin(a,b)
  %2016 = fmul fast float %2015, %496
  %2017 = fsub fast float 1.000000e+00, %2016
  %2018 = bitcast float %2017 to i32
  %2019 = sub nsw i32 2129859010, %2018
  %2020 = bitcast i32 %2019 to float
  %2021 = call float @dx.op.binary.f32(i32 36, float %458, float %2014)  ; FMin(a,b)
  %2022 = fmul fast float %2021, %496
  %2023 = fsub fast float 1.000000e+00, %2022
  %2024 = bitcast float %2023 to i32
  %2025 = sub nsw i32 2129859010, %2024
  %2026 = bitcast i32 %2025 to float
  %2027 = call float @dx.op.binary.f32(i32 36, float %459, float %2014)  ; FMin(a,b)
  %2028 = fmul fast float %2027, %496
  %2029 = fsub fast float 1.000000e+00, %2028
  %2030 = bitcast float %2029 to i32
  %2031 = sub nsw i32 2129859010, %2030
  %2032 = bitcast i32 %2031 to float
  %2033 = fmul fast float %2009, %495
  %2034 = fmul fast float %2033, %2020
  %2035 = fmul fast float %2010, %495
  %2036 = fmul fast float %2035, %2026
  %2037 = fmul fast float %2011, %495
  %2038 = fmul fast float %2037, %2032
  %2039 = call float @dx.op.binary.f32(i32 36, float %466, float %2014)  ; FMin(a,b)
  %2040 = fmul fast float %2039, %496
  %2041 = fsub fast float 1.000000e+00, %2040
  %2042 = bitcast float %2041 to i32
  %2043 = sub nsw i32 2129859010, %2042
  %2044 = bitcast i32 %2043 to float
  %2045 = call float @dx.op.binary.f32(i32 36, float %467, float %2014)  ; FMin(a,b)
  %2046 = fmul fast float %2045, %496
  %2047 = fsub fast float 1.000000e+00, %2046
  %2048 = bitcast float %2047 to i32
  %2049 = sub nsw i32 2129859010, %2048
  %2050 = bitcast i32 %2049 to float
  %2051 = call float @dx.op.binary.f32(i32 36, float %484, float %2014)  ; FMin(a,b)
  %2052 = fmul fast float %2051, %496
  %2053 = fsub fast float 1.000000e+00, %2052
  %2054 = bitcast float %2053 to i32
  %2055 = sub nsw i32 2129859010, %2054
  %2056 = bitcast i32 %2055 to float
  %2057 = fmul fast float %2003, %495
  %2058 = fmul fast float %2057, %2044
  %2059 = fmul fast float %2004, %495
  %2060 = fmul fast float %2059, %2050
  %2061 = fmul fast float %2005, %495
  %2062 = fmul fast float %2061, %2056
  %2063 = call float @dx.op.dot3.f32(i32 55, float %2034, float %2036, float %2038, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2064 = select i1 %135, float 0.000000e+00, float %2034
  %2065 = select i1 %135, float %2063, float %2036
  %2066 = select i1 %135, float 0.000000e+00, float %2038
  %2067 = call float @dx.op.dot3.f32(i32 55, float %2006, float %2007, float %2008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2068 = select i1 %135, float 0.000000e+00, float %2006
  %2069 = select i1 %135, float %2067, float %2007
  %2070 = select i1 %135, float 0.000000e+00, float %2008
  %2071 = call float @dx.op.dot3.f32(i32 55, float %2058, float %2060, float %2062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2072 = select i1 %135, float 0.000000e+00, float %2058
  %2073 = select i1 %135, float %2071, float %2060
  %2074 = select i1 %135, float 0.000000e+00, float %2062
  %2075 = fmul fast float %486, 9.843750e-01
  %2076 = fmul fast float %278, 9.843750e-01
  %2077 = fadd fast float %2075, 7.812500e-03
  %2078 = fadd fast float %2076, 7.812500e-03
  %2079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %2077, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2080 = extractvalue %dx.types.ResRet.f32 %2079, 2
  %2081 = extractvalue %dx.types.ResRet.f32 %2079, 3
  %2082 = fmul fast float %2080, %466
  %2083 = fmul fast float %2080, %467
  %2084 = fmul fast float %2080, %484
  %2085 = fadd fast float %2082, %2081
  %2086 = fadd fast float %2083, %2081
  %2087 = fadd fast float %2084, %2081
  %2088 = call float @dx.op.binary.f32(i32 35, float %2086, float %2087)  ; FMax(a,b)
  %2089 = call float @dx.op.binary.f32(i32 35, float %2085, float %2088)  ; FMax(a,b)
  %2090 = fsub fast float 1.000000e+00, %2089
  %2091 = fmul fast float %2089, %278
  %2092 = fadd fast float %2091, %278
  %2093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %2094 = extractvalue %dx.types.CBufRet.f32 %2093, 2
  %2095 = extractvalue %dx.types.CBufRet.f32 %2093, 3
  %2096 = fmul fast float %2092, %2094
  %2097 = fadd fast float %2096, %2095
  %2098 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2099 = fsub fast float 1.000000e+00, %507
  %2100 = fadd fast float %2099, %2098
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2102 = fcmp fast olt float %2101, 1.000000e+00
  br i1 %2102, label %2103, label %2578

; <label>:2103                                    ; preds = %2002
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 2
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2107 = fmul fast float %2105, %76
  %2108 = fmul fast float %2106, %77
  %2109 = fptoui float %2107 to i32
  %2110 = fptoui float %2108 to i32
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 2
  %2114 = extractvalue %dx.types.CBufRet.f32 %2111, 3
  %2115 = fadd fast float %309, -4.000000e+00
  %2116 = call float @dx.op.binary.f32(i32 35, float %2115, float 0.000000e+00)  ; FMax(a,b)
  %2117 = fadd fast float %2116, %2112
  %2118 = fmul fast float %2117, %2113
  %2119 = call float @dx.op.unary.f32(i32 23, float %2118)  ; Log(value)
  %2120 = fmul fast float %2119, %2114
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %2123 = fmul fast float %2120, %2122
  %2124 = call float @dx.op.unary.f32(i32 7, float %2123)  ; Saturate(value)
  %2125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.i32 %2125, 1
  %2127 = add i32 %2126, -1
  %2128 = uitofp i32 %2126 to float
  %2129 = fmul fast float %2128, %2124
  %2130 = fptoui float %2129 to i32
  %2131 = call i32 @dx.op.binary.i32(i32 40, i32 %2130, i32 %2127)  ; UMin(a,b)
  %2132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.i32 %2132, 2
  %2134 = extractvalue %dx.types.CBufRet.i32 %2132, 3
  %2135 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2110, i32 %2133, i32 %2109)  ; UMad(a,b,c)
  %2136 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2131, i32 %2134, i32 %2135)  ; UMad(a,b,c)
  %2137 = call float @dx.op.binary.f32(i32 35, float %309, float 0.000000e+00)  ; FMax(a,b)
  %2138 = fptoui float %2137 to i32
  %2139 = lshr i32 %2138, 5
  %2140 = call i32 @dx.op.binary.i32(i32 40, i32 %2139, i32 8191)  ; UMin(a,b)
  %2141 = call float @dx.op.unary.f32(i32 7, float %475)  ; Saturate(value)
  %2142 = fcmp fast ogt float %2141, 0.000000e+00
  %2143 = fcmp fast ogt float %494, 0.000000e+00
  %2144 = and i1 %2143, %2142
  br i1 %2144, label %2145, label %2174

; <label>:2145                                    ; preds = %2103
  %2146 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %494, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2147 = call float @dx.op.binary.f32(i32 35, float %2146, float -1.000000e+00)  ; FMax(a,b)
  %2148 = call float @dx.op.binary.f32(i32 36, float %2147, float 1.000000e+00)  ; FMin(a,b)
  %2149 = fmul fast float %2148, %2148
  %2150 = fsub fast float 1.000000e+00, %2149
  %2151 = fmul fast float %2150, 0x3FFC6E2300000000
  %2152 = fsub fast float 1.000000e+00, %2151
  %2153 = fcmp fast ogt float %2152, 0.000000e+00
  %2154 = call float @dx.op.unary.f32(i32 24, float %2152)  ; Sqrt(value)
  %2155 = fsub fast float 1.000000e+00, %2154
  %2156 = call float @dx.op.unary.f32(i32 23, float %2155)  ; Log(value)
  %2157 = fmul fast float %2156, 5.000000e+00
  %2158 = call float @dx.op.unary.f32(i32 21, float %2157)  ; Exp(value)
  %2159 = fmul fast float %2158, 0x3FEF591A60000000
  %2160 = fadd fast float %2159, 0x3F94DCB540000000
  %2161 = select i1 %2153, float %2160, float 1.000000e+00
  %2162 = fcmp fast oge float %2161, 1.000000e+00
  %2163 = fmul fast float %2146, 2.000000e+00
  %2164 = fadd fast float %2163, %494
  %2165 = select i1 %2162, float %2164, float %494
  %2166 = fsub fast float %2165, %494
  %2167 = fmul fast float %2166, %2141
  %2168 = fadd fast float %2167, %494
  %2169 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %2168, float %492, float %493, float %2168)  ; Dot3(ax,ay,az,bx,by,bz)
  %2170 = call float @dx.op.unary.f32(i32 25, float %2169)  ; Rsqrt(value)
  %2171 = fmul fast float %2170, %492
  %2172 = fmul fast float %2170, %493
  %2173 = fmul fast float %2168, %2170
  br label %2174

; <label>:2174                                    ; preds = %2145, %2103
  %2175 = phi float [ %2171, %2145 ], [ %492, %2103 ]
  %2176 = phi float [ %2172, %2145 ], [ %493, %2103 ]
  %2177 = phi float [ %2173, %2145 ], [ %494, %2103 ]
  %2178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2179 = extractvalue %dx.types.CBufRet.i32 %2178, 2
  %2180 = add nsw i32 %2179, -1
  %2181 = call i32 @dx.op.binary.i32(i32 37, i32 %2180, i32 0)  ; IMax(a,b)
  %2182 = shl i32 %2140, 2
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2182, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = lshr i32 %2184, 16
  %2186 = and i32 %2184, 65535
  %2187 = lshr i32 %2184, 21
  %2188 = lshr i32 %2186, 5
  %2189 = call i32 @dx.op.binary.i32(i32 40, i32 %2188, i32 %2181)  ; UMin(a,b)
  %2190 = icmp ugt i32 %2187, %2189
  br i1 %2190, label %2554, label %2191

; <label>:2191                                    ; preds = %2174
  br label %2192

; <label>:2192                                    ; preds = %2546, %2191
  %2193 = phi float [ %2547, %2546 ], [ 0.000000e+00, %2191 ]
  %2194 = phi float [ %2548, %2546 ], [ 0.000000e+00, %2191 ]
  %2195 = phi float [ %2549, %2546 ], [ 0.000000e+00, %2191 ]
  %2196 = phi float [ %2550, %2546 ], [ 1.000000e+00, %2191 ]
  %2197 = phi i32 [ %2551, %2546 ], [ %2187, %2191 ]
  %2198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.i32 %2198, 2
  %2200 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2136, i32 %2199, i32 %2197)  ; UMad(a,b,c)
  %2201 = shl i32 %2200, 2
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = shl i32 %2197, 5
  %2205 = sub nsw i32 %2185, %2204
  %2206 = call i32 @dx.op.binary.i32(i32 37, i32 %2205, i32 0)  ; IMax(a,b)
  %2207 = call i32 @dx.op.binary.i32(i32 38, i32 %2206, i32 31)  ; IMin(a,b)
  %2208 = sub nsw i32 1, %2185
  %2209 = add nsw i32 %2208, %2186
  %2210 = call i32 @dx.op.binary.i32(i32 37, i32 %2209, i32 0)  ; IMax(a,b)
  %2211 = call i32 @dx.op.binary.i32(i32 38, i32 %2210, i32 32)  ; IMin(a,b)
  %2212 = and i32 %2211, 31
  %2213 = shl i32 -1, %2212
  %2214 = xor i32 %2213, -1
  %2215 = and i32 %2207, 31
  %2216 = shl i32 %2214, %2215
  %2217 = icmp eq i32 %2211, 32
  %2218 = select i1 %2217, i32 -1, i32 %2216
  %2219 = and i32 %2218, %2203
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2546, label %2221

; <label>:2221                                    ; preds = %2192
  br label %2222

; <label>:2222                                    ; preds = %2329, %2221
  %2223 = phi float [ %2330, %2329 ], [ %2193, %2221 ]
  %2224 = phi float [ %2331, %2329 ], [ %2194, %2221 ]
  %2225 = phi float [ %2332, %2329 ], [ %2195, %2221 ]
  %2226 = phi float [ %2333, %2329 ], [ %2196, %2221 ]
  %2227 = phi i32 [ %2232, %2329 ], [ %2219, %2221 ]
  %2228 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2227)  ; FirstbitLo(value)
  %2229 = add i32 %2228, %2204
  %2230 = and i32 %2228, 31
  %2231 = shl i32 1, %2230
  %2232 = xor i32 %2231, %2227
  %2233 = mul i32 %2229, 72
  %2234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.ResRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.ResRet.f32 %2234, 2
  %2238 = add i32 %2233, 12
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = add i32 %2233, 16
  %2242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  %2244 = extractvalue %dx.types.ResRet.f32 %2242, 1
  %2245 = extractvalue %dx.types.ResRet.f32 %2242, 2
  %2246 = add i32 %2233, 28
  %2247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.f32 %2247, 0
  %2249 = add i32 %2233, 32
  %2250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.f32 %2250, 0
  %2252 = extractvalue %dx.types.ResRet.f32 %2250, 1
  %2253 = extractvalue %dx.types.ResRet.f32 %2250, 2
  %2254 = extractvalue %dx.types.ResRet.f32 %2250, 3
  %2255 = add i32 %2233, 48
  %2256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.f32 %2256, 0
  %2258 = extractvalue %dx.types.ResRet.f32 %2256, 1
  %2259 = add i32 %2233, 56
  %2260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = extractvalue %dx.types.ResRet.f32 %2260, 1
  %2263 = add i32 %2233, 64
  %2264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %2263, i32 undef)  ; BufferLoad(srv,index,wot)
  %2265 = extractvalue %dx.types.ResRet.f32 %2264, 0
  %2266 = extractvalue %dx.types.ResRet.f32 %2264, 1
  %2267 = mul i32 %2229, 60
  %2268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.f32 %2268, 0
  %2270 = extractvalue %dx.types.ResRet.f32 %2268, 1
  %2271 = extractvalue %dx.types.ResRet.f32 %2268, 2
  %2272 = add i32 %2267, 12
  %2273 = add i32 %2267, 48
  %2274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.ResRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.ResRet.f32 %2274, 2
  %2278 = and i32 %2240, 32767
  %2279 = bitcast float %2235 to i32
  %2280 = icmp eq i32 %2279, -1
  %2281 = bitcast float %2236 to i32
  %2282 = and i32 %2240, 32768
  %2283 = icmp ne i32 %2282, 0
  %2284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2285 = extractvalue %dx.types.CBufRet.f32 %2284, 0
  %2286 = extractvalue %dx.types.CBufRet.f32 %2284, 1
  %2287 = extractvalue %dx.types.CBufRet.f32 %2284, 2
  %2288 = fsub fast float %2269, %2285
  %2289 = fsub fast float %2270, %2286
  %2290 = fsub fast float %2271, %2287
  %2291 = fsub fast float %343, %2288
  %2292 = fsub fast float %344, %2289
  %2293 = fsub fast float %345, %2290
  %2294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = extractvalue %dx.types.ResRet.f32 %2294, 1
  %2297 = extractvalue %dx.types.ResRet.f32 %2294, 2
  %2298 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2295, float %2296, float %2297)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = add i32 %2267, 24
  %2300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2301 = extractvalue %dx.types.ResRet.f32 %2300, 0
  %2302 = extractvalue %dx.types.ResRet.f32 %2300, 1
  %2303 = extractvalue %dx.types.ResRet.f32 %2300, 2
  %2304 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2301, float %2302, float %2303)  ; Dot3(ax,ay,az,bx,by,bz)
  %2305 = add i32 %2267, 36
  %2306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %2305, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = extractvalue %dx.types.ResRet.f32 %2306, 1
  %2309 = extractvalue %dx.types.ResRet.f32 %2306, 2
  %2310 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2307, float %2308, float %2309)  ; Dot3(ax,ay,az,bx,by,bz)
  %2311 = call float @dx.op.unary.f32(i32 6, float %2298)  ; FAbs(value)
  %2312 = call float @dx.op.unary.f32(i32 6, float %2304)  ; FAbs(value)
  %2313 = call float @dx.op.unary.f32(i32 6, float %2310)  ; FAbs(value)
  %2314 = fsub fast float %2275, %2311
  %2315 = fsub fast float %2276, %2312
  %2316 = fsub fast float %2277, %2313
  %2317 = fmul fast float %2314, %2243
  %2318 = fmul fast float %2315, %2244
  %2319 = fmul fast float %2316, %2245
  %2320 = call float @dx.op.binary.f32(i32 36, float %2318, float %2319)  ; FMin(a,b)
  %2321 = call float @dx.op.binary.f32(i32 36, float %2317, float %2320)  ; FMin(a,b)
  %2322 = call float @dx.op.unary.f32(i32 7, float %2321)  ; Saturate(value)
  %2323 = call float @dx.op.binary.f32(i32 36, float %2226, float %2322)  ; FMin(a,b)
  %2324 = uitofp i1 %2283 to float
  %2325 = fadd fast float %2141, 1.000000e+00
  %2326 = fsub fast float %2325, %2324
  %2327 = fmul fast float %2323, %2326
  %2328 = fcmp fast ogt float %2327, 0.000000e+00
  br i1 %2328, label %2335, label %2329

; <label>:2329                                    ; preds = %2477, %2222
  %2330 = phi float [ %2541, %2477 ], [ %2223, %2222 ]
  %2331 = phi float [ %2542, %2477 ], [ %2224, %2222 ]
  %2332 = phi float [ %2543, %2477 ], [ %2225, %2222 ]
  %2333 = phi float [ %2544, %2477 ], [ %2226, %2222 ]
  %2334 = icmp eq i32 %2227, %2231
  br i1 %2334, label %2545, label %2222

; <label>:2335                                    ; preds = %2222
  br i1 %2280, label %2393, label %2336

; <label>:2336                                    ; preds = %2335
  %2337 = fsub fast float -0.000000e+00, %2295
  %2338 = fsub fast float -0.000000e+00, %2296
  %2339 = fsub fast float -0.000000e+00, %2297
  %2340 = call float @dx.op.dot3.f32(i32 55, float %2175, float %2176, float %2177, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %2341 = fsub fast float -0.000000e+00, %2340
  %2342 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2337, float %2338, float %2339)  ; Dot3(ax,ay,az,bx,by,bz)
  %2343 = fadd fast float %2342, %2258
  %2344 = fadd fast float %2257, %2342
  %2345 = fsub fast float -0.000000e+00, %2344
  %2346 = fcmp ogt float %2340, -0.000000e+00
  %2347 = select i1 %2346, float %2345, float %2343
  %2348 = call float @dx.op.unary.f32(i32 6, float %2341)  ; FAbs(value)
  %2349 = fdiv fast float 1.000000e+00, %2348
  %2350 = fmul fast float %2347, %2349
  %2351 = call float @dx.op.binary.f32(i32 35, float %2350, float 0.000000e+00)  ; FMax(a,b)
  %2352 = fsub fast float -0.000000e+00, %2301
  %2353 = fsub fast float -0.000000e+00, %2302
  %2354 = fsub fast float -0.000000e+00, %2303
  %2355 = call float @dx.op.dot3.f32(i32 55, float %2175, float %2176, float %2177, float %2352, float %2353, float %2354)  ; Dot3(ax,ay,az,bx,by,bz)
  %2356 = fsub fast float -0.000000e+00, %2355
  %2357 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2352, float %2353, float %2354)  ; Dot3(ax,ay,az,bx,by,bz)
  %2358 = fadd fast float %2357, %2262
  %2359 = fadd fast float %2261, %2357
  %2360 = fsub fast float -0.000000e+00, %2359
  %2361 = fcmp ogt float %2355, -0.000000e+00
  %2362 = select i1 %2361, float %2360, float %2358
  %2363 = call float @dx.op.unary.f32(i32 6, float %2356)  ; FAbs(value)
  %2364 = fdiv fast float 1.000000e+00, %2363
  %2365 = fmul fast float %2362, %2364
  %2366 = call float @dx.op.binary.f32(i32 35, float %2365, float 0.000000e+00)  ; FMax(a,b)
  %2367 = fsub fast float -0.000000e+00, %2307
  %2368 = fsub fast float -0.000000e+00, %2308
  %2369 = fsub fast float -0.000000e+00, %2309
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2175, float %2176, float %2177, float %2367, float %2368, float %2369)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = fsub fast float -0.000000e+00, %2370
  %2372 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2292, float %2293, float %2367, float %2368, float %2369)  ; Dot3(ax,ay,az,bx,by,bz)
  %2373 = fadd fast float %2372, %2266
  %2374 = fadd fast float %2265, %2372
  %2375 = fsub fast float -0.000000e+00, %2374
  %2376 = fcmp ogt float %2370, -0.000000e+00
  %2377 = select i1 %2376, float %2375, float %2373
  %2378 = call float @dx.op.unary.f32(i32 6, float %2371)  ; FAbs(value)
  %2379 = fdiv fast float 1.000000e+00, %2378
  %2380 = fmul fast float %2377, %2379
  %2381 = call float @dx.op.binary.f32(i32 35, float %2380, float 0.000000e+00)  ; FMax(a,b)
  %2382 = call float @dx.op.binary.f32(i32 36, float %2366, float %2381)  ; FMin(a,b)
  %2383 = call float @dx.op.binary.f32(i32 36, float %2351, float %2382)  ; FMin(a,b)
  %2384 = fmul fast float %2383, %2175
  %2385 = fmul fast float %2383, %2176
  %2386 = fmul fast float %2383, %2177
  %2387 = fadd fast float %2384, %343
  %2388 = fadd fast float %2385, %344
  %2389 = fadd fast float %2386, %345
  %2390 = fsub fast float %2387, %2235
  %2391 = fsub fast float %2388, %2236
  %2392 = fsub fast float %2389, %2237
  br label %2400

; <label>:2393                                    ; preds = %2335
  %2394 = fmul fast float %2175, 8.096000e+03
  %2395 = fmul fast float %2176, 8.096000e+03
  %2396 = fmul fast float %2177, 8.096000e+03
  %2397 = fadd fast float %2394, %343
  %2398 = fadd fast float %2395, %344
  %2399 = fadd fast float %2396, %345
  br label %2400

; <label>:2400                                    ; preds = %2393, %2336
  %2401 = phi float [ %2175, %2393 ], [ %2390, %2336 ]
  %2402 = phi float [ %2176, %2393 ], [ %2391, %2336 ]
  %2403 = phi float [ %2177, %2393 ], [ %2392, %2336 ]
  %2404 = phi float [ %2397, %2393 ], [ %2387, %2336 ]
  %2405 = phi float [ %2398, %2393 ], [ %2388, %2336 ]
  %2406 = phi float [ %2399, %2393 ], [ %2389, %2336 ]
  %2407 = fcmp fast olt float %2254, 1.000000e+00
  br i1 %2407, label %2408, label %2439, !dx.controlflow.hints !99

; <label>:2408                                    ; preds = %2400
  %2409 = fmul fast float %2403, %2252
  %2410 = fmul fast float %2402, %2253
  %2411 = fsub fast float %2409, %2410
  %2412 = fmul fast float %2401, %2253
  %2413 = fmul fast float %2403, %2251
  %2414 = fsub fast float %2412, %2413
  %2415 = fmul fast float %2402, %2251
  %2416 = fmul fast float %2401, %2252
  %2417 = fsub fast float %2415, %2416
  %2418 = fmul fast float %2411, 2.000000e+00
  %2419 = fmul fast float %2414, 2.000000e+00
  %2420 = fmul fast float %2417, 2.000000e+00
  %2421 = fmul fast float %2418, %2254
  %2422 = fmul fast float %2419, %2254
  %2423 = fmul fast float %2420, %2254
  %2424 = fmul fast float %2420, %2252
  %2425 = fmul fast float %2419, %2253
  %2426 = fmul fast float %2418, %2253
  %2427 = fmul fast float %2420, %2251
  %2428 = fmul fast float %2419, %2251
  %2429 = fmul fast float %2418, %2252
  %2430 = fadd fast float %2424, %2401
  %2431 = fadd fast float %2430, %2421
  %2432 = fsub fast float %2431, %2425
  %2433 = fsub fast float %2402, %2427
  %2434 = fadd fast float %2433, %2422
  %2435 = fadd fast float %2434, %2426
  %2436 = fadd fast float %2423, %2403
  %2437 = fsub fast float %2436, %2429
  %2438 = fadd fast float %2437, %2428
  br label %2439

; <label>:2439                                    ; preds = %2408, %2400
  %2440 = phi float [ %2432, %2408 ], [ %2401, %2400 ]
  %2441 = phi float [ %2435, %2408 ], [ %2402, %2400 ]
  %2442 = phi float [ %2438, %2408 ], [ %2403, %2400 ]
  br i1 %2280, label %2474, label %2443

; <label>:2443                                    ; preds = %2439
  %2444 = fmul fast float %278, 0x400187C840000000
  %2445 = fadd fast float %2444, 0xC00EFC2120000000
  %2446 = fmul fast float %2445, %278
  %2447 = fadd fast float %2446, 0x3FE5D16340000000
  %2448 = fmul fast float %2447, %278
  %2449 = fadd fast float %2448, 1.000000e+00
  %2450 = call float @dx.op.unary.f32(i32 7, float %2449)  ; Saturate(value)
  %2451 = fsub fast float %2404, %343
  %2452 = fsub fast float %2405, %344
  %2453 = fsub fast float %2406, %345
  %2454 = fsub fast float %2404, %2235
  %2455 = fsub fast float %2405, %2236
  %2456 = fsub fast float %2406, %2237
  %2457 = call float @dx.op.dot3.f32(i32 55, float %2451, float %2452, float %2453, float %2451, float %2452, float %2453)  ; Dot3(ax,ay,az,bx,by,bz)
  %2458 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2456, float %2454, float %2455, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %2459 = fadd fast float %2458, 0x3EE4F8B580000000
  %2460 = fdiv fast float %2457, %2459
  %2461 = bitcast float %2460 to i32
  %2462 = ashr i32 %2461, 1
  %2463 = add nsw i32 %2462, 532487669
  %2464 = bitcast i32 %2463 to float
  %2465 = fmul fast float %2464, %2450
  %2466 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2467 = fmul fast float %2466, 0x4009981AE0000000
  %2468 = fsub fast float 0x40111BBD80000000, %2467
  %2469 = fmul fast float %2468, %2466
  %2470 = fadd fast float %2469, 0xC0009F6020000000
  %2471 = fmul fast float %2470, %2466
  %2472 = fadd fast float %2471, 1.000000e+00
  %2473 = call float @dx.op.unary.f32(i32 7, float %2472)  ; Saturate(value)
  br label %2477

; <label>:2474                                    ; preds = %2439
  %2475 = icmp ne i32 %2281, -1
  %2476 = zext i1 %2475 to i32
  br label %2477

; <label>:2477                                    ; preds = %2474, %2443
  %2478 = phi float [ %278, %2474 ], [ %2473, %2443 ]
  %2479 = phi i32 [ %2476, %2474 ], [ 0, %2443 ]
  %2480 = fmul float %2478, 5.000000e+00
  %2481 = fsub float 5.000000e+00, %2480
  %2482 = icmp ne i32 %2479, 0
  %2483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2484 = extractvalue %dx.types.CBufRet.f32 %2483, 3
  %2485 = fadd fast float %2484, %2481
  %2486 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2485)  ; FMax(a,b)
  %2487 = call float @dx.op.unary.f32(i32 6, float %2440)  ; FAbs(value)
  %2488 = call float @dx.op.unary.f32(i32 6, float %2441)  ; FAbs(value)
  %2489 = fadd fast float %2488, %2487
  %2490 = call float @dx.op.unary.f32(i32 6, float %2442)  ; FAbs(value)
  %2491 = fadd fast float %2489, %2490
  %2492 = fcmp fast oeq float %2491, 0.000000e+00
  %2493 = fdiv fast float 1.000000e+00, %2491
  %2494 = select i1 %2492, float 1.000000e+00, float %2493
  %2495 = fmul fast float %2494, %2440
  %2496 = fmul fast float %2494, %2441
  %2497 = call float @dx.op.unary.f32(i32 6, float %2496)  ; FAbs(value)
  %2498 = call float @dx.op.unary.f32(i32 6, float %2495)  ; FAbs(value)
  %2499 = fsub fast float 1.000000e+00, %2497
  %2500 = fsub fast float 1.000000e+00, %2498
  %2501 = fcmp fast oge float %2495, 0.000000e+00
  %2502 = fcmp fast oge float %2496, 0.000000e+00
  %2503 = select i1 %2501, float 1.000000e+00, float -1.000000e+00
  %2504 = select i1 %2502, float 1.000000e+00, float -1.000000e+00
  %2505 = fcmp fast ole float %2442, 0.000000e+00
  %2506 = fmul fast float %2503, %2499
  %2507 = fmul fast float %2504, %2500
  %2508 = select i1 %2505, float %2506, float %2495
  %2509 = select i1 %2505, float %2507, float %2496
  %2510 = fmul fast float %2508, 5.000000e-01
  %2511 = fmul fast float %2509, 5.000000e-01
  %2512 = fadd fast float %2510, 5.000000e-01
  %2513 = fadd fast float %2511, 5.000000e-01
  %2514 = uitofp i32 %2278 to float
  %2515 = call float @dx.op.binary.f32(i32 36, float %2486, float 3.000000e+00)  ; FMin(a,b)
  %2516 = fadd fast float %2515, 2.000000e+00
  %2517 = call float @dx.op.unary.f32(i32 21, float %2516)  ; Exp(value)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2483, 1
  %2519 = fmul fast float %2518, %2517
  %2520 = fmul fast float %2519, 2.000000e+00
  %2521 = fsub fast float 1.000000e+00, %2520
  %2522 = fmul fast float %2512, %2521
  %2523 = fmul fast float %2513, %2521
  %2524 = fadd fast float %2522, %2519
  %2525 = fadd fast float %2523, %2519
  %2526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %2524, float %2525, float %2514, float undef, i32 0, i32 0, i32 undef, float %2486)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2527 = extractvalue %dx.types.ResRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.ResRet.f32 %2526, 1
  %2529 = extractvalue %dx.types.ResRet.f32 %2526, 2
  %2530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.f32 %2530, 3
  %2532 = fmul fast float %2531, %2248
  %2533 = call float @dx.op.binary.f32(i32 36, float %2012, float %2532)  ; FMin(a,b)
  %2534 = select i1 %2482, float %2533, float %2532
  %2535 = fmul fast float %2527, %2327
  %2536 = fmul fast float %2535, %2534
  %2537 = fmul fast float %2528, %2327
  %2538 = fmul fast float %2537, %2534
  %2539 = fmul fast float %2529, %2327
  %2540 = fmul fast float %2539, %2534
  %2541 = fadd fast float %2536, %2223
  %2542 = fadd fast float %2538, %2224
  %2543 = fadd fast float %2540, %2225
  %2544 = fsub fast float %2226, %2327
  br label %2329

; <label>:2545                                    ; preds = %2329
  br label %2546

; <label>:2546                                    ; preds = %2545, %2192
  %2547 = phi float [ %2193, %2192 ], [ %2330, %2545 ]
  %2548 = phi float [ %2194, %2192 ], [ %2331, %2545 ]
  %2549 = phi float [ %2195, %2192 ], [ %2332, %2545 ]
  %2550 = phi float [ %2196, %2192 ], [ %2333, %2545 ]
  %2551 = add i32 %2197, 1
  %2552 = icmp ugt i32 %2551, %2189
  br i1 %2552, label %2553, label %2192, !llvm.loop !100

; <label>:2553                                    ; preds = %2546
  br label %2554

; <label>:2554                                    ; preds = %2553, %2174
  %2555 = phi float [ 0.000000e+00, %2174 ], [ %2547, %2553 ]
  %2556 = phi float [ 0.000000e+00, %2174 ], [ %2548, %2553 ]
  %2557 = phi float [ 0.000000e+00, %2174 ], [ %2549, %2553 ]
  %2558 = call float @dx.op.dot3.f32(i32 55, float %2555, float %2556, float %2557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2559 = select i1 %135, float 0.000000e+00, float %2555
  %2560 = select i1 %135, float %2558, float %2556
  %2561 = select i1 %135, float 0.000000e+00, float %2557
  %2562 = fcmp fast olt float %2101, 0.000000e+00
  %2563 = call float @dx.op.unary.f32(i32 6, float %2101)  ; FAbs(value)
  %2564 = fmul fast float %2563, %2072
  %2565 = fmul fast float %2563, %2073
  %2566 = fmul fast float %2563, %2074
  %2567 = select i1 %2562, float %2072, float %2564
  %2568 = select i1 %2562, float %2073, float %2565
  %2569 = select i1 %2562, float %2074, float %2566
  %2570 = fsub fast float 1.000000e+00, %2563
  %2571 = call float @dx.op.unary.f32(i32 7, float %2570)  ; Saturate(value)
  %2572 = fmul fast float %2571, %2559
  %2573 = fmul fast float %2571, %2560
  %2574 = fmul fast float %2571, %2561
  %2575 = fadd fast float %2567, %2572
  %2576 = fadd fast float %2568, %2573
  %2577 = fadd fast float %2569, %2574
  br label %2578

; <label>:2578                                    ; preds = %2554, %2002
  %2579 = phi float [ %2072, %2002 ], [ %2575, %2554 ]
  %2580 = phi float [ %2073, %2002 ], [ %2576, %2554 ]
  %2581 = phi float [ %2074, %2002 ], [ %2577, %2554 ]
  %2582 = fmul fast float %2579, %2085
  %2583 = fmul fast float %2580, %2086
  %2584 = fmul fast float %2581, %2087
  %2585 = fmul fast float %2068, %285
  %2586 = fmul fast float %2069, %286
  %2587 = fmul fast float %2070, %287
  %2588 = fadd fast float %2585, %2064
  %2589 = fmul fast float %2588, %2090
  %2590 = fadd fast float %2586, %2065
  %2591 = fmul fast float %2590, %2090
  %2592 = fadd fast float %2587, %2066
  %2593 = fmul fast float %2592, %2090
  %2594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2595 = extractvalue %dx.types.CBufRet.f32 %2594, 3
  %2596 = fcmp fast oeq float %2595, 0.000000e+00
  br i1 %2596, label %4014, label %2597

; <label>:2597                                    ; preds = %2578
  %2598 = extractvalue %dx.types.CBufRet.f32 %2594, 0
  %2599 = extractvalue %dx.types.CBufRet.f32 %2594, 1
  %2600 = extractvalue %dx.types.CBufRet.f32 %2594, 2
  %2601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2602 = extractvalue %dx.types.CBufRet.f32 %2601, 0
  %2603 = extractvalue %dx.types.CBufRet.f32 %2601, 1
  %2604 = extractvalue %dx.types.CBufRet.f32 %2601, 2
  %2605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2606 = extractvalue %dx.types.CBufRet.f32 %2605, 0
  %2607 = extractvalue %dx.types.CBufRet.f32 %2605, 1
  %2608 = call float @dx.op.dot3.f32(i32 55, float %2602, float %2603, float %2604, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2609 = select i1 %135, float %2606, float %2602
  %2610 = select i1 %135, float %2608, float %2603
  %2611 = select i1 %135, float %2607, float %2604
  %2612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2612, 2
  %2614 = fmul fast float %2613, %266
  %2615 = fmul fast float %2613, %267
  %2616 = fmul fast float %2613, %268
  %2617 = fadd fast float %2614, %343
  %2618 = fadd fast float %2615, %344
  %2619 = fadd fast float %2616, %345
  %2620 = fcmp fast olt float %2595, 0.000000e+00
  br i1 %2620, label %3716, label %2621

; <label>:2621                                    ; preds = %2597
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = extractvalue %dx.types.CBufRet.f32 %2622, 1
  %2625 = extractvalue %dx.types.CBufRet.f32 %2622, 2
  %2626 = extractvalue %dx.types.CBufRet.f32 %2622, 3
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 0
  %2629 = extractvalue %dx.types.CBufRet.f32 %2627, 1
  %2630 = extractvalue %dx.types.CBufRet.f32 %2627, 2
  %2631 = extractvalue %dx.types.CBufRet.f32 %2627, 3
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2635 = extractvalue %dx.types.CBufRet.f32 %2632, 2
  %2636 = extractvalue %dx.types.CBufRet.f32 %2632, 3
  %2637 = fmul fast float %2623, %2617
  %2638 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2624, float %2637)  ; FMad(a,b,c)
  %2639 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2625, float %2638)  ; FMad(a,b,c)
  %2640 = fadd fast float %2639, %2626
  %2641 = fmul fast float %2628, %2617
  %2642 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2629, float %2641)  ; FMad(a,b,c)
  %2643 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2630, float %2642)  ; FMad(a,b,c)
  %2644 = fadd fast float %2643, %2631
  %2645 = fmul fast float %2633, %2617
  %2646 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2634, float %2645)  ; FMad(a,b,c)
  %2647 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2635, float %2646)  ; FMad(a,b,c)
  %2648 = fadd fast float %2647, %2636
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.CBufRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.CBufRet.f32 %2649, 3
  %2653 = fmul fast float %2652, %2640
  %2654 = fmul fast float %2652, %2644
  %2655 = fadd fast float %2653, %2650
  %2656 = fadd fast float %2654, %2651
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.CBufRet.f32 %2657, 3
  %2661 = fmul fast float %2660, %2640
  %2662 = fmul fast float %2660, %2644
  %2663 = fadd fast float %2661, %2658
  %2664 = fadd fast float %2662, %2659
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 1
  %2667 = fsub fast float %2666, %2648
  %2668 = extractvalue %dx.types.CBufRet.f32 %2665, 2
  %2669 = fmul fast float %2667, %2668
  %2670 = fsub fast float 1.000000e+00, %2669
  %2671 = call float @dx.op.unary.f32(i32 7, float %2670)  ; Saturate(value)
  %2672 = extractvalue %dx.types.CBufRet.f32 %2657, 2
  %2673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %2674 = extractvalue %dx.types.CBufRet.f32 %2673, 2
  %2675 = fadd fast float %2674, %2672
  %2676 = fcmp fast ogt float %2675, 0.000000e+00
  br i1 %2676, label %2677, label %2701

; <label>:2677                                    ; preds = %2621
  %2678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %2679 = extractvalue %dx.types.CBufRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.CBufRet.f32 %2678, 1
  %2681 = fsub fast float %2663, %2679
  %2682 = fsub fast float %2664, %2680
  %2683 = fcmp fast olt float %2681, 0.000000e+00
  %2684 = fcmp fast olt float %2682, 0.000000e+00
  %2685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %2686 = extractvalue %dx.types.CBufRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.CBufRet.f32 %2685, 1
  %2688 = extractvalue %dx.types.CBufRet.f32 %2685, 2
  %2689 = extractvalue %dx.types.CBufRet.f32 %2685, 3
  %2690 = select i1 %2683, float %2686, float %2688
  %2691 = select i1 %2684, float %2687, float %2689
  %2692 = fmul fast float %2690, %2681
  %2693 = fmul fast float %2691, %2682
  %2694 = call float @dx.op.unary.f32(i32 6, float %2692)  ; FAbs(value)
  %2695 = call float @dx.op.unary.f32(i32 6, float %2693)  ; FAbs(value)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  %2697 = call float @dx.op.binary.f32(i32 35, float %2694, float %2695)  ; FMax(a,b)
  %2698 = fsub fast float %2696, %2697
  %2699 = call float @dx.op.unary.f32(i32 7, float %2698)  ; Saturate(value)
  %2700 = fmul fast float %2699, %2671
  br label %2701

; <label>:2701                                    ; preds = %2677, %2621
  %2702 = phi float [ %2700, %2677 ], [ 0.000000e+00, %2621 ]
  %2703 = extractvalue %dx.types.CBufRet.f32 %2649, 2
  %2704 = extractvalue %dx.types.CBufRet.f32 %2673, 1
  %2705 = fadd fast float %2704, %2703
  %2706 = fcmp fast ogt float %2705, 0.000000e+00
  %2707 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  br i1 %2706, label %2708, label %2731

; <label>:2708                                    ; preds = %2701
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2712 = fsub fast float %2655, %2710
  %2713 = fsub fast float %2656, %2711
  %2714 = fcmp fast olt float %2712, 0.000000e+00
  %2715 = fcmp fast olt float %2713, 0.000000e+00
  %2716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %2717 = extractvalue %dx.types.CBufRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.CBufRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.CBufRet.f32 %2716, 2
  %2720 = extractvalue %dx.types.CBufRet.f32 %2716, 3
  %2721 = select i1 %2714, float %2717, float %2719
  %2722 = select i1 %2715, float %2718, float %2720
  %2723 = fmul fast float %2721, %2712
  %2724 = fmul fast float %2722, %2713
  %2725 = call float @dx.op.unary.f32(i32 6, float %2723)  ; FAbs(value)
  %2726 = call float @dx.op.unary.f32(i32 6, float %2724)  ; FAbs(value)
  %2727 = call float @dx.op.binary.f32(i32 35, float %2725, float %2726)  ; FMax(a,b)
  %2728 = fsub fast float %2707, %2727
  %2729 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  %2730 = fmul fast float %2729, %2671
  br label %2731

; <label>:2731                                    ; preds = %2708, %2701
  %2732 = phi float [ %2730, %2708 ], [ 0.000000e+00, %2701 ]
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 1
  %2735 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %2737 = extractvalue %dx.types.CBufRet.f32 %2736, 0
  %2738 = extractvalue %dx.types.CBufRet.f32 %2736, 1
  %2739 = fsub fast float %2640, %2737
  %2740 = fsub fast float %2644, %2738
  %2741 = fcmp fast olt float %2739, 0.000000e+00
  %2742 = fcmp fast olt float %2740, 0.000000e+00
  %2743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %2744 = extractvalue %dx.types.CBufRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.CBufRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.CBufRet.f32 %2743, 2
  %2747 = extractvalue %dx.types.CBufRet.f32 %2743, 3
  %2748 = select i1 %2741, float %2744, float %2746
  %2749 = select i1 %2742, float %2745, float %2747
  %2750 = fmul fast float %2748, %2739
  %2751 = fmul fast float %2749, %2740
  %2752 = call float @dx.op.unary.f32(i32 6, float %2750)  ; FAbs(value)
  %2753 = call float @dx.op.unary.f32(i32 6, float %2751)  ; FAbs(value)
  %2754 = call float @dx.op.binary.f32(i32 35, float %2752, float %2753)  ; FMax(a,b)
  %2755 = fsub fast float %2707, %2754
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = call float @dx.op.binary.f32(i32 36, float %2756, float %2735)  ; FMin(a,b)
  %2758 = fmul fast float %2757, %2671
  %2759 = fsub fast float %2732, %2758
  %2760 = fsub fast float %2702, %2732
  %2761 = fsub fast float %2760, %2758
  %2762 = call float @dx.op.binary.f32(i32 35, float %2732, float %2702)  ; FMax(a,b)
  %2763 = call float @dx.op.binary.f32(i32 35, float %2758, float %2762)  ; FMax(a,b)
  %2764 = fcmp fast olt float %2763, 1.000000e+00
  br i1 %2764, label %2765, label %3163, !dx.controlflow.hints !102

; <label>:2765                                    ; preds = %2731
  %2766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2766, 0
  %2768 = fcmp fast une float %2767, 0.000000e+00
  br i1 %2768, label %2769, label %3163, !dx.controlflow.hints !103

; <label>:2769                                    ; preds = %2765
  %2770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %2771 = extractvalue %dx.types.CBufRet.f32 %2770, 0
  %2772 = extractvalue %dx.types.CBufRet.f32 %2770, 1
  %2773 = extractvalue %dx.types.CBufRet.f32 %2770, 2
  %2774 = extractvalue %dx.types.CBufRet.f32 %2770, 3
  %2775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %2776 = extractvalue %dx.types.CBufRet.f32 %2775, 0
  %2777 = extractvalue %dx.types.CBufRet.f32 %2775, 1
  %2778 = extractvalue %dx.types.CBufRet.f32 %2775, 2
  %2779 = extractvalue %dx.types.CBufRet.f32 %2775, 3
  %2780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %2781 = extractvalue %dx.types.CBufRet.f32 %2780, 0
  %2782 = extractvalue %dx.types.CBufRet.f32 %2780, 1
  %2783 = extractvalue %dx.types.CBufRet.f32 %2780, 2
  %2784 = extractvalue %dx.types.CBufRet.f32 %2780, 3
  %2785 = fmul fast float %2771, %2617
  %2786 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2772, float %2785)  ; FMad(a,b,c)
  %2787 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2773, float %2786)  ; FMad(a,b,c)
  %2788 = fadd fast float %2787, %2774
  %2789 = fmul fast float %2776, %2617
  %2790 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2777, float %2789)  ; FMad(a,b,c)
  %2791 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2778, float %2790)  ; FMad(a,b,c)
  %2792 = fadd fast float %2791, %2779
  %2793 = fmul fast float %2781, %2617
  %2794 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %2782, float %2793)  ; FMad(a,b,c)
  %2795 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %2783, float %2794)  ; FMad(a,b,c)
  %2796 = fadd fast float %2795, %2784
  %2797 = fcmp fast oge float %2788, 1.000000e+00
  %2798 = fcmp fast oge float %2792, 1.000000e+00
  %2799 = or i1 %2797, %2798
  %2800 = fcmp fast olt float %2788, 0.000000e+00
  %2801 = fcmp fast olt float %2792, 0.000000e+00
  %2802 = or i1 %2800, %2801
  %2803 = or i1 %2799, %2802
  br i1 %2803, label %3163, label %2804, !dx.controlflow.hints !104

; <label>:2804                                    ; preds = %2769
  %2805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %2806 = extractvalue %dx.types.CBufRet.f32 %2805, 0
  %2807 = extractvalue %dx.types.CBufRet.f32 %2805, 1
  %2808 = extractvalue %dx.types.CBufRet.f32 %2805, 2
  %2809 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %2810 = extractvalue %dx.types.CBufRet.i32 %2809, 2
  %2811 = uitofp i32 %2810 to float
  %2812 = extractvalue %dx.types.CBufRet.i32 %2809, 3
  %2813 = uitofp i32 %2812 to float
  %2814 = extractvalue %dx.types.CBufRet.f32 %2805, 3
  %2815 = fmul fast float %2814, 2.000000e+00
  %2816 = fsub fast float %2788, %2806
  %2817 = fsub fast float %2792, %2807
  %2818 = fmul fast float %2815, %2816
  %2819 = fmul fast float %2815, %2817
  %2820 = fdiv fast float 1.000000e+00, %2600
  %2821 = fmul fast float %2819, %2820
  %2822 = call float @dx.op.unary.f32(i32 6, float %2821)  ; FAbs(value)
  %2823 = fmul fast float %2808, %2619
  %2824 = fmul fast float %2823, %2815
  %2825 = call float @dx.op.unary.f32(i32 6, float %2824)  ; FAbs(value)
  %2826 = call float @dx.op.unary.f32(i32 6, float %2818)  ; FAbs(value)
  %2827 = call float @dx.op.binary.f32(i32 35, float %2825, float %2822)  ; FMax(a,b)
  %2828 = call float @dx.op.binary.f32(i32 35, float %2826, float %2827)  ; FMax(a,b)
  %2829 = fmul fast float %2828, 2.000000e+00
  %2830 = call float @dx.op.unary.f32(i32 23, float %2829)  ; Log(value)
  %2831 = call float @dx.op.binary.f32(i32 35, float %2830, float %2811)  ; FMax(a,b)
  %2832 = call float @dx.op.unary.f32(i32 22, float %2831)  ; Frc(value)
  %2833 = fadd fast float %2832, 0xBFEA666660000000
  %2834 = fmul fast float %2833, 8.000000e+00
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2836 = call float @dx.op.unary.f32(i32 27, float %2831)  ; Round_ni(value)
  %2837 = fadd fast float %2836, %2835
  %2838 = call float @dx.op.binary.f32(i32 36, float %2837, float %2813)  ; FMin(a,b)
  %2839 = call float @dx.op.unary.f32(i32 27, float %2838)  ; Round_ni(value)
  %2840 = fsub fast float -0.000000e+00, %2839
  %2841 = call float @dx.op.unary.f32(i32 21, float %2840)  ; Exp(value)
  %2842 = fmul fast float %2841, %2815
  %2843 = fmul fast float %2842, %2788
  %2844 = fmul fast float %2842, %2792
  %2845 = fmul fast float %2843, 2.500000e-01
  %2846 = fmul fast float %2844, 2.500000e-01
  %2847 = fadd fast float %2845, 5.000000e-01
  %2848 = fadd fast float %2846, 5.000000e-01
  %2849 = fsub fast float %2813, %2811
  %2850 = fptoui float %2849 to i32
  %2851 = add i32 %2850, 320
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %2851)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 0
  %2854 = extractvalue %dx.types.CBufRet.f32 %2852, 1
  %2855 = fcmp fast une float %2838, %2813
  %2856 = fsub fast float %2788, %2853
  %2857 = fsub fast float %2792, %2854
  %2858 = call float @dx.op.unary.f32(i32 6, float %2856)  ; FAbs(value)
  %2859 = call float @dx.op.unary.f32(i32 6, float %2857)  ; FAbs(value)
  %2860 = fmul fast float %2858, %2842
  %2861 = fmul fast float %2859, %2842
  %2862 = fcmp fast olt float %2860, 1.000000e+00
  %2863 = fcmp fast olt float %2861, 1.000000e+00
  %2864 = and i1 %2862, %2863
  %2865 = or i1 %2855, %2864
  br i1 %2865, label %2866, label %3163, !dx.controlflow.hints !105

; <label>:2866                                    ; preds = %2804
  %2867 = fmul fast float %2844, 5.000000e-01
  %2868 = fmul fast float %2843, 5.000000e-01
  %2869 = fadd fast float %2867, 5.000000e-01
  %2870 = fadd fast float %2868, 5.000000e-01
  %2871 = sitofp i32 %2810 to float
  %2872 = fsub fast float %2838, %2871
  %2873 = call float @dx.op.unary.f32(i32 27, float %2872)  ; Round_ni(value)
  %2874 = call float @dx.op.unary.f32(i32 22, float %2838)  ; Frc(value)
  %2875 = call float @dx.op.unary.f32(i32 22, float %2870)  ; Frc(value)
  %2876 = call float @dx.op.unary.f32(i32 22, float %2869)  ; Frc(value)
  %2877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %2875, float %2876, float %2873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = extractvalue %dx.types.ResRet.f32 %2877, 1
  %2880 = extractvalue %dx.types.ResRet.f32 %2877, 2
  %2881 = extractvalue %dx.types.ResRet.f32 %2877, 3
  %2882 = fcmp fast ogt float %2874, 0.000000e+00
  br i1 %2882, label %2883, label %2904, !dx.controlflow.hints !106

; <label>:2883                                    ; preds = %2866
  %2884 = fadd fast float %2873, 1.000000e+00
  %2885 = call float @dx.op.unary.f32(i32 22, float %2847)  ; Frc(value)
  %2886 = call float @dx.op.unary.f32(i32 22, float %2848)  ; Frc(value)
  %2887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %2885, float %2886, float %2884, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2888 = extractvalue %dx.types.ResRet.f32 %2887, 0
  %2889 = extractvalue %dx.types.ResRet.f32 %2887, 1
  %2890 = extractvalue %dx.types.ResRet.f32 %2887, 2
  %2891 = extractvalue %dx.types.ResRet.f32 %2887, 3
  %2892 = fsub fast float %2888, %2878
  %2893 = fsub fast float %2889, %2879
  %2894 = fsub fast float %2890, %2880
  %2895 = fsub fast float %2891, %2881
  %2896 = fmul fast float %2892, %2874
  %2897 = fmul fast float %2893, %2874
  %2898 = fmul fast float %2894, %2874
  %2899 = fmul fast float %2895, %2874
  %2900 = fadd fast float %2896, %2878
  %2901 = fadd fast float %2897, %2879
  %2902 = fadd fast float %2898, %2880
  %2903 = fadd fast float %2899, %2881
  br label %2904

; <label>:2904                                    ; preds = %2883, %2866
  %2905 = phi float [ %2900, %2883 ], [ %2878, %2866 ]
  %2906 = phi float [ %2901, %2883 ], [ %2879, %2866 ]
  %2907 = phi float [ %2902, %2883 ], [ %2880, %2866 ]
  %2908 = phi float [ %2903, %2883 ], [ %2881, %2866 ]
  %2909 = fadd fast float %2905, -5.000000e-01
  %2910 = fadd fast float %2907, -5.000000e-01
  %2911 = fmul fast float %2909, 0xBFD5555560000000
  %2912 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %2910, float %2911)  ; FMad(a,b,c)
  %2913 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %2906, float 0.000000e+00)  ; FMad(a,b,c)
  %2914 = fadd fast float %2913, %2908
  %2915 = fmul fast float %2909, -7.500000e-01
  %2916 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %2910, float %2915)  ; FMad(a,b,c)
  %2917 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %2906, float 0.000000e+00)  ; FMad(a,b,c)
  %2918 = fadd fast float %2917, %2908
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 0
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.CBufRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.CBufRet.f32 %2921, 2
  %2925 = extractvalue %dx.types.CBufRet.f32 %2921, 3
  %2926 = fsub fast float %2922, %2912
  %2927 = fsub fast float %2923, %2914
  %2928 = fsub fast float %2924, %2916
  %2929 = fsub fast float %2925, %2918
  %2930 = fmul fast float %2926, %2920
  %2931 = fmul fast float %2927, %2920
  %2932 = fmul fast float %2928, %2920
  %2933 = fmul fast float %2929, %2920
  %2934 = fadd fast float %2930, %2912
  %2935 = fadd fast float %2931, %2914
  %2936 = fadd fast float %2932, %2916
  %2937 = fadd fast float %2933, %2918
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 536870911
  %2941 = uitofp i32 %2940 to float
  %2942 = fmul fast float %2941, %2788
  %2943 = fmul fast float %2941, %2792
  %2944 = fptoui float %2942 to i32
  %2945 = fptoui float %2943 to i32
  %2946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2947 = extractvalue %dx.types.ResRet.i32 %2946, 0
  %2948 = and i32 %2947, 31
  %2949 = lshr i32 %2944, %2948
  %2950 = lshr i32 %2945, %2948
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 31
  %2954 = shl i32 1, %2953
  %2955 = call i32 @dx.op.binary.i32(i32 40, i32 %2954, i32 4)  ; UMin(a,b)
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = extractvalue %dx.types.ResRet.i32 %2956, 1
  %2959 = icmp eq i32 %2955, 0
  br i1 %2959, label %3001, label %2960

; <label>:2960                                    ; preds = %2904
  br label %2961

; <label>:2961                                    ; preds = %2989, %2960
  %2962 = phi i32 [ %2992, %2989 ], [ 0, %2960 ]
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 16
  %2966 = and i32 %2965, 31
  %2967 = shl i32 %2950, %2966
  %2968 = add i32 %2967, %2949
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 31
  %2972 = shl i32 %2968, %2971
  %2973 = add i32 %2972, %2962
  %2974 = shl i32 %2973, 2
  %2975 = add i32 %2974, 32
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = icmp slt i32 %2977, 0
  %2979 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %2962
  %2980 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %2962
  %2981 = bitcast float* %2979 to i32*
  %2982 = bitcast float* %2980 to i32*
  br i1 %2978, label %2983, label %2989

; <label>:2983                                    ; preds = %2961
  %2984 = and i32 %2977, 1073741823
  %2985 = add nuw nsw i32 %2984, 20
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = extractvalue %dx.types.ResRet.i32 %2986, 1
  br label %2989

; <label>:2989                                    ; preds = %2983, %2961
  %2990 = phi i32 [ %2987, %2983 ], [ %2957, %2961 ]
  %2991 = phi i32 [ %2988, %2983 ], [ %2958, %2961 ]
  store i32 %2990, i32* %2981, align 4
  store i32 %2991, i32* %2982, align 4
  %2992 = add nuw i32 %2962, 1
  %2993 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.i32 %2993, 2
  %2995 = icmp eq i32 %2994, 0
  %2996 = icmp ugt i32 %2977, -1073741825
  %2997 = and i1 %2996, %2995
  %2998 = icmp ult i32 %2992, %2955
  %2999 = and i1 %2997, %2998
  br i1 %2999, label %2961, label %3000

; <label>:3000                                    ; preds = %2989
  br label %3001

; <label>:3001                                    ; preds = %3000, %2904
  %3002 = phi i32 [ 0, %2904 ], [ %2992, %3000 ]
  %3003 = extractvalue %dx.types.CBufRet.f32 %2766, 2
  %3004 = fptoui float %3003 to i32
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3057, label %3006

; <label>:3006                                    ; preds = %3001
  br label %3007

; <label>:3007                                    ; preds = %3052, %3006
  %3008 = phi i32 [ %3053, %3052 ], [ %3002, %3006 ]
  %3009 = phi i32 [ %3054, %3052 ], [ 0, %3006 ]
  %3010 = lshr i32 %3009, 2
  %3011 = and i32 %3009, 3
  %3012 = add nuw nsw i32 %3010, 83
  %3013 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 %3012)  ; CBufferLoadLegacy(handle,regIndex)
  %3014 = extractvalue %dx.types.CBufRet.i32 %3013, 0
  %3015 = extractvalue %dx.types.CBufRet.i32 %3013, 1
  %3016 = extractvalue %dx.types.CBufRet.i32 %3013, 2
  %3017 = extractvalue %dx.types.CBufRet.i32 %3013, 3
  %3018 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 0
  store i32 %3014, i32* %3018, align 4
  %3019 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 1
  store i32 %3015, i32* %3019, align 4
  %3020 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 2
  store i32 %3016, i32* %3020, align 4
  %3021 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 3
  store i32 %3017, i32* %3021, align 4
  %3022 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i32 0, i32 %3011
  %3023 = load i32, i32* %3022, align 4, !tbaa !107, !noalias !111
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = lshr i32 %3025, 16
  %3027 = and i32 %3026, 31
  %3028 = shl i32 %2950, %3027
  %3029 = add i32 %3028, %2949
  %3030 = shl i32 %3029, 2
  %3031 = add i32 %3030, %3023
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = icmp eq i32 %3033, 0
  br i1 %3034, label %3052, label %3035

; <label>:3035                                    ; preds = %3007
  %3036 = icmp slt i32 %3033, 0
  %3037 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3008
  %3038 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3008
  %3039 = bitcast float* %3037 to i32*
  %3040 = bitcast float* %3038 to i32*
  br i1 %3036, label %3041, label %3048

; <label>:3041                                    ; preds = %3035
  %3042 = and i32 %3033, 1073741823
  %3043 = add i32 %3023, 20
  %3044 = add i32 %3043, %3042
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = extractvalue %dx.types.ResRet.i32 %3045, 1
  br label %3048

; <label>:3048                                    ; preds = %3041, %3035
  %3049 = phi i32 [ %3046, %3041 ], [ %2957, %3035 ]
  %3050 = phi i32 [ %3047, %3041 ], [ %2958, %3035 ]
  store i32 %3049, i32* %3039, align 4
  store i32 %3050, i32* %3040, align 4
  %3051 = add i32 %3008, 1
  br label %3052

; <label>:3052                                    ; preds = %3048, %3007
  %3053 = phi i32 [ %3008, %3007 ], [ %3051, %3048 ]
  %3054 = add nuw i32 %3009, 1
  %3055 = icmp eq i32 %3054, %3004
  br i1 %3055, label %3056, label %3007

; <label>:3056                                    ; preds = %3052
  br label %3057

; <label>:3057                                    ; preds = %3056, %3001
  %3058 = phi i32 [ %3002, %3001 ], [ %3053, %3056 ]
  %3059 = icmp eq i32 %3058, 1
  %3060 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 0
  %3061 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 0
  br i1 %3059, label %3062, label %3065

; <label>:3062                                    ; preds = %3057
  %3063 = load float, float* %3060, align 4
  %3064 = load float, float* %3061, align 4
  br label %3092

; <label>:3065                                    ; preds = %3057
  %3066 = load float, float* %3060, align 4
  %3067 = load float, float* %3061, align 4
  %3068 = fdiv fast float 1.000000e+00, %3067
  %3069 = fsub fast float %3066, %3068
  %3070 = icmp ugt i32 %3058, 1
  br i1 %3070, label %3071, label %3087

; <label>:3071                                    ; preds = %3065
  br label %3072

; <label>:3072                                    ; preds = %3072, %3071
  %3073 = phi float [ %3082, %3072 ], [ %3069, %3071 ]
  %3074 = phi float [ %3083, %3072 ], [ %3066, %3071 ]
  %3075 = phi i32 [ %3084, %3072 ], [ 1, %3071 ]
  %3076 = getelementptr [12 x float], [12 x float]* %69, i32 0, i32 %3075
  %3077 = load float, float* %3076, align 4
  %3078 = getelementptr [12 x float], [12 x float]* %70, i32 0, i32 %3075
  %3079 = load float, float* %3078, align 4
  %3080 = fdiv fast float 1.000000e+00, %3079
  %3081 = fsub fast float %3077, %3080
  %3082 = call float @dx.op.binary.f32(i32 36, float %3073, float %3081)  ; FMin(a,b)
  %3083 = call float @dx.op.binary.f32(i32 35, float %3074, float %3077)  ; FMax(a,b)
  %3084 = add nuw i32 %3075, 1
  %3085 = icmp eq i32 %3084, %3058
  br i1 %3085, label %3086, label %3072

; <label>:3086                                    ; preds = %3072
  br label %3087

; <label>:3087                                    ; preds = %3086, %3065
  %3088 = phi float [ %3069, %3065 ], [ %3082, %3086 ]
  %3089 = phi float [ %3066, %3065 ], [ %3083, %3086 ]
  %3090 = fsub fast float %3089, %3088
  %3091 = fdiv fast float 1.000000e+00, %3090
  br label %3092

; <label>:3092                                    ; preds = %3087, %3062
  %3093 = phi float [ %3063, %3062 ], [ %3089, %3087 ]
  %3094 = phi float [ %3064, %3062 ], [ %3091, %3087 ]
  %3095 = fadd fast float %2796, %3093
  %3096 = fmul fast float %3095, %3094
  %3097 = call float @dx.op.unary.f32(i32 7, float %3096)  ; Saturate(value)
  %3098 = fmul fast float %3097, 2.000000e+00
  %3099 = fsub fast float 1.000000e+00, %3098
  %3100 = fmul fast float %2934, %2934
  %3101 = fsub fast float %2935, %3100
  %3102 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %3101)  ; FMax(a,b)
  %3103 = fdiv fast float 1.000000e+00, %3102
  %3104 = fmul fast float %2935, %2934
  %3105 = fsub fast float %2936, %3104
  %3106 = fsub fast float %3099, %2934
  %3107 = fmul fast float %3099, %3099
  %3108 = fsub fast float %3107, %2935
  %3109 = fmul fast float %3103, %3105
  %3110 = fmul fast float %3109, %3106
  %3111 = fsub fast float %3108, %3110
  %3112 = fmul fast float %2935, %2935
  %3113 = fsub fast float %2937, %3112
  %3114 = fmul fast float %3105, %3105
  %3115 = fmul fast float %3114, %3103
  %3116 = fsub fast float %3113, %3115
  %3117 = fdiv fast float %3111, %3116
  %3118 = fmul fast float %3117, %3105
  %3119 = fsub fast float %3106, %3118
  %3120 = fmul fast float %3119, %3103
  %3121 = fmul fast float %3120, %2934
  %3122 = fsub fast float 1.000000e+00, %3121
  %3123 = fmul fast float %3117, %2935
  %3124 = fsub fast float %3122, %3123
  %3125 = fmul fast float %3120, %3120
  %3126 = fmul fast float %3117, 4.000000e+00
  %3127 = fmul fast float %3126, %3124
  %3128 = fsub fast float %3125, %3127
  %3129 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3130 = fcmp fast oge float %3120, 0.000000e+00
  %3131 = fsub fast float -0.000000e+00, %3129
  %3132 = select i1 %3130, float %3131, float %3129
  %3133 = fsub fast float %3132, %3120
  %3134 = fdiv fast float %3133, %3117
  %3135 = fdiv fast float %3124, %3133
  %3136 = fmul fast float %3134, 5.000000e-01
  %3137 = fmul fast float %3135, 2.000000e+00
  %3138 = select i1 %3130, float %3136, float %3137
  %3139 = select i1 %3130, float %3137, float %3136
  %3140 = call float @dx.op.binary.f32(i32 35, float %3138, float %3139)  ; FMax(a,b)
  %3141 = call float @dx.op.binary.f32(i32 36, float %3138, float %3139)  ; FMin(a,b)
  %3142 = fcmp fast ogt float %3099, %3140
  %3143 = fsub fast float %3099, %3141
  %3144 = fsub fast float %3099, %3140
  %3145 = fsub fast float %3140, %3141
  %3146 = select i1 %3142, float %3144, float %3145
  %3147 = fmul float %3143, %3146
  %3148 = select i1 %3142, float %3141, float %3099
  %3149 = fcmp fast ogt float %3099, %3141
  %3150 = fmul fast float %3148, %3140
  %3151 = fadd fast float %3148, %3140
  %3152 = fmul fast float %3151, %2934
  %3153 = fadd fast float %3150, %2935
  %3154 = fsub fast float %3153, %3152
  %3155 = fdiv fast float %3154, %3147
  %3156 = select i1 %3149, float %3155, float 0.000000e+00
  %3157 = fsub fast float 1.000000e+00, %3156
  %3158 = select i1 %3142, float %3157, float %3156
  %3159 = call float @dx.op.unary.f32(i32 7, float %3158)  ; Saturate(value)
  %3160 = extractvalue %dx.types.CBufRet.f32 %2919, 3
  %3161 = fmul fast float %3160, %3159
  %3162 = fsub fast float 1.000000e+00, %3161
  br label %3163

; <label>:3163                                    ; preds = %3092, %2804, %2769, %2765, %2731
  %3164 = phi float [ 1.000000e+00, %2731 ], [ %3162, %3092 ], [ 1.000000e+00, %2769 ], [ 1.000000e+00, %2804 ], [ 1.000000e+00, %2765 ]
  %3165 = fcmp fast ogt float %2761, 0.000000e+00
  br i1 %3165, label %3166, label %3328, !dx.controlflow.hints !120

; <label>:3166                                    ; preds = %3163
  %3167 = fadd fast float %2674, %2648
  %3168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3169 = extractvalue %dx.types.CBufRet.f32 %3168, 2
  %3170 = extractvalue %dx.types.CBufRet.f32 %3168, 3
  %3171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3172 = extractvalue %dx.types.CBufRet.f32 %3171, 2
  %3173 = call float @dx.op.binary.f32(i32 35, float %3167, float 0.000000e+00)  ; FMax(a,b)
  %3174 = fadd fast float %3173, 0x3F10000000000000
  %3175 = fcmp fast oeq float %3172, 0.000000e+00
  br i1 %3175, label %3176, label %3243

; <label>:3176                                    ; preds = %3166
  %3177 = extractvalue %dx.types.CBufRet.f32 %3168, 1
  %3178 = extractvalue %dx.types.CBufRet.f32 %3168, 0
  %3179 = fmul fast float %3178, %2663
  %3180 = fmul fast float %3177, %2664
  %3181 = fadd fast float %3179, 5.000000e-01
  %3182 = call float @dx.op.unary.f32(i32 27, float %3181)  ; Round_ni(value)
  %3183 = fadd fast float %3180, 5.000000e-01
  %3184 = call float @dx.op.unary.f32(i32 27, float %3183)  ; Round_ni(value)
  %3185 = fsub fast float %3181, %3182
  %3186 = fsub fast float %3183, %3184
  %3187 = fadd fast float %3182, -5.000000e-01
  %3188 = fadd fast float %3184, -5.000000e-01
  %3189 = fmul fast float %3185, 2.000000e+00
  %3190 = fsub fast float 3.000000e+00, %3189
  %3191 = fadd fast float %3189, 1.000000e+00
  %3192 = fsub fast float 2.000000e+00, %3185
  %3193 = bitcast float %3190 to i32
  %3194 = sub nsw i32 2129859010, %3193
  %3195 = bitcast i32 %3194 to float
  %3196 = fmul fast float %3195, %3192
  %3197 = fadd fast float %3196, -1.000000e+00
  %3198 = bitcast float %3191 to i32
  %3199 = sub nsw i32 2129859010, %3198
  %3200 = bitcast i32 %3199 to float
  %3201 = fmul fast float %3200, %3185
  %3202 = fadd fast float %3201, 1.000000e+00
  %3203 = fmul fast float %3186, 2.000000e+00
  %3204 = fsub fast float 3.000000e+00, %3203
  %3205 = fadd fast float %3203, 1.000000e+00
  %3206 = fsub fast float 2.000000e+00, %3186
  %3207 = bitcast float %3204 to i32
  %3208 = sub nsw i32 2129859010, %3207
  %3209 = bitcast i32 %3208 to float
  %3210 = fmul fast float %3209, %3206
  %3211 = fadd fast float %3210, -1.000000e+00
  %3212 = bitcast float %3205 to i32
  %3213 = sub nsw i32 2129859010, %3212
  %3214 = bitcast i32 %3213 to float
  %3215 = fmul fast float %3214, %3186
  %3216 = fadd fast float %3215, 1.000000e+00
  %3217 = fadd fast float %3197, %3187
  %3218 = fmul fast float %3217, %3169
  %3219 = fadd fast float %3211, %3188
  %3220 = fmul fast float %3219, %3170
  %3221 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %43, float %3218, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float %3174)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3222 = extractvalue %dx.types.ResRet.f32 %3221, 0
  %3223 = fmul fast float %3222, %3190
  %3224 = fadd fast float %3202, %3187
  %3225 = fmul fast float %3224, %3169
  %3226 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %43, float %3225, float %3220, float undef, float undef, i32 0, i32 0, i32 undef, float %3174)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = fmul fast float %3227, %3191
  %3229 = fadd fast float %3216, %3188
  %3230 = fmul fast float %3229, %3170
  %3231 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %43, float %3218, float %3230, float undef, float undef, i32 0, i32 0, i32 undef, float %3174)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3232 = extractvalue %dx.types.ResRet.f32 %3231, 0
  %3233 = fmul fast float %3232, %3190
  %3234 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %9, %dx.types.Handle %43, float %3225, float %3230, float undef, float undef, i32 0, i32 0, i32 undef, float %3174)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3235 = extractvalue %dx.types.ResRet.f32 %3234, 0
  %3236 = fmul fast float %3235, %3191
  %3237 = fadd fast float %3236, %3233
  %3238 = fmul fast float %3237, %3205
  %3239 = fadd fast float %3228, %3223
  %3240 = fmul fast float %3239, %3204
  %3241 = fadd fast float %3240, %3238
  %3242 = fmul fast float %3241, 6.250000e-02
  br label %3328

; <label>:3243                                    ; preds = %3166
  %3244 = fmul fast float %146, 0x401921FB60000000
  %3245 = call float @dx.op.unary.f32(i32 13, float %3244)  ; Sin(value)
  %3246 = call float @dx.op.unary.f32(i32 12, float %3244)  ; Cos(value)
  %3247 = fsub fast float -0.000000e+00, %3245
  br label %3248

; <label>:3248                                    ; preds = %3297, %3243
  %3249 = phi float [ 0.000000e+00, %3243 ], [ %3292, %3297 ]
  %3250 = phi float [ 0.000000e+00, %3243 ], [ %3294, %3297 ]
  %3251 = phi i32 [ 0, %3243 ], [ %3298, %3297 ]
  %3252 = mul i32 %3251, 2
  %3253 = add i32 0, %3252
  %3254 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3253
  %3255 = load float, float* %3254, align 4
  %3256 = mul i32 %3251, 2
  %3257 = add i32 1, %3256
  %3258 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3257
  %3259 = load float, float* %3258, align 4
  %3260 = fmul fast float %3255, %3246
  %3261 = call float @dx.op.tertiary.f32(i32 46, float %3259, float %3247, float %3260)  ; FMad(a,b,c)
  %3262 = fmul fast float %3255, %3245
  %3263 = call float @dx.op.tertiary.f32(i32 46, float %3259, float %3246, float %3262)  ; FMad(a,b,c)
  %3264 = fmul fast float %3261, %3172
  %3265 = fmul fast float %3263, %3172
  %3266 = fadd fast float %3264, %2663
  %3267 = fadd fast float %3265, %2664
  %3268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %9, %dx.types.Handle %42, float %3266, float %3267, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = extractvalue %dx.types.ResRet.f32 %3268, 1
  %3271 = extractvalue %dx.types.ResRet.f32 %3268, 2
  %3272 = extractvalue %dx.types.ResRet.f32 %3268, 3
  %3273 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 0
  store float %3269, float* %3273, align 4
  %3274 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 1
  store float %3270, float* %3274, align 4
  %3275 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 2
  store float %3271, float* %3275, align 4
  %3276 = getelementptr inbounds [4 x float], [4 x float]* %73, i32 0, i32 3
  store float %3272, float* %3276, align 4
  %3277 = fsub fast float %3269, %3174
  %3278 = fcmp fast olt float %3277, 0.000000e+00
  %3279 = select i1 %3278, float 0.000000e+00, float 1.000000e+00
  %3280 = fadd fast float %3279, %3249
  %3281 = fmul fast float %3279, %3277
  %3282 = fadd fast float %3281, %3250
  br label %3283

; <label>:3283                                    ; preds = %3283, %3248
  %3284 = phi i32 [ 1, %3248 ], [ %3295, %3283 ]
  %3285 = phi float [ %3282, %3248 ], [ %3294, %3283 ]
  %3286 = phi float [ %3280, %3248 ], [ %3292, %3283 ]
  %3287 = getelementptr [4 x float], [4 x float]* %73, i32 0, i32 %3284
  %3288 = load float, float* %3287, align 4, !tbaa !121, !noalias !111
  %3289 = fsub fast float %3288, %3174
  %3290 = fcmp fast olt float %3289, 0.000000e+00
  %3291 = select i1 %3290, float 0.000000e+00, float 1.000000e+00
  %3292 = fadd fast float %3291, %3286
  %3293 = fmul fast float %3291, %3289
  %3294 = fadd fast float %3293, %3285
  %3295 = add nuw nsw i32 %3284, 1
  %3296 = icmp eq i32 %3295, 4
  br i1 %3296, label %3297, label %3283, !llvm.loop !123

; <label>:3297                                    ; preds = %3283
  %3298 = add nuw nsw i32 %3251, 1
  %3299 = icmp eq i32 %3298, 8
  br i1 %3299, label %3300, label %3248, !llvm.loop !124

; <label>:3300                                    ; preds = %3297
  %3301 = fdiv fast float 1.000000e+00, %3292
  %3302 = fmul fast float %3301, %3294
  %3303 = fdiv fast float 1.000000e+00, %3174
  %3304 = fmul fast float %3302, %3303
  %3305 = call float @dx.op.unary.f32(i32 7, float %3304)  ; Saturate(value)
  %3306 = call float @dx.op.binary.f32(i32 35, float %3305, float 0.000000e+00)  ; FMax(a,b)
  %3307 = fmul fast float %3292, 3.125000e-02
  %3308 = call float @dx.op.unary.f32(i32 7, float %3307)  ; Saturate(value)
  %3309 = fmul fast float %3308, 2.000000e+00
  %3310 = fadd fast float %3309, -1.000000e+00
  %3311 = fcmp fast ogt float %3310, 0.000000e+00
  %3312 = fcmp fast olt float %3310, 0.000000e+00
  %3313 = zext i1 %3311 to i32
  %3314 = zext i1 %3312 to i32
  %3315 = sub nsw i32 %3313, %3314
  %3316 = sitofp i32 %3315 to float
  %3317 = fmul fast float %3316, %3310
  %3318 = fsub fast float 1.000000e+00, %3317
  %3319 = fmul fast float %3318, %3318
  %3320 = fmul fast float %3319, %3318
  %3321 = fsub fast float %3318, %3320
  %3322 = fmul fast float %3321, %3306
  %3323 = fsub fast float 1.000000e+00, %3320
  %3324 = fsub fast float %3323, %3322
  %3325 = fmul fast float %3316, 5.000000e-01
  %3326 = fmul fast float %3325, %3324
  %3327 = fsub fast float 5.000000e-01, %3326
  br label %3328

; <label>:3328                                    ; preds = %3300, %3176, %3163
  %3329 = phi float [ 1.000000e+00, %3163 ], [ %3242, %3176 ], [ %3327, %3300 ]
  %3330 = fcmp fast ogt float %2759, 0.000000e+00
  br i1 %3330, label %3331, label %3495, !dx.controlflow.hints !125

; <label>:3331                                    ; preds = %3328
  %3332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3332, 1
  %3334 = fadd fast float %3333, %2648
  %3335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3336 = extractvalue %dx.types.CBufRet.f32 %3335, 2
  %3337 = extractvalue %dx.types.CBufRet.f32 %3335, 3
  %3338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3339 = extractvalue %dx.types.CBufRet.f32 %3338, 1
  %3340 = call float @dx.op.binary.f32(i32 35, float %3334, float 0.000000e+00)  ; FMax(a,b)
  %3341 = fadd fast float %3340, 0x3F10000000000000
  %3342 = fcmp fast oeq float %3339, 0.000000e+00
  br i1 %3342, label %3343, label %3410

; <label>:3343                                    ; preds = %3331
  %3344 = extractvalue %dx.types.CBufRet.f32 %3335, 1
  %3345 = extractvalue %dx.types.CBufRet.f32 %3335, 0
  %3346 = fmul fast float %3345, %2655
  %3347 = fmul fast float %3344, %2656
  %3348 = fadd fast float %3346, 5.000000e-01
  %3349 = call float @dx.op.unary.f32(i32 27, float %3348)  ; Round_ni(value)
  %3350 = fadd fast float %3347, 5.000000e-01
  %3351 = call float @dx.op.unary.f32(i32 27, float %3350)  ; Round_ni(value)
  %3352 = fsub fast float %3348, %3349
  %3353 = fsub fast float %3350, %3351
  %3354 = fadd fast float %3349, -5.000000e-01
  %3355 = fadd fast float %3351, -5.000000e-01
  %3356 = fmul fast float %3352, 2.000000e+00
  %3357 = fsub fast float 3.000000e+00, %3356
  %3358 = fadd fast float %3356, 1.000000e+00
  %3359 = fsub fast float 2.000000e+00, %3352
  %3360 = bitcast float %3357 to i32
  %3361 = sub nsw i32 2129859010, %3360
  %3362 = bitcast i32 %3361 to float
  %3363 = fmul fast float %3362, %3359
  %3364 = fadd fast float %3363, -1.000000e+00
  %3365 = bitcast float %3358 to i32
  %3366 = sub nsw i32 2129859010, %3365
  %3367 = bitcast i32 %3366 to float
  %3368 = fmul fast float %3367, %3352
  %3369 = fadd fast float %3368, 1.000000e+00
  %3370 = fmul fast float %3353, 2.000000e+00
  %3371 = fsub fast float 3.000000e+00, %3370
  %3372 = fadd fast float %3370, 1.000000e+00
  %3373 = fsub fast float 2.000000e+00, %3353
  %3374 = bitcast float %3371 to i32
  %3375 = sub nsw i32 2129859010, %3374
  %3376 = bitcast i32 %3375 to float
  %3377 = fmul fast float %3376, %3373
  %3378 = fadd fast float %3377, -1.000000e+00
  %3379 = bitcast float %3372 to i32
  %3380 = sub nsw i32 2129859010, %3379
  %3381 = bitcast i32 %3380 to float
  %3382 = fmul fast float %3381, %3353
  %3383 = fadd fast float %3382, 1.000000e+00
  %3384 = fadd fast float %3364, %3354
  %3385 = fmul fast float %3384, %3336
  %3386 = fadd fast float %3378, %3355
  %3387 = fmul fast float %3386, %3337
  %3388 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %43, float %3385, float %3387, float undef, float undef, i32 0, i32 0, i32 undef, float %3341)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = fmul fast float %3389, %3357
  %3391 = fadd fast float %3369, %3354
  %3392 = fmul fast float %3391, %3336
  %3393 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %43, float %3392, float %3387, float undef, float undef, i32 0, i32 0, i32 undef, float %3341)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = fmul fast float %3394, %3358
  %3396 = fadd fast float %3383, %3355
  %3397 = fmul fast float %3396, %3337
  %3398 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %43, float %3385, float %3397, float undef, float undef, i32 0, i32 0, i32 undef, float %3341)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3399 = extractvalue %dx.types.ResRet.f32 %3398, 0
  %3400 = fmul fast float %3399, %3357
  %3401 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %10, %dx.types.Handle %43, float %3392, float %3397, float undef, float undef, i32 0, i32 0, i32 undef, float %3341)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3402 = extractvalue %dx.types.ResRet.f32 %3401, 0
  %3403 = fmul fast float %3402, %3358
  %3404 = fadd fast float %3403, %3400
  %3405 = fmul fast float %3404, %3372
  %3406 = fadd fast float %3395, %3390
  %3407 = fmul fast float %3406, %3371
  %3408 = fadd fast float %3407, %3405
  %3409 = fmul fast float %3408, 6.250000e-02
  br label %3495

; <label>:3410                                    ; preds = %3331
  %3411 = fmul fast float %146, 0x401921FB60000000
  %3412 = call float @dx.op.unary.f32(i32 13, float %3411)  ; Sin(value)
  %3413 = call float @dx.op.unary.f32(i32 12, float %3411)  ; Cos(value)
  %3414 = fsub fast float -0.000000e+00, %3412
  br label %3415

; <label>:3415                                    ; preds = %3464, %3410
  %3416 = phi float [ 0.000000e+00, %3410 ], [ %3459, %3464 ]
  %3417 = phi float [ 0.000000e+00, %3410 ], [ %3461, %3464 ]
  %3418 = phi i32 [ 0, %3410 ], [ %3465, %3464 ]
  %3419 = mul i32 %3418, 2
  %3420 = add i32 0, %3419
  %3421 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3420
  %3422 = load float, float* %3421, align 4
  %3423 = mul i32 %3418, 2
  %3424 = add i32 1, %3423
  %3425 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3424
  %3426 = load float, float* %3425, align 4
  %3427 = fmul fast float %3422, %3413
  %3428 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3414, float %3427)  ; FMad(a,b,c)
  %3429 = fmul fast float %3422, %3412
  %3430 = call float @dx.op.tertiary.f32(i32 46, float %3426, float %3413, float %3429)  ; FMad(a,b,c)
  %3431 = fmul fast float %3428, %3339
  %3432 = fmul fast float %3430, %3339
  %3433 = fadd fast float %3431, %2655
  %3434 = fadd fast float %3432, %2656
  %3435 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %42, float %3433, float %3434, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3436 = extractvalue %dx.types.ResRet.f32 %3435, 0
  %3437 = extractvalue %dx.types.ResRet.f32 %3435, 1
  %3438 = extractvalue %dx.types.ResRet.f32 %3435, 2
  %3439 = extractvalue %dx.types.ResRet.f32 %3435, 3
  %3440 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 0
  store float %3436, float* %3440, align 4
  %3441 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 1
  store float %3437, float* %3441, align 4
  %3442 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 2
  store float %3438, float* %3442, align 4
  %3443 = getelementptr inbounds [4 x float], [4 x float]* %72, i32 0, i32 3
  store float %3439, float* %3443, align 4
  %3444 = fsub fast float %3436, %3341
  %3445 = fcmp fast olt float %3444, 0.000000e+00
  %3446 = select i1 %3445, float 0.000000e+00, float 1.000000e+00
  %3447 = fadd fast float %3446, %3416
  %3448 = fmul fast float %3446, %3444
  %3449 = fadd fast float %3448, %3417
  br label %3450

; <label>:3450                                    ; preds = %3450, %3415
  %3451 = phi i32 [ 1, %3415 ], [ %3462, %3450 ]
  %3452 = phi float [ %3449, %3415 ], [ %3461, %3450 ]
  %3453 = phi float [ %3447, %3415 ], [ %3459, %3450 ]
  %3454 = getelementptr [4 x float], [4 x float]* %72, i32 0, i32 %3451
  %3455 = load float, float* %3454, align 4, !tbaa !121, !noalias !111
  %3456 = fsub fast float %3455, %3341
  %3457 = fcmp fast olt float %3456, 0.000000e+00
  %3458 = select i1 %3457, float 0.000000e+00, float 1.000000e+00
  %3459 = fadd fast float %3458, %3453
  %3460 = fmul fast float %3458, %3456
  %3461 = fadd fast float %3460, %3452
  %3462 = add nuw nsw i32 %3451, 1
  %3463 = icmp eq i32 %3462, 4
  br i1 %3463, label %3464, label %3450, !llvm.loop !123

; <label>:3464                                    ; preds = %3450
  %3465 = add nuw nsw i32 %3418, 1
  %3466 = icmp eq i32 %3465, 8
  br i1 %3466, label %3467, label %3415, !llvm.loop !124

; <label>:3467                                    ; preds = %3464
  %3468 = fdiv fast float 1.000000e+00, %3459
  %3469 = fmul fast float %3468, %3461
  %3470 = fdiv fast float 1.000000e+00, %3341
  %3471 = fmul fast float %3469, %3470
  %3472 = call float @dx.op.unary.f32(i32 7, float %3471)  ; Saturate(value)
  %3473 = call float @dx.op.binary.f32(i32 35, float %3472, float 0.000000e+00)  ; FMax(a,b)
  %3474 = fmul fast float %3459, 3.125000e-02
  %3475 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3476 = fmul fast float %3475, 2.000000e+00
  %3477 = fadd fast float %3476, -1.000000e+00
  %3478 = fcmp fast ogt float %3477, 0.000000e+00
  %3479 = fcmp fast olt float %3477, 0.000000e+00
  %3480 = zext i1 %3478 to i32
  %3481 = zext i1 %3479 to i32
  %3482 = sub nsw i32 %3480, %3481
  %3483 = sitofp i32 %3482 to float
  %3484 = fmul fast float %3483, %3477
  %3485 = fsub fast float 1.000000e+00, %3484
  %3486 = fmul fast float %3485, %3485
  %3487 = fmul fast float %3486, %3485
  %3488 = fsub fast float %3485, %3487
  %3489 = fmul fast float %3488, %3473
  %3490 = fsub fast float 1.000000e+00, %3487
  %3491 = fsub fast float %3490, %3489
  %3492 = fmul fast float %3483, 5.000000e-01
  %3493 = fmul fast float %3492, %3491
  %3494 = fsub fast float 5.000000e-01, %3493
  br label %3495

; <label>:3495                                    ; preds = %3467, %3343, %3328
  %3496 = phi float [ 1.000000e+00, %3328 ], [ %3409, %3343 ], [ %3494, %3467 ]
  %3497 = fcmp fast ogt float %2758, 0.000000e+00
  br i1 %3497, label %3498, label %3662, !dx.controlflow.hints !126

; <label>:3498                                    ; preds = %3495
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 0
  %3501 = fadd fast float %3500, %2648
  %3502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %3503 = extractvalue %dx.types.CBufRet.f32 %3502, 2
  %3504 = extractvalue %dx.types.CBufRet.f32 %3502, 3
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3507 = call float @dx.op.binary.f32(i32 35, float %3501, float 0.000000e+00)  ; FMax(a,b)
  %3508 = fadd fast float %3507, 0x3F10000000000000
  %3509 = fcmp fast oeq float %3506, 0.000000e+00
  br i1 %3509, label %3510, label %3577

; <label>:3510                                    ; preds = %3498
  %3511 = extractvalue %dx.types.CBufRet.f32 %3502, 1
  %3512 = extractvalue %dx.types.CBufRet.f32 %3502, 0
  %3513 = fmul fast float %3512, %2640
  %3514 = fmul fast float %3511, %2644
  %3515 = fadd fast float %3513, 5.000000e-01
  %3516 = call float @dx.op.unary.f32(i32 27, float %3515)  ; Round_ni(value)
  %3517 = fadd fast float %3514, 5.000000e-01
  %3518 = call float @dx.op.unary.f32(i32 27, float %3517)  ; Round_ni(value)
  %3519 = fsub fast float %3515, %3516
  %3520 = fsub fast float %3517, %3518
  %3521 = fadd fast float %3516, -5.000000e-01
  %3522 = fadd fast float %3518, -5.000000e-01
  %3523 = fmul fast float %3519, 2.000000e+00
  %3524 = fsub fast float 3.000000e+00, %3523
  %3525 = fadd fast float %3523, 1.000000e+00
  %3526 = fsub fast float 2.000000e+00, %3519
  %3527 = bitcast float %3524 to i32
  %3528 = sub nsw i32 2129859010, %3527
  %3529 = bitcast i32 %3528 to float
  %3530 = fmul fast float %3529, %3526
  %3531 = fadd fast float %3530, -1.000000e+00
  %3532 = bitcast float %3525 to i32
  %3533 = sub nsw i32 2129859010, %3532
  %3534 = bitcast i32 %3533 to float
  %3535 = fmul fast float %3534, %3519
  %3536 = fadd fast float %3535, 1.000000e+00
  %3537 = fmul fast float %3520, 2.000000e+00
  %3538 = fsub fast float 3.000000e+00, %3537
  %3539 = fadd fast float %3537, 1.000000e+00
  %3540 = fsub fast float 2.000000e+00, %3520
  %3541 = bitcast float %3538 to i32
  %3542 = sub nsw i32 2129859010, %3541
  %3543 = bitcast i32 %3542 to float
  %3544 = fmul fast float %3543, %3540
  %3545 = fadd fast float %3544, -1.000000e+00
  %3546 = bitcast float %3539 to i32
  %3547 = sub nsw i32 2129859010, %3546
  %3548 = bitcast i32 %3547 to float
  %3549 = fmul fast float %3548, %3520
  %3550 = fadd fast float %3549, 1.000000e+00
  %3551 = fadd fast float %3531, %3521
  %3552 = fmul fast float %3551, %3503
  %3553 = fadd fast float %3545, %3522
  %3554 = fmul fast float %3553, %3504
  %3555 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %43, float %3552, float %3554, float undef, float undef, i32 0, i32 0, i32 undef, float %3508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3556 = extractvalue %dx.types.ResRet.f32 %3555, 0
  %3557 = fmul fast float %3556, %3524
  %3558 = fadd fast float %3536, %3521
  %3559 = fmul fast float %3558, %3503
  %3560 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %43, float %3559, float %3554, float undef, float undef, i32 0, i32 0, i32 undef, float %3508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3561 = extractvalue %dx.types.ResRet.f32 %3560, 0
  %3562 = fmul fast float %3561, %3525
  %3563 = fadd fast float %3550, %3522
  %3564 = fmul fast float %3563, %3504
  %3565 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %43, float %3552, float %3564, float undef, float undef, i32 0, i32 0, i32 undef, float %3508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3566 = extractvalue %dx.types.ResRet.f32 %3565, 0
  %3567 = fmul fast float %3566, %3524
  %3568 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %11, %dx.types.Handle %43, float %3559, float %3564, float undef, float undef, i32 0, i32 0, i32 undef, float %3508)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %3569 = extractvalue %dx.types.ResRet.f32 %3568, 0
  %3570 = fmul fast float %3569, %3525
  %3571 = fadd fast float %3570, %3567
  %3572 = fmul fast float %3571, %3539
  %3573 = fadd fast float %3562, %3557
  %3574 = fmul fast float %3573, %3538
  %3575 = fadd fast float %3574, %3572
  %3576 = fmul fast float %3575, 6.250000e-02
  br label %3662

; <label>:3577                                    ; preds = %3498
  %3578 = fmul fast float %146, 0x401921FB60000000
  %3579 = call float @dx.op.unary.f32(i32 13, float %3578)  ; Sin(value)
  %3580 = call float @dx.op.unary.f32(i32 12, float %3578)  ; Cos(value)
  %3581 = fsub fast float -0.000000e+00, %3579
  br label %3582

; <label>:3582                                    ; preds = %3631, %3577
  %3583 = phi float [ 0.000000e+00, %3577 ], [ %3626, %3631 ]
  %3584 = phi float [ 0.000000e+00, %3577 ], [ %3628, %3631 ]
  %3585 = phi i32 [ 0, %3577 ], [ %3632, %3631 ]
  %3586 = mul i32 %3585, 2
  %3587 = add i32 0, %3586
  %3588 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3587
  %3589 = load float, float* %3588, align 4
  %3590 = mul i32 %3585, 2
  %3591 = add i32 1, %3590
  %3592 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %3591
  %3593 = load float, float* %3592, align 4
  %3594 = fmul fast float %3589, %3580
  %3595 = call float @dx.op.tertiary.f32(i32 46, float %3593, float %3581, float %3594)  ; FMad(a,b,c)
  %3596 = fmul fast float %3589, %3579
  %3597 = call float @dx.op.tertiary.f32(i32 46, float %3593, float %3580, float %3596)  ; FMad(a,b,c)
  %3598 = fmul fast float %3595, %3506
  %3599 = fmul fast float %3597, %3506
  %3600 = fadd fast float %3598, %2640
  %3601 = fadd fast float %3599, %2644
  %3602 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %11, %dx.types.Handle %42, float %3600, float %3601, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3607 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 0
  store float %3603, float* %3607, align 4
  %3608 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 1
  store float %3604, float* %3608, align 4
  %3609 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 2
  store float %3605, float* %3609, align 4
  %3610 = getelementptr inbounds [4 x float], [4 x float]* %71, i32 0, i32 3
  store float %3606, float* %3610, align 4
  %3611 = fsub fast float %3603, %3508
  %3612 = fcmp fast olt float %3611, 0.000000e+00
  %3613 = select i1 %3612, float 0.000000e+00, float 1.000000e+00
  %3614 = fadd fast float %3613, %3583
  %3615 = fmul fast float %3613, %3611
  %3616 = fadd fast float %3615, %3584
  br label %3617

; <label>:3617                                    ; preds = %3617, %3582
  %3618 = phi i32 [ 1, %3582 ], [ %3629, %3617 ]
  %3619 = phi float [ %3616, %3582 ], [ %3628, %3617 ]
  %3620 = phi float [ %3614, %3582 ], [ %3626, %3617 ]
  %3621 = getelementptr [4 x float], [4 x float]* %71, i32 0, i32 %3618
  %3622 = load float, float* %3621, align 4, !tbaa !121, !noalias !111
  %3623 = fsub fast float %3622, %3508
  %3624 = fcmp fast olt float %3623, 0.000000e+00
  %3625 = select i1 %3624, float 0.000000e+00, float 1.000000e+00
  %3626 = fadd fast float %3625, %3620
  %3627 = fmul fast float %3625, %3623
  %3628 = fadd fast float %3627, %3619
  %3629 = add nuw nsw i32 %3618, 1
  %3630 = icmp eq i32 %3629, 4
  br i1 %3630, label %3631, label %3617, !llvm.loop !123

; <label>:3631                                    ; preds = %3617
  %3632 = add nuw nsw i32 %3585, 1
  %3633 = icmp eq i32 %3632, 8
  br i1 %3633, label %3634, label %3582, !llvm.loop !124

; <label>:3634                                    ; preds = %3631
  %3635 = fdiv fast float 1.000000e+00, %3626
  %3636 = fmul fast float %3635, %3628
  %3637 = fdiv fast float 1.000000e+00, %3508
  %3638 = fmul fast float %3636, %3637
  %3639 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3640 = call float @dx.op.binary.f32(i32 35, float %3639, float 0.000000e+00)  ; FMax(a,b)
  %3641 = fmul fast float %3626, 3.125000e-02
  %3642 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  %3643 = fmul fast float %3642, 2.000000e+00
  %3644 = fadd fast float %3643, -1.000000e+00
  %3645 = fcmp fast ogt float %3644, 0.000000e+00
  %3646 = fcmp fast olt float %3644, 0.000000e+00
  %3647 = zext i1 %3645 to i32
  %3648 = zext i1 %3646 to i32
  %3649 = sub nsw i32 %3647, %3648
  %3650 = sitofp i32 %3649 to float
  %3651 = fmul fast float %3650, %3644
  %3652 = fsub fast float 1.000000e+00, %3651
  %3653 = fmul fast float %3652, %3652
  %3654 = fmul fast float %3653, %3652
  %3655 = fsub fast float %3652, %3654
  %3656 = fmul fast float %3655, %3640
  %3657 = fsub fast float 1.000000e+00, %3654
  %3658 = fsub fast float %3657, %3656
  %3659 = fmul fast float %3650, 5.000000e-01
  %3660 = fmul fast float %3659, %3658
  %3661 = fsub fast float 5.000000e-01, %3660
  br label %3662

; <label>:3662                                    ; preds = %3634, %3510, %3495
  %3663 = phi float [ 1.000000e+00, %3495 ], [ %3576, %3510 ], [ %3661, %3634 ]
  %3664 = fsub fast float %3329, %3164
  %3665 = fmul fast float %3664, %2702
  %3666 = fadd fast float %3665, %3164
  %3667 = fsub fast float %3496, %3666
  %3668 = fmul fast float %3667, %2732
  %3669 = fadd fast float %3668, %3666
  %3670 = fsub fast float %3663, %3669
  %3671 = fmul fast float %3670, %2758
  %3672 = fadd fast float %3671, %3669
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 2
  %3675 = fcmp fast ogt float %3674, 0.000000e+00
  br i1 %3675, label %3676, label %3716, !dx.controlflow.hints !127

; <label>:3676                                    ; preds = %3662
  %3677 = fcmp fast ugt float %3674, 0.000000e+00
  br i1 %3677, label %3678, label %3713

; <label>:3678                                    ; preds = %3676
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.CBufRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.CBufRet.f32 %3679, 2
  %3683 = extractvalue %dx.types.CBufRet.f32 %3679, 3
  %3684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3684, 0
  %3686 = extractvalue %dx.types.CBufRet.f32 %3684, 1
  %3687 = extractvalue %dx.types.CBufRet.f32 %3684, 2
  %3688 = extractvalue %dx.types.CBufRet.f32 %3684, 3
  %3689 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3690 = extractvalue %dx.types.CBufRet.f32 %3673, 1
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 0
  %3693 = extractvalue %dx.types.CBufRet.f32 %3691, 1
  %3694 = extractvalue %dx.types.CBufRet.f32 %3691, 2
  %3695 = fadd fast float %3692, %2617
  %3696 = fadd fast float %3693, %2618
  %3697 = fadd fast float %3694, %2619
  %3698 = fmul fast float %3695, %3680
  %3699 = call float @dx.op.tertiary.f32(i32 46, float %3681, float %3696, float %3698)  ; FMad(a,b,c)
  %3700 = call float @dx.op.tertiary.f32(i32 46, float %3682, float %3697, float %3699)  ; FMad(a,b,c)
  %3701 = fadd fast float %3700, %3683
  %3702 = fmul fast float %3695, %3685
  %3703 = call float @dx.op.tertiary.f32(i32 46, float %3686, float %3696, float %3702)  ; FMad(a,b,c)
  %3704 = call float @dx.op.tertiary.f32(i32 46, float %3687, float %3697, float %3703)  ; FMad(a,b,c)
  %3705 = fadd fast float %3704, %3688
  %3706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %6, %dx.types.Handle %38, float %3701, float %3705, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = fmul fast float %3707, %3690
  %3709 = fadd fast float %3708, %3689
  %3710 = call float @dx.op.unary.f32(i32 7, float %3709)  ; Saturate(value)
  %3711 = fmul fast float %3710, %3674
  %3712 = fsub fast float 1.000000e+00, %3711
  br label %3713

; <label>:3713                                    ; preds = %3678, %3676
  %3714 = phi float [ %3712, %3678 ], [ 1.000000e+00, %3676 ]
  %3715 = fmul fast float %3714, %3672
  br label %3716

; <label>:3716                                    ; preds = %3713, %3662, %2597
  %3717 = phi float [ 1.000000e+00, %2597 ], [ %3715, %3713 ], [ %3672, %3662 ]
  %3718 = call float @dx.op.binary.f32(i32 36, float %3717, float %3717)  ; FMin(a,b)
  %3719 = call float @dx.op.binary.f32(i32 36, float %3717, float %3718)  ; FMin(a,b)
  %3720 = fcmp fast ogt float %3719, 0.000000e+00
  br i1 %3720, label %3721, label %3886, !dx.controlflow.hints !128

; <label>:3721                                    ; preds = %3716
  %3722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.CBufRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.CBufRet.f32 %3722, 2
  %3726 = extractvalue %dx.types.CBufRet.f32 %3722, 3
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3731 = extractvalue %dx.types.CBufRet.f32 %3727, 3
  %3732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3733 = extractvalue %dx.types.CBufRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.CBufRet.f32 %3732, 1
  %3735 = extractvalue %dx.types.CBufRet.f32 %3732, 2
  %3736 = extractvalue %dx.types.CBufRet.f32 %3732, 3
  %3737 = fmul fast float %3723, %2617
  %3738 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %3724, float %3737)  ; FMad(a,b,c)
  %3739 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %3725, float %3738)  ; FMad(a,b,c)
  %3740 = fadd fast float %3739, %3726
  %3741 = fmul fast float %3728, %2617
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %3729, float %3741)  ; FMad(a,b,c)
  %3743 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %3730, float %3742)  ; FMad(a,b,c)
  %3744 = fadd fast float %3743, %3731
  %3745 = fmul fast float %3733, %2617
  %3746 = call float @dx.op.tertiary.f32(i32 46, float %2618, float %3734, float %3745)  ; FMad(a,b,c)
  %3747 = call float @dx.op.tertiary.f32(i32 46, float %2619, float %3735, float %3746)  ; FMad(a,b,c)
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.CBufRet.f32 %3748, 3
  %3752 = fmul fast float %3751, %3740
  %3753 = fmul fast float %3751, %3744
  %3754 = fadd fast float %3752, %3749
  %3755 = fadd fast float %3753, %3750
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3759 = fsub fast float %3754, %3757
  %3760 = fsub fast float %3755, %3758
  %3761 = fcmp fast olt float %3759, 0.000000e+00
  %3762 = fcmp fast olt float %3760, 0.000000e+00
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3768 = select i1 %3761, float %3764, float %3766
  %3769 = select i1 %3762, float %3765, float %3767
  %3770 = fmul fast float %3768, %3759
  %3771 = fmul fast float %3769, %3760
  %3772 = call float @dx.op.unary.f32(i32 6, float %3770)  ; FAbs(value)
  %3773 = call float @dx.op.unary.f32(i32 6, float %3771)  ; FAbs(value)
  %3774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3774, 0
  %3776 = call float @dx.op.binary.f32(i32 35, float %3772, float %3773)  ; FMax(a,b)
  %3777 = fsub fast float %3775, %3776
  %3778 = call float @dx.op.unary.f32(i32 7, float %3777)  ; Saturate(value)
  %3779 = fcmp fast ogt float %3778, 0.000000e+00
  br i1 %3779, label %3780, label %3821, !dx.controlflow.hints !129

; <label>:3780                                    ; preds = %3721
  %3781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %3754, float %3755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3783 = fcmp fast ogt float %3782, 0.000000e+00
  br i1 %3783, label %3784, label %3817

; <label>:3784                                    ; preds = %3780
  %3785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %41, float %3754, float %3755, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.ResRet.f32 %3785, 2
  %3789 = extractvalue %dx.types.ResRet.f32 %3785, 3
  %3790 = fsub fast float 1.000000e+00, %3736
  %3791 = fsub fast float %3790, %3747
  %3792 = fmul fast float %3791, 0x400921FB60000000
  %3793 = fadd fast float %3792, 0x3FF921FB60000000
  %3794 = call float @dx.op.unary.f32(i32 13, float %3793)  ; Sin(value)
  %3795 = fadd fast float %3794, -1.000000e+00
  %3796 = fmul fast float %3795, 0x3FD45F3060000000
  %3797 = fmul fast float %3791, 0x401921FB60000000
  %3798 = fadd fast float %3797, 0x400921FB60000000
  %3799 = call float @dx.op.unary.f32(i32 13, float %3798)  ; Sin(value)
  %3800 = fadd fast float %3799, 0x3E7777A5C0000000
  %3801 = fmul fast float %3800, 0x3FC45F3060000000
  %3802 = fmul fast float %3791, 0x4022D97C80000000
  %3803 = fadd fast float %3802, 0x4012D97C80000000
  %3804 = call float @dx.op.unary.f32(i32 13, float %3803)  ; Sin(value)
  %3805 = fadd fast float %3804, 1.000000e+00
  %3806 = fmul fast float %3805, 0x3FBB2995E0000000
  %3807 = fmul fast float %3791, 0x402921FB60000000
  %3808 = fadd fast float %3807, 0x401921FB60000000
  %3809 = call float @dx.op.unary.f32(i32 13, float %3808)  ; Sin(value)
  %3810 = fadd fast float %3809, 0xBE8777A5C0000000
  %3811 = fmul fast float %3810, 0x3FB45F3060000000
  %3812 = call float @dx.op.dot4.f32(i32 56, float %3786, float %3787, float %3788, float %3789, float %3796, float %3801, float %3806, float %3811)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3813 = fmul fast float %3812, 0xBFF7154760000000
  %3814 = call float @dx.op.unary.f32(i32 21, float %3813)  ; Exp(value)
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = fadd float %3815, -1.000000e+00
  br label %3817

; <label>:3817                                    ; preds = %3784, %3780
  %3818 = phi float [ %3816, %3784 ], [ 0.000000e+00, %3780 ]
  %3819 = fmul fast float %3818, %3778
  %3820 = fadd fast float %3819, 1.000000e+00
  br label %3821

; <label>:3821                                    ; preds = %3817, %3721
  %3822 = phi float [ %3820, %3817 ], [ 1.000000e+00, %3721 ]
  %3823 = fmul fast float %3822, %3717
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.CBufRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.CBufRet.f32 %3824, 2
  %3828 = fadd fast float %3825, %343
  %3829 = fadd fast float %3826, %344
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 1
  %3832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3833 = extractvalue %dx.types.CBufRet.f32 %3832, 0
  %3834 = extractvalue %dx.types.CBufRet.f32 %3832, 1
  %3835 = extractvalue %dx.types.CBufRet.f32 %3832, 2
  %3836 = fsub fast float -0.000000e+00, %3828
  %3837 = fsub fast float -0.000000e+00, %3829
  %3838 = fsub fast float %475, %3827
  %3839 = fadd fast float %3838, %3831
  %3840 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3836, float %3837, float %3839)  ; Dot3(ax,ay,az,bx,by,bz)
  %3841 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3833, float %3834, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %3842 = fdiv fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3840
  %3844 = fmul fast float %3833, %3843
  %3845 = fmul fast float %3834, %3843
  %3846 = fadd fast float %3844, %3828
  %3847 = fadd fast float %3845, %3829
  %3848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %3849 = extractvalue %dx.types.CBufRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.CBufRet.f32 %3848, 1
  %3851 = fsub fast float %3846, %3849
  %3852 = fsub fast float %3847, %3850
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 2
  %3855 = extractvalue %dx.types.CBufRet.f32 %3853, 3
  %3856 = fmul fast float %3851, %3854
  %3857 = fmul fast float %3852, %3855
  %3858 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %3859 = extractvalue %dx.types.CBufRet.i32 %3858, 3
  %3860 = icmp eq i32 %3859, 0
  br i1 %3860, label %3866, label %3861

; <label>:3861                                    ; preds = %3821
  %3862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %3856, float %3857, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3865 = extractvalue %dx.types.ResRet.f32 %3862, 2
  br label %3871

; <label>:3866                                    ; preds = %3821
  %3867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %41, float %3856, float %3857, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = extractvalue %dx.types.ResRet.f32 %3867, 1
  %3870 = extractvalue %dx.types.ResRet.f32 %3867, 2
  br label %3871

; <label>:3871                                    ; preds = %3866, %3861
  %3872 = phi float [ %3863, %3861 ], [ %3868, %3866 ]
  %3873 = phi float [ %3864, %3861 ], [ %3869, %3866 ]
  %3874 = phi float [ %3865, %3861 ], [ %3870, %3866 ]
  %3875 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3876 = fmul fast float %3875, %3872
  %3877 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3878 = fsub fast float %3843, %3877
  %3879 = fsub fast float %3878, %3876
  %3880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3879)  ; FMax(a,b)
  %3881 = fmul fast float %3880, %3873
  %3882 = call float @dx.op.binary.f32(i32 36, float %3874, float %3881)  ; FMin(a,b)
  %3883 = fmul fast float %3882, 0xBFF7154760000000
  %3884 = call float @dx.op.unary.f32(i32 21, float %3883)  ; Exp(value)
  %3885 = fmul fast float %3823, %3884
  br label %3886

; <label>:3886                                    ; preds = %3871, %3716
  %3887 = phi float [ %3885, %3871 ], [ %3717, %3716 ]
  %3888 = call float @dx.op.binary.f32(i32 36, float %3887, float %3887)  ; FMin(a,b)
  %3889 = call float @dx.op.binary.f32(i32 36, float %3887, float %3888)  ; FMin(a,b)
  %3890 = fcmp fast ogt float %3889, 0.000000e+00
  br i1 %3890, label %3891, label %4014, !dx.controlflow.hints !130

; <label>:3891                                    ; preds = %3886
  %3892 = fmul fast float %3887, %2609
  %3893 = fmul fast float %3887, %2610
  %3894 = fmul fast float %3887, %2611
  %3895 = fsub fast float %2598, %478
  %3896 = fsub fast float %2599, %479
  %3897 = fsub fast float %2600, %480
  %3898 = call float @dx.op.dot3.f32(i32 55, float %3895, float %3896, float %3897, float %3895, float %3896, float %3897)  ; Dot3(ax,ay,az,bx,by,bz)
  %3899 = call float @dx.op.unary.f32(i32 25, float %3898)  ; Rsqrt(value)
  %3900 = fmul fast float %3899, %3895
  %3901 = fmul fast float %3899, %3896
  %3902 = fmul fast float %3899, %3897
  %3903 = call float @dx.op.dot3.f32(i32 55, float %2598, float %2599, float %2600, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %3904 = call float @dx.op.dot3.f32(i32 55, float %481, float %482, float %483, float %3900, float %3901, float %3902)  ; Dot3(ax,ay,az,bx,by,bz)
  %3905 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3906 = fmul fast float %3905, %3905
  %3907 = fmul fast float %3906, 0x47DE623840000000
  %3908 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3909 = fmul fast float %3908, %3905
  %3910 = call float @dx.op.dot3.f32(i32 55, float %266, float %267, float %268, float %3900, float %3901, float %3902)  ; Dot3(ax,ay,az,bx,by,bz)
  %3911 = fmul fast float %3910, %3910
  %3912 = call float @dx.op.unary.f32(i32 6, float %3903)  ; FAbs(value)
  %3913 = fsub fast float 1.000000e+00, %504
  %3914 = fmul fast float %486, %486
  %3915 = fmul fast float %3914, %3913
  %3916 = fadd fast float %3915, %504
  %3917 = bitcast float %3916 to i32
  %3918 = ashr i32 %3917, 1
  %3919 = add nsw i32 %3918, 532487669
  %3920 = bitcast i32 %3919 to float
  %3921 = fadd fast float %3920, %486
  %3922 = fmul fast float %504, %3911
  %3923 = fsub fast float 1.000000e+00, %3911
  %3924 = fadd fast float %3923, %3922
  %3925 = fmul fast float %3912, %3912
  %3926 = fmul fast float %3925, %3913
  %3927 = fadd fast float %3926, %504
  %3928 = bitcast float %3927 to i32
  %3929 = ashr i32 %3928, 1
  %3930 = add nsw i32 %3929, 532487669
  %3931 = bitcast i32 %3930 to float
  %3932 = fadd fast float %3931, %3912
  %3933 = fmul fast float %3924, %3924
  %3934 = fmul fast float %3933, %3921
  %3935 = fmul fast float %3934, %3932
  %3936 = fdiv fast float 0x3FF0A00000000000, %3935
  %3937 = fmul fast float %3936, %504
  %3938 = call float @dx.op.unary.f32(i32 6, float %3904)  ; FAbs(value)
  %3939 = fsub fast float 1.000000e+00, %3938
  %3940 = bitcast float %3939 to i32
  %3941 = sitofp i32 %3940 to float
  %3942 = fmul fast float %3941, 5.000000e+00
  %3943 = fadd fast float %3942, 0xC1EFBF8940000000
  %3944 = fptosi float %3943 to i32
  %3945 = bitcast i32 %3944 to float
  %3946 = fsub fast float 1.000000e+00, %466
  %3947 = fsub fast float 1.000000e+00, %467
  %3948 = fsub fast float 1.000000e+00, %484
  %3949 = fmul fast float %3945, %3946
  %3950 = fmul fast float %3945, %3947
  %3951 = fmul fast float %3945, %3948
  %3952 = fadd fast float %3949, %466
  %3953 = fadd fast float %3950, %467
  %3954 = fadd fast float %3951, %484
  %3955 = fmul fast float %3903, 9.843750e-01
  %3956 = fadd fast float %3955, 7.812500e-03
  %3957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %3956, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 2
  %3959 = extractvalue %dx.types.ResRet.f32 %3957, 3
  %3960 = fmul fast float %3958, %466
  %3961 = fmul fast float %3958, %467
  %3962 = fmul fast float %3958, %484
  %3963 = fadd fast float %3960, %3959
  %3964 = fadd fast float %3961, %3959
  %3965 = fadd fast float %3962, %3959
  %3966 = call float @dx.op.binary.f32(i32 35, float %3964, float %3965)  ; FMax(a,b)
  %3967 = call float @dx.op.binary.f32(i32 35, float %3963, float %3966)  ; FMax(a,b)
  %3968 = fsub fast float 1.000000e+00, %3967
  %3969 = fsub fast float -0.000000e+00, %266
  %3970 = fsub fast float -0.000000e+00, %267
  %3971 = fsub fast float -0.000000e+00, %268
  %3972 = call float @dx.op.dot3.f32(i32 55, float %2598, float %2599, float %2600, float %3969, float %3970, float %3971)  ; Dot3(ax,ay,az,bx,by,bz)
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fmul fast float %3973, 9.843750e-01
  %3975 = fadd fast float %3974, 7.812500e-03
  %3976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %3975, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 3
  %3979 = fmul fast float %3977, %466
  %3980 = fmul fast float %3977, %467
  %3981 = fmul fast float %3977, %484
  %3982 = fadd fast float %3979, %3978
  %3983 = fadd fast float %3980, %3978
  %3984 = fadd fast float %3981, %3978
  %3985 = call float @dx.op.binary.f32(i32 35, float %3983, float %3984)  ; FMax(a,b)
  %3986 = call float @dx.op.binary.f32(i32 35, float %3982, float %3985)  ; FMax(a,b)
  %3987 = fsub fast float 1.000000e+00, %3986
  %3988 = fmul fast float %3987, %3973
  %3989 = fmul fast float %3988, %285
  %3990 = fmul fast float %3988, %286
  %3991 = fmul fast float %3988, %287
  %3992 = fmul fast float %3968, %3909
  %3993 = fadd fast float %3989, %3992
  %3994 = fadd fast float %3990, %3992
  %3995 = fadd fast float %3991, %3992
  %3996 = fmul fast float %3993, %3892
  %3997 = fmul fast float %3994, %3893
  %3998 = fmul fast float %3995, %3894
  %3999 = fadd fast float %3996, %2589
  %4000 = fadd fast float %3997, %2591
  %4001 = fadd fast float %3998, %2593
  %4002 = fmul fast float %3909, %3892
  %4003 = fmul fast float %4002, %3937
  %4004 = fmul fast float %4003, %3952
  %4005 = fmul fast float %3909, %3893
  %4006 = fmul fast float %4005, %3937
  %4007 = fmul fast float %4006, %3953
  %4008 = fmul fast float %3909, %3894
  %4009 = fmul fast float %4008, %3937
  %4010 = fmul fast float %4009, %3954
  %4011 = fadd fast float %4004, %2582
  %4012 = fadd fast float %4007, %2583
  %4013 = fadd fast float %4010, %2584
  br label %4014

; <label>:4014                                    ; preds = %3891, %3886, %2578
  %4015 = phi float [ %2582, %2578 ], [ %2582, %3886 ], [ %4011, %3891 ]
  %4016 = phi float [ %2583, %2578 ], [ %2583, %3886 ], [ %4012, %3891 ]
  %4017 = phi float [ %2584, %2578 ], [ %2584, %3886 ], [ %4013, %3891 ]
  %4018 = phi float [ %2589, %2578 ], [ %2589, %3886 ], [ %3999, %3891 ]
  %4019 = phi float [ %2591, %2578 ], [ %2591, %3886 ], [ %4000, %3891 ]
  %4020 = phi float [ %2593, %2578 ], [ %2593, %3886 ], [ %4001, %3891 ]
  %4021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.i32 %4021, 0
  %4023 = icmp eq i32 %4022, 0
  br i1 %4023, label %4564, label %4024

; <label>:4024                                    ; preds = %4014
  %4025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4026 = extractvalue %dx.types.CBufRet.f32 %4025, 2
  %4027 = extractvalue %dx.types.CBufRet.f32 %4025, 3
  %4028 = fmul fast float %4026, %76
  %4029 = fmul fast float %4027, %77
  %4030 = fptoui float %4028 to i32
  %4031 = fptoui float %4029 to i32
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 0
  %4034 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4035 = extractvalue %dx.types.CBufRet.f32 %4032, 3
  %4036 = fadd fast float %309, -4.000000e+00
  %4037 = call float @dx.op.binary.f32(i32 35, float %4036, float 0.000000e+00)  ; FMax(a,b)
  %4038 = fadd fast float %4037, %4033
  %4039 = fmul fast float %4038, %4034
  %4040 = call float @dx.op.unary.f32(i32 23, float %4039)  ; Log(value)
  %4041 = fmul fast float %4040, %4035
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4044 = fmul fast float %4041, %4043
  %4045 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.i32 %4046, 1
  %4048 = add i32 %4047, -1
  %4049 = uitofp i32 %4047 to float
  %4050 = fmul fast float %4049, %4045
  %4051 = fptoui float %4050 to i32
  %4052 = call i32 @dx.op.binary.i32(i32 40, i32 %4051, i32 %4048)  ; UMin(a,b)
  %4053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.i32 %4053, 2
  %4055 = extractvalue %dx.types.CBufRet.i32 %4053, 3
  %4056 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4031, i32 %4054, i32 %4030)  ; UMad(a,b,c)
  %4057 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4052, i32 %4055, i32 %4056)  ; UMad(a,b,c)
  %4058 = add nsw i32 %4022, -1
  %4059 = call i32 @dx.op.binary.i32(i32 37, i32 %4058, i32 0)  ; IMax(a,b)
  %4060 = call float @dx.op.binary.f32(i32 35, float %309, float 0.000000e+00)  ; FMax(a,b)
  %4061 = fptoui float %4060 to i32
  %4062 = lshr i32 %4061, 5
  %4063 = call i32 @dx.op.binary.i32(i32 40, i32 %4062, i32 8191)  ; UMin(a,b)
  %4064 = shl i32 %4063, 2
  %4065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4064, i32 undef)  ; BufferLoad(srv,index,wot)
  %4066 = extractvalue %dx.types.ResRet.i32 %4065, 0
  %4067 = lshr i32 %4066, 16
  %4068 = and i32 %4066, 65535
  %4069 = lshr i32 %4066, 21
  %4070 = lshr i32 %4068, 5
  %4071 = call i32 @dx.op.binary.i32(i32 40, i32 %4070, i32 %4059)  ; UMin(a,b)
  %4072 = icmp ugt i32 %4069, %4071
  br i1 %4072, label %4564, label %4073

; <label>:4073                                    ; preds = %4024
  br label %4074

; <label>:4074                                    ; preds = %4554, %4073
  %4075 = phi i32 [ %4561, %4554 ], [ %4069, %4073 ]
  %4076 = phi float [ %4555, %4554 ], [ %4015, %4073 ]
  %4077 = phi float [ %4556, %4554 ], [ %4016, %4073 ]
  %4078 = phi float [ %4557, %4554 ], [ %4017, %4073 ]
  %4079 = phi float [ %4558, %4554 ], [ %4018, %4073 ]
  %4080 = phi float [ %4559, %4554 ], [ %4019, %4073 ]
  %4081 = phi float [ %4560, %4554 ], [ %4020, %4073 ]
  %4082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.i32 %4082, 0
  %4084 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4057, i32 %4083, i32 %4075)  ; UMad(a,b,c)
  %4085 = shl i32 %4084, 2
  %4086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4085, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.i32 %4086, 0
  %4088 = shl i32 %4075, 5
  %4089 = sub nsw i32 %4067, %4088
  %4090 = call i32 @dx.op.binary.i32(i32 37, i32 %4089, i32 0)  ; IMax(a,b)
  %4091 = call i32 @dx.op.binary.i32(i32 38, i32 %4090, i32 31)  ; IMin(a,b)
  %4092 = sub nsw i32 1, %4067
  %4093 = add nsw i32 %4092, %4068
  %4094 = call i32 @dx.op.binary.i32(i32 37, i32 %4093, i32 0)  ; IMax(a,b)
  %4095 = call i32 @dx.op.binary.i32(i32 38, i32 %4094, i32 32)  ; IMin(a,b)
  %4096 = and i32 %4095, 31
  %4097 = shl i32 -1, %4096
  %4098 = xor i32 %4097, -1
  %4099 = and i32 %4091, 31
  %4100 = shl i32 %4098, %4099
  %4101 = icmp eq i32 %4095, 32
  %4102 = select i1 %4101, i32 -1, i32 %4100
  %4103 = and i32 %4102, %4087
  %4104 = icmp eq i32 %4103, 0
  br i1 %4104, label %4554, label %4105

; <label>:4105                                    ; preds = %4074
  br label %4106

; <label>:4106                                    ; preds = %4240, %4105
  %4107 = phi i32 [ %4118, %4240 ], [ %4103, %4105 ]
  %4108 = phi float [ %4241, %4240 ], [ %4076, %4105 ]
  %4109 = phi float [ %4242, %4240 ], [ %4077, %4105 ]
  %4110 = phi float [ %4243, %4240 ], [ %4078, %4105 ]
  %4111 = phi float [ %4244, %4240 ], [ %4079, %4105 ]
  %4112 = phi float [ %4245, %4240 ], [ %4080, %4105 ]
  %4113 = phi float [ %4246, %4240 ], [ %4081, %4105 ]
  %4114 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4107)  ; FirstbitLo(value)
  %4115 = add i32 %4114, %4088
  %4116 = and i32 %4114, 31
  %4117 = shl i32 1, %4116
  %4118 = xor i32 %4117, %4107
  %4119 = mul i32 %4115, 112
  %4120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.ResRet.f32 %4120, 2
  %4124 = or i32 %4119, 12
  %4125 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4124, i32 undef)  ; BufferLoad(srv,index,wot)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = add i32 %4119, 16
  %4128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = add i32 %4119, 28
  %4133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %4132, i32 undef)  ; BufferLoad(srv,index,wot)
  %4134 = extractvalue %dx.types.ResRet.i32 %4133, 0
  %4135 = add i32 %4119, 44
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = add i32 %4119, 48
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4144 = add i32 %4119, 64
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = extractvalue %dx.types.ResRet.f32 %4145, 3
  %4150 = add i32 %4119, 80
  %4151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4154 = add i32 %4119, 92
  %4155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.i32 %4155, 0
  %4157 = call float @dx.op.dot3.f32(i32 55, float %4121, float %4122, float %4123, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = select i1 %135, float %4152, float %4121
  %4159 = select i1 %135, float %4157, float %4122
  %4160 = select i1 %135, float %4153, float %4123
  %4161 = and i32 %4156, 65535
  %4162 = uitofp i32 %4161 to float
  %4163 = lshr i32 %4156, 16
  %4164 = uitofp i32 %4163 to float
  %4165 = and i32 %4134, 65535
  %4166 = and i32 %4134, 50331648
  %4167 = icmp eq i32 %4166, 33554432
  %4168 = fsub fast float %4140, %343
  %4169 = fsub fast float %4141, %344
  %4170 = fsub fast float %4142, %345
  %4171 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %4168, float %4169, float %4170)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call float @dx.op.unary.f32(i32 24, float %4171)  ; Sqrt(value)
  %4173 = fdiv fast float 1.000000e+00, %4172
  %4174 = fmul fast float %4173, %4168
  %4175 = fmul fast float %4173, %4169
  %4176 = fmul fast float %4173, %4170
  %4177 = fadd fast float %4172, %4126
  %4178 = fdiv fast float 1.000000e+00, %4177
  %4179 = fmul float %4137, %4178
  %4180 = fmul float %4179, %4179
  %4181 = call float @dx.op.unary.f32(i32 7, float %4180)  ; Saturate(value)
  br i1 %4167, label %4182, label %4203

; <label>:4182                                    ; preds = %4106
  %4183 = fmul fast float %4148, %4129
  %4184 = fmul fast float %4148, %4130
  %4185 = fmul fast float %4148, %4131
  %4186 = fadd fast float %4168, %4183
  %4187 = fadd fast float %4169, %4184
  %4188 = fadd fast float %4170, %4185
  %4189 = call float @dx.op.dot3.f32(i32 55, float %4186, float %4187, float %4188, float %4186, float %4187, float %4188)  ; Dot3(ax,ay,az,bx,by,bz)
  %4190 = call float @dx.op.unary.f32(i32 25, float %4189)  ; Rsqrt(value)
  %4191 = fmul fast float %4190, %4186
  %4192 = fmul fast float %4190, %4187
  %4193 = fmul fast float %4190, %4188
  %4194 = fsub fast float %343, %4140
  %4195 = fsub fast float %344, %4141
  %4196 = fsub fast float %345, %4142
  %4197 = fsub fast float -0.000000e+00, %4194
  %4198 = fsub fast float -0.000000e+00, %4195
  %4199 = fsub fast float -0.000000e+00, %4196
  %4200 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %4129, float %4130, float %4131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4201 = fcmp fast ogt float %4200, 0.000000e+00
  %4202 = uitofp i1 %4201 to float
  br label %4203

; <label>:4203                                    ; preds = %4182, %4106
  %4204 = phi float [ %4202, %4182 ], [ 1.000000e+00, %4106 ]
  %4205 = phi float [ %4191, %4182 ], [ %4174, %4106 ]
  %4206 = phi float [ %4192, %4182 ], [ %4175, %4106 ]
  %4207 = phi float [ %4193, %4182 ], [ %4176, %4106 ]
  %4208 = call float @dx.op.dot3.f32(i32 55, float %4129, float %4130, float %4131, float %4205, float %4206, float %4207)  ; Dot3(ax,ay,az,bx,by,bz)
  %4209 = fmul fast float %4208, %4208
  %4210 = call float @dx.op.unary.f32(i32 7, float %4209)  ; Saturate(value)
  %4211 = fsub fast float 1.000000e+00, %4210
  %4212 = fmul fast float %4211, 5.000000e-01
  %4213 = fcmp fast ogt float %4208, 0.000000e+00
  %4214 = fsub fast float 1.000000e+00, %4212
  %4215 = select i1 %4213, float %4212, float %4214
  %4216 = fmul fast float %4215, %4164
  %4217 = fadd fast float %4216, %4162
  %4218 = fmul fast float %4217, 0x3EF0001000000000
  %4219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %4218, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = fmul fast float %4208, %4146
  %4222 = fadd fast float %4221, %4147
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = select i1 %4167, float 1.000000e+00, float %4223
  %4225 = select i1 %4167, float %4223, float 1.000000e+00
  %4226 = fmul fast float %4172, %4143
  %4227 = fsub fast float 1.000000e+00, %4226
  %4228 = fmul fast float %4227, %4149
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = fmul fast float %4229, %4225
  %4231 = fmul fast float %4230, 2.000000e+00
  %4232 = fsub fast float 3.000000e+00, %4231
  %4233 = fmul fast float %4220, %4204
  %4234 = fmul fast float %4230, %4230
  %4235 = fmul fast float %4234, %4233
  %4236 = fmul fast float %4235, %4232
  %4237 = call float @dx.op.binary.f32(i32 36, float %4236, float %4236)  ; FMin(a,b)
  %4238 = call float @dx.op.binary.f32(i32 36, float %4236, float %4237)  ; FMin(a,b)
  %4239 = fcmp fast ogt float %4238, 0.000000e+00
  br i1 %4239, label %4248, label %4240, !dx.controlflow.hints !131

; <label>:4240                                    ; preds = %4399, %4394, %4203
  %4241 = phi float [ %4108, %4394 ], [ %4108, %4203 ], [ %4550, %4399 ]
  %4242 = phi float [ %4109, %4394 ], [ %4109, %4203 ], [ %4551, %4399 ]
  %4243 = phi float [ %4110, %4394 ], [ %4110, %4203 ], [ %4552, %4399 ]
  %4244 = phi float [ %4111, %4394 ], [ %4111, %4203 ], [ %4538, %4399 ]
  %4245 = phi float [ %4112, %4394 ], [ %4112, %4203 ], [ %4539, %4399 ]
  %4246 = phi float [ %4113, %4394 ], [ %4113, %4203 ], [ %4540, %4399 ]
  %4247 = icmp eq i32 %4107, %4117
  br i1 %4247, label %4553, label %4106

; <label>:4248                                    ; preds = %4203
  %4249 = icmp eq i32 %4165, 255
  br i1 %4249, label %4394, label %4250, !dx.controlflow.hints !132

; <label>:4250                                    ; preds = %4248
  %4251 = mul nuw nsw i32 %4165, 176
  %4252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4251, i32 undef)  ; BufferLoad(srv,index,wot)
  %4253 = extractvalue %dx.types.ResRet.f32 %4252, 0
  %4254 = extractvalue %dx.types.ResRet.f32 %4252, 1
  %4255 = extractvalue %dx.types.ResRet.f32 %4252, 2
  %4256 = extractvalue %dx.types.ResRet.f32 %4252, 3
  %4257 = add nuw nsw i32 %4251, 16
  %4258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4257, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = add nuw nsw i32 %4251, 32
  %4262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4261, i32 undef)  ; BufferLoad(srv,index,wot)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  %4266 = add nuw nsw i32 %4251, 48
  %4267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4266, i32 undef)  ; BufferLoad(srv,index,wot)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.ResRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.ResRet.f32 %4267, 2
  %4271 = extractvalue %dx.types.ResRet.f32 %4267, 3
  %4272 = add nuw nsw i32 %4251, 64
  %4273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4272, i32 undef)  ; BufferLoad(srv,index,wot)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.ResRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.ResRet.f32 %4273, 2
  %4277 = extractvalue %dx.types.ResRet.f32 %4273, 3
  %4278 = add nuw nsw i32 %4251, 80
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = extractvalue %dx.types.ResRet.f32 %4279, 1
  %4282 = extractvalue %dx.types.ResRet.f32 %4279, 2
  %4283 = extractvalue %dx.types.ResRet.f32 %4279, 3
  %4284 = add nuw nsw i32 %4251, 96
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = extractvalue %dx.types.ResRet.f32 %4285, 1
  %4288 = extractvalue %dx.types.ResRet.f32 %4285, 2
  %4289 = extractvalue %dx.types.ResRet.f32 %4285, 3
  %4290 = bitcast float %4260 to i32
  %4291 = fmul fast float %4265, %266
  %4292 = fmul fast float %4265, %267
  %4293 = fmul fast float %4265, %268
  %4294 = fadd fast float %4291, %343
  %4295 = fadd fast float %4292, %344
  %4296 = fadd fast float %4293, %345
  %4297 = fmul fast float %4294, %4268
  %4298 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4274, float %4297)  ; FMad(a,b,c)
  %4299 = call float @dx.op.tertiary.f32(i32 46, float %4296, float %4280, float %4298)  ; FMad(a,b,c)
  %4300 = fadd fast float %4299, %4286
  %4301 = fmul fast float %4294, %4269
  %4302 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4275, float %4301)  ; FMad(a,b,c)
  %4303 = call float @dx.op.tertiary.f32(i32 46, float %4296, float %4281, float %4302)  ; FMad(a,b,c)
  %4304 = fadd fast float %4303, %4287
  %4305 = fmul fast float %4294, %4270
  %4306 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4276, float %4305)  ; FMad(a,b,c)
  %4307 = call float @dx.op.tertiary.f32(i32 46, float %4296, float %4282, float %4306)  ; FMad(a,b,c)
  %4308 = fadd fast float %4307, %4288
  %4309 = fmul fast float %4294, %4271
  %4310 = call float @dx.op.tertiary.f32(i32 46, float %4295, float %4277, float %4309)  ; FMad(a,b,c)
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4296, float %4283, float %4310)  ; FMad(a,b,c)
  %4312 = fadd fast float %4311, %4289
  %4313 = fdiv fast float %4300, %4312
  %4314 = fdiv fast float %4304, %4312
  %4315 = fdiv fast float %4308, %4312
  %4316 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4315)  ; FMax(a,b)
  %4317 = fmul fast float %146, 0x401921FB60000000
  %4318 = call float @dx.op.unary.f32(i32 13, float %4317)  ; Sin(value)
  %4319 = call float @dx.op.unary.f32(i32 12, float %4317)  ; Cos(value)
  %4320 = fmul fast float %4319, %4264
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4318, float %4264, float 0.000000e+00)  ; FMad(a,b,c)
  %4322 = fmul fast float %4264, %4318
  %4323 = fsub fast float -0.000000e+00, %4322
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4264, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4325

; <label>:4325                                    ; preds = %4325, %4250
  %4326 = phi float [ 0.000000e+00, %4250 ], [ %4358, %4325 ]
  %4327 = phi float [ 0.000000e+00, %4250 ], [ %4360, %4325 ]
  %4328 = phi i32 [ 0, %4250 ], [ %4361, %4325 ]
  %4329 = mul i32 %4328, 2
  %4330 = add i32 0, %4329
  %4331 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4330
  %4332 = load float, float* %4331, align 4
  %4333 = mul i32 %4328, 2
  %4334 = add i32 1, %4333
  %4335 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4334
  %4336 = load float, float* %4335, align 4
  %4337 = fmul fast float %4320, %4332
  %4338 = call float @dx.op.tertiary.f32(i32 46, float %4336, float %4323, float %4337)  ; FMad(a,b,c)
  %4339 = fmul fast float %4332, %4321
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %4336, float %4324, float %4339)  ; FMad(a,b,c)
  %4341 = fadd fast float %4338, %4313
  %4342 = fadd fast float %4340, %4314
  %4343 = fmul fast float %4341, %4259
  %4344 = fmul fast float %4342, %4259
  %4345 = call float @dx.op.binary.f32(i32 35, float %4343, float %4255)  ; FMax(a,b)
  %4346 = call float @dx.op.binary.f32(i32 35, float %4344, float %4255)  ; FMax(a,b)
  %4347 = call float @dx.op.binary.f32(i32 36, float %4345, float %4256)  ; FMin(a,b)
  %4348 = call float @dx.op.binary.f32(i32 36, float %4346, float %4256)  ; FMin(a,b)
  %4349 = fadd fast float %4347, %4253
  %4350 = fadd fast float %4348, %4254
  %4351 = uitofp i32 %4290 to float
  %4352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %42, float %4349, float %4350, float %4351, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4353 = extractvalue %dx.types.ResRet.f32 %4352, 0
  %4354 = fsub fast float %4353, %4316
  %4355 = fsub fast float %4354, %4263
  %4356 = fcmp fast ogt float %4355, 0.000000e+00
  %4357 = select i1 %4356, float 1.000000e+00, float 0.000000e+00
  %4358 = fadd fast float %4357, %4326
  %4359 = select i1 %4356, float %4355, float 0.000000e+00
  %4360 = fadd fast float %4359, %4327
  %4361 = add nuw nsw i32 %4328, 1
  %4362 = icmp eq i32 %4361, 8
  br i1 %4362, label %4363, label %4325

; <label>:4363                                    ; preds = %4325
  %4364 = fdiv fast float 1.000000e+00, %4358
  %4365 = fmul fast float %4364, %4360
  %4366 = fdiv fast float 1.000000e+00, %4316
  %4367 = fmul fast float %4365, %4366
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = call float @dx.op.binary.f32(i32 35, float %4368, float 0.000000e+00)  ; FMax(a,b)
  %4370 = fmul fast float %4358, 1.250000e-01
  %4371 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4372 = fmul fast float %4371, 2.000000e+00
  %4373 = fadd fast float %4372, -1.000000e+00
  %4374 = fcmp fast ogt float %4373, 0.000000e+00
  %4375 = fcmp fast olt float %4373, 0.000000e+00
  %4376 = zext i1 %4374 to i32
  %4377 = zext i1 %4375 to i32
  %4378 = sub nsw i32 %4376, %4377
  %4379 = sitofp i32 %4378 to float
  %4380 = fmul fast float %4379, %4373
  %4381 = fsub fast float 1.000000e+00, %4380
  %4382 = fmul fast float %4381, %4381
  %4383 = fmul fast float %4382, %4381
  %4384 = fsub fast float %4381, %4383
  %4385 = fmul fast float %4384, %4369
  %4386 = fsub fast float 1.000000e+00, %4383
  %4387 = fsub fast float %4386, %4385
  %4388 = fmul fast float %4379, 5.000000e-01
  %4389 = fmul fast float %4388, %4387
  %4390 = fsub fast float -5.000000e-01, %4389
  %4391 = fmul fast float %4390, %4224
  %4392 = fadd fast float %4391, 1.000000e+00
  %4393 = fmul fast float %4392, %4236
  br label %4394

; <label>:4394                                    ; preds = %4363, %4248
  %4395 = phi float [ %4393, %4363 ], [ %4236, %4248 ]
  %4396 = call float @dx.op.binary.f32(i32 36, float %4395, float %4395)  ; FMin(a,b)
  %4397 = call float @dx.op.binary.f32(i32 36, float %4395, float %4396)  ; FMin(a,b)
  %4398 = fcmp fast ogt float %4397, 0.000000e+00
  br i1 %4398, label %4399, label %4240, !dx.controlflow.hints !133

; <label>:4399                                    ; preds = %4394
  %4400 = fmul fast float %4395, %4158
  %4401 = fmul fast float %4395, %4159
  %4402 = fmul fast float %4395, %4160
  %4403 = fsub fast float %4174, %478
  %4404 = fsub fast float %4175, %479
  %4405 = fsub fast float %4176, %480
  %4406 = call float @dx.op.dot3.f32(i32 55, float %4403, float %4404, float %4405, float %4403, float %4404, float %4405)  ; Dot3(ax,ay,az,bx,by,bz)
  %4407 = call float @dx.op.unary.f32(i32 25, float %4406)  ; Rsqrt(value)
  %4408 = fmul fast float %4407, %4403
  %4409 = fmul fast float %4407, %4404
  %4410 = fmul fast float %4407, %4405
  %4411 = call float @dx.op.dot3.f32(i32 55, float %4174, float %4175, float %4176, float %266, float %267, float %268)  ; Dot3(ax,ay,az,bx,by,bz)
  %4412 = call float @dx.op.dot3.f32(i32 55, float %481, float %482, float %483, float %4408, float %4409, float %4410)  ; Dot3(ax,ay,az,bx,by,bz)
  %4413 = call float @dx.op.unary.f32(i32 7, float %4411)  ; Saturate(value)
  %4414 = fmul fast float %4413, %4181
  %4415 = fmul fast float %4413, %4413
  %4416 = fmul fast float %4415, 0x47DE623840000000
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  %4418 = fmul fast float %4414, %4417
  %4419 = bitcast float %4171 to i32
  %4420 = ashr i32 %4419, 1
  %4421 = sub nsw i32 1597463007, %4420
  %4422 = bitcast i32 %4421 to float
  %4423 = fmul fast float %4422, %4168
  %4424 = fmul fast float %4422, %4169
  %4425 = fmul fast float %4422, %4170
  %4426 = fsub fast float %4423, %478
  %4427 = fsub fast float %4424, %479
  %4428 = fsub fast float %4425, %480
  %4429 = call float @dx.op.dot3.f32(i32 55, float %4426, float %4427, float %4428, float %4426, float %4427, float %4428)  ; Dot3(ax,ay,az,bx,by,bz)
  %4430 = call float @dx.op.unary.f32(i32 25, float %4429)  ; Rsqrt(value)
  %4431 = fmul fast float %4426, %4430
  %4432 = fmul fast float %4427, %4430
  %4433 = fmul fast float %4428, %4430
  %4434 = call float @dx.op.dot3.f32(i32 55, float %266, float %267, float %268, float %4431, float %4432, float %4433)  ; Dot3(ax,ay,az,bx,by,bz)
  %4435 = fmul fast float %4434, %4434
  %4436 = call float @dx.op.unary.f32(i32 6, float %4411)  ; FAbs(value)
  %4437 = fsub fast float 1.000000e+00, %504
  %4438 = fmul fast float %486, %486
  %4439 = fmul fast float %4438, %4437
  %4440 = fadd fast float %4439, %504
  %4441 = bitcast float %4440 to i32
  %4442 = ashr i32 %4441, 1
  %4443 = add nsw i32 %4442, 532487669
  %4444 = bitcast i32 %4443 to float
  %4445 = fadd fast float %4444, %486
  %4446 = fmul fast float %504, %4435
  %4447 = fsub fast float 1.000000e+00, %4435
  %4448 = fadd fast float %4447, %4446
  %4449 = fmul fast float %4436, %4436
  %4450 = fmul fast float %4449, %4437
  %4451 = fadd fast float %4450, %504
  %4452 = bitcast float %4451 to i32
  %4453 = ashr i32 %4452, 1
  %4454 = add nsw i32 %4453, 532487669
  %4455 = bitcast i32 %4454 to float
  %4456 = fadd fast float %4455, %4436
  %4457 = fmul fast float %4448, %4448
  %4458 = fmul fast float %4457, %4445
  %4459 = fmul fast float %4458, %4456
  %4460 = fdiv fast float 1.000000e+00, %4459
  %4461 = bitcast float %504 to i32
  %4462 = sitofp i32 %4461 to float
  %4463 = fmul fast float %4462, 0x3FE7F73180000000
  %4464 = fadd fast float %4463, 0x41AFE27C40000000
  %4465 = fptosi float %4464 to i32
  %4466 = bitcast i32 %4465 to float
  %4467 = fmul fast float %4137, 0x3FD80E9D60000000
  %4468 = fmul fast float %4467, %4422
  %4469 = fadd fast float %4466, %4468
  %4470 = bitcast float %4469 to i32
  %4471 = sub nsw i32 2129859010, %4470
  %4472 = bitcast i32 %4471 to float
  %4473 = fmul fast float %504, %4460
  %4474 = fmul fast float %4473, %4466
  %4475 = fmul fast float %4474, %4472
  %4476 = call float @dx.op.unary.f32(i32 6, float %4412)  ; FAbs(value)
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = bitcast float %4477 to i32
  %4479 = sitofp i32 %4478 to float
  %4480 = fmul fast float %4479, 5.000000e+00
  %4481 = fadd fast float %4480, 0xC1EFBF8940000000
  %4482 = fptosi float %4481 to i32
  %4483 = bitcast i32 %4482 to float
  %4484 = fsub fast float 1.000000e+00, %466
  %4485 = fsub fast float 1.000000e+00, %467
  %4486 = fsub fast float 1.000000e+00, %484
  %4487 = fmul fast float %4483, %4484
  %4488 = fmul fast float %4483, %4485
  %4489 = fmul fast float %4483, %4486
  %4490 = fadd fast float %4487, %466
  %4491 = fadd fast float %4488, %467
  %4492 = fadd fast float %4489, %484
  %4493 = fmul fast float %4411, 9.843750e-01
  %4494 = fadd fast float %4493, 7.812500e-03
  %4495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %4494, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 2
  %4497 = extractvalue %dx.types.ResRet.f32 %4495, 3
  %4498 = fmul fast float %4496, %466
  %4499 = fmul fast float %4496, %467
  %4500 = fmul fast float %4496, %484
  %4501 = fadd fast float %4498, %4497
  %4502 = fadd fast float %4499, %4497
  %4503 = fadd fast float %4500, %4497
  %4504 = call float @dx.op.binary.f32(i32 35, float %4502, float %4503)  ; FMax(a,b)
  %4505 = call float @dx.op.binary.f32(i32 35, float %4501, float %4504)  ; FMax(a,b)
  %4506 = fsub fast float 1.000000e+00, %4505
  %4507 = fsub fast float -0.000000e+00, %266
  %4508 = fsub fast float -0.000000e+00, %267
  %4509 = fsub fast float -0.000000e+00, %268
  %4510 = call float @dx.op.dot3.f32(i32 55, float %4174, float %4175, float %4176, float %4507, float %4508, float %4509)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %4511, %4181
  %4513 = fmul fast float %4511, 9.843750e-01
  %4514 = fadd fast float %4513, 7.812500e-03
  %4515 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %41, float %4514, float %2078, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4516 = extractvalue %dx.types.ResRet.f32 %4515, 2
  %4517 = extractvalue %dx.types.ResRet.f32 %4515, 3
  %4518 = fmul fast float %4516, %466
  %4519 = fmul fast float %4516, %467
  %4520 = fmul fast float %4516, %484
  %4521 = fadd fast float %4518, %4517
  %4522 = fadd fast float %4519, %4517
  %4523 = fadd fast float %4520, %4517
  %4524 = call float @dx.op.binary.f32(i32 35, float %4522, float %4523)  ; FMax(a,b)
  %4525 = call float @dx.op.binary.f32(i32 35, float %4521, float %4524)  ; FMax(a,b)
  %4526 = fsub fast float 1.000000e+00, %4525
  %4527 = fmul fast float %4512, %4526
  %4528 = fmul fast float %4527, %285
  %4529 = fmul fast float %4527, %286
  %4530 = fmul fast float %4527, %287
  %4531 = fmul fast float %4506, %4418
  %4532 = fadd fast float %4528, %4531
  %4533 = fadd fast float %4529, %4531
  %4534 = fadd fast float %4530, %4531
  %4535 = fmul fast float %4532, %4400
  %4536 = fmul fast float %4533, %4401
  %4537 = fmul fast float %4534, %4402
  %4538 = fadd fast float %4535, %4111
  %4539 = fadd fast float %4536, %4112
  %4540 = fadd fast float %4537, %4113
  %4541 = fmul fast float %4418, %4400
  %4542 = fmul fast float %4541, %4490
  %4543 = fmul fast float %4542, %4475
  %4544 = fmul fast float %4418, %4401
  %4545 = fmul fast float %4544, %4491
  %4546 = fmul fast float %4545, %4475
  %4547 = fmul fast float %4418, %4402
  %4548 = fmul fast float %4547, %4492
  %4549 = fmul fast float %4548, %4475
  %4550 = fadd fast float %4543, %4108
  %4551 = fadd fast float %4546, %4109
  %4552 = fadd fast float %4549, %4110
  br label %4240

; <label>:4553                                    ; preds = %4240
  br label %4554

; <label>:4554                                    ; preds = %4553, %4074
  %4555 = phi float [ %4076, %4074 ], [ %4241, %4553 ]
  %4556 = phi float [ %4077, %4074 ], [ %4242, %4553 ]
  %4557 = phi float [ %4078, %4074 ], [ %4243, %4553 ]
  %4558 = phi float [ %4079, %4074 ], [ %4244, %4553 ]
  %4559 = phi float [ %4080, %4074 ], [ %4245, %4553 ]
  %4560 = phi float [ %4081, %4074 ], [ %4246, %4553 ]
  %4561 = add i32 %4075, 1
  %4562 = icmp ugt i32 %4561, %4071
  br i1 %4562, label %4563, label %4074

; <label>:4563                                    ; preds = %4554
  br label %4564

; <label>:4564                                    ; preds = %4563, %4024, %4014
  %4565 = phi float [ %4015, %4014 ], [ %4015, %4024 ], [ %4555, %4563 ]
  %4566 = phi float [ %4016, %4014 ], [ %4016, %4024 ], [ %4556, %4563 ]
  %4567 = phi float [ %4017, %4014 ], [ %4017, %4024 ], [ %4557, %4563 ]
  %4568 = phi float [ %4018, %4014 ], [ %4018, %4024 ], [ %4558, %4563 ]
  %4569 = phi float [ %4019, %4014 ], [ %4019, %4024 ], [ %4559, %4563 ]
  %4570 = phi float [ %4020, %4014 ], [ %4020, %4024 ], [ %4560, %4563 ]
  %4571 = call float @dx.op.unary.f32(i32 24, float %457)  ; Sqrt(value)
  %4572 = call float @dx.op.unary.f32(i32 24, float %458)  ; Sqrt(value)
  %4573 = call float @dx.op.unary.f32(i32 24, float %459)  ; Sqrt(value)
  %4574 = fmul fast float %4571, %4568
  %4575 = fmul fast float %4572, %4569
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 0
  br i1 %135, label %4578, label %4602

; <label>:4578                                    ; preds = %4564
  %4579 = fadd fast float %4570, %474
  %4580 = fmul fast float %4579, %472
  %4581 = fsub fast float 1.000000e+00, %472
  %4582 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 3
  %4585 = fmul fast float %4584, %4582
  %4586 = fsub fast float 1.000000e+00, %486
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 0
  %4589 = fmul fast float %4588, %4586
  %4590 = fsub fast float 1.000000e+00, %288
  %4591 = extractvalue %dx.types.CBufRet.f32 %4587, 2
  %4592 = fmul fast float %4591, %4590
  %4593 = fadd fast float %4575, %4574
  %4594 = extractvalue %dx.types.CBufRet.f32 %4583, 1
  %4595 = fadd fast float %4585, %4580
  %4596 = fsub fast float %4595, %4589
  %4597 = fsub fast float %4596, %4592
  %4598 = fsub fast float %4597, %4594
  %4599 = extractvalue %dx.types.CBufRet.f32 %4583, 2
  %4600 = fmul fast float %4598, %4599
  %4601 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  br label %4606

; <label>:4602                                    ; preds = %4564
  %4603 = fmul fast float %4573, %4570
  %4604 = fmul fast float %4577, %4575
  %4605 = fmul fast float %4603, %4577
  br label %4606

; <label>:4606                                    ; preds = %4602, %4578
  %4607 = phi float [ %4593, %4578 ], [ %4574, %4602 ]
  %4608 = phi float [ %4601, %4578 ], [ %4604, %4602 ]
  %4609 = phi float [ 1.000000e+00, %4578 ], [ %4605, %4602 ]
  %4610 = fmul float %4577, %4607
  %4611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.f32 %4611, 0
  %4613 = fmul fast float %4612, %4566
  %4614 = fmul fast float %4612, %4567
  %4615 = fadd fast float %4566, %4565
  %4616 = select i1 %135, float %4615, float %4565
  %4617 = fmul float %4616, %4612
  %4618 = select i1 %135, float 0.000000e+00, float %4613
  %4619 = select i1 %135, float 0.000000e+00, float %4614
  %4620 = fmul fast float %4610, %4571
  %4621 = fmul fast float %4608, %4572
  %4622 = fmul fast float %4609, %4573
  %4623 = fadd fast float %4617, %4620
  %4624 = fadd fast float %4618, %4621
  %4625 = fadd fast float %4619, %4622
  %4626 = select i1 %135, float %4608, float %4624
  %4627 = select i1 %135, float %4609, float %4625
  %4628 = call float @dx.op.binary.f32(i32 36, float %4623, float 3.225500e+04)  ; FMin(a,b)
  %4629 = call float @dx.op.binary.f32(i32 36, float %4626, float 3.225500e+04)  ; FMin(a,b)
  %4630 = call float @dx.op.binary.f32(i32 36, float %4627, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4628)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4629)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4630)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[51 x i32] [i32 49, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !86}
!59 = !{!60, !84, null}
!60 = !{!61, !64, !65, !67, !69, !70, !72, !74, !76, !77, !78, !79, !80, !82, !83}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!65 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !66}
!66 = !{i32 3, i32 8}
!67 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, null}
!70 = !{i32 5, !"CARD_DEPTH_OFFSET", i8 9, i8 0, !62, i8 2, i32 1, i8 1, i32 3, i8 3, !71}
!71 = !{i32 3, i32 1}
!72 = !{i32 6, !"CARD_BARY_AND_TILE", i8 9, i8 0, !73, i8 1, i32 1, i8 4, i32 5, i8 0, null}
!73 = !{i32 1}
!74 = !{i32 7, !"CARD_TEXCOORDS_AND_RAY", i8 9, i8 0, !73, i8 4, i32 1, i8 4, i32 6, i8 0, !75}
!75 = !{i32 3, i32 15}
!76 = !{i32 8, !"CARD_DEPTH_AND_SCALE", i8 9, i8 0, !62, i8 4, i32 1, i8 4, i32 7, i8 0, !71}
!77 = !{i32 9, !"LGV_POSITION_INDEX", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 8, i8 0, !66}
!78 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 9, i8 0, null}
!79 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 10, i8 0, null}
!80 = !{i32 12, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 11, i8 0, !81}
!81 = !{i32 3, i32 9}
!82 = !{i32 13, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 12, i8 0, !71}
!83 = !{i32 14, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!84 = !{!85}
!85 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !75}
!86 = !{i32 0, i64 24}
!87 = !{!88, !90}
!88 = distinct !{!88, !89, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!89 = distinct !{!89, !"\01?GetLightGridVolumeTransformParamsStatic@@YA?AULightGridVolumeTransformParams@@II@Z"}
!90 = distinct !{!90, !91, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z: %agg.result"}
!91 = distinct !{!91, !"\01?GetLightGridVolumeTransformParams@@YA?AULightGridVolumeTransformParams@@II@Z"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}
!107 = !{!108, !108, i64 0}
!108 = !{!"int", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !116, !118}
!112 = distinct !{!112, !113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!113 = distinct !{!113, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!114 = distinct !{!114, !115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!115 = distinct !{!115, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!116 = distinct !{!116, !117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!117 = distinct !{!117, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!118 = distinct !{!118, !119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!119 = distinct !{!119, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = !{!122, !122, i64 0}
!122 = !{!"float", !109, i64 0}
!123 = distinct !{!123, !101}
!124 = distinct !{!124, !101}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}

